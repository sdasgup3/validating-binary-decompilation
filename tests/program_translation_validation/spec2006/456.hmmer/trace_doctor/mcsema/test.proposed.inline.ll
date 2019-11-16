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
define %struct.Memory* @trace_doctor(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_42a6c0 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_42a6c0, %struct.Memory** %MEMORY
  %loadMem_42a6c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i1054 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i1055 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i
  %27 = load i64, i64* %PC.i1054
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i1054
  store i64 %26, i64* %RBP.i1055, align 8
  store %struct.Memory* %loadMem_42a6c1, %struct.Memory** %MEMORY
  %loadMem_42a6c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i1052 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 11
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %34 to i64*
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %36 = getelementptr inbounds %struct.GPR, %struct.GPR* %35, i32 0, i32 15
  %37 = getelementptr inbounds %struct.Reg, %struct.Reg* %36, i32 0, i32 0
  %RBP.i1053 = bitcast %union.anon* %37 to i64*
  %38 = load i64, i64* %RBP.i1053
  %39 = sub i64 %38, 8
  %40 = load i64, i64* %RDI.i
  %41 = load i64, i64* %PC.i1052
  %42 = add i64 %41, 4
  store i64 %42, i64* %PC.i1052
  %43 = inttoptr i64 %39 to i64*
  store i64 %40, i64* %43
  store %struct.Memory* %loadMem_42a6c4, %struct.Memory** %MEMORY
  %loadMem_42a6c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %45 = getelementptr inbounds %struct.GPR, %struct.GPR* %44, i32 0, i32 33
  %46 = getelementptr inbounds %struct.Reg, %struct.Reg* %45, i32 0, i32 0
  %PC.i1049 = bitcast %union.anon* %46 to i64*
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %48 = getelementptr inbounds %struct.GPR, %struct.GPR* %47, i32 0, i32 9
  %49 = getelementptr inbounds %struct.Reg, %struct.Reg* %48, i32 0, i32 0
  %ESI.i1050 = bitcast %union.anon* %49 to i32*
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %51 = getelementptr inbounds %struct.GPR, %struct.GPR* %50, i32 0, i32 15
  %52 = getelementptr inbounds %struct.Reg, %struct.Reg* %51, i32 0, i32 0
  %RBP.i1051 = bitcast %union.anon* %52 to i64*
  %53 = load i64, i64* %RBP.i1051
  %54 = sub i64 %53, 12
  %55 = load i32, i32* %ESI.i1050
  %56 = zext i32 %55 to i64
  %57 = load i64, i64* %PC.i1049
  %58 = add i64 %57, 3
  store i64 %58, i64* %PC.i1049
  %59 = inttoptr i64 %54 to i32*
  store i32 %55, i32* %59
  store %struct.Memory* %loadMem_42a6c8, %struct.Memory** %MEMORY
  %loadMem_42a6cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %60 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %61 = getelementptr inbounds %struct.GPR, %struct.GPR* %60, i32 0, i32 33
  %62 = getelementptr inbounds %struct.Reg, %struct.Reg* %61, i32 0, i32 0
  %PC.i1046 = bitcast %union.anon* %62 to i64*
  %63 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %64 = getelementptr inbounds %struct.GPR, %struct.GPR* %63, i32 0, i32 7
  %65 = getelementptr inbounds %struct.Reg, %struct.Reg* %64, i32 0, i32 0
  %RDX.i1047 = bitcast %union.anon* %65 to i64*
  %66 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %67 = getelementptr inbounds %struct.GPR, %struct.GPR* %66, i32 0, i32 15
  %68 = getelementptr inbounds %struct.Reg, %struct.Reg* %67, i32 0, i32 0
  %RBP.i1048 = bitcast %union.anon* %68 to i64*
  %69 = load i64, i64* %RBP.i1048
  %70 = sub i64 %69, 24
  %71 = load i64, i64* %RDX.i1047
  %72 = load i64, i64* %PC.i1046
  %73 = add i64 %72, 4
  store i64 %73, i64* %PC.i1046
  %74 = inttoptr i64 %70 to i64*
  store i64 %71, i64* %74
  store %struct.Memory* %loadMem_42a6cb, %struct.Memory** %MEMORY
  %loadMem_42a6cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %75 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %76 = getelementptr inbounds %struct.GPR, %struct.GPR* %75, i32 0, i32 33
  %77 = getelementptr inbounds %struct.Reg, %struct.Reg* %76, i32 0, i32 0
  %PC.i1043 = bitcast %union.anon* %77 to i64*
  %78 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %79 = getelementptr inbounds %struct.GPR, %struct.GPR* %78, i32 0, i32 5
  %80 = getelementptr inbounds %struct.Reg, %struct.Reg* %79, i32 0, i32 0
  %RCX.i1044 = bitcast %union.anon* %80 to i64*
  %81 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %82 = getelementptr inbounds %struct.GPR, %struct.GPR* %81, i32 0, i32 15
  %83 = getelementptr inbounds %struct.Reg, %struct.Reg* %82, i32 0, i32 0
  %RBP.i1045 = bitcast %union.anon* %83 to i64*
  %84 = load i64, i64* %RBP.i1045
  %85 = sub i64 %84, 32
  %86 = load i64, i64* %RCX.i1044
  %87 = load i64, i64* %PC.i1043
  %88 = add i64 %87, 4
  store i64 %88, i64* %PC.i1043
  %89 = inttoptr i64 %85 to i64*
  store i64 %86, i64* %89
  store %struct.Memory* %loadMem_42a6cf, %struct.Memory** %MEMORY
  %loadMem_42a6d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %90 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %91 = getelementptr inbounds %struct.GPR, %struct.GPR* %90, i32 0, i32 33
  %92 = getelementptr inbounds %struct.Reg, %struct.Reg* %91, i32 0, i32 0
  %PC.i1041 = bitcast %union.anon* %92 to i64*
  %93 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %94 = getelementptr inbounds %struct.GPR, %struct.GPR* %93, i32 0, i32 15
  %95 = getelementptr inbounds %struct.Reg, %struct.Reg* %94, i32 0, i32 0
  %RBP.i1042 = bitcast %union.anon* %95 to i64*
  %96 = load i64, i64* %RBP.i1042
  %97 = sub i64 %96, 48
  %98 = load i64, i64* %PC.i1041
  %99 = add i64 %98, 7
  store i64 %99, i64* %PC.i1041
  %100 = inttoptr i64 %97 to i32*
  store i32 0, i32* %100
  store %struct.Memory* %loadMem_42a6d3, %struct.Memory** %MEMORY
  %loadMem_42a6da = load %struct.Memory*, %struct.Memory** %MEMORY
  %101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %102 = getelementptr inbounds %struct.GPR, %struct.GPR* %101, i32 0, i32 33
  %103 = getelementptr inbounds %struct.Reg, %struct.Reg* %102, i32 0, i32 0
  %PC.i1039 = bitcast %union.anon* %103 to i64*
  %104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %105 = getelementptr inbounds %struct.GPR, %struct.GPR* %104, i32 0, i32 15
  %106 = getelementptr inbounds %struct.Reg, %struct.Reg* %105, i32 0, i32 0
  %RBP.i1040 = bitcast %union.anon* %106 to i64*
  %107 = load i64, i64* %RBP.i1040
  %108 = sub i64 %107, 44
  %109 = load i64, i64* %PC.i1039
  %110 = add i64 %109, 7
  store i64 %110, i64* %PC.i1039
  %111 = inttoptr i64 %108 to i32*
  store i32 0, i32* %111
  store %struct.Memory* %loadMem_42a6da, %struct.Memory** %MEMORY
  %loadMem_42a6e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %113 = getelementptr inbounds %struct.GPR, %struct.GPR* %112, i32 0, i32 33
  %114 = getelementptr inbounds %struct.Reg, %struct.Reg* %113, i32 0, i32 0
  %PC.i1037 = bitcast %union.anon* %114 to i64*
  %115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %116 = getelementptr inbounds %struct.GPR, %struct.GPR* %115, i32 0, i32 15
  %117 = getelementptr inbounds %struct.Reg, %struct.Reg* %116, i32 0, i32 0
  %RBP.i1038 = bitcast %union.anon* %117 to i64*
  %118 = load i64, i64* %RBP.i1038
  %119 = sub i64 %118, 40
  %120 = load i64, i64* %PC.i1037
  %121 = add i64 %120, 7
  store i64 %121, i64* %PC.i1037
  %122 = inttoptr i64 %119 to i32*
  store i32 0, i32* %122
  store %struct.Memory* %loadMem_42a6e1, %struct.Memory** %MEMORY
  %loadMem_42a6e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %124 = getelementptr inbounds %struct.GPR, %struct.GPR* %123, i32 0, i32 33
  %125 = getelementptr inbounds %struct.Reg, %struct.Reg* %124, i32 0, i32 0
  %PC.i1035 = bitcast %union.anon* %125 to i64*
  %126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %127 = getelementptr inbounds %struct.GPR, %struct.GPR* %126, i32 0, i32 15
  %128 = getelementptr inbounds %struct.Reg, %struct.Reg* %127, i32 0, i32 0
  %RBP.i1036 = bitcast %union.anon* %128 to i64*
  %129 = load i64, i64* %RBP.i1036
  %130 = sub i64 %129, 36
  %131 = load i64, i64* %PC.i1035
  %132 = add i64 %131, 7
  store i64 %132, i64* %PC.i1035
  %133 = inttoptr i64 %130 to i32*
  store i32 0, i32* %133
  store %struct.Memory* %loadMem_42a6e8, %struct.Memory** %MEMORY
  br label %block_.L_42a6ef

block_.L_42a6ef:                                  ; preds = %block_.L_42ac75, %entry
  %loadMem_42a6ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %135 = getelementptr inbounds %struct.GPR, %struct.GPR* %134, i32 0, i32 33
  %136 = getelementptr inbounds %struct.Reg, %struct.Reg* %135, i32 0, i32 0
  %PC.i1032 = bitcast %union.anon* %136 to i64*
  %137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %138 = getelementptr inbounds %struct.GPR, %struct.GPR* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.Reg, %struct.Reg* %138, i32 0, i32 0
  %RAX.i1033 = bitcast %union.anon* %139 to i64*
  %140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %141 = getelementptr inbounds %struct.GPR, %struct.GPR* %140, i32 0, i32 15
  %142 = getelementptr inbounds %struct.Reg, %struct.Reg* %141, i32 0, i32 0
  %RBP.i1034 = bitcast %union.anon* %142 to i64*
  %143 = load i64, i64* %RBP.i1034
  %144 = sub i64 %143, 36
  %145 = load i64, i64* %PC.i1032
  %146 = add i64 %145, 3
  store i64 %146, i64* %PC.i1032
  %147 = inttoptr i64 %144 to i32*
  %148 = load i32, i32* %147
  %149 = zext i32 %148 to i64
  store i64 %149, i64* %RAX.i1033, align 8
  store %struct.Memory* %loadMem_42a6ef, %struct.Memory** %MEMORY
  %loadMem_42a6f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %151 = getelementptr inbounds %struct.GPR, %struct.GPR* %150, i32 0, i32 33
  %152 = getelementptr inbounds %struct.Reg, %struct.Reg* %151, i32 0, i32 0
  %PC.i1029 = bitcast %union.anon* %152 to i64*
  %153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %154 = getelementptr inbounds %struct.GPR, %struct.GPR* %153, i32 0, i32 5
  %155 = getelementptr inbounds %struct.Reg, %struct.Reg* %154, i32 0, i32 0
  %RCX.i1030 = bitcast %union.anon* %155 to i64*
  %156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %157 = getelementptr inbounds %struct.GPR, %struct.GPR* %156, i32 0, i32 15
  %158 = getelementptr inbounds %struct.Reg, %struct.Reg* %157, i32 0, i32 0
  %RBP.i1031 = bitcast %union.anon* %158 to i64*
  %159 = load i64, i64* %RBP.i1031
  %160 = sub i64 %159, 8
  %161 = load i64, i64* %PC.i1029
  %162 = add i64 %161, 4
  store i64 %162, i64* %PC.i1029
  %163 = inttoptr i64 %160 to i64*
  %164 = load i64, i64* %163
  store i64 %164, i64* %RCX.i1030, align 8
  store %struct.Memory* %loadMem_42a6f2, %struct.Memory** %MEMORY
  %loadMem_42a6f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %166 = getelementptr inbounds %struct.GPR, %struct.GPR* %165, i32 0, i32 33
  %167 = getelementptr inbounds %struct.Reg, %struct.Reg* %166, i32 0, i32 0
  %PC.i1026 = bitcast %union.anon* %167 to i64*
  %168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %169 = getelementptr inbounds %struct.GPR, %struct.GPR* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.Reg, %struct.Reg* %169, i32 0, i32 0
  %EAX.i1027 = bitcast %union.anon* %170 to i32*
  %171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %172 = getelementptr inbounds %struct.GPR, %struct.GPR* %171, i32 0, i32 5
  %173 = getelementptr inbounds %struct.Reg, %struct.Reg* %172, i32 0, i32 0
  %RCX.i1028 = bitcast %union.anon* %173 to i64*
  %174 = load i32, i32* %EAX.i1027
  %175 = zext i32 %174 to i64
  %176 = load i64, i64* %RCX.i1028
  %177 = load i64, i64* %PC.i1026
  %178 = add i64 %177, 2
  store i64 %178, i64* %PC.i1026
  %179 = inttoptr i64 %176 to i32*
  %180 = load i32, i32* %179
  %181 = sub i32 %174, %180
  %182 = icmp ult i32 %174, %180
  %183 = zext i1 %182 to i8
  %184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %183, i8* %184, align 1
  %185 = and i32 %181, 255
  %186 = call i32 @llvm.ctpop.i32(i32 %185)
  %187 = trunc i32 %186 to i8
  %188 = and i8 %187, 1
  %189 = xor i8 %188, 1
  %190 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %189, i8* %190, align 1
  %191 = xor i32 %180, %174
  %192 = xor i32 %191, %181
  %193 = lshr i32 %192, 4
  %194 = trunc i32 %193 to i8
  %195 = and i8 %194, 1
  %196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %195, i8* %196, align 1
  %197 = icmp eq i32 %181, 0
  %198 = zext i1 %197 to i8
  %199 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %198, i8* %199, align 1
  %200 = lshr i32 %181, 31
  %201 = trunc i32 %200 to i8
  %202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %201, i8* %202, align 1
  %203 = lshr i32 %174, 31
  %204 = lshr i32 %180, 31
  %205 = xor i32 %204, %203
  %206 = xor i32 %200, %203
  %207 = add i32 %206, %205
  %208 = icmp eq i32 %207, 2
  %209 = zext i1 %208 to i8
  %210 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %209, i8* %210, align 1
  store %struct.Memory* %loadMem_42a6f6, %struct.Memory** %MEMORY
  %loadMem_42a6f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %212 = getelementptr inbounds %struct.GPR, %struct.GPR* %211, i32 0, i32 33
  %213 = getelementptr inbounds %struct.Reg, %struct.Reg* %212, i32 0, i32 0
  %PC.i1025 = bitcast %union.anon* %213 to i64*
  %214 = load i64, i64* %PC.i1025
  %215 = add i64 %214, 1410
  %216 = load i64, i64* %PC.i1025
  %217 = add i64 %216, 6
  %218 = load i64, i64* %PC.i1025
  %219 = add i64 %218, 6
  store i64 %219, i64* %PC.i1025
  %220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %221 = load i8, i8* %220, align 1
  %222 = icmp ne i8 %221, 0
  %223 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %224 = load i8, i8* %223, align 1
  %225 = icmp ne i8 %224, 0
  %226 = xor i1 %222, %225
  %227 = xor i1 %226, true
  %228 = zext i1 %227 to i8
  store i8 %228, i8* %BRANCH_TAKEN, align 1
  %229 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %230 = select i1 %226, i64 %217, i64 %215
  store i64 %230, i64* %229, align 8
  store %struct.Memory* %loadMem_42a6f8, %struct.Memory** %MEMORY
  %loadBr_42a6f8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42a6f8 = icmp eq i8 %loadBr_42a6f8, 1
  br i1 %cmpBr_42a6f8, label %block_.L_42ac7a, label %block_42a6fe

block_42a6fe:                                     ; preds = %block_.L_42a6ef
  %loadMem_42a6fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %232 = getelementptr inbounds %struct.GPR, %struct.GPR* %231, i32 0, i32 33
  %233 = getelementptr inbounds %struct.Reg, %struct.Reg* %232, i32 0, i32 0
  %PC.i1022 = bitcast %union.anon* %233 to i64*
  %234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %235 = getelementptr inbounds %struct.GPR, %struct.GPR* %234, i32 0, i32 1
  %236 = getelementptr inbounds %struct.Reg, %struct.Reg* %235, i32 0, i32 0
  %RAX.i1023 = bitcast %union.anon* %236 to i64*
  %237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %238 = getelementptr inbounds %struct.GPR, %struct.GPR* %237, i32 0, i32 15
  %239 = getelementptr inbounds %struct.Reg, %struct.Reg* %238, i32 0, i32 0
  %RBP.i1024 = bitcast %union.anon* %239 to i64*
  %240 = load i64, i64* %RBP.i1024
  %241 = sub i64 %240, 8
  %242 = load i64, i64* %PC.i1022
  %243 = add i64 %242, 4
  store i64 %243, i64* %PC.i1022
  %244 = inttoptr i64 %241 to i64*
  %245 = load i64, i64* %244
  store i64 %245, i64* %RAX.i1023, align 8
  store %struct.Memory* %loadMem_42a6fe, %struct.Memory** %MEMORY
  %loadMem_42a702 = load %struct.Memory*, %struct.Memory** %MEMORY
  %246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %247 = getelementptr inbounds %struct.GPR, %struct.GPR* %246, i32 0, i32 33
  %248 = getelementptr inbounds %struct.Reg, %struct.Reg* %247, i32 0, i32 0
  %PC.i1020 = bitcast %union.anon* %248 to i64*
  %249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %250 = getelementptr inbounds %struct.GPR, %struct.GPR* %249, i32 0, i32 1
  %251 = getelementptr inbounds %struct.Reg, %struct.Reg* %250, i32 0, i32 0
  %RAX.i1021 = bitcast %union.anon* %251 to i64*
  %252 = load i64, i64* %RAX.i1021
  %253 = add i64 %252, 8
  %254 = load i64, i64* %PC.i1020
  %255 = add i64 %254, 4
  store i64 %255, i64* %PC.i1020
  %256 = inttoptr i64 %253 to i64*
  %257 = load i64, i64* %256
  store i64 %257, i64* %RAX.i1021, align 8
  store %struct.Memory* %loadMem_42a702, %struct.Memory** %MEMORY
  %loadMem_42a706 = load %struct.Memory*, %struct.Memory** %MEMORY
  %258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %259 = getelementptr inbounds %struct.GPR, %struct.GPR* %258, i32 0, i32 33
  %260 = getelementptr inbounds %struct.Reg, %struct.Reg* %259, i32 0, i32 0
  %PC.i1017 = bitcast %union.anon* %260 to i64*
  %261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %262 = getelementptr inbounds %struct.GPR, %struct.GPR* %261, i32 0, i32 5
  %263 = getelementptr inbounds %struct.Reg, %struct.Reg* %262, i32 0, i32 0
  %RCX.i1018 = bitcast %union.anon* %263 to i64*
  %264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %265 = getelementptr inbounds %struct.GPR, %struct.GPR* %264, i32 0, i32 15
  %266 = getelementptr inbounds %struct.Reg, %struct.Reg* %265, i32 0, i32 0
  %RBP.i1019 = bitcast %union.anon* %266 to i64*
  %267 = load i64, i64* %RBP.i1019
  %268 = sub i64 %267, 36
  %269 = load i64, i64* %PC.i1017
  %270 = add i64 %269, 4
  store i64 %270, i64* %PC.i1017
  %271 = inttoptr i64 %268 to i32*
  %272 = load i32, i32* %271
  %273 = sext i32 %272 to i64
  store i64 %273, i64* %RCX.i1018, align 8
  store %struct.Memory* %loadMem_42a706, %struct.Memory** %MEMORY
  %loadMem_42a70a = load %struct.Memory*, %struct.Memory** %MEMORY
  %274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %275 = getelementptr inbounds %struct.GPR, %struct.GPR* %274, i32 0, i32 33
  %276 = getelementptr inbounds %struct.Reg, %struct.Reg* %275, i32 0, i32 0
  %PC.i1013 = bitcast %union.anon* %276 to i64*
  %277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %278 = getelementptr inbounds %struct.GPR, %struct.GPR* %277, i32 0, i32 1
  %279 = getelementptr inbounds %struct.Reg, %struct.Reg* %278, i32 0, i32 0
  %RAX.i1014 = bitcast %union.anon* %279 to i64*
  %280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %281 = getelementptr inbounds %struct.GPR, %struct.GPR* %280, i32 0, i32 5
  %282 = getelementptr inbounds %struct.Reg, %struct.Reg* %281, i32 0, i32 0
  %RCX.i1015 = bitcast %union.anon* %282 to i64*
  %283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %284 = getelementptr inbounds %struct.GPR, %struct.GPR* %283, i32 0, i32 7
  %285 = getelementptr inbounds %struct.Reg, %struct.Reg* %284, i32 0, i32 0
  %RDX.i1016 = bitcast %union.anon* %285 to i64*
  %286 = load i64, i64* %RAX.i1014
  %287 = load i64, i64* %RCX.i1015
  %288 = add i64 %287, %286
  %289 = load i64, i64* %PC.i1013
  %290 = add i64 %289, 4
  store i64 %290, i64* %PC.i1013
  %291 = inttoptr i64 %288 to i8*
  %292 = load i8, i8* %291
  %293 = sext i8 %292 to i64
  %294 = and i64 %293, 4294967295
  store i64 %294, i64* %RDX.i1016, align 8
  store %struct.Memory* %loadMem_42a70a, %struct.Memory** %MEMORY
  %loadMem_42a70e = load %struct.Memory*, %struct.Memory** %MEMORY
  %295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %296 = getelementptr inbounds %struct.GPR, %struct.GPR* %295, i32 0, i32 33
  %297 = getelementptr inbounds %struct.Reg, %struct.Reg* %296, i32 0, i32 0
  %PC.i1011 = bitcast %union.anon* %297 to i64*
  %298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %299 = getelementptr inbounds %struct.GPR, %struct.GPR* %298, i32 0, i32 7
  %300 = getelementptr inbounds %struct.Reg, %struct.Reg* %299, i32 0, i32 0
  %EDX.i1012 = bitcast %union.anon* %300 to i32*
  %301 = load i32, i32* %EDX.i1012
  %302 = zext i32 %301 to i64
  %303 = load i64, i64* %PC.i1011
  %304 = add i64 %303, 3
  store i64 %304, i64* %PC.i1011
  %305 = sub i32 %301, 2
  %306 = icmp ult i32 %301, 2
  %307 = zext i1 %306 to i8
  %308 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %307, i8* %308, align 1
  %309 = and i32 %305, 255
  %310 = call i32 @llvm.ctpop.i32(i32 %309)
  %311 = trunc i32 %310 to i8
  %312 = and i8 %311, 1
  %313 = xor i8 %312, 1
  %314 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %313, i8* %314, align 1
  %315 = xor i64 2, %302
  %316 = trunc i64 %315 to i32
  %317 = xor i32 %316, %305
  %318 = lshr i32 %317, 4
  %319 = trunc i32 %318 to i8
  %320 = and i8 %319, 1
  %321 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %320, i8* %321, align 1
  %322 = icmp eq i32 %305, 0
  %323 = zext i1 %322 to i8
  %324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %323, i8* %324, align 1
  %325 = lshr i32 %305, 31
  %326 = trunc i32 %325 to i8
  %327 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %326, i8* %327, align 1
  %328 = lshr i32 %301, 31
  %329 = xor i32 %325, %328
  %330 = add i32 %329, %328
  %331 = icmp eq i32 %330, 2
  %332 = zext i1 %331 to i8
  %333 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %332, i8* %333, align 1
  store %struct.Memory* %loadMem_42a70e, %struct.Memory** %MEMORY
  %loadMem_42a711 = load %struct.Memory*, %struct.Memory** %MEMORY
  %334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %335 = getelementptr inbounds %struct.GPR, %struct.GPR* %334, i32 0, i32 33
  %336 = getelementptr inbounds %struct.Reg, %struct.Reg* %335, i32 0, i32 0
  %PC.i1010 = bitcast %union.anon* %336 to i64*
  %337 = load i64, i64* %PC.i1010
  %338 = add i64 %337, 149
  %339 = load i64, i64* %PC.i1010
  %340 = add i64 %339, 6
  %341 = load i64, i64* %PC.i1010
  %342 = add i64 %341, 6
  store i64 %342, i64* %PC.i1010
  %343 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %344 = load i8, i8* %343, align 1
  %345 = icmp eq i8 %344, 0
  %346 = zext i1 %345 to i8
  store i8 %346, i8* %BRANCH_TAKEN, align 1
  %347 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %348 = select i1 %345, i64 %338, i64 %340
  store i64 %348, i64* %347, align 8
  store %struct.Memory* %loadMem_42a711, %struct.Memory** %MEMORY
  %loadBr_42a711 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42a711 = icmp eq i8 %loadBr_42a711, 1
  br i1 %cmpBr_42a711, label %block_.L_42a7a6, label %block_42a717

block_42a717:                                     ; preds = %block_42a6fe
  %loadMem_42a717 = load %struct.Memory*, %struct.Memory** %MEMORY
  %349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %350 = getelementptr inbounds %struct.GPR, %struct.GPR* %349, i32 0, i32 33
  %351 = getelementptr inbounds %struct.Reg, %struct.Reg* %350, i32 0, i32 0
  %PC.i1007 = bitcast %union.anon* %351 to i64*
  %352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %353 = getelementptr inbounds %struct.GPR, %struct.GPR* %352, i32 0, i32 1
  %354 = getelementptr inbounds %struct.Reg, %struct.Reg* %353, i32 0, i32 0
  %RAX.i1008 = bitcast %union.anon* %354 to i64*
  %355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %356 = getelementptr inbounds %struct.GPR, %struct.GPR* %355, i32 0, i32 15
  %357 = getelementptr inbounds %struct.Reg, %struct.Reg* %356, i32 0, i32 0
  %RBP.i1009 = bitcast %union.anon* %357 to i64*
  %358 = load i64, i64* %RBP.i1009
  %359 = sub i64 %358, 8
  %360 = load i64, i64* %PC.i1007
  %361 = add i64 %360, 4
  store i64 %361, i64* %PC.i1007
  %362 = inttoptr i64 %359 to i64*
  %363 = load i64, i64* %362
  store i64 %363, i64* %RAX.i1008, align 8
  store %struct.Memory* %loadMem_42a717, %struct.Memory** %MEMORY
  %loadMem_42a71b = load %struct.Memory*, %struct.Memory** %MEMORY
  %364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %365 = getelementptr inbounds %struct.GPR, %struct.GPR* %364, i32 0, i32 33
  %366 = getelementptr inbounds %struct.Reg, %struct.Reg* %365, i32 0, i32 0
  %PC.i1005 = bitcast %union.anon* %366 to i64*
  %367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %368 = getelementptr inbounds %struct.GPR, %struct.GPR* %367, i32 0, i32 1
  %369 = getelementptr inbounds %struct.Reg, %struct.Reg* %368, i32 0, i32 0
  %RAX.i1006 = bitcast %union.anon* %369 to i64*
  %370 = load i64, i64* %RAX.i1006
  %371 = add i64 %370, 8
  %372 = load i64, i64* %PC.i1005
  %373 = add i64 %372, 4
  store i64 %373, i64* %PC.i1005
  %374 = inttoptr i64 %371 to i64*
  %375 = load i64, i64* %374
  store i64 %375, i64* %RAX.i1006, align 8
  store %struct.Memory* %loadMem_42a71b, %struct.Memory** %MEMORY
  %loadMem_42a71f = load %struct.Memory*, %struct.Memory** %MEMORY
  %376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %377 = getelementptr inbounds %struct.GPR, %struct.GPR* %376, i32 0, i32 33
  %378 = getelementptr inbounds %struct.Reg, %struct.Reg* %377, i32 0, i32 0
  %PC.i1002 = bitcast %union.anon* %378 to i64*
  %379 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %380 = getelementptr inbounds %struct.GPR, %struct.GPR* %379, i32 0, i32 5
  %381 = getelementptr inbounds %struct.Reg, %struct.Reg* %380, i32 0, i32 0
  %RCX.i1003 = bitcast %union.anon* %381 to i64*
  %382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %383 = getelementptr inbounds %struct.GPR, %struct.GPR* %382, i32 0, i32 15
  %384 = getelementptr inbounds %struct.Reg, %struct.Reg* %383, i32 0, i32 0
  %RBP.i1004 = bitcast %union.anon* %384 to i64*
  %385 = load i64, i64* %RBP.i1004
  %386 = sub i64 %385, 36
  %387 = load i64, i64* %PC.i1002
  %388 = add i64 %387, 3
  store i64 %388, i64* %PC.i1002
  %389 = inttoptr i64 %386 to i32*
  %390 = load i32, i32* %389
  %391 = zext i32 %390 to i64
  store i64 %391, i64* %RCX.i1003, align 8
  store %struct.Memory* %loadMem_42a71f, %struct.Memory** %MEMORY
  %loadMem_42a722 = load %struct.Memory*, %struct.Memory** %MEMORY
  %392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %393 = getelementptr inbounds %struct.GPR, %struct.GPR* %392, i32 0, i32 33
  %394 = getelementptr inbounds %struct.Reg, %struct.Reg* %393, i32 0, i32 0
  %PC.i1000 = bitcast %union.anon* %394 to i64*
  %395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %396 = getelementptr inbounds %struct.GPR, %struct.GPR* %395, i32 0, i32 5
  %397 = getelementptr inbounds %struct.Reg, %struct.Reg* %396, i32 0, i32 0
  %RCX.i1001 = bitcast %union.anon* %397 to i64*
  %398 = load i64, i64* %RCX.i1001
  %399 = load i64, i64* %PC.i1000
  %400 = add i64 %399, 3
  store i64 %400, i64* %PC.i1000
  %401 = trunc i64 %398 to i32
  %402 = add i32 1, %401
  %403 = zext i32 %402 to i64
  store i64 %403, i64* %RCX.i1001, align 8
  %404 = icmp ult i32 %402, %401
  %405 = icmp ult i32 %402, 1
  %406 = or i1 %404, %405
  %407 = zext i1 %406 to i8
  %408 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %407, i8* %408, align 1
  %409 = and i32 %402, 255
  %410 = call i32 @llvm.ctpop.i32(i32 %409)
  %411 = trunc i32 %410 to i8
  %412 = and i8 %411, 1
  %413 = xor i8 %412, 1
  %414 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %413, i8* %414, align 1
  %415 = xor i64 1, %398
  %416 = trunc i64 %415 to i32
  %417 = xor i32 %416, %402
  %418 = lshr i32 %417, 4
  %419 = trunc i32 %418 to i8
  %420 = and i8 %419, 1
  %421 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %420, i8* %421, align 1
  %422 = icmp eq i32 %402, 0
  %423 = zext i1 %422 to i8
  %424 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %423, i8* %424, align 1
  %425 = lshr i32 %402, 31
  %426 = trunc i32 %425 to i8
  %427 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %426, i8* %427, align 1
  %428 = lshr i32 %401, 31
  %429 = xor i32 %425, %428
  %430 = add i32 %429, %425
  %431 = icmp eq i32 %430, 2
  %432 = zext i1 %431 to i8
  %433 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %432, i8* %433, align 1
  store %struct.Memory* %loadMem_42a722, %struct.Memory** %MEMORY
  %loadMem_42a725 = load %struct.Memory*, %struct.Memory** %MEMORY
  %434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %435 = getelementptr inbounds %struct.GPR, %struct.GPR* %434, i32 0, i32 33
  %436 = getelementptr inbounds %struct.Reg, %struct.Reg* %435, i32 0, i32 0
  %PC.i997 = bitcast %union.anon* %436 to i64*
  %437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %438 = getelementptr inbounds %struct.GPR, %struct.GPR* %437, i32 0, i32 5
  %439 = getelementptr inbounds %struct.Reg, %struct.Reg* %438, i32 0, i32 0
  %ECX.i998 = bitcast %union.anon* %439 to i32*
  %440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %441 = getelementptr inbounds %struct.GPR, %struct.GPR* %440, i32 0, i32 7
  %442 = getelementptr inbounds %struct.Reg, %struct.Reg* %441, i32 0, i32 0
  %RDX.i999 = bitcast %union.anon* %442 to i64*
  %443 = load i32, i32* %ECX.i998
  %444 = zext i32 %443 to i64
  %445 = load i64, i64* %PC.i997
  %446 = add i64 %445, 3
  store i64 %446, i64* %PC.i997
  %447 = shl i64 %444, 32
  %448 = ashr exact i64 %447, 32
  store i64 %448, i64* %RDX.i999, align 8
  store %struct.Memory* %loadMem_42a725, %struct.Memory** %MEMORY
  %loadMem_42a728 = load %struct.Memory*, %struct.Memory** %MEMORY
  %449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %450 = getelementptr inbounds %struct.GPR, %struct.GPR* %449, i32 0, i32 33
  %451 = getelementptr inbounds %struct.Reg, %struct.Reg* %450, i32 0, i32 0
  %PC.i993 = bitcast %union.anon* %451 to i64*
  %452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %453 = getelementptr inbounds %struct.GPR, %struct.GPR* %452, i32 0, i32 1
  %454 = getelementptr inbounds %struct.Reg, %struct.Reg* %453, i32 0, i32 0
  %RAX.i994 = bitcast %union.anon* %454 to i64*
  %455 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %456 = getelementptr inbounds %struct.GPR, %struct.GPR* %455, i32 0, i32 5
  %457 = getelementptr inbounds %struct.Reg, %struct.Reg* %456, i32 0, i32 0
  %RCX.i995 = bitcast %union.anon* %457 to i64*
  %458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %459 = getelementptr inbounds %struct.GPR, %struct.GPR* %458, i32 0, i32 7
  %460 = getelementptr inbounds %struct.Reg, %struct.Reg* %459, i32 0, i32 0
  %RDX.i996 = bitcast %union.anon* %460 to i64*
  %461 = load i64, i64* %RAX.i994
  %462 = load i64, i64* %RDX.i996
  %463 = add i64 %462, %461
  %464 = load i64, i64* %PC.i993
  %465 = add i64 %464, 4
  store i64 %465, i64* %PC.i993
  %466 = inttoptr i64 %463 to i8*
  %467 = load i8, i8* %466
  %468 = sext i8 %467 to i64
  %469 = and i64 %468, 4294967295
  store i64 %469, i64* %RCX.i995, align 8
  store %struct.Memory* %loadMem_42a728, %struct.Memory** %MEMORY
  %loadMem_42a72c = load %struct.Memory*, %struct.Memory** %MEMORY
  %470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %471 = getelementptr inbounds %struct.GPR, %struct.GPR* %470, i32 0, i32 33
  %472 = getelementptr inbounds %struct.Reg, %struct.Reg* %471, i32 0, i32 0
  %PC.i991 = bitcast %union.anon* %472 to i64*
  %473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %474 = getelementptr inbounds %struct.GPR, %struct.GPR* %473, i32 0, i32 5
  %475 = getelementptr inbounds %struct.Reg, %struct.Reg* %474, i32 0, i32 0
  %ECX.i992 = bitcast %union.anon* %475 to i32*
  %476 = load i32, i32* %ECX.i992
  %477 = zext i32 %476 to i64
  %478 = load i64, i64* %PC.i991
  %479 = add i64 %478, 3
  store i64 %479, i64* %PC.i991
  %480 = sub i32 %476, 3
  %481 = icmp ult i32 %476, 3
  %482 = zext i1 %481 to i8
  %483 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %482, i8* %483, align 1
  %484 = and i32 %480, 255
  %485 = call i32 @llvm.ctpop.i32(i32 %484)
  %486 = trunc i32 %485 to i8
  %487 = and i8 %486, 1
  %488 = xor i8 %487, 1
  %489 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %488, i8* %489, align 1
  %490 = xor i64 3, %477
  %491 = trunc i64 %490 to i32
  %492 = xor i32 %491, %480
  %493 = lshr i32 %492, 4
  %494 = trunc i32 %493 to i8
  %495 = and i8 %494, 1
  %496 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %495, i8* %496, align 1
  %497 = icmp eq i32 %480, 0
  %498 = zext i1 %497 to i8
  %499 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %498, i8* %499, align 1
  %500 = lshr i32 %480, 31
  %501 = trunc i32 %500 to i8
  %502 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %501, i8* %502, align 1
  %503 = lshr i32 %476, 31
  %504 = xor i32 %500, %503
  %505 = add i32 %504, %503
  %506 = icmp eq i32 %505, 2
  %507 = zext i1 %506 to i8
  %508 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %507, i8* %508, align 1
  store %struct.Memory* %loadMem_42a72c, %struct.Memory** %MEMORY
  %loadMem_42a72f = load %struct.Memory*, %struct.Memory** %MEMORY
  %509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %510 = getelementptr inbounds %struct.GPR, %struct.GPR* %509, i32 0, i32 33
  %511 = getelementptr inbounds %struct.Reg, %struct.Reg* %510, i32 0, i32 0
  %PC.i990 = bitcast %union.anon* %511 to i64*
  %512 = load i64, i64* %PC.i990
  %513 = add i64 %512, 119
  %514 = load i64, i64* %PC.i990
  %515 = add i64 %514, 6
  %516 = load i64, i64* %PC.i990
  %517 = add i64 %516, 6
  store i64 %517, i64* %PC.i990
  %518 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %519 = load i8, i8* %518, align 1
  %520 = icmp eq i8 %519, 0
  %521 = zext i1 %520 to i8
  store i8 %521, i8* %BRANCH_TAKEN, align 1
  %522 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %523 = select i1 %520, i64 %513, i64 %515
  store i64 %523, i64* %522, align 8
  store %struct.Memory* %loadMem_42a72f, %struct.Memory** %MEMORY
  %loadBr_42a72f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42a72f = icmp eq i8 %loadBr_42a72f, 1
  br i1 %cmpBr_42a72f, label %block_.L_42a7a6, label %block_42a735

block_42a735:                                     ; preds = %block_42a717
  %loadMem_42a735 = load %struct.Memory*, %struct.Memory** %MEMORY
  %524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %525 = getelementptr inbounds %struct.GPR, %struct.GPR* %524, i32 0, i32 33
  %526 = getelementptr inbounds %struct.Reg, %struct.Reg* %525, i32 0, i32 0
  %PC.i987 = bitcast %union.anon* %526 to i64*
  %527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %528 = getelementptr inbounds %struct.GPR, %struct.GPR* %527, i32 0, i32 1
  %529 = getelementptr inbounds %struct.Reg, %struct.Reg* %528, i32 0, i32 0
  %RAX.i988 = bitcast %union.anon* %529 to i64*
  %530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %531 = getelementptr inbounds %struct.GPR, %struct.GPR* %530, i32 0, i32 15
  %532 = getelementptr inbounds %struct.Reg, %struct.Reg* %531, i32 0, i32 0
  %RBP.i989 = bitcast %union.anon* %532 to i64*
  %533 = load i64, i64* %RBP.i989
  %534 = sub i64 %533, 8
  %535 = load i64, i64* %PC.i987
  %536 = add i64 %535, 4
  store i64 %536, i64* %PC.i987
  %537 = inttoptr i64 %534 to i64*
  %538 = load i64, i64* %537
  store i64 %538, i64* %RAX.i988, align 8
  store %struct.Memory* %loadMem_42a735, %struct.Memory** %MEMORY
  %loadMem_42a739 = load %struct.Memory*, %struct.Memory** %MEMORY
  %539 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %540 = getelementptr inbounds %struct.GPR, %struct.GPR* %539, i32 0, i32 33
  %541 = getelementptr inbounds %struct.Reg, %struct.Reg* %540, i32 0, i32 0
  %PC.i985 = bitcast %union.anon* %541 to i64*
  %542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %543 = getelementptr inbounds %struct.GPR, %struct.GPR* %542, i32 0, i32 1
  %544 = getelementptr inbounds %struct.Reg, %struct.Reg* %543, i32 0, i32 0
  %RAX.i986 = bitcast %union.anon* %544 to i64*
  %545 = load i64, i64* %RAX.i986
  %546 = add i64 %545, 8
  %547 = load i64, i64* %PC.i985
  %548 = add i64 %547, 4
  store i64 %548, i64* %PC.i985
  %549 = inttoptr i64 %546 to i64*
  %550 = load i64, i64* %549
  store i64 %550, i64* %RAX.i986, align 8
  store %struct.Memory* %loadMem_42a739, %struct.Memory** %MEMORY
  %loadMem_42a73d = load %struct.Memory*, %struct.Memory** %MEMORY
  %551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %552 = getelementptr inbounds %struct.GPR, %struct.GPR* %551, i32 0, i32 33
  %553 = getelementptr inbounds %struct.Reg, %struct.Reg* %552, i32 0, i32 0
  %PC.i982 = bitcast %union.anon* %553 to i64*
  %554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %555 = getelementptr inbounds %struct.GPR, %struct.GPR* %554, i32 0, i32 5
  %556 = getelementptr inbounds %struct.Reg, %struct.Reg* %555, i32 0, i32 0
  %RCX.i983 = bitcast %union.anon* %556 to i64*
  %557 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %558 = getelementptr inbounds %struct.GPR, %struct.GPR* %557, i32 0, i32 15
  %559 = getelementptr inbounds %struct.Reg, %struct.Reg* %558, i32 0, i32 0
  %RBP.i984 = bitcast %union.anon* %559 to i64*
  %560 = load i64, i64* %RBP.i984
  %561 = sub i64 %560, 40
  %562 = load i64, i64* %PC.i982
  %563 = add i64 %562, 4
  store i64 %563, i64* %PC.i982
  %564 = inttoptr i64 %561 to i32*
  %565 = load i32, i32* %564
  %566 = sext i32 %565 to i64
  store i64 %566, i64* %RCX.i983, align 8
  store %struct.Memory* %loadMem_42a73d, %struct.Memory** %MEMORY
  %loadMem_42a741 = load %struct.Memory*, %struct.Memory** %MEMORY
  %567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %568 = getelementptr inbounds %struct.GPR, %struct.GPR* %567, i32 0, i32 33
  %569 = getelementptr inbounds %struct.Reg, %struct.Reg* %568, i32 0, i32 0
  %PC.i979 = bitcast %union.anon* %569 to i64*
  %570 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %571 = getelementptr inbounds %struct.GPR, %struct.GPR* %570, i32 0, i32 1
  %572 = getelementptr inbounds %struct.Reg, %struct.Reg* %571, i32 0, i32 0
  %RAX.i980 = bitcast %union.anon* %572 to i64*
  %573 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %574 = getelementptr inbounds %struct.GPR, %struct.GPR* %573, i32 0, i32 5
  %575 = getelementptr inbounds %struct.Reg, %struct.Reg* %574, i32 0, i32 0
  %RCX.i981 = bitcast %union.anon* %575 to i64*
  %576 = load i64, i64* %RAX.i980
  %577 = load i64, i64* %RCX.i981
  %578 = add i64 %577, %576
  %579 = load i64, i64* %PC.i979
  %580 = add i64 %579, 4
  store i64 %580, i64* %PC.i979
  %581 = inttoptr i64 %578 to i8*
  store i8 1, i8* %581
  store %struct.Memory* %loadMem_42a741, %struct.Memory** %MEMORY
  %loadMem_42a745 = load %struct.Memory*, %struct.Memory** %MEMORY
  %582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %583 = getelementptr inbounds %struct.GPR, %struct.GPR* %582, i32 0, i32 33
  %584 = getelementptr inbounds %struct.Reg, %struct.Reg* %583, i32 0, i32 0
  %PC.i976 = bitcast %union.anon* %584 to i64*
  %585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %586 = getelementptr inbounds %struct.GPR, %struct.GPR* %585, i32 0, i32 1
  %587 = getelementptr inbounds %struct.Reg, %struct.Reg* %586, i32 0, i32 0
  %RAX.i977 = bitcast %union.anon* %587 to i64*
  %588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %589 = getelementptr inbounds %struct.GPR, %struct.GPR* %588, i32 0, i32 15
  %590 = getelementptr inbounds %struct.Reg, %struct.Reg* %589, i32 0, i32 0
  %RBP.i978 = bitcast %union.anon* %590 to i64*
  %591 = load i64, i64* %RBP.i978
  %592 = sub i64 %591, 8
  %593 = load i64, i64* %PC.i976
  %594 = add i64 %593, 4
  store i64 %594, i64* %PC.i976
  %595 = inttoptr i64 %592 to i64*
  %596 = load i64, i64* %595
  store i64 %596, i64* %RAX.i977, align 8
  store %struct.Memory* %loadMem_42a745, %struct.Memory** %MEMORY
  %loadMem_42a749 = load %struct.Memory*, %struct.Memory** %MEMORY
  %597 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %598 = getelementptr inbounds %struct.GPR, %struct.GPR* %597, i32 0, i32 33
  %599 = getelementptr inbounds %struct.Reg, %struct.Reg* %598, i32 0, i32 0
  %PC.i974 = bitcast %union.anon* %599 to i64*
  %600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %601 = getelementptr inbounds %struct.GPR, %struct.GPR* %600, i32 0, i32 1
  %602 = getelementptr inbounds %struct.Reg, %struct.Reg* %601, i32 0, i32 0
  %RAX.i975 = bitcast %union.anon* %602 to i64*
  %603 = load i64, i64* %RAX.i975
  %604 = add i64 %603, 16
  %605 = load i64, i64* %PC.i974
  %606 = add i64 %605, 4
  store i64 %606, i64* %PC.i974
  %607 = inttoptr i64 %604 to i64*
  %608 = load i64, i64* %607
  store i64 %608, i64* %RAX.i975, align 8
  store %struct.Memory* %loadMem_42a749, %struct.Memory** %MEMORY
  %loadMem_42a74d = load %struct.Memory*, %struct.Memory** %MEMORY
  %609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %610 = getelementptr inbounds %struct.GPR, %struct.GPR* %609, i32 0, i32 33
  %611 = getelementptr inbounds %struct.Reg, %struct.Reg* %610, i32 0, i32 0
  %PC.i971 = bitcast %union.anon* %611 to i64*
  %612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %613 = getelementptr inbounds %struct.GPR, %struct.GPR* %612, i32 0, i32 5
  %614 = getelementptr inbounds %struct.Reg, %struct.Reg* %613, i32 0, i32 0
  %RCX.i972 = bitcast %union.anon* %614 to i64*
  %615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %616 = getelementptr inbounds %struct.GPR, %struct.GPR* %615, i32 0, i32 15
  %617 = getelementptr inbounds %struct.Reg, %struct.Reg* %616, i32 0, i32 0
  %RBP.i973 = bitcast %union.anon* %617 to i64*
  %618 = load i64, i64* %RBP.i973
  %619 = sub i64 %618, 36
  %620 = load i64, i64* %PC.i971
  %621 = add i64 %620, 4
  store i64 %621, i64* %PC.i971
  %622 = inttoptr i64 %619 to i32*
  %623 = load i32, i32* %622
  %624 = sext i32 %623 to i64
  store i64 %624, i64* %RCX.i972, align 8
  store %struct.Memory* %loadMem_42a74d, %struct.Memory** %MEMORY
  %loadMem_42a751 = load %struct.Memory*, %struct.Memory** %MEMORY
  %625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %626 = getelementptr inbounds %struct.GPR, %struct.GPR* %625, i32 0, i32 33
  %627 = getelementptr inbounds %struct.Reg, %struct.Reg* %626, i32 0, i32 0
  %PC.i967 = bitcast %union.anon* %627 to i64*
  %628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %629 = getelementptr inbounds %struct.GPR, %struct.GPR* %628, i32 0, i32 1
  %630 = getelementptr inbounds %struct.Reg, %struct.Reg* %629, i32 0, i32 0
  %RAX.i968 = bitcast %union.anon* %630 to i64*
  %631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %632 = getelementptr inbounds %struct.GPR, %struct.GPR* %631, i32 0, i32 5
  %633 = getelementptr inbounds %struct.Reg, %struct.Reg* %632, i32 0, i32 0
  %RCX.i969 = bitcast %union.anon* %633 to i64*
  %634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %635 = getelementptr inbounds %struct.GPR, %struct.GPR* %634, i32 0, i32 7
  %636 = getelementptr inbounds %struct.Reg, %struct.Reg* %635, i32 0, i32 0
  %RDX.i970 = bitcast %union.anon* %636 to i64*
  %637 = load i64, i64* %RAX.i968
  %638 = load i64, i64* %RCX.i969
  %639 = mul i64 %638, 4
  %640 = add i64 %639, %637
  %641 = load i64, i64* %PC.i967
  %642 = add i64 %641, 3
  store i64 %642, i64* %PC.i967
  %643 = inttoptr i64 %640 to i32*
  %644 = load i32, i32* %643
  %645 = zext i32 %644 to i64
  store i64 %645, i64* %RDX.i970, align 8
  store %struct.Memory* %loadMem_42a751, %struct.Memory** %MEMORY
  %loadMem_42a754 = load %struct.Memory*, %struct.Memory** %MEMORY
  %646 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %647 = getelementptr inbounds %struct.GPR, %struct.GPR* %646, i32 0, i32 33
  %648 = getelementptr inbounds %struct.Reg, %struct.Reg* %647, i32 0, i32 0
  %PC.i964 = bitcast %union.anon* %648 to i64*
  %649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %650 = getelementptr inbounds %struct.GPR, %struct.GPR* %649, i32 0, i32 1
  %651 = getelementptr inbounds %struct.Reg, %struct.Reg* %650, i32 0, i32 0
  %RAX.i965 = bitcast %union.anon* %651 to i64*
  %652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %653 = getelementptr inbounds %struct.GPR, %struct.GPR* %652, i32 0, i32 15
  %654 = getelementptr inbounds %struct.Reg, %struct.Reg* %653, i32 0, i32 0
  %RBP.i966 = bitcast %union.anon* %654 to i64*
  %655 = load i64, i64* %RBP.i966
  %656 = sub i64 %655, 8
  %657 = load i64, i64* %PC.i964
  %658 = add i64 %657, 4
  store i64 %658, i64* %PC.i964
  %659 = inttoptr i64 %656 to i64*
  %660 = load i64, i64* %659
  store i64 %660, i64* %RAX.i965, align 8
  store %struct.Memory* %loadMem_42a754, %struct.Memory** %MEMORY
  %loadMem_42a758 = load %struct.Memory*, %struct.Memory** %MEMORY
  %661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %662 = getelementptr inbounds %struct.GPR, %struct.GPR* %661, i32 0, i32 33
  %663 = getelementptr inbounds %struct.Reg, %struct.Reg* %662, i32 0, i32 0
  %PC.i962 = bitcast %union.anon* %663 to i64*
  %664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %665 = getelementptr inbounds %struct.GPR, %struct.GPR* %664, i32 0, i32 1
  %666 = getelementptr inbounds %struct.Reg, %struct.Reg* %665, i32 0, i32 0
  %RAX.i963 = bitcast %union.anon* %666 to i64*
  %667 = load i64, i64* %RAX.i963
  %668 = add i64 %667, 16
  %669 = load i64, i64* %PC.i962
  %670 = add i64 %669, 4
  store i64 %670, i64* %PC.i962
  %671 = inttoptr i64 %668 to i64*
  %672 = load i64, i64* %671
  store i64 %672, i64* %RAX.i963, align 8
  store %struct.Memory* %loadMem_42a758, %struct.Memory** %MEMORY
  %loadMem_42a75c = load %struct.Memory*, %struct.Memory** %MEMORY
  %673 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %674 = getelementptr inbounds %struct.GPR, %struct.GPR* %673, i32 0, i32 33
  %675 = getelementptr inbounds %struct.Reg, %struct.Reg* %674, i32 0, i32 0
  %PC.i959 = bitcast %union.anon* %675 to i64*
  %676 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %677 = getelementptr inbounds %struct.GPR, %struct.GPR* %676, i32 0, i32 5
  %678 = getelementptr inbounds %struct.Reg, %struct.Reg* %677, i32 0, i32 0
  %RCX.i960 = bitcast %union.anon* %678 to i64*
  %679 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %680 = getelementptr inbounds %struct.GPR, %struct.GPR* %679, i32 0, i32 15
  %681 = getelementptr inbounds %struct.Reg, %struct.Reg* %680, i32 0, i32 0
  %RBP.i961 = bitcast %union.anon* %681 to i64*
  %682 = load i64, i64* %RBP.i961
  %683 = sub i64 %682, 40
  %684 = load i64, i64* %PC.i959
  %685 = add i64 %684, 4
  store i64 %685, i64* %PC.i959
  %686 = inttoptr i64 %683 to i32*
  %687 = load i32, i32* %686
  %688 = sext i32 %687 to i64
  store i64 %688, i64* %RCX.i960, align 8
  store %struct.Memory* %loadMem_42a75c, %struct.Memory** %MEMORY
  %loadMem_42a760 = load %struct.Memory*, %struct.Memory** %MEMORY
  %689 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %690 = getelementptr inbounds %struct.GPR, %struct.GPR* %689, i32 0, i32 33
  %691 = getelementptr inbounds %struct.Reg, %struct.Reg* %690, i32 0, i32 0
  %PC.i955 = bitcast %union.anon* %691 to i64*
  %692 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %693 = getelementptr inbounds %struct.GPR, %struct.GPR* %692, i32 0, i32 7
  %694 = getelementptr inbounds %struct.Reg, %struct.Reg* %693, i32 0, i32 0
  %EDX.i956 = bitcast %union.anon* %694 to i32*
  %695 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %696 = getelementptr inbounds %struct.GPR, %struct.GPR* %695, i32 0, i32 1
  %697 = getelementptr inbounds %struct.Reg, %struct.Reg* %696, i32 0, i32 0
  %RAX.i957 = bitcast %union.anon* %697 to i64*
  %698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %699 = getelementptr inbounds %struct.GPR, %struct.GPR* %698, i32 0, i32 5
  %700 = getelementptr inbounds %struct.Reg, %struct.Reg* %699, i32 0, i32 0
  %RCX.i958 = bitcast %union.anon* %700 to i64*
  %701 = load i64, i64* %RAX.i957
  %702 = load i64, i64* %RCX.i958
  %703 = mul i64 %702, 4
  %704 = add i64 %703, %701
  %705 = load i32, i32* %EDX.i956
  %706 = zext i32 %705 to i64
  %707 = load i64, i64* %PC.i955
  %708 = add i64 %707, 3
  store i64 %708, i64* %PC.i955
  %709 = inttoptr i64 %704 to i32*
  store i32 %705, i32* %709
  store %struct.Memory* %loadMem_42a760, %struct.Memory** %MEMORY
  %loadMem_42a763 = load %struct.Memory*, %struct.Memory** %MEMORY
  %710 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %711 = getelementptr inbounds %struct.GPR, %struct.GPR* %710, i32 0, i32 33
  %712 = getelementptr inbounds %struct.Reg, %struct.Reg* %711, i32 0, i32 0
  %PC.i952 = bitcast %union.anon* %712 to i64*
  %713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %714 = getelementptr inbounds %struct.GPR, %struct.GPR* %713, i32 0, i32 1
  %715 = getelementptr inbounds %struct.Reg, %struct.Reg* %714, i32 0, i32 0
  %RAX.i953 = bitcast %union.anon* %715 to i64*
  %716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %717 = getelementptr inbounds %struct.GPR, %struct.GPR* %716, i32 0, i32 15
  %718 = getelementptr inbounds %struct.Reg, %struct.Reg* %717, i32 0, i32 0
  %RBP.i954 = bitcast %union.anon* %718 to i64*
  %719 = load i64, i64* %RBP.i954
  %720 = sub i64 %719, 8
  %721 = load i64, i64* %PC.i952
  %722 = add i64 %721, 4
  store i64 %722, i64* %PC.i952
  %723 = inttoptr i64 %720 to i64*
  %724 = load i64, i64* %723
  store i64 %724, i64* %RAX.i953, align 8
  store %struct.Memory* %loadMem_42a763, %struct.Memory** %MEMORY
  %loadMem_42a767 = load %struct.Memory*, %struct.Memory** %MEMORY
  %725 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %726 = getelementptr inbounds %struct.GPR, %struct.GPR* %725, i32 0, i32 33
  %727 = getelementptr inbounds %struct.Reg, %struct.Reg* %726, i32 0, i32 0
  %PC.i950 = bitcast %union.anon* %727 to i64*
  %728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %729 = getelementptr inbounds %struct.GPR, %struct.GPR* %728, i32 0, i32 1
  %730 = getelementptr inbounds %struct.Reg, %struct.Reg* %729, i32 0, i32 0
  %RAX.i951 = bitcast %union.anon* %730 to i64*
  %731 = load i64, i64* %RAX.i951
  %732 = add i64 %731, 24
  %733 = load i64, i64* %PC.i950
  %734 = add i64 %733, 4
  store i64 %734, i64* %PC.i950
  %735 = inttoptr i64 %732 to i64*
  %736 = load i64, i64* %735
  store i64 %736, i64* %RAX.i951, align 8
  store %struct.Memory* %loadMem_42a767, %struct.Memory** %MEMORY
  %loadMem_42a76b = load %struct.Memory*, %struct.Memory** %MEMORY
  %737 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %738 = getelementptr inbounds %struct.GPR, %struct.GPR* %737, i32 0, i32 33
  %739 = getelementptr inbounds %struct.Reg, %struct.Reg* %738, i32 0, i32 0
  %PC.i947 = bitcast %union.anon* %739 to i64*
  %740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %741 = getelementptr inbounds %struct.GPR, %struct.GPR* %740, i32 0, i32 7
  %742 = getelementptr inbounds %struct.Reg, %struct.Reg* %741, i32 0, i32 0
  %RDX.i948 = bitcast %union.anon* %742 to i64*
  %743 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %744 = getelementptr inbounds %struct.GPR, %struct.GPR* %743, i32 0, i32 15
  %745 = getelementptr inbounds %struct.Reg, %struct.Reg* %744, i32 0, i32 0
  %RBP.i949 = bitcast %union.anon* %745 to i64*
  %746 = load i64, i64* %RBP.i949
  %747 = sub i64 %746, 36
  %748 = load i64, i64* %PC.i947
  %749 = add i64 %748, 3
  store i64 %749, i64* %PC.i947
  %750 = inttoptr i64 %747 to i32*
  %751 = load i32, i32* %750
  %752 = zext i32 %751 to i64
  store i64 %752, i64* %RDX.i948, align 8
  store %struct.Memory* %loadMem_42a76b, %struct.Memory** %MEMORY
  %loadMem_42a76e = load %struct.Memory*, %struct.Memory** %MEMORY
  %753 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %754 = getelementptr inbounds %struct.GPR, %struct.GPR* %753, i32 0, i32 33
  %755 = getelementptr inbounds %struct.Reg, %struct.Reg* %754, i32 0, i32 0
  %PC.i945 = bitcast %union.anon* %755 to i64*
  %756 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %757 = getelementptr inbounds %struct.GPR, %struct.GPR* %756, i32 0, i32 7
  %758 = getelementptr inbounds %struct.Reg, %struct.Reg* %757, i32 0, i32 0
  %RDX.i946 = bitcast %union.anon* %758 to i64*
  %759 = load i64, i64* %RDX.i946
  %760 = load i64, i64* %PC.i945
  %761 = add i64 %760, 3
  store i64 %761, i64* %PC.i945
  %762 = trunc i64 %759 to i32
  %763 = add i32 1, %762
  %764 = zext i32 %763 to i64
  store i64 %764, i64* %RDX.i946, align 8
  %765 = icmp ult i32 %763, %762
  %766 = icmp ult i32 %763, 1
  %767 = or i1 %765, %766
  %768 = zext i1 %767 to i8
  %769 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %768, i8* %769, align 1
  %770 = and i32 %763, 255
  %771 = call i32 @llvm.ctpop.i32(i32 %770)
  %772 = trunc i32 %771 to i8
  %773 = and i8 %772, 1
  %774 = xor i8 %773, 1
  %775 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %774, i8* %775, align 1
  %776 = xor i64 1, %759
  %777 = trunc i64 %776 to i32
  %778 = xor i32 %777, %763
  %779 = lshr i32 %778, 4
  %780 = trunc i32 %779 to i8
  %781 = and i8 %780, 1
  %782 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %781, i8* %782, align 1
  %783 = icmp eq i32 %763, 0
  %784 = zext i1 %783 to i8
  %785 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %784, i8* %785, align 1
  %786 = lshr i32 %763, 31
  %787 = trunc i32 %786 to i8
  %788 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %787, i8* %788, align 1
  %789 = lshr i32 %762, 31
  %790 = xor i32 %786, %789
  %791 = add i32 %790, %786
  %792 = icmp eq i32 %791, 2
  %793 = zext i1 %792 to i8
  %794 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %793, i8* %794, align 1
  store %struct.Memory* %loadMem_42a76e, %struct.Memory** %MEMORY
  %loadMem_42a771 = load %struct.Memory*, %struct.Memory** %MEMORY
  %795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %796 = getelementptr inbounds %struct.GPR, %struct.GPR* %795, i32 0, i32 33
  %797 = getelementptr inbounds %struct.Reg, %struct.Reg* %796, i32 0, i32 0
  %PC.i942 = bitcast %union.anon* %797 to i64*
  %798 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %799 = getelementptr inbounds %struct.GPR, %struct.GPR* %798, i32 0, i32 7
  %800 = getelementptr inbounds %struct.Reg, %struct.Reg* %799, i32 0, i32 0
  %EDX.i943 = bitcast %union.anon* %800 to i32*
  %801 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %802 = getelementptr inbounds %struct.GPR, %struct.GPR* %801, i32 0, i32 5
  %803 = getelementptr inbounds %struct.Reg, %struct.Reg* %802, i32 0, i32 0
  %RCX.i944 = bitcast %union.anon* %803 to i64*
  %804 = load i32, i32* %EDX.i943
  %805 = zext i32 %804 to i64
  %806 = load i64, i64* %PC.i942
  %807 = add i64 %806, 3
  store i64 %807, i64* %PC.i942
  %808 = shl i64 %805, 32
  %809 = ashr exact i64 %808, 32
  store i64 %809, i64* %RCX.i944, align 8
  store %struct.Memory* %loadMem_42a771, %struct.Memory** %MEMORY
  %loadMem_42a774 = load %struct.Memory*, %struct.Memory** %MEMORY
  %810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %811 = getelementptr inbounds %struct.GPR, %struct.GPR* %810, i32 0, i32 33
  %812 = getelementptr inbounds %struct.Reg, %struct.Reg* %811, i32 0, i32 0
  %PC.i938 = bitcast %union.anon* %812 to i64*
  %813 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %814 = getelementptr inbounds %struct.GPR, %struct.GPR* %813, i32 0, i32 1
  %815 = getelementptr inbounds %struct.Reg, %struct.Reg* %814, i32 0, i32 0
  %RAX.i939 = bitcast %union.anon* %815 to i64*
  %816 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %817 = getelementptr inbounds %struct.GPR, %struct.GPR* %816, i32 0, i32 5
  %818 = getelementptr inbounds %struct.Reg, %struct.Reg* %817, i32 0, i32 0
  %RCX.i940 = bitcast %union.anon* %818 to i64*
  %819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %820 = getelementptr inbounds %struct.GPR, %struct.GPR* %819, i32 0, i32 7
  %821 = getelementptr inbounds %struct.Reg, %struct.Reg* %820, i32 0, i32 0
  %RDX.i941 = bitcast %union.anon* %821 to i64*
  %822 = load i64, i64* %RAX.i939
  %823 = load i64, i64* %RCX.i940
  %824 = mul i64 %823, 4
  %825 = add i64 %824, %822
  %826 = load i64, i64* %PC.i938
  %827 = add i64 %826, 3
  store i64 %827, i64* %PC.i938
  %828 = inttoptr i64 %825 to i32*
  %829 = load i32, i32* %828
  %830 = zext i32 %829 to i64
  store i64 %830, i64* %RDX.i941, align 8
  store %struct.Memory* %loadMem_42a774, %struct.Memory** %MEMORY
  %loadMem_42a777 = load %struct.Memory*, %struct.Memory** %MEMORY
  %831 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %832 = getelementptr inbounds %struct.GPR, %struct.GPR* %831, i32 0, i32 33
  %833 = getelementptr inbounds %struct.Reg, %struct.Reg* %832, i32 0, i32 0
  %PC.i935 = bitcast %union.anon* %833 to i64*
  %834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %835 = getelementptr inbounds %struct.GPR, %struct.GPR* %834, i32 0, i32 1
  %836 = getelementptr inbounds %struct.Reg, %struct.Reg* %835, i32 0, i32 0
  %RAX.i936 = bitcast %union.anon* %836 to i64*
  %837 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %838 = getelementptr inbounds %struct.GPR, %struct.GPR* %837, i32 0, i32 15
  %839 = getelementptr inbounds %struct.Reg, %struct.Reg* %838, i32 0, i32 0
  %RBP.i937 = bitcast %union.anon* %839 to i64*
  %840 = load i64, i64* %RBP.i937
  %841 = sub i64 %840, 8
  %842 = load i64, i64* %PC.i935
  %843 = add i64 %842, 4
  store i64 %843, i64* %PC.i935
  %844 = inttoptr i64 %841 to i64*
  %845 = load i64, i64* %844
  store i64 %845, i64* %RAX.i936, align 8
  store %struct.Memory* %loadMem_42a777, %struct.Memory** %MEMORY
  %loadMem_42a77b = load %struct.Memory*, %struct.Memory** %MEMORY
  %846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %847 = getelementptr inbounds %struct.GPR, %struct.GPR* %846, i32 0, i32 33
  %848 = getelementptr inbounds %struct.Reg, %struct.Reg* %847, i32 0, i32 0
  %PC.i933 = bitcast %union.anon* %848 to i64*
  %849 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %850 = getelementptr inbounds %struct.GPR, %struct.GPR* %849, i32 0, i32 1
  %851 = getelementptr inbounds %struct.Reg, %struct.Reg* %850, i32 0, i32 0
  %RAX.i934 = bitcast %union.anon* %851 to i64*
  %852 = load i64, i64* %RAX.i934
  %853 = add i64 %852, 24
  %854 = load i64, i64* %PC.i933
  %855 = add i64 %854, 4
  store i64 %855, i64* %PC.i933
  %856 = inttoptr i64 %853 to i64*
  %857 = load i64, i64* %856
  store i64 %857, i64* %RAX.i934, align 8
  store %struct.Memory* %loadMem_42a77b, %struct.Memory** %MEMORY
  %loadMem_42a77f = load %struct.Memory*, %struct.Memory** %MEMORY
  %858 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %859 = getelementptr inbounds %struct.GPR, %struct.GPR* %858, i32 0, i32 33
  %860 = getelementptr inbounds %struct.Reg, %struct.Reg* %859, i32 0, i32 0
  %PC.i930 = bitcast %union.anon* %860 to i64*
  %861 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %862 = getelementptr inbounds %struct.GPR, %struct.GPR* %861, i32 0, i32 5
  %863 = getelementptr inbounds %struct.Reg, %struct.Reg* %862, i32 0, i32 0
  %RCX.i931 = bitcast %union.anon* %863 to i64*
  %864 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %865 = getelementptr inbounds %struct.GPR, %struct.GPR* %864, i32 0, i32 15
  %866 = getelementptr inbounds %struct.Reg, %struct.Reg* %865, i32 0, i32 0
  %RBP.i932 = bitcast %union.anon* %866 to i64*
  %867 = load i64, i64* %RBP.i932
  %868 = sub i64 %867, 40
  %869 = load i64, i64* %PC.i930
  %870 = add i64 %869, 4
  store i64 %870, i64* %PC.i930
  %871 = inttoptr i64 %868 to i32*
  %872 = load i32, i32* %871
  %873 = sext i32 %872 to i64
  store i64 %873, i64* %RCX.i931, align 8
  store %struct.Memory* %loadMem_42a77f, %struct.Memory** %MEMORY
  %loadMem_42a783 = load %struct.Memory*, %struct.Memory** %MEMORY
  %874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %875 = getelementptr inbounds %struct.GPR, %struct.GPR* %874, i32 0, i32 33
  %876 = getelementptr inbounds %struct.Reg, %struct.Reg* %875, i32 0, i32 0
  %PC.i926 = bitcast %union.anon* %876 to i64*
  %877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %878 = getelementptr inbounds %struct.GPR, %struct.GPR* %877, i32 0, i32 7
  %879 = getelementptr inbounds %struct.Reg, %struct.Reg* %878, i32 0, i32 0
  %EDX.i927 = bitcast %union.anon* %879 to i32*
  %880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %881 = getelementptr inbounds %struct.GPR, %struct.GPR* %880, i32 0, i32 1
  %882 = getelementptr inbounds %struct.Reg, %struct.Reg* %881, i32 0, i32 0
  %RAX.i928 = bitcast %union.anon* %882 to i64*
  %883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %884 = getelementptr inbounds %struct.GPR, %struct.GPR* %883, i32 0, i32 5
  %885 = getelementptr inbounds %struct.Reg, %struct.Reg* %884, i32 0, i32 0
  %RCX.i929 = bitcast %union.anon* %885 to i64*
  %886 = load i64, i64* %RAX.i928
  %887 = load i64, i64* %RCX.i929
  %888 = mul i64 %887, 4
  %889 = add i64 %888, %886
  %890 = load i32, i32* %EDX.i927
  %891 = zext i32 %890 to i64
  %892 = load i64, i64* %PC.i926
  %893 = add i64 %892, 3
  store i64 %893, i64* %PC.i926
  %894 = inttoptr i64 %889 to i32*
  store i32 %890, i32* %894
  store %struct.Memory* %loadMem_42a783, %struct.Memory** %MEMORY
  %loadMem_42a786 = load %struct.Memory*, %struct.Memory** %MEMORY
  %895 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %896 = getelementptr inbounds %struct.GPR, %struct.GPR* %895, i32 0, i32 33
  %897 = getelementptr inbounds %struct.Reg, %struct.Reg* %896, i32 0, i32 0
  %PC.i923 = bitcast %union.anon* %897 to i64*
  %898 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %899 = getelementptr inbounds %struct.GPR, %struct.GPR* %898, i32 0, i32 7
  %900 = getelementptr inbounds %struct.Reg, %struct.Reg* %899, i32 0, i32 0
  %RDX.i924 = bitcast %union.anon* %900 to i64*
  %901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %902 = getelementptr inbounds %struct.GPR, %struct.GPR* %901, i32 0, i32 15
  %903 = getelementptr inbounds %struct.Reg, %struct.Reg* %902, i32 0, i32 0
  %RBP.i925 = bitcast %union.anon* %903 to i64*
  %904 = load i64, i64* %RBP.i925
  %905 = sub i64 %904, 36
  %906 = load i64, i64* %PC.i923
  %907 = add i64 %906, 3
  store i64 %907, i64* %PC.i923
  %908 = inttoptr i64 %905 to i32*
  %909 = load i32, i32* %908
  %910 = zext i32 %909 to i64
  store i64 %910, i64* %RDX.i924, align 8
  store %struct.Memory* %loadMem_42a786, %struct.Memory** %MEMORY
  %loadMem_42a789 = load %struct.Memory*, %struct.Memory** %MEMORY
  %911 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %912 = getelementptr inbounds %struct.GPR, %struct.GPR* %911, i32 0, i32 33
  %913 = getelementptr inbounds %struct.Reg, %struct.Reg* %912, i32 0, i32 0
  %PC.i921 = bitcast %union.anon* %913 to i64*
  %914 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %915 = getelementptr inbounds %struct.GPR, %struct.GPR* %914, i32 0, i32 7
  %916 = getelementptr inbounds %struct.Reg, %struct.Reg* %915, i32 0, i32 0
  %RDX.i922 = bitcast %union.anon* %916 to i64*
  %917 = load i64, i64* %RDX.i922
  %918 = load i64, i64* %PC.i921
  %919 = add i64 %918, 3
  store i64 %919, i64* %PC.i921
  %920 = trunc i64 %917 to i32
  %921 = add i32 2, %920
  %922 = zext i32 %921 to i64
  store i64 %922, i64* %RDX.i922, align 8
  %923 = icmp ult i32 %921, %920
  %924 = icmp ult i32 %921, 2
  %925 = or i1 %923, %924
  %926 = zext i1 %925 to i8
  %927 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %926, i8* %927, align 1
  %928 = and i32 %921, 255
  %929 = call i32 @llvm.ctpop.i32(i32 %928)
  %930 = trunc i32 %929 to i8
  %931 = and i8 %930, 1
  %932 = xor i8 %931, 1
  %933 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %932, i8* %933, align 1
  %934 = xor i64 2, %917
  %935 = trunc i64 %934 to i32
  %936 = xor i32 %935, %921
  %937 = lshr i32 %936, 4
  %938 = trunc i32 %937 to i8
  %939 = and i8 %938, 1
  %940 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %939, i8* %940, align 1
  %941 = icmp eq i32 %921, 0
  %942 = zext i1 %941 to i8
  %943 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %942, i8* %943, align 1
  %944 = lshr i32 %921, 31
  %945 = trunc i32 %944 to i8
  %946 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %945, i8* %946, align 1
  %947 = lshr i32 %920, 31
  %948 = xor i32 %944, %947
  %949 = add i32 %948, %944
  %950 = icmp eq i32 %949, 2
  %951 = zext i1 %950 to i8
  %952 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %951, i8* %952, align 1
  store %struct.Memory* %loadMem_42a789, %struct.Memory** %MEMORY
  %loadMem_42a78c = load %struct.Memory*, %struct.Memory** %MEMORY
  %953 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %954 = getelementptr inbounds %struct.GPR, %struct.GPR* %953, i32 0, i32 33
  %955 = getelementptr inbounds %struct.Reg, %struct.Reg* %954, i32 0, i32 0
  %PC.i918 = bitcast %union.anon* %955 to i64*
  %956 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %957 = getelementptr inbounds %struct.GPR, %struct.GPR* %956, i32 0, i32 7
  %958 = getelementptr inbounds %struct.Reg, %struct.Reg* %957, i32 0, i32 0
  %EDX.i919 = bitcast %union.anon* %958 to i32*
  %959 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %960 = getelementptr inbounds %struct.GPR, %struct.GPR* %959, i32 0, i32 15
  %961 = getelementptr inbounds %struct.Reg, %struct.Reg* %960, i32 0, i32 0
  %RBP.i920 = bitcast %union.anon* %961 to i64*
  %962 = load i64, i64* %RBP.i920
  %963 = sub i64 %962, 36
  %964 = load i32, i32* %EDX.i919
  %965 = zext i32 %964 to i64
  %966 = load i64, i64* %PC.i918
  %967 = add i64 %966, 3
  store i64 %967, i64* %PC.i918
  %968 = inttoptr i64 %963 to i32*
  store i32 %964, i32* %968
  store %struct.Memory* %loadMem_42a78c, %struct.Memory** %MEMORY
  %loadMem_42a78f = load %struct.Memory*, %struct.Memory** %MEMORY
  %969 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %970 = getelementptr inbounds %struct.GPR, %struct.GPR* %969, i32 0, i32 33
  %971 = getelementptr inbounds %struct.Reg, %struct.Reg* %970, i32 0, i32 0
  %PC.i915 = bitcast %union.anon* %971 to i64*
  %972 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %973 = getelementptr inbounds %struct.GPR, %struct.GPR* %972, i32 0, i32 7
  %974 = getelementptr inbounds %struct.Reg, %struct.Reg* %973, i32 0, i32 0
  %RDX.i916 = bitcast %union.anon* %974 to i64*
  %975 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %976 = getelementptr inbounds %struct.GPR, %struct.GPR* %975, i32 0, i32 15
  %977 = getelementptr inbounds %struct.Reg, %struct.Reg* %976, i32 0, i32 0
  %RBP.i917 = bitcast %union.anon* %977 to i64*
  %978 = load i64, i64* %RBP.i917
  %979 = sub i64 %978, 40
  %980 = load i64, i64* %PC.i915
  %981 = add i64 %980, 3
  store i64 %981, i64* %PC.i915
  %982 = inttoptr i64 %979 to i32*
  %983 = load i32, i32* %982
  %984 = zext i32 %983 to i64
  store i64 %984, i64* %RDX.i916, align 8
  store %struct.Memory* %loadMem_42a78f, %struct.Memory** %MEMORY
  %loadMem_42a792 = load %struct.Memory*, %struct.Memory** %MEMORY
  %985 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %986 = getelementptr inbounds %struct.GPR, %struct.GPR* %985, i32 0, i32 33
  %987 = getelementptr inbounds %struct.Reg, %struct.Reg* %986, i32 0, i32 0
  %PC.i913 = bitcast %union.anon* %987 to i64*
  %988 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %989 = getelementptr inbounds %struct.GPR, %struct.GPR* %988, i32 0, i32 7
  %990 = getelementptr inbounds %struct.Reg, %struct.Reg* %989, i32 0, i32 0
  %RDX.i914 = bitcast %union.anon* %990 to i64*
  %991 = load i64, i64* %RDX.i914
  %992 = load i64, i64* %PC.i913
  %993 = add i64 %992, 3
  store i64 %993, i64* %PC.i913
  %994 = trunc i64 %991 to i32
  %995 = add i32 1, %994
  %996 = zext i32 %995 to i64
  store i64 %996, i64* %RDX.i914, align 8
  %997 = icmp ult i32 %995, %994
  %998 = icmp ult i32 %995, 1
  %999 = or i1 %997, %998
  %1000 = zext i1 %999 to i8
  %1001 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1000, i8* %1001, align 1
  %1002 = and i32 %995, 255
  %1003 = call i32 @llvm.ctpop.i32(i32 %1002)
  %1004 = trunc i32 %1003 to i8
  %1005 = and i8 %1004, 1
  %1006 = xor i8 %1005, 1
  %1007 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1006, i8* %1007, align 1
  %1008 = xor i64 1, %991
  %1009 = trunc i64 %1008 to i32
  %1010 = xor i32 %1009, %995
  %1011 = lshr i32 %1010, 4
  %1012 = trunc i32 %1011 to i8
  %1013 = and i8 %1012, 1
  %1014 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1013, i8* %1014, align 1
  %1015 = icmp eq i32 %995, 0
  %1016 = zext i1 %1015 to i8
  %1017 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1016, i8* %1017, align 1
  %1018 = lshr i32 %995, 31
  %1019 = trunc i32 %1018 to i8
  %1020 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1019, i8* %1020, align 1
  %1021 = lshr i32 %994, 31
  %1022 = xor i32 %1018, %1021
  %1023 = add i32 %1022, %1018
  %1024 = icmp eq i32 %1023, 2
  %1025 = zext i1 %1024 to i8
  %1026 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1025, i8* %1026, align 1
  store %struct.Memory* %loadMem_42a792, %struct.Memory** %MEMORY
  %loadMem_42a795 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1027 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1028 = getelementptr inbounds %struct.GPR, %struct.GPR* %1027, i32 0, i32 33
  %1029 = getelementptr inbounds %struct.Reg, %struct.Reg* %1028, i32 0, i32 0
  %PC.i910 = bitcast %union.anon* %1029 to i64*
  %1030 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1031 = getelementptr inbounds %struct.GPR, %struct.GPR* %1030, i32 0, i32 7
  %1032 = getelementptr inbounds %struct.Reg, %struct.Reg* %1031, i32 0, i32 0
  %EDX.i911 = bitcast %union.anon* %1032 to i32*
  %1033 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1034 = getelementptr inbounds %struct.GPR, %struct.GPR* %1033, i32 0, i32 15
  %1035 = getelementptr inbounds %struct.Reg, %struct.Reg* %1034, i32 0, i32 0
  %RBP.i912 = bitcast %union.anon* %1035 to i64*
  %1036 = load i64, i64* %RBP.i912
  %1037 = sub i64 %1036, 40
  %1038 = load i32, i32* %EDX.i911
  %1039 = zext i32 %1038 to i64
  %1040 = load i64, i64* %PC.i910
  %1041 = add i64 %1040, 3
  store i64 %1041, i64* %PC.i910
  %1042 = inttoptr i64 %1037 to i32*
  store i32 %1038, i32* %1042
  store %struct.Memory* %loadMem_42a795, %struct.Memory** %MEMORY
  %loadMem_42a798 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1043 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1044 = getelementptr inbounds %struct.GPR, %struct.GPR* %1043, i32 0, i32 33
  %1045 = getelementptr inbounds %struct.Reg, %struct.Reg* %1044, i32 0, i32 0
  %PC.i907 = bitcast %union.anon* %1045 to i64*
  %1046 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1047 = getelementptr inbounds %struct.GPR, %struct.GPR* %1046, i32 0, i32 7
  %1048 = getelementptr inbounds %struct.Reg, %struct.Reg* %1047, i32 0, i32 0
  %RDX.i908 = bitcast %union.anon* %1048 to i64*
  %1049 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1050 = getelementptr inbounds %struct.GPR, %struct.GPR* %1049, i32 0, i32 15
  %1051 = getelementptr inbounds %struct.Reg, %struct.Reg* %1050, i32 0, i32 0
  %RBP.i909 = bitcast %union.anon* %1051 to i64*
  %1052 = load i64, i64* %RBP.i909
  %1053 = sub i64 %1052, 44
  %1054 = load i64, i64* %PC.i907
  %1055 = add i64 %1054, 3
  store i64 %1055, i64* %PC.i907
  %1056 = inttoptr i64 %1053 to i32*
  %1057 = load i32, i32* %1056
  %1058 = zext i32 %1057 to i64
  store i64 %1058, i64* %RDX.i908, align 8
  store %struct.Memory* %loadMem_42a798, %struct.Memory** %MEMORY
  %loadMem_42a79b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1059 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1060 = getelementptr inbounds %struct.GPR, %struct.GPR* %1059, i32 0, i32 33
  %1061 = getelementptr inbounds %struct.Reg, %struct.Reg* %1060, i32 0, i32 0
  %PC.i905 = bitcast %union.anon* %1061 to i64*
  %1062 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1063 = getelementptr inbounds %struct.GPR, %struct.GPR* %1062, i32 0, i32 7
  %1064 = getelementptr inbounds %struct.Reg, %struct.Reg* %1063, i32 0, i32 0
  %RDX.i906 = bitcast %union.anon* %1064 to i64*
  %1065 = load i64, i64* %RDX.i906
  %1066 = load i64, i64* %PC.i905
  %1067 = add i64 %1066, 3
  store i64 %1067, i64* %PC.i905
  %1068 = trunc i64 %1065 to i32
  %1069 = add i32 1, %1068
  %1070 = zext i32 %1069 to i64
  store i64 %1070, i64* %RDX.i906, align 8
  %1071 = icmp ult i32 %1069, %1068
  %1072 = icmp ult i32 %1069, 1
  %1073 = or i1 %1071, %1072
  %1074 = zext i1 %1073 to i8
  %1075 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1074, i8* %1075, align 1
  %1076 = and i32 %1069, 255
  %1077 = call i32 @llvm.ctpop.i32(i32 %1076)
  %1078 = trunc i32 %1077 to i8
  %1079 = and i8 %1078, 1
  %1080 = xor i8 %1079, 1
  %1081 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1080, i8* %1081, align 1
  %1082 = xor i64 1, %1065
  %1083 = trunc i64 %1082 to i32
  %1084 = xor i32 %1083, %1069
  %1085 = lshr i32 %1084, 4
  %1086 = trunc i32 %1085 to i8
  %1087 = and i8 %1086, 1
  %1088 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1087, i8* %1088, align 1
  %1089 = icmp eq i32 %1069, 0
  %1090 = zext i1 %1089 to i8
  %1091 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1090, i8* %1091, align 1
  %1092 = lshr i32 %1069, 31
  %1093 = trunc i32 %1092 to i8
  %1094 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1093, i8* %1094, align 1
  %1095 = lshr i32 %1068, 31
  %1096 = xor i32 %1092, %1095
  %1097 = add i32 %1096, %1092
  %1098 = icmp eq i32 %1097, 2
  %1099 = zext i1 %1098 to i8
  %1100 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1099, i8* %1100, align 1
  store %struct.Memory* %loadMem_42a79b, %struct.Memory** %MEMORY
  %loadMem_42a79e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1102 = getelementptr inbounds %struct.GPR, %struct.GPR* %1101, i32 0, i32 33
  %1103 = getelementptr inbounds %struct.Reg, %struct.Reg* %1102, i32 0, i32 0
  %PC.i902 = bitcast %union.anon* %1103 to i64*
  %1104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1105 = getelementptr inbounds %struct.GPR, %struct.GPR* %1104, i32 0, i32 7
  %1106 = getelementptr inbounds %struct.Reg, %struct.Reg* %1105, i32 0, i32 0
  %EDX.i903 = bitcast %union.anon* %1106 to i32*
  %1107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1108 = getelementptr inbounds %struct.GPR, %struct.GPR* %1107, i32 0, i32 15
  %1109 = getelementptr inbounds %struct.Reg, %struct.Reg* %1108, i32 0, i32 0
  %RBP.i904 = bitcast %union.anon* %1109 to i64*
  %1110 = load i64, i64* %RBP.i904
  %1111 = sub i64 %1110, 44
  %1112 = load i32, i32* %EDX.i903
  %1113 = zext i32 %1112 to i64
  %1114 = load i64, i64* %PC.i902
  %1115 = add i64 %1114, 3
  store i64 %1115, i64* %PC.i902
  %1116 = inttoptr i64 %1111 to i32*
  store i32 %1112, i32* %1116
  store %struct.Memory* %loadMem_42a79e, %struct.Memory** %MEMORY
  %loadMem_42a7a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1118 = getelementptr inbounds %struct.GPR, %struct.GPR* %1117, i32 0, i32 33
  %1119 = getelementptr inbounds %struct.Reg, %struct.Reg* %1118, i32 0, i32 0
  %PC.i901 = bitcast %union.anon* %1119 to i64*
  %1120 = load i64, i64* %PC.i901
  %1121 = add i64 %1120, 1236
  %1122 = load i64, i64* %PC.i901
  %1123 = add i64 %1122, 5
  store i64 %1123, i64* %PC.i901
  %1124 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1121, i64* %1124, align 8
  store %struct.Memory* %loadMem_42a7a1, %struct.Memory** %MEMORY
  br label %block_.L_42ac75

block_.L_42a7a6:                                  ; preds = %block_42a717, %block_42a6fe
  %loadMem_42a7a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1126 = getelementptr inbounds %struct.GPR, %struct.GPR* %1125, i32 0, i32 33
  %1127 = getelementptr inbounds %struct.Reg, %struct.Reg* %1126, i32 0, i32 0
  %PC.i898 = bitcast %union.anon* %1127 to i64*
  %1128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1129 = getelementptr inbounds %struct.GPR, %struct.GPR* %1128, i32 0, i32 1
  %1130 = getelementptr inbounds %struct.Reg, %struct.Reg* %1129, i32 0, i32 0
  %RAX.i899 = bitcast %union.anon* %1130 to i64*
  %1131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1132 = getelementptr inbounds %struct.GPR, %struct.GPR* %1131, i32 0, i32 15
  %1133 = getelementptr inbounds %struct.Reg, %struct.Reg* %1132, i32 0, i32 0
  %RBP.i900 = bitcast %union.anon* %1133 to i64*
  %1134 = load i64, i64* %RBP.i900
  %1135 = sub i64 %1134, 8
  %1136 = load i64, i64* %PC.i898
  %1137 = add i64 %1136, 4
  store i64 %1137, i64* %PC.i898
  %1138 = inttoptr i64 %1135 to i64*
  %1139 = load i64, i64* %1138
  store i64 %1139, i64* %RAX.i899, align 8
  store %struct.Memory* %loadMem_42a7a6, %struct.Memory** %MEMORY
  %loadMem_42a7aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %1140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1141 = getelementptr inbounds %struct.GPR, %struct.GPR* %1140, i32 0, i32 33
  %1142 = getelementptr inbounds %struct.Reg, %struct.Reg* %1141, i32 0, i32 0
  %PC.i896 = bitcast %union.anon* %1142 to i64*
  %1143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1144 = getelementptr inbounds %struct.GPR, %struct.GPR* %1143, i32 0, i32 1
  %1145 = getelementptr inbounds %struct.Reg, %struct.Reg* %1144, i32 0, i32 0
  %RAX.i897 = bitcast %union.anon* %1145 to i64*
  %1146 = load i64, i64* %RAX.i897
  %1147 = add i64 %1146, 8
  %1148 = load i64, i64* %PC.i896
  %1149 = add i64 %1148, 4
  store i64 %1149, i64* %PC.i896
  %1150 = inttoptr i64 %1147 to i64*
  %1151 = load i64, i64* %1150
  store i64 %1151, i64* %RAX.i897, align 8
  store %struct.Memory* %loadMem_42a7aa, %struct.Memory** %MEMORY
  %loadMem_42a7ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %1152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1153 = getelementptr inbounds %struct.GPR, %struct.GPR* %1152, i32 0, i32 33
  %1154 = getelementptr inbounds %struct.Reg, %struct.Reg* %1153, i32 0, i32 0
  %PC.i893 = bitcast %union.anon* %1154 to i64*
  %1155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1156 = getelementptr inbounds %struct.GPR, %struct.GPR* %1155, i32 0, i32 5
  %1157 = getelementptr inbounds %struct.Reg, %struct.Reg* %1156, i32 0, i32 0
  %RCX.i894 = bitcast %union.anon* %1157 to i64*
  %1158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1159 = getelementptr inbounds %struct.GPR, %struct.GPR* %1158, i32 0, i32 15
  %1160 = getelementptr inbounds %struct.Reg, %struct.Reg* %1159, i32 0, i32 0
  %RBP.i895 = bitcast %union.anon* %1160 to i64*
  %1161 = load i64, i64* %RBP.i895
  %1162 = sub i64 %1161, 36
  %1163 = load i64, i64* %PC.i893
  %1164 = add i64 %1163, 4
  store i64 %1164, i64* %PC.i893
  %1165 = inttoptr i64 %1162 to i32*
  %1166 = load i32, i32* %1165
  %1167 = sext i32 %1166 to i64
  store i64 %1167, i64* %RCX.i894, align 8
  store %struct.Memory* %loadMem_42a7ae, %struct.Memory** %MEMORY
  %loadMem_42a7b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1169 = getelementptr inbounds %struct.GPR, %struct.GPR* %1168, i32 0, i32 33
  %1170 = getelementptr inbounds %struct.Reg, %struct.Reg* %1169, i32 0, i32 0
  %PC.i889 = bitcast %union.anon* %1170 to i64*
  %1171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1172 = getelementptr inbounds %struct.GPR, %struct.GPR* %1171, i32 0, i32 1
  %1173 = getelementptr inbounds %struct.Reg, %struct.Reg* %1172, i32 0, i32 0
  %RAX.i890 = bitcast %union.anon* %1173 to i64*
  %1174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1175 = getelementptr inbounds %struct.GPR, %struct.GPR* %1174, i32 0, i32 5
  %1176 = getelementptr inbounds %struct.Reg, %struct.Reg* %1175, i32 0, i32 0
  %RCX.i891 = bitcast %union.anon* %1176 to i64*
  %1177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1178 = getelementptr inbounds %struct.GPR, %struct.GPR* %1177, i32 0, i32 7
  %1179 = getelementptr inbounds %struct.Reg, %struct.Reg* %1178, i32 0, i32 0
  %RDX.i892 = bitcast %union.anon* %1179 to i64*
  %1180 = load i64, i64* %RAX.i890
  %1181 = load i64, i64* %RCX.i891
  %1182 = add i64 %1181, %1180
  %1183 = load i64, i64* %PC.i889
  %1184 = add i64 %1183, 4
  store i64 %1184, i64* %PC.i889
  %1185 = inttoptr i64 %1182 to i8*
  %1186 = load i8, i8* %1185
  %1187 = sext i8 %1186 to i64
  %1188 = and i64 %1187, 4294967295
  store i64 %1188, i64* %RDX.i892, align 8
  store %struct.Memory* %loadMem_42a7b2, %struct.Memory** %MEMORY
  %loadMem_42a7b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1190 = getelementptr inbounds %struct.GPR, %struct.GPR* %1189, i32 0, i32 33
  %1191 = getelementptr inbounds %struct.Reg, %struct.Reg* %1190, i32 0, i32 0
  %PC.i887 = bitcast %union.anon* %1191 to i64*
  %1192 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1193 = getelementptr inbounds %struct.GPR, %struct.GPR* %1192, i32 0, i32 7
  %1194 = getelementptr inbounds %struct.Reg, %struct.Reg* %1193, i32 0, i32 0
  %EDX.i888 = bitcast %union.anon* %1194 to i32*
  %1195 = load i32, i32* %EDX.i888
  %1196 = zext i32 %1195 to i64
  %1197 = load i64, i64* %PC.i887
  %1198 = add i64 %1197, 3
  store i64 %1198, i64* %PC.i887
  %1199 = sub i32 %1195, 3
  %1200 = icmp ult i32 %1195, 3
  %1201 = zext i1 %1200 to i8
  %1202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1201, i8* %1202, align 1
  %1203 = and i32 %1199, 255
  %1204 = call i32 @llvm.ctpop.i32(i32 %1203)
  %1205 = trunc i32 %1204 to i8
  %1206 = and i8 %1205, 1
  %1207 = xor i8 %1206, 1
  %1208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1207, i8* %1208, align 1
  %1209 = xor i64 3, %1196
  %1210 = trunc i64 %1209 to i32
  %1211 = xor i32 %1210, %1199
  %1212 = lshr i32 %1211, 4
  %1213 = trunc i32 %1212 to i8
  %1214 = and i8 %1213, 1
  %1215 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1214, i8* %1215, align 1
  %1216 = icmp eq i32 %1199, 0
  %1217 = zext i1 %1216 to i8
  %1218 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1217, i8* %1218, align 1
  %1219 = lshr i32 %1199, 31
  %1220 = trunc i32 %1219 to i8
  %1221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1220, i8* %1221, align 1
  %1222 = lshr i32 %1195, 31
  %1223 = xor i32 %1219, %1222
  %1224 = add i32 %1223, %1222
  %1225 = icmp eq i32 %1224, 2
  %1226 = zext i1 %1225 to i8
  %1227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1226, i8* %1227, align 1
  store %struct.Memory* %loadMem_42a7b6, %struct.Memory** %MEMORY
  %loadMem_42a7b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1229 = getelementptr inbounds %struct.GPR, %struct.GPR* %1228, i32 0, i32 33
  %1230 = getelementptr inbounds %struct.Reg, %struct.Reg* %1229, i32 0, i32 0
  %PC.i886 = bitcast %union.anon* %1230 to i64*
  %1231 = load i64, i64* %PC.i886
  %1232 = add i64 %1231, 149
  %1233 = load i64, i64* %PC.i886
  %1234 = add i64 %1233, 6
  %1235 = load i64, i64* %PC.i886
  %1236 = add i64 %1235, 6
  store i64 %1236, i64* %PC.i886
  %1237 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1238 = load i8, i8* %1237, align 1
  %1239 = icmp eq i8 %1238, 0
  %1240 = zext i1 %1239 to i8
  store i8 %1240, i8* %BRANCH_TAKEN, align 1
  %1241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1242 = select i1 %1239, i64 %1232, i64 %1234
  store i64 %1242, i64* %1241, align 8
  store %struct.Memory* %loadMem_42a7b9, %struct.Memory** %MEMORY
  %loadBr_42a7b9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42a7b9 = icmp eq i8 %loadBr_42a7b9, 1
  br i1 %cmpBr_42a7b9, label %block_.L_42a84e, label %block_42a7bf

block_42a7bf:                                     ; preds = %block_.L_42a7a6
  %loadMem_42a7bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %1243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1244 = getelementptr inbounds %struct.GPR, %struct.GPR* %1243, i32 0, i32 33
  %1245 = getelementptr inbounds %struct.Reg, %struct.Reg* %1244, i32 0, i32 0
  %PC.i883 = bitcast %union.anon* %1245 to i64*
  %1246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1247 = getelementptr inbounds %struct.GPR, %struct.GPR* %1246, i32 0, i32 1
  %1248 = getelementptr inbounds %struct.Reg, %struct.Reg* %1247, i32 0, i32 0
  %RAX.i884 = bitcast %union.anon* %1248 to i64*
  %1249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1250 = getelementptr inbounds %struct.GPR, %struct.GPR* %1249, i32 0, i32 15
  %1251 = getelementptr inbounds %struct.Reg, %struct.Reg* %1250, i32 0, i32 0
  %RBP.i885 = bitcast %union.anon* %1251 to i64*
  %1252 = load i64, i64* %RBP.i885
  %1253 = sub i64 %1252, 8
  %1254 = load i64, i64* %PC.i883
  %1255 = add i64 %1254, 4
  store i64 %1255, i64* %PC.i883
  %1256 = inttoptr i64 %1253 to i64*
  %1257 = load i64, i64* %1256
  store i64 %1257, i64* %RAX.i884, align 8
  store %struct.Memory* %loadMem_42a7bf, %struct.Memory** %MEMORY
  %loadMem_42a7c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1259 = getelementptr inbounds %struct.GPR, %struct.GPR* %1258, i32 0, i32 33
  %1260 = getelementptr inbounds %struct.Reg, %struct.Reg* %1259, i32 0, i32 0
  %PC.i881 = bitcast %union.anon* %1260 to i64*
  %1261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1262 = getelementptr inbounds %struct.GPR, %struct.GPR* %1261, i32 0, i32 1
  %1263 = getelementptr inbounds %struct.Reg, %struct.Reg* %1262, i32 0, i32 0
  %RAX.i882 = bitcast %union.anon* %1263 to i64*
  %1264 = load i64, i64* %RAX.i882
  %1265 = add i64 %1264, 8
  %1266 = load i64, i64* %PC.i881
  %1267 = add i64 %1266, 4
  store i64 %1267, i64* %PC.i881
  %1268 = inttoptr i64 %1265 to i64*
  %1269 = load i64, i64* %1268
  store i64 %1269, i64* %RAX.i882, align 8
  store %struct.Memory* %loadMem_42a7c3, %struct.Memory** %MEMORY
  %loadMem_42a7c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1271 = getelementptr inbounds %struct.GPR, %struct.GPR* %1270, i32 0, i32 33
  %1272 = getelementptr inbounds %struct.Reg, %struct.Reg* %1271, i32 0, i32 0
  %PC.i878 = bitcast %union.anon* %1272 to i64*
  %1273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1274 = getelementptr inbounds %struct.GPR, %struct.GPR* %1273, i32 0, i32 5
  %1275 = getelementptr inbounds %struct.Reg, %struct.Reg* %1274, i32 0, i32 0
  %RCX.i879 = bitcast %union.anon* %1275 to i64*
  %1276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1277 = getelementptr inbounds %struct.GPR, %struct.GPR* %1276, i32 0, i32 15
  %1278 = getelementptr inbounds %struct.Reg, %struct.Reg* %1277, i32 0, i32 0
  %RBP.i880 = bitcast %union.anon* %1278 to i64*
  %1279 = load i64, i64* %RBP.i880
  %1280 = sub i64 %1279, 36
  %1281 = load i64, i64* %PC.i878
  %1282 = add i64 %1281, 3
  store i64 %1282, i64* %PC.i878
  %1283 = inttoptr i64 %1280 to i32*
  %1284 = load i32, i32* %1283
  %1285 = zext i32 %1284 to i64
  store i64 %1285, i64* %RCX.i879, align 8
  store %struct.Memory* %loadMem_42a7c7, %struct.Memory** %MEMORY
  %loadMem_42a7ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %1286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1287 = getelementptr inbounds %struct.GPR, %struct.GPR* %1286, i32 0, i32 33
  %1288 = getelementptr inbounds %struct.Reg, %struct.Reg* %1287, i32 0, i32 0
  %PC.i876 = bitcast %union.anon* %1288 to i64*
  %1289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1290 = getelementptr inbounds %struct.GPR, %struct.GPR* %1289, i32 0, i32 5
  %1291 = getelementptr inbounds %struct.Reg, %struct.Reg* %1290, i32 0, i32 0
  %RCX.i877 = bitcast %union.anon* %1291 to i64*
  %1292 = load i64, i64* %RCX.i877
  %1293 = load i64, i64* %PC.i876
  %1294 = add i64 %1293, 3
  store i64 %1294, i64* %PC.i876
  %1295 = trunc i64 %1292 to i32
  %1296 = add i32 1, %1295
  %1297 = zext i32 %1296 to i64
  store i64 %1297, i64* %RCX.i877, align 8
  %1298 = icmp ult i32 %1296, %1295
  %1299 = icmp ult i32 %1296, 1
  %1300 = or i1 %1298, %1299
  %1301 = zext i1 %1300 to i8
  %1302 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1301, i8* %1302, align 1
  %1303 = and i32 %1296, 255
  %1304 = call i32 @llvm.ctpop.i32(i32 %1303)
  %1305 = trunc i32 %1304 to i8
  %1306 = and i8 %1305, 1
  %1307 = xor i8 %1306, 1
  %1308 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1307, i8* %1308, align 1
  %1309 = xor i64 1, %1292
  %1310 = trunc i64 %1309 to i32
  %1311 = xor i32 %1310, %1296
  %1312 = lshr i32 %1311, 4
  %1313 = trunc i32 %1312 to i8
  %1314 = and i8 %1313, 1
  %1315 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1314, i8* %1315, align 1
  %1316 = icmp eq i32 %1296, 0
  %1317 = zext i1 %1316 to i8
  %1318 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1317, i8* %1318, align 1
  %1319 = lshr i32 %1296, 31
  %1320 = trunc i32 %1319 to i8
  %1321 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1320, i8* %1321, align 1
  %1322 = lshr i32 %1295, 31
  %1323 = xor i32 %1319, %1322
  %1324 = add i32 %1323, %1319
  %1325 = icmp eq i32 %1324, 2
  %1326 = zext i1 %1325 to i8
  %1327 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1326, i8* %1327, align 1
  store %struct.Memory* %loadMem_42a7ca, %struct.Memory** %MEMORY
  %loadMem_42a7cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1329 = getelementptr inbounds %struct.GPR, %struct.GPR* %1328, i32 0, i32 33
  %1330 = getelementptr inbounds %struct.Reg, %struct.Reg* %1329, i32 0, i32 0
  %PC.i873 = bitcast %union.anon* %1330 to i64*
  %1331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1332 = getelementptr inbounds %struct.GPR, %struct.GPR* %1331, i32 0, i32 5
  %1333 = getelementptr inbounds %struct.Reg, %struct.Reg* %1332, i32 0, i32 0
  %ECX.i874 = bitcast %union.anon* %1333 to i32*
  %1334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1335 = getelementptr inbounds %struct.GPR, %struct.GPR* %1334, i32 0, i32 7
  %1336 = getelementptr inbounds %struct.Reg, %struct.Reg* %1335, i32 0, i32 0
  %RDX.i875 = bitcast %union.anon* %1336 to i64*
  %1337 = load i32, i32* %ECX.i874
  %1338 = zext i32 %1337 to i64
  %1339 = load i64, i64* %PC.i873
  %1340 = add i64 %1339, 3
  store i64 %1340, i64* %PC.i873
  %1341 = shl i64 %1338, 32
  %1342 = ashr exact i64 %1341, 32
  store i64 %1342, i64* %RDX.i875, align 8
  store %struct.Memory* %loadMem_42a7cd, %struct.Memory** %MEMORY
  %loadMem_42a7d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1344 = getelementptr inbounds %struct.GPR, %struct.GPR* %1343, i32 0, i32 33
  %1345 = getelementptr inbounds %struct.Reg, %struct.Reg* %1344, i32 0, i32 0
  %PC.i869 = bitcast %union.anon* %1345 to i64*
  %1346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1347 = getelementptr inbounds %struct.GPR, %struct.GPR* %1346, i32 0, i32 1
  %1348 = getelementptr inbounds %struct.Reg, %struct.Reg* %1347, i32 0, i32 0
  %RAX.i870 = bitcast %union.anon* %1348 to i64*
  %1349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1350 = getelementptr inbounds %struct.GPR, %struct.GPR* %1349, i32 0, i32 5
  %1351 = getelementptr inbounds %struct.Reg, %struct.Reg* %1350, i32 0, i32 0
  %RCX.i871 = bitcast %union.anon* %1351 to i64*
  %1352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1353 = getelementptr inbounds %struct.GPR, %struct.GPR* %1352, i32 0, i32 7
  %1354 = getelementptr inbounds %struct.Reg, %struct.Reg* %1353, i32 0, i32 0
  %RDX.i872 = bitcast %union.anon* %1354 to i64*
  %1355 = load i64, i64* %RAX.i870
  %1356 = load i64, i64* %RDX.i872
  %1357 = add i64 %1356, %1355
  %1358 = load i64, i64* %PC.i869
  %1359 = add i64 %1358, 4
  store i64 %1359, i64* %PC.i869
  %1360 = inttoptr i64 %1357 to i8*
  %1361 = load i8, i8* %1360
  %1362 = sext i8 %1361 to i64
  %1363 = and i64 %1362, 4294967295
  store i64 %1363, i64* %RCX.i871, align 8
  store %struct.Memory* %loadMem_42a7d0, %struct.Memory** %MEMORY
  %loadMem_42a7d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1365 = getelementptr inbounds %struct.GPR, %struct.GPR* %1364, i32 0, i32 33
  %1366 = getelementptr inbounds %struct.Reg, %struct.Reg* %1365, i32 0, i32 0
  %PC.i867 = bitcast %union.anon* %1366 to i64*
  %1367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1368 = getelementptr inbounds %struct.GPR, %struct.GPR* %1367, i32 0, i32 5
  %1369 = getelementptr inbounds %struct.Reg, %struct.Reg* %1368, i32 0, i32 0
  %ECX.i868 = bitcast %union.anon* %1369 to i32*
  %1370 = load i32, i32* %ECX.i868
  %1371 = zext i32 %1370 to i64
  %1372 = load i64, i64* %PC.i867
  %1373 = add i64 %1372, 3
  store i64 %1373, i64* %PC.i867
  %1374 = sub i32 %1370, 2
  %1375 = icmp ult i32 %1370, 2
  %1376 = zext i1 %1375 to i8
  %1377 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1376, i8* %1377, align 1
  %1378 = and i32 %1374, 255
  %1379 = call i32 @llvm.ctpop.i32(i32 %1378)
  %1380 = trunc i32 %1379 to i8
  %1381 = and i8 %1380, 1
  %1382 = xor i8 %1381, 1
  %1383 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1382, i8* %1383, align 1
  %1384 = xor i64 2, %1371
  %1385 = trunc i64 %1384 to i32
  %1386 = xor i32 %1385, %1374
  %1387 = lshr i32 %1386, 4
  %1388 = trunc i32 %1387 to i8
  %1389 = and i8 %1388, 1
  %1390 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1389, i8* %1390, align 1
  %1391 = icmp eq i32 %1374, 0
  %1392 = zext i1 %1391 to i8
  %1393 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1392, i8* %1393, align 1
  %1394 = lshr i32 %1374, 31
  %1395 = trunc i32 %1394 to i8
  %1396 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1395, i8* %1396, align 1
  %1397 = lshr i32 %1370, 31
  %1398 = xor i32 %1394, %1397
  %1399 = add i32 %1398, %1397
  %1400 = icmp eq i32 %1399, 2
  %1401 = zext i1 %1400 to i8
  %1402 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1401, i8* %1402, align 1
  store %struct.Memory* %loadMem_42a7d4, %struct.Memory** %MEMORY
  %loadMem_42a7d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1404 = getelementptr inbounds %struct.GPR, %struct.GPR* %1403, i32 0, i32 33
  %1405 = getelementptr inbounds %struct.Reg, %struct.Reg* %1404, i32 0, i32 0
  %PC.i866 = bitcast %union.anon* %1405 to i64*
  %1406 = load i64, i64* %PC.i866
  %1407 = add i64 %1406, 119
  %1408 = load i64, i64* %PC.i866
  %1409 = add i64 %1408, 6
  %1410 = load i64, i64* %PC.i866
  %1411 = add i64 %1410, 6
  store i64 %1411, i64* %PC.i866
  %1412 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1413 = load i8, i8* %1412, align 1
  %1414 = icmp eq i8 %1413, 0
  %1415 = zext i1 %1414 to i8
  store i8 %1415, i8* %BRANCH_TAKEN, align 1
  %1416 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1417 = select i1 %1414, i64 %1407, i64 %1409
  store i64 %1417, i64* %1416, align 8
  store %struct.Memory* %loadMem_42a7d7, %struct.Memory** %MEMORY
  %loadBr_42a7d7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42a7d7 = icmp eq i8 %loadBr_42a7d7, 1
  br i1 %cmpBr_42a7d7, label %block_.L_42a84e, label %block_42a7dd

block_42a7dd:                                     ; preds = %block_42a7bf
  %loadMem_42a7dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1419 = getelementptr inbounds %struct.GPR, %struct.GPR* %1418, i32 0, i32 33
  %1420 = getelementptr inbounds %struct.Reg, %struct.Reg* %1419, i32 0, i32 0
  %PC.i863 = bitcast %union.anon* %1420 to i64*
  %1421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1422 = getelementptr inbounds %struct.GPR, %struct.GPR* %1421, i32 0, i32 1
  %1423 = getelementptr inbounds %struct.Reg, %struct.Reg* %1422, i32 0, i32 0
  %RAX.i864 = bitcast %union.anon* %1423 to i64*
  %1424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1425 = getelementptr inbounds %struct.GPR, %struct.GPR* %1424, i32 0, i32 15
  %1426 = getelementptr inbounds %struct.Reg, %struct.Reg* %1425, i32 0, i32 0
  %RBP.i865 = bitcast %union.anon* %1426 to i64*
  %1427 = load i64, i64* %RBP.i865
  %1428 = sub i64 %1427, 8
  %1429 = load i64, i64* %PC.i863
  %1430 = add i64 %1429, 4
  store i64 %1430, i64* %PC.i863
  %1431 = inttoptr i64 %1428 to i64*
  %1432 = load i64, i64* %1431
  store i64 %1432, i64* %RAX.i864, align 8
  store %struct.Memory* %loadMem_42a7dd, %struct.Memory** %MEMORY
  %loadMem_42a7e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1433 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1434 = getelementptr inbounds %struct.GPR, %struct.GPR* %1433, i32 0, i32 33
  %1435 = getelementptr inbounds %struct.Reg, %struct.Reg* %1434, i32 0, i32 0
  %PC.i861 = bitcast %union.anon* %1435 to i64*
  %1436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1437 = getelementptr inbounds %struct.GPR, %struct.GPR* %1436, i32 0, i32 1
  %1438 = getelementptr inbounds %struct.Reg, %struct.Reg* %1437, i32 0, i32 0
  %RAX.i862 = bitcast %union.anon* %1438 to i64*
  %1439 = load i64, i64* %RAX.i862
  %1440 = add i64 %1439, 8
  %1441 = load i64, i64* %PC.i861
  %1442 = add i64 %1441, 4
  store i64 %1442, i64* %PC.i861
  %1443 = inttoptr i64 %1440 to i64*
  %1444 = load i64, i64* %1443
  store i64 %1444, i64* %RAX.i862, align 8
  store %struct.Memory* %loadMem_42a7e1, %struct.Memory** %MEMORY
  %loadMem_42a7e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1446 = getelementptr inbounds %struct.GPR, %struct.GPR* %1445, i32 0, i32 33
  %1447 = getelementptr inbounds %struct.Reg, %struct.Reg* %1446, i32 0, i32 0
  %PC.i858 = bitcast %union.anon* %1447 to i64*
  %1448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1449 = getelementptr inbounds %struct.GPR, %struct.GPR* %1448, i32 0, i32 5
  %1450 = getelementptr inbounds %struct.Reg, %struct.Reg* %1449, i32 0, i32 0
  %RCX.i859 = bitcast %union.anon* %1450 to i64*
  %1451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1452 = getelementptr inbounds %struct.GPR, %struct.GPR* %1451, i32 0, i32 15
  %1453 = getelementptr inbounds %struct.Reg, %struct.Reg* %1452, i32 0, i32 0
  %RBP.i860 = bitcast %union.anon* %1453 to i64*
  %1454 = load i64, i64* %RBP.i860
  %1455 = sub i64 %1454, 40
  %1456 = load i64, i64* %PC.i858
  %1457 = add i64 %1456, 4
  store i64 %1457, i64* %PC.i858
  %1458 = inttoptr i64 %1455 to i32*
  %1459 = load i32, i32* %1458
  %1460 = sext i32 %1459 to i64
  store i64 %1460, i64* %RCX.i859, align 8
  store %struct.Memory* %loadMem_42a7e5, %struct.Memory** %MEMORY
  %loadMem_42a7e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1462 = getelementptr inbounds %struct.GPR, %struct.GPR* %1461, i32 0, i32 33
  %1463 = getelementptr inbounds %struct.Reg, %struct.Reg* %1462, i32 0, i32 0
  %PC.i855 = bitcast %union.anon* %1463 to i64*
  %1464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1465 = getelementptr inbounds %struct.GPR, %struct.GPR* %1464, i32 0, i32 1
  %1466 = getelementptr inbounds %struct.Reg, %struct.Reg* %1465, i32 0, i32 0
  %RAX.i856 = bitcast %union.anon* %1466 to i64*
  %1467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1468 = getelementptr inbounds %struct.GPR, %struct.GPR* %1467, i32 0, i32 5
  %1469 = getelementptr inbounds %struct.Reg, %struct.Reg* %1468, i32 0, i32 0
  %RCX.i857 = bitcast %union.anon* %1469 to i64*
  %1470 = load i64, i64* %RAX.i856
  %1471 = load i64, i64* %RCX.i857
  %1472 = add i64 %1471, %1470
  %1473 = load i64, i64* %PC.i855
  %1474 = add i64 %1473, 4
  store i64 %1474, i64* %PC.i855
  %1475 = inttoptr i64 %1472 to i8*
  store i8 1, i8* %1475
  store %struct.Memory* %loadMem_42a7e9, %struct.Memory** %MEMORY
  %loadMem_42a7ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %1476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1477 = getelementptr inbounds %struct.GPR, %struct.GPR* %1476, i32 0, i32 33
  %1478 = getelementptr inbounds %struct.Reg, %struct.Reg* %1477, i32 0, i32 0
  %PC.i852 = bitcast %union.anon* %1478 to i64*
  %1479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1480 = getelementptr inbounds %struct.GPR, %struct.GPR* %1479, i32 0, i32 1
  %1481 = getelementptr inbounds %struct.Reg, %struct.Reg* %1480, i32 0, i32 0
  %RAX.i853 = bitcast %union.anon* %1481 to i64*
  %1482 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1483 = getelementptr inbounds %struct.GPR, %struct.GPR* %1482, i32 0, i32 15
  %1484 = getelementptr inbounds %struct.Reg, %struct.Reg* %1483, i32 0, i32 0
  %RBP.i854 = bitcast %union.anon* %1484 to i64*
  %1485 = load i64, i64* %RBP.i854
  %1486 = sub i64 %1485, 8
  %1487 = load i64, i64* %PC.i852
  %1488 = add i64 %1487, 4
  store i64 %1488, i64* %PC.i852
  %1489 = inttoptr i64 %1486 to i64*
  %1490 = load i64, i64* %1489
  store i64 %1490, i64* %RAX.i853, align 8
  store %struct.Memory* %loadMem_42a7ed, %struct.Memory** %MEMORY
  %loadMem_42a7f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1492 = getelementptr inbounds %struct.GPR, %struct.GPR* %1491, i32 0, i32 33
  %1493 = getelementptr inbounds %struct.Reg, %struct.Reg* %1492, i32 0, i32 0
  %PC.i850 = bitcast %union.anon* %1493 to i64*
  %1494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1495 = getelementptr inbounds %struct.GPR, %struct.GPR* %1494, i32 0, i32 1
  %1496 = getelementptr inbounds %struct.Reg, %struct.Reg* %1495, i32 0, i32 0
  %RAX.i851 = bitcast %union.anon* %1496 to i64*
  %1497 = load i64, i64* %RAX.i851
  %1498 = add i64 %1497, 16
  %1499 = load i64, i64* %PC.i850
  %1500 = add i64 %1499, 4
  store i64 %1500, i64* %PC.i850
  %1501 = inttoptr i64 %1498 to i64*
  %1502 = load i64, i64* %1501
  store i64 %1502, i64* %RAX.i851, align 8
  store %struct.Memory* %loadMem_42a7f1, %struct.Memory** %MEMORY
  %loadMem_42a7f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1504 = getelementptr inbounds %struct.GPR, %struct.GPR* %1503, i32 0, i32 33
  %1505 = getelementptr inbounds %struct.Reg, %struct.Reg* %1504, i32 0, i32 0
  %PC.i847 = bitcast %union.anon* %1505 to i64*
  %1506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1507 = getelementptr inbounds %struct.GPR, %struct.GPR* %1506, i32 0, i32 7
  %1508 = getelementptr inbounds %struct.Reg, %struct.Reg* %1507, i32 0, i32 0
  %RDX.i848 = bitcast %union.anon* %1508 to i64*
  %1509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1510 = getelementptr inbounds %struct.GPR, %struct.GPR* %1509, i32 0, i32 15
  %1511 = getelementptr inbounds %struct.Reg, %struct.Reg* %1510, i32 0, i32 0
  %RBP.i849 = bitcast %union.anon* %1511 to i64*
  %1512 = load i64, i64* %RBP.i849
  %1513 = sub i64 %1512, 36
  %1514 = load i64, i64* %PC.i847
  %1515 = add i64 %1514, 3
  store i64 %1515, i64* %PC.i847
  %1516 = inttoptr i64 %1513 to i32*
  %1517 = load i32, i32* %1516
  %1518 = zext i32 %1517 to i64
  store i64 %1518, i64* %RDX.i848, align 8
  store %struct.Memory* %loadMem_42a7f5, %struct.Memory** %MEMORY
  %loadMem_42a7f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1520 = getelementptr inbounds %struct.GPR, %struct.GPR* %1519, i32 0, i32 33
  %1521 = getelementptr inbounds %struct.Reg, %struct.Reg* %1520, i32 0, i32 0
  %PC.i845 = bitcast %union.anon* %1521 to i64*
  %1522 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1523 = getelementptr inbounds %struct.GPR, %struct.GPR* %1522, i32 0, i32 7
  %1524 = getelementptr inbounds %struct.Reg, %struct.Reg* %1523, i32 0, i32 0
  %RDX.i846 = bitcast %union.anon* %1524 to i64*
  %1525 = load i64, i64* %RDX.i846
  %1526 = load i64, i64* %PC.i845
  %1527 = add i64 %1526, 3
  store i64 %1527, i64* %PC.i845
  %1528 = trunc i64 %1525 to i32
  %1529 = add i32 1, %1528
  %1530 = zext i32 %1529 to i64
  store i64 %1530, i64* %RDX.i846, align 8
  %1531 = icmp ult i32 %1529, %1528
  %1532 = icmp ult i32 %1529, 1
  %1533 = or i1 %1531, %1532
  %1534 = zext i1 %1533 to i8
  %1535 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1534, i8* %1535, align 1
  %1536 = and i32 %1529, 255
  %1537 = call i32 @llvm.ctpop.i32(i32 %1536)
  %1538 = trunc i32 %1537 to i8
  %1539 = and i8 %1538, 1
  %1540 = xor i8 %1539, 1
  %1541 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1540, i8* %1541, align 1
  %1542 = xor i64 1, %1525
  %1543 = trunc i64 %1542 to i32
  %1544 = xor i32 %1543, %1529
  %1545 = lshr i32 %1544, 4
  %1546 = trunc i32 %1545 to i8
  %1547 = and i8 %1546, 1
  %1548 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1547, i8* %1548, align 1
  %1549 = icmp eq i32 %1529, 0
  %1550 = zext i1 %1549 to i8
  %1551 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1550, i8* %1551, align 1
  %1552 = lshr i32 %1529, 31
  %1553 = trunc i32 %1552 to i8
  %1554 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1553, i8* %1554, align 1
  %1555 = lshr i32 %1528, 31
  %1556 = xor i32 %1552, %1555
  %1557 = add i32 %1556, %1552
  %1558 = icmp eq i32 %1557, 2
  %1559 = zext i1 %1558 to i8
  %1560 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1559, i8* %1560, align 1
  store %struct.Memory* %loadMem_42a7f8, %struct.Memory** %MEMORY
  %loadMem_42a7fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1562 = getelementptr inbounds %struct.GPR, %struct.GPR* %1561, i32 0, i32 33
  %1563 = getelementptr inbounds %struct.Reg, %struct.Reg* %1562, i32 0, i32 0
  %PC.i842 = bitcast %union.anon* %1563 to i64*
  %1564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1565 = getelementptr inbounds %struct.GPR, %struct.GPR* %1564, i32 0, i32 7
  %1566 = getelementptr inbounds %struct.Reg, %struct.Reg* %1565, i32 0, i32 0
  %EDX.i843 = bitcast %union.anon* %1566 to i32*
  %1567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1568 = getelementptr inbounds %struct.GPR, %struct.GPR* %1567, i32 0, i32 5
  %1569 = getelementptr inbounds %struct.Reg, %struct.Reg* %1568, i32 0, i32 0
  %RCX.i844 = bitcast %union.anon* %1569 to i64*
  %1570 = load i32, i32* %EDX.i843
  %1571 = zext i32 %1570 to i64
  %1572 = load i64, i64* %PC.i842
  %1573 = add i64 %1572, 3
  store i64 %1573, i64* %PC.i842
  %1574 = shl i64 %1571, 32
  %1575 = ashr exact i64 %1574, 32
  store i64 %1575, i64* %RCX.i844, align 8
  store %struct.Memory* %loadMem_42a7fb, %struct.Memory** %MEMORY
  %loadMem_42a7fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %1576 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1577 = getelementptr inbounds %struct.GPR, %struct.GPR* %1576, i32 0, i32 33
  %1578 = getelementptr inbounds %struct.Reg, %struct.Reg* %1577, i32 0, i32 0
  %PC.i838 = bitcast %union.anon* %1578 to i64*
  %1579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1580 = getelementptr inbounds %struct.GPR, %struct.GPR* %1579, i32 0, i32 1
  %1581 = getelementptr inbounds %struct.Reg, %struct.Reg* %1580, i32 0, i32 0
  %RAX.i839 = bitcast %union.anon* %1581 to i64*
  %1582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1583 = getelementptr inbounds %struct.GPR, %struct.GPR* %1582, i32 0, i32 5
  %1584 = getelementptr inbounds %struct.Reg, %struct.Reg* %1583, i32 0, i32 0
  %RCX.i840 = bitcast %union.anon* %1584 to i64*
  %1585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1586 = getelementptr inbounds %struct.GPR, %struct.GPR* %1585, i32 0, i32 7
  %1587 = getelementptr inbounds %struct.Reg, %struct.Reg* %1586, i32 0, i32 0
  %RDX.i841 = bitcast %union.anon* %1587 to i64*
  %1588 = load i64, i64* %RAX.i839
  %1589 = load i64, i64* %RCX.i840
  %1590 = mul i64 %1589, 4
  %1591 = add i64 %1590, %1588
  %1592 = load i64, i64* %PC.i838
  %1593 = add i64 %1592, 3
  store i64 %1593, i64* %PC.i838
  %1594 = inttoptr i64 %1591 to i32*
  %1595 = load i32, i32* %1594
  %1596 = zext i32 %1595 to i64
  store i64 %1596, i64* %RDX.i841, align 8
  store %struct.Memory* %loadMem_42a7fe, %struct.Memory** %MEMORY
  %loadMem_42a801 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1597 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1598 = getelementptr inbounds %struct.GPR, %struct.GPR* %1597, i32 0, i32 33
  %1599 = getelementptr inbounds %struct.Reg, %struct.Reg* %1598, i32 0, i32 0
  %PC.i835 = bitcast %union.anon* %1599 to i64*
  %1600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1601 = getelementptr inbounds %struct.GPR, %struct.GPR* %1600, i32 0, i32 1
  %1602 = getelementptr inbounds %struct.Reg, %struct.Reg* %1601, i32 0, i32 0
  %RAX.i836 = bitcast %union.anon* %1602 to i64*
  %1603 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1604 = getelementptr inbounds %struct.GPR, %struct.GPR* %1603, i32 0, i32 15
  %1605 = getelementptr inbounds %struct.Reg, %struct.Reg* %1604, i32 0, i32 0
  %RBP.i837 = bitcast %union.anon* %1605 to i64*
  %1606 = load i64, i64* %RBP.i837
  %1607 = sub i64 %1606, 8
  %1608 = load i64, i64* %PC.i835
  %1609 = add i64 %1608, 4
  store i64 %1609, i64* %PC.i835
  %1610 = inttoptr i64 %1607 to i64*
  %1611 = load i64, i64* %1610
  store i64 %1611, i64* %RAX.i836, align 8
  store %struct.Memory* %loadMem_42a801, %struct.Memory** %MEMORY
  %loadMem_42a805 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1613 = getelementptr inbounds %struct.GPR, %struct.GPR* %1612, i32 0, i32 33
  %1614 = getelementptr inbounds %struct.Reg, %struct.Reg* %1613, i32 0, i32 0
  %PC.i833 = bitcast %union.anon* %1614 to i64*
  %1615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1616 = getelementptr inbounds %struct.GPR, %struct.GPR* %1615, i32 0, i32 1
  %1617 = getelementptr inbounds %struct.Reg, %struct.Reg* %1616, i32 0, i32 0
  %RAX.i834 = bitcast %union.anon* %1617 to i64*
  %1618 = load i64, i64* %RAX.i834
  %1619 = add i64 %1618, 16
  %1620 = load i64, i64* %PC.i833
  %1621 = add i64 %1620, 4
  store i64 %1621, i64* %PC.i833
  %1622 = inttoptr i64 %1619 to i64*
  %1623 = load i64, i64* %1622
  store i64 %1623, i64* %RAX.i834, align 8
  store %struct.Memory* %loadMem_42a805, %struct.Memory** %MEMORY
  %loadMem_42a809 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1625 = getelementptr inbounds %struct.GPR, %struct.GPR* %1624, i32 0, i32 33
  %1626 = getelementptr inbounds %struct.Reg, %struct.Reg* %1625, i32 0, i32 0
  %PC.i830 = bitcast %union.anon* %1626 to i64*
  %1627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1628 = getelementptr inbounds %struct.GPR, %struct.GPR* %1627, i32 0, i32 5
  %1629 = getelementptr inbounds %struct.Reg, %struct.Reg* %1628, i32 0, i32 0
  %RCX.i831 = bitcast %union.anon* %1629 to i64*
  %1630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1631 = getelementptr inbounds %struct.GPR, %struct.GPR* %1630, i32 0, i32 15
  %1632 = getelementptr inbounds %struct.Reg, %struct.Reg* %1631, i32 0, i32 0
  %RBP.i832 = bitcast %union.anon* %1632 to i64*
  %1633 = load i64, i64* %RBP.i832
  %1634 = sub i64 %1633, 40
  %1635 = load i64, i64* %PC.i830
  %1636 = add i64 %1635, 4
  store i64 %1636, i64* %PC.i830
  %1637 = inttoptr i64 %1634 to i32*
  %1638 = load i32, i32* %1637
  %1639 = sext i32 %1638 to i64
  store i64 %1639, i64* %RCX.i831, align 8
  store %struct.Memory* %loadMem_42a809, %struct.Memory** %MEMORY
  %loadMem_42a80d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1641 = getelementptr inbounds %struct.GPR, %struct.GPR* %1640, i32 0, i32 33
  %1642 = getelementptr inbounds %struct.Reg, %struct.Reg* %1641, i32 0, i32 0
  %PC.i826 = bitcast %union.anon* %1642 to i64*
  %1643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1644 = getelementptr inbounds %struct.GPR, %struct.GPR* %1643, i32 0, i32 7
  %1645 = getelementptr inbounds %struct.Reg, %struct.Reg* %1644, i32 0, i32 0
  %EDX.i827 = bitcast %union.anon* %1645 to i32*
  %1646 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1647 = getelementptr inbounds %struct.GPR, %struct.GPR* %1646, i32 0, i32 1
  %1648 = getelementptr inbounds %struct.Reg, %struct.Reg* %1647, i32 0, i32 0
  %RAX.i828 = bitcast %union.anon* %1648 to i64*
  %1649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1650 = getelementptr inbounds %struct.GPR, %struct.GPR* %1649, i32 0, i32 5
  %1651 = getelementptr inbounds %struct.Reg, %struct.Reg* %1650, i32 0, i32 0
  %RCX.i829 = bitcast %union.anon* %1651 to i64*
  %1652 = load i64, i64* %RAX.i828
  %1653 = load i64, i64* %RCX.i829
  %1654 = mul i64 %1653, 4
  %1655 = add i64 %1654, %1652
  %1656 = load i32, i32* %EDX.i827
  %1657 = zext i32 %1656 to i64
  %1658 = load i64, i64* %PC.i826
  %1659 = add i64 %1658, 3
  store i64 %1659, i64* %PC.i826
  %1660 = inttoptr i64 %1655 to i32*
  store i32 %1656, i32* %1660
  store %struct.Memory* %loadMem_42a80d, %struct.Memory** %MEMORY
  %loadMem_42a810 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1662 = getelementptr inbounds %struct.GPR, %struct.GPR* %1661, i32 0, i32 33
  %1663 = getelementptr inbounds %struct.Reg, %struct.Reg* %1662, i32 0, i32 0
  %PC.i823 = bitcast %union.anon* %1663 to i64*
  %1664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1665 = getelementptr inbounds %struct.GPR, %struct.GPR* %1664, i32 0, i32 1
  %1666 = getelementptr inbounds %struct.Reg, %struct.Reg* %1665, i32 0, i32 0
  %RAX.i824 = bitcast %union.anon* %1666 to i64*
  %1667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1668 = getelementptr inbounds %struct.GPR, %struct.GPR* %1667, i32 0, i32 15
  %1669 = getelementptr inbounds %struct.Reg, %struct.Reg* %1668, i32 0, i32 0
  %RBP.i825 = bitcast %union.anon* %1669 to i64*
  %1670 = load i64, i64* %RBP.i825
  %1671 = sub i64 %1670, 8
  %1672 = load i64, i64* %PC.i823
  %1673 = add i64 %1672, 4
  store i64 %1673, i64* %PC.i823
  %1674 = inttoptr i64 %1671 to i64*
  %1675 = load i64, i64* %1674
  store i64 %1675, i64* %RAX.i824, align 8
  store %struct.Memory* %loadMem_42a810, %struct.Memory** %MEMORY
  %loadMem_42a814 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1676 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1677 = getelementptr inbounds %struct.GPR, %struct.GPR* %1676, i32 0, i32 33
  %1678 = getelementptr inbounds %struct.Reg, %struct.Reg* %1677, i32 0, i32 0
  %PC.i821 = bitcast %union.anon* %1678 to i64*
  %1679 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1680 = getelementptr inbounds %struct.GPR, %struct.GPR* %1679, i32 0, i32 1
  %1681 = getelementptr inbounds %struct.Reg, %struct.Reg* %1680, i32 0, i32 0
  %RAX.i822 = bitcast %union.anon* %1681 to i64*
  %1682 = load i64, i64* %RAX.i822
  %1683 = add i64 %1682, 24
  %1684 = load i64, i64* %PC.i821
  %1685 = add i64 %1684, 4
  store i64 %1685, i64* %PC.i821
  %1686 = inttoptr i64 %1683 to i64*
  %1687 = load i64, i64* %1686
  store i64 %1687, i64* %RAX.i822, align 8
  store %struct.Memory* %loadMem_42a814, %struct.Memory** %MEMORY
  %loadMem_42a818 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1689 = getelementptr inbounds %struct.GPR, %struct.GPR* %1688, i32 0, i32 33
  %1690 = getelementptr inbounds %struct.Reg, %struct.Reg* %1689, i32 0, i32 0
  %PC.i818 = bitcast %union.anon* %1690 to i64*
  %1691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1692 = getelementptr inbounds %struct.GPR, %struct.GPR* %1691, i32 0, i32 5
  %1693 = getelementptr inbounds %struct.Reg, %struct.Reg* %1692, i32 0, i32 0
  %RCX.i819 = bitcast %union.anon* %1693 to i64*
  %1694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1695 = getelementptr inbounds %struct.GPR, %struct.GPR* %1694, i32 0, i32 15
  %1696 = getelementptr inbounds %struct.Reg, %struct.Reg* %1695, i32 0, i32 0
  %RBP.i820 = bitcast %union.anon* %1696 to i64*
  %1697 = load i64, i64* %RBP.i820
  %1698 = sub i64 %1697, 36
  %1699 = load i64, i64* %PC.i818
  %1700 = add i64 %1699, 4
  store i64 %1700, i64* %PC.i818
  %1701 = inttoptr i64 %1698 to i32*
  %1702 = load i32, i32* %1701
  %1703 = sext i32 %1702 to i64
  store i64 %1703, i64* %RCX.i819, align 8
  store %struct.Memory* %loadMem_42a818, %struct.Memory** %MEMORY
  %loadMem_42a81c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1705 = getelementptr inbounds %struct.GPR, %struct.GPR* %1704, i32 0, i32 33
  %1706 = getelementptr inbounds %struct.Reg, %struct.Reg* %1705, i32 0, i32 0
  %PC.i814 = bitcast %union.anon* %1706 to i64*
  %1707 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1708 = getelementptr inbounds %struct.GPR, %struct.GPR* %1707, i32 0, i32 1
  %1709 = getelementptr inbounds %struct.Reg, %struct.Reg* %1708, i32 0, i32 0
  %RAX.i815 = bitcast %union.anon* %1709 to i64*
  %1710 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1711 = getelementptr inbounds %struct.GPR, %struct.GPR* %1710, i32 0, i32 5
  %1712 = getelementptr inbounds %struct.Reg, %struct.Reg* %1711, i32 0, i32 0
  %RCX.i816 = bitcast %union.anon* %1712 to i64*
  %1713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1714 = getelementptr inbounds %struct.GPR, %struct.GPR* %1713, i32 0, i32 7
  %1715 = getelementptr inbounds %struct.Reg, %struct.Reg* %1714, i32 0, i32 0
  %RDX.i817 = bitcast %union.anon* %1715 to i64*
  %1716 = load i64, i64* %RAX.i815
  %1717 = load i64, i64* %RCX.i816
  %1718 = mul i64 %1717, 4
  %1719 = add i64 %1718, %1716
  %1720 = load i64, i64* %PC.i814
  %1721 = add i64 %1720, 3
  store i64 %1721, i64* %PC.i814
  %1722 = inttoptr i64 %1719 to i32*
  %1723 = load i32, i32* %1722
  %1724 = zext i32 %1723 to i64
  store i64 %1724, i64* %RDX.i817, align 8
  store %struct.Memory* %loadMem_42a81c, %struct.Memory** %MEMORY
  %loadMem_42a81f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1725 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1726 = getelementptr inbounds %struct.GPR, %struct.GPR* %1725, i32 0, i32 33
  %1727 = getelementptr inbounds %struct.Reg, %struct.Reg* %1726, i32 0, i32 0
  %PC.i811 = bitcast %union.anon* %1727 to i64*
  %1728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1729 = getelementptr inbounds %struct.GPR, %struct.GPR* %1728, i32 0, i32 1
  %1730 = getelementptr inbounds %struct.Reg, %struct.Reg* %1729, i32 0, i32 0
  %RAX.i812 = bitcast %union.anon* %1730 to i64*
  %1731 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1732 = getelementptr inbounds %struct.GPR, %struct.GPR* %1731, i32 0, i32 15
  %1733 = getelementptr inbounds %struct.Reg, %struct.Reg* %1732, i32 0, i32 0
  %RBP.i813 = bitcast %union.anon* %1733 to i64*
  %1734 = load i64, i64* %RBP.i813
  %1735 = sub i64 %1734, 8
  %1736 = load i64, i64* %PC.i811
  %1737 = add i64 %1736, 4
  store i64 %1737, i64* %PC.i811
  %1738 = inttoptr i64 %1735 to i64*
  %1739 = load i64, i64* %1738
  store i64 %1739, i64* %RAX.i812, align 8
  store %struct.Memory* %loadMem_42a81f, %struct.Memory** %MEMORY
  %loadMem_42a823 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1741 = getelementptr inbounds %struct.GPR, %struct.GPR* %1740, i32 0, i32 33
  %1742 = getelementptr inbounds %struct.Reg, %struct.Reg* %1741, i32 0, i32 0
  %PC.i809 = bitcast %union.anon* %1742 to i64*
  %1743 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1744 = getelementptr inbounds %struct.GPR, %struct.GPR* %1743, i32 0, i32 1
  %1745 = getelementptr inbounds %struct.Reg, %struct.Reg* %1744, i32 0, i32 0
  %RAX.i810 = bitcast %union.anon* %1745 to i64*
  %1746 = load i64, i64* %RAX.i810
  %1747 = add i64 %1746, 24
  %1748 = load i64, i64* %PC.i809
  %1749 = add i64 %1748, 4
  store i64 %1749, i64* %PC.i809
  %1750 = inttoptr i64 %1747 to i64*
  %1751 = load i64, i64* %1750
  store i64 %1751, i64* %RAX.i810, align 8
  store %struct.Memory* %loadMem_42a823, %struct.Memory** %MEMORY
  %loadMem_42a827 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1753 = getelementptr inbounds %struct.GPR, %struct.GPR* %1752, i32 0, i32 33
  %1754 = getelementptr inbounds %struct.Reg, %struct.Reg* %1753, i32 0, i32 0
  %PC.i806 = bitcast %union.anon* %1754 to i64*
  %1755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1756 = getelementptr inbounds %struct.GPR, %struct.GPR* %1755, i32 0, i32 5
  %1757 = getelementptr inbounds %struct.Reg, %struct.Reg* %1756, i32 0, i32 0
  %RCX.i807 = bitcast %union.anon* %1757 to i64*
  %1758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1759 = getelementptr inbounds %struct.GPR, %struct.GPR* %1758, i32 0, i32 15
  %1760 = getelementptr inbounds %struct.Reg, %struct.Reg* %1759, i32 0, i32 0
  %RBP.i808 = bitcast %union.anon* %1760 to i64*
  %1761 = load i64, i64* %RBP.i808
  %1762 = sub i64 %1761, 40
  %1763 = load i64, i64* %PC.i806
  %1764 = add i64 %1763, 4
  store i64 %1764, i64* %PC.i806
  %1765 = inttoptr i64 %1762 to i32*
  %1766 = load i32, i32* %1765
  %1767 = sext i32 %1766 to i64
  store i64 %1767, i64* %RCX.i807, align 8
  store %struct.Memory* %loadMem_42a827, %struct.Memory** %MEMORY
  %loadMem_42a82b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1768 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1769 = getelementptr inbounds %struct.GPR, %struct.GPR* %1768, i32 0, i32 33
  %1770 = getelementptr inbounds %struct.Reg, %struct.Reg* %1769, i32 0, i32 0
  %PC.i802 = bitcast %union.anon* %1770 to i64*
  %1771 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1772 = getelementptr inbounds %struct.GPR, %struct.GPR* %1771, i32 0, i32 7
  %1773 = getelementptr inbounds %struct.Reg, %struct.Reg* %1772, i32 0, i32 0
  %EDX.i803 = bitcast %union.anon* %1773 to i32*
  %1774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1775 = getelementptr inbounds %struct.GPR, %struct.GPR* %1774, i32 0, i32 1
  %1776 = getelementptr inbounds %struct.Reg, %struct.Reg* %1775, i32 0, i32 0
  %RAX.i804 = bitcast %union.anon* %1776 to i64*
  %1777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1778 = getelementptr inbounds %struct.GPR, %struct.GPR* %1777, i32 0, i32 5
  %1779 = getelementptr inbounds %struct.Reg, %struct.Reg* %1778, i32 0, i32 0
  %RCX.i805 = bitcast %union.anon* %1779 to i64*
  %1780 = load i64, i64* %RAX.i804
  %1781 = load i64, i64* %RCX.i805
  %1782 = mul i64 %1781, 4
  %1783 = add i64 %1782, %1780
  %1784 = load i32, i32* %EDX.i803
  %1785 = zext i32 %1784 to i64
  %1786 = load i64, i64* %PC.i802
  %1787 = add i64 %1786, 3
  store i64 %1787, i64* %PC.i802
  %1788 = inttoptr i64 %1783 to i32*
  store i32 %1784, i32* %1788
  store %struct.Memory* %loadMem_42a82b, %struct.Memory** %MEMORY
  %loadMem_42a82e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1790 = getelementptr inbounds %struct.GPR, %struct.GPR* %1789, i32 0, i32 33
  %1791 = getelementptr inbounds %struct.Reg, %struct.Reg* %1790, i32 0, i32 0
  %PC.i799 = bitcast %union.anon* %1791 to i64*
  %1792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1793 = getelementptr inbounds %struct.GPR, %struct.GPR* %1792, i32 0, i32 7
  %1794 = getelementptr inbounds %struct.Reg, %struct.Reg* %1793, i32 0, i32 0
  %RDX.i800 = bitcast %union.anon* %1794 to i64*
  %1795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1796 = getelementptr inbounds %struct.GPR, %struct.GPR* %1795, i32 0, i32 15
  %1797 = getelementptr inbounds %struct.Reg, %struct.Reg* %1796, i32 0, i32 0
  %RBP.i801 = bitcast %union.anon* %1797 to i64*
  %1798 = load i64, i64* %RBP.i801
  %1799 = sub i64 %1798, 36
  %1800 = load i64, i64* %PC.i799
  %1801 = add i64 %1800, 3
  store i64 %1801, i64* %PC.i799
  %1802 = inttoptr i64 %1799 to i32*
  %1803 = load i32, i32* %1802
  %1804 = zext i32 %1803 to i64
  store i64 %1804, i64* %RDX.i800, align 8
  store %struct.Memory* %loadMem_42a82e, %struct.Memory** %MEMORY
  %loadMem_42a831 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1805 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1806 = getelementptr inbounds %struct.GPR, %struct.GPR* %1805, i32 0, i32 33
  %1807 = getelementptr inbounds %struct.Reg, %struct.Reg* %1806, i32 0, i32 0
  %PC.i797 = bitcast %union.anon* %1807 to i64*
  %1808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1809 = getelementptr inbounds %struct.GPR, %struct.GPR* %1808, i32 0, i32 7
  %1810 = getelementptr inbounds %struct.Reg, %struct.Reg* %1809, i32 0, i32 0
  %RDX.i798 = bitcast %union.anon* %1810 to i64*
  %1811 = load i64, i64* %RDX.i798
  %1812 = load i64, i64* %PC.i797
  %1813 = add i64 %1812, 3
  store i64 %1813, i64* %PC.i797
  %1814 = trunc i64 %1811 to i32
  %1815 = add i32 2, %1814
  %1816 = zext i32 %1815 to i64
  store i64 %1816, i64* %RDX.i798, align 8
  %1817 = icmp ult i32 %1815, %1814
  %1818 = icmp ult i32 %1815, 2
  %1819 = or i1 %1817, %1818
  %1820 = zext i1 %1819 to i8
  %1821 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1820, i8* %1821, align 1
  %1822 = and i32 %1815, 255
  %1823 = call i32 @llvm.ctpop.i32(i32 %1822)
  %1824 = trunc i32 %1823 to i8
  %1825 = and i8 %1824, 1
  %1826 = xor i8 %1825, 1
  %1827 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1826, i8* %1827, align 1
  %1828 = xor i64 2, %1811
  %1829 = trunc i64 %1828 to i32
  %1830 = xor i32 %1829, %1815
  %1831 = lshr i32 %1830, 4
  %1832 = trunc i32 %1831 to i8
  %1833 = and i8 %1832, 1
  %1834 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1833, i8* %1834, align 1
  %1835 = icmp eq i32 %1815, 0
  %1836 = zext i1 %1835 to i8
  %1837 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1836, i8* %1837, align 1
  %1838 = lshr i32 %1815, 31
  %1839 = trunc i32 %1838 to i8
  %1840 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1839, i8* %1840, align 1
  %1841 = lshr i32 %1814, 31
  %1842 = xor i32 %1838, %1841
  %1843 = add i32 %1842, %1838
  %1844 = icmp eq i32 %1843, 2
  %1845 = zext i1 %1844 to i8
  %1846 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1845, i8* %1846, align 1
  store %struct.Memory* %loadMem_42a831, %struct.Memory** %MEMORY
  %loadMem_42a834 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1847 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1848 = getelementptr inbounds %struct.GPR, %struct.GPR* %1847, i32 0, i32 33
  %1849 = getelementptr inbounds %struct.Reg, %struct.Reg* %1848, i32 0, i32 0
  %PC.i794 = bitcast %union.anon* %1849 to i64*
  %1850 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1851 = getelementptr inbounds %struct.GPR, %struct.GPR* %1850, i32 0, i32 7
  %1852 = getelementptr inbounds %struct.Reg, %struct.Reg* %1851, i32 0, i32 0
  %EDX.i795 = bitcast %union.anon* %1852 to i32*
  %1853 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1854 = getelementptr inbounds %struct.GPR, %struct.GPR* %1853, i32 0, i32 15
  %1855 = getelementptr inbounds %struct.Reg, %struct.Reg* %1854, i32 0, i32 0
  %RBP.i796 = bitcast %union.anon* %1855 to i64*
  %1856 = load i64, i64* %RBP.i796
  %1857 = sub i64 %1856, 36
  %1858 = load i32, i32* %EDX.i795
  %1859 = zext i32 %1858 to i64
  %1860 = load i64, i64* %PC.i794
  %1861 = add i64 %1860, 3
  store i64 %1861, i64* %PC.i794
  %1862 = inttoptr i64 %1857 to i32*
  store i32 %1858, i32* %1862
  store %struct.Memory* %loadMem_42a834, %struct.Memory** %MEMORY
  %loadMem_42a837 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1864 = getelementptr inbounds %struct.GPR, %struct.GPR* %1863, i32 0, i32 33
  %1865 = getelementptr inbounds %struct.Reg, %struct.Reg* %1864, i32 0, i32 0
  %PC.i791 = bitcast %union.anon* %1865 to i64*
  %1866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1867 = getelementptr inbounds %struct.GPR, %struct.GPR* %1866, i32 0, i32 7
  %1868 = getelementptr inbounds %struct.Reg, %struct.Reg* %1867, i32 0, i32 0
  %RDX.i792 = bitcast %union.anon* %1868 to i64*
  %1869 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1870 = getelementptr inbounds %struct.GPR, %struct.GPR* %1869, i32 0, i32 15
  %1871 = getelementptr inbounds %struct.Reg, %struct.Reg* %1870, i32 0, i32 0
  %RBP.i793 = bitcast %union.anon* %1871 to i64*
  %1872 = load i64, i64* %RBP.i793
  %1873 = sub i64 %1872, 40
  %1874 = load i64, i64* %PC.i791
  %1875 = add i64 %1874, 3
  store i64 %1875, i64* %PC.i791
  %1876 = inttoptr i64 %1873 to i32*
  %1877 = load i32, i32* %1876
  %1878 = zext i32 %1877 to i64
  store i64 %1878, i64* %RDX.i792, align 8
  store %struct.Memory* %loadMem_42a837, %struct.Memory** %MEMORY
  %loadMem_42a83a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1879 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1880 = getelementptr inbounds %struct.GPR, %struct.GPR* %1879, i32 0, i32 33
  %1881 = getelementptr inbounds %struct.Reg, %struct.Reg* %1880, i32 0, i32 0
  %PC.i789 = bitcast %union.anon* %1881 to i64*
  %1882 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1883 = getelementptr inbounds %struct.GPR, %struct.GPR* %1882, i32 0, i32 7
  %1884 = getelementptr inbounds %struct.Reg, %struct.Reg* %1883, i32 0, i32 0
  %RDX.i790 = bitcast %union.anon* %1884 to i64*
  %1885 = load i64, i64* %RDX.i790
  %1886 = load i64, i64* %PC.i789
  %1887 = add i64 %1886, 3
  store i64 %1887, i64* %PC.i789
  %1888 = trunc i64 %1885 to i32
  %1889 = add i32 1, %1888
  %1890 = zext i32 %1889 to i64
  store i64 %1890, i64* %RDX.i790, align 8
  %1891 = icmp ult i32 %1889, %1888
  %1892 = icmp ult i32 %1889, 1
  %1893 = or i1 %1891, %1892
  %1894 = zext i1 %1893 to i8
  %1895 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1894, i8* %1895, align 1
  %1896 = and i32 %1889, 255
  %1897 = call i32 @llvm.ctpop.i32(i32 %1896)
  %1898 = trunc i32 %1897 to i8
  %1899 = and i8 %1898, 1
  %1900 = xor i8 %1899, 1
  %1901 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1900, i8* %1901, align 1
  %1902 = xor i64 1, %1885
  %1903 = trunc i64 %1902 to i32
  %1904 = xor i32 %1903, %1889
  %1905 = lshr i32 %1904, 4
  %1906 = trunc i32 %1905 to i8
  %1907 = and i8 %1906, 1
  %1908 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1907, i8* %1908, align 1
  %1909 = icmp eq i32 %1889, 0
  %1910 = zext i1 %1909 to i8
  %1911 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1910, i8* %1911, align 1
  %1912 = lshr i32 %1889, 31
  %1913 = trunc i32 %1912 to i8
  %1914 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1913, i8* %1914, align 1
  %1915 = lshr i32 %1888, 31
  %1916 = xor i32 %1912, %1915
  %1917 = add i32 %1916, %1912
  %1918 = icmp eq i32 %1917, 2
  %1919 = zext i1 %1918 to i8
  %1920 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1919, i8* %1920, align 1
  store %struct.Memory* %loadMem_42a83a, %struct.Memory** %MEMORY
  %loadMem_42a83d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1921 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1922 = getelementptr inbounds %struct.GPR, %struct.GPR* %1921, i32 0, i32 33
  %1923 = getelementptr inbounds %struct.Reg, %struct.Reg* %1922, i32 0, i32 0
  %PC.i786 = bitcast %union.anon* %1923 to i64*
  %1924 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1925 = getelementptr inbounds %struct.GPR, %struct.GPR* %1924, i32 0, i32 7
  %1926 = getelementptr inbounds %struct.Reg, %struct.Reg* %1925, i32 0, i32 0
  %EDX.i787 = bitcast %union.anon* %1926 to i32*
  %1927 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1928 = getelementptr inbounds %struct.GPR, %struct.GPR* %1927, i32 0, i32 15
  %1929 = getelementptr inbounds %struct.Reg, %struct.Reg* %1928, i32 0, i32 0
  %RBP.i788 = bitcast %union.anon* %1929 to i64*
  %1930 = load i64, i64* %RBP.i788
  %1931 = sub i64 %1930, 40
  %1932 = load i32, i32* %EDX.i787
  %1933 = zext i32 %1932 to i64
  %1934 = load i64, i64* %PC.i786
  %1935 = add i64 %1934, 3
  store i64 %1935, i64* %PC.i786
  %1936 = inttoptr i64 %1931 to i32*
  store i32 %1932, i32* %1936
  store %struct.Memory* %loadMem_42a83d, %struct.Memory** %MEMORY
  %loadMem_42a840 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1938 = getelementptr inbounds %struct.GPR, %struct.GPR* %1937, i32 0, i32 33
  %1939 = getelementptr inbounds %struct.Reg, %struct.Reg* %1938, i32 0, i32 0
  %PC.i783 = bitcast %union.anon* %1939 to i64*
  %1940 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1941 = getelementptr inbounds %struct.GPR, %struct.GPR* %1940, i32 0, i32 7
  %1942 = getelementptr inbounds %struct.Reg, %struct.Reg* %1941, i32 0, i32 0
  %RDX.i784 = bitcast %union.anon* %1942 to i64*
  %1943 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1944 = getelementptr inbounds %struct.GPR, %struct.GPR* %1943, i32 0, i32 15
  %1945 = getelementptr inbounds %struct.Reg, %struct.Reg* %1944, i32 0, i32 0
  %RBP.i785 = bitcast %union.anon* %1945 to i64*
  %1946 = load i64, i64* %RBP.i785
  %1947 = sub i64 %1946, 48
  %1948 = load i64, i64* %PC.i783
  %1949 = add i64 %1948, 3
  store i64 %1949, i64* %PC.i783
  %1950 = inttoptr i64 %1947 to i32*
  %1951 = load i32, i32* %1950
  %1952 = zext i32 %1951 to i64
  store i64 %1952, i64* %RDX.i784, align 8
  store %struct.Memory* %loadMem_42a840, %struct.Memory** %MEMORY
  %loadMem_42a843 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1953 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1954 = getelementptr inbounds %struct.GPR, %struct.GPR* %1953, i32 0, i32 33
  %1955 = getelementptr inbounds %struct.Reg, %struct.Reg* %1954, i32 0, i32 0
  %PC.i781 = bitcast %union.anon* %1955 to i64*
  %1956 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1957 = getelementptr inbounds %struct.GPR, %struct.GPR* %1956, i32 0, i32 7
  %1958 = getelementptr inbounds %struct.Reg, %struct.Reg* %1957, i32 0, i32 0
  %RDX.i782 = bitcast %union.anon* %1958 to i64*
  %1959 = load i64, i64* %RDX.i782
  %1960 = load i64, i64* %PC.i781
  %1961 = add i64 %1960, 3
  store i64 %1961, i64* %PC.i781
  %1962 = trunc i64 %1959 to i32
  %1963 = add i32 1, %1962
  %1964 = zext i32 %1963 to i64
  store i64 %1964, i64* %RDX.i782, align 8
  %1965 = icmp ult i32 %1963, %1962
  %1966 = icmp ult i32 %1963, 1
  %1967 = or i1 %1965, %1966
  %1968 = zext i1 %1967 to i8
  %1969 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1968, i8* %1969, align 1
  %1970 = and i32 %1963, 255
  %1971 = call i32 @llvm.ctpop.i32(i32 %1970)
  %1972 = trunc i32 %1971 to i8
  %1973 = and i8 %1972, 1
  %1974 = xor i8 %1973, 1
  %1975 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1974, i8* %1975, align 1
  %1976 = xor i64 1, %1959
  %1977 = trunc i64 %1976 to i32
  %1978 = xor i32 %1977, %1963
  %1979 = lshr i32 %1978, 4
  %1980 = trunc i32 %1979 to i8
  %1981 = and i8 %1980, 1
  %1982 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1981, i8* %1982, align 1
  %1983 = icmp eq i32 %1963, 0
  %1984 = zext i1 %1983 to i8
  %1985 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1984, i8* %1985, align 1
  %1986 = lshr i32 %1963, 31
  %1987 = trunc i32 %1986 to i8
  %1988 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1987, i8* %1988, align 1
  %1989 = lshr i32 %1962, 31
  %1990 = xor i32 %1986, %1989
  %1991 = add i32 %1990, %1986
  %1992 = icmp eq i32 %1991, 2
  %1993 = zext i1 %1992 to i8
  %1994 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1993, i8* %1994, align 1
  store %struct.Memory* %loadMem_42a843, %struct.Memory** %MEMORY
  %loadMem_42a846 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1996 = getelementptr inbounds %struct.GPR, %struct.GPR* %1995, i32 0, i32 33
  %1997 = getelementptr inbounds %struct.Reg, %struct.Reg* %1996, i32 0, i32 0
  %PC.i778 = bitcast %union.anon* %1997 to i64*
  %1998 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1999 = getelementptr inbounds %struct.GPR, %struct.GPR* %1998, i32 0, i32 7
  %2000 = getelementptr inbounds %struct.Reg, %struct.Reg* %1999, i32 0, i32 0
  %EDX.i779 = bitcast %union.anon* %2000 to i32*
  %2001 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2002 = getelementptr inbounds %struct.GPR, %struct.GPR* %2001, i32 0, i32 15
  %2003 = getelementptr inbounds %struct.Reg, %struct.Reg* %2002, i32 0, i32 0
  %RBP.i780 = bitcast %union.anon* %2003 to i64*
  %2004 = load i64, i64* %RBP.i780
  %2005 = sub i64 %2004, 48
  %2006 = load i32, i32* %EDX.i779
  %2007 = zext i32 %2006 to i64
  %2008 = load i64, i64* %PC.i778
  %2009 = add i64 %2008, 3
  store i64 %2009, i64* %PC.i778
  %2010 = inttoptr i64 %2005 to i32*
  store i32 %2006, i32* %2010
  store %struct.Memory* %loadMem_42a846, %struct.Memory** %MEMORY
  %loadMem_42a849 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2011 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2012 = getelementptr inbounds %struct.GPR, %struct.GPR* %2011, i32 0, i32 33
  %2013 = getelementptr inbounds %struct.Reg, %struct.Reg* %2012, i32 0, i32 0
  %PC.i777 = bitcast %union.anon* %2013 to i64*
  %2014 = load i64, i64* %PC.i777
  %2015 = add i64 %2014, 1063
  %2016 = load i64, i64* %PC.i777
  %2017 = add i64 %2016, 5
  store i64 %2017, i64* %PC.i777
  %2018 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2015, i64* %2018, align 8
  store %struct.Memory* %loadMem_42a849, %struct.Memory** %MEMORY
  br label %block_.L_42ac70

block_.L_42a84e:                                  ; preds = %block_42a7bf, %block_.L_42a7a6
  %loadMem_42a84e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2019 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2020 = getelementptr inbounds %struct.GPR, %struct.GPR* %2019, i32 0, i32 33
  %2021 = getelementptr inbounds %struct.Reg, %struct.Reg* %2020, i32 0, i32 0
  %PC.i774 = bitcast %union.anon* %2021 to i64*
  %2022 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2023 = getelementptr inbounds %struct.GPR, %struct.GPR* %2022, i32 0, i32 1
  %2024 = getelementptr inbounds %struct.Reg, %struct.Reg* %2023, i32 0, i32 0
  %RAX.i775 = bitcast %union.anon* %2024 to i64*
  %2025 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2026 = getelementptr inbounds %struct.GPR, %struct.GPR* %2025, i32 0, i32 15
  %2027 = getelementptr inbounds %struct.Reg, %struct.Reg* %2026, i32 0, i32 0
  %RBP.i776 = bitcast %union.anon* %2027 to i64*
  %2028 = load i64, i64* %RBP.i776
  %2029 = sub i64 %2028, 8
  %2030 = load i64, i64* %PC.i774
  %2031 = add i64 %2030, 4
  store i64 %2031, i64* %PC.i774
  %2032 = inttoptr i64 %2029 to i64*
  %2033 = load i64, i64* %2032
  store i64 %2033, i64* %RAX.i775, align 8
  store %struct.Memory* %loadMem_42a84e, %struct.Memory** %MEMORY
  %loadMem_42a852 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2034 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2035 = getelementptr inbounds %struct.GPR, %struct.GPR* %2034, i32 0, i32 33
  %2036 = getelementptr inbounds %struct.Reg, %struct.Reg* %2035, i32 0, i32 0
  %PC.i772 = bitcast %union.anon* %2036 to i64*
  %2037 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2038 = getelementptr inbounds %struct.GPR, %struct.GPR* %2037, i32 0, i32 1
  %2039 = getelementptr inbounds %struct.Reg, %struct.Reg* %2038, i32 0, i32 0
  %RAX.i773 = bitcast %union.anon* %2039 to i64*
  %2040 = load i64, i64* %RAX.i773
  %2041 = add i64 %2040, 8
  %2042 = load i64, i64* %PC.i772
  %2043 = add i64 %2042, 4
  store i64 %2043, i64* %PC.i772
  %2044 = inttoptr i64 %2041 to i64*
  %2045 = load i64, i64* %2044
  store i64 %2045, i64* %RAX.i773, align 8
  store %struct.Memory* %loadMem_42a852, %struct.Memory** %MEMORY
  %loadMem_42a856 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2046 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2047 = getelementptr inbounds %struct.GPR, %struct.GPR* %2046, i32 0, i32 33
  %2048 = getelementptr inbounds %struct.Reg, %struct.Reg* %2047, i32 0, i32 0
  %PC.i769 = bitcast %union.anon* %2048 to i64*
  %2049 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2050 = getelementptr inbounds %struct.GPR, %struct.GPR* %2049, i32 0, i32 5
  %2051 = getelementptr inbounds %struct.Reg, %struct.Reg* %2050, i32 0, i32 0
  %RCX.i770 = bitcast %union.anon* %2051 to i64*
  %2052 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2053 = getelementptr inbounds %struct.GPR, %struct.GPR* %2052, i32 0, i32 15
  %2054 = getelementptr inbounds %struct.Reg, %struct.Reg* %2053, i32 0, i32 0
  %RBP.i771 = bitcast %union.anon* %2054 to i64*
  %2055 = load i64, i64* %RBP.i771
  %2056 = sub i64 %2055, 36
  %2057 = load i64, i64* %PC.i769
  %2058 = add i64 %2057, 4
  store i64 %2058, i64* %PC.i769
  %2059 = inttoptr i64 %2056 to i32*
  %2060 = load i32, i32* %2059
  %2061 = sext i32 %2060 to i64
  store i64 %2061, i64* %RCX.i770, align 8
  store %struct.Memory* %loadMem_42a856, %struct.Memory** %MEMORY
  %loadMem_42a85a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2062 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2063 = getelementptr inbounds %struct.GPR, %struct.GPR* %2062, i32 0, i32 33
  %2064 = getelementptr inbounds %struct.Reg, %struct.Reg* %2063, i32 0, i32 0
  %PC.i765 = bitcast %union.anon* %2064 to i64*
  %2065 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2066 = getelementptr inbounds %struct.GPR, %struct.GPR* %2065, i32 0, i32 1
  %2067 = getelementptr inbounds %struct.Reg, %struct.Reg* %2066, i32 0, i32 0
  %RAX.i766 = bitcast %union.anon* %2067 to i64*
  %2068 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2069 = getelementptr inbounds %struct.GPR, %struct.GPR* %2068, i32 0, i32 5
  %2070 = getelementptr inbounds %struct.Reg, %struct.Reg* %2069, i32 0, i32 0
  %RCX.i767 = bitcast %union.anon* %2070 to i64*
  %2071 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2072 = getelementptr inbounds %struct.GPR, %struct.GPR* %2071, i32 0, i32 7
  %2073 = getelementptr inbounds %struct.Reg, %struct.Reg* %2072, i32 0, i32 0
  %RDX.i768 = bitcast %union.anon* %2073 to i64*
  %2074 = load i64, i64* %RAX.i766
  %2075 = load i64, i64* %RCX.i767
  %2076 = add i64 %2075, %2074
  %2077 = load i64, i64* %PC.i765
  %2078 = add i64 %2077, 4
  store i64 %2078, i64* %PC.i765
  %2079 = inttoptr i64 %2076 to i8*
  %2080 = load i8, i8* %2079
  %2081 = sext i8 %2080 to i64
  %2082 = and i64 %2081, 4294967295
  store i64 %2082, i64* %RDX.i768, align 8
  store %struct.Memory* %loadMem_42a85a, %struct.Memory** %MEMORY
  %loadMem_42a85e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2083 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2084 = getelementptr inbounds %struct.GPR, %struct.GPR* %2083, i32 0, i32 33
  %2085 = getelementptr inbounds %struct.Reg, %struct.Reg* %2084, i32 0, i32 0
  %PC.i763 = bitcast %union.anon* %2085 to i64*
  %2086 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2087 = getelementptr inbounds %struct.GPR, %struct.GPR* %2086, i32 0, i32 7
  %2088 = getelementptr inbounds %struct.Reg, %struct.Reg* %2087, i32 0, i32 0
  %EDX.i764 = bitcast %union.anon* %2088 to i32*
  %2089 = load i32, i32* %EDX.i764
  %2090 = zext i32 %2089 to i64
  %2091 = load i64, i64* %PC.i763
  %2092 = add i64 %2091, 3
  store i64 %2092, i64* %PC.i763
  %2093 = sub i32 %2089, 3
  %2094 = icmp ult i32 %2089, 3
  %2095 = zext i1 %2094 to i8
  %2096 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2095, i8* %2096, align 1
  %2097 = and i32 %2093, 255
  %2098 = call i32 @llvm.ctpop.i32(i32 %2097)
  %2099 = trunc i32 %2098 to i8
  %2100 = and i8 %2099, 1
  %2101 = xor i8 %2100, 1
  %2102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2101, i8* %2102, align 1
  %2103 = xor i64 3, %2090
  %2104 = trunc i64 %2103 to i32
  %2105 = xor i32 %2104, %2093
  %2106 = lshr i32 %2105, 4
  %2107 = trunc i32 %2106 to i8
  %2108 = and i8 %2107, 1
  %2109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2108, i8* %2109, align 1
  %2110 = icmp eq i32 %2093, 0
  %2111 = zext i1 %2110 to i8
  %2112 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2111, i8* %2112, align 1
  %2113 = lshr i32 %2093, 31
  %2114 = trunc i32 %2113 to i8
  %2115 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2114, i8* %2115, align 1
  %2116 = lshr i32 %2089, 31
  %2117 = xor i32 %2113, %2116
  %2118 = add i32 %2117, %2116
  %2119 = icmp eq i32 %2118, 2
  %2120 = zext i1 %2119 to i8
  %2121 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2120, i8* %2121, align 1
  store %struct.Memory* %loadMem_42a85e, %struct.Memory** %MEMORY
  %loadMem_42a861 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2123 = getelementptr inbounds %struct.GPR, %struct.GPR* %2122, i32 0, i32 33
  %2124 = getelementptr inbounds %struct.Reg, %struct.Reg* %2123, i32 0, i32 0
  %PC.i762 = bitcast %union.anon* %2124 to i64*
  %2125 = load i64, i64* %PC.i762
  %2126 = add i64 %2125, 135
  %2127 = load i64, i64* %PC.i762
  %2128 = add i64 %2127, 6
  %2129 = load i64, i64* %PC.i762
  %2130 = add i64 %2129, 6
  store i64 %2130, i64* %PC.i762
  %2131 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2132 = load i8, i8* %2131, align 1
  %2133 = icmp eq i8 %2132, 0
  %2134 = zext i1 %2133 to i8
  store i8 %2134, i8* %BRANCH_TAKEN, align 1
  %2135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2136 = select i1 %2133, i64 %2126, i64 %2128
  store i64 %2136, i64* %2135, align 8
  store %struct.Memory* %loadMem_42a861, %struct.Memory** %MEMORY
  %loadBr_42a861 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42a861 = icmp eq i8 %loadBr_42a861, 1
  br i1 %cmpBr_42a861, label %block_.L_42a8e8, label %block_42a867

block_42a867:                                     ; preds = %block_.L_42a84e
  %loadMem_42a867 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2138 = getelementptr inbounds %struct.GPR, %struct.GPR* %2137, i32 0, i32 33
  %2139 = getelementptr inbounds %struct.Reg, %struct.Reg* %2138, i32 0, i32 0
  %PC.i759 = bitcast %union.anon* %2139 to i64*
  %2140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2141 = getelementptr inbounds %struct.GPR, %struct.GPR* %2140, i32 0, i32 1
  %2142 = getelementptr inbounds %struct.Reg, %struct.Reg* %2141, i32 0, i32 0
  %RAX.i760 = bitcast %union.anon* %2142 to i64*
  %2143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2144 = getelementptr inbounds %struct.GPR, %struct.GPR* %2143, i32 0, i32 15
  %2145 = getelementptr inbounds %struct.Reg, %struct.Reg* %2144, i32 0, i32 0
  %RBP.i761 = bitcast %union.anon* %2145 to i64*
  %2146 = load i64, i64* %RBP.i761
  %2147 = sub i64 %2146, 8
  %2148 = load i64, i64* %PC.i759
  %2149 = add i64 %2148, 4
  store i64 %2149, i64* %PC.i759
  %2150 = inttoptr i64 %2147 to i64*
  %2151 = load i64, i64* %2150
  store i64 %2151, i64* %RAX.i760, align 8
  store %struct.Memory* %loadMem_42a867, %struct.Memory** %MEMORY
  %loadMem_42a86b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2153 = getelementptr inbounds %struct.GPR, %struct.GPR* %2152, i32 0, i32 33
  %2154 = getelementptr inbounds %struct.Reg, %struct.Reg* %2153, i32 0, i32 0
  %PC.i757 = bitcast %union.anon* %2154 to i64*
  %2155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2156 = getelementptr inbounds %struct.GPR, %struct.GPR* %2155, i32 0, i32 1
  %2157 = getelementptr inbounds %struct.Reg, %struct.Reg* %2156, i32 0, i32 0
  %RAX.i758 = bitcast %union.anon* %2157 to i64*
  %2158 = load i64, i64* %RAX.i758
  %2159 = add i64 %2158, 8
  %2160 = load i64, i64* %PC.i757
  %2161 = add i64 %2160, 4
  store i64 %2161, i64* %PC.i757
  %2162 = inttoptr i64 %2159 to i64*
  %2163 = load i64, i64* %2162
  store i64 %2163, i64* %RAX.i758, align 8
  store %struct.Memory* %loadMem_42a86b, %struct.Memory** %MEMORY
  %loadMem_42a86f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2165 = getelementptr inbounds %struct.GPR, %struct.GPR* %2164, i32 0, i32 33
  %2166 = getelementptr inbounds %struct.Reg, %struct.Reg* %2165, i32 0, i32 0
  %PC.i754 = bitcast %union.anon* %2166 to i64*
  %2167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2168 = getelementptr inbounds %struct.GPR, %struct.GPR* %2167, i32 0, i32 5
  %2169 = getelementptr inbounds %struct.Reg, %struct.Reg* %2168, i32 0, i32 0
  %RCX.i755 = bitcast %union.anon* %2169 to i64*
  %2170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2171 = getelementptr inbounds %struct.GPR, %struct.GPR* %2170, i32 0, i32 15
  %2172 = getelementptr inbounds %struct.Reg, %struct.Reg* %2171, i32 0, i32 0
  %RBP.i756 = bitcast %union.anon* %2172 to i64*
  %2173 = load i64, i64* %RBP.i756
  %2174 = sub i64 %2173, 36
  %2175 = load i64, i64* %PC.i754
  %2176 = add i64 %2175, 3
  store i64 %2176, i64* %PC.i754
  %2177 = inttoptr i64 %2174 to i32*
  %2178 = load i32, i32* %2177
  %2179 = zext i32 %2178 to i64
  store i64 %2179, i64* %RCX.i755, align 8
  store %struct.Memory* %loadMem_42a86f, %struct.Memory** %MEMORY
  %loadMem_42a872 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2181 = getelementptr inbounds %struct.GPR, %struct.GPR* %2180, i32 0, i32 33
  %2182 = getelementptr inbounds %struct.Reg, %struct.Reg* %2181, i32 0, i32 0
  %PC.i752 = bitcast %union.anon* %2182 to i64*
  %2183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2184 = getelementptr inbounds %struct.GPR, %struct.GPR* %2183, i32 0, i32 5
  %2185 = getelementptr inbounds %struct.Reg, %struct.Reg* %2184, i32 0, i32 0
  %RCX.i753 = bitcast %union.anon* %2185 to i64*
  %2186 = load i64, i64* %RCX.i753
  %2187 = load i64, i64* %PC.i752
  %2188 = add i64 %2187, 3
  store i64 %2188, i64* %PC.i752
  %2189 = trunc i64 %2186 to i32
  %2190 = sub i32 %2189, 1
  %2191 = zext i32 %2190 to i64
  store i64 %2191, i64* %RCX.i753, align 8
  %2192 = icmp ult i32 %2189, 1
  %2193 = zext i1 %2192 to i8
  %2194 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2193, i8* %2194, align 1
  %2195 = and i32 %2190, 255
  %2196 = call i32 @llvm.ctpop.i32(i32 %2195)
  %2197 = trunc i32 %2196 to i8
  %2198 = and i8 %2197, 1
  %2199 = xor i8 %2198, 1
  %2200 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2199, i8* %2200, align 1
  %2201 = xor i64 1, %2186
  %2202 = trunc i64 %2201 to i32
  %2203 = xor i32 %2202, %2190
  %2204 = lshr i32 %2203, 4
  %2205 = trunc i32 %2204 to i8
  %2206 = and i8 %2205, 1
  %2207 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2206, i8* %2207, align 1
  %2208 = icmp eq i32 %2190, 0
  %2209 = zext i1 %2208 to i8
  %2210 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2209, i8* %2210, align 1
  %2211 = lshr i32 %2190, 31
  %2212 = trunc i32 %2211 to i8
  %2213 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2212, i8* %2213, align 1
  %2214 = lshr i32 %2189, 31
  %2215 = xor i32 %2211, %2214
  %2216 = add i32 %2215, %2214
  %2217 = icmp eq i32 %2216, 2
  %2218 = zext i1 %2217 to i8
  %2219 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2218, i8* %2219, align 1
  store %struct.Memory* %loadMem_42a872, %struct.Memory** %MEMORY
  %loadMem_42a875 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2221 = getelementptr inbounds %struct.GPR, %struct.GPR* %2220, i32 0, i32 33
  %2222 = getelementptr inbounds %struct.Reg, %struct.Reg* %2221, i32 0, i32 0
  %PC.i749 = bitcast %union.anon* %2222 to i64*
  %2223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2224 = getelementptr inbounds %struct.GPR, %struct.GPR* %2223, i32 0, i32 5
  %2225 = getelementptr inbounds %struct.Reg, %struct.Reg* %2224, i32 0, i32 0
  %ECX.i750 = bitcast %union.anon* %2225 to i32*
  %2226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2227 = getelementptr inbounds %struct.GPR, %struct.GPR* %2226, i32 0, i32 7
  %2228 = getelementptr inbounds %struct.Reg, %struct.Reg* %2227, i32 0, i32 0
  %RDX.i751 = bitcast %union.anon* %2228 to i64*
  %2229 = load i32, i32* %ECX.i750
  %2230 = zext i32 %2229 to i64
  %2231 = load i64, i64* %PC.i749
  %2232 = add i64 %2231, 3
  store i64 %2232, i64* %PC.i749
  %2233 = shl i64 %2230, 32
  %2234 = ashr exact i64 %2233, 32
  store i64 %2234, i64* %RDX.i751, align 8
  store %struct.Memory* %loadMem_42a875, %struct.Memory** %MEMORY
  %loadMem_42a878 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2236 = getelementptr inbounds %struct.GPR, %struct.GPR* %2235, i32 0, i32 33
  %2237 = getelementptr inbounds %struct.Reg, %struct.Reg* %2236, i32 0, i32 0
  %PC.i745 = bitcast %union.anon* %2237 to i64*
  %2238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2239 = getelementptr inbounds %struct.GPR, %struct.GPR* %2238, i32 0, i32 1
  %2240 = getelementptr inbounds %struct.Reg, %struct.Reg* %2239, i32 0, i32 0
  %RAX.i746 = bitcast %union.anon* %2240 to i64*
  %2241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2242 = getelementptr inbounds %struct.GPR, %struct.GPR* %2241, i32 0, i32 5
  %2243 = getelementptr inbounds %struct.Reg, %struct.Reg* %2242, i32 0, i32 0
  %RCX.i747 = bitcast %union.anon* %2243 to i64*
  %2244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2245 = getelementptr inbounds %struct.GPR, %struct.GPR* %2244, i32 0, i32 7
  %2246 = getelementptr inbounds %struct.Reg, %struct.Reg* %2245, i32 0, i32 0
  %RDX.i748 = bitcast %union.anon* %2246 to i64*
  %2247 = load i64, i64* %RAX.i746
  %2248 = load i64, i64* %RDX.i748
  %2249 = add i64 %2248, %2247
  %2250 = load i64, i64* %PC.i745
  %2251 = add i64 %2250, 4
  store i64 %2251, i64* %PC.i745
  %2252 = inttoptr i64 %2249 to i8*
  %2253 = load i8, i8* %2252
  %2254 = sext i8 %2253 to i64
  %2255 = and i64 %2254, 4294967295
  store i64 %2255, i64* %RCX.i747, align 8
  store %struct.Memory* %loadMem_42a878, %struct.Memory** %MEMORY
  %loadMem_42a87c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2257 = getelementptr inbounds %struct.GPR, %struct.GPR* %2256, i32 0, i32 33
  %2258 = getelementptr inbounds %struct.Reg, %struct.Reg* %2257, i32 0, i32 0
  %PC.i743 = bitcast %union.anon* %2258 to i64*
  %2259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2260 = getelementptr inbounds %struct.GPR, %struct.GPR* %2259, i32 0, i32 5
  %2261 = getelementptr inbounds %struct.Reg, %struct.Reg* %2260, i32 0, i32 0
  %ECX.i744 = bitcast %union.anon* %2261 to i32*
  %2262 = load i32, i32* %ECX.i744
  %2263 = zext i32 %2262 to i64
  %2264 = load i64, i64* %PC.i743
  %2265 = add i64 %2264, 3
  store i64 %2265, i64* %PC.i743
  %2266 = sub i32 %2262, 6
  %2267 = icmp ult i32 %2262, 6
  %2268 = zext i1 %2267 to i8
  %2269 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2268, i8* %2269, align 1
  %2270 = and i32 %2266, 255
  %2271 = call i32 @llvm.ctpop.i32(i32 %2270)
  %2272 = trunc i32 %2271 to i8
  %2273 = and i8 %2272, 1
  %2274 = xor i8 %2273, 1
  %2275 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2274, i8* %2275, align 1
  %2276 = xor i64 6, %2263
  %2277 = trunc i64 %2276 to i32
  %2278 = xor i32 %2277, %2266
  %2279 = lshr i32 %2278, 4
  %2280 = trunc i32 %2279 to i8
  %2281 = and i8 %2280, 1
  %2282 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2281, i8* %2282, align 1
  %2283 = icmp eq i32 %2266, 0
  %2284 = zext i1 %2283 to i8
  %2285 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2284, i8* %2285, align 1
  %2286 = lshr i32 %2266, 31
  %2287 = trunc i32 %2286 to i8
  %2288 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2287, i8* %2288, align 1
  %2289 = lshr i32 %2262, 31
  %2290 = xor i32 %2286, %2289
  %2291 = add i32 %2290, %2289
  %2292 = icmp eq i32 %2291, 2
  %2293 = zext i1 %2292 to i8
  %2294 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2293, i8* %2294, align 1
  store %struct.Memory* %loadMem_42a87c, %struct.Memory** %MEMORY
  %loadMem_42a87f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2296 = getelementptr inbounds %struct.GPR, %struct.GPR* %2295, i32 0, i32 33
  %2297 = getelementptr inbounds %struct.Reg, %struct.Reg* %2296, i32 0, i32 0
  %PC.i742 = bitcast %union.anon* %2297 to i64*
  %2298 = load i64, i64* %PC.i742
  %2299 = add i64 %2298, 105
  %2300 = load i64, i64* %PC.i742
  %2301 = add i64 %2300, 6
  %2302 = load i64, i64* %PC.i742
  %2303 = add i64 %2302, 6
  store i64 %2303, i64* %PC.i742
  %2304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2305 = load i8, i8* %2304, align 1
  %2306 = icmp eq i8 %2305, 0
  %2307 = zext i1 %2306 to i8
  store i8 %2307, i8* %BRANCH_TAKEN, align 1
  %2308 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2309 = select i1 %2306, i64 %2299, i64 %2301
  store i64 %2309, i64* %2308, align 8
  store %struct.Memory* %loadMem_42a87f, %struct.Memory** %MEMORY
  %loadBr_42a87f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42a87f = icmp eq i8 %loadBr_42a87f, 1
  br i1 %cmpBr_42a87f, label %block_.L_42a8e8, label %block_42a885

block_42a885:                                     ; preds = %block_42a867
  %loadMem_42a885 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2311 = getelementptr inbounds %struct.GPR, %struct.GPR* %2310, i32 0, i32 33
  %2312 = getelementptr inbounds %struct.Reg, %struct.Reg* %2311, i32 0, i32 0
  %PC.i739 = bitcast %union.anon* %2312 to i64*
  %2313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2314 = getelementptr inbounds %struct.GPR, %struct.GPR* %2313, i32 0, i32 1
  %2315 = getelementptr inbounds %struct.Reg, %struct.Reg* %2314, i32 0, i32 0
  %RAX.i740 = bitcast %union.anon* %2315 to i64*
  %2316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2317 = getelementptr inbounds %struct.GPR, %struct.GPR* %2316, i32 0, i32 15
  %2318 = getelementptr inbounds %struct.Reg, %struct.Reg* %2317, i32 0, i32 0
  %RBP.i741 = bitcast %union.anon* %2318 to i64*
  %2319 = load i64, i64* %RBP.i741
  %2320 = sub i64 %2319, 8
  %2321 = load i64, i64* %PC.i739
  %2322 = add i64 %2321, 4
  store i64 %2322, i64* %PC.i739
  %2323 = inttoptr i64 %2320 to i64*
  %2324 = load i64, i64* %2323
  store i64 %2324, i64* %RAX.i740, align 8
  store %struct.Memory* %loadMem_42a885, %struct.Memory** %MEMORY
  %loadMem_42a889 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2326 = getelementptr inbounds %struct.GPR, %struct.GPR* %2325, i32 0, i32 33
  %2327 = getelementptr inbounds %struct.Reg, %struct.Reg* %2326, i32 0, i32 0
  %PC.i737 = bitcast %union.anon* %2327 to i64*
  %2328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2329 = getelementptr inbounds %struct.GPR, %struct.GPR* %2328, i32 0, i32 1
  %2330 = getelementptr inbounds %struct.Reg, %struct.Reg* %2329, i32 0, i32 0
  %RAX.i738 = bitcast %union.anon* %2330 to i64*
  %2331 = load i64, i64* %RAX.i738
  %2332 = add i64 %2331, 8
  %2333 = load i64, i64* %PC.i737
  %2334 = add i64 %2333, 4
  store i64 %2334, i64* %PC.i737
  %2335 = inttoptr i64 %2332 to i64*
  %2336 = load i64, i64* %2335
  store i64 %2336, i64* %RAX.i738, align 8
  store %struct.Memory* %loadMem_42a889, %struct.Memory** %MEMORY
  %loadMem_42a88d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2338 = getelementptr inbounds %struct.GPR, %struct.GPR* %2337, i32 0, i32 33
  %2339 = getelementptr inbounds %struct.Reg, %struct.Reg* %2338, i32 0, i32 0
  %PC.i734 = bitcast %union.anon* %2339 to i64*
  %2340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2341 = getelementptr inbounds %struct.GPR, %struct.GPR* %2340, i32 0, i32 5
  %2342 = getelementptr inbounds %struct.Reg, %struct.Reg* %2341, i32 0, i32 0
  %RCX.i735 = bitcast %union.anon* %2342 to i64*
  %2343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2344 = getelementptr inbounds %struct.GPR, %struct.GPR* %2343, i32 0, i32 15
  %2345 = getelementptr inbounds %struct.Reg, %struct.Reg* %2344, i32 0, i32 0
  %RBP.i736 = bitcast %union.anon* %2345 to i64*
  %2346 = load i64, i64* %RBP.i736
  %2347 = sub i64 %2346, 40
  %2348 = load i64, i64* %PC.i734
  %2349 = add i64 %2348, 4
  store i64 %2349, i64* %PC.i734
  %2350 = inttoptr i64 %2347 to i32*
  %2351 = load i32, i32* %2350
  %2352 = sext i32 %2351 to i64
  store i64 %2352, i64* %RCX.i735, align 8
  store %struct.Memory* %loadMem_42a88d, %struct.Memory** %MEMORY
  %loadMem_42a891 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2354 = getelementptr inbounds %struct.GPR, %struct.GPR* %2353, i32 0, i32 33
  %2355 = getelementptr inbounds %struct.Reg, %struct.Reg* %2354, i32 0, i32 0
  %PC.i731 = bitcast %union.anon* %2355 to i64*
  %2356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2357 = getelementptr inbounds %struct.GPR, %struct.GPR* %2356, i32 0, i32 1
  %2358 = getelementptr inbounds %struct.Reg, %struct.Reg* %2357, i32 0, i32 0
  %RAX.i732 = bitcast %union.anon* %2358 to i64*
  %2359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2360 = getelementptr inbounds %struct.GPR, %struct.GPR* %2359, i32 0, i32 5
  %2361 = getelementptr inbounds %struct.Reg, %struct.Reg* %2360, i32 0, i32 0
  %RCX.i733 = bitcast %union.anon* %2361 to i64*
  %2362 = load i64, i64* %RAX.i732
  %2363 = load i64, i64* %RCX.i733
  %2364 = add i64 %2363, %2362
  %2365 = load i64, i64* %PC.i731
  %2366 = add i64 %2365, 4
  store i64 %2366, i64* %PC.i731
  %2367 = inttoptr i64 %2364 to i8*
  store i8 1, i8* %2367
  store %struct.Memory* %loadMem_42a891, %struct.Memory** %MEMORY
  %loadMem_42a895 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2369 = getelementptr inbounds %struct.GPR, %struct.GPR* %2368, i32 0, i32 33
  %2370 = getelementptr inbounds %struct.Reg, %struct.Reg* %2369, i32 0, i32 0
  %PC.i728 = bitcast %union.anon* %2370 to i64*
  %2371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2372 = getelementptr inbounds %struct.GPR, %struct.GPR* %2371, i32 0, i32 1
  %2373 = getelementptr inbounds %struct.Reg, %struct.Reg* %2372, i32 0, i32 0
  %RAX.i729 = bitcast %union.anon* %2373 to i64*
  %2374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2375 = getelementptr inbounds %struct.GPR, %struct.GPR* %2374, i32 0, i32 15
  %2376 = getelementptr inbounds %struct.Reg, %struct.Reg* %2375, i32 0, i32 0
  %RBP.i730 = bitcast %union.anon* %2376 to i64*
  %2377 = load i64, i64* %RBP.i730
  %2378 = sub i64 %2377, 8
  %2379 = load i64, i64* %PC.i728
  %2380 = add i64 %2379, 4
  store i64 %2380, i64* %PC.i728
  %2381 = inttoptr i64 %2378 to i64*
  %2382 = load i64, i64* %2381
  store i64 %2382, i64* %RAX.i729, align 8
  store %struct.Memory* %loadMem_42a895, %struct.Memory** %MEMORY
  %loadMem_42a899 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2384 = getelementptr inbounds %struct.GPR, %struct.GPR* %2383, i32 0, i32 33
  %2385 = getelementptr inbounds %struct.Reg, %struct.Reg* %2384, i32 0, i32 0
  %PC.i726 = bitcast %union.anon* %2385 to i64*
  %2386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2387 = getelementptr inbounds %struct.GPR, %struct.GPR* %2386, i32 0, i32 1
  %2388 = getelementptr inbounds %struct.Reg, %struct.Reg* %2387, i32 0, i32 0
  %RAX.i727 = bitcast %union.anon* %2388 to i64*
  %2389 = load i64, i64* %RAX.i727
  %2390 = add i64 %2389, 16
  %2391 = load i64, i64* %PC.i726
  %2392 = add i64 %2391, 4
  store i64 %2392, i64* %PC.i726
  %2393 = inttoptr i64 %2390 to i64*
  %2394 = load i64, i64* %2393
  store i64 %2394, i64* %RAX.i727, align 8
  store %struct.Memory* %loadMem_42a899, %struct.Memory** %MEMORY
  %loadMem_42a89d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2396 = getelementptr inbounds %struct.GPR, %struct.GPR* %2395, i32 0, i32 33
  %2397 = getelementptr inbounds %struct.Reg, %struct.Reg* %2396, i32 0, i32 0
  %PC.i723 = bitcast %union.anon* %2397 to i64*
  %2398 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2399 = getelementptr inbounds %struct.GPR, %struct.GPR* %2398, i32 0, i32 5
  %2400 = getelementptr inbounds %struct.Reg, %struct.Reg* %2399, i32 0, i32 0
  %RCX.i724 = bitcast %union.anon* %2400 to i64*
  %2401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2402 = getelementptr inbounds %struct.GPR, %struct.GPR* %2401, i32 0, i32 15
  %2403 = getelementptr inbounds %struct.Reg, %struct.Reg* %2402, i32 0, i32 0
  %RBP.i725 = bitcast %union.anon* %2403 to i64*
  %2404 = load i64, i64* %RBP.i725
  %2405 = sub i64 %2404, 36
  %2406 = load i64, i64* %PC.i723
  %2407 = add i64 %2406, 4
  store i64 %2407, i64* %PC.i723
  %2408 = inttoptr i64 %2405 to i32*
  %2409 = load i32, i32* %2408
  %2410 = sext i32 %2409 to i64
  store i64 %2410, i64* %RCX.i724, align 8
  store %struct.Memory* %loadMem_42a89d, %struct.Memory** %MEMORY
  %loadMem_42a8a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2412 = getelementptr inbounds %struct.GPR, %struct.GPR* %2411, i32 0, i32 33
  %2413 = getelementptr inbounds %struct.Reg, %struct.Reg* %2412, i32 0, i32 0
  %PC.i719 = bitcast %union.anon* %2413 to i64*
  %2414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2415 = getelementptr inbounds %struct.GPR, %struct.GPR* %2414, i32 0, i32 1
  %2416 = getelementptr inbounds %struct.Reg, %struct.Reg* %2415, i32 0, i32 0
  %RAX.i720 = bitcast %union.anon* %2416 to i64*
  %2417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2418 = getelementptr inbounds %struct.GPR, %struct.GPR* %2417, i32 0, i32 5
  %2419 = getelementptr inbounds %struct.Reg, %struct.Reg* %2418, i32 0, i32 0
  %RCX.i721 = bitcast %union.anon* %2419 to i64*
  %2420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2421 = getelementptr inbounds %struct.GPR, %struct.GPR* %2420, i32 0, i32 7
  %2422 = getelementptr inbounds %struct.Reg, %struct.Reg* %2421, i32 0, i32 0
  %RDX.i722 = bitcast %union.anon* %2422 to i64*
  %2423 = load i64, i64* %RAX.i720
  %2424 = load i64, i64* %RCX.i721
  %2425 = mul i64 %2424, 4
  %2426 = add i64 %2425, %2423
  %2427 = load i64, i64* %PC.i719
  %2428 = add i64 %2427, 3
  store i64 %2428, i64* %PC.i719
  %2429 = inttoptr i64 %2426 to i32*
  %2430 = load i32, i32* %2429
  %2431 = zext i32 %2430 to i64
  store i64 %2431, i64* %RDX.i722, align 8
  store %struct.Memory* %loadMem_42a8a1, %struct.Memory** %MEMORY
  %loadMem_42a8a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2433 = getelementptr inbounds %struct.GPR, %struct.GPR* %2432, i32 0, i32 33
  %2434 = getelementptr inbounds %struct.Reg, %struct.Reg* %2433, i32 0, i32 0
  %PC.i716 = bitcast %union.anon* %2434 to i64*
  %2435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2436 = getelementptr inbounds %struct.GPR, %struct.GPR* %2435, i32 0, i32 1
  %2437 = getelementptr inbounds %struct.Reg, %struct.Reg* %2436, i32 0, i32 0
  %RAX.i717 = bitcast %union.anon* %2437 to i64*
  %2438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2439 = getelementptr inbounds %struct.GPR, %struct.GPR* %2438, i32 0, i32 15
  %2440 = getelementptr inbounds %struct.Reg, %struct.Reg* %2439, i32 0, i32 0
  %RBP.i718 = bitcast %union.anon* %2440 to i64*
  %2441 = load i64, i64* %RBP.i718
  %2442 = sub i64 %2441, 8
  %2443 = load i64, i64* %PC.i716
  %2444 = add i64 %2443, 4
  store i64 %2444, i64* %PC.i716
  %2445 = inttoptr i64 %2442 to i64*
  %2446 = load i64, i64* %2445
  store i64 %2446, i64* %RAX.i717, align 8
  store %struct.Memory* %loadMem_42a8a4, %struct.Memory** %MEMORY
  %loadMem_42a8a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2447 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2448 = getelementptr inbounds %struct.GPR, %struct.GPR* %2447, i32 0, i32 33
  %2449 = getelementptr inbounds %struct.Reg, %struct.Reg* %2448, i32 0, i32 0
  %PC.i714 = bitcast %union.anon* %2449 to i64*
  %2450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2451 = getelementptr inbounds %struct.GPR, %struct.GPR* %2450, i32 0, i32 1
  %2452 = getelementptr inbounds %struct.Reg, %struct.Reg* %2451, i32 0, i32 0
  %RAX.i715 = bitcast %union.anon* %2452 to i64*
  %2453 = load i64, i64* %RAX.i715
  %2454 = add i64 %2453, 16
  %2455 = load i64, i64* %PC.i714
  %2456 = add i64 %2455, 4
  store i64 %2456, i64* %PC.i714
  %2457 = inttoptr i64 %2454 to i64*
  %2458 = load i64, i64* %2457
  store i64 %2458, i64* %RAX.i715, align 8
  store %struct.Memory* %loadMem_42a8a8, %struct.Memory** %MEMORY
  %loadMem_42a8ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %2459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2460 = getelementptr inbounds %struct.GPR, %struct.GPR* %2459, i32 0, i32 33
  %2461 = getelementptr inbounds %struct.Reg, %struct.Reg* %2460, i32 0, i32 0
  %PC.i711 = bitcast %union.anon* %2461 to i64*
  %2462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2463 = getelementptr inbounds %struct.GPR, %struct.GPR* %2462, i32 0, i32 5
  %2464 = getelementptr inbounds %struct.Reg, %struct.Reg* %2463, i32 0, i32 0
  %RCX.i712 = bitcast %union.anon* %2464 to i64*
  %2465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2466 = getelementptr inbounds %struct.GPR, %struct.GPR* %2465, i32 0, i32 15
  %2467 = getelementptr inbounds %struct.Reg, %struct.Reg* %2466, i32 0, i32 0
  %RBP.i713 = bitcast %union.anon* %2467 to i64*
  %2468 = load i64, i64* %RBP.i713
  %2469 = sub i64 %2468, 40
  %2470 = load i64, i64* %PC.i711
  %2471 = add i64 %2470, 4
  store i64 %2471, i64* %PC.i711
  %2472 = inttoptr i64 %2469 to i32*
  %2473 = load i32, i32* %2472
  %2474 = sext i32 %2473 to i64
  store i64 %2474, i64* %RCX.i712, align 8
  store %struct.Memory* %loadMem_42a8ac, %struct.Memory** %MEMORY
  %loadMem_42a8b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2476 = getelementptr inbounds %struct.GPR, %struct.GPR* %2475, i32 0, i32 33
  %2477 = getelementptr inbounds %struct.Reg, %struct.Reg* %2476, i32 0, i32 0
  %PC.i707 = bitcast %union.anon* %2477 to i64*
  %2478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2479 = getelementptr inbounds %struct.GPR, %struct.GPR* %2478, i32 0, i32 7
  %2480 = getelementptr inbounds %struct.Reg, %struct.Reg* %2479, i32 0, i32 0
  %EDX.i708 = bitcast %union.anon* %2480 to i32*
  %2481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2482 = getelementptr inbounds %struct.GPR, %struct.GPR* %2481, i32 0, i32 1
  %2483 = getelementptr inbounds %struct.Reg, %struct.Reg* %2482, i32 0, i32 0
  %RAX.i709 = bitcast %union.anon* %2483 to i64*
  %2484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2485 = getelementptr inbounds %struct.GPR, %struct.GPR* %2484, i32 0, i32 5
  %2486 = getelementptr inbounds %struct.Reg, %struct.Reg* %2485, i32 0, i32 0
  %RCX.i710 = bitcast %union.anon* %2486 to i64*
  %2487 = load i64, i64* %RAX.i709
  %2488 = load i64, i64* %RCX.i710
  %2489 = mul i64 %2488, 4
  %2490 = add i64 %2489, %2487
  %2491 = load i32, i32* %EDX.i708
  %2492 = zext i32 %2491 to i64
  %2493 = load i64, i64* %PC.i707
  %2494 = add i64 %2493, 3
  store i64 %2494, i64* %PC.i707
  %2495 = inttoptr i64 %2490 to i32*
  store i32 %2491, i32* %2495
  store %struct.Memory* %loadMem_42a8b0, %struct.Memory** %MEMORY
  %loadMem_42a8b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2497 = getelementptr inbounds %struct.GPR, %struct.GPR* %2496, i32 0, i32 33
  %2498 = getelementptr inbounds %struct.Reg, %struct.Reg* %2497, i32 0, i32 0
  %PC.i704 = bitcast %union.anon* %2498 to i64*
  %2499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2500 = getelementptr inbounds %struct.GPR, %struct.GPR* %2499, i32 0, i32 1
  %2501 = getelementptr inbounds %struct.Reg, %struct.Reg* %2500, i32 0, i32 0
  %RAX.i705 = bitcast %union.anon* %2501 to i64*
  %2502 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2503 = getelementptr inbounds %struct.GPR, %struct.GPR* %2502, i32 0, i32 15
  %2504 = getelementptr inbounds %struct.Reg, %struct.Reg* %2503, i32 0, i32 0
  %RBP.i706 = bitcast %union.anon* %2504 to i64*
  %2505 = load i64, i64* %RBP.i706
  %2506 = sub i64 %2505, 8
  %2507 = load i64, i64* %PC.i704
  %2508 = add i64 %2507, 4
  store i64 %2508, i64* %PC.i704
  %2509 = inttoptr i64 %2506 to i64*
  %2510 = load i64, i64* %2509
  store i64 %2510, i64* %RAX.i705, align 8
  store %struct.Memory* %loadMem_42a8b3, %struct.Memory** %MEMORY
  %loadMem_42a8b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2511 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2512 = getelementptr inbounds %struct.GPR, %struct.GPR* %2511, i32 0, i32 33
  %2513 = getelementptr inbounds %struct.Reg, %struct.Reg* %2512, i32 0, i32 0
  %PC.i702 = bitcast %union.anon* %2513 to i64*
  %2514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2515 = getelementptr inbounds %struct.GPR, %struct.GPR* %2514, i32 0, i32 1
  %2516 = getelementptr inbounds %struct.Reg, %struct.Reg* %2515, i32 0, i32 0
  %RAX.i703 = bitcast %union.anon* %2516 to i64*
  %2517 = load i64, i64* %RAX.i703
  %2518 = add i64 %2517, 24
  %2519 = load i64, i64* %PC.i702
  %2520 = add i64 %2519, 4
  store i64 %2520, i64* %PC.i702
  %2521 = inttoptr i64 %2518 to i64*
  %2522 = load i64, i64* %2521
  store i64 %2522, i64* %RAX.i703, align 8
  store %struct.Memory* %loadMem_42a8b7, %struct.Memory** %MEMORY
  %loadMem_42a8bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2524 = getelementptr inbounds %struct.GPR, %struct.GPR* %2523, i32 0, i32 33
  %2525 = getelementptr inbounds %struct.Reg, %struct.Reg* %2524, i32 0, i32 0
  %PC.i699 = bitcast %union.anon* %2525 to i64*
  %2526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2527 = getelementptr inbounds %struct.GPR, %struct.GPR* %2526, i32 0, i32 5
  %2528 = getelementptr inbounds %struct.Reg, %struct.Reg* %2527, i32 0, i32 0
  %RCX.i700 = bitcast %union.anon* %2528 to i64*
  %2529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2530 = getelementptr inbounds %struct.GPR, %struct.GPR* %2529, i32 0, i32 15
  %2531 = getelementptr inbounds %struct.Reg, %struct.Reg* %2530, i32 0, i32 0
  %RBP.i701 = bitcast %union.anon* %2531 to i64*
  %2532 = load i64, i64* %RBP.i701
  %2533 = sub i64 %2532, 36
  %2534 = load i64, i64* %PC.i699
  %2535 = add i64 %2534, 4
  store i64 %2535, i64* %PC.i699
  %2536 = inttoptr i64 %2533 to i32*
  %2537 = load i32, i32* %2536
  %2538 = sext i32 %2537 to i64
  store i64 %2538, i64* %RCX.i700, align 8
  store %struct.Memory* %loadMem_42a8bb, %struct.Memory** %MEMORY
  %loadMem_42a8bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %2539 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2540 = getelementptr inbounds %struct.GPR, %struct.GPR* %2539, i32 0, i32 33
  %2541 = getelementptr inbounds %struct.Reg, %struct.Reg* %2540, i32 0, i32 0
  %PC.i695 = bitcast %union.anon* %2541 to i64*
  %2542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2543 = getelementptr inbounds %struct.GPR, %struct.GPR* %2542, i32 0, i32 1
  %2544 = getelementptr inbounds %struct.Reg, %struct.Reg* %2543, i32 0, i32 0
  %RAX.i696 = bitcast %union.anon* %2544 to i64*
  %2545 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2546 = getelementptr inbounds %struct.GPR, %struct.GPR* %2545, i32 0, i32 5
  %2547 = getelementptr inbounds %struct.Reg, %struct.Reg* %2546, i32 0, i32 0
  %RCX.i697 = bitcast %union.anon* %2547 to i64*
  %2548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2549 = getelementptr inbounds %struct.GPR, %struct.GPR* %2548, i32 0, i32 7
  %2550 = getelementptr inbounds %struct.Reg, %struct.Reg* %2549, i32 0, i32 0
  %RDX.i698 = bitcast %union.anon* %2550 to i64*
  %2551 = load i64, i64* %RAX.i696
  %2552 = load i64, i64* %RCX.i697
  %2553 = mul i64 %2552, 4
  %2554 = add i64 %2553, %2551
  %2555 = load i64, i64* %PC.i695
  %2556 = add i64 %2555, 3
  store i64 %2556, i64* %PC.i695
  %2557 = inttoptr i64 %2554 to i32*
  %2558 = load i32, i32* %2557
  %2559 = zext i32 %2558 to i64
  store i64 %2559, i64* %RDX.i698, align 8
  store %struct.Memory* %loadMem_42a8bf, %struct.Memory** %MEMORY
  %loadMem_42a8c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2561 = getelementptr inbounds %struct.GPR, %struct.GPR* %2560, i32 0, i32 33
  %2562 = getelementptr inbounds %struct.Reg, %struct.Reg* %2561, i32 0, i32 0
  %PC.i692 = bitcast %union.anon* %2562 to i64*
  %2563 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2564 = getelementptr inbounds %struct.GPR, %struct.GPR* %2563, i32 0, i32 1
  %2565 = getelementptr inbounds %struct.Reg, %struct.Reg* %2564, i32 0, i32 0
  %RAX.i693 = bitcast %union.anon* %2565 to i64*
  %2566 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2567 = getelementptr inbounds %struct.GPR, %struct.GPR* %2566, i32 0, i32 15
  %2568 = getelementptr inbounds %struct.Reg, %struct.Reg* %2567, i32 0, i32 0
  %RBP.i694 = bitcast %union.anon* %2568 to i64*
  %2569 = load i64, i64* %RBP.i694
  %2570 = sub i64 %2569, 8
  %2571 = load i64, i64* %PC.i692
  %2572 = add i64 %2571, 4
  store i64 %2572, i64* %PC.i692
  %2573 = inttoptr i64 %2570 to i64*
  %2574 = load i64, i64* %2573
  store i64 %2574, i64* %RAX.i693, align 8
  store %struct.Memory* %loadMem_42a8c2, %struct.Memory** %MEMORY
  %loadMem_42a8c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2576 = getelementptr inbounds %struct.GPR, %struct.GPR* %2575, i32 0, i32 33
  %2577 = getelementptr inbounds %struct.Reg, %struct.Reg* %2576, i32 0, i32 0
  %PC.i690 = bitcast %union.anon* %2577 to i64*
  %2578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2579 = getelementptr inbounds %struct.GPR, %struct.GPR* %2578, i32 0, i32 1
  %2580 = getelementptr inbounds %struct.Reg, %struct.Reg* %2579, i32 0, i32 0
  %RAX.i691 = bitcast %union.anon* %2580 to i64*
  %2581 = load i64, i64* %RAX.i691
  %2582 = add i64 %2581, 24
  %2583 = load i64, i64* %PC.i690
  %2584 = add i64 %2583, 4
  store i64 %2584, i64* %PC.i690
  %2585 = inttoptr i64 %2582 to i64*
  %2586 = load i64, i64* %2585
  store i64 %2586, i64* %RAX.i691, align 8
  store %struct.Memory* %loadMem_42a8c6, %struct.Memory** %MEMORY
  %loadMem_42a8ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %2587 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2588 = getelementptr inbounds %struct.GPR, %struct.GPR* %2587, i32 0, i32 33
  %2589 = getelementptr inbounds %struct.Reg, %struct.Reg* %2588, i32 0, i32 0
  %PC.i687 = bitcast %union.anon* %2589 to i64*
  %2590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2591 = getelementptr inbounds %struct.GPR, %struct.GPR* %2590, i32 0, i32 5
  %2592 = getelementptr inbounds %struct.Reg, %struct.Reg* %2591, i32 0, i32 0
  %RCX.i688 = bitcast %union.anon* %2592 to i64*
  %2593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2594 = getelementptr inbounds %struct.GPR, %struct.GPR* %2593, i32 0, i32 15
  %2595 = getelementptr inbounds %struct.Reg, %struct.Reg* %2594, i32 0, i32 0
  %RBP.i689 = bitcast %union.anon* %2595 to i64*
  %2596 = load i64, i64* %RBP.i689
  %2597 = sub i64 %2596, 40
  %2598 = load i64, i64* %PC.i687
  %2599 = add i64 %2598, 4
  store i64 %2599, i64* %PC.i687
  %2600 = inttoptr i64 %2597 to i32*
  %2601 = load i32, i32* %2600
  %2602 = sext i32 %2601 to i64
  store i64 %2602, i64* %RCX.i688, align 8
  store %struct.Memory* %loadMem_42a8ca, %struct.Memory** %MEMORY
  %loadMem_42a8ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %2603 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2604 = getelementptr inbounds %struct.GPR, %struct.GPR* %2603, i32 0, i32 33
  %2605 = getelementptr inbounds %struct.Reg, %struct.Reg* %2604, i32 0, i32 0
  %PC.i683 = bitcast %union.anon* %2605 to i64*
  %2606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2607 = getelementptr inbounds %struct.GPR, %struct.GPR* %2606, i32 0, i32 7
  %2608 = getelementptr inbounds %struct.Reg, %struct.Reg* %2607, i32 0, i32 0
  %EDX.i684 = bitcast %union.anon* %2608 to i32*
  %2609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2610 = getelementptr inbounds %struct.GPR, %struct.GPR* %2609, i32 0, i32 1
  %2611 = getelementptr inbounds %struct.Reg, %struct.Reg* %2610, i32 0, i32 0
  %RAX.i685 = bitcast %union.anon* %2611 to i64*
  %2612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2613 = getelementptr inbounds %struct.GPR, %struct.GPR* %2612, i32 0, i32 5
  %2614 = getelementptr inbounds %struct.Reg, %struct.Reg* %2613, i32 0, i32 0
  %RCX.i686 = bitcast %union.anon* %2614 to i64*
  %2615 = load i64, i64* %RAX.i685
  %2616 = load i64, i64* %RCX.i686
  %2617 = mul i64 %2616, 4
  %2618 = add i64 %2617, %2615
  %2619 = load i32, i32* %EDX.i684
  %2620 = zext i32 %2619 to i64
  %2621 = load i64, i64* %PC.i683
  %2622 = add i64 %2621, 3
  store i64 %2622, i64* %PC.i683
  %2623 = inttoptr i64 %2618 to i32*
  store i32 %2619, i32* %2623
  store %struct.Memory* %loadMem_42a8ce, %struct.Memory** %MEMORY
  %loadMem_42a8d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2625 = getelementptr inbounds %struct.GPR, %struct.GPR* %2624, i32 0, i32 33
  %2626 = getelementptr inbounds %struct.Reg, %struct.Reg* %2625, i32 0, i32 0
  %PC.i680 = bitcast %union.anon* %2626 to i64*
  %2627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2628 = getelementptr inbounds %struct.GPR, %struct.GPR* %2627, i32 0, i32 7
  %2629 = getelementptr inbounds %struct.Reg, %struct.Reg* %2628, i32 0, i32 0
  %RDX.i681 = bitcast %union.anon* %2629 to i64*
  %2630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2631 = getelementptr inbounds %struct.GPR, %struct.GPR* %2630, i32 0, i32 15
  %2632 = getelementptr inbounds %struct.Reg, %struct.Reg* %2631, i32 0, i32 0
  %RBP.i682 = bitcast %union.anon* %2632 to i64*
  %2633 = load i64, i64* %RBP.i682
  %2634 = sub i64 %2633, 36
  %2635 = load i64, i64* %PC.i680
  %2636 = add i64 %2635, 3
  store i64 %2636, i64* %PC.i680
  %2637 = inttoptr i64 %2634 to i32*
  %2638 = load i32, i32* %2637
  %2639 = zext i32 %2638 to i64
  store i64 %2639, i64* %RDX.i681, align 8
  store %struct.Memory* %loadMem_42a8d1, %struct.Memory** %MEMORY
  %loadMem_42a8d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2641 = getelementptr inbounds %struct.GPR, %struct.GPR* %2640, i32 0, i32 33
  %2642 = getelementptr inbounds %struct.Reg, %struct.Reg* %2641, i32 0, i32 0
  %PC.i678 = bitcast %union.anon* %2642 to i64*
  %2643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2644 = getelementptr inbounds %struct.GPR, %struct.GPR* %2643, i32 0, i32 7
  %2645 = getelementptr inbounds %struct.Reg, %struct.Reg* %2644, i32 0, i32 0
  %RDX.i679 = bitcast %union.anon* %2645 to i64*
  %2646 = load i64, i64* %RDX.i679
  %2647 = load i64, i64* %PC.i678
  %2648 = add i64 %2647, 3
  store i64 %2648, i64* %PC.i678
  %2649 = trunc i64 %2646 to i32
  %2650 = add i32 1, %2649
  %2651 = zext i32 %2650 to i64
  store i64 %2651, i64* %RDX.i679, align 8
  %2652 = icmp ult i32 %2650, %2649
  %2653 = icmp ult i32 %2650, 1
  %2654 = or i1 %2652, %2653
  %2655 = zext i1 %2654 to i8
  %2656 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2655, i8* %2656, align 1
  %2657 = and i32 %2650, 255
  %2658 = call i32 @llvm.ctpop.i32(i32 %2657)
  %2659 = trunc i32 %2658 to i8
  %2660 = and i8 %2659, 1
  %2661 = xor i8 %2660, 1
  %2662 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2661, i8* %2662, align 1
  %2663 = xor i64 1, %2646
  %2664 = trunc i64 %2663 to i32
  %2665 = xor i32 %2664, %2650
  %2666 = lshr i32 %2665, 4
  %2667 = trunc i32 %2666 to i8
  %2668 = and i8 %2667, 1
  %2669 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2668, i8* %2669, align 1
  %2670 = icmp eq i32 %2650, 0
  %2671 = zext i1 %2670 to i8
  %2672 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2671, i8* %2672, align 1
  %2673 = lshr i32 %2650, 31
  %2674 = trunc i32 %2673 to i8
  %2675 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2674, i8* %2675, align 1
  %2676 = lshr i32 %2649, 31
  %2677 = xor i32 %2673, %2676
  %2678 = add i32 %2677, %2673
  %2679 = icmp eq i32 %2678, 2
  %2680 = zext i1 %2679 to i8
  %2681 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2680, i8* %2681, align 1
  store %struct.Memory* %loadMem_42a8d4, %struct.Memory** %MEMORY
  %loadMem_42a8d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2682 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2683 = getelementptr inbounds %struct.GPR, %struct.GPR* %2682, i32 0, i32 33
  %2684 = getelementptr inbounds %struct.Reg, %struct.Reg* %2683, i32 0, i32 0
  %PC.i675 = bitcast %union.anon* %2684 to i64*
  %2685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2686 = getelementptr inbounds %struct.GPR, %struct.GPR* %2685, i32 0, i32 7
  %2687 = getelementptr inbounds %struct.Reg, %struct.Reg* %2686, i32 0, i32 0
  %EDX.i676 = bitcast %union.anon* %2687 to i32*
  %2688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2689 = getelementptr inbounds %struct.GPR, %struct.GPR* %2688, i32 0, i32 15
  %2690 = getelementptr inbounds %struct.Reg, %struct.Reg* %2689, i32 0, i32 0
  %RBP.i677 = bitcast %union.anon* %2690 to i64*
  %2691 = load i64, i64* %RBP.i677
  %2692 = sub i64 %2691, 36
  %2693 = load i32, i32* %EDX.i676
  %2694 = zext i32 %2693 to i64
  %2695 = load i64, i64* %PC.i675
  %2696 = add i64 %2695, 3
  store i64 %2696, i64* %PC.i675
  %2697 = inttoptr i64 %2692 to i32*
  store i32 %2693, i32* %2697
  store %struct.Memory* %loadMem_42a8d7, %struct.Memory** %MEMORY
  %loadMem_42a8da = load %struct.Memory*, %struct.Memory** %MEMORY
  %2698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2699 = getelementptr inbounds %struct.GPR, %struct.GPR* %2698, i32 0, i32 33
  %2700 = getelementptr inbounds %struct.Reg, %struct.Reg* %2699, i32 0, i32 0
  %PC.i672 = bitcast %union.anon* %2700 to i64*
  %2701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2702 = getelementptr inbounds %struct.GPR, %struct.GPR* %2701, i32 0, i32 7
  %2703 = getelementptr inbounds %struct.Reg, %struct.Reg* %2702, i32 0, i32 0
  %RDX.i673 = bitcast %union.anon* %2703 to i64*
  %2704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2705 = getelementptr inbounds %struct.GPR, %struct.GPR* %2704, i32 0, i32 15
  %2706 = getelementptr inbounds %struct.Reg, %struct.Reg* %2705, i32 0, i32 0
  %RBP.i674 = bitcast %union.anon* %2706 to i64*
  %2707 = load i64, i64* %RBP.i674
  %2708 = sub i64 %2707, 40
  %2709 = load i64, i64* %PC.i672
  %2710 = add i64 %2709, 3
  store i64 %2710, i64* %PC.i672
  %2711 = inttoptr i64 %2708 to i32*
  %2712 = load i32, i32* %2711
  %2713 = zext i32 %2712 to i64
  store i64 %2713, i64* %RDX.i673, align 8
  store %struct.Memory* %loadMem_42a8da, %struct.Memory** %MEMORY
  %loadMem_42a8dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2715 = getelementptr inbounds %struct.GPR, %struct.GPR* %2714, i32 0, i32 33
  %2716 = getelementptr inbounds %struct.Reg, %struct.Reg* %2715, i32 0, i32 0
  %PC.i670 = bitcast %union.anon* %2716 to i64*
  %2717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2718 = getelementptr inbounds %struct.GPR, %struct.GPR* %2717, i32 0, i32 7
  %2719 = getelementptr inbounds %struct.Reg, %struct.Reg* %2718, i32 0, i32 0
  %RDX.i671 = bitcast %union.anon* %2719 to i64*
  %2720 = load i64, i64* %RDX.i671
  %2721 = load i64, i64* %PC.i670
  %2722 = add i64 %2721, 3
  store i64 %2722, i64* %PC.i670
  %2723 = trunc i64 %2720 to i32
  %2724 = add i32 1, %2723
  %2725 = zext i32 %2724 to i64
  store i64 %2725, i64* %RDX.i671, align 8
  %2726 = icmp ult i32 %2724, %2723
  %2727 = icmp ult i32 %2724, 1
  %2728 = or i1 %2726, %2727
  %2729 = zext i1 %2728 to i8
  %2730 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2729, i8* %2730, align 1
  %2731 = and i32 %2724, 255
  %2732 = call i32 @llvm.ctpop.i32(i32 %2731)
  %2733 = trunc i32 %2732 to i8
  %2734 = and i8 %2733, 1
  %2735 = xor i8 %2734, 1
  %2736 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2735, i8* %2736, align 1
  %2737 = xor i64 1, %2720
  %2738 = trunc i64 %2737 to i32
  %2739 = xor i32 %2738, %2724
  %2740 = lshr i32 %2739, 4
  %2741 = trunc i32 %2740 to i8
  %2742 = and i8 %2741, 1
  %2743 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2742, i8* %2743, align 1
  %2744 = icmp eq i32 %2724, 0
  %2745 = zext i1 %2744 to i8
  %2746 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2745, i8* %2746, align 1
  %2747 = lshr i32 %2724, 31
  %2748 = trunc i32 %2747 to i8
  %2749 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2748, i8* %2749, align 1
  %2750 = lshr i32 %2723, 31
  %2751 = xor i32 %2747, %2750
  %2752 = add i32 %2751, %2747
  %2753 = icmp eq i32 %2752, 2
  %2754 = zext i1 %2753 to i8
  %2755 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2754, i8* %2755, align 1
  store %struct.Memory* %loadMem_42a8dd, %struct.Memory** %MEMORY
  %loadMem_42a8e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2756 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2757 = getelementptr inbounds %struct.GPR, %struct.GPR* %2756, i32 0, i32 33
  %2758 = getelementptr inbounds %struct.Reg, %struct.Reg* %2757, i32 0, i32 0
  %PC.i667 = bitcast %union.anon* %2758 to i64*
  %2759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2760 = getelementptr inbounds %struct.GPR, %struct.GPR* %2759, i32 0, i32 7
  %2761 = getelementptr inbounds %struct.Reg, %struct.Reg* %2760, i32 0, i32 0
  %EDX.i668 = bitcast %union.anon* %2761 to i32*
  %2762 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2763 = getelementptr inbounds %struct.GPR, %struct.GPR* %2762, i32 0, i32 15
  %2764 = getelementptr inbounds %struct.Reg, %struct.Reg* %2763, i32 0, i32 0
  %RBP.i669 = bitcast %union.anon* %2764 to i64*
  %2765 = load i64, i64* %RBP.i669
  %2766 = sub i64 %2765, 40
  %2767 = load i32, i32* %EDX.i668
  %2768 = zext i32 %2767 to i64
  %2769 = load i64, i64* %PC.i667
  %2770 = add i64 %2769, 3
  store i64 %2770, i64* %PC.i667
  %2771 = inttoptr i64 %2766 to i32*
  store i32 %2767, i32* %2771
  store %struct.Memory* %loadMem_42a8e0, %struct.Memory** %MEMORY
  %loadMem_42a8e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2772 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2773 = getelementptr inbounds %struct.GPR, %struct.GPR* %2772, i32 0, i32 33
  %2774 = getelementptr inbounds %struct.Reg, %struct.Reg* %2773, i32 0, i32 0
  %PC.i666 = bitcast %union.anon* %2774 to i64*
  %2775 = load i64, i64* %PC.i666
  %2776 = add i64 %2775, 904
  %2777 = load i64, i64* %PC.i666
  %2778 = add i64 %2777, 5
  store i64 %2778, i64* %PC.i666
  %2779 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2776, i64* %2779, align 8
  store %struct.Memory* %loadMem_42a8e3, %struct.Memory** %MEMORY
  br label %block_.L_42ac6b

block_.L_42a8e8:                                  ; preds = %block_42a867, %block_.L_42a84e
  %loadMem_42a8e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2780 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2781 = getelementptr inbounds %struct.GPR, %struct.GPR* %2780, i32 0, i32 33
  %2782 = getelementptr inbounds %struct.Reg, %struct.Reg* %2781, i32 0, i32 0
  %PC.i663 = bitcast %union.anon* %2782 to i64*
  %2783 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2784 = getelementptr inbounds %struct.GPR, %struct.GPR* %2783, i32 0, i32 1
  %2785 = getelementptr inbounds %struct.Reg, %struct.Reg* %2784, i32 0, i32 0
  %RAX.i664 = bitcast %union.anon* %2785 to i64*
  %2786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2787 = getelementptr inbounds %struct.GPR, %struct.GPR* %2786, i32 0, i32 15
  %2788 = getelementptr inbounds %struct.Reg, %struct.Reg* %2787, i32 0, i32 0
  %RBP.i665 = bitcast %union.anon* %2788 to i64*
  %2789 = load i64, i64* %RBP.i665
  %2790 = sub i64 %2789, 8
  %2791 = load i64, i64* %PC.i663
  %2792 = add i64 %2791, 4
  store i64 %2792, i64* %PC.i663
  %2793 = inttoptr i64 %2790 to i64*
  %2794 = load i64, i64* %2793
  store i64 %2794, i64* %RAX.i664, align 8
  store %struct.Memory* %loadMem_42a8e8, %struct.Memory** %MEMORY
  %loadMem_42a8ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %2795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2796 = getelementptr inbounds %struct.GPR, %struct.GPR* %2795, i32 0, i32 33
  %2797 = getelementptr inbounds %struct.Reg, %struct.Reg* %2796, i32 0, i32 0
  %PC.i661 = bitcast %union.anon* %2797 to i64*
  %2798 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2799 = getelementptr inbounds %struct.GPR, %struct.GPR* %2798, i32 0, i32 1
  %2800 = getelementptr inbounds %struct.Reg, %struct.Reg* %2799, i32 0, i32 0
  %RAX.i662 = bitcast %union.anon* %2800 to i64*
  %2801 = load i64, i64* %RAX.i662
  %2802 = add i64 %2801, 8
  %2803 = load i64, i64* %PC.i661
  %2804 = add i64 %2803, 4
  store i64 %2804, i64* %PC.i661
  %2805 = inttoptr i64 %2802 to i64*
  %2806 = load i64, i64* %2805
  store i64 %2806, i64* %RAX.i662, align 8
  store %struct.Memory* %loadMem_42a8ec, %struct.Memory** %MEMORY
  %loadMem_42a8f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2808 = getelementptr inbounds %struct.GPR, %struct.GPR* %2807, i32 0, i32 33
  %2809 = getelementptr inbounds %struct.Reg, %struct.Reg* %2808, i32 0, i32 0
  %PC.i658 = bitcast %union.anon* %2809 to i64*
  %2810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2811 = getelementptr inbounds %struct.GPR, %struct.GPR* %2810, i32 0, i32 5
  %2812 = getelementptr inbounds %struct.Reg, %struct.Reg* %2811, i32 0, i32 0
  %RCX.i659 = bitcast %union.anon* %2812 to i64*
  %2813 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2814 = getelementptr inbounds %struct.GPR, %struct.GPR* %2813, i32 0, i32 15
  %2815 = getelementptr inbounds %struct.Reg, %struct.Reg* %2814, i32 0, i32 0
  %RBP.i660 = bitcast %union.anon* %2815 to i64*
  %2816 = load i64, i64* %RBP.i660
  %2817 = sub i64 %2816, 36
  %2818 = load i64, i64* %PC.i658
  %2819 = add i64 %2818, 4
  store i64 %2819, i64* %PC.i658
  %2820 = inttoptr i64 %2817 to i32*
  %2821 = load i32, i32* %2820
  %2822 = sext i32 %2821 to i64
  store i64 %2822, i64* %RCX.i659, align 8
  store %struct.Memory* %loadMem_42a8f0, %struct.Memory** %MEMORY
  %loadMem_42a8f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2824 = getelementptr inbounds %struct.GPR, %struct.GPR* %2823, i32 0, i32 33
  %2825 = getelementptr inbounds %struct.Reg, %struct.Reg* %2824, i32 0, i32 0
  %PC.i654 = bitcast %union.anon* %2825 to i64*
  %2826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2827 = getelementptr inbounds %struct.GPR, %struct.GPR* %2826, i32 0, i32 1
  %2828 = getelementptr inbounds %struct.Reg, %struct.Reg* %2827, i32 0, i32 0
  %RAX.i655 = bitcast %union.anon* %2828 to i64*
  %2829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2830 = getelementptr inbounds %struct.GPR, %struct.GPR* %2829, i32 0, i32 5
  %2831 = getelementptr inbounds %struct.Reg, %struct.Reg* %2830, i32 0, i32 0
  %RCX.i656 = bitcast %union.anon* %2831 to i64*
  %2832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2833 = getelementptr inbounds %struct.GPR, %struct.GPR* %2832, i32 0, i32 7
  %2834 = getelementptr inbounds %struct.Reg, %struct.Reg* %2833, i32 0, i32 0
  %RDX.i657 = bitcast %union.anon* %2834 to i64*
  %2835 = load i64, i64* %RAX.i655
  %2836 = load i64, i64* %RCX.i656
  %2837 = add i64 %2836, %2835
  %2838 = load i64, i64* %PC.i654
  %2839 = add i64 %2838, 4
  store i64 %2839, i64* %PC.i654
  %2840 = inttoptr i64 %2837 to i8*
  %2841 = load i8, i8* %2840
  %2842 = sext i8 %2841 to i64
  %2843 = and i64 %2842, 4294967295
  store i64 %2843, i64* %RDX.i657, align 8
  store %struct.Memory* %loadMem_42a8f4, %struct.Memory** %MEMORY
  %loadMem_42a8f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2844 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2845 = getelementptr inbounds %struct.GPR, %struct.GPR* %2844, i32 0, i32 33
  %2846 = getelementptr inbounds %struct.Reg, %struct.Reg* %2845, i32 0, i32 0
  %PC.i652 = bitcast %union.anon* %2846 to i64*
  %2847 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2848 = getelementptr inbounds %struct.GPR, %struct.GPR* %2847, i32 0, i32 7
  %2849 = getelementptr inbounds %struct.Reg, %struct.Reg* %2848, i32 0, i32 0
  %EDX.i653 = bitcast %union.anon* %2849 to i32*
  %2850 = load i32, i32* %EDX.i653
  %2851 = zext i32 %2850 to i64
  %2852 = load i64, i64* %PC.i652
  %2853 = add i64 %2852, 3
  store i64 %2853, i64* %PC.i652
  %2854 = sub i32 %2850, 3
  %2855 = icmp ult i32 %2850, 3
  %2856 = zext i1 %2855 to i8
  %2857 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2856, i8* %2857, align 1
  %2858 = and i32 %2854, 255
  %2859 = call i32 @llvm.ctpop.i32(i32 %2858)
  %2860 = trunc i32 %2859 to i8
  %2861 = and i8 %2860, 1
  %2862 = xor i8 %2861, 1
  %2863 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2862, i8* %2863, align 1
  %2864 = xor i64 3, %2851
  %2865 = trunc i64 %2864 to i32
  %2866 = xor i32 %2865, %2854
  %2867 = lshr i32 %2866, 4
  %2868 = trunc i32 %2867 to i8
  %2869 = and i8 %2868, 1
  %2870 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2869, i8* %2870, align 1
  %2871 = icmp eq i32 %2854, 0
  %2872 = zext i1 %2871 to i8
  %2873 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2872, i8* %2873, align 1
  %2874 = lshr i32 %2854, 31
  %2875 = trunc i32 %2874 to i8
  %2876 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2875, i8* %2876, align 1
  %2877 = lshr i32 %2850, 31
  %2878 = xor i32 %2874, %2877
  %2879 = add i32 %2878, %2877
  %2880 = icmp eq i32 %2879, 2
  %2881 = zext i1 %2880 to i8
  %2882 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2881, i8* %2882, align 1
  store %struct.Memory* %loadMem_42a8f8, %struct.Memory** %MEMORY
  %loadMem_42a8fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2884 = getelementptr inbounds %struct.GPR, %struct.GPR* %2883, i32 0, i32 33
  %2885 = getelementptr inbounds %struct.Reg, %struct.Reg* %2884, i32 0, i32 0
  %PC.i651 = bitcast %union.anon* %2885 to i64*
  %2886 = load i64, i64* %PC.i651
  %2887 = add i64 %2886, 138
  %2888 = load i64, i64* %PC.i651
  %2889 = add i64 %2888, 6
  %2890 = load i64, i64* %PC.i651
  %2891 = add i64 %2890, 6
  store i64 %2891, i64* %PC.i651
  %2892 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2893 = load i8, i8* %2892, align 1
  %2894 = icmp eq i8 %2893, 0
  %2895 = zext i1 %2894 to i8
  store i8 %2895, i8* %BRANCH_TAKEN, align 1
  %2896 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2897 = select i1 %2894, i64 %2887, i64 %2889
  store i64 %2897, i64* %2896, align 8
  store %struct.Memory* %loadMem_42a8fb, %struct.Memory** %MEMORY
  %loadBr_42a8fb = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42a8fb = icmp eq i8 %loadBr_42a8fb, 1
  br i1 %cmpBr_42a8fb, label %block_.L_42a985, label %block_42a901

block_42a901:                                     ; preds = %block_.L_42a8e8
  %loadMem_42a901 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2898 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2899 = getelementptr inbounds %struct.GPR, %struct.GPR* %2898, i32 0, i32 33
  %2900 = getelementptr inbounds %struct.Reg, %struct.Reg* %2899, i32 0, i32 0
  %PC.i648 = bitcast %union.anon* %2900 to i64*
  %2901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2902 = getelementptr inbounds %struct.GPR, %struct.GPR* %2901, i32 0, i32 1
  %2903 = getelementptr inbounds %struct.Reg, %struct.Reg* %2902, i32 0, i32 0
  %RAX.i649 = bitcast %union.anon* %2903 to i64*
  %2904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2905 = getelementptr inbounds %struct.GPR, %struct.GPR* %2904, i32 0, i32 15
  %2906 = getelementptr inbounds %struct.Reg, %struct.Reg* %2905, i32 0, i32 0
  %RBP.i650 = bitcast %union.anon* %2906 to i64*
  %2907 = load i64, i64* %RBP.i650
  %2908 = sub i64 %2907, 8
  %2909 = load i64, i64* %PC.i648
  %2910 = add i64 %2909, 4
  store i64 %2910, i64* %PC.i648
  %2911 = inttoptr i64 %2908 to i64*
  %2912 = load i64, i64* %2911
  store i64 %2912, i64* %RAX.i649, align 8
  store %struct.Memory* %loadMem_42a901, %struct.Memory** %MEMORY
  %loadMem_42a905 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2914 = getelementptr inbounds %struct.GPR, %struct.GPR* %2913, i32 0, i32 33
  %2915 = getelementptr inbounds %struct.Reg, %struct.Reg* %2914, i32 0, i32 0
  %PC.i646 = bitcast %union.anon* %2915 to i64*
  %2916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2917 = getelementptr inbounds %struct.GPR, %struct.GPR* %2916, i32 0, i32 1
  %2918 = getelementptr inbounds %struct.Reg, %struct.Reg* %2917, i32 0, i32 0
  %RAX.i647 = bitcast %union.anon* %2918 to i64*
  %2919 = load i64, i64* %RAX.i647
  %2920 = add i64 %2919, 8
  %2921 = load i64, i64* %PC.i646
  %2922 = add i64 %2921, 4
  store i64 %2922, i64* %PC.i646
  %2923 = inttoptr i64 %2920 to i64*
  %2924 = load i64, i64* %2923
  store i64 %2924, i64* %RAX.i647, align 8
  store %struct.Memory* %loadMem_42a905, %struct.Memory** %MEMORY
  %loadMem_42a909 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2925 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2926 = getelementptr inbounds %struct.GPR, %struct.GPR* %2925, i32 0, i32 33
  %2927 = getelementptr inbounds %struct.Reg, %struct.Reg* %2926, i32 0, i32 0
  %PC.i643 = bitcast %union.anon* %2927 to i64*
  %2928 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2929 = getelementptr inbounds %struct.GPR, %struct.GPR* %2928, i32 0, i32 5
  %2930 = getelementptr inbounds %struct.Reg, %struct.Reg* %2929, i32 0, i32 0
  %RCX.i644 = bitcast %union.anon* %2930 to i64*
  %2931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2932 = getelementptr inbounds %struct.GPR, %struct.GPR* %2931, i32 0, i32 15
  %2933 = getelementptr inbounds %struct.Reg, %struct.Reg* %2932, i32 0, i32 0
  %RBP.i645 = bitcast %union.anon* %2933 to i64*
  %2934 = load i64, i64* %RBP.i645
  %2935 = sub i64 %2934, 36
  %2936 = load i64, i64* %PC.i643
  %2937 = add i64 %2936, 3
  store i64 %2937, i64* %PC.i643
  %2938 = inttoptr i64 %2935 to i32*
  %2939 = load i32, i32* %2938
  %2940 = zext i32 %2939 to i64
  store i64 %2940, i64* %RCX.i644, align 8
  store %struct.Memory* %loadMem_42a909, %struct.Memory** %MEMORY
  %loadMem_42a90c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2941 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2942 = getelementptr inbounds %struct.GPR, %struct.GPR* %2941, i32 0, i32 33
  %2943 = getelementptr inbounds %struct.Reg, %struct.Reg* %2942, i32 0, i32 0
  %PC.i641 = bitcast %union.anon* %2943 to i64*
  %2944 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2945 = getelementptr inbounds %struct.GPR, %struct.GPR* %2944, i32 0, i32 5
  %2946 = getelementptr inbounds %struct.Reg, %struct.Reg* %2945, i32 0, i32 0
  %RCX.i642 = bitcast %union.anon* %2946 to i64*
  %2947 = load i64, i64* %RCX.i642
  %2948 = load i64, i64* %PC.i641
  %2949 = add i64 %2948, 3
  store i64 %2949, i64* %PC.i641
  %2950 = trunc i64 %2947 to i32
  %2951 = add i32 1, %2950
  %2952 = zext i32 %2951 to i64
  store i64 %2952, i64* %RCX.i642, align 8
  %2953 = icmp ult i32 %2951, %2950
  %2954 = icmp ult i32 %2951, 1
  %2955 = or i1 %2953, %2954
  %2956 = zext i1 %2955 to i8
  %2957 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2956, i8* %2957, align 1
  %2958 = and i32 %2951, 255
  %2959 = call i32 @llvm.ctpop.i32(i32 %2958)
  %2960 = trunc i32 %2959 to i8
  %2961 = and i8 %2960, 1
  %2962 = xor i8 %2961, 1
  %2963 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2962, i8* %2963, align 1
  %2964 = xor i64 1, %2947
  %2965 = trunc i64 %2964 to i32
  %2966 = xor i32 %2965, %2951
  %2967 = lshr i32 %2966, 4
  %2968 = trunc i32 %2967 to i8
  %2969 = and i8 %2968, 1
  %2970 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2969, i8* %2970, align 1
  %2971 = icmp eq i32 %2951, 0
  %2972 = zext i1 %2971 to i8
  %2973 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2972, i8* %2973, align 1
  %2974 = lshr i32 %2951, 31
  %2975 = trunc i32 %2974 to i8
  %2976 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2975, i8* %2976, align 1
  %2977 = lshr i32 %2950, 31
  %2978 = xor i32 %2974, %2977
  %2979 = add i32 %2978, %2974
  %2980 = icmp eq i32 %2979, 2
  %2981 = zext i1 %2980 to i8
  %2982 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2981, i8* %2982, align 1
  store %struct.Memory* %loadMem_42a90c, %struct.Memory** %MEMORY
  %loadMem_42a90f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2984 = getelementptr inbounds %struct.GPR, %struct.GPR* %2983, i32 0, i32 33
  %2985 = getelementptr inbounds %struct.Reg, %struct.Reg* %2984, i32 0, i32 0
  %PC.i638 = bitcast %union.anon* %2985 to i64*
  %2986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2987 = getelementptr inbounds %struct.GPR, %struct.GPR* %2986, i32 0, i32 5
  %2988 = getelementptr inbounds %struct.Reg, %struct.Reg* %2987, i32 0, i32 0
  %ECX.i639 = bitcast %union.anon* %2988 to i32*
  %2989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2990 = getelementptr inbounds %struct.GPR, %struct.GPR* %2989, i32 0, i32 7
  %2991 = getelementptr inbounds %struct.Reg, %struct.Reg* %2990, i32 0, i32 0
  %RDX.i640 = bitcast %union.anon* %2991 to i64*
  %2992 = load i32, i32* %ECX.i639
  %2993 = zext i32 %2992 to i64
  %2994 = load i64, i64* %PC.i638
  %2995 = add i64 %2994, 3
  store i64 %2995, i64* %PC.i638
  %2996 = shl i64 %2993, 32
  %2997 = ashr exact i64 %2996, 32
  store i64 %2997, i64* %RDX.i640, align 8
  store %struct.Memory* %loadMem_42a90f, %struct.Memory** %MEMORY
  %loadMem_42a912 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2998 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2999 = getelementptr inbounds %struct.GPR, %struct.GPR* %2998, i32 0, i32 33
  %3000 = getelementptr inbounds %struct.Reg, %struct.Reg* %2999, i32 0, i32 0
  %PC.i634 = bitcast %union.anon* %3000 to i64*
  %3001 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3002 = getelementptr inbounds %struct.GPR, %struct.GPR* %3001, i32 0, i32 1
  %3003 = getelementptr inbounds %struct.Reg, %struct.Reg* %3002, i32 0, i32 0
  %RAX.i635 = bitcast %union.anon* %3003 to i64*
  %3004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3005 = getelementptr inbounds %struct.GPR, %struct.GPR* %3004, i32 0, i32 5
  %3006 = getelementptr inbounds %struct.Reg, %struct.Reg* %3005, i32 0, i32 0
  %RCX.i636 = bitcast %union.anon* %3006 to i64*
  %3007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3008 = getelementptr inbounds %struct.GPR, %struct.GPR* %3007, i32 0, i32 7
  %3009 = getelementptr inbounds %struct.Reg, %struct.Reg* %3008, i32 0, i32 0
  %RDX.i637 = bitcast %union.anon* %3009 to i64*
  %3010 = load i64, i64* %RAX.i635
  %3011 = load i64, i64* %RDX.i637
  %3012 = add i64 %3011, %3010
  %3013 = load i64, i64* %PC.i634
  %3014 = add i64 %3013, 4
  store i64 %3014, i64* %PC.i634
  %3015 = inttoptr i64 %3012 to i8*
  %3016 = load i8, i8* %3015
  %3017 = sext i8 %3016 to i64
  %3018 = and i64 %3017, 4294967295
  store i64 %3018, i64* %RCX.i636, align 8
  store %struct.Memory* %loadMem_42a912, %struct.Memory** %MEMORY
  %loadMem_42a916 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3019 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3020 = getelementptr inbounds %struct.GPR, %struct.GPR* %3019, i32 0, i32 33
  %3021 = getelementptr inbounds %struct.Reg, %struct.Reg* %3020, i32 0, i32 0
  %PC.i632 = bitcast %union.anon* %3021 to i64*
  %3022 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3023 = getelementptr inbounds %struct.GPR, %struct.GPR* %3022, i32 0, i32 5
  %3024 = getelementptr inbounds %struct.Reg, %struct.Reg* %3023, i32 0, i32 0
  %ECX.i633 = bitcast %union.anon* %3024 to i32*
  %3025 = load i32, i32* %ECX.i633
  %3026 = zext i32 %3025 to i64
  %3027 = load i64, i64* %PC.i632
  %3028 = add i64 %3027, 3
  store i64 %3028, i64* %PC.i632
  %3029 = sub i32 %3025, 7
  %3030 = icmp ult i32 %3025, 7
  %3031 = zext i1 %3030 to i8
  %3032 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3031, i8* %3032, align 1
  %3033 = and i32 %3029, 255
  %3034 = call i32 @llvm.ctpop.i32(i32 %3033)
  %3035 = trunc i32 %3034 to i8
  %3036 = and i8 %3035, 1
  %3037 = xor i8 %3036, 1
  %3038 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3037, i8* %3038, align 1
  %3039 = xor i64 7, %3026
  %3040 = trunc i64 %3039 to i32
  %3041 = xor i32 %3040, %3029
  %3042 = lshr i32 %3041, 4
  %3043 = trunc i32 %3042 to i8
  %3044 = and i8 %3043, 1
  %3045 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3044, i8* %3045, align 1
  %3046 = icmp eq i32 %3029, 0
  %3047 = zext i1 %3046 to i8
  %3048 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3047, i8* %3048, align 1
  %3049 = lshr i32 %3029, 31
  %3050 = trunc i32 %3049 to i8
  %3051 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3050, i8* %3051, align 1
  %3052 = lshr i32 %3025, 31
  %3053 = xor i32 %3049, %3052
  %3054 = add i32 %3053, %3052
  %3055 = icmp eq i32 %3054, 2
  %3056 = zext i1 %3055 to i8
  %3057 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3056, i8* %3057, align 1
  store %struct.Memory* %loadMem_42a916, %struct.Memory** %MEMORY
  %loadMem_42a919 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3058 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3059 = getelementptr inbounds %struct.GPR, %struct.GPR* %3058, i32 0, i32 33
  %3060 = getelementptr inbounds %struct.Reg, %struct.Reg* %3059, i32 0, i32 0
  %PC.i631 = bitcast %union.anon* %3060 to i64*
  %3061 = load i64, i64* %PC.i631
  %3062 = add i64 %3061, 108
  %3063 = load i64, i64* %PC.i631
  %3064 = add i64 %3063, 6
  %3065 = load i64, i64* %PC.i631
  %3066 = add i64 %3065, 6
  store i64 %3066, i64* %PC.i631
  %3067 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3068 = load i8, i8* %3067, align 1
  %3069 = icmp eq i8 %3068, 0
  %3070 = zext i1 %3069 to i8
  store i8 %3070, i8* %BRANCH_TAKEN, align 1
  %3071 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3072 = select i1 %3069, i64 %3062, i64 %3064
  store i64 %3072, i64* %3071, align 8
  store %struct.Memory* %loadMem_42a919, %struct.Memory** %MEMORY
  %loadBr_42a919 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42a919 = icmp eq i8 %loadBr_42a919, 1
  br i1 %cmpBr_42a919, label %block_.L_42a985, label %block_42a91f

block_42a91f:                                     ; preds = %block_42a901
  %loadMem_42a91f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3073 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3074 = getelementptr inbounds %struct.GPR, %struct.GPR* %3073, i32 0, i32 33
  %3075 = getelementptr inbounds %struct.Reg, %struct.Reg* %3074, i32 0, i32 0
  %PC.i628 = bitcast %union.anon* %3075 to i64*
  %3076 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3077 = getelementptr inbounds %struct.GPR, %struct.GPR* %3076, i32 0, i32 1
  %3078 = getelementptr inbounds %struct.Reg, %struct.Reg* %3077, i32 0, i32 0
  %RAX.i629 = bitcast %union.anon* %3078 to i64*
  %3079 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3080 = getelementptr inbounds %struct.GPR, %struct.GPR* %3079, i32 0, i32 15
  %3081 = getelementptr inbounds %struct.Reg, %struct.Reg* %3080, i32 0, i32 0
  %RBP.i630 = bitcast %union.anon* %3081 to i64*
  %3082 = load i64, i64* %RBP.i630
  %3083 = sub i64 %3082, 8
  %3084 = load i64, i64* %PC.i628
  %3085 = add i64 %3084, 4
  store i64 %3085, i64* %PC.i628
  %3086 = inttoptr i64 %3083 to i64*
  %3087 = load i64, i64* %3086
  store i64 %3087, i64* %RAX.i629, align 8
  store %struct.Memory* %loadMem_42a91f, %struct.Memory** %MEMORY
  %loadMem_42a923 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3088 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3089 = getelementptr inbounds %struct.GPR, %struct.GPR* %3088, i32 0, i32 33
  %3090 = getelementptr inbounds %struct.Reg, %struct.Reg* %3089, i32 0, i32 0
  %PC.i626 = bitcast %union.anon* %3090 to i64*
  %3091 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3092 = getelementptr inbounds %struct.GPR, %struct.GPR* %3091, i32 0, i32 1
  %3093 = getelementptr inbounds %struct.Reg, %struct.Reg* %3092, i32 0, i32 0
  %RAX.i627 = bitcast %union.anon* %3093 to i64*
  %3094 = load i64, i64* %RAX.i627
  %3095 = add i64 %3094, 8
  %3096 = load i64, i64* %PC.i626
  %3097 = add i64 %3096, 4
  store i64 %3097, i64* %PC.i626
  %3098 = inttoptr i64 %3095 to i64*
  %3099 = load i64, i64* %3098
  store i64 %3099, i64* %RAX.i627, align 8
  store %struct.Memory* %loadMem_42a923, %struct.Memory** %MEMORY
  %loadMem_42a927 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3101 = getelementptr inbounds %struct.GPR, %struct.GPR* %3100, i32 0, i32 33
  %3102 = getelementptr inbounds %struct.Reg, %struct.Reg* %3101, i32 0, i32 0
  %PC.i623 = bitcast %union.anon* %3102 to i64*
  %3103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3104 = getelementptr inbounds %struct.GPR, %struct.GPR* %3103, i32 0, i32 5
  %3105 = getelementptr inbounds %struct.Reg, %struct.Reg* %3104, i32 0, i32 0
  %RCX.i624 = bitcast %union.anon* %3105 to i64*
  %3106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3107 = getelementptr inbounds %struct.GPR, %struct.GPR* %3106, i32 0, i32 15
  %3108 = getelementptr inbounds %struct.Reg, %struct.Reg* %3107, i32 0, i32 0
  %RBP.i625 = bitcast %union.anon* %3108 to i64*
  %3109 = load i64, i64* %RBP.i625
  %3110 = sub i64 %3109, 40
  %3111 = load i64, i64* %PC.i623
  %3112 = add i64 %3111, 4
  store i64 %3112, i64* %PC.i623
  %3113 = inttoptr i64 %3110 to i32*
  %3114 = load i32, i32* %3113
  %3115 = sext i32 %3114 to i64
  store i64 %3115, i64* %RCX.i624, align 8
  store %struct.Memory* %loadMem_42a927, %struct.Memory** %MEMORY
  %loadMem_42a92b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3117 = getelementptr inbounds %struct.GPR, %struct.GPR* %3116, i32 0, i32 33
  %3118 = getelementptr inbounds %struct.Reg, %struct.Reg* %3117, i32 0, i32 0
  %PC.i620 = bitcast %union.anon* %3118 to i64*
  %3119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3120 = getelementptr inbounds %struct.GPR, %struct.GPR* %3119, i32 0, i32 1
  %3121 = getelementptr inbounds %struct.Reg, %struct.Reg* %3120, i32 0, i32 0
  %RAX.i621 = bitcast %union.anon* %3121 to i64*
  %3122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3123 = getelementptr inbounds %struct.GPR, %struct.GPR* %3122, i32 0, i32 5
  %3124 = getelementptr inbounds %struct.Reg, %struct.Reg* %3123, i32 0, i32 0
  %RCX.i622 = bitcast %union.anon* %3124 to i64*
  %3125 = load i64, i64* %RAX.i621
  %3126 = load i64, i64* %RCX.i622
  %3127 = add i64 %3126, %3125
  %3128 = load i64, i64* %PC.i620
  %3129 = add i64 %3128, 4
  store i64 %3129, i64* %PC.i620
  %3130 = inttoptr i64 %3127 to i8*
  store i8 1, i8* %3130
  store %struct.Memory* %loadMem_42a92b, %struct.Memory** %MEMORY
  %loadMem_42a92f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3132 = getelementptr inbounds %struct.GPR, %struct.GPR* %3131, i32 0, i32 33
  %3133 = getelementptr inbounds %struct.Reg, %struct.Reg* %3132, i32 0, i32 0
  %PC.i617 = bitcast %union.anon* %3133 to i64*
  %3134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3135 = getelementptr inbounds %struct.GPR, %struct.GPR* %3134, i32 0, i32 1
  %3136 = getelementptr inbounds %struct.Reg, %struct.Reg* %3135, i32 0, i32 0
  %RAX.i618 = bitcast %union.anon* %3136 to i64*
  %3137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3138 = getelementptr inbounds %struct.GPR, %struct.GPR* %3137, i32 0, i32 15
  %3139 = getelementptr inbounds %struct.Reg, %struct.Reg* %3138, i32 0, i32 0
  %RBP.i619 = bitcast %union.anon* %3139 to i64*
  %3140 = load i64, i64* %RBP.i619
  %3141 = sub i64 %3140, 8
  %3142 = load i64, i64* %PC.i617
  %3143 = add i64 %3142, 4
  store i64 %3143, i64* %PC.i617
  %3144 = inttoptr i64 %3141 to i64*
  %3145 = load i64, i64* %3144
  store i64 %3145, i64* %RAX.i618, align 8
  store %struct.Memory* %loadMem_42a92f, %struct.Memory** %MEMORY
  %loadMem_42a933 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3147 = getelementptr inbounds %struct.GPR, %struct.GPR* %3146, i32 0, i32 33
  %3148 = getelementptr inbounds %struct.Reg, %struct.Reg* %3147, i32 0, i32 0
  %PC.i615 = bitcast %union.anon* %3148 to i64*
  %3149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3150 = getelementptr inbounds %struct.GPR, %struct.GPR* %3149, i32 0, i32 1
  %3151 = getelementptr inbounds %struct.Reg, %struct.Reg* %3150, i32 0, i32 0
  %RAX.i616 = bitcast %union.anon* %3151 to i64*
  %3152 = load i64, i64* %RAX.i616
  %3153 = add i64 %3152, 16
  %3154 = load i64, i64* %PC.i615
  %3155 = add i64 %3154, 4
  store i64 %3155, i64* %PC.i615
  %3156 = inttoptr i64 %3153 to i64*
  %3157 = load i64, i64* %3156
  store i64 %3157, i64* %RAX.i616, align 8
  store %struct.Memory* %loadMem_42a933, %struct.Memory** %MEMORY
  %loadMem_42a937 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3159 = getelementptr inbounds %struct.GPR, %struct.GPR* %3158, i32 0, i32 33
  %3160 = getelementptr inbounds %struct.Reg, %struct.Reg* %3159, i32 0, i32 0
  %PC.i612 = bitcast %union.anon* %3160 to i64*
  %3161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3162 = getelementptr inbounds %struct.GPR, %struct.GPR* %3161, i32 0, i32 5
  %3163 = getelementptr inbounds %struct.Reg, %struct.Reg* %3162, i32 0, i32 0
  %RCX.i613 = bitcast %union.anon* %3163 to i64*
  %3164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3165 = getelementptr inbounds %struct.GPR, %struct.GPR* %3164, i32 0, i32 15
  %3166 = getelementptr inbounds %struct.Reg, %struct.Reg* %3165, i32 0, i32 0
  %RBP.i614 = bitcast %union.anon* %3166 to i64*
  %3167 = load i64, i64* %RBP.i614
  %3168 = sub i64 %3167, 36
  %3169 = load i64, i64* %PC.i612
  %3170 = add i64 %3169, 4
  store i64 %3170, i64* %PC.i612
  %3171 = inttoptr i64 %3168 to i32*
  %3172 = load i32, i32* %3171
  %3173 = sext i32 %3172 to i64
  store i64 %3173, i64* %RCX.i613, align 8
  store %struct.Memory* %loadMem_42a937, %struct.Memory** %MEMORY
  %loadMem_42a93b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3175 = getelementptr inbounds %struct.GPR, %struct.GPR* %3174, i32 0, i32 33
  %3176 = getelementptr inbounds %struct.Reg, %struct.Reg* %3175, i32 0, i32 0
  %PC.i608 = bitcast %union.anon* %3176 to i64*
  %3177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3178 = getelementptr inbounds %struct.GPR, %struct.GPR* %3177, i32 0, i32 1
  %3179 = getelementptr inbounds %struct.Reg, %struct.Reg* %3178, i32 0, i32 0
  %RAX.i609 = bitcast %union.anon* %3179 to i64*
  %3180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3181 = getelementptr inbounds %struct.GPR, %struct.GPR* %3180, i32 0, i32 5
  %3182 = getelementptr inbounds %struct.Reg, %struct.Reg* %3181, i32 0, i32 0
  %RCX.i610 = bitcast %union.anon* %3182 to i64*
  %3183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3184 = getelementptr inbounds %struct.GPR, %struct.GPR* %3183, i32 0, i32 7
  %3185 = getelementptr inbounds %struct.Reg, %struct.Reg* %3184, i32 0, i32 0
  %RDX.i611 = bitcast %union.anon* %3185 to i64*
  %3186 = load i64, i64* %RAX.i609
  %3187 = load i64, i64* %RCX.i610
  %3188 = mul i64 %3187, 4
  %3189 = add i64 %3188, %3186
  %3190 = load i64, i64* %PC.i608
  %3191 = add i64 %3190, 3
  store i64 %3191, i64* %PC.i608
  %3192 = inttoptr i64 %3189 to i32*
  %3193 = load i32, i32* %3192
  %3194 = zext i32 %3193 to i64
  store i64 %3194, i64* %RDX.i611, align 8
  store %struct.Memory* %loadMem_42a93b, %struct.Memory** %MEMORY
  %loadMem_42a93e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3196 = getelementptr inbounds %struct.GPR, %struct.GPR* %3195, i32 0, i32 33
  %3197 = getelementptr inbounds %struct.Reg, %struct.Reg* %3196, i32 0, i32 0
  %PC.i606 = bitcast %union.anon* %3197 to i64*
  %3198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3199 = getelementptr inbounds %struct.GPR, %struct.GPR* %3198, i32 0, i32 7
  %3200 = getelementptr inbounds %struct.Reg, %struct.Reg* %3199, i32 0, i32 0
  %RDX.i607 = bitcast %union.anon* %3200 to i64*
  %3201 = load i64, i64* %RDX.i607
  %3202 = load i64, i64* %PC.i606
  %3203 = add i64 %3202, 3
  store i64 %3203, i64* %PC.i606
  %3204 = trunc i64 %3201 to i32
  %3205 = add i32 1, %3204
  %3206 = zext i32 %3205 to i64
  store i64 %3206, i64* %RDX.i607, align 8
  %3207 = icmp ult i32 %3205, %3204
  %3208 = icmp ult i32 %3205, 1
  %3209 = or i1 %3207, %3208
  %3210 = zext i1 %3209 to i8
  %3211 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3210, i8* %3211, align 1
  %3212 = and i32 %3205, 255
  %3213 = call i32 @llvm.ctpop.i32(i32 %3212)
  %3214 = trunc i32 %3213 to i8
  %3215 = and i8 %3214, 1
  %3216 = xor i8 %3215, 1
  %3217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3216, i8* %3217, align 1
  %3218 = xor i64 1, %3201
  %3219 = trunc i64 %3218 to i32
  %3220 = xor i32 %3219, %3205
  %3221 = lshr i32 %3220, 4
  %3222 = trunc i32 %3221 to i8
  %3223 = and i8 %3222, 1
  %3224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3223, i8* %3224, align 1
  %3225 = icmp eq i32 %3205, 0
  %3226 = zext i1 %3225 to i8
  %3227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3226, i8* %3227, align 1
  %3228 = lshr i32 %3205, 31
  %3229 = trunc i32 %3228 to i8
  %3230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3229, i8* %3230, align 1
  %3231 = lshr i32 %3204, 31
  %3232 = xor i32 %3228, %3231
  %3233 = add i32 %3232, %3228
  %3234 = icmp eq i32 %3233, 2
  %3235 = zext i1 %3234 to i8
  %3236 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3235, i8* %3236, align 1
  store %struct.Memory* %loadMem_42a93e, %struct.Memory** %MEMORY
  %loadMem_42a941 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3238 = getelementptr inbounds %struct.GPR, %struct.GPR* %3237, i32 0, i32 33
  %3239 = getelementptr inbounds %struct.Reg, %struct.Reg* %3238, i32 0, i32 0
  %PC.i603 = bitcast %union.anon* %3239 to i64*
  %3240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3241 = getelementptr inbounds %struct.GPR, %struct.GPR* %3240, i32 0, i32 1
  %3242 = getelementptr inbounds %struct.Reg, %struct.Reg* %3241, i32 0, i32 0
  %RAX.i604 = bitcast %union.anon* %3242 to i64*
  %3243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3244 = getelementptr inbounds %struct.GPR, %struct.GPR* %3243, i32 0, i32 15
  %3245 = getelementptr inbounds %struct.Reg, %struct.Reg* %3244, i32 0, i32 0
  %RBP.i605 = bitcast %union.anon* %3245 to i64*
  %3246 = load i64, i64* %RBP.i605
  %3247 = sub i64 %3246, 8
  %3248 = load i64, i64* %PC.i603
  %3249 = add i64 %3248, 4
  store i64 %3249, i64* %PC.i603
  %3250 = inttoptr i64 %3247 to i64*
  %3251 = load i64, i64* %3250
  store i64 %3251, i64* %RAX.i604, align 8
  store %struct.Memory* %loadMem_42a941, %struct.Memory** %MEMORY
  %loadMem_42a945 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3253 = getelementptr inbounds %struct.GPR, %struct.GPR* %3252, i32 0, i32 33
  %3254 = getelementptr inbounds %struct.Reg, %struct.Reg* %3253, i32 0, i32 0
  %PC.i601 = bitcast %union.anon* %3254 to i64*
  %3255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3256 = getelementptr inbounds %struct.GPR, %struct.GPR* %3255, i32 0, i32 1
  %3257 = getelementptr inbounds %struct.Reg, %struct.Reg* %3256, i32 0, i32 0
  %RAX.i602 = bitcast %union.anon* %3257 to i64*
  %3258 = load i64, i64* %RAX.i602
  %3259 = add i64 %3258, 16
  %3260 = load i64, i64* %PC.i601
  %3261 = add i64 %3260, 4
  store i64 %3261, i64* %PC.i601
  %3262 = inttoptr i64 %3259 to i64*
  %3263 = load i64, i64* %3262
  store i64 %3263, i64* %RAX.i602, align 8
  store %struct.Memory* %loadMem_42a945, %struct.Memory** %MEMORY
  %loadMem_42a949 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3265 = getelementptr inbounds %struct.GPR, %struct.GPR* %3264, i32 0, i32 33
  %3266 = getelementptr inbounds %struct.Reg, %struct.Reg* %3265, i32 0, i32 0
  %PC.i598 = bitcast %union.anon* %3266 to i64*
  %3267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3268 = getelementptr inbounds %struct.GPR, %struct.GPR* %3267, i32 0, i32 5
  %3269 = getelementptr inbounds %struct.Reg, %struct.Reg* %3268, i32 0, i32 0
  %RCX.i599 = bitcast %union.anon* %3269 to i64*
  %3270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3271 = getelementptr inbounds %struct.GPR, %struct.GPR* %3270, i32 0, i32 15
  %3272 = getelementptr inbounds %struct.Reg, %struct.Reg* %3271, i32 0, i32 0
  %RBP.i600 = bitcast %union.anon* %3272 to i64*
  %3273 = load i64, i64* %RBP.i600
  %3274 = sub i64 %3273, 40
  %3275 = load i64, i64* %PC.i598
  %3276 = add i64 %3275, 4
  store i64 %3276, i64* %PC.i598
  %3277 = inttoptr i64 %3274 to i32*
  %3278 = load i32, i32* %3277
  %3279 = sext i32 %3278 to i64
  store i64 %3279, i64* %RCX.i599, align 8
  store %struct.Memory* %loadMem_42a949, %struct.Memory** %MEMORY
  %loadMem_42a94d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3281 = getelementptr inbounds %struct.GPR, %struct.GPR* %3280, i32 0, i32 33
  %3282 = getelementptr inbounds %struct.Reg, %struct.Reg* %3281, i32 0, i32 0
  %PC.i594 = bitcast %union.anon* %3282 to i64*
  %3283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3284 = getelementptr inbounds %struct.GPR, %struct.GPR* %3283, i32 0, i32 7
  %3285 = getelementptr inbounds %struct.Reg, %struct.Reg* %3284, i32 0, i32 0
  %EDX.i595 = bitcast %union.anon* %3285 to i32*
  %3286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3287 = getelementptr inbounds %struct.GPR, %struct.GPR* %3286, i32 0, i32 1
  %3288 = getelementptr inbounds %struct.Reg, %struct.Reg* %3287, i32 0, i32 0
  %RAX.i596 = bitcast %union.anon* %3288 to i64*
  %3289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3290 = getelementptr inbounds %struct.GPR, %struct.GPR* %3289, i32 0, i32 5
  %3291 = getelementptr inbounds %struct.Reg, %struct.Reg* %3290, i32 0, i32 0
  %RCX.i597 = bitcast %union.anon* %3291 to i64*
  %3292 = load i64, i64* %RAX.i596
  %3293 = load i64, i64* %RCX.i597
  %3294 = mul i64 %3293, 4
  %3295 = add i64 %3294, %3292
  %3296 = load i32, i32* %EDX.i595
  %3297 = zext i32 %3296 to i64
  %3298 = load i64, i64* %PC.i594
  %3299 = add i64 %3298, 3
  store i64 %3299, i64* %PC.i594
  %3300 = inttoptr i64 %3295 to i32*
  store i32 %3296, i32* %3300
  store %struct.Memory* %loadMem_42a94d, %struct.Memory** %MEMORY
  %loadMem_42a950 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3302 = getelementptr inbounds %struct.GPR, %struct.GPR* %3301, i32 0, i32 33
  %3303 = getelementptr inbounds %struct.Reg, %struct.Reg* %3302, i32 0, i32 0
  %PC.i591 = bitcast %union.anon* %3303 to i64*
  %3304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3305 = getelementptr inbounds %struct.GPR, %struct.GPR* %3304, i32 0, i32 1
  %3306 = getelementptr inbounds %struct.Reg, %struct.Reg* %3305, i32 0, i32 0
  %RAX.i592 = bitcast %union.anon* %3306 to i64*
  %3307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3308 = getelementptr inbounds %struct.GPR, %struct.GPR* %3307, i32 0, i32 15
  %3309 = getelementptr inbounds %struct.Reg, %struct.Reg* %3308, i32 0, i32 0
  %RBP.i593 = bitcast %union.anon* %3309 to i64*
  %3310 = load i64, i64* %RBP.i593
  %3311 = sub i64 %3310, 8
  %3312 = load i64, i64* %PC.i591
  %3313 = add i64 %3312, 4
  store i64 %3313, i64* %PC.i591
  %3314 = inttoptr i64 %3311 to i64*
  %3315 = load i64, i64* %3314
  store i64 %3315, i64* %RAX.i592, align 8
  store %struct.Memory* %loadMem_42a950, %struct.Memory** %MEMORY
  %loadMem_42a954 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3317 = getelementptr inbounds %struct.GPR, %struct.GPR* %3316, i32 0, i32 33
  %3318 = getelementptr inbounds %struct.Reg, %struct.Reg* %3317, i32 0, i32 0
  %PC.i589 = bitcast %union.anon* %3318 to i64*
  %3319 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3320 = getelementptr inbounds %struct.GPR, %struct.GPR* %3319, i32 0, i32 1
  %3321 = getelementptr inbounds %struct.Reg, %struct.Reg* %3320, i32 0, i32 0
  %RAX.i590 = bitcast %union.anon* %3321 to i64*
  %3322 = load i64, i64* %RAX.i590
  %3323 = add i64 %3322, 24
  %3324 = load i64, i64* %PC.i589
  %3325 = add i64 %3324, 4
  store i64 %3325, i64* %PC.i589
  %3326 = inttoptr i64 %3323 to i64*
  %3327 = load i64, i64* %3326
  store i64 %3327, i64* %RAX.i590, align 8
  store %struct.Memory* %loadMem_42a954, %struct.Memory** %MEMORY
  %loadMem_42a958 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3329 = getelementptr inbounds %struct.GPR, %struct.GPR* %3328, i32 0, i32 33
  %3330 = getelementptr inbounds %struct.Reg, %struct.Reg* %3329, i32 0, i32 0
  %PC.i586 = bitcast %union.anon* %3330 to i64*
  %3331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3332 = getelementptr inbounds %struct.GPR, %struct.GPR* %3331, i32 0, i32 5
  %3333 = getelementptr inbounds %struct.Reg, %struct.Reg* %3332, i32 0, i32 0
  %RCX.i587 = bitcast %union.anon* %3333 to i64*
  %3334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3335 = getelementptr inbounds %struct.GPR, %struct.GPR* %3334, i32 0, i32 15
  %3336 = getelementptr inbounds %struct.Reg, %struct.Reg* %3335, i32 0, i32 0
  %RBP.i588 = bitcast %union.anon* %3336 to i64*
  %3337 = load i64, i64* %RBP.i588
  %3338 = sub i64 %3337, 36
  %3339 = load i64, i64* %PC.i586
  %3340 = add i64 %3339, 4
  store i64 %3340, i64* %PC.i586
  %3341 = inttoptr i64 %3338 to i32*
  %3342 = load i32, i32* %3341
  %3343 = sext i32 %3342 to i64
  store i64 %3343, i64* %RCX.i587, align 8
  store %struct.Memory* %loadMem_42a958, %struct.Memory** %MEMORY
  %loadMem_42a95c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3345 = getelementptr inbounds %struct.GPR, %struct.GPR* %3344, i32 0, i32 33
  %3346 = getelementptr inbounds %struct.Reg, %struct.Reg* %3345, i32 0, i32 0
  %PC.i582 = bitcast %union.anon* %3346 to i64*
  %3347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3348 = getelementptr inbounds %struct.GPR, %struct.GPR* %3347, i32 0, i32 1
  %3349 = getelementptr inbounds %struct.Reg, %struct.Reg* %3348, i32 0, i32 0
  %RAX.i583 = bitcast %union.anon* %3349 to i64*
  %3350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3351 = getelementptr inbounds %struct.GPR, %struct.GPR* %3350, i32 0, i32 5
  %3352 = getelementptr inbounds %struct.Reg, %struct.Reg* %3351, i32 0, i32 0
  %RCX.i584 = bitcast %union.anon* %3352 to i64*
  %3353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3354 = getelementptr inbounds %struct.GPR, %struct.GPR* %3353, i32 0, i32 7
  %3355 = getelementptr inbounds %struct.Reg, %struct.Reg* %3354, i32 0, i32 0
  %RDX.i585 = bitcast %union.anon* %3355 to i64*
  %3356 = load i64, i64* %RAX.i583
  %3357 = load i64, i64* %RCX.i584
  %3358 = mul i64 %3357, 4
  %3359 = add i64 %3358, %3356
  %3360 = load i64, i64* %PC.i582
  %3361 = add i64 %3360, 3
  store i64 %3361, i64* %PC.i582
  %3362 = inttoptr i64 %3359 to i32*
  %3363 = load i32, i32* %3362
  %3364 = zext i32 %3363 to i64
  store i64 %3364, i64* %RDX.i585, align 8
  store %struct.Memory* %loadMem_42a95c, %struct.Memory** %MEMORY
  %loadMem_42a95f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3366 = getelementptr inbounds %struct.GPR, %struct.GPR* %3365, i32 0, i32 33
  %3367 = getelementptr inbounds %struct.Reg, %struct.Reg* %3366, i32 0, i32 0
  %PC.i579 = bitcast %union.anon* %3367 to i64*
  %3368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3369 = getelementptr inbounds %struct.GPR, %struct.GPR* %3368, i32 0, i32 1
  %3370 = getelementptr inbounds %struct.Reg, %struct.Reg* %3369, i32 0, i32 0
  %RAX.i580 = bitcast %union.anon* %3370 to i64*
  %3371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3372 = getelementptr inbounds %struct.GPR, %struct.GPR* %3371, i32 0, i32 15
  %3373 = getelementptr inbounds %struct.Reg, %struct.Reg* %3372, i32 0, i32 0
  %RBP.i581 = bitcast %union.anon* %3373 to i64*
  %3374 = load i64, i64* %RBP.i581
  %3375 = sub i64 %3374, 8
  %3376 = load i64, i64* %PC.i579
  %3377 = add i64 %3376, 4
  store i64 %3377, i64* %PC.i579
  %3378 = inttoptr i64 %3375 to i64*
  %3379 = load i64, i64* %3378
  store i64 %3379, i64* %RAX.i580, align 8
  store %struct.Memory* %loadMem_42a95f, %struct.Memory** %MEMORY
  %loadMem_42a963 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3381 = getelementptr inbounds %struct.GPR, %struct.GPR* %3380, i32 0, i32 33
  %3382 = getelementptr inbounds %struct.Reg, %struct.Reg* %3381, i32 0, i32 0
  %PC.i577 = bitcast %union.anon* %3382 to i64*
  %3383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3384 = getelementptr inbounds %struct.GPR, %struct.GPR* %3383, i32 0, i32 1
  %3385 = getelementptr inbounds %struct.Reg, %struct.Reg* %3384, i32 0, i32 0
  %RAX.i578 = bitcast %union.anon* %3385 to i64*
  %3386 = load i64, i64* %RAX.i578
  %3387 = add i64 %3386, 24
  %3388 = load i64, i64* %PC.i577
  %3389 = add i64 %3388, 4
  store i64 %3389, i64* %PC.i577
  %3390 = inttoptr i64 %3387 to i64*
  %3391 = load i64, i64* %3390
  store i64 %3391, i64* %RAX.i578, align 8
  store %struct.Memory* %loadMem_42a963, %struct.Memory** %MEMORY
  %loadMem_42a967 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3393 = getelementptr inbounds %struct.GPR, %struct.GPR* %3392, i32 0, i32 33
  %3394 = getelementptr inbounds %struct.Reg, %struct.Reg* %3393, i32 0, i32 0
  %PC.i574 = bitcast %union.anon* %3394 to i64*
  %3395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3396 = getelementptr inbounds %struct.GPR, %struct.GPR* %3395, i32 0, i32 5
  %3397 = getelementptr inbounds %struct.Reg, %struct.Reg* %3396, i32 0, i32 0
  %RCX.i575 = bitcast %union.anon* %3397 to i64*
  %3398 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3399 = getelementptr inbounds %struct.GPR, %struct.GPR* %3398, i32 0, i32 15
  %3400 = getelementptr inbounds %struct.Reg, %struct.Reg* %3399, i32 0, i32 0
  %RBP.i576 = bitcast %union.anon* %3400 to i64*
  %3401 = load i64, i64* %RBP.i576
  %3402 = sub i64 %3401, 40
  %3403 = load i64, i64* %PC.i574
  %3404 = add i64 %3403, 4
  store i64 %3404, i64* %PC.i574
  %3405 = inttoptr i64 %3402 to i32*
  %3406 = load i32, i32* %3405
  %3407 = sext i32 %3406 to i64
  store i64 %3407, i64* %RCX.i575, align 8
  store %struct.Memory* %loadMem_42a967, %struct.Memory** %MEMORY
  %loadMem_42a96b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3409 = getelementptr inbounds %struct.GPR, %struct.GPR* %3408, i32 0, i32 33
  %3410 = getelementptr inbounds %struct.Reg, %struct.Reg* %3409, i32 0, i32 0
  %PC.i570 = bitcast %union.anon* %3410 to i64*
  %3411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3412 = getelementptr inbounds %struct.GPR, %struct.GPR* %3411, i32 0, i32 7
  %3413 = getelementptr inbounds %struct.Reg, %struct.Reg* %3412, i32 0, i32 0
  %EDX.i571 = bitcast %union.anon* %3413 to i32*
  %3414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3415 = getelementptr inbounds %struct.GPR, %struct.GPR* %3414, i32 0, i32 1
  %3416 = getelementptr inbounds %struct.Reg, %struct.Reg* %3415, i32 0, i32 0
  %RAX.i572 = bitcast %union.anon* %3416 to i64*
  %3417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3418 = getelementptr inbounds %struct.GPR, %struct.GPR* %3417, i32 0, i32 5
  %3419 = getelementptr inbounds %struct.Reg, %struct.Reg* %3418, i32 0, i32 0
  %RCX.i573 = bitcast %union.anon* %3419 to i64*
  %3420 = load i64, i64* %RAX.i572
  %3421 = load i64, i64* %RCX.i573
  %3422 = mul i64 %3421, 4
  %3423 = add i64 %3422, %3420
  %3424 = load i32, i32* %EDX.i571
  %3425 = zext i32 %3424 to i64
  %3426 = load i64, i64* %PC.i570
  %3427 = add i64 %3426, 3
  store i64 %3427, i64* %PC.i570
  %3428 = inttoptr i64 %3423 to i32*
  store i32 %3424, i32* %3428
  store %struct.Memory* %loadMem_42a96b, %struct.Memory** %MEMORY
  %loadMem_42a96e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3430 = getelementptr inbounds %struct.GPR, %struct.GPR* %3429, i32 0, i32 33
  %3431 = getelementptr inbounds %struct.Reg, %struct.Reg* %3430, i32 0, i32 0
  %PC.i567 = bitcast %union.anon* %3431 to i64*
  %3432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3433 = getelementptr inbounds %struct.GPR, %struct.GPR* %3432, i32 0, i32 7
  %3434 = getelementptr inbounds %struct.Reg, %struct.Reg* %3433, i32 0, i32 0
  %RDX.i568 = bitcast %union.anon* %3434 to i64*
  %3435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3436 = getelementptr inbounds %struct.GPR, %struct.GPR* %3435, i32 0, i32 15
  %3437 = getelementptr inbounds %struct.Reg, %struct.Reg* %3436, i32 0, i32 0
  %RBP.i569 = bitcast %union.anon* %3437 to i64*
  %3438 = load i64, i64* %RBP.i569
  %3439 = sub i64 %3438, 36
  %3440 = load i64, i64* %PC.i567
  %3441 = add i64 %3440, 3
  store i64 %3441, i64* %PC.i567
  %3442 = inttoptr i64 %3439 to i32*
  %3443 = load i32, i32* %3442
  %3444 = zext i32 %3443 to i64
  store i64 %3444, i64* %RDX.i568, align 8
  store %struct.Memory* %loadMem_42a96e, %struct.Memory** %MEMORY
  %loadMem_42a971 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3446 = getelementptr inbounds %struct.GPR, %struct.GPR* %3445, i32 0, i32 33
  %3447 = getelementptr inbounds %struct.Reg, %struct.Reg* %3446, i32 0, i32 0
  %PC.i565 = bitcast %union.anon* %3447 to i64*
  %3448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3449 = getelementptr inbounds %struct.GPR, %struct.GPR* %3448, i32 0, i32 7
  %3450 = getelementptr inbounds %struct.Reg, %struct.Reg* %3449, i32 0, i32 0
  %RDX.i566 = bitcast %union.anon* %3450 to i64*
  %3451 = load i64, i64* %RDX.i566
  %3452 = load i64, i64* %PC.i565
  %3453 = add i64 %3452, 3
  store i64 %3453, i64* %PC.i565
  %3454 = trunc i64 %3451 to i32
  %3455 = add i32 1, %3454
  %3456 = zext i32 %3455 to i64
  store i64 %3456, i64* %RDX.i566, align 8
  %3457 = icmp ult i32 %3455, %3454
  %3458 = icmp ult i32 %3455, 1
  %3459 = or i1 %3457, %3458
  %3460 = zext i1 %3459 to i8
  %3461 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3460, i8* %3461, align 1
  %3462 = and i32 %3455, 255
  %3463 = call i32 @llvm.ctpop.i32(i32 %3462)
  %3464 = trunc i32 %3463 to i8
  %3465 = and i8 %3464, 1
  %3466 = xor i8 %3465, 1
  %3467 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3466, i8* %3467, align 1
  %3468 = xor i64 1, %3451
  %3469 = trunc i64 %3468 to i32
  %3470 = xor i32 %3469, %3455
  %3471 = lshr i32 %3470, 4
  %3472 = trunc i32 %3471 to i8
  %3473 = and i8 %3472, 1
  %3474 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3473, i8* %3474, align 1
  %3475 = icmp eq i32 %3455, 0
  %3476 = zext i1 %3475 to i8
  %3477 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3476, i8* %3477, align 1
  %3478 = lshr i32 %3455, 31
  %3479 = trunc i32 %3478 to i8
  %3480 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3479, i8* %3480, align 1
  %3481 = lshr i32 %3454, 31
  %3482 = xor i32 %3478, %3481
  %3483 = add i32 %3482, %3478
  %3484 = icmp eq i32 %3483, 2
  %3485 = zext i1 %3484 to i8
  %3486 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3485, i8* %3486, align 1
  store %struct.Memory* %loadMem_42a971, %struct.Memory** %MEMORY
  %loadMem_42a974 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3488 = getelementptr inbounds %struct.GPR, %struct.GPR* %3487, i32 0, i32 33
  %3489 = getelementptr inbounds %struct.Reg, %struct.Reg* %3488, i32 0, i32 0
  %PC.i562 = bitcast %union.anon* %3489 to i64*
  %3490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3491 = getelementptr inbounds %struct.GPR, %struct.GPR* %3490, i32 0, i32 7
  %3492 = getelementptr inbounds %struct.Reg, %struct.Reg* %3491, i32 0, i32 0
  %EDX.i563 = bitcast %union.anon* %3492 to i32*
  %3493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3494 = getelementptr inbounds %struct.GPR, %struct.GPR* %3493, i32 0, i32 15
  %3495 = getelementptr inbounds %struct.Reg, %struct.Reg* %3494, i32 0, i32 0
  %RBP.i564 = bitcast %union.anon* %3495 to i64*
  %3496 = load i64, i64* %RBP.i564
  %3497 = sub i64 %3496, 36
  %3498 = load i32, i32* %EDX.i563
  %3499 = zext i32 %3498 to i64
  %3500 = load i64, i64* %PC.i562
  %3501 = add i64 %3500, 3
  store i64 %3501, i64* %PC.i562
  %3502 = inttoptr i64 %3497 to i32*
  store i32 %3498, i32* %3502
  store %struct.Memory* %loadMem_42a974, %struct.Memory** %MEMORY
  %loadMem_42a977 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3504 = getelementptr inbounds %struct.GPR, %struct.GPR* %3503, i32 0, i32 33
  %3505 = getelementptr inbounds %struct.Reg, %struct.Reg* %3504, i32 0, i32 0
  %PC.i559 = bitcast %union.anon* %3505 to i64*
  %3506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3507 = getelementptr inbounds %struct.GPR, %struct.GPR* %3506, i32 0, i32 7
  %3508 = getelementptr inbounds %struct.Reg, %struct.Reg* %3507, i32 0, i32 0
  %RDX.i560 = bitcast %union.anon* %3508 to i64*
  %3509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3510 = getelementptr inbounds %struct.GPR, %struct.GPR* %3509, i32 0, i32 15
  %3511 = getelementptr inbounds %struct.Reg, %struct.Reg* %3510, i32 0, i32 0
  %RBP.i561 = bitcast %union.anon* %3511 to i64*
  %3512 = load i64, i64* %RBP.i561
  %3513 = sub i64 %3512, 40
  %3514 = load i64, i64* %PC.i559
  %3515 = add i64 %3514, 3
  store i64 %3515, i64* %PC.i559
  %3516 = inttoptr i64 %3513 to i32*
  %3517 = load i32, i32* %3516
  %3518 = zext i32 %3517 to i64
  store i64 %3518, i64* %RDX.i560, align 8
  store %struct.Memory* %loadMem_42a977, %struct.Memory** %MEMORY
  %loadMem_42a97a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3520 = getelementptr inbounds %struct.GPR, %struct.GPR* %3519, i32 0, i32 33
  %3521 = getelementptr inbounds %struct.Reg, %struct.Reg* %3520, i32 0, i32 0
  %PC.i557 = bitcast %union.anon* %3521 to i64*
  %3522 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3523 = getelementptr inbounds %struct.GPR, %struct.GPR* %3522, i32 0, i32 7
  %3524 = getelementptr inbounds %struct.Reg, %struct.Reg* %3523, i32 0, i32 0
  %RDX.i558 = bitcast %union.anon* %3524 to i64*
  %3525 = load i64, i64* %RDX.i558
  %3526 = load i64, i64* %PC.i557
  %3527 = add i64 %3526, 3
  store i64 %3527, i64* %PC.i557
  %3528 = trunc i64 %3525 to i32
  %3529 = add i32 1, %3528
  %3530 = zext i32 %3529 to i64
  store i64 %3530, i64* %RDX.i558, align 8
  %3531 = icmp ult i32 %3529, %3528
  %3532 = icmp ult i32 %3529, 1
  %3533 = or i1 %3531, %3532
  %3534 = zext i1 %3533 to i8
  %3535 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3534, i8* %3535, align 1
  %3536 = and i32 %3529, 255
  %3537 = call i32 @llvm.ctpop.i32(i32 %3536)
  %3538 = trunc i32 %3537 to i8
  %3539 = and i8 %3538, 1
  %3540 = xor i8 %3539, 1
  %3541 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3540, i8* %3541, align 1
  %3542 = xor i64 1, %3525
  %3543 = trunc i64 %3542 to i32
  %3544 = xor i32 %3543, %3529
  %3545 = lshr i32 %3544, 4
  %3546 = trunc i32 %3545 to i8
  %3547 = and i8 %3546, 1
  %3548 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3547, i8* %3548, align 1
  %3549 = icmp eq i32 %3529, 0
  %3550 = zext i1 %3549 to i8
  %3551 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3550, i8* %3551, align 1
  %3552 = lshr i32 %3529, 31
  %3553 = trunc i32 %3552 to i8
  %3554 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3553, i8* %3554, align 1
  %3555 = lshr i32 %3528, 31
  %3556 = xor i32 %3552, %3555
  %3557 = add i32 %3556, %3552
  %3558 = icmp eq i32 %3557, 2
  %3559 = zext i1 %3558 to i8
  %3560 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3559, i8* %3560, align 1
  store %struct.Memory* %loadMem_42a97a, %struct.Memory** %MEMORY
  %loadMem_42a97d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3562 = getelementptr inbounds %struct.GPR, %struct.GPR* %3561, i32 0, i32 33
  %3563 = getelementptr inbounds %struct.Reg, %struct.Reg* %3562, i32 0, i32 0
  %PC.i554 = bitcast %union.anon* %3563 to i64*
  %3564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3565 = getelementptr inbounds %struct.GPR, %struct.GPR* %3564, i32 0, i32 7
  %3566 = getelementptr inbounds %struct.Reg, %struct.Reg* %3565, i32 0, i32 0
  %EDX.i555 = bitcast %union.anon* %3566 to i32*
  %3567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3568 = getelementptr inbounds %struct.GPR, %struct.GPR* %3567, i32 0, i32 15
  %3569 = getelementptr inbounds %struct.Reg, %struct.Reg* %3568, i32 0, i32 0
  %RBP.i556 = bitcast %union.anon* %3569 to i64*
  %3570 = load i64, i64* %RBP.i556
  %3571 = sub i64 %3570, 40
  %3572 = load i32, i32* %EDX.i555
  %3573 = zext i32 %3572 to i64
  %3574 = load i64, i64* %PC.i554
  %3575 = add i64 %3574, 3
  store i64 %3575, i64* %PC.i554
  %3576 = inttoptr i64 %3571 to i32*
  store i32 %3572, i32* %3576
  store %struct.Memory* %loadMem_42a97d, %struct.Memory** %MEMORY
  %loadMem_42a980 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3578 = getelementptr inbounds %struct.GPR, %struct.GPR* %3577, i32 0, i32 33
  %3579 = getelementptr inbounds %struct.Reg, %struct.Reg* %3578, i32 0, i32 0
  %PC.i553 = bitcast %union.anon* %3579 to i64*
  %3580 = load i64, i64* %PC.i553
  %3581 = add i64 %3580, 742
  %3582 = load i64, i64* %PC.i553
  %3583 = add i64 %3582, 5
  store i64 %3583, i64* %PC.i553
  %3584 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3581, i64* %3584, align 8
  store %struct.Memory* %loadMem_42a980, %struct.Memory** %MEMORY
  br label %block_.L_42ac66

block_.L_42a985:                                  ; preds = %block_42a901, %block_.L_42a8e8
  %loadMem_42a985 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3586 = getelementptr inbounds %struct.GPR, %struct.GPR* %3585, i32 0, i32 33
  %3587 = getelementptr inbounds %struct.Reg, %struct.Reg* %3586, i32 0, i32 0
  %PC.i550 = bitcast %union.anon* %3587 to i64*
  %3588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3589 = getelementptr inbounds %struct.GPR, %struct.GPR* %3588, i32 0, i32 1
  %3590 = getelementptr inbounds %struct.Reg, %struct.Reg* %3589, i32 0, i32 0
  %RAX.i551 = bitcast %union.anon* %3590 to i64*
  %3591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3592 = getelementptr inbounds %struct.GPR, %struct.GPR* %3591, i32 0, i32 15
  %3593 = getelementptr inbounds %struct.Reg, %struct.Reg* %3592, i32 0, i32 0
  %RBP.i552 = bitcast %union.anon* %3593 to i64*
  %3594 = load i64, i64* %RBP.i552
  %3595 = sub i64 %3594, 8
  %3596 = load i64, i64* %PC.i550
  %3597 = add i64 %3596, 4
  store i64 %3597, i64* %PC.i550
  %3598 = inttoptr i64 %3595 to i64*
  %3599 = load i64, i64* %3598
  store i64 %3599, i64* %RAX.i551, align 8
  store %struct.Memory* %loadMem_42a985, %struct.Memory** %MEMORY
  %loadMem_42a989 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3601 = getelementptr inbounds %struct.GPR, %struct.GPR* %3600, i32 0, i32 33
  %3602 = getelementptr inbounds %struct.Reg, %struct.Reg* %3601, i32 0, i32 0
  %PC.i548 = bitcast %union.anon* %3602 to i64*
  %3603 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3604 = getelementptr inbounds %struct.GPR, %struct.GPR* %3603, i32 0, i32 1
  %3605 = getelementptr inbounds %struct.Reg, %struct.Reg* %3604, i32 0, i32 0
  %RAX.i549 = bitcast %union.anon* %3605 to i64*
  %3606 = load i64, i64* %RAX.i549
  %3607 = add i64 %3606, 8
  %3608 = load i64, i64* %PC.i548
  %3609 = add i64 %3608, 4
  store i64 %3609, i64* %PC.i548
  %3610 = inttoptr i64 %3607 to i64*
  %3611 = load i64, i64* %3610
  store i64 %3611, i64* %RAX.i549, align 8
  store %struct.Memory* %loadMem_42a989, %struct.Memory** %MEMORY
  %loadMem_42a98d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3613 = getelementptr inbounds %struct.GPR, %struct.GPR* %3612, i32 0, i32 33
  %3614 = getelementptr inbounds %struct.Reg, %struct.Reg* %3613, i32 0, i32 0
  %PC.i545 = bitcast %union.anon* %3614 to i64*
  %3615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3616 = getelementptr inbounds %struct.GPR, %struct.GPR* %3615, i32 0, i32 5
  %3617 = getelementptr inbounds %struct.Reg, %struct.Reg* %3616, i32 0, i32 0
  %RCX.i546 = bitcast %union.anon* %3617 to i64*
  %3618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3619 = getelementptr inbounds %struct.GPR, %struct.GPR* %3618, i32 0, i32 15
  %3620 = getelementptr inbounds %struct.Reg, %struct.Reg* %3619, i32 0, i32 0
  %RBP.i547 = bitcast %union.anon* %3620 to i64*
  %3621 = load i64, i64* %RBP.i547
  %3622 = sub i64 %3621, 36
  %3623 = load i64, i64* %PC.i545
  %3624 = add i64 %3623, 4
  store i64 %3624, i64* %PC.i545
  %3625 = inttoptr i64 %3622 to i32*
  %3626 = load i32, i32* %3625
  %3627 = sext i32 %3626 to i64
  store i64 %3627, i64* %RCX.i546, align 8
  store %struct.Memory* %loadMem_42a98d, %struct.Memory** %MEMORY
  %loadMem_42a991 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3629 = getelementptr inbounds %struct.GPR, %struct.GPR* %3628, i32 0, i32 33
  %3630 = getelementptr inbounds %struct.Reg, %struct.Reg* %3629, i32 0, i32 0
  %PC.i541 = bitcast %union.anon* %3630 to i64*
  %3631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3632 = getelementptr inbounds %struct.GPR, %struct.GPR* %3631, i32 0, i32 1
  %3633 = getelementptr inbounds %struct.Reg, %struct.Reg* %3632, i32 0, i32 0
  %RAX.i542 = bitcast %union.anon* %3633 to i64*
  %3634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3635 = getelementptr inbounds %struct.GPR, %struct.GPR* %3634, i32 0, i32 5
  %3636 = getelementptr inbounds %struct.Reg, %struct.Reg* %3635, i32 0, i32 0
  %RCX.i543 = bitcast %union.anon* %3636 to i64*
  %3637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3638 = getelementptr inbounds %struct.GPR, %struct.GPR* %3637, i32 0, i32 7
  %3639 = getelementptr inbounds %struct.Reg, %struct.Reg* %3638, i32 0, i32 0
  %RDX.i544 = bitcast %union.anon* %3639 to i64*
  %3640 = load i64, i64* %RAX.i542
  %3641 = load i64, i64* %RCX.i543
  %3642 = add i64 %3641, %3640
  %3643 = load i64, i64* %PC.i541
  %3644 = add i64 %3643, 4
  store i64 %3644, i64* %PC.i541
  %3645 = inttoptr i64 %3642 to i8*
  %3646 = load i8, i8* %3645
  %3647 = sext i8 %3646 to i64
  %3648 = and i64 %3647, 4294967295
  store i64 %3648, i64* %RDX.i544, align 8
  store %struct.Memory* %loadMem_42a991, %struct.Memory** %MEMORY
  %loadMem_42a995 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3650 = getelementptr inbounds %struct.GPR, %struct.GPR* %3649, i32 0, i32 33
  %3651 = getelementptr inbounds %struct.Reg, %struct.Reg* %3650, i32 0, i32 0
  %PC.i539 = bitcast %union.anon* %3651 to i64*
  %3652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3653 = getelementptr inbounds %struct.GPR, %struct.GPR* %3652, i32 0, i32 7
  %3654 = getelementptr inbounds %struct.Reg, %struct.Reg* %3653, i32 0, i32 0
  %EDX.i540 = bitcast %union.anon* %3654 to i32*
  %3655 = load i32, i32* %EDX.i540
  %3656 = zext i32 %3655 to i64
  %3657 = load i64, i64* %PC.i539
  %3658 = add i64 %3657, 3
  store i64 %3658, i64* %PC.i539
  %3659 = sub i32 %3655, 6
  %3660 = icmp ult i32 %3655, 6
  %3661 = zext i1 %3660 to i8
  %3662 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3661, i8* %3662, align 1
  %3663 = and i32 %3659, 255
  %3664 = call i32 @llvm.ctpop.i32(i32 %3663)
  %3665 = trunc i32 %3664 to i8
  %3666 = and i8 %3665, 1
  %3667 = xor i8 %3666, 1
  %3668 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3667, i8* %3668, align 1
  %3669 = xor i64 6, %3656
  %3670 = trunc i64 %3669 to i32
  %3671 = xor i32 %3670, %3659
  %3672 = lshr i32 %3671, 4
  %3673 = trunc i32 %3672 to i8
  %3674 = and i8 %3673, 1
  %3675 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3674, i8* %3675, align 1
  %3676 = icmp eq i32 %3659, 0
  %3677 = zext i1 %3676 to i8
  %3678 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3677, i8* %3678, align 1
  %3679 = lshr i32 %3659, 31
  %3680 = trunc i32 %3679 to i8
  %3681 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3680, i8* %3681, align 1
  %3682 = lshr i32 %3655, 31
  %3683 = xor i32 %3679, %3682
  %3684 = add i32 %3683, %3682
  %3685 = icmp eq i32 %3684, 2
  %3686 = zext i1 %3685 to i8
  %3687 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3686, i8* %3687, align 1
  store %struct.Memory* %loadMem_42a995, %struct.Memory** %MEMORY
  %loadMem_42a998 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3689 = getelementptr inbounds %struct.GPR, %struct.GPR* %3688, i32 0, i32 33
  %3690 = getelementptr inbounds %struct.Reg, %struct.Reg* %3689, i32 0, i32 0
  %PC.i538 = bitcast %union.anon* %3690 to i64*
  %3691 = load i64, i64* %PC.i538
  %3692 = add i64 %3691, 255
  %3693 = load i64, i64* %PC.i538
  %3694 = add i64 %3693, 6
  %3695 = load i64, i64* %PC.i538
  %3696 = add i64 %3695, 6
  store i64 %3696, i64* %PC.i538
  %3697 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3698 = load i8, i8* %3697, align 1
  %3699 = icmp eq i8 %3698, 0
  %3700 = zext i1 %3699 to i8
  store i8 %3700, i8* %BRANCH_TAKEN, align 1
  %3701 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3702 = select i1 %3699, i64 %3692, i64 %3694
  store i64 %3702, i64* %3701, align 8
  store %struct.Memory* %loadMem_42a998, %struct.Memory** %MEMORY
  %loadBr_42a998 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42a998 = icmp eq i8 %loadBr_42a998, 1
  br i1 %cmpBr_42a998, label %block_.L_42aa97, label %block_42a99e

block_42a99e:                                     ; preds = %block_.L_42a985
  %loadMem_42a99e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3704 = getelementptr inbounds %struct.GPR, %struct.GPR* %3703, i32 0, i32 33
  %3705 = getelementptr inbounds %struct.Reg, %struct.Reg* %3704, i32 0, i32 0
  %PC.i535 = bitcast %union.anon* %3705 to i64*
  %3706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3707 = getelementptr inbounds %struct.GPR, %struct.GPR* %3706, i32 0, i32 1
  %3708 = getelementptr inbounds %struct.Reg, %struct.Reg* %3707, i32 0, i32 0
  %RAX.i536 = bitcast %union.anon* %3708 to i64*
  %3709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3710 = getelementptr inbounds %struct.GPR, %struct.GPR* %3709, i32 0, i32 15
  %3711 = getelementptr inbounds %struct.Reg, %struct.Reg* %3710, i32 0, i32 0
  %RBP.i537 = bitcast %union.anon* %3711 to i64*
  %3712 = load i64, i64* %RBP.i537
  %3713 = sub i64 %3712, 8
  %3714 = load i64, i64* %PC.i535
  %3715 = add i64 %3714, 4
  store i64 %3715, i64* %PC.i535
  %3716 = inttoptr i64 %3713 to i64*
  %3717 = load i64, i64* %3716
  store i64 %3717, i64* %RAX.i536, align 8
  store %struct.Memory* %loadMem_42a99e, %struct.Memory** %MEMORY
  %loadMem_42a9a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3719 = getelementptr inbounds %struct.GPR, %struct.GPR* %3718, i32 0, i32 33
  %3720 = getelementptr inbounds %struct.Reg, %struct.Reg* %3719, i32 0, i32 0
  %PC.i533 = bitcast %union.anon* %3720 to i64*
  %3721 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3722 = getelementptr inbounds %struct.GPR, %struct.GPR* %3721, i32 0, i32 1
  %3723 = getelementptr inbounds %struct.Reg, %struct.Reg* %3722, i32 0, i32 0
  %RAX.i534 = bitcast %union.anon* %3723 to i64*
  %3724 = load i64, i64* %RAX.i534
  %3725 = add i64 %3724, 8
  %3726 = load i64, i64* %PC.i533
  %3727 = add i64 %3726, 4
  store i64 %3727, i64* %PC.i533
  %3728 = inttoptr i64 %3725 to i64*
  %3729 = load i64, i64* %3728
  store i64 %3729, i64* %RAX.i534, align 8
  store %struct.Memory* %loadMem_42a9a2, %struct.Memory** %MEMORY
  %loadMem_42a9a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3731 = getelementptr inbounds %struct.GPR, %struct.GPR* %3730, i32 0, i32 33
  %3732 = getelementptr inbounds %struct.Reg, %struct.Reg* %3731, i32 0, i32 0
  %PC.i530 = bitcast %union.anon* %3732 to i64*
  %3733 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3734 = getelementptr inbounds %struct.GPR, %struct.GPR* %3733, i32 0, i32 5
  %3735 = getelementptr inbounds %struct.Reg, %struct.Reg* %3734, i32 0, i32 0
  %RCX.i531 = bitcast %union.anon* %3735 to i64*
  %3736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3737 = getelementptr inbounds %struct.GPR, %struct.GPR* %3736, i32 0, i32 15
  %3738 = getelementptr inbounds %struct.Reg, %struct.Reg* %3737, i32 0, i32 0
  %RBP.i532 = bitcast %union.anon* %3738 to i64*
  %3739 = load i64, i64* %RBP.i532
  %3740 = sub i64 %3739, 36
  %3741 = load i64, i64* %PC.i530
  %3742 = add i64 %3741, 3
  store i64 %3742, i64* %PC.i530
  %3743 = inttoptr i64 %3740 to i32*
  %3744 = load i32, i32* %3743
  %3745 = zext i32 %3744 to i64
  store i64 %3745, i64* %RCX.i531, align 8
  store %struct.Memory* %loadMem_42a9a6, %struct.Memory** %MEMORY
  %loadMem_42a9a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3747 = getelementptr inbounds %struct.GPR, %struct.GPR* %3746, i32 0, i32 33
  %3748 = getelementptr inbounds %struct.Reg, %struct.Reg* %3747, i32 0, i32 0
  %PC.i528 = bitcast %union.anon* %3748 to i64*
  %3749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3750 = getelementptr inbounds %struct.GPR, %struct.GPR* %3749, i32 0, i32 5
  %3751 = getelementptr inbounds %struct.Reg, %struct.Reg* %3750, i32 0, i32 0
  %RCX.i529 = bitcast %union.anon* %3751 to i64*
  %3752 = load i64, i64* %RCX.i529
  %3753 = load i64, i64* %PC.i528
  %3754 = add i64 %3753, 3
  store i64 %3754, i64* %PC.i528
  %3755 = trunc i64 %3752 to i32
  %3756 = add i32 1, %3755
  %3757 = zext i32 %3756 to i64
  store i64 %3757, i64* %RCX.i529, align 8
  %3758 = icmp ult i32 %3756, %3755
  %3759 = icmp ult i32 %3756, 1
  %3760 = or i1 %3758, %3759
  %3761 = zext i1 %3760 to i8
  %3762 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3761, i8* %3762, align 1
  %3763 = and i32 %3756, 255
  %3764 = call i32 @llvm.ctpop.i32(i32 %3763)
  %3765 = trunc i32 %3764 to i8
  %3766 = and i8 %3765, 1
  %3767 = xor i8 %3766, 1
  %3768 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3767, i8* %3768, align 1
  %3769 = xor i64 1, %3752
  %3770 = trunc i64 %3769 to i32
  %3771 = xor i32 %3770, %3756
  %3772 = lshr i32 %3771, 4
  %3773 = trunc i32 %3772 to i8
  %3774 = and i8 %3773, 1
  %3775 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3774, i8* %3775, align 1
  %3776 = icmp eq i32 %3756, 0
  %3777 = zext i1 %3776 to i8
  %3778 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3777, i8* %3778, align 1
  %3779 = lshr i32 %3756, 31
  %3780 = trunc i32 %3779 to i8
  %3781 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3780, i8* %3781, align 1
  %3782 = lshr i32 %3755, 31
  %3783 = xor i32 %3779, %3782
  %3784 = add i32 %3783, %3779
  %3785 = icmp eq i32 %3784, 2
  %3786 = zext i1 %3785 to i8
  %3787 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3786, i8* %3787, align 1
  store %struct.Memory* %loadMem_42a9a9, %struct.Memory** %MEMORY
  %loadMem_42a9ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %3788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3789 = getelementptr inbounds %struct.GPR, %struct.GPR* %3788, i32 0, i32 33
  %3790 = getelementptr inbounds %struct.Reg, %struct.Reg* %3789, i32 0, i32 0
  %PC.i525 = bitcast %union.anon* %3790 to i64*
  %3791 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3792 = getelementptr inbounds %struct.GPR, %struct.GPR* %3791, i32 0, i32 5
  %3793 = getelementptr inbounds %struct.Reg, %struct.Reg* %3792, i32 0, i32 0
  %ECX.i526 = bitcast %union.anon* %3793 to i32*
  %3794 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3795 = getelementptr inbounds %struct.GPR, %struct.GPR* %3794, i32 0, i32 7
  %3796 = getelementptr inbounds %struct.Reg, %struct.Reg* %3795, i32 0, i32 0
  %RDX.i527 = bitcast %union.anon* %3796 to i64*
  %3797 = load i32, i32* %ECX.i526
  %3798 = zext i32 %3797 to i64
  %3799 = load i64, i64* %PC.i525
  %3800 = add i64 %3799, 3
  store i64 %3800, i64* %PC.i525
  %3801 = shl i64 %3798, 32
  %3802 = ashr exact i64 %3801, 32
  store i64 %3802, i64* %RDX.i527, align 8
  store %struct.Memory* %loadMem_42a9ac, %struct.Memory** %MEMORY
  %loadMem_42a9af = load %struct.Memory*, %struct.Memory** %MEMORY
  %3803 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3804 = getelementptr inbounds %struct.GPR, %struct.GPR* %3803, i32 0, i32 33
  %3805 = getelementptr inbounds %struct.Reg, %struct.Reg* %3804, i32 0, i32 0
  %PC.i521 = bitcast %union.anon* %3805 to i64*
  %3806 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3807 = getelementptr inbounds %struct.GPR, %struct.GPR* %3806, i32 0, i32 1
  %3808 = getelementptr inbounds %struct.Reg, %struct.Reg* %3807, i32 0, i32 0
  %RAX.i522 = bitcast %union.anon* %3808 to i64*
  %3809 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3810 = getelementptr inbounds %struct.GPR, %struct.GPR* %3809, i32 0, i32 5
  %3811 = getelementptr inbounds %struct.Reg, %struct.Reg* %3810, i32 0, i32 0
  %RCX.i523 = bitcast %union.anon* %3811 to i64*
  %3812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3813 = getelementptr inbounds %struct.GPR, %struct.GPR* %3812, i32 0, i32 7
  %3814 = getelementptr inbounds %struct.Reg, %struct.Reg* %3813, i32 0, i32 0
  %RDX.i524 = bitcast %union.anon* %3814 to i64*
  %3815 = load i64, i64* %RAX.i522
  %3816 = load i64, i64* %RDX.i524
  %3817 = add i64 %3816, %3815
  %3818 = load i64, i64* %PC.i521
  %3819 = add i64 %3818, 4
  store i64 %3819, i64* %PC.i521
  %3820 = inttoptr i64 %3817 to i8*
  %3821 = load i8, i8* %3820
  %3822 = sext i8 %3821 to i64
  %3823 = and i64 %3822, 4294967295
  store i64 %3823, i64* %RCX.i523, align 8
  store %struct.Memory* %loadMem_42a9af, %struct.Memory** %MEMORY
  %loadMem_42a9b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3825 = getelementptr inbounds %struct.GPR, %struct.GPR* %3824, i32 0, i32 33
  %3826 = getelementptr inbounds %struct.Reg, %struct.Reg* %3825, i32 0, i32 0
  %PC.i519 = bitcast %union.anon* %3826 to i64*
  %3827 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3828 = getelementptr inbounds %struct.GPR, %struct.GPR* %3827, i32 0, i32 5
  %3829 = getelementptr inbounds %struct.Reg, %struct.Reg* %3828, i32 0, i32 0
  %ECX.i520 = bitcast %union.anon* %3829 to i32*
  %3830 = load i32, i32* %ECX.i520
  %3831 = zext i32 %3830 to i64
  %3832 = load i64, i64* %PC.i519
  %3833 = add i64 %3832, 3
  store i64 %3833, i64* %PC.i519
  %3834 = sub i32 %3830, 7
  %3835 = icmp ult i32 %3830, 7
  %3836 = zext i1 %3835 to i8
  %3837 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3836, i8* %3837, align 1
  %3838 = and i32 %3834, 255
  %3839 = call i32 @llvm.ctpop.i32(i32 %3838)
  %3840 = trunc i32 %3839 to i8
  %3841 = and i8 %3840, 1
  %3842 = xor i8 %3841, 1
  %3843 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3842, i8* %3843, align 1
  %3844 = xor i64 7, %3831
  %3845 = trunc i64 %3844 to i32
  %3846 = xor i32 %3845, %3834
  %3847 = lshr i32 %3846, 4
  %3848 = trunc i32 %3847 to i8
  %3849 = and i8 %3848, 1
  %3850 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3849, i8* %3850, align 1
  %3851 = icmp eq i32 %3834, 0
  %3852 = zext i1 %3851 to i8
  %3853 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3852, i8* %3853, align 1
  %3854 = lshr i32 %3834, 31
  %3855 = trunc i32 %3854 to i8
  %3856 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3855, i8* %3856, align 1
  %3857 = lshr i32 %3830, 31
  %3858 = xor i32 %3854, %3857
  %3859 = add i32 %3858, %3857
  %3860 = icmp eq i32 %3859, 2
  %3861 = zext i1 %3860 to i8
  %3862 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3861, i8* %3862, align 1
  store %struct.Memory* %loadMem_42a9b3, %struct.Memory** %MEMORY
  %loadMem_42a9b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3864 = getelementptr inbounds %struct.GPR, %struct.GPR* %3863, i32 0, i32 33
  %3865 = getelementptr inbounds %struct.Reg, %struct.Reg* %3864, i32 0, i32 0
  %PC.i518 = bitcast %union.anon* %3865 to i64*
  %3866 = load i64, i64* %PC.i518
  %3867 = add i64 %3866, 225
  %3868 = load i64, i64* %PC.i518
  %3869 = add i64 %3868, 6
  %3870 = load i64, i64* %PC.i518
  %3871 = add i64 %3870, 6
  store i64 %3871, i64* %PC.i518
  %3872 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3873 = load i8, i8* %3872, align 1
  %3874 = icmp eq i8 %3873, 0
  %3875 = zext i1 %3874 to i8
  store i8 %3875, i8* %BRANCH_TAKEN, align 1
  %3876 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3877 = select i1 %3874, i64 %3867, i64 %3869
  store i64 %3877, i64* %3876, align 8
  store %struct.Memory* %loadMem_42a9b6, %struct.Memory** %MEMORY
  %loadBr_42a9b6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42a9b6 = icmp eq i8 %loadBr_42a9b6, 1
  br i1 %cmpBr_42a9b6, label %block_.L_42aa97, label %block_42a9bc

block_42a9bc:                                     ; preds = %block_42a99e
  %loadMem_42a9bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %3878 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3879 = getelementptr inbounds %struct.GPR, %struct.GPR* %3878, i32 0, i32 33
  %3880 = getelementptr inbounds %struct.Reg, %struct.Reg* %3879, i32 0, i32 0
  %PC.i515 = bitcast %union.anon* %3880 to i64*
  %3881 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3882 = getelementptr inbounds %struct.GPR, %struct.GPR* %3881, i32 0, i32 1
  %3883 = getelementptr inbounds %struct.Reg, %struct.Reg* %3882, i32 0, i32 0
  %RAX.i516 = bitcast %union.anon* %3883 to i64*
  %3884 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3885 = getelementptr inbounds %struct.GPR, %struct.GPR* %3884, i32 0, i32 15
  %3886 = getelementptr inbounds %struct.Reg, %struct.Reg* %3885, i32 0, i32 0
  %RBP.i517 = bitcast %union.anon* %3886 to i64*
  %3887 = load i64, i64* %RBP.i517
  %3888 = sub i64 %3887, 8
  %3889 = load i64, i64* %PC.i515
  %3890 = add i64 %3889, 4
  store i64 %3890, i64* %PC.i515
  %3891 = inttoptr i64 %3888 to i64*
  %3892 = load i64, i64* %3891
  store i64 %3892, i64* %RAX.i516, align 8
  store %struct.Memory* %loadMem_42a9bc, %struct.Memory** %MEMORY
  %loadMem_42a9c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3893 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3894 = getelementptr inbounds %struct.GPR, %struct.GPR* %3893, i32 0, i32 33
  %3895 = getelementptr inbounds %struct.Reg, %struct.Reg* %3894, i32 0, i32 0
  %PC.i513 = bitcast %union.anon* %3895 to i64*
  %3896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3897 = getelementptr inbounds %struct.GPR, %struct.GPR* %3896, i32 0, i32 1
  %3898 = getelementptr inbounds %struct.Reg, %struct.Reg* %3897, i32 0, i32 0
  %RAX.i514 = bitcast %union.anon* %3898 to i64*
  %3899 = load i64, i64* %RAX.i514
  %3900 = add i64 %3899, 8
  %3901 = load i64, i64* %PC.i513
  %3902 = add i64 %3901, 4
  store i64 %3902, i64* %PC.i513
  %3903 = inttoptr i64 %3900 to i64*
  %3904 = load i64, i64* %3903
  store i64 %3904, i64* %RAX.i514, align 8
  store %struct.Memory* %loadMem_42a9c0, %struct.Memory** %MEMORY
  %loadMem_42a9c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3905 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3906 = getelementptr inbounds %struct.GPR, %struct.GPR* %3905, i32 0, i32 33
  %3907 = getelementptr inbounds %struct.Reg, %struct.Reg* %3906, i32 0, i32 0
  %PC.i510 = bitcast %union.anon* %3907 to i64*
  %3908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3909 = getelementptr inbounds %struct.GPR, %struct.GPR* %3908, i32 0, i32 5
  %3910 = getelementptr inbounds %struct.Reg, %struct.Reg* %3909, i32 0, i32 0
  %RCX.i511 = bitcast %union.anon* %3910 to i64*
  %3911 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3912 = getelementptr inbounds %struct.GPR, %struct.GPR* %3911, i32 0, i32 15
  %3913 = getelementptr inbounds %struct.Reg, %struct.Reg* %3912, i32 0, i32 0
  %RBP.i512 = bitcast %union.anon* %3913 to i64*
  %3914 = load i64, i64* %RBP.i512
  %3915 = sub i64 %3914, 36
  %3916 = load i64, i64* %PC.i510
  %3917 = add i64 %3916, 3
  store i64 %3917, i64* %PC.i510
  %3918 = inttoptr i64 %3915 to i32*
  %3919 = load i32, i32* %3918
  %3920 = zext i32 %3919 to i64
  store i64 %3920, i64* %RCX.i511, align 8
  store %struct.Memory* %loadMem_42a9c4, %struct.Memory** %MEMORY
  %loadMem_42a9c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3921 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3922 = getelementptr inbounds %struct.GPR, %struct.GPR* %3921, i32 0, i32 33
  %3923 = getelementptr inbounds %struct.Reg, %struct.Reg* %3922, i32 0, i32 0
  %PC.i508 = bitcast %union.anon* %3923 to i64*
  %3924 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3925 = getelementptr inbounds %struct.GPR, %struct.GPR* %3924, i32 0, i32 5
  %3926 = getelementptr inbounds %struct.Reg, %struct.Reg* %3925, i32 0, i32 0
  %RCX.i509 = bitcast %union.anon* %3926 to i64*
  %3927 = load i64, i64* %RCX.i509
  %3928 = load i64, i64* %PC.i508
  %3929 = add i64 %3928, 3
  store i64 %3929, i64* %PC.i508
  %3930 = trunc i64 %3927 to i32
  %3931 = sub i32 %3930, 1
  %3932 = zext i32 %3931 to i64
  store i64 %3932, i64* %RCX.i509, align 8
  %3933 = icmp ult i32 %3930, 1
  %3934 = zext i1 %3933 to i8
  %3935 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3934, i8* %3935, align 1
  %3936 = and i32 %3931, 255
  %3937 = call i32 @llvm.ctpop.i32(i32 %3936)
  %3938 = trunc i32 %3937 to i8
  %3939 = and i8 %3938, 1
  %3940 = xor i8 %3939, 1
  %3941 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3940, i8* %3941, align 1
  %3942 = xor i64 1, %3927
  %3943 = trunc i64 %3942 to i32
  %3944 = xor i32 %3943, %3931
  %3945 = lshr i32 %3944, 4
  %3946 = trunc i32 %3945 to i8
  %3947 = and i8 %3946, 1
  %3948 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3947, i8* %3948, align 1
  %3949 = icmp eq i32 %3931, 0
  %3950 = zext i1 %3949 to i8
  %3951 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3950, i8* %3951, align 1
  %3952 = lshr i32 %3931, 31
  %3953 = trunc i32 %3952 to i8
  %3954 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3953, i8* %3954, align 1
  %3955 = lshr i32 %3930, 31
  %3956 = xor i32 %3952, %3955
  %3957 = add i32 %3956, %3955
  %3958 = icmp eq i32 %3957, 2
  %3959 = zext i1 %3958 to i8
  %3960 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3959, i8* %3960, align 1
  store %struct.Memory* %loadMem_42a9c7, %struct.Memory** %MEMORY
  %loadMem_42a9ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %3961 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3962 = getelementptr inbounds %struct.GPR, %struct.GPR* %3961, i32 0, i32 33
  %3963 = getelementptr inbounds %struct.Reg, %struct.Reg* %3962, i32 0, i32 0
  %PC.i505 = bitcast %union.anon* %3963 to i64*
  %3964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3965 = getelementptr inbounds %struct.GPR, %struct.GPR* %3964, i32 0, i32 5
  %3966 = getelementptr inbounds %struct.Reg, %struct.Reg* %3965, i32 0, i32 0
  %ECX.i506 = bitcast %union.anon* %3966 to i32*
  %3967 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3968 = getelementptr inbounds %struct.GPR, %struct.GPR* %3967, i32 0, i32 7
  %3969 = getelementptr inbounds %struct.Reg, %struct.Reg* %3968, i32 0, i32 0
  %RDX.i507 = bitcast %union.anon* %3969 to i64*
  %3970 = load i32, i32* %ECX.i506
  %3971 = zext i32 %3970 to i64
  %3972 = load i64, i64* %PC.i505
  %3973 = add i64 %3972, 3
  store i64 %3973, i64* %PC.i505
  %3974 = shl i64 %3971, 32
  %3975 = ashr exact i64 %3974, 32
  store i64 %3975, i64* %RDX.i507, align 8
  store %struct.Memory* %loadMem_42a9ca, %struct.Memory** %MEMORY
  %loadMem_42a9cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %3976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3977 = getelementptr inbounds %struct.GPR, %struct.GPR* %3976, i32 0, i32 33
  %3978 = getelementptr inbounds %struct.Reg, %struct.Reg* %3977, i32 0, i32 0
  %PC.i501 = bitcast %union.anon* %3978 to i64*
  %3979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3980 = getelementptr inbounds %struct.GPR, %struct.GPR* %3979, i32 0, i32 1
  %3981 = getelementptr inbounds %struct.Reg, %struct.Reg* %3980, i32 0, i32 0
  %RAX.i502 = bitcast %union.anon* %3981 to i64*
  %3982 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3983 = getelementptr inbounds %struct.GPR, %struct.GPR* %3982, i32 0, i32 5
  %3984 = getelementptr inbounds %struct.Reg, %struct.Reg* %3983, i32 0, i32 0
  %RCX.i503 = bitcast %union.anon* %3984 to i64*
  %3985 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3986 = getelementptr inbounds %struct.GPR, %struct.GPR* %3985, i32 0, i32 7
  %3987 = getelementptr inbounds %struct.Reg, %struct.Reg* %3986, i32 0, i32 0
  %RDX.i504 = bitcast %union.anon* %3987 to i64*
  %3988 = load i64, i64* %RAX.i502
  %3989 = load i64, i64* %RDX.i504
  %3990 = add i64 %3989, %3988
  %3991 = load i64, i64* %PC.i501
  %3992 = add i64 %3991, 4
  store i64 %3992, i64* %PC.i501
  %3993 = inttoptr i64 %3990 to i8*
  %3994 = load i8, i8* %3993
  %3995 = sext i8 %3994 to i64
  %3996 = and i64 %3995, 4294967295
  store i64 %3996, i64* %RCX.i503, align 8
  store %struct.Memory* %loadMem_42a9cd, %struct.Memory** %MEMORY
  %loadMem_42a9d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3998 = getelementptr inbounds %struct.GPR, %struct.GPR* %3997, i32 0, i32 33
  %3999 = getelementptr inbounds %struct.Reg, %struct.Reg* %3998, i32 0, i32 0
  %PC.i499 = bitcast %union.anon* %3999 to i64*
  %4000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4001 = getelementptr inbounds %struct.GPR, %struct.GPR* %4000, i32 0, i32 5
  %4002 = getelementptr inbounds %struct.Reg, %struct.Reg* %4001, i32 0, i32 0
  %ECX.i500 = bitcast %union.anon* %4002 to i32*
  %4003 = load i32, i32* %ECX.i500
  %4004 = zext i32 %4003 to i64
  %4005 = load i64, i64* %PC.i499
  %4006 = add i64 %4005, 3
  store i64 %4006, i64* %PC.i499
  %4007 = sub i32 %4003, 5
  %4008 = icmp ult i32 %4003, 5
  %4009 = zext i1 %4008 to i8
  %4010 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4009, i8* %4010, align 1
  %4011 = and i32 %4007, 255
  %4012 = call i32 @llvm.ctpop.i32(i32 %4011)
  %4013 = trunc i32 %4012 to i8
  %4014 = and i8 %4013, 1
  %4015 = xor i8 %4014, 1
  %4016 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4015, i8* %4016, align 1
  %4017 = xor i64 5, %4004
  %4018 = trunc i64 %4017 to i32
  %4019 = xor i32 %4018, %4007
  %4020 = lshr i32 %4019, 4
  %4021 = trunc i32 %4020 to i8
  %4022 = and i8 %4021, 1
  %4023 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4022, i8* %4023, align 1
  %4024 = icmp eq i32 %4007, 0
  %4025 = zext i1 %4024 to i8
  %4026 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4025, i8* %4026, align 1
  %4027 = lshr i32 %4007, 31
  %4028 = trunc i32 %4027 to i8
  %4029 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4028, i8* %4029, align 1
  %4030 = lshr i32 %4003, 31
  %4031 = xor i32 %4027, %4030
  %4032 = add i32 %4031, %4030
  %4033 = icmp eq i32 %4032, 2
  %4034 = zext i1 %4033 to i8
  %4035 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4034, i8* %4035, align 1
  store %struct.Memory* %loadMem_42a9d1, %struct.Memory** %MEMORY
  %loadMem_42a9d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4036 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4037 = getelementptr inbounds %struct.GPR, %struct.GPR* %4036, i32 0, i32 33
  %4038 = getelementptr inbounds %struct.Reg, %struct.Reg* %4037, i32 0, i32 0
  %PC.i498 = bitcast %union.anon* %4038 to i64*
  %4039 = load i64, i64* %PC.i498
  %4040 = add i64 %4039, 195
  %4041 = load i64, i64* %PC.i498
  %4042 = add i64 %4041, 6
  %4043 = load i64, i64* %PC.i498
  %4044 = add i64 %4043, 6
  store i64 %4044, i64* %PC.i498
  %4045 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4046 = load i8, i8* %4045, align 1
  %4047 = icmp eq i8 %4046, 0
  %4048 = zext i1 %4047 to i8
  store i8 %4048, i8* %BRANCH_TAKEN, align 1
  %4049 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4050 = select i1 %4047, i64 %4040, i64 %4042
  store i64 %4050, i64* %4049, align 8
  store %struct.Memory* %loadMem_42a9d4, %struct.Memory** %MEMORY
  %loadBr_42a9d4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42a9d4 = icmp eq i8 %loadBr_42a9d4, 1
  br i1 %cmpBr_42a9d4, label %block_.L_42aa97, label %block_42a9da

block_42a9da:                                     ; preds = %block_42a9bc
  %loadMem_42a9da = load %struct.Memory*, %struct.Memory** %MEMORY
  %4051 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4052 = getelementptr inbounds %struct.GPR, %struct.GPR* %4051, i32 0, i32 33
  %4053 = getelementptr inbounds %struct.Reg, %struct.Reg* %4052, i32 0, i32 0
  %PC.i495 = bitcast %union.anon* %4053 to i64*
  %4054 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4055 = getelementptr inbounds %struct.GPR, %struct.GPR* %4054, i32 0, i32 1
  %4056 = getelementptr inbounds %struct.Reg, %struct.Reg* %4055, i32 0, i32 0
  %RAX.i496 = bitcast %union.anon* %4056 to i64*
  %4057 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4058 = getelementptr inbounds %struct.GPR, %struct.GPR* %4057, i32 0, i32 15
  %4059 = getelementptr inbounds %struct.Reg, %struct.Reg* %4058, i32 0, i32 0
  %RBP.i497 = bitcast %union.anon* %4059 to i64*
  %4060 = load i64, i64* %RBP.i497
  %4061 = sub i64 %4060, 8
  %4062 = load i64, i64* %PC.i495
  %4063 = add i64 %4062, 4
  store i64 %4063, i64* %PC.i495
  %4064 = inttoptr i64 %4061 to i64*
  %4065 = load i64, i64* %4064
  store i64 %4065, i64* %RAX.i496, align 8
  store %struct.Memory* %loadMem_42a9da, %struct.Memory** %MEMORY
  %loadMem_42a9de = load %struct.Memory*, %struct.Memory** %MEMORY
  %4066 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4067 = getelementptr inbounds %struct.GPR, %struct.GPR* %4066, i32 0, i32 33
  %4068 = getelementptr inbounds %struct.Reg, %struct.Reg* %4067, i32 0, i32 0
  %PC.i493 = bitcast %union.anon* %4068 to i64*
  %4069 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4070 = getelementptr inbounds %struct.GPR, %struct.GPR* %4069, i32 0, i32 1
  %4071 = getelementptr inbounds %struct.Reg, %struct.Reg* %4070, i32 0, i32 0
  %RAX.i494 = bitcast %union.anon* %4071 to i64*
  %4072 = load i64, i64* %RAX.i494
  %4073 = add i64 %4072, 24
  %4074 = load i64, i64* %PC.i493
  %4075 = add i64 %4074, 4
  store i64 %4075, i64* %PC.i493
  %4076 = inttoptr i64 %4073 to i64*
  %4077 = load i64, i64* %4076
  store i64 %4077, i64* %RAX.i494, align 8
  store %struct.Memory* %loadMem_42a9de, %struct.Memory** %MEMORY
  %loadMem_42a9e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4078 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4079 = getelementptr inbounds %struct.GPR, %struct.GPR* %4078, i32 0, i32 33
  %4080 = getelementptr inbounds %struct.Reg, %struct.Reg* %4079, i32 0, i32 0
  %PC.i490 = bitcast %union.anon* %4080 to i64*
  %4081 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4082 = getelementptr inbounds %struct.GPR, %struct.GPR* %4081, i32 0, i32 5
  %4083 = getelementptr inbounds %struct.Reg, %struct.Reg* %4082, i32 0, i32 0
  %RCX.i491 = bitcast %union.anon* %4083 to i64*
  %4084 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4085 = getelementptr inbounds %struct.GPR, %struct.GPR* %4084, i32 0, i32 15
  %4086 = getelementptr inbounds %struct.Reg, %struct.Reg* %4085, i32 0, i32 0
  %RBP.i492 = bitcast %union.anon* %4086 to i64*
  %4087 = load i64, i64* %RBP.i492
  %4088 = sub i64 %4087, 36
  %4089 = load i64, i64* %PC.i490
  %4090 = add i64 %4089, 3
  store i64 %4090, i64* %PC.i490
  %4091 = inttoptr i64 %4088 to i32*
  %4092 = load i32, i32* %4091
  %4093 = zext i32 %4092 to i64
  store i64 %4093, i64* %RCX.i491, align 8
  store %struct.Memory* %loadMem_42a9e2, %struct.Memory** %MEMORY
  %loadMem_42a9e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4094 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4095 = getelementptr inbounds %struct.GPR, %struct.GPR* %4094, i32 0, i32 33
  %4096 = getelementptr inbounds %struct.Reg, %struct.Reg* %4095, i32 0, i32 0
  %PC.i488 = bitcast %union.anon* %4096 to i64*
  %4097 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4098 = getelementptr inbounds %struct.GPR, %struct.GPR* %4097, i32 0, i32 5
  %4099 = getelementptr inbounds %struct.Reg, %struct.Reg* %4098, i32 0, i32 0
  %RCX.i489 = bitcast %union.anon* %4099 to i64*
  %4100 = load i64, i64* %RCX.i489
  %4101 = load i64, i64* %PC.i488
  %4102 = add i64 %4101, 3
  store i64 %4102, i64* %PC.i488
  %4103 = trunc i64 %4100 to i32
  %4104 = sub i32 %4103, 1
  %4105 = zext i32 %4104 to i64
  store i64 %4105, i64* %RCX.i489, align 8
  %4106 = icmp ult i32 %4103, 1
  %4107 = zext i1 %4106 to i8
  %4108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4107, i8* %4108, align 1
  %4109 = and i32 %4104, 255
  %4110 = call i32 @llvm.ctpop.i32(i32 %4109)
  %4111 = trunc i32 %4110 to i8
  %4112 = and i8 %4111, 1
  %4113 = xor i8 %4112, 1
  %4114 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4113, i8* %4114, align 1
  %4115 = xor i64 1, %4100
  %4116 = trunc i64 %4115 to i32
  %4117 = xor i32 %4116, %4104
  %4118 = lshr i32 %4117, 4
  %4119 = trunc i32 %4118 to i8
  %4120 = and i8 %4119, 1
  %4121 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4120, i8* %4121, align 1
  %4122 = icmp eq i32 %4104, 0
  %4123 = zext i1 %4122 to i8
  %4124 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4123, i8* %4124, align 1
  %4125 = lshr i32 %4104, 31
  %4126 = trunc i32 %4125 to i8
  %4127 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4126, i8* %4127, align 1
  %4128 = lshr i32 %4103, 31
  %4129 = xor i32 %4125, %4128
  %4130 = add i32 %4129, %4128
  %4131 = icmp eq i32 %4130, 2
  %4132 = zext i1 %4131 to i8
  %4133 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4132, i8* %4133, align 1
  store %struct.Memory* %loadMem_42a9e5, %struct.Memory** %MEMORY
  %loadMem_42a9e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4135 = getelementptr inbounds %struct.GPR, %struct.GPR* %4134, i32 0, i32 33
  %4136 = getelementptr inbounds %struct.Reg, %struct.Reg* %4135, i32 0, i32 0
  %PC.i485 = bitcast %union.anon* %4136 to i64*
  %4137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4138 = getelementptr inbounds %struct.GPR, %struct.GPR* %4137, i32 0, i32 5
  %4139 = getelementptr inbounds %struct.Reg, %struct.Reg* %4138, i32 0, i32 0
  %ECX.i486 = bitcast %union.anon* %4139 to i32*
  %4140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4141 = getelementptr inbounds %struct.GPR, %struct.GPR* %4140, i32 0, i32 7
  %4142 = getelementptr inbounds %struct.Reg, %struct.Reg* %4141, i32 0, i32 0
  %RDX.i487 = bitcast %union.anon* %4142 to i64*
  %4143 = load i32, i32* %ECX.i486
  %4144 = zext i32 %4143 to i64
  %4145 = load i64, i64* %PC.i485
  %4146 = add i64 %4145, 3
  store i64 %4146, i64* %PC.i485
  %4147 = shl i64 %4144, 32
  %4148 = ashr exact i64 %4147, 32
  store i64 %4148, i64* %RDX.i487, align 8
  store %struct.Memory* %loadMem_42a9e8, %struct.Memory** %MEMORY
  %loadMem_42a9eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %4149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4150 = getelementptr inbounds %struct.GPR, %struct.GPR* %4149, i32 0, i32 33
  %4151 = getelementptr inbounds %struct.Reg, %struct.Reg* %4150, i32 0, i32 0
  %PC.i482 = bitcast %union.anon* %4151 to i64*
  %4152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4153 = getelementptr inbounds %struct.GPR, %struct.GPR* %4152, i32 0, i32 1
  %4154 = getelementptr inbounds %struct.Reg, %struct.Reg* %4153, i32 0, i32 0
  %RAX.i483 = bitcast %union.anon* %4154 to i64*
  %4155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4156 = getelementptr inbounds %struct.GPR, %struct.GPR* %4155, i32 0, i32 7
  %4157 = getelementptr inbounds %struct.Reg, %struct.Reg* %4156, i32 0, i32 0
  %RDX.i484 = bitcast %union.anon* %4157 to i64*
  %4158 = load i64, i64* %RAX.i483
  %4159 = load i64, i64* %RDX.i484
  %4160 = mul i64 %4159, 4
  %4161 = add i64 %4160, %4158
  %4162 = load i64, i64* %PC.i482
  %4163 = add i64 %4162, 4
  store i64 %4163, i64* %PC.i482
  %4164 = inttoptr i64 %4161 to i32*
  %4165 = load i32, i32* %4164
  %4166 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4166, align 1
  %4167 = and i32 %4165, 255
  %4168 = call i32 @llvm.ctpop.i32(i32 %4167)
  %4169 = trunc i32 %4168 to i8
  %4170 = and i8 %4169, 1
  %4171 = xor i8 %4170, 1
  %4172 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4171, i8* %4172, align 1
  %4173 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4173, align 1
  %4174 = icmp eq i32 %4165, 0
  %4175 = zext i1 %4174 to i8
  %4176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4175, i8* %4176, align 1
  %4177 = lshr i32 %4165, 31
  %4178 = trunc i32 %4177 to i8
  %4179 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4178, i8* %4179, align 1
  %4180 = lshr i32 %4165, 31
  %4181 = xor i32 %4177, %4180
  %4182 = add i32 %4181, %4180
  %4183 = icmp eq i32 %4182, 2
  %4184 = zext i1 %4183 to i8
  %4185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4184, i8* %4185, align 1
  store %struct.Memory* %loadMem_42a9eb, %struct.Memory** %MEMORY
  %loadMem_42a9ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %4186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4187 = getelementptr inbounds %struct.GPR, %struct.GPR* %4186, i32 0, i32 33
  %4188 = getelementptr inbounds %struct.Reg, %struct.Reg* %4187, i32 0, i32 0
  %PC.i481 = bitcast %union.anon* %4188 to i64*
  %4189 = load i64, i64* %PC.i481
  %4190 = add i64 %4189, 168
  %4191 = load i64, i64* %PC.i481
  %4192 = add i64 %4191, 6
  %4193 = load i64, i64* %PC.i481
  %4194 = add i64 %4193, 6
  store i64 %4194, i64* %PC.i481
  %4195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4196 = load i8, i8* %4195, align 1
  %4197 = icmp ne i8 %4196, 0
  %4198 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4199 = load i8, i8* %4198, align 1
  %4200 = icmp ne i8 %4199, 0
  %4201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4202 = load i8, i8* %4201, align 1
  %4203 = icmp ne i8 %4202, 0
  %4204 = xor i1 %4200, %4203
  %4205 = or i1 %4197, %4204
  %4206 = zext i1 %4205 to i8
  store i8 %4206, i8* %BRANCH_TAKEN, align 1
  %4207 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4208 = select i1 %4205, i64 %4190, i64 %4192
  store i64 %4208, i64* %4207, align 8
  store %struct.Memory* %loadMem_42a9ef, %struct.Memory** %MEMORY
  %loadBr_42a9ef = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42a9ef = icmp eq i8 %loadBr_42a9ef, 1
  br i1 %cmpBr_42a9ef, label %block_.L_42aa97, label %block_42a9f5

block_42a9f5:                                     ; preds = %block_42a9da
  %loadMem_42a9f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4210 = getelementptr inbounds %struct.GPR, %struct.GPR* %4209, i32 0, i32 33
  %4211 = getelementptr inbounds %struct.Reg, %struct.Reg* %4210, i32 0, i32 0
  %PC.i478 = bitcast %union.anon* %4211 to i64*
  %4212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4213 = getelementptr inbounds %struct.GPR, %struct.GPR* %4212, i32 0, i32 1
  %4214 = getelementptr inbounds %struct.Reg, %struct.Reg* %4213, i32 0, i32 0
  %RAX.i479 = bitcast %union.anon* %4214 to i64*
  %4215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4216 = getelementptr inbounds %struct.GPR, %struct.GPR* %4215, i32 0, i32 15
  %4217 = getelementptr inbounds %struct.Reg, %struct.Reg* %4216, i32 0, i32 0
  %RBP.i480 = bitcast %union.anon* %4217 to i64*
  %4218 = load i64, i64* %RBP.i480
  %4219 = sub i64 %4218, 8
  %4220 = load i64, i64* %PC.i478
  %4221 = add i64 %4220, 4
  store i64 %4221, i64* %PC.i478
  %4222 = inttoptr i64 %4219 to i64*
  %4223 = load i64, i64* %4222
  store i64 %4223, i64* %RAX.i479, align 8
  store %struct.Memory* %loadMem_42a9f5, %struct.Memory** %MEMORY
  %loadMem_42a9f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4225 = getelementptr inbounds %struct.GPR, %struct.GPR* %4224, i32 0, i32 33
  %4226 = getelementptr inbounds %struct.Reg, %struct.Reg* %4225, i32 0, i32 0
  %PC.i476 = bitcast %union.anon* %4226 to i64*
  %4227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4228 = getelementptr inbounds %struct.GPR, %struct.GPR* %4227, i32 0, i32 1
  %4229 = getelementptr inbounds %struct.Reg, %struct.Reg* %4228, i32 0, i32 0
  %RAX.i477 = bitcast %union.anon* %4229 to i64*
  %4230 = load i64, i64* %RAX.i477
  %4231 = add i64 %4230, 8
  %4232 = load i64, i64* %PC.i476
  %4233 = add i64 %4232, 4
  store i64 %4233, i64* %PC.i476
  %4234 = inttoptr i64 %4231 to i64*
  %4235 = load i64, i64* %4234
  store i64 %4235, i64* %RAX.i477, align 8
  store %struct.Memory* %loadMem_42a9f9, %struct.Memory** %MEMORY
  %loadMem_42a9fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %4236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4237 = getelementptr inbounds %struct.GPR, %struct.GPR* %4236, i32 0, i32 33
  %4238 = getelementptr inbounds %struct.Reg, %struct.Reg* %4237, i32 0, i32 0
  %PC.i473 = bitcast %union.anon* %4238 to i64*
  %4239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4240 = getelementptr inbounds %struct.GPR, %struct.GPR* %4239, i32 0, i32 5
  %4241 = getelementptr inbounds %struct.Reg, %struct.Reg* %4240, i32 0, i32 0
  %RCX.i474 = bitcast %union.anon* %4241 to i64*
  %4242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4243 = getelementptr inbounds %struct.GPR, %struct.GPR* %4242, i32 0, i32 15
  %4244 = getelementptr inbounds %struct.Reg, %struct.Reg* %4243, i32 0, i32 0
  %RBP.i475 = bitcast %union.anon* %4244 to i64*
  %4245 = load i64, i64* %RBP.i475
  %4246 = sub i64 %4245, 40
  %4247 = load i64, i64* %PC.i473
  %4248 = add i64 %4247, 4
  store i64 %4248, i64* %PC.i473
  %4249 = inttoptr i64 %4246 to i32*
  %4250 = load i32, i32* %4249
  %4251 = sext i32 %4250 to i64
  store i64 %4251, i64* %RCX.i474, align 8
  store %struct.Memory* %loadMem_42a9fd, %struct.Memory** %MEMORY
  %loadMem_42aa01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4253 = getelementptr inbounds %struct.GPR, %struct.GPR* %4252, i32 0, i32 33
  %4254 = getelementptr inbounds %struct.Reg, %struct.Reg* %4253, i32 0, i32 0
  %PC.i470 = bitcast %union.anon* %4254 to i64*
  %4255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4256 = getelementptr inbounds %struct.GPR, %struct.GPR* %4255, i32 0, i32 1
  %4257 = getelementptr inbounds %struct.Reg, %struct.Reg* %4256, i32 0, i32 0
  %RAX.i471 = bitcast %union.anon* %4257 to i64*
  %4258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4259 = getelementptr inbounds %struct.GPR, %struct.GPR* %4258, i32 0, i32 5
  %4260 = getelementptr inbounds %struct.Reg, %struct.Reg* %4259, i32 0, i32 0
  %RCX.i472 = bitcast %union.anon* %4260 to i64*
  %4261 = load i64, i64* %RAX.i471
  %4262 = load i64, i64* %RCX.i472
  %4263 = add i64 %4262, %4261
  %4264 = load i64, i64* %PC.i470
  %4265 = add i64 %4264, 4
  store i64 %4265, i64* %PC.i470
  %4266 = inttoptr i64 %4263 to i8*
  store i8 1, i8* %4266
  store %struct.Memory* %loadMem_42aa01, %struct.Memory** %MEMORY
  %loadMem_42aa05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4268 = getelementptr inbounds %struct.GPR, %struct.GPR* %4267, i32 0, i32 33
  %4269 = getelementptr inbounds %struct.Reg, %struct.Reg* %4268, i32 0, i32 0
  %PC.i467 = bitcast %union.anon* %4269 to i64*
  %4270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4271 = getelementptr inbounds %struct.GPR, %struct.GPR* %4270, i32 0, i32 1
  %4272 = getelementptr inbounds %struct.Reg, %struct.Reg* %4271, i32 0, i32 0
  %RAX.i468 = bitcast %union.anon* %4272 to i64*
  %4273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4274 = getelementptr inbounds %struct.GPR, %struct.GPR* %4273, i32 0, i32 15
  %4275 = getelementptr inbounds %struct.Reg, %struct.Reg* %4274, i32 0, i32 0
  %RBP.i469 = bitcast %union.anon* %4275 to i64*
  %4276 = load i64, i64* %RBP.i469
  %4277 = sub i64 %4276, 8
  %4278 = load i64, i64* %PC.i467
  %4279 = add i64 %4278, 4
  store i64 %4279, i64* %PC.i467
  %4280 = inttoptr i64 %4277 to i64*
  %4281 = load i64, i64* %4280
  store i64 %4281, i64* %RAX.i468, align 8
  store %struct.Memory* %loadMem_42aa05, %struct.Memory** %MEMORY
  %loadMem_42aa09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4283 = getelementptr inbounds %struct.GPR, %struct.GPR* %4282, i32 0, i32 33
  %4284 = getelementptr inbounds %struct.Reg, %struct.Reg* %4283, i32 0, i32 0
  %PC.i465 = bitcast %union.anon* %4284 to i64*
  %4285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4286 = getelementptr inbounds %struct.GPR, %struct.GPR* %4285, i32 0, i32 1
  %4287 = getelementptr inbounds %struct.Reg, %struct.Reg* %4286, i32 0, i32 0
  %RAX.i466 = bitcast %union.anon* %4287 to i64*
  %4288 = load i64, i64* %RAX.i466
  %4289 = add i64 %4288, 16
  %4290 = load i64, i64* %PC.i465
  %4291 = add i64 %4290, 4
  store i64 %4291, i64* %PC.i465
  %4292 = inttoptr i64 %4289 to i64*
  %4293 = load i64, i64* %4292
  store i64 %4293, i64* %RAX.i466, align 8
  store %struct.Memory* %loadMem_42aa09, %struct.Memory** %MEMORY
  %loadMem_42aa0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4295 = getelementptr inbounds %struct.GPR, %struct.GPR* %4294, i32 0, i32 33
  %4296 = getelementptr inbounds %struct.Reg, %struct.Reg* %4295, i32 0, i32 0
  %PC.i462 = bitcast %union.anon* %4296 to i64*
  %4297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4298 = getelementptr inbounds %struct.GPR, %struct.GPR* %4297, i32 0, i32 5
  %4299 = getelementptr inbounds %struct.Reg, %struct.Reg* %4298, i32 0, i32 0
  %RCX.i463 = bitcast %union.anon* %4299 to i64*
  %4300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4301 = getelementptr inbounds %struct.GPR, %struct.GPR* %4300, i32 0, i32 15
  %4302 = getelementptr inbounds %struct.Reg, %struct.Reg* %4301, i32 0, i32 0
  %RBP.i464 = bitcast %union.anon* %4302 to i64*
  %4303 = load i64, i64* %RBP.i464
  %4304 = sub i64 %4303, 40
  %4305 = load i64, i64* %PC.i462
  %4306 = add i64 %4305, 4
  store i64 %4306, i64* %PC.i462
  %4307 = inttoptr i64 %4304 to i32*
  %4308 = load i32, i32* %4307
  %4309 = sext i32 %4308 to i64
  store i64 %4309, i64* %RCX.i463, align 8
  store %struct.Memory* %loadMem_42aa0d, %struct.Memory** %MEMORY
  %loadMem_42aa11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4311 = getelementptr inbounds %struct.GPR, %struct.GPR* %4310, i32 0, i32 33
  %4312 = getelementptr inbounds %struct.Reg, %struct.Reg* %4311, i32 0, i32 0
  %PC.i459 = bitcast %union.anon* %4312 to i64*
  %4313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4314 = getelementptr inbounds %struct.GPR, %struct.GPR* %4313, i32 0, i32 1
  %4315 = getelementptr inbounds %struct.Reg, %struct.Reg* %4314, i32 0, i32 0
  %RAX.i460 = bitcast %union.anon* %4315 to i64*
  %4316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4317 = getelementptr inbounds %struct.GPR, %struct.GPR* %4316, i32 0, i32 5
  %4318 = getelementptr inbounds %struct.Reg, %struct.Reg* %4317, i32 0, i32 0
  %RCX.i461 = bitcast %union.anon* %4318 to i64*
  %4319 = load i64, i64* %RAX.i460
  %4320 = load i64, i64* %RCX.i461
  %4321 = mul i64 %4320, 4
  %4322 = add i64 %4321, %4319
  %4323 = load i64, i64* %PC.i459
  %4324 = add i64 %4323, 7
  store i64 %4324, i64* %PC.i459
  %4325 = inttoptr i64 %4322 to i32*
  store i32 1, i32* %4325
  store %struct.Memory* %loadMem_42aa11, %struct.Memory** %MEMORY
  %loadMem_42aa18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4327 = getelementptr inbounds %struct.GPR, %struct.GPR* %4326, i32 0, i32 33
  %4328 = getelementptr inbounds %struct.Reg, %struct.Reg* %4327, i32 0, i32 0
  %PC.i456 = bitcast %union.anon* %4328 to i64*
  %4329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4330 = getelementptr inbounds %struct.GPR, %struct.GPR* %4329, i32 0, i32 1
  %4331 = getelementptr inbounds %struct.Reg, %struct.Reg* %4330, i32 0, i32 0
  %RAX.i457 = bitcast %union.anon* %4331 to i64*
  %4332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4333 = getelementptr inbounds %struct.GPR, %struct.GPR* %4332, i32 0, i32 15
  %4334 = getelementptr inbounds %struct.Reg, %struct.Reg* %4333, i32 0, i32 0
  %RBP.i458 = bitcast %union.anon* %4334 to i64*
  %4335 = load i64, i64* %RBP.i458
  %4336 = sub i64 %4335, 8
  %4337 = load i64, i64* %PC.i456
  %4338 = add i64 %4337, 4
  store i64 %4338, i64* %PC.i456
  %4339 = inttoptr i64 %4336 to i64*
  %4340 = load i64, i64* %4339
  store i64 %4340, i64* %RAX.i457, align 8
  store %struct.Memory* %loadMem_42aa18, %struct.Memory** %MEMORY
  %loadMem_42aa1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4342 = getelementptr inbounds %struct.GPR, %struct.GPR* %4341, i32 0, i32 33
  %4343 = getelementptr inbounds %struct.Reg, %struct.Reg* %4342, i32 0, i32 0
  %PC.i454 = bitcast %union.anon* %4343 to i64*
  %4344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4345 = getelementptr inbounds %struct.GPR, %struct.GPR* %4344, i32 0, i32 1
  %4346 = getelementptr inbounds %struct.Reg, %struct.Reg* %4345, i32 0, i32 0
  %RAX.i455 = bitcast %union.anon* %4346 to i64*
  %4347 = load i64, i64* %RAX.i455
  %4348 = add i64 %4347, 24
  %4349 = load i64, i64* %PC.i454
  %4350 = add i64 %4349, 4
  store i64 %4350, i64* %PC.i454
  %4351 = inttoptr i64 %4348 to i64*
  %4352 = load i64, i64* %4351
  store i64 %4352, i64* %RAX.i455, align 8
  store %struct.Memory* %loadMem_42aa1c, %struct.Memory** %MEMORY
  %loadMem_42aa20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4354 = getelementptr inbounds %struct.GPR, %struct.GPR* %4353, i32 0, i32 33
  %4355 = getelementptr inbounds %struct.Reg, %struct.Reg* %4354, i32 0, i32 0
  %PC.i451 = bitcast %union.anon* %4355 to i64*
  %4356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4357 = getelementptr inbounds %struct.GPR, %struct.GPR* %4356, i32 0, i32 7
  %4358 = getelementptr inbounds %struct.Reg, %struct.Reg* %4357, i32 0, i32 0
  %RDX.i452 = bitcast %union.anon* %4358 to i64*
  %4359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4360 = getelementptr inbounds %struct.GPR, %struct.GPR* %4359, i32 0, i32 15
  %4361 = getelementptr inbounds %struct.Reg, %struct.Reg* %4360, i32 0, i32 0
  %RBP.i453 = bitcast %union.anon* %4361 to i64*
  %4362 = load i64, i64* %RBP.i453
  %4363 = sub i64 %4362, 36
  %4364 = load i64, i64* %PC.i451
  %4365 = add i64 %4364, 3
  store i64 %4365, i64* %PC.i451
  %4366 = inttoptr i64 %4363 to i32*
  %4367 = load i32, i32* %4366
  %4368 = zext i32 %4367 to i64
  store i64 %4368, i64* %RDX.i452, align 8
  store %struct.Memory* %loadMem_42aa20, %struct.Memory** %MEMORY
  %loadMem_42aa23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4370 = getelementptr inbounds %struct.GPR, %struct.GPR* %4369, i32 0, i32 33
  %4371 = getelementptr inbounds %struct.Reg, %struct.Reg* %4370, i32 0, i32 0
  %PC.i449 = bitcast %union.anon* %4371 to i64*
  %4372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4373 = getelementptr inbounds %struct.GPR, %struct.GPR* %4372, i32 0, i32 7
  %4374 = getelementptr inbounds %struct.Reg, %struct.Reg* %4373, i32 0, i32 0
  %RDX.i450 = bitcast %union.anon* %4374 to i64*
  %4375 = load i64, i64* %RDX.i450
  %4376 = load i64, i64* %PC.i449
  %4377 = add i64 %4376, 3
  store i64 %4377, i64* %PC.i449
  %4378 = trunc i64 %4375 to i32
  %4379 = sub i32 %4378, 1
  %4380 = zext i32 %4379 to i64
  store i64 %4380, i64* %RDX.i450, align 8
  %4381 = icmp ult i32 %4378, 1
  %4382 = zext i1 %4381 to i8
  %4383 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4382, i8* %4383, align 1
  %4384 = and i32 %4379, 255
  %4385 = call i32 @llvm.ctpop.i32(i32 %4384)
  %4386 = trunc i32 %4385 to i8
  %4387 = and i8 %4386, 1
  %4388 = xor i8 %4387, 1
  %4389 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4388, i8* %4389, align 1
  %4390 = xor i64 1, %4375
  %4391 = trunc i64 %4390 to i32
  %4392 = xor i32 %4391, %4379
  %4393 = lshr i32 %4392, 4
  %4394 = trunc i32 %4393 to i8
  %4395 = and i8 %4394, 1
  %4396 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4395, i8* %4396, align 1
  %4397 = icmp eq i32 %4379, 0
  %4398 = zext i1 %4397 to i8
  %4399 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4398, i8* %4399, align 1
  %4400 = lshr i32 %4379, 31
  %4401 = trunc i32 %4400 to i8
  %4402 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4401, i8* %4402, align 1
  %4403 = lshr i32 %4378, 31
  %4404 = xor i32 %4400, %4403
  %4405 = add i32 %4404, %4403
  %4406 = icmp eq i32 %4405, 2
  %4407 = zext i1 %4406 to i8
  %4408 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4407, i8* %4408, align 1
  store %struct.Memory* %loadMem_42aa23, %struct.Memory** %MEMORY
  %loadMem_42aa26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4410 = getelementptr inbounds %struct.GPR, %struct.GPR* %4409, i32 0, i32 33
  %4411 = getelementptr inbounds %struct.Reg, %struct.Reg* %4410, i32 0, i32 0
  %PC.i446 = bitcast %union.anon* %4411 to i64*
  %4412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4413 = getelementptr inbounds %struct.GPR, %struct.GPR* %4412, i32 0, i32 7
  %4414 = getelementptr inbounds %struct.Reg, %struct.Reg* %4413, i32 0, i32 0
  %EDX.i447 = bitcast %union.anon* %4414 to i32*
  %4415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4416 = getelementptr inbounds %struct.GPR, %struct.GPR* %4415, i32 0, i32 5
  %4417 = getelementptr inbounds %struct.Reg, %struct.Reg* %4416, i32 0, i32 0
  %RCX.i448 = bitcast %union.anon* %4417 to i64*
  %4418 = load i32, i32* %EDX.i447
  %4419 = zext i32 %4418 to i64
  %4420 = load i64, i64* %PC.i446
  %4421 = add i64 %4420, 3
  store i64 %4421, i64* %PC.i446
  %4422 = shl i64 %4419, 32
  %4423 = ashr exact i64 %4422, 32
  store i64 %4423, i64* %RCX.i448, align 8
  store %struct.Memory* %loadMem_42aa26, %struct.Memory** %MEMORY
  %loadMem_42aa29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4425 = getelementptr inbounds %struct.GPR, %struct.GPR* %4424, i32 0, i32 33
  %4426 = getelementptr inbounds %struct.Reg, %struct.Reg* %4425, i32 0, i32 0
  %PC.i442 = bitcast %union.anon* %4426 to i64*
  %4427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4428 = getelementptr inbounds %struct.GPR, %struct.GPR* %4427, i32 0, i32 1
  %4429 = getelementptr inbounds %struct.Reg, %struct.Reg* %4428, i32 0, i32 0
  %RAX.i443 = bitcast %union.anon* %4429 to i64*
  %4430 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4431 = getelementptr inbounds %struct.GPR, %struct.GPR* %4430, i32 0, i32 5
  %4432 = getelementptr inbounds %struct.Reg, %struct.Reg* %4431, i32 0, i32 0
  %RCX.i444 = bitcast %union.anon* %4432 to i64*
  %4433 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4434 = getelementptr inbounds %struct.GPR, %struct.GPR* %4433, i32 0, i32 7
  %4435 = getelementptr inbounds %struct.Reg, %struct.Reg* %4434, i32 0, i32 0
  %RDX.i445 = bitcast %union.anon* %4435 to i64*
  %4436 = load i64, i64* %RAX.i443
  %4437 = load i64, i64* %RCX.i444
  %4438 = mul i64 %4437, 4
  %4439 = add i64 %4438, %4436
  %4440 = load i64, i64* %PC.i442
  %4441 = add i64 %4440, 3
  store i64 %4441, i64* %PC.i442
  %4442 = inttoptr i64 %4439 to i32*
  %4443 = load i32, i32* %4442
  %4444 = zext i32 %4443 to i64
  store i64 %4444, i64* %RDX.i445, align 8
  store %struct.Memory* %loadMem_42aa29, %struct.Memory** %MEMORY
  %loadMem_42aa2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4446 = getelementptr inbounds %struct.GPR, %struct.GPR* %4445, i32 0, i32 33
  %4447 = getelementptr inbounds %struct.Reg, %struct.Reg* %4446, i32 0, i32 0
  %PC.i439 = bitcast %union.anon* %4447 to i64*
  %4448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4449 = getelementptr inbounds %struct.GPR, %struct.GPR* %4448, i32 0, i32 1
  %4450 = getelementptr inbounds %struct.Reg, %struct.Reg* %4449, i32 0, i32 0
  %RAX.i440 = bitcast %union.anon* %4450 to i64*
  %4451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4452 = getelementptr inbounds %struct.GPR, %struct.GPR* %4451, i32 0, i32 15
  %4453 = getelementptr inbounds %struct.Reg, %struct.Reg* %4452, i32 0, i32 0
  %RBP.i441 = bitcast %union.anon* %4453 to i64*
  %4454 = load i64, i64* %RBP.i441
  %4455 = sub i64 %4454, 8
  %4456 = load i64, i64* %PC.i439
  %4457 = add i64 %4456, 4
  store i64 %4457, i64* %PC.i439
  %4458 = inttoptr i64 %4455 to i64*
  %4459 = load i64, i64* %4458
  store i64 %4459, i64* %RAX.i440, align 8
  store %struct.Memory* %loadMem_42aa2c, %struct.Memory** %MEMORY
  %loadMem_42aa30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4460 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4461 = getelementptr inbounds %struct.GPR, %struct.GPR* %4460, i32 0, i32 33
  %4462 = getelementptr inbounds %struct.Reg, %struct.Reg* %4461, i32 0, i32 0
  %PC.i437 = bitcast %union.anon* %4462 to i64*
  %4463 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4464 = getelementptr inbounds %struct.GPR, %struct.GPR* %4463, i32 0, i32 1
  %4465 = getelementptr inbounds %struct.Reg, %struct.Reg* %4464, i32 0, i32 0
  %RAX.i438 = bitcast %union.anon* %4465 to i64*
  %4466 = load i64, i64* %RAX.i438
  %4467 = add i64 %4466, 24
  %4468 = load i64, i64* %PC.i437
  %4469 = add i64 %4468, 4
  store i64 %4469, i64* %PC.i437
  %4470 = inttoptr i64 %4467 to i64*
  %4471 = load i64, i64* %4470
  store i64 %4471, i64* %RAX.i438, align 8
  store %struct.Memory* %loadMem_42aa30, %struct.Memory** %MEMORY
  %loadMem_42aa34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4473 = getelementptr inbounds %struct.GPR, %struct.GPR* %4472, i32 0, i32 33
  %4474 = getelementptr inbounds %struct.Reg, %struct.Reg* %4473, i32 0, i32 0
  %PC.i434 = bitcast %union.anon* %4474 to i64*
  %4475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4476 = getelementptr inbounds %struct.GPR, %struct.GPR* %4475, i32 0, i32 5
  %4477 = getelementptr inbounds %struct.Reg, %struct.Reg* %4476, i32 0, i32 0
  %RCX.i435 = bitcast %union.anon* %4477 to i64*
  %4478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4479 = getelementptr inbounds %struct.GPR, %struct.GPR* %4478, i32 0, i32 15
  %4480 = getelementptr inbounds %struct.Reg, %struct.Reg* %4479, i32 0, i32 0
  %RBP.i436 = bitcast %union.anon* %4480 to i64*
  %4481 = load i64, i64* %RBP.i436
  %4482 = sub i64 %4481, 40
  %4483 = load i64, i64* %PC.i434
  %4484 = add i64 %4483, 4
  store i64 %4484, i64* %PC.i434
  %4485 = inttoptr i64 %4482 to i32*
  %4486 = load i32, i32* %4485
  %4487 = sext i32 %4486 to i64
  store i64 %4487, i64* %RCX.i435, align 8
  store %struct.Memory* %loadMem_42aa34, %struct.Memory** %MEMORY
  %loadMem_42aa38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4488 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4489 = getelementptr inbounds %struct.GPR, %struct.GPR* %4488, i32 0, i32 33
  %4490 = getelementptr inbounds %struct.Reg, %struct.Reg* %4489, i32 0, i32 0
  %PC.i430 = bitcast %union.anon* %4490 to i64*
  %4491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4492 = getelementptr inbounds %struct.GPR, %struct.GPR* %4491, i32 0, i32 7
  %4493 = getelementptr inbounds %struct.Reg, %struct.Reg* %4492, i32 0, i32 0
  %EDX.i431 = bitcast %union.anon* %4493 to i32*
  %4494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4495 = getelementptr inbounds %struct.GPR, %struct.GPR* %4494, i32 0, i32 1
  %4496 = getelementptr inbounds %struct.Reg, %struct.Reg* %4495, i32 0, i32 0
  %RAX.i432 = bitcast %union.anon* %4496 to i64*
  %4497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4498 = getelementptr inbounds %struct.GPR, %struct.GPR* %4497, i32 0, i32 5
  %4499 = getelementptr inbounds %struct.Reg, %struct.Reg* %4498, i32 0, i32 0
  %RCX.i433 = bitcast %union.anon* %4499 to i64*
  %4500 = load i64, i64* %RAX.i432
  %4501 = load i64, i64* %RCX.i433
  %4502 = mul i64 %4501, 4
  %4503 = add i64 %4502, %4500
  %4504 = load i32, i32* %EDX.i431
  %4505 = zext i32 %4504 to i64
  %4506 = load i64, i64* %PC.i430
  %4507 = add i64 %4506, 3
  store i64 %4507, i64* %PC.i430
  %4508 = inttoptr i64 %4503 to i32*
  store i32 %4504, i32* %4508
  store %struct.Memory* %loadMem_42aa38, %struct.Memory** %MEMORY
  %loadMem_42aa3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4510 = getelementptr inbounds %struct.GPR, %struct.GPR* %4509, i32 0, i32 33
  %4511 = getelementptr inbounds %struct.Reg, %struct.Reg* %4510, i32 0, i32 0
  %PC.i427 = bitcast %union.anon* %4511 to i64*
  %4512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4513 = getelementptr inbounds %struct.GPR, %struct.GPR* %4512, i32 0, i32 1
  %4514 = getelementptr inbounds %struct.Reg, %struct.Reg* %4513, i32 0, i32 0
  %RAX.i428 = bitcast %union.anon* %4514 to i64*
  %4515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4516 = getelementptr inbounds %struct.GPR, %struct.GPR* %4515, i32 0, i32 15
  %4517 = getelementptr inbounds %struct.Reg, %struct.Reg* %4516, i32 0, i32 0
  %RBP.i429 = bitcast %union.anon* %4517 to i64*
  %4518 = load i64, i64* %RBP.i429
  %4519 = sub i64 %4518, 8
  %4520 = load i64, i64* %PC.i427
  %4521 = add i64 %4520, 4
  store i64 %4521, i64* %PC.i427
  %4522 = inttoptr i64 %4519 to i64*
  %4523 = load i64, i64* %4522
  store i64 %4523, i64* %RAX.i428, align 8
  store %struct.Memory* %loadMem_42aa3b, %struct.Memory** %MEMORY
  %loadMem_42aa3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4525 = getelementptr inbounds %struct.GPR, %struct.GPR* %4524, i32 0, i32 33
  %4526 = getelementptr inbounds %struct.Reg, %struct.Reg* %4525, i32 0, i32 0
  %PC.i425 = bitcast %union.anon* %4526 to i64*
  %4527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4528 = getelementptr inbounds %struct.GPR, %struct.GPR* %4527, i32 0, i32 1
  %4529 = getelementptr inbounds %struct.Reg, %struct.Reg* %4528, i32 0, i32 0
  %RAX.i426 = bitcast %union.anon* %4529 to i64*
  %4530 = load i64, i64* %RAX.i426
  %4531 = add i64 %4530, 8
  %4532 = load i64, i64* %PC.i425
  %4533 = add i64 %4532, 4
  store i64 %4533, i64* %PC.i425
  %4534 = inttoptr i64 %4531 to i64*
  %4535 = load i64, i64* %4534
  store i64 %4535, i64* %RAX.i426, align 8
  store %struct.Memory* %loadMem_42aa3f, %struct.Memory** %MEMORY
  %loadMem_42aa43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4536 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4537 = getelementptr inbounds %struct.GPR, %struct.GPR* %4536, i32 0, i32 33
  %4538 = getelementptr inbounds %struct.Reg, %struct.Reg* %4537, i32 0, i32 0
  %PC.i422 = bitcast %union.anon* %4538 to i64*
  %4539 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4540 = getelementptr inbounds %struct.GPR, %struct.GPR* %4539, i32 0, i32 7
  %4541 = getelementptr inbounds %struct.Reg, %struct.Reg* %4540, i32 0, i32 0
  %RDX.i423 = bitcast %union.anon* %4541 to i64*
  %4542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4543 = getelementptr inbounds %struct.GPR, %struct.GPR* %4542, i32 0, i32 15
  %4544 = getelementptr inbounds %struct.Reg, %struct.Reg* %4543, i32 0, i32 0
  %RBP.i424 = bitcast %union.anon* %4544 to i64*
  %4545 = load i64, i64* %RBP.i424
  %4546 = sub i64 %4545, 40
  %4547 = load i64, i64* %PC.i422
  %4548 = add i64 %4547, 3
  store i64 %4548, i64* %PC.i422
  %4549 = inttoptr i64 %4546 to i32*
  %4550 = load i32, i32* %4549
  %4551 = zext i32 %4550 to i64
  store i64 %4551, i64* %RDX.i423, align 8
  store %struct.Memory* %loadMem_42aa43, %struct.Memory** %MEMORY
  %loadMem_42aa46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4553 = getelementptr inbounds %struct.GPR, %struct.GPR* %4552, i32 0, i32 33
  %4554 = getelementptr inbounds %struct.Reg, %struct.Reg* %4553, i32 0, i32 0
  %PC.i420 = bitcast %union.anon* %4554 to i64*
  %4555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4556 = getelementptr inbounds %struct.GPR, %struct.GPR* %4555, i32 0, i32 7
  %4557 = getelementptr inbounds %struct.Reg, %struct.Reg* %4556, i32 0, i32 0
  %RDX.i421 = bitcast %union.anon* %4557 to i64*
  %4558 = load i64, i64* %RDX.i421
  %4559 = load i64, i64* %PC.i420
  %4560 = add i64 %4559, 3
  store i64 %4560, i64* %PC.i420
  %4561 = trunc i64 %4558 to i32
  %4562 = sub i32 %4561, 1
  %4563 = zext i32 %4562 to i64
  store i64 %4563, i64* %RDX.i421, align 8
  %4564 = icmp ult i32 %4561, 1
  %4565 = zext i1 %4564 to i8
  %4566 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4565, i8* %4566, align 1
  %4567 = and i32 %4562, 255
  %4568 = call i32 @llvm.ctpop.i32(i32 %4567)
  %4569 = trunc i32 %4568 to i8
  %4570 = and i8 %4569, 1
  %4571 = xor i8 %4570, 1
  %4572 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4571, i8* %4572, align 1
  %4573 = xor i64 1, %4558
  %4574 = trunc i64 %4573 to i32
  %4575 = xor i32 %4574, %4562
  %4576 = lshr i32 %4575, 4
  %4577 = trunc i32 %4576 to i8
  %4578 = and i8 %4577, 1
  %4579 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4578, i8* %4579, align 1
  %4580 = icmp eq i32 %4562, 0
  %4581 = zext i1 %4580 to i8
  %4582 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4581, i8* %4582, align 1
  %4583 = lshr i32 %4562, 31
  %4584 = trunc i32 %4583 to i8
  %4585 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4584, i8* %4585, align 1
  %4586 = lshr i32 %4561, 31
  %4587 = xor i32 %4583, %4586
  %4588 = add i32 %4587, %4586
  %4589 = icmp eq i32 %4588, 2
  %4590 = zext i1 %4589 to i8
  %4591 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4590, i8* %4591, align 1
  store %struct.Memory* %loadMem_42aa46, %struct.Memory** %MEMORY
  %loadMem_42aa49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4593 = getelementptr inbounds %struct.GPR, %struct.GPR* %4592, i32 0, i32 33
  %4594 = getelementptr inbounds %struct.Reg, %struct.Reg* %4593, i32 0, i32 0
  %PC.i417 = bitcast %union.anon* %4594 to i64*
  %4595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4596 = getelementptr inbounds %struct.GPR, %struct.GPR* %4595, i32 0, i32 7
  %4597 = getelementptr inbounds %struct.Reg, %struct.Reg* %4596, i32 0, i32 0
  %EDX.i418 = bitcast %union.anon* %4597 to i32*
  %4598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4599 = getelementptr inbounds %struct.GPR, %struct.GPR* %4598, i32 0, i32 5
  %4600 = getelementptr inbounds %struct.Reg, %struct.Reg* %4599, i32 0, i32 0
  %RCX.i419 = bitcast %union.anon* %4600 to i64*
  %4601 = load i32, i32* %EDX.i418
  %4602 = zext i32 %4601 to i64
  %4603 = load i64, i64* %PC.i417
  %4604 = add i64 %4603, 3
  store i64 %4604, i64* %PC.i417
  %4605 = shl i64 %4602, 32
  %4606 = ashr exact i64 %4605, 32
  store i64 %4606, i64* %RCX.i419, align 8
  store %struct.Memory* %loadMem_42aa49, %struct.Memory** %MEMORY
  %loadMem_42aa4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4608 = getelementptr inbounds %struct.GPR, %struct.GPR* %4607, i32 0, i32 33
  %4609 = getelementptr inbounds %struct.Reg, %struct.Reg* %4608, i32 0, i32 0
  %PC.i414 = bitcast %union.anon* %4609 to i64*
  %4610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4611 = getelementptr inbounds %struct.GPR, %struct.GPR* %4610, i32 0, i32 1
  %4612 = getelementptr inbounds %struct.Reg, %struct.Reg* %4611, i32 0, i32 0
  %RAX.i415 = bitcast %union.anon* %4612 to i64*
  %4613 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4614 = getelementptr inbounds %struct.GPR, %struct.GPR* %4613, i32 0, i32 5
  %4615 = getelementptr inbounds %struct.Reg, %struct.Reg* %4614, i32 0, i32 0
  %RCX.i416 = bitcast %union.anon* %4615 to i64*
  %4616 = load i64, i64* %RAX.i415
  %4617 = load i64, i64* %RCX.i416
  %4618 = add i64 %4617, %4616
  %4619 = load i64, i64* %PC.i414
  %4620 = add i64 %4619, 4
  store i64 %4620, i64* %PC.i414
  %4621 = inttoptr i64 %4618 to i8*
  store i8 6, i8* %4621
  store %struct.Memory* %loadMem_42aa4c, %struct.Memory** %MEMORY
  %loadMem_42aa50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4623 = getelementptr inbounds %struct.GPR, %struct.GPR* %4622, i32 0, i32 33
  %4624 = getelementptr inbounds %struct.Reg, %struct.Reg* %4623, i32 0, i32 0
  %PC.i411 = bitcast %union.anon* %4624 to i64*
  %4625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4626 = getelementptr inbounds %struct.GPR, %struct.GPR* %4625, i32 0, i32 1
  %4627 = getelementptr inbounds %struct.Reg, %struct.Reg* %4626, i32 0, i32 0
  %RAX.i412 = bitcast %union.anon* %4627 to i64*
  %4628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4629 = getelementptr inbounds %struct.GPR, %struct.GPR* %4628, i32 0, i32 15
  %4630 = getelementptr inbounds %struct.Reg, %struct.Reg* %4629, i32 0, i32 0
  %RBP.i413 = bitcast %union.anon* %4630 to i64*
  %4631 = load i64, i64* %RBP.i413
  %4632 = sub i64 %4631, 8
  %4633 = load i64, i64* %PC.i411
  %4634 = add i64 %4633, 4
  store i64 %4634, i64* %PC.i411
  %4635 = inttoptr i64 %4632 to i64*
  %4636 = load i64, i64* %4635
  store i64 %4636, i64* %RAX.i412, align 8
  store %struct.Memory* %loadMem_42aa50, %struct.Memory** %MEMORY
  %loadMem_42aa54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4638 = getelementptr inbounds %struct.GPR, %struct.GPR* %4637, i32 0, i32 33
  %4639 = getelementptr inbounds %struct.Reg, %struct.Reg* %4638, i32 0, i32 0
  %PC.i409 = bitcast %union.anon* %4639 to i64*
  %4640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4641 = getelementptr inbounds %struct.GPR, %struct.GPR* %4640, i32 0, i32 1
  %4642 = getelementptr inbounds %struct.Reg, %struct.Reg* %4641, i32 0, i32 0
  %RAX.i410 = bitcast %union.anon* %4642 to i64*
  %4643 = load i64, i64* %RAX.i410
  %4644 = add i64 %4643, 16
  %4645 = load i64, i64* %PC.i409
  %4646 = add i64 %4645, 4
  store i64 %4646, i64* %PC.i409
  %4647 = inttoptr i64 %4644 to i64*
  %4648 = load i64, i64* %4647
  store i64 %4648, i64* %RAX.i410, align 8
  store %struct.Memory* %loadMem_42aa54, %struct.Memory** %MEMORY
  %loadMem_42aa58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4650 = getelementptr inbounds %struct.GPR, %struct.GPR* %4649, i32 0, i32 33
  %4651 = getelementptr inbounds %struct.Reg, %struct.Reg* %4650, i32 0, i32 0
  %PC.i406 = bitcast %union.anon* %4651 to i64*
  %4652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4653 = getelementptr inbounds %struct.GPR, %struct.GPR* %4652, i32 0, i32 7
  %4654 = getelementptr inbounds %struct.Reg, %struct.Reg* %4653, i32 0, i32 0
  %RDX.i407 = bitcast %union.anon* %4654 to i64*
  %4655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4656 = getelementptr inbounds %struct.GPR, %struct.GPR* %4655, i32 0, i32 15
  %4657 = getelementptr inbounds %struct.Reg, %struct.Reg* %4656, i32 0, i32 0
  %RBP.i408 = bitcast %union.anon* %4657 to i64*
  %4658 = load i64, i64* %RBP.i408
  %4659 = sub i64 %4658, 40
  %4660 = load i64, i64* %PC.i406
  %4661 = add i64 %4660, 3
  store i64 %4661, i64* %PC.i406
  %4662 = inttoptr i64 %4659 to i32*
  %4663 = load i32, i32* %4662
  %4664 = zext i32 %4663 to i64
  store i64 %4664, i64* %RDX.i407, align 8
  store %struct.Memory* %loadMem_42aa58, %struct.Memory** %MEMORY
  %loadMem_42aa5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4665 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4666 = getelementptr inbounds %struct.GPR, %struct.GPR* %4665, i32 0, i32 33
  %4667 = getelementptr inbounds %struct.Reg, %struct.Reg* %4666, i32 0, i32 0
  %PC.i404 = bitcast %union.anon* %4667 to i64*
  %4668 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4669 = getelementptr inbounds %struct.GPR, %struct.GPR* %4668, i32 0, i32 7
  %4670 = getelementptr inbounds %struct.Reg, %struct.Reg* %4669, i32 0, i32 0
  %RDX.i405 = bitcast %union.anon* %4670 to i64*
  %4671 = load i64, i64* %RDX.i405
  %4672 = load i64, i64* %PC.i404
  %4673 = add i64 %4672, 3
  store i64 %4673, i64* %PC.i404
  %4674 = trunc i64 %4671 to i32
  %4675 = sub i32 %4674, 1
  %4676 = zext i32 %4675 to i64
  store i64 %4676, i64* %RDX.i405, align 8
  %4677 = icmp ult i32 %4674, 1
  %4678 = zext i1 %4677 to i8
  %4679 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4678, i8* %4679, align 1
  %4680 = and i32 %4675, 255
  %4681 = call i32 @llvm.ctpop.i32(i32 %4680)
  %4682 = trunc i32 %4681 to i8
  %4683 = and i8 %4682, 1
  %4684 = xor i8 %4683, 1
  %4685 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4684, i8* %4685, align 1
  %4686 = xor i64 1, %4671
  %4687 = trunc i64 %4686 to i32
  %4688 = xor i32 %4687, %4675
  %4689 = lshr i32 %4688, 4
  %4690 = trunc i32 %4689 to i8
  %4691 = and i8 %4690, 1
  %4692 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4691, i8* %4692, align 1
  %4693 = icmp eq i32 %4675, 0
  %4694 = zext i1 %4693 to i8
  %4695 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4694, i8* %4695, align 1
  %4696 = lshr i32 %4675, 31
  %4697 = trunc i32 %4696 to i8
  %4698 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4697, i8* %4698, align 1
  %4699 = lshr i32 %4674, 31
  %4700 = xor i32 %4696, %4699
  %4701 = add i32 %4700, %4699
  %4702 = icmp eq i32 %4701, 2
  %4703 = zext i1 %4702 to i8
  %4704 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4703, i8* %4704, align 1
  store %struct.Memory* %loadMem_42aa5b, %struct.Memory** %MEMORY
  %loadMem_42aa5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4706 = getelementptr inbounds %struct.GPR, %struct.GPR* %4705, i32 0, i32 33
  %4707 = getelementptr inbounds %struct.Reg, %struct.Reg* %4706, i32 0, i32 0
  %PC.i401 = bitcast %union.anon* %4707 to i64*
  %4708 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4709 = getelementptr inbounds %struct.GPR, %struct.GPR* %4708, i32 0, i32 7
  %4710 = getelementptr inbounds %struct.Reg, %struct.Reg* %4709, i32 0, i32 0
  %EDX.i402 = bitcast %union.anon* %4710 to i32*
  %4711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4712 = getelementptr inbounds %struct.GPR, %struct.GPR* %4711, i32 0, i32 5
  %4713 = getelementptr inbounds %struct.Reg, %struct.Reg* %4712, i32 0, i32 0
  %RCX.i403 = bitcast %union.anon* %4713 to i64*
  %4714 = load i32, i32* %EDX.i402
  %4715 = zext i32 %4714 to i64
  %4716 = load i64, i64* %PC.i401
  %4717 = add i64 %4716, 3
  store i64 %4717, i64* %PC.i401
  %4718 = shl i64 %4715, 32
  %4719 = ashr exact i64 %4718, 32
  store i64 %4719, i64* %RCX.i403, align 8
  store %struct.Memory* %loadMem_42aa5e, %struct.Memory** %MEMORY
  %loadMem_42aa61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4721 = getelementptr inbounds %struct.GPR, %struct.GPR* %4720, i32 0, i32 33
  %4722 = getelementptr inbounds %struct.Reg, %struct.Reg* %4721, i32 0, i32 0
  %PC.i398 = bitcast %union.anon* %4722 to i64*
  %4723 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4724 = getelementptr inbounds %struct.GPR, %struct.GPR* %4723, i32 0, i32 1
  %4725 = getelementptr inbounds %struct.Reg, %struct.Reg* %4724, i32 0, i32 0
  %RAX.i399 = bitcast %union.anon* %4725 to i64*
  %4726 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4727 = getelementptr inbounds %struct.GPR, %struct.GPR* %4726, i32 0, i32 5
  %4728 = getelementptr inbounds %struct.Reg, %struct.Reg* %4727, i32 0, i32 0
  %RCX.i400 = bitcast %union.anon* %4728 to i64*
  %4729 = load i64, i64* %RAX.i399
  %4730 = load i64, i64* %RCX.i400
  %4731 = mul i64 %4730, 4
  %4732 = add i64 %4731, %4729
  %4733 = load i64, i64* %PC.i398
  %4734 = add i64 %4733, 7
  store i64 %4734, i64* %PC.i398
  %4735 = inttoptr i64 %4732 to i32*
  store i32 0, i32* %4735
  store %struct.Memory* %loadMem_42aa61, %struct.Memory** %MEMORY
  %loadMem_42aa68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4737 = getelementptr inbounds %struct.GPR, %struct.GPR* %4736, i32 0, i32 33
  %4738 = getelementptr inbounds %struct.Reg, %struct.Reg* %4737, i32 0, i32 0
  %PC.i395 = bitcast %union.anon* %4738 to i64*
  %4739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4740 = getelementptr inbounds %struct.GPR, %struct.GPR* %4739, i32 0, i32 1
  %4741 = getelementptr inbounds %struct.Reg, %struct.Reg* %4740, i32 0, i32 0
  %RAX.i396 = bitcast %union.anon* %4741 to i64*
  %4742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4743 = getelementptr inbounds %struct.GPR, %struct.GPR* %4742, i32 0, i32 15
  %4744 = getelementptr inbounds %struct.Reg, %struct.Reg* %4743, i32 0, i32 0
  %RBP.i397 = bitcast %union.anon* %4744 to i64*
  %4745 = load i64, i64* %RBP.i397
  %4746 = sub i64 %4745, 8
  %4747 = load i64, i64* %PC.i395
  %4748 = add i64 %4747, 4
  store i64 %4748, i64* %PC.i395
  %4749 = inttoptr i64 %4746 to i64*
  %4750 = load i64, i64* %4749
  store i64 %4750, i64* %RAX.i396, align 8
  store %struct.Memory* %loadMem_42aa68, %struct.Memory** %MEMORY
  %loadMem_42aa6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4751 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4752 = getelementptr inbounds %struct.GPR, %struct.GPR* %4751, i32 0, i32 33
  %4753 = getelementptr inbounds %struct.Reg, %struct.Reg* %4752, i32 0, i32 0
  %PC.i393 = bitcast %union.anon* %4753 to i64*
  %4754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4755 = getelementptr inbounds %struct.GPR, %struct.GPR* %4754, i32 0, i32 1
  %4756 = getelementptr inbounds %struct.Reg, %struct.Reg* %4755, i32 0, i32 0
  %RAX.i394 = bitcast %union.anon* %4756 to i64*
  %4757 = load i64, i64* %RAX.i394
  %4758 = add i64 %4757, 24
  %4759 = load i64, i64* %PC.i393
  %4760 = add i64 %4759, 4
  store i64 %4760, i64* %PC.i393
  %4761 = inttoptr i64 %4758 to i64*
  %4762 = load i64, i64* %4761
  store i64 %4762, i64* %RAX.i394, align 8
  store %struct.Memory* %loadMem_42aa6c, %struct.Memory** %MEMORY
  %loadMem_42aa70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4763 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4764 = getelementptr inbounds %struct.GPR, %struct.GPR* %4763, i32 0, i32 33
  %4765 = getelementptr inbounds %struct.Reg, %struct.Reg* %4764, i32 0, i32 0
  %PC.i390 = bitcast %union.anon* %4765 to i64*
  %4766 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4767 = getelementptr inbounds %struct.GPR, %struct.GPR* %4766, i32 0, i32 7
  %4768 = getelementptr inbounds %struct.Reg, %struct.Reg* %4767, i32 0, i32 0
  %RDX.i391 = bitcast %union.anon* %4768 to i64*
  %4769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4770 = getelementptr inbounds %struct.GPR, %struct.GPR* %4769, i32 0, i32 15
  %4771 = getelementptr inbounds %struct.Reg, %struct.Reg* %4770, i32 0, i32 0
  %RBP.i392 = bitcast %union.anon* %4771 to i64*
  %4772 = load i64, i64* %RBP.i392
  %4773 = sub i64 %4772, 40
  %4774 = load i64, i64* %PC.i390
  %4775 = add i64 %4774, 3
  store i64 %4775, i64* %PC.i390
  %4776 = inttoptr i64 %4773 to i32*
  %4777 = load i32, i32* %4776
  %4778 = zext i32 %4777 to i64
  store i64 %4778, i64* %RDX.i391, align 8
  store %struct.Memory* %loadMem_42aa70, %struct.Memory** %MEMORY
  %loadMem_42aa73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4779 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4780 = getelementptr inbounds %struct.GPR, %struct.GPR* %4779, i32 0, i32 33
  %4781 = getelementptr inbounds %struct.Reg, %struct.Reg* %4780, i32 0, i32 0
  %PC.i388 = bitcast %union.anon* %4781 to i64*
  %4782 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4783 = getelementptr inbounds %struct.GPR, %struct.GPR* %4782, i32 0, i32 7
  %4784 = getelementptr inbounds %struct.Reg, %struct.Reg* %4783, i32 0, i32 0
  %RDX.i389 = bitcast %union.anon* %4784 to i64*
  %4785 = load i64, i64* %RDX.i389
  %4786 = load i64, i64* %PC.i388
  %4787 = add i64 %4786, 3
  store i64 %4787, i64* %PC.i388
  %4788 = trunc i64 %4785 to i32
  %4789 = sub i32 %4788, 1
  %4790 = zext i32 %4789 to i64
  store i64 %4790, i64* %RDX.i389, align 8
  %4791 = icmp ult i32 %4788, 1
  %4792 = zext i1 %4791 to i8
  %4793 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4792, i8* %4793, align 1
  %4794 = and i32 %4789, 255
  %4795 = call i32 @llvm.ctpop.i32(i32 %4794)
  %4796 = trunc i32 %4795 to i8
  %4797 = and i8 %4796, 1
  %4798 = xor i8 %4797, 1
  %4799 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4798, i8* %4799, align 1
  %4800 = xor i64 1, %4785
  %4801 = trunc i64 %4800 to i32
  %4802 = xor i32 %4801, %4789
  %4803 = lshr i32 %4802, 4
  %4804 = trunc i32 %4803 to i8
  %4805 = and i8 %4804, 1
  %4806 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4805, i8* %4806, align 1
  %4807 = icmp eq i32 %4789, 0
  %4808 = zext i1 %4807 to i8
  %4809 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4808, i8* %4809, align 1
  %4810 = lshr i32 %4789, 31
  %4811 = trunc i32 %4810 to i8
  %4812 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4811, i8* %4812, align 1
  %4813 = lshr i32 %4788, 31
  %4814 = xor i32 %4810, %4813
  %4815 = add i32 %4814, %4813
  %4816 = icmp eq i32 %4815, 2
  %4817 = zext i1 %4816 to i8
  %4818 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4817, i8* %4818, align 1
  store %struct.Memory* %loadMem_42aa73, %struct.Memory** %MEMORY
  %loadMem_42aa76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4820 = getelementptr inbounds %struct.GPR, %struct.GPR* %4819, i32 0, i32 33
  %4821 = getelementptr inbounds %struct.Reg, %struct.Reg* %4820, i32 0, i32 0
  %PC.i385 = bitcast %union.anon* %4821 to i64*
  %4822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4823 = getelementptr inbounds %struct.GPR, %struct.GPR* %4822, i32 0, i32 7
  %4824 = getelementptr inbounds %struct.Reg, %struct.Reg* %4823, i32 0, i32 0
  %EDX.i386 = bitcast %union.anon* %4824 to i32*
  %4825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4826 = getelementptr inbounds %struct.GPR, %struct.GPR* %4825, i32 0, i32 5
  %4827 = getelementptr inbounds %struct.Reg, %struct.Reg* %4826, i32 0, i32 0
  %RCX.i387 = bitcast %union.anon* %4827 to i64*
  %4828 = load i32, i32* %EDX.i386
  %4829 = zext i32 %4828 to i64
  %4830 = load i64, i64* %PC.i385
  %4831 = add i64 %4830, 3
  store i64 %4831, i64* %PC.i385
  %4832 = shl i64 %4829, 32
  %4833 = ashr exact i64 %4832, 32
  store i64 %4833, i64* %RCX.i387, align 8
  store %struct.Memory* %loadMem_42aa76, %struct.Memory** %MEMORY
  %loadMem_42aa79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4835 = getelementptr inbounds %struct.GPR, %struct.GPR* %4834, i32 0, i32 33
  %4836 = getelementptr inbounds %struct.Reg, %struct.Reg* %4835, i32 0, i32 0
  %PC.i382 = bitcast %union.anon* %4836 to i64*
  %4837 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4838 = getelementptr inbounds %struct.GPR, %struct.GPR* %4837, i32 0, i32 1
  %4839 = getelementptr inbounds %struct.Reg, %struct.Reg* %4838, i32 0, i32 0
  %RAX.i383 = bitcast %union.anon* %4839 to i64*
  %4840 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4841 = getelementptr inbounds %struct.GPR, %struct.GPR* %4840, i32 0, i32 5
  %4842 = getelementptr inbounds %struct.Reg, %struct.Reg* %4841, i32 0, i32 0
  %RCX.i384 = bitcast %union.anon* %4842 to i64*
  %4843 = load i64, i64* %RAX.i383
  %4844 = load i64, i64* %RCX.i384
  %4845 = mul i64 %4844, 4
  %4846 = add i64 %4845, %4843
  %4847 = load i64, i64* %PC.i382
  %4848 = add i64 %4847, 7
  store i64 %4848, i64* %PC.i382
  %4849 = inttoptr i64 %4846 to i32*
  store i32 0, i32* %4849
  store %struct.Memory* %loadMem_42aa79, %struct.Memory** %MEMORY
  %loadMem_42aa80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4850 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4851 = getelementptr inbounds %struct.GPR, %struct.GPR* %4850, i32 0, i32 33
  %4852 = getelementptr inbounds %struct.Reg, %struct.Reg* %4851, i32 0, i32 0
  %PC.i379 = bitcast %union.anon* %4852 to i64*
  %4853 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4854 = getelementptr inbounds %struct.GPR, %struct.GPR* %4853, i32 0, i32 7
  %4855 = getelementptr inbounds %struct.Reg, %struct.Reg* %4854, i32 0, i32 0
  %RDX.i380 = bitcast %union.anon* %4855 to i64*
  %4856 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4857 = getelementptr inbounds %struct.GPR, %struct.GPR* %4856, i32 0, i32 15
  %4858 = getelementptr inbounds %struct.Reg, %struct.Reg* %4857, i32 0, i32 0
  %RBP.i381 = bitcast %union.anon* %4858 to i64*
  %4859 = load i64, i64* %RBP.i381
  %4860 = sub i64 %4859, 36
  %4861 = load i64, i64* %PC.i379
  %4862 = add i64 %4861, 3
  store i64 %4862, i64* %PC.i379
  %4863 = inttoptr i64 %4860 to i32*
  %4864 = load i32, i32* %4863
  %4865 = zext i32 %4864 to i64
  store i64 %4865, i64* %RDX.i380, align 8
  store %struct.Memory* %loadMem_42aa80, %struct.Memory** %MEMORY
  %loadMem_42aa83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4867 = getelementptr inbounds %struct.GPR, %struct.GPR* %4866, i32 0, i32 33
  %4868 = getelementptr inbounds %struct.Reg, %struct.Reg* %4867, i32 0, i32 0
  %PC.i377 = bitcast %union.anon* %4868 to i64*
  %4869 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4870 = getelementptr inbounds %struct.GPR, %struct.GPR* %4869, i32 0, i32 7
  %4871 = getelementptr inbounds %struct.Reg, %struct.Reg* %4870, i32 0, i32 0
  %RDX.i378 = bitcast %union.anon* %4871 to i64*
  %4872 = load i64, i64* %RDX.i378
  %4873 = load i64, i64* %PC.i377
  %4874 = add i64 %4873, 3
  store i64 %4874, i64* %PC.i377
  %4875 = trunc i64 %4872 to i32
  %4876 = add i32 1, %4875
  %4877 = zext i32 %4876 to i64
  store i64 %4877, i64* %RDX.i378, align 8
  %4878 = icmp ult i32 %4876, %4875
  %4879 = icmp ult i32 %4876, 1
  %4880 = or i1 %4878, %4879
  %4881 = zext i1 %4880 to i8
  %4882 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4881, i8* %4882, align 1
  %4883 = and i32 %4876, 255
  %4884 = call i32 @llvm.ctpop.i32(i32 %4883)
  %4885 = trunc i32 %4884 to i8
  %4886 = and i8 %4885, 1
  %4887 = xor i8 %4886, 1
  %4888 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4887, i8* %4888, align 1
  %4889 = xor i64 1, %4872
  %4890 = trunc i64 %4889 to i32
  %4891 = xor i32 %4890, %4876
  %4892 = lshr i32 %4891, 4
  %4893 = trunc i32 %4892 to i8
  %4894 = and i8 %4893, 1
  %4895 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4894, i8* %4895, align 1
  %4896 = icmp eq i32 %4876, 0
  %4897 = zext i1 %4896 to i8
  %4898 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4897, i8* %4898, align 1
  %4899 = lshr i32 %4876, 31
  %4900 = trunc i32 %4899 to i8
  %4901 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4900, i8* %4901, align 1
  %4902 = lshr i32 %4875, 31
  %4903 = xor i32 %4899, %4902
  %4904 = add i32 %4903, %4899
  %4905 = icmp eq i32 %4904, 2
  %4906 = zext i1 %4905 to i8
  %4907 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4906, i8* %4907, align 1
  store %struct.Memory* %loadMem_42aa83, %struct.Memory** %MEMORY
  %loadMem_42aa86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4909 = getelementptr inbounds %struct.GPR, %struct.GPR* %4908, i32 0, i32 33
  %4910 = getelementptr inbounds %struct.Reg, %struct.Reg* %4909, i32 0, i32 0
  %PC.i374 = bitcast %union.anon* %4910 to i64*
  %4911 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4912 = getelementptr inbounds %struct.GPR, %struct.GPR* %4911, i32 0, i32 7
  %4913 = getelementptr inbounds %struct.Reg, %struct.Reg* %4912, i32 0, i32 0
  %EDX.i375 = bitcast %union.anon* %4913 to i32*
  %4914 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4915 = getelementptr inbounds %struct.GPR, %struct.GPR* %4914, i32 0, i32 15
  %4916 = getelementptr inbounds %struct.Reg, %struct.Reg* %4915, i32 0, i32 0
  %RBP.i376 = bitcast %union.anon* %4916 to i64*
  %4917 = load i64, i64* %RBP.i376
  %4918 = sub i64 %4917, 36
  %4919 = load i32, i32* %EDX.i375
  %4920 = zext i32 %4919 to i64
  %4921 = load i64, i64* %PC.i374
  %4922 = add i64 %4921, 3
  store i64 %4922, i64* %PC.i374
  %4923 = inttoptr i64 %4918 to i32*
  store i32 %4919, i32* %4923
  store %struct.Memory* %loadMem_42aa86, %struct.Memory** %MEMORY
  %loadMem_42aa89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4924 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4925 = getelementptr inbounds %struct.GPR, %struct.GPR* %4924, i32 0, i32 33
  %4926 = getelementptr inbounds %struct.Reg, %struct.Reg* %4925, i32 0, i32 0
  %PC.i371 = bitcast %union.anon* %4926 to i64*
  %4927 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4928 = getelementptr inbounds %struct.GPR, %struct.GPR* %4927, i32 0, i32 7
  %4929 = getelementptr inbounds %struct.Reg, %struct.Reg* %4928, i32 0, i32 0
  %RDX.i372 = bitcast %union.anon* %4929 to i64*
  %4930 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4931 = getelementptr inbounds %struct.GPR, %struct.GPR* %4930, i32 0, i32 15
  %4932 = getelementptr inbounds %struct.Reg, %struct.Reg* %4931, i32 0, i32 0
  %RBP.i373 = bitcast %union.anon* %4932 to i64*
  %4933 = load i64, i64* %RBP.i373
  %4934 = sub i64 %4933, 40
  %4935 = load i64, i64* %PC.i371
  %4936 = add i64 %4935, 3
  store i64 %4936, i64* %PC.i371
  %4937 = inttoptr i64 %4934 to i32*
  %4938 = load i32, i32* %4937
  %4939 = zext i32 %4938 to i64
  store i64 %4939, i64* %RDX.i372, align 8
  store %struct.Memory* %loadMem_42aa89, %struct.Memory** %MEMORY
  %loadMem_42aa8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4940 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4941 = getelementptr inbounds %struct.GPR, %struct.GPR* %4940, i32 0, i32 33
  %4942 = getelementptr inbounds %struct.Reg, %struct.Reg* %4941, i32 0, i32 0
  %PC.i369 = bitcast %union.anon* %4942 to i64*
  %4943 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4944 = getelementptr inbounds %struct.GPR, %struct.GPR* %4943, i32 0, i32 7
  %4945 = getelementptr inbounds %struct.Reg, %struct.Reg* %4944, i32 0, i32 0
  %RDX.i370 = bitcast %union.anon* %4945 to i64*
  %4946 = load i64, i64* %RDX.i370
  %4947 = load i64, i64* %PC.i369
  %4948 = add i64 %4947, 3
  store i64 %4948, i64* %PC.i369
  %4949 = trunc i64 %4946 to i32
  %4950 = add i32 1, %4949
  %4951 = zext i32 %4950 to i64
  store i64 %4951, i64* %RDX.i370, align 8
  %4952 = icmp ult i32 %4950, %4949
  %4953 = icmp ult i32 %4950, 1
  %4954 = or i1 %4952, %4953
  %4955 = zext i1 %4954 to i8
  %4956 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4955, i8* %4956, align 1
  %4957 = and i32 %4950, 255
  %4958 = call i32 @llvm.ctpop.i32(i32 %4957)
  %4959 = trunc i32 %4958 to i8
  %4960 = and i8 %4959, 1
  %4961 = xor i8 %4960, 1
  %4962 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4961, i8* %4962, align 1
  %4963 = xor i64 1, %4946
  %4964 = trunc i64 %4963 to i32
  %4965 = xor i32 %4964, %4950
  %4966 = lshr i32 %4965, 4
  %4967 = trunc i32 %4966 to i8
  %4968 = and i8 %4967, 1
  %4969 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4968, i8* %4969, align 1
  %4970 = icmp eq i32 %4950, 0
  %4971 = zext i1 %4970 to i8
  %4972 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4971, i8* %4972, align 1
  %4973 = lshr i32 %4950, 31
  %4974 = trunc i32 %4973 to i8
  %4975 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4974, i8* %4975, align 1
  %4976 = lshr i32 %4949, 31
  %4977 = xor i32 %4973, %4976
  %4978 = add i32 %4977, %4973
  %4979 = icmp eq i32 %4978, 2
  %4980 = zext i1 %4979 to i8
  %4981 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4980, i8* %4981, align 1
  store %struct.Memory* %loadMem_42aa8c, %struct.Memory** %MEMORY
  %loadMem_42aa8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4982 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4983 = getelementptr inbounds %struct.GPR, %struct.GPR* %4982, i32 0, i32 33
  %4984 = getelementptr inbounds %struct.Reg, %struct.Reg* %4983, i32 0, i32 0
  %PC.i366 = bitcast %union.anon* %4984 to i64*
  %4985 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4986 = getelementptr inbounds %struct.GPR, %struct.GPR* %4985, i32 0, i32 7
  %4987 = getelementptr inbounds %struct.Reg, %struct.Reg* %4986, i32 0, i32 0
  %EDX.i367 = bitcast %union.anon* %4987 to i32*
  %4988 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4989 = getelementptr inbounds %struct.GPR, %struct.GPR* %4988, i32 0, i32 15
  %4990 = getelementptr inbounds %struct.Reg, %struct.Reg* %4989, i32 0, i32 0
  %RBP.i368 = bitcast %union.anon* %4990 to i64*
  %4991 = load i64, i64* %RBP.i368
  %4992 = sub i64 %4991, 40
  %4993 = load i32, i32* %EDX.i367
  %4994 = zext i32 %4993 to i64
  %4995 = load i64, i64* %PC.i366
  %4996 = add i64 %4995, 3
  store i64 %4996, i64* %PC.i366
  %4997 = inttoptr i64 %4992 to i32*
  store i32 %4993, i32* %4997
  store %struct.Memory* %loadMem_42aa8f, %struct.Memory** %MEMORY
  %loadMem_42aa92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4998 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4999 = getelementptr inbounds %struct.GPR, %struct.GPR* %4998, i32 0, i32 33
  %5000 = getelementptr inbounds %struct.Reg, %struct.Reg* %4999, i32 0, i32 0
  %PC.i365 = bitcast %union.anon* %5000 to i64*
  %5001 = load i64, i64* %PC.i365
  %5002 = add i64 %5001, 463
  %5003 = load i64, i64* %PC.i365
  %5004 = add i64 %5003, 5
  store i64 %5004, i64* %PC.i365
  %5005 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5002, i64* %5005, align 8
  store %struct.Memory* %loadMem_42aa92, %struct.Memory** %MEMORY
  br label %block_.L_42ac61

block_.L_42aa97:                                  ; preds = %block_42a9da, %block_42a9bc, %block_42a99e, %block_.L_42a985
  %loadMem_42aa97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5006 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5007 = getelementptr inbounds %struct.GPR, %struct.GPR* %5006, i32 0, i32 33
  %5008 = getelementptr inbounds %struct.Reg, %struct.Reg* %5007, i32 0, i32 0
  %PC.i362 = bitcast %union.anon* %5008 to i64*
  %5009 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5010 = getelementptr inbounds %struct.GPR, %struct.GPR* %5009, i32 0, i32 1
  %5011 = getelementptr inbounds %struct.Reg, %struct.Reg* %5010, i32 0, i32 0
  %RAX.i363 = bitcast %union.anon* %5011 to i64*
  %5012 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5013 = getelementptr inbounds %struct.GPR, %struct.GPR* %5012, i32 0, i32 15
  %5014 = getelementptr inbounds %struct.Reg, %struct.Reg* %5013, i32 0, i32 0
  %RBP.i364 = bitcast %union.anon* %5014 to i64*
  %5015 = load i64, i64* %RBP.i364
  %5016 = sub i64 %5015, 8
  %5017 = load i64, i64* %PC.i362
  %5018 = add i64 %5017, 4
  store i64 %5018, i64* %PC.i362
  %5019 = inttoptr i64 %5016 to i64*
  %5020 = load i64, i64* %5019
  store i64 %5020, i64* %RAX.i363, align 8
  store %struct.Memory* %loadMem_42aa97, %struct.Memory** %MEMORY
  %loadMem_42aa9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5021 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5022 = getelementptr inbounds %struct.GPR, %struct.GPR* %5021, i32 0, i32 33
  %5023 = getelementptr inbounds %struct.Reg, %struct.Reg* %5022, i32 0, i32 0
  %PC.i360 = bitcast %union.anon* %5023 to i64*
  %5024 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5025 = getelementptr inbounds %struct.GPR, %struct.GPR* %5024, i32 0, i32 1
  %5026 = getelementptr inbounds %struct.Reg, %struct.Reg* %5025, i32 0, i32 0
  %RAX.i361 = bitcast %union.anon* %5026 to i64*
  %5027 = load i64, i64* %RAX.i361
  %5028 = add i64 %5027, 8
  %5029 = load i64, i64* %PC.i360
  %5030 = add i64 %5029, 4
  store i64 %5030, i64* %PC.i360
  %5031 = inttoptr i64 %5028 to i64*
  %5032 = load i64, i64* %5031
  store i64 %5032, i64* %RAX.i361, align 8
  store %struct.Memory* %loadMem_42aa9b, %struct.Memory** %MEMORY
  %loadMem_42aa9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5033 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5034 = getelementptr inbounds %struct.GPR, %struct.GPR* %5033, i32 0, i32 33
  %5035 = getelementptr inbounds %struct.Reg, %struct.Reg* %5034, i32 0, i32 0
  %PC.i357 = bitcast %union.anon* %5035 to i64*
  %5036 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5037 = getelementptr inbounds %struct.GPR, %struct.GPR* %5036, i32 0, i32 5
  %5038 = getelementptr inbounds %struct.Reg, %struct.Reg* %5037, i32 0, i32 0
  %RCX.i358 = bitcast %union.anon* %5038 to i64*
  %5039 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5040 = getelementptr inbounds %struct.GPR, %struct.GPR* %5039, i32 0, i32 15
  %5041 = getelementptr inbounds %struct.Reg, %struct.Reg* %5040, i32 0, i32 0
  %RBP.i359 = bitcast %union.anon* %5041 to i64*
  %5042 = load i64, i64* %RBP.i359
  %5043 = sub i64 %5042, 36
  %5044 = load i64, i64* %PC.i357
  %5045 = add i64 %5044, 4
  store i64 %5045, i64* %PC.i357
  %5046 = inttoptr i64 %5043 to i32*
  %5047 = load i32, i32* %5046
  %5048 = sext i32 %5047 to i64
  store i64 %5048, i64* %RCX.i358, align 8
  store %struct.Memory* %loadMem_42aa9f, %struct.Memory** %MEMORY
  %loadMem_42aaa3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5049 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5050 = getelementptr inbounds %struct.GPR, %struct.GPR* %5049, i32 0, i32 33
  %5051 = getelementptr inbounds %struct.Reg, %struct.Reg* %5050, i32 0, i32 0
  %PC.i353 = bitcast %union.anon* %5051 to i64*
  %5052 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5053 = getelementptr inbounds %struct.GPR, %struct.GPR* %5052, i32 0, i32 1
  %5054 = getelementptr inbounds %struct.Reg, %struct.Reg* %5053, i32 0, i32 0
  %RAX.i354 = bitcast %union.anon* %5054 to i64*
  %5055 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5056 = getelementptr inbounds %struct.GPR, %struct.GPR* %5055, i32 0, i32 5
  %5057 = getelementptr inbounds %struct.Reg, %struct.Reg* %5056, i32 0, i32 0
  %RCX.i355 = bitcast %union.anon* %5057 to i64*
  %5058 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5059 = getelementptr inbounds %struct.GPR, %struct.GPR* %5058, i32 0, i32 7
  %5060 = getelementptr inbounds %struct.Reg, %struct.Reg* %5059, i32 0, i32 0
  %RDX.i356 = bitcast %union.anon* %5060 to i64*
  %5061 = load i64, i64* %RAX.i354
  %5062 = load i64, i64* %RCX.i355
  %5063 = add i64 %5062, %5061
  %5064 = load i64, i64* %PC.i353
  %5065 = add i64 %5064, 4
  store i64 %5065, i64* %PC.i353
  %5066 = inttoptr i64 %5063 to i8*
  %5067 = load i8, i8* %5066
  %5068 = sext i8 %5067 to i64
  %5069 = and i64 %5068, 4294967295
  store i64 %5069, i64* %RDX.i356, align 8
  store %struct.Memory* %loadMem_42aaa3, %struct.Memory** %MEMORY
  %loadMem_42aaa7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5070 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5071 = getelementptr inbounds %struct.GPR, %struct.GPR* %5070, i32 0, i32 33
  %5072 = getelementptr inbounds %struct.Reg, %struct.Reg* %5071, i32 0, i32 0
  %PC.i351 = bitcast %union.anon* %5072 to i64*
  %5073 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5074 = getelementptr inbounds %struct.GPR, %struct.GPR* %5073, i32 0, i32 7
  %5075 = getelementptr inbounds %struct.Reg, %struct.Reg* %5074, i32 0, i32 0
  %EDX.i352 = bitcast %union.anon* %5075 to i32*
  %5076 = load i32, i32* %EDX.i352
  %5077 = zext i32 %5076 to i64
  %5078 = load i64, i64* %PC.i351
  %5079 = add i64 %5078, 3
  store i64 %5079, i64* %PC.i351
  %5080 = sub i32 %5076, 7
  %5081 = icmp ult i32 %5076, 7
  %5082 = zext i1 %5081 to i8
  %5083 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5082, i8* %5083, align 1
  %5084 = and i32 %5080, 255
  %5085 = call i32 @llvm.ctpop.i32(i32 %5084)
  %5086 = trunc i32 %5085 to i8
  %5087 = and i8 %5086, 1
  %5088 = xor i8 %5087, 1
  %5089 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5088, i8* %5089, align 1
  %5090 = xor i64 7, %5077
  %5091 = trunc i64 %5090 to i32
  %5092 = xor i32 %5091, %5080
  %5093 = lshr i32 %5092, 4
  %5094 = trunc i32 %5093 to i8
  %5095 = and i8 %5094, 1
  %5096 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5095, i8* %5096, align 1
  %5097 = icmp eq i32 %5080, 0
  %5098 = zext i1 %5097 to i8
  %5099 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5098, i8* %5099, align 1
  %5100 = lshr i32 %5080, 31
  %5101 = trunc i32 %5100 to i8
  %5102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5101, i8* %5102, align 1
  %5103 = lshr i32 %5076, 31
  %5104 = xor i32 %5100, %5103
  %5105 = add i32 %5104, %5103
  %5106 = icmp eq i32 %5105, 2
  %5107 = zext i1 %5106 to i8
  %5108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5107, i8* %5108, align 1
  store %struct.Memory* %loadMem_42aaa7, %struct.Memory** %MEMORY
  %loadMem_42aaaa = load %struct.Memory*, %struct.Memory** %MEMORY
  %5109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5110 = getelementptr inbounds %struct.GPR, %struct.GPR* %5109, i32 0, i32 33
  %5111 = getelementptr inbounds %struct.Reg, %struct.Reg* %5110, i32 0, i32 0
  %PC.i350 = bitcast %union.anon* %5111 to i64*
  %5112 = load i64, i64* %PC.i350
  %5113 = add i64 %5112, 326
  %5114 = load i64, i64* %PC.i350
  %5115 = add i64 %5114, 6
  %5116 = load i64, i64* %PC.i350
  %5117 = add i64 %5116, 6
  store i64 %5117, i64* %PC.i350
  %5118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5119 = load i8, i8* %5118, align 1
  %5120 = icmp eq i8 %5119, 0
  %5121 = zext i1 %5120 to i8
  store i8 %5121, i8* %BRANCH_TAKEN, align 1
  %5122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5123 = select i1 %5120, i64 %5113, i64 %5115
  store i64 %5123, i64* %5122, align 8
  store %struct.Memory* %loadMem_42aaaa, %struct.Memory** %MEMORY
  %loadBr_42aaaa = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42aaaa = icmp eq i8 %loadBr_42aaaa, 1
  br i1 %cmpBr_42aaaa, label %block_.L_42abf0, label %block_42aab0

block_42aab0:                                     ; preds = %block_.L_42aa97
  %loadMem_42aab0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5125 = getelementptr inbounds %struct.GPR, %struct.GPR* %5124, i32 0, i32 33
  %5126 = getelementptr inbounds %struct.Reg, %struct.Reg* %5125, i32 0, i32 0
  %PC.i347 = bitcast %union.anon* %5126 to i64*
  %5127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5128 = getelementptr inbounds %struct.GPR, %struct.GPR* %5127, i32 0, i32 1
  %5129 = getelementptr inbounds %struct.Reg, %struct.Reg* %5128, i32 0, i32 0
  %RAX.i348 = bitcast %union.anon* %5129 to i64*
  %5130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5131 = getelementptr inbounds %struct.GPR, %struct.GPR* %5130, i32 0, i32 15
  %5132 = getelementptr inbounds %struct.Reg, %struct.Reg* %5131, i32 0, i32 0
  %RBP.i349 = bitcast %union.anon* %5132 to i64*
  %5133 = load i64, i64* %RBP.i349
  %5134 = sub i64 %5133, 8
  %5135 = load i64, i64* %PC.i347
  %5136 = add i64 %5135, 4
  store i64 %5136, i64* %PC.i347
  %5137 = inttoptr i64 %5134 to i64*
  %5138 = load i64, i64* %5137
  store i64 %5138, i64* %RAX.i348, align 8
  store %struct.Memory* %loadMem_42aab0, %struct.Memory** %MEMORY
  %loadMem_42aab4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5140 = getelementptr inbounds %struct.GPR, %struct.GPR* %5139, i32 0, i32 33
  %5141 = getelementptr inbounds %struct.Reg, %struct.Reg* %5140, i32 0, i32 0
  %PC.i345 = bitcast %union.anon* %5141 to i64*
  %5142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5143 = getelementptr inbounds %struct.GPR, %struct.GPR* %5142, i32 0, i32 1
  %5144 = getelementptr inbounds %struct.Reg, %struct.Reg* %5143, i32 0, i32 0
  %RAX.i346 = bitcast %union.anon* %5144 to i64*
  %5145 = load i64, i64* %RAX.i346
  %5146 = add i64 %5145, 8
  %5147 = load i64, i64* %PC.i345
  %5148 = add i64 %5147, 4
  store i64 %5148, i64* %PC.i345
  %5149 = inttoptr i64 %5146 to i64*
  %5150 = load i64, i64* %5149
  store i64 %5150, i64* %RAX.i346, align 8
  store %struct.Memory* %loadMem_42aab4, %struct.Memory** %MEMORY
  %loadMem_42aab8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5152 = getelementptr inbounds %struct.GPR, %struct.GPR* %5151, i32 0, i32 33
  %5153 = getelementptr inbounds %struct.Reg, %struct.Reg* %5152, i32 0, i32 0
  %PC.i342 = bitcast %union.anon* %5153 to i64*
  %5154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5155 = getelementptr inbounds %struct.GPR, %struct.GPR* %5154, i32 0, i32 5
  %5156 = getelementptr inbounds %struct.Reg, %struct.Reg* %5155, i32 0, i32 0
  %RCX.i343 = bitcast %union.anon* %5156 to i64*
  %5157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5158 = getelementptr inbounds %struct.GPR, %struct.GPR* %5157, i32 0, i32 15
  %5159 = getelementptr inbounds %struct.Reg, %struct.Reg* %5158, i32 0, i32 0
  %RBP.i344 = bitcast %union.anon* %5159 to i64*
  %5160 = load i64, i64* %RBP.i344
  %5161 = sub i64 %5160, 36
  %5162 = load i64, i64* %PC.i342
  %5163 = add i64 %5162, 3
  store i64 %5163, i64* %PC.i342
  %5164 = inttoptr i64 %5161 to i32*
  %5165 = load i32, i32* %5164
  %5166 = zext i32 %5165 to i64
  store i64 %5166, i64* %RCX.i343, align 8
  store %struct.Memory* %loadMem_42aab8, %struct.Memory** %MEMORY
  %loadMem_42aabb = load %struct.Memory*, %struct.Memory** %MEMORY
  %5167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5168 = getelementptr inbounds %struct.GPR, %struct.GPR* %5167, i32 0, i32 33
  %5169 = getelementptr inbounds %struct.Reg, %struct.Reg* %5168, i32 0, i32 0
  %PC.i340 = bitcast %union.anon* %5169 to i64*
  %5170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5171 = getelementptr inbounds %struct.GPR, %struct.GPR* %5170, i32 0, i32 5
  %5172 = getelementptr inbounds %struct.Reg, %struct.Reg* %5171, i32 0, i32 0
  %RCX.i341 = bitcast %union.anon* %5172 to i64*
  %5173 = load i64, i64* %RCX.i341
  %5174 = load i64, i64* %PC.i340
  %5175 = add i64 %5174, 3
  store i64 %5175, i64* %PC.i340
  %5176 = trunc i64 %5173 to i32
  %5177 = sub i32 %5176, 1
  %5178 = zext i32 %5177 to i64
  store i64 %5178, i64* %RCX.i341, align 8
  %5179 = icmp ult i32 %5176, 1
  %5180 = zext i1 %5179 to i8
  %5181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5180, i8* %5181, align 1
  %5182 = and i32 %5177, 255
  %5183 = call i32 @llvm.ctpop.i32(i32 %5182)
  %5184 = trunc i32 %5183 to i8
  %5185 = and i8 %5184, 1
  %5186 = xor i8 %5185, 1
  %5187 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5186, i8* %5187, align 1
  %5188 = xor i64 1, %5173
  %5189 = trunc i64 %5188 to i32
  %5190 = xor i32 %5189, %5177
  %5191 = lshr i32 %5190, 4
  %5192 = trunc i32 %5191 to i8
  %5193 = and i8 %5192, 1
  %5194 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5193, i8* %5194, align 1
  %5195 = icmp eq i32 %5177, 0
  %5196 = zext i1 %5195 to i8
  %5197 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5196, i8* %5197, align 1
  %5198 = lshr i32 %5177, 31
  %5199 = trunc i32 %5198 to i8
  %5200 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5199, i8* %5200, align 1
  %5201 = lshr i32 %5176, 31
  %5202 = xor i32 %5198, %5201
  %5203 = add i32 %5202, %5201
  %5204 = icmp eq i32 %5203, 2
  %5205 = zext i1 %5204 to i8
  %5206 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5205, i8* %5206, align 1
  store %struct.Memory* %loadMem_42aabb, %struct.Memory** %MEMORY
  %loadMem_42aabe = load %struct.Memory*, %struct.Memory** %MEMORY
  %5207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5208 = getelementptr inbounds %struct.GPR, %struct.GPR* %5207, i32 0, i32 33
  %5209 = getelementptr inbounds %struct.Reg, %struct.Reg* %5208, i32 0, i32 0
  %PC.i337 = bitcast %union.anon* %5209 to i64*
  %5210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5211 = getelementptr inbounds %struct.GPR, %struct.GPR* %5210, i32 0, i32 5
  %5212 = getelementptr inbounds %struct.Reg, %struct.Reg* %5211, i32 0, i32 0
  %ECX.i338 = bitcast %union.anon* %5212 to i32*
  %5213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5214 = getelementptr inbounds %struct.GPR, %struct.GPR* %5213, i32 0, i32 7
  %5215 = getelementptr inbounds %struct.Reg, %struct.Reg* %5214, i32 0, i32 0
  %RDX.i339 = bitcast %union.anon* %5215 to i64*
  %5216 = load i32, i32* %ECX.i338
  %5217 = zext i32 %5216 to i64
  %5218 = load i64, i64* %PC.i337
  %5219 = add i64 %5218, 3
  store i64 %5219, i64* %PC.i337
  %5220 = shl i64 %5217, 32
  %5221 = ashr exact i64 %5220, 32
  store i64 %5221, i64* %RDX.i339, align 8
  store %struct.Memory* %loadMem_42aabe, %struct.Memory** %MEMORY
  %loadMem_42aac1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5223 = getelementptr inbounds %struct.GPR, %struct.GPR* %5222, i32 0, i32 33
  %5224 = getelementptr inbounds %struct.Reg, %struct.Reg* %5223, i32 0, i32 0
  %PC.i333 = bitcast %union.anon* %5224 to i64*
  %5225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5226 = getelementptr inbounds %struct.GPR, %struct.GPR* %5225, i32 0, i32 1
  %5227 = getelementptr inbounds %struct.Reg, %struct.Reg* %5226, i32 0, i32 0
  %RAX.i334 = bitcast %union.anon* %5227 to i64*
  %5228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5229 = getelementptr inbounds %struct.GPR, %struct.GPR* %5228, i32 0, i32 5
  %5230 = getelementptr inbounds %struct.Reg, %struct.Reg* %5229, i32 0, i32 0
  %RCX.i335 = bitcast %union.anon* %5230 to i64*
  %5231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5232 = getelementptr inbounds %struct.GPR, %struct.GPR* %5231, i32 0, i32 7
  %5233 = getelementptr inbounds %struct.Reg, %struct.Reg* %5232, i32 0, i32 0
  %RDX.i336 = bitcast %union.anon* %5233 to i64*
  %5234 = load i64, i64* %RAX.i334
  %5235 = load i64, i64* %RDX.i336
  %5236 = add i64 %5235, %5234
  %5237 = load i64, i64* %PC.i333
  %5238 = add i64 %5237, 4
  store i64 %5238, i64* %PC.i333
  %5239 = inttoptr i64 %5236 to i8*
  %5240 = load i8, i8* %5239
  %5241 = sext i8 %5240 to i64
  %5242 = and i64 %5241, 4294967295
  store i64 %5242, i64* %RCX.i335, align 8
  store %struct.Memory* %loadMem_42aac1, %struct.Memory** %MEMORY
  %loadMem_42aac5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5244 = getelementptr inbounds %struct.GPR, %struct.GPR* %5243, i32 0, i32 33
  %5245 = getelementptr inbounds %struct.Reg, %struct.Reg* %5244, i32 0, i32 0
  %PC.i331 = bitcast %union.anon* %5245 to i64*
  %5246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5247 = getelementptr inbounds %struct.GPR, %struct.GPR* %5246, i32 0, i32 5
  %5248 = getelementptr inbounds %struct.Reg, %struct.Reg* %5247, i32 0, i32 0
  %ECX.i332 = bitcast %union.anon* %5248 to i32*
  %5249 = load i32, i32* %ECX.i332
  %5250 = zext i32 %5249 to i64
  %5251 = load i64, i64* %PC.i331
  %5252 = add i64 %5251, 3
  store i64 %5252, i64* %PC.i331
  %5253 = sub i32 %5249, 6
  %5254 = icmp ult i32 %5249, 6
  %5255 = zext i1 %5254 to i8
  %5256 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5255, i8* %5256, align 1
  %5257 = and i32 %5253, 255
  %5258 = call i32 @llvm.ctpop.i32(i32 %5257)
  %5259 = trunc i32 %5258 to i8
  %5260 = and i8 %5259, 1
  %5261 = xor i8 %5260, 1
  %5262 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5261, i8* %5262, align 1
  %5263 = xor i64 6, %5250
  %5264 = trunc i64 %5263 to i32
  %5265 = xor i32 %5264, %5253
  %5266 = lshr i32 %5265, 4
  %5267 = trunc i32 %5266 to i8
  %5268 = and i8 %5267, 1
  %5269 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5268, i8* %5269, align 1
  %5270 = icmp eq i32 %5253, 0
  %5271 = zext i1 %5270 to i8
  %5272 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5271, i8* %5272, align 1
  %5273 = lshr i32 %5253, 31
  %5274 = trunc i32 %5273 to i8
  %5275 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5274, i8* %5275, align 1
  %5276 = lshr i32 %5249, 31
  %5277 = xor i32 %5273, %5276
  %5278 = add i32 %5277, %5276
  %5279 = icmp eq i32 %5278, 2
  %5280 = zext i1 %5279 to i8
  %5281 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5280, i8* %5281, align 1
  store %struct.Memory* %loadMem_42aac5, %struct.Memory** %MEMORY
  %loadMem_42aac8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5283 = getelementptr inbounds %struct.GPR, %struct.GPR* %5282, i32 0, i32 33
  %5284 = getelementptr inbounds %struct.Reg, %struct.Reg* %5283, i32 0, i32 0
  %PC.i330 = bitcast %union.anon* %5284 to i64*
  %5285 = load i64, i64* %PC.i330
  %5286 = add i64 %5285, 296
  %5287 = load i64, i64* %PC.i330
  %5288 = add i64 %5287, 6
  %5289 = load i64, i64* %PC.i330
  %5290 = add i64 %5289, 6
  store i64 %5290, i64* %PC.i330
  %5291 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5292 = load i8, i8* %5291, align 1
  %5293 = icmp eq i8 %5292, 0
  %5294 = zext i1 %5293 to i8
  store i8 %5294, i8* %BRANCH_TAKEN, align 1
  %5295 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5296 = select i1 %5293, i64 %5286, i64 %5288
  store i64 %5296, i64* %5295, align 8
  store %struct.Memory* %loadMem_42aac8, %struct.Memory** %MEMORY
  %loadBr_42aac8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42aac8 = icmp eq i8 %loadBr_42aac8, 1
  br i1 %cmpBr_42aac8, label %block_.L_42abf0, label %block_42aace

block_42aace:                                     ; preds = %block_42aab0
  %loadMem_42aace = load %struct.Memory*, %struct.Memory** %MEMORY
  %5297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5298 = getelementptr inbounds %struct.GPR, %struct.GPR* %5297, i32 0, i32 33
  %5299 = getelementptr inbounds %struct.Reg, %struct.Reg* %5298, i32 0, i32 0
  %PC.i327 = bitcast %union.anon* %5299 to i64*
  %5300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5301 = getelementptr inbounds %struct.GPR, %struct.GPR* %5300, i32 0, i32 1
  %5302 = getelementptr inbounds %struct.Reg, %struct.Reg* %5301, i32 0, i32 0
  %RAX.i328 = bitcast %union.anon* %5302 to i64*
  %5303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5304 = getelementptr inbounds %struct.GPR, %struct.GPR* %5303, i32 0, i32 15
  %5305 = getelementptr inbounds %struct.Reg, %struct.Reg* %5304, i32 0, i32 0
  %RBP.i329 = bitcast %union.anon* %5305 to i64*
  %5306 = load i64, i64* %RBP.i329
  %5307 = sub i64 %5306, 8
  %5308 = load i64, i64* %PC.i327
  %5309 = add i64 %5308, 4
  store i64 %5309, i64* %PC.i327
  %5310 = inttoptr i64 %5307 to i64*
  %5311 = load i64, i64* %5310
  store i64 %5311, i64* %RAX.i328, align 8
  store %struct.Memory* %loadMem_42aace, %struct.Memory** %MEMORY
  %loadMem_42aad2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5313 = getelementptr inbounds %struct.GPR, %struct.GPR* %5312, i32 0, i32 33
  %5314 = getelementptr inbounds %struct.Reg, %struct.Reg* %5313, i32 0, i32 0
  %PC.i325 = bitcast %union.anon* %5314 to i64*
  %5315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5316 = getelementptr inbounds %struct.GPR, %struct.GPR* %5315, i32 0, i32 1
  %5317 = getelementptr inbounds %struct.Reg, %struct.Reg* %5316, i32 0, i32 0
  %RAX.i326 = bitcast %union.anon* %5317 to i64*
  %5318 = load i64, i64* %RAX.i326
  %5319 = add i64 %5318, 8
  %5320 = load i64, i64* %PC.i325
  %5321 = add i64 %5320, 4
  store i64 %5321, i64* %PC.i325
  %5322 = inttoptr i64 %5319 to i64*
  %5323 = load i64, i64* %5322
  store i64 %5323, i64* %RAX.i326, align 8
  store %struct.Memory* %loadMem_42aad2, %struct.Memory** %MEMORY
  %loadMem_42aad6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5325 = getelementptr inbounds %struct.GPR, %struct.GPR* %5324, i32 0, i32 33
  %5326 = getelementptr inbounds %struct.Reg, %struct.Reg* %5325, i32 0, i32 0
  %PC.i322 = bitcast %union.anon* %5326 to i64*
  %5327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5328 = getelementptr inbounds %struct.GPR, %struct.GPR* %5327, i32 0, i32 5
  %5329 = getelementptr inbounds %struct.Reg, %struct.Reg* %5328, i32 0, i32 0
  %RCX.i323 = bitcast %union.anon* %5329 to i64*
  %5330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5331 = getelementptr inbounds %struct.GPR, %struct.GPR* %5330, i32 0, i32 15
  %5332 = getelementptr inbounds %struct.Reg, %struct.Reg* %5331, i32 0, i32 0
  %RBP.i324 = bitcast %union.anon* %5332 to i64*
  %5333 = load i64, i64* %RBP.i324
  %5334 = sub i64 %5333, 36
  %5335 = load i64, i64* %PC.i322
  %5336 = add i64 %5335, 3
  store i64 %5336, i64* %PC.i322
  %5337 = inttoptr i64 %5334 to i32*
  %5338 = load i32, i32* %5337
  %5339 = zext i32 %5338 to i64
  store i64 %5339, i64* %RCX.i323, align 8
  store %struct.Memory* %loadMem_42aad6, %struct.Memory** %MEMORY
  %loadMem_42aad9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5341 = getelementptr inbounds %struct.GPR, %struct.GPR* %5340, i32 0, i32 33
  %5342 = getelementptr inbounds %struct.Reg, %struct.Reg* %5341, i32 0, i32 0
  %PC.i320 = bitcast %union.anon* %5342 to i64*
  %5343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5344 = getelementptr inbounds %struct.GPR, %struct.GPR* %5343, i32 0, i32 5
  %5345 = getelementptr inbounds %struct.Reg, %struct.Reg* %5344, i32 0, i32 0
  %RCX.i321 = bitcast %union.anon* %5345 to i64*
  %5346 = load i64, i64* %RCX.i321
  %5347 = load i64, i64* %PC.i320
  %5348 = add i64 %5347, 3
  store i64 %5348, i64* %PC.i320
  %5349 = trunc i64 %5346 to i32
  %5350 = add i32 1, %5349
  %5351 = zext i32 %5350 to i64
  store i64 %5351, i64* %RCX.i321, align 8
  %5352 = icmp ult i32 %5350, %5349
  %5353 = icmp ult i32 %5350, 1
  %5354 = or i1 %5352, %5353
  %5355 = zext i1 %5354 to i8
  %5356 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5355, i8* %5356, align 1
  %5357 = and i32 %5350, 255
  %5358 = call i32 @llvm.ctpop.i32(i32 %5357)
  %5359 = trunc i32 %5358 to i8
  %5360 = and i8 %5359, 1
  %5361 = xor i8 %5360, 1
  %5362 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5361, i8* %5362, align 1
  %5363 = xor i64 1, %5346
  %5364 = trunc i64 %5363 to i32
  %5365 = xor i32 %5364, %5350
  %5366 = lshr i32 %5365, 4
  %5367 = trunc i32 %5366 to i8
  %5368 = and i8 %5367, 1
  %5369 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5368, i8* %5369, align 1
  %5370 = icmp eq i32 %5350, 0
  %5371 = zext i1 %5370 to i8
  %5372 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5371, i8* %5372, align 1
  %5373 = lshr i32 %5350, 31
  %5374 = trunc i32 %5373 to i8
  %5375 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5374, i8* %5375, align 1
  %5376 = lshr i32 %5349, 31
  %5377 = xor i32 %5373, %5376
  %5378 = add i32 %5377, %5373
  %5379 = icmp eq i32 %5378, 2
  %5380 = zext i1 %5379 to i8
  %5381 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5380, i8* %5381, align 1
  store %struct.Memory* %loadMem_42aad9, %struct.Memory** %MEMORY
  %loadMem_42aadc = load %struct.Memory*, %struct.Memory** %MEMORY
  %5382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5383 = getelementptr inbounds %struct.GPR, %struct.GPR* %5382, i32 0, i32 33
  %5384 = getelementptr inbounds %struct.Reg, %struct.Reg* %5383, i32 0, i32 0
  %PC.i317 = bitcast %union.anon* %5384 to i64*
  %5385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5386 = getelementptr inbounds %struct.GPR, %struct.GPR* %5385, i32 0, i32 5
  %5387 = getelementptr inbounds %struct.Reg, %struct.Reg* %5386, i32 0, i32 0
  %ECX.i318 = bitcast %union.anon* %5387 to i32*
  %5388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5389 = getelementptr inbounds %struct.GPR, %struct.GPR* %5388, i32 0, i32 7
  %5390 = getelementptr inbounds %struct.Reg, %struct.Reg* %5389, i32 0, i32 0
  %RDX.i319 = bitcast %union.anon* %5390 to i64*
  %5391 = load i32, i32* %ECX.i318
  %5392 = zext i32 %5391 to i64
  %5393 = load i64, i64* %PC.i317
  %5394 = add i64 %5393, 3
  store i64 %5394, i64* %PC.i317
  %5395 = shl i64 %5392, 32
  %5396 = ashr exact i64 %5395, 32
  store i64 %5396, i64* %RDX.i319, align 8
  store %struct.Memory* %loadMem_42aadc, %struct.Memory** %MEMORY
  %loadMem_42aadf = load %struct.Memory*, %struct.Memory** %MEMORY
  %5397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5398 = getelementptr inbounds %struct.GPR, %struct.GPR* %5397, i32 0, i32 33
  %5399 = getelementptr inbounds %struct.Reg, %struct.Reg* %5398, i32 0, i32 0
  %PC.i313 = bitcast %union.anon* %5399 to i64*
  %5400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5401 = getelementptr inbounds %struct.GPR, %struct.GPR* %5400, i32 0, i32 1
  %5402 = getelementptr inbounds %struct.Reg, %struct.Reg* %5401, i32 0, i32 0
  %RAX.i314 = bitcast %union.anon* %5402 to i64*
  %5403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5404 = getelementptr inbounds %struct.GPR, %struct.GPR* %5403, i32 0, i32 5
  %5405 = getelementptr inbounds %struct.Reg, %struct.Reg* %5404, i32 0, i32 0
  %RCX.i315 = bitcast %union.anon* %5405 to i64*
  %5406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5407 = getelementptr inbounds %struct.GPR, %struct.GPR* %5406, i32 0, i32 7
  %5408 = getelementptr inbounds %struct.Reg, %struct.Reg* %5407, i32 0, i32 0
  %RDX.i316 = bitcast %union.anon* %5408 to i64*
  %5409 = load i64, i64* %RAX.i314
  %5410 = load i64, i64* %RDX.i316
  %5411 = add i64 %5410, %5409
  %5412 = load i64, i64* %PC.i313
  %5413 = add i64 %5412, 4
  store i64 %5413, i64* %PC.i313
  %5414 = inttoptr i64 %5411 to i8*
  %5415 = load i8, i8* %5414
  %5416 = sext i8 %5415 to i64
  %5417 = and i64 %5416, 4294967295
  store i64 %5417, i64* %RCX.i315, align 8
  store %struct.Memory* %loadMem_42aadf, %struct.Memory** %MEMORY
  %loadMem_42aae3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5419 = getelementptr inbounds %struct.GPR, %struct.GPR* %5418, i32 0, i32 33
  %5420 = getelementptr inbounds %struct.Reg, %struct.Reg* %5419, i32 0, i32 0
  %PC.i311 = bitcast %union.anon* %5420 to i64*
  %5421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5422 = getelementptr inbounds %struct.GPR, %struct.GPR* %5421, i32 0, i32 5
  %5423 = getelementptr inbounds %struct.Reg, %struct.Reg* %5422, i32 0, i32 0
  %ECX.i312 = bitcast %union.anon* %5423 to i32*
  %5424 = load i32, i32* %ECX.i312
  %5425 = zext i32 %5424 to i64
  %5426 = load i64, i64* %PC.i311
  %5427 = add i64 %5426, 3
  store i64 %5427, i64* %PC.i311
  %5428 = sub i32 %5424, 8
  %5429 = icmp ult i32 %5424, 8
  %5430 = zext i1 %5429 to i8
  %5431 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5430, i8* %5431, align 1
  %5432 = and i32 %5428, 255
  %5433 = call i32 @llvm.ctpop.i32(i32 %5432)
  %5434 = trunc i32 %5433 to i8
  %5435 = and i8 %5434, 1
  %5436 = xor i8 %5435, 1
  %5437 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5436, i8* %5437, align 1
  %5438 = xor i64 8, %5425
  %5439 = trunc i64 %5438 to i32
  %5440 = xor i32 %5439, %5428
  %5441 = lshr i32 %5440, 4
  %5442 = trunc i32 %5441 to i8
  %5443 = and i8 %5442, 1
  %5444 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5443, i8* %5444, align 1
  %5445 = icmp eq i32 %5428, 0
  %5446 = zext i1 %5445 to i8
  %5447 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5446, i8* %5447, align 1
  %5448 = lshr i32 %5428, 31
  %5449 = trunc i32 %5448 to i8
  %5450 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5449, i8* %5450, align 1
  %5451 = lshr i32 %5424, 31
  %5452 = xor i32 %5448, %5451
  %5453 = add i32 %5452, %5451
  %5454 = icmp eq i32 %5453, 2
  %5455 = zext i1 %5454 to i8
  %5456 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5455, i8* %5456, align 1
  store %struct.Memory* %loadMem_42aae3, %struct.Memory** %MEMORY
  %loadMem_42aae6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5457 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5458 = getelementptr inbounds %struct.GPR, %struct.GPR* %5457, i32 0, i32 33
  %5459 = getelementptr inbounds %struct.Reg, %struct.Reg* %5458, i32 0, i32 0
  %PC.i310 = bitcast %union.anon* %5459 to i64*
  %5460 = load i64, i64* %PC.i310
  %5461 = add i64 %5460, 266
  %5462 = load i64, i64* %PC.i310
  %5463 = add i64 %5462, 6
  %5464 = load i64, i64* %PC.i310
  %5465 = add i64 %5464, 6
  store i64 %5465, i64* %PC.i310
  %5466 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5467 = load i8, i8* %5466, align 1
  %5468 = icmp eq i8 %5467, 0
  %5469 = zext i1 %5468 to i8
  store i8 %5469, i8* %BRANCH_TAKEN, align 1
  %5470 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5471 = select i1 %5468, i64 %5461, i64 %5463
  store i64 %5471, i64* %5470, align 8
  store %struct.Memory* %loadMem_42aae6, %struct.Memory** %MEMORY
  %loadBr_42aae6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42aae6 = icmp eq i8 %loadBr_42aae6, 1
  br i1 %cmpBr_42aae6, label %block_.L_42abf0, label %block_42aaec

block_42aaec:                                     ; preds = %block_42aace
  %loadMem_42aaec = load %struct.Memory*, %struct.Memory** %MEMORY
  %5472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5473 = getelementptr inbounds %struct.GPR, %struct.GPR* %5472, i32 0, i32 33
  %5474 = getelementptr inbounds %struct.Reg, %struct.Reg* %5473, i32 0, i32 0
  %PC.i307 = bitcast %union.anon* %5474 to i64*
  %5475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5476 = getelementptr inbounds %struct.GPR, %struct.GPR* %5475, i32 0, i32 1
  %5477 = getelementptr inbounds %struct.Reg, %struct.Reg* %5476, i32 0, i32 0
  %RAX.i308 = bitcast %union.anon* %5477 to i64*
  %5478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5479 = getelementptr inbounds %struct.GPR, %struct.GPR* %5478, i32 0, i32 15
  %5480 = getelementptr inbounds %struct.Reg, %struct.Reg* %5479, i32 0, i32 0
  %RBP.i309 = bitcast %union.anon* %5480 to i64*
  %5481 = load i64, i64* %RBP.i309
  %5482 = sub i64 %5481, 8
  %5483 = load i64, i64* %PC.i307
  %5484 = add i64 %5483, 4
  store i64 %5484, i64* %PC.i307
  %5485 = inttoptr i64 %5482 to i64*
  %5486 = load i64, i64* %5485
  store i64 %5486, i64* %RAX.i308, align 8
  store %struct.Memory* %loadMem_42aaec, %struct.Memory** %MEMORY
  %loadMem_42aaf0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5488 = getelementptr inbounds %struct.GPR, %struct.GPR* %5487, i32 0, i32 33
  %5489 = getelementptr inbounds %struct.Reg, %struct.Reg* %5488, i32 0, i32 0
  %PC.i305 = bitcast %union.anon* %5489 to i64*
  %5490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5491 = getelementptr inbounds %struct.GPR, %struct.GPR* %5490, i32 0, i32 1
  %5492 = getelementptr inbounds %struct.Reg, %struct.Reg* %5491, i32 0, i32 0
  %RAX.i306 = bitcast %union.anon* %5492 to i64*
  %5493 = load i64, i64* %RAX.i306
  %5494 = add i64 %5493, 8
  %5495 = load i64, i64* %PC.i305
  %5496 = add i64 %5495, 4
  store i64 %5496, i64* %PC.i305
  %5497 = inttoptr i64 %5494 to i64*
  %5498 = load i64, i64* %5497
  store i64 %5498, i64* %RAX.i306, align 8
  store %struct.Memory* %loadMem_42aaf0, %struct.Memory** %MEMORY
  %loadMem_42aaf4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5500 = getelementptr inbounds %struct.GPR, %struct.GPR* %5499, i32 0, i32 33
  %5501 = getelementptr inbounds %struct.Reg, %struct.Reg* %5500, i32 0, i32 0
  %PC.i302 = bitcast %union.anon* %5501 to i64*
  %5502 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5503 = getelementptr inbounds %struct.GPR, %struct.GPR* %5502, i32 0, i32 5
  %5504 = getelementptr inbounds %struct.Reg, %struct.Reg* %5503, i32 0, i32 0
  %RCX.i303 = bitcast %union.anon* %5504 to i64*
  %5505 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5506 = getelementptr inbounds %struct.GPR, %struct.GPR* %5505, i32 0, i32 15
  %5507 = getelementptr inbounds %struct.Reg, %struct.Reg* %5506, i32 0, i32 0
  %RBP.i304 = bitcast %union.anon* %5507 to i64*
  %5508 = load i64, i64* %RBP.i304
  %5509 = sub i64 %5508, 36
  %5510 = load i64, i64* %PC.i302
  %5511 = add i64 %5510, 3
  store i64 %5511, i64* %PC.i302
  %5512 = inttoptr i64 %5509 to i32*
  %5513 = load i32, i32* %5512
  %5514 = zext i32 %5513 to i64
  store i64 %5514, i64* %RCX.i303, align 8
  store %struct.Memory* %loadMem_42aaf4, %struct.Memory** %MEMORY
  %loadMem_42aaf7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5516 = getelementptr inbounds %struct.GPR, %struct.GPR* %5515, i32 0, i32 33
  %5517 = getelementptr inbounds %struct.Reg, %struct.Reg* %5516, i32 0, i32 0
  %PC.i300 = bitcast %union.anon* %5517 to i64*
  %5518 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5519 = getelementptr inbounds %struct.GPR, %struct.GPR* %5518, i32 0, i32 5
  %5520 = getelementptr inbounds %struct.Reg, %struct.Reg* %5519, i32 0, i32 0
  %RCX.i301 = bitcast %union.anon* %5520 to i64*
  %5521 = load i64, i64* %RCX.i301
  %5522 = load i64, i64* %PC.i300
  %5523 = add i64 %5522, 3
  store i64 %5523, i64* %PC.i300
  %5524 = trunc i64 %5521 to i32
  %5525 = add i32 2, %5524
  %5526 = zext i32 %5525 to i64
  store i64 %5526, i64* %RCX.i301, align 8
  %5527 = icmp ult i32 %5525, %5524
  %5528 = icmp ult i32 %5525, 2
  %5529 = or i1 %5527, %5528
  %5530 = zext i1 %5529 to i8
  %5531 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5530, i8* %5531, align 1
  %5532 = and i32 %5525, 255
  %5533 = call i32 @llvm.ctpop.i32(i32 %5532)
  %5534 = trunc i32 %5533 to i8
  %5535 = and i8 %5534, 1
  %5536 = xor i8 %5535, 1
  %5537 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5536, i8* %5537, align 1
  %5538 = xor i64 2, %5521
  %5539 = trunc i64 %5538 to i32
  %5540 = xor i32 %5539, %5525
  %5541 = lshr i32 %5540, 4
  %5542 = trunc i32 %5541 to i8
  %5543 = and i8 %5542, 1
  %5544 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5543, i8* %5544, align 1
  %5545 = icmp eq i32 %5525, 0
  %5546 = zext i1 %5545 to i8
  %5547 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5546, i8* %5547, align 1
  %5548 = lshr i32 %5525, 31
  %5549 = trunc i32 %5548 to i8
  %5550 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5549, i8* %5550, align 1
  %5551 = lshr i32 %5524, 31
  %5552 = xor i32 %5548, %5551
  %5553 = add i32 %5552, %5548
  %5554 = icmp eq i32 %5553, 2
  %5555 = zext i1 %5554 to i8
  %5556 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5555, i8* %5556, align 1
  store %struct.Memory* %loadMem_42aaf7, %struct.Memory** %MEMORY
  %loadMem_42aafa = load %struct.Memory*, %struct.Memory** %MEMORY
  %5557 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5558 = getelementptr inbounds %struct.GPR, %struct.GPR* %5557, i32 0, i32 33
  %5559 = getelementptr inbounds %struct.Reg, %struct.Reg* %5558, i32 0, i32 0
  %PC.i297 = bitcast %union.anon* %5559 to i64*
  %5560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5561 = getelementptr inbounds %struct.GPR, %struct.GPR* %5560, i32 0, i32 5
  %5562 = getelementptr inbounds %struct.Reg, %struct.Reg* %5561, i32 0, i32 0
  %ECX.i298 = bitcast %union.anon* %5562 to i32*
  %5563 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5564 = getelementptr inbounds %struct.GPR, %struct.GPR* %5563, i32 0, i32 7
  %5565 = getelementptr inbounds %struct.Reg, %struct.Reg* %5564, i32 0, i32 0
  %RDX.i299 = bitcast %union.anon* %5565 to i64*
  %5566 = load i32, i32* %ECX.i298
  %5567 = zext i32 %5566 to i64
  %5568 = load i64, i64* %PC.i297
  %5569 = add i64 %5568, 3
  store i64 %5569, i64* %PC.i297
  %5570 = shl i64 %5567, 32
  %5571 = ashr exact i64 %5570, 32
  store i64 %5571, i64* %RDX.i299, align 8
  store %struct.Memory* %loadMem_42aafa, %struct.Memory** %MEMORY
  %loadMem_42aafd = load %struct.Memory*, %struct.Memory** %MEMORY
  %5572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5573 = getelementptr inbounds %struct.GPR, %struct.GPR* %5572, i32 0, i32 33
  %5574 = getelementptr inbounds %struct.Reg, %struct.Reg* %5573, i32 0, i32 0
  %PC.i293 = bitcast %union.anon* %5574 to i64*
  %5575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5576 = getelementptr inbounds %struct.GPR, %struct.GPR* %5575, i32 0, i32 1
  %5577 = getelementptr inbounds %struct.Reg, %struct.Reg* %5576, i32 0, i32 0
  %RAX.i294 = bitcast %union.anon* %5577 to i64*
  %5578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5579 = getelementptr inbounds %struct.GPR, %struct.GPR* %5578, i32 0, i32 5
  %5580 = getelementptr inbounds %struct.Reg, %struct.Reg* %5579, i32 0, i32 0
  %RCX.i295 = bitcast %union.anon* %5580 to i64*
  %5581 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5582 = getelementptr inbounds %struct.GPR, %struct.GPR* %5581, i32 0, i32 7
  %5583 = getelementptr inbounds %struct.Reg, %struct.Reg* %5582, i32 0, i32 0
  %RDX.i296 = bitcast %union.anon* %5583 to i64*
  %5584 = load i64, i64* %RAX.i294
  %5585 = load i64, i64* %RDX.i296
  %5586 = add i64 %5585, %5584
  %5587 = load i64, i64* %PC.i293
  %5588 = add i64 %5587, 4
  store i64 %5588, i64* %PC.i293
  %5589 = inttoptr i64 %5586 to i8*
  %5590 = load i8, i8* %5589
  %5591 = sext i8 %5590 to i64
  %5592 = and i64 %5591, 4294967295
  store i64 %5592, i64* %RCX.i295, align 8
  store %struct.Memory* %loadMem_42aafd, %struct.Memory** %MEMORY
  %loadMem_42ab01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5594 = getelementptr inbounds %struct.GPR, %struct.GPR* %5593, i32 0, i32 33
  %5595 = getelementptr inbounds %struct.Reg, %struct.Reg* %5594, i32 0, i32 0
  %PC.i292 = bitcast %union.anon* %5595 to i64*
  %5596 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5597 = getelementptr inbounds %struct.GPR, %struct.GPR* %5596, i32 0, i32 5
  %5598 = getelementptr inbounds %struct.Reg, %struct.Reg* %5597, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %5598 to i32*
  %5599 = load i32, i32* %ECX.i
  %5600 = zext i32 %5599 to i64
  %5601 = load i64, i64* %PC.i292
  %5602 = add i64 %5601, 3
  store i64 %5602, i64* %PC.i292
  %5603 = sub i32 %5599, 8
  %5604 = icmp ult i32 %5599, 8
  %5605 = zext i1 %5604 to i8
  %5606 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5605, i8* %5606, align 1
  %5607 = and i32 %5603, 255
  %5608 = call i32 @llvm.ctpop.i32(i32 %5607)
  %5609 = trunc i32 %5608 to i8
  %5610 = and i8 %5609, 1
  %5611 = xor i8 %5610, 1
  %5612 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5611, i8* %5612, align 1
  %5613 = xor i64 8, %5600
  %5614 = trunc i64 %5613 to i32
  %5615 = xor i32 %5614, %5603
  %5616 = lshr i32 %5615, 4
  %5617 = trunc i32 %5616 to i8
  %5618 = and i8 %5617, 1
  %5619 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5618, i8* %5619, align 1
  %5620 = icmp eq i32 %5603, 0
  %5621 = zext i1 %5620 to i8
  %5622 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5621, i8* %5622, align 1
  %5623 = lshr i32 %5603, 31
  %5624 = trunc i32 %5623 to i8
  %5625 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5624, i8* %5625, align 1
  %5626 = lshr i32 %5599, 31
  %5627 = xor i32 %5623, %5626
  %5628 = add i32 %5627, %5626
  %5629 = icmp eq i32 %5628, 2
  %5630 = zext i1 %5629 to i8
  %5631 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5630, i8* %5631, align 1
  store %struct.Memory* %loadMem_42ab01, %struct.Memory** %MEMORY
  %loadMem_42ab04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5632 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5633 = getelementptr inbounds %struct.GPR, %struct.GPR* %5632, i32 0, i32 33
  %5634 = getelementptr inbounds %struct.Reg, %struct.Reg* %5633, i32 0, i32 0
  %PC.i291 = bitcast %union.anon* %5634 to i64*
  %5635 = load i64, i64* %PC.i291
  %5636 = add i64 %5635, 236
  %5637 = load i64, i64* %PC.i291
  %5638 = add i64 %5637, 6
  %5639 = load i64, i64* %PC.i291
  %5640 = add i64 %5639, 6
  store i64 %5640, i64* %PC.i291
  %5641 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5642 = load i8, i8* %5641, align 1
  %5643 = icmp eq i8 %5642, 0
  %5644 = zext i1 %5643 to i8
  store i8 %5644, i8* %BRANCH_TAKEN, align 1
  %5645 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5646 = select i1 %5643, i64 %5636, i64 %5638
  store i64 %5646, i64* %5645, align 8
  store %struct.Memory* %loadMem_42ab04, %struct.Memory** %MEMORY
  %loadBr_42ab04 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42ab04 = icmp eq i8 %loadBr_42ab04, 1
  br i1 %cmpBr_42ab04, label %block_.L_42abf0, label %block_42ab0a

block_42ab0a:                                     ; preds = %block_42aaec
  %loadMem_42ab0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5648 = getelementptr inbounds %struct.GPR, %struct.GPR* %5647, i32 0, i32 33
  %5649 = getelementptr inbounds %struct.Reg, %struct.Reg* %5648, i32 0, i32 0
  %PC.i288 = bitcast %union.anon* %5649 to i64*
  %5650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5651 = getelementptr inbounds %struct.GPR, %struct.GPR* %5650, i32 0, i32 1
  %5652 = getelementptr inbounds %struct.Reg, %struct.Reg* %5651, i32 0, i32 0
  %RAX.i289 = bitcast %union.anon* %5652 to i64*
  %5653 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5654 = getelementptr inbounds %struct.GPR, %struct.GPR* %5653, i32 0, i32 15
  %5655 = getelementptr inbounds %struct.Reg, %struct.Reg* %5654, i32 0, i32 0
  %RBP.i290 = bitcast %union.anon* %5655 to i64*
  %5656 = load i64, i64* %RBP.i290
  %5657 = sub i64 %5656, 8
  %5658 = load i64, i64* %PC.i288
  %5659 = add i64 %5658, 4
  store i64 %5659, i64* %PC.i288
  %5660 = inttoptr i64 %5657 to i64*
  %5661 = load i64, i64* %5660
  store i64 %5661, i64* %RAX.i289, align 8
  store %struct.Memory* %loadMem_42ab0a, %struct.Memory** %MEMORY
  %loadMem_42ab0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5662 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5663 = getelementptr inbounds %struct.GPR, %struct.GPR* %5662, i32 0, i32 33
  %5664 = getelementptr inbounds %struct.Reg, %struct.Reg* %5663, i32 0, i32 0
  %PC.i286 = bitcast %union.anon* %5664 to i64*
  %5665 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5666 = getelementptr inbounds %struct.GPR, %struct.GPR* %5665, i32 0, i32 1
  %5667 = getelementptr inbounds %struct.Reg, %struct.Reg* %5666, i32 0, i32 0
  %RAX.i287 = bitcast %union.anon* %5667 to i64*
  %5668 = load i64, i64* %RAX.i287
  %5669 = add i64 %5668, 8
  %5670 = load i64, i64* %PC.i286
  %5671 = add i64 %5670, 4
  store i64 %5671, i64* %PC.i286
  %5672 = inttoptr i64 %5669 to i64*
  %5673 = load i64, i64* %5672
  store i64 %5673, i64* %RAX.i287, align 8
  store %struct.Memory* %loadMem_42ab0e, %struct.Memory** %MEMORY
  %loadMem_42ab12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5675 = getelementptr inbounds %struct.GPR, %struct.GPR* %5674, i32 0, i32 33
  %5676 = getelementptr inbounds %struct.Reg, %struct.Reg* %5675, i32 0, i32 0
  %PC.i283 = bitcast %union.anon* %5676 to i64*
  %5677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5678 = getelementptr inbounds %struct.GPR, %struct.GPR* %5677, i32 0, i32 5
  %5679 = getelementptr inbounds %struct.Reg, %struct.Reg* %5678, i32 0, i32 0
  %RCX.i284 = bitcast %union.anon* %5679 to i64*
  %5680 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5681 = getelementptr inbounds %struct.GPR, %struct.GPR* %5680, i32 0, i32 15
  %5682 = getelementptr inbounds %struct.Reg, %struct.Reg* %5681, i32 0, i32 0
  %RBP.i285 = bitcast %union.anon* %5682 to i64*
  %5683 = load i64, i64* %RBP.i285
  %5684 = sub i64 %5683, 40
  %5685 = load i64, i64* %PC.i283
  %5686 = add i64 %5685, 4
  store i64 %5686, i64* %PC.i283
  %5687 = inttoptr i64 %5684 to i32*
  %5688 = load i32, i32* %5687
  %5689 = sext i32 %5688 to i64
  store i64 %5689, i64* %RCX.i284, align 8
  store %struct.Memory* %loadMem_42ab12, %struct.Memory** %MEMORY
  %loadMem_42ab16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5691 = getelementptr inbounds %struct.GPR, %struct.GPR* %5690, i32 0, i32 33
  %5692 = getelementptr inbounds %struct.Reg, %struct.Reg* %5691, i32 0, i32 0
  %PC.i280 = bitcast %union.anon* %5692 to i64*
  %5693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5694 = getelementptr inbounds %struct.GPR, %struct.GPR* %5693, i32 0, i32 1
  %5695 = getelementptr inbounds %struct.Reg, %struct.Reg* %5694, i32 0, i32 0
  %RAX.i281 = bitcast %union.anon* %5695 to i64*
  %5696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5697 = getelementptr inbounds %struct.GPR, %struct.GPR* %5696, i32 0, i32 5
  %5698 = getelementptr inbounds %struct.Reg, %struct.Reg* %5697, i32 0, i32 0
  %RCX.i282 = bitcast %union.anon* %5698 to i64*
  %5699 = load i64, i64* %RAX.i281
  %5700 = load i64, i64* %RCX.i282
  %5701 = add i64 %5700, %5699
  %5702 = load i64, i64* %PC.i280
  %5703 = add i64 %5702, 4
  store i64 %5703, i64* %PC.i280
  %5704 = inttoptr i64 %5701 to i8*
  store i8 1, i8* %5704
  store %struct.Memory* %loadMem_42ab16, %struct.Memory** %MEMORY
  %loadMem_42ab1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5706 = getelementptr inbounds %struct.GPR, %struct.GPR* %5705, i32 0, i32 33
  %5707 = getelementptr inbounds %struct.Reg, %struct.Reg* %5706, i32 0, i32 0
  %PC.i277 = bitcast %union.anon* %5707 to i64*
  %5708 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5709 = getelementptr inbounds %struct.GPR, %struct.GPR* %5708, i32 0, i32 7
  %5710 = getelementptr inbounds %struct.Reg, %struct.Reg* %5709, i32 0, i32 0
  %RDX.i278 = bitcast %union.anon* %5710 to i64*
  %5711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5712 = getelementptr inbounds %struct.GPR, %struct.GPR* %5711, i32 0, i32 15
  %5713 = getelementptr inbounds %struct.Reg, %struct.Reg* %5712, i32 0, i32 0
  %RBP.i279 = bitcast %union.anon* %5713 to i64*
  %5714 = load i64, i64* %RBP.i279
  %5715 = sub i64 %5714, 12
  %5716 = load i64, i64* %PC.i277
  %5717 = add i64 %5716, 3
  store i64 %5717, i64* %PC.i277
  %5718 = inttoptr i64 %5715 to i32*
  %5719 = load i32, i32* %5718
  %5720 = zext i32 %5719 to i64
  store i64 %5720, i64* %RDX.i278, align 8
  store %struct.Memory* %loadMem_42ab1a, %struct.Memory** %MEMORY
  %loadMem_42ab1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5721 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5722 = getelementptr inbounds %struct.GPR, %struct.GPR* %5721, i32 0, i32 33
  %5723 = getelementptr inbounds %struct.Reg, %struct.Reg* %5722, i32 0, i32 0
  %PC.i274 = bitcast %union.anon* %5723 to i64*
  %5724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5725 = getelementptr inbounds %struct.GPR, %struct.GPR* %5724, i32 0, i32 1
  %5726 = getelementptr inbounds %struct.Reg, %struct.Reg* %5725, i32 0, i32 0
  %RAX.i275 = bitcast %union.anon* %5726 to i64*
  %5727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5728 = getelementptr inbounds %struct.GPR, %struct.GPR* %5727, i32 0, i32 15
  %5729 = getelementptr inbounds %struct.Reg, %struct.Reg* %5728, i32 0, i32 0
  %RBP.i276 = bitcast %union.anon* %5729 to i64*
  %5730 = load i64, i64* %RBP.i276
  %5731 = sub i64 %5730, 8
  %5732 = load i64, i64* %PC.i274
  %5733 = add i64 %5732, 4
  store i64 %5733, i64* %PC.i274
  %5734 = inttoptr i64 %5731 to i64*
  %5735 = load i64, i64* %5734
  store i64 %5735, i64* %RAX.i275, align 8
  store %struct.Memory* %loadMem_42ab1d, %struct.Memory** %MEMORY
  %loadMem_42ab21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5737 = getelementptr inbounds %struct.GPR, %struct.GPR* %5736, i32 0, i32 33
  %5738 = getelementptr inbounds %struct.Reg, %struct.Reg* %5737, i32 0, i32 0
  %PC.i272 = bitcast %union.anon* %5738 to i64*
  %5739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5740 = getelementptr inbounds %struct.GPR, %struct.GPR* %5739, i32 0, i32 1
  %5741 = getelementptr inbounds %struct.Reg, %struct.Reg* %5740, i32 0, i32 0
  %RAX.i273 = bitcast %union.anon* %5741 to i64*
  %5742 = load i64, i64* %RAX.i273
  %5743 = add i64 %5742, 16
  %5744 = load i64, i64* %PC.i272
  %5745 = add i64 %5744, 4
  store i64 %5745, i64* %PC.i272
  %5746 = inttoptr i64 %5743 to i64*
  %5747 = load i64, i64* %5746
  store i64 %5747, i64* %RAX.i273, align 8
  store %struct.Memory* %loadMem_42ab21, %struct.Memory** %MEMORY
  %loadMem_42ab25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5749 = getelementptr inbounds %struct.GPR, %struct.GPR* %5748, i32 0, i32 33
  %5750 = getelementptr inbounds %struct.Reg, %struct.Reg* %5749, i32 0, i32 0
  %PC.i269 = bitcast %union.anon* %5750 to i64*
  %5751 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5752 = getelementptr inbounds %struct.GPR, %struct.GPR* %5751, i32 0, i32 5
  %5753 = getelementptr inbounds %struct.Reg, %struct.Reg* %5752, i32 0, i32 0
  %RCX.i270 = bitcast %union.anon* %5753 to i64*
  %5754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5755 = getelementptr inbounds %struct.GPR, %struct.GPR* %5754, i32 0, i32 15
  %5756 = getelementptr inbounds %struct.Reg, %struct.Reg* %5755, i32 0, i32 0
  %RBP.i271 = bitcast %union.anon* %5756 to i64*
  %5757 = load i64, i64* %RBP.i271
  %5758 = sub i64 %5757, 40
  %5759 = load i64, i64* %PC.i269
  %5760 = add i64 %5759, 4
  store i64 %5760, i64* %PC.i269
  %5761 = inttoptr i64 %5758 to i32*
  %5762 = load i32, i32* %5761
  %5763 = sext i32 %5762 to i64
  store i64 %5763, i64* %RCX.i270, align 8
  store %struct.Memory* %loadMem_42ab25, %struct.Memory** %MEMORY
  %loadMem_42ab29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5764 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5765 = getelementptr inbounds %struct.GPR, %struct.GPR* %5764, i32 0, i32 33
  %5766 = getelementptr inbounds %struct.Reg, %struct.Reg* %5765, i32 0, i32 0
  %PC.i265 = bitcast %union.anon* %5766 to i64*
  %5767 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5768 = getelementptr inbounds %struct.GPR, %struct.GPR* %5767, i32 0, i32 7
  %5769 = getelementptr inbounds %struct.Reg, %struct.Reg* %5768, i32 0, i32 0
  %EDX.i266 = bitcast %union.anon* %5769 to i32*
  %5770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5771 = getelementptr inbounds %struct.GPR, %struct.GPR* %5770, i32 0, i32 1
  %5772 = getelementptr inbounds %struct.Reg, %struct.Reg* %5771, i32 0, i32 0
  %RAX.i267 = bitcast %union.anon* %5772 to i64*
  %5773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5774 = getelementptr inbounds %struct.GPR, %struct.GPR* %5773, i32 0, i32 5
  %5775 = getelementptr inbounds %struct.Reg, %struct.Reg* %5774, i32 0, i32 0
  %RCX.i268 = bitcast %union.anon* %5775 to i64*
  %5776 = load i64, i64* %RAX.i267
  %5777 = load i64, i64* %RCX.i268
  %5778 = mul i64 %5777, 4
  %5779 = add i64 %5778, %5776
  %5780 = load i32, i32* %EDX.i266
  %5781 = zext i32 %5780 to i64
  %5782 = load i64, i64* %PC.i265
  %5783 = add i64 %5782, 3
  store i64 %5783, i64* %PC.i265
  %5784 = inttoptr i64 %5779 to i32*
  store i32 %5780, i32* %5784
  store %struct.Memory* %loadMem_42ab29, %struct.Memory** %MEMORY
  %loadMem_42ab2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5785 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5786 = getelementptr inbounds %struct.GPR, %struct.GPR* %5785, i32 0, i32 33
  %5787 = getelementptr inbounds %struct.Reg, %struct.Reg* %5786, i32 0, i32 0
  %PC.i262 = bitcast %union.anon* %5787 to i64*
  %5788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5789 = getelementptr inbounds %struct.GPR, %struct.GPR* %5788, i32 0, i32 1
  %5790 = getelementptr inbounds %struct.Reg, %struct.Reg* %5789, i32 0, i32 0
  %RAX.i263 = bitcast %union.anon* %5790 to i64*
  %5791 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5792 = getelementptr inbounds %struct.GPR, %struct.GPR* %5791, i32 0, i32 15
  %5793 = getelementptr inbounds %struct.Reg, %struct.Reg* %5792, i32 0, i32 0
  %RBP.i264 = bitcast %union.anon* %5793 to i64*
  %5794 = load i64, i64* %RBP.i264
  %5795 = sub i64 %5794, 8
  %5796 = load i64, i64* %PC.i262
  %5797 = add i64 %5796, 4
  store i64 %5797, i64* %PC.i262
  %5798 = inttoptr i64 %5795 to i64*
  %5799 = load i64, i64* %5798
  store i64 %5799, i64* %RAX.i263, align 8
  store %struct.Memory* %loadMem_42ab2c, %struct.Memory** %MEMORY
  %loadMem_42ab30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5800 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5801 = getelementptr inbounds %struct.GPR, %struct.GPR* %5800, i32 0, i32 33
  %5802 = getelementptr inbounds %struct.Reg, %struct.Reg* %5801, i32 0, i32 0
  %PC.i260 = bitcast %union.anon* %5802 to i64*
  %5803 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5804 = getelementptr inbounds %struct.GPR, %struct.GPR* %5803, i32 0, i32 1
  %5805 = getelementptr inbounds %struct.Reg, %struct.Reg* %5804, i32 0, i32 0
  %RAX.i261 = bitcast %union.anon* %5805 to i64*
  %5806 = load i64, i64* %RAX.i261
  %5807 = add i64 %5806, 24
  %5808 = load i64, i64* %PC.i260
  %5809 = add i64 %5808, 4
  store i64 %5809, i64* %PC.i260
  %5810 = inttoptr i64 %5807 to i64*
  %5811 = load i64, i64* %5810
  store i64 %5811, i64* %RAX.i261, align 8
  store %struct.Memory* %loadMem_42ab30, %struct.Memory** %MEMORY
  %loadMem_42ab34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5813 = getelementptr inbounds %struct.GPR, %struct.GPR* %5812, i32 0, i32 33
  %5814 = getelementptr inbounds %struct.Reg, %struct.Reg* %5813, i32 0, i32 0
  %PC.i257 = bitcast %union.anon* %5814 to i64*
  %5815 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5816 = getelementptr inbounds %struct.GPR, %struct.GPR* %5815, i32 0, i32 7
  %5817 = getelementptr inbounds %struct.Reg, %struct.Reg* %5816, i32 0, i32 0
  %RDX.i258 = bitcast %union.anon* %5817 to i64*
  %5818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5819 = getelementptr inbounds %struct.GPR, %struct.GPR* %5818, i32 0, i32 15
  %5820 = getelementptr inbounds %struct.Reg, %struct.Reg* %5819, i32 0, i32 0
  %RBP.i259 = bitcast %union.anon* %5820 to i64*
  %5821 = load i64, i64* %RBP.i259
  %5822 = sub i64 %5821, 36
  %5823 = load i64, i64* %PC.i257
  %5824 = add i64 %5823, 3
  store i64 %5824, i64* %PC.i257
  %5825 = inttoptr i64 %5822 to i32*
  %5826 = load i32, i32* %5825
  %5827 = zext i32 %5826 to i64
  store i64 %5827, i64* %RDX.i258, align 8
  store %struct.Memory* %loadMem_42ab34, %struct.Memory** %MEMORY
  %loadMem_42ab37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5829 = getelementptr inbounds %struct.GPR, %struct.GPR* %5828, i32 0, i32 33
  %5830 = getelementptr inbounds %struct.Reg, %struct.Reg* %5829, i32 0, i32 0
  %PC.i255 = bitcast %union.anon* %5830 to i64*
  %5831 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5832 = getelementptr inbounds %struct.GPR, %struct.GPR* %5831, i32 0, i32 7
  %5833 = getelementptr inbounds %struct.Reg, %struct.Reg* %5832, i32 0, i32 0
  %RDX.i256 = bitcast %union.anon* %5833 to i64*
  %5834 = load i64, i64* %RDX.i256
  %5835 = load i64, i64* %PC.i255
  %5836 = add i64 %5835, 3
  store i64 %5836, i64* %PC.i255
  %5837 = trunc i64 %5834 to i32
  %5838 = add i32 2, %5837
  %5839 = zext i32 %5838 to i64
  store i64 %5839, i64* %RDX.i256, align 8
  %5840 = icmp ult i32 %5838, %5837
  %5841 = icmp ult i32 %5838, 2
  %5842 = or i1 %5840, %5841
  %5843 = zext i1 %5842 to i8
  %5844 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5843, i8* %5844, align 1
  %5845 = and i32 %5838, 255
  %5846 = call i32 @llvm.ctpop.i32(i32 %5845)
  %5847 = trunc i32 %5846 to i8
  %5848 = and i8 %5847, 1
  %5849 = xor i8 %5848, 1
  %5850 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5849, i8* %5850, align 1
  %5851 = xor i64 2, %5834
  %5852 = trunc i64 %5851 to i32
  %5853 = xor i32 %5852, %5838
  %5854 = lshr i32 %5853, 4
  %5855 = trunc i32 %5854 to i8
  %5856 = and i8 %5855, 1
  %5857 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5856, i8* %5857, align 1
  %5858 = icmp eq i32 %5838, 0
  %5859 = zext i1 %5858 to i8
  %5860 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5859, i8* %5860, align 1
  %5861 = lshr i32 %5838, 31
  %5862 = trunc i32 %5861 to i8
  %5863 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5862, i8* %5863, align 1
  %5864 = lshr i32 %5837, 31
  %5865 = xor i32 %5861, %5864
  %5866 = add i32 %5865, %5861
  %5867 = icmp eq i32 %5866, 2
  %5868 = zext i1 %5867 to i8
  %5869 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5868, i8* %5869, align 1
  store %struct.Memory* %loadMem_42ab37, %struct.Memory** %MEMORY
  %loadMem_42ab3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5871 = getelementptr inbounds %struct.GPR, %struct.GPR* %5870, i32 0, i32 33
  %5872 = getelementptr inbounds %struct.Reg, %struct.Reg* %5871, i32 0, i32 0
  %PC.i252 = bitcast %union.anon* %5872 to i64*
  %5873 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5874 = getelementptr inbounds %struct.GPR, %struct.GPR* %5873, i32 0, i32 7
  %5875 = getelementptr inbounds %struct.Reg, %struct.Reg* %5874, i32 0, i32 0
  %EDX.i253 = bitcast %union.anon* %5875 to i32*
  %5876 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5877 = getelementptr inbounds %struct.GPR, %struct.GPR* %5876, i32 0, i32 5
  %5878 = getelementptr inbounds %struct.Reg, %struct.Reg* %5877, i32 0, i32 0
  %RCX.i254 = bitcast %union.anon* %5878 to i64*
  %5879 = load i32, i32* %EDX.i253
  %5880 = zext i32 %5879 to i64
  %5881 = load i64, i64* %PC.i252
  %5882 = add i64 %5881, 3
  store i64 %5882, i64* %PC.i252
  %5883 = shl i64 %5880, 32
  %5884 = ashr exact i64 %5883, 32
  store i64 %5884, i64* %RCX.i254, align 8
  store %struct.Memory* %loadMem_42ab3a, %struct.Memory** %MEMORY
  %loadMem_42ab3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5885 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5886 = getelementptr inbounds %struct.GPR, %struct.GPR* %5885, i32 0, i32 33
  %5887 = getelementptr inbounds %struct.Reg, %struct.Reg* %5886, i32 0, i32 0
  %PC.i248 = bitcast %union.anon* %5887 to i64*
  %5888 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5889 = getelementptr inbounds %struct.GPR, %struct.GPR* %5888, i32 0, i32 1
  %5890 = getelementptr inbounds %struct.Reg, %struct.Reg* %5889, i32 0, i32 0
  %RAX.i249 = bitcast %union.anon* %5890 to i64*
  %5891 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5892 = getelementptr inbounds %struct.GPR, %struct.GPR* %5891, i32 0, i32 5
  %5893 = getelementptr inbounds %struct.Reg, %struct.Reg* %5892, i32 0, i32 0
  %RCX.i250 = bitcast %union.anon* %5893 to i64*
  %5894 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5895 = getelementptr inbounds %struct.GPR, %struct.GPR* %5894, i32 0, i32 7
  %5896 = getelementptr inbounds %struct.Reg, %struct.Reg* %5895, i32 0, i32 0
  %RDX.i251 = bitcast %union.anon* %5896 to i64*
  %5897 = load i64, i64* %RAX.i249
  %5898 = load i64, i64* %RCX.i250
  %5899 = mul i64 %5898, 4
  %5900 = add i64 %5899, %5897
  %5901 = load i64, i64* %PC.i248
  %5902 = add i64 %5901, 3
  store i64 %5902, i64* %PC.i248
  %5903 = inttoptr i64 %5900 to i32*
  %5904 = load i32, i32* %5903
  %5905 = zext i32 %5904 to i64
  store i64 %5905, i64* %RDX.i251, align 8
  store %struct.Memory* %loadMem_42ab3d, %struct.Memory** %MEMORY
  %loadMem_42ab40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5906 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5907 = getelementptr inbounds %struct.GPR, %struct.GPR* %5906, i32 0, i32 33
  %5908 = getelementptr inbounds %struct.Reg, %struct.Reg* %5907, i32 0, i32 0
  %PC.i245 = bitcast %union.anon* %5908 to i64*
  %5909 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5910 = getelementptr inbounds %struct.GPR, %struct.GPR* %5909, i32 0, i32 1
  %5911 = getelementptr inbounds %struct.Reg, %struct.Reg* %5910, i32 0, i32 0
  %RAX.i246 = bitcast %union.anon* %5911 to i64*
  %5912 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5913 = getelementptr inbounds %struct.GPR, %struct.GPR* %5912, i32 0, i32 15
  %5914 = getelementptr inbounds %struct.Reg, %struct.Reg* %5913, i32 0, i32 0
  %RBP.i247 = bitcast %union.anon* %5914 to i64*
  %5915 = load i64, i64* %RBP.i247
  %5916 = sub i64 %5915, 8
  %5917 = load i64, i64* %PC.i245
  %5918 = add i64 %5917, 4
  store i64 %5918, i64* %PC.i245
  %5919 = inttoptr i64 %5916 to i64*
  %5920 = load i64, i64* %5919
  store i64 %5920, i64* %RAX.i246, align 8
  store %struct.Memory* %loadMem_42ab40, %struct.Memory** %MEMORY
  %loadMem_42ab44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5921 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5922 = getelementptr inbounds %struct.GPR, %struct.GPR* %5921, i32 0, i32 33
  %5923 = getelementptr inbounds %struct.Reg, %struct.Reg* %5922, i32 0, i32 0
  %PC.i243 = bitcast %union.anon* %5923 to i64*
  %5924 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5925 = getelementptr inbounds %struct.GPR, %struct.GPR* %5924, i32 0, i32 1
  %5926 = getelementptr inbounds %struct.Reg, %struct.Reg* %5925, i32 0, i32 0
  %RAX.i244 = bitcast %union.anon* %5926 to i64*
  %5927 = load i64, i64* %RAX.i244
  %5928 = add i64 %5927, 24
  %5929 = load i64, i64* %PC.i243
  %5930 = add i64 %5929, 4
  store i64 %5930, i64* %PC.i243
  %5931 = inttoptr i64 %5928 to i64*
  %5932 = load i64, i64* %5931
  store i64 %5932, i64* %RAX.i244, align 8
  store %struct.Memory* %loadMem_42ab44, %struct.Memory** %MEMORY
  %loadMem_42ab48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5933 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5934 = getelementptr inbounds %struct.GPR, %struct.GPR* %5933, i32 0, i32 33
  %5935 = getelementptr inbounds %struct.Reg, %struct.Reg* %5934, i32 0, i32 0
  %PC.i240 = bitcast %union.anon* %5935 to i64*
  %5936 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5937 = getelementptr inbounds %struct.GPR, %struct.GPR* %5936, i32 0, i32 5
  %5938 = getelementptr inbounds %struct.Reg, %struct.Reg* %5937, i32 0, i32 0
  %RCX.i241 = bitcast %union.anon* %5938 to i64*
  %5939 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5940 = getelementptr inbounds %struct.GPR, %struct.GPR* %5939, i32 0, i32 15
  %5941 = getelementptr inbounds %struct.Reg, %struct.Reg* %5940, i32 0, i32 0
  %RBP.i242 = bitcast %union.anon* %5941 to i64*
  %5942 = load i64, i64* %RBP.i242
  %5943 = sub i64 %5942, 40
  %5944 = load i64, i64* %PC.i240
  %5945 = add i64 %5944, 4
  store i64 %5945, i64* %PC.i240
  %5946 = inttoptr i64 %5943 to i32*
  %5947 = load i32, i32* %5946
  %5948 = sext i32 %5947 to i64
  store i64 %5948, i64* %RCX.i241, align 8
  store %struct.Memory* %loadMem_42ab48, %struct.Memory** %MEMORY
  %loadMem_42ab4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5949 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5950 = getelementptr inbounds %struct.GPR, %struct.GPR* %5949, i32 0, i32 33
  %5951 = getelementptr inbounds %struct.Reg, %struct.Reg* %5950, i32 0, i32 0
  %PC.i236 = bitcast %union.anon* %5951 to i64*
  %5952 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5953 = getelementptr inbounds %struct.GPR, %struct.GPR* %5952, i32 0, i32 7
  %5954 = getelementptr inbounds %struct.Reg, %struct.Reg* %5953, i32 0, i32 0
  %EDX.i237 = bitcast %union.anon* %5954 to i32*
  %5955 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5956 = getelementptr inbounds %struct.GPR, %struct.GPR* %5955, i32 0, i32 1
  %5957 = getelementptr inbounds %struct.Reg, %struct.Reg* %5956, i32 0, i32 0
  %RAX.i238 = bitcast %union.anon* %5957 to i64*
  %5958 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5959 = getelementptr inbounds %struct.GPR, %struct.GPR* %5958, i32 0, i32 5
  %5960 = getelementptr inbounds %struct.Reg, %struct.Reg* %5959, i32 0, i32 0
  %RCX.i239 = bitcast %union.anon* %5960 to i64*
  %5961 = load i64, i64* %RAX.i238
  %5962 = load i64, i64* %RCX.i239
  %5963 = mul i64 %5962, 4
  %5964 = add i64 %5963, %5961
  %5965 = load i32, i32* %EDX.i237
  %5966 = zext i32 %5965 to i64
  %5967 = load i64, i64* %PC.i236
  %5968 = add i64 %5967, 3
  store i64 %5968, i64* %PC.i236
  %5969 = inttoptr i64 %5964 to i32*
  store i32 %5965, i32* %5969
  store %struct.Memory* %loadMem_42ab4c, %struct.Memory** %MEMORY
  %loadMem_42ab4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5971 = getelementptr inbounds %struct.GPR, %struct.GPR* %5970, i32 0, i32 33
  %5972 = getelementptr inbounds %struct.Reg, %struct.Reg* %5971, i32 0, i32 0
  %PC.i233 = bitcast %union.anon* %5972 to i64*
  %5973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5974 = getelementptr inbounds %struct.GPR, %struct.GPR* %5973, i32 0, i32 1
  %5975 = getelementptr inbounds %struct.Reg, %struct.Reg* %5974, i32 0, i32 0
  %RAX.i234 = bitcast %union.anon* %5975 to i64*
  %5976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5977 = getelementptr inbounds %struct.GPR, %struct.GPR* %5976, i32 0, i32 15
  %5978 = getelementptr inbounds %struct.Reg, %struct.Reg* %5977, i32 0, i32 0
  %RBP.i235 = bitcast %union.anon* %5978 to i64*
  %5979 = load i64, i64* %RBP.i235
  %5980 = sub i64 %5979, 8
  %5981 = load i64, i64* %PC.i233
  %5982 = add i64 %5981, 4
  store i64 %5982, i64* %PC.i233
  %5983 = inttoptr i64 %5980 to i64*
  %5984 = load i64, i64* %5983
  store i64 %5984, i64* %RAX.i234, align 8
  store %struct.Memory* %loadMem_42ab4f, %struct.Memory** %MEMORY
  %loadMem_42ab53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5985 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5986 = getelementptr inbounds %struct.GPR, %struct.GPR* %5985, i32 0, i32 33
  %5987 = getelementptr inbounds %struct.Reg, %struct.Reg* %5986, i32 0, i32 0
  %PC.i231 = bitcast %union.anon* %5987 to i64*
  %5988 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5989 = getelementptr inbounds %struct.GPR, %struct.GPR* %5988, i32 0, i32 1
  %5990 = getelementptr inbounds %struct.Reg, %struct.Reg* %5989, i32 0, i32 0
  %RAX.i232 = bitcast %union.anon* %5990 to i64*
  %5991 = load i64, i64* %RAX.i232
  %5992 = add i64 %5991, 8
  %5993 = load i64, i64* %PC.i231
  %5994 = add i64 %5993, 4
  store i64 %5994, i64* %PC.i231
  %5995 = inttoptr i64 %5992 to i64*
  %5996 = load i64, i64* %5995
  store i64 %5996, i64* %RAX.i232, align 8
  store %struct.Memory* %loadMem_42ab53, %struct.Memory** %MEMORY
  %loadMem_42ab57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5998 = getelementptr inbounds %struct.GPR, %struct.GPR* %5997, i32 0, i32 33
  %5999 = getelementptr inbounds %struct.Reg, %struct.Reg* %5998, i32 0, i32 0
  %PC.i228 = bitcast %union.anon* %5999 to i64*
  %6000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6001 = getelementptr inbounds %struct.GPR, %struct.GPR* %6000, i32 0, i32 7
  %6002 = getelementptr inbounds %struct.Reg, %struct.Reg* %6001, i32 0, i32 0
  %RDX.i229 = bitcast %union.anon* %6002 to i64*
  %6003 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6004 = getelementptr inbounds %struct.GPR, %struct.GPR* %6003, i32 0, i32 15
  %6005 = getelementptr inbounds %struct.Reg, %struct.Reg* %6004, i32 0, i32 0
  %RBP.i230 = bitcast %union.anon* %6005 to i64*
  %6006 = load i64, i64* %RBP.i230
  %6007 = sub i64 %6006, 40
  %6008 = load i64, i64* %PC.i228
  %6009 = add i64 %6008, 3
  store i64 %6009, i64* %PC.i228
  %6010 = inttoptr i64 %6007 to i32*
  %6011 = load i32, i32* %6010
  %6012 = zext i32 %6011 to i64
  store i64 %6012, i64* %RDX.i229, align 8
  store %struct.Memory* %loadMem_42ab57, %struct.Memory** %MEMORY
  %loadMem_42ab5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %6013 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6014 = getelementptr inbounds %struct.GPR, %struct.GPR* %6013, i32 0, i32 33
  %6015 = getelementptr inbounds %struct.Reg, %struct.Reg* %6014, i32 0, i32 0
  %PC.i226 = bitcast %union.anon* %6015 to i64*
  %6016 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6017 = getelementptr inbounds %struct.GPR, %struct.GPR* %6016, i32 0, i32 7
  %6018 = getelementptr inbounds %struct.Reg, %struct.Reg* %6017, i32 0, i32 0
  %RDX.i227 = bitcast %union.anon* %6018 to i64*
  %6019 = load i64, i64* %RDX.i227
  %6020 = load i64, i64* %PC.i226
  %6021 = add i64 %6020, 3
  store i64 %6021, i64* %PC.i226
  %6022 = trunc i64 %6019 to i32
  %6023 = add i32 1, %6022
  %6024 = zext i32 %6023 to i64
  store i64 %6024, i64* %RDX.i227, align 8
  %6025 = icmp ult i32 %6023, %6022
  %6026 = icmp ult i32 %6023, 1
  %6027 = or i1 %6025, %6026
  %6028 = zext i1 %6027 to i8
  %6029 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6028, i8* %6029, align 1
  %6030 = and i32 %6023, 255
  %6031 = call i32 @llvm.ctpop.i32(i32 %6030)
  %6032 = trunc i32 %6031 to i8
  %6033 = and i8 %6032, 1
  %6034 = xor i8 %6033, 1
  %6035 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6034, i8* %6035, align 1
  %6036 = xor i64 1, %6019
  %6037 = trunc i64 %6036 to i32
  %6038 = xor i32 %6037, %6023
  %6039 = lshr i32 %6038, 4
  %6040 = trunc i32 %6039 to i8
  %6041 = and i8 %6040, 1
  %6042 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6041, i8* %6042, align 1
  %6043 = icmp eq i32 %6023, 0
  %6044 = zext i1 %6043 to i8
  %6045 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6044, i8* %6045, align 1
  %6046 = lshr i32 %6023, 31
  %6047 = trunc i32 %6046 to i8
  %6048 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6047, i8* %6048, align 1
  %6049 = lshr i32 %6022, 31
  %6050 = xor i32 %6046, %6049
  %6051 = add i32 %6050, %6046
  %6052 = icmp eq i32 %6051, 2
  %6053 = zext i1 %6052 to i8
  %6054 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6053, i8* %6054, align 1
  store %struct.Memory* %loadMem_42ab5a, %struct.Memory** %MEMORY
  %loadMem_42ab5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %6055 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6056 = getelementptr inbounds %struct.GPR, %struct.GPR* %6055, i32 0, i32 33
  %6057 = getelementptr inbounds %struct.Reg, %struct.Reg* %6056, i32 0, i32 0
  %PC.i223 = bitcast %union.anon* %6057 to i64*
  %6058 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6059 = getelementptr inbounds %struct.GPR, %struct.GPR* %6058, i32 0, i32 7
  %6060 = getelementptr inbounds %struct.Reg, %struct.Reg* %6059, i32 0, i32 0
  %EDX.i224 = bitcast %union.anon* %6060 to i32*
  %6061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6062 = getelementptr inbounds %struct.GPR, %struct.GPR* %6061, i32 0, i32 5
  %6063 = getelementptr inbounds %struct.Reg, %struct.Reg* %6062, i32 0, i32 0
  %RCX.i225 = bitcast %union.anon* %6063 to i64*
  %6064 = load i32, i32* %EDX.i224
  %6065 = zext i32 %6064 to i64
  %6066 = load i64, i64* %PC.i223
  %6067 = add i64 %6066, 3
  store i64 %6067, i64* %PC.i223
  %6068 = shl i64 %6065, 32
  %6069 = ashr exact i64 %6068, 32
  store i64 %6069, i64* %RCX.i225, align 8
  store %struct.Memory* %loadMem_42ab5d, %struct.Memory** %MEMORY
  %loadMem_42ab60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6070 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6071 = getelementptr inbounds %struct.GPR, %struct.GPR* %6070, i32 0, i32 33
  %6072 = getelementptr inbounds %struct.Reg, %struct.Reg* %6071, i32 0, i32 0
  %PC.i220 = bitcast %union.anon* %6072 to i64*
  %6073 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6074 = getelementptr inbounds %struct.GPR, %struct.GPR* %6073, i32 0, i32 1
  %6075 = getelementptr inbounds %struct.Reg, %struct.Reg* %6074, i32 0, i32 0
  %RAX.i221 = bitcast %union.anon* %6075 to i64*
  %6076 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6077 = getelementptr inbounds %struct.GPR, %struct.GPR* %6076, i32 0, i32 5
  %6078 = getelementptr inbounds %struct.Reg, %struct.Reg* %6077, i32 0, i32 0
  %RCX.i222 = bitcast %union.anon* %6078 to i64*
  %6079 = load i64, i64* %RAX.i221
  %6080 = load i64, i64* %RCX.i222
  %6081 = add i64 %6080, %6079
  %6082 = load i64, i64* %PC.i220
  %6083 = add i64 %6082, 4
  store i64 %6083, i64* %PC.i220
  %6084 = inttoptr i64 %6081 to i8*
  store i8 7, i8* %6084
  store %struct.Memory* %loadMem_42ab60, %struct.Memory** %MEMORY
  %loadMem_42ab64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6085 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6086 = getelementptr inbounds %struct.GPR, %struct.GPR* %6085, i32 0, i32 33
  %6087 = getelementptr inbounds %struct.Reg, %struct.Reg* %6086, i32 0, i32 0
  %PC.i217 = bitcast %union.anon* %6087 to i64*
  %6088 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6089 = getelementptr inbounds %struct.GPR, %struct.GPR* %6088, i32 0, i32 1
  %6090 = getelementptr inbounds %struct.Reg, %struct.Reg* %6089, i32 0, i32 0
  %RAX.i218 = bitcast %union.anon* %6090 to i64*
  %6091 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6092 = getelementptr inbounds %struct.GPR, %struct.GPR* %6091, i32 0, i32 15
  %6093 = getelementptr inbounds %struct.Reg, %struct.Reg* %6092, i32 0, i32 0
  %RBP.i219 = bitcast %union.anon* %6093 to i64*
  %6094 = load i64, i64* %RBP.i219
  %6095 = sub i64 %6094, 8
  %6096 = load i64, i64* %PC.i217
  %6097 = add i64 %6096, 4
  store i64 %6097, i64* %PC.i217
  %6098 = inttoptr i64 %6095 to i64*
  %6099 = load i64, i64* %6098
  store i64 %6099, i64* %RAX.i218, align 8
  store %struct.Memory* %loadMem_42ab64, %struct.Memory** %MEMORY
  %loadMem_42ab68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6101 = getelementptr inbounds %struct.GPR, %struct.GPR* %6100, i32 0, i32 33
  %6102 = getelementptr inbounds %struct.Reg, %struct.Reg* %6101, i32 0, i32 0
  %PC.i215 = bitcast %union.anon* %6102 to i64*
  %6103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6104 = getelementptr inbounds %struct.GPR, %struct.GPR* %6103, i32 0, i32 1
  %6105 = getelementptr inbounds %struct.Reg, %struct.Reg* %6104, i32 0, i32 0
  %RAX.i216 = bitcast %union.anon* %6105 to i64*
  %6106 = load i64, i64* %RAX.i216
  %6107 = add i64 %6106, 16
  %6108 = load i64, i64* %PC.i215
  %6109 = add i64 %6108, 4
  store i64 %6109, i64* %PC.i215
  %6110 = inttoptr i64 %6107 to i64*
  %6111 = load i64, i64* %6110
  store i64 %6111, i64* %RAX.i216, align 8
  store %struct.Memory* %loadMem_42ab68, %struct.Memory** %MEMORY
  %loadMem_42ab6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %6112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6113 = getelementptr inbounds %struct.GPR, %struct.GPR* %6112, i32 0, i32 33
  %6114 = getelementptr inbounds %struct.Reg, %struct.Reg* %6113, i32 0, i32 0
  %PC.i212 = bitcast %union.anon* %6114 to i64*
  %6115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6116 = getelementptr inbounds %struct.GPR, %struct.GPR* %6115, i32 0, i32 7
  %6117 = getelementptr inbounds %struct.Reg, %struct.Reg* %6116, i32 0, i32 0
  %RDX.i213 = bitcast %union.anon* %6117 to i64*
  %6118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6119 = getelementptr inbounds %struct.GPR, %struct.GPR* %6118, i32 0, i32 15
  %6120 = getelementptr inbounds %struct.Reg, %struct.Reg* %6119, i32 0, i32 0
  %RBP.i214 = bitcast %union.anon* %6120 to i64*
  %6121 = load i64, i64* %RBP.i214
  %6122 = sub i64 %6121, 40
  %6123 = load i64, i64* %PC.i212
  %6124 = add i64 %6123, 3
  store i64 %6124, i64* %PC.i212
  %6125 = inttoptr i64 %6122 to i32*
  %6126 = load i32, i32* %6125
  %6127 = zext i32 %6126 to i64
  store i64 %6127, i64* %RDX.i213, align 8
  store %struct.Memory* %loadMem_42ab6c, %struct.Memory** %MEMORY
  %loadMem_42ab6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %6128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6129 = getelementptr inbounds %struct.GPR, %struct.GPR* %6128, i32 0, i32 33
  %6130 = getelementptr inbounds %struct.Reg, %struct.Reg* %6129, i32 0, i32 0
  %PC.i210 = bitcast %union.anon* %6130 to i64*
  %6131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6132 = getelementptr inbounds %struct.GPR, %struct.GPR* %6131, i32 0, i32 7
  %6133 = getelementptr inbounds %struct.Reg, %struct.Reg* %6132, i32 0, i32 0
  %RDX.i211 = bitcast %union.anon* %6133 to i64*
  %6134 = load i64, i64* %RDX.i211
  %6135 = load i64, i64* %PC.i210
  %6136 = add i64 %6135, 3
  store i64 %6136, i64* %PC.i210
  %6137 = trunc i64 %6134 to i32
  %6138 = add i32 1, %6137
  %6139 = zext i32 %6138 to i64
  store i64 %6139, i64* %RDX.i211, align 8
  %6140 = icmp ult i32 %6138, %6137
  %6141 = icmp ult i32 %6138, 1
  %6142 = or i1 %6140, %6141
  %6143 = zext i1 %6142 to i8
  %6144 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6143, i8* %6144, align 1
  %6145 = and i32 %6138, 255
  %6146 = call i32 @llvm.ctpop.i32(i32 %6145)
  %6147 = trunc i32 %6146 to i8
  %6148 = and i8 %6147, 1
  %6149 = xor i8 %6148, 1
  %6150 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6149, i8* %6150, align 1
  %6151 = xor i64 1, %6134
  %6152 = trunc i64 %6151 to i32
  %6153 = xor i32 %6152, %6138
  %6154 = lshr i32 %6153, 4
  %6155 = trunc i32 %6154 to i8
  %6156 = and i8 %6155, 1
  %6157 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6156, i8* %6157, align 1
  %6158 = icmp eq i32 %6138, 0
  %6159 = zext i1 %6158 to i8
  %6160 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6159, i8* %6160, align 1
  %6161 = lshr i32 %6138, 31
  %6162 = trunc i32 %6161 to i8
  %6163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6162, i8* %6163, align 1
  %6164 = lshr i32 %6137, 31
  %6165 = xor i32 %6161, %6164
  %6166 = add i32 %6165, %6161
  %6167 = icmp eq i32 %6166, 2
  %6168 = zext i1 %6167 to i8
  %6169 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6168, i8* %6169, align 1
  store %struct.Memory* %loadMem_42ab6f, %struct.Memory** %MEMORY
  %loadMem_42ab72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6171 = getelementptr inbounds %struct.GPR, %struct.GPR* %6170, i32 0, i32 33
  %6172 = getelementptr inbounds %struct.Reg, %struct.Reg* %6171, i32 0, i32 0
  %PC.i207 = bitcast %union.anon* %6172 to i64*
  %6173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6174 = getelementptr inbounds %struct.GPR, %struct.GPR* %6173, i32 0, i32 7
  %6175 = getelementptr inbounds %struct.Reg, %struct.Reg* %6174, i32 0, i32 0
  %EDX.i208 = bitcast %union.anon* %6175 to i32*
  %6176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6177 = getelementptr inbounds %struct.GPR, %struct.GPR* %6176, i32 0, i32 5
  %6178 = getelementptr inbounds %struct.Reg, %struct.Reg* %6177, i32 0, i32 0
  %RCX.i209 = bitcast %union.anon* %6178 to i64*
  %6179 = load i32, i32* %EDX.i208
  %6180 = zext i32 %6179 to i64
  %6181 = load i64, i64* %PC.i207
  %6182 = add i64 %6181, 3
  store i64 %6182, i64* %PC.i207
  %6183 = shl i64 %6180, 32
  %6184 = ashr exact i64 %6183, 32
  store i64 %6184, i64* %RCX.i209, align 8
  store %struct.Memory* %loadMem_42ab72, %struct.Memory** %MEMORY
  %loadMem_42ab75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6186 = getelementptr inbounds %struct.GPR, %struct.GPR* %6185, i32 0, i32 33
  %6187 = getelementptr inbounds %struct.Reg, %struct.Reg* %6186, i32 0, i32 0
  %PC.i204 = bitcast %union.anon* %6187 to i64*
  %6188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6189 = getelementptr inbounds %struct.GPR, %struct.GPR* %6188, i32 0, i32 1
  %6190 = getelementptr inbounds %struct.Reg, %struct.Reg* %6189, i32 0, i32 0
  %RAX.i205 = bitcast %union.anon* %6190 to i64*
  %6191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6192 = getelementptr inbounds %struct.GPR, %struct.GPR* %6191, i32 0, i32 5
  %6193 = getelementptr inbounds %struct.Reg, %struct.Reg* %6192, i32 0, i32 0
  %RCX.i206 = bitcast %union.anon* %6193 to i64*
  %6194 = load i64, i64* %RAX.i205
  %6195 = load i64, i64* %RCX.i206
  %6196 = mul i64 %6195, 4
  %6197 = add i64 %6196, %6194
  %6198 = load i64, i64* %PC.i204
  %6199 = add i64 %6198, 7
  store i64 %6199, i64* %PC.i204
  %6200 = inttoptr i64 %6197 to i32*
  store i32 0, i32* %6200
  store %struct.Memory* %loadMem_42ab75, %struct.Memory** %MEMORY
  %loadMem_42ab7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %6201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6202 = getelementptr inbounds %struct.GPR, %struct.GPR* %6201, i32 0, i32 33
  %6203 = getelementptr inbounds %struct.Reg, %struct.Reg* %6202, i32 0, i32 0
  %PC.i201 = bitcast %union.anon* %6203 to i64*
  %6204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6205 = getelementptr inbounds %struct.GPR, %struct.GPR* %6204, i32 0, i32 1
  %6206 = getelementptr inbounds %struct.Reg, %struct.Reg* %6205, i32 0, i32 0
  %RAX.i202 = bitcast %union.anon* %6206 to i64*
  %6207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6208 = getelementptr inbounds %struct.GPR, %struct.GPR* %6207, i32 0, i32 15
  %6209 = getelementptr inbounds %struct.Reg, %struct.Reg* %6208, i32 0, i32 0
  %RBP.i203 = bitcast %union.anon* %6209 to i64*
  %6210 = load i64, i64* %RBP.i203
  %6211 = sub i64 %6210, 8
  %6212 = load i64, i64* %PC.i201
  %6213 = add i64 %6212, 4
  store i64 %6213, i64* %PC.i201
  %6214 = inttoptr i64 %6211 to i64*
  %6215 = load i64, i64* %6214
  store i64 %6215, i64* %RAX.i202, align 8
  store %struct.Memory* %loadMem_42ab7c, %struct.Memory** %MEMORY
  %loadMem_42ab80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6217 = getelementptr inbounds %struct.GPR, %struct.GPR* %6216, i32 0, i32 33
  %6218 = getelementptr inbounds %struct.Reg, %struct.Reg* %6217, i32 0, i32 0
  %PC.i199 = bitcast %union.anon* %6218 to i64*
  %6219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6220 = getelementptr inbounds %struct.GPR, %struct.GPR* %6219, i32 0, i32 1
  %6221 = getelementptr inbounds %struct.Reg, %struct.Reg* %6220, i32 0, i32 0
  %RAX.i200 = bitcast %union.anon* %6221 to i64*
  %6222 = load i64, i64* %RAX.i200
  %6223 = add i64 %6222, 24
  %6224 = load i64, i64* %PC.i199
  %6225 = add i64 %6224, 4
  store i64 %6225, i64* %PC.i199
  %6226 = inttoptr i64 %6223 to i64*
  %6227 = load i64, i64* %6226
  store i64 %6227, i64* %RAX.i200, align 8
  store %struct.Memory* %loadMem_42ab80, %struct.Memory** %MEMORY
  %loadMem_42ab84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6229 = getelementptr inbounds %struct.GPR, %struct.GPR* %6228, i32 0, i32 33
  %6230 = getelementptr inbounds %struct.Reg, %struct.Reg* %6229, i32 0, i32 0
  %PC.i196 = bitcast %union.anon* %6230 to i64*
  %6231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6232 = getelementptr inbounds %struct.GPR, %struct.GPR* %6231, i32 0, i32 7
  %6233 = getelementptr inbounds %struct.Reg, %struct.Reg* %6232, i32 0, i32 0
  %RDX.i197 = bitcast %union.anon* %6233 to i64*
  %6234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6235 = getelementptr inbounds %struct.GPR, %struct.GPR* %6234, i32 0, i32 15
  %6236 = getelementptr inbounds %struct.Reg, %struct.Reg* %6235, i32 0, i32 0
  %RBP.i198 = bitcast %union.anon* %6236 to i64*
  %6237 = load i64, i64* %RBP.i198
  %6238 = sub i64 %6237, 40
  %6239 = load i64, i64* %PC.i196
  %6240 = add i64 %6239, 3
  store i64 %6240, i64* %PC.i196
  %6241 = inttoptr i64 %6238 to i32*
  %6242 = load i32, i32* %6241
  %6243 = zext i32 %6242 to i64
  store i64 %6243, i64* %RDX.i197, align 8
  store %struct.Memory* %loadMem_42ab84, %struct.Memory** %MEMORY
  %loadMem_42ab87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6245 = getelementptr inbounds %struct.GPR, %struct.GPR* %6244, i32 0, i32 33
  %6246 = getelementptr inbounds %struct.Reg, %struct.Reg* %6245, i32 0, i32 0
  %PC.i194 = bitcast %union.anon* %6246 to i64*
  %6247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6248 = getelementptr inbounds %struct.GPR, %struct.GPR* %6247, i32 0, i32 7
  %6249 = getelementptr inbounds %struct.Reg, %struct.Reg* %6248, i32 0, i32 0
  %RDX.i195 = bitcast %union.anon* %6249 to i64*
  %6250 = load i64, i64* %RDX.i195
  %6251 = load i64, i64* %PC.i194
  %6252 = add i64 %6251, 3
  store i64 %6252, i64* %PC.i194
  %6253 = trunc i64 %6250 to i32
  %6254 = add i32 1, %6253
  %6255 = zext i32 %6254 to i64
  store i64 %6255, i64* %RDX.i195, align 8
  %6256 = icmp ult i32 %6254, %6253
  %6257 = icmp ult i32 %6254, 1
  %6258 = or i1 %6256, %6257
  %6259 = zext i1 %6258 to i8
  %6260 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6259, i8* %6260, align 1
  %6261 = and i32 %6254, 255
  %6262 = call i32 @llvm.ctpop.i32(i32 %6261)
  %6263 = trunc i32 %6262 to i8
  %6264 = and i8 %6263, 1
  %6265 = xor i8 %6264, 1
  %6266 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6265, i8* %6266, align 1
  %6267 = xor i64 1, %6250
  %6268 = trunc i64 %6267 to i32
  %6269 = xor i32 %6268, %6254
  %6270 = lshr i32 %6269, 4
  %6271 = trunc i32 %6270 to i8
  %6272 = and i8 %6271, 1
  %6273 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6272, i8* %6273, align 1
  %6274 = icmp eq i32 %6254, 0
  %6275 = zext i1 %6274 to i8
  %6276 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6275, i8* %6276, align 1
  %6277 = lshr i32 %6254, 31
  %6278 = trunc i32 %6277 to i8
  %6279 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6278, i8* %6279, align 1
  %6280 = lshr i32 %6253, 31
  %6281 = xor i32 %6277, %6280
  %6282 = add i32 %6281, %6277
  %6283 = icmp eq i32 %6282, 2
  %6284 = zext i1 %6283 to i8
  %6285 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6284, i8* %6285, align 1
  store %struct.Memory* %loadMem_42ab87, %struct.Memory** %MEMORY
  %loadMem_42ab8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %6286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6287 = getelementptr inbounds %struct.GPR, %struct.GPR* %6286, i32 0, i32 33
  %6288 = getelementptr inbounds %struct.Reg, %struct.Reg* %6287, i32 0, i32 0
  %PC.i191 = bitcast %union.anon* %6288 to i64*
  %6289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6290 = getelementptr inbounds %struct.GPR, %struct.GPR* %6289, i32 0, i32 7
  %6291 = getelementptr inbounds %struct.Reg, %struct.Reg* %6290, i32 0, i32 0
  %EDX.i192 = bitcast %union.anon* %6291 to i32*
  %6292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6293 = getelementptr inbounds %struct.GPR, %struct.GPR* %6292, i32 0, i32 5
  %6294 = getelementptr inbounds %struct.Reg, %struct.Reg* %6293, i32 0, i32 0
  %RCX.i193 = bitcast %union.anon* %6294 to i64*
  %6295 = load i32, i32* %EDX.i192
  %6296 = zext i32 %6295 to i64
  %6297 = load i64, i64* %PC.i191
  %6298 = add i64 %6297, 3
  store i64 %6298, i64* %PC.i191
  %6299 = shl i64 %6296, 32
  %6300 = ashr exact i64 %6299, 32
  store i64 %6300, i64* %RCX.i193, align 8
  store %struct.Memory* %loadMem_42ab8a, %struct.Memory** %MEMORY
  %loadMem_42ab8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %6301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6302 = getelementptr inbounds %struct.GPR, %struct.GPR* %6301, i32 0, i32 33
  %6303 = getelementptr inbounds %struct.Reg, %struct.Reg* %6302, i32 0, i32 0
  %PC.i188 = bitcast %union.anon* %6303 to i64*
  %6304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6305 = getelementptr inbounds %struct.GPR, %struct.GPR* %6304, i32 0, i32 1
  %6306 = getelementptr inbounds %struct.Reg, %struct.Reg* %6305, i32 0, i32 0
  %RAX.i189 = bitcast %union.anon* %6306 to i64*
  %6307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6308 = getelementptr inbounds %struct.GPR, %struct.GPR* %6307, i32 0, i32 5
  %6309 = getelementptr inbounds %struct.Reg, %struct.Reg* %6308, i32 0, i32 0
  %RCX.i190 = bitcast %union.anon* %6309 to i64*
  %6310 = load i64, i64* %RAX.i189
  %6311 = load i64, i64* %RCX.i190
  %6312 = mul i64 %6311, 4
  %6313 = add i64 %6312, %6310
  %6314 = load i64, i64* %PC.i188
  %6315 = add i64 %6314, 7
  store i64 %6315, i64* %PC.i188
  %6316 = inttoptr i64 %6313 to i32*
  store i32 0, i32* %6316
  store %struct.Memory* %loadMem_42ab8d, %struct.Memory** %MEMORY
  %loadMem_42ab94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6318 = getelementptr inbounds %struct.GPR, %struct.GPR* %6317, i32 0, i32 33
  %6319 = getelementptr inbounds %struct.Reg, %struct.Reg* %6318, i32 0, i32 0
  %PC.i185 = bitcast %union.anon* %6319 to i64*
  %6320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6321 = getelementptr inbounds %struct.GPR, %struct.GPR* %6320, i32 0, i32 1
  %6322 = getelementptr inbounds %struct.Reg, %struct.Reg* %6321, i32 0, i32 0
  %RAX.i186 = bitcast %union.anon* %6322 to i64*
  %6323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6324 = getelementptr inbounds %struct.GPR, %struct.GPR* %6323, i32 0, i32 15
  %6325 = getelementptr inbounds %struct.Reg, %struct.Reg* %6324, i32 0, i32 0
  %RBP.i187 = bitcast %union.anon* %6325 to i64*
  %6326 = load i64, i64* %RBP.i187
  %6327 = sub i64 %6326, 8
  %6328 = load i64, i64* %PC.i185
  %6329 = add i64 %6328, 4
  store i64 %6329, i64* %PC.i185
  %6330 = inttoptr i64 %6327 to i64*
  %6331 = load i64, i64* %6330
  store i64 %6331, i64* %RAX.i186, align 8
  store %struct.Memory* %loadMem_42ab94, %struct.Memory** %MEMORY
  %loadMem_42ab98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6333 = getelementptr inbounds %struct.GPR, %struct.GPR* %6332, i32 0, i32 33
  %6334 = getelementptr inbounds %struct.Reg, %struct.Reg* %6333, i32 0, i32 0
  %PC.i183 = bitcast %union.anon* %6334 to i64*
  %6335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6336 = getelementptr inbounds %struct.GPR, %struct.GPR* %6335, i32 0, i32 1
  %6337 = getelementptr inbounds %struct.Reg, %struct.Reg* %6336, i32 0, i32 0
  %RAX.i184 = bitcast %union.anon* %6337 to i64*
  %6338 = load i64, i64* %RAX.i184
  %6339 = add i64 %6338, 8
  %6340 = load i64, i64* %PC.i183
  %6341 = add i64 %6340, 4
  store i64 %6341, i64* %PC.i183
  %6342 = inttoptr i64 %6339 to i64*
  %6343 = load i64, i64* %6342
  store i64 %6343, i64* %RAX.i184, align 8
  store %struct.Memory* %loadMem_42ab98, %struct.Memory** %MEMORY
  %loadMem_42ab9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %6344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6345 = getelementptr inbounds %struct.GPR, %struct.GPR* %6344, i32 0, i32 33
  %6346 = getelementptr inbounds %struct.Reg, %struct.Reg* %6345, i32 0, i32 0
  %PC.i180 = bitcast %union.anon* %6346 to i64*
  %6347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6348 = getelementptr inbounds %struct.GPR, %struct.GPR* %6347, i32 0, i32 7
  %6349 = getelementptr inbounds %struct.Reg, %struct.Reg* %6348, i32 0, i32 0
  %RDX.i181 = bitcast %union.anon* %6349 to i64*
  %6350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6351 = getelementptr inbounds %struct.GPR, %struct.GPR* %6350, i32 0, i32 15
  %6352 = getelementptr inbounds %struct.Reg, %struct.Reg* %6351, i32 0, i32 0
  %RBP.i182 = bitcast %union.anon* %6352 to i64*
  %6353 = load i64, i64* %RBP.i182
  %6354 = sub i64 %6353, 40
  %6355 = load i64, i64* %PC.i180
  %6356 = add i64 %6355, 3
  store i64 %6356, i64* %PC.i180
  %6357 = inttoptr i64 %6354 to i32*
  %6358 = load i32, i32* %6357
  %6359 = zext i32 %6358 to i64
  store i64 %6359, i64* %RDX.i181, align 8
  store %struct.Memory* %loadMem_42ab9c, %struct.Memory** %MEMORY
  %loadMem_42ab9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %6360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6361 = getelementptr inbounds %struct.GPR, %struct.GPR* %6360, i32 0, i32 33
  %6362 = getelementptr inbounds %struct.Reg, %struct.Reg* %6361, i32 0, i32 0
  %PC.i178 = bitcast %union.anon* %6362 to i64*
  %6363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6364 = getelementptr inbounds %struct.GPR, %struct.GPR* %6363, i32 0, i32 7
  %6365 = getelementptr inbounds %struct.Reg, %struct.Reg* %6364, i32 0, i32 0
  %RDX.i179 = bitcast %union.anon* %6365 to i64*
  %6366 = load i64, i64* %RDX.i179
  %6367 = load i64, i64* %PC.i178
  %6368 = add i64 %6367, 3
  store i64 %6368, i64* %PC.i178
  %6369 = trunc i64 %6366 to i32
  %6370 = add i32 2, %6369
  %6371 = zext i32 %6370 to i64
  store i64 %6371, i64* %RDX.i179, align 8
  %6372 = icmp ult i32 %6370, %6369
  %6373 = icmp ult i32 %6370, 2
  %6374 = or i1 %6372, %6373
  %6375 = zext i1 %6374 to i8
  %6376 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6375, i8* %6376, align 1
  %6377 = and i32 %6370, 255
  %6378 = call i32 @llvm.ctpop.i32(i32 %6377)
  %6379 = trunc i32 %6378 to i8
  %6380 = and i8 %6379, 1
  %6381 = xor i8 %6380, 1
  %6382 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6381, i8* %6382, align 1
  %6383 = xor i64 2, %6366
  %6384 = trunc i64 %6383 to i32
  %6385 = xor i32 %6384, %6370
  %6386 = lshr i32 %6385, 4
  %6387 = trunc i32 %6386 to i8
  %6388 = and i8 %6387, 1
  %6389 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6388, i8* %6389, align 1
  %6390 = icmp eq i32 %6370, 0
  %6391 = zext i1 %6390 to i8
  %6392 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6391, i8* %6392, align 1
  %6393 = lshr i32 %6370, 31
  %6394 = trunc i32 %6393 to i8
  %6395 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6394, i8* %6395, align 1
  %6396 = lshr i32 %6369, 31
  %6397 = xor i32 %6393, %6396
  %6398 = add i32 %6397, %6393
  %6399 = icmp eq i32 %6398, 2
  %6400 = zext i1 %6399 to i8
  %6401 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6400, i8* %6401, align 1
  store %struct.Memory* %loadMem_42ab9f, %struct.Memory** %MEMORY
  %loadMem_42aba2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6403 = getelementptr inbounds %struct.GPR, %struct.GPR* %6402, i32 0, i32 33
  %6404 = getelementptr inbounds %struct.Reg, %struct.Reg* %6403, i32 0, i32 0
  %PC.i175 = bitcast %union.anon* %6404 to i64*
  %6405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6406 = getelementptr inbounds %struct.GPR, %struct.GPR* %6405, i32 0, i32 7
  %6407 = getelementptr inbounds %struct.Reg, %struct.Reg* %6406, i32 0, i32 0
  %EDX.i176 = bitcast %union.anon* %6407 to i32*
  %6408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6409 = getelementptr inbounds %struct.GPR, %struct.GPR* %6408, i32 0, i32 5
  %6410 = getelementptr inbounds %struct.Reg, %struct.Reg* %6409, i32 0, i32 0
  %RCX.i177 = bitcast %union.anon* %6410 to i64*
  %6411 = load i32, i32* %EDX.i176
  %6412 = zext i32 %6411 to i64
  %6413 = load i64, i64* %PC.i175
  %6414 = add i64 %6413, 3
  store i64 %6414, i64* %PC.i175
  %6415 = shl i64 %6412, 32
  %6416 = ashr exact i64 %6415, 32
  store i64 %6416, i64* %RCX.i177, align 8
  store %struct.Memory* %loadMem_42aba2, %struct.Memory** %MEMORY
  %loadMem_42aba5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6418 = getelementptr inbounds %struct.GPR, %struct.GPR* %6417, i32 0, i32 33
  %6419 = getelementptr inbounds %struct.Reg, %struct.Reg* %6418, i32 0, i32 0
  %PC.i172 = bitcast %union.anon* %6419 to i64*
  %6420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6421 = getelementptr inbounds %struct.GPR, %struct.GPR* %6420, i32 0, i32 1
  %6422 = getelementptr inbounds %struct.Reg, %struct.Reg* %6421, i32 0, i32 0
  %RAX.i173 = bitcast %union.anon* %6422 to i64*
  %6423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6424 = getelementptr inbounds %struct.GPR, %struct.GPR* %6423, i32 0, i32 5
  %6425 = getelementptr inbounds %struct.Reg, %struct.Reg* %6424, i32 0, i32 0
  %RCX.i174 = bitcast %union.anon* %6425 to i64*
  %6426 = load i64, i64* %RAX.i173
  %6427 = load i64, i64* %RCX.i174
  %6428 = add i64 %6427, %6426
  %6429 = load i64, i64* %PC.i172
  %6430 = add i64 %6429, 4
  store i64 %6430, i64* %PC.i172
  %6431 = inttoptr i64 %6428 to i8*
  store i8 8, i8* %6431
  store %struct.Memory* %loadMem_42aba5, %struct.Memory** %MEMORY
  %loadMem_42aba9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6433 = getelementptr inbounds %struct.GPR, %struct.GPR* %6432, i32 0, i32 33
  %6434 = getelementptr inbounds %struct.Reg, %struct.Reg* %6433, i32 0, i32 0
  %PC.i169 = bitcast %union.anon* %6434 to i64*
  %6435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6436 = getelementptr inbounds %struct.GPR, %struct.GPR* %6435, i32 0, i32 1
  %6437 = getelementptr inbounds %struct.Reg, %struct.Reg* %6436, i32 0, i32 0
  %RAX.i170 = bitcast %union.anon* %6437 to i64*
  %6438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6439 = getelementptr inbounds %struct.GPR, %struct.GPR* %6438, i32 0, i32 15
  %6440 = getelementptr inbounds %struct.Reg, %struct.Reg* %6439, i32 0, i32 0
  %RBP.i171 = bitcast %union.anon* %6440 to i64*
  %6441 = load i64, i64* %RBP.i171
  %6442 = sub i64 %6441, 8
  %6443 = load i64, i64* %PC.i169
  %6444 = add i64 %6443, 4
  store i64 %6444, i64* %PC.i169
  %6445 = inttoptr i64 %6442 to i64*
  %6446 = load i64, i64* %6445
  store i64 %6446, i64* %RAX.i170, align 8
  store %struct.Memory* %loadMem_42aba9, %struct.Memory** %MEMORY
  %loadMem_42abad = load %struct.Memory*, %struct.Memory** %MEMORY
  %6447 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6448 = getelementptr inbounds %struct.GPR, %struct.GPR* %6447, i32 0, i32 33
  %6449 = getelementptr inbounds %struct.Reg, %struct.Reg* %6448, i32 0, i32 0
  %PC.i167 = bitcast %union.anon* %6449 to i64*
  %6450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6451 = getelementptr inbounds %struct.GPR, %struct.GPR* %6450, i32 0, i32 1
  %6452 = getelementptr inbounds %struct.Reg, %struct.Reg* %6451, i32 0, i32 0
  %RAX.i168 = bitcast %union.anon* %6452 to i64*
  %6453 = load i64, i64* %RAX.i168
  %6454 = add i64 %6453, 16
  %6455 = load i64, i64* %PC.i167
  %6456 = add i64 %6455, 4
  store i64 %6456, i64* %PC.i167
  %6457 = inttoptr i64 %6454 to i64*
  %6458 = load i64, i64* %6457
  store i64 %6458, i64* %RAX.i168, align 8
  store %struct.Memory* %loadMem_42abad, %struct.Memory** %MEMORY
  %loadMem_42abb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6460 = getelementptr inbounds %struct.GPR, %struct.GPR* %6459, i32 0, i32 33
  %6461 = getelementptr inbounds %struct.Reg, %struct.Reg* %6460, i32 0, i32 0
  %PC.i164 = bitcast %union.anon* %6461 to i64*
  %6462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6463 = getelementptr inbounds %struct.GPR, %struct.GPR* %6462, i32 0, i32 7
  %6464 = getelementptr inbounds %struct.Reg, %struct.Reg* %6463, i32 0, i32 0
  %RDX.i165 = bitcast %union.anon* %6464 to i64*
  %6465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6466 = getelementptr inbounds %struct.GPR, %struct.GPR* %6465, i32 0, i32 15
  %6467 = getelementptr inbounds %struct.Reg, %struct.Reg* %6466, i32 0, i32 0
  %RBP.i166 = bitcast %union.anon* %6467 to i64*
  %6468 = load i64, i64* %RBP.i166
  %6469 = sub i64 %6468, 40
  %6470 = load i64, i64* %PC.i164
  %6471 = add i64 %6470, 3
  store i64 %6471, i64* %PC.i164
  %6472 = inttoptr i64 %6469 to i32*
  %6473 = load i32, i32* %6472
  %6474 = zext i32 %6473 to i64
  store i64 %6474, i64* %RDX.i165, align 8
  store %struct.Memory* %loadMem_42abb1, %struct.Memory** %MEMORY
  %loadMem_42abb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6476 = getelementptr inbounds %struct.GPR, %struct.GPR* %6475, i32 0, i32 33
  %6477 = getelementptr inbounds %struct.Reg, %struct.Reg* %6476, i32 0, i32 0
  %PC.i162 = bitcast %union.anon* %6477 to i64*
  %6478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6479 = getelementptr inbounds %struct.GPR, %struct.GPR* %6478, i32 0, i32 7
  %6480 = getelementptr inbounds %struct.Reg, %struct.Reg* %6479, i32 0, i32 0
  %RDX.i163 = bitcast %union.anon* %6480 to i64*
  %6481 = load i64, i64* %RDX.i163
  %6482 = load i64, i64* %PC.i162
  %6483 = add i64 %6482, 3
  store i64 %6483, i64* %PC.i162
  %6484 = trunc i64 %6481 to i32
  %6485 = add i32 2, %6484
  %6486 = zext i32 %6485 to i64
  store i64 %6486, i64* %RDX.i163, align 8
  %6487 = icmp ult i32 %6485, %6484
  %6488 = icmp ult i32 %6485, 2
  %6489 = or i1 %6487, %6488
  %6490 = zext i1 %6489 to i8
  %6491 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6490, i8* %6491, align 1
  %6492 = and i32 %6485, 255
  %6493 = call i32 @llvm.ctpop.i32(i32 %6492)
  %6494 = trunc i32 %6493 to i8
  %6495 = and i8 %6494, 1
  %6496 = xor i8 %6495, 1
  %6497 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6496, i8* %6497, align 1
  %6498 = xor i64 2, %6481
  %6499 = trunc i64 %6498 to i32
  %6500 = xor i32 %6499, %6485
  %6501 = lshr i32 %6500, 4
  %6502 = trunc i32 %6501 to i8
  %6503 = and i8 %6502, 1
  %6504 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6503, i8* %6504, align 1
  %6505 = icmp eq i32 %6485, 0
  %6506 = zext i1 %6505 to i8
  %6507 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6506, i8* %6507, align 1
  %6508 = lshr i32 %6485, 31
  %6509 = trunc i32 %6508 to i8
  %6510 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6509, i8* %6510, align 1
  %6511 = lshr i32 %6484, 31
  %6512 = xor i32 %6508, %6511
  %6513 = add i32 %6512, %6508
  %6514 = icmp eq i32 %6513, 2
  %6515 = zext i1 %6514 to i8
  %6516 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6515, i8* %6516, align 1
  store %struct.Memory* %loadMem_42abb4, %struct.Memory** %MEMORY
  %loadMem_42abb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6518 = getelementptr inbounds %struct.GPR, %struct.GPR* %6517, i32 0, i32 33
  %6519 = getelementptr inbounds %struct.Reg, %struct.Reg* %6518, i32 0, i32 0
  %PC.i159 = bitcast %union.anon* %6519 to i64*
  %6520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6521 = getelementptr inbounds %struct.GPR, %struct.GPR* %6520, i32 0, i32 7
  %6522 = getelementptr inbounds %struct.Reg, %struct.Reg* %6521, i32 0, i32 0
  %EDX.i160 = bitcast %union.anon* %6522 to i32*
  %6523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6524 = getelementptr inbounds %struct.GPR, %struct.GPR* %6523, i32 0, i32 5
  %6525 = getelementptr inbounds %struct.Reg, %struct.Reg* %6524, i32 0, i32 0
  %RCX.i161 = bitcast %union.anon* %6525 to i64*
  %6526 = load i32, i32* %EDX.i160
  %6527 = zext i32 %6526 to i64
  %6528 = load i64, i64* %PC.i159
  %6529 = add i64 %6528, 3
  store i64 %6529, i64* %PC.i159
  %6530 = shl i64 %6527, 32
  %6531 = ashr exact i64 %6530, 32
  store i64 %6531, i64* %RCX.i161, align 8
  store %struct.Memory* %loadMem_42abb7, %struct.Memory** %MEMORY
  %loadMem_42abba = load %struct.Memory*, %struct.Memory** %MEMORY
  %6532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6533 = getelementptr inbounds %struct.GPR, %struct.GPR* %6532, i32 0, i32 33
  %6534 = getelementptr inbounds %struct.Reg, %struct.Reg* %6533, i32 0, i32 0
  %PC.i156 = bitcast %union.anon* %6534 to i64*
  %6535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6536 = getelementptr inbounds %struct.GPR, %struct.GPR* %6535, i32 0, i32 1
  %6537 = getelementptr inbounds %struct.Reg, %struct.Reg* %6536, i32 0, i32 0
  %RAX.i157 = bitcast %union.anon* %6537 to i64*
  %6538 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6539 = getelementptr inbounds %struct.GPR, %struct.GPR* %6538, i32 0, i32 5
  %6540 = getelementptr inbounds %struct.Reg, %struct.Reg* %6539, i32 0, i32 0
  %RCX.i158 = bitcast %union.anon* %6540 to i64*
  %6541 = load i64, i64* %RAX.i157
  %6542 = load i64, i64* %RCX.i158
  %6543 = mul i64 %6542, 4
  %6544 = add i64 %6543, %6541
  %6545 = load i64, i64* %PC.i156
  %6546 = add i64 %6545, 7
  store i64 %6546, i64* %PC.i156
  %6547 = inttoptr i64 %6544 to i32*
  store i32 0, i32* %6547
  store %struct.Memory* %loadMem_42abba, %struct.Memory** %MEMORY
  %loadMem_42abc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6549 = getelementptr inbounds %struct.GPR, %struct.GPR* %6548, i32 0, i32 33
  %6550 = getelementptr inbounds %struct.Reg, %struct.Reg* %6549, i32 0, i32 0
  %PC.i153 = bitcast %union.anon* %6550 to i64*
  %6551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6552 = getelementptr inbounds %struct.GPR, %struct.GPR* %6551, i32 0, i32 1
  %6553 = getelementptr inbounds %struct.Reg, %struct.Reg* %6552, i32 0, i32 0
  %RAX.i154 = bitcast %union.anon* %6553 to i64*
  %6554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6555 = getelementptr inbounds %struct.GPR, %struct.GPR* %6554, i32 0, i32 15
  %6556 = getelementptr inbounds %struct.Reg, %struct.Reg* %6555, i32 0, i32 0
  %RBP.i155 = bitcast %union.anon* %6556 to i64*
  %6557 = load i64, i64* %RBP.i155
  %6558 = sub i64 %6557, 8
  %6559 = load i64, i64* %PC.i153
  %6560 = add i64 %6559, 4
  store i64 %6560, i64* %PC.i153
  %6561 = inttoptr i64 %6558 to i64*
  %6562 = load i64, i64* %6561
  store i64 %6562, i64* %RAX.i154, align 8
  store %struct.Memory* %loadMem_42abc1, %struct.Memory** %MEMORY
  %loadMem_42abc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6563 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6564 = getelementptr inbounds %struct.GPR, %struct.GPR* %6563, i32 0, i32 33
  %6565 = getelementptr inbounds %struct.Reg, %struct.Reg* %6564, i32 0, i32 0
  %PC.i151 = bitcast %union.anon* %6565 to i64*
  %6566 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6567 = getelementptr inbounds %struct.GPR, %struct.GPR* %6566, i32 0, i32 1
  %6568 = getelementptr inbounds %struct.Reg, %struct.Reg* %6567, i32 0, i32 0
  %RAX.i152 = bitcast %union.anon* %6568 to i64*
  %6569 = load i64, i64* %RAX.i152
  %6570 = add i64 %6569, 24
  %6571 = load i64, i64* %PC.i151
  %6572 = add i64 %6571, 4
  store i64 %6572, i64* %PC.i151
  %6573 = inttoptr i64 %6570 to i64*
  %6574 = load i64, i64* %6573
  store i64 %6574, i64* %RAX.i152, align 8
  store %struct.Memory* %loadMem_42abc5, %struct.Memory** %MEMORY
  %loadMem_42abc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6576 = getelementptr inbounds %struct.GPR, %struct.GPR* %6575, i32 0, i32 33
  %6577 = getelementptr inbounds %struct.Reg, %struct.Reg* %6576, i32 0, i32 0
  %PC.i148 = bitcast %union.anon* %6577 to i64*
  %6578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6579 = getelementptr inbounds %struct.GPR, %struct.GPR* %6578, i32 0, i32 7
  %6580 = getelementptr inbounds %struct.Reg, %struct.Reg* %6579, i32 0, i32 0
  %RDX.i149 = bitcast %union.anon* %6580 to i64*
  %6581 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6582 = getelementptr inbounds %struct.GPR, %struct.GPR* %6581, i32 0, i32 15
  %6583 = getelementptr inbounds %struct.Reg, %struct.Reg* %6582, i32 0, i32 0
  %RBP.i150 = bitcast %union.anon* %6583 to i64*
  %6584 = load i64, i64* %RBP.i150
  %6585 = sub i64 %6584, 40
  %6586 = load i64, i64* %PC.i148
  %6587 = add i64 %6586, 3
  store i64 %6587, i64* %PC.i148
  %6588 = inttoptr i64 %6585 to i32*
  %6589 = load i32, i32* %6588
  %6590 = zext i32 %6589 to i64
  store i64 %6590, i64* %RDX.i149, align 8
  store %struct.Memory* %loadMem_42abc9, %struct.Memory** %MEMORY
  %loadMem_42abcc = load %struct.Memory*, %struct.Memory** %MEMORY
  %6591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6592 = getelementptr inbounds %struct.GPR, %struct.GPR* %6591, i32 0, i32 33
  %6593 = getelementptr inbounds %struct.Reg, %struct.Reg* %6592, i32 0, i32 0
  %PC.i146 = bitcast %union.anon* %6593 to i64*
  %6594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6595 = getelementptr inbounds %struct.GPR, %struct.GPR* %6594, i32 0, i32 7
  %6596 = getelementptr inbounds %struct.Reg, %struct.Reg* %6595, i32 0, i32 0
  %RDX.i147 = bitcast %union.anon* %6596 to i64*
  %6597 = load i64, i64* %RDX.i147
  %6598 = load i64, i64* %PC.i146
  %6599 = add i64 %6598, 3
  store i64 %6599, i64* %PC.i146
  %6600 = trunc i64 %6597 to i32
  %6601 = add i32 2, %6600
  %6602 = zext i32 %6601 to i64
  store i64 %6602, i64* %RDX.i147, align 8
  %6603 = icmp ult i32 %6601, %6600
  %6604 = icmp ult i32 %6601, 2
  %6605 = or i1 %6603, %6604
  %6606 = zext i1 %6605 to i8
  %6607 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6606, i8* %6607, align 1
  %6608 = and i32 %6601, 255
  %6609 = call i32 @llvm.ctpop.i32(i32 %6608)
  %6610 = trunc i32 %6609 to i8
  %6611 = and i8 %6610, 1
  %6612 = xor i8 %6611, 1
  %6613 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6612, i8* %6613, align 1
  %6614 = xor i64 2, %6597
  %6615 = trunc i64 %6614 to i32
  %6616 = xor i32 %6615, %6601
  %6617 = lshr i32 %6616, 4
  %6618 = trunc i32 %6617 to i8
  %6619 = and i8 %6618, 1
  %6620 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6619, i8* %6620, align 1
  %6621 = icmp eq i32 %6601, 0
  %6622 = zext i1 %6621 to i8
  %6623 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6622, i8* %6623, align 1
  %6624 = lshr i32 %6601, 31
  %6625 = trunc i32 %6624 to i8
  %6626 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6625, i8* %6626, align 1
  %6627 = lshr i32 %6600, 31
  %6628 = xor i32 %6624, %6627
  %6629 = add i32 %6628, %6624
  %6630 = icmp eq i32 %6629, 2
  %6631 = zext i1 %6630 to i8
  %6632 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6631, i8* %6632, align 1
  store %struct.Memory* %loadMem_42abcc, %struct.Memory** %MEMORY
  %loadMem_42abcf = load %struct.Memory*, %struct.Memory** %MEMORY
  %6633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6634 = getelementptr inbounds %struct.GPR, %struct.GPR* %6633, i32 0, i32 33
  %6635 = getelementptr inbounds %struct.Reg, %struct.Reg* %6634, i32 0, i32 0
  %PC.i143 = bitcast %union.anon* %6635 to i64*
  %6636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6637 = getelementptr inbounds %struct.GPR, %struct.GPR* %6636, i32 0, i32 7
  %6638 = getelementptr inbounds %struct.Reg, %struct.Reg* %6637, i32 0, i32 0
  %EDX.i144 = bitcast %union.anon* %6638 to i32*
  %6639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6640 = getelementptr inbounds %struct.GPR, %struct.GPR* %6639, i32 0, i32 5
  %6641 = getelementptr inbounds %struct.Reg, %struct.Reg* %6640, i32 0, i32 0
  %RCX.i145 = bitcast %union.anon* %6641 to i64*
  %6642 = load i32, i32* %EDX.i144
  %6643 = zext i32 %6642 to i64
  %6644 = load i64, i64* %PC.i143
  %6645 = add i64 %6644, 3
  store i64 %6645, i64* %PC.i143
  %6646 = shl i64 %6643, 32
  %6647 = ashr exact i64 %6646, 32
  store i64 %6647, i64* %RCX.i145, align 8
  store %struct.Memory* %loadMem_42abcf, %struct.Memory** %MEMORY
  %loadMem_42abd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6648 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6649 = getelementptr inbounds %struct.GPR, %struct.GPR* %6648, i32 0, i32 33
  %6650 = getelementptr inbounds %struct.Reg, %struct.Reg* %6649, i32 0, i32 0
  %PC.i140 = bitcast %union.anon* %6650 to i64*
  %6651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6652 = getelementptr inbounds %struct.GPR, %struct.GPR* %6651, i32 0, i32 1
  %6653 = getelementptr inbounds %struct.Reg, %struct.Reg* %6652, i32 0, i32 0
  %RAX.i141 = bitcast %union.anon* %6653 to i64*
  %6654 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6655 = getelementptr inbounds %struct.GPR, %struct.GPR* %6654, i32 0, i32 5
  %6656 = getelementptr inbounds %struct.Reg, %struct.Reg* %6655, i32 0, i32 0
  %RCX.i142 = bitcast %union.anon* %6656 to i64*
  %6657 = load i64, i64* %RAX.i141
  %6658 = load i64, i64* %RCX.i142
  %6659 = mul i64 %6658, 4
  %6660 = add i64 %6659, %6657
  %6661 = load i64, i64* %PC.i140
  %6662 = add i64 %6661, 7
  store i64 %6662, i64* %PC.i140
  %6663 = inttoptr i64 %6660 to i32*
  store i32 0, i32* %6663
  store %struct.Memory* %loadMem_42abd2, %struct.Memory** %MEMORY
  %loadMem_42abd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6665 = getelementptr inbounds %struct.GPR, %struct.GPR* %6664, i32 0, i32 33
  %6666 = getelementptr inbounds %struct.Reg, %struct.Reg* %6665, i32 0, i32 0
  %PC.i137 = bitcast %union.anon* %6666 to i64*
  %6667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6668 = getelementptr inbounds %struct.GPR, %struct.GPR* %6667, i32 0, i32 7
  %6669 = getelementptr inbounds %struct.Reg, %struct.Reg* %6668, i32 0, i32 0
  %RDX.i138 = bitcast %union.anon* %6669 to i64*
  %6670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6671 = getelementptr inbounds %struct.GPR, %struct.GPR* %6670, i32 0, i32 15
  %6672 = getelementptr inbounds %struct.Reg, %struct.Reg* %6671, i32 0, i32 0
  %RBP.i139 = bitcast %union.anon* %6672 to i64*
  %6673 = load i64, i64* %RBP.i139
  %6674 = sub i64 %6673, 36
  %6675 = load i64, i64* %PC.i137
  %6676 = add i64 %6675, 3
  store i64 %6676, i64* %PC.i137
  %6677 = inttoptr i64 %6674 to i32*
  %6678 = load i32, i32* %6677
  %6679 = zext i32 %6678 to i64
  store i64 %6679, i64* %RDX.i138, align 8
  store %struct.Memory* %loadMem_42abd9, %struct.Memory** %MEMORY
  %loadMem_42abdc = load %struct.Memory*, %struct.Memory** %MEMORY
  %6680 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6681 = getelementptr inbounds %struct.GPR, %struct.GPR* %6680, i32 0, i32 33
  %6682 = getelementptr inbounds %struct.Reg, %struct.Reg* %6681, i32 0, i32 0
  %PC.i135 = bitcast %union.anon* %6682 to i64*
  %6683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6684 = getelementptr inbounds %struct.GPR, %struct.GPR* %6683, i32 0, i32 7
  %6685 = getelementptr inbounds %struct.Reg, %struct.Reg* %6684, i32 0, i32 0
  %RDX.i136 = bitcast %union.anon* %6685 to i64*
  %6686 = load i64, i64* %RDX.i136
  %6687 = load i64, i64* %PC.i135
  %6688 = add i64 %6687, 3
  store i64 %6688, i64* %PC.i135
  %6689 = trunc i64 %6686 to i32
  %6690 = add i32 3, %6689
  %6691 = zext i32 %6690 to i64
  store i64 %6691, i64* %RDX.i136, align 8
  %6692 = icmp ult i32 %6690, %6689
  %6693 = icmp ult i32 %6690, 3
  %6694 = or i1 %6692, %6693
  %6695 = zext i1 %6694 to i8
  %6696 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6695, i8* %6696, align 1
  %6697 = and i32 %6690, 255
  %6698 = call i32 @llvm.ctpop.i32(i32 %6697)
  %6699 = trunc i32 %6698 to i8
  %6700 = and i8 %6699, 1
  %6701 = xor i8 %6700, 1
  %6702 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6701, i8* %6702, align 1
  %6703 = xor i64 3, %6686
  %6704 = trunc i64 %6703 to i32
  %6705 = xor i32 %6704, %6690
  %6706 = lshr i32 %6705, 4
  %6707 = trunc i32 %6706 to i8
  %6708 = and i8 %6707, 1
  %6709 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6708, i8* %6709, align 1
  %6710 = icmp eq i32 %6690, 0
  %6711 = zext i1 %6710 to i8
  %6712 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6711, i8* %6712, align 1
  %6713 = lshr i32 %6690, 31
  %6714 = trunc i32 %6713 to i8
  %6715 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6714, i8* %6715, align 1
  %6716 = lshr i32 %6689, 31
  %6717 = xor i32 %6713, %6716
  %6718 = add i32 %6717, %6713
  %6719 = icmp eq i32 %6718, 2
  %6720 = zext i1 %6719 to i8
  %6721 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6720, i8* %6721, align 1
  store %struct.Memory* %loadMem_42abdc, %struct.Memory** %MEMORY
  %loadMem_42abdf = load %struct.Memory*, %struct.Memory** %MEMORY
  %6722 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6723 = getelementptr inbounds %struct.GPR, %struct.GPR* %6722, i32 0, i32 33
  %6724 = getelementptr inbounds %struct.Reg, %struct.Reg* %6723, i32 0, i32 0
  %PC.i132 = bitcast %union.anon* %6724 to i64*
  %6725 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6726 = getelementptr inbounds %struct.GPR, %struct.GPR* %6725, i32 0, i32 7
  %6727 = getelementptr inbounds %struct.Reg, %struct.Reg* %6726, i32 0, i32 0
  %EDX.i133 = bitcast %union.anon* %6727 to i32*
  %6728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6729 = getelementptr inbounds %struct.GPR, %struct.GPR* %6728, i32 0, i32 15
  %6730 = getelementptr inbounds %struct.Reg, %struct.Reg* %6729, i32 0, i32 0
  %RBP.i134 = bitcast %union.anon* %6730 to i64*
  %6731 = load i64, i64* %RBP.i134
  %6732 = sub i64 %6731, 36
  %6733 = load i32, i32* %EDX.i133
  %6734 = zext i32 %6733 to i64
  %6735 = load i64, i64* %PC.i132
  %6736 = add i64 %6735, 3
  store i64 %6736, i64* %PC.i132
  %6737 = inttoptr i64 %6732 to i32*
  store i32 %6733, i32* %6737
  store %struct.Memory* %loadMem_42abdf, %struct.Memory** %MEMORY
  %loadMem_42abe2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6739 = getelementptr inbounds %struct.GPR, %struct.GPR* %6738, i32 0, i32 33
  %6740 = getelementptr inbounds %struct.Reg, %struct.Reg* %6739, i32 0, i32 0
  %PC.i129 = bitcast %union.anon* %6740 to i64*
  %6741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6742 = getelementptr inbounds %struct.GPR, %struct.GPR* %6741, i32 0, i32 7
  %6743 = getelementptr inbounds %struct.Reg, %struct.Reg* %6742, i32 0, i32 0
  %RDX.i130 = bitcast %union.anon* %6743 to i64*
  %6744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6745 = getelementptr inbounds %struct.GPR, %struct.GPR* %6744, i32 0, i32 15
  %6746 = getelementptr inbounds %struct.Reg, %struct.Reg* %6745, i32 0, i32 0
  %RBP.i131 = bitcast %union.anon* %6746 to i64*
  %6747 = load i64, i64* %RBP.i131
  %6748 = sub i64 %6747, 40
  %6749 = load i64, i64* %PC.i129
  %6750 = add i64 %6749, 3
  store i64 %6750, i64* %PC.i129
  %6751 = inttoptr i64 %6748 to i32*
  %6752 = load i32, i32* %6751
  %6753 = zext i32 %6752 to i64
  store i64 %6753, i64* %RDX.i130, align 8
  store %struct.Memory* %loadMem_42abe2, %struct.Memory** %MEMORY
  %loadMem_42abe5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6755 = getelementptr inbounds %struct.GPR, %struct.GPR* %6754, i32 0, i32 33
  %6756 = getelementptr inbounds %struct.Reg, %struct.Reg* %6755, i32 0, i32 0
  %PC.i128 = bitcast %union.anon* %6756 to i64*
  %6757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6758 = getelementptr inbounds %struct.GPR, %struct.GPR* %6757, i32 0, i32 7
  %6759 = getelementptr inbounds %struct.Reg, %struct.Reg* %6758, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %6759 to i64*
  %6760 = load i64, i64* %RDX.i
  %6761 = load i64, i64* %PC.i128
  %6762 = add i64 %6761, 3
  store i64 %6762, i64* %PC.i128
  %6763 = trunc i64 %6760 to i32
  %6764 = add i32 3, %6763
  %6765 = zext i32 %6764 to i64
  store i64 %6765, i64* %RDX.i, align 8
  %6766 = icmp ult i32 %6764, %6763
  %6767 = icmp ult i32 %6764, 3
  %6768 = or i1 %6766, %6767
  %6769 = zext i1 %6768 to i8
  %6770 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6769, i8* %6770, align 1
  %6771 = and i32 %6764, 255
  %6772 = call i32 @llvm.ctpop.i32(i32 %6771)
  %6773 = trunc i32 %6772 to i8
  %6774 = and i8 %6773, 1
  %6775 = xor i8 %6774, 1
  %6776 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6775, i8* %6776, align 1
  %6777 = xor i64 3, %6760
  %6778 = trunc i64 %6777 to i32
  %6779 = xor i32 %6778, %6764
  %6780 = lshr i32 %6779, 4
  %6781 = trunc i32 %6780 to i8
  %6782 = and i8 %6781, 1
  %6783 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6782, i8* %6783, align 1
  %6784 = icmp eq i32 %6764, 0
  %6785 = zext i1 %6784 to i8
  %6786 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6785, i8* %6786, align 1
  %6787 = lshr i32 %6764, 31
  %6788 = trunc i32 %6787 to i8
  %6789 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6788, i8* %6789, align 1
  %6790 = lshr i32 %6763, 31
  %6791 = xor i32 %6787, %6790
  %6792 = add i32 %6791, %6787
  %6793 = icmp eq i32 %6792, 2
  %6794 = zext i1 %6793 to i8
  %6795 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6794, i8* %6795, align 1
  store %struct.Memory* %loadMem_42abe5, %struct.Memory** %MEMORY
  %loadMem_42abe8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6796 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6797 = getelementptr inbounds %struct.GPR, %struct.GPR* %6796, i32 0, i32 33
  %6798 = getelementptr inbounds %struct.Reg, %struct.Reg* %6797, i32 0, i32 0
  %PC.i126 = bitcast %union.anon* %6798 to i64*
  %6799 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6800 = getelementptr inbounds %struct.GPR, %struct.GPR* %6799, i32 0, i32 7
  %6801 = getelementptr inbounds %struct.Reg, %struct.Reg* %6800, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %6801 to i32*
  %6802 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6803 = getelementptr inbounds %struct.GPR, %struct.GPR* %6802, i32 0, i32 15
  %6804 = getelementptr inbounds %struct.Reg, %struct.Reg* %6803, i32 0, i32 0
  %RBP.i127 = bitcast %union.anon* %6804 to i64*
  %6805 = load i64, i64* %RBP.i127
  %6806 = sub i64 %6805, 40
  %6807 = load i32, i32* %EDX.i
  %6808 = zext i32 %6807 to i64
  %6809 = load i64, i64* %PC.i126
  %6810 = add i64 %6809, 3
  store i64 %6810, i64* %PC.i126
  %6811 = inttoptr i64 %6806 to i32*
  store i32 %6807, i32* %6811
  store %struct.Memory* %loadMem_42abe8, %struct.Memory** %MEMORY
  %loadMem_42abeb = load %struct.Memory*, %struct.Memory** %MEMORY
  %6812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6813 = getelementptr inbounds %struct.GPR, %struct.GPR* %6812, i32 0, i32 33
  %6814 = getelementptr inbounds %struct.Reg, %struct.Reg* %6813, i32 0, i32 0
  %PC.i125 = bitcast %union.anon* %6814 to i64*
  %6815 = load i64, i64* %PC.i125
  %6816 = add i64 %6815, 113
  %6817 = load i64, i64* %PC.i125
  %6818 = add i64 %6817, 5
  store i64 %6818, i64* %PC.i125
  %6819 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6816, i64* %6819, align 8
  store %struct.Memory* %loadMem_42abeb, %struct.Memory** %MEMORY
  br label %block_.L_42ac5c

block_.L_42abf0:                                  ; preds = %block_42aaec, %block_42aace, %block_42aab0, %block_.L_42aa97
  %loadMem_42abf0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6821 = getelementptr inbounds %struct.GPR, %struct.GPR* %6820, i32 0, i32 33
  %6822 = getelementptr inbounds %struct.Reg, %struct.Reg* %6821, i32 0, i32 0
  %PC.i122 = bitcast %union.anon* %6822 to i64*
  %6823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6824 = getelementptr inbounds %struct.GPR, %struct.GPR* %6823, i32 0, i32 1
  %6825 = getelementptr inbounds %struct.Reg, %struct.Reg* %6824, i32 0, i32 0
  %RAX.i123 = bitcast %union.anon* %6825 to i64*
  %6826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6827 = getelementptr inbounds %struct.GPR, %struct.GPR* %6826, i32 0, i32 15
  %6828 = getelementptr inbounds %struct.Reg, %struct.Reg* %6827, i32 0, i32 0
  %RBP.i124 = bitcast %union.anon* %6828 to i64*
  %6829 = load i64, i64* %RBP.i124
  %6830 = sub i64 %6829, 8
  %6831 = load i64, i64* %PC.i122
  %6832 = add i64 %6831, 4
  store i64 %6832, i64* %PC.i122
  %6833 = inttoptr i64 %6830 to i64*
  %6834 = load i64, i64* %6833
  store i64 %6834, i64* %RAX.i123, align 8
  store %struct.Memory* %loadMem_42abf0, %struct.Memory** %MEMORY
  %loadMem_42abf4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6835 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6836 = getelementptr inbounds %struct.GPR, %struct.GPR* %6835, i32 0, i32 33
  %6837 = getelementptr inbounds %struct.Reg, %struct.Reg* %6836, i32 0, i32 0
  %PC.i120 = bitcast %union.anon* %6837 to i64*
  %6838 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6839 = getelementptr inbounds %struct.GPR, %struct.GPR* %6838, i32 0, i32 1
  %6840 = getelementptr inbounds %struct.Reg, %struct.Reg* %6839, i32 0, i32 0
  %RAX.i121 = bitcast %union.anon* %6840 to i64*
  %6841 = load i64, i64* %RAX.i121
  %6842 = add i64 %6841, 8
  %6843 = load i64, i64* %PC.i120
  %6844 = add i64 %6843, 4
  store i64 %6844, i64* %PC.i120
  %6845 = inttoptr i64 %6842 to i64*
  %6846 = load i64, i64* %6845
  store i64 %6846, i64* %RAX.i121, align 8
  store %struct.Memory* %loadMem_42abf4, %struct.Memory** %MEMORY
  %loadMem_42abf8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6847 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6848 = getelementptr inbounds %struct.GPR, %struct.GPR* %6847, i32 0, i32 33
  %6849 = getelementptr inbounds %struct.Reg, %struct.Reg* %6848, i32 0, i32 0
  %PC.i117 = bitcast %union.anon* %6849 to i64*
  %6850 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6851 = getelementptr inbounds %struct.GPR, %struct.GPR* %6850, i32 0, i32 5
  %6852 = getelementptr inbounds %struct.Reg, %struct.Reg* %6851, i32 0, i32 0
  %RCX.i118 = bitcast %union.anon* %6852 to i64*
  %6853 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6854 = getelementptr inbounds %struct.GPR, %struct.GPR* %6853, i32 0, i32 15
  %6855 = getelementptr inbounds %struct.Reg, %struct.Reg* %6854, i32 0, i32 0
  %RBP.i119 = bitcast %union.anon* %6855 to i64*
  %6856 = load i64, i64* %RBP.i119
  %6857 = sub i64 %6856, 36
  %6858 = load i64, i64* %PC.i117
  %6859 = add i64 %6858, 4
  store i64 %6859, i64* %PC.i117
  %6860 = inttoptr i64 %6857 to i32*
  %6861 = load i32, i32* %6860
  %6862 = sext i32 %6861 to i64
  store i64 %6862, i64* %RCX.i118, align 8
  store %struct.Memory* %loadMem_42abf8, %struct.Memory** %MEMORY
  %loadMem_42abfc = load %struct.Memory*, %struct.Memory** %MEMORY
  %6863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6864 = getelementptr inbounds %struct.GPR, %struct.GPR* %6863, i32 0, i32 33
  %6865 = getelementptr inbounds %struct.Reg, %struct.Reg* %6864, i32 0, i32 0
  %PC.i113 = bitcast %union.anon* %6865 to i64*
  %6866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6867 = getelementptr inbounds %struct.GPR, %struct.GPR* %6866, i32 0, i32 7
  %6868 = getelementptr inbounds %struct.Reg, %struct.Reg* %6867, i32 0, i32 0
  %6869 = bitcast %union.anon* %6868 to %struct.anon.2*
  %DL.i114 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %6869, i32 0, i32 0
  %6870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6871 = getelementptr inbounds %struct.GPR, %struct.GPR* %6870, i32 0, i32 1
  %6872 = getelementptr inbounds %struct.Reg, %struct.Reg* %6871, i32 0, i32 0
  %RAX.i115 = bitcast %union.anon* %6872 to i64*
  %6873 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6874 = getelementptr inbounds %struct.GPR, %struct.GPR* %6873, i32 0, i32 5
  %6875 = getelementptr inbounds %struct.Reg, %struct.Reg* %6874, i32 0, i32 0
  %RCX.i116 = bitcast %union.anon* %6875 to i64*
  %6876 = load i64, i64* %RAX.i115
  %6877 = load i64, i64* %RCX.i116
  %6878 = add i64 %6877, %6876
  %6879 = load i64, i64* %PC.i113
  %6880 = add i64 %6879, 3
  store i64 %6880, i64* %PC.i113
  %6881 = inttoptr i64 %6878 to i8*
  %6882 = load i8, i8* %6881
  store i8 %6882, i8* %DL.i114, align 1
  store %struct.Memory* %loadMem_42abfc, %struct.Memory** %MEMORY
  %loadMem_42abff = load %struct.Memory*, %struct.Memory** %MEMORY
  %6883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6884 = getelementptr inbounds %struct.GPR, %struct.GPR* %6883, i32 0, i32 33
  %6885 = getelementptr inbounds %struct.Reg, %struct.Reg* %6884, i32 0, i32 0
  %PC.i110 = bitcast %union.anon* %6885 to i64*
  %6886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6887 = getelementptr inbounds %struct.GPR, %struct.GPR* %6886, i32 0, i32 1
  %6888 = getelementptr inbounds %struct.Reg, %struct.Reg* %6887, i32 0, i32 0
  %RAX.i111 = bitcast %union.anon* %6888 to i64*
  %6889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6890 = getelementptr inbounds %struct.GPR, %struct.GPR* %6889, i32 0, i32 15
  %6891 = getelementptr inbounds %struct.Reg, %struct.Reg* %6890, i32 0, i32 0
  %RBP.i112 = bitcast %union.anon* %6891 to i64*
  %6892 = load i64, i64* %RBP.i112
  %6893 = sub i64 %6892, 8
  %6894 = load i64, i64* %PC.i110
  %6895 = add i64 %6894, 4
  store i64 %6895, i64* %PC.i110
  %6896 = inttoptr i64 %6893 to i64*
  %6897 = load i64, i64* %6896
  store i64 %6897, i64* %RAX.i111, align 8
  store %struct.Memory* %loadMem_42abff, %struct.Memory** %MEMORY
  %loadMem_42ac03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6898 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6899 = getelementptr inbounds %struct.GPR, %struct.GPR* %6898, i32 0, i32 33
  %6900 = getelementptr inbounds %struct.Reg, %struct.Reg* %6899, i32 0, i32 0
  %PC.i108 = bitcast %union.anon* %6900 to i64*
  %6901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6902 = getelementptr inbounds %struct.GPR, %struct.GPR* %6901, i32 0, i32 1
  %6903 = getelementptr inbounds %struct.Reg, %struct.Reg* %6902, i32 0, i32 0
  %RAX.i109 = bitcast %union.anon* %6903 to i64*
  %6904 = load i64, i64* %RAX.i109
  %6905 = add i64 %6904, 8
  %6906 = load i64, i64* %PC.i108
  %6907 = add i64 %6906, 4
  store i64 %6907, i64* %PC.i108
  %6908 = inttoptr i64 %6905 to i64*
  %6909 = load i64, i64* %6908
  store i64 %6909, i64* %RAX.i109, align 8
  store %struct.Memory* %loadMem_42ac03, %struct.Memory** %MEMORY
  %loadMem_42ac07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6911 = getelementptr inbounds %struct.GPR, %struct.GPR* %6910, i32 0, i32 33
  %6912 = getelementptr inbounds %struct.Reg, %struct.Reg* %6911, i32 0, i32 0
  %PC.i105 = bitcast %union.anon* %6912 to i64*
  %6913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6914 = getelementptr inbounds %struct.GPR, %struct.GPR* %6913, i32 0, i32 5
  %6915 = getelementptr inbounds %struct.Reg, %struct.Reg* %6914, i32 0, i32 0
  %RCX.i106 = bitcast %union.anon* %6915 to i64*
  %6916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6917 = getelementptr inbounds %struct.GPR, %struct.GPR* %6916, i32 0, i32 15
  %6918 = getelementptr inbounds %struct.Reg, %struct.Reg* %6917, i32 0, i32 0
  %RBP.i107 = bitcast %union.anon* %6918 to i64*
  %6919 = load i64, i64* %RBP.i107
  %6920 = sub i64 %6919, 40
  %6921 = load i64, i64* %PC.i105
  %6922 = add i64 %6921, 4
  store i64 %6922, i64* %PC.i105
  %6923 = inttoptr i64 %6920 to i32*
  %6924 = load i32, i32* %6923
  %6925 = sext i32 %6924 to i64
  store i64 %6925, i64* %RCX.i106, align 8
  store %struct.Memory* %loadMem_42ac07, %struct.Memory** %MEMORY
  %loadMem_42ac0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6927 = getelementptr inbounds %struct.GPR, %struct.GPR* %6926, i32 0, i32 33
  %6928 = getelementptr inbounds %struct.Reg, %struct.Reg* %6927, i32 0, i32 0
  %PC.i102 = bitcast %union.anon* %6928 to i64*
  %6929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6930 = getelementptr inbounds %struct.GPR, %struct.GPR* %6929, i32 0, i32 7
  %6931 = getelementptr inbounds %struct.Reg, %struct.Reg* %6930, i32 0, i32 0
  %6932 = bitcast %union.anon* %6931 to %struct.anon.2*
  %DL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %6932, i32 0, i32 0
  %6933 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6934 = getelementptr inbounds %struct.GPR, %struct.GPR* %6933, i32 0, i32 1
  %6935 = getelementptr inbounds %struct.Reg, %struct.Reg* %6934, i32 0, i32 0
  %RAX.i103 = bitcast %union.anon* %6935 to i64*
  %6936 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6937 = getelementptr inbounds %struct.GPR, %struct.GPR* %6936, i32 0, i32 5
  %6938 = getelementptr inbounds %struct.Reg, %struct.Reg* %6937, i32 0, i32 0
  %RCX.i104 = bitcast %union.anon* %6938 to i64*
  %6939 = load i64, i64* %RAX.i103
  %6940 = load i64, i64* %RCX.i104
  %6941 = add i64 %6940, %6939
  %6942 = load i8, i8* %DL.i
  %6943 = zext i8 %6942 to i64
  %6944 = load i64, i64* %PC.i102
  %6945 = add i64 %6944, 3
  store i64 %6945, i64* %PC.i102
  %6946 = inttoptr i64 %6941 to i8*
  store i8 %6942, i8* %6946
  store %struct.Memory* %loadMem_42ac0b, %struct.Memory** %MEMORY
  %loadMem_42ac0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6947 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6948 = getelementptr inbounds %struct.GPR, %struct.GPR* %6947, i32 0, i32 33
  %6949 = getelementptr inbounds %struct.Reg, %struct.Reg* %6948, i32 0, i32 0
  %PC.i99 = bitcast %union.anon* %6949 to i64*
  %6950 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6951 = getelementptr inbounds %struct.GPR, %struct.GPR* %6950, i32 0, i32 1
  %6952 = getelementptr inbounds %struct.Reg, %struct.Reg* %6951, i32 0, i32 0
  %RAX.i100 = bitcast %union.anon* %6952 to i64*
  %6953 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6954 = getelementptr inbounds %struct.GPR, %struct.GPR* %6953, i32 0, i32 15
  %6955 = getelementptr inbounds %struct.Reg, %struct.Reg* %6954, i32 0, i32 0
  %RBP.i101 = bitcast %union.anon* %6955 to i64*
  %6956 = load i64, i64* %RBP.i101
  %6957 = sub i64 %6956, 8
  %6958 = load i64, i64* %PC.i99
  %6959 = add i64 %6958, 4
  store i64 %6959, i64* %PC.i99
  %6960 = inttoptr i64 %6957 to i64*
  %6961 = load i64, i64* %6960
  store i64 %6961, i64* %RAX.i100, align 8
  store %struct.Memory* %loadMem_42ac0e, %struct.Memory** %MEMORY
  %loadMem_42ac12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6962 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6963 = getelementptr inbounds %struct.GPR, %struct.GPR* %6962, i32 0, i32 33
  %6964 = getelementptr inbounds %struct.Reg, %struct.Reg* %6963, i32 0, i32 0
  %PC.i97 = bitcast %union.anon* %6964 to i64*
  %6965 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6966 = getelementptr inbounds %struct.GPR, %struct.GPR* %6965, i32 0, i32 1
  %6967 = getelementptr inbounds %struct.Reg, %struct.Reg* %6966, i32 0, i32 0
  %RAX.i98 = bitcast %union.anon* %6967 to i64*
  %6968 = load i64, i64* %RAX.i98
  %6969 = add i64 %6968, 16
  %6970 = load i64, i64* %PC.i97
  %6971 = add i64 %6970, 4
  store i64 %6971, i64* %PC.i97
  %6972 = inttoptr i64 %6969 to i64*
  %6973 = load i64, i64* %6972
  store i64 %6973, i64* %RAX.i98, align 8
  store %struct.Memory* %loadMem_42ac12, %struct.Memory** %MEMORY
  %loadMem_42ac16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6975 = getelementptr inbounds %struct.GPR, %struct.GPR* %6974, i32 0, i32 33
  %6976 = getelementptr inbounds %struct.Reg, %struct.Reg* %6975, i32 0, i32 0
  %PC.i94 = bitcast %union.anon* %6976 to i64*
  %6977 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6978 = getelementptr inbounds %struct.GPR, %struct.GPR* %6977, i32 0, i32 5
  %6979 = getelementptr inbounds %struct.Reg, %struct.Reg* %6978, i32 0, i32 0
  %RCX.i95 = bitcast %union.anon* %6979 to i64*
  %6980 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6981 = getelementptr inbounds %struct.GPR, %struct.GPR* %6980, i32 0, i32 15
  %6982 = getelementptr inbounds %struct.Reg, %struct.Reg* %6981, i32 0, i32 0
  %RBP.i96 = bitcast %union.anon* %6982 to i64*
  %6983 = load i64, i64* %RBP.i96
  %6984 = sub i64 %6983, 36
  %6985 = load i64, i64* %PC.i94
  %6986 = add i64 %6985, 4
  store i64 %6986, i64* %PC.i94
  %6987 = inttoptr i64 %6984 to i32*
  %6988 = load i32, i32* %6987
  %6989 = sext i32 %6988 to i64
  store i64 %6989, i64* %RCX.i95, align 8
  store %struct.Memory* %loadMem_42ac16, %struct.Memory** %MEMORY
  %loadMem_42ac1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %6990 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6991 = getelementptr inbounds %struct.GPR, %struct.GPR* %6990, i32 0, i32 33
  %6992 = getelementptr inbounds %struct.Reg, %struct.Reg* %6991, i32 0, i32 0
  %PC.i90 = bitcast %union.anon* %6992 to i64*
  %6993 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6994 = getelementptr inbounds %struct.GPR, %struct.GPR* %6993, i32 0, i32 1
  %6995 = getelementptr inbounds %struct.Reg, %struct.Reg* %6994, i32 0, i32 0
  %RAX.i91 = bitcast %union.anon* %6995 to i64*
  %6996 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6997 = getelementptr inbounds %struct.GPR, %struct.GPR* %6996, i32 0, i32 5
  %6998 = getelementptr inbounds %struct.Reg, %struct.Reg* %6997, i32 0, i32 0
  %RCX.i92 = bitcast %union.anon* %6998 to i64*
  %6999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7000 = getelementptr inbounds %struct.GPR, %struct.GPR* %6999, i32 0, i32 9
  %7001 = getelementptr inbounds %struct.Reg, %struct.Reg* %7000, i32 0, i32 0
  %RSI.i93 = bitcast %union.anon* %7001 to i64*
  %7002 = load i64, i64* %RAX.i91
  %7003 = load i64, i64* %RCX.i92
  %7004 = mul i64 %7003, 4
  %7005 = add i64 %7004, %7002
  %7006 = load i64, i64* %PC.i90
  %7007 = add i64 %7006, 3
  store i64 %7007, i64* %PC.i90
  %7008 = inttoptr i64 %7005 to i32*
  %7009 = load i32, i32* %7008
  %7010 = zext i32 %7009 to i64
  store i64 %7010, i64* %RSI.i93, align 8
  store %struct.Memory* %loadMem_42ac1a, %struct.Memory** %MEMORY
  %loadMem_42ac1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %7011 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7012 = getelementptr inbounds %struct.GPR, %struct.GPR* %7011, i32 0, i32 33
  %7013 = getelementptr inbounds %struct.Reg, %struct.Reg* %7012, i32 0, i32 0
  %PC.i87 = bitcast %union.anon* %7013 to i64*
  %7014 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7015 = getelementptr inbounds %struct.GPR, %struct.GPR* %7014, i32 0, i32 1
  %7016 = getelementptr inbounds %struct.Reg, %struct.Reg* %7015, i32 0, i32 0
  %RAX.i88 = bitcast %union.anon* %7016 to i64*
  %7017 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7018 = getelementptr inbounds %struct.GPR, %struct.GPR* %7017, i32 0, i32 15
  %7019 = getelementptr inbounds %struct.Reg, %struct.Reg* %7018, i32 0, i32 0
  %RBP.i89 = bitcast %union.anon* %7019 to i64*
  %7020 = load i64, i64* %RBP.i89
  %7021 = sub i64 %7020, 8
  %7022 = load i64, i64* %PC.i87
  %7023 = add i64 %7022, 4
  store i64 %7023, i64* %PC.i87
  %7024 = inttoptr i64 %7021 to i64*
  %7025 = load i64, i64* %7024
  store i64 %7025, i64* %RAX.i88, align 8
  store %struct.Memory* %loadMem_42ac1d, %struct.Memory** %MEMORY
  %loadMem_42ac21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7027 = getelementptr inbounds %struct.GPR, %struct.GPR* %7026, i32 0, i32 33
  %7028 = getelementptr inbounds %struct.Reg, %struct.Reg* %7027, i32 0, i32 0
  %PC.i85 = bitcast %union.anon* %7028 to i64*
  %7029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7030 = getelementptr inbounds %struct.GPR, %struct.GPR* %7029, i32 0, i32 1
  %7031 = getelementptr inbounds %struct.Reg, %struct.Reg* %7030, i32 0, i32 0
  %RAX.i86 = bitcast %union.anon* %7031 to i64*
  %7032 = load i64, i64* %RAX.i86
  %7033 = add i64 %7032, 16
  %7034 = load i64, i64* %PC.i85
  %7035 = add i64 %7034, 4
  store i64 %7035, i64* %PC.i85
  %7036 = inttoptr i64 %7033 to i64*
  %7037 = load i64, i64* %7036
  store i64 %7037, i64* %RAX.i86, align 8
  store %struct.Memory* %loadMem_42ac21, %struct.Memory** %MEMORY
  %loadMem_42ac25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7038 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7039 = getelementptr inbounds %struct.GPR, %struct.GPR* %7038, i32 0, i32 33
  %7040 = getelementptr inbounds %struct.Reg, %struct.Reg* %7039, i32 0, i32 0
  %PC.i82 = bitcast %union.anon* %7040 to i64*
  %7041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7042 = getelementptr inbounds %struct.GPR, %struct.GPR* %7041, i32 0, i32 5
  %7043 = getelementptr inbounds %struct.Reg, %struct.Reg* %7042, i32 0, i32 0
  %RCX.i83 = bitcast %union.anon* %7043 to i64*
  %7044 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7045 = getelementptr inbounds %struct.GPR, %struct.GPR* %7044, i32 0, i32 15
  %7046 = getelementptr inbounds %struct.Reg, %struct.Reg* %7045, i32 0, i32 0
  %RBP.i84 = bitcast %union.anon* %7046 to i64*
  %7047 = load i64, i64* %RBP.i84
  %7048 = sub i64 %7047, 40
  %7049 = load i64, i64* %PC.i82
  %7050 = add i64 %7049, 4
  store i64 %7050, i64* %PC.i82
  %7051 = inttoptr i64 %7048 to i32*
  %7052 = load i32, i32* %7051
  %7053 = sext i32 %7052 to i64
  store i64 %7053, i64* %RCX.i83, align 8
  store %struct.Memory* %loadMem_42ac25, %struct.Memory** %MEMORY
  %loadMem_42ac29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7054 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7055 = getelementptr inbounds %struct.GPR, %struct.GPR* %7054, i32 0, i32 33
  %7056 = getelementptr inbounds %struct.Reg, %struct.Reg* %7055, i32 0, i32 0
  %PC.i78 = bitcast %union.anon* %7056 to i64*
  %7057 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7058 = getelementptr inbounds %struct.GPR, %struct.GPR* %7057, i32 0, i32 9
  %7059 = getelementptr inbounds %struct.Reg, %struct.Reg* %7058, i32 0, i32 0
  %ESI.i79 = bitcast %union.anon* %7059 to i32*
  %7060 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7061 = getelementptr inbounds %struct.GPR, %struct.GPR* %7060, i32 0, i32 1
  %7062 = getelementptr inbounds %struct.Reg, %struct.Reg* %7061, i32 0, i32 0
  %RAX.i80 = bitcast %union.anon* %7062 to i64*
  %7063 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7064 = getelementptr inbounds %struct.GPR, %struct.GPR* %7063, i32 0, i32 5
  %7065 = getelementptr inbounds %struct.Reg, %struct.Reg* %7064, i32 0, i32 0
  %RCX.i81 = bitcast %union.anon* %7065 to i64*
  %7066 = load i64, i64* %RAX.i80
  %7067 = load i64, i64* %RCX.i81
  %7068 = mul i64 %7067, 4
  %7069 = add i64 %7068, %7066
  %7070 = load i32, i32* %ESI.i79
  %7071 = zext i32 %7070 to i64
  %7072 = load i64, i64* %PC.i78
  %7073 = add i64 %7072, 3
  store i64 %7073, i64* %PC.i78
  %7074 = inttoptr i64 %7069 to i32*
  store i32 %7070, i32* %7074
  store %struct.Memory* %loadMem_42ac29, %struct.Memory** %MEMORY
  %loadMem_42ac2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %7075 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7076 = getelementptr inbounds %struct.GPR, %struct.GPR* %7075, i32 0, i32 33
  %7077 = getelementptr inbounds %struct.Reg, %struct.Reg* %7076, i32 0, i32 0
  %PC.i75 = bitcast %union.anon* %7077 to i64*
  %7078 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7079 = getelementptr inbounds %struct.GPR, %struct.GPR* %7078, i32 0, i32 1
  %7080 = getelementptr inbounds %struct.Reg, %struct.Reg* %7079, i32 0, i32 0
  %RAX.i76 = bitcast %union.anon* %7080 to i64*
  %7081 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7082 = getelementptr inbounds %struct.GPR, %struct.GPR* %7081, i32 0, i32 15
  %7083 = getelementptr inbounds %struct.Reg, %struct.Reg* %7082, i32 0, i32 0
  %RBP.i77 = bitcast %union.anon* %7083 to i64*
  %7084 = load i64, i64* %RBP.i77
  %7085 = sub i64 %7084, 8
  %7086 = load i64, i64* %PC.i75
  %7087 = add i64 %7086, 4
  store i64 %7087, i64* %PC.i75
  %7088 = inttoptr i64 %7085 to i64*
  %7089 = load i64, i64* %7088
  store i64 %7089, i64* %RAX.i76, align 8
  store %struct.Memory* %loadMem_42ac2c, %struct.Memory** %MEMORY
  %loadMem_42ac30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7091 = getelementptr inbounds %struct.GPR, %struct.GPR* %7090, i32 0, i32 33
  %7092 = getelementptr inbounds %struct.Reg, %struct.Reg* %7091, i32 0, i32 0
  %PC.i73 = bitcast %union.anon* %7092 to i64*
  %7093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7094 = getelementptr inbounds %struct.GPR, %struct.GPR* %7093, i32 0, i32 1
  %7095 = getelementptr inbounds %struct.Reg, %struct.Reg* %7094, i32 0, i32 0
  %RAX.i74 = bitcast %union.anon* %7095 to i64*
  %7096 = load i64, i64* %RAX.i74
  %7097 = add i64 %7096, 24
  %7098 = load i64, i64* %PC.i73
  %7099 = add i64 %7098, 4
  store i64 %7099, i64* %PC.i73
  %7100 = inttoptr i64 %7097 to i64*
  %7101 = load i64, i64* %7100
  store i64 %7101, i64* %RAX.i74, align 8
  store %struct.Memory* %loadMem_42ac30, %struct.Memory** %MEMORY
  %loadMem_42ac34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7103 = getelementptr inbounds %struct.GPR, %struct.GPR* %7102, i32 0, i32 33
  %7104 = getelementptr inbounds %struct.Reg, %struct.Reg* %7103, i32 0, i32 0
  %PC.i70 = bitcast %union.anon* %7104 to i64*
  %7105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7106 = getelementptr inbounds %struct.GPR, %struct.GPR* %7105, i32 0, i32 5
  %7107 = getelementptr inbounds %struct.Reg, %struct.Reg* %7106, i32 0, i32 0
  %RCX.i71 = bitcast %union.anon* %7107 to i64*
  %7108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7109 = getelementptr inbounds %struct.GPR, %struct.GPR* %7108, i32 0, i32 15
  %7110 = getelementptr inbounds %struct.Reg, %struct.Reg* %7109, i32 0, i32 0
  %RBP.i72 = bitcast %union.anon* %7110 to i64*
  %7111 = load i64, i64* %RBP.i72
  %7112 = sub i64 %7111, 36
  %7113 = load i64, i64* %PC.i70
  %7114 = add i64 %7113, 4
  store i64 %7114, i64* %PC.i70
  %7115 = inttoptr i64 %7112 to i32*
  %7116 = load i32, i32* %7115
  %7117 = sext i32 %7116 to i64
  store i64 %7117, i64* %RCX.i71, align 8
  store %struct.Memory* %loadMem_42ac34, %struct.Memory** %MEMORY
  %loadMem_42ac38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7119 = getelementptr inbounds %struct.GPR, %struct.GPR* %7118, i32 0, i32 33
  %7120 = getelementptr inbounds %struct.Reg, %struct.Reg* %7119, i32 0, i32 0
  %PC.i66 = bitcast %union.anon* %7120 to i64*
  %7121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7122 = getelementptr inbounds %struct.GPR, %struct.GPR* %7121, i32 0, i32 1
  %7123 = getelementptr inbounds %struct.Reg, %struct.Reg* %7122, i32 0, i32 0
  %RAX.i67 = bitcast %union.anon* %7123 to i64*
  %7124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7125 = getelementptr inbounds %struct.GPR, %struct.GPR* %7124, i32 0, i32 5
  %7126 = getelementptr inbounds %struct.Reg, %struct.Reg* %7125, i32 0, i32 0
  %RCX.i68 = bitcast %union.anon* %7126 to i64*
  %7127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7128 = getelementptr inbounds %struct.GPR, %struct.GPR* %7127, i32 0, i32 9
  %7129 = getelementptr inbounds %struct.Reg, %struct.Reg* %7128, i32 0, i32 0
  %RSI.i69 = bitcast %union.anon* %7129 to i64*
  %7130 = load i64, i64* %RAX.i67
  %7131 = load i64, i64* %RCX.i68
  %7132 = mul i64 %7131, 4
  %7133 = add i64 %7132, %7130
  %7134 = load i64, i64* %PC.i66
  %7135 = add i64 %7134, 3
  store i64 %7135, i64* %PC.i66
  %7136 = inttoptr i64 %7133 to i32*
  %7137 = load i32, i32* %7136
  %7138 = zext i32 %7137 to i64
  store i64 %7138, i64* %RSI.i69, align 8
  store %struct.Memory* %loadMem_42ac38, %struct.Memory** %MEMORY
  %loadMem_42ac3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %7139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7140 = getelementptr inbounds %struct.GPR, %struct.GPR* %7139, i32 0, i32 33
  %7141 = getelementptr inbounds %struct.Reg, %struct.Reg* %7140, i32 0, i32 0
  %PC.i63 = bitcast %union.anon* %7141 to i64*
  %7142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7143 = getelementptr inbounds %struct.GPR, %struct.GPR* %7142, i32 0, i32 1
  %7144 = getelementptr inbounds %struct.Reg, %struct.Reg* %7143, i32 0, i32 0
  %RAX.i64 = bitcast %union.anon* %7144 to i64*
  %7145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7146 = getelementptr inbounds %struct.GPR, %struct.GPR* %7145, i32 0, i32 15
  %7147 = getelementptr inbounds %struct.Reg, %struct.Reg* %7146, i32 0, i32 0
  %RBP.i65 = bitcast %union.anon* %7147 to i64*
  %7148 = load i64, i64* %RBP.i65
  %7149 = sub i64 %7148, 8
  %7150 = load i64, i64* %PC.i63
  %7151 = add i64 %7150, 4
  store i64 %7151, i64* %PC.i63
  %7152 = inttoptr i64 %7149 to i64*
  %7153 = load i64, i64* %7152
  store i64 %7153, i64* %RAX.i64, align 8
  store %struct.Memory* %loadMem_42ac3b, %struct.Memory** %MEMORY
  %loadMem_42ac3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %7154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7155 = getelementptr inbounds %struct.GPR, %struct.GPR* %7154, i32 0, i32 33
  %7156 = getelementptr inbounds %struct.Reg, %struct.Reg* %7155, i32 0, i32 0
  %PC.i61 = bitcast %union.anon* %7156 to i64*
  %7157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7158 = getelementptr inbounds %struct.GPR, %struct.GPR* %7157, i32 0, i32 1
  %7159 = getelementptr inbounds %struct.Reg, %struct.Reg* %7158, i32 0, i32 0
  %RAX.i62 = bitcast %union.anon* %7159 to i64*
  %7160 = load i64, i64* %RAX.i62
  %7161 = add i64 %7160, 24
  %7162 = load i64, i64* %PC.i61
  %7163 = add i64 %7162, 4
  store i64 %7163, i64* %PC.i61
  %7164 = inttoptr i64 %7161 to i64*
  %7165 = load i64, i64* %7164
  store i64 %7165, i64* %RAX.i62, align 8
  store %struct.Memory* %loadMem_42ac3f, %struct.Memory** %MEMORY
  %loadMem_42ac43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7167 = getelementptr inbounds %struct.GPR, %struct.GPR* %7166, i32 0, i32 33
  %7168 = getelementptr inbounds %struct.Reg, %struct.Reg* %7167, i32 0, i32 0
  %PC.i58 = bitcast %union.anon* %7168 to i64*
  %7169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7170 = getelementptr inbounds %struct.GPR, %struct.GPR* %7169, i32 0, i32 5
  %7171 = getelementptr inbounds %struct.Reg, %struct.Reg* %7170, i32 0, i32 0
  %RCX.i59 = bitcast %union.anon* %7171 to i64*
  %7172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7173 = getelementptr inbounds %struct.GPR, %struct.GPR* %7172, i32 0, i32 15
  %7174 = getelementptr inbounds %struct.Reg, %struct.Reg* %7173, i32 0, i32 0
  %RBP.i60 = bitcast %union.anon* %7174 to i64*
  %7175 = load i64, i64* %RBP.i60
  %7176 = sub i64 %7175, 40
  %7177 = load i64, i64* %PC.i58
  %7178 = add i64 %7177, 4
  store i64 %7178, i64* %PC.i58
  %7179 = inttoptr i64 %7176 to i32*
  %7180 = load i32, i32* %7179
  %7181 = sext i32 %7180 to i64
  store i64 %7181, i64* %RCX.i59, align 8
  store %struct.Memory* %loadMem_42ac43, %struct.Memory** %MEMORY
  %loadMem_42ac47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7183 = getelementptr inbounds %struct.GPR, %struct.GPR* %7182, i32 0, i32 33
  %7184 = getelementptr inbounds %struct.Reg, %struct.Reg* %7183, i32 0, i32 0
  %PC.i54 = bitcast %union.anon* %7184 to i64*
  %7185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7186 = getelementptr inbounds %struct.GPR, %struct.GPR* %7185, i32 0, i32 9
  %7187 = getelementptr inbounds %struct.Reg, %struct.Reg* %7186, i32 0, i32 0
  %ESI.i55 = bitcast %union.anon* %7187 to i32*
  %7188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7189 = getelementptr inbounds %struct.GPR, %struct.GPR* %7188, i32 0, i32 1
  %7190 = getelementptr inbounds %struct.Reg, %struct.Reg* %7189, i32 0, i32 0
  %RAX.i56 = bitcast %union.anon* %7190 to i64*
  %7191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7192 = getelementptr inbounds %struct.GPR, %struct.GPR* %7191, i32 0, i32 5
  %7193 = getelementptr inbounds %struct.Reg, %struct.Reg* %7192, i32 0, i32 0
  %RCX.i57 = bitcast %union.anon* %7193 to i64*
  %7194 = load i64, i64* %RAX.i56
  %7195 = load i64, i64* %RCX.i57
  %7196 = mul i64 %7195, 4
  %7197 = add i64 %7196, %7194
  %7198 = load i32, i32* %ESI.i55
  %7199 = zext i32 %7198 to i64
  %7200 = load i64, i64* %PC.i54
  %7201 = add i64 %7200, 3
  store i64 %7201, i64* %PC.i54
  %7202 = inttoptr i64 %7197 to i32*
  store i32 %7198, i32* %7202
  store %struct.Memory* %loadMem_42ac47, %struct.Memory** %MEMORY
  %loadMem_42ac4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %7203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7204 = getelementptr inbounds %struct.GPR, %struct.GPR* %7203, i32 0, i32 33
  %7205 = getelementptr inbounds %struct.Reg, %struct.Reg* %7204, i32 0, i32 0
  %PC.i51 = bitcast %union.anon* %7205 to i64*
  %7206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7207 = getelementptr inbounds %struct.GPR, %struct.GPR* %7206, i32 0, i32 9
  %7208 = getelementptr inbounds %struct.Reg, %struct.Reg* %7207, i32 0, i32 0
  %RSI.i52 = bitcast %union.anon* %7208 to i64*
  %7209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7210 = getelementptr inbounds %struct.GPR, %struct.GPR* %7209, i32 0, i32 15
  %7211 = getelementptr inbounds %struct.Reg, %struct.Reg* %7210, i32 0, i32 0
  %RBP.i53 = bitcast %union.anon* %7211 to i64*
  %7212 = load i64, i64* %RBP.i53
  %7213 = sub i64 %7212, 36
  %7214 = load i64, i64* %PC.i51
  %7215 = add i64 %7214, 3
  store i64 %7215, i64* %PC.i51
  %7216 = inttoptr i64 %7213 to i32*
  %7217 = load i32, i32* %7216
  %7218 = zext i32 %7217 to i64
  store i64 %7218, i64* %RSI.i52, align 8
  store %struct.Memory* %loadMem_42ac4a, %struct.Memory** %MEMORY
  %loadMem_42ac4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %7219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7220 = getelementptr inbounds %struct.GPR, %struct.GPR* %7219, i32 0, i32 33
  %7221 = getelementptr inbounds %struct.Reg, %struct.Reg* %7220, i32 0, i32 0
  %PC.i49 = bitcast %union.anon* %7221 to i64*
  %7222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7223 = getelementptr inbounds %struct.GPR, %struct.GPR* %7222, i32 0, i32 9
  %7224 = getelementptr inbounds %struct.Reg, %struct.Reg* %7223, i32 0, i32 0
  %RSI.i50 = bitcast %union.anon* %7224 to i64*
  %7225 = load i64, i64* %RSI.i50
  %7226 = load i64, i64* %PC.i49
  %7227 = add i64 %7226, 3
  store i64 %7227, i64* %PC.i49
  %7228 = trunc i64 %7225 to i32
  %7229 = add i32 1, %7228
  %7230 = zext i32 %7229 to i64
  store i64 %7230, i64* %RSI.i50, align 8
  %7231 = icmp ult i32 %7229, %7228
  %7232 = icmp ult i32 %7229, 1
  %7233 = or i1 %7231, %7232
  %7234 = zext i1 %7233 to i8
  %7235 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7234, i8* %7235, align 1
  %7236 = and i32 %7229, 255
  %7237 = call i32 @llvm.ctpop.i32(i32 %7236)
  %7238 = trunc i32 %7237 to i8
  %7239 = and i8 %7238, 1
  %7240 = xor i8 %7239, 1
  %7241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7240, i8* %7241, align 1
  %7242 = xor i64 1, %7225
  %7243 = trunc i64 %7242 to i32
  %7244 = xor i32 %7243, %7229
  %7245 = lshr i32 %7244, 4
  %7246 = trunc i32 %7245 to i8
  %7247 = and i8 %7246, 1
  %7248 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7247, i8* %7248, align 1
  %7249 = icmp eq i32 %7229, 0
  %7250 = zext i1 %7249 to i8
  %7251 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7250, i8* %7251, align 1
  %7252 = lshr i32 %7229, 31
  %7253 = trunc i32 %7252 to i8
  %7254 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7253, i8* %7254, align 1
  %7255 = lshr i32 %7228, 31
  %7256 = xor i32 %7252, %7255
  %7257 = add i32 %7256, %7252
  %7258 = icmp eq i32 %7257, 2
  %7259 = zext i1 %7258 to i8
  %7260 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7259, i8* %7260, align 1
  store %struct.Memory* %loadMem_42ac4d, %struct.Memory** %MEMORY
  %loadMem_42ac50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7262 = getelementptr inbounds %struct.GPR, %struct.GPR* %7261, i32 0, i32 33
  %7263 = getelementptr inbounds %struct.Reg, %struct.Reg* %7262, i32 0, i32 0
  %PC.i46 = bitcast %union.anon* %7263 to i64*
  %7264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7265 = getelementptr inbounds %struct.GPR, %struct.GPR* %7264, i32 0, i32 9
  %7266 = getelementptr inbounds %struct.Reg, %struct.Reg* %7265, i32 0, i32 0
  %ESI.i47 = bitcast %union.anon* %7266 to i32*
  %7267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7268 = getelementptr inbounds %struct.GPR, %struct.GPR* %7267, i32 0, i32 15
  %7269 = getelementptr inbounds %struct.Reg, %struct.Reg* %7268, i32 0, i32 0
  %RBP.i48 = bitcast %union.anon* %7269 to i64*
  %7270 = load i64, i64* %RBP.i48
  %7271 = sub i64 %7270, 36
  %7272 = load i32, i32* %ESI.i47
  %7273 = zext i32 %7272 to i64
  %7274 = load i64, i64* %PC.i46
  %7275 = add i64 %7274, 3
  store i64 %7275, i64* %PC.i46
  %7276 = inttoptr i64 %7271 to i32*
  store i32 %7272, i32* %7276
  store %struct.Memory* %loadMem_42ac50, %struct.Memory** %MEMORY
  %loadMem_42ac53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7278 = getelementptr inbounds %struct.GPR, %struct.GPR* %7277, i32 0, i32 33
  %7279 = getelementptr inbounds %struct.Reg, %struct.Reg* %7278, i32 0, i32 0
  %PC.i43 = bitcast %union.anon* %7279 to i64*
  %7280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7281 = getelementptr inbounds %struct.GPR, %struct.GPR* %7280, i32 0, i32 9
  %7282 = getelementptr inbounds %struct.Reg, %struct.Reg* %7281, i32 0, i32 0
  %RSI.i44 = bitcast %union.anon* %7282 to i64*
  %7283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7284 = getelementptr inbounds %struct.GPR, %struct.GPR* %7283, i32 0, i32 15
  %7285 = getelementptr inbounds %struct.Reg, %struct.Reg* %7284, i32 0, i32 0
  %RBP.i45 = bitcast %union.anon* %7285 to i64*
  %7286 = load i64, i64* %RBP.i45
  %7287 = sub i64 %7286, 40
  %7288 = load i64, i64* %PC.i43
  %7289 = add i64 %7288, 3
  store i64 %7289, i64* %PC.i43
  %7290 = inttoptr i64 %7287 to i32*
  %7291 = load i32, i32* %7290
  %7292 = zext i32 %7291 to i64
  store i64 %7292, i64* %RSI.i44, align 8
  store %struct.Memory* %loadMem_42ac53, %struct.Memory** %MEMORY
  %loadMem_42ac56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7294 = getelementptr inbounds %struct.GPR, %struct.GPR* %7293, i32 0, i32 33
  %7295 = getelementptr inbounds %struct.Reg, %struct.Reg* %7294, i32 0, i32 0
  %PC.i42 = bitcast %union.anon* %7295 to i64*
  %7296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7297 = getelementptr inbounds %struct.GPR, %struct.GPR* %7296, i32 0, i32 9
  %7298 = getelementptr inbounds %struct.Reg, %struct.Reg* %7297, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %7298 to i64*
  %7299 = load i64, i64* %RSI.i
  %7300 = load i64, i64* %PC.i42
  %7301 = add i64 %7300, 3
  store i64 %7301, i64* %PC.i42
  %7302 = trunc i64 %7299 to i32
  %7303 = add i32 1, %7302
  %7304 = zext i32 %7303 to i64
  store i64 %7304, i64* %RSI.i, align 8
  %7305 = icmp ult i32 %7303, %7302
  %7306 = icmp ult i32 %7303, 1
  %7307 = or i1 %7305, %7306
  %7308 = zext i1 %7307 to i8
  %7309 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7308, i8* %7309, align 1
  %7310 = and i32 %7303, 255
  %7311 = call i32 @llvm.ctpop.i32(i32 %7310)
  %7312 = trunc i32 %7311 to i8
  %7313 = and i8 %7312, 1
  %7314 = xor i8 %7313, 1
  %7315 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7314, i8* %7315, align 1
  %7316 = xor i64 1, %7299
  %7317 = trunc i64 %7316 to i32
  %7318 = xor i32 %7317, %7303
  %7319 = lshr i32 %7318, 4
  %7320 = trunc i32 %7319 to i8
  %7321 = and i8 %7320, 1
  %7322 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7321, i8* %7322, align 1
  %7323 = icmp eq i32 %7303, 0
  %7324 = zext i1 %7323 to i8
  %7325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7324, i8* %7325, align 1
  %7326 = lshr i32 %7303, 31
  %7327 = trunc i32 %7326 to i8
  %7328 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7327, i8* %7328, align 1
  %7329 = lshr i32 %7302, 31
  %7330 = xor i32 %7326, %7329
  %7331 = add i32 %7330, %7326
  %7332 = icmp eq i32 %7331, 2
  %7333 = zext i1 %7332 to i8
  %7334 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7333, i8* %7334, align 1
  store %struct.Memory* %loadMem_42ac56, %struct.Memory** %MEMORY
  %loadMem_42ac59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7336 = getelementptr inbounds %struct.GPR, %struct.GPR* %7335, i32 0, i32 33
  %7337 = getelementptr inbounds %struct.Reg, %struct.Reg* %7336, i32 0, i32 0
  %PC.i40 = bitcast %union.anon* %7337 to i64*
  %7338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7339 = getelementptr inbounds %struct.GPR, %struct.GPR* %7338, i32 0, i32 9
  %7340 = getelementptr inbounds %struct.Reg, %struct.Reg* %7339, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %7340 to i32*
  %7341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7342 = getelementptr inbounds %struct.GPR, %struct.GPR* %7341, i32 0, i32 15
  %7343 = getelementptr inbounds %struct.Reg, %struct.Reg* %7342, i32 0, i32 0
  %RBP.i41 = bitcast %union.anon* %7343 to i64*
  %7344 = load i64, i64* %RBP.i41
  %7345 = sub i64 %7344, 40
  %7346 = load i32, i32* %ESI.i
  %7347 = zext i32 %7346 to i64
  %7348 = load i64, i64* %PC.i40
  %7349 = add i64 %7348, 3
  store i64 %7349, i64* %PC.i40
  %7350 = inttoptr i64 %7345 to i32*
  store i32 %7346, i32* %7350
  store %struct.Memory* %loadMem_42ac59, %struct.Memory** %MEMORY
  br label %block_.L_42ac5c

block_.L_42ac5c:                                  ; preds = %block_.L_42abf0, %block_42ab0a
  %loadMem_42ac5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %7351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7352 = getelementptr inbounds %struct.GPR, %struct.GPR* %7351, i32 0, i32 33
  %7353 = getelementptr inbounds %struct.Reg, %struct.Reg* %7352, i32 0, i32 0
  %PC.i39 = bitcast %union.anon* %7353 to i64*
  %7354 = load i64, i64* %PC.i39
  %7355 = add i64 %7354, 5
  %7356 = load i64, i64* %PC.i39
  %7357 = add i64 %7356, 5
  store i64 %7357, i64* %PC.i39
  %7358 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7355, i64* %7358, align 8
  store %struct.Memory* %loadMem_42ac5c, %struct.Memory** %MEMORY
  br label %block_.L_42ac61

block_.L_42ac61:                                  ; preds = %block_.L_42ac5c, %block_42a9f5
  %loadMem_42ac61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7360 = getelementptr inbounds %struct.GPR, %struct.GPR* %7359, i32 0, i32 33
  %7361 = getelementptr inbounds %struct.Reg, %struct.Reg* %7360, i32 0, i32 0
  %PC.i38 = bitcast %union.anon* %7361 to i64*
  %7362 = load i64, i64* %PC.i38
  %7363 = add i64 %7362, 5
  %7364 = load i64, i64* %PC.i38
  %7365 = add i64 %7364, 5
  store i64 %7365, i64* %PC.i38
  %7366 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7363, i64* %7366, align 8
  store %struct.Memory* %loadMem_42ac61, %struct.Memory** %MEMORY
  br label %block_.L_42ac66

block_.L_42ac66:                                  ; preds = %block_.L_42ac61, %block_42a91f
  %loadMem_42ac66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7368 = getelementptr inbounds %struct.GPR, %struct.GPR* %7367, i32 0, i32 33
  %7369 = getelementptr inbounds %struct.Reg, %struct.Reg* %7368, i32 0, i32 0
  %PC.i37 = bitcast %union.anon* %7369 to i64*
  %7370 = load i64, i64* %PC.i37
  %7371 = add i64 %7370, 5
  %7372 = load i64, i64* %PC.i37
  %7373 = add i64 %7372, 5
  store i64 %7373, i64* %PC.i37
  %7374 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7371, i64* %7374, align 8
  store %struct.Memory* %loadMem_42ac66, %struct.Memory** %MEMORY
  br label %block_.L_42ac6b

block_.L_42ac6b:                                  ; preds = %block_.L_42ac66, %block_42a885
  %loadMem_42ac6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %7375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7376 = getelementptr inbounds %struct.GPR, %struct.GPR* %7375, i32 0, i32 33
  %7377 = getelementptr inbounds %struct.Reg, %struct.Reg* %7376, i32 0, i32 0
  %PC.i36 = bitcast %union.anon* %7377 to i64*
  %7378 = load i64, i64* %PC.i36
  %7379 = add i64 %7378, 5
  %7380 = load i64, i64* %PC.i36
  %7381 = add i64 %7380, 5
  store i64 %7381, i64* %PC.i36
  %7382 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7379, i64* %7382, align 8
  store %struct.Memory* %loadMem_42ac6b, %struct.Memory** %MEMORY
  br label %block_.L_42ac70

block_.L_42ac70:                                  ; preds = %block_.L_42ac6b, %block_42a7dd
  %loadMem_42ac70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7384 = getelementptr inbounds %struct.GPR, %struct.GPR* %7383, i32 0, i32 33
  %7385 = getelementptr inbounds %struct.Reg, %struct.Reg* %7384, i32 0, i32 0
  %PC.i35 = bitcast %union.anon* %7385 to i64*
  %7386 = load i64, i64* %PC.i35
  %7387 = add i64 %7386, 5
  %7388 = load i64, i64* %PC.i35
  %7389 = add i64 %7388, 5
  store i64 %7389, i64* %PC.i35
  %7390 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7387, i64* %7390, align 8
  store %struct.Memory* %loadMem_42ac70, %struct.Memory** %MEMORY
  br label %block_.L_42ac75

block_.L_42ac75:                                  ; preds = %block_.L_42ac70, %block_42a735
  %loadMem_42ac75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7392 = getelementptr inbounds %struct.GPR, %struct.GPR* %7391, i32 0, i32 33
  %7393 = getelementptr inbounds %struct.Reg, %struct.Reg* %7392, i32 0, i32 0
  %PC.i34 = bitcast %union.anon* %7393 to i64*
  %7394 = load i64, i64* %PC.i34
  %7395 = add i64 %7394, -1414
  %7396 = load i64, i64* %PC.i34
  %7397 = add i64 %7396, 5
  store i64 %7397, i64* %PC.i34
  %7398 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7395, i64* %7398, align 8
  store %struct.Memory* %loadMem_42ac75, %struct.Memory** %MEMORY
  br label %block_.L_42a6ef

block_.L_42ac7a:                                  ; preds = %block_.L_42a6ef
  %loadMem_42ac7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %7399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7400 = getelementptr inbounds %struct.GPR, %struct.GPR* %7399, i32 0, i32 33
  %7401 = getelementptr inbounds %struct.Reg, %struct.Reg* %7400, i32 0, i32 0
  %PC.i31 = bitcast %union.anon* %7401 to i64*
  %7402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7403 = getelementptr inbounds %struct.GPR, %struct.GPR* %7402, i32 0, i32 1
  %7404 = getelementptr inbounds %struct.Reg, %struct.Reg* %7403, i32 0, i32 0
  %RAX.i32 = bitcast %union.anon* %7404 to i64*
  %7405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7406 = getelementptr inbounds %struct.GPR, %struct.GPR* %7405, i32 0, i32 15
  %7407 = getelementptr inbounds %struct.Reg, %struct.Reg* %7406, i32 0, i32 0
  %RBP.i33 = bitcast %union.anon* %7407 to i64*
  %7408 = load i64, i64* %RBP.i33
  %7409 = sub i64 %7408, 40
  %7410 = load i64, i64* %PC.i31
  %7411 = add i64 %7410, 3
  store i64 %7411, i64* %PC.i31
  %7412 = inttoptr i64 %7409 to i32*
  %7413 = load i32, i32* %7412
  %7414 = zext i32 %7413 to i64
  store i64 %7414, i64* %RAX.i32, align 8
  store %struct.Memory* %loadMem_42ac7a, %struct.Memory** %MEMORY
  %loadMem_42ac7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %7415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7416 = getelementptr inbounds %struct.GPR, %struct.GPR* %7415, i32 0, i32 33
  %7417 = getelementptr inbounds %struct.Reg, %struct.Reg* %7416, i32 0, i32 0
  %PC.i28 = bitcast %union.anon* %7417 to i64*
  %7418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7419 = getelementptr inbounds %struct.GPR, %struct.GPR* %7418, i32 0, i32 5
  %7420 = getelementptr inbounds %struct.Reg, %struct.Reg* %7419, i32 0, i32 0
  %RCX.i29 = bitcast %union.anon* %7420 to i64*
  %7421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7422 = getelementptr inbounds %struct.GPR, %struct.GPR* %7421, i32 0, i32 15
  %7423 = getelementptr inbounds %struct.Reg, %struct.Reg* %7422, i32 0, i32 0
  %RBP.i30 = bitcast %union.anon* %7423 to i64*
  %7424 = load i64, i64* %RBP.i30
  %7425 = sub i64 %7424, 8
  %7426 = load i64, i64* %PC.i28
  %7427 = add i64 %7426, 4
  store i64 %7427, i64* %PC.i28
  %7428 = inttoptr i64 %7425 to i64*
  %7429 = load i64, i64* %7428
  store i64 %7429, i64* %RCX.i29, align 8
  store %struct.Memory* %loadMem_42ac7d, %struct.Memory** %MEMORY
  %loadMem_42ac81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7430 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7431 = getelementptr inbounds %struct.GPR, %struct.GPR* %7430, i32 0, i32 33
  %7432 = getelementptr inbounds %struct.Reg, %struct.Reg* %7431, i32 0, i32 0
  %PC.i25 = bitcast %union.anon* %7432 to i64*
  %7433 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7434 = getelementptr inbounds %struct.GPR, %struct.GPR* %7433, i32 0, i32 1
  %7435 = getelementptr inbounds %struct.Reg, %struct.Reg* %7434, i32 0, i32 0
  %EAX.i26 = bitcast %union.anon* %7435 to i32*
  %7436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7437 = getelementptr inbounds %struct.GPR, %struct.GPR* %7436, i32 0, i32 5
  %7438 = getelementptr inbounds %struct.Reg, %struct.Reg* %7437, i32 0, i32 0
  %RCX.i27 = bitcast %union.anon* %7438 to i64*
  %7439 = load i64, i64* %RCX.i27
  %7440 = load i32, i32* %EAX.i26
  %7441 = zext i32 %7440 to i64
  %7442 = load i64, i64* %PC.i25
  %7443 = add i64 %7442, 2
  store i64 %7443, i64* %PC.i25
  %7444 = inttoptr i64 %7439 to i32*
  store i32 %7440, i32* %7444
  store %struct.Memory* %loadMem_42ac81, %struct.Memory** %MEMORY
  %loadMem_42ac83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7446 = getelementptr inbounds %struct.GPR, %struct.GPR* %7445, i32 0, i32 33
  %7447 = getelementptr inbounds %struct.Reg, %struct.Reg* %7446, i32 0, i32 0
  %PC.i23 = bitcast %union.anon* %7447 to i64*
  %7448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7449 = getelementptr inbounds %struct.GPR, %struct.GPR* %7448, i32 0, i32 15
  %7450 = getelementptr inbounds %struct.Reg, %struct.Reg* %7449, i32 0, i32 0
  %RBP.i24 = bitcast %union.anon* %7450 to i64*
  %7451 = load i64, i64* %RBP.i24
  %7452 = sub i64 %7451, 24
  %7453 = load i64, i64* %PC.i23
  %7454 = add i64 %7453, 5
  store i64 %7454, i64* %PC.i23
  %7455 = inttoptr i64 %7452 to i64*
  %7456 = load i64, i64* %7455
  %7457 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7457, align 1
  %7458 = trunc i64 %7456 to i32
  %7459 = and i32 %7458, 255
  %7460 = call i32 @llvm.ctpop.i32(i32 %7459)
  %7461 = trunc i32 %7460 to i8
  %7462 = and i8 %7461, 1
  %7463 = xor i8 %7462, 1
  %7464 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7463, i8* %7464, align 1
  %7465 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7465, align 1
  %7466 = icmp eq i64 %7456, 0
  %7467 = zext i1 %7466 to i8
  %7468 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7467, i8* %7468, align 1
  %7469 = lshr i64 %7456, 63
  %7470 = trunc i64 %7469 to i8
  %7471 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7470, i8* %7471, align 1
  %7472 = lshr i64 %7456, 63
  %7473 = xor i64 %7469, %7472
  %7474 = add i64 %7473, %7472
  %7475 = icmp eq i64 %7474, 2
  %7476 = zext i1 %7475 to i8
  %7477 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7476, i8* %7477, align 1
  store %struct.Memory* %loadMem_42ac83, %struct.Memory** %MEMORY
  %loadMem_42ac88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7479 = getelementptr inbounds %struct.GPR, %struct.GPR* %7478, i32 0, i32 33
  %7480 = getelementptr inbounds %struct.Reg, %struct.Reg* %7479, i32 0, i32 0
  %PC.i22 = bitcast %union.anon* %7480 to i64*
  %7481 = load i64, i64* %PC.i22
  %7482 = add i64 %7481, 15
  %7483 = load i64, i64* %PC.i22
  %7484 = add i64 %7483, 6
  %7485 = load i64, i64* %PC.i22
  %7486 = add i64 %7485, 6
  store i64 %7486, i64* %PC.i22
  %7487 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7488 = load i8, i8* %7487, align 1
  store i8 %7488, i8* %BRANCH_TAKEN, align 1
  %7489 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7490 = icmp ne i8 %7488, 0
  %7491 = select i1 %7490, i64 %7482, i64 %7484
  store i64 %7491, i64* %7489, align 8
  store %struct.Memory* %loadMem_42ac88, %struct.Memory** %MEMORY
  %loadBr_42ac88 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42ac88 = icmp eq i8 %loadBr_42ac88, 1
  br i1 %cmpBr_42ac88, label %block_.L_42ac97, label %block_42ac8e

block_42ac8e:                                     ; preds = %block_.L_42ac7a
  %loadMem_42ac8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %7492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7493 = getelementptr inbounds %struct.GPR, %struct.GPR* %7492, i32 0, i32 33
  %7494 = getelementptr inbounds %struct.Reg, %struct.Reg* %7493, i32 0, i32 0
  %PC.i19 = bitcast %union.anon* %7494 to i64*
  %7495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7496 = getelementptr inbounds %struct.GPR, %struct.GPR* %7495, i32 0, i32 1
  %7497 = getelementptr inbounds %struct.Reg, %struct.Reg* %7496, i32 0, i32 0
  %RAX.i20 = bitcast %union.anon* %7497 to i64*
  %7498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7499 = getelementptr inbounds %struct.GPR, %struct.GPR* %7498, i32 0, i32 15
  %7500 = getelementptr inbounds %struct.Reg, %struct.Reg* %7499, i32 0, i32 0
  %RBP.i21 = bitcast %union.anon* %7500 to i64*
  %7501 = load i64, i64* %RBP.i21
  %7502 = sub i64 %7501, 44
  %7503 = load i64, i64* %PC.i19
  %7504 = add i64 %7503, 3
  store i64 %7504, i64* %PC.i19
  %7505 = inttoptr i64 %7502 to i32*
  %7506 = load i32, i32* %7505
  %7507 = zext i32 %7506 to i64
  store i64 %7507, i64* %RAX.i20, align 8
  store %struct.Memory* %loadMem_42ac8e, %struct.Memory** %MEMORY
  %loadMem_42ac91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7508 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7509 = getelementptr inbounds %struct.GPR, %struct.GPR* %7508, i32 0, i32 33
  %7510 = getelementptr inbounds %struct.Reg, %struct.Reg* %7509, i32 0, i32 0
  %PC.i16 = bitcast %union.anon* %7510 to i64*
  %7511 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7512 = getelementptr inbounds %struct.GPR, %struct.GPR* %7511, i32 0, i32 5
  %7513 = getelementptr inbounds %struct.Reg, %struct.Reg* %7512, i32 0, i32 0
  %RCX.i17 = bitcast %union.anon* %7513 to i64*
  %7514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7515 = getelementptr inbounds %struct.GPR, %struct.GPR* %7514, i32 0, i32 15
  %7516 = getelementptr inbounds %struct.Reg, %struct.Reg* %7515, i32 0, i32 0
  %RBP.i18 = bitcast %union.anon* %7516 to i64*
  %7517 = load i64, i64* %RBP.i18
  %7518 = sub i64 %7517, 24
  %7519 = load i64, i64* %PC.i16
  %7520 = add i64 %7519, 4
  store i64 %7520, i64* %PC.i16
  %7521 = inttoptr i64 %7518 to i64*
  %7522 = load i64, i64* %7521
  store i64 %7522, i64* %RCX.i17, align 8
  store %struct.Memory* %loadMem_42ac91, %struct.Memory** %MEMORY
  %loadMem_42ac95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7524 = getelementptr inbounds %struct.GPR, %struct.GPR* %7523, i32 0, i32 33
  %7525 = getelementptr inbounds %struct.Reg, %struct.Reg* %7524, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %7525 to i64*
  %7526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7527 = getelementptr inbounds %struct.GPR, %struct.GPR* %7526, i32 0, i32 1
  %7528 = getelementptr inbounds %struct.Reg, %struct.Reg* %7527, i32 0, i32 0
  %EAX.i14 = bitcast %union.anon* %7528 to i32*
  %7529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7530 = getelementptr inbounds %struct.GPR, %struct.GPR* %7529, i32 0, i32 5
  %7531 = getelementptr inbounds %struct.Reg, %struct.Reg* %7530, i32 0, i32 0
  %RCX.i15 = bitcast %union.anon* %7531 to i64*
  %7532 = load i64, i64* %RCX.i15
  %7533 = load i32, i32* %EAX.i14
  %7534 = zext i32 %7533 to i64
  %7535 = load i64, i64* %PC.i13
  %7536 = add i64 %7535, 2
  store i64 %7536, i64* %PC.i13
  %7537 = inttoptr i64 %7532 to i32*
  store i32 %7533, i32* %7537
  store %struct.Memory* %loadMem_42ac95, %struct.Memory** %MEMORY
  br label %block_.L_42ac97

block_.L_42ac97:                                  ; preds = %block_42ac8e, %block_.L_42ac7a
  %loadMem_42ac97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7538 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7539 = getelementptr inbounds %struct.GPR, %struct.GPR* %7538, i32 0, i32 33
  %7540 = getelementptr inbounds %struct.Reg, %struct.Reg* %7539, i32 0, i32 0
  %PC.i11 = bitcast %union.anon* %7540 to i64*
  %7541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7542 = getelementptr inbounds %struct.GPR, %struct.GPR* %7541, i32 0, i32 15
  %7543 = getelementptr inbounds %struct.Reg, %struct.Reg* %7542, i32 0, i32 0
  %RBP.i12 = bitcast %union.anon* %7543 to i64*
  %7544 = load i64, i64* %RBP.i12
  %7545 = sub i64 %7544, 32
  %7546 = load i64, i64* %PC.i11
  %7547 = add i64 %7546, 5
  store i64 %7547, i64* %PC.i11
  %7548 = inttoptr i64 %7545 to i64*
  %7549 = load i64, i64* %7548
  %7550 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7550, align 1
  %7551 = trunc i64 %7549 to i32
  %7552 = and i32 %7551, 255
  %7553 = call i32 @llvm.ctpop.i32(i32 %7552)
  %7554 = trunc i32 %7553 to i8
  %7555 = and i8 %7554, 1
  %7556 = xor i8 %7555, 1
  %7557 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7556, i8* %7557, align 1
  %7558 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7558, align 1
  %7559 = icmp eq i64 %7549, 0
  %7560 = zext i1 %7559 to i8
  %7561 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7560, i8* %7561, align 1
  %7562 = lshr i64 %7549, 63
  %7563 = trunc i64 %7562 to i8
  %7564 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7563, i8* %7564, align 1
  %7565 = lshr i64 %7549, 63
  %7566 = xor i64 %7562, %7565
  %7567 = add i64 %7566, %7565
  %7568 = icmp eq i64 %7567, 2
  %7569 = zext i1 %7568 to i8
  %7570 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7569, i8* %7570, align 1
  store %struct.Memory* %loadMem_42ac97, %struct.Memory** %MEMORY
  %loadMem_42ac9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %7571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7572 = getelementptr inbounds %struct.GPR, %struct.GPR* %7571, i32 0, i32 33
  %7573 = getelementptr inbounds %struct.Reg, %struct.Reg* %7572, i32 0, i32 0
  %PC.i10 = bitcast %union.anon* %7573 to i64*
  %7574 = load i64, i64* %PC.i10
  %7575 = add i64 %7574, 15
  %7576 = load i64, i64* %PC.i10
  %7577 = add i64 %7576, 6
  %7578 = load i64, i64* %PC.i10
  %7579 = add i64 %7578, 6
  store i64 %7579, i64* %PC.i10
  %7580 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7581 = load i8, i8* %7580, align 1
  store i8 %7581, i8* %BRANCH_TAKEN, align 1
  %7582 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7583 = icmp ne i8 %7581, 0
  %7584 = select i1 %7583, i64 %7575, i64 %7577
  store i64 %7584, i64* %7582, align 8
  store %struct.Memory* %loadMem_42ac9c, %struct.Memory** %MEMORY
  %loadBr_42ac9c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42ac9c = icmp eq i8 %loadBr_42ac9c, 1
  br i1 %cmpBr_42ac9c, label %block_.L_42acab, label %block_42aca2

block_42aca2:                                     ; preds = %block_.L_42ac97
  %loadMem_42aca2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7586 = getelementptr inbounds %struct.GPR, %struct.GPR* %7585, i32 0, i32 33
  %7587 = getelementptr inbounds %struct.Reg, %struct.Reg* %7586, i32 0, i32 0
  %PC.i8 = bitcast %union.anon* %7587 to i64*
  %7588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7589 = getelementptr inbounds %struct.GPR, %struct.GPR* %7588, i32 0, i32 1
  %7590 = getelementptr inbounds %struct.Reg, %struct.Reg* %7589, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %7590 to i64*
  %7591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7592 = getelementptr inbounds %struct.GPR, %struct.GPR* %7591, i32 0, i32 15
  %7593 = getelementptr inbounds %struct.Reg, %struct.Reg* %7592, i32 0, i32 0
  %RBP.i9 = bitcast %union.anon* %7593 to i64*
  %7594 = load i64, i64* %RBP.i9
  %7595 = sub i64 %7594, 48
  %7596 = load i64, i64* %PC.i8
  %7597 = add i64 %7596, 3
  store i64 %7597, i64* %PC.i8
  %7598 = inttoptr i64 %7595 to i32*
  %7599 = load i32, i32* %7598
  %7600 = zext i32 %7599 to i64
  store i64 %7600, i64* %RAX.i, align 8
  store %struct.Memory* %loadMem_42aca2, %struct.Memory** %MEMORY
  %loadMem_42aca5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7602 = getelementptr inbounds %struct.GPR, %struct.GPR* %7601, i32 0, i32 33
  %7603 = getelementptr inbounds %struct.Reg, %struct.Reg* %7602, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %7603 to i64*
  %7604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7605 = getelementptr inbounds %struct.GPR, %struct.GPR* %7604, i32 0, i32 5
  %7606 = getelementptr inbounds %struct.Reg, %struct.Reg* %7605, i32 0, i32 0
  %RCX.i6 = bitcast %union.anon* %7606 to i64*
  %7607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7608 = getelementptr inbounds %struct.GPR, %struct.GPR* %7607, i32 0, i32 15
  %7609 = getelementptr inbounds %struct.Reg, %struct.Reg* %7608, i32 0, i32 0
  %RBP.i7 = bitcast %union.anon* %7609 to i64*
  %7610 = load i64, i64* %RBP.i7
  %7611 = sub i64 %7610, 32
  %7612 = load i64, i64* %PC.i5
  %7613 = add i64 %7612, 4
  store i64 %7613, i64* %PC.i5
  %7614 = inttoptr i64 %7611 to i64*
  %7615 = load i64, i64* %7614
  store i64 %7615, i64* %RCX.i6, align 8
  store %struct.Memory* %loadMem_42aca5, %struct.Memory** %MEMORY
  %loadMem_42aca9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7616 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7617 = getelementptr inbounds %struct.GPR, %struct.GPR* %7616, i32 0, i32 33
  %7618 = getelementptr inbounds %struct.Reg, %struct.Reg* %7617, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %7618 to i64*
  %7619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7620 = getelementptr inbounds %struct.GPR, %struct.GPR* %7619, i32 0, i32 1
  %7621 = getelementptr inbounds %struct.Reg, %struct.Reg* %7620, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %7621 to i32*
  %7622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7623 = getelementptr inbounds %struct.GPR, %struct.GPR* %7622, i32 0, i32 5
  %7624 = getelementptr inbounds %struct.Reg, %struct.Reg* %7623, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %7624 to i64*
  %7625 = load i64, i64* %RCX.i
  %7626 = load i32, i32* %EAX.i
  %7627 = zext i32 %7626 to i64
  %7628 = load i64, i64* %PC.i4
  %7629 = add i64 %7628, 2
  store i64 %7629, i64* %PC.i4
  %7630 = inttoptr i64 %7625 to i32*
  store i32 %7626, i32* %7630
  store %struct.Memory* %loadMem_42aca9, %struct.Memory** %MEMORY
  br label %block_.L_42acab

block_.L_42acab:                                  ; preds = %block_42aca2, %block_.L_42ac97
  %loadMem_42acab = load %struct.Memory*, %struct.Memory** %MEMORY
  %7631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7632 = getelementptr inbounds %struct.GPR, %struct.GPR* %7631, i32 0, i32 33
  %7633 = getelementptr inbounds %struct.Reg, %struct.Reg* %7632, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %7633 to i64*
  %7634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7635 = getelementptr inbounds %struct.GPR, %struct.GPR* %7634, i32 0, i32 15
  %7636 = getelementptr inbounds %struct.Reg, %struct.Reg* %7635, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %7636 to i64*
  %7637 = load i64, i64* %PC.i2
  %7638 = add i64 %7637, 1
  store i64 %7638, i64* %PC.i2
  %7639 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7640 = load i64, i64* %7639, align 8
  %7641 = add i64 %7640, 8
  %7642 = inttoptr i64 %7640 to i64*
  %7643 = load i64, i64* %7642
  store i64 %7643, i64* %RBP.i3, align 8
  store i64 %7641, i64* %7639, align 8
  store %struct.Memory* %loadMem_42acab, %struct.Memory** %MEMORY
  %loadMem_42acac = load %struct.Memory*, %struct.Memory** %MEMORY
  %7644 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7645 = getelementptr inbounds %struct.GPR, %struct.GPR* %7644, i32 0, i32 33
  %7646 = getelementptr inbounds %struct.Reg, %struct.Reg* %7645, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %7646 to i64*
  %7647 = load i64, i64* %PC.i1
  %7648 = add i64 %7647, 1
  store i64 %7648, i64* %PC.i1
  %7649 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7650 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7651 = load i64, i64* %7650, align 8
  %7652 = inttoptr i64 %7651 to i64*
  %7653 = load i64, i64* %7652
  store i64 %7653, i64* %7649, align 8
  %7654 = add i64 %7651, 8
  store i64 %7654, i64* %7650, align 8
  store %struct.Memory* %loadMem_42acac, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_42acac
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

define %struct.Memory* @routine_movl__0x0__MINUS0x2c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 44
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 40
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x24__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 36
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

define %struct.Memory* @routine_cmpl___rcx____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = sub i32 %12, %18
  %20 = icmp ult i32 %12, %18
  %21 = zext i1 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %21, i8* %22, align 1
  %23 = and i32 %19, 255
  %24 = call i32 @llvm.ctpop.i32(i32 %23)
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = xor i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %27, i8* %28, align 1
  %29 = xor i32 %18, %12
  %30 = xor i32 %29, %19
  %31 = lshr i32 %30, 4
  %32 = trunc i32 %31 to i8
  %33 = and i8 %32, 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %33, i8* %34, align 1
  %35 = icmp eq i32 %19, 0
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %36, i8* %37, align 1
  %38 = lshr i32 %19, 31
  %39 = trunc i32 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %39, i8* %40, align 1
  %41 = lshr i32 %12, 31
  %42 = lshr i32 %18, 31
  %43 = xor i32 %42, %41
  %44 = xor i32 %38, %41
  %45 = add i32 %44, %43
  %46 = icmp eq i32 %45, 2
  %47 = zext i1 %46 to i8
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %47, i8* %48, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_42ac7a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_0x8__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x24__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 36
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

define %struct.Memory* @routine_cmpl__0x2___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %9, 2
  %14 = icmp ult i32 %9, 2
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
  %23 = xor i64 2, %10
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

define %struct.Memory* @routine_jne_.L_42a7a6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x24__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 36
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

define %struct.Memory* @routine_movsbl___rax__rdx_1____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %17 = add i64 %16, %15
  %18 = load i64, i64* %PC
  %19 = add i64 %18, 4
  store i64 %19, i64* %PC
  %20 = inttoptr i64 %17 to i8*
  %21 = load i8, i8* %20
  %22 = sext i8 %21 to i64
  %23 = and i64 %22, 4294967295
  store i64 %23, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x3___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %9, 3
  %14 = icmp ult i32 %9, 3
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
  %23 = xor i64 3, %10
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

define %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 40
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__0x1____rax__rcx_1_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i8 1, i8* %17
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

define %struct.Memory* @routine_movl__edx____rax__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %19 = load i32, i32* %EDX
  %20 = zext i32 %19 to i64
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 3
  store i64 %22, i64* %PC
  %23 = inttoptr i64 %18 to i32*
  store i32 %19, i32* %23
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

define %struct.Memory* @routine_movl_MINUS0x24__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 36
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__0x1___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 3
  store i64 %11, i64* %PC
  %12 = trunc i64 %9 to i32
  %13 = add i32 1, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RDX, align 8
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

define %struct.Memory* @routine_movslq__edx___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RCX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %EDX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__0x2___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 3
  store i64 %11, i64* %PC
  %12 = trunc i64 %9 to i32
  %13 = add i32 2, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RDX, align 8
  %15 = icmp ult i32 %13, %12
  %16 = icmp ult i32 %13, 2
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
  %26 = xor i64 2, %9
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

define %struct.Memory* @routine_movl__edx__MINUS0x24__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 36
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x28__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 40
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 40
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x2c__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 44
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0x2c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 44
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_42ac75(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x3___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %9, 3
  %14 = icmp ult i32 %9, 3
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
  %23 = xor i64 3, %10
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

define %struct.Memory* @routine_jne_.L_42a84e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x2___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %9, 2
  %14 = icmp ult i32 %9, 2
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
  %23 = xor i64 2, %10
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

define %struct.Memory* @routine_movl_MINUS0x30__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 48
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_42ac70(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jne_.L_42a8e8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x6___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %9, 6
  %14 = icmp ult i32 %9, 6
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
  %23 = xor i64 6, %10
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

define %struct.Memory* @routine_jmpq_.L_42ac6b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jne_.L_42a985(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x7___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %9, 7
  %14 = icmp ult i32 %9, 7
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
  %23 = xor i64 7, %10
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

define %struct.Memory* @routine_jmpq_.L_42ac66(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x6___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %9, 6
  %14 = icmp ult i32 %9, 6
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
  %23 = xor i64 6, %10
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

define %struct.Memory* @routine_jne_.L_42aa97(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x5___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %9, 5
  %14 = icmp ult i32 %9, 5
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
  %23 = xor i64 5, %10
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

define %struct.Memory* @routine_cmpl__0x0____rax__rdx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jle_.L_42aa97(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x1____rax__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 1, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl__0x1___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 3
  store i64 %11, i64* %PC
  %12 = trunc i64 %9 to i32
  %13 = sub i32 %12, 1
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RDX, align 8
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

define %struct.Memory* @routine_movb__0x6____rax__rcx_1_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i8 6, i8* %17
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

define %struct.Memory* @routine_jmpq_.L_42ac61(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x7___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %9, 7
  %14 = icmp ult i32 %9, 7
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
  %23 = xor i64 7, %10
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

define %struct.Memory* @routine_jne_.L_42abf0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x8___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %9, 8
  %14 = icmp ult i32 %9, 8
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
  %23 = xor i64 8, %10
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

define %struct.Memory* @routine_addl__0x2___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i32 2, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RCX, align 8
  %15 = icmp ult i32 %13, %12
  %16 = icmp ult i32 %13, 2
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
  %26 = xor i64 2, %9
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

define %struct.Memory* @routine_movl_MINUS0xc__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__0x7____rax__rcx_1_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i8 7, i8* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__0x8____rax__rcx_1_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i8 8, i8* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__0x3___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 3
  store i64 %11, i64* %PC
  %12 = trunc i64 %9 to i32
  %13 = add i32 3, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RDX, align 8
  %15 = icmp ult i32 %13, %12
  %16 = icmp ult i32 %13, 3
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
  %26 = xor i64 3, %9
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

define %struct.Memory* @routine_jmpq_.L_42ac5c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl_MINUS0x24__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 36
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

define %struct.Memory* @routine_movl__esi__MINUS0x24__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 36
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x28__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 40
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__esi__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 40
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_42a6ef(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
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

define %struct.Memory* @routine_cmpq__0x0__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_je_.L_42ac97(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 44
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
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

define %struct.Memory* @routine_je_.L_42acab(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
