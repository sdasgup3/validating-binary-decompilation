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
define %struct.Memory* @MSAShorterAlignment(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_42fa00 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_42fa00, %struct.Memory** %MEMORY
  %loadMem_42fa01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i725 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i726 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i
  %27 = load i64, i64* %PC.i725
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i725
  store i64 %26, i64* %RBP.i726, align 8
  store %struct.Memory* %loadMem_42fa01, %struct.Memory** %MEMORY
  %loadMem_42fa04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i723 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 11
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %34 to i64*
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %36 = getelementptr inbounds %struct.GPR, %struct.GPR* %35, i32 0, i32 15
  %37 = getelementptr inbounds %struct.Reg, %struct.Reg* %36, i32 0, i32 0
  %RBP.i724 = bitcast %union.anon* %37 to i64*
  %38 = load i64, i64* %RBP.i724
  %39 = sub i64 %38, 8
  %40 = load i64, i64* %RDI.i
  %41 = load i64, i64* %PC.i723
  %42 = add i64 %41, 4
  store i64 %42, i64* %PC.i723
  %43 = inttoptr i64 %39 to i64*
  store i64 %40, i64* %43
  store %struct.Memory* %loadMem_42fa04, %struct.Memory** %MEMORY
  %loadMem_42fa08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %45 = getelementptr inbounds %struct.GPR, %struct.GPR* %44, i32 0, i32 33
  %46 = getelementptr inbounds %struct.Reg, %struct.Reg* %45, i32 0, i32 0
  %PC.i721 = bitcast %union.anon* %46 to i64*
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %48 = getelementptr inbounds %struct.GPR, %struct.GPR* %47, i32 0, i32 9
  %49 = getelementptr inbounds %struct.Reg, %struct.Reg* %48, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %49 to i64*
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %51 = getelementptr inbounds %struct.GPR, %struct.GPR* %50, i32 0, i32 15
  %52 = getelementptr inbounds %struct.Reg, %struct.Reg* %51, i32 0, i32 0
  %RBP.i722 = bitcast %union.anon* %52 to i64*
  %53 = load i64, i64* %RBP.i722
  %54 = sub i64 %53, 16
  %55 = load i64, i64* %RSI.i
  %56 = load i64, i64* %PC.i721
  %57 = add i64 %56, 4
  store i64 %57, i64* %PC.i721
  %58 = inttoptr i64 %54 to i64*
  store i64 %55, i64* %58
  store %struct.Memory* %loadMem_42fa08, %struct.Memory** %MEMORY
  %loadMem_42fa0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %59 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %60 = getelementptr inbounds %struct.GPR, %struct.GPR* %59, i32 0, i32 33
  %61 = getelementptr inbounds %struct.Reg, %struct.Reg* %60, i32 0, i32 0
  %PC.i719 = bitcast %union.anon* %61 to i64*
  %62 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %63 = getelementptr inbounds %struct.GPR, %struct.GPR* %62, i32 0, i32 15
  %64 = getelementptr inbounds %struct.Reg, %struct.Reg* %63, i32 0, i32 0
  %RBP.i720 = bitcast %union.anon* %64 to i64*
  %65 = load i64, i64* %RBP.i720
  %66 = sub i64 %65, 20
  %67 = load i64, i64* %PC.i719
  %68 = add i64 %67, 7
  store i64 %68, i64* %PC.i719
  %69 = inttoptr i64 %66 to i32*
  store i32 0, i32* %69
  store %struct.Memory* %loadMem_42fa0c, %struct.Memory** %MEMORY
  %loadMem_42fa13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 33
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %PC.i717 = bitcast %union.anon* %72 to i64*
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %74 = getelementptr inbounds %struct.GPR, %struct.GPR* %73, i32 0, i32 15
  %75 = getelementptr inbounds %struct.Reg, %struct.Reg* %74, i32 0, i32 0
  %RBP.i718 = bitcast %union.anon* %75 to i64*
  %76 = load i64, i64* %RBP.i718
  %77 = sub i64 %76, 24
  %78 = load i64, i64* %PC.i717
  %79 = add i64 %78, 7
  store i64 %79, i64* %PC.i717
  %80 = inttoptr i64 %77 to i32*
  store i32 0, i32* %80
  store %struct.Memory* %loadMem_42fa13, %struct.Memory** %MEMORY
  br label %block_.L_42fa1a

block_.L_42fa1a:                                  ; preds = %block_.L_42fccf, %entry
  %loadMem_42fa1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %81 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %82 = getelementptr inbounds %struct.GPR, %struct.GPR* %81, i32 0, i32 33
  %83 = getelementptr inbounds %struct.Reg, %struct.Reg* %82, i32 0, i32 0
  %PC.i714 = bitcast %union.anon* %83 to i64*
  %84 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %85 = getelementptr inbounds %struct.GPR, %struct.GPR* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.Reg, %struct.Reg* %85, i32 0, i32 0
  %RAX.i715 = bitcast %union.anon* %86 to i64*
  %87 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %88 = getelementptr inbounds %struct.GPR, %struct.GPR* %87, i32 0, i32 15
  %89 = getelementptr inbounds %struct.Reg, %struct.Reg* %88, i32 0, i32 0
  %RBP.i716 = bitcast %union.anon* %89 to i64*
  %90 = load i64, i64* %RBP.i716
  %91 = sub i64 %90, 20
  %92 = load i64, i64* %PC.i714
  %93 = add i64 %92, 3
  store i64 %93, i64* %PC.i714
  %94 = inttoptr i64 %91 to i32*
  %95 = load i32, i32* %94
  %96 = zext i32 %95 to i64
  store i64 %96, i64* %RAX.i715, align 8
  store %struct.Memory* %loadMem_42fa1a, %struct.Memory** %MEMORY
  %loadMem_42fa1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %97 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %98 = getelementptr inbounds %struct.GPR, %struct.GPR* %97, i32 0, i32 33
  %99 = getelementptr inbounds %struct.Reg, %struct.Reg* %98, i32 0, i32 0
  %PC.i711 = bitcast %union.anon* %99 to i64*
  %100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %101 = getelementptr inbounds %struct.GPR, %struct.GPR* %100, i32 0, i32 5
  %102 = getelementptr inbounds %struct.Reg, %struct.Reg* %101, i32 0, i32 0
  %RCX.i712 = bitcast %union.anon* %102 to i64*
  %103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %104 = getelementptr inbounds %struct.GPR, %struct.GPR* %103, i32 0, i32 15
  %105 = getelementptr inbounds %struct.Reg, %struct.Reg* %104, i32 0, i32 0
  %RBP.i713 = bitcast %union.anon* %105 to i64*
  %106 = load i64, i64* %RBP.i713
  %107 = sub i64 %106, 8
  %108 = load i64, i64* %PC.i711
  %109 = add i64 %108, 4
  store i64 %109, i64* %PC.i711
  %110 = inttoptr i64 %107 to i64*
  %111 = load i64, i64* %110
  store i64 %111, i64* %RCX.i712, align 8
  store %struct.Memory* %loadMem_42fa1d, %struct.Memory** %MEMORY
  %loadMem_42fa21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %113 = getelementptr inbounds %struct.GPR, %struct.GPR* %112, i32 0, i32 33
  %114 = getelementptr inbounds %struct.Reg, %struct.Reg* %113, i32 0, i32 0
  %PC.i708 = bitcast %union.anon* %114 to i64*
  %115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %116 = getelementptr inbounds %struct.GPR, %struct.GPR* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.Reg, %struct.Reg* %116, i32 0, i32 0
  %EAX.i709 = bitcast %union.anon* %117 to i32*
  %118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %119 = getelementptr inbounds %struct.GPR, %struct.GPR* %118, i32 0, i32 5
  %120 = getelementptr inbounds %struct.Reg, %struct.Reg* %119, i32 0, i32 0
  %RCX.i710 = bitcast %union.anon* %120 to i64*
  %121 = load i32, i32* %EAX.i709
  %122 = zext i32 %121 to i64
  %123 = load i64, i64* %RCX.i710
  %124 = add i64 %123, 24
  %125 = load i64, i64* %PC.i708
  %126 = add i64 %125, 3
  store i64 %126, i64* %PC.i708
  %127 = inttoptr i64 %124 to i32*
  %128 = load i32, i32* %127
  %129 = sub i32 %121, %128
  %130 = icmp ult i32 %121, %128
  %131 = zext i1 %130 to i8
  %132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %131, i8* %132, align 1
  %133 = and i32 %129, 255
  %134 = call i32 @llvm.ctpop.i32(i32 %133)
  %135 = trunc i32 %134 to i8
  %136 = and i8 %135, 1
  %137 = xor i8 %136, 1
  %138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %137, i8* %138, align 1
  %139 = xor i32 %128, %121
  %140 = xor i32 %139, %129
  %141 = lshr i32 %140, 4
  %142 = trunc i32 %141 to i8
  %143 = and i8 %142, 1
  %144 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %143, i8* %144, align 1
  %145 = icmp eq i32 %129, 0
  %146 = zext i1 %145 to i8
  %147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %146, i8* %147, align 1
  %148 = lshr i32 %129, 31
  %149 = trunc i32 %148 to i8
  %150 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %149, i8* %150, align 1
  %151 = lshr i32 %121, 31
  %152 = lshr i32 %128, 31
  %153 = xor i32 %152, %151
  %154 = xor i32 %148, %151
  %155 = add i32 %154, %153
  %156 = icmp eq i32 %155, 2
  %157 = zext i1 %156 to i8
  %158 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %157, i8* %158, align 1
  store %struct.Memory* %loadMem_42fa21, %struct.Memory** %MEMORY
  %loadMem_42fa24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %160 = getelementptr inbounds %struct.GPR, %struct.GPR* %159, i32 0, i32 33
  %161 = getelementptr inbounds %struct.Reg, %struct.Reg* %160, i32 0, i32 0
  %PC.i707 = bitcast %union.anon* %161 to i64*
  %162 = load i64, i64* %PC.i707
  %163 = add i64 %162, 697
  %164 = load i64, i64* %PC.i707
  %165 = add i64 %164, 6
  %166 = load i64, i64* %PC.i707
  %167 = add i64 %166, 6
  store i64 %167, i64* %PC.i707
  %168 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %169 = load i8, i8* %168, align 1
  %170 = icmp ne i8 %169, 0
  %171 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %172 = load i8, i8* %171, align 1
  %173 = icmp ne i8 %172, 0
  %174 = xor i1 %170, %173
  %175 = xor i1 %174, true
  %176 = zext i1 %175 to i8
  store i8 %176, i8* %BRANCH_TAKEN, align 1
  %177 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %178 = select i1 %174, i64 %165, i64 %163
  store i64 %178, i64* %177, align 8
  store %struct.Memory* %loadMem_42fa24, %struct.Memory** %MEMORY
  %loadBr_42fa24 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42fa24 = icmp eq i8 %loadBr_42fa24, 1
  br i1 %cmpBr_42fa24, label %block_.L_42fcdd, label %block_42fa2a

block_42fa2a:                                     ; preds = %block_.L_42fa1a
  %loadMem_42fa2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %180 = getelementptr inbounds %struct.GPR, %struct.GPR* %179, i32 0, i32 33
  %181 = getelementptr inbounds %struct.Reg, %struct.Reg* %180, i32 0, i32 0
  %PC.i704 = bitcast %union.anon* %181 to i64*
  %182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %183 = getelementptr inbounds %struct.GPR, %struct.GPR* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.Reg, %struct.Reg* %183, i32 0, i32 0
  %RAX.i705 = bitcast %union.anon* %184 to i64*
  %185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %186 = getelementptr inbounds %struct.GPR, %struct.GPR* %185, i32 0, i32 15
  %187 = getelementptr inbounds %struct.Reg, %struct.Reg* %186, i32 0, i32 0
  %RBP.i706 = bitcast %union.anon* %187 to i64*
  %188 = load i64, i64* %RBP.i706
  %189 = sub i64 %188, 16
  %190 = load i64, i64* %PC.i704
  %191 = add i64 %190, 4
  store i64 %191, i64* %PC.i704
  %192 = inttoptr i64 %189 to i64*
  %193 = load i64, i64* %192
  store i64 %193, i64* %RAX.i705, align 8
  store %struct.Memory* %loadMem_42fa2a, %struct.Memory** %MEMORY
  %loadMem_42fa2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %195 = getelementptr inbounds %struct.GPR, %struct.GPR* %194, i32 0, i32 33
  %196 = getelementptr inbounds %struct.Reg, %struct.Reg* %195, i32 0, i32 0
  %PC.i701 = bitcast %union.anon* %196 to i64*
  %197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %198 = getelementptr inbounds %struct.GPR, %struct.GPR* %197, i32 0, i32 5
  %199 = getelementptr inbounds %struct.Reg, %struct.Reg* %198, i32 0, i32 0
  %RCX.i702 = bitcast %union.anon* %199 to i64*
  %200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %201 = getelementptr inbounds %struct.GPR, %struct.GPR* %200, i32 0, i32 15
  %202 = getelementptr inbounds %struct.Reg, %struct.Reg* %201, i32 0, i32 0
  %RBP.i703 = bitcast %union.anon* %202 to i64*
  %203 = load i64, i64* %RBP.i703
  %204 = sub i64 %203, 20
  %205 = load i64, i64* %PC.i701
  %206 = add i64 %205, 4
  store i64 %206, i64* %PC.i701
  %207 = inttoptr i64 %204 to i32*
  %208 = load i32, i32* %207
  %209 = sext i32 %208 to i64
  store i64 %209, i64* %RCX.i702, align 8
  store %struct.Memory* %loadMem_42fa2e, %struct.Memory** %MEMORY
  %loadMem_42fa32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %211 = getelementptr inbounds %struct.GPR, %struct.GPR* %210, i32 0, i32 33
  %212 = getelementptr inbounds %struct.Reg, %struct.Reg* %211, i32 0, i32 0
  %PC.i698 = bitcast %union.anon* %212 to i64*
  %213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %214 = getelementptr inbounds %struct.GPR, %struct.GPR* %213, i32 0, i32 1
  %215 = getelementptr inbounds %struct.Reg, %struct.Reg* %214, i32 0, i32 0
  %RAX.i699 = bitcast %union.anon* %215 to i64*
  %216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %217 = getelementptr inbounds %struct.GPR, %struct.GPR* %216, i32 0, i32 5
  %218 = getelementptr inbounds %struct.Reg, %struct.Reg* %217, i32 0, i32 0
  %RCX.i700 = bitcast %union.anon* %218 to i64*
  %219 = load i64, i64* %RAX.i699
  %220 = load i64, i64* %RCX.i700
  %221 = mul i64 %220, 4
  %222 = add i64 %221, %219
  %223 = load i64, i64* %PC.i698
  %224 = add i64 %223, 4
  store i64 %224, i64* %PC.i698
  %225 = inttoptr i64 %222 to i32*
  %226 = load i32, i32* %225
  %227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %227, align 1
  %228 = and i32 %226, 255
  %229 = call i32 @llvm.ctpop.i32(i32 %228)
  %230 = trunc i32 %229 to i8
  %231 = and i8 %230, 1
  %232 = xor i8 %231, 1
  %233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %232, i8* %233, align 1
  %234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %234, align 1
  %235 = icmp eq i32 %226, 0
  %236 = zext i1 %235 to i8
  %237 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %236, i8* %237, align 1
  %238 = lshr i32 %226, 31
  %239 = trunc i32 %238 to i8
  %240 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %239, i8* %240, align 1
  %241 = lshr i32 %226, 31
  %242 = xor i32 %238, %241
  %243 = add i32 %242, %241
  %244 = icmp eq i32 %243, 2
  %245 = zext i1 %244 to i8
  %246 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %245, i8* %246, align 1
  store %struct.Memory* %loadMem_42fa32, %struct.Memory** %MEMORY
  %loadMem_42fa36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %248 = getelementptr inbounds %struct.GPR, %struct.GPR* %247, i32 0, i32 33
  %249 = getelementptr inbounds %struct.Reg, %struct.Reg* %248, i32 0, i32 0
  %PC.i697 = bitcast %union.anon* %249 to i64*
  %250 = load i64, i64* %PC.i697
  %251 = add i64 %250, 11
  %252 = load i64, i64* %PC.i697
  %253 = add i64 %252, 6
  %254 = load i64, i64* %PC.i697
  %255 = add i64 %254, 6
  store i64 %255, i64* %PC.i697
  %256 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %257 = load i8, i8* %256, align 1
  %258 = icmp eq i8 %257, 0
  %259 = zext i1 %258 to i8
  store i8 %259, i8* %BRANCH_TAKEN, align 1
  %260 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %261 = select i1 %258, i64 %251, i64 %253
  store i64 %261, i64* %260, align 8
  store %struct.Memory* %loadMem_42fa36, %struct.Memory** %MEMORY
  %loadBr_42fa36 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42fa36 = icmp eq i8 %loadBr_42fa36, 1
  br i1 %cmpBr_42fa36, label %block_.L_42fa41, label %block_42fa3c

block_42fa3c:                                     ; preds = %block_42fa2a
  %loadMem_42fa3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %263 = getelementptr inbounds %struct.GPR, %struct.GPR* %262, i32 0, i32 33
  %264 = getelementptr inbounds %struct.Reg, %struct.Reg* %263, i32 0, i32 0
  %PC.i696 = bitcast %union.anon* %264 to i64*
  %265 = load i64, i64* %PC.i696
  %266 = add i64 %265, 659
  %267 = load i64, i64* %PC.i696
  %268 = add i64 %267, 5
  store i64 %268, i64* %PC.i696
  %269 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %266, i64* %269, align 8
  store %struct.Memory* %loadMem_42fa3c, %struct.Memory** %MEMORY
  br label %block_.L_42fccf

block_.L_42fa41:                                  ; preds = %block_42fa2a
  %loadMem_42fa41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %271 = getelementptr inbounds %struct.GPR, %struct.GPR* %270, i32 0, i32 33
  %272 = getelementptr inbounds %struct.Reg, %struct.Reg* %271, i32 0, i32 0
  %PC.i693 = bitcast %union.anon* %272 to i64*
  %273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %274 = getelementptr inbounds %struct.GPR, %struct.GPR* %273, i32 0, i32 1
  %275 = getelementptr inbounds %struct.Reg, %struct.Reg* %274, i32 0, i32 0
  %RAX.i694 = bitcast %union.anon* %275 to i64*
  %276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %277 = getelementptr inbounds %struct.GPR, %struct.GPR* %276, i32 0, i32 15
  %278 = getelementptr inbounds %struct.Reg, %struct.Reg* %277, i32 0, i32 0
  %RBP.i695 = bitcast %union.anon* %278 to i64*
  %279 = load i64, i64* %RBP.i695
  %280 = sub i64 %279, 24
  %281 = load i64, i64* %PC.i693
  %282 = add i64 %281, 3
  store i64 %282, i64* %PC.i693
  %283 = inttoptr i64 %280 to i32*
  %284 = load i32, i32* %283
  %285 = zext i32 %284 to i64
  store i64 %285, i64* %RAX.i694, align 8
  store %struct.Memory* %loadMem_42fa41, %struct.Memory** %MEMORY
  %loadMem_42fa44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %287 = getelementptr inbounds %struct.GPR, %struct.GPR* %286, i32 0, i32 33
  %288 = getelementptr inbounds %struct.Reg, %struct.Reg* %287, i32 0, i32 0
  %PC.i690 = bitcast %union.anon* %288 to i64*
  %289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %290 = getelementptr inbounds %struct.GPR, %struct.GPR* %289, i32 0, i32 1
  %291 = getelementptr inbounds %struct.Reg, %struct.Reg* %290, i32 0, i32 0
  %EAX.i691 = bitcast %union.anon* %291 to i32*
  %292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %293 = getelementptr inbounds %struct.GPR, %struct.GPR* %292, i32 0, i32 15
  %294 = getelementptr inbounds %struct.Reg, %struct.Reg* %293, i32 0, i32 0
  %RBP.i692 = bitcast %union.anon* %294 to i64*
  %295 = load i32, i32* %EAX.i691
  %296 = zext i32 %295 to i64
  %297 = load i64, i64* %RBP.i692
  %298 = sub i64 %297, 20
  %299 = load i64, i64* %PC.i690
  %300 = add i64 %299, 3
  store i64 %300, i64* %PC.i690
  %301 = inttoptr i64 %298 to i32*
  %302 = load i32, i32* %301
  %303 = sub i32 %295, %302
  %304 = icmp ult i32 %295, %302
  %305 = zext i1 %304 to i8
  %306 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %305, i8* %306, align 1
  %307 = and i32 %303, 255
  %308 = call i32 @llvm.ctpop.i32(i32 %307)
  %309 = trunc i32 %308 to i8
  %310 = and i8 %309, 1
  %311 = xor i8 %310, 1
  %312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %311, i8* %312, align 1
  %313 = xor i32 %302, %295
  %314 = xor i32 %313, %303
  %315 = lshr i32 %314, 4
  %316 = trunc i32 %315 to i8
  %317 = and i8 %316, 1
  %318 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %317, i8* %318, align 1
  %319 = icmp eq i32 %303, 0
  %320 = zext i1 %319 to i8
  %321 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %320, i8* %321, align 1
  %322 = lshr i32 %303, 31
  %323 = trunc i32 %322 to i8
  %324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %323, i8* %324, align 1
  %325 = lshr i32 %295, 31
  %326 = lshr i32 %302, 31
  %327 = xor i32 %326, %325
  %328 = xor i32 %322, %325
  %329 = add i32 %328, %327
  %330 = icmp eq i32 %329, 2
  %331 = zext i1 %330 to i8
  %332 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %331, i8* %332, align 1
  store %struct.Memory* %loadMem_42fa44, %struct.Memory** %MEMORY
  %loadMem_42fa47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %334 = getelementptr inbounds %struct.GPR, %struct.GPR* %333, i32 0, i32 33
  %335 = getelementptr inbounds %struct.Reg, %struct.Reg* %334, i32 0, i32 0
  %PC.i689 = bitcast %union.anon* %335 to i64*
  %336 = load i64, i64* %PC.i689
  %337 = add i64 %336, 639
  %338 = load i64, i64* %PC.i689
  %339 = add i64 %338, 6
  %340 = load i64, i64* %PC.i689
  %341 = add i64 %340, 6
  store i64 %341, i64* %PC.i689
  %342 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %343 = load i8, i8* %342, align 1
  store i8 %343, i8* %BRANCH_TAKEN, align 1
  %344 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %345 = icmp ne i8 %343, 0
  %346 = select i1 %345, i64 %337, i64 %339
  store i64 %346, i64* %344, align 8
  store %struct.Memory* %loadMem_42fa47, %struct.Memory** %MEMORY
  %loadBr_42fa47 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42fa47 = icmp eq i8 %loadBr_42fa47, 1
  br i1 %cmpBr_42fa47, label %block_.L_42fcc6, label %block_42fa4d

block_42fa4d:                                     ; preds = %block_.L_42fa41
  %loadMem_42fa4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %348 = getelementptr inbounds %struct.GPR, %struct.GPR* %347, i32 0, i32 33
  %349 = getelementptr inbounds %struct.Reg, %struct.Reg* %348, i32 0, i32 0
  %PC.i687 = bitcast %union.anon* %349 to i64*
  %350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %351 = getelementptr inbounds %struct.GPR, %struct.GPR* %350, i32 0, i32 15
  %352 = getelementptr inbounds %struct.Reg, %struct.Reg* %351, i32 0, i32 0
  %RBP.i688 = bitcast %union.anon* %352 to i64*
  %353 = load i64, i64* %RBP.i688
  %354 = sub i64 %353, 28
  %355 = load i64, i64* %PC.i687
  %356 = add i64 %355, 7
  store i64 %356, i64* %PC.i687
  %357 = inttoptr i64 %354 to i32*
  store i32 0, i32* %357
  store %struct.Memory* %loadMem_42fa4d, %struct.Memory** %MEMORY
  br label %block_.L_42fa54

block_.L_42fa54:                                  ; preds = %block_.L_42fbd0, %block_42fa4d
  %loadMem_42fa54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %359 = getelementptr inbounds %struct.GPR, %struct.GPR* %358, i32 0, i32 33
  %360 = getelementptr inbounds %struct.Reg, %struct.Reg* %359, i32 0, i32 0
  %PC.i684 = bitcast %union.anon* %360 to i64*
  %361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %362 = getelementptr inbounds %struct.GPR, %struct.GPR* %361, i32 0, i32 1
  %363 = getelementptr inbounds %struct.Reg, %struct.Reg* %362, i32 0, i32 0
  %RAX.i685 = bitcast %union.anon* %363 to i64*
  %364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %365 = getelementptr inbounds %struct.GPR, %struct.GPR* %364, i32 0, i32 15
  %366 = getelementptr inbounds %struct.Reg, %struct.Reg* %365, i32 0, i32 0
  %RBP.i686 = bitcast %union.anon* %366 to i64*
  %367 = load i64, i64* %RBP.i686
  %368 = sub i64 %367, 28
  %369 = load i64, i64* %PC.i684
  %370 = add i64 %369, 3
  store i64 %370, i64* %PC.i684
  %371 = inttoptr i64 %368 to i32*
  %372 = load i32, i32* %371
  %373 = zext i32 %372 to i64
  store i64 %373, i64* %RAX.i685, align 8
  store %struct.Memory* %loadMem_42fa54, %struct.Memory** %MEMORY
  %loadMem_42fa57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %375 = getelementptr inbounds %struct.GPR, %struct.GPR* %374, i32 0, i32 33
  %376 = getelementptr inbounds %struct.Reg, %struct.Reg* %375, i32 0, i32 0
  %PC.i681 = bitcast %union.anon* %376 to i64*
  %377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %378 = getelementptr inbounds %struct.GPR, %struct.GPR* %377, i32 0, i32 5
  %379 = getelementptr inbounds %struct.Reg, %struct.Reg* %378, i32 0, i32 0
  %RCX.i682 = bitcast %union.anon* %379 to i64*
  %380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %381 = getelementptr inbounds %struct.GPR, %struct.GPR* %380, i32 0, i32 15
  %382 = getelementptr inbounds %struct.Reg, %struct.Reg* %381, i32 0, i32 0
  %RBP.i683 = bitcast %union.anon* %382 to i64*
  %383 = load i64, i64* %RBP.i683
  %384 = sub i64 %383, 8
  %385 = load i64, i64* %PC.i681
  %386 = add i64 %385, 4
  store i64 %386, i64* %PC.i681
  %387 = inttoptr i64 %384 to i64*
  %388 = load i64, i64* %387
  store i64 %388, i64* %RCX.i682, align 8
  store %struct.Memory* %loadMem_42fa57, %struct.Memory** %MEMORY
  %loadMem_42fa5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %390 = getelementptr inbounds %struct.GPR, %struct.GPR* %389, i32 0, i32 33
  %391 = getelementptr inbounds %struct.Reg, %struct.Reg* %390, i32 0, i32 0
  %PC.i678 = bitcast %union.anon* %391 to i64*
  %392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %393 = getelementptr inbounds %struct.GPR, %struct.GPR* %392, i32 0, i32 1
  %394 = getelementptr inbounds %struct.Reg, %struct.Reg* %393, i32 0, i32 0
  %EAX.i679 = bitcast %union.anon* %394 to i32*
  %395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %396 = getelementptr inbounds %struct.GPR, %struct.GPR* %395, i32 0, i32 5
  %397 = getelementptr inbounds %struct.Reg, %struct.Reg* %396, i32 0, i32 0
  %RCX.i680 = bitcast %union.anon* %397 to i64*
  %398 = load i32, i32* %EAX.i679
  %399 = zext i32 %398 to i64
  %400 = load i64, i64* %RCX.i680
  %401 = add i64 %400, 28
  %402 = load i64, i64* %PC.i678
  %403 = add i64 %402, 3
  store i64 %403, i64* %PC.i678
  %404 = inttoptr i64 %401 to i32*
  %405 = load i32, i32* %404
  %406 = sub i32 %398, %405
  %407 = icmp ult i32 %398, %405
  %408 = zext i1 %407 to i8
  %409 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %408, i8* %409, align 1
  %410 = and i32 %406, 255
  %411 = call i32 @llvm.ctpop.i32(i32 %410)
  %412 = trunc i32 %411 to i8
  %413 = and i8 %412, 1
  %414 = xor i8 %413, 1
  %415 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %414, i8* %415, align 1
  %416 = xor i32 %405, %398
  %417 = xor i32 %416, %406
  %418 = lshr i32 %417, 4
  %419 = trunc i32 %418 to i8
  %420 = and i8 %419, 1
  %421 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %420, i8* %421, align 1
  %422 = icmp eq i32 %406, 0
  %423 = zext i1 %422 to i8
  %424 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %423, i8* %424, align 1
  %425 = lshr i32 %406, 31
  %426 = trunc i32 %425 to i8
  %427 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %426, i8* %427, align 1
  %428 = lshr i32 %398, 31
  %429 = lshr i32 %405, 31
  %430 = xor i32 %429, %428
  %431 = xor i32 %425, %428
  %432 = add i32 %431, %430
  %433 = icmp eq i32 %432, 2
  %434 = zext i1 %433 to i8
  %435 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %434, i8* %435, align 1
  store %struct.Memory* %loadMem_42fa5b, %struct.Memory** %MEMORY
  %loadMem_42fa5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %437 = getelementptr inbounds %struct.GPR, %struct.GPR* %436, i32 0, i32 33
  %438 = getelementptr inbounds %struct.Reg, %struct.Reg* %437, i32 0, i32 0
  %PC.i677 = bitcast %union.anon* %438 to i64*
  %439 = load i64, i64* %PC.i677
  %440 = add i64 %439, 384
  %441 = load i64, i64* %PC.i677
  %442 = add i64 %441, 6
  %443 = load i64, i64* %PC.i677
  %444 = add i64 %443, 6
  store i64 %444, i64* %PC.i677
  %445 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %446 = load i8, i8* %445, align 1
  %447 = icmp ne i8 %446, 0
  %448 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %449 = load i8, i8* %448, align 1
  %450 = icmp ne i8 %449, 0
  %451 = xor i1 %447, %450
  %452 = xor i1 %451, true
  %453 = zext i1 %452 to i8
  store i8 %453, i8* %BRANCH_TAKEN, align 1
  %454 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %455 = select i1 %451, i64 %442, i64 %440
  store i64 %455, i64* %454, align 8
  store %struct.Memory* %loadMem_42fa5e, %struct.Memory** %MEMORY
  %loadBr_42fa5e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42fa5e = icmp eq i8 %loadBr_42fa5e, 1
  br i1 %cmpBr_42fa5e, label %block_.L_42fbde, label %block_42fa64

block_42fa64:                                     ; preds = %block_.L_42fa54
  %loadMem_42fa64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %457 = getelementptr inbounds %struct.GPR, %struct.GPR* %456, i32 0, i32 33
  %458 = getelementptr inbounds %struct.Reg, %struct.Reg* %457, i32 0, i32 0
  %PC.i674 = bitcast %union.anon* %458 to i64*
  %459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %460 = getelementptr inbounds %struct.GPR, %struct.GPR* %459, i32 0, i32 1
  %461 = getelementptr inbounds %struct.Reg, %struct.Reg* %460, i32 0, i32 0
  %RAX.i675 = bitcast %union.anon* %461 to i64*
  %462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %463 = getelementptr inbounds %struct.GPR, %struct.GPR* %462, i32 0, i32 15
  %464 = getelementptr inbounds %struct.Reg, %struct.Reg* %463, i32 0, i32 0
  %RBP.i676 = bitcast %union.anon* %464 to i64*
  %465 = load i64, i64* %RBP.i676
  %466 = sub i64 %465, 8
  %467 = load i64, i64* %PC.i674
  %468 = add i64 %467, 4
  store i64 %468, i64* %PC.i674
  %469 = inttoptr i64 %466 to i64*
  %470 = load i64, i64* %469
  store i64 %470, i64* %RAX.i675, align 8
  store %struct.Memory* %loadMem_42fa64, %struct.Memory** %MEMORY
  %loadMem_42fa68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %472 = getelementptr inbounds %struct.GPR, %struct.GPR* %471, i32 0, i32 33
  %473 = getelementptr inbounds %struct.Reg, %struct.Reg* %472, i32 0, i32 0
  %PC.i672 = bitcast %union.anon* %473 to i64*
  %474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %475 = getelementptr inbounds %struct.GPR, %struct.GPR* %474, i32 0, i32 1
  %476 = getelementptr inbounds %struct.Reg, %struct.Reg* %475, i32 0, i32 0
  %RAX.i673 = bitcast %union.anon* %476 to i64*
  %477 = load i64, i64* %RAX.i673
  %478 = load i64, i64* %PC.i672
  %479 = add i64 %478, 3
  store i64 %479, i64* %PC.i672
  %480 = inttoptr i64 %477 to i64*
  %481 = load i64, i64* %480
  store i64 %481, i64* %RAX.i673, align 8
  store %struct.Memory* %loadMem_42fa68, %struct.Memory** %MEMORY
  %loadMem_42fa6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %482 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %483 = getelementptr inbounds %struct.GPR, %struct.GPR* %482, i32 0, i32 33
  %484 = getelementptr inbounds %struct.Reg, %struct.Reg* %483, i32 0, i32 0
  %PC.i669 = bitcast %union.anon* %484 to i64*
  %485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %486 = getelementptr inbounds %struct.GPR, %struct.GPR* %485, i32 0, i32 5
  %487 = getelementptr inbounds %struct.Reg, %struct.Reg* %486, i32 0, i32 0
  %RCX.i670 = bitcast %union.anon* %487 to i64*
  %488 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %489 = getelementptr inbounds %struct.GPR, %struct.GPR* %488, i32 0, i32 15
  %490 = getelementptr inbounds %struct.Reg, %struct.Reg* %489, i32 0, i32 0
  %RBP.i671 = bitcast %union.anon* %490 to i64*
  %491 = load i64, i64* %RBP.i671
  %492 = sub i64 %491, 28
  %493 = load i64, i64* %PC.i669
  %494 = add i64 %493, 4
  store i64 %494, i64* %PC.i669
  %495 = inttoptr i64 %492 to i32*
  %496 = load i32, i32* %495
  %497 = sext i32 %496 to i64
  store i64 %497, i64* %RCX.i670, align 8
  store %struct.Memory* %loadMem_42fa6b, %struct.Memory** %MEMORY
  %loadMem_42fa6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %499 = getelementptr inbounds %struct.GPR, %struct.GPR* %498, i32 0, i32 33
  %500 = getelementptr inbounds %struct.Reg, %struct.Reg* %499, i32 0, i32 0
  %PC.i666 = bitcast %union.anon* %500 to i64*
  %501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %502 = getelementptr inbounds %struct.GPR, %struct.GPR* %501, i32 0, i32 1
  %503 = getelementptr inbounds %struct.Reg, %struct.Reg* %502, i32 0, i32 0
  %RAX.i667 = bitcast %union.anon* %503 to i64*
  %504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %505 = getelementptr inbounds %struct.GPR, %struct.GPR* %504, i32 0, i32 5
  %506 = getelementptr inbounds %struct.Reg, %struct.Reg* %505, i32 0, i32 0
  %RCX.i668 = bitcast %union.anon* %506 to i64*
  %507 = load i64, i64* %RAX.i667
  %508 = load i64, i64* %RCX.i668
  %509 = mul i64 %508, 8
  %510 = add i64 %509, %507
  %511 = load i64, i64* %PC.i666
  %512 = add i64 %511, 4
  store i64 %512, i64* %PC.i666
  %513 = inttoptr i64 %510 to i64*
  %514 = load i64, i64* %513
  store i64 %514, i64* %RAX.i667, align 8
  store %struct.Memory* %loadMem_42fa6f, %struct.Memory** %MEMORY
  %loadMem_42fa73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %516 = getelementptr inbounds %struct.GPR, %struct.GPR* %515, i32 0, i32 33
  %517 = getelementptr inbounds %struct.Reg, %struct.Reg* %516, i32 0, i32 0
  %PC.i663 = bitcast %union.anon* %517 to i64*
  %518 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %519 = getelementptr inbounds %struct.GPR, %struct.GPR* %518, i32 0, i32 5
  %520 = getelementptr inbounds %struct.Reg, %struct.Reg* %519, i32 0, i32 0
  %RCX.i664 = bitcast %union.anon* %520 to i64*
  %521 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %522 = getelementptr inbounds %struct.GPR, %struct.GPR* %521, i32 0, i32 15
  %523 = getelementptr inbounds %struct.Reg, %struct.Reg* %522, i32 0, i32 0
  %RBP.i665 = bitcast %union.anon* %523 to i64*
  %524 = load i64, i64* %RBP.i665
  %525 = sub i64 %524, 20
  %526 = load i64, i64* %PC.i663
  %527 = add i64 %526, 4
  store i64 %527, i64* %PC.i663
  %528 = inttoptr i64 %525 to i32*
  %529 = load i32, i32* %528
  %530 = sext i32 %529 to i64
  store i64 %530, i64* %RCX.i664, align 8
  store %struct.Memory* %loadMem_42fa73, %struct.Memory** %MEMORY
  %loadMem_42fa77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %532 = getelementptr inbounds %struct.GPR, %struct.GPR* %531, i32 0, i32 33
  %533 = getelementptr inbounds %struct.Reg, %struct.Reg* %532, i32 0, i32 0
  %PC.i659 = bitcast %union.anon* %533 to i64*
  %534 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %535 = getelementptr inbounds %struct.GPR, %struct.GPR* %534, i32 0, i32 7
  %536 = getelementptr inbounds %struct.Reg, %struct.Reg* %535, i32 0, i32 0
  %537 = bitcast %union.anon* %536 to %struct.anon.2*
  %DL.i660 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %537, i32 0, i32 0
  %538 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %539 = getelementptr inbounds %struct.GPR, %struct.GPR* %538, i32 0, i32 1
  %540 = getelementptr inbounds %struct.Reg, %struct.Reg* %539, i32 0, i32 0
  %RAX.i661 = bitcast %union.anon* %540 to i64*
  %541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %542 = getelementptr inbounds %struct.GPR, %struct.GPR* %541, i32 0, i32 5
  %543 = getelementptr inbounds %struct.Reg, %struct.Reg* %542, i32 0, i32 0
  %RCX.i662 = bitcast %union.anon* %543 to i64*
  %544 = load i64, i64* %RAX.i661
  %545 = load i64, i64* %RCX.i662
  %546 = add i64 %545, %544
  %547 = load i64, i64* %PC.i659
  %548 = add i64 %547, 3
  store i64 %548, i64* %PC.i659
  %549 = inttoptr i64 %546 to i8*
  %550 = load i8, i8* %549
  store i8 %550, i8* %DL.i660, align 1
  store %struct.Memory* %loadMem_42fa77, %struct.Memory** %MEMORY
  %loadMem_42fa7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %552 = getelementptr inbounds %struct.GPR, %struct.GPR* %551, i32 0, i32 33
  %553 = getelementptr inbounds %struct.Reg, %struct.Reg* %552, i32 0, i32 0
  %PC.i656 = bitcast %union.anon* %553 to i64*
  %554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %555 = getelementptr inbounds %struct.GPR, %struct.GPR* %554, i32 0, i32 1
  %556 = getelementptr inbounds %struct.Reg, %struct.Reg* %555, i32 0, i32 0
  %RAX.i657 = bitcast %union.anon* %556 to i64*
  %557 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %558 = getelementptr inbounds %struct.GPR, %struct.GPR* %557, i32 0, i32 15
  %559 = getelementptr inbounds %struct.Reg, %struct.Reg* %558, i32 0, i32 0
  %RBP.i658 = bitcast %union.anon* %559 to i64*
  %560 = load i64, i64* %RBP.i658
  %561 = sub i64 %560, 8
  %562 = load i64, i64* %PC.i656
  %563 = add i64 %562, 4
  store i64 %563, i64* %PC.i656
  %564 = inttoptr i64 %561 to i64*
  %565 = load i64, i64* %564
  store i64 %565, i64* %RAX.i657, align 8
  store %struct.Memory* %loadMem_42fa7a, %struct.Memory** %MEMORY
  %loadMem_42fa7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %566 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %567 = getelementptr inbounds %struct.GPR, %struct.GPR* %566, i32 0, i32 33
  %568 = getelementptr inbounds %struct.Reg, %struct.Reg* %567, i32 0, i32 0
  %PC.i654 = bitcast %union.anon* %568 to i64*
  %569 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %570 = getelementptr inbounds %struct.GPR, %struct.GPR* %569, i32 0, i32 1
  %571 = getelementptr inbounds %struct.Reg, %struct.Reg* %570, i32 0, i32 0
  %RAX.i655 = bitcast %union.anon* %571 to i64*
  %572 = load i64, i64* %RAX.i655
  %573 = load i64, i64* %PC.i654
  %574 = add i64 %573, 3
  store i64 %574, i64* %PC.i654
  %575 = inttoptr i64 %572 to i64*
  %576 = load i64, i64* %575
  store i64 %576, i64* %RAX.i655, align 8
  store %struct.Memory* %loadMem_42fa7e, %struct.Memory** %MEMORY
  %loadMem_42fa81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %578 = getelementptr inbounds %struct.GPR, %struct.GPR* %577, i32 0, i32 33
  %579 = getelementptr inbounds %struct.Reg, %struct.Reg* %578, i32 0, i32 0
  %PC.i651 = bitcast %union.anon* %579 to i64*
  %580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %581 = getelementptr inbounds %struct.GPR, %struct.GPR* %580, i32 0, i32 5
  %582 = getelementptr inbounds %struct.Reg, %struct.Reg* %581, i32 0, i32 0
  %RCX.i652 = bitcast %union.anon* %582 to i64*
  %583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %584 = getelementptr inbounds %struct.GPR, %struct.GPR* %583, i32 0, i32 15
  %585 = getelementptr inbounds %struct.Reg, %struct.Reg* %584, i32 0, i32 0
  %RBP.i653 = bitcast %union.anon* %585 to i64*
  %586 = load i64, i64* %RBP.i653
  %587 = sub i64 %586, 28
  %588 = load i64, i64* %PC.i651
  %589 = add i64 %588, 4
  store i64 %589, i64* %PC.i651
  %590 = inttoptr i64 %587 to i32*
  %591 = load i32, i32* %590
  %592 = sext i32 %591 to i64
  store i64 %592, i64* %RCX.i652, align 8
  store %struct.Memory* %loadMem_42fa81, %struct.Memory** %MEMORY
  %loadMem_42fa85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %594 = getelementptr inbounds %struct.GPR, %struct.GPR* %593, i32 0, i32 33
  %595 = getelementptr inbounds %struct.Reg, %struct.Reg* %594, i32 0, i32 0
  %PC.i648 = bitcast %union.anon* %595 to i64*
  %596 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %597 = getelementptr inbounds %struct.GPR, %struct.GPR* %596, i32 0, i32 1
  %598 = getelementptr inbounds %struct.Reg, %struct.Reg* %597, i32 0, i32 0
  %RAX.i649 = bitcast %union.anon* %598 to i64*
  %599 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %600 = getelementptr inbounds %struct.GPR, %struct.GPR* %599, i32 0, i32 5
  %601 = getelementptr inbounds %struct.Reg, %struct.Reg* %600, i32 0, i32 0
  %RCX.i650 = bitcast %union.anon* %601 to i64*
  %602 = load i64, i64* %RAX.i649
  %603 = load i64, i64* %RCX.i650
  %604 = mul i64 %603, 8
  %605 = add i64 %604, %602
  %606 = load i64, i64* %PC.i648
  %607 = add i64 %606, 4
  store i64 %607, i64* %PC.i648
  %608 = inttoptr i64 %605 to i64*
  %609 = load i64, i64* %608
  store i64 %609, i64* %RAX.i649, align 8
  store %struct.Memory* %loadMem_42fa85, %struct.Memory** %MEMORY
  %loadMem_42fa89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %611 = getelementptr inbounds %struct.GPR, %struct.GPR* %610, i32 0, i32 33
  %612 = getelementptr inbounds %struct.Reg, %struct.Reg* %611, i32 0, i32 0
  %PC.i645 = bitcast %union.anon* %612 to i64*
  %613 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %614 = getelementptr inbounds %struct.GPR, %struct.GPR* %613, i32 0, i32 5
  %615 = getelementptr inbounds %struct.Reg, %struct.Reg* %614, i32 0, i32 0
  %RCX.i646 = bitcast %union.anon* %615 to i64*
  %616 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %617 = getelementptr inbounds %struct.GPR, %struct.GPR* %616, i32 0, i32 15
  %618 = getelementptr inbounds %struct.Reg, %struct.Reg* %617, i32 0, i32 0
  %RBP.i647 = bitcast %union.anon* %618 to i64*
  %619 = load i64, i64* %RBP.i647
  %620 = sub i64 %619, 24
  %621 = load i64, i64* %PC.i645
  %622 = add i64 %621, 4
  store i64 %622, i64* %PC.i645
  %623 = inttoptr i64 %620 to i32*
  %624 = load i32, i32* %623
  %625 = sext i32 %624 to i64
  store i64 %625, i64* %RCX.i646, align 8
  store %struct.Memory* %loadMem_42fa89, %struct.Memory** %MEMORY
  %loadMem_42fa8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %627 = getelementptr inbounds %struct.GPR, %struct.GPR* %626, i32 0, i32 33
  %628 = getelementptr inbounds %struct.Reg, %struct.Reg* %627, i32 0, i32 0
  %PC.i641 = bitcast %union.anon* %628 to i64*
  %629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %630 = getelementptr inbounds %struct.GPR, %struct.GPR* %629, i32 0, i32 7
  %631 = getelementptr inbounds %struct.Reg, %struct.Reg* %630, i32 0, i32 0
  %632 = bitcast %union.anon* %631 to %struct.anon.2*
  %DL.i642 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %632, i32 0, i32 0
  %633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %634 = getelementptr inbounds %struct.GPR, %struct.GPR* %633, i32 0, i32 1
  %635 = getelementptr inbounds %struct.Reg, %struct.Reg* %634, i32 0, i32 0
  %RAX.i643 = bitcast %union.anon* %635 to i64*
  %636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %637 = getelementptr inbounds %struct.GPR, %struct.GPR* %636, i32 0, i32 5
  %638 = getelementptr inbounds %struct.Reg, %struct.Reg* %637, i32 0, i32 0
  %RCX.i644 = bitcast %union.anon* %638 to i64*
  %639 = load i64, i64* %RAX.i643
  %640 = load i64, i64* %RCX.i644
  %641 = add i64 %640, %639
  %642 = load i8, i8* %DL.i642
  %643 = zext i8 %642 to i64
  %644 = load i64, i64* %PC.i641
  %645 = add i64 %644, 3
  store i64 %645, i64* %PC.i641
  %646 = inttoptr i64 %641 to i8*
  store i8 %642, i8* %646
  store %struct.Memory* %loadMem_42fa8d, %struct.Memory** %MEMORY
  %loadMem_42fa90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %648 = getelementptr inbounds %struct.GPR, %struct.GPR* %647, i32 0, i32 33
  %649 = getelementptr inbounds %struct.Reg, %struct.Reg* %648, i32 0, i32 0
  %PC.i638 = bitcast %union.anon* %649 to i64*
  %650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %651 = getelementptr inbounds %struct.GPR, %struct.GPR* %650, i32 0, i32 1
  %652 = getelementptr inbounds %struct.Reg, %struct.Reg* %651, i32 0, i32 0
  %RAX.i639 = bitcast %union.anon* %652 to i64*
  %653 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %654 = getelementptr inbounds %struct.GPR, %struct.GPR* %653, i32 0, i32 15
  %655 = getelementptr inbounds %struct.Reg, %struct.Reg* %654, i32 0, i32 0
  %RBP.i640 = bitcast %union.anon* %655 to i64*
  %656 = load i64, i64* %RBP.i640
  %657 = sub i64 %656, 8
  %658 = load i64, i64* %PC.i638
  %659 = add i64 %658, 4
  store i64 %659, i64* %PC.i638
  %660 = inttoptr i64 %657 to i64*
  %661 = load i64, i64* %660
  store i64 %661, i64* %RAX.i639, align 8
  store %struct.Memory* %loadMem_42fa90, %struct.Memory** %MEMORY
  %loadMem_42fa94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %662 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %663 = getelementptr inbounds %struct.GPR, %struct.GPR* %662, i32 0, i32 33
  %664 = getelementptr inbounds %struct.Reg, %struct.Reg* %663, i32 0, i32 0
  %PC.i636 = bitcast %union.anon* %664 to i64*
  %665 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %666 = getelementptr inbounds %struct.GPR, %struct.GPR* %665, i32 0, i32 1
  %667 = getelementptr inbounds %struct.Reg, %struct.Reg* %666, i32 0, i32 0
  %RAX.i637 = bitcast %union.anon* %667 to i64*
  %668 = load i64, i64* %RAX.i637
  %669 = add i64 %668, 112
  %670 = load i64, i64* %PC.i636
  %671 = add i64 %670, 5
  store i64 %671, i64* %PC.i636
  %672 = inttoptr i64 %669 to i64*
  %673 = load i64, i64* %672
  %674 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %674, align 1
  %675 = trunc i64 %673 to i32
  %676 = and i32 %675, 255
  %677 = call i32 @llvm.ctpop.i32(i32 %676)
  %678 = trunc i32 %677 to i8
  %679 = and i8 %678, 1
  %680 = xor i8 %679, 1
  %681 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %680, i8* %681, align 1
  %682 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %682, align 1
  %683 = icmp eq i64 %673, 0
  %684 = zext i1 %683 to i8
  %685 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %684, i8* %685, align 1
  %686 = lshr i64 %673, 63
  %687 = trunc i64 %686 to i8
  %688 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %687, i8* %688, align 1
  %689 = lshr i64 %673, 63
  %690 = xor i64 %686, %689
  %691 = add i64 %690, %689
  %692 = icmp eq i64 %691, 2
  %693 = zext i1 %692 to i8
  %694 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %693, i8* %694, align 1
  store %struct.Memory* %loadMem_42fa94, %struct.Memory** %MEMORY
  %loadMem_42fa99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %695 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %696 = getelementptr inbounds %struct.GPR, %struct.GPR* %695, i32 0, i32 33
  %697 = getelementptr inbounds %struct.Reg, %struct.Reg* %696, i32 0, i32 0
  %PC.i635 = bitcast %union.anon* %697 to i64*
  %698 = load i64, i64* %PC.i635
  %699 = add i64 %698, 75
  %700 = load i64, i64* %PC.i635
  %701 = add i64 %700, 6
  %702 = load i64, i64* %PC.i635
  %703 = add i64 %702, 6
  store i64 %703, i64* %PC.i635
  %704 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %705 = load i8, i8* %704, align 1
  store i8 %705, i8* %BRANCH_TAKEN, align 1
  %706 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %707 = icmp ne i8 %705, 0
  %708 = select i1 %707, i64 %699, i64 %701
  store i64 %708, i64* %706, align 8
  store %struct.Memory* %loadMem_42fa99, %struct.Memory** %MEMORY
  %loadBr_42fa99 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42fa99 = icmp eq i8 %loadBr_42fa99, 1
  br i1 %cmpBr_42fa99, label %block_.L_42fae4, label %block_42fa9f

block_42fa9f:                                     ; preds = %block_42fa64
  %loadMem_42fa9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %710 = getelementptr inbounds %struct.GPR, %struct.GPR* %709, i32 0, i32 33
  %711 = getelementptr inbounds %struct.Reg, %struct.Reg* %710, i32 0, i32 0
  %PC.i632 = bitcast %union.anon* %711 to i64*
  %712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %713 = getelementptr inbounds %struct.GPR, %struct.GPR* %712, i32 0, i32 1
  %714 = getelementptr inbounds %struct.Reg, %struct.Reg* %713, i32 0, i32 0
  %RAX.i633 = bitcast %union.anon* %714 to i64*
  %715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %716 = getelementptr inbounds %struct.GPR, %struct.GPR* %715, i32 0, i32 15
  %717 = getelementptr inbounds %struct.Reg, %struct.Reg* %716, i32 0, i32 0
  %RBP.i634 = bitcast %union.anon* %717 to i64*
  %718 = load i64, i64* %RBP.i634
  %719 = sub i64 %718, 8
  %720 = load i64, i64* %PC.i632
  %721 = add i64 %720, 4
  store i64 %721, i64* %PC.i632
  %722 = inttoptr i64 %719 to i64*
  %723 = load i64, i64* %722
  store i64 %723, i64* %RAX.i633, align 8
  store %struct.Memory* %loadMem_42fa9f, %struct.Memory** %MEMORY
  %loadMem_42faa3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %725 = getelementptr inbounds %struct.GPR, %struct.GPR* %724, i32 0, i32 33
  %726 = getelementptr inbounds %struct.Reg, %struct.Reg* %725, i32 0, i32 0
  %PC.i630 = bitcast %union.anon* %726 to i64*
  %727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %728 = getelementptr inbounds %struct.GPR, %struct.GPR* %727, i32 0, i32 1
  %729 = getelementptr inbounds %struct.Reg, %struct.Reg* %728, i32 0, i32 0
  %RAX.i631 = bitcast %union.anon* %729 to i64*
  %730 = load i64, i64* %RAX.i631
  %731 = add i64 %730, 112
  %732 = load i64, i64* %PC.i630
  %733 = add i64 %732, 4
  store i64 %733, i64* %PC.i630
  %734 = inttoptr i64 %731 to i64*
  %735 = load i64, i64* %734
  store i64 %735, i64* %RAX.i631, align 8
  store %struct.Memory* %loadMem_42faa3, %struct.Memory** %MEMORY
  %loadMem_42faa7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %737 = getelementptr inbounds %struct.GPR, %struct.GPR* %736, i32 0, i32 33
  %738 = getelementptr inbounds %struct.Reg, %struct.Reg* %737, i32 0, i32 0
  %PC.i627 = bitcast %union.anon* %738 to i64*
  %739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %740 = getelementptr inbounds %struct.GPR, %struct.GPR* %739, i32 0, i32 5
  %741 = getelementptr inbounds %struct.Reg, %struct.Reg* %740, i32 0, i32 0
  %RCX.i628 = bitcast %union.anon* %741 to i64*
  %742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %743 = getelementptr inbounds %struct.GPR, %struct.GPR* %742, i32 0, i32 15
  %744 = getelementptr inbounds %struct.Reg, %struct.Reg* %743, i32 0, i32 0
  %RBP.i629 = bitcast %union.anon* %744 to i64*
  %745 = load i64, i64* %RBP.i629
  %746 = sub i64 %745, 28
  %747 = load i64, i64* %PC.i627
  %748 = add i64 %747, 4
  store i64 %748, i64* %PC.i627
  %749 = inttoptr i64 %746 to i32*
  %750 = load i32, i32* %749
  %751 = sext i32 %750 to i64
  store i64 %751, i64* %RCX.i628, align 8
  store %struct.Memory* %loadMem_42faa7, %struct.Memory** %MEMORY
  %loadMem_42faab = load %struct.Memory*, %struct.Memory** %MEMORY
  %752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %753 = getelementptr inbounds %struct.GPR, %struct.GPR* %752, i32 0, i32 33
  %754 = getelementptr inbounds %struct.Reg, %struct.Reg* %753, i32 0, i32 0
  %PC.i624 = bitcast %union.anon* %754 to i64*
  %755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %756 = getelementptr inbounds %struct.GPR, %struct.GPR* %755, i32 0, i32 1
  %757 = getelementptr inbounds %struct.Reg, %struct.Reg* %756, i32 0, i32 0
  %RAX.i625 = bitcast %union.anon* %757 to i64*
  %758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %759 = getelementptr inbounds %struct.GPR, %struct.GPR* %758, i32 0, i32 5
  %760 = getelementptr inbounds %struct.Reg, %struct.Reg* %759, i32 0, i32 0
  %RCX.i626 = bitcast %union.anon* %760 to i64*
  %761 = load i64, i64* %RAX.i625
  %762 = load i64, i64* %RCX.i626
  %763 = mul i64 %762, 8
  %764 = add i64 %763, %761
  %765 = load i64, i64* %PC.i624
  %766 = add i64 %765, 5
  store i64 %766, i64* %PC.i624
  %767 = inttoptr i64 %764 to i64*
  %768 = load i64, i64* %767
  %769 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %769, align 1
  %770 = trunc i64 %768 to i32
  %771 = and i32 %770, 255
  %772 = call i32 @llvm.ctpop.i32(i32 %771)
  %773 = trunc i32 %772 to i8
  %774 = and i8 %773, 1
  %775 = xor i8 %774, 1
  %776 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %775, i8* %776, align 1
  %777 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %777, align 1
  %778 = icmp eq i64 %768, 0
  %779 = zext i1 %778 to i8
  %780 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %779, i8* %780, align 1
  %781 = lshr i64 %768, 63
  %782 = trunc i64 %781 to i8
  %783 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %782, i8* %783, align 1
  %784 = lshr i64 %768, 63
  %785 = xor i64 %781, %784
  %786 = add i64 %785, %784
  %787 = icmp eq i64 %786, 2
  %788 = zext i1 %787 to i8
  %789 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %788, i8* %789, align 1
  store %struct.Memory* %loadMem_42faab, %struct.Memory** %MEMORY
  %loadMem_42fab0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %790 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %791 = getelementptr inbounds %struct.GPR, %struct.GPR* %790, i32 0, i32 33
  %792 = getelementptr inbounds %struct.Reg, %struct.Reg* %791, i32 0, i32 0
  %PC.i623 = bitcast %union.anon* %792 to i64*
  %793 = load i64, i64* %PC.i623
  %794 = add i64 %793, 52
  %795 = load i64, i64* %PC.i623
  %796 = add i64 %795, 6
  %797 = load i64, i64* %PC.i623
  %798 = add i64 %797, 6
  store i64 %798, i64* %PC.i623
  %799 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %800 = load i8, i8* %799, align 1
  store i8 %800, i8* %BRANCH_TAKEN, align 1
  %801 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %802 = icmp ne i8 %800, 0
  %803 = select i1 %802, i64 %794, i64 %796
  store i64 %803, i64* %801, align 8
  store %struct.Memory* %loadMem_42fab0, %struct.Memory** %MEMORY
  %loadBr_42fab0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42fab0 = icmp eq i8 %loadBr_42fab0, 1
  br i1 %cmpBr_42fab0, label %block_.L_42fae4, label %block_42fab6

block_42fab6:                                     ; preds = %block_42fa9f
  %loadMem_42fab6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %804 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %805 = getelementptr inbounds %struct.GPR, %struct.GPR* %804, i32 0, i32 33
  %806 = getelementptr inbounds %struct.Reg, %struct.Reg* %805, i32 0, i32 0
  %PC.i620 = bitcast %union.anon* %806 to i64*
  %807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %808 = getelementptr inbounds %struct.GPR, %struct.GPR* %807, i32 0, i32 1
  %809 = getelementptr inbounds %struct.Reg, %struct.Reg* %808, i32 0, i32 0
  %RAX.i621 = bitcast %union.anon* %809 to i64*
  %810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %811 = getelementptr inbounds %struct.GPR, %struct.GPR* %810, i32 0, i32 15
  %812 = getelementptr inbounds %struct.Reg, %struct.Reg* %811, i32 0, i32 0
  %RBP.i622 = bitcast %union.anon* %812 to i64*
  %813 = load i64, i64* %RBP.i622
  %814 = sub i64 %813, 8
  %815 = load i64, i64* %PC.i620
  %816 = add i64 %815, 4
  store i64 %816, i64* %PC.i620
  %817 = inttoptr i64 %814 to i64*
  %818 = load i64, i64* %817
  store i64 %818, i64* %RAX.i621, align 8
  store %struct.Memory* %loadMem_42fab6, %struct.Memory** %MEMORY
  %loadMem_42faba = load %struct.Memory*, %struct.Memory** %MEMORY
  %819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %820 = getelementptr inbounds %struct.GPR, %struct.GPR* %819, i32 0, i32 33
  %821 = getelementptr inbounds %struct.Reg, %struct.Reg* %820, i32 0, i32 0
  %PC.i618 = bitcast %union.anon* %821 to i64*
  %822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %823 = getelementptr inbounds %struct.GPR, %struct.GPR* %822, i32 0, i32 1
  %824 = getelementptr inbounds %struct.Reg, %struct.Reg* %823, i32 0, i32 0
  %RAX.i619 = bitcast %union.anon* %824 to i64*
  %825 = load i64, i64* %RAX.i619
  %826 = add i64 %825, 112
  %827 = load i64, i64* %PC.i618
  %828 = add i64 %827, 4
  store i64 %828, i64* %PC.i618
  %829 = inttoptr i64 %826 to i64*
  %830 = load i64, i64* %829
  store i64 %830, i64* %RAX.i619, align 8
  store %struct.Memory* %loadMem_42faba, %struct.Memory** %MEMORY
  %loadMem_42fabe = load %struct.Memory*, %struct.Memory** %MEMORY
  %831 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %832 = getelementptr inbounds %struct.GPR, %struct.GPR* %831, i32 0, i32 33
  %833 = getelementptr inbounds %struct.Reg, %struct.Reg* %832, i32 0, i32 0
  %PC.i615 = bitcast %union.anon* %833 to i64*
  %834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %835 = getelementptr inbounds %struct.GPR, %struct.GPR* %834, i32 0, i32 5
  %836 = getelementptr inbounds %struct.Reg, %struct.Reg* %835, i32 0, i32 0
  %RCX.i616 = bitcast %union.anon* %836 to i64*
  %837 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %838 = getelementptr inbounds %struct.GPR, %struct.GPR* %837, i32 0, i32 15
  %839 = getelementptr inbounds %struct.Reg, %struct.Reg* %838, i32 0, i32 0
  %RBP.i617 = bitcast %union.anon* %839 to i64*
  %840 = load i64, i64* %RBP.i617
  %841 = sub i64 %840, 28
  %842 = load i64, i64* %PC.i615
  %843 = add i64 %842, 4
  store i64 %843, i64* %PC.i615
  %844 = inttoptr i64 %841 to i32*
  %845 = load i32, i32* %844
  %846 = sext i32 %845 to i64
  store i64 %846, i64* %RCX.i616, align 8
  store %struct.Memory* %loadMem_42fabe, %struct.Memory** %MEMORY
  %loadMem_42fac2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %847 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %848 = getelementptr inbounds %struct.GPR, %struct.GPR* %847, i32 0, i32 33
  %849 = getelementptr inbounds %struct.Reg, %struct.Reg* %848, i32 0, i32 0
  %PC.i612 = bitcast %union.anon* %849 to i64*
  %850 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %851 = getelementptr inbounds %struct.GPR, %struct.GPR* %850, i32 0, i32 1
  %852 = getelementptr inbounds %struct.Reg, %struct.Reg* %851, i32 0, i32 0
  %RAX.i613 = bitcast %union.anon* %852 to i64*
  %853 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %854 = getelementptr inbounds %struct.GPR, %struct.GPR* %853, i32 0, i32 5
  %855 = getelementptr inbounds %struct.Reg, %struct.Reg* %854, i32 0, i32 0
  %RCX.i614 = bitcast %union.anon* %855 to i64*
  %856 = load i64, i64* %RAX.i613
  %857 = load i64, i64* %RCX.i614
  %858 = mul i64 %857, 8
  %859 = add i64 %858, %856
  %860 = load i64, i64* %PC.i612
  %861 = add i64 %860, 4
  store i64 %861, i64* %PC.i612
  %862 = inttoptr i64 %859 to i64*
  %863 = load i64, i64* %862
  store i64 %863, i64* %RAX.i613, align 8
  store %struct.Memory* %loadMem_42fac2, %struct.Memory** %MEMORY
  %loadMem_42fac6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %864 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %865 = getelementptr inbounds %struct.GPR, %struct.GPR* %864, i32 0, i32 33
  %866 = getelementptr inbounds %struct.Reg, %struct.Reg* %865, i32 0, i32 0
  %PC.i609 = bitcast %union.anon* %866 to i64*
  %867 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %868 = getelementptr inbounds %struct.GPR, %struct.GPR* %867, i32 0, i32 5
  %869 = getelementptr inbounds %struct.Reg, %struct.Reg* %868, i32 0, i32 0
  %RCX.i610 = bitcast %union.anon* %869 to i64*
  %870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %871 = getelementptr inbounds %struct.GPR, %struct.GPR* %870, i32 0, i32 15
  %872 = getelementptr inbounds %struct.Reg, %struct.Reg* %871, i32 0, i32 0
  %RBP.i611 = bitcast %union.anon* %872 to i64*
  %873 = load i64, i64* %RBP.i611
  %874 = sub i64 %873, 20
  %875 = load i64, i64* %PC.i609
  %876 = add i64 %875, 4
  store i64 %876, i64* %PC.i609
  %877 = inttoptr i64 %874 to i32*
  %878 = load i32, i32* %877
  %879 = sext i32 %878 to i64
  store i64 %879, i64* %RCX.i610, align 8
  store %struct.Memory* %loadMem_42fac6, %struct.Memory** %MEMORY
  %loadMem_42faca = load %struct.Memory*, %struct.Memory** %MEMORY
  %880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %881 = getelementptr inbounds %struct.GPR, %struct.GPR* %880, i32 0, i32 33
  %882 = getelementptr inbounds %struct.Reg, %struct.Reg* %881, i32 0, i32 0
  %PC.i605 = bitcast %union.anon* %882 to i64*
  %883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %884 = getelementptr inbounds %struct.GPR, %struct.GPR* %883, i32 0, i32 7
  %885 = getelementptr inbounds %struct.Reg, %struct.Reg* %884, i32 0, i32 0
  %886 = bitcast %union.anon* %885 to %struct.anon.2*
  %DL.i606 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %886, i32 0, i32 0
  %887 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %888 = getelementptr inbounds %struct.GPR, %struct.GPR* %887, i32 0, i32 1
  %889 = getelementptr inbounds %struct.Reg, %struct.Reg* %888, i32 0, i32 0
  %RAX.i607 = bitcast %union.anon* %889 to i64*
  %890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %891 = getelementptr inbounds %struct.GPR, %struct.GPR* %890, i32 0, i32 5
  %892 = getelementptr inbounds %struct.Reg, %struct.Reg* %891, i32 0, i32 0
  %RCX.i608 = bitcast %union.anon* %892 to i64*
  %893 = load i64, i64* %RAX.i607
  %894 = load i64, i64* %RCX.i608
  %895 = add i64 %894, %893
  %896 = load i64, i64* %PC.i605
  %897 = add i64 %896, 3
  store i64 %897, i64* %PC.i605
  %898 = inttoptr i64 %895 to i8*
  %899 = load i8, i8* %898
  store i8 %899, i8* %DL.i606, align 1
  store %struct.Memory* %loadMem_42faca, %struct.Memory** %MEMORY
  %loadMem_42facd = load %struct.Memory*, %struct.Memory** %MEMORY
  %900 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %901 = getelementptr inbounds %struct.GPR, %struct.GPR* %900, i32 0, i32 33
  %902 = getelementptr inbounds %struct.Reg, %struct.Reg* %901, i32 0, i32 0
  %PC.i602 = bitcast %union.anon* %902 to i64*
  %903 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %904 = getelementptr inbounds %struct.GPR, %struct.GPR* %903, i32 0, i32 1
  %905 = getelementptr inbounds %struct.Reg, %struct.Reg* %904, i32 0, i32 0
  %RAX.i603 = bitcast %union.anon* %905 to i64*
  %906 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %907 = getelementptr inbounds %struct.GPR, %struct.GPR* %906, i32 0, i32 15
  %908 = getelementptr inbounds %struct.Reg, %struct.Reg* %907, i32 0, i32 0
  %RBP.i604 = bitcast %union.anon* %908 to i64*
  %909 = load i64, i64* %RBP.i604
  %910 = sub i64 %909, 8
  %911 = load i64, i64* %PC.i602
  %912 = add i64 %911, 4
  store i64 %912, i64* %PC.i602
  %913 = inttoptr i64 %910 to i64*
  %914 = load i64, i64* %913
  store i64 %914, i64* %RAX.i603, align 8
  store %struct.Memory* %loadMem_42facd, %struct.Memory** %MEMORY
  %loadMem_42fad1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %915 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %916 = getelementptr inbounds %struct.GPR, %struct.GPR* %915, i32 0, i32 33
  %917 = getelementptr inbounds %struct.Reg, %struct.Reg* %916, i32 0, i32 0
  %PC.i600 = bitcast %union.anon* %917 to i64*
  %918 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %919 = getelementptr inbounds %struct.GPR, %struct.GPR* %918, i32 0, i32 1
  %920 = getelementptr inbounds %struct.Reg, %struct.Reg* %919, i32 0, i32 0
  %RAX.i601 = bitcast %union.anon* %920 to i64*
  %921 = load i64, i64* %RAX.i601
  %922 = add i64 %921, 112
  %923 = load i64, i64* %PC.i600
  %924 = add i64 %923, 4
  store i64 %924, i64* %PC.i600
  %925 = inttoptr i64 %922 to i64*
  %926 = load i64, i64* %925
  store i64 %926, i64* %RAX.i601, align 8
  store %struct.Memory* %loadMem_42fad1, %struct.Memory** %MEMORY
  %loadMem_42fad5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %927 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %928 = getelementptr inbounds %struct.GPR, %struct.GPR* %927, i32 0, i32 33
  %929 = getelementptr inbounds %struct.Reg, %struct.Reg* %928, i32 0, i32 0
  %PC.i597 = bitcast %union.anon* %929 to i64*
  %930 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %931 = getelementptr inbounds %struct.GPR, %struct.GPR* %930, i32 0, i32 5
  %932 = getelementptr inbounds %struct.Reg, %struct.Reg* %931, i32 0, i32 0
  %RCX.i598 = bitcast %union.anon* %932 to i64*
  %933 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %934 = getelementptr inbounds %struct.GPR, %struct.GPR* %933, i32 0, i32 15
  %935 = getelementptr inbounds %struct.Reg, %struct.Reg* %934, i32 0, i32 0
  %RBP.i599 = bitcast %union.anon* %935 to i64*
  %936 = load i64, i64* %RBP.i599
  %937 = sub i64 %936, 28
  %938 = load i64, i64* %PC.i597
  %939 = add i64 %938, 4
  store i64 %939, i64* %PC.i597
  %940 = inttoptr i64 %937 to i32*
  %941 = load i32, i32* %940
  %942 = sext i32 %941 to i64
  store i64 %942, i64* %RCX.i598, align 8
  store %struct.Memory* %loadMem_42fad5, %struct.Memory** %MEMORY
  %loadMem_42fad9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %943 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %944 = getelementptr inbounds %struct.GPR, %struct.GPR* %943, i32 0, i32 33
  %945 = getelementptr inbounds %struct.Reg, %struct.Reg* %944, i32 0, i32 0
  %PC.i594 = bitcast %union.anon* %945 to i64*
  %946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %947 = getelementptr inbounds %struct.GPR, %struct.GPR* %946, i32 0, i32 1
  %948 = getelementptr inbounds %struct.Reg, %struct.Reg* %947, i32 0, i32 0
  %RAX.i595 = bitcast %union.anon* %948 to i64*
  %949 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %950 = getelementptr inbounds %struct.GPR, %struct.GPR* %949, i32 0, i32 5
  %951 = getelementptr inbounds %struct.Reg, %struct.Reg* %950, i32 0, i32 0
  %RCX.i596 = bitcast %union.anon* %951 to i64*
  %952 = load i64, i64* %RAX.i595
  %953 = load i64, i64* %RCX.i596
  %954 = mul i64 %953, 8
  %955 = add i64 %954, %952
  %956 = load i64, i64* %PC.i594
  %957 = add i64 %956, 4
  store i64 %957, i64* %PC.i594
  %958 = inttoptr i64 %955 to i64*
  %959 = load i64, i64* %958
  store i64 %959, i64* %RAX.i595, align 8
  store %struct.Memory* %loadMem_42fad9, %struct.Memory** %MEMORY
  %loadMem_42fadd = load %struct.Memory*, %struct.Memory** %MEMORY
  %960 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %961 = getelementptr inbounds %struct.GPR, %struct.GPR* %960, i32 0, i32 33
  %962 = getelementptr inbounds %struct.Reg, %struct.Reg* %961, i32 0, i32 0
  %PC.i591 = bitcast %union.anon* %962 to i64*
  %963 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %964 = getelementptr inbounds %struct.GPR, %struct.GPR* %963, i32 0, i32 5
  %965 = getelementptr inbounds %struct.Reg, %struct.Reg* %964, i32 0, i32 0
  %RCX.i592 = bitcast %union.anon* %965 to i64*
  %966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %967 = getelementptr inbounds %struct.GPR, %struct.GPR* %966, i32 0, i32 15
  %968 = getelementptr inbounds %struct.Reg, %struct.Reg* %967, i32 0, i32 0
  %RBP.i593 = bitcast %union.anon* %968 to i64*
  %969 = load i64, i64* %RBP.i593
  %970 = sub i64 %969, 24
  %971 = load i64, i64* %PC.i591
  %972 = add i64 %971, 4
  store i64 %972, i64* %PC.i591
  %973 = inttoptr i64 %970 to i32*
  %974 = load i32, i32* %973
  %975 = sext i32 %974 to i64
  store i64 %975, i64* %RCX.i592, align 8
  store %struct.Memory* %loadMem_42fadd, %struct.Memory** %MEMORY
  %loadMem_42fae1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %977 = getelementptr inbounds %struct.GPR, %struct.GPR* %976, i32 0, i32 33
  %978 = getelementptr inbounds %struct.Reg, %struct.Reg* %977, i32 0, i32 0
  %PC.i587 = bitcast %union.anon* %978 to i64*
  %979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %980 = getelementptr inbounds %struct.GPR, %struct.GPR* %979, i32 0, i32 7
  %981 = getelementptr inbounds %struct.Reg, %struct.Reg* %980, i32 0, i32 0
  %982 = bitcast %union.anon* %981 to %struct.anon.2*
  %DL.i588 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %982, i32 0, i32 0
  %983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %984 = getelementptr inbounds %struct.GPR, %struct.GPR* %983, i32 0, i32 1
  %985 = getelementptr inbounds %struct.Reg, %struct.Reg* %984, i32 0, i32 0
  %RAX.i589 = bitcast %union.anon* %985 to i64*
  %986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %987 = getelementptr inbounds %struct.GPR, %struct.GPR* %986, i32 0, i32 5
  %988 = getelementptr inbounds %struct.Reg, %struct.Reg* %987, i32 0, i32 0
  %RCX.i590 = bitcast %union.anon* %988 to i64*
  %989 = load i64, i64* %RAX.i589
  %990 = load i64, i64* %RCX.i590
  %991 = add i64 %990, %989
  %992 = load i8, i8* %DL.i588
  %993 = zext i8 %992 to i64
  %994 = load i64, i64* %PC.i587
  %995 = add i64 %994, 3
  store i64 %995, i64* %PC.i587
  %996 = inttoptr i64 %991 to i8*
  store i8 %992, i8* %996
  store %struct.Memory* %loadMem_42fae1, %struct.Memory** %MEMORY
  br label %block_.L_42fae4

block_.L_42fae4:                                  ; preds = %block_42fab6, %block_42fa9f, %block_42fa64
  %loadMem_42fae4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %998 = getelementptr inbounds %struct.GPR, %struct.GPR* %997, i32 0, i32 33
  %999 = getelementptr inbounds %struct.Reg, %struct.Reg* %998, i32 0, i32 0
  %PC.i584 = bitcast %union.anon* %999 to i64*
  %1000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1001 = getelementptr inbounds %struct.GPR, %struct.GPR* %1000, i32 0, i32 1
  %1002 = getelementptr inbounds %struct.Reg, %struct.Reg* %1001, i32 0, i32 0
  %RAX.i585 = bitcast %union.anon* %1002 to i64*
  %1003 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1004 = getelementptr inbounds %struct.GPR, %struct.GPR* %1003, i32 0, i32 15
  %1005 = getelementptr inbounds %struct.Reg, %struct.Reg* %1004, i32 0, i32 0
  %RBP.i586 = bitcast %union.anon* %1005 to i64*
  %1006 = load i64, i64* %RBP.i586
  %1007 = sub i64 %1006, 8
  %1008 = load i64, i64* %PC.i584
  %1009 = add i64 %1008, 4
  store i64 %1009, i64* %PC.i584
  %1010 = inttoptr i64 %1007 to i64*
  %1011 = load i64, i64* %1010
  store i64 %1011, i64* %RAX.i585, align 8
  store %struct.Memory* %loadMem_42fae4, %struct.Memory** %MEMORY
  %loadMem_42fae8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1012 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1013 = getelementptr inbounds %struct.GPR, %struct.GPR* %1012, i32 0, i32 33
  %1014 = getelementptr inbounds %struct.Reg, %struct.Reg* %1013, i32 0, i32 0
  %PC.i582 = bitcast %union.anon* %1014 to i64*
  %1015 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1016 = getelementptr inbounds %struct.GPR, %struct.GPR* %1015, i32 0, i32 1
  %1017 = getelementptr inbounds %struct.Reg, %struct.Reg* %1016, i32 0, i32 0
  %RAX.i583 = bitcast %union.anon* %1017 to i64*
  %1018 = load i64, i64* %RAX.i583
  %1019 = add i64 %1018, 120
  %1020 = load i64, i64* %PC.i582
  %1021 = add i64 %1020, 5
  store i64 %1021, i64* %PC.i582
  %1022 = inttoptr i64 %1019 to i64*
  %1023 = load i64, i64* %1022
  %1024 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1024, align 1
  %1025 = trunc i64 %1023 to i32
  %1026 = and i32 %1025, 255
  %1027 = call i32 @llvm.ctpop.i32(i32 %1026)
  %1028 = trunc i32 %1027 to i8
  %1029 = and i8 %1028, 1
  %1030 = xor i8 %1029, 1
  %1031 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1030, i8* %1031, align 1
  %1032 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1032, align 1
  %1033 = icmp eq i64 %1023, 0
  %1034 = zext i1 %1033 to i8
  %1035 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1034, i8* %1035, align 1
  %1036 = lshr i64 %1023, 63
  %1037 = trunc i64 %1036 to i8
  %1038 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1037, i8* %1038, align 1
  %1039 = lshr i64 %1023, 63
  %1040 = xor i64 %1036, %1039
  %1041 = add i64 %1040, %1039
  %1042 = icmp eq i64 %1041, 2
  %1043 = zext i1 %1042 to i8
  %1044 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1043, i8* %1044, align 1
  store %struct.Memory* %loadMem_42fae8, %struct.Memory** %MEMORY
  %loadMem_42faed = load %struct.Memory*, %struct.Memory** %MEMORY
  %1045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1046 = getelementptr inbounds %struct.GPR, %struct.GPR* %1045, i32 0, i32 33
  %1047 = getelementptr inbounds %struct.Reg, %struct.Reg* %1046, i32 0, i32 0
  %PC.i581 = bitcast %union.anon* %1047 to i64*
  %1048 = load i64, i64* %PC.i581
  %1049 = add i64 %1048, 75
  %1050 = load i64, i64* %PC.i581
  %1051 = add i64 %1050, 6
  %1052 = load i64, i64* %PC.i581
  %1053 = add i64 %1052, 6
  store i64 %1053, i64* %PC.i581
  %1054 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1055 = load i8, i8* %1054, align 1
  store i8 %1055, i8* %BRANCH_TAKEN, align 1
  %1056 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1057 = icmp ne i8 %1055, 0
  %1058 = select i1 %1057, i64 %1049, i64 %1051
  store i64 %1058, i64* %1056, align 8
  store %struct.Memory* %loadMem_42faed, %struct.Memory** %MEMORY
  %loadBr_42faed = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42faed = icmp eq i8 %loadBr_42faed, 1
  br i1 %cmpBr_42faed, label %block_.L_42fb38, label %block_42faf3

block_42faf3:                                     ; preds = %block_.L_42fae4
  %loadMem_42faf3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1059 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1060 = getelementptr inbounds %struct.GPR, %struct.GPR* %1059, i32 0, i32 33
  %1061 = getelementptr inbounds %struct.Reg, %struct.Reg* %1060, i32 0, i32 0
  %PC.i578 = bitcast %union.anon* %1061 to i64*
  %1062 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1063 = getelementptr inbounds %struct.GPR, %struct.GPR* %1062, i32 0, i32 1
  %1064 = getelementptr inbounds %struct.Reg, %struct.Reg* %1063, i32 0, i32 0
  %RAX.i579 = bitcast %union.anon* %1064 to i64*
  %1065 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1066 = getelementptr inbounds %struct.GPR, %struct.GPR* %1065, i32 0, i32 15
  %1067 = getelementptr inbounds %struct.Reg, %struct.Reg* %1066, i32 0, i32 0
  %RBP.i580 = bitcast %union.anon* %1067 to i64*
  %1068 = load i64, i64* %RBP.i580
  %1069 = sub i64 %1068, 8
  %1070 = load i64, i64* %PC.i578
  %1071 = add i64 %1070, 4
  store i64 %1071, i64* %PC.i578
  %1072 = inttoptr i64 %1069 to i64*
  %1073 = load i64, i64* %1072
  store i64 %1073, i64* %RAX.i579, align 8
  store %struct.Memory* %loadMem_42faf3, %struct.Memory** %MEMORY
  %loadMem_42faf7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1074 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1075 = getelementptr inbounds %struct.GPR, %struct.GPR* %1074, i32 0, i32 33
  %1076 = getelementptr inbounds %struct.Reg, %struct.Reg* %1075, i32 0, i32 0
  %PC.i576 = bitcast %union.anon* %1076 to i64*
  %1077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1078 = getelementptr inbounds %struct.GPR, %struct.GPR* %1077, i32 0, i32 1
  %1079 = getelementptr inbounds %struct.Reg, %struct.Reg* %1078, i32 0, i32 0
  %RAX.i577 = bitcast %union.anon* %1079 to i64*
  %1080 = load i64, i64* %RAX.i577
  %1081 = add i64 %1080, 120
  %1082 = load i64, i64* %PC.i576
  %1083 = add i64 %1082, 4
  store i64 %1083, i64* %PC.i576
  %1084 = inttoptr i64 %1081 to i64*
  %1085 = load i64, i64* %1084
  store i64 %1085, i64* %RAX.i577, align 8
  store %struct.Memory* %loadMem_42faf7, %struct.Memory** %MEMORY
  %loadMem_42fafb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1086 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1087 = getelementptr inbounds %struct.GPR, %struct.GPR* %1086, i32 0, i32 33
  %1088 = getelementptr inbounds %struct.Reg, %struct.Reg* %1087, i32 0, i32 0
  %PC.i573 = bitcast %union.anon* %1088 to i64*
  %1089 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1090 = getelementptr inbounds %struct.GPR, %struct.GPR* %1089, i32 0, i32 5
  %1091 = getelementptr inbounds %struct.Reg, %struct.Reg* %1090, i32 0, i32 0
  %RCX.i574 = bitcast %union.anon* %1091 to i64*
  %1092 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1093 = getelementptr inbounds %struct.GPR, %struct.GPR* %1092, i32 0, i32 15
  %1094 = getelementptr inbounds %struct.Reg, %struct.Reg* %1093, i32 0, i32 0
  %RBP.i575 = bitcast %union.anon* %1094 to i64*
  %1095 = load i64, i64* %RBP.i575
  %1096 = sub i64 %1095, 28
  %1097 = load i64, i64* %PC.i573
  %1098 = add i64 %1097, 4
  store i64 %1098, i64* %PC.i573
  %1099 = inttoptr i64 %1096 to i32*
  %1100 = load i32, i32* %1099
  %1101 = sext i32 %1100 to i64
  store i64 %1101, i64* %RCX.i574, align 8
  store %struct.Memory* %loadMem_42fafb, %struct.Memory** %MEMORY
  %loadMem_42faff = load %struct.Memory*, %struct.Memory** %MEMORY
  %1102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1103 = getelementptr inbounds %struct.GPR, %struct.GPR* %1102, i32 0, i32 33
  %1104 = getelementptr inbounds %struct.Reg, %struct.Reg* %1103, i32 0, i32 0
  %PC.i570 = bitcast %union.anon* %1104 to i64*
  %1105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1106 = getelementptr inbounds %struct.GPR, %struct.GPR* %1105, i32 0, i32 1
  %1107 = getelementptr inbounds %struct.Reg, %struct.Reg* %1106, i32 0, i32 0
  %RAX.i571 = bitcast %union.anon* %1107 to i64*
  %1108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1109 = getelementptr inbounds %struct.GPR, %struct.GPR* %1108, i32 0, i32 5
  %1110 = getelementptr inbounds %struct.Reg, %struct.Reg* %1109, i32 0, i32 0
  %RCX.i572 = bitcast %union.anon* %1110 to i64*
  %1111 = load i64, i64* %RAX.i571
  %1112 = load i64, i64* %RCX.i572
  %1113 = mul i64 %1112, 8
  %1114 = add i64 %1113, %1111
  %1115 = load i64, i64* %PC.i570
  %1116 = add i64 %1115, 5
  store i64 %1116, i64* %PC.i570
  %1117 = inttoptr i64 %1114 to i64*
  %1118 = load i64, i64* %1117
  %1119 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1119, align 1
  %1120 = trunc i64 %1118 to i32
  %1121 = and i32 %1120, 255
  %1122 = call i32 @llvm.ctpop.i32(i32 %1121)
  %1123 = trunc i32 %1122 to i8
  %1124 = and i8 %1123, 1
  %1125 = xor i8 %1124, 1
  %1126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1125, i8* %1126, align 1
  %1127 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1127, align 1
  %1128 = icmp eq i64 %1118, 0
  %1129 = zext i1 %1128 to i8
  %1130 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1129, i8* %1130, align 1
  %1131 = lshr i64 %1118, 63
  %1132 = trunc i64 %1131 to i8
  %1133 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1132, i8* %1133, align 1
  %1134 = lshr i64 %1118, 63
  %1135 = xor i64 %1131, %1134
  %1136 = add i64 %1135, %1134
  %1137 = icmp eq i64 %1136, 2
  %1138 = zext i1 %1137 to i8
  %1139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1138, i8* %1139, align 1
  store %struct.Memory* %loadMem_42faff, %struct.Memory** %MEMORY
  %loadMem_42fb04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1141 = getelementptr inbounds %struct.GPR, %struct.GPR* %1140, i32 0, i32 33
  %1142 = getelementptr inbounds %struct.Reg, %struct.Reg* %1141, i32 0, i32 0
  %PC.i569 = bitcast %union.anon* %1142 to i64*
  %1143 = load i64, i64* %PC.i569
  %1144 = add i64 %1143, 52
  %1145 = load i64, i64* %PC.i569
  %1146 = add i64 %1145, 6
  %1147 = load i64, i64* %PC.i569
  %1148 = add i64 %1147, 6
  store i64 %1148, i64* %PC.i569
  %1149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1150 = load i8, i8* %1149, align 1
  store i8 %1150, i8* %BRANCH_TAKEN, align 1
  %1151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1152 = icmp ne i8 %1150, 0
  %1153 = select i1 %1152, i64 %1144, i64 %1146
  store i64 %1153, i64* %1151, align 8
  store %struct.Memory* %loadMem_42fb04, %struct.Memory** %MEMORY
  %loadBr_42fb04 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42fb04 = icmp eq i8 %loadBr_42fb04, 1
  br i1 %cmpBr_42fb04, label %block_.L_42fb38, label %block_42fb0a

block_42fb0a:                                     ; preds = %block_42faf3
  %loadMem_42fb0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1155 = getelementptr inbounds %struct.GPR, %struct.GPR* %1154, i32 0, i32 33
  %1156 = getelementptr inbounds %struct.Reg, %struct.Reg* %1155, i32 0, i32 0
  %PC.i566 = bitcast %union.anon* %1156 to i64*
  %1157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1158 = getelementptr inbounds %struct.GPR, %struct.GPR* %1157, i32 0, i32 1
  %1159 = getelementptr inbounds %struct.Reg, %struct.Reg* %1158, i32 0, i32 0
  %RAX.i567 = bitcast %union.anon* %1159 to i64*
  %1160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1161 = getelementptr inbounds %struct.GPR, %struct.GPR* %1160, i32 0, i32 15
  %1162 = getelementptr inbounds %struct.Reg, %struct.Reg* %1161, i32 0, i32 0
  %RBP.i568 = bitcast %union.anon* %1162 to i64*
  %1163 = load i64, i64* %RBP.i568
  %1164 = sub i64 %1163, 8
  %1165 = load i64, i64* %PC.i566
  %1166 = add i64 %1165, 4
  store i64 %1166, i64* %PC.i566
  %1167 = inttoptr i64 %1164 to i64*
  %1168 = load i64, i64* %1167
  store i64 %1168, i64* %RAX.i567, align 8
  store %struct.Memory* %loadMem_42fb0a, %struct.Memory** %MEMORY
  %loadMem_42fb0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1170 = getelementptr inbounds %struct.GPR, %struct.GPR* %1169, i32 0, i32 33
  %1171 = getelementptr inbounds %struct.Reg, %struct.Reg* %1170, i32 0, i32 0
  %PC.i564 = bitcast %union.anon* %1171 to i64*
  %1172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1173 = getelementptr inbounds %struct.GPR, %struct.GPR* %1172, i32 0, i32 1
  %1174 = getelementptr inbounds %struct.Reg, %struct.Reg* %1173, i32 0, i32 0
  %RAX.i565 = bitcast %union.anon* %1174 to i64*
  %1175 = load i64, i64* %RAX.i565
  %1176 = add i64 %1175, 120
  %1177 = load i64, i64* %PC.i564
  %1178 = add i64 %1177, 4
  store i64 %1178, i64* %PC.i564
  %1179 = inttoptr i64 %1176 to i64*
  %1180 = load i64, i64* %1179
  store i64 %1180, i64* %RAX.i565, align 8
  store %struct.Memory* %loadMem_42fb0e, %struct.Memory** %MEMORY
  %loadMem_42fb12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1182 = getelementptr inbounds %struct.GPR, %struct.GPR* %1181, i32 0, i32 33
  %1183 = getelementptr inbounds %struct.Reg, %struct.Reg* %1182, i32 0, i32 0
  %PC.i561 = bitcast %union.anon* %1183 to i64*
  %1184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1185 = getelementptr inbounds %struct.GPR, %struct.GPR* %1184, i32 0, i32 5
  %1186 = getelementptr inbounds %struct.Reg, %struct.Reg* %1185, i32 0, i32 0
  %RCX.i562 = bitcast %union.anon* %1186 to i64*
  %1187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1188 = getelementptr inbounds %struct.GPR, %struct.GPR* %1187, i32 0, i32 15
  %1189 = getelementptr inbounds %struct.Reg, %struct.Reg* %1188, i32 0, i32 0
  %RBP.i563 = bitcast %union.anon* %1189 to i64*
  %1190 = load i64, i64* %RBP.i563
  %1191 = sub i64 %1190, 28
  %1192 = load i64, i64* %PC.i561
  %1193 = add i64 %1192, 4
  store i64 %1193, i64* %PC.i561
  %1194 = inttoptr i64 %1191 to i32*
  %1195 = load i32, i32* %1194
  %1196 = sext i32 %1195 to i64
  store i64 %1196, i64* %RCX.i562, align 8
  store %struct.Memory* %loadMem_42fb12, %struct.Memory** %MEMORY
  %loadMem_42fb16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1198 = getelementptr inbounds %struct.GPR, %struct.GPR* %1197, i32 0, i32 33
  %1199 = getelementptr inbounds %struct.Reg, %struct.Reg* %1198, i32 0, i32 0
  %PC.i558 = bitcast %union.anon* %1199 to i64*
  %1200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1201 = getelementptr inbounds %struct.GPR, %struct.GPR* %1200, i32 0, i32 1
  %1202 = getelementptr inbounds %struct.Reg, %struct.Reg* %1201, i32 0, i32 0
  %RAX.i559 = bitcast %union.anon* %1202 to i64*
  %1203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1204 = getelementptr inbounds %struct.GPR, %struct.GPR* %1203, i32 0, i32 5
  %1205 = getelementptr inbounds %struct.Reg, %struct.Reg* %1204, i32 0, i32 0
  %RCX.i560 = bitcast %union.anon* %1205 to i64*
  %1206 = load i64, i64* %RAX.i559
  %1207 = load i64, i64* %RCX.i560
  %1208 = mul i64 %1207, 8
  %1209 = add i64 %1208, %1206
  %1210 = load i64, i64* %PC.i558
  %1211 = add i64 %1210, 4
  store i64 %1211, i64* %PC.i558
  %1212 = inttoptr i64 %1209 to i64*
  %1213 = load i64, i64* %1212
  store i64 %1213, i64* %RAX.i559, align 8
  store %struct.Memory* %loadMem_42fb16, %struct.Memory** %MEMORY
  %loadMem_42fb1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1215 = getelementptr inbounds %struct.GPR, %struct.GPR* %1214, i32 0, i32 33
  %1216 = getelementptr inbounds %struct.Reg, %struct.Reg* %1215, i32 0, i32 0
  %PC.i555 = bitcast %union.anon* %1216 to i64*
  %1217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1218 = getelementptr inbounds %struct.GPR, %struct.GPR* %1217, i32 0, i32 5
  %1219 = getelementptr inbounds %struct.Reg, %struct.Reg* %1218, i32 0, i32 0
  %RCX.i556 = bitcast %union.anon* %1219 to i64*
  %1220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1221 = getelementptr inbounds %struct.GPR, %struct.GPR* %1220, i32 0, i32 15
  %1222 = getelementptr inbounds %struct.Reg, %struct.Reg* %1221, i32 0, i32 0
  %RBP.i557 = bitcast %union.anon* %1222 to i64*
  %1223 = load i64, i64* %RBP.i557
  %1224 = sub i64 %1223, 20
  %1225 = load i64, i64* %PC.i555
  %1226 = add i64 %1225, 4
  store i64 %1226, i64* %PC.i555
  %1227 = inttoptr i64 %1224 to i32*
  %1228 = load i32, i32* %1227
  %1229 = sext i32 %1228 to i64
  store i64 %1229, i64* %RCX.i556, align 8
  store %struct.Memory* %loadMem_42fb1a, %struct.Memory** %MEMORY
  %loadMem_42fb1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1231 = getelementptr inbounds %struct.GPR, %struct.GPR* %1230, i32 0, i32 33
  %1232 = getelementptr inbounds %struct.Reg, %struct.Reg* %1231, i32 0, i32 0
  %PC.i551 = bitcast %union.anon* %1232 to i64*
  %1233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1234 = getelementptr inbounds %struct.GPR, %struct.GPR* %1233, i32 0, i32 7
  %1235 = getelementptr inbounds %struct.Reg, %struct.Reg* %1234, i32 0, i32 0
  %1236 = bitcast %union.anon* %1235 to %struct.anon.2*
  %DL.i552 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1236, i32 0, i32 0
  %1237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1238 = getelementptr inbounds %struct.GPR, %struct.GPR* %1237, i32 0, i32 1
  %1239 = getelementptr inbounds %struct.Reg, %struct.Reg* %1238, i32 0, i32 0
  %RAX.i553 = bitcast %union.anon* %1239 to i64*
  %1240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1241 = getelementptr inbounds %struct.GPR, %struct.GPR* %1240, i32 0, i32 5
  %1242 = getelementptr inbounds %struct.Reg, %struct.Reg* %1241, i32 0, i32 0
  %RCX.i554 = bitcast %union.anon* %1242 to i64*
  %1243 = load i64, i64* %RAX.i553
  %1244 = load i64, i64* %RCX.i554
  %1245 = add i64 %1244, %1243
  %1246 = load i64, i64* %PC.i551
  %1247 = add i64 %1246, 3
  store i64 %1247, i64* %PC.i551
  %1248 = inttoptr i64 %1245 to i8*
  %1249 = load i8, i8* %1248
  store i8 %1249, i8* %DL.i552, align 1
  store %struct.Memory* %loadMem_42fb1e, %struct.Memory** %MEMORY
  %loadMem_42fb21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1251 = getelementptr inbounds %struct.GPR, %struct.GPR* %1250, i32 0, i32 33
  %1252 = getelementptr inbounds %struct.Reg, %struct.Reg* %1251, i32 0, i32 0
  %PC.i548 = bitcast %union.anon* %1252 to i64*
  %1253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1254 = getelementptr inbounds %struct.GPR, %struct.GPR* %1253, i32 0, i32 1
  %1255 = getelementptr inbounds %struct.Reg, %struct.Reg* %1254, i32 0, i32 0
  %RAX.i549 = bitcast %union.anon* %1255 to i64*
  %1256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1257 = getelementptr inbounds %struct.GPR, %struct.GPR* %1256, i32 0, i32 15
  %1258 = getelementptr inbounds %struct.Reg, %struct.Reg* %1257, i32 0, i32 0
  %RBP.i550 = bitcast %union.anon* %1258 to i64*
  %1259 = load i64, i64* %RBP.i550
  %1260 = sub i64 %1259, 8
  %1261 = load i64, i64* %PC.i548
  %1262 = add i64 %1261, 4
  store i64 %1262, i64* %PC.i548
  %1263 = inttoptr i64 %1260 to i64*
  %1264 = load i64, i64* %1263
  store i64 %1264, i64* %RAX.i549, align 8
  store %struct.Memory* %loadMem_42fb21, %struct.Memory** %MEMORY
  %loadMem_42fb25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1266 = getelementptr inbounds %struct.GPR, %struct.GPR* %1265, i32 0, i32 33
  %1267 = getelementptr inbounds %struct.Reg, %struct.Reg* %1266, i32 0, i32 0
  %PC.i546 = bitcast %union.anon* %1267 to i64*
  %1268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1269 = getelementptr inbounds %struct.GPR, %struct.GPR* %1268, i32 0, i32 1
  %1270 = getelementptr inbounds %struct.Reg, %struct.Reg* %1269, i32 0, i32 0
  %RAX.i547 = bitcast %union.anon* %1270 to i64*
  %1271 = load i64, i64* %RAX.i547
  %1272 = add i64 %1271, 120
  %1273 = load i64, i64* %PC.i546
  %1274 = add i64 %1273, 4
  store i64 %1274, i64* %PC.i546
  %1275 = inttoptr i64 %1272 to i64*
  %1276 = load i64, i64* %1275
  store i64 %1276, i64* %RAX.i547, align 8
  store %struct.Memory* %loadMem_42fb25, %struct.Memory** %MEMORY
  %loadMem_42fb29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1278 = getelementptr inbounds %struct.GPR, %struct.GPR* %1277, i32 0, i32 33
  %1279 = getelementptr inbounds %struct.Reg, %struct.Reg* %1278, i32 0, i32 0
  %PC.i543 = bitcast %union.anon* %1279 to i64*
  %1280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1281 = getelementptr inbounds %struct.GPR, %struct.GPR* %1280, i32 0, i32 5
  %1282 = getelementptr inbounds %struct.Reg, %struct.Reg* %1281, i32 0, i32 0
  %RCX.i544 = bitcast %union.anon* %1282 to i64*
  %1283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1284 = getelementptr inbounds %struct.GPR, %struct.GPR* %1283, i32 0, i32 15
  %1285 = getelementptr inbounds %struct.Reg, %struct.Reg* %1284, i32 0, i32 0
  %RBP.i545 = bitcast %union.anon* %1285 to i64*
  %1286 = load i64, i64* %RBP.i545
  %1287 = sub i64 %1286, 28
  %1288 = load i64, i64* %PC.i543
  %1289 = add i64 %1288, 4
  store i64 %1289, i64* %PC.i543
  %1290 = inttoptr i64 %1287 to i32*
  %1291 = load i32, i32* %1290
  %1292 = sext i32 %1291 to i64
  store i64 %1292, i64* %RCX.i544, align 8
  store %struct.Memory* %loadMem_42fb29, %struct.Memory** %MEMORY
  %loadMem_42fb2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1294 = getelementptr inbounds %struct.GPR, %struct.GPR* %1293, i32 0, i32 33
  %1295 = getelementptr inbounds %struct.Reg, %struct.Reg* %1294, i32 0, i32 0
  %PC.i540 = bitcast %union.anon* %1295 to i64*
  %1296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1297 = getelementptr inbounds %struct.GPR, %struct.GPR* %1296, i32 0, i32 1
  %1298 = getelementptr inbounds %struct.Reg, %struct.Reg* %1297, i32 0, i32 0
  %RAX.i541 = bitcast %union.anon* %1298 to i64*
  %1299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1300 = getelementptr inbounds %struct.GPR, %struct.GPR* %1299, i32 0, i32 5
  %1301 = getelementptr inbounds %struct.Reg, %struct.Reg* %1300, i32 0, i32 0
  %RCX.i542 = bitcast %union.anon* %1301 to i64*
  %1302 = load i64, i64* %RAX.i541
  %1303 = load i64, i64* %RCX.i542
  %1304 = mul i64 %1303, 8
  %1305 = add i64 %1304, %1302
  %1306 = load i64, i64* %PC.i540
  %1307 = add i64 %1306, 4
  store i64 %1307, i64* %PC.i540
  %1308 = inttoptr i64 %1305 to i64*
  %1309 = load i64, i64* %1308
  store i64 %1309, i64* %RAX.i541, align 8
  store %struct.Memory* %loadMem_42fb2d, %struct.Memory** %MEMORY
  %loadMem_42fb31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1311 = getelementptr inbounds %struct.GPR, %struct.GPR* %1310, i32 0, i32 33
  %1312 = getelementptr inbounds %struct.Reg, %struct.Reg* %1311, i32 0, i32 0
  %PC.i537 = bitcast %union.anon* %1312 to i64*
  %1313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1314 = getelementptr inbounds %struct.GPR, %struct.GPR* %1313, i32 0, i32 5
  %1315 = getelementptr inbounds %struct.Reg, %struct.Reg* %1314, i32 0, i32 0
  %RCX.i538 = bitcast %union.anon* %1315 to i64*
  %1316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1317 = getelementptr inbounds %struct.GPR, %struct.GPR* %1316, i32 0, i32 15
  %1318 = getelementptr inbounds %struct.Reg, %struct.Reg* %1317, i32 0, i32 0
  %RBP.i539 = bitcast %union.anon* %1318 to i64*
  %1319 = load i64, i64* %RBP.i539
  %1320 = sub i64 %1319, 24
  %1321 = load i64, i64* %PC.i537
  %1322 = add i64 %1321, 4
  store i64 %1322, i64* %PC.i537
  %1323 = inttoptr i64 %1320 to i32*
  %1324 = load i32, i32* %1323
  %1325 = sext i32 %1324 to i64
  store i64 %1325, i64* %RCX.i538, align 8
  store %struct.Memory* %loadMem_42fb31, %struct.Memory** %MEMORY
  %loadMem_42fb35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1327 = getelementptr inbounds %struct.GPR, %struct.GPR* %1326, i32 0, i32 33
  %1328 = getelementptr inbounds %struct.Reg, %struct.Reg* %1327, i32 0, i32 0
  %PC.i533 = bitcast %union.anon* %1328 to i64*
  %1329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1330 = getelementptr inbounds %struct.GPR, %struct.GPR* %1329, i32 0, i32 7
  %1331 = getelementptr inbounds %struct.Reg, %struct.Reg* %1330, i32 0, i32 0
  %1332 = bitcast %union.anon* %1331 to %struct.anon.2*
  %DL.i534 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1332, i32 0, i32 0
  %1333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1334 = getelementptr inbounds %struct.GPR, %struct.GPR* %1333, i32 0, i32 1
  %1335 = getelementptr inbounds %struct.Reg, %struct.Reg* %1334, i32 0, i32 0
  %RAX.i535 = bitcast %union.anon* %1335 to i64*
  %1336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1337 = getelementptr inbounds %struct.GPR, %struct.GPR* %1336, i32 0, i32 5
  %1338 = getelementptr inbounds %struct.Reg, %struct.Reg* %1337, i32 0, i32 0
  %RCX.i536 = bitcast %union.anon* %1338 to i64*
  %1339 = load i64, i64* %RAX.i535
  %1340 = load i64, i64* %RCX.i536
  %1341 = add i64 %1340, %1339
  %1342 = load i8, i8* %DL.i534
  %1343 = zext i8 %1342 to i64
  %1344 = load i64, i64* %PC.i533
  %1345 = add i64 %1344, 3
  store i64 %1345, i64* %PC.i533
  %1346 = inttoptr i64 %1341 to i8*
  store i8 %1342, i8* %1346
  store %struct.Memory* %loadMem_42fb35, %struct.Memory** %MEMORY
  br label %block_.L_42fb38

block_.L_42fb38:                                  ; preds = %block_42fb0a, %block_42faf3, %block_.L_42fae4
  %loadMem_42fb38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1348 = getelementptr inbounds %struct.GPR, %struct.GPR* %1347, i32 0, i32 33
  %1349 = getelementptr inbounds %struct.Reg, %struct.Reg* %1348, i32 0, i32 0
  %PC.i531 = bitcast %union.anon* %1349 to i64*
  %1350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1351 = getelementptr inbounds %struct.GPR, %struct.GPR* %1350, i32 0, i32 15
  %1352 = getelementptr inbounds %struct.Reg, %struct.Reg* %1351, i32 0, i32 0
  %RBP.i532 = bitcast %union.anon* %1352 to i64*
  %1353 = load i64, i64* %RBP.i532
  %1354 = sub i64 %1353, 32
  %1355 = load i64, i64* %PC.i531
  %1356 = add i64 %1355, 7
  store i64 %1356, i64* %PC.i531
  %1357 = inttoptr i64 %1354 to i32*
  store i32 0, i32* %1357
  store %struct.Memory* %loadMem_42fb38, %struct.Memory** %MEMORY
  br label %block_.L_42fb3f

block_.L_42fb3f:                                  ; preds = %block_.L_42fbbd, %block_.L_42fb38
  %loadMem_42fb3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1359 = getelementptr inbounds %struct.GPR, %struct.GPR* %1358, i32 0, i32 33
  %1360 = getelementptr inbounds %struct.Reg, %struct.Reg* %1359, i32 0, i32 0
  %PC.i528 = bitcast %union.anon* %1360 to i64*
  %1361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1362 = getelementptr inbounds %struct.GPR, %struct.GPR* %1361, i32 0, i32 1
  %1363 = getelementptr inbounds %struct.Reg, %struct.Reg* %1362, i32 0, i32 0
  %RAX.i529 = bitcast %union.anon* %1363 to i64*
  %1364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1365 = getelementptr inbounds %struct.GPR, %struct.GPR* %1364, i32 0, i32 15
  %1366 = getelementptr inbounds %struct.Reg, %struct.Reg* %1365, i32 0, i32 0
  %RBP.i530 = bitcast %union.anon* %1366 to i64*
  %1367 = load i64, i64* %RBP.i530
  %1368 = sub i64 %1367, 32
  %1369 = load i64, i64* %PC.i528
  %1370 = add i64 %1369, 3
  store i64 %1370, i64* %PC.i528
  %1371 = inttoptr i64 %1368 to i32*
  %1372 = load i32, i32* %1371
  %1373 = zext i32 %1372 to i64
  store i64 %1373, i64* %RAX.i529, align 8
  store %struct.Memory* %loadMem_42fb3f, %struct.Memory** %MEMORY
  %loadMem_42fb42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1375 = getelementptr inbounds %struct.GPR, %struct.GPR* %1374, i32 0, i32 33
  %1376 = getelementptr inbounds %struct.Reg, %struct.Reg* %1375, i32 0, i32 0
  %PC.i525 = bitcast %union.anon* %1376 to i64*
  %1377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1378 = getelementptr inbounds %struct.GPR, %struct.GPR* %1377, i32 0, i32 5
  %1379 = getelementptr inbounds %struct.Reg, %struct.Reg* %1378, i32 0, i32 0
  %RCX.i526 = bitcast %union.anon* %1379 to i64*
  %1380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1381 = getelementptr inbounds %struct.GPR, %struct.GPR* %1380, i32 0, i32 15
  %1382 = getelementptr inbounds %struct.Reg, %struct.Reg* %1381, i32 0, i32 0
  %RBP.i527 = bitcast %union.anon* %1382 to i64*
  %1383 = load i64, i64* %RBP.i527
  %1384 = sub i64 %1383, 8
  %1385 = load i64, i64* %PC.i525
  %1386 = add i64 %1385, 4
  store i64 %1386, i64* %PC.i525
  %1387 = inttoptr i64 %1384 to i64*
  %1388 = load i64, i64* %1387
  store i64 %1388, i64* %RCX.i526, align 8
  store %struct.Memory* %loadMem_42fb42, %struct.Memory** %MEMORY
  %loadMem_42fb46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1390 = getelementptr inbounds %struct.GPR, %struct.GPR* %1389, i32 0, i32 33
  %1391 = getelementptr inbounds %struct.Reg, %struct.Reg* %1390, i32 0, i32 0
  %PC.i522 = bitcast %union.anon* %1391 to i64*
  %1392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1393 = getelementptr inbounds %struct.GPR, %struct.GPR* %1392, i32 0, i32 1
  %1394 = getelementptr inbounds %struct.Reg, %struct.Reg* %1393, i32 0, i32 0
  %EAX.i523 = bitcast %union.anon* %1394 to i32*
  %1395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1396 = getelementptr inbounds %struct.GPR, %struct.GPR* %1395, i32 0, i32 5
  %1397 = getelementptr inbounds %struct.Reg, %struct.Reg* %1396, i32 0, i32 0
  %RCX.i524 = bitcast %union.anon* %1397 to i64*
  %1398 = load i32, i32* %EAX.i523
  %1399 = zext i32 %1398 to i64
  %1400 = load i64, i64* %RCX.i524
  %1401 = add i64 %1400, 304
  %1402 = load i64, i64* %PC.i522
  %1403 = add i64 %1402, 6
  store i64 %1403, i64* %PC.i522
  %1404 = inttoptr i64 %1401 to i32*
  %1405 = load i32, i32* %1404
  %1406 = sub i32 %1398, %1405
  %1407 = icmp ult i32 %1398, %1405
  %1408 = zext i1 %1407 to i8
  %1409 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1408, i8* %1409, align 1
  %1410 = and i32 %1406, 255
  %1411 = call i32 @llvm.ctpop.i32(i32 %1410)
  %1412 = trunc i32 %1411 to i8
  %1413 = and i8 %1412, 1
  %1414 = xor i8 %1413, 1
  %1415 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1414, i8* %1415, align 1
  %1416 = xor i32 %1405, %1398
  %1417 = xor i32 %1416, %1406
  %1418 = lshr i32 %1417, 4
  %1419 = trunc i32 %1418 to i8
  %1420 = and i8 %1419, 1
  %1421 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1420, i8* %1421, align 1
  %1422 = icmp eq i32 %1406, 0
  %1423 = zext i1 %1422 to i8
  %1424 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1423, i8* %1424, align 1
  %1425 = lshr i32 %1406, 31
  %1426 = trunc i32 %1425 to i8
  %1427 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1426, i8* %1427, align 1
  %1428 = lshr i32 %1398, 31
  %1429 = lshr i32 %1405, 31
  %1430 = xor i32 %1429, %1428
  %1431 = xor i32 %1425, %1428
  %1432 = add i32 %1431, %1430
  %1433 = icmp eq i32 %1432, 2
  %1434 = zext i1 %1433 to i8
  %1435 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1434, i8* %1435, align 1
  store %struct.Memory* %loadMem_42fb46, %struct.Memory** %MEMORY
  %loadMem_42fb4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1437 = getelementptr inbounds %struct.GPR, %struct.GPR* %1436, i32 0, i32 33
  %1438 = getelementptr inbounds %struct.Reg, %struct.Reg* %1437, i32 0, i32 0
  %PC.i521 = bitcast %union.anon* %1438 to i64*
  %1439 = load i64, i64* %PC.i521
  %1440 = add i64 %1439, 127
  %1441 = load i64, i64* %PC.i521
  %1442 = add i64 %1441, 6
  %1443 = load i64, i64* %PC.i521
  %1444 = add i64 %1443, 6
  store i64 %1444, i64* %PC.i521
  %1445 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1446 = load i8, i8* %1445, align 1
  %1447 = icmp ne i8 %1446, 0
  %1448 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1449 = load i8, i8* %1448, align 1
  %1450 = icmp ne i8 %1449, 0
  %1451 = xor i1 %1447, %1450
  %1452 = xor i1 %1451, true
  %1453 = zext i1 %1452 to i8
  store i8 %1453, i8* %BRANCH_TAKEN, align 1
  %1454 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1455 = select i1 %1451, i64 %1442, i64 %1440
  store i64 %1455, i64* %1454, align 8
  store %struct.Memory* %loadMem_42fb4c, %struct.Memory** %MEMORY
  %loadBr_42fb4c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42fb4c = icmp eq i8 %loadBr_42fb4c, 1
  br i1 %cmpBr_42fb4c, label %block_.L_42fbcb, label %block_42fb52

block_42fb52:                                     ; preds = %block_.L_42fb3f
  %loadMem_42fb52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1457 = getelementptr inbounds %struct.GPR, %struct.GPR* %1456, i32 0, i32 33
  %1458 = getelementptr inbounds %struct.Reg, %struct.Reg* %1457, i32 0, i32 0
  %PC.i518 = bitcast %union.anon* %1458 to i64*
  %1459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1460 = getelementptr inbounds %struct.GPR, %struct.GPR* %1459, i32 0, i32 1
  %1461 = getelementptr inbounds %struct.Reg, %struct.Reg* %1460, i32 0, i32 0
  %RAX.i519 = bitcast %union.anon* %1461 to i64*
  %1462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1463 = getelementptr inbounds %struct.GPR, %struct.GPR* %1462, i32 0, i32 15
  %1464 = getelementptr inbounds %struct.Reg, %struct.Reg* %1463, i32 0, i32 0
  %RBP.i520 = bitcast %union.anon* %1464 to i64*
  %1465 = load i64, i64* %RBP.i520
  %1466 = sub i64 %1465, 8
  %1467 = load i64, i64* %PC.i518
  %1468 = add i64 %1467, 4
  store i64 %1468, i64* %PC.i518
  %1469 = inttoptr i64 %1466 to i64*
  %1470 = load i64, i64* %1469
  store i64 %1470, i64* %RAX.i519, align 8
  store %struct.Memory* %loadMem_42fb52, %struct.Memory** %MEMORY
  %loadMem_42fb56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1472 = getelementptr inbounds %struct.GPR, %struct.GPR* %1471, i32 0, i32 33
  %1473 = getelementptr inbounds %struct.Reg, %struct.Reg* %1472, i32 0, i32 0
  %PC.i516 = bitcast %union.anon* %1473 to i64*
  %1474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1475 = getelementptr inbounds %struct.GPR, %struct.GPR* %1474, i32 0, i32 1
  %1476 = getelementptr inbounds %struct.Reg, %struct.Reg* %1475, i32 0, i32 0
  %RAX.i517 = bitcast %union.anon* %1476 to i64*
  %1477 = load i64, i64* %RAX.i517
  %1478 = add i64 %1477, 288
  %1479 = load i64, i64* %PC.i516
  %1480 = add i64 %1479, 7
  store i64 %1480, i64* %PC.i516
  %1481 = inttoptr i64 %1478 to i64*
  %1482 = load i64, i64* %1481
  store i64 %1482, i64* %RAX.i517, align 8
  store %struct.Memory* %loadMem_42fb56, %struct.Memory** %MEMORY
  %loadMem_42fb5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1484 = getelementptr inbounds %struct.GPR, %struct.GPR* %1483, i32 0, i32 33
  %1485 = getelementptr inbounds %struct.Reg, %struct.Reg* %1484, i32 0, i32 0
  %PC.i513 = bitcast %union.anon* %1485 to i64*
  %1486 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1487 = getelementptr inbounds %struct.GPR, %struct.GPR* %1486, i32 0, i32 5
  %1488 = getelementptr inbounds %struct.Reg, %struct.Reg* %1487, i32 0, i32 0
  %RCX.i514 = bitcast %union.anon* %1488 to i64*
  %1489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1490 = getelementptr inbounds %struct.GPR, %struct.GPR* %1489, i32 0, i32 15
  %1491 = getelementptr inbounds %struct.Reg, %struct.Reg* %1490, i32 0, i32 0
  %RBP.i515 = bitcast %union.anon* %1491 to i64*
  %1492 = load i64, i64* %RBP.i515
  %1493 = sub i64 %1492, 32
  %1494 = load i64, i64* %PC.i513
  %1495 = add i64 %1494, 4
  store i64 %1495, i64* %PC.i513
  %1496 = inttoptr i64 %1493 to i32*
  %1497 = load i32, i32* %1496
  %1498 = sext i32 %1497 to i64
  store i64 %1498, i64* %RCX.i514, align 8
  store %struct.Memory* %loadMem_42fb5d, %struct.Memory** %MEMORY
  %loadMem_42fb61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1500 = getelementptr inbounds %struct.GPR, %struct.GPR* %1499, i32 0, i32 33
  %1501 = getelementptr inbounds %struct.Reg, %struct.Reg* %1500, i32 0, i32 0
  %PC.i510 = bitcast %union.anon* %1501 to i64*
  %1502 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1503 = getelementptr inbounds %struct.GPR, %struct.GPR* %1502, i32 0, i32 1
  %1504 = getelementptr inbounds %struct.Reg, %struct.Reg* %1503, i32 0, i32 0
  %RAX.i511 = bitcast %union.anon* %1504 to i64*
  %1505 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1506 = getelementptr inbounds %struct.GPR, %struct.GPR* %1505, i32 0, i32 5
  %1507 = getelementptr inbounds %struct.Reg, %struct.Reg* %1506, i32 0, i32 0
  %RCX.i512 = bitcast %union.anon* %1507 to i64*
  %1508 = load i64, i64* %RAX.i511
  %1509 = load i64, i64* %RCX.i512
  %1510 = mul i64 %1509, 8
  %1511 = add i64 %1510, %1508
  %1512 = load i64, i64* %PC.i510
  %1513 = add i64 %1512, 4
  store i64 %1513, i64* %PC.i510
  %1514 = inttoptr i64 %1511 to i64*
  %1515 = load i64, i64* %1514
  store i64 %1515, i64* %RAX.i511, align 8
  store %struct.Memory* %loadMem_42fb61, %struct.Memory** %MEMORY
  %loadMem_42fb65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1517 = getelementptr inbounds %struct.GPR, %struct.GPR* %1516, i32 0, i32 33
  %1518 = getelementptr inbounds %struct.Reg, %struct.Reg* %1517, i32 0, i32 0
  %PC.i507 = bitcast %union.anon* %1518 to i64*
  %1519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1520 = getelementptr inbounds %struct.GPR, %struct.GPR* %1519, i32 0, i32 5
  %1521 = getelementptr inbounds %struct.Reg, %struct.Reg* %1520, i32 0, i32 0
  %RCX.i508 = bitcast %union.anon* %1521 to i64*
  %1522 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1523 = getelementptr inbounds %struct.GPR, %struct.GPR* %1522, i32 0, i32 15
  %1524 = getelementptr inbounds %struct.Reg, %struct.Reg* %1523, i32 0, i32 0
  %RBP.i509 = bitcast %union.anon* %1524 to i64*
  %1525 = load i64, i64* %RBP.i509
  %1526 = sub i64 %1525, 28
  %1527 = load i64, i64* %PC.i507
  %1528 = add i64 %1527, 4
  store i64 %1528, i64* %PC.i507
  %1529 = inttoptr i64 %1526 to i32*
  %1530 = load i32, i32* %1529
  %1531 = sext i32 %1530 to i64
  store i64 %1531, i64* %RCX.i508, align 8
  store %struct.Memory* %loadMem_42fb65, %struct.Memory** %MEMORY
  %loadMem_42fb69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1533 = getelementptr inbounds %struct.GPR, %struct.GPR* %1532, i32 0, i32 33
  %1534 = getelementptr inbounds %struct.Reg, %struct.Reg* %1533, i32 0, i32 0
  %PC.i504 = bitcast %union.anon* %1534 to i64*
  %1535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1536 = getelementptr inbounds %struct.GPR, %struct.GPR* %1535, i32 0, i32 1
  %1537 = getelementptr inbounds %struct.Reg, %struct.Reg* %1536, i32 0, i32 0
  %RAX.i505 = bitcast %union.anon* %1537 to i64*
  %1538 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1539 = getelementptr inbounds %struct.GPR, %struct.GPR* %1538, i32 0, i32 5
  %1540 = getelementptr inbounds %struct.Reg, %struct.Reg* %1539, i32 0, i32 0
  %RCX.i506 = bitcast %union.anon* %1540 to i64*
  %1541 = load i64, i64* %RAX.i505
  %1542 = load i64, i64* %RCX.i506
  %1543 = mul i64 %1542, 8
  %1544 = add i64 %1543, %1541
  %1545 = load i64, i64* %PC.i504
  %1546 = add i64 %1545, 5
  store i64 %1546, i64* %PC.i504
  %1547 = inttoptr i64 %1544 to i64*
  %1548 = load i64, i64* %1547
  %1549 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1549, align 1
  %1550 = trunc i64 %1548 to i32
  %1551 = and i32 %1550, 255
  %1552 = call i32 @llvm.ctpop.i32(i32 %1551)
  %1553 = trunc i32 %1552 to i8
  %1554 = and i8 %1553, 1
  %1555 = xor i8 %1554, 1
  %1556 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1555, i8* %1556, align 1
  %1557 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1557, align 1
  %1558 = icmp eq i64 %1548, 0
  %1559 = zext i1 %1558 to i8
  %1560 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1559, i8* %1560, align 1
  %1561 = lshr i64 %1548, 63
  %1562 = trunc i64 %1561 to i8
  %1563 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1562, i8* %1563, align 1
  %1564 = lshr i64 %1548, 63
  %1565 = xor i64 %1561, %1564
  %1566 = add i64 %1565, %1564
  %1567 = icmp eq i64 %1566, 2
  %1568 = zext i1 %1567 to i8
  %1569 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1568, i8* %1569, align 1
  store %struct.Memory* %loadMem_42fb69, %struct.Memory** %MEMORY
  %loadMem_42fb6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1570 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1571 = getelementptr inbounds %struct.GPR, %struct.GPR* %1570, i32 0, i32 33
  %1572 = getelementptr inbounds %struct.Reg, %struct.Reg* %1571, i32 0, i32 0
  %PC.i503 = bitcast %union.anon* %1572 to i64*
  %1573 = load i64, i64* %PC.i503
  %1574 = add i64 %1573, 74
  %1575 = load i64, i64* %PC.i503
  %1576 = add i64 %1575, 6
  %1577 = load i64, i64* %PC.i503
  %1578 = add i64 %1577, 6
  store i64 %1578, i64* %PC.i503
  %1579 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1580 = load i8, i8* %1579, align 1
  store i8 %1580, i8* %BRANCH_TAKEN, align 1
  %1581 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1582 = icmp ne i8 %1580, 0
  %1583 = select i1 %1582, i64 %1574, i64 %1576
  store i64 %1583, i64* %1581, align 8
  store %struct.Memory* %loadMem_42fb6e, %struct.Memory** %MEMORY
  %loadBr_42fb6e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42fb6e = icmp eq i8 %loadBr_42fb6e, 1
  br i1 %cmpBr_42fb6e, label %block_.L_42fbb8, label %block_42fb74

block_42fb74:                                     ; preds = %block_42fb52
  %loadMem_42fb74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1584 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1585 = getelementptr inbounds %struct.GPR, %struct.GPR* %1584, i32 0, i32 33
  %1586 = getelementptr inbounds %struct.Reg, %struct.Reg* %1585, i32 0, i32 0
  %PC.i500 = bitcast %union.anon* %1586 to i64*
  %1587 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1588 = getelementptr inbounds %struct.GPR, %struct.GPR* %1587, i32 0, i32 1
  %1589 = getelementptr inbounds %struct.Reg, %struct.Reg* %1588, i32 0, i32 0
  %RAX.i501 = bitcast %union.anon* %1589 to i64*
  %1590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1591 = getelementptr inbounds %struct.GPR, %struct.GPR* %1590, i32 0, i32 15
  %1592 = getelementptr inbounds %struct.Reg, %struct.Reg* %1591, i32 0, i32 0
  %RBP.i502 = bitcast %union.anon* %1592 to i64*
  %1593 = load i64, i64* %RBP.i502
  %1594 = sub i64 %1593, 8
  %1595 = load i64, i64* %PC.i500
  %1596 = add i64 %1595, 4
  store i64 %1596, i64* %PC.i500
  %1597 = inttoptr i64 %1594 to i64*
  %1598 = load i64, i64* %1597
  store i64 %1598, i64* %RAX.i501, align 8
  store %struct.Memory* %loadMem_42fb74, %struct.Memory** %MEMORY
  %loadMem_42fb78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1599 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1600 = getelementptr inbounds %struct.GPR, %struct.GPR* %1599, i32 0, i32 33
  %1601 = getelementptr inbounds %struct.Reg, %struct.Reg* %1600, i32 0, i32 0
  %PC.i498 = bitcast %union.anon* %1601 to i64*
  %1602 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1603 = getelementptr inbounds %struct.GPR, %struct.GPR* %1602, i32 0, i32 1
  %1604 = getelementptr inbounds %struct.Reg, %struct.Reg* %1603, i32 0, i32 0
  %RAX.i499 = bitcast %union.anon* %1604 to i64*
  %1605 = load i64, i64* %RAX.i499
  %1606 = add i64 %1605, 288
  %1607 = load i64, i64* %PC.i498
  %1608 = add i64 %1607, 7
  store i64 %1608, i64* %PC.i498
  %1609 = inttoptr i64 %1606 to i64*
  %1610 = load i64, i64* %1609
  store i64 %1610, i64* %RAX.i499, align 8
  store %struct.Memory* %loadMem_42fb78, %struct.Memory** %MEMORY
  %loadMem_42fb7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1612 = getelementptr inbounds %struct.GPR, %struct.GPR* %1611, i32 0, i32 33
  %1613 = getelementptr inbounds %struct.Reg, %struct.Reg* %1612, i32 0, i32 0
  %PC.i495 = bitcast %union.anon* %1613 to i64*
  %1614 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1615 = getelementptr inbounds %struct.GPR, %struct.GPR* %1614, i32 0, i32 5
  %1616 = getelementptr inbounds %struct.Reg, %struct.Reg* %1615, i32 0, i32 0
  %RCX.i496 = bitcast %union.anon* %1616 to i64*
  %1617 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1618 = getelementptr inbounds %struct.GPR, %struct.GPR* %1617, i32 0, i32 15
  %1619 = getelementptr inbounds %struct.Reg, %struct.Reg* %1618, i32 0, i32 0
  %RBP.i497 = bitcast %union.anon* %1619 to i64*
  %1620 = load i64, i64* %RBP.i497
  %1621 = sub i64 %1620, 32
  %1622 = load i64, i64* %PC.i495
  %1623 = add i64 %1622, 4
  store i64 %1623, i64* %PC.i495
  %1624 = inttoptr i64 %1621 to i32*
  %1625 = load i32, i32* %1624
  %1626 = sext i32 %1625 to i64
  store i64 %1626, i64* %RCX.i496, align 8
  store %struct.Memory* %loadMem_42fb7f, %struct.Memory** %MEMORY
  %loadMem_42fb83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1628 = getelementptr inbounds %struct.GPR, %struct.GPR* %1627, i32 0, i32 33
  %1629 = getelementptr inbounds %struct.Reg, %struct.Reg* %1628, i32 0, i32 0
  %PC.i492 = bitcast %union.anon* %1629 to i64*
  %1630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1631 = getelementptr inbounds %struct.GPR, %struct.GPR* %1630, i32 0, i32 1
  %1632 = getelementptr inbounds %struct.Reg, %struct.Reg* %1631, i32 0, i32 0
  %RAX.i493 = bitcast %union.anon* %1632 to i64*
  %1633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1634 = getelementptr inbounds %struct.GPR, %struct.GPR* %1633, i32 0, i32 5
  %1635 = getelementptr inbounds %struct.Reg, %struct.Reg* %1634, i32 0, i32 0
  %RCX.i494 = bitcast %union.anon* %1635 to i64*
  %1636 = load i64, i64* %RAX.i493
  %1637 = load i64, i64* %RCX.i494
  %1638 = mul i64 %1637, 8
  %1639 = add i64 %1638, %1636
  %1640 = load i64, i64* %PC.i492
  %1641 = add i64 %1640, 4
  store i64 %1641, i64* %PC.i492
  %1642 = inttoptr i64 %1639 to i64*
  %1643 = load i64, i64* %1642
  store i64 %1643, i64* %RAX.i493, align 8
  store %struct.Memory* %loadMem_42fb83, %struct.Memory** %MEMORY
  %loadMem_42fb87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1644 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1645 = getelementptr inbounds %struct.GPR, %struct.GPR* %1644, i32 0, i32 33
  %1646 = getelementptr inbounds %struct.Reg, %struct.Reg* %1645, i32 0, i32 0
  %PC.i489 = bitcast %union.anon* %1646 to i64*
  %1647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1648 = getelementptr inbounds %struct.GPR, %struct.GPR* %1647, i32 0, i32 5
  %1649 = getelementptr inbounds %struct.Reg, %struct.Reg* %1648, i32 0, i32 0
  %RCX.i490 = bitcast %union.anon* %1649 to i64*
  %1650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1651 = getelementptr inbounds %struct.GPR, %struct.GPR* %1650, i32 0, i32 15
  %1652 = getelementptr inbounds %struct.Reg, %struct.Reg* %1651, i32 0, i32 0
  %RBP.i491 = bitcast %union.anon* %1652 to i64*
  %1653 = load i64, i64* %RBP.i491
  %1654 = sub i64 %1653, 28
  %1655 = load i64, i64* %PC.i489
  %1656 = add i64 %1655, 4
  store i64 %1656, i64* %PC.i489
  %1657 = inttoptr i64 %1654 to i32*
  %1658 = load i32, i32* %1657
  %1659 = sext i32 %1658 to i64
  store i64 %1659, i64* %RCX.i490, align 8
  store %struct.Memory* %loadMem_42fb87, %struct.Memory** %MEMORY
  %loadMem_42fb8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1660 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1661 = getelementptr inbounds %struct.GPR, %struct.GPR* %1660, i32 0, i32 33
  %1662 = getelementptr inbounds %struct.Reg, %struct.Reg* %1661, i32 0, i32 0
  %PC.i486 = bitcast %union.anon* %1662 to i64*
  %1663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1664 = getelementptr inbounds %struct.GPR, %struct.GPR* %1663, i32 0, i32 1
  %1665 = getelementptr inbounds %struct.Reg, %struct.Reg* %1664, i32 0, i32 0
  %RAX.i487 = bitcast %union.anon* %1665 to i64*
  %1666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1667 = getelementptr inbounds %struct.GPR, %struct.GPR* %1666, i32 0, i32 5
  %1668 = getelementptr inbounds %struct.Reg, %struct.Reg* %1667, i32 0, i32 0
  %RCX.i488 = bitcast %union.anon* %1668 to i64*
  %1669 = load i64, i64* %RAX.i487
  %1670 = load i64, i64* %RCX.i488
  %1671 = mul i64 %1670, 8
  %1672 = add i64 %1671, %1669
  %1673 = load i64, i64* %PC.i486
  %1674 = add i64 %1673, 4
  store i64 %1674, i64* %PC.i486
  %1675 = inttoptr i64 %1672 to i64*
  %1676 = load i64, i64* %1675
  store i64 %1676, i64* %RAX.i487, align 8
  store %struct.Memory* %loadMem_42fb8b, %struct.Memory** %MEMORY
  %loadMem_42fb8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1678 = getelementptr inbounds %struct.GPR, %struct.GPR* %1677, i32 0, i32 33
  %1679 = getelementptr inbounds %struct.Reg, %struct.Reg* %1678, i32 0, i32 0
  %PC.i483 = bitcast %union.anon* %1679 to i64*
  %1680 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1681 = getelementptr inbounds %struct.GPR, %struct.GPR* %1680, i32 0, i32 5
  %1682 = getelementptr inbounds %struct.Reg, %struct.Reg* %1681, i32 0, i32 0
  %RCX.i484 = bitcast %union.anon* %1682 to i64*
  %1683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1684 = getelementptr inbounds %struct.GPR, %struct.GPR* %1683, i32 0, i32 15
  %1685 = getelementptr inbounds %struct.Reg, %struct.Reg* %1684, i32 0, i32 0
  %RBP.i485 = bitcast %union.anon* %1685 to i64*
  %1686 = load i64, i64* %RBP.i485
  %1687 = sub i64 %1686, 20
  %1688 = load i64, i64* %PC.i483
  %1689 = add i64 %1688, 4
  store i64 %1689, i64* %PC.i483
  %1690 = inttoptr i64 %1687 to i32*
  %1691 = load i32, i32* %1690
  %1692 = sext i32 %1691 to i64
  store i64 %1692, i64* %RCX.i484, align 8
  store %struct.Memory* %loadMem_42fb8f, %struct.Memory** %MEMORY
  %loadMem_42fb93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1694 = getelementptr inbounds %struct.GPR, %struct.GPR* %1693, i32 0, i32 33
  %1695 = getelementptr inbounds %struct.Reg, %struct.Reg* %1694, i32 0, i32 0
  %PC.i479 = bitcast %union.anon* %1695 to i64*
  %1696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1697 = getelementptr inbounds %struct.GPR, %struct.GPR* %1696, i32 0, i32 7
  %1698 = getelementptr inbounds %struct.Reg, %struct.Reg* %1697, i32 0, i32 0
  %1699 = bitcast %union.anon* %1698 to %struct.anon.2*
  %DL.i480 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1699, i32 0, i32 0
  %1700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1701 = getelementptr inbounds %struct.GPR, %struct.GPR* %1700, i32 0, i32 1
  %1702 = getelementptr inbounds %struct.Reg, %struct.Reg* %1701, i32 0, i32 0
  %RAX.i481 = bitcast %union.anon* %1702 to i64*
  %1703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1704 = getelementptr inbounds %struct.GPR, %struct.GPR* %1703, i32 0, i32 5
  %1705 = getelementptr inbounds %struct.Reg, %struct.Reg* %1704, i32 0, i32 0
  %RCX.i482 = bitcast %union.anon* %1705 to i64*
  %1706 = load i64, i64* %RAX.i481
  %1707 = load i64, i64* %RCX.i482
  %1708 = add i64 %1707, %1706
  %1709 = load i64, i64* %PC.i479
  %1710 = add i64 %1709, 3
  store i64 %1710, i64* %PC.i479
  %1711 = inttoptr i64 %1708 to i8*
  %1712 = load i8, i8* %1711
  store i8 %1712, i8* %DL.i480, align 1
  store %struct.Memory* %loadMem_42fb93, %struct.Memory** %MEMORY
  %loadMem_42fb96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1714 = getelementptr inbounds %struct.GPR, %struct.GPR* %1713, i32 0, i32 33
  %1715 = getelementptr inbounds %struct.Reg, %struct.Reg* %1714, i32 0, i32 0
  %PC.i476 = bitcast %union.anon* %1715 to i64*
  %1716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1717 = getelementptr inbounds %struct.GPR, %struct.GPR* %1716, i32 0, i32 1
  %1718 = getelementptr inbounds %struct.Reg, %struct.Reg* %1717, i32 0, i32 0
  %RAX.i477 = bitcast %union.anon* %1718 to i64*
  %1719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1720 = getelementptr inbounds %struct.GPR, %struct.GPR* %1719, i32 0, i32 15
  %1721 = getelementptr inbounds %struct.Reg, %struct.Reg* %1720, i32 0, i32 0
  %RBP.i478 = bitcast %union.anon* %1721 to i64*
  %1722 = load i64, i64* %RBP.i478
  %1723 = sub i64 %1722, 8
  %1724 = load i64, i64* %PC.i476
  %1725 = add i64 %1724, 4
  store i64 %1725, i64* %PC.i476
  %1726 = inttoptr i64 %1723 to i64*
  %1727 = load i64, i64* %1726
  store i64 %1727, i64* %RAX.i477, align 8
  store %struct.Memory* %loadMem_42fb96, %struct.Memory** %MEMORY
  %loadMem_42fb9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1729 = getelementptr inbounds %struct.GPR, %struct.GPR* %1728, i32 0, i32 33
  %1730 = getelementptr inbounds %struct.Reg, %struct.Reg* %1729, i32 0, i32 0
  %PC.i474 = bitcast %union.anon* %1730 to i64*
  %1731 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1732 = getelementptr inbounds %struct.GPR, %struct.GPR* %1731, i32 0, i32 1
  %1733 = getelementptr inbounds %struct.Reg, %struct.Reg* %1732, i32 0, i32 0
  %RAX.i475 = bitcast %union.anon* %1733 to i64*
  %1734 = load i64, i64* %RAX.i475
  %1735 = add i64 %1734, 288
  %1736 = load i64, i64* %PC.i474
  %1737 = add i64 %1736, 7
  store i64 %1737, i64* %PC.i474
  %1738 = inttoptr i64 %1735 to i64*
  %1739 = load i64, i64* %1738
  store i64 %1739, i64* %RAX.i475, align 8
  store %struct.Memory* %loadMem_42fb9a, %struct.Memory** %MEMORY
  %loadMem_42fba1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1741 = getelementptr inbounds %struct.GPR, %struct.GPR* %1740, i32 0, i32 33
  %1742 = getelementptr inbounds %struct.Reg, %struct.Reg* %1741, i32 0, i32 0
  %PC.i471 = bitcast %union.anon* %1742 to i64*
  %1743 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1744 = getelementptr inbounds %struct.GPR, %struct.GPR* %1743, i32 0, i32 5
  %1745 = getelementptr inbounds %struct.Reg, %struct.Reg* %1744, i32 0, i32 0
  %RCX.i472 = bitcast %union.anon* %1745 to i64*
  %1746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1747 = getelementptr inbounds %struct.GPR, %struct.GPR* %1746, i32 0, i32 15
  %1748 = getelementptr inbounds %struct.Reg, %struct.Reg* %1747, i32 0, i32 0
  %RBP.i473 = bitcast %union.anon* %1748 to i64*
  %1749 = load i64, i64* %RBP.i473
  %1750 = sub i64 %1749, 32
  %1751 = load i64, i64* %PC.i471
  %1752 = add i64 %1751, 4
  store i64 %1752, i64* %PC.i471
  %1753 = inttoptr i64 %1750 to i32*
  %1754 = load i32, i32* %1753
  %1755 = sext i32 %1754 to i64
  store i64 %1755, i64* %RCX.i472, align 8
  store %struct.Memory* %loadMem_42fba1, %struct.Memory** %MEMORY
  %loadMem_42fba5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1756 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1757 = getelementptr inbounds %struct.GPR, %struct.GPR* %1756, i32 0, i32 33
  %1758 = getelementptr inbounds %struct.Reg, %struct.Reg* %1757, i32 0, i32 0
  %PC.i468 = bitcast %union.anon* %1758 to i64*
  %1759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1760 = getelementptr inbounds %struct.GPR, %struct.GPR* %1759, i32 0, i32 1
  %1761 = getelementptr inbounds %struct.Reg, %struct.Reg* %1760, i32 0, i32 0
  %RAX.i469 = bitcast %union.anon* %1761 to i64*
  %1762 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1763 = getelementptr inbounds %struct.GPR, %struct.GPR* %1762, i32 0, i32 5
  %1764 = getelementptr inbounds %struct.Reg, %struct.Reg* %1763, i32 0, i32 0
  %RCX.i470 = bitcast %union.anon* %1764 to i64*
  %1765 = load i64, i64* %RAX.i469
  %1766 = load i64, i64* %RCX.i470
  %1767 = mul i64 %1766, 8
  %1768 = add i64 %1767, %1765
  %1769 = load i64, i64* %PC.i468
  %1770 = add i64 %1769, 4
  store i64 %1770, i64* %PC.i468
  %1771 = inttoptr i64 %1768 to i64*
  %1772 = load i64, i64* %1771
  store i64 %1772, i64* %RAX.i469, align 8
  store %struct.Memory* %loadMem_42fba5, %struct.Memory** %MEMORY
  %loadMem_42fba9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1774 = getelementptr inbounds %struct.GPR, %struct.GPR* %1773, i32 0, i32 33
  %1775 = getelementptr inbounds %struct.Reg, %struct.Reg* %1774, i32 0, i32 0
  %PC.i465 = bitcast %union.anon* %1775 to i64*
  %1776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1777 = getelementptr inbounds %struct.GPR, %struct.GPR* %1776, i32 0, i32 5
  %1778 = getelementptr inbounds %struct.Reg, %struct.Reg* %1777, i32 0, i32 0
  %RCX.i466 = bitcast %union.anon* %1778 to i64*
  %1779 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1780 = getelementptr inbounds %struct.GPR, %struct.GPR* %1779, i32 0, i32 15
  %1781 = getelementptr inbounds %struct.Reg, %struct.Reg* %1780, i32 0, i32 0
  %RBP.i467 = bitcast %union.anon* %1781 to i64*
  %1782 = load i64, i64* %RBP.i467
  %1783 = sub i64 %1782, 28
  %1784 = load i64, i64* %PC.i465
  %1785 = add i64 %1784, 4
  store i64 %1785, i64* %PC.i465
  %1786 = inttoptr i64 %1783 to i32*
  %1787 = load i32, i32* %1786
  %1788 = sext i32 %1787 to i64
  store i64 %1788, i64* %RCX.i466, align 8
  store %struct.Memory* %loadMem_42fba9, %struct.Memory** %MEMORY
  %loadMem_42fbad = load %struct.Memory*, %struct.Memory** %MEMORY
  %1789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1790 = getelementptr inbounds %struct.GPR, %struct.GPR* %1789, i32 0, i32 33
  %1791 = getelementptr inbounds %struct.Reg, %struct.Reg* %1790, i32 0, i32 0
  %PC.i462 = bitcast %union.anon* %1791 to i64*
  %1792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1793 = getelementptr inbounds %struct.GPR, %struct.GPR* %1792, i32 0, i32 1
  %1794 = getelementptr inbounds %struct.Reg, %struct.Reg* %1793, i32 0, i32 0
  %RAX.i463 = bitcast %union.anon* %1794 to i64*
  %1795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1796 = getelementptr inbounds %struct.GPR, %struct.GPR* %1795, i32 0, i32 5
  %1797 = getelementptr inbounds %struct.Reg, %struct.Reg* %1796, i32 0, i32 0
  %RCX.i464 = bitcast %union.anon* %1797 to i64*
  %1798 = load i64, i64* %RAX.i463
  %1799 = load i64, i64* %RCX.i464
  %1800 = mul i64 %1799, 8
  %1801 = add i64 %1800, %1798
  %1802 = load i64, i64* %PC.i462
  %1803 = add i64 %1802, 4
  store i64 %1803, i64* %PC.i462
  %1804 = inttoptr i64 %1801 to i64*
  %1805 = load i64, i64* %1804
  store i64 %1805, i64* %RAX.i463, align 8
  store %struct.Memory* %loadMem_42fbad, %struct.Memory** %MEMORY
  %loadMem_42fbb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1806 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1807 = getelementptr inbounds %struct.GPR, %struct.GPR* %1806, i32 0, i32 33
  %1808 = getelementptr inbounds %struct.Reg, %struct.Reg* %1807, i32 0, i32 0
  %PC.i459 = bitcast %union.anon* %1808 to i64*
  %1809 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1810 = getelementptr inbounds %struct.GPR, %struct.GPR* %1809, i32 0, i32 5
  %1811 = getelementptr inbounds %struct.Reg, %struct.Reg* %1810, i32 0, i32 0
  %RCX.i460 = bitcast %union.anon* %1811 to i64*
  %1812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1813 = getelementptr inbounds %struct.GPR, %struct.GPR* %1812, i32 0, i32 15
  %1814 = getelementptr inbounds %struct.Reg, %struct.Reg* %1813, i32 0, i32 0
  %RBP.i461 = bitcast %union.anon* %1814 to i64*
  %1815 = load i64, i64* %RBP.i461
  %1816 = sub i64 %1815, 24
  %1817 = load i64, i64* %PC.i459
  %1818 = add i64 %1817, 4
  store i64 %1818, i64* %PC.i459
  %1819 = inttoptr i64 %1816 to i32*
  %1820 = load i32, i32* %1819
  %1821 = sext i32 %1820 to i64
  store i64 %1821, i64* %RCX.i460, align 8
  store %struct.Memory* %loadMem_42fbb1, %struct.Memory** %MEMORY
  %loadMem_42fbb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1823 = getelementptr inbounds %struct.GPR, %struct.GPR* %1822, i32 0, i32 33
  %1824 = getelementptr inbounds %struct.Reg, %struct.Reg* %1823, i32 0, i32 0
  %PC.i455 = bitcast %union.anon* %1824 to i64*
  %1825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1826 = getelementptr inbounds %struct.GPR, %struct.GPR* %1825, i32 0, i32 7
  %1827 = getelementptr inbounds %struct.Reg, %struct.Reg* %1826, i32 0, i32 0
  %1828 = bitcast %union.anon* %1827 to %struct.anon.2*
  %DL.i456 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1828, i32 0, i32 0
  %1829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1830 = getelementptr inbounds %struct.GPR, %struct.GPR* %1829, i32 0, i32 1
  %1831 = getelementptr inbounds %struct.Reg, %struct.Reg* %1830, i32 0, i32 0
  %RAX.i457 = bitcast %union.anon* %1831 to i64*
  %1832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1833 = getelementptr inbounds %struct.GPR, %struct.GPR* %1832, i32 0, i32 5
  %1834 = getelementptr inbounds %struct.Reg, %struct.Reg* %1833, i32 0, i32 0
  %RCX.i458 = bitcast %union.anon* %1834 to i64*
  %1835 = load i64, i64* %RAX.i457
  %1836 = load i64, i64* %RCX.i458
  %1837 = add i64 %1836, %1835
  %1838 = load i8, i8* %DL.i456
  %1839 = zext i8 %1838 to i64
  %1840 = load i64, i64* %PC.i455
  %1841 = add i64 %1840, 3
  store i64 %1841, i64* %PC.i455
  %1842 = inttoptr i64 %1837 to i8*
  store i8 %1838, i8* %1842
  store %struct.Memory* %loadMem_42fbb5, %struct.Memory** %MEMORY
  br label %block_.L_42fbb8

block_.L_42fbb8:                                  ; preds = %block_42fb74, %block_42fb52
  %loadMem_42fbb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1844 = getelementptr inbounds %struct.GPR, %struct.GPR* %1843, i32 0, i32 33
  %1845 = getelementptr inbounds %struct.Reg, %struct.Reg* %1844, i32 0, i32 0
  %PC.i454 = bitcast %union.anon* %1845 to i64*
  %1846 = load i64, i64* %PC.i454
  %1847 = add i64 %1846, 5
  %1848 = load i64, i64* %PC.i454
  %1849 = add i64 %1848, 5
  store i64 %1849, i64* %PC.i454
  %1850 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1847, i64* %1850, align 8
  store %struct.Memory* %loadMem_42fbb8, %struct.Memory** %MEMORY
  br label %block_.L_42fbbd

block_.L_42fbbd:                                  ; preds = %block_.L_42fbb8
  %loadMem_42fbbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1851 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1852 = getelementptr inbounds %struct.GPR, %struct.GPR* %1851, i32 0, i32 33
  %1853 = getelementptr inbounds %struct.Reg, %struct.Reg* %1852, i32 0, i32 0
  %PC.i451 = bitcast %union.anon* %1853 to i64*
  %1854 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1855 = getelementptr inbounds %struct.GPR, %struct.GPR* %1854, i32 0, i32 1
  %1856 = getelementptr inbounds %struct.Reg, %struct.Reg* %1855, i32 0, i32 0
  %RAX.i452 = bitcast %union.anon* %1856 to i64*
  %1857 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1858 = getelementptr inbounds %struct.GPR, %struct.GPR* %1857, i32 0, i32 15
  %1859 = getelementptr inbounds %struct.Reg, %struct.Reg* %1858, i32 0, i32 0
  %RBP.i453 = bitcast %union.anon* %1859 to i64*
  %1860 = load i64, i64* %RBP.i453
  %1861 = sub i64 %1860, 32
  %1862 = load i64, i64* %PC.i451
  %1863 = add i64 %1862, 3
  store i64 %1863, i64* %PC.i451
  %1864 = inttoptr i64 %1861 to i32*
  %1865 = load i32, i32* %1864
  %1866 = zext i32 %1865 to i64
  store i64 %1866, i64* %RAX.i452, align 8
  store %struct.Memory* %loadMem_42fbbd, %struct.Memory** %MEMORY
  %loadMem_42fbc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1867 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1868 = getelementptr inbounds %struct.GPR, %struct.GPR* %1867, i32 0, i32 33
  %1869 = getelementptr inbounds %struct.Reg, %struct.Reg* %1868, i32 0, i32 0
  %PC.i449 = bitcast %union.anon* %1869 to i64*
  %1870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1871 = getelementptr inbounds %struct.GPR, %struct.GPR* %1870, i32 0, i32 1
  %1872 = getelementptr inbounds %struct.Reg, %struct.Reg* %1871, i32 0, i32 0
  %RAX.i450 = bitcast %union.anon* %1872 to i64*
  %1873 = load i64, i64* %RAX.i450
  %1874 = load i64, i64* %PC.i449
  %1875 = add i64 %1874, 3
  store i64 %1875, i64* %PC.i449
  %1876 = trunc i64 %1873 to i32
  %1877 = add i32 1, %1876
  %1878 = zext i32 %1877 to i64
  store i64 %1878, i64* %RAX.i450, align 8
  %1879 = icmp ult i32 %1877, %1876
  %1880 = icmp ult i32 %1877, 1
  %1881 = or i1 %1879, %1880
  %1882 = zext i1 %1881 to i8
  %1883 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1882, i8* %1883, align 1
  %1884 = and i32 %1877, 255
  %1885 = call i32 @llvm.ctpop.i32(i32 %1884)
  %1886 = trunc i32 %1885 to i8
  %1887 = and i8 %1886, 1
  %1888 = xor i8 %1887, 1
  %1889 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1888, i8* %1889, align 1
  %1890 = xor i64 1, %1873
  %1891 = trunc i64 %1890 to i32
  %1892 = xor i32 %1891, %1877
  %1893 = lshr i32 %1892, 4
  %1894 = trunc i32 %1893 to i8
  %1895 = and i8 %1894, 1
  %1896 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1895, i8* %1896, align 1
  %1897 = icmp eq i32 %1877, 0
  %1898 = zext i1 %1897 to i8
  %1899 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1898, i8* %1899, align 1
  %1900 = lshr i32 %1877, 31
  %1901 = trunc i32 %1900 to i8
  %1902 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1901, i8* %1902, align 1
  %1903 = lshr i32 %1876, 31
  %1904 = xor i32 %1900, %1903
  %1905 = add i32 %1904, %1900
  %1906 = icmp eq i32 %1905, 2
  %1907 = zext i1 %1906 to i8
  %1908 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1907, i8* %1908, align 1
  store %struct.Memory* %loadMem_42fbc0, %struct.Memory** %MEMORY
  %loadMem_42fbc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1909 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1910 = getelementptr inbounds %struct.GPR, %struct.GPR* %1909, i32 0, i32 33
  %1911 = getelementptr inbounds %struct.Reg, %struct.Reg* %1910, i32 0, i32 0
  %PC.i446 = bitcast %union.anon* %1911 to i64*
  %1912 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1913 = getelementptr inbounds %struct.GPR, %struct.GPR* %1912, i32 0, i32 1
  %1914 = getelementptr inbounds %struct.Reg, %struct.Reg* %1913, i32 0, i32 0
  %EAX.i447 = bitcast %union.anon* %1914 to i32*
  %1915 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1916 = getelementptr inbounds %struct.GPR, %struct.GPR* %1915, i32 0, i32 15
  %1917 = getelementptr inbounds %struct.Reg, %struct.Reg* %1916, i32 0, i32 0
  %RBP.i448 = bitcast %union.anon* %1917 to i64*
  %1918 = load i64, i64* %RBP.i448
  %1919 = sub i64 %1918, 32
  %1920 = load i32, i32* %EAX.i447
  %1921 = zext i32 %1920 to i64
  %1922 = load i64, i64* %PC.i446
  %1923 = add i64 %1922, 3
  store i64 %1923, i64* %PC.i446
  %1924 = inttoptr i64 %1919 to i32*
  store i32 %1920, i32* %1924
  store %struct.Memory* %loadMem_42fbc3, %struct.Memory** %MEMORY
  %loadMem_42fbc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1925 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1926 = getelementptr inbounds %struct.GPR, %struct.GPR* %1925, i32 0, i32 33
  %1927 = getelementptr inbounds %struct.Reg, %struct.Reg* %1926, i32 0, i32 0
  %PC.i445 = bitcast %union.anon* %1927 to i64*
  %1928 = load i64, i64* %PC.i445
  %1929 = add i64 %1928, -135
  %1930 = load i64, i64* %PC.i445
  %1931 = add i64 %1930, 5
  store i64 %1931, i64* %PC.i445
  %1932 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1929, i64* %1932, align 8
  store %struct.Memory* %loadMem_42fbc6, %struct.Memory** %MEMORY
  br label %block_.L_42fb3f

block_.L_42fbcb:                                  ; preds = %block_.L_42fb3f
  %loadMem_42fbcb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1933 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1934 = getelementptr inbounds %struct.GPR, %struct.GPR* %1933, i32 0, i32 33
  %1935 = getelementptr inbounds %struct.Reg, %struct.Reg* %1934, i32 0, i32 0
  %PC.i444 = bitcast %union.anon* %1935 to i64*
  %1936 = load i64, i64* %PC.i444
  %1937 = add i64 %1936, 5
  %1938 = load i64, i64* %PC.i444
  %1939 = add i64 %1938, 5
  store i64 %1939, i64* %PC.i444
  %1940 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1937, i64* %1940, align 8
  store %struct.Memory* %loadMem_42fbcb, %struct.Memory** %MEMORY
  br label %block_.L_42fbd0

block_.L_42fbd0:                                  ; preds = %block_.L_42fbcb
  %loadMem_42fbd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1941 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1942 = getelementptr inbounds %struct.GPR, %struct.GPR* %1941, i32 0, i32 33
  %1943 = getelementptr inbounds %struct.Reg, %struct.Reg* %1942, i32 0, i32 0
  %PC.i441 = bitcast %union.anon* %1943 to i64*
  %1944 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1945 = getelementptr inbounds %struct.GPR, %struct.GPR* %1944, i32 0, i32 1
  %1946 = getelementptr inbounds %struct.Reg, %struct.Reg* %1945, i32 0, i32 0
  %RAX.i442 = bitcast %union.anon* %1946 to i64*
  %1947 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1948 = getelementptr inbounds %struct.GPR, %struct.GPR* %1947, i32 0, i32 15
  %1949 = getelementptr inbounds %struct.Reg, %struct.Reg* %1948, i32 0, i32 0
  %RBP.i443 = bitcast %union.anon* %1949 to i64*
  %1950 = load i64, i64* %RBP.i443
  %1951 = sub i64 %1950, 28
  %1952 = load i64, i64* %PC.i441
  %1953 = add i64 %1952, 3
  store i64 %1953, i64* %PC.i441
  %1954 = inttoptr i64 %1951 to i32*
  %1955 = load i32, i32* %1954
  %1956 = zext i32 %1955 to i64
  store i64 %1956, i64* %RAX.i442, align 8
  store %struct.Memory* %loadMem_42fbd0, %struct.Memory** %MEMORY
  %loadMem_42fbd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1957 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1958 = getelementptr inbounds %struct.GPR, %struct.GPR* %1957, i32 0, i32 33
  %1959 = getelementptr inbounds %struct.Reg, %struct.Reg* %1958, i32 0, i32 0
  %PC.i439 = bitcast %union.anon* %1959 to i64*
  %1960 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1961 = getelementptr inbounds %struct.GPR, %struct.GPR* %1960, i32 0, i32 1
  %1962 = getelementptr inbounds %struct.Reg, %struct.Reg* %1961, i32 0, i32 0
  %RAX.i440 = bitcast %union.anon* %1962 to i64*
  %1963 = load i64, i64* %RAX.i440
  %1964 = load i64, i64* %PC.i439
  %1965 = add i64 %1964, 3
  store i64 %1965, i64* %PC.i439
  %1966 = trunc i64 %1963 to i32
  %1967 = add i32 1, %1966
  %1968 = zext i32 %1967 to i64
  store i64 %1968, i64* %RAX.i440, align 8
  %1969 = icmp ult i32 %1967, %1966
  %1970 = icmp ult i32 %1967, 1
  %1971 = or i1 %1969, %1970
  %1972 = zext i1 %1971 to i8
  %1973 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1972, i8* %1973, align 1
  %1974 = and i32 %1967, 255
  %1975 = call i32 @llvm.ctpop.i32(i32 %1974)
  %1976 = trunc i32 %1975 to i8
  %1977 = and i8 %1976, 1
  %1978 = xor i8 %1977, 1
  %1979 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1978, i8* %1979, align 1
  %1980 = xor i64 1, %1963
  %1981 = trunc i64 %1980 to i32
  %1982 = xor i32 %1981, %1967
  %1983 = lshr i32 %1982, 4
  %1984 = trunc i32 %1983 to i8
  %1985 = and i8 %1984, 1
  %1986 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1985, i8* %1986, align 1
  %1987 = icmp eq i32 %1967, 0
  %1988 = zext i1 %1987 to i8
  %1989 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1988, i8* %1989, align 1
  %1990 = lshr i32 %1967, 31
  %1991 = trunc i32 %1990 to i8
  %1992 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1991, i8* %1992, align 1
  %1993 = lshr i32 %1966, 31
  %1994 = xor i32 %1990, %1993
  %1995 = add i32 %1994, %1990
  %1996 = icmp eq i32 %1995, 2
  %1997 = zext i1 %1996 to i8
  %1998 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1997, i8* %1998, align 1
  store %struct.Memory* %loadMem_42fbd3, %struct.Memory** %MEMORY
  %loadMem_42fbd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2000 = getelementptr inbounds %struct.GPR, %struct.GPR* %1999, i32 0, i32 33
  %2001 = getelementptr inbounds %struct.Reg, %struct.Reg* %2000, i32 0, i32 0
  %PC.i436 = bitcast %union.anon* %2001 to i64*
  %2002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2003 = getelementptr inbounds %struct.GPR, %struct.GPR* %2002, i32 0, i32 1
  %2004 = getelementptr inbounds %struct.Reg, %struct.Reg* %2003, i32 0, i32 0
  %EAX.i437 = bitcast %union.anon* %2004 to i32*
  %2005 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2006 = getelementptr inbounds %struct.GPR, %struct.GPR* %2005, i32 0, i32 15
  %2007 = getelementptr inbounds %struct.Reg, %struct.Reg* %2006, i32 0, i32 0
  %RBP.i438 = bitcast %union.anon* %2007 to i64*
  %2008 = load i64, i64* %RBP.i438
  %2009 = sub i64 %2008, 28
  %2010 = load i32, i32* %EAX.i437
  %2011 = zext i32 %2010 to i64
  %2012 = load i64, i64* %PC.i436
  %2013 = add i64 %2012, 3
  store i64 %2013, i64* %PC.i436
  %2014 = inttoptr i64 %2009 to i32*
  store i32 %2010, i32* %2014
  store %struct.Memory* %loadMem_42fbd6, %struct.Memory** %MEMORY
  %loadMem_42fbd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2015 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2016 = getelementptr inbounds %struct.GPR, %struct.GPR* %2015, i32 0, i32 33
  %2017 = getelementptr inbounds %struct.Reg, %struct.Reg* %2016, i32 0, i32 0
  %PC.i435 = bitcast %union.anon* %2017 to i64*
  %2018 = load i64, i64* %PC.i435
  %2019 = add i64 %2018, -389
  %2020 = load i64, i64* %PC.i435
  %2021 = add i64 %2020, 5
  store i64 %2021, i64* %PC.i435
  %2022 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2019, i64* %2022, align 8
  store %struct.Memory* %loadMem_42fbd9, %struct.Memory** %MEMORY
  br label %block_.L_42fa54

block_.L_42fbde:                                  ; preds = %block_.L_42fa54
  %loadMem_42fbde = load %struct.Memory*, %struct.Memory** %MEMORY
  %2023 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2024 = getelementptr inbounds %struct.GPR, %struct.GPR* %2023, i32 0, i32 33
  %2025 = getelementptr inbounds %struct.Reg, %struct.Reg* %2024, i32 0, i32 0
  %PC.i432 = bitcast %union.anon* %2025 to i64*
  %2026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2027 = getelementptr inbounds %struct.GPR, %struct.GPR* %2026, i32 0, i32 1
  %2028 = getelementptr inbounds %struct.Reg, %struct.Reg* %2027, i32 0, i32 0
  %RAX.i433 = bitcast %union.anon* %2028 to i64*
  %2029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2030 = getelementptr inbounds %struct.GPR, %struct.GPR* %2029, i32 0, i32 15
  %2031 = getelementptr inbounds %struct.Reg, %struct.Reg* %2030, i32 0, i32 0
  %RBP.i434 = bitcast %union.anon* %2031 to i64*
  %2032 = load i64, i64* %RBP.i434
  %2033 = sub i64 %2032, 8
  %2034 = load i64, i64* %PC.i432
  %2035 = add i64 %2034, 4
  store i64 %2035, i64* %PC.i432
  %2036 = inttoptr i64 %2033 to i64*
  %2037 = load i64, i64* %2036
  store i64 %2037, i64* %RAX.i433, align 8
  store %struct.Memory* %loadMem_42fbde, %struct.Memory** %MEMORY
  %loadMem_42fbe2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2038 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2039 = getelementptr inbounds %struct.GPR, %struct.GPR* %2038, i32 0, i32 33
  %2040 = getelementptr inbounds %struct.Reg, %struct.Reg* %2039, i32 0, i32 0
  %PC.i430 = bitcast %union.anon* %2040 to i64*
  %2041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2042 = getelementptr inbounds %struct.GPR, %struct.GPR* %2041, i32 0, i32 1
  %2043 = getelementptr inbounds %struct.Reg, %struct.Reg* %2042, i32 0, i32 0
  %RAX.i431 = bitcast %union.anon* %2043 to i64*
  %2044 = load i64, i64* %RAX.i431
  %2045 = add i64 %2044, 72
  %2046 = load i64, i64* %PC.i430
  %2047 = add i64 %2046, 5
  store i64 %2047, i64* %PC.i430
  %2048 = inttoptr i64 %2045 to i64*
  %2049 = load i64, i64* %2048
  %2050 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2050, align 1
  %2051 = trunc i64 %2049 to i32
  %2052 = and i32 %2051, 255
  %2053 = call i32 @llvm.ctpop.i32(i32 %2052)
  %2054 = trunc i32 %2053 to i8
  %2055 = and i8 %2054, 1
  %2056 = xor i8 %2055, 1
  %2057 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2056, i8* %2057, align 1
  %2058 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2058, align 1
  %2059 = icmp eq i64 %2049, 0
  %2060 = zext i1 %2059 to i8
  %2061 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2060, i8* %2061, align 1
  %2062 = lshr i64 %2049, 63
  %2063 = trunc i64 %2062 to i8
  %2064 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2063, i8* %2064, align 1
  %2065 = lshr i64 %2049, 63
  %2066 = xor i64 %2062, %2065
  %2067 = add i64 %2066, %2065
  %2068 = icmp eq i64 %2067, 2
  %2069 = zext i1 %2068 to i8
  %2070 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2069, i8* %2070, align 1
  store %struct.Memory* %loadMem_42fbe2, %struct.Memory** %MEMORY
  %loadMem_42fbe7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2071 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2072 = getelementptr inbounds %struct.GPR, %struct.GPR* %2071, i32 0, i32 33
  %2073 = getelementptr inbounds %struct.Reg, %struct.Reg* %2072, i32 0, i32 0
  %PC.i429 = bitcast %union.anon* %2073 to i64*
  %2074 = load i64, i64* %PC.i429
  %2075 = add i64 %2074, 36
  %2076 = load i64, i64* %PC.i429
  %2077 = add i64 %2076, 6
  %2078 = load i64, i64* %PC.i429
  %2079 = add i64 %2078, 6
  store i64 %2079, i64* %PC.i429
  %2080 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2081 = load i8, i8* %2080, align 1
  store i8 %2081, i8* %BRANCH_TAKEN, align 1
  %2082 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2083 = icmp ne i8 %2081, 0
  %2084 = select i1 %2083, i64 %2075, i64 %2077
  store i64 %2084, i64* %2082, align 8
  store %struct.Memory* %loadMem_42fbe7, %struct.Memory** %MEMORY
  %loadBr_42fbe7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42fbe7 = icmp eq i8 %loadBr_42fbe7, 1
  br i1 %cmpBr_42fbe7, label %block_.L_42fc0b, label %block_42fbed

block_42fbed:                                     ; preds = %block_.L_42fbde
  %loadMem_42fbed = load %struct.Memory*, %struct.Memory** %MEMORY
  %2085 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2086 = getelementptr inbounds %struct.GPR, %struct.GPR* %2085, i32 0, i32 33
  %2087 = getelementptr inbounds %struct.Reg, %struct.Reg* %2086, i32 0, i32 0
  %PC.i426 = bitcast %union.anon* %2087 to i64*
  %2088 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2089 = getelementptr inbounds %struct.GPR, %struct.GPR* %2088, i32 0, i32 1
  %2090 = getelementptr inbounds %struct.Reg, %struct.Reg* %2089, i32 0, i32 0
  %RAX.i427 = bitcast %union.anon* %2090 to i64*
  %2091 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2092 = getelementptr inbounds %struct.GPR, %struct.GPR* %2091, i32 0, i32 15
  %2093 = getelementptr inbounds %struct.Reg, %struct.Reg* %2092, i32 0, i32 0
  %RBP.i428 = bitcast %union.anon* %2093 to i64*
  %2094 = load i64, i64* %RBP.i428
  %2095 = sub i64 %2094, 8
  %2096 = load i64, i64* %PC.i426
  %2097 = add i64 %2096, 4
  store i64 %2097, i64* %PC.i426
  %2098 = inttoptr i64 %2095 to i64*
  %2099 = load i64, i64* %2098
  store i64 %2099, i64* %RAX.i427, align 8
  store %struct.Memory* %loadMem_42fbed, %struct.Memory** %MEMORY
  %loadMem_42fbf1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2101 = getelementptr inbounds %struct.GPR, %struct.GPR* %2100, i32 0, i32 33
  %2102 = getelementptr inbounds %struct.Reg, %struct.Reg* %2101, i32 0, i32 0
  %PC.i424 = bitcast %union.anon* %2102 to i64*
  %2103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2104 = getelementptr inbounds %struct.GPR, %struct.GPR* %2103, i32 0, i32 1
  %2105 = getelementptr inbounds %struct.Reg, %struct.Reg* %2104, i32 0, i32 0
  %RAX.i425 = bitcast %union.anon* %2105 to i64*
  %2106 = load i64, i64* %RAX.i425
  %2107 = add i64 %2106, 72
  %2108 = load i64, i64* %PC.i424
  %2109 = add i64 %2108, 4
  store i64 %2109, i64* %PC.i424
  %2110 = inttoptr i64 %2107 to i64*
  %2111 = load i64, i64* %2110
  store i64 %2111, i64* %RAX.i425, align 8
  store %struct.Memory* %loadMem_42fbf1, %struct.Memory** %MEMORY
  %loadMem_42fbf5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2113 = getelementptr inbounds %struct.GPR, %struct.GPR* %2112, i32 0, i32 33
  %2114 = getelementptr inbounds %struct.Reg, %struct.Reg* %2113, i32 0, i32 0
  %PC.i421 = bitcast %union.anon* %2114 to i64*
  %2115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2116 = getelementptr inbounds %struct.GPR, %struct.GPR* %2115, i32 0, i32 5
  %2117 = getelementptr inbounds %struct.Reg, %struct.Reg* %2116, i32 0, i32 0
  %RCX.i422 = bitcast %union.anon* %2117 to i64*
  %2118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2119 = getelementptr inbounds %struct.GPR, %struct.GPR* %2118, i32 0, i32 15
  %2120 = getelementptr inbounds %struct.Reg, %struct.Reg* %2119, i32 0, i32 0
  %RBP.i423 = bitcast %union.anon* %2120 to i64*
  %2121 = load i64, i64* %RBP.i423
  %2122 = sub i64 %2121, 20
  %2123 = load i64, i64* %PC.i421
  %2124 = add i64 %2123, 4
  store i64 %2124, i64* %PC.i421
  %2125 = inttoptr i64 %2122 to i32*
  %2126 = load i32, i32* %2125
  %2127 = sext i32 %2126 to i64
  store i64 %2127, i64* %RCX.i422, align 8
  store %struct.Memory* %loadMem_42fbf5, %struct.Memory** %MEMORY
  %loadMem_42fbf9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2129 = getelementptr inbounds %struct.GPR, %struct.GPR* %2128, i32 0, i32 33
  %2130 = getelementptr inbounds %struct.Reg, %struct.Reg* %2129, i32 0, i32 0
  %PC.i417 = bitcast %union.anon* %2130 to i64*
  %2131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2132 = getelementptr inbounds %struct.GPR, %struct.GPR* %2131, i32 0, i32 7
  %2133 = getelementptr inbounds %struct.Reg, %struct.Reg* %2132, i32 0, i32 0
  %2134 = bitcast %union.anon* %2133 to %struct.anon.2*
  %DL.i418 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2134, i32 0, i32 0
  %2135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2136 = getelementptr inbounds %struct.GPR, %struct.GPR* %2135, i32 0, i32 1
  %2137 = getelementptr inbounds %struct.Reg, %struct.Reg* %2136, i32 0, i32 0
  %RAX.i419 = bitcast %union.anon* %2137 to i64*
  %2138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2139 = getelementptr inbounds %struct.GPR, %struct.GPR* %2138, i32 0, i32 5
  %2140 = getelementptr inbounds %struct.Reg, %struct.Reg* %2139, i32 0, i32 0
  %RCX.i420 = bitcast %union.anon* %2140 to i64*
  %2141 = load i64, i64* %RAX.i419
  %2142 = load i64, i64* %RCX.i420
  %2143 = add i64 %2142, %2141
  %2144 = load i64, i64* %PC.i417
  %2145 = add i64 %2144, 3
  store i64 %2145, i64* %PC.i417
  %2146 = inttoptr i64 %2143 to i8*
  %2147 = load i8, i8* %2146
  store i8 %2147, i8* %DL.i418, align 1
  store %struct.Memory* %loadMem_42fbf9, %struct.Memory** %MEMORY
  %loadMem_42fbfc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2149 = getelementptr inbounds %struct.GPR, %struct.GPR* %2148, i32 0, i32 33
  %2150 = getelementptr inbounds %struct.Reg, %struct.Reg* %2149, i32 0, i32 0
  %PC.i414 = bitcast %union.anon* %2150 to i64*
  %2151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2152 = getelementptr inbounds %struct.GPR, %struct.GPR* %2151, i32 0, i32 1
  %2153 = getelementptr inbounds %struct.Reg, %struct.Reg* %2152, i32 0, i32 0
  %RAX.i415 = bitcast %union.anon* %2153 to i64*
  %2154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2155 = getelementptr inbounds %struct.GPR, %struct.GPR* %2154, i32 0, i32 15
  %2156 = getelementptr inbounds %struct.Reg, %struct.Reg* %2155, i32 0, i32 0
  %RBP.i416 = bitcast %union.anon* %2156 to i64*
  %2157 = load i64, i64* %RBP.i416
  %2158 = sub i64 %2157, 8
  %2159 = load i64, i64* %PC.i414
  %2160 = add i64 %2159, 4
  store i64 %2160, i64* %PC.i414
  %2161 = inttoptr i64 %2158 to i64*
  %2162 = load i64, i64* %2161
  store i64 %2162, i64* %RAX.i415, align 8
  store %struct.Memory* %loadMem_42fbfc, %struct.Memory** %MEMORY
  %loadMem_42fc00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2164 = getelementptr inbounds %struct.GPR, %struct.GPR* %2163, i32 0, i32 33
  %2165 = getelementptr inbounds %struct.Reg, %struct.Reg* %2164, i32 0, i32 0
  %PC.i412 = bitcast %union.anon* %2165 to i64*
  %2166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2167 = getelementptr inbounds %struct.GPR, %struct.GPR* %2166, i32 0, i32 1
  %2168 = getelementptr inbounds %struct.Reg, %struct.Reg* %2167, i32 0, i32 0
  %RAX.i413 = bitcast %union.anon* %2168 to i64*
  %2169 = load i64, i64* %RAX.i413
  %2170 = add i64 %2169, 72
  %2171 = load i64, i64* %PC.i412
  %2172 = add i64 %2171, 4
  store i64 %2172, i64* %PC.i412
  %2173 = inttoptr i64 %2170 to i64*
  %2174 = load i64, i64* %2173
  store i64 %2174, i64* %RAX.i413, align 8
  store %struct.Memory* %loadMem_42fc00, %struct.Memory** %MEMORY
  %loadMem_42fc04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2176 = getelementptr inbounds %struct.GPR, %struct.GPR* %2175, i32 0, i32 33
  %2177 = getelementptr inbounds %struct.Reg, %struct.Reg* %2176, i32 0, i32 0
  %PC.i409 = bitcast %union.anon* %2177 to i64*
  %2178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2179 = getelementptr inbounds %struct.GPR, %struct.GPR* %2178, i32 0, i32 5
  %2180 = getelementptr inbounds %struct.Reg, %struct.Reg* %2179, i32 0, i32 0
  %RCX.i410 = bitcast %union.anon* %2180 to i64*
  %2181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2182 = getelementptr inbounds %struct.GPR, %struct.GPR* %2181, i32 0, i32 15
  %2183 = getelementptr inbounds %struct.Reg, %struct.Reg* %2182, i32 0, i32 0
  %RBP.i411 = bitcast %union.anon* %2183 to i64*
  %2184 = load i64, i64* %RBP.i411
  %2185 = sub i64 %2184, 24
  %2186 = load i64, i64* %PC.i409
  %2187 = add i64 %2186, 4
  store i64 %2187, i64* %PC.i409
  %2188 = inttoptr i64 %2185 to i32*
  %2189 = load i32, i32* %2188
  %2190 = sext i32 %2189 to i64
  store i64 %2190, i64* %RCX.i410, align 8
  store %struct.Memory* %loadMem_42fc04, %struct.Memory** %MEMORY
  %loadMem_42fc08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2192 = getelementptr inbounds %struct.GPR, %struct.GPR* %2191, i32 0, i32 33
  %2193 = getelementptr inbounds %struct.Reg, %struct.Reg* %2192, i32 0, i32 0
  %PC.i405 = bitcast %union.anon* %2193 to i64*
  %2194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2195 = getelementptr inbounds %struct.GPR, %struct.GPR* %2194, i32 0, i32 7
  %2196 = getelementptr inbounds %struct.Reg, %struct.Reg* %2195, i32 0, i32 0
  %2197 = bitcast %union.anon* %2196 to %struct.anon.2*
  %DL.i406 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2197, i32 0, i32 0
  %2198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2199 = getelementptr inbounds %struct.GPR, %struct.GPR* %2198, i32 0, i32 1
  %2200 = getelementptr inbounds %struct.Reg, %struct.Reg* %2199, i32 0, i32 0
  %RAX.i407 = bitcast %union.anon* %2200 to i64*
  %2201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2202 = getelementptr inbounds %struct.GPR, %struct.GPR* %2201, i32 0, i32 5
  %2203 = getelementptr inbounds %struct.Reg, %struct.Reg* %2202, i32 0, i32 0
  %RCX.i408 = bitcast %union.anon* %2203 to i64*
  %2204 = load i64, i64* %RAX.i407
  %2205 = load i64, i64* %RCX.i408
  %2206 = add i64 %2205, %2204
  %2207 = load i8, i8* %DL.i406
  %2208 = zext i8 %2207 to i64
  %2209 = load i64, i64* %PC.i405
  %2210 = add i64 %2209, 3
  store i64 %2210, i64* %PC.i405
  %2211 = inttoptr i64 %2206 to i8*
  store i8 %2207, i8* %2211
  store %struct.Memory* %loadMem_42fc08, %struct.Memory** %MEMORY
  br label %block_.L_42fc0b

block_.L_42fc0b:                                  ; preds = %block_42fbed, %block_.L_42fbde
  %loadMem_42fc0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2213 = getelementptr inbounds %struct.GPR, %struct.GPR* %2212, i32 0, i32 33
  %2214 = getelementptr inbounds %struct.Reg, %struct.Reg* %2213, i32 0, i32 0
  %PC.i402 = bitcast %union.anon* %2214 to i64*
  %2215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2216 = getelementptr inbounds %struct.GPR, %struct.GPR* %2215, i32 0, i32 1
  %2217 = getelementptr inbounds %struct.Reg, %struct.Reg* %2216, i32 0, i32 0
  %RAX.i403 = bitcast %union.anon* %2217 to i64*
  %2218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2219 = getelementptr inbounds %struct.GPR, %struct.GPR* %2218, i32 0, i32 15
  %2220 = getelementptr inbounds %struct.Reg, %struct.Reg* %2219, i32 0, i32 0
  %RBP.i404 = bitcast %union.anon* %2220 to i64*
  %2221 = load i64, i64* %RBP.i404
  %2222 = sub i64 %2221, 8
  %2223 = load i64, i64* %PC.i402
  %2224 = add i64 %2223, 4
  store i64 %2224, i64* %PC.i402
  %2225 = inttoptr i64 %2222 to i64*
  %2226 = load i64, i64* %2225
  store i64 %2226, i64* %RAX.i403, align 8
  store %struct.Memory* %loadMem_42fc0b, %struct.Memory** %MEMORY
  %loadMem_42fc0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2228 = getelementptr inbounds %struct.GPR, %struct.GPR* %2227, i32 0, i32 33
  %2229 = getelementptr inbounds %struct.Reg, %struct.Reg* %2228, i32 0, i32 0
  %PC.i400 = bitcast %union.anon* %2229 to i64*
  %2230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2231 = getelementptr inbounds %struct.GPR, %struct.GPR* %2230, i32 0, i32 1
  %2232 = getelementptr inbounds %struct.Reg, %struct.Reg* %2231, i32 0, i32 0
  %RAX.i401 = bitcast %union.anon* %2232 to i64*
  %2233 = load i64, i64* %RAX.i401
  %2234 = add i64 %2233, 80
  %2235 = load i64, i64* %PC.i400
  %2236 = add i64 %2235, 5
  store i64 %2236, i64* %PC.i400
  %2237 = inttoptr i64 %2234 to i64*
  %2238 = load i64, i64* %2237
  %2239 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2239, align 1
  %2240 = trunc i64 %2238 to i32
  %2241 = and i32 %2240, 255
  %2242 = call i32 @llvm.ctpop.i32(i32 %2241)
  %2243 = trunc i32 %2242 to i8
  %2244 = and i8 %2243, 1
  %2245 = xor i8 %2244, 1
  %2246 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2245, i8* %2246, align 1
  %2247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2247, align 1
  %2248 = icmp eq i64 %2238, 0
  %2249 = zext i1 %2248 to i8
  %2250 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2249, i8* %2250, align 1
  %2251 = lshr i64 %2238, 63
  %2252 = trunc i64 %2251 to i8
  %2253 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2252, i8* %2253, align 1
  %2254 = lshr i64 %2238, 63
  %2255 = xor i64 %2251, %2254
  %2256 = add i64 %2255, %2254
  %2257 = icmp eq i64 %2256, 2
  %2258 = zext i1 %2257 to i8
  %2259 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2258, i8* %2259, align 1
  store %struct.Memory* %loadMem_42fc0f, %struct.Memory** %MEMORY
  %loadMem_42fc14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2261 = getelementptr inbounds %struct.GPR, %struct.GPR* %2260, i32 0, i32 33
  %2262 = getelementptr inbounds %struct.Reg, %struct.Reg* %2261, i32 0, i32 0
  %PC.i399 = bitcast %union.anon* %2262 to i64*
  %2263 = load i64, i64* %PC.i399
  %2264 = add i64 %2263, 36
  %2265 = load i64, i64* %PC.i399
  %2266 = add i64 %2265, 6
  %2267 = load i64, i64* %PC.i399
  %2268 = add i64 %2267, 6
  store i64 %2268, i64* %PC.i399
  %2269 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2270 = load i8, i8* %2269, align 1
  store i8 %2270, i8* %BRANCH_TAKEN, align 1
  %2271 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2272 = icmp ne i8 %2270, 0
  %2273 = select i1 %2272, i64 %2264, i64 %2266
  store i64 %2273, i64* %2271, align 8
  store %struct.Memory* %loadMem_42fc14, %struct.Memory** %MEMORY
  %loadBr_42fc14 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42fc14 = icmp eq i8 %loadBr_42fc14, 1
  br i1 %cmpBr_42fc14, label %block_.L_42fc38, label %block_42fc1a

block_42fc1a:                                     ; preds = %block_.L_42fc0b
  %loadMem_42fc1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2275 = getelementptr inbounds %struct.GPR, %struct.GPR* %2274, i32 0, i32 33
  %2276 = getelementptr inbounds %struct.Reg, %struct.Reg* %2275, i32 0, i32 0
  %PC.i396 = bitcast %union.anon* %2276 to i64*
  %2277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2278 = getelementptr inbounds %struct.GPR, %struct.GPR* %2277, i32 0, i32 1
  %2279 = getelementptr inbounds %struct.Reg, %struct.Reg* %2278, i32 0, i32 0
  %RAX.i397 = bitcast %union.anon* %2279 to i64*
  %2280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2281 = getelementptr inbounds %struct.GPR, %struct.GPR* %2280, i32 0, i32 15
  %2282 = getelementptr inbounds %struct.Reg, %struct.Reg* %2281, i32 0, i32 0
  %RBP.i398 = bitcast %union.anon* %2282 to i64*
  %2283 = load i64, i64* %RBP.i398
  %2284 = sub i64 %2283, 8
  %2285 = load i64, i64* %PC.i396
  %2286 = add i64 %2285, 4
  store i64 %2286, i64* %PC.i396
  %2287 = inttoptr i64 %2284 to i64*
  %2288 = load i64, i64* %2287
  store i64 %2288, i64* %RAX.i397, align 8
  store %struct.Memory* %loadMem_42fc1a, %struct.Memory** %MEMORY
  %loadMem_42fc1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2290 = getelementptr inbounds %struct.GPR, %struct.GPR* %2289, i32 0, i32 33
  %2291 = getelementptr inbounds %struct.Reg, %struct.Reg* %2290, i32 0, i32 0
  %PC.i394 = bitcast %union.anon* %2291 to i64*
  %2292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2293 = getelementptr inbounds %struct.GPR, %struct.GPR* %2292, i32 0, i32 1
  %2294 = getelementptr inbounds %struct.Reg, %struct.Reg* %2293, i32 0, i32 0
  %RAX.i395 = bitcast %union.anon* %2294 to i64*
  %2295 = load i64, i64* %RAX.i395
  %2296 = add i64 %2295, 80
  %2297 = load i64, i64* %PC.i394
  %2298 = add i64 %2297, 4
  store i64 %2298, i64* %PC.i394
  %2299 = inttoptr i64 %2296 to i64*
  %2300 = load i64, i64* %2299
  store i64 %2300, i64* %RAX.i395, align 8
  store %struct.Memory* %loadMem_42fc1e, %struct.Memory** %MEMORY
  %loadMem_42fc22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2302 = getelementptr inbounds %struct.GPR, %struct.GPR* %2301, i32 0, i32 33
  %2303 = getelementptr inbounds %struct.Reg, %struct.Reg* %2302, i32 0, i32 0
  %PC.i391 = bitcast %union.anon* %2303 to i64*
  %2304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2305 = getelementptr inbounds %struct.GPR, %struct.GPR* %2304, i32 0, i32 5
  %2306 = getelementptr inbounds %struct.Reg, %struct.Reg* %2305, i32 0, i32 0
  %RCX.i392 = bitcast %union.anon* %2306 to i64*
  %2307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2308 = getelementptr inbounds %struct.GPR, %struct.GPR* %2307, i32 0, i32 15
  %2309 = getelementptr inbounds %struct.Reg, %struct.Reg* %2308, i32 0, i32 0
  %RBP.i393 = bitcast %union.anon* %2309 to i64*
  %2310 = load i64, i64* %RBP.i393
  %2311 = sub i64 %2310, 20
  %2312 = load i64, i64* %PC.i391
  %2313 = add i64 %2312, 4
  store i64 %2313, i64* %PC.i391
  %2314 = inttoptr i64 %2311 to i32*
  %2315 = load i32, i32* %2314
  %2316 = sext i32 %2315 to i64
  store i64 %2316, i64* %RCX.i392, align 8
  store %struct.Memory* %loadMem_42fc22, %struct.Memory** %MEMORY
  %loadMem_42fc26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2318 = getelementptr inbounds %struct.GPR, %struct.GPR* %2317, i32 0, i32 33
  %2319 = getelementptr inbounds %struct.Reg, %struct.Reg* %2318, i32 0, i32 0
  %PC.i387 = bitcast %union.anon* %2319 to i64*
  %2320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2321 = getelementptr inbounds %struct.GPR, %struct.GPR* %2320, i32 0, i32 7
  %2322 = getelementptr inbounds %struct.Reg, %struct.Reg* %2321, i32 0, i32 0
  %2323 = bitcast %union.anon* %2322 to %struct.anon.2*
  %DL.i388 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2323, i32 0, i32 0
  %2324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2325 = getelementptr inbounds %struct.GPR, %struct.GPR* %2324, i32 0, i32 1
  %2326 = getelementptr inbounds %struct.Reg, %struct.Reg* %2325, i32 0, i32 0
  %RAX.i389 = bitcast %union.anon* %2326 to i64*
  %2327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2328 = getelementptr inbounds %struct.GPR, %struct.GPR* %2327, i32 0, i32 5
  %2329 = getelementptr inbounds %struct.Reg, %struct.Reg* %2328, i32 0, i32 0
  %RCX.i390 = bitcast %union.anon* %2329 to i64*
  %2330 = load i64, i64* %RAX.i389
  %2331 = load i64, i64* %RCX.i390
  %2332 = add i64 %2331, %2330
  %2333 = load i64, i64* %PC.i387
  %2334 = add i64 %2333, 3
  store i64 %2334, i64* %PC.i387
  %2335 = inttoptr i64 %2332 to i8*
  %2336 = load i8, i8* %2335
  store i8 %2336, i8* %DL.i388, align 1
  store %struct.Memory* %loadMem_42fc26, %struct.Memory** %MEMORY
  %loadMem_42fc29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2338 = getelementptr inbounds %struct.GPR, %struct.GPR* %2337, i32 0, i32 33
  %2339 = getelementptr inbounds %struct.Reg, %struct.Reg* %2338, i32 0, i32 0
  %PC.i384 = bitcast %union.anon* %2339 to i64*
  %2340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2341 = getelementptr inbounds %struct.GPR, %struct.GPR* %2340, i32 0, i32 1
  %2342 = getelementptr inbounds %struct.Reg, %struct.Reg* %2341, i32 0, i32 0
  %RAX.i385 = bitcast %union.anon* %2342 to i64*
  %2343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2344 = getelementptr inbounds %struct.GPR, %struct.GPR* %2343, i32 0, i32 15
  %2345 = getelementptr inbounds %struct.Reg, %struct.Reg* %2344, i32 0, i32 0
  %RBP.i386 = bitcast %union.anon* %2345 to i64*
  %2346 = load i64, i64* %RBP.i386
  %2347 = sub i64 %2346, 8
  %2348 = load i64, i64* %PC.i384
  %2349 = add i64 %2348, 4
  store i64 %2349, i64* %PC.i384
  %2350 = inttoptr i64 %2347 to i64*
  %2351 = load i64, i64* %2350
  store i64 %2351, i64* %RAX.i385, align 8
  store %struct.Memory* %loadMem_42fc29, %struct.Memory** %MEMORY
  %loadMem_42fc2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2353 = getelementptr inbounds %struct.GPR, %struct.GPR* %2352, i32 0, i32 33
  %2354 = getelementptr inbounds %struct.Reg, %struct.Reg* %2353, i32 0, i32 0
  %PC.i382 = bitcast %union.anon* %2354 to i64*
  %2355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2356 = getelementptr inbounds %struct.GPR, %struct.GPR* %2355, i32 0, i32 1
  %2357 = getelementptr inbounds %struct.Reg, %struct.Reg* %2356, i32 0, i32 0
  %RAX.i383 = bitcast %union.anon* %2357 to i64*
  %2358 = load i64, i64* %RAX.i383
  %2359 = add i64 %2358, 80
  %2360 = load i64, i64* %PC.i382
  %2361 = add i64 %2360, 4
  store i64 %2361, i64* %PC.i382
  %2362 = inttoptr i64 %2359 to i64*
  %2363 = load i64, i64* %2362
  store i64 %2363, i64* %RAX.i383, align 8
  store %struct.Memory* %loadMem_42fc2d, %struct.Memory** %MEMORY
  %loadMem_42fc31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2365 = getelementptr inbounds %struct.GPR, %struct.GPR* %2364, i32 0, i32 33
  %2366 = getelementptr inbounds %struct.Reg, %struct.Reg* %2365, i32 0, i32 0
  %PC.i379 = bitcast %union.anon* %2366 to i64*
  %2367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2368 = getelementptr inbounds %struct.GPR, %struct.GPR* %2367, i32 0, i32 5
  %2369 = getelementptr inbounds %struct.Reg, %struct.Reg* %2368, i32 0, i32 0
  %RCX.i380 = bitcast %union.anon* %2369 to i64*
  %2370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2371 = getelementptr inbounds %struct.GPR, %struct.GPR* %2370, i32 0, i32 15
  %2372 = getelementptr inbounds %struct.Reg, %struct.Reg* %2371, i32 0, i32 0
  %RBP.i381 = bitcast %union.anon* %2372 to i64*
  %2373 = load i64, i64* %RBP.i381
  %2374 = sub i64 %2373, 24
  %2375 = load i64, i64* %PC.i379
  %2376 = add i64 %2375, 4
  store i64 %2376, i64* %PC.i379
  %2377 = inttoptr i64 %2374 to i32*
  %2378 = load i32, i32* %2377
  %2379 = sext i32 %2378 to i64
  store i64 %2379, i64* %RCX.i380, align 8
  store %struct.Memory* %loadMem_42fc31, %struct.Memory** %MEMORY
  %loadMem_42fc35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2381 = getelementptr inbounds %struct.GPR, %struct.GPR* %2380, i32 0, i32 33
  %2382 = getelementptr inbounds %struct.Reg, %struct.Reg* %2381, i32 0, i32 0
  %PC.i375 = bitcast %union.anon* %2382 to i64*
  %2383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2384 = getelementptr inbounds %struct.GPR, %struct.GPR* %2383, i32 0, i32 7
  %2385 = getelementptr inbounds %struct.Reg, %struct.Reg* %2384, i32 0, i32 0
  %2386 = bitcast %union.anon* %2385 to %struct.anon.2*
  %DL.i376 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2386, i32 0, i32 0
  %2387 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2388 = getelementptr inbounds %struct.GPR, %struct.GPR* %2387, i32 0, i32 1
  %2389 = getelementptr inbounds %struct.Reg, %struct.Reg* %2388, i32 0, i32 0
  %RAX.i377 = bitcast %union.anon* %2389 to i64*
  %2390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2391 = getelementptr inbounds %struct.GPR, %struct.GPR* %2390, i32 0, i32 5
  %2392 = getelementptr inbounds %struct.Reg, %struct.Reg* %2391, i32 0, i32 0
  %RCX.i378 = bitcast %union.anon* %2392 to i64*
  %2393 = load i64, i64* %RAX.i377
  %2394 = load i64, i64* %RCX.i378
  %2395 = add i64 %2394, %2393
  %2396 = load i8, i8* %DL.i376
  %2397 = zext i8 %2396 to i64
  %2398 = load i64, i64* %PC.i375
  %2399 = add i64 %2398, 3
  store i64 %2399, i64* %PC.i375
  %2400 = inttoptr i64 %2395 to i8*
  store i8 %2396, i8* %2400
  store %struct.Memory* %loadMem_42fc35, %struct.Memory** %MEMORY
  br label %block_.L_42fc38

block_.L_42fc38:                                  ; preds = %block_42fc1a, %block_.L_42fc0b
  %loadMem_42fc38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2402 = getelementptr inbounds %struct.GPR, %struct.GPR* %2401, i32 0, i32 33
  %2403 = getelementptr inbounds %struct.Reg, %struct.Reg* %2402, i32 0, i32 0
  %PC.i372 = bitcast %union.anon* %2403 to i64*
  %2404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2405 = getelementptr inbounds %struct.GPR, %struct.GPR* %2404, i32 0, i32 1
  %2406 = getelementptr inbounds %struct.Reg, %struct.Reg* %2405, i32 0, i32 0
  %RAX.i373 = bitcast %union.anon* %2406 to i64*
  %2407 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2408 = getelementptr inbounds %struct.GPR, %struct.GPR* %2407, i32 0, i32 15
  %2409 = getelementptr inbounds %struct.Reg, %struct.Reg* %2408, i32 0, i32 0
  %RBP.i374 = bitcast %union.anon* %2409 to i64*
  %2410 = load i64, i64* %RBP.i374
  %2411 = sub i64 %2410, 8
  %2412 = load i64, i64* %PC.i372
  %2413 = add i64 %2412, 4
  store i64 %2413, i64* %PC.i372
  %2414 = inttoptr i64 %2411 to i64*
  %2415 = load i64, i64* %2414
  store i64 %2415, i64* %RAX.i373, align 8
  store %struct.Memory* %loadMem_42fc38, %struct.Memory** %MEMORY
  %loadMem_42fc3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2416 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2417 = getelementptr inbounds %struct.GPR, %struct.GPR* %2416, i32 0, i32 33
  %2418 = getelementptr inbounds %struct.Reg, %struct.Reg* %2417, i32 0, i32 0
  %PC.i370 = bitcast %union.anon* %2418 to i64*
  %2419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2420 = getelementptr inbounds %struct.GPR, %struct.GPR* %2419, i32 0, i32 1
  %2421 = getelementptr inbounds %struct.Reg, %struct.Reg* %2420, i32 0, i32 0
  %RAX.i371 = bitcast %union.anon* %2421 to i64*
  %2422 = load i64, i64* %RAX.i371
  %2423 = add i64 %2422, 88
  %2424 = load i64, i64* %PC.i370
  %2425 = add i64 %2424, 5
  store i64 %2425, i64* %PC.i370
  %2426 = inttoptr i64 %2423 to i64*
  %2427 = load i64, i64* %2426
  %2428 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2428, align 1
  %2429 = trunc i64 %2427 to i32
  %2430 = and i32 %2429, 255
  %2431 = call i32 @llvm.ctpop.i32(i32 %2430)
  %2432 = trunc i32 %2431 to i8
  %2433 = and i8 %2432, 1
  %2434 = xor i8 %2433, 1
  %2435 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2434, i8* %2435, align 1
  %2436 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2436, align 1
  %2437 = icmp eq i64 %2427, 0
  %2438 = zext i1 %2437 to i8
  %2439 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2438, i8* %2439, align 1
  %2440 = lshr i64 %2427, 63
  %2441 = trunc i64 %2440 to i8
  %2442 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2441, i8* %2442, align 1
  %2443 = lshr i64 %2427, 63
  %2444 = xor i64 %2440, %2443
  %2445 = add i64 %2444, %2443
  %2446 = icmp eq i64 %2445, 2
  %2447 = zext i1 %2446 to i8
  %2448 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2447, i8* %2448, align 1
  store %struct.Memory* %loadMem_42fc3c, %struct.Memory** %MEMORY
  %loadMem_42fc41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2450 = getelementptr inbounds %struct.GPR, %struct.GPR* %2449, i32 0, i32 33
  %2451 = getelementptr inbounds %struct.Reg, %struct.Reg* %2450, i32 0, i32 0
  %PC.i369 = bitcast %union.anon* %2451 to i64*
  %2452 = load i64, i64* %PC.i369
  %2453 = add i64 %2452, 36
  %2454 = load i64, i64* %PC.i369
  %2455 = add i64 %2454, 6
  %2456 = load i64, i64* %PC.i369
  %2457 = add i64 %2456, 6
  store i64 %2457, i64* %PC.i369
  %2458 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2459 = load i8, i8* %2458, align 1
  store i8 %2459, i8* %BRANCH_TAKEN, align 1
  %2460 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2461 = icmp ne i8 %2459, 0
  %2462 = select i1 %2461, i64 %2453, i64 %2455
  store i64 %2462, i64* %2460, align 8
  store %struct.Memory* %loadMem_42fc41, %struct.Memory** %MEMORY
  %loadBr_42fc41 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42fc41 = icmp eq i8 %loadBr_42fc41, 1
  br i1 %cmpBr_42fc41, label %block_.L_42fc65, label %block_42fc47

block_42fc47:                                     ; preds = %block_.L_42fc38
  %loadMem_42fc47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2463 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2464 = getelementptr inbounds %struct.GPR, %struct.GPR* %2463, i32 0, i32 33
  %2465 = getelementptr inbounds %struct.Reg, %struct.Reg* %2464, i32 0, i32 0
  %PC.i366 = bitcast %union.anon* %2465 to i64*
  %2466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2467 = getelementptr inbounds %struct.GPR, %struct.GPR* %2466, i32 0, i32 1
  %2468 = getelementptr inbounds %struct.Reg, %struct.Reg* %2467, i32 0, i32 0
  %RAX.i367 = bitcast %union.anon* %2468 to i64*
  %2469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2470 = getelementptr inbounds %struct.GPR, %struct.GPR* %2469, i32 0, i32 15
  %2471 = getelementptr inbounds %struct.Reg, %struct.Reg* %2470, i32 0, i32 0
  %RBP.i368 = bitcast %union.anon* %2471 to i64*
  %2472 = load i64, i64* %RBP.i368
  %2473 = sub i64 %2472, 8
  %2474 = load i64, i64* %PC.i366
  %2475 = add i64 %2474, 4
  store i64 %2475, i64* %PC.i366
  %2476 = inttoptr i64 %2473 to i64*
  %2477 = load i64, i64* %2476
  store i64 %2477, i64* %RAX.i367, align 8
  store %struct.Memory* %loadMem_42fc47, %struct.Memory** %MEMORY
  %loadMem_42fc4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2479 = getelementptr inbounds %struct.GPR, %struct.GPR* %2478, i32 0, i32 33
  %2480 = getelementptr inbounds %struct.Reg, %struct.Reg* %2479, i32 0, i32 0
  %PC.i364 = bitcast %union.anon* %2480 to i64*
  %2481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2482 = getelementptr inbounds %struct.GPR, %struct.GPR* %2481, i32 0, i32 1
  %2483 = getelementptr inbounds %struct.Reg, %struct.Reg* %2482, i32 0, i32 0
  %RAX.i365 = bitcast %union.anon* %2483 to i64*
  %2484 = load i64, i64* %RAX.i365
  %2485 = add i64 %2484, 88
  %2486 = load i64, i64* %PC.i364
  %2487 = add i64 %2486, 4
  store i64 %2487, i64* %PC.i364
  %2488 = inttoptr i64 %2485 to i64*
  %2489 = load i64, i64* %2488
  store i64 %2489, i64* %RAX.i365, align 8
  store %struct.Memory* %loadMem_42fc4b, %struct.Memory** %MEMORY
  %loadMem_42fc4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2491 = getelementptr inbounds %struct.GPR, %struct.GPR* %2490, i32 0, i32 33
  %2492 = getelementptr inbounds %struct.Reg, %struct.Reg* %2491, i32 0, i32 0
  %PC.i361 = bitcast %union.anon* %2492 to i64*
  %2493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2494 = getelementptr inbounds %struct.GPR, %struct.GPR* %2493, i32 0, i32 5
  %2495 = getelementptr inbounds %struct.Reg, %struct.Reg* %2494, i32 0, i32 0
  %RCX.i362 = bitcast %union.anon* %2495 to i64*
  %2496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2497 = getelementptr inbounds %struct.GPR, %struct.GPR* %2496, i32 0, i32 15
  %2498 = getelementptr inbounds %struct.Reg, %struct.Reg* %2497, i32 0, i32 0
  %RBP.i363 = bitcast %union.anon* %2498 to i64*
  %2499 = load i64, i64* %RBP.i363
  %2500 = sub i64 %2499, 20
  %2501 = load i64, i64* %PC.i361
  %2502 = add i64 %2501, 4
  store i64 %2502, i64* %PC.i361
  %2503 = inttoptr i64 %2500 to i32*
  %2504 = load i32, i32* %2503
  %2505 = sext i32 %2504 to i64
  store i64 %2505, i64* %RCX.i362, align 8
  store %struct.Memory* %loadMem_42fc4f, %struct.Memory** %MEMORY
  %loadMem_42fc53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2507 = getelementptr inbounds %struct.GPR, %struct.GPR* %2506, i32 0, i32 33
  %2508 = getelementptr inbounds %struct.Reg, %struct.Reg* %2507, i32 0, i32 0
  %PC.i357 = bitcast %union.anon* %2508 to i64*
  %2509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2510 = getelementptr inbounds %struct.GPR, %struct.GPR* %2509, i32 0, i32 7
  %2511 = getelementptr inbounds %struct.Reg, %struct.Reg* %2510, i32 0, i32 0
  %2512 = bitcast %union.anon* %2511 to %struct.anon.2*
  %DL.i358 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2512, i32 0, i32 0
  %2513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2514 = getelementptr inbounds %struct.GPR, %struct.GPR* %2513, i32 0, i32 1
  %2515 = getelementptr inbounds %struct.Reg, %struct.Reg* %2514, i32 0, i32 0
  %RAX.i359 = bitcast %union.anon* %2515 to i64*
  %2516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2517 = getelementptr inbounds %struct.GPR, %struct.GPR* %2516, i32 0, i32 5
  %2518 = getelementptr inbounds %struct.Reg, %struct.Reg* %2517, i32 0, i32 0
  %RCX.i360 = bitcast %union.anon* %2518 to i64*
  %2519 = load i64, i64* %RAX.i359
  %2520 = load i64, i64* %RCX.i360
  %2521 = add i64 %2520, %2519
  %2522 = load i64, i64* %PC.i357
  %2523 = add i64 %2522, 3
  store i64 %2523, i64* %PC.i357
  %2524 = inttoptr i64 %2521 to i8*
  %2525 = load i8, i8* %2524
  store i8 %2525, i8* %DL.i358, align 1
  store %struct.Memory* %loadMem_42fc53, %struct.Memory** %MEMORY
  %loadMem_42fc56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2527 = getelementptr inbounds %struct.GPR, %struct.GPR* %2526, i32 0, i32 33
  %2528 = getelementptr inbounds %struct.Reg, %struct.Reg* %2527, i32 0, i32 0
  %PC.i354 = bitcast %union.anon* %2528 to i64*
  %2529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2530 = getelementptr inbounds %struct.GPR, %struct.GPR* %2529, i32 0, i32 1
  %2531 = getelementptr inbounds %struct.Reg, %struct.Reg* %2530, i32 0, i32 0
  %RAX.i355 = bitcast %union.anon* %2531 to i64*
  %2532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2533 = getelementptr inbounds %struct.GPR, %struct.GPR* %2532, i32 0, i32 15
  %2534 = getelementptr inbounds %struct.Reg, %struct.Reg* %2533, i32 0, i32 0
  %RBP.i356 = bitcast %union.anon* %2534 to i64*
  %2535 = load i64, i64* %RBP.i356
  %2536 = sub i64 %2535, 8
  %2537 = load i64, i64* %PC.i354
  %2538 = add i64 %2537, 4
  store i64 %2538, i64* %PC.i354
  %2539 = inttoptr i64 %2536 to i64*
  %2540 = load i64, i64* %2539
  store i64 %2540, i64* %RAX.i355, align 8
  store %struct.Memory* %loadMem_42fc56, %struct.Memory** %MEMORY
  %loadMem_42fc5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2542 = getelementptr inbounds %struct.GPR, %struct.GPR* %2541, i32 0, i32 33
  %2543 = getelementptr inbounds %struct.Reg, %struct.Reg* %2542, i32 0, i32 0
  %PC.i352 = bitcast %union.anon* %2543 to i64*
  %2544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2545 = getelementptr inbounds %struct.GPR, %struct.GPR* %2544, i32 0, i32 1
  %2546 = getelementptr inbounds %struct.Reg, %struct.Reg* %2545, i32 0, i32 0
  %RAX.i353 = bitcast %union.anon* %2546 to i64*
  %2547 = load i64, i64* %RAX.i353
  %2548 = add i64 %2547, 88
  %2549 = load i64, i64* %PC.i352
  %2550 = add i64 %2549, 4
  store i64 %2550, i64* %PC.i352
  %2551 = inttoptr i64 %2548 to i64*
  %2552 = load i64, i64* %2551
  store i64 %2552, i64* %RAX.i353, align 8
  store %struct.Memory* %loadMem_42fc5a, %struct.Memory** %MEMORY
  %loadMem_42fc5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2553 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2554 = getelementptr inbounds %struct.GPR, %struct.GPR* %2553, i32 0, i32 33
  %2555 = getelementptr inbounds %struct.Reg, %struct.Reg* %2554, i32 0, i32 0
  %PC.i349 = bitcast %union.anon* %2555 to i64*
  %2556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2557 = getelementptr inbounds %struct.GPR, %struct.GPR* %2556, i32 0, i32 5
  %2558 = getelementptr inbounds %struct.Reg, %struct.Reg* %2557, i32 0, i32 0
  %RCX.i350 = bitcast %union.anon* %2558 to i64*
  %2559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2560 = getelementptr inbounds %struct.GPR, %struct.GPR* %2559, i32 0, i32 15
  %2561 = getelementptr inbounds %struct.Reg, %struct.Reg* %2560, i32 0, i32 0
  %RBP.i351 = bitcast %union.anon* %2561 to i64*
  %2562 = load i64, i64* %RBP.i351
  %2563 = sub i64 %2562, 24
  %2564 = load i64, i64* %PC.i349
  %2565 = add i64 %2564, 4
  store i64 %2565, i64* %PC.i349
  %2566 = inttoptr i64 %2563 to i32*
  %2567 = load i32, i32* %2566
  %2568 = sext i32 %2567 to i64
  store i64 %2568, i64* %RCX.i350, align 8
  store %struct.Memory* %loadMem_42fc5e, %struct.Memory** %MEMORY
  %loadMem_42fc62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2569 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2570 = getelementptr inbounds %struct.GPR, %struct.GPR* %2569, i32 0, i32 33
  %2571 = getelementptr inbounds %struct.Reg, %struct.Reg* %2570, i32 0, i32 0
  %PC.i345 = bitcast %union.anon* %2571 to i64*
  %2572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2573 = getelementptr inbounds %struct.GPR, %struct.GPR* %2572, i32 0, i32 7
  %2574 = getelementptr inbounds %struct.Reg, %struct.Reg* %2573, i32 0, i32 0
  %2575 = bitcast %union.anon* %2574 to %struct.anon.2*
  %DL.i346 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2575, i32 0, i32 0
  %2576 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2577 = getelementptr inbounds %struct.GPR, %struct.GPR* %2576, i32 0, i32 1
  %2578 = getelementptr inbounds %struct.Reg, %struct.Reg* %2577, i32 0, i32 0
  %RAX.i347 = bitcast %union.anon* %2578 to i64*
  %2579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2580 = getelementptr inbounds %struct.GPR, %struct.GPR* %2579, i32 0, i32 5
  %2581 = getelementptr inbounds %struct.Reg, %struct.Reg* %2580, i32 0, i32 0
  %RCX.i348 = bitcast %union.anon* %2581 to i64*
  %2582 = load i64, i64* %RAX.i347
  %2583 = load i64, i64* %RCX.i348
  %2584 = add i64 %2583, %2582
  %2585 = load i8, i8* %DL.i346
  %2586 = zext i8 %2585 to i64
  %2587 = load i64, i64* %PC.i345
  %2588 = add i64 %2587, 3
  store i64 %2588, i64* %PC.i345
  %2589 = inttoptr i64 %2584 to i8*
  store i8 %2585, i8* %2589
  store %struct.Memory* %loadMem_42fc62, %struct.Memory** %MEMORY
  br label %block_.L_42fc65

block_.L_42fc65:                                  ; preds = %block_42fc47, %block_.L_42fc38
  %loadMem_42fc65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2591 = getelementptr inbounds %struct.GPR, %struct.GPR* %2590, i32 0, i32 33
  %2592 = getelementptr inbounds %struct.Reg, %struct.Reg* %2591, i32 0, i32 0
  %PC.i343 = bitcast %union.anon* %2592 to i64*
  %2593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2594 = getelementptr inbounds %struct.GPR, %struct.GPR* %2593, i32 0, i32 15
  %2595 = getelementptr inbounds %struct.Reg, %struct.Reg* %2594, i32 0, i32 0
  %RBP.i344 = bitcast %union.anon* %2595 to i64*
  %2596 = load i64, i64* %RBP.i344
  %2597 = sub i64 %2596, 32
  %2598 = load i64, i64* %PC.i343
  %2599 = add i64 %2598, 7
  store i64 %2599, i64* %PC.i343
  %2600 = inttoptr i64 %2597 to i32*
  store i32 0, i32* %2600
  store %struct.Memory* %loadMem_42fc65, %struct.Memory** %MEMORY
  br label %block_.L_42fc6c

block_.L_42fc6c:                                  ; preds = %block_42fc7f, %block_.L_42fc65
  %loadMem_42fc6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2602 = getelementptr inbounds %struct.GPR, %struct.GPR* %2601, i32 0, i32 33
  %2603 = getelementptr inbounds %struct.Reg, %struct.Reg* %2602, i32 0, i32 0
  %PC.i340 = bitcast %union.anon* %2603 to i64*
  %2604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2605 = getelementptr inbounds %struct.GPR, %struct.GPR* %2604, i32 0, i32 1
  %2606 = getelementptr inbounds %struct.Reg, %struct.Reg* %2605, i32 0, i32 0
  %RAX.i341 = bitcast %union.anon* %2606 to i64*
  %2607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2608 = getelementptr inbounds %struct.GPR, %struct.GPR* %2607, i32 0, i32 15
  %2609 = getelementptr inbounds %struct.Reg, %struct.Reg* %2608, i32 0, i32 0
  %RBP.i342 = bitcast %union.anon* %2609 to i64*
  %2610 = load i64, i64* %RBP.i342
  %2611 = sub i64 %2610, 32
  %2612 = load i64, i64* %PC.i340
  %2613 = add i64 %2612, 3
  store i64 %2613, i64* %PC.i340
  %2614 = inttoptr i64 %2611 to i32*
  %2615 = load i32, i32* %2614
  %2616 = zext i32 %2615 to i64
  store i64 %2616, i64* %RAX.i341, align 8
  store %struct.Memory* %loadMem_42fc6c, %struct.Memory** %MEMORY
  %loadMem_42fc6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2617 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2618 = getelementptr inbounds %struct.GPR, %struct.GPR* %2617, i32 0, i32 33
  %2619 = getelementptr inbounds %struct.Reg, %struct.Reg* %2618, i32 0, i32 0
  %PC.i337 = bitcast %union.anon* %2619 to i64*
  %2620 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2621 = getelementptr inbounds %struct.GPR, %struct.GPR* %2620, i32 0, i32 5
  %2622 = getelementptr inbounds %struct.Reg, %struct.Reg* %2621, i32 0, i32 0
  %RCX.i338 = bitcast %union.anon* %2622 to i64*
  %2623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2624 = getelementptr inbounds %struct.GPR, %struct.GPR* %2623, i32 0, i32 15
  %2625 = getelementptr inbounds %struct.Reg, %struct.Reg* %2624, i32 0, i32 0
  %RBP.i339 = bitcast %union.anon* %2625 to i64*
  %2626 = load i64, i64* %RBP.i339
  %2627 = sub i64 %2626, 8
  %2628 = load i64, i64* %PC.i337
  %2629 = add i64 %2628, 4
  store i64 %2629, i64* %PC.i337
  %2630 = inttoptr i64 %2627 to i64*
  %2631 = load i64, i64* %2630
  store i64 %2631, i64* %RCX.i338, align 8
  store %struct.Memory* %loadMem_42fc6f, %struct.Memory** %MEMORY
  %loadMem_42fc73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2632 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2633 = getelementptr inbounds %struct.GPR, %struct.GPR* %2632, i32 0, i32 33
  %2634 = getelementptr inbounds %struct.Reg, %struct.Reg* %2633, i32 0, i32 0
  %PC.i334 = bitcast %union.anon* %2634 to i64*
  %2635 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2636 = getelementptr inbounds %struct.GPR, %struct.GPR* %2635, i32 0, i32 1
  %2637 = getelementptr inbounds %struct.Reg, %struct.Reg* %2636, i32 0, i32 0
  %EAX.i335 = bitcast %union.anon* %2637 to i32*
  %2638 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2639 = getelementptr inbounds %struct.GPR, %struct.GPR* %2638, i32 0, i32 5
  %2640 = getelementptr inbounds %struct.Reg, %struct.Reg* %2639, i32 0, i32 0
  %RCX.i336 = bitcast %union.anon* %2640 to i64*
  %2641 = load i32, i32* %EAX.i335
  %2642 = zext i32 %2641 to i64
  %2643 = load i64, i64* %RCX.i336
  %2644 = add i64 %2643, 272
  %2645 = load i64, i64* %PC.i334
  %2646 = add i64 %2645, 6
  store i64 %2646, i64* %PC.i334
  %2647 = inttoptr i64 %2644 to i32*
  %2648 = load i32, i32* %2647
  %2649 = sub i32 %2641, %2648
  %2650 = icmp ult i32 %2641, %2648
  %2651 = zext i1 %2650 to i8
  %2652 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2651, i8* %2652, align 1
  %2653 = and i32 %2649, 255
  %2654 = call i32 @llvm.ctpop.i32(i32 %2653)
  %2655 = trunc i32 %2654 to i8
  %2656 = and i8 %2655, 1
  %2657 = xor i8 %2656, 1
  %2658 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2657, i8* %2658, align 1
  %2659 = xor i32 %2648, %2641
  %2660 = xor i32 %2659, %2649
  %2661 = lshr i32 %2660, 4
  %2662 = trunc i32 %2661 to i8
  %2663 = and i8 %2662, 1
  %2664 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2663, i8* %2664, align 1
  %2665 = icmp eq i32 %2649, 0
  %2666 = zext i1 %2665 to i8
  %2667 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2666, i8* %2667, align 1
  %2668 = lshr i32 %2649, 31
  %2669 = trunc i32 %2668 to i8
  %2670 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2669, i8* %2670, align 1
  %2671 = lshr i32 %2641, 31
  %2672 = lshr i32 %2648, 31
  %2673 = xor i32 %2672, %2671
  %2674 = xor i32 %2668, %2671
  %2675 = add i32 %2674, %2673
  %2676 = icmp eq i32 %2675, 2
  %2677 = zext i1 %2676 to i8
  %2678 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2677, i8* %2678, align 1
  store %struct.Memory* %loadMem_42fc73, %struct.Memory** %MEMORY
  %loadMem_42fc79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2679 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2680 = getelementptr inbounds %struct.GPR, %struct.GPR* %2679, i32 0, i32 33
  %2681 = getelementptr inbounds %struct.Reg, %struct.Reg* %2680, i32 0, i32 0
  %PC.i333 = bitcast %union.anon* %2681 to i64*
  %2682 = load i64, i64* %PC.i333
  %2683 = add i64 %2682, 72
  %2684 = load i64, i64* %PC.i333
  %2685 = add i64 %2684, 6
  %2686 = load i64, i64* %PC.i333
  %2687 = add i64 %2686, 6
  store i64 %2687, i64* %PC.i333
  %2688 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2689 = load i8, i8* %2688, align 1
  %2690 = icmp ne i8 %2689, 0
  %2691 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2692 = load i8, i8* %2691, align 1
  %2693 = icmp ne i8 %2692, 0
  %2694 = xor i1 %2690, %2693
  %2695 = xor i1 %2694, true
  %2696 = zext i1 %2695 to i8
  store i8 %2696, i8* %BRANCH_TAKEN, align 1
  %2697 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2698 = select i1 %2694, i64 %2685, i64 %2683
  store i64 %2698, i64* %2697, align 8
  store %struct.Memory* %loadMem_42fc79, %struct.Memory** %MEMORY
  %loadBr_42fc79 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42fc79 = icmp eq i8 %loadBr_42fc79, 1
  br i1 %cmpBr_42fc79, label %block_.L_42fcc1, label %block_42fc7f

block_42fc7f:                                     ; preds = %block_.L_42fc6c
  %loadMem_42fc7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2700 = getelementptr inbounds %struct.GPR, %struct.GPR* %2699, i32 0, i32 33
  %2701 = getelementptr inbounds %struct.Reg, %struct.Reg* %2700, i32 0, i32 0
  %PC.i330 = bitcast %union.anon* %2701 to i64*
  %2702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2703 = getelementptr inbounds %struct.GPR, %struct.GPR* %2702, i32 0, i32 1
  %2704 = getelementptr inbounds %struct.Reg, %struct.Reg* %2703, i32 0, i32 0
  %RAX.i331 = bitcast %union.anon* %2704 to i64*
  %2705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2706 = getelementptr inbounds %struct.GPR, %struct.GPR* %2705, i32 0, i32 15
  %2707 = getelementptr inbounds %struct.Reg, %struct.Reg* %2706, i32 0, i32 0
  %RBP.i332 = bitcast %union.anon* %2707 to i64*
  %2708 = load i64, i64* %RBP.i332
  %2709 = sub i64 %2708, 8
  %2710 = load i64, i64* %PC.i330
  %2711 = add i64 %2710, 4
  store i64 %2711, i64* %PC.i330
  %2712 = inttoptr i64 %2709 to i64*
  %2713 = load i64, i64* %2712
  store i64 %2713, i64* %RAX.i331, align 8
  store %struct.Memory* %loadMem_42fc7f, %struct.Memory** %MEMORY
  %loadMem_42fc83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2715 = getelementptr inbounds %struct.GPR, %struct.GPR* %2714, i32 0, i32 33
  %2716 = getelementptr inbounds %struct.Reg, %struct.Reg* %2715, i32 0, i32 0
  %PC.i328 = bitcast %union.anon* %2716 to i64*
  %2717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2718 = getelementptr inbounds %struct.GPR, %struct.GPR* %2717, i32 0, i32 1
  %2719 = getelementptr inbounds %struct.Reg, %struct.Reg* %2718, i32 0, i32 0
  %RAX.i329 = bitcast %union.anon* %2719 to i64*
  %2720 = load i64, i64* %RAX.i329
  %2721 = add i64 %2720, 256
  %2722 = load i64, i64* %PC.i328
  %2723 = add i64 %2722, 7
  store i64 %2723, i64* %PC.i328
  %2724 = inttoptr i64 %2721 to i64*
  %2725 = load i64, i64* %2724
  store i64 %2725, i64* %RAX.i329, align 8
  store %struct.Memory* %loadMem_42fc83, %struct.Memory** %MEMORY
  %loadMem_42fc8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2726 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2727 = getelementptr inbounds %struct.GPR, %struct.GPR* %2726, i32 0, i32 33
  %2728 = getelementptr inbounds %struct.Reg, %struct.Reg* %2727, i32 0, i32 0
  %PC.i325 = bitcast %union.anon* %2728 to i64*
  %2729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2730 = getelementptr inbounds %struct.GPR, %struct.GPR* %2729, i32 0, i32 5
  %2731 = getelementptr inbounds %struct.Reg, %struct.Reg* %2730, i32 0, i32 0
  %RCX.i326 = bitcast %union.anon* %2731 to i64*
  %2732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2733 = getelementptr inbounds %struct.GPR, %struct.GPR* %2732, i32 0, i32 15
  %2734 = getelementptr inbounds %struct.Reg, %struct.Reg* %2733, i32 0, i32 0
  %RBP.i327 = bitcast %union.anon* %2734 to i64*
  %2735 = load i64, i64* %RBP.i327
  %2736 = sub i64 %2735, 32
  %2737 = load i64, i64* %PC.i325
  %2738 = add i64 %2737, 4
  store i64 %2738, i64* %PC.i325
  %2739 = inttoptr i64 %2736 to i32*
  %2740 = load i32, i32* %2739
  %2741 = sext i32 %2740 to i64
  store i64 %2741, i64* %RCX.i326, align 8
  store %struct.Memory* %loadMem_42fc8a, %struct.Memory** %MEMORY
  %loadMem_42fc8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2743 = getelementptr inbounds %struct.GPR, %struct.GPR* %2742, i32 0, i32 33
  %2744 = getelementptr inbounds %struct.Reg, %struct.Reg* %2743, i32 0, i32 0
  %PC.i322 = bitcast %union.anon* %2744 to i64*
  %2745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2746 = getelementptr inbounds %struct.GPR, %struct.GPR* %2745, i32 0, i32 1
  %2747 = getelementptr inbounds %struct.Reg, %struct.Reg* %2746, i32 0, i32 0
  %RAX.i323 = bitcast %union.anon* %2747 to i64*
  %2748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2749 = getelementptr inbounds %struct.GPR, %struct.GPR* %2748, i32 0, i32 5
  %2750 = getelementptr inbounds %struct.Reg, %struct.Reg* %2749, i32 0, i32 0
  %RCX.i324 = bitcast %union.anon* %2750 to i64*
  %2751 = load i64, i64* %RAX.i323
  %2752 = load i64, i64* %RCX.i324
  %2753 = mul i64 %2752, 8
  %2754 = add i64 %2753, %2751
  %2755 = load i64, i64* %PC.i322
  %2756 = add i64 %2755, 4
  store i64 %2756, i64* %PC.i322
  %2757 = inttoptr i64 %2754 to i64*
  %2758 = load i64, i64* %2757
  store i64 %2758, i64* %RAX.i323, align 8
  store %struct.Memory* %loadMem_42fc8e, %struct.Memory** %MEMORY
  %loadMem_42fc92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2760 = getelementptr inbounds %struct.GPR, %struct.GPR* %2759, i32 0, i32 33
  %2761 = getelementptr inbounds %struct.Reg, %struct.Reg* %2760, i32 0, i32 0
  %PC.i319 = bitcast %union.anon* %2761 to i64*
  %2762 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2763 = getelementptr inbounds %struct.GPR, %struct.GPR* %2762, i32 0, i32 5
  %2764 = getelementptr inbounds %struct.Reg, %struct.Reg* %2763, i32 0, i32 0
  %RCX.i320 = bitcast %union.anon* %2764 to i64*
  %2765 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2766 = getelementptr inbounds %struct.GPR, %struct.GPR* %2765, i32 0, i32 15
  %2767 = getelementptr inbounds %struct.Reg, %struct.Reg* %2766, i32 0, i32 0
  %RBP.i321 = bitcast %union.anon* %2767 to i64*
  %2768 = load i64, i64* %RBP.i321
  %2769 = sub i64 %2768, 20
  %2770 = load i64, i64* %PC.i319
  %2771 = add i64 %2770, 4
  store i64 %2771, i64* %PC.i319
  %2772 = inttoptr i64 %2769 to i32*
  %2773 = load i32, i32* %2772
  %2774 = sext i32 %2773 to i64
  store i64 %2774, i64* %RCX.i320, align 8
  store %struct.Memory* %loadMem_42fc92, %struct.Memory** %MEMORY
  %loadMem_42fc96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2775 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2776 = getelementptr inbounds %struct.GPR, %struct.GPR* %2775, i32 0, i32 33
  %2777 = getelementptr inbounds %struct.Reg, %struct.Reg* %2776, i32 0, i32 0
  %PC.i315 = bitcast %union.anon* %2777 to i64*
  %2778 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2779 = getelementptr inbounds %struct.GPR, %struct.GPR* %2778, i32 0, i32 7
  %2780 = getelementptr inbounds %struct.Reg, %struct.Reg* %2779, i32 0, i32 0
  %2781 = bitcast %union.anon* %2780 to %struct.anon.2*
  %DL.i316 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2781, i32 0, i32 0
  %2782 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2783 = getelementptr inbounds %struct.GPR, %struct.GPR* %2782, i32 0, i32 1
  %2784 = getelementptr inbounds %struct.Reg, %struct.Reg* %2783, i32 0, i32 0
  %RAX.i317 = bitcast %union.anon* %2784 to i64*
  %2785 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2786 = getelementptr inbounds %struct.GPR, %struct.GPR* %2785, i32 0, i32 5
  %2787 = getelementptr inbounds %struct.Reg, %struct.Reg* %2786, i32 0, i32 0
  %RCX.i318 = bitcast %union.anon* %2787 to i64*
  %2788 = load i64, i64* %RAX.i317
  %2789 = load i64, i64* %RCX.i318
  %2790 = add i64 %2789, %2788
  %2791 = load i64, i64* %PC.i315
  %2792 = add i64 %2791, 3
  store i64 %2792, i64* %PC.i315
  %2793 = inttoptr i64 %2790 to i8*
  %2794 = load i8, i8* %2793
  store i8 %2794, i8* %DL.i316, align 1
  store %struct.Memory* %loadMem_42fc96, %struct.Memory** %MEMORY
  %loadMem_42fc99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2796 = getelementptr inbounds %struct.GPR, %struct.GPR* %2795, i32 0, i32 33
  %2797 = getelementptr inbounds %struct.Reg, %struct.Reg* %2796, i32 0, i32 0
  %PC.i312 = bitcast %union.anon* %2797 to i64*
  %2798 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2799 = getelementptr inbounds %struct.GPR, %struct.GPR* %2798, i32 0, i32 1
  %2800 = getelementptr inbounds %struct.Reg, %struct.Reg* %2799, i32 0, i32 0
  %RAX.i313 = bitcast %union.anon* %2800 to i64*
  %2801 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2802 = getelementptr inbounds %struct.GPR, %struct.GPR* %2801, i32 0, i32 15
  %2803 = getelementptr inbounds %struct.Reg, %struct.Reg* %2802, i32 0, i32 0
  %RBP.i314 = bitcast %union.anon* %2803 to i64*
  %2804 = load i64, i64* %RBP.i314
  %2805 = sub i64 %2804, 8
  %2806 = load i64, i64* %PC.i312
  %2807 = add i64 %2806, 4
  store i64 %2807, i64* %PC.i312
  %2808 = inttoptr i64 %2805 to i64*
  %2809 = load i64, i64* %2808
  store i64 %2809, i64* %RAX.i313, align 8
  store %struct.Memory* %loadMem_42fc99, %struct.Memory** %MEMORY
  %loadMem_42fc9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2811 = getelementptr inbounds %struct.GPR, %struct.GPR* %2810, i32 0, i32 33
  %2812 = getelementptr inbounds %struct.Reg, %struct.Reg* %2811, i32 0, i32 0
  %PC.i310 = bitcast %union.anon* %2812 to i64*
  %2813 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2814 = getelementptr inbounds %struct.GPR, %struct.GPR* %2813, i32 0, i32 1
  %2815 = getelementptr inbounds %struct.Reg, %struct.Reg* %2814, i32 0, i32 0
  %RAX.i311 = bitcast %union.anon* %2815 to i64*
  %2816 = load i64, i64* %RAX.i311
  %2817 = add i64 %2816, 256
  %2818 = load i64, i64* %PC.i310
  %2819 = add i64 %2818, 7
  store i64 %2819, i64* %PC.i310
  %2820 = inttoptr i64 %2817 to i64*
  %2821 = load i64, i64* %2820
  store i64 %2821, i64* %RAX.i311, align 8
  store %struct.Memory* %loadMem_42fc9d, %struct.Memory** %MEMORY
  %loadMem_42fca4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2823 = getelementptr inbounds %struct.GPR, %struct.GPR* %2822, i32 0, i32 33
  %2824 = getelementptr inbounds %struct.Reg, %struct.Reg* %2823, i32 0, i32 0
  %PC.i307 = bitcast %union.anon* %2824 to i64*
  %2825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2826 = getelementptr inbounds %struct.GPR, %struct.GPR* %2825, i32 0, i32 5
  %2827 = getelementptr inbounds %struct.Reg, %struct.Reg* %2826, i32 0, i32 0
  %RCX.i308 = bitcast %union.anon* %2827 to i64*
  %2828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2829 = getelementptr inbounds %struct.GPR, %struct.GPR* %2828, i32 0, i32 15
  %2830 = getelementptr inbounds %struct.Reg, %struct.Reg* %2829, i32 0, i32 0
  %RBP.i309 = bitcast %union.anon* %2830 to i64*
  %2831 = load i64, i64* %RBP.i309
  %2832 = sub i64 %2831, 32
  %2833 = load i64, i64* %PC.i307
  %2834 = add i64 %2833, 4
  store i64 %2834, i64* %PC.i307
  %2835 = inttoptr i64 %2832 to i32*
  %2836 = load i32, i32* %2835
  %2837 = sext i32 %2836 to i64
  store i64 %2837, i64* %RCX.i308, align 8
  store %struct.Memory* %loadMem_42fca4, %struct.Memory** %MEMORY
  %loadMem_42fca8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2838 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2839 = getelementptr inbounds %struct.GPR, %struct.GPR* %2838, i32 0, i32 33
  %2840 = getelementptr inbounds %struct.Reg, %struct.Reg* %2839, i32 0, i32 0
  %PC.i304 = bitcast %union.anon* %2840 to i64*
  %2841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2842 = getelementptr inbounds %struct.GPR, %struct.GPR* %2841, i32 0, i32 1
  %2843 = getelementptr inbounds %struct.Reg, %struct.Reg* %2842, i32 0, i32 0
  %RAX.i305 = bitcast %union.anon* %2843 to i64*
  %2844 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2845 = getelementptr inbounds %struct.GPR, %struct.GPR* %2844, i32 0, i32 5
  %2846 = getelementptr inbounds %struct.Reg, %struct.Reg* %2845, i32 0, i32 0
  %RCX.i306 = bitcast %union.anon* %2846 to i64*
  %2847 = load i64, i64* %RAX.i305
  %2848 = load i64, i64* %RCX.i306
  %2849 = mul i64 %2848, 8
  %2850 = add i64 %2849, %2847
  %2851 = load i64, i64* %PC.i304
  %2852 = add i64 %2851, 4
  store i64 %2852, i64* %PC.i304
  %2853 = inttoptr i64 %2850 to i64*
  %2854 = load i64, i64* %2853
  store i64 %2854, i64* %RAX.i305, align 8
  store %struct.Memory* %loadMem_42fca8, %struct.Memory** %MEMORY
  %loadMem_42fcac = load %struct.Memory*, %struct.Memory** %MEMORY
  %2855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2856 = getelementptr inbounds %struct.GPR, %struct.GPR* %2855, i32 0, i32 33
  %2857 = getelementptr inbounds %struct.Reg, %struct.Reg* %2856, i32 0, i32 0
  %PC.i301 = bitcast %union.anon* %2857 to i64*
  %2858 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2859 = getelementptr inbounds %struct.GPR, %struct.GPR* %2858, i32 0, i32 5
  %2860 = getelementptr inbounds %struct.Reg, %struct.Reg* %2859, i32 0, i32 0
  %RCX.i302 = bitcast %union.anon* %2860 to i64*
  %2861 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2862 = getelementptr inbounds %struct.GPR, %struct.GPR* %2861, i32 0, i32 15
  %2863 = getelementptr inbounds %struct.Reg, %struct.Reg* %2862, i32 0, i32 0
  %RBP.i303 = bitcast %union.anon* %2863 to i64*
  %2864 = load i64, i64* %RBP.i303
  %2865 = sub i64 %2864, 24
  %2866 = load i64, i64* %PC.i301
  %2867 = add i64 %2866, 4
  store i64 %2867, i64* %PC.i301
  %2868 = inttoptr i64 %2865 to i32*
  %2869 = load i32, i32* %2868
  %2870 = sext i32 %2869 to i64
  store i64 %2870, i64* %RCX.i302, align 8
  store %struct.Memory* %loadMem_42fcac, %struct.Memory** %MEMORY
  %loadMem_42fcb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2872 = getelementptr inbounds %struct.GPR, %struct.GPR* %2871, i32 0, i32 33
  %2873 = getelementptr inbounds %struct.Reg, %struct.Reg* %2872, i32 0, i32 0
  %PC.i298 = bitcast %union.anon* %2873 to i64*
  %2874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2875 = getelementptr inbounds %struct.GPR, %struct.GPR* %2874, i32 0, i32 7
  %2876 = getelementptr inbounds %struct.Reg, %struct.Reg* %2875, i32 0, i32 0
  %2877 = bitcast %union.anon* %2876 to %struct.anon.2*
  %DL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2877, i32 0, i32 0
  %2878 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2879 = getelementptr inbounds %struct.GPR, %struct.GPR* %2878, i32 0, i32 1
  %2880 = getelementptr inbounds %struct.Reg, %struct.Reg* %2879, i32 0, i32 0
  %RAX.i299 = bitcast %union.anon* %2880 to i64*
  %2881 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2882 = getelementptr inbounds %struct.GPR, %struct.GPR* %2881, i32 0, i32 5
  %2883 = getelementptr inbounds %struct.Reg, %struct.Reg* %2882, i32 0, i32 0
  %RCX.i300 = bitcast %union.anon* %2883 to i64*
  %2884 = load i64, i64* %RAX.i299
  %2885 = load i64, i64* %RCX.i300
  %2886 = add i64 %2885, %2884
  %2887 = load i8, i8* %DL.i
  %2888 = zext i8 %2887 to i64
  %2889 = load i64, i64* %PC.i298
  %2890 = add i64 %2889, 3
  store i64 %2890, i64* %PC.i298
  %2891 = inttoptr i64 %2886 to i8*
  store i8 %2887, i8* %2891
  store %struct.Memory* %loadMem_42fcb0, %struct.Memory** %MEMORY
  %loadMem_42fcb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2893 = getelementptr inbounds %struct.GPR, %struct.GPR* %2892, i32 0, i32 33
  %2894 = getelementptr inbounds %struct.Reg, %struct.Reg* %2893, i32 0, i32 0
  %PC.i295 = bitcast %union.anon* %2894 to i64*
  %2895 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2896 = getelementptr inbounds %struct.GPR, %struct.GPR* %2895, i32 0, i32 1
  %2897 = getelementptr inbounds %struct.Reg, %struct.Reg* %2896, i32 0, i32 0
  %RAX.i296 = bitcast %union.anon* %2897 to i64*
  %2898 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2899 = getelementptr inbounds %struct.GPR, %struct.GPR* %2898, i32 0, i32 15
  %2900 = getelementptr inbounds %struct.Reg, %struct.Reg* %2899, i32 0, i32 0
  %RBP.i297 = bitcast %union.anon* %2900 to i64*
  %2901 = load i64, i64* %RBP.i297
  %2902 = sub i64 %2901, 32
  %2903 = load i64, i64* %PC.i295
  %2904 = add i64 %2903, 3
  store i64 %2904, i64* %PC.i295
  %2905 = inttoptr i64 %2902 to i32*
  %2906 = load i32, i32* %2905
  %2907 = zext i32 %2906 to i64
  store i64 %2907, i64* %RAX.i296, align 8
  store %struct.Memory* %loadMem_42fcb3, %struct.Memory** %MEMORY
  %loadMem_42fcb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2909 = getelementptr inbounds %struct.GPR, %struct.GPR* %2908, i32 0, i32 33
  %2910 = getelementptr inbounds %struct.Reg, %struct.Reg* %2909, i32 0, i32 0
  %PC.i293 = bitcast %union.anon* %2910 to i64*
  %2911 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2912 = getelementptr inbounds %struct.GPR, %struct.GPR* %2911, i32 0, i32 1
  %2913 = getelementptr inbounds %struct.Reg, %struct.Reg* %2912, i32 0, i32 0
  %RAX.i294 = bitcast %union.anon* %2913 to i64*
  %2914 = load i64, i64* %RAX.i294
  %2915 = load i64, i64* %PC.i293
  %2916 = add i64 %2915, 3
  store i64 %2916, i64* %PC.i293
  %2917 = trunc i64 %2914 to i32
  %2918 = add i32 1, %2917
  %2919 = zext i32 %2918 to i64
  store i64 %2919, i64* %RAX.i294, align 8
  %2920 = icmp ult i32 %2918, %2917
  %2921 = icmp ult i32 %2918, 1
  %2922 = or i1 %2920, %2921
  %2923 = zext i1 %2922 to i8
  %2924 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2923, i8* %2924, align 1
  %2925 = and i32 %2918, 255
  %2926 = call i32 @llvm.ctpop.i32(i32 %2925)
  %2927 = trunc i32 %2926 to i8
  %2928 = and i8 %2927, 1
  %2929 = xor i8 %2928, 1
  %2930 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2929, i8* %2930, align 1
  %2931 = xor i64 1, %2914
  %2932 = trunc i64 %2931 to i32
  %2933 = xor i32 %2932, %2918
  %2934 = lshr i32 %2933, 4
  %2935 = trunc i32 %2934 to i8
  %2936 = and i8 %2935, 1
  %2937 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2936, i8* %2937, align 1
  %2938 = icmp eq i32 %2918, 0
  %2939 = zext i1 %2938 to i8
  %2940 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2939, i8* %2940, align 1
  %2941 = lshr i32 %2918, 31
  %2942 = trunc i32 %2941 to i8
  %2943 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2942, i8* %2943, align 1
  %2944 = lshr i32 %2917, 31
  %2945 = xor i32 %2941, %2944
  %2946 = add i32 %2945, %2941
  %2947 = icmp eq i32 %2946, 2
  %2948 = zext i1 %2947 to i8
  %2949 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2948, i8* %2949, align 1
  store %struct.Memory* %loadMem_42fcb6, %struct.Memory** %MEMORY
  %loadMem_42fcb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2950 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2951 = getelementptr inbounds %struct.GPR, %struct.GPR* %2950, i32 0, i32 33
  %2952 = getelementptr inbounds %struct.Reg, %struct.Reg* %2951, i32 0, i32 0
  %PC.i290 = bitcast %union.anon* %2952 to i64*
  %2953 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2954 = getelementptr inbounds %struct.GPR, %struct.GPR* %2953, i32 0, i32 1
  %2955 = getelementptr inbounds %struct.Reg, %struct.Reg* %2954, i32 0, i32 0
  %EAX.i291 = bitcast %union.anon* %2955 to i32*
  %2956 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2957 = getelementptr inbounds %struct.GPR, %struct.GPR* %2956, i32 0, i32 15
  %2958 = getelementptr inbounds %struct.Reg, %struct.Reg* %2957, i32 0, i32 0
  %RBP.i292 = bitcast %union.anon* %2958 to i64*
  %2959 = load i64, i64* %RBP.i292
  %2960 = sub i64 %2959, 32
  %2961 = load i32, i32* %EAX.i291
  %2962 = zext i32 %2961 to i64
  %2963 = load i64, i64* %PC.i290
  %2964 = add i64 %2963, 3
  store i64 %2964, i64* %PC.i290
  %2965 = inttoptr i64 %2960 to i32*
  store i32 %2961, i32* %2965
  store %struct.Memory* %loadMem_42fcb9, %struct.Memory** %MEMORY
  %loadMem_42fcbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2967 = getelementptr inbounds %struct.GPR, %struct.GPR* %2966, i32 0, i32 33
  %2968 = getelementptr inbounds %struct.Reg, %struct.Reg* %2967, i32 0, i32 0
  %PC.i289 = bitcast %union.anon* %2968 to i64*
  %2969 = load i64, i64* %PC.i289
  %2970 = add i64 %2969, -80
  %2971 = load i64, i64* %PC.i289
  %2972 = add i64 %2971, 5
  store i64 %2972, i64* %PC.i289
  %2973 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2970, i64* %2973, align 8
  store %struct.Memory* %loadMem_42fcbc, %struct.Memory** %MEMORY
  br label %block_.L_42fc6c

block_.L_42fcc1:                                  ; preds = %block_.L_42fc6c
  %loadMem_42fcc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2975 = getelementptr inbounds %struct.GPR, %struct.GPR* %2974, i32 0, i32 33
  %2976 = getelementptr inbounds %struct.Reg, %struct.Reg* %2975, i32 0, i32 0
  %PC.i288 = bitcast %union.anon* %2976 to i64*
  %2977 = load i64, i64* %PC.i288
  %2978 = add i64 %2977, 5
  %2979 = load i64, i64* %PC.i288
  %2980 = add i64 %2979, 5
  store i64 %2980, i64* %PC.i288
  %2981 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2978, i64* %2981, align 8
  store %struct.Memory* %loadMem_42fcc1, %struct.Memory** %MEMORY
  br label %block_.L_42fcc6

block_.L_42fcc6:                                  ; preds = %block_.L_42fcc1, %block_.L_42fa41
  %loadMem_42fcc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2982 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2983 = getelementptr inbounds %struct.GPR, %struct.GPR* %2982, i32 0, i32 33
  %2984 = getelementptr inbounds %struct.Reg, %struct.Reg* %2983, i32 0, i32 0
  %PC.i285 = bitcast %union.anon* %2984 to i64*
  %2985 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2986 = getelementptr inbounds %struct.GPR, %struct.GPR* %2985, i32 0, i32 1
  %2987 = getelementptr inbounds %struct.Reg, %struct.Reg* %2986, i32 0, i32 0
  %RAX.i286 = bitcast %union.anon* %2987 to i64*
  %2988 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2989 = getelementptr inbounds %struct.GPR, %struct.GPR* %2988, i32 0, i32 15
  %2990 = getelementptr inbounds %struct.Reg, %struct.Reg* %2989, i32 0, i32 0
  %RBP.i287 = bitcast %union.anon* %2990 to i64*
  %2991 = load i64, i64* %RBP.i287
  %2992 = sub i64 %2991, 24
  %2993 = load i64, i64* %PC.i285
  %2994 = add i64 %2993, 3
  store i64 %2994, i64* %PC.i285
  %2995 = inttoptr i64 %2992 to i32*
  %2996 = load i32, i32* %2995
  %2997 = zext i32 %2996 to i64
  store i64 %2997, i64* %RAX.i286, align 8
  store %struct.Memory* %loadMem_42fcc6, %struct.Memory** %MEMORY
  %loadMem_42fcc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2998 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2999 = getelementptr inbounds %struct.GPR, %struct.GPR* %2998, i32 0, i32 33
  %3000 = getelementptr inbounds %struct.Reg, %struct.Reg* %2999, i32 0, i32 0
  %PC.i283 = bitcast %union.anon* %3000 to i64*
  %3001 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3002 = getelementptr inbounds %struct.GPR, %struct.GPR* %3001, i32 0, i32 1
  %3003 = getelementptr inbounds %struct.Reg, %struct.Reg* %3002, i32 0, i32 0
  %RAX.i284 = bitcast %union.anon* %3003 to i64*
  %3004 = load i64, i64* %RAX.i284
  %3005 = load i64, i64* %PC.i283
  %3006 = add i64 %3005, 3
  store i64 %3006, i64* %PC.i283
  %3007 = trunc i64 %3004 to i32
  %3008 = add i32 1, %3007
  %3009 = zext i32 %3008 to i64
  store i64 %3009, i64* %RAX.i284, align 8
  %3010 = icmp ult i32 %3008, %3007
  %3011 = icmp ult i32 %3008, 1
  %3012 = or i1 %3010, %3011
  %3013 = zext i1 %3012 to i8
  %3014 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3013, i8* %3014, align 1
  %3015 = and i32 %3008, 255
  %3016 = call i32 @llvm.ctpop.i32(i32 %3015)
  %3017 = trunc i32 %3016 to i8
  %3018 = and i8 %3017, 1
  %3019 = xor i8 %3018, 1
  %3020 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3019, i8* %3020, align 1
  %3021 = xor i64 1, %3004
  %3022 = trunc i64 %3021 to i32
  %3023 = xor i32 %3022, %3008
  %3024 = lshr i32 %3023, 4
  %3025 = trunc i32 %3024 to i8
  %3026 = and i8 %3025, 1
  %3027 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3026, i8* %3027, align 1
  %3028 = icmp eq i32 %3008, 0
  %3029 = zext i1 %3028 to i8
  %3030 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3029, i8* %3030, align 1
  %3031 = lshr i32 %3008, 31
  %3032 = trunc i32 %3031 to i8
  %3033 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3032, i8* %3033, align 1
  %3034 = lshr i32 %3007, 31
  %3035 = xor i32 %3031, %3034
  %3036 = add i32 %3035, %3031
  %3037 = icmp eq i32 %3036, 2
  %3038 = zext i1 %3037 to i8
  %3039 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3038, i8* %3039, align 1
  store %struct.Memory* %loadMem_42fcc9, %struct.Memory** %MEMORY
  %loadMem_42fccc = load %struct.Memory*, %struct.Memory** %MEMORY
  %3040 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3041 = getelementptr inbounds %struct.GPR, %struct.GPR* %3040, i32 0, i32 33
  %3042 = getelementptr inbounds %struct.Reg, %struct.Reg* %3041, i32 0, i32 0
  %PC.i280 = bitcast %union.anon* %3042 to i64*
  %3043 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3044 = getelementptr inbounds %struct.GPR, %struct.GPR* %3043, i32 0, i32 1
  %3045 = getelementptr inbounds %struct.Reg, %struct.Reg* %3044, i32 0, i32 0
  %EAX.i281 = bitcast %union.anon* %3045 to i32*
  %3046 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3047 = getelementptr inbounds %struct.GPR, %struct.GPR* %3046, i32 0, i32 15
  %3048 = getelementptr inbounds %struct.Reg, %struct.Reg* %3047, i32 0, i32 0
  %RBP.i282 = bitcast %union.anon* %3048 to i64*
  %3049 = load i64, i64* %RBP.i282
  %3050 = sub i64 %3049, 24
  %3051 = load i32, i32* %EAX.i281
  %3052 = zext i32 %3051 to i64
  %3053 = load i64, i64* %PC.i280
  %3054 = add i64 %3053, 3
  store i64 %3054, i64* %PC.i280
  %3055 = inttoptr i64 %3050 to i32*
  store i32 %3051, i32* %3055
  store %struct.Memory* %loadMem_42fccc, %struct.Memory** %MEMORY
  br label %block_.L_42fccf

block_.L_42fccf:                                  ; preds = %block_.L_42fcc6, %block_42fa3c
  %loadMem_42fccf = load %struct.Memory*, %struct.Memory** %MEMORY
  %3056 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3057 = getelementptr inbounds %struct.GPR, %struct.GPR* %3056, i32 0, i32 33
  %3058 = getelementptr inbounds %struct.Reg, %struct.Reg* %3057, i32 0, i32 0
  %PC.i277 = bitcast %union.anon* %3058 to i64*
  %3059 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3060 = getelementptr inbounds %struct.GPR, %struct.GPR* %3059, i32 0, i32 1
  %3061 = getelementptr inbounds %struct.Reg, %struct.Reg* %3060, i32 0, i32 0
  %RAX.i278 = bitcast %union.anon* %3061 to i64*
  %3062 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3063 = getelementptr inbounds %struct.GPR, %struct.GPR* %3062, i32 0, i32 15
  %3064 = getelementptr inbounds %struct.Reg, %struct.Reg* %3063, i32 0, i32 0
  %RBP.i279 = bitcast %union.anon* %3064 to i64*
  %3065 = load i64, i64* %RBP.i279
  %3066 = sub i64 %3065, 20
  %3067 = load i64, i64* %PC.i277
  %3068 = add i64 %3067, 3
  store i64 %3068, i64* %PC.i277
  %3069 = inttoptr i64 %3066 to i32*
  %3070 = load i32, i32* %3069
  %3071 = zext i32 %3070 to i64
  store i64 %3071, i64* %RAX.i278, align 8
  store %struct.Memory* %loadMem_42fccf, %struct.Memory** %MEMORY
  %loadMem_42fcd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3072 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3073 = getelementptr inbounds %struct.GPR, %struct.GPR* %3072, i32 0, i32 33
  %3074 = getelementptr inbounds %struct.Reg, %struct.Reg* %3073, i32 0, i32 0
  %PC.i275 = bitcast %union.anon* %3074 to i64*
  %3075 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3076 = getelementptr inbounds %struct.GPR, %struct.GPR* %3075, i32 0, i32 1
  %3077 = getelementptr inbounds %struct.Reg, %struct.Reg* %3076, i32 0, i32 0
  %RAX.i276 = bitcast %union.anon* %3077 to i64*
  %3078 = load i64, i64* %RAX.i276
  %3079 = load i64, i64* %PC.i275
  %3080 = add i64 %3079, 3
  store i64 %3080, i64* %PC.i275
  %3081 = trunc i64 %3078 to i32
  %3082 = add i32 1, %3081
  %3083 = zext i32 %3082 to i64
  store i64 %3083, i64* %RAX.i276, align 8
  %3084 = icmp ult i32 %3082, %3081
  %3085 = icmp ult i32 %3082, 1
  %3086 = or i1 %3084, %3085
  %3087 = zext i1 %3086 to i8
  %3088 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3087, i8* %3088, align 1
  %3089 = and i32 %3082, 255
  %3090 = call i32 @llvm.ctpop.i32(i32 %3089)
  %3091 = trunc i32 %3090 to i8
  %3092 = and i8 %3091, 1
  %3093 = xor i8 %3092, 1
  %3094 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3093, i8* %3094, align 1
  %3095 = xor i64 1, %3078
  %3096 = trunc i64 %3095 to i32
  %3097 = xor i32 %3096, %3082
  %3098 = lshr i32 %3097, 4
  %3099 = trunc i32 %3098 to i8
  %3100 = and i8 %3099, 1
  %3101 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3100, i8* %3101, align 1
  %3102 = icmp eq i32 %3082, 0
  %3103 = zext i1 %3102 to i8
  %3104 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3103, i8* %3104, align 1
  %3105 = lshr i32 %3082, 31
  %3106 = trunc i32 %3105 to i8
  %3107 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3106, i8* %3107, align 1
  %3108 = lshr i32 %3081, 31
  %3109 = xor i32 %3105, %3108
  %3110 = add i32 %3109, %3105
  %3111 = icmp eq i32 %3110, 2
  %3112 = zext i1 %3111 to i8
  %3113 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3112, i8* %3113, align 1
  store %struct.Memory* %loadMem_42fcd2, %struct.Memory** %MEMORY
  %loadMem_42fcd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3115 = getelementptr inbounds %struct.GPR, %struct.GPR* %3114, i32 0, i32 33
  %3116 = getelementptr inbounds %struct.Reg, %struct.Reg* %3115, i32 0, i32 0
  %PC.i272 = bitcast %union.anon* %3116 to i64*
  %3117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3118 = getelementptr inbounds %struct.GPR, %struct.GPR* %3117, i32 0, i32 1
  %3119 = getelementptr inbounds %struct.Reg, %struct.Reg* %3118, i32 0, i32 0
  %EAX.i273 = bitcast %union.anon* %3119 to i32*
  %3120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3121 = getelementptr inbounds %struct.GPR, %struct.GPR* %3120, i32 0, i32 15
  %3122 = getelementptr inbounds %struct.Reg, %struct.Reg* %3121, i32 0, i32 0
  %RBP.i274 = bitcast %union.anon* %3122 to i64*
  %3123 = load i64, i64* %RBP.i274
  %3124 = sub i64 %3123, 20
  %3125 = load i32, i32* %EAX.i273
  %3126 = zext i32 %3125 to i64
  %3127 = load i64, i64* %PC.i272
  %3128 = add i64 %3127, 3
  store i64 %3128, i64* %PC.i272
  %3129 = inttoptr i64 %3124 to i32*
  store i32 %3125, i32* %3129
  store %struct.Memory* %loadMem_42fcd5, %struct.Memory** %MEMORY
  %loadMem_42fcd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3131 = getelementptr inbounds %struct.GPR, %struct.GPR* %3130, i32 0, i32 33
  %3132 = getelementptr inbounds %struct.Reg, %struct.Reg* %3131, i32 0, i32 0
  %PC.i271 = bitcast %union.anon* %3132 to i64*
  %3133 = load i64, i64* %PC.i271
  %3134 = add i64 %3133, -702
  %3135 = load i64, i64* %PC.i271
  %3136 = add i64 %3135, 5
  store i64 %3136, i64* %PC.i271
  %3137 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3134, i64* %3137, align 8
  store %struct.Memory* %loadMem_42fcd8, %struct.Memory** %MEMORY
  br label %block_.L_42fa1a

block_.L_42fcdd:                                  ; preds = %block_.L_42fa1a
  %loadMem_42fcdd = load %struct.Memory*, %struct.Memory** %MEMORY
  %3138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3139 = getelementptr inbounds %struct.GPR, %struct.GPR* %3138, i32 0, i32 33
  %3140 = getelementptr inbounds %struct.Reg, %struct.Reg* %3139, i32 0, i32 0
  %PC.i268 = bitcast %union.anon* %3140 to i64*
  %3141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3142 = getelementptr inbounds %struct.GPR, %struct.GPR* %3141, i32 0, i32 1
  %3143 = getelementptr inbounds %struct.Reg, %struct.Reg* %3142, i32 0, i32 0
  %RAX.i269 = bitcast %union.anon* %3143 to i64*
  %3144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3145 = getelementptr inbounds %struct.GPR, %struct.GPR* %3144, i32 0, i32 15
  %3146 = getelementptr inbounds %struct.Reg, %struct.Reg* %3145, i32 0, i32 0
  %RBP.i270 = bitcast %union.anon* %3146 to i64*
  %3147 = load i64, i64* %RBP.i270
  %3148 = sub i64 %3147, 24
  %3149 = load i64, i64* %PC.i268
  %3150 = add i64 %3149, 3
  store i64 %3150, i64* %PC.i268
  %3151 = inttoptr i64 %3148 to i32*
  %3152 = load i32, i32* %3151
  %3153 = zext i32 %3152 to i64
  store i64 %3153, i64* %RAX.i269, align 8
  store %struct.Memory* %loadMem_42fcdd, %struct.Memory** %MEMORY
  %loadMem_42fce0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3155 = getelementptr inbounds %struct.GPR, %struct.GPR* %3154, i32 0, i32 33
  %3156 = getelementptr inbounds %struct.Reg, %struct.Reg* %3155, i32 0, i32 0
  %PC.i265 = bitcast %union.anon* %3156 to i64*
  %3157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3158 = getelementptr inbounds %struct.GPR, %struct.GPR* %3157, i32 0, i32 5
  %3159 = getelementptr inbounds %struct.Reg, %struct.Reg* %3158, i32 0, i32 0
  %RCX.i266 = bitcast %union.anon* %3159 to i64*
  %3160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3161 = getelementptr inbounds %struct.GPR, %struct.GPR* %3160, i32 0, i32 15
  %3162 = getelementptr inbounds %struct.Reg, %struct.Reg* %3161, i32 0, i32 0
  %RBP.i267 = bitcast %union.anon* %3162 to i64*
  %3163 = load i64, i64* %RBP.i267
  %3164 = sub i64 %3163, 8
  %3165 = load i64, i64* %PC.i265
  %3166 = add i64 %3165, 4
  store i64 %3166, i64* %PC.i265
  %3167 = inttoptr i64 %3164 to i64*
  %3168 = load i64, i64* %3167
  store i64 %3168, i64* %RCX.i266, align 8
  store %struct.Memory* %loadMem_42fce0, %struct.Memory** %MEMORY
  %loadMem_42fce4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3170 = getelementptr inbounds %struct.GPR, %struct.GPR* %3169, i32 0, i32 33
  %3171 = getelementptr inbounds %struct.Reg, %struct.Reg* %3170, i32 0, i32 0
  %PC.i262 = bitcast %union.anon* %3171 to i64*
  %3172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3173 = getelementptr inbounds %struct.GPR, %struct.GPR* %3172, i32 0, i32 1
  %3174 = getelementptr inbounds %struct.Reg, %struct.Reg* %3173, i32 0, i32 0
  %EAX.i263 = bitcast %union.anon* %3174 to i32*
  %3175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3176 = getelementptr inbounds %struct.GPR, %struct.GPR* %3175, i32 0, i32 5
  %3177 = getelementptr inbounds %struct.Reg, %struct.Reg* %3176, i32 0, i32 0
  %RCX.i264 = bitcast %union.anon* %3177 to i64*
  %3178 = load i64, i64* %RCX.i264
  %3179 = add i64 %3178, 24
  %3180 = load i32, i32* %EAX.i263
  %3181 = zext i32 %3180 to i64
  %3182 = load i64, i64* %PC.i262
  %3183 = add i64 %3182, 3
  store i64 %3183, i64* %PC.i262
  %3184 = inttoptr i64 %3179 to i32*
  store i32 %3180, i32* %3184
  store %struct.Memory* %loadMem_42fce4, %struct.Memory** %MEMORY
  %loadMem_42fce7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3186 = getelementptr inbounds %struct.GPR, %struct.GPR* %3185, i32 0, i32 33
  %3187 = getelementptr inbounds %struct.Reg, %struct.Reg* %3186, i32 0, i32 0
  %PC.i260 = bitcast %union.anon* %3187 to i64*
  %3188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3189 = getelementptr inbounds %struct.GPR, %struct.GPR* %3188, i32 0, i32 15
  %3190 = getelementptr inbounds %struct.Reg, %struct.Reg* %3189, i32 0, i32 0
  %RBP.i261 = bitcast %union.anon* %3190 to i64*
  %3191 = load i64, i64* %RBP.i261
  %3192 = sub i64 %3191, 28
  %3193 = load i64, i64* %PC.i260
  %3194 = add i64 %3193, 7
  store i64 %3194, i64* %PC.i260
  %3195 = inttoptr i64 %3192 to i32*
  store i32 0, i32* %3195
  store %struct.Memory* %loadMem_42fce7, %struct.Memory** %MEMORY
  br label %block_.L_42fcee

block_.L_42fcee:                                  ; preds = %block_.L_42fe08, %block_.L_42fcdd
  %loadMem_42fcee = load %struct.Memory*, %struct.Memory** %MEMORY
  %3196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3197 = getelementptr inbounds %struct.GPR, %struct.GPR* %3196, i32 0, i32 33
  %3198 = getelementptr inbounds %struct.Reg, %struct.Reg* %3197, i32 0, i32 0
  %PC.i257 = bitcast %union.anon* %3198 to i64*
  %3199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3200 = getelementptr inbounds %struct.GPR, %struct.GPR* %3199, i32 0, i32 1
  %3201 = getelementptr inbounds %struct.Reg, %struct.Reg* %3200, i32 0, i32 0
  %RAX.i258 = bitcast %union.anon* %3201 to i64*
  %3202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3203 = getelementptr inbounds %struct.GPR, %struct.GPR* %3202, i32 0, i32 15
  %3204 = getelementptr inbounds %struct.Reg, %struct.Reg* %3203, i32 0, i32 0
  %RBP.i259 = bitcast %union.anon* %3204 to i64*
  %3205 = load i64, i64* %RBP.i259
  %3206 = sub i64 %3205, 28
  %3207 = load i64, i64* %PC.i257
  %3208 = add i64 %3207, 3
  store i64 %3208, i64* %PC.i257
  %3209 = inttoptr i64 %3206 to i32*
  %3210 = load i32, i32* %3209
  %3211 = zext i32 %3210 to i64
  store i64 %3211, i64* %RAX.i258, align 8
  store %struct.Memory* %loadMem_42fcee, %struct.Memory** %MEMORY
  %loadMem_42fcf1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3213 = getelementptr inbounds %struct.GPR, %struct.GPR* %3212, i32 0, i32 33
  %3214 = getelementptr inbounds %struct.Reg, %struct.Reg* %3213, i32 0, i32 0
  %PC.i254 = bitcast %union.anon* %3214 to i64*
  %3215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3216 = getelementptr inbounds %struct.GPR, %struct.GPR* %3215, i32 0, i32 5
  %3217 = getelementptr inbounds %struct.Reg, %struct.Reg* %3216, i32 0, i32 0
  %RCX.i255 = bitcast %union.anon* %3217 to i64*
  %3218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3219 = getelementptr inbounds %struct.GPR, %struct.GPR* %3218, i32 0, i32 15
  %3220 = getelementptr inbounds %struct.Reg, %struct.Reg* %3219, i32 0, i32 0
  %RBP.i256 = bitcast %union.anon* %3220 to i64*
  %3221 = load i64, i64* %RBP.i256
  %3222 = sub i64 %3221, 8
  %3223 = load i64, i64* %PC.i254
  %3224 = add i64 %3223, 4
  store i64 %3224, i64* %PC.i254
  %3225 = inttoptr i64 %3222 to i64*
  %3226 = load i64, i64* %3225
  store i64 %3226, i64* %RCX.i255, align 8
  store %struct.Memory* %loadMem_42fcf1, %struct.Memory** %MEMORY
  %loadMem_42fcf5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3228 = getelementptr inbounds %struct.GPR, %struct.GPR* %3227, i32 0, i32 33
  %3229 = getelementptr inbounds %struct.Reg, %struct.Reg* %3228, i32 0, i32 0
  %PC.i251 = bitcast %union.anon* %3229 to i64*
  %3230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3231 = getelementptr inbounds %struct.GPR, %struct.GPR* %3230, i32 0, i32 1
  %3232 = getelementptr inbounds %struct.Reg, %struct.Reg* %3231, i32 0, i32 0
  %EAX.i252 = bitcast %union.anon* %3232 to i32*
  %3233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3234 = getelementptr inbounds %struct.GPR, %struct.GPR* %3233, i32 0, i32 5
  %3235 = getelementptr inbounds %struct.Reg, %struct.Reg* %3234, i32 0, i32 0
  %RCX.i253 = bitcast %union.anon* %3235 to i64*
  %3236 = load i32, i32* %EAX.i252
  %3237 = zext i32 %3236 to i64
  %3238 = load i64, i64* %RCX.i253
  %3239 = add i64 %3238, 28
  %3240 = load i64, i64* %PC.i251
  %3241 = add i64 %3240, 3
  store i64 %3241, i64* %PC.i251
  %3242 = inttoptr i64 %3239 to i32*
  %3243 = load i32, i32* %3242
  %3244 = sub i32 %3236, %3243
  %3245 = icmp ult i32 %3236, %3243
  %3246 = zext i1 %3245 to i8
  %3247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3246, i8* %3247, align 1
  %3248 = and i32 %3244, 255
  %3249 = call i32 @llvm.ctpop.i32(i32 %3248)
  %3250 = trunc i32 %3249 to i8
  %3251 = and i8 %3250, 1
  %3252 = xor i8 %3251, 1
  %3253 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3252, i8* %3253, align 1
  %3254 = xor i32 %3243, %3236
  %3255 = xor i32 %3254, %3244
  %3256 = lshr i32 %3255, 4
  %3257 = trunc i32 %3256 to i8
  %3258 = and i8 %3257, 1
  %3259 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3258, i8* %3259, align 1
  %3260 = icmp eq i32 %3244, 0
  %3261 = zext i1 %3260 to i8
  %3262 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3261, i8* %3262, align 1
  %3263 = lshr i32 %3244, 31
  %3264 = trunc i32 %3263 to i8
  %3265 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3264, i8* %3265, align 1
  %3266 = lshr i32 %3236, 31
  %3267 = lshr i32 %3243, 31
  %3268 = xor i32 %3267, %3266
  %3269 = xor i32 %3263, %3266
  %3270 = add i32 %3269, %3268
  %3271 = icmp eq i32 %3270, 2
  %3272 = zext i1 %3271 to i8
  %3273 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3272, i8* %3273, align 1
  store %struct.Memory* %loadMem_42fcf5, %struct.Memory** %MEMORY
  %loadMem_42fcf8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3275 = getelementptr inbounds %struct.GPR, %struct.GPR* %3274, i32 0, i32 33
  %3276 = getelementptr inbounds %struct.Reg, %struct.Reg* %3275, i32 0, i32 0
  %PC.i250 = bitcast %union.anon* %3276 to i64*
  %3277 = load i64, i64* %PC.i250
  %3278 = add i64 %3277, 286
  %3279 = load i64, i64* %PC.i250
  %3280 = add i64 %3279, 6
  %3281 = load i64, i64* %PC.i250
  %3282 = add i64 %3281, 6
  store i64 %3282, i64* %PC.i250
  %3283 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3284 = load i8, i8* %3283, align 1
  %3285 = icmp ne i8 %3284, 0
  %3286 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3287 = load i8, i8* %3286, align 1
  %3288 = icmp ne i8 %3287, 0
  %3289 = xor i1 %3285, %3288
  %3290 = xor i1 %3289, true
  %3291 = zext i1 %3290 to i8
  store i8 %3291, i8* %BRANCH_TAKEN, align 1
  %3292 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3293 = select i1 %3289, i64 %3280, i64 %3278
  store i64 %3293, i64* %3292, align 8
  store %struct.Memory* %loadMem_42fcf8, %struct.Memory** %MEMORY
  %loadBr_42fcf8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42fcf8 = icmp eq i8 %loadBr_42fcf8, 1
  br i1 %cmpBr_42fcf8, label %block_.L_42fe16, label %block_42fcfe

block_42fcfe:                                     ; preds = %block_.L_42fcee
  %loadMem_42fcfe = load %struct.Memory*, %struct.Memory** %MEMORY
  %3294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3295 = getelementptr inbounds %struct.GPR, %struct.GPR* %3294, i32 0, i32 33
  %3296 = getelementptr inbounds %struct.Reg, %struct.Reg* %3295, i32 0, i32 0
  %PC.i247 = bitcast %union.anon* %3296 to i64*
  %3297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3298 = getelementptr inbounds %struct.GPR, %struct.GPR* %3297, i32 0, i32 1
  %3299 = getelementptr inbounds %struct.Reg, %struct.Reg* %3298, i32 0, i32 0
  %RAX.i248 = bitcast %union.anon* %3299 to i64*
  %3300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3301 = getelementptr inbounds %struct.GPR, %struct.GPR* %3300, i32 0, i32 15
  %3302 = getelementptr inbounds %struct.Reg, %struct.Reg* %3301, i32 0, i32 0
  %RBP.i249 = bitcast %union.anon* %3302 to i64*
  %3303 = load i64, i64* %RBP.i249
  %3304 = sub i64 %3303, 8
  %3305 = load i64, i64* %PC.i247
  %3306 = add i64 %3305, 4
  store i64 %3306, i64* %PC.i247
  %3307 = inttoptr i64 %3304 to i64*
  %3308 = load i64, i64* %3307
  store i64 %3308, i64* %RAX.i248, align 8
  store %struct.Memory* %loadMem_42fcfe, %struct.Memory** %MEMORY
  %loadMem_42fd02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3310 = getelementptr inbounds %struct.GPR, %struct.GPR* %3309, i32 0, i32 33
  %3311 = getelementptr inbounds %struct.Reg, %struct.Reg* %3310, i32 0, i32 0
  %PC.i245 = bitcast %union.anon* %3311 to i64*
  %3312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3313 = getelementptr inbounds %struct.GPR, %struct.GPR* %3312, i32 0, i32 1
  %3314 = getelementptr inbounds %struct.Reg, %struct.Reg* %3313, i32 0, i32 0
  %RAX.i246 = bitcast %union.anon* %3314 to i64*
  %3315 = load i64, i64* %RAX.i246
  %3316 = load i64, i64* %PC.i245
  %3317 = add i64 %3316, 3
  store i64 %3317, i64* %PC.i245
  %3318 = inttoptr i64 %3315 to i64*
  %3319 = load i64, i64* %3318
  store i64 %3319, i64* %RAX.i246, align 8
  store %struct.Memory* %loadMem_42fd02, %struct.Memory** %MEMORY
  %loadMem_42fd05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3321 = getelementptr inbounds %struct.GPR, %struct.GPR* %3320, i32 0, i32 33
  %3322 = getelementptr inbounds %struct.Reg, %struct.Reg* %3321, i32 0, i32 0
  %PC.i242 = bitcast %union.anon* %3322 to i64*
  %3323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3324 = getelementptr inbounds %struct.GPR, %struct.GPR* %3323, i32 0, i32 5
  %3325 = getelementptr inbounds %struct.Reg, %struct.Reg* %3324, i32 0, i32 0
  %RCX.i243 = bitcast %union.anon* %3325 to i64*
  %3326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3327 = getelementptr inbounds %struct.GPR, %struct.GPR* %3326, i32 0, i32 15
  %3328 = getelementptr inbounds %struct.Reg, %struct.Reg* %3327, i32 0, i32 0
  %RBP.i244 = bitcast %union.anon* %3328 to i64*
  %3329 = load i64, i64* %RBP.i244
  %3330 = sub i64 %3329, 28
  %3331 = load i64, i64* %PC.i242
  %3332 = add i64 %3331, 4
  store i64 %3332, i64* %PC.i242
  %3333 = inttoptr i64 %3330 to i32*
  %3334 = load i32, i32* %3333
  %3335 = sext i32 %3334 to i64
  store i64 %3335, i64* %RCX.i243, align 8
  store %struct.Memory* %loadMem_42fd05, %struct.Memory** %MEMORY
  %loadMem_42fd09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3337 = getelementptr inbounds %struct.GPR, %struct.GPR* %3336, i32 0, i32 33
  %3338 = getelementptr inbounds %struct.Reg, %struct.Reg* %3337, i32 0, i32 0
  %PC.i239 = bitcast %union.anon* %3338 to i64*
  %3339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3340 = getelementptr inbounds %struct.GPR, %struct.GPR* %3339, i32 0, i32 1
  %3341 = getelementptr inbounds %struct.Reg, %struct.Reg* %3340, i32 0, i32 0
  %RAX.i240 = bitcast %union.anon* %3341 to i64*
  %3342 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3343 = getelementptr inbounds %struct.GPR, %struct.GPR* %3342, i32 0, i32 5
  %3344 = getelementptr inbounds %struct.Reg, %struct.Reg* %3343, i32 0, i32 0
  %RCX.i241 = bitcast %union.anon* %3344 to i64*
  %3345 = load i64, i64* %RAX.i240
  %3346 = load i64, i64* %RCX.i241
  %3347 = mul i64 %3346, 8
  %3348 = add i64 %3347, %3345
  %3349 = load i64, i64* %PC.i239
  %3350 = add i64 %3349, 4
  store i64 %3350, i64* %PC.i239
  %3351 = inttoptr i64 %3348 to i64*
  %3352 = load i64, i64* %3351
  store i64 %3352, i64* %RAX.i240, align 8
  store %struct.Memory* %loadMem_42fd09, %struct.Memory** %MEMORY
  %loadMem_42fd0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3354 = getelementptr inbounds %struct.GPR, %struct.GPR* %3353, i32 0, i32 33
  %3355 = getelementptr inbounds %struct.Reg, %struct.Reg* %3354, i32 0, i32 0
  %PC.i236 = bitcast %union.anon* %3355 to i64*
  %3356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3357 = getelementptr inbounds %struct.GPR, %struct.GPR* %3356, i32 0, i32 5
  %3358 = getelementptr inbounds %struct.Reg, %struct.Reg* %3357, i32 0, i32 0
  %RCX.i237 = bitcast %union.anon* %3358 to i64*
  %3359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3360 = getelementptr inbounds %struct.GPR, %struct.GPR* %3359, i32 0, i32 15
  %3361 = getelementptr inbounds %struct.Reg, %struct.Reg* %3360, i32 0, i32 0
  %RBP.i238 = bitcast %union.anon* %3361 to i64*
  %3362 = load i64, i64* %RBP.i238
  %3363 = sub i64 %3362, 24
  %3364 = load i64, i64* %PC.i236
  %3365 = add i64 %3364, 4
  store i64 %3365, i64* %PC.i236
  %3366 = inttoptr i64 %3363 to i32*
  %3367 = load i32, i32* %3366
  %3368 = sext i32 %3367 to i64
  store i64 %3368, i64* %RCX.i237, align 8
  store %struct.Memory* %loadMem_42fd0d, %struct.Memory** %MEMORY
  %loadMem_42fd11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3370 = getelementptr inbounds %struct.GPR, %struct.GPR* %3369, i32 0, i32 33
  %3371 = getelementptr inbounds %struct.Reg, %struct.Reg* %3370, i32 0, i32 0
  %PC.i233 = bitcast %union.anon* %3371 to i64*
  %3372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3373 = getelementptr inbounds %struct.GPR, %struct.GPR* %3372, i32 0, i32 1
  %3374 = getelementptr inbounds %struct.Reg, %struct.Reg* %3373, i32 0, i32 0
  %RAX.i234 = bitcast %union.anon* %3374 to i64*
  %3375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3376 = getelementptr inbounds %struct.GPR, %struct.GPR* %3375, i32 0, i32 5
  %3377 = getelementptr inbounds %struct.Reg, %struct.Reg* %3376, i32 0, i32 0
  %RCX.i235 = bitcast %union.anon* %3377 to i64*
  %3378 = load i64, i64* %RAX.i234
  %3379 = load i64, i64* %RCX.i235
  %3380 = add i64 %3379, %3378
  %3381 = load i64, i64* %PC.i233
  %3382 = add i64 %3381, 4
  store i64 %3382, i64* %PC.i233
  %3383 = inttoptr i64 %3380 to i8*
  store i8 0, i8* %3383
  store %struct.Memory* %loadMem_42fd11, %struct.Memory** %MEMORY
  %loadMem_42fd15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3385 = getelementptr inbounds %struct.GPR, %struct.GPR* %3384, i32 0, i32 33
  %3386 = getelementptr inbounds %struct.Reg, %struct.Reg* %3385, i32 0, i32 0
  %PC.i230 = bitcast %union.anon* %3386 to i64*
  %3387 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3388 = getelementptr inbounds %struct.GPR, %struct.GPR* %3387, i32 0, i32 1
  %3389 = getelementptr inbounds %struct.Reg, %struct.Reg* %3388, i32 0, i32 0
  %RAX.i231 = bitcast %union.anon* %3389 to i64*
  %3390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3391 = getelementptr inbounds %struct.GPR, %struct.GPR* %3390, i32 0, i32 15
  %3392 = getelementptr inbounds %struct.Reg, %struct.Reg* %3391, i32 0, i32 0
  %RBP.i232 = bitcast %union.anon* %3392 to i64*
  %3393 = load i64, i64* %RBP.i232
  %3394 = sub i64 %3393, 8
  %3395 = load i64, i64* %PC.i230
  %3396 = add i64 %3395, 4
  store i64 %3396, i64* %PC.i230
  %3397 = inttoptr i64 %3394 to i64*
  %3398 = load i64, i64* %3397
  store i64 %3398, i64* %RAX.i231, align 8
  store %struct.Memory* %loadMem_42fd15, %struct.Memory** %MEMORY
  %loadMem_42fd19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3400 = getelementptr inbounds %struct.GPR, %struct.GPR* %3399, i32 0, i32 33
  %3401 = getelementptr inbounds %struct.Reg, %struct.Reg* %3400, i32 0, i32 0
  %PC.i228 = bitcast %union.anon* %3401 to i64*
  %3402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3403 = getelementptr inbounds %struct.GPR, %struct.GPR* %3402, i32 0, i32 1
  %3404 = getelementptr inbounds %struct.Reg, %struct.Reg* %3403, i32 0, i32 0
  %RAX.i229 = bitcast %union.anon* %3404 to i64*
  %3405 = load i64, i64* %RAX.i229
  %3406 = add i64 %3405, 112
  %3407 = load i64, i64* %PC.i228
  %3408 = add i64 %3407, 5
  store i64 %3408, i64* %PC.i228
  %3409 = inttoptr i64 %3406 to i64*
  %3410 = load i64, i64* %3409
  %3411 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3411, align 1
  %3412 = trunc i64 %3410 to i32
  %3413 = and i32 %3412, 255
  %3414 = call i32 @llvm.ctpop.i32(i32 %3413)
  %3415 = trunc i32 %3414 to i8
  %3416 = and i8 %3415, 1
  %3417 = xor i8 %3416, 1
  %3418 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3417, i8* %3418, align 1
  %3419 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3419, align 1
  %3420 = icmp eq i64 %3410, 0
  %3421 = zext i1 %3420 to i8
  %3422 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3421, i8* %3422, align 1
  %3423 = lshr i64 %3410, 63
  %3424 = trunc i64 %3423 to i8
  %3425 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3424, i8* %3425, align 1
  %3426 = lshr i64 %3410, 63
  %3427 = xor i64 %3423, %3426
  %3428 = add i64 %3427, %3426
  %3429 = icmp eq i64 %3428, 2
  %3430 = zext i1 %3429 to i8
  %3431 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3430, i8* %3431, align 1
  store %struct.Memory* %loadMem_42fd19, %struct.Memory** %MEMORY
  %loadMem_42fd1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3433 = getelementptr inbounds %struct.GPR, %struct.GPR* %3432, i32 0, i32 33
  %3434 = getelementptr inbounds %struct.Reg, %struct.Reg* %3433, i32 0, i32 0
  %PC.i227 = bitcast %union.anon* %3434 to i64*
  %3435 = load i64, i64* %PC.i227
  %3436 = add i64 %3435, 53
  %3437 = load i64, i64* %PC.i227
  %3438 = add i64 %3437, 6
  %3439 = load i64, i64* %PC.i227
  %3440 = add i64 %3439, 6
  store i64 %3440, i64* %PC.i227
  %3441 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3442 = load i8, i8* %3441, align 1
  store i8 %3442, i8* %BRANCH_TAKEN, align 1
  %3443 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3444 = icmp ne i8 %3442, 0
  %3445 = select i1 %3444, i64 %3436, i64 %3438
  store i64 %3445, i64* %3443, align 8
  store %struct.Memory* %loadMem_42fd1e, %struct.Memory** %MEMORY
  %loadBr_42fd1e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42fd1e = icmp eq i8 %loadBr_42fd1e, 1
  br i1 %cmpBr_42fd1e, label %block_.L_42fd53, label %block_42fd24

block_42fd24:                                     ; preds = %block_42fcfe
  %loadMem_42fd24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3447 = getelementptr inbounds %struct.GPR, %struct.GPR* %3446, i32 0, i32 33
  %3448 = getelementptr inbounds %struct.Reg, %struct.Reg* %3447, i32 0, i32 0
  %PC.i224 = bitcast %union.anon* %3448 to i64*
  %3449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3450 = getelementptr inbounds %struct.GPR, %struct.GPR* %3449, i32 0, i32 1
  %3451 = getelementptr inbounds %struct.Reg, %struct.Reg* %3450, i32 0, i32 0
  %RAX.i225 = bitcast %union.anon* %3451 to i64*
  %3452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3453 = getelementptr inbounds %struct.GPR, %struct.GPR* %3452, i32 0, i32 15
  %3454 = getelementptr inbounds %struct.Reg, %struct.Reg* %3453, i32 0, i32 0
  %RBP.i226 = bitcast %union.anon* %3454 to i64*
  %3455 = load i64, i64* %RBP.i226
  %3456 = sub i64 %3455, 8
  %3457 = load i64, i64* %PC.i224
  %3458 = add i64 %3457, 4
  store i64 %3458, i64* %PC.i224
  %3459 = inttoptr i64 %3456 to i64*
  %3460 = load i64, i64* %3459
  store i64 %3460, i64* %RAX.i225, align 8
  store %struct.Memory* %loadMem_42fd24, %struct.Memory** %MEMORY
  %loadMem_42fd28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3462 = getelementptr inbounds %struct.GPR, %struct.GPR* %3461, i32 0, i32 33
  %3463 = getelementptr inbounds %struct.Reg, %struct.Reg* %3462, i32 0, i32 0
  %PC.i222 = bitcast %union.anon* %3463 to i64*
  %3464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3465 = getelementptr inbounds %struct.GPR, %struct.GPR* %3464, i32 0, i32 1
  %3466 = getelementptr inbounds %struct.Reg, %struct.Reg* %3465, i32 0, i32 0
  %RAX.i223 = bitcast %union.anon* %3466 to i64*
  %3467 = load i64, i64* %RAX.i223
  %3468 = add i64 %3467, 112
  %3469 = load i64, i64* %PC.i222
  %3470 = add i64 %3469, 4
  store i64 %3470, i64* %PC.i222
  %3471 = inttoptr i64 %3468 to i64*
  %3472 = load i64, i64* %3471
  store i64 %3472, i64* %RAX.i223, align 8
  store %struct.Memory* %loadMem_42fd28, %struct.Memory** %MEMORY
  %loadMem_42fd2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3474 = getelementptr inbounds %struct.GPR, %struct.GPR* %3473, i32 0, i32 33
  %3475 = getelementptr inbounds %struct.Reg, %struct.Reg* %3474, i32 0, i32 0
  %PC.i219 = bitcast %union.anon* %3475 to i64*
  %3476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3477 = getelementptr inbounds %struct.GPR, %struct.GPR* %3476, i32 0, i32 5
  %3478 = getelementptr inbounds %struct.Reg, %struct.Reg* %3477, i32 0, i32 0
  %RCX.i220 = bitcast %union.anon* %3478 to i64*
  %3479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3480 = getelementptr inbounds %struct.GPR, %struct.GPR* %3479, i32 0, i32 15
  %3481 = getelementptr inbounds %struct.Reg, %struct.Reg* %3480, i32 0, i32 0
  %RBP.i221 = bitcast %union.anon* %3481 to i64*
  %3482 = load i64, i64* %RBP.i221
  %3483 = sub i64 %3482, 28
  %3484 = load i64, i64* %PC.i219
  %3485 = add i64 %3484, 4
  store i64 %3485, i64* %PC.i219
  %3486 = inttoptr i64 %3483 to i32*
  %3487 = load i32, i32* %3486
  %3488 = sext i32 %3487 to i64
  store i64 %3488, i64* %RCX.i220, align 8
  store %struct.Memory* %loadMem_42fd2c, %struct.Memory** %MEMORY
  %loadMem_42fd30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3490 = getelementptr inbounds %struct.GPR, %struct.GPR* %3489, i32 0, i32 33
  %3491 = getelementptr inbounds %struct.Reg, %struct.Reg* %3490, i32 0, i32 0
  %PC.i216 = bitcast %union.anon* %3491 to i64*
  %3492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3493 = getelementptr inbounds %struct.GPR, %struct.GPR* %3492, i32 0, i32 1
  %3494 = getelementptr inbounds %struct.Reg, %struct.Reg* %3493, i32 0, i32 0
  %RAX.i217 = bitcast %union.anon* %3494 to i64*
  %3495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3496 = getelementptr inbounds %struct.GPR, %struct.GPR* %3495, i32 0, i32 5
  %3497 = getelementptr inbounds %struct.Reg, %struct.Reg* %3496, i32 0, i32 0
  %RCX.i218 = bitcast %union.anon* %3497 to i64*
  %3498 = load i64, i64* %RAX.i217
  %3499 = load i64, i64* %RCX.i218
  %3500 = mul i64 %3499, 8
  %3501 = add i64 %3500, %3498
  %3502 = load i64, i64* %PC.i216
  %3503 = add i64 %3502, 5
  store i64 %3503, i64* %PC.i216
  %3504 = inttoptr i64 %3501 to i64*
  %3505 = load i64, i64* %3504
  %3506 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3506, align 1
  %3507 = trunc i64 %3505 to i32
  %3508 = and i32 %3507, 255
  %3509 = call i32 @llvm.ctpop.i32(i32 %3508)
  %3510 = trunc i32 %3509 to i8
  %3511 = and i8 %3510, 1
  %3512 = xor i8 %3511, 1
  %3513 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3512, i8* %3513, align 1
  %3514 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3514, align 1
  %3515 = icmp eq i64 %3505, 0
  %3516 = zext i1 %3515 to i8
  %3517 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3516, i8* %3517, align 1
  %3518 = lshr i64 %3505, 63
  %3519 = trunc i64 %3518 to i8
  %3520 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3519, i8* %3520, align 1
  %3521 = lshr i64 %3505, 63
  %3522 = xor i64 %3518, %3521
  %3523 = add i64 %3522, %3521
  %3524 = icmp eq i64 %3523, 2
  %3525 = zext i1 %3524 to i8
  %3526 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3525, i8* %3526, align 1
  store %struct.Memory* %loadMem_42fd30, %struct.Memory** %MEMORY
  %loadMem_42fd35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3528 = getelementptr inbounds %struct.GPR, %struct.GPR* %3527, i32 0, i32 33
  %3529 = getelementptr inbounds %struct.Reg, %struct.Reg* %3528, i32 0, i32 0
  %PC.i215 = bitcast %union.anon* %3529 to i64*
  %3530 = load i64, i64* %PC.i215
  %3531 = add i64 %3530, 30
  %3532 = load i64, i64* %PC.i215
  %3533 = add i64 %3532, 6
  %3534 = load i64, i64* %PC.i215
  %3535 = add i64 %3534, 6
  store i64 %3535, i64* %PC.i215
  %3536 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3537 = load i8, i8* %3536, align 1
  store i8 %3537, i8* %BRANCH_TAKEN, align 1
  %3538 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3539 = icmp ne i8 %3537, 0
  %3540 = select i1 %3539, i64 %3531, i64 %3533
  store i64 %3540, i64* %3538, align 8
  store %struct.Memory* %loadMem_42fd35, %struct.Memory** %MEMORY
  %loadBr_42fd35 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42fd35 = icmp eq i8 %loadBr_42fd35, 1
  br i1 %cmpBr_42fd35, label %block_.L_42fd53, label %block_42fd3b

block_42fd3b:                                     ; preds = %block_42fd24
  %loadMem_42fd3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3542 = getelementptr inbounds %struct.GPR, %struct.GPR* %3541, i32 0, i32 33
  %3543 = getelementptr inbounds %struct.Reg, %struct.Reg* %3542, i32 0, i32 0
  %PC.i212 = bitcast %union.anon* %3543 to i64*
  %3544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3545 = getelementptr inbounds %struct.GPR, %struct.GPR* %3544, i32 0, i32 1
  %3546 = getelementptr inbounds %struct.Reg, %struct.Reg* %3545, i32 0, i32 0
  %RAX.i213 = bitcast %union.anon* %3546 to i64*
  %3547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3548 = getelementptr inbounds %struct.GPR, %struct.GPR* %3547, i32 0, i32 15
  %3549 = getelementptr inbounds %struct.Reg, %struct.Reg* %3548, i32 0, i32 0
  %RBP.i214 = bitcast %union.anon* %3549 to i64*
  %3550 = load i64, i64* %RBP.i214
  %3551 = sub i64 %3550, 8
  %3552 = load i64, i64* %PC.i212
  %3553 = add i64 %3552, 4
  store i64 %3553, i64* %PC.i212
  %3554 = inttoptr i64 %3551 to i64*
  %3555 = load i64, i64* %3554
  store i64 %3555, i64* %RAX.i213, align 8
  store %struct.Memory* %loadMem_42fd3b, %struct.Memory** %MEMORY
  %loadMem_42fd3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3557 = getelementptr inbounds %struct.GPR, %struct.GPR* %3556, i32 0, i32 33
  %3558 = getelementptr inbounds %struct.Reg, %struct.Reg* %3557, i32 0, i32 0
  %PC.i210 = bitcast %union.anon* %3558 to i64*
  %3559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3560 = getelementptr inbounds %struct.GPR, %struct.GPR* %3559, i32 0, i32 1
  %3561 = getelementptr inbounds %struct.Reg, %struct.Reg* %3560, i32 0, i32 0
  %RAX.i211 = bitcast %union.anon* %3561 to i64*
  %3562 = load i64, i64* %RAX.i211
  %3563 = add i64 %3562, 112
  %3564 = load i64, i64* %PC.i210
  %3565 = add i64 %3564, 4
  store i64 %3565, i64* %PC.i210
  %3566 = inttoptr i64 %3563 to i64*
  %3567 = load i64, i64* %3566
  store i64 %3567, i64* %RAX.i211, align 8
  store %struct.Memory* %loadMem_42fd3f, %struct.Memory** %MEMORY
  %loadMem_42fd43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3569 = getelementptr inbounds %struct.GPR, %struct.GPR* %3568, i32 0, i32 33
  %3570 = getelementptr inbounds %struct.Reg, %struct.Reg* %3569, i32 0, i32 0
  %PC.i207 = bitcast %union.anon* %3570 to i64*
  %3571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3572 = getelementptr inbounds %struct.GPR, %struct.GPR* %3571, i32 0, i32 5
  %3573 = getelementptr inbounds %struct.Reg, %struct.Reg* %3572, i32 0, i32 0
  %RCX.i208 = bitcast %union.anon* %3573 to i64*
  %3574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3575 = getelementptr inbounds %struct.GPR, %struct.GPR* %3574, i32 0, i32 15
  %3576 = getelementptr inbounds %struct.Reg, %struct.Reg* %3575, i32 0, i32 0
  %RBP.i209 = bitcast %union.anon* %3576 to i64*
  %3577 = load i64, i64* %RBP.i209
  %3578 = sub i64 %3577, 28
  %3579 = load i64, i64* %PC.i207
  %3580 = add i64 %3579, 4
  store i64 %3580, i64* %PC.i207
  %3581 = inttoptr i64 %3578 to i32*
  %3582 = load i32, i32* %3581
  %3583 = sext i32 %3582 to i64
  store i64 %3583, i64* %RCX.i208, align 8
  store %struct.Memory* %loadMem_42fd43, %struct.Memory** %MEMORY
  %loadMem_42fd47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3584 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3585 = getelementptr inbounds %struct.GPR, %struct.GPR* %3584, i32 0, i32 33
  %3586 = getelementptr inbounds %struct.Reg, %struct.Reg* %3585, i32 0, i32 0
  %PC.i204 = bitcast %union.anon* %3586 to i64*
  %3587 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3588 = getelementptr inbounds %struct.GPR, %struct.GPR* %3587, i32 0, i32 1
  %3589 = getelementptr inbounds %struct.Reg, %struct.Reg* %3588, i32 0, i32 0
  %RAX.i205 = bitcast %union.anon* %3589 to i64*
  %3590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3591 = getelementptr inbounds %struct.GPR, %struct.GPR* %3590, i32 0, i32 5
  %3592 = getelementptr inbounds %struct.Reg, %struct.Reg* %3591, i32 0, i32 0
  %RCX.i206 = bitcast %union.anon* %3592 to i64*
  %3593 = load i64, i64* %RAX.i205
  %3594 = load i64, i64* %RCX.i206
  %3595 = mul i64 %3594, 8
  %3596 = add i64 %3595, %3593
  %3597 = load i64, i64* %PC.i204
  %3598 = add i64 %3597, 4
  store i64 %3598, i64* %PC.i204
  %3599 = inttoptr i64 %3596 to i64*
  %3600 = load i64, i64* %3599
  store i64 %3600, i64* %RAX.i205, align 8
  store %struct.Memory* %loadMem_42fd47, %struct.Memory** %MEMORY
  %loadMem_42fd4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3602 = getelementptr inbounds %struct.GPR, %struct.GPR* %3601, i32 0, i32 33
  %3603 = getelementptr inbounds %struct.Reg, %struct.Reg* %3602, i32 0, i32 0
  %PC.i201 = bitcast %union.anon* %3603 to i64*
  %3604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3605 = getelementptr inbounds %struct.GPR, %struct.GPR* %3604, i32 0, i32 5
  %3606 = getelementptr inbounds %struct.Reg, %struct.Reg* %3605, i32 0, i32 0
  %RCX.i202 = bitcast %union.anon* %3606 to i64*
  %3607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3608 = getelementptr inbounds %struct.GPR, %struct.GPR* %3607, i32 0, i32 15
  %3609 = getelementptr inbounds %struct.Reg, %struct.Reg* %3608, i32 0, i32 0
  %RBP.i203 = bitcast %union.anon* %3609 to i64*
  %3610 = load i64, i64* %RBP.i203
  %3611 = sub i64 %3610, 24
  %3612 = load i64, i64* %PC.i201
  %3613 = add i64 %3612, 4
  store i64 %3613, i64* %PC.i201
  %3614 = inttoptr i64 %3611 to i32*
  %3615 = load i32, i32* %3614
  %3616 = sext i32 %3615 to i64
  store i64 %3616, i64* %RCX.i202, align 8
  store %struct.Memory* %loadMem_42fd4b, %struct.Memory** %MEMORY
  %loadMem_42fd4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3617 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3618 = getelementptr inbounds %struct.GPR, %struct.GPR* %3617, i32 0, i32 33
  %3619 = getelementptr inbounds %struct.Reg, %struct.Reg* %3618, i32 0, i32 0
  %PC.i198 = bitcast %union.anon* %3619 to i64*
  %3620 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3621 = getelementptr inbounds %struct.GPR, %struct.GPR* %3620, i32 0, i32 1
  %3622 = getelementptr inbounds %struct.Reg, %struct.Reg* %3621, i32 0, i32 0
  %RAX.i199 = bitcast %union.anon* %3622 to i64*
  %3623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3624 = getelementptr inbounds %struct.GPR, %struct.GPR* %3623, i32 0, i32 5
  %3625 = getelementptr inbounds %struct.Reg, %struct.Reg* %3624, i32 0, i32 0
  %RCX.i200 = bitcast %union.anon* %3625 to i64*
  %3626 = load i64, i64* %RAX.i199
  %3627 = load i64, i64* %RCX.i200
  %3628 = add i64 %3627, %3626
  %3629 = load i64, i64* %PC.i198
  %3630 = add i64 %3629, 4
  store i64 %3630, i64* %PC.i198
  %3631 = inttoptr i64 %3628 to i8*
  store i8 0, i8* %3631
  store %struct.Memory* %loadMem_42fd4f, %struct.Memory** %MEMORY
  br label %block_.L_42fd53

block_.L_42fd53:                                  ; preds = %block_42fd3b, %block_42fd24, %block_42fcfe
  %loadMem_42fd53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3632 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3633 = getelementptr inbounds %struct.GPR, %struct.GPR* %3632, i32 0, i32 33
  %3634 = getelementptr inbounds %struct.Reg, %struct.Reg* %3633, i32 0, i32 0
  %PC.i195 = bitcast %union.anon* %3634 to i64*
  %3635 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3636 = getelementptr inbounds %struct.GPR, %struct.GPR* %3635, i32 0, i32 1
  %3637 = getelementptr inbounds %struct.Reg, %struct.Reg* %3636, i32 0, i32 0
  %RAX.i196 = bitcast %union.anon* %3637 to i64*
  %3638 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3639 = getelementptr inbounds %struct.GPR, %struct.GPR* %3638, i32 0, i32 15
  %3640 = getelementptr inbounds %struct.Reg, %struct.Reg* %3639, i32 0, i32 0
  %RBP.i197 = bitcast %union.anon* %3640 to i64*
  %3641 = load i64, i64* %RBP.i197
  %3642 = sub i64 %3641, 8
  %3643 = load i64, i64* %PC.i195
  %3644 = add i64 %3643, 4
  store i64 %3644, i64* %PC.i195
  %3645 = inttoptr i64 %3642 to i64*
  %3646 = load i64, i64* %3645
  store i64 %3646, i64* %RAX.i196, align 8
  store %struct.Memory* %loadMem_42fd53, %struct.Memory** %MEMORY
  %loadMem_42fd57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3648 = getelementptr inbounds %struct.GPR, %struct.GPR* %3647, i32 0, i32 33
  %3649 = getelementptr inbounds %struct.Reg, %struct.Reg* %3648, i32 0, i32 0
  %PC.i193 = bitcast %union.anon* %3649 to i64*
  %3650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3651 = getelementptr inbounds %struct.GPR, %struct.GPR* %3650, i32 0, i32 1
  %3652 = getelementptr inbounds %struct.Reg, %struct.Reg* %3651, i32 0, i32 0
  %RAX.i194 = bitcast %union.anon* %3652 to i64*
  %3653 = load i64, i64* %RAX.i194
  %3654 = add i64 %3653, 120
  %3655 = load i64, i64* %PC.i193
  %3656 = add i64 %3655, 5
  store i64 %3656, i64* %PC.i193
  %3657 = inttoptr i64 %3654 to i64*
  %3658 = load i64, i64* %3657
  %3659 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3659, align 1
  %3660 = trunc i64 %3658 to i32
  %3661 = and i32 %3660, 255
  %3662 = call i32 @llvm.ctpop.i32(i32 %3661)
  %3663 = trunc i32 %3662 to i8
  %3664 = and i8 %3663, 1
  %3665 = xor i8 %3664, 1
  %3666 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3665, i8* %3666, align 1
  %3667 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3667, align 1
  %3668 = icmp eq i64 %3658, 0
  %3669 = zext i1 %3668 to i8
  %3670 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3669, i8* %3670, align 1
  %3671 = lshr i64 %3658, 63
  %3672 = trunc i64 %3671 to i8
  %3673 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3672, i8* %3673, align 1
  %3674 = lshr i64 %3658, 63
  %3675 = xor i64 %3671, %3674
  %3676 = add i64 %3675, %3674
  %3677 = icmp eq i64 %3676, 2
  %3678 = zext i1 %3677 to i8
  %3679 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3678, i8* %3679, align 1
  store %struct.Memory* %loadMem_42fd57, %struct.Memory** %MEMORY
  %loadMem_42fd5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3680 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3681 = getelementptr inbounds %struct.GPR, %struct.GPR* %3680, i32 0, i32 33
  %3682 = getelementptr inbounds %struct.Reg, %struct.Reg* %3681, i32 0, i32 0
  %PC.i192 = bitcast %union.anon* %3682 to i64*
  %3683 = load i64, i64* %PC.i192
  %3684 = add i64 %3683, 53
  %3685 = load i64, i64* %PC.i192
  %3686 = add i64 %3685, 6
  %3687 = load i64, i64* %PC.i192
  %3688 = add i64 %3687, 6
  store i64 %3688, i64* %PC.i192
  %3689 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3690 = load i8, i8* %3689, align 1
  store i8 %3690, i8* %BRANCH_TAKEN, align 1
  %3691 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3692 = icmp ne i8 %3690, 0
  %3693 = select i1 %3692, i64 %3684, i64 %3686
  store i64 %3693, i64* %3691, align 8
  store %struct.Memory* %loadMem_42fd5c, %struct.Memory** %MEMORY
  %loadBr_42fd5c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42fd5c = icmp eq i8 %loadBr_42fd5c, 1
  br i1 %cmpBr_42fd5c, label %block_.L_42fd91, label %block_42fd62

block_42fd62:                                     ; preds = %block_.L_42fd53
  %loadMem_42fd62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3695 = getelementptr inbounds %struct.GPR, %struct.GPR* %3694, i32 0, i32 33
  %3696 = getelementptr inbounds %struct.Reg, %struct.Reg* %3695, i32 0, i32 0
  %PC.i189 = bitcast %union.anon* %3696 to i64*
  %3697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3698 = getelementptr inbounds %struct.GPR, %struct.GPR* %3697, i32 0, i32 1
  %3699 = getelementptr inbounds %struct.Reg, %struct.Reg* %3698, i32 0, i32 0
  %RAX.i190 = bitcast %union.anon* %3699 to i64*
  %3700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3701 = getelementptr inbounds %struct.GPR, %struct.GPR* %3700, i32 0, i32 15
  %3702 = getelementptr inbounds %struct.Reg, %struct.Reg* %3701, i32 0, i32 0
  %RBP.i191 = bitcast %union.anon* %3702 to i64*
  %3703 = load i64, i64* %RBP.i191
  %3704 = sub i64 %3703, 8
  %3705 = load i64, i64* %PC.i189
  %3706 = add i64 %3705, 4
  store i64 %3706, i64* %PC.i189
  %3707 = inttoptr i64 %3704 to i64*
  %3708 = load i64, i64* %3707
  store i64 %3708, i64* %RAX.i190, align 8
  store %struct.Memory* %loadMem_42fd62, %struct.Memory** %MEMORY
  %loadMem_42fd66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3710 = getelementptr inbounds %struct.GPR, %struct.GPR* %3709, i32 0, i32 33
  %3711 = getelementptr inbounds %struct.Reg, %struct.Reg* %3710, i32 0, i32 0
  %PC.i187 = bitcast %union.anon* %3711 to i64*
  %3712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3713 = getelementptr inbounds %struct.GPR, %struct.GPR* %3712, i32 0, i32 1
  %3714 = getelementptr inbounds %struct.Reg, %struct.Reg* %3713, i32 0, i32 0
  %RAX.i188 = bitcast %union.anon* %3714 to i64*
  %3715 = load i64, i64* %RAX.i188
  %3716 = add i64 %3715, 120
  %3717 = load i64, i64* %PC.i187
  %3718 = add i64 %3717, 4
  store i64 %3718, i64* %PC.i187
  %3719 = inttoptr i64 %3716 to i64*
  %3720 = load i64, i64* %3719
  store i64 %3720, i64* %RAX.i188, align 8
  store %struct.Memory* %loadMem_42fd66, %struct.Memory** %MEMORY
  %loadMem_42fd6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3721 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3722 = getelementptr inbounds %struct.GPR, %struct.GPR* %3721, i32 0, i32 33
  %3723 = getelementptr inbounds %struct.Reg, %struct.Reg* %3722, i32 0, i32 0
  %PC.i184 = bitcast %union.anon* %3723 to i64*
  %3724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3725 = getelementptr inbounds %struct.GPR, %struct.GPR* %3724, i32 0, i32 5
  %3726 = getelementptr inbounds %struct.Reg, %struct.Reg* %3725, i32 0, i32 0
  %RCX.i185 = bitcast %union.anon* %3726 to i64*
  %3727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3728 = getelementptr inbounds %struct.GPR, %struct.GPR* %3727, i32 0, i32 15
  %3729 = getelementptr inbounds %struct.Reg, %struct.Reg* %3728, i32 0, i32 0
  %RBP.i186 = bitcast %union.anon* %3729 to i64*
  %3730 = load i64, i64* %RBP.i186
  %3731 = sub i64 %3730, 28
  %3732 = load i64, i64* %PC.i184
  %3733 = add i64 %3732, 4
  store i64 %3733, i64* %PC.i184
  %3734 = inttoptr i64 %3731 to i32*
  %3735 = load i32, i32* %3734
  %3736 = sext i32 %3735 to i64
  store i64 %3736, i64* %RCX.i185, align 8
  store %struct.Memory* %loadMem_42fd6a, %struct.Memory** %MEMORY
  %loadMem_42fd6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3737 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3738 = getelementptr inbounds %struct.GPR, %struct.GPR* %3737, i32 0, i32 33
  %3739 = getelementptr inbounds %struct.Reg, %struct.Reg* %3738, i32 0, i32 0
  %PC.i181 = bitcast %union.anon* %3739 to i64*
  %3740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3741 = getelementptr inbounds %struct.GPR, %struct.GPR* %3740, i32 0, i32 1
  %3742 = getelementptr inbounds %struct.Reg, %struct.Reg* %3741, i32 0, i32 0
  %RAX.i182 = bitcast %union.anon* %3742 to i64*
  %3743 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3744 = getelementptr inbounds %struct.GPR, %struct.GPR* %3743, i32 0, i32 5
  %3745 = getelementptr inbounds %struct.Reg, %struct.Reg* %3744, i32 0, i32 0
  %RCX.i183 = bitcast %union.anon* %3745 to i64*
  %3746 = load i64, i64* %RAX.i182
  %3747 = load i64, i64* %RCX.i183
  %3748 = mul i64 %3747, 8
  %3749 = add i64 %3748, %3746
  %3750 = load i64, i64* %PC.i181
  %3751 = add i64 %3750, 5
  store i64 %3751, i64* %PC.i181
  %3752 = inttoptr i64 %3749 to i64*
  %3753 = load i64, i64* %3752
  %3754 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3754, align 1
  %3755 = trunc i64 %3753 to i32
  %3756 = and i32 %3755, 255
  %3757 = call i32 @llvm.ctpop.i32(i32 %3756)
  %3758 = trunc i32 %3757 to i8
  %3759 = and i8 %3758, 1
  %3760 = xor i8 %3759, 1
  %3761 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3760, i8* %3761, align 1
  %3762 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3762, align 1
  %3763 = icmp eq i64 %3753, 0
  %3764 = zext i1 %3763 to i8
  %3765 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3764, i8* %3765, align 1
  %3766 = lshr i64 %3753, 63
  %3767 = trunc i64 %3766 to i8
  %3768 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3767, i8* %3768, align 1
  %3769 = lshr i64 %3753, 63
  %3770 = xor i64 %3766, %3769
  %3771 = add i64 %3770, %3769
  %3772 = icmp eq i64 %3771, 2
  %3773 = zext i1 %3772 to i8
  %3774 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3773, i8* %3774, align 1
  store %struct.Memory* %loadMem_42fd6e, %struct.Memory** %MEMORY
  %loadMem_42fd73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3775 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3776 = getelementptr inbounds %struct.GPR, %struct.GPR* %3775, i32 0, i32 33
  %3777 = getelementptr inbounds %struct.Reg, %struct.Reg* %3776, i32 0, i32 0
  %PC.i180 = bitcast %union.anon* %3777 to i64*
  %3778 = load i64, i64* %PC.i180
  %3779 = add i64 %3778, 30
  %3780 = load i64, i64* %PC.i180
  %3781 = add i64 %3780, 6
  %3782 = load i64, i64* %PC.i180
  %3783 = add i64 %3782, 6
  store i64 %3783, i64* %PC.i180
  %3784 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3785 = load i8, i8* %3784, align 1
  store i8 %3785, i8* %BRANCH_TAKEN, align 1
  %3786 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3787 = icmp ne i8 %3785, 0
  %3788 = select i1 %3787, i64 %3779, i64 %3781
  store i64 %3788, i64* %3786, align 8
  store %struct.Memory* %loadMem_42fd73, %struct.Memory** %MEMORY
  %loadBr_42fd73 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42fd73 = icmp eq i8 %loadBr_42fd73, 1
  br i1 %cmpBr_42fd73, label %block_.L_42fd91, label %block_42fd79

block_42fd79:                                     ; preds = %block_42fd62
  %loadMem_42fd79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3790 = getelementptr inbounds %struct.GPR, %struct.GPR* %3789, i32 0, i32 33
  %3791 = getelementptr inbounds %struct.Reg, %struct.Reg* %3790, i32 0, i32 0
  %PC.i177 = bitcast %union.anon* %3791 to i64*
  %3792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3793 = getelementptr inbounds %struct.GPR, %struct.GPR* %3792, i32 0, i32 1
  %3794 = getelementptr inbounds %struct.Reg, %struct.Reg* %3793, i32 0, i32 0
  %RAX.i178 = bitcast %union.anon* %3794 to i64*
  %3795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3796 = getelementptr inbounds %struct.GPR, %struct.GPR* %3795, i32 0, i32 15
  %3797 = getelementptr inbounds %struct.Reg, %struct.Reg* %3796, i32 0, i32 0
  %RBP.i179 = bitcast %union.anon* %3797 to i64*
  %3798 = load i64, i64* %RBP.i179
  %3799 = sub i64 %3798, 8
  %3800 = load i64, i64* %PC.i177
  %3801 = add i64 %3800, 4
  store i64 %3801, i64* %PC.i177
  %3802 = inttoptr i64 %3799 to i64*
  %3803 = load i64, i64* %3802
  store i64 %3803, i64* %RAX.i178, align 8
  store %struct.Memory* %loadMem_42fd79, %struct.Memory** %MEMORY
  %loadMem_42fd7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3804 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3805 = getelementptr inbounds %struct.GPR, %struct.GPR* %3804, i32 0, i32 33
  %3806 = getelementptr inbounds %struct.Reg, %struct.Reg* %3805, i32 0, i32 0
  %PC.i175 = bitcast %union.anon* %3806 to i64*
  %3807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3808 = getelementptr inbounds %struct.GPR, %struct.GPR* %3807, i32 0, i32 1
  %3809 = getelementptr inbounds %struct.Reg, %struct.Reg* %3808, i32 0, i32 0
  %RAX.i176 = bitcast %union.anon* %3809 to i64*
  %3810 = load i64, i64* %RAX.i176
  %3811 = add i64 %3810, 120
  %3812 = load i64, i64* %PC.i175
  %3813 = add i64 %3812, 4
  store i64 %3813, i64* %PC.i175
  %3814 = inttoptr i64 %3811 to i64*
  %3815 = load i64, i64* %3814
  store i64 %3815, i64* %RAX.i176, align 8
  store %struct.Memory* %loadMem_42fd7d, %struct.Memory** %MEMORY
  %loadMem_42fd81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3816 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3817 = getelementptr inbounds %struct.GPR, %struct.GPR* %3816, i32 0, i32 33
  %3818 = getelementptr inbounds %struct.Reg, %struct.Reg* %3817, i32 0, i32 0
  %PC.i172 = bitcast %union.anon* %3818 to i64*
  %3819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3820 = getelementptr inbounds %struct.GPR, %struct.GPR* %3819, i32 0, i32 5
  %3821 = getelementptr inbounds %struct.Reg, %struct.Reg* %3820, i32 0, i32 0
  %RCX.i173 = bitcast %union.anon* %3821 to i64*
  %3822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3823 = getelementptr inbounds %struct.GPR, %struct.GPR* %3822, i32 0, i32 15
  %3824 = getelementptr inbounds %struct.Reg, %struct.Reg* %3823, i32 0, i32 0
  %RBP.i174 = bitcast %union.anon* %3824 to i64*
  %3825 = load i64, i64* %RBP.i174
  %3826 = sub i64 %3825, 28
  %3827 = load i64, i64* %PC.i172
  %3828 = add i64 %3827, 4
  store i64 %3828, i64* %PC.i172
  %3829 = inttoptr i64 %3826 to i32*
  %3830 = load i32, i32* %3829
  %3831 = sext i32 %3830 to i64
  store i64 %3831, i64* %RCX.i173, align 8
  store %struct.Memory* %loadMem_42fd81, %struct.Memory** %MEMORY
  %loadMem_42fd85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3833 = getelementptr inbounds %struct.GPR, %struct.GPR* %3832, i32 0, i32 33
  %3834 = getelementptr inbounds %struct.Reg, %struct.Reg* %3833, i32 0, i32 0
  %PC.i169 = bitcast %union.anon* %3834 to i64*
  %3835 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3836 = getelementptr inbounds %struct.GPR, %struct.GPR* %3835, i32 0, i32 1
  %3837 = getelementptr inbounds %struct.Reg, %struct.Reg* %3836, i32 0, i32 0
  %RAX.i170 = bitcast %union.anon* %3837 to i64*
  %3838 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3839 = getelementptr inbounds %struct.GPR, %struct.GPR* %3838, i32 0, i32 5
  %3840 = getelementptr inbounds %struct.Reg, %struct.Reg* %3839, i32 0, i32 0
  %RCX.i171 = bitcast %union.anon* %3840 to i64*
  %3841 = load i64, i64* %RAX.i170
  %3842 = load i64, i64* %RCX.i171
  %3843 = mul i64 %3842, 8
  %3844 = add i64 %3843, %3841
  %3845 = load i64, i64* %PC.i169
  %3846 = add i64 %3845, 4
  store i64 %3846, i64* %PC.i169
  %3847 = inttoptr i64 %3844 to i64*
  %3848 = load i64, i64* %3847
  store i64 %3848, i64* %RAX.i170, align 8
  store %struct.Memory* %loadMem_42fd85, %struct.Memory** %MEMORY
  %loadMem_42fd89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3849 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3850 = getelementptr inbounds %struct.GPR, %struct.GPR* %3849, i32 0, i32 33
  %3851 = getelementptr inbounds %struct.Reg, %struct.Reg* %3850, i32 0, i32 0
  %PC.i166 = bitcast %union.anon* %3851 to i64*
  %3852 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3853 = getelementptr inbounds %struct.GPR, %struct.GPR* %3852, i32 0, i32 5
  %3854 = getelementptr inbounds %struct.Reg, %struct.Reg* %3853, i32 0, i32 0
  %RCX.i167 = bitcast %union.anon* %3854 to i64*
  %3855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3856 = getelementptr inbounds %struct.GPR, %struct.GPR* %3855, i32 0, i32 15
  %3857 = getelementptr inbounds %struct.Reg, %struct.Reg* %3856, i32 0, i32 0
  %RBP.i168 = bitcast %union.anon* %3857 to i64*
  %3858 = load i64, i64* %RBP.i168
  %3859 = sub i64 %3858, 24
  %3860 = load i64, i64* %PC.i166
  %3861 = add i64 %3860, 4
  store i64 %3861, i64* %PC.i166
  %3862 = inttoptr i64 %3859 to i32*
  %3863 = load i32, i32* %3862
  %3864 = sext i32 %3863 to i64
  store i64 %3864, i64* %RCX.i167, align 8
  store %struct.Memory* %loadMem_42fd89, %struct.Memory** %MEMORY
  %loadMem_42fd8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3866 = getelementptr inbounds %struct.GPR, %struct.GPR* %3865, i32 0, i32 33
  %3867 = getelementptr inbounds %struct.Reg, %struct.Reg* %3866, i32 0, i32 0
  %PC.i163 = bitcast %union.anon* %3867 to i64*
  %3868 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3869 = getelementptr inbounds %struct.GPR, %struct.GPR* %3868, i32 0, i32 1
  %3870 = getelementptr inbounds %struct.Reg, %struct.Reg* %3869, i32 0, i32 0
  %RAX.i164 = bitcast %union.anon* %3870 to i64*
  %3871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3872 = getelementptr inbounds %struct.GPR, %struct.GPR* %3871, i32 0, i32 5
  %3873 = getelementptr inbounds %struct.Reg, %struct.Reg* %3872, i32 0, i32 0
  %RCX.i165 = bitcast %union.anon* %3873 to i64*
  %3874 = load i64, i64* %RAX.i164
  %3875 = load i64, i64* %RCX.i165
  %3876 = add i64 %3875, %3874
  %3877 = load i64, i64* %PC.i163
  %3878 = add i64 %3877, 4
  store i64 %3878, i64* %PC.i163
  %3879 = inttoptr i64 %3876 to i8*
  store i8 0, i8* %3879
  store %struct.Memory* %loadMem_42fd8d, %struct.Memory** %MEMORY
  br label %block_.L_42fd91

block_.L_42fd91:                                  ; preds = %block_42fd79, %block_42fd62, %block_.L_42fd53
  %loadMem_42fd91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3881 = getelementptr inbounds %struct.GPR, %struct.GPR* %3880, i32 0, i32 33
  %3882 = getelementptr inbounds %struct.Reg, %struct.Reg* %3881, i32 0, i32 0
  %PC.i161 = bitcast %union.anon* %3882 to i64*
  %3883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3884 = getelementptr inbounds %struct.GPR, %struct.GPR* %3883, i32 0, i32 15
  %3885 = getelementptr inbounds %struct.Reg, %struct.Reg* %3884, i32 0, i32 0
  %RBP.i162 = bitcast %union.anon* %3885 to i64*
  %3886 = load i64, i64* %RBP.i162
  %3887 = sub i64 %3886, 32
  %3888 = load i64, i64* %PC.i161
  %3889 = add i64 %3888, 7
  store i64 %3889, i64* %PC.i161
  %3890 = inttoptr i64 %3887 to i32*
  store i32 0, i32* %3890
  store %struct.Memory* %loadMem_42fd91, %struct.Memory** %MEMORY
  br label %block_.L_42fd98

block_.L_42fd98:                                  ; preds = %block_.L_42fdf5, %block_.L_42fd91
  %loadMem_42fd98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3891 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3892 = getelementptr inbounds %struct.GPR, %struct.GPR* %3891, i32 0, i32 33
  %3893 = getelementptr inbounds %struct.Reg, %struct.Reg* %3892, i32 0, i32 0
  %PC.i158 = bitcast %union.anon* %3893 to i64*
  %3894 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3895 = getelementptr inbounds %struct.GPR, %struct.GPR* %3894, i32 0, i32 1
  %3896 = getelementptr inbounds %struct.Reg, %struct.Reg* %3895, i32 0, i32 0
  %RAX.i159 = bitcast %union.anon* %3896 to i64*
  %3897 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3898 = getelementptr inbounds %struct.GPR, %struct.GPR* %3897, i32 0, i32 15
  %3899 = getelementptr inbounds %struct.Reg, %struct.Reg* %3898, i32 0, i32 0
  %RBP.i160 = bitcast %union.anon* %3899 to i64*
  %3900 = load i64, i64* %RBP.i160
  %3901 = sub i64 %3900, 32
  %3902 = load i64, i64* %PC.i158
  %3903 = add i64 %3902, 3
  store i64 %3903, i64* %PC.i158
  %3904 = inttoptr i64 %3901 to i32*
  %3905 = load i32, i32* %3904
  %3906 = zext i32 %3905 to i64
  store i64 %3906, i64* %RAX.i159, align 8
  store %struct.Memory* %loadMem_42fd98, %struct.Memory** %MEMORY
  %loadMem_42fd9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3908 = getelementptr inbounds %struct.GPR, %struct.GPR* %3907, i32 0, i32 33
  %3909 = getelementptr inbounds %struct.Reg, %struct.Reg* %3908, i32 0, i32 0
  %PC.i155 = bitcast %union.anon* %3909 to i64*
  %3910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3911 = getelementptr inbounds %struct.GPR, %struct.GPR* %3910, i32 0, i32 5
  %3912 = getelementptr inbounds %struct.Reg, %struct.Reg* %3911, i32 0, i32 0
  %RCX.i156 = bitcast %union.anon* %3912 to i64*
  %3913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3914 = getelementptr inbounds %struct.GPR, %struct.GPR* %3913, i32 0, i32 15
  %3915 = getelementptr inbounds %struct.Reg, %struct.Reg* %3914, i32 0, i32 0
  %RBP.i157 = bitcast %union.anon* %3915 to i64*
  %3916 = load i64, i64* %RBP.i157
  %3917 = sub i64 %3916, 8
  %3918 = load i64, i64* %PC.i155
  %3919 = add i64 %3918, 4
  store i64 %3919, i64* %PC.i155
  %3920 = inttoptr i64 %3917 to i64*
  %3921 = load i64, i64* %3920
  store i64 %3921, i64* %RCX.i156, align 8
  store %struct.Memory* %loadMem_42fd9b, %struct.Memory** %MEMORY
  %loadMem_42fd9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3922 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3923 = getelementptr inbounds %struct.GPR, %struct.GPR* %3922, i32 0, i32 33
  %3924 = getelementptr inbounds %struct.Reg, %struct.Reg* %3923, i32 0, i32 0
  %PC.i152 = bitcast %union.anon* %3924 to i64*
  %3925 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3926 = getelementptr inbounds %struct.GPR, %struct.GPR* %3925, i32 0, i32 1
  %3927 = getelementptr inbounds %struct.Reg, %struct.Reg* %3926, i32 0, i32 0
  %EAX.i153 = bitcast %union.anon* %3927 to i32*
  %3928 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3929 = getelementptr inbounds %struct.GPR, %struct.GPR* %3928, i32 0, i32 5
  %3930 = getelementptr inbounds %struct.Reg, %struct.Reg* %3929, i32 0, i32 0
  %RCX.i154 = bitcast %union.anon* %3930 to i64*
  %3931 = load i32, i32* %EAX.i153
  %3932 = zext i32 %3931 to i64
  %3933 = load i64, i64* %RCX.i154
  %3934 = add i64 %3933, 304
  %3935 = load i64, i64* %PC.i152
  %3936 = add i64 %3935, 6
  store i64 %3936, i64* %PC.i152
  %3937 = inttoptr i64 %3934 to i32*
  %3938 = load i32, i32* %3937
  %3939 = sub i32 %3931, %3938
  %3940 = icmp ult i32 %3931, %3938
  %3941 = zext i1 %3940 to i8
  %3942 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3941, i8* %3942, align 1
  %3943 = and i32 %3939, 255
  %3944 = call i32 @llvm.ctpop.i32(i32 %3943)
  %3945 = trunc i32 %3944 to i8
  %3946 = and i8 %3945, 1
  %3947 = xor i8 %3946, 1
  %3948 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3947, i8* %3948, align 1
  %3949 = xor i32 %3938, %3931
  %3950 = xor i32 %3949, %3939
  %3951 = lshr i32 %3950, 4
  %3952 = trunc i32 %3951 to i8
  %3953 = and i8 %3952, 1
  %3954 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3953, i8* %3954, align 1
  %3955 = icmp eq i32 %3939, 0
  %3956 = zext i1 %3955 to i8
  %3957 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3956, i8* %3957, align 1
  %3958 = lshr i32 %3939, 31
  %3959 = trunc i32 %3958 to i8
  %3960 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3959, i8* %3960, align 1
  %3961 = lshr i32 %3931, 31
  %3962 = lshr i32 %3938, 31
  %3963 = xor i32 %3962, %3961
  %3964 = xor i32 %3958, %3961
  %3965 = add i32 %3964, %3963
  %3966 = icmp eq i32 %3965, 2
  %3967 = zext i1 %3966 to i8
  %3968 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3967, i8* %3968, align 1
  store %struct.Memory* %loadMem_42fd9f, %struct.Memory** %MEMORY
  %loadMem_42fda5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3969 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3970 = getelementptr inbounds %struct.GPR, %struct.GPR* %3969, i32 0, i32 33
  %3971 = getelementptr inbounds %struct.Reg, %struct.Reg* %3970, i32 0, i32 0
  %PC.i151 = bitcast %union.anon* %3971 to i64*
  %3972 = load i64, i64* %PC.i151
  %3973 = add i64 %3972, 94
  %3974 = load i64, i64* %PC.i151
  %3975 = add i64 %3974, 6
  %3976 = load i64, i64* %PC.i151
  %3977 = add i64 %3976, 6
  store i64 %3977, i64* %PC.i151
  %3978 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3979 = load i8, i8* %3978, align 1
  %3980 = icmp ne i8 %3979, 0
  %3981 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3982 = load i8, i8* %3981, align 1
  %3983 = icmp ne i8 %3982, 0
  %3984 = xor i1 %3980, %3983
  %3985 = xor i1 %3984, true
  %3986 = zext i1 %3985 to i8
  store i8 %3986, i8* %BRANCH_TAKEN, align 1
  %3987 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3988 = select i1 %3984, i64 %3975, i64 %3973
  store i64 %3988, i64* %3987, align 8
  store %struct.Memory* %loadMem_42fda5, %struct.Memory** %MEMORY
  %loadBr_42fda5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42fda5 = icmp eq i8 %loadBr_42fda5, 1
  br i1 %cmpBr_42fda5, label %block_.L_42fe03, label %block_42fdab

block_42fdab:                                     ; preds = %block_.L_42fd98
  %loadMem_42fdab = load %struct.Memory*, %struct.Memory** %MEMORY
  %3989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3990 = getelementptr inbounds %struct.GPR, %struct.GPR* %3989, i32 0, i32 33
  %3991 = getelementptr inbounds %struct.Reg, %struct.Reg* %3990, i32 0, i32 0
  %PC.i148 = bitcast %union.anon* %3991 to i64*
  %3992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3993 = getelementptr inbounds %struct.GPR, %struct.GPR* %3992, i32 0, i32 1
  %3994 = getelementptr inbounds %struct.Reg, %struct.Reg* %3993, i32 0, i32 0
  %RAX.i149 = bitcast %union.anon* %3994 to i64*
  %3995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3996 = getelementptr inbounds %struct.GPR, %struct.GPR* %3995, i32 0, i32 15
  %3997 = getelementptr inbounds %struct.Reg, %struct.Reg* %3996, i32 0, i32 0
  %RBP.i150 = bitcast %union.anon* %3997 to i64*
  %3998 = load i64, i64* %RBP.i150
  %3999 = sub i64 %3998, 8
  %4000 = load i64, i64* %PC.i148
  %4001 = add i64 %4000, 4
  store i64 %4001, i64* %PC.i148
  %4002 = inttoptr i64 %3999 to i64*
  %4003 = load i64, i64* %4002
  store i64 %4003, i64* %RAX.i149, align 8
  store %struct.Memory* %loadMem_42fdab, %struct.Memory** %MEMORY
  %loadMem_42fdaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %4004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4005 = getelementptr inbounds %struct.GPR, %struct.GPR* %4004, i32 0, i32 33
  %4006 = getelementptr inbounds %struct.Reg, %struct.Reg* %4005, i32 0, i32 0
  %PC.i146 = bitcast %union.anon* %4006 to i64*
  %4007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4008 = getelementptr inbounds %struct.GPR, %struct.GPR* %4007, i32 0, i32 1
  %4009 = getelementptr inbounds %struct.Reg, %struct.Reg* %4008, i32 0, i32 0
  %RAX.i147 = bitcast %union.anon* %4009 to i64*
  %4010 = load i64, i64* %RAX.i147
  %4011 = add i64 %4010, 288
  %4012 = load i64, i64* %PC.i146
  %4013 = add i64 %4012, 7
  store i64 %4013, i64* %PC.i146
  %4014 = inttoptr i64 %4011 to i64*
  %4015 = load i64, i64* %4014
  store i64 %4015, i64* %RAX.i147, align 8
  store %struct.Memory* %loadMem_42fdaf, %struct.Memory** %MEMORY
  %loadMem_42fdb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4016 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4017 = getelementptr inbounds %struct.GPR, %struct.GPR* %4016, i32 0, i32 33
  %4018 = getelementptr inbounds %struct.Reg, %struct.Reg* %4017, i32 0, i32 0
  %PC.i143 = bitcast %union.anon* %4018 to i64*
  %4019 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4020 = getelementptr inbounds %struct.GPR, %struct.GPR* %4019, i32 0, i32 5
  %4021 = getelementptr inbounds %struct.Reg, %struct.Reg* %4020, i32 0, i32 0
  %RCX.i144 = bitcast %union.anon* %4021 to i64*
  %4022 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4023 = getelementptr inbounds %struct.GPR, %struct.GPR* %4022, i32 0, i32 15
  %4024 = getelementptr inbounds %struct.Reg, %struct.Reg* %4023, i32 0, i32 0
  %RBP.i145 = bitcast %union.anon* %4024 to i64*
  %4025 = load i64, i64* %RBP.i145
  %4026 = sub i64 %4025, 32
  %4027 = load i64, i64* %PC.i143
  %4028 = add i64 %4027, 4
  store i64 %4028, i64* %PC.i143
  %4029 = inttoptr i64 %4026 to i32*
  %4030 = load i32, i32* %4029
  %4031 = sext i32 %4030 to i64
  store i64 %4031, i64* %RCX.i144, align 8
  store %struct.Memory* %loadMem_42fdb6, %struct.Memory** %MEMORY
  %loadMem_42fdba = load %struct.Memory*, %struct.Memory** %MEMORY
  %4032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4033 = getelementptr inbounds %struct.GPR, %struct.GPR* %4032, i32 0, i32 33
  %4034 = getelementptr inbounds %struct.Reg, %struct.Reg* %4033, i32 0, i32 0
  %PC.i140 = bitcast %union.anon* %4034 to i64*
  %4035 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4036 = getelementptr inbounds %struct.GPR, %struct.GPR* %4035, i32 0, i32 1
  %4037 = getelementptr inbounds %struct.Reg, %struct.Reg* %4036, i32 0, i32 0
  %RAX.i141 = bitcast %union.anon* %4037 to i64*
  %4038 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4039 = getelementptr inbounds %struct.GPR, %struct.GPR* %4038, i32 0, i32 5
  %4040 = getelementptr inbounds %struct.Reg, %struct.Reg* %4039, i32 0, i32 0
  %RCX.i142 = bitcast %union.anon* %4040 to i64*
  %4041 = load i64, i64* %RAX.i141
  %4042 = load i64, i64* %RCX.i142
  %4043 = mul i64 %4042, 8
  %4044 = add i64 %4043, %4041
  %4045 = load i64, i64* %PC.i140
  %4046 = add i64 %4045, 4
  store i64 %4046, i64* %PC.i140
  %4047 = inttoptr i64 %4044 to i64*
  %4048 = load i64, i64* %4047
  store i64 %4048, i64* %RAX.i141, align 8
  store %struct.Memory* %loadMem_42fdba, %struct.Memory** %MEMORY
  %loadMem_42fdbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %4049 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4050 = getelementptr inbounds %struct.GPR, %struct.GPR* %4049, i32 0, i32 33
  %4051 = getelementptr inbounds %struct.Reg, %struct.Reg* %4050, i32 0, i32 0
  %PC.i137 = bitcast %union.anon* %4051 to i64*
  %4052 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4053 = getelementptr inbounds %struct.GPR, %struct.GPR* %4052, i32 0, i32 5
  %4054 = getelementptr inbounds %struct.Reg, %struct.Reg* %4053, i32 0, i32 0
  %RCX.i138 = bitcast %union.anon* %4054 to i64*
  %4055 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4056 = getelementptr inbounds %struct.GPR, %struct.GPR* %4055, i32 0, i32 15
  %4057 = getelementptr inbounds %struct.Reg, %struct.Reg* %4056, i32 0, i32 0
  %RBP.i139 = bitcast %union.anon* %4057 to i64*
  %4058 = load i64, i64* %RBP.i139
  %4059 = sub i64 %4058, 28
  %4060 = load i64, i64* %PC.i137
  %4061 = add i64 %4060, 4
  store i64 %4061, i64* %PC.i137
  %4062 = inttoptr i64 %4059 to i32*
  %4063 = load i32, i32* %4062
  %4064 = sext i32 %4063 to i64
  store i64 %4064, i64* %RCX.i138, align 8
  store %struct.Memory* %loadMem_42fdbe, %struct.Memory** %MEMORY
  %loadMem_42fdc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4065 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4066 = getelementptr inbounds %struct.GPR, %struct.GPR* %4065, i32 0, i32 33
  %4067 = getelementptr inbounds %struct.Reg, %struct.Reg* %4066, i32 0, i32 0
  %PC.i134 = bitcast %union.anon* %4067 to i64*
  %4068 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4069 = getelementptr inbounds %struct.GPR, %struct.GPR* %4068, i32 0, i32 1
  %4070 = getelementptr inbounds %struct.Reg, %struct.Reg* %4069, i32 0, i32 0
  %RAX.i135 = bitcast %union.anon* %4070 to i64*
  %4071 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4072 = getelementptr inbounds %struct.GPR, %struct.GPR* %4071, i32 0, i32 5
  %4073 = getelementptr inbounds %struct.Reg, %struct.Reg* %4072, i32 0, i32 0
  %RCX.i136 = bitcast %union.anon* %4073 to i64*
  %4074 = load i64, i64* %RAX.i135
  %4075 = load i64, i64* %RCX.i136
  %4076 = mul i64 %4075, 8
  %4077 = add i64 %4076, %4074
  %4078 = load i64, i64* %PC.i134
  %4079 = add i64 %4078, 5
  store i64 %4079, i64* %PC.i134
  %4080 = inttoptr i64 %4077 to i64*
  %4081 = load i64, i64* %4080
  %4082 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4082, align 1
  %4083 = trunc i64 %4081 to i32
  %4084 = and i32 %4083, 255
  %4085 = call i32 @llvm.ctpop.i32(i32 %4084)
  %4086 = trunc i32 %4085 to i8
  %4087 = and i8 %4086, 1
  %4088 = xor i8 %4087, 1
  %4089 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4088, i8* %4089, align 1
  %4090 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4090, align 1
  %4091 = icmp eq i64 %4081, 0
  %4092 = zext i1 %4091 to i8
  %4093 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4092, i8* %4093, align 1
  %4094 = lshr i64 %4081, 63
  %4095 = trunc i64 %4094 to i8
  %4096 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4095, i8* %4096, align 1
  %4097 = lshr i64 %4081, 63
  %4098 = xor i64 %4094, %4097
  %4099 = add i64 %4098, %4097
  %4100 = icmp eq i64 %4099, 2
  %4101 = zext i1 %4100 to i8
  %4102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4101, i8* %4102, align 1
  store %struct.Memory* %loadMem_42fdc2, %struct.Memory** %MEMORY
  %loadMem_42fdc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4104 = getelementptr inbounds %struct.GPR, %struct.GPR* %4103, i32 0, i32 33
  %4105 = getelementptr inbounds %struct.Reg, %struct.Reg* %4104, i32 0, i32 0
  %PC.i133 = bitcast %union.anon* %4105 to i64*
  %4106 = load i64, i64* %PC.i133
  %4107 = add i64 %4106, 41
  %4108 = load i64, i64* %PC.i133
  %4109 = add i64 %4108, 6
  %4110 = load i64, i64* %PC.i133
  %4111 = add i64 %4110, 6
  store i64 %4111, i64* %PC.i133
  %4112 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4113 = load i8, i8* %4112, align 1
  store i8 %4113, i8* %BRANCH_TAKEN, align 1
  %4114 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4115 = icmp ne i8 %4113, 0
  %4116 = select i1 %4115, i64 %4107, i64 %4109
  store i64 %4116, i64* %4114, align 8
  store %struct.Memory* %loadMem_42fdc7, %struct.Memory** %MEMORY
  %loadBr_42fdc7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42fdc7 = icmp eq i8 %loadBr_42fdc7, 1
  br i1 %cmpBr_42fdc7, label %block_.L_42fdf0, label %block_42fdcd

block_42fdcd:                                     ; preds = %block_42fdab
  %loadMem_42fdcd = load %struct.Memory*, %struct.Memory** %MEMORY
  %4117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4118 = getelementptr inbounds %struct.GPR, %struct.GPR* %4117, i32 0, i32 33
  %4119 = getelementptr inbounds %struct.Reg, %struct.Reg* %4118, i32 0, i32 0
  %PC.i130 = bitcast %union.anon* %4119 to i64*
  %4120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4121 = getelementptr inbounds %struct.GPR, %struct.GPR* %4120, i32 0, i32 1
  %4122 = getelementptr inbounds %struct.Reg, %struct.Reg* %4121, i32 0, i32 0
  %RAX.i131 = bitcast %union.anon* %4122 to i64*
  %4123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4124 = getelementptr inbounds %struct.GPR, %struct.GPR* %4123, i32 0, i32 15
  %4125 = getelementptr inbounds %struct.Reg, %struct.Reg* %4124, i32 0, i32 0
  %RBP.i132 = bitcast %union.anon* %4125 to i64*
  %4126 = load i64, i64* %RBP.i132
  %4127 = sub i64 %4126, 8
  %4128 = load i64, i64* %PC.i130
  %4129 = add i64 %4128, 4
  store i64 %4129, i64* %PC.i130
  %4130 = inttoptr i64 %4127 to i64*
  %4131 = load i64, i64* %4130
  store i64 %4131, i64* %RAX.i131, align 8
  store %struct.Memory* %loadMem_42fdcd, %struct.Memory** %MEMORY
  %loadMem_42fdd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4133 = getelementptr inbounds %struct.GPR, %struct.GPR* %4132, i32 0, i32 33
  %4134 = getelementptr inbounds %struct.Reg, %struct.Reg* %4133, i32 0, i32 0
  %PC.i128 = bitcast %union.anon* %4134 to i64*
  %4135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4136 = getelementptr inbounds %struct.GPR, %struct.GPR* %4135, i32 0, i32 1
  %4137 = getelementptr inbounds %struct.Reg, %struct.Reg* %4136, i32 0, i32 0
  %RAX.i129 = bitcast %union.anon* %4137 to i64*
  %4138 = load i64, i64* %RAX.i129
  %4139 = add i64 %4138, 288
  %4140 = load i64, i64* %PC.i128
  %4141 = add i64 %4140, 7
  store i64 %4141, i64* %PC.i128
  %4142 = inttoptr i64 %4139 to i64*
  %4143 = load i64, i64* %4142
  store i64 %4143, i64* %RAX.i129, align 8
  store %struct.Memory* %loadMem_42fdd1, %struct.Memory** %MEMORY
  %loadMem_42fdd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4145 = getelementptr inbounds %struct.GPR, %struct.GPR* %4144, i32 0, i32 33
  %4146 = getelementptr inbounds %struct.Reg, %struct.Reg* %4145, i32 0, i32 0
  %PC.i125 = bitcast %union.anon* %4146 to i64*
  %4147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4148 = getelementptr inbounds %struct.GPR, %struct.GPR* %4147, i32 0, i32 5
  %4149 = getelementptr inbounds %struct.Reg, %struct.Reg* %4148, i32 0, i32 0
  %RCX.i126 = bitcast %union.anon* %4149 to i64*
  %4150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4151 = getelementptr inbounds %struct.GPR, %struct.GPR* %4150, i32 0, i32 15
  %4152 = getelementptr inbounds %struct.Reg, %struct.Reg* %4151, i32 0, i32 0
  %RBP.i127 = bitcast %union.anon* %4152 to i64*
  %4153 = load i64, i64* %RBP.i127
  %4154 = sub i64 %4153, 32
  %4155 = load i64, i64* %PC.i125
  %4156 = add i64 %4155, 4
  store i64 %4156, i64* %PC.i125
  %4157 = inttoptr i64 %4154 to i32*
  %4158 = load i32, i32* %4157
  %4159 = sext i32 %4158 to i64
  store i64 %4159, i64* %RCX.i126, align 8
  store %struct.Memory* %loadMem_42fdd8, %struct.Memory** %MEMORY
  %loadMem_42fddc = load %struct.Memory*, %struct.Memory** %MEMORY
  %4160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4161 = getelementptr inbounds %struct.GPR, %struct.GPR* %4160, i32 0, i32 33
  %4162 = getelementptr inbounds %struct.Reg, %struct.Reg* %4161, i32 0, i32 0
  %PC.i122 = bitcast %union.anon* %4162 to i64*
  %4163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4164 = getelementptr inbounds %struct.GPR, %struct.GPR* %4163, i32 0, i32 1
  %4165 = getelementptr inbounds %struct.Reg, %struct.Reg* %4164, i32 0, i32 0
  %RAX.i123 = bitcast %union.anon* %4165 to i64*
  %4166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4167 = getelementptr inbounds %struct.GPR, %struct.GPR* %4166, i32 0, i32 5
  %4168 = getelementptr inbounds %struct.Reg, %struct.Reg* %4167, i32 0, i32 0
  %RCX.i124 = bitcast %union.anon* %4168 to i64*
  %4169 = load i64, i64* %RAX.i123
  %4170 = load i64, i64* %RCX.i124
  %4171 = mul i64 %4170, 8
  %4172 = add i64 %4171, %4169
  %4173 = load i64, i64* %PC.i122
  %4174 = add i64 %4173, 4
  store i64 %4174, i64* %PC.i122
  %4175 = inttoptr i64 %4172 to i64*
  %4176 = load i64, i64* %4175
  store i64 %4176, i64* %RAX.i123, align 8
  store %struct.Memory* %loadMem_42fddc, %struct.Memory** %MEMORY
  %loadMem_42fde0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4178 = getelementptr inbounds %struct.GPR, %struct.GPR* %4177, i32 0, i32 33
  %4179 = getelementptr inbounds %struct.Reg, %struct.Reg* %4178, i32 0, i32 0
  %PC.i119 = bitcast %union.anon* %4179 to i64*
  %4180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4181 = getelementptr inbounds %struct.GPR, %struct.GPR* %4180, i32 0, i32 5
  %4182 = getelementptr inbounds %struct.Reg, %struct.Reg* %4181, i32 0, i32 0
  %RCX.i120 = bitcast %union.anon* %4182 to i64*
  %4183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4184 = getelementptr inbounds %struct.GPR, %struct.GPR* %4183, i32 0, i32 15
  %4185 = getelementptr inbounds %struct.Reg, %struct.Reg* %4184, i32 0, i32 0
  %RBP.i121 = bitcast %union.anon* %4185 to i64*
  %4186 = load i64, i64* %RBP.i121
  %4187 = sub i64 %4186, 28
  %4188 = load i64, i64* %PC.i119
  %4189 = add i64 %4188, 4
  store i64 %4189, i64* %PC.i119
  %4190 = inttoptr i64 %4187 to i32*
  %4191 = load i32, i32* %4190
  %4192 = sext i32 %4191 to i64
  store i64 %4192, i64* %RCX.i120, align 8
  store %struct.Memory* %loadMem_42fde0, %struct.Memory** %MEMORY
  %loadMem_42fde4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4194 = getelementptr inbounds %struct.GPR, %struct.GPR* %4193, i32 0, i32 33
  %4195 = getelementptr inbounds %struct.Reg, %struct.Reg* %4194, i32 0, i32 0
  %PC.i116 = bitcast %union.anon* %4195 to i64*
  %4196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4197 = getelementptr inbounds %struct.GPR, %struct.GPR* %4196, i32 0, i32 1
  %4198 = getelementptr inbounds %struct.Reg, %struct.Reg* %4197, i32 0, i32 0
  %RAX.i117 = bitcast %union.anon* %4198 to i64*
  %4199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4200 = getelementptr inbounds %struct.GPR, %struct.GPR* %4199, i32 0, i32 5
  %4201 = getelementptr inbounds %struct.Reg, %struct.Reg* %4200, i32 0, i32 0
  %RCX.i118 = bitcast %union.anon* %4201 to i64*
  %4202 = load i64, i64* %RAX.i117
  %4203 = load i64, i64* %RCX.i118
  %4204 = mul i64 %4203, 8
  %4205 = add i64 %4204, %4202
  %4206 = load i64, i64* %PC.i116
  %4207 = add i64 %4206, 4
  store i64 %4207, i64* %PC.i116
  %4208 = inttoptr i64 %4205 to i64*
  %4209 = load i64, i64* %4208
  store i64 %4209, i64* %RAX.i117, align 8
  store %struct.Memory* %loadMem_42fde4, %struct.Memory** %MEMORY
  %loadMem_42fde8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4211 = getelementptr inbounds %struct.GPR, %struct.GPR* %4210, i32 0, i32 33
  %4212 = getelementptr inbounds %struct.Reg, %struct.Reg* %4211, i32 0, i32 0
  %PC.i113 = bitcast %union.anon* %4212 to i64*
  %4213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4214 = getelementptr inbounds %struct.GPR, %struct.GPR* %4213, i32 0, i32 5
  %4215 = getelementptr inbounds %struct.Reg, %struct.Reg* %4214, i32 0, i32 0
  %RCX.i114 = bitcast %union.anon* %4215 to i64*
  %4216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4217 = getelementptr inbounds %struct.GPR, %struct.GPR* %4216, i32 0, i32 15
  %4218 = getelementptr inbounds %struct.Reg, %struct.Reg* %4217, i32 0, i32 0
  %RBP.i115 = bitcast %union.anon* %4218 to i64*
  %4219 = load i64, i64* %RBP.i115
  %4220 = sub i64 %4219, 24
  %4221 = load i64, i64* %PC.i113
  %4222 = add i64 %4221, 4
  store i64 %4222, i64* %PC.i113
  %4223 = inttoptr i64 %4220 to i32*
  %4224 = load i32, i32* %4223
  %4225 = sext i32 %4224 to i64
  store i64 %4225, i64* %RCX.i114, align 8
  store %struct.Memory* %loadMem_42fde8, %struct.Memory** %MEMORY
  %loadMem_42fdec = load %struct.Memory*, %struct.Memory** %MEMORY
  %4226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4227 = getelementptr inbounds %struct.GPR, %struct.GPR* %4226, i32 0, i32 33
  %4228 = getelementptr inbounds %struct.Reg, %struct.Reg* %4227, i32 0, i32 0
  %PC.i110 = bitcast %union.anon* %4228 to i64*
  %4229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4230 = getelementptr inbounds %struct.GPR, %struct.GPR* %4229, i32 0, i32 1
  %4231 = getelementptr inbounds %struct.Reg, %struct.Reg* %4230, i32 0, i32 0
  %RAX.i111 = bitcast %union.anon* %4231 to i64*
  %4232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4233 = getelementptr inbounds %struct.GPR, %struct.GPR* %4232, i32 0, i32 5
  %4234 = getelementptr inbounds %struct.Reg, %struct.Reg* %4233, i32 0, i32 0
  %RCX.i112 = bitcast %union.anon* %4234 to i64*
  %4235 = load i64, i64* %RAX.i111
  %4236 = load i64, i64* %RCX.i112
  %4237 = add i64 %4236, %4235
  %4238 = load i64, i64* %PC.i110
  %4239 = add i64 %4238, 4
  store i64 %4239, i64* %PC.i110
  %4240 = inttoptr i64 %4237 to i8*
  store i8 0, i8* %4240
  store %struct.Memory* %loadMem_42fdec, %struct.Memory** %MEMORY
  br label %block_.L_42fdf0

block_.L_42fdf0:                                  ; preds = %block_42fdcd, %block_42fdab
  %loadMem_42fdf0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4242 = getelementptr inbounds %struct.GPR, %struct.GPR* %4241, i32 0, i32 33
  %4243 = getelementptr inbounds %struct.Reg, %struct.Reg* %4242, i32 0, i32 0
  %PC.i109 = bitcast %union.anon* %4243 to i64*
  %4244 = load i64, i64* %PC.i109
  %4245 = add i64 %4244, 5
  %4246 = load i64, i64* %PC.i109
  %4247 = add i64 %4246, 5
  store i64 %4247, i64* %PC.i109
  %4248 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4245, i64* %4248, align 8
  store %struct.Memory* %loadMem_42fdf0, %struct.Memory** %MEMORY
  br label %block_.L_42fdf5

block_.L_42fdf5:                                  ; preds = %block_.L_42fdf0
  %loadMem_42fdf5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4250 = getelementptr inbounds %struct.GPR, %struct.GPR* %4249, i32 0, i32 33
  %4251 = getelementptr inbounds %struct.Reg, %struct.Reg* %4250, i32 0, i32 0
  %PC.i106 = bitcast %union.anon* %4251 to i64*
  %4252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4253 = getelementptr inbounds %struct.GPR, %struct.GPR* %4252, i32 0, i32 1
  %4254 = getelementptr inbounds %struct.Reg, %struct.Reg* %4253, i32 0, i32 0
  %RAX.i107 = bitcast %union.anon* %4254 to i64*
  %4255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4256 = getelementptr inbounds %struct.GPR, %struct.GPR* %4255, i32 0, i32 15
  %4257 = getelementptr inbounds %struct.Reg, %struct.Reg* %4256, i32 0, i32 0
  %RBP.i108 = bitcast %union.anon* %4257 to i64*
  %4258 = load i64, i64* %RBP.i108
  %4259 = sub i64 %4258, 32
  %4260 = load i64, i64* %PC.i106
  %4261 = add i64 %4260, 3
  store i64 %4261, i64* %PC.i106
  %4262 = inttoptr i64 %4259 to i32*
  %4263 = load i32, i32* %4262
  %4264 = zext i32 %4263 to i64
  store i64 %4264, i64* %RAX.i107, align 8
  store %struct.Memory* %loadMem_42fdf5, %struct.Memory** %MEMORY
  %loadMem_42fdf8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4266 = getelementptr inbounds %struct.GPR, %struct.GPR* %4265, i32 0, i32 33
  %4267 = getelementptr inbounds %struct.Reg, %struct.Reg* %4266, i32 0, i32 0
  %PC.i104 = bitcast %union.anon* %4267 to i64*
  %4268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4269 = getelementptr inbounds %struct.GPR, %struct.GPR* %4268, i32 0, i32 1
  %4270 = getelementptr inbounds %struct.Reg, %struct.Reg* %4269, i32 0, i32 0
  %RAX.i105 = bitcast %union.anon* %4270 to i64*
  %4271 = load i64, i64* %RAX.i105
  %4272 = load i64, i64* %PC.i104
  %4273 = add i64 %4272, 3
  store i64 %4273, i64* %PC.i104
  %4274 = trunc i64 %4271 to i32
  %4275 = add i32 1, %4274
  %4276 = zext i32 %4275 to i64
  store i64 %4276, i64* %RAX.i105, align 8
  %4277 = icmp ult i32 %4275, %4274
  %4278 = icmp ult i32 %4275, 1
  %4279 = or i1 %4277, %4278
  %4280 = zext i1 %4279 to i8
  %4281 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4280, i8* %4281, align 1
  %4282 = and i32 %4275, 255
  %4283 = call i32 @llvm.ctpop.i32(i32 %4282)
  %4284 = trunc i32 %4283 to i8
  %4285 = and i8 %4284, 1
  %4286 = xor i8 %4285, 1
  %4287 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4286, i8* %4287, align 1
  %4288 = xor i64 1, %4271
  %4289 = trunc i64 %4288 to i32
  %4290 = xor i32 %4289, %4275
  %4291 = lshr i32 %4290, 4
  %4292 = trunc i32 %4291 to i8
  %4293 = and i8 %4292, 1
  %4294 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4293, i8* %4294, align 1
  %4295 = icmp eq i32 %4275, 0
  %4296 = zext i1 %4295 to i8
  %4297 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4296, i8* %4297, align 1
  %4298 = lshr i32 %4275, 31
  %4299 = trunc i32 %4298 to i8
  %4300 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4299, i8* %4300, align 1
  %4301 = lshr i32 %4274, 31
  %4302 = xor i32 %4298, %4301
  %4303 = add i32 %4302, %4298
  %4304 = icmp eq i32 %4303, 2
  %4305 = zext i1 %4304 to i8
  %4306 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4305, i8* %4306, align 1
  store %struct.Memory* %loadMem_42fdf8, %struct.Memory** %MEMORY
  %loadMem_42fdfb = load %struct.Memory*, %struct.Memory** %MEMORY
  %4307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4308 = getelementptr inbounds %struct.GPR, %struct.GPR* %4307, i32 0, i32 33
  %4309 = getelementptr inbounds %struct.Reg, %struct.Reg* %4308, i32 0, i32 0
  %PC.i101 = bitcast %union.anon* %4309 to i64*
  %4310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4311 = getelementptr inbounds %struct.GPR, %struct.GPR* %4310, i32 0, i32 1
  %4312 = getelementptr inbounds %struct.Reg, %struct.Reg* %4311, i32 0, i32 0
  %EAX.i102 = bitcast %union.anon* %4312 to i32*
  %4313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4314 = getelementptr inbounds %struct.GPR, %struct.GPR* %4313, i32 0, i32 15
  %4315 = getelementptr inbounds %struct.Reg, %struct.Reg* %4314, i32 0, i32 0
  %RBP.i103 = bitcast %union.anon* %4315 to i64*
  %4316 = load i64, i64* %RBP.i103
  %4317 = sub i64 %4316, 32
  %4318 = load i32, i32* %EAX.i102
  %4319 = zext i32 %4318 to i64
  %4320 = load i64, i64* %PC.i101
  %4321 = add i64 %4320, 3
  store i64 %4321, i64* %PC.i101
  %4322 = inttoptr i64 %4317 to i32*
  store i32 %4318, i32* %4322
  store %struct.Memory* %loadMem_42fdfb, %struct.Memory** %MEMORY
  %loadMem_42fdfe = load %struct.Memory*, %struct.Memory** %MEMORY
  %4323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4324 = getelementptr inbounds %struct.GPR, %struct.GPR* %4323, i32 0, i32 33
  %4325 = getelementptr inbounds %struct.Reg, %struct.Reg* %4324, i32 0, i32 0
  %PC.i100 = bitcast %union.anon* %4325 to i64*
  %4326 = load i64, i64* %PC.i100
  %4327 = add i64 %4326, -102
  %4328 = load i64, i64* %PC.i100
  %4329 = add i64 %4328, 5
  store i64 %4329, i64* %PC.i100
  %4330 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4327, i64* %4330, align 8
  store %struct.Memory* %loadMem_42fdfe, %struct.Memory** %MEMORY
  br label %block_.L_42fd98

block_.L_42fe03:                                  ; preds = %block_.L_42fd98
  %loadMem_42fe03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4332 = getelementptr inbounds %struct.GPR, %struct.GPR* %4331, i32 0, i32 33
  %4333 = getelementptr inbounds %struct.Reg, %struct.Reg* %4332, i32 0, i32 0
  %PC.i99 = bitcast %union.anon* %4333 to i64*
  %4334 = load i64, i64* %PC.i99
  %4335 = add i64 %4334, 5
  %4336 = load i64, i64* %PC.i99
  %4337 = add i64 %4336, 5
  store i64 %4337, i64* %PC.i99
  %4338 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4335, i64* %4338, align 8
  store %struct.Memory* %loadMem_42fe03, %struct.Memory** %MEMORY
  br label %block_.L_42fe08

block_.L_42fe08:                                  ; preds = %block_.L_42fe03
  %loadMem_42fe08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4340 = getelementptr inbounds %struct.GPR, %struct.GPR* %4339, i32 0, i32 33
  %4341 = getelementptr inbounds %struct.Reg, %struct.Reg* %4340, i32 0, i32 0
  %PC.i96 = bitcast %union.anon* %4341 to i64*
  %4342 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4343 = getelementptr inbounds %struct.GPR, %struct.GPR* %4342, i32 0, i32 1
  %4344 = getelementptr inbounds %struct.Reg, %struct.Reg* %4343, i32 0, i32 0
  %RAX.i97 = bitcast %union.anon* %4344 to i64*
  %4345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4346 = getelementptr inbounds %struct.GPR, %struct.GPR* %4345, i32 0, i32 15
  %4347 = getelementptr inbounds %struct.Reg, %struct.Reg* %4346, i32 0, i32 0
  %RBP.i98 = bitcast %union.anon* %4347 to i64*
  %4348 = load i64, i64* %RBP.i98
  %4349 = sub i64 %4348, 28
  %4350 = load i64, i64* %PC.i96
  %4351 = add i64 %4350, 3
  store i64 %4351, i64* %PC.i96
  %4352 = inttoptr i64 %4349 to i32*
  %4353 = load i32, i32* %4352
  %4354 = zext i32 %4353 to i64
  store i64 %4354, i64* %RAX.i97, align 8
  store %struct.Memory* %loadMem_42fe08, %struct.Memory** %MEMORY
  %loadMem_42fe0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4356 = getelementptr inbounds %struct.GPR, %struct.GPR* %4355, i32 0, i32 33
  %4357 = getelementptr inbounds %struct.Reg, %struct.Reg* %4356, i32 0, i32 0
  %PC.i94 = bitcast %union.anon* %4357 to i64*
  %4358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4359 = getelementptr inbounds %struct.GPR, %struct.GPR* %4358, i32 0, i32 1
  %4360 = getelementptr inbounds %struct.Reg, %struct.Reg* %4359, i32 0, i32 0
  %RAX.i95 = bitcast %union.anon* %4360 to i64*
  %4361 = load i64, i64* %RAX.i95
  %4362 = load i64, i64* %PC.i94
  %4363 = add i64 %4362, 3
  store i64 %4363, i64* %PC.i94
  %4364 = trunc i64 %4361 to i32
  %4365 = add i32 1, %4364
  %4366 = zext i32 %4365 to i64
  store i64 %4366, i64* %RAX.i95, align 8
  %4367 = icmp ult i32 %4365, %4364
  %4368 = icmp ult i32 %4365, 1
  %4369 = or i1 %4367, %4368
  %4370 = zext i1 %4369 to i8
  %4371 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4370, i8* %4371, align 1
  %4372 = and i32 %4365, 255
  %4373 = call i32 @llvm.ctpop.i32(i32 %4372)
  %4374 = trunc i32 %4373 to i8
  %4375 = and i8 %4374, 1
  %4376 = xor i8 %4375, 1
  %4377 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4376, i8* %4377, align 1
  %4378 = xor i64 1, %4361
  %4379 = trunc i64 %4378 to i32
  %4380 = xor i32 %4379, %4365
  %4381 = lshr i32 %4380, 4
  %4382 = trunc i32 %4381 to i8
  %4383 = and i8 %4382, 1
  %4384 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4383, i8* %4384, align 1
  %4385 = icmp eq i32 %4365, 0
  %4386 = zext i1 %4385 to i8
  %4387 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4386, i8* %4387, align 1
  %4388 = lshr i32 %4365, 31
  %4389 = trunc i32 %4388 to i8
  %4390 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4389, i8* %4390, align 1
  %4391 = lshr i32 %4364, 31
  %4392 = xor i32 %4388, %4391
  %4393 = add i32 %4392, %4388
  %4394 = icmp eq i32 %4393, 2
  %4395 = zext i1 %4394 to i8
  %4396 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4395, i8* %4396, align 1
  store %struct.Memory* %loadMem_42fe0b, %struct.Memory** %MEMORY
  %loadMem_42fe0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4398 = getelementptr inbounds %struct.GPR, %struct.GPR* %4397, i32 0, i32 33
  %4399 = getelementptr inbounds %struct.Reg, %struct.Reg* %4398, i32 0, i32 0
  %PC.i91 = bitcast %union.anon* %4399 to i64*
  %4400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4401 = getelementptr inbounds %struct.GPR, %struct.GPR* %4400, i32 0, i32 1
  %4402 = getelementptr inbounds %struct.Reg, %struct.Reg* %4401, i32 0, i32 0
  %EAX.i92 = bitcast %union.anon* %4402 to i32*
  %4403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4404 = getelementptr inbounds %struct.GPR, %struct.GPR* %4403, i32 0, i32 15
  %4405 = getelementptr inbounds %struct.Reg, %struct.Reg* %4404, i32 0, i32 0
  %RBP.i93 = bitcast %union.anon* %4405 to i64*
  %4406 = load i64, i64* %RBP.i93
  %4407 = sub i64 %4406, 28
  %4408 = load i32, i32* %EAX.i92
  %4409 = zext i32 %4408 to i64
  %4410 = load i64, i64* %PC.i91
  %4411 = add i64 %4410, 3
  store i64 %4411, i64* %PC.i91
  %4412 = inttoptr i64 %4407 to i32*
  store i32 %4408, i32* %4412
  store %struct.Memory* %loadMem_42fe0e, %struct.Memory** %MEMORY
  %loadMem_42fe11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4413 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4414 = getelementptr inbounds %struct.GPR, %struct.GPR* %4413, i32 0, i32 33
  %4415 = getelementptr inbounds %struct.Reg, %struct.Reg* %4414, i32 0, i32 0
  %PC.i90 = bitcast %union.anon* %4415 to i64*
  %4416 = load i64, i64* %PC.i90
  %4417 = add i64 %4416, -291
  %4418 = load i64, i64* %PC.i90
  %4419 = add i64 %4418, 5
  store i64 %4419, i64* %PC.i90
  %4420 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4417, i64* %4420, align 8
  store %struct.Memory* %loadMem_42fe11, %struct.Memory** %MEMORY
  br label %block_.L_42fcee

block_.L_42fe16:                                  ; preds = %block_.L_42fcee
  %loadMem_42fe16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4422 = getelementptr inbounds %struct.GPR, %struct.GPR* %4421, i32 0, i32 33
  %4423 = getelementptr inbounds %struct.Reg, %struct.Reg* %4422, i32 0, i32 0
  %PC.i87 = bitcast %union.anon* %4423 to i64*
  %4424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4425 = getelementptr inbounds %struct.GPR, %struct.GPR* %4424, i32 0, i32 1
  %4426 = getelementptr inbounds %struct.Reg, %struct.Reg* %4425, i32 0, i32 0
  %RAX.i88 = bitcast %union.anon* %4426 to i64*
  %4427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4428 = getelementptr inbounds %struct.GPR, %struct.GPR* %4427, i32 0, i32 15
  %4429 = getelementptr inbounds %struct.Reg, %struct.Reg* %4428, i32 0, i32 0
  %RBP.i89 = bitcast %union.anon* %4429 to i64*
  %4430 = load i64, i64* %RBP.i89
  %4431 = sub i64 %4430, 8
  %4432 = load i64, i64* %PC.i87
  %4433 = add i64 %4432, 4
  store i64 %4433, i64* %PC.i87
  %4434 = inttoptr i64 %4431 to i64*
  %4435 = load i64, i64* %4434
  store i64 %4435, i64* %RAX.i88, align 8
  store %struct.Memory* %loadMem_42fe16, %struct.Memory** %MEMORY
  %loadMem_42fe1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4437 = getelementptr inbounds %struct.GPR, %struct.GPR* %4436, i32 0, i32 33
  %4438 = getelementptr inbounds %struct.Reg, %struct.Reg* %4437, i32 0, i32 0
  %PC.i85 = bitcast %union.anon* %4438 to i64*
  %4439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4440 = getelementptr inbounds %struct.GPR, %struct.GPR* %4439, i32 0, i32 1
  %4441 = getelementptr inbounds %struct.Reg, %struct.Reg* %4440, i32 0, i32 0
  %RAX.i86 = bitcast %union.anon* %4441 to i64*
  %4442 = load i64, i64* %RAX.i86
  %4443 = add i64 %4442, 72
  %4444 = load i64, i64* %PC.i85
  %4445 = add i64 %4444, 5
  store i64 %4445, i64* %PC.i85
  %4446 = inttoptr i64 %4443 to i64*
  %4447 = load i64, i64* %4446
  %4448 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4448, align 1
  %4449 = trunc i64 %4447 to i32
  %4450 = and i32 %4449, 255
  %4451 = call i32 @llvm.ctpop.i32(i32 %4450)
  %4452 = trunc i32 %4451 to i8
  %4453 = and i8 %4452, 1
  %4454 = xor i8 %4453, 1
  %4455 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4454, i8* %4455, align 1
  %4456 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4456, align 1
  %4457 = icmp eq i64 %4447, 0
  %4458 = zext i1 %4457 to i8
  %4459 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4458, i8* %4459, align 1
  %4460 = lshr i64 %4447, 63
  %4461 = trunc i64 %4460 to i8
  %4462 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4461, i8* %4462, align 1
  %4463 = lshr i64 %4447, 63
  %4464 = xor i64 %4460, %4463
  %4465 = add i64 %4464, %4463
  %4466 = icmp eq i64 %4465, 2
  %4467 = zext i1 %4466 to i8
  %4468 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4467, i8* %4468, align 1
  store %struct.Memory* %loadMem_42fe1a, %struct.Memory** %MEMORY
  %loadMem_42fe1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4470 = getelementptr inbounds %struct.GPR, %struct.GPR* %4469, i32 0, i32 33
  %4471 = getelementptr inbounds %struct.Reg, %struct.Reg* %4470, i32 0, i32 0
  %PC.i84 = bitcast %union.anon* %4471 to i64*
  %4472 = load i64, i64* %PC.i84
  %4473 = add i64 %4472, 22
  %4474 = load i64, i64* %PC.i84
  %4475 = add i64 %4474, 6
  %4476 = load i64, i64* %PC.i84
  %4477 = add i64 %4476, 6
  store i64 %4477, i64* %PC.i84
  %4478 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4479 = load i8, i8* %4478, align 1
  store i8 %4479, i8* %BRANCH_TAKEN, align 1
  %4480 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4481 = icmp ne i8 %4479, 0
  %4482 = select i1 %4481, i64 %4473, i64 %4475
  store i64 %4482, i64* %4480, align 8
  store %struct.Memory* %loadMem_42fe1f, %struct.Memory** %MEMORY
  %loadBr_42fe1f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42fe1f = icmp eq i8 %loadBr_42fe1f, 1
  br i1 %cmpBr_42fe1f, label %block_.L_42fe35, label %block_42fe25

block_42fe25:                                     ; preds = %block_.L_42fe16
  %loadMem_42fe25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4484 = getelementptr inbounds %struct.GPR, %struct.GPR* %4483, i32 0, i32 33
  %4485 = getelementptr inbounds %struct.Reg, %struct.Reg* %4484, i32 0, i32 0
  %PC.i81 = bitcast %union.anon* %4485 to i64*
  %4486 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4487 = getelementptr inbounds %struct.GPR, %struct.GPR* %4486, i32 0, i32 1
  %4488 = getelementptr inbounds %struct.Reg, %struct.Reg* %4487, i32 0, i32 0
  %RAX.i82 = bitcast %union.anon* %4488 to i64*
  %4489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4490 = getelementptr inbounds %struct.GPR, %struct.GPR* %4489, i32 0, i32 15
  %4491 = getelementptr inbounds %struct.Reg, %struct.Reg* %4490, i32 0, i32 0
  %RBP.i83 = bitcast %union.anon* %4491 to i64*
  %4492 = load i64, i64* %RBP.i83
  %4493 = sub i64 %4492, 8
  %4494 = load i64, i64* %PC.i81
  %4495 = add i64 %4494, 4
  store i64 %4495, i64* %PC.i81
  %4496 = inttoptr i64 %4493 to i64*
  %4497 = load i64, i64* %4496
  store i64 %4497, i64* %RAX.i82, align 8
  store %struct.Memory* %loadMem_42fe25, %struct.Memory** %MEMORY
  %loadMem_42fe29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4499 = getelementptr inbounds %struct.GPR, %struct.GPR* %4498, i32 0, i32 33
  %4500 = getelementptr inbounds %struct.Reg, %struct.Reg* %4499, i32 0, i32 0
  %PC.i79 = bitcast %union.anon* %4500 to i64*
  %4501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4502 = getelementptr inbounds %struct.GPR, %struct.GPR* %4501, i32 0, i32 1
  %4503 = getelementptr inbounds %struct.Reg, %struct.Reg* %4502, i32 0, i32 0
  %RAX.i80 = bitcast %union.anon* %4503 to i64*
  %4504 = load i64, i64* %RAX.i80
  %4505 = add i64 %4504, 72
  %4506 = load i64, i64* %PC.i79
  %4507 = add i64 %4506, 4
  store i64 %4507, i64* %PC.i79
  %4508 = inttoptr i64 %4505 to i64*
  %4509 = load i64, i64* %4508
  store i64 %4509, i64* %RAX.i80, align 8
  store %struct.Memory* %loadMem_42fe29, %struct.Memory** %MEMORY
  %loadMem_42fe2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4511 = getelementptr inbounds %struct.GPR, %struct.GPR* %4510, i32 0, i32 33
  %4512 = getelementptr inbounds %struct.Reg, %struct.Reg* %4511, i32 0, i32 0
  %PC.i76 = bitcast %union.anon* %4512 to i64*
  %4513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4514 = getelementptr inbounds %struct.GPR, %struct.GPR* %4513, i32 0, i32 5
  %4515 = getelementptr inbounds %struct.Reg, %struct.Reg* %4514, i32 0, i32 0
  %RCX.i77 = bitcast %union.anon* %4515 to i64*
  %4516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4517 = getelementptr inbounds %struct.GPR, %struct.GPR* %4516, i32 0, i32 15
  %4518 = getelementptr inbounds %struct.Reg, %struct.Reg* %4517, i32 0, i32 0
  %RBP.i78 = bitcast %union.anon* %4518 to i64*
  %4519 = load i64, i64* %RBP.i78
  %4520 = sub i64 %4519, 24
  %4521 = load i64, i64* %PC.i76
  %4522 = add i64 %4521, 4
  store i64 %4522, i64* %PC.i76
  %4523 = inttoptr i64 %4520 to i32*
  %4524 = load i32, i32* %4523
  %4525 = sext i32 %4524 to i64
  store i64 %4525, i64* %RCX.i77, align 8
  store %struct.Memory* %loadMem_42fe2d, %struct.Memory** %MEMORY
  %loadMem_42fe31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4527 = getelementptr inbounds %struct.GPR, %struct.GPR* %4526, i32 0, i32 33
  %4528 = getelementptr inbounds %struct.Reg, %struct.Reg* %4527, i32 0, i32 0
  %PC.i73 = bitcast %union.anon* %4528 to i64*
  %4529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4530 = getelementptr inbounds %struct.GPR, %struct.GPR* %4529, i32 0, i32 1
  %4531 = getelementptr inbounds %struct.Reg, %struct.Reg* %4530, i32 0, i32 0
  %RAX.i74 = bitcast %union.anon* %4531 to i64*
  %4532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4533 = getelementptr inbounds %struct.GPR, %struct.GPR* %4532, i32 0, i32 5
  %4534 = getelementptr inbounds %struct.Reg, %struct.Reg* %4533, i32 0, i32 0
  %RCX.i75 = bitcast %union.anon* %4534 to i64*
  %4535 = load i64, i64* %RAX.i74
  %4536 = load i64, i64* %RCX.i75
  %4537 = add i64 %4536, %4535
  %4538 = load i64, i64* %PC.i73
  %4539 = add i64 %4538, 4
  store i64 %4539, i64* %PC.i73
  %4540 = inttoptr i64 %4537 to i8*
  store i8 0, i8* %4540
  store %struct.Memory* %loadMem_42fe31, %struct.Memory** %MEMORY
  br label %block_.L_42fe35

block_.L_42fe35:                                  ; preds = %block_42fe25, %block_.L_42fe16
  %loadMem_42fe35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4542 = getelementptr inbounds %struct.GPR, %struct.GPR* %4541, i32 0, i32 33
  %4543 = getelementptr inbounds %struct.Reg, %struct.Reg* %4542, i32 0, i32 0
  %PC.i70 = bitcast %union.anon* %4543 to i64*
  %4544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4545 = getelementptr inbounds %struct.GPR, %struct.GPR* %4544, i32 0, i32 1
  %4546 = getelementptr inbounds %struct.Reg, %struct.Reg* %4545, i32 0, i32 0
  %RAX.i71 = bitcast %union.anon* %4546 to i64*
  %4547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4548 = getelementptr inbounds %struct.GPR, %struct.GPR* %4547, i32 0, i32 15
  %4549 = getelementptr inbounds %struct.Reg, %struct.Reg* %4548, i32 0, i32 0
  %RBP.i72 = bitcast %union.anon* %4549 to i64*
  %4550 = load i64, i64* %RBP.i72
  %4551 = sub i64 %4550, 8
  %4552 = load i64, i64* %PC.i70
  %4553 = add i64 %4552, 4
  store i64 %4553, i64* %PC.i70
  %4554 = inttoptr i64 %4551 to i64*
  %4555 = load i64, i64* %4554
  store i64 %4555, i64* %RAX.i71, align 8
  store %struct.Memory* %loadMem_42fe35, %struct.Memory** %MEMORY
  %loadMem_42fe39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4557 = getelementptr inbounds %struct.GPR, %struct.GPR* %4556, i32 0, i32 33
  %4558 = getelementptr inbounds %struct.Reg, %struct.Reg* %4557, i32 0, i32 0
  %PC.i68 = bitcast %union.anon* %4558 to i64*
  %4559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4560 = getelementptr inbounds %struct.GPR, %struct.GPR* %4559, i32 0, i32 1
  %4561 = getelementptr inbounds %struct.Reg, %struct.Reg* %4560, i32 0, i32 0
  %RAX.i69 = bitcast %union.anon* %4561 to i64*
  %4562 = load i64, i64* %RAX.i69
  %4563 = add i64 %4562, 80
  %4564 = load i64, i64* %PC.i68
  %4565 = add i64 %4564, 5
  store i64 %4565, i64* %PC.i68
  %4566 = inttoptr i64 %4563 to i64*
  %4567 = load i64, i64* %4566
  %4568 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4568, align 1
  %4569 = trunc i64 %4567 to i32
  %4570 = and i32 %4569, 255
  %4571 = call i32 @llvm.ctpop.i32(i32 %4570)
  %4572 = trunc i32 %4571 to i8
  %4573 = and i8 %4572, 1
  %4574 = xor i8 %4573, 1
  %4575 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4574, i8* %4575, align 1
  %4576 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4576, align 1
  %4577 = icmp eq i64 %4567, 0
  %4578 = zext i1 %4577 to i8
  %4579 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4578, i8* %4579, align 1
  %4580 = lshr i64 %4567, 63
  %4581 = trunc i64 %4580 to i8
  %4582 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4581, i8* %4582, align 1
  %4583 = lshr i64 %4567, 63
  %4584 = xor i64 %4580, %4583
  %4585 = add i64 %4584, %4583
  %4586 = icmp eq i64 %4585, 2
  %4587 = zext i1 %4586 to i8
  %4588 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4587, i8* %4588, align 1
  store %struct.Memory* %loadMem_42fe39, %struct.Memory** %MEMORY
  %loadMem_42fe3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4590 = getelementptr inbounds %struct.GPR, %struct.GPR* %4589, i32 0, i32 33
  %4591 = getelementptr inbounds %struct.Reg, %struct.Reg* %4590, i32 0, i32 0
  %PC.i67 = bitcast %union.anon* %4591 to i64*
  %4592 = load i64, i64* %PC.i67
  %4593 = add i64 %4592, 22
  %4594 = load i64, i64* %PC.i67
  %4595 = add i64 %4594, 6
  %4596 = load i64, i64* %PC.i67
  %4597 = add i64 %4596, 6
  store i64 %4597, i64* %PC.i67
  %4598 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4599 = load i8, i8* %4598, align 1
  store i8 %4599, i8* %BRANCH_TAKEN, align 1
  %4600 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4601 = icmp ne i8 %4599, 0
  %4602 = select i1 %4601, i64 %4593, i64 %4595
  store i64 %4602, i64* %4600, align 8
  store %struct.Memory* %loadMem_42fe3e, %struct.Memory** %MEMORY
  %loadBr_42fe3e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42fe3e = icmp eq i8 %loadBr_42fe3e, 1
  br i1 %cmpBr_42fe3e, label %block_.L_42fe54, label %block_42fe44

block_42fe44:                                     ; preds = %block_.L_42fe35
  %loadMem_42fe44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4603 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4604 = getelementptr inbounds %struct.GPR, %struct.GPR* %4603, i32 0, i32 33
  %4605 = getelementptr inbounds %struct.Reg, %struct.Reg* %4604, i32 0, i32 0
  %PC.i64 = bitcast %union.anon* %4605 to i64*
  %4606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4607 = getelementptr inbounds %struct.GPR, %struct.GPR* %4606, i32 0, i32 1
  %4608 = getelementptr inbounds %struct.Reg, %struct.Reg* %4607, i32 0, i32 0
  %RAX.i65 = bitcast %union.anon* %4608 to i64*
  %4609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4610 = getelementptr inbounds %struct.GPR, %struct.GPR* %4609, i32 0, i32 15
  %4611 = getelementptr inbounds %struct.Reg, %struct.Reg* %4610, i32 0, i32 0
  %RBP.i66 = bitcast %union.anon* %4611 to i64*
  %4612 = load i64, i64* %RBP.i66
  %4613 = sub i64 %4612, 8
  %4614 = load i64, i64* %PC.i64
  %4615 = add i64 %4614, 4
  store i64 %4615, i64* %PC.i64
  %4616 = inttoptr i64 %4613 to i64*
  %4617 = load i64, i64* %4616
  store i64 %4617, i64* %RAX.i65, align 8
  store %struct.Memory* %loadMem_42fe44, %struct.Memory** %MEMORY
  %loadMem_42fe48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4619 = getelementptr inbounds %struct.GPR, %struct.GPR* %4618, i32 0, i32 33
  %4620 = getelementptr inbounds %struct.Reg, %struct.Reg* %4619, i32 0, i32 0
  %PC.i62 = bitcast %union.anon* %4620 to i64*
  %4621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4622 = getelementptr inbounds %struct.GPR, %struct.GPR* %4621, i32 0, i32 1
  %4623 = getelementptr inbounds %struct.Reg, %struct.Reg* %4622, i32 0, i32 0
  %RAX.i63 = bitcast %union.anon* %4623 to i64*
  %4624 = load i64, i64* %RAX.i63
  %4625 = add i64 %4624, 80
  %4626 = load i64, i64* %PC.i62
  %4627 = add i64 %4626, 4
  store i64 %4627, i64* %PC.i62
  %4628 = inttoptr i64 %4625 to i64*
  %4629 = load i64, i64* %4628
  store i64 %4629, i64* %RAX.i63, align 8
  store %struct.Memory* %loadMem_42fe48, %struct.Memory** %MEMORY
  %loadMem_42fe4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4631 = getelementptr inbounds %struct.GPR, %struct.GPR* %4630, i32 0, i32 33
  %4632 = getelementptr inbounds %struct.Reg, %struct.Reg* %4631, i32 0, i32 0
  %PC.i59 = bitcast %union.anon* %4632 to i64*
  %4633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4634 = getelementptr inbounds %struct.GPR, %struct.GPR* %4633, i32 0, i32 5
  %4635 = getelementptr inbounds %struct.Reg, %struct.Reg* %4634, i32 0, i32 0
  %RCX.i60 = bitcast %union.anon* %4635 to i64*
  %4636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4637 = getelementptr inbounds %struct.GPR, %struct.GPR* %4636, i32 0, i32 15
  %4638 = getelementptr inbounds %struct.Reg, %struct.Reg* %4637, i32 0, i32 0
  %RBP.i61 = bitcast %union.anon* %4638 to i64*
  %4639 = load i64, i64* %RBP.i61
  %4640 = sub i64 %4639, 24
  %4641 = load i64, i64* %PC.i59
  %4642 = add i64 %4641, 4
  store i64 %4642, i64* %PC.i59
  %4643 = inttoptr i64 %4640 to i32*
  %4644 = load i32, i32* %4643
  %4645 = sext i32 %4644 to i64
  store i64 %4645, i64* %RCX.i60, align 8
  store %struct.Memory* %loadMem_42fe4c, %struct.Memory** %MEMORY
  %loadMem_42fe50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4646 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4647 = getelementptr inbounds %struct.GPR, %struct.GPR* %4646, i32 0, i32 33
  %4648 = getelementptr inbounds %struct.Reg, %struct.Reg* %4647, i32 0, i32 0
  %PC.i56 = bitcast %union.anon* %4648 to i64*
  %4649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4650 = getelementptr inbounds %struct.GPR, %struct.GPR* %4649, i32 0, i32 1
  %4651 = getelementptr inbounds %struct.Reg, %struct.Reg* %4650, i32 0, i32 0
  %RAX.i57 = bitcast %union.anon* %4651 to i64*
  %4652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4653 = getelementptr inbounds %struct.GPR, %struct.GPR* %4652, i32 0, i32 5
  %4654 = getelementptr inbounds %struct.Reg, %struct.Reg* %4653, i32 0, i32 0
  %RCX.i58 = bitcast %union.anon* %4654 to i64*
  %4655 = load i64, i64* %RAX.i57
  %4656 = load i64, i64* %RCX.i58
  %4657 = add i64 %4656, %4655
  %4658 = load i64, i64* %PC.i56
  %4659 = add i64 %4658, 4
  store i64 %4659, i64* %PC.i56
  %4660 = inttoptr i64 %4657 to i8*
  store i8 0, i8* %4660
  store %struct.Memory* %loadMem_42fe50, %struct.Memory** %MEMORY
  br label %block_.L_42fe54

block_.L_42fe54:                                  ; preds = %block_42fe44, %block_.L_42fe35
  %loadMem_42fe54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4662 = getelementptr inbounds %struct.GPR, %struct.GPR* %4661, i32 0, i32 33
  %4663 = getelementptr inbounds %struct.Reg, %struct.Reg* %4662, i32 0, i32 0
  %PC.i53 = bitcast %union.anon* %4663 to i64*
  %4664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4665 = getelementptr inbounds %struct.GPR, %struct.GPR* %4664, i32 0, i32 1
  %4666 = getelementptr inbounds %struct.Reg, %struct.Reg* %4665, i32 0, i32 0
  %RAX.i54 = bitcast %union.anon* %4666 to i64*
  %4667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4668 = getelementptr inbounds %struct.GPR, %struct.GPR* %4667, i32 0, i32 15
  %4669 = getelementptr inbounds %struct.Reg, %struct.Reg* %4668, i32 0, i32 0
  %RBP.i55 = bitcast %union.anon* %4669 to i64*
  %4670 = load i64, i64* %RBP.i55
  %4671 = sub i64 %4670, 8
  %4672 = load i64, i64* %PC.i53
  %4673 = add i64 %4672, 4
  store i64 %4673, i64* %PC.i53
  %4674 = inttoptr i64 %4671 to i64*
  %4675 = load i64, i64* %4674
  store i64 %4675, i64* %RAX.i54, align 8
  store %struct.Memory* %loadMem_42fe54, %struct.Memory** %MEMORY
  %loadMem_42fe58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4676 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4677 = getelementptr inbounds %struct.GPR, %struct.GPR* %4676, i32 0, i32 33
  %4678 = getelementptr inbounds %struct.Reg, %struct.Reg* %4677, i32 0, i32 0
  %PC.i51 = bitcast %union.anon* %4678 to i64*
  %4679 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4680 = getelementptr inbounds %struct.GPR, %struct.GPR* %4679, i32 0, i32 1
  %4681 = getelementptr inbounds %struct.Reg, %struct.Reg* %4680, i32 0, i32 0
  %RAX.i52 = bitcast %union.anon* %4681 to i64*
  %4682 = load i64, i64* %RAX.i52
  %4683 = add i64 %4682, 88
  %4684 = load i64, i64* %PC.i51
  %4685 = add i64 %4684, 5
  store i64 %4685, i64* %PC.i51
  %4686 = inttoptr i64 %4683 to i64*
  %4687 = load i64, i64* %4686
  %4688 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4688, align 1
  %4689 = trunc i64 %4687 to i32
  %4690 = and i32 %4689, 255
  %4691 = call i32 @llvm.ctpop.i32(i32 %4690)
  %4692 = trunc i32 %4691 to i8
  %4693 = and i8 %4692, 1
  %4694 = xor i8 %4693, 1
  %4695 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4694, i8* %4695, align 1
  %4696 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4696, align 1
  %4697 = icmp eq i64 %4687, 0
  %4698 = zext i1 %4697 to i8
  %4699 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4698, i8* %4699, align 1
  %4700 = lshr i64 %4687, 63
  %4701 = trunc i64 %4700 to i8
  %4702 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4701, i8* %4702, align 1
  %4703 = lshr i64 %4687, 63
  %4704 = xor i64 %4700, %4703
  %4705 = add i64 %4704, %4703
  %4706 = icmp eq i64 %4705, 2
  %4707 = zext i1 %4706 to i8
  %4708 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4707, i8* %4708, align 1
  store %struct.Memory* %loadMem_42fe58, %struct.Memory** %MEMORY
  %loadMem_42fe5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4710 = getelementptr inbounds %struct.GPR, %struct.GPR* %4709, i32 0, i32 33
  %4711 = getelementptr inbounds %struct.Reg, %struct.Reg* %4710, i32 0, i32 0
  %PC.i50 = bitcast %union.anon* %4711 to i64*
  %4712 = load i64, i64* %PC.i50
  %4713 = add i64 %4712, 22
  %4714 = load i64, i64* %PC.i50
  %4715 = add i64 %4714, 6
  %4716 = load i64, i64* %PC.i50
  %4717 = add i64 %4716, 6
  store i64 %4717, i64* %PC.i50
  %4718 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4719 = load i8, i8* %4718, align 1
  store i8 %4719, i8* %BRANCH_TAKEN, align 1
  %4720 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4721 = icmp ne i8 %4719, 0
  %4722 = select i1 %4721, i64 %4713, i64 %4715
  store i64 %4722, i64* %4720, align 8
  store %struct.Memory* %loadMem_42fe5d, %struct.Memory** %MEMORY
  %loadBr_42fe5d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42fe5d = icmp eq i8 %loadBr_42fe5d, 1
  br i1 %cmpBr_42fe5d, label %block_.L_42fe73, label %block_42fe63

block_42fe63:                                     ; preds = %block_.L_42fe54
  %loadMem_42fe63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4723 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4724 = getelementptr inbounds %struct.GPR, %struct.GPR* %4723, i32 0, i32 33
  %4725 = getelementptr inbounds %struct.Reg, %struct.Reg* %4724, i32 0, i32 0
  %PC.i47 = bitcast %union.anon* %4725 to i64*
  %4726 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4727 = getelementptr inbounds %struct.GPR, %struct.GPR* %4726, i32 0, i32 1
  %4728 = getelementptr inbounds %struct.Reg, %struct.Reg* %4727, i32 0, i32 0
  %RAX.i48 = bitcast %union.anon* %4728 to i64*
  %4729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4730 = getelementptr inbounds %struct.GPR, %struct.GPR* %4729, i32 0, i32 15
  %4731 = getelementptr inbounds %struct.Reg, %struct.Reg* %4730, i32 0, i32 0
  %RBP.i49 = bitcast %union.anon* %4731 to i64*
  %4732 = load i64, i64* %RBP.i49
  %4733 = sub i64 %4732, 8
  %4734 = load i64, i64* %PC.i47
  %4735 = add i64 %4734, 4
  store i64 %4735, i64* %PC.i47
  %4736 = inttoptr i64 %4733 to i64*
  %4737 = load i64, i64* %4736
  store i64 %4737, i64* %RAX.i48, align 8
  store %struct.Memory* %loadMem_42fe63, %struct.Memory** %MEMORY
  %loadMem_42fe67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4739 = getelementptr inbounds %struct.GPR, %struct.GPR* %4738, i32 0, i32 33
  %4740 = getelementptr inbounds %struct.Reg, %struct.Reg* %4739, i32 0, i32 0
  %PC.i45 = bitcast %union.anon* %4740 to i64*
  %4741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4742 = getelementptr inbounds %struct.GPR, %struct.GPR* %4741, i32 0, i32 1
  %4743 = getelementptr inbounds %struct.Reg, %struct.Reg* %4742, i32 0, i32 0
  %RAX.i46 = bitcast %union.anon* %4743 to i64*
  %4744 = load i64, i64* %RAX.i46
  %4745 = add i64 %4744, 88
  %4746 = load i64, i64* %PC.i45
  %4747 = add i64 %4746, 4
  store i64 %4747, i64* %PC.i45
  %4748 = inttoptr i64 %4745 to i64*
  %4749 = load i64, i64* %4748
  store i64 %4749, i64* %RAX.i46, align 8
  store %struct.Memory* %loadMem_42fe67, %struct.Memory** %MEMORY
  %loadMem_42fe6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4750 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4751 = getelementptr inbounds %struct.GPR, %struct.GPR* %4750, i32 0, i32 33
  %4752 = getelementptr inbounds %struct.Reg, %struct.Reg* %4751, i32 0, i32 0
  %PC.i42 = bitcast %union.anon* %4752 to i64*
  %4753 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4754 = getelementptr inbounds %struct.GPR, %struct.GPR* %4753, i32 0, i32 5
  %4755 = getelementptr inbounds %struct.Reg, %struct.Reg* %4754, i32 0, i32 0
  %RCX.i43 = bitcast %union.anon* %4755 to i64*
  %4756 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4757 = getelementptr inbounds %struct.GPR, %struct.GPR* %4756, i32 0, i32 15
  %4758 = getelementptr inbounds %struct.Reg, %struct.Reg* %4757, i32 0, i32 0
  %RBP.i44 = bitcast %union.anon* %4758 to i64*
  %4759 = load i64, i64* %RBP.i44
  %4760 = sub i64 %4759, 24
  %4761 = load i64, i64* %PC.i42
  %4762 = add i64 %4761, 4
  store i64 %4762, i64* %PC.i42
  %4763 = inttoptr i64 %4760 to i32*
  %4764 = load i32, i32* %4763
  %4765 = sext i32 %4764 to i64
  store i64 %4765, i64* %RCX.i43, align 8
  store %struct.Memory* %loadMem_42fe6b, %struct.Memory** %MEMORY
  %loadMem_42fe6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4766 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4767 = getelementptr inbounds %struct.GPR, %struct.GPR* %4766, i32 0, i32 33
  %4768 = getelementptr inbounds %struct.Reg, %struct.Reg* %4767, i32 0, i32 0
  %PC.i39 = bitcast %union.anon* %4768 to i64*
  %4769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4770 = getelementptr inbounds %struct.GPR, %struct.GPR* %4769, i32 0, i32 1
  %4771 = getelementptr inbounds %struct.Reg, %struct.Reg* %4770, i32 0, i32 0
  %RAX.i40 = bitcast %union.anon* %4771 to i64*
  %4772 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4773 = getelementptr inbounds %struct.GPR, %struct.GPR* %4772, i32 0, i32 5
  %4774 = getelementptr inbounds %struct.Reg, %struct.Reg* %4773, i32 0, i32 0
  %RCX.i41 = bitcast %union.anon* %4774 to i64*
  %4775 = load i64, i64* %RAX.i40
  %4776 = load i64, i64* %RCX.i41
  %4777 = add i64 %4776, %4775
  %4778 = load i64, i64* %PC.i39
  %4779 = add i64 %4778, 4
  store i64 %4779, i64* %PC.i39
  %4780 = inttoptr i64 %4777 to i8*
  store i8 0, i8* %4780
  store %struct.Memory* %loadMem_42fe6f, %struct.Memory** %MEMORY
  br label %block_.L_42fe73

block_.L_42fe73:                                  ; preds = %block_42fe63, %block_.L_42fe54
  %loadMem_42fe73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4781 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4782 = getelementptr inbounds %struct.GPR, %struct.GPR* %4781, i32 0, i32 33
  %4783 = getelementptr inbounds %struct.Reg, %struct.Reg* %4782, i32 0, i32 0
  %PC.i37 = bitcast %union.anon* %4783 to i64*
  %4784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4785 = getelementptr inbounds %struct.GPR, %struct.GPR* %4784, i32 0, i32 15
  %4786 = getelementptr inbounds %struct.Reg, %struct.Reg* %4785, i32 0, i32 0
  %RBP.i38 = bitcast %union.anon* %4786 to i64*
  %4787 = load i64, i64* %RBP.i38
  %4788 = sub i64 %4787, 32
  %4789 = load i64, i64* %PC.i37
  %4790 = add i64 %4789, 7
  store i64 %4790, i64* %PC.i37
  %4791 = inttoptr i64 %4788 to i32*
  store i32 0, i32* %4791
  store %struct.Memory* %loadMem_42fe73, %struct.Memory** %MEMORY
  br label %block_.L_42fe7a

block_.L_42fe7a:                                  ; preds = %block_42fe8d, %block_.L_42fe73
  %loadMem_42fe7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4793 = getelementptr inbounds %struct.GPR, %struct.GPR* %4792, i32 0, i32 33
  %4794 = getelementptr inbounds %struct.Reg, %struct.Reg* %4793, i32 0, i32 0
  %PC.i34 = bitcast %union.anon* %4794 to i64*
  %4795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4796 = getelementptr inbounds %struct.GPR, %struct.GPR* %4795, i32 0, i32 1
  %4797 = getelementptr inbounds %struct.Reg, %struct.Reg* %4796, i32 0, i32 0
  %RAX.i35 = bitcast %union.anon* %4797 to i64*
  %4798 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4799 = getelementptr inbounds %struct.GPR, %struct.GPR* %4798, i32 0, i32 15
  %4800 = getelementptr inbounds %struct.Reg, %struct.Reg* %4799, i32 0, i32 0
  %RBP.i36 = bitcast %union.anon* %4800 to i64*
  %4801 = load i64, i64* %RBP.i36
  %4802 = sub i64 %4801, 32
  %4803 = load i64, i64* %PC.i34
  %4804 = add i64 %4803, 3
  store i64 %4804, i64* %PC.i34
  %4805 = inttoptr i64 %4802 to i32*
  %4806 = load i32, i32* %4805
  %4807 = zext i32 %4806 to i64
  store i64 %4807, i64* %RAX.i35, align 8
  store %struct.Memory* %loadMem_42fe7a, %struct.Memory** %MEMORY
  %loadMem_42fe7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4809 = getelementptr inbounds %struct.GPR, %struct.GPR* %4808, i32 0, i32 33
  %4810 = getelementptr inbounds %struct.Reg, %struct.Reg* %4809, i32 0, i32 0
  %PC.i31 = bitcast %union.anon* %4810 to i64*
  %4811 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4812 = getelementptr inbounds %struct.GPR, %struct.GPR* %4811, i32 0, i32 5
  %4813 = getelementptr inbounds %struct.Reg, %struct.Reg* %4812, i32 0, i32 0
  %RCX.i32 = bitcast %union.anon* %4813 to i64*
  %4814 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4815 = getelementptr inbounds %struct.GPR, %struct.GPR* %4814, i32 0, i32 15
  %4816 = getelementptr inbounds %struct.Reg, %struct.Reg* %4815, i32 0, i32 0
  %RBP.i33 = bitcast %union.anon* %4816 to i64*
  %4817 = load i64, i64* %RBP.i33
  %4818 = sub i64 %4817, 8
  %4819 = load i64, i64* %PC.i31
  %4820 = add i64 %4819, 4
  store i64 %4820, i64* %PC.i31
  %4821 = inttoptr i64 %4818 to i64*
  %4822 = load i64, i64* %4821
  store i64 %4822, i64* %RCX.i32, align 8
  store %struct.Memory* %loadMem_42fe7d, %struct.Memory** %MEMORY
  %loadMem_42fe81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4824 = getelementptr inbounds %struct.GPR, %struct.GPR* %4823, i32 0, i32 33
  %4825 = getelementptr inbounds %struct.Reg, %struct.Reg* %4824, i32 0, i32 0
  %PC.i28 = bitcast %union.anon* %4825 to i64*
  %4826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4827 = getelementptr inbounds %struct.GPR, %struct.GPR* %4826, i32 0, i32 1
  %4828 = getelementptr inbounds %struct.Reg, %struct.Reg* %4827, i32 0, i32 0
  %EAX.i29 = bitcast %union.anon* %4828 to i32*
  %4829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4830 = getelementptr inbounds %struct.GPR, %struct.GPR* %4829, i32 0, i32 5
  %4831 = getelementptr inbounds %struct.Reg, %struct.Reg* %4830, i32 0, i32 0
  %RCX.i30 = bitcast %union.anon* %4831 to i64*
  %4832 = load i32, i32* %EAX.i29
  %4833 = zext i32 %4832 to i64
  %4834 = load i64, i64* %RCX.i30
  %4835 = add i64 %4834, 272
  %4836 = load i64, i64* %PC.i28
  %4837 = add i64 %4836, 6
  store i64 %4837, i64* %PC.i28
  %4838 = inttoptr i64 %4835 to i32*
  %4839 = load i32, i32* %4838
  %4840 = sub i32 %4832, %4839
  %4841 = icmp ult i32 %4832, %4839
  %4842 = zext i1 %4841 to i8
  %4843 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4842, i8* %4843, align 1
  %4844 = and i32 %4840, 255
  %4845 = call i32 @llvm.ctpop.i32(i32 %4844)
  %4846 = trunc i32 %4845 to i8
  %4847 = and i8 %4846, 1
  %4848 = xor i8 %4847, 1
  %4849 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4848, i8* %4849, align 1
  %4850 = xor i32 %4839, %4832
  %4851 = xor i32 %4850, %4840
  %4852 = lshr i32 %4851, 4
  %4853 = trunc i32 %4852 to i8
  %4854 = and i8 %4853, 1
  %4855 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4854, i8* %4855, align 1
  %4856 = icmp eq i32 %4840, 0
  %4857 = zext i1 %4856 to i8
  %4858 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4857, i8* %4858, align 1
  %4859 = lshr i32 %4840, 31
  %4860 = trunc i32 %4859 to i8
  %4861 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4860, i8* %4861, align 1
  %4862 = lshr i32 %4832, 31
  %4863 = lshr i32 %4839, 31
  %4864 = xor i32 %4863, %4862
  %4865 = xor i32 %4859, %4862
  %4866 = add i32 %4865, %4864
  %4867 = icmp eq i32 %4866, 2
  %4868 = zext i1 %4867 to i8
  %4869 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4868, i8* %4869, align 1
  store %struct.Memory* %loadMem_42fe81, %struct.Memory** %MEMORY
  %loadMem_42fe87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4871 = getelementptr inbounds %struct.GPR, %struct.GPR* %4870, i32 0, i32 33
  %4872 = getelementptr inbounds %struct.Reg, %struct.Reg* %4871, i32 0, i32 0
  %PC.i27 = bitcast %union.anon* %4872 to i64*
  %4873 = load i64, i64* %PC.i27
  %4874 = add i64 %4873, 47
  %4875 = load i64, i64* %PC.i27
  %4876 = add i64 %4875, 6
  %4877 = load i64, i64* %PC.i27
  %4878 = add i64 %4877, 6
  store i64 %4878, i64* %PC.i27
  %4879 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4880 = load i8, i8* %4879, align 1
  %4881 = icmp ne i8 %4880, 0
  %4882 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4883 = load i8, i8* %4882, align 1
  %4884 = icmp ne i8 %4883, 0
  %4885 = xor i1 %4881, %4884
  %4886 = xor i1 %4885, true
  %4887 = zext i1 %4886 to i8
  store i8 %4887, i8* %BRANCH_TAKEN, align 1
  %4888 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4889 = select i1 %4885, i64 %4876, i64 %4874
  store i64 %4889, i64* %4888, align 8
  store %struct.Memory* %loadMem_42fe87, %struct.Memory** %MEMORY
  %loadBr_42fe87 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42fe87 = icmp eq i8 %loadBr_42fe87, 1
  br i1 %cmpBr_42fe87, label %block_.L_42feb6, label %block_42fe8d

block_42fe8d:                                     ; preds = %block_.L_42fe7a
  %loadMem_42fe8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4891 = getelementptr inbounds %struct.GPR, %struct.GPR* %4890, i32 0, i32 33
  %4892 = getelementptr inbounds %struct.Reg, %struct.Reg* %4891, i32 0, i32 0
  %PC.i24 = bitcast %union.anon* %4892 to i64*
  %4893 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4894 = getelementptr inbounds %struct.GPR, %struct.GPR* %4893, i32 0, i32 1
  %4895 = getelementptr inbounds %struct.Reg, %struct.Reg* %4894, i32 0, i32 0
  %RAX.i25 = bitcast %union.anon* %4895 to i64*
  %4896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4897 = getelementptr inbounds %struct.GPR, %struct.GPR* %4896, i32 0, i32 15
  %4898 = getelementptr inbounds %struct.Reg, %struct.Reg* %4897, i32 0, i32 0
  %RBP.i26 = bitcast %union.anon* %4898 to i64*
  %4899 = load i64, i64* %RBP.i26
  %4900 = sub i64 %4899, 8
  %4901 = load i64, i64* %PC.i24
  %4902 = add i64 %4901, 4
  store i64 %4902, i64* %PC.i24
  %4903 = inttoptr i64 %4900 to i64*
  %4904 = load i64, i64* %4903
  store i64 %4904, i64* %RAX.i25, align 8
  store %struct.Memory* %loadMem_42fe8d, %struct.Memory** %MEMORY
  %loadMem_42fe91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4905 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4906 = getelementptr inbounds %struct.GPR, %struct.GPR* %4905, i32 0, i32 33
  %4907 = getelementptr inbounds %struct.Reg, %struct.Reg* %4906, i32 0, i32 0
  %PC.i22 = bitcast %union.anon* %4907 to i64*
  %4908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4909 = getelementptr inbounds %struct.GPR, %struct.GPR* %4908, i32 0, i32 1
  %4910 = getelementptr inbounds %struct.Reg, %struct.Reg* %4909, i32 0, i32 0
  %RAX.i23 = bitcast %union.anon* %4910 to i64*
  %4911 = load i64, i64* %RAX.i23
  %4912 = add i64 %4911, 256
  %4913 = load i64, i64* %PC.i22
  %4914 = add i64 %4913, 7
  store i64 %4914, i64* %PC.i22
  %4915 = inttoptr i64 %4912 to i64*
  %4916 = load i64, i64* %4915
  store i64 %4916, i64* %RAX.i23, align 8
  store %struct.Memory* %loadMem_42fe91, %struct.Memory** %MEMORY
  %loadMem_42fe98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4917 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4918 = getelementptr inbounds %struct.GPR, %struct.GPR* %4917, i32 0, i32 33
  %4919 = getelementptr inbounds %struct.Reg, %struct.Reg* %4918, i32 0, i32 0
  %PC.i19 = bitcast %union.anon* %4919 to i64*
  %4920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4921 = getelementptr inbounds %struct.GPR, %struct.GPR* %4920, i32 0, i32 5
  %4922 = getelementptr inbounds %struct.Reg, %struct.Reg* %4921, i32 0, i32 0
  %RCX.i20 = bitcast %union.anon* %4922 to i64*
  %4923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4924 = getelementptr inbounds %struct.GPR, %struct.GPR* %4923, i32 0, i32 15
  %4925 = getelementptr inbounds %struct.Reg, %struct.Reg* %4924, i32 0, i32 0
  %RBP.i21 = bitcast %union.anon* %4925 to i64*
  %4926 = load i64, i64* %RBP.i21
  %4927 = sub i64 %4926, 32
  %4928 = load i64, i64* %PC.i19
  %4929 = add i64 %4928, 4
  store i64 %4929, i64* %PC.i19
  %4930 = inttoptr i64 %4927 to i32*
  %4931 = load i32, i32* %4930
  %4932 = sext i32 %4931 to i64
  store i64 %4932, i64* %RCX.i20, align 8
  store %struct.Memory* %loadMem_42fe98, %struct.Memory** %MEMORY
  %loadMem_42fe9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4933 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4934 = getelementptr inbounds %struct.GPR, %struct.GPR* %4933, i32 0, i32 33
  %4935 = getelementptr inbounds %struct.Reg, %struct.Reg* %4934, i32 0, i32 0
  %PC.i16 = bitcast %union.anon* %4935 to i64*
  %4936 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4937 = getelementptr inbounds %struct.GPR, %struct.GPR* %4936, i32 0, i32 1
  %4938 = getelementptr inbounds %struct.Reg, %struct.Reg* %4937, i32 0, i32 0
  %RAX.i17 = bitcast %union.anon* %4938 to i64*
  %4939 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4940 = getelementptr inbounds %struct.GPR, %struct.GPR* %4939, i32 0, i32 5
  %4941 = getelementptr inbounds %struct.Reg, %struct.Reg* %4940, i32 0, i32 0
  %RCX.i18 = bitcast %union.anon* %4941 to i64*
  %4942 = load i64, i64* %RAX.i17
  %4943 = load i64, i64* %RCX.i18
  %4944 = mul i64 %4943, 8
  %4945 = add i64 %4944, %4942
  %4946 = load i64, i64* %PC.i16
  %4947 = add i64 %4946, 4
  store i64 %4947, i64* %PC.i16
  %4948 = inttoptr i64 %4945 to i64*
  %4949 = load i64, i64* %4948
  store i64 %4949, i64* %RAX.i17, align 8
  store %struct.Memory* %loadMem_42fe9c, %struct.Memory** %MEMORY
  %loadMem_42fea0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4950 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4951 = getelementptr inbounds %struct.GPR, %struct.GPR* %4950, i32 0, i32 33
  %4952 = getelementptr inbounds %struct.Reg, %struct.Reg* %4951, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %4952 to i64*
  %4953 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4954 = getelementptr inbounds %struct.GPR, %struct.GPR* %4953, i32 0, i32 5
  %4955 = getelementptr inbounds %struct.Reg, %struct.Reg* %4954, i32 0, i32 0
  %RCX.i14 = bitcast %union.anon* %4955 to i64*
  %4956 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4957 = getelementptr inbounds %struct.GPR, %struct.GPR* %4956, i32 0, i32 15
  %4958 = getelementptr inbounds %struct.Reg, %struct.Reg* %4957, i32 0, i32 0
  %RBP.i15 = bitcast %union.anon* %4958 to i64*
  %4959 = load i64, i64* %RBP.i15
  %4960 = sub i64 %4959, 24
  %4961 = load i64, i64* %PC.i13
  %4962 = add i64 %4961, 4
  store i64 %4962, i64* %PC.i13
  %4963 = inttoptr i64 %4960 to i32*
  %4964 = load i32, i32* %4963
  %4965 = sext i32 %4964 to i64
  store i64 %4965, i64* %RCX.i14, align 8
  store %struct.Memory* %loadMem_42fea0, %struct.Memory** %MEMORY
  %loadMem_42fea4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4967 = getelementptr inbounds %struct.GPR, %struct.GPR* %4966, i32 0, i32 33
  %4968 = getelementptr inbounds %struct.Reg, %struct.Reg* %4967, i32 0, i32 0
  %PC.i11 = bitcast %union.anon* %4968 to i64*
  %4969 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4970 = getelementptr inbounds %struct.GPR, %struct.GPR* %4969, i32 0, i32 1
  %4971 = getelementptr inbounds %struct.Reg, %struct.Reg* %4970, i32 0, i32 0
  %RAX.i12 = bitcast %union.anon* %4971 to i64*
  %4972 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4973 = getelementptr inbounds %struct.GPR, %struct.GPR* %4972, i32 0, i32 5
  %4974 = getelementptr inbounds %struct.Reg, %struct.Reg* %4973, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %4974 to i64*
  %4975 = load i64, i64* %RAX.i12
  %4976 = load i64, i64* %RCX.i
  %4977 = add i64 %4976, %4975
  %4978 = load i64, i64* %PC.i11
  %4979 = add i64 %4978, 4
  store i64 %4979, i64* %PC.i11
  %4980 = inttoptr i64 %4977 to i8*
  store i8 0, i8* %4980
  store %struct.Memory* %loadMem_42fea4, %struct.Memory** %MEMORY
  %loadMem_42fea8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4982 = getelementptr inbounds %struct.GPR, %struct.GPR* %4981, i32 0, i32 33
  %4983 = getelementptr inbounds %struct.Reg, %struct.Reg* %4982, i32 0, i32 0
  %PC.i8 = bitcast %union.anon* %4983 to i64*
  %4984 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4985 = getelementptr inbounds %struct.GPR, %struct.GPR* %4984, i32 0, i32 1
  %4986 = getelementptr inbounds %struct.Reg, %struct.Reg* %4985, i32 0, i32 0
  %RAX.i9 = bitcast %union.anon* %4986 to i64*
  %4987 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4988 = getelementptr inbounds %struct.GPR, %struct.GPR* %4987, i32 0, i32 15
  %4989 = getelementptr inbounds %struct.Reg, %struct.Reg* %4988, i32 0, i32 0
  %RBP.i10 = bitcast %union.anon* %4989 to i64*
  %4990 = load i64, i64* %RBP.i10
  %4991 = sub i64 %4990, 32
  %4992 = load i64, i64* %PC.i8
  %4993 = add i64 %4992, 3
  store i64 %4993, i64* %PC.i8
  %4994 = inttoptr i64 %4991 to i32*
  %4995 = load i32, i32* %4994
  %4996 = zext i32 %4995 to i64
  store i64 %4996, i64* %RAX.i9, align 8
  store %struct.Memory* %loadMem_42fea8, %struct.Memory** %MEMORY
  %loadMem_42feab = load %struct.Memory*, %struct.Memory** %MEMORY
  %4997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4998 = getelementptr inbounds %struct.GPR, %struct.GPR* %4997, i32 0, i32 33
  %4999 = getelementptr inbounds %struct.Reg, %struct.Reg* %4998, i32 0, i32 0
  %PC.i7 = bitcast %union.anon* %4999 to i64*
  %5000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5001 = getelementptr inbounds %struct.GPR, %struct.GPR* %5000, i32 0, i32 1
  %5002 = getelementptr inbounds %struct.Reg, %struct.Reg* %5001, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %5002 to i64*
  %5003 = load i64, i64* %RAX.i
  %5004 = load i64, i64* %PC.i7
  %5005 = add i64 %5004, 3
  store i64 %5005, i64* %PC.i7
  %5006 = trunc i64 %5003 to i32
  %5007 = add i32 1, %5006
  %5008 = zext i32 %5007 to i64
  store i64 %5008, i64* %RAX.i, align 8
  %5009 = icmp ult i32 %5007, %5006
  %5010 = icmp ult i32 %5007, 1
  %5011 = or i1 %5009, %5010
  %5012 = zext i1 %5011 to i8
  %5013 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5012, i8* %5013, align 1
  %5014 = and i32 %5007, 255
  %5015 = call i32 @llvm.ctpop.i32(i32 %5014)
  %5016 = trunc i32 %5015 to i8
  %5017 = and i8 %5016, 1
  %5018 = xor i8 %5017, 1
  %5019 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5018, i8* %5019, align 1
  %5020 = xor i64 1, %5003
  %5021 = trunc i64 %5020 to i32
  %5022 = xor i32 %5021, %5007
  %5023 = lshr i32 %5022, 4
  %5024 = trunc i32 %5023 to i8
  %5025 = and i8 %5024, 1
  %5026 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5025, i8* %5026, align 1
  %5027 = icmp eq i32 %5007, 0
  %5028 = zext i1 %5027 to i8
  %5029 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5028, i8* %5029, align 1
  %5030 = lshr i32 %5007, 31
  %5031 = trunc i32 %5030 to i8
  %5032 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5031, i8* %5032, align 1
  %5033 = lshr i32 %5006, 31
  %5034 = xor i32 %5030, %5033
  %5035 = add i32 %5034, %5030
  %5036 = icmp eq i32 %5035, 2
  %5037 = zext i1 %5036 to i8
  %5038 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5037, i8* %5038, align 1
  store %struct.Memory* %loadMem_42feab, %struct.Memory** %MEMORY
  %loadMem_42feae = load %struct.Memory*, %struct.Memory** %MEMORY
  %5039 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5040 = getelementptr inbounds %struct.GPR, %struct.GPR* %5039, i32 0, i32 33
  %5041 = getelementptr inbounds %struct.Reg, %struct.Reg* %5040, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %5041 to i64*
  %5042 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5043 = getelementptr inbounds %struct.GPR, %struct.GPR* %5042, i32 0, i32 1
  %5044 = getelementptr inbounds %struct.Reg, %struct.Reg* %5043, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %5044 to i32*
  %5045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5046 = getelementptr inbounds %struct.GPR, %struct.GPR* %5045, i32 0, i32 15
  %5047 = getelementptr inbounds %struct.Reg, %struct.Reg* %5046, i32 0, i32 0
  %RBP.i6 = bitcast %union.anon* %5047 to i64*
  %5048 = load i64, i64* %RBP.i6
  %5049 = sub i64 %5048, 32
  %5050 = load i32, i32* %EAX.i
  %5051 = zext i32 %5050 to i64
  %5052 = load i64, i64* %PC.i5
  %5053 = add i64 %5052, 3
  store i64 %5053, i64* %PC.i5
  %5054 = inttoptr i64 %5049 to i32*
  store i32 %5050, i32* %5054
  store %struct.Memory* %loadMem_42feae, %struct.Memory** %MEMORY
  %loadMem_42feb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5055 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5056 = getelementptr inbounds %struct.GPR, %struct.GPR* %5055, i32 0, i32 33
  %5057 = getelementptr inbounds %struct.Reg, %struct.Reg* %5056, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %5057 to i64*
  %5058 = load i64, i64* %PC.i4
  %5059 = add i64 %5058, -55
  %5060 = load i64, i64* %PC.i4
  %5061 = add i64 %5060, 5
  store i64 %5061, i64* %PC.i4
  %5062 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5059, i64* %5062, align 8
  store %struct.Memory* %loadMem_42feb1, %struct.Memory** %MEMORY
  br label %block_.L_42fe7a

block_.L_42feb6:                                  ; preds = %block_.L_42fe7a
  %loadMem_42feb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5063 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5064 = getelementptr inbounds %struct.GPR, %struct.GPR* %5063, i32 0, i32 33
  %5065 = getelementptr inbounds %struct.Reg, %struct.Reg* %5064, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %5065 to i64*
  %5066 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5067 = getelementptr inbounds %struct.GPR, %struct.GPR* %5066, i32 0, i32 15
  %5068 = getelementptr inbounds %struct.Reg, %struct.Reg* %5067, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %5068 to i64*
  %5069 = load i64, i64* %PC.i2
  %5070 = add i64 %5069, 1
  store i64 %5070, i64* %PC.i2
  %5071 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5072 = load i64, i64* %5071, align 8
  %5073 = add i64 %5072, 8
  %5074 = inttoptr i64 %5072 to i64*
  %5075 = load i64, i64* %5074
  store i64 %5075, i64* %RBP.i3, align 8
  store i64 %5073, i64* %5071, align 8
  store %struct.Memory* %loadMem_42feb6, %struct.Memory** %MEMORY
  %loadMem_42feb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5076 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5077 = getelementptr inbounds %struct.GPR, %struct.GPR* %5076, i32 0, i32 33
  %5078 = getelementptr inbounds %struct.Reg, %struct.Reg* %5077, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %5078 to i64*
  %5079 = load i64, i64* %PC.i1
  %5080 = add i64 %5079, 1
  store i64 %5080, i64* %PC.i1
  %5081 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5082 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5083 = load i64, i64* %5082, align 8
  %5084 = inttoptr i64 %5083 to i64*
  %5085 = load i64, i64* %5084
  store i64 %5085, i64* %5081, align 8
  %5086 = add i64 %5083, 8
  store i64 %5086, i64* %5082, align 8
  store %struct.Memory* %loadMem_42feb7, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_42feb7
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

define %struct.Memory* @routine_cmpl_0x18__rcx____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 24
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

define %struct.Memory* @routine_jge_.L_42fcdd(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x0____rax__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %15 to i32*
  %19 = load i32, i32* %18
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %20, align 1
  %21 = and i32 %19, 255
  %22 = call i32 @llvm.ctpop.i32(i32 %21)
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = xor i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %25, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %27, align 1
  %28 = icmp eq i32 %19, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %19, 31
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %19, 31
  %35 = xor i32 %31, %34
  %36 = add i32 %35, %34
  %37 = icmp eq i32 %36, 2
  %38 = zext i1 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %38, i8* %39, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_42fa41(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_42fccf(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_je_.L_42fcc6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl_0x1c__rcx____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 28
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

define %struct.Memory* @routine_jge_.L_42fbde(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_42fae4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_0x70__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpq__0x0____rax__rcx_8_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %17 = add i64 %16, 5
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %15 to i64*
  %19 = load i64, i64* %18
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %20, align 1
  %21 = trunc i64 %19 to i32
  %22 = and i32 %21, 255
  %23 = call i32 @llvm.ctpop.i32(i32 %22)
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  %26 = xor i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %26, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %28, align 1
  %29 = icmp eq i64 %19, 0
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %30, i8* %31, align 1
  %32 = lshr i64 %19, 63
  %33 = trunc i64 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %33, i8* %34, align 1
  %35 = lshr i64 %19, 63
  %36 = xor i64 %32, %35
  %37 = add i64 %36, %35
  %38 = icmp eq i64 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpq__0x0__0x78__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 120
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

define %struct.Memory* @routine_je_.L_42fb38(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_0x78__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 120
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_0x130__rcx____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 304
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

define %struct.Memory* @routine_jge_.L_42fbcb(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_0x120__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 288
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x20__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_42fbb8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_42fbbd(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_42fb3f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_42fbd0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_42fa54(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpq__0x0__0x48__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 72
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

define %struct.Memory* @routine_je_.L_42fc0b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_0x48__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 72
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
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

define %struct.Memory* @routine_je_.L_42fc38(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_0x50__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
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

define %struct.Memory* @routine_je_.L_42fc65(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl_0x110__rcx____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 272
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

define %struct.Memory* @routine_jge_.L_42fcc1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_0x100__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 256
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_42fc6c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_42fcc6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_42fa1a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__eax__0x18__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 24
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_42fe16(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_42fd53(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_42fd91(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jge_.L_42fe03(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_42fdf0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_42fdf5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_42fd98(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_42fe08(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_42fcee(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_je_.L_42fe35(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_42fe54(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_42fe73(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jge_.L_42feb6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_42fe7a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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
