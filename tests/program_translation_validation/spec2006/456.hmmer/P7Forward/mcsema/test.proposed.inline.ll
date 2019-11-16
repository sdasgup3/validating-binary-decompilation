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

declare %struct.Memory* @sub_407890.AllocPlan7Matrix(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_4281b0.ILogsum(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_407940.FreePlan7Matrix(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_427ef0.Scorify(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @P7Forward(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_407f70 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_407f70, %struct.Memory** %MEMORY
  %loadMem_407f71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i1323 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i1324 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i1325 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i1324
  %27 = load i64, i64* %PC.i1323
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i1323
  store i64 %26, i64* %RBP.i1325, align 8
  store %struct.Memory* %loadMem_407f71, %struct.Memory** %MEMORY
  %loadMem_407f74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i1321 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i1322 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i1322
  %36 = load i64, i64* %PC.i1321
  %37 = add i64 %36, 4
  store i64 %37, i64* %PC.i1321
  %38 = sub i64 %35, 96
  store i64 %38, i64* %RSP.i1322, align 8
  %39 = icmp ult i64 %35, 96
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
  %49 = xor i64 96, %35
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
  store %struct.Memory* %loadMem_407f74, %struct.Memory** %MEMORY
  %loadMem_407f78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i1318 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %RAX.i1319 = bitcast %union.anon* %72 to i64*
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %74 = getelementptr inbounds %struct.GPR, %struct.GPR* %73, i32 0, i32 15
  %75 = getelementptr inbounds %struct.Reg, %struct.Reg* %74, i32 0, i32 0
  %RBP.i1320 = bitcast %union.anon* %75 to i64*
  %76 = load i64, i64* %RBP.i1320
  %77 = sub i64 %76, 48
  %78 = load i64, i64* %PC.i1318
  %79 = add i64 %78, 4
  store i64 %79, i64* %PC.i1318
  store i64 %77, i64* %RAX.i1319, align 8
  store %struct.Memory* %loadMem_407f78, %struct.Memory** %MEMORY
  %loadMem_407f7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %80 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %81 = getelementptr inbounds %struct.GPR, %struct.GPR* %80, i32 0, i32 33
  %82 = getelementptr inbounds %struct.Reg, %struct.Reg* %81, i32 0, i32 0
  %PC.i1315 = bitcast %union.anon* %82 to i64*
  %83 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %84 = getelementptr inbounds %struct.GPR, %struct.GPR* %83, i32 0, i32 15
  %85 = getelementptr inbounds %struct.Reg, %struct.Reg* %84, i32 0, i32 0
  %RBP.i1316 = bitcast %union.anon* %85 to i64*
  %86 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %87 = getelementptr inbounds %struct.GPR, %struct.GPR* %86, i32 0, i32 17
  %88 = getelementptr inbounds %struct.Reg, %struct.Reg* %87, i32 0, i32 0
  %R8.i1317 = bitcast %union.anon* %88 to i64*
  %89 = load i64, i64* %RBP.i1316
  %90 = sub i64 %89, 56
  %91 = load i64, i64* %PC.i1315
  %92 = add i64 %91, 4
  store i64 %92, i64* %PC.i1315
  store i64 %90, i64* %R8.i1317, align 8
  store %struct.Memory* %loadMem_407f7c, %struct.Memory** %MEMORY
  %loadMem_407f80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %93 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %94 = getelementptr inbounds %struct.GPR, %struct.GPR* %93, i32 0, i32 33
  %95 = getelementptr inbounds %struct.Reg, %struct.Reg* %94, i32 0, i32 0
  %PC.i1312 = bitcast %union.anon* %95 to i64*
  %96 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %97 = getelementptr inbounds %struct.GPR, %struct.GPR* %96, i32 0, i32 15
  %98 = getelementptr inbounds %struct.Reg, %struct.Reg* %97, i32 0, i32 0
  %RBP.i1313 = bitcast %union.anon* %98 to i64*
  %99 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %100 = getelementptr inbounds %struct.GPR, %struct.GPR* %99, i32 0, i32 19
  %101 = getelementptr inbounds %struct.Reg, %struct.Reg* %100, i32 0, i32 0
  %R9.i1314 = bitcast %union.anon* %101 to i64*
  %102 = load i64, i64* %RBP.i1313
  %103 = sub i64 %102, 64
  %104 = load i64, i64* %PC.i1312
  %105 = add i64 %104, 4
  store i64 %105, i64* %PC.i1312
  store i64 %103, i64* %R9.i1314, align 8
  store %struct.Memory* %loadMem_407f80, %struct.Memory** %MEMORY
  %loadMem_407f84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %107 = getelementptr inbounds %struct.GPR, %struct.GPR* %106, i32 0, i32 33
  %108 = getelementptr inbounds %struct.Reg, %struct.Reg* %107, i32 0, i32 0
  %PC.i1309 = bitcast %union.anon* %108 to i64*
  %109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %110 = getelementptr inbounds %struct.GPR, %struct.GPR* %109, i32 0, i32 15
  %111 = getelementptr inbounds %struct.Reg, %struct.Reg* %110, i32 0, i32 0
  %RBP.i1310 = bitcast %union.anon* %111 to i64*
  %112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %113 = getelementptr inbounds %struct.GPR, %struct.GPR* %112, i32 0, i32 21
  %114 = getelementptr inbounds %struct.Reg, %struct.Reg* %113, i32 0, i32 0
  %R10.i1311 = bitcast %union.anon* %114 to i64*
  %115 = load i64, i64* %RBP.i1310
  %116 = sub i64 %115, 72
  %117 = load i64, i64* %PC.i1309
  %118 = add i64 %117, 4
  store i64 %118, i64* %PC.i1309
  store i64 %116, i64* %R10.i1311, align 8
  store %struct.Memory* %loadMem_407f84, %struct.Memory** %MEMORY
  %loadMem_407f88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %120 = getelementptr inbounds %struct.GPR, %struct.GPR* %119, i32 0, i32 33
  %121 = getelementptr inbounds %struct.Reg, %struct.Reg* %120, i32 0, i32 0
  %PC.i1306 = bitcast %union.anon* %121 to i64*
  %122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %123 = getelementptr inbounds %struct.GPR, %struct.GPR* %122, i32 0, i32 11
  %124 = getelementptr inbounds %struct.Reg, %struct.Reg* %123, i32 0, i32 0
  %RDI.i1307 = bitcast %union.anon* %124 to i64*
  %125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %126 = getelementptr inbounds %struct.GPR, %struct.GPR* %125, i32 0, i32 15
  %127 = getelementptr inbounds %struct.Reg, %struct.Reg* %126, i32 0, i32 0
  %RBP.i1308 = bitcast %union.anon* %127 to i64*
  %128 = load i64, i64* %RBP.i1308
  %129 = sub i64 %128, 8
  %130 = load i64, i64* %RDI.i1307
  %131 = load i64, i64* %PC.i1306
  %132 = add i64 %131, 4
  store i64 %132, i64* %PC.i1306
  %133 = inttoptr i64 %129 to i64*
  store i64 %130, i64* %133
  store %struct.Memory* %loadMem_407f88, %struct.Memory** %MEMORY
  %loadMem_407f8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %135 = getelementptr inbounds %struct.GPR, %struct.GPR* %134, i32 0, i32 33
  %136 = getelementptr inbounds %struct.Reg, %struct.Reg* %135, i32 0, i32 0
  %PC.i1303 = bitcast %union.anon* %136 to i64*
  %137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %138 = getelementptr inbounds %struct.GPR, %struct.GPR* %137, i32 0, i32 9
  %139 = getelementptr inbounds %struct.Reg, %struct.Reg* %138, i32 0, i32 0
  %ESI.i1304 = bitcast %union.anon* %139 to i32*
  %140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %141 = getelementptr inbounds %struct.GPR, %struct.GPR* %140, i32 0, i32 15
  %142 = getelementptr inbounds %struct.Reg, %struct.Reg* %141, i32 0, i32 0
  %RBP.i1305 = bitcast %union.anon* %142 to i64*
  %143 = load i64, i64* %RBP.i1305
  %144 = sub i64 %143, 12
  %145 = load i32, i32* %ESI.i1304
  %146 = zext i32 %145 to i64
  %147 = load i64, i64* %PC.i1303
  %148 = add i64 %147, 3
  store i64 %148, i64* %PC.i1303
  %149 = inttoptr i64 %144 to i32*
  store i32 %145, i32* %149
  store %struct.Memory* %loadMem_407f8c, %struct.Memory** %MEMORY
  %loadMem_407f8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %151 = getelementptr inbounds %struct.GPR, %struct.GPR* %150, i32 0, i32 33
  %152 = getelementptr inbounds %struct.Reg, %struct.Reg* %151, i32 0, i32 0
  %PC.i1300 = bitcast %union.anon* %152 to i64*
  %153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %154 = getelementptr inbounds %struct.GPR, %struct.GPR* %153, i32 0, i32 7
  %155 = getelementptr inbounds %struct.Reg, %struct.Reg* %154, i32 0, i32 0
  %RDX.i1301 = bitcast %union.anon* %155 to i64*
  %156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %157 = getelementptr inbounds %struct.GPR, %struct.GPR* %156, i32 0, i32 15
  %158 = getelementptr inbounds %struct.Reg, %struct.Reg* %157, i32 0, i32 0
  %RBP.i1302 = bitcast %union.anon* %158 to i64*
  %159 = load i64, i64* %RBP.i1302
  %160 = sub i64 %159, 24
  %161 = load i64, i64* %RDX.i1301
  %162 = load i64, i64* %PC.i1300
  %163 = add i64 %162, 4
  store i64 %163, i64* %PC.i1300
  %164 = inttoptr i64 %160 to i64*
  store i64 %161, i64* %164
  store %struct.Memory* %loadMem_407f8f, %struct.Memory** %MEMORY
  %loadMem_407f93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %166 = getelementptr inbounds %struct.GPR, %struct.GPR* %165, i32 0, i32 33
  %167 = getelementptr inbounds %struct.Reg, %struct.Reg* %166, i32 0, i32 0
  %PC.i1297 = bitcast %union.anon* %167 to i64*
  %168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %169 = getelementptr inbounds %struct.GPR, %struct.GPR* %168, i32 0, i32 5
  %170 = getelementptr inbounds %struct.Reg, %struct.Reg* %169, i32 0, i32 0
  %RCX.i1298 = bitcast %union.anon* %170 to i64*
  %171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %172 = getelementptr inbounds %struct.GPR, %struct.GPR* %171, i32 0, i32 15
  %173 = getelementptr inbounds %struct.Reg, %struct.Reg* %172, i32 0, i32 0
  %RBP.i1299 = bitcast %union.anon* %173 to i64*
  %174 = load i64, i64* %RBP.i1299
  %175 = sub i64 %174, 32
  %176 = load i64, i64* %RCX.i1298
  %177 = load i64, i64* %PC.i1297
  %178 = add i64 %177, 4
  store i64 %178, i64* %PC.i1297
  %179 = inttoptr i64 %175 to i64*
  store i64 %176, i64* %179
  store %struct.Memory* %loadMem_407f93, %struct.Memory** %MEMORY
  %loadMem_407f97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %181 = getelementptr inbounds %struct.GPR, %struct.GPR* %180, i32 0, i32 33
  %182 = getelementptr inbounds %struct.Reg, %struct.Reg* %181, i32 0, i32 0
  %PC.i1294 = bitcast %union.anon* %182 to i64*
  %183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %184 = getelementptr inbounds %struct.GPR, %struct.GPR* %183, i32 0, i32 9
  %185 = getelementptr inbounds %struct.Reg, %struct.Reg* %184, i32 0, i32 0
  %RSI.i1295 = bitcast %union.anon* %185 to i64*
  %186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %187 = getelementptr inbounds %struct.GPR, %struct.GPR* %186, i32 0, i32 15
  %188 = getelementptr inbounds %struct.Reg, %struct.Reg* %187, i32 0, i32 0
  %RBP.i1296 = bitcast %union.anon* %188 to i64*
  %189 = load i64, i64* %RBP.i1296
  %190 = sub i64 %189, 12
  %191 = load i64, i64* %PC.i1294
  %192 = add i64 %191, 3
  store i64 %192, i64* %PC.i1294
  %193 = inttoptr i64 %190 to i32*
  %194 = load i32, i32* %193
  %195 = zext i32 %194 to i64
  store i64 %195, i64* %RSI.i1295, align 8
  store %struct.Memory* %loadMem_407f97, %struct.Memory** %MEMORY
  %loadMem_407f9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %197 = getelementptr inbounds %struct.GPR, %struct.GPR* %196, i32 0, i32 33
  %198 = getelementptr inbounds %struct.Reg, %struct.Reg* %197, i32 0, i32 0
  %PC.i1292 = bitcast %union.anon* %198 to i64*
  %199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %200 = getelementptr inbounds %struct.GPR, %struct.GPR* %199, i32 0, i32 9
  %201 = getelementptr inbounds %struct.Reg, %struct.Reg* %200, i32 0, i32 0
  %RSI.i1293 = bitcast %union.anon* %201 to i64*
  %202 = load i64, i64* %RSI.i1293
  %203 = load i64, i64* %PC.i1292
  %204 = add i64 %203, 3
  store i64 %204, i64* %PC.i1292
  %205 = trunc i64 %202 to i32
  %206 = add i32 1, %205
  %207 = zext i32 %206 to i64
  store i64 %207, i64* %RSI.i1293, align 8
  %208 = icmp ult i32 %206, %205
  %209 = icmp ult i32 %206, 1
  %210 = or i1 %208, %209
  %211 = zext i1 %210 to i8
  %212 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %211, i8* %212, align 1
  %213 = and i32 %206, 255
  %214 = call i32 @llvm.ctpop.i32(i32 %213)
  %215 = trunc i32 %214 to i8
  %216 = and i8 %215, 1
  %217 = xor i8 %216, 1
  %218 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %217, i8* %218, align 1
  %219 = xor i64 1, %202
  %220 = trunc i64 %219 to i32
  %221 = xor i32 %220, %206
  %222 = lshr i32 %221, 4
  %223 = trunc i32 %222 to i8
  %224 = and i8 %223, 1
  %225 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %224, i8* %225, align 1
  %226 = icmp eq i32 %206, 0
  %227 = zext i1 %226 to i8
  %228 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %227, i8* %228, align 1
  %229 = lshr i32 %206, 31
  %230 = trunc i32 %229 to i8
  %231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %230, i8* %231, align 1
  %232 = lshr i32 %205, 31
  %233 = xor i32 %229, %232
  %234 = add i32 %233, %229
  %235 = icmp eq i32 %234, 2
  %236 = zext i1 %235 to i8
  %237 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %236, i8* %237, align 1
  store %struct.Memory* %loadMem_407f9a, %struct.Memory** %MEMORY
  %loadMem_407f9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %239 = getelementptr inbounds %struct.GPR, %struct.GPR* %238, i32 0, i32 33
  %240 = getelementptr inbounds %struct.Reg, %struct.Reg* %239, i32 0, i32 0
  %PC.i1289 = bitcast %union.anon* %240 to i64*
  %241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %242 = getelementptr inbounds %struct.GPR, %struct.GPR* %241, i32 0, i32 5
  %243 = getelementptr inbounds %struct.Reg, %struct.Reg* %242, i32 0, i32 0
  %RCX.i1290 = bitcast %union.anon* %243 to i64*
  %244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %245 = getelementptr inbounds %struct.GPR, %struct.GPR* %244, i32 0, i32 15
  %246 = getelementptr inbounds %struct.Reg, %struct.Reg* %245, i32 0, i32 0
  %RBP.i1291 = bitcast %union.anon* %246 to i64*
  %247 = load i64, i64* %RBP.i1291
  %248 = sub i64 %247, 24
  %249 = load i64, i64* %PC.i1289
  %250 = add i64 %249, 4
  store i64 %250, i64* %PC.i1289
  %251 = inttoptr i64 %248 to i64*
  %252 = load i64, i64* %251
  store i64 %252, i64* %RCX.i1290, align 8
  store %struct.Memory* %loadMem_407f9d, %struct.Memory** %MEMORY
  %loadMem_407fa1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %254 = getelementptr inbounds %struct.GPR, %struct.GPR* %253, i32 0, i32 33
  %255 = getelementptr inbounds %struct.Reg, %struct.Reg* %254, i32 0, i32 0
  %PC.i1286 = bitcast %union.anon* %255 to i64*
  %256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %257 = getelementptr inbounds %struct.GPR, %struct.GPR* %256, i32 0, i32 23
  %258 = getelementptr inbounds %struct.Reg, %struct.Reg* %257, i32 0, i32 0
  %R11D.i1287 = bitcast %union.anon* %258 to i32*
  %259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %260 = getelementptr inbounds %struct.GPR, %struct.GPR* %259, i32 0, i32 5
  %261 = getelementptr inbounds %struct.Reg, %struct.Reg* %260, i32 0, i32 0
  %RCX.i1288 = bitcast %union.anon* %261 to i64*
  %262 = bitcast i32* %R11D.i1287 to i64*
  %263 = load i64, i64* %RCX.i1288
  %264 = add i64 %263, 136
  %265 = load i64, i64* %PC.i1286
  %266 = add i64 %265, 7
  store i64 %266, i64* %PC.i1286
  %267 = inttoptr i64 %264 to i32*
  %268 = load i32, i32* %267
  %269 = zext i32 %268 to i64
  store i64 %269, i64* %262, align 8
  store %struct.Memory* %loadMem_407fa1, %struct.Memory** %MEMORY
  %loadMem_407fa8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %271 = getelementptr inbounds %struct.GPR, %struct.GPR* %270, i32 0, i32 33
  %272 = getelementptr inbounds %struct.Reg, %struct.Reg* %271, i32 0, i32 0
  %PC.i1283 = bitcast %union.anon* %272 to i64*
  %273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %274 = getelementptr inbounds %struct.GPR, %struct.GPR* %273, i32 0, i32 9
  %275 = getelementptr inbounds %struct.Reg, %struct.Reg* %274, i32 0, i32 0
  %ESI.i1284 = bitcast %union.anon* %275 to i32*
  %276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %277 = getelementptr inbounds %struct.GPR, %struct.GPR* %276, i32 0, i32 11
  %278 = getelementptr inbounds %struct.Reg, %struct.Reg* %277, i32 0, i32 0
  %RDI.i1285 = bitcast %union.anon* %278 to i64*
  %279 = load i32, i32* %ESI.i1284
  %280 = zext i32 %279 to i64
  %281 = load i64, i64* %PC.i1283
  %282 = add i64 %281, 2
  store i64 %282, i64* %PC.i1283
  %283 = and i64 %280, 4294967295
  store i64 %283, i64* %RDI.i1285, align 8
  store %struct.Memory* %loadMem_407fa8, %struct.Memory** %MEMORY
  %loadMem_407faa = load %struct.Memory*, %struct.Memory** %MEMORY
  %284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %285 = getelementptr inbounds %struct.GPR, %struct.GPR* %284, i32 0, i32 33
  %286 = getelementptr inbounds %struct.Reg, %struct.Reg* %285, i32 0, i32 0
  %PC.i1281 = bitcast %union.anon* %286 to i64*
  %287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %288 = getelementptr inbounds %struct.GPR, %struct.GPR* %287, i32 0, i32 23
  %289 = getelementptr inbounds %struct.Reg, %struct.Reg* %288, i32 0, i32 0
  %R11D.i = bitcast %union.anon* %289 to i32*
  %290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %291 = getelementptr inbounds %struct.GPR, %struct.GPR* %290, i32 0, i32 9
  %292 = getelementptr inbounds %struct.Reg, %struct.Reg* %291, i32 0, i32 0
  %RSI.i1282 = bitcast %union.anon* %292 to i64*
  %293 = load i32, i32* %R11D.i
  %294 = zext i32 %293 to i64
  %295 = load i64, i64* %PC.i1281
  %296 = add i64 %295, 3
  store i64 %296, i64* %PC.i1281
  %297 = and i64 %294, 4294967295
  store i64 %297, i64* %RSI.i1282, align 8
  store %struct.Memory* %loadMem_407faa, %struct.Memory** %MEMORY
  %loadMem_407fad = load %struct.Memory*, %struct.Memory** %MEMORY
  %298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %299 = getelementptr inbounds %struct.GPR, %struct.GPR* %298, i32 0, i32 33
  %300 = getelementptr inbounds %struct.Reg, %struct.Reg* %299, i32 0, i32 0
  %PC.i1278 = bitcast %union.anon* %300 to i64*
  %301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %302 = getelementptr inbounds %struct.GPR, %struct.GPR* %301, i32 0, i32 1
  %303 = getelementptr inbounds %struct.Reg, %struct.Reg* %302, i32 0, i32 0
  %RAX.i1279 = bitcast %union.anon* %303 to i64*
  %304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %305 = getelementptr inbounds %struct.GPR, %struct.GPR* %304, i32 0, i32 7
  %306 = getelementptr inbounds %struct.Reg, %struct.Reg* %305, i32 0, i32 0
  %RDX.i1280 = bitcast %union.anon* %306 to i64*
  %307 = load i64, i64* %RAX.i1279
  %308 = load i64, i64* %PC.i1278
  %309 = add i64 %308, 3
  store i64 %309, i64* %PC.i1278
  store i64 %307, i64* %RDX.i1280, align 8
  store %struct.Memory* %loadMem_407fad, %struct.Memory** %MEMORY
  %loadMem_407fb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %311 = getelementptr inbounds %struct.GPR, %struct.GPR* %310, i32 0, i32 33
  %312 = getelementptr inbounds %struct.Reg, %struct.Reg* %311, i32 0, i32 0
  %PC.i1275 = bitcast %union.anon* %312 to i64*
  %313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %314 = getelementptr inbounds %struct.GPR, %struct.GPR* %313, i32 0, i32 5
  %315 = getelementptr inbounds %struct.Reg, %struct.Reg* %314, i32 0, i32 0
  %RCX.i1276 = bitcast %union.anon* %315 to i64*
  %316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %317 = getelementptr inbounds %struct.GPR, %struct.GPR* %316, i32 0, i32 17
  %318 = getelementptr inbounds %struct.Reg, %struct.Reg* %317, i32 0, i32 0
  %R8.i1277 = bitcast %union.anon* %318 to i64*
  %319 = load i64, i64* %R8.i1277
  %320 = load i64, i64* %PC.i1275
  %321 = add i64 %320, 3
  store i64 %321, i64* %PC.i1275
  store i64 %319, i64* %RCX.i1276, align 8
  store %struct.Memory* %loadMem_407fb0, %struct.Memory** %MEMORY
  %loadMem_407fb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %322 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %323 = getelementptr inbounds %struct.GPR, %struct.GPR* %322, i32 0, i32 33
  %324 = getelementptr inbounds %struct.Reg, %struct.Reg* %323, i32 0, i32 0
  %PC.i1272 = bitcast %union.anon* %324 to i64*
  %325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %326 = getelementptr inbounds %struct.GPR, %struct.GPR* %325, i32 0, i32 17
  %327 = getelementptr inbounds %struct.Reg, %struct.Reg* %326, i32 0, i32 0
  %R8.i1273 = bitcast %union.anon* %327 to i64*
  %328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %329 = getelementptr inbounds %struct.GPR, %struct.GPR* %328, i32 0, i32 19
  %330 = getelementptr inbounds %struct.Reg, %struct.Reg* %329, i32 0, i32 0
  %R9.i1274 = bitcast %union.anon* %330 to i64*
  %331 = load i64, i64* %R9.i1274
  %332 = load i64, i64* %PC.i1272
  %333 = add i64 %332, 3
  store i64 %333, i64* %PC.i1272
  store i64 %331, i64* %R8.i1273, align 8
  store %struct.Memory* %loadMem_407fb3, %struct.Memory** %MEMORY
  %loadMem_407fb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %335 = getelementptr inbounds %struct.GPR, %struct.GPR* %334, i32 0, i32 33
  %336 = getelementptr inbounds %struct.Reg, %struct.Reg* %335, i32 0, i32 0
  %PC.i1270 = bitcast %union.anon* %336 to i64*
  %337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %338 = getelementptr inbounds %struct.GPR, %struct.GPR* %337, i32 0, i32 19
  %339 = getelementptr inbounds %struct.Reg, %struct.Reg* %338, i32 0, i32 0
  %R9.i1271 = bitcast %union.anon* %339 to i64*
  %340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %341 = getelementptr inbounds %struct.GPR, %struct.GPR* %340, i32 0, i32 21
  %342 = getelementptr inbounds %struct.Reg, %struct.Reg* %341, i32 0, i32 0
  %R10.i = bitcast %union.anon* %342 to i64*
  %343 = load i64, i64* %R10.i
  %344 = load i64, i64* %PC.i1270
  %345 = add i64 %344, 3
  store i64 %345, i64* %PC.i1270
  store i64 %343, i64* %R9.i1271, align 8
  store %struct.Memory* %loadMem_407fb6, %struct.Memory** %MEMORY
  %loadMem1_407fb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %347 = getelementptr inbounds %struct.GPR, %struct.GPR* %346, i32 0, i32 33
  %348 = getelementptr inbounds %struct.Reg, %struct.Reg* %347, i32 0, i32 0
  %PC.i1269 = bitcast %union.anon* %348 to i64*
  %349 = load i64, i64* %PC.i1269
  %350 = add i64 %349, -1833
  %351 = load i64, i64* %PC.i1269
  %352 = add i64 %351, 5
  %353 = load i64, i64* %PC.i1269
  %354 = add i64 %353, 5
  store i64 %354, i64* %PC.i1269
  %355 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %356 = load i64, i64* %355, align 8
  %357 = add i64 %356, -8
  %358 = inttoptr i64 %357 to i64*
  store i64 %352, i64* %358
  store i64 %357, i64* %355, align 8
  %359 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %350, i64* %359, align 8
  store %struct.Memory* %loadMem1_407fb9, %struct.Memory** %MEMORY
  %loadMem2_407fb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_407fb9 = load i64, i64* %3
  %call2_407fb9 = call %struct.Memory* @sub_407890.AllocPlan7Matrix(%struct.State* %0, i64 %loadPC_407fb9, %struct.Memory* %loadMem2_407fb9)
  store %struct.Memory* %call2_407fb9, %struct.Memory** %MEMORY
  %loadMem_407fbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %361 = getelementptr inbounds %struct.GPR, %struct.GPR* %360, i32 0, i32 33
  %362 = getelementptr inbounds %struct.Reg, %struct.Reg* %361, i32 0, i32 0
  %PC.i1266 = bitcast %union.anon* %362 to i64*
  %363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %364 = getelementptr inbounds %struct.GPR, %struct.GPR* %363, i32 0, i32 1
  %365 = getelementptr inbounds %struct.Reg, %struct.Reg* %364, i32 0, i32 0
  %RAX.i1267 = bitcast %union.anon* %365 to i64*
  %366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %367 = getelementptr inbounds %struct.GPR, %struct.GPR* %366, i32 0, i32 15
  %368 = getelementptr inbounds %struct.Reg, %struct.Reg* %367, i32 0, i32 0
  %RBP.i1268 = bitcast %union.anon* %368 to i64*
  %369 = load i64, i64* %RBP.i1268
  %370 = sub i64 %369, 40
  %371 = load i64, i64* %RAX.i1267
  %372 = load i64, i64* %PC.i1266
  %373 = add i64 %372, 4
  store i64 %373, i64* %PC.i1266
  %374 = inttoptr i64 %370 to i64*
  store i64 %371, i64* %374
  store %struct.Memory* %loadMem_407fbe, %struct.Memory** %MEMORY
  %loadMem_407fc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %376 = getelementptr inbounds %struct.GPR, %struct.GPR* %375, i32 0, i32 33
  %377 = getelementptr inbounds %struct.Reg, %struct.Reg* %376, i32 0, i32 0
  %PC.i1263 = bitcast %union.anon* %377 to i64*
  %378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %379 = getelementptr inbounds %struct.GPR, %struct.GPR* %378, i32 0, i32 1
  %380 = getelementptr inbounds %struct.Reg, %struct.Reg* %379, i32 0, i32 0
  %RAX.i1264 = bitcast %union.anon* %380 to i64*
  %381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %382 = getelementptr inbounds %struct.GPR, %struct.GPR* %381, i32 0, i32 15
  %383 = getelementptr inbounds %struct.Reg, %struct.Reg* %382, i32 0, i32 0
  %RBP.i1265 = bitcast %union.anon* %383 to i64*
  %384 = load i64, i64* %RBP.i1265
  %385 = sub i64 %384, 48
  %386 = load i64, i64* %PC.i1263
  %387 = add i64 %386, 4
  store i64 %387, i64* %PC.i1263
  %388 = inttoptr i64 %385 to i64*
  %389 = load i64, i64* %388
  store i64 %389, i64* %RAX.i1264, align 8
  store %struct.Memory* %loadMem_407fc2, %struct.Memory** %MEMORY
  %loadMem_407fc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %391 = getelementptr inbounds %struct.GPR, %struct.GPR* %390, i32 0, i32 33
  %392 = getelementptr inbounds %struct.Reg, %struct.Reg* %391, i32 0, i32 0
  %PC.i1261 = bitcast %union.anon* %392 to i64*
  %393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %394 = getelementptr inbounds %struct.GPR, %struct.GPR* %393, i32 0, i32 1
  %395 = getelementptr inbounds %struct.Reg, %struct.Reg* %394, i32 0, i32 0
  %RAX.i1262 = bitcast %union.anon* %395 to i64*
  %396 = load i64, i64* %RAX.i1262
  %397 = load i64, i64* %PC.i1261
  %398 = add i64 %397, 3
  store i64 %398, i64* %PC.i1261
  %399 = inttoptr i64 %396 to i64*
  %400 = load i64, i64* %399
  store i64 %400, i64* %RAX.i1262, align 8
  store %struct.Memory* %loadMem_407fc6, %struct.Memory** %MEMORY
  %loadMem_407fc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %402 = getelementptr inbounds %struct.GPR, %struct.GPR* %401, i32 0, i32 33
  %403 = getelementptr inbounds %struct.Reg, %struct.Reg* %402, i32 0, i32 0
  %PC.i1259 = bitcast %union.anon* %403 to i64*
  %404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %405 = getelementptr inbounds %struct.GPR, %struct.GPR* %404, i32 0, i32 1
  %406 = getelementptr inbounds %struct.Reg, %struct.Reg* %405, i32 0, i32 0
  %RAX.i1260 = bitcast %union.anon* %406 to i64*
  %407 = load i64, i64* %RAX.i1260
  %408 = add i64 %407, 16
  %409 = load i64, i64* %PC.i1259
  %410 = add i64 %409, 7
  store i64 %410, i64* %PC.i1259
  %411 = inttoptr i64 %408 to i32*
  store i32 0, i32* %411
  store %struct.Memory* %loadMem_407fc9, %struct.Memory** %MEMORY
  %loadMem_407fd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %413 = getelementptr inbounds %struct.GPR, %struct.GPR* %412, i32 0, i32 33
  %414 = getelementptr inbounds %struct.Reg, %struct.Reg* %413, i32 0, i32 0
  %PC.i1256 = bitcast %union.anon* %414 to i64*
  %415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %416 = getelementptr inbounds %struct.GPR, %struct.GPR* %415, i32 0, i32 1
  %417 = getelementptr inbounds %struct.Reg, %struct.Reg* %416, i32 0, i32 0
  %RAX.i1257 = bitcast %union.anon* %417 to i64*
  %418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %419 = getelementptr inbounds %struct.GPR, %struct.GPR* %418, i32 0, i32 15
  %420 = getelementptr inbounds %struct.Reg, %struct.Reg* %419, i32 0, i32 0
  %RBP.i1258 = bitcast %union.anon* %420 to i64*
  %421 = load i64, i64* %RBP.i1258
  %422 = sub i64 %421, 24
  %423 = load i64, i64* %PC.i1256
  %424 = add i64 %423, 4
  store i64 %424, i64* %PC.i1256
  %425 = inttoptr i64 %422 to i64*
  %426 = load i64, i64* %425
  store i64 %426, i64* %RAX.i1257, align 8
  store %struct.Memory* %loadMem_407fd0, %struct.Memory** %MEMORY
  %loadMem_407fd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %428 = getelementptr inbounds %struct.GPR, %struct.GPR* %427, i32 0, i32 33
  %429 = getelementptr inbounds %struct.Reg, %struct.Reg* %428, i32 0, i32 0
  %PC.i1253 = bitcast %union.anon* %429 to i64*
  %430 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %431 = getelementptr inbounds %struct.GPR, %struct.GPR* %430, i32 0, i32 1
  %432 = getelementptr inbounds %struct.Reg, %struct.Reg* %431, i32 0, i32 0
  %RAX.i1254 = bitcast %union.anon* %432 to i64*
  %433 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %434 = getelementptr inbounds %struct.GPR, %struct.GPR* %433, i32 0, i32 9
  %435 = getelementptr inbounds %struct.Reg, %struct.Reg* %434, i32 0, i32 0
  %RSI.i1255 = bitcast %union.anon* %435 to i64*
  %436 = load i64, i64* %RAX.i1254
  %437 = add i64 %436, 336
  %438 = load i64, i64* %PC.i1253
  %439 = add i64 %438, 6
  store i64 %439, i64* %PC.i1253
  %440 = inttoptr i64 %437 to i32*
  %441 = load i32, i32* %440
  %442 = zext i32 %441 to i64
  store i64 %442, i64* %RSI.i1255, align 8
  store %struct.Memory* %loadMem_407fd4, %struct.Memory** %MEMORY
  %loadMem_407fda = load %struct.Memory*, %struct.Memory** %MEMORY
  %443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %444 = getelementptr inbounds %struct.GPR, %struct.GPR* %443, i32 0, i32 33
  %445 = getelementptr inbounds %struct.Reg, %struct.Reg* %444, i32 0, i32 0
  %PC.i1250 = bitcast %union.anon* %445 to i64*
  %446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %447 = getelementptr inbounds %struct.GPR, %struct.GPR* %446, i32 0, i32 1
  %448 = getelementptr inbounds %struct.Reg, %struct.Reg* %447, i32 0, i32 0
  %RAX.i1251 = bitcast %union.anon* %448 to i64*
  %449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %450 = getelementptr inbounds %struct.GPR, %struct.GPR* %449, i32 0, i32 15
  %451 = getelementptr inbounds %struct.Reg, %struct.Reg* %450, i32 0, i32 0
  %RBP.i1252 = bitcast %union.anon* %451 to i64*
  %452 = load i64, i64* %RBP.i1252
  %453 = sub i64 %452, 48
  %454 = load i64, i64* %PC.i1250
  %455 = add i64 %454, 4
  store i64 %455, i64* %PC.i1250
  %456 = inttoptr i64 %453 to i64*
  %457 = load i64, i64* %456
  store i64 %457, i64* %RAX.i1251, align 8
  store %struct.Memory* %loadMem_407fda, %struct.Memory** %MEMORY
  %loadMem_407fde = load %struct.Memory*, %struct.Memory** %MEMORY
  %458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %459 = getelementptr inbounds %struct.GPR, %struct.GPR* %458, i32 0, i32 33
  %460 = getelementptr inbounds %struct.Reg, %struct.Reg* %459, i32 0, i32 0
  %PC.i1248 = bitcast %union.anon* %460 to i64*
  %461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %462 = getelementptr inbounds %struct.GPR, %struct.GPR* %461, i32 0, i32 1
  %463 = getelementptr inbounds %struct.Reg, %struct.Reg* %462, i32 0, i32 0
  %RAX.i1249 = bitcast %union.anon* %463 to i64*
  %464 = load i64, i64* %RAX.i1249
  %465 = load i64, i64* %PC.i1248
  %466 = add i64 %465, 3
  store i64 %466, i64* %PC.i1248
  %467 = inttoptr i64 %464 to i64*
  %468 = load i64, i64* %467
  store i64 %468, i64* %RAX.i1249, align 8
  store %struct.Memory* %loadMem_407fde, %struct.Memory** %MEMORY
  %loadMem_407fe1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %470 = getelementptr inbounds %struct.GPR, %struct.GPR* %469, i32 0, i32 33
  %471 = getelementptr inbounds %struct.Reg, %struct.Reg* %470, i32 0, i32 0
  %PC.i1245 = bitcast %union.anon* %471 to i64*
  %472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %473 = getelementptr inbounds %struct.GPR, %struct.GPR* %472, i32 0, i32 9
  %474 = getelementptr inbounds %struct.Reg, %struct.Reg* %473, i32 0, i32 0
  %ESI.i1246 = bitcast %union.anon* %474 to i32*
  %475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %476 = getelementptr inbounds %struct.GPR, %struct.GPR* %475, i32 0, i32 1
  %477 = getelementptr inbounds %struct.Reg, %struct.Reg* %476, i32 0, i32 0
  %RAX.i1247 = bitcast %union.anon* %477 to i64*
  %478 = load i64, i64* %RAX.i1247
  %479 = load i32, i32* %ESI.i1246
  %480 = zext i32 %479 to i64
  %481 = load i64, i64* %PC.i1245
  %482 = add i64 %481, 2
  store i64 %482, i64* %PC.i1245
  %483 = inttoptr i64 %478 to i32*
  store i32 %479, i32* %483
  store %struct.Memory* %loadMem_407fe1, %struct.Memory** %MEMORY
  %loadMem_407fe3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %485 = getelementptr inbounds %struct.GPR, %struct.GPR* %484, i32 0, i32 33
  %486 = getelementptr inbounds %struct.Reg, %struct.Reg* %485, i32 0, i32 0
  %PC.i1242 = bitcast %union.anon* %486 to i64*
  %487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %488 = getelementptr inbounds %struct.GPR, %struct.GPR* %487, i32 0, i32 1
  %489 = getelementptr inbounds %struct.Reg, %struct.Reg* %488, i32 0, i32 0
  %RAX.i1243 = bitcast %union.anon* %489 to i64*
  %490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %491 = getelementptr inbounds %struct.GPR, %struct.GPR* %490, i32 0, i32 15
  %492 = getelementptr inbounds %struct.Reg, %struct.Reg* %491, i32 0, i32 0
  %RBP.i1244 = bitcast %union.anon* %492 to i64*
  %493 = load i64, i64* %RBP.i1244
  %494 = sub i64 %493, 48
  %495 = load i64, i64* %PC.i1242
  %496 = add i64 %495, 4
  store i64 %496, i64* %PC.i1242
  %497 = inttoptr i64 %494 to i64*
  %498 = load i64, i64* %497
  store i64 %498, i64* %RAX.i1243, align 8
  store %struct.Memory* %loadMem_407fe3, %struct.Memory** %MEMORY
  %loadMem_407fe7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %500 = getelementptr inbounds %struct.GPR, %struct.GPR* %499, i32 0, i32 33
  %501 = getelementptr inbounds %struct.Reg, %struct.Reg* %500, i32 0, i32 0
  %PC.i1240 = bitcast %union.anon* %501 to i64*
  %502 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %503 = getelementptr inbounds %struct.GPR, %struct.GPR* %502, i32 0, i32 1
  %504 = getelementptr inbounds %struct.Reg, %struct.Reg* %503, i32 0, i32 0
  %RAX.i1241 = bitcast %union.anon* %504 to i64*
  %505 = load i64, i64* %RAX.i1241
  %506 = load i64, i64* %PC.i1240
  %507 = add i64 %506, 3
  store i64 %507, i64* %PC.i1240
  %508 = inttoptr i64 %505 to i64*
  %509 = load i64, i64* %508
  store i64 %509, i64* %RAX.i1241, align 8
  store %struct.Memory* %loadMem_407fe7, %struct.Memory** %MEMORY
  %loadMem_407fea = load %struct.Memory*, %struct.Memory** %MEMORY
  %510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %511 = getelementptr inbounds %struct.GPR, %struct.GPR* %510, i32 0, i32 33
  %512 = getelementptr inbounds %struct.Reg, %struct.Reg* %511, i32 0, i32 0
  %PC.i1238 = bitcast %union.anon* %512 to i64*
  %513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %514 = getelementptr inbounds %struct.GPR, %struct.GPR* %513, i32 0, i32 1
  %515 = getelementptr inbounds %struct.Reg, %struct.Reg* %514, i32 0, i32 0
  %RAX.i1239 = bitcast %union.anon* %515 to i64*
  %516 = load i64, i64* %RAX.i1239
  %517 = add i64 %516, 12
  %518 = load i64, i64* %PC.i1238
  %519 = add i64 %518, 7
  store i64 %519, i64* %PC.i1238
  %520 = inttoptr i64 %517 to i32*
  store i32 -987654321, i32* %520
  store %struct.Memory* %loadMem_407fea, %struct.Memory** %MEMORY
  %loadMem_407ff1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %521 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %522 = getelementptr inbounds %struct.GPR, %struct.GPR* %521, i32 0, i32 33
  %523 = getelementptr inbounds %struct.Reg, %struct.Reg* %522, i32 0, i32 0
  %PC.i1235 = bitcast %union.anon* %523 to i64*
  %524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %525 = getelementptr inbounds %struct.GPR, %struct.GPR* %524, i32 0, i32 1
  %526 = getelementptr inbounds %struct.Reg, %struct.Reg* %525, i32 0, i32 0
  %RAX.i1236 = bitcast %union.anon* %526 to i64*
  %527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %528 = getelementptr inbounds %struct.GPR, %struct.GPR* %527, i32 0, i32 15
  %529 = getelementptr inbounds %struct.Reg, %struct.Reg* %528, i32 0, i32 0
  %RBP.i1237 = bitcast %union.anon* %529 to i64*
  %530 = load i64, i64* %RBP.i1237
  %531 = sub i64 %530, 48
  %532 = load i64, i64* %PC.i1235
  %533 = add i64 %532, 4
  store i64 %533, i64* %PC.i1235
  %534 = inttoptr i64 %531 to i64*
  %535 = load i64, i64* %534
  store i64 %535, i64* %RAX.i1236, align 8
  store %struct.Memory* %loadMem_407ff1, %struct.Memory** %MEMORY
  %loadMem_407ff5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %536 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %537 = getelementptr inbounds %struct.GPR, %struct.GPR* %536, i32 0, i32 33
  %538 = getelementptr inbounds %struct.Reg, %struct.Reg* %537, i32 0, i32 0
  %PC.i1233 = bitcast %union.anon* %538 to i64*
  %539 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %540 = getelementptr inbounds %struct.GPR, %struct.GPR* %539, i32 0, i32 1
  %541 = getelementptr inbounds %struct.Reg, %struct.Reg* %540, i32 0, i32 0
  %RAX.i1234 = bitcast %union.anon* %541 to i64*
  %542 = load i64, i64* %RAX.i1234
  %543 = load i64, i64* %PC.i1233
  %544 = add i64 %543, 3
  store i64 %544, i64* %PC.i1233
  %545 = inttoptr i64 %542 to i64*
  %546 = load i64, i64* %545
  store i64 %546, i64* %RAX.i1234, align 8
  store %struct.Memory* %loadMem_407ff5, %struct.Memory** %MEMORY
  %loadMem_407ff8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %548 = getelementptr inbounds %struct.GPR, %struct.GPR* %547, i32 0, i32 33
  %549 = getelementptr inbounds %struct.Reg, %struct.Reg* %548, i32 0, i32 0
  %PC.i1231 = bitcast %union.anon* %549 to i64*
  %550 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %551 = getelementptr inbounds %struct.GPR, %struct.GPR* %550, i32 0, i32 1
  %552 = getelementptr inbounds %struct.Reg, %struct.Reg* %551, i32 0, i32 0
  %RAX.i1232 = bitcast %union.anon* %552 to i64*
  %553 = load i64, i64* %RAX.i1232
  %554 = add i64 %553, 8
  %555 = load i64, i64* %PC.i1231
  %556 = add i64 %555, 7
  store i64 %556, i64* %PC.i1231
  %557 = inttoptr i64 %554 to i32*
  store i32 -987654321, i32* %557
  store %struct.Memory* %loadMem_407ff8, %struct.Memory** %MEMORY
  %loadMem_407fff = load %struct.Memory*, %struct.Memory** %MEMORY
  %558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %559 = getelementptr inbounds %struct.GPR, %struct.GPR* %558, i32 0, i32 33
  %560 = getelementptr inbounds %struct.Reg, %struct.Reg* %559, i32 0, i32 0
  %PC.i1228 = bitcast %union.anon* %560 to i64*
  %561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %562 = getelementptr inbounds %struct.GPR, %struct.GPR* %561, i32 0, i32 1
  %563 = getelementptr inbounds %struct.Reg, %struct.Reg* %562, i32 0, i32 0
  %RAX.i1229 = bitcast %union.anon* %563 to i64*
  %564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %565 = getelementptr inbounds %struct.GPR, %struct.GPR* %564, i32 0, i32 15
  %566 = getelementptr inbounds %struct.Reg, %struct.Reg* %565, i32 0, i32 0
  %RBP.i1230 = bitcast %union.anon* %566 to i64*
  %567 = load i64, i64* %RBP.i1230
  %568 = sub i64 %567, 48
  %569 = load i64, i64* %PC.i1228
  %570 = add i64 %569, 4
  store i64 %570, i64* %PC.i1228
  %571 = inttoptr i64 %568 to i64*
  %572 = load i64, i64* %571
  store i64 %572, i64* %RAX.i1229, align 8
  store %struct.Memory* %loadMem_407fff, %struct.Memory** %MEMORY
  %loadMem_408003 = load %struct.Memory*, %struct.Memory** %MEMORY
  %573 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %574 = getelementptr inbounds %struct.GPR, %struct.GPR* %573, i32 0, i32 33
  %575 = getelementptr inbounds %struct.Reg, %struct.Reg* %574, i32 0, i32 0
  %PC.i1226 = bitcast %union.anon* %575 to i64*
  %576 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %577 = getelementptr inbounds %struct.GPR, %struct.GPR* %576, i32 0, i32 1
  %578 = getelementptr inbounds %struct.Reg, %struct.Reg* %577, i32 0, i32 0
  %RAX.i1227 = bitcast %union.anon* %578 to i64*
  %579 = load i64, i64* %RAX.i1227
  %580 = load i64, i64* %PC.i1226
  %581 = add i64 %580, 3
  store i64 %581, i64* %PC.i1226
  %582 = inttoptr i64 %579 to i64*
  %583 = load i64, i64* %582
  store i64 %583, i64* %RAX.i1227, align 8
  store %struct.Memory* %loadMem_408003, %struct.Memory** %MEMORY
  %loadMem_408006 = load %struct.Memory*, %struct.Memory** %MEMORY
  %584 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %585 = getelementptr inbounds %struct.GPR, %struct.GPR* %584, i32 0, i32 33
  %586 = getelementptr inbounds %struct.Reg, %struct.Reg* %585, i32 0, i32 0
  %PC.i1224 = bitcast %union.anon* %586 to i64*
  %587 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %588 = getelementptr inbounds %struct.GPR, %struct.GPR* %587, i32 0, i32 1
  %589 = getelementptr inbounds %struct.Reg, %struct.Reg* %588, i32 0, i32 0
  %RAX.i1225 = bitcast %union.anon* %589 to i64*
  %590 = load i64, i64* %RAX.i1225
  %591 = add i64 %590, 4
  %592 = load i64, i64* %PC.i1224
  %593 = add i64 %592, 7
  store i64 %593, i64* %PC.i1224
  %594 = inttoptr i64 %591 to i32*
  store i32 -987654321, i32* %594
  store %struct.Memory* %loadMem_408006, %struct.Memory** %MEMORY
  %loadMem_40800d = load %struct.Memory*, %struct.Memory** %MEMORY
  %595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %596 = getelementptr inbounds %struct.GPR, %struct.GPR* %595, i32 0, i32 33
  %597 = getelementptr inbounds %struct.Reg, %struct.Reg* %596, i32 0, i32 0
  %PC.i1222 = bitcast %union.anon* %597 to i64*
  %598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %599 = getelementptr inbounds %struct.GPR, %struct.GPR* %598, i32 0, i32 15
  %600 = getelementptr inbounds %struct.Reg, %struct.Reg* %599, i32 0, i32 0
  %RBP.i1223 = bitcast %union.anon* %600 to i64*
  %601 = load i64, i64* %RBP.i1223
  %602 = sub i64 %601, 80
  %603 = load i64, i64* %PC.i1222
  %604 = add i64 %603, 7
  store i64 %604, i64* %PC.i1222
  %605 = inttoptr i64 %602 to i32*
  store i32 0, i32* %605
  store %struct.Memory* %loadMem_40800d, %struct.Memory** %MEMORY
  br label %block_.L_408014

block_.L_408014:                                  ; preds = %block_408027, %entry
  %loadMem_408014 = load %struct.Memory*, %struct.Memory** %MEMORY
  %606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %607 = getelementptr inbounds %struct.GPR, %struct.GPR* %606, i32 0, i32 33
  %608 = getelementptr inbounds %struct.Reg, %struct.Reg* %607, i32 0, i32 0
  %PC.i1219 = bitcast %union.anon* %608 to i64*
  %609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %610 = getelementptr inbounds %struct.GPR, %struct.GPR* %609, i32 0, i32 1
  %611 = getelementptr inbounds %struct.Reg, %struct.Reg* %610, i32 0, i32 0
  %RAX.i1220 = bitcast %union.anon* %611 to i64*
  %612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %613 = getelementptr inbounds %struct.GPR, %struct.GPR* %612, i32 0, i32 15
  %614 = getelementptr inbounds %struct.Reg, %struct.Reg* %613, i32 0, i32 0
  %RBP.i1221 = bitcast %union.anon* %614 to i64*
  %615 = load i64, i64* %RBP.i1221
  %616 = sub i64 %615, 80
  %617 = load i64, i64* %PC.i1219
  %618 = add i64 %617, 3
  store i64 %618, i64* %PC.i1219
  %619 = inttoptr i64 %616 to i32*
  %620 = load i32, i32* %619
  %621 = zext i32 %620 to i64
  store i64 %621, i64* %RAX.i1220, align 8
  store %struct.Memory* %loadMem_408014, %struct.Memory** %MEMORY
  %loadMem_408017 = load %struct.Memory*, %struct.Memory** %MEMORY
  %622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %623 = getelementptr inbounds %struct.GPR, %struct.GPR* %622, i32 0, i32 33
  %624 = getelementptr inbounds %struct.Reg, %struct.Reg* %623, i32 0, i32 0
  %PC.i1216 = bitcast %union.anon* %624 to i64*
  %625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %626 = getelementptr inbounds %struct.GPR, %struct.GPR* %625, i32 0, i32 5
  %627 = getelementptr inbounds %struct.Reg, %struct.Reg* %626, i32 0, i32 0
  %RCX.i1217 = bitcast %union.anon* %627 to i64*
  %628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %629 = getelementptr inbounds %struct.GPR, %struct.GPR* %628, i32 0, i32 15
  %630 = getelementptr inbounds %struct.Reg, %struct.Reg* %629, i32 0, i32 0
  %RBP.i1218 = bitcast %union.anon* %630 to i64*
  %631 = load i64, i64* %RBP.i1218
  %632 = sub i64 %631, 24
  %633 = load i64, i64* %PC.i1216
  %634 = add i64 %633, 4
  store i64 %634, i64* %PC.i1216
  %635 = inttoptr i64 %632 to i64*
  %636 = load i64, i64* %635
  store i64 %636, i64* %RCX.i1217, align 8
  store %struct.Memory* %loadMem_408017, %struct.Memory** %MEMORY
  %loadMem_40801b = load %struct.Memory*, %struct.Memory** %MEMORY
  %637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %638 = getelementptr inbounds %struct.GPR, %struct.GPR* %637, i32 0, i32 33
  %639 = getelementptr inbounds %struct.Reg, %struct.Reg* %638, i32 0, i32 0
  %PC.i1213 = bitcast %union.anon* %639 to i64*
  %640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %641 = getelementptr inbounds %struct.GPR, %struct.GPR* %640, i32 0, i32 1
  %642 = getelementptr inbounds %struct.Reg, %struct.Reg* %641, i32 0, i32 0
  %EAX.i1214 = bitcast %union.anon* %642 to i32*
  %643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %644 = getelementptr inbounds %struct.GPR, %struct.GPR* %643, i32 0, i32 5
  %645 = getelementptr inbounds %struct.Reg, %struct.Reg* %644, i32 0, i32 0
  %RCX.i1215 = bitcast %union.anon* %645 to i64*
  %646 = load i32, i32* %EAX.i1214
  %647 = zext i32 %646 to i64
  %648 = load i64, i64* %RCX.i1215
  %649 = add i64 %648, 136
  %650 = load i64, i64* %PC.i1213
  %651 = add i64 %650, 6
  store i64 %651, i64* %PC.i1213
  %652 = inttoptr i64 %649 to i32*
  %653 = load i32, i32* %652
  %654 = sub i32 %646, %653
  %655 = icmp ult i32 %646, %653
  %656 = zext i1 %655 to i8
  %657 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %656, i8* %657, align 1
  %658 = and i32 %654, 255
  %659 = call i32 @llvm.ctpop.i32(i32 %658)
  %660 = trunc i32 %659 to i8
  %661 = and i8 %660, 1
  %662 = xor i8 %661, 1
  %663 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %662, i8* %663, align 1
  %664 = xor i32 %653, %646
  %665 = xor i32 %664, %654
  %666 = lshr i32 %665, 4
  %667 = trunc i32 %666 to i8
  %668 = and i8 %667, 1
  %669 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %668, i8* %669, align 1
  %670 = icmp eq i32 %654, 0
  %671 = zext i1 %670 to i8
  %672 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %671, i8* %672, align 1
  %673 = lshr i32 %654, 31
  %674 = trunc i32 %673 to i8
  %675 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %674, i8* %675, align 1
  %676 = lshr i32 %646, 31
  %677 = lshr i32 %653, 31
  %678 = xor i32 %677, %676
  %679 = xor i32 %673, %676
  %680 = add i32 %679, %678
  %681 = icmp eq i32 %680, 2
  %682 = zext i1 %681 to i8
  %683 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %682, i8* %683, align 1
  store %struct.Memory* %loadMem_40801b, %struct.Memory** %MEMORY
  %loadMem_408021 = load %struct.Memory*, %struct.Memory** %MEMORY
  %684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %685 = getelementptr inbounds %struct.GPR, %struct.GPR* %684, i32 0, i32 33
  %686 = getelementptr inbounds %struct.Reg, %struct.Reg* %685, i32 0, i32 0
  %PC.i1212 = bitcast %union.anon* %686 to i64*
  %687 = load i64, i64* %PC.i1212
  %688 = add i64 %687, 74
  %689 = load i64, i64* %PC.i1212
  %690 = add i64 %689, 6
  %691 = load i64, i64* %PC.i1212
  %692 = add i64 %691, 6
  store i64 %692, i64* %PC.i1212
  %693 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %694 = load i8, i8* %693, align 1
  %695 = icmp eq i8 %694, 0
  %696 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %697 = load i8, i8* %696, align 1
  %698 = icmp ne i8 %697, 0
  %699 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %700 = load i8, i8* %699, align 1
  %701 = icmp ne i8 %700, 0
  %702 = xor i1 %698, %701
  %703 = xor i1 %702, true
  %704 = and i1 %695, %703
  %705 = zext i1 %704 to i8
  store i8 %705, i8* %BRANCH_TAKEN, align 1
  %706 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %707 = select i1 %704, i64 %688, i64 %690
  store i64 %707, i64* %706, align 8
  store %struct.Memory* %loadMem_408021, %struct.Memory** %MEMORY
  %loadBr_408021 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_408021 = icmp eq i8 %loadBr_408021, 1
  br i1 %cmpBr_408021, label %block_.L_40806b, label %block_408027

block_408027:                                     ; preds = %block_.L_408014
  %loadMem_408027 = load %struct.Memory*, %struct.Memory** %MEMORY
  %708 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %709 = getelementptr inbounds %struct.GPR, %struct.GPR* %708, i32 0, i32 33
  %710 = getelementptr inbounds %struct.Reg, %struct.Reg* %709, i32 0, i32 0
  %PC.i1209 = bitcast %union.anon* %710 to i64*
  %711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %712 = getelementptr inbounds %struct.GPR, %struct.GPR* %711, i32 0, i32 1
  %713 = getelementptr inbounds %struct.Reg, %struct.Reg* %712, i32 0, i32 0
  %RAX.i1210 = bitcast %union.anon* %713 to i64*
  %714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %715 = getelementptr inbounds %struct.GPR, %struct.GPR* %714, i32 0, i32 15
  %716 = getelementptr inbounds %struct.Reg, %struct.Reg* %715, i32 0, i32 0
  %RBP.i1211 = bitcast %union.anon* %716 to i64*
  %717 = load i64, i64* %RBP.i1211
  %718 = sub i64 %717, 72
  %719 = load i64, i64* %PC.i1209
  %720 = add i64 %719, 4
  store i64 %720, i64* %PC.i1209
  %721 = inttoptr i64 %718 to i64*
  %722 = load i64, i64* %721
  store i64 %722, i64* %RAX.i1210, align 8
  store %struct.Memory* %loadMem_408027, %struct.Memory** %MEMORY
  %loadMem_40802b = load %struct.Memory*, %struct.Memory** %MEMORY
  %723 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %724 = getelementptr inbounds %struct.GPR, %struct.GPR* %723, i32 0, i32 33
  %725 = getelementptr inbounds %struct.Reg, %struct.Reg* %724, i32 0, i32 0
  %PC.i1207 = bitcast %union.anon* %725 to i64*
  %726 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %727 = getelementptr inbounds %struct.GPR, %struct.GPR* %726, i32 0, i32 1
  %728 = getelementptr inbounds %struct.Reg, %struct.Reg* %727, i32 0, i32 0
  %RAX.i1208 = bitcast %union.anon* %728 to i64*
  %729 = load i64, i64* %RAX.i1208
  %730 = load i64, i64* %PC.i1207
  %731 = add i64 %730, 3
  store i64 %731, i64* %PC.i1207
  %732 = inttoptr i64 %729 to i64*
  %733 = load i64, i64* %732
  store i64 %733, i64* %RAX.i1208, align 8
  store %struct.Memory* %loadMem_40802b, %struct.Memory** %MEMORY
  %loadMem_40802e = load %struct.Memory*, %struct.Memory** %MEMORY
  %734 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %735 = getelementptr inbounds %struct.GPR, %struct.GPR* %734, i32 0, i32 33
  %736 = getelementptr inbounds %struct.Reg, %struct.Reg* %735, i32 0, i32 0
  %PC.i1204 = bitcast %union.anon* %736 to i64*
  %737 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %738 = getelementptr inbounds %struct.GPR, %struct.GPR* %737, i32 0, i32 5
  %739 = getelementptr inbounds %struct.Reg, %struct.Reg* %738, i32 0, i32 0
  %RCX.i1205 = bitcast %union.anon* %739 to i64*
  %740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %741 = getelementptr inbounds %struct.GPR, %struct.GPR* %740, i32 0, i32 15
  %742 = getelementptr inbounds %struct.Reg, %struct.Reg* %741, i32 0, i32 0
  %RBP.i1206 = bitcast %union.anon* %742 to i64*
  %743 = load i64, i64* %RBP.i1206
  %744 = sub i64 %743, 80
  %745 = load i64, i64* %PC.i1204
  %746 = add i64 %745, 4
  store i64 %746, i64* %PC.i1204
  %747 = inttoptr i64 %744 to i32*
  %748 = load i32, i32* %747
  %749 = sext i32 %748 to i64
  store i64 %749, i64* %RCX.i1205, align 8
  store %struct.Memory* %loadMem_40802e, %struct.Memory** %MEMORY
  %loadMem_408032 = load %struct.Memory*, %struct.Memory** %MEMORY
  %750 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %751 = getelementptr inbounds %struct.GPR, %struct.GPR* %750, i32 0, i32 33
  %752 = getelementptr inbounds %struct.Reg, %struct.Reg* %751, i32 0, i32 0
  %PC.i1201 = bitcast %union.anon* %752 to i64*
  %753 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %754 = getelementptr inbounds %struct.GPR, %struct.GPR* %753, i32 0, i32 1
  %755 = getelementptr inbounds %struct.Reg, %struct.Reg* %754, i32 0, i32 0
  %RAX.i1202 = bitcast %union.anon* %755 to i64*
  %756 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %757 = getelementptr inbounds %struct.GPR, %struct.GPR* %756, i32 0, i32 5
  %758 = getelementptr inbounds %struct.Reg, %struct.Reg* %757, i32 0, i32 0
  %RCX.i1203 = bitcast %union.anon* %758 to i64*
  %759 = load i64, i64* %RAX.i1202
  %760 = load i64, i64* %RCX.i1203
  %761 = mul i64 %760, 4
  %762 = add i64 %761, %759
  %763 = load i64, i64* %PC.i1201
  %764 = add i64 %763, 7
  store i64 %764, i64* %PC.i1201
  %765 = inttoptr i64 %762 to i32*
  store i32 -987654321, i32* %765
  store %struct.Memory* %loadMem_408032, %struct.Memory** %MEMORY
  %loadMem_408039 = load %struct.Memory*, %struct.Memory** %MEMORY
  %766 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %767 = getelementptr inbounds %struct.GPR, %struct.GPR* %766, i32 0, i32 33
  %768 = getelementptr inbounds %struct.Reg, %struct.Reg* %767, i32 0, i32 0
  %PC.i1198 = bitcast %union.anon* %768 to i64*
  %769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %770 = getelementptr inbounds %struct.GPR, %struct.GPR* %769, i32 0, i32 1
  %771 = getelementptr inbounds %struct.Reg, %struct.Reg* %770, i32 0, i32 0
  %RAX.i1199 = bitcast %union.anon* %771 to i64*
  %772 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %773 = getelementptr inbounds %struct.GPR, %struct.GPR* %772, i32 0, i32 15
  %774 = getelementptr inbounds %struct.Reg, %struct.Reg* %773, i32 0, i32 0
  %RBP.i1200 = bitcast %union.anon* %774 to i64*
  %775 = load i64, i64* %RBP.i1200
  %776 = sub i64 %775, 64
  %777 = load i64, i64* %PC.i1198
  %778 = add i64 %777, 4
  store i64 %778, i64* %PC.i1198
  %779 = inttoptr i64 %776 to i64*
  %780 = load i64, i64* %779
  store i64 %780, i64* %RAX.i1199, align 8
  store %struct.Memory* %loadMem_408039, %struct.Memory** %MEMORY
  %loadMem_40803d = load %struct.Memory*, %struct.Memory** %MEMORY
  %781 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %782 = getelementptr inbounds %struct.GPR, %struct.GPR* %781, i32 0, i32 33
  %783 = getelementptr inbounds %struct.Reg, %struct.Reg* %782, i32 0, i32 0
  %PC.i1196 = bitcast %union.anon* %783 to i64*
  %784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %785 = getelementptr inbounds %struct.GPR, %struct.GPR* %784, i32 0, i32 1
  %786 = getelementptr inbounds %struct.Reg, %struct.Reg* %785, i32 0, i32 0
  %RAX.i1197 = bitcast %union.anon* %786 to i64*
  %787 = load i64, i64* %RAX.i1197
  %788 = load i64, i64* %PC.i1196
  %789 = add i64 %788, 3
  store i64 %789, i64* %PC.i1196
  %790 = inttoptr i64 %787 to i64*
  %791 = load i64, i64* %790
  store i64 %791, i64* %RAX.i1197, align 8
  store %struct.Memory* %loadMem_40803d, %struct.Memory** %MEMORY
  %loadMem_408040 = load %struct.Memory*, %struct.Memory** %MEMORY
  %792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %793 = getelementptr inbounds %struct.GPR, %struct.GPR* %792, i32 0, i32 33
  %794 = getelementptr inbounds %struct.Reg, %struct.Reg* %793, i32 0, i32 0
  %PC.i1193 = bitcast %union.anon* %794 to i64*
  %795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %796 = getelementptr inbounds %struct.GPR, %struct.GPR* %795, i32 0, i32 5
  %797 = getelementptr inbounds %struct.Reg, %struct.Reg* %796, i32 0, i32 0
  %RCX.i1194 = bitcast %union.anon* %797 to i64*
  %798 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %799 = getelementptr inbounds %struct.GPR, %struct.GPR* %798, i32 0, i32 15
  %800 = getelementptr inbounds %struct.Reg, %struct.Reg* %799, i32 0, i32 0
  %RBP.i1195 = bitcast %union.anon* %800 to i64*
  %801 = load i64, i64* %RBP.i1195
  %802 = sub i64 %801, 80
  %803 = load i64, i64* %PC.i1193
  %804 = add i64 %803, 4
  store i64 %804, i64* %PC.i1193
  %805 = inttoptr i64 %802 to i32*
  %806 = load i32, i32* %805
  %807 = sext i32 %806 to i64
  store i64 %807, i64* %RCX.i1194, align 8
  store %struct.Memory* %loadMem_408040, %struct.Memory** %MEMORY
  %loadMem_408044 = load %struct.Memory*, %struct.Memory** %MEMORY
  %808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %809 = getelementptr inbounds %struct.GPR, %struct.GPR* %808, i32 0, i32 33
  %810 = getelementptr inbounds %struct.Reg, %struct.Reg* %809, i32 0, i32 0
  %PC.i1190 = bitcast %union.anon* %810 to i64*
  %811 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %812 = getelementptr inbounds %struct.GPR, %struct.GPR* %811, i32 0, i32 1
  %813 = getelementptr inbounds %struct.Reg, %struct.Reg* %812, i32 0, i32 0
  %RAX.i1191 = bitcast %union.anon* %813 to i64*
  %814 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %815 = getelementptr inbounds %struct.GPR, %struct.GPR* %814, i32 0, i32 5
  %816 = getelementptr inbounds %struct.Reg, %struct.Reg* %815, i32 0, i32 0
  %RCX.i1192 = bitcast %union.anon* %816 to i64*
  %817 = load i64, i64* %RAX.i1191
  %818 = load i64, i64* %RCX.i1192
  %819 = mul i64 %818, 4
  %820 = add i64 %819, %817
  %821 = load i64, i64* %PC.i1190
  %822 = add i64 %821, 7
  store i64 %822, i64* %PC.i1190
  %823 = inttoptr i64 %820 to i32*
  store i32 -987654321, i32* %823
  store %struct.Memory* %loadMem_408044, %struct.Memory** %MEMORY
  %loadMem_40804b = load %struct.Memory*, %struct.Memory** %MEMORY
  %824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %825 = getelementptr inbounds %struct.GPR, %struct.GPR* %824, i32 0, i32 33
  %826 = getelementptr inbounds %struct.Reg, %struct.Reg* %825, i32 0, i32 0
  %PC.i1187 = bitcast %union.anon* %826 to i64*
  %827 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %828 = getelementptr inbounds %struct.GPR, %struct.GPR* %827, i32 0, i32 1
  %829 = getelementptr inbounds %struct.Reg, %struct.Reg* %828, i32 0, i32 0
  %RAX.i1188 = bitcast %union.anon* %829 to i64*
  %830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %831 = getelementptr inbounds %struct.GPR, %struct.GPR* %830, i32 0, i32 15
  %832 = getelementptr inbounds %struct.Reg, %struct.Reg* %831, i32 0, i32 0
  %RBP.i1189 = bitcast %union.anon* %832 to i64*
  %833 = load i64, i64* %RBP.i1189
  %834 = sub i64 %833, 56
  %835 = load i64, i64* %PC.i1187
  %836 = add i64 %835, 4
  store i64 %836, i64* %PC.i1187
  %837 = inttoptr i64 %834 to i64*
  %838 = load i64, i64* %837
  store i64 %838, i64* %RAX.i1188, align 8
  store %struct.Memory* %loadMem_40804b, %struct.Memory** %MEMORY
  %loadMem_40804f = load %struct.Memory*, %struct.Memory** %MEMORY
  %839 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %840 = getelementptr inbounds %struct.GPR, %struct.GPR* %839, i32 0, i32 33
  %841 = getelementptr inbounds %struct.Reg, %struct.Reg* %840, i32 0, i32 0
  %PC.i1185 = bitcast %union.anon* %841 to i64*
  %842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %843 = getelementptr inbounds %struct.GPR, %struct.GPR* %842, i32 0, i32 1
  %844 = getelementptr inbounds %struct.Reg, %struct.Reg* %843, i32 0, i32 0
  %RAX.i1186 = bitcast %union.anon* %844 to i64*
  %845 = load i64, i64* %RAX.i1186
  %846 = load i64, i64* %PC.i1185
  %847 = add i64 %846, 3
  store i64 %847, i64* %PC.i1185
  %848 = inttoptr i64 %845 to i64*
  %849 = load i64, i64* %848
  store i64 %849, i64* %RAX.i1186, align 8
  store %struct.Memory* %loadMem_40804f, %struct.Memory** %MEMORY
  %loadMem_408052 = load %struct.Memory*, %struct.Memory** %MEMORY
  %850 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %851 = getelementptr inbounds %struct.GPR, %struct.GPR* %850, i32 0, i32 33
  %852 = getelementptr inbounds %struct.Reg, %struct.Reg* %851, i32 0, i32 0
  %PC.i1182 = bitcast %union.anon* %852 to i64*
  %853 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %854 = getelementptr inbounds %struct.GPR, %struct.GPR* %853, i32 0, i32 5
  %855 = getelementptr inbounds %struct.Reg, %struct.Reg* %854, i32 0, i32 0
  %RCX.i1183 = bitcast %union.anon* %855 to i64*
  %856 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %857 = getelementptr inbounds %struct.GPR, %struct.GPR* %856, i32 0, i32 15
  %858 = getelementptr inbounds %struct.Reg, %struct.Reg* %857, i32 0, i32 0
  %RBP.i1184 = bitcast %union.anon* %858 to i64*
  %859 = load i64, i64* %RBP.i1184
  %860 = sub i64 %859, 80
  %861 = load i64, i64* %PC.i1182
  %862 = add i64 %861, 4
  store i64 %862, i64* %PC.i1182
  %863 = inttoptr i64 %860 to i32*
  %864 = load i32, i32* %863
  %865 = sext i32 %864 to i64
  store i64 %865, i64* %RCX.i1183, align 8
  store %struct.Memory* %loadMem_408052, %struct.Memory** %MEMORY
  %loadMem_408056 = load %struct.Memory*, %struct.Memory** %MEMORY
  %866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %867 = getelementptr inbounds %struct.GPR, %struct.GPR* %866, i32 0, i32 33
  %868 = getelementptr inbounds %struct.Reg, %struct.Reg* %867, i32 0, i32 0
  %PC.i1179 = bitcast %union.anon* %868 to i64*
  %869 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %870 = getelementptr inbounds %struct.GPR, %struct.GPR* %869, i32 0, i32 1
  %871 = getelementptr inbounds %struct.Reg, %struct.Reg* %870, i32 0, i32 0
  %RAX.i1180 = bitcast %union.anon* %871 to i64*
  %872 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %873 = getelementptr inbounds %struct.GPR, %struct.GPR* %872, i32 0, i32 5
  %874 = getelementptr inbounds %struct.Reg, %struct.Reg* %873, i32 0, i32 0
  %RCX.i1181 = bitcast %union.anon* %874 to i64*
  %875 = load i64, i64* %RAX.i1180
  %876 = load i64, i64* %RCX.i1181
  %877 = mul i64 %876, 4
  %878 = add i64 %877, %875
  %879 = load i64, i64* %PC.i1179
  %880 = add i64 %879, 7
  store i64 %880, i64* %PC.i1179
  %881 = inttoptr i64 %878 to i32*
  store i32 -987654321, i32* %881
  store %struct.Memory* %loadMem_408056, %struct.Memory** %MEMORY
  %loadMem_40805d = load %struct.Memory*, %struct.Memory** %MEMORY
  %882 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %883 = getelementptr inbounds %struct.GPR, %struct.GPR* %882, i32 0, i32 33
  %884 = getelementptr inbounds %struct.Reg, %struct.Reg* %883, i32 0, i32 0
  %PC.i1176 = bitcast %union.anon* %884 to i64*
  %885 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %886 = getelementptr inbounds %struct.GPR, %struct.GPR* %885, i32 0, i32 1
  %887 = getelementptr inbounds %struct.Reg, %struct.Reg* %886, i32 0, i32 0
  %RAX.i1177 = bitcast %union.anon* %887 to i64*
  %888 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %889 = getelementptr inbounds %struct.GPR, %struct.GPR* %888, i32 0, i32 15
  %890 = getelementptr inbounds %struct.Reg, %struct.Reg* %889, i32 0, i32 0
  %RBP.i1178 = bitcast %union.anon* %890 to i64*
  %891 = load i64, i64* %RBP.i1178
  %892 = sub i64 %891, 80
  %893 = load i64, i64* %PC.i1176
  %894 = add i64 %893, 3
  store i64 %894, i64* %PC.i1176
  %895 = inttoptr i64 %892 to i32*
  %896 = load i32, i32* %895
  %897 = zext i32 %896 to i64
  store i64 %897, i64* %RAX.i1177, align 8
  store %struct.Memory* %loadMem_40805d, %struct.Memory** %MEMORY
  %loadMem_408060 = load %struct.Memory*, %struct.Memory** %MEMORY
  %898 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %899 = getelementptr inbounds %struct.GPR, %struct.GPR* %898, i32 0, i32 33
  %900 = getelementptr inbounds %struct.Reg, %struct.Reg* %899, i32 0, i32 0
  %PC.i1174 = bitcast %union.anon* %900 to i64*
  %901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %902 = getelementptr inbounds %struct.GPR, %struct.GPR* %901, i32 0, i32 1
  %903 = getelementptr inbounds %struct.Reg, %struct.Reg* %902, i32 0, i32 0
  %RAX.i1175 = bitcast %union.anon* %903 to i64*
  %904 = load i64, i64* %RAX.i1175
  %905 = load i64, i64* %PC.i1174
  %906 = add i64 %905, 3
  store i64 %906, i64* %PC.i1174
  %907 = trunc i64 %904 to i32
  %908 = add i32 1, %907
  %909 = zext i32 %908 to i64
  store i64 %909, i64* %RAX.i1175, align 8
  %910 = icmp ult i32 %908, %907
  %911 = icmp ult i32 %908, 1
  %912 = or i1 %910, %911
  %913 = zext i1 %912 to i8
  %914 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %913, i8* %914, align 1
  %915 = and i32 %908, 255
  %916 = call i32 @llvm.ctpop.i32(i32 %915)
  %917 = trunc i32 %916 to i8
  %918 = and i8 %917, 1
  %919 = xor i8 %918, 1
  %920 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %919, i8* %920, align 1
  %921 = xor i64 1, %904
  %922 = trunc i64 %921 to i32
  %923 = xor i32 %922, %908
  %924 = lshr i32 %923, 4
  %925 = trunc i32 %924 to i8
  %926 = and i8 %925, 1
  %927 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %926, i8* %927, align 1
  %928 = icmp eq i32 %908, 0
  %929 = zext i1 %928 to i8
  %930 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %929, i8* %930, align 1
  %931 = lshr i32 %908, 31
  %932 = trunc i32 %931 to i8
  %933 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %932, i8* %933, align 1
  %934 = lshr i32 %907, 31
  %935 = xor i32 %931, %934
  %936 = add i32 %935, %931
  %937 = icmp eq i32 %936, 2
  %938 = zext i1 %937 to i8
  %939 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %938, i8* %939, align 1
  store %struct.Memory* %loadMem_408060, %struct.Memory** %MEMORY
  %loadMem_408063 = load %struct.Memory*, %struct.Memory** %MEMORY
  %940 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %941 = getelementptr inbounds %struct.GPR, %struct.GPR* %940, i32 0, i32 33
  %942 = getelementptr inbounds %struct.Reg, %struct.Reg* %941, i32 0, i32 0
  %PC.i1171 = bitcast %union.anon* %942 to i64*
  %943 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %944 = getelementptr inbounds %struct.GPR, %struct.GPR* %943, i32 0, i32 1
  %945 = getelementptr inbounds %struct.Reg, %struct.Reg* %944, i32 0, i32 0
  %EAX.i1172 = bitcast %union.anon* %945 to i32*
  %946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %947 = getelementptr inbounds %struct.GPR, %struct.GPR* %946, i32 0, i32 15
  %948 = getelementptr inbounds %struct.Reg, %struct.Reg* %947, i32 0, i32 0
  %RBP.i1173 = bitcast %union.anon* %948 to i64*
  %949 = load i64, i64* %RBP.i1173
  %950 = sub i64 %949, 80
  %951 = load i32, i32* %EAX.i1172
  %952 = zext i32 %951 to i64
  %953 = load i64, i64* %PC.i1171
  %954 = add i64 %953, 3
  store i64 %954, i64* %PC.i1171
  %955 = inttoptr i64 %950 to i32*
  store i32 %951, i32* %955
  store %struct.Memory* %loadMem_408063, %struct.Memory** %MEMORY
  %loadMem_408066 = load %struct.Memory*, %struct.Memory** %MEMORY
  %956 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %957 = getelementptr inbounds %struct.GPR, %struct.GPR* %956, i32 0, i32 33
  %958 = getelementptr inbounds %struct.Reg, %struct.Reg* %957, i32 0, i32 0
  %PC.i1170 = bitcast %union.anon* %958 to i64*
  %959 = load i64, i64* %PC.i1170
  %960 = add i64 %959, -82
  %961 = load i64, i64* %PC.i1170
  %962 = add i64 %961, 5
  store i64 %962, i64* %PC.i1170
  %963 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %960, i64* %963, align 8
  store %struct.Memory* %loadMem_408066, %struct.Memory** %MEMORY
  br label %block_.L_408014

block_.L_40806b:                                  ; preds = %block_.L_408014
  %loadMem_40806b = load %struct.Memory*, %struct.Memory** %MEMORY
  %964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %965 = getelementptr inbounds %struct.GPR, %struct.GPR* %964, i32 0, i32 33
  %966 = getelementptr inbounds %struct.Reg, %struct.Reg* %965, i32 0, i32 0
  %PC.i1168 = bitcast %union.anon* %966 to i64*
  %967 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %968 = getelementptr inbounds %struct.GPR, %struct.GPR* %967, i32 0, i32 15
  %969 = getelementptr inbounds %struct.Reg, %struct.Reg* %968, i32 0, i32 0
  %RBP.i1169 = bitcast %union.anon* %969 to i64*
  %970 = load i64, i64* %RBP.i1169
  %971 = sub i64 %970, 76
  %972 = load i64, i64* %PC.i1168
  %973 = add i64 %972, 7
  store i64 %973, i64* %PC.i1168
  %974 = inttoptr i64 %971 to i32*
  store i32 1, i32* %974
  store %struct.Memory* %loadMem_40806b, %struct.Memory** %MEMORY
  br label %block_.L_408072

block_.L_408072:                                  ; preds = %block_.L_408599, %block_.L_40806b
  %loadMem_408072 = load %struct.Memory*, %struct.Memory** %MEMORY
  %975 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %976 = getelementptr inbounds %struct.GPR, %struct.GPR* %975, i32 0, i32 33
  %977 = getelementptr inbounds %struct.Reg, %struct.Reg* %976, i32 0, i32 0
  %PC.i1165 = bitcast %union.anon* %977 to i64*
  %978 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %979 = getelementptr inbounds %struct.GPR, %struct.GPR* %978, i32 0, i32 1
  %980 = getelementptr inbounds %struct.Reg, %struct.Reg* %979, i32 0, i32 0
  %RAX.i1166 = bitcast %union.anon* %980 to i64*
  %981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %982 = getelementptr inbounds %struct.GPR, %struct.GPR* %981, i32 0, i32 15
  %983 = getelementptr inbounds %struct.Reg, %struct.Reg* %982, i32 0, i32 0
  %RBP.i1167 = bitcast %union.anon* %983 to i64*
  %984 = load i64, i64* %RBP.i1167
  %985 = sub i64 %984, 76
  %986 = load i64, i64* %PC.i1165
  %987 = add i64 %986, 3
  store i64 %987, i64* %PC.i1165
  %988 = inttoptr i64 %985 to i32*
  %989 = load i32, i32* %988
  %990 = zext i32 %989 to i64
  store i64 %990, i64* %RAX.i1166, align 8
  store %struct.Memory* %loadMem_408072, %struct.Memory** %MEMORY
  %loadMem_408075 = load %struct.Memory*, %struct.Memory** %MEMORY
  %991 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %992 = getelementptr inbounds %struct.GPR, %struct.GPR* %991, i32 0, i32 33
  %993 = getelementptr inbounds %struct.Reg, %struct.Reg* %992, i32 0, i32 0
  %PC.i1162 = bitcast %union.anon* %993 to i64*
  %994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %995 = getelementptr inbounds %struct.GPR, %struct.GPR* %994, i32 0, i32 1
  %996 = getelementptr inbounds %struct.Reg, %struct.Reg* %995, i32 0, i32 0
  %EAX.i1163 = bitcast %union.anon* %996 to i32*
  %997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %998 = getelementptr inbounds %struct.GPR, %struct.GPR* %997, i32 0, i32 15
  %999 = getelementptr inbounds %struct.Reg, %struct.Reg* %998, i32 0, i32 0
  %RBP.i1164 = bitcast %union.anon* %999 to i64*
  %1000 = load i32, i32* %EAX.i1163
  %1001 = zext i32 %1000 to i64
  %1002 = load i64, i64* %RBP.i1164
  %1003 = sub i64 %1002, 12
  %1004 = load i64, i64* %PC.i1162
  %1005 = add i64 %1004, 3
  store i64 %1005, i64* %PC.i1162
  %1006 = inttoptr i64 %1003 to i32*
  %1007 = load i32, i32* %1006
  %1008 = sub i32 %1000, %1007
  %1009 = icmp ult i32 %1000, %1007
  %1010 = zext i1 %1009 to i8
  %1011 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1010, i8* %1011, align 1
  %1012 = and i32 %1008, 255
  %1013 = call i32 @llvm.ctpop.i32(i32 %1012)
  %1014 = trunc i32 %1013 to i8
  %1015 = and i8 %1014, 1
  %1016 = xor i8 %1015, 1
  %1017 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1016, i8* %1017, align 1
  %1018 = xor i32 %1007, %1000
  %1019 = xor i32 %1018, %1008
  %1020 = lshr i32 %1019, 4
  %1021 = trunc i32 %1020 to i8
  %1022 = and i8 %1021, 1
  %1023 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1022, i8* %1023, align 1
  %1024 = icmp eq i32 %1008, 0
  %1025 = zext i1 %1024 to i8
  %1026 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1025, i8* %1026, align 1
  %1027 = lshr i32 %1008, 31
  %1028 = trunc i32 %1027 to i8
  %1029 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1028, i8* %1029, align 1
  %1030 = lshr i32 %1000, 31
  %1031 = lshr i32 %1007, 31
  %1032 = xor i32 %1031, %1030
  %1033 = xor i32 %1027, %1030
  %1034 = add i32 %1033, %1032
  %1035 = icmp eq i32 %1034, 2
  %1036 = zext i1 %1035 to i8
  %1037 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1036, i8* %1037, align 1
  store %struct.Memory* %loadMem_408075, %struct.Memory** %MEMORY
  %loadMem_408078 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1038 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1039 = getelementptr inbounds %struct.GPR, %struct.GPR* %1038, i32 0, i32 33
  %1040 = getelementptr inbounds %struct.Reg, %struct.Reg* %1039, i32 0, i32 0
  %PC.i1161 = bitcast %union.anon* %1040 to i64*
  %1041 = load i64, i64* %PC.i1161
  %1042 = add i64 %1041, 1556
  %1043 = load i64, i64* %PC.i1161
  %1044 = add i64 %1043, 6
  %1045 = load i64, i64* %PC.i1161
  %1046 = add i64 %1045, 6
  store i64 %1046, i64* %PC.i1161
  %1047 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1048 = load i8, i8* %1047, align 1
  %1049 = icmp eq i8 %1048, 0
  %1050 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1051 = load i8, i8* %1050, align 1
  %1052 = icmp ne i8 %1051, 0
  %1053 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1054 = load i8, i8* %1053, align 1
  %1055 = icmp ne i8 %1054, 0
  %1056 = xor i1 %1052, %1055
  %1057 = xor i1 %1056, true
  %1058 = and i1 %1049, %1057
  %1059 = zext i1 %1058 to i8
  store i8 %1059, i8* %BRANCH_TAKEN, align 1
  %1060 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1061 = select i1 %1058, i64 %1042, i64 %1044
  store i64 %1061, i64* %1060, align 8
  store %struct.Memory* %loadMem_408078, %struct.Memory** %MEMORY
  %loadBr_408078 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_408078 = icmp eq i8 %loadBr_408078, 1
  br i1 %cmpBr_408078, label %block_.L_40868c, label %block_40807e

block_40807e:                                     ; preds = %block_.L_408072
  %loadMem_40807e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1062 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1063 = getelementptr inbounds %struct.GPR, %struct.GPR* %1062, i32 0, i32 33
  %1064 = getelementptr inbounds %struct.Reg, %struct.Reg* %1063, i32 0, i32 0
  %PC.i1158 = bitcast %union.anon* %1064 to i64*
  %1065 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1066 = getelementptr inbounds %struct.GPR, %struct.GPR* %1065, i32 0, i32 1
  %1067 = getelementptr inbounds %struct.Reg, %struct.Reg* %1066, i32 0, i32 0
  %RAX.i1159 = bitcast %union.anon* %1067 to i64*
  %1068 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1069 = getelementptr inbounds %struct.GPR, %struct.GPR* %1068, i32 0, i32 15
  %1070 = getelementptr inbounds %struct.Reg, %struct.Reg* %1069, i32 0, i32 0
  %RBP.i1160 = bitcast %union.anon* %1070 to i64*
  %1071 = load i64, i64* %RBP.i1160
  %1072 = sub i64 %1071, 72
  %1073 = load i64, i64* %PC.i1158
  %1074 = add i64 %1073, 4
  store i64 %1074, i64* %PC.i1158
  %1075 = inttoptr i64 %1072 to i64*
  %1076 = load i64, i64* %1075
  store i64 %1076, i64* %RAX.i1159, align 8
  store %struct.Memory* %loadMem_40807e, %struct.Memory** %MEMORY
  %loadMem_408082 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1078 = getelementptr inbounds %struct.GPR, %struct.GPR* %1077, i32 0, i32 33
  %1079 = getelementptr inbounds %struct.Reg, %struct.Reg* %1078, i32 0, i32 0
  %PC.i1155 = bitcast %union.anon* %1079 to i64*
  %1080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1081 = getelementptr inbounds %struct.GPR, %struct.GPR* %1080, i32 0, i32 5
  %1082 = getelementptr inbounds %struct.Reg, %struct.Reg* %1081, i32 0, i32 0
  %RCX.i1156 = bitcast %union.anon* %1082 to i64*
  %1083 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1084 = getelementptr inbounds %struct.GPR, %struct.GPR* %1083, i32 0, i32 15
  %1085 = getelementptr inbounds %struct.Reg, %struct.Reg* %1084, i32 0, i32 0
  %RBP.i1157 = bitcast %union.anon* %1085 to i64*
  %1086 = load i64, i64* %RBP.i1157
  %1087 = sub i64 %1086, 76
  %1088 = load i64, i64* %PC.i1155
  %1089 = add i64 %1088, 4
  store i64 %1089, i64* %PC.i1155
  %1090 = inttoptr i64 %1087 to i32*
  %1091 = load i32, i32* %1090
  %1092 = sext i32 %1091 to i64
  store i64 %1092, i64* %RCX.i1156, align 8
  store %struct.Memory* %loadMem_408082, %struct.Memory** %MEMORY
  %loadMem_408086 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1094 = getelementptr inbounds %struct.GPR, %struct.GPR* %1093, i32 0, i32 33
  %1095 = getelementptr inbounds %struct.Reg, %struct.Reg* %1094, i32 0, i32 0
  %PC.i1152 = bitcast %union.anon* %1095 to i64*
  %1096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1097 = getelementptr inbounds %struct.GPR, %struct.GPR* %1096, i32 0, i32 1
  %1098 = getelementptr inbounds %struct.Reg, %struct.Reg* %1097, i32 0, i32 0
  %RAX.i1153 = bitcast %union.anon* %1098 to i64*
  %1099 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1100 = getelementptr inbounds %struct.GPR, %struct.GPR* %1099, i32 0, i32 5
  %1101 = getelementptr inbounds %struct.Reg, %struct.Reg* %1100, i32 0, i32 0
  %RCX.i1154 = bitcast %union.anon* %1101 to i64*
  %1102 = load i64, i64* %RAX.i1153
  %1103 = load i64, i64* %RCX.i1154
  %1104 = mul i64 %1103, 8
  %1105 = add i64 %1104, %1102
  %1106 = load i64, i64* %PC.i1152
  %1107 = add i64 %1106, 4
  store i64 %1107, i64* %PC.i1152
  %1108 = inttoptr i64 %1105 to i64*
  %1109 = load i64, i64* %1108
  store i64 %1109, i64* %RAX.i1153, align 8
  store %struct.Memory* %loadMem_408086, %struct.Memory** %MEMORY
  %loadMem_40808a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1111 = getelementptr inbounds %struct.GPR, %struct.GPR* %1110, i32 0, i32 33
  %1112 = getelementptr inbounds %struct.Reg, %struct.Reg* %1111, i32 0, i32 0
  %PC.i1150 = bitcast %union.anon* %1112 to i64*
  %1113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1114 = getelementptr inbounds %struct.GPR, %struct.GPR* %1113, i32 0, i32 1
  %1115 = getelementptr inbounds %struct.Reg, %struct.Reg* %1114, i32 0, i32 0
  %RAX.i1151 = bitcast %union.anon* %1115 to i64*
  %1116 = load i64, i64* %RAX.i1151
  %1117 = load i64, i64* %PC.i1150
  %1118 = add i64 %1117, 6
  store i64 %1118, i64* %PC.i1150
  %1119 = inttoptr i64 %1116 to i32*
  store i32 -987654321, i32* %1119
  store %struct.Memory* %loadMem_40808a, %struct.Memory** %MEMORY
  %loadMem_408090 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1121 = getelementptr inbounds %struct.GPR, %struct.GPR* %1120, i32 0, i32 33
  %1122 = getelementptr inbounds %struct.Reg, %struct.Reg* %1121, i32 0, i32 0
  %PC.i1147 = bitcast %union.anon* %1122 to i64*
  %1123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1124 = getelementptr inbounds %struct.GPR, %struct.GPR* %1123, i32 0, i32 1
  %1125 = getelementptr inbounds %struct.Reg, %struct.Reg* %1124, i32 0, i32 0
  %RAX.i1148 = bitcast %union.anon* %1125 to i64*
  %1126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1127 = getelementptr inbounds %struct.GPR, %struct.GPR* %1126, i32 0, i32 15
  %1128 = getelementptr inbounds %struct.Reg, %struct.Reg* %1127, i32 0, i32 0
  %RBP.i1149 = bitcast %union.anon* %1128 to i64*
  %1129 = load i64, i64* %RBP.i1149
  %1130 = sub i64 %1129, 64
  %1131 = load i64, i64* %PC.i1147
  %1132 = add i64 %1131, 4
  store i64 %1132, i64* %PC.i1147
  %1133 = inttoptr i64 %1130 to i64*
  %1134 = load i64, i64* %1133
  store i64 %1134, i64* %RAX.i1148, align 8
  store %struct.Memory* %loadMem_408090, %struct.Memory** %MEMORY
  %loadMem_408094 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1136 = getelementptr inbounds %struct.GPR, %struct.GPR* %1135, i32 0, i32 33
  %1137 = getelementptr inbounds %struct.Reg, %struct.Reg* %1136, i32 0, i32 0
  %PC.i1144 = bitcast %union.anon* %1137 to i64*
  %1138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1139 = getelementptr inbounds %struct.GPR, %struct.GPR* %1138, i32 0, i32 5
  %1140 = getelementptr inbounds %struct.Reg, %struct.Reg* %1139, i32 0, i32 0
  %RCX.i1145 = bitcast %union.anon* %1140 to i64*
  %1141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1142 = getelementptr inbounds %struct.GPR, %struct.GPR* %1141, i32 0, i32 15
  %1143 = getelementptr inbounds %struct.Reg, %struct.Reg* %1142, i32 0, i32 0
  %RBP.i1146 = bitcast %union.anon* %1143 to i64*
  %1144 = load i64, i64* %RBP.i1146
  %1145 = sub i64 %1144, 76
  %1146 = load i64, i64* %PC.i1144
  %1147 = add i64 %1146, 4
  store i64 %1147, i64* %PC.i1144
  %1148 = inttoptr i64 %1145 to i32*
  %1149 = load i32, i32* %1148
  %1150 = sext i32 %1149 to i64
  store i64 %1150, i64* %RCX.i1145, align 8
  store %struct.Memory* %loadMem_408094, %struct.Memory** %MEMORY
  %loadMem_408098 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1152 = getelementptr inbounds %struct.GPR, %struct.GPR* %1151, i32 0, i32 33
  %1153 = getelementptr inbounds %struct.Reg, %struct.Reg* %1152, i32 0, i32 0
  %PC.i1141 = bitcast %union.anon* %1153 to i64*
  %1154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1155 = getelementptr inbounds %struct.GPR, %struct.GPR* %1154, i32 0, i32 1
  %1156 = getelementptr inbounds %struct.Reg, %struct.Reg* %1155, i32 0, i32 0
  %RAX.i1142 = bitcast %union.anon* %1156 to i64*
  %1157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1158 = getelementptr inbounds %struct.GPR, %struct.GPR* %1157, i32 0, i32 5
  %1159 = getelementptr inbounds %struct.Reg, %struct.Reg* %1158, i32 0, i32 0
  %RCX.i1143 = bitcast %union.anon* %1159 to i64*
  %1160 = load i64, i64* %RAX.i1142
  %1161 = load i64, i64* %RCX.i1143
  %1162 = mul i64 %1161, 8
  %1163 = add i64 %1162, %1160
  %1164 = load i64, i64* %PC.i1141
  %1165 = add i64 %1164, 4
  store i64 %1165, i64* %PC.i1141
  %1166 = inttoptr i64 %1163 to i64*
  %1167 = load i64, i64* %1166
  store i64 %1167, i64* %RAX.i1142, align 8
  store %struct.Memory* %loadMem_408098, %struct.Memory** %MEMORY
  %loadMem_40809c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1169 = getelementptr inbounds %struct.GPR, %struct.GPR* %1168, i32 0, i32 33
  %1170 = getelementptr inbounds %struct.Reg, %struct.Reg* %1169, i32 0, i32 0
  %PC.i1139 = bitcast %union.anon* %1170 to i64*
  %1171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1172 = getelementptr inbounds %struct.GPR, %struct.GPR* %1171, i32 0, i32 1
  %1173 = getelementptr inbounds %struct.Reg, %struct.Reg* %1172, i32 0, i32 0
  %RAX.i1140 = bitcast %union.anon* %1173 to i64*
  %1174 = load i64, i64* %RAX.i1140
  %1175 = load i64, i64* %PC.i1139
  %1176 = add i64 %1175, 6
  store i64 %1176, i64* %PC.i1139
  %1177 = inttoptr i64 %1174 to i32*
  store i32 -987654321, i32* %1177
  store %struct.Memory* %loadMem_40809c, %struct.Memory** %MEMORY
  %loadMem_4080a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1179 = getelementptr inbounds %struct.GPR, %struct.GPR* %1178, i32 0, i32 33
  %1180 = getelementptr inbounds %struct.Reg, %struct.Reg* %1179, i32 0, i32 0
  %PC.i1136 = bitcast %union.anon* %1180 to i64*
  %1181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1182 = getelementptr inbounds %struct.GPR, %struct.GPR* %1181, i32 0, i32 1
  %1183 = getelementptr inbounds %struct.Reg, %struct.Reg* %1182, i32 0, i32 0
  %RAX.i1137 = bitcast %union.anon* %1183 to i64*
  %1184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1185 = getelementptr inbounds %struct.GPR, %struct.GPR* %1184, i32 0, i32 15
  %1186 = getelementptr inbounds %struct.Reg, %struct.Reg* %1185, i32 0, i32 0
  %RBP.i1138 = bitcast %union.anon* %1186 to i64*
  %1187 = load i64, i64* %RBP.i1138
  %1188 = sub i64 %1187, 56
  %1189 = load i64, i64* %PC.i1136
  %1190 = add i64 %1189, 4
  store i64 %1190, i64* %PC.i1136
  %1191 = inttoptr i64 %1188 to i64*
  %1192 = load i64, i64* %1191
  store i64 %1192, i64* %RAX.i1137, align 8
  store %struct.Memory* %loadMem_4080a2, %struct.Memory** %MEMORY
  %loadMem_4080a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1194 = getelementptr inbounds %struct.GPR, %struct.GPR* %1193, i32 0, i32 33
  %1195 = getelementptr inbounds %struct.Reg, %struct.Reg* %1194, i32 0, i32 0
  %PC.i1133 = bitcast %union.anon* %1195 to i64*
  %1196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1197 = getelementptr inbounds %struct.GPR, %struct.GPR* %1196, i32 0, i32 5
  %1198 = getelementptr inbounds %struct.Reg, %struct.Reg* %1197, i32 0, i32 0
  %RCX.i1134 = bitcast %union.anon* %1198 to i64*
  %1199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1200 = getelementptr inbounds %struct.GPR, %struct.GPR* %1199, i32 0, i32 15
  %1201 = getelementptr inbounds %struct.Reg, %struct.Reg* %1200, i32 0, i32 0
  %RBP.i1135 = bitcast %union.anon* %1201 to i64*
  %1202 = load i64, i64* %RBP.i1135
  %1203 = sub i64 %1202, 76
  %1204 = load i64, i64* %PC.i1133
  %1205 = add i64 %1204, 4
  store i64 %1205, i64* %PC.i1133
  %1206 = inttoptr i64 %1203 to i32*
  %1207 = load i32, i32* %1206
  %1208 = sext i32 %1207 to i64
  store i64 %1208, i64* %RCX.i1134, align 8
  store %struct.Memory* %loadMem_4080a6, %struct.Memory** %MEMORY
  %loadMem_4080aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %1209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1210 = getelementptr inbounds %struct.GPR, %struct.GPR* %1209, i32 0, i32 33
  %1211 = getelementptr inbounds %struct.Reg, %struct.Reg* %1210, i32 0, i32 0
  %PC.i1130 = bitcast %union.anon* %1211 to i64*
  %1212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1213 = getelementptr inbounds %struct.GPR, %struct.GPR* %1212, i32 0, i32 1
  %1214 = getelementptr inbounds %struct.Reg, %struct.Reg* %1213, i32 0, i32 0
  %RAX.i1131 = bitcast %union.anon* %1214 to i64*
  %1215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1216 = getelementptr inbounds %struct.GPR, %struct.GPR* %1215, i32 0, i32 5
  %1217 = getelementptr inbounds %struct.Reg, %struct.Reg* %1216, i32 0, i32 0
  %RCX.i1132 = bitcast %union.anon* %1217 to i64*
  %1218 = load i64, i64* %RAX.i1131
  %1219 = load i64, i64* %RCX.i1132
  %1220 = mul i64 %1219, 8
  %1221 = add i64 %1220, %1218
  %1222 = load i64, i64* %PC.i1130
  %1223 = add i64 %1222, 4
  store i64 %1223, i64* %PC.i1130
  %1224 = inttoptr i64 %1221 to i64*
  %1225 = load i64, i64* %1224
  store i64 %1225, i64* %RAX.i1131, align 8
  store %struct.Memory* %loadMem_4080aa, %struct.Memory** %MEMORY
  %loadMem_4080ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %1226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1227 = getelementptr inbounds %struct.GPR, %struct.GPR* %1226, i32 0, i32 33
  %1228 = getelementptr inbounds %struct.Reg, %struct.Reg* %1227, i32 0, i32 0
  %PC.i1128 = bitcast %union.anon* %1228 to i64*
  %1229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1230 = getelementptr inbounds %struct.GPR, %struct.GPR* %1229, i32 0, i32 1
  %1231 = getelementptr inbounds %struct.Reg, %struct.Reg* %1230, i32 0, i32 0
  %RAX.i1129 = bitcast %union.anon* %1231 to i64*
  %1232 = load i64, i64* %RAX.i1129
  %1233 = load i64, i64* %PC.i1128
  %1234 = add i64 %1233, 6
  store i64 %1234, i64* %PC.i1128
  %1235 = inttoptr i64 %1232 to i32*
  store i32 -987654321, i32* %1235
  store %struct.Memory* %loadMem_4080ae, %struct.Memory** %MEMORY
  %loadMem_4080b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1237 = getelementptr inbounds %struct.GPR, %struct.GPR* %1236, i32 0, i32 33
  %1238 = getelementptr inbounds %struct.Reg, %struct.Reg* %1237, i32 0, i32 0
  %PC.i1126 = bitcast %union.anon* %1238 to i64*
  %1239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1240 = getelementptr inbounds %struct.GPR, %struct.GPR* %1239, i32 0, i32 15
  %1241 = getelementptr inbounds %struct.Reg, %struct.Reg* %1240, i32 0, i32 0
  %RBP.i1127 = bitcast %union.anon* %1241 to i64*
  %1242 = load i64, i64* %RBP.i1127
  %1243 = sub i64 %1242, 80
  %1244 = load i64, i64* %PC.i1126
  %1245 = add i64 %1244, 7
  store i64 %1245, i64* %PC.i1126
  %1246 = inttoptr i64 %1243 to i32*
  store i32 1, i32* %1246
  store %struct.Memory* %loadMem_4080b4, %struct.Memory** %MEMORY
  br label %block_.L_4080bb

block_.L_4080bb:                                  ; preds = %block_4080ce, %block_40807e
  %loadMem_4080bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1248 = getelementptr inbounds %struct.GPR, %struct.GPR* %1247, i32 0, i32 33
  %1249 = getelementptr inbounds %struct.Reg, %struct.Reg* %1248, i32 0, i32 0
  %PC.i1123 = bitcast %union.anon* %1249 to i64*
  %1250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1251 = getelementptr inbounds %struct.GPR, %struct.GPR* %1250, i32 0, i32 1
  %1252 = getelementptr inbounds %struct.Reg, %struct.Reg* %1251, i32 0, i32 0
  %RAX.i1124 = bitcast %union.anon* %1252 to i64*
  %1253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1254 = getelementptr inbounds %struct.GPR, %struct.GPR* %1253, i32 0, i32 15
  %1255 = getelementptr inbounds %struct.Reg, %struct.Reg* %1254, i32 0, i32 0
  %RBP.i1125 = bitcast %union.anon* %1255 to i64*
  %1256 = load i64, i64* %RBP.i1125
  %1257 = sub i64 %1256, 80
  %1258 = load i64, i64* %PC.i1123
  %1259 = add i64 %1258, 3
  store i64 %1259, i64* %PC.i1123
  %1260 = inttoptr i64 %1257 to i32*
  %1261 = load i32, i32* %1260
  %1262 = zext i32 %1261 to i64
  store i64 %1262, i64* %RAX.i1124, align 8
  store %struct.Memory* %loadMem_4080bb, %struct.Memory** %MEMORY
  %loadMem_4080be = load %struct.Memory*, %struct.Memory** %MEMORY
  %1263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1264 = getelementptr inbounds %struct.GPR, %struct.GPR* %1263, i32 0, i32 33
  %1265 = getelementptr inbounds %struct.Reg, %struct.Reg* %1264, i32 0, i32 0
  %PC.i1120 = bitcast %union.anon* %1265 to i64*
  %1266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1267 = getelementptr inbounds %struct.GPR, %struct.GPR* %1266, i32 0, i32 5
  %1268 = getelementptr inbounds %struct.Reg, %struct.Reg* %1267, i32 0, i32 0
  %RCX.i1121 = bitcast %union.anon* %1268 to i64*
  %1269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1270 = getelementptr inbounds %struct.GPR, %struct.GPR* %1269, i32 0, i32 15
  %1271 = getelementptr inbounds %struct.Reg, %struct.Reg* %1270, i32 0, i32 0
  %RBP.i1122 = bitcast %union.anon* %1271 to i64*
  %1272 = load i64, i64* %RBP.i1122
  %1273 = sub i64 %1272, 24
  %1274 = load i64, i64* %PC.i1120
  %1275 = add i64 %1274, 4
  store i64 %1275, i64* %PC.i1120
  %1276 = inttoptr i64 %1273 to i64*
  %1277 = load i64, i64* %1276
  store i64 %1277, i64* %RCX.i1121, align 8
  store %struct.Memory* %loadMem_4080be, %struct.Memory** %MEMORY
  %loadMem_4080c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1279 = getelementptr inbounds %struct.GPR, %struct.GPR* %1278, i32 0, i32 33
  %1280 = getelementptr inbounds %struct.Reg, %struct.Reg* %1279, i32 0, i32 0
  %PC.i1117 = bitcast %union.anon* %1280 to i64*
  %1281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1282 = getelementptr inbounds %struct.GPR, %struct.GPR* %1281, i32 0, i32 1
  %1283 = getelementptr inbounds %struct.Reg, %struct.Reg* %1282, i32 0, i32 0
  %EAX.i1118 = bitcast %union.anon* %1283 to i32*
  %1284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1285 = getelementptr inbounds %struct.GPR, %struct.GPR* %1284, i32 0, i32 5
  %1286 = getelementptr inbounds %struct.Reg, %struct.Reg* %1285, i32 0, i32 0
  %RCX.i1119 = bitcast %union.anon* %1286 to i64*
  %1287 = load i32, i32* %EAX.i1118
  %1288 = zext i32 %1287 to i64
  %1289 = load i64, i64* %RCX.i1119
  %1290 = add i64 %1289, 136
  %1291 = load i64, i64* %PC.i1117
  %1292 = add i64 %1291, 6
  store i64 %1292, i64* %PC.i1117
  %1293 = inttoptr i64 %1290 to i32*
  %1294 = load i32, i32* %1293
  %1295 = sub i32 %1287, %1294
  %1296 = icmp ult i32 %1287, %1294
  %1297 = zext i1 %1296 to i8
  %1298 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1297, i8* %1298, align 1
  %1299 = and i32 %1295, 255
  %1300 = call i32 @llvm.ctpop.i32(i32 %1299)
  %1301 = trunc i32 %1300 to i8
  %1302 = and i8 %1301, 1
  %1303 = xor i8 %1302, 1
  %1304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1303, i8* %1304, align 1
  %1305 = xor i32 %1294, %1287
  %1306 = xor i32 %1305, %1295
  %1307 = lshr i32 %1306, 4
  %1308 = trunc i32 %1307 to i8
  %1309 = and i8 %1308, 1
  %1310 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1309, i8* %1310, align 1
  %1311 = icmp eq i32 %1295, 0
  %1312 = zext i1 %1311 to i8
  %1313 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1312, i8* %1313, align 1
  %1314 = lshr i32 %1295, 31
  %1315 = trunc i32 %1314 to i8
  %1316 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1315, i8* %1316, align 1
  %1317 = lshr i32 %1287, 31
  %1318 = lshr i32 %1294, 31
  %1319 = xor i32 %1318, %1317
  %1320 = xor i32 %1314, %1317
  %1321 = add i32 %1320, %1319
  %1322 = icmp eq i32 %1321, 2
  %1323 = zext i1 %1322 to i8
  %1324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1323, i8* %1324, align 1
  store %struct.Memory* %loadMem_4080c2, %struct.Memory** %MEMORY
  %loadMem_4080c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1326 = getelementptr inbounds %struct.GPR, %struct.GPR* %1325, i32 0, i32 33
  %1327 = getelementptr inbounds %struct.Reg, %struct.Reg* %1326, i32 0, i32 0
  %PC.i1116 = bitcast %union.anon* %1327 to i64*
  %1328 = load i64, i64* %PC.i1116
  %1329 = add i64 %1328, 660
  %1330 = load i64, i64* %PC.i1116
  %1331 = add i64 %1330, 6
  %1332 = load i64, i64* %PC.i1116
  %1333 = add i64 %1332, 6
  store i64 %1333, i64* %PC.i1116
  %1334 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1335 = load i8, i8* %1334, align 1
  %1336 = icmp ne i8 %1335, 0
  %1337 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1338 = load i8, i8* %1337, align 1
  %1339 = icmp ne i8 %1338, 0
  %1340 = xor i1 %1336, %1339
  %1341 = xor i1 %1340, true
  %1342 = zext i1 %1341 to i8
  store i8 %1342, i8* %BRANCH_TAKEN, align 1
  %1343 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1344 = select i1 %1340, i64 %1331, i64 %1329
  store i64 %1344, i64* %1343, align 8
  store %struct.Memory* %loadMem_4080c8, %struct.Memory** %MEMORY
  %loadBr_4080c8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4080c8 = icmp eq i8 %loadBr_4080c8, 1
  br i1 %cmpBr_4080c8, label %block_.L_40835c, label %block_4080ce

block_4080ce:                                     ; preds = %block_.L_4080bb
  %loadMem_4080ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %1345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1346 = getelementptr inbounds %struct.GPR, %struct.GPR* %1345, i32 0, i32 33
  %1347 = getelementptr inbounds %struct.Reg, %struct.Reg* %1346, i32 0, i32 0
  %PC.i1113 = bitcast %union.anon* %1347 to i64*
  %1348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1349 = getelementptr inbounds %struct.GPR, %struct.GPR* %1348, i32 0, i32 1
  %1350 = getelementptr inbounds %struct.Reg, %struct.Reg* %1349, i32 0, i32 0
  %RAX.i1114 = bitcast %union.anon* %1350 to i64*
  %1351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1352 = getelementptr inbounds %struct.GPR, %struct.GPR* %1351, i32 0, i32 15
  %1353 = getelementptr inbounds %struct.Reg, %struct.Reg* %1352, i32 0, i32 0
  %RBP.i1115 = bitcast %union.anon* %1353 to i64*
  %1354 = load i64, i64* %RBP.i1115
  %1355 = sub i64 %1354, 56
  %1356 = load i64, i64* %PC.i1113
  %1357 = add i64 %1356, 4
  store i64 %1357, i64* %PC.i1113
  %1358 = inttoptr i64 %1355 to i64*
  %1359 = load i64, i64* %1358
  store i64 %1359, i64* %RAX.i1114, align 8
  store %struct.Memory* %loadMem_4080ce, %struct.Memory** %MEMORY
  %loadMem_4080d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1361 = getelementptr inbounds %struct.GPR, %struct.GPR* %1360, i32 0, i32 33
  %1362 = getelementptr inbounds %struct.Reg, %struct.Reg* %1361, i32 0, i32 0
  %PC.i1110 = bitcast %union.anon* %1362 to i64*
  %1363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1364 = getelementptr inbounds %struct.GPR, %struct.GPR* %1363, i32 0, i32 5
  %1365 = getelementptr inbounds %struct.Reg, %struct.Reg* %1364, i32 0, i32 0
  %RCX.i1111 = bitcast %union.anon* %1365 to i64*
  %1366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1367 = getelementptr inbounds %struct.GPR, %struct.GPR* %1366, i32 0, i32 15
  %1368 = getelementptr inbounds %struct.Reg, %struct.Reg* %1367, i32 0, i32 0
  %RBP.i1112 = bitcast %union.anon* %1368 to i64*
  %1369 = load i64, i64* %RBP.i1112
  %1370 = sub i64 %1369, 76
  %1371 = load i64, i64* %PC.i1110
  %1372 = add i64 %1371, 3
  store i64 %1372, i64* %PC.i1110
  %1373 = inttoptr i64 %1370 to i32*
  %1374 = load i32, i32* %1373
  %1375 = zext i32 %1374 to i64
  store i64 %1375, i64* %RCX.i1111, align 8
  store %struct.Memory* %loadMem_4080d2, %struct.Memory** %MEMORY
  %loadMem_4080d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1377 = getelementptr inbounds %struct.GPR, %struct.GPR* %1376, i32 0, i32 33
  %1378 = getelementptr inbounds %struct.Reg, %struct.Reg* %1377, i32 0, i32 0
  %PC.i1108 = bitcast %union.anon* %1378 to i64*
  %1379 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1380 = getelementptr inbounds %struct.GPR, %struct.GPR* %1379, i32 0, i32 5
  %1381 = getelementptr inbounds %struct.Reg, %struct.Reg* %1380, i32 0, i32 0
  %RCX.i1109 = bitcast %union.anon* %1381 to i64*
  %1382 = load i64, i64* %RCX.i1109
  %1383 = load i64, i64* %PC.i1108
  %1384 = add i64 %1383, 3
  store i64 %1384, i64* %PC.i1108
  %1385 = trunc i64 %1382 to i32
  %1386 = sub i32 %1385, 1
  %1387 = zext i32 %1386 to i64
  store i64 %1387, i64* %RCX.i1109, align 8
  %1388 = icmp ult i32 %1385, 1
  %1389 = zext i1 %1388 to i8
  %1390 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1389, i8* %1390, align 1
  %1391 = and i32 %1386, 255
  %1392 = call i32 @llvm.ctpop.i32(i32 %1391)
  %1393 = trunc i32 %1392 to i8
  %1394 = and i8 %1393, 1
  %1395 = xor i8 %1394, 1
  %1396 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1395, i8* %1396, align 1
  %1397 = xor i64 1, %1382
  %1398 = trunc i64 %1397 to i32
  %1399 = xor i32 %1398, %1386
  %1400 = lshr i32 %1399, 4
  %1401 = trunc i32 %1400 to i8
  %1402 = and i8 %1401, 1
  %1403 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1402, i8* %1403, align 1
  %1404 = icmp eq i32 %1386, 0
  %1405 = zext i1 %1404 to i8
  %1406 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1405, i8* %1406, align 1
  %1407 = lshr i32 %1386, 31
  %1408 = trunc i32 %1407 to i8
  %1409 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1408, i8* %1409, align 1
  %1410 = lshr i32 %1385, 31
  %1411 = xor i32 %1407, %1410
  %1412 = add i32 %1411, %1410
  %1413 = icmp eq i32 %1412, 2
  %1414 = zext i1 %1413 to i8
  %1415 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1414, i8* %1415, align 1
  store %struct.Memory* %loadMem_4080d5, %struct.Memory** %MEMORY
  %loadMem_4080d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1416 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1417 = getelementptr inbounds %struct.GPR, %struct.GPR* %1416, i32 0, i32 33
  %1418 = getelementptr inbounds %struct.Reg, %struct.Reg* %1417, i32 0, i32 0
  %PC.i1105 = bitcast %union.anon* %1418 to i64*
  %1419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1420 = getelementptr inbounds %struct.GPR, %struct.GPR* %1419, i32 0, i32 5
  %1421 = getelementptr inbounds %struct.Reg, %struct.Reg* %1420, i32 0, i32 0
  %ECX.i1106 = bitcast %union.anon* %1421 to i32*
  %1422 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1423 = getelementptr inbounds %struct.GPR, %struct.GPR* %1422, i32 0, i32 7
  %1424 = getelementptr inbounds %struct.Reg, %struct.Reg* %1423, i32 0, i32 0
  %RDX.i1107 = bitcast %union.anon* %1424 to i64*
  %1425 = load i32, i32* %ECX.i1106
  %1426 = zext i32 %1425 to i64
  %1427 = load i64, i64* %PC.i1105
  %1428 = add i64 %1427, 3
  store i64 %1428, i64* %PC.i1105
  %1429 = shl i64 %1426, 32
  %1430 = ashr exact i64 %1429, 32
  store i64 %1430, i64* %RDX.i1107, align 8
  store %struct.Memory* %loadMem_4080d8, %struct.Memory** %MEMORY
  %loadMem_4080db = load %struct.Memory*, %struct.Memory** %MEMORY
  %1431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1432 = getelementptr inbounds %struct.GPR, %struct.GPR* %1431, i32 0, i32 33
  %1433 = getelementptr inbounds %struct.Reg, %struct.Reg* %1432, i32 0, i32 0
  %PC.i1102 = bitcast %union.anon* %1433 to i64*
  %1434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1435 = getelementptr inbounds %struct.GPR, %struct.GPR* %1434, i32 0, i32 1
  %1436 = getelementptr inbounds %struct.Reg, %struct.Reg* %1435, i32 0, i32 0
  %RAX.i1103 = bitcast %union.anon* %1436 to i64*
  %1437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1438 = getelementptr inbounds %struct.GPR, %struct.GPR* %1437, i32 0, i32 7
  %1439 = getelementptr inbounds %struct.Reg, %struct.Reg* %1438, i32 0, i32 0
  %RDX.i1104 = bitcast %union.anon* %1439 to i64*
  %1440 = load i64, i64* %RAX.i1103
  %1441 = load i64, i64* %RDX.i1104
  %1442 = mul i64 %1441, 8
  %1443 = add i64 %1442, %1440
  %1444 = load i64, i64* %PC.i1102
  %1445 = add i64 %1444, 4
  store i64 %1445, i64* %PC.i1102
  %1446 = inttoptr i64 %1443 to i64*
  %1447 = load i64, i64* %1446
  store i64 %1447, i64* %RAX.i1103, align 8
  store %struct.Memory* %loadMem_4080db, %struct.Memory** %MEMORY
  %loadMem_4080df = load %struct.Memory*, %struct.Memory** %MEMORY
  %1448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1449 = getelementptr inbounds %struct.GPR, %struct.GPR* %1448, i32 0, i32 33
  %1450 = getelementptr inbounds %struct.Reg, %struct.Reg* %1449, i32 0, i32 0
  %PC.i1099 = bitcast %union.anon* %1450 to i64*
  %1451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1452 = getelementptr inbounds %struct.GPR, %struct.GPR* %1451, i32 0, i32 5
  %1453 = getelementptr inbounds %struct.Reg, %struct.Reg* %1452, i32 0, i32 0
  %RCX.i1100 = bitcast %union.anon* %1453 to i64*
  %1454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1455 = getelementptr inbounds %struct.GPR, %struct.GPR* %1454, i32 0, i32 15
  %1456 = getelementptr inbounds %struct.Reg, %struct.Reg* %1455, i32 0, i32 0
  %RBP.i1101 = bitcast %union.anon* %1456 to i64*
  %1457 = load i64, i64* %RBP.i1101
  %1458 = sub i64 %1457, 80
  %1459 = load i64, i64* %PC.i1099
  %1460 = add i64 %1459, 3
  store i64 %1460, i64* %PC.i1099
  %1461 = inttoptr i64 %1458 to i32*
  %1462 = load i32, i32* %1461
  %1463 = zext i32 %1462 to i64
  store i64 %1463, i64* %RCX.i1100, align 8
  store %struct.Memory* %loadMem_4080df, %struct.Memory** %MEMORY
  %loadMem_4080e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1465 = getelementptr inbounds %struct.GPR, %struct.GPR* %1464, i32 0, i32 33
  %1466 = getelementptr inbounds %struct.Reg, %struct.Reg* %1465, i32 0, i32 0
  %PC.i1097 = bitcast %union.anon* %1466 to i64*
  %1467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1468 = getelementptr inbounds %struct.GPR, %struct.GPR* %1467, i32 0, i32 5
  %1469 = getelementptr inbounds %struct.Reg, %struct.Reg* %1468, i32 0, i32 0
  %RCX.i1098 = bitcast %union.anon* %1469 to i64*
  %1470 = load i64, i64* %RCX.i1098
  %1471 = load i64, i64* %PC.i1097
  %1472 = add i64 %1471, 3
  store i64 %1472, i64* %PC.i1097
  %1473 = trunc i64 %1470 to i32
  %1474 = sub i32 %1473, 1
  %1475 = zext i32 %1474 to i64
  store i64 %1475, i64* %RCX.i1098, align 8
  %1476 = icmp ult i32 %1473, 1
  %1477 = zext i1 %1476 to i8
  %1478 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1477, i8* %1478, align 1
  %1479 = and i32 %1474, 255
  %1480 = call i32 @llvm.ctpop.i32(i32 %1479)
  %1481 = trunc i32 %1480 to i8
  %1482 = and i8 %1481, 1
  %1483 = xor i8 %1482, 1
  %1484 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1483, i8* %1484, align 1
  %1485 = xor i64 1, %1470
  %1486 = trunc i64 %1485 to i32
  %1487 = xor i32 %1486, %1474
  %1488 = lshr i32 %1487, 4
  %1489 = trunc i32 %1488 to i8
  %1490 = and i8 %1489, 1
  %1491 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1490, i8* %1491, align 1
  %1492 = icmp eq i32 %1474, 0
  %1493 = zext i1 %1492 to i8
  %1494 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1493, i8* %1494, align 1
  %1495 = lshr i32 %1474, 31
  %1496 = trunc i32 %1495 to i8
  %1497 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1496, i8* %1497, align 1
  %1498 = lshr i32 %1473, 31
  %1499 = xor i32 %1495, %1498
  %1500 = add i32 %1499, %1498
  %1501 = icmp eq i32 %1500, 2
  %1502 = zext i1 %1501 to i8
  %1503 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1502, i8* %1503, align 1
  store %struct.Memory* %loadMem_4080e2, %struct.Memory** %MEMORY
  %loadMem_4080e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1505 = getelementptr inbounds %struct.GPR, %struct.GPR* %1504, i32 0, i32 33
  %1506 = getelementptr inbounds %struct.Reg, %struct.Reg* %1505, i32 0, i32 0
  %PC.i1094 = bitcast %union.anon* %1506 to i64*
  %1507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1508 = getelementptr inbounds %struct.GPR, %struct.GPR* %1507, i32 0, i32 5
  %1509 = getelementptr inbounds %struct.Reg, %struct.Reg* %1508, i32 0, i32 0
  %ECX.i1095 = bitcast %union.anon* %1509 to i32*
  %1510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1511 = getelementptr inbounds %struct.GPR, %struct.GPR* %1510, i32 0, i32 7
  %1512 = getelementptr inbounds %struct.Reg, %struct.Reg* %1511, i32 0, i32 0
  %RDX.i1096 = bitcast %union.anon* %1512 to i64*
  %1513 = load i32, i32* %ECX.i1095
  %1514 = zext i32 %1513 to i64
  %1515 = load i64, i64* %PC.i1094
  %1516 = add i64 %1515, 3
  store i64 %1516, i64* %PC.i1094
  %1517 = shl i64 %1514, 32
  %1518 = ashr exact i64 %1517, 32
  store i64 %1518, i64* %RDX.i1096, align 8
  store %struct.Memory* %loadMem_4080e5, %struct.Memory** %MEMORY
  %loadMem_4080e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1520 = getelementptr inbounds %struct.GPR, %struct.GPR* %1519, i32 0, i32 33
  %1521 = getelementptr inbounds %struct.Reg, %struct.Reg* %1520, i32 0, i32 0
  %PC.i1090 = bitcast %union.anon* %1521 to i64*
  %1522 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1523 = getelementptr inbounds %struct.GPR, %struct.GPR* %1522, i32 0, i32 1
  %1524 = getelementptr inbounds %struct.Reg, %struct.Reg* %1523, i32 0, i32 0
  %RAX.i1091 = bitcast %union.anon* %1524 to i64*
  %1525 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1526 = getelementptr inbounds %struct.GPR, %struct.GPR* %1525, i32 0, i32 5
  %1527 = getelementptr inbounds %struct.Reg, %struct.Reg* %1526, i32 0, i32 0
  %RCX.i1092 = bitcast %union.anon* %1527 to i64*
  %1528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1529 = getelementptr inbounds %struct.GPR, %struct.GPR* %1528, i32 0, i32 7
  %1530 = getelementptr inbounds %struct.Reg, %struct.Reg* %1529, i32 0, i32 0
  %RDX.i1093 = bitcast %union.anon* %1530 to i64*
  %1531 = load i64, i64* %RAX.i1091
  %1532 = load i64, i64* %RDX.i1093
  %1533 = mul i64 %1532, 4
  %1534 = add i64 %1533, %1531
  %1535 = load i64, i64* %PC.i1090
  %1536 = add i64 %1535, 3
  store i64 %1536, i64* %PC.i1090
  %1537 = inttoptr i64 %1534 to i32*
  %1538 = load i32, i32* %1537
  %1539 = zext i32 %1538 to i64
  store i64 %1539, i64* %RCX.i1092, align 8
  store %struct.Memory* %loadMem_4080e8, %struct.Memory** %MEMORY
  %loadMem_4080eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1541 = getelementptr inbounds %struct.GPR, %struct.GPR* %1540, i32 0, i32 33
  %1542 = getelementptr inbounds %struct.Reg, %struct.Reg* %1541, i32 0, i32 0
  %PC.i1087 = bitcast %union.anon* %1542 to i64*
  %1543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1544 = getelementptr inbounds %struct.GPR, %struct.GPR* %1543, i32 0, i32 1
  %1545 = getelementptr inbounds %struct.Reg, %struct.Reg* %1544, i32 0, i32 0
  %RAX.i1088 = bitcast %union.anon* %1545 to i64*
  %1546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1547 = getelementptr inbounds %struct.GPR, %struct.GPR* %1546, i32 0, i32 15
  %1548 = getelementptr inbounds %struct.Reg, %struct.Reg* %1547, i32 0, i32 0
  %RBP.i1089 = bitcast %union.anon* %1548 to i64*
  %1549 = load i64, i64* %RBP.i1089
  %1550 = sub i64 %1549, 24
  %1551 = load i64, i64* %PC.i1087
  %1552 = add i64 %1551, 4
  store i64 %1552, i64* %PC.i1087
  %1553 = inttoptr i64 %1550 to i64*
  %1554 = load i64, i64* %1553
  store i64 %1554, i64* %RAX.i1088, align 8
  store %struct.Memory* %loadMem_4080eb, %struct.Memory** %MEMORY
  %loadMem_4080ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %1555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1556 = getelementptr inbounds %struct.GPR, %struct.GPR* %1555, i32 0, i32 33
  %1557 = getelementptr inbounds %struct.Reg, %struct.Reg* %1556, i32 0, i32 0
  %PC.i1085 = bitcast %union.anon* %1557 to i64*
  %1558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1559 = getelementptr inbounds %struct.GPR, %struct.GPR* %1558, i32 0, i32 1
  %1560 = getelementptr inbounds %struct.Reg, %struct.Reg* %1559, i32 0, i32 0
  %RAX.i1086 = bitcast %union.anon* %1560 to i64*
  %1561 = load i64, i64* %RAX.i1086
  %1562 = add i64 %1561, 312
  %1563 = load i64, i64* %PC.i1085
  %1564 = add i64 %1563, 7
  store i64 %1564, i64* %PC.i1085
  %1565 = inttoptr i64 %1562 to i64*
  %1566 = load i64, i64* %1565
  store i64 %1566, i64* %RAX.i1086, align 8
  store %struct.Memory* %loadMem_4080ef, %struct.Memory** %MEMORY
  %loadMem_4080f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1568 = getelementptr inbounds %struct.GPR, %struct.GPR* %1567, i32 0, i32 33
  %1569 = getelementptr inbounds %struct.Reg, %struct.Reg* %1568, i32 0, i32 0
  %PC.i1083 = bitcast %union.anon* %1569 to i64*
  %1570 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1571 = getelementptr inbounds %struct.GPR, %struct.GPR* %1570, i32 0, i32 1
  %1572 = getelementptr inbounds %struct.Reg, %struct.Reg* %1571, i32 0, i32 0
  %RAX.i1084 = bitcast %union.anon* %1572 to i64*
  %1573 = load i64, i64* %RAX.i1084
  %1574 = load i64, i64* %PC.i1083
  %1575 = add i64 %1574, 3
  store i64 %1575, i64* %PC.i1083
  %1576 = inttoptr i64 %1573 to i64*
  %1577 = load i64, i64* %1576
  store i64 %1577, i64* %RAX.i1084, align 8
  store %struct.Memory* %loadMem_4080f6, %struct.Memory** %MEMORY
  %loadMem_4080f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1579 = getelementptr inbounds %struct.GPR, %struct.GPR* %1578, i32 0, i32 33
  %1580 = getelementptr inbounds %struct.Reg, %struct.Reg* %1579, i32 0, i32 0
  %PC.i1080 = bitcast %union.anon* %1580 to i64*
  %1581 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1582 = getelementptr inbounds %struct.GPR, %struct.GPR* %1581, i32 0, i32 9
  %1583 = getelementptr inbounds %struct.Reg, %struct.Reg* %1582, i32 0, i32 0
  %RSI.i1081 = bitcast %union.anon* %1583 to i64*
  %1584 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1585 = getelementptr inbounds %struct.GPR, %struct.GPR* %1584, i32 0, i32 15
  %1586 = getelementptr inbounds %struct.Reg, %struct.Reg* %1585, i32 0, i32 0
  %RBP.i1082 = bitcast %union.anon* %1586 to i64*
  %1587 = load i64, i64* %RBP.i1082
  %1588 = sub i64 %1587, 80
  %1589 = load i64, i64* %PC.i1080
  %1590 = add i64 %1589, 3
  store i64 %1590, i64* %PC.i1080
  %1591 = inttoptr i64 %1588 to i32*
  %1592 = load i32, i32* %1591
  %1593 = zext i32 %1592 to i64
  store i64 %1593, i64* %RSI.i1081, align 8
  store %struct.Memory* %loadMem_4080f9, %struct.Memory** %MEMORY
  %loadMem_4080fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1595 = getelementptr inbounds %struct.GPR, %struct.GPR* %1594, i32 0, i32 33
  %1596 = getelementptr inbounds %struct.Reg, %struct.Reg* %1595, i32 0, i32 0
  %PC.i1078 = bitcast %union.anon* %1596 to i64*
  %1597 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1598 = getelementptr inbounds %struct.GPR, %struct.GPR* %1597, i32 0, i32 9
  %1599 = getelementptr inbounds %struct.Reg, %struct.Reg* %1598, i32 0, i32 0
  %RSI.i1079 = bitcast %union.anon* %1599 to i64*
  %1600 = load i64, i64* %RSI.i1079
  %1601 = load i64, i64* %PC.i1078
  %1602 = add i64 %1601, 3
  store i64 %1602, i64* %PC.i1078
  %1603 = trunc i64 %1600 to i32
  %1604 = sub i32 %1603, 1
  %1605 = zext i32 %1604 to i64
  store i64 %1605, i64* %RSI.i1079, align 8
  %1606 = icmp ult i32 %1603, 1
  %1607 = zext i1 %1606 to i8
  %1608 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1607, i8* %1608, align 1
  %1609 = and i32 %1604, 255
  %1610 = call i32 @llvm.ctpop.i32(i32 %1609)
  %1611 = trunc i32 %1610 to i8
  %1612 = and i8 %1611, 1
  %1613 = xor i8 %1612, 1
  %1614 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1613, i8* %1614, align 1
  %1615 = xor i64 1, %1600
  %1616 = trunc i64 %1615 to i32
  %1617 = xor i32 %1616, %1604
  %1618 = lshr i32 %1617, 4
  %1619 = trunc i32 %1618 to i8
  %1620 = and i8 %1619, 1
  %1621 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1620, i8* %1621, align 1
  %1622 = icmp eq i32 %1604, 0
  %1623 = zext i1 %1622 to i8
  %1624 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1623, i8* %1624, align 1
  %1625 = lshr i32 %1604, 31
  %1626 = trunc i32 %1625 to i8
  %1627 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1626, i8* %1627, align 1
  %1628 = lshr i32 %1603, 31
  %1629 = xor i32 %1625, %1628
  %1630 = add i32 %1629, %1628
  %1631 = icmp eq i32 %1630, 2
  %1632 = zext i1 %1631 to i8
  %1633 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1632, i8* %1633, align 1
  store %struct.Memory* %loadMem_4080fc, %struct.Memory** %MEMORY
  %loadMem_4080ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %1634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1635 = getelementptr inbounds %struct.GPR, %struct.GPR* %1634, i32 0, i32 33
  %1636 = getelementptr inbounds %struct.Reg, %struct.Reg* %1635, i32 0, i32 0
  %PC.i1075 = bitcast %union.anon* %1636 to i64*
  %1637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1638 = getelementptr inbounds %struct.GPR, %struct.GPR* %1637, i32 0, i32 9
  %1639 = getelementptr inbounds %struct.Reg, %struct.Reg* %1638, i32 0, i32 0
  %ESI.i1076 = bitcast %union.anon* %1639 to i32*
  %1640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1641 = getelementptr inbounds %struct.GPR, %struct.GPR* %1640, i32 0, i32 7
  %1642 = getelementptr inbounds %struct.Reg, %struct.Reg* %1641, i32 0, i32 0
  %RDX.i1077 = bitcast %union.anon* %1642 to i64*
  %1643 = load i32, i32* %ESI.i1076
  %1644 = zext i32 %1643 to i64
  %1645 = load i64, i64* %PC.i1075
  %1646 = add i64 %1645, 3
  store i64 %1646, i64* %PC.i1075
  %1647 = shl i64 %1644, 32
  %1648 = ashr exact i64 %1647, 32
  store i64 %1648, i64* %RDX.i1077, align 8
  store %struct.Memory* %loadMem_4080ff, %struct.Memory** %MEMORY
  %loadMem_408102 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1650 = getelementptr inbounds %struct.GPR, %struct.GPR* %1649, i32 0, i32 33
  %1651 = getelementptr inbounds %struct.Reg, %struct.Reg* %1650, i32 0, i32 0
  %PC.i1071 = bitcast %union.anon* %1651 to i64*
  %1652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1653 = getelementptr inbounds %struct.GPR, %struct.GPR* %1652, i32 0, i32 1
  %1654 = getelementptr inbounds %struct.Reg, %struct.Reg* %1653, i32 0, i32 0
  %RAX.i1072 = bitcast %union.anon* %1654 to i64*
  %1655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1656 = getelementptr inbounds %struct.GPR, %struct.GPR* %1655, i32 0, i32 5
  %1657 = getelementptr inbounds %struct.Reg, %struct.Reg* %1656, i32 0, i32 0
  %RCX.i1073 = bitcast %union.anon* %1657 to i64*
  %1658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1659 = getelementptr inbounds %struct.GPR, %struct.GPR* %1658, i32 0, i32 7
  %1660 = getelementptr inbounds %struct.Reg, %struct.Reg* %1659, i32 0, i32 0
  %RDX.i1074 = bitcast %union.anon* %1660 to i64*
  %1661 = load i64, i64* %RCX.i1073
  %1662 = load i64, i64* %RAX.i1072
  %1663 = load i64, i64* %RDX.i1074
  %1664 = mul i64 %1663, 4
  %1665 = add i64 %1664, %1662
  %1666 = load i64, i64* %PC.i1071
  %1667 = add i64 %1666, 3
  store i64 %1667, i64* %PC.i1071
  %1668 = trunc i64 %1661 to i32
  %1669 = inttoptr i64 %1665 to i32*
  %1670 = load i32, i32* %1669
  %1671 = add i32 %1670, %1668
  %1672 = zext i32 %1671 to i64
  store i64 %1672, i64* %RCX.i1073, align 8
  %1673 = icmp ult i32 %1671, %1668
  %1674 = icmp ult i32 %1671, %1670
  %1675 = or i1 %1673, %1674
  %1676 = zext i1 %1675 to i8
  %1677 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1676, i8* %1677, align 1
  %1678 = and i32 %1671, 255
  %1679 = call i32 @llvm.ctpop.i32(i32 %1678)
  %1680 = trunc i32 %1679 to i8
  %1681 = and i8 %1680, 1
  %1682 = xor i8 %1681, 1
  %1683 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1682, i8* %1683, align 1
  %1684 = xor i32 %1670, %1668
  %1685 = xor i32 %1684, %1671
  %1686 = lshr i32 %1685, 4
  %1687 = trunc i32 %1686 to i8
  %1688 = and i8 %1687, 1
  %1689 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1688, i8* %1689, align 1
  %1690 = icmp eq i32 %1671, 0
  %1691 = zext i1 %1690 to i8
  %1692 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1691, i8* %1692, align 1
  %1693 = lshr i32 %1671, 31
  %1694 = trunc i32 %1693 to i8
  %1695 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1694, i8* %1695, align 1
  %1696 = lshr i32 %1668, 31
  %1697 = lshr i32 %1670, 31
  %1698 = xor i32 %1693, %1696
  %1699 = xor i32 %1693, %1697
  %1700 = add i32 %1698, %1699
  %1701 = icmp eq i32 %1700, 2
  %1702 = zext i1 %1701 to i8
  %1703 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1702, i8* %1703, align 1
  store %struct.Memory* %loadMem_408102, %struct.Memory** %MEMORY
  %loadMem_408105 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1705 = getelementptr inbounds %struct.GPR, %struct.GPR* %1704, i32 0, i32 33
  %1706 = getelementptr inbounds %struct.Reg, %struct.Reg* %1705, i32 0, i32 0
  %PC.i1068 = bitcast %union.anon* %1706 to i64*
  %1707 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1708 = getelementptr inbounds %struct.GPR, %struct.GPR* %1707, i32 0, i32 1
  %1709 = getelementptr inbounds %struct.Reg, %struct.Reg* %1708, i32 0, i32 0
  %RAX.i1069 = bitcast %union.anon* %1709 to i64*
  %1710 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1711 = getelementptr inbounds %struct.GPR, %struct.GPR* %1710, i32 0, i32 15
  %1712 = getelementptr inbounds %struct.Reg, %struct.Reg* %1711, i32 0, i32 0
  %RBP.i1070 = bitcast %union.anon* %1712 to i64*
  %1713 = load i64, i64* %RBP.i1070
  %1714 = sub i64 %1713, 64
  %1715 = load i64, i64* %PC.i1068
  %1716 = add i64 %1715, 4
  store i64 %1716, i64* %PC.i1068
  %1717 = inttoptr i64 %1714 to i64*
  %1718 = load i64, i64* %1717
  store i64 %1718, i64* %RAX.i1069, align 8
  store %struct.Memory* %loadMem_408105, %struct.Memory** %MEMORY
  %loadMem_408109 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1720 = getelementptr inbounds %struct.GPR, %struct.GPR* %1719, i32 0, i32 33
  %1721 = getelementptr inbounds %struct.Reg, %struct.Reg* %1720, i32 0, i32 0
  %PC.i1065 = bitcast %union.anon* %1721 to i64*
  %1722 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1723 = getelementptr inbounds %struct.GPR, %struct.GPR* %1722, i32 0, i32 9
  %1724 = getelementptr inbounds %struct.Reg, %struct.Reg* %1723, i32 0, i32 0
  %RSI.i1066 = bitcast %union.anon* %1724 to i64*
  %1725 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1726 = getelementptr inbounds %struct.GPR, %struct.GPR* %1725, i32 0, i32 15
  %1727 = getelementptr inbounds %struct.Reg, %struct.Reg* %1726, i32 0, i32 0
  %RBP.i1067 = bitcast %union.anon* %1727 to i64*
  %1728 = load i64, i64* %RBP.i1067
  %1729 = sub i64 %1728, 76
  %1730 = load i64, i64* %PC.i1065
  %1731 = add i64 %1730, 3
  store i64 %1731, i64* %PC.i1065
  %1732 = inttoptr i64 %1729 to i32*
  %1733 = load i32, i32* %1732
  %1734 = zext i32 %1733 to i64
  store i64 %1734, i64* %RSI.i1066, align 8
  store %struct.Memory* %loadMem_408109, %struct.Memory** %MEMORY
  %loadMem_40810c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1736 = getelementptr inbounds %struct.GPR, %struct.GPR* %1735, i32 0, i32 33
  %1737 = getelementptr inbounds %struct.Reg, %struct.Reg* %1736, i32 0, i32 0
  %PC.i1063 = bitcast %union.anon* %1737 to i64*
  %1738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1739 = getelementptr inbounds %struct.GPR, %struct.GPR* %1738, i32 0, i32 9
  %1740 = getelementptr inbounds %struct.Reg, %struct.Reg* %1739, i32 0, i32 0
  %RSI.i1064 = bitcast %union.anon* %1740 to i64*
  %1741 = load i64, i64* %RSI.i1064
  %1742 = load i64, i64* %PC.i1063
  %1743 = add i64 %1742, 3
  store i64 %1743, i64* %PC.i1063
  %1744 = trunc i64 %1741 to i32
  %1745 = sub i32 %1744, 1
  %1746 = zext i32 %1745 to i64
  store i64 %1746, i64* %RSI.i1064, align 8
  %1747 = icmp ult i32 %1744, 1
  %1748 = zext i1 %1747 to i8
  %1749 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1748, i8* %1749, align 1
  %1750 = and i32 %1745, 255
  %1751 = call i32 @llvm.ctpop.i32(i32 %1750)
  %1752 = trunc i32 %1751 to i8
  %1753 = and i8 %1752, 1
  %1754 = xor i8 %1753, 1
  %1755 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1754, i8* %1755, align 1
  %1756 = xor i64 1, %1741
  %1757 = trunc i64 %1756 to i32
  %1758 = xor i32 %1757, %1745
  %1759 = lshr i32 %1758, 4
  %1760 = trunc i32 %1759 to i8
  %1761 = and i8 %1760, 1
  %1762 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1761, i8* %1762, align 1
  %1763 = icmp eq i32 %1745, 0
  %1764 = zext i1 %1763 to i8
  %1765 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1764, i8* %1765, align 1
  %1766 = lshr i32 %1745, 31
  %1767 = trunc i32 %1766 to i8
  %1768 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1767, i8* %1768, align 1
  %1769 = lshr i32 %1744, 31
  %1770 = xor i32 %1766, %1769
  %1771 = add i32 %1770, %1769
  %1772 = icmp eq i32 %1771, 2
  %1773 = zext i1 %1772 to i8
  %1774 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1773, i8* %1774, align 1
  store %struct.Memory* %loadMem_40810c, %struct.Memory** %MEMORY
  %loadMem_40810f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1775 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1776 = getelementptr inbounds %struct.GPR, %struct.GPR* %1775, i32 0, i32 33
  %1777 = getelementptr inbounds %struct.Reg, %struct.Reg* %1776, i32 0, i32 0
  %PC.i1060 = bitcast %union.anon* %1777 to i64*
  %1778 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1779 = getelementptr inbounds %struct.GPR, %struct.GPR* %1778, i32 0, i32 9
  %1780 = getelementptr inbounds %struct.Reg, %struct.Reg* %1779, i32 0, i32 0
  %ESI.i1061 = bitcast %union.anon* %1780 to i32*
  %1781 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1782 = getelementptr inbounds %struct.GPR, %struct.GPR* %1781, i32 0, i32 7
  %1783 = getelementptr inbounds %struct.Reg, %struct.Reg* %1782, i32 0, i32 0
  %RDX.i1062 = bitcast %union.anon* %1783 to i64*
  %1784 = load i32, i32* %ESI.i1061
  %1785 = zext i32 %1784 to i64
  %1786 = load i64, i64* %PC.i1060
  %1787 = add i64 %1786, 3
  store i64 %1787, i64* %PC.i1060
  %1788 = shl i64 %1785, 32
  %1789 = ashr exact i64 %1788, 32
  store i64 %1789, i64* %RDX.i1062, align 8
  store %struct.Memory* %loadMem_40810f, %struct.Memory** %MEMORY
  %loadMem_408112 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1790 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1791 = getelementptr inbounds %struct.GPR, %struct.GPR* %1790, i32 0, i32 33
  %1792 = getelementptr inbounds %struct.Reg, %struct.Reg* %1791, i32 0, i32 0
  %PC.i1057 = bitcast %union.anon* %1792 to i64*
  %1793 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1794 = getelementptr inbounds %struct.GPR, %struct.GPR* %1793, i32 0, i32 1
  %1795 = getelementptr inbounds %struct.Reg, %struct.Reg* %1794, i32 0, i32 0
  %RAX.i1058 = bitcast %union.anon* %1795 to i64*
  %1796 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1797 = getelementptr inbounds %struct.GPR, %struct.GPR* %1796, i32 0, i32 7
  %1798 = getelementptr inbounds %struct.Reg, %struct.Reg* %1797, i32 0, i32 0
  %RDX.i1059 = bitcast %union.anon* %1798 to i64*
  %1799 = load i64, i64* %RAX.i1058
  %1800 = load i64, i64* %RDX.i1059
  %1801 = mul i64 %1800, 8
  %1802 = add i64 %1801, %1799
  %1803 = load i64, i64* %PC.i1057
  %1804 = add i64 %1803, 4
  store i64 %1804, i64* %PC.i1057
  %1805 = inttoptr i64 %1802 to i64*
  %1806 = load i64, i64* %1805
  store i64 %1806, i64* %RAX.i1058, align 8
  store %struct.Memory* %loadMem_408112, %struct.Memory** %MEMORY
  %loadMem_408116 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1808 = getelementptr inbounds %struct.GPR, %struct.GPR* %1807, i32 0, i32 33
  %1809 = getelementptr inbounds %struct.Reg, %struct.Reg* %1808, i32 0, i32 0
  %PC.i1054 = bitcast %union.anon* %1809 to i64*
  %1810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1811 = getelementptr inbounds %struct.GPR, %struct.GPR* %1810, i32 0, i32 9
  %1812 = getelementptr inbounds %struct.Reg, %struct.Reg* %1811, i32 0, i32 0
  %RSI.i1055 = bitcast %union.anon* %1812 to i64*
  %1813 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1814 = getelementptr inbounds %struct.GPR, %struct.GPR* %1813, i32 0, i32 15
  %1815 = getelementptr inbounds %struct.Reg, %struct.Reg* %1814, i32 0, i32 0
  %RBP.i1056 = bitcast %union.anon* %1815 to i64*
  %1816 = load i64, i64* %RBP.i1056
  %1817 = sub i64 %1816, 80
  %1818 = load i64, i64* %PC.i1054
  %1819 = add i64 %1818, 3
  store i64 %1819, i64* %PC.i1054
  %1820 = inttoptr i64 %1817 to i32*
  %1821 = load i32, i32* %1820
  %1822 = zext i32 %1821 to i64
  store i64 %1822, i64* %RSI.i1055, align 8
  store %struct.Memory* %loadMem_408116, %struct.Memory** %MEMORY
  %loadMem_408119 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1824 = getelementptr inbounds %struct.GPR, %struct.GPR* %1823, i32 0, i32 33
  %1825 = getelementptr inbounds %struct.Reg, %struct.Reg* %1824, i32 0, i32 0
  %PC.i1052 = bitcast %union.anon* %1825 to i64*
  %1826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1827 = getelementptr inbounds %struct.GPR, %struct.GPR* %1826, i32 0, i32 9
  %1828 = getelementptr inbounds %struct.Reg, %struct.Reg* %1827, i32 0, i32 0
  %RSI.i1053 = bitcast %union.anon* %1828 to i64*
  %1829 = load i64, i64* %RSI.i1053
  %1830 = load i64, i64* %PC.i1052
  %1831 = add i64 %1830, 3
  store i64 %1831, i64* %PC.i1052
  %1832 = trunc i64 %1829 to i32
  %1833 = sub i32 %1832, 1
  %1834 = zext i32 %1833 to i64
  store i64 %1834, i64* %RSI.i1053, align 8
  %1835 = icmp ult i32 %1832, 1
  %1836 = zext i1 %1835 to i8
  %1837 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1836, i8* %1837, align 1
  %1838 = and i32 %1833, 255
  %1839 = call i32 @llvm.ctpop.i32(i32 %1838)
  %1840 = trunc i32 %1839 to i8
  %1841 = and i8 %1840, 1
  %1842 = xor i8 %1841, 1
  %1843 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1842, i8* %1843, align 1
  %1844 = xor i64 1, %1829
  %1845 = trunc i64 %1844 to i32
  %1846 = xor i32 %1845, %1833
  %1847 = lshr i32 %1846, 4
  %1848 = trunc i32 %1847 to i8
  %1849 = and i8 %1848, 1
  %1850 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1849, i8* %1850, align 1
  %1851 = icmp eq i32 %1833, 0
  %1852 = zext i1 %1851 to i8
  %1853 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1852, i8* %1853, align 1
  %1854 = lshr i32 %1833, 31
  %1855 = trunc i32 %1854 to i8
  %1856 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1855, i8* %1856, align 1
  %1857 = lshr i32 %1832, 31
  %1858 = xor i32 %1854, %1857
  %1859 = add i32 %1858, %1857
  %1860 = icmp eq i32 %1859, 2
  %1861 = zext i1 %1860 to i8
  %1862 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1861, i8* %1862, align 1
  store %struct.Memory* %loadMem_408119, %struct.Memory** %MEMORY
  %loadMem_40811c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1864 = getelementptr inbounds %struct.GPR, %struct.GPR* %1863, i32 0, i32 33
  %1865 = getelementptr inbounds %struct.Reg, %struct.Reg* %1864, i32 0, i32 0
  %PC.i1049 = bitcast %union.anon* %1865 to i64*
  %1866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1867 = getelementptr inbounds %struct.GPR, %struct.GPR* %1866, i32 0, i32 9
  %1868 = getelementptr inbounds %struct.Reg, %struct.Reg* %1867, i32 0, i32 0
  %ESI.i1050 = bitcast %union.anon* %1868 to i32*
  %1869 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1870 = getelementptr inbounds %struct.GPR, %struct.GPR* %1869, i32 0, i32 7
  %1871 = getelementptr inbounds %struct.Reg, %struct.Reg* %1870, i32 0, i32 0
  %RDX.i1051 = bitcast %union.anon* %1871 to i64*
  %1872 = load i32, i32* %ESI.i1050
  %1873 = zext i32 %1872 to i64
  %1874 = load i64, i64* %PC.i1049
  %1875 = add i64 %1874, 3
  store i64 %1875, i64* %PC.i1049
  %1876 = shl i64 %1873, 32
  %1877 = ashr exact i64 %1876, 32
  store i64 %1877, i64* %RDX.i1051, align 8
  store %struct.Memory* %loadMem_40811c, %struct.Memory** %MEMORY
  %loadMem_40811f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1878 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1879 = getelementptr inbounds %struct.GPR, %struct.GPR* %1878, i32 0, i32 33
  %1880 = getelementptr inbounds %struct.Reg, %struct.Reg* %1879, i32 0, i32 0
  %PC.i1045 = bitcast %union.anon* %1880 to i64*
  %1881 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1882 = getelementptr inbounds %struct.GPR, %struct.GPR* %1881, i32 0, i32 1
  %1883 = getelementptr inbounds %struct.Reg, %struct.Reg* %1882, i32 0, i32 0
  %RAX.i1046 = bitcast %union.anon* %1883 to i64*
  %1884 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1885 = getelementptr inbounds %struct.GPR, %struct.GPR* %1884, i32 0, i32 7
  %1886 = getelementptr inbounds %struct.Reg, %struct.Reg* %1885, i32 0, i32 0
  %RDX.i1047 = bitcast %union.anon* %1886 to i64*
  %1887 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1888 = getelementptr inbounds %struct.GPR, %struct.GPR* %1887, i32 0, i32 9
  %1889 = getelementptr inbounds %struct.Reg, %struct.Reg* %1888, i32 0, i32 0
  %RSI.i1048 = bitcast %union.anon* %1889 to i64*
  %1890 = load i64, i64* %RAX.i1046
  %1891 = load i64, i64* %RDX.i1047
  %1892 = mul i64 %1891, 4
  %1893 = add i64 %1892, %1890
  %1894 = load i64, i64* %PC.i1045
  %1895 = add i64 %1894, 3
  store i64 %1895, i64* %PC.i1045
  %1896 = inttoptr i64 %1893 to i32*
  %1897 = load i32, i32* %1896
  %1898 = zext i32 %1897 to i64
  store i64 %1898, i64* %RSI.i1048, align 8
  store %struct.Memory* %loadMem_40811f, %struct.Memory** %MEMORY
  %loadMem_408122 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1900 = getelementptr inbounds %struct.GPR, %struct.GPR* %1899, i32 0, i32 33
  %1901 = getelementptr inbounds %struct.Reg, %struct.Reg* %1900, i32 0, i32 0
  %PC.i1042 = bitcast %union.anon* %1901 to i64*
  %1902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1903 = getelementptr inbounds %struct.GPR, %struct.GPR* %1902, i32 0, i32 1
  %1904 = getelementptr inbounds %struct.Reg, %struct.Reg* %1903, i32 0, i32 0
  %RAX.i1043 = bitcast %union.anon* %1904 to i64*
  %1905 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1906 = getelementptr inbounds %struct.GPR, %struct.GPR* %1905, i32 0, i32 15
  %1907 = getelementptr inbounds %struct.Reg, %struct.Reg* %1906, i32 0, i32 0
  %RBP.i1044 = bitcast %union.anon* %1907 to i64*
  %1908 = load i64, i64* %RBP.i1044
  %1909 = sub i64 %1908, 24
  %1910 = load i64, i64* %PC.i1042
  %1911 = add i64 %1910, 4
  store i64 %1911, i64* %PC.i1042
  %1912 = inttoptr i64 %1909 to i64*
  %1913 = load i64, i64* %1912
  store i64 %1913, i64* %RAX.i1043, align 8
  store %struct.Memory* %loadMem_408122, %struct.Memory** %MEMORY
  %loadMem_408126 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1914 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1915 = getelementptr inbounds %struct.GPR, %struct.GPR* %1914, i32 0, i32 33
  %1916 = getelementptr inbounds %struct.Reg, %struct.Reg* %1915, i32 0, i32 0
  %PC.i1040 = bitcast %union.anon* %1916 to i64*
  %1917 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1918 = getelementptr inbounds %struct.GPR, %struct.GPR* %1917, i32 0, i32 1
  %1919 = getelementptr inbounds %struct.Reg, %struct.Reg* %1918, i32 0, i32 0
  %RAX.i1041 = bitcast %union.anon* %1919 to i64*
  %1920 = load i64, i64* %RAX.i1041
  %1921 = add i64 %1920, 312
  %1922 = load i64, i64* %PC.i1040
  %1923 = add i64 %1922, 7
  store i64 %1923, i64* %PC.i1040
  %1924 = inttoptr i64 %1921 to i64*
  %1925 = load i64, i64* %1924
  store i64 %1925, i64* %RAX.i1041, align 8
  store %struct.Memory* %loadMem_408126, %struct.Memory** %MEMORY
  %loadMem_40812d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1927 = getelementptr inbounds %struct.GPR, %struct.GPR* %1926, i32 0, i32 33
  %1928 = getelementptr inbounds %struct.Reg, %struct.Reg* %1927, i32 0, i32 0
  %PC.i1038 = bitcast %union.anon* %1928 to i64*
  %1929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1930 = getelementptr inbounds %struct.GPR, %struct.GPR* %1929, i32 0, i32 1
  %1931 = getelementptr inbounds %struct.Reg, %struct.Reg* %1930, i32 0, i32 0
  %RAX.i1039 = bitcast %union.anon* %1931 to i64*
  %1932 = load i64, i64* %RAX.i1039
  %1933 = add i64 %1932, 24
  %1934 = load i64, i64* %PC.i1038
  %1935 = add i64 %1934, 4
  store i64 %1935, i64* %PC.i1038
  %1936 = inttoptr i64 %1933 to i64*
  %1937 = load i64, i64* %1936
  store i64 %1937, i64* %RAX.i1039, align 8
  store %struct.Memory* %loadMem_40812d, %struct.Memory** %MEMORY
  %loadMem_408131 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1939 = getelementptr inbounds %struct.GPR, %struct.GPR* %1938, i32 0, i32 33
  %1940 = getelementptr inbounds %struct.Reg, %struct.Reg* %1939, i32 0, i32 0
  %PC.i1035 = bitcast %union.anon* %1940 to i64*
  %1941 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1942 = getelementptr inbounds %struct.GPR, %struct.GPR* %1941, i32 0, i32 11
  %1943 = getelementptr inbounds %struct.Reg, %struct.Reg* %1942, i32 0, i32 0
  %RDI.i1036 = bitcast %union.anon* %1943 to i64*
  %1944 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1945 = getelementptr inbounds %struct.GPR, %struct.GPR* %1944, i32 0, i32 15
  %1946 = getelementptr inbounds %struct.Reg, %struct.Reg* %1945, i32 0, i32 0
  %RBP.i1037 = bitcast %union.anon* %1946 to i64*
  %1947 = load i64, i64* %RBP.i1037
  %1948 = sub i64 %1947, 80
  %1949 = load i64, i64* %PC.i1035
  %1950 = add i64 %1949, 3
  store i64 %1950, i64* %PC.i1035
  %1951 = inttoptr i64 %1948 to i32*
  %1952 = load i32, i32* %1951
  %1953 = zext i32 %1952 to i64
  store i64 %1953, i64* %RDI.i1036, align 8
  store %struct.Memory* %loadMem_408131, %struct.Memory** %MEMORY
  %loadMem_408134 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1955 = getelementptr inbounds %struct.GPR, %struct.GPR* %1954, i32 0, i32 33
  %1956 = getelementptr inbounds %struct.Reg, %struct.Reg* %1955, i32 0, i32 0
  %PC.i1033 = bitcast %union.anon* %1956 to i64*
  %1957 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1958 = getelementptr inbounds %struct.GPR, %struct.GPR* %1957, i32 0, i32 11
  %1959 = getelementptr inbounds %struct.Reg, %struct.Reg* %1958, i32 0, i32 0
  %RDI.i1034 = bitcast %union.anon* %1959 to i64*
  %1960 = load i64, i64* %RDI.i1034
  %1961 = load i64, i64* %PC.i1033
  %1962 = add i64 %1961, 3
  store i64 %1962, i64* %PC.i1033
  %1963 = trunc i64 %1960 to i32
  %1964 = sub i32 %1963, 1
  %1965 = zext i32 %1964 to i64
  store i64 %1965, i64* %RDI.i1034, align 8
  %1966 = icmp ult i32 %1963, 1
  %1967 = zext i1 %1966 to i8
  %1968 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1967, i8* %1968, align 1
  %1969 = and i32 %1964, 255
  %1970 = call i32 @llvm.ctpop.i32(i32 %1969)
  %1971 = trunc i32 %1970 to i8
  %1972 = and i8 %1971, 1
  %1973 = xor i8 %1972, 1
  %1974 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1973, i8* %1974, align 1
  %1975 = xor i64 1, %1960
  %1976 = trunc i64 %1975 to i32
  %1977 = xor i32 %1976, %1964
  %1978 = lshr i32 %1977, 4
  %1979 = trunc i32 %1978 to i8
  %1980 = and i8 %1979, 1
  %1981 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1980, i8* %1981, align 1
  %1982 = icmp eq i32 %1964, 0
  %1983 = zext i1 %1982 to i8
  %1984 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1983, i8* %1984, align 1
  %1985 = lshr i32 %1964, 31
  %1986 = trunc i32 %1985 to i8
  %1987 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1986, i8* %1987, align 1
  %1988 = lshr i32 %1963, 31
  %1989 = xor i32 %1985, %1988
  %1990 = add i32 %1989, %1988
  %1991 = icmp eq i32 %1990, 2
  %1992 = zext i1 %1991 to i8
  %1993 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1992, i8* %1993, align 1
  store %struct.Memory* %loadMem_408134, %struct.Memory** %MEMORY
  %loadMem_408137 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1995 = getelementptr inbounds %struct.GPR, %struct.GPR* %1994, i32 0, i32 33
  %1996 = getelementptr inbounds %struct.Reg, %struct.Reg* %1995, i32 0, i32 0
  %PC.i1030 = bitcast %union.anon* %1996 to i64*
  %1997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1998 = getelementptr inbounds %struct.GPR, %struct.GPR* %1997, i32 0, i32 11
  %1999 = getelementptr inbounds %struct.Reg, %struct.Reg* %1998, i32 0, i32 0
  %EDI.i1031 = bitcast %union.anon* %1999 to i32*
  %2000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2001 = getelementptr inbounds %struct.GPR, %struct.GPR* %2000, i32 0, i32 7
  %2002 = getelementptr inbounds %struct.Reg, %struct.Reg* %2001, i32 0, i32 0
  %RDX.i1032 = bitcast %union.anon* %2002 to i64*
  %2003 = load i32, i32* %EDI.i1031
  %2004 = zext i32 %2003 to i64
  %2005 = load i64, i64* %PC.i1030
  %2006 = add i64 %2005, 3
  store i64 %2006, i64* %PC.i1030
  %2007 = shl i64 %2004, 32
  %2008 = ashr exact i64 %2007, 32
  store i64 %2008, i64* %RDX.i1032, align 8
  store %struct.Memory* %loadMem_408137, %struct.Memory** %MEMORY
  %loadMem_40813a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2009 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2010 = getelementptr inbounds %struct.GPR, %struct.GPR* %2009, i32 0, i32 33
  %2011 = getelementptr inbounds %struct.Reg, %struct.Reg* %2010, i32 0, i32 0
  %PC.i1026 = bitcast %union.anon* %2011 to i64*
  %2012 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2013 = getelementptr inbounds %struct.GPR, %struct.GPR* %2012, i32 0, i32 1
  %2014 = getelementptr inbounds %struct.Reg, %struct.Reg* %2013, i32 0, i32 0
  %RAX.i1027 = bitcast %union.anon* %2014 to i64*
  %2015 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2016 = getelementptr inbounds %struct.GPR, %struct.GPR* %2015, i32 0, i32 7
  %2017 = getelementptr inbounds %struct.Reg, %struct.Reg* %2016, i32 0, i32 0
  %RDX.i1028 = bitcast %union.anon* %2017 to i64*
  %2018 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2019 = getelementptr inbounds %struct.GPR, %struct.GPR* %2018, i32 0, i32 9
  %2020 = getelementptr inbounds %struct.Reg, %struct.Reg* %2019, i32 0, i32 0
  %RSI.i1029 = bitcast %union.anon* %2020 to i64*
  %2021 = load i64, i64* %RSI.i1029
  %2022 = load i64, i64* %RAX.i1027
  %2023 = load i64, i64* %RDX.i1028
  %2024 = mul i64 %2023, 4
  %2025 = add i64 %2024, %2022
  %2026 = load i64, i64* %PC.i1026
  %2027 = add i64 %2026, 3
  store i64 %2027, i64* %PC.i1026
  %2028 = trunc i64 %2021 to i32
  %2029 = inttoptr i64 %2025 to i32*
  %2030 = load i32, i32* %2029
  %2031 = add i32 %2030, %2028
  %2032 = zext i32 %2031 to i64
  store i64 %2032, i64* %RSI.i1029, align 8
  %2033 = icmp ult i32 %2031, %2028
  %2034 = icmp ult i32 %2031, %2030
  %2035 = or i1 %2033, %2034
  %2036 = zext i1 %2035 to i8
  %2037 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2036, i8* %2037, align 1
  %2038 = and i32 %2031, 255
  %2039 = call i32 @llvm.ctpop.i32(i32 %2038)
  %2040 = trunc i32 %2039 to i8
  %2041 = and i8 %2040, 1
  %2042 = xor i8 %2041, 1
  %2043 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2042, i8* %2043, align 1
  %2044 = xor i32 %2030, %2028
  %2045 = xor i32 %2044, %2031
  %2046 = lshr i32 %2045, 4
  %2047 = trunc i32 %2046 to i8
  %2048 = and i8 %2047, 1
  %2049 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2048, i8* %2049, align 1
  %2050 = icmp eq i32 %2031, 0
  %2051 = zext i1 %2050 to i8
  %2052 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2051, i8* %2052, align 1
  %2053 = lshr i32 %2031, 31
  %2054 = trunc i32 %2053 to i8
  %2055 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2054, i8* %2055, align 1
  %2056 = lshr i32 %2028, 31
  %2057 = lshr i32 %2030, 31
  %2058 = xor i32 %2053, %2056
  %2059 = xor i32 %2053, %2057
  %2060 = add i32 %2058, %2059
  %2061 = icmp eq i32 %2060, 2
  %2062 = zext i1 %2061 to i8
  %2063 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2062, i8* %2063, align 1
  store %struct.Memory* %loadMem_40813a, %struct.Memory** %MEMORY
  %loadMem_40813d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2065 = getelementptr inbounds %struct.GPR, %struct.GPR* %2064, i32 0, i32 33
  %2066 = getelementptr inbounds %struct.Reg, %struct.Reg* %2065, i32 0, i32 0
  %PC.i1023 = bitcast %union.anon* %2066 to i64*
  %2067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2068 = getelementptr inbounds %struct.GPR, %struct.GPR* %2067, i32 0, i32 5
  %2069 = getelementptr inbounds %struct.Reg, %struct.Reg* %2068, i32 0, i32 0
  %ECX.i1024 = bitcast %union.anon* %2069 to i32*
  %2070 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2071 = getelementptr inbounds %struct.GPR, %struct.GPR* %2070, i32 0, i32 11
  %2072 = getelementptr inbounds %struct.Reg, %struct.Reg* %2071, i32 0, i32 0
  %RDI.i1025 = bitcast %union.anon* %2072 to i64*
  %2073 = load i32, i32* %ECX.i1024
  %2074 = zext i32 %2073 to i64
  %2075 = load i64, i64* %PC.i1023
  %2076 = add i64 %2075, 2
  store i64 %2076, i64* %PC.i1023
  %2077 = and i64 %2074, 4294967295
  store i64 %2077, i64* %RDI.i1025, align 8
  store %struct.Memory* %loadMem_40813d, %struct.Memory** %MEMORY
  %loadMem1_40813f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2078 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2079 = getelementptr inbounds %struct.GPR, %struct.GPR* %2078, i32 0, i32 33
  %2080 = getelementptr inbounds %struct.Reg, %struct.Reg* %2079, i32 0, i32 0
  %PC.i1022 = bitcast %union.anon* %2080 to i64*
  %2081 = load i64, i64* %PC.i1022
  %2082 = add i64 %2081, 131185
  %2083 = load i64, i64* %PC.i1022
  %2084 = add i64 %2083, 5
  %2085 = load i64, i64* %PC.i1022
  %2086 = add i64 %2085, 5
  store i64 %2086, i64* %PC.i1022
  %2087 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2088 = load i64, i64* %2087, align 8
  %2089 = add i64 %2088, -8
  %2090 = inttoptr i64 %2089 to i64*
  store i64 %2084, i64* %2090
  store i64 %2089, i64* %2087, align 8
  %2091 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2082, i64* %2091, align 8
  store %struct.Memory* %loadMem1_40813f, %struct.Memory** %MEMORY
  %loadMem2_40813f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40813f = load i64, i64* %3
  %call2_40813f = call %struct.Memory* @sub_4281b0.ILogsum(%struct.State* %0, i64 %loadPC_40813f, %struct.Memory* %loadMem2_40813f)
  store %struct.Memory* %call2_40813f, %struct.Memory** %MEMORY
  %loadMem_408144 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2092 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2093 = getelementptr inbounds %struct.GPR, %struct.GPR* %2092, i32 0, i32 33
  %2094 = getelementptr inbounds %struct.Reg, %struct.Reg* %2093, i32 0, i32 0
  %PC.i1019 = bitcast %union.anon* %2094 to i64*
  %2095 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2096 = getelementptr inbounds %struct.GPR, %struct.GPR* %2095, i32 0, i32 7
  %2097 = getelementptr inbounds %struct.Reg, %struct.Reg* %2096, i32 0, i32 0
  %RDX.i1020 = bitcast %union.anon* %2097 to i64*
  %2098 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2099 = getelementptr inbounds %struct.GPR, %struct.GPR* %2098, i32 0, i32 15
  %2100 = getelementptr inbounds %struct.Reg, %struct.Reg* %2099, i32 0, i32 0
  %RBP.i1021 = bitcast %union.anon* %2100 to i64*
  %2101 = load i64, i64* %RBP.i1021
  %2102 = sub i64 %2101, 48
  %2103 = load i64, i64* %PC.i1019
  %2104 = add i64 %2103, 4
  store i64 %2104, i64* %PC.i1019
  %2105 = inttoptr i64 %2102 to i64*
  %2106 = load i64, i64* %2105
  store i64 %2106, i64* %RDX.i1020, align 8
  store %struct.Memory* %loadMem_408144, %struct.Memory** %MEMORY
  %loadMem_408148 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2108 = getelementptr inbounds %struct.GPR, %struct.GPR* %2107, i32 0, i32 33
  %2109 = getelementptr inbounds %struct.Reg, %struct.Reg* %2108, i32 0, i32 0
  %PC.i1016 = bitcast %union.anon* %2109 to i64*
  %2110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2111 = getelementptr inbounds %struct.GPR, %struct.GPR* %2110, i32 0, i32 5
  %2112 = getelementptr inbounds %struct.Reg, %struct.Reg* %2111, i32 0, i32 0
  %RCX.i1017 = bitcast %union.anon* %2112 to i64*
  %2113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2114 = getelementptr inbounds %struct.GPR, %struct.GPR* %2113, i32 0, i32 15
  %2115 = getelementptr inbounds %struct.Reg, %struct.Reg* %2114, i32 0, i32 0
  %RBP.i1018 = bitcast %union.anon* %2115 to i64*
  %2116 = load i64, i64* %RBP.i1018
  %2117 = sub i64 %2116, 76
  %2118 = load i64, i64* %PC.i1016
  %2119 = add i64 %2118, 3
  store i64 %2119, i64* %PC.i1016
  %2120 = inttoptr i64 %2117 to i32*
  %2121 = load i32, i32* %2120
  %2122 = zext i32 %2121 to i64
  store i64 %2122, i64* %RCX.i1017, align 8
  store %struct.Memory* %loadMem_408148, %struct.Memory** %MEMORY
  %loadMem_40814b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2124 = getelementptr inbounds %struct.GPR, %struct.GPR* %2123, i32 0, i32 33
  %2125 = getelementptr inbounds %struct.Reg, %struct.Reg* %2124, i32 0, i32 0
  %PC.i1014 = bitcast %union.anon* %2125 to i64*
  %2126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2127 = getelementptr inbounds %struct.GPR, %struct.GPR* %2126, i32 0, i32 5
  %2128 = getelementptr inbounds %struct.Reg, %struct.Reg* %2127, i32 0, i32 0
  %RCX.i1015 = bitcast %union.anon* %2128 to i64*
  %2129 = load i64, i64* %RCX.i1015
  %2130 = load i64, i64* %PC.i1014
  %2131 = add i64 %2130, 3
  store i64 %2131, i64* %PC.i1014
  %2132 = trunc i64 %2129 to i32
  %2133 = sub i32 %2132, 1
  %2134 = zext i32 %2133 to i64
  store i64 %2134, i64* %RCX.i1015, align 8
  %2135 = icmp ult i32 %2132, 1
  %2136 = zext i1 %2135 to i8
  %2137 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2136, i8* %2137, align 1
  %2138 = and i32 %2133, 255
  %2139 = call i32 @llvm.ctpop.i32(i32 %2138)
  %2140 = trunc i32 %2139 to i8
  %2141 = and i8 %2140, 1
  %2142 = xor i8 %2141, 1
  %2143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2142, i8* %2143, align 1
  %2144 = xor i64 1, %2129
  %2145 = trunc i64 %2144 to i32
  %2146 = xor i32 %2145, %2133
  %2147 = lshr i32 %2146, 4
  %2148 = trunc i32 %2147 to i8
  %2149 = and i8 %2148, 1
  %2150 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2149, i8* %2150, align 1
  %2151 = icmp eq i32 %2133, 0
  %2152 = zext i1 %2151 to i8
  %2153 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2152, i8* %2153, align 1
  %2154 = lshr i32 %2133, 31
  %2155 = trunc i32 %2154 to i8
  %2156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2155, i8* %2156, align 1
  %2157 = lshr i32 %2132, 31
  %2158 = xor i32 %2154, %2157
  %2159 = add i32 %2158, %2157
  %2160 = icmp eq i32 %2159, 2
  %2161 = zext i1 %2160 to i8
  %2162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2161, i8* %2162, align 1
  store %struct.Memory* %loadMem_40814b, %struct.Memory** %MEMORY
  %loadMem_40814e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2164 = getelementptr inbounds %struct.GPR, %struct.GPR* %2163, i32 0, i32 33
  %2165 = getelementptr inbounds %struct.Reg, %struct.Reg* %2164, i32 0, i32 0
  %PC.i1011 = bitcast %union.anon* %2165 to i64*
  %2166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2167 = getelementptr inbounds %struct.GPR, %struct.GPR* %2166, i32 0, i32 5
  %2168 = getelementptr inbounds %struct.Reg, %struct.Reg* %2167, i32 0, i32 0
  %ECX.i1012 = bitcast %union.anon* %2168 to i32*
  %2169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2170 = getelementptr inbounds %struct.GPR, %struct.GPR* %2169, i32 0, i32 17
  %2171 = getelementptr inbounds %struct.Reg, %struct.Reg* %2170, i32 0, i32 0
  %R8.i1013 = bitcast %union.anon* %2171 to i64*
  %2172 = load i32, i32* %ECX.i1012
  %2173 = zext i32 %2172 to i64
  %2174 = load i64, i64* %PC.i1011
  %2175 = add i64 %2174, 3
  store i64 %2175, i64* %PC.i1011
  %2176 = shl i64 %2173, 32
  %2177 = ashr exact i64 %2176, 32
  store i64 %2177, i64* %R8.i1013, align 8
  store %struct.Memory* %loadMem_40814e, %struct.Memory** %MEMORY
  %loadMem_408151 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2179 = getelementptr inbounds %struct.GPR, %struct.GPR* %2178, i32 0, i32 33
  %2180 = getelementptr inbounds %struct.Reg, %struct.Reg* %2179, i32 0, i32 0
  %PC.i1008 = bitcast %union.anon* %2180 to i64*
  %2181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2182 = getelementptr inbounds %struct.GPR, %struct.GPR* %2181, i32 0, i32 7
  %2183 = getelementptr inbounds %struct.Reg, %struct.Reg* %2182, i32 0, i32 0
  %RDX.i1009 = bitcast %union.anon* %2183 to i64*
  %2184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2185 = getelementptr inbounds %struct.GPR, %struct.GPR* %2184, i32 0, i32 17
  %2186 = getelementptr inbounds %struct.Reg, %struct.Reg* %2185, i32 0, i32 0
  %R8.i1010 = bitcast %union.anon* %2186 to i64*
  %2187 = load i64, i64* %RDX.i1009
  %2188 = load i64, i64* %R8.i1010
  %2189 = mul i64 %2188, 8
  %2190 = add i64 %2189, %2187
  %2191 = load i64, i64* %PC.i1008
  %2192 = add i64 %2191, 4
  store i64 %2192, i64* %PC.i1008
  %2193 = inttoptr i64 %2190 to i64*
  %2194 = load i64, i64* %2193
  store i64 %2194, i64* %RDX.i1009, align 8
  store %struct.Memory* %loadMem_408151, %struct.Memory** %MEMORY
  %loadMem_408155 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2196 = getelementptr inbounds %struct.GPR, %struct.GPR* %2195, i32 0, i32 33
  %2197 = getelementptr inbounds %struct.Reg, %struct.Reg* %2196, i32 0, i32 0
  %PC.i1005 = bitcast %union.anon* %2197 to i64*
  %2198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2199 = getelementptr inbounds %struct.GPR, %struct.GPR* %2198, i32 0, i32 5
  %2200 = getelementptr inbounds %struct.Reg, %struct.Reg* %2199, i32 0, i32 0
  %RCX.i1006 = bitcast %union.anon* %2200 to i64*
  %2201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2202 = getelementptr inbounds %struct.GPR, %struct.GPR* %2201, i32 0, i32 7
  %2203 = getelementptr inbounds %struct.Reg, %struct.Reg* %2202, i32 0, i32 0
  %RDX.i1007 = bitcast %union.anon* %2203 to i64*
  %2204 = load i64, i64* %RDX.i1007
  %2205 = load i64, i64* %PC.i1005
  %2206 = add i64 %2205, 2
  store i64 %2206, i64* %PC.i1005
  %2207 = inttoptr i64 %2204 to i32*
  %2208 = load i32, i32* %2207
  %2209 = zext i32 %2208 to i64
  store i64 %2209, i64* %RCX.i1006, align 8
  store %struct.Memory* %loadMem_408155, %struct.Memory** %MEMORY
  %loadMem_408157 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2211 = getelementptr inbounds %struct.GPR, %struct.GPR* %2210, i32 0, i32 33
  %2212 = getelementptr inbounds %struct.Reg, %struct.Reg* %2211, i32 0, i32 0
  %PC.i1002 = bitcast %union.anon* %2212 to i64*
  %2213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2214 = getelementptr inbounds %struct.GPR, %struct.GPR* %2213, i32 0, i32 7
  %2215 = getelementptr inbounds %struct.Reg, %struct.Reg* %2214, i32 0, i32 0
  %RDX.i1003 = bitcast %union.anon* %2215 to i64*
  %2216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2217 = getelementptr inbounds %struct.GPR, %struct.GPR* %2216, i32 0, i32 15
  %2218 = getelementptr inbounds %struct.Reg, %struct.Reg* %2217, i32 0, i32 0
  %RBP.i1004 = bitcast %union.anon* %2218 to i64*
  %2219 = load i64, i64* %RBP.i1004
  %2220 = sub i64 %2219, 24
  %2221 = load i64, i64* %PC.i1002
  %2222 = add i64 %2221, 4
  store i64 %2222, i64* %PC.i1002
  %2223 = inttoptr i64 %2220 to i64*
  %2224 = load i64, i64* %2223
  store i64 %2224, i64* %RDX.i1003, align 8
  store %struct.Memory* %loadMem_408157, %struct.Memory** %MEMORY
  %loadMem_40815b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2226 = getelementptr inbounds %struct.GPR, %struct.GPR* %2225, i32 0, i32 33
  %2227 = getelementptr inbounds %struct.Reg, %struct.Reg* %2226, i32 0, i32 0
  %PC.i1000 = bitcast %union.anon* %2227 to i64*
  %2228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2229 = getelementptr inbounds %struct.GPR, %struct.GPR* %2228, i32 0, i32 7
  %2230 = getelementptr inbounds %struct.Reg, %struct.Reg* %2229, i32 0, i32 0
  %RDX.i1001 = bitcast %union.anon* %2230 to i64*
  %2231 = load i64, i64* %RDX.i1001
  %2232 = add i64 %2231, 368
  %2233 = load i64, i64* %PC.i1000
  %2234 = add i64 %2233, 7
  store i64 %2234, i64* %PC.i1000
  %2235 = inttoptr i64 %2232 to i64*
  %2236 = load i64, i64* %2235
  store i64 %2236, i64* %RDX.i1001, align 8
  store %struct.Memory* %loadMem_40815b, %struct.Memory** %MEMORY
  %loadMem_408162 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2238 = getelementptr inbounds %struct.GPR, %struct.GPR* %2237, i32 0, i32 33
  %2239 = getelementptr inbounds %struct.Reg, %struct.Reg* %2238, i32 0, i32 0
  %PC.i997 = bitcast %union.anon* %2239 to i64*
  %2240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2241 = getelementptr inbounds %struct.GPR, %struct.GPR* %2240, i32 0, i32 15
  %2242 = getelementptr inbounds %struct.Reg, %struct.Reg* %2241, i32 0, i32 0
  %RBP.i998 = bitcast %union.anon* %2242 to i64*
  %2243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2244 = getelementptr inbounds %struct.GPR, %struct.GPR* %2243, i32 0, i32 17
  %2245 = getelementptr inbounds %struct.Reg, %struct.Reg* %2244, i32 0, i32 0
  %R8.i999 = bitcast %union.anon* %2245 to i64*
  %2246 = load i64, i64* %RBP.i998
  %2247 = sub i64 %2246, 80
  %2248 = load i64, i64* %PC.i997
  %2249 = add i64 %2248, 4
  store i64 %2249, i64* %PC.i997
  %2250 = inttoptr i64 %2247 to i32*
  %2251 = load i32, i32* %2250
  %2252 = sext i32 %2251 to i64
  store i64 %2252, i64* %R8.i999, align 8
  store %struct.Memory* %loadMem_408162, %struct.Memory** %MEMORY
  %loadMem_408166 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2254 = getelementptr inbounds %struct.GPR, %struct.GPR* %2253, i32 0, i32 33
  %2255 = getelementptr inbounds %struct.Reg, %struct.Reg* %2254, i32 0, i32 0
  %PC.i993 = bitcast %union.anon* %2255 to i64*
  %2256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2257 = getelementptr inbounds %struct.GPR, %struct.GPR* %2256, i32 0, i32 5
  %2258 = getelementptr inbounds %struct.Reg, %struct.Reg* %2257, i32 0, i32 0
  %RCX.i994 = bitcast %union.anon* %2258 to i64*
  %2259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2260 = getelementptr inbounds %struct.GPR, %struct.GPR* %2259, i32 0, i32 7
  %2261 = getelementptr inbounds %struct.Reg, %struct.Reg* %2260, i32 0, i32 0
  %RDX.i995 = bitcast %union.anon* %2261 to i64*
  %2262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2263 = getelementptr inbounds %struct.GPR, %struct.GPR* %2262, i32 0, i32 17
  %2264 = getelementptr inbounds %struct.Reg, %struct.Reg* %2263, i32 0, i32 0
  %R8.i996 = bitcast %union.anon* %2264 to i64*
  %2265 = load i64, i64* %RCX.i994
  %2266 = load i64, i64* %RDX.i995
  %2267 = load i64, i64* %R8.i996
  %2268 = mul i64 %2267, 4
  %2269 = add i64 %2268, %2266
  %2270 = load i64, i64* %PC.i993
  %2271 = add i64 %2270, 4
  store i64 %2271, i64* %PC.i993
  %2272 = trunc i64 %2265 to i32
  %2273 = inttoptr i64 %2269 to i32*
  %2274 = load i32, i32* %2273
  %2275 = add i32 %2274, %2272
  %2276 = zext i32 %2275 to i64
  store i64 %2276, i64* %RCX.i994, align 8
  %2277 = icmp ult i32 %2275, %2272
  %2278 = icmp ult i32 %2275, %2274
  %2279 = or i1 %2277, %2278
  %2280 = zext i1 %2279 to i8
  %2281 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2280, i8* %2281, align 1
  %2282 = and i32 %2275, 255
  %2283 = call i32 @llvm.ctpop.i32(i32 %2282)
  %2284 = trunc i32 %2283 to i8
  %2285 = and i8 %2284, 1
  %2286 = xor i8 %2285, 1
  %2287 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2286, i8* %2287, align 1
  %2288 = xor i32 %2274, %2272
  %2289 = xor i32 %2288, %2275
  %2290 = lshr i32 %2289, 4
  %2291 = trunc i32 %2290 to i8
  %2292 = and i8 %2291, 1
  %2293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2292, i8* %2293, align 1
  %2294 = icmp eq i32 %2275, 0
  %2295 = zext i1 %2294 to i8
  %2296 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2295, i8* %2296, align 1
  %2297 = lshr i32 %2275, 31
  %2298 = trunc i32 %2297 to i8
  %2299 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2298, i8* %2299, align 1
  %2300 = lshr i32 %2272, 31
  %2301 = lshr i32 %2274, 31
  %2302 = xor i32 %2297, %2300
  %2303 = xor i32 %2297, %2301
  %2304 = add i32 %2302, %2303
  %2305 = icmp eq i32 %2304, 2
  %2306 = zext i1 %2305 to i8
  %2307 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2306, i8* %2307, align 1
  store %struct.Memory* %loadMem_408166, %struct.Memory** %MEMORY
  %loadMem_40816a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2309 = getelementptr inbounds %struct.GPR, %struct.GPR* %2308, i32 0, i32 33
  %2310 = getelementptr inbounds %struct.Reg, %struct.Reg* %2309, i32 0, i32 0
  %PC.i990 = bitcast %union.anon* %2310 to i64*
  %2311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2312 = getelementptr inbounds %struct.GPR, %struct.GPR* %2311, i32 0, i32 7
  %2313 = getelementptr inbounds %struct.Reg, %struct.Reg* %2312, i32 0, i32 0
  %RDX.i991 = bitcast %union.anon* %2313 to i64*
  %2314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2315 = getelementptr inbounds %struct.GPR, %struct.GPR* %2314, i32 0, i32 15
  %2316 = getelementptr inbounds %struct.Reg, %struct.Reg* %2315, i32 0, i32 0
  %RBP.i992 = bitcast %union.anon* %2316 to i64*
  %2317 = load i64, i64* %RBP.i992
  %2318 = sub i64 %2317, 72
  %2319 = load i64, i64* %PC.i990
  %2320 = add i64 %2319, 4
  store i64 %2320, i64* %PC.i990
  %2321 = inttoptr i64 %2318 to i64*
  %2322 = load i64, i64* %2321
  store i64 %2322, i64* %RDX.i991, align 8
  store %struct.Memory* %loadMem_40816a, %struct.Memory** %MEMORY
  %loadMem_40816e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2324 = getelementptr inbounds %struct.GPR, %struct.GPR* %2323, i32 0, i32 33
  %2325 = getelementptr inbounds %struct.Reg, %struct.Reg* %2324, i32 0, i32 0
  %PC.i987 = bitcast %union.anon* %2325 to i64*
  %2326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2327 = getelementptr inbounds %struct.GPR, %struct.GPR* %2326, i32 0, i32 9
  %2328 = getelementptr inbounds %struct.Reg, %struct.Reg* %2327, i32 0, i32 0
  %RSI.i988 = bitcast %union.anon* %2328 to i64*
  %2329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2330 = getelementptr inbounds %struct.GPR, %struct.GPR* %2329, i32 0, i32 15
  %2331 = getelementptr inbounds %struct.Reg, %struct.Reg* %2330, i32 0, i32 0
  %RBP.i989 = bitcast %union.anon* %2331 to i64*
  %2332 = load i64, i64* %RBP.i989
  %2333 = sub i64 %2332, 76
  %2334 = load i64, i64* %PC.i987
  %2335 = add i64 %2334, 3
  store i64 %2335, i64* %PC.i987
  %2336 = inttoptr i64 %2333 to i32*
  %2337 = load i32, i32* %2336
  %2338 = zext i32 %2337 to i64
  store i64 %2338, i64* %RSI.i988, align 8
  store %struct.Memory* %loadMem_40816e, %struct.Memory** %MEMORY
  %loadMem_408171 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2340 = getelementptr inbounds %struct.GPR, %struct.GPR* %2339, i32 0, i32 33
  %2341 = getelementptr inbounds %struct.Reg, %struct.Reg* %2340, i32 0, i32 0
  %PC.i985 = bitcast %union.anon* %2341 to i64*
  %2342 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2343 = getelementptr inbounds %struct.GPR, %struct.GPR* %2342, i32 0, i32 9
  %2344 = getelementptr inbounds %struct.Reg, %struct.Reg* %2343, i32 0, i32 0
  %RSI.i986 = bitcast %union.anon* %2344 to i64*
  %2345 = load i64, i64* %RSI.i986
  %2346 = load i64, i64* %PC.i985
  %2347 = add i64 %2346, 3
  store i64 %2347, i64* %PC.i985
  %2348 = trunc i64 %2345 to i32
  %2349 = sub i32 %2348, 1
  %2350 = zext i32 %2349 to i64
  store i64 %2350, i64* %RSI.i986, align 8
  %2351 = icmp ult i32 %2348, 1
  %2352 = zext i1 %2351 to i8
  %2353 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2352, i8* %2353, align 1
  %2354 = and i32 %2349, 255
  %2355 = call i32 @llvm.ctpop.i32(i32 %2354)
  %2356 = trunc i32 %2355 to i8
  %2357 = and i8 %2356, 1
  %2358 = xor i8 %2357, 1
  %2359 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2358, i8* %2359, align 1
  %2360 = xor i64 1, %2345
  %2361 = trunc i64 %2360 to i32
  %2362 = xor i32 %2361, %2349
  %2363 = lshr i32 %2362, 4
  %2364 = trunc i32 %2363 to i8
  %2365 = and i8 %2364, 1
  %2366 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2365, i8* %2366, align 1
  %2367 = icmp eq i32 %2349, 0
  %2368 = zext i1 %2367 to i8
  %2369 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2368, i8* %2369, align 1
  %2370 = lshr i32 %2349, 31
  %2371 = trunc i32 %2370 to i8
  %2372 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2371, i8* %2372, align 1
  %2373 = lshr i32 %2348, 31
  %2374 = xor i32 %2370, %2373
  %2375 = add i32 %2374, %2373
  %2376 = icmp eq i32 %2375, 2
  %2377 = zext i1 %2376 to i8
  %2378 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2377, i8* %2378, align 1
  store %struct.Memory* %loadMem_408171, %struct.Memory** %MEMORY
  %loadMem_408174 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2379 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2380 = getelementptr inbounds %struct.GPR, %struct.GPR* %2379, i32 0, i32 33
  %2381 = getelementptr inbounds %struct.Reg, %struct.Reg* %2380, i32 0, i32 0
  %PC.i982 = bitcast %union.anon* %2381 to i64*
  %2382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2383 = getelementptr inbounds %struct.GPR, %struct.GPR* %2382, i32 0, i32 9
  %2384 = getelementptr inbounds %struct.Reg, %struct.Reg* %2383, i32 0, i32 0
  %ESI.i983 = bitcast %union.anon* %2384 to i32*
  %2385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2386 = getelementptr inbounds %struct.GPR, %struct.GPR* %2385, i32 0, i32 17
  %2387 = getelementptr inbounds %struct.Reg, %struct.Reg* %2386, i32 0, i32 0
  %R8.i984 = bitcast %union.anon* %2387 to i64*
  %2388 = load i32, i32* %ESI.i983
  %2389 = zext i32 %2388 to i64
  %2390 = load i64, i64* %PC.i982
  %2391 = add i64 %2390, 3
  store i64 %2391, i64* %PC.i982
  %2392 = shl i64 %2389, 32
  %2393 = ashr exact i64 %2392, 32
  store i64 %2393, i64* %R8.i984, align 8
  store %struct.Memory* %loadMem_408174, %struct.Memory** %MEMORY
  %loadMem_408177 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2395 = getelementptr inbounds %struct.GPR, %struct.GPR* %2394, i32 0, i32 33
  %2396 = getelementptr inbounds %struct.Reg, %struct.Reg* %2395, i32 0, i32 0
  %PC.i979 = bitcast %union.anon* %2396 to i64*
  %2397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2398 = getelementptr inbounds %struct.GPR, %struct.GPR* %2397, i32 0, i32 7
  %2399 = getelementptr inbounds %struct.Reg, %struct.Reg* %2398, i32 0, i32 0
  %RDX.i980 = bitcast %union.anon* %2399 to i64*
  %2400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2401 = getelementptr inbounds %struct.GPR, %struct.GPR* %2400, i32 0, i32 17
  %2402 = getelementptr inbounds %struct.Reg, %struct.Reg* %2401, i32 0, i32 0
  %R8.i981 = bitcast %union.anon* %2402 to i64*
  %2403 = load i64, i64* %RDX.i980
  %2404 = load i64, i64* %R8.i981
  %2405 = mul i64 %2404, 8
  %2406 = add i64 %2405, %2403
  %2407 = load i64, i64* %PC.i979
  %2408 = add i64 %2407, 4
  store i64 %2408, i64* %PC.i979
  %2409 = inttoptr i64 %2406 to i64*
  %2410 = load i64, i64* %2409
  store i64 %2410, i64* %RDX.i980, align 8
  store %struct.Memory* %loadMem_408177, %struct.Memory** %MEMORY
  %loadMem_40817b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2412 = getelementptr inbounds %struct.GPR, %struct.GPR* %2411, i32 0, i32 33
  %2413 = getelementptr inbounds %struct.Reg, %struct.Reg* %2412, i32 0, i32 0
  %PC.i976 = bitcast %union.anon* %2413 to i64*
  %2414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2415 = getelementptr inbounds %struct.GPR, %struct.GPR* %2414, i32 0, i32 9
  %2416 = getelementptr inbounds %struct.Reg, %struct.Reg* %2415, i32 0, i32 0
  %RSI.i977 = bitcast %union.anon* %2416 to i64*
  %2417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2418 = getelementptr inbounds %struct.GPR, %struct.GPR* %2417, i32 0, i32 15
  %2419 = getelementptr inbounds %struct.Reg, %struct.Reg* %2418, i32 0, i32 0
  %RBP.i978 = bitcast %union.anon* %2419 to i64*
  %2420 = load i64, i64* %RBP.i978
  %2421 = sub i64 %2420, 80
  %2422 = load i64, i64* %PC.i976
  %2423 = add i64 %2422, 3
  store i64 %2423, i64* %PC.i976
  %2424 = inttoptr i64 %2421 to i32*
  %2425 = load i32, i32* %2424
  %2426 = zext i32 %2425 to i64
  store i64 %2426, i64* %RSI.i977, align 8
  store %struct.Memory* %loadMem_40817b, %struct.Memory** %MEMORY
  %loadMem_40817e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2428 = getelementptr inbounds %struct.GPR, %struct.GPR* %2427, i32 0, i32 33
  %2429 = getelementptr inbounds %struct.Reg, %struct.Reg* %2428, i32 0, i32 0
  %PC.i974 = bitcast %union.anon* %2429 to i64*
  %2430 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2431 = getelementptr inbounds %struct.GPR, %struct.GPR* %2430, i32 0, i32 9
  %2432 = getelementptr inbounds %struct.Reg, %struct.Reg* %2431, i32 0, i32 0
  %RSI.i975 = bitcast %union.anon* %2432 to i64*
  %2433 = load i64, i64* %RSI.i975
  %2434 = load i64, i64* %PC.i974
  %2435 = add i64 %2434, 3
  store i64 %2435, i64* %PC.i974
  %2436 = trunc i64 %2433 to i32
  %2437 = sub i32 %2436, 1
  %2438 = zext i32 %2437 to i64
  store i64 %2438, i64* %RSI.i975, align 8
  %2439 = icmp ult i32 %2436, 1
  %2440 = zext i1 %2439 to i8
  %2441 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2440, i8* %2441, align 1
  %2442 = and i32 %2437, 255
  %2443 = call i32 @llvm.ctpop.i32(i32 %2442)
  %2444 = trunc i32 %2443 to i8
  %2445 = and i8 %2444, 1
  %2446 = xor i8 %2445, 1
  %2447 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2446, i8* %2447, align 1
  %2448 = xor i64 1, %2433
  %2449 = trunc i64 %2448 to i32
  %2450 = xor i32 %2449, %2437
  %2451 = lshr i32 %2450, 4
  %2452 = trunc i32 %2451 to i8
  %2453 = and i8 %2452, 1
  %2454 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2453, i8* %2454, align 1
  %2455 = icmp eq i32 %2437, 0
  %2456 = zext i1 %2455 to i8
  %2457 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2456, i8* %2457, align 1
  %2458 = lshr i32 %2437, 31
  %2459 = trunc i32 %2458 to i8
  %2460 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2459, i8* %2460, align 1
  %2461 = lshr i32 %2436, 31
  %2462 = xor i32 %2458, %2461
  %2463 = add i32 %2462, %2461
  %2464 = icmp eq i32 %2463, 2
  %2465 = zext i1 %2464 to i8
  %2466 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2465, i8* %2466, align 1
  store %struct.Memory* %loadMem_40817e, %struct.Memory** %MEMORY
  %loadMem_408181 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2468 = getelementptr inbounds %struct.GPR, %struct.GPR* %2467, i32 0, i32 33
  %2469 = getelementptr inbounds %struct.Reg, %struct.Reg* %2468, i32 0, i32 0
  %PC.i971 = bitcast %union.anon* %2469 to i64*
  %2470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2471 = getelementptr inbounds %struct.GPR, %struct.GPR* %2470, i32 0, i32 9
  %2472 = getelementptr inbounds %struct.Reg, %struct.Reg* %2471, i32 0, i32 0
  %ESI.i972 = bitcast %union.anon* %2472 to i32*
  %2473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2474 = getelementptr inbounds %struct.GPR, %struct.GPR* %2473, i32 0, i32 17
  %2475 = getelementptr inbounds %struct.Reg, %struct.Reg* %2474, i32 0, i32 0
  %R8.i973 = bitcast %union.anon* %2475 to i64*
  %2476 = load i32, i32* %ESI.i972
  %2477 = zext i32 %2476 to i64
  %2478 = load i64, i64* %PC.i971
  %2479 = add i64 %2478, 3
  store i64 %2479, i64* %PC.i971
  %2480 = shl i64 %2477, 32
  %2481 = ashr exact i64 %2480, 32
  store i64 %2481, i64* %R8.i973, align 8
  store %struct.Memory* %loadMem_408181, %struct.Memory** %MEMORY
  %loadMem_408184 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2482 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2483 = getelementptr inbounds %struct.GPR, %struct.GPR* %2482, i32 0, i32 33
  %2484 = getelementptr inbounds %struct.Reg, %struct.Reg* %2483, i32 0, i32 0
  %PC.i967 = bitcast %union.anon* %2484 to i64*
  %2485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2486 = getelementptr inbounds %struct.GPR, %struct.GPR* %2485, i32 0, i32 7
  %2487 = getelementptr inbounds %struct.Reg, %struct.Reg* %2486, i32 0, i32 0
  %RDX.i968 = bitcast %union.anon* %2487 to i64*
  %2488 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2489 = getelementptr inbounds %struct.GPR, %struct.GPR* %2488, i32 0, i32 9
  %2490 = getelementptr inbounds %struct.Reg, %struct.Reg* %2489, i32 0, i32 0
  %RSI.i969 = bitcast %union.anon* %2490 to i64*
  %2491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2492 = getelementptr inbounds %struct.GPR, %struct.GPR* %2491, i32 0, i32 17
  %2493 = getelementptr inbounds %struct.Reg, %struct.Reg* %2492, i32 0, i32 0
  %R8.i970 = bitcast %union.anon* %2493 to i64*
  %2494 = load i64, i64* %RDX.i968
  %2495 = load i64, i64* %R8.i970
  %2496 = mul i64 %2495, 4
  %2497 = add i64 %2496, %2494
  %2498 = load i64, i64* %PC.i967
  %2499 = add i64 %2498, 4
  store i64 %2499, i64* %PC.i967
  %2500 = inttoptr i64 %2497 to i32*
  %2501 = load i32, i32* %2500
  %2502 = zext i32 %2501 to i64
  store i64 %2502, i64* %RSI.i969, align 8
  store %struct.Memory* %loadMem_408184, %struct.Memory** %MEMORY
  %loadMem_408188 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2504 = getelementptr inbounds %struct.GPR, %struct.GPR* %2503, i32 0, i32 33
  %2505 = getelementptr inbounds %struct.Reg, %struct.Reg* %2504, i32 0, i32 0
  %PC.i964 = bitcast %union.anon* %2505 to i64*
  %2506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2507 = getelementptr inbounds %struct.GPR, %struct.GPR* %2506, i32 0, i32 7
  %2508 = getelementptr inbounds %struct.Reg, %struct.Reg* %2507, i32 0, i32 0
  %RDX.i965 = bitcast %union.anon* %2508 to i64*
  %2509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2510 = getelementptr inbounds %struct.GPR, %struct.GPR* %2509, i32 0, i32 15
  %2511 = getelementptr inbounds %struct.Reg, %struct.Reg* %2510, i32 0, i32 0
  %RBP.i966 = bitcast %union.anon* %2511 to i64*
  %2512 = load i64, i64* %RBP.i966
  %2513 = sub i64 %2512, 24
  %2514 = load i64, i64* %PC.i964
  %2515 = add i64 %2514, 4
  store i64 %2515, i64* %PC.i964
  %2516 = inttoptr i64 %2513 to i64*
  %2517 = load i64, i64* %2516
  store i64 %2517, i64* %RDX.i965, align 8
  store %struct.Memory* %loadMem_408188, %struct.Memory** %MEMORY
  %loadMem_40818c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2518 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2519 = getelementptr inbounds %struct.GPR, %struct.GPR* %2518, i32 0, i32 33
  %2520 = getelementptr inbounds %struct.Reg, %struct.Reg* %2519, i32 0, i32 0
  %PC.i962 = bitcast %union.anon* %2520 to i64*
  %2521 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2522 = getelementptr inbounds %struct.GPR, %struct.GPR* %2521, i32 0, i32 7
  %2523 = getelementptr inbounds %struct.Reg, %struct.Reg* %2522, i32 0, i32 0
  %RDX.i963 = bitcast %union.anon* %2523 to i64*
  %2524 = load i64, i64* %RDX.i963
  %2525 = add i64 %2524, 312
  %2526 = load i64, i64* %PC.i962
  %2527 = add i64 %2526, 7
  store i64 %2527, i64* %PC.i962
  %2528 = inttoptr i64 %2525 to i64*
  %2529 = load i64, i64* %2528
  store i64 %2529, i64* %RDX.i963, align 8
  store %struct.Memory* %loadMem_40818c, %struct.Memory** %MEMORY
  %loadMem_408193 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2531 = getelementptr inbounds %struct.GPR, %struct.GPR* %2530, i32 0, i32 33
  %2532 = getelementptr inbounds %struct.Reg, %struct.Reg* %2531, i32 0, i32 0
  %PC.i960 = bitcast %union.anon* %2532 to i64*
  %2533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2534 = getelementptr inbounds %struct.GPR, %struct.GPR* %2533, i32 0, i32 7
  %2535 = getelementptr inbounds %struct.Reg, %struct.Reg* %2534, i32 0, i32 0
  %RDX.i961 = bitcast %union.anon* %2535 to i64*
  %2536 = load i64, i64* %RDX.i961
  %2537 = add i64 %2536, 40
  %2538 = load i64, i64* %PC.i960
  %2539 = add i64 %2538, 4
  store i64 %2539, i64* %PC.i960
  %2540 = inttoptr i64 %2537 to i64*
  %2541 = load i64, i64* %2540
  store i64 %2541, i64* %RDX.i961, align 8
  store %struct.Memory* %loadMem_408193, %struct.Memory** %MEMORY
  %loadMem_408197 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2543 = getelementptr inbounds %struct.GPR, %struct.GPR* %2542, i32 0, i32 33
  %2544 = getelementptr inbounds %struct.Reg, %struct.Reg* %2543, i32 0, i32 0
  %PC.i957 = bitcast %union.anon* %2544 to i64*
  %2545 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2546 = getelementptr inbounds %struct.GPR, %struct.GPR* %2545, i32 0, i32 11
  %2547 = getelementptr inbounds %struct.Reg, %struct.Reg* %2546, i32 0, i32 0
  %RDI.i958 = bitcast %union.anon* %2547 to i64*
  %2548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2549 = getelementptr inbounds %struct.GPR, %struct.GPR* %2548, i32 0, i32 15
  %2550 = getelementptr inbounds %struct.Reg, %struct.Reg* %2549, i32 0, i32 0
  %RBP.i959 = bitcast %union.anon* %2550 to i64*
  %2551 = load i64, i64* %RBP.i959
  %2552 = sub i64 %2551, 80
  %2553 = load i64, i64* %PC.i957
  %2554 = add i64 %2553, 3
  store i64 %2554, i64* %PC.i957
  %2555 = inttoptr i64 %2552 to i32*
  %2556 = load i32, i32* %2555
  %2557 = zext i32 %2556 to i64
  store i64 %2557, i64* %RDI.i958, align 8
  store %struct.Memory* %loadMem_408197, %struct.Memory** %MEMORY
  %loadMem_40819a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2559 = getelementptr inbounds %struct.GPR, %struct.GPR* %2558, i32 0, i32 33
  %2560 = getelementptr inbounds %struct.Reg, %struct.Reg* %2559, i32 0, i32 0
  %PC.i955 = bitcast %union.anon* %2560 to i64*
  %2561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2562 = getelementptr inbounds %struct.GPR, %struct.GPR* %2561, i32 0, i32 11
  %2563 = getelementptr inbounds %struct.Reg, %struct.Reg* %2562, i32 0, i32 0
  %RDI.i956 = bitcast %union.anon* %2563 to i64*
  %2564 = load i64, i64* %RDI.i956
  %2565 = load i64, i64* %PC.i955
  %2566 = add i64 %2565, 3
  store i64 %2566, i64* %PC.i955
  %2567 = trunc i64 %2564 to i32
  %2568 = sub i32 %2567, 1
  %2569 = zext i32 %2568 to i64
  store i64 %2569, i64* %RDI.i956, align 8
  %2570 = icmp ult i32 %2567, 1
  %2571 = zext i1 %2570 to i8
  %2572 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2571, i8* %2572, align 1
  %2573 = and i32 %2568, 255
  %2574 = call i32 @llvm.ctpop.i32(i32 %2573)
  %2575 = trunc i32 %2574 to i8
  %2576 = and i8 %2575, 1
  %2577 = xor i8 %2576, 1
  %2578 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2577, i8* %2578, align 1
  %2579 = xor i64 1, %2564
  %2580 = trunc i64 %2579 to i32
  %2581 = xor i32 %2580, %2568
  %2582 = lshr i32 %2581, 4
  %2583 = trunc i32 %2582 to i8
  %2584 = and i8 %2583, 1
  %2585 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2584, i8* %2585, align 1
  %2586 = icmp eq i32 %2568, 0
  %2587 = zext i1 %2586 to i8
  %2588 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2587, i8* %2588, align 1
  %2589 = lshr i32 %2568, 31
  %2590 = trunc i32 %2589 to i8
  %2591 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2590, i8* %2591, align 1
  %2592 = lshr i32 %2567, 31
  %2593 = xor i32 %2589, %2592
  %2594 = add i32 %2593, %2592
  %2595 = icmp eq i32 %2594, 2
  %2596 = zext i1 %2595 to i8
  %2597 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2596, i8* %2597, align 1
  store %struct.Memory* %loadMem_40819a, %struct.Memory** %MEMORY
  %loadMem_40819d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2599 = getelementptr inbounds %struct.GPR, %struct.GPR* %2598, i32 0, i32 33
  %2600 = getelementptr inbounds %struct.Reg, %struct.Reg* %2599, i32 0, i32 0
  %PC.i952 = bitcast %union.anon* %2600 to i64*
  %2601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2602 = getelementptr inbounds %struct.GPR, %struct.GPR* %2601, i32 0, i32 11
  %2603 = getelementptr inbounds %struct.Reg, %struct.Reg* %2602, i32 0, i32 0
  %EDI.i953 = bitcast %union.anon* %2603 to i32*
  %2604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2605 = getelementptr inbounds %struct.GPR, %struct.GPR* %2604, i32 0, i32 17
  %2606 = getelementptr inbounds %struct.Reg, %struct.Reg* %2605, i32 0, i32 0
  %R8.i954 = bitcast %union.anon* %2606 to i64*
  %2607 = load i32, i32* %EDI.i953
  %2608 = zext i32 %2607 to i64
  %2609 = load i64, i64* %PC.i952
  %2610 = add i64 %2609, 3
  store i64 %2610, i64* %PC.i952
  %2611 = shl i64 %2608, 32
  %2612 = ashr exact i64 %2611, 32
  store i64 %2612, i64* %R8.i954, align 8
  store %struct.Memory* %loadMem_40819d, %struct.Memory** %MEMORY
  %loadMem_4081a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2613 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2614 = getelementptr inbounds %struct.GPR, %struct.GPR* %2613, i32 0, i32 33
  %2615 = getelementptr inbounds %struct.Reg, %struct.Reg* %2614, i32 0, i32 0
  %PC.i948 = bitcast %union.anon* %2615 to i64*
  %2616 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2617 = getelementptr inbounds %struct.GPR, %struct.GPR* %2616, i32 0, i32 7
  %2618 = getelementptr inbounds %struct.Reg, %struct.Reg* %2617, i32 0, i32 0
  %RDX.i949 = bitcast %union.anon* %2618 to i64*
  %2619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2620 = getelementptr inbounds %struct.GPR, %struct.GPR* %2619, i32 0, i32 9
  %2621 = getelementptr inbounds %struct.Reg, %struct.Reg* %2620, i32 0, i32 0
  %RSI.i950 = bitcast %union.anon* %2621 to i64*
  %2622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2623 = getelementptr inbounds %struct.GPR, %struct.GPR* %2622, i32 0, i32 17
  %2624 = getelementptr inbounds %struct.Reg, %struct.Reg* %2623, i32 0, i32 0
  %R8.i951 = bitcast %union.anon* %2624 to i64*
  %2625 = load i64, i64* %RSI.i950
  %2626 = load i64, i64* %RDX.i949
  %2627 = load i64, i64* %R8.i951
  %2628 = mul i64 %2627, 4
  %2629 = add i64 %2628, %2626
  %2630 = load i64, i64* %PC.i948
  %2631 = add i64 %2630, 4
  store i64 %2631, i64* %PC.i948
  %2632 = trunc i64 %2625 to i32
  %2633 = inttoptr i64 %2629 to i32*
  %2634 = load i32, i32* %2633
  %2635 = add i32 %2634, %2632
  %2636 = zext i32 %2635 to i64
  store i64 %2636, i64* %RSI.i950, align 8
  %2637 = icmp ult i32 %2635, %2632
  %2638 = icmp ult i32 %2635, %2634
  %2639 = or i1 %2637, %2638
  %2640 = zext i1 %2639 to i8
  %2641 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2640, i8* %2641, align 1
  %2642 = and i32 %2635, 255
  %2643 = call i32 @llvm.ctpop.i32(i32 %2642)
  %2644 = trunc i32 %2643 to i8
  %2645 = and i8 %2644, 1
  %2646 = xor i8 %2645, 1
  %2647 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2646, i8* %2647, align 1
  %2648 = xor i32 %2634, %2632
  %2649 = xor i32 %2648, %2635
  %2650 = lshr i32 %2649, 4
  %2651 = trunc i32 %2650 to i8
  %2652 = and i8 %2651, 1
  %2653 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2652, i8* %2653, align 1
  %2654 = icmp eq i32 %2635, 0
  %2655 = zext i1 %2654 to i8
  %2656 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2655, i8* %2656, align 1
  %2657 = lshr i32 %2635, 31
  %2658 = trunc i32 %2657 to i8
  %2659 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2658, i8* %2659, align 1
  %2660 = lshr i32 %2632, 31
  %2661 = lshr i32 %2634, 31
  %2662 = xor i32 %2657, %2660
  %2663 = xor i32 %2657, %2661
  %2664 = add i32 %2662, %2663
  %2665 = icmp eq i32 %2664, 2
  %2666 = zext i1 %2665 to i8
  %2667 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2666, i8* %2667, align 1
  store %struct.Memory* %loadMem_4081a0, %struct.Memory** %MEMORY
  %loadMem_4081a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2668 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2669 = getelementptr inbounds %struct.GPR, %struct.GPR* %2668, i32 0, i32 33
  %2670 = getelementptr inbounds %struct.Reg, %struct.Reg* %2669, i32 0, i32 0
  %PC.i945 = bitcast %union.anon* %2670 to i64*
  %2671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2672 = getelementptr inbounds %struct.GPR, %struct.GPR* %2671, i32 0, i32 5
  %2673 = getelementptr inbounds %struct.Reg, %struct.Reg* %2672, i32 0, i32 0
  %ECX.i946 = bitcast %union.anon* %2673 to i32*
  %2674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2675 = getelementptr inbounds %struct.GPR, %struct.GPR* %2674, i32 0, i32 11
  %2676 = getelementptr inbounds %struct.Reg, %struct.Reg* %2675, i32 0, i32 0
  %RDI.i947 = bitcast %union.anon* %2676 to i64*
  %2677 = load i32, i32* %ECX.i946
  %2678 = zext i32 %2677 to i64
  %2679 = load i64, i64* %PC.i945
  %2680 = add i64 %2679, 2
  store i64 %2680, i64* %PC.i945
  %2681 = and i64 %2678, 4294967295
  store i64 %2681, i64* %RDI.i947, align 8
  store %struct.Memory* %loadMem_4081a4, %struct.Memory** %MEMORY
  %loadMem_4081a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2682 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2683 = getelementptr inbounds %struct.GPR, %struct.GPR* %2682, i32 0, i32 33
  %2684 = getelementptr inbounds %struct.Reg, %struct.Reg* %2683, i32 0, i32 0
  %PC.i942 = bitcast %union.anon* %2684 to i64*
  %2685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2686 = getelementptr inbounds %struct.GPR, %struct.GPR* %2685, i32 0, i32 1
  %2687 = getelementptr inbounds %struct.Reg, %struct.Reg* %2686, i32 0, i32 0
  %EAX.i943 = bitcast %union.anon* %2687 to i32*
  %2688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2689 = getelementptr inbounds %struct.GPR, %struct.GPR* %2688, i32 0, i32 15
  %2690 = getelementptr inbounds %struct.Reg, %struct.Reg* %2689, i32 0, i32 0
  %RBP.i944 = bitcast %union.anon* %2690 to i64*
  %2691 = load i64, i64* %RBP.i944
  %2692 = sub i64 %2691, 88
  %2693 = load i32, i32* %EAX.i943
  %2694 = zext i32 %2693 to i64
  %2695 = load i64, i64* %PC.i942
  %2696 = add i64 %2695, 3
  store i64 %2696, i64* %PC.i942
  %2697 = inttoptr i64 %2692 to i32*
  store i32 %2693, i32* %2697
  store %struct.Memory* %loadMem_4081a6, %struct.Memory** %MEMORY
  %loadMem1_4081a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2699 = getelementptr inbounds %struct.GPR, %struct.GPR* %2698, i32 0, i32 33
  %2700 = getelementptr inbounds %struct.Reg, %struct.Reg* %2699, i32 0, i32 0
  %PC.i941 = bitcast %union.anon* %2700 to i64*
  %2701 = load i64, i64* %PC.i941
  %2702 = add i64 %2701, 131079
  %2703 = load i64, i64* %PC.i941
  %2704 = add i64 %2703, 5
  %2705 = load i64, i64* %PC.i941
  %2706 = add i64 %2705, 5
  store i64 %2706, i64* %PC.i941
  %2707 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2708 = load i64, i64* %2707, align 8
  %2709 = add i64 %2708, -8
  %2710 = inttoptr i64 %2709 to i64*
  store i64 %2704, i64* %2710
  store i64 %2709, i64* %2707, align 8
  %2711 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2702, i64* %2711, align 8
  store %struct.Memory* %loadMem1_4081a9, %struct.Memory** %MEMORY
  %loadMem2_4081a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4081a9 = load i64, i64* %3
  %call2_4081a9 = call %struct.Memory* @sub_4281b0.ILogsum(%struct.State* %0, i64 %loadPC_4081a9, %struct.Memory* %loadMem2_4081a9)
  store %struct.Memory* %call2_4081a9, %struct.Memory** %MEMORY
  %loadMem_4081ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %2712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2713 = getelementptr inbounds %struct.GPR, %struct.GPR* %2712, i32 0, i32 33
  %2714 = getelementptr inbounds %struct.Reg, %struct.Reg* %2713, i32 0, i32 0
  %PC.i938 = bitcast %union.anon* %2714 to i64*
  %2715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2716 = getelementptr inbounds %struct.GPR, %struct.GPR* %2715, i32 0, i32 11
  %2717 = getelementptr inbounds %struct.Reg, %struct.Reg* %2716, i32 0, i32 0
  %RDI.i939 = bitcast %union.anon* %2717 to i64*
  %2718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2719 = getelementptr inbounds %struct.GPR, %struct.GPR* %2718, i32 0, i32 15
  %2720 = getelementptr inbounds %struct.Reg, %struct.Reg* %2719, i32 0, i32 0
  %RBP.i940 = bitcast %union.anon* %2720 to i64*
  %2721 = load i64, i64* %RBP.i940
  %2722 = sub i64 %2721, 88
  %2723 = load i64, i64* %PC.i938
  %2724 = add i64 %2723, 3
  store i64 %2724, i64* %PC.i938
  %2725 = inttoptr i64 %2722 to i32*
  %2726 = load i32, i32* %2725
  %2727 = zext i32 %2726 to i64
  store i64 %2727, i64* %RDI.i939, align 8
  store %struct.Memory* %loadMem_4081ae, %struct.Memory** %MEMORY
  %loadMem_4081b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2729 = getelementptr inbounds %struct.GPR, %struct.GPR* %2728, i32 0, i32 33
  %2730 = getelementptr inbounds %struct.Reg, %struct.Reg* %2729, i32 0, i32 0
  %PC.i935 = bitcast %union.anon* %2730 to i64*
  %2731 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2732 = getelementptr inbounds %struct.GPR, %struct.GPR* %2731, i32 0, i32 1
  %2733 = getelementptr inbounds %struct.Reg, %struct.Reg* %2732, i32 0, i32 0
  %EAX.i936 = bitcast %union.anon* %2733 to i32*
  %2734 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2735 = getelementptr inbounds %struct.GPR, %struct.GPR* %2734, i32 0, i32 9
  %2736 = getelementptr inbounds %struct.Reg, %struct.Reg* %2735, i32 0, i32 0
  %RSI.i937 = bitcast %union.anon* %2736 to i64*
  %2737 = load i32, i32* %EAX.i936
  %2738 = zext i32 %2737 to i64
  %2739 = load i64, i64* %PC.i935
  %2740 = add i64 %2739, 2
  store i64 %2740, i64* %PC.i935
  %2741 = and i64 %2738, 4294967295
  store i64 %2741, i64* %RSI.i937, align 8
  store %struct.Memory* %loadMem_4081b1, %struct.Memory** %MEMORY
  %loadMem1_4081b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2743 = getelementptr inbounds %struct.GPR, %struct.GPR* %2742, i32 0, i32 33
  %2744 = getelementptr inbounds %struct.Reg, %struct.Reg* %2743, i32 0, i32 0
  %PC.i934 = bitcast %union.anon* %2744 to i64*
  %2745 = load i64, i64* %PC.i934
  %2746 = add i64 %2745, 131069
  %2747 = load i64, i64* %PC.i934
  %2748 = add i64 %2747, 5
  %2749 = load i64, i64* %PC.i934
  %2750 = add i64 %2749, 5
  store i64 %2750, i64* %PC.i934
  %2751 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2752 = load i64, i64* %2751, align 8
  %2753 = add i64 %2752, -8
  %2754 = inttoptr i64 %2753 to i64*
  store i64 %2748, i64* %2754
  store i64 %2753, i64* %2751, align 8
  %2755 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2746, i64* %2755, align 8
  store %struct.Memory* %loadMem1_4081b3, %struct.Memory** %MEMORY
  %loadMem2_4081b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4081b3 = load i64, i64* %3
  %call2_4081b3 = call %struct.Memory* @sub_4281b0.ILogsum(%struct.State* %0, i64 %loadPC_4081b3, %struct.Memory* %loadMem2_4081b3)
  store %struct.Memory* %call2_4081b3, %struct.Memory** %MEMORY
  %loadMem_4081b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2756 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2757 = getelementptr inbounds %struct.GPR, %struct.GPR* %2756, i32 0, i32 33
  %2758 = getelementptr inbounds %struct.Reg, %struct.Reg* %2757, i32 0, i32 0
  %PC.i931 = bitcast %union.anon* %2758 to i64*
  %2759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2760 = getelementptr inbounds %struct.GPR, %struct.GPR* %2759, i32 0, i32 7
  %2761 = getelementptr inbounds %struct.Reg, %struct.Reg* %2760, i32 0, i32 0
  %RDX.i932 = bitcast %union.anon* %2761 to i64*
  %2762 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2763 = getelementptr inbounds %struct.GPR, %struct.GPR* %2762, i32 0, i32 15
  %2764 = getelementptr inbounds %struct.Reg, %struct.Reg* %2763, i32 0, i32 0
  %RBP.i933 = bitcast %union.anon* %2764 to i64*
  %2765 = load i64, i64* %RBP.i933
  %2766 = sub i64 %2765, 56
  %2767 = load i64, i64* %PC.i931
  %2768 = add i64 %2767, 4
  store i64 %2768, i64* %PC.i931
  %2769 = inttoptr i64 %2766 to i64*
  %2770 = load i64, i64* %2769
  store i64 %2770, i64* %RDX.i932, align 8
  store %struct.Memory* %loadMem_4081b8, %struct.Memory** %MEMORY
  %loadMem_4081bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2771 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2772 = getelementptr inbounds %struct.GPR, %struct.GPR* %2771, i32 0, i32 33
  %2773 = getelementptr inbounds %struct.Reg, %struct.Reg* %2772, i32 0, i32 0
  %PC.i928 = bitcast %union.anon* %2773 to i64*
  %2774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2775 = getelementptr inbounds %struct.GPR, %struct.GPR* %2774, i32 0, i32 15
  %2776 = getelementptr inbounds %struct.Reg, %struct.Reg* %2775, i32 0, i32 0
  %RBP.i929 = bitcast %union.anon* %2776 to i64*
  %2777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2778 = getelementptr inbounds %struct.GPR, %struct.GPR* %2777, i32 0, i32 17
  %2779 = getelementptr inbounds %struct.Reg, %struct.Reg* %2778, i32 0, i32 0
  %R8.i930 = bitcast %union.anon* %2779 to i64*
  %2780 = load i64, i64* %RBP.i929
  %2781 = sub i64 %2780, 76
  %2782 = load i64, i64* %PC.i928
  %2783 = add i64 %2782, 4
  store i64 %2783, i64* %PC.i928
  %2784 = inttoptr i64 %2781 to i32*
  %2785 = load i32, i32* %2784
  %2786 = sext i32 %2785 to i64
  store i64 %2786, i64* %R8.i930, align 8
  store %struct.Memory* %loadMem_4081bc, %struct.Memory** %MEMORY
  %loadMem_4081c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2788 = getelementptr inbounds %struct.GPR, %struct.GPR* %2787, i32 0, i32 33
  %2789 = getelementptr inbounds %struct.Reg, %struct.Reg* %2788, i32 0, i32 0
  %PC.i925 = bitcast %union.anon* %2789 to i64*
  %2790 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2791 = getelementptr inbounds %struct.GPR, %struct.GPR* %2790, i32 0, i32 7
  %2792 = getelementptr inbounds %struct.Reg, %struct.Reg* %2791, i32 0, i32 0
  %RDX.i926 = bitcast %union.anon* %2792 to i64*
  %2793 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2794 = getelementptr inbounds %struct.GPR, %struct.GPR* %2793, i32 0, i32 17
  %2795 = getelementptr inbounds %struct.Reg, %struct.Reg* %2794, i32 0, i32 0
  %R8.i927 = bitcast %union.anon* %2795 to i64*
  %2796 = load i64, i64* %RDX.i926
  %2797 = load i64, i64* %R8.i927
  %2798 = mul i64 %2797, 8
  %2799 = add i64 %2798, %2796
  %2800 = load i64, i64* %PC.i925
  %2801 = add i64 %2800, 4
  store i64 %2801, i64* %PC.i925
  %2802 = inttoptr i64 %2799 to i64*
  %2803 = load i64, i64* %2802
  store i64 %2803, i64* %RDX.i926, align 8
  store %struct.Memory* %loadMem_4081c0, %struct.Memory** %MEMORY
  %loadMem_4081c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2804 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2805 = getelementptr inbounds %struct.GPR, %struct.GPR* %2804, i32 0, i32 33
  %2806 = getelementptr inbounds %struct.Reg, %struct.Reg* %2805, i32 0, i32 0
  %PC.i922 = bitcast %union.anon* %2806 to i64*
  %2807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2808 = getelementptr inbounds %struct.GPR, %struct.GPR* %2807, i32 0, i32 15
  %2809 = getelementptr inbounds %struct.Reg, %struct.Reg* %2808, i32 0, i32 0
  %RBP.i923 = bitcast %union.anon* %2809 to i64*
  %2810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2811 = getelementptr inbounds %struct.GPR, %struct.GPR* %2810, i32 0, i32 17
  %2812 = getelementptr inbounds %struct.Reg, %struct.Reg* %2811, i32 0, i32 0
  %R8.i924 = bitcast %union.anon* %2812 to i64*
  %2813 = load i64, i64* %RBP.i923
  %2814 = sub i64 %2813, 80
  %2815 = load i64, i64* %PC.i922
  %2816 = add i64 %2815, 4
  store i64 %2816, i64* %PC.i922
  %2817 = inttoptr i64 %2814 to i32*
  %2818 = load i32, i32* %2817
  %2819 = sext i32 %2818 to i64
  store i64 %2819, i64* %R8.i924, align 8
  store %struct.Memory* %loadMem_4081c4, %struct.Memory** %MEMORY
  %loadMem_4081c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2821 = getelementptr inbounds %struct.GPR, %struct.GPR* %2820, i32 0, i32 33
  %2822 = getelementptr inbounds %struct.Reg, %struct.Reg* %2821, i32 0, i32 0
  %PC.i918 = bitcast %union.anon* %2822 to i64*
  %2823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2824 = getelementptr inbounds %struct.GPR, %struct.GPR* %2823, i32 0, i32 1
  %2825 = getelementptr inbounds %struct.Reg, %struct.Reg* %2824, i32 0, i32 0
  %EAX.i919 = bitcast %union.anon* %2825 to i32*
  %2826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2827 = getelementptr inbounds %struct.GPR, %struct.GPR* %2826, i32 0, i32 7
  %2828 = getelementptr inbounds %struct.Reg, %struct.Reg* %2827, i32 0, i32 0
  %RDX.i920 = bitcast %union.anon* %2828 to i64*
  %2829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2830 = getelementptr inbounds %struct.GPR, %struct.GPR* %2829, i32 0, i32 17
  %2831 = getelementptr inbounds %struct.Reg, %struct.Reg* %2830, i32 0, i32 0
  %R8.i921 = bitcast %union.anon* %2831 to i64*
  %2832 = load i64, i64* %RDX.i920
  %2833 = load i64, i64* %R8.i921
  %2834 = mul i64 %2833, 4
  %2835 = add i64 %2834, %2832
  %2836 = load i32, i32* %EAX.i919
  %2837 = zext i32 %2836 to i64
  %2838 = load i64, i64* %PC.i918
  %2839 = add i64 %2838, 4
  store i64 %2839, i64* %PC.i918
  %2840 = inttoptr i64 %2835 to i32*
  store i32 %2836, i32* %2840
  store %struct.Memory* %loadMem_4081c8, %struct.Memory** %MEMORY
  %loadMem_4081cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2842 = getelementptr inbounds %struct.GPR, %struct.GPR* %2841, i32 0, i32 33
  %2843 = getelementptr inbounds %struct.Reg, %struct.Reg* %2842, i32 0, i32 0
  %PC.i915 = bitcast %union.anon* %2843 to i64*
  %2844 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2845 = getelementptr inbounds %struct.GPR, %struct.GPR* %2844, i32 0, i32 7
  %2846 = getelementptr inbounds %struct.Reg, %struct.Reg* %2845, i32 0, i32 0
  %RDX.i916 = bitcast %union.anon* %2846 to i64*
  %2847 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2848 = getelementptr inbounds %struct.GPR, %struct.GPR* %2847, i32 0, i32 15
  %2849 = getelementptr inbounds %struct.Reg, %struct.Reg* %2848, i32 0, i32 0
  %RBP.i917 = bitcast %union.anon* %2849 to i64*
  %2850 = load i64, i64* %RBP.i917
  %2851 = sub i64 %2850, 24
  %2852 = load i64, i64* %PC.i915
  %2853 = add i64 %2852, 4
  store i64 %2853, i64* %PC.i915
  %2854 = inttoptr i64 %2851 to i64*
  %2855 = load i64, i64* %2854
  store i64 %2855, i64* %RDX.i916, align 8
  store %struct.Memory* %loadMem_4081cc, %struct.Memory** %MEMORY
  %loadMem_4081d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2856 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2857 = getelementptr inbounds %struct.GPR, %struct.GPR* %2856, i32 0, i32 33
  %2858 = getelementptr inbounds %struct.Reg, %struct.Reg* %2857, i32 0, i32 0
  %PC.i913 = bitcast %union.anon* %2858 to i64*
  %2859 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2860 = getelementptr inbounds %struct.GPR, %struct.GPR* %2859, i32 0, i32 7
  %2861 = getelementptr inbounds %struct.Reg, %struct.Reg* %2860, i32 0, i32 0
  %RDX.i914 = bitcast %union.anon* %2861 to i64*
  %2862 = load i64, i64* %RDX.i914
  %2863 = add i64 %2862, 320
  %2864 = load i64, i64* %PC.i913
  %2865 = add i64 %2864, 7
  store i64 %2865, i64* %PC.i913
  %2866 = inttoptr i64 %2863 to i64*
  %2867 = load i64, i64* %2866
  store i64 %2867, i64* %RDX.i914, align 8
  store %struct.Memory* %loadMem_4081d0, %struct.Memory** %MEMORY
  %loadMem_4081d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2868 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2869 = getelementptr inbounds %struct.GPR, %struct.GPR* %2868, i32 0, i32 33
  %2870 = getelementptr inbounds %struct.Reg, %struct.Reg* %2869, i32 0, i32 0
  %PC.i910 = bitcast %union.anon* %2870 to i64*
  %2871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2872 = getelementptr inbounds %struct.GPR, %struct.GPR* %2871, i32 0, i32 15
  %2873 = getelementptr inbounds %struct.Reg, %struct.Reg* %2872, i32 0, i32 0
  %RBP.i911 = bitcast %union.anon* %2873 to i64*
  %2874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2875 = getelementptr inbounds %struct.GPR, %struct.GPR* %2874, i32 0, i32 17
  %2876 = getelementptr inbounds %struct.Reg, %struct.Reg* %2875, i32 0, i32 0
  %R8.i912 = bitcast %union.anon* %2876 to i64*
  %2877 = load i64, i64* %RBP.i911
  %2878 = sub i64 %2877, 8
  %2879 = load i64, i64* %PC.i910
  %2880 = add i64 %2879, 4
  store i64 %2880, i64* %PC.i910
  %2881 = inttoptr i64 %2878 to i64*
  %2882 = load i64, i64* %2881
  store i64 %2882, i64* %R8.i912, align 8
  store %struct.Memory* %loadMem_4081d7, %struct.Memory** %MEMORY
  %loadMem_4081db = load %struct.Memory*, %struct.Memory** %MEMORY
  %2883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2884 = getelementptr inbounds %struct.GPR, %struct.GPR* %2883, i32 0, i32 33
  %2885 = getelementptr inbounds %struct.Reg, %struct.Reg* %2884, i32 0, i32 0
  %PC.i907 = bitcast %union.anon* %2885 to i64*
  %2886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2887 = getelementptr inbounds %struct.GPR, %struct.GPR* %2886, i32 0, i32 15
  %2888 = getelementptr inbounds %struct.Reg, %struct.Reg* %2887, i32 0, i32 0
  %RBP.i908 = bitcast %union.anon* %2888 to i64*
  %2889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2890 = getelementptr inbounds %struct.GPR, %struct.GPR* %2889, i32 0, i32 19
  %2891 = getelementptr inbounds %struct.Reg, %struct.Reg* %2890, i32 0, i32 0
  %R9.i909 = bitcast %union.anon* %2891 to i64*
  %2892 = load i64, i64* %RBP.i908
  %2893 = sub i64 %2892, 76
  %2894 = load i64, i64* %PC.i907
  %2895 = add i64 %2894, 4
  store i64 %2895, i64* %PC.i907
  %2896 = inttoptr i64 %2893 to i32*
  %2897 = load i32, i32* %2896
  %2898 = sext i32 %2897 to i64
  store i64 %2898, i64* %R9.i909, align 8
  store %struct.Memory* %loadMem_4081db, %struct.Memory** %MEMORY
  %loadMem_4081df = load %struct.Memory*, %struct.Memory** %MEMORY
  %2899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2900 = getelementptr inbounds %struct.GPR, %struct.GPR* %2899, i32 0, i32 33
  %2901 = getelementptr inbounds %struct.Reg, %struct.Reg* %2900, i32 0, i32 0
  %PC.i903 = bitcast %union.anon* %2901 to i64*
  %2902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2903 = getelementptr inbounds %struct.GPR, %struct.GPR* %2902, i32 0, i32 1
  %2904 = getelementptr inbounds %struct.Reg, %struct.Reg* %2903, i32 0, i32 0
  %RAX.i904 = bitcast %union.anon* %2904 to i64*
  %2905 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2906 = getelementptr inbounds %struct.GPR, %struct.GPR* %2905, i32 0, i32 17
  %2907 = getelementptr inbounds %struct.Reg, %struct.Reg* %2906, i32 0, i32 0
  %R8.i905 = bitcast %union.anon* %2907 to i64*
  %2908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2909 = getelementptr inbounds %struct.GPR, %struct.GPR* %2908, i32 0, i32 19
  %2910 = getelementptr inbounds %struct.Reg, %struct.Reg* %2909, i32 0, i32 0
  %R9.i906 = bitcast %union.anon* %2910 to i64*
  %2911 = load i64, i64* %R8.i905
  %2912 = load i64, i64* %R9.i906
  %2913 = add i64 %2912, %2911
  %2914 = load i64, i64* %PC.i903
  %2915 = add i64 %2914, 5
  store i64 %2915, i64* %PC.i903
  %2916 = inttoptr i64 %2913 to i8*
  %2917 = load i8, i8* %2916
  %2918 = sext i8 %2917 to i64
  %2919 = and i64 %2918, 4294967295
  store i64 %2919, i64* %RAX.i904, align 8
  store %struct.Memory* %loadMem_4081df, %struct.Memory** %MEMORY
  %loadMem_4081e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2921 = getelementptr inbounds %struct.GPR, %struct.GPR* %2920, i32 0, i32 33
  %2922 = getelementptr inbounds %struct.Reg, %struct.Reg* %2921, i32 0, i32 0
  %PC.i900 = bitcast %union.anon* %2922 to i64*
  %2923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2924 = getelementptr inbounds %struct.GPR, %struct.GPR* %2923, i32 0, i32 1
  %2925 = getelementptr inbounds %struct.Reg, %struct.Reg* %2924, i32 0, i32 0
  %EAX.i901 = bitcast %union.anon* %2925 to i32*
  %2926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2927 = getelementptr inbounds %struct.GPR, %struct.GPR* %2926, i32 0, i32 17
  %2928 = getelementptr inbounds %struct.Reg, %struct.Reg* %2927, i32 0, i32 0
  %R8.i902 = bitcast %union.anon* %2928 to i64*
  %2929 = load i32, i32* %EAX.i901
  %2930 = zext i32 %2929 to i64
  %2931 = load i64, i64* %PC.i900
  %2932 = add i64 %2931, 3
  store i64 %2932, i64* %PC.i900
  %2933 = shl i64 %2930, 32
  %2934 = ashr exact i64 %2933, 32
  store i64 %2934, i64* %R8.i902, align 8
  store %struct.Memory* %loadMem_4081e4, %struct.Memory** %MEMORY
  %loadMem_4081e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2936 = getelementptr inbounds %struct.GPR, %struct.GPR* %2935, i32 0, i32 33
  %2937 = getelementptr inbounds %struct.Reg, %struct.Reg* %2936, i32 0, i32 0
  %PC.i897 = bitcast %union.anon* %2937 to i64*
  %2938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2939 = getelementptr inbounds %struct.GPR, %struct.GPR* %2938, i32 0, i32 7
  %2940 = getelementptr inbounds %struct.Reg, %struct.Reg* %2939, i32 0, i32 0
  %RDX.i898 = bitcast %union.anon* %2940 to i64*
  %2941 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2942 = getelementptr inbounds %struct.GPR, %struct.GPR* %2941, i32 0, i32 17
  %2943 = getelementptr inbounds %struct.Reg, %struct.Reg* %2942, i32 0, i32 0
  %R8.i899 = bitcast %union.anon* %2943 to i64*
  %2944 = load i64, i64* %RDX.i898
  %2945 = load i64, i64* %R8.i899
  %2946 = mul i64 %2945, 8
  %2947 = add i64 %2946, %2944
  %2948 = load i64, i64* %PC.i897
  %2949 = add i64 %2948, 4
  store i64 %2949, i64* %PC.i897
  %2950 = inttoptr i64 %2947 to i64*
  %2951 = load i64, i64* %2950
  store i64 %2951, i64* %RDX.i898, align 8
  store %struct.Memory* %loadMem_4081e7, %struct.Memory** %MEMORY
  %loadMem_4081eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2952 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2953 = getelementptr inbounds %struct.GPR, %struct.GPR* %2952, i32 0, i32 33
  %2954 = getelementptr inbounds %struct.Reg, %struct.Reg* %2953, i32 0, i32 0
  %PC.i894 = bitcast %union.anon* %2954 to i64*
  %2955 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2956 = getelementptr inbounds %struct.GPR, %struct.GPR* %2955, i32 0, i32 15
  %2957 = getelementptr inbounds %struct.Reg, %struct.Reg* %2956, i32 0, i32 0
  %RBP.i895 = bitcast %union.anon* %2957 to i64*
  %2958 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2959 = getelementptr inbounds %struct.GPR, %struct.GPR* %2958, i32 0, i32 17
  %2960 = getelementptr inbounds %struct.Reg, %struct.Reg* %2959, i32 0, i32 0
  %R8.i896 = bitcast %union.anon* %2960 to i64*
  %2961 = load i64, i64* %RBP.i895
  %2962 = sub i64 %2961, 80
  %2963 = load i64, i64* %PC.i894
  %2964 = add i64 %2963, 4
  store i64 %2964, i64* %PC.i894
  %2965 = inttoptr i64 %2962 to i32*
  %2966 = load i32, i32* %2965
  %2967 = sext i32 %2966 to i64
  store i64 %2967, i64* %R8.i896, align 8
  store %struct.Memory* %loadMem_4081eb, %struct.Memory** %MEMORY
  %loadMem_4081ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %2968 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2969 = getelementptr inbounds %struct.GPR, %struct.GPR* %2968, i32 0, i32 33
  %2970 = getelementptr inbounds %struct.Reg, %struct.Reg* %2969, i32 0, i32 0
  %PC.i890 = bitcast %union.anon* %2970 to i64*
  %2971 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2972 = getelementptr inbounds %struct.GPR, %struct.GPR* %2971, i32 0, i32 1
  %2973 = getelementptr inbounds %struct.Reg, %struct.Reg* %2972, i32 0, i32 0
  %RAX.i891 = bitcast %union.anon* %2973 to i64*
  %2974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2975 = getelementptr inbounds %struct.GPR, %struct.GPR* %2974, i32 0, i32 7
  %2976 = getelementptr inbounds %struct.Reg, %struct.Reg* %2975, i32 0, i32 0
  %RDX.i892 = bitcast %union.anon* %2976 to i64*
  %2977 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2978 = getelementptr inbounds %struct.GPR, %struct.GPR* %2977, i32 0, i32 17
  %2979 = getelementptr inbounds %struct.Reg, %struct.Reg* %2978, i32 0, i32 0
  %R8.i893 = bitcast %union.anon* %2979 to i64*
  %2980 = load i64, i64* %RDX.i892
  %2981 = load i64, i64* %R8.i893
  %2982 = mul i64 %2981, 4
  %2983 = add i64 %2982, %2980
  %2984 = load i64, i64* %PC.i890
  %2985 = add i64 %2984, 4
  store i64 %2985, i64* %PC.i890
  %2986 = inttoptr i64 %2983 to i32*
  %2987 = load i32, i32* %2986
  %2988 = zext i32 %2987 to i64
  store i64 %2988, i64* %RAX.i891, align 8
  store %struct.Memory* %loadMem_4081ef, %struct.Memory** %MEMORY
  %loadMem_4081f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2990 = getelementptr inbounds %struct.GPR, %struct.GPR* %2989, i32 0, i32 33
  %2991 = getelementptr inbounds %struct.Reg, %struct.Reg* %2990, i32 0, i32 0
  %PC.i887 = bitcast %union.anon* %2991 to i64*
  %2992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2993 = getelementptr inbounds %struct.GPR, %struct.GPR* %2992, i32 0, i32 7
  %2994 = getelementptr inbounds %struct.Reg, %struct.Reg* %2993, i32 0, i32 0
  %RDX.i888 = bitcast %union.anon* %2994 to i64*
  %2995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2996 = getelementptr inbounds %struct.GPR, %struct.GPR* %2995, i32 0, i32 15
  %2997 = getelementptr inbounds %struct.Reg, %struct.Reg* %2996, i32 0, i32 0
  %RBP.i889 = bitcast %union.anon* %2997 to i64*
  %2998 = load i64, i64* %RBP.i889
  %2999 = sub i64 %2998, 56
  %3000 = load i64, i64* %PC.i887
  %3001 = add i64 %3000, 4
  store i64 %3001, i64* %PC.i887
  %3002 = inttoptr i64 %2999 to i64*
  %3003 = load i64, i64* %3002
  store i64 %3003, i64* %RDX.i888, align 8
  store %struct.Memory* %loadMem_4081f3, %struct.Memory** %MEMORY
  %loadMem_4081f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3005 = getelementptr inbounds %struct.GPR, %struct.GPR* %3004, i32 0, i32 33
  %3006 = getelementptr inbounds %struct.Reg, %struct.Reg* %3005, i32 0, i32 0
  %PC.i884 = bitcast %union.anon* %3006 to i64*
  %3007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3008 = getelementptr inbounds %struct.GPR, %struct.GPR* %3007, i32 0, i32 15
  %3009 = getelementptr inbounds %struct.Reg, %struct.Reg* %3008, i32 0, i32 0
  %RBP.i885 = bitcast %union.anon* %3009 to i64*
  %3010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3011 = getelementptr inbounds %struct.GPR, %struct.GPR* %3010, i32 0, i32 17
  %3012 = getelementptr inbounds %struct.Reg, %struct.Reg* %3011, i32 0, i32 0
  %R8.i886 = bitcast %union.anon* %3012 to i64*
  %3013 = load i64, i64* %RBP.i885
  %3014 = sub i64 %3013, 76
  %3015 = load i64, i64* %PC.i884
  %3016 = add i64 %3015, 4
  store i64 %3016, i64* %PC.i884
  %3017 = inttoptr i64 %3014 to i32*
  %3018 = load i32, i32* %3017
  %3019 = sext i32 %3018 to i64
  store i64 %3019, i64* %R8.i886, align 8
  store %struct.Memory* %loadMem_4081f7, %struct.Memory** %MEMORY
  %loadMem_4081fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %3020 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3021 = getelementptr inbounds %struct.GPR, %struct.GPR* %3020, i32 0, i32 33
  %3022 = getelementptr inbounds %struct.Reg, %struct.Reg* %3021, i32 0, i32 0
  %PC.i881 = bitcast %union.anon* %3022 to i64*
  %3023 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3024 = getelementptr inbounds %struct.GPR, %struct.GPR* %3023, i32 0, i32 7
  %3025 = getelementptr inbounds %struct.Reg, %struct.Reg* %3024, i32 0, i32 0
  %RDX.i882 = bitcast %union.anon* %3025 to i64*
  %3026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3027 = getelementptr inbounds %struct.GPR, %struct.GPR* %3026, i32 0, i32 17
  %3028 = getelementptr inbounds %struct.Reg, %struct.Reg* %3027, i32 0, i32 0
  %R8.i883 = bitcast %union.anon* %3028 to i64*
  %3029 = load i64, i64* %RDX.i882
  %3030 = load i64, i64* %R8.i883
  %3031 = mul i64 %3030, 8
  %3032 = add i64 %3031, %3029
  %3033 = load i64, i64* %PC.i881
  %3034 = add i64 %3033, 4
  store i64 %3034, i64* %PC.i881
  %3035 = inttoptr i64 %3032 to i64*
  %3036 = load i64, i64* %3035
  store i64 %3036, i64* %RDX.i882, align 8
  store %struct.Memory* %loadMem_4081fb, %struct.Memory** %MEMORY
  %loadMem_4081ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %3037 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3038 = getelementptr inbounds %struct.GPR, %struct.GPR* %3037, i32 0, i32 33
  %3039 = getelementptr inbounds %struct.Reg, %struct.Reg* %3038, i32 0, i32 0
  %PC.i878 = bitcast %union.anon* %3039 to i64*
  %3040 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3041 = getelementptr inbounds %struct.GPR, %struct.GPR* %3040, i32 0, i32 15
  %3042 = getelementptr inbounds %struct.Reg, %struct.Reg* %3041, i32 0, i32 0
  %RBP.i879 = bitcast %union.anon* %3042 to i64*
  %3043 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3044 = getelementptr inbounds %struct.GPR, %struct.GPR* %3043, i32 0, i32 17
  %3045 = getelementptr inbounds %struct.Reg, %struct.Reg* %3044, i32 0, i32 0
  %R8.i880 = bitcast %union.anon* %3045 to i64*
  %3046 = load i64, i64* %RBP.i879
  %3047 = sub i64 %3046, 80
  %3048 = load i64, i64* %PC.i878
  %3049 = add i64 %3048, 4
  store i64 %3049, i64* %PC.i878
  %3050 = inttoptr i64 %3047 to i32*
  %3051 = load i32, i32* %3050
  %3052 = sext i32 %3051 to i64
  store i64 %3052, i64* %R8.i880, align 8
  store %struct.Memory* %loadMem_4081ff, %struct.Memory** %MEMORY
  %loadMem_408203 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3053 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3054 = getelementptr inbounds %struct.GPR, %struct.GPR* %3053, i32 0, i32 33
  %3055 = getelementptr inbounds %struct.Reg, %struct.Reg* %3054, i32 0, i32 0
  %PC.i874 = bitcast %union.anon* %3055 to i64*
  %3056 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3057 = getelementptr inbounds %struct.GPR, %struct.GPR* %3056, i32 0, i32 1
  %3058 = getelementptr inbounds %struct.Reg, %struct.Reg* %3057, i32 0, i32 0
  %RAX.i875 = bitcast %union.anon* %3058 to i64*
  %3059 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3060 = getelementptr inbounds %struct.GPR, %struct.GPR* %3059, i32 0, i32 7
  %3061 = getelementptr inbounds %struct.Reg, %struct.Reg* %3060, i32 0, i32 0
  %RDX.i876 = bitcast %union.anon* %3061 to i64*
  %3062 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3063 = getelementptr inbounds %struct.GPR, %struct.GPR* %3062, i32 0, i32 17
  %3064 = getelementptr inbounds %struct.Reg, %struct.Reg* %3063, i32 0, i32 0
  %R8.i877 = bitcast %union.anon* %3064 to i64*
  %3065 = load i64, i64* %RAX.i875
  %3066 = load i64, i64* %RDX.i876
  %3067 = load i64, i64* %R8.i877
  %3068 = mul i64 %3067, 4
  %3069 = add i64 %3068, %3066
  %3070 = load i64, i64* %PC.i874
  %3071 = add i64 %3070, 4
  store i64 %3071, i64* %PC.i874
  %3072 = trunc i64 %3065 to i32
  %3073 = inttoptr i64 %3069 to i32*
  %3074 = load i32, i32* %3073
  %3075 = add i32 %3074, %3072
  %3076 = zext i32 %3075 to i64
  store i64 %3076, i64* %RAX.i875, align 8
  %3077 = icmp ult i32 %3075, %3072
  %3078 = icmp ult i32 %3075, %3074
  %3079 = or i1 %3077, %3078
  %3080 = zext i1 %3079 to i8
  %3081 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3080, i8* %3081, align 1
  %3082 = and i32 %3075, 255
  %3083 = call i32 @llvm.ctpop.i32(i32 %3082)
  %3084 = trunc i32 %3083 to i8
  %3085 = and i8 %3084, 1
  %3086 = xor i8 %3085, 1
  %3087 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3086, i8* %3087, align 1
  %3088 = xor i32 %3074, %3072
  %3089 = xor i32 %3088, %3075
  %3090 = lshr i32 %3089, 4
  %3091 = trunc i32 %3090 to i8
  %3092 = and i8 %3091, 1
  %3093 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3092, i8* %3093, align 1
  %3094 = icmp eq i32 %3075, 0
  %3095 = zext i1 %3094 to i8
  %3096 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3095, i8* %3096, align 1
  %3097 = lshr i32 %3075, 31
  %3098 = trunc i32 %3097 to i8
  %3099 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3098, i8* %3099, align 1
  %3100 = lshr i32 %3072, 31
  %3101 = lshr i32 %3074, 31
  %3102 = xor i32 %3097, %3100
  %3103 = xor i32 %3097, %3101
  %3104 = add i32 %3102, %3103
  %3105 = icmp eq i32 %3104, 2
  %3106 = zext i1 %3105 to i8
  %3107 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3106, i8* %3107, align 1
  store %struct.Memory* %loadMem_408203, %struct.Memory** %MEMORY
  %loadMem_408207 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3109 = getelementptr inbounds %struct.GPR, %struct.GPR* %3108, i32 0, i32 33
  %3110 = getelementptr inbounds %struct.Reg, %struct.Reg* %3109, i32 0, i32 0
  %PC.i870 = bitcast %union.anon* %3110 to i64*
  %3111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3112 = getelementptr inbounds %struct.GPR, %struct.GPR* %3111, i32 0, i32 1
  %3113 = getelementptr inbounds %struct.Reg, %struct.Reg* %3112, i32 0, i32 0
  %EAX.i871 = bitcast %union.anon* %3113 to i32*
  %3114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3115 = getelementptr inbounds %struct.GPR, %struct.GPR* %3114, i32 0, i32 7
  %3116 = getelementptr inbounds %struct.Reg, %struct.Reg* %3115, i32 0, i32 0
  %RDX.i872 = bitcast %union.anon* %3116 to i64*
  %3117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3118 = getelementptr inbounds %struct.GPR, %struct.GPR* %3117, i32 0, i32 17
  %3119 = getelementptr inbounds %struct.Reg, %struct.Reg* %3118, i32 0, i32 0
  %R8.i873 = bitcast %union.anon* %3119 to i64*
  %3120 = load i64, i64* %RDX.i872
  %3121 = load i64, i64* %R8.i873
  %3122 = mul i64 %3121, 4
  %3123 = add i64 %3122, %3120
  %3124 = load i32, i32* %EAX.i871
  %3125 = zext i32 %3124 to i64
  %3126 = load i64, i64* %PC.i870
  %3127 = add i64 %3126, 4
  store i64 %3127, i64* %PC.i870
  %3128 = inttoptr i64 %3123 to i32*
  store i32 %3124, i32* %3128
  store %struct.Memory* %loadMem_408207, %struct.Memory** %MEMORY
  %loadMem_40820b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3130 = getelementptr inbounds %struct.GPR, %struct.GPR* %3129, i32 0, i32 33
  %3131 = getelementptr inbounds %struct.Reg, %struct.Reg* %3130, i32 0, i32 0
  %PC.i867 = bitcast %union.anon* %3131 to i64*
  %3132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3133 = getelementptr inbounds %struct.GPR, %struct.GPR* %3132, i32 0, i32 7
  %3134 = getelementptr inbounds %struct.Reg, %struct.Reg* %3133, i32 0, i32 0
  %RDX.i868 = bitcast %union.anon* %3134 to i64*
  %3135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3136 = getelementptr inbounds %struct.GPR, %struct.GPR* %3135, i32 0, i32 15
  %3137 = getelementptr inbounds %struct.Reg, %struct.Reg* %3136, i32 0, i32 0
  %RBP.i869 = bitcast %union.anon* %3137 to i64*
  %3138 = load i64, i64* %RBP.i869
  %3139 = sub i64 %3138, 56
  %3140 = load i64, i64* %PC.i867
  %3141 = add i64 %3140, 4
  store i64 %3141, i64* %PC.i867
  %3142 = inttoptr i64 %3139 to i64*
  %3143 = load i64, i64* %3142
  store i64 %3143, i64* %RDX.i868, align 8
  store %struct.Memory* %loadMem_40820b, %struct.Memory** %MEMORY
  %loadMem_40820f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3145 = getelementptr inbounds %struct.GPR, %struct.GPR* %3144, i32 0, i32 33
  %3146 = getelementptr inbounds %struct.Reg, %struct.Reg* %3145, i32 0, i32 0
  %PC.i864 = bitcast %union.anon* %3146 to i64*
  %3147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3148 = getelementptr inbounds %struct.GPR, %struct.GPR* %3147, i32 0, i32 15
  %3149 = getelementptr inbounds %struct.Reg, %struct.Reg* %3148, i32 0, i32 0
  %RBP.i865 = bitcast %union.anon* %3149 to i64*
  %3150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3151 = getelementptr inbounds %struct.GPR, %struct.GPR* %3150, i32 0, i32 17
  %3152 = getelementptr inbounds %struct.Reg, %struct.Reg* %3151, i32 0, i32 0
  %R8.i866 = bitcast %union.anon* %3152 to i64*
  %3153 = load i64, i64* %RBP.i865
  %3154 = sub i64 %3153, 76
  %3155 = load i64, i64* %PC.i864
  %3156 = add i64 %3155, 4
  store i64 %3156, i64* %PC.i864
  %3157 = inttoptr i64 %3154 to i32*
  %3158 = load i32, i32* %3157
  %3159 = sext i32 %3158 to i64
  store i64 %3159, i64* %R8.i866, align 8
  store %struct.Memory* %loadMem_40820f, %struct.Memory** %MEMORY
  %loadMem_408213 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3161 = getelementptr inbounds %struct.GPR, %struct.GPR* %3160, i32 0, i32 33
  %3162 = getelementptr inbounds %struct.Reg, %struct.Reg* %3161, i32 0, i32 0
  %PC.i861 = bitcast %union.anon* %3162 to i64*
  %3163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3164 = getelementptr inbounds %struct.GPR, %struct.GPR* %3163, i32 0, i32 7
  %3165 = getelementptr inbounds %struct.Reg, %struct.Reg* %3164, i32 0, i32 0
  %RDX.i862 = bitcast %union.anon* %3165 to i64*
  %3166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3167 = getelementptr inbounds %struct.GPR, %struct.GPR* %3166, i32 0, i32 17
  %3168 = getelementptr inbounds %struct.Reg, %struct.Reg* %3167, i32 0, i32 0
  %R8.i863 = bitcast %union.anon* %3168 to i64*
  %3169 = load i64, i64* %RDX.i862
  %3170 = load i64, i64* %R8.i863
  %3171 = mul i64 %3170, 8
  %3172 = add i64 %3171, %3169
  %3173 = load i64, i64* %PC.i861
  %3174 = add i64 %3173, 4
  store i64 %3174, i64* %PC.i861
  %3175 = inttoptr i64 %3172 to i64*
  %3176 = load i64, i64* %3175
  store i64 %3176, i64* %RDX.i862, align 8
  store %struct.Memory* %loadMem_408213, %struct.Memory** %MEMORY
  %loadMem_408217 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3178 = getelementptr inbounds %struct.GPR, %struct.GPR* %3177, i32 0, i32 33
  %3179 = getelementptr inbounds %struct.Reg, %struct.Reg* %3178, i32 0, i32 0
  %PC.i858 = bitcast %union.anon* %3179 to i64*
  %3180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3181 = getelementptr inbounds %struct.GPR, %struct.GPR* %3180, i32 0, i32 1
  %3182 = getelementptr inbounds %struct.Reg, %struct.Reg* %3181, i32 0, i32 0
  %RAX.i859 = bitcast %union.anon* %3182 to i64*
  %3183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3184 = getelementptr inbounds %struct.GPR, %struct.GPR* %3183, i32 0, i32 15
  %3185 = getelementptr inbounds %struct.Reg, %struct.Reg* %3184, i32 0, i32 0
  %RBP.i860 = bitcast %union.anon* %3185 to i64*
  %3186 = load i64, i64* %RBP.i860
  %3187 = sub i64 %3186, 80
  %3188 = load i64, i64* %PC.i858
  %3189 = add i64 %3188, 3
  store i64 %3189, i64* %PC.i858
  %3190 = inttoptr i64 %3187 to i32*
  %3191 = load i32, i32* %3190
  %3192 = zext i32 %3191 to i64
  store i64 %3192, i64* %RAX.i859, align 8
  store %struct.Memory* %loadMem_408217, %struct.Memory** %MEMORY
  %loadMem_40821a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3194 = getelementptr inbounds %struct.GPR, %struct.GPR* %3193, i32 0, i32 33
  %3195 = getelementptr inbounds %struct.Reg, %struct.Reg* %3194, i32 0, i32 0
  %PC.i856 = bitcast %union.anon* %3195 to i64*
  %3196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3197 = getelementptr inbounds %struct.GPR, %struct.GPR* %3196, i32 0, i32 1
  %3198 = getelementptr inbounds %struct.Reg, %struct.Reg* %3197, i32 0, i32 0
  %RAX.i857 = bitcast %union.anon* %3198 to i64*
  %3199 = load i64, i64* %RAX.i857
  %3200 = load i64, i64* %PC.i856
  %3201 = add i64 %3200, 3
  store i64 %3201, i64* %PC.i856
  %3202 = trunc i64 %3199 to i32
  %3203 = sub i32 %3202, 1
  %3204 = zext i32 %3203 to i64
  store i64 %3204, i64* %RAX.i857, align 8
  %3205 = icmp ult i32 %3202, 1
  %3206 = zext i1 %3205 to i8
  %3207 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3206, i8* %3207, align 1
  %3208 = and i32 %3203, 255
  %3209 = call i32 @llvm.ctpop.i32(i32 %3208)
  %3210 = trunc i32 %3209 to i8
  %3211 = and i8 %3210, 1
  %3212 = xor i8 %3211, 1
  %3213 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3212, i8* %3213, align 1
  %3214 = xor i64 1, %3199
  %3215 = trunc i64 %3214 to i32
  %3216 = xor i32 %3215, %3203
  %3217 = lshr i32 %3216, 4
  %3218 = trunc i32 %3217 to i8
  %3219 = and i8 %3218, 1
  %3220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3219, i8* %3220, align 1
  %3221 = icmp eq i32 %3203, 0
  %3222 = zext i1 %3221 to i8
  %3223 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3222, i8* %3223, align 1
  %3224 = lshr i32 %3203, 31
  %3225 = trunc i32 %3224 to i8
  %3226 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3225, i8* %3226, align 1
  %3227 = lshr i32 %3202, 31
  %3228 = xor i32 %3224, %3227
  %3229 = add i32 %3228, %3227
  %3230 = icmp eq i32 %3229, 2
  %3231 = zext i1 %3230 to i8
  %3232 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3231, i8* %3232, align 1
  store %struct.Memory* %loadMem_40821a, %struct.Memory** %MEMORY
  %loadMem_40821d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3234 = getelementptr inbounds %struct.GPR, %struct.GPR* %3233, i32 0, i32 33
  %3235 = getelementptr inbounds %struct.Reg, %struct.Reg* %3234, i32 0, i32 0
  %PC.i853 = bitcast %union.anon* %3235 to i64*
  %3236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3237 = getelementptr inbounds %struct.GPR, %struct.GPR* %3236, i32 0, i32 1
  %3238 = getelementptr inbounds %struct.Reg, %struct.Reg* %3237, i32 0, i32 0
  %EAX.i854 = bitcast %union.anon* %3238 to i32*
  %3239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3240 = getelementptr inbounds %struct.GPR, %struct.GPR* %3239, i32 0, i32 17
  %3241 = getelementptr inbounds %struct.Reg, %struct.Reg* %3240, i32 0, i32 0
  %R8.i855 = bitcast %union.anon* %3241 to i64*
  %3242 = load i32, i32* %EAX.i854
  %3243 = zext i32 %3242 to i64
  %3244 = load i64, i64* %PC.i853
  %3245 = add i64 %3244, 3
  store i64 %3245, i64* %PC.i853
  %3246 = shl i64 %3243, 32
  %3247 = ashr exact i64 %3246, 32
  store i64 %3247, i64* %R8.i855, align 8
  store %struct.Memory* %loadMem_40821d, %struct.Memory** %MEMORY
  %loadMem_408220 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3249 = getelementptr inbounds %struct.GPR, %struct.GPR* %3248, i32 0, i32 33
  %3250 = getelementptr inbounds %struct.Reg, %struct.Reg* %3249, i32 0, i32 0
  %PC.i849 = bitcast %union.anon* %3250 to i64*
  %3251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3252 = getelementptr inbounds %struct.GPR, %struct.GPR* %3251, i32 0, i32 1
  %3253 = getelementptr inbounds %struct.Reg, %struct.Reg* %3252, i32 0, i32 0
  %RAX.i850 = bitcast %union.anon* %3253 to i64*
  %3254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3255 = getelementptr inbounds %struct.GPR, %struct.GPR* %3254, i32 0, i32 7
  %3256 = getelementptr inbounds %struct.Reg, %struct.Reg* %3255, i32 0, i32 0
  %RDX.i851 = bitcast %union.anon* %3256 to i64*
  %3257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3258 = getelementptr inbounds %struct.GPR, %struct.GPR* %3257, i32 0, i32 17
  %3259 = getelementptr inbounds %struct.Reg, %struct.Reg* %3258, i32 0, i32 0
  %R8.i852 = bitcast %union.anon* %3259 to i64*
  %3260 = load i64, i64* %RDX.i851
  %3261 = load i64, i64* %R8.i852
  %3262 = mul i64 %3261, 4
  %3263 = add i64 %3262, %3260
  %3264 = load i64, i64* %PC.i849
  %3265 = add i64 %3264, 4
  store i64 %3265, i64* %PC.i849
  %3266 = inttoptr i64 %3263 to i32*
  %3267 = load i32, i32* %3266
  %3268 = zext i32 %3267 to i64
  store i64 %3268, i64* %RAX.i850, align 8
  store %struct.Memory* %loadMem_408220, %struct.Memory** %MEMORY
  %loadMem_408224 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3270 = getelementptr inbounds %struct.GPR, %struct.GPR* %3269, i32 0, i32 33
  %3271 = getelementptr inbounds %struct.Reg, %struct.Reg* %3270, i32 0, i32 0
  %PC.i846 = bitcast %union.anon* %3271 to i64*
  %3272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3273 = getelementptr inbounds %struct.GPR, %struct.GPR* %3272, i32 0, i32 7
  %3274 = getelementptr inbounds %struct.Reg, %struct.Reg* %3273, i32 0, i32 0
  %RDX.i847 = bitcast %union.anon* %3274 to i64*
  %3275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3276 = getelementptr inbounds %struct.GPR, %struct.GPR* %3275, i32 0, i32 15
  %3277 = getelementptr inbounds %struct.Reg, %struct.Reg* %3276, i32 0, i32 0
  %RBP.i848 = bitcast %union.anon* %3277 to i64*
  %3278 = load i64, i64* %RBP.i848
  %3279 = sub i64 %3278, 24
  %3280 = load i64, i64* %PC.i846
  %3281 = add i64 %3280, 4
  store i64 %3281, i64* %PC.i846
  %3282 = inttoptr i64 %3279 to i64*
  %3283 = load i64, i64* %3282
  store i64 %3283, i64* %RDX.i847, align 8
  store %struct.Memory* %loadMem_408224, %struct.Memory** %MEMORY
  %loadMem_408228 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3285 = getelementptr inbounds %struct.GPR, %struct.GPR* %3284, i32 0, i32 33
  %3286 = getelementptr inbounds %struct.Reg, %struct.Reg* %3285, i32 0, i32 0
  %PC.i844 = bitcast %union.anon* %3286 to i64*
  %3287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3288 = getelementptr inbounds %struct.GPR, %struct.GPR* %3287, i32 0, i32 7
  %3289 = getelementptr inbounds %struct.Reg, %struct.Reg* %3288, i32 0, i32 0
  %RDX.i845 = bitcast %union.anon* %3289 to i64*
  %3290 = load i64, i64* %RDX.i845
  %3291 = add i64 %3290, 312
  %3292 = load i64, i64* %PC.i844
  %3293 = add i64 %3292, 7
  store i64 %3293, i64* %PC.i844
  %3294 = inttoptr i64 %3291 to i64*
  %3295 = load i64, i64* %3294
  store i64 %3295, i64* %RDX.i845, align 8
  store %struct.Memory* %loadMem_408228, %struct.Memory** %MEMORY
  %loadMem_40822f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3297 = getelementptr inbounds %struct.GPR, %struct.GPR* %3296, i32 0, i32 33
  %3298 = getelementptr inbounds %struct.Reg, %struct.Reg* %3297, i32 0, i32 0
  %PC.i842 = bitcast %union.anon* %3298 to i64*
  %3299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3300 = getelementptr inbounds %struct.GPR, %struct.GPR* %3299, i32 0, i32 7
  %3301 = getelementptr inbounds %struct.Reg, %struct.Reg* %3300, i32 0, i32 0
  %RDX.i843 = bitcast %union.anon* %3301 to i64*
  %3302 = load i64, i64* %RDX.i843
  %3303 = add i64 %3302, 16
  %3304 = load i64, i64* %PC.i842
  %3305 = add i64 %3304, 4
  store i64 %3305, i64* %PC.i842
  %3306 = inttoptr i64 %3303 to i64*
  %3307 = load i64, i64* %3306
  store i64 %3307, i64* %RDX.i843, align 8
  store %struct.Memory* %loadMem_40822f, %struct.Memory** %MEMORY
  %loadMem_408233 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3309 = getelementptr inbounds %struct.GPR, %struct.GPR* %3308, i32 0, i32 33
  %3310 = getelementptr inbounds %struct.Reg, %struct.Reg* %3309, i32 0, i32 0
  %PC.i839 = bitcast %union.anon* %3310 to i64*
  %3311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3312 = getelementptr inbounds %struct.GPR, %struct.GPR* %3311, i32 0, i32 5
  %3313 = getelementptr inbounds %struct.Reg, %struct.Reg* %3312, i32 0, i32 0
  %RCX.i840 = bitcast %union.anon* %3313 to i64*
  %3314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3315 = getelementptr inbounds %struct.GPR, %struct.GPR* %3314, i32 0, i32 15
  %3316 = getelementptr inbounds %struct.Reg, %struct.Reg* %3315, i32 0, i32 0
  %RBP.i841 = bitcast %union.anon* %3316 to i64*
  %3317 = load i64, i64* %RBP.i841
  %3318 = sub i64 %3317, 80
  %3319 = load i64, i64* %PC.i839
  %3320 = add i64 %3319, 3
  store i64 %3320, i64* %PC.i839
  %3321 = inttoptr i64 %3318 to i32*
  %3322 = load i32, i32* %3321
  %3323 = zext i32 %3322 to i64
  store i64 %3323, i64* %RCX.i840, align 8
  store %struct.Memory* %loadMem_408233, %struct.Memory** %MEMORY
  %loadMem_408236 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3325 = getelementptr inbounds %struct.GPR, %struct.GPR* %3324, i32 0, i32 33
  %3326 = getelementptr inbounds %struct.Reg, %struct.Reg* %3325, i32 0, i32 0
  %PC.i837 = bitcast %union.anon* %3326 to i64*
  %3327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3328 = getelementptr inbounds %struct.GPR, %struct.GPR* %3327, i32 0, i32 5
  %3329 = getelementptr inbounds %struct.Reg, %struct.Reg* %3328, i32 0, i32 0
  %RCX.i838 = bitcast %union.anon* %3329 to i64*
  %3330 = load i64, i64* %RCX.i838
  %3331 = load i64, i64* %PC.i837
  %3332 = add i64 %3331, 3
  store i64 %3332, i64* %PC.i837
  %3333 = trunc i64 %3330 to i32
  %3334 = sub i32 %3333, 1
  %3335 = zext i32 %3334 to i64
  store i64 %3335, i64* %RCX.i838, align 8
  %3336 = icmp ult i32 %3333, 1
  %3337 = zext i1 %3336 to i8
  %3338 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3337, i8* %3338, align 1
  %3339 = and i32 %3334, 255
  %3340 = call i32 @llvm.ctpop.i32(i32 %3339)
  %3341 = trunc i32 %3340 to i8
  %3342 = and i8 %3341, 1
  %3343 = xor i8 %3342, 1
  %3344 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3343, i8* %3344, align 1
  %3345 = xor i64 1, %3330
  %3346 = trunc i64 %3345 to i32
  %3347 = xor i32 %3346, %3334
  %3348 = lshr i32 %3347, 4
  %3349 = trunc i32 %3348 to i8
  %3350 = and i8 %3349, 1
  %3351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3350, i8* %3351, align 1
  %3352 = icmp eq i32 %3334, 0
  %3353 = zext i1 %3352 to i8
  %3354 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3353, i8* %3354, align 1
  %3355 = lshr i32 %3334, 31
  %3356 = trunc i32 %3355 to i8
  %3357 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3356, i8* %3357, align 1
  %3358 = lshr i32 %3333, 31
  %3359 = xor i32 %3355, %3358
  %3360 = add i32 %3359, %3358
  %3361 = icmp eq i32 %3360, 2
  %3362 = zext i1 %3361 to i8
  %3363 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3362, i8* %3363, align 1
  store %struct.Memory* %loadMem_408236, %struct.Memory** %MEMORY
  %loadMem_408239 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3365 = getelementptr inbounds %struct.GPR, %struct.GPR* %3364, i32 0, i32 33
  %3366 = getelementptr inbounds %struct.Reg, %struct.Reg* %3365, i32 0, i32 0
  %PC.i834 = bitcast %union.anon* %3366 to i64*
  %3367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3368 = getelementptr inbounds %struct.GPR, %struct.GPR* %3367, i32 0, i32 5
  %3369 = getelementptr inbounds %struct.Reg, %struct.Reg* %3368, i32 0, i32 0
  %ECX.i835 = bitcast %union.anon* %3369 to i32*
  %3370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3371 = getelementptr inbounds %struct.GPR, %struct.GPR* %3370, i32 0, i32 17
  %3372 = getelementptr inbounds %struct.Reg, %struct.Reg* %3371, i32 0, i32 0
  %R8.i836 = bitcast %union.anon* %3372 to i64*
  %3373 = load i32, i32* %ECX.i835
  %3374 = zext i32 %3373 to i64
  %3375 = load i64, i64* %PC.i834
  %3376 = add i64 %3375, 3
  store i64 %3376, i64* %PC.i834
  %3377 = shl i64 %3374, 32
  %3378 = ashr exact i64 %3377, 32
  store i64 %3378, i64* %R8.i836, align 8
  store %struct.Memory* %loadMem_408239, %struct.Memory** %MEMORY
  %loadMem_40823c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3379 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3380 = getelementptr inbounds %struct.GPR, %struct.GPR* %3379, i32 0, i32 33
  %3381 = getelementptr inbounds %struct.Reg, %struct.Reg* %3380, i32 0, i32 0
  %PC.i830 = bitcast %union.anon* %3381 to i64*
  %3382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3383 = getelementptr inbounds %struct.GPR, %struct.GPR* %3382, i32 0, i32 1
  %3384 = getelementptr inbounds %struct.Reg, %struct.Reg* %3383, i32 0, i32 0
  %RAX.i831 = bitcast %union.anon* %3384 to i64*
  %3385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3386 = getelementptr inbounds %struct.GPR, %struct.GPR* %3385, i32 0, i32 7
  %3387 = getelementptr inbounds %struct.Reg, %struct.Reg* %3386, i32 0, i32 0
  %RDX.i832 = bitcast %union.anon* %3387 to i64*
  %3388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3389 = getelementptr inbounds %struct.GPR, %struct.GPR* %3388, i32 0, i32 17
  %3390 = getelementptr inbounds %struct.Reg, %struct.Reg* %3389, i32 0, i32 0
  %R8.i833 = bitcast %union.anon* %3390 to i64*
  %3391 = load i64, i64* %RAX.i831
  %3392 = load i64, i64* %RDX.i832
  %3393 = load i64, i64* %R8.i833
  %3394 = mul i64 %3393, 4
  %3395 = add i64 %3394, %3392
  %3396 = load i64, i64* %PC.i830
  %3397 = add i64 %3396, 4
  store i64 %3397, i64* %PC.i830
  %3398 = trunc i64 %3391 to i32
  %3399 = inttoptr i64 %3395 to i32*
  %3400 = load i32, i32* %3399
  %3401 = add i32 %3400, %3398
  %3402 = zext i32 %3401 to i64
  store i64 %3402, i64* %RAX.i831, align 8
  %3403 = icmp ult i32 %3401, %3398
  %3404 = icmp ult i32 %3401, %3400
  %3405 = or i1 %3403, %3404
  %3406 = zext i1 %3405 to i8
  %3407 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3406, i8* %3407, align 1
  %3408 = and i32 %3401, 255
  %3409 = call i32 @llvm.ctpop.i32(i32 %3408)
  %3410 = trunc i32 %3409 to i8
  %3411 = and i8 %3410, 1
  %3412 = xor i8 %3411, 1
  %3413 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3412, i8* %3413, align 1
  %3414 = xor i32 %3400, %3398
  %3415 = xor i32 %3414, %3401
  %3416 = lshr i32 %3415, 4
  %3417 = trunc i32 %3416 to i8
  %3418 = and i8 %3417, 1
  %3419 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3418, i8* %3419, align 1
  %3420 = icmp eq i32 %3401, 0
  %3421 = zext i1 %3420 to i8
  %3422 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3421, i8* %3422, align 1
  %3423 = lshr i32 %3401, 31
  %3424 = trunc i32 %3423 to i8
  %3425 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3424, i8* %3425, align 1
  %3426 = lshr i32 %3398, 31
  %3427 = lshr i32 %3400, 31
  %3428 = xor i32 %3423, %3426
  %3429 = xor i32 %3423, %3427
  %3430 = add i32 %3428, %3429
  %3431 = icmp eq i32 %3430, 2
  %3432 = zext i1 %3431 to i8
  %3433 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3432, i8* %3433, align 1
  store %struct.Memory* %loadMem_40823c, %struct.Memory** %MEMORY
  %loadMem_408240 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3435 = getelementptr inbounds %struct.GPR, %struct.GPR* %3434, i32 0, i32 33
  %3436 = getelementptr inbounds %struct.Reg, %struct.Reg* %3435, i32 0, i32 0
  %PC.i827 = bitcast %union.anon* %3436 to i64*
  %3437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3438 = getelementptr inbounds %struct.GPR, %struct.GPR* %3437, i32 0, i32 7
  %3439 = getelementptr inbounds %struct.Reg, %struct.Reg* %3438, i32 0, i32 0
  %RDX.i828 = bitcast %union.anon* %3439 to i64*
  %3440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3441 = getelementptr inbounds %struct.GPR, %struct.GPR* %3440, i32 0, i32 15
  %3442 = getelementptr inbounds %struct.Reg, %struct.Reg* %3441, i32 0, i32 0
  %RBP.i829 = bitcast %union.anon* %3442 to i64*
  %3443 = load i64, i64* %RBP.i829
  %3444 = sub i64 %3443, 72
  %3445 = load i64, i64* %PC.i827
  %3446 = add i64 %3445, 4
  store i64 %3446, i64* %PC.i827
  %3447 = inttoptr i64 %3444 to i64*
  %3448 = load i64, i64* %3447
  store i64 %3448, i64* %RDX.i828, align 8
  store %struct.Memory* %loadMem_408240, %struct.Memory** %MEMORY
  %loadMem_408244 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3450 = getelementptr inbounds %struct.GPR, %struct.GPR* %3449, i32 0, i32 33
  %3451 = getelementptr inbounds %struct.Reg, %struct.Reg* %3450, i32 0, i32 0
  %PC.i824 = bitcast %union.anon* %3451 to i64*
  %3452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3453 = getelementptr inbounds %struct.GPR, %struct.GPR* %3452, i32 0, i32 15
  %3454 = getelementptr inbounds %struct.Reg, %struct.Reg* %3453, i32 0, i32 0
  %RBP.i825 = bitcast %union.anon* %3454 to i64*
  %3455 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3456 = getelementptr inbounds %struct.GPR, %struct.GPR* %3455, i32 0, i32 17
  %3457 = getelementptr inbounds %struct.Reg, %struct.Reg* %3456, i32 0, i32 0
  %R8.i826 = bitcast %union.anon* %3457 to i64*
  %3458 = load i64, i64* %RBP.i825
  %3459 = sub i64 %3458, 76
  %3460 = load i64, i64* %PC.i824
  %3461 = add i64 %3460, 4
  store i64 %3461, i64* %PC.i824
  %3462 = inttoptr i64 %3459 to i32*
  %3463 = load i32, i32* %3462
  %3464 = sext i32 %3463 to i64
  store i64 %3464, i64* %R8.i826, align 8
  store %struct.Memory* %loadMem_408244, %struct.Memory** %MEMORY
  %loadMem_408248 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3466 = getelementptr inbounds %struct.GPR, %struct.GPR* %3465, i32 0, i32 33
  %3467 = getelementptr inbounds %struct.Reg, %struct.Reg* %3466, i32 0, i32 0
  %PC.i821 = bitcast %union.anon* %3467 to i64*
  %3468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3469 = getelementptr inbounds %struct.GPR, %struct.GPR* %3468, i32 0, i32 7
  %3470 = getelementptr inbounds %struct.Reg, %struct.Reg* %3469, i32 0, i32 0
  %RDX.i822 = bitcast %union.anon* %3470 to i64*
  %3471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3472 = getelementptr inbounds %struct.GPR, %struct.GPR* %3471, i32 0, i32 17
  %3473 = getelementptr inbounds %struct.Reg, %struct.Reg* %3472, i32 0, i32 0
  %R8.i823 = bitcast %union.anon* %3473 to i64*
  %3474 = load i64, i64* %RDX.i822
  %3475 = load i64, i64* %R8.i823
  %3476 = mul i64 %3475, 8
  %3477 = add i64 %3476, %3474
  %3478 = load i64, i64* %PC.i821
  %3479 = add i64 %3478, 4
  store i64 %3479, i64* %PC.i821
  %3480 = inttoptr i64 %3477 to i64*
  %3481 = load i64, i64* %3480
  store i64 %3481, i64* %RDX.i822, align 8
  store %struct.Memory* %loadMem_408248, %struct.Memory** %MEMORY
  %loadMem_40824c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3482 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3483 = getelementptr inbounds %struct.GPR, %struct.GPR* %3482, i32 0, i32 33
  %3484 = getelementptr inbounds %struct.Reg, %struct.Reg* %3483, i32 0, i32 0
  %PC.i818 = bitcast %union.anon* %3484 to i64*
  %3485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3486 = getelementptr inbounds %struct.GPR, %struct.GPR* %3485, i32 0, i32 5
  %3487 = getelementptr inbounds %struct.Reg, %struct.Reg* %3486, i32 0, i32 0
  %RCX.i819 = bitcast %union.anon* %3487 to i64*
  %3488 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3489 = getelementptr inbounds %struct.GPR, %struct.GPR* %3488, i32 0, i32 15
  %3490 = getelementptr inbounds %struct.Reg, %struct.Reg* %3489, i32 0, i32 0
  %RBP.i820 = bitcast %union.anon* %3490 to i64*
  %3491 = load i64, i64* %RBP.i820
  %3492 = sub i64 %3491, 80
  %3493 = load i64, i64* %PC.i818
  %3494 = add i64 %3493, 3
  store i64 %3494, i64* %PC.i818
  %3495 = inttoptr i64 %3492 to i32*
  %3496 = load i32, i32* %3495
  %3497 = zext i32 %3496 to i64
  store i64 %3497, i64* %RCX.i819, align 8
  store %struct.Memory* %loadMem_40824c, %struct.Memory** %MEMORY
  %loadMem_40824f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3499 = getelementptr inbounds %struct.GPR, %struct.GPR* %3498, i32 0, i32 33
  %3500 = getelementptr inbounds %struct.Reg, %struct.Reg* %3499, i32 0, i32 0
  %PC.i816 = bitcast %union.anon* %3500 to i64*
  %3501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3502 = getelementptr inbounds %struct.GPR, %struct.GPR* %3501, i32 0, i32 5
  %3503 = getelementptr inbounds %struct.Reg, %struct.Reg* %3502, i32 0, i32 0
  %RCX.i817 = bitcast %union.anon* %3503 to i64*
  %3504 = load i64, i64* %RCX.i817
  %3505 = load i64, i64* %PC.i816
  %3506 = add i64 %3505, 3
  store i64 %3506, i64* %PC.i816
  %3507 = trunc i64 %3504 to i32
  %3508 = sub i32 %3507, 1
  %3509 = zext i32 %3508 to i64
  store i64 %3509, i64* %RCX.i817, align 8
  %3510 = icmp ult i32 %3507, 1
  %3511 = zext i1 %3510 to i8
  %3512 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3511, i8* %3512, align 1
  %3513 = and i32 %3508, 255
  %3514 = call i32 @llvm.ctpop.i32(i32 %3513)
  %3515 = trunc i32 %3514 to i8
  %3516 = and i8 %3515, 1
  %3517 = xor i8 %3516, 1
  %3518 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3517, i8* %3518, align 1
  %3519 = xor i64 1, %3504
  %3520 = trunc i64 %3519 to i32
  %3521 = xor i32 %3520, %3508
  %3522 = lshr i32 %3521, 4
  %3523 = trunc i32 %3522 to i8
  %3524 = and i8 %3523, 1
  %3525 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3524, i8* %3525, align 1
  %3526 = icmp eq i32 %3508, 0
  %3527 = zext i1 %3526 to i8
  %3528 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3527, i8* %3528, align 1
  %3529 = lshr i32 %3508, 31
  %3530 = trunc i32 %3529 to i8
  %3531 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3530, i8* %3531, align 1
  %3532 = lshr i32 %3507, 31
  %3533 = xor i32 %3529, %3532
  %3534 = add i32 %3533, %3532
  %3535 = icmp eq i32 %3534, 2
  %3536 = zext i1 %3535 to i8
  %3537 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3536, i8* %3537, align 1
  store %struct.Memory* %loadMem_40824f, %struct.Memory** %MEMORY
  %loadMem_408252 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3538 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3539 = getelementptr inbounds %struct.GPR, %struct.GPR* %3538, i32 0, i32 33
  %3540 = getelementptr inbounds %struct.Reg, %struct.Reg* %3539, i32 0, i32 0
  %PC.i813 = bitcast %union.anon* %3540 to i64*
  %3541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3542 = getelementptr inbounds %struct.GPR, %struct.GPR* %3541, i32 0, i32 5
  %3543 = getelementptr inbounds %struct.Reg, %struct.Reg* %3542, i32 0, i32 0
  %ECX.i814 = bitcast %union.anon* %3543 to i32*
  %3544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3545 = getelementptr inbounds %struct.GPR, %struct.GPR* %3544, i32 0, i32 17
  %3546 = getelementptr inbounds %struct.Reg, %struct.Reg* %3545, i32 0, i32 0
  %R8.i815 = bitcast %union.anon* %3546 to i64*
  %3547 = load i32, i32* %ECX.i814
  %3548 = zext i32 %3547 to i64
  %3549 = load i64, i64* %PC.i813
  %3550 = add i64 %3549, 3
  store i64 %3550, i64* %PC.i813
  %3551 = shl i64 %3548, 32
  %3552 = ashr exact i64 %3551, 32
  store i64 %3552, i64* %R8.i815, align 8
  store %struct.Memory* %loadMem_408252, %struct.Memory** %MEMORY
  %loadMem_408255 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3553 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3554 = getelementptr inbounds %struct.GPR, %struct.GPR* %3553, i32 0, i32 33
  %3555 = getelementptr inbounds %struct.Reg, %struct.Reg* %3554, i32 0, i32 0
  %PC.i809 = bitcast %union.anon* %3555 to i64*
  %3556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3557 = getelementptr inbounds %struct.GPR, %struct.GPR* %3556, i32 0, i32 5
  %3558 = getelementptr inbounds %struct.Reg, %struct.Reg* %3557, i32 0, i32 0
  %RCX.i810 = bitcast %union.anon* %3558 to i64*
  %3559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3560 = getelementptr inbounds %struct.GPR, %struct.GPR* %3559, i32 0, i32 7
  %3561 = getelementptr inbounds %struct.Reg, %struct.Reg* %3560, i32 0, i32 0
  %RDX.i811 = bitcast %union.anon* %3561 to i64*
  %3562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3563 = getelementptr inbounds %struct.GPR, %struct.GPR* %3562, i32 0, i32 17
  %3564 = getelementptr inbounds %struct.Reg, %struct.Reg* %3563, i32 0, i32 0
  %R8.i812 = bitcast %union.anon* %3564 to i64*
  %3565 = load i64, i64* %RDX.i811
  %3566 = load i64, i64* %R8.i812
  %3567 = mul i64 %3566, 4
  %3568 = add i64 %3567, %3565
  %3569 = load i64, i64* %PC.i809
  %3570 = add i64 %3569, 4
  store i64 %3570, i64* %PC.i809
  %3571 = inttoptr i64 %3568 to i32*
  %3572 = load i32, i32* %3571
  %3573 = zext i32 %3572 to i64
  store i64 %3573, i64* %RCX.i810, align 8
  store %struct.Memory* %loadMem_408255, %struct.Memory** %MEMORY
  %loadMem_408259 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3575 = getelementptr inbounds %struct.GPR, %struct.GPR* %3574, i32 0, i32 33
  %3576 = getelementptr inbounds %struct.Reg, %struct.Reg* %3575, i32 0, i32 0
  %PC.i806 = bitcast %union.anon* %3576 to i64*
  %3577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3578 = getelementptr inbounds %struct.GPR, %struct.GPR* %3577, i32 0, i32 7
  %3579 = getelementptr inbounds %struct.Reg, %struct.Reg* %3578, i32 0, i32 0
  %RDX.i807 = bitcast %union.anon* %3579 to i64*
  %3580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3581 = getelementptr inbounds %struct.GPR, %struct.GPR* %3580, i32 0, i32 15
  %3582 = getelementptr inbounds %struct.Reg, %struct.Reg* %3581, i32 0, i32 0
  %RBP.i808 = bitcast %union.anon* %3582 to i64*
  %3583 = load i64, i64* %RBP.i808
  %3584 = sub i64 %3583, 24
  %3585 = load i64, i64* %PC.i806
  %3586 = add i64 %3585, 4
  store i64 %3586, i64* %PC.i806
  %3587 = inttoptr i64 %3584 to i64*
  %3588 = load i64, i64* %3587
  store i64 %3588, i64* %RDX.i807, align 8
  store %struct.Memory* %loadMem_408259, %struct.Memory** %MEMORY
  %loadMem_40825d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3590 = getelementptr inbounds %struct.GPR, %struct.GPR* %3589, i32 0, i32 33
  %3591 = getelementptr inbounds %struct.Reg, %struct.Reg* %3590, i32 0, i32 0
  %PC.i804 = bitcast %union.anon* %3591 to i64*
  %3592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3593 = getelementptr inbounds %struct.GPR, %struct.GPR* %3592, i32 0, i32 7
  %3594 = getelementptr inbounds %struct.Reg, %struct.Reg* %3593, i32 0, i32 0
  %RDX.i805 = bitcast %union.anon* %3594 to i64*
  %3595 = load i64, i64* %RDX.i805
  %3596 = add i64 %3595, 312
  %3597 = load i64, i64* %PC.i804
  %3598 = add i64 %3597, 7
  store i64 %3598, i64* %PC.i804
  %3599 = inttoptr i64 %3596 to i64*
  %3600 = load i64, i64* %3599
  store i64 %3600, i64* %RDX.i805, align 8
  store %struct.Memory* %loadMem_40825d, %struct.Memory** %MEMORY
  %loadMem_408264 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3602 = getelementptr inbounds %struct.GPR, %struct.GPR* %3601, i32 0, i32 33
  %3603 = getelementptr inbounds %struct.Reg, %struct.Reg* %3602, i32 0, i32 0
  %PC.i802 = bitcast %union.anon* %3603 to i64*
  %3604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3605 = getelementptr inbounds %struct.GPR, %struct.GPR* %3604, i32 0, i32 7
  %3606 = getelementptr inbounds %struct.Reg, %struct.Reg* %3605, i32 0, i32 0
  %RDX.i803 = bitcast %union.anon* %3606 to i64*
  %3607 = load i64, i64* %RDX.i803
  %3608 = add i64 %3607, 48
  %3609 = load i64, i64* %PC.i802
  %3610 = add i64 %3609, 4
  store i64 %3610, i64* %PC.i802
  %3611 = inttoptr i64 %3608 to i64*
  %3612 = load i64, i64* %3611
  store i64 %3612, i64* %RDX.i803, align 8
  store %struct.Memory* %loadMem_408264, %struct.Memory** %MEMORY
  %loadMem_408268 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3613 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3614 = getelementptr inbounds %struct.GPR, %struct.GPR* %3613, i32 0, i32 33
  %3615 = getelementptr inbounds %struct.Reg, %struct.Reg* %3614, i32 0, i32 0
  %PC.i799 = bitcast %union.anon* %3615 to i64*
  %3616 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3617 = getelementptr inbounds %struct.GPR, %struct.GPR* %3616, i32 0, i32 9
  %3618 = getelementptr inbounds %struct.Reg, %struct.Reg* %3617, i32 0, i32 0
  %RSI.i800 = bitcast %union.anon* %3618 to i64*
  %3619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3620 = getelementptr inbounds %struct.GPR, %struct.GPR* %3619, i32 0, i32 15
  %3621 = getelementptr inbounds %struct.Reg, %struct.Reg* %3620, i32 0, i32 0
  %RBP.i801 = bitcast %union.anon* %3621 to i64*
  %3622 = load i64, i64* %RBP.i801
  %3623 = sub i64 %3622, 80
  %3624 = load i64, i64* %PC.i799
  %3625 = add i64 %3624, 3
  store i64 %3625, i64* %PC.i799
  %3626 = inttoptr i64 %3623 to i32*
  %3627 = load i32, i32* %3626
  %3628 = zext i32 %3627 to i64
  store i64 %3628, i64* %RSI.i800, align 8
  store %struct.Memory* %loadMem_408268, %struct.Memory** %MEMORY
  %loadMem_40826b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3630 = getelementptr inbounds %struct.GPR, %struct.GPR* %3629, i32 0, i32 33
  %3631 = getelementptr inbounds %struct.Reg, %struct.Reg* %3630, i32 0, i32 0
  %PC.i797 = bitcast %union.anon* %3631 to i64*
  %3632 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3633 = getelementptr inbounds %struct.GPR, %struct.GPR* %3632, i32 0, i32 9
  %3634 = getelementptr inbounds %struct.Reg, %struct.Reg* %3633, i32 0, i32 0
  %RSI.i798 = bitcast %union.anon* %3634 to i64*
  %3635 = load i64, i64* %RSI.i798
  %3636 = load i64, i64* %PC.i797
  %3637 = add i64 %3636, 3
  store i64 %3637, i64* %PC.i797
  %3638 = trunc i64 %3635 to i32
  %3639 = sub i32 %3638, 1
  %3640 = zext i32 %3639 to i64
  store i64 %3640, i64* %RSI.i798, align 8
  %3641 = icmp ult i32 %3638, 1
  %3642 = zext i1 %3641 to i8
  %3643 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3642, i8* %3643, align 1
  %3644 = and i32 %3639, 255
  %3645 = call i32 @llvm.ctpop.i32(i32 %3644)
  %3646 = trunc i32 %3645 to i8
  %3647 = and i8 %3646, 1
  %3648 = xor i8 %3647, 1
  %3649 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3648, i8* %3649, align 1
  %3650 = xor i64 1, %3635
  %3651 = trunc i64 %3650 to i32
  %3652 = xor i32 %3651, %3639
  %3653 = lshr i32 %3652, 4
  %3654 = trunc i32 %3653 to i8
  %3655 = and i8 %3654, 1
  %3656 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3655, i8* %3656, align 1
  %3657 = icmp eq i32 %3639, 0
  %3658 = zext i1 %3657 to i8
  %3659 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3658, i8* %3659, align 1
  %3660 = lshr i32 %3639, 31
  %3661 = trunc i32 %3660 to i8
  %3662 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3661, i8* %3662, align 1
  %3663 = lshr i32 %3638, 31
  %3664 = xor i32 %3660, %3663
  %3665 = add i32 %3664, %3663
  %3666 = icmp eq i32 %3665, 2
  %3667 = zext i1 %3666 to i8
  %3668 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3667, i8* %3668, align 1
  store %struct.Memory* %loadMem_40826b, %struct.Memory** %MEMORY
  %loadMem_40826e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3669 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3670 = getelementptr inbounds %struct.GPR, %struct.GPR* %3669, i32 0, i32 33
  %3671 = getelementptr inbounds %struct.Reg, %struct.Reg* %3670, i32 0, i32 0
  %PC.i794 = bitcast %union.anon* %3671 to i64*
  %3672 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3673 = getelementptr inbounds %struct.GPR, %struct.GPR* %3672, i32 0, i32 9
  %3674 = getelementptr inbounds %struct.Reg, %struct.Reg* %3673, i32 0, i32 0
  %ESI.i795 = bitcast %union.anon* %3674 to i32*
  %3675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3676 = getelementptr inbounds %struct.GPR, %struct.GPR* %3675, i32 0, i32 17
  %3677 = getelementptr inbounds %struct.Reg, %struct.Reg* %3676, i32 0, i32 0
  %R8.i796 = bitcast %union.anon* %3677 to i64*
  %3678 = load i32, i32* %ESI.i795
  %3679 = zext i32 %3678 to i64
  %3680 = load i64, i64* %PC.i794
  %3681 = add i64 %3680, 3
  store i64 %3681, i64* %PC.i794
  %3682 = shl i64 %3679, 32
  %3683 = ashr exact i64 %3682, 32
  store i64 %3683, i64* %R8.i796, align 8
  store %struct.Memory* %loadMem_40826e, %struct.Memory** %MEMORY
  %loadMem_408271 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3685 = getelementptr inbounds %struct.GPR, %struct.GPR* %3684, i32 0, i32 33
  %3686 = getelementptr inbounds %struct.Reg, %struct.Reg* %3685, i32 0, i32 0
  %PC.i790 = bitcast %union.anon* %3686 to i64*
  %3687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3688 = getelementptr inbounds %struct.GPR, %struct.GPR* %3687, i32 0, i32 5
  %3689 = getelementptr inbounds %struct.Reg, %struct.Reg* %3688, i32 0, i32 0
  %RCX.i791 = bitcast %union.anon* %3689 to i64*
  %3690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3691 = getelementptr inbounds %struct.GPR, %struct.GPR* %3690, i32 0, i32 7
  %3692 = getelementptr inbounds %struct.Reg, %struct.Reg* %3691, i32 0, i32 0
  %RDX.i792 = bitcast %union.anon* %3692 to i64*
  %3693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3694 = getelementptr inbounds %struct.GPR, %struct.GPR* %3693, i32 0, i32 17
  %3695 = getelementptr inbounds %struct.Reg, %struct.Reg* %3694, i32 0, i32 0
  %R8.i793 = bitcast %union.anon* %3695 to i64*
  %3696 = load i64, i64* %RCX.i791
  %3697 = load i64, i64* %RDX.i792
  %3698 = load i64, i64* %R8.i793
  %3699 = mul i64 %3698, 4
  %3700 = add i64 %3699, %3697
  %3701 = load i64, i64* %PC.i790
  %3702 = add i64 %3701, 4
  store i64 %3702, i64* %PC.i790
  %3703 = trunc i64 %3696 to i32
  %3704 = inttoptr i64 %3700 to i32*
  %3705 = load i32, i32* %3704
  %3706 = add i32 %3705, %3703
  %3707 = zext i32 %3706 to i64
  store i64 %3707, i64* %RCX.i791, align 8
  %3708 = icmp ult i32 %3706, %3703
  %3709 = icmp ult i32 %3706, %3705
  %3710 = or i1 %3708, %3709
  %3711 = zext i1 %3710 to i8
  %3712 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3711, i8* %3712, align 1
  %3713 = and i32 %3706, 255
  %3714 = call i32 @llvm.ctpop.i32(i32 %3713)
  %3715 = trunc i32 %3714 to i8
  %3716 = and i8 %3715, 1
  %3717 = xor i8 %3716, 1
  %3718 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3717, i8* %3718, align 1
  %3719 = xor i32 %3705, %3703
  %3720 = xor i32 %3719, %3706
  %3721 = lshr i32 %3720, 4
  %3722 = trunc i32 %3721 to i8
  %3723 = and i8 %3722, 1
  %3724 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3723, i8* %3724, align 1
  %3725 = icmp eq i32 %3706, 0
  %3726 = zext i1 %3725 to i8
  %3727 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3726, i8* %3727, align 1
  %3728 = lshr i32 %3706, 31
  %3729 = trunc i32 %3728 to i8
  %3730 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3729, i8* %3730, align 1
  %3731 = lshr i32 %3703, 31
  %3732 = lshr i32 %3705, 31
  %3733 = xor i32 %3728, %3731
  %3734 = xor i32 %3728, %3732
  %3735 = add i32 %3733, %3734
  %3736 = icmp eq i32 %3735, 2
  %3737 = zext i1 %3736 to i8
  %3738 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3737, i8* %3738, align 1
  store %struct.Memory* %loadMem_408271, %struct.Memory** %MEMORY
  %loadMem_408275 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3740 = getelementptr inbounds %struct.GPR, %struct.GPR* %3739, i32 0, i32 33
  %3741 = getelementptr inbounds %struct.Reg, %struct.Reg* %3740, i32 0, i32 0
  %PC.i787 = bitcast %union.anon* %3741 to i64*
  %3742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3743 = getelementptr inbounds %struct.GPR, %struct.GPR* %3742, i32 0, i32 1
  %3744 = getelementptr inbounds %struct.Reg, %struct.Reg* %3743, i32 0, i32 0
  %EAX.i788 = bitcast %union.anon* %3744 to i32*
  %3745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3746 = getelementptr inbounds %struct.GPR, %struct.GPR* %3745, i32 0, i32 11
  %3747 = getelementptr inbounds %struct.Reg, %struct.Reg* %3746, i32 0, i32 0
  %RDI.i789 = bitcast %union.anon* %3747 to i64*
  %3748 = load i32, i32* %EAX.i788
  %3749 = zext i32 %3748 to i64
  %3750 = load i64, i64* %PC.i787
  %3751 = add i64 %3750, 2
  store i64 %3751, i64* %PC.i787
  %3752 = and i64 %3749, 4294967295
  store i64 %3752, i64* %RDI.i789, align 8
  store %struct.Memory* %loadMem_408275, %struct.Memory** %MEMORY
  %loadMem_408277 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3753 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3754 = getelementptr inbounds %struct.GPR, %struct.GPR* %3753, i32 0, i32 33
  %3755 = getelementptr inbounds %struct.Reg, %struct.Reg* %3754, i32 0, i32 0
  %PC.i784 = bitcast %union.anon* %3755 to i64*
  %3756 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3757 = getelementptr inbounds %struct.GPR, %struct.GPR* %3756, i32 0, i32 5
  %3758 = getelementptr inbounds %struct.Reg, %struct.Reg* %3757, i32 0, i32 0
  %ECX.i785 = bitcast %union.anon* %3758 to i32*
  %3759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3760 = getelementptr inbounds %struct.GPR, %struct.GPR* %3759, i32 0, i32 9
  %3761 = getelementptr inbounds %struct.Reg, %struct.Reg* %3760, i32 0, i32 0
  %RSI.i786 = bitcast %union.anon* %3761 to i64*
  %3762 = load i32, i32* %ECX.i785
  %3763 = zext i32 %3762 to i64
  %3764 = load i64, i64* %PC.i784
  %3765 = add i64 %3764, 2
  store i64 %3765, i64* %PC.i784
  %3766 = and i64 %3763, 4294967295
  store i64 %3766, i64* %RSI.i786, align 8
  store %struct.Memory* %loadMem_408277, %struct.Memory** %MEMORY
  %loadMem1_408279 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3767 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3768 = getelementptr inbounds %struct.GPR, %struct.GPR* %3767, i32 0, i32 33
  %3769 = getelementptr inbounds %struct.Reg, %struct.Reg* %3768, i32 0, i32 0
  %PC.i783 = bitcast %union.anon* %3769 to i64*
  %3770 = load i64, i64* %PC.i783
  %3771 = add i64 %3770, 130871
  %3772 = load i64, i64* %PC.i783
  %3773 = add i64 %3772, 5
  %3774 = load i64, i64* %PC.i783
  %3775 = add i64 %3774, 5
  store i64 %3775, i64* %PC.i783
  %3776 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3777 = load i64, i64* %3776, align 8
  %3778 = add i64 %3777, -8
  %3779 = inttoptr i64 %3778 to i64*
  store i64 %3773, i64* %3779
  store i64 %3778, i64* %3776, align 8
  %3780 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3771, i64* %3780, align 8
  store %struct.Memory* %loadMem1_408279, %struct.Memory** %MEMORY
  %loadMem2_408279 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_408279 = load i64, i64* %3
  %call2_408279 = call %struct.Memory* @sub_4281b0.ILogsum(%struct.State* %0, i64 %loadPC_408279, %struct.Memory* %loadMem2_408279)
  store %struct.Memory* %call2_408279, %struct.Memory** %MEMORY
  %loadMem_40827e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3781 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3782 = getelementptr inbounds %struct.GPR, %struct.GPR* %3781, i32 0, i32 33
  %3783 = getelementptr inbounds %struct.Reg, %struct.Reg* %3782, i32 0, i32 0
  %PC.i780 = bitcast %union.anon* %3783 to i64*
  %3784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3785 = getelementptr inbounds %struct.GPR, %struct.GPR* %3784, i32 0, i32 7
  %3786 = getelementptr inbounds %struct.Reg, %struct.Reg* %3785, i32 0, i32 0
  %RDX.i781 = bitcast %union.anon* %3786 to i64*
  %3787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3788 = getelementptr inbounds %struct.GPR, %struct.GPR* %3787, i32 0, i32 15
  %3789 = getelementptr inbounds %struct.Reg, %struct.Reg* %3788, i32 0, i32 0
  %RBP.i782 = bitcast %union.anon* %3789 to i64*
  %3790 = load i64, i64* %RBP.i782
  %3791 = sub i64 %3790, 72
  %3792 = load i64, i64* %PC.i780
  %3793 = add i64 %3792, 4
  store i64 %3793, i64* %PC.i780
  %3794 = inttoptr i64 %3791 to i64*
  %3795 = load i64, i64* %3794
  store i64 %3795, i64* %RDX.i781, align 8
  store %struct.Memory* %loadMem_40827e, %struct.Memory** %MEMORY
  %loadMem_408282 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3796 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3797 = getelementptr inbounds %struct.GPR, %struct.GPR* %3796, i32 0, i32 33
  %3798 = getelementptr inbounds %struct.Reg, %struct.Reg* %3797, i32 0, i32 0
  %PC.i777 = bitcast %union.anon* %3798 to i64*
  %3799 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3800 = getelementptr inbounds %struct.GPR, %struct.GPR* %3799, i32 0, i32 15
  %3801 = getelementptr inbounds %struct.Reg, %struct.Reg* %3800, i32 0, i32 0
  %RBP.i778 = bitcast %union.anon* %3801 to i64*
  %3802 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3803 = getelementptr inbounds %struct.GPR, %struct.GPR* %3802, i32 0, i32 17
  %3804 = getelementptr inbounds %struct.Reg, %struct.Reg* %3803, i32 0, i32 0
  %R8.i779 = bitcast %union.anon* %3804 to i64*
  %3805 = load i64, i64* %RBP.i778
  %3806 = sub i64 %3805, 76
  %3807 = load i64, i64* %PC.i777
  %3808 = add i64 %3807, 4
  store i64 %3808, i64* %PC.i777
  %3809 = inttoptr i64 %3806 to i32*
  %3810 = load i32, i32* %3809
  %3811 = sext i32 %3810 to i64
  store i64 %3811, i64* %R8.i779, align 8
  store %struct.Memory* %loadMem_408282, %struct.Memory** %MEMORY
  %loadMem_408286 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3813 = getelementptr inbounds %struct.GPR, %struct.GPR* %3812, i32 0, i32 33
  %3814 = getelementptr inbounds %struct.Reg, %struct.Reg* %3813, i32 0, i32 0
  %PC.i774 = bitcast %union.anon* %3814 to i64*
  %3815 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3816 = getelementptr inbounds %struct.GPR, %struct.GPR* %3815, i32 0, i32 7
  %3817 = getelementptr inbounds %struct.Reg, %struct.Reg* %3816, i32 0, i32 0
  %RDX.i775 = bitcast %union.anon* %3817 to i64*
  %3818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3819 = getelementptr inbounds %struct.GPR, %struct.GPR* %3818, i32 0, i32 17
  %3820 = getelementptr inbounds %struct.Reg, %struct.Reg* %3819, i32 0, i32 0
  %R8.i776 = bitcast %union.anon* %3820 to i64*
  %3821 = load i64, i64* %RDX.i775
  %3822 = load i64, i64* %R8.i776
  %3823 = mul i64 %3822, 8
  %3824 = add i64 %3823, %3821
  %3825 = load i64, i64* %PC.i774
  %3826 = add i64 %3825, 4
  store i64 %3826, i64* %PC.i774
  %3827 = inttoptr i64 %3824 to i64*
  %3828 = load i64, i64* %3827
  store i64 %3828, i64* %RDX.i775, align 8
  store %struct.Memory* %loadMem_408286, %struct.Memory** %MEMORY
  %loadMem_40828a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3830 = getelementptr inbounds %struct.GPR, %struct.GPR* %3829, i32 0, i32 33
  %3831 = getelementptr inbounds %struct.Reg, %struct.Reg* %3830, i32 0, i32 0
  %PC.i771 = bitcast %union.anon* %3831 to i64*
  %3832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3833 = getelementptr inbounds %struct.GPR, %struct.GPR* %3832, i32 0, i32 15
  %3834 = getelementptr inbounds %struct.Reg, %struct.Reg* %3833, i32 0, i32 0
  %RBP.i772 = bitcast %union.anon* %3834 to i64*
  %3835 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3836 = getelementptr inbounds %struct.GPR, %struct.GPR* %3835, i32 0, i32 17
  %3837 = getelementptr inbounds %struct.Reg, %struct.Reg* %3836, i32 0, i32 0
  %R8.i773 = bitcast %union.anon* %3837 to i64*
  %3838 = load i64, i64* %RBP.i772
  %3839 = sub i64 %3838, 80
  %3840 = load i64, i64* %PC.i771
  %3841 = add i64 %3840, 4
  store i64 %3841, i64* %PC.i771
  %3842 = inttoptr i64 %3839 to i32*
  %3843 = load i32, i32* %3842
  %3844 = sext i32 %3843 to i64
  store i64 %3844, i64* %R8.i773, align 8
  store %struct.Memory* %loadMem_40828a, %struct.Memory** %MEMORY
  %loadMem_40828e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3846 = getelementptr inbounds %struct.GPR, %struct.GPR* %3845, i32 0, i32 33
  %3847 = getelementptr inbounds %struct.Reg, %struct.Reg* %3846, i32 0, i32 0
  %PC.i767 = bitcast %union.anon* %3847 to i64*
  %3848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3849 = getelementptr inbounds %struct.GPR, %struct.GPR* %3848, i32 0, i32 1
  %3850 = getelementptr inbounds %struct.Reg, %struct.Reg* %3849, i32 0, i32 0
  %EAX.i768 = bitcast %union.anon* %3850 to i32*
  %3851 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3852 = getelementptr inbounds %struct.GPR, %struct.GPR* %3851, i32 0, i32 7
  %3853 = getelementptr inbounds %struct.Reg, %struct.Reg* %3852, i32 0, i32 0
  %RDX.i769 = bitcast %union.anon* %3853 to i64*
  %3854 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3855 = getelementptr inbounds %struct.GPR, %struct.GPR* %3854, i32 0, i32 17
  %3856 = getelementptr inbounds %struct.Reg, %struct.Reg* %3855, i32 0, i32 0
  %R8.i770 = bitcast %union.anon* %3856 to i64*
  %3857 = load i64, i64* %RDX.i769
  %3858 = load i64, i64* %R8.i770
  %3859 = mul i64 %3858, 4
  %3860 = add i64 %3859, %3857
  %3861 = load i32, i32* %EAX.i768
  %3862 = zext i32 %3861 to i64
  %3863 = load i64, i64* %PC.i767
  %3864 = add i64 %3863, 4
  store i64 %3864, i64* %PC.i767
  %3865 = inttoptr i64 %3860 to i32*
  store i32 %3861, i32* %3865
  store %struct.Memory* %loadMem_40828e, %struct.Memory** %MEMORY
  %loadMem_408292 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3867 = getelementptr inbounds %struct.GPR, %struct.GPR* %3866, i32 0, i32 33
  %3868 = getelementptr inbounds %struct.Reg, %struct.Reg* %3867, i32 0, i32 0
  %PC.i764 = bitcast %union.anon* %3868 to i64*
  %3869 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3870 = getelementptr inbounds %struct.GPR, %struct.GPR* %3869, i32 0, i32 7
  %3871 = getelementptr inbounds %struct.Reg, %struct.Reg* %3870, i32 0, i32 0
  %RDX.i765 = bitcast %union.anon* %3871 to i64*
  %3872 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3873 = getelementptr inbounds %struct.GPR, %struct.GPR* %3872, i32 0, i32 15
  %3874 = getelementptr inbounds %struct.Reg, %struct.Reg* %3873, i32 0, i32 0
  %RBP.i766 = bitcast %union.anon* %3874 to i64*
  %3875 = load i64, i64* %RBP.i766
  %3876 = sub i64 %3875, 56
  %3877 = load i64, i64* %PC.i764
  %3878 = add i64 %3877, 4
  store i64 %3878, i64* %PC.i764
  %3879 = inttoptr i64 %3876 to i64*
  %3880 = load i64, i64* %3879
  store i64 %3880, i64* %RDX.i765, align 8
  store %struct.Memory* %loadMem_408292, %struct.Memory** %MEMORY
  %loadMem_408296 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3881 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3882 = getelementptr inbounds %struct.GPR, %struct.GPR* %3881, i32 0, i32 33
  %3883 = getelementptr inbounds %struct.Reg, %struct.Reg* %3882, i32 0, i32 0
  %PC.i761 = bitcast %union.anon* %3883 to i64*
  %3884 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3885 = getelementptr inbounds %struct.GPR, %struct.GPR* %3884, i32 0, i32 1
  %3886 = getelementptr inbounds %struct.Reg, %struct.Reg* %3885, i32 0, i32 0
  %RAX.i762 = bitcast %union.anon* %3886 to i64*
  %3887 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3888 = getelementptr inbounds %struct.GPR, %struct.GPR* %3887, i32 0, i32 15
  %3889 = getelementptr inbounds %struct.Reg, %struct.Reg* %3888, i32 0, i32 0
  %RBP.i763 = bitcast %union.anon* %3889 to i64*
  %3890 = load i64, i64* %RBP.i763
  %3891 = sub i64 %3890, 76
  %3892 = load i64, i64* %PC.i761
  %3893 = add i64 %3892, 3
  store i64 %3893, i64* %PC.i761
  %3894 = inttoptr i64 %3891 to i32*
  %3895 = load i32, i32* %3894
  %3896 = zext i32 %3895 to i64
  store i64 %3896, i64* %RAX.i762, align 8
  store %struct.Memory* %loadMem_408296, %struct.Memory** %MEMORY
  %loadMem_408299 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3897 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3898 = getelementptr inbounds %struct.GPR, %struct.GPR* %3897, i32 0, i32 33
  %3899 = getelementptr inbounds %struct.Reg, %struct.Reg* %3898, i32 0, i32 0
  %PC.i759 = bitcast %union.anon* %3899 to i64*
  %3900 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3901 = getelementptr inbounds %struct.GPR, %struct.GPR* %3900, i32 0, i32 1
  %3902 = getelementptr inbounds %struct.Reg, %struct.Reg* %3901, i32 0, i32 0
  %RAX.i760 = bitcast %union.anon* %3902 to i64*
  %3903 = load i64, i64* %RAX.i760
  %3904 = load i64, i64* %PC.i759
  %3905 = add i64 %3904, 3
  store i64 %3905, i64* %PC.i759
  %3906 = trunc i64 %3903 to i32
  %3907 = sub i32 %3906, 1
  %3908 = zext i32 %3907 to i64
  store i64 %3908, i64* %RAX.i760, align 8
  %3909 = icmp ult i32 %3906, 1
  %3910 = zext i1 %3909 to i8
  %3911 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3910, i8* %3911, align 1
  %3912 = and i32 %3907, 255
  %3913 = call i32 @llvm.ctpop.i32(i32 %3912)
  %3914 = trunc i32 %3913 to i8
  %3915 = and i8 %3914, 1
  %3916 = xor i8 %3915, 1
  %3917 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3916, i8* %3917, align 1
  %3918 = xor i64 1, %3903
  %3919 = trunc i64 %3918 to i32
  %3920 = xor i32 %3919, %3907
  %3921 = lshr i32 %3920, 4
  %3922 = trunc i32 %3921 to i8
  %3923 = and i8 %3922, 1
  %3924 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3923, i8* %3924, align 1
  %3925 = icmp eq i32 %3907, 0
  %3926 = zext i1 %3925 to i8
  %3927 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3926, i8* %3927, align 1
  %3928 = lshr i32 %3907, 31
  %3929 = trunc i32 %3928 to i8
  %3930 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3929, i8* %3930, align 1
  %3931 = lshr i32 %3906, 31
  %3932 = xor i32 %3928, %3931
  %3933 = add i32 %3932, %3931
  %3934 = icmp eq i32 %3933, 2
  %3935 = zext i1 %3934 to i8
  %3936 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3935, i8* %3936, align 1
  store %struct.Memory* %loadMem_408299, %struct.Memory** %MEMORY
  %loadMem_40829c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3938 = getelementptr inbounds %struct.GPR, %struct.GPR* %3937, i32 0, i32 33
  %3939 = getelementptr inbounds %struct.Reg, %struct.Reg* %3938, i32 0, i32 0
  %PC.i756 = bitcast %union.anon* %3939 to i64*
  %3940 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3941 = getelementptr inbounds %struct.GPR, %struct.GPR* %3940, i32 0, i32 1
  %3942 = getelementptr inbounds %struct.Reg, %struct.Reg* %3941, i32 0, i32 0
  %EAX.i757 = bitcast %union.anon* %3942 to i32*
  %3943 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3944 = getelementptr inbounds %struct.GPR, %struct.GPR* %3943, i32 0, i32 17
  %3945 = getelementptr inbounds %struct.Reg, %struct.Reg* %3944, i32 0, i32 0
  %R8.i758 = bitcast %union.anon* %3945 to i64*
  %3946 = load i32, i32* %EAX.i757
  %3947 = zext i32 %3946 to i64
  %3948 = load i64, i64* %PC.i756
  %3949 = add i64 %3948, 3
  store i64 %3949, i64* %PC.i756
  %3950 = shl i64 %3947, 32
  %3951 = ashr exact i64 %3950, 32
  store i64 %3951, i64* %R8.i758, align 8
  store %struct.Memory* %loadMem_40829c, %struct.Memory** %MEMORY
  %loadMem_40829f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3952 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3953 = getelementptr inbounds %struct.GPR, %struct.GPR* %3952, i32 0, i32 33
  %3954 = getelementptr inbounds %struct.Reg, %struct.Reg* %3953, i32 0, i32 0
  %PC.i753 = bitcast %union.anon* %3954 to i64*
  %3955 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3956 = getelementptr inbounds %struct.GPR, %struct.GPR* %3955, i32 0, i32 7
  %3957 = getelementptr inbounds %struct.Reg, %struct.Reg* %3956, i32 0, i32 0
  %RDX.i754 = bitcast %union.anon* %3957 to i64*
  %3958 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3959 = getelementptr inbounds %struct.GPR, %struct.GPR* %3958, i32 0, i32 17
  %3960 = getelementptr inbounds %struct.Reg, %struct.Reg* %3959, i32 0, i32 0
  %R8.i755 = bitcast %union.anon* %3960 to i64*
  %3961 = load i64, i64* %RDX.i754
  %3962 = load i64, i64* %R8.i755
  %3963 = mul i64 %3962, 8
  %3964 = add i64 %3963, %3961
  %3965 = load i64, i64* %PC.i753
  %3966 = add i64 %3965, 4
  store i64 %3966, i64* %PC.i753
  %3967 = inttoptr i64 %3964 to i64*
  %3968 = load i64, i64* %3967
  store i64 %3968, i64* %RDX.i754, align 8
  store %struct.Memory* %loadMem_40829f, %struct.Memory** %MEMORY
  %loadMem_4082a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3969 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3970 = getelementptr inbounds %struct.GPR, %struct.GPR* %3969, i32 0, i32 33
  %3971 = getelementptr inbounds %struct.Reg, %struct.Reg* %3970, i32 0, i32 0
  %PC.i750 = bitcast %union.anon* %3971 to i64*
  %3972 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3973 = getelementptr inbounds %struct.GPR, %struct.GPR* %3972, i32 0, i32 15
  %3974 = getelementptr inbounds %struct.Reg, %struct.Reg* %3973, i32 0, i32 0
  %RBP.i751 = bitcast %union.anon* %3974 to i64*
  %3975 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3976 = getelementptr inbounds %struct.GPR, %struct.GPR* %3975, i32 0, i32 17
  %3977 = getelementptr inbounds %struct.Reg, %struct.Reg* %3976, i32 0, i32 0
  %R8.i752 = bitcast %union.anon* %3977 to i64*
  %3978 = load i64, i64* %RBP.i751
  %3979 = sub i64 %3978, 80
  %3980 = load i64, i64* %PC.i750
  %3981 = add i64 %3980, 4
  store i64 %3981, i64* %PC.i750
  %3982 = inttoptr i64 %3979 to i32*
  %3983 = load i32, i32* %3982
  %3984 = sext i32 %3983 to i64
  store i64 %3984, i64* %R8.i752, align 8
  store %struct.Memory* %loadMem_4082a3, %struct.Memory** %MEMORY
  %loadMem_4082a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3985 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3986 = getelementptr inbounds %struct.GPR, %struct.GPR* %3985, i32 0, i32 33
  %3987 = getelementptr inbounds %struct.Reg, %struct.Reg* %3986, i32 0, i32 0
  %PC.i746 = bitcast %union.anon* %3987 to i64*
  %3988 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3989 = getelementptr inbounds %struct.GPR, %struct.GPR* %3988, i32 0, i32 1
  %3990 = getelementptr inbounds %struct.Reg, %struct.Reg* %3989, i32 0, i32 0
  %RAX.i747 = bitcast %union.anon* %3990 to i64*
  %3991 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3992 = getelementptr inbounds %struct.GPR, %struct.GPR* %3991, i32 0, i32 7
  %3993 = getelementptr inbounds %struct.Reg, %struct.Reg* %3992, i32 0, i32 0
  %RDX.i748 = bitcast %union.anon* %3993 to i64*
  %3994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3995 = getelementptr inbounds %struct.GPR, %struct.GPR* %3994, i32 0, i32 17
  %3996 = getelementptr inbounds %struct.Reg, %struct.Reg* %3995, i32 0, i32 0
  %R8.i749 = bitcast %union.anon* %3996 to i64*
  %3997 = load i64, i64* %RDX.i748
  %3998 = load i64, i64* %R8.i749
  %3999 = mul i64 %3998, 4
  %4000 = add i64 %3999, %3997
  %4001 = load i64, i64* %PC.i746
  %4002 = add i64 %4001, 4
  store i64 %4002, i64* %PC.i746
  %4003 = inttoptr i64 %4000 to i32*
  %4004 = load i32, i32* %4003
  %4005 = zext i32 %4004 to i64
  store i64 %4005, i64* %RAX.i747, align 8
  store %struct.Memory* %loadMem_4082a7, %struct.Memory** %MEMORY
  %loadMem_4082ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %4006 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4007 = getelementptr inbounds %struct.GPR, %struct.GPR* %4006, i32 0, i32 33
  %4008 = getelementptr inbounds %struct.Reg, %struct.Reg* %4007, i32 0, i32 0
  %PC.i743 = bitcast %union.anon* %4008 to i64*
  %4009 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4010 = getelementptr inbounds %struct.GPR, %struct.GPR* %4009, i32 0, i32 7
  %4011 = getelementptr inbounds %struct.Reg, %struct.Reg* %4010, i32 0, i32 0
  %RDX.i744 = bitcast %union.anon* %4011 to i64*
  %4012 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4013 = getelementptr inbounds %struct.GPR, %struct.GPR* %4012, i32 0, i32 15
  %4014 = getelementptr inbounds %struct.Reg, %struct.Reg* %4013, i32 0, i32 0
  %RBP.i745 = bitcast %union.anon* %4014 to i64*
  %4015 = load i64, i64* %RBP.i745
  %4016 = sub i64 %4015, 24
  %4017 = load i64, i64* %PC.i743
  %4018 = add i64 %4017, 4
  store i64 %4018, i64* %PC.i743
  %4019 = inttoptr i64 %4016 to i64*
  %4020 = load i64, i64* %4019
  store i64 %4020, i64* %RDX.i744, align 8
  store %struct.Memory* %loadMem_4082ab, %struct.Memory** %MEMORY
  %loadMem_4082af = load %struct.Memory*, %struct.Memory** %MEMORY
  %4021 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4022 = getelementptr inbounds %struct.GPR, %struct.GPR* %4021, i32 0, i32 33
  %4023 = getelementptr inbounds %struct.Reg, %struct.Reg* %4022, i32 0, i32 0
  %PC.i741 = bitcast %union.anon* %4023 to i64*
  %4024 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4025 = getelementptr inbounds %struct.GPR, %struct.GPR* %4024, i32 0, i32 7
  %4026 = getelementptr inbounds %struct.Reg, %struct.Reg* %4025, i32 0, i32 0
  %RDX.i742 = bitcast %union.anon* %4026 to i64*
  %4027 = load i64, i64* %RDX.i742
  %4028 = add i64 %4027, 312
  %4029 = load i64, i64* %PC.i741
  %4030 = add i64 %4029, 7
  store i64 %4030, i64* %PC.i741
  %4031 = inttoptr i64 %4028 to i64*
  %4032 = load i64, i64* %4031
  store i64 %4032, i64* %RDX.i742, align 8
  store %struct.Memory* %loadMem_4082af, %struct.Memory** %MEMORY
  %loadMem_4082b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4033 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4034 = getelementptr inbounds %struct.GPR, %struct.GPR* %4033, i32 0, i32 33
  %4035 = getelementptr inbounds %struct.Reg, %struct.Reg* %4034, i32 0, i32 0
  %PC.i739 = bitcast %union.anon* %4035 to i64*
  %4036 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4037 = getelementptr inbounds %struct.GPR, %struct.GPR* %4036, i32 0, i32 7
  %4038 = getelementptr inbounds %struct.Reg, %struct.Reg* %4037, i32 0, i32 0
  %RDX.i740 = bitcast %union.anon* %4038 to i64*
  %4039 = load i64, i64* %RDX.i740
  %4040 = add i64 %4039, 8
  %4041 = load i64, i64* %PC.i739
  %4042 = add i64 %4041, 4
  store i64 %4042, i64* %PC.i739
  %4043 = inttoptr i64 %4040 to i64*
  %4044 = load i64, i64* %4043
  store i64 %4044, i64* %RDX.i740, align 8
  store %struct.Memory* %loadMem_4082b6, %struct.Memory** %MEMORY
  %loadMem_4082ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %4045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4046 = getelementptr inbounds %struct.GPR, %struct.GPR* %4045, i32 0, i32 33
  %4047 = getelementptr inbounds %struct.Reg, %struct.Reg* %4046, i32 0, i32 0
  %PC.i736 = bitcast %union.anon* %4047 to i64*
  %4048 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4049 = getelementptr inbounds %struct.GPR, %struct.GPR* %4048, i32 0, i32 15
  %4050 = getelementptr inbounds %struct.Reg, %struct.Reg* %4049, i32 0, i32 0
  %RBP.i737 = bitcast %union.anon* %4050 to i64*
  %4051 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4052 = getelementptr inbounds %struct.GPR, %struct.GPR* %4051, i32 0, i32 17
  %4053 = getelementptr inbounds %struct.Reg, %struct.Reg* %4052, i32 0, i32 0
  %R8.i738 = bitcast %union.anon* %4053 to i64*
  %4054 = load i64, i64* %RBP.i737
  %4055 = sub i64 %4054, 80
  %4056 = load i64, i64* %PC.i736
  %4057 = add i64 %4056, 4
  store i64 %4057, i64* %PC.i736
  %4058 = inttoptr i64 %4055 to i32*
  %4059 = load i32, i32* %4058
  %4060 = sext i32 %4059 to i64
  store i64 %4060, i64* %R8.i738, align 8
  store %struct.Memory* %loadMem_4082ba, %struct.Memory** %MEMORY
  %loadMem_4082be = load %struct.Memory*, %struct.Memory** %MEMORY
  %4061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4062 = getelementptr inbounds %struct.GPR, %struct.GPR* %4061, i32 0, i32 33
  %4063 = getelementptr inbounds %struct.Reg, %struct.Reg* %4062, i32 0, i32 0
  %PC.i732 = bitcast %union.anon* %4063 to i64*
  %4064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4065 = getelementptr inbounds %struct.GPR, %struct.GPR* %4064, i32 0, i32 1
  %4066 = getelementptr inbounds %struct.Reg, %struct.Reg* %4065, i32 0, i32 0
  %RAX.i733 = bitcast %union.anon* %4066 to i64*
  %4067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4068 = getelementptr inbounds %struct.GPR, %struct.GPR* %4067, i32 0, i32 7
  %4069 = getelementptr inbounds %struct.Reg, %struct.Reg* %4068, i32 0, i32 0
  %RDX.i734 = bitcast %union.anon* %4069 to i64*
  %4070 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4071 = getelementptr inbounds %struct.GPR, %struct.GPR* %4070, i32 0, i32 17
  %4072 = getelementptr inbounds %struct.Reg, %struct.Reg* %4071, i32 0, i32 0
  %R8.i735 = bitcast %union.anon* %4072 to i64*
  %4073 = load i64, i64* %RAX.i733
  %4074 = load i64, i64* %RDX.i734
  %4075 = load i64, i64* %R8.i735
  %4076 = mul i64 %4075, 4
  %4077 = add i64 %4076, %4074
  %4078 = load i64, i64* %PC.i732
  %4079 = add i64 %4078, 4
  store i64 %4079, i64* %PC.i732
  %4080 = trunc i64 %4073 to i32
  %4081 = inttoptr i64 %4077 to i32*
  %4082 = load i32, i32* %4081
  %4083 = add i32 %4082, %4080
  %4084 = zext i32 %4083 to i64
  store i64 %4084, i64* %RAX.i733, align 8
  %4085 = icmp ult i32 %4083, %4080
  %4086 = icmp ult i32 %4083, %4082
  %4087 = or i1 %4085, %4086
  %4088 = zext i1 %4087 to i8
  %4089 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4088, i8* %4089, align 1
  %4090 = and i32 %4083, 255
  %4091 = call i32 @llvm.ctpop.i32(i32 %4090)
  %4092 = trunc i32 %4091 to i8
  %4093 = and i8 %4092, 1
  %4094 = xor i8 %4093, 1
  %4095 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4094, i8* %4095, align 1
  %4096 = xor i32 %4082, %4080
  %4097 = xor i32 %4096, %4083
  %4098 = lshr i32 %4097, 4
  %4099 = trunc i32 %4098 to i8
  %4100 = and i8 %4099, 1
  %4101 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4100, i8* %4101, align 1
  %4102 = icmp eq i32 %4083, 0
  %4103 = zext i1 %4102 to i8
  %4104 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4103, i8* %4104, align 1
  %4105 = lshr i32 %4083, 31
  %4106 = trunc i32 %4105 to i8
  %4107 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4106, i8* %4107, align 1
  %4108 = lshr i32 %4080, 31
  %4109 = lshr i32 %4082, 31
  %4110 = xor i32 %4105, %4108
  %4111 = xor i32 %4105, %4109
  %4112 = add i32 %4110, %4111
  %4113 = icmp eq i32 %4112, 2
  %4114 = zext i1 %4113 to i8
  %4115 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4114, i8* %4115, align 1
  store %struct.Memory* %loadMem_4082be, %struct.Memory** %MEMORY
  %loadMem_4082c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4117 = getelementptr inbounds %struct.GPR, %struct.GPR* %4116, i32 0, i32 33
  %4118 = getelementptr inbounds %struct.Reg, %struct.Reg* %4117, i32 0, i32 0
  %PC.i729 = bitcast %union.anon* %4118 to i64*
  %4119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4120 = getelementptr inbounds %struct.GPR, %struct.GPR* %4119, i32 0, i32 7
  %4121 = getelementptr inbounds %struct.Reg, %struct.Reg* %4120, i32 0, i32 0
  %RDX.i730 = bitcast %union.anon* %4121 to i64*
  %4122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4123 = getelementptr inbounds %struct.GPR, %struct.GPR* %4122, i32 0, i32 15
  %4124 = getelementptr inbounds %struct.Reg, %struct.Reg* %4123, i32 0, i32 0
  %RBP.i731 = bitcast %union.anon* %4124 to i64*
  %4125 = load i64, i64* %RBP.i731
  %4126 = sub i64 %4125, 64
  %4127 = load i64, i64* %PC.i729
  %4128 = add i64 %4127, 4
  store i64 %4128, i64* %PC.i729
  %4129 = inttoptr i64 %4126 to i64*
  %4130 = load i64, i64* %4129
  store i64 %4130, i64* %RDX.i730, align 8
  store %struct.Memory* %loadMem_4082c2, %struct.Memory** %MEMORY
  %loadMem_4082c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4132 = getelementptr inbounds %struct.GPR, %struct.GPR* %4131, i32 0, i32 33
  %4133 = getelementptr inbounds %struct.Reg, %struct.Reg* %4132, i32 0, i32 0
  %PC.i726 = bitcast %union.anon* %4133 to i64*
  %4134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4135 = getelementptr inbounds %struct.GPR, %struct.GPR* %4134, i32 0, i32 5
  %4136 = getelementptr inbounds %struct.Reg, %struct.Reg* %4135, i32 0, i32 0
  %RCX.i727 = bitcast %union.anon* %4136 to i64*
  %4137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4138 = getelementptr inbounds %struct.GPR, %struct.GPR* %4137, i32 0, i32 15
  %4139 = getelementptr inbounds %struct.Reg, %struct.Reg* %4138, i32 0, i32 0
  %RBP.i728 = bitcast %union.anon* %4139 to i64*
  %4140 = load i64, i64* %RBP.i728
  %4141 = sub i64 %4140, 76
  %4142 = load i64, i64* %PC.i726
  %4143 = add i64 %4142, 3
  store i64 %4143, i64* %PC.i726
  %4144 = inttoptr i64 %4141 to i32*
  %4145 = load i32, i32* %4144
  %4146 = zext i32 %4145 to i64
  store i64 %4146, i64* %RCX.i727, align 8
  store %struct.Memory* %loadMem_4082c6, %struct.Memory** %MEMORY
  %loadMem_4082c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4148 = getelementptr inbounds %struct.GPR, %struct.GPR* %4147, i32 0, i32 33
  %4149 = getelementptr inbounds %struct.Reg, %struct.Reg* %4148, i32 0, i32 0
  %PC.i724 = bitcast %union.anon* %4149 to i64*
  %4150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4151 = getelementptr inbounds %struct.GPR, %struct.GPR* %4150, i32 0, i32 5
  %4152 = getelementptr inbounds %struct.Reg, %struct.Reg* %4151, i32 0, i32 0
  %RCX.i725 = bitcast %union.anon* %4152 to i64*
  %4153 = load i64, i64* %RCX.i725
  %4154 = load i64, i64* %PC.i724
  %4155 = add i64 %4154, 3
  store i64 %4155, i64* %PC.i724
  %4156 = trunc i64 %4153 to i32
  %4157 = sub i32 %4156, 1
  %4158 = zext i32 %4157 to i64
  store i64 %4158, i64* %RCX.i725, align 8
  %4159 = icmp ult i32 %4156, 1
  %4160 = zext i1 %4159 to i8
  %4161 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4160, i8* %4161, align 1
  %4162 = and i32 %4157, 255
  %4163 = call i32 @llvm.ctpop.i32(i32 %4162)
  %4164 = trunc i32 %4163 to i8
  %4165 = and i8 %4164, 1
  %4166 = xor i8 %4165, 1
  %4167 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4166, i8* %4167, align 1
  %4168 = xor i64 1, %4153
  %4169 = trunc i64 %4168 to i32
  %4170 = xor i32 %4169, %4157
  %4171 = lshr i32 %4170, 4
  %4172 = trunc i32 %4171 to i8
  %4173 = and i8 %4172, 1
  %4174 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4173, i8* %4174, align 1
  %4175 = icmp eq i32 %4157, 0
  %4176 = zext i1 %4175 to i8
  %4177 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4176, i8* %4177, align 1
  %4178 = lshr i32 %4157, 31
  %4179 = trunc i32 %4178 to i8
  %4180 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4179, i8* %4180, align 1
  %4181 = lshr i32 %4156, 31
  %4182 = xor i32 %4178, %4181
  %4183 = add i32 %4182, %4181
  %4184 = icmp eq i32 %4183, 2
  %4185 = zext i1 %4184 to i8
  %4186 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4185, i8* %4186, align 1
  store %struct.Memory* %loadMem_4082c9, %struct.Memory** %MEMORY
  %loadMem_4082cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %4187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4188 = getelementptr inbounds %struct.GPR, %struct.GPR* %4187, i32 0, i32 33
  %4189 = getelementptr inbounds %struct.Reg, %struct.Reg* %4188, i32 0, i32 0
  %PC.i721 = bitcast %union.anon* %4189 to i64*
  %4190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4191 = getelementptr inbounds %struct.GPR, %struct.GPR* %4190, i32 0, i32 5
  %4192 = getelementptr inbounds %struct.Reg, %struct.Reg* %4191, i32 0, i32 0
  %ECX.i722 = bitcast %union.anon* %4192 to i32*
  %4193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4194 = getelementptr inbounds %struct.GPR, %struct.GPR* %4193, i32 0, i32 17
  %4195 = getelementptr inbounds %struct.Reg, %struct.Reg* %4194, i32 0, i32 0
  %R8.i723 = bitcast %union.anon* %4195 to i64*
  %4196 = load i32, i32* %ECX.i722
  %4197 = zext i32 %4196 to i64
  %4198 = load i64, i64* %PC.i721
  %4199 = add i64 %4198, 3
  store i64 %4199, i64* %PC.i721
  %4200 = shl i64 %4197, 32
  %4201 = ashr exact i64 %4200, 32
  store i64 %4201, i64* %R8.i723, align 8
  store %struct.Memory* %loadMem_4082cc, %struct.Memory** %MEMORY
  %loadMem_4082cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %4202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4203 = getelementptr inbounds %struct.GPR, %struct.GPR* %4202, i32 0, i32 33
  %4204 = getelementptr inbounds %struct.Reg, %struct.Reg* %4203, i32 0, i32 0
  %PC.i718 = bitcast %union.anon* %4204 to i64*
  %4205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4206 = getelementptr inbounds %struct.GPR, %struct.GPR* %4205, i32 0, i32 7
  %4207 = getelementptr inbounds %struct.Reg, %struct.Reg* %4206, i32 0, i32 0
  %RDX.i719 = bitcast %union.anon* %4207 to i64*
  %4208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4209 = getelementptr inbounds %struct.GPR, %struct.GPR* %4208, i32 0, i32 17
  %4210 = getelementptr inbounds %struct.Reg, %struct.Reg* %4209, i32 0, i32 0
  %R8.i720 = bitcast %union.anon* %4210 to i64*
  %4211 = load i64, i64* %RDX.i719
  %4212 = load i64, i64* %R8.i720
  %4213 = mul i64 %4212, 8
  %4214 = add i64 %4213, %4211
  %4215 = load i64, i64* %PC.i718
  %4216 = add i64 %4215, 4
  store i64 %4216, i64* %PC.i718
  %4217 = inttoptr i64 %4214 to i64*
  %4218 = load i64, i64* %4217
  store i64 %4218, i64* %RDX.i719, align 8
  store %struct.Memory* %loadMem_4082cf, %struct.Memory** %MEMORY
  %loadMem_4082d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4220 = getelementptr inbounds %struct.GPR, %struct.GPR* %4219, i32 0, i32 33
  %4221 = getelementptr inbounds %struct.Reg, %struct.Reg* %4220, i32 0, i32 0
  %PC.i715 = bitcast %union.anon* %4221 to i64*
  %4222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4223 = getelementptr inbounds %struct.GPR, %struct.GPR* %4222, i32 0, i32 15
  %4224 = getelementptr inbounds %struct.Reg, %struct.Reg* %4223, i32 0, i32 0
  %RBP.i716 = bitcast %union.anon* %4224 to i64*
  %4225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4226 = getelementptr inbounds %struct.GPR, %struct.GPR* %4225, i32 0, i32 17
  %4227 = getelementptr inbounds %struct.Reg, %struct.Reg* %4226, i32 0, i32 0
  %R8.i717 = bitcast %union.anon* %4227 to i64*
  %4228 = load i64, i64* %RBP.i716
  %4229 = sub i64 %4228, 80
  %4230 = load i64, i64* %PC.i715
  %4231 = add i64 %4230, 4
  store i64 %4231, i64* %PC.i715
  %4232 = inttoptr i64 %4229 to i32*
  %4233 = load i32, i32* %4232
  %4234 = sext i32 %4233 to i64
  store i64 %4234, i64* %R8.i717, align 8
  store %struct.Memory* %loadMem_4082d3, %struct.Memory** %MEMORY
  %loadMem_4082d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4236 = getelementptr inbounds %struct.GPR, %struct.GPR* %4235, i32 0, i32 33
  %4237 = getelementptr inbounds %struct.Reg, %struct.Reg* %4236, i32 0, i32 0
  %PC.i711 = bitcast %union.anon* %4237 to i64*
  %4238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4239 = getelementptr inbounds %struct.GPR, %struct.GPR* %4238, i32 0, i32 5
  %4240 = getelementptr inbounds %struct.Reg, %struct.Reg* %4239, i32 0, i32 0
  %RCX.i712 = bitcast %union.anon* %4240 to i64*
  %4241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4242 = getelementptr inbounds %struct.GPR, %struct.GPR* %4241, i32 0, i32 7
  %4243 = getelementptr inbounds %struct.Reg, %struct.Reg* %4242, i32 0, i32 0
  %RDX.i713 = bitcast %union.anon* %4243 to i64*
  %4244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4245 = getelementptr inbounds %struct.GPR, %struct.GPR* %4244, i32 0, i32 17
  %4246 = getelementptr inbounds %struct.Reg, %struct.Reg* %4245, i32 0, i32 0
  %R8.i714 = bitcast %union.anon* %4246 to i64*
  %4247 = load i64, i64* %RDX.i713
  %4248 = load i64, i64* %R8.i714
  %4249 = mul i64 %4248, 4
  %4250 = add i64 %4249, %4247
  %4251 = load i64, i64* %PC.i711
  %4252 = add i64 %4251, 4
  store i64 %4252, i64* %PC.i711
  %4253 = inttoptr i64 %4250 to i32*
  %4254 = load i32, i32* %4253
  %4255 = zext i32 %4254 to i64
  store i64 %4255, i64* %RCX.i712, align 8
  store %struct.Memory* %loadMem_4082d7, %struct.Memory** %MEMORY
  %loadMem_4082db = load %struct.Memory*, %struct.Memory** %MEMORY
  %4256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4257 = getelementptr inbounds %struct.GPR, %struct.GPR* %4256, i32 0, i32 33
  %4258 = getelementptr inbounds %struct.Reg, %struct.Reg* %4257, i32 0, i32 0
  %PC.i708 = bitcast %union.anon* %4258 to i64*
  %4259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4260 = getelementptr inbounds %struct.GPR, %struct.GPR* %4259, i32 0, i32 7
  %4261 = getelementptr inbounds %struct.Reg, %struct.Reg* %4260, i32 0, i32 0
  %RDX.i709 = bitcast %union.anon* %4261 to i64*
  %4262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4263 = getelementptr inbounds %struct.GPR, %struct.GPR* %4262, i32 0, i32 15
  %4264 = getelementptr inbounds %struct.Reg, %struct.Reg* %4263, i32 0, i32 0
  %RBP.i710 = bitcast %union.anon* %4264 to i64*
  %4265 = load i64, i64* %RBP.i710
  %4266 = sub i64 %4265, 24
  %4267 = load i64, i64* %PC.i708
  %4268 = add i64 %4267, 4
  store i64 %4268, i64* %PC.i708
  %4269 = inttoptr i64 %4266 to i64*
  %4270 = load i64, i64* %4269
  store i64 %4270, i64* %RDX.i709, align 8
  store %struct.Memory* %loadMem_4082db, %struct.Memory** %MEMORY
  %loadMem_4082df = load %struct.Memory*, %struct.Memory** %MEMORY
  %4271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4272 = getelementptr inbounds %struct.GPR, %struct.GPR* %4271, i32 0, i32 33
  %4273 = getelementptr inbounds %struct.Reg, %struct.Reg* %4272, i32 0, i32 0
  %PC.i706 = bitcast %union.anon* %4273 to i64*
  %4274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4275 = getelementptr inbounds %struct.GPR, %struct.GPR* %4274, i32 0, i32 7
  %4276 = getelementptr inbounds %struct.Reg, %struct.Reg* %4275, i32 0, i32 0
  %RDX.i707 = bitcast %union.anon* %4276 to i64*
  %4277 = load i64, i64* %RDX.i707
  %4278 = add i64 %4277, 312
  %4279 = load i64, i64* %PC.i706
  %4280 = add i64 %4279, 7
  store i64 %4280, i64* %PC.i706
  %4281 = inttoptr i64 %4278 to i64*
  %4282 = load i64, i64* %4281
  store i64 %4282, i64* %RDX.i707, align 8
  store %struct.Memory* %loadMem_4082df, %struct.Memory** %MEMORY
  %loadMem_4082e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4284 = getelementptr inbounds %struct.GPR, %struct.GPR* %4283, i32 0, i32 33
  %4285 = getelementptr inbounds %struct.Reg, %struct.Reg* %4284, i32 0, i32 0
  %PC.i704 = bitcast %union.anon* %4285 to i64*
  %4286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4287 = getelementptr inbounds %struct.GPR, %struct.GPR* %4286, i32 0, i32 7
  %4288 = getelementptr inbounds %struct.Reg, %struct.Reg* %4287, i32 0, i32 0
  %RDX.i705 = bitcast %union.anon* %4288 to i64*
  %4289 = load i64, i64* %RDX.i705
  %4290 = add i64 %4289, 32
  %4291 = load i64, i64* %PC.i704
  %4292 = add i64 %4291, 4
  store i64 %4292, i64* %PC.i704
  %4293 = inttoptr i64 %4290 to i64*
  %4294 = load i64, i64* %4293
  store i64 %4294, i64* %RDX.i705, align 8
  store %struct.Memory* %loadMem_4082e6, %struct.Memory** %MEMORY
  %loadMem_4082ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %4295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4296 = getelementptr inbounds %struct.GPR, %struct.GPR* %4295, i32 0, i32 33
  %4297 = getelementptr inbounds %struct.Reg, %struct.Reg* %4296, i32 0, i32 0
  %PC.i701 = bitcast %union.anon* %4297 to i64*
  %4298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4299 = getelementptr inbounds %struct.GPR, %struct.GPR* %4298, i32 0, i32 15
  %4300 = getelementptr inbounds %struct.Reg, %struct.Reg* %4299, i32 0, i32 0
  %RBP.i702 = bitcast %union.anon* %4300 to i64*
  %4301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4302 = getelementptr inbounds %struct.GPR, %struct.GPR* %4301, i32 0, i32 17
  %4303 = getelementptr inbounds %struct.Reg, %struct.Reg* %4302, i32 0, i32 0
  %R8.i703 = bitcast %union.anon* %4303 to i64*
  %4304 = load i64, i64* %RBP.i702
  %4305 = sub i64 %4304, 80
  %4306 = load i64, i64* %PC.i701
  %4307 = add i64 %4306, 4
  store i64 %4307, i64* %PC.i701
  %4308 = inttoptr i64 %4305 to i32*
  %4309 = load i32, i32* %4308
  %4310 = sext i32 %4309 to i64
  store i64 %4310, i64* %R8.i703, align 8
  store %struct.Memory* %loadMem_4082ea, %struct.Memory** %MEMORY
  %loadMem_4082ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %4311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4312 = getelementptr inbounds %struct.GPR, %struct.GPR* %4311, i32 0, i32 33
  %4313 = getelementptr inbounds %struct.Reg, %struct.Reg* %4312, i32 0, i32 0
  %PC.i697 = bitcast %union.anon* %4313 to i64*
  %4314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4315 = getelementptr inbounds %struct.GPR, %struct.GPR* %4314, i32 0, i32 5
  %4316 = getelementptr inbounds %struct.Reg, %struct.Reg* %4315, i32 0, i32 0
  %RCX.i698 = bitcast %union.anon* %4316 to i64*
  %4317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4318 = getelementptr inbounds %struct.GPR, %struct.GPR* %4317, i32 0, i32 7
  %4319 = getelementptr inbounds %struct.Reg, %struct.Reg* %4318, i32 0, i32 0
  %RDX.i699 = bitcast %union.anon* %4319 to i64*
  %4320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4321 = getelementptr inbounds %struct.GPR, %struct.GPR* %4320, i32 0, i32 17
  %4322 = getelementptr inbounds %struct.Reg, %struct.Reg* %4321, i32 0, i32 0
  %R8.i700 = bitcast %union.anon* %4322 to i64*
  %4323 = load i64, i64* %RCX.i698
  %4324 = load i64, i64* %RDX.i699
  %4325 = load i64, i64* %R8.i700
  %4326 = mul i64 %4325, 4
  %4327 = add i64 %4326, %4324
  %4328 = load i64, i64* %PC.i697
  %4329 = add i64 %4328, 4
  store i64 %4329, i64* %PC.i697
  %4330 = trunc i64 %4323 to i32
  %4331 = inttoptr i64 %4327 to i32*
  %4332 = load i32, i32* %4331
  %4333 = add i32 %4332, %4330
  %4334 = zext i32 %4333 to i64
  store i64 %4334, i64* %RCX.i698, align 8
  %4335 = icmp ult i32 %4333, %4330
  %4336 = icmp ult i32 %4333, %4332
  %4337 = or i1 %4335, %4336
  %4338 = zext i1 %4337 to i8
  %4339 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4338, i8* %4339, align 1
  %4340 = and i32 %4333, 255
  %4341 = call i32 @llvm.ctpop.i32(i32 %4340)
  %4342 = trunc i32 %4341 to i8
  %4343 = and i8 %4342, 1
  %4344 = xor i8 %4343, 1
  %4345 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4344, i8* %4345, align 1
  %4346 = xor i32 %4332, %4330
  %4347 = xor i32 %4346, %4333
  %4348 = lshr i32 %4347, 4
  %4349 = trunc i32 %4348 to i8
  %4350 = and i8 %4349, 1
  %4351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4350, i8* %4351, align 1
  %4352 = icmp eq i32 %4333, 0
  %4353 = zext i1 %4352 to i8
  %4354 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4353, i8* %4354, align 1
  %4355 = lshr i32 %4333, 31
  %4356 = trunc i32 %4355 to i8
  %4357 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4356, i8* %4357, align 1
  %4358 = lshr i32 %4330, 31
  %4359 = lshr i32 %4332, 31
  %4360 = xor i32 %4355, %4358
  %4361 = xor i32 %4355, %4359
  %4362 = add i32 %4360, %4361
  %4363 = icmp eq i32 %4362, 2
  %4364 = zext i1 %4363 to i8
  %4365 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4364, i8* %4365, align 1
  store %struct.Memory* %loadMem_4082ee, %struct.Memory** %MEMORY
  %loadMem_4082f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4367 = getelementptr inbounds %struct.GPR, %struct.GPR* %4366, i32 0, i32 33
  %4368 = getelementptr inbounds %struct.Reg, %struct.Reg* %4367, i32 0, i32 0
  %PC.i694 = bitcast %union.anon* %4368 to i64*
  %4369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4370 = getelementptr inbounds %struct.GPR, %struct.GPR* %4369, i32 0, i32 1
  %4371 = getelementptr inbounds %struct.Reg, %struct.Reg* %4370, i32 0, i32 0
  %EAX.i695 = bitcast %union.anon* %4371 to i32*
  %4372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4373 = getelementptr inbounds %struct.GPR, %struct.GPR* %4372, i32 0, i32 11
  %4374 = getelementptr inbounds %struct.Reg, %struct.Reg* %4373, i32 0, i32 0
  %RDI.i696 = bitcast %union.anon* %4374 to i64*
  %4375 = load i32, i32* %EAX.i695
  %4376 = zext i32 %4375 to i64
  %4377 = load i64, i64* %PC.i694
  %4378 = add i64 %4377, 2
  store i64 %4378, i64* %PC.i694
  %4379 = and i64 %4376, 4294967295
  store i64 %4379, i64* %RDI.i696, align 8
  store %struct.Memory* %loadMem_4082f2, %struct.Memory** %MEMORY
  %loadMem_4082f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4381 = getelementptr inbounds %struct.GPR, %struct.GPR* %4380, i32 0, i32 33
  %4382 = getelementptr inbounds %struct.Reg, %struct.Reg* %4381, i32 0, i32 0
  %PC.i691 = bitcast %union.anon* %4382 to i64*
  %4383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4384 = getelementptr inbounds %struct.GPR, %struct.GPR* %4383, i32 0, i32 5
  %4385 = getelementptr inbounds %struct.Reg, %struct.Reg* %4384, i32 0, i32 0
  %ECX.i692 = bitcast %union.anon* %4385 to i32*
  %4386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4387 = getelementptr inbounds %struct.GPR, %struct.GPR* %4386, i32 0, i32 9
  %4388 = getelementptr inbounds %struct.Reg, %struct.Reg* %4387, i32 0, i32 0
  %RSI.i693 = bitcast %union.anon* %4388 to i64*
  %4389 = load i32, i32* %ECX.i692
  %4390 = zext i32 %4389 to i64
  %4391 = load i64, i64* %PC.i691
  %4392 = add i64 %4391, 2
  store i64 %4392, i64* %PC.i691
  %4393 = and i64 %4390, 4294967295
  store i64 %4393, i64* %RSI.i693, align 8
  store %struct.Memory* %loadMem_4082f4, %struct.Memory** %MEMORY
  %loadMem1_4082f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4395 = getelementptr inbounds %struct.GPR, %struct.GPR* %4394, i32 0, i32 33
  %4396 = getelementptr inbounds %struct.Reg, %struct.Reg* %4395, i32 0, i32 0
  %PC.i690 = bitcast %union.anon* %4396 to i64*
  %4397 = load i64, i64* %PC.i690
  %4398 = add i64 %4397, 130746
  %4399 = load i64, i64* %PC.i690
  %4400 = add i64 %4399, 5
  %4401 = load i64, i64* %PC.i690
  %4402 = add i64 %4401, 5
  store i64 %4402, i64* %PC.i690
  %4403 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4404 = load i64, i64* %4403, align 8
  %4405 = add i64 %4404, -8
  %4406 = inttoptr i64 %4405 to i64*
  store i64 %4400, i64* %4406
  store i64 %4405, i64* %4403, align 8
  %4407 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4398, i64* %4407, align 8
  store %struct.Memory* %loadMem1_4082f6, %struct.Memory** %MEMORY
  %loadMem2_4082f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4082f6 = load i64, i64* %3
  %call2_4082f6 = call %struct.Memory* @sub_4281b0.ILogsum(%struct.State* %0, i64 %loadPC_4082f6, %struct.Memory* %loadMem2_4082f6)
  store %struct.Memory* %call2_4082f6, %struct.Memory** %MEMORY
  %loadMem_4082fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %4408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4409 = getelementptr inbounds %struct.GPR, %struct.GPR* %4408, i32 0, i32 33
  %4410 = getelementptr inbounds %struct.Reg, %struct.Reg* %4409, i32 0, i32 0
  %PC.i687 = bitcast %union.anon* %4410 to i64*
  %4411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4412 = getelementptr inbounds %struct.GPR, %struct.GPR* %4411, i32 0, i32 7
  %4413 = getelementptr inbounds %struct.Reg, %struct.Reg* %4412, i32 0, i32 0
  %RDX.i688 = bitcast %union.anon* %4413 to i64*
  %4414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4415 = getelementptr inbounds %struct.GPR, %struct.GPR* %4414, i32 0, i32 15
  %4416 = getelementptr inbounds %struct.Reg, %struct.Reg* %4415, i32 0, i32 0
  %RBP.i689 = bitcast %union.anon* %4416 to i64*
  %4417 = load i64, i64* %RBP.i689
  %4418 = sub i64 %4417, 64
  %4419 = load i64, i64* %PC.i687
  %4420 = add i64 %4419, 4
  store i64 %4420, i64* %PC.i687
  %4421 = inttoptr i64 %4418 to i64*
  %4422 = load i64, i64* %4421
  store i64 %4422, i64* %RDX.i688, align 8
  store %struct.Memory* %loadMem_4082fb, %struct.Memory** %MEMORY
  %loadMem_4082ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %4423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4424 = getelementptr inbounds %struct.GPR, %struct.GPR* %4423, i32 0, i32 33
  %4425 = getelementptr inbounds %struct.Reg, %struct.Reg* %4424, i32 0, i32 0
  %PC.i684 = bitcast %union.anon* %4425 to i64*
  %4426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4427 = getelementptr inbounds %struct.GPR, %struct.GPR* %4426, i32 0, i32 15
  %4428 = getelementptr inbounds %struct.Reg, %struct.Reg* %4427, i32 0, i32 0
  %RBP.i685 = bitcast %union.anon* %4428 to i64*
  %4429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4430 = getelementptr inbounds %struct.GPR, %struct.GPR* %4429, i32 0, i32 17
  %4431 = getelementptr inbounds %struct.Reg, %struct.Reg* %4430, i32 0, i32 0
  %R8.i686 = bitcast %union.anon* %4431 to i64*
  %4432 = load i64, i64* %RBP.i685
  %4433 = sub i64 %4432, 76
  %4434 = load i64, i64* %PC.i684
  %4435 = add i64 %4434, 4
  store i64 %4435, i64* %PC.i684
  %4436 = inttoptr i64 %4433 to i32*
  %4437 = load i32, i32* %4436
  %4438 = sext i32 %4437 to i64
  store i64 %4438, i64* %R8.i686, align 8
  store %struct.Memory* %loadMem_4082ff, %struct.Memory** %MEMORY
  %loadMem_408303 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4440 = getelementptr inbounds %struct.GPR, %struct.GPR* %4439, i32 0, i32 33
  %4441 = getelementptr inbounds %struct.Reg, %struct.Reg* %4440, i32 0, i32 0
  %PC.i681 = bitcast %union.anon* %4441 to i64*
  %4442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4443 = getelementptr inbounds %struct.GPR, %struct.GPR* %4442, i32 0, i32 7
  %4444 = getelementptr inbounds %struct.Reg, %struct.Reg* %4443, i32 0, i32 0
  %RDX.i682 = bitcast %union.anon* %4444 to i64*
  %4445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4446 = getelementptr inbounds %struct.GPR, %struct.GPR* %4445, i32 0, i32 17
  %4447 = getelementptr inbounds %struct.Reg, %struct.Reg* %4446, i32 0, i32 0
  %R8.i683 = bitcast %union.anon* %4447 to i64*
  %4448 = load i64, i64* %RDX.i682
  %4449 = load i64, i64* %R8.i683
  %4450 = mul i64 %4449, 8
  %4451 = add i64 %4450, %4448
  %4452 = load i64, i64* %PC.i681
  %4453 = add i64 %4452, 4
  store i64 %4453, i64* %PC.i681
  %4454 = inttoptr i64 %4451 to i64*
  %4455 = load i64, i64* %4454
  store i64 %4455, i64* %RDX.i682, align 8
  store %struct.Memory* %loadMem_408303, %struct.Memory** %MEMORY
  %loadMem_408307 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4457 = getelementptr inbounds %struct.GPR, %struct.GPR* %4456, i32 0, i32 33
  %4458 = getelementptr inbounds %struct.Reg, %struct.Reg* %4457, i32 0, i32 0
  %PC.i678 = bitcast %union.anon* %4458 to i64*
  %4459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4460 = getelementptr inbounds %struct.GPR, %struct.GPR* %4459, i32 0, i32 15
  %4461 = getelementptr inbounds %struct.Reg, %struct.Reg* %4460, i32 0, i32 0
  %RBP.i679 = bitcast %union.anon* %4461 to i64*
  %4462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4463 = getelementptr inbounds %struct.GPR, %struct.GPR* %4462, i32 0, i32 17
  %4464 = getelementptr inbounds %struct.Reg, %struct.Reg* %4463, i32 0, i32 0
  %R8.i680 = bitcast %union.anon* %4464 to i64*
  %4465 = load i64, i64* %RBP.i679
  %4466 = sub i64 %4465, 80
  %4467 = load i64, i64* %PC.i678
  %4468 = add i64 %4467, 4
  store i64 %4468, i64* %PC.i678
  %4469 = inttoptr i64 %4466 to i32*
  %4470 = load i32, i32* %4469
  %4471 = sext i32 %4470 to i64
  store i64 %4471, i64* %R8.i680, align 8
  store %struct.Memory* %loadMem_408307, %struct.Memory** %MEMORY
  %loadMem_40830b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4473 = getelementptr inbounds %struct.GPR, %struct.GPR* %4472, i32 0, i32 33
  %4474 = getelementptr inbounds %struct.Reg, %struct.Reg* %4473, i32 0, i32 0
  %PC.i674 = bitcast %union.anon* %4474 to i64*
  %4475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4476 = getelementptr inbounds %struct.GPR, %struct.GPR* %4475, i32 0, i32 1
  %4477 = getelementptr inbounds %struct.Reg, %struct.Reg* %4476, i32 0, i32 0
  %EAX.i675 = bitcast %union.anon* %4477 to i32*
  %4478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4479 = getelementptr inbounds %struct.GPR, %struct.GPR* %4478, i32 0, i32 7
  %4480 = getelementptr inbounds %struct.Reg, %struct.Reg* %4479, i32 0, i32 0
  %RDX.i676 = bitcast %union.anon* %4480 to i64*
  %4481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4482 = getelementptr inbounds %struct.GPR, %struct.GPR* %4481, i32 0, i32 17
  %4483 = getelementptr inbounds %struct.Reg, %struct.Reg* %4482, i32 0, i32 0
  %R8.i677 = bitcast %union.anon* %4483 to i64*
  %4484 = load i64, i64* %RDX.i676
  %4485 = load i64, i64* %R8.i677
  %4486 = mul i64 %4485, 4
  %4487 = add i64 %4486, %4484
  %4488 = load i32, i32* %EAX.i675
  %4489 = zext i32 %4488 to i64
  %4490 = load i64, i64* %PC.i674
  %4491 = add i64 %4490, 4
  store i64 %4491, i64* %PC.i674
  %4492 = inttoptr i64 %4487 to i32*
  store i32 %4488, i32* %4492
  store %struct.Memory* %loadMem_40830b, %struct.Memory** %MEMORY
  %loadMem_40830f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4494 = getelementptr inbounds %struct.GPR, %struct.GPR* %4493, i32 0, i32 33
  %4495 = getelementptr inbounds %struct.Reg, %struct.Reg* %4494, i32 0, i32 0
  %PC.i671 = bitcast %union.anon* %4495 to i64*
  %4496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4497 = getelementptr inbounds %struct.GPR, %struct.GPR* %4496, i32 0, i32 7
  %4498 = getelementptr inbounds %struct.Reg, %struct.Reg* %4497, i32 0, i32 0
  %RDX.i672 = bitcast %union.anon* %4498 to i64*
  %4499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4500 = getelementptr inbounds %struct.GPR, %struct.GPR* %4499, i32 0, i32 15
  %4501 = getelementptr inbounds %struct.Reg, %struct.Reg* %4500, i32 0, i32 0
  %RBP.i673 = bitcast %union.anon* %4501 to i64*
  %4502 = load i64, i64* %RBP.i673
  %4503 = sub i64 %4502, 24
  %4504 = load i64, i64* %PC.i671
  %4505 = add i64 %4504, 4
  store i64 %4505, i64* %PC.i671
  %4506 = inttoptr i64 %4503 to i64*
  %4507 = load i64, i64* %4506
  store i64 %4507, i64* %RDX.i672, align 8
  store %struct.Memory* %loadMem_40830f, %struct.Memory** %MEMORY
  %loadMem_408313 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4508 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4509 = getelementptr inbounds %struct.GPR, %struct.GPR* %4508, i32 0, i32 33
  %4510 = getelementptr inbounds %struct.Reg, %struct.Reg* %4509, i32 0, i32 0
  %PC.i669 = bitcast %union.anon* %4510 to i64*
  %4511 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4512 = getelementptr inbounds %struct.GPR, %struct.GPR* %4511, i32 0, i32 7
  %4513 = getelementptr inbounds %struct.Reg, %struct.Reg* %4512, i32 0, i32 0
  %RDX.i670 = bitcast %union.anon* %4513 to i64*
  %4514 = load i64, i64* %RDX.i670
  %4515 = add i64 %4514, 328
  %4516 = load i64, i64* %PC.i669
  %4517 = add i64 %4516, 7
  store i64 %4517, i64* %PC.i669
  %4518 = inttoptr i64 %4515 to i64*
  %4519 = load i64, i64* %4518
  store i64 %4519, i64* %RDX.i670, align 8
  store %struct.Memory* %loadMem_408313, %struct.Memory** %MEMORY
  %loadMem_40831a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4521 = getelementptr inbounds %struct.GPR, %struct.GPR* %4520, i32 0, i32 33
  %4522 = getelementptr inbounds %struct.Reg, %struct.Reg* %4521, i32 0, i32 0
  %PC.i666 = bitcast %union.anon* %4522 to i64*
  %4523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4524 = getelementptr inbounds %struct.GPR, %struct.GPR* %4523, i32 0, i32 15
  %4525 = getelementptr inbounds %struct.Reg, %struct.Reg* %4524, i32 0, i32 0
  %RBP.i667 = bitcast %union.anon* %4525 to i64*
  %4526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4527 = getelementptr inbounds %struct.GPR, %struct.GPR* %4526, i32 0, i32 17
  %4528 = getelementptr inbounds %struct.Reg, %struct.Reg* %4527, i32 0, i32 0
  %R8.i668 = bitcast %union.anon* %4528 to i64*
  %4529 = load i64, i64* %RBP.i667
  %4530 = sub i64 %4529, 8
  %4531 = load i64, i64* %PC.i666
  %4532 = add i64 %4531, 4
  store i64 %4532, i64* %PC.i666
  %4533 = inttoptr i64 %4530 to i64*
  %4534 = load i64, i64* %4533
  store i64 %4534, i64* %R8.i668, align 8
  store %struct.Memory* %loadMem_40831a, %struct.Memory** %MEMORY
  %loadMem_40831e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4536 = getelementptr inbounds %struct.GPR, %struct.GPR* %4535, i32 0, i32 33
  %4537 = getelementptr inbounds %struct.Reg, %struct.Reg* %4536, i32 0, i32 0
  %PC.i663 = bitcast %union.anon* %4537 to i64*
  %4538 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4539 = getelementptr inbounds %struct.GPR, %struct.GPR* %4538, i32 0, i32 15
  %4540 = getelementptr inbounds %struct.Reg, %struct.Reg* %4539, i32 0, i32 0
  %RBP.i664 = bitcast %union.anon* %4540 to i64*
  %4541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4542 = getelementptr inbounds %struct.GPR, %struct.GPR* %4541, i32 0, i32 19
  %4543 = getelementptr inbounds %struct.Reg, %struct.Reg* %4542, i32 0, i32 0
  %R9.i665 = bitcast %union.anon* %4543 to i64*
  %4544 = load i64, i64* %RBP.i664
  %4545 = sub i64 %4544, 76
  %4546 = load i64, i64* %PC.i663
  %4547 = add i64 %4546, 4
  store i64 %4547, i64* %PC.i663
  %4548 = inttoptr i64 %4545 to i32*
  %4549 = load i32, i32* %4548
  %4550 = sext i32 %4549 to i64
  store i64 %4550, i64* %R9.i665, align 8
  store %struct.Memory* %loadMem_40831e, %struct.Memory** %MEMORY
  %loadMem_408322 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4552 = getelementptr inbounds %struct.GPR, %struct.GPR* %4551, i32 0, i32 33
  %4553 = getelementptr inbounds %struct.Reg, %struct.Reg* %4552, i32 0, i32 0
  %PC.i659 = bitcast %union.anon* %4553 to i64*
  %4554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4555 = getelementptr inbounds %struct.GPR, %struct.GPR* %4554, i32 0, i32 1
  %4556 = getelementptr inbounds %struct.Reg, %struct.Reg* %4555, i32 0, i32 0
  %RAX.i660 = bitcast %union.anon* %4556 to i64*
  %4557 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4558 = getelementptr inbounds %struct.GPR, %struct.GPR* %4557, i32 0, i32 17
  %4559 = getelementptr inbounds %struct.Reg, %struct.Reg* %4558, i32 0, i32 0
  %R8.i661 = bitcast %union.anon* %4559 to i64*
  %4560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4561 = getelementptr inbounds %struct.GPR, %struct.GPR* %4560, i32 0, i32 19
  %4562 = getelementptr inbounds %struct.Reg, %struct.Reg* %4561, i32 0, i32 0
  %R9.i662 = bitcast %union.anon* %4562 to i64*
  %4563 = load i64, i64* %R8.i661
  %4564 = load i64, i64* %R9.i662
  %4565 = add i64 %4564, %4563
  %4566 = load i64, i64* %PC.i659
  %4567 = add i64 %4566, 5
  store i64 %4567, i64* %PC.i659
  %4568 = inttoptr i64 %4565 to i8*
  %4569 = load i8, i8* %4568
  %4570 = sext i8 %4569 to i64
  %4571 = and i64 %4570, 4294967295
  store i64 %4571, i64* %RAX.i660, align 8
  store %struct.Memory* %loadMem_408322, %struct.Memory** %MEMORY
  %loadMem_408327 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4573 = getelementptr inbounds %struct.GPR, %struct.GPR* %4572, i32 0, i32 33
  %4574 = getelementptr inbounds %struct.Reg, %struct.Reg* %4573, i32 0, i32 0
  %PC.i656 = bitcast %union.anon* %4574 to i64*
  %4575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4576 = getelementptr inbounds %struct.GPR, %struct.GPR* %4575, i32 0, i32 1
  %4577 = getelementptr inbounds %struct.Reg, %struct.Reg* %4576, i32 0, i32 0
  %EAX.i657 = bitcast %union.anon* %4577 to i32*
  %4578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4579 = getelementptr inbounds %struct.GPR, %struct.GPR* %4578, i32 0, i32 17
  %4580 = getelementptr inbounds %struct.Reg, %struct.Reg* %4579, i32 0, i32 0
  %R8.i658 = bitcast %union.anon* %4580 to i64*
  %4581 = load i32, i32* %EAX.i657
  %4582 = zext i32 %4581 to i64
  %4583 = load i64, i64* %PC.i656
  %4584 = add i64 %4583, 3
  store i64 %4584, i64* %PC.i656
  %4585 = shl i64 %4582, 32
  %4586 = ashr exact i64 %4585, 32
  store i64 %4586, i64* %R8.i658, align 8
  store %struct.Memory* %loadMem_408327, %struct.Memory** %MEMORY
  %loadMem_40832a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4587 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4588 = getelementptr inbounds %struct.GPR, %struct.GPR* %4587, i32 0, i32 33
  %4589 = getelementptr inbounds %struct.Reg, %struct.Reg* %4588, i32 0, i32 0
  %PC.i653 = bitcast %union.anon* %4589 to i64*
  %4590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4591 = getelementptr inbounds %struct.GPR, %struct.GPR* %4590, i32 0, i32 7
  %4592 = getelementptr inbounds %struct.Reg, %struct.Reg* %4591, i32 0, i32 0
  %RDX.i654 = bitcast %union.anon* %4592 to i64*
  %4593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4594 = getelementptr inbounds %struct.GPR, %struct.GPR* %4593, i32 0, i32 17
  %4595 = getelementptr inbounds %struct.Reg, %struct.Reg* %4594, i32 0, i32 0
  %R8.i655 = bitcast %union.anon* %4595 to i64*
  %4596 = load i64, i64* %RDX.i654
  %4597 = load i64, i64* %R8.i655
  %4598 = mul i64 %4597, 8
  %4599 = add i64 %4598, %4596
  %4600 = load i64, i64* %PC.i653
  %4601 = add i64 %4600, 4
  store i64 %4601, i64* %PC.i653
  %4602 = inttoptr i64 %4599 to i64*
  %4603 = load i64, i64* %4602
  store i64 %4603, i64* %RDX.i654, align 8
  store %struct.Memory* %loadMem_40832a, %struct.Memory** %MEMORY
  %loadMem_40832e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4605 = getelementptr inbounds %struct.GPR, %struct.GPR* %4604, i32 0, i32 33
  %4606 = getelementptr inbounds %struct.Reg, %struct.Reg* %4605, i32 0, i32 0
  %PC.i650 = bitcast %union.anon* %4606 to i64*
  %4607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4608 = getelementptr inbounds %struct.GPR, %struct.GPR* %4607, i32 0, i32 15
  %4609 = getelementptr inbounds %struct.Reg, %struct.Reg* %4608, i32 0, i32 0
  %RBP.i651 = bitcast %union.anon* %4609 to i64*
  %4610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4611 = getelementptr inbounds %struct.GPR, %struct.GPR* %4610, i32 0, i32 17
  %4612 = getelementptr inbounds %struct.Reg, %struct.Reg* %4611, i32 0, i32 0
  %R8.i652 = bitcast %union.anon* %4612 to i64*
  %4613 = load i64, i64* %RBP.i651
  %4614 = sub i64 %4613, 80
  %4615 = load i64, i64* %PC.i650
  %4616 = add i64 %4615, 4
  store i64 %4616, i64* %PC.i650
  %4617 = inttoptr i64 %4614 to i32*
  %4618 = load i32, i32* %4617
  %4619 = sext i32 %4618 to i64
  store i64 %4619, i64* %R8.i652, align 8
  store %struct.Memory* %loadMem_40832e, %struct.Memory** %MEMORY
  %loadMem_408332 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4620 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4621 = getelementptr inbounds %struct.GPR, %struct.GPR* %4620, i32 0, i32 33
  %4622 = getelementptr inbounds %struct.Reg, %struct.Reg* %4621, i32 0, i32 0
  %PC.i646 = bitcast %union.anon* %4622 to i64*
  %4623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4624 = getelementptr inbounds %struct.GPR, %struct.GPR* %4623, i32 0, i32 1
  %4625 = getelementptr inbounds %struct.Reg, %struct.Reg* %4624, i32 0, i32 0
  %RAX.i647 = bitcast %union.anon* %4625 to i64*
  %4626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4627 = getelementptr inbounds %struct.GPR, %struct.GPR* %4626, i32 0, i32 7
  %4628 = getelementptr inbounds %struct.Reg, %struct.Reg* %4627, i32 0, i32 0
  %RDX.i648 = bitcast %union.anon* %4628 to i64*
  %4629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4630 = getelementptr inbounds %struct.GPR, %struct.GPR* %4629, i32 0, i32 17
  %4631 = getelementptr inbounds %struct.Reg, %struct.Reg* %4630, i32 0, i32 0
  %R8.i649 = bitcast %union.anon* %4631 to i64*
  %4632 = load i64, i64* %RDX.i648
  %4633 = load i64, i64* %R8.i649
  %4634 = mul i64 %4633, 4
  %4635 = add i64 %4634, %4632
  %4636 = load i64, i64* %PC.i646
  %4637 = add i64 %4636, 4
  store i64 %4637, i64* %PC.i646
  %4638 = inttoptr i64 %4635 to i32*
  %4639 = load i32, i32* %4638
  %4640 = zext i32 %4639 to i64
  store i64 %4640, i64* %RAX.i647, align 8
  store %struct.Memory* %loadMem_408332, %struct.Memory** %MEMORY
  %loadMem_408336 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4641 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4642 = getelementptr inbounds %struct.GPR, %struct.GPR* %4641, i32 0, i32 33
  %4643 = getelementptr inbounds %struct.Reg, %struct.Reg* %4642, i32 0, i32 0
  %PC.i643 = bitcast %union.anon* %4643 to i64*
  %4644 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4645 = getelementptr inbounds %struct.GPR, %struct.GPR* %4644, i32 0, i32 7
  %4646 = getelementptr inbounds %struct.Reg, %struct.Reg* %4645, i32 0, i32 0
  %RDX.i644 = bitcast %union.anon* %4646 to i64*
  %4647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4648 = getelementptr inbounds %struct.GPR, %struct.GPR* %4647, i32 0, i32 15
  %4649 = getelementptr inbounds %struct.Reg, %struct.Reg* %4648, i32 0, i32 0
  %RBP.i645 = bitcast %union.anon* %4649 to i64*
  %4650 = load i64, i64* %RBP.i645
  %4651 = sub i64 %4650, 64
  %4652 = load i64, i64* %PC.i643
  %4653 = add i64 %4652, 4
  store i64 %4653, i64* %PC.i643
  %4654 = inttoptr i64 %4651 to i64*
  %4655 = load i64, i64* %4654
  store i64 %4655, i64* %RDX.i644, align 8
  store %struct.Memory* %loadMem_408336, %struct.Memory** %MEMORY
  %loadMem_40833a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4656 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4657 = getelementptr inbounds %struct.GPR, %struct.GPR* %4656, i32 0, i32 33
  %4658 = getelementptr inbounds %struct.Reg, %struct.Reg* %4657, i32 0, i32 0
  %PC.i640 = bitcast %union.anon* %4658 to i64*
  %4659 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4660 = getelementptr inbounds %struct.GPR, %struct.GPR* %4659, i32 0, i32 15
  %4661 = getelementptr inbounds %struct.Reg, %struct.Reg* %4660, i32 0, i32 0
  %RBP.i641 = bitcast %union.anon* %4661 to i64*
  %4662 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4663 = getelementptr inbounds %struct.GPR, %struct.GPR* %4662, i32 0, i32 17
  %4664 = getelementptr inbounds %struct.Reg, %struct.Reg* %4663, i32 0, i32 0
  %R8.i642 = bitcast %union.anon* %4664 to i64*
  %4665 = load i64, i64* %RBP.i641
  %4666 = sub i64 %4665, 76
  %4667 = load i64, i64* %PC.i640
  %4668 = add i64 %4667, 4
  store i64 %4668, i64* %PC.i640
  %4669 = inttoptr i64 %4666 to i32*
  %4670 = load i32, i32* %4669
  %4671 = sext i32 %4670 to i64
  store i64 %4671, i64* %R8.i642, align 8
  store %struct.Memory* %loadMem_40833a, %struct.Memory** %MEMORY
  %loadMem_40833e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4672 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4673 = getelementptr inbounds %struct.GPR, %struct.GPR* %4672, i32 0, i32 33
  %4674 = getelementptr inbounds %struct.Reg, %struct.Reg* %4673, i32 0, i32 0
  %PC.i637 = bitcast %union.anon* %4674 to i64*
  %4675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4676 = getelementptr inbounds %struct.GPR, %struct.GPR* %4675, i32 0, i32 7
  %4677 = getelementptr inbounds %struct.Reg, %struct.Reg* %4676, i32 0, i32 0
  %RDX.i638 = bitcast %union.anon* %4677 to i64*
  %4678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4679 = getelementptr inbounds %struct.GPR, %struct.GPR* %4678, i32 0, i32 17
  %4680 = getelementptr inbounds %struct.Reg, %struct.Reg* %4679, i32 0, i32 0
  %R8.i639 = bitcast %union.anon* %4680 to i64*
  %4681 = load i64, i64* %RDX.i638
  %4682 = load i64, i64* %R8.i639
  %4683 = mul i64 %4682, 8
  %4684 = add i64 %4683, %4681
  %4685 = load i64, i64* %PC.i637
  %4686 = add i64 %4685, 4
  store i64 %4686, i64* %PC.i637
  %4687 = inttoptr i64 %4684 to i64*
  %4688 = load i64, i64* %4687
  store i64 %4688, i64* %RDX.i638, align 8
  store %struct.Memory* %loadMem_40833e, %struct.Memory** %MEMORY
  %loadMem_408342 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4689 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4690 = getelementptr inbounds %struct.GPR, %struct.GPR* %4689, i32 0, i32 33
  %4691 = getelementptr inbounds %struct.Reg, %struct.Reg* %4690, i32 0, i32 0
  %PC.i634 = bitcast %union.anon* %4691 to i64*
  %4692 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4693 = getelementptr inbounds %struct.GPR, %struct.GPR* %4692, i32 0, i32 15
  %4694 = getelementptr inbounds %struct.Reg, %struct.Reg* %4693, i32 0, i32 0
  %RBP.i635 = bitcast %union.anon* %4694 to i64*
  %4695 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4696 = getelementptr inbounds %struct.GPR, %struct.GPR* %4695, i32 0, i32 17
  %4697 = getelementptr inbounds %struct.Reg, %struct.Reg* %4696, i32 0, i32 0
  %R8.i636 = bitcast %union.anon* %4697 to i64*
  %4698 = load i64, i64* %RBP.i635
  %4699 = sub i64 %4698, 80
  %4700 = load i64, i64* %PC.i634
  %4701 = add i64 %4700, 4
  store i64 %4701, i64* %PC.i634
  %4702 = inttoptr i64 %4699 to i32*
  %4703 = load i32, i32* %4702
  %4704 = sext i32 %4703 to i64
  store i64 %4704, i64* %R8.i636, align 8
  store %struct.Memory* %loadMem_408342, %struct.Memory** %MEMORY
  %loadMem_408346 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4706 = getelementptr inbounds %struct.GPR, %struct.GPR* %4705, i32 0, i32 33
  %4707 = getelementptr inbounds %struct.Reg, %struct.Reg* %4706, i32 0, i32 0
  %PC.i630 = bitcast %union.anon* %4707 to i64*
  %4708 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4709 = getelementptr inbounds %struct.GPR, %struct.GPR* %4708, i32 0, i32 1
  %4710 = getelementptr inbounds %struct.Reg, %struct.Reg* %4709, i32 0, i32 0
  %RAX.i631 = bitcast %union.anon* %4710 to i64*
  %4711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4712 = getelementptr inbounds %struct.GPR, %struct.GPR* %4711, i32 0, i32 7
  %4713 = getelementptr inbounds %struct.Reg, %struct.Reg* %4712, i32 0, i32 0
  %RDX.i632 = bitcast %union.anon* %4713 to i64*
  %4714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4715 = getelementptr inbounds %struct.GPR, %struct.GPR* %4714, i32 0, i32 17
  %4716 = getelementptr inbounds %struct.Reg, %struct.Reg* %4715, i32 0, i32 0
  %R8.i633 = bitcast %union.anon* %4716 to i64*
  %4717 = load i64, i64* %RAX.i631
  %4718 = load i64, i64* %RDX.i632
  %4719 = load i64, i64* %R8.i633
  %4720 = mul i64 %4719, 4
  %4721 = add i64 %4720, %4718
  %4722 = load i64, i64* %PC.i630
  %4723 = add i64 %4722, 4
  store i64 %4723, i64* %PC.i630
  %4724 = trunc i64 %4717 to i32
  %4725 = inttoptr i64 %4721 to i32*
  %4726 = load i32, i32* %4725
  %4727 = add i32 %4726, %4724
  %4728 = zext i32 %4727 to i64
  store i64 %4728, i64* %RAX.i631, align 8
  %4729 = icmp ult i32 %4727, %4724
  %4730 = icmp ult i32 %4727, %4726
  %4731 = or i1 %4729, %4730
  %4732 = zext i1 %4731 to i8
  %4733 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4732, i8* %4733, align 1
  %4734 = and i32 %4727, 255
  %4735 = call i32 @llvm.ctpop.i32(i32 %4734)
  %4736 = trunc i32 %4735 to i8
  %4737 = and i8 %4736, 1
  %4738 = xor i8 %4737, 1
  %4739 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4738, i8* %4739, align 1
  %4740 = xor i32 %4726, %4724
  %4741 = xor i32 %4740, %4727
  %4742 = lshr i32 %4741, 4
  %4743 = trunc i32 %4742 to i8
  %4744 = and i8 %4743, 1
  %4745 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4744, i8* %4745, align 1
  %4746 = icmp eq i32 %4727, 0
  %4747 = zext i1 %4746 to i8
  %4748 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4747, i8* %4748, align 1
  %4749 = lshr i32 %4727, 31
  %4750 = trunc i32 %4749 to i8
  %4751 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4750, i8* %4751, align 1
  %4752 = lshr i32 %4724, 31
  %4753 = lshr i32 %4726, 31
  %4754 = xor i32 %4749, %4752
  %4755 = xor i32 %4749, %4753
  %4756 = add i32 %4754, %4755
  %4757 = icmp eq i32 %4756, 2
  %4758 = zext i1 %4757 to i8
  %4759 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4758, i8* %4759, align 1
  store %struct.Memory* %loadMem_408346, %struct.Memory** %MEMORY
  %loadMem_40834a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4761 = getelementptr inbounds %struct.GPR, %struct.GPR* %4760, i32 0, i32 33
  %4762 = getelementptr inbounds %struct.Reg, %struct.Reg* %4761, i32 0, i32 0
  %PC.i626 = bitcast %union.anon* %4762 to i64*
  %4763 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4764 = getelementptr inbounds %struct.GPR, %struct.GPR* %4763, i32 0, i32 1
  %4765 = getelementptr inbounds %struct.Reg, %struct.Reg* %4764, i32 0, i32 0
  %EAX.i627 = bitcast %union.anon* %4765 to i32*
  %4766 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4767 = getelementptr inbounds %struct.GPR, %struct.GPR* %4766, i32 0, i32 7
  %4768 = getelementptr inbounds %struct.Reg, %struct.Reg* %4767, i32 0, i32 0
  %RDX.i628 = bitcast %union.anon* %4768 to i64*
  %4769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4770 = getelementptr inbounds %struct.GPR, %struct.GPR* %4769, i32 0, i32 17
  %4771 = getelementptr inbounds %struct.Reg, %struct.Reg* %4770, i32 0, i32 0
  %R8.i629 = bitcast %union.anon* %4771 to i64*
  %4772 = load i64, i64* %RDX.i628
  %4773 = load i64, i64* %R8.i629
  %4774 = mul i64 %4773, 4
  %4775 = add i64 %4774, %4772
  %4776 = load i32, i32* %EAX.i627
  %4777 = zext i32 %4776 to i64
  %4778 = load i64, i64* %PC.i626
  %4779 = add i64 %4778, 4
  store i64 %4779, i64* %PC.i626
  %4780 = inttoptr i64 %4775 to i32*
  store i32 %4776, i32* %4780
  store %struct.Memory* %loadMem_40834a, %struct.Memory** %MEMORY
  %loadMem_40834e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4781 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4782 = getelementptr inbounds %struct.GPR, %struct.GPR* %4781, i32 0, i32 33
  %4783 = getelementptr inbounds %struct.Reg, %struct.Reg* %4782, i32 0, i32 0
  %PC.i623 = bitcast %union.anon* %4783 to i64*
  %4784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4785 = getelementptr inbounds %struct.GPR, %struct.GPR* %4784, i32 0, i32 1
  %4786 = getelementptr inbounds %struct.Reg, %struct.Reg* %4785, i32 0, i32 0
  %RAX.i624 = bitcast %union.anon* %4786 to i64*
  %4787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4788 = getelementptr inbounds %struct.GPR, %struct.GPR* %4787, i32 0, i32 15
  %4789 = getelementptr inbounds %struct.Reg, %struct.Reg* %4788, i32 0, i32 0
  %RBP.i625 = bitcast %union.anon* %4789 to i64*
  %4790 = load i64, i64* %RBP.i625
  %4791 = sub i64 %4790, 80
  %4792 = load i64, i64* %PC.i623
  %4793 = add i64 %4792, 3
  store i64 %4793, i64* %PC.i623
  %4794 = inttoptr i64 %4791 to i32*
  %4795 = load i32, i32* %4794
  %4796 = zext i32 %4795 to i64
  store i64 %4796, i64* %RAX.i624, align 8
  store %struct.Memory* %loadMem_40834e, %struct.Memory** %MEMORY
  %loadMem_408351 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4797 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4798 = getelementptr inbounds %struct.GPR, %struct.GPR* %4797, i32 0, i32 33
  %4799 = getelementptr inbounds %struct.Reg, %struct.Reg* %4798, i32 0, i32 0
  %PC.i621 = bitcast %union.anon* %4799 to i64*
  %4800 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4801 = getelementptr inbounds %struct.GPR, %struct.GPR* %4800, i32 0, i32 1
  %4802 = getelementptr inbounds %struct.Reg, %struct.Reg* %4801, i32 0, i32 0
  %RAX.i622 = bitcast %union.anon* %4802 to i64*
  %4803 = load i64, i64* %RAX.i622
  %4804 = load i64, i64* %PC.i621
  %4805 = add i64 %4804, 3
  store i64 %4805, i64* %PC.i621
  %4806 = trunc i64 %4803 to i32
  %4807 = add i32 1, %4806
  %4808 = zext i32 %4807 to i64
  store i64 %4808, i64* %RAX.i622, align 8
  %4809 = icmp ult i32 %4807, %4806
  %4810 = icmp ult i32 %4807, 1
  %4811 = or i1 %4809, %4810
  %4812 = zext i1 %4811 to i8
  %4813 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4812, i8* %4813, align 1
  %4814 = and i32 %4807, 255
  %4815 = call i32 @llvm.ctpop.i32(i32 %4814)
  %4816 = trunc i32 %4815 to i8
  %4817 = and i8 %4816, 1
  %4818 = xor i8 %4817, 1
  %4819 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4818, i8* %4819, align 1
  %4820 = xor i64 1, %4803
  %4821 = trunc i64 %4820 to i32
  %4822 = xor i32 %4821, %4807
  %4823 = lshr i32 %4822, 4
  %4824 = trunc i32 %4823 to i8
  %4825 = and i8 %4824, 1
  %4826 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4825, i8* %4826, align 1
  %4827 = icmp eq i32 %4807, 0
  %4828 = zext i1 %4827 to i8
  %4829 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4828, i8* %4829, align 1
  %4830 = lshr i32 %4807, 31
  %4831 = trunc i32 %4830 to i8
  %4832 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4831, i8* %4832, align 1
  %4833 = lshr i32 %4806, 31
  %4834 = xor i32 %4830, %4833
  %4835 = add i32 %4834, %4830
  %4836 = icmp eq i32 %4835, 2
  %4837 = zext i1 %4836 to i8
  %4838 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4837, i8* %4838, align 1
  store %struct.Memory* %loadMem_408351, %struct.Memory** %MEMORY
  %loadMem_408354 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4839 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4840 = getelementptr inbounds %struct.GPR, %struct.GPR* %4839, i32 0, i32 33
  %4841 = getelementptr inbounds %struct.Reg, %struct.Reg* %4840, i32 0, i32 0
  %PC.i618 = bitcast %union.anon* %4841 to i64*
  %4842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4843 = getelementptr inbounds %struct.GPR, %struct.GPR* %4842, i32 0, i32 1
  %4844 = getelementptr inbounds %struct.Reg, %struct.Reg* %4843, i32 0, i32 0
  %EAX.i619 = bitcast %union.anon* %4844 to i32*
  %4845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4846 = getelementptr inbounds %struct.GPR, %struct.GPR* %4845, i32 0, i32 15
  %4847 = getelementptr inbounds %struct.Reg, %struct.Reg* %4846, i32 0, i32 0
  %RBP.i620 = bitcast %union.anon* %4847 to i64*
  %4848 = load i64, i64* %RBP.i620
  %4849 = sub i64 %4848, 80
  %4850 = load i32, i32* %EAX.i619
  %4851 = zext i32 %4850 to i64
  %4852 = load i64, i64* %PC.i618
  %4853 = add i64 %4852, 3
  store i64 %4853, i64* %PC.i618
  %4854 = inttoptr i64 %4849 to i32*
  store i32 %4850, i32* %4854
  store %struct.Memory* %loadMem_408354, %struct.Memory** %MEMORY
  %loadMem_408357 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4856 = getelementptr inbounds %struct.GPR, %struct.GPR* %4855, i32 0, i32 33
  %4857 = getelementptr inbounds %struct.Reg, %struct.Reg* %4856, i32 0, i32 0
  %PC.i617 = bitcast %union.anon* %4857 to i64*
  %4858 = load i64, i64* %PC.i617
  %4859 = add i64 %4858, -668
  %4860 = load i64, i64* %PC.i617
  %4861 = add i64 %4860, 5
  store i64 %4861, i64* %PC.i617
  %4862 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4859, i64* %4862, align 8
  store %struct.Memory* %loadMem_408357, %struct.Memory** %MEMORY
  br label %block_.L_4080bb

block_.L_40835c:                                  ; preds = %block_.L_4080bb
  %loadMem_40835c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4864 = getelementptr inbounds %struct.GPR, %struct.GPR* %4863, i32 0, i32 33
  %4865 = getelementptr inbounds %struct.Reg, %struct.Reg* %4864, i32 0, i32 0
  %PC.i614 = bitcast %union.anon* %4865 to i64*
  %4866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4867 = getelementptr inbounds %struct.GPR, %struct.GPR* %4866, i32 0, i32 1
  %4868 = getelementptr inbounds %struct.Reg, %struct.Reg* %4867, i32 0, i32 0
  %RAX.i615 = bitcast %union.anon* %4868 to i64*
  %4869 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4870 = getelementptr inbounds %struct.GPR, %struct.GPR* %4869, i32 0, i32 15
  %4871 = getelementptr inbounds %struct.Reg, %struct.Reg* %4870, i32 0, i32 0
  %RBP.i616 = bitcast %union.anon* %4871 to i64*
  %4872 = load i64, i64* %RBP.i616
  %4873 = sub i64 %4872, 56
  %4874 = load i64, i64* %PC.i614
  %4875 = add i64 %4874, 4
  store i64 %4875, i64* %PC.i614
  %4876 = inttoptr i64 %4873 to i64*
  %4877 = load i64, i64* %4876
  store i64 %4877, i64* %RAX.i615, align 8
  store %struct.Memory* %loadMem_40835c, %struct.Memory** %MEMORY
  %loadMem_408360 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4878 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4879 = getelementptr inbounds %struct.GPR, %struct.GPR* %4878, i32 0, i32 33
  %4880 = getelementptr inbounds %struct.Reg, %struct.Reg* %4879, i32 0, i32 0
  %PC.i611 = bitcast %union.anon* %4880 to i64*
  %4881 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4882 = getelementptr inbounds %struct.GPR, %struct.GPR* %4881, i32 0, i32 5
  %4883 = getelementptr inbounds %struct.Reg, %struct.Reg* %4882, i32 0, i32 0
  %RCX.i612 = bitcast %union.anon* %4883 to i64*
  %4884 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4885 = getelementptr inbounds %struct.GPR, %struct.GPR* %4884, i32 0, i32 15
  %4886 = getelementptr inbounds %struct.Reg, %struct.Reg* %4885, i32 0, i32 0
  %RBP.i613 = bitcast %union.anon* %4886 to i64*
  %4887 = load i64, i64* %RBP.i613
  %4888 = sub i64 %4887, 76
  %4889 = load i64, i64* %PC.i611
  %4890 = add i64 %4889, 3
  store i64 %4890, i64* %PC.i611
  %4891 = inttoptr i64 %4888 to i32*
  %4892 = load i32, i32* %4891
  %4893 = zext i32 %4892 to i64
  store i64 %4893, i64* %RCX.i612, align 8
  store %struct.Memory* %loadMem_408360, %struct.Memory** %MEMORY
  %loadMem_408363 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4894 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4895 = getelementptr inbounds %struct.GPR, %struct.GPR* %4894, i32 0, i32 33
  %4896 = getelementptr inbounds %struct.Reg, %struct.Reg* %4895, i32 0, i32 0
  %PC.i609 = bitcast %union.anon* %4896 to i64*
  %4897 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4898 = getelementptr inbounds %struct.GPR, %struct.GPR* %4897, i32 0, i32 5
  %4899 = getelementptr inbounds %struct.Reg, %struct.Reg* %4898, i32 0, i32 0
  %RCX.i610 = bitcast %union.anon* %4899 to i64*
  %4900 = load i64, i64* %RCX.i610
  %4901 = load i64, i64* %PC.i609
  %4902 = add i64 %4901, 3
  store i64 %4902, i64* %PC.i609
  %4903 = trunc i64 %4900 to i32
  %4904 = sub i32 %4903, 1
  %4905 = zext i32 %4904 to i64
  store i64 %4905, i64* %RCX.i610, align 8
  %4906 = icmp ult i32 %4903, 1
  %4907 = zext i1 %4906 to i8
  %4908 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4907, i8* %4908, align 1
  %4909 = and i32 %4904, 255
  %4910 = call i32 @llvm.ctpop.i32(i32 %4909)
  %4911 = trunc i32 %4910 to i8
  %4912 = and i8 %4911, 1
  %4913 = xor i8 %4912, 1
  %4914 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4913, i8* %4914, align 1
  %4915 = xor i64 1, %4900
  %4916 = trunc i64 %4915 to i32
  %4917 = xor i32 %4916, %4904
  %4918 = lshr i32 %4917, 4
  %4919 = trunc i32 %4918 to i8
  %4920 = and i8 %4919, 1
  %4921 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4920, i8* %4921, align 1
  %4922 = icmp eq i32 %4904, 0
  %4923 = zext i1 %4922 to i8
  %4924 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4923, i8* %4924, align 1
  %4925 = lshr i32 %4904, 31
  %4926 = trunc i32 %4925 to i8
  %4927 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4926, i8* %4927, align 1
  %4928 = lshr i32 %4903, 31
  %4929 = xor i32 %4925, %4928
  %4930 = add i32 %4929, %4928
  %4931 = icmp eq i32 %4930, 2
  %4932 = zext i1 %4931 to i8
  %4933 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4932, i8* %4933, align 1
  store %struct.Memory* %loadMem_408363, %struct.Memory** %MEMORY
  %loadMem_408366 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4935 = getelementptr inbounds %struct.GPR, %struct.GPR* %4934, i32 0, i32 33
  %4936 = getelementptr inbounds %struct.Reg, %struct.Reg* %4935, i32 0, i32 0
  %PC.i606 = bitcast %union.anon* %4936 to i64*
  %4937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4938 = getelementptr inbounds %struct.GPR, %struct.GPR* %4937, i32 0, i32 5
  %4939 = getelementptr inbounds %struct.Reg, %struct.Reg* %4938, i32 0, i32 0
  %ECX.i607 = bitcast %union.anon* %4939 to i32*
  %4940 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4941 = getelementptr inbounds %struct.GPR, %struct.GPR* %4940, i32 0, i32 7
  %4942 = getelementptr inbounds %struct.Reg, %struct.Reg* %4941, i32 0, i32 0
  %RDX.i608 = bitcast %union.anon* %4942 to i64*
  %4943 = load i32, i32* %ECX.i607
  %4944 = zext i32 %4943 to i64
  %4945 = load i64, i64* %PC.i606
  %4946 = add i64 %4945, 3
  store i64 %4946, i64* %PC.i606
  %4947 = shl i64 %4944, 32
  %4948 = ashr exact i64 %4947, 32
  store i64 %4948, i64* %RDX.i608, align 8
  store %struct.Memory* %loadMem_408366, %struct.Memory** %MEMORY
  %loadMem_408369 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4949 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4950 = getelementptr inbounds %struct.GPR, %struct.GPR* %4949, i32 0, i32 33
  %4951 = getelementptr inbounds %struct.Reg, %struct.Reg* %4950, i32 0, i32 0
  %PC.i603 = bitcast %union.anon* %4951 to i64*
  %4952 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4953 = getelementptr inbounds %struct.GPR, %struct.GPR* %4952, i32 0, i32 1
  %4954 = getelementptr inbounds %struct.Reg, %struct.Reg* %4953, i32 0, i32 0
  %RAX.i604 = bitcast %union.anon* %4954 to i64*
  %4955 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4956 = getelementptr inbounds %struct.GPR, %struct.GPR* %4955, i32 0, i32 7
  %4957 = getelementptr inbounds %struct.Reg, %struct.Reg* %4956, i32 0, i32 0
  %RDX.i605 = bitcast %union.anon* %4957 to i64*
  %4958 = load i64, i64* %RAX.i604
  %4959 = load i64, i64* %RDX.i605
  %4960 = mul i64 %4959, 8
  %4961 = add i64 %4960, %4958
  %4962 = load i64, i64* %PC.i603
  %4963 = add i64 %4962, 4
  store i64 %4963, i64* %PC.i603
  %4964 = inttoptr i64 %4961 to i64*
  %4965 = load i64, i64* %4964
  store i64 %4965, i64* %RAX.i604, align 8
  store %struct.Memory* %loadMem_408369, %struct.Memory** %MEMORY
  %loadMem_40836d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4967 = getelementptr inbounds %struct.GPR, %struct.GPR* %4966, i32 0, i32 33
  %4968 = getelementptr inbounds %struct.Reg, %struct.Reg* %4967, i32 0, i32 0
  %PC.i600 = bitcast %union.anon* %4968 to i64*
  %4969 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4970 = getelementptr inbounds %struct.GPR, %struct.GPR* %4969, i32 0, i32 7
  %4971 = getelementptr inbounds %struct.Reg, %struct.Reg* %4970, i32 0, i32 0
  %RDX.i601 = bitcast %union.anon* %4971 to i64*
  %4972 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4973 = getelementptr inbounds %struct.GPR, %struct.GPR* %4972, i32 0, i32 15
  %4974 = getelementptr inbounds %struct.Reg, %struct.Reg* %4973, i32 0, i32 0
  %RBP.i602 = bitcast %union.anon* %4974 to i64*
  %4975 = load i64, i64* %RBP.i602
  %4976 = sub i64 %4975, 24
  %4977 = load i64, i64* %PC.i600
  %4978 = add i64 %4977, 4
  store i64 %4978, i64* %PC.i600
  %4979 = inttoptr i64 %4976 to i64*
  %4980 = load i64, i64* %4979
  store i64 %4980, i64* %RDX.i601, align 8
  store %struct.Memory* %loadMem_40836d, %struct.Memory** %MEMORY
  %loadMem_408371 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4982 = getelementptr inbounds %struct.GPR, %struct.GPR* %4981, i32 0, i32 33
  %4983 = getelementptr inbounds %struct.Reg, %struct.Reg* %4982, i32 0, i32 0
  %PC.i597 = bitcast %union.anon* %4983 to i64*
  %4984 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4985 = getelementptr inbounds %struct.GPR, %struct.GPR* %4984, i32 0, i32 5
  %4986 = getelementptr inbounds %struct.Reg, %struct.Reg* %4985, i32 0, i32 0
  %RCX.i598 = bitcast %union.anon* %4986 to i64*
  %4987 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4988 = getelementptr inbounds %struct.GPR, %struct.GPR* %4987, i32 0, i32 7
  %4989 = getelementptr inbounds %struct.Reg, %struct.Reg* %4988, i32 0, i32 0
  %RDX.i599 = bitcast %union.anon* %4989 to i64*
  %4990 = load i64, i64* %RDX.i599
  %4991 = add i64 %4990, 136
  %4992 = load i64, i64* %PC.i597
  %4993 = add i64 %4992, 6
  store i64 %4993, i64* %PC.i597
  %4994 = inttoptr i64 %4991 to i32*
  %4995 = load i32, i32* %4994
  %4996 = zext i32 %4995 to i64
  store i64 %4996, i64* %RCX.i598, align 8
  store %struct.Memory* %loadMem_408371, %struct.Memory** %MEMORY
  %loadMem_408377 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4998 = getelementptr inbounds %struct.GPR, %struct.GPR* %4997, i32 0, i32 33
  %4999 = getelementptr inbounds %struct.Reg, %struct.Reg* %4998, i32 0, i32 0
  %PC.i595 = bitcast %union.anon* %4999 to i64*
  %5000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5001 = getelementptr inbounds %struct.GPR, %struct.GPR* %5000, i32 0, i32 5
  %5002 = getelementptr inbounds %struct.Reg, %struct.Reg* %5001, i32 0, i32 0
  %RCX.i596 = bitcast %union.anon* %5002 to i64*
  %5003 = load i64, i64* %RCX.i596
  %5004 = load i64, i64* %PC.i595
  %5005 = add i64 %5004, 3
  store i64 %5005, i64* %PC.i595
  %5006 = trunc i64 %5003 to i32
  %5007 = sub i32 %5006, 1
  %5008 = zext i32 %5007 to i64
  store i64 %5008, i64* %RCX.i596, align 8
  %5009 = icmp ult i32 %5006, 1
  %5010 = zext i1 %5009 to i8
  %5011 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5010, i8* %5011, align 1
  %5012 = and i32 %5007, 255
  %5013 = call i32 @llvm.ctpop.i32(i32 %5012)
  %5014 = trunc i32 %5013 to i8
  %5015 = and i8 %5014, 1
  %5016 = xor i8 %5015, 1
  %5017 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5016, i8* %5017, align 1
  %5018 = xor i64 1, %5003
  %5019 = trunc i64 %5018 to i32
  %5020 = xor i32 %5019, %5007
  %5021 = lshr i32 %5020, 4
  %5022 = trunc i32 %5021 to i8
  %5023 = and i8 %5022, 1
  %5024 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5023, i8* %5024, align 1
  %5025 = icmp eq i32 %5007, 0
  %5026 = zext i1 %5025 to i8
  %5027 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5026, i8* %5027, align 1
  %5028 = lshr i32 %5007, 31
  %5029 = trunc i32 %5028 to i8
  %5030 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5029, i8* %5030, align 1
  %5031 = lshr i32 %5006, 31
  %5032 = xor i32 %5028, %5031
  %5033 = add i32 %5032, %5031
  %5034 = icmp eq i32 %5033, 2
  %5035 = zext i1 %5034 to i8
  %5036 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5035, i8* %5036, align 1
  store %struct.Memory* %loadMem_408377, %struct.Memory** %MEMORY
  %loadMem_40837a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5037 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5038 = getelementptr inbounds %struct.GPR, %struct.GPR* %5037, i32 0, i32 33
  %5039 = getelementptr inbounds %struct.Reg, %struct.Reg* %5038, i32 0, i32 0
  %PC.i592 = bitcast %union.anon* %5039 to i64*
  %5040 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5041 = getelementptr inbounds %struct.GPR, %struct.GPR* %5040, i32 0, i32 5
  %5042 = getelementptr inbounds %struct.Reg, %struct.Reg* %5041, i32 0, i32 0
  %ECX.i593 = bitcast %union.anon* %5042 to i32*
  %5043 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5044 = getelementptr inbounds %struct.GPR, %struct.GPR* %5043, i32 0, i32 7
  %5045 = getelementptr inbounds %struct.Reg, %struct.Reg* %5044, i32 0, i32 0
  %RDX.i594 = bitcast %union.anon* %5045 to i64*
  %5046 = load i32, i32* %ECX.i593
  %5047 = zext i32 %5046 to i64
  %5048 = load i64, i64* %PC.i592
  %5049 = add i64 %5048, 3
  store i64 %5049, i64* %PC.i592
  %5050 = shl i64 %5047, 32
  %5051 = ashr exact i64 %5050, 32
  store i64 %5051, i64* %RDX.i594, align 8
  store %struct.Memory* %loadMem_40837a, %struct.Memory** %MEMORY
  %loadMem_40837d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5052 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5053 = getelementptr inbounds %struct.GPR, %struct.GPR* %5052, i32 0, i32 33
  %5054 = getelementptr inbounds %struct.Reg, %struct.Reg* %5053, i32 0, i32 0
  %PC.i588 = bitcast %union.anon* %5054 to i64*
  %5055 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5056 = getelementptr inbounds %struct.GPR, %struct.GPR* %5055, i32 0, i32 1
  %5057 = getelementptr inbounds %struct.Reg, %struct.Reg* %5056, i32 0, i32 0
  %RAX.i589 = bitcast %union.anon* %5057 to i64*
  %5058 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5059 = getelementptr inbounds %struct.GPR, %struct.GPR* %5058, i32 0, i32 5
  %5060 = getelementptr inbounds %struct.Reg, %struct.Reg* %5059, i32 0, i32 0
  %RCX.i590 = bitcast %union.anon* %5060 to i64*
  %5061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5062 = getelementptr inbounds %struct.GPR, %struct.GPR* %5061, i32 0, i32 7
  %5063 = getelementptr inbounds %struct.Reg, %struct.Reg* %5062, i32 0, i32 0
  %RDX.i591 = bitcast %union.anon* %5063 to i64*
  %5064 = load i64, i64* %RAX.i589
  %5065 = load i64, i64* %RDX.i591
  %5066 = mul i64 %5065, 4
  %5067 = add i64 %5066, %5064
  %5068 = load i64, i64* %PC.i588
  %5069 = add i64 %5068, 3
  store i64 %5069, i64* %PC.i588
  %5070 = inttoptr i64 %5067 to i32*
  %5071 = load i32, i32* %5070
  %5072 = zext i32 %5071 to i64
  store i64 %5072, i64* %RCX.i590, align 8
  store %struct.Memory* %loadMem_40837d, %struct.Memory** %MEMORY
  %loadMem_408380 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5073 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5074 = getelementptr inbounds %struct.GPR, %struct.GPR* %5073, i32 0, i32 33
  %5075 = getelementptr inbounds %struct.Reg, %struct.Reg* %5074, i32 0, i32 0
  %PC.i585 = bitcast %union.anon* %5075 to i64*
  %5076 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5077 = getelementptr inbounds %struct.GPR, %struct.GPR* %5076, i32 0, i32 1
  %5078 = getelementptr inbounds %struct.Reg, %struct.Reg* %5077, i32 0, i32 0
  %RAX.i586 = bitcast %union.anon* %5078 to i64*
  %5079 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5080 = getelementptr inbounds %struct.GPR, %struct.GPR* %5079, i32 0, i32 15
  %5081 = getelementptr inbounds %struct.Reg, %struct.Reg* %5080, i32 0, i32 0
  %RBP.i587 = bitcast %union.anon* %5081 to i64*
  %5082 = load i64, i64* %RBP.i587
  %5083 = sub i64 %5082, 24
  %5084 = load i64, i64* %PC.i585
  %5085 = add i64 %5084, 4
  store i64 %5085, i64* %PC.i585
  %5086 = inttoptr i64 %5083 to i64*
  %5087 = load i64, i64* %5086
  store i64 %5087, i64* %RAX.i586, align 8
  store %struct.Memory* %loadMem_408380, %struct.Memory** %MEMORY
  %loadMem_408384 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5088 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5089 = getelementptr inbounds %struct.GPR, %struct.GPR* %5088, i32 0, i32 33
  %5090 = getelementptr inbounds %struct.Reg, %struct.Reg* %5089, i32 0, i32 0
  %PC.i583 = bitcast %union.anon* %5090 to i64*
  %5091 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5092 = getelementptr inbounds %struct.GPR, %struct.GPR* %5091, i32 0, i32 1
  %5093 = getelementptr inbounds %struct.Reg, %struct.Reg* %5092, i32 0, i32 0
  %RAX.i584 = bitcast %union.anon* %5093 to i64*
  %5094 = load i64, i64* %RAX.i584
  %5095 = add i64 %5094, 312
  %5096 = load i64, i64* %PC.i583
  %5097 = add i64 %5096, 7
  store i64 %5097, i64* %PC.i583
  %5098 = inttoptr i64 %5095 to i64*
  %5099 = load i64, i64* %5098
  store i64 %5099, i64* %RAX.i584, align 8
  store %struct.Memory* %loadMem_408384, %struct.Memory** %MEMORY
  %loadMem_40838b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5101 = getelementptr inbounds %struct.GPR, %struct.GPR* %5100, i32 0, i32 33
  %5102 = getelementptr inbounds %struct.Reg, %struct.Reg* %5101, i32 0, i32 0
  %PC.i581 = bitcast %union.anon* %5102 to i64*
  %5103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5104 = getelementptr inbounds %struct.GPR, %struct.GPR* %5103, i32 0, i32 1
  %5105 = getelementptr inbounds %struct.Reg, %struct.Reg* %5104, i32 0, i32 0
  %RAX.i582 = bitcast %union.anon* %5105 to i64*
  %5106 = load i64, i64* %RAX.i582
  %5107 = load i64, i64* %PC.i581
  %5108 = add i64 %5107, 3
  store i64 %5108, i64* %PC.i581
  %5109 = inttoptr i64 %5106 to i64*
  %5110 = load i64, i64* %5109
  store i64 %5110, i64* %RAX.i582, align 8
  store %struct.Memory* %loadMem_40838b, %struct.Memory** %MEMORY
  %loadMem_40838e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5112 = getelementptr inbounds %struct.GPR, %struct.GPR* %5111, i32 0, i32 33
  %5113 = getelementptr inbounds %struct.Reg, %struct.Reg* %5112, i32 0, i32 0
  %PC.i578 = bitcast %union.anon* %5113 to i64*
  %5114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5115 = getelementptr inbounds %struct.GPR, %struct.GPR* %5114, i32 0, i32 7
  %5116 = getelementptr inbounds %struct.Reg, %struct.Reg* %5115, i32 0, i32 0
  %RDX.i579 = bitcast %union.anon* %5116 to i64*
  %5117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5118 = getelementptr inbounds %struct.GPR, %struct.GPR* %5117, i32 0, i32 15
  %5119 = getelementptr inbounds %struct.Reg, %struct.Reg* %5118, i32 0, i32 0
  %RBP.i580 = bitcast %union.anon* %5119 to i64*
  %5120 = load i64, i64* %RBP.i580
  %5121 = sub i64 %5120, 24
  %5122 = load i64, i64* %PC.i578
  %5123 = add i64 %5122, 4
  store i64 %5123, i64* %PC.i578
  %5124 = inttoptr i64 %5121 to i64*
  %5125 = load i64, i64* %5124
  store i64 %5125, i64* %RDX.i579, align 8
  store %struct.Memory* %loadMem_40838e, %struct.Memory** %MEMORY
  %loadMem_408392 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5127 = getelementptr inbounds %struct.GPR, %struct.GPR* %5126, i32 0, i32 33
  %5128 = getelementptr inbounds %struct.Reg, %struct.Reg* %5127, i32 0, i32 0
  %PC.i575 = bitcast %union.anon* %5128 to i64*
  %5129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5130 = getelementptr inbounds %struct.GPR, %struct.GPR* %5129, i32 0, i32 7
  %5131 = getelementptr inbounds %struct.Reg, %struct.Reg* %5130, i32 0, i32 0
  %RDX.i576 = bitcast %union.anon* %5131 to i64*
  %5132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5133 = getelementptr inbounds %struct.GPR, %struct.GPR* %5132, i32 0, i32 9
  %5134 = getelementptr inbounds %struct.Reg, %struct.Reg* %5133, i32 0, i32 0
  %RSI.i577 = bitcast %union.anon* %5134 to i64*
  %5135 = load i64, i64* %RDX.i576
  %5136 = add i64 %5135, 136
  %5137 = load i64, i64* %PC.i575
  %5138 = add i64 %5137, 6
  store i64 %5138, i64* %PC.i575
  %5139 = inttoptr i64 %5136 to i32*
  %5140 = load i32, i32* %5139
  %5141 = zext i32 %5140 to i64
  store i64 %5141, i64* %RSI.i577, align 8
  store %struct.Memory* %loadMem_408392, %struct.Memory** %MEMORY
  %loadMem_408398 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5143 = getelementptr inbounds %struct.GPR, %struct.GPR* %5142, i32 0, i32 33
  %5144 = getelementptr inbounds %struct.Reg, %struct.Reg* %5143, i32 0, i32 0
  %PC.i573 = bitcast %union.anon* %5144 to i64*
  %5145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5146 = getelementptr inbounds %struct.GPR, %struct.GPR* %5145, i32 0, i32 9
  %5147 = getelementptr inbounds %struct.Reg, %struct.Reg* %5146, i32 0, i32 0
  %RSI.i574 = bitcast %union.anon* %5147 to i64*
  %5148 = load i64, i64* %RSI.i574
  %5149 = load i64, i64* %PC.i573
  %5150 = add i64 %5149, 3
  store i64 %5150, i64* %PC.i573
  %5151 = trunc i64 %5148 to i32
  %5152 = sub i32 %5151, 1
  %5153 = zext i32 %5152 to i64
  store i64 %5153, i64* %RSI.i574, align 8
  %5154 = icmp ult i32 %5151, 1
  %5155 = zext i1 %5154 to i8
  %5156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5155, i8* %5156, align 1
  %5157 = and i32 %5152, 255
  %5158 = call i32 @llvm.ctpop.i32(i32 %5157)
  %5159 = trunc i32 %5158 to i8
  %5160 = and i8 %5159, 1
  %5161 = xor i8 %5160, 1
  %5162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5161, i8* %5162, align 1
  %5163 = xor i64 1, %5148
  %5164 = trunc i64 %5163 to i32
  %5165 = xor i32 %5164, %5152
  %5166 = lshr i32 %5165, 4
  %5167 = trunc i32 %5166 to i8
  %5168 = and i8 %5167, 1
  %5169 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5168, i8* %5169, align 1
  %5170 = icmp eq i32 %5152, 0
  %5171 = zext i1 %5170 to i8
  %5172 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5171, i8* %5172, align 1
  %5173 = lshr i32 %5152, 31
  %5174 = trunc i32 %5173 to i8
  %5175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5174, i8* %5175, align 1
  %5176 = lshr i32 %5151, 31
  %5177 = xor i32 %5173, %5176
  %5178 = add i32 %5177, %5176
  %5179 = icmp eq i32 %5178, 2
  %5180 = zext i1 %5179 to i8
  %5181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5180, i8* %5181, align 1
  store %struct.Memory* %loadMem_408398, %struct.Memory** %MEMORY
  %loadMem_40839b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5183 = getelementptr inbounds %struct.GPR, %struct.GPR* %5182, i32 0, i32 33
  %5184 = getelementptr inbounds %struct.Reg, %struct.Reg* %5183, i32 0, i32 0
  %PC.i570 = bitcast %union.anon* %5184 to i64*
  %5185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5186 = getelementptr inbounds %struct.GPR, %struct.GPR* %5185, i32 0, i32 9
  %5187 = getelementptr inbounds %struct.Reg, %struct.Reg* %5186, i32 0, i32 0
  %ESI.i571 = bitcast %union.anon* %5187 to i32*
  %5188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5189 = getelementptr inbounds %struct.GPR, %struct.GPR* %5188, i32 0, i32 7
  %5190 = getelementptr inbounds %struct.Reg, %struct.Reg* %5189, i32 0, i32 0
  %RDX.i572 = bitcast %union.anon* %5190 to i64*
  %5191 = load i32, i32* %ESI.i571
  %5192 = zext i32 %5191 to i64
  %5193 = load i64, i64* %PC.i570
  %5194 = add i64 %5193, 3
  store i64 %5194, i64* %PC.i570
  %5195 = shl i64 %5192, 32
  %5196 = ashr exact i64 %5195, 32
  store i64 %5196, i64* %RDX.i572, align 8
  store %struct.Memory* %loadMem_40839b, %struct.Memory** %MEMORY
  %loadMem_40839e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5198 = getelementptr inbounds %struct.GPR, %struct.GPR* %5197, i32 0, i32 33
  %5199 = getelementptr inbounds %struct.Reg, %struct.Reg* %5198, i32 0, i32 0
  %PC.i566 = bitcast %union.anon* %5199 to i64*
  %5200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5201 = getelementptr inbounds %struct.GPR, %struct.GPR* %5200, i32 0, i32 1
  %5202 = getelementptr inbounds %struct.Reg, %struct.Reg* %5201, i32 0, i32 0
  %RAX.i567 = bitcast %union.anon* %5202 to i64*
  %5203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5204 = getelementptr inbounds %struct.GPR, %struct.GPR* %5203, i32 0, i32 5
  %5205 = getelementptr inbounds %struct.Reg, %struct.Reg* %5204, i32 0, i32 0
  %RCX.i568 = bitcast %union.anon* %5205 to i64*
  %5206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5207 = getelementptr inbounds %struct.GPR, %struct.GPR* %5206, i32 0, i32 7
  %5208 = getelementptr inbounds %struct.Reg, %struct.Reg* %5207, i32 0, i32 0
  %RDX.i569 = bitcast %union.anon* %5208 to i64*
  %5209 = load i64, i64* %RCX.i568
  %5210 = load i64, i64* %RAX.i567
  %5211 = load i64, i64* %RDX.i569
  %5212 = mul i64 %5211, 4
  %5213 = add i64 %5212, %5210
  %5214 = load i64, i64* %PC.i566
  %5215 = add i64 %5214, 3
  store i64 %5215, i64* %PC.i566
  %5216 = trunc i64 %5209 to i32
  %5217 = inttoptr i64 %5213 to i32*
  %5218 = load i32, i32* %5217
  %5219 = add i32 %5218, %5216
  %5220 = zext i32 %5219 to i64
  store i64 %5220, i64* %RCX.i568, align 8
  %5221 = icmp ult i32 %5219, %5216
  %5222 = icmp ult i32 %5219, %5218
  %5223 = or i1 %5221, %5222
  %5224 = zext i1 %5223 to i8
  %5225 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5224, i8* %5225, align 1
  %5226 = and i32 %5219, 255
  %5227 = call i32 @llvm.ctpop.i32(i32 %5226)
  %5228 = trunc i32 %5227 to i8
  %5229 = and i8 %5228, 1
  %5230 = xor i8 %5229, 1
  %5231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5230, i8* %5231, align 1
  %5232 = xor i32 %5218, %5216
  %5233 = xor i32 %5232, %5219
  %5234 = lshr i32 %5233, 4
  %5235 = trunc i32 %5234 to i8
  %5236 = and i8 %5235, 1
  %5237 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5236, i8* %5237, align 1
  %5238 = icmp eq i32 %5219, 0
  %5239 = zext i1 %5238 to i8
  %5240 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5239, i8* %5240, align 1
  %5241 = lshr i32 %5219, 31
  %5242 = trunc i32 %5241 to i8
  %5243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5242, i8* %5243, align 1
  %5244 = lshr i32 %5216, 31
  %5245 = lshr i32 %5218, 31
  %5246 = xor i32 %5241, %5244
  %5247 = xor i32 %5241, %5245
  %5248 = add i32 %5246, %5247
  %5249 = icmp eq i32 %5248, 2
  %5250 = zext i1 %5249 to i8
  %5251 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5250, i8* %5251, align 1
  store %struct.Memory* %loadMem_40839e, %struct.Memory** %MEMORY
  %loadMem_4083a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5253 = getelementptr inbounds %struct.GPR, %struct.GPR* %5252, i32 0, i32 33
  %5254 = getelementptr inbounds %struct.Reg, %struct.Reg* %5253, i32 0, i32 0
  %PC.i563 = bitcast %union.anon* %5254 to i64*
  %5255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5256 = getelementptr inbounds %struct.GPR, %struct.GPR* %5255, i32 0, i32 1
  %5257 = getelementptr inbounds %struct.Reg, %struct.Reg* %5256, i32 0, i32 0
  %RAX.i564 = bitcast %union.anon* %5257 to i64*
  %5258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5259 = getelementptr inbounds %struct.GPR, %struct.GPR* %5258, i32 0, i32 15
  %5260 = getelementptr inbounds %struct.Reg, %struct.Reg* %5259, i32 0, i32 0
  %RBP.i565 = bitcast %union.anon* %5260 to i64*
  %5261 = load i64, i64* %RBP.i565
  %5262 = sub i64 %5261, 64
  %5263 = load i64, i64* %PC.i563
  %5264 = add i64 %5263, 4
  store i64 %5264, i64* %PC.i563
  %5265 = inttoptr i64 %5262 to i64*
  %5266 = load i64, i64* %5265
  store i64 %5266, i64* %RAX.i564, align 8
  store %struct.Memory* %loadMem_4083a1, %struct.Memory** %MEMORY
  %loadMem_4083a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5268 = getelementptr inbounds %struct.GPR, %struct.GPR* %5267, i32 0, i32 33
  %5269 = getelementptr inbounds %struct.Reg, %struct.Reg* %5268, i32 0, i32 0
  %PC.i560 = bitcast %union.anon* %5269 to i64*
  %5270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5271 = getelementptr inbounds %struct.GPR, %struct.GPR* %5270, i32 0, i32 9
  %5272 = getelementptr inbounds %struct.Reg, %struct.Reg* %5271, i32 0, i32 0
  %RSI.i561 = bitcast %union.anon* %5272 to i64*
  %5273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5274 = getelementptr inbounds %struct.GPR, %struct.GPR* %5273, i32 0, i32 15
  %5275 = getelementptr inbounds %struct.Reg, %struct.Reg* %5274, i32 0, i32 0
  %RBP.i562 = bitcast %union.anon* %5275 to i64*
  %5276 = load i64, i64* %RBP.i562
  %5277 = sub i64 %5276, 76
  %5278 = load i64, i64* %PC.i560
  %5279 = add i64 %5278, 3
  store i64 %5279, i64* %PC.i560
  %5280 = inttoptr i64 %5277 to i32*
  %5281 = load i32, i32* %5280
  %5282 = zext i32 %5281 to i64
  store i64 %5282, i64* %RSI.i561, align 8
  store %struct.Memory* %loadMem_4083a5, %struct.Memory** %MEMORY
  %loadMem_4083a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5284 = getelementptr inbounds %struct.GPR, %struct.GPR* %5283, i32 0, i32 33
  %5285 = getelementptr inbounds %struct.Reg, %struct.Reg* %5284, i32 0, i32 0
  %PC.i558 = bitcast %union.anon* %5285 to i64*
  %5286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5287 = getelementptr inbounds %struct.GPR, %struct.GPR* %5286, i32 0, i32 9
  %5288 = getelementptr inbounds %struct.Reg, %struct.Reg* %5287, i32 0, i32 0
  %RSI.i559 = bitcast %union.anon* %5288 to i64*
  %5289 = load i64, i64* %RSI.i559
  %5290 = load i64, i64* %PC.i558
  %5291 = add i64 %5290, 3
  store i64 %5291, i64* %PC.i558
  %5292 = trunc i64 %5289 to i32
  %5293 = sub i32 %5292, 1
  %5294 = zext i32 %5293 to i64
  store i64 %5294, i64* %RSI.i559, align 8
  %5295 = icmp ult i32 %5292, 1
  %5296 = zext i1 %5295 to i8
  %5297 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5296, i8* %5297, align 1
  %5298 = and i32 %5293, 255
  %5299 = call i32 @llvm.ctpop.i32(i32 %5298)
  %5300 = trunc i32 %5299 to i8
  %5301 = and i8 %5300, 1
  %5302 = xor i8 %5301, 1
  %5303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5302, i8* %5303, align 1
  %5304 = xor i64 1, %5289
  %5305 = trunc i64 %5304 to i32
  %5306 = xor i32 %5305, %5293
  %5307 = lshr i32 %5306, 4
  %5308 = trunc i32 %5307 to i8
  %5309 = and i8 %5308, 1
  %5310 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5309, i8* %5310, align 1
  %5311 = icmp eq i32 %5293, 0
  %5312 = zext i1 %5311 to i8
  %5313 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5312, i8* %5313, align 1
  %5314 = lshr i32 %5293, 31
  %5315 = trunc i32 %5314 to i8
  %5316 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5315, i8* %5316, align 1
  %5317 = lshr i32 %5292, 31
  %5318 = xor i32 %5314, %5317
  %5319 = add i32 %5318, %5317
  %5320 = icmp eq i32 %5319, 2
  %5321 = zext i1 %5320 to i8
  %5322 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5321, i8* %5322, align 1
  store %struct.Memory* %loadMem_4083a8, %struct.Memory** %MEMORY
  %loadMem_4083ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %5323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5324 = getelementptr inbounds %struct.GPR, %struct.GPR* %5323, i32 0, i32 33
  %5325 = getelementptr inbounds %struct.Reg, %struct.Reg* %5324, i32 0, i32 0
  %PC.i555 = bitcast %union.anon* %5325 to i64*
  %5326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5327 = getelementptr inbounds %struct.GPR, %struct.GPR* %5326, i32 0, i32 9
  %5328 = getelementptr inbounds %struct.Reg, %struct.Reg* %5327, i32 0, i32 0
  %ESI.i556 = bitcast %union.anon* %5328 to i32*
  %5329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5330 = getelementptr inbounds %struct.GPR, %struct.GPR* %5329, i32 0, i32 7
  %5331 = getelementptr inbounds %struct.Reg, %struct.Reg* %5330, i32 0, i32 0
  %RDX.i557 = bitcast %union.anon* %5331 to i64*
  %5332 = load i32, i32* %ESI.i556
  %5333 = zext i32 %5332 to i64
  %5334 = load i64, i64* %PC.i555
  %5335 = add i64 %5334, 3
  store i64 %5335, i64* %PC.i555
  %5336 = shl i64 %5333, 32
  %5337 = ashr exact i64 %5336, 32
  store i64 %5337, i64* %RDX.i557, align 8
  store %struct.Memory* %loadMem_4083ab, %struct.Memory** %MEMORY
  %loadMem_4083ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %5338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5339 = getelementptr inbounds %struct.GPR, %struct.GPR* %5338, i32 0, i32 33
  %5340 = getelementptr inbounds %struct.Reg, %struct.Reg* %5339, i32 0, i32 0
  %PC.i552 = bitcast %union.anon* %5340 to i64*
  %5341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5342 = getelementptr inbounds %struct.GPR, %struct.GPR* %5341, i32 0, i32 1
  %5343 = getelementptr inbounds %struct.Reg, %struct.Reg* %5342, i32 0, i32 0
  %RAX.i553 = bitcast %union.anon* %5343 to i64*
  %5344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5345 = getelementptr inbounds %struct.GPR, %struct.GPR* %5344, i32 0, i32 7
  %5346 = getelementptr inbounds %struct.Reg, %struct.Reg* %5345, i32 0, i32 0
  %RDX.i554 = bitcast %union.anon* %5346 to i64*
  %5347 = load i64, i64* %RAX.i553
  %5348 = load i64, i64* %RDX.i554
  %5349 = mul i64 %5348, 8
  %5350 = add i64 %5349, %5347
  %5351 = load i64, i64* %PC.i552
  %5352 = add i64 %5351, 4
  store i64 %5352, i64* %PC.i552
  %5353 = inttoptr i64 %5350 to i64*
  %5354 = load i64, i64* %5353
  store i64 %5354, i64* %RAX.i553, align 8
  store %struct.Memory* %loadMem_4083ae, %struct.Memory** %MEMORY
  %loadMem_4083b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5356 = getelementptr inbounds %struct.GPR, %struct.GPR* %5355, i32 0, i32 33
  %5357 = getelementptr inbounds %struct.Reg, %struct.Reg* %5356, i32 0, i32 0
  %PC.i549 = bitcast %union.anon* %5357 to i64*
  %5358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5359 = getelementptr inbounds %struct.GPR, %struct.GPR* %5358, i32 0, i32 7
  %5360 = getelementptr inbounds %struct.Reg, %struct.Reg* %5359, i32 0, i32 0
  %RDX.i550 = bitcast %union.anon* %5360 to i64*
  %5361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5362 = getelementptr inbounds %struct.GPR, %struct.GPR* %5361, i32 0, i32 15
  %5363 = getelementptr inbounds %struct.Reg, %struct.Reg* %5362, i32 0, i32 0
  %RBP.i551 = bitcast %union.anon* %5363 to i64*
  %5364 = load i64, i64* %RBP.i551
  %5365 = sub i64 %5364, 24
  %5366 = load i64, i64* %PC.i549
  %5367 = add i64 %5366, 4
  store i64 %5367, i64* %PC.i549
  %5368 = inttoptr i64 %5365 to i64*
  %5369 = load i64, i64* %5368
  store i64 %5369, i64* %RDX.i550, align 8
  store %struct.Memory* %loadMem_4083b2, %struct.Memory** %MEMORY
  %loadMem_4083b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5371 = getelementptr inbounds %struct.GPR, %struct.GPR* %5370, i32 0, i32 33
  %5372 = getelementptr inbounds %struct.Reg, %struct.Reg* %5371, i32 0, i32 0
  %PC.i546 = bitcast %union.anon* %5372 to i64*
  %5373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5374 = getelementptr inbounds %struct.GPR, %struct.GPR* %5373, i32 0, i32 7
  %5375 = getelementptr inbounds %struct.Reg, %struct.Reg* %5374, i32 0, i32 0
  %RDX.i547 = bitcast %union.anon* %5375 to i64*
  %5376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5377 = getelementptr inbounds %struct.GPR, %struct.GPR* %5376, i32 0, i32 9
  %5378 = getelementptr inbounds %struct.Reg, %struct.Reg* %5377, i32 0, i32 0
  %RSI.i548 = bitcast %union.anon* %5378 to i64*
  %5379 = load i64, i64* %RDX.i547
  %5380 = add i64 %5379, 136
  %5381 = load i64, i64* %PC.i546
  %5382 = add i64 %5381, 6
  store i64 %5382, i64* %PC.i546
  %5383 = inttoptr i64 %5380 to i32*
  %5384 = load i32, i32* %5383
  %5385 = zext i32 %5384 to i64
  store i64 %5385, i64* %RSI.i548, align 8
  store %struct.Memory* %loadMem_4083b6, %struct.Memory** %MEMORY
  %loadMem_4083bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %5386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5387 = getelementptr inbounds %struct.GPR, %struct.GPR* %5386, i32 0, i32 33
  %5388 = getelementptr inbounds %struct.Reg, %struct.Reg* %5387, i32 0, i32 0
  %PC.i544 = bitcast %union.anon* %5388 to i64*
  %5389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5390 = getelementptr inbounds %struct.GPR, %struct.GPR* %5389, i32 0, i32 9
  %5391 = getelementptr inbounds %struct.Reg, %struct.Reg* %5390, i32 0, i32 0
  %RSI.i545 = bitcast %union.anon* %5391 to i64*
  %5392 = load i64, i64* %RSI.i545
  %5393 = load i64, i64* %PC.i544
  %5394 = add i64 %5393, 3
  store i64 %5394, i64* %PC.i544
  %5395 = trunc i64 %5392 to i32
  %5396 = sub i32 %5395, 1
  %5397 = zext i32 %5396 to i64
  store i64 %5397, i64* %RSI.i545, align 8
  %5398 = icmp ult i32 %5395, 1
  %5399 = zext i1 %5398 to i8
  %5400 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5399, i8* %5400, align 1
  %5401 = and i32 %5396, 255
  %5402 = call i32 @llvm.ctpop.i32(i32 %5401)
  %5403 = trunc i32 %5402 to i8
  %5404 = and i8 %5403, 1
  %5405 = xor i8 %5404, 1
  %5406 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5405, i8* %5406, align 1
  %5407 = xor i64 1, %5392
  %5408 = trunc i64 %5407 to i32
  %5409 = xor i32 %5408, %5396
  %5410 = lshr i32 %5409, 4
  %5411 = trunc i32 %5410 to i8
  %5412 = and i8 %5411, 1
  %5413 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5412, i8* %5413, align 1
  %5414 = icmp eq i32 %5396, 0
  %5415 = zext i1 %5414 to i8
  %5416 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5415, i8* %5416, align 1
  %5417 = lshr i32 %5396, 31
  %5418 = trunc i32 %5417 to i8
  %5419 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5418, i8* %5419, align 1
  %5420 = lshr i32 %5395, 31
  %5421 = xor i32 %5417, %5420
  %5422 = add i32 %5421, %5420
  %5423 = icmp eq i32 %5422, 2
  %5424 = zext i1 %5423 to i8
  %5425 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5424, i8* %5425, align 1
  store %struct.Memory* %loadMem_4083bc, %struct.Memory** %MEMORY
  %loadMem_4083bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %5426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5427 = getelementptr inbounds %struct.GPR, %struct.GPR* %5426, i32 0, i32 33
  %5428 = getelementptr inbounds %struct.Reg, %struct.Reg* %5427, i32 0, i32 0
  %PC.i541 = bitcast %union.anon* %5428 to i64*
  %5429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5430 = getelementptr inbounds %struct.GPR, %struct.GPR* %5429, i32 0, i32 9
  %5431 = getelementptr inbounds %struct.Reg, %struct.Reg* %5430, i32 0, i32 0
  %ESI.i542 = bitcast %union.anon* %5431 to i32*
  %5432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5433 = getelementptr inbounds %struct.GPR, %struct.GPR* %5432, i32 0, i32 7
  %5434 = getelementptr inbounds %struct.Reg, %struct.Reg* %5433, i32 0, i32 0
  %RDX.i543 = bitcast %union.anon* %5434 to i64*
  %5435 = load i32, i32* %ESI.i542
  %5436 = zext i32 %5435 to i64
  %5437 = load i64, i64* %PC.i541
  %5438 = add i64 %5437, 3
  store i64 %5438, i64* %PC.i541
  %5439 = shl i64 %5436, 32
  %5440 = ashr exact i64 %5439, 32
  store i64 %5440, i64* %RDX.i543, align 8
  store %struct.Memory* %loadMem_4083bf, %struct.Memory** %MEMORY
  %loadMem_4083c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5442 = getelementptr inbounds %struct.GPR, %struct.GPR* %5441, i32 0, i32 33
  %5443 = getelementptr inbounds %struct.Reg, %struct.Reg* %5442, i32 0, i32 0
  %PC.i537 = bitcast %union.anon* %5443 to i64*
  %5444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5445 = getelementptr inbounds %struct.GPR, %struct.GPR* %5444, i32 0, i32 1
  %5446 = getelementptr inbounds %struct.Reg, %struct.Reg* %5445, i32 0, i32 0
  %RAX.i538 = bitcast %union.anon* %5446 to i64*
  %5447 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5448 = getelementptr inbounds %struct.GPR, %struct.GPR* %5447, i32 0, i32 7
  %5449 = getelementptr inbounds %struct.Reg, %struct.Reg* %5448, i32 0, i32 0
  %RDX.i539 = bitcast %union.anon* %5449 to i64*
  %5450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5451 = getelementptr inbounds %struct.GPR, %struct.GPR* %5450, i32 0, i32 9
  %5452 = getelementptr inbounds %struct.Reg, %struct.Reg* %5451, i32 0, i32 0
  %RSI.i540 = bitcast %union.anon* %5452 to i64*
  %5453 = load i64, i64* %RAX.i538
  %5454 = load i64, i64* %RDX.i539
  %5455 = mul i64 %5454, 4
  %5456 = add i64 %5455, %5453
  %5457 = load i64, i64* %PC.i537
  %5458 = add i64 %5457, 3
  store i64 %5458, i64* %PC.i537
  %5459 = inttoptr i64 %5456 to i32*
  %5460 = load i32, i32* %5459
  %5461 = zext i32 %5460 to i64
  store i64 %5461, i64* %RSI.i540, align 8
  store %struct.Memory* %loadMem_4083c2, %struct.Memory** %MEMORY
  %loadMem_4083c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5463 = getelementptr inbounds %struct.GPR, %struct.GPR* %5462, i32 0, i32 33
  %5464 = getelementptr inbounds %struct.Reg, %struct.Reg* %5463, i32 0, i32 0
  %PC.i534 = bitcast %union.anon* %5464 to i64*
  %5465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5466 = getelementptr inbounds %struct.GPR, %struct.GPR* %5465, i32 0, i32 1
  %5467 = getelementptr inbounds %struct.Reg, %struct.Reg* %5466, i32 0, i32 0
  %RAX.i535 = bitcast %union.anon* %5467 to i64*
  %5468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5469 = getelementptr inbounds %struct.GPR, %struct.GPR* %5468, i32 0, i32 15
  %5470 = getelementptr inbounds %struct.Reg, %struct.Reg* %5469, i32 0, i32 0
  %RBP.i536 = bitcast %union.anon* %5470 to i64*
  %5471 = load i64, i64* %RBP.i536
  %5472 = sub i64 %5471, 24
  %5473 = load i64, i64* %PC.i534
  %5474 = add i64 %5473, 4
  store i64 %5474, i64* %PC.i534
  %5475 = inttoptr i64 %5472 to i64*
  %5476 = load i64, i64* %5475
  store i64 %5476, i64* %RAX.i535, align 8
  store %struct.Memory* %loadMem_4083c5, %struct.Memory** %MEMORY
  %loadMem_4083c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5478 = getelementptr inbounds %struct.GPR, %struct.GPR* %5477, i32 0, i32 33
  %5479 = getelementptr inbounds %struct.Reg, %struct.Reg* %5478, i32 0, i32 0
  %PC.i532 = bitcast %union.anon* %5479 to i64*
  %5480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5481 = getelementptr inbounds %struct.GPR, %struct.GPR* %5480, i32 0, i32 1
  %5482 = getelementptr inbounds %struct.Reg, %struct.Reg* %5481, i32 0, i32 0
  %RAX.i533 = bitcast %union.anon* %5482 to i64*
  %5483 = load i64, i64* %RAX.i533
  %5484 = add i64 %5483, 312
  %5485 = load i64, i64* %PC.i532
  %5486 = add i64 %5485, 7
  store i64 %5486, i64* %PC.i532
  %5487 = inttoptr i64 %5484 to i64*
  %5488 = load i64, i64* %5487
  store i64 %5488, i64* %RAX.i533, align 8
  store %struct.Memory* %loadMem_4083c9, %struct.Memory** %MEMORY
  %loadMem_4083d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5490 = getelementptr inbounds %struct.GPR, %struct.GPR* %5489, i32 0, i32 33
  %5491 = getelementptr inbounds %struct.Reg, %struct.Reg* %5490, i32 0, i32 0
  %PC.i530 = bitcast %union.anon* %5491 to i64*
  %5492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5493 = getelementptr inbounds %struct.GPR, %struct.GPR* %5492, i32 0, i32 1
  %5494 = getelementptr inbounds %struct.Reg, %struct.Reg* %5493, i32 0, i32 0
  %RAX.i531 = bitcast %union.anon* %5494 to i64*
  %5495 = load i64, i64* %RAX.i531
  %5496 = add i64 %5495, 24
  %5497 = load i64, i64* %PC.i530
  %5498 = add i64 %5497, 4
  store i64 %5498, i64* %PC.i530
  %5499 = inttoptr i64 %5496 to i64*
  %5500 = load i64, i64* %5499
  store i64 %5500, i64* %RAX.i531, align 8
  store %struct.Memory* %loadMem_4083d0, %struct.Memory** %MEMORY
  %loadMem_4083d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5502 = getelementptr inbounds %struct.GPR, %struct.GPR* %5501, i32 0, i32 33
  %5503 = getelementptr inbounds %struct.Reg, %struct.Reg* %5502, i32 0, i32 0
  %PC.i527 = bitcast %union.anon* %5503 to i64*
  %5504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5505 = getelementptr inbounds %struct.GPR, %struct.GPR* %5504, i32 0, i32 7
  %5506 = getelementptr inbounds %struct.Reg, %struct.Reg* %5505, i32 0, i32 0
  %RDX.i528 = bitcast %union.anon* %5506 to i64*
  %5507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5508 = getelementptr inbounds %struct.GPR, %struct.GPR* %5507, i32 0, i32 15
  %5509 = getelementptr inbounds %struct.Reg, %struct.Reg* %5508, i32 0, i32 0
  %RBP.i529 = bitcast %union.anon* %5509 to i64*
  %5510 = load i64, i64* %RBP.i529
  %5511 = sub i64 %5510, 24
  %5512 = load i64, i64* %PC.i527
  %5513 = add i64 %5512, 4
  store i64 %5513, i64* %PC.i527
  %5514 = inttoptr i64 %5511 to i64*
  %5515 = load i64, i64* %5514
  store i64 %5515, i64* %RDX.i528, align 8
  store %struct.Memory* %loadMem_4083d4, %struct.Memory** %MEMORY
  %loadMem_4083d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5517 = getelementptr inbounds %struct.GPR, %struct.GPR* %5516, i32 0, i32 33
  %5518 = getelementptr inbounds %struct.Reg, %struct.Reg* %5517, i32 0, i32 0
  %PC.i524 = bitcast %union.anon* %5518 to i64*
  %5519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5520 = getelementptr inbounds %struct.GPR, %struct.GPR* %5519, i32 0, i32 7
  %5521 = getelementptr inbounds %struct.Reg, %struct.Reg* %5520, i32 0, i32 0
  %RDX.i525 = bitcast %union.anon* %5521 to i64*
  %5522 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5523 = getelementptr inbounds %struct.GPR, %struct.GPR* %5522, i32 0, i32 11
  %5524 = getelementptr inbounds %struct.Reg, %struct.Reg* %5523, i32 0, i32 0
  %RDI.i526 = bitcast %union.anon* %5524 to i64*
  %5525 = load i64, i64* %RDX.i525
  %5526 = add i64 %5525, 136
  %5527 = load i64, i64* %PC.i524
  %5528 = add i64 %5527, 6
  store i64 %5528, i64* %PC.i524
  %5529 = inttoptr i64 %5526 to i32*
  %5530 = load i32, i32* %5529
  %5531 = zext i32 %5530 to i64
  store i64 %5531, i64* %RDI.i526, align 8
  store %struct.Memory* %loadMem_4083d8, %struct.Memory** %MEMORY
  %loadMem_4083de = load %struct.Memory*, %struct.Memory** %MEMORY
  %5532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5533 = getelementptr inbounds %struct.GPR, %struct.GPR* %5532, i32 0, i32 33
  %5534 = getelementptr inbounds %struct.Reg, %struct.Reg* %5533, i32 0, i32 0
  %PC.i522 = bitcast %union.anon* %5534 to i64*
  %5535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5536 = getelementptr inbounds %struct.GPR, %struct.GPR* %5535, i32 0, i32 11
  %5537 = getelementptr inbounds %struct.Reg, %struct.Reg* %5536, i32 0, i32 0
  %RDI.i523 = bitcast %union.anon* %5537 to i64*
  %5538 = load i64, i64* %RDI.i523
  %5539 = load i64, i64* %PC.i522
  %5540 = add i64 %5539, 3
  store i64 %5540, i64* %PC.i522
  %5541 = trunc i64 %5538 to i32
  %5542 = sub i32 %5541, 1
  %5543 = zext i32 %5542 to i64
  store i64 %5543, i64* %RDI.i523, align 8
  %5544 = icmp ult i32 %5541, 1
  %5545 = zext i1 %5544 to i8
  %5546 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5545, i8* %5546, align 1
  %5547 = and i32 %5542, 255
  %5548 = call i32 @llvm.ctpop.i32(i32 %5547)
  %5549 = trunc i32 %5548 to i8
  %5550 = and i8 %5549, 1
  %5551 = xor i8 %5550, 1
  %5552 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5551, i8* %5552, align 1
  %5553 = xor i64 1, %5538
  %5554 = trunc i64 %5553 to i32
  %5555 = xor i32 %5554, %5542
  %5556 = lshr i32 %5555, 4
  %5557 = trunc i32 %5556 to i8
  %5558 = and i8 %5557, 1
  %5559 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5558, i8* %5559, align 1
  %5560 = icmp eq i32 %5542, 0
  %5561 = zext i1 %5560 to i8
  %5562 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5561, i8* %5562, align 1
  %5563 = lshr i32 %5542, 31
  %5564 = trunc i32 %5563 to i8
  %5565 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5564, i8* %5565, align 1
  %5566 = lshr i32 %5541, 31
  %5567 = xor i32 %5563, %5566
  %5568 = add i32 %5567, %5566
  %5569 = icmp eq i32 %5568, 2
  %5570 = zext i1 %5569 to i8
  %5571 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5570, i8* %5571, align 1
  store %struct.Memory* %loadMem_4083de, %struct.Memory** %MEMORY
  %loadMem_4083e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5573 = getelementptr inbounds %struct.GPR, %struct.GPR* %5572, i32 0, i32 33
  %5574 = getelementptr inbounds %struct.Reg, %struct.Reg* %5573, i32 0, i32 0
  %PC.i519 = bitcast %union.anon* %5574 to i64*
  %5575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5576 = getelementptr inbounds %struct.GPR, %struct.GPR* %5575, i32 0, i32 11
  %5577 = getelementptr inbounds %struct.Reg, %struct.Reg* %5576, i32 0, i32 0
  %EDI.i520 = bitcast %union.anon* %5577 to i32*
  %5578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5579 = getelementptr inbounds %struct.GPR, %struct.GPR* %5578, i32 0, i32 7
  %5580 = getelementptr inbounds %struct.Reg, %struct.Reg* %5579, i32 0, i32 0
  %RDX.i521 = bitcast %union.anon* %5580 to i64*
  %5581 = load i32, i32* %EDI.i520
  %5582 = zext i32 %5581 to i64
  %5583 = load i64, i64* %PC.i519
  %5584 = add i64 %5583, 3
  store i64 %5584, i64* %PC.i519
  %5585 = shl i64 %5582, 32
  %5586 = ashr exact i64 %5585, 32
  store i64 %5586, i64* %RDX.i521, align 8
  store %struct.Memory* %loadMem_4083e1, %struct.Memory** %MEMORY
  %loadMem_4083e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5587 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5588 = getelementptr inbounds %struct.GPR, %struct.GPR* %5587, i32 0, i32 33
  %5589 = getelementptr inbounds %struct.Reg, %struct.Reg* %5588, i32 0, i32 0
  %PC.i515 = bitcast %union.anon* %5589 to i64*
  %5590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5591 = getelementptr inbounds %struct.GPR, %struct.GPR* %5590, i32 0, i32 1
  %5592 = getelementptr inbounds %struct.Reg, %struct.Reg* %5591, i32 0, i32 0
  %RAX.i516 = bitcast %union.anon* %5592 to i64*
  %5593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5594 = getelementptr inbounds %struct.GPR, %struct.GPR* %5593, i32 0, i32 7
  %5595 = getelementptr inbounds %struct.Reg, %struct.Reg* %5594, i32 0, i32 0
  %RDX.i517 = bitcast %union.anon* %5595 to i64*
  %5596 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5597 = getelementptr inbounds %struct.GPR, %struct.GPR* %5596, i32 0, i32 9
  %5598 = getelementptr inbounds %struct.Reg, %struct.Reg* %5597, i32 0, i32 0
  %RSI.i518 = bitcast %union.anon* %5598 to i64*
  %5599 = load i64, i64* %RSI.i518
  %5600 = load i64, i64* %RAX.i516
  %5601 = load i64, i64* %RDX.i517
  %5602 = mul i64 %5601, 4
  %5603 = add i64 %5602, %5600
  %5604 = load i64, i64* %PC.i515
  %5605 = add i64 %5604, 3
  store i64 %5605, i64* %PC.i515
  %5606 = trunc i64 %5599 to i32
  %5607 = inttoptr i64 %5603 to i32*
  %5608 = load i32, i32* %5607
  %5609 = add i32 %5608, %5606
  %5610 = zext i32 %5609 to i64
  store i64 %5610, i64* %RSI.i518, align 8
  %5611 = icmp ult i32 %5609, %5606
  %5612 = icmp ult i32 %5609, %5608
  %5613 = or i1 %5611, %5612
  %5614 = zext i1 %5613 to i8
  %5615 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5614, i8* %5615, align 1
  %5616 = and i32 %5609, 255
  %5617 = call i32 @llvm.ctpop.i32(i32 %5616)
  %5618 = trunc i32 %5617 to i8
  %5619 = and i8 %5618, 1
  %5620 = xor i8 %5619, 1
  %5621 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5620, i8* %5621, align 1
  %5622 = xor i32 %5608, %5606
  %5623 = xor i32 %5622, %5609
  %5624 = lshr i32 %5623, 4
  %5625 = trunc i32 %5624 to i8
  %5626 = and i8 %5625, 1
  %5627 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5626, i8* %5627, align 1
  %5628 = icmp eq i32 %5609, 0
  %5629 = zext i1 %5628 to i8
  %5630 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5629, i8* %5630, align 1
  %5631 = lshr i32 %5609, 31
  %5632 = trunc i32 %5631 to i8
  %5633 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5632, i8* %5633, align 1
  %5634 = lshr i32 %5606, 31
  %5635 = lshr i32 %5608, 31
  %5636 = xor i32 %5631, %5634
  %5637 = xor i32 %5631, %5635
  %5638 = add i32 %5636, %5637
  %5639 = icmp eq i32 %5638, 2
  %5640 = zext i1 %5639 to i8
  %5641 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5640, i8* %5641, align 1
  store %struct.Memory* %loadMem_4083e4, %struct.Memory** %MEMORY
  %loadMem_4083e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5642 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5643 = getelementptr inbounds %struct.GPR, %struct.GPR* %5642, i32 0, i32 33
  %5644 = getelementptr inbounds %struct.Reg, %struct.Reg* %5643, i32 0, i32 0
  %PC.i512 = bitcast %union.anon* %5644 to i64*
  %5645 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5646 = getelementptr inbounds %struct.GPR, %struct.GPR* %5645, i32 0, i32 5
  %5647 = getelementptr inbounds %struct.Reg, %struct.Reg* %5646, i32 0, i32 0
  %ECX.i513 = bitcast %union.anon* %5647 to i32*
  %5648 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5649 = getelementptr inbounds %struct.GPR, %struct.GPR* %5648, i32 0, i32 11
  %5650 = getelementptr inbounds %struct.Reg, %struct.Reg* %5649, i32 0, i32 0
  %RDI.i514 = bitcast %union.anon* %5650 to i64*
  %5651 = load i32, i32* %ECX.i513
  %5652 = zext i32 %5651 to i64
  %5653 = load i64, i64* %PC.i512
  %5654 = add i64 %5653, 2
  store i64 %5654, i64* %PC.i512
  %5655 = and i64 %5652, 4294967295
  store i64 %5655, i64* %RDI.i514, align 8
  store %struct.Memory* %loadMem_4083e7, %struct.Memory** %MEMORY
  %loadMem1_4083e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5656 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5657 = getelementptr inbounds %struct.GPR, %struct.GPR* %5656, i32 0, i32 33
  %5658 = getelementptr inbounds %struct.Reg, %struct.Reg* %5657, i32 0, i32 0
  %PC.i511 = bitcast %union.anon* %5658 to i64*
  %5659 = load i64, i64* %PC.i511
  %5660 = add i64 %5659, 130503
  %5661 = load i64, i64* %PC.i511
  %5662 = add i64 %5661, 5
  %5663 = load i64, i64* %PC.i511
  %5664 = add i64 %5663, 5
  store i64 %5664, i64* %PC.i511
  %5665 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5666 = load i64, i64* %5665, align 8
  %5667 = add i64 %5666, -8
  %5668 = inttoptr i64 %5667 to i64*
  store i64 %5662, i64* %5668
  store i64 %5667, i64* %5665, align 8
  %5669 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5660, i64* %5669, align 8
  store %struct.Memory* %loadMem1_4083e9, %struct.Memory** %MEMORY
  %loadMem2_4083e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4083e9 = load i64, i64* %3
  %call2_4083e9 = call %struct.Memory* @sub_4281b0.ILogsum(%struct.State* %0, i64 %loadPC_4083e9, %struct.Memory* %loadMem2_4083e9)
  store %struct.Memory* %call2_4083e9, %struct.Memory** %MEMORY
  %loadMem_4083ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %5670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5671 = getelementptr inbounds %struct.GPR, %struct.GPR* %5670, i32 0, i32 33
  %5672 = getelementptr inbounds %struct.Reg, %struct.Reg* %5671, i32 0, i32 0
  %PC.i508 = bitcast %union.anon* %5672 to i64*
  %5673 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5674 = getelementptr inbounds %struct.GPR, %struct.GPR* %5673, i32 0, i32 7
  %5675 = getelementptr inbounds %struct.Reg, %struct.Reg* %5674, i32 0, i32 0
  %RDX.i509 = bitcast %union.anon* %5675 to i64*
  %5676 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5677 = getelementptr inbounds %struct.GPR, %struct.GPR* %5676, i32 0, i32 15
  %5678 = getelementptr inbounds %struct.Reg, %struct.Reg* %5677, i32 0, i32 0
  %RBP.i510 = bitcast %union.anon* %5678 to i64*
  %5679 = load i64, i64* %RBP.i510
  %5680 = sub i64 %5679, 48
  %5681 = load i64, i64* %PC.i508
  %5682 = add i64 %5681, 4
  store i64 %5682, i64* %PC.i508
  %5683 = inttoptr i64 %5680 to i64*
  %5684 = load i64, i64* %5683
  store i64 %5684, i64* %RDX.i509, align 8
  store %struct.Memory* %loadMem_4083ee, %struct.Memory** %MEMORY
  %loadMem_4083f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5686 = getelementptr inbounds %struct.GPR, %struct.GPR* %5685, i32 0, i32 33
  %5687 = getelementptr inbounds %struct.Reg, %struct.Reg* %5686, i32 0, i32 0
  %PC.i505 = bitcast %union.anon* %5687 to i64*
  %5688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5689 = getelementptr inbounds %struct.GPR, %struct.GPR* %5688, i32 0, i32 5
  %5690 = getelementptr inbounds %struct.Reg, %struct.Reg* %5689, i32 0, i32 0
  %RCX.i506 = bitcast %union.anon* %5690 to i64*
  %5691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5692 = getelementptr inbounds %struct.GPR, %struct.GPR* %5691, i32 0, i32 15
  %5693 = getelementptr inbounds %struct.Reg, %struct.Reg* %5692, i32 0, i32 0
  %RBP.i507 = bitcast %union.anon* %5693 to i64*
  %5694 = load i64, i64* %RBP.i507
  %5695 = sub i64 %5694, 76
  %5696 = load i64, i64* %PC.i505
  %5697 = add i64 %5696, 3
  store i64 %5697, i64* %PC.i505
  %5698 = inttoptr i64 %5695 to i32*
  %5699 = load i32, i32* %5698
  %5700 = zext i32 %5699 to i64
  store i64 %5700, i64* %RCX.i506, align 8
  store %struct.Memory* %loadMem_4083f2, %struct.Memory** %MEMORY
  %loadMem_4083f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5702 = getelementptr inbounds %struct.GPR, %struct.GPR* %5701, i32 0, i32 33
  %5703 = getelementptr inbounds %struct.Reg, %struct.Reg* %5702, i32 0, i32 0
  %PC.i503 = bitcast %union.anon* %5703 to i64*
  %5704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5705 = getelementptr inbounds %struct.GPR, %struct.GPR* %5704, i32 0, i32 5
  %5706 = getelementptr inbounds %struct.Reg, %struct.Reg* %5705, i32 0, i32 0
  %RCX.i504 = bitcast %union.anon* %5706 to i64*
  %5707 = load i64, i64* %RCX.i504
  %5708 = load i64, i64* %PC.i503
  %5709 = add i64 %5708, 3
  store i64 %5709, i64* %PC.i503
  %5710 = trunc i64 %5707 to i32
  %5711 = sub i32 %5710, 1
  %5712 = zext i32 %5711 to i64
  store i64 %5712, i64* %RCX.i504, align 8
  %5713 = icmp ult i32 %5710, 1
  %5714 = zext i1 %5713 to i8
  %5715 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5714, i8* %5715, align 1
  %5716 = and i32 %5711, 255
  %5717 = call i32 @llvm.ctpop.i32(i32 %5716)
  %5718 = trunc i32 %5717 to i8
  %5719 = and i8 %5718, 1
  %5720 = xor i8 %5719, 1
  %5721 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5720, i8* %5721, align 1
  %5722 = xor i64 1, %5707
  %5723 = trunc i64 %5722 to i32
  %5724 = xor i32 %5723, %5711
  %5725 = lshr i32 %5724, 4
  %5726 = trunc i32 %5725 to i8
  %5727 = and i8 %5726, 1
  %5728 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5727, i8* %5728, align 1
  %5729 = icmp eq i32 %5711, 0
  %5730 = zext i1 %5729 to i8
  %5731 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5730, i8* %5731, align 1
  %5732 = lshr i32 %5711, 31
  %5733 = trunc i32 %5732 to i8
  %5734 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5733, i8* %5734, align 1
  %5735 = lshr i32 %5710, 31
  %5736 = xor i32 %5732, %5735
  %5737 = add i32 %5736, %5735
  %5738 = icmp eq i32 %5737, 2
  %5739 = zext i1 %5738 to i8
  %5740 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5739, i8* %5740, align 1
  store %struct.Memory* %loadMem_4083f5, %struct.Memory** %MEMORY
  %loadMem_4083f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5742 = getelementptr inbounds %struct.GPR, %struct.GPR* %5741, i32 0, i32 33
  %5743 = getelementptr inbounds %struct.Reg, %struct.Reg* %5742, i32 0, i32 0
  %PC.i500 = bitcast %union.anon* %5743 to i64*
  %5744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5745 = getelementptr inbounds %struct.GPR, %struct.GPR* %5744, i32 0, i32 5
  %5746 = getelementptr inbounds %struct.Reg, %struct.Reg* %5745, i32 0, i32 0
  %ECX.i501 = bitcast %union.anon* %5746 to i32*
  %5747 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5748 = getelementptr inbounds %struct.GPR, %struct.GPR* %5747, i32 0, i32 17
  %5749 = getelementptr inbounds %struct.Reg, %struct.Reg* %5748, i32 0, i32 0
  %R8.i502 = bitcast %union.anon* %5749 to i64*
  %5750 = load i32, i32* %ECX.i501
  %5751 = zext i32 %5750 to i64
  %5752 = load i64, i64* %PC.i500
  %5753 = add i64 %5752, 3
  store i64 %5753, i64* %PC.i500
  %5754 = shl i64 %5751, 32
  %5755 = ashr exact i64 %5754, 32
  store i64 %5755, i64* %R8.i502, align 8
  store %struct.Memory* %loadMem_4083f8, %struct.Memory** %MEMORY
  %loadMem_4083fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %5756 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5757 = getelementptr inbounds %struct.GPR, %struct.GPR* %5756, i32 0, i32 33
  %5758 = getelementptr inbounds %struct.Reg, %struct.Reg* %5757, i32 0, i32 0
  %PC.i497 = bitcast %union.anon* %5758 to i64*
  %5759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5760 = getelementptr inbounds %struct.GPR, %struct.GPR* %5759, i32 0, i32 7
  %5761 = getelementptr inbounds %struct.Reg, %struct.Reg* %5760, i32 0, i32 0
  %RDX.i498 = bitcast %union.anon* %5761 to i64*
  %5762 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5763 = getelementptr inbounds %struct.GPR, %struct.GPR* %5762, i32 0, i32 17
  %5764 = getelementptr inbounds %struct.Reg, %struct.Reg* %5763, i32 0, i32 0
  %R8.i499 = bitcast %union.anon* %5764 to i64*
  %5765 = load i64, i64* %RDX.i498
  %5766 = load i64, i64* %R8.i499
  %5767 = mul i64 %5766, 8
  %5768 = add i64 %5767, %5765
  %5769 = load i64, i64* %PC.i497
  %5770 = add i64 %5769, 4
  store i64 %5770, i64* %PC.i497
  %5771 = inttoptr i64 %5768 to i64*
  %5772 = load i64, i64* %5771
  store i64 %5772, i64* %RDX.i498, align 8
  store %struct.Memory* %loadMem_4083fb, %struct.Memory** %MEMORY
  %loadMem_4083ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %5773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5774 = getelementptr inbounds %struct.GPR, %struct.GPR* %5773, i32 0, i32 33
  %5775 = getelementptr inbounds %struct.Reg, %struct.Reg* %5774, i32 0, i32 0
  %PC.i494 = bitcast %union.anon* %5775 to i64*
  %5776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5777 = getelementptr inbounds %struct.GPR, %struct.GPR* %5776, i32 0, i32 5
  %5778 = getelementptr inbounds %struct.Reg, %struct.Reg* %5777, i32 0, i32 0
  %RCX.i495 = bitcast %union.anon* %5778 to i64*
  %5779 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5780 = getelementptr inbounds %struct.GPR, %struct.GPR* %5779, i32 0, i32 7
  %5781 = getelementptr inbounds %struct.Reg, %struct.Reg* %5780, i32 0, i32 0
  %RDX.i496 = bitcast %union.anon* %5781 to i64*
  %5782 = load i64, i64* %RDX.i496
  %5783 = load i64, i64* %PC.i494
  %5784 = add i64 %5783, 2
  store i64 %5784, i64* %PC.i494
  %5785 = inttoptr i64 %5782 to i32*
  %5786 = load i32, i32* %5785
  %5787 = zext i32 %5786 to i64
  store i64 %5787, i64* %RCX.i495, align 8
  store %struct.Memory* %loadMem_4083ff, %struct.Memory** %MEMORY
  %loadMem_408401 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5789 = getelementptr inbounds %struct.GPR, %struct.GPR* %5788, i32 0, i32 33
  %5790 = getelementptr inbounds %struct.Reg, %struct.Reg* %5789, i32 0, i32 0
  %PC.i491 = bitcast %union.anon* %5790 to i64*
  %5791 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5792 = getelementptr inbounds %struct.GPR, %struct.GPR* %5791, i32 0, i32 7
  %5793 = getelementptr inbounds %struct.Reg, %struct.Reg* %5792, i32 0, i32 0
  %RDX.i492 = bitcast %union.anon* %5793 to i64*
  %5794 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5795 = getelementptr inbounds %struct.GPR, %struct.GPR* %5794, i32 0, i32 15
  %5796 = getelementptr inbounds %struct.Reg, %struct.Reg* %5795, i32 0, i32 0
  %RBP.i493 = bitcast %union.anon* %5796 to i64*
  %5797 = load i64, i64* %RBP.i493
  %5798 = sub i64 %5797, 24
  %5799 = load i64, i64* %PC.i491
  %5800 = add i64 %5799, 4
  store i64 %5800, i64* %PC.i491
  %5801 = inttoptr i64 %5798 to i64*
  %5802 = load i64, i64* %5801
  store i64 %5802, i64* %RDX.i492, align 8
  store %struct.Memory* %loadMem_408401, %struct.Memory** %MEMORY
  %loadMem_408405 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5803 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5804 = getelementptr inbounds %struct.GPR, %struct.GPR* %5803, i32 0, i32 33
  %5805 = getelementptr inbounds %struct.Reg, %struct.Reg* %5804, i32 0, i32 0
  %PC.i489 = bitcast %union.anon* %5805 to i64*
  %5806 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5807 = getelementptr inbounds %struct.GPR, %struct.GPR* %5806, i32 0, i32 7
  %5808 = getelementptr inbounds %struct.Reg, %struct.Reg* %5807, i32 0, i32 0
  %RDX.i490 = bitcast %union.anon* %5808 to i64*
  %5809 = load i64, i64* %RDX.i490
  %5810 = add i64 %5809, 368
  %5811 = load i64, i64* %PC.i489
  %5812 = add i64 %5811, 7
  store i64 %5812, i64* %PC.i489
  %5813 = inttoptr i64 %5810 to i64*
  %5814 = load i64, i64* %5813
  store i64 %5814, i64* %RDX.i490, align 8
  store %struct.Memory* %loadMem_408405, %struct.Memory** %MEMORY
  %loadMem_40840c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5815 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5816 = getelementptr inbounds %struct.GPR, %struct.GPR* %5815, i32 0, i32 33
  %5817 = getelementptr inbounds %struct.Reg, %struct.Reg* %5816, i32 0, i32 0
  %PC.i486 = bitcast %union.anon* %5817 to i64*
  %5818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5819 = getelementptr inbounds %struct.GPR, %struct.GPR* %5818, i32 0, i32 15
  %5820 = getelementptr inbounds %struct.Reg, %struct.Reg* %5819, i32 0, i32 0
  %RBP.i487 = bitcast %union.anon* %5820 to i64*
  %5821 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5822 = getelementptr inbounds %struct.GPR, %struct.GPR* %5821, i32 0, i32 17
  %5823 = getelementptr inbounds %struct.Reg, %struct.Reg* %5822, i32 0, i32 0
  %R8.i488 = bitcast %union.anon* %5823 to i64*
  %5824 = load i64, i64* %RBP.i487
  %5825 = sub i64 %5824, 24
  %5826 = load i64, i64* %PC.i486
  %5827 = add i64 %5826, 4
  store i64 %5827, i64* %PC.i486
  %5828 = inttoptr i64 %5825 to i64*
  %5829 = load i64, i64* %5828
  store i64 %5829, i64* %R8.i488, align 8
  store %struct.Memory* %loadMem_40840c, %struct.Memory** %MEMORY
  %loadMem_408410 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5831 = getelementptr inbounds %struct.GPR, %struct.GPR* %5830, i32 0, i32 33
  %5832 = getelementptr inbounds %struct.Reg, %struct.Reg* %5831, i32 0, i32 0
  %PC.i483 = bitcast %union.anon* %5832 to i64*
  %5833 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5834 = getelementptr inbounds %struct.GPR, %struct.GPR* %5833, i32 0, i32 9
  %5835 = getelementptr inbounds %struct.Reg, %struct.Reg* %5834, i32 0, i32 0
  %RSI.i484 = bitcast %union.anon* %5835 to i64*
  %5836 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5837 = getelementptr inbounds %struct.GPR, %struct.GPR* %5836, i32 0, i32 17
  %5838 = getelementptr inbounds %struct.Reg, %struct.Reg* %5837, i32 0, i32 0
  %R8.i485 = bitcast %union.anon* %5838 to i64*
  %5839 = load i64, i64* %R8.i485
  %5840 = add i64 %5839, 136
  %5841 = load i64, i64* %PC.i483
  %5842 = add i64 %5841, 7
  store i64 %5842, i64* %PC.i483
  %5843 = inttoptr i64 %5840 to i32*
  %5844 = load i32, i32* %5843
  %5845 = zext i32 %5844 to i64
  store i64 %5845, i64* %RSI.i484, align 8
  store %struct.Memory* %loadMem_408410, %struct.Memory** %MEMORY
  %loadMem_408417 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5847 = getelementptr inbounds %struct.GPR, %struct.GPR* %5846, i32 0, i32 33
  %5848 = getelementptr inbounds %struct.Reg, %struct.Reg* %5847, i32 0, i32 0
  %PC.i481 = bitcast %union.anon* %5848 to i64*
  %5849 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5850 = getelementptr inbounds %struct.GPR, %struct.GPR* %5849, i32 0, i32 9
  %5851 = getelementptr inbounds %struct.Reg, %struct.Reg* %5850, i32 0, i32 0
  %RSI.i482 = bitcast %union.anon* %5851 to i64*
  %5852 = load i64, i64* %RSI.i482
  %5853 = load i64, i64* %PC.i481
  %5854 = add i64 %5853, 3
  store i64 %5854, i64* %PC.i481
  %5855 = trunc i64 %5852 to i32
  %5856 = sub i32 %5855, 1
  %5857 = zext i32 %5856 to i64
  store i64 %5857, i64* %RSI.i482, align 8
  %5858 = icmp ult i32 %5855, 1
  %5859 = zext i1 %5858 to i8
  %5860 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5859, i8* %5860, align 1
  %5861 = and i32 %5856, 255
  %5862 = call i32 @llvm.ctpop.i32(i32 %5861)
  %5863 = trunc i32 %5862 to i8
  %5864 = and i8 %5863, 1
  %5865 = xor i8 %5864, 1
  %5866 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5865, i8* %5866, align 1
  %5867 = xor i64 1, %5852
  %5868 = trunc i64 %5867 to i32
  %5869 = xor i32 %5868, %5856
  %5870 = lshr i32 %5869, 4
  %5871 = trunc i32 %5870 to i8
  %5872 = and i8 %5871, 1
  %5873 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5872, i8* %5873, align 1
  %5874 = icmp eq i32 %5856, 0
  %5875 = zext i1 %5874 to i8
  %5876 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5875, i8* %5876, align 1
  %5877 = lshr i32 %5856, 31
  %5878 = trunc i32 %5877 to i8
  %5879 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5878, i8* %5879, align 1
  %5880 = lshr i32 %5855, 31
  %5881 = xor i32 %5877, %5880
  %5882 = add i32 %5881, %5880
  %5883 = icmp eq i32 %5882, 2
  %5884 = zext i1 %5883 to i8
  %5885 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5884, i8* %5885, align 1
  store %struct.Memory* %loadMem_408417, %struct.Memory** %MEMORY
  %loadMem_40841a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5887 = getelementptr inbounds %struct.GPR, %struct.GPR* %5886, i32 0, i32 33
  %5888 = getelementptr inbounds %struct.Reg, %struct.Reg* %5887, i32 0, i32 0
  %PC.i478 = bitcast %union.anon* %5888 to i64*
  %5889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5890 = getelementptr inbounds %struct.GPR, %struct.GPR* %5889, i32 0, i32 9
  %5891 = getelementptr inbounds %struct.Reg, %struct.Reg* %5890, i32 0, i32 0
  %ESI.i479 = bitcast %union.anon* %5891 to i32*
  %5892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5893 = getelementptr inbounds %struct.GPR, %struct.GPR* %5892, i32 0, i32 17
  %5894 = getelementptr inbounds %struct.Reg, %struct.Reg* %5893, i32 0, i32 0
  %R8.i480 = bitcast %union.anon* %5894 to i64*
  %5895 = load i32, i32* %ESI.i479
  %5896 = zext i32 %5895 to i64
  %5897 = load i64, i64* %PC.i478
  %5898 = add i64 %5897, 3
  store i64 %5898, i64* %PC.i478
  %5899 = shl i64 %5896, 32
  %5900 = ashr exact i64 %5899, 32
  store i64 %5900, i64* %R8.i480, align 8
  store %struct.Memory* %loadMem_40841a, %struct.Memory** %MEMORY
  %loadMem_40841d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5902 = getelementptr inbounds %struct.GPR, %struct.GPR* %5901, i32 0, i32 33
  %5903 = getelementptr inbounds %struct.Reg, %struct.Reg* %5902, i32 0, i32 0
  %PC.i474 = bitcast %union.anon* %5903 to i64*
  %5904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5905 = getelementptr inbounds %struct.GPR, %struct.GPR* %5904, i32 0, i32 5
  %5906 = getelementptr inbounds %struct.Reg, %struct.Reg* %5905, i32 0, i32 0
  %RCX.i475 = bitcast %union.anon* %5906 to i64*
  %5907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5908 = getelementptr inbounds %struct.GPR, %struct.GPR* %5907, i32 0, i32 7
  %5909 = getelementptr inbounds %struct.Reg, %struct.Reg* %5908, i32 0, i32 0
  %RDX.i476 = bitcast %union.anon* %5909 to i64*
  %5910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5911 = getelementptr inbounds %struct.GPR, %struct.GPR* %5910, i32 0, i32 17
  %5912 = getelementptr inbounds %struct.Reg, %struct.Reg* %5911, i32 0, i32 0
  %R8.i477 = bitcast %union.anon* %5912 to i64*
  %5913 = load i64, i64* %RCX.i475
  %5914 = load i64, i64* %RDX.i476
  %5915 = load i64, i64* %R8.i477
  %5916 = mul i64 %5915, 4
  %5917 = add i64 %5916, %5914
  %5918 = load i64, i64* %PC.i474
  %5919 = add i64 %5918, 4
  store i64 %5919, i64* %PC.i474
  %5920 = trunc i64 %5913 to i32
  %5921 = inttoptr i64 %5917 to i32*
  %5922 = load i32, i32* %5921
  %5923 = add i32 %5922, %5920
  %5924 = zext i32 %5923 to i64
  store i64 %5924, i64* %RCX.i475, align 8
  %5925 = icmp ult i32 %5923, %5920
  %5926 = icmp ult i32 %5923, %5922
  %5927 = or i1 %5925, %5926
  %5928 = zext i1 %5927 to i8
  %5929 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5928, i8* %5929, align 1
  %5930 = and i32 %5923, 255
  %5931 = call i32 @llvm.ctpop.i32(i32 %5930)
  %5932 = trunc i32 %5931 to i8
  %5933 = and i8 %5932, 1
  %5934 = xor i8 %5933, 1
  %5935 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5934, i8* %5935, align 1
  %5936 = xor i32 %5922, %5920
  %5937 = xor i32 %5936, %5923
  %5938 = lshr i32 %5937, 4
  %5939 = trunc i32 %5938 to i8
  %5940 = and i8 %5939, 1
  %5941 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5940, i8* %5941, align 1
  %5942 = icmp eq i32 %5923, 0
  %5943 = zext i1 %5942 to i8
  %5944 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5943, i8* %5944, align 1
  %5945 = lshr i32 %5923, 31
  %5946 = trunc i32 %5945 to i8
  %5947 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5946, i8* %5947, align 1
  %5948 = lshr i32 %5920, 31
  %5949 = lshr i32 %5922, 31
  %5950 = xor i32 %5945, %5948
  %5951 = xor i32 %5945, %5949
  %5952 = add i32 %5950, %5951
  %5953 = icmp eq i32 %5952, 2
  %5954 = zext i1 %5953 to i8
  %5955 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5954, i8* %5955, align 1
  store %struct.Memory* %loadMem_40841d, %struct.Memory** %MEMORY
  %loadMem_408421 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5956 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5957 = getelementptr inbounds %struct.GPR, %struct.GPR* %5956, i32 0, i32 33
  %5958 = getelementptr inbounds %struct.Reg, %struct.Reg* %5957, i32 0, i32 0
  %PC.i471 = bitcast %union.anon* %5958 to i64*
  %5959 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5960 = getelementptr inbounds %struct.GPR, %struct.GPR* %5959, i32 0, i32 7
  %5961 = getelementptr inbounds %struct.Reg, %struct.Reg* %5960, i32 0, i32 0
  %RDX.i472 = bitcast %union.anon* %5961 to i64*
  %5962 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5963 = getelementptr inbounds %struct.GPR, %struct.GPR* %5962, i32 0, i32 15
  %5964 = getelementptr inbounds %struct.Reg, %struct.Reg* %5963, i32 0, i32 0
  %RBP.i473 = bitcast %union.anon* %5964 to i64*
  %5965 = load i64, i64* %RBP.i473
  %5966 = sub i64 %5965, 72
  %5967 = load i64, i64* %PC.i471
  %5968 = add i64 %5967, 4
  store i64 %5968, i64* %PC.i471
  %5969 = inttoptr i64 %5966 to i64*
  %5970 = load i64, i64* %5969
  store i64 %5970, i64* %RDX.i472, align 8
  store %struct.Memory* %loadMem_408421, %struct.Memory** %MEMORY
  %loadMem_408425 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5971 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5972 = getelementptr inbounds %struct.GPR, %struct.GPR* %5971, i32 0, i32 33
  %5973 = getelementptr inbounds %struct.Reg, %struct.Reg* %5972, i32 0, i32 0
  %PC.i468 = bitcast %union.anon* %5973 to i64*
  %5974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5975 = getelementptr inbounds %struct.GPR, %struct.GPR* %5974, i32 0, i32 9
  %5976 = getelementptr inbounds %struct.Reg, %struct.Reg* %5975, i32 0, i32 0
  %RSI.i469 = bitcast %union.anon* %5976 to i64*
  %5977 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5978 = getelementptr inbounds %struct.GPR, %struct.GPR* %5977, i32 0, i32 15
  %5979 = getelementptr inbounds %struct.Reg, %struct.Reg* %5978, i32 0, i32 0
  %RBP.i470 = bitcast %union.anon* %5979 to i64*
  %5980 = load i64, i64* %RBP.i470
  %5981 = sub i64 %5980, 76
  %5982 = load i64, i64* %PC.i468
  %5983 = add i64 %5982, 3
  store i64 %5983, i64* %PC.i468
  %5984 = inttoptr i64 %5981 to i32*
  %5985 = load i32, i32* %5984
  %5986 = zext i32 %5985 to i64
  store i64 %5986, i64* %RSI.i469, align 8
  store %struct.Memory* %loadMem_408425, %struct.Memory** %MEMORY
  %loadMem_408428 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5987 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5988 = getelementptr inbounds %struct.GPR, %struct.GPR* %5987, i32 0, i32 33
  %5989 = getelementptr inbounds %struct.Reg, %struct.Reg* %5988, i32 0, i32 0
  %PC.i466 = bitcast %union.anon* %5989 to i64*
  %5990 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5991 = getelementptr inbounds %struct.GPR, %struct.GPR* %5990, i32 0, i32 9
  %5992 = getelementptr inbounds %struct.Reg, %struct.Reg* %5991, i32 0, i32 0
  %RSI.i467 = bitcast %union.anon* %5992 to i64*
  %5993 = load i64, i64* %RSI.i467
  %5994 = load i64, i64* %PC.i466
  %5995 = add i64 %5994, 3
  store i64 %5995, i64* %PC.i466
  %5996 = trunc i64 %5993 to i32
  %5997 = sub i32 %5996, 1
  %5998 = zext i32 %5997 to i64
  store i64 %5998, i64* %RSI.i467, align 8
  %5999 = icmp ult i32 %5996, 1
  %6000 = zext i1 %5999 to i8
  %6001 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6000, i8* %6001, align 1
  %6002 = and i32 %5997, 255
  %6003 = call i32 @llvm.ctpop.i32(i32 %6002)
  %6004 = trunc i32 %6003 to i8
  %6005 = and i8 %6004, 1
  %6006 = xor i8 %6005, 1
  %6007 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6006, i8* %6007, align 1
  %6008 = xor i64 1, %5993
  %6009 = trunc i64 %6008 to i32
  %6010 = xor i32 %6009, %5997
  %6011 = lshr i32 %6010, 4
  %6012 = trunc i32 %6011 to i8
  %6013 = and i8 %6012, 1
  %6014 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6013, i8* %6014, align 1
  %6015 = icmp eq i32 %5997, 0
  %6016 = zext i1 %6015 to i8
  %6017 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6016, i8* %6017, align 1
  %6018 = lshr i32 %5997, 31
  %6019 = trunc i32 %6018 to i8
  %6020 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6019, i8* %6020, align 1
  %6021 = lshr i32 %5996, 31
  %6022 = xor i32 %6018, %6021
  %6023 = add i32 %6022, %6021
  %6024 = icmp eq i32 %6023, 2
  %6025 = zext i1 %6024 to i8
  %6026 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6025, i8* %6026, align 1
  store %struct.Memory* %loadMem_408428, %struct.Memory** %MEMORY
  %loadMem_40842b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6027 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6028 = getelementptr inbounds %struct.GPR, %struct.GPR* %6027, i32 0, i32 33
  %6029 = getelementptr inbounds %struct.Reg, %struct.Reg* %6028, i32 0, i32 0
  %PC.i463 = bitcast %union.anon* %6029 to i64*
  %6030 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6031 = getelementptr inbounds %struct.GPR, %struct.GPR* %6030, i32 0, i32 9
  %6032 = getelementptr inbounds %struct.Reg, %struct.Reg* %6031, i32 0, i32 0
  %ESI.i464 = bitcast %union.anon* %6032 to i32*
  %6033 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6034 = getelementptr inbounds %struct.GPR, %struct.GPR* %6033, i32 0, i32 17
  %6035 = getelementptr inbounds %struct.Reg, %struct.Reg* %6034, i32 0, i32 0
  %R8.i465 = bitcast %union.anon* %6035 to i64*
  %6036 = load i32, i32* %ESI.i464
  %6037 = zext i32 %6036 to i64
  %6038 = load i64, i64* %PC.i463
  %6039 = add i64 %6038, 3
  store i64 %6039, i64* %PC.i463
  %6040 = shl i64 %6037, 32
  %6041 = ashr exact i64 %6040, 32
  store i64 %6041, i64* %R8.i465, align 8
  store %struct.Memory* %loadMem_40842b, %struct.Memory** %MEMORY
  %loadMem_40842e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6042 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6043 = getelementptr inbounds %struct.GPR, %struct.GPR* %6042, i32 0, i32 33
  %6044 = getelementptr inbounds %struct.Reg, %struct.Reg* %6043, i32 0, i32 0
  %PC.i460 = bitcast %union.anon* %6044 to i64*
  %6045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6046 = getelementptr inbounds %struct.GPR, %struct.GPR* %6045, i32 0, i32 7
  %6047 = getelementptr inbounds %struct.Reg, %struct.Reg* %6046, i32 0, i32 0
  %RDX.i461 = bitcast %union.anon* %6047 to i64*
  %6048 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6049 = getelementptr inbounds %struct.GPR, %struct.GPR* %6048, i32 0, i32 17
  %6050 = getelementptr inbounds %struct.Reg, %struct.Reg* %6049, i32 0, i32 0
  %R8.i462 = bitcast %union.anon* %6050 to i64*
  %6051 = load i64, i64* %RDX.i461
  %6052 = load i64, i64* %R8.i462
  %6053 = mul i64 %6052, 8
  %6054 = add i64 %6053, %6051
  %6055 = load i64, i64* %PC.i460
  %6056 = add i64 %6055, 4
  store i64 %6056, i64* %PC.i460
  %6057 = inttoptr i64 %6054 to i64*
  %6058 = load i64, i64* %6057
  store i64 %6058, i64* %RDX.i461, align 8
  store %struct.Memory* %loadMem_40842e, %struct.Memory** %MEMORY
  %loadMem_408432 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6059 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6060 = getelementptr inbounds %struct.GPR, %struct.GPR* %6059, i32 0, i32 33
  %6061 = getelementptr inbounds %struct.Reg, %struct.Reg* %6060, i32 0, i32 0
  %PC.i457 = bitcast %union.anon* %6061 to i64*
  %6062 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6063 = getelementptr inbounds %struct.GPR, %struct.GPR* %6062, i32 0, i32 15
  %6064 = getelementptr inbounds %struct.Reg, %struct.Reg* %6063, i32 0, i32 0
  %RBP.i458 = bitcast %union.anon* %6064 to i64*
  %6065 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6066 = getelementptr inbounds %struct.GPR, %struct.GPR* %6065, i32 0, i32 17
  %6067 = getelementptr inbounds %struct.Reg, %struct.Reg* %6066, i32 0, i32 0
  %R8.i459 = bitcast %union.anon* %6067 to i64*
  %6068 = load i64, i64* %RBP.i458
  %6069 = sub i64 %6068, 24
  %6070 = load i64, i64* %PC.i457
  %6071 = add i64 %6070, 4
  store i64 %6071, i64* %PC.i457
  %6072 = inttoptr i64 %6069 to i64*
  %6073 = load i64, i64* %6072
  store i64 %6073, i64* %R8.i459, align 8
  store %struct.Memory* %loadMem_408432, %struct.Memory** %MEMORY
  %loadMem_408436 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6074 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6075 = getelementptr inbounds %struct.GPR, %struct.GPR* %6074, i32 0, i32 33
  %6076 = getelementptr inbounds %struct.Reg, %struct.Reg* %6075, i32 0, i32 0
  %PC.i454 = bitcast %union.anon* %6076 to i64*
  %6077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6078 = getelementptr inbounds %struct.GPR, %struct.GPR* %6077, i32 0, i32 9
  %6079 = getelementptr inbounds %struct.Reg, %struct.Reg* %6078, i32 0, i32 0
  %RSI.i455 = bitcast %union.anon* %6079 to i64*
  %6080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6081 = getelementptr inbounds %struct.GPR, %struct.GPR* %6080, i32 0, i32 17
  %6082 = getelementptr inbounds %struct.Reg, %struct.Reg* %6081, i32 0, i32 0
  %R8.i456 = bitcast %union.anon* %6082 to i64*
  %6083 = load i64, i64* %R8.i456
  %6084 = add i64 %6083, 136
  %6085 = load i64, i64* %PC.i454
  %6086 = add i64 %6085, 7
  store i64 %6086, i64* %PC.i454
  %6087 = inttoptr i64 %6084 to i32*
  %6088 = load i32, i32* %6087
  %6089 = zext i32 %6088 to i64
  store i64 %6089, i64* %RSI.i455, align 8
  store %struct.Memory* %loadMem_408436, %struct.Memory** %MEMORY
  %loadMem_40843d = load %struct.Memory*, %struct.Memory** %MEMORY
  %6090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6091 = getelementptr inbounds %struct.GPR, %struct.GPR* %6090, i32 0, i32 33
  %6092 = getelementptr inbounds %struct.Reg, %struct.Reg* %6091, i32 0, i32 0
  %PC.i452 = bitcast %union.anon* %6092 to i64*
  %6093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6094 = getelementptr inbounds %struct.GPR, %struct.GPR* %6093, i32 0, i32 9
  %6095 = getelementptr inbounds %struct.Reg, %struct.Reg* %6094, i32 0, i32 0
  %RSI.i453 = bitcast %union.anon* %6095 to i64*
  %6096 = load i64, i64* %RSI.i453
  %6097 = load i64, i64* %PC.i452
  %6098 = add i64 %6097, 3
  store i64 %6098, i64* %PC.i452
  %6099 = trunc i64 %6096 to i32
  %6100 = sub i32 %6099, 1
  %6101 = zext i32 %6100 to i64
  store i64 %6101, i64* %RSI.i453, align 8
  %6102 = icmp ult i32 %6099, 1
  %6103 = zext i1 %6102 to i8
  %6104 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6103, i8* %6104, align 1
  %6105 = and i32 %6100, 255
  %6106 = call i32 @llvm.ctpop.i32(i32 %6105)
  %6107 = trunc i32 %6106 to i8
  %6108 = and i8 %6107, 1
  %6109 = xor i8 %6108, 1
  %6110 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6109, i8* %6110, align 1
  %6111 = xor i64 1, %6096
  %6112 = trunc i64 %6111 to i32
  %6113 = xor i32 %6112, %6100
  %6114 = lshr i32 %6113, 4
  %6115 = trunc i32 %6114 to i8
  %6116 = and i8 %6115, 1
  %6117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6116, i8* %6117, align 1
  %6118 = icmp eq i32 %6100, 0
  %6119 = zext i1 %6118 to i8
  %6120 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6119, i8* %6120, align 1
  %6121 = lshr i32 %6100, 31
  %6122 = trunc i32 %6121 to i8
  %6123 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6122, i8* %6123, align 1
  %6124 = lshr i32 %6099, 31
  %6125 = xor i32 %6121, %6124
  %6126 = add i32 %6125, %6124
  %6127 = icmp eq i32 %6126, 2
  %6128 = zext i1 %6127 to i8
  %6129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6128, i8* %6129, align 1
  store %struct.Memory* %loadMem_40843d, %struct.Memory** %MEMORY
  %loadMem_408440 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6131 = getelementptr inbounds %struct.GPR, %struct.GPR* %6130, i32 0, i32 33
  %6132 = getelementptr inbounds %struct.Reg, %struct.Reg* %6131, i32 0, i32 0
  %PC.i450 = bitcast %union.anon* %6132 to i64*
  %6133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6134 = getelementptr inbounds %struct.GPR, %struct.GPR* %6133, i32 0, i32 9
  %6135 = getelementptr inbounds %struct.Reg, %struct.Reg* %6134, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %6135 to i32*
  %6136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6137 = getelementptr inbounds %struct.GPR, %struct.GPR* %6136, i32 0, i32 17
  %6138 = getelementptr inbounds %struct.Reg, %struct.Reg* %6137, i32 0, i32 0
  %R8.i451 = bitcast %union.anon* %6138 to i64*
  %6139 = load i32, i32* %ESI.i
  %6140 = zext i32 %6139 to i64
  %6141 = load i64, i64* %PC.i450
  %6142 = add i64 %6141, 3
  store i64 %6142, i64* %PC.i450
  %6143 = shl i64 %6140, 32
  %6144 = ashr exact i64 %6143, 32
  store i64 %6144, i64* %R8.i451, align 8
  store %struct.Memory* %loadMem_408440, %struct.Memory** %MEMORY
  %loadMem_408443 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6146 = getelementptr inbounds %struct.GPR, %struct.GPR* %6145, i32 0, i32 33
  %6147 = getelementptr inbounds %struct.Reg, %struct.Reg* %6146, i32 0, i32 0
  %PC.i446 = bitcast %union.anon* %6147 to i64*
  %6148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6149 = getelementptr inbounds %struct.GPR, %struct.GPR* %6148, i32 0, i32 7
  %6150 = getelementptr inbounds %struct.Reg, %struct.Reg* %6149, i32 0, i32 0
  %RDX.i447 = bitcast %union.anon* %6150 to i64*
  %6151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6152 = getelementptr inbounds %struct.GPR, %struct.GPR* %6151, i32 0, i32 9
  %6153 = getelementptr inbounds %struct.Reg, %struct.Reg* %6152, i32 0, i32 0
  %RSI.i448 = bitcast %union.anon* %6153 to i64*
  %6154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6155 = getelementptr inbounds %struct.GPR, %struct.GPR* %6154, i32 0, i32 17
  %6156 = getelementptr inbounds %struct.Reg, %struct.Reg* %6155, i32 0, i32 0
  %R8.i449 = bitcast %union.anon* %6156 to i64*
  %6157 = load i64, i64* %RDX.i447
  %6158 = load i64, i64* %R8.i449
  %6159 = mul i64 %6158, 4
  %6160 = add i64 %6159, %6157
  %6161 = load i64, i64* %PC.i446
  %6162 = add i64 %6161, 4
  store i64 %6162, i64* %PC.i446
  %6163 = inttoptr i64 %6160 to i32*
  %6164 = load i32, i32* %6163
  %6165 = zext i32 %6164 to i64
  store i64 %6165, i64* %RSI.i448, align 8
  store %struct.Memory* %loadMem_408443, %struct.Memory** %MEMORY
  %loadMem_408447 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6167 = getelementptr inbounds %struct.GPR, %struct.GPR* %6166, i32 0, i32 33
  %6168 = getelementptr inbounds %struct.Reg, %struct.Reg* %6167, i32 0, i32 0
  %PC.i443 = bitcast %union.anon* %6168 to i64*
  %6169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6170 = getelementptr inbounds %struct.GPR, %struct.GPR* %6169, i32 0, i32 7
  %6171 = getelementptr inbounds %struct.Reg, %struct.Reg* %6170, i32 0, i32 0
  %RDX.i444 = bitcast %union.anon* %6171 to i64*
  %6172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6173 = getelementptr inbounds %struct.GPR, %struct.GPR* %6172, i32 0, i32 15
  %6174 = getelementptr inbounds %struct.Reg, %struct.Reg* %6173, i32 0, i32 0
  %RBP.i445 = bitcast %union.anon* %6174 to i64*
  %6175 = load i64, i64* %RBP.i445
  %6176 = sub i64 %6175, 24
  %6177 = load i64, i64* %PC.i443
  %6178 = add i64 %6177, 4
  store i64 %6178, i64* %PC.i443
  %6179 = inttoptr i64 %6176 to i64*
  %6180 = load i64, i64* %6179
  store i64 %6180, i64* %RDX.i444, align 8
  store %struct.Memory* %loadMem_408447, %struct.Memory** %MEMORY
  %loadMem_40844b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6182 = getelementptr inbounds %struct.GPR, %struct.GPR* %6181, i32 0, i32 33
  %6183 = getelementptr inbounds %struct.Reg, %struct.Reg* %6182, i32 0, i32 0
  %PC.i441 = bitcast %union.anon* %6183 to i64*
  %6184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6185 = getelementptr inbounds %struct.GPR, %struct.GPR* %6184, i32 0, i32 7
  %6186 = getelementptr inbounds %struct.Reg, %struct.Reg* %6185, i32 0, i32 0
  %RDX.i442 = bitcast %union.anon* %6186 to i64*
  %6187 = load i64, i64* %RDX.i442
  %6188 = add i64 %6187, 312
  %6189 = load i64, i64* %PC.i441
  %6190 = add i64 %6189, 7
  store i64 %6190, i64* %PC.i441
  %6191 = inttoptr i64 %6188 to i64*
  %6192 = load i64, i64* %6191
  store i64 %6192, i64* %RDX.i442, align 8
  store %struct.Memory* %loadMem_40844b, %struct.Memory** %MEMORY
  %loadMem_408452 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6194 = getelementptr inbounds %struct.GPR, %struct.GPR* %6193, i32 0, i32 33
  %6195 = getelementptr inbounds %struct.Reg, %struct.Reg* %6194, i32 0, i32 0
  %PC.i439 = bitcast %union.anon* %6195 to i64*
  %6196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6197 = getelementptr inbounds %struct.GPR, %struct.GPR* %6196, i32 0, i32 7
  %6198 = getelementptr inbounds %struct.Reg, %struct.Reg* %6197, i32 0, i32 0
  %RDX.i440 = bitcast %union.anon* %6198 to i64*
  %6199 = load i64, i64* %RDX.i440
  %6200 = add i64 %6199, 40
  %6201 = load i64, i64* %PC.i439
  %6202 = add i64 %6201, 4
  store i64 %6202, i64* %PC.i439
  %6203 = inttoptr i64 %6200 to i64*
  %6204 = load i64, i64* %6203
  store i64 %6204, i64* %RDX.i440, align 8
  store %struct.Memory* %loadMem_408452, %struct.Memory** %MEMORY
  %loadMem_408456 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6206 = getelementptr inbounds %struct.GPR, %struct.GPR* %6205, i32 0, i32 33
  %6207 = getelementptr inbounds %struct.Reg, %struct.Reg* %6206, i32 0, i32 0
  %PC.i436 = bitcast %union.anon* %6207 to i64*
  %6208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6209 = getelementptr inbounds %struct.GPR, %struct.GPR* %6208, i32 0, i32 15
  %6210 = getelementptr inbounds %struct.Reg, %struct.Reg* %6209, i32 0, i32 0
  %RBP.i437 = bitcast %union.anon* %6210 to i64*
  %6211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6212 = getelementptr inbounds %struct.GPR, %struct.GPR* %6211, i32 0, i32 17
  %6213 = getelementptr inbounds %struct.Reg, %struct.Reg* %6212, i32 0, i32 0
  %R8.i438 = bitcast %union.anon* %6213 to i64*
  %6214 = load i64, i64* %RBP.i437
  %6215 = sub i64 %6214, 24
  %6216 = load i64, i64* %PC.i436
  %6217 = add i64 %6216, 4
  store i64 %6217, i64* %PC.i436
  %6218 = inttoptr i64 %6215 to i64*
  %6219 = load i64, i64* %6218
  store i64 %6219, i64* %R8.i438, align 8
  store %struct.Memory* %loadMem_408456, %struct.Memory** %MEMORY
  %loadMem_40845a = load %struct.Memory*, %struct.Memory** %MEMORY
  %6220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6221 = getelementptr inbounds %struct.GPR, %struct.GPR* %6220, i32 0, i32 33
  %6222 = getelementptr inbounds %struct.Reg, %struct.Reg* %6221, i32 0, i32 0
  %PC.i433 = bitcast %union.anon* %6222 to i64*
  %6223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6224 = getelementptr inbounds %struct.GPR, %struct.GPR* %6223, i32 0, i32 11
  %6225 = getelementptr inbounds %struct.Reg, %struct.Reg* %6224, i32 0, i32 0
  %RDI.i434 = bitcast %union.anon* %6225 to i64*
  %6226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6227 = getelementptr inbounds %struct.GPR, %struct.GPR* %6226, i32 0, i32 17
  %6228 = getelementptr inbounds %struct.Reg, %struct.Reg* %6227, i32 0, i32 0
  %R8.i435 = bitcast %union.anon* %6228 to i64*
  %6229 = load i64, i64* %R8.i435
  %6230 = add i64 %6229, 136
  %6231 = load i64, i64* %PC.i433
  %6232 = add i64 %6231, 7
  store i64 %6232, i64* %PC.i433
  %6233 = inttoptr i64 %6230 to i32*
  %6234 = load i32, i32* %6233
  %6235 = zext i32 %6234 to i64
  store i64 %6235, i64* %RDI.i434, align 8
  store %struct.Memory* %loadMem_40845a, %struct.Memory** %MEMORY
  %loadMem_408461 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6237 = getelementptr inbounds %struct.GPR, %struct.GPR* %6236, i32 0, i32 33
  %6238 = getelementptr inbounds %struct.Reg, %struct.Reg* %6237, i32 0, i32 0
  %PC.i431 = bitcast %union.anon* %6238 to i64*
  %6239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6240 = getelementptr inbounds %struct.GPR, %struct.GPR* %6239, i32 0, i32 11
  %6241 = getelementptr inbounds %struct.Reg, %struct.Reg* %6240, i32 0, i32 0
  %RDI.i432 = bitcast %union.anon* %6241 to i64*
  %6242 = load i64, i64* %RDI.i432
  %6243 = load i64, i64* %PC.i431
  %6244 = add i64 %6243, 3
  store i64 %6244, i64* %PC.i431
  %6245 = trunc i64 %6242 to i32
  %6246 = sub i32 %6245, 1
  %6247 = zext i32 %6246 to i64
  store i64 %6247, i64* %RDI.i432, align 8
  %6248 = icmp ult i32 %6245, 1
  %6249 = zext i1 %6248 to i8
  %6250 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6249, i8* %6250, align 1
  %6251 = and i32 %6246, 255
  %6252 = call i32 @llvm.ctpop.i32(i32 %6251)
  %6253 = trunc i32 %6252 to i8
  %6254 = and i8 %6253, 1
  %6255 = xor i8 %6254, 1
  %6256 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6255, i8* %6256, align 1
  %6257 = xor i64 1, %6242
  %6258 = trunc i64 %6257 to i32
  %6259 = xor i32 %6258, %6246
  %6260 = lshr i32 %6259, 4
  %6261 = trunc i32 %6260 to i8
  %6262 = and i8 %6261, 1
  %6263 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6262, i8* %6263, align 1
  %6264 = icmp eq i32 %6246, 0
  %6265 = zext i1 %6264 to i8
  %6266 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6265, i8* %6266, align 1
  %6267 = lshr i32 %6246, 31
  %6268 = trunc i32 %6267 to i8
  %6269 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6268, i8* %6269, align 1
  %6270 = lshr i32 %6245, 31
  %6271 = xor i32 %6267, %6270
  %6272 = add i32 %6271, %6270
  %6273 = icmp eq i32 %6272, 2
  %6274 = zext i1 %6273 to i8
  %6275 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6274, i8* %6275, align 1
  store %struct.Memory* %loadMem_408461, %struct.Memory** %MEMORY
  %loadMem_408464 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6277 = getelementptr inbounds %struct.GPR, %struct.GPR* %6276, i32 0, i32 33
  %6278 = getelementptr inbounds %struct.Reg, %struct.Reg* %6277, i32 0, i32 0
  %PC.i429 = bitcast %union.anon* %6278 to i64*
  %6279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6280 = getelementptr inbounds %struct.GPR, %struct.GPR* %6279, i32 0, i32 11
  %6281 = getelementptr inbounds %struct.Reg, %struct.Reg* %6280, i32 0, i32 0
  %EDI.i = bitcast %union.anon* %6281 to i32*
  %6282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6283 = getelementptr inbounds %struct.GPR, %struct.GPR* %6282, i32 0, i32 17
  %6284 = getelementptr inbounds %struct.Reg, %struct.Reg* %6283, i32 0, i32 0
  %R8.i430 = bitcast %union.anon* %6284 to i64*
  %6285 = load i32, i32* %EDI.i
  %6286 = zext i32 %6285 to i64
  %6287 = load i64, i64* %PC.i429
  %6288 = add i64 %6287, 3
  store i64 %6288, i64* %PC.i429
  %6289 = shl i64 %6286, 32
  %6290 = ashr exact i64 %6289, 32
  store i64 %6290, i64* %R8.i430, align 8
  store %struct.Memory* %loadMem_408464, %struct.Memory** %MEMORY
  %loadMem_408467 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6292 = getelementptr inbounds %struct.GPR, %struct.GPR* %6291, i32 0, i32 33
  %6293 = getelementptr inbounds %struct.Reg, %struct.Reg* %6292, i32 0, i32 0
  %PC.i425 = bitcast %union.anon* %6293 to i64*
  %6294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6295 = getelementptr inbounds %struct.GPR, %struct.GPR* %6294, i32 0, i32 7
  %6296 = getelementptr inbounds %struct.Reg, %struct.Reg* %6295, i32 0, i32 0
  %RDX.i426 = bitcast %union.anon* %6296 to i64*
  %6297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6298 = getelementptr inbounds %struct.GPR, %struct.GPR* %6297, i32 0, i32 9
  %6299 = getelementptr inbounds %struct.Reg, %struct.Reg* %6298, i32 0, i32 0
  %RSI.i427 = bitcast %union.anon* %6299 to i64*
  %6300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6301 = getelementptr inbounds %struct.GPR, %struct.GPR* %6300, i32 0, i32 17
  %6302 = getelementptr inbounds %struct.Reg, %struct.Reg* %6301, i32 0, i32 0
  %R8.i428 = bitcast %union.anon* %6302 to i64*
  %6303 = load i64, i64* %RSI.i427
  %6304 = load i64, i64* %RDX.i426
  %6305 = load i64, i64* %R8.i428
  %6306 = mul i64 %6305, 4
  %6307 = add i64 %6306, %6304
  %6308 = load i64, i64* %PC.i425
  %6309 = add i64 %6308, 4
  store i64 %6309, i64* %PC.i425
  %6310 = trunc i64 %6303 to i32
  %6311 = inttoptr i64 %6307 to i32*
  %6312 = load i32, i32* %6311
  %6313 = add i32 %6312, %6310
  %6314 = zext i32 %6313 to i64
  store i64 %6314, i64* %RSI.i427, align 8
  %6315 = icmp ult i32 %6313, %6310
  %6316 = icmp ult i32 %6313, %6312
  %6317 = or i1 %6315, %6316
  %6318 = zext i1 %6317 to i8
  %6319 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6318, i8* %6319, align 1
  %6320 = and i32 %6313, 255
  %6321 = call i32 @llvm.ctpop.i32(i32 %6320)
  %6322 = trunc i32 %6321 to i8
  %6323 = and i8 %6322, 1
  %6324 = xor i8 %6323, 1
  %6325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6324, i8* %6325, align 1
  %6326 = xor i32 %6312, %6310
  %6327 = xor i32 %6326, %6313
  %6328 = lshr i32 %6327, 4
  %6329 = trunc i32 %6328 to i8
  %6330 = and i8 %6329, 1
  %6331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6330, i8* %6331, align 1
  %6332 = icmp eq i32 %6313, 0
  %6333 = zext i1 %6332 to i8
  %6334 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6333, i8* %6334, align 1
  %6335 = lshr i32 %6313, 31
  %6336 = trunc i32 %6335 to i8
  %6337 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6336, i8* %6337, align 1
  %6338 = lshr i32 %6310, 31
  %6339 = lshr i32 %6312, 31
  %6340 = xor i32 %6335, %6338
  %6341 = xor i32 %6335, %6339
  %6342 = add i32 %6340, %6341
  %6343 = icmp eq i32 %6342, 2
  %6344 = zext i1 %6343 to i8
  %6345 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6344, i8* %6345, align 1
  store %struct.Memory* %loadMem_408467, %struct.Memory** %MEMORY
  %loadMem_40846b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6347 = getelementptr inbounds %struct.GPR, %struct.GPR* %6346, i32 0, i32 33
  %6348 = getelementptr inbounds %struct.Reg, %struct.Reg* %6347, i32 0, i32 0
  %PC.i422 = bitcast %union.anon* %6348 to i64*
  %6349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6350 = getelementptr inbounds %struct.GPR, %struct.GPR* %6349, i32 0, i32 5
  %6351 = getelementptr inbounds %struct.Reg, %struct.Reg* %6350, i32 0, i32 0
  %ECX.i423 = bitcast %union.anon* %6351 to i32*
  %6352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6353 = getelementptr inbounds %struct.GPR, %struct.GPR* %6352, i32 0, i32 11
  %6354 = getelementptr inbounds %struct.Reg, %struct.Reg* %6353, i32 0, i32 0
  %RDI.i424 = bitcast %union.anon* %6354 to i64*
  %6355 = load i32, i32* %ECX.i423
  %6356 = zext i32 %6355 to i64
  %6357 = load i64, i64* %PC.i422
  %6358 = add i64 %6357, 2
  store i64 %6358, i64* %PC.i422
  %6359 = and i64 %6356, 4294967295
  store i64 %6359, i64* %RDI.i424, align 8
  store %struct.Memory* %loadMem_40846b, %struct.Memory** %MEMORY
  %loadMem_40846d = load %struct.Memory*, %struct.Memory** %MEMORY
  %6360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6361 = getelementptr inbounds %struct.GPR, %struct.GPR* %6360, i32 0, i32 33
  %6362 = getelementptr inbounds %struct.Reg, %struct.Reg* %6361, i32 0, i32 0
  %PC.i419 = bitcast %union.anon* %6362 to i64*
  %6363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6364 = getelementptr inbounds %struct.GPR, %struct.GPR* %6363, i32 0, i32 1
  %6365 = getelementptr inbounds %struct.Reg, %struct.Reg* %6364, i32 0, i32 0
  %EAX.i420 = bitcast %union.anon* %6365 to i32*
  %6366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6367 = getelementptr inbounds %struct.GPR, %struct.GPR* %6366, i32 0, i32 15
  %6368 = getelementptr inbounds %struct.Reg, %struct.Reg* %6367, i32 0, i32 0
  %RBP.i421 = bitcast %union.anon* %6368 to i64*
  %6369 = load i64, i64* %RBP.i421
  %6370 = sub i64 %6369, 92
  %6371 = load i32, i32* %EAX.i420
  %6372 = zext i32 %6371 to i64
  %6373 = load i64, i64* %PC.i419
  %6374 = add i64 %6373, 3
  store i64 %6374, i64* %PC.i419
  %6375 = inttoptr i64 %6370 to i32*
  store i32 %6371, i32* %6375
  store %struct.Memory* %loadMem_40846d, %struct.Memory** %MEMORY
  %loadMem1_408470 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6377 = getelementptr inbounds %struct.GPR, %struct.GPR* %6376, i32 0, i32 33
  %6378 = getelementptr inbounds %struct.Reg, %struct.Reg* %6377, i32 0, i32 0
  %PC.i418 = bitcast %union.anon* %6378 to i64*
  %6379 = load i64, i64* %PC.i418
  %6380 = add i64 %6379, 130368
  %6381 = load i64, i64* %PC.i418
  %6382 = add i64 %6381, 5
  %6383 = load i64, i64* %PC.i418
  %6384 = add i64 %6383, 5
  store i64 %6384, i64* %PC.i418
  %6385 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6386 = load i64, i64* %6385, align 8
  %6387 = add i64 %6386, -8
  %6388 = inttoptr i64 %6387 to i64*
  store i64 %6382, i64* %6388
  store i64 %6387, i64* %6385, align 8
  %6389 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6380, i64* %6389, align 8
  store %struct.Memory* %loadMem1_408470, %struct.Memory** %MEMORY
  %loadMem2_408470 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_408470 = load i64, i64* %3
  %call2_408470 = call %struct.Memory* @sub_4281b0.ILogsum(%struct.State* %0, i64 %loadPC_408470, %struct.Memory* %loadMem2_408470)
  store %struct.Memory* %call2_408470, %struct.Memory** %MEMORY
  %loadMem_408475 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6391 = getelementptr inbounds %struct.GPR, %struct.GPR* %6390, i32 0, i32 33
  %6392 = getelementptr inbounds %struct.Reg, %struct.Reg* %6391, i32 0, i32 0
  %PC.i415 = bitcast %union.anon* %6392 to i64*
  %6393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6394 = getelementptr inbounds %struct.GPR, %struct.GPR* %6393, i32 0, i32 11
  %6395 = getelementptr inbounds %struct.Reg, %struct.Reg* %6394, i32 0, i32 0
  %RDI.i416 = bitcast %union.anon* %6395 to i64*
  %6396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6397 = getelementptr inbounds %struct.GPR, %struct.GPR* %6396, i32 0, i32 15
  %6398 = getelementptr inbounds %struct.Reg, %struct.Reg* %6397, i32 0, i32 0
  %RBP.i417 = bitcast %union.anon* %6398 to i64*
  %6399 = load i64, i64* %RBP.i417
  %6400 = sub i64 %6399, 92
  %6401 = load i64, i64* %PC.i415
  %6402 = add i64 %6401, 3
  store i64 %6402, i64* %PC.i415
  %6403 = inttoptr i64 %6400 to i32*
  %6404 = load i32, i32* %6403
  %6405 = zext i32 %6404 to i64
  store i64 %6405, i64* %RDI.i416, align 8
  store %struct.Memory* %loadMem_408475, %struct.Memory** %MEMORY
  %loadMem_408478 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6407 = getelementptr inbounds %struct.GPR, %struct.GPR* %6406, i32 0, i32 33
  %6408 = getelementptr inbounds %struct.Reg, %struct.Reg* %6407, i32 0, i32 0
  %PC.i412 = bitcast %union.anon* %6408 to i64*
  %6409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6410 = getelementptr inbounds %struct.GPR, %struct.GPR* %6409, i32 0, i32 1
  %6411 = getelementptr inbounds %struct.Reg, %struct.Reg* %6410, i32 0, i32 0
  %EAX.i413 = bitcast %union.anon* %6411 to i32*
  %6412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6413 = getelementptr inbounds %struct.GPR, %struct.GPR* %6412, i32 0, i32 9
  %6414 = getelementptr inbounds %struct.Reg, %struct.Reg* %6413, i32 0, i32 0
  %RSI.i414 = bitcast %union.anon* %6414 to i64*
  %6415 = load i32, i32* %EAX.i413
  %6416 = zext i32 %6415 to i64
  %6417 = load i64, i64* %PC.i412
  %6418 = add i64 %6417, 2
  store i64 %6418, i64* %PC.i412
  %6419 = and i64 %6416, 4294967295
  store i64 %6419, i64* %RSI.i414, align 8
  store %struct.Memory* %loadMem_408478, %struct.Memory** %MEMORY
  %loadMem1_40847a = load %struct.Memory*, %struct.Memory** %MEMORY
  %6420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6421 = getelementptr inbounds %struct.GPR, %struct.GPR* %6420, i32 0, i32 33
  %6422 = getelementptr inbounds %struct.Reg, %struct.Reg* %6421, i32 0, i32 0
  %PC.i411 = bitcast %union.anon* %6422 to i64*
  %6423 = load i64, i64* %PC.i411
  %6424 = add i64 %6423, 130358
  %6425 = load i64, i64* %PC.i411
  %6426 = add i64 %6425, 5
  %6427 = load i64, i64* %PC.i411
  %6428 = add i64 %6427, 5
  store i64 %6428, i64* %PC.i411
  %6429 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6430 = load i64, i64* %6429, align 8
  %6431 = add i64 %6430, -8
  %6432 = inttoptr i64 %6431 to i64*
  store i64 %6426, i64* %6432
  store i64 %6431, i64* %6429, align 8
  %6433 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6424, i64* %6433, align 8
  store %struct.Memory* %loadMem1_40847a, %struct.Memory** %MEMORY
  %loadMem2_40847a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40847a = load i64, i64* %3
  %call2_40847a = call %struct.Memory* @sub_4281b0.ILogsum(%struct.State* %0, i64 %loadPC_40847a, %struct.Memory* %loadMem2_40847a)
  store %struct.Memory* %call2_40847a, %struct.Memory** %MEMORY
  %loadMem_40847f = load %struct.Memory*, %struct.Memory** %MEMORY
  %6434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6435 = getelementptr inbounds %struct.GPR, %struct.GPR* %6434, i32 0, i32 33
  %6436 = getelementptr inbounds %struct.Reg, %struct.Reg* %6435, i32 0, i32 0
  %PC.i408 = bitcast %union.anon* %6436 to i64*
  %6437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6438 = getelementptr inbounds %struct.GPR, %struct.GPR* %6437, i32 0, i32 7
  %6439 = getelementptr inbounds %struct.Reg, %struct.Reg* %6438, i32 0, i32 0
  %RDX.i409 = bitcast %union.anon* %6439 to i64*
  %6440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6441 = getelementptr inbounds %struct.GPR, %struct.GPR* %6440, i32 0, i32 15
  %6442 = getelementptr inbounds %struct.Reg, %struct.Reg* %6441, i32 0, i32 0
  %RBP.i410 = bitcast %union.anon* %6442 to i64*
  %6443 = load i64, i64* %RBP.i410
  %6444 = sub i64 %6443, 56
  %6445 = load i64, i64* %PC.i408
  %6446 = add i64 %6445, 4
  store i64 %6446, i64* %PC.i408
  %6447 = inttoptr i64 %6444 to i64*
  %6448 = load i64, i64* %6447
  store i64 %6448, i64* %RDX.i409, align 8
  store %struct.Memory* %loadMem_40847f, %struct.Memory** %MEMORY
  %loadMem_408483 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6450 = getelementptr inbounds %struct.GPR, %struct.GPR* %6449, i32 0, i32 33
  %6451 = getelementptr inbounds %struct.Reg, %struct.Reg* %6450, i32 0, i32 0
  %PC.i405 = bitcast %union.anon* %6451 to i64*
  %6452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6453 = getelementptr inbounds %struct.GPR, %struct.GPR* %6452, i32 0, i32 15
  %6454 = getelementptr inbounds %struct.Reg, %struct.Reg* %6453, i32 0, i32 0
  %RBP.i406 = bitcast %union.anon* %6454 to i64*
  %6455 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6456 = getelementptr inbounds %struct.GPR, %struct.GPR* %6455, i32 0, i32 17
  %6457 = getelementptr inbounds %struct.Reg, %struct.Reg* %6456, i32 0, i32 0
  %R8.i407 = bitcast %union.anon* %6457 to i64*
  %6458 = load i64, i64* %RBP.i406
  %6459 = sub i64 %6458, 76
  %6460 = load i64, i64* %PC.i405
  %6461 = add i64 %6460, 4
  store i64 %6461, i64* %PC.i405
  %6462 = inttoptr i64 %6459 to i32*
  %6463 = load i32, i32* %6462
  %6464 = sext i32 %6463 to i64
  store i64 %6464, i64* %R8.i407, align 8
  store %struct.Memory* %loadMem_408483, %struct.Memory** %MEMORY
  %loadMem_408487 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6466 = getelementptr inbounds %struct.GPR, %struct.GPR* %6465, i32 0, i32 33
  %6467 = getelementptr inbounds %struct.Reg, %struct.Reg* %6466, i32 0, i32 0
  %PC.i402 = bitcast %union.anon* %6467 to i64*
  %6468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6469 = getelementptr inbounds %struct.GPR, %struct.GPR* %6468, i32 0, i32 7
  %6470 = getelementptr inbounds %struct.Reg, %struct.Reg* %6469, i32 0, i32 0
  %RDX.i403 = bitcast %union.anon* %6470 to i64*
  %6471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6472 = getelementptr inbounds %struct.GPR, %struct.GPR* %6471, i32 0, i32 17
  %6473 = getelementptr inbounds %struct.Reg, %struct.Reg* %6472, i32 0, i32 0
  %R8.i404 = bitcast %union.anon* %6473 to i64*
  %6474 = load i64, i64* %RDX.i403
  %6475 = load i64, i64* %R8.i404
  %6476 = mul i64 %6475, 8
  %6477 = add i64 %6476, %6474
  %6478 = load i64, i64* %PC.i402
  %6479 = add i64 %6478, 4
  store i64 %6479, i64* %PC.i402
  %6480 = inttoptr i64 %6477 to i64*
  %6481 = load i64, i64* %6480
  store i64 %6481, i64* %RDX.i403, align 8
  store %struct.Memory* %loadMem_408487, %struct.Memory** %MEMORY
  %loadMem_40848b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6482 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6483 = getelementptr inbounds %struct.GPR, %struct.GPR* %6482, i32 0, i32 33
  %6484 = getelementptr inbounds %struct.Reg, %struct.Reg* %6483, i32 0, i32 0
  %PC.i399 = bitcast %union.anon* %6484 to i64*
  %6485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6486 = getelementptr inbounds %struct.GPR, %struct.GPR* %6485, i32 0, i32 15
  %6487 = getelementptr inbounds %struct.Reg, %struct.Reg* %6486, i32 0, i32 0
  %RBP.i400 = bitcast %union.anon* %6487 to i64*
  %6488 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6489 = getelementptr inbounds %struct.GPR, %struct.GPR* %6488, i32 0, i32 17
  %6490 = getelementptr inbounds %struct.Reg, %struct.Reg* %6489, i32 0, i32 0
  %R8.i401 = bitcast %union.anon* %6490 to i64*
  %6491 = load i64, i64* %RBP.i400
  %6492 = sub i64 %6491, 24
  %6493 = load i64, i64* %PC.i399
  %6494 = add i64 %6493, 4
  store i64 %6494, i64* %PC.i399
  %6495 = inttoptr i64 %6492 to i64*
  %6496 = load i64, i64* %6495
  store i64 %6496, i64* %R8.i401, align 8
  store %struct.Memory* %loadMem_40848b, %struct.Memory** %MEMORY
  %loadMem_40848f = load %struct.Memory*, %struct.Memory** %MEMORY
  %6497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6498 = getelementptr inbounds %struct.GPR, %struct.GPR* %6497, i32 0, i32 33
  %6499 = getelementptr inbounds %struct.Reg, %struct.Reg* %6498, i32 0, i32 0
  %PC.i397 = bitcast %union.anon* %6499 to i64*
  %6500 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6501 = getelementptr inbounds %struct.GPR, %struct.GPR* %6500, i32 0, i32 17
  %6502 = getelementptr inbounds %struct.Reg, %struct.Reg* %6501, i32 0, i32 0
  %R8.i398 = bitcast %union.anon* %6502 to i64*
  %6503 = load i64, i64* %R8.i398
  %6504 = add i64 %6503, 136
  %6505 = load i64, i64* %PC.i397
  %6506 = add i64 %6505, 7
  store i64 %6506, i64* %PC.i397
  %6507 = inttoptr i64 %6504 to i32*
  %6508 = load i32, i32* %6507
  %6509 = sext i32 %6508 to i64
  store i64 %6509, i64* %R8.i398, align 8
  store %struct.Memory* %loadMem_40848f, %struct.Memory** %MEMORY
  %loadMem_408496 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6511 = getelementptr inbounds %struct.GPR, %struct.GPR* %6510, i32 0, i32 33
  %6512 = getelementptr inbounds %struct.Reg, %struct.Reg* %6511, i32 0, i32 0
  %PC.i393 = bitcast %union.anon* %6512 to i64*
  %6513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6514 = getelementptr inbounds %struct.GPR, %struct.GPR* %6513, i32 0, i32 1
  %6515 = getelementptr inbounds %struct.Reg, %struct.Reg* %6514, i32 0, i32 0
  %EAX.i394 = bitcast %union.anon* %6515 to i32*
  %6516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6517 = getelementptr inbounds %struct.GPR, %struct.GPR* %6516, i32 0, i32 7
  %6518 = getelementptr inbounds %struct.Reg, %struct.Reg* %6517, i32 0, i32 0
  %RDX.i395 = bitcast %union.anon* %6518 to i64*
  %6519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6520 = getelementptr inbounds %struct.GPR, %struct.GPR* %6519, i32 0, i32 17
  %6521 = getelementptr inbounds %struct.Reg, %struct.Reg* %6520, i32 0, i32 0
  %R8.i396 = bitcast %union.anon* %6521 to i64*
  %6522 = load i64, i64* %RDX.i395
  %6523 = load i64, i64* %R8.i396
  %6524 = mul i64 %6523, 4
  %6525 = add i64 %6524, %6522
  %6526 = load i32, i32* %EAX.i394
  %6527 = zext i32 %6526 to i64
  %6528 = load i64, i64* %PC.i393
  %6529 = add i64 %6528, 4
  store i64 %6529, i64* %PC.i393
  %6530 = inttoptr i64 %6525 to i32*
  store i32 %6526, i32* %6530
  store %struct.Memory* %loadMem_408496, %struct.Memory** %MEMORY
  %loadMem_40849a = load %struct.Memory*, %struct.Memory** %MEMORY
  %6531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6532 = getelementptr inbounds %struct.GPR, %struct.GPR* %6531, i32 0, i32 33
  %6533 = getelementptr inbounds %struct.Reg, %struct.Reg* %6532, i32 0, i32 0
  %PC.i390 = bitcast %union.anon* %6533 to i64*
  %6534 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6535 = getelementptr inbounds %struct.GPR, %struct.GPR* %6534, i32 0, i32 7
  %6536 = getelementptr inbounds %struct.Reg, %struct.Reg* %6535, i32 0, i32 0
  %RDX.i391 = bitcast %union.anon* %6536 to i64*
  %6537 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6538 = getelementptr inbounds %struct.GPR, %struct.GPR* %6537, i32 0, i32 15
  %6539 = getelementptr inbounds %struct.Reg, %struct.Reg* %6538, i32 0, i32 0
  %RBP.i392 = bitcast %union.anon* %6539 to i64*
  %6540 = load i64, i64* %RBP.i392
  %6541 = sub i64 %6540, 24
  %6542 = load i64, i64* %PC.i390
  %6543 = add i64 %6542, 4
  store i64 %6543, i64* %PC.i390
  %6544 = inttoptr i64 %6541 to i64*
  %6545 = load i64, i64* %6544
  store i64 %6545, i64* %RDX.i391, align 8
  store %struct.Memory* %loadMem_40849a, %struct.Memory** %MEMORY
  %loadMem_40849e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6547 = getelementptr inbounds %struct.GPR, %struct.GPR* %6546, i32 0, i32 33
  %6548 = getelementptr inbounds %struct.Reg, %struct.Reg* %6547, i32 0, i32 0
  %PC.i388 = bitcast %union.anon* %6548 to i64*
  %6549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6550 = getelementptr inbounds %struct.GPR, %struct.GPR* %6549, i32 0, i32 7
  %6551 = getelementptr inbounds %struct.Reg, %struct.Reg* %6550, i32 0, i32 0
  %RDX.i389 = bitcast %union.anon* %6551 to i64*
  %6552 = load i64, i64* %RDX.i389
  %6553 = add i64 %6552, 320
  %6554 = load i64, i64* %PC.i388
  %6555 = add i64 %6554, 7
  store i64 %6555, i64* %PC.i388
  %6556 = inttoptr i64 %6553 to i64*
  %6557 = load i64, i64* %6556
  store i64 %6557, i64* %RDX.i389, align 8
  store %struct.Memory* %loadMem_40849e, %struct.Memory** %MEMORY
  %loadMem_4084a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6559 = getelementptr inbounds %struct.GPR, %struct.GPR* %6558, i32 0, i32 33
  %6560 = getelementptr inbounds %struct.Reg, %struct.Reg* %6559, i32 0, i32 0
  %PC.i385 = bitcast %union.anon* %6560 to i64*
  %6561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6562 = getelementptr inbounds %struct.GPR, %struct.GPR* %6561, i32 0, i32 15
  %6563 = getelementptr inbounds %struct.Reg, %struct.Reg* %6562, i32 0, i32 0
  %RBP.i386 = bitcast %union.anon* %6563 to i64*
  %6564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6565 = getelementptr inbounds %struct.GPR, %struct.GPR* %6564, i32 0, i32 17
  %6566 = getelementptr inbounds %struct.Reg, %struct.Reg* %6565, i32 0, i32 0
  %R8.i387 = bitcast %union.anon* %6566 to i64*
  %6567 = load i64, i64* %RBP.i386
  %6568 = sub i64 %6567, 8
  %6569 = load i64, i64* %PC.i385
  %6570 = add i64 %6569, 4
  store i64 %6570, i64* %PC.i385
  %6571 = inttoptr i64 %6568 to i64*
  %6572 = load i64, i64* %6571
  store i64 %6572, i64* %R8.i387, align 8
  store %struct.Memory* %loadMem_4084a5, %struct.Memory** %MEMORY
  %loadMem_4084a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6573 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6574 = getelementptr inbounds %struct.GPR, %struct.GPR* %6573, i32 0, i32 33
  %6575 = getelementptr inbounds %struct.Reg, %struct.Reg* %6574, i32 0, i32 0
  %PC.i382 = bitcast %union.anon* %6575 to i64*
  %6576 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6577 = getelementptr inbounds %struct.GPR, %struct.GPR* %6576, i32 0, i32 15
  %6578 = getelementptr inbounds %struct.Reg, %struct.Reg* %6577, i32 0, i32 0
  %RBP.i383 = bitcast %union.anon* %6578 to i64*
  %6579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6580 = getelementptr inbounds %struct.GPR, %struct.GPR* %6579, i32 0, i32 19
  %6581 = getelementptr inbounds %struct.Reg, %struct.Reg* %6580, i32 0, i32 0
  %R9.i384 = bitcast %union.anon* %6581 to i64*
  %6582 = load i64, i64* %RBP.i383
  %6583 = sub i64 %6582, 76
  %6584 = load i64, i64* %PC.i382
  %6585 = add i64 %6584, 4
  store i64 %6585, i64* %PC.i382
  %6586 = inttoptr i64 %6583 to i32*
  %6587 = load i32, i32* %6586
  %6588 = sext i32 %6587 to i64
  store i64 %6588, i64* %R9.i384, align 8
  store %struct.Memory* %loadMem_4084a9, %struct.Memory** %MEMORY
  %loadMem_4084ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %6589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6590 = getelementptr inbounds %struct.GPR, %struct.GPR* %6589, i32 0, i32 33
  %6591 = getelementptr inbounds %struct.Reg, %struct.Reg* %6590, i32 0, i32 0
  %PC.i379 = bitcast %union.anon* %6591 to i64*
  %6592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6593 = getelementptr inbounds %struct.GPR, %struct.GPR* %6592, i32 0, i32 1
  %6594 = getelementptr inbounds %struct.Reg, %struct.Reg* %6593, i32 0, i32 0
  %RAX.i380 = bitcast %union.anon* %6594 to i64*
  %6595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6596 = getelementptr inbounds %struct.GPR, %struct.GPR* %6595, i32 0, i32 17
  %6597 = getelementptr inbounds %struct.Reg, %struct.Reg* %6596, i32 0, i32 0
  %R8.i381 = bitcast %union.anon* %6597 to i64*
  %6598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6599 = getelementptr inbounds %struct.GPR, %struct.GPR* %6598, i32 0, i32 19
  %6600 = getelementptr inbounds %struct.Reg, %struct.Reg* %6599, i32 0, i32 0
  %R9.i = bitcast %union.anon* %6600 to i64*
  %6601 = load i64, i64* %R8.i381
  %6602 = load i64, i64* %R9.i
  %6603 = add i64 %6602, %6601
  %6604 = load i64, i64* %PC.i379
  %6605 = add i64 %6604, 5
  store i64 %6605, i64* %PC.i379
  %6606 = inttoptr i64 %6603 to i8*
  %6607 = load i8, i8* %6606
  %6608 = sext i8 %6607 to i64
  %6609 = and i64 %6608, 4294967295
  store i64 %6609, i64* %RAX.i380, align 8
  store %struct.Memory* %loadMem_4084ad, %struct.Memory** %MEMORY
  %loadMem_4084b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6611 = getelementptr inbounds %struct.GPR, %struct.GPR* %6610, i32 0, i32 33
  %6612 = getelementptr inbounds %struct.Reg, %struct.Reg* %6611, i32 0, i32 0
  %PC.i376 = bitcast %union.anon* %6612 to i64*
  %6613 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6614 = getelementptr inbounds %struct.GPR, %struct.GPR* %6613, i32 0, i32 1
  %6615 = getelementptr inbounds %struct.Reg, %struct.Reg* %6614, i32 0, i32 0
  %EAX.i377 = bitcast %union.anon* %6615 to i32*
  %6616 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6617 = getelementptr inbounds %struct.GPR, %struct.GPR* %6616, i32 0, i32 17
  %6618 = getelementptr inbounds %struct.Reg, %struct.Reg* %6617, i32 0, i32 0
  %R8.i378 = bitcast %union.anon* %6618 to i64*
  %6619 = load i32, i32* %EAX.i377
  %6620 = zext i32 %6619 to i64
  %6621 = load i64, i64* %PC.i376
  %6622 = add i64 %6621, 3
  store i64 %6622, i64* %PC.i376
  %6623 = shl i64 %6620, 32
  %6624 = ashr exact i64 %6623, 32
  store i64 %6624, i64* %R8.i378, align 8
  store %struct.Memory* %loadMem_4084b2, %struct.Memory** %MEMORY
  %loadMem_4084b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6626 = getelementptr inbounds %struct.GPR, %struct.GPR* %6625, i32 0, i32 33
  %6627 = getelementptr inbounds %struct.Reg, %struct.Reg* %6626, i32 0, i32 0
  %PC.i373 = bitcast %union.anon* %6627 to i64*
  %6628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6629 = getelementptr inbounds %struct.GPR, %struct.GPR* %6628, i32 0, i32 7
  %6630 = getelementptr inbounds %struct.Reg, %struct.Reg* %6629, i32 0, i32 0
  %RDX.i374 = bitcast %union.anon* %6630 to i64*
  %6631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6632 = getelementptr inbounds %struct.GPR, %struct.GPR* %6631, i32 0, i32 17
  %6633 = getelementptr inbounds %struct.Reg, %struct.Reg* %6632, i32 0, i32 0
  %R8.i375 = bitcast %union.anon* %6633 to i64*
  %6634 = load i64, i64* %RDX.i374
  %6635 = load i64, i64* %R8.i375
  %6636 = mul i64 %6635, 8
  %6637 = add i64 %6636, %6634
  %6638 = load i64, i64* %PC.i373
  %6639 = add i64 %6638, 4
  store i64 %6639, i64* %PC.i373
  %6640 = inttoptr i64 %6637 to i64*
  %6641 = load i64, i64* %6640
  store i64 %6641, i64* %RDX.i374, align 8
  store %struct.Memory* %loadMem_4084b5, %struct.Memory** %MEMORY
  %loadMem_4084b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6642 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6643 = getelementptr inbounds %struct.GPR, %struct.GPR* %6642, i32 0, i32 33
  %6644 = getelementptr inbounds %struct.Reg, %struct.Reg* %6643, i32 0, i32 0
  %PC.i370 = bitcast %union.anon* %6644 to i64*
  %6645 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6646 = getelementptr inbounds %struct.GPR, %struct.GPR* %6645, i32 0, i32 15
  %6647 = getelementptr inbounds %struct.Reg, %struct.Reg* %6646, i32 0, i32 0
  %RBP.i371 = bitcast %union.anon* %6647 to i64*
  %6648 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6649 = getelementptr inbounds %struct.GPR, %struct.GPR* %6648, i32 0, i32 17
  %6650 = getelementptr inbounds %struct.Reg, %struct.Reg* %6649, i32 0, i32 0
  %R8.i372 = bitcast %union.anon* %6650 to i64*
  %6651 = load i64, i64* %RBP.i371
  %6652 = sub i64 %6651, 24
  %6653 = load i64, i64* %PC.i370
  %6654 = add i64 %6653, 4
  store i64 %6654, i64* %PC.i370
  %6655 = inttoptr i64 %6652 to i64*
  %6656 = load i64, i64* %6655
  store i64 %6656, i64* %R8.i372, align 8
  store %struct.Memory* %loadMem_4084b9, %struct.Memory** %MEMORY
  %loadMem_4084bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %6657 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6658 = getelementptr inbounds %struct.GPR, %struct.GPR* %6657, i32 0, i32 33
  %6659 = getelementptr inbounds %struct.Reg, %struct.Reg* %6658, i32 0, i32 0
  %PC.i368 = bitcast %union.anon* %6659 to i64*
  %6660 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6661 = getelementptr inbounds %struct.GPR, %struct.GPR* %6660, i32 0, i32 17
  %6662 = getelementptr inbounds %struct.Reg, %struct.Reg* %6661, i32 0, i32 0
  %R8.i369 = bitcast %union.anon* %6662 to i64*
  %6663 = load i64, i64* %R8.i369
  %6664 = add i64 %6663, 136
  %6665 = load i64, i64* %PC.i368
  %6666 = add i64 %6665, 7
  store i64 %6666, i64* %PC.i368
  %6667 = inttoptr i64 %6664 to i32*
  %6668 = load i32, i32* %6667
  %6669 = sext i32 %6668 to i64
  store i64 %6669, i64* %R8.i369, align 8
  store %struct.Memory* %loadMem_4084bd, %struct.Memory** %MEMORY
  %loadMem_4084c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6671 = getelementptr inbounds %struct.GPR, %struct.GPR* %6670, i32 0, i32 33
  %6672 = getelementptr inbounds %struct.Reg, %struct.Reg* %6671, i32 0, i32 0
  %PC.i364 = bitcast %union.anon* %6672 to i64*
  %6673 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6674 = getelementptr inbounds %struct.GPR, %struct.GPR* %6673, i32 0, i32 1
  %6675 = getelementptr inbounds %struct.Reg, %struct.Reg* %6674, i32 0, i32 0
  %RAX.i365 = bitcast %union.anon* %6675 to i64*
  %6676 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6677 = getelementptr inbounds %struct.GPR, %struct.GPR* %6676, i32 0, i32 7
  %6678 = getelementptr inbounds %struct.Reg, %struct.Reg* %6677, i32 0, i32 0
  %RDX.i366 = bitcast %union.anon* %6678 to i64*
  %6679 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6680 = getelementptr inbounds %struct.GPR, %struct.GPR* %6679, i32 0, i32 17
  %6681 = getelementptr inbounds %struct.Reg, %struct.Reg* %6680, i32 0, i32 0
  %R8.i367 = bitcast %union.anon* %6681 to i64*
  %6682 = load i64, i64* %RDX.i366
  %6683 = load i64, i64* %R8.i367
  %6684 = mul i64 %6683, 4
  %6685 = add i64 %6684, %6682
  %6686 = load i64, i64* %PC.i364
  %6687 = add i64 %6686, 4
  store i64 %6687, i64* %PC.i364
  %6688 = inttoptr i64 %6685 to i32*
  %6689 = load i32, i32* %6688
  %6690 = zext i32 %6689 to i64
  store i64 %6690, i64* %RAX.i365, align 8
  store %struct.Memory* %loadMem_4084c4, %struct.Memory** %MEMORY
  %loadMem_4084c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6692 = getelementptr inbounds %struct.GPR, %struct.GPR* %6691, i32 0, i32 33
  %6693 = getelementptr inbounds %struct.Reg, %struct.Reg* %6692, i32 0, i32 0
  %PC.i361 = bitcast %union.anon* %6693 to i64*
  %6694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6695 = getelementptr inbounds %struct.GPR, %struct.GPR* %6694, i32 0, i32 7
  %6696 = getelementptr inbounds %struct.Reg, %struct.Reg* %6695, i32 0, i32 0
  %RDX.i362 = bitcast %union.anon* %6696 to i64*
  %6697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6698 = getelementptr inbounds %struct.GPR, %struct.GPR* %6697, i32 0, i32 15
  %6699 = getelementptr inbounds %struct.Reg, %struct.Reg* %6698, i32 0, i32 0
  %RBP.i363 = bitcast %union.anon* %6699 to i64*
  %6700 = load i64, i64* %RBP.i363
  %6701 = sub i64 %6700, 56
  %6702 = load i64, i64* %PC.i361
  %6703 = add i64 %6702, 4
  store i64 %6703, i64* %PC.i361
  %6704 = inttoptr i64 %6701 to i64*
  %6705 = load i64, i64* %6704
  store i64 %6705, i64* %RDX.i362, align 8
  store %struct.Memory* %loadMem_4084c8, %struct.Memory** %MEMORY
  %loadMem_4084cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %6706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6707 = getelementptr inbounds %struct.GPR, %struct.GPR* %6706, i32 0, i32 33
  %6708 = getelementptr inbounds %struct.Reg, %struct.Reg* %6707, i32 0, i32 0
  %PC.i358 = bitcast %union.anon* %6708 to i64*
  %6709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6710 = getelementptr inbounds %struct.GPR, %struct.GPR* %6709, i32 0, i32 15
  %6711 = getelementptr inbounds %struct.Reg, %struct.Reg* %6710, i32 0, i32 0
  %RBP.i359 = bitcast %union.anon* %6711 to i64*
  %6712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6713 = getelementptr inbounds %struct.GPR, %struct.GPR* %6712, i32 0, i32 17
  %6714 = getelementptr inbounds %struct.Reg, %struct.Reg* %6713, i32 0, i32 0
  %R8.i360 = bitcast %union.anon* %6714 to i64*
  %6715 = load i64, i64* %RBP.i359
  %6716 = sub i64 %6715, 76
  %6717 = load i64, i64* %PC.i358
  %6718 = add i64 %6717, 4
  store i64 %6718, i64* %PC.i358
  %6719 = inttoptr i64 %6716 to i32*
  %6720 = load i32, i32* %6719
  %6721 = sext i32 %6720 to i64
  store i64 %6721, i64* %R8.i360, align 8
  store %struct.Memory* %loadMem_4084cc, %struct.Memory** %MEMORY
  %loadMem_4084d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6722 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6723 = getelementptr inbounds %struct.GPR, %struct.GPR* %6722, i32 0, i32 33
  %6724 = getelementptr inbounds %struct.Reg, %struct.Reg* %6723, i32 0, i32 0
  %PC.i355 = bitcast %union.anon* %6724 to i64*
  %6725 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6726 = getelementptr inbounds %struct.GPR, %struct.GPR* %6725, i32 0, i32 7
  %6727 = getelementptr inbounds %struct.Reg, %struct.Reg* %6726, i32 0, i32 0
  %RDX.i356 = bitcast %union.anon* %6727 to i64*
  %6728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6729 = getelementptr inbounds %struct.GPR, %struct.GPR* %6728, i32 0, i32 17
  %6730 = getelementptr inbounds %struct.Reg, %struct.Reg* %6729, i32 0, i32 0
  %R8.i357 = bitcast %union.anon* %6730 to i64*
  %6731 = load i64, i64* %RDX.i356
  %6732 = load i64, i64* %R8.i357
  %6733 = mul i64 %6732, 8
  %6734 = add i64 %6733, %6731
  %6735 = load i64, i64* %PC.i355
  %6736 = add i64 %6735, 4
  store i64 %6736, i64* %PC.i355
  %6737 = inttoptr i64 %6734 to i64*
  %6738 = load i64, i64* %6737
  store i64 %6738, i64* %RDX.i356, align 8
  store %struct.Memory* %loadMem_4084d0, %struct.Memory** %MEMORY
  %loadMem_4084d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6740 = getelementptr inbounds %struct.GPR, %struct.GPR* %6739, i32 0, i32 33
  %6741 = getelementptr inbounds %struct.Reg, %struct.Reg* %6740, i32 0, i32 0
  %PC.i352 = bitcast %union.anon* %6741 to i64*
  %6742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6743 = getelementptr inbounds %struct.GPR, %struct.GPR* %6742, i32 0, i32 15
  %6744 = getelementptr inbounds %struct.Reg, %struct.Reg* %6743, i32 0, i32 0
  %RBP.i353 = bitcast %union.anon* %6744 to i64*
  %6745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6746 = getelementptr inbounds %struct.GPR, %struct.GPR* %6745, i32 0, i32 17
  %6747 = getelementptr inbounds %struct.Reg, %struct.Reg* %6746, i32 0, i32 0
  %R8.i354 = bitcast %union.anon* %6747 to i64*
  %6748 = load i64, i64* %RBP.i353
  %6749 = sub i64 %6748, 24
  %6750 = load i64, i64* %PC.i352
  %6751 = add i64 %6750, 4
  store i64 %6751, i64* %PC.i352
  %6752 = inttoptr i64 %6749 to i64*
  %6753 = load i64, i64* %6752
  store i64 %6753, i64* %R8.i354, align 8
  store %struct.Memory* %loadMem_4084d4, %struct.Memory** %MEMORY
  %loadMem_4084d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6755 = getelementptr inbounds %struct.GPR, %struct.GPR* %6754, i32 0, i32 33
  %6756 = getelementptr inbounds %struct.Reg, %struct.Reg* %6755, i32 0, i32 0
  %PC.i350 = bitcast %union.anon* %6756 to i64*
  %6757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6758 = getelementptr inbounds %struct.GPR, %struct.GPR* %6757, i32 0, i32 17
  %6759 = getelementptr inbounds %struct.Reg, %struct.Reg* %6758, i32 0, i32 0
  %R8.i351 = bitcast %union.anon* %6759 to i64*
  %6760 = load i64, i64* %R8.i351
  %6761 = add i64 %6760, 136
  %6762 = load i64, i64* %PC.i350
  %6763 = add i64 %6762, 7
  store i64 %6763, i64* %PC.i350
  %6764 = inttoptr i64 %6761 to i32*
  %6765 = load i32, i32* %6764
  %6766 = sext i32 %6765 to i64
  store i64 %6766, i64* %R8.i351, align 8
  store %struct.Memory* %loadMem_4084d8, %struct.Memory** %MEMORY
  %loadMem_4084df = load %struct.Memory*, %struct.Memory** %MEMORY
  %6767 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6768 = getelementptr inbounds %struct.GPR, %struct.GPR* %6767, i32 0, i32 33
  %6769 = getelementptr inbounds %struct.Reg, %struct.Reg* %6768, i32 0, i32 0
  %PC.i346 = bitcast %union.anon* %6769 to i64*
  %6770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6771 = getelementptr inbounds %struct.GPR, %struct.GPR* %6770, i32 0, i32 1
  %6772 = getelementptr inbounds %struct.Reg, %struct.Reg* %6771, i32 0, i32 0
  %RAX.i347 = bitcast %union.anon* %6772 to i64*
  %6773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6774 = getelementptr inbounds %struct.GPR, %struct.GPR* %6773, i32 0, i32 7
  %6775 = getelementptr inbounds %struct.Reg, %struct.Reg* %6774, i32 0, i32 0
  %RDX.i348 = bitcast %union.anon* %6775 to i64*
  %6776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6777 = getelementptr inbounds %struct.GPR, %struct.GPR* %6776, i32 0, i32 17
  %6778 = getelementptr inbounds %struct.Reg, %struct.Reg* %6777, i32 0, i32 0
  %R8.i349 = bitcast %union.anon* %6778 to i64*
  %6779 = load i64, i64* %RAX.i347
  %6780 = load i64, i64* %RDX.i348
  %6781 = load i64, i64* %R8.i349
  %6782 = mul i64 %6781, 4
  %6783 = add i64 %6782, %6780
  %6784 = load i64, i64* %PC.i346
  %6785 = add i64 %6784, 4
  store i64 %6785, i64* %PC.i346
  %6786 = trunc i64 %6779 to i32
  %6787 = inttoptr i64 %6783 to i32*
  %6788 = load i32, i32* %6787
  %6789 = add i32 %6788, %6786
  %6790 = zext i32 %6789 to i64
  store i64 %6790, i64* %RAX.i347, align 8
  %6791 = icmp ult i32 %6789, %6786
  %6792 = icmp ult i32 %6789, %6788
  %6793 = or i1 %6791, %6792
  %6794 = zext i1 %6793 to i8
  %6795 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6794, i8* %6795, align 1
  %6796 = and i32 %6789, 255
  %6797 = call i32 @llvm.ctpop.i32(i32 %6796)
  %6798 = trunc i32 %6797 to i8
  %6799 = and i8 %6798, 1
  %6800 = xor i8 %6799, 1
  %6801 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6800, i8* %6801, align 1
  %6802 = xor i32 %6788, %6786
  %6803 = xor i32 %6802, %6789
  %6804 = lshr i32 %6803, 4
  %6805 = trunc i32 %6804 to i8
  %6806 = and i8 %6805, 1
  %6807 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6806, i8* %6807, align 1
  %6808 = icmp eq i32 %6789, 0
  %6809 = zext i1 %6808 to i8
  %6810 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6809, i8* %6810, align 1
  %6811 = lshr i32 %6789, 31
  %6812 = trunc i32 %6811 to i8
  %6813 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6812, i8* %6813, align 1
  %6814 = lshr i32 %6786, 31
  %6815 = lshr i32 %6788, 31
  %6816 = xor i32 %6811, %6814
  %6817 = xor i32 %6811, %6815
  %6818 = add i32 %6816, %6817
  %6819 = icmp eq i32 %6818, 2
  %6820 = zext i1 %6819 to i8
  %6821 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6820, i8* %6821, align 1
  store %struct.Memory* %loadMem_4084df, %struct.Memory** %MEMORY
  %loadMem_4084e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6823 = getelementptr inbounds %struct.GPR, %struct.GPR* %6822, i32 0, i32 33
  %6824 = getelementptr inbounds %struct.Reg, %struct.Reg* %6823, i32 0, i32 0
  %PC.i342 = bitcast %union.anon* %6824 to i64*
  %6825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6826 = getelementptr inbounds %struct.GPR, %struct.GPR* %6825, i32 0, i32 1
  %6827 = getelementptr inbounds %struct.Reg, %struct.Reg* %6826, i32 0, i32 0
  %EAX.i343 = bitcast %union.anon* %6827 to i32*
  %6828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6829 = getelementptr inbounds %struct.GPR, %struct.GPR* %6828, i32 0, i32 7
  %6830 = getelementptr inbounds %struct.Reg, %struct.Reg* %6829, i32 0, i32 0
  %RDX.i344 = bitcast %union.anon* %6830 to i64*
  %6831 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6832 = getelementptr inbounds %struct.GPR, %struct.GPR* %6831, i32 0, i32 17
  %6833 = getelementptr inbounds %struct.Reg, %struct.Reg* %6832, i32 0, i32 0
  %R8.i345 = bitcast %union.anon* %6833 to i64*
  %6834 = load i64, i64* %RDX.i344
  %6835 = load i64, i64* %R8.i345
  %6836 = mul i64 %6835, 4
  %6837 = add i64 %6836, %6834
  %6838 = load i32, i32* %EAX.i343
  %6839 = zext i32 %6838 to i64
  %6840 = load i64, i64* %PC.i342
  %6841 = add i64 %6840, 4
  store i64 %6841, i64* %PC.i342
  %6842 = inttoptr i64 %6837 to i32*
  store i32 %6838, i32* %6842
  store %struct.Memory* %loadMem_4084e3, %struct.Memory** %MEMORY
  %loadMem_4084e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6844 = getelementptr inbounds %struct.GPR, %struct.GPR* %6843, i32 0, i32 33
  %6845 = getelementptr inbounds %struct.Reg, %struct.Reg* %6844, i32 0, i32 0
  %PC.i339 = bitcast %union.anon* %6845 to i64*
  %6846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6847 = getelementptr inbounds %struct.GPR, %struct.GPR* %6846, i32 0, i32 7
  %6848 = getelementptr inbounds %struct.Reg, %struct.Reg* %6847, i32 0, i32 0
  %RDX.i340 = bitcast %union.anon* %6848 to i64*
  %6849 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6850 = getelementptr inbounds %struct.GPR, %struct.GPR* %6849, i32 0, i32 15
  %6851 = getelementptr inbounds %struct.Reg, %struct.Reg* %6850, i32 0, i32 0
  %RBP.i341 = bitcast %union.anon* %6851 to i64*
  %6852 = load i64, i64* %RBP.i341
  %6853 = sub i64 %6852, 48
  %6854 = load i64, i64* %PC.i339
  %6855 = add i64 %6854, 4
  store i64 %6855, i64* %PC.i339
  %6856 = inttoptr i64 %6853 to i64*
  %6857 = load i64, i64* %6856
  store i64 %6857, i64* %RDX.i340, align 8
  store %struct.Memory* %loadMem_4084e7, %struct.Memory** %MEMORY
  %loadMem_4084eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %6858 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6859 = getelementptr inbounds %struct.GPR, %struct.GPR* %6858, i32 0, i32 33
  %6860 = getelementptr inbounds %struct.Reg, %struct.Reg* %6859, i32 0, i32 0
  %PC.i336 = bitcast %union.anon* %6860 to i64*
  %6861 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6862 = getelementptr inbounds %struct.GPR, %struct.GPR* %6861, i32 0, i32 1
  %6863 = getelementptr inbounds %struct.Reg, %struct.Reg* %6862, i32 0, i32 0
  %RAX.i337 = bitcast %union.anon* %6863 to i64*
  %6864 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6865 = getelementptr inbounds %struct.GPR, %struct.GPR* %6864, i32 0, i32 15
  %6866 = getelementptr inbounds %struct.Reg, %struct.Reg* %6865, i32 0, i32 0
  %RBP.i338 = bitcast %union.anon* %6866 to i64*
  %6867 = load i64, i64* %RBP.i338
  %6868 = sub i64 %6867, 76
  %6869 = load i64, i64* %PC.i336
  %6870 = add i64 %6869, 3
  store i64 %6870, i64* %PC.i336
  %6871 = inttoptr i64 %6868 to i32*
  %6872 = load i32, i32* %6871
  %6873 = zext i32 %6872 to i64
  store i64 %6873, i64* %RAX.i337, align 8
  store %struct.Memory* %loadMem_4084eb, %struct.Memory** %MEMORY
  %loadMem_4084ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %6874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6875 = getelementptr inbounds %struct.GPR, %struct.GPR* %6874, i32 0, i32 33
  %6876 = getelementptr inbounds %struct.Reg, %struct.Reg* %6875, i32 0, i32 0
  %PC.i334 = bitcast %union.anon* %6876 to i64*
  %6877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6878 = getelementptr inbounds %struct.GPR, %struct.GPR* %6877, i32 0, i32 1
  %6879 = getelementptr inbounds %struct.Reg, %struct.Reg* %6878, i32 0, i32 0
  %RAX.i335 = bitcast %union.anon* %6879 to i64*
  %6880 = load i64, i64* %RAX.i335
  %6881 = load i64, i64* %PC.i334
  %6882 = add i64 %6881, 3
  store i64 %6882, i64* %PC.i334
  %6883 = trunc i64 %6880 to i32
  %6884 = sub i32 %6883, 1
  %6885 = zext i32 %6884 to i64
  store i64 %6885, i64* %RAX.i335, align 8
  %6886 = icmp ult i32 %6883, 1
  %6887 = zext i1 %6886 to i8
  %6888 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6887, i8* %6888, align 1
  %6889 = and i32 %6884, 255
  %6890 = call i32 @llvm.ctpop.i32(i32 %6889)
  %6891 = trunc i32 %6890 to i8
  %6892 = and i8 %6891, 1
  %6893 = xor i8 %6892, 1
  %6894 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6893, i8* %6894, align 1
  %6895 = xor i64 1, %6880
  %6896 = trunc i64 %6895 to i32
  %6897 = xor i32 %6896, %6884
  %6898 = lshr i32 %6897, 4
  %6899 = trunc i32 %6898 to i8
  %6900 = and i8 %6899, 1
  %6901 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6900, i8* %6901, align 1
  %6902 = icmp eq i32 %6884, 0
  %6903 = zext i1 %6902 to i8
  %6904 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6903, i8* %6904, align 1
  %6905 = lshr i32 %6884, 31
  %6906 = trunc i32 %6905 to i8
  %6907 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6906, i8* %6907, align 1
  %6908 = lshr i32 %6883, 31
  %6909 = xor i32 %6905, %6908
  %6910 = add i32 %6909, %6908
  %6911 = icmp eq i32 %6910, 2
  %6912 = zext i1 %6911 to i8
  %6913 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6912, i8* %6913, align 1
  store %struct.Memory* %loadMem_4084ee, %struct.Memory** %MEMORY
  %loadMem_4084f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6914 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6915 = getelementptr inbounds %struct.GPR, %struct.GPR* %6914, i32 0, i32 33
  %6916 = getelementptr inbounds %struct.Reg, %struct.Reg* %6915, i32 0, i32 0
  %PC.i331 = bitcast %union.anon* %6916 to i64*
  %6917 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6918 = getelementptr inbounds %struct.GPR, %struct.GPR* %6917, i32 0, i32 1
  %6919 = getelementptr inbounds %struct.Reg, %struct.Reg* %6918, i32 0, i32 0
  %EAX.i332 = bitcast %union.anon* %6919 to i32*
  %6920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6921 = getelementptr inbounds %struct.GPR, %struct.GPR* %6920, i32 0, i32 17
  %6922 = getelementptr inbounds %struct.Reg, %struct.Reg* %6921, i32 0, i32 0
  %R8.i333 = bitcast %union.anon* %6922 to i64*
  %6923 = load i32, i32* %EAX.i332
  %6924 = zext i32 %6923 to i64
  %6925 = load i64, i64* %PC.i331
  %6926 = add i64 %6925, 3
  store i64 %6926, i64* %PC.i331
  %6927 = shl i64 %6924, 32
  %6928 = ashr exact i64 %6927, 32
  store i64 %6928, i64* %R8.i333, align 8
  store %struct.Memory* %loadMem_4084f1, %struct.Memory** %MEMORY
  %loadMem_4084f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6930 = getelementptr inbounds %struct.GPR, %struct.GPR* %6929, i32 0, i32 33
  %6931 = getelementptr inbounds %struct.Reg, %struct.Reg* %6930, i32 0, i32 0
  %PC.i328 = bitcast %union.anon* %6931 to i64*
  %6932 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6933 = getelementptr inbounds %struct.GPR, %struct.GPR* %6932, i32 0, i32 7
  %6934 = getelementptr inbounds %struct.Reg, %struct.Reg* %6933, i32 0, i32 0
  %RDX.i329 = bitcast %union.anon* %6934 to i64*
  %6935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6936 = getelementptr inbounds %struct.GPR, %struct.GPR* %6935, i32 0, i32 17
  %6937 = getelementptr inbounds %struct.Reg, %struct.Reg* %6936, i32 0, i32 0
  %R8.i330 = bitcast %union.anon* %6937 to i64*
  %6938 = load i64, i64* %RDX.i329
  %6939 = load i64, i64* %R8.i330
  %6940 = mul i64 %6939, 8
  %6941 = add i64 %6940, %6938
  %6942 = load i64, i64* %PC.i328
  %6943 = add i64 %6942, 4
  store i64 %6943, i64* %PC.i328
  %6944 = inttoptr i64 %6941 to i64*
  %6945 = load i64, i64* %6944
  store i64 %6945, i64* %RDX.i329, align 8
  store %struct.Memory* %loadMem_4084f4, %struct.Memory** %MEMORY
  %loadMem_4084f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6947 = getelementptr inbounds %struct.GPR, %struct.GPR* %6946, i32 0, i32 33
  %6948 = getelementptr inbounds %struct.Reg, %struct.Reg* %6947, i32 0, i32 0
  %PC.i325 = bitcast %union.anon* %6948 to i64*
  %6949 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6950 = getelementptr inbounds %struct.GPR, %struct.GPR* %6949, i32 0, i32 1
  %6951 = getelementptr inbounds %struct.Reg, %struct.Reg* %6950, i32 0, i32 0
  %RAX.i326 = bitcast %union.anon* %6951 to i64*
  %6952 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6953 = getelementptr inbounds %struct.GPR, %struct.GPR* %6952, i32 0, i32 7
  %6954 = getelementptr inbounds %struct.Reg, %struct.Reg* %6953, i32 0, i32 0
  %RDX.i327 = bitcast %union.anon* %6954 to i64*
  %6955 = load i64, i64* %RDX.i327
  %6956 = add i64 %6955, 16
  %6957 = load i64, i64* %PC.i325
  %6958 = add i64 %6957, 3
  store i64 %6958, i64* %PC.i325
  %6959 = inttoptr i64 %6956 to i32*
  %6960 = load i32, i32* %6959
  %6961 = zext i32 %6960 to i64
  store i64 %6961, i64* %RAX.i326, align 8
  store %struct.Memory* %loadMem_4084f8, %struct.Memory** %MEMORY
  %loadMem_4084fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %6962 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6963 = getelementptr inbounds %struct.GPR, %struct.GPR* %6962, i32 0, i32 33
  %6964 = getelementptr inbounds %struct.Reg, %struct.Reg* %6963, i32 0, i32 0
  %PC.i322 = bitcast %union.anon* %6964 to i64*
  %6965 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6966 = getelementptr inbounds %struct.GPR, %struct.GPR* %6965, i32 0, i32 7
  %6967 = getelementptr inbounds %struct.Reg, %struct.Reg* %6966, i32 0, i32 0
  %RDX.i323 = bitcast %union.anon* %6967 to i64*
  %6968 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6969 = getelementptr inbounds %struct.GPR, %struct.GPR* %6968, i32 0, i32 15
  %6970 = getelementptr inbounds %struct.Reg, %struct.Reg* %6969, i32 0, i32 0
  %RBP.i324 = bitcast %union.anon* %6970 to i64*
  %6971 = load i64, i64* %RBP.i324
  %6972 = sub i64 %6971, 24
  %6973 = load i64, i64* %PC.i322
  %6974 = add i64 %6973, 4
  store i64 %6974, i64* %PC.i322
  %6975 = inttoptr i64 %6972 to i64*
  %6976 = load i64, i64* %6975
  store i64 %6976, i64* %RDX.i323, align 8
  store %struct.Memory* %loadMem_4084fb, %struct.Memory** %MEMORY
  %loadMem_4084ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %6977 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6978 = getelementptr inbounds %struct.GPR, %struct.GPR* %6977, i32 0, i32 33
  %6979 = getelementptr inbounds %struct.Reg, %struct.Reg* %6978, i32 0, i32 0
  %PC.i319 = bitcast %union.anon* %6979 to i64*
  %6980 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6981 = getelementptr inbounds %struct.GPR, %struct.GPR* %6980, i32 0, i32 1
  %6982 = getelementptr inbounds %struct.Reg, %struct.Reg* %6981, i32 0, i32 0
  %RAX.i320 = bitcast %union.anon* %6982 to i64*
  %6983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6984 = getelementptr inbounds %struct.GPR, %struct.GPR* %6983, i32 0, i32 7
  %6985 = getelementptr inbounds %struct.Reg, %struct.Reg* %6984, i32 0, i32 0
  %RDX.i321 = bitcast %union.anon* %6985 to i64*
  %6986 = load i64, i64* %RAX.i320
  %6987 = load i64, i64* %RDX.i321
  %6988 = add i64 %6987, 340
  %6989 = load i64, i64* %PC.i319
  %6990 = add i64 %6989, 6
  store i64 %6990, i64* %PC.i319
  %6991 = trunc i64 %6986 to i32
  %6992 = inttoptr i64 %6988 to i32*
  %6993 = load i32, i32* %6992
  %6994 = add i32 %6993, %6991
  %6995 = zext i32 %6994 to i64
  store i64 %6995, i64* %RAX.i320, align 8
  %6996 = icmp ult i32 %6994, %6991
  %6997 = icmp ult i32 %6994, %6993
  %6998 = or i1 %6996, %6997
  %6999 = zext i1 %6998 to i8
  %7000 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6999, i8* %7000, align 1
  %7001 = and i32 %6994, 255
  %7002 = call i32 @llvm.ctpop.i32(i32 %7001)
  %7003 = trunc i32 %7002 to i8
  %7004 = and i8 %7003, 1
  %7005 = xor i8 %7004, 1
  %7006 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7005, i8* %7006, align 1
  %7007 = xor i32 %6993, %6991
  %7008 = xor i32 %7007, %6994
  %7009 = lshr i32 %7008, 4
  %7010 = trunc i32 %7009 to i8
  %7011 = and i8 %7010, 1
  %7012 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7011, i8* %7012, align 1
  %7013 = icmp eq i32 %6994, 0
  %7014 = zext i1 %7013 to i8
  %7015 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7014, i8* %7015, align 1
  %7016 = lshr i32 %6994, 31
  %7017 = trunc i32 %7016 to i8
  %7018 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7017, i8* %7018, align 1
  %7019 = lshr i32 %6991, 31
  %7020 = lshr i32 %6993, 31
  %7021 = xor i32 %7016, %7019
  %7022 = xor i32 %7016, %7020
  %7023 = add i32 %7021, %7022
  %7024 = icmp eq i32 %7023, 2
  %7025 = zext i1 %7024 to i8
  %7026 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7025, i8* %7026, align 1
  store %struct.Memory* %loadMem_4084ff, %struct.Memory** %MEMORY
  %loadMem_408505 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7027 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7028 = getelementptr inbounds %struct.GPR, %struct.GPR* %7027, i32 0, i32 33
  %7029 = getelementptr inbounds %struct.Reg, %struct.Reg* %7028, i32 0, i32 0
  %PC.i316 = bitcast %union.anon* %7029 to i64*
  %7030 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7031 = getelementptr inbounds %struct.GPR, %struct.GPR* %7030, i32 0, i32 7
  %7032 = getelementptr inbounds %struct.Reg, %struct.Reg* %7031, i32 0, i32 0
  %RDX.i317 = bitcast %union.anon* %7032 to i64*
  %7033 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7034 = getelementptr inbounds %struct.GPR, %struct.GPR* %7033, i32 0, i32 15
  %7035 = getelementptr inbounds %struct.Reg, %struct.Reg* %7034, i32 0, i32 0
  %RBP.i318 = bitcast %union.anon* %7035 to i64*
  %7036 = load i64, i64* %RBP.i318
  %7037 = sub i64 %7036, 48
  %7038 = load i64, i64* %PC.i316
  %7039 = add i64 %7038, 4
  store i64 %7039, i64* %PC.i316
  %7040 = inttoptr i64 %7037 to i64*
  %7041 = load i64, i64* %7040
  store i64 %7041, i64* %RDX.i317, align 8
  store %struct.Memory* %loadMem_408505, %struct.Memory** %MEMORY
  %loadMem_408509 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7042 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7043 = getelementptr inbounds %struct.GPR, %struct.GPR* %7042, i32 0, i32 33
  %7044 = getelementptr inbounds %struct.Reg, %struct.Reg* %7043, i32 0, i32 0
  %PC.i313 = bitcast %union.anon* %7044 to i64*
  %7045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7046 = getelementptr inbounds %struct.GPR, %struct.GPR* %7045, i32 0, i32 15
  %7047 = getelementptr inbounds %struct.Reg, %struct.Reg* %7046, i32 0, i32 0
  %RBP.i314 = bitcast %union.anon* %7047 to i64*
  %7048 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7049 = getelementptr inbounds %struct.GPR, %struct.GPR* %7048, i32 0, i32 17
  %7050 = getelementptr inbounds %struct.Reg, %struct.Reg* %7049, i32 0, i32 0
  %R8.i315 = bitcast %union.anon* %7050 to i64*
  %7051 = load i64, i64* %RBP.i314
  %7052 = sub i64 %7051, 76
  %7053 = load i64, i64* %PC.i313
  %7054 = add i64 %7053, 4
  store i64 %7054, i64* %PC.i313
  %7055 = inttoptr i64 %7052 to i32*
  %7056 = load i32, i32* %7055
  %7057 = sext i32 %7056 to i64
  store i64 %7057, i64* %R8.i315, align 8
  store %struct.Memory* %loadMem_408509, %struct.Memory** %MEMORY
  %loadMem_40850d = load %struct.Memory*, %struct.Memory** %MEMORY
  %7058 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7059 = getelementptr inbounds %struct.GPR, %struct.GPR* %7058, i32 0, i32 33
  %7060 = getelementptr inbounds %struct.Reg, %struct.Reg* %7059, i32 0, i32 0
  %PC.i310 = bitcast %union.anon* %7060 to i64*
  %7061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7062 = getelementptr inbounds %struct.GPR, %struct.GPR* %7061, i32 0, i32 7
  %7063 = getelementptr inbounds %struct.Reg, %struct.Reg* %7062, i32 0, i32 0
  %RDX.i311 = bitcast %union.anon* %7063 to i64*
  %7064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7065 = getelementptr inbounds %struct.GPR, %struct.GPR* %7064, i32 0, i32 17
  %7066 = getelementptr inbounds %struct.Reg, %struct.Reg* %7065, i32 0, i32 0
  %R8.i312 = bitcast %union.anon* %7066 to i64*
  %7067 = load i64, i64* %RDX.i311
  %7068 = load i64, i64* %R8.i312
  %7069 = mul i64 %7068, 8
  %7070 = add i64 %7069, %7067
  %7071 = load i64, i64* %PC.i310
  %7072 = add i64 %7071, 4
  store i64 %7072, i64* %PC.i310
  %7073 = inttoptr i64 %7070 to i64*
  %7074 = load i64, i64* %7073
  store i64 %7074, i64* %RDX.i311, align 8
  store %struct.Memory* %loadMem_40850d, %struct.Memory** %MEMORY
  %loadMem_408511 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7075 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7076 = getelementptr inbounds %struct.GPR, %struct.GPR* %7075, i32 0, i32 33
  %7077 = getelementptr inbounds %struct.Reg, %struct.Reg* %7076, i32 0, i32 0
  %PC.i307 = bitcast %union.anon* %7077 to i64*
  %7078 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7079 = getelementptr inbounds %struct.GPR, %struct.GPR* %7078, i32 0, i32 1
  %7080 = getelementptr inbounds %struct.Reg, %struct.Reg* %7079, i32 0, i32 0
  %EAX.i308 = bitcast %union.anon* %7080 to i32*
  %7081 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7082 = getelementptr inbounds %struct.GPR, %struct.GPR* %7081, i32 0, i32 7
  %7083 = getelementptr inbounds %struct.Reg, %struct.Reg* %7082, i32 0, i32 0
  %RDX.i309 = bitcast %union.anon* %7083 to i64*
  %7084 = load i64, i64* %RDX.i309
  %7085 = add i64 %7084, 16
  %7086 = load i32, i32* %EAX.i308
  %7087 = zext i32 %7086 to i64
  %7088 = load i64, i64* %PC.i307
  %7089 = add i64 %7088, 3
  store i64 %7089, i64* %PC.i307
  %7090 = inttoptr i64 %7085 to i32*
  store i32 %7086, i32* %7090
  store %struct.Memory* %loadMem_408511, %struct.Memory** %MEMORY
  %loadMem_408514 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7091 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7092 = getelementptr inbounds %struct.GPR, %struct.GPR* %7091, i32 0, i32 33
  %7093 = getelementptr inbounds %struct.Reg, %struct.Reg* %7092, i32 0, i32 0
  %PC.i304 = bitcast %union.anon* %7093 to i64*
  %7094 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7095 = getelementptr inbounds %struct.GPR, %struct.GPR* %7094, i32 0, i32 7
  %7096 = getelementptr inbounds %struct.Reg, %struct.Reg* %7095, i32 0, i32 0
  %RDX.i305 = bitcast %union.anon* %7096 to i64*
  %7097 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7098 = getelementptr inbounds %struct.GPR, %struct.GPR* %7097, i32 0, i32 15
  %7099 = getelementptr inbounds %struct.Reg, %struct.Reg* %7098, i32 0, i32 0
  %RBP.i306 = bitcast %union.anon* %7099 to i64*
  %7100 = load i64, i64* %RBP.i306
  %7101 = sub i64 %7100, 48
  %7102 = load i64, i64* %PC.i304
  %7103 = add i64 %7102, 4
  store i64 %7103, i64* %PC.i304
  %7104 = inttoptr i64 %7101 to i64*
  %7105 = load i64, i64* %7104
  store i64 %7105, i64* %RDX.i305, align 8
  store %struct.Memory* %loadMem_408514, %struct.Memory** %MEMORY
  %loadMem_408518 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7107 = getelementptr inbounds %struct.GPR, %struct.GPR* %7106, i32 0, i32 33
  %7108 = getelementptr inbounds %struct.Reg, %struct.Reg* %7107, i32 0, i32 0
  %PC.i301 = bitcast %union.anon* %7108 to i64*
  %7109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7110 = getelementptr inbounds %struct.GPR, %struct.GPR* %7109, i32 0, i32 15
  %7111 = getelementptr inbounds %struct.Reg, %struct.Reg* %7110, i32 0, i32 0
  %RBP.i302 = bitcast %union.anon* %7111 to i64*
  %7112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7113 = getelementptr inbounds %struct.GPR, %struct.GPR* %7112, i32 0, i32 17
  %7114 = getelementptr inbounds %struct.Reg, %struct.Reg* %7113, i32 0, i32 0
  %R8.i303 = bitcast %union.anon* %7114 to i64*
  %7115 = load i64, i64* %RBP.i302
  %7116 = sub i64 %7115, 76
  %7117 = load i64, i64* %PC.i301
  %7118 = add i64 %7117, 4
  store i64 %7118, i64* %PC.i301
  %7119 = inttoptr i64 %7116 to i32*
  %7120 = load i32, i32* %7119
  %7121 = sext i32 %7120 to i64
  store i64 %7121, i64* %R8.i303, align 8
  store %struct.Memory* %loadMem_408518, %struct.Memory** %MEMORY
  %loadMem_40851c = load %struct.Memory*, %struct.Memory** %MEMORY
  %7122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7123 = getelementptr inbounds %struct.GPR, %struct.GPR* %7122, i32 0, i32 33
  %7124 = getelementptr inbounds %struct.Reg, %struct.Reg* %7123, i32 0, i32 0
  %PC.i298 = bitcast %union.anon* %7124 to i64*
  %7125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7126 = getelementptr inbounds %struct.GPR, %struct.GPR* %7125, i32 0, i32 7
  %7127 = getelementptr inbounds %struct.Reg, %struct.Reg* %7126, i32 0, i32 0
  %RDX.i299 = bitcast %union.anon* %7127 to i64*
  %7128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7129 = getelementptr inbounds %struct.GPR, %struct.GPR* %7128, i32 0, i32 17
  %7130 = getelementptr inbounds %struct.Reg, %struct.Reg* %7129, i32 0, i32 0
  %R8.i300 = bitcast %union.anon* %7130 to i64*
  %7131 = load i64, i64* %RDX.i299
  %7132 = load i64, i64* %R8.i300
  %7133 = mul i64 %7132, 8
  %7134 = add i64 %7133, %7131
  %7135 = load i64, i64* %PC.i298
  %7136 = add i64 %7135, 4
  store i64 %7136, i64* %PC.i298
  %7137 = inttoptr i64 %7134 to i64*
  %7138 = load i64, i64* %7137
  store i64 %7138, i64* %RDX.i299, align 8
  store %struct.Memory* %loadMem_40851c, %struct.Memory** %MEMORY
  %loadMem_408520 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7140 = getelementptr inbounds %struct.GPR, %struct.GPR* %7139, i32 0, i32 33
  %7141 = getelementptr inbounds %struct.Reg, %struct.Reg* %7140, i32 0, i32 0
  %PC.i296 = bitcast %union.anon* %7141 to i64*
  %7142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7143 = getelementptr inbounds %struct.GPR, %struct.GPR* %7142, i32 0, i32 7
  %7144 = getelementptr inbounds %struct.Reg, %struct.Reg* %7143, i32 0, i32 0
  %RDX.i297 = bitcast %union.anon* %7144 to i64*
  %7145 = load i64, i64* %RDX.i297
  %7146 = add i64 %7145, 4
  %7147 = load i64, i64* %PC.i296
  %7148 = add i64 %7147, 7
  store i64 %7148, i64* %PC.i296
  %7149 = inttoptr i64 %7146 to i32*
  store i32 -987654321, i32* %7149
  store %struct.Memory* %loadMem_408520, %struct.Memory** %MEMORY
  %loadMem_408527 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7151 = getelementptr inbounds %struct.GPR, %struct.GPR* %7150, i32 0, i32 33
  %7152 = getelementptr inbounds %struct.Reg, %struct.Reg* %7151, i32 0, i32 0
  %PC.i294 = bitcast %union.anon* %7152 to i64*
  %7153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7154 = getelementptr inbounds %struct.GPR, %struct.GPR* %7153, i32 0, i32 15
  %7155 = getelementptr inbounds %struct.Reg, %struct.Reg* %7154, i32 0, i32 0
  %RBP.i295 = bitcast %union.anon* %7155 to i64*
  %7156 = load i64, i64* %RBP.i295
  %7157 = sub i64 %7156, 80
  %7158 = load i64, i64* %PC.i294
  %7159 = add i64 %7158, 7
  store i64 %7159, i64* %PC.i294
  %7160 = inttoptr i64 %7157 to i32*
  store i32 1, i32* %7160
  store %struct.Memory* %loadMem_408527, %struct.Memory** %MEMORY
  br label %block_.L_40852e

block_.L_40852e:                                  ; preds = %block_408541, %block_.L_40835c
  %loadMem_40852e = load %struct.Memory*, %struct.Memory** %MEMORY
  %7161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7162 = getelementptr inbounds %struct.GPR, %struct.GPR* %7161, i32 0, i32 33
  %7163 = getelementptr inbounds %struct.Reg, %struct.Reg* %7162, i32 0, i32 0
  %PC.i291 = bitcast %union.anon* %7163 to i64*
  %7164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7165 = getelementptr inbounds %struct.GPR, %struct.GPR* %7164, i32 0, i32 1
  %7166 = getelementptr inbounds %struct.Reg, %struct.Reg* %7165, i32 0, i32 0
  %RAX.i292 = bitcast %union.anon* %7166 to i64*
  %7167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7168 = getelementptr inbounds %struct.GPR, %struct.GPR* %7167, i32 0, i32 15
  %7169 = getelementptr inbounds %struct.Reg, %struct.Reg* %7168, i32 0, i32 0
  %RBP.i293 = bitcast %union.anon* %7169 to i64*
  %7170 = load i64, i64* %RBP.i293
  %7171 = sub i64 %7170, 80
  %7172 = load i64, i64* %PC.i291
  %7173 = add i64 %7172, 3
  store i64 %7173, i64* %PC.i291
  %7174 = inttoptr i64 %7171 to i32*
  %7175 = load i32, i32* %7174
  %7176 = zext i32 %7175 to i64
  store i64 %7176, i64* %RAX.i292, align 8
  store %struct.Memory* %loadMem_40852e, %struct.Memory** %MEMORY
  %loadMem_408531 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7178 = getelementptr inbounds %struct.GPR, %struct.GPR* %7177, i32 0, i32 33
  %7179 = getelementptr inbounds %struct.Reg, %struct.Reg* %7178, i32 0, i32 0
  %PC.i288 = bitcast %union.anon* %7179 to i64*
  %7180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7181 = getelementptr inbounds %struct.GPR, %struct.GPR* %7180, i32 0, i32 5
  %7182 = getelementptr inbounds %struct.Reg, %struct.Reg* %7181, i32 0, i32 0
  %RCX.i289 = bitcast %union.anon* %7182 to i64*
  %7183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7184 = getelementptr inbounds %struct.GPR, %struct.GPR* %7183, i32 0, i32 15
  %7185 = getelementptr inbounds %struct.Reg, %struct.Reg* %7184, i32 0, i32 0
  %RBP.i290 = bitcast %union.anon* %7185 to i64*
  %7186 = load i64, i64* %RBP.i290
  %7187 = sub i64 %7186, 24
  %7188 = load i64, i64* %PC.i288
  %7189 = add i64 %7188, 4
  store i64 %7189, i64* %PC.i288
  %7190 = inttoptr i64 %7187 to i64*
  %7191 = load i64, i64* %7190
  store i64 %7191, i64* %RCX.i289, align 8
  store %struct.Memory* %loadMem_408531, %struct.Memory** %MEMORY
  %loadMem_408535 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7192 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7193 = getelementptr inbounds %struct.GPR, %struct.GPR* %7192, i32 0, i32 33
  %7194 = getelementptr inbounds %struct.Reg, %struct.Reg* %7193, i32 0, i32 0
  %PC.i285 = bitcast %union.anon* %7194 to i64*
  %7195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7196 = getelementptr inbounds %struct.GPR, %struct.GPR* %7195, i32 0, i32 1
  %7197 = getelementptr inbounds %struct.Reg, %struct.Reg* %7196, i32 0, i32 0
  %EAX.i286 = bitcast %union.anon* %7197 to i32*
  %7198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7199 = getelementptr inbounds %struct.GPR, %struct.GPR* %7198, i32 0, i32 5
  %7200 = getelementptr inbounds %struct.Reg, %struct.Reg* %7199, i32 0, i32 0
  %RCX.i287 = bitcast %union.anon* %7200 to i64*
  %7201 = load i32, i32* %EAX.i286
  %7202 = zext i32 %7201 to i64
  %7203 = load i64, i64* %RCX.i287
  %7204 = add i64 %7203, 136
  %7205 = load i64, i64* %PC.i285
  %7206 = add i64 %7205, 6
  store i64 %7206, i64* %PC.i285
  %7207 = inttoptr i64 %7204 to i32*
  %7208 = load i32, i32* %7207
  %7209 = sub i32 %7201, %7208
  %7210 = icmp ult i32 %7201, %7208
  %7211 = zext i1 %7210 to i8
  %7212 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7211, i8* %7212, align 1
  %7213 = and i32 %7209, 255
  %7214 = call i32 @llvm.ctpop.i32(i32 %7213)
  %7215 = trunc i32 %7214 to i8
  %7216 = and i8 %7215, 1
  %7217 = xor i8 %7216, 1
  %7218 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7217, i8* %7218, align 1
  %7219 = xor i32 %7208, %7201
  %7220 = xor i32 %7219, %7209
  %7221 = lshr i32 %7220, 4
  %7222 = trunc i32 %7221 to i8
  %7223 = and i8 %7222, 1
  %7224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7223, i8* %7224, align 1
  %7225 = icmp eq i32 %7209, 0
  %7226 = zext i1 %7225 to i8
  %7227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7226, i8* %7227, align 1
  %7228 = lshr i32 %7209, 31
  %7229 = trunc i32 %7228 to i8
  %7230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7229, i8* %7230, align 1
  %7231 = lshr i32 %7201, 31
  %7232 = lshr i32 %7208, 31
  %7233 = xor i32 %7232, %7231
  %7234 = xor i32 %7228, %7231
  %7235 = add i32 %7234, %7233
  %7236 = icmp eq i32 %7235, 2
  %7237 = zext i1 %7236 to i8
  %7238 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7237, i8* %7238, align 1
  store %struct.Memory* %loadMem_408535, %struct.Memory** %MEMORY
  %loadMem_40853b = load %struct.Memory*, %struct.Memory** %MEMORY
  %7239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7240 = getelementptr inbounds %struct.GPR, %struct.GPR* %7239, i32 0, i32 33
  %7241 = getelementptr inbounds %struct.Reg, %struct.Reg* %7240, i32 0, i32 0
  %PC.i284 = bitcast %union.anon* %7241 to i64*
  %7242 = load i64, i64* %PC.i284
  %7243 = add i64 %7242, 94
  %7244 = load i64, i64* %PC.i284
  %7245 = add i64 %7244, 6
  %7246 = load i64, i64* %PC.i284
  %7247 = add i64 %7246, 6
  store i64 %7247, i64* %PC.i284
  %7248 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7249 = load i8, i8* %7248, align 1
  %7250 = icmp eq i8 %7249, 0
  %7251 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %7252 = load i8, i8* %7251, align 1
  %7253 = icmp ne i8 %7252, 0
  %7254 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %7255 = load i8, i8* %7254, align 1
  %7256 = icmp ne i8 %7255, 0
  %7257 = xor i1 %7253, %7256
  %7258 = xor i1 %7257, true
  %7259 = and i1 %7250, %7258
  %7260 = zext i1 %7259 to i8
  store i8 %7260, i8* %BRANCH_TAKEN, align 1
  %7261 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7262 = select i1 %7259, i64 %7243, i64 %7245
  store i64 %7262, i64* %7261, align 8
  store %struct.Memory* %loadMem_40853b, %struct.Memory** %MEMORY
  %loadBr_40853b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40853b = icmp eq i8 %loadBr_40853b, 1
  br i1 %cmpBr_40853b, label %block_.L_408599, label %block_408541

block_408541:                                     ; preds = %block_.L_40852e
  %loadMem_408541 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7264 = getelementptr inbounds %struct.GPR, %struct.GPR* %7263, i32 0, i32 33
  %7265 = getelementptr inbounds %struct.Reg, %struct.Reg* %7264, i32 0, i32 0
  %PC.i281 = bitcast %union.anon* %7265 to i64*
  %7266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7267 = getelementptr inbounds %struct.GPR, %struct.GPR* %7266, i32 0, i32 1
  %7268 = getelementptr inbounds %struct.Reg, %struct.Reg* %7267, i32 0, i32 0
  %RAX.i282 = bitcast %union.anon* %7268 to i64*
  %7269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7270 = getelementptr inbounds %struct.GPR, %struct.GPR* %7269, i32 0, i32 15
  %7271 = getelementptr inbounds %struct.Reg, %struct.Reg* %7270, i32 0, i32 0
  %RBP.i283 = bitcast %union.anon* %7271 to i64*
  %7272 = load i64, i64* %RBP.i283
  %7273 = sub i64 %7272, 48
  %7274 = load i64, i64* %PC.i281
  %7275 = add i64 %7274, 4
  store i64 %7275, i64* %PC.i281
  %7276 = inttoptr i64 %7273 to i64*
  %7277 = load i64, i64* %7276
  store i64 %7277, i64* %RAX.i282, align 8
  store %struct.Memory* %loadMem_408541, %struct.Memory** %MEMORY
  %loadMem_408545 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7279 = getelementptr inbounds %struct.GPR, %struct.GPR* %7278, i32 0, i32 33
  %7280 = getelementptr inbounds %struct.Reg, %struct.Reg* %7279, i32 0, i32 0
  %PC.i278 = bitcast %union.anon* %7280 to i64*
  %7281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7282 = getelementptr inbounds %struct.GPR, %struct.GPR* %7281, i32 0, i32 5
  %7283 = getelementptr inbounds %struct.Reg, %struct.Reg* %7282, i32 0, i32 0
  %RCX.i279 = bitcast %union.anon* %7283 to i64*
  %7284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7285 = getelementptr inbounds %struct.GPR, %struct.GPR* %7284, i32 0, i32 15
  %7286 = getelementptr inbounds %struct.Reg, %struct.Reg* %7285, i32 0, i32 0
  %RBP.i280 = bitcast %union.anon* %7286 to i64*
  %7287 = load i64, i64* %RBP.i280
  %7288 = sub i64 %7287, 76
  %7289 = load i64, i64* %PC.i278
  %7290 = add i64 %7289, 4
  store i64 %7290, i64* %PC.i278
  %7291 = inttoptr i64 %7288 to i32*
  %7292 = load i32, i32* %7291
  %7293 = sext i32 %7292 to i64
  store i64 %7293, i64* %RCX.i279, align 8
  store %struct.Memory* %loadMem_408545, %struct.Memory** %MEMORY
  %loadMem_408549 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7295 = getelementptr inbounds %struct.GPR, %struct.GPR* %7294, i32 0, i32 33
  %7296 = getelementptr inbounds %struct.Reg, %struct.Reg* %7295, i32 0, i32 0
  %PC.i275 = bitcast %union.anon* %7296 to i64*
  %7297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7298 = getelementptr inbounds %struct.GPR, %struct.GPR* %7297, i32 0, i32 1
  %7299 = getelementptr inbounds %struct.Reg, %struct.Reg* %7298, i32 0, i32 0
  %RAX.i276 = bitcast %union.anon* %7299 to i64*
  %7300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7301 = getelementptr inbounds %struct.GPR, %struct.GPR* %7300, i32 0, i32 5
  %7302 = getelementptr inbounds %struct.Reg, %struct.Reg* %7301, i32 0, i32 0
  %RCX.i277 = bitcast %union.anon* %7302 to i64*
  %7303 = load i64, i64* %RAX.i276
  %7304 = load i64, i64* %RCX.i277
  %7305 = mul i64 %7304, 8
  %7306 = add i64 %7305, %7303
  %7307 = load i64, i64* %PC.i275
  %7308 = add i64 %7307, 4
  store i64 %7308, i64* %PC.i275
  %7309 = inttoptr i64 %7306 to i64*
  %7310 = load i64, i64* %7309
  store i64 %7310, i64* %RAX.i276, align 8
  store %struct.Memory* %loadMem_408549, %struct.Memory** %MEMORY
  %loadMem_40854d = load %struct.Memory*, %struct.Memory** %MEMORY
  %7311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7312 = getelementptr inbounds %struct.GPR, %struct.GPR* %7311, i32 0, i32 33
  %7313 = getelementptr inbounds %struct.Reg, %struct.Reg* %7312, i32 0, i32 0
  %PC.i272 = bitcast %union.anon* %7313 to i64*
  %7314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7315 = getelementptr inbounds %struct.GPR, %struct.GPR* %7314, i32 0, i32 1
  %7316 = getelementptr inbounds %struct.Reg, %struct.Reg* %7315, i32 0, i32 0
  %RAX.i273 = bitcast %union.anon* %7316 to i64*
  %7317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7318 = getelementptr inbounds %struct.GPR, %struct.GPR* %7317, i32 0, i32 11
  %7319 = getelementptr inbounds %struct.Reg, %struct.Reg* %7318, i32 0, i32 0
  %RDI.i274 = bitcast %union.anon* %7319 to i64*
  %7320 = load i64, i64* %RAX.i273
  %7321 = add i64 %7320, 4
  %7322 = load i64, i64* %PC.i272
  %7323 = add i64 %7322, 3
  store i64 %7323, i64* %PC.i272
  %7324 = inttoptr i64 %7321 to i32*
  %7325 = load i32, i32* %7324
  %7326 = zext i32 %7325 to i64
  store i64 %7326, i64* %RDI.i274, align 8
  store %struct.Memory* %loadMem_40854d, %struct.Memory** %MEMORY
  %loadMem_408550 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7328 = getelementptr inbounds %struct.GPR, %struct.GPR* %7327, i32 0, i32 33
  %7329 = getelementptr inbounds %struct.Reg, %struct.Reg* %7328, i32 0, i32 0
  %PC.i269 = bitcast %union.anon* %7329 to i64*
  %7330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7331 = getelementptr inbounds %struct.GPR, %struct.GPR* %7330, i32 0, i32 1
  %7332 = getelementptr inbounds %struct.Reg, %struct.Reg* %7331, i32 0, i32 0
  %RAX.i270 = bitcast %union.anon* %7332 to i64*
  %7333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7334 = getelementptr inbounds %struct.GPR, %struct.GPR* %7333, i32 0, i32 15
  %7335 = getelementptr inbounds %struct.Reg, %struct.Reg* %7334, i32 0, i32 0
  %RBP.i271 = bitcast %union.anon* %7335 to i64*
  %7336 = load i64, i64* %RBP.i271
  %7337 = sub i64 %7336, 56
  %7338 = load i64, i64* %PC.i269
  %7339 = add i64 %7338, 4
  store i64 %7339, i64* %PC.i269
  %7340 = inttoptr i64 %7337 to i64*
  %7341 = load i64, i64* %7340
  store i64 %7341, i64* %RAX.i270, align 8
  store %struct.Memory* %loadMem_408550, %struct.Memory** %MEMORY
  %loadMem_408554 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7342 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7343 = getelementptr inbounds %struct.GPR, %struct.GPR* %7342, i32 0, i32 33
  %7344 = getelementptr inbounds %struct.Reg, %struct.Reg* %7343, i32 0, i32 0
  %PC.i266 = bitcast %union.anon* %7344 to i64*
  %7345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7346 = getelementptr inbounds %struct.GPR, %struct.GPR* %7345, i32 0, i32 5
  %7347 = getelementptr inbounds %struct.Reg, %struct.Reg* %7346, i32 0, i32 0
  %RCX.i267 = bitcast %union.anon* %7347 to i64*
  %7348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7349 = getelementptr inbounds %struct.GPR, %struct.GPR* %7348, i32 0, i32 15
  %7350 = getelementptr inbounds %struct.Reg, %struct.Reg* %7349, i32 0, i32 0
  %RBP.i268 = bitcast %union.anon* %7350 to i64*
  %7351 = load i64, i64* %RBP.i268
  %7352 = sub i64 %7351, 76
  %7353 = load i64, i64* %PC.i266
  %7354 = add i64 %7353, 4
  store i64 %7354, i64* %PC.i266
  %7355 = inttoptr i64 %7352 to i32*
  %7356 = load i32, i32* %7355
  %7357 = sext i32 %7356 to i64
  store i64 %7357, i64* %RCX.i267, align 8
  store %struct.Memory* %loadMem_408554, %struct.Memory** %MEMORY
  %loadMem_408558 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7359 = getelementptr inbounds %struct.GPR, %struct.GPR* %7358, i32 0, i32 33
  %7360 = getelementptr inbounds %struct.Reg, %struct.Reg* %7359, i32 0, i32 0
  %PC.i263 = bitcast %union.anon* %7360 to i64*
  %7361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7362 = getelementptr inbounds %struct.GPR, %struct.GPR* %7361, i32 0, i32 1
  %7363 = getelementptr inbounds %struct.Reg, %struct.Reg* %7362, i32 0, i32 0
  %RAX.i264 = bitcast %union.anon* %7363 to i64*
  %7364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7365 = getelementptr inbounds %struct.GPR, %struct.GPR* %7364, i32 0, i32 5
  %7366 = getelementptr inbounds %struct.Reg, %struct.Reg* %7365, i32 0, i32 0
  %RCX.i265 = bitcast %union.anon* %7366 to i64*
  %7367 = load i64, i64* %RAX.i264
  %7368 = load i64, i64* %RCX.i265
  %7369 = mul i64 %7368, 8
  %7370 = add i64 %7369, %7367
  %7371 = load i64, i64* %PC.i263
  %7372 = add i64 %7371, 4
  store i64 %7372, i64* %PC.i263
  %7373 = inttoptr i64 %7370 to i64*
  %7374 = load i64, i64* %7373
  store i64 %7374, i64* %RAX.i264, align 8
  store %struct.Memory* %loadMem_408558, %struct.Memory** %MEMORY
  %loadMem_40855c = load %struct.Memory*, %struct.Memory** %MEMORY
  %7375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7376 = getelementptr inbounds %struct.GPR, %struct.GPR* %7375, i32 0, i32 33
  %7377 = getelementptr inbounds %struct.Reg, %struct.Reg* %7376, i32 0, i32 0
  %PC.i260 = bitcast %union.anon* %7377 to i64*
  %7378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7379 = getelementptr inbounds %struct.GPR, %struct.GPR* %7378, i32 0, i32 5
  %7380 = getelementptr inbounds %struct.Reg, %struct.Reg* %7379, i32 0, i32 0
  %RCX.i261 = bitcast %union.anon* %7380 to i64*
  %7381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7382 = getelementptr inbounds %struct.GPR, %struct.GPR* %7381, i32 0, i32 15
  %7383 = getelementptr inbounds %struct.Reg, %struct.Reg* %7382, i32 0, i32 0
  %RBP.i262 = bitcast %union.anon* %7383 to i64*
  %7384 = load i64, i64* %RBP.i262
  %7385 = sub i64 %7384, 80
  %7386 = load i64, i64* %PC.i260
  %7387 = add i64 %7386, 4
  store i64 %7387, i64* %PC.i260
  %7388 = inttoptr i64 %7385 to i32*
  %7389 = load i32, i32* %7388
  %7390 = sext i32 %7389 to i64
  store i64 %7390, i64* %RCX.i261, align 8
  store %struct.Memory* %loadMem_40855c, %struct.Memory** %MEMORY
  %loadMem_408560 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7392 = getelementptr inbounds %struct.GPR, %struct.GPR* %7391, i32 0, i32 33
  %7393 = getelementptr inbounds %struct.Reg, %struct.Reg* %7392, i32 0, i32 0
  %PC.i256 = bitcast %union.anon* %7393 to i64*
  %7394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7395 = getelementptr inbounds %struct.GPR, %struct.GPR* %7394, i32 0, i32 1
  %7396 = getelementptr inbounds %struct.Reg, %struct.Reg* %7395, i32 0, i32 0
  %RAX.i257 = bitcast %union.anon* %7396 to i64*
  %7397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7398 = getelementptr inbounds %struct.GPR, %struct.GPR* %7397, i32 0, i32 5
  %7399 = getelementptr inbounds %struct.Reg, %struct.Reg* %7398, i32 0, i32 0
  %RCX.i258 = bitcast %union.anon* %7399 to i64*
  %7400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7401 = getelementptr inbounds %struct.GPR, %struct.GPR* %7400, i32 0, i32 7
  %7402 = getelementptr inbounds %struct.Reg, %struct.Reg* %7401, i32 0, i32 0
  %RDX.i259 = bitcast %union.anon* %7402 to i64*
  %7403 = load i64, i64* %RAX.i257
  %7404 = load i64, i64* %RCX.i258
  %7405 = mul i64 %7404, 4
  %7406 = add i64 %7405, %7403
  %7407 = load i64, i64* %PC.i256
  %7408 = add i64 %7407, 3
  store i64 %7408, i64* %PC.i256
  %7409 = inttoptr i64 %7406 to i32*
  %7410 = load i32, i32* %7409
  %7411 = zext i32 %7410 to i64
  store i64 %7411, i64* %RDX.i259, align 8
  store %struct.Memory* %loadMem_408560, %struct.Memory** %MEMORY
  %loadMem_408563 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7413 = getelementptr inbounds %struct.GPR, %struct.GPR* %7412, i32 0, i32 33
  %7414 = getelementptr inbounds %struct.Reg, %struct.Reg* %7413, i32 0, i32 0
  %PC.i253 = bitcast %union.anon* %7414 to i64*
  %7415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7416 = getelementptr inbounds %struct.GPR, %struct.GPR* %7415, i32 0, i32 1
  %7417 = getelementptr inbounds %struct.Reg, %struct.Reg* %7416, i32 0, i32 0
  %RAX.i254 = bitcast %union.anon* %7417 to i64*
  %7418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7419 = getelementptr inbounds %struct.GPR, %struct.GPR* %7418, i32 0, i32 15
  %7420 = getelementptr inbounds %struct.Reg, %struct.Reg* %7419, i32 0, i32 0
  %RBP.i255 = bitcast %union.anon* %7420 to i64*
  %7421 = load i64, i64* %RBP.i255
  %7422 = sub i64 %7421, 24
  %7423 = load i64, i64* %PC.i253
  %7424 = add i64 %7423, 4
  store i64 %7424, i64* %PC.i253
  %7425 = inttoptr i64 %7422 to i64*
  %7426 = load i64, i64* %7425
  store i64 %7426, i64* %RAX.i254, align 8
  store %struct.Memory* %loadMem_408563, %struct.Memory** %MEMORY
  %loadMem_408567 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7428 = getelementptr inbounds %struct.GPR, %struct.GPR* %7427, i32 0, i32 33
  %7429 = getelementptr inbounds %struct.Reg, %struct.Reg* %7428, i32 0, i32 0
  %PC.i251 = bitcast %union.anon* %7429 to i64*
  %7430 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7431 = getelementptr inbounds %struct.GPR, %struct.GPR* %7430, i32 0, i32 1
  %7432 = getelementptr inbounds %struct.Reg, %struct.Reg* %7431, i32 0, i32 0
  %RAX.i252 = bitcast %union.anon* %7432 to i64*
  %7433 = load i64, i64* %RAX.i252
  %7434 = add i64 %7433, 376
  %7435 = load i64, i64* %PC.i251
  %7436 = add i64 %7435, 7
  store i64 %7436, i64* %PC.i251
  %7437 = inttoptr i64 %7434 to i64*
  %7438 = load i64, i64* %7437
  store i64 %7438, i64* %RAX.i252, align 8
  store %struct.Memory* %loadMem_408567, %struct.Memory** %MEMORY
  %loadMem_40856e = load %struct.Memory*, %struct.Memory** %MEMORY
  %7439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7440 = getelementptr inbounds %struct.GPR, %struct.GPR* %7439, i32 0, i32 33
  %7441 = getelementptr inbounds %struct.Reg, %struct.Reg* %7440, i32 0, i32 0
  %PC.i248 = bitcast %union.anon* %7441 to i64*
  %7442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7443 = getelementptr inbounds %struct.GPR, %struct.GPR* %7442, i32 0, i32 5
  %7444 = getelementptr inbounds %struct.Reg, %struct.Reg* %7443, i32 0, i32 0
  %RCX.i249 = bitcast %union.anon* %7444 to i64*
  %7445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7446 = getelementptr inbounds %struct.GPR, %struct.GPR* %7445, i32 0, i32 15
  %7447 = getelementptr inbounds %struct.Reg, %struct.Reg* %7446, i32 0, i32 0
  %RBP.i250 = bitcast %union.anon* %7447 to i64*
  %7448 = load i64, i64* %RBP.i250
  %7449 = sub i64 %7448, 80
  %7450 = load i64, i64* %PC.i248
  %7451 = add i64 %7450, 4
  store i64 %7451, i64* %PC.i248
  %7452 = inttoptr i64 %7449 to i32*
  %7453 = load i32, i32* %7452
  %7454 = sext i32 %7453 to i64
  store i64 %7454, i64* %RCX.i249, align 8
  store %struct.Memory* %loadMem_40856e, %struct.Memory** %MEMORY
  %loadMem_408572 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7455 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7456 = getelementptr inbounds %struct.GPR, %struct.GPR* %7455, i32 0, i32 33
  %7457 = getelementptr inbounds %struct.Reg, %struct.Reg* %7456, i32 0, i32 0
  %PC.i244 = bitcast %union.anon* %7457 to i64*
  %7458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7459 = getelementptr inbounds %struct.GPR, %struct.GPR* %7458, i32 0, i32 1
  %7460 = getelementptr inbounds %struct.Reg, %struct.Reg* %7459, i32 0, i32 0
  %RAX.i245 = bitcast %union.anon* %7460 to i64*
  %7461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7462 = getelementptr inbounds %struct.GPR, %struct.GPR* %7461, i32 0, i32 5
  %7463 = getelementptr inbounds %struct.Reg, %struct.Reg* %7462, i32 0, i32 0
  %RCX.i246 = bitcast %union.anon* %7463 to i64*
  %7464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7465 = getelementptr inbounds %struct.GPR, %struct.GPR* %7464, i32 0, i32 7
  %7466 = getelementptr inbounds %struct.Reg, %struct.Reg* %7465, i32 0, i32 0
  %RDX.i247 = bitcast %union.anon* %7466 to i64*
  %7467 = load i64, i64* %RDX.i247
  %7468 = load i64, i64* %RAX.i245
  %7469 = load i64, i64* %RCX.i246
  %7470 = mul i64 %7469, 4
  %7471 = add i64 %7470, %7468
  %7472 = load i64, i64* %PC.i244
  %7473 = add i64 %7472, 3
  store i64 %7473, i64* %PC.i244
  %7474 = trunc i64 %7467 to i32
  %7475 = inttoptr i64 %7471 to i32*
  %7476 = load i32, i32* %7475
  %7477 = add i32 %7476, %7474
  %7478 = zext i32 %7477 to i64
  store i64 %7478, i64* %RDX.i247, align 8
  %7479 = icmp ult i32 %7477, %7474
  %7480 = icmp ult i32 %7477, %7476
  %7481 = or i1 %7479, %7480
  %7482 = zext i1 %7481 to i8
  %7483 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7482, i8* %7483, align 1
  %7484 = and i32 %7477, 255
  %7485 = call i32 @llvm.ctpop.i32(i32 %7484)
  %7486 = trunc i32 %7485 to i8
  %7487 = and i8 %7486, 1
  %7488 = xor i8 %7487, 1
  %7489 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7488, i8* %7489, align 1
  %7490 = xor i32 %7476, %7474
  %7491 = xor i32 %7490, %7477
  %7492 = lshr i32 %7491, 4
  %7493 = trunc i32 %7492 to i8
  %7494 = and i8 %7493, 1
  %7495 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7494, i8* %7495, align 1
  %7496 = icmp eq i32 %7477, 0
  %7497 = zext i1 %7496 to i8
  %7498 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7497, i8* %7498, align 1
  %7499 = lshr i32 %7477, 31
  %7500 = trunc i32 %7499 to i8
  %7501 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7500, i8* %7501, align 1
  %7502 = lshr i32 %7474, 31
  %7503 = lshr i32 %7476, 31
  %7504 = xor i32 %7499, %7502
  %7505 = xor i32 %7499, %7503
  %7506 = add i32 %7504, %7505
  %7507 = icmp eq i32 %7506, 2
  %7508 = zext i1 %7507 to i8
  %7509 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7508, i8* %7509, align 1
  store %struct.Memory* %loadMem_408572, %struct.Memory** %MEMORY
  %loadMem_408575 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7511 = getelementptr inbounds %struct.GPR, %struct.GPR* %7510, i32 0, i32 33
  %7512 = getelementptr inbounds %struct.Reg, %struct.Reg* %7511, i32 0, i32 0
  %PC.i241 = bitcast %union.anon* %7512 to i64*
  %7513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7514 = getelementptr inbounds %struct.GPR, %struct.GPR* %7513, i32 0, i32 7
  %7515 = getelementptr inbounds %struct.Reg, %struct.Reg* %7514, i32 0, i32 0
  %EDX.i242 = bitcast %union.anon* %7515 to i32*
  %7516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7517 = getelementptr inbounds %struct.GPR, %struct.GPR* %7516, i32 0, i32 9
  %7518 = getelementptr inbounds %struct.Reg, %struct.Reg* %7517, i32 0, i32 0
  %RSI.i243 = bitcast %union.anon* %7518 to i64*
  %7519 = load i32, i32* %EDX.i242
  %7520 = zext i32 %7519 to i64
  %7521 = load i64, i64* %PC.i241
  %7522 = add i64 %7521, 2
  store i64 %7522, i64* %PC.i241
  %7523 = and i64 %7520, 4294967295
  store i64 %7523, i64* %RSI.i243, align 8
  store %struct.Memory* %loadMem_408575, %struct.Memory** %MEMORY
  %loadMem1_408577 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7525 = getelementptr inbounds %struct.GPR, %struct.GPR* %7524, i32 0, i32 33
  %7526 = getelementptr inbounds %struct.Reg, %struct.Reg* %7525, i32 0, i32 0
  %PC.i240 = bitcast %union.anon* %7526 to i64*
  %7527 = load i64, i64* %PC.i240
  %7528 = add i64 %7527, 130105
  %7529 = load i64, i64* %PC.i240
  %7530 = add i64 %7529, 5
  %7531 = load i64, i64* %PC.i240
  %7532 = add i64 %7531, 5
  store i64 %7532, i64* %PC.i240
  %7533 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7534 = load i64, i64* %7533, align 8
  %7535 = add i64 %7534, -8
  %7536 = inttoptr i64 %7535 to i64*
  store i64 %7530, i64* %7536
  store i64 %7535, i64* %7533, align 8
  %7537 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7528, i64* %7537, align 8
  store %struct.Memory* %loadMem1_408577, %struct.Memory** %MEMORY
  %loadMem2_408577 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_408577 = load i64, i64* %3
  %call2_408577 = call %struct.Memory* @sub_4281b0.ILogsum(%struct.State* %0, i64 %loadPC_408577, %struct.Memory* %loadMem2_408577)
  store %struct.Memory* %call2_408577, %struct.Memory** %MEMORY
  %loadMem_40857c = load %struct.Memory*, %struct.Memory** %MEMORY
  %7538 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7539 = getelementptr inbounds %struct.GPR, %struct.GPR* %7538, i32 0, i32 33
  %7540 = getelementptr inbounds %struct.Reg, %struct.Reg* %7539, i32 0, i32 0
  %PC.i237 = bitcast %union.anon* %7540 to i64*
  %7541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7542 = getelementptr inbounds %struct.GPR, %struct.GPR* %7541, i32 0, i32 5
  %7543 = getelementptr inbounds %struct.Reg, %struct.Reg* %7542, i32 0, i32 0
  %RCX.i238 = bitcast %union.anon* %7543 to i64*
  %7544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7545 = getelementptr inbounds %struct.GPR, %struct.GPR* %7544, i32 0, i32 15
  %7546 = getelementptr inbounds %struct.Reg, %struct.Reg* %7545, i32 0, i32 0
  %RBP.i239 = bitcast %union.anon* %7546 to i64*
  %7547 = load i64, i64* %RBP.i239
  %7548 = sub i64 %7547, 48
  %7549 = load i64, i64* %PC.i237
  %7550 = add i64 %7549, 4
  store i64 %7550, i64* %PC.i237
  %7551 = inttoptr i64 %7548 to i64*
  %7552 = load i64, i64* %7551
  store i64 %7552, i64* %RCX.i238, align 8
  store %struct.Memory* %loadMem_40857c, %struct.Memory** %MEMORY
  %loadMem_408580 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7553 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7554 = getelementptr inbounds %struct.GPR, %struct.GPR* %7553, i32 0, i32 33
  %7555 = getelementptr inbounds %struct.Reg, %struct.Reg* %7554, i32 0, i32 0
  %PC.i234 = bitcast %union.anon* %7555 to i64*
  %7556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7557 = getelementptr inbounds %struct.GPR, %struct.GPR* %7556, i32 0, i32 15
  %7558 = getelementptr inbounds %struct.Reg, %struct.Reg* %7557, i32 0, i32 0
  %RBP.i235 = bitcast %union.anon* %7558 to i64*
  %7559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7560 = getelementptr inbounds %struct.GPR, %struct.GPR* %7559, i32 0, i32 17
  %7561 = getelementptr inbounds %struct.Reg, %struct.Reg* %7560, i32 0, i32 0
  %R8.i236 = bitcast %union.anon* %7561 to i64*
  %7562 = load i64, i64* %RBP.i235
  %7563 = sub i64 %7562, 76
  %7564 = load i64, i64* %PC.i234
  %7565 = add i64 %7564, 4
  store i64 %7565, i64* %PC.i234
  %7566 = inttoptr i64 %7563 to i32*
  %7567 = load i32, i32* %7566
  %7568 = sext i32 %7567 to i64
  store i64 %7568, i64* %R8.i236, align 8
  store %struct.Memory* %loadMem_408580, %struct.Memory** %MEMORY
  %loadMem_408584 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7569 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7570 = getelementptr inbounds %struct.GPR, %struct.GPR* %7569, i32 0, i32 33
  %7571 = getelementptr inbounds %struct.Reg, %struct.Reg* %7570, i32 0, i32 0
  %PC.i231 = bitcast %union.anon* %7571 to i64*
  %7572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7573 = getelementptr inbounds %struct.GPR, %struct.GPR* %7572, i32 0, i32 5
  %7574 = getelementptr inbounds %struct.Reg, %struct.Reg* %7573, i32 0, i32 0
  %RCX.i232 = bitcast %union.anon* %7574 to i64*
  %7575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7576 = getelementptr inbounds %struct.GPR, %struct.GPR* %7575, i32 0, i32 17
  %7577 = getelementptr inbounds %struct.Reg, %struct.Reg* %7576, i32 0, i32 0
  %R8.i233 = bitcast %union.anon* %7577 to i64*
  %7578 = load i64, i64* %RCX.i232
  %7579 = load i64, i64* %R8.i233
  %7580 = mul i64 %7579, 8
  %7581 = add i64 %7580, %7578
  %7582 = load i64, i64* %PC.i231
  %7583 = add i64 %7582, 4
  store i64 %7583, i64* %PC.i231
  %7584 = inttoptr i64 %7581 to i64*
  %7585 = load i64, i64* %7584
  store i64 %7585, i64* %RCX.i232, align 8
  store %struct.Memory* %loadMem_408584, %struct.Memory** %MEMORY
  %loadMem_408588 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7587 = getelementptr inbounds %struct.GPR, %struct.GPR* %7586, i32 0, i32 33
  %7588 = getelementptr inbounds %struct.Reg, %struct.Reg* %7587, i32 0, i32 0
  %PC.i228 = bitcast %union.anon* %7588 to i64*
  %7589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7590 = getelementptr inbounds %struct.GPR, %struct.GPR* %7589, i32 0, i32 1
  %7591 = getelementptr inbounds %struct.Reg, %struct.Reg* %7590, i32 0, i32 0
  %EAX.i229 = bitcast %union.anon* %7591 to i32*
  %7592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7593 = getelementptr inbounds %struct.GPR, %struct.GPR* %7592, i32 0, i32 5
  %7594 = getelementptr inbounds %struct.Reg, %struct.Reg* %7593, i32 0, i32 0
  %RCX.i230 = bitcast %union.anon* %7594 to i64*
  %7595 = load i64, i64* %RCX.i230
  %7596 = add i64 %7595, 4
  %7597 = load i32, i32* %EAX.i229
  %7598 = zext i32 %7597 to i64
  %7599 = load i64, i64* %PC.i228
  %7600 = add i64 %7599, 3
  store i64 %7600, i64* %PC.i228
  %7601 = inttoptr i64 %7596 to i32*
  store i32 %7597, i32* %7601
  store %struct.Memory* %loadMem_408588, %struct.Memory** %MEMORY
  %loadMem_40858b = load %struct.Memory*, %struct.Memory** %MEMORY
  %7602 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7603 = getelementptr inbounds %struct.GPR, %struct.GPR* %7602, i32 0, i32 33
  %7604 = getelementptr inbounds %struct.Reg, %struct.Reg* %7603, i32 0, i32 0
  %PC.i225 = bitcast %union.anon* %7604 to i64*
  %7605 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7606 = getelementptr inbounds %struct.GPR, %struct.GPR* %7605, i32 0, i32 1
  %7607 = getelementptr inbounds %struct.Reg, %struct.Reg* %7606, i32 0, i32 0
  %RAX.i226 = bitcast %union.anon* %7607 to i64*
  %7608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7609 = getelementptr inbounds %struct.GPR, %struct.GPR* %7608, i32 0, i32 15
  %7610 = getelementptr inbounds %struct.Reg, %struct.Reg* %7609, i32 0, i32 0
  %RBP.i227 = bitcast %union.anon* %7610 to i64*
  %7611 = load i64, i64* %RBP.i227
  %7612 = sub i64 %7611, 80
  %7613 = load i64, i64* %PC.i225
  %7614 = add i64 %7613, 3
  store i64 %7614, i64* %PC.i225
  %7615 = inttoptr i64 %7612 to i32*
  %7616 = load i32, i32* %7615
  %7617 = zext i32 %7616 to i64
  store i64 %7617, i64* %RAX.i226, align 8
  store %struct.Memory* %loadMem_40858b, %struct.Memory** %MEMORY
  %loadMem_40858e = load %struct.Memory*, %struct.Memory** %MEMORY
  %7618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7619 = getelementptr inbounds %struct.GPR, %struct.GPR* %7618, i32 0, i32 33
  %7620 = getelementptr inbounds %struct.Reg, %struct.Reg* %7619, i32 0, i32 0
  %PC.i223 = bitcast %union.anon* %7620 to i64*
  %7621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7622 = getelementptr inbounds %struct.GPR, %struct.GPR* %7621, i32 0, i32 1
  %7623 = getelementptr inbounds %struct.Reg, %struct.Reg* %7622, i32 0, i32 0
  %RAX.i224 = bitcast %union.anon* %7623 to i64*
  %7624 = load i64, i64* %RAX.i224
  %7625 = load i64, i64* %PC.i223
  %7626 = add i64 %7625, 3
  store i64 %7626, i64* %PC.i223
  %7627 = trunc i64 %7624 to i32
  %7628 = add i32 1, %7627
  %7629 = zext i32 %7628 to i64
  store i64 %7629, i64* %RAX.i224, align 8
  %7630 = icmp ult i32 %7628, %7627
  %7631 = icmp ult i32 %7628, 1
  %7632 = or i1 %7630, %7631
  %7633 = zext i1 %7632 to i8
  %7634 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7633, i8* %7634, align 1
  %7635 = and i32 %7628, 255
  %7636 = call i32 @llvm.ctpop.i32(i32 %7635)
  %7637 = trunc i32 %7636 to i8
  %7638 = and i8 %7637, 1
  %7639 = xor i8 %7638, 1
  %7640 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7639, i8* %7640, align 1
  %7641 = xor i64 1, %7624
  %7642 = trunc i64 %7641 to i32
  %7643 = xor i32 %7642, %7628
  %7644 = lshr i32 %7643, 4
  %7645 = trunc i32 %7644 to i8
  %7646 = and i8 %7645, 1
  %7647 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7646, i8* %7647, align 1
  %7648 = icmp eq i32 %7628, 0
  %7649 = zext i1 %7648 to i8
  %7650 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7649, i8* %7650, align 1
  %7651 = lshr i32 %7628, 31
  %7652 = trunc i32 %7651 to i8
  %7653 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7652, i8* %7653, align 1
  %7654 = lshr i32 %7627, 31
  %7655 = xor i32 %7651, %7654
  %7656 = add i32 %7655, %7651
  %7657 = icmp eq i32 %7656, 2
  %7658 = zext i1 %7657 to i8
  %7659 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7658, i8* %7659, align 1
  store %struct.Memory* %loadMem_40858e, %struct.Memory** %MEMORY
  %loadMem_408591 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7660 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7661 = getelementptr inbounds %struct.GPR, %struct.GPR* %7660, i32 0, i32 33
  %7662 = getelementptr inbounds %struct.Reg, %struct.Reg* %7661, i32 0, i32 0
  %PC.i220 = bitcast %union.anon* %7662 to i64*
  %7663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7664 = getelementptr inbounds %struct.GPR, %struct.GPR* %7663, i32 0, i32 1
  %7665 = getelementptr inbounds %struct.Reg, %struct.Reg* %7664, i32 0, i32 0
  %EAX.i221 = bitcast %union.anon* %7665 to i32*
  %7666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7667 = getelementptr inbounds %struct.GPR, %struct.GPR* %7666, i32 0, i32 15
  %7668 = getelementptr inbounds %struct.Reg, %struct.Reg* %7667, i32 0, i32 0
  %RBP.i222 = bitcast %union.anon* %7668 to i64*
  %7669 = load i64, i64* %RBP.i222
  %7670 = sub i64 %7669, 80
  %7671 = load i32, i32* %EAX.i221
  %7672 = zext i32 %7671 to i64
  %7673 = load i64, i64* %PC.i220
  %7674 = add i64 %7673, 3
  store i64 %7674, i64* %PC.i220
  %7675 = inttoptr i64 %7670 to i32*
  store i32 %7671, i32* %7675
  store %struct.Memory* %loadMem_408591, %struct.Memory** %MEMORY
  %loadMem_408594 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7676 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7677 = getelementptr inbounds %struct.GPR, %struct.GPR* %7676, i32 0, i32 33
  %7678 = getelementptr inbounds %struct.Reg, %struct.Reg* %7677, i32 0, i32 0
  %PC.i219 = bitcast %union.anon* %7678 to i64*
  %7679 = load i64, i64* %PC.i219
  %7680 = add i64 %7679, -102
  %7681 = load i64, i64* %PC.i219
  %7682 = add i64 %7681, 5
  store i64 %7682, i64* %PC.i219
  %7683 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7680, i64* %7683, align 8
  store %struct.Memory* %loadMem_408594, %struct.Memory** %MEMORY
  br label %block_.L_40852e

block_.L_408599:                                  ; preds = %block_.L_40852e
  %loadMem_408599 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7685 = getelementptr inbounds %struct.GPR, %struct.GPR* %7684, i32 0, i32 33
  %7686 = getelementptr inbounds %struct.Reg, %struct.Reg* %7685, i32 0, i32 0
  %PC.i216 = bitcast %union.anon* %7686 to i64*
  %7687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7688 = getelementptr inbounds %struct.GPR, %struct.GPR* %7687, i32 0, i32 1
  %7689 = getelementptr inbounds %struct.Reg, %struct.Reg* %7688, i32 0, i32 0
  %RAX.i217 = bitcast %union.anon* %7689 to i64*
  %7690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7691 = getelementptr inbounds %struct.GPR, %struct.GPR* %7690, i32 0, i32 15
  %7692 = getelementptr inbounds %struct.Reg, %struct.Reg* %7691, i32 0, i32 0
  %RBP.i218 = bitcast %union.anon* %7692 to i64*
  %7693 = load i64, i64* %RBP.i218
  %7694 = sub i64 %7693, 48
  %7695 = load i64, i64* %PC.i216
  %7696 = add i64 %7695, 4
  store i64 %7696, i64* %PC.i216
  %7697 = inttoptr i64 %7694 to i64*
  %7698 = load i64, i64* %7697
  store i64 %7698, i64* %RAX.i217, align 8
  store %struct.Memory* %loadMem_408599, %struct.Memory** %MEMORY
  %loadMem_40859d = load %struct.Memory*, %struct.Memory** %MEMORY
  %7699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7700 = getelementptr inbounds %struct.GPR, %struct.GPR* %7699, i32 0, i32 33
  %7701 = getelementptr inbounds %struct.Reg, %struct.Reg* %7700, i32 0, i32 0
  %PC.i213 = bitcast %union.anon* %7701 to i64*
  %7702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7703 = getelementptr inbounds %struct.GPR, %struct.GPR* %7702, i32 0, i32 5
  %7704 = getelementptr inbounds %struct.Reg, %struct.Reg* %7703, i32 0, i32 0
  %RCX.i214 = bitcast %union.anon* %7704 to i64*
  %7705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7706 = getelementptr inbounds %struct.GPR, %struct.GPR* %7705, i32 0, i32 15
  %7707 = getelementptr inbounds %struct.Reg, %struct.Reg* %7706, i32 0, i32 0
  %RBP.i215 = bitcast %union.anon* %7707 to i64*
  %7708 = load i64, i64* %RBP.i215
  %7709 = sub i64 %7708, 76
  %7710 = load i64, i64* %PC.i213
  %7711 = add i64 %7710, 3
  store i64 %7711, i64* %PC.i213
  %7712 = inttoptr i64 %7709 to i32*
  %7713 = load i32, i32* %7712
  %7714 = zext i32 %7713 to i64
  store i64 %7714, i64* %RCX.i214, align 8
  store %struct.Memory* %loadMem_40859d, %struct.Memory** %MEMORY
  %loadMem_4085a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7716 = getelementptr inbounds %struct.GPR, %struct.GPR* %7715, i32 0, i32 33
  %7717 = getelementptr inbounds %struct.Reg, %struct.Reg* %7716, i32 0, i32 0
  %PC.i211 = bitcast %union.anon* %7717 to i64*
  %7718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7719 = getelementptr inbounds %struct.GPR, %struct.GPR* %7718, i32 0, i32 5
  %7720 = getelementptr inbounds %struct.Reg, %struct.Reg* %7719, i32 0, i32 0
  %RCX.i212 = bitcast %union.anon* %7720 to i64*
  %7721 = load i64, i64* %RCX.i212
  %7722 = load i64, i64* %PC.i211
  %7723 = add i64 %7722, 3
  store i64 %7723, i64* %PC.i211
  %7724 = trunc i64 %7721 to i32
  %7725 = sub i32 %7724, 1
  %7726 = zext i32 %7725 to i64
  store i64 %7726, i64* %RCX.i212, align 8
  %7727 = icmp ult i32 %7724, 1
  %7728 = zext i1 %7727 to i8
  %7729 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7728, i8* %7729, align 1
  %7730 = and i32 %7725, 255
  %7731 = call i32 @llvm.ctpop.i32(i32 %7730)
  %7732 = trunc i32 %7731 to i8
  %7733 = and i8 %7732, 1
  %7734 = xor i8 %7733, 1
  %7735 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7734, i8* %7735, align 1
  %7736 = xor i64 1, %7721
  %7737 = trunc i64 %7736 to i32
  %7738 = xor i32 %7737, %7725
  %7739 = lshr i32 %7738, 4
  %7740 = trunc i32 %7739 to i8
  %7741 = and i8 %7740, 1
  %7742 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7741, i8* %7742, align 1
  %7743 = icmp eq i32 %7725, 0
  %7744 = zext i1 %7743 to i8
  %7745 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7744, i8* %7745, align 1
  %7746 = lshr i32 %7725, 31
  %7747 = trunc i32 %7746 to i8
  %7748 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7747, i8* %7748, align 1
  %7749 = lshr i32 %7724, 31
  %7750 = xor i32 %7746, %7749
  %7751 = add i32 %7750, %7749
  %7752 = icmp eq i32 %7751, 2
  %7753 = zext i1 %7752 to i8
  %7754 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7753, i8* %7754, align 1
  store %struct.Memory* %loadMem_4085a0, %struct.Memory** %MEMORY
  %loadMem_4085a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7756 = getelementptr inbounds %struct.GPR, %struct.GPR* %7755, i32 0, i32 33
  %7757 = getelementptr inbounds %struct.Reg, %struct.Reg* %7756, i32 0, i32 0
  %PC.i208 = bitcast %union.anon* %7757 to i64*
  %7758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7759 = getelementptr inbounds %struct.GPR, %struct.GPR* %7758, i32 0, i32 5
  %7760 = getelementptr inbounds %struct.Reg, %struct.Reg* %7759, i32 0, i32 0
  %ECX.i209 = bitcast %union.anon* %7760 to i32*
  %7761 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7762 = getelementptr inbounds %struct.GPR, %struct.GPR* %7761, i32 0, i32 7
  %7763 = getelementptr inbounds %struct.Reg, %struct.Reg* %7762, i32 0, i32 0
  %RDX.i210 = bitcast %union.anon* %7763 to i64*
  %7764 = load i32, i32* %ECX.i209
  %7765 = zext i32 %7764 to i64
  %7766 = load i64, i64* %PC.i208
  %7767 = add i64 %7766, 3
  store i64 %7767, i64* %PC.i208
  %7768 = shl i64 %7765, 32
  %7769 = ashr exact i64 %7768, 32
  store i64 %7769, i64* %RDX.i210, align 8
  store %struct.Memory* %loadMem_4085a3, %struct.Memory** %MEMORY
  %loadMem_4085a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7771 = getelementptr inbounds %struct.GPR, %struct.GPR* %7770, i32 0, i32 33
  %7772 = getelementptr inbounds %struct.Reg, %struct.Reg* %7771, i32 0, i32 0
  %PC.i205 = bitcast %union.anon* %7772 to i64*
  %7773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7774 = getelementptr inbounds %struct.GPR, %struct.GPR* %7773, i32 0, i32 1
  %7775 = getelementptr inbounds %struct.Reg, %struct.Reg* %7774, i32 0, i32 0
  %RAX.i206 = bitcast %union.anon* %7775 to i64*
  %7776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7777 = getelementptr inbounds %struct.GPR, %struct.GPR* %7776, i32 0, i32 7
  %7778 = getelementptr inbounds %struct.Reg, %struct.Reg* %7777, i32 0, i32 0
  %RDX.i207 = bitcast %union.anon* %7778 to i64*
  %7779 = load i64, i64* %RAX.i206
  %7780 = load i64, i64* %RDX.i207
  %7781 = mul i64 %7780, 8
  %7782 = add i64 %7781, %7779
  %7783 = load i64, i64* %PC.i205
  %7784 = add i64 %7783, 4
  store i64 %7784, i64* %PC.i205
  %7785 = inttoptr i64 %7782 to i64*
  %7786 = load i64, i64* %7785
  store i64 %7786, i64* %RAX.i206, align 8
  store %struct.Memory* %loadMem_4085a6, %struct.Memory** %MEMORY
  %loadMem_4085aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %7787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7788 = getelementptr inbounds %struct.GPR, %struct.GPR* %7787, i32 0, i32 33
  %7789 = getelementptr inbounds %struct.Reg, %struct.Reg* %7788, i32 0, i32 0
  %PC.i202 = bitcast %union.anon* %7789 to i64*
  %7790 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7791 = getelementptr inbounds %struct.GPR, %struct.GPR* %7790, i32 0, i32 1
  %7792 = getelementptr inbounds %struct.Reg, %struct.Reg* %7791, i32 0, i32 0
  %RAX.i203 = bitcast %union.anon* %7792 to i64*
  %7793 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7794 = getelementptr inbounds %struct.GPR, %struct.GPR* %7793, i32 0, i32 5
  %7795 = getelementptr inbounds %struct.Reg, %struct.Reg* %7794, i32 0, i32 0
  %RCX.i204 = bitcast %union.anon* %7795 to i64*
  %7796 = load i64, i64* %RAX.i203
  %7797 = add i64 %7796, 12
  %7798 = load i64, i64* %PC.i202
  %7799 = add i64 %7798, 3
  store i64 %7799, i64* %PC.i202
  %7800 = inttoptr i64 %7797 to i32*
  %7801 = load i32, i32* %7800
  %7802 = zext i32 %7801 to i64
  store i64 %7802, i64* %RCX.i204, align 8
  store %struct.Memory* %loadMem_4085aa, %struct.Memory** %MEMORY
  %loadMem_4085ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %7803 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7804 = getelementptr inbounds %struct.GPR, %struct.GPR* %7803, i32 0, i32 33
  %7805 = getelementptr inbounds %struct.Reg, %struct.Reg* %7804, i32 0, i32 0
  %PC.i199 = bitcast %union.anon* %7805 to i64*
  %7806 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7807 = getelementptr inbounds %struct.GPR, %struct.GPR* %7806, i32 0, i32 1
  %7808 = getelementptr inbounds %struct.Reg, %struct.Reg* %7807, i32 0, i32 0
  %RAX.i200 = bitcast %union.anon* %7808 to i64*
  %7809 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7810 = getelementptr inbounds %struct.GPR, %struct.GPR* %7809, i32 0, i32 15
  %7811 = getelementptr inbounds %struct.Reg, %struct.Reg* %7810, i32 0, i32 0
  %RBP.i201 = bitcast %union.anon* %7811 to i64*
  %7812 = load i64, i64* %RBP.i201
  %7813 = sub i64 %7812, 24
  %7814 = load i64, i64* %PC.i199
  %7815 = add i64 %7814, 4
  store i64 %7815, i64* %PC.i199
  %7816 = inttoptr i64 %7813 to i64*
  %7817 = load i64, i64* %7816
  store i64 %7817, i64* %RAX.i200, align 8
  store %struct.Memory* %loadMem_4085ad, %struct.Memory** %MEMORY
  %loadMem_4085b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7819 = getelementptr inbounds %struct.GPR, %struct.GPR* %7818, i32 0, i32 33
  %7820 = getelementptr inbounds %struct.Reg, %struct.Reg* %7819, i32 0, i32 0
  %PC.i196 = bitcast %union.anon* %7820 to i64*
  %7821 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7822 = getelementptr inbounds %struct.GPR, %struct.GPR* %7821, i32 0, i32 1
  %7823 = getelementptr inbounds %struct.Reg, %struct.Reg* %7822, i32 0, i32 0
  %RAX.i197 = bitcast %union.anon* %7823 to i64*
  %7824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7825 = getelementptr inbounds %struct.GPR, %struct.GPR* %7824, i32 0, i32 5
  %7826 = getelementptr inbounds %struct.Reg, %struct.Reg* %7825, i32 0, i32 0
  %RCX.i198 = bitcast %union.anon* %7826 to i64*
  %7827 = load i64, i64* %RCX.i198
  %7828 = load i64, i64* %RAX.i197
  %7829 = add i64 %7828, 364
  %7830 = load i64, i64* %PC.i196
  %7831 = add i64 %7830, 6
  store i64 %7831, i64* %PC.i196
  %7832 = trunc i64 %7827 to i32
  %7833 = inttoptr i64 %7829 to i32*
  %7834 = load i32, i32* %7833
  %7835 = add i32 %7834, %7832
  %7836 = zext i32 %7835 to i64
  store i64 %7836, i64* %RCX.i198, align 8
  %7837 = icmp ult i32 %7835, %7832
  %7838 = icmp ult i32 %7835, %7834
  %7839 = or i1 %7837, %7838
  %7840 = zext i1 %7839 to i8
  %7841 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7840, i8* %7841, align 1
  %7842 = and i32 %7835, 255
  %7843 = call i32 @llvm.ctpop.i32(i32 %7842)
  %7844 = trunc i32 %7843 to i8
  %7845 = and i8 %7844, 1
  %7846 = xor i8 %7845, 1
  %7847 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7846, i8* %7847, align 1
  %7848 = xor i32 %7834, %7832
  %7849 = xor i32 %7848, %7835
  %7850 = lshr i32 %7849, 4
  %7851 = trunc i32 %7850 to i8
  %7852 = and i8 %7851, 1
  %7853 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7852, i8* %7853, align 1
  %7854 = icmp eq i32 %7835, 0
  %7855 = zext i1 %7854 to i8
  %7856 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7855, i8* %7856, align 1
  %7857 = lshr i32 %7835, 31
  %7858 = trunc i32 %7857 to i8
  %7859 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7858, i8* %7859, align 1
  %7860 = lshr i32 %7832, 31
  %7861 = lshr i32 %7834, 31
  %7862 = xor i32 %7857, %7860
  %7863 = xor i32 %7857, %7861
  %7864 = add i32 %7862, %7863
  %7865 = icmp eq i32 %7864, 2
  %7866 = zext i1 %7865 to i8
  %7867 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7866, i8* %7867, align 1
  store %struct.Memory* %loadMem_4085b1, %struct.Memory** %MEMORY
  %loadMem_4085b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7868 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7869 = getelementptr inbounds %struct.GPR, %struct.GPR* %7868, i32 0, i32 33
  %7870 = getelementptr inbounds %struct.Reg, %struct.Reg* %7869, i32 0, i32 0
  %PC.i193 = bitcast %union.anon* %7870 to i64*
  %7871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7872 = getelementptr inbounds %struct.GPR, %struct.GPR* %7871, i32 0, i32 1
  %7873 = getelementptr inbounds %struct.Reg, %struct.Reg* %7872, i32 0, i32 0
  %RAX.i194 = bitcast %union.anon* %7873 to i64*
  %7874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7875 = getelementptr inbounds %struct.GPR, %struct.GPR* %7874, i32 0, i32 15
  %7876 = getelementptr inbounds %struct.Reg, %struct.Reg* %7875, i32 0, i32 0
  %RBP.i195 = bitcast %union.anon* %7876 to i64*
  %7877 = load i64, i64* %RBP.i195
  %7878 = sub i64 %7877, 48
  %7879 = load i64, i64* %PC.i193
  %7880 = add i64 %7879, 4
  store i64 %7880, i64* %PC.i193
  %7881 = inttoptr i64 %7878 to i64*
  %7882 = load i64, i64* %7881
  store i64 %7882, i64* %RAX.i194, align 8
  store %struct.Memory* %loadMem_4085b7, %struct.Memory** %MEMORY
  %loadMem_4085bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %7883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7884 = getelementptr inbounds %struct.GPR, %struct.GPR* %7883, i32 0, i32 33
  %7885 = getelementptr inbounds %struct.Reg, %struct.Reg* %7884, i32 0, i32 0
  %PC.i190 = bitcast %union.anon* %7885 to i64*
  %7886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7887 = getelementptr inbounds %struct.GPR, %struct.GPR* %7886, i32 0, i32 7
  %7888 = getelementptr inbounds %struct.Reg, %struct.Reg* %7887, i32 0, i32 0
  %RDX.i191 = bitcast %union.anon* %7888 to i64*
  %7889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7890 = getelementptr inbounds %struct.GPR, %struct.GPR* %7889, i32 0, i32 15
  %7891 = getelementptr inbounds %struct.Reg, %struct.Reg* %7890, i32 0, i32 0
  %RBP.i192 = bitcast %union.anon* %7891 to i64*
  %7892 = load i64, i64* %RBP.i192
  %7893 = sub i64 %7892, 76
  %7894 = load i64, i64* %PC.i190
  %7895 = add i64 %7894, 4
  store i64 %7895, i64* %PC.i190
  %7896 = inttoptr i64 %7893 to i32*
  %7897 = load i32, i32* %7896
  %7898 = sext i32 %7897 to i64
  store i64 %7898, i64* %RDX.i191, align 8
  store %struct.Memory* %loadMem_4085bb, %struct.Memory** %MEMORY
  %loadMem_4085bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %7899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7900 = getelementptr inbounds %struct.GPR, %struct.GPR* %7899, i32 0, i32 33
  %7901 = getelementptr inbounds %struct.Reg, %struct.Reg* %7900, i32 0, i32 0
  %PC.i187 = bitcast %union.anon* %7901 to i64*
  %7902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7903 = getelementptr inbounds %struct.GPR, %struct.GPR* %7902, i32 0, i32 1
  %7904 = getelementptr inbounds %struct.Reg, %struct.Reg* %7903, i32 0, i32 0
  %RAX.i188 = bitcast %union.anon* %7904 to i64*
  %7905 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7906 = getelementptr inbounds %struct.GPR, %struct.GPR* %7905, i32 0, i32 7
  %7907 = getelementptr inbounds %struct.Reg, %struct.Reg* %7906, i32 0, i32 0
  %RDX.i189 = bitcast %union.anon* %7907 to i64*
  %7908 = load i64, i64* %RAX.i188
  %7909 = load i64, i64* %RDX.i189
  %7910 = mul i64 %7909, 8
  %7911 = add i64 %7910, %7908
  %7912 = load i64, i64* %PC.i187
  %7913 = add i64 %7912, 4
  store i64 %7913, i64* %PC.i187
  %7914 = inttoptr i64 %7911 to i64*
  %7915 = load i64, i64* %7914
  store i64 %7915, i64* %RAX.i188, align 8
  store %struct.Memory* %loadMem_4085bf, %struct.Memory** %MEMORY
  %loadMem_4085c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7917 = getelementptr inbounds %struct.GPR, %struct.GPR* %7916, i32 0, i32 33
  %7918 = getelementptr inbounds %struct.Reg, %struct.Reg* %7917, i32 0, i32 0
  %PC.i184 = bitcast %union.anon* %7918 to i64*
  %7919 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7920 = getelementptr inbounds %struct.GPR, %struct.GPR* %7919, i32 0, i32 1
  %7921 = getelementptr inbounds %struct.Reg, %struct.Reg* %7920, i32 0, i32 0
  %RAX.i185 = bitcast %union.anon* %7921 to i64*
  %7922 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7923 = getelementptr inbounds %struct.GPR, %struct.GPR* %7922, i32 0, i32 9
  %7924 = getelementptr inbounds %struct.Reg, %struct.Reg* %7923, i32 0, i32 0
  %RSI.i186 = bitcast %union.anon* %7924 to i64*
  %7925 = load i64, i64* %RAX.i185
  %7926 = add i64 %7925, 4
  %7927 = load i64, i64* %PC.i184
  %7928 = add i64 %7927, 3
  store i64 %7928, i64* %PC.i184
  %7929 = inttoptr i64 %7926 to i32*
  %7930 = load i32, i32* %7929
  %7931 = zext i32 %7930 to i64
  store i64 %7931, i64* %RSI.i186, align 8
  store %struct.Memory* %loadMem_4085c3, %struct.Memory** %MEMORY
  %loadMem_4085c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7932 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7933 = getelementptr inbounds %struct.GPR, %struct.GPR* %7932, i32 0, i32 33
  %7934 = getelementptr inbounds %struct.Reg, %struct.Reg* %7933, i32 0, i32 0
  %PC.i181 = bitcast %union.anon* %7934 to i64*
  %7935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7936 = getelementptr inbounds %struct.GPR, %struct.GPR* %7935, i32 0, i32 1
  %7937 = getelementptr inbounds %struct.Reg, %struct.Reg* %7936, i32 0, i32 0
  %RAX.i182 = bitcast %union.anon* %7937 to i64*
  %7938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7939 = getelementptr inbounds %struct.GPR, %struct.GPR* %7938, i32 0, i32 15
  %7940 = getelementptr inbounds %struct.Reg, %struct.Reg* %7939, i32 0, i32 0
  %RBP.i183 = bitcast %union.anon* %7940 to i64*
  %7941 = load i64, i64* %RBP.i183
  %7942 = sub i64 %7941, 24
  %7943 = load i64, i64* %PC.i181
  %7944 = add i64 %7943, 4
  store i64 %7944, i64* %PC.i181
  %7945 = inttoptr i64 %7942 to i64*
  %7946 = load i64, i64* %7945
  store i64 %7946, i64* %RAX.i182, align 8
  store %struct.Memory* %loadMem_4085c6, %struct.Memory** %MEMORY
  %loadMem_4085ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %7947 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7948 = getelementptr inbounds %struct.GPR, %struct.GPR* %7947, i32 0, i32 33
  %7949 = getelementptr inbounds %struct.Reg, %struct.Reg* %7948, i32 0, i32 0
  %PC.i178 = bitcast %union.anon* %7949 to i64*
  %7950 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7951 = getelementptr inbounds %struct.GPR, %struct.GPR* %7950, i32 0, i32 1
  %7952 = getelementptr inbounds %struct.Reg, %struct.Reg* %7951, i32 0, i32 0
  %RAX.i179 = bitcast %union.anon* %7952 to i64*
  %7953 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7954 = getelementptr inbounds %struct.GPR, %struct.GPR* %7953, i32 0, i32 9
  %7955 = getelementptr inbounds %struct.Reg, %struct.Reg* %7954, i32 0, i32 0
  %RSI.i180 = bitcast %union.anon* %7955 to i64*
  %7956 = load i64, i64* %RSI.i180
  %7957 = load i64, i64* %RAX.i179
  %7958 = add i64 %7957, 348
  %7959 = load i64, i64* %PC.i178
  %7960 = add i64 %7959, 6
  store i64 %7960, i64* %PC.i178
  %7961 = trunc i64 %7956 to i32
  %7962 = inttoptr i64 %7958 to i32*
  %7963 = load i32, i32* %7962
  %7964 = add i32 %7963, %7961
  %7965 = zext i32 %7964 to i64
  store i64 %7965, i64* %RSI.i180, align 8
  %7966 = icmp ult i32 %7964, %7961
  %7967 = icmp ult i32 %7964, %7963
  %7968 = or i1 %7966, %7967
  %7969 = zext i1 %7968 to i8
  %7970 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7969, i8* %7970, align 1
  %7971 = and i32 %7964, 255
  %7972 = call i32 @llvm.ctpop.i32(i32 %7971)
  %7973 = trunc i32 %7972 to i8
  %7974 = and i8 %7973, 1
  %7975 = xor i8 %7974, 1
  %7976 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7975, i8* %7976, align 1
  %7977 = xor i32 %7963, %7961
  %7978 = xor i32 %7977, %7964
  %7979 = lshr i32 %7978, 4
  %7980 = trunc i32 %7979 to i8
  %7981 = and i8 %7980, 1
  %7982 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7981, i8* %7982, align 1
  %7983 = icmp eq i32 %7964, 0
  %7984 = zext i1 %7983 to i8
  %7985 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7984, i8* %7985, align 1
  %7986 = lshr i32 %7964, 31
  %7987 = trunc i32 %7986 to i8
  %7988 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7987, i8* %7988, align 1
  %7989 = lshr i32 %7961, 31
  %7990 = lshr i32 %7963, 31
  %7991 = xor i32 %7986, %7989
  %7992 = xor i32 %7986, %7990
  %7993 = add i32 %7991, %7992
  %7994 = icmp eq i32 %7993, 2
  %7995 = zext i1 %7994 to i8
  %7996 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7995, i8* %7996, align 1
  store %struct.Memory* %loadMem_4085ca, %struct.Memory** %MEMORY
  %loadMem_4085d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7998 = getelementptr inbounds %struct.GPR, %struct.GPR* %7997, i32 0, i32 33
  %7999 = getelementptr inbounds %struct.Reg, %struct.Reg* %7998, i32 0, i32 0
  %PC.i175 = bitcast %union.anon* %7999 to i64*
  %8000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8001 = getelementptr inbounds %struct.GPR, %struct.GPR* %8000, i32 0, i32 5
  %8002 = getelementptr inbounds %struct.Reg, %struct.Reg* %8001, i32 0, i32 0
  %ECX.i176 = bitcast %union.anon* %8002 to i32*
  %8003 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8004 = getelementptr inbounds %struct.GPR, %struct.GPR* %8003, i32 0, i32 11
  %8005 = getelementptr inbounds %struct.Reg, %struct.Reg* %8004, i32 0, i32 0
  %RDI.i177 = bitcast %union.anon* %8005 to i64*
  %8006 = load i32, i32* %ECX.i176
  %8007 = zext i32 %8006 to i64
  %8008 = load i64, i64* %PC.i175
  %8009 = add i64 %8008, 2
  store i64 %8009, i64* %PC.i175
  %8010 = and i64 %8007, 4294967295
  store i64 %8010, i64* %RDI.i177, align 8
  store %struct.Memory* %loadMem_4085d0, %struct.Memory** %MEMORY
  %loadMem1_4085d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8011 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8012 = getelementptr inbounds %struct.GPR, %struct.GPR* %8011, i32 0, i32 33
  %8013 = getelementptr inbounds %struct.Reg, %struct.Reg* %8012, i32 0, i32 0
  %PC.i174 = bitcast %union.anon* %8013 to i64*
  %8014 = load i64, i64* %PC.i174
  %8015 = add i64 %8014, 130014
  %8016 = load i64, i64* %PC.i174
  %8017 = add i64 %8016, 5
  %8018 = load i64, i64* %PC.i174
  %8019 = add i64 %8018, 5
  store i64 %8019, i64* %PC.i174
  %8020 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %8021 = load i64, i64* %8020, align 8
  %8022 = add i64 %8021, -8
  %8023 = inttoptr i64 %8022 to i64*
  store i64 %8017, i64* %8023
  store i64 %8022, i64* %8020, align 8
  %8024 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %8015, i64* %8024, align 8
  store %struct.Memory* %loadMem1_4085d2, %struct.Memory** %MEMORY
  %loadMem2_4085d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4085d2 = load i64, i64* %3
  %call2_4085d2 = call %struct.Memory* @sub_4281b0.ILogsum(%struct.State* %0, i64 %loadPC_4085d2, %struct.Memory* %loadMem2_4085d2)
  store %struct.Memory* %call2_4085d2, %struct.Memory** %MEMORY
  %loadMem_4085d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8025 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8026 = getelementptr inbounds %struct.GPR, %struct.GPR* %8025, i32 0, i32 33
  %8027 = getelementptr inbounds %struct.Reg, %struct.Reg* %8026, i32 0, i32 0
  %PC.i171 = bitcast %union.anon* %8027 to i64*
  %8028 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8029 = getelementptr inbounds %struct.GPR, %struct.GPR* %8028, i32 0, i32 7
  %8030 = getelementptr inbounds %struct.Reg, %struct.Reg* %8029, i32 0, i32 0
  %RDX.i172 = bitcast %union.anon* %8030 to i64*
  %8031 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8032 = getelementptr inbounds %struct.GPR, %struct.GPR* %8031, i32 0, i32 15
  %8033 = getelementptr inbounds %struct.Reg, %struct.Reg* %8032, i32 0, i32 0
  %RBP.i173 = bitcast %union.anon* %8033 to i64*
  %8034 = load i64, i64* %RBP.i173
  %8035 = sub i64 %8034, 48
  %8036 = load i64, i64* %PC.i171
  %8037 = add i64 %8036, 4
  store i64 %8037, i64* %PC.i171
  %8038 = inttoptr i64 %8035 to i64*
  %8039 = load i64, i64* %8038
  store i64 %8039, i64* %RDX.i172, align 8
  store %struct.Memory* %loadMem_4085d7, %struct.Memory** %MEMORY
  %loadMem_4085db = load %struct.Memory*, %struct.Memory** %MEMORY
  %8040 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8041 = getelementptr inbounds %struct.GPR, %struct.GPR* %8040, i32 0, i32 33
  %8042 = getelementptr inbounds %struct.Reg, %struct.Reg* %8041, i32 0, i32 0
  %PC.i168 = bitcast %union.anon* %8042 to i64*
  %8043 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8044 = getelementptr inbounds %struct.GPR, %struct.GPR* %8043, i32 0, i32 15
  %8045 = getelementptr inbounds %struct.Reg, %struct.Reg* %8044, i32 0, i32 0
  %RBP.i169 = bitcast %union.anon* %8045 to i64*
  %8046 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8047 = getelementptr inbounds %struct.GPR, %struct.GPR* %8046, i32 0, i32 17
  %8048 = getelementptr inbounds %struct.Reg, %struct.Reg* %8047, i32 0, i32 0
  %R8.i170 = bitcast %union.anon* %8048 to i64*
  %8049 = load i64, i64* %RBP.i169
  %8050 = sub i64 %8049, 76
  %8051 = load i64, i64* %PC.i168
  %8052 = add i64 %8051, 4
  store i64 %8052, i64* %PC.i168
  %8053 = inttoptr i64 %8050 to i32*
  %8054 = load i32, i32* %8053
  %8055 = sext i32 %8054 to i64
  store i64 %8055, i64* %R8.i170, align 8
  store %struct.Memory* %loadMem_4085db, %struct.Memory** %MEMORY
  %loadMem_4085df = load %struct.Memory*, %struct.Memory** %MEMORY
  %8056 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8057 = getelementptr inbounds %struct.GPR, %struct.GPR* %8056, i32 0, i32 33
  %8058 = getelementptr inbounds %struct.Reg, %struct.Reg* %8057, i32 0, i32 0
  %PC.i165 = bitcast %union.anon* %8058 to i64*
  %8059 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8060 = getelementptr inbounds %struct.GPR, %struct.GPR* %8059, i32 0, i32 7
  %8061 = getelementptr inbounds %struct.Reg, %struct.Reg* %8060, i32 0, i32 0
  %RDX.i166 = bitcast %union.anon* %8061 to i64*
  %8062 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8063 = getelementptr inbounds %struct.GPR, %struct.GPR* %8062, i32 0, i32 17
  %8064 = getelementptr inbounds %struct.Reg, %struct.Reg* %8063, i32 0, i32 0
  %R8.i167 = bitcast %union.anon* %8064 to i64*
  %8065 = load i64, i64* %RDX.i166
  %8066 = load i64, i64* %R8.i167
  %8067 = mul i64 %8066, 8
  %8068 = add i64 %8067, %8065
  %8069 = load i64, i64* %PC.i165
  %8070 = add i64 %8069, 4
  store i64 %8070, i64* %PC.i165
  %8071 = inttoptr i64 %8068 to i64*
  %8072 = load i64, i64* %8071
  store i64 %8072, i64* %RDX.i166, align 8
  store %struct.Memory* %loadMem_4085df, %struct.Memory** %MEMORY
  %loadMem_4085e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8073 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8074 = getelementptr inbounds %struct.GPR, %struct.GPR* %8073, i32 0, i32 33
  %8075 = getelementptr inbounds %struct.Reg, %struct.Reg* %8074, i32 0, i32 0
  %PC.i162 = bitcast %union.anon* %8075 to i64*
  %8076 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8077 = getelementptr inbounds %struct.GPR, %struct.GPR* %8076, i32 0, i32 1
  %8078 = getelementptr inbounds %struct.Reg, %struct.Reg* %8077, i32 0, i32 0
  %EAX.i163 = bitcast %union.anon* %8078 to i32*
  %8079 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8080 = getelementptr inbounds %struct.GPR, %struct.GPR* %8079, i32 0, i32 7
  %8081 = getelementptr inbounds %struct.Reg, %struct.Reg* %8080, i32 0, i32 0
  %RDX.i164 = bitcast %union.anon* %8081 to i64*
  %8082 = load i64, i64* %RDX.i164
  %8083 = add i64 %8082, 12
  %8084 = load i32, i32* %EAX.i163
  %8085 = zext i32 %8084 to i64
  %8086 = load i64, i64* %PC.i162
  %8087 = add i64 %8086, 3
  store i64 %8087, i64* %PC.i162
  %8088 = inttoptr i64 %8083 to i32*
  store i32 %8084, i32* %8088
  store %struct.Memory* %loadMem_4085e3, %struct.Memory** %MEMORY
  %loadMem_4085e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8089 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8090 = getelementptr inbounds %struct.GPR, %struct.GPR* %8089, i32 0, i32 33
  %8091 = getelementptr inbounds %struct.Reg, %struct.Reg* %8090, i32 0, i32 0
  %PC.i159 = bitcast %union.anon* %8091 to i64*
  %8092 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8093 = getelementptr inbounds %struct.GPR, %struct.GPR* %8092, i32 0, i32 7
  %8094 = getelementptr inbounds %struct.Reg, %struct.Reg* %8093, i32 0, i32 0
  %RDX.i160 = bitcast %union.anon* %8094 to i64*
  %8095 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8096 = getelementptr inbounds %struct.GPR, %struct.GPR* %8095, i32 0, i32 15
  %8097 = getelementptr inbounds %struct.Reg, %struct.Reg* %8096, i32 0, i32 0
  %RBP.i161 = bitcast %union.anon* %8097 to i64*
  %8098 = load i64, i64* %RBP.i161
  %8099 = sub i64 %8098, 48
  %8100 = load i64, i64* %PC.i159
  %8101 = add i64 %8100, 4
  store i64 %8101, i64* %PC.i159
  %8102 = inttoptr i64 %8099 to i64*
  %8103 = load i64, i64* %8102
  store i64 %8103, i64* %RDX.i160, align 8
  store %struct.Memory* %loadMem_4085e6, %struct.Memory** %MEMORY
  %loadMem_4085ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %8104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8105 = getelementptr inbounds %struct.GPR, %struct.GPR* %8104, i32 0, i32 33
  %8106 = getelementptr inbounds %struct.Reg, %struct.Reg* %8105, i32 0, i32 0
  %PC.i156 = bitcast %union.anon* %8106 to i64*
  %8107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8108 = getelementptr inbounds %struct.GPR, %struct.GPR* %8107, i32 0, i32 15
  %8109 = getelementptr inbounds %struct.Reg, %struct.Reg* %8108, i32 0, i32 0
  %RBP.i157 = bitcast %union.anon* %8109 to i64*
  %8110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8111 = getelementptr inbounds %struct.GPR, %struct.GPR* %8110, i32 0, i32 17
  %8112 = getelementptr inbounds %struct.Reg, %struct.Reg* %8111, i32 0, i32 0
  %R8.i158 = bitcast %union.anon* %8112 to i64*
  %8113 = load i64, i64* %RBP.i157
  %8114 = sub i64 %8113, 76
  %8115 = load i64, i64* %PC.i156
  %8116 = add i64 %8115, 4
  store i64 %8116, i64* %PC.i156
  %8117 = inttoptr i64 %8114 to i32*
  %8118 = load i32, i32* %8117
  %8119 = sext i32 %8118 to i64
  store i64 %8119, i64* %R8.i158, align 8
  store %struct.Memory* %loadMem_4085ea, %struct.Memory** %MEMORY
  %loadMem_4085ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %8120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8121 = getelementptr inbounds %struct.GPR, %struct.GPR* %8120, i32 0, i32 33
  %8122 = getelementptr inbounds %struct.Reg, %struct.Reg* %8121, i32 0, i32 0
  %PC.i153 = bitcast %union.anon* %8122 to i64*
  %8123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8124 = getelementptr inbounds %struct.GPR, %struct.GPR* %8123, i32 0, i32 7
  %8125 = getelementptr inbounds %struct.Reg, %struct.Reg* %8124, i32 0, i32 0
  %RDX.i154 = bitcast %union.anon* %8125 to i64*
  %8126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8127 = getelementptr inbounds %struct.GPR, %struct.GPR* %8126, i32 0, i32 17
  %8128 = getelementptr inbounds %struct.Reg, %struct.Reg* %8127, i32 0, i32 0
  %R8.i155 = bitcast %union.anon* %8128 to i64*
  %8129 = load i64, i64* %RDX.i154
  %8130 = load i64, i64* %R8.i155
  %8131 = mul i64 %8130, 8
  %8132 = add i64 %8131, %8129
  %8133 = load i64, i64* %PC.i153
  %8134 = add i64 %8133, 4
  store i64 %8134, i64* %PC.i153
  %8135 = inttoptr i64 %8132 to i64*
  %8136 = load i64, i64* %8135
  store i64 %8136, i64* %RDX.i154, align 8
  store %struct.Memory* %loadMem_4085ee, %struct.Memory** %MEMORY
  %loadMem_4085f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8138 = getelementptr inbounds %struct.GPR, %struct.GPR* %8137, i32 0, i32 33
  %8139 = getelementptr inbounds %struct.Reg, %struct.Reg* %8138, i32 0, i32 0
  %PC.i150 = bitcast %union.anon* %8139 to i64*
  %8140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8141 = getelementptr inbounds %struct.GPR, %struct.GPR* %8140, i32 0, i32 1
  %8142 = getelementptr inbounds %struct.Reg, %struct.Reg* %8141, i32 0, i32 0
  %RAX.i151 = bitcast %union.anon* %8142 to i64*
  %8143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8144 = getelementptr inbounds %struct.GPR, %struct.GPR* %8143, i32 0, i32 7
  %8145 = getelementptr inbounds %struct.Reg, %struct.Reg* %8144, i32 0, i32 0
  %RDX.i152 = bitcast %union.anon* %8145 to i64*
  %8146 = load i64, i64* %RDX.i152
  %8147 = add i64 %8146, 16
  %8148 = load i64, i64* %PC.i150
  %8149 = add i64 %8148, 3
  store i64 %8149, i64* %PC.i150
  %8150 = inttoptr i64 %8147 to i32*
  %8151 = load i32, i32* %8150
  %8152 = zext i32 %8151 to i64
  store i64 %8152, i64* %RAX.i151, align 8
  store %struct.Memory* %loadMem_4085f2, %struct.Memory** %MEMORY
  %loadMem_4085f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8154 = getelementptr inbounds %struct.GPR, %struct.GPR* %8153, i32 0, i32 33
  %8155 = getelementptr inbounds %struct.Reg, %struct.Reg* %8154, i32 0, i32 0
  %PC.i147 = bitcast %union.anon* %8155 to i64*
  %8156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8157 = getelementptr inbounds %struct.GPR, %struct.GPR* %8156, i32 0, i32 7
  %8158 = getelementptr inbounds %struct.Reg, %struct.Reg* %8157, i32 0, i32 0
  %RDX.i148 = bitcast %union.anon* %8158 to i64*
  %8159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8160 = getelementptr inbounds %struct.GPR, %struct.GPR* %8159, i32 0, i32 15
  %8161 = getelementptr inbounds %struct.Reg, %struct.Reg* %8160, i32 0, i32 0
  %RBP.i149 = bitcast %union.anon* %8161 to i64*
  %8162 = load i64, i64* %RBP.i149
  %8163 = sub i64 %8162, 24
  %8164 = load i64, i64* %PC.i147
  %8165 = add i64 %8164, 4
  store i64 %8165, i64* %PC.i147
  %8166 = inttoptr i64 %8163 to i64*
  %8167 = load i64, i64* %8166
  store i64 %8167, i64* %RDX.i148, align 8
  store %struct.Memory* %loadMem_4085f5, %struct.Memory** %MEMORY
  %loadMem_4085f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8169 = getelementptr inbounds %struct.GPR, %struct.GPR* %8168, i32 0, i32 33
  %8170 = getelementptr inbounds %struct.Reg, %struct.Reg* %8169, i32 0, i32 0
  %PC.i144 = bitcast %union.anon* %8170 to i64*
  %8171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8172 = getelementptr inbounds %struct.GPR, %struct.GPR* %8171, i32 0, i32 1
  %8173 = getelementptr inbounds %struct.Reg, %struct.Reg* %8172, i32 0, i32 0
  %RAX.i145 = bitcast %union.anon* %8173 to i64*
  %8174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8175 = getelementptr inbounds %struct.GPR, %struct.GPR* %8174, i32 0, i32 7
  %8176 = getelementptr inbounds %struct.Reg, %struct.Reg* %8175, i32 0, i32 0
  %RDX.i146 = bitcast %union.anon* %8176 to i64*
  %8177 = load i64, i64* %RAX.i145
  %8178 = load i64, i64* %RDX.i146
  %8179 = add i64 %8178, 336
  %8180 = load i64, i64* %PC.i144
  %8181 = add i64 %8180, 6
  store i64 %8181, i64* %PC.i144
  %8182 = trunc i64 %8177 to i32
  %8183 = inttoptr i64 %8179 to i32*
  %8184 = load i32, i32* %8183
  %8185 = add i32 %8184, %8182
  %8186 = zext i32 %8185 to i64
  store i64 %8186, i64* %RAX.i145, align 8
  %8187 = icmp ult i32 %8185, %8182
  %8188 = icmp ult i32 %8185, %8184
  %8189 = or i1 %8187, %8188
  %8190 = zext i1 %8189 to i8
  %8191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8190, i8* %8191, align 1
  %8192 = and i32 %8185, 255
  %8193 = call i32 @llvm.ctpop.i32(i32 %8192)
  %8194 = trunc i32 %8193 to i8
  %8195 = and i8 %8194, 1
  %8196 = xor i8 %8195, 1
  %8197 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8196, i8* %8197, align 1
  %8198 = xor i32 %8184, %8182
  %8199 = xor i32 %8198, %8185
  %8200 = lshr i32 %8199, 4
  %8201 = trunc i32 %8200 to i8
  %8202 = and i8 %8201, 1
  %8203 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8202, i8* %8203, align 1
  %8204 = icmp eq i32 %8185, 0
  %8205 = zext i1 %8204 to i8
  %8206 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8205, i8* %8206, align 1
  %8207 = lshr i32 %8185, 31
  %8208 = trunc i32 %8207 to i8
  %8209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8208, i8* %8209, align 1
  %8210 = lshr i32 %8182, 31
  %8211 = lshr i32 %8184, 31
  %8212 = xor i32 %8207, %8210
  %8213 = xor i32 %8207, %8211
  %8214 = add i32 %8212, %8213
  %8215 = icmp eq i32 %8214, 2
  %8216 = zext i1 %8215 to i8
  %8217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8216, i8* %8217, align 1
  store %struct.Memory* %loadMem_4085f9, %struct.Memory** %MEMORY
  %loadMem_4085ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %8218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8219 = getelementptr inbounds %struct.GPR, %struct.GPR* %8218, i32 0, i32 33
  %8220 = getelementptr inbounds %struct.Reg, %struct.Reg* %8219, i32 0, i32 0
  %PC.i141 = bitcast %union.anon* %8220 to i64*
  %8221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8222 = getelementptr inbounds %struct.GPR, %struct.GPR* %8221, i32 0, i32 7
  %8223 = getelementptr inbounds %struct.Reg, %struct.Reg* %8222, i32 0, i32 0
  %RDX.i142 = bitcast %union.anon* %8223 to i64*
  %8224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8225 = getelementptr inbounds %struct.GPR, %struct.GPR* %8224, i32 0, i32 15
  %8226 = getelementptr inbounds %struct.Reg, %struct.Reg* %8225, i32 0, i32 0
  %RBP.i143 = bitcast %union.anon* %8226 to i64*
  %8227 = load i64, i64* %RBP.i143
  %8228 = sub i64 %8227, 48
  %8229 = load i64, i64* %PC.i141
  %8230 = add i64 %8229, 4
  store i64 %8230, i64* %PC.i141
  %8231 = inttoptr i64 %8228 to i64*
  %8232 = load i64, i64* %8231
  store i64 %8232, i64* %RDX.i142, align 8
  store %struct.Memory* %loadMem_4085ff, %struct.Memory** %MEMORY
  %loadMem_408603 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8234 = getelementptr inbounds %struct.GPR, %struct.GPR* %8233, i32 0, i32 33
  %8235 = getelementptr inbounds %struct.Reg, %struct.Reg* %8234, i32 0, i32 0
  %PC.i138 = bitcast %union.anon* %8235 to i64*
  %8236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8237 = getelementptr inbounds %struct.GPR, %struct.GPR* %8236, i32 0, i32 15
  %8238 = getelementptr inbounds %struct.Reg, %struct.Reg* %8237, i32 0, i32 0
  %RBP.i139 = bitcast %union.anon* %8238 to i64*
  %8239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8240 = getelementptr inbounds %struct.GPR, %struct.GPR* %8239, i32 0, i32 17
  %8241 = getelementptr inbounds %struct.Reg, %struct.Reg* %8240, i32 0, i32 0
  %R8.i140 = bitcast %union.anon* %8241 to i64*
  %8242 = load i64, i64* %RBP.i139
  %8243 = sub i64 %8242, 76
  %8244 = load i64, i64* %PC.i138
  %8245 = add i64 %8244, 4
  store i64 %8245, i64* %PC.i138
  %8246 = inttoptr i64 %8243 to i32*
  %8247 = load i32, i32* %8246
  %8248 = sext i32 %8247 to i64
  store i64 %8248, i64* %R8.i140, align 8
  store %struct.Memory* %loadMem_408603, %struct.Memory** %MEMORY
  %loadMem_408607 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8250 = getelementptr inbounds %struct.GPR, %struct.GPR* %8249, i32 0, i32 33
  %8251 = getelementptr inbounds %struct.Reg, %struct.Reg* %8250, i32 0, i32 0
  %PC.i135 = bitcast %union.anon* %8251 to i64*
  %8252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8253 = getelementptr inbounds %struct.GPR, %struct.GPR* %8252, i32 0, i32 7
  %8254 = getelementptr inbounds %struct.Reg, %struct.Reg* %8253, i32 0, i32 0
  %RDX.i136 = bitcast %union.anon* %8254 to i64*
  %8255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8256 = getelementptr inbounds %struct.GPR, %struct.GPR* %8255, i32 0, i32 17
  %8257 = getelementptr inbounds %struct.Reg, %struct.Reg* %8256, i32 0, i32 0
  %R8.i137 = bitcast %union.anon* %8257 to i64*
  %8258 = load i64, i64* %RDX.i136
  %8259 = load i64, i64* %R8.i137
  %8260 = mul i64 %8259, 8
  %8261 = add i64 %8260, %8258
  %8262 = load i64, i64* %PC.i135
  %8263 = add i64 %8262, 4
  store i64 %8263, i64* %PC.i135
  %8264 = inttoptr i64 %8261 to i64*
  %8265 = load i64, i64* %8264
  store i64 %8265, i64* %RDX.i136, align 8
  store %struct.Memory* %loadMem_408607, %struct.Memory** %MEMORY
  %loadMem_40860b = load %struct.Memory*, %struct.Memory** %MEMORY
  %8266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8267 = getelementptr inbounds %struct.GPR, %struct.GPR* %8266, i32 0, i32 33
  %8268 = getelementptr inbounds %struct.Reg, %struct.Reg* %8267, i32 0, i32 0
  %PC.i132 = bitcast %union.anon* %8268 to i64*
  %8269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8270 = getelementptr inbounds %struct.GPR, %struct.GPR* %8269, i32 0, i32 5
  %8271 = getelementptr inbounds %struct.Reg, %struct.Reg* %8270, i32 0, i32 0
  %RCX.i133 = bitcast %union.anon* %8271 to i64*
  %8272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8273 = getelementptr inbounds %struct.GPR, %struct.GPR* %8272, i32 0, i32 7
  %8274 = getelementptr inbounds %struct.Reg, %struct.Reg* %8273, i32 0, i32 0
  %RDX.i134 = bitcast %union.anon* %8274 to i64*
  %8275 = load i64, i64* %RDX.i134
  %8276 = add i64 %8275, 12
  %8277 = load i64, i64* %PC.i132
  %8278 = add i64 %8277, 3
  store i64 %8278, i64* %PC.i132
  %8279 = inttoptr i64 %8276 to i32*
  %8280 = load i32, i32* %8279
  %8281 = zext i32 %8280 to i64
  store i64 %8281, i64* %RCX.i133, align 8
  store %struct.Memory* %loadMem_40860b, %struct.Memory** %MEMORY
  %loadMem_40860e = load %struct.Memory*, %struct.Memory** %MEMORY
  %8282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8283 = getelementptr inbounds %struct.GPR, %struct.GPR* %8282, i32 0, i32 33
  %8284 = getelementptr inbounds %struct.Reg, %struct.Reg* %8283, i32 0, i32 0
  %PC.i129 = bitcast %union.anon* %8284 to i64*
  %8285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8286 = getelementptr inbounds %struct.GPR, %struct.GPR* %8285, i32 0, i32 7
  %8287 = getelementptr inbounds %struct.Reg, %struct.Reg* %8286, i32 0, i32 0
  %RDX.i130 = bitcast %union.anon* %8287 to i64*
  %8288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8289 = getelementptr inbounds %struct.GPR, %struct.GPR* %8288, i32 0, i32 15
  %8290 = getelementptr inbounds %struct.Reg, %struct.Reg* %8289, i32 0, i32 0
  %RBP.i131 = bitcast %union.anon* %8290 to i64*
  %8291 = load i64, i64* %RBP.i131
  %8292 = sub i64 %8291, 24
  %8293 = load i64, i64* %PC.i129
  %8294 = add i64 %8293, 4
  store i64 %8294, i64* %PC.i129
  %8295 = inttoptr i64 %8292 to i64*
  %8296 = load i64, i64* %8295
  store i64 %8296, i64* %RDX.i130, align 8
  store %struct.Memory* %loadMem_40860e, %struct.Memory** %MEMORY
  %loadMem_408612 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8298 = getelementptr inbounds %struct.GPR, %struct.GPR* %8297, i32 0, i32 33
  %8299 = getelementptr inbounds %struct.Reg, %struct.Reg* %8298, i32 0, i32 0
  %PC.i126 = bitcast %union.anon* %8299 to i64*
  %8300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8301 = getelementptr inbounds %struct.GPR, %struct.GPR* %8300, i32 0, i32 5
  %8302 = getelementptr inbounds %struct.Reg, %struct.Reg* %8301, i32 0, i32 0
  %RCX.i127 = bitcast %union.anon* %8302 to i64*
  %8303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8304 = getelementptr inbounds %struct.GPR, %struct.GPR* %8303, i32 0, i32 7
  %8305 = getelementptr inbounds %struct.Reg, %struct.Reg* %8304, i32 0, i32 0
  %RDX.i128 = bitcast %union.anon* %8305 to i64*
  %8306 = load i64, i64* %RCX.i127
  %8307 = load i64, i64* %RDX.i128
  %8308 = add i64 %8307, 360
  %8309 = load i64, i64* %PC.i126
  %8310 = add i64 %8309, 6
  store i64 %8310, i64* %PC.i126
  %8311 = trunc i64 %8306 to i32
  %8312 = inttoptr i64 %8308 to i32*
  %8313 = load i32, i32* %8312
  %8314 = add i32 %8313, %8311
  %8315 = zext i32 %8314 to i64
  store i64 %8315, i64* %RCX.i127, align 8
  %8316 = icmp ult i32 %8314, %8311
  %8317 = icmp ult i32 %8314, %8313
  %8318 = or i1 %8316, %8317
  %8319 = zext i1 %8318 to i8
  %8320 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8319, i8* %8320, align 1
  %8321 = and i32 %8314, 255
  %8322 = call i32 @llvm.ctpop.i32(i32 %8321)
  %8323 = trunc i32 %8322 to i8
  %8324 = and i8 %8323, 1
  %8325 = xor i8 %8324, 1
  %8326 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8325, i8* %8326, align 1
  %8327 = xor i32 %8313, %8311
  %8328 = xor i32 %8327, %8314
  %8329 = lshr i32 %8328, 4
  %8330 = trunc i32 %8329 to i8
  %8331 = and i8 %8330, 1
  %8332 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8331, i8* %8332, align 1
  %8333 = icmp eq i32 %8314, 0
  %8334 = zext i1 %8333 to i8
  %8335 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8334, i8* %8335, align 1
  %8336 = lshr i32 %8314, 31
  %8337 = trunc i32 %8336 to i8
  %8338 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8337, i8* %8338, align 1
  %8339 = lshr i32 %8311, 31
  %8340 = lshr i32 %8313, 31
  %8341 = xor i32 %8336, %8339
  %8342 = xor i32 %8336, %8340
  %8343 = add i32 %8341, %8342
  %8344 = icmp eq i32 %8343, 2
  %8345 = zext i1 %8344 to i8
  %8346 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8345, i8* %8346, align 1
  store %struct.Memory* %loadMem_408612, %struct.Memory** %MEMORY
  %loadMem_408618 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8348 = getelementptr inbounds %struct.GPR, %struct.GPR* %8347, i32 0, i32 33
  %8349 = getelementptr inbounds %struct.Reg, %struct.Reg* %8348, i32 0, i32 0
  %PC.i123 = bitcast %union.anon* %8349 to i64*
  %8350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8351 = getelementptr inbounds %struct.GPR, %struct.GPR* %8350, i32 0, i32 1
  %8352 = getelementptr inbounds %struct.Reg, %struct.Reg* %8351, i32 0, i32 0
  %EAX.i124 = bitcast %union.anon* %8352 to i32*
  %8353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8354 = getelementptr inbounds %struct.GPR, %struct.GPR* %8353, i32 0, i32 11
  %8355 = getelementptr inbounds %struct.Reg, %struct.Reg* %8354, i32 0, i32 0
  %RDI.i125 = bitcast %union.anon* %8355 to i64*
  %8356 = load i32, i32* %EAX.i124
  %8357 = zext i32 %8356 to i64
  %8358 = load i64, i64* %PC.i123
  %8359 = add i64 %8358, 2
  store i64 %8359, i64* %PC.i123
  %8360 = and i64 %8357, 4294967295
  store i64 %8360, i64* %RDI.i125, align 8
  store %struct.Memory* %loadMem_408618, %struct.Memory** %MEMORY
  %loadMem_40861a = load %struct.Memory*, %struct.Memory** %MEMORY
  %8361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8362 = getelementptr inbounds %struct.GPR, %struct.GPR* %8361, i32 0, i32 33
  %8363 = getelementptr inbounds %struct.Reg, %struct.Reg* %8362, i32 0, i32 0
  %PC.i120 = bitcast %union.anon* %8363 to i64*
  %8364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8365 = getelementptr inbounds %struct.GPR, %struct.GPR* %8364, i32 0, i32 5
  %8366 = getelementptr inbounds %struct.Reg, %struct.Reg* %8365, i32 0, i32 0
  %ECX.i121 = bitcast %union.anon* %8366 to i32*
  %8367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8368 = getelementptr inbounds %struct.GPR, %struct.GPR* %8367, i32 0, i32 9
  %8369 = getelementptr inbounds %struct.Reg, %struct.Reg* %8368, i32 0, i32 0
  %RSI.i122 = bitcast %union.anon* %8369 to i64*
  %8370 = load i32, i32* %ECX.i121
  %8371 = zext i32 %8370 to i64
  %8372 = load i64, i64* %PC.i120
  %8373 = add i64 %8372, 2
  store i64 %8373, i64* %PC.i120
  %8374 = and i64 %8371, 4294967295
  store i64 %8374, i64* %RSI.i122, align 8
  store %struct.Memory* %loadMem_40861a, %struct.Memory** %MEMORY
  %loadMem1_40861c = load %struct.Memory*, %struct.Memory** %MEMORY
  %8375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8376 = getelementptr inbounds %struct.GPR, %struct.GPR* %8375, i32 0, i32 33
  %8377 = getelementptr inbounds %struct.Reg, %struct.Reg* %8376, i32 0, i32 0
  %PC.i119 = bitcast %union.anon* %8377 to i64*
  %8378 = load i64, i64* %PC.i119
  %8379 = add i64 %8378, 129940
  %8380 = load i64, i64* %PC.i119
  %8381 = add i64 %8380, 5
  %8382 = load i64, i64* %PC.i119
  %8383 = add i64 %8382, 5
  store i64 %8383, i64* %PC.i119
  %8384 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %8385 = load i64, i64* %8384, align 8
  %8386 = add i64 %8385, -8
  %8387 = inttoptr i64 %8386 to i64*
  store i64 %8381, i64* %8387
  store i64 %8386, i64* %8384, align 8
  %8388 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %8379, i64* %8388, align 8
  store %struct.Memory* %loadMem1_40861c, %struct.Memory** %MEMORY
  %loadMem2_40861c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40861c = load i64, i64* %3
  %call2_40861c = call %struct.Memory* @sub_4281b0.ILogsum(%struct.State* %0, i64 %loadPC_40861c, %struct.Memory* %loadMem2_40861c)
  store %struct.Memory* %call2_40861c, %struct.Memory** %MEMORY
  %loadMem_408621 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8390 = getelementptr inbounds %struct.GPR, %struct.GPR* %8389, i32 0, i32 33
  %8391 = getelementptr inbounds %struct.Reg, %struct.Reg* %8390, i32 0, i32 0
  %PC.i116 = bitcast %union.anon* %8391 to i64*
  %8392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8393 = getelementptr inbounds %struct.GPR, %struct.GPR* %8392, i32 0, i32 7
  %8394 = getelementptr inbounds %struct.Reg, %struct.Reg* %8393, i32 0, i32 0
  %RDX.i117 = bitcast %union.anon* %8394 to i64*
  %8395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8396 = getelementptr inbounds %struct.GPR, %struct.GPR* %8395, i32 0, i32 15
  %8397 = getelementptr inbounds %struct.Reg, %struct.Reg* %8396, i32 0, i32 0
  %RBP.i118 = bitcast %union.anon* %8397 to i64*
  %8398 = load i64, i64* %RBP.i118
  %8399 = sub i64 %8398, 48
  %8400 = load i64, i64* %PC.i116
  %8401 = add i64 %8400, 4
  store i64 %8401, i64* %PC.i116
  %8402 = inttoptr i64 %8399 to i64*
  %8403 = load i64, i64* %8402
  store i64 %8403, i64* %RDX.i117, align 8
  store %struct.Memory* %loadMem_408621, %struct.Memory** %MEMORY
  %loadMem_408625 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8405 = getelementptr inbounds %struct.GPR, %struct.GPR* %8404, i32 0, i32 33
  %8406 = getelementptr inbounds %struct.Reg, %struct.Reg* %8405, i32 0, i32 0
  %PC.i113 = bitcast %union.anon* %8406 to i64*
  %8407 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8408 = getelementptr inbounds %struct.GPR, %struct.GPR* %8407, i32 0, i32 15
  %8409 = getelementptr inbounds %struct.Reg, %struct.Reg* %8408, i32 0, i32 0
  %RBP.i114 = bitcast %union.anon* %8409 to i64*
  %8410 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8411 = getelementptr inbounds %struct.GPR, %struct.GPR* %8410, i32 0, i32 17
  %8412 = getelementptr inbounds %struct.Reg, %struct.Reg* %8411, i32 0, i32 0
  %R8.i115 = bitcast %union.anon* %8412 to i64*
  %8413 = load i64, i64* %RBP.i114
  %8414 = sub i64 %8413, 76
  %8415 = load i64, i64* %PC.i113
  %8416 = add i64 %8415, 4
  store i64 %8416, i64* %PC.i113
  %8417 = inttoptr i64 %8414 to i32*
  %8418 = load i32, i32* %8417
  %8419 = sext i32 %8418 to i64
  store i64 %8419, i64* %R8.i115, align 8
  store %struct.Memory* %loadMem_408625, %struct.Memory** %MEMORY
  %loadMem_408629 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8421 = getelementptr inbounds %struct.GPR, %struct.GPR* %8420, i32 0, i32 33
  %8422 = getelementptr inbounds %struct.Reg, %struct.Reg* %8421, i32 0, i32 0
  %PC.i110 = bitcast %union.anon* %8422 to i64*
  %8423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8424 = getelementptr inbounds %struct.GPR, %struct.GPR* %8423, i32 0, i32 7
  %8425 = getelementptr inbounds %struct.Reg, %struct.Reg* %8424, i32 0, i32 0
  %RDX.i111 = bitcast %union.anon* %8425 to i64*
  %8426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8427 = getelementptr inbounds %struct.GPR, %struct.GPR* %8426, i32 0, i32 17
  %8428 = getelementptr inbounds %struct.Reg, %struct.Reg* %8427, i32 0, i32 0
  %R8.i112 = bitcast %union.anon* %8428 to i64*
  %8429 = load i64, i64* %RDX.i111
  %8430 = load i64, i64* %R8.i112
  %8431 = mul i64 %8430, 8
  %8432 = add i64 %8431, %8429
  %8433 = load i64, i64* %PC.i110
  %8434 = add i64 %8433, 4
  store i64 %8434, i64* %PC.i110
  %8435 = inttoptr i64 %8432 to i64*
  %8436 = load i64, i64* %8435
  store i64 %8436, i64* %RDX.i111, align 8
  store %struct.Memory* %loadMem_408629, %struct.Memory** %MEMORY
  %loadMem_40862d = load %struct.Memory*, %struct.Memory** %MEMORY
  %8437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8438 = getelementptr inbounds %struct.GPR, %struct.GPR* %8437, i32 0, i32 33
  %8439 = getelementptr inbounds %struct.Reg, %struct.Reg* %8438, i32 0, i32 0
  %PC.i107 = bitcast %union.anon* %8439 to i64*
  %8440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8441 = getelementptr inbounds %struct.GPR, %struct.GPR* %8440, i32 0, i32 1
  %8442 = getelementptr inbounds %struct.Reg, %struct.Reg* %8441, i32 0, i32 0
  %EAX.i108 = bitcast %union.anon* %8442 to i32*
  %8443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8444 = getelementptr inbounds %struct.GPR, %struct.GPR* %8443, i32 0, i32 7
  %8445 = getelementptr inbounds %struct.Reg, %struct.Reg* %8444, i32 0, i32 0
  %RDX.i109 = bitcast %union.anon* %8445 to i64*
  %8446 = load i64, i64* %RDX.i109
  %8447 = load i32, i32* %EAX.i108
  %8448 = zext i32 %8447 to i64
  %8449 = load i64, i64* %PC.i107
  %8450 = add i64 %8449, 2
  store i64 %8450, i64* %PC.i107
  %8451 = inttoptr i64 %8446 to i32*
  store i32 %8447, i32* %8451
  store %struct.Memory* %loadMem_40862d, %struct.Memory** %MEMORY
  %loadMem_40862f = load %struct.Memory*, %struct.Memory** %MEMORY
  %8452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8453 = getelementptr inbounds %struct.GPR, %struct.GPR* %8452, i32 0, i32 33
  %8454 = getelementptr inbounds %struct.Reg, %struct.Reg* %8453, i32 0, i32 0
  %PC.i104 = bitcast %union.anon* %8454 to i64*
  %8455 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8456 = getelementptr inbounds %struct.GPR, %struct.GPR* %8455, i32 0, i32 7
  %8457 = getelementptr inbounds %struct.Reg, %struct.Reg* %8456, i32 0, i32 0
  %RDX.i105 = bitcast %union.anon* %8457 to i64*
  %8458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8459 = getelementptr inbounds %struct.GPR, %struct.GPR* %8458, i32 0, i32 15
  %8460 = getelementptr inbounds %struct.Reg, %struct.Reg* %8459, i32 0, i32 0
  %RBP.i106 = bitcast %union.anon* %8460 to i64*
  %8461 = load i64, i64* %RBP.i106
  %8462 = sub i64 %8461, 48
  %8463 = load i64, i64* %PC.i104
  %8464 = add i64 %8463, 4
  store i64 %8464, i64* %PC.i104
  %8465 = inttoptr i64 %8462 to i64*
  %8466 = load i64, i64* %8465
  store i64 %8466, i64* %RDX.i105, align 8
  store %struct.Memory* %loadMem_40862f, %struct.Memory** %MEMORY
  %loadMem_408633 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8468 = getelementptr inbounds %struct.GPR, %struct.GPR* %8467, i32 0, i32 33
  %8469 = getelementptr inbounds %struct.Reg, %struct.Reg* %8468, i32 0, i32 0
  %PC.i101 = bitcast %union.anon* %8469 to i64*
  %8470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8471 = getelementptr inbounds %struct.GPR, %struct.GPR* %8470, i32 0, i32 1
  %8472 = getelementptr inbounds %struct.Reg, %struct.Reg* %8471, i32 0, i32 0
  %RAX.i102 = bitcast %union.anon* %8472 to i64*
  %8473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8474 = getelementptr inbounds %struct.GPR, %struct.GPR* %8473, i32 0, i32 15
  %8475 = getelementptr inbounds %struct.Reg, %struct.Reg* %8474, i32 0, i32 0
  %RBP.i103 = bitcast %union.anon* %8475 to i64*
  %8476 = load i64, i64* %RBP.i103
  %8477 = sub i64 %8476, 76
  %8478 = load i64, i64* %PC.i101
  %8479 = add i64 %8478, 3
  store i64 %8479, i64* %PC.i101
  %8480 = inttoptr i64 %8477 to i32*
  %8481 = load i32, i32* %8480
  %8482 = zext i32 %8481 to i64
  store i64 %8482, i64* %RAX.i102, align 8
  store %struct.Memory* %loadMem_408633, %struct.Memory** %MEMORY
  %loadMem_408636 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8484 = getelementptr inbounds %struct.GPR, %struct.GPR* %8483, i32 0, i32 33
  %8485 = getelementptr inbounds %struct.Reg, %struct.Reg* %8484, i32 0, i32 0
  %PC.i99 = bitcast %union.anon* %8485 to i64*
  %8486 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8487 = getelementptr inbounds %struct.GPR, %struct.GPR* %8486, i32 0, i32 1
  %8488 = getelementptr inbounds %struct.Reg, %struct.Reg* %8487, i32 0, i32 0
  %RAX.i100 = bitcast %union.anon* %8488 to i64*
  %8489 = load i64, i64* %RAX.i100
  %8490 = load i64, i64* %PC.i99
  %8491 = add i64 %8490, 3
  store i64 %8491, i64* %PC.i99
  %8492 = trunc i64 %8489 to i32
  %8493 = sub i32 %8492, 1
  %8494 = zext i32 %8493 to i64
  store i64 %8494, i64* %RAX.i100, align 8
  %8495 = icmp ult i32 %8492, 1
  %8496 = zext i1 %8495 to i8
  %8497 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8496, i8* %8497, align 1
  %8498 = and i32 %8493, 255
  %8499 = call i32 @llvm.ctpop.i32(i32 %8498)
  %8500 = trunc i32 %8499 to i8
  %8501 = and i8 %8500, 1
  %8502 = xor i8 %8501, 1
  %8503 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8502, i8* %8503, align 1
  %8504 = xor i64 1, %8489
  %8505 = trunc i64 %8504 to i32
  %8506 = xor i32 %8505, %8493
  %8507 = lshr i32 %8506, 4
  %8508 = trunc i32 %8507 to i8
  %8509 = and i8 %8508, 1
  %8510 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8509, i8* %8510, align 1
  %8511 = icmp eq i32 %8493, 0
  %8512 = zext i1 %8511 to i8
  %8513 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8512, i8* %8513, align 1
  %8514 = lshr i32 %8493, 31
  %8515 = trunc i32 %8514 to i8
  %8516 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8515, i8* %8516, align 1
  %8517 = lshr i32 %8492, 31
  %8518 = xor i32 %8514, %8517
  %8519 = add i32 %8518, %8517
  %8520 = icmp eq i32 %8519, 2
  %8521 = zext i1 %8520 to i8
  %8522 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8521, i8* %8522, align 1
  store %struct.Memory* %loadMem_408636, %struct.Memory** %MEMORY
  %loadMem_408639 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8524 = getelementptr inbounds %struct.GPR, %struct.GPR* %8523, i32 0, i32 33
  %8525 = getelementptr inbounds %struct.Reg, %struct.Reg* %8524, i32 0, i32 0
  %PC.i96 = bitcast %union.anon* %8525 to i64*
  %8526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8527 = getelementptr inbounds %struct.GPR, %struct.GPR* %8526, i32 0, i32 1
  %8528 = getelementptr inbounds %struct.Reg, %struct.Reg* %8527, i32 0, i32 0
  %EAX.i97 = bitcast %union.anon* %8528 to i32*
  %8529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8530 = getelementptr inbounds %struct.GPR, %struct.GPR* %8529, i32 0, i32 17
  %8531 = getelementptr inbounds %struct.Reg, %struct.Reg* %8530, i32 0, i32 0
  %R8.i98 = bitcast %union.anon* %8531 to i64*
  %8532 = load i32, i32* %EAX.i97
  %8533 = zext i32 %8532 to i64
  %8534 = load i64, i64* %PC.i96
  %8535 = add i64 %8534, 3
  store i64 %8535, i64* %PC.i96
  %8536 = shl i64 %8533, 32
  %8537 = ashr exact i64 %8536, 32
  store i64 %8537, i64* %R8.i98, align 8
  store %struct.Memory* %loadMem_408639, %struct.Memory** %MEMORY
  %loadMem_40863c = load %struct.Memory*, %struct.Memory** %MEMORY
  %8538 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8539 = getelementptr inbounds %struct.GPR, %struct.GPR* %8538, i32 0, i32 33
  %8540 = getelementptr inbounds %struct.Reg, %struct.Reg* %8539, i32 0, i32 0
  %PC.i93 = bitcast %union.anon* %8540 to i64*
  %8541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8542 = getelementptr inbounds %struct.GPR, %struct.GPR* %8541, i32 0, i32 7
  %8543 = getelementptr inbounds %struct.Reg, %struct.Reg* %8542, i32 0, i32 0
  %RDX.i94 = bitcast %union.anon* %8543 to i64*
  %8544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8545 = getelementptr inbounds %struct.GPR, %struct.GPR* %8544, i32 0, i32 17
  %8546 = getelementptr inbounds %struct.Reg, %struct.Reg* %8545, i32 0, i32 0
  %R8.i95 = bitcast %union.anon* %8546 to i64*
  %8547 = load i64, i64* %RDX.i94
  %8548 = load i64, i64* %R8.i95
  %8549 = mul i64 %8548, 8
  %8550 = add i64 %8549, %8547
  %8551 = load i64, i64* %PC.i93
  %8552 = add i64 %8551, 4
  store i64 %8552, i64* %PC.i93
  %8553 = inttoptr i64 %8550 to i64*
  %8554 = load i64, i64* %8553
  store i64 %8554, i64* %RDX.i94, align 8
  store %struct.Memory* %loadMem_40863c, %struct.Memory** %MEMORY
  %loadMem_408640 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8556 = getelementptr inbounds %struct.GPR, %struct.GPR* %8555, i32 0, i32 33
  %8557 = getelementptr inbounds %struct.Reg, %struct.Reg* %8556, i32 0, i32 0
  %PC.i90 = bitcast %union.anon* %8557 to i64*
  %8558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8559 = getelementptr inbounds %struct.GPR, %struct.GPR* %8558, i32 0, i32 1
  %8560 = getelementptr inbounds %struct.Reg, %struct.Reg* %8559, i32 0, i32 0
  %RAX.i91 = bitcast %union.anon* %8560 to i64*
  %8561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8562 = getelementptr inbounds %struct.GPR, %struct.GPR* %8561, i32 0, i32 7
  %8563 = getelementptr inbounds %struct.Reg, %struct.Reg* %8562, i32 0, i32 0
  %RDX.i92 = bitcast %union.anon* %8563 to i64*
  %8564 = load i64, i64* %RDX.i92
  %8565 = add i64 %8564, 8
  %8566 = load i64, i64* %PC.i90
  %8567 = add i64 %8566, 3
  store i64 %8567, i64* %PC.i90
  %8568 = inttoptr i64 %8565 to i32*
  %8569 = load i32, i32* %8568
  %8570 = zext i32 %8569 to i64
  store i64 %8570, i64* %RAX.i91, align 8
  store %struct.Memory* %loadMem_408640, %struct.Memory** %MEMORY
  %loadMem_408643 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8572 = getelementptr inbounds %struct.GPR, %struct.GPR* %8571, i32 0, i32 33
  %8573 = getelementptr inbounds %struct.Reg, %struct.Reg* %8572, i32 0, i32 0
  %PC.i87 = bitcast %union.anon* %8573 to i64*
  %8574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8575 = getelementptr inbounds %struct.GPR, %struct.GPR* %8574, i32 0, i32 7
  %8576 = getelementptr inbounds %struct.Reg, %struct.Reg* %8575, i32 0, i32 0
  %RDX.i88 = bitcast %union.anon* %8576 to i64*
  %8577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8578 = getelementptr inbounds %struct.GPR, %struct.GPR* %8577, i32 0, i32 15
  %8579 = getelementptr inbounds %struct.Reg, %struct.Reg* %8578, i32 0, i32 0
  %RBP.i89 = bitcast %union.anon* %8579 to i64*
  %8580 = load i64, i64* %RBP.i89
  %8581 = sub i64 %8580, 24
  %8582 = load i64, i64* %PC.i87
  %8583 = add i64 %8582, 4
  store i64 %8583, i64* %PC.i87
  %8584 = inttoptr i64 %8581 to i64*
  %8585 = load i64, i64* %8584
  store i64 %8585, i64* %RDX.i88, align 8
  store %struct.Memory* %loadMem_408643, %struct.Memory** %MEMORY
  %loadMem_408647 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8587 = getelementptr inbounds %struct.GPR, %struct.GPR* %8586, i32 0, i32 33
  %8588 = getelementptr inbounds %struct.Reg, %struct.Reg* %8587, i32 0, i32 0
  %PC.i84 = bitcast %union.anon* %8588 to i64*
  %8589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8590 = getelementptr inbounds %struct.GPR, %struct.GPR* %8589, i32 0, i32 1
  %8591 = getelementptr inbounds %struct.Reg, %struct.Reg* %8590, i32 0, i32 0
  %RAX.i85 = bitcast %union.anon* %8591 to i64*
  %8592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8593 = getelementptr inbounds %struct.GPR, %struct.GPR* %8592, i32 0, i32 7
  %8594 = getelementptr inbounds %struct.Reg, %struct.Reg* %8593, i32 0, i32 0
  %RDX.i86 = bitcast %union.anon* %8594 to i64*
  %8595 = load i64, i64* %RAX.i85
  %8596 = load i64, i64* %RDX.i86
  %8597 = add i64 %8596, 356
  %8598 = load i64, i64* %PC.i84
  %8599 = add i64 %8598, 6
  store i64 %8599, i64* %PC.i84
  %8600 = trunc i64 %8595 to i32
  %8601 = inttoptr i64 %8597 to i32*
  %8602 = load i32, i32* %8601
  %8603 = add i32 %8602, %8600
  %8604 = zext i32 %8603 to i64
  store i64 %8604, i64* %RAX.i85, align 8
  %8605 = icmp ult i32 %8603, %8600
  %8606 = icmp ult i32 %8603, %8602
  %8607 = or i1 %8605, %8606
  %8608 = zext i1 %8607 to i8
  %8609 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8608, i8* %8609, align 1
  %8610 = and i32 %8603, 255
  %8611 = call i32 @llvm.ctpop.i32(i32 %8610)
  %8612 = trunc i32 %8611 to i8
  %8613 = and i8 %8612, 1
  %8614 = xor i8 %8613, 1
  %8615 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8614, i8* %8615, align 1
  %8616 = xor i32 %8602, %8600
  %8617 = xor i32 %8616, %8603
  %8618 = lshr i32 %8617, 4
  %8619 = trunc i32 %8618 to i8
  %8620 = and i8 %8619, 1
  %8621 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8620, i8* %8621, align 1
  %8622 = icmp eq i32 %8603, 0
  %8623 = zext i1 %8622 to i8
  %8624 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8623, i8* %8624, align 1
  %8625 = lshr i32 %8603, 31
  %8626 = trunc i32 %8625 to i8
  %8627 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8626, i8* %8627, align 1
  %8628 = lshr i32 %8600, 31
  %8629 = lshr i32 %8602, 31
  %8630 = xor i32 %8625, %8628
  %8631 = xor i32 %8625, %8629
  %8632 = add i32 %8630, %8631
  %8633 = icmp eq i32 %8632, 2
  %8634 = zext i1 %8633 to i8
  %8635 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8634, i8* %8635, align 1
  store %struct.Memory* %loadMem_408647, %struct.Memory** %MEMORY
  %loadMem_40864d = load %struct.Memory*, %struct.Memory** %MEMORY
  %8636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8637 = getelementptr inbounds %struct.GPR, %struct.GPR* %8636, i32 0, i32 33
  %8638 = getelementptr inbounds %struct.Reg, %struct.Reg* %8637, i32 0, i32 0
  %PC.i81 = bitcast %union.anon* %8638 to i64*
  %8639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8640 = getelementptr inbounds %struct.GPR, %struct.GPR* %8639, i32 0, i32 7
  %8641 = getelementptr inbounds %struct.Reg, %struct.Reg* %8640, i32 0, i32 0
  %RDX.i82 = bitcast %union.anon* %8641 to i64*
  %8642 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8643 = getelementptr inbounds %struct.GPR, %struct.GPR* %8642, i32 0, i32 15
  %8644 = getelementptr inbounds %struct.Reg, %struct.Reg* %8643, i32 0, i32 0
  %RBP.i83 = bitcast %union.anon* %8644 to i64*
  %8645 = load i64, i64* %RBP.i83
  %8646 = sub i64 %8645, 48
  %8647 = load i64, i64* %PC.i81
  %8648 = add i64 %8647, 4
  store i64 %8648, i64* %PC.i81
  %8649 = inttoptr i64 %8646 to i64*
  %8650 = load i64, i64* %8649
  store i64 %8650, i64* %RDX.i82, align 8
  store %struct.Memory* %loadMem_40864d, %struct.Memory** %MEMORY
  %loadMem_408651 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8652 = getelementptr inbounds %struct.GPR, %struct.GPR* %8651, i32 0, i32 33
  %8653 = getelementptr inbounds %struct.Reg, %struct.Reg* %8652, i32 0, i32 0
  %PC.i78 = bitcast %union.anon* %8653 to i64*
  %8654 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8655 = getelementptr inbounds %struct.GPR, %struct.GPR* %8654, i32 0, i32 15
  %8656 = getelementptr inbounds %struct.Reg, %struct.Reg* %8655, i32 0, i32 0
  %RBP.i79 = bitcast %union.anon* %8656 to i64*
  %8657 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8658 = getelementptr inbounds %struct.GPR, %struct.GPR* %8657, i32 0, i32 17
  %8659 = getelementptr inbounds %struct.Reg, %struct.Reg* %8658, i32 0, i32 0
  %R8.i80 = bitcast %union.anon* %8659 to i64*
  %8660 = load i64, i64* %RBP.i79
  %8661 = sub i64 %8660, 76
  %8662 = load i64, i64* %PC.i78
  %8663 = add i64 %8662, 4
  store i64 %8663, i64* %PC.i78
  %8664 = inttoptr i64 %8661 to i32*
  %8665 = load i32, i32* %8664
  %8666 = sext i32 %8665 to i64
  store i64 %8666, i64* %R8.i80, align 8
  store %struct.Memory* %loadMem_408651, %struct.Memory** %MEMORY
  %loadMem_408655 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8668 = getelementptr inbounds %struct.GPR, %struct.GPR* %8667, i32 0, i32 33
  %8669 = getelementptr inbounds %struct.Reg, %struct.Reg* %8668, i32 0, i32 0
  %PC.i75 = bitcast %union.anon* %8669 to i64*
  %8670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8671 = getelementptr inbounds %struct.GPR, %struct.GPR* %8670, i32 0, i32 7
  %8672 = getelementptr inbounds %struct.Reg, %struct.Reg* %8671, i32 0, i32 0
  %RDX.i76 = bitcast %union.anon* %8672 to i64*
  %8673 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8674 = getelementptr inbounds %struct.GPR, %struct.GPR* %8673, i32 0, i32 17
  %8675 = getelementptr inbounds %struct.Reg, %struct.Reg* %8674, i32 0, i32 0
  %R8.i77 = bitcast %union.anon* %8675 to i64*
  %8676 = load i64, i64* %RDX.i76
  %8677 = load i64, i64* %R8.i77
  %8678 = mul i64 %8677, 8
  %8679 = add i64 %8678, %8676
  %8680 = load i64, i64* %PC.i75
  %8681 = add i64 %8680, 4
  store i64 %8681, i64* %PC.i75
  %8682 = inttoptr i64 %8679 to i64*
  %8683 = load i64, i64* %8682
  store i64 %8683, i64* %RDX.i76, align 8
  store %struct.Memory* %loadMem_408655, %struct.Memory** %MEMORY
  %loadMem_408659 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8685 = getelementptr inbounds %struct.GPR, %struct.GPR* %8684, i32 0, i32 33
  %8686 = getelementptr inbounds %struct.Reg, %struct.Reg* %8685, i32 0, i32 0
  %PC.i72 = bitcast %union.anon* %8686 to i64*
  %8687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8688 = getelementptr inbounds %struct.GPR, %struct.GPR* %8687, i32 0, i32 5
  %8689 = getelementptr inbounds %struct.Reg, %struct.Reg* %8688, i32 0, i32 0
  %RCX.i73 = bitcast %union.anon* %8689 to i64*
  %8690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8691 = getelementptr inbounds %struct.GPR, %struct.GPR* %8690, i32 0, i32 7
  %8692 = getelementptr inbounds %struct.Reg, %struct.Reg* %8691, i32 0, i32 0
  %RDX.i74 = bitcast %union.anon* %8692 to i64*
  %8693 = load i64, i64* %RDX.i74
  %8694 = add i64 %8693, 4
  %8695 = load i64, i64* %PC.i72
  %8696 = add i64 %8695, 3
  store i64 %8696, i64* %PC.i72
  %8697 = inttoptr i64 %8694 to i32*
  %8698 = load i32, i32* %8697
  %8699 = zext i32 %8698 to i64
  store i64 %8699, i64* %RCX.i73, align 8
  store %struct.Memory* %loadMem_408659, %struct.Memory** %MEMORY
  %loadMem_40865c = load %struct.Memory*, %struct.Memory** %MEMORY
  %8700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8701 = getelementptr inbounds %struct.GPR, %struct.GPR* %8700, i32 0, i32 33
  %8702 = getelementptr inbounds %struct.Reg, %struct.Reg* %8701, i32 0, i32 0
  %PC.i69 = bitcast %union.anon* %8702 to i64*
  %8703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8704 = getelementptr inbounds %struct.GPR, %struct.GPR* %8703, i32 0, i32 7
  %8705 = getelementptr inbounds %struct.Reg, %struct.Reg* %8704, i32 0, i32 0
  %RDX.i70 = bitcast %union.anon* %8705 to i64*
  %8706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8707 = getelementptr inbounds %struct.GPR, %struct.GPR* %8706, i32 0, i32 15
  %8708 = getelementptr inbounds %struct.Reg, %struct.Reg* %8707, i32 0, i32 0
  %RBP.i71 = bitcast %union.anon* %8708 to i64*
  %8709 = load i64, i64* %RBP.i71
  %8710 = sub i64 %8709, 24
  %8711 = load i64, i64* %PC.i69
  %8712 = add i64 %8711, 4
  store i64 %8712, i64* %PC.i69
  %8713 = inttoptr i64 %8710 to i64*
  %8714 = load i64, i64* %8713
  store i64 %8714, i64* %RDX.i70, align 8
  store %struct.Memory* %loadMem_40865c, %struct.Memory** %MEMORY
  %loadMem_408660 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8716 = getelementptr inbounds %struct.GPR, %struct.GPR* %8715, i32 0, i32 33
  %8717 = getelementptr inbounds %struct.Reg, %struct.Reg* %8716, i32 0, i32 0
  %PC.i66 = bitcast %union.anon* %8717 to i64*
  %8718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8719 = getelementptr inbounds %struct.GPR, %struct.GPR* %8718, i32 0, i32 5
  %8720 = getelementptr inbounds %struct.Reg, %struct.Reg* %8719, i32 0, i32 0
  %RCX.i67 = bitcast %union.anon* %8720 to i64*
  %8721 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8722 = getelementptr inbounds %struct.GPR, %struct.GPR* %8721, i32 0, i32 7
  %8723 = getelementptr inbounds %struct.Reg, %struct.Reg* %8722, i32 0, i32 0
  %RDX.i68 = bitcast %union.anon* %8723 to i64*
  %8724 = load i64, i64* %RCX.i67
  %8725 = load i64, i64* %RDX.i68
  %8726 = add i64 %8725, 344
  %8727 = load i64, i64* %PC.i66
  %8728 = add i64 %8727, 6
  store i64 %8728, i64* %PC.i66
  %8729 = trunc i64 %8724 to i32
  %8730 = inttoptr i64 %8726 to i32*
  %8731 = load i32, i32* %8730
  %8732 = add i32 %8731, %8729
  %8733 = zext i32 %8732 to i64
  store i64 %8733, i64* %RCX.i67, align 8
  %8734 = icmp ult i32 %8732, %8729
  %8735 = icmp ult i32 %8732, %8731
  %8736 = or i1 %8734, %8735
  %8737 = zext i1 %8736 to i8
  %8738 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8737, i8* %8738, align 1
  %8739 = and i32 %8732, 255
  %8740 = call i32 @llvm.ctpop.i32(i32 %8739)
  %8741 = trunc i32 %8740 to i8
  %8742 = and i8 %8741, 1
  %8743 = xor i8 %8742, 1
  %8744 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8743, i8* %8744, align 1
  %8745 = xor i32 %8731, %8729
  %8746 = xor i32 %8745, %8732
  %8747 = lshr i32 %8746, 4
  %8748 = trunc i32 %8747 to i8
  %8749 = and i8 %8748, 1
  %8750 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8749, i8* %8750, align 1
  %8751 = icmp eq i32 %8732, 0
  %8752 = zext i1 %8751 to i8
  %8753 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8752, i8* %8753, align 1
  %8754 = lshr i32 %8732, 31
  %8755 = trunc i32 %8754 to i8
  %8756 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8755, i8* %8756, align 1
  %8757 = lshr i32 %8729, 31
  %8758 = lshr i32 %8731, 31
  %8759 = xor i32 %8754, %8757
  %8760 = xor i32 %8754, %8758
  %8761 = add i32 %8759, %8760
  %8762 = icmp eq i32 %8761, 2
  %8763 = zext i1 %8762 to i8
  %8764 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8763, i8* %8764, align 1
  store %struct.Memory* %loadMem_408660, %struct.Memory** %MEMORY
  %loadMem_408666 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8765 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8766 = getelementptr inbounds %struct.GPR, %struct.GPR* %8765, i32 0, i32 33
  %8767 = getelementptr inbounds %struct.Reg, %struct.Reg* %8766, i32 0, i32 0
  %PC.i63 = bitcast %union.anon* %8767 to i64*
  %8768 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8769 = getelementptr inbounds %struct.GPR, %struct.GPR* %8768, i32 0, i32 1
  %8770 = getelementptr inbounds %struct.Reg, %struct.Reg* %8769, i32 0, i32 0
  %EAX.i64 = bitcast %union.anon* %8770 to i32*
  %8771 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8772 = getelementptr inbounds %struct.GPR, %struct.GPR* %8771, i32 0, i32 11
  %8773 = getelementptr inbounds %struct.Reg, %struct.Reg* %8772, i32 0, i32 0
  %RDI.i65 = bitcast %union.anon* %8773 to i64*
  %8774 = load i32, i32* %EAX.i64
  %8775 = zext i32 %8774 to i64
  %8776 = load i64, i64* %PC.i63
  %8777 = add i64 %8776, 2
  store i64 %8777, i64* %PC.i63
  %8778 = and i64 %8775, 4294967295
  store i64 %8778, i64* %RDI.i65, align 8
  store %struct.Memory* %loadMem_408666, %struct.Memory** %MEMORY
  %loadMem_408668 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8779 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8780 = getelementptr inbounds %struct.GPR, %struct.GPR* %8779, i32 0, i32 33
  %8781 = getelementptr inbounds %struct.Reg, %struct.Reg* %8780, i32 0, i32 0
  %PC.i62 = bitcast %union.anon* %8781 to i64*
  %8782 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8783 = getelementptr inbounds %struct.GPR, %struct.GPR* %8782, i32 0, i32 5
  %8784 = getelementptr inbounds %struct.Reg, %struct.Reg* %8783, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %8784 to i32*
  %8785 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8786 = getelementptr inbounds %struct.GPR, %struct.GPR* %8785, i32 0, i32 9
  %8787 = getelementptr inbounds %struct.Reg, %struct.Reg* %8786, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %8787 to i64*
  %8788 = load i32, i32* %ECX.i
  %8789 = zext i32 %8788 to i64
  %8790 = load i64, i64* %PC.i62
  %8791 = add i64 %8790, 2
  store i64 %8791, i64* %PC.i62
  %8792 = and i64 %8789, 4294967295
  store i64 %8792, i64* %RSI.i, align 8
  store %struct.Memory* %loadMem_408668, %struct.Memory** %MEMORY
  %loadMem1_40866a = load %struct.Memory*, %struct.Memory** %MEMORY
  %8793 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8794 = getelementptr inbounds %struct.GPR, %struct.GPR* %8793, i32 0, i32 33
  %8795 = getelementptr inbounds %struct.Reg, %struct.Reg* %8794, i32 0, i32 0
  %PC.i61 = bitcast %union.anon* %8795 to i64*
  %8796 = load i64, i64* %PC.i61
  %8797 = add i64 %8796, 129862
  %8798 = load i64, i64* %PC.i61
  %8799 = add i64 %8798, 5
  %8800 = load i64, i64* %PC.i61
  %8801 = add i64 %8800, 5
  store i64 %8801, i64* %PC.i61
  %8802 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %8803 = load i64, i64* %8802, align 8
  %8804 = add i64 %8803, -8
  %8805 = inttoptr i64 %8804 to i64*
  store i64 %8799, i64* %8805
  store i64 %8804, i64* %8802, align 8
  %8806 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %8797, i64* %8806, align 8
  store %struct.Memory* %loadMem1_40866a, %struct.Memory** %MEMORY
  %loadMem2_40866a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40866a = load i64, i64* %3
  %call2_40866a = call %struct.Memory* @sub_4281b0.ILogsum(%struct.State* %0, i64 %loadPC_40866a, %struct.Memory* %loadMem2_40866a)
  store %struct.Memory* %call2_40866a, %struct.Memory** %MEMORY
  %loadMem_40866f = load %struct.Memory*, %struct.Memory** %MEMORY
  %8807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8808 = getelementptr inbounds %struct.GPR, %struct.GPR* %8807, i32 0, i32 33
  %8809 = getelementptr inbounds %struct.Reg, %struct.Reg* %8808, i32 0, i32 0
  %PC.i58 = bitcast %union.anon* %8809 to i64*
  %8810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8811 = getelementptr inbounds %struct.GPR, %struct.GPR* %8810, i32 0, i32 7
  %8812 = getelementptr inbounds %struct.Reg, %struct.Reg* %8811, i32 0, i32 0
  %RDX.i59 = bitcast %union.anon* %8812 to i64*
  %8813 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8814 = getelementptr inbounds %struct.GPR, %struct.GPR* %8813, i32 0, i32 15
  %8815 = getelementptr inbounds %struct.Reg, %struct.Reg* %8814, i32 0, i32 0
  %RBP.i60 = bitcast %union.anon* %8815 to i64*
  %8816 = load i64, i64* %RBP.i60
  %8817 = sub i64 %8816, 48
  %8818 = load i64, i64* %PC.i58
  %8819 = add i64 %8818, 4
  store i64 %8819, i64* %PC.i58
  %8820 = inttoptr i64 %8817 to i64*
  %8821 = load i64, i64* %8820
  store i64 %8821, i64* %RDX.i59, align 8
  store %struct.Memory* %loadMem_40866f, %struct.Memory** %MEMORY
  %loadMem_408673 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8823 = getelementptr inbounds %struct.GPR, %struct.GPR* %8822, i32 0, i32 33
  %8824 = getelementptr inbounds %struct.Reg, %struct.Reg* %8823, i32 0, i32 0
  %PC.i55 = bitcast %union.anon* %8824 to i64*
  %8825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8826 = getelementptr inbounds %struct.GPR, %struct.GPR* %8825, i32 0, i32 15
  %8827 = getelementptr inbounds %struct.Reg, %struct.Reg* %8826, i32 0, i32 0
  %RBP.i56 = bitcast %union.anon* %8827 to i64*
  %8828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8829 = getelementptr inbounds %struct.GPR, %struct.GPR* %8828, i32 0, i32 17
  %8830 = getelementptr inbounds %struct.Reg, %struct.Reg* %8829, i32 0, i32 0
  %R8.i57 = bitcast %union.anon* %8830 to i64*
  %8831 = load i64, i64* %RBP.i56
  %8832 = sub i64 %8831, 76
  %8833 = load i64, i64* %PC.i55
  %8834 = add i64 %8833, 4
  store i64 %8834, i64* %PC.i55
  %8835 = inttoptr i64 %8832 to i32*
  %8836 = load i32, i32* %8835
  %8837 = sext i32 %8836 to i64
  store i64 %8837, i64* %R8.i57, align 8
  store %struct.Memory* %loadMem_408673, %struct.Memory** %MEMORY
  %loadMem_408677 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8838 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8839 = getelementptr inbounds %struct.GPR, %struct.GPR* %8838, i32 0, i32 33
  %8840 = getelementptr inbounds %struct.Reg, %struct.Reg* %8839, i32 0, i32 0
  %PC.i53 = bitcast %union.anon* %8840 to i64*
  %8841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8842 = getelementptr inbounds %struct.GPR, %struct.GPR* %8841, i32 0, i32 7
  %8843 = getelementptr inbounds %struct.Reg, %struct.Reg* %8842, i32 0, i32 0
  %RDX.i54 = bitcast %union.anon* %8843 to i64*
  %8844 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8845 = getelementptr inbounds %struct.GPR, %struct.GPR* %8844, i32 0, i32 17
  %8846 = getelementptr inbounds %struct.Reg, %struct.Reg* %8845, i32 0, i32 0
  %R8.i = bitcast %union.anon* %8846 to i64*
  %8847 = load i64, i64* %RDX.i54
  %8848 = load i64, i64* %R8.i
  %8849 = mul i64 %8848, 8
  %8850 = add i64 %8849, %8847
  %8851 = load i64, i64* %PC.i53
  %8852 = add i64 %8851, 4
  store i64 %8852, i64* %PC.i53
  %8853 = inttoptr i64 %8850 to i64*
  %8854 = load i64, i64* %8853
  store i64 %8854, i64* %RDX.i54, align 8
  store %struct.Memory* %loadMem_408677, %struct.Memory** %MEMORY
  %loadMem_40867b = load %struct.Memory*, %struct.Memory** %MEMORY
  %8855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8856 = getelementptr inbounds %struct.GPR, %struct.GPR* %8855, i32 0, i32 33
  %8857 = getelementptr inbounds %struct.Reg, %struct.Reg* %8856, i32 0, i32 0
  %PC.i50 = bitcast %union.anon* %8857 to i64*
  %8858 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8859 = getelementptr inbounds %struct.GPR, %struct.GPR* %8858, i32 0, i32 1
  %8860 = getelementptr inbounds %struct.Reg, %struct.Reg* %8859, i32 0, i32 0
  %EAX.i51 = bitcast %union.anon* %8860 to i32*
  %8861 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8862 = getelementptr inbounds %struct.GPR, %struct.GPR* %8861, i32 0, i32 7
  %8863 = getelementptr inbounds %struct.Reg, %struct.Reg* %8862, i32 0, i32 0
  %RDX.i52 = bitcast %union.anon* %8863 to i64*
  %8864 = load i64, i64* %RDX.i52
  %8865 = add i64 %8864, 8
  %8866 = load i32, i32* %EAX.i51
  %8867 = zext i32 %8866 to i64
  %8868 = load i64, i64* %PC.i50
  %8869 = add i64 %8868, 3
  store i64 %8869, i64* %PC.i50
  %8870 = inttoptr i64 %8865 to i32*
  store i32 %8866, i32* %8870
  store %struct.Memory* %loadMem_40867b, %struct.Memory** %MEMORY
  %loadMem_40867e = load %struct.Memory*, %struct.Memory** %MEMORY
  %8871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8872 = getelementptr inbounds %struct.GPR, %struct.GPR* %8871, i32 0, i32 33
  %8873 = getelementptr inbounds %struct.Reg, %struct.Reg* %8872, i32 0, i32 0
  %PC.i47 = bitcast %union.anon* %8873 to i64*
  %8874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8875 = getelementptr inbounds %struct.GPR, %struct.GPR* %8874, i32 0, i32 1
  %8876 = getelementptr inbounds %struct.Reg, %struct.Reg* %8875, i32 0, i32 0
  %RAX.i48 = bitcast %union.anon* %8876 to i64*
  %8877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8878 = getelementptr inbounds %struct.GPR, %struct.GPR* %8877, i32 0, i32 15
  %8879 = getelementptr inbounds %struct.Reg, %struct.Reg* %8878, i32 0, i32 0
  %RBP.i49 = bitcast %union.anon* %8879 to i64*
  %8880 = load i64, i64* %RBP.i49
  %8881 = sub i64 %8880, 76
  %8882 = load i64, i64* %PC.i47
  %8883 = add i64 %8882, 3
  store i64 %8883, i64* %PC.i47
  %8884 = inttoptr i64 %8881 to i32*
  %8885 = load i32, i32* %8884
  %8886 = zext i32 %8885 to i64
  store i64 %8886, i64* %RAX.i48, align 8
  store %struct.Memory* %loadMem_40867e, %struct.Memory** %MEMORY
  %loadMem_408681 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8887 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8888 = getelementptr inbounds %struct.GPR, %struct.GPR* %8887, i32 0, i32 33
  %8889 = getelementptr inbounds %struct.Reg, %struct.Reg* %8888, i32 0, i32 0
  %PC.i45 = bitcast %union.anon* %8889 to i64*
  %8890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8891 = getelementptr inbounds %struct.GPR, %struct.GPR* %8890, i32 0, i32 1
  %8892 = getelementptr inbounds %struct.Reg, %struct.Reg* %8891, i32 0, i32 0
  %RAX.i46 = bitcast %union.anon* %8892 to i64*
  %8893 = load i64, i64* %RAX.i46
  %8894 = load i64, i64* %PC.i45
  %8895 = add i64 %8894, 3
  store i64 %8895, i64* %PC.i45
  %8896 = trunc i64 %8893 to i32
  %8897 = add i32 1, %8896
  %8898 = zext i32 %8897 to i64
  store i64 %8898, i64* %RAX.i46, align 8
  %8899 = icmp ult i32 %8897, %8896
  %8900 = icmp ult i32 %8897, 1
  %8901 = or i1 %8899, %8900
  %8902 = zext i1 %8901 to i8
  %8903 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8902, i8* %8903, align 1
  %8904 = and i32 %8897, 255
  %8905 = call i32 @llvm.ctpop.i32(i32 %8904)
  %8906 = trunc i32 %8905 to i8
  %8907 = and i8 %8906, 1
  %8908 = xor i8 %8907, 1
  %8909 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8908, i8* %8909, align 1
  %8910 = xor i64 1, %8893
  %8911 = trunc i64 %8910 to i32
  %8912 = xor i32 %8911, %8897
  %8913 = lshr i32 %8912, 4
  %8914 = trunc i32 %8913 to i8
  %8915 = and i8 %8914, 1
  %8916 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8915, i8* %8916, align 1
  %8917 = icmp eq i32 %8897, 0
  %8918 = zext i1 %8917 to i8
  %8919 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8918, i8* %8919, align 1
  %8920 = lshr i32 %8897, 31
  %8921 = trunc i32 %8920 to i8
  %8922 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8921, i8* %8922, align 1
  %8923 = lshr i32 %8896, 31
  %8924 = xor i32 %8920, %8923
  %8925 = add i32 %8924, %8920
  %8926 = icmp eq i32 %8925, 2
  %8927 = zext i1 %8926 to i8
  %8928 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8927, i8* %8928, align 1
  store %struct.Memory* %loadMem_408681, %struct.Memory** %MEMORY
  %loadMem_408684 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8930 = getelementptr inbounds %struct.GPR, %struct.GPR* %8929, i32 0, i32 33
  %8931 = getelementptr inbounds %struct.Reg, %struct.Reg* %8930, i32 0, i32 0
  %PC.i43 = bitcast %union.anon* %8931 to i64*
  %8932 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8933 = getelementptr inbounds %struct.GPR, %struct.GPR* %8932, i32 0, i32 1
  %8934 = getelementptr inbounds %struct.Reg, %struct.Reg* %8933, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %8934 to i32*
  %8935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8936 = getelementptr inbounds %struct.GPR, %struct.GPR* %8935, i32 0, i32 15
  %8937 = getelementptr inbounds %struct.Reg, %struct.Reg* %8936, i32 0, i32 0
  %RBP.i44 = bitcast %union.anon* %8937 to i64*
  %8938 = load i64, i64* %RBP.i44
  %8939 = sub i64 %8938, 76
  %8940 = load i32, i32* %EAX.i
  %8941 = zext i32 %8940 to i64
  %8942 = load i64, i64* %PC.i43
  %8943 = add i64 %8942, 3
  store i64 %8943, i64* %PC.i43
  %8944 = inttoptr i64 %8939 to i32*
  store i32 %8940, i32* %8944
  store %struct.Memory* %loadMem_408684, %struct.Memory** %MEMORY
  %loadMem_408687 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8946 = getelementptr inbounds %struct.GPR, %struct.GPR* %8945, i32 0, i32 33
  %8947 = getelementptr inbounds %struct.Reg, %struct.Reg* %8946, i32 0, i32 0
  %PC.i42 = bitcast %union.anon* %8947 to i64*
  %8948 = load i64, i64* %PC.i42
  %8949 = add i64 %8948, -1557
  %8950 = load i64, i64* %PC.i42
  %8951 = add i64 %8950, 5
  store i64 %8951, i64* %PC.i42
  %8952 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %8949, i64* %8952, align 8
  store %struct.Memory* %loadMem_408687, %struct.Memory** %MEMORY
  br label %block_.L_408072

block_.L_40868c:                                  ; preds = %block_.L_408072
  %loadMem_40868c = load %struct.Memory*, %struct.Memory** %MEMORY
  %8953 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8954 = getelementptr inbounds %struct.GPR, %struct.GPR* %8953, i32 0, i32 33
  %8955 = getelementptr inbounds %struct.Reg, %struct.Reg* %8954, i32 0, i32 0
  %PC.i39 = bitcast %union.anon* %8955 to i64*
  %8956 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8957 = getelementptr inbounds %struct.GPR, %struct.GPR* %8956, i32 0, i32 1
  %8958 = getelementptr inbounds %struct.Reg, %struct.Reg* %8957, i32 0, i32 0
  %RAX.i40 = bitcast %union.anon* %8958 to i64*
  %8959 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8960 = getelementptr inbounds %struct.GPR, %struct.GPR* %8959, i32 0, i32 15
  %8961 = getelementptr inbounds %struct.Reg, %struct.Reg* %8960, i32 0, i32 0
  %RBP.i41 = bitcast %union.anon* %8961 to i64*
  %8962 = load i64, i64* %RBP.i41
  %8963 = sub i64 %8962, 48
  %8964 = load i64, i64* %PC.i39
  %8965 = add i64 %8964, 4
  store i64 %8965, i64* %PC.i39
  %8966 = inttoptr i64 %8963 to i64*
  %8967 = load i64, i64* %8966
  store i64 %8967, i64* %RAX.i40, align 8
  store %struct.Memory* %loadMem_40868c, %struct.Memory** %MEMORY
  %loadMem_408690 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8968 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8969 = getelementptr inbounds %struct.GPR, %struct.GPR* %8968, i32 0, i32 33
  %8970 = getelementptr inbounds %struct.Reg, %struct.Reg* %8969, i32 0, i32 0
  %PC.i36 = bitcast %union.anon* %8970 to i64*
  %8971 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8972 = getelementptr inbounds %struct.GPR, %struct.GPR* %8971, i32 0, i32 5
  %8973 = getelementptr inbounds %struct.Reg, %struct.Reg* %8972, i32 0, i32 0
  %RCX.i37 = bitcast %union.anon* %8973 to i64*
  %8974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8975 = getelementptr inbounds %struct.GPR, %struct.GPR* %8974, i32 0, i32 15
  %8976 = getelementptr inbounds %struct.Reg, %struct.Reg* %8975, i32 0, i32 0
  %RBP.i38 = bitcast %union.anon* %8976 to i64*
  %8977 = load i64, i64* %RBP.i38
  %8978 = sub i64 %8977, 12
  %8979 = load i64, i64* %PC.i36
  %8980 = add i64 %8979, 4
  store i64 %8980, i64* %PC.i36
  %8981 = inttoptr i64 %8978 to i32*
  %8982 = load i32, i32* %8981
  %8983 = sext i32 %8982 to i64
  store i64 %8983, i64* %RCX.i37, align 8
  store %struct.Memory* %loadMem_408690, %struct.Memory** %MEMORY
  %loadMem_408694 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8984 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8985 = getelementptr inbounds %struct.GPR, %struct.GPR* %8984, i32 0, i32 33
  %8986 = getelementptr inbounds %struct.Reg, %struct.Reg* %8985, i32 0, i32 0
  %PC.i33 = bitcast %union.anon* %8986 to i64*
  %8987 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8988 = getelementptr inbounds %struct.GPR, %struct.GPR* %8987, i32 0, i32 1
  %8989 = getelementptr inbounds %struct.Reg, %struct.Reg* %8988, i32 0, i32 0
  %RAX.i34 = bitcast %union.anon* %8989 to i64*
  %8990 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8991 = getelementptr inbounds %struct.GPR, %struct.GPR* %8990, i32 0, i32 5
  %8992 = getelementptr inbounds %struct.Reg, %struct.Reg* %8991, i32 0, i32 0
  %RCX.i35 = bitcast %union.anon* %8992 to i64*
  %8993 = load i64, i64* %RAX.i34
  %8994 = load i64, i64* %RCX.i35
  %8995 = mul i64 %8994, 8
  %8996 = add i64 %8995, %8993
  %8997 = load i64, i64* %PC.i33
  %8998 = add i64 %8997, 4
  store i64 %8998, i64* %PC.i33
  %8999 = inttoptr i64 %8996 to i64*
  %9000 = load i64, i64* %8999
  store i64 %9000, i64* %RAX.i34, align 8
  store %struct.Memory* %loadMem_408694, %struct.Memory** %MEMORY
  %loadMem_408698 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9001 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9002 = getelementptr inbounds %struct.GPR, %struct.GPR* %9001, i32 0, i32 33
  %9003 = getelementptr inbounds %struct.Reg, %struct.Reg* %9002, i32 0, i32 0
  %PC.i30 = bitcast %union.anon* %9003 to i64*
  %9004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9005 = getelementptr inbounds %struct.GPR, %struct.GPR* %9004, i32 0, i32 1
  %9006 = getelementptr inbounds %struct.Reg, %struct.Reg* %9005, i32 0, i32 0
  %RAX.i31 = bitcast %union.anon* %9006 to i64*
  %9007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9008 = getelementptr inbounds %struct.GPR, %struct.GPR* %9007, i32 0, i32 7
  %9009 = getelementptr inbounds %struct.Reg, %struct.Reg* %9008, i32 0, i32 0
  %RDX.i32 = bitcast %union.anon* %9009 to i64*
  %9010 = load i64, i64* %RAX.i31
  %9011 = add i64 %9010, 8
  %9012 = load i64, i64* %PC.i30
  %9013 = add i64 %9012, 3
  store i64 %9013, i64* %PC.i30
  %9014 = inttoptr i64 %9011 to i32*
  %9015 = load i32, i32* %9014
  %9016 = zext i32 %9015 to i64
  store i64 %9016, i64* %RDX.i32, align 8
  store %struct.Memory* %loadMem_408698, %struct.Memory** %MEMORY
  %loadMem_40869b = load %struct.Memory*, %struct.Memory** %MEMORY
  %9017 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9018 = getelementptr inbounds %struct.GPR, %struct.GPR* %9017, i32 0, i32 33
  %9019 = getelementptr inbounds %struct.Reg, %struct.Reg* %9018, i32 0, i32 0
  %PC.i27 = bitcast %union.anon* %9019 to i64*
  %9020 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9021 = getelementptr inbounds %struct.GPR, %struct.GPR* %9020, i32 0, i32 1
  %9022 = getelementptr inbounds %struct.Reg, %struct.Reg* %9021, i32 0, i32 0
  %RAX.i28 = bitcast %union.anon* %9022 to i64*
  %9023 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9024 = getelementptr inbounds %struct.GPR, %struct.GPR* %9023, i32 0, i32 15
  %9025 = getelementptr inbounds %struct.Reg, %struct.Reg* %9024, i32 0, i32 0
  %RBP.i29 = bitcast %union.anon* %9025 to i64*
  %9026 = load i64, i64* %RBP.i29
  %9027 = sub i64 %9026, 24
  %9028 = load i64, i64* %PC.i27
  %9029 = add i64 %9028, 4
  store i64 %9029, i64* %PC.i27
  %9030 = inttoptr i64 %9027 to i64*
  %9031 = load i64, i64* %9030
  store i64 %9031, i64* %RAX.i28, align 8
  store %struct.Memory* %loadMem_40869b, %struct.Memory** %MEMORY
  %loadMem_40869f = load %struct.Memory*, %struct.Memory** %MEMORY
  %9032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9033 = getelementptr inbounds %struct.GPR, %struct.GPR* %9032, i32 0, i32 33
  %9034 = getelementptr inbounds %struct.Reg, %struct.Reg* %9033, i32 0, i32 0
  %PC.i25 = bitcast %union.anon* %9034 to i64*
  %9035 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9036 = getelementptr inbounds %struct.GPR, %struct.GPR* %9035, i32 0, i32 1
  %9037 = getelementptr inbounds %struct.Reg, %struct.Reg* %9036, i32 0, i32 0
  %RAX.i26 = bitcast %union.anon* %9037 to i64*
  %9038 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9039 = getelementptr inbounds %struct.GPR, %struct.GPR* %9038, i32 0, i32 7
  %9040 = getelementptr inbounds %struct.Reg, %struct.Reg* %9039, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %9040 to i64*
  %9041 = load i64, i64* %RDX.i
  %9042 = load i64, i64* %RAX.i26
  %9043 = add i64 %9042, 352
  %9044 = load i64, i64* %PC.i25
  %9045 = add i64 %9044, 6
  store i64 %9045, i64* %PC.i25
  %9046 = trunc i64 %9041 to i32
  %9047 = inttoptr i64 %9043 to i32*
  %9048 = load i32, i32* %9047
  %9049 = add i32 %9048, %9046
  %9050 = zext i32 %9049 to i64
  store i64 %9050, i64* %RDX.i, align 8
  %9051 = icmp ult i32 %9049, %9046
  %9052 = icmp ult i32 %9049, %9048
  %9053 = or i1 %9051, %9052
  %9054 = zext i1 %9053 to i8
  %9055 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %9054, i8* %9055, align 1
  %9056 = and i32 %9049, 255
  %9057 = call i32 @llvm.ctpop.i32(i32 %9056)
  %9058 = trunc i32 %9057 to i8
  %9059 = and i8 %9058, 1
  %9060 = xor i8 %9059, 1
  %9061 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %9060, i8* %9061, align 1
  %9062 = xor i32 %9048, %9046
  %9063 = xor i32 %9062, %9049
  %9064 = lshr i32 %9063, 4
  %9065 = trunc i32 %9064 to i8
  %9066 = and i8 %9065, 1
  %9067 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %9066, i8* %9067, align 1
  %9068 = icmp eq i32 %9049, 0
  %9069 = zext i1 %9068 to i8
  %9070 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %9069, i8* %9070, align 1
  %9071 = lshr i32 %9049, 31
  %9072 = trunc i32 %9071 to i8
  %9073 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %9072, i8* %9073, align 1
  %9074 = lshr i32 %9046, 31
  %9075 = lshr i32 %9048, 31
  %9076 = xor i32 %9071, %9074
  %9077 = xor i32 %9071, %9075
  %9078 = add i32 %9076, %9077
  %9079 = icmp eq i32 %9078, 2
  %9080 = zext i1 %9079 to i8
  %9081 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %9080, i8* %9081, align 1
  store %struct.Memory* %loadMem_40869f, %struct.Memory** %MEMORY
  %loadMem_4086a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9082 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9083 = getelementptr inbounds %struct.GPR, %struct.GPR* %9082, i32 0, i32 33
  %9084 = getelementptr inbounds %struct.Reg, %struct.Reg* %9083, i32 0, i32 0
  %PC.i23 = bitcast %union.anon* %9084 to i64*
  %9085 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9086 = getelementptr inbounds %struct.GPR, %struct.GPR* %9085, i32 0, i32 7
  %9087 = getelementptr inbounds %struct.Reg, %struct.Reg* %9086, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %9087 to i32*
  %9088 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9089 = getelementptr inbounds %struct.GPR, %struct.GPR* %9088, i32 0, i32 15
  %9090 = getelementptr inbounds %struct.Reg, %struct.Reg* %9089, i32 0, i32 0
  %RBP.i24 = bitcast %union.anon* %9090 to i64*
  %9091 = load i64, i64* %RBP.i24
  %9092 = sub i64 %9091, 84
  %9093 = load i32, i32* %EDX.i
  %9094 = zext i32 %9093 to i64
  %9095 = load i64, i64* %PC.i23
  %9096 = add i64 %9095, 3
  store i64 %9096, i64* %PC.i23
  %9097 = inttoptr i64 %9092 to i32*
  store i32 %9093, i32* %9097
  store %struct.Memory* %loadMem_4086a5, %struct.Memory** %MEMORY
  %loadMem_4086a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9098 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9099 = getelementptr inbounds %struct.GPR, %struct.GPR* %9098, i32 0, i32 33
  %9100 = getelementptr inbounds %struct.Reg, %struct.Reg* %9099, i32 0, i32 0
  %PC.i21 = bitcast %union.anon* %9100 to i64*
  %9101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9102 = getelementptr inbounds %struct.GPR, %struct.GPR* %9101, i32 0, i32 15
  %9103 = getelementptr inbounds %struct.Reg, %struct.Reg* %9102, i32 0, i32 0
  %RBP.i22 = bitcast %union.anon* %9103 to i64*
  %9104 = load i64, i64* %RBP.i22
  %9105 = sub i64 %9104, 32
  %9106 = load i64, i64* %PC.i21
  %9107 = add i64 %9106, 5
  store i64 %9107, i64* %PC.i21
  %9108 = inttoptr i64 %9105 to i64*
  %9109 = load i64, i64* %9108
  %9110 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9110, align 1
  %9111 = trunc i64 %9109 to i32
  %9112 = and i32 %9111, 255
  %9113 = call i32 @llvm.ctpop.i32(i32 %9112)
  %9114 = trunc i32 %9113 to i8
  %9115 = and i8 %9114, 1
  %9116 = xor i8 %9115, 1
  %9117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %9116, i8* %9117, align 1
  %9118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %9118, align 1
  %9119 = icmp eq i64 %9109, 0
  %9120 = zext i1 %9119 to i8
  %9121 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %9120, i8* %9121, align 1
  %9122 = lshr i64 %9109, 63
  %9123 = trunc i64 %9122 to i8
  %9124 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %9123, i8* %9124, align 1
  %9125 = lshr i64 %9109, 63
  %9126 = xor i64 %9122, %9125
  %9127 = add i64 %9126, %9125
  %9128 = icmp eq i64 %9127, 2
  %9129 = zext i1 %9128 to i8
  %9130 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %9129, i8* %9130, align 1
  store %struct.Memory* %loadMem_4086a8, %struct.Memory** %MEMORY
  %loadMem_4086ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %9131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9132 = getelementptr inbounds %struct.GPR, %struct.GPR* %9131, i32 0, i32 33
  %9133 = getelementptr inbounds %struct.Reg, %struct.Reg* %9132, i32 0, i32 0
  %PC.i20 = bitcast %union.anon* %9133 to i64*
  %9134 = load i64, i64* %PC.i20
  %9135 = add i64 %9134, 22
  %9136 = load i64, i64* %PC.i20
  %9137 = add i64 %9136, 6
  %9138 = load i64, i64* %PC.i20
  %9139 = add i64 %9138, 6
  store i64 %9139, i64* %PC.i20
  %9140 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %9141 = load i8, i8* %9140, align 1
  store i8 %9141, i8* %BRANCH_TAKEN, align 1
  %9142 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %9143 = icmp ne i8 %9141, 0
  %9144 = select i1 %9143, i64 %9135, i64 %9137
  store i64 %9144, i64* %9142, align 8
  store %struct.Memory* %loadMem_4086ad, %struct.Memory** %MEMORY
  %loadBr_4086ad = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4086ad = icmp eq i8 %loadBr_4086ad, 1
  br i1 %cmpBr_4086ad, label %block_.L_4086c3, label %block_4086b3

block_4086b3:                                     ; preds = %block_.L_40868c
  %loadMem_4086b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9146 = getelementptr inbounds %struct.GPR, %struct.GPR* %9145, i32 0, i32 33
  %9147 = getelementptr inbounds %struct.Reg, %struct.Reg* %9146, i32 0, i32 0
  %PC.i17 = bitcast %union.anon* %9147 to i64*
  %9148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9149 = getelementptr inbounds %struct.GPR, %struct.GPR* %9148, i32 0, i32 1
  %9150 = getelementptr inbounds %struct.Reg, %struct.Reg* %9149, i32 0, i32 0
  %RAX.i18 = bitcast %union.anon* %9150 to i64*
  %9151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9152 = getelementptr inbounds %struct.GPR, %struct.GPR* %9151, i32 0, i32 15
  %9153 = getelementptr inbounds %struct.Reg, %struct.Reg* %9152, i32 0, i32 0
  %RBP.i19 = bitcast %union.anon* %9153 to i64*
  %9154 = load i64, i64* %RBP.i19
  %9155 = sub i64 %9154, 40
  %9156 = load i64, i64* %PC.i17
  %9157 = add i64 %9156, 4
  store i64 %9157, i64* %PC.i17
  %9158 = inttoptr i64 %9155 to i64*
  %9159 = load i64, i64* %9158
  store i64 %9159, i64* %RAX.i18, align 8
  store %struct.Memory* %loadMem_4086b3, %struct.Memory** %MEMORY
  %loadMem_4086b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9161 = getelementptr inbounds %struct.GPR, %struct.GPR* %9160, i32 0, i32 33
  %9162 = getelementptr inbounds %struct.Reg, %struct.Reg* %9161, i32 0, i32 0
  %PC.i14 = bitcast %union.anon* %9162 to i64*
  %9163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9164 = getelementptr inbounds %struct.GPR, %struct.GPR* %9163, i32 0, i32 5
  %9165 = getelementptr inbounds %struct.Reg, %struct.Reg* %9164, i32 0, i32 0
  %RCX.i15 = bitcast %union.anon* %9165 to i64*
  %9166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9167 = getelementptr inbounds %struct.GPR, %struct.GPR* %9166, i32 0, i32 15
  %9168 = getelementptr inbounds %struct.Reg, %struct.Reg* %9167, i32 0, i32 0
  %RBP.i16 = bitcast %union.anon* %9168 to i64*
  %9169 = load i64, i64* %RBP.i16
  %9170 = sub i64 %9169, 32
  %9171 = load i64, i64* %PC.i14
  %9172 = add i64 %9171, 4
  store i64 %9172, i64* %PC.i14
  %9173 = inttoptr i64 %9170 to i64*
  %9174 = load i64, i64* %9173
  store i64 %9174, i64* %RCX.i15, align 8
  store %struct.Memory* %loadMem_4086b7, %struct.Memory** %MEMORY
  %loadMem_4086bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %9175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9176 = getelementptr inbounds %struct.GPR, %struct.GPR* %9175, i32 0, i32 33
  %9177 = getelementptr inbounds %struct.Reg, %struct.Reg* %9176, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %9177 to i64*
  %9178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9179 = getelementptr inbounds %struct.GPR, %struct.GPR* %9178, i32 0, i32 1
  %9180 = getelementptr inbounds %struct.Reg, %struct.Reg* %9179, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %9180 to i64*
  %9181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9182 = getelementptr inbounds %struct.GPR, %struct.GPR* %9181, i32 0, i32 5
  %9183 = getelementptr inbounds %struct.Reg, %struct.Reg* %9182, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %9183 to i64*
  %9184 = load i64, i64* %RCX.i
  %9185 = load i64, i64* %RAX.i
  %9186 = load i64, i64* %PC.i13
  %9187 = add i64 %9186, 3
  store i64 %9187, i64* %PC.i13
  %9188 = inttoptr i64 %9184 to i64*
  store i64 %9185, i64* %9188
  store %struct.Memory* %loadMem_4086bb, %struct.Memory** %MEMORY
  %loadMem_4086be = load %struct.Memory*, %struct.Memory** %MEMORY
  %9189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9190 = getelementptr inbounds %struct.GPR, %struct.GPR* %9189, i32 0, i32 33
  %9191 = getelementptr inbounds %struct.Reg, %struct.Reg* %9190, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %9191 to i64*
  %9192 = load i64, i64* %PC.i12
  %9193 = add i64 %9192, 14
  %9194 = load i64, i64* %PC.i12
  %9195 = add i64 %9194, 5
  store i64 %9195, i64* %PC.i12
  %9196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %9193, i64* %9196, align 8
  store %struct.Memory* %loadMem_4086be, %struct.Memory** %MEMORY
  br label %block_.L_4086cc

block_.L_4086c3:                                  ; preds = %block_.L_40868c
  %loadMem_4086c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9198 = getelementptr inbounds %struct.GPR, %struct.GPR* %9197, i32 0, i32 33
  %9199 = getelementptr inbounds %struct.Reg, %struct.Reg* %9198, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %9199 to i64*
  %9200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9201 = getelementptr inbounds %struct.GPR, %struct.GPR* %9200, i32 0, i32 11
  %9202 = getelementptr inbounds %struct.Reg, %struct.Reg* %9201, i32 0, i32 0
  %RDI.i10 = bitcast %union.anon* %9202 to i64*
  %9203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9204 = getelementptr inbounds %struct.GPR, %struct.GPR* %9203, i32 0, i32 15
  %9205 = getelementptr inbounds %struct.Reg, %struct.Reg* %9204, i32 0, i32 0
  %RBP.i11 = bitcast %union.anon* %9205 to i64*
  %9206 = load i64, i64* %RBP.i11
  %9207 = sub i64 %9206, 40
  %9208 = load i64, i64* %PC.i9
  %9209 = add i64 %9208, 4
  store i64 %9209, i64* %PC.i9
  %9210 = inttoptr i64 %9207 to i64*
  %9211 = load i64, i64* %9210
  store i64 %9211, i64* %RDI.i10, align 8
  store %struct.Memory* %loadMem_4086c3, %struct.Memory** %MEMORY
  %loadMem1_4086c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9213 = getelementptr inbounds %struct.GPR, %struct.GPR* %9212, i32 0, i32 33
  %9214 = getelementptr inbounds %struct.Reg, %struct.Reg* %9213, i32 0, i32 0
  %PC.i8 = bitcast %union.anon* %9214 to i64*
  %9215 = load i64, i64* %PC.i8
  %9216 = add i64 %9215, -3463
  %9217 = load i64, i64* %PC.i8
  %9218 = add i64 %9217, 5
  %9219 = load i64, i64* %PC.i8
  %9220 = add i64 %9219, 5
  store i64 %9220, i64* %PC.i8
  %9221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %9222 = load i64, i64* %9221, align 8
  %9223 = add i64 %9222, -8
  %9224 = inttoptr i64 %9223 to i64*
  store i64 %9218, i64* %9224
  store i64 %9223, i64* %9221, align 8
  %9225 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %9216, i64* %9225, align 8
  store %struct.Memory* %loadMem1_4086c7, %struct.Memory** %MEMORY
  %loadMem2_4086c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4086c7 = load i64, i64* %3
  %call2_4086c7 = call %struct.Memory* @sub_407940.FreePlan7Matrix(%struct.State* %0, i64 %loadPC_4086c7, %struct.Memory* %loadMem2_4086c7)
  store %struct.Memory* %call2_4086c7, %struct.Memory** %MEMORY
  br label %block_.L_4086cc

block_.L_4086cc:                                  ; preds = %block_.L_4086c3, %block_4086b3
  %loadMem_4086cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %9226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9227 = getelementptr inbounds %struct.GPR, %struct.GPR* %9226, i32 0, i32 33
  %9228 = getelementptr inbounds %struct.Reg, %struct.Reg* %9227, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %9228 to i64*
  %9229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9230 = getelementptr inbounds %struct.GPR, %struct.GPR* %9229, i32 0, i32 11
  %9231 = getelementptr inbounds %struct.Reg, %struct.Reg* %9230, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %9231 to i64*
  %9232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9233 = getelementptr inbounds %struct.GPR, %struct.GPR* %9232, i32 0, i32 15
  %9234 = getelementptr inbounds %struct.Reg, %struct.Reg* %9233, i32 0, i32 0
  %RBP.i7 = bitcast %union.anon* %9234 to i64*
  %9235 = load i64, i64* %RBP.i7
  %9236 = sub i64 %9235, 84
  %9237 = load i64, i64* %PC.i6
  %9238 = add i64 %9237, 3
  store i64 %9238, i64* %PC.i6
  %9239 = inttoptr i64 %9236 to i32*
  %9240 = load i32, i32* %9239
  %9241 = zext i32 %9240 to i64
  store i64 %9241, i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_4086cc, %struct.Memory** %MEMORY
  %loadMem1_4086cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %9242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9243 = getelementptr inbounds %struct.GPR, %struct.GPR* %9242, i32 0, i32 33
  %9244 = getelementptr inbounds %struct.Reg, %struct.Reg* %9243, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %9244 to i64*
  %9245 = load i64, i64* %PC.i5
  %9246 = add i64 %9245, 129057
  %9247 = load i64, i64* %PC.i5
  %9248 = add i64 %9247, 5
  %9249 = load i64, i64* %PC.i5
  %9250 = add i64 %9249, 5
  store i64 %9250, i64* %PC.i5
  %9251 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %9252 = load i64, i64* %9251, align 8
  %9253 = add i64 %9252, -8
  %9254 = inttoptr i64 %9253 to i64*
  store i64 %9248, i64* %9254
  store i64 %9253, i64* %9251, align 8
  %9255 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %9246, i64* %9255, align 8
  store %struct.Memory* %loadMem1_4086cf, %struct.Memory** %MEMORY
  %loadMem2_4086cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4086cf = load i64, i64* %3
  %call2_4086cf = call %struct.Memory* @sub_427ef0.Scorify(%struct.State* %0, i64 %loadPC_4086cf, %struct.Memory* %loadMem2_4086cf)
  store %struct.Memory* %call2_4086cf, %struct.Memory** %MEMORY
  %loadMem_4086d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9257 = getelementptr inbounds %struct.GPR, %struct.GPR* %9256, i32 0, i32 33
  %9258 = getelementptr inbounds %struct.Reg, %struct.Reg* %9257, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %9258 to i64*
  %9259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9260 = getelementptr inbounds %struct.GPR, %struct.GPR* %9259, i32 0, i32 13
  %9261 = getelementptr inbounds %struct.Reg, %struct.Reg* %9260, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %9261 to i64*
  %9262 = load i64, i64* %RSP.i
  %9263 = load i64, i64* %PC.i4
  %9264 = add i64 %9263, 4
  store i64 %9264, i64* %PC.i4
  %9265 = add i64 96, %9262
  store i64 %9265, i64* %RSP.i, align 8
  %9266 = icmp ult i64 %9265, %9262
  %9267 = icmp ult i64 %9265, 96
  %9268 = or i1 %9266, %9267
  %9269 = zext i1 %9268 to i8
  %9270 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %9269, i8* %9270, align 1
  %9271 = trunc i64 %9265 to i32
  %9272 = and i32 %9271, 255
  %9273 = call i32 @llvm.ctpop.i32(i32 %9272)
  %9274 = trunc i32 %9273 to i8
  %9275 = and i8 %9274, 1
  %9276 = xor i8 %9275, 1
  %9277 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %9276, i8* %9277, align 1
  %9278 = xor i64 96, %9262
  %9279 = xor i64 %9278, %9265
  %9280 = lshr i64 %9279, 4
  %9281 = trunc i64 %9280 to i8
  %9282 = and i8 %9281, 1
  %9283 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %9282, i8* %9283, align 1
  %9284 = icmp eq i64 %9265, 0
  %9285 = zext i1 %9284 to i8
  %9286 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %9285, i8* %9286, align 1
  %9287 = lshr i64 %9265, 63
  %9288 = trunc i64 %9287 to i8
  %9289 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %9288, i8* %9289, align 1
  %9290 = lshr i64 %9262, 63
  %9291 = xor i64 %9287, %9290
  %9292 = add i64 %9291, %9287
  %9293 = icmp eq i64 %9292, 2
  %9294 = zext i1 %9293 to i8
  %9295 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %9294, i8* %9295, align 1
  store %struct.Memory* %loadMem_4086d4, %struct.Memory** %MEMORY
  %loadMem_4086d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9297 = getelementptr inbounds %struct.GPR, %struct.GPR* %9296, i32 0, i32 33
  %9298 = getelementptr inbounds %struct.Reg, %struct.Reg* %9297, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %9298 to i64*
  %9299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9300 = getelementptr inbounds %struct.GPR, %struct.GPR* %9299, i32 0, i32 15
  %9301 = getelementptr inbounds %struct.Reg, %struct.Reg* %9300, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %9301 to i64*
  %9302 = load i64, i64* %PC.i2
  %9303 = add i64 %9302, 1
  store i64 %9303, i64* %PC.i2
  %9304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %9305 = load i64, i64* %9304, align 8
  %9306 = add i64 %9305, 8
  %9307 = inttoptr i64 %9305 to i64*
  %9308 = load i64, i64* %9307
  store i64 %9308, i64* %RBP.i3, align 8
  store i64 %9306, i64* %9304, align 8
  store %struct.Memory* %loadMem_4086d8, %struct.Memory** %MEMORY
  %loadMem_4086d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9310 = getelementptr inbounds %struct.GPR, %struct.GPR* %9309, i32 0, i32 33
  %9311 = getelementptr inbounds %struct.Reg, %struct.Reg* %9310, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %9311 to i64*
  %9312 = load i64, i64* %PC.i1
  %9313 = add i64 %9312, 1
  store i64 %9313, i64* %PC.i1
  %9314 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %9315 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %9316 = load i64, i64* %9315, align 8
  %9317 = inttoptr i64 %9316 to i64*
  %9318 = load i64, i64* %9317
  store i64 %9318, i64* %9314, align 8
  %9319 = add i64 %9316, 8
  store i64 %9319, i64* %9315, align 8
  store %struct.Memory* %loadMem_4086d9, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_4086d9
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

define %struct.Memory* @routine_subq__0x60___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %9, 96
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %9, 96
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
  %23 = xor i64 96, %9
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

define %struct.Memory* @routine_leaq_MINUS0x30__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 %13, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_leaq_MINUS0x38__rbp____r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 56
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  store i64 %13, i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_leaq_MINUS0x40__rbp____r9(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 19
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R9 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  store i64 %13, i64* %R9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_leaq_MINUS0x48__rbp____r10(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 21
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R10 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 72
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  store i64 %13, i64* %R10, align 8
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

define %struct.Memory* @routine_movl__esi__MINUS0xc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 12
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_movl_MINUS0xc__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
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

define %struct.Memory* @routine_movl_0x88__rcx____r11d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 23
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R11D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RCX = bitcast %union.anon* %11 to i64*
  %12 = bitcast i32* %R11D to i64*
  %13 = load i64, i64* %RCX
  %14 = add i64 %13, 136
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__esi___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %ESI
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__r11d___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 23
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R11D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %R11D
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  store i64 %12, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r8___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R8
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  store i64 %12, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r9___r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R8 = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 19
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R9 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R9
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  store i64 %12, i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r10___r9(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 19
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R9 = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 21
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R10 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R10
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  store i64 %12, i64* %R9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.AllocPlan7Matrix(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x0__0x10__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x150__rax____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 336
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__esi____rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RAX
  %13 = load i32, i32* %ESI
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %12 to i32*
  store i32 %13, i32* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0xc521974f__0xc__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 -987654321, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0xc521974f__0x8__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 -987654321, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0xc521974f__0x4__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 4
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 -987654321, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x50__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 80
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x50__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 80
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_0x88__rcx____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 136
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
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

define %struct.Memory* @routine_jg_.L_40806b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 72
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x50__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 80
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0xc521974f____rax__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 -987654321, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x40__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x38__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
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

define %struct.Memory* @routine_jmpq_.L_408014(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x1__MINUS0x4c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 76
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 1, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x4c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 76
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_MINUS0xc__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i64 %14, 12
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

define %struct.Memory* @routine_jg_.L_40868c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 76
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

define %struct.Memory* @routine_movl__0xc521974f____rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 6
  store i64 %11, i64* %PC
  %12 = inttoptr i64 %9 to i32*
  store i32 -987654321, i32* %12
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x1__MINUS0x50__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 80
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 1, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_40835c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x4c__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 76
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

define %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %RDX
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

define %struct.Memory* @routine_movl_MINUS0x50__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 80
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
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

define %struct.Memory* @routine_movq_0x138__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 312
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x50__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 80
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl__0x1___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %12, 1
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RSI, align 8
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

define %struct.Memory* @routine_movslq__esi___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %ESI
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  store i64 %17, i64* %RDX, align 8
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

define %struct.Memory* @routine_movl_MINUS0x4c__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 76
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl___rax__rdx_4____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 9
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RSI = bitcast %union.anon* %14 to i64*
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
  store i64 %23, i64* %RSI, align 8
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

define %struct.Memory* @routine_movl_MINUS0x50__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 80
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl__0x1___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %12, 1
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RDI, align 8
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

define %struct.Memory* @routine_movslq__edi___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %EDI
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  store i64 %17, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl___rax__rdx_4____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 9
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RSI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RSI
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
  store i64 %26, i64* %RSI, align 8
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

define %struct.Memory* @routine_callq_.ILogsum(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_MINUS0x30__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq__ecx___r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %ECX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  store i64 %17, i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq___rdx__r8_8____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDX
  %13 = load i64, i64* %R8
  %14 = mul i64 %13, 8
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %15 to i64*
  %19 = load i64, i64* %18
  store i64 %19, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl___rdx____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RDX
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 2
  store i64 %14, i64* %PC
  %15 = inttoptr i64 %12 to i32*
  %16 = load i32, i32* %15
  %17 = zext i32 %16 to i64
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x170__rdx____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %RDX
  %10 = add i64 %9, 368
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x50__rbp____r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 80
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl___rdx__r8_4____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 17
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %R8 = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %RDX
  %17 = load i64, i64* %R8
  %18 = mul i64 %17, 4
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 4
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

define %struct.Memory* @routine_movq_MINUS0x48__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 72
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq__esi___r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %ESI
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  store i64 %17, i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl___rdx__r8_4____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 17
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %R8 = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RDX
  %16 = load i64, i64* %R8
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 4
  store i64 %20, i64* %PC
  %21 = inttoptr i64 %18 to i32*
  %22 = load i32, i32* %21
  %23 = zext i32 %22 to i64
  store i64 %23, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x138__rdx____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %RDX
  %10 = add i64 %9, 312
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x28__rdx____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %RDX
  %10 = add i64 %9, 40
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq__edi___r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %EDI
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  store i64 %17, i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl___rdx__r8_4____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 17
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %R8 = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RSI
  %16 = load i64, i64* %RDX
  %17 = load i64, i64* %R8
  %18 = mul i64 %17, 4
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 4
  store i64 %21, i64* %PC
  %22 = trunc i64 %15 to i32
  %23 = inttoptr i64 %19 to i32*
  %24 = load i32, i32* %23
  %25 = add i32 %24, %22
  %26 = zext i32 %25 to i64
  store i64 %26, i64* %RSI, align 8
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

define %struct.Memory* @routine_movl_MINUS0x58__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 88
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %EAX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RSI, align 8
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

define %struct.Memory* @routine_movslq_MINUS0x4c__rbp____r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 76
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax____rdx__r8_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 17
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %R8 = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RDX
  %16 = load i64, i64* %R8
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i32, i32* %EAX
  %20 = zext i32 %19 to i64
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 4
  store i64 %22, i64* %PC
  %23 = inttoptr i64 %18 to i32*
  store i32 %19, i32* %23
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x140__rdx____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %RDX
  %10 = add i64 %9, 320
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x8__rbp____r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x4c__rbp____r9(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 19
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R9 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 76
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %R9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsbl___r8__r9_1____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 19
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %R9 = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %R8
  %16 = load i64, i64* %R9
  %17 = add i64 %16, %15
  %18 = load i64, i64* %PC
  %19 = add i64 %18, 5
  store i64 %19, i64* %PC
  %20 = inttoptr i64 %17 to i8*
  %21 = load i8, i8* %20
  %22 = sext i8 %21 to i64
  %23 = and i64 %22, 4294967295
  store i64 %23, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq__eax___r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %EAX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  store i64 %17, i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl___rdx__r8_4____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 17
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %R8 = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RDX
  %16 = load i64, i64* %R8
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 4
  store i64 %20, i64* %PC
  %21 = inttoptr i64 %18 to i32*
  %22 = load i32, i32* %21
  %23 = zext i32 %22 to i64
  store i64 %23, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl___rdx__r8_4____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 17
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %R8 = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RDX
  %17 = load i64, i64* %R8
  %18 = mul i64 %17, 4
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 4
  store i64 %21, i64* %PC
  %22 = trunc i64 %15 to i32
  %23 = inttoptr i64 %19 to i32*
  %24 = load i32, i32* %23
  %25 = add i32 %24, %22
  %26 = zext i32 %25 to i64
  store i64 %26, i64* %RAX, align 8
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

define %struct.Memory* @routine_subl__0x1___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %12, 1
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RAX, align 8
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

define %struct.Memory* @routine_movq_0x10__rdx____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %RDX
  %10 = add i64 %9, 16
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl___rdx__r8_4____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 17
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %R8 = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RDX
  %16 = load i64, i64* %R8
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 4
  store i64 %20, i64* %PC
  %21 = inttoptr i64 %18 to i32*
  %22 = load i32, i32* %21
  %23 = zext i32 %22 to i64
  store i64 %23, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x30__rdx____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %RDX
  %10 = add i64 %9, 48
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x8__rdx____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %RDX
  %10 = add i64 %9, 8
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x40__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x20__rdx____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %RDX
  %10 = add i64 %9, 32
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x148__rdx____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %RDX
  %10 = add i64 %9, 328
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4080bb(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl_0x88__rdx____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RDX
  %13 = add i64 %12, 136
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x88__rdx____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDX
  %13 = add i64 %12, 136
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x88__rdx____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDX
  %13 = add i64 %12, 136
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x18__rbp____r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x88__r8____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R8
  %13 = add i64 %12, 136
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x88__r8____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R8
  %13 = add i64 %12, 136
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
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

define %struct.Memory* @routine_movl_MINUS0x5c__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 92
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_0x88__r8____r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R8 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %R8
  %10 = add i64 %9, 136
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x10__rdx____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RDX
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

define %struct.Memory* @routine_addl_0x154__rdx____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %RDX
  %14 = add i64 %13, 340
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = trunc i64 %12 to i32
  %18 = inttoptr i64 %14 to i32*
  %19 = load i32, i32* %18
  %20 = add i32 %19, %17
  %21 = zext i32 %20 to i64
  store i64 %21, i64* %RAX, align 8
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

define %struct.Memory* @routine_movl__eax__0x10__rdx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RDX
  %13 = add i64 %12, 16
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0xc521974f__0x4__rdx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %RDX
  %10 = add i64 %9, 4
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 -987654321, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jg_.L_408599(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_0x4__rax____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 4
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl___rax__rcx_4____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 3
  store i64 %20, i64* %PC
  %21 = inttoptr i64 %18 to i32*
  %22 = load i32, i32* %21
  %23 = zext i32 %22 to i64
  store i64 %23, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x178__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 376
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl___rax__rcx_4____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = load i64, i64* %RDX
  %16 = load i64, i64* %RAX
  %17 = load i64, i64* %RCX
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
  store i64 %26, i64* %RDX, align 8
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

define %struct.Memory* @routine_movl__edx___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %EDX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x30__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 48
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq___rcx__r8_8____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RCX
  %13 = load i64, i64* %R8
  %14 = mul i64 %13, 8
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %15 to i64*
  %19 = load i64, i64* %18
  store i64 %19, i64* %RCX, align 8
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

define %struct.Memory* @routine_jmpq_.L_40852e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_addl_0x16c__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %RAX
  %14 = add i64 %13, 364
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
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

define %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 76
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x4__rax____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 4
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_0x15c__rax____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSI
  %13 = load i64, i64* %RAX
  %14 = add i64 %13, 348
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = trunc i64 %12 to i32
  %18 = inttoptr i64 %14 to i32*
  %19 = load i32, i32* %18
  %20 = add i32 %19, %17
  %21 = zext i32 %20 to i64
  store i64 %21, i64* %RSI, align 8
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

define %struct.Memory* @routine_movl__eax__0xc__rdx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RDX
  %13 = add i64 %12, 12
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_0x150__rdx____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %RDX
  %14 = add i64 %13, 336
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = trunc i64 %12 to i32
  %18 = inttoptr i64 %14 to i32*
  %19 = load i32, i32* %18
  %20 = add i32 %19, %17
  %21 = zext i32 %20 to i64
  store i64 %21, i64* %RAX, align 8
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

define %struct.Memory* @routine_movl_0xc__rdx____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RDX
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

define %struct.Memory* @routine_addl_0x168__rdx____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %RDX
  %14 = add i64 %13, 360
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
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

define %struct.Memory* @routine_movl__eax____rdx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RDX
  %13 = load i32, i32* %EAX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %12 to i32*
  store i32 %13, i32* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x8__rdx____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RDX
  %13 = add i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_0x164__rdx____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %RDX
  %14 = add i64 %13, 356
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = trunc i64 %12 to i32
  %18 = inttoptr i64 %14 to i32*
  %19 = load i32, i32* %18
  %20 = add i32 %19, %17
  %21 = zext i32 %20 to i64
  store i64 %21, i64* %RAX, align 8
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

define %struct.Memory* @routine_movl_0x4__rdx____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RDX
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

define %struct.Memory* @routine_addl_0x158__rdx____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %RDX
  %14 = add i64 %13, 344
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
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

define %struct.Memory* @routine_movl__eax__0x8__rdx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RDX
  %13 = add i64 %12, 8
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_jmpq_.L_408072(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl_0x8__rax____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_0x160__rax____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RDX
  %13 = load i64, i64* %RAX
  %14 = add i64 %13, 352
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = trunc i64 %12 to i32
  %18 = inttoptr i64 %14 to i32*
  %19 = load i32, i32* %18
  %20 = add i32 %19, %17
  %21 = zext i32 %20 to i64
  store i64 %21, i64* %RDX, align 8
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

define %struct.Memory* @routine_movl__edx__MINUS0x54__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 84
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpq__0x0__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 32
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

define %struct.Memory* @routine_je_.L_4086c3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
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

define %struct.Memory* @routine_movq__rax____rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %RAX
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %12 to i64*
  store i64 %13, i64* %16
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4086cc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq_MINUS0x28__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 40
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.FreePlan7Matrix(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x54__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 84
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.Scorify(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_addq__0x60___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 96, %9
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 96
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
  %25 = xor i64 96, %9
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
