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
define %struct.Memory* @insert_new_arc(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_400b80 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_400b80, %struct.Memory** %MEMORY
  %loadMem_400b81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i102 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i103 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i
  %27 = load i64, i64* %PC.i102
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i102
  store i64 %26, i64* %RBP.i103, align 8
  store %struct.Memory* %loadMem_400b81, %struct.Memory** %MEMORY
  %loadMem_400b84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i139 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 11
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RDI.i140 = bitcast %union.anon* %34 to i64*
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %36 = getelementptr inbounds %struct.GPR, %struct.GPR* %35, i32 0, i32 15
  %37 = getelementptr inbounds %struct.Reg, %struct.Reg* %36, i32 0, i32 0
  %RBP.i141 = bitcast %union.anon* %37 to i64*
  %38 = load i64, i64* %RBP.i141
  %39 = sub i64 %38, 8
  %40 = load i64, i64* %RDI.i140
  %41 = load i64, i64* %PC.i139
  %42 = add i64 %41, 4
  store i64 %42, i64* %PC.i139
  %43 = inttoptr i64 %39 to i64*
  store i64 %40, i64* %43
  store %struct.Memory* %loadMem_400b84, %struct.Memory** %MEMORY
  %loadMem_400b88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %45 = getelementptr inbounds %struct.GPR, %struct.GPR* %44, i32 0, i32 33
  %46 = getelementptr inbounds %struct.Reg, %struct.Reg* %45, i32 0, i32 0
  %PC.i187 = bitcast %union.anon* %46 to i64*
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %48 = getelementptr inbounds %struct.GPR, %struct.GPR* %47, i32 0, i32 9
  %49 = getelementptr inbounds %struct.Reg, %struct.Reg* %48, i32 0, i32 0
  %RSI.i188 = bitcast %union.anon* %49 to i64*
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %51 = getelementptr inbounds %struct.GPR, %struct.GPR* %50, i32 0, i32 15
  %52 = getelementptr inbounds %struct.Reg, %struct.Reg* %51, i32 0, i32 0
  %RBP.i189 = bitcast %union.anon* %52 to i64*
  %53 = load i64, i64* %RBP.i189
  %54 = sub i64 %53, 16
  %55 = load i64, i64* %RSI.i188
  %56 = load i64, i64* %PC.i187
  %57 = add i64 %56, 4
  store i64 %57, i64* %PC.i187
  %58 = inttoptr i64 %54 to i64*
  store i64 %55, i64* %58
  store %struct.Memory* %loadMem_400b88, %struct.Memory** %MEMORY
  %loadMem_400b8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %59 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %60 = getelementptr inbounds %struct.GPR, %struct.GPR* %59, i32 0, i32 33
  %61 = getelementptr inbounds %struct.Reg, %struct.Reg* %60, i32 0, i32 0
  %PC.i235 = bitcast %union.anon* %61 to i64*
  %62 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %63 = getelementptr inbounds %struct.GPR, %struct.GPR* %62, i32 0, i32 7
  %64 = getelementptr inbounds %struct.Reg, %struct.Reg* %63, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %64 to i64*
  %65 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %66 = getelementptr inbounds %struct.GPR, %struct.GPR* %65, i32 0, i32 15
  %67 = getelementptr inbounds %struct.Reg, %struct.Reg* %66, i32 0, i32 0
  %RBP.i236 = bitcast %union.anon* %67 to i64*
  %68 = load i64, i64* %RBP.i236
  %69 = sub i64 %68, 24
  %70 = load i64, i64* %RDX.i
  %71 = load i64, i64* %PC.i235
  %72 = add i64 %71, 4
  store i64 %72, i64* %PC.i235
  %73 = inttoptr i64 %69 to i64*
  store i64 %70, i64* %73
  store %struct.Memory* %loadMem_400b8c, %struct.Memory** %MEMORY
  %loadMem_400b90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %74 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %75 = getelementptr inbounds %struct.GPR, %struct.GPR* %74, i32 0, i32 33
  %76 = getelementptr inbounds %struct.Reg, %struct.Reg* %75, i32 0, i32 0
  %PC.i282 = bitcast %union.anon* %76 to i64*
  %77 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %78 = getelementptr inbounds %struct.GPR, %struct.GPR* %77, i32 0, i32 5
  %79 = getelementptr inbounds %struct.Reg, %struct.Reg* %78, i32 0, i32 0
  %RCX.i283 = bitcast %union.anon* %79 to i64*
  %80 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %81 = getelementptr inbounds %struct.GPR, %struct.GPR* %80, i32 0, i32 15
  %82 = getelementptr inbounds %struct.Reg, %struct.Reg* %81, i32 0, i32 0
  %RBP.i284 = bitcast %union.anon* %82 to i64*
  %83 = load i64, i64* %RBP.i284
  %84 = sub i64 %83, 32
  %85 = load i64, i64* %RCX.i283
  %86 = load i64, i64* %PC.i282
  %87 = add i64 %86, 4
  store i64 %87, i64* %PC.i282
  %88 = inttoptr i64 %84 to i64*
  store i64 %85, i64* %88
  store %struct.Memory* %loadMem_400b90, %struct.Memory** %MEMORY
  %loadMem_400b94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %89 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %90 = getelementptr inbounds %struct.GPR, %struct.GPR* %89, i32 0, i32 33
  %91 = getelementptr inbounds %struct.Reg, %struct.Reg* %90, i32 0, i32 0
  %PC.i330 = bitcast %union.anon* %91 to i64*
  %92 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %93 = getelementptr inbounds %struct.GPR, %struct.GPR* %92, i32 0, i32 15
  %94 = getelementptr inbounds %struct.Reg, %struct.Reg* %93, i32 0, i32 0
  %RBP.i331 = bitcast %union.anon* %94 to i64*
  %95 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %96 = getelementptr inbounds %struct.GPR, %struct.GPR* %95, i32 0, i32 17
  %97 = getelementptr inbounds %struct.Reg, %struct.Reg* %96, i32 0, i32 0
  %R8.i = bitcast %union.anon* %97 to i64*
  %98 = load i64, i64* %RBP.i331
  %99 = sub i64 %98, 40
  %100 = load i64, i64* %R8.i
  %101 = load i64, i64* %PC.i330
  %102 = add i64 %101, 4
  store i64 %102, i64* %PC.i330
  %103 = inttoptr i64 %99 to i64*
  store i64 %100, i64* %103
  store %struct.Memory* %loadMem_400b94, %struct.Memory** %MEMORY
  %loadMem_400b98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %105 = getelementptr inbounds %struct.GPR, %struct.GPR* %104, i32 0, i32 33
  %106 = getelementptr inbounds %struct.Reg, %struct.Reg* %105, i32 0, i32 0
  %PC.i372 = bitcast %union.anon* %106 to i64*
  %107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %108 = getelementptr inbounds %struct.GPR, %struct.GPR* %107, i32 0, i32 15
  %109 = getelementptr inbounds %struct.Reg, %struct.Reg* %108, i32 0, i32 0
  %RBP.i373 = bitcast %union.anon* %109 to i64*
  %110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %111 = getelementptr inbounds %struct.GPR, %struct.GPR* %110, i32 0, i32 19
  %112 = getelementptr inbounds %struct.Reg, %struct.Reg* %111, i32 0, i32 0
  %R9.i = bitcast %union.anon* %112 to i64*
  %113 = load i64, i64* %RBP.i373
  %114 = sub i64 %113, 48
  %115 = load i64, i64* %R9.i
  %116 = load i64, i64* %PC.i372
  %117 = add i64 %116, 4
  store i64 %117, i64* %PC.i372
  %118 = inttoptr i64 %114 to i64*
  store i64 %115, i64* %118
  store %struct.Memory* %loadMem_400b98, %struct.Memory** %MEMORY
  %loadMem_400b9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %120 = getelementptr inbounds %struct.GPR, %struct.GPR* %119, i32 0, i32 33
  %121 = getelementptr inbounds %struct.Reg, %struct.Reg* %120, i32 0, i32 0
  %PC.i498 = bitcast %union.anon* %121 to i64*
  %122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %123 = getelementptr inbounds %struct.GPR, %struct.GPR* %122, i32 0, i32 5
  %124 = getelementptr inbounds %struct.Reg, %struct.Reg* %123, i32 0, i32 0
  %RCX.i499 = bitcast %union.anon* %124 to i64*
  %125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %126 = getelementptr inbounds %struct.GPR, %struct.GPR* %125, i32 0, i32 15
  %127 = getelementptr inbounds %struct.Reg, %struct.Reg* %126, i32 0, i32 0
  %RBP.i500 = bitcast %union.anon* %127 to i64*
  %128 = load i64, i64* %RBP.i500
  %129 = sub i64 %128, 24
  %130 = load i64, i64* %PC.i498
  %131 = add i64 %130, 4
  store i64 %131, i64* %PC.i498
  %132 = inttoptr i64 %129 to i64*
  %133 = load i64, i64* %132
  store i64 %133, i64* %RCX.i499, align 8
  store %struct.Memory* %loadMem_400b9c, %struct.Memory** %MEMORY
  %loadMem_400ba0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %135 = getelementptr inbounds %struct.GPR, %struct.GPR* %134, i32 0, i32 33
  %136 = getelementptr inbounds %struct.Reg, %struct.Reg* %135, i32 0, i32 0
  %PC.i495 = bitcast %union.anon* %136 to i64*
  %137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %138 = getelementptr inbounds %struct.GPR, %struct.GPR* %137, i32 0, i32 7
  %139 = getelementptr inbounds %struct.Reg, %struct.Reg* %138, i32 0, i32 0
  %RDX.i496 = bitcast %union.anon* %139 to i64*
  %140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %141 = getelementptr inbounds %struct.GPR, %struct.GPR* %140, i32 0, i32 15
  %142 = getelementptr inbounds %struct.Reg, %struct.Reg* %141, i32 0, i32 0
  %RBP.i497 = bitcast %union.anon* %142 to i64*
  %143 = load i64, i64* %RBP.i497
  %144 = sub i64 %143, 8
  %145 = load i64, i64* %PC.i495
  %146 = add i64 %145, 4
  store i64 %146, i64* %PC.i495
  %147 = inttoptr i64 %144 to i64*
  %148 = load i64, i64* %147
  store i64 %148, i64* %RDX.i496, align 8
  store %struct.Memory* %loadMem_400ba0, %struct.Memory** %MEMORY
  %loadMem_400ba4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %150 = getelementptr inbounds %struct.GPR, %struct.GPR* %149, i32 0, i32 33
  %151 = getelementptr inbounds %struct.Reg, %struct.Reg* %150, i32 0, i32 0
  %PC.i492 = bitcast %union.anon* %151 to i64*
  %152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %153 = getelementptr inbounds %struct.GPR, %struct.GPR* %152, i32 0, i32 9
  %154 = getelementptr inbounds %struct.Reg, %struct.Reg* %153, i32 0, i32 0
  %RSI.i493 = bitcast %union.anon* %154 to i64*
  %155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %156 = getelementptr inbounds %struct.GPR, %struct.GPR* %155, i32 0, i32 15
  %157 = getelementptr inbounds %struct.Reg, %struct.Reg* %156, i32 0, i32 0
  %RBP.i494 = bitcast %union.anon* %157 to i64*
  %158 = load i64, i64* %RBP.i494
  %159 = sub i64 %158, 16
  %160 = load i64, i64* %PC.i492
  %161 = add i64 %160, 4
  store i64 %161, i64* %PC.i492
  %162 = inttoptr i64 %159 to i64*
  %163 = load i64, i64* %162
  store i64 %163, i64* %RSI.i493, align 8
  store %struct.Memory* %loadMem_400ba4, %struct.Memory** %MEMORY
  %loadMem_400ba8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %165 = getelementptr inbounds %struct.GPR, %struct.GPR* %164, i32 0, i32 33
  %166 = getelementptr inbounds %struct.Reg, %struct.Reg* %165, i32 0, i32 0
  %PC.i490 = bitcast %union.anon* %166 to i64*
  %167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %168 = getelementptr inbounds %struct.GPR, %struct.GPR* %167, i32 0, i32 9
  %169 = getelementptr inbounds %struct.Reg, %struct.Reg* %168, i32 0, i32 0
  %RSI.i491 = bitcast %union.anon* %169 to i64*
  %170 = load i64, i64* %RSI.i491
  %171 = load i64, i64* %PC.i490
  %172 = add i64 %171, 4
  store i64 %172, i64* %PC.i490
  %173 = shl i64 %170, 5
  %174 = icmp slt i64 %173, 0
  %175 = shl i64 %173, 1
  store i64 %175, i64* %RSI.i491, align 8
  %176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %177 = zext i1 %174 to i8
  store i8 %177, i8* %176, align 1
  %178 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %179 = trunc i64 %175 to i32
  %180 = and i32 %179, 254
  %181 = call i32 @llvm.ctpop.i32(i32 %180)
  %182 = trunc i32 %181 to i8
  %183 = and i8 %182, 1
  %184 = xor i8 %183, 1
  store i8 %184, i8* %178, align 1
  %185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %185, align 1
  %186 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %187 = icmp eq i64 %175, 0
  %188 = zext i1 %187 to i8
  store i8 %188, i8* %186, align 1
  %189 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %190 = lshr i64 %175, 63
  %191 = trunc i64 %190 to i8
  store i8 %191, i8* %189, align 1
  %192 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %192, align 1
  store %struct.Memory* %loadMem_400ba8, %struct.Memory** %MEMORY
  %loadMem_400bac = load %struct.Memory*, %struct.Memory** %MEMORY
  %193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %194 = getelementptr inbounds %struct.GPR, %struct.GPR* %193, i32 0, i32 33
  %195 = getelementptr inbounds %struct.Reg, %struct.Reg* %194, i32 0, i32 0
  %PC.i487 = bitcast %union.anon* %195 to i64*
  %196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %197 = getelementptr inbounds %struct.GPR, %struct.GPR* %196, i32 0, i32 7
  %198 = getelementptr inbounds %struct.Reg, %struct.Reg* %197, i32 0, i32 0
  %RDX.i488 = bitcast %union.anon* %198 to i64*
  %199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %200 = getelementptr inbounds %struct.GPR, %struct.GPR* %199, i32 0, i32 9
  %201 = getelementptr inbounds %struct.Reg, %struct.Reg* %200, i32 0, i32 0
  %RSI.i489 = bitcast %union.anon* %201 to i64*
  %202 = load i64, i64* %RDX.i488
  %203 = load i64, i64* %RSI.i489
  %204 = load i64, i64* %PC.i487
  %205 = add i64 %204, 3
  store i64 %205, i64* %PC.i487
  %206 = add i64 %203, %202
  store i64 %206, i64* %RDX.i488, align 8
  %207 = icmp ult i64 %206, %202
  %208 = icmp ult i64 %206, %203
  %209 = or i1 %207, %208
  %210 = zext i1 %209 to i8
  %211 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %210, i8* %211, align 1
  %212 = trunc i64 %206 to i32
  %213 = and i32 %212, 255
  %214 = call i32 @llvm.ctpop.i32(i32 %213)
  %215 = trunc i32 %214 to i8
  %216 = and i8 %215, 1
  %217 = xor i8 %216, 1
  %218 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %217, i8* %218, align 1
  %219 = xor i64 %203, %202
  %220 = xor i64 %219, %206
  %221 = lshr i64 %220, 4
  %222 = trunc i64 %221 to i8
  %223 = and i8 %222, 1
  %224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %223, i8* %224, align 1
  %225 = icmp eq i64 %206, 0
  %226 = zext i1 %225 to i8
  %227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %226, i8* %227, align 1
  %228 = lshr i64 %206, 63
  %229 = trunc i64 %228 to i8
  %230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %229, i8* %230, align 1
  %231 = lshr i64 %202, 63
  %232 = lshr i64 %203, 63
  %233 = xor i64 %228, %231
  %234 = xor i64 %228, %232
  %235 = add i64 %233, %234
  %236 = icmp eq i64 %235, 2
  %237 = zext i1 %236 to i8
  %238 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %237, i8* %238, align 1
  store %struct.Memory* %loadMem_400bac, %struct.Memory** %MEMORY
  %loadMem_400baf = load %struct.Memory*, %struct.Memory** %MEMORY
  %239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %240 = getelementptr inbounds %struct.GPR, %struct.GPR* %239, i32 0, i32 33
  %241 = getelementptr inbounds %struct.Reg, %struct.Reg* %240, i32 0, i32 0
  %PC.i484 = bitcast %union.anon* %241 to i64*
  %242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %243 = getelementptr inbounds %struct.GPR, %struct.GPR* %242, i32 0, i32 5
  %244 = getelementptr inbounds %struct.Reg, %struct.Reg* %243, i32 0, i32 0
  %RCX.i485 = bitcast %union.anon* %244 to i64*
  %245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %246 = getelementptr inbounds %struct.GPR, %struct.GPR* %245, i32 0, i32 7
  %247 = getelementptr inbounds %struct.Reg, %struct.Reg* %246, i32 0, i32 0
  %RDX.i486 = bitcast %union.anon* %247 to i64*
  %248 = load i64, i64* %RDX.i486
  %249 = add i64 %248, 8
  %250 = load i64, i64* %RCX.i485
  %251 = load i64, i64* %PC.i484
  %252 = add i64 %251, 4
  store i64 %252, i64* %PC.i484
  %253 = inttoptr i64 %249 to i64*
  store i64 %250, i64* %253
  store %struct.Memory* %loadMem_400baf, %struct.Memory** %MEMORY
  %loadMem_400bb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %255 = getelementptr inbounds %struct.GPR, %struct.GPR* %254, i32 0, i32 33
  %256 = getelementptr inbounds %struct.Reg, %struct.Reg* %255, i32 0, i32 0
  %PC.i481 = bitcast %union.anon* %256 to i64*
  %257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %258 = getelementptr inbounds %struct.GPR, %struct.GPR* %257, i32 0, i32 5
  %259 = getelementptr inbounds %struct.Reg, %struct.Reg* %258, i32 0, i32 0
  %RCX.i482 = bitcast %union.anon* %259 to i64*
  %260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %261 = getelementptr inbounds %struct.GPR, %struct.GPR* %260, i32 0, i32 15
  %262 = getelementptr inbounds %struct.Reg, %struct.Reg* %261, i32 0, i32 0
  %RBP.i483 = bitcast %union.anon* %262 to i64*
  %263 = load i64, i64* %RBP.i483
  %264 = sub i64 %263, 32
  %265 = load i64, i64* %PC.i481
  %266 = add i64 %265, 4
  store i64 %266, i64* %PC.i481
  %267 = inttoptr i64 %264 to i64*
  %268 = load i64, i64* %267
  store i64 %268, i64* %RCX.i482, align 8
  store %struct.Memory* %loadMem_400bb3, %struct.Memory** %MEMORY
  %loadMem_400bb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %270 = getelementptr inbounds %struct.GPR, %struct.GPR* %269, i32 0, i32 33
  %271 = getelementptr inbounds %struct.Reg, %struct.Reg* %270, i32 0, i32 0
  %PC.i478 = bitcast %union.anon* %271 to i64*
  %272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %273 = getelementptr inbounds %struct.GPR, %struct.GPR* %272, i32 0, i32 7
  %274 = getelementptr inbounds %struct.Reg, %struct.Reg* %273, i32 0, i32 0
  %RDX.i479 = bitcast %union.anon* %274 to i64*
  %275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %276 = getelementptr inbounds %struct.GPR, %struct.GPR* %275, i32 0, i32 15
  %277 = getelementptr inbounds %struct.Reg, %struct.Reg* %276, i32 0, i32 0
  %RBP.i480 = bitcast %union.anon* %277 to i64*
  %278 = load i64, i64* %RBP.i480
  %279 = sub i64 %278, 8
  %280 = load i64, i64* %PC.i478
  %281 = add i64 %280, 4
  store i64 %281, i64* %PC.i478
  %282 = inttoptr i64 %279 to i64*
  %283 = load i64, i64* %282
  store i64 %283, i64* %RDX.i479, align 8
  store %struct.Memory* %loadMem_400bb7, %struct.Memory** %MEMORY
  %loadMem_400bbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %285 = getelementptr inbounds %struct.GPR, %struct.GPR* %284, i32 0, i32 33
  %286 = getelementptr inbounds %struct.Reg, %struct.Reg* %285, i32 0, i32 0
  %PC.i475 = bitcast %union.anon* %286 to i64*
  %287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %288 = getelementptr inbounds %struct.GPR, %struct.GPR* %287, i32 0, i32 9
  %289 = getelementptr inbounds %struct.Reg, %struct.Reg* %288, i32 0, i32 0
  %RSI.i476 = bitcast %union.anon* %289 to i64*
  %290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %291 = getelementptr inbounds %struct.GPR, %struct.GPR* %290, i32 0, i32 15
  %292 = getelementptr inbounds %struct.Reg, %struct.Reg* %291, i32 0, i32 0
  %RBP.i477 = bitcast %union.anon* %292 to i64*
  %293 = load i64, i64* %RBP.i477
  %294 = sub i64 %293, 16
  %295 = load i64, i64* %PC.i475
  %296 = add i64 %295, 4
  store i64 %296, i64* %PC.i475
  %297 = inttoptr i64 %294 to i64*
  %298 = load i64, i64* %297
  store i64 %298, i64* %RSI.i476, align 8
  store %struct.Memory* %loadMem_400bbb, %struct.Memory** %MEMORY
  %loadMem_400bbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %300 = getelementptr inbounds %struct.GPR, %struct.GPR* %299, i32 0, i32 33
  %301 = getelementptr inbounds %struct.Reg, %struct.Reg* %300, i32 0, i32 0
  %PC.i473 = bitcast %union.anon* %301 to i64*
  %302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %303 = getelementptr inbounds %struct.GPR, %struct.GPR* %302, i32 0, i32 9
  %304 = getelementptr inbounds %struct.Reg, %struct.Reg* %303, i32 0, i32 0
  %RSI.i474 = bitcast %union.anon* %304 to i64*
  %305 = load i64, i64* %RSI.i474
  %306 = load i64, i64* %PC.i473
  %307 = add i64 %306, 4
  store i64 %307, i64* %PC.i473
  %308 = shl i64 %305, 5
  %309 = icmp slt i64 %308, 0
  %310 = shl i64 %308, 1
  store i64 %310, i64* %RSI.i474, align 8
  %311 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %312 = zext i1 %309 to i8
  store i8 %312, i8* %311, align 1
  %313 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %314 = trunc i64 %310 to i32
  %315 = and i32 %314, 254
  %316 = call i32 @llvm.ctpop.i32(i32 %315)
  %317 = trunc i32 %316 to i8
  %318 = and i8 %317, 1
  %319 = xor i8 %318, 1
  store i8 %319, i8* %313, align 1
  %320 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %320, align 1
  %321 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %322 = icmp eq i64 %310, 0
  %323 = zext i1 %322 to i8
  store i8 %323, i8* %321, align 1
  %324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %325 = lshr i64 %310, 63
  %326 = trunc i64 %325 to i8
  store i8 %326, i8* %324, align 1
  %327 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %327, align 1
  store %struct.Memory* %loadMem_400bbf, %struct.Memory** %MEMORY
  %loadMem_400bc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %329 = getelementptr inbounds %struct.GPR, %struct.GPR* %328, i32 0, i32 33
  %330 = getelementptr inbounds %struct.Reg, %struct.Reg* %329, i32 0, i32 0
  %PC.i470 = bitcast %union.anon* %330 to i64*
  %331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %332 = getelementptr inbounds %struct.GPR, %struct.GPR* %331, i32 0, i32 7
  %333 = getelementptr inbounds %struct.Reg, %struct.Reg* %332, i32 0, i32 0
  %RDX.i471 = bitcast %union.anon* %333 to i64*
  %334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %335 = getelementptr inbounds %struct.GPR, %struct.GPR* %334, i32 0, i32 9
  %336 = getelementptr inbounds %struct.Reg, %struct.Reg* %335, i32 0, i32 0
  %RSI.i472 = bitcast %union.anon* %336 to i64*
  %337 = load i64, i64* %RDX.i471
  %338 = load i64, i64* %RSI.i472
  %339 = load i64, i64* %PC.i470
  %340 = add i64 %339, 3
  store i64 %340, i64* %PC.i470
  %341 = add i64 %338, %337
  store i64 %341, i64* %RDX.i471, align 8
  %342 = icmp ult i64 %341, %337
  %343 = icmp ult i64 %341, %338
  %344 = or i1 %342, %343
  %345 = zext i1 %344 to i8
  %346 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %345, i8* %346, align 1
  %347 = trunc i64 %341 to i32
  %348 = and i32 %347, 255
  %349 = call i32 @llvm.ctpop.i32(i32 %348)
  %350 = trunc i32 %349 to i8
  %351 = and i8 %350, 1
  %352 = xor i8 %351, 1
  %353 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %352, i8* %353, align 1
  %354 = xor i64 %338, %337
  %355 = xor i64 %354, %341
  %356 = lshr i64 %355, 4
  %357 = trunc i64 %356 to i8
  %358 = and i8 %357, 1
  %359 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %358, i8* %359, align 1
  %360 = icmp eq i64 %341, 0
  %361 = zext i1 %360 to i8
  %362 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %361, i8* %362, align 1
  %363 = lshr i64 %341, 63
  %364 = trunc i64 %363 to i8
  %365 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %364, i8* %365, align 1
  %366 = lshr i64 %337, 63
  %367 = lshr i64 %338, 63
  %368 = xor i64 %363, %366
  %369 = xor i64 %363, %367
  %370 = add i64 %368, %369
  %371 = icmp eq i64 %370, 2
  %372 = zext i1 %371 to i8
  %373 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %372, i8* %373, align 1
  store %struct.Memory* %loadMem_400bc3, %struct.Memory** %MEMORY
  %loadMem_400bc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %375 = getelementptr inbounds %struct.GPR, %struct.GPR* %374, i32 0, i32 33
  %376 = getelementptr inbounds %struct.Reg, %struct.Reg* %375, i32 0, i32 0
  %PC.i467 = bitcast %union.anon* %376 to i64*
  %377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %378 = getelementptr inbounds %struct.GPR, %struct.GPR* %377, i32 0, i32 5
  %379 = getelementptr inbounds %struct.Reg, %struct.Reg* %378, i32 0, i32 0
  %RCX.i468 = bitcast %union.anon* %379 to i64*
  %380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %381 = getelementptr inbounds %struct.GPR, %struct.GPR* %380, i32 0, i32 7
  %382 = getelementptr inbounds %struct.Reg, %struct.Reg* %381, i32 0, i32 0
  %RDX.i469 = bitcast %union.anon* %382 to i64*
  %383 = load i64, i64* %RDX.i469
  %384 = add i64 %383, 16
  %385 = load i64, i64* %RCX.i468
  %386 = load i64, i64* %PC.i467
  %387 = add i64 %386, 4
  store i64 %387, i64* %PC.i467
  %388 = inttoptr i64 %384 to i64*
  store i64 %385, i64* %388
  store %struct.Memory* %loadMem_400bc6, %struct.Memory** %MEMORY
  %loadMem_400bca = load %struct.Memory*, %struct.Memory** %MEMORY
  %389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %390 = getelementptr inbounds %struct.GPR, %struct.GPR* %389, i32 0, i32 33
  %391 = getelementptr inbounds %struct.Reg, %struct.Reg* %390, i32 0, i32 0
  %PC.i464 = bitcast %union.anon* %391 to i64*
  %392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %393 = getelementptr inbounds %struct.GPR, %struct.GPR* %392, i32 0, i32 5
  %394 = getelementptr inbounds %struct.Reg, %struct.Reg* %393, i32 0, i32 0
  %RCX.i465 = bitcast %union.anon* %394 to i64*
  %395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %396 = getelementptr inbounds %struct.GPR, %struct.GPR* %395, i32 0, i32 15
  %397 = getelementptr inbounds %struct.Reg, %struct.Reg* %396, i32 0, i32 0
  %RBP.i466 = bitcast %union.anon* %397 to i64*
  %398 = load i64, i64* %RBP.i466
  %399 = sub i64 %398, 40
  %400 = load i64, i64* %PC.i464
  %401 = add i64 %400, 4
  store i64 %401, i64* %PC.i464
  %402 = inttoptr i64 %399 to i64*
  %403 = load i64, i64* %402
  store i64 %403, i64* %RCX.i465, align 8
  store %struct.Memory* %loadMem_400bca, %struct.Memory** %MEMORY
  %loadMem_400bce = load %struct.Memory*, %struct.Memory** %MEMORY
  %404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %405 = getelementptr inbounds %struct.GPR, %struct.GPR* %404, i32 0, i32 33
  %406 = getelementptr inbounds %struct.Reg, %struct.Reg* %405, i32 0, i32 0
  %PC.i461 = bitcast %union.anon* %406 to i64*
  %407 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %408 = getelementptr inbounds %struct.GPR, %struct.GPR* %407, i32 0, i32 7
  %409 = getelementptr inbounds %struct.Reg, %struct.Reg* %408, i32 0, i32 0
  %RDX.i462 = bitcast %union.anon* %409 to i64*
  %410 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %411 = getelementptr inbounds %struct.GPR, %struct.GPR* %410, i32 0, i32 15
  %412 = getelementptr inbounds %struct.Reg, %struct.Reg* %411, i32 0, i32 0
  %RBP.i463 = bitcast %union.anon* %412 to i64*
  %413 = load i64, i64* %RBP.i463
  %414 = sub i64 %413, 8
  %415 = load i64, i64* %PC.i461
  %416 = add i64 %415, 4
  store i64 %416, i64* %PC.i461
  %417 = inttoptr i64 %414 to i64*
  %418 = load i64, i64* %417
  store i64 %418, i64* %RDX.i462, align 8
  store %struct.Memory* %loadMem_400bce, %struct.Memory** %MEMORY
  %loadMem_400bd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %420 = getelementptr inbounds %struct.GPR, %struct.GPR* %419, i32 0, i32 33
  %421 = getelementptr inbounds %struct.Reg, %struct.Reg* %420, i32 0, i32 0
  %PC.i458 = bitcast %union.anon* %421 to i64*
  %422 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %423 = getelementptr inbounds %struct.GPR, %struct.GPR* %422, i32 0, i32 9
  %424 = getelementptr inbounds %struct.Reg, %struct.Reg* %423, i32 0, i32 0
  %RSI.i459 = bitcast %union.anon* %424 to i64*
  %425 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %426 = getelementptr inbounds %struct.GPR, %struct.GPR* %425, i32 0, i32 15
  %427 = getelementptr inbounds %struct.Reg, %struct.Reg* %426, i32 0, i32 0
  %RBP.i460 = bitcast %union.anon* %427 to i64*
  %428 = load i64, i64* %RBP.i460
  %429 = sub i64 %428, 16
  %430 = load i64, i64* %PC.i458
  %431 = add i64 %430, 4
  store i64 %431, i64* %PC.i458
  %432 = inttoptr i64 %429 to i64*
  %433 = load i64, i64* %432
  store i64 %433, i64* %RSI.i459, align 8
  store %struct.Memory* %loadMem_400bd2, %struct.Memory** %MEMORY
  %loadMem_400bd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %435 = getelementptr inbounds %struct.GPR, %struct.GPR* %434, i32 0, i32 33
  %436 = getelementptr inbounds %struct.Reg, %struct.Reg* %435, i32 0, i32 0
  %PC.i456 = bitcast %union.anon* %436 to i64*
  %437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %438 = getelementptr inbounds %struct.GPR, %struct.GPR* %437, i32 0, i32 9
  %439 = getelementptr inbounds %struct.Reg, %struct.Reg* %438, i32 0, i32 0
  %RSI.i457 = bitcast %union.anon* %439 to i64*
  %440 = load i64, i64* %RSI.i457
  %441 = load i64, i64* %PC.i456
  %442 = add i64 %441, 4
  store i64 %442, i64* %PC.i456
  %443 = shl i64 %440, 5
  %444 = icmp slt i64 %443, 0
  %445 = shl i64 %443, 1
  store i64 %445, i64* %RSI.i457, align 8
  %446 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %447 = zext i1 %444 to i8
  store i8 %447, i8* %446, align 1
  %448 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %449 = trunc i64 %445 to i32
  %450 = and i32 %449, 254
  %451 = call i32 @llvm.ctpop.i32(i32 %450)
  %452 = trunc i32 %451 to i8
  %453 = and i8 %452, 1
  %454 = xor i8 %453, 1
  store i8 %454, i8* %448, align 1
  %455 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %455, align 1
  %456 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %457 = icmp eq i64 %445, 0
  %458 = zext i1 %457 to i8
  store i8 %458, i8* %456, align 1
  %459 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %460 = lshr i64 %445, 63
  %461 = trunc i64 %460 to i8
  store i8 %461, i8* %459, align 1
  %462 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %462, align 1
  store %struct.Memory* %loadMem_400bd6, %struct.Memory** %MEMORY
  %loadMem_400bda = load %struct.Memory*, %struct.Memory** %MEMORY
  %463 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %464 = getelementptr inbounds %struct.GPR, %struct.GPR* %463, i32 0, i32 33
  %465 = getelementptr inbounds %struct.Reg, %struct.Reg* %464, i32 0, i32 0
  %PC.i453 = bitcast %union.anon* %465 to i64*
  %466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %467 = getelementptr inbounds %struct.GPR, %struct.GPR* %466, i32 0, i32 7
  %468 = getelementptr inbounds %struct.Reg, %struct.Reg* %467, i32 0, i32 0
  %RDX.i454 = bitcast %union.anon* %468 to i64*
  %469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %470 = getelementptr inbounds %struct.GPR, %struct.GPR* %469, i32 0, i32 9
  %471 = getelementptr inbounds %struct.Reg, %struct.Reg* %470, i32 0, i32 0
  %RSI.i455 = bitcast %union.anon* %471 to i64*
  %472 = load i64, i64* %RDX.i454
  %473 = load i64, i64* %RSI.i455
  %474 = load i64, i64* %PC.i453
  %475 = add i64 %474, 3
  store i64 %475, i64* %PC.i453
  %476 = add i64 %473, %472
  store i64 %476, i64* %RDX.i454, align 8
  %477 = icmp ult i64 %476, %472
  %478 = icmp ult i64 %476, %473
  %479 = or i1 %477, %478
  %480 = zext i1 %479 to i8
  %481 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %480, i8* %481, align 1
  %482 = trunc i64 %476 to i32
  %483 = and i32 %482, 255
  %484 = call i32 @llvm.ctpop.i32(i32 %483)
  %485 = trunc i32 %484 to i8
  %486 = and i8 %485, 1
  %487 = xor i8 %486, 1
  %488 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %487, i8* %488, align 1
  %489 = xor i64 %473, %472
  %490 = xor i64 %489, %476
  %491 = lshr i64 %490, 4
  %492 = trunc i64 %491 to i8
  %493 = and i8 %492, 1
  %494 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %493, i8* %494, align 1
  %495 = icmp eq i64 %476, 0
  %496 = zext i1 %495 to i8
  %497 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %496, i8* %497, align 1
  %498 = lshr i64 %476, 63
  %499 = trunc i64 %498 to i8
  %500 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %499, i8* %500, align 1
  %501 = lshr i64 %472, 63
  %502 = lshr i64 %473, 63
  %503 = xor i64 %498, %501
  %504 = xor i64 %498, %502
  %505 = add i64 %503, %504
  %506 = icmp eq i64 %505, 2
  %507 = zext i1 %506 to i8
  %508 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %507, i8* %508, align 1
  store %struct.Memory* %loadMem_400bda, %struct.Memory** %MEMORY
  %loadMem_400bdd = load %struct.Memory*, %struct.Memory** %MEMORY
  %509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %510 = getelementptr inbounds %struct.GPR, %struct.GPR* %509, i32 0, i32 33
  %511 = getelementptr inbounds %struct.Reg, %struct.Reg* %510, i32 0, i32 0
  %PC.i450 = bitcast %union.anon* %511 to i64*
  %512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %513 = getelementptr inbounds %struct.GPR, %struct.GPR* %512, i32 0, i32 5
  %514 = getelementptr inbounds %struct.Reg, %struct.Reg* %513, i32 0, i32 0
  %RCX.i451 = bitcast %union.anon* %514 to i64*
  %515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %516 = getelementptr inbounds %struct.GPR, %struct.GPR* %515, i32 0, i32 7
  %517 = getelementptr inbounds %struct.Reg, %struct.Reg* %516, i32 0, i32 0
  %RDX.i452 = bitcast %union.anon* %517 to i64*
  %518 = load i64, i64* %RDX.i452
  %519 = add i64 %518, 56
  %520 = load i64, i64* %RCX.i451
  %521 = load i64, i64* %PC.i450
  %522 = add i64 %521, 4
  store i64 %522, i64* %PC.i450
  %523 = inttoptr i64 %519 to i64*
  store i64 %520, i64* %523
  store %struct.Memory* %loadMem_400bdd, %struct.Memory** %MEMORY
  %loadMem_400be1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %525 = getelementptr inbounds %struct.GPR, %struct.GPR* %524, i32 0, i32 33
  %526 = getelementptr inbounds %struct.Reg, %struct.Reg* %525, i32 0, i32 0
  %PC.i447 = bitcast %union.anon* %526 to i64*
  %527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %528 = getelementptr inbounds %struct.GPR, %struct.GPR* %527, i32 0, i32 5
  %529 = getelementptr inbounds %struct.Reg, %struct.Reg* %528, i32 0, i32 0
  %RCX.i448 = bitcast %union.anon* %529 to i64*
  %530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %531 = getelementptr inbounds %struct.GPR, %struct.GPR* %530, i32 0, i32 15
  %532 = getelementptr inbounds %struct.Reg, %struct.Reg* %531, i32 0, i32 0
  %RBP.i449 = bitcast %union.anon* %532 to i64*
  %533 = load i64, i64* %RBP.i449
  %534 = sub i64 %533, 40
  %535 = load i64, i64* %PC.i447
  %536 = add i64 %535, 4
  store i64 %536, i64* %PC.i447
  %537 = inttoptr i64 %534 to i64*
  %538 = load i64, i64* %537
  store i64 %538, i64* %RCX.i448, align 8
  store %struct.Memory* %loadMem_400be1, %struct.Memory** %MEMORY
  %loadMem_400be5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %539 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %540 = getelementptr inbounds %struct.GPR, %struct.GPR* %539, i32 0, i32 33
  %541 = getelementptr inbounds %struct.Reg, %struct.Reg* %540, i32 0, i32 0
  %PC.i444 = bitcast %union.anon* %541 to i64*
  %542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %543 = getelementptr inbounds %struct.GPR, %struct.GPR* %542, i32 0, i32 7
  %544 = getelementptr inbounds %struct.Reg, %struct.Reg* %543, i32 0, i32 0
  %RDX.i445 = bitcast %union.anon* %544 to i64*
  %545 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %546 = getelementptr inbounds %struct.GPR, %struct.GPR* %545, i32 0, i32 15
  %547 = getelementptr inbounds %struct.Reg, %struct.Reg* %546, i32 0, i32 0
  %RBP.i446 = bitcast %union.anon* %547 to i64*
  %548 = load i64, i64* %RBP.i446
  %549 = sub i64 %548, 8
  %550 = load i64, i64* %PC.i444
  %551 = add i64 %550, 4
  store i64 %551, i64* %PC.i444
  %552 = inttoptr i64 %549 to i64*
  %553 = load i64, i64* %552
  store i64 %553, i64* %RDX.i445, align 8
  store %struct.Memory* %loadMem_400be5, %struct.Memory** %MEMORY
  %loadMem_400be9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %555 = getelementptr inbounds %struct.GPR, %struct.GPR* %554, i32 0, i32 33
  %556 = getelementptr inbounds %struct.Reg, %struct.Reg* %555, i32 0, i32 0
  %PC.i441 = bitcast %union.anon* %556 to i64*
  %557 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %558 = getelementptr inbounds %struct.GPR, %struct.GPR* %557, i32 0, i32 9
  %559 = getelementptr inbounds %struct.Reg, %struct.Reg* %558, i32 0, i32 0
  %RSI.i442 = bitcast %union.anon* %559 to i64*
  %560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %561 = getelementptr inbounds %struct.GPR, %struct.GPR* %560, i32 0, i32 15
  %562 = getelementptr inbounds %struct.Reg, %struct.Reg* %561, i32 0, i32 0
  %RBP.i443 = bitcast %union.anon* %562 to i64*
  %563 = load i64, i64* %RBP.i443
  %564 = sub i64 %563, 16
  %565 = load i64, i64* %PC.i441
  %566 = add i64 %565, 4
  store i64 %566, i64* %PC.i441
  %567 = inttoptr i64 %564 to i64*
  %568 = load i64, i64* %567
  store i64 %568, i64* %RSI.i442, align 8
  store %struct.Memory* %loadMem_400be9, %struct.Memory** %MEMORY
  %loadMem_400bed = load %struct.Memory*, %struct.Memory** %MEMORY
  %569 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %570 = getelementptr inbounds %struct.GPR, %struct.GPR* %569, i32 0, i32 33
  %571 = getelementptr inbounds %struct.Reg, %struct.Reg* %570, i32 0, i32 0
  %PC.i439 = bitcast %union.anon* %571 to i64*
  %572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %573 = getelementptr inbounds %struct.GPR, %struct.GPR* %572, i32 0, i32 9
  %574 = getelementptr inbounds %struct.Reg, %struct.Reg* %573, i32 0, i32 0
  %RSI.i440 = bitcast %union.anon* %574 to i64*
  %575 = load i64, i64* %RSI.i440
  %576 = load i64, i64* %PC.i439
  %577 = add i64 %576, 4
  store i64 %577, i64* %PC.i439
  %578 = shl i64 %575, 5
  %579 = icmp slt i64 %578, 0
  %580 = shl i64 %578, 1
  store i64 %580, i64* %RSI.i440, align 8
  %581 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %582 = zext i1 %579 to i8
  store i8 %582, i8* %581, align 1
  %583 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %584 = trunc i64 %580 to i32
  %585 = and i32 %584, 254
  %586 = call i32 @llvm.ctpop.i32(i32 %585)
  %587 = trunc i32 %586 to i8
  %588 = and i8 %587, 1
  %589 = xor i8 %588, 1
  store i8 %589, i8* %583, align 1
  %590 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %590, align 1
  %591 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %592 = icmp eq i64 %580, 0
  %593 = zext i1 %592 to i8
  store i8 %593, i8* %591, align 1
  %594 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %595 = lshr i64 %580, 63
  %596 = trunc i64 %595 to i8
  store i8 %596, i8* %594, align 1
  %597 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %597, align 1
  store %struct.Memory* %loadMem_400bed, %struct.Memory** %MEMORY
  %loadMem_400bf1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %599 = getelementptr inbounds %struct.GPR, %struct.GPR* %598, i32 0, i32 33
  %600 = getelementptr inbounds %struct.Reg, %struct.Reg* %599, i32 0, i32 0
  %PC.i436 = bitcast %union.anon* %600 to i64*
  %601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %602 = getelementptr inbounds %struct.GPR, %struct.GPR* %601, i32 0, i32 7
  %603 = getelementptr inbounds %struct.Reg, %struct.Reg* %602, i32 0, i32 0
  %RDX.i437 = bitcast %union.anon* %603 to i64*
  %604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %605 = getelementptr inbounds %struct.GPR, %struct.GPR* %604, i32 0, i32 9
  %606 = getelementptr inbounds %struct.Reg, %struct.Reg* %605, i32 0, i32 0
  %RSI.i438 = bitcast %union.anon* %606 to i64*
  %607 = load i64, i64* %RDX.i437
  %608 = load i64, i64* %RSI.i438
  %609 = load i64, i64* %PC.i436
  %610 = add i64 %609, 3
  store i64 %610, i64* %PC.i436
  %611 = add i64 %608, %607
  store i64 %611, i64* %RDX.i437, align 8
  %612 = icmp ult i64 %611, %607
  %613 = icmp ult i64 %611, %608
  %614 = or i1 %612, %613
  %615 = zext i1 %614 to i8
  %616 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %615, i8* %616, align 1
  %617 = trunc i64 %611 to i32
  %618 = and i32 %617, 255
  %619 = call i32 @llvm.ctpop.i32(i32 %618)
  %620 = trunc i32 %619 to i8
  %621 = and i8 %620, 1
  %622 = xor i8 %621, 1
  %623 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %622, i8* %623, align 1
  %624 = xor i64 %608, %607
  %625 = xor i64 %624, %611
  %626 = lshr i64 %625, 4
  %627 = trunc i64 %626 to i8
  %628 = and i8 %627, 1
  %629 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %628, i8* %629, align 1
  %630 = icmp eq i64 %611, 0
  %631 = zext i1 %630 to i8
  %632 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %631, i8* %632, align 1
  %633 = lshr i64 %611, 63
  %634 = trunc i64 %633 to i8
  %635 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %634, i8* %635, align 1
  %636 = lshr i64 %607, 63
  %637 = lshr i64 %608, 63
  %638 = xor i64 %633, %636
  %639 = xor i64 %633, %637
  %640 = add i64 %638, %639
  %641 = icmp eq i64 %640, 2
  %642 = zext i1 %641 to i8
  %643 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %642, i8* %643, align 1
  store %struct.Memory* %loadMem_400bf1, %struct.Memory** %MEMORY
  %loadMem_400bf4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %644 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %645 = getelementptr inbounds %struct.GPR, %struct.GPR* %644, i32 0, i32 33
  %646 = getelementptr inbounds %struct.Reg, %struct.Reg* %645, i32 0, i32 0
  %PC.i433 = bitcast %union.anon* %646 to i64*
  %647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %648 = getelementptr inbounds %struct.GPR, %struct.GPR* %647, i32 0, i32 5
  %649 = getelementptr inbounds %struct.Reg, %struct.Reg* %648, i32 0, i32 0
  %RCX.i434 = bitcast %union.anon* %649 to i64*
  %650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %651 = getelementptr inbounds %struct.GPR, %struct.GPR* %650, i32 0, i32 7
  %652 = getelementptr inbounds %struct.Reg, %struct.Reg* %651, i32 0, i32 0
  %RDX.i435 = bitcast %union.anon* %652 to i64*
  %653 = load i64, i64* %RDX.i435
  %654 = load i64, i64* %RCX.i434
  %655 = load i64, i64* %PC.i433
  %656 = add i64 %655, 3
  store i64 %656, i64* %PC.i433
  %657 = inttoptr i64 %653 to i64*
  store i64 %654, i64* %657
  store %struct.Memory* %loadMem_400bf4, %struct.Memory** %MEMORY
  %loadMem_400bf7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %659 = getelementptr inbounds %struct.GPR, %struct.GPR* %658, i32 0, i32 33
  %660 = getelementptr inbounds %struct.Reg, %struct.Reg* %659, i32 0, i32 0
  %PC.i430 = bitcast %union.anon* %660 to i64*
  %661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %662 = getelementptr inbounds %struct.GPR, %struct.GPR* %661, i32 0, i32 5
  %663 = getelementptr inbounds %struct.Reg, %struct.Reg* %662, i32 0, i32 0
  %RCX.i431 = bitcast %union.anon* %663 to i64*
  %664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %665 = getelementptr inbounds %struct.GPR, %struct.GPR* %664, i32 0, i32 15
  %666 = getelementptr inbounds %struct.Reg, %struct.Reg* %665, i32 0, i32 0
  %RBP.i432 = bitcast %union.anon* %666 to i64*
  %667 = load i64, i64* %RBP.i432
  %668 = sub i64 %667, 48
  %669 = load i64, i64* %PC.i430
  %670 = add i64 %669, 4
  store i64 %670, i64* %PC.i430
  %671 = inttoptr i64 %668 to i64*
  %672 = load i64, i64* %671
  store i64 %672, i64* %RCX.i431, align 8
  store %struct.Memory* %loadMem_400bf7, %struct.Memory** %MEMORY
  %loadMem_400bfb = load %struct.Memory*, %struct.Memory** %MEMORY
  %673 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %674 = getelementptr inbounds %struct.GPR, %struct.GPR* %673, i32 0, i32 33
  %675 = getelementptr inbounds %struct.Reg, %struct.Reg* %674, i32 0, i32 0
  %PC.i427 = bitcast %union.anon* %675 to i64*
  %676 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %677 = getelementptr inbounds %struct.GPR, %struct.GPR* %676, i32 0, i32 7
  %678 = getelementptr inbounds %struct.Reg, %struct.Reg* %677, i32 0, i32 0
  %RDX.i428 = bitcast %union.anon* %678 to i64*
  %679 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %680 = getelementptr inbounds %struct.GPR, %struct.GPR* %679, i32 0, i32 15
  %681 = getelementptr inbounds %struct.Reg, %struct.Reg* %680, i32 0, i32 0
  %RBP.i429 = bitcast %union.anon* %681 to i64*
  %682 = load i64, i64* %RBP.i429
  %683 = sub i64 %682, 8
  %684 = load i64, i64* %PC.i427
  %685 = add i64 %684, 4
  store i64 %685, i64* %PC.i427
  %686 = inttoptr i64 %683 to i64*
  %687 = load i64, i64* %686
  store i64 %687, i64* %RDX.i428, align 8
  store %struct.Memory* %loadMem_400bfb, %struct.Memory** %MEMORY
  %loadMem_400bff = load %struct.Memory*, %struct.Memory** %MEMORY
  %688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %689 = getelementptr inbounds %struct.GPR, %struct.GPR* %688, i32 0, i32 33
  %690 = getelementptr inbounds %struct.Reg, %struct.Reg* %689, i32 0, i32 0
  %PC.i424 = bitcast %union.anon* %690 to i64*
  %691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %692 = getelementptr inbounds %struct.GPR, %struct.GPR* %691, i32 0, i32 9
  %693 = getelementptr inbounds %struct.Reg, %struct.Reg* %692, i32 0, i32 0
  %RSI.i425 = bitcast %union.anon* %693 to i64*
  %694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %695 = getelementptr inbounds %struct.GPR, %struct.GPR* %694, i32 0, i32 15
  %696 = getelementptr inbounds %struct.Reg, %struct.Reg* %695, i32 0, i32 0
  %RBP.i426 = bitcast %union.anon* %696 to i64*
  %697 = load i64, i64* %RBP.i426
  %698 = sub i64 %697, 16
  %699 = load i64, i64* %PC.i424
  %700 = add i64 %699, 4
  store i64 %700, i64* %PC.i424
  %701 = inttoptr i64 %698 to i64*
  %702 = load i64, i64* %701
  store i64 %702, i64* %RSI.i425, align 8
  store %struct.Memory* %loadMem_400bff, %struct.Memory** %MEMORY
  %loadMem_400c03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %704 = getelementptr inbounds %struct.GPR, %struct.GPR* %703, i32 0, i32 33
  %705 = getelementptr inbounds %struct.Reg, %struct.Reg* %704, i32 0, i32 0
  %PC.i422 = bitcast %union.anon* %705 to i64*
  %706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %707 = getelementptr inbounds %struct.GPR, %struct.GPR* %706, i32 0, i32 9
  %708 = getelementptr inbounds %struct.Reg, %struct.Reg* %707, i32 0, i32 0
  %RSI.i423 = bitcast %union.anon* %708 to i64*
  %709 = load i64, i64* %RSI.i423
  %710 = load i64, i64* %PC.i422
  %711 = add i64 %710, 4
  store i64 %711, i64* %PC.i422
  %712 = shl i64 %709, 5
  %713 = icmp slt i64 %712, 0
  %714 = shl i64 %712, 1
  store i64 %714, i64* %RSI.i423, align 8
  %715 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %716 = zext i1 %713 to i8
  store i8 %716, i8* %715, align 1
  %717 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %718 = trunc i64 %714 to i32
  %719 = and i32 %718, 254
  %720 = call i32 @llvm.ctpop.i32(i32 %719)
  %721 = trunc i32 %720 to i8
  %722 = and i8 %721, 1
  %723 = xor i8 %722, 1
  store i8 %723, i8* %717, align 1
  %724 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %724, align 1
  %725 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %726 = icmp eq i64 %714, 0
  %727 = zext i1 %726 to i8
  store i8 %727, i8* %725, align 1
  %728 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %729 = lshr i64 %714, 63
  %730 = trunc i64 %729 to i8
  store i8 %730, i8* %728, align 1
  %731 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %731, align 1
  store %struct.Memory* %loadMem_400c03, %struct.Memory** %MEMORY
  %loadMem_400c07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %733 = getelementptr inbounds %struct.GPR, %struct.GPR* %732, i32 0, i32 33
  %734 = getelementptr inbounds %struct.Reg, %struct.Reg* %733, i32 0, i32 0
  %PC.i419 = bitcast %union.anon* %734 to i64*
  %735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %736 = getelementptr inbounds %struct.GPR, %struct.GPR* %735, i32 0, i32 7
  %737 = getelementptr inbounds %struct.Reg, %struct.Reg* %736, i32 0, i32 0
  %RDX.i420 = bitcast %union.anon* %737 to i64*
  %738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %739 = getelementptr inbounds %struct.GPR, %struct.GPR* %738, i32 0, i32 9
  %740 = getelementptr inbounds %struct.Reg, %struct.Reg* %739, i32 0, i32 0
  %RSI.i421 = bitcast %union.anon* %740 to i64*
  %741 = load i64, i64* %RDX.i420
  %742 = load i64, i64* %RSI.i421
  %743 = load i64, i64* %PC.i419
  %744 = add i64 %743, 3
  store i64 %744, i64* %PC.i419
  %745 = add i64 %742, %741
  store i64 %745, i64* %RDX.i420, align 8
  %746 = icmp ult i64 %745, %741
  %747 = icmp ult i64 %745, %742
  %748 = or i1 %746, %747
  %749 = zext i1 %748 to i8
  %750 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %749, i8* %750, align 1
  %751 = trunc i64 %745 to i32
  %752 = and i32 %751, 255
  %753 = call i32 @llvm.ctpop.i32(i32 %752)
  %754 = trunc i32 %753 to i8
  %755 = and i8 %754, 1
  %756 = xor i8 %755, 1
  %757 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %756, i8* %757, align 1
  %758 = xor i64 %742, %741
  %759 = xor i64 %758, %745
  %760 = lshr i64 %759, 4
  %761 = trunc i64 %760 to i8
  %762 = and i8 %761, 1
  %763 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %762, i8* %763, align 1
  %764 = icmp eq i64 %745, 0
  %765 = zext i1 %764 to i8
  %766 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %765, i8* %766, align 1
  %767 = lshr i64 %745, 63
  %768 = trunc i64 %767 to i8
  %769 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %768, i8* %769, align 1
  %770 = lshr i64 %741, 63
  %771 = lshr i64 %742, 63
  %772 = xor i64 %767, %770
  %773 = xor i64 %767, %771
  %774 = add i64 %772, %773
  %775 = icmp eq i64 %774, 2
  %776 = zext i1 %775 to i8
  %777 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %776, i8* %777, align 1
  store %struct.Memory* %loadMem_400c07, %struct.Memory** %MEMORY
  %loadMem_400c0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %778 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %779 = getelementptr inbounds %struct.GPR, %struct.GPR* %778, i32 0, i32 33
  %780 = getelementptr inbounds %struct.Reg, %struct.Reg* %779, i32 0, i32 0
  %PC.i416 = bitcast %union.anon* %780 to i64*
  %781 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %782 = getelementptr inbounds %struct.GPR, %struct.GPR* %781, i32 0, i32 5
  %783 = getelementptr inbounds %struct.Reg, %struct.Reg* %782, i32 0, i32 0
  %RCX.i417 = bitcast %union.anon* %783 to i64*
  %784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %785 = getelementptr inbounds %struct.GPR, %struct.GPR* %784, i32 0, i32 7
  %786 = getelementptr inbounds %struct.Reg, %struct.Reg* %785, i32 0, i32 0
  %RDX.i418 = bitcast %union.anon* %786 to i64*
  %787 = load i64, i64* %RDX.i418
  %788 = add i64 %787, 48
  %789 = load i64, i64* %RCX.i417
  %790 = load i64, i64* %PC.i416
  %791 = add i64 %790, 4
  store i64 %791, i64* %PC.i416
  %792 = inttoptr i64 %788 to i64*
  store i64 %789, i64* %792
  store %struct.Memory* %loadMem_400c0a, %struct.Memory** %MEMORY
  %loadMem_400c0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %793 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %794 = getelementptr inbounds %struct.GPR, %struct.GPR* %793, i32 0, i32 33
  %795 = getelementptr inbounds %struct.Reg, %struct.Reg* %794, i32 0, i32 0
  %PC.i413 = bitcast %union.anon* %795 to i64*
  %796 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %797 = getelementptr inbounds %struct.GPR, %struct.GPR* %796, i32 0, i32 5
  %798 = getelementptr inbounds %struct.Reg, %struct.Reg* %797, i32 0, i32 0
  %RCX.i414 = bitcast %union.anon* %798 to i64*
  %799 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %800 = getelementptr inbounds %struct.GPR, %struct.GPR* %799, i32 0, i32 15
  %801 = getelementptr inbounds %struct.Reg, %struct.Reg* %800, i32 0, i32 0
  %RBP.i415 = bitcast %union.anon* %801 to i64*
  %802 = load i64, i64* %RBP.i415
  %803 = sub i64 %802, 16
  %804 = load i64, i64* %PC.i413
  %805 = add i64 %804, 4
  store i64 %805, i64* %PC.i413
  %806 = inttoptr i64 %803 to i64*
  %807 = load i64, i64* %806
  store i64 %807, i64* %RCX.i414, align 8
  store %struct.Memory* %loadMem_400c0e, %struct.Memory** %MEMORY
  %loadMem_400c12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %809 = getelementptr inbounds %struct.GPR, %struct.GPR* %808, i32 0, i32 33
  %810 = getelementptr inbounds %struct.Reg, %struct.Reg* %809, i32 0, i32 0
  %PC.i411 = bitcast %union.anon* %810 to i64*
  %811 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %812 = getelementptr inbounds %struct.GPR, %struct.GPR* %811, i32 0, i32 5
  %813 = getelementptr inbounds %struct.Reg, %struct.Reg* %812, i32 0, i32 0
  %RCX.i412 = bitcast %union.anon* %813 to i64*
  %814 = load i64, i64* %RCX.i412
  %815 = load i64, i64* %PC.i411
  %816 = add i64 %815, 4
  store i64 %816, i64* %PC.i411
  %817 = add i64 1, %814
  store i64 %817, i64* %RCX.i412, align 8
  %818 = icmp ult i64 %817, %814
  %819 = icmp ult i64 %817, 1
  %820 = or i1 %818, %819
  %821 = zext i1 %820 to i8
  %822 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %821, i8* %822, align 1
  %823 = trunc i64 %817 to i32
  %824 = and i32 %823, 255
  %825 = call i32 @llvm.ctpop.i32(i32 %824)
  %826 = trunc i32 %825 to i8
  %827 = and i8 %826, 1
  %828 = xor i8 %827, 1
  %829 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %828, i8* %829, align 1
  %830 = xor i64 1, %814
  %831 = xor i64 %830, %817
  %832 = lshr i64 %831, 4
  %833 = trunc i64 %832 to i8
  %834 = and i8 %833, 1
  %835 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %834, i8* %835, align 1
  %836 = icmp eq i64 %817, 0
  %837 = zext i1 %836 to i8
  %838 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %837, i8* %838, align 1
  %839 = lshr i64 %817, 63
  %840 = trunc i64 %839 to i8
  %841 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %840, i8* %841, align 1
  %842 = lshr i64 %814, 63
  %843 = xor i64 %839, %842
  %844 = add i64 %843, %839
  %845 = icmp eq i64 %844, 2
  %846 = zext i1 %845 to i8
  %847 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %846, i8* %847, align 1
  store %struct.Memory* %loadMem_400c12, %struct.Memory** %MEMORY
  %loadMem_400c16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %849 = getelementptr inbounds %struct.GPR, %struct.GPR* %848, i32 0, i32 33
  %850 = getelementptr inbounds %struct.Reg, %struct.Reg* %849, i32 0, i32 0
  %PC.i408 = bitcast %union.anon* %850 to i64*
  %851 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %852 = getelementptr inbounds %struct.GPR, %struct.GPR* %851, i32 0, i32 5
  %853 = getelementptr inbounds %struct.Reg, %struct.Reg* %852, i32 0, i32 0
  %RCX.i409 = bitcast %union.anon* %853 to i64*
  %854 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %855 = getelementptr inbounds %struct.GPR, %struct.GPR* %854, i32 0, i32 15
  %856 = getelementptr inbounds %struct.Reg, %struct.Reg* %855, i32 0, i32 0
  %RBP.i410 = bitcast %union.anon* %856 to i64*
  %857 = load i64, i64* %RBP.i410
  %858 = sub i64 %857, 56
  %859 = load i64, i64* %RCX.i409
  %860 = load i64, i64* %PC.i408
  %861 = add i64 %860, 4
  store i64 %861, i64* %PC.i408
  %862 = inttoptr i64 %858 to i64*
  store i64 %859, i64* %862
  store %struct.Memory* %loadMem_400c16, %struct.Memory** %MEMORY
  br label %block_.L_400c1a

block_.L_400c1a:                                  ; preds = %routine_idivq__rcx.exit, %entry
  %loadMem_400c1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %864 = getelementptr inbounds %struct.GPR, %struct.GPR* %863, i32 0, i32 33
  %865 = getelementptr inbounds %struct.Reg, %struct.Reg* %864, i32 0, i32 0
  %PC.i405 = bitcast %union.anon* %865 to i64*
  %866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %867 = getelementptr inbounds %struct.GPR, %struct.GPR* %866, i32 0, i32 1
  %868 = getelementptr inbounds %struct.Reg, %struct.Reg* %867, i32 0, i32 0
  %EAX.i406 = bitcast %union.anon* %868 to i32*
  %869 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %870 = getelementptr inbounds %struct.GPR, %struct.GPR* %869, i32 0, i32 1
  %871 = getelementptr inbounds %struct.Reg, %struct.Reg* %870, i32 0, i32 0
  %RAX.i407 = bitcast %union.anon* %871 to i64*
  %872 = load i64, i64* %RAX.i407
  %873 = load i32, i32* %EAX.i406
  %874 = zext i32 %873 to i64
  %875 = load i64, i64* %PC.i405
  %876 = add i64 %875, 2
  store i64 %876, i64* %PC.i405
  %877 = xor i64 %874, %872
  %878 = trunc i64 %877 to i32
  %879 = and i64 %877, 4294967295
  store i64 %879, i64* %RAX.i407, align 8
  %880 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %880, align 1
  %881 = and i32 %878, 255
  %882 = call i32 @llvm.ctpop.i32(i32 %881)
  %883 = trunc i32 %882 to i8
  %884 = and i8 %883, 1
  %885 = xor i8 %884, 1
  %886 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %885, i8* %886, align 1
  %887 = icmp eq i32 %878, 0
  %888 = zext i1 %887 to i8
  %889 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %888, i8* %889, align 1
  %890 = lshr i32 %878, 31
  %891 = trunc i32 %890 to i8
  %892 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %891, i8* %892, align 1
  %893 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %893, align 1
  %894 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %894, align 1
  store %struct.Memory* %loadMem_400c1a, %struct.Memory** %MEMORY
  %loadMem_400c1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %895 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %896 = getelementptr inbounds %struct.GPR, %struct.GPR* %895, i32 0, i32 33
  %897 = getelementptr inbounds %struct.Reg, %struct.Reg* %896, i32 0, i32 0
  %PC.i402 = bitcast %union.anon* %897 to i64*
  %898 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %899 = getelementptr inbounds %struct.GPR, %struct.GPR* %898, i32 0, i32 1
  %900 = getelementptr inbounds %struct.Reg, %struct.Reg* %899, i32 0, i32 0
  %901 = bitcast %union.anon* %900 to %struct.anon.2*
  %AL.i403 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %901, i32 0, i32 0
  %902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %903 = getelementptr inbounds %struct.GPR, %struct.GPR* %902, i32 0, i32 5
  %904 = getelementptr inbounds %struct.Reg, %struct.Reg* %903, i32 0, i32 0
  %905 = bitcast %union.anon* %904 to %struct.anon.2*
  %CL.i404 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %905, i32 0, i32 0
  %906 = load i8, i8* %AL.i403
  %907 = zext i8 %906 to i64
  %908 = load i64, i64* %PC.i402
  %909 = add i64 %908, 2
  store i64 %909, i64* %PC.i402
  store i8 %906, i8* %CL.i404, align 1
  store %struct.Memory* %loadMem_400c1c, %struct.Memory** %MEMORY
  %loadMem_400c1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %911 = getelementptr inbounds %struct.GPR, %struct.GPR* %910, i32 0, i32 33
  %912 = getelementptr inbounds %struct.Reg, %struct.Reg* %911, i32 0, i32 0
  %PC.i399 = bitcast %union.anon* %912 to i64*
  %913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %914 = getelementptr inbounds %struct.GPR, %struct.GPR* %913, i32 0, i32 7
  %915 = getelementptr inbounds %struct.Reg, %struct.Reg* %914, i32 0, i32 0
  %RDX.i400 = bitcast %union.anon* %915 to i64*
  %916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %917 = getelementptr inbounds %struct.GPR, %struct.GPR* %916, i32 0, i32 15
  %918 = getelementptr inbounds %struct.Reg, %struct.Reg* %917, i32 0, i32 0
  %RBP.i401 = bitcast %union.anon* %918 to i64*
  %919 = load i64, i64* %RBP.i401
  %920 = sub i64 %919, 56
  %921 = load i64, i64* %PC.i399
  %922 = add i64 %921, 4
  store i64 %922, i64* %PC.i399
  %923 = inttoptr i64 %920 to i64*
  %924 = load i64, i64* %923
  store i64 %924, i64* %RDX.i400, align 8
  store %struct.Memory* %loadMem_400c1e, %struct.Memory** %MEMORY
  %loadMem_400c22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %925 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %926 = getelementptr inbounds %struct.GPR, %struct.GPR* %925, i32 0, i32 33
  %927 = getelementptr inbounds %struct.Reg, %struct.Reg* %926, i32 0, i32 0
  %PC.i397 = bitcast %union.anon* %927 to i64*
  %928 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %929 = getelementptr inbounds %struct.GPR, %struct.GPR* %928, i32 0, i32 7
  %930 = getelementptr inbounds %struct.Reg, %struct.Reg* %929, i32 0, i32 0
  %RDX.i398 = bitcast %union.anon* %930 to i64*
  %931 = load i64, i64* %RDX.i398
  %932 = load i64, i64* %PC.i397
  %933 = add i64 %932, 4
  store i64 %933, i64* %PC.i397
  %934 = sub i64 %931, 1
  store i64 %934, i64* %RDX.i398, align 8
  %935 = icmp ult i64 %931, 1
  %936 = zext i1 %935 to i8
  %937 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %936, i8* %937, align 1
  %938 = trunc i64 %934 to i32
  %939 = and i32 %938, 255
  %940 = call i32 @llvm.ctpop.i32(i32 %939)
  %941 = trunc i32 %940 to i8
  %942 = and i8 %941, 1
  %943 = xor i8 %942, 1
  %944 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %943, i8* %944, align 1
  %945 = xor i64 1, %931
  %946 = xor i64 %945, %934
  %947 = lshr i64 %946, 4
  %948 = trunc i64 %947 to i8
  %949 = and i8 %948, 1
  %950 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %949, i8* %950, align 1
  %951 = icmp eq i64 %934, 0
  %952 = zext i1 %951 to i8
  %953 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %952, i8* %953, align 1
  %954 = lshr i64 %934, 63
  %955 = trunc i64 %954 to i8
  %956 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %955, i8* %956, align 1
  %957 = lshr i64 %931, 63
  %958 = xor i64 %954, %957
  %959 = add i64 %958, %957
  %960 = icmp eq i64 %959, 2
  %961 = zext i1 %960 to i8
  %962 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %961, i8* %962, align 1
  store %struct.Memory* %loadMem_400c22, %struct.Memory** %MEMORY
  %loadMem_400c26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %963 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %964 = getelementptr inbounds %struct.GPR, %struct.GPR* %963, i32 0, i32 33
  %965 = getelementptr inbounds %struct.Reg, %struct.Reg* %964, i32 0, i32 0
  %PC.i395 = bitcast %union.anon* %965 to i64*
  %966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %967 = getelementptr inbounds %struct.GPR, %struct.GPR* %966, i32 0, i32 7
  %968 = getelementptr inbounds %struct.Reg, %struct.Reg* %967, i32 0, i32 0
  %RDX.i396 = bitcast %union.anon* %968 to i64*
  %969 = load i64, i64* %RDX.i396
  %970 = load i64, i64* %PC.i395
  %971 = add i64 %970, 4
  store i64 %971, i64* %PC.i395
  %972 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %972, align 1
  %973 = trunc i64 %969 to i32
  %974 = and i32 %973, 255
  %975 = call i32 @llvm.ctpop.i32(i32 %974)
  %976 = trunc i32 %975 to i8
  %977 = and i8 %976, 1
  %978 = xor i8 %977, 1
  %979 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %978, i8* %979, align 1
  %980 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %980, align 1
  %981 = icmp eq i64 %969, 0
  %982 = zext i1 %981 to i8
  %983 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %982, i8* %983, align 1
  %984 = lshr i64 %969, 63
  %985 = trunc i64 %984 to i8
  %986 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %985, i8* %986, align 1
  %987 = lshr i64 %969, 63
  %988 = xor i64 %984, %987
  %989 = add i64 %988, %987
  %990 = icmp eq i64 %989, 2
  %991 = zext i1 %990 to i8
  %992 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %991, i8* %992, align 1
  store %struct.Memory* %loadMem_400c26, %struct.Memory** %MEMORY
  %loadMem_400c2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %993 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %994 = getelementptr inbounds %struct.GPR, %struct.GPR* %993, i32 0, i32 33
  %995 = getelementptr inbounds %struct.Reg, %struct.Reg* %994, i32 0, i32 0
  %PC.i393 = bitcast %union.anon* %995 to i64*
  %996 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %997 = getelementptr inbounds %struct.GPR, %struct.GPR* %996, i32 0, i32 5
  %998 = getelementptr inbounds %struct.Reg, %struct.Reg* %997, i32 0, i32 0
  %999 = bitcast %union.anon* %998 to %struct.anon.2*
  %CL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %999, i32 0, i32 0
  %1000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1001 = getelementptr inbounds %struct.GPR, %struct.GPR* %1000, i32 0, i32 15
  %1002 = getelementptr inbounds %struct.Reg, %struct.Reg* %1001, i32 0, i32 0
  %RBP.i394 = bitcast %union.anon* %1002 to i64*
  %1003 = load i64, i64* %RBP.i394
  %1004 = sub i64 %1003, 57
  %1005 = load i8, i8* %CL.i
  %1006 = zext i8 %1005 to i64
  %1007 = load i64, i64* %PC.i393
  %1008 = add i64 %1007, 3
  store i64 %1008, i64* %PC.i393
  %1009 = inttoptr i64 %1004 to i8*
  store i8 %1005, i8* %1009
  store %struct.Memory* %loadMem_400c2a, %struct.Memory** %MEMORY
  %loadMem_400c2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1011 = getelementptr inbounds %struct.GPR, %struct.GPR* %1010, i32 0, i32 33
  %1012 = getelementptr inbounds %struct.Reg, %struct.Reg* %1011, i32 0, i32 0
  %PC.i392 = bitcast %union.anon* %1012 to i64*
  %1013 = load i64, i64* %PC.i392
  %1014 = add i64 %1013, 61
  %1015 = load i64, i64* %PC.i392
  %1016 = add i64 %1015, 6
  %1017 = load i64, i64* %PC.i392
  %1018 = add i64 %1017, 6
  store i64 %1018, i64* %PC.i392
  %1019 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1020 = load i8, i8* %1019, align 1
  store i8 %1020, i8* %BRANCH_TAKEN, align 1
  %1021 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1022 = icmp ne i8 %1020, 0
  %1023 = select i1 %1022, i64 %1014, i64 %1016
  store i64 %1023, i64* %1021, align 8
  store %struct.Memory* %loadMem_400c2d, %struct.Memory** %MEMORY
  %loadBr_400c2d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400c2d = icmp eq i8 %loadBr_400c2d, 1
  br i1 %cmpBr_400c2d, label %block_.L_400c6a, label %block_400c33

block_400c33:                                     ; preds = %block_.L_400c1a
  %loadMem_400c33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1024 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1025 = getelementptr inbounds %struct.GPR, %struct.GPR* %1024, i32 0, i32 33
  %1026 = getelementptr inbounds %struct.Reg, %struct.Reg* %1025, i32 0, i32 0
  %PC.i390 = bitcast %union.anon* %1026 to i64*
  %1027 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1028 = getelementptr inbounds %struct.GPR, %struct.GPR* %1027, i32 0, i32 1
  %1029 = getelementptr inbounds %struct.Reg, %struct.Reg* %1028, i32 0, i32 0
  %RAX.i391 = bitcast %union.anon* %1029 to i64*
  %1030 = load i64, i64* %PC.i390
  %1031 = add i64 %1030, 5
  store i64 %1031, i64* %PC.i390
  store i64 2, i64* %RAX.i391, align 8
  store %struct.Memory* %loadMem_400c33, %struct.Memory** %MEMORY
  %loadMem_400c38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1033 = getelementptr inbounds %struct.GPR, %struct.GPR* %1032, i32 0, i32 33
  %1034 = getelementptr inbounds %struct.Reg, %struct.Reg* %1033, i32 0, i32 0
  %PC.i387 = bitcast %union.anon* %1034 to i64*
  %1035 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1036 = getelementptr inbounds %struct.GPR, %struct.GPR* %1035, i32 0, i32 1
  %1037 = getelementptr inbounds %struct.Reg, %struct.Reg* %1036, i32 0, i32 0
  %EAX.i388 = bitcast %union.anon* %1037 to i32*
  %1038 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1039 = getelementptr inbounds %struct.GPR, %struct.GPR* %1038, i32 0, i32 5
  %1040 = getelementptr inbounds %struct.Reg, %struct.Reg* %1039, i32 0, i32 0
  %RCX.i389 = bitcast %union.anon* %1040 to i64*
  %1041 = load i32, i32* %EAX.i388
  %1042 = zext i32 %1041 to i64
  %1043 = load i64, i64* %PC.i387
  %1044 = add i64 %1043, 2
  store i64 %1044, i64* %PC.i387
  %1045 = and i64 %1042, 4294967295
  store i64 %1045, i64* %RCX.i389, align 8
  store %struct.Memory* %loadMem_400c38, %struct.Memory** %MEMORY
  %loadMem_400c3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1046 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1047 = getelementptr inbounds %struct.GPR, %struct.GPR* %1046, i32 0, i32 33
  %1048 = getelementptr inbounds %struct.Reg, %struct.Reg* %1047, i32 0, i32 0
  %PC.i384 = bitcast %union.anon* %1048 to i64*
  %1049 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1050 = getelementptr inbounds %struct.GPR, %struct.GPR* %1049, i32 0, i32 7
  %1051 = getelementptr inbounds %struct.Reg, %struct.Reg* %1050, i32 0, i32 0
  %RDX.i385 = bitcast %union.anon* %1051 to i64*
  %1052 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1053 = getelementptr inbounds %struct.GPR, %struct.GPR* %1052, i32 0, i32 15
  %1054 = getelementptr inbounds %struct.Reg, %struct.Reg* %1053, i32 0, i32 0
  %RBP.i386 = bitcast %union.anon* %1054 to i64*
  %1055 = load i64, i64* %RBP.i386
  %1056 = sub i64 %1055, 48
  %1057 = load i64, i64* %PC.i384
  %1058 = add i64 %1057, 4
  store i64 %1058, i64* %PC.i384
  %1059 = inttoptr i64 %1056 to i64*
  %1060 = load i64, i64* %1059
  store i64 %1060, i64* %RDX.i385, align 8
  store %struct.Memory* %loadMem_400c3a, %struct.Memory** %MEMORY
  %loadMem_400c3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1062 = getelementptr inbounds %struct.GPR, %struct.GPR* %1061, i32 0, i32 33
  %1063 = getelementptr inbounds %struct.Reg, %struct.Reg* %1062, i32 0, i32 0
  %PC.i381 = bitcast %union.anon* %1063 to i64*
  %1064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1065 = getelementptr inbounds %struct.GPR, %struct.GPR* %1064, i32 0, i32 9
  %1066 = getelementptr inbounds %struct.Reg, %struct.Reg* %1065, i32 0, i32 0
  %RSI.i382 = bitcast %union.anon* %1066 to i64*
  %1067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1068 = getelementptr inbounds %struct.GPR, %struct.GPR* %1067, i32 0, i32 15
  %1069 = getelementptr inbounds %struct.Reg, %struct.Reg* %1068, i32 0, i32 0
  %RBP.i383 = bitcast %union.anon* %1069 to i64*
  %1070 = load i64, i64* %RBP.i383
  %1071 = sub i64 %1070, 8
  %1072 = load i64, i64* %PC.i381
  %1073 = add i64 %1072, 4
  store i64 %1073, i64* %PC.i381
  %1074 = inttoptr i64 %1071 to i64*
  %1075 = load i64, i64* %1074
  store i64 %1075, i64* %RSI.i382, align 8
  store %struct.Memory* %loadMem_400c3e, %struct.Memory** %MEMORY
  %loadMem_400c42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1076 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1077 = getelementptr inbounds %struct.GPR, %struct.GPR* %1076, i32 0, i32 33
  %1078 = getelementptr inbounds %struct.Reg, %struct.Reg* %1077, i32 0, i32 0
  %PC.i378 = bitcast %union.anon* %1078 to i64*
  %1079 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1080 = getelementptr inbounds %struct.GPR, %struct.GPR* %1079, i32 0, i32 1
  %1081 = getelementptr inbounds %struct.Reg, %struct.Reg* %1080, i32 0, i32 0
  %RAX.i379 = bitcast %union.anon* %1081 to i64*
  %1082 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1083 = getelementptr inbounds %struct.GPR, %struct.GPR* %1082, i32 0, i32 15
  %1084 = getelementptr inbounds %struct.Reg, %struct.Reg* %1083, i32 0, i32 0
  %RBP.i380 = bitcast %union.anon* %1084 to i64*
  %1085 = load i64, i64* %RBP.i380
  %1086 = sub i64 %1085, 56
  %1087 = load i64, i64* %PC.i378
  %1088 = add i64 %1087, 4
  store i64 %1088, i64* %PC.i378
  %1089 = inttoptr i64 %1086 to i64*
  %1090 = load i64, i64* %1089
  store i64 %1090, i64* %RAX.i379, align 8
  store %struct.Memory* %loadMem_400c42, %struct.Memory** %MEMORY
  %loadMem_400c46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1091 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1092 = getelementptr inbounds %struct.GPR, %struct.GPR* %1091, i32 0, i32 33
  %1093 = getelementptr inbounds %struct.Reg, %struct.Reg* %1092, i32 0, i32 0
  %PC.i375 = bitcast %union.anon* %1093 to i64*
  %1094 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1095 = getelementptr inbounds %struct.GPR, %struct.GPR* %1094, i32 0, i32 7
  %1096 = getelementptr inbounds %struct.Reg, %struct.Reg* %1095, i32 0, i32 0
  %RDX.i376 = bitcast %union.anon* %1096 to i64*
  %1097 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1098 = getelementptr inbounds %struct.GPR, %struct.GPR* %1097, i32 0, i32 15
  %1099 = getelementptr inbounds %struct.Reg, %struct.Reg* %1098, i32 0, i32 0
  %RBP.i377 = bitcast %union.anon* %1099 to i64*
  %1100 = load i64, i64* %RBP.i377
  %1101 = sub i64 %1100, 72
  %1102 = load i64, i64* %RDX.i376
  %1103 = load i64, i64* %PC.i375
  %1104 = add i64 %1103, 4
  store i64 %1104, i64* %PC.i375
  %1105 = inttoptr i64 %1101 to i64*
  store i64 %1102, i64* %1105
  store %struct.Memory* %loadMem_400c46, %struct.Memory** %MEMORY
  %loadMem_400c4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1107 = getelementptr inbounds %struct.GPR, %struct.GPR* %1106, i32 0, i32 33
  %1108 = getelementptr inbounds %struct.Reg, %struct.Reg* %1107, i32 0, i32 0
  %PC.i374 = bitcast %union.anon* %1108 to i64*
  %1109 = load i64, i64* %PC.i374
  %1110 = add i64 %1109, 2
  store i64 %1110, i64* %PC.i374
  %1111 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %1112 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %1113 = load i64, i64* %1112, align 8
  %1114 = ashr i64 %1113, 63
  store i64 %1114, i64* %1111, align 8
  store %struct.Memory* %loadMem_400c4a, %struct.Memory** %MEMORY
  %loadMem_400c4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1116 = getelementptr inbounds %struct.GPR, %struct.GPR* %1115, i32 0, i32 33
  %1117 = getelementptr inbounds %struct.Reg, %struct.Reg* %1116, i32 0, i32 0
  %PC.i369 = bitcast %union.anon* %1117 to i64*
  %1118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1119 = getelementptr inbounds %struct.GPR, %struct.GPR* %1118, i32 0, i32 5
  %1120 = getelementptr inbounds %struct.Reg, %struct.Reg* %1119, i32 0, i32 0
  %RCX.i370 = bitcast %union.anon* %1120 to i64*
  %1121 = load i64, i64* %RCX.i370
  %1122 = load i64, i64* %PC.i369
  %1123 = add i64 %1122, 3
  store i64 %1123, i64* %PC.i369
  %1124 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %1125 = load i64, i64* %1124, align 8
  %1126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %1127 = load i64, i64* %1126, align 8
  %1128 = sext i64 %1121 to i128
  %1129 = and i128 %1128, -18446744073709551616
  %1130 = zext i64 %1127 to i128
  %1131 = shl i128 %1130, 64
  %1132 = zext i64 %1125 to i128
  %1133 = or i128 %1131, %1132
  %1134 = zext i64 %1121 to i128
  %1135 = or i128 %1129, %1134
  %1136 = sdiv i128 %1133, %1135
  %1137 = trunc i128 %1136 to i64
  %1138 = and i128 %1136, 18446744073709551615
  %1139 = sext i64 %1137 to i128
  %1140 = and i128 %1139, -18446744073709551616
  %1141 = or i128 %1140, %1138
  %1142 = icmp eq i128 %1136, %1141
  br i1 %1142, label %1147, label %1143

; <label>:1143:                                   ; preds = %block_400c33
  %1144 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1145 = load i64, i64* %1144, align 8
  %1146 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1145, %struct.Memory* %loadMem_400c4c)
  br label %routine_idivq__rcx.exit371

; <label>:1147:                                   ; preds = %block_400c33
  %1148 = srem i128 %1133, %1135
  %1149 = trunc i128 %1148 to i64
  store i64 %1137, i64* %1124, align 8
  store i64 %1149, i64* %1126, align 8
  %1150 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1150, align 1
  %1151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %1151, align 1
  %1152 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1152, align 1
  %1153 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1153, align 1
  %1154 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1154, align 1
  %1155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1155, align 1
  br label %routine_idivq__rcx.exit371

routine_idivq__rcx.exit371:                       ; preds = %1143, %1147
  %1156 = phi %struct.Memory* [ %1146, %1143 ], [ %loadMem_400c4c, %1147 ]
  store %struct.Memory* %1156, %struct.Memory** %MEMORY
  %loadMem_400c4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1158 = getelementptr inbounds %struct.GPR, %struct.GPR* %1157, i32 0, i32 33
  %1159 = getelementptr inbounds %struct.Reg, %struct.Reg* %1158, i32 0, i32 0
  %PC.i367 = bitcast %union.anon* %1159 to i64*
  %1160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1161 = getelementptr inbounds %struct.GPR, %struct.GPR* %1160, i32 0, i32 1
  %1162 = getelementptr inbounds %struct.Reg, %struct.Reg* %1161, i32 0, i32 0
  %RAX.i368 = bitcast %union.anon* %1162 to i64*
  %1163 = load i64, i64* %RAX.i368
  %1164 = load i64, i64* %PC.i367
  %1165 = add i64 %1164, 4
  store i64 %1165, i64* %PC.i367
  %1166 = sub i64 %1163, 1
  store i64 %1166, i64* %RAX.i368, align 8
  %1167 = icmp ult i64 %1163, 1
  %1168 = zext i1 %1167 to i8
  %1169 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1168, i8* %1169, align 1
  %1170 = trunc i64 %1166 to i32
  %1171 = and i32 %1170, 255
  %1172 = call i32 @llvm.ctpop.i32(i32 %1171)
  %1173 = trunc i32 %1172 to i8
  %1174 = and i8 %1173, 1
  %1175 = xor i8 %1174, 1
  %1176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1175, i8* %1176, align 1
  %1177 = xor i64 1, %1163
  %1178 = xor i64 %1177, %1166
  %1179 = lshr i64 %1178, 4
  %1180 = trunc i64 %1179 to i8
  %1181 = and i8 %1180, 1
  %1182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1181, i8* %1182, align 1
  %1183 = icmp eq i64 %1166, 0
  %1184 = zext i1 %1183 to i8
  %1185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1184, i8* %1185, align 1
  %1186 = lshr i64 %1166, 63
  %1187 = trunc i64 %1186 to i8
  %1188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1187, i8* %1188, align 1
  %1189 = lshr i64 %1163, 63
  %1190 = xor i64 %1186, %1189
  %1191 = add i64 %1190, %1189
  %1192 = icmp eq i64 %1191, 2
  %1193 = zext i1 %1192 to i8
  %1194 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1193, i8* %1194, align 1
  store %struct.Memory* %loadMem_400c4f, %struct.Memory** %MEMORY
  %loadMem_400c53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1196 = getelementptr inbounds %struct.GPR, %struct.GPR* %1195, i32 0, i32 33
  %1197 = getelementptr inbounds %struct.Reg, %struct.Reg* %1196, i32 0, i32 0
  %PC.i365 = bitcast %union.anon* %1197 to i64*
  %1198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1199 = getelementptr inbounds %struct.GPR, %struct.GPR* %1198, i32 0, i32 1
  %1200 = getelementptr inbounds %struct.Reg, %struct.Reg* %1199, i32 0, i32 0
  %RAX.i366 = bitcast %union.anon* %1200 to i64*
  %1201 = load i64, i64* %RAX.i366
  %1202 = load i64, i64* %PC.i365
  %1203 = add i64 %1202, 4
  store i64 %1203, i64* %PC.i365
  %1204 = shl i64 %1201, 5
  %1205 = icmp slt i64 %1204, 0
  %1206 = shl i64 %1204, 1
  store i64 %1206, i64* %RAX.i366, align 8
  %1207 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1208 = zext i1 %1205 to i8
  store i8 %1208, i8* %1207, align 1
  %1209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1210 = trunc i64 %1206 to i32
  %1211 = and i32 %1210, 254
  %1212 = call i32 @llvm.ctpop.i32(i32 %1211)
  %1213 = trunc i32 %1212 to i8
  %1214 = and i8 %1213, 1
  %1215 = xor i8 %1214, 1
  store i8 %1215, i8* %1209, align 1
  %1216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1216, align 1
  %1217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1218 = icmp eq i64 %1206, 0
  %1219 = zext i1 %1218 to i8
  store i8 %1219, i8* %1217, align 1
  %1220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1221 = lshr i64 %1206, 63
  %1222 = trunc i64 %1221 to i8
  store i8 %1222, i8* %1220, align 1
  %1223 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1223, align 1
  store %struct.Memory* %loadMem_400c53, %struct.Memory** %MEMORY
  %loadMem_400c57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1225 = getelementptr inbounds %struct.GPR, %struct.GPR* %1224, i32 0, i32 33
  %1226 = getelementptr inbounds %struct.Reg, %struct.Reg* %1225, i32 0, i32 0
  %PC.i362 = bitcast %union.anon* %1226 to i64*
  %1227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1228 = getelementptr inbounds %struct.GPR, %struct.GPR* %1227, i32 0, i32 1
  %1229 = getelementptr inbounds %struct.Reg, %struct.Reg* %1228, i32 0, i32 0
  %RAX.i363 = bitcast %union.anon* %1229 to i64*
  %1230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1231 = getelementptr inbounds %struct.GPR, %struct.GPR* %1230, i32 0, i32 9
  %1232 = getelementptr inbounds %struct.Reg, %struct.Reg* %1231, i32 0, i32 0
  %RSI.i364 = bitcast %union.anon* %1232 to i64*
  %1233 = load i64, i64* %RSI.i364
  %1234 = load i64, i64* %RAX.i363
  %1235 = load i64, i64* %PC.i362
  %1236 = add i64 %1235, 3
  store i64 %1236, i64* %PC.i362
  %1237 = add i64 %1234, %1233
  store i64 %1237, i64* %RSI.i364, align 8
  %1238 = icmp ult i64 %1237, %1233
  %1239 = icmp ult i64 %1237, %1234
  %1240 = or i1 %1238, %1239
  %1241 = zext i1 %1240 to i8
  %1242 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1241, i8* %1242, align 1
  %1243 = trunc i64 %1237 to i32
  %1244 = and i32 %1243, 255
  %1245 = call i32 @llvm.ctpop.i32(i32 %1244)
  %1246 = trunc i32 %1245 to i8
  %1247 = and i8 %1246, 1
  %1248 = xor i8 %1247, 1
  %1249 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1248, i8* %1249, align 1
  %1250 = xor i64 %1234, %1233
  %1251 = xor i64 %1250, %1237
  %1252 = lshr i64 %1251, 4
  %1253 = trunc i64 %1252 to i8
  %1254 = and i8 %1253, 1
  %1255 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1254, i8* %1255, align 1
  %1256 = icmp eq i64 %1237, 0
  %1257 = zext i1 %1256 to i8
  %1258 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1257, i8* %1258, align 1
  %1259 = lshr i64 %1237, 63
  %1260 = trunc i64 %1259 to i8
  %1261 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1260, i8* %1261, align 1
  %1262 = lshr i64 %1233, 63
  %1263 = lshr i64 %1234, 63
  %1264 = xor i64 %1259, %1262
  %1265 = xor i64 %1259, %1263
  %1266 = add i64 %1264, %1265
  %1267 = icmp eq i64 %1266, 2
  %1268 = zext i1 %1267 to i8
  %1269 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1268, i8* %1269, align 1
  store %struct.Memory* %loadMem_400c57, %struct.Memory** %MEMORY
  %loadMem_400c5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1271 = getelementptr inbounds %struct.GPR, %struct.GPR* %1270, i32 0, i32 33
  %1272 = getelementptr inbounds %struct.Reg, %struct.Reg* %1271, i32 0, i32 0
  %PC.i359 = bitcast %union.anon* %1272 to i64*
  %1273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1274 = getelementptr inbounds %struct.GPR, %struct.GPR* %1273, i32 0, i32 1
  %1275 = getelementptr inbounds %struct.Reg, %struct.Reg* %1274, i32 0, i32 0
  %RAX.i360 = bitcast %union.anon* %1275 to i64*
  %1276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1277 = getelementptr inbounds %struct.GPR, %struct.GPR* %1276, i32 0, i32 15
  %1278 = getelementptr inbounds %struct.Reg, %struct.Reg* %1277, i32 0, i32 0
  %RBP.i361 = bitcast %union.anon* %1278 to i64*
  %1279 = load i64, i64* %RBP.i361
  %1280 = sub i64 %1279, 72
  %1281 = load i64, i64* %PC.i359
  %1282 = add i64 %1281, 4
  store i64 %1282, i64* %PC.i359
  %1283 = inttoptr i64 %1280 to i64*
  %1284 = load i64, i64* %1283
  store i64 %1284, i64* %RAX.i360, align 8
  store %struct.Memory* %loadMem_400c5a, %struct.Memory** %MEMORY
  %loadMem_400c5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1286 = getelementptr inbounds %struct.GPR, %struct.GPR* %1285, i32 0, i32 33
  %1287 = getelementptr inbounds %struct.Reg, %struct.Reg* %1286, i32 0, i32 0
  %PC.i356 = bitcast %union.anon* %1287 to i64*
  %1288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1289 = getelementptr inbounds %struct.GPR, %struct.GPR* %1288, i32 0, i32 1
  %1290 = getelementptr inbounds %struct.Reg, %struct.Reg* %1289, i32 0, i32 0
  %RAX.i357 = bitcast %union.anon* %1290 to i64*
  %1291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1292 = getelementptr inbounds %struct.GPR, %struct.GPR* %1291, i32 0, i32 9
  %1293 = getelementptr inbounds %struct.Reg, %struct.Reg* %1292, i32 0, i32 0
  %RSI.i358 = bitcast %union.anon* %1293 to i64*
  %1294 = load i64, i64* %RAX.i357
  %1295 = load i64, i64* %RSI.i358
  %1296 = add i64 %1295, 48
  %1297 = load i64, i64* %PC.i356
  %1298 = add i64 %1297, 4
  store i64 %1298, i64* %PC.i356
  %1299 = inttoptr i64 %1296 to i64*
  %1300 = load i64, i64* %1299
  %1301 = sub i64 %1294, %1300
  %1302 = icmp ugt i64 %1300, %1294
  %1303 = zext i1 %1302 to i8
  %1304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1303, i8* %1304, align 1
  %1305 = trunc i64 %1301 to i32
  %1306 = and i32 %1305, 255
  %1307 = call i32 @llvm.ctpop.i32(i32 %1306)
  %1308 = trunc i32 %1307 to i8
  %1309 = and i8 %1308, 1
  %1310 = xor i8 %1309, 1
  %1311 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1310, i8* %1311, align 1
  %1312 = xor i64 %1300, %1294
  %1313 = xor i64 %1312, %1301
  %1314 = lshr i64 %1313, 4
  %1315 = trunc i64 %1314 to i8
  %1316 = and i8 %1315, 1
  %1317 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1316, i8* %1317, align 1
  %1318 = icmp eq i64 %1301, 0
  %1319 = zext i1 %1318 to i8
  %1320 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1319, i8* %1320, align 1
  %1321 = lshr i64 %1301, 63
  %1322 = trunc i64 %1321 to i8
  %1323 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1322, i8* %1323, align 1
  %1324 = lshr i64 %1294, 63
  %1325 = lshr i64 %1300, 63
  %1326 = xor i64 %1325, %1324
  %1327 = xor i64 %1321, %1324
  %1328 = add i64 %1327, %1326
  %1329 = icmp eq i64 %1328, 2
  %1330 = zext i1 %1329 to i8
  %1331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1330, i8* %1331, align 1
  store %struct.Memory* %loadMem_400c5e, %struct.Memory** %MEMORY
  %loadMem_400c62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1333 = getelementptr inbounds %struct.GPR, %struct.GPR* %1332, i32 0, i32 33
  %1334 = getelementptr inbounds %struct.Reg, %struct.Reg* %1333, i32 0, i32 0
  %PC.i354 = bitcast %union.anon* %1334 to i64*
  %1335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1336 = getelementptr inbounds %struct.GPR, %struct.GPR* %1335, i32 0, i32 11
  %1337 = getelementptr inbounds %struct.Reg, %struct.Reg* %1336, i32 0, i32 0
  %1338 = bitcast %union.anon* %1337 to %struct.anon.2*
  %DIL.i355 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1338, i32 0, i32 0
  %1339 = load i64, i64* %PC.i354
  %1340 = add i64 %1339, 4
  store i64 %1340, i64* %PC.i354
  %1341 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1342 = load i8, i8* %1341, align 1
  %1343 = icmp eq i8 %1342, 0
  %1344 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1345 = load i8, i8* %1344, align 1
  %1346 = icmp ne i8 %1345, 0
  %1347 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1348 = load i8, i8* %1347, align 1
  %1349 = icmp ne i8 %1348, 0
  %1350 = xor i1 %1346, %1349
  %1351 = xor i1 %1350, true
  %1352 = and i1 %1343, %1351
  %1353 = zext i1 %1352 to i8
  store i8 %1353, i8* %DIL.i355, align 1
  store %struct.Memory* %loadMem_400c62, %struct.Memory** %MEMORY
  %loadMem_400c66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1355 = getelementptr inbounds %struct.GPR, %struct.GPR* %1354, i32 0, i32 33
  %1356 = getelementptr inbounds %struct.Reg, %struct.Reg* %1355, i32 0, i32 0
  %PC.i352 = bitcast %union.anon* %1356 to i64*
  %1357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1358 = getelementptr inbounds %struct.GPR, %struct.GPR* %1357, i32 0, i32 11
  %1359 = getelementptr inbounds %struct.Reg, %struct.Reg* %1358, i32 0, i32 0
  %1360 = bitcast %union.anon* %1359 to %struct.anon.2*
  %DIL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1360, i32 0, i32 0
  %1361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1362 = getelementptr inbounds %struct.GPR, %struct.GPR* %1361, i32 0, i32 15
  %1363 = getelementptr inbounds %struct.Reg, %struct.Reg* %1362, i32 0, i32 0
  %RBP.i353 = bitcast %union.anon* %1363 to i64*
  %1364 = load i64, i64* %RBP.i353
  %1365 = sub i64 %1364, 57
  %1366 = load i8, i8* %DIL.i
  %1367 = zext i8 %1366 to i64
  %1368 = load i64, i64* %PC.i352
  %1369 = add i64 %1368, 4
  store i64 %1369, i64* %PC.i352
  %1370 = inttoptr i64 %1365 to i8*
  store i8 %1366, i8* %1370
  store %struct.Memory* %loadMem_400c66, %struct.Memory** %MEMORY
  br label %block_.L_400c6a

block_.L_400c6a:                                  ; preds = %routine_idivq__rcx.exit371, %block_.L_400c1a
  %loadMem_400c6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1372 = getelementptr inbounds %struct.GPR, %struct.GPR* %1371, i32 0, i32 33
  %1373 = getelementptr inbounds %struct.Reg, %struct.Reg* %1372, i32 0, i32 0
  %PC.i349 = bitcast %union.anon* %1373 to i64*
  %1374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1375 = getelementptr inbounds %struct.GPR, %struct.GPR* %1374, i32 0, i32 1
  %1376 = getelementptr inbounds %struct.Reg, %struct.Reg* %1375, i32 0, i32 0
  %1377 = bitcast %union.anon* %1376 to %struct.anon.2*
  %AL.i350 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1377, i32 0, i32 0
  %1378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1379 = getelementptr inbounds %struct.GPR, %struct.GPR* %1378, i32 0, i32 15
  %1380 = getelementptr inbounds %struct.Reg, %struct.Reg* %1379, i32 0, i32 0
  %RBP.i351 = bitcast %union.anon* %1380 to i64*
  %1381 = load i64, i64* %RBP.i351
  %1382 = sub i64 %1381, 57
  %1383 = load i64, i64* %PC.i349
  %1384 = add i64 %1383, 3
  store i64 %1384, i64* %PC.i349
  %1385 = inttoptr i64 %1382 to i8*
  %1386 = load i8, i8* %1385
  store i8 %1386, i8* %AL.i350, align 1
  store %struct.Memory* %loadMem_400c6a, %struct.Memory** %MEMORY
  %loadMem_400c6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1387 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1388 = getelementptr inbounds %struct.GPR, %struct.GPR* %1387, i32 0, i32 33
  %1389 = getelementptr inbounds %struct.Reg, %struct.Reg* %1388, i32 0, i32 0
  %PC.i348 = bitcast %union.anon* %1389 to i64*
  %1390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1391 = getelementptr inbounds %struct.GPR, %struct.GPR* %1390, i32 0, i32 1
  %1392 = getelementptr inbounds %struct.Reg, %struct.Reg* %1391, i32 0, i32 0
  %1393 = bitcast %union.anon* %1392 to %struct.anon.2*
  %AL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1393, i32 0, i32 0
  %1394 = load i8, i8* %AL.i
  %1395 = zext i8 %1394 to i64
  %1396 = load i64, i64* %PC.i348
  %1397 = add i64 %1396, 2
  store i64 %1397, i64* %PC.i348
  %1398 = and i64 1, %1395
  %1399 = trunc i64 %1398 to i8
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
  store %struct.Memory* %loadMem_400c6d, %struct.Memory** %MEMORY
  %loadMem_400c6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1415 = getelementptr inbounds %struct.GPR, %struct.GPR* %1414, i32 0, i32 33
  %1416 = getelementptr inbounds %struct.Reg, %struct.Reg* %1415, i32 0, i32 0
  %PC.i347 = bitcast %union.anon* %1416 to i64*
  %1417 = load i64, i64* %PC.i347
  %1418 = add i64 %1417, 11
  %1419 = load i64, i64* %PC.i347
  %1420 = add i64 %1419, 6
  %1421 = load i64, i64* %PC.i347
  %1422 = add i64 %1421, 6
  store i64 %1422, i64* %PC.i347
  %1423 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1424 = load i8, i8* %1423, align 1
  %1425 = icmp eq i8 %1424, 0
  %1426 = zext i1 %1425 to i8
  store i8 %1426, i8* %BRANCH_TAKEN, align 1
  %1427 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1428 = select i1 %1425, i64 %1418, i64 %1420
  store i64 %1428, i64* %1427, align 8
  store %struct.Memory* %loadMem_400c6f, %struct.Memory** %MEMORY
  %loadBr_400c6f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400c6f = icmp eq i8 %loadBr_400c6f, 1
  br i1 %cmpBr_400c6f, label %block_.L_400c7a, label %block_400c75

block_400c75:                                     ; preds = %block_.L_400c6a
  %loadMem_400c75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1430 = getelementptr inbounds %struct.GPR, %struct.GPR* %1429, i32 0, i32 33
  %1431 = getelementptr inbounds %struct.Reg, %struct.Reg* %1430, i32 0, i32 0
  %PC.i346 = bitcast %union.anon* %1431 to i64*
  %1432 = load i64, i64* %PC.i346
  %1433 = add i64 %1432, 468
  %1434 = load i64, i64* %PC.i346
  %1435 = add i64 %1434, 5
  store i64 %1435, i64* %PC.i346
  %1436 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1433, i64* %1436, align 8
  store %struct.Memory* %loadMem_400c75, %struct.Memory** %MEMORY
  br label %block_.L_400e49

block_.L_400c7a:                                  ; preds = %block_.L_400c6a
  %loadMem_400c7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1438 = getelementptr inbounds %struct.GPR, %struct.GPR* %1437, i32 0, i32 33
  %1439 = getelementptr inbounds %struct.Reg, %struct.Reg* %1438, i32 0, i32 0
  %PC.i344 = bitcast %union.anon* %1439 to i64*
  %1440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1441 = getelementptr inbounds %struct.GPR, %struct.GPR* %1440, i32 0, i32 1
  %1442 = getelementptr inbounds %struct.Reg, %struct.Reg* %1441, i32 0, i32 0
  %RAX.i345 = bitcast %union.anon* %1442 to i64*
  %1443 = load i64, i64* %PC.i344
  %1444 = add i64 %1443, 5
  store i64 %1444, i64* %PC.i344
  store i64 2, i64* %RAX.i345, align 8
  store %struct.Memory* %loadMem_400c7a, %struct.Memory** %MEMORY
  %loadMem_400c7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1446 = getelementptr inbounds %struct.GPR, %struct.GPR* %1445, i32 0, i32 33
  %1447 = getelementptr inbounds %struct.Reg, %struct.Reg* %1446, i32 0, i32 0
  %PC.i342 = bitcast %union.anon* %1447 to i64*
  %1448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1449 = getelementptr inbounds %struct.GPR, %struct.GPR* %1448, i32 0, i32 1
  %1450 = getelementptr inbounds %struct.Reg, %struct.Reg* %1449, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %1450 to i32*
  %1451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1452 = getelementptr inbounds %struct.GPR, %struct.GPR* %1451, i32 0, i32 5
  %1453 = getelementptr inbounds %struct.Reg, %struct.Reg* %1452, i32 0, i32 0
  %RCX.i343 = bitcast %union.anon* %1453 to i64*
  %1454 = load i32, i32* %EAX.i
  %1455 = zext i32 %1454 to i64
  %1456 = load i64, i64* %PC.i342
  %1457 = add i64 %1456, 2
  store i64 %1457, i64* %PC.i342
  %1458 = and i64 %1455, 4294967295
  store i64 %1458, i64* %RCX.i343, align 8
  store %struct.Memory* %loadMem_400c7f, %struct.Memory** %MEMORY
  %loadMem_400c81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1460 = getelementptr inbounds %struct.GPR, %struct.GPR* %1459, i32 0, i32 33
  %1461 = getelementptr inbounds %struct.Reg, %struct.Reg* %1460, i32 0, i32 0
  %PC.i339 = bitcast %union.anon* %1461 to i64*
  %1462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1463 = getelementptr inbounds %struct.GPR, %struct.GPR* %1462, i32 0, i32 7
  %1464 = getelementptr inbounds %struct.Reg, %struct.Reg* %1463, i32 0, i32 0
  %RDX.i340 = bitcast %union.anon* %1464 to i64*
  %1465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1466 = getelementptr inbounds %struct.GPR, %struct.GPR* %1465, i32 0, i32 15
  %1467 = getelementptr inbounds %struct.Reg, %struct.Reg* %1466, i32 0, i32 0
  %RBP.i341 = bitcast %union.anon* %1467 to i64*
  %1468 = load i64, i64* %RBP.i341
  %1469 = sub i64 %1468, 8
  %1470 = load i64, i64* %PC.i339
  %1471 = add i64 %1470, 4
  store i64 %1471, i64* %PC.i339
  %1472 = inttoptr i64 %1469 to i64*
  %1473 = load i64, i64* %1472
  store i64 %1473, i64* %RDX.i340, align 8
  store %struct.Memory* %loadMem_400c81, %struct.Memory** %MEMORY
  %loadMem_400c85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1475 = getelementptr inbounds %struct.GPR, %struct.GPR* %1474, i32 0, i32 33
  %1476 = getelementptr inbounds %struct.Reg, %struct.Reg* %1475, i32 0, i32 0
  %PC.i336 = bitcast %union.anon* %1476 to i64*
  %1477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1478 = getelementptr inbounds %struct.GPR, %struct.GPR* %1477, i32 0, i32 1
  %1479 = getelementptr inbounds %struct.Reg, %struct.Reg* %1478, i32 0, i32 0
  %RAX.i337 = bitcast %union.anon* %1479 to i64*
  %1480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1481 = getelementptr inbounds %struct.GPR, %struct.GPR* %1480, i32 0, i32 15
  %1482 = getelementptr inbounds %struct.Reg, %struct.Reg* %1481, i32 0, i32 0
  %RBP.i338 = bitcast %union.anon* %1482 to i64*
  %1483 = load i64, i64* %RBP.i338
  %1484 = sub i64 %1483, 56
  %1485 = load i64, i64* %PC.i336
  %1486 = add i64 %1485, 4
  store i64 %1486, i64* %PC.i336
  %1487 = inttoptr i64 %1484 to i64*
  %1488 = load i64, i64* %1487
  store i64 %1488, i64* %RAX.i337, align 8
  store %struct.Memory* %loadMem_400c85, %struct.Memory** %MEMORY
  %loadMem_400c89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1490 = getelementptr inbounds %struct.GPR, %struct.GPR* %1489, i32 0, i32 33
  %1491 = getelementptr inbounds %struct.Reg, %struct.Reg* %1490, i32 0, i32 0
  %PC.i333 = bitcast %union.anon* %1491 to i64*
  %1492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1493 = getelementptr inbounds %struct.GPR, %struct.GPR* %1492, i32 0, i32 7
  %1494 = getelementptr inbounds %struct.Reg, %struct.Reg* %1493, i32 0, i32 0
  %RDX.i334 = bitcast %union.anon* %1494 to i64*
  %1495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1496 = getelementptr inbounds %struct.GPR, %struct.GPR* %1495, i32 0, i32 15
  %1497 = getelementptr inbounds %struct.Reg, %struct.Reg* %1496, i32 0, i32 0
  %RBP.i335 = bitcast %union.anon* %1497 to i64*
  %1498 = load i64, i64* %RBP.i335
  %1499 = sub i64 %1498, 80
  %1500 = load i64, i64* %RDX.i334
  %1501 = load i64, i64* %PC.i333
  %1502 = add i64 %1501, 4
  store i64 %1502, i64* %PC.i333
  %1503 = inttoptr i64 %1499 to i64*
  store i64 %1500, i64* %1503
  store %struct.Memory* %loadMem_400c89, %struct.Memory** %MEMORY
  %loadMem_400c8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1505 = getelementptr inbounds %struct.GPR, %struct.GPR* %1504, i32 0, i32 33
  %1506 = getelementptr inbounds %struct.Reg, %struct.Reg* %1505, i32 0, i32 0
  %PC.i332 = bitcast %union.anon* %1506 to i64*
  %1507 = load i64, i64* %PC.i332
  %1508 = add i64 %1507, 2
  store i64 %1508, i64* %PC.i332
  %1509 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %1510 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %1511 = load i64, i64* %1510, align 8
  %1512 = ashr i64 %1511, 63
  store i64 %1512, i64* %1509, align 8
  store %struct.Memory* %loadMem_400c8d, %struct.Memory** %MEMORY
  %loadMem_400c8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1514 = getelementptr inbounds %struct.GPR, %struct.GPR* %1513, i32 0, i32 33
  %1515 = getelementptr inbounds %struct.Reg, %struct.Reg* %1514, i32 0, i32 0
  %PC.i327 = bitcast %union.anon* %1515 to i64*
  %1516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1517 = getelementptr inbounds %struct.GPR, %struct.GPR* %1516, i32 0, i32 5
  %1518 = getelementptr inbounds %struct.Reg, %struct.Reg* %1517, i32 0, i32 0
  %RCX.i328 = bitcast %union.anon* %1518 to i64*
  %1519 = load i64, i64* %RCX.i328
  %1520 = load i64, i64* %PC.i327
  %1521 = add i64 %1520, 3
  store i64 %1521, i64* %PC.i327
  %1522 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %1523 = load i64, i64* %1522, align 8
  %1524 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %1525 = load i64, i64* %1524, align 8
  %1526 = sext i64 %1519 to i128
  %1527 = and i128 %1526, -18446744073709551616
  %1528 = zext i64 %1525 to i128
  %1529 = shl i128 %1528, 64
  %1530 = zext i64 %1523 to i128
  %1531 = or i128 %1529, %1530
  %1532 = zext i64 %1519 to i128
  %1533 = or i128 %1527, %1532
  %1534 = sdiv i128 %1531, %1533
  %1535 = trunc i128 %1534 to i64
  %1536 = and i128 %1534, 18446744073709551615
  %1537 = sext i64 %1535 to i128
  %1538 = and i128 %1537, -18446744073709551616
  %1539 = or i128 %1538, %1536
  %1540 = icmp eq i128 %1534, %1539
  br i1 %1540, label %1545, label %1541

; <label>:1541:                                   ; preds = %block_.L_400c7a
  %1542 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1543 = load i64, i64* %1542, align 8
  %1544 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1543, %struct.Memory* %loadMem_400c8f)
  br label %routine_idivq__rcx.exit329

; <label>:1545:                                   ; preds = %block_.L_400c7a
  %1546 = srem i128 %1531, %1533
  %1547 = trunc i128 %1546 to i64
  store i64 %1535, i64* %1522, align 8
  store i64 %1547, i64* %1524, align 8
  %1548 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1548, align 1
  %1549 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %1549, align 1
  %1550 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1550, align 1
  %1551 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1551, align 1
  %1552 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1552, align 1
  %1553 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1553, align 1
  br label %routine_idivq__rcx.exit329

routine_idivq__rcx.exit329:                       ; preds = %1541, %1545
  %1554 = phi %struct.Memory* [ %1544, %1541 ], [ %loadMem_400c8f, %1545 ]
  store %struct.Memory* %1554, %struct.Memory** %MEMORY
  %loadMem_400c92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1556 = getelementptr inbounds %struct.GPR, %struct.GPR* %1555, i32 0, i32 33
  %1557 = getelementptr inbounds %struct.Reg, %struct.Reg* %1556, i32 0, i32 0
  %PC.i325 = bitcast %union.anon* %1557 to i64*
  %1558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1559 = getelementptr inbounds %struct.GPR, %struct.GPR* %1558, i32 0, i32 1
  %1560 = getelementptr inbounds %struct.Reg, %struct.Reg* %1559, i32 0, i32 0
  %RAX.i326 = bitcast %union.anon* %1560 to i64*
  %1561 = load i64, i64* %RAX.i326
  %1562 = load i64, i64* %PC.i325
  %1563 = add i64 %1562, 4
  store i64 %1563, i64* %PC.i325
  %1564 = sub i64 %1561, 1
  store i64 %1564, i64* %RAX.i326, align 8
  %1565 = icmp ult i64 %1561, 1
  %1566 = zext i1 %1565 to i8
  %1567 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1566, i8* %1567, align 1
  %1568 = trunc i64 %1564 to i32
  %1569 = and i32 %1568, 255
  %1570 = call i32 @llvm.ctpop.i32(i32 %1569)
  %1571 = trunc i32 %1570 to i8
  %1572 = and i8 %1571, 1
  %1573 = xor i8 %1572, 1
  %1574 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1573, i8* %1574, align 1
  %1575 = xor i64 1, %1561
  %1576 = xor i64 %1575, %1564
  %1577 = lshr i64 %1576, 4
  %1578 = trunc i64 %1577 to i8
  %1579 = and i8 %1578, 1
  %1580 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1579, i8* %1580, align 1
  %1581 = icmp eq i64 %1564, 0
  %1582 = zext i1 %1581 to i8
  %1583 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1582, i8* %1583, align 1
  %1584 = lshr i64 %1564, 63
  %1585 = trunc i64 %1584 to i8
  %1586 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1585, i8* %1586, align 1
  %1587 = lshr i64 %1561, 63
  %1588 = xor i64 %1584, %1587
  %1589 = add i64 %1588, %1587
  %1590 = icmp eq i64 %1589, 2
  %1591 = zext i1 %1590 to i8
  %1592 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1591, i8* %1592, align 1
  store %struct.Memory* %loadMem_400c92, %struct.Memory** %MEMORY
  %loadMem_400c96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1594 = getelementptr inbounds %struct.GPR, %struct.GPR* %1593, i32 0, i32 33
  %1595 = getelementptr inbounds %struct.Reg, %struct.Reg* %1594, i32 0, i32 0
  %PC.i323 = bitcast %union.anon* %1595 to i64*
  %1596 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1597 = getelementptr inbounds %struct.GPR, %struct.GPR* %1596, i32 0, i32 1
  %1598 = getelementptr inbounds %struct.Reg, %struct.Reg* %1597, i32 0, i32 0
  %RAX.i324 = bitcast %union.anon* %1598 to i64*
  %1599 = load i64, i64* %RAX.i324
  %1600 = load i64, i64* %PC.i323
  %1601 = add i64 %1600, 4
  store i64 %1601, i64* %PC.i323
  %1602 = shl i64 %1599, 5
  %1603 = icmp slt i64 %1602, 0
  %1604 = shl i64 %1602, 1
  store i64 %1604, i64* %RAX.i324, align 8
  %1605 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1606 = zext i1 %1603 to i8
  store i8 %1606, i8* %1605, align 1
  %1607 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1608 = trunc i64 %1604 to i32
  %1609 = and i32 %1608, 254
  %1610 = call i32 @llvm.ctpop.i32(i32 %1609)
  %1611 = trunc i32 %1610 to i8
  %1612 = and i8 %1611, 1
  %1613 = xor i8 %1612, 1
  store i8 %1613, i8* %1607, align 1
  %1614 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1614, align 1
  %1615 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1616 = icmp eq i64 %1604, 0
  %1617 = zext i1 %1616 to i8
  store i8 %1617, i8* %1615, align 1
  %1618 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1619 = lshr i64 %1604, 63
  %1620 = trunc i64 %1619 to i8
  store i8 %1620, i8* %1618, align 1
  %1621 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1621, align 1
  store %struct.Memory* %loadMem_400c96, %struct.Memory** %MEMORY
  %loadMem_400c9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1623 = getelementptr inbounds %struct.GPR, %struct.GPR* %1622, i32 0, i32 33
  %1624 = getelementptr inbounds %struct.Reg, %struct.Reg* %1623, i32 0, i32 0
  %PC.i320 = bitcast %union.anon* %1624 to i64*
  %1625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1626 = getelementptr inbounds %struct.GPR, %struct.GPR* %1625, i32 0, i32 9
  %1627 = getelementptr inbounds %struct.Reg, %struct.Reg* %1626, i32 0, i32 0
  %RSI.i321 = bitcast %union.anon* %1627 to i64*
  %1628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1629 = getelementptr inbounds %struct.GPR, %struct.GPR* %1628, i32 0, i32 15
  %1630 = getelementptr inbounds %struct.Reg, %struct.Reg* %1629, i32 0, i32 0
  %RBP.i322 = bitcast %union.anon* %1630 to i64*
  %1631 = load i64, i64* %RBP.i322
  %1632 = sub i64 %1631, 80
  %1633 = load i64, i64* %PC.i320
  %1634 = add i64 %1633, 4
  store i64 %1634, i64* %PC.i320
  %1635 = inttoptr i64 %1632 to i64*
  %1636 = load i64, i64* %1635
  store i64 %1636, i64* %RSI.i321, align 8
  store %struct.Memory* %loadMem_400c9a, %struct.Memory** %MEMORY
  %loadMem_400c9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1638 = getelementptr inbounds %struct.GPR, %struct.GPR* %1637, i32 0, i32 33
  %1639 = getelementptr inbounds %struct.Reg, %struct.Reg* %1638, i32 0, i32 0
  %PC.i317 = bitcast %union.anon* %1639 to i64*
  %1640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1641 = getelementptr inbounds %struct.GPR, %struct.GPR* %1640, i32 0, i32 1
  %1642 = getelementptr inbounds %struct.Reg, %struct.Reg* %1641, i32 0, i32 0
  %RAX.i318 = bitcast %union.anon* %1642 to i64*
  %1643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1644 = getelementptr inbounds %struct.GPR, %struct.GPR* %1643, i32 0, i32 9
  %1645 = getelementptr inbounds %struct.Reg, %struct.Reg* %1644, i32 0, i32 0
  %RSI.i319 = bitcast %union.anon* %1645 to i64*
  %1646 = load i64, i64* %RSI.i319
  %1647 = load i64, i64* %RAX.i318
  %1648 = load i64, i64* %PC.i317
  %1649 = add i64 %1648, 3
  store i64 %1649, i64* %PC.i317
  %1650 = add i64 %1647, %1646
  store i64 %1650, i64* %RSI.i319, align 8
  %1651 = icmp ult i64 %1650, %1646
  %1652 = icmp ult i64 %1650, %1647
  %1653 = or i1 %1651, %1652
  %1654 = zext i1 %1653 to i8
  %1655 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1654, i8* %1655, align 1
  %1656 = trunc i64 %1650 to i32
  %1657 = and i32 %1656, 255
  %1658 = call i32 @llvm.ctpop.i32(i32 %1657)
  %1659 = trunc i32 %1658 to i8
  %1660 = and i8 %1659, 1
  %1661 = xor i8 %1660, 1
  %1662 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1661, i8* %1662, align 1
  %1663 = xor i64 %1647, %1646
  %1664 = xor i64 %1663, %1650
  %1665 = lshr i64 %1664, 4
  %1666 = trunc i64 %1665 to i8
  %1667 = and i8 %1666, 1
  %1668 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1667, i8* %1668, align 1
  %1669 = icmp eq i64 %1650, 0
  %1670 = zext i1 %1669 to i8
  %1671 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1670, i8* %1671, align 1
  %1672 = lshr i64 %1650, 63
  %1673 = trunc i64 %1672 to i8
  %1674 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1673, i8* %1674, align 1
  %1675 = lshr i64 %1646, 63
  %1676 = lshr i64 %1647, 63
  %1677 = xor i64 %1672, %1675
  %1678 = xor i64 %1672, %1676
  %1679 = add i64 %1677, %1678
  %1680 = icmp eq i64 %1679, 2
  %1681 = zext i1 %1680 to i8
  %1682 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1681, i8* %1682, align 1
  store %struct.Memory* %loadMem_400c9e, %struct.Memory** %MEMORY
  %loadMem_400ca1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1684 = getelementptr inbounds %struct.GPR, %struct.GPR* %1683, i32 0, i32 33
  %1685 = getelementptr inbounds %struct.Reg, %struct.Reg* %1684, i32 0, i32 0
  %PC.i314 = bitcast %union.anon* %1685 to i64*
  %1686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1687 = getelementptr inbounds %struct.GPR, %struct.GPR* %1686, i32 0, i32 1
  %1688 = getelementptr inbounds %struct.Reg, %struct.Reg* %1687, i32 0, i32 0
  %RAX.i315 = bitcast %union.anon* %1688 to i64*
  %1689 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1690 = getelementptr inbounds %struct.GPR, %struct.GPR* %1689, i32 0, i32 9
  %1691 = getelementptr inbounds %struct.Reg, %struct.Reg* %1690, i32 0, i32 0
  %RSI.i316 = bitcast %union.anon* %1691 to i64*
  %1692 = load i64, i64* %RSI.i316
  %1693 = add i64 %1692, 8
  %1694 = load i64, i64* %PC.i314
  %1695 = add i64 %1694, 4
  store i64 %1695, i64* %PC.i314
  %1696 = inttoptr i64 %1693 to i64*
  %1697 = load i64, i64* %1696
  store i64 %1697, i64* %RAX.i315, align 8
  store %struct.Memory* %loadMem_400ca1, %struct.Memory** %MEMORY
  %loadMem_400ca5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1699 = getelementptr inbounds %struct.GPR, %struct.GPR* %1698, i32 0, i32 33
  %1700 = getelementptr inbounds %struct.Reg, %struct.Reg* %1699, i32 0, i32 0
  %PC.i311 = bitcast %union.anon* %1700 to i64*
  %1701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1702 = getelementptr inbounds %struct.GPR, %struct.GPR* %1701, i32 0, i32 9
  %1703 = getelementptr inbounds %struct.Reg, %struct.Reg* %1702, i32 0, i32 0
  %RSI.i312 = bitcast %union.anon* %1703 to i64*
  %1704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1705 = getelementptr inbounds %struct.GPR, %struct.GPR* %1704, i32 0, i32 15
  %1706 = getelementptr inbounds %struct.Reg, %struct.Reg* %1705, i32 0, i32 0
  %RBP.i313 = bitcast %union.anon* %1706 to i64*
  %1707 = load i64, i64* %RBP.i313
  %1708 = sub i64 %1707, 8
  %1709 = load i64, i64* %PC.i311
  %1710 = add i64 %1709, 4
  store i64 %1710, i64* %PC.i311
  %1711 = inttoptr i64 %1708 to i64*
  %1712 = load i64, i64* %1711
  store i64 %1712, i64* %RSI.i312, align 8
  store %struct.Memory* %loadMem_400ca5, %struct.Memory** %MEMORY
  %loadMem_400ca9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1714 = getelementptr inbounds %struct.GPR, %struct.GPR* %1713, i32 0, i32 33
  %1715 = getelementptr inbounds %struct.Reg, %struct.Reg* %1714, i32 0, i32 0
  %PC.i308 = bitcast %union.anon* %1715 to i64*
  %1716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1717 = getelementptr inbounds %struct.GPR, %struct.GPR* %1716, i32 0, i32 11
  %1718 = getelementptr inbounds %struct.Reg, %struct.Reg* %1717, i32 0, i32 0
  %RDI.i309 = bitcast %union.anon* %1718 to i64*
  %1719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1720 = getelementptr inbounds %struct.GPR, %struct.GPR* %1719, i32 0, i32 15
  %1721 = getelementptr inbounds %struct.Reg, %struct.Reg* %1720, i32 0, i32 0
  %RBP.i310 = bitcast %union.anon* %1721 to i64*
  %1722 = load i64, i64* %RBP.i310
  %1723 = sub i64 %1722, 56
  %1724 = load i64, i64* %PC.i308
  %1725 = add i64 %1724, 4
  store i64 %1725, i64* %PC.i308
  %1726 = inttoptr i64 %1723 to i64*
  %1727 = load i64, i64* %1726
  store i64 %1727, i64* %RDI.i309, align 8
  store %struct.Memory* %loadMem_400ca9, %struct.Memory** %MEMORY
  %loadMem_400cad = load %struct.Memory*, %struct.Memory** %MEMORY
  %1728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1729 = getelementptr inbounds %struct.GPR, %struct.GPR* %1728, i32 0, i32 33
  %1730 = getelementptr inbounds %struct.Reg, %struct.Reg* %1729, i32 0, i32 0
  %PC.i306 = bitcast %union.anon* %1730 to i64*
  %1731 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1732 = getelementptr inbounds %struct.GPR, %struct.GPR* %1731, i32 0, i32 11
  %1733 = getelementptr inbounds %struct.Reg, %struct.Reg* %1732, i32 0, i32 0
  %RDI.i307 = bitcast %union.anon* %1733 to i64*
  %1734 = load i64, i64* %RDI.i307
  %1735 = load i64, i64* %PC.i306
  %1736 = add i64 %1735, 4
  store i64 %1736, i64* %PC.i306
  %1737 = sub i64 %1734, 1
  store i64 %1737, i64* %RDI.i307, align 8
  %1738 = icmp ult i64 %1734, 1
  %1739 = zext i1 %1738 to i8
  %1740 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1739, i8* %1740, align 1
  %1741 = trunc i64 %1737 to i32
  %1742 = and i32 %1741, 255
  %1743 = call i32 @llvm.ctpop.i32(i32 %1742)
  %1744 = trunc i32 %1743 to i8
  %1745 = and i8 %1744, 1
  %1746 = xor i8 %1745, 1
  %1747 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1746, i8* %1747, align 1
  %1748 = xor i64 1, %1734
  %1749 = xor i64 %1748, %1737
  %1750 = lshr i64 %1749, 4
  %1751 = trunc i64 %1750 to i8
  %1752 = and i8 %1751, 1
  %1753 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1752, i8* %1753, align 1
  %1754 = icmp eq i64 %1737, 0
  %1755 = zext i1 %1754 to i8
  %1756 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1755, i8* %1756, align 1
  %1757 = lshr i64 %1737, 63
  %1758 = trunc i64 %1757 to i8
  %1759 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1758, i8* %1759, align 1
  %1760 = lshr i64 %1734, 63
  %1761 = xor i64 %1757, %1760
  %1762 = add i64 %1761, %1760
  %1763 = icmp eq i64 %1762, 2
  %1764 = zext i1 %1763 to i8
  %1765 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1764, i8* %1765, align 1
  store %struct.Memory* %loadMem_400cad, %struct.Memory** %MEMORY
  %loadMem_400cb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1766 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1767 = getelementptr inbounds %struct.GPR, %struct.GPR* %1766, i32 0, i32 33
  %1768 = getelementptr inbounds %struct.Reg, %struct.Reg* %1767, i32 0, i32 0
  %PC.i304 = bitcast %union.anon* %1768 to i64*
  %1769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1770 = getelementptr inbounds %struct.GPR, %struct.GPR* %1769, i32 0, i32 11
  %1771 = getelementptr inbounds %struct.Reg, %struct.Reg* %1770, i32 0, i32 0
  %RDI.i305 = bitcast %union.anon* %1771 to i64*
  %1772 = load i64, i64* %RDI.i305
  %1773 = load i64, i64* %PC.i304
  %1774 = add i64 %1773, 4
  store i64 %1774, i64* %PC.i304
  %1775 = shl i64 %1772, 5
  %1776 = icmp slt i64 %1775, 0
  %1777 = shl i64 %1775, 1
  store i64 %1777, i64* %RDI.i305, align 8
  %1778 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1779 = zext i1 %1776 to i8
  store i8 %1779, i8* %1778, align 1
  %1780 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1781 = trunc i64 %1777 to i32
  %1782 = and i32 %1781, 254
  %1783 = call i32 @llvm.ctpop.i32(i32 %1782)
  %1784 = trunc i32 %1783 to i8
  %1785 = and i8 %1784, 1
  %1786 = xor i8 %1785, 1
  store i8 %1786, i8* %1780, align 1
  %1787 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1787, align 1
  %1788 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1789 = icmp eq i64 %1777, 0
  %1790 = zext i1 %1789 to i8
  store i8 %1790, i8* %1788, align 1
  %1791 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1792 = lshr i64 %1777, 63
  %1793 = trunc i64 %1792 to i8
  store i8 %1793, i8* %1791, align 1
  %1794 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1794, align 1
  store %struct.Memory* %loadMem_400cb1, %struct.Memory** %MEMORY
  %loadMem_400cb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1796 = getelementptr inbounds %struct.GPR, %struct.GPR* %1795, i32 0, i32 33
  %1797 = getelementptr inbounds %struct.Reg, %struct.Reg* %1796, i32 0, i32 0
  %PC.i301 = bitcast %union.anon* %1797 to i64*
  %1798 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1799 = getelementptr inbounds %struct.GPR, %struct.GPR* %1798, i32 0, i32 9
  %1800 = getelementptr inbounds %struct.Reg, %struct.Reg* %1799, i32 0, i32 0
  %RSI.i302 = bitcast %union.anon* %1800 to i64*
  %1801 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1802 = getelementptr inbounds %struct.GPR, %struct.GPR* %1801, i32 0, i32 11
  %1803 = getelementptr inbounds %struct.Reg, %struct.Reg* %1802, i32 0, i32 0
  %RDI.i303 = bitcast %union.anon* %1803 to i64*
  %1804 = load i64, i64* %RSI.i302
  %1805 = load i64, i64* %RDI.i303
  %1806 = load i64, i64* %PC.i301
  %1807 = add i64 %1806, 3
  store i64 %1807, i64* %PC.i301
  %1808 = add i64 %1805, %1804
  store i64 %1808, i64* %RSI.i302, align 8
  %1809 = icmp ult i64 %1808, %1804
  %1810 = icmp ult i64 %1808, %1805
  %1811 = or i1 %1809, %1810
  %1812 = zext i1 %1811 to i8
  %1813 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1812, i8* %1813, align 1
  %1814 = trunc i64 %1808 to i32
  %1815 = and i32 %1814, 255
  %1816 = call i32 @llvm.ctpop.i32(i32 %1815)
  %1817 = trunc i32 %1816 to i8
  %1818 = and i8 %1817, 1
  %1819 = xor i8 %1818, 1
  %1820 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1819, i8* %1820, align 1
  %1821 = xor i64 %1805, %1804
  %1822 = xor i64 %1821, %1808
  %1823 = lshr i64 %1822, 4
  %1824 = trunc i64 %1823 to i8
  %1825 = and i8 %1824, 1
  %1826 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1825, i8* %1826, align 1
  %1827 = icmp eq i64 %1808, 0
  %1828 = zext i1 %1827 to i8
  %1829 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1828, i8* %1829, align 1
  %1830 = lshr i64 %1808, 63
  %1831 = trunc i64 %1830 to i8
  %1832 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1831, i8* %1832, align 1
  %1833 = lshr i64 %1804, 63
  %1834 = lshr i64 %1805, 63
  %1835 = xor i64 %1830, %1833
  %1836 = xor i64 %1830, %1834
  %1837 = add i64 %1835, %1836
  %1838 = icmp eq i64 %1837, 2
  %1839 = zext i1 %1838 to i8
  %1840 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1839, i8* %1840, align 1
  store %struct.Memory* %loadMem_400cb5, %struct.Memory** %MEMORY
  %loadMem_400cb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1842 = getelementptr inbounds %struct.GPR, %struct.GPR* %1841, i32 0, i32 33
  %1843 = getelementptr inbounds %struct.Reg, %struct.Reg* %1842, i32 0, i32 0
  %PC.i298 = bitcast %union.anon* %1843 to i64*
  %1844 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1845 = getelementptr inbounds %struct.GPR, %struct.GPR* %1844, i32 0, i32 1
  %1846 = getelementptr inbounds %struct.Reg, %struct.Reg* %1845, i32 0, i32 0
  %RAX.i299 = bitcast %union.anon* %1846 to i64*
  %1847 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1848 = getelementptr inbounds %struct.GPR, %struct.GPR* %1847, i32 0, i32 9
  %1849 = getelementptr inbounds %struct.Reg, %struct.Reg* %1848, i32 0, i32 0
  %RSI.i300 = bitcast %union.anon* %1849 to i64*
  %1850 = load i64, i64* %RSI.i300
  %1851 = add i64 %1850, 8
  %1852 = load i64, i64* %RAX.i299
  %1853 = load i64, i64* %PC.i298
  %1854 = add i64 %1853, 4
  store i64 %1854, i64* %PC.i298
  %1855 = inttoptr i64 %1851 to i64*
  store i64 %1852, i64* %1855
  store %struct.Memory* %loadMem_400cb8, %struct.Memory** %MEMORY
  %loadMem_400cbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1856 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1857 = getelementptr inbounds %struct.GPR, %struct.GPR* %1856, i32 0, i32 33
  %1858 = getelementptr inbounds %struct.Reg, %struct.Reg* %1857, i32 0, i32 0
  %PC.i295 = bitcast %union.anon* %1858 to i64*
  %1859 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1860 = getelementptr inbounds %struct.GPR, %struct.GPR* %1859, i32 0, i32 1
  %1861 = getelementptr inbounds %struct.Reg, %struct.Reg* %1860, i32 0, i32 0
  %RAX.i296 = bitcast %union.anon* %1861 to i64*
  %1862 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1863 = getelementptr inbounds %struct.GPR, %struct.GPR* %1862, i32 0, i32 15
  %1864 = getelementptr inbounds %struct.Reg, %struct.Reg* %1863, i32 0, i32 0
  %RBP.i297 = bitcast %union.anon* %1864 to i64*
  %1865 = load i64, i64* %RBP.i297
  %1866 = sub i64 %1865, 8
  %1867 = load i64, i64* %PC.i295
  %1868 = add i64 %1867, 4
  store i64 %1868, i64* %PC.i295
  %1869 = inttoptr i64 %1866 to i64*
  %1870 = load i64, i64* %1869
  store i64 %1870, i64* %RAX.i296, align 8
  store %struct.Memory* %loadMem_400cbc, %struct.Memory** %MEMORY
  %loadMem_400cc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1872 = getelementptr inbounds %struct.GPR, %struct.GPR* %1871, i32 0, i32 33
  %1873 = getelementptr inbounds %struct.Reg, %struct.Reg* %1872, i32 0, i32 0
  %PC.i292 = bitcast %union.anon* %1873 to i64*
  %1874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1875 = getelementptr inbounds %struct.GPR, %struct.GPR* %1874, i32 0, i32 9
  %1876 = getelementptr inbounds %struct.Reg, %struct.Reg* %1875, i32 0, i32 0
  %RSI.i293 = bitcast %union.anon* %1876 to i64*
  %1877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1878 = getelementptr inbounds %struct.GPR, %struct.GPR* %1877, i32 0, i32 15
  %1879 = getelementptr inbounds %struct.Reg, %struct.Reg* %1878, i32 0, i32 0
  %RBP.i294 = bitcast %union.anon* %1879 to i64*
  %1880 = load i64, i64* %RBP.i294
  %1881 = sub i64 %1880, 56
  %1882 = load i64, i64* %PC.i292
  %1883 = add i64 %1882, 4
  store i64 %1883, i64* %PC.i292
  %1884 = inttoptr i64 %1881 to i64*
  %1885 = load i64, i64* %1884
  store i64 %1885, i64* %RSI.i293, align 8
  store %struct.Memory* %loadMem_400cc0, %struct.Memory** %MEMORY
  %loadMem_400cc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1887 = getelementptr inbounds %struct.GPR, %struct.GPR* %1886, i32 0, i32 33
  %1888 = getelementptr inbounds %struct.Reg, %struct.Reg* %1887, i32 0, i32 0
  %PC.i289 = bitcast %union.anon* %1888 to i64*
  %1889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1890 = getelementptr inbounds %struct.GPR, %struct.GPR* %1889, i32 0, i32 1
  %1891 = getelementptr inbounds %struct.Reg, %struct.Reg* %1890, i32 0, i32 0
  %RAX.i290 = bitcast %union.anon* %1891 to i64*
  %1892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1893 = getelementptr inbounds %struct.GPR, %struct.GPR* %1892, i32 0, i32 15
  %1894 = getelementptr inbounds %struct.Reg, %struct.Reg* %1893, i32 0, i32 0
  %RBP.i291 = bitcast %union.anon* %1894 to i64*
  %1895 = load i64, i64* %RBP.i291
  %1896 = sub i64 %1895, 88
  %1897 = load i64, i64* %RAX.i290
  %1898 = load i64, i64* %PC.i289
  %1899 = add i64 %1898, 4
  store i64 %1899, i64* %PC.i289
  %1900 = inttoptr i64 %1896 to i64*
  store i64 %1897, i64* %1900
  store %struct.Memory* %loadMem_400cc4, %struct.Memory** %MEMORY
  %loadMem_400cc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1902 = getelementptr inbounds %struct.GPR, %struct.GPR* %1901, i32 0, i32 33
  %1903 = getelementptr inbounds %struct.Reg, %struct.Reg* %1902, i32 0, i32 0
  %PC.i286 = bitcast %union.anon* %1903 to i64*
  %1904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1905 = getelementptr inbounds %struct.GPR, %struct.GPR* %1904, i32 0, i32 1
  %1906 = getelementptr inbounds %struct.Reg, %struct.Reg* %1905, i32 0, i32 0
  %RAX.i287 = bitcast %union.anon* %1906 to i64*
  %1907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1908 = getelementptr inbounds %struct.GPR, %struct.GPR* %1907, i32 0, i32 9
  %1909 = getelementptr inbounds %struct.Reg, %struct.Reg* %1908, i32 0, i32 0
  %RSI.i288 = bitcast %union.anon* %1909 to i64*
  %1910 = load i64, i64* %RSI.i288
  %1911 = load i64, i64* %PC.i286
  %1912 = add i64 %1911, 3
  store i64 %1912, i64* %PC.i286
  store i64 %1910, i64* %RAX.i287, align 8
  store %struct.Memory* %loadMem_400cc8, %struct.Memory** %MEMORY
  %loadMem_400ccb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1914 = getelementptr inbounds %struct.GPR, %struct.GPR* %1913, i32 0, i32 33
  %1915 = getelementptr inbounds %struct.Reg, %struct.Reg* %1914, i32 0, i32 0
  %PC.i285 = bitcast %union.anon* %1915 to i64*
  %1916 = load i64, i64* %PC.i285
  %1917 = add i64 %1916, 2
  store i64 %1917, i64* %PC.i285
  %1918 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %1919 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %1920 = load i64, i64* %1919, align 8
  %1921 = ashr i64 %1920, 63
  store i64 %1921, i64* %1918, align 8
  store %struct.Memory* %loadMem_400ccb, %struct.Memory** %MEMORY
  %loadMem_400ccd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1922 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1923 = getelementptr inbounds %struct.GPR, %struct.GPR* %1922, i32 0, i32 33
  %1924 = getelementptr inbounds %struct.Reg, %struct.Reg* %1923, i32 0, i32 0
  %PC.i279 = bitcast %union.anon* %1924 to i64*
  %1925 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1926 = getelementptr inbounds %struct.GPR, %struct.GPR* %1925, i32 0, i32 5
  %1927 = getelementptr inbounds %struct.Reg, %struct.Reg* %1926, i32 0, i32 0
  %RCX.i280 = bitcast %union.anon* %1927 to i64*
  %1928 = load i64, i64* %RCX.i280
  %1929 = load i64, i64* %PC.i279
  %1930 = add i64 %1929, 3
  store i64 %1930, i64* %PC.i279
  %1931 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %1932 = load i64, i64* %1931, align 8
  %1933 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %1934 = load i64, i64* %1933, align 8
  %1935 = sext i64 %1928 to i128
  %1936 = and i128 %1935, -18446744073709551616
  %1937 = zext i64 %1934 to i128
  %1938 = shl i128 %1937, 64
  %1939 = zext i64 %1932 to i128
  %1940 = or i128 %1938, %1939
  %1941 = zext i64 %1928 to i128
  %1942 = or i128 %1936, %1941
  %1943 = sdiv i128 %1940, %1942
  %1944 = trunc i128 %1943 to i64
  %1945 = and i128 %1943, 18446744073709551615
  %1946 = sext i64 %1944 to i128
  %1947 = and i128 %1946, -18446744073709551616
  %1948 = or i128 %1947, %1945
  %1949 = icmp eq i128 %1943, %1948
  br i1 %1949, label %1954, label %1950

; <label>:1950:                                   ; preds = %routine_idivq__rcx.exit329
  %1951 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1952 = load i64, i64* %1951, align 8
  %1953 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1952, %struct.Memory* %loadMem_400ccd)
  br label %routine_idivq__rcx.exit281

; <label>:1954:                                   ; preds = %routine_idivq__rcx.exit329
  %1955 = srem i128 %1940, %1942
  %1956 = trunc i128 %1955 to i64
  store i64 %1944, i64* %1931, align 8
  store i64 %1956, i64* %1933, align 8
  %1957 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1957, align 1
  %1958 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %1958, align 1
  %1959 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1959, align 1
  %1960 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1960, align 1
  %1961 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1961, align 1
  %1962 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1962, align 1
  br label %routine_idivq__rcx.exit281

routine_idivq__rcx.exit281:                       ; preds = %1950, %1954
  %1963 = phi %struct.Memory* [ %1953, %1950 ], [ %loadMem_400ccd, %1954 ]
  store %struct.Memory* %1963, %struct.Memory** %MEMORY
  %loadMem_400cd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1965 = getelementptr inbounds %struct.GPR, %struct.GPR* %1964, i32 0, i32 33
  %1966 = getelementptr inbounds %struct.Reg, %struct.Reg* %1965, i32 0, i32 0
  %PC.i277 = bitcast %union.anon* %1966 to i64*
  %1967 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1968 = getelementptr inbounds %struct.GPR, %struct.GPR* %1967, i32 0, i32 1
  %1969 = getelementptr inbounds %struct.Reg, %struct.Reg* %1968, i32 0, i32 0
  %RAX.i278 = bitcast %union.anon* %1969 to i64*
  %1970 = load i64, i64* %RAX.i278
  %1971 = load i64, i64* %PC.i277
  %1972 = add i64 %1971, 4
  store i64 %1972, i64* %PC.i277
  %1973 = sub i64 %1970, 1
  store i64 %1973, i64* %RAX.i278, align 8
  %1974 = icmp ult i64 %1970, 1
  %1975 = zext i1 %1974 to i8
  %1976 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1975, i8* %1976, align 1
  %1977 = trunc i64 %1973 to i32
  %1978 = and i32 %1977, 255
  %1979 = call i32 @llvm.ctpop.i32(i32 %1978)
  %1980 = trunc i32 %1979 to i8
  %1981 = and i8 %1980, 1
  %1982 = xor i8 %1981, 1
  %1983 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1982, i8* %1983, align 1
  %1984 = xor i64 1, %1970
  %1985 = xor i64 %1984, %1973
  %1986 = lshr i64 %1985, 4
  %1987 = trunc i64 %1986 to i8
  %1988 = and i8 %1987, 1
  %1989 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1988, i8* %1989, align 1
  %1990 = icmp eq i64 %1973, 0
  %1991 = zext i1 %1990 to i8
  %1992 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1991, i8* %1992, align 1
  %1993 = lshr i64 %1973, 63
  %1994 = trunc i64 %1993 to i8
  %1995 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1994, i8* %1995, align 1
  %1996 = lshr i64 %1970, 63
  %1997 = xor i64 %1993, %1996
  %1998 = add i64 %1997, %1996
  %1999 = icmp eq i64 %1998, 2
  %2000 = zext i1 %1999 to i8
  %2001 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2000, i8* %2001, align 1
  store %struct.Memory* %loadMem_400cd0, %struct.Memory** %MEMORY
  %loadMem_400cd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2003 = getelementptr inbounds %struct.GPR, %struct.GPR* %2002, i32 0, i32 33
  %2004 = getelementptr inbounds %struct.Reg, %struct.Reg* %2003, i32 0, i32 0
  %PC.i275 = bitcast %union.anon* %2004 to i64*
  %2005 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2006 = getelementptr inbounds %struct.GPR, %struct.GPR* %2005, i32 0, i32 1
  %2007 = getelementptr inbounds %struct.Reg, %struct.Reg* %2006, i32 0, i32 0
  %RAX.i276 = bitcast %union.anon* %2007 to i64*
  %2008 = load i64, i64* %RAX.i276
  %2009 = load i64, i64* %PC.i275
  %2010 = add i64 %2009, 4
  store i64 %2010, i64* %PC.i275
  %2011 = shl i64 %2008, 5
  %2012 = icmp slt i64 %2011, 0
  %2013 = shl i64 %2011, 1
  store i64 %2013, i64* %RAX.i276, align 8
  %2014 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2015 = zext i1 %2012 to i8
  store i8 %2015, i8* %2014, align 1
  %2016 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2017 = trunc i64 %2013 to i32
  %2018 = and i32 %2017, 254
  %2019 = call i32 @llvm.ctpop.i32(i32 %2018)
  %2020 = trunc i32 %2019 to i8
  %2021 = and i8 %2020, 1
  %2022 = xor i8 %2021, 1
  store i8 %2022, i8* %2016, align 1
  %2023 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2023, align 1
  %2024 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2025 = icmp eq i64 %2013, 0
  %2026 = zext i1 %2025 to i8
  store i8 %2026, i8* %2024, align 1
  %2027 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2028 = lshr i64 %2013, 63
  %2029 = trunc i64 %2028 to i8
  store i8 %2029, i8* %2027, align 1
  %2030 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2030, align 1
  store %struct.Memory* %loadMem_400cd4, %struct.Memory** %MEMORY
  %loadMem_400cd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2031 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2032 = getelementptr inbounds %struct.GPR, %struct.GPR* %2031, i32 0, i32 33
  %2033 = getelementptr inbounds %struct.Reg, %struct.Reg* %2032, i32 0, i32 0
  %PC.i272 = bitcast %union.anon* %2033 to i64*
  %2034 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2035 = getelementptr inbounds %struct.GPR, %struct.GPR* %2034, i32 0, i32 9
  %2036 = getelementptr inbounds %struct.Reg, %struct.Reg* %2035, i32 0, i32 0
  %RSI.i273 = bitcast %union.anon* %2036 to i64*
  %2037 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2038 = getelementptr inbounds %struct.GPR, %struct.GPR* %2037, i32 0, i32 15
  %2039 = getelementptr inbounds %struct.Reg, %struct.Reg* %2038, i32 0, i32 0
  %RBP.i274 = bitcast %union.anon* %2039 to i64*
  %2040 = load i64, i64* %RBP.i274
  %2041 = sub i64 %2040, 88
  %2042 = load i64, i64* %PC.i272
  %2043 = add i64 %2042, 4
  store i64 %2043, i64* %PC.i272
  %2044 = inttoptr i64 %2041 to i64*
  %2045 = load i64, i64* %2044
  store i64 %2045, i64* %RSI.i273, align 8
  store %struct.Memory* %loadMem_400cd8, %struct.Memory** %MEMORY
  %loadMem_400cdc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2046 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2047 = getelementptr inbounds %struct.GPR, %struct.GPR* %2046, i32 0, i32 33
  %2048 = getelementptr inbounds %struct.Reg, %struct.Reg* %2047, i32 0, i32 0
  %PC.i269 = bitcast %union.anon* %2048 to i64*
  %2049 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2050 = getelementptr inbounds %struct.GPR, %struct.GPR* %2049, i32 0, i32 1
  %2051 = getelementptr inbounds %struct.Reg, %struct.Reg* %2050, i32 0, i32 0
  %RAX.i270 = bitcast %union.anon* %2051 to i64*
  %2052 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2053 = getelementptr inbounds %struct.GPR, %struct.GPR* %2052, i32 0, i32 9
  %2054 = getelementptr inbounds %struct.Reg, %struct.Reg* %2053, i32 0, i32 0
  %RSI.i271 = bitcast %union.anon* %2054 to i64*
  %2055 = load i64, i64* %RSI.i271
  %2056 = load i64, i64* %RAX.i270
  %2057 = load i64, i64* %PC.i269
  %2058 = add i64 %2057, 3
  store i64 %2058, i64* %PC.i269
  %2059 = add i64 %2056, %2055
  store i64 %2059, i64* %RSI.i271, align 8
  %2060 = icmp ult i64 %2059, %2055
  %2061 = icmp ult i64 %2059, %2056
  %2062 = or i1 %2060, %2061
  %2063 = zext i1 %2062 to i8
  %2064 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2063, i8* %2064, align 1
  %2065 = trunc i64 %2059 to i32
  %2066 = and i32 %2065, 255
  %2067 = call i32 @llvm.ctpop.i32(i32 %2066)
  %2068 = trunc i32 %2067 to i8
  %2069 = and i8 %2068, 1
  %2070 = xor i8 %2069, 1
  %2071 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2070, i8* %2071, align 1
  %2072 = xor i64 %2056, %2055
  %2073 = xor i64 %2072, %2059
  %2074 = lshr i64 %2073, 4
  %2075 = trunc i64 %2074 to i8
  %2076 = and i8 %2075, 1
  %2077 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2076, i8* %2077, align 1
  %2078 = icmp eq i64 %2059, 0
  %2079 = zext i1 %2078 to i8
  %2080 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2079, i8* %2080, align 1
  %2081 = lshr i64 %2059, 63
  %2082 = trunc i64 %2081 to i8
  %2083 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2082, i8* %2083, align 1
  %2084 = lshr i64 %2055, 63
  %2085 = lshr i64 %2056, 63
  %2086 = xor i64 %2081, %2084
  %2087 = xor i64 %2081, %2085
  %2088 = add i64 %2086, %2087
  %2089 = icmp eq i64 %2088, 2
  %2090 = zext i1 %2089 to i8
  %2091 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2090, i8* %2091, align 1
  store %struct.Memory* %loadMem_400cdc, %struct.Memory** %MEMORY
  %loadMem_400cdf = load %struct.Memory*, %struct.Memory** %MEMORY
  %2092 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2093 = getelementptr inbounds %struct.GPR, %struct.GPR* %2092, i32 0, i32 33
  %2094 = getelementptr inbounds %struct.Reg, %struct.Reg* %2093, i32 0, i32 0
  %PC.i266 = bitcast %union.anon* %2094 to i64*
  %2095 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2096 = getelementptr inbounds %struct.GPR, %struct.GPR* %2095, i32 0, i32 1
  %2097 = getelementptr inbounds %struct.Reg, %struct.Reg* %2096, i32 0, i32 0
  %RAX.i267 = bitcast %union.anon* %2097 to i64*
  %2098 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2099 = getelementptr inbounds %struct.GPR, %struct.GPR* %2098, i32 0, i32 9
  %2100 = getelementptr inbounds %struct.Reg, %struct.Reg* %2099, i32 0, i32 0
  %RSI.i268 = bitcast %union.anon* %2100 to i64*
  %2101 = load i64, i64* %RSI.i268
  %2102 = add i64 %2101, 16
  %2103 = load i64, i64* %PC.i266
  %2104 = add i64 %2103, 4
  store i64 %2104, i64* %PC.i266
  %2105 = inttoptr i64 %2102 to i64*
  %2106 = load i64, i64* %2105
  store i64 %2106, i64* %RAX.i267, align 8
  store %struct.Memory* %loadMem_400cdf, %struct.Memory** %MEMORY
  %loadMem_400ce3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2108 = getelementptr inbounds %struct.GPR, %struct.GPR* %2107, i32 0, i32 33
  %2109 = getelementptr inbounds %struct.Reg, %struct.Reg* %2108, i32 0, i32 0
  %PC.i263 = bitcast %union.anon* %2109 to i64*
  %2110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2111 = getelementptr inbounds %struct.GPR, %struct.GPR* %2110, i32 0, i32 9
  %2112 = getelementptr inbounds %struct.Reg, %struct.Reg* %2111, i32 0, i32 0
  %RSI.i264 = bitcast %union.anon* %2112 to i64*
  %2113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2114 = getelementptr inbounds %struct.GPR, %struct.GPR* %2113, i32 0, i32 15
  %2115 = getelementptr inbounds %struct.Reg, %struct.Reg* %2114, i32 0, i32 0
  %RBP.i265 = bitcast %union.anon* %2115 to i64*
  %2116 = load i64, i64* %RBP.i265
  %2117 = sub i64 %2116, 8
  %2118 = load i64, i64* %PC.i263
  %2119 = add i64 %2118, 4
  store i64 %2119, i64* %PC.i263
  %2120 = inttoptr i64 %2117 to i64*
  %2121 = load i64, i64* %2120
  store i64 %2121, i64* %RSI.i264, align 8
  store %struct.Memory* %loadMem_400ce3, %struct.Memory** %MEMORY
  %loadMem_400ce7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2123 = getelementptr inbounds %struct.GPR, %struct.GPR* %2122, i32 0, i32 33
  %2124 = getelementptr inbounds %struct.Reg, %struct.Reg* %2123, i32 0, i32 0
  %PC.i260 = bitcast %union.anon* %2124 to i64*
  %2125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2126 = getelementptr inbounds %struct.GPR, %struct.GPR* %2125, i32 0, i32 11
  %2127 = getelementptr inbounds %struct.Reg, %struct.Reg* %2126, i32 0, i32 0
  %RDI.i261 = bitcast %union.anon* %2127 to i64*
  %2128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2129 = getelementptr inbounds %struct.GPR, %struct.GPR* %2128, i32 0, i32 15
  %2130 = getelementptr inbounds %struct.Reg, %struct.Reg* %2129, i32 0, i32 0
  %RBP.i262 = bitcast %union.anon* %2130 to i64*
  %2131 = load i64, i64* %RBP.i262
  %2132 = sub i64 %2131, 56
  %2133 = load i64, i64* %PC.i260
  %2134 = add i64 %2133, 4
  store i64 %2134, i64* %PC.i260
  %2135 = inttoptr i64 %2132 to i64*
  %2136 = load i64, i64* %2135
  store i64 %2136, i64* %RDI.i261, align 8
  store %struct.Memory* %loadMem_400ce7, %struct.Memory** %MEMORY
  %loadMem_400ceb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2138 = getelementptr inbounds %struct.GPR, %struct.GPR* %2137, i32 0, i32 33
  %2139 = getelementptr inbounds %struct.Reg, %struct.Reg* %2138, i32 0, i32 0
  %PC.i258 = bitcast %union.anon* %2139 to i64*
  %2140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2141 = getelementptr inbounds %struct.GPR, %struct.GPR* %2140, i32 0, i32 11
  %2142 = getelementptr inbounds %struct.Reg, %struct.Reg* %2141, i32 0, i32 0
  %RDI.i259 = bitcast %union.anon* %2142 to i64*
  %2143 = load i64, i64* %RDI.i259
  %2144 = load i64, i64* %PC.i258
  %2145 = add i64 %2144, 4
  store i64 %2145, i64* %PC.i258
  %2146 = sub i64 %2143, 1
  store i64 %2146, i64* %RDI.i259, align 8
  %2147 = icmp ult i64 %2143, 1
  %2148 = zext i1 %2147 to i8
  %2149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2148, i8* %2149, align 1
  %2150 = trunc i64 %2146 to i32
  %2151 = and i32 %2150, 255
  %2152 = call i32 @llvm.ctpop.i32(i32 %2151)
  %2153 = trunc i32 %2152 to i8
  %2154 = and i8 %2153, 1
  %2155 = xor i8 %2154, 1
  %2156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2155, i8* %2156, align 1
  %2157 = xor i64 1, %2143
  %2158 = xor i64 %2157, %2146
  %2159 = lshr i64 %2158, 4
  %2160 = trunc i64 %2159 to i8
  %2161 = and i8 %2160, 1
  %2162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2161, i8* %2162, align 1
  %2163 = icmp eq i64 %2146, 0
  %2164 = zext i1 %2163 to i8
  %2165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2164, i8* %2165, align 1
  %2166 = lshr i64 %2146, 63
  %2167 = trunc i64 %2166 to i8
  %2168 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2167, i8* %2168, align 1
  %2169 = lshr i64 %2143, 63
  %2170 = xor i64 %2166, %2169
  %2171 = add i64 %2170, %2169
  %2172 = icmp eq i64 %2171, 2
  %2173 = zext i1 %2172 to i8
  %2174 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2173, i8* %2174, align 1
  store %struct.Memory* %loadMem_400ceb, %struct.Memory** %MEMORY
  %loadMem_400cef = load %struct.Memory*, %struct.Memory** %MEMORY
  %2175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2176 = getelementptr inbounds %struct.GPR, %struct.GPR* %2175, i32 0, i32 33
  %2177 = getelementptr inbounds %struct.Reg, %struct.Reg* %2176, i32 0, i32 0
  %PC.i256 = bitcast %union.anon* %2177 to i64*
  %2178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2179 = getelementptr inbounds %struct.GPR, %struct.GPR* %2178, i32 0, i32 11
  %2180 = getelementptr inbounds %struct.Reg, %struct.Reg* %2179, i32 0, i32 0
  %RDI.i257 = bitcast %union.anon* %2180 to i64*
  %2181 = load i64, i64* %RDI.i257
  %2182 = load i64, i64* %PC.i256
  %2183 = add i64 %2182, 4
  store i64 %2183, i64* %PC.i256
  %2184 = shl i64 %2181, 5
  %2185 = icmp slt i64 %2184, 0
  %2186 = shl i64 %2184, 1
  store i64 %2186, i64* %RDI.i257, align 8
  %2187 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2188 = zext i1 %2185 to i8
  store i8 %2188, i8* %2187, align 1
  %2189 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2190 = trunc i64 %2186 to i32
  %2191 = and i32 %2190, 254
  %2192 = call i32 @llvm.ctpop.i32(i32 %2191)
  %2193 = trunc i32 %2192 to i8
  %2194 = and i8 %2193, 1
  %2195 = xor i8 %2194, 1
  store i8 %2195, i8* %2189, align 1
  %2196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2196, align 1
  %2197 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2198 = icmp eq i64 %2186, 0
  %2199 = zext i1 %2198 to i8
  store i8 %2199, i8* %2197, align 1
  %2200 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2201 = lshr i64 %2186, 63
  %2202 = trunc i64 %2201 to i8
  store i8 %2202, i8* %2200, align 1
  %2203 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2203, align 1
  store %struct.Memory* %loadMem_400cef, %struct.Memory** %MEMORY
  %loadMem_400cf3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2205 = getelementptr inbounds %struct.GPR, %struct.GPR* %2204, i32 0, i32 33
  %2206 = getelementptr inbounds %struct.Reg, %struct.Reg* %2205, i32 0, i32 0
  %PC.i253 = bitcast %union.anon* %2206 to i64*
  %2207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2208 = getelementptr inbounds %struct.GPR, %struct.GPR* %2207, i32 0, i32 9
  %2209 = getelementptr inbounds %struct.Reg, %struct.Reg* %2208, i32 0, i32 0
  %RSI.i254 = bitcast %union.anon* %2209 to i64*
  %2210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2211 = getelementptr inbounds %struct.GPR, %struct.GPR* %2210, i32 0, i32 11
  %2212 = getelementptr inbounds %struct.Reg, %struct.Reg* %2211, i32 0, i32 0
  %RDI.i255 = bitcast %union.anon* %2212 to i64*
  %2213 = load i64, i64* %RSI.i254
  %2214 = load i64, i64* %RDI.i255
  %2215 = load i64, i64* %PC.i253
  %2216 = add i64 %2215, 3
  store i64 %2216, i64* %PC.i253
  %2217 = add i64 %2214, %2213
  store i64 %2217, i64* %RSI.i254, align 8
  %2218 = icmp ult i64 %2217, %2213
  %2219 = icmp ult i64 %2217, %2214
  %2220 = or i1 %2218, %2219
  %2221 = zext i1 %2220 to i8
  %2222 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2221, i8* %2222, align 1
  %2223 = trunc i64 %2217 to i32
  %2224 = and i32 %2223, 255
  %2225 = call i32 @llvm.ctpop.i32(i32 %2224)
  %2226 = trunc i32 %2225 to i8
  %2227 = and i8 %2226, 1
  %2228 = xor i8 %2227, 1
  %2229 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2228, i8* %2229, align 1
  %2230 = xor i64 %2214, %2213
  %2231 = xor i64 %2230, %2217
  %2232 = lshr i64 %2231, 4
  %2233 = trunc i64 %2232 to i8
  %2234 = and i8 %2233, 1
  %2235 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2234, i8* %2235, align 1
  %2236 = icmp eq i64 %2217, 0
  %2237 = zext i1 %2236 to i8
  %2238 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2237, i8* %2238, align 1
  %2239 = lshr i64 %2217, 63
  %2240 = trunc i64 %2239 to i8
  %2241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2240, i8* %2241, align 1
  %2242 = lshr i64 %2213, 63
  %2243 = lshr i64 %2214, 63
  %2244 = xor i64 %2239, %2242
  %2245 = xor i64 %2239, %2243
  %2246 = add i64 %2244, %2245
  %2247 = icmp eq i64 %2246, 2
  %2248 = zext i1 %2247 to i8
  %2249 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2248, i8* %2249, align 1
  store %struct.Memory* %loadMem_400cf3, %struct.Memory** %MEMORY
  %loadMem_400cf6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2251 = getelementptr inbounds %struct.GPR, %struct.GPR* %2250, i32 0, i32 33
  %2252 = getelementptr inbounds %struct.Reg, %struct.Reg* %2251, i32 0, i32 0
  %PC.i250 = bitcast %union.anon* %2252 to i64*
  %2253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2254 = getelementptr inbounds %struct.GPR, %struct.GPR* %2253, i32 0, i32 1
  %2255 = getelementptr inbounds %struct.Reg, %struct.Reg* %2254, i32 0, i32 0
  %RAX.i251 = bitcast %union.anon* %2255 to i64*
  %2256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2257 = getelementptr inbounds %struct.GPR, %struct.GPR* %2256, i32 0, i32 9
  %2258 = getelementptr inbounds %struct.Reg, %struct.Reg* %2257, i32 0, i32 0
  %RSI.i252 = bitcast %union.anon* %2258 to i64*
  %2259 = load i64, i64* %RSI.i252
  %2260 = add i64 %2259, 16
  %2261 = load i64, i64* %RAX.i251
  %2262 = load i64, i64* %PC.i250
  %2263 = add i64 %2262, 4
  store i64 %2263, i64* %PC.i250
  %2264 = inttoptr i64 %2260 to i64*
  store i64 %2261, i64* %2264
  store %struct.Memory* %loadMem_400cf6, %struct.Memory** %MEMORY
  %loadMem_400cfa = load %struct.Memory*, %struct.Memory** %MEMORY
  %2265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2266 = getelementptr inbounds %struct.GPR, %struct.GPR* %2265, i32 0, i32 33
  %2267 = getelementptr inbounds %struct.Reg, %struct.Reg* %2266, i32 0, i32 0
  %PC.i247 = bitcast %union.anon* %2267 to i64*
  %2268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2269 = getelementptr inbounds %struct.GPR, %struct.GPR* %2268, i32 0, i32 1
  %2270 = getelementptr inbounds %struct.Reg, %struct.Reg* %2269, i32 0, i32 0
  %RAX.i248 = bitcast %union.anon* %2270 to i64*
  %2271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2272 = getelementptr inbounds %struct.GPR, %struct.GPR* %2271, i32 0, i32 15
  %2273 = getelementptr inbounds %struct.Reg, %struct.Reg* %2272, i32 0, i32 0
  %RBP.i249 = bitcast %union.anon* %2273 to i64*
  %2274 = load i64, i64* %RBP.i249
  %2275 = sub i64 %2274, 8
  %2276 = load i64, i64* %PC.i247
  %2277 = add i64 %2276, 4
  store i64 %2277, i64* %PC.i247
  %2278 = inttoptr i64 %2275 to i64*
  %2279 = load i64, i64* %2278
  store i64 %2279, i64* %RAX.i248, align 8
  store %struct.Memory* %loadMem_400cfa, %struct.Memory** %MEMORY
  %loadMem_400cfe = load %struct.Memory*, %struct.Memory** %MEMORY
  %2280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2281 = getelementptr inbounds %struct.GPR, %struct.GPR* %2280, i32 0, i32 33
  %2282 = getelementptr inbounds %struct.Reg, %struct.Reg* %2281, i32 0, i32 0
  %PC.i244 = bitcast %union.anon* %2282 to i64*
  %2283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2284 = getelementptr inbounds %struct.GPR, %struct.GPR* %2283, i32 0, i32 9
  %2285 = getelementptr inbounds %struct.Reg, %struct.Reg* %2284, i32 0, i32 0
  %RSI.i245 = bitcast %union.anon* %2285 to i64*
  %2286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2287 = getelementptr inbounds %struct.GPR, %struct.GPR* %2286, i32 0, i32 15
  %2288 = getelementptr inbounds %struct.Reg, %struct.Reg* %2287, i32 0, i32 0
  %RBP.i246 = bitcast %union.anon* %2288 to i64*
  %2289 = load i64, i64* %RBP.i246
  %2290 = sub i64 %2289, 56
  %2291 = load i64, i64* %PC.i244
  %2292 = add i64 %2291, 4
  store i64 %2292, i64* %PC.i244
  %2293 = inttoptr i64 %2290 to i64*
  %2294 = load i64, i64* %2293
  store i64 %2294, i64* %RSI.i245, align 8
  store %struct.Memory* %loadMem_400cfe, %struct.Memory** %MEMORY
  %loadMem_400d02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2296 = getelementptr inbounds %struct.GPR, %struct.GPR* %2295, i32 0, i32 33
  %2297 = getelementptr inbounds %struct.Reg, %struct.Reg* %2296, i32 0, i32 0
  %PC.i241 = bitcast %union.anon* %2297 to i64*
  %2298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2299 = getelementptr inbounds %struct.GPR, %struct.GPR* %2298, i32 0, i32 1
  %2300 = getelementptr inbounds %struct.Reg, %struct.Reg* %2299, i32 0, i32 0
  %RAX.i242 = bitcast %union.anon* %2300 to i64*
  %2301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2302 = getelementptr inbounds %struct.GPR, %struct.GPR* %2301, i32 0, i32 15
  %2303 = getelementptr inbounds %struct.Reg, %struct.Reg* %2302, i32 0, i32 0
  %RBP.i243 = bitcast %union.anon* %2303 to i64*
  %2304 = load i64, i64* %RBP.i243
  %2305 = sub i64 %2304, 96
  %2306 = load i64, i64* %RAX.i242
  %2307 = load i64, i64* %PC.i241
  %2308 = add i64 %2307, 4
  store i64 %2308, i64* %PC.i241
  %2309 = inttoptr i64 %2305 to i64*
  store i64 %2306, i64* %2309
  store %struct.Memory* %loadMem_400d02, %struct.Memory** %MEMORY
  %loadMem_400d06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2311 = getelementptr inbounds %struct.GPR, %struct.GPR* %2310, i32 0, i32 33
  %2312 = getelementptr inbounds %struct.Reg, %struct.Reg* %2311, i32 0, i32 0
  %PC.i238 = bitcast %union.anon* %2312 to i64*
  %2313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2314 = getelementptr inbounds %struct.GPR, %struct.GPR* %2313, i32 0, i32 1
  %2315 = getelementptr inbounds %struct.Reg, %struct.Reg* %2314, i32 0, i32 0
  %RAX.i239 = bitcast %union.anon* %2315 to i64*
  %2316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2317 = getelementptr inbounds %struct.GPR, %struct.GPR* %2316, i32 0, i32 9
  %2318 = getelementptr inbounds %struct.Reg, %struct.Reg* %2317, i32 0, i32 0
  %RSI.i240 = bitcast %union.anon* %2318 to i64*
  %2319 = load i64, i64* %RSI.i240
  %2320 = load i64, i64* %PC.i238
  %2321 = add i64 %2320, 3
  store i64 %2321, i64* %PC.i238
  store i64 %2319, i64* %RAX.i239, align 8
  store %struct.Memory* %loadMem_400d06, %struct.Memory** %MEMORY
  %loadMem_400d09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2322 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2323 = getelementptr inbounds %struct.GPR, %struct.GPR* %2322, i32 0, i32 33
  %2324 = getelementptr inbounds %struct.Reg, %struct.Reg* %2323, i32 0, i32 0
  %PC.i237 = bitcast %union.anon* %2324 to i64*
  %2325 = load i64, i64* %PC.i237
  %2326 = add i64 %2325, 2
  store i64 %2326, i64* %PC.i237
  %2327 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %2328 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %2329 = load i64, i64* %2328, align 8
  %2330 = ashr i64 %2329, 63
  store i64 %2330, i64* %2327, align 8
  store %struct.Memory* %loadMem_400d09, %struct.Memory** %MEMORY
  %loadMem_400d0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2332 = getelementptr inbounds %struct.GPR, %struct.GPR* %2331, i32 0, i32 33
  %2333 = getelementptr inbounds %struct.Reg, %struct.Reg* %2332, i32 0, i32 0
  %PC.i232 = bitcast %union.anon* %2333 to i64*
  %2334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2335 = getelementptr inbounds %struct.GPR, %struct.GPR* %2334, i32 0, i32 5
  %2336 = getelementptr inbounds %struct.Reg, %struct.Reg* %2335, i32 0, i32 0
  %RCX.i233 = bitcast %union.anon* %2336 to i64*
  %2337 = load i64, i64* %RCX.i233
  %2338 = load i64, i64* %PC.i232
  %2339 = add i64 %2338, 3
  store i64 %2339, i64* %PC.i232
  %2340 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %2341 = load i64, i64* %2340, align 8
  %2342 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %2343 = load i64, i64* %2342, align 8
  %2344 = sext i64 %2337 to i128
  %2345 = and i128 %2344, -18446744073709551616
  %2346 = zext i64 %2343 to i128
  %2347 = shl i128 %2346, 64
  %2348 = zext i64 %2341 to i128
  %2349 = or i128 %2347, %2348
  %2350 = zext i64 %2337 to i128
  %2351 = or i128 %2345, %2350
  %2352 = sdiv i128 %2349, %2351
  %2353 = trunc i128 %2352 to i64
  %2354 = and i128 %2352, 18446744073709551615
  %2355 = sext i64 %2353 to i128
  %2356 = and i128 %2355, -18446744073709551616
  %2357 = or i128 %2356, %2354
  %2358 = icmp eq i128 %2352, %2357
  br i1 %2358, label %2363, label %2359

; <label>:2359:                                   ; preds = %routine_idivq__rcx.exit281
  %2360 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2361 = load i64, i64* %2360, align 8
  %2362 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2361, %struct.Memory* %loadMem_400d0b)
  br label %routine_idivq__rcx.exit234

; <label>:2363:                                   ; preds = %routine_idivq__rcx.exit281
  %2364 = srem i128 %2349, %2351
  %2365 = trunc i128 %2364 to i64
  store i64 %2353, i64* %2340, align 8
  store i64 %2365, i64* %2342, align 8
  %2366 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2366, align 1
  %2367 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %2367, align 1
  %2368 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2368, align 1
  %2369 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2369, align 1
  %2370 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2370, align 1
  %2371 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2371, align 1
  br label %routine_idivq__rcx.exit234

routine_idivq__rcx.exit234:                       ; preds = %2359, %2363
  %2372 = phi %struct.Memory* [ %2362, %2359 ], [ %loadMem_400d0b, %2363 ]
  store %struct.Memory* %2372, %struct.Memory** %MEMORY
  %loadMem_400d0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2374 = getelementptr inbounds %struct.GPR, %struct.GPR* %2373, i32 0, i32 33
  %2375 = getelementptr inbounds %struct.Reg, %struct.Reg* %2374, i32 0, i32 0
  %PC.i230 = bitcast %union.anon* %2375 to i64*
  %2376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2377 = getelementptr inbounds %struct.GPR, %struct.GPR* %2376, i32 0, i32 1
  %2378 = getelementptr inbounds %struct.Reg, %struct.Reg* %2377, i32 0, i32 0
  %RAX.i231 = bitcast %union.anon* %2378 to i64*
  %2379 = load i64, i64* %RAX.i231
  %2380 = load i64, i64* %PC.i230
  %2381 = add i64 %2380, 4
  store i64 %2381, i64* %PC.i230
  %2382 = sub i64 %2379, 1
  store i64 %2382, i64* %RAX.i231, align 8
  %2383 = icmp ult i64 %2379, 1
  %2384 = zext i1 %2383 to i8
  %2385 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2384, i8* %2385, align 1
  %2386 = trunc i64 %2382 to i32
  %2387 = and i32 %2386, 255
  %2388 = call i32 @llvm.ctpop.i32(i32 %2387)
  %2389 = trunc i32 %2388 to i8
  %2390 = and i8 %2389, 1
  %2391 = xor i8 %2390, 1
  %2392 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2391, i8* %2392, align 1
  %2393 = xor i64 1, %2379
  %2394 = xor i64 %2393, %2382
  %2395 = lshr i64 %2394, 4
  %2396 = trunc i64 %2395 to i8
  %2397 = and i8 %2396, 1
  %2398 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2397, i8* %2398, align 1
  %2399 = icmp eq i64 %2382, 0
  %2400 = zext i1 %2399 to i8
  %2401 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2400, i8* %2401, align 1
  %2402 = lshr i64 %2382, 63
  %2403 = trunc i64 %2402 to i8
  %2404 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2403, i8* %2404, align 1
  %2405 = lshr i64 %2379, 63
  %2406 = xor i64 %2402, %2405
  %2407 = add i64 %2406, %2405
  %2408 = icmp eq i64 %2407, 2
  %2409 = zext i1 %2408 to i8
  %2410 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2409, i8* %2410, align 1
  store %struct.Memory* %loadMem_400d0e, %struct.Memory** %MEMORY
  %loadMem_400d12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2412 = getelementptr inbounds %struct.GPR, %struct.GPR* %2411, i32 0, i32 33
  %2413 = getelementptr inbounds %struct.Reg, %struct.Reg* %2412, i32 0, i32 0
  %PC.i228 = bitcast %union.anon* %2413 to i64*
  %2414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2415 = getelementptr inbounds %struct.GPR, %struct.GPR* %2414, i32 0, i32 1
  %2416 = getelementptr inbounds %struct.Reg, %struct.Reg* %2415, i32 0, i32 0
  %RAX.i229 = bitcast %union.anon* %2416 to i64*
  %2417 = load i64, i64* %RAX.i229
  %2418 = load i64, i64* %PC.i228
  %2419 = add i64 %2418, 4
  store i64 %2419, i64* %PC.i228
  %2420 = shl i64 %2417, 5
  %2421 = icmp slt i64 %2420, 0
  %2422 = shl i64 %2420, 1
  store i64 %2422, i64* %RAX.i229, align 8
  %2423 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2424 = zext i1 %2421 to i8
  store i8 %2424, i8* %2423, align 1
  %2425 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2426 = trunc i64 %2422 to i32
  %2427 = and i32 %2426, 254
  %2428 = call i32 @llvm.ctpop.i32(i32 %2427)
  %2429 = trunc i32 %2428 to i8
  %2430 = and i8 %2429, 1
  %2431 = xor i8 %2430, 1
  store i8 %2431, i8* %2425, align 1
  %2432 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2432, align 1
  %2433 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2434 = icmp eq i64 %2422, 0
  %2435 = zext i1 %2434 to i8
  store i8 %2435, i8* %2433, align 1
  %2436 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2437 = lshr i64 %2422, 63
  %2438 = trunc i64 %2437 to i8
  store i8 %2438, i8* %2436, align 1
  %2439 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2439, align 1
  store %struct.Memory* %loadMem_400d12, %struct.Memory** %MEMORY
  %loadMem_400d16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2441 = getelementptr inbounds %struct.GPR, %struct.GPR* %2440, i32 0, i32 33
  %2442 = getelementptr inbounds %struct.Reg, %struct.Reg* %2441, i32 0, i32 0
  %PC.i225 = bitcast %union.anon* %2442 to i64*
  %2443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2444 = getelementptr inbounds %struct.GPR, %struct.GPR* %2443, i32 0, i32 9
  %2445 = getelementptr inbounds %struct.Reg, %struct.Reg* %2444, i32 0, i32 0
  %RSI.i226 = bitcast %union.anon* %2445 to i64*
  %2446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2447 = getelementptr inbounds %struct.GPR, %struct.GPR* %2446, i32 0, i32 15
  %2448 = getelementptr inbounds %struct.Reg, %struct.Reg* %2447, i32 0, i32 0
  %RBP.i227 = bitcast %union.anon* %2448 to i64*
  %2449 = load i64, i64* %RBP.i227
  %2450 = sub i64 %2449, 96
  %2451 = load i64, i64* %PC.i225
  %2452 = add i64 %2451, 4
  store i64 %2452, i64* %PC.i225
  %2453 = inttoptr i64 %2450 to i64*
  %2454 = load i64, i64* %2453
  store i64 %2454, i64* %RSI.i226, align 8
  store %struct.Memory* %loadMem_400d16, %struct.Memory** %MEMORY
  %loadMem_400d1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2455 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2456 = getelementptr inbounds %struct.GPR, %struct.GPR* %2455, i32 0, i32 33
  %2457 = getelementptr inbounds %struct.Reg, %struct.Reg* %2456, i32 0, i32 0
  %PC.i222 = bitcast %union.anon* %2457 to i64*
  %2458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2459 = getelementptr inbounds %struct.GPR, %struct.GPR* %2458, i32 0, i32 1
  %2460 = getelementptr inbounds %struct.Reg, %struct.Reg* %2459, i32 0, i32 0
  %RAX.i223 = bitcast %union.anon* %2460 to i64*
  %2461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2462 = getelementptr inbounds %struct.GPR, %struct.GPR* %2461, i32 0, i32 9
  %2463 = getelementptr inbounds %struct.Reg, %struct.Reg* %2462, i32 0, i32 0
  %RSI.i224 = bitcast %union.anon* %2463 to i64*
  %2464 = load i64, i64* %RSI.i224
  %2465 = load i64, i64* %RAX.i223
  %2466 = load i64, i64* %PC.i222
  %2467 = add i64 %2466, 3
  store i64 %2467, i64* %PC.i222
  %2468 = add i64 %2465, %2464
  store i64 %2468, i64* %RSI.i224, align 8
  %2469 = icmp ult i64 %2468, %2464
  %2470 = icmp ult i64 %2468, %2465
  %2471 = or i1 %2469, %2470
  %2472 = zext i1 %2471 to i8
  %2473 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2472, i8* %2473, align 1
  %2474 = trunc i64 %2468 to i32
  %2475 = and i32 %2474, 255
  %2476 = call i32 @llvm.ctpop.i32(i32 %2475)
  %2477 = trunc i32 %2476 to i8
  %2478 = and i8 %2477, 1
  %2479 = xor i8 %2478, 1
  %2480 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2479, i8* %2480, align 1
  %2481 = xor i64 %2465, %2464
  %2482 = xor i64 %2481, %2468
  %2483 = lshr i64 %2482, 4
  %2484 = trunc i64 %2483 to i8
  %2485 = and i8 %2484, 1
  %2486 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2485, i8* %2486, align 1
  %2487 = icmp eq i64 %2468, 0
  %2488 = zext i1 %2487 to i8
  %2489 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2488, i8* %2489, align 1
  %2490 = lshr i64 %2468, 63
  %2491 = trunc i64 %2490 to i8
  %2492 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2491, i8* %2492, align 1
  %2493 = lshr i64 %2464, 63
  %2494 = lshr i64 %2465, 63
  %2495 = xor i64 %2490, %2493
  %2496 = xor i64 %2490, %2494
  %2497 = add i64 %2495, %2496
  %2498 = icmp eq i64 %2497, 2
  %2499 = zext i1 %2498 to i8
  %2500 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2499, i8* %2500, align 1
  store %struct.Memory* %loadMem_400d1a, %struct.Memory** %MEMORY
  %loadMem_400d1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2502 = getelementptr inbounds %struct.GPR, %struct.GPR* %2501, i32 0, i32 33
  %2503 = getelementptr inbounds %struct.Reg, %struct.Reg* %2502, i32 0, i32 0
  %PC.i219 = bitcast %union.anon* %2503 to i64*
  %2504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2505 = getelementptr inbounds %struct.GPR, %struct.GPR* %2504, i32 0, i32 1
  %2506 = getelementptr inbounds %struct.Reg, %struct.Reg* %2505, i32 0, i32 0
  %RAX.i220 = bitcast %union.anon* %2506 to i64*
  %2507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2508 = getelementptr inbounds %struct.GPR, %struct.GPR* %2507, i32 0, i32 9
  %2509 = getelementptr inbounds %struct.Reg, %struct.Reg* %2508, i32 0, i32 0
  %RSI.i221 = bitcast %union.anon* %2509 to i64*
  %2510 = load i64, i64* %RSI.i221
  %2511 = load i64, i64* %PC.i219
  %2512 = add i64 %2511, 3
  store i64 %2512, i64* %PC.i219
  %2513 = inttoptr i64 %2510 to i64*
  %2514 = load i64, i64* %2513
  store i64 %2514, i64* %RAX.i220, align 8
  store %struct.Memory* %loadMem_400d1d, %struct.Memory** %MEMORY
  %loadMem_400d20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2516 = getelementptr inbounds %struct.GPR, %struct.GPR* %2515, i32 0, i32 33
  %2517 = getelementptr inbounds %struct.Reg, %struct.Reg* %2516, i32 0, i32 0
  %PC.i216 = bitcast %union.anon* %2517 to i64*
  %2518 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2519 = getelementptr inbounds %struct.GPR, %struct.GPR* %2518, i32 0, i32 9
  %2520 = getelementptr inbounds %struct.Reg, %struct.Reg* %2519, i32 0, i32 0
  %RSI.i217 = bitcast %union.anon* %2520 to i64*
  %2521 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2522 = getelementptr inbounds %struct.GPR, %struct.GPR* %2521, i32 0, i32 15
  %2523 = getelementptr inbounds %struct.Reg, %struct.Reg* %2522, i32 0, i32 0
  %RBP.i218 = bitcast %union.anon* %2523 to i64*
  %2524 = load i64, i64* %RBP.i218
  %2525 = sub i64 %2524, 8
  %2526 = load i64, i64* %PC.i216
  %2527 = add i64 %2526, 4
  store i64 %2527, i64* %PC.i216
  %2528 = inttoptr i64 %2525 to i64*
  %2529 = load i64, i64* %2528
  store i64 %2529, i64* %RSI.i217, align 8
  store %struct.Memory* %loadMem_400d20, %struct.Memory** %MEMORY
  %loadMem_400d24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2531 = getelementptr inbounds %struct.GPR, %struct.GPR* %2530, i32 0, i32 33
  %2532 = getelementptr inbounds %struct.Reg, %struct.Reg* %2531, i32 0, i32 0
  %PC.i213 = bitcast %union.anon* %2532 to i64*
  %2533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2534 = getelementptr inbounds %struct.GPR, %struct.GPR* %2533, i32 0, i32 11
  %2535 = getelementptr inbounds %struct.Reg, %struct.Reg* %2534, i32 0, i32 0
  %RDI.i214 = bitcast %union.anon* %2535 to i64*
  %2536 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2537 = getelementptr inbounds %struct.GPR, %struct.GPR* %2536, i32 0, i32 15
  %2538 = getelementptr inbounds %struct.Reg, %struct.Reg* %2537, i32 0, i32 0
  %RBP.i215 = bitcast %union.anon* %2538 to i64*
  %2539 = load i64, i64* %RBP.i215
  %2540 = sub i64 %2539, 56
  %2541 = load i64, i64* %PC.i213
  %2542 = add i64 %2541, 4
  store i64 %2542, i64* %PC.i213
  %2543 = inttoptr i64 %2540 to i64*
  %2544 = load i64, i64* %2543
  store i64 %2544, i64* %RDI.i214, align 8
  store %struct.Memory* %loadMem_400d24, %struct.Memory** %MEMORY
  %loadMem_400d28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2545 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2546 = getelementptr inbounds %struct.GPR, %struct.GPR* %2545, i32 0, i32 33
  %2547 = getelementptr inbounds %struct.Reg, %struct.Reg* %2546, i32 0, i32 0
  %PC.i211 = bitcast %union.anon* %2547 to i64*
  %2548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2549 = getelementptr inbounds %struct.GPR, %struct.GPR* %2548, i32 0, i32 11
  %2550 = getelementptr inbounds %struct.Reg, %struct.Reg* %2549, i32 0, i32 0
  %RDI.i212 = bitcast %union.anon* %2550 to i64*
  %2551 = load i64, i64* %RDI.i212
  %2552 = load i64, i64* %PC.i211
  %2553 = add i64 %2552, 4
  store i64 %2553, i64* %PC.i211
  %2554 = sub i64 %2551, 1
  store i64 %2554, i64* %RDI.i212, align 8
  %2555 = icmp ult i64 %2551, 1
  %2556 = zext i1 %2555 to i8
  %2557 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2556, i8* %2557, align 1
  %2558 = trunc i64 %2554 to i32
  %2559 = and i32 %2558, 255
  %2560 = call i32 @llvm.ctpop.i32(i32 %2559)
  %2561 = trunc i32 %2560 to i8
  %2562 = and i8 %2561, 1
  %2563 = xor i8 %2562, 1
  %2564 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2563, i8* %2564, align 1
  %2565 = xor i64 1, %2551
  %2566 = xor i64 %2565, %2554
  %2567 = lshr i64 %2566, 4
  %2568 = trunc i64 %2567 to i8
  %2569 = and i8 %2568, 1
  %2570 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2569, i8* %2570, align 1
  %2571 = icmp eq i64 %2554, 0
  %2572 = zext i1 %2571 to i8
  %2573 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2572, i8* %2573, align 1
  %2574 = lshr i64 %2554, 63
  %2575 = trunc i64 %2574 to i8
  %2576 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2575, i8* %2576, align 1
  %2577 = lshr i64 %2551, 63
  %2578 = xor i64 %2574, %2577
  %2579 = add i64 %2578, %2577
  %2580 = icmp eq i64 %2579, 2
  %2581 = zext i1 %2580 to i8
  %2582 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2581, i8* %2582, align 1
  store %struct.Memory* %loadMem_400d28, %struct.Memory** %MEMORY
  %loadMem_400d2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2584 = getelementptr inbounds %struct.GPR, %struct.GPR* %2583, i32 0, i32 33
  %2585 = getelementptr inbounds %struct.Reg, %struct.Reg* %2584, i32 0, i32 0
  %PC.i209 = bitcast %union.anon* %2585 to i64*
  %2586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2587 = getelementptr inbounds %struct.GPR, %struct.GPR* %2586, i32 0, i32 11
  %2588 = getelementptr inbounds %struct.Reg, %struct.Reg* %2587, i32 0, i32 0
  %RDI.i210 = bitcast %union.anon* %2588 to i64*
  %2589 = load i64, i64* %RDI.i210
  %2590 = load i64, i64* %PC.i209
  %2591 = add i64 %2590, 4
  store i64 %2591, i64* %PC.i209
  %2592 = shl i64 %2589, 5
  %2593 = icmp slt i64 %2592, 0
  %2594 = shl i64 %2592, 1
  store i64 %2594, i64* %RDI.i210, align 8
  %2595 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2596 = zext i1 %2593 to i8
  store i8 %2596, i8* %2595, align 1
  %2597 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2598 = trunc i64 %2594 to i32
  %2599 = and i32 %2598, 254
  %2600 = call i32 @llvm.ctpop.i32(i32 %2599)
  %2601 = trunc i32 %2600 to i8
  %2602 = and i8 %2601, 1
  %2603 = xor i8 %2602, 1
  store i8 %2603, i8* %2597, align 1
  %2604 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2604, align 1
  %2605 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2606 = icmp eq i64 %2594, 0
  %2607 = zext i1 %2606 to i8
  store i8 %2607, i8* %2605, align 1
  %2608 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2609 = lshr i64 %2594, 63
  %2610 = trunc i64 %2609 to i8
  store i8 %2610, i8* %2608, align 1
  %2611 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2611, align 1
  store %struct.Memory* %loadMem_400d2c, %struct.Memory** %MEMORY
  %loadMem_400d30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2613 = getelementptr inbounds %struct.GPR, %struct.GPR* %2612, i32 0, i32 33
  %2614 = getelementptr inbounds %struct.Reg, %struct.Reg* %2613, i32 0, i32 0
  %PC.i206 = bitcast %union.anon* %2614 to i64*
  %2615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2616 = getelementptr inbounds %struct.GPR, %struct.GPR* %2615, i32 0, i32 9
  %2617 = getelementptr inbounds %struct.Reg, %struct.Reg* %2616, i32 0, i32 0
  %RSI.i207 = bitcast %union.anon* %2617 to i64*
  %2618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2619 = getelementptr inbounds %struct.GPR, %struct.GPR* %2618, i32 0, i32 11
  %2620 = getelementptr inbounds %struct.Reg, %struct.Reg* %2619, i32 0, i32 0
  %RDI.i208 = bitcast %union.anon* %2620 to i64*
  %2621 = load i64, i64* %RSI.i207
  %2622 = load i64, i64* %RDI.i208
  %2623 = load i64, i64* %PC.i206
  %2624 = add i64 %2623, 3
  store i64 %2624, i64* %PC.i206
  %2625 = add i64 %2622, %2621
  store i64 %2625, i64* %RSI.i207, align 8
  %2626 = icmp ult i64 %2625, %2621
  %2627 = icmp ult i64 %2625, %2622
  %2628 = or i1 %2626, %2627
  %2629 = zext i1 %2628 to i8
  %2630 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2629, i8* %2630, align 1
  %2631 = trunc i64 %2625 to i32
  %2632 = and i32 %2631, 255
  %2633 = call i32 @llvm.ctpop.i32(i32 %2632)
  %2634 = trunc i32 %2633 to i8
  %2635 = and i8 %2634, 1
  %2636 = xor i8 %2635, 1
  %2637 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2636, i8* %2637, align 1
  %2638 = xor i64 %2622, %2621
  %2639 = xor i64 %2638, %2625
  %2640 = lshr i64 %2639, 4
  %2641 = trunc i64 %2640 to i8
  %2642 = and i8 %2641, 1
  %2643 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2642, i8* %2643, align 1
  %2644 = icmp eq i64 %2625, 0
  %2645 = zext i1 %2644 to i8
  %2646 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2645, i8* %2646, align 1
  %2647 = lshr i64 %2625, 63
  %2648 = trunc i64 %2647 to i8
  %2649 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2648, i8* %2649, align 1
  %2650 = lshr i64 %2621, 63
  %2651 = lshr i64 %2622, 63
  %2652 = xor i64 %2647, %2650
  %2653 = xor i64 %2647, %2651
  %2654 = add i64 %2652, %2653
  %2655 = icmp eq i64 %2654, 2
  %2656 = zext i1 %2655 to i8
  %2657 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2656, i8* %2657, align 1
  store %struct.Memory* %loadMem_400d30, %struct.Memory** %MEMORY
  %loadMem_400d33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2659 = getelementptr inbounds %struct.GPR, %struct.GPR* %2658, i32 0, i32 33
  %2660 = getelementptr inbounds %struct.Reg, %struct.Reg* %2659, i32 0, i32 0
  %PC.i203 = bitcast %union.anon* %2660 to i64*
  %2661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2662 = getelementptr inbounds %struct.GPR, %struct.GPR* %2661, i32 0, i32 1
  %2663 = getelementptr inbounds %struct.Reg, %struct.Reg* %2662, i32 0, i32 0
  %RAX.i204 = bitcast %union.anon* %2663 to i64*
  %2664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2665 = getelementptr inbounds %struct.GPR, %struct.GPR* %2664, i32 0, i32 9
  %2666 = getelementptr inbounds %struct.Reg, %struct.Reg* %2665, i32 0, i32 0
  %RSI.i205 = bitcast %union.anon* %2666 to i64*
  %2667 = load i64, i64* %RSI.i205
  %2668 = load i64, i64* %RAX.i204
  %2669 = load i64, i64* %PC.i203
  %2670 = add i64 %2669, 3
  store i64 %2670, i64* %PC.i203
  %2671 = inttoptr i64 %2667 to i64*
  store i64 %2668, i64* %2671
  store %struct.Memory* %loadMem_400d33, %struct.Memory** %MEMORY
  %loadMem_400d36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2672 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2673 = getelementptr inbounds %struct.GPR, %struct.GPR* %2672, i32 0, i32 33
  %2674 = getelementptr inbounds %struct.Reg, %struct.Reg* %2673, i32 0, i32 0
  %PC.i200 = bitcast %union.anon* %2674 to i64*
  %2675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2676 = getelementptr inbounds %struct.GPR, %struct.GPR* %2675, i32 0, i32 1
  %2677 = getelementptr inbounds %struct.Reg, %struct.Reg* %2676, i32 0, i32 0
  %RAX.i201 = bitcast %union.anon* %2677 to i64*
  %2678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2679 = getelementptr inbounds %struct.GPR, %struct.GPR* %2678, i32 0, i32 15
  %2680 = getelementptr inbounds %struct.Reg, %struct.Reg* %2679, i32 0, i32 0
  %RBP.i202 = bitcast %union.anon* %2680 to i64*
  %2681 = load i64, i64* %RBP.i202
  %2682 = sub i64 %2681, 8
  %2683 = load i64, i64* %PC.i200
  %2684 = add i64 %2683, 4
  store i64 %2684, i64* %PC.i200
  %2685 = inttoptr i64 %2682 to i64*
  %2686 = load i64, i64* %2685
  store i64 %2686, i64* %RAX.i201, align 8
  store %struct.Memory* %loadMem_400d36, %struct.Memory** %MEMORY
  %loadMem_400d3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2688 = getelementptr inbounds %struct.GPR, %struct.GPR* %2687, i32 0, i32 33
  %2689 = getelementptr inbounds %struct.Reg, %struct.Reg* %2688, i32 0, i32 0
  %PC.i197 = bitcast %union.anon* %2689 to i64*
  %2690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2691 = getelementptr inbounds %struct.GPR, %struct.GPR* %2690, i32 0, i32 9
  %2692 = getelementptr inbounds %struct.Reg, %struct.Reg* %2691, i32 0, i32 0
  %RSI.i198 = bitcast %union.anon* %2692 to i64*
  %2693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2694 = getelementptr inbounds %struct.GPR, %struct.GPR* %2693, i32 0, i32 15
  %2695 = getelementptr inbounds %struct.Reg, %struct.Reg* %2694, i32 0, i32 0
  %RBP.i199 = bitcast %union.anon* %2695 to i64*
  %2696 = load i64, i64* %RBP.i199
  %2697 = sub i64 %2696, 56
  %2698 = load i64, i64* %PC.i197
  %2699 = add i64 %2698, 4
  store i64 %2699, i64* %PC.i197
  %2700 = inttoptr i64 %2697 to i64*
  %2701 = load i64, i64* %2700
  store i64 %2701, i64* %RSI.i198, align 8
  store %struct.Memory* %loadMem_400d3a, %struct.Memory** %MEMORY
  %loadMem_400d3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2703 = getelementptr inbounds %struct.GPR, %struct.GPR* %2702, i32 0, i32 33
  %2704 = getelementptr inbounds %struct.Reg, %struct.Reg* %2703, i32 0, i32 0
  %PC.i194 = bitcast %union.anon* %2704 to i64*
  %2705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2706 = getelementptr inbounds %struct.GPR, %struct.GPR* %2705, i32 0, i32 1
  %2707 = getelementptr inbounds %struct.Reg, %struct.Reg* %2706, i32 0, i32 0
  %RAX.i195 = bitcast %union.anon* %2707 to i64*
  %2708 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2709 = getelementptr inbounds %struct.GPR, %struct.GPR* %2708, i32 0, i32 15
  %2710 = getelementptr inbounds %struct.Reg, %struct.Reg* %2709, i32 0, i32 0
  %RBP.i196 = bitcast %union.anon* %2710 to i64*
  %2711 = load i64, i64* %RBP.i196
  %2712 = sub i64 %2711, 104
  %2713 = load i64, i64* %RAX.i195
  %2714 = load i64, i64* %PC.i194
  %2715 = add i64 %2714, 4
  store i64 %2715, i64* %PC.i194
  %2716 = inttoptr i64 %2712 to i64*
  store i64 %2713, i64* %2716
  store %struct.Memory* %loadMem_400d3e, %struct.Memory** %MEMORY
  %loadMem_400d42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2718 = getelementptr inbounds %struct.GPR, %struct.GPR* %2717, i32 0, i32 33
  %2719 = getelementptr inbounds %struct.Reg, %struct.Reg* %2718, i32 0, i32 0
  %PC.i191 = bitcast %union.anon* %2719 to i64*
  %2720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2721 = getelementptr inbounds %struct.GPR, %struct.GPR* %2720, i32 0, i32 1
  %2722 = getelementptr inbounds %struct.Reg, %struct.Reg* %2721, i32 0, i32 0
  %RAX.i192 = bitcast %union.anon* %2722 to i64*
  %2723 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2724 = getelementptr inbounds %struct.GPR, %struct.GPR* %2723, i32 0, i32 9
  %2725 = getelementptr inbounds %struct.Reg, %struct.Reg* %2724, i32 0, i32 0
  %RSI.i193 = bitcast %union.anon* %2725 to i64*
  %2726 = load i64, i64* %RSI.i193
  %2727 = load i64, i64* %PC.i191
  %2728 = add i64 %2727, 3
  store i64 %2728, i64* %PC.i191
  store i64 %2726, i64* %RAX.i192, align 8
  store %struct.Memory* %loadMem_400d42, %struct.Memory** %MEMORY
  %loadMem_400d45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2730 = getelementptr inbounds %struct.GPR, %struct.GPR* %2729, i32 0, i32 33
  %2731 = getelementptr inbounds %struct.Reg, %struct.Reg* %2730, i32 0, i32 0
  %PC.i190 = bitcast %union.anon* %2731 to i64*
  %2732 = load i64, i64* %PC.i190
  %2733 = add i64 %2732, 2
  store i64 %2733, i64* %PC.i190
  %2734 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %2735 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %2736 = load i64, i64* %2735, align 8
  %2737 = ashr i64 %2736, 63
  store i64 %2737, i64* %2734, align 8
  store %struct.Memory* %loadMem_400d45, %struct.Memory** %MEMORY
  %loadMem_400d47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2739 = getelementptr inbounds %struct.GPR, %struct.GPR* %2738, i32 0, i32 33
  %2740 = getelementptr inbounds %struct.Reg, %struct.Reg* %2739, i32 0, i32 0
  %PC.i184 = bitcast %union.anon* %2740 to i64*
  %2741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2742 = getelementptr inbounds %struct.GPR, %struct.GPR* %2741, i32 0, i32 5
  %2743 = getelementptr inbounds %struct.Reg, %struct.Reg* %2742, i32 0, i32 0
  %RCX.i185 = bitcast %union.anon* %2743 to i64*
  %2744 = load i64, i64* %RCX.i185
  %2745 = load i64, i64* %PC.i184
  %2746 = add i64 %2745, 3
  store i64 %2746, i64* %PC.i184
  %2747 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %2748 = load i64, i64* %2747, align 8
  %2749 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %2750 = load i64, i64* %2749, align 8
  %2751 = sext i64 %2744 to i128
  %2752 = and i128 %2751, -18446744073709551616
  %2753 = zext i64 %2750 to i128
  %2754 = shl i128 %2753, 64
  %2755 = zext i64 %2748 to i128
  %2756 = or i128 %2754, %2755
  %2757 = zext i64 %2744 to i128
  %2758 = or i128 %2752, %2757
  %2759 = sdiv i128 %2756, %2758
  %2760 = trunc i128 %2759 to i64
  %2761 = and i128 %2759, 18446744073709551615
  %2762 = sext i64 %2760 to i128
  %2763 = and i128 %2762, -18446744073709551616
  %2764 = or i128 %2763, %2761
  %2765 = icmp eq i128 %2759, %2764
  br i1 %2765, label %2770, label %2766

; <label>:2766:                                   ; preds = %routine_idivq__rcx.exit234
  %2767 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2768 = load i64, i64* %2767, align 8
  %2769 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2768, %struct.Memory* %loadMem_400d47)
  br label %routine_idivq__rcx.exit186

; <label>:2770:                                   ; preds = %routine_idivq__rcx.exit234
  %2771 = srem i128 %2756, %2758
  %2772 = trunc i128 %2771 to i64
  store i64 %2760, i64* %2747, align 8
  store i64 %2772, i64* %2749, align 8
  %2773 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2773, align 1
  %2774 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %2774, align 1
  %2775 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2775, align 1
  %2776 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2776, align 1
  %2777 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2777, align 1
  %2778 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2778, align 1
  br label %routine_idivq__rcx.exit186

routine_idivq__rcx.exit186:                       ; preds = %2766, %2770
  %2779 = phi %struct.Memory* [ %2769, %2766 ], [ %loadMem_400d47, %2770 ]
  store %struct.Memory* %2779, %struct.Memory** %MEMORY
  %loadMem_400d4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2780 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2781 = getelementptr inbounds %struct.GPR, %struct.GPR* %2780, i32 0, i32 33
  %2782 = getelementptr inbounds %struct.Reg, %struct.Reg* %2781, i32 0, i32 0
  %PC.i182 = bitcast %union.anon* %2782 to i64*
  %2783 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2784 = getelementptr inbounds %struct.GPR, %struct.GPR* %2783, i32 0, i32 1
  %2785 = getelementptr inbounds %struct.Reg, %struct.Reg* %2784, i32 0, i32 0
  %RAX.i183 = bitcast %union.anon* %2785 to i64*
  %2786 = load i64, i64* %RAX.i183
  %2787 = load i64, i64* %PC.i182
  %2788 = add i64 %2787, 4
  store i64 %2788, i64* %PC.i182
  %2789 = sub i64 %2786, 1
  store i64 %2789, i64* %RAX.i183, align 8
  %2790 = icmp ult i64 %2786, 1
  %2791 = zext i1 %2790 to i8
  %2792 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2791, i8* %2792, align 1
  %2793 = trunc i64 %2789 to i32
  %2794 = and i32 %2793, 255
  %2795 = call i32 @llvm.ctpop.i32(i32 %2794)
  %2796 = trunc i32 %2795 to i8
  %2797 = and i8 %2796, 1
  %2798 = xor i8 %2797, 1
  %2799 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2798, i8* %2799, align 1
  %2800 = xor i64 1, %2786
  %2801 = xor i64 %2800, %2789
  %2802 = lshr i64 %2801, 4
  %2803 = trunc i64 %2802 to i8
  %2804 = and i8 %2803, 1
  %2805 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2804, i8* %2805, align 1
  %2806 = icmp eq i64 %2789, 0
  %2807 = zext i1 %2806 to i8
  %2808 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2807, i8* %2808, align 1
  %2809 = lshr i64 %2789, 63
  %2810 = trunc i64 %2809 to i8
  %2811 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2810, i8* %2811, align 1
  %2812 = lshr i64 %2786, 63
  %2813 = xor i64 %2809, %2812
  %2814 = add i64 %2813, %2812
  %2815 = icmp eq i64 %2814, 2
  %2816 = zext i1 %2815 to i8
  %2817 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2816, i8* %2817, align 1
  store %struct.Memory* %loadMem_400d4a, %struct.Memory** %MEMORY
  %loadMem_400d4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2819 = getelementptr inbounds %struct.GPR, %struct.GPR* %2818, i32 0, i32 33
  %2820 = getelementptr inbounds %struct.Reg, %struct.Reg* %2819, i32 0, i32 0
  %PC.i180 = bitcast %union.anon* %2820 to i64*
  %2821 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2822 = getelementptr inbounds %struct.GPR, %struct.GPR* %2821, i32 0, i32 1
  %2823 = getelementptr inbounds %struct.Reg, %struct.Reg* %2822, i32 0, i32 0
  %RAX.i181 = bitcast %union.anon* %2823 to i64*
  %2824 = load i64, i64* %RAX.i181
  %2825 = load i64, i64* %PC.i180
  %2826 = add i64 %2825, 4
  store i64 %2826, i64* %PC.i180
  %2827 = shl i64 %2824, 5
  %2828 = icmp slt i64 %2827, 0
  %2829 = shl i64 %2827, 1
  store i64 %2829, i64* %RAX.i181, align 8
  %2830 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2831 = zext i1 %2828 to i8
  store i8 %2831, i8* %2830, align 1
  %2832 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2833 = trunc i64 %2829 to i32
  %2834 = and i32 %2833, 254
  %2835 = call i32 @llvm.ctpop.i32(i32 %2834)
  %2836 = trunc i32 %2835 to i8
  %2837 = and i8 %2836, 1
  %2838 = xor i8 %2837, 1
  store i8 %2838, i8* %2832, align 1
  %2839 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2839, align 1
  %2840 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2841 = icmp eq i64 %2829, 0
  %2842 = zext i1 %2841 to i8
  store i8 %2842, i8* %2840, align 1
  %2843 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2844 = lshr i64 %2829, 63
  %2845 = trunc i64 %2844 to i8
  store i8 %2845, i8* %2843, align 1
  %2846 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2846, align 1
  store %struct.Memory* %loadMem_400d4e, %struct.Memory** %MEMORY
  %loadMem_400d52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2847 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2848 = getelementptr inbounds %struct.GPR, %struct.GPR* %2847, i32 0, i32 33
  %2849 = getelementptr inbounds %struct.Reg, %struct.Reg* %2848, i32 0, i32 0
  %PC.i177 = bitcast %union.anon* %2849 to i64*
  %2850 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2851 = getelementptr inbounds %struct.GPR, %struct.GPR* %2850, i32 0, i32 9
  %2852 = getelementptr inbounds %struct.Reg, %struct.Reg* %2851, i32 0, i32 0
  %RSI.i178 = bitcast %union.anon* %2852 to i64*
  %2853 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2854 = getelementptr inbounds %struct.GPR, %struct.GPR* %2853, i32 0, i32 15
  %2855 = getelementptr inbounds %struct.Reg, %struct.Reg* %2854, i32 0, i32 0
  %RBP.i179 = bitcast %union.anon* %2855 to i64*
  %2856 = load i64, i64* %RBP.i179
  %2857 = sub i64 %2856, 104
  %2858 = load i64, i64* %PC.i177
  %2859 = add i64 %2858, 4
  store i64 %2859, i64* %PC.i177
  %2860 = inttoptr i64 %2857 to i64*
  %2861 = load i64, i64* %2860
  store i64 %2861, i64* %RSI.i178, align 8
  store %struct.Memory* %loadMem_400d52, %struct.Memory** %MEMORY
  %loadMem_400d56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2862 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2863 = getelementptr inbounds %struct.GPR, %struct.GPR* %2862, i32 0, i32 33
  %2864 = getelementptr inbounds %struct.Reg, %struct.Reg* %2863, i32 0, i32 0
  %PC.i174 = bitcast %union.anon* %2864 to i64*
  %2865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2866 = getelementptr inbounds %struct.GPR, %struct.GPR* %2865, i32 0, i32 1
  %2867 = getelementptr inbounds %struct.Reg, %struct.Reg* %2866, i32 0, i32 0
  %RAX.i175 = bitcast %union.anon* %2867 to i64*
  %2868 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2869 = getelementptr inbounds %struct.GPR, %struct.GPR* %2868, i32 0, i32 9
  %2870 = getelementptr inbounds %struct.Reg, %struct.Reg* %2869, i32 0, i32 0
  %RSI.i176 = bitcast %union.anon* %2870 to i64*
  %2871 = load i64, i64* %RSI.i176
  %2872 = load i64, i64* %RAX.i175
  %2873 = load i64, i64* %PC.i174
  %2874 = add i64 %2873, 3
  store i64 %2874, i64* %PC.i174
  %2875 = add i64 %2872, %2871
  store i64 %2875, i64* %RSI.i176, align 8
  %2876 = icmp ult i64 %2875, %2871
  %2877 = icmp ult i64 %2875, %2872
  %2878 = or i1 %2876, %2877
  %2879 = zext i1 %2878 to i8
  %2880 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2879, i8* %2880, align 1
  %2881 = trunc i64 %2875 to i32
  %2882 = and i32 %2881, 255
  %2883 = call i32 @llvm.ctpop.i32(i32 %2882)
  %2884 = trunc i32 %2883 to i8
  %2885 = and i8 %2884, 1
  %2886 = xor i8 %2885, 1
  %2887 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2886, i8* %2887, align 1
  %2888 = xor i64 %2872, %2871
  %2889 = xor i64 %2888, %2875
  %2890 = lshr i64 %2889, 4
  %2891 = trunc i64 %2890 to i8
  %2892 = and i8 %2891, 1
  %2893 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2892, i8* %2893, align 1
  %2894 = icmp eq i64 %2875, 0
  %2895 = zext i1 %2894 to i8
  %2896 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2895, i8* %2896, align 1
  %2897 = lshr i64 %2875, 63
  %2898 = trunc i64 %2897 to i8
  %2899 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2898, i8* %2899, align 1
  %2900 = lshr i64 %2871, 63
  %2901 = lshr i64 %2872, 63
  %2902 = xor i64 %2897, %2900
  %2903 = xor i64 %2897, %2901
  %2904 = add i64 %2902, %2903
  %2905 = icmp eq i64 %2904, 2
  %2906 = zext i1 %2905 to i8
  %2907 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2906, i8* %2907, align 1
  store %struct.Memory* %loadMem_400d56, %struct.Memory** %MEMORY
  %loadMem_400d59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2909 = getelementptr inbounds %struct.GPR, %struct.GPR* %2908, i32 0, i32 33
  %2910 = getelementptr inbounds %struct.Reg, %struct.Reg* %2909, i32 0, i32 0
  %PC.i171 = bitcast %union.anon* %2910 to i64*
  %2911 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2912 = getelementptr inbounds %struct.GPR, %struct.GPR* %2911, i32 0, i32 1
  %2913 = getelementptr inbounds %struct.Reg, %struct.Reg* %2912, i32 0, i32 0
  %RAX.i172 = bitcast %union.anon* %2913 to i64*
  %2914 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2915 = getelementptr inbounds %struct.GPR, %struct.GPR* %2914, i32 0, i32 9
  %2916 = getelementptr inbounds %struct.Reg, %struct.Reg* %2915, i32 0, i32 0
  %RSI.i173 = bitcast %union.anon* %2916 to i64*
  %2917 = load i64, i64* %RSI.i173
  %2918 = load i64, i64* %PC.i171
  %2919 = add i64 %2918, 3
  store i64 %2919, i64* %PC.i171
  %2920 = inttoptr i64 %2917 to i64*
  %2921 = load i64, i64* %2920
  store i64 %2921, i64* %RAX.i172, align 8
  store %struct.Memory* %loadMem_400d59, %struct.Memory** %MEMORY
  %loadMem_400d5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2922 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2923 = getelementptr inbounds %struct.GPR, %struct.GPR* %2922, i32 0, i32 33
  %2924 = getelementptr inbounds %struct.Reg, %struct.Reg* %2923, i32 0, i32 0
  %PC.i168 = bitcast %union.anon* %2924 to i64*
  %2925 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2926 = getelementptr inbounds %struct.GPR, %struct.GPR* %2925, i32 0, i32 9
  %2927 = getelementptr inbounds %struct.Reg, %struct.Reg* %2926, i32 0, i32 0
  %RSI.i169 = bitcast %union.anon* %2927 to i64*
  %2928 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2929 = getelementptr inbounds %struct.GPR, %struct.GPR* %2928, i32 0, i32 15
  %2930 = getelementptr inbounds %struct.Reg, %struct.Reg* %2929, i32 0, i32 0
  %RBP.i170 = bitcast %union.anon* %2930 to i64*
  %2931 = load i64, i64* %RBP.i170
  %2932 = sub i64 %2931, 8
  %2933 = load i64, i64* %PC.i168
  %2934 = add i64 %2933, 4
  store i64 %2934, i64* %PC.i168
  %2935 = inttoptr i64 %2932 to i64*
  %2936 = load i64, i64* %2935
  store i64 %2936, i64* %RSI.i169, align 8
  store %struct.Memory* %loadMem_400d5c, %struct.Memory** %MEMORY
  %loadMem_400d60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2938 = getelementptr inbounds %struct.GPR, %struct.GPR* %2937, i32 0, i32 33
  %2939 = getelementptr inbounds %struct.Reg, %struct.Reg* %2938, i32 0, i32 0
  %PC.i165 = bitcast %union.anon* %2939 to i64*
  %2940 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2941 = getelementptr inbounds %struct.GPR, %struct.GPR* %2940, i32 0, i32 11
  %2942 = getelementptr inbounds %struct.Reg, %struct.Reg* %2941, i32 0, i32 0
  %RDI.i166 = bitcast %union.anon* %2942 to i64*
  %2943 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2944 = getelementptr inbounds %struct.GPR, %struct.GPR* %2943, i32 0, i32 15
  %2945 = getelementptr inbounds %struct.Reg, %struct.Reg* %2944, i32 0, i32 0
  %RBP.i167 = bitcast %union.anon* %2945 to i64*
  %2946 = load i64, i64* %RBP.i167
  %2947 = sub i64 %2946, 56
  %2948 = load i64, i64* %PC.i165
  %2949 = add i64 %2948, 4
  store i64 %2949, i64* %PC.i165
  %2950 = inttoptr i64 %2947 to i64*
  %2951 = load i64, i64* %2950
  store i64 %2951, i64* %RDI.i166, align 8
  store %struct.Memory* %loadMem_400d60, %struct.Memory** %MEMORY
  %loadMem_400d64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2952 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2953 = getelementptr inbounds %struct.GPR, %struct.GPR* %2952, i32 0, i32 33
  %2954 = getelementptr inbounds %struct.Reg, %struct.Reg* %2953, i32 0, i32 0
  %PC.i163 = bitcast %union.anon* %2954 to i64*
  %2955 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2956 = getelementptr inbounds %struct.GPR, %struct.GPR* %2955, i32 0, i32 11
  %2957 = getelementptr inbounds %struct.Reg, %struct.Reg* %2956, i32 0, i32 0
  %RDI.i164 = bitcast %union.anon* %2957 to i64*
  %2958 = load i64, i64* %RDI.i164
  %2959 = load i64, i64* %PC.i163
  %2960 = add i64 %2959, 4
  store i64 %2960, i64* %PC.i163
  %2961 = sub i64 %2958, 1
  store i64 %2961, i64* %RDI.i164, align 8
  %2962 = icmp ult i64 %2958, 1
  %2963 = zext i1 %2962 to i8
  %2964 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2963, i8* %2964, align 1
  %2965 = trunc i64 %2961 to i32
  %2966 = and i32 %2965, 255
  %2967 = call i32 @llvm.ctpop.i32(i32 %2966)
  %2968 = trunc i32 %2967 to i8
  %2969 = and i8 %2968, 1
  %2970 = xor i8 %2969, 1
  %2971 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2970, i8* %2971, align 1
  %2972 = xor i64 1, %2958
  %2973 = xor i64 %2972, %2961
  %2974 = lshr i64 %2973, 4
  %2975 = trunc i64 %2974 to i8
  %2976 = and i8 %2975, 1
  %2977 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2976, i8* %2977, align 1
  %2978 = icmp eq i64 %2961, 0
  %2979 = zext i1 %2978 to i8
  %2980 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2979, i8* %2980, align 1
  %2981 = lshr i64 %2961, 63
  %2982 = trunc i64 %2981 to i8
  %2983 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2982, i8* %2983, align 1
  %2984 = lshr i64 %2958, 63
  %2985 = xor i64 %2981, %2984
  %2986 = add i64 %2985, %2984
  %2987 = icmp eq i64 %2986, 2
  %2988 = zext i1 %2987 to i8
  %2989 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2988, i8* %2989, align 1
  store %struct.Memory* %loadMem_400d64, %struct.Memory** %MEMORY
  %loadMem_400d68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2990 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2991 = getelementptr inbounds %struct.GPR, %struct.GPR* %2990, i32 0, i32 33
  %2992 = getelementptr inbounds %struct.Reg, %struct.Reg* %2991, i32 0, i32 0
  %PC.i161 = bitcast %union.anon* %2992 to i64*
  %2993 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2994 = getelementptr inbounds %struct.GPR, %struct.GPR* %2993, i32 0, i32 11
  %2995 = getelementptr inbounds %struct.Reg, %struct.Reg* %2994, i32 0, i32 0
  %RDI.i162 = bitcast %union.anon* %2995 to i64*
  %2996 = load i64, i64* %RDI.i162
  %2997 = load i64, i64* %PC.i161
  %2998 = add i64 %2997, 4
  store i64 %2998, i64* %PC.i161
  %2999 = shl i64 %2996, 5
  %3000 = icmp slt i64 %2999, 0
  %3001 = shl i64 %2999, 1
  store i64 %3001, i64* %RDI.i162, align 8
  %3002 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %3003 = zext i1 %3000 to i8
  store i8 %3003, i8* %3002, align 1
  %3004 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %3005 = trunc i64 %3001 to i32
  %3006 = and i32 %3005, 254
  %3007 = call i32 @llvm.ctpop.i32(i32 %3006)
  %3008 = trunc i32 %3007 to i8
  %3009 = and i8 %3008, 1
  %3010 = xor i8 %3009, 1
  store i8 %3010, i8* %3004, align 1
  %3011 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3011, align 1
  %3012 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3013 = icmp eq i64 %3001, 0
  %3014 = zext i1 %3013 to i8
  store i8 %3014, i8* %3012, align 1
  %3015 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3016 = lshr i64 %3001, 63
  %3017 = trunc i64 %3016 to i8
  store i8 %3017, i8* %3015, align 1
  %3018 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3018, align 1
  store %struct.Memory* %loadMem_400d68, %struct.Memory** %MEMORY
  %loadMem_400d6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3019 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3020 = getelementptr inbounds %struct.GPR, %struct.GPR* %3019, i32 0, i32 33
  %3021 = getelementptr inbounds %struct.Reg, %struct.Reg* %3020, i32 0, i32 0
  %PC.i158 = bitcast %union.anon* %3021 to i64*
  %3022 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3023 = getelementptr inbounds %struct.GPR, %struct.GPR* %3022, i32 0, i32 9
  %3024 = getelementptr inbounds %struct.Reg, %struct.Reg* %3023, i32 0, i32 0
  %RSI.i159 = bitcast %union.anon* %3024 to i64*
  %3025 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3026 = getelementptr inbounds %struct.GPR, %struct.GPR* %3025, i32 0, i32 11
  %3027 = getelementptr inbounds %struct.Reg, %struct.Reg* %3026, i32 0, i32 0
  %RDI.i160 = bitcast %union.anon* %3027 to i64*
  %3028 = load i64, i64* %RSI.i159
  %3029 = load i64, i64* %RDI.i160
  %3030 = load i64, i64* %PC.i158
  %3031 = add i64 %3030, 3
  store i64 %3031, i64* %PC.i158
  %3032 = add i64 %3029, %3028
  store i64 %3032, i64* %RSI.i159, align 8
  %3033 = icmp ult i64 %3032, %3028
  %3034 = icmp ult i64 %3032, %3029
  %3035 = or i1 %3033, %3034
  %3036 = zext i1 %3035 to i8
  %3037 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3036, i8* %3037, align 1
  %3038 = trunc i64 %3032 to i32
  %3039 = and i32 %3038, 255
  %3040 = call i32 @llvm.ctpop.i32(i32 %3039)
  %3041 = trunc i32 %3040 to i8
  %3042 = and i8 %3041, 1
  %3043 = xor i8 %3042, 1
  %3044 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3043, i8* %3044, align 1
  %3045 = xor i64 %3029, %3028
  %3046 = xor i64 %3045, %3032
  %3047 = lshr i64 %3046, 4
  %3048 = trunc i64 %3047 to i8
  %3049 = and i8 %3048, 1
  %3050 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3049, i8* %3050, align 1
  %3051 = icmp eq i64 %3032, 0
  %3052 = zext i1 %3051 to i8
  %3053 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3052, i8* %3053, align 1
  %3054 = lshr i64 %3032, 63
  %3055 = trunc i64 %3054 to i8
  %3056 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3055, i8* %3056, align 1
  %3057 = lshr i64 %3028, 63
  %3058 = lshr i64 %3029, 63
  %3059 = xor i64 %3054, %3057
  %3060 = xor i64 %3054, %3058
  %3061 = add i64 %3059, %3060
  %3062 = icmp eq i64 %3061, 2
  %3063 = zext i1 %3062 to i8
  %3064 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3063, i8* %3064, align 1
  store %struct.Memory* %loadMem_400d6c, %struct.Memory** %MEMORY
  %loadMem_400d6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3065 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3066 = getelementptr inbounds %struct.GPR, %struct.GPR* %3065, i32 0, i32 33
  %3067 = getelementptr inbounds %struct.Reg, %struct.Reg* %3066, i32 0, i32 0
  %PC.i155 = bitcast %union.anon* %3067 to i64*
  %3068 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3069 = getelementptr inbounds %struct.GPR, %struct.GPR* %3068, i32 0, i32 1
  %3070 = getelementptr inbounds %struct.Reg, %struct.Reg* %3069, i32 0, i32 0
  %RAX.i156 = bitcast %union.anon* %3070 to i64*
  %3071 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3072 = getelementptr inbounds %struct.GPR, %struct.GPR* %3071, i32 0, i32 9
  %3073 = getelementptr inbounds %struct.Reg, %struct.Reg* %3072, i32 0, i32 0
  %RSI.i157 = bitcast %union.anon* %3073 to i64*
  %3074 = load i64, i64* %RSI.i157
  %3075 = add i64 %3074, 56
  %3076 = load i64, i64* %RAX.i156
  %3077 = load i64, i64* %PC.i155
  %3078 = add i64 %3077, 4
  store i64 %3078, i64* %PC.i155
  %3079 = inttoptr i64 %3075 to i64*
  store i64 %3076, i64* %3079
  store %struct.Memory* %loadMem_400d6f, %struct.Memory** %MEMORY
  %loadMem_400d73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3081 = getelementptr inbounds %struct.GPR, %struct.GPR* %3080, i32 0, i32 33
  %3082 = getelementptr inbounds %struct.Reg, %struct.Reg* %3081, i32 0, i32 0
  %PC.i152 = bitcast %union.anon* %3082 to i64*
  %3083 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3084 = getelementptr inbounds %struct.GPR, %struct.GPR* %3083, i32 0, i32 1
  %3085 = getelementptr inbounds %struct.Reg, %struct.Reg* %3084, i32 0, i32 0
  %RAX.i153 = bitcast %union.anon* %3085 to i64*
  %3086 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3087 = getelementptr inbounds %struct.GPR, %struct.GPR* %3086, i32 0, i32 15
  %3088 = getelementptr inbounds %struct.Reg, %struct.Reg* %3087, i32 0, i32 0
  %RBP.i154 = bitcast %union.anon* %3088 to i64*
  %3089 = load i64, i64* %RBP.i154
  %3090 = sub i64 %3089, 8
  %3091 = load i64, i64* %PC.i152
  %3092 = add i64 %3091, 4
  store i64 %3092, i64* %PC.i152
  %3093 = inttoptr i64 %3090 to i64*
  %3094 = load i64, i64* %3093
  store i64 %3094, i64* %RAX.i153, align 8
  store %struct.Memory* %loadMem_400d73, %struct.Memory** %MEMORY
  %loadMem_400d77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3095 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3096 = getelementptr inbounds %struct.GPR, %struct.GPR* %3095, i32 0, i32 33
  %3097 = getelementptr inbounds %struct.Reg, %struct.Reg* %3096, i32 0, i32 0
  %PC.i149 = bitcast %union.anon* %3097 to i64*
  %3098 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3099 = getelementptr inbounds %struct.GPR, %struct.GPR* %3098, i32 0, i32 9
  %3100 = getelementptr inbounds %struct.Reg, %struct.Reg* %3099, i32 0, i32 0
  %RSI.i150 = bitcast %union.anon* %3100 to i64*
  %3101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3102 = getelementptr inbounds %struct.GPR, %struct.GPR* %3101, i32 0, i32 15
  %3103 = getelementptr inbounds %struct.Reg, %struct.Reg* %3102, i32 0, i32 0
  %RBP.i151 = bitcast %union.anon* %3103 to i64*
  %3104 = load i64, i64* %RBP.i151
  %3105 = sub i64 %3104, 56
  %3106 = load i64, i64* %PC.i149
  %3107 = add i64 %3106, 4
  store i64 %3107, i64* %PC.i149
  %3108 = inttoptr i64 %3105 to i64*
  %3109 = load i64, i64* %3108
  store i64 %3109, i64* %RSI.i150, align 8
  store %struct.Memory* %loadMem_400d77, %struct.Memory** %MEMORY
  %loadMem_400d7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3111 = getelementptr inbounds %struct.GPR, %struct.GPR* %3110, i32 0, i32 33
  %3112 = getelementptr inbounds %struct.Reg, %struct.Reg* %3111, i32 0, i32 0
  %PC.i146 = bitcast %union.anon* %3112 to i64*
  %3113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3114 = getelementptr inbounds %struct.GPR, %struct.GPR* %3113, i32 0, i32 1
  %3115 = getelementptr inbounds %struct.Reg, %struct.Reg* %3114, i32 0, i32 0
  %RAX.i147 = bitcast %union.anon* %3115 to i64*
  %3116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3117 = getelementptr inbounds %struct.GPR, %struct.GPR* %3116, i32 0, i32 15
  %3118 = getelementptr inbounds %struct.Reg, %struct.Reg* %3117, i32 0, i32 0
  %RBP.i148 = bitcast %union.anon* %3118 to i64*
  %3119 = load i64, i64* %RBP.i148
  %3120 = sub i64 %3119, 112
  %3121 = load i64, i64* %RAX.i147
  %3122 = load i64, i64* %PC.i146
  %3123 = add i64 %3122, 4
  store i64 %3123, i64* %PC.i146
  %3124 = inttoptr i64 %3120 to i64*
  store i64 %3121, i64* %3124
  store %struct.Memory* %loadMem_400d7b, %struct.Memory** %MEMORY
  %loadMem_400d7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3126 = getelementptr inbounds %struct.GPR, %struct.GPR* %3125, i32 0, i32 33
  %3127 = getelementptr inbounds %struct.Reg, %struct.Reg* %3126, i32 0, i32 0
  %PC.i143 = bitcast %union.anon* %3127 to i64*
  %3128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3129 = getelementptr inbounds %struct.GPR, %struct.GPR* %3128, i32 0, i32 1
  %3130 = getelementptr inbounds %struct.Reg, %struct.Reg* %3129, i32 0, i32 0
  %RAX.i144 = bitcast %union.anon* %3130 to i64*
  %3131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3132 = getelementptr inbounds %struct.GPR, %struct.GPR* %3131, i32 0, i32 9
  %3133 = getelementptr inbounds %struct.Reg, %struct.Reg* %3132, i32 0, i32 0
  %RSI.i145 = bitcast %union.anon* %3133 to i64*
  %3134 = load i64, i64* %RSI.i145
  %3135 = load i64, i64* %PC.i143
  %3136 = add i64 %3135, 3
  store i64 %3136, i64* %PC.i143
  store i64 %3134, i64* %RAX.i144, align 8
  store %struct.Memory* %loadMem_400d7f, %struct.Memory** %MEMORY
  %loadMem_400d82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3138 = getelementptr inbounds %struct.GPR, %struct.GPR* %3137, i32 0, i32 33
  %3139 = getelementptr inbounds %struct.Reg, %struct.Reg* %3138, i32 0, i32 0
  %PC.i142 = bitcast %union.anon* %3139 to i64*
  %3140 = load i64, i64* %PC.i142
  %3141 = add i64 %3140, 2
  store i64 %3141, i64* %PC.i142
  %3142 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3144 = load i64, i64* %3143, align 8
  %3145 = ashr i64 %3144, 63
  store i64 %3145, i64* %3142, align 8
  store %struct.Memory* %loadMem_400d82, %struct.Memory** %MEMORY
  %loadMem_400d84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3147 = getelementptr inbounds %struct.GPR, %struct.GPR* %3146, i32 0, i32 33
  %3148 = getelementptr inbounds %struct.Reg, %struct.Reg* %3147, i32 0, i32 0
  %PC.i136 = bitcast %union.anon* %3148 to i64*
  %3149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3150 = getelementptr inbounds %struct.GPR, %struct.GPR* %3149, i32 0, i32 5
  %3151 = getelementptr inbounds %struct.Reg, %struct.Reg* %3150, i32 0, i32 0
  %RCX.i137 = bitcast %union.anon* %3151 to i64*
  %3152 = load i64, i64* %RCX.i137
  %3153 = load i64, i64* %PC.i136
  %3154 = add i64 %3153, 3
  store i64 %3154, i64* %PC.i136
  %3155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3156 = load i64, i64* %3155, align 8
  %3157 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3158 = load i64, i64* %3157, align 8
  %3159 = sext i64 %3152 to i128
  %3160 = and i128 %3159, -18446744073709551616
  %3161 = zext i64 %3158 to i128
  %3162 = shl i128 %3161, 64
  %3163 = zext i64 %3156 to i128
  %3164 = or i128 %3162, %3163
  %3165 = zext i64 %3152 to i128
  %3166 = or i128 %3160, %3165
  %3167 = sdiv i128 %3164, %3166
  %3168 = trunc i128 %3167 to i64
  %3169 = and i128 %3167, 18446744073709551615
  %3170 = sext i64 %3168 to i128
  %3171 = and i128 %3170, -18446744073709551616
  %3172 = or i128 %3171, %3169
  %3173 = icmp eq i128 %3167, %3172
  br i1 %3173, label %3178, label %3174

; <label>:3174:                                   ; preds = %routine_idivq__rcx.exit186
  %3175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3176 = load i64, i64* %3175, align 8
  %3177 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3176, %struct.Memory* %loadMem_400d84)
  br label %routine_idivq__rcx.exit138

; <label>:3178:                                   ; preds = %routine_idivq__rcx.exit186
  %3179 = srem i128 %3164, %3166
  %3180 = trunc i128 %3179 to i64
  store i64 %3168, i64* %3155, align 8
  store i64 %3180, i64* %3157, align 8
  %3181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3181, align 1
  %3182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %3182, align 1
  %3183 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3183, align 1
  %3184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3184, align 1
  %3185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %3185, align 1
  %3186 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3186, align 1
  br label %routine_idivq__rcx.exit138

routine_idivq__rcx.exit138:                       ; preds = %3174, %3178
  %3187 = phi %struct.Memory* [ %3177, %3174 ], [ %loadMem_400d84, %3178 ]
  store %struct.Memory* %3187, %struct.Memory** %MEMORY
  %loadMem_400d87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3189 = getelementptr inbounds %struct.GPR, %struct.GPR* %3188, i32 0, i32 33
  %3190 = getelementptr inbounds %struct.Reg, %struct.Reg* %3189, i32 0, i32 0
  %PC.i134 = bitcast %union.anon* %3190 to i64*
  %3191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3192 = getelementptr inbounds %struct.GPR, %struct.GPR* %3191, i32 0, i32 1
  %3193 = getelementptr inbounds %struct.Reg, %struct.Reg* %3192, i32 0, i32 0
  %RAX.i135 = bitcast %union.anon* %3193 to i64*
  %3194 = load i64, i64* %RAX.i135
  %3195 = load i64, i64* %PC.i134
  %3196 = add i64 %3195, 4
  store i64 %3196, i64* %PC.i134
  %3197 = sub i64 %3194, 1
  store i64 %3197, i64* %RAX.i135, align 8
  %3198 = icmp ult i64 %3194, 1
  %3199 = zext i1 %3198 to i8
  %3200 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3199, i8* %3200, align 1
  %3201 = trunc i64 %3197 to i32
  %3202 = and i32 %3201, 255
  %3203 = call i32 @llvm.ctpop.i32(i32 %3202)
  %3204 = trunc i32 %3203 to i8
  %3205 = and i8 %3204, 1
  %3206 = xor i8 %3205, 1
  %3207 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3206, i8* %3207, align 1
  %3208 = xor i64 1, %3194
  %3209 = xor i64 %3208, %3197
  %3210 = lshr i64 %3209, 4
  %3211 = trunc i64 %3210 to i8
  %3212 = and i8 %3211, 1
  %3213 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3212, i8* %3213, align 1
  %3214 = icmp eq i64 %3197, 0
  %3215 = zext i1 %3214 to i8
  %3216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3215, i8* %3216, align 1
  %3217 = lshr i64 %3197, 63
  %3218 = trunc i64 %3217 to i8
  %3219 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3218, i8* %3219, align 1
  %3220 = lshr i64 %3194, 63
  %3221 = xor i64 %3217, %3220
  %3222 = add i64 %3221, %3220
  %3223 = icmp eq i64 %3222, 2
  %3224 = zext i1 %3223 to i8
  %3225 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3224, i8* %3225, align 1
  store %struct.Memory* %loadMem_400d87, %struct.Memory** %MEMORY
  %loadMem_400d8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3227 = getelementptr inbounds %struct.GPR, %struct.GPR* %3226, i32 0, i32 33
  %3228 = getelementptr inbounds %struct.Reg, %struct.Reg* %3227, i32 0, i32 0
  %PC.i132 = bitcast %union.anon* %3228 to i64*
  %3229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3230 = getelementptr inbounds %struct.GPR, %struct.GPR* %3229, i32 0, i32 1
  %3231 = getelementptr inbounds %struct.Reg, %struct.Reg* %3230, i32 0, i32 0
  %RAX.i133 = bitcast %union.anon* %3231 to i64*
  %3232 = load i64, i64* %RAX.i133
  %3233 = load i64, i64* %PC.i132
  %3234 = add i64 %3233, 4
  store i64 %3234, i64* %PC.i132
  %3235 = shl i64 %3232, 5
  %3236 = icmp slt i64 %3235, 0
  %3237 = shl i64 %3235, 1
  store i64 %3237, i64* %RAX.i133, align 8
  %3238 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %3239 = zext i1 %3236 to i8
  store i8 %3239, i8* %3238, align 1
  %3240 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %3241 = trunc i64 %3237 to i32
  %3242 = and i32 %3241, 254
  %3243 = call i32 @llvm.ctpop.i32(i32 %3242)
  %3244 = trunc i32 %3243 to i8
  %3245 = and i8 %3244, 1
  %3246 = xor i8 %3245, 1
  store i8 %3246, i8* %3240, align 1
  %3247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3247, align 1
  %3248 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3249 = icmp eq i64 %3237, 0
  %3250 = zext i1 %3249 to i8
  store i8 %3250, i8* %3248, align 1
  %3251 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3252 = lshr i64 %3237, 63
  %3253 = trunc i64 %3252 to i8
  store i8 %3253, i8* %3251, align 1
  %3254 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3254, align 1
  store %struct.Memory* %loadMem_400d8b, %struct.Memory** %MEMORY
  %loadMem_400d8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3256 = getelementptr inbounds %struct.GPR, %struct.GPR* %3255, i32 0, i32 33
  %3257 = getelementptr inbounds %struct.Reg, %struct.Reg* %3256, i32 0, i32 0
  %PC.i129 = bitcast %union.anon* %3257 to i64*
  %3258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3259 = getelementptr inbounds %struct.GPR, %struct.GPR* %3258, i32 0, i32 9
  %3260 = getelementptr inbounds %struct.Reg, %struct.Reg* %3259, i32 0, i32 0
  %RSI.i130 = bitcast %union.anon* %3260 to i64*
  %3261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3262 = getelementptr inbounds %struct.GPR, %struct.GPR* %3261, i32 0, i32 15
  %3263 = getelementptr inbounds %struct.Reg, %struct.Reg* %3262, i32 0, i32 0
  %RBP.i131 = bitcast %union.anon* %3263 to i64*
  %3264 = load i64, i64* %RBP.i131
  %3265 = sub i64 %3264, 112
  %3266 = load i64, i64* %PC.i129
  %3267 = add i64 %3266, 4
  store i64 %3267, i64* %PC.i129
  %3268 = inttoptr i64 %3265 to i64*
  %3269 = load i64, i64* %3268
  store i64 %3269, i64* %RSI.i130, align 8
  store %struct.Memory* %loadMem_400d8f, %struct.Memory** %MEMORY
  %loadMem_400d93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3271 = getelementptr inbounds %struct.GPR, %struct.GPR* %3270, i32 0, i32 33
  %3272 = getelementptr inbounds %struct.Reg, %struct.Reg* %3271, i32 0, i32 0
  %PC.i126 = bitcast %union.anon* %3272 to i64*
  %3273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3274 = getelementptr inbounds %struct.GPR, %struct.GPR* %3273, i32 0, i32 1
  %3275 = getelementptr inbounds %struct.Reg, %struct.Reg* %3274, i32 0, i32 0
  %RAX.i127 = bitcast %union.anon* %3275 to i64*
  %3276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3277 = getelementptr inbounds %struct.GPR, %struct.GPR* %3276, i32 0, i32 9
  %3278 = getelementptr inbounds %struct.Reg, %struct.Reg* %3277, i32 0, i32 0
  %RSI.i128 = bitcast %union.anon* %3278 to i64*
  %3279 = load i64, i64* %RSI.i128
  %3280 = load i64, i64* %RAX.i127
  %3281 = load i64, i64* %PC.i126
  %3282 = add i64 %3281, 3
  store i64 %3282, i64* %PC.i126
  %3283 = add i64 %3280, %3279
  store i64 %3283, i64* %RSI.i128, align 8
  %3284 = icmp ult i64 %3283, %3279
  %3285 = icmp ult i64 %3283, %3280
  %3286 = or i1 %3284, %3285
  %3287 = zext i1 %3286 to i8
  %3288 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3287, i8* %3288, align 1
  %3289 = trunc i64 %3283 to i32
  %3290 = and i32 %3289, 255
  %3291 = call i32 @llvm.ctpop.i32(i32 %3290)
  %3292 = trunc i32 %3291 to i8
  %3293 = and i8 %3292, 1
  %3294 = xor i8 %3293, 1
  %3295 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3294, i8* %3295, align 1
  %3296 = xor i64 %3280, %3279
  %3297 = xor i64 %3296, %3283
  %3298 = lshr i64 %3297, 4
  %3299 = trunc i64 %3298 to i8
  %3300 = and i8 %3299, 1
  %3301 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3300, i8* %3301, align 1
  %3302 = icmp eq i64 %3283, 0
  %3303 = zext i1 %3302 to i8
  %3304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3303, i8* %3304, align 1
  %3305 = lshr i64 %3283, 63
  %3306 = trunc i64 %3305 to i8
  %3307 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3306, i8* %3307, align 1
  %3308 = lshr i64 %3279, 63
  %3309 = lshr i64 %3280, 63
  %3310 = xor i64 %3305, %3308
  %3311 = xor i64 %3305, %3309
  %3312 = add i64 %3310, %3311
  %3313 = icmp eq i64 %3312, 2
  %3314 = zext i1 %3313 to i8
  %3315 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3314, i8* %3315, align 1
  store %struct.Memory* %loadMem_400d93, %struct.Memory** %MEMORY
  %loadMem_400d96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3317 = getelementptr inbounds %struct.GPR, %struct.GPR* %3316, i32 0, i32 33
  %3318 = getelementptr inbounds %struct.Reg, %struct.Reg* %3317, i32 0, i32 0
  %PC.i123 = bitcast %union.anon* %3318 to i64*
  %3319 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3320 = getelementptr inbounds %struct.GPR, %struct.GPR* %3319, i32 0, i32 1
  %3321 = getelementptr inbounds %struct.Reg, %struct.Reg* %3320, i32 0, i32 0
  %RAX.i124 = bitcast %union.anon* %3321 to i64*
  %3322 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3323 = getelementptr inbounds %struct.GPR, %struct.GPR* %3322, i32 0, i32 9
  %3324 = getelementptr inbounds %struct.Reg, %struct.Reg* %3323, i32 0, i32 0
  %RSI.i125 = bitcast %union.anon* %3324 to i64*
  %3325 = load i64, i64* %RSI.i125
  %3326 = add i64 %3325, 48
  %3327 = load i64, i64* %PC.i123
  %3328 = add i64 %3327, 4
  store i64 %3328, i64* %PC.i123
  %3329 = inttoptr i64 %3326 to i64*
  %3330 = load i64, i64* %3329
  store i64 %3330, i64* %RAX.i124, align 8
  store %struct.Memory* %loadMem_400d96, %struct.Memory** %MEMORY
  %loadMem_400d9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3332 = getelementptr inbounds %struct.GPR, %struct.GPR* %3331, i32 0, i32 33
  %3333 = getelementptr inbounds %struct.Reg, %struct.Reg* %3332, i32 0, i32 0
  %PC.i120 = bitcast %union.anon* %3333 to i64*
  %3334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3335 = getelementptr inbounds %struct.GPR, %struct.GPR* %3334, i32 0, i32 9
  %3336 = getelementptr inbounds %struct.Reg, %struct.Reg* %3335, i32 0, i32 0
  %RSI.i121 = bitcast %union.anon* %3336 to i64*
  %3337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3338 = getelementptr inbounds %struct.GPR, %struct.GPR* %3337, i32 0, i32 15
  %3339 = getelementptr inbounds %struct.Reg, %struct.Reg* %3338, i32 0, i32 0
  %RBP.i122 = bitcast %union.anon* %3339 to i64*
  %3340 = load i64, i64* %RBP.i122
  %3341 = sub i64 %3340, 8
  %3342 = load i64, i64* %PC.i120
  %3343 = add i64 %3342, 4
  store i64 %3343, i64* %PC.i120
  %3344 = inttoptr i64 %3341 to i64*
  %3345 = load i64, i64* %3344
  store i64 %3345, i64* %RSI.i121, align 8
  store %struct.Memory* %loadMem_400d9a, %struct.Memory** %MEMORY
  %loadMem_400d9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3347 = getelementptr inbounds %struct.GPR, %struct.GPR* %3346, i32 0, i32 33
  %3348 = getelementptr inbounds %struct.Reg, %struct.Reg* %3347, i32 0, i32 0
  %PC.i117 = bitcast %union.anon* %3348 to i64*
  %3349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3350 = getelementptr inbounds %struct.GPR, %struct.GPR* %3349, i32 0, i32 11
  %3351 = getelementptr inbounds %struct.Reg, %struct.Reg* %3350, i32 0, i32 0
  %RDI.i118 = bitcast %union.anon* %3351 to i64*
  %3352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3353 = getelementptr inbounds %struct.GPR, %struct.GPR* %3352, i32 0, i32 15
  %3354 = getelementptr inbounds %struct.Reg, %struct.Reg* %3353, i32 0, i32 0
  %RBP.i119 = bitcast %union.anon* %3354 to i64*
  %3355 = load i64, i64* %RBP.i119
  %3356 = sub i64 %3355, 56
  %3357 = load i64, i64* %PC.i117
  %3358 = add i64 %3357, 4
  store i64 %3358, i64* %PC.i117
  %3359 = inttoptr i64 %3356 to i64*
  %3360 = load i64, i64* %3359
  store i64 %3360, i64* %RDI.i118, align 8
  store %struct.Memory* %loadMem_400d9e, %struct.Memory** %MEMORY
  %loadMem_400da2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3362 = getelementptr inbounds %struct.GPR, %struct.GPR* %3361, i32 0, i32 33
  %3363 = getelementptr inbounds %struct.Reg, %struct.Reg* %3362, i32 0, i32 0
  %PC.i115 = bitcast %union.anon* %3363 to i64*
  %3364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3365 = getelementptr inbounds %struct.GPR, %struct.GPR* %3364, i32 0, i32 11
  %3366 = getelementptr inbounds %struct.Reg, %struct.Reg* %3365, i32 0, i32 0
  %RDI.i116 = bitcast %union.anon* %3366 to i64*
  %3367 = load i64, i64* %RDI.i116
  %3368 = load i64, i64* %PC.i115
  %3369 = add i64 %3368, 4
  store i64 %3369, i64* %PC.i115
  %3370 = sub i64 %3367, 1
  store i64 %3370, i64* %RDI.i116, align 8
  %3371 = icmp ult i64 %3367, 1
  %3372 = zext i1 %3371 to i8
  %3373 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3372, i8* %3373, align 1
  %3374 = trunc i64 %3370 to i32
  %3375 = and i32 %3374, 255
  %3376 = call i32 @llvm.ctpop.i32(i32 %3375)
  %3377 = trunc i32 %3376 to i8
  %3378 = and i8 %3377, 1
  %3379 = xor i8 %3378, 1
  %3380 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3379, i8* %3380, align 1
  %3381 = xor i64 1, %3367
  %3382 = xor i64 %3381, %3370
  %3383 = lshr i64 %3382, 4
  %3384 = trunc i64 %3383 to i8
  %3385 = and i8 %3384, 1
  %3386 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3385, i8* %3386, align 1
  %3387 = icmp eq i64 %3370, 0
  %3388 = zext i1 %3387 to i8
  %3389 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3388, i8* %3389, align 1
  %3390 = lshr i64 %3370, 63
  %3391 = trunc i64 %3390 to i8
  %3392 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3391, i8* %3392, align 1
  %3393 = lshr i64 %3367, 63
  %3394 = xor i64 %3390, %3393
  %3395 = add i64 %3394, %3393
  %3396 = icmp eq i64 %3395, 2
  %3397 = zext i1 %3396 to i8
  %3398 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3397, i8* %3398, align 1
  store %struct.Memory* %loadMem_400da2, %struct.Memory** %MEMORY
  %loadMem_400da6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3400 = getelementptr inbounds %struct.GPR, %struct.GPR* %3399, i32 0, i32 33
  %3401 = getelementptr inbounds %struct.Reg, %struct.Reg* %3400, i32 0, i32 0
  %PC.i113 = bitcast %union.anon* %3401 to i64*
  %3402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3403 = getelementptr inbounds %struct.GPR, %struct.GPR* %3402, i32 0, i32 11
  %3404 = getelementptr inbounds %struct.Reg, %struct.Reg* %3403, i32 0, i32 0
  %RDI.i114 = bitcast %union.anon* %3404 to i64*
  %3405 = load i64, i64* %RDI.i114
  %3406 = load i64, i64* %PC.i113
  %3407 = add i64 %3406, 4
  store i64 %3407, i64* %PC.i113
  %3408 = shl i64 %3405, 5
  %3409 = icmp slt i64 %3408, 0
  %3410 = shl i64 %3408, 1
  store i64 %3410, i64* %RDI.i114, align 8
  %3411 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %3412 = zext i1 %3409 to i8
  store i8 %3412, i8* %3411, align 1
  %3413 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %3414 = trunc i64 %3410 to i32
  %3415 = and i32 %3414, 254
  %3416 = call i32 @llvm.ctpop.i32(i32 %3415)
  %3417 = trunc i32 %3416 to i8
  %3418 = and i8 %3417, 1
  %3419 = xor i8 %3418, 1
  store i8 %3419, i8* %3413, align 1
  %3420 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3420, align 1
  %3421 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3422 = icmp eq i64 %3410, 0
  %3423 = zext i1 %3422 to i8
  store i8 %3423, i8* %3421, align 1
  %3424 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3425 = lshr i64 %3410, 63
  %3426 = trunc i64 %3425 to i8
  store i8 %3426, i8* %3424, align 1
  %3427 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3427, align 1
  store %struct.Memory* %loadMem_400da6, %struct.Memory** %MEMORY
  %loadMem_400daa = load %struct.Memory*, %struct.Memory** %MEMORY
  %3428 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3429 = getelementptr inbounds %struct.GPR, %struct.GPR* %3428, i32 0, i32 33
  %3430 = getelementptr inbounds %struct.Reg, %struct.Reg* %3429, i32 0, i32 0
  %PC.i111 = bitcast %union.anon* %3430 to i64*
  %3431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3432 = getelementptr inbounds %struct.GPR, %struct.GPR* %3431, i32 0, i32 9
  %3433 = getelementptr inbounds %struct.Reg, %struct.Reg* %3432, i32 0, i32 0
  %RSI.i112 = bitcast %union.anon* %3433 to i64*
  %3434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3435 = getelementptr inbounds %struct.GPR, %struct.GPR* %3434, i32 0, i32 11
  %3436 = getelementptr inbounds %struct.Reg, %struct.Reg* %3435, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %3436 to i64*
  %3437 = load i64, i64* %RSI.i112
  %3438 = load i64, i64* %RDI.i
  %3439 = load i64, i64* %PC.i111
  %3440 = add i64 %3439, 3
  store i64 %3440, i64* %PC.i111
  %3441 = add i64 %3438, %3437
  store i64 %3441, i64* %RSI.i112, align 8
  %3442 = icmp ult i64 %3441, %3437
  %3443 = icmp ult i64 %3441, %3438
  %3444 = or i1 %3442, %3443
  %3445 = zext i1 %3444 to i8
  %3446 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3445, i8* %3446, align 1
  %3447 = trunc i64 %3441 to i32
  %3448 = and i32 %3447, 255
  %3449 = call i32 @llvm.ctpop.i32(i32 %3448)
  %3450 = trunc i32 %3449 to i8
  %3451 = and i8 %3450, 1
  %3452 = xor i8 %3451, 1
  %3453 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3452, i8* %3453, align 1
  %3454 = xor i64 %3438, %3437
  %3455 = xor i64 %3454, %3441
  %3456 = lshr i64 %3455, 4
  %3457 = trunc i64 %3456 to i8
  %3458 = and i8 %3457, 1
  %3459 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3458, i8* %3459, align 1
  %3460 = icmp eq i64 %3441, 0
  %3461 = zext i1 %3460 to i8
  %3462 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3461, i8* %3462, align 1
  %3463 = lshr i64 %3441, 63
  %3464 = trunc i64 %3463 to i8
  %3465 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3464, i8* %3465, align 1
  %3466 = lshr i64 %3437, 63
  %3467 = lshr i64 %3438, 63
  %3468 = xor i64 %3463, %3466
  %3469 = xor i64 %3463, %3467
  %3470 = add i64 %3468, %3469
  %3471 = icmp eq i64 %3470, 2
  %3472 = zext i1 %3471 to i8
  %3473 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3472, i8* %3473, align 1
  store %struct.Memory* %loadMem_400daa, %struct.Memory** %MEMORY
  %loadMem_400dad = load %struct.Memory*, %struct.Memory** %MEMORY
  %3474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3475 = getelementptr inbounds %struct.GPR, %struct.GPR* %3474, i32 0, i32 33
  %3476 = getelementptr inbounds %struct.Reg, %struct.Reg* %3475, i32 0, i32 0
  %PC.i108 = bitcast %union.anon* %3476 to i64*
  %3477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3478 = getelementptr inbounds %struct.GPR, %struct.GPR* %3477, i32 0, i32 1
  %3479 = getelementptr inbounds %struct.Reg, %struct.Reg* %3478, i32 0, i32 0
  %RAX.i109 = bitcast %union.anon* %3479 to i64*
  %3480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3481 = getelementptr inbounds %struct.GPR, %struct.GPR* %3480, i32 0, i32 9
  %3482 = getelementptr inbounds %struct.Reg, %struct.Reg* %3481, i32 0, i32 0
  %RSI.i110 = bitcast %union.anon* %3482 to i64*
  %3483 = load i64, i64* %RSI.i110
  %3484 = add i64 %3483, 48
  %3485 = load i64, i64* %RAX.i109
  %3486 = load i64, i64* %PC.i108
  %3487 = add i64 %3486, 4
  store i64 %3487, i64* %PC.i108
  %3488 = inttoptr i64 %3484 to i64*
  store i64 %3485, i64* %3488
  store %struct.Memory* %loadMem_400dad, %struct.Memory** %MEMORY
  %loadMem_400db1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3490 = getelementptr inbounds %struct.GPR, %struct.GPR* %3489, i32 0, i32 33
  %3491 = getelementptr inbounds %struct.Reg, %struct.Reg* %3490, i32 0, i32 0
  %PC.i105 = bitcast %union.anon* %3491 to i64*
  %3492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3493 = getelementptr inbounds %struct.GPR, %struct.GPR* %3492, i32 0, i32 1
  %3494 = getelementptr inbounds %struct.Reg, %struct.Reg* %3493, i32 0, i32 0
  %RAX.i106 = bitcast %union.anon* %3494 to i64*
  %3495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3496 = getelementptr inbounds %struct.GPR, %struct.GPR* %3495, i32 0, i32 15
  %3497 = getelementptr inbounds %struct.Reg, %struct.Reg* %3496, i32 0, i32 0
  %RBP.i107 = bitcast %union.anon* %3497 to i64*
  %3498 = load i64, i64* %RBP.i107
  %3499 = sub i64 %3498, 56
  %3500 = load i64, i64* %PC.i105
  %3501 = add i64 %3500, 4
  store i64 %3501, i64* %PC.i105
  %3502 = inttoptr i64 %3499 to i64*
  %3503 = load i64, i64* %3502
  store i64 %3503, i64* %RAX.i106, align 8
  store %struct.Memory* %loadMem_400db1, %struct.Memory** %MEMORY
  %loadMem_400db5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3505 = getelementptr inbounds %struct.GPR, %struct.GPR* %3504, i32 0, i32 33
  %3506 = getelementptr inbounds %struct.Reg, %struct.Reg* %3505, i32 0, i32 0
  %PC.i104 = bitcast %union.anon* %3506 to i64*
  %3507 = load i64, i64* %PC.i104
  %3508 = add i64 %3507, 2
  store i64 %3508, i64* %PC.i104
  %3509 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3510 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3511 = load i64, i64* %3510, align 8
  %3512 = ashr i64 %3511, 63
  store i64 %3512, i64* %3509, align 8
  store %struct.Memory* %loadMem_400db5, %struct.Memory** %MEMORY
  %loadMem_400db7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3514 = getelementptr inbounds %struct.GPR, %struct.GPR* %3513, i32 0, i32 33
  %3515 = getelementptr inbounds %struct.Reg, %struct.Reg* %3514, i32 0, i32 0
  %PC.i100 = bitcast %union.anon* %3515 to i64*
  %3516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3517 = getelementptr inbounds %struct.GPR, %struct.GPR* %3516, i32 0, i32 5
  %3518 = getelementptr inbounds %struct.Reg, %struct.Reg* %3517, i32 0, i32 0
  %RCX.i101 = bitcast %union.anon* %3518 to i64*
  %3519 = load i64, i64* %RCX.i101
  %3520 = load i64, i64* %PC.i100
  %3521 = add i64 %3520, 3
  store i64 %3521, i64* %PC.i100
  %3522 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3523 = load i64, i64* %3522, align 8
  %3524 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3525 = load i64, i64* %3524, align 8
  %3526 = sext i64 %3519 to i128
  %3527 = and i128 %3526, -18446744073709551616
  %3528 = zext i64 %3525 to i128
  %3529 = shl i128 %3528, 64
  %3530 = zext i64 %3523 to i128
  %3531 = or i128 %3529, %3530
  %3532 = zext i64 %3519 to i128
  %3533 = or i128 %3527, %3532
  %3534 = sdiv i128 %3531, %3533
  %3535 = trunc i128 %3534 to i64
  %3536 = and i128 %3534, 18446744073709551615
  %3537 = sext i64 %3535 to i128
  %3538 = and i128 %3537, -18446744073709551616
  %3539 = or i128 %3538, %3536
  %3540 = icmp eq i128 %3534, %3539
  br i1 %3540, label %3545, label %3541

; <label>:3541:                                   ; preds = %routine_idivq__rcx.exit138
  %3542 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3543 = load i64, i64* %3542, align 8
  %3544 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3543, %struct.Memory* %loadMem_400db7)
  br label %routine_idivq__rcx.exit

; <label>:3545:                                   ; preds = %routine_idivq__rcx.exit138
  %3546 = srem i128 %3531, %3533
  %3547 = trunc i128 %3546 to i64
  store i64 %3535, i64* %3522, align 8
  store i64 %3547, i64* %3524, align 8
  %3548 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3548, align 1
  %3549 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %3549, align 1
  %3550 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3550, align 1
  %3551 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3551, align 1
  %3552 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %3552, align 1
  %3553 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3553, align 1
  br label %routine_idivq__rcx.exit

routine_idivq__rcx.exit:                          ; preds = %3541, %3545
  %3554 = phi %struct.Memory* [ %3544, %3541 ], [ %loadMem_400db7, %3545 ]
  store %struct.Memory* %3554, %struct.Memory** %MEMORY
  %loadMem_400dba = load %struct.Memory*, %struct.Memory** %MEMORY
  %3555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3556 = getelementptr inbounds %struct.GPR, %struct.GPR* %3555, i32 0, i32 33
  %3557 = getelementptr inbounds %struct.Reg, %struct.Reg* %3556, i32 0, i32 0
  %PC.i97 = bitcast %union.anon* %3557 to i64*
  %3558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3559 = getelementptr inbounds %struct.GPR, %struct.GPR* %3558, i32 0, i32 1
  %3560 = getelementptr inbounds %struct.Reg, %struct.Reg* %3559, i32 0, i32 0
  %RAX.i98 = bitcast %union.anon* %3560 to i64*
  %3561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3562 = getelementptr inbounds %struct.GPR, %struct.GPR* %3561, i32 0, i32 15
  %3563 = getelementptr inbounds %struct.Reg, %struct.Reg* %3562, i32 0, i32 0
  %RBP.i99 = bitcast %union.anon* %3563 to i64*
  %3564 = load i64, i64* %RBP.i99
  %3565 = sub i64 %3564, 56
  %3566 = load i64, i64* %RAX.i98
  %3567 = load i64, i64* %PC.i97
  %3568 = add i64 %3567, 4
  store i64 %3568, i64* %PC.i97
  %3569 = inttoptr i64 %3565 to i64*
  store i64 %3566, i64* %3569
  store %struct.Memory* %loadMem_400dba, %struct.Memory** %MEMORY
  %loadMem_400dbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %3570 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3571 = getelementptr inbounds %struct.GPR, %struct.GPR* %3570, i32 0, i32 33
  %3572 = getelementptr inbounds %struct.Reg, %struct.Reg* %3571, i32 0, i32 0
  %PC.i94 = bitcast %union.anon* %3572 to i64*
  %3573 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3574 = getelementptr inbounds %struct.GPR, %struct.GPR* %3573, i32 0, i32 1
  %3575 = getelementptr inbounds %struct.Reg, %struct.Reg* %3574, i32 0, i32 0
  %RAX.i95 = bitcast %union.anon* %3575 to i64*
  %3576 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3577 = getelementptr inbounds %struct.GPR, %struct.GPR* %3576, i32 0, i32 15
  %3578 = getelementptr inbounds %struct.Reg, %struct.Reg* %3577, i32 0, i32 0
  %RBP.i96 = bitcast %union.anon* %3578 to i64*
  %3579 = load i64, i64* %RBP.i96
  %3580 = sub i64 %3579, 24
  %3581 = load i64, i64* %PC.i94
  %3582 = add i64 %3581, 4
  store i64 %3582, i64* %PC.i94
  %3583 = inttoptr i64 %3580 to i64*
  %3584 = load i64, i64* %3583
  store i64 %3584, i64* %RAX.i95, align 8
  store %struct.Memory* %loadMem_400dbe, %struct.Memory** %MEMORY
  %loadMem_400dc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3586 = getelementptr inbounds %struct.GPR, %struct.GPR* %3585, i32 0, i32 33
  %3587 = getelementptr inbounds %struct.Reg, %struct.Reg* %3586, i32 0, i32 0
  %PC.i91 = bitcast %union.anon* %3587 to i64*
  %3588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3589 = getelementptr inbounds %struct.GPR, %struct.GPR* %3588, i32 0, i32 5
  %3590 = getelementptr inbounds %struct.Reg, %struct.Reg* %3589, i32 0, i32 0
  %RCX.i92 = bitcast %union.anon* %3590 to i64*
  %3591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3592 = getelementptr inbounds %struct.GPR, %struct.GPR* %3591, i32 0, i32 15
  %3593 = getelementptr inbounds %struct.Reg, %struct.Reg* %3592, i32 0, i32 0
  %RBP.i93 = bitcast %union.anon* %3593 to i64*
  %3594 = load i64, i64* %RBP.i93
  %3595 = sub i64 %3594, 8
  %3596 = load i64, i64* %PC.i91
  %3597 = add i64 %3596, 4
  store i64 %3597, i64* %PC.i91
  %3598 = inttoptr i64 %3595 to i64*
  %3599 = load i64, i64* %3598
  store i64 %3599, i64* %RCX.i92, align 8
  store %struct.Memory* %loadMem_400dc2, %struct.Memory** %MEMORY
  %loadMem_400dc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3601 = getelementptr inbounds %struct.GPR, %struct.GPR* %3600, i32 0, i32 33
  %3602 = getelementptr inbounds %struct.Reg, %struct.Reg* %3601, i32 0, i32 0
  %PC.i88 = bitcast %union.anon* %3602 to i64*
  %3603 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3604 = getelementptr inbounds %struct.GPR, %struct.GPR* %3603, i32 0, i32 9
  %3605 = getelementptr inbounds %struct.Reg, %struct.Reg* %3604, i32 0, i32 0
  %RSI.i89 = bitcast %union.anon* %3605 to i64*
  %3606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3607 = getelementptr inbounds %struct.GPR, %struct.GPR* %3606, i32 0, i32 15
  %3608 = getelementptr inbounds %struct.Reg, %struct.Reg* %3607, i32 0, i32 0
  %RBP.i90 = bitcast %union.anon* %3608 to i64*
  %3609 = load i64, i64* %RBP.i90
  %3610 = sub i64 %3609, 56
  %3611 = load i64, i64* %PC.i88
  %3612 = add i64 %3611, 4
  store i64 %3612, i64* %PC.i88
  %3613 = inttoptr i64 %3610 to i64*
  %3614 = load i64, i64* %3613
  store i64 %3614, i64* %RSI.i89, align 8
  store %struct.Memory* %loadMem_400dc6, %struct.Memory** %MEMORY
  %loadMem_400dca = load %struct.Memory*, %struct.Memory** %MEMORY
  %3615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3616 = getelementptr inbounds %struct.GPR, %struct.GPR* %3615, i32 0, i32 33
  %3617 = getelementptr inbounds %struct.Reg, %struct.Reg* %3616, i32 0, i32 0
  %PC.i86 = bitcast %union.anon* %3617 to i64*
  %3618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3619 = getelementptr inbounds %struct.GPR, %struct.GPR* %3618, i32 0, i32 9
  %3620 = getelementptr inbounds %struct.Reg, %struct.Reg* %3619, i32 0, i32 0
  %RSI.i87 = bitcast %union.anon* %3620 to i64*
  %3621 = load i64, i64* %RSI.i87
  %3622 = load i64, i64* %PC.i86
  %3623 = add i64 %3622, 4
  store i64 %3623, i64* %PC.i86
  %3624 = sub i64 %3621, 1
  store i64 %3624, i64* %RSI.i87, align 8
  %3625 = icmp ult i64 %3621, 1
  %3626 = zext i1 %3625 to i8
  %3627 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3626, i8* %3627, align 1
  %3628 = trunc i64 %3624 to i32
  %3629 = and i32 %3628, 255
  %3630 = call i32 @llvm.ctpop.i32(i32 %3629)
  %3631 = trunc i32 %3630 to i8
  %3632 = and i8 %3631, 1
  %3633 = xor i8 %3632, 1
  %3634 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3633, i8* %3634, align 1
  %3635 = xor i64 1, %3621
  %3636 = xor i64 %3635, %3624
  %3637 = lshr i64 %3636, 4
  %3638 = trunc i64 %3637 to i8
  %3639 = and i8 %3638, 1
  %3640 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3639, i8* %3640, align 1
  %3641 = icmp eq i64 %3624, 0
  %3642 = zext i1 %3641 to i8
  %3643 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3642, i8* %3643, align 1
  %3644 = lshr i64 %3624, 63
  %3645 = trunc i64 %3644 to i8
  %3646 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3645, i8* %3646, align 1
  %3647 = lshr i64 %3621, 63
  %3648 = xor i64 %3644, %3647
  %3649 = add i64 %3648, %3647
  %3650 = icmp eq i64 %3649, 2
  %3651 = zext i1 %3650 to i8
  %3652 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3651, i8* %3652, align 1
  store %struct.Memory* %loadMem_400dca, %struct.Memory** %MEMORY
  %loadMem_400dce = load %struct.Memory*, %struct.Memory** %MEMORY
  %3653 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3654 = getelementptr inbounds %struct.GPR, %struct.GPR* %3653, i32 0, i32 33
  %3655 = getelementptr inbounds %struct.Reg, %struct.Reg* %3654, i32 0, i32 0
  %PC.i84 = bitcast %union.anon* %3655 to i64*
  %3656 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3657 = getelementptr inbounds %struct.GPR, %struct.GPR* %3656, i32 0, i32 9
  %3658 = getelementptr inbounds %struct.Reg, %struct.Reg* %3657, i32 0, i32 0
  %RSI.i85 = bitcast %union.anon* %3658 to i64*
  %3659 = load i64, i64* %RSI.i85
  %3660 = load i64, i64* %PC.i84
  %3661 = add i64 %3660, 4
  store i64 %3661, i64* %PC.i84
  %3662 = shl i64 %3659, 5
  %3663 = icmp slt i64 %3662, 0
  %3664 = shl i64 %3662, 1
  store i64 %3664, i64* %RSI.i85, align 8
  %3665 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %3666 = zext i1 %3663 to i8
  store i8 %3666, i8* %3665, align 1
  %3667 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %3668 = trunc i64 %3664 to i32
  %3669 = and i32 %3668, 254
  %3670 = call i32 @llvm.ctpop.i32(i32 %3669)
  %3671 = trunc i32 %3670 to i8
  %3672 = and i8 %3671, 1
  %3673 = xor i8 %3672, 1
  store i8 %3673, i8* %3667, align 1
  %3674 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3674, align 1
  %3675 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3676 = icmp eq i64 %3664, 0
  %3677 = zext i1 %3676 to i8
  store i8 %3677, i8* %3675, align 1
  %3678 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3679 = lshr i64 %3664, 63
  %3680 = trunc i64 %3679 to i8
  store i8 %3680, i8* %3678, align 1
  %3681 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3681, align 1
  store %struct.Memory* %loadMem_400dce, %struct.Memory** %MEMORY
  %loadMem_400dd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3682 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3683 = getelementptr inbounds %struct.GPR, %struct.GPR* %3682, i32 0, i32 33
  %3684 = getelementptr inbounds %struct.Reg, %struct.Reg* %3683, i32 0, i32 0
  %PC.i81 = bitcast %union.anon* %3684 to i64*
  %3685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3686 = getelementptr inbounds %struct.GPR, %struct.GPR* %3685, i32 0, i32 5
  %3687 = getelementptr inbounds %struct.Reg, %struct.Reg* %3686, i32 0, i32 0
  %RCX.i82 = bitcast %union.anon* %3687 to i64*
  %3688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3689 = getelementptr inbounds %struct.GPR, %struct.GPR* %3688, i32 0, i32 9
  %3690 = getelementptr inbounds %struct.Reg, %struct.Reg* %3689, i32 0, i32 0
  %RSI.i83 = bitcast %union.anon* %3690 to i64*
  %3691 = load i64, i64* %RCX.i82
  %3692 = load i64, i64* %RSI.i83
  %3693 = load i64, i64* %PC.i81
  %3694 = add i64 %3693, 3
  store i64 %3694, i64* %PC.i81
  %3695 = add i64 %3692, %3691
  store i64 %3695, i64* %RCX.i82, align 8
  %3696 = icmp ult i64 %3695, %3691
  %3697 = icmp ult i64 %3695, %3692
  %3698 = or i1 %3696, %3697
  %3699 = zext i1 %3698 to i8
  %3700 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3699, i8* %3700, align 1
  %3701 = trunc i64 %3695 to i32
  %3702 = and i32 %3701, 255
  %3703 = call i32 @llvm.ctpop.i32(i32 %3702)
  %3704 = trunc i32 %3703 to i8
  %3705 = and i8 %3704, 1
  %3706 = xor i8 %3705, 1
  %3707 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3706, i8* %3707, align 1
  %3708 = xor i64 %3692, %3691
  %3709 = xor i64 %3708, %3695
  %3710 = lshr i64 %3709, 4
  %3711 = trunc i64 %3710 to i8
  %3712 = and i8 %3711, 1
  %3713 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3712, i8* %3713, align 1
  %3714 = icmp eq i64 %3695, 0
  %3715 = zext i1 %3714 to i8
  %3716 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3715, i8* %3716, align 1
  %3717 = lshr i64 %3695, 63
  %3718 = trunc i64 %3717 to i8
  %3719 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3718, i8* %3719, align 1
  %3720 = lshr i64 %3691, 63
  %3721 = lshr i64 %3692, 63
  %3722 = xor i64 %3717, %3720
  %3723 = xor i64 %3717, %3721
  %3724 = add i64 %3722, %3723
  %3725 = icmp eq i64 %3724, 2
  %3726 = zext i1 %3725 to i8
  %3727 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3726, i8* %3727, align 1
  store %struct.Memory* %loadMem_400dd2, %struct.Memory** %MEMORY
  %loadMem_400dd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3729 = getelementptr inbounds %struct.GPR, %struct.GPR* %3728, i32 0, i32 33
  %3730 = getelementptr inbounds %struct.Reg, %struct.Reg* %3729, i32 0, i32 0
  %PC.i78 = bitcast %union.anon* %3730 to i64*
  %3731 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3732 = getelementptr inbounds %struct.GPR, %struct.GPR* %3731, i32 0, i32 1
  %3733 = getelementptr inbounds %struct.Reg, %struct.Reg* %3732, i32 0, i32 0
  %RAX.i79 = bitcast %union.anon* %3733 to i64*
  %3734 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3735 = getelementptr inbounds %struct.GPR, %struct.GPR* %3734, i32 0, i32 5
  %3736 = getelementptr inbounds %struct.Reg, %struct.Reg* %3735, i32 0, i32 0
  %RCX.i80 = bitcast %union.anon* %3736 to i64*
  %3737 = load i64, i64* %RCX.i80
  %3738 = add i64 %3737, 8
  %3739 = load i64, i64* %RAX.i79
  %3740 = load i64, i64* %PC.i78
  %3741 = add i64 %3740, 4
  store i64 %3741, i64* %PC.i78
  %3742 = inttoptr i64 %3738 to i64*
  store i64 %3739, i64* %3742
  store %struct.Memory* %loadMem_400dd5, %struct.Memory** %MEMORY
  %loadMem_400dd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3743 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3744 = getelementptr inbounds %struct.GPR, %struct.GPR* %3743, i32 0, i32 33
  %3745 = getelementptr inbounds %struct.Reg, %struct.Reg* %3744, i32 0, i32 0
  %PC.i75 = bitcast %union.anon* %3745 to i64*
  %3746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3747 = getelementptr inbounds %struct.GPR, %struct.GPR* %3746, i32 0, i32 1
  %3748 = getelementptr inbounds %struct.Reg, %struct.Reg* %3747, i32 0, i32 0
  %RAX.i76 = bitcast %union.anon* %3748 to i64*
  %3749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3750 = getelementptr inbounds %struct.GPR, %struct.GPR* %3749, i32 0, i32 15
  %3751 = getelementptr inbounds %struct.Reg, %struct.Reg* %3750, i32 0, i32 0
  %RBP.i77 = bitcast %union.anon* %3751 to i64*
  %3752 = load i64, i64* %RBP.i77
  %3753 = sub i64 %3752, 32
  %3754 = load i64, i64* %PC.i75
  %3755 = add i64 %3754, 4
  store i64 %3755, i64* %PC.i75
  %3756 = inttoptr i64 %3753 to i64*
  %3757 = load i64, i64* %3756
  store i64 %3757, i64* %RAX.i76, align 8
  store %struct.Memory* %loadMem_400dd9, %struct.Memory** %MEMORY
  %loadMem_400ddd = load %struct.Memory*, %struct.Memory** %MEMORY
  %3758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3759 = getelementptr inbounds %struct.GPR, %struct.GPR* %3758, i32 0, i32 33
  %3760 = getelementptr inbounds %struct.Reg, %struct.Reg* %3759, i32 0, i32 0
  %PC.i72 = bitcast %union.anon* %3760 to i64*
  %3761 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3762 = getelementptr inbounds %struct.GPR, %struct.GPR* %3761, i32 0, i32 5
  %3763 = getelementptr inbounds %struct.Reg, %struct.Reg* %3762, i32 0, i32 0
  %RCX.i73 = bitcast %union.anon* %3763 to i64*
  %3764 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3765 = getelementptr inbounds %struct.GPR, %struct.GPR* %3764, i32 0, i32 15
  %3766 = getelementptr inbounds %struct.Reg, %struct.Reg* %3765, i32 0, i32 0
  %RBP.i74 = bitcast %union.anon* %3766 to i64*
  %3767 = load i64, i64* %RBP.i74
  %3768 = sub i64 %3767, 8
  %3769 = load i64, i64* %PC.i72
  %3770 = add i64 %3769, 4
  store i64 %3770, i64* %PC.i72
  %3771 = inttoptr i64 %3768 to i64*
  %3772 = load i64, i64* %3771
  store i64 %3772, i64* %RCX.i73, align 8
  store %struct.Memory* %loadMem_400ddd, %struct.Memory** %MEMORY
  %loadMem_400de1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3774 = getelementptr inbounds %struct.GPR, %struct.GPR* %3773, i32 0, i32 33
  %3775 = getelementptr inbounds %struct.Reg, %struct.Reg* %3774, i32 0, i32 0
  %PC.i69 = bitcast %union.anon* %3775 to i64*
  %3776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3777 = getelementptr inbounds %struct.GPR, %struct.GPR* %3776, i32 0, i32 9
  %3778 = getelementptr inbounds %struct.Reg, %struct.Reg* %3777, i32 0, i32 0
  %RSI.i70 = bitcast %union.anon* %3778 to i64*
  %3779 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3780 = getelementptr inbounds %struct.GPR, %struct.GPR* %3779, i32 0, i32 15
  %3781 = getelementptr inbounds %struct.Reg, %struct.Reg* %3780, i32 0, i32 0
  %RBP.i71 = bitcast %union.anon* %3781 to i64*
  %3782 = load i64, i64* %RBP.i71
  %3783 = sub i64 %3782, 56
  %3784 = load i64, i64* %PC.i69
  %3785 = add i64 %3784, 4
  store i64 %3785, i64* %PC.i69
  %3786 = inttoptr i64 %3783 to i64*
  %3787 = load i64, i64* %3786
  store i64 %3787, i64* %RSI.i70, align 8
  store %struct.Memory* %loadMem_400de1, %struct.Memory** %MEMORY
  %loadMem_400de5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3789 = getelementptr inbounds %struct.GPR, %struct.GPR* %3788, i32 0, i32 33
  %3790 = getelementptr inbounds %struct.Reg, %struct.Reg* %3789, i32 0, i32 0
  %PC.i67 = bitcast %union.anon* %3790 to i64*
  %3791 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3792 = getelementptr inbounds %struct.GPR, %struct.GPR* %3791, i32 0, i32 9
  %3793 = getelementptr inbounds %struct.Reg, %struct.Reg* %3792, i32 0, i32 0
  %RSI.i68 = bitcast %union.anon* %3793 to i64*
  %3794 = load i64, i64* %RSI.i68
  %3795 = load i64, i64* %PC.i67
  %3796 = add i64 %3795, 4
  store i64 %3796, i64* %PC.i67
  %3797 = sub i64 %3794, 1
  store i64 %3797, i64* %RSI.i68, align 8
  %3798 = icmp ult i64 %3794, 1
  %3799 = zext i1 %3798 to i8
  %3800 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3799, i8* %3800, align 1
  %3801 = trunc i64 %3797 to i32
  %3802 = and i32 %3801, 255
  %3803 = call i32 @llvm.ctpop.i32(i32 %3802)
  %3804 = trunc i32 %3803 to i8
  %3805 = and i8 %3804, 1
  %3806 = xor i8 %3805, 1
  %3807 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3806, i8* %3807, align 1
  %3808 = xor i64 1, %3794
  %3809 = xor i64 %3808, %3797
  %3810 = lshr i64 %3809, 4
  %3811 = trunc i64 %3810 to i8
  %3812 = and i8 %3811, 1
  %3813 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3812, i8* %3813, align 1
  %3814 = icmp eq i64 %3797, 0
  %3815 = zext i1 %3814 to i8
  %3816 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3815, i8* %3816, align 1
  %3817 = lshr i64 %3797, 63
  %3818 = trunc i64 %3817 to i8
  %3819 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3818, i8* %3819, align 1
  %3820 = lshr i64 %3794, 63
  %3821 = xor i64 %3817, %3820
  %3822 = add i64 %3821, %3820
  %3823 = icmp eq i64 %3822, 2
  %3824 = zext i1 %3823 to i8
  %3825 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3824, i8* %3825, align 1
  store %struct.Memory* %loadMem_400de5, %struct.Memory** %MEMORY
  %loadMem_400de9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3827 = getelementptr inbounds %struct.GPR, %struct.GPR* %3826, i32 0, i32 33
  %3828 = getelementptr inbounds %struct.Reg, %struct.Reg* %3827, i32 0, i32 0
  %PC.i65 = bitcast %union.anon* %3828 to i64*
  %3829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3830 = getelementptr inbounds %struct.GPR, %struct.GPR* %3829, i32 0, i32 9
  %3831 = getelementptr inbounds %struct.Reg, %struct.Reg* %3830, i32 0, i32 0
  %RSI.i66 = bitcast %union.anon* %3831 to i64*
  %3832 = load i64, i64* %RSI.i66
  %3833 = load i64, i64* %PC.i65
  %3834 = add i64 %3833, 4
  store i64 %3834, i64* %PC.i65
  %3835 = shl i64 %3832, 5
  %3836 = icmp slt i64 %3835, 0
  %3837 = shl i64 %3835, 1
  store i64 %3837, i64* %RSI.i66, align 8
  %3838 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %3839 = zext i1 %3836 to i8
  store i8 %3839, i8* %3838, align 1
  %3840 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %3841 = trunc i64 %3837 to i32
  %3842 = and i32 %3841, 254
  %3843 = call i32 @llvm.ctpop.i32(i32 %3842)
  %3844 = trunc i32 %3843 to i8
  %3845 = and i8 %3844, 1
  %3846 = xor i8 %3845, 1
  store i8 %3846, i8* %3840, align 1
  %3847 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3847, align 1
  %3848 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3849 = icmp eq i64 %3837, 0
  %3850 = zext i1 %3849 to i8
  store i8 %3850, i8* %3848, align 1
  %3851 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3852 = lshr i64 %3837, 63
  %3853 = trunc i64 %3852 to i8
  store i8 %3853, i8* %3851, align 1
  %3854 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3854, align 1
  store %struct.Memory* %loadMem_400de9, %struct.Memory** %MEMORY
  %loadMem_400ded = load %struct.Memory*, %struct.Memory** %MEMORY
  %3855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3856 = getelementptr inbounds %struct.GPR, %struct.GPR* %3855, i32 0, i32 33
  %3857 = getelementptr inbounds %struct.Reg, %struct.Reg* %3856, i32 0, i32 0
  %PC.i62 = bitcast %union.anon* %3857 to i64*
  %3858 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3859 = getelementptr inbounds %struct.GPR, %struct.GPR* %3858, i32 0, i32 5
  %3860 = getelementptr inbounds %struct.Reg, %struct.Reg* %3859, i32 0, i32 0
  %RCX.i63 = bitcast %union.anon* %3860 to i64*
  %3861 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3862 = getelementptr inbounds %struct.GPR, %struct.GPR* %3861, i32 0, i32 9
  %3863 = getelementptr inbounds %struct.Reg, %struct.Reg* %3862, i32 0, i32 0
  %RSI.i64 = bitcast %union.anon* %3863 to i64*
  %3864 = load i64, i64* %RCX.i63
  %3865 = load i64, i64* %RSI.i64
  %3866 = load i64, i64* %PC.i62
  %3867 = add i64 %3866, 3
  store i64 %3867, i64* %PC.i62
  %3868 = add i64 %3865, %3864
  store i64 %3868, i64* %RCX.i63, align 8
  %3869 = icmp ult i64 %3868, %3864
  %3870 = icmp ult i64 %3868, %3865
  %3871 = or i1 %3869, %3870
  %3872 = zext i1 %3871 to i8
  %3873 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3872, i8* %3873, align 1
  %3874 = trunc i64 %3868 to i32
  %3875 = and i32 %3874, 255
  %3876 = call i32 @llvm.ctpop.i32(i32 %3875)
  %3877 = trunc i32 %3876 to i8
  %3878 = and i8 %3877, 1
  %3879 = xor i8 %3878, 1
  %3880 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3879, i8* %3880, align 1
  %3881 = xor i64 %3865, %3864
  %3882 = xor i64 %3881, %3868
  %3883 = lshr i64 %3882, 4
  %3884 = trunc i64 %3883 to i8
  %3885 = and i8 %3884, 1
  %3886 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3885, i8* %3886, align 1
  %3887 = icmp eq i64 %3868, 0
  %3888 = zext i1 %3887 to i8
  %3889 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3888, i8* %3889, align 1
  %3890 = lshr i64 %3868, 63
  %3891 = trunc i64 %3890 to i8
  %3892 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3891, i8* %3892, align 1
  %3893 = lshr i64 %3864, 63
  %3894 = lshr i64 %3865, 63
  %3895 = xor i64 %3890, %3893
  %3896 = xor i64 %3890, %3894
  %3897 = add i64 %3895, %3896
  %3898 = icmp eq i64 %3897, 2
  %3899 = zext i1 %3898 to i8
  %3900 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3899, i8* %3900, align 1
  store %struct.Memory* %loadMem_400ded, %struct.Memory** %MEMORY
  %loadMem_400df0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3902 = getelementptr inbounds %struct.GPR, %struct.GPR* %3901, i32 0, i32 33
  %3903 = getelementptr inbounds %struct.Reg, %struct.Reg* %3902, i32 0, i32 0
  %PC.i59 = bitcast %union.anon* %3903 to i64*
  %3904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3905 = getelementptr inbounds %struct.GPR, %struct.GPR* %3904, i32 0, i32 1
  %3906 = getelementptr inbounds %struct.Reg, %struct.Reg* %3905, i32 0, i32 0
  %RAX.i60 = bitcast %union.anon* %3906 to i64*
  %3907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3908 = getelementptr inbounds %struct.GPR, %struct.GPR* %3907, i32 0, i32 5
  %3909 = getelementptr inbounds %struct.Reg, %struct.Reg* %3908, i32 0, i32 0
  %RCX.i61 = bitcast %union.anon* %3909 to i64*
  %3910 = load i64, i64* %RCX.i61
  %3911 = add i64 %3910, 16
  %3912 = load i64, i64* %RAX.i60
  %3913 = load i64, i64* %PC.i59
  %3914 = add i64 %3913, 4
  store i64 %3914, i64* %PC.i59
  %3915 = inttoptr i64 %3911 to i64*
  store i64 %3912, i64* %3915
  store %struct.Memory* %loadMem_400df0, %struct.Memory** %MEMORY
  %loadMem_400df4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3917 = getelementptr inbounds %struct.GPR, %struct.GPR* %3916, i32 0, i32 33
  %3918 = getelementptr inbounds %struct.Reg, %struct.Reg* %3917, i32 0, i32 0
  %PC.i56 = bitcast %union.anon* %3918 to i64*
  %3919 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3920 = getelementptr inbounds %struct.GPR, %struct.GPR* %3919, i32 0, i32 1
  %3921 = getelementptr inbounds %struct.Reg, %struct.Reg* %3920, i32 0, i32 0
  %RAX.i57 = bitcast %union.anon* %3921 to i64*
  %3922 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3923 = getelementptr inbounds %struct.GPR, %struct.GPR* %3922, i32 0, i32 15
  %3924 = getelementptr inbounds %struct.Reg, %struct.Reg* %3923, i32 0, i32 0
  %RBP.i58 = bitcast %union.anon* %3924 to i64*
  %3925 = load i64, i64* %RBP.i58
  %3926 = sub i64 %3925, 40
  %3927 = load i64, i64* %PC.i56
  %3928 = add i64 %3927, 4
  store i64 %3928, i64* %PC.i56
  %3929 = inttoptr i64 %3926 to i64*
  %3930 = load i64, i64* %3929
  store i64 %3930, i64* %RAX.i57, align 8
  store %struct.Memory* %loadMem_400df4, %struct.Memory** %MEMORY
  %loadMem_400df8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3932 = getelementptr inbounds %struct.GPR, %struct.GPR* %3931, i32 0, i32 33
  %3933 = getelementptr inbounds %struct.Reg, %struct.Reg* %3932, i32 0, i32 0
  %PC.i53 = bitcast %union.anon* %3933 to i64*
  %3934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3935 = getelementptr inbounds %struct.GPR, %struct.GPR* %3934, i32 0, i32 5
  %3936 = getelementptr inbounds %struct.Reg, %struct.Reg* %3935, i32 0, i32 0
  %RCX.i54 = bitcast %union.anon* %3936 to i64*
  %3937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3938 = getelementptr inbounds %struct.GPR, %struct.GPR* %3937, i32 0, i32 15
  %3939 = getelementptr inbounds %struct.Reg, %struct.Reg* %3938, i32 0, i32 0
  %RBP.i55 = bitcast %union.anon* %3939 to i64*
  %3940 = load i64, i64* %RBP.i55
  %3941 = sub i64 %3940, 8
  %3942 = load i64, i64* %PC.i53
  %3943 = add i64 %3942, 4
  store i64 %3943, i64* %PC.i53
  %3944 = inttoptr i64 %3941 to i64*
  %3945 = load i64, i64* %3944
  store i64 %3945, i64* %RCX.i54, align 8
  store %struct.Memory* %loadMem_400df8, %struct.Memory** %MEMORY
  %loadMem_400dfc = load %struct.Memory*, %struct.Memory** %MEMORY
  %3946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3947 = getelementptr inbounds %struct.GPR, %struct.GPR* %3946, i32 0, i32 33
  %3948 = getelementptr inbounds %struct.Reg, %struct.Reg* %3947, i32 0, i32 0
  %PC.i50 = bitcast %union.anon* %3948 to i64*
  %3949 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3950 = getelementptr inbounds %struct.GPR, %struct.GPR* %3949, i32 0, i32 9
  %3951 = getelementptr inbounds %struct.Reg, %struct.Reg* %3950, i32 0, i32 0
  %RSI.i51 = bitcast %union.anon* %3951 to i64*
  %3952 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3953 = getelementptr inbounds %struct.GPR, %struct.GPR* %3952, i32 0, i32 15
  %3954 = getelementptr inbounds %struct.Reg, %struct.Reg* %3953, i32 0, i32 0
  %RBP.i52 = bitcast %union.anon* %3954 to i64*
  %3955 = load i64, i64* %RBP.i52
  %3956 = sub i64 %3955, 56
  %3957 = load i64, i64* %PC.i50
  %3958 = add i64 %3957, 4
  store i64 %3958, i64* %PC.i50
  %3959 = inttoptr i64 %3956 to i64*
  %3960 = load i64, i64* %3959
  store i64 %3960, i64* %RSI.i51, align 8
  store %struct.Memory* %loadMem_400dfc, %struct.Memory** %MEMORY
  %loadMem_400e00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3961 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3962 = getelementptr inbounds %struct.GPR, %struct.GPR* %3961, i32 0, i32 33
  %3963 = getelementptr inbounds %struct.Reg, %struct.Reg* %3962, i32 0, i32 0
  %PC.i48 = bitcast %union.anon* %3963 to i64*
  %3964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3965 = getelementptr inbounds %struct.GPR, %struct.GPR* %3964, i32 0, i32 9
  %3966 = getelementptr inbounds %struct.Reg, %struct.Reg* %3965, i32 0, i32 0
  %RSI.i49 = bitcast %union.anon* %3966 to i64*
  %3967 = load i64, i64* %RSI.i49
  %3968 = load i64, i64* %PC.i48
  %3969 = add i64 %3968, 4
  store i64 %3969, i64* %PC.i48
  %3970 = sub i64 %3967, 1
  store i64 %3970, i64* %RSI.i49, align 8
  %3971 = icmp ult i64 %3967, 1
  %3972 = zext i1 %3971 to i8
  %3973 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3972, i8* %3973, align 1
  %3974 = trunc i64 %3970 to i32
  %3975 = and i32 %3974, 255
  %3976 = call i32 @llvm.ctpop.i32(i32 %3975)
  %3977 = trunc i32 %3976 to i8
  %3978 = and i8 %3977, 1
  %3979 = xor i8 %3978, 1
  %3980 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3979, i8* %3980, align 1
  %3981 = xor i64 1, %3967
  %3982 = xor i64 %3981, %3970
  %3983 = lshr i64 %3982, 4
  %3984 = trunc i64 %3983 to i8
  %3985 = and i8 %3984, 1
  %3986 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3985, i8* %3986, align 1
  %3987 = icmp eq i64 %3970, 0
  %3988 = zext i1 %3987 to i8
  %3989 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3988, i8* %3989, align 1
  %3990 = lshr i64 %3970, 63
  %3991 = trunc i64 %3990 to i8
  %3992 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3991, i8* %3992, align 1
  %3993 = lshr i64 %3967, 63
  %3994 = xor i64 %3990, %3993
  %3995 = add i64 %3994, %3993
  %3996 = icmp eq i64 %3995, 2
  %3997 = zext i1 %3996 to i8
  %3998 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3997, i8* %3998, align 1
  store %struct.Memory* %loadMem_400e00, %struct.Memory** %MEMORY
  %loadMem_400e04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4000 = getelementptr inbounds %struct.GPR, %struct.GPR* %3999, i32 0, i32 33
  %4001 = getelementptr inbounds %struct.Reg, %struct.Reg* %4000, i32 0, i32 0
  %PC.i46 = bitcast %union.anon* %4001 to i64*
  %4002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4003 = getelementptr inbounds %struct.GPR, %struct.GPR* %4002, i32 0, i32 9
  %4004 = getelementptr inbounds %struct.Reg, %struct.Reg* %4003, i32 0, i32 0
  %RSI.i47 = bitcast %union.anon* %4004 to i64*
  %4005 = load i64, i64* %RSI.i47
  %4006 = load i64, i64* %PC.i46
  %4007 = add i64 %4006, 4
  store i64 %4007, i64* %PC.i46
  %4008 = shl i64 %4005, 5
  %4009 = icmp slt i64 %4008, 0
  %4010 = shl i64 %4008, 1
  store i64 %4010, i64* %RSI.i47, align 8
  %4011 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %4012 = zext i1 %4009 to i8
  store i8 %4012, i8* %4011, align 1
  %4013 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %4014 = trunc i64 %4010 to i32
  %4015 = and i32 %4014, 254
  %4016 = call i32 @llvm.ctpop.i32(i32 %4015)
  %4017 = trunc i32 %4016 to i8
  %4018 = and i8 %4017, 1
  %4019 = xor i8 %4018, 1
  store i8 %4019, i8* %4013, align 1
  %4020 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4020, align 1
  %4021 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4022 = icmp eq i64 %4010, 0
  %4023 = zext i1 %4022 to i8
  store i8 %4023, i8* %4021, align 1
  %4024 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4025 = lshr i64 %4010, 63
  %4026 = trunc i64 %4025 to i8
  store i8 %4026, i8* %4024, align 1
  %4027 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4027, align 1
  store %struct.Memory* %loadMem_400e04, %struct.Memory** %MEMORY
  %loadMem_400e08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4028 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4029 = getelementptr inbounds %struct.GPR, %struct.GPR* %4028, i32 0, i32 33
  %4030 = getelementptr inbounds %struct.Reg, %struct.Reg* %4029, i32 0, i32 0
  %PC.i43 = bitcast %union.anon* %4030 to i64*
  %4031 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4032 = getelementptr inbounds %struct.GPR, %struct.GPR* %4031, i32 0, i32 5
  %4033 = getelementptr inbounds %struct.Reg, %struct.Reg* %4032, i32 0, i32 0
  %RCX.i44 = bitcast %union.anon* %4033 to i64*
  %4034 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4035 = getelementptr inbounds %struct.GPR, %struct.GPR* %4034, i32 0, i32 9
  %4036 = getelementptr inbounds %struct.Reg, %struct.Reg* %4035, i32 0, i32 0
  %RSI.i45 = bitcast %union.anon* %4036 to i64*
  %4037 = load i64, i64* %RCX.i44
  %4038 = load i64, i64* %RSI.i45
  %4039 = load i64, i64* %PC.i43
  %4040 = add i64 %4039, 3
  store i64 %4040, i64* %PC.i43
  %4041 = add i64 %4038, %4037
  store i64 %4041, i64* %RCX.i44, align 8
  %4042 = icmp ult i64 %4041, %4037
  %4043 = icmp ult i64 %4041, %4038
  %4044 = or i1 %4042, %4043
  %4045 = zext i1 %4044 to i8
  %4046 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4045, i8* %4046, align 1
  %4047 = trunc i64 %4041 to i32
  %4048 = and i32 %4047, 255
  %4049 = call i32 @llvm.ctpop.i32(i32 %4048)
  %4050 = trunc i32 %4049 to i8
  %4051 = and i8 %4050, 1
  %4052 = xor i8 %4051, 1
  %4053 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4052, i8* %4053, align 1
  %4054 = xor i64 %4038, %4037
  %4055 = xor i64 %4054, %4041
  %4056 = lshr i64 %4055, 4
  %4057 = trunc i64 %4056 to i8
  %4058 = and i8 %4057, 1
  %4059 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4058, i8* %4059, align 1
  %4060 = icmp eq i64 %4041, 0
  %4061 = zext i1 %4060 to i8
  %4062 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4061, i8* %4062, align 1
  %4063 = lshr i64 %4041, 63
  %4064 = trunc i64 %4063 to i8
  %4065 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4064, i8* %4065, align 1
  %4066 = lshr i64 %4037, 63
  %4067 = lshr i64 %4038, 63
  %4068 = xor i64 %4063, %4066
  %4069 = xor i64 %4063, %4067
  %4070 = add i64 %4068, %4069
  %4071 = icmp eq i64 %4070, 2
  %4072 = zext i1 %4071 to i8
  %4073 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4072, i8* %4073, align 1
  store %struct.Memory* %loadMem_400e08, %struct.Memory** %MEMORY
  %loadMem_400e0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4074 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4075 = getelementptr inbounds %struct.GPR, %struct.GPR* %4074, i32 0, i32 33
  %4076 = getelementptr inbounds %struct.Reg, %struct.Reg* %4075, i32 0, i32 0
  %PC.i40 = bitcast %union.anon* %4076 to i64*
  %4077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4078 = getelementptr inbounds %struct.GPR, %struct.GPR* %4077, i32 0, i32 1
  %4079 = getelementptr inbounds %struct.Reg, %struct.Reg* %4078, i32 0, i32 0
  %RAX.i41 = bitcast %union.anon* %4079 to i64*
  %4080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4081 = getelementptr inbounds %struct.GPR, %struct.GPR* %4080, i32 0, i32 5
  %4082 = getelementptr inbounds %struct.Reg, %struct.Reg* %4081, i32 0, i32 0
  %RCX.i42 = bitcast %union.anon* %4082 to i64*
  %4083 = load i64, i64* %RCX.i42
  %4084 = load i64, i64* %RAX.i41
  %4085 = load i64, i64* %PC.i40
  %4086 = add i64 %4085, 3
  store i64 %4086, i64* %PC.i40
  %4087 = inttoptr i64 %4083 to i64*
  store i64 %4084, i64* %4087
  store %struct.Memory* %loadMem_400e0b, %struct.Memory** %MEMORY
  %loadMem_400e0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4088 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4089 = getelementptr inbounds %struct.GPR, %struct.GPR* %4088, i32 0, i32 33
  %4090 = getelementptr inbounds %struct.Reg, %struct.Reg* %4089, i32 0, i32 0
  %PC.i37 = bitcast %union.anon* %4090 to i64*
  %4091 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4092 = getelementptr inbounds %struct.GPR, %struct.GPR* %4091, i32 0, i32 1
  %4093 = getelementptr inbounds %struct.Reg, %struct.Reg* %4092, i32 0, i32 0
  %RAX.i38 = bitcast %union.anon* %4093 to i64*
  %4094 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4095 = getelementptr inbounds %struct.GPR, %struct.GPR* %4094, i32 0, i32 15
  %4096 = getelementptr inbounds %struct.Reg, %struct.Reg* %4095, i32 0, i32 0
  %RBP.i39 = bitcast %union.anon* %4096 to i64*
  %4097 = load i64, i64* %RBP.i39
  %4098 = sub i64 %4097, 40
  %4099 = load i64, i64* %PC.i37
  %4100 = add i64 %4099, 4
  store i64 %4100, i64* %PC.i37
  %4101 = inttoptr i64 %4098 to i64*
  %4102 = load i64, i64* %4101
  store i64 %4102, i64* %RAX.i38, align 8
  store %struct.Memory* %loadMem_400e0e, %struct.Memory** %MEMORY
  %loadMem_400e12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4104 = getelementptr inbounds %struct.GPR, %struct.GPR* %4103, i32 0, i32 33
  %4105 = getelementptr inbounds %struct.Reg, %struct.Reg* %4104, i32 0, i32 0
  %PC.i34 = bitcast %union.anon* %4105 to i64*
  %4106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4107 = getelementptr inbounds %struct.GPR, %struct.GPR* %4106, i32 0, i32 5
  %4108 = getelementptr inbounds %struct.Reg, %struct.Reg* %4107, i32 0, i32 0
  %RCX.i35 = bitcast %union.anon* %4108 to i64*
  %4109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4110 = getelementptr inbounds %struct.GPR, %struct.GPR* %4109, i32 0, i32 15
  %4111 = getelementptr inbounds %struct.Reg, %struct.Reg* %4110, i32 0, i32 0
  %RBP.i36 = bitcast %union.anon* %4111 to i64*
  %4112 = load i64, i64* %RBP.i36
  %4113 = sub i64 %4112, 8
  %4114 = load i64, i64* %PC.i34
  %4115 = add i64 %4114, 4
  store i64 %4115, i64* %PC.i34
  %4116 = inttoptr i64 %4113 to i64*
  %4117 = load i64, i64* %4116
  store i64 %4117, i64* %RCX.i35, align 8
  store %struct.Memory* %loadMem_400e12, %struct.Memory** %MEMORY
  %loadMem_400e16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4119 = getelementptr inbounds %struct.GPR, %struct.GPR* %4118, i32 0, i32 33
  %4120 = getelementptr inbounds %struct.Reg, %struct.Reg* %4119, i32 0, i32 0
  %PC.i31 = bitcast %union.anon* %4120 to i64*
  %4121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4122 = getelementptr inbounds %struct.GPR, %struct.GPR* %4121, i32 0, i32 9
  %4123 = getelementptr inbounds %struct.Reg, %struct.Reg* %4122, i32 0, i32 0
  %RSI.i32 = bitcast %union.anon* %4123 to i64*
  %4124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4125 = getelementptr inbounds %struct.GPR, %struct.GPR* %4124, i32 0, i32 15
  %4126 = getelementptr inbounds %struct.Reg, %struct.Reg* %4125, i32 0, i32 0
  %RBP.i33 = bitcast %union.anon* %4126 to i64*
  %4127 = load i64, i64* %RBP.i33
  %4128 = sub i64 %4127, 56
  %4129 = load i64, i64* %PC.i31
  %4130 = add i64 %4129, 4
  store i64 %4130, i64* %PC.i31
  %4131 = inttoptr i64 %4128 to i64*
  %4132 = load i64, i64* %4131
  store i64 %4132, i64* %RSI.i32, align 8
  store %struct.Memory* %loadMem_400e16, %struct.Memory** %MEMORY
  %loadMem_400e1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4134 = getelementptr inbounds %struct.GPR, %struct.GPR* %4133, i32 0, i32 33
  %4135 = getelementptr inbounds %struct.Reg, %struct.Reg* %4134, i32 0, i32 0
  %PC.i29 = bitcast %union.anon* %4135 to i64*
  %4136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4137 = getelementptr inbounds %struct.GPR, %struct.GPR* %4136, i32 0, i32 9
  %4138 = getelementptr inbounds %struct.Reg, %struct.Reg* %4137, i32 0, i32 0
  %RSI.i30 = bitcast %union.anon* %4138 to i64*
  %4139 = load i64, i64* %RSI.i30
  %4140 = load i64, i64* %PC.i29
  %4141 = add i64 %4140, 4
  store i64 %4141, i64* %PC.i29
  %4142 = sub i64 %4139, 1
  store i64 %4142, i64* %RSI.i30, align 8
  %4143 = icmp ult i64 %4139, 1
  %4144 = zext i1 %4143 to i8
  %4145 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4144, i8* %4145, align 1
  %4146 = trunc i64 %4142 to i32
  %4147 = and i32 %4146, 255
  %4148 = call i32 @llvm.ctpop.i32(i32 %4147)
  %4149 = trunc i32 %4148 to i8
  %4150 = and i8 %4149, 1
  %4151 = xor i8 %4150, 1
  %4152 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4151, i8* %4152, align 1
  %4153 = xor i64 1, %4139
  %4154 = xor i64 %4153, %4142
  %4155 = lshr i64 %4154, 4
  %4156 = trunc i64 %4155 to i8
  %4157 = and i8 %4156, 1
  %4158 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4157, i8* %4158, align 1
  %4159 = icmp eq i64 %4142, 0
  %4160 = zext i1 %4159 to i8
  %4161 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4160, i8* %4161, align 1
  %4162 = lshr i64 %4142, 63
  %4163 = trunc i64 %4162 to i8
  %4164 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4163, i8* %4164, align 1
  %4165 = lshr i64 %4139, 63
  %4166 = xor i64 %4162, %4165
  %4167 = add i64 %4166, %4165
  %4168 = icmp eq i64 %4167, 2
  %4169 = zext i1 %4168 to i8
  %4170 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4169, i8* %4170, align 1
  store %struct.Memory* %loadMem_400e1a, %struct.Memory** %MEMORY
  %loadMem_400e1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4172 = getelementptr inbounds %struct.GPR, %struct.GPR* %4171, i32 0, i32 33
  %4173 = getelementptr inbounds %struct.Reg, %struct.Reg* %4172, i32 0, i32 0
  %PC.i27 = bitcast %union.anon* %4173 to i64*
  %4174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4175 = getelementptr inbounds %struct.GPR, %struct.GPR* %4174, i32 0, i32 9
  %4176 = getelementptr inbounds %struct.Reg, %struct.Reg* %4175, i32 0, i32 0
  %RSI.i28 = bitcast %union.anon* %4176 to i64*
  %4177 = load i64, i64* %RSI.i28
  %4178 = load i64, i64* %PC.i27
  %4179 = add i64 %4178, 4
  store i64 %4179, i64* %PC.i27
  %4180 = shl i64 %4177, 5
  %4181 = icmp slt i64 %4180, 0
  %4182 = shl i64 %4180, 1
  store i64 %4182, i64* %RSI.i28, align 8
  %4183 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %4184 = zext i1 %4181 to i8
  store i8 %4184, i8* %4183, align 1
  %4185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %4186 = trunc i64 %4182 to i32
  %4187 = and i32 %4186, 254
  %4188 = call i32 @llvm.ctpop.i32(i32 %4187)
  %4189 = trunc i32 %4188 to i8
  %4190 = and i8 %4189, 1
  %4191 = xor i8 %4190, 1
  store i8 %4191, i8* %4185, align 1
  %4192 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4192, align 1
  %4193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4194 = icmp eq i64 %4182, 0
  %4195 = zext i1 %4194 to i8
  store i8 %4195, i8* %4193, align 1
  %4196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4197 = lshr i64 %4182, 63
  %4198 = trunc i64 %4197 to i8
  store i8 %4198, i8* %4196, align 1
  %4199 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4199, align 1
  store %struct.Memory* %loadMem_400e1e, %struct.Memory** %MEMORY
  %loadMem_400e22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4201 = getelementptr inbounds %struct.GPR, %struct.GPR* %4200, i32 0, i32 33
  %4202 = getelementptr inbounds %struct.Reg, %struct.Reg* %4201, i32 0, i32 0
  %PC.i24 = bitcast %union.anon* %4202 to i64*
  %4203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4204 = getelementptr inbounds %struct.GPR, %struct.GPR* %4203, i32 0, i32 5
  %4205 = getelementptr inbounds %struct.Reg, %struct.Reg* %4204, i32 0, i32 0
  %RCX.i25 = bitcast %union.anon* %4205 to i64*
  %4206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4207 = getelementptr inbounds %struct.GPR, %struct.GPR* %4206, i32 0, i32 9
  %4208 = getelementptr inbounds %struct.Reg, %struct.Reg* %4207, i32 0, i32 0
  %RSI.i26 = bitcast %union.anon* %4208 to i64*
  %4209 = load i64, i64* %RCX.i25
  %4210 = load i64, i64* %RSI.i26
  %4211 = load i64, i64* %PC.i24
  %4212 = add i64 %4211, 3
  store i64 %4212, i64* %PC.i24
  %4213 = add i64 %4210, %4209
  store i64 %4213, i64* %RCX.i25, align 8
  %4214 = icmp ult i64 %4213, %4209
  %4215 = icmp ult i64 %4213, %4210
  %4216 = or i1 %4214, %4215
  %4217 = zext i1 %4216 to i8
  %4218 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4217, i8* %4218, align 1
  %4219 = trunc i64 %4213 to i32
  %4220 = and i32 %4219, 255
  %4221 = call i32 @llvm.ctpop.i32(i32 %4220)
  %4222 = trunc i32 %4221 to i8
  %4223 = and i8 %4222, 1
  %4224 = xor i8 %4223, 1
  %4225 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4224, i8* %4225, align 1
  %4226 = xor i64 %4210, %4209
  %4227 = xor i64 %4226, %4213
  %4228 = lshr i64 %4227, 4
  %4229 = trunc i64 %4228 to i8
  %4230 = and i8 %4229, 1
  %4231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4230, i8* %4231, align 1
  %4232 = icmp eq i64 %4213, 0
  %4233 = zext i1 %4232 to i8
  %4234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4233, i8* %4234, align 1
  %4235 = lshr i64 %4213, 63
  %4236 = trunc i64 %4235 to i8
  %4237 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4236, i8* %4237, align 1
  %4238 = lshr i64 %4209, 63
  %4239 = lshr i64 %4210, 63
  %4240 = xor i64 %4235, %4238
  %4241 = xor i64 %4235, %4239
  %4242 = add i64 %4240, %4241
  %4243 = icmp eq i64 %4242, 2
  %4244 = zext i1 %4243 to i8
  %4245 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4244, i8* %4245, align 1
  store %struct.Memory* %loadMem_400e22, %struct.Memory** %MEMORY
  %loadMem_400e25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4247 = getelementptr inbounds %struct.GPR, %struct.GPR* %4246, i32 0, i32 33
  %4248 = getelementptr inbounds %struct.Reg, %struct.Reg* %4247, i32 0, i32 0
  %PC.i21 = bitcast %union.anon* %4248 to i64*
  %4249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4250 = getelementptr inbounds %struct.GPR, %struct.GPR* %4249, i32 0, i32 1
  %4251 = getelementptr inbounds %struct.Reg, %struct.Reg* %4250, i32 0, i32 0
  %RAX.i22 = bitcast %union.anon* %4251 to i64*
  %4252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4253 = getelementptr inbounds %struct.GPR, %struct.GPR* %4252, i32 0, i32 5
  %4254 = getelementptr inbounds %struct.Reg, %struct.Reg* %4253, i32 0, i32 0
  %RCX.i23 = bitcast %union.anon* %4254 to i64*
  %4255 = load i64, i64* %RCX.i23
  %4256 = add i64 %4255, 56
  %4257 = load i64, i64* %RAX.i22
  %4258 = load i64, i64* %PC.i21
  %4259 = add i64 %4258, 4
  store i64 %4259, i64* %PC.i21
  %4260 = inttoptr i64 %4256 to i64*
  store i64 %4257, i64* %4260
  store %struct.Memory* %loadMem_400e25, %struct.Memory** %MEMORY
  %loadMem_400e29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4262 = getelementptr inbounds %struct.GPR, %struct.GPR* %4261, i32 0, i32 33
  %4263 = getelementptr inbounds %struct.Reg, %struct.Reg* %4262, i32 0, i32 0
  %PC.i18 = bitcast %union.anon* %4263 to i64*
  %4264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4265 = getelementptr inbounds %struct.GPR, %struct.GPR* %4264, i32 0, i32 1
  %4266 = getelementptr inbounds %struct.Reg, %struct.Reg* %4265, i32 0, i32 0
  %RAX.i19 = bitcast %union.anon* %4266 to i64*
  %4267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4268 = getelementptr inbounds %struct.GPR, %struct.GPR* %4267, i32 0, i32 15
  %4269 = getelementptr inbounds %struct.Reg, %struct.Reg* %4268, i32 0, i32 0
  %RBP.i20 = bitcast %union.anon* %4269 to i64*
  %4270 = load i64, i64* %RBP.i20
  %4271 = sub i64 %4270, 48
  %4272 = load i64, i64* %PC.i18
  %4273 = add i64 %4272, 4
  store i64 %4273, i64* %PC.i18
  %4274 = inttoptr i64 %4271 to i64*
  %4275 = load i64, i64* %4274
  store i64 %4275, i64* %RAX.i19, align 8
  store %struct.Memory* %loadMem_400e29, %struct.Memory** %MEMORY
  %loadMem_400e2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4277 = getelementptr inbounds %struct.GPR, %struct.GPR* %4276, i32 0, i32 33
  %4278 = getelementptr inbounds %struct.Reg, %struct.Reg* %4277, i32 0, i32 0
  %PC.i15 = bitcast %union.anon* %4278 to i64*
  %4279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4280 = getelementptr inbounds %struct.GPR, %struct.GPR* %4279, i32 0, i32 5
  %4281 = getelementptr inbounds %struct.Reg, %struct.Reg* %4280, i32 0, i32 0
  %RCX.i16 = bitcast %union.anon* %4281 to i64*
  %4282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4283 = getelementptr inbounds %struct.GPR, %struct.GPR* %4282, i32 0, i32 15
  %4284 = getelementptr inbounds %struct.Reg, %struct.Reg* %4283, i32 0, i32 0
  %RBP.i17 = bitcast %union.anon* %4284 to i64*
  %4285 = load i64, i64* %RBP.i17
  %4286 = sub i64 %4285, 8
  %4287 = load i64, i64* %PC.i15
  %4288 = add i64 %4287, 4
  store i64 %4288, i64* %PC.i15
  %4289 = inttoptr i64 %4286 to i64*
  %4290 = load i64, i64* %4289
  store i64 %4290, i64* %RCX.i16, align 8
  store %struct.Memory* %loadMem_400e2d, %struct.Memory** %MEMORY
  %loadMem_400e31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4292 = getelementptr inbounds %struct.GPR, %struct.GPR* %4291, i32 0, i32 33
  %4293 = getelementptr inbounds %struct.Reg, %struct.Reg* %4292, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %4293 to i64*
  %4294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4295 = getelementptr inbounds %struct.GPR, %struct.GPR* %4294, i32 0, i32 9
  %4296 = getelementptr inbounds %struct.Reg, %struct.Reg* %4295, i32 0, i32 0
  %RSI.i13 = bitcast %union.anon* %4296 to i64*
  %4297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4298 = getelementptr inbounds %struct.GPR, %struct.GPR* %4297, i32 0, i32 15
  %4299 = getelementptr inbounds %struct.Reg, %struct.Reg* %4298, i32 0, i32 0
  %RBP.i14 = bitcast %union.anon* %4299 to i64*
  %4300 = load i64, i64* %RBP.i14
  %4301 = sub i64 %4300, 56
  %4302 = load i64, i64* %PC.i12
  %4303 = add i64 %4302, 4
  store i64 %4303, i64* %PC.i12
  %4304 = inttoptr i64 %4301 to i64*
  %4305 = load i64, i64* %4304
  store i64 %4305, i64* %RSI.i13, align 8
  store %struct.Memory* %loadMem_400e31, %struct.Memory** %MEMORY
  %loadMem_400e35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4307 = getelementptr inbounds %struct.GPR, %struct.GPR* %4306, i32 0, i32 33
  %4308 = getelementptr inbounds %struct.Reg, %struct.Reg* %4307, i32 0, i32 0
  %PC.i10 = bitcast %union.anon* %4308 to i64*
  %4309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4310 = getelementptr inbounds %struct.GPR, %struct.GPR* %4309, i32 0, i32 9
  %4311 = getelementptr inbounds %struct.Reg, %struct.Reg* %4310, i32 0, i32 0
  %RSI.i11 = bitcast %union.anon* %4311 to i64*
  %4312 = load i64, i64* %RSI.i11
  %4313 = load i64, i64* %PC.i10
  %4314 = add i64 %4313, 4
  store i64 %4314, i64* %PC.i10
  %4315 = sub i64 %4312, 1
  store i64 %4315, i64* %RSI.i11, align 8
  %4316 = icmp ult i64 %4312, 1
  %4317 = zext i1 %4316 to i8
  %4318 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4317, i8* %4318, align 1
  %4319 = trunc i64 %4315 to i32
  %4320 = and i32 %4319, 255
  %4321 = call i32 @llvm.ctpop.i32(i32 %4320)
  %4322 = trunc i32 %4321 to i8
  %4323 = and i8 %4322, 1
  %4324 = xor i8 %4323, 1
  %4325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4324, i8* %4325, align 1
  %4326 = xor i64 1, %4312
  %4327 = xor i64 %4326, %4315
  %4328 = lshr i64 %4327, 4
  %4329 = trunc i64 %4328 to i8
  %4330 = and i8 %4329, 1
  %4331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4330, i8* %4331, align 1
  %4332 = icmp eq i64 %4315, 0
  %4333 = zext i1 %4332 to i8
  %4334 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4333, i8* %4334, align 1
  %4335 = lshr i64 %4315, 63
  %4336 = trunc i64 %4335 to i8
  %4337 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4336, i8* %4337, align 1
  %4338 = lshr i64 %4312, 63
  %4339 = xor i64 %4335, %4338
  %4340 = add i64 %4339, %4338
  %4341 = icmp eq i64 %4340, 2
  %4342 = zext i1 %4341 to i8
  %4343 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4342, i8* %4343, align 1
  store %struct.Memory* %loadMem_400e35, %struct.Memory** %MEMORY
  %loadMem_400e39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4345 = getelementptr inbounds %struct.GPR, %struct.GPR* %4344, i32 0, i32 33
  %4346 = getelementptr inbounds %struct.Reg, %struct.Reg* %4345, i32 0, i32 0
  %PC.i8 = bitcast %union.anon* %4346 to i64*
  %4347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4348 = getelementptr inbounds %struct.GPR, %struct.GPR* %4347, i32 0, i32 9
  %4349 = getelementptr inbounds %struct.Reg, %struct.Reg* %4348, i32 0, i32 0
  %RSI.i9 = bitcast %union.anon* %4349 to i64*
  %4350 = load i64, i64* %RSI.i9
  %4351 = load i64, i64* %PC.i8
  %4352 = add i64 %4351, 4
  store i64 %4352, i64* %PC.i8
  %4353 = shl i64 %4350, 5
  %4354 = icmp slt i64 %4353, 0
  %4355 = shl i64 %4353, 1
  store i64 %4355, i64* %RSI.i9, align 8
  %4356 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %4357 = zext i1 %4354 to i8
  store i8 %4357, i8* %4356, align 1
  %4358 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %4359 = trunc i64 %4355 to i32
  %4360 = and i32 %4359, 254
  %4361 = call i32 @llvm.ctpop.i32(i32 %4360)
  %4362 = trunc i32 %4361 to i8
  %4363 = and i8 %4362, 1
  %4364 = xor i8 %4363, 1
  store i8 %4364, i8* %4358, align 1
  %4365 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4365, align 1
  %4366 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4367 = icmp eq i64 %4355, 0
  %4368 = zext i1 %4367 to i8
  store i8 %4368, i8* %4366, align 1
  %4369 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4370 = lshr i64 %4355, 63
  %4371 = trunc i64 %4370 to i8
  store i8 %4371, i8* %4369, align 1
  %4372 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4372, align 1
  store %struct.Memory* %loadMem_400e39, %struct.Memory** %MEMORY
  %loadMem_400e3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4374 = getelementptr inbounds %struct.GPR, %struct.GPR* %4373, i32 0, i32 33
  %4375 = getelementptr inbounds %struct.Reg, %struct.Reg* %4374, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %4375 to i64*
  %4376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4377 = getelementptr inbounds %struct.GPR, %struct.GPR* %4376, i32 0, i32 5
  %4378 = getelementptr inbounds %struct.Reg, %struct.Reg* %4377, i32 0, i32 0
  %RCX.i7 = bitcast %union.anon* %4378 to i64*
  %4379 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4380 = getelementptr inbounds %struct.GPR, %struct.GPR* %4379, i32 0, i32 9
  %4381 = getelementptr inbounds %struct.Reg, %struct.Reg* %4380, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %4381 to i64*
  %4382 = load i64, i64* %RCX.i7
  %4383 = load i64, i64* %RSI.i
  %4384 = load i64, i64* %PC.i6
  %4385 = add i64 %4384, 3
  store i64 %4385, i64* %PC.i6
  %4386 = add i64 %4383, %4382
  store i64 %4386, i64* %RCX.i7, align 8
  %4387 = icmp ult i64 %4386, %4382
  %4388 = icmp ult i64 %4386, %4383
  %4389 = or i1 %4387, %4388
  %4390 = zext i1 %4389 to i8
  %4391 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4390, i8* %4391, align 1
  %4392 = trunc i64 %4386 to i32
  %4393 = and i32 %4392, 255
  %4394 = call i32 @llvm.ctpop.i32(i32 %4393)
  %4395 = trunc i32 %4394 to i8
  %4396 = and i8 %4395, 1
  %4397 = xor i8 %4396, 1
  %4398 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4397, i8* %4398, align 1
  %4399 = xor i64 %4383, %4382
  %4400 = xor i64 %4399, %4386
  %4401 = lshr i64 %4400, 4
  %4402 = trunc i64 %4401 to i8
  %4403 = and i8 %4402, 1
  %4404 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4403, i8* %4404, align 1
  %4405 = icmp eq i64 %4386, 0
  %4406 = zext i1 %4405 to i8
  %4407 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4406, i8* %4407, align 1
  %4408 = lshr i64 %4386, 63
  %4409 = trunc i64 %4408 to i8
  %4410 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4409, i8* %4410, align 1
  %4411 = lshr i64 %4382, 63
  %4412 = lshr i64 %4383, 63
  %4413 = xor i64 %4408, %4411
  %4414 = xor i64 %4408, %4412
  %4415 = add i64 %4413, %4414
  %4416 = icmp eq i64 %4415, 2
  %4417 = zext i1 %4416 to i8
  %4418 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4417, i8* %4418, align 1
  store %struct.Memory* %loadMem_400e3d, %struct.Memory** %MEMORY
  %loadMem_400e40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4420 = getelementptr inbounds %struct.GPR, %struct.GPR* %4419, i32 0, i32 33
  %4421 = getelementptr inbounds %struct.Reg, %struct.Reg* %4420, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %4421 to i64*
  %4422 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4423 = getelementptr inbounds %struct.GPR, %struct.GPR* %4422, i32 0, i32 1
  %4424 = getelementptr inbounds %struct.Reg, %struct.Reg* %4423, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %4424 to i64*
  %4425 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4426 = getelementptr inbounds %struct.GPR, %struct.GPR* %4425, i32 0, i32 5
  %4427 = getelementptr inbounds %struct.Reg, %struct.Reg* %4426, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %4427 to i64*
  %4428 = load i64, i64* %RCX.i
  %4429 = add i64 %4428, 48
  %4430 = load i64, i64* %RAX.i
  %4431 = load i64, i64* %PC.i5
  %4432 = add i64 %4431, 4
  store i64 %4432, i64* %PC.i5
  %4433 = inttoptr i64 %4429 to i64*
  store i64 %4430, i64* %4433
  store %struct.Memory* %loadMem_400e40, %struct.Memory** %MEMORY
  %loadMem_400e44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4435 = getelementptr inbounds %struct.GPR, %struct.GPR* %4434, i32 0, i32 33
  %4436 = getelementptr inbounds %struct.Reg, %struct.Reg* %4435, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %4436 to i64*
  %4437 = load i64, i64* %PC.i4
  %4438 = add i64 %4437, -554
  %4439 = load i64, i64* %PC.i4
  %4440 = add i64 %4439, 5
  store i64 %4440, i64* %PC.i4
  %4441 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4438, i64* %4441, align 8
  store %struct.Memory* %loadMem_400e44, %struct.Memory** %MEMORY
  br label %block_.L_400c1a

block_.L_400e49:                                  ; preds = %block_400c75
  %loadMem_400e49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4443 = getelementptr inbounds %struct.GPR, %struct.GPR* %4442, i32 0, i32 33
  %4444 = getelementptr inbounds %struct.Reg, %struct.Reg* %4443, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %4444 to i64*
  %4445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4446 = getelementptr inbounds %struct.GPR, %struct.GPR* %4445, i32 0, i32 15
  %4447 = getelementptr inbounds %struct.Reg, %struct.Reg* %4446, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %4447 to i64*
  %4448 = load i64, i64* %PC.i2
  %4449 = add i64 %4448, 1
  store i64 %4449, i64* %PC.i2
  %4450 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4451 = load i64, i64* %4450, align 8
  %4452 = add i64 %4451, 8
  %4453 = inttoptr i64 %4451 to i64*
  %4454 = load i64, i64* %4453
  store i64 %4454, i64* %RBP.i3, align 8
  store i64 %4452, i64* %4450, align 8
  store %struct.Memory* %loadMem_400e49, %struct.Memory** %MEMORY
  %loadMem_400e4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4455 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4456 = getelementptr inbounds %struct.GPR, %struct.GPR* %4455, i32 0, i32 33
  %4457 = getelementptr inbounds %struct.Reg, %struct.Reg* %4456, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %4457 to i64*
  %4458 = load i64, i64* %PC.i1
  %4459 = add i64 %4458, 1
  store i64 %4459, i64* %PC.i1
  %4460 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4461 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4462 = load i64, i64* %4461, align 8
  %4463 = inttoptr i64 %4462 to i64*
  %4464 = load i64, i64* %4463
  store i64 %4464, i64* %4460, align 8
  %4465 = add i64 %4462, 8
  store i64 %4465, i64* %4461, align 8
  store %struct.Memory* %loadMem_400e4a, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_400e4a
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

define %struct.Memory* @routine_movq__r8__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 40
  %14 = load i64, i64* %R8
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r9__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 48
  %14 = load i64, i64* %R9
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
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

define %struct.Memory* @routine_movq_MINUS0x8__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x10__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_shlq__0x6___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = shl i64 %9, 5
  %13 = icmp slt i64 %12, 0
  %14 = shl i64 %12, 1
  store i64 %14, i64* %RSI, align 8
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

define %struct.Memory* @routine_addq__rsi___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %RSI
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = add i64 %13, %12
  store i64 %16, i64* %RDX, align 8
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

define %struct.Memory* @routine_movq__rcx__0x8__rdx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 8
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
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

define %struct.Memory* @routine_movq__rcx__0x10__rdx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 16
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rcx__0x38__rdx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 56
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rcx____rdx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %RCX
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %12 to i64*
  store i64 %13, i64* %16
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

define %struct.Memory* @routine_movq__rcx__0x30__rdx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 48
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
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

define %struct.Memory* @routine_addq__0x1___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 1, %9
  store i64 %12, i64* %RCX, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 1
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
  %25 = xor i64 1, %9
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

define %struct.Memory* @routine_movq__rcx__MINUS0x38__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_xorl__eax___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RAX = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RAX
  %13 = load i32, i32* %EAX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = xor i64 %14, %12
  %18 = trunc i64 %17 to i32
  %19 = and i64 %17, 4294967295
  store i64 %19, i64* %RAX, align 8
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

define %struct.Memory* @routine_movb__al___cl(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = bitcast %union.anon* %12 to %struct.anon.2*
  %CL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %13, i32 0, i32 0
  %14 = load i8, i8* %AL
  %15 = zext i8 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 2
  store i64 %17, i64* %PC
  store i8 %14, i8* %CL, align 1
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

define %struct.Memory* @routine_subq__0x1___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = sub i64 %9, 1
  store i64 %12, i64* %RDX, align 8
  %13 = icmp ult i64 %9, 1
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
  %23 = xor i64 1, %9
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

define %struct.Memory* @routine_cmpq__0x0___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %12, align 1
  %13 = trunc i64 %9 to i32
  %14 = and i32 %13, 255
  %15 = call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %18, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %20, align 1
  %21 = icmp eq i64 %9, 0
  %22 = zext i1 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %22, i8* %23, align 1
  %24 = lshr i64 %9, 63
  %25 = trunc i64 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %25, i8* %26, align 1
  %27 = lshr i64 %9, 63
  %28 = xor i64 %24, %27
  %29 = add i64 %28, %27
  %30 = icmp eq i64 %29, 2
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

define %struct.Memory* @routine_je_.L_400c6a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x2___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 2, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RCX, align 8
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

define %struct.Memory* @routine_movq__rdx__MINUS0x48__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cqto(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = ashr i64 %10, 63
  store i64 %11, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_idivq__rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = sext i64 %9 to i128
  %17 = and i128 %16, -18446744073709551616
  %18 = zext i64 %15 to i128
  %19 = shl i128 %18, 64
  %20 = zext i64 %13 to i128
  %21 = or i128 %19, %20
  %22 = zext i64 %9 to i128
  %23 = or i128 %17, %22
  %24 = sdiv i128 %21, %23
  %25 = trunc i128 %24 to i64
  %26 = and i128 %24, 18446744073709551615
  %27 = sext i64 %25 to i128
  %28 = and i128 %27, -18446744073709551616
  %29 = or i128 %28, %26
  %30 = icmp eq i128 %24, %29
  br i1 %30, label %35, label %31

; <label>:31:                                     ; preds = %block_400488
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %33, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit

; <label>:35:                                     ; preds = %block_400488
  %36 = srem i128 %21, %23
  %37 = trunc i128 %36 to i64
  store i64 %25, i64* %12, align 8
  store i64 %37, i64* %14, align 8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %38, align 1
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %39, align 1
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %40, align 1
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %41, align 1
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %42, align 1
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %43, align 1
  br label %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit: ; preds = %31, %35
  %44 = phi %struct.Memory* [ %34, %31 ], [ %2, %35 ]
  ret %struct.Memory* %44
}

define %struct.Memory* @routine_subq__0x1___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = sub i64 %9, 1
  store i64 %12, i64* %RAX, align 8
  %13 = icmp ult i64 %9, 1
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
  %23 = xor i64 1, %9
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

define %struct.Memory* @routine_shlq__0x6___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = shl i64 %9, 5
  %13 = icmp slt i64 %12, 0
  %14 = shl i64 %12, 1
  store i64 %14, i64* %RAX, align 8
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

define %struct.Memory* @routine_addq__rax___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = add i64 %13, %12
  store i64 %16, i64* %RSI, align 8
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

define %struct.Memory* @routine_cmpq_0x30__rsi____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %RSI
  %14 = add i64 %13, 48
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i64*
  %18 = load i64, i64* %17
  %19 = sub i64 %12, %18
  %20 = icmp ugt i64 %18, %12
  %21 = zext i1 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %21, i8* %22, align 1
  %23 = trunc i64 %19 to i32
  %24 = and i32 %23, 255
  %25 = call i32 @llvm.ctpop.i32(i32 %24)
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  %28 = xor i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %28, i8* %29, align 1
  %30 = xor i64 %18, %12
  %31 = xor i64 %30, %19
  %32 = lshr i64 %31, 4
  %33 = trunc i64 %32 to i8
  %34 = and i8 %33, 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %34, i8* %35, align 1
  %36 = icmp eq i64 %19, 0
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %37, i8* %38, align 1
  %39 = lshr i64 %19, 63
  %40 = trunc i64 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %40, i8* %41, align 1
  %42 = lshr i64 %12, 63
  %43 = lshr i64 %18, 63
  %44 = xor i64 %43, %42
  %45 = xor i64 %39, %42
  %46 = add i64 %45, %44
  %47 = icmp eq i64 %46, 2
  %48 = zext i1 %47 to i8
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %48, i8* %49, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_setg__dil(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %DIL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 4
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
  store i8 %24, i8* %DIL, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__dil__MINUS0x39__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %DIL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 15
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RBP = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 57
  %15 = load i8, i8* %DIL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 4
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

define %struct.Memory* @routine_testb__0x1___al(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jne_.L_400c7a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_400e49(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__rdx__MINUS0x50__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 80
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x50__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x8__rsi____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x38__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subq__0x1___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = sub i64 %9, 1
  store i64 %12, i64* %RDI, align 8
  %13 = icmp ult i64 %9, 1
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
  %23 = xor i64 1, %9
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

define %struct.Memory* @routine_shlq__0x6___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = shl i64 %9, 5
  %13 = icmp slt i64 %12, 0
  %14 = shl i64 %12, 1
  store i64 %14, i64* %RDI, align 8
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

define %struct.Memory* @routine_addq__rdi___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RSI
  %13 = load i64, i64* %RDI
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = add i64 %13, %12
  store i64 %16, i64* %RSI, align 8
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

define %struct.Memory* @routine_movq__rax__0x8__rsi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 8
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
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

define %struct.Memory* @routine_movq_MINUS0x38__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 56
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0x58__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 88
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rsi___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  store i64 %12, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x58__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 88
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x10__rsi____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__0x10__rsi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 16
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0x60__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 96
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x60__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 96
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq___rsi____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = inttoptr i64 %12 to i64*
  %16 = load i64, i64* %15
  store i64 %16, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax____rsi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %12 to i64*
  store i64 %13, i64* %16
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0x68__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 104
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x68__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 104
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__0x38__rsi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 56
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0x70__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 112
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x70__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 112
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x30__rsi____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 48
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__0x30__rsi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 48
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0x38__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
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

define %struct.Memory* @routine_subq__0x1___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = sub i64 %9, 1
  store i64 %12, i64* %RSI, align 8
  %13 = icmp ult i64 %9, 1
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
  %23 = xor i64 1, %9
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

define %struct.Memory* @routine_addq__rsi___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RCX
  %13 = load i64, i64* %RSI
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = add i64 %13, %12
  store i64 %16, i64* %RCX, align 8
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

define %struct.Memory* @routine_movq__rax__0x8__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 8
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
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

define %struct.Memory* @routine_movq__rax__0x10__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 16
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
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

define %struct.Memory* @routine_movq__rax__0x38__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 56
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

define %struct.Memory* @routine_movq__rax__0x30__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 48
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400c1a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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
