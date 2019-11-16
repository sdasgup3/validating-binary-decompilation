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

declare %struct.Memory* @sub_4b0070.dragon_weak(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_477710.somewhere(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_433300.add_antisuji_move(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @autohelperpat1150(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_4e0c00 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_4e0c00, %struct.Memory** %MEMORY
  %loadMem_4e0c01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i183 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i184 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i185 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i184
  %27 = load i64, i64* %PC.i183
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i183
  store i64 %26, i64* %RBP.i185, align 8
  store %struct.Memory* %loadMem_4e0c01, %struct.Memory** %MEMORY
  %loadMem_4e0c04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i181 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RBX.i182 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RBX.i182
  %36 = load i64, i64* %PC.i181
  %37 = add i64 %36, 1
  store i64 %37, i64* %PC.i181
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = add i64 %39, -8
  %41 = inttoptr i64 %40 to i64*
  store i64 %35, i64* %41
  store i64 %40, i64* %38, align 8
  store %struct.Memory* %loadMem_4e0c04, %struct.Memory** %MEMORY
  %loadMem_4e0c05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %43 = getelementptr inbounds %struct.GPR, %struct.GPR* %42, i32 0, i32 33
  %44 = getelementptr inbounds %struct.Reg, %struct.Reg* %43, i32 0, i32 0
  %PC.i179 = bitcast %union.anon* %44 to i64*
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %46 = getelementptr inbounds %struct.GPR, %struct.GPR* %45, i32 0, i32 13
  %47 = getelementptr inbounds %struct.Reg, %struct.Reg* %46, i32 0, i32 0
  %RSP.i180 = bitcast %union.anon* %47 to i64*
  %48 = load i64, i64* %RSP.i180
  %49 = load i64, i64* %PC.i179
  %50 = add i64 %49, 4
  store i64 %50, i64* %PC.i179
  %51 = sub i64 %48, 88
  store i64 %51, i64* %RSP.i180, align 8
  %52 = icmp ult i64 %48, 88
  %53 = zext i1 %52 to i8
  %54 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %53, i8* %54, align 1
  %55 = trunc i64 %51 to i32
  %56 = and i32 %55, 255
  %57 = call i32 @llvm.ctpop.i32(i32 %56)
  %58 = trunc i32 %57 to i8
  %59 = and i8 %58, 1
  %60 = xor i8 %59, 1
  %61 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %60, i8* %61, align 1
  %62 = xor i64 88, %48
  %63 = xor i64 %62, %51
  %64 = lshr i64 %63, 4
  %65 = trunc i64 %64 to i8
  %66 = and i8 %65, 1
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %66, i8* %67, align 1
  %68 = icmp eq i64 %51, 0
  %69 = zext i1 %68 to i8
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %69, i8* %70, align 1
  %71 = lshr i64 %51, 63
  %72 = trunc i64 %71 to i8
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %72, i8* %73, align 1
  %74 = lshr i64 %48, 63
  %75 = xor i64 %71, %74
  %76 = add i64 %75, %74
  %77 = icmp eq i64 %76, 2
  %78 = zext i1 %77 to i8
  %79 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %78, i8* %79, align 1
  store %struct.Memory* %loadMem_4e0c05, %struct.Memory** %MEMORY
  %loadMem_4e0c09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %80 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %81 = getelementptr inbounds %struct.GPR, %struct.GPR* %80, i32 0, i32 33
  %82 = getelementptr inbounds %struct.Reg, %struct.Reg* %81, i32 0, i32 0
  %PC.i176 = bitcast %union.anon* %82 to i64*
  %83 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %84 = getelementptr inbounds %struct.GPR, %struct.GPR* %83, i32 0, i32 11
  %85 = getelementptr inbounds %struct.Reg, %struct.Reg* %84, i32 0, i32 0
  %EDI.i177 = bitcast %union.anon* %85 to i32*
  %86 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %87 = getelementptr inbounds %struct.GPR, %struct.GPR* %86, i32 0, i32 15
  %88 = getelementptr inbounds %struct.Reg, %struct.Reg* %87, i32 0, i32 0
  %RBP.i178 = bitcast %union.anon* %88 to i64*
  %89 = load i64, i64* %RBP.i178
  %90 = sub i64 %89, 16
  %91 = load i32, i32* %EDI.i177
  %92 = zext i32 %91 to i64
  %93 = load i64, i64* %PC.i176
  %94 = add i64 %93, 3
  store i64 %94, i64* %PC.i176
  %95 = inttoptr i64 %90 to i32*
  store i32 %91, i32* %95
  store %struct.Memory* %loadMem_4e0c09, %struct.Memory** %MEMORY
  %loadMem_4e0c0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %96 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %97 = getelementptr inbounds %struct.GPR, %struct.GPR* %96, i32 0, i32 33
  %98 = getelementptr inbounds %struct.Reg, %struct.Reg* %97, i32 0, i32 0
  %PC.i174 = bitcast %union.anon* %98 to i64*
  %99 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %100 = getelementptr inbounds %struct.GPR, %struct.GPR* %99, i32 0, i32 9
  %101 = getelementptr inbounds %struct.Reg, %struct.Reg* %100, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %101 to i32*
  %102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %103 = getelementptr inbounds %struct.GPR, %struct.GPR* %102, i32 0, i32 15
  %104 = getelementptr inbounds %struct.Reg, %struct.Reg* %103, i32 0, i32 0
  %RBP.i175 = bitcast %union.anon* %104 to i64*
  %105 = load i64, i64* %RBP.i175
  %106 = sub i64 %105, 20
  %107 = load i32, i32* %ESI.i
  %108 = zext i32 %107 to i64
  %109 = load i64, i64* %PC.i174
  %110 = add i64 %109, 3
  store i64 %110, i64* %PC.i174
  %111 = inttoptr i64 %106 to i32*
  store i32 %107, i32* %111
  store %struct.Memory* %loadMem_4e0c0c, %struct.Memory** %MEMORY
  %loadMem_4e0c0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %113 = getelementptr inbounds %struct.GPR, %struct.GPR* %112, i32 0, i32 33
  %114 = getelementptr inbounds %struct.Reg, %struct.Reg* %113, i32 0, i32 0
  %PC.i172 = bitcast %union.anon* %114 to i64*
  %115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %116 = getelementptr inbounds %struct.GPR, %struct.GPR* %115, i32 0, i32 7
  %117 = getelementptr inbounds %struct.Reg, %struct.Reg* %116, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %117 to i32*
  %118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %119 = getelementptr inbounds %struct.GPR, %struct.GPR* %118, i32 0, i32 15
  %120 = getelementptr inbounds %struct.Reg, %struct.Reg* %119, i32 0, i32 0
  %RBP.i173 = bitcast %union.anon* %120 to i64*
  %121 = load i64, i64* %RBP.i173
  %122 = sub i64 %121, 24
  %123 = load i32, i32* %EDX.i
  %124 = zext i32 %123 to i64
  %125 = load i64, i64* %PC.i172
  %126 = add i64 %125, 3
  store i64 %126, i64* %PC.i172
  %127 = inttoptr i64 %122 to i32*
  store i32 %123, i32* %127
  store %struct.Memory* %loadMem_4e0c0f, %struct.Memory** %MEMORY
  %loadMem_4e0c12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %129 = getelementptr inbounds %struct.GPR, %struct.GPR* %128, i32 0, i32 33
  %130 = getelementptr inbounds %struct.Reg, %struct.Reg* %129, i32 0, i32 0
  %PC.i169 = bitcast %union.anon* %130 to i64*
  %131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %132 = getelementptr inbounds %struct.GPR, %struct.GPR* %131, i32 0, i32 5
  %133 = getelementptr inbounds %struct.Reg, %struct.Reg* %132, i32 0, i32 0
  %ECX.i170 = bitcast %union.anon* %133 to i32*
  %134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %135 = getelementptr inbounds %struct.GPR, %struct.GPR* %134, i32 0, i32 15
  %136 = getelementptr inbounds %struct.Reg, %struct.Reg* %135, i32 0, i32 0
  %RBP.i171 = bitcast %union.anon* %136 to i64*
  %137 = load i64, i64* %RBP.i171
  %138 = sub i64 %137, 28
  %139 = load i32, i32* %ECX.i170
  %140 = zext i32 %139 to i64
  %141 = load i64, i64* %PC.i169
  %142 = add i64 %141, 3
  store i64 %142, i64* %PC.i169
  %143 = inttoptr i64 %138 to i32*
  store i32 %139, i32* %143
  store %struct.Memory* %loadMem_4e0c12, %struct.Memory** %MEMORY
  %loadMem_4e0c15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %145 = getelementptr inbounds %struct.GPR, %struct.GPR* %144, i32 0, i32 33
  %146 = getelementptr inbounds %struct.Reg, %struct.Reg* %145, i32 0, i32 0
  %PC.i166 = bitcast %union.anon* %146 to i64*
  %147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %148 = getelementptr inbounds %struct.GPR, %struct.GPR* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.Reg, %struct.Reg* %148, i32 0, i32 0
  %RAX.i167 = bitcast %union.anon* %149 to i64*
  %150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %151 = getelementptr inbounds %struct.GPR, %struct.GPR* %150, i32 0, i32 15
  %152 = getelementptr inbounds %struct.Reg, %struct.Reg* %151, i32 0, i32 0
  %RBP.i168 = bitcast %union.anon* %152 to i64*
  %153 = load i64, i64* %RBP.i168
  %154 = sub i64 %153, 16
  %155 = load i64, i64* %PC.i166
  %156 = add i64 %155, 4
  store i64 %156, i64* %PC.i166
  %157 = inttoptr i64 %154 to i32*
  %158 = load i32, i32* %157
  %159 = sext i32 %158 to i64
  store i64 %159, i64* %RAX.i167, align 8
  store %struct.Memory* %loadMem_4e0c15, %struct.Memory** %MEMORY
  %loadMem_4e0c19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %161 = getelementptr inbounds %struct.GPR, %struct.GPR* %160, i32 0, i32 33
  %162 = getelementptr inbounds %struct.Reg, %struct.Reg* %161, i32 0, i32 0
  %PC.i163 = bitcast %union.anon* %162 to i64*
  %163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %164 = getelementptr inbounds %struct.GPR, %struct.GPR* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.Reg, %struct.Reg* %164, i32 0, i32 0
  %RAX.i164 = bitcast %union.anon* %165 to i64*
  %166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %167 = getelementptr inbounds %struct.GPR, %struct.GPR* %166, i32 0, i32 5
  %168 = getelementptr inbounds %struct.Reg, %struct.Reg* %167, i32 0, i32 0
  %RCX.i165 = bitcast %union.anon* %168 to i64*
  %169 = load i64, i64* %RAX.i164
  %170 = mul i64 %169, 4
  %171 = add i64 %170, 11905904
  %172 = load i64, i64* %PC.i163
  %173 = add i64 %172, 7
  store i64 %173, i64* %PC.i163
  %174 = inttoptr i64 %171 to i32*
  %175 = load i32, i32* %174
  %176 = zext i32 %175 to i64
  store i64 %176, i64* %RCX.i165, align 8
  store %struct.Memory* %loadMem_4e0c19, %struct.Memory** %MEMORY
  %loadMem_4e0c20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %178 = getelementptr inbounds %struct.GPR, %struct.GPR* %177, i32 0, i32 33
  %179 = getelementptr inbounds %struct.Reg, %struct.Reg* %178, i32 0, i32 0
  %PC.i160 = bitcast %union.anon* %179 to i64*
  %180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %181 = getelementptr inbounds %struct.GPR, %struct.GPR* %180, i32 0, i32 5
  %182 = getelementptr inbounds %struct.Reg, %struct.Reg* %181, i32 0, i32 0
  %RCX.i161 = bitcast %union.anon* %182 to i64*
  %183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %184 = getelementptr inbounds %struct.GPR, %struct.GPR* %183, i32 0, i32 15
  %185 = getelementptr inbounds %struct.Reg, %struct.Reg* %184, i32 0, i32 0
  %RBP.i162 = bitcast %union.anon* %185 to i64*
  %186 = load i64, i64* %RCX.i161
  %187 = load i64, i64* %RBP.i162
  %188 = sub i64 %187, 20
  %189 = load i64, i64* %PC.i160
  %190 = add i64 %189, 3
  store i64 %190, i64* %PC.i160
  %191 = trunc i64 %186 to i32
  %192 = inttoptr i64 %188 to i32*
  %193 = load i32, i32* %192
  %194 = add i32 %193, %191
  %195 = zext i32 %194 to i64
  store i64 %195, i64* %RCX.i161, align 8
  %196 = icmp ult i32 %194, %191
  %197 = icmp ult i32 %194, %193
  %198 = or i1 %196, %197
  %199 = zext i1 %198 to i8
  %200 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %199, i8* %200, align 1
  %201 = and i32 %194, 255
  %202 = call i32 @llvm.ctpop.i32(i32 %201)
  %203 = trunc i32 %202 to i8
  %204 = and i8 %203, 1
  %205 = xor i8 %204, 1
  %206 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %205, i8* %206, align 1
  %207 = xor i32 %193, %191
  %208 = xor i32 %207, %194
  %209 = lshr i32 %208, 4
  %210 = trunc i32 %209 to i8
  %211 = and i8 %210, 1
  %212 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %211, i8* %212, align 1
  %213 = icmp eq i32 %194, 0
  %214 = zext i1 %213 to i8
  %215 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %214, i8* %215, align 1
  %216 = lshr i32 %194, 31
  %217 = trunc i32 %216 to i8
  %218 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %217, i8* %218, align 1
  %219 = lshr i32 %191, 31
  %220 = lshr i32 %193, 31
  %221 = xor i32 %216, %219
  %222 = xor i32 %216, %220
  %223 = add i32 %221, %222
  %224 = icmp eq i32 %223, 2
  %225 = zext i1 %224 to i8
  %226 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %225, i8* %226, align 1
  store %struct.Memory* %loadMem_4e0c20, %struct.Memory** %MEMORY
  %loadMem_4e0c23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %228 = getelementptr inbounds %struct.GPR, %struct.GPR* %227, i32 0, i32 33
  %229 = getelementptr inbounds %struct.Reg, %struct.Reg* %228, i32 0, i32 0
  %PC.i157 = bitcast %union.anon* %229 to i64*
  %230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %231 = getelementptr inbounds %struct.GPR, %struct.GPR* %230, i32 0, i32 5
  %232 = getelementptr inbounds %struct.Reg, %struct.Reg* %231, i32 0, i32 0
  %ECX.i158 = bitcast %union.anon* %232 to i32*
  %233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %234 = getelementptr inbounds %struct.GPR, %struct.GPR* %233, i32 0, i32 15
  %235 = getelementptr inbounds %struct.Reg, %struct.Reg* %234, i32 0, i32 0
  %RBP.i159 = bitcast %union.anon* %235 to i64*
  %236 = load i64, i64* %RBP.i159
  %237 = sub i64 %236, 32
  %238 = load i32, i32* %ECX.i158
  %239 = zext i32 %238 to i64
  %240 = load i64, i64* %PC.i157
  %241 = add i64 %240, 3
  store i64 %241, i64* %PC.i157
  %242 = inttoptr i64 %237 to i32*
  store i32 %238, i32* %242
  store %struct.Memory* %loadMem_4e0c23, %struct.Memory** %MEMORY
  %loadMem_4e0c26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %244 = getelementptr inbounds %struct.GPR, %struct.GPR* %243, i32 0, i32 33
  %245 = getelementptr inbounds %struct.Reg, %struct.Reg* %244, i32 0, i32 0
  %PC.i154 = bitcast %union.anon* %245 to i64*
  %246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %247 = getelementptr inbounds %struct.GPR, %struct.GPR* %246, i32 0, i32 1
  %248 = getelementptr inbounds %struct.Reg, %struct.Reg* %247, i32 0, i32 0
  %RAX.i155 = bitcast %union.anon* %248 to i64*
  %249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %250 = getelementptr inbounds %struct.GPR, %struct.GPR* %249, i32 0, i32 15
  %251 = getelementptr inbounds %struct.Reg, %struct.Reg* %250, i32 0, i32 0
  %RBP.i156 = bitcast %union.anon* %251 to i64*
  %252 = load i64, i64* %RBP.i156
  %253 = sub i64 %252, 16
  %254 = load i64, i64* %PC.i154
  %255 = add i64 %254, 4
  store i64 %255, i64* %PC.i154
  %256 = inttoptr i64 %253 to i32*
  %257 = load i32, i32* %256
  %258 = sext i32 %257 to i64
  store i64 %258, i64* %RAX.i155, align 8
  store %struct.Memory* %loadMem_4e0c26, %struct.Memory** %MEMORY
  %loadMem_4e0c2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %260 = getelementptr inbounds %struct.GPR, %struct.GPR* %259, i32 0, i32 33
  %261 = getelementptr inbounds %struct.Reg, %struct.Reg* %260, i32 0, i32 0
  %PC.i151 = bitcast %union.anon* %261 to i64*
  %262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %263 = getelementptr inbounds %struct.GPR, %struct.GPR* %262, i32 0, i32 1
  %264 = getelementptr inbounds %struct.Reg, %struct.Reg* %263, i32 0, i32 0
  %RAX.i152 = bitcast %union.anon* %264 to i64*
  %265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %266 = getelementptr inbounds %struct.GPR, %struct.GPR* %265, i32 0, i32 5
  %267 = getelementptr inbounds %struct.Reg, %struct.Reg* %266, i32 0, i32 0
  %RCX.i153 = bitcast %union.anon* %267 to i64*
  %268 = load i64, i64* %RAX.i152
  %269 = mul i64 %268, 4
  %270 = add i64 %269, 11907088
  %271 = load i64, i64* %PC.i151
  %272 = add i64 %271, 7
  store i64 %272, i64* %PC.i151
  %273 = inttoptr i64 %270 to i32*
  %274 = load i32, i32* %273
  %275 = zext i32 %274 to i64
  store i64 %275, i64* %RCX.i153, align 8
  store %struct.Memory* %loadMem_4e0c2a, %struct.Memory** %MEMORY
  %loadMem_4e0c31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %277 = getelementptr inbounds %struct.GPR, %struct.GPR* %276, i32 0, i32 33
  %278 = getelementptr inbounds %struct.Reg, %struct.Reg* %277, i32 0, i32 0
  %PC.i148 = bitcast %union.anon* %278 to i64*
  %279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %280 = getelementptr inbounds %struct.GPR, %struct.GPR* %279, i32 0, i32 5
  %281 = getelementptr inbounds %struct.Reg, %struct.Reg* %280, i32 0, i32 0
  %RCX.i149 = bitcast %union.anon* %281 to i64*
  %282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %283 = getelementptr inbounds %struct.GPR, %struct.GPR* %282, i32 0, i32 15
  %284 = getelementptr inbounds %struct.Reg, %struct.Reg* %283, i32 0, i32 0
  %RBP.i150 = bitcast %union.anon* %284 to i64*
  %285 = load i64, i64* %RCX.i149
  %286 = load i64, i64* %RBP.i150
  %287 = sub i64 %286, 20
  %288 = load i64, i64* %PC.i148
  %289 = add i64 %288, 3
  store i64 %289, i64* %PC.i148
  %290 = trunc i64 %285 to i32
  %291 = inttoptr i64 %287 to i32*
  %292 = load i32, i32* %291
  %293 = add i32 %292, %290
  %294 = zext i32 %293 to i64
  store i64 %294, i64* %RCX.i149, align 8
  %295 = icmp ult i32 %293, %290
  %296 = icmp ult i32 %293, %292
  %297 = or i1 %295, %296
  %298 = zext i1 %297 to i8
  %299 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %298, i8* %299, align 1
  %300 = and i32 %293, 255
  %301 = call i32 @llvm.ctpop.i32(i32 %300)
  %302 = trunc i32 %301 to i8
  %303 = and i8 %302, 1
  %304 = xor i8 %303, 1
  %305 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %304, i8* %305, align 1
  %306 = xor i32 %292, %290
  %307 = xor i32 %306, %293
  %308 = lshr i32 %307, 4
  %309 = trunc i32 %308 to i8
  %310 = and i8 %309, 1
  %311 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %310, i8* %311, align 1
  %312 = icmp eq i32 %293, 0
  %313 = zext i1 %312 to i8
  %314 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %313, i8* %314, align 1
  %315 = lshr i32 %293, 31
  %316 = trunc i32 %315 to i8
  %317 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %316, i8* %317, align 1
  %318 = lshr i32 %290, 31
  %319 = lshr i32 %292, 31
  %320 = xor i32 %315, %318
  %321 = xor i32 %315, %319
  %322 = add i32 %320, %321
  %323 = icmp eq i32 %322, 2
  %324 = zext i1 %323 to i8
  %325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %324, i8* %325, align 1
  store %struct.Memory* %loadMem_4e0c31, %struct.Memory** %MEMORY
  %loadMem_4e0c34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %327 = getelementptr inbounds %struct.GPR, %struct.GPR* %326, i32 0, i32 33
  %328 = getelementptr inbounds %struct.Reg, %struct.Reg* %327, i32 0, i32 0
  %PC.i145 = bitcast %union.anon* %328 to i64*
  %329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %330 = getelementptr inbounds %struct.GPR, %struct.GPR* %329, i32 0, i32 5
  %331 = getelementptr inbounds %struct.Reg, %struct.Reg* %330, i32 0, i32 0
  %ECX.i146 = bitcast %union.anon* %331 to i32*
  %332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %333 = getelementptr inbounds %struct.GPR, %struct.GPR* %332, i32 0, i32 15
  %334 = getelementptr inbounds %struct.Reg, %struct.Reg* %333, i32 0, i32 0
  %RBP.i147 = bitcast %union.anon* %334 to i64*
  %335 = load i64, i64* %RBP.i147
  %336 = sub i64 %335, 36
  %337 = load i32, i32* %ECX.i146
  %338 = zext i32 %337 to i64
  %339 = load i64, i64* %PC.i145
  %340 = add i64 %339, 3
  store i64 %340, i64* %PC.i145
  %341 = inttoptr i64 %336 to i32*
  store i32 %337, i32* %341
  store %struct.Memory* %loadMem_4e0c34, %struct.Memory** %MEMORY
  %loadMem_4e0c37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %342 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %343 = getelementptr inbounds %struct.GPR, %struct.GPR* %342, i32 0, i32 33
  %344 = getelementptr inbounds %struct.Reg, %struct.Reg* %343, i32 0, i32 0
  %PC.i142 = bitcast %union.anon* %344 to i64*
  %345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %346 = getelementptr inbounds %struct.GPR, %struct.GPR* %345, i32 0, i32 1
  %347 = getelementptr inbounds %struct.Reg, %struct.Reg* %346, i32 0, i32 0
  %RAX.i143 = bitcast %union.anon* %347 to i64*
  %348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %349 = getelementptr inbounds %struct.GPR, %struct.GPR* %348, i32 0, i32 15
  %350 = getelementptr inbounds %struct.Reg, %struct.Reg* %349, i32 0, i32 0
  %RBP.i144 = bitcast %union.anon* %350 to i64*
  %351 = load i64, i64* %RBP.i144
  %352 = sub i64 %351, 16
  %353 = load i64, i64* %PC.i142
  %354 = add i64 %353, 4
  store i64 %354, i64* %PC.i142
  %355 = inttoptr i64 %352 to i32*
  %356 = load i32, i32* %355
  %357 = sext i32 %356 to i64
  store i64 %357, i64* %RAX.i143, align 8
  store %struct.Memory* %loadMem_4e0c37, %struct.Memory** %MEMORY
  %loadMem_4e0c3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %359 = getelementptr inbounds %struct.GPR, %struct.GPR* %358, i32 0, i32 33
  %360 = getelementptr inbounds %struct.Reg, %struct.Reg* %359, i32 0, i32 0
  %PC.i139 = bitcast %union.anon* %360 to i64*
  %361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %362 = getelementptr inbounds %struct.GPR, %struct.GPR* %361, i32 0, i32 1
  %363 = getelementptr inbounds %struct.Reg, %struct.Reg* %362, i32 0, i32 0
  %RAX.i140 = bitcast %union.anon* %363 to i64*
  %364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %365 = getelementptr inbounds %struct.GPR, %struct.GPR* %364, i32 0, i32 5
  %366 = getelementptr inbounds %struct.Reg, %struct.Reg* %365, i32 0, i32 0
  %RCX.i141 = bitcast %union.anon* %366 to i64*
  %367 = load i64, i64* %RAX.i140
  %368 = mul i64 %367, 4
  %369 = add i64 %368, 11908272
  %370 = load i64, i64* %PC.i139
  %371 = add i64 %370, 7
  store i64 %371, i64* %PC.i139
  %372 = inttoptr i64 %369 to i32*
  %373 = load i32, i32* %372
  %374 = zext i32 %373 to i64
  store i64 %374, i64* %RCX.i141, align 8
  store %struct.Memory* %loadMem_4e0c3b, %struct.Memory** %MEMORY
  %loadMem_4e0c42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %376 = getelementptr inbounds %struct.GPR, %struct.GPR* %375, i32 0, i32 33
  %377 = getelementptr inbounds %struct.Reg, %struct.Reg* %376, i32 0, i32 0
  %PC.i136 = bitcast %union.anon* %377 to i64*
  %378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %379 = getelementptr inbounds %struct.GPR, %struct.GPR* %378, i32 0, i32 5
  %380 = getelementptr inbounds %struct.Reg, %struct.Reg* %379, i32 0, i32 0
  %RCX.i137 = bitcast %union.anon* %380 to i64*
  %381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %382 = getelementptr inbounds %struct.GPR, %struct.GPR* %381, i32 0, i32 15
  %383 = getelementptr inbounds %struct.Reg, %struct.Reg* %382, i32 0, i32 0
  %RBP.i138 = bitcast %union.anon* %383 to i64*
  %384 = load i64, i64* %RCX.i137
  %385 = load i64, i64* %RBP.i138
  %386 = sub i64 %385, 20
  %387 = load i64, i64* %PC.i136
  %388 = add i64 %387, 3
  store i64 %388, i64* %PC.i136
  %389 = trunc i64 %384 to i32
  %390 = inttoptr i64 %386 to i32*
  %391 = load i32, i32* %390
  %392 = add i32 %391, %389
  %393 = zext i32 %392 to i64
  store i64 %393, i64* %RCX.i137, align 8
  %394 = icmp ult i32 %392, %389
  %395 = icmp ult i32 %392, %391
  %396 = or i1 %394, %395
  %397 = zext i1 %396 to i8
  %398 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %397, i8* %398, align 1
  %399 = and i32 %392, 255
  %400 = call i32 @llvm.ctpop.i32(i32 %399)
  %401 = trunc i32 %400 to i8
  %402 = and i8 %401, 1
  %403 = xor i8 %402, 1
  %404 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %403, i8* %404, align 1
  %405 = xor i32 %391, %389
  %406 = xor i32 %405, %392
  %407 = lshr i32 %406, 4
  %408 = trunc i32 %407 to i8
  %409 = and i8 %408, 1
  %410 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %409, i8* %410, align 1
  %411 = icmp eq i32 %392, 0
  %412 = zext i1 %411 to i8
  %413 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %412, i8* %413, align 1
  %414 = lshr i32 %392, 31
  %415 = trunc i32 %414 to i8
  %416 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %415, i8* %416, align 1
  %417 = lshr i32 %389, 31
  %418 = lshr i32 %391, 31
  %419 = xor i32 %414, %417
  %420 = xor i32 %414, %418
  %421 = add i32 %419, %420
  %422 = icmp eq i32 %421, 2
  %423 = zext i1 %422 to i8
  %424 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %423, i8* %424, align 1
  store %struct.Memory* %loadMem_4e0c42, %struct.Memory** %MEMORY
  %loadMem_4e0c45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %425 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %426 = getelementptr inbounds %struct.GPR, %struct.GPR* %425, i32 0, i32 33
  %427 = getelementptr inbounds %struct.Reg, %struct.Reg* %426, i32 0, i32 0
  %PC.i133 = bitcast %union.anon* %427 to i64*
  %428 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %429 = getelementptr inbounds %struct.GPR, %struct.GPR* %428, i32 0, i32 5
  %430 = getelementptr inbounds %struct.Reg, %struct.Reg* %429, i32 0, i32 0
  %ECX.i134 = bitcast %union.anon* %430 to i32*
  %431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %432 = getelementptr inbounds %struct.GPR, %struct.GPR* %431, i32 0, i32 15
  %433 = getelementptr inbounds %struct.Reg, %struct.Reg* %432, i32 0, i32 0
  %RBP.i135 = bitcast %union.anon* %433 to i64*
  %434 = load i64, i64* %RBP.i135
  %435 = sub i64 %434, 40
  %436 = load i32, i32* %ECX.i134
  %437 = zext i32 %436 to i64
  %438 = load i64, i64* %PC.i133
  %439 = add i64 %438, 3
  store i64 %439, i64* %PC.i133
  %440 = inttoptr i64 %435 to i32*
  store i32 %436, i32* %440
  store %struct.Memory* %loadMem_4e0c45, %struct.Memory** %MEMORY
  %loadMem_4e0c48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %442 = getelementptr inbounds %struct.GPR, %struct.GPR* %441, i32 0, i32 33
  %443 = getelementptr inbounds %struct.Reg, %struct.Reg* %442, i32 0, i32 0
  %PC.i130 = bitcast %union.anon* %443 to i64*
  %444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %445 = getelementptr inbounds %struct.GPR, %struct.GPR* %444, i32 0, i32 1
  %446 = getelementptr inbounds %struct.Reg, %struct.Reg* %445, i32 0, i32 0
  %RAX.i131 = bitcast %union.anon* %446 to i64*
  %447 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %448 = getelementptr inbounds %struct.GPR, %struct.GPR* %447, i32 0, i32 15
  %449 = getelementptr inbounds %struct.Reg, %struct.Reg* %448, i32 0, i32 0
  %RBP.i132 = bitcast %union.anon* %449 to i64*
  %450 = load i64, i64* %RBP.i132
  %451 = sub i64 %450, 16
  %452 = load i64, i64* %PC.i130
  %453 = add i64 %452, 4
  store i64 %453, i64* %PC.i130
  %454 = inttoptr i64 %451 to i32*
  %455 = load i32, i32* %454
  %456 = sext i32 %455 to i64
  store i64 %456, i64* %RAX.i131, align 8
  store %struct.Memory* %loadMem_4e0c48, %struct.Memory** %MEMORY
  %loadMem_4e0c4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %457 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %458 = getelementptr inbounds %struct.GPR, %struct.GPR* %457, i32 0, i32 33
  %459 = getelementptr inbounds %struct.Reg, %struct.Reg* %458, i32 0, i32 0
  %PC.i127 = bitcast %union.anon* %459 to i64*
  %460 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %461 = getelementptr inbounds %struct.GPR, %struct.GPR* %460, i32 0, i32 1
  %462 = getelementptr inbounds %struct.Reg, %struct.Reg* %461, i32 0, i32 0
  %RAX.i128 = bitcast %union.anon* %462 to i64*
  %463 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %464 = getelementptr inbounds %struct.GPR, %struct.GPR* %463, i32 0, i32 5
  %465 = getelementptr inbounds %struct.Reg, %struct.Reg* %464, i32 0, i32 0
  %RCX.i129 = bitcast %union.anon* %465 to i64*
  %466 = load i64, i64* %RAX.i128
  %467 = mul i64 %466, 4
  %468 = add i64 %467, 11905936
  %469 = load i64, i64* %PC.i127
  %470 = add i64 %469, 7
  store i64 %470, i64* %PC.i127
  %471 = inttoptr i64 %468 to i32*
  %472 = load i32, i32* %471
  %473 = zext i32 %472 to i64
  store i64 %473, i64* %RCX.i129, align 8
  store %struct.Memory* %loadMem_4e0c4c, %struct.Memory** %MEMORY
  %loadMem_4e0c53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %475 = getelementptr inbounds %struct.GPR, %struct.GPR* %474, i32 0, i32 33
  %476 = getelementptr inbounds %struct.Reg, %struct.Reg* %475, i32 0, i32 0
  %PC.i124 = bitcast %union.anon* %476 to i64*
  %477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %478 = getelementptr inbounds %struct.GPR, %struct.GPR* %477, i32 0, i32 5
  %479 = getelementptr inbounds %struct.Reg, %struct.Reg* %478, i32 0, i32 0
  %RCX.i125 = bitcast %union.anon* %479 to i64*
  %480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %481 = getelementptr inbounds %struct.GPR, %struct.GPR* %480, i32 0, i32 15
  %482 = getelementptr inbounds %struct.Reg, %struct.Reg* %481, i32 0, i32 0
  %RBP.i126 = bitcast %union.anon* %482 to i64*
  %483 = load i64, i64* %RCX.i125
  %484 = load i64, i64* %RBP.i126
  %485 = sub i64 %484, 20
  %486 = load i64, i64* %PC.i124
  %487 = add i64 %486, 3
  store i64 %487, i64* %PC.i124
  %488 = trunc i64 %483 to i32
  %489 = inttoptr i64 %485 to i32*
  %490 = load i32, i32* %489
  %491 = add i32 %490, %488
  %492 = zext i32 %491 to i64
  store i64 %492, i64* %RCX.i125, align 8
  %493 = icmp ult i32 %491, %488
  %494 = icmp ult i32 %491, %490
  %495 = or i1 %493, %494
  %496 = zext i1 %495 to i8
  %497 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %496, i8* %497, align 1
  %498 = and i32 %491, 255
  %499 = call i32 @llvm.ctpop.i32(i32 %498)
  %500 = trunc i32 %499 to i8
  %501 = and i8 %500, 1
  %502 = xor i8 %501, 1
  %503 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %502, i8* %503, align 1
  %504 = xor i32 %490, %488
  %505 = xor i32 %504, %491
  %506 = lshr i32 %505, 4
  %507 = trunc i32 %506 to i8
  %508 = and i8 %507, 1
  %509 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %508, i8* %509, align 1
  %510 = icmp eq i32 %491, 0
  %511 = zext i1 %510 to i8
  %512 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %511, i8* %512, align 1
  %513 = lshr i32 %491, 31
  %514 = trunc i32 %513 to i8
  %515 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %514, i8* %515, align 1
  %516 = lshr i32 %488, 31
  %517 = lshr i32 %490, 31
  %518 = xor i32 %513, %516
  %519 = xor i32 %513, %517
  %520 = add i32 %518, %519
  %521 = icmp eq i32 %520, 2
  %522 = zext i1 %521 to i8
  %523 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %522, i8* %523, align 1
  store %struct.Memory* %loadMem_4e0c53, %struct.Memory** %MEMORY
  %loadMem_4e0c56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %525 = getelementptr inbounds %struct.GPR, %struct.GPR* %524, i32 0, i32 33
  %526 = getelementptr inbounds %struct.Reg, %struct.Reg* %525, i32 0, i32 0
  %PC.i121 = bitcast %union.anon* %526 to i64*
  %527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %528 = getelementptr inbounds %struct.GPR, %struct.GPR* %527, i32 0, i32 5
  %529 = getelementptr inbounds %struct.Reg, %struct.Reg* %528, i32 0, i32 0
  %ECX.i122 = bitcast %union.anon* %529 to i32*
  %530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %531 = getelementptr inbounds %struct.GPR, %struct.GPR* %530, i32 0, i32 15
  %532 = getelementptr inbounds %struct.Reg, %struct.Reg* %531, i32 0, i32 0
  %RBP.i123 = bitcast %union.anon* %532 to i64*
  %533 = load i64, i64* %RBP.i123
  %534 = sub i64 %533, 44
  %535 = load i32, i32* %ECX.i122
  %536 = zext i32 %535 to i64
  %537 = load i64, i64* %PC.i121
  %538 = add i64 %537, 3
  store i64 %538, i64* %PC.i121
  %539 = inttoptr i64 %534 to i32*
  store i32 %535, i32* %539
  store %struct.Memory* %loadMem_4e0c56, %struct.Memory** %MEMORY
  %loadMem_4e0c59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %541 = getelementptr inbounds %struct.GPR, %struct.GPR* %540, i32 0, i32 33
  %542 = getelementptr inbounds %struct.Reg, %struct.Reg* %541, i32 0, i32 0
  %PC.i118 = bitcast %union.anon* %542 to i64*
  %543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %544 = getelementptr inbounds %struct.GPR, %struct.GPR* %543, i32 0, i32 1
  %545 = getelementptr inbounds %struct.Reg, %struct.Reg* %544, i32 0, i32 0
  %RAX.i119 = bitcast %union.anon* %545 to i64*
  %546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %547 = getelementptr inbounds %struct.GPR, %struct.GPR* %546, i32 0, i32 15
  %548 = getelementptr inbounds %struct.Reg, %struct.Reg* %547, i32 0, i32 0
  %RBP.i120 = bitcast %union.anon* %548 to i64*
  %549 = load i64, i64* %RBP.i120
  %550 = sub i64 %549, 16
  %551 = load i64, i64* %PC.i118
  %552 = add i64 %551, 4
  store i64 %552, i64* %PC.i118
  %553 = inttoptr i64 %550 to i32*
  %554 = load i32, i32* %553
  %555 = sext i32 %554 to i64
  store i64 %555, i64* %RAX.i119, align 8
  store %struct.Memory* %loadMem_4e0c59, %struct.Memory** %MEMORY
  %loadMem_4e0c5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %557 = getelementptr inbounds %struct.GPR, %struct.GPR* %556, i32 0, i32 33
  %558 = getelementptr inbounds %struct.Reg, %struct.Reg* %557, i32 0, i32 0
  %PC.i115 = bitcast %union.anon* %558 to i64*
  %559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %560 = getelementptr inbounds %struct.GPR, %struct.GPR* %559, i32 0, i32 1
  %561 = getelementptr inbounds %struct.Reg, %struct.Reg* %560, i32 0, i32 0
  %RAX.i116 = bitcast %union.anon* %561 to i64*
  %562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %563 = getelementptr inbounds %struct.GPR, %struct.GPR* %562, i32 0, i32 5
  %564 = getelementptr inbounds %struct.Reg, %struct.Reg* %563, i32 0, i32 0
  %RCX.i117 = bitcast %union.anon* %564 to i64*
  %565 = load i64, i64* %RAX.i116
  %566 = mul i64 %565, 4
  %567 = add i64 %566, 11907120
  %568 = load i64, i64* %PC.i115
  %569 = add i64 %568, 7
  store i64 %569, i64* %PC.i115
  %570 = inttoptr i64 %567 to i32*
  %571 = load i32, i32* %570
  %572 = zext i32 %571 to i64
  store i64 %572, i64* %RCX.i117, align 8
  store %struct.Memory* %loadMem_4e0c5d, %struct.Memory** %MEMORY
  %loadMem_4e0c64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %573 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %574 = getelementptr inbounds %struct.GPR, %struct.GPR* %573, i32 0, i32 33
  %575 = getelementptr inbounds %struct.Reg, %struct.Reg* %574, i32 0, i32 0
  %PC.i112 = bitcast %union.anon* %575 to i64*
  %576 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %577 = getelementptr inbounds %struct.GPR, %struct.GPR* %576, i32 0, i32 5
  %578 = getelementptr inbounds %struct.Reg, %struct.Reg* %577, i32 0, i32 0
  %RCX.i113 = bitcast %union.anon* %578 to i64*
  %579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %580 = getelementptr inbounds %struct.GPR, %struct.GPR* %579, i32 0, i32 15
  %581 = getelementptr inbounds %struct.Reg, %struct.Reg* %580, i32 0, i32 0
  %RBP.i114 = bitcast %union.anon* %581 to i64*
  %582 = load i64, i64* %RCX.i113
  %583 = load i64, i64* %RBP.i114
  %584 = sub i64 %583, 20
  %585 = load i64, i64* %PC.i112
  %586 = add i64 %585, 3
  store i64 %586, i64* %PC.i112
  %587 = trunc i64 %582 to i32
  %588 = inttoptr i64 %584 to i32*
  %589 = load i32, i32* %588
  %590 = add i32 %589, %587
  %591 = zext i32 %590 to i64
  store i64 %591, i64* %RCX.i113, align 8
  %592 = icmp ult i32 %590, %587
  %593 = icmp ult i32 %590, %589
  %594 = or i1 %592, %593
  %595 = zext i1 %594 to i8
  %596 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %595, i8* %596, align 1
  %597 = and i32 %590, 255
  %598 = call i32 @llvm.ctpop.i32(i32 %597)
  %599 = trunc i32 %598 to i8
  %600 = and i8 %599, 1
  %601 = xor i8 %600, 1
  %602 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %601, i8* %602, align 1
  %603 = xor i32 %589, %587
  %604 = xor i32 %603, %590
  %605 = lshr i32 %604, 4
  %606 = trunc i32 %605 to i8
  %607 = and i8 %606, 1
  %608 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %607, i8* %608, align 1
  %609 = icmp eq i32 %590, 0
  %610 = zext i1 %609 to i8
  %611 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %610, i8* %611, align 1
  %612 = lshr i32 %590, 31
  %613 = trunc i32 %612 to i8
  %614 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %613, i8* %614, align 1
  %615 = lshr i32 %587, 31
  %616 = lshr i32 %589, 31
  %617 = xor i32 %612, %615
  %618 = xor i32 %612, %616
  %619 = add i32 %617, %618
  %620 = icmp eq i32 %619, 2
  %621 = zext i1 %620 to i8
  %622 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %621, i8* %622, align 1
  store %struct.Memory* %loadMem_4e0c64, %struct.Memory** %MEMORY
  %loadMem_4e0c67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %624 = getelementptr inbounds %struct.GPR, %struct.GPR* %623, i32 0, i32 33
  %625 = getelementptr inbounds %struct.Reg, %struct.Reg* %624, i32 0, i32 0
  %PC.i109 = bitcast %union.anon* %625 to i64*
  %626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %627 = getelementptr inbounds %struct.GPR, %struct.GPR* %626, i32 0, i32 5
  %628 = getelementptr inbounds %struct.Reg, %struct.Reg* %627, i32 0, i32 0
  %ECX.i110 = bitcast %union.anon* %628 to i32*
  %629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %630 = getelementptr inbounds %struct.GPR, %struct.GPR* %629, i32 0, i32 15
  %631 = getelementptr inbounds %struct.Reg, %struct.Reg* %630, i32 0, i32 0
  %RBP.i111 = bitcast %union.anon* %631 to i64*
  %632 = load i64, i64* %RBP.i111
  %633 = sub i64 %632, 48
  %634 = load i32, i32* %ECX.i110
  %635 = zext i32 %634 to i64
  %636 = load i64, i64* %PC.i109
  %637 = add i64 %636, 3
  store i64 %637, i64* %PC.i109
  %638 = inttoptr i64 %633 to i32*
  store i32 %634, i32* %638
  store %struct.Memory* %loadMem_4e0c67, %struct.Memory** %MEMORY
  %loadMem_4e0c6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %640 = getelementptr inbounds %struct.GPR, %struct.GPR* %639, i32 0, i32 33
  %641 = getelementptr inbounds %struct.Reg, %struct.Reg* %640, i32 0, i32 0
  %PC.i106 = bitcast %union.anon* %641 to i64*
  %642 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %643 = getelementptr inbounds %struct.GPR, %struct.GPR* %642, i32 0, i32 1
  %644 = getelementptr inbounds %struct.Reg, %struct.Reg* %643, i32 0, i32 0
  %RAX.i107 = bitcast %union.anon* %644 to i64*
  %645 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %646 = getelementptr inbounds %struct.GPR, %struct.GPR* %645, i32 0, i32 15
  %647 = getelementptr inbounds %struct.Reg, %struct.Reg* %646, i32 0, i32 0
  %RBP.i108 = bitcast %union.anon* %647 to i64*
  %648 = load i64, i64* %RBP.i108
  %649 = sub i64 %648, 16
  %650 = load i64, i64* %PC.i106
  %651 = add i64 %650, 4
  store i64 %651, i64* %PC.i106
  %652 = inttoptr i64 %649 to i32*
  %653 = load i32, i32* %652
  %654 = sext i32 %653 to i64
  store i64 %654, i64* %RAX.i107, align 8
  store %struct.Memory* %loadMem_4e0c6a, %struct.Memory** %MEMORY
  %loadMem_4e0c6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %656 = getelementptr inbounds %struct.GPR, %struct.GPR* %655, i32 0, i32 33
  %657 = getelementptr inbounds %struct.Reg, %struct.Reg* %656, i32 0, i32 0
  %PC.i103 = bitcast %union.anon* %657 to i64*
  %658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %659 = getelementptr inbounds %struct.GPR, %struct.GPR* %658, i32 0, i32 1
  %660 = getelementptr inbounds %struct.Reg, %struct.Reg* %659, i32 0, i32 0
  %RAX.i104 = bitcast %union.anon* %660 to i64*
  %661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %662 = getelementptr inbounds %struct.GPR, %struct.GPR* %661, i32 0, i32 5
  %663 = getelementptr inbounds %struct.Reg, %struct.Reg* %662, i32 0, i32 0
  %RCX.i105 = bitcast %union.anon* %663 to i64*
  %664 = load i64, i64* %RAX.i104
  %665 = mul i64 %664, 4
  %666 = add i64 %665, 11908304
  %667 = load i64, i64* %PC.i103
  %668 = add i64 %667, 7
  store i64 %668, i64* %PC.i103
  %669 = inttoptr i64 %666 to i32*
  %670 = load i32, i32* %669
  %671 = zext i32 %670 to i64
  store i64 %671, i64* %RCX.i105, align 8
  store %struct.Memory* %loadMem_4e0c6e, %struct.Memory** %MEMORY
  %loadMem_4e0c75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %672 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %673 = getelementptr inbounds %struct.GPR, %struct.GPR* %672, i32 0, i32 33
  %674 = getelementptr inbounds %struct.Reg, %struct.Reg* %673, i32 0, i32 0
  %PC.i100 = bitcast %union.anon* %674 to i64*
  %675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %676 = getelementptr inbounds %struct.GPR, %struct.GPR* %675, i32 0, i32 5
  %677 = getelementptr inbounds %struct.Reg, %struct.Reg* %676, i32 0, i32 0
  %RCX.i101 = bitcast %union.anon* %677 to i64*
  %678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %679 = getelementptr inbounds %struct.GPR, %struct.GPR* %678, i32 0, i32 15
  %680 = getelementptr inbounds %struct.Reg, %struct.Reg* %679, i32 0, i32 0
  %RBP.i102 = bitcast %union.anon* %680 to i64*
  %681 = load i64, i64* %RCX.i101
  %682 = load i64, i64* %RBP.i102
  %683 = sub i64 %682, 20
  %684 = load i64, i64* %PC.i100
  %685 = add i64 %684, 3
  store i64 %685, i64* %PC.i100
  %686 = trunc i64 %681 to i32
  %687 = inttoptr i64 %683 to i32*
  %688 = load i32, i32* %687
  %689 = add i32 %688, %686
  %690 = zext i32 %689 to i64
  store i64 %690, i64* %RCX.i101, align 8
  %691 = icmp ult i32 %689, %686
  %692 = icmp ult i32 %689, %688
  %693 = or i1 %691, %692
  %694 = zext i1 %693 to i8
  %695 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %694, i8* %695, align 1
  %696 = and i32 %689, 255
  %697 = call i32 @llvm.ctpop.i32(i32 %696)
  %698 = trunc i32 %697 to i8
  %699 = and i8 %698, 1
  %700 = xor i8 %699, 1
  %701 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %700, i8* %701, align 1
  %702 = xor i32 %688, %686
  %703 = xor i32 %702, %689
  %704 = lshr i32 %703, 4
  %705 = trunc i32 %704 to i8
  %706 = and i8 %705, 1
  %707 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %706, i8* %707, align 1
  %708 = icmp eq i32 %689, 0
  %709 = zext i1 %708 to i8
  %710 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %709, i8* %710, align 1
  %711 = lshr i32 %689, 31
  %712 = trunc i32 %711 to i8
  %713 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %712, i8* %713, align 1
  %714 = lshr i32 %686, 31
  %715 = lshr i32 %688, 31
  %716 = xor i32 %711, %714
  %717 = xor i32 %711, %715
  %718 = add i32 %716, %717
  %719 = icmp eq i32 %718, 2
  %720 = zext i1 %719 to i8
  %721 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %720, i8* %721, align 1
  store %struct.Memory* %loadMem_4e0c75, %struct.Memory** %MEMORY
  %loadMem_4e0c78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %722 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %723 = getelementptr inbounds %struct.GPR, %struct.GPR* %722, i32 0, i32 33
  %724 = getelementptr inbounds %struct.Reg, %struct.Reg* %723, i32 0, i32 0
  %PC.i97 = bitcast %union.anon* %724 to i64*
  %725 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %726 = getelementptr inbounds %struct.GPR, %struct.GPR* %725, i32 0, i32 5
  %727 = getelementptr inbounds %struct.Reg, %struct.Reg* %726, i32 0, i32 0
  %ECX.i98 = bitcast %union.anon* %727 to i32*
  %728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %729 = getelementptr inbounds %struct.GPR, %struct.GPR* %728, i32 0, i32 15
  %730 = getelementptr inbounds %struct.Reg, %struct.Reg* %729, i32 0, i32 0
  %RBP.i99 = bitcast %union.anon* %730 to i64*
  %731 = load i64, i64* %RBP.i99
  %732 = sub i64 %731, 52
  %733 = load i32, i32* %ECX.i98
  %734 = zext i32 %733 to i64
  %735 = load i64, i64* %PC.i97
  %736 = add i64 %735, 3
  store i64 %736, i64* %PC.i97
  %737 = inttoptr i64 %732 to i32*
  store i32 %733, i32* %737
  store %struct.Memory* %loadMem_4e0c78, %struct.Memory** %MEMORY
  %loadMem_4e0c7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %739 = getelementptr inbounds %struct.GPR, %struct.GPR* %738, i32 0, i32 33
  %740 = getelementptr inbounds %struct.Reg, %struct.Reg* %739, i32 0, i32 0
  %PC.i94 = bitcast %union.anon* %740 to i64*
  %741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %742 = getelementptr inbounds %struct.GPR, %struct.GPR* %741, i32 0, i32 1
  %743 = getelementptr inbounds %struct.Reg, %struct.Reg* %742, i32 0, i32 0
  %RAX.i95 = bitcast %union.anon* %743 to i64*
  %744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %745 = getelementptr inbounds %struct.GPR, %struct.GPR* %744, i32 0, i32 15
  %746 = getelementptr inbounds %struct.Reg, %struct.Reg* %745, i32 0, i32 0
  %RBP.i96 = bitcast %union.anon* %746 to i64*
  %747 = load i64, i64* %RBP.i96
  %748 = sub i64 %747, 16
  %749 = load i64, i64* %PC.i94
  %750 = add i64 %749, 4
  store i64 %750, i64* %PC.i94
  %751 = inttoptr i64 %748 to i32*
  %752 = load i32, i32* %751
  %753 = sext i32 %752 to i64
  store i64 %753, i64* %RAX.i95, align 8
  store %struct.Memory* %loadMem_4e0c7b, %struct.Memory** %MEMORY
  %loadMem_4e0c7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %755 = getelementptr inbounds %struct.GPR, %struct.GPR* %754, i32 0, i32 33
  %756 = getelementptr inbounds %struct.Reg, %struct.Reg* %755, i32 0, i32 0
  %PC.i91 = bitcast %union.anon* %756 to i64*
  %757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %758 = getelementptr inbounds %struct.GPR, %struct.GPR* %757, i32 0, i32 1
  %759 = getelementptr inbounds %struct.Reg, %struct.Reg* %758, i32 0, i32 0
  %RAX.i92 = bitcast %union.anon* %759 to i64*
  %760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %761 = getelementptr inbounds %struct.GPR, %struct.GPR* %760, i32 0, i32 5
  %762 = getelementptr inbounds %struct.Reg, %struct.Reg* %761, i32 0, i32 0
  %RCX.i93 = bitcast %union.anon* %762 to i64*
  %763 = load i64, i64* %RAX.i92
  %764 = mul i64 %763, 4
  %765 = add i64 %764, 11901168
  %766 = load i64, i64* %PC.i91
  %767 = add i64 %766, 7
  store i64 %767, i64* %PC.i91
  %768 = inttoptr i64 %765 to i32*
  %769 = load i32, i32* %768
  %770 = zext i32 %769 to i64
  store i64 %770, i64* %RCX.i93, align 8
  store %struct.Memory* %loadMem_4e0c7f, %struct.Memory** %MEMORY
  %loadMem_4e0c86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %771 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %772 = getelementptr inbounds %struct.GPR, %struct.GPR* %771, i32 0, i32 33
  %773 = getelementptr inbounds %struct.Reg, %struct.Reg* %772, i32 0, i32 0
  %PC.i88 = bitcast %union.anon* %773 to i64*
  %774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %775 = getelementptr inbounds %struct.GPR, %struct.GPR* %774, i32 0, i32 5
  %776 = getelementptr inbounds %struct.Reg, %struct.Reg* %775, i32 0, i32 0
  %RCX.i89 = bitcast %union.anon* %776 to i64*
  %777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %778 = getelementptr inbounds %struct.GPR, %struct.GPR* %777, i32 0, i32 15
  %779 = getelementptr inbounds %struct.Reg, %struct.Reg* %778, i32 0, i32 0
  %RBP.i90 = bitcast %union.anon* %779 to i64*
  %780 = load i64, i64* %RCX.i89
  %781 = load i64, i64* %RBP.i90
  %782 = sub i64 %781, 20
  %783 = load i64, i64* %PC.i88
  %784 = add i64 %783, 3
  store i64 %784, i64* %PC.i88
  %785 = trunc i64 %780 to i32
  %786 = inttoptr i64 %782 to i32*
  %787 = load i32, i32* %786
  %788 = add i32 %787, %785
  %789 = zext i32 %788 to i64
  store i64 %789, i64* %RCX.i89, align 8
  %790 = icmp ult i32 %788, %785
  %791 = icmp ult i32 %788, %787
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
  %801 = xor i32 %787, %785
  %802 = xor i32 %801, %788
  %803 = lshr i32 %802, 4
  %804 = trunc i32 %803 to i8
  %805 = and i8 %804, 1
  %806 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %805, i8* %806, align 1
  %807 = icmp eq i32 %788, 0
  %808 = zext i1 %807 to i8
  %809 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %808, i8* %809, align 1
  %810 = lshr i32 %788, 31
  %811 = trunc i32 %810 to i8
  %812 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %811, i8* %812, align 1
  %813 = lshr i32 %785, 31
  %814 = lshr i32 %787, 31
  %815 = xor i32 %810, %813
  %816 = xor i32 %810, %814
  %817 = add i32 %815, %816
  %818 = icmp eq i32 %817, 2
  %819 = zext i1 %818 to i8
  %820 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %819, i8* %820, align 1
  store %struct.Memory* %loadMem_4e0c86, %struct.Memory** %MEMORY
  %loadMem_4e0c89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %821 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %822 = getelementptr inbounds %struct.GPR, %struct.GPR* %821, i32 0, i32 33
  %823 = getelementptr inbounds %struct.Reg, %struct.Reg* %822, i32 0, i32 0
  %PC.i85 = bitcast %union.anon* %823 to i64*
  %824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %825 = getelementptr inbounds %struct.GPR, %struct.GPR* %824, i32 0, i32 5
  %826 = getelementptr inbounds %struct.Reg, %struct.Reg* %825, i32 0, i32 0
  %ECX.i86 = bitcast %union.anon* %826 to i32*
  %827 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %828 = getelementptr inbounds %struct.GPR, %struct.GPR* %827, i32 0, i32 15
  %829 = getelementptr inbounds %struct.Reg, %struct.Reg* %828, i32 0, i32 0
  %RBP.i87 = bitcast %union.anon* %829 to i64*
  %830 = load i64, i64* %RBP.i87
  %831 = sub i64 %830, 56
  %832 = load i32, i32* %ECX.i86
  %833 = zext i32 %832 to i64
  %834 = load i64, i64* %PC.i85
  %835 = add i64 %834, 3
  store i64 %835, i64* %PC.i85
  %836 = inttoptr i64 %831 to i32*
  store i32 %832, i32* %836
  store %struct.Memory* %loadMem_4e0c89, %struct.Memory** %MEMORY
  %loadMem_4e0c8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %837 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %838 = getelementptr inbounds %struct.GPR, %struct.GPR* %837, i32 0, i32 33
  %839 = getelementptr inbounds %struct.Reg, %struct.Reg* %838, i32 0, i32 0
  %PC.i83 = bitcast %union.anon* %839 to i64*
  %840 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %841 = getelementptr inbounds %struct.GPR, %struct.GPR* %840, i32 0, i32 15
  %842 = getelementptr inbounds %struct.Reg, %struct.Reg* %841, i32 0, i32 0
  %RBP.i84 = bitcast %union.anon* %842 to i64*
  %843 = load i64, i64* %RBP.i84
  %844 = sub i64 %843, 28
  %845 = load i64, i64* %PC.i83
  %846 = add i64 %845, 4
  store i64 %846, i64* %PC.i83
  %847 = inttoptr i64 %844 to i32*
  %848 = load i32, i32* %847
  %849 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %849, align 1
  %850 = and i32 %848, 255
  %851 = call i32 @llvm.ctpop.i32(i32 %850)
  %852 = trunc i32 %851 to i8
  %853 = and i8 %852, 1
  %854 = xor i8 %853, 1
  %855 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %854, i8* %855, align 1
  %856 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %856, align 1
  %857 = icmp eq i32 %848, 0
  %858 = zext i1 %857 to i8
  %859 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %858, i8* %859, align 1
  %860 = lshr i32 %848, 31
  %861 = trunc i32 %860 to i8
  %862 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %861, i8* %862, align 1
  %863 = lshr i32 %848, 31
  %864 = xor i32 %860, %863
  %865 = add i32 %864, %863
  %866 = icmp eq i32 %865, 2
  %867 = zext i1 %866 to i8
  %868 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %867, i8* %868, align 1
  store %struct.Memory* %loadMem_4e0c8c, %struct.Memory** %MEMORY
  %loadMem_4e0c90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %869 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %870 = getelementptr inbounds %struct.GPR, %struct.GPR* %869, i32 0, i32 33
  %871 = getelementptr inbounds %struct.Reg, %struct.Reg* %870, i32 0, i32 0
  %PC.i82 = bitcast %union.anon* %871 to i64*
  %872 = load i64, i64* %PC.i82
  %873 = add i64 %872, 124
  %874 = load i64, i64* %PC.i82
  %875 = add i64 %874, 6
  %876 = load i64, i64* %PC.i82
  %877 = add i64 %876, 6
  store i64 %877, i64* %PC.i82
  %878 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %879 = load i8, i8* %878, align 1
  %880 = icmp eq i8 %879, 0
  %881 = zext i1 %880 to i8
  store i8 %881, i8* %BRANCH_TAKEN, align 1
  %882 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %883 = select i1 %880, i64 %873, i64 %875
  store i64 %883, i64* %882, align 8
  store %struct.Memory* %loadMem_4e0c90, %struct.Memory** %MEMORY
  %loadBr_4e0c90 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4e0c90 = icmp eq i8 %loadBr_4e0c90, 1
  br i1 %cmpBr_4e0c90, label %block_.L_4e0d0c, label %block_4e0c96

block_4e0c96:                                     ; preds = %entry
  %loadMem_4e0c96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %884 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %885 = getelementptr inbounds %struct.GPR, %struct.GPR* %884, i32 0, i32 33
  %886 = getelementptr inbounds %struct.Reg, %struct.Reg* %885, i32 0, i32 0
  %PC.i79 = bitcast %union.anon* %886 to i64*
  %887 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %888 = getelementptr inbounds %struct.GPR, %struct.GPR* %887, i32 0, i32 11
  %889 = getelementptr inbounds %struct.Reg, %struct.Reg* %888, i32 0, i32 0
  %RDI.i80 = bitcast %union.anon* %889 to i64*
  %890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %891 = getelementptr inbounds %struct.GPR, %struct.GPR* %890, i32 0, i32 15
  %892 = getelementptr inbounds %struct.Reg, %struct.Reg* %891, i32 0, i32 0
  %RBP.i81 = bitcast %union.anon* %892 to i64*
  %893 = load i64, i64* %RBP.i81
  %894 = sub i64 %893, 56
  %895 = load i64, i64* %PC.i79
  %896 = add i64 %895, 3
  store i64 %896, i64* %PC.i79
  %897 = inttoptr i64 %894 to i32*
  %898 = load i32, i32* %897
  %899 = zext i32 %898 to i64
  store i64 %899, i64* %RDI.i80, align 8
  store %struct.Memory* %loadMem_4e0c96, %struct.Memory** %MEMORY
  %loadMem1_4e0c99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %900 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %901 = getelementptr inbounds %struct.GPR, %struct.GPR* %900, i32 0, i32 33
  %902 = getelementptr inbounds %struct.Reg, %struct.Reg* %901, i32 0, i32 0
  %PC.i78 = bitcast %union.anon* %902 to i64*
  %903 = load i64, i64* %PC.i78
  %904 = add i64 %903, -199721
  %905 = load i64, i64* %PC.i78
  %906 = add i64 %905, 5
  %907 = load i64, i64* %PC.i78
  %908 = add i64 %907, 5
  store i64 %908, i64* %PC.i78
  %909 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %910 = load i64, i64* %909, align 8
  %911 = add i64 %910, -8
  %912 = inttoptr i64 %911 to i64*
  store i64 %906, i64* %912
  store i64 %911, i64* %909, align 8
  %913 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %904, i64* %913, align 8
  store %struct.Memory* %loadMem1_4e0c99, %struct.Memory** %MEMORY
  %loadMem2_4e0c99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4e0c99 = load i64, i64* %3
  %call2_4e0c99 = call %struct.Memory* @sub_4b0070.dragon_weak(%struct.State* %0, i64 %loadPC_4e0c99, %struct.Memory* %loadMem2_4e0c99)
  store %struct.Memory* %call2_4e0c99, %struct.Memory** %MEMORY
  %loadMem_4e0c9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %914 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %915 = getelementptr inbounds %struct.GPR, %struct.GPR* %914, i32 0, i32 33
  %916 = getelementptr inbounds %struct.Reg, %struct.Reg* %915, i32 0, i32 0
  %PC.i75 = bitcast %union.anon* %916 to i64*
  %917 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %918 = getelementptr inbounds %struct.GPR, %struct.GPR* %917, i32 0, i32 11
  %919 = getelementptr inbounds %struct.Reg, %struct.Reg* %918, i32 0, i32 0
  %EDI.i76 = bitcast %union.anon* %919 to i32*
  %920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %921 = getelementptr inbounds %struct.GPR, %struct.GPR* %920, i32 0, i32 11
  %922 = getelementptr inbounds %struct.Reg, %struct.Reg* %921, i32 0, i32 0
  %RDI.i77 = bitcast %union.anon* %922 to i64*
  %923 = load i64, i64* %RDI.i77
  %924 = load i32, i32* %EDI.i76
  %925 = zext i32 %924 to i64
  %926 = load i64, i64* %PC.i75
  %927 = add i64 %926, 2
  store i64 %927, i64* %PC.i75
  %928 = xor i64 %925, %923
  %929 = trunc i64 %928 to i32
  %930 = and i64 %928, 4294967295
  store i64 %930, i64* %RDI.i77, align 8
  %931 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %931, align 1
  %932 = and i32 %929, 255
  %933 = call i32 @llvm.ctpop.i32(i32 %932)
  %934 = trunc i32 %933 to i8
  %935 = and i8 %934, 1
  %936 = xor i8 %935, 1
  %937 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %936, i8* %937, align 1
  %938 = icmp eq i32 %929, 0
  %939 = zext i1 %938 to i8
  %940 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %939, i8* %940, align 1
  %941 = lshr i32 %929, 31
  %942 = trunc i32 %941 to i8
  %943 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %942, i8* %943, align 1
  %944 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %944, align 1
  %945 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %945, align 1
  store %struct.Memory* %loadMem_4e0c9e, %struct.Memory** %MEMORY
  %loadMem_4e0ca0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %947 = getelementptr inbounds %struct.GPR, %struct.GPR* %946, i32 0, i32 33
  %948 = getelementptr inbounds %struct.Reg, %struct.Reg* %947, i32 0, i32 0
  %PC.i73 = bitcast %union.anon* %948 to i64*
  %949 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %950 = getelementptr inbounds %struct.GPR, %struct.GPR* %949, i32 0, i32 5
  %951 = getelementptr inbounds %struct.Reg, %struct.Reg* %950, i32 0, i32 0
  %952 = bitcast %union.anon* %951 to %struct.anon.2*
  %CL.i74 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %952, i32 0, i32 0
  %953 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %954 = getelementptr inbounds %struct.GPR, %struct.GPR* %953, i32 0, i32 11
  %955 = getelementptr inbounds %struct.Reg, %struct.Reg* %954, i32 0, i32 0
  %956 = bitcast %union.anon* %955 to %struct.anon.2*
  %DIL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %956, i32 0, i32 0
  %957 = load i8, i8* %DIL.i
  %958 = zext i8 %957 to i64
  %959 = load i64, i64* %PC.i73
  %960 = add i64 %959, 3
  store i64 %960, i64* %PC.i73
  store i8 %957, i8* %CL.i74, align 1
  store %struct.Memory* %loadMem_4e0ca0, %struct.Memory** %MEMORY
  %loadMem_4e0ca3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %961 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %962 = getelementptr inbounds %struct.GPR, %struct.GPR* %961, i32 0, i32 33
  %963 = getelementptr inbounds %struct.Reg, %struct.Reg* %962, i32 0, i32 0
  %PC.i71 = bitcast %union.anon* %963 to i64*
  %964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %965 = getelementptr inbounds %struct.GPR, %struct.GPR* %964, i32 0, i32 1
  %966 = getelementptr inbounds %struct.Reg, %struct.Reg* %965, i32 0, i32 0
  %EAX.i72 = bitcast %union.anon* %966 to i32*
  %967 = load i32, i32* %EAX.i72
  %968 = zext i32 %967 to i64
  %969 = load i64, i64* %PC.i71
  %970 = add i64 %969, 3
  store i64 %970, i64* %PC.i71
  %971 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %971, align 1
  %972 = and i32 %967, 255
  %973 = call i32 @llvm.ctpop.i32(i32 %972)
  %974 = trunc i32 %973 to i8
  %975 = and i8 %974, 1
  %976 = xor i8 %975, 1
  %977 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %976, i8* %977, align 1
  %978 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %978, align 1
  %979 = icmp eq i32 %967, 0
  %980 = zext i1 %979 to i8
  %981 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %980, i8* %981, align 1
  %982 = lshr i32 %967, 31
  %983 = trunc i32 %982 to i8
  %984 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %983, i8* %984, align 1
  %985 = lshr i32 %967, 31
  %986 = xor i32 %982, %985
  %987 = add i32 %986, %985
  %988 = icmp eq i32 %987, 2
  %989 = zext i1 %988 to i8
  %990 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %989, i8* %990, align 1
  store %struct.Memory* %loadMem_4e0ca3, %struct.Memory** %MEMORY
  %loadMem_4e0ca6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %991 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %992 = getelementptr inbounds %struct.GPR, %struct.GPR* %991, i32 0, i32 33
  %993 = getelementptr inbounds %struct.Reg, %struct.Reg* %992, i32 0, i32 0
  %PC.i69 = bitcast %union.anon* %993 to i64*
  %994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %995 = getelementptr inbounds %struct.GPR, %struct.GPR* %994, i32 0, i32 5
  %996 = getelementptr inbounds %struct.Reg, %struct.Reg* %995, i32 0, i32 0
  %997 = bitcast %union.anon* %996 to %struct.anon.2*
  %CL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %997, i32 0, i32 0
  %998 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %999 = getelementptr inbounds %struct.GPR, %struct.GPR* %998, i32 0, i32 15
  %1000 = getelementptr inbounds %struct.Reg, %struct.Reg* %999, i32 0, i32 0
  %RBP.i70 = bitcast %union.anon* %1000 to i64*
  %1001 = load i64, i64* %RBP.i70
  %1002 = sub i64 %1001, 57
  %1003 = load i8, i8* %CL.i
  %1004 = zext i8 %1003 to i64
  %1005 = load i64, i64* %PC.i69
  %1006 = add i64 %1005, 3
  store i64 %1006, i64* %PC.i69
  %1007 = inttoptr i64 %1002 to i8*
  store i8 %1003, i8* %1007
  store %struct.Memory* %loadMem_4e0ca6, %struct.Memory** %MEMORY
  %loadMem_4e0ca9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1008 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1009 = getelementptr inbounds %struct.GPR, %struct.GPR* %1008, i32 0, i32 33
  %1010 = getelementptr inbounds %struct.Reg, %struct.Reg* %1009, i32 0, i32 0
  %PC.i68 = bitcast %union.anon* %1010 to i64*
  %1011 = load i64, i64* %PC.i68
  %1012 = add i64 %1011, 83
  %1013 = load i64, i64* %PC.i68
  %1014 = add i64 %1013, 6
  %1015 = load i64, i64* %PC.i68
  %1016 = add i64 %1015, 6
  store i64 %1016, i64* %PC.i68
  %1017 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1018 = load i8, i8* %1017, align 1
  %1019 = icmp eq i8 %1018, 0
  %1020 = zext i1 %1019 to i8
  store i8 %1020, i8* %BRANCH_TAKEN, align 1
  %1021 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1022 = select i1 %1019, i64 %1012, i64 %1014
  store i64 %1022, i64* %1021, align 8
  store %struct.Memory* %loadMem_4e0ca9, %struct.Memory** %MEMORY
  %loadBr_4e0ca9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4e0ca9 = icmp eq i8 %loadBr_4e0ca9, 1
  br i1 %cmpBr_4e0ca9, label %block_.L_4e0cfc, label %block_4e0caf

block_4e0caf:                                     ; preds = %block_4e0c96
  %loadMem_4e0caf = load %struct.Memory*, %struct.Memory** %MEMORY
  %1023 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1024 = getelementptr inbounds %struct.GPR, %struct.GPR* %1023, i32 0, i32 33
  %1025 = getelementptr inbounds %struct.Reg, %struct.Reg* %1024, i32 0, i32 0
  %PC.i67 = bitcast %union.anon* %1025 to i64*
  %1026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1027 = getelementptr inbounds %struct.GPR, %struct.GPR* %1026, i32 0, i32 9
  %1028 = getelementptr inbounds %struct.Reg, %struct.Reg* %1027, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %1028 to i64*
  %1029 = load i64, i64* %PC.i67
  %1030 = add i64 %1029, 5
  store i64 %1030, i64* %PC.i67
  store i64 1, i64* %RSI.i, align 8
  store %struct.Memory* %loadMem_4e0caf, %struct.Memory** %MEMORY
  %loadMem_4e0cb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1031 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1032 = getelementptr inbounds %struct.GPR, %struct.GPR* %1031, i32 0, i32 33
  %1033 = getelementptr inbounds %struct.Reg, %struct.Reg* %1032, i32 0, i32 0
  %PC.i66 = bitcast %union.anon* %1033 to i64*
  %1034 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1035 = getelementptr inbounds %struct.GPR, %struct.GPR* %1034, i32 0, i32 7
  %1036 = getelementptr inbounds %struct.Reg, %struct.Reg* %1035, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %1036 to i64*
  %1037 = load i64, i64* %PC.i66
  %1038 = add i64 %1037, 5
  store i64 %1038, i64* %PC.i66
  store i64 6, i64* %RDX.i, align 8
  store %struct.Memory* %loadMem_4e0cb4, %struct.Memory** %MEMORY
  %loadMem_4e0cb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1039 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1040 = getelementptr inbounds %struct.GPR, %struct.GPR* %1039, i32 0, i32 33
  %1041 = getelementptr inbounds %struct.Reg, %struct.Reg* %1040, i32 0, i32 0
  %PC.i64 = bitcast %union.anon* %1041 to i64*
  %1042 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1043 = getelementptr inbounds %struct.GPR, %struct.GPR* %1042, i32 0, i32 1
  %1044 = getelementptr inbounds %struct.Reg, %struct.Reg* %1043, i32 0, i32 0
  %RAX.i65 = bitcast %union.anon* %1044 to i64*
  %1045 = load i64, i64* %PC.i64
  %1046 = add i64 %1045, 5
  store i64 %1046, i64* %PC.i64
  store i64 3, i64* %RAX.i65, align 8
  store %struct.Memory* %loadMem_4e0cb9, %struct.Memory** %MEMORY
  %loadMem_4e0cbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %1047 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1048 = getelementptr inbounds %struct.GPR, %struct.GPR* %1047, i32 0, i32 33
  %1049 = getelementptr inbounds %struct.Reg, %struct.Reg* %1048, i32 0, i32 0
  %PC.i61 = bitcast %union.anon* %1049 to i64*
  %1050 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1051 = getelementptr inbounds %struct.GPR, %struct.GPR* %1050, i32 0, i32 1
  %1052 = getelementptr inbounds %struct.Reg, %struct.Reg* %1051, i32 0, i32 0
  %RAX.i62 = bitcast %union.anon* %1052 to i64*
  %1053 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1054 = getelementptr inbounds %struct.GPR, %struct.GPR* %1053, i32 0, i32 15
  %1055 = getelementptr inbounds %struct.Reg, %struct.Reg* %1054, i32 0, i32 0
  %RBP.i63 = bitcast %union.anon* %1055 to i64*
  %1056 = load i64, i64* %RAX.i62
  %1057 = load i64, i64* %RBP.i63
  %1058 = sub i64 %1057, 24
  %1059 = load i64, i64* %PC.i61
  %1060 = add i64 %1059, 3
  store i64 %1060, i64* %PC.i61
  %1061 = trunc i64 %1056 to i32
  %1062 = inttoptr i64 %1058 to i32*
  %1063 = load i32, i32* %1062
  %1064 = sub i32 %1061, %1063
  %1065 = zext i32 %1064 to i64
  store i64 %1065, i64* %RAX.i62, align 8
  %1066 = icmp ult i32 %1061, %1063
  %1067 = zext i1 %1066 to i8
  %1068 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1067, i8* %1068, align 1
  %1069 = and i32 %1064, 255
  %1070 = call i32 @llvm.ctpop.i32(i32 %1069)
  %1071 = trunc i32 %1070 to i8
  %1072 = and i8 %1071, 1
  %1073 = xor i8 %1072, 1
  %1074 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1073, i8* %1074, align 1
  %1075 = xor i32 %1063, %1061
  %1076 = xor i32 %1075, %1064
  %1077 = lshr i32 %1076, 4
  %1078 = trunc i32 %1077 to i8
  %1079 = and i8 %1078, 1
  %1080 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1079, i8* %1080, align 1
  %1081 = icmp eq i32 %1064, 0
  %1082 = zext i1 %1081 to i8
  %1083 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1082, i8* %1083, align 1
  %1084 = lshr i32 %1064, 31
  %1085 = trunc i32 %1084 to i8
  %1086 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1085, i8* %1086, align 1
  %1087 = lshr i32 %1061, 31
  %1088 = lshr i32 %1063, 31
  %1089 = xor i32 %1088, %1087
  %1090 = xor i32 %1084, %1087
  %1091 = add i32 %1090, %1089
  %1092 = icmp eq i32 %1091, 2
  %1093 = zext i1 %1092 to i8
  %1094 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1093, i8* %1094, align 1
  store %struct.Memory* %loadMem_4e0cbe, %struct.Memory** %MEMORY
  %loadMem_4e0cc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1095 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1096 = getelementptr inbounds %struct.GPR, %struct.GPR* %1095, i32 0, i32 33
  %1097 = getelementptr inbounds %struct.Reg, %struct.Reg* %1096, i32 0, i32 0
  %PC.i58 = bitcast %union.anon* %1097 to i64*
  %1098 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1099 = getelementptr inbounds %struct.GPR, %struct.GPR* %1098, i32 0, i32 5
  %1100 = getelementptr inbounds %struct.Reg, %struct.Reg* %1099, i32 0, i32 0
  %RCX.i59 = bitcast %union.anon* %1100 to i64*
  %1101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1102 = getelementptr inbounds %struct.GPR, %struct.GPR* %1101, i32 0, i32 15
  %1103 = getelementptr inbounds %struct.Reg, %struct.Reg* %1102, i32 0, i32 0
  %RBP.i60 = bitcast %union.anon* %1103 to i64*
  %1104 = load i64, i64* %RBP.i60
  %1105 = sub i64 %1104, 32
  %1106 = load i64, i64* %PC.i58
  %1107 = add i64 %1106, 3
  store i64 %1107, i64* %PC.i58
  %1108 = inttoptr i64 %1105 to i32*
  %1109 = load i32, i32* %1108
  %1110 = zext i32 %1109 to i64
  store i64 %1110, i64* %RCX.i59, align 8
  store %struct.Memory* %loadMem_4e0cc1, %struct.Memory** %MEMORY
  %loadMem_4e0cc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1112 = getelementptr inbounds %struct.GPR, %struct.GPR* %1111, i32 0, i32 33
  %1113 = getelementptr inbounds %struct.Reg, %struct.Reg* %1112, i32 0, i32 0
  %PC.i56 = bitcast %union.anon* %1113 to i64*
  %1114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1115 = getelementptr inbounds %struct.GPR, %struct.GPR* %1114, i32 0, i32 17
  %1116 = getelementptr inbounds %struct.Reg, %struct.Reg* %1115, i32 0, i32 0
  %R8D.i = bitcast %union.anon* %1116 to i32*
  %1117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1118 = getelementptr inbounds %struct.GPR, %struct.GPR* %1117, i32 0, i32 15
  %1119 = getelementptr inbounds %struct.Reg, %struct.Reg* %1118, i32 0, i32 0
  %RBP.i57 = bitcast %union.anon* %1119 to i64*
  %1120 = bitcast i32* %R8D.i to i64*
  %1121 = load i64, i64* %RBP.i57
  %1122 = sub i64 %1121, 36
  %1123 = load i64, i64* %PC.i56
  %1124 = add i64 %1123, 4
  store i64 %1124, i64* %PC.i56
  %1125 = inttoptr i64 %1122 to i32*
  %1126 = load i32, i32* %1125
  %1127 = zext i32 %1126 to i64
  store i64 %1127, i64* %1120, align 8
  store %struct.Memory* %loadMem_4e0cc4, %struct.Memory** %MEMORY
  %loadMem_4e0cc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1129 = getelementptr inbounds %struct.GPR, %struct.GPR* %1128, i32 0, i32 33
  %1130 = getelementptr inbounds %struct.Reg, %struct.Reg* %1129, i32 0, i32 0
  %PC.i54 = bitcast %union.anon* %1130 to i64*
  %1131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1132 = getelementptr inbounds %struct.GPR, %struct.GPR* %1131, i32 0, i32 19
  %1133 = getelementptr inbounds %struct.Reg, %struct.Reg* %1132, i32 0, i32 0
  %R9D.i = bitcast %union.anon* %1133 to i32*
  %1134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1135 = getelementptr inbounds %struct.GPR, %struct.GPR* %1134, i32 0, i32 15
  %1136 = getelementptr inbounds %struct.Reg, %struct.Reg* %1135, i32 0, i32 0
  %RBP.i55 = bitcast %union.anon* %1136 to i64*
  %1137 = bitcast i32* %R9D.i to i64*
  %1138 = load i64, i64* %RBP.i55
  %1139 = sub i64 %1138, 40
  %1140 = load i64, i64* %PC.i54
  %1141 = add i64 %1140, 4
  store i64 %1141, i64* %PC.i54
  %1142 = inttoptr i64 %1139 to i32*
  %1143 = load i32, i32* %1142
  %1144 = zext i32 %1143 to i64
  store i64 %1144, i64* %1137, align 8
  store %struct.Memory* %loadMem_4e0cc8, %struct.Memory** %MEMORY
  %loadMem_4e0ccc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1146 = getelementptr inbounds %struct.GPR, %struct.GPR* %1145, i32 0, i32 33
  %1147 = getelementptr inbounds %struct.Reg, %struct.Reg* %1146, i32 0, i32 0
  %PC.i51 = bitcast %union.anon* %1147 to i64*
  %1148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1149 = getelementptr inbounds %struct.GPR, %struct.GPR* %1148, i32 0, i32 11
  %1150 = getelementptr inbounds %struct.Reg, %struct.Reg* %1149, i32 0, i32 0
  %RDI.i52 = bitcast %union.anon* %1150 to i64*
  %1151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1152 = getelementptr inbounds %struct.GPR, %struct.GPR* %1151, i32 0, i32 15
  %1153 = getelementptr inbounds %struct.Reg, %struct.Reg* %1152, i32 0, i32 0
  %RBP.i53 = bitcast %union.anon* %1153 to i64*
  %1154 = load i64, i64* %RBP.i53
  %1155 = sub i64 %1154, 44
  %1156 = load i64, i64* %PC.i51
  %1157 = add i64 %1156, 3
  store i64 %1157, i64* %PC.i51
  %1158 = inttoptr i64 %1155 to i32*
  %1159 = load i32, i32* %1158
  %1160 = zext i32 %1159 to i64
  store i64 %1160, i64* %RDI.i52, align 8
  store %struct.Memory* %loadMem_4e0ccc, %struct.Memory** %MEMORY
  %loadMem_4e0ccf = load %struct.Memory*, %struct.Memory** %MEMORY
  %1161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1162 = getelementptr inbounds %struct.GPR, %struct.GPR* %1161, i32 0, i32 33
  %1163 = getelementptr inbounds %struct.Reg, %struct.Reg* %1162, i32 0, i32 0
  %PC.i48 = bitcast %union.anon* %1163 to i64*
  %1164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1165 = getelementptr inbounds %struct.GPR, %struct.GPR* %1164, i32 0, i32 21
  %1166 = getelementptr inbounds %struct.Reg, %struct.Reg* %1165, i32 0, i32 0
  %R10D.i49 = bitcast %union.anon* %1166 to i32*
  %1167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1168 = getelementptr inbounds %struct.GPR, %struct.GPR* %1167, i32 0, i32 15
  %1169 = getelementptr inbounds %struct.Reg, %struct.Reg* %1168, i32 0, i32 0
  %RBP.i50 = bitcast %union.anon* %1169 to i64*
  %1170 = bitcast i32* %R10D.i49 to i64*
  %1171 = load i64, i64* %RBP.i50
  %1172 = sub i64 %1171, 48
  %1173 = load i64, i64* %PC.i48
  %1174 = add i64 %1173, 4
  store i64 %1174, i64* %PC.i48
  %1175 = inttoptr i64 %1172 to i32*
  %1176 = load i32, i32* %1175
  %1177 = zext i32 %1176 to i64
  store i64 %1177, i64* %1170, align 8
  store %struct.Memory* %loadMem_4e0ccf, %struct.Memory** %MEMORY
  %loadMem_4e0cd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1179 = getelementptr inbounds %struct.GPR, %struct.GPR* %1178, i32 0, i32 33
  %1180 = getelementptr inbounds %struct.Reg, %struct.Reg* %1179, i32 0, i32 0
  %PC.i45 = bitcast %union.anon* %1180 to i64*
  %1181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1182 = getelementptr inbounds %struct.GPR, %struct.GPR* %1181, i32 0, i32 23
  %1183 = getelementptr inbounds %struct.Reg, %struct.Reg* %1182, i32 0, i32 0
  %R11D.i46 = bitcast %union.anon* %1183 to i32*
  %1184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1185 = getelementptr inbounds %struct.GPR, %struct.GPR* %1184, i32 0, i32 15
  %1186 = getelementptr inbounds %struct.Reg, %struct.Reg* %1185, i32 0, i32 0
  %RBP.i47 = bitcast %union.anon* %1186 to i64*
  %1187 = bitcast i32* %R11D.i46 to i64*
  %1188 = load i64, i64* %RBP.i47
  %1189 = sub i64 %1188, 52
  %1190 = load i64, i64* %PC.i45
  %1191 = add i64 %1190, 4
  store i64 %1191, i64* %PC.i45
  %1192 = inttoptr i64 %1189 to i32*
  %1193 = load i32, i32* %1192
  %1194 = zext i32 %1193 to i64
  store i64 %1194, i64* %1187, align 8
  store %struct.Memory* %loadMem_4e0cd3, %struct.Memory** %MEMORY
  %loadMem_4e0cd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1196 = getelementptr inbounds %struct.GPR, %struct.GPR* %1195, i32 0, i32 33
  %1197 = getelementptr inbounds %struct.Reg, %struct.Reg* %1196, i32 0, i32 0
  %PC.i43 = bitcast %union.anon* %1197 to i64*
  %1198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1199 = getelementptr inbounds %struct.GPR, %struct.GPR* %1198, i32 0, i32 11
  %1200 = getelementptr inbounds %struct.Reg, %struct.Reg* %1199, i32 0, i32 0
  %EDI.i = bitcast %union.anon* %1200 to i32*
  %1201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1202 = getelementptr inbounds %struct.GPR, %struct.GPR* %1201, i32 0, i32 15
  %1203 = getelementptr inbounds %struct.Reg, %struct.Reg* %1202, i32 0, i32 0
  %RBP.i44 = bitcast %union.anon* %1203 to i64*
  %1204 = load i64, i64* %RBP.i44
  %1205 = sub i64 %1204, 64
  %1206 = load i32, i32* %EDI.i
  %1207 = zext i32 %1206 to i64
  %1208 = load i64, i64* %PC.i43
  %1209 = add i64 %1208, 3
  store i64 %1209, i64* %PC.i43
  %1210 = inttoptr i64 %1205 to i32*
  store i32 %1206, i32* %1210
  store %struct.Memory* %loadMem_4e0cd7, %struct.Memory** %MEMORY
  %loadMem_4e0cda = load %struct.Memory*, %struct.Memory** %MEMORY
  %1211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1212 = getelementptr inbounds %struct.GPR, %struct.GPR* %1211, i32 0, i32 33
  %1213 = getelementptr inbounds %struct.Reg, %struct.Reg* %1212, i32 0, i32 0
  %PC.i40 = bitcast %union.anon* %1213 to i64*
  %1214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1215 = getelementptr inbounds %struct.GPR, %struct.GPR* %1214, i32 0, i32 1
  %1216 = getelementptr inbounds %struct.Reg, %struct.Reg* %1215, i32 0, i32 0
  %EAX.i41 = bitcast %union.anon* %1216 to i32*
  %1217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1218 = getelementptr inbounds %struct.GPR, %struct.GPR* %1217, i32 0, i32 11
  %1219 = getelementptr inbounds %struct.Reg, %struct.Reg* %1218, i32 0, i32 0
  %RDI.i42 = bitcast %union.anon* %1219 to i64*
  %1220 = load i32, i32* %EAX.i41
  %1221 = zext i32 %1220 to i64
  %1222 = load i64, i64* %PC.i40
  %1223 = add i64 %1222, 2
  store i64 %1223, i64* %PC.i40
  %1224 = and i64 %1221, 4294967295
  store i64 %1224, i64* %RDI.i42, align 8
  store %struct.Memory* %loadMem_4e0cda, %struct.Memory** %MEMORY
  %loadMem_4e0cdc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1226 = getelementptr inbounds %struct.GPR, %struct.GPR* %1225, i32 0, i32 33
  %1227 = getelementptr inbounds %struct.Reg, %struct.Reg* %1226, i32 0, i32 0
  %PC.i37 = bitcast %union.anon* %1227 to i64*
  %1228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1229 = getelementptr inbounds %struct.GPR, %struct.GPR* %1228, i32 0, i32 1
  %1230 = getelementptr inbounds %struct.Reg, %struct.Reg* %1229, i32 0, i32 0
  %RAX.i38 = bitcast %union.anon* %1230 to i64*
  %1231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1232 = getelementptr inbounds %struct.GPR, %struct.GPR* %1231, i32 0, i32 15
  %1233 = getelementptr inbounds %struct.Reg, %struct.Reg* %1232, i32 0, i32 0
  %RBP.i39 = bitcast %union.anon* %1233 to i64*
  %1234 = load i64, i64* %RBP.i39
  %1235 = sub i64 %1234, 64
  %1236 = load i64, i64* %PC.i37
  %1237 = add i64 %1236, 3
  store i64 %1237, i64* %PC.i37
  %1238 = inttoptr i64 %1235 to i32*
  %1239 = load i32, i32* %1238
  %1240 = zext i32 %1239 to i64
  store i64 %1240, i64* %RAX.i38, align 8
  store %struct.Memory* %loadMem_4e0cdc, %struct.Memory** %MEMORY
  %loadMem_4e0cdf = load %struct.Memory*, %struct.Memory** %MEMORY
  %1241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1242 = getelementptr inbounds %struct.GPR, %struct.GPR* %1241, i32 0, i32 33
  %1243 = getelementptr inbounds %struct.Reg, %struct.Reg* %1242, i32 0, i32 0
  %PC.i34 = bitcast %union.anon* %1243 to i64*
  %1244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1245 = getelementptr inbounds %struct.GPR, %struct.GPR* %1244, i32 0, i32 1
  %1246 = getelementptr inbounds %struct.Reg, %struct.Reg* %1245, i32 0, i32 0
  %EAX.i35 = bitcast %union.anon* %1246 to i32*
  %1247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1248 = getelementptr inbounds %struct.GPR, %struct.GPR* %1247, i32 0, i32 13
  %1249 = getelementptr inbounds %struct.Reg, %struct.Reg* %1248, i32 0, i32 0
  %RSP.i36 = bitcast %union.anon* %1249 to i64*
  %1250 = load i64, i64* %RSP.i36
  %1251 = load i32, i32* %EAX.i35
  %1252 = zext i32 %1251 to i64
  %1253 = load i64, i64* %PC.i34
  %1254 = add i64 %1253, 3
  store i64 %1254, i64* %PC.i34
  %1255 = inttoptr i64 %1250 to i32*
  store i32 %1251, i32* %1255
  store %struct.Memory* %loadMem_4e0cdf, %struct.Memory** %MEMORY
  %loadMem_4e0ce2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1257 = getelementptr inbounds %struct.GPR, %struct.GPR* %1256, i32 0, i32 33
  %1258 = getelementptr inbounds %struct.Reg, %struct.Reg* %1257, i32 0, i32 0
  %PC.i32 = bitcast %union.anon* %1258 to i64*
  %1259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1260 = getelementptr inbounds %struct.GPR, %struct.GPR* %1259, i32 0, i32 21
  %1261 = getelementptr inbounds %struct.Reg, %struct.Reg* %1260, i32 0, i32 0
  %R10D.i = bitcast %union.anon* %1261 to i32*
  %1262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1263 = getelementptr inbounds %struct.GPR, %struct.GPR* %1262, i32 0, i32 13
  %1264 = getelementptr inbounds %struct.Reg, %struct.Reg* %1263, i32 0, i32 0
  %RSP.i33 = bitcast %union.anon* %1264 to i64*
  %1265 = load i64, i64* %RSP.i33
  %1266 = add i64 %1265, 8
  %1267 = load i32, i32* %R10D.i
  %1268 = zext i32 %1267 to i64
  %1269 = load i64, i64* %PC.i32
  %1270 = add i64 %1269, 5
  store i64 %1270, i64* %PC.i32
  %1271 = inttoptr i64 %1266 to i32*
  store i32 %1267, i32* %1271
  store %struct.Memory* %loadMem_4e0ce2, %struct.Memory** %MEMORY
  %loadMem_4e0ce7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1273 = getelementptr inbounds %struct.GPR, %struct.GPR* %1272, i32 0, i32 33
  %1274 = getelementptr inbounds %struct.Reg, %struct.Reg* %1273, i32 0, i32 0
  %PC.i30 = bitcast %union.anon* %1274 to i64*
  %1275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1276 = getelementptr inbounds %struct.GPR, %struct.GPR* %1275, i32 0, i32 23
  %1277 = getelementptr inbounds %struct.Reg, %struct.Reg* %1276, i32 0, i32 0
  %R11D.i = bitcast %union.anon* %1277 to i32*
  %1278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1279 = getelementptr inbounds %struct.GPR, %struct.GPR* %1278, i32 0, i32 13
  %1280 = getelementptr inbounds %struct.Reg, %struct.Reg* %1279, i32 0, i32 0
  %RSP.i31 = bitcast %union.anon* %1280 to i64*
  %1281 = load i64, i64* %RSP.i31
  %1282 = add i64 %1281, 16
  %1283 = load i32, i32* %R11D.i
  %1284 = zext i32 %1283 to i64
  %1285 = load i64, i64* %PC.i30
  %1286 = add i64 %1285, 5
  store i64 %1286, i64* %PC.i30
  %1287 = inttoptr i64 %1282 to i32*
  store i32 %1283, i32* %1287
  store %struct.Memory* %loadMem_4e0ce7, %struct.Memory** %MEMORY
  %loadMem_4e0cec = load %struct.Memory*, %struct.Memory** %MEMORY
  %1288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1289 = getelementptr inbounds %struct.GPR, %struct.GPR* %1288, i32 0, i32 33
  %1290 = getelementptr inbounds %struct.Reg, %struct.Reg* %1289, i32 0, i32 0
  %PC.i28 = bitcast %union.anon* %1290 to i64*
  %1291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1292 = getelementptr inbounds %struct.GPR, %struct.GPR* %1291, i32 0, i32 1
  %1293 = getelementptr inbounds %struct.Reg, %struct.Reg* %1292, i32 0, i32 0
  %1294 = bitcast %union.anon* %1293 to %struct.anon.2*
  %AL.i29 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1294, i32 0, i32 0
  %1295 = load i64, i64* %PC.i28
  %1296 = add i64 %1295, 2
  store i64 %1296, i64* %PC.i28
  store i8 0, i8* %AL.i29, align 1
  store %struct.Memory* %loadMem_4e0cec, %struct.Memory** %MEMORY
  %loadMem1_4e0cee = load %struct.Memory*, %struct.Memory** %MEMORY
  %1297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1298 = getelementptr inbounds %struct.GPR, %struct.GPR* %1297, i32 0, i32 33
  %1299 = getelementptr inbounds %struct.Reg, %struct.Reg* %1298, i32 0, i32 0
  %PC.i27 = bitcast %union.anon* %1299 to i64*
  %1300 = load i64, i64* %PC.i27
  %1301 = add i64 %1300, -431582
  %1302 = load i64, i64* %PC.i27
  %1303 = add i64 %1302, 5
  %1304 = load i64, i64* %PC.i27
  %1305 = add i64 %1304, 5
  store i64 %1305, i64* %PC.i27
  %1306 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1307 = load i64, i64* %1306, align 8
  %1308 = add i64 %1307, -8
  %1309 = inttoptr i64 %1308 to i64*
  store i64 %1303, i64* %1309
  store i64 %1308, i64* %1306, align 8
  %1310 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1301, i64* %1310, align 8
  store %struct.Memory* %loadMem1_4e0cee, %struct.Memory** %MEMORY
  %loadMem2_4e0cee = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4e0cee = load i64, i64* %3
  %call2_4e0cee = call %struct.Memory* @sub_477710.somewhere(%struct.State* %0, i64 %loadPC_4e0cee, %struct.Memory* %loadMem2_4e0cee)
  store %struct.Memory* %call2_4e0cee, %struct.Memory** %MEMORY
  %loadMem_4e0cf3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1312 = getelementptr inbounds %struct.GPR, %struct.GPR* %1311, i32 0, i32 33
  %1313 = getelementptr inbounds %struct.Reg, %struct.Reg* %1312, i32 0, i32 0
  %PC.i26 = bitcast %union.anon* %1313 to i64*
  %1314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1315 = getelementptr inbounds %struct.GPR, %struct.GPR* %1314, i32 0, i32 1
  %1316 = getelementptr inbounds %struct.Reg, %struct.Reg* %1315, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %1316 to i32*
  %1317 = load i32, i32* %EAX.i
  %1318 = zext i32 %1317 to i64
  %1319 = load i64, i64* %PC.i26
  %1320 = add i64 %1319, 3
  store i64 %1320, i64* %PC.i26
  %1321 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1321, align 1
  %1322 = and i32 %1317, 255
  %1323 = call i32 @llvm.ctpop.i32(i32 %1322)
  %1324 = trunc i32 %1323 to i8
  %1325 = and i8 %1324, 1
  %1326 = xor i8 %1325, 1
  %1327 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1326, i8* %1327, align 1
  %1328 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1328, align 1
  %1329 = icmp eq i32 %1317, 0
  %1330 = zext i1 %1329 to i8
  %1331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1330, i8* %1331, align 1
  %1332 = lshr i32 %1317, 31
  %1333 = trunc i32 %1332 to i8
  %1334 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1333, i8* %1334, align 1
  %1335 = lshr i32 %1317, 31
  %1336 = xor i32 %1332, %1335
  %1337 = add i32 %1336, %1335
  %1338 = icmp eq i32 %1337, 2
  %1339 = zext i1 %1338 to i8
  %1340 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1339, i8* %1340, align 1
  store %struct.Memory* %loadMem_4e0cf3, %struct.Memory** %MEMORY
  %loadMem_4e0cf6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1342 = getelementptr inbounds %struct.GPR, %struct.GPR* %1341, i32 0, i32 33
  %1343 = getelementptr inbounds %struct.Reg, %struct.Reg* %1342, i32 0, i32 0
  %PC.i24 = bitcast %union.anon* %1343 to i64*
  %1344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1345 = getelementptr inbounds %struct.GPR, %struct.GPR* %1344, i32 0, i32 3
  %1346 = getelementptr inbounds %struct.Reg, %struct.Reg* %1345, i32 0, i32 0
  %1347 = bitcast %union.anon* %1346 to %struct.anon.2*
  %BL.i25 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1347, i32 0, i32 0
  %1348 = load i64, i64* %PC.i24
  %1349 = add i64 %1348, 3
  store i64 %1349, i64* %PC.i24
  %1350 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1351 = load i8, i8* %1350, align 1
  %1352 = icmp eq i8 %1351, 0
  %1353 = zext i1 %1352 to i8
  store i8 %1353, i8* %BL.i25, align 1
  store %struct.Memory* %loadMem_4e0cf6, %struct.Memory** %MEMORY
  %loadMem_4e0cf9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1355 = getelementptr inbounds %struct.GPR, %struct.GPR* %1354, i32 0, i32 33
  %1356 = getelementptr inbounds %struct.Reg, %struct.Reg* %1355, i32 0, i32 0
  %PC.i22 = bitcast %union.anon* %1356 to i64*
  %1357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1358 = getelementptr inbounds %struct.GPR, %struct.GPR* %1357, i32 0, i32 3
  %1359 = getelementptr inbounds %struct.Reg, %struct.Reg* %1358, i32 0, i32 0
  %1360 = bitcast %union.anon* %1359 to %struct.anon.2*
  %BL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1360, i32 0, i32 0
  %1361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1362 = getelementptr inbounds %struct.GPR, %struct.GPR* %1361, i32 0, i32 15
  %1363 = getelementptr inbounds %struct.Reg, %struct.Reg* %1362, i32 0, i32 0
  %RBP.i23 = bitcast %union.anon* %1363 to i64*
  %1364 = load i64, i64* %RBP.i23
  %1365 = sub i64 %1364, 57
  %1366 = load i8, i8* %BL.i
  %1367 = zext i8 %1366 to i64
  %1368 = load i64, i64* %PC.i22
  %1369 = add i64 %1368, 3
  store i64 %1369, i64* %PC.i22
  %1370 = inttoptr i64 %1365 to i8*
  store i8 %1366, i8* %1370
  store %struct.Memory* %loadMem_4e0cf9, %struct.Memory** %MEMORY
  br label %block_.L_4e0cfc

block_.L_4e0cfc:                                  ; preds = %block_4e0caf, %block_4e0c96
  %loadMem_4e0cfc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1372 = getelementptr inbounds %struct.GPR, %struct.GPR* %1371, i32 0, i32 33
  %1373 = getelementptr inbounds %struct.Reg, %struct.Reg* %1372, i32 0, i32 0
  %PC.i19 = bitcast %union.anon* %1373 to i64*
  %1374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1375 = getelementptr inbounds %struct.GPR, %struct.GPR* %1374, i32 0, i32 1
  %1376 = getelementptr inbounds %struct.Reg, %struct.Reg* %1375, i32 0, i32 0
  %1377 = bitcast %union.anon* %1376 to %struct.anon.2*
  %AL.i20 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1377, i32 0, i32 0
  %1378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1379 = getelementptr inbounds %struct.GPR, %struct.GPR* %1378, i32 0, i32 15
  %1380 = getelementptr inbounds %struct.Reg, %struct.Reg* %1379, i32 0, i32 0
  %RBP.i21 = bitcast %union.anon* %1380 to i64*
  %1381 = load i64, i64* %RBP.i21
  %1382 = sub i64 %1381, 57
  %1383 = load i64, i64* %PC.i19
  %1384 = add i64 %1383, 3
  store i64 %1384, i64* %PC.i19
  %1385 = inttoptr i64 %1382 to i8*
  %1386 = load i8, i8* %1385
  store i8 %1386, i8* %AL.i20, align 1
  store %struct.Memory* %loadMem_4e0cfc, %struct.Memory** %MEMORY
  %loadMem_4e0cff = load %struct.Memory*, %struct.Memory** %MEMORY
  %1387 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1388 = getelementptr inbounds %struct.GPR, %struct.GPR* %1387, i32 0, i32 33
  %1389 = getelementptr inbounds %struct.Reg, %struct.Reg* %1388, i32 0, i32 0
  %PC.i17 = bitcast %union.anon* %1389 to i64*
  %1390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1391 = getelementptr inbounds %struct.GPR, %struct.GPR* %1390, i32 0, i32 1
  %1392 = getelementptr inbounds %struct.Reg, %struct.Reg* %1391, i32 0, i32 0
  %1393 = bitcast %union.anon* %1392 to %struct.anon.2*
  %AL.i18 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1393, i32 0, i32 0
  %1394 = load i8, i8* %AL.i18
  %1395 = zext i8 %1394 to i64
  %1396 = load i64, i64* %PC.i17
  %1397 = add i64 %1396, 2
  store i64 %1397, i64* %PC.i17
  %1398 = and i64 1, %1395
  %1399 = trunc i64 %1398 to i8
  store i8 %1399, i8* %AL.i18, align 1
  %1400 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1400, align 1
  %1401 = trunc i64 %1398 to i32
  %1402 = and i32 %1401, 255
  %1403 = call i32 @llvm.ctpop.i32(i32 %1402)
  %1404 = trunc i32 %1403 to i8
  %1405 = and i8 %1404, 1
  %1406 = xor i8 %1405, 1
  %1407 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1406, i8* %1407, align 1
  %1408 = icmp eq i8 %1399, 0
  %1409 = zext i1 %1408 to i8
  %1410 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1409, i8* %1410, align 1
  %1411 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1411, align 1
  %1412 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1412, align 1
  %1413 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1413, align 1
  store %struct.Memory* %loadMem_4e0cff, %struct.Memory** %MEMORY
  %loadMem_4e0d01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1415 = getelementptr inbounds %struct.GPR, %struct.GPR* %1414, i32 0, i32 33
  %1416 = getelementptr inbounds %struct.Reg, %struct.Reg* %1415, i32 0, i32 0
  %PC.i16 = bitcast %union.anon* %1416 to i64*
  %1417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1418 = getelementptr inbounds %struct.GPR, %struct.GPR* %1417, i32 0, i32 1
  %1419 = getelementptr inbounds %struct.Reg, %struct.Reg* %1418, i32 0, i32 0
  %1420 = bitcast %union.anon* %1419 to %struct.anon.2*
  %AL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1420, i32 0, i32 0
  %1421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1422 = getelementptr inbounds %struct.GPR, %struct.GPR* %1421, i32 0, i32 5
  %1423 = getelementptr inbounds %struct.Reg, %struct.Reg* %1422, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %1423 to i64*
  %1424 = load i8, i8* %AL.i
  %1425 = zext i8 %1424 to i64
  %1426 = load i64, i64* %PC.i16
  %1427 = add i64 %1426, 3
  store i64 %1427, i64* %PC.i16
  %1428 = and i64 %1425, 255
  store i64 %1428, i64* %RCX.i, align 8
  store %struct.Memory* %loadMem_4e0d01, %struct.Memory** %MEMORY
  %loadMem_4e0d04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1430 = getelementptr inbounds %struct.GPR, %struct.GPR* %1429, i32 0, i32 33
  %1431 = getelementptr inbounds %struct.Reg, %struct.Reg* %1430, i32 0, i32 0
  %PC.i14 = bitcast %union.anon* %1431 to i64*
  %1432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1433 = getelementptr inbounds %struct.GPR, %struct.GPR* %1432, i32 0, i32 5
  %1434 = getelementptr inbounds %struct.Reg, %struct.Reg* %1433, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %1434 to i32*
  %1435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1436 = getelementptr inbounds %struct.GPR, %struct.GPR* %1435, i32 0, i32 15
  %1437 = getelementptr inbounds %struct.Reg, %struct.Reg* %1436, i32 0, i32 0
  %RBP.i15 = bitcast %union.anon* %1437 to i64*
  %1438 = load i64, i64* %RBP.i15
  %1439 = sub i64 %1438, 12
  %1440 = load i32, i32* %ECX.i
  %1441 = zext i32 %1440 to i64
  %1442 = load i64, i64* %PC.i14
  %1443 = add i64 %1442, 3
  store i64 %1443, i64* %PC.i14
  %1444 = inttoptr i64 %1439 to i32*
  store i32 %1440, i32* %1444
  store %struct.Memory* %loadMem_4e0d04, %struct.Memory** %MEMORY
  %loadMem_4e0d07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1446 = getelementptr inbounds %struct.GPR, %struct.GPR* %1445, i32 0, i32 33
  %1447 = getelementptr inbounds %struct.Reg, %struct.Reg* %1446, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %1447 to i64*
  %1448 = load i64, i64* %PC.i13
  %1449 = add i64 %1448, 20
  %1450 = load i64, i64* %PC.i13
  %1451 = add i64 %1450, 5
  store i64 %1451, i64* %PC.i13
  %1452 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1449, i64* %1452, align 8
  store %struct.Memory* %loadMem_4e0d07, %struct.Memory** %MEMORY
  br label %block_.L_4e0d1b

block_.L_4e0d0c:                                  ; preds = %entry
  %loadMem_4e0d0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1454 = getelementptr inbounds %struct.GPR, %struct.GPR* %1453, i32 0, i32 33
  %1455 = getelementptr inbounds %struct.Reg, %struct.Reg* %1454, i32 0, i32 0
  %PC.i11 = bitcast %union.anon* %1455 to i64*
  %1456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1457 = getelementptr inbounds %struct.GPR, %struct.GPR* %1456, i32 0, i32 11
  %1458 = getelementptr inbounds %struct.Reg, %struct.Reg* %1457, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %1458 to i64*
  %1459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1460 = getelementptr inbounds %struct.GPR, %struct.GPR* %1459, i32 0, i32 15
  %1461 = getelementptr inbounds %struct.Reg, %struct.Reg* %1460, i32 0, i32 0
  %RBP.i12 = bitcast %union.anon* %1461 to i64*
  %1462 = load i64, i64* %RBP.i12
  %1463 = sub i64 %1462, 20
  %1464 = load i64, i64* %PC.i11
  %1465 = add i64 %1464, 3
  store i64 %1465, i64* %PC.i11
  %1466 = inttoptr i64 %1463 to i32*
  %1467 = load i32, i32* %1466
  %1468 = zext i32 %1467 to i64
  store i64 %1468, i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_4e0d0c, %struct.Memory** %MEMORY
  %loadMem1_4e0d0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1470 = getelementptr inbounds %struct.GPR, %struct.GPR* %1469, i32 0, i32 33
  %1471 = getelementptr inbounds %struct.Reg, %struct.Reg* %1470, i32 0, i32 0
  %PC.i10 = bitcast %union.anon* %1471 to i64*
  %1472 = load i64, i64* %PC.i10
  %1473 = add i64 %1472, -711183
  %1474 = load i64, i64* %PC.i10
  %1475 = add i64 %1474, 5
  %1476 = load i64, i64* %PC.i10
  %1477 = add i64 %1476, 5
  store i64 %1477, i64* %PC.i10
  %1478 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1479 = load i64, i64* %1478, align 8
  %1480 = add i64 %1479, -8
  %1481 = inttoptr i64 %1480 to i64*
  store i64 %1475, i64* %1481
  store i64 %1480, i64* %1478, align 8
  %1482 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1473, i64* %1482, align 8
  store %struct.Memory* %loadMem1_4e0d0f, %struct.Memory** %MEMORY
  %loadMem2_4e0d0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4e0d0f = load i64, i64* %3
  %call2_4e0d0f = call %struct.Memory* @sub_433300.add_antisuji_move(%struct.State* %0, i64 %loadPC_4e0d0f, %struct.Memory* %loadMem2_4e0d0f)
  store %struct.Memory* %call2_4e0d0f, %struct.Memory** %MEMORY
  %loadMem_4e0d14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1484 = getelementptr inbounds %struct.GPR, %struct.GPR* %1483, i32 0, i32 33
  %1485 = getelementptr inbounds %struct.Reg, %struct.Reg* %1484, i32 0, i32 0
  %PC.i8 = bitcast %union.anon* %1485 to i64*
  %1486 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1487 = getelementptr inbounds %struct.GPR, %struct.GPR* %1486, i32 0, i32 15
  %1488 = getelementptr inbounds %struct.Reg, %struct.Reg* %1487, i32 0, i32 0
  %RBP.i9 = bitcast %union.anon* %1488 to i64*
  %1489 = load i64, i64* %RBP.i9
  %1490 = sub i64 %1489, 12
  %1491 = load i64, i64* %PC.i8
  %1492 = add i64 %1491, 7
  store i64 %1492, i64* %PC.i8
  %1493 = inttoptr i64 %1490 to i32*
  store i32 0, i32* %1493
  store %struct.Memory* %loadMem_4e0d14, %struct.Memory** %MEMORY
  br label %block_.L_4e0d1b

block_.L_4e0d1b:                                  ; preds = %block_.L_4e0d0c, %block_.L_4e0cfc
  %loadMem_4e0d1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1495 = getelementptr inbounds %struct.GPR, %struct.GPR* %1494, i32 0, i32 33
  %1496 = getelementptr inbounds %struct.Reg, %struct.Reg* %1495, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %1496 to i64*
  %1497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1498 = getelementptr inbounds %struct.GPR, %struct.GPR* %1497, i32 0, i32 1
  %1499 = getelementptr inbounds %struct.Reg, %struct.Reg* %1498, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %1499 to i64*
  %1500 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1501 = getelementptr inbounds %struct.GPR, %struct.GPR* %1500, i32 0, i32 15
  %1502 = getelementptr inbounds %struct.Reg, %struct.Reg* %1501, i32 0, i32 0
  %RBP.i7 = bitcast %union.anon* %1502 to i64*
  %1503 = load i64, i64* %RBP.i7
  %1504 = sub i64 %1503, 12
  %1505 = load i64, i64* %PC.i6
  %1506 = add i64 %1505, 3
  store i64 %1506, i64* %PC.i6
  %1507 = inttoptr i64 %1504 to i32*
  %1508 = load i32, i32* %1507
  %1509 = zext i32 %1508 to i64
  store i64 %1509, i64* %RAX.i, align 8
  store %struct.Memory* %loadMem_4e0d1b, %struct.Memory** %MEMORY
  %loadMem_4e0d1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1511 = getelementptr inbounds %struct.GPR, %struct.GPR* %1510, i32 0, i32 33
  %1512 = getelementptr inbounds %struct.Reg, %struct.Reg* %1511, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %1512 to i64*
  %1513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1514 = getelementptr inbounds %struct.GPR, %struct.GPR* %1513, i32 0, i32 13
  %1515 = getelementptr inbounds %struct.Reg, %struct.Reg* %1514, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %1515 to i64*
  %1516 = load i64, i64* %RSP.i
  %1517 = load i64, i64* %PC.i5
  %1518 = add i64 %1517, 4
  store i64 %1518, i64* %PC.i5
  %1519 = add i64 88, %1516
  store i64 %1519, i64* %RSP.i, align 8
  %1520 = icmp ult i64 %1519, %1516
  %1521 = icmp ult i64 %1519, 88
  %1522 = or i1 %1520, %1521
  %1523 = zext i1 %1522 to i8
  %1524 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1523, i8* %1524, align 1
  %1525 = trunc i64 %1519 to i32
  %1526 = and i32 %1525, 255
  %1527 = call i32 @llvm.ctpop.i32(i32 %1526)
  %1528 = trunc i32 %1527 to i8
  %1529 = and i8 %1528, 1
  %1530 = xor i8 %1529, 1
  %1531 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1530, i8* %1531, align 1
  %1532 = xor i64 88, %1516
  %1533 = xor i64 %1532, %1519
  %1534 = lshr i64 %1533, 4
  %1535 = trunc i64 %1534 to i8
  %1536 = and i8 %1535, 1
  %1537 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1536, i8* %1537, align 1
  %1538 = icmp eq i64 %1519, 0
  %1539 = zext i1 %1538 to i8
  %1540 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1539, i8* %1540, align 1
  %1541 = lshr i64 %1519, 63
  %1542 = trunc i64 %1541 to i8
  %1543 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1542, i8* %1543, align 1
  %1544 = lshr i64 %1516, 63
  %1545 = xor i64 %1541, %1544
  %1546 = add i64 %1545, %1541
  %1547 = icmp eq i64 %1546, 2
  %1548 = zext i1 %1547 to i8
  %1549 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1548, i8* %1549, align 1
  store %struct.Memory* %loadMem_4e0d1e, %struct.Memory** %MEMORY
  %loadMem_4e0d22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1550 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1551 = getelementptr inbounds %struct.GPR, %struct.GPR* %1550, i32 0, i32 33
  %1552 = getelementptr inbounds %struct.Reg, %struct.Reg* %1551, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %1552 to i64*
  %1553 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1554 = getelementptr inbounds %struct.GPR, %struct.GPR* %1553, i32 0, i32 3
  %1555 = getelementptr inbounds %struct.Reg, %struct.Reg* %1554, i32 0, i32 0
  %RBX.i = bitcast %union.anon* %1555 to i64*
  %1556 = load i64, i64* %PC.i4
  %1557 = add i64 %1556, 1
  store i64 %1557, i64* %PC.i4
  %1558 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1559 = load i64, i64* %1558, align 8
  %1560 = add i64 %1559, 8
  %1561 = inttoptr i64 %1559 to i64*
  %1562 = load i64, i64* %1561
  store i64 %1562, i64* %RBX.i, align 8
  store i64 %1560, i64* %1558, align 8
  store %struct.Memory* %loadMem_4e0d22, %struct.Memory** %MEMORY
  %loadMem_4e0d23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1563 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1564 = getelementptr inbounds %struct.GPR, %struct.GPR* %1563, i32 0, i32 33
  %1565 = getelementptr inbounds %struct.Reg, %struct.Reg* %1564, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %1565 to i64*
  %1566 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1567 = getelementptr inbounds %struct.GPR, %struct.GPR* %1566, i32 0, i32 15
  %1568 = getelementptr inbounds %struct.Reg, %struct.Reg* %1567, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %1568 to i64*
  %1569 = load i64, i64* %PC.i2
  %1570 = add i64 %1569, 1
  store i64 %1570, i64* %PC.i2
  %1571 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1572 = load i64, i64* %1571, align 8
  %1573 = add i64 %1572, 8
  %1574 = inttoptr i64 %1572 to i64*
  %1575 = load i64, i64* %1574
  store i64 %1575, i64* %RBP.i3, align 8
  store i64 %1573, i64* %1571, align 8
  store %struct.Memory* %loadMem_4e0d23, %struct.Memory** %MEMORY
  %loadMem_4e0d24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1576 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1577 = getelementptr inbounds %struct.GPR, %struct.GPR* %1576, i32 0, i32 33
  %1578 = getelementptr inbounds %struct.Reg, %struct.Reg* %1577, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %1578 to i64*
  %1579 = load i64, i64* %PC.i1
  %1580 = add i64 %1579, 1
  store i64 %1580, i64* %PC.i1
  %1581 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1582 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1583 = load i64, i64* %1582, align 8
  %1584 = inttoptr i64 %1583 to i64*
  %1585 = load i64, i64* %1584
  store i64 %1585, i64* %1581, align 8
  %1586 = add i64 %1583, 8
  store i64 %1586, i64* %1582, align 8
  store %struct.Memory* %loadMem_4e0d24, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_4e0d24
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

define %struct.Memory* @routine_pushq__rbx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %RBX
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

define %struct.Memory* @routine_subq__0x58___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %9, 88
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %9, 88
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
  %23 = xor i64 88, %9
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

define %struct.Memory* @routine_movl__edi__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 16
  %14 = load i32, i32* %EDI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__esi__MINUS0x14__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 20
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 24
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__MINUS0x1c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 28
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_movl_0xb5ab70___rax_4____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, 11905904
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x14__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 20
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

define %struct.Memory* @routine_movl__ecx__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 32
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0xb5b010___rax_4____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, 11907088
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__MINUS0x24__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 36
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0xb5b4b0___rax_4____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, 11908272
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 40
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0xb5ab90___rax_4____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, 11905936
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__MINUS0x2c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 44
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0xb5b030___rax_4____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, 11907120
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 48
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0xb5b4d0___rax_4____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, 11908304
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__MINUS0x34__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 52
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0xb598f0___rax_4____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, 11901168
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__MINUS0x38__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 56
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0__MINUS0x1c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jne_.L_4e0d0c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x38__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 56
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.dragon_weak(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_xorl__edi___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDI
  %13 = load i32, i32* %EDI
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = xor i64 %14, %12
  %18 = trunc i64 %17 to i32
  %19 = and i64 %17, 4294967295
  store i64 %19, i64* %RDI, align 8
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

define %struct.Memory* @routine_movb__dil___cl(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 11
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %13 = bitcast %union.anon* %12 to %struct.anon.2*
  %DIL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %13, i32 0, i32 0
  %14 = load i8, i8* %DIL
  %15 = zext i8 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  store i8 %14, i8* %CL, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movb__cl__MINUS0x39__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 15
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RBP = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 57
  %15 = load i8, i8* %CL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 3
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %14 to i8*
  store i8 %15, i8* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_4e0cfc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x1___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  store i64 1, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x6___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  store i64 6, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x3___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 3, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl_MINUS0x18__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RAX
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 24
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = trunc i64 %12 to i32
  %18 = inttoptr i64 %14 to i32*
  %19 = load i32, i32* %18
  %20 = sub i32 %17, %19
  %21 = zext i32 %20 to i64
  store i64 %21, i64* %RAX, align 8
  %22 = icmp ult i32 %17, %19
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %23, i8* %24, align 1
  %25 = and i32 %20, 255
  %26 = call i32 @llvm.ctpop.i32(i32 %25)
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = xor i8 %28, 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %29, i8* %30, align 1
  %31 = xor i32 %19, %17
  %32 = xor i32 %31, %20
  %33 = lshr i32 %32, 4
  %34 = trunc i32 %33 to i8
  %35 = and i8 %34, 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %35, i8* %36, align 1
  %37 = icmp eq i32 %20, 0
  %38 = zext i1 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %38, i8* %39, align 1
  %40 = lshr i32 %20, 31
  %41 = trunc i32 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %41, i8* %42, align 1
  %43 = lshr i32 %17, 31
  %44 = lshr i32 %19, 31
  %45 = xor i32 %44, %43
  %46 = xor i32 %40, %43
  %47 = add i32 %46, %45
  %48 = icmp eq i32 %47, 2
  %49 = zext i1 %48 to i8
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %49, i8* %50, align 1
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

define %struct.Memory* @routine_movl_MINUS0x24__rbp____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = bitcast i32* %R8D to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 36
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x28__rbp____r9d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = bitcast i32* %R9D to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 40
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x2c__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 44
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x30__rbp____r10d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 21
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R10D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = bitcast i32* %R10D to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 48
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x34__rbp____r11d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = bitcast i32* %R11D to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 52
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edi__MINUS0x40__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 64
  %14 = load i32, i32* %EDI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_movl_MINUS0x40__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax____rsp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 13
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSP
  %13 = load i32, i32* %EAX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %12 to i32*
  store i32 %13, i32* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__r10d__0x8__rsp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 21
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R10D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 13
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSP
  %13 = add i64 %12, 8
  %14 = load i32, i32* %R10D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 5
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__r11d__0x10__rsp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 13
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSP
  %13 = add i64 %12, 16
  %14 = load i32, i32* %R11D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 5
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__0x0___al(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 2
  store i64 %11, i64* %PC
  store i8 0, i8* %AL, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.somewhere(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_setne__bl(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %BL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 3
  store i64 %11, i64* %PC
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %13 = load i8, i8* %12, align 1
  %14 = icmp eq i8 %13, 0
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %BL, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__bl__MINUS0x39__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %BL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 15
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RBP = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 57
  %15 = load i8, i8* %BL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 3
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %14 to i8*
  store i8 %15, i8* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb_MINUS0x39__rbp____al(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 15
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RBP = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 57
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i8*
  %18 = load i8, i8* %17
  store i8 %18, i8* %AL, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_andb__0x1___al(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = load i8, i8* %AL
  %11 = zext i8 %10 to i64
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 2
  store i64 %13, i64* %PC
  %14 = and i64 1, %11
  %15 = trunc i64 %14 to i8
  store i8 %15, i8* %AL, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %16, align 1
  %17 = trunc i64 %14 to i32
  %18 = and i32 %17, 255
  %19 = call i32 @llvm.ctpop.i32(i32 %18)
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i8 %15, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %28, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %29, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movzbl__al___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 5
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RCX = bitcast %union.anon* %12 to i64*
  %13 = load i8, i8* %AL
  %14 = zext i8 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = and i64 %14, 255
  store i64 %17, i64* %RCX, align 8
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

define %struct.Memory* @routine_jmpq_.L_4e0d1b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl_MINUS0x14__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 20
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.add_antisuji_move(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_addq__0x58___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 88, %9
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 88
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
  %25 = xor i64 88, %9
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

define %struct.Memory* @routine_popq__rbx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 1
  store i64 %10, i64* %PC
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = add i64 %12, 8
  %14 = inttoptr i64 %12 to i64*
  %15 = load i64, i64* %14
  store i64 %15, i64* %RBX, align 8
  store i64 %13, i64* %11, align 8
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
