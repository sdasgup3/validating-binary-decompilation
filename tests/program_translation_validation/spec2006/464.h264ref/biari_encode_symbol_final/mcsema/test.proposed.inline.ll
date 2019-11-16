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
define %struct.Memory* @biari_encode_symbol_final(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_402120 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_402120, %struct.Memory** %MEMORY
  %loadMem_402121 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i587 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i588 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i
  %27 = load i64, i64* %PC.i587
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i587
  store i64 %26, i64* %RBP.i588, align 8
  store %struct.Memory* %loadMem_402121, %struct.Memory** %MEMORY
  %loadMem_402124 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i585 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %AX.i586 = bitcast %union.anon* %34 to i16*
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %36 = getelementptr inbounds %struct.GPR, %struct.GPR* %35, i32 0, i32 9
  %37 = getelementptr inbounds %struct.Reg, %struct.Reg* %36, i32 0, i32 0
  %SI.i = bitcast %union.anon* %37 to i16*
  %38 = load i16, i16* %SI.i
  %39 = zext i16 %38 to i64
  %40 = load i64, i64* %PC.i585
  %41 = add i64 %40, 3
  store i64 %41, i64* %PC.i585
  store i16 %38, i16* %AX.i586, align 2
  store %struct.Memory* %loadMem_402124, %struct.Memory** %MEMORY
  %loadMem_402127 = load %struct.Memory*, %struct.Memory** %MEMORY
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %43 = getelementptr inbounds %struct.GPR, %struct.GPR* %42, i32 0, i32 33
  %44 = getelementptr inbounds %struct.Reg, %struct.Reg* %43, i32 0, i32 0
  %PC.i582 = bitcast %union.anon* %44 to i64*
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %46 = getelementptr inbounds %struct.GPR, %struct.GPR* %45, i32 0, i32 11
  %47 = getelementptr inbounds %struct.Reg, %struct.Reg* %46, i32 0, i32 0
  %RDI.i583 = bitcast %union.anon* %47 to i64*
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %49 = getelementptr inbounds %struct.GPR, %struct.GPR* %48, i32 0, i32 15
  %50 = getelementptr inbounds %struct.Reg, %struct.Reg* %49, i32 0, i32 0
  %RBP.i584 = bitcast %union.anon* %50 to i64*
  %51 = load i64, i64* %RBP.i584
  %52 = sub i64 %51, 8
  %53 = load i64, i64* %RDI.i583
  %54 = load i64, i64* %PC.i582
  %55 = add i64 %54, 4
  store i64 %55, i64* %PC.i582
  %56 = inttoptr i64 %52 to i64*
  store i64 %53, i64* %56
  store %struct.Memory* %loadMem_402127, %struct.Memory** %MEMORY
  %loadMem_40212b = load %struct.Memory*, %struct.Memory** %MEMORY
  %57 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %58 = getelementptr inbounds %struct.GPR, %struct.GPR* %57, i32 0, i32 33
  %59 = getelementptr inbounds %struct.Reg, %struct.Reg* %58, i32 0, i32 0
  %PC.i580 = bitcast %union.anon* %59 to i64*
  %60 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %61 = getelementptr inbounds %struct.GPR, %struct.GPR* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.Reg, %struct.Reg* %61, i32 0, i32 0
  %AX.i = bitcast %union.anon* %62 to i16*
  %63 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %64 = getelementptr inbounds %struct.GPR, %struct.GPR* %63, i32 0, i32 15
  %65 = getelementptr inbounds %struct.Reg, %struct.Reg* %64, i32 0, i32 0
  %RBP.i581 = bitcast %union.anon* %65 to i64*
  %66 = load i64, i64* %RBP.i581
  %67 = sub i64 %66, 10
  %68 = load i16, i16* %AX.i
  %69 = zext i16 %68 to i64
  %70 = load i64, i64* %PC.i580
  %71 = add i64 %70, 4
  store i64 %71, i64* %PC.i580
  %72 = inttoptr i64 %67 to i16*
  store i16 %68, i16* %72
  store %struct.Memory* %loadMem_40212b, %struct.Memory** %MEMORY
  %loadMem_40212f = load %struct.Memory*, %struct.Memory** %MEMORY
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %74 = getelementptr inbounds %struct.GPR, %struct.GPR* %73, i32 0, i32 33
  %75 = getelementptr inbounds %struct.Reg, %struct.Reg* %74, i32 0, i32 0
  %PC.i577 = bitcast %union.anon* %75 to i64*
  %76 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %77 = getelementptr inbounds %struct.GPR, %struct.GPR* %76, i32 0, i32 11
  %78 = getelementptr inbounds %struct.Reg, %struct.Reg* %77, i32 0, i32 0
  %RDI.i578 = bitcast %union.anon* %78 to i64*
  %79 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %80 = getelementptr inbounds %struct.GPR, %struct.GPR* %79, i32 0, i32 15
  %81 = getelementptr inbounds %struct.Reg, %struct.Reg* %80, i32 0, i32 0
  %RBP.i579 = bitcast %union.anon* %81 to i64*
  %82 = load i64, i64* %RBP.i579
  %83 = sub i64 %82, 8
  %84 = load i64, i64* %PC.i577
  %85 = add i64 %84, 4
  store i64 %85, i64* %PC.i577
  %86 = inttoptr i64 %83 to i64*
  %87 = load i64, i64* %86
  store i64 %87, i64* %RDI.i578, align 8
  store %struct.Memory* %loadMem_40212f, %struct.Memory** %MEMORY
  %loadMem_402133 = load %struct.Memory*, %struct.Memory** %MEMORY
  %88 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %89 = getelementptr inbounds %struct.GPR, %struct.GPR* %88, i32 0, i32 33
  %90 = getelementptr inbounds %struct.Reg, %struct.Reg* %89, i32 0, i32 0
  %PC.i574 = bitcast %union.anon* %90 to i64*
  %91 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %92 = getelementptr inbounds %struct.GPR, %struct.GPR* %91, i32 0, i32 9
  %93 = getelementptr inbounds %struct.Reg, %struct.Reg* %92, i32 0, i32 0
  %RSI.i575 = bitcast %union.anon* %93 to i64*
  %94 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %95 = getelementptr inbounds %struct.GPR, %struct.GPR* %94, i32 0, i32 11
  %96 = getelementptr inbounds %struct.Reg, %struct.Reg* %95, i32 0, i32 0
  %RDI.i576 = bitcast %union.anon* %96 to i64*
  %97 = load i64, i64* %RDI.i576
  %98 = add i64 %97, 4
  %99 = load i64, i64* %PC.i574
  %100 = add i64 %99, 3
  store i64 %100, i64* %PC.i574
  %101 = inttoptr i64 %98 to i32*
  %102 = load i32, i32* %101
  %103 = zext i32 %102 to i64
  store i64 %103, i64* %RSI.i575, align 8
  store %struct.Memory* %loadMem_402133, %struct.Memory** %MEMORY
  %loadMem_402136 = load %struct.Memory*, %struct.Memory** %MEMORY
  %104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %105 = getelementptr inbounds %struct.GPR, %struct.GPR* %104, i32 0, i32 33
  %106 = getelementptr inbounds %struct.Reg, %struct.Reg* %105, i32 0, i32 0
  %PC.i572 = bitcast %union.anon* %106 to i64*
  %107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %108 = getelementptr inbounds %struct.GPR, %struct.GPR* %107, i32 0, i32 9
  %109 = getelementptr inbounds %struct.Reg, %struct.Reg* %108, i32 0, i32 0
  %RSI.i573 = bitcast %union.anon* %109 to i64*
  %110 = load i64, i64* %RSI.i573
  %111 = load i64, i64* %PC.i572
  %112 = add i64 %111, 3
  store i64 %112, i64* %PC.i572
  %113 = trunc i64 %110 to i32
  %114 = sub i32 %113, 2
  %115 = zext i32 %114 to i64
  store i64 %115, i64* %RSI.i573, align 8
  %116 = icmp ult i32 %113, 2
  %117 = zext i1 %116 to i8
  %118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %117, i8* %118, align 1
  %119 = and i32 %114, 255
  %120 = call i32 @llvm.ctpop.i32(i32 %119)
  %121 = trunc i32 %120 to i8
  %122 = and i8 %121, 1
  %123 = xor i8 %122, 1
  %124 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %123, i8* %124, align 1
  %125 = xor i64 2, %110
  %126 = trunc i64 %125 to i32
  %127 = xor i32 %126, %114
  %128 = lshr i32 %127, 4
  %129 = trunc i32 %128 to i8
  %130 = and i8 %129, 1
  %131 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %130, i8* %131, align 1
  %132 = icmp eq i32 %114, 0
  %133 = zext i1 %132 to i8
  %134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %133, i8* %134, align 1
  %135 = lshr i32 %114, 31
  %136 = trunc i32 %135 to i8
  %137 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %136, i8* %137, align 1
  %138 = lshr i32 %113, 31
  %139 = xor i32 %135, %138
  %140 = add i32 %139, %138
  %141 = icmp eq i32 %140, 2
  %142 = zext i1 %141 to i8
  %143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %142, i8* %143, align 1
  store %struct.Memory* %loadMem_402136, %struct.Memory** %MEMORY
  %loadMem_402139 = load %struct.Memory*, %struct.Memory** %MEMORY
  %144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %145 = getelementptr inbounds %struct.GPR, %struct.GPR* %144, i32 0, i32 33
  %146 = getelementptr inbounds %struct.Reg, %struct.Reg* %145, i32 0, i32 0
  %PC.i569 = bitcast %union.anon* %146 to i64*
  %147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %148 = getelementptr inbounds %struct.GPR, %struct.GPR* %147, i32 0, i32 9
  %149 = getelementptr inbounds %struct.Reg, %struct.Reg* %148, i32 0, i32 0
  %ESI.i570 = bitcast %union.anon* %149 to i32*
  %150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %151 = getelementptr inbounds %struct.GPR, %struct.GPR* %150, i32 0, i32 15
  %152 = getelementptr inbounds %struct.Reg, %struct.Reg* %151, i32 0, i32 0
  %RBP.i571 = bitcast %union.anon* %152 to i64*
  %153 = load i64, i64* %RBP.i571
  %154 = sub i64 %153, 16
  %155 = load i32, i32* %ESI.i570
  %156 = zext i32 %155 to i64
  %157 = load i64, i64* %PC.i569
  %158 = add i64 %157, 3
  store i64 %158, i64* %PC.i569
  %159 = inttoptr i64 %154 to i32*
  store i32 %155, i32* %159
  store %struct.Memory* %loadMem_402139, %struct.Memory** %MEMORY
  %loadMem_40213c = load %struct.Memory*, %struct.Memory** %MEMORY
  %160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %161 = getelementptr inbounds %struct.GPR, %struct.GPR* %160, i32 0, i32 33
  %162 = getelementptr inbounds %struct.Reg, %struct.Reg* %161, i32 0, i32 0
  %PC.i566 = bitcast %union.anon* %162 to i64*
  %163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %164 = getelementptr inbounds %struct.GPR, %struct.GPR* %163, i32 0, i32 11
  %165 = getelementptr inbounds %struct.Reg, %struct.Reg* %164, i32 0, i32 0
  %RDI.i567 = bitcast %union.anon* %165 to i64*
  %166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %167 = getelementptr inbounds %struct.GPR, %struct.GPR* %166, i32 0, i32 15
  %168 = getelementptr inbounds %struct.Reg, %struct.Reg* %167, i32 0, i32 0
  %RBP.i568 = bitcast %union.anon* %168 to i64*
  %169 = load i64, i64* %RBP.i568
  %170 = sub i64 %169, 8
  %171 = load i64, i64* %PC.i566
  %172 = add i64 %171, 4
  store i64 %172, i64* %PC.i566
  %173 = inttoptr i64 %170 to i64*
  %174 = load i64, i64* %173
  store i64 %174, i64* %RDI.i567, align 8
  store %struct.Memory* %loadMem_40213c, %struct.Memory** %MEMORY
  %loadMem_402140 = load %struct.Memory*, %struct.Memory** %MEMORY
  %175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %176 = getelementptr inbounds %struct.GPR, %struct.GPR* %175, i32 0, i32 33
  %177 = getelementptr inbounds %struct.Reg, %struct.Reg* %176, i32 0, i32 0
  %PC.i563 = bitcast %union.anon* %177 to i64*
  %178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %179 = getelementptr inbounds %struct.GPR, %struct.GPR* %178, i32 0, i32 9
  %180 = getelementptr inbounds %struct.Reg, %struct.Reg* %179, i32 0, i32 0
  %RSI.i564 = bitcast %union.anon* %180 to i64*
  %181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %182 = getelementptr inbounds %struct.GPR, %struct.GPR* %181, i32 0, i32 11
  %183 = getelementptr inbounds %struct.Reg, %struct.Reg* %182, i32 0, i32 0
  %RDI.i565 = bitcast %union.anon* %183 to i64*
  %184 = load i64, i64* %RDI.i565
  %185 = load i64, i64* %PC.i563
  %186 = add i64 %185, 2
  store i64 %186, i64* %PC.i563
  %187 = inttoptr i64 %184 to i32*
  %188 = load i32, i32* %187
  %189 = zext i32 %188 to i64
  store i64 %189, i64* %RSI.i564, align 8
  store %struct.Memory* %loadMem_402140, %struct.Memory** %MEMORY
  %loadMem_402142 = load %struct.Memory*, %struct.Memory** %MEMORY
  %190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %191 = getelementptr inbounds %struct.GPR, %struct.GPR* %190, i32 0, i32 33
  %192 = getelementptr inbounds %struct.Reg, %struct.Reg* %191, i32 0, i32 0
  %PC.i561 = bitcast %union.anon* %192 to i64*
  %193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %194 = getelementptr inbounds %struct.GPR, %struct.GPR* %193, i32 0, i32 9
  %195 = getelementptr inbounds %struct.Reg, %struct.Reg* %194, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %195 to i32*
  %196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %197 = getelementptr inbounds %struct.GPR, %struct.GPR* %196, i32 0, i32 15
  %198 = getelementptr inbounds %struct.Reg, %struct.Reg* %197, i32 0, i32 0
  %RBP.i562 = bitcast %union.anon* %198 to i64*
  %199 = load i64, i64* %RBP.i562
  %200 = sub i64 %199, 20
  %201 = load i32, i32* %ESI.i
  %202 = zext i32 %201 to i64
  %203 = load i64, i64* %PC.i561
  %204 = add i64 %203, 3
  store i64 %204, i64* %PC.i561
  %205 = inttoptr i64 %200 to i32*
  store i32 %201, i32* %205
  store %struct.Memory* %loadMem_402142, %struct.Memory** %MEMORY
  %loadMem_402145 = load %struct.Memory*, %struct.Memory** %MEMORY
  %206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %207 = getelementptr inbounds %struct.GPR, %struct.GPR* %206, i32 0, i32 33
  %208 = getelementptr inbounds %struct.Reg, %struct.Reg* %207, i32 0, i32 0
  %PC.i559 = bitcast %union.anon* %208 to i64*
  %209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %210 = getelementptr inbounds %struct.GPR, %struct.GPR* %209, i32 0, i32 15
  %211 = getelementptr inbounds %struct.Reg, %struct.Reg* %210, i32 0, i32 0
  %RBP.i560 = bitcast %union.anon* %211 to i64*
  %212 = load i64, i64* %RBP.i560
  %213 = sub i64 %212, 10
  %214 = load i64, i64* %PC.i559
  %215 = add i64 %214, 5
  store i64 %215, i64* %PC.i559
  %216 = inttoptr i64 %213 to i16*
  %217 = load i16, i16* %216
  %218 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %218, align 1
  %219 = and i16 %217, 255
  %220 = zext i16 %219 to i32
  %221 = call i32 @llvm.ctpop.i32(i32 %220)
  %222 = trunc i32 %221 to i8
  %223 = and i8 %222, 1
  %224 = xor i8 %223, 1
  %225 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %224, i8* %225, align 1
  %226 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %226, align 1
  %227 = icmp eq i16 %217, 0
  %228 = zext i1 %227 to i8
  %229 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %228, i8* %229, align 1
  %230 = lshr i16 %217, 15
  %231 = trunc i16 %230 to i8
  %232 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %231, i8* %232, align 1
  %233 = lshr i16 %217, 15
  %234 = xor i16 %230, %233
  %235 = add i16 %234, %233
  %236 = icmp eq i16 %235, 2
  %237 = zext i1 %236 to i8
  %238 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %237, i8* %238, align 1
  store %struct.Memory* %loadMem_402145, %struct.Memory** %MEMORY
  %loadMem_40214a = load %struct.Memory*, %struct.Memory** %MEMORY
  %239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %240 = getelementptr inbounds %struct.GPR, %struct.GPR* %239, i32 0, i32 33
  %241 = getelementptr inbounds %struct.Reg, %struct.Reg* %240, i32 0, i32 0
  %PC.i558 = bitcast %union.anon* %241 to i64*
  %242 = load i64, i64* %PC.i558
  %243 = add i64 %242, 22
  %244 = load i64, i64* %PC.i558
  %245 = add i64 %244, 6
  %246 = load i64, i64* %PC.i558
  %247 = add i64 %246, 6
  store i64 %247, i64* %PC.i558
  %248 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %249 = load i8, i8* %248, align 1
  store i8 %249, i8* %BRANCH_TAKEN, align 1
  %250 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %251 = icmp ne i8 %249, 0
  %252 = select i1 %251, i64 %243, i64 %245
  store i64 %252, i64* %250, align 8
  store %struct.Memory* %loadMem_40214a, %struct.Memory** %MEMORY
  %loadBr_40214a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40214a = icmp eq i8 %loadBr_40214a, 1
  br i1 %cmpBr_40214a, label %block_.L_402160, label %block_402150

block_402150:                                     ; preds = %entry
  %loadMem_402150 = load %struct.Memory*, %struct.Memory** %MEMORY
  %253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %254 = getelementptr inbounds %struct.GPR, %struct.GPR* %253, i32 0, i32 33
  %255 = getelementptr inbounds %struct.Reg, %struct.Reg* %254, i32 0, i32 0
  %PC.i555 = bitcast %union.anon* %255 to i64*
  %256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %257 = getelementptr inbounds %struct.GPR, %struct.GPR* %256, i32 0, i32 1
  %258 = getelementptr inbounds %struct.Reg, %struct.Reg* %257, i32 0, i32 0
  %RAX.i556 = bitcast %union.anon* %258 to i64*
  %259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %260 = getelementptr inbounds %struct.GPR, %struct.GPR* %259, i32 0, i32 15
  %261 = getelementptr inbounds %struct.Reg, %struct.Reg* %260, i32 0, i32 0
  %RBP.i557 = bitcast %union.anon* %261 to i64*
  %262 = load i64, i64* %RBP.i557
  %263 = sub i64 %262, 16
  %264 = load i64, i64* %PC.i555
  %265 = add i64 %264, 3
  store i64 %265, i64* %PC.i555
  %266 = inttoptr i64 %263 to i32*
  %267 = load i32, i32* %266
  %268 = zext i32 %267 to i64
  store i64 %268, i64* %RAX.i556, align 8
  store %struct.Memory* %loadMem_402150, %struct.Memory** %MEMORY
  %loadMem_402153 = load %struct.Memory*, %struct.Memory** %MEMORY
  %269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %270 = getelementptr inbounds %struct.GPR, %struct.GPR* %269, i32 0, i32 33
  %271 = getelementptr inbounds %struct.Reg, %struct.Reg* %270, i32 0, i32 0
  %PC.i552 = bitcast %union.anon* %271 to i64*
  %272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %273 = getelementptr inbounds %struct.GPR, %struct.GPR* %272, i32 0, i32 1
  %274 = getelementptr inbounds %struct.Reg, %struct.Reg* %273, i32 0, i32 0
  %RAX.i553 = bitcast %union.anon* %274 to i64*
  %275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %276 = getelementptr inbounds %struct.GPR, %struct.GPR* %275, i32 0, i32 15
  %277 = getelementptr inbounds %struct.Reg, %struct.Reg* %276, i32 0, i32 0
  %RBP.i554 = bitcast %union.anon* %277 to i64*
  %278 = load i64, i64* %RAX.i553
  %279 = load i64, i64* %RBP.i554
  %280 = sub i64 %279, 20
  %281 = load i64, i64* %PC.i552
  %282 = add i64 %281, 3
  store i64 %282, i64* %PC.i552
  %283 = trunc i64 %278 to i32
  %284 = inttoptr i64 %280 to i32*
  %285 = load i32, i32* %284
  %286 = add i32 %285, %283
  %287 = zext i32 %286 to i64
  store i64 %287, i64* %RAX.i553, align 8
  %288 = icmp ult i32 %286, %283
  %289 = icmp ult i32 %286, %285
  %290 = or i1 %288, %289
  %291 = zext i1 %290 to i8
  %292 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %291, i8* %292, align 1
  %293 = and i32 %286, 255
  %294 = call i32 @llvm.ctpop.i32(i32 %293)
  %295 = trunc i32 %294 to i8
  %296 = and i8 %295, 1
  %297 = xor i8 %296, 1
  %298 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %297, i8* %298, align 1
  %299 = xor i32 %285, %283
  %300 = xor i32 %299, %286
  %301 = lshr i32 %300, 4
  %302 = trunc i32 %301 to i8
  %303 = and i8 %302, 1
  %304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %303, i8* %304, align 1
  %305 = icmp eq i32 %286, 0
  %306 = zext i1 %305 to i8
  %307 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %306, i8* %307, align 1
  %308 = lshr i32 %286, 31
  %309 = trunc i32 %308 to i8
  %310 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %309, i8* %310, align 1
  %311 = lshr i32 %283, 31
  %312 = lshr i32 %285, 31
  %313 = xor i32 %308, %311
  %314 = xor i32 %308, %312
  %315 = add i32 %313, %314
  %316 = icmp eq i32 %315, 2
  %317 = zext i1 %316 to i8
  %318 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %317, i8* %318, align 1
  store %struct.Memory* %loadMem_402153, %struct.Memory** %MEMORY
  %loadMem_402156 = load %struct.Memory*, %struct.Memory** %MEMORY
  %319 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %320 = getelementptr inbounds %struct.GPR, %struct.GPR* %319, i32 0, i32 33
  %321 = getelementptr inbounds %struct.Reg, %struct.Reg* %320, i32 0, i32 0
  %PC.i549 = bitcast %union.anon* %321 to i64*
  %322 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %323 = getelementptr inbounds %struct.GPR, %struct.GPR* %322, i32 0, i32 1
  %324 = getelementptr inbounds %struct.Reg, %struct.Reg* %323, i32 0, i32 0
  %EAX.i550 = bitcast %union.anon* %324 to i32*
  %325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %326 = getelementptr inbounds %struct.GPR, %struct.GPR* %325, i32 0, i32 15
  %327 = getelementptr inbounds %struct.Reg, %struct.Reg* %326, i32 0, i32 0
  %RBP.i551 = bitcast %union.anon* %327 to i64*
  %328 = load i64, i64* %RBP.i551
  %329 = sub i64 %328, 20
  %330 = load i32, i32* %EAX.i550
  %331 = zext i32 %330 to i64
  %332 = load i64, i64* %PC.i549
  %333 = add i64 %332, 3
  store i64 %333, i64* %PC.i549
  %334 = inttoptr i64 %329 to i32*
  store i32 %330, i32* %334
  store %struct.Memory* %loadMem_402156, %struct.Memory** %MEMORY
  %loadMem_402159 = load %struct.Memory*, %struct.Memory** %MEMORY
  %335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %336 = getelementptr inbounds %struct.GPR, %struct.GPR* %335, i32 0, i32 33
  %337 = getelementptr inbounds %struct.Reg, %struct.Reg* %336, i32 0, i32 0
  %PC.i547 = bitcast %union.anon* %337 to i64*
  %338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %339 = getelementptr inbounds %struct.GPR, %struct.GPR* %338, i32 0, i32 15
  %340 = getelementptr inbounds %struct.Reg, %struct.Reg* %339, i32 0, i32 0
  %RBP.i548 = bitcast %union.anon* %340 to i64*
  %341 = load i64, i64* %RBP.i548
  %342 = sub i64 %341, 16
  %343 = load i64, i64* %PC.i547
  %344 = add i64 %343, 7
  store i64 %344, i64* %PC.i547
  %345 = inttoptr i64 %342 to i32*
  store i32 2, i32* %345
  store %struct.Memory* %loadMem_402159, %struct.Memory** %MEMORY
  br label %block_.L_402160

block_.L_402160:                                  ; preds = %block_402150, %entry
  %loadMem_402160 = load %struct.Memory*, %struct.Memory** %MEMORY
  %346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %347 = getelementptr inbounds %struct.GPR, %struct.GPR* %346, i32 0, i32 33
  %348 = getelementptr inbounds %struct.Reg, %struct.Reg* %347, i32 0, i32 0
  %PC.i546 = bitcast %union.anon* %348 to i64*
  %349 = load i64, i64* %PC.i546
  %350 = add i64 %349, 5
  %351 = load i64, i64* %PC.i546
  %352 = add i64 %351, 5
  store i64 %352, i64* %PC.i546
  %353 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %350, i64* %353, align 8
  store %struct.Memory* %loadMem_402160, %struct.Memory** %MEMORY
  br label %block_.L_402165

block_.L_402165:                                  ; preds = %block_.L_402457, %block_.L_402160
  %loadMem_402165 = load %struct.Memory*, %struct.Memory** %MEMORY
  %354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %355 = getelementptr inbounds %struct.GPR, %struct.GPR* %354, i32 0, i32 33
  %356 = getelementptr inbounds %struct.Reg, %struct.Reg* %355, i32 0, i32 0
  %PC.i544 = bitcast %union.anon* %356 to i64*
  %357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %358 = getelementptr inbounds %struct.GPR, %struct.GPR* %357, i32 0, i32 15
  %359 = getelementptr inbounds %struct.Reg, %struct.Reg* %358, i32 0, i32 0
  %RBP.i545 = bitcast %union.anon* %359 to i64*
  %360 = load i64, i64* %RBP.i545
  %361 = sub i64 %360, 16
  %362 = load i64, i64* %PC.i544
  %363 = add i64 %362, 7
  store i64 %363, i64* %PC.i544
  %364 = inttoptr i64 %361 to i32*
  %365 = load i32, i32* %364
  %366 = sub i32 %365, 256
  %367 = icmp ult i32 %365, 256
  %368 = zext i1 %367 to i8
  %369 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %368, i8* %369, align 1
  %370 = and i32 %366, 255
  %371 = call i32 @llvm.ctpop.i32(i32 %370)
  %372 = trunc i32 %371 to i8
  %373 = and i8 %372, 1
  %374 = xor i8 %373, 1
  %375 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %374, i8* %375, align 1
  %376 = xor i32 %365, 256
  %377 = xor i32 %376, %366
  %378 = lshr i32 %377, 4
  %379 = trunc i32 %378 to i8
  %380 = and i8 %379, 1
  %381 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %380, i8* %381, align 1
  %382 = icmp eq i32 %366, 0
  %383 = zext i1 %382 to i8
  %384 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %383, i8* %384, align 1
  %385 = lshr i32 %366, 31
  %386 = trunc i32 %385 to i8
  %387 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %386, i8* %387, align 1
  %388 = lshr i32 %365, 31
  %389 = xor i32 %385, %388
  %390 = add i32 %389, %388
  %391 = icmp eq i32 %390, 2
  %392 = zext i1 %391 to i8
  %393 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %392, i8* %393, align 1
  store %struct.Memory* %loadMem_402165, %struct.Memory** %MEMORY
  %loadMem_40216c = load %struct.Memory*, %struct.Memory** %MEMORY
  %394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %395 = getelementptr inbounds %struct.GPR, %struct.GPR* %394, i32 0, i32 33
  %396 = getelementptr inbounds %struct.Reg, %struct.Reg* %395, i32 0, i32 0
  %PC.i543 = bitcast %union.anon* %396 to i64*
  %397 = load i64, i64* %PC.i543
  %398 = add i64 %397, 770
  %399 = load i64, i64* %PC.i543
  %400 = add i64 %399, 6
  %401 = load i64, i64* %PC.i543
  %402 = add i64 %401, 6
  store i64 %402, i64* %PC.i543
  %403 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %404 = load i8, i8* %403, align 1
  %405 = icmp eq i8 %404, 0
  %406 = zext i1 %405 to i8
  store i8 %406, i8* %BRANCH_TAKEN, align 1
  %407 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %408 = select i1 %405, i64 %398, i64 %400
  store i64 %408, i64* %407, align 8
  store %struct.Memory* %loadMem_40216c, %struct.Memory** %MEMORY
  %loadBr_40216c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40216c = icmp eq i8 %loadBr_40216c, 1
  br i1 %cmpBr_40216c, label %block_.L_40246e, label %block_402172

block_402172:                                     ; preds = %block_.L_402165
  %loadMem_402172 = load %struct.Memory*, %struct.Memory** %MEMORY
  %409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %410 = getelementptr inbounds %struct.GPR, %struct.GPR* %409, i32 0, i32 33
  %411 = getelementptr inbounds %struct.Reg, %struct.Reg* %410, i32 0, i32 0
  %PC.i541 = bitcast %union.anon* %411 to i64*
  %412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %413 = getelementptr inbounds %struct.GPR, %struct.GPR* %412, i32 0, i32 15
  %414 = getelementptr inbounds %struct.Reg, %struct.Reg* %413, i32 0, i32 0
  %RBP.i542 = bitcast %union.anon* %414 to i64*
  %415 = load i64, i64* %RBP.i542
  %416 = sub i64 %415, 20
  %417 = load i64, i64* %PC.i541
  %418 = add i64 %417, 7
  store i64 %418, i64* %PC.i541
  %419 = inttoptr i64 %416 to i32*
  %420 = load i32, i32* %419
  %421 = sub i32 %420, 512
  %422 = icmp ult i32 %420, 512
  %423 = zext i1 %422 to i8
  %424 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %423, i8* %424, align 1
  %425 = and i32 %421, 255
  %426 = call i32 @llvm.ctpop.i32(i32 %425)
  %427 = trunc i32 %426 to i8
  %428 = and i8 %427, 1
  %429 = xor i8 %428, 1
  %430 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %429, i8* %430, align 1
  %431 = xor i32 %420, 512
  %432 = xor i32 %431, %421
  %433 = lshr i32 %432, 4
  %434 = trunc i32 %433 to i8
  %435 = and i8 %434, 1
  %436 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %435, i8* %436, align 1
  %437 = icmp eq i32 %421, 0
  %438 = zext i1 %437 to i8
  %439 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %438, i8* %439, align 1
  %440 = lshr i32 %421, 31
  %441 = trunc i32 %440 to i8
  %442 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %441, i8* %442, align 1
  %443 = lshr i32 %420, 31
  %444 = xor i32 %440, %443
  %445 = add i32 %444, %443
  %446 = icmp eq i32 %445, 2
  %447 = zext i1 %446 to i8
  %448 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %447, i8* %448, align 1
  store %struct.Memory* %loadMem_402172, %struct.Memory** %MEMORY
  %loadMem_402179 = load %struct.Memory*, %struct.Memory** %MEMORY
  %449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %450 = getelementptr inbounds %struct.GPR, %struct.GPR* %449, i32 0, i32 33
  %451 = getelementptr inbounds %struct.Reg, %struct.Reg* %450, i32 0, i32 0
  %PC.i540 = bitcast %union.anon* %451 to i64*
  %452 = load i64, i64* %PC.i540
  %453 = add i64 %452, 354
  %454 = load i64, i64* %PC.i540
  %455 = add i64 %454, 6
  %456 = load i64, i64* %PC.i540
  %457 = add i64 %456, 6
  store i64 %457, i64* %PC.i540
  %458 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %459 = load i8, i8* %458, align 1
  store i8 %459, i8* %BRANCH_TAKEN, align 1
  %460 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %461 = icmp ne i8 %459, 0
  %462 = select i1 %461, i64 %453, i64 %455
  store i64 %462, i64* %460, align 8
  store %struct.Memory* %loadMem_402179, %struct.Memory** %MEMORY
  %loadBr_402179 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_402179 = icmp eq i8 %loadBr_402179, 1
  br i1 %cmpBr_402179, label %block_.L_4022db, label %block_40217f

block_40217f:                                     ; preds = %block_402172
  %loadMem_40217f = load %struct.Memory*, %struct.Memory** %MEMORY
  %463 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %464 = getelementptr inbounds %struct.GPR, %struct.GPR* %463, i32 0, i32 33
  %465 = getelementptr inbounds %struct.Reg, %struct.Reg* %464, i32 0, i32 0
  %PC.i537 = bitcast %union.anon* %465 to i64*
  %466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %467 = getelementptr inbounds %struct.GPR, %struct.GPR* %466, i32 0, i32 1
  %468 = getelementptr inbounds %struct.Reg, %struct.Reg* %467, i32 0, i32 0
  %RAX.i538 = bitcast %union.anon* %468 to i64*
  %469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %470 = getelementptr inbounds %struct.GPR, %struct.GPR* %469, i32 0, i32 15
  %471 = getelementptr inbounds %struct.Reg, %struct.Reg* %470, i32 0, i32 0
  %RBP.i539 = bitcast %union.anon* %471 to i64*
  %472 = load i64, i64* %RBP.i539
  %473 = sub i64 %472, 8
  %474 = load i64, i64* %PC.i537
  %475 = add i64 %474, 4
  store i64 %475, i64* %PC.i537
  %476 = inttoptr i64 %473 to i64*
  %477 = load i64, i64* %476
  store i64 %477, i64* %RAX.i538, align 8
  store %struct.Memory* %loadMem_40217f, %struct.Memory** %MEMORY
  %loadMem_402183 = load %struct.Memory*, %struct.Memory** %MEMORY
  %478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %479 = getelementptr inbounds %struct.GPR, %struct.GPR* %478, i32 0, i32 33
  %480 = getelementptr inbounds %struct.Reg, %struct.Reg* %479, i32 0, i32 0
  %PC.i534 = bitcast %union.anon* %480 to i64*
  %481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %482 = getelementptr inbounds %struct.GPR, %struct.GPR* %481, i32 0, i32 1
  %483 = getelementptr inbounds %struct.Reg, %struct.Reg* %482, i32 0, i32 0
  %RAX.i535 = bitcast %union.anon* %483 to i64*
  %484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %485 = getelementptr inbounds %struct.GPR, %struct.GPR* %484, i32 0, i32 5
  %486 = getelementptr inbounds %struct.Reg, %struct.Reg* %485, i32 0, i32 0
  %RCX.i536 = bitcast %union.anon* %486 to i64*
  %487 = load i64, i64* %RAX.i535
  %488 = add i64 %487, 8
  %489 = load i64, i64* %PC.i534
  %490 = add i64 %489, 3
  store i64 %490, i64* %PC.i534
  %491 = inttoptr i64 %488 to i32*
  %492 = load i32, i32* %491
  %493 = zext i32 %492 to i64
  store i64 %493, i64* %RCX.i536, align 8
  store %struct.Memory* %loadMem_402183, %struct.Memory** %MEMORY
  %loadMem_402186 = load %struct.Memory*, %struct.Memory** %MEMORY
  %494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %495 = getelementptr inbounds %struct.GPR, %struct.GPR* %494, i32 0, i32 33
  %496 = getelementptr inbounds %struct.Reg, %struct.Reg* %495, i32 0, i32 0
  %PC.i532 = bitcast %union.anon* %496 to i64*
  %497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %498 = getelementptr inbounds %struct.GPR, %struct.GPR* %497, i32 0, i32 5
  %499 = getelementptr inbounds %struct.Reg, %struct.Reg* %498, i32 0, i32 0
  %RCX.i533 = bitcast %union.anon* %499 to i64*
  %500 = load i64, i64* %RCX.i533
  %501 = load i64, i64* %PC.i532
  %502 = add i64 %501, 2
  store i64 %502, i64* %PC.i532
  %503 = trunc i64 %500 to i32
  %504 = shl i32 %503, 1
  %505 = icmp slt i32 %503, 0
  %506 = icmp slt i32 %504, 0
  %507 = xor i1 %505, %506
  %508 = zext i32 %504 to i64
  store i64 %508, i64* %RCX.i533, align 8
  %509 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %510 = zext i1 %505 to i8
  store i8 %510, i8* %509, align 1
  %511 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %512 = and i32 %504, 254
  %513 = call i32 @llvm.ctpop.i32(i32 %512)
  %514 = trunc i32 %513 to i8
  %515 = and i8 %514, 1
  %516 = xor i8 %515, 1
  store i8 %516, i8* %511, align 1
  %517 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %517, align 1
  %518 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %519 = icmp eq i32 %504, 0
  %520 = zext i1 %519 to i8
  store i8 %520, i8* %518, align 1
  %521 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %522 = lshr i32 %504, 31
  %523 = trunc i32 %522 to i8
  store i8 %523, i8* %521, align 1
  %524 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %525 = zext i1 %507 to i8
  store i8 %525, i8* %524, align 1
  store %struct.Memory* %loadMem_402186, %struct.Memory** %MEMORY
  %loadMem_402189 = load %struct.Memory*, %struct.Memory** %MEMORY
  %526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %527 = getelementptr inbounds %struct.GPR, %struct.GPR* %526, i32 0, i32 33
  %528 = getelementptr inbounds %struct.Reg, %struct.Reg* %527, i32 0, i32 0
  %PC.i529 = bitcast %union.anon* %528 to i64*
  %529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %530 = getelementptr inbounds %struct.GPR, %struct.GPR* %529, i32 0, i32 5
  %531 = getelementptr inbounds %struct.Reg, %struct.Reg* %530, i32 0, i32 0
  %ECX.i530 = bitcast %union.anon* %531 to i32*
  %532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %533 = getelementptr inbounds %struct.GPR, %struct.GPR* %532, i32 0, i32 1
  %534 = getelementptr inbounds %struct.Reg, %struct.Reg* %533, i32 0, i32 0
  %RAX.i531 = bitcast %union.anon* %534 to i64*
  %535 = load i64, i64* %RAX.i531
  %536 = add i64 %535, 8
  %537 = load i32, i32* %ECX.i530
  %538 = zext i32 %537 to i64
  %539 = load i64, i64* %PC.i529
  %540 = add i64 %539, 3
  store i64 %540, i64* %PC.i529
  %541 = inttoptr i64 %536 to i32*
  store i32 %537, i32* %541
  store %struct.Memory* %loadMem_402189, %struct.Memory** %MEMORY
  %loadMem_40218c = load %struct.Memory*, %struct.Memory** %MEMORY
  %542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %543 = getelementptr inbounds %struct.GPR, %struct.GPR* %542, i32 0, i32 33
  %544 = getelementptr inbounds %struct.Reg, %struct.Reg* %543, i32 0, i32 0
  %PC.i526 = bitcast %union.anon* %544 to i64*
  %545 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %546 = getelementptr inbounds %struct.GPR, %struct.GPR* %545, i32 0, i32 1
  %547 = getelementptr inbounds %struct.Reg, %struct.Reg* %546, i32 0, i32 0
  %RAX.i527 = bitcast %union.anon* %547 to i64*
  %548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %549 = getelementptr inbounds %struct.GPR, %struct.GPR* %548, i32 0, i32 15
  %550 = getelementptr inbounds %struct.Reg, %struct.Reg* %549, i32 0, i32 0
  %RBP.i528 = bitcast %union.anon* %550 to i64*
  %551 = load i64, i64* %RBP.i528
  %552 = sub i64 %551, 8
  %553 = load i64, i64* %PC.i526
  %554 = add i64 %553, 4
  store i64 %554, i64* %PC.i526
  %555 = inttoptr i64 %552 to i64*
  %556 = load i64, i64* %555
  store i64 %556, i64* %RAX.i527, align 8
  store %struct.Memory* %loadMem_40218c, %struct.Memory** %MEMORY
  %loadMem_402190 = load %struct.Memory*, %struct.Memory** %MEMORY
  %557 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %558 = getelementptr inbounds %struct.GPR, %struct.GPR* %557, i32 0, i32 33
  %559 = getelementptr inbounds %struct.Reg, %struct.Reg* %558, i32 0, i32 0
  %PC.i523 = bitcast %union.anon* %559 to i64*
  %560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %561 = getelementptr inbounds %struct.GPR, %struct.GPR* %560, i32 0, i32 1
  %562 = getelementptr inbounds %struct.Reg, %struct.Reg* %561, i32 0, i32 0
  %RAX.i524 = bitcast %union.anon* %562 to i64*
  %563 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %564 = getelementptr inbounds %struct.GPR, %struct.GPR* %563, i32 0, i32 5
  %565 = getelementptr inbounds %struct.Reg, %struct.Reg* %564, i32 0, i32 0
  %RCX.i525 = bitcast %union.anon* %565 to i64*
  %566 = load i64, i64* %RAX.i524
  %567 = add i64 %566, 8
  %568 = load i64, i64* %PC.i523
  %569 = add i64 %568, 3
  store i64 %569, i64* %PC.i523
  %570 = inttoptr i64 %567 to i32*
  %571 = load i32, i32* %570
  %572 = zext i32 %571 to i64
  store i64 %572, i64* %RCX.i525, align 8
  store %struct.Memory* %loadMem_402190, %struct.Memory** %MEMORY
  %loadMem_402193 = load %struct.Memory*, %struct.Memory** %MEMORY
  %573 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %574 = getelementptr inbounds %struct.GPR, %struct.GPR* %573, i32 0, i32 33
  %575 = getelementptr inbounds %struct.Reg, %struct.Reg* %574, i32 0, i32 0
  %PC.i521 = bitcast %union.anon* %575 to i64*
  %576 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %577 = getelementptr inbounds %struct.GPR, %struct.GPR* %576, i32 0, i32 5
  %578 = getelementptr inbounds %struct.Reg, %struct.Reg* %577, i32 0, i32 0
  %RCX.i522 = bitcast %union.anon* %578 to i64*
  %579 = load i64, i64* %RCX.i522
  %580 = load i64, i64* %PC.i521
  %581 = add i64 %580, 3
  store i64 %581, i64* %PC.i521
  %582 = or i64 1, %579
  %583 = trunc i64 %582 to i32
  %584 = and i64 %582, 4294967295
  store i64 %584, i64* %RCX.i522, align 8
  %585 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %585, align 1
  %586 = and i32 %583, 255
  %587 = call i32 @llvm.ctpop.i32(i32 %586)
  %588 = trunc i32 %587 to i8
  %589 = and i8 %588, 1
  %590 = xor i8 %589, 1
  %591 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %590, i8* %591, align 1
  %592 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %592, align 1
  %593 = lshr i32 %583, 31
  %594 = trunc i32 %593 to i8
  %595 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %594, i8* %595, align 1
  %596 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %596, align 1
  %597 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %597, align 1
  store %struct.Memory* %loadMem_402193, %struct.Memory** %MEMORY
  %loadMem_402196 = load %struct.Memory*, %struct.Memory** %MEMORY
  %598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %599 = getelementptr inbounds %struct.GPR, %struct.GPR* %598, i32 0, i32 33
  %600 = getelementptr inbounds %struct.Reg, %struct.Reg* %599, i32 0, i32 0
  %PC.i518 = bitcast %union.anon* %600 to i64*
  %601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %602 = getelementptr inbounds %struct.GPR, %struct.GPR* %601, i32 0, i32 5
  %603 = getelementptr inbounds %struct.Reg, %struct.Reg* %602, i32 0, i32 0
  %ECX.i519 = bitcast %union.anon* %603 to i32*
  %604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %605 = getelementptr inbounds %struct.GPR, %struct.GPR* %604, i32 0, i32 1
  %606 = getelementptr inbounds %struct.Reg, %struct.Reg* %605, i32 0, i32 0
  %RAX.i520 = bitcast %union.anon* %606 to i64*
  %607 = load i64, i64* %RAX.i520
  %608 = add i64 %607, 8
  %609 = load i32, i32* %ECX.i519
  %610 = zext i32 %609 to i64
  %611 = load i64, i64* %PC.i518
  %612 = add i64 %611, 3
  store i64 %612, i64* %PC.i518
  %613 = inttoptr i64 %608 to i32*
  store i32 %609, i32* %613
  store %struct.Memory* %loadMem_402196, %struct.Memory** %MEMORY
  %loadMem_402199 = load %struct.Memory*, %struct.Memory** %MEMORY
  %614 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %615 = getelementptr inbounds %struct.GPR, %struct.GPR* %614, i32 0, i32 33
  %616 = getelementptr inbounds %struct.Reg, %struct.Reg* %615, i32 0, i32 0
  %PC.i515 = bitcast %union.anon* %616 to i64*
  %617 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %618 = getelementptr inbounds %struct.GPR, %struct.GPR* %617, i32 0, i32 1
  %619 = getelementptr inbounds %struct.Reg, %struct.Reg* %618, i32 0, i32 0
  %RAX.i516 = bitcast %union.anon* %619 to i64*
  %620 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %621 = getelementptr inbounds %struct.GPR, %struct.GPR* %620, i32 0, i32 15
  %622 = getelementptr inbounds %struct.Reg, %struct.Reg* %621, i32 0, i32 0
  %RBP.i517 = bitcast %union.anon* %622 to i64*
  %623 = load i64, i64* %RBP.i517
  %624 = sub i64 %623, 8
  %625 = load i64, i64* %PC.i515
  %626 = add i64 %625, 4
  store i64 %626, i64* %PC.i515
  %627 = inttoptr i64 %624 to i64*
  %628 = load i64, i64* %627
  store i64 %628, i64* %RAX.i516, align 8
  store %struct.Memory* %loadMem_402199, %struct.Memory** %MEMORY
  %loadMem_40219d = load %struct.Memory*, %struct.Memory** %MEMORY
  %629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %630 = getelementptr inbounds %struct.GPR, %struct.GPR* %629, i32 0, i32 33
  %631 = getelementptr inbounds %struct.Reg, %struct.Reg* %630, i32 0, i32 0
  %PC.i512 = bitcast %union.anon* %631 to i64*
  %632 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %633 = getelementptr inbounds %struct.GPR, %struct.GPR* %632, i32 0, i32 1
  %634 = getelementptr inbounds %struct.Reg, %struct.Reg* %633, i32 0, i32 0
  %RAX.i513 = bitcast %union.anon* %634 to i64*
  %635 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %636 = getelementptr inbounds %struct.GPR, %struct.GPR* %635, i32 0, i32 5
  %637 = getelementptr inbounds %struct.Reg, %struct.Reg* %636, i32 0, i32 0
  %RCX.i514 = bitcast %union.anon* %637 to i64*
  %638 = load i64, i64* %RAX.i513
  %639 = add i64 %638, 12
  %640 = load i64, i64* %PC.i512
  %641 = add i64 %640, 3
  store i64 %641, i64* %PC.i512
  %642 = inttoptr i64 %639 to i32*
  %643 = load i32, i32* %642
  %644 = zext i32 %643 to i64
  store i64 %644, i64* %RCX.i514, align 8
  store %struct.Memory* %loadMem_40219d, %struct.Memory** %MEMORY
  %loadMem_4021a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %645 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %646 = getelementptr inbounds %struct.GPR, %struct.GPR* %645, i32 0, i32 33
  %647 = getelementptr inbounds %struct.Reg, %struct.Reg* %646, i32 0, i32 0
  %PC.i510 = bitcast %union.anon* %647 to i64*
  %648 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %649 = getelementptr inbounds %struct.GPR, %struct.GPR* %648, i32 0, i32 5
  %650 = getelementptr inbounds %struct.Reg, %struct.Reg* %649, i32 0, i32 0
  %RCX.i511 = bitcast %union.anon* %650 to i64*
  %651 = load i64, i64* %RCX.i511
  %652 = load i64, i64* %PC.i510
  %653 = add i64 %652, 3
  store i64 %653, i64* %PC.i510
  %654 = trunc i64 %651 to i32
  %655 = add i32 -1, %654
  %656 = zext i32 %655 to i64
  store i64 %656, i64* %RCX.i511, align 8
  %657 = icmp ult i32 %655, %654
  %658 = icmp ult i32 %655, -1
  %659 = or i1 %657, %658
  %660 = zext i1 %659 to i8
  %661 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %660, i8* %661, align 1
  %662 = and i32 %655, 255
  %663 = call i32 @llvm.ctpop.i32(i32 %662)
  %664 = trunc i32 %663 to i8
  %665 = and i8 %664, 1
  %666 = xor i8 %665, 1
  %667 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %666, i8* %667, align 1
  %668 = xor i64 -1, %651
  %669 = trunc i64 %668 to i32
  %670 = xor i32 %669, %655
  %671 = lshr i32 %670, 4
  %672 = trunc i32 %671 to i8
  %673 = and i8 %672, 1
  %674 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %673, i8* %674, align 1
  %675 = icmp eq i32 %655, 0
  %676 = zext i1 %675 to i8
  %677 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %676, i8* %677, align 1
  %678 = lshr i32 %655, 31
  %679 = trunc i32 %678 to i8
  %680 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %679, i8* %680, align 1
  %681 = lshr i32 %654, 31
  %682 = xor i32 %678, %681
  %683 = xor i32 %678, 1
  %684 = add i32 %682, %683
  %685 = icmp eq i32 %684, 2
  %686 = zext i1 %685 to i8
  %687 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %686, i8* %687, align 1
  store %struct.Memory* %loadMem_4021a0, %struct.Memory** %MEMORY
  %loadMem_4021a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %689 = getelementptr inbounds %struct.GPR, %struct.GPR* %688, i32 0, i32 33
  %690 = getelementptr inbounds %struct.Reg, %struct.Reg* %689, i32 0, i32 0
  %PC.i507 = bitcast %union.anon* %690 to i64*
  %691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %692 = getelementptr inbounds %struct.GPR, %struct.GPR* %691, i32 0, i32 5
  %693 = getelementptr inbounds %struct.Reg, %struct.Reg* %692, i32 0, i32 0
  %ECX.i508 = bitcast %union.anon* %693 to i32*
  %694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %695 = getelementptr inbounds %struct.GPR, %struct.GPR* %694, i32 0, i32 1
  %696 = getelementptr inbounds %struct.Reg, %struct.Reg* %695, i32 0, i32 0
  %RAX.i509 = bitcast %union.anon* %696 to i64*
  %697 = load i64, i64* %RAX.i509
  %698 = add i64 %697, 12
  %699 = load i32, i32* %ECX.i508
  %700 = zext i32 %699 to i64
  %701 = load i64, i64* %PC.i507
  %702 = add i64 %701, 3
  store i64 %702, i64* %PC.i507
  %703 = inttoptr i64 %698 to i32*
  store i32 %699, i32* %703
  store %struct.Memory* %loadMem_4021a3, %struct.Memory** %MEMORY
  %loadMem_4021a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %705 = getelementptr inbounds %struct.GPR, %struct.GPR* %704, i32 0, i32 33
  %706 = getelementptr inbounds %struct.Reg, %struct.Reg* %705, i32 0, i32 0
  %PC.i505 = bitcast %union.anon* %706 to i64*
  %707 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %708 = getelementptr inbounds %struct.GPR, %struct.GPR* %707, i32 0, i32 5
  %709 = getelementptr inbounds %struct.Reg, %struct.Reg* %708, i32 0, i32 0
  %ECX.i506 = bitcast %union.anon* %709 to i32*
  %710 = load i32, i32* %ECX.i506
  %711 = zext i32 %710 to i64
  %712 = load i64, i64* %PC.i505
  %713 = add i64 %712, 3
  store i64 %713, i64* %PC.i505
  %714 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %714, align 1
  %715 = and i32 %710, 255
  %716 = call i32 @llvm.ctpop.i32(i32 %715)
  %717 = trunc i32 %716 to i8
  %718 = and i8 %717, 1
  %719 = xor i8 %718, 1
  %720 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %719, i8* %720, align 1
  %721 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %721, align 1
  %722 = icmp eq i32 %710, 0
  %723 = zext i1 %722 to i8
  %724 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %723, i8* %724, align 1
  %725 = lshr i32 %710, 31
  %726 = trunc i32 %725 to i8
  %727 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %726, i8* %727, align 1
  %728 = lshr i32 %710, 31
  %729 = xor i32 %725, %728
  %730 = add i32 %729, %728
  %731 = icmp eq i32 %730, 2
  %732 = zext i1 %731 to i8
  %733 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %732, i8* %733, align 1
  store %struct.Memory* %loadMem_4021a6, %struct.Memory** %MEMORY
  %loadMem_4021a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %734 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %735 = getelementptr inbounds %struct.GPR, %struct.GPR* %734, i32 0, i32 33
  %736 = getelementptr inbounds %struct.Reg, %struct.Reg* %735, i32 0, i32 0
  %PC.i504 = bitcast %union.anon* %736 to i64*
  %737 = load i64, i64* %PC.i504
  %738 = add i64 %737, 107
  %739 = load i64, i64* %PC.i504
  %740 = add i64 %739, 6
  %741 = load i64, i64* %PC.i504
  %742 = add i64 %741, 6
  store i64 %742, i64* %PC.i504
  %743 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %744 = load i8, i8* %743, align 1
  %745 = icmp eq i8 %744, 0
  %746 = zext i1 %745 to i8
  store i8 %746, i8* %BRANCH_TAKEN, align 1
  %747 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %748 = select i1 %745, i64 %738, i64 %740
  store i64 %748, i64* %747, align 8
  store %struct.Memory* %loadMem_4021a9, %struct.Memory** %MEMORY
  %loadBr_4021a9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4021a9 = icmp eq i8 %loadBr_4021a9, 1
  br i1 %cmpBr_4021a9, label %block_.L_402214, label %block_4021af

block_4021af:                                     ; preds = %block_40217f
  %loadMem_4021af = load %struct.Memory*, %struct.Memory** %MEMORY
  %749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %750 = getelementptr inbounds %struct.GPR, %struct.GPR* %749, i32 0, i32 33
  %751 = getelementptr inbounds %struct.Reg, %struct.Reg* %750, i32 0, i32 0
  %PC.i501 = bitcast %union.anon* %751 to i64*
  %752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %753 = getelementptr inbounds %struct.GPR, %struct.GPR* %752, i32 0, i32 1
  %754 = getelementptr inbounds %struct.Reg, %struct.Reg* %753, i32 0, i32 0
  %RAX.i502 = bitcast %union.anon* %754 to i64*
  %755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %756 = getelementptr inbounds %struct.GPR, %struct.GPR* %755, i32 0, i32 15
  %757 = getelementptr inbounds %struct.Reg, %struct.Reg* %756, i32 0, i32 0
  %RBP.i503 = bitcast %union.anon* %757 to i64*
  %758 = load i64, i64* %RBP.i503
  %759 = sub i64 %758, 8
  %760 = load i64, i64* %PC.i501
  %761 = add i64 %760, 4
  store i64 %761, i64* %PC.i501
  %762 = inttoptr i64 %759 to i64*
  %763 = load i64, i64* %762
  store i64 %763, i64* %RAX.i502, align 8
  store %struct.Memory* %loadMem_4021af, %struct.Memory** %MEMORY
  %loadMem_4021b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %764 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %765 = getelementptr inbounds %struct.GPR, %struct.GPR* %764, i32 0, i32 33
  %766 = getelementptr inbounds %struct.Reg, %struct.Reg* %765, i32 0, i32 0
  %PC.i498 = bitcast %union.anon* %766 to i64*
  %767 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %768 = getelementptr inbounds %struct.GPR, %struct.GPR* %767, i32 0, i32 1
  %769 = getelementptr inbounds %struct.Reg, %struct.Reg* %768, i32 0, i32 0
  %RAX.i499 = bitcast %union.anon* %769 to i64*
  %770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %771 = getelementptr inbounds %struct.GPR, %struct.GPR* %770, i32 0, i32 5
  %772 = getelementptr inbounds %struct.Reg, %struct.Reg* %771, i32 0, i32 0
  %RCX.i500 = bitcast %union.anon* %772 to i64*
  %773 = load i64, i64* %RAX.i499
  %774 = add i64 %773, 8
  %775 = load i64, i64* %PC.i498
  %776 = add i64 %775, 3
  store i64 %776, i64* %PC.i498
  %777 = inttoptr i64 %774 to i32*
  %778 = load i32, i32* %777
  %779 = zext i32 %778 to i64
  store i64 %779, i64* %RCX.i500, align 8
  store %struct.Memory* %loadMem_4021b3, %struct.Memory** %MEMORY
  %loadMem_4021b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %780 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %781 = getelementptr inbounds %struct.GPR, %struct.GPR* %780, i32 0, i32 33
  %782 = getelementptr inbounds %struct.Reg, %struct.Reg* %781, i32 0, i32 0
  %PC.i495 = bitcast %union.anon* %782 to i64*
  %783 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %784 = getelementptr inbounds %struct.GPR, %struct.GPR* %783, i32 0, i32 5
  %785 = getelementptr inbounds %struct.Reg, %struct.Reg* %784, i32 0, i32 0
  %786 = bitcast %union.anon* %785 to %struct.anon.2*
  %CL.i496 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %786, i32 0, i32 0
  %787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %788 = getelementptr inbounds %struct.GPR, %struct.GPR* %787, i32 0, i32 7
  %789 = getelementptr inbounds %struct.Reg, %struct.Reg* %788, i32 0, i32 0
  %790 = bitcast %union.anon* %789 to %struct.anon.2*
  %DL.i497 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %790, i32 0, i32 0
  %791 = load i8, i8* %CL.i496
  %792 = zext i8 %791 to i64
  %793 = load i64, i64* %PC.i495
  %794 = add i64 %793, 2
  store i64 %794, i64* %PC.i495
  store i8 %791, i8* %DL.i497, align 1
  store %struct.Memory* %loadMem_4021b6, %struct.Memory** %MEMORY
  %loadMem_4021b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %796 = getelementptr inbounds %struct.GPR, %struct.GPR* %795, i32 0, i32 33
  %797 = getelementptr inbounds %struct.Reg, %struct.Reg* %796, i32 0, i32 0
  %PC.i492 = bitcast %union.anon* %797 to i64*
  %798 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %799 = getelementptr inbounds %struct.GPR, %struct.GPR* %798, i32 0, i32 1
  %800 = getelementptr inbounds %struct.Reg, %struct.Reg* %799, i32 0, i32 0
  %RAX.i493 = bitcast %union.anon* %800 to i64*
  %801 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %802 = getelementptr inbounds %struct.GPR, %struct.GPR* %801, i32 0, i32 15
  %803 = getelementptr inbounds %struct.Reg, %struct.Reg* %802, i32 0, i32 0
  %RBP.i494 = bitcast %union.anon* %803 to i64*
  %804 = load i64, i64* %RBP.i494
  %805 = sub i64 %804, 8
  %806 = load i64, i64* %PC.i492
  %807 = add i64 %806, 4
  store i64 %807, i64* %PC.i492
  %808 = inttoptr i64 %805 to i64*
  %809 = load i64, i64* %808
  store i64 %809, i64* %RAX.i493, align 8
  store %struct.Memory* %loadMem_4021b8, %struct.Memory** %MEMORY
  %loadMem_4021bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %811 = getelementptr inbounds %struct.GPR, %struct.GPR* %810, i32 0, i32 33
  %812 = getelementptr inbounds %struct.Reg, %struct.Reg* %811, i32 0, i32 0
  %PC.i490 = bitcast %union.anon* %812 to i64*
  %813 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %814 = getelementptr inbounds %struct.GPR, %struct.GPR* %813, i32 0, i32 1
  %815 = getelementptr inbounds %struct.Reg, %struct.Reg* %814, i32 0, i32 0
  %RAX.i491 = bitcast %union.anon* %815 to i64*
  %816 = load i64, i64* %RAX.i491
  %817 = add i64 %816, 24
  %818 = load i64, i64* %PC.i490
  %819 = add i64 %818, 4
  store i64 %819, i64* %PC.i490
  %820 = inttoptr i64 %817 to i64*
  %821 = load i64, i64* %820
  store i64 %821, i64* %RAX.i491, align 8
  store %struct.Memory* %loadMem_4021bc, %struct.Memory** %MEMORY
  %loadMem_4021c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %823 = getelementptr inbounds %struct.GPR, %struct.GPR* %822, i32 0, i32 33
  %824 = getelementptr inbounds %struct.Reg, %struct.Reg* %823, i32 0, i32 0
  %PC.i487 = bitcast %union.anon* %824 to i64*
  %825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %826 = getelementptr inbounds %struct.GPR, %struct.GPR* %825, i32 0, i32 9
  %827 = getelementptr inbounds %struct.Reg, %struct.Reg* %826, i32 0, i32 0
  %RSI.i488 = bitcast %union.anon* %827 to i64*
  %828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %829 = getelementptr inbounds %struct.GPR, %struct.GPR* %828, i32 0, i32 15
  %830 = getelementptr inbounds %struct.Reg, %struct.Reg* %829, i32 0, i32 0
  %RBP.i489 = bitcast %union.anon* %830 to i64*
  %831 = load i64, i64* %RBP.i489
  %832 = sub i64 %831, 8
  %833 = load i64, i64* %PC.i487
  %834 = add i64 %833, 4
  store i64 %834, i64* %PC.i487
  %835 = inttoptr i64 %832 to i64*
  %836 = load i64, i64* %835
  store i64 %836, i64* %RSI.i488, align 8
  store %struct.Memory* %loadMem_4021c0, %struct.Memory** %MEMORY
  %loadMem_4021c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %837 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %838 = getelementptr inbounds %struct.GPR, %struct.GPR* %837, i32 0, i32 33
  %839 = getelementptr inbounds %struct.Reg, %struct.Reg* %838, i32 0, i32 0
  %PC.i485 = bitcast %union.anon* %839 to i64*
  %840 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %841 = getelementptr inbounds %struct.GPR, %struct.GPR* %840, i32 0, i32 9
  %842 = getelementptr inbounds %struct.Reg, %struct.Reg* %841, i32 0, i32 0
  %RSI.i486 = bitcast %union.anon* %842 to i64*
  %843 = load i64, i64* %RSI.i486
  %844 = add i64 %843, 32
  %845 = load i64, i64* %PC.i485
  %846 = add i64 %845, 4
  store i64 %846, i64* %PC.i485
  %847 = inttoptr i64 %844 to i64*
  %848 = load i64, i64* %847
  store i64 %848, i64* %RSI.i486, align 8
  store %struct.Memory* %loadMem_4021c4, %struct.Memory** %MEMORY
  %loadMem_4021c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %849 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %850 = getelementptr inbounds %struct.GPR, %struct.GPR* %849, i32 0, i32 33
  %851 = getelementptr inbounds %struct.Reg, %struct.Reg* %850, i32 0, i32 0
  %PC.i482 = bitcast %union.anon* %851 to i64*
  %852 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %853 = getelementptr inbounds %struct.GPR, %struct.GPR* %852, i32 0, i32 5
  %854 = getelementptr inbounds %struct.Reg, %struct.Reg* %853, i32 0, i32 0
  %RCX.i483 = bitcast %union.anon* %854 to i64*
  %855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %856 = getelementptr inbounds %struct.GPR, %struct.GPR* %855, i32 0, i32 9
  %857 = getelementptr inbounds %struct.Reg, %struct.Reg* %856, i32 0, i32 0
  %RSI.i484 = bitcast %union.anon* %857 to i64*
  %858 = load i64, i64* %RSI.i484
  %859 = load i64, i64* %PC.i482
  %860 = add i64 %859, 2
  store i64 %860, i64* %PC.i482
  %861 = inttoptr i64 %858 to i32*
  %862 = load i32, i32* %861
  %863 = zext i32 %862 to i64
  store i64 %863, i64* %RCX.i483, align 8
  store %struct.Memory* %loadMem_4021c8, %struct.Memory** %MEMORY
  %loadMem_4021ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %864 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %865 = getelementptr inbounds %struct.GPR, %struct.GPR* %864, i32 0, i32 33
  %866 = getelementptr inbounds %struct.Reg, %struct.Reg* %865, i32 0, i32 0
  %PC.i479 = bitcast %union.anon* %866 to i64*
  %867 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %868 = getelementptr inbounds %struct.GPR, %struct.GPR* %867, i32 0, i32 5
  %869 = getelementptr inbounds %struct.Reg, %struct.Reg* %868, i32 0, i32 0
  %ECX.i480 = bitcast %union.anon* %869 to i32*
  %870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %871 = getelementptr inbounds %struct.GPR, %struct.GPR* %870, i32 0, i32 11
  %872 = getelementptr inbounds %struct.Reg, %struct.Reg* %871, i32 0, i32 0
  %RDI.i481 = bitcast %union.anon* %872 to i64*
  %873 = load i32, i32* %ECX.i480
  %874 = zext i32 %873 to i64
  %875 = load i64, i64* %PC.i479
  %876 = add i64 %875, 2
  store i64 %876, i64* %PC.i479
  %877 = and i64 %874, 4294967295
  store i64 %877, i64* %RDI.i481, align 8
  store %struct.Memory* %loadMem_4021ca, %struct.Memory** %MEMORY
  %loadMem_4021cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %878 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %879 = getelementptr inbounds %struct.GPR, %struct.GPR* %878, i32 0, i32 33
  %880 = getelementptr inbounds %struct.Reg, %struct.Reg* %879, i32 0, i32 0
  %PC.i477 = bitcast %union.anon* %880 to i64*
  %881 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %882 = getelementptr inbounds %struct.GPR, %struct.GPR* %881, i32 0, i32 11
  %883 = getelementptr inbounds %struct.Reg, %struct.Reg* %882, i32 0, i32 0
  %RDI.i478 = bitcast %union.anon* %883 to i64*
  %884 = load i64, i64* %RDI.i478
  %885 = load i64, i64* %PC.i477
  %886 = add i64 %885, 3
  store i64 %886, i64* %PC.i477
  %887 = trunc i64 %884 to i32
  %888 = add i32 1, %887
  %889 = zext i32 %888 to i64
  store i64 %889, i64* %RDI.i478, align 8
  %890 = icmp ult i32 %888, %887
  %891 = icmp ult i32 %888, 1
  %892 = or i1 %890, %891
  %893 = zext i1 %892 to i8
  %894 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %893, i8* %894, align 1
  %895 = and i32 %888, 255
  %896 = call i32 @llvm.ctpop.i32(i32 %895)
  %897 = trunc i32 %896 to i8
  %898 = and i8 %897, 1
  %899 = xor i8 %898, 1
  %900 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %899, i8* %900, align 1
  %901 = xor i64 1, %884
  %902 = trunc i64 %901 to i32
  %903 = xor i32 %902, %888
  %904 = lshr i32 %903, 4
  %905 = trunc i32 %904 to i8
  %906 = and i8 %905, 1
  %907 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %906, i8* %907, align 1
  %908 = icmp eq i32 %888, 0
  %909 = zext i1 %908 to i8
  %910 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %909, i8* %910, align 1
  %911 = lshr i32 %888, 31
  %912 = trunc i32 %911 to i8
  %913 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %912, i8* %913, align 1
  %914 = lshr i32 %887, 31
  %915 = xor i32 %911, %914
  %916 = add i32 %915, %911
  %917 = icmp eq i32 %916, 2
  %918 = zext i1 %917 to i8
  %919 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %918, i8* %919, align 1
  store %struct.Memory* %loadMem_4021cc, %struct.Memory** %MEMORY
  %loadMem_4021cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %921 = getelementptr inbounds %struct.GPR, %struct.GPR* %920, i32 0, i32 33
  %922 = getelementptr inbounds %struct.Reg, %struct.Reg* %921, i32 0, i32 0
  %PC.i474 = bitcast %union.anon* %922 to i64*
  %923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %924 = getelementptr inbounds %struct.GPR, %struct.GPR* %923, i32 0, i32 11
  %925 = getelementptr inbounds %struct.Reg, %struct.Reg* %924, i32 0, i32 0
  %EDI.i475 = bitcast %union.anon* %925 to i32*
  %926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %927 = getelementptr inbounds %struct.GPR, %struct.GPR* %926, i32 0, i32 9
  %928 = getelementptr inbounds %struct.Reg, %struct.Reg* %927, i32 0, i32 0
  %RSI.i476 = bitcast %union.anon* %928 to i64*
  %929 = load i64, i64* %RSI.i476
  %930 = load i32, i32* %EDI.i475
  %931 = zext i32 %930 to i64
  %932 = load i64, i64* %PC.i474
  %933 = add i64 %932, 2
  store i64 %933, i64* %PC.i474
  %934 = inttoptr i64 %929 to i32*
  store i32 %930, i32* %934
  store %struct.Memory* %loadMem_4021cf, %struct.Memory** %MEMORY
  %loadMem_4021d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %936 = getelementptr inbounds %struct.GPR, %struct.GPR* %935, i32 0, i32 33
  %937 = getelementptr inbounds %struct.Reg, %struct.Reg* %936, i32 0, i32 0
  %PC.i471 = bitcast %union.anon* %937 to i64*
  %938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %939 = getelementptr inbounds %struct.GPR, %struct.GPR* %938, i32 0, i32 5
  %940 = getelementptr inbounds %struct.Reg, %struct.Reg* %939, i32 0, i32 0
  %ECX.i472 = bitcast %union.anon* %940 to i32*
  %941 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %942 = getelementptr inbounds %struct.GPR, %struct.GPR* %941, i32 0, i32 9
  %943 = getelementptr inbounds %struct.Reg, %struct.Reg* %942, i32 0, i32 0
  %RSI.i473 = bitcast %union.anon* %943 to i64*
  %944 = load i32, i32* %ECX.i472
  %945 = zext i32 %944 to i64
  %946 = load i64, i64* %PC.i471
  %947 = add i64 %946, 3
  store i64 %947, i64* %PC.i471
  %948 = shl i64 %945, 32
  %949 = ashr exact i64 %948, 32
  store i64 %949, i64* %RSI.i473, align 8
  store %struct.Memory* %loadMem_4021d1, %struct.Memory** %MEMORY
  %loadMem_4021d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %950 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %951 = getelementptr inbounds %struct.GPR, %struct.GPR* %950, i32 0, i32 33
  %952 = getelementptr inbounds %struct.Reg, %struct.Reg* %951, i32 0, i32 0
  %PC.i467 = bitcast %union.anon* %952 to i64*
  %953 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %954 = getelementptr inbounds %struct.GPR, %struct.GPR* %953, i32 0, i32 7
  %955 = getelementptr inbounds %struct.Reg, %struct.Reg* %954, i32 0, i32 0
  %956 = bitcast %union.anon* %955 to %struct.anon.2*
  %DL.i468 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %956, i32 0, i32 0
  %957 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %958 = getelementptr inbounds %struct.GPR, %struct.GPR* %957, i32 0, i32 1
  %959 = getelementptr inbounds %struct.Reg, %struct.Reg* %958, i32 0, i32 0
  %RAX.i469 = bitcast %union.anon* %959 to i64*
  %960 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %961 = getelementptr inbounds %struct.GPR, %struct.GPR* %960, i32 0, i32 9
  %962 = getelementptr inbounds %struct.Reg, %struct.Reg* %961, i32 0, i32 0
  %RSI.i470 = bitcast %union.anon* %962 to i64*
  %963 = load i64, i64* %RAX.i469
  %964 = load i64, i64* %RSI.i470
  %965 = add i64 %964, %963
  %966 = load i8, i8* %DL.i468
  %967 = zext i8 %966 to i64
  %968 = load i64, i64* %PC.i467
  %969 = add i64 %968, 3
  store i64 %969, i64* %PC.i467
  %970 = inttoptr i64 %965 to i8*
  store i8 %966, i8* %970
  store %struct.Memory* %loadMem_4021d4, %struct.Memory** %MEMORY
  %loadMem_4021d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %971 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %972 = getelementptr inbounds %struct.GPR, %struct.GPR* %971, i32 0, i32 33
  %973 = getelementptr inbounds %struct.Reg, %struct.Reg* %972, i32 0, i32 0
  %PC.i464 = bitcast %union.anon* %973 to i64*
  %974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %975 = getelementptr inbounds %struct.GPR, %struct.GPR* %974, i32 0, i32 1
  %976 = getelementptr inbounds %struct.Reg, %struct.Reg* %975, i32 0, i32 0
  %RAX.i465 = bitcast %union.anon* %976 to i64*
  %977 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %978 = getelementptr inbounds %struct.GPR, %struct.GPR* %977, i32 0, i32 15
  %979 = getelementptr inbounds %struct.Reg, %struct.Reg* %978, i32 0, i32 0
  %RBP.i466 = bitcast %union.anon* %979 to i64*
  %980 = load i64, i64* %RBP.i466
  %981 = sub i64 %980, 8
  %982 = load i64, i64* %PC.i464
  %983 = add i64 %982, 4
  store i64 %983, i64* %PC.i464
  %984 = inttoptr i64 %981 to i64*
  %985 = load i64, i64* %984
  store i64 %985, i64* %RAX.i465, align 8
  store %struct.Memory* %loadMem_4021d7, %struct.Memory** %MEMORY
  %loadMem_4021db = load %struct.Memory*, %struct.Memory** %MEMORY
  %986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %987 = getelementptr inbounds %struct.GPR, %struct.GPR* %986, i32 0, i32 33
  %988 = getelementptr inbounds %struct.Reg, %struct.Reg* %987, i32 0, i32 0
  %PC.i462 = bitcast %union.anon* %988 to i64*
  %989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %990 = getelementptr inbounds %struct.GPR, %struct.GPR* %989, i32 0, i32 1
  %991 = getelementptr inbounds %struct.Reg, %struct.Reg* %990, i32 0, i32 0
  %RAX.i463 = bitcast %union.anon* %991 to i64*
  %992 = load i64, i64* %RAX.i463
  %993 = add i64 %992, 12
  %994 = load i64, i64* %PC.i462
  %995 = add i64 %994, 7
  store i64 %995, i64* %PC.i462
  %996 = inttoptr i64 %993 to i32*
  store i32 8, i32* %996
  store %struct.Memory* %loadMem_4021db, %struct.Memory** %MEMORY
  br label %block_.L_4021e2

block_.L_4021e2:                                  ; preds = %block_4021f0, %block_4021af
  %loadMem_4021e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %998 = getelementptr inbounds %struct.GPR, %struct.GPR* %997, i32 0, i32 33
  %999 = getelementptr inbounds %struct.Reg, %struct.Reg* %998, i32 0, i32 0
  %PC.i459 = bitcast %union.anon* %999 to i64*
  %1000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1001 = getelementptr inbounds %struct.GPR, %struct.GPR* %1000, i32 0, i32 1
  %1002 = getelementptr inbounds %struct.Reg, %struct.Reg* %1001, i32 0, i32 0
  %RAX.i460 = bitcast %union.anon* %1002 to i64*
  %1003 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1004 = getelementptr inbounds %struct.GPR, %struct.GPR* %1003, i32 0, i32 15
  %1005 = getelementptr inbounds %struct.Reg, %struct.Reg* %1004, i32 0, i32 0
  %RBP.i461 = bitcast %union.anon* %1005 to i64*
  %1006 = load i64, i64* %RBP.i461
  %1007 = sub i64 %1006, 8
  %1008 = load i64, i64* %PC.i459
  %1009 = add i64 %1008, 4
  store i64 %1009, i64* %PC.i459
  %1010 = inttoptr i64 %1007 to i64*
  %1011 = load i64, i64* %1010
  store i64 %1011, i64* %RAX.i460, align 8
  store %struct.Memory* %loadMem_4021e2, %struct.Memory** %MEMORY
  %loadMem_4021e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1012 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1013 = getelementptr inbounds %struct.GPR, %struct.GPR* %1012, i32 0, i32 33
  %1014 = getelementptr inbounds %struct.Reg, %struct.Reg* %1013, i32 0, i32 0
  %PC.i457 = bitcast %union.anon* %1014 to i64*
  %1015 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1016 = getelementptr inbounds %struct.GPR, %struct.GPR* %1015, i32 0, i32 1
  %1017 = getelementptr inbounds %struct.Reg, %struct.Reg* %1016, i32 0, i32 0
  %RAX.i458 = bitcast %union.anon* %1017 to i64*
  %1018 = load i64, i64* %RAX.i458
  %1019 = add i64 %1018, 80
  %1020 = load i64, i64* %PC.i457
  %1021 = add i64 %1020, 4
  store i64 %1021, i64* %PC.i457
  %1022 = inttoptr i64 %1019 to i32*
  %1023 = load i32, i32* %1022
  %1024 = sub i32 %1023, 7
  %1025 = icmp ult i32 %1023, 7
  %1026 = zext i1 %1025 to i8
  %1027 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1026, i8* %1027, align 1
  %1028 = and i32 %1024, 255
  %1029 = call i32 @llvm.ctpop.i32(i32 %1028)
  %1030 = trunc i32 %1029 to i8
  %1031 = and i8 %1030, 1
  %1032 = xor i8 %1031, 1
  %1033 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1032, i8* %1033, align 1
  %1034 = xor i32 %1023, 7
  %1035 = xor i32 %1034, %1024
  %1036 = lshr i32 %1035, 4
  %1037 = trunc i32 %1036 to i8
  %1038 = and i8 %1037, 1
  %1039 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1038, i8* %1039, align 1
  %1040 = icmp eq i32 %1024, 0
  %1041 = zext i1 %1040 to i8
  %1042 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1041, i8* %1042, align 1
  %1043 = lshr i32 %1024, 31
  %1044 = trunc i32 %1043 to i8
  %1045 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1044, i8* %1045, align 1
  %1046 = lshr i32 %1023, 31
  %1047 = xor i32 %1043, %1046
  %1048 = add i32 %1047, %1046
  %1049 = icmp eq i32 %1048, 2
  %1050 = zext i1 %1049 to i8
  %1051 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1050, i8* %1051, align 1
  store %struct.Memory* %loadMem_4021e6, %struct.Memory** %MEMORY
  %loadMem_4021ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %1052 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1053 = getelementptr inbounds %struct.GPR, %struct.GPR* %1052, i32 0, i32 33
  %1054 = getelementptr inbounds %struct.Reg, %struct.Reg* %1053, i32 0, i32 0
  %PC.i456 = bitcast %union.anon* %1054 to i64*
  %1055 = load i64, i64* %PC.i456
  %1056 = add i64 %1055, 37
  %1057 = load i64, i64* %PC.i456
  %1058 = add i64 %1057, 6
  %1059 = load i64, i64* %PC.i456
  %1060 = add i64 %1059, 6
  store i64 %1060, i64* %PC.i456
  %1061 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1062 = load i8, i8* %1061, align 1
  %1063 = icmp ne i8 %1062, 0
  %1064 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1065 = load i8, i8* %1064, align 1
  %1066 = icmp ne i8 %1065, 0
  %1067 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1068 = load i8, i8* %1067, align 1
  %1069 = icmp ne i8 %1068, 0
  %1070 = xor i1 %1066, %1069
  %1071 = or i1 %1063, %1070
  %1072 = zext i1 %1071 to i8
  store i8 %1072, i8* %BRANCH_TAKEN, align 1
  %1073 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1074 = select i1 %1071, i64 %1056, i64 %1058
  store i64 %1074, i64* %1073, align 8
  store %struct.Memory* %loadMem_4021ea, %struct.Memory** %MEMORY
  %loadBr_4021ea = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4021ea = icmp eq i8 %loadBr_4021ea, 1
  br i1 %cmpBr_4021ea, label %block_.L_40220f, label %block_4021f0

block_4021f0:                                     ; preds = %block_.L_4021e2
  %loadMem_4021f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1075 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1076 = getelementptr inbounds %struct.GPR, %struct.GPR* %1075, i32 0, i32 33
  %1077 = getelementptr inbounds %struct.Reg, %struct.Reg* %1076, i32 0, i32 0
  %PC.i453 = bitcast %union.anon* %1077 to i64*
  %1078 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1079 = getelementptr inbounds %struct.GPR, %struct.GPR* %1078, i32 0, i32 1
  %1080 = getelementptr inbounds %struct.Reg, %struct.Reg* %1079, i32 0, i32 0
  %RAX.i454 = bitcast %union.anon* %1080 to i64*
  %1081 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1082 = getelementptr inbounds %struct.GPR, %struct.GPR* %1081, i32 0, i32 15
  %1083 = getelementptr inbounds %struct.Reg, %struct.Reg* %1082, i32 0, i32 0
  %RBP.i455 = bitcast %union.anon* %1083 to i64*
  %1084 = load i64, i64* %RBP.i455
  %1085 = sub i64 %1084, 8
  %1086 = load i64, i64* %PC.i453
  %1087 = add i64 %1086, 4
  store i64 %1087, i64* %PC.i453
  %1088 = inttoptr i64 %1085 to i64*
  %1089 = load i64, i64* %1088
  store i64 %1089, i64* %RAX.i454, align 8
  store %struct.Memory* %loadMem_4021f0, %struct.Memory** %MEMORY
  %loadMem_4021f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1091 = getelementptr inbounds %struct.GPR, %struct.GPR* %1090, i32 0, i32 33
  %1092 = getelementptr inbounds %struct.Reg, %struct.Reg* %1091, i32 0, i32 0
  %PC.i450 = bitcast %union.anon* %1092 to i64*
  %1093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1094 = getelementptr inbounds %struct.GPR, %struct.GPR* %1093, i32 0, i32 1
  %1095 = getelementptr inbounds %struct.Reg, %struct.Reg* %1094, i32 0, i32 0
  %RAX.i451 = bitcast %union.anon* %1095 to i64*
  %1096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1097 = getelementptr inbounds %struct.GPR, %struct.GPR* %1096, i32 0, i32 5
  %1098 = getelementptr inbounds %struct.Reg, %struct.Reg* %1097, i32 0, i32 0
  %RCX.i452 = bitcast %union.anon* %1098 to i64*
  %1099 = load i64, i64* %RAX.i451
  %1100 = add i64 %1099, 80
  %1101 = load i64, i64* %PC.i450
  %1102 = add i64 %1101, 3
  store i64 %1102, i64* %PC.i450
  %1103 = inttoptr i64 %1100 to i32*
  %1104 = load i32, i32* %1103
  %1105 = zext i32 %1104 to i64
  store i64 %1105, i64* %RCX.i452, align 8
  store %struct.Memory* %loadMem_4021f4, %struct.Memory** %MEMORY
  %loadMem_4021f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1107 = getelementptr inbounds %struct.GPR, %struct.GPR* %1106, i32 0, i32 33
  %1108 = getelementptr inbounds %struct.Reg, %struct.Reg* %1107, i32 0, i32 0
  %PC.i448 = bitcast %union.anon* %1108 to i64*
  %1109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1110 = getelementptr inbounds %struct.GPR, %struct.GPR* %1109, i32 0, i32 5
  %1111 = getelementptr inbounds %struct.Reg, %struct.Reg* %1110, i32 0, i32 0
  %RCX.i449 = bitcast %union.anon* %1111 to i64*
  %1112 = load i64, i64* %RCX.i449
  %1113 = load i64, i64* %PC.i448
  %1114 = add i64 %1113, 3
  store i64 %1114, i64* %PC.i448
  %1115 = trunc i64 %1112 to i32
  %1116 = sub i32 %1115, 8
  %1117 = zext i32 %1116 to i64
  store i64 %1117, i64* %RCX.i449, align 8
  %1118 = icmp ult i32 %1115, 8
  %1119 = zext i1 %1118 to i8
  %1120 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1119, i8* %1120, align 1
  %1121 = and i32 %1116, 255
  %1122 = call i32 @llvm.ctpop.i32(i32 %1121)
  %1123 = trunc i32 %1122 to i8
  %1124 = and i8 %1123, 1
  %1125 = xor i8 %1124, 1
  %1126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1125, i8* %1126, align 1
  %1127 = xor i64 8, %1112
  %1128 = trunc i64 %1127 to i32
  %1129 = xor i32 %1128, %1116
  %1130 = lshr i32 %1129, 4
  %1131 = trunc i32 %1130 to i8
  %1132 = and i8 %1131, 1
  %1133 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1132, i8* %1133, align 1
  %1134 = icmp eq i32 %1116, 0
  %1135 = zext i1 %1134 to i8
  %1136 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1135, i8* %1136, align 1
  %1137 = lshr i32 %1116, 31
  %1138 = trunc i32 %1137 to i8
  %1139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1138, i8* %1139, align 1
  %1140 = lshr i32 %1115, 31
  %1141 = xor i32 %1137, %1140
  %1142 = add i32 %1141, %1140
  %1143 = icmp eq i32 %1142, 2
  %1144 = zext i1 %1143 to i8
  %1145 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1144, i8* %1145, align 1
  store %struct.Memory* %loadMem_4021f7, %struct.Memory** %MEMORY
  %loadMem_4021fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %1146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1147 = getelementptr inbounds %struct.GPR, %struct.GPR* %1146, i32 0, i32 33
  %1148 = getelementptr inbounds %struct.Reg, %struct.Reg* %1147, i32 0, i32 0
  %PC.i445 = bitcast %union.anon* %1148 to i64*
  %1149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1150 = getelementptr inbounds %struct.GPR, %struct.GPR* %1149, i32 0, i32 5
  %1151 = getelementptr inbounds %struct.Reg, %struct.Reg* %1150, i32 0, i32 0
  %ECX.i446 = bitcast %union.anon* %1151 to i32*
  %1152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1153 = getelementptr inbounds %struct.GPR, %struct.GPR* %1152, i32 0, i32 1
  %1154 = getelementptr inbounds %struct.Reg, %struct.Reg* %1153, i32 0, i32 0
  %RAX.i447 = bitcast %union.anon* %1154 to i64*
  %1155 = load i64, i64* %RAX.i447
  %1156 = add i64 %1155, 80
  %1157 = load i32, i32* %ECX.i446
  %1158 = zext i32 %1157 to i64
  %1159 = load i64, i64* %PC.i445
  %1160 = add i64 %1159, 3
  store i64 %1160, i64* %PC.i445
  %1161 = inttoptr i64 %1156 to i32*
  store i32 %1157, i32* %1161
  store %struct.Memory* %loadMem_4021fa, %struct.Memory** %MEMORY
  %loadMem_4021fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1163 = getelementptr inbounds %struct.GPR, %struct.GPR* %1162, i32 0, i32 33
  %1164 = getelementptr inbounds %struct.Reg, %struct.Reg* %1163, i32 0, i32 0
  %PC.i442 = bitcast %union.anon* %1164 to i64*
  %1165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1166 = getelementptr inbounds %struct.GPR, %struct.GPR* %1165, i32 0, i32 1
  %1167 = getelementptr inbounds %struct.Reg, %struct.Reg* %1166, i32 0, i32 0
  %RAX.i443 = bitcast %union.anon* %1167 to i64*
  %1168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1169 = getelementptr inbounds %struct.GPR, %struct.GPR* %1168, i32 0, i32 15
  %1170 = getelementptr inbounds %struct.Reg, %struct.Reg* %1169, i32 0, i32 0
  %RBP.i444 = bitcast %union.anon* %1170 to i64*
  %1171 = load i64, i64* %RBP.i444
  %1172 = sub i64 %1171, 8
  %1173 = load i64, i64* %PC.i442
  %1174 = add i64 %1173, 4
  store i64 %1174, i64* %PC.i442
  %1175 = inttoptr i64 %1172 to i64*
  %1176 = load i64, i64* %1175
  store i64 %1176, i64* %RAX.i443, align 8
  store %struct.Memory* %loadMem_4021fd, %struct.Memory** %MEMORY
  %loadMem_402201 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1178 = getelementptr inbounds %struct.GPR, %struct.GPR* %1177, i32 0, i32 33
  %1179 = getelementptr inbounds %struct.Reg, %struct.Reg* %1178, i32 0, i32 0
  %PC.i439 = bitcast %union.anon* %1179 to i64*
  %1180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1181 = getelementptr inbounds %struct.GPR, %struct.GPR* %1180, i32 0, i32 1
  %1182 = getelementptr inbounds %struct.Reg, %struct.Reg* %1181, i32 0, i32 0
  %RAX.i440 = bitcast %union.anon* %1182 to i64*
  %1183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1184 = getelementptr inbounds %struct.GPR, %struct.GPR* %1183, i32 0, i32 5
  %1185 = getelementptr inbounds %struct.Reg, %struct.Reg* %1184, i32 0, i32 0
  %RCX.i441 = bitcast %union.anon* %1185 to i64*
  %1186 = load i64, i64* %RAX.i440
  %1187 = add i64 %1186, 88
  %1188 = load i64, i64* %PC.i439
  %1189 = add i64 %1188, 3
  store i64 %1189, i64* %PC.i439
  %1190 = inttoptr i64 %1187 to i32*
  %1191 = load i32, i32* %1190
  %1192 = zext i32 %1191 to i64
  store i64 %1192, i64* %RCX.i441, align 8
  store %struct.Memory* %loadMem_402201, %struct.Memory** %MEMORY
  %loadMem_402204 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1194 = getelementptr inbounds %struct.GPR, %struct.GPR* %1193, i32 0, i32 33
  %1195 = getelementptr inbounds %struct.Reg, %struct.Reg* %1194, i32 0, i32 0
  %PC.i437 = bitcast %union.anon* %1195 to i64*
  %1196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1197 = getelementptr inbounds %struct.GPR, %struct.GPR* %1196, i32 0, i32 5
  %1198 = getelementptr inbounds %struct.Reg, %struct.Reg* %1197, i32 0, i32 0
  %RCX.i438 = bitcast %union.anon* %1198 to i64*
  %1199 = load i64, i64* %RCX.i438
  %1200 = load i64, i64* %PC.i437
  %1201 = add i64 %1200, 3
  store i64 %1201, i64* %PC.i437
  %1202 = trunc i64 %1199 to i32
  %1203 = add i32 1, %1202
  %1204 = zext i32 %1203 to i64
  store i64 %1204, i64* %RCX.i438, align 8
  %1205 = icmp ult i32 %1203, %1202
  %1206 = icmp ult i32 %1203, 1
  %1207 = or i1 %1205, %1206
  %1208 = zext i1 %1207 to i8
  %1209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1208, i8* %1209, align 1
  %1210 = and i32 %1203, 255
  %1211 = call i32 @llvm.ctpop.i32(i32 %1210)
  %1212 = trunc i32 %1211 to i8
  %1213 = and i8 %1212, 1
  %1214 = xor i8 %1213, 1
  %1215 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1214, i8* %1215, align 1
  %1216 = xor i64 1, %1199
  %1217 = trunc i64 %1216 to i32
  %1218 = xor i32 %1217, %1203
  %1219 = lshr i32 %1218, 4
  %1220 = trunc i32 %1219 to i8
  %1221 = and i8 %1220, 1
  %1222 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1221, i8* %1222, align 1
  %1223 = icmp eq i32 %1203, 0
  %1224 = zext i1 %1223 to i8
  %1225 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1224, i8* %1225, align 1
  %1226 = lshr i32 %1203, 31
  %1227 = trunc i32 %1226 to i8
  %1228 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1227, i8* %1228, align 1
  %1229 = lshr i32 %1202, 31
  %1230 = xor i32 %1226, %1229
  %1231 = add i32 %1230, %1226
  %1232 = icmp eq i32 %1231, 2
  %1233 = zext i1 %1232 to i8
  %1234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1233, i8* %1234, align 1
  store %struct.Memory* %loadMem_402204, %struct.Memory** %MEMORY
  %loadMem_402207 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1236 = getelementptr inbounds %struct.GPR, %struct.GPR* %1235, i32 0, i32 33
  %1237 = getelementptr inbounds %struct.Reg, %struct.Reg* %1236, i32 0, i32 0
  %PC.i434 = bitcast %union.anon* %1237 to i64*
  %1238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1239 = getelementptr inbounds %struct.GPR, %struct.GPR* %1238, i32 0, i32 5
  %1240 = getelementptr inbounds %struct.Reg, %struct.Reg* %1239, i32 0, i32 0
  %ECX.i435 = bitcast %union.anon* %1240 to i32*
  %1241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1242 = getelementptr inbounds %struct.GPR, %struct.GPR* %1241, i32 0, i32 1
  %1243 = getelementptr inbounds %struct.Reg, %struct.Reg* %1242, i32 0, i32 0
  %RAX.i436 = bitcast %union.anon* %1243 to i64*
  %1244 = load i64, i64* %RAX.i436
  %1245 = add i64 %1244, 88
  %1246 = load i32, i32* %ECX.i435
  %1247 = zext i32 %1246 to i64
  %1248 = load i64, i64* %PC.i434
  %1249 = add i64 %1248, 3
  store i64 %1249, i64* %PC.i434
  %1250 = inttoptr i64 %1245 to i32*
  store i32 %1246, i32* %1250
  store %struct.Memory* %loadMem_402207, %struct.Memory** %MEMORY
  %loadMem_40220a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1252 = getelementptr inbounds %struct.GPR, %struct.GPR* %1251, i32 0, i32 33
  %1253 = getelementptr inbounds %struct.Reg, %struct.Reg* %1252, i32 0, i32 0
  %PC.i433 = bitcast %union.anon* %1253 to i64*
  %1254 = load i64, i64* %PC.i433
  %1255 = add i64 %1254, -40
  %1256 = load i64, i64* %PC.i433
  %1257 = add i64 %1256, 5
  store i64 %1257, i64* %PC.i433
  %1258 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1255, i64* %1258, align 8
  store %struct.Memory* %loadMem_40220a, %struct.Memory** %MEMORY
  br label %block_.L_4021e2

block_.L_40220f:                                  ; preds = %block_.L_4021e2
  %loadMem_40220f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1260 = getelementptr inbounds %struct.GPR, %struct.GPR* %1259, i32 0, i32 33
  %1261 = getelementptr inbounds %struct.Reg, %struct.Reg* %1260, i32 0, i32 0
  %PC.i432 = bitcast %union.anon* %1261 to i64*
  %1262 = load i64, i64* %PC.i432
  %1263 = add i64 %1262, 5
  %1264 = load i64, i64* %PC.i432
  %1265 = add i64 %1264, 5
  store i64 %1265, i64* %PC.i432
  %1266 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1263, i64* %1266, align 8
  store %struct.Memory* %loadMem_40220f, %struct.Memory** %MEMORY
  br label %block_.L_402214

block_.L_402214:                                  ; preds = %block_.L_40220f, %block_40217f
  %loadMem_402214 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1268 = getelementptr inbounds %struct.GPR, %struct.GPR* %1267, i32 0, i32 33
  %1269 = getelementptr inbounds %struct.Reg, %struct.Reg* %1268, i32 0, i32 0
  %PC.i431 = bitcast %union.anon* %1269 to i64*
  %1270 = load i64, i64* %PC.i431
  %1271 = add i64 %1270, 5
  %1272 = load i64, i64* %PC.i431
  %1273 = add i64 %1272, 5
  store i64 %1273, i64* %PC.i431
  %1274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1271, i64* %1274, align 8
  store %struct.Memory* %loadMem_402214, %struct.Memory** %MEMORY
  br label %block_.L_402219

block_.L_402219:                                  ; preds = %block_.L_4022c6, %block_.L_402214
  %loadMem_402219 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1276 = getelementptr inbounds %struct.GPR, %struct.GPR* %1275, i32 0, i32 33
  %1277 = getelementptr inbounds %struct.Reg, %struct.Reg* %1276, i32 0, i32 0
  %PC.i428 = bitcast %union.anon* %1277 to i64*
  %1278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1279 = getelementptr inbounds %struct.GPR, %struct.GPR* %1278, i32 0, i32 1
  %1280 = getelementptr inbounds %struct.Reg, %struct.Reg* %1279, i32 0, i32 0
  %RAX.i429 = bitcast %union.anon* %1280 to i64*
  %1281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1282 = getelementptr inbounds %struct.GPR, %struct.GPR* %1281, i32 0, i32 15
  %1283 = getelementptr inbounds %struct.Reg, %struct.Reg* %1282, i32 0, i32 0
  %RBP.i430 = bitcast %union.anon* %1283 to i64*
  %1284 = load i64, i64* %RBP.i430
  %1285 = sub i64 %1284, 8
  %1286 = load i64, i64* %PC.i428
  %1287 = add i64 %1286, 4
  store i64 %1287, i64* %PC.i428
  %1288 = inttoptr i64 %1285 to i64*
  %1289 = load i64, i64* %1288
  store i64 %1289, i64* %RAX.i429, align 8
  store %struct.Memory* %loadMem_402219, %struct.Memory** %MEMORY
  %loadMem_40221d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1291 = getelementptr inbounds %struct.GPR, %struct.GPR* %1290, i32 0, i32 33
  %1292 = getelementptr inbounds %struct.Reg, %struct.Reg* %1291, i32 0, i32 0
  %PC.i426 = bitcast %union.anon* %1292 to i64*
  %1293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1294 = getelementptr inbounds %struct.GPR, %struct.GPR* %1293, i32 0, i32 1
  %1295 = getelementptr inbounds %struct.Reg, %struct.Reg* %1294, i32 0, i32 0
  %RAX.i427 = bitcast %union.anon* %1295 to i64*
  %1296 = load i64, i64* %RAX.i427
  %1297 = add i64 %1296, 16
  %1298 = load i64, i64* %PC.i426
  %1299 = add i64 %1298, 4
  store i64 %1299, i64* %PC.i426
  %1300 = inttoptr i64 %1297 to i32*
  %1301 = load i32, i32* %1300
  %1302 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1302, align 1
  %1303 = and i32 %1301, 255
  %1304 = call i32 @llvm.ctpop.i32(i32 %1303)
  %1305 = trunc i32 %1304 to i8
  %1306 = and i8 %1305, 1
  %1307 = xor i8 %1306, 1
  %1308 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1307, i8* %1308, align 1
  %1309 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1309, align 1
  %1310 = icmp eq i32 %1301, 0
  %1311 = zext i1 %1310 to i8
  %1312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1311, i8* %1312, align 1
  %1313 = lshr i32 %1301, 31
  %1314 = trunc i32 %1313 to i8
  %1315 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1314, i8* %1315, align 1
  %1316 = lshr i32 %1301, 31
  %1317 = xor i32 %1313, %1316
  %1318 = add i32 %1317, %1316
  %1319 = icmp eq i32 %1318, 2
  %1320 = zext i1 %1319 to i8
  %1321 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1320, i8* %1321, align 1
  store %struct.Memory* %loadMem_40221d, %struct.Memory** %MEMORY
  %loadMem_402221 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1322 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1323 = getelementptr inbounds %struct.GPR, %struct.GPR* %1322, i32 0, i32 33
  %1324 = getelementptr inbounds %struct.Reg, %struct.Reg* %1323, i32 0, i32 0
  %PC.i425 = bitcast %union.anon* %1324 to i64*
  %1325 = load i64, i64* %PC.i425
  %1326 = add i64 %1325, 170
  %1327 = load i64, i64* %PC.i425
  %1328 = add i64 %1327, 6
  %1329 = load i64, i64* %PC.i425
  %1330 = add i64 %1329, 6
  store i64 %1330, i64* %PC.i425
  %1331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1332 = load i8, i8* %1331, align 1
  %1333 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1334 = load i8, i8* %1333, align 1
  %1335 = or i8 %1334, %1332
  %1336 = icmp ne i8 %1335, 0
  %1337 = zext i1 %1336 to i8
  store i8 %1337, i8* %BRANCH_TAKEN, align 1
  %1338 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1339 = select i1 %1336, i64 %1326, i64 %1328
  store i64 %1339, i64* %1338, align 8
  store %struct.Memory* %loadMem_402221, %struct.Memory** %MEMORY
  %loadBr_402221 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_402221 = icmp eq i8 %loadBr_402221, 1
  br i1 %cmpBr_402221, label %block_.L_4022cb, label %block_402227

block_402227:                                     ; preds = %block_.L_402219
  %loadMem_402227 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1341 = getelementptr inbounds %struct.GPR, %struct.GPR* %1340, i32 0, i32 33
  %1342 = getelementptr inbounds %struct.Reg, %struct.Reg* %1341, i32 0, i32 0
  %PC.i422 = bitcast %union.anon* %1342 to i64*
  %1343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1344 = getelementptr inbounds %struct.GPR, %struct.GPR* %1343, i32 0, i32 1
  %1345 = getelementptr inbounds %struct.Reg, %struct.Reg* %1344, i32 0, i32 0
  %RAX.i423 = bitcast %union.anon* %1345 to i64*
  %1346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1347 = getelementptr inbounds %struct.GPR, %struct.GPR* %1346, i32 0, i32 15
  %1348 = getelementptr inbounds %struct.Reg, %struct.Reg* %1347, i32 0, i32 0
  %RBP.i424 = bitcast %union.anon* %1348 to i64*
  %1349 = load i64, i64* %RBP.i424
  %1350 = sub i64 %1349, 8
  %1351 = load i64, i64* %PC.i422
  %1352 = add i64 %1351, 4
  store i64 %1352, i64* %PC.i422
  %1353 = inttoptr i64 %1350 to i64*
  %1354 = load i64, i64* %1353
  store i64 %1354, i64* %RAX.i423, align 8
  store %struct.Memory* %loadMem_402227, %struct.Memory** %MEMORY
  %loadMem_40222b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1356 = getelementptr inbounds %struct.GPR, %struct.GPR* %1355, i32 0, i32 33
  %1357 = getelementptr inbounds %struct.Reg, %struct.Reg* %1356, i32 0, i32 0
  %PC.i419 = bitcast %union.anon* %1357 to i64*
  %1358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1359 = getelementptr inbounds %struct.GPR, %struct.GPR* %1358, i32 0, i32 1
  %1360 = getelementptr inbounds %struct.Reg, %struct.Reg* %1359, i32 0, i32 0
  %RAX.i420 = bitcast %union.anon* %1360 to i64*
  %1361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1362 = getelementptr inbounds %struct.GPR, %struct.GPR* %1361, i32 0, i32 5
  %1363 = getelementptr inbounds %struct.Reg, %struct.Reg* %1362, i32 0, i32 0
  %RCX.i421 = bitcast %union.anon* %1363 to i64*
  %1364 = load i64, i64* %RAX.i420
  %1365 = add i64 %1364, 16
  %1366 = load i64, i64* %PC.i419
  %1367 = add i64 %1366, 3
  store i64 %1367, i64* %PC.i419
  %1368 = inttoptr i64 %1365 to i32*
  %1369 = load i32, i32* %1368
  %1370 = zext i32 %1369 to i64
  store i64 %1370, i64* %RCX.i421, align 8
  store %struct.Memory* %loadMem_40222b, %struct.Memory** %MEMORY
  %loadMem_40222e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1372 = getelementptr inbounds %struct.GPR, %struct.GPR* %1371, i32 0, i32 33
  %1373 = getelementptr inbounds %struct.Reg, %struct.Reg* %1372, i32 0, i32 0
  %PC.i417 = bitcast %union.anon* %1373 to i64*
  %1374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1375 = getelementptr inbounds %struct.GPR, %struct.GPR* %1374, i32 0, i32 5
  %1376 = getelementptr inbounds %struct.Reg, %struct.Reg* %1375, i32 0, i32 0
  %RCX.i418 = bitcast %union.anon* %1376 to i64*
  %1377 = load i64, i64* %RCX.i418
  %1378 = load i64, i64* %PC.i417
  %1379 = add i64 %1378, 3
  store i64 %1379, i64* %PC.i417
  %1380 = trunc i64 %1377 to i32
  %1381 = add i32 -1, %1380
  %1382 = zext i32 %1381 to i64
  store i64 %1382, i64* %RCX.i418, align 8
  %1383 = icmp ult i32 %1381, %1380
  %1384 = icmp ult i32 %1381, -1
  %1385 = or i1 %1383, %1384
  %1386 = zext i1 %1385 to i8
  %1387 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1386, i8* %1387, align 1
  %1388 = and i32 %1381, 255
  %1389 = call i32 @llvm.ctpop.i32(i32 %1388)
  %1390 = trunc i32 %1389 to i8
  %1391 = and i8 %1390, 1
  %1392 = xor i8 %1391, 1
  %1393 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1392, i8* %1393, align 1
  %1394 = xor i64 -1, %1377
  %1395 = trunc i64 %1394 to i32
  %1396 = xor i32 %1395, %1381
  %1397 = lshr i32 %1396, 4
  %1398 = trunc i32 %1397 to i8
  %1399 = and i8 %1398, 1
  %1400 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1399, i8* %1400, align 1
  %1401 = icmp eq i32 %1381, 0
  %1402 = zext i1 %1401 to i8
  %1403 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1402, i8* %1403, align 1
  %1404 = lshr i32 %1381, 31
  %1405 = trunc i32 %1404 to i8
  %1406 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1405, i8* %1406, align 1
  %1407 = lshr i32 %1380, 31
  %1408 = xor i32 %1404, %1407
  %1409 = xor i32 %1404, 1
  %1410 = add i32 %1408, %1409
  %1411 = icmp eq i32 %1410, 2
  %1412 = zext i1 %1411 to i8
  %1413 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1412, i8* %1413, align 1
  store %struct.Memory* %loadMem_40222e, %struct.Memory** %MEMORY
  %loadMem_402231 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1415 = getelementptr inbounds %struct.GPR, %struct.GPR* %1414, i32 0, i32 33
  %1416 = getelementptr inbounds %struct.Reg, %struct.Reg* %1415, i32 0, i32 0
  %PC.i414 = bitcast %union.anon* %1416 to i64*
  %1417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1418 = getelementptr inbounds %struct.GPR, %struct.GPR* %1417, i32 0, i32 5
  %1419 = getelementptr inbounds %struct.Reg, %struct.Reg* %1418, i32 0, i32 0
  %ECX.i415 = bitcast %union.anon* %1419 to i32*
  %1420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1421 = getelementptr inbounds %struct.GPR, %struct.GPR* %1420, i32 0, i32 1
  %1422 = getelementptr inbounds %struct.Reg, %struct.Reg* %1421, i32 0, i32 0
  %RAX.i416 = bitcast %union.anon* %1422 to i64*
  %1423 = load i64, i64* %RAX.i416
  %1424 = add i64 %1423, 16
  %1425 = load i32, i32* %ECX.i415
  %1426 = zext i32 %1425 to i64
  %1427 = load i64, i64* %PC.i414
  %1428 = add i64 %1427, 3
  store i64 %1428, i64* %PC.i414
  %1429 = inttoptr i64 %1424 to i32*
  store i32 %1425, i32* %1429
  store %struct.Memory* %loadMem_402231, %struct.Memory** %MEMORY
  %loadMem_402234 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1430 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1431 = getelementptr inbounds %struct.GPR, %struct.GPR* %1430, i32 0, i32 33
  %1432 = getelementptr inbounds %struct.Reg, %struct.Reg* %1431, i32 0, i32 0
  %PC.i411 = bitcast %union.anon* %1432 to i64*
  %1433 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1434 = getelementptr inbounds %struct.GPR, %struct.GPR* %1433, i32 0, i32 1
  %1435 = getelementptr inbounds %struct.Reg, %struct.Reg* %1434, i32 0, i32 0
  %RAX.i412 = bitcast %union.anon* %1435 to i64*
  %1436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1437 = getelementptr inbounds %struct.GPR, %struct.GPR* %1436, i32 0, i32 15
  %1438 = getelementptr inbounds %struct.Reg, %struct.Reg* %1437, i32 0, i32 0
  %RBP.i413 = bitcast %union.anon* %1438 to i64*
  %1439 = load i64, i64* %RBP.i413
  %1440 = sub i64 %1439, 8
  %1441 = load i64, i64* %PC.i411
  %1442 = add i64 %1441, 4
  store i64 %1442, i64* %PC.i411
  %1443 = inttoptr i64 %1440 to i64*
  %1444 = load i64, i64* %1443
  store i64 %1444, i64* %RAX.i412, align 8
  store %struct.Memory* %loadMem_402234, %struct.Memory** %MEMORY
  %loadMem_402238 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1446 = getelementptr inbounds %struct.GPR, %struct.GPR* %1445, i32 0, i32 33
  %1447 = getelementptr inbounds %struct.Reg, %struct.Reg* %1446, i32 0, i32 0
  %PC.i408 = bitcast %union.anon* %1447 to i64*
  %1448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1449 = getelementptr inbounds %struct.GPR, %struct.GPR* %1448, i32 0, i32 1
  %1450 = getelementptr inbounds %struct.Reg, %struct.Reg* %1449, i32 0, i32 0
  %RAX.i409 = bitcast %union.anon* %1450 to i64*
  %1451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1452 = getelementptr inbounds %struct.GPR, %struct.GPR* %1451, i32 0, i32 5
  %1453 = getelementptr inbounds %struct.Reg, %struct.Reg* %1452, i32 0, i32 0
  %RCX.i410 = bitcast %union.anon* %1453 to i64*
  %1454 = load i64, i64* %RAX.i409
  %1455 = add i64 %1454, 8
  %1456 = load i64, i64* %PC.i408
  %1457 = add i64 %1456, 3
  store i64 %1457, i64* %PC.i408
  %1458 = inttoptr i64 %1455 to i32*
  %1459 = load i32, i32* %1458
  %1460 = zext i32 %1459 to i64
  store i64 %1460, i64* %RCX.i410, align 8
  store %struct.Memory* %loadMem_402238, %struct.Memory** %MEMORY
  %loadMem_40223b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1462 = getelementptr inbounds %struct.GPR, %struct.GPR* %1461, i32 0, i32 33
  %1463 = getelementptr inbounds %struct.Reg, %struct.Reg* %1462, i32 0, i32 0
  %PC.i406 = bitcast %union.anon* %1463 to i64*
  %1464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1465 = getelementptr inbounds %struct.GPR, %struct.GPR* %1464, i32 0, i32 5
  %1466 = getelementptr inbounds %struct.Reg, %struct.Reg* %1465, i32 0, i32 0
  %RCX.i407 = bitcast %union.anon* %1466 to i64*
  %1467 = load i64, i64* %RCX.i407
  %1468 = load i64, i64* %PC.i406
  %1469 = add i64 %1468, 2
  store i64 %1469, i64* %PC.i406
  %1470 = trunc i64 %1467 to i32
  %1471 = shl i32 %1470, 1
  %1472 = icmp slt i32 %1470, 0
  %1473 = icmp slt i32 %1471, 0
  %1474 = xor i1 %1472, %1473
  %1475 = zext i32 %1471 to i64
  store i64 %1475, i64* %RCX.i407, align 8
  %1476 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1477 = zext i1 %1472 to i8
  store i8 %1477, i8* %1476, align 1
  %1478 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1479 = and i32 %1471, 254
  %1480 = call i32 @llvm.ctpop.i32(i32 %1479)
  %1481 = trunc i32 %1480 to i8
  %1482 = and i8 %1481, 1
  %1483 = xor i8 %1482, 1
  store i8 %1483, i8* %1478, align 1
  %1484 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1484, align 1
  %1485 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1486 = icmp eq i32 %1471, 0
  %1487 = zext i1 %1486 to i8
  store i8 %1487, i8* %1485, align 1
  %1488 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1489 = lshr i32 %1471, 31
  %1490 = trunc i32 %1489 to i8
  store i8 %1490, i8* %1488, align 1
  %1491 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1492 = zext i1 %1474 to i8
  store i8 %1492, i8* %1491, align 1
  store %struct.Memory* %loadMem_40223b, %struct.Memory** %MEMORY
  %loadMem_40223e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1494 = getelementptr inbounds %struct.GPR, %struct.GPR* %1493, i32 0, i32 33
  %1495 = getelementptr inbounds %struct.Reg, %struct.Reg* %1494, i32 0, i32 0
  %PC.i403 = bitcast %union.anon* %1495 to i64*
  %1496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1497 = getelementptr inbounds %struct.GPR, %struct.GPR* %1496, i32 0, i32 5
  %1498 = getelementptr inbounds %struct.Reg, %struct.Reg* %1497, i32 0, i32 0
  %ECX.i404 = bitcast %union.anon* %1498 to i32*
  %1499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1500 = getelementptr inbounds %struct.GPR, %struct.GPR* %1499, i32 0, i32 1
  %1501 = getelementptr inbounds %struct.Reg, %struct.Reg* %1500, i32 0, i32 0
  %RAX.i405 = bitcast %union.anon* %1501 to i64*
  %1502 = load i64, i64* %RAX.i405
  %1503 = add i64 %1502, 8
  %1504 = load i32, i32* %ECX.i404
  %1505 = zext i32 %1504 to i64
  %1506 = load i64, i64* %PC.i403
  %1507 = add i64 %1506, 3
  store i64 %1507, i64* %PC.i403
  %1508 = inttoptr i64 %1503 to i32*
  store i32 %1504, i32* %1508
  store %struct.Memory* %loadMem_40223e, %struct.Memory** %MEMORY
  %loadMem_402241 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1510 = getelementptr inbounds %struct.GPR, %struct.GPR* %1509, i32 0, i32 33
  %1511 = getelementptr inbounds %struct.Reg, %struct.Reg* %1510, i32 0, i32 0
  %PC.i400 = bitcast %union.anon* %1511 to i64*
  %1512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1513 = getelementptr inbounds %struct.GPR, %struct.GPR* %1512, i32 0, i32 1
  %1514 = getelementptr inbounds %struct.Reg, %struct.Reg* %1513, i32 0, i32 0
  %RAX.i401 = bitcast %union.anon* %1514 to i64*
  %1515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1516 = getelementptr inbounds %struct.GPR, %struct.GPR* %1515, i32 0, i32 15
  %1517 = getelementptr inbounds %struct.Reg, %struct.Reg* %1516, i32 0, i32 0
  %RBP.i402 = bitcast %union.anon* %1517 to i64*
  %1518 = load i64, i64* %RBP.i402
  %1519 = sub i64 %1518, 8
  %1520 = load i64, i64* %PC.i400
  %1521 = add i64 %1520, 4
  store i64 %1521, i64* %PC.i400
  %1522 = inttoptr i64 %1519 to i64*
  %1523 = load i64, i64* %1522
  store i64 %1523, i64* %RAX.i401, align 8
  store %struct.Memory* %loadMem_402241, %struct.Memory** %MEMORY
  %loadMem_402245 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1525 = getelementptr inbounds %struct.GPR, %struct.GPR* %1524, i32 0, i32 33
  %1526 = getelementptr inbounds %struct.Reg, %struct.Reg* %1525, i32 0, i32 0
  %PC.i397 = bitcast %union.anon* %1526 to i64*
  %1527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1528 = getelementptr inbounds %struct.GPR, %struct.GPR* %1527, i32 0, i32 1
  %1529 = getelementptr inbounds %struct.Reg, %struct.Reg* %1528, i32 0, i32 0
  %RAX.i398 = bitcast %union.anon* %1529 to i64*
  %1530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1531 = getelementptr inbounds %struct.GPR, %struct.GPR* %1530, i32 0, i32 5
  %1532 = getelementptr inbounds %struct.Reg, %struct.Reg* %1531, i32 0, i32 0
  %RCX.i399 = bitcast %union.anon* %1532 to i64*
  %1533 = load i64, i64* %RAX.i398
  %1534 = add i64 %1533, 8
  %1535 = load i64, i64* %PC.i397
  %1536 = add i64 %1535, 3
  store i64 %1536, i64* %PC.i397
  %1537 = inttoptr i64 %1534 to i32*
  %1538 = load i32, i32* %1537
  %1539 = zext i32 %1538 to i64
  store i64 %1539, i64* %RCX.i399, align 8
  store %struct.Memory* %loadMem_402245, %struct.Memory** %MEMORY
  %loadMem_402248 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1541 = getelementptr inbounds %struct.GPR, %struct.GPR* %1540, i32 0, i32 33
  %1542 = getelementptr inbounds %struct.Reg, %struct.Reg* %1541, i32 0, i32 0
  %PC.i394 = bitcast %union.anon* %1542 to i64*
  %1543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1544 = getelementptr inbounds %struct.GPR, %struct.GPR* %1543, i32 0, i32 5
  %1545 = getelementptr inbounds %struct.Reg, %struct.Reg* %1544, i32 0, i32 0
  %ECX.i395 = bitcast %union.anon* %1545 to i32*
  %1546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1547 = getelementptr inbounds %struct.GPR, %struct.GPR* %1546, i32 0, i32 1
  %1548 = getelementptr inbounds %struct.Reg, %struct.Reg* %1547, i32 0, i32 0
  %RAX.i396 = bitcast %union.anon* %1548 to i64*
  %1549 = load i64, i64* %RAX.i396
  %1550 = add i64 %1549, 8
  %1551 = load i32, i32* %ECX.i395
  %1552 = zext i32 %1551 to i64
  %1553 = load i64, i64* %PC.i394
  %1554 = add i64 %1553, 3
  store i64 %1554, i64* %PC.i394
  %1555 = inttoptr i64 %1550 to i32*
  store i32 %1551, i32* %1555
  store %struct.Memory* %loadMem_402248, %struct.Memory** %MEMORY
  %loadMem_40224b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1557 = getelementptr inbounds %struct.GPR, %struct.GPR* %1556, i32 0, i32 33
  %1558 = getelementptr inbounds %struct.Reg, %struct.Reg* %1557, i32 0, i32 0
  %PC.i391 = bitcast %union.anon* %1558 to i64*
  %1559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1560 = getelementptr inbounds %struct.GPR, %struct.GPR* %1559, i32 0, i32 1
  %1561 = getelementptr inbounds %struct.Reg, %struct.Reg* %1560, i32 0, i32 0
  %RAX.i392 = bitcast %union.anon* %1561 to i64*
  %1562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1563 = getelementptr inbounds %struct.GPR, %struct.GPR* %1562, i32 0, i32 15
  %1564 = getelementptr inbounds %struct.Reg, %struct.Reg* %1563, i32 0, i32 0
  %RBP.i393 = bitcast %union.anon* %1564 to i64*
  %1565 = load i64, i64* %RBP.i393
  %1566 = sub i64 %1565, 8
  %1567 = load i64, i64* %PC.i391
  %1568 = add i64 %1567, 4
  store i64 %1568, i64* %PC.i391
  %1569 = inttoptr i64 %1566 to i64*
  %1570 = load i64, i64* %1569
  store i64 %1570, i64* %RAX.i392, align 8
  store %struct.Memory* %loadMem_40224b, %struct.Memory** %MEMORY
  %loadMem_40224f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1572 = getelementptr inbounds %struct.GPR, %struct.GPR* %1571, i32 0, i32 33
  %1573 = getelementptr inbounds %struct.Reg, %struct.Reg* %1572, i32 0, i32 0
  %PC.i388 = bitcast %union.anon* %1573 to i64*
  %1574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1575 = getelementptr inbounds %struct.GPR, %struct.GPR* %1574, i32 0, i32 1
  %1576 = getelementptr inbounds %struct.Reg, %struct.Reg* %1575, i32 0, i32 0
  %RAX.i389 = bitcast %union.anon* %1576 to i64*
  %1577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1578 = getelementptr inbounds %struct.GPR, %struct.GPR* %1577, i32 0, i32 5
  %1579 = getelementptr inbounds %struct.Reg, %struct.Reg* %1578, i32 0, i32 0
  %RCX.i390 = bitcast %union.anon* %1579 to i64*
  %1580 = load i64, i64* %RAX.i389
  %1581 = add i64 %1580, 12
  %1582 = load i64, i64* %PC.i388
  %1583 = add i64 %1582, 3
  store i64 %1583, i64* %PC.i388
  %1584 = inttoptr i64 %1581 to i32*
  %1585 = load i32, i32* %1584
  %1586 = zext i32 %1585 to i64
  store i64 %1586, i64* %RCX.i390, align 8
  store %struct.Memory* %loadMem_40224f, %struct.Memory** %MEMORY
  %loadMem_402252 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1587 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1588 = getelementptr inbounds %struct.GPR, %struct.GPR* %1587, i32 0, i32 33
  %1589 = getelementptr inbounds %struct.Reg, %struct.Reg* %1588, i32 0, i32 0
  %PC.i386 = bitcast %union.anon* %1589 to i64*
  %1590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1591 = getelementptr inbounds %struct.GPR, %struct.GPR* %1590, i32 0, i32 5
  %1592 = getelementptr inbounds %struct.Reg, %struct.Reg* %1591, i32 0, i32 0
  %RCX.i387 = bitcast %union.anon* %1592 to i64*
  %1593 = load i64, i64* %RCX.i387
  %1594 = load i64, i64* %PC.i386
  %1595 = add i64 %1594, 3
  store i64 %1595, i64* %PC.i386
  %1596 = trunc i64 %1593 to i32
  %1597 = add i32 -1, %1596
  %1598 = zext i32 %1597 to i64
  store i64 %1598, i64* %RCX.i387, align 8
  %1599 = icmp ult i32 %1597, %1596
  %1600 = icmp ult i32 %1597, -1
  %1601 = or i1 %1599, %1600
  %1602 = zext i1 %1601 to i8
  %1603 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1602, i8* %1603, align 1
  %1604 = and i32 %1597, 255
  %1605 = call i32 @llvm.ctpop.i32(i32 %1604)
  %1606 = trunc i32 %1605 to i8
  %1607 = and i8 %1606, 1
  %1608 = xor i8 %1607, 1
  %1609 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1608, i8* %1609, align 1
  %1610 = xor i64 -1, %1593
  %1611 = trunc i64 %1610 to i32
  %1612 = xor i32 %1611, %1597
  %1613 = lshr i32 %1612, 4
  %1614 = trunc i32 %1613 to i8
  %1615 = and i8 %1614, 1
  %1616 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1615, i8* %1616, align 1
  %1617 = icmp eq i32 %1597, 0
  %1618 = zext i1 %1617 to i8
  %1619 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1618, i8* %1619, align 1
  %1620 = lshr i32 %1597, 31
  %1621 = trunc i32 %1620 to i8
  %1622 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1621, i8* %1622, align 1
  %1623 = lshr i32 %1596, 31
  %1624 = xor i32 %1620, %1623
  %1625 = xor i32 %1620, 1
  %1626 = add i32 %1624, %1625
  %1627 = icmp eq i32 %1626, 2
  %1628 = zext i1 %1627 to i8
  %1629 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1628, i8* %1629, align 1
  store %struct.Memory* %loadMem_402252, %struct.Memory** %MEMORY
  %loadMem_402255 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1631 = getelementptr inbounds %struct.GPR, %struct.GPR* %1630, i32 0, i32 33
  %1632 = getelementptr inbounds %struct.Reg, %struct.Reg* %1631, i32 0, i32 0
  %PC.i383 = bitcast %union.anon* %1632 to i64*
  %1633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1634 = getelementptr inbounds %struct.GPR, %struct.GPR* %1633, i32 0, i32 5
  %1635 = getelementptr inbounds %struct.Reg, %struct.Reg* %1634, i32 0, i32 0
  %ECX.i384 = bitcast %union.anon* %1635 to i32*
  %1636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1637 = getelementptr inbounds %struct.GPR, %struct.GPR* %1636, i32 0, i32 1
  %1638 = getelementptr inbounds %struct.Reg, %struct.Reg* %1637, i32 0, i32 0
  %RAX.i385 = bitcast %union.anon* %1638 to i64*
  %1639 = load i64, i64* %RAX.i385
  %1640 = add i64 %1639, 12
  %1641 = load i32, i32* %ECX.i384
  %1642 = zext i32 %1641 to i64
  %1643 = load i64, i64* %PC.i383
  %1644 = add i64 %1643, 3
  store i64 %1644, i64* %PC.i383
  %1645 = inttoptr i64 %1640 to i32*
  store i32 %1641, i32* %1645
  store %struct.Memory* %loadMem_402255, %struct.Memory** %MEMORY
  %loadMem_402258 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1646 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1647 = getelementptr inbounds %struct.GPR, %struct.GPR* %1646, i32 0, i32 33
  %1648 = getelementptr inbounds %struct.Reg, %struct.Reg* %1647, i32 0, i32 0
  %PC.i381 = bitcast %union.anon* %1648 to i64*
  %1649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1650 = getelementptr inbounds %struct.GPR, %struct.GPR* %1649, i32 0, i32 5
  %1651 = getelementptr inbounds %struct.Reg, %struct.Reg* %1650, i32 0, i32 0
  %ECX.i382 = bitcast %union.anon* %1651 to i32*
  %1652 = load i32, i32* %ECX.i382
  %1653 = zext i32 %1652 to i64
  %1654 = load i64, i64* %PC.i381
  %1655 = add i64 %1654, 3
  store i64 %1655, i64* %PC.i381
  %1656 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1656, align 1
  %1657 = and i32 %1652, 255
  %1658 = call i32 @llvm.ctpop.i32(i32 %1657)
  %1659 = trunc i32 %1658 to i8
  %1660 = and i8 %1659, 1
  %1661 = xor i8 %1660, 1
  %1662 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1661, i8* %1662, align 1
  %1663 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1663, align 1
  %1664 = icmp eq i32 %1652, 0
  %1665 = zext i1 %1664 to i8
  %1666 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1665, i8* %1666, align 1
  %1667 = lshr i32 %1652, 31
  %1668 = trunc i32 %1667 to i8
  %1669 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1668, i8* %1669, align 1
  %1670 = lshr i32 %1652, 31
  %1671 = xor i32 %1667, %1670
  %1672 = add i32 %1671, %1670
  %1673 = icmp eq i32 %1672, 2
  %1674 = zext i1 %1673 to i8
  %1675 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1674, i8* %1675, align 1
  store %struct.Memory* %loadMem_402258, %struct.Memory** %MEMORY
  %loadMem_40225b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1676 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1677 = getelementptr inbounds %struct.GPR, %struct.GPR* %1676, i32 0, i32 33
  %1678 = getelementptr inbounds %struct.Reg, %struct.Reg* %1677, i32 0, i32 0
  %PC.i380 = bitcast %union.anon* %1678 to i64*
  %1679 = load i64, i64* %PC.i380
  %1680 = add i64 %1679, 107
  %1681 = load i64, i64* %PC.i380
  %1682 = add i64 %1681, 6
  %1683 = load i64, i64* %PC.i380
  %1684 = add i64 %1683, 6
  store i64 %1684, i64* %PC.i380
  %1685 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1686 = load i8, i8* %1685, align 1
  %1687 = icmp eq i8 %1686, 0
  %1688 = zext i1 %1687 to i8
  store i8 %1688, i8* %BRANCH_TAKEN, align 1
  %1689 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1690 = select i1 %1687, i64 %1680, i64 %1682
  store i64 %1690, i64* %1689, align 8
  store %struct.Memory* %loadMem_40225b, %struct.Memory** %MEMORY
  %loadBr_40225b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40225b = icmp eq i8 %loadBr_40225b, 1
  br i1 %cmpBr_40225b, label %block_.L_4022c6, label %block_402261

block_402261:                                     ; preds = %block_402227
  %loadMem_402261 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1692 = getelementptr inbounds %struct.GPR, %struct.GPR* %1691, i32 0, i32 33
  %1693 = getelementptr inbounds %struct.Reg, %struct.Reg* %1692, i32 0, i32 0
  %PC.i377 = bitcast %union.anon* %1693 to i64*
  %1694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1695 = getelementptr inbounds %struct.GPR, %struct.GPR* %1694, i32 0, i32 1
  %1696 = getelementptr inbounds %struct.Reg, %struct.Reg* %1695, i32 0, i32 0
  %RAX.i378 = bitcast %union.anon* %1696 to i64*
  %1697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1698 = getelementptr inbounds %struct.GPR, %struct.GPR* %1697, i32 0, i32 15
  %1699 = getelementptr inbounds %struct.Reg, %struct.Reg* %1698, i32 0, i32 0
  %RBP.i379 = bitcast %union.anon* %1699 to i64*
  %1700 = load i64, i64* %RBP.i379
  %1701 = sub i64 %1700, 8
  %1702 = load i64, i64* %PC.i377
  %1703 = add i64 %1702, 4
  store i64 %1703, i64* %PC.i377
  %1704 = inttoptr i64 %1701 to i64*
  %1705 = load i64, i64* %1704
  store i64 %1705, i64* %RAX.i378, align 8
  store %struct.Memory* %loadMem_402261, %struct.Memory** %MEMORY
  %loadMem_402265 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1707 = getelementptr inbounds %struct.GPR, %struct.GPR* %1706, i32 0, i32 33
  %1708 = getelementptr inbounds %struct.Reg, %struct.Reg* %1707, i32 0, i32 0
  %PC.i374 = bitcast %union.anon* %1708 to i64*
  %1709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1710 = getelementptr inbounds %struct.GPR, %struct.GPR* %1709, i32 0, i32 1
  %1711 = getelementptr inbounds %struct.Reg, %struct.Reg* %1710, i32 0, i32 0
  %RAX.i375 = bitcast %union.anon* %1711 to i64*
  %1712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1713 = getelementptr inbounds %struct.GPR, %struct.GPR* %1712, i32 0, i32 5
  %1714 = getelementptr inbounds %struct.Reg, %struct.Reg* %1713, i32 0, i32 0
  %RCX.i376 = bitcast %union.anon* %1714 to i64*
  %1715 = load i64, i64* %RAX.i375
  %1716 = add i64 %1715, 8
  %1717 = load i64, i64* %PC.i374
  %1718 = add i64 %1717, 3
  store i64 %1718, i64* %PC.i374
  %1719 = inttoptr i64 %1716 to i32*
  %1720 = load i32, i32* %1719
  %1721 = zext i32 %1720 to i64
  store i64 %1721, i64* %RCX.i376, align 8
  store %struct.Memory* %loadMem_402265, %struct.Memory** %MEMORY
  %loadMem_402268 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1722 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1723 = getelementptr inbounds %struct.GPR, %struct.GPR* %1722, i32 0, i32 33
  %1724 = getelementptr inbounds %struct.Reg, %struct.Reg* %1723, i32 0, i32 0
  %PC.i371 = bitcast %union.anon* %1724 to i64*
  %1725 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1726 = getelementptr inbounds %struct.GPR, %struct.GPR* %1725, i32 0, i32 5
  %1727 = getelementptr inbounds %struct.Reg, %struct.Reg* %1726, i32 0, i32 0
  %1728 = bitcast %union.anon* %1727 to %struct.anon.2*
  %CL.i372 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1728, i32 0, i32 0
  %1729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1730 = getelementptr inbounds %struct.GPR, %struct.GPR* %1729, i32 0, i32 7
  %1731 = getelementptr inbounds %struct.Reg, %struct.Reg* %1730, i32 0, i32 0
  %1732 = bitcast %union.anon* %1731 to %struct.anon.2*
  %DL.i373 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1732, i32 0, i32 0
  %1733 = load i8, i8* %CL.i372
  %1734 = zext i8 %1733 to i64
  %1735 = load i64, i64* %PC.i371
  %1736 = add i64 %1735, 2
  store i64 %1736, i64* %PC.i371
  store i8 %1733, i8* %DL.i373, align 1
  store %struct.Memory* %loadMem_402268, %struct.Memory** %MEMORY
  %loadMem_40226a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1737 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1738 = getelementptr inbounds %struct.GPR, %struct.GPR* %1737, i32 0, i32 33
  %1739 = getelementptr inbounds %struct.Reg, %struct.Reg* %1738, i32 0, i32 0
  %PC.i368 = bitcast %union.anon* %1739 to i64*
  %1740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1741 = getelementptr inbounds %struct.GPR, %struct.GPR* %1740, i32 0, i32 1
  %1742 = getelementptr inbounds %struct.Reg, %struct.Reg* %1741, i32 0, i32 0
  %RAX.i369 = bitcast %union.anon* %1742 to i64*
  %1743 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1744 = getelementptr inbounds %struct.GPR, %struct.GPR* %1743, i32 0, i32 15
  %1745 = getelementptr inbounds %struct.Reg, %struct.Reg* %1744, i32 0, i32 0
  %RBP.i370 = bitcast %union.anon* %1745 to i64*
  %1746 = load i64, i64* %RBP.i370
  %1747 = sub i64 %1746, 8
  %1748 = load i64, i64* %PC.i368
  %1749 = add i64 %1748, 4
  store i64 %1749, i64* %PC.i368
  %1750 = inttoptr i64 %1747 to i64*
  %1751 = load i64, i64* %1750
  store i64 %1751, i64* %RAX.i369, align 8
  store %struct.Memory* %loadMem_40226a, %struct.Memory** %MEMORY
  %loadMem_40226e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1753 = getelementptr inbounds %struct.GPR, %struct.GPR* %1752, i32 0, i32 33
  %1754 = getelementptr inbounds %struct.Reg, %struct.Reg* %1753, i32 0, i32 0
  %PC.i366 = bitcast %union.anon* %1754 to i64*
  %1755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1756 = getelementptr inbounds %struct.GPR, %struct.GPR* %1755, i32 0, i32 1
  %1757 = getelementptr inbounds %struct.Reg, %struct.Reg* %1756, i32 0, i32 0
  %RAX.i367 = bitcast %union.anon* %1757 to i64*
  %1758 = load i64, i64* %RAX.i367
  %1759 = add i64 %1758, 24
  %1760 = load i64, i64* %PC.i366
  %1761 = add i64 %1760, 4
  store i64 %1761, i64* %PC.i366
  %1762 = inttoptr i64 %1759 to i64*
  %1763 = load i64, i64* %1762
  store i64 %1763, i64* %RAX.i367, align 8
  store %struct.Memory* %loadMem_40226e, %struct.Memory** %MEMORY
  %loadMem_402272 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1764 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1765 = getelementptr inbounds %struct.GPR, %struct.GPR* %1764, i32 0, i32 33
  %1766 = getelementptr inbounds %struct.Reg, %struct.Reg* %1765, i32 0, i32 0
  %PC.i363 = bitcast %union.anon* %1766 to i64*
  %1767 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1768 = getelementptr inbounds %struct.GPR, %struct.GPR* %1767, i32 0, i32 9
  %1769 = getelementptr inbounds %struct.Reg, %struct.Reg* %1768, i32 0, i32 0
  %RSI.i364 = bitcast %union.anon* %1769 to i64*
  %1770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1771 = getelementptr inbounds %struct.GPR, %struct.GPR* %1770, i32 0, i32 15
  %1772 = getelementptr inbounds %struct.Reg, %struct.Reg* %1771, i32 0, i32 0
  %RBP.i365 = bitcast %union.anon* %1772 to i64*
  %1773 = load i64, i64* %RBP.i365
  %1774 = sub i64 %1773, 8
  %1775 = load i64, i64* %PC.i363
  %1776 = add i64 %1775, 4
  store i64 %1776, i64* %PC.i363
  %1777 = inttoptr i64 %1774 to i64*
  %1778 = load i64, i64* %1777
  store i64 %1778, i64* %RSI.i364, align 8
  store %struct.Memory* %loadMem_402272, %struct.Memory** %MEMORY
  %loadMem_402276 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1779 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1780 = getelementptr inbounds %struct.GPR, %struct.GPR* %1779, i32 0, i32 33
  %1781 = getelementptr inbounds %struct.Reg, %struct.Reg* %1780, i32 0, i32 0
  %PC.i361 = bitcast %union.anon* %1781 to i64*
  %1782 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1783 = getelementptr inbounds %struct.GPR, %struct.GPR* %1782, i32 0, i32 9
  %1784 = getelementptr inbounds %struct.Reg, %struct.Reg* %1783, i32 0, i32 0
  %RSI.i362 = bitcast %union.anon* %1784 to i64*
  %1785 = load i64, i64* %RSI.i362
  %1786 = add i64 %1785, 32
  %1787 = load i64, i64* %PC.i361
  %1788 = add i64 %1787, 4
  store i64 %1788, i64* %PC.i361
  %1789 = inttoptr i64 %1786 to i64*
  %1790 = load i64, i64* %1789
  store i64 %1790, i64* %RSI.i362, align 8
  store %struct.Memory* %loadMem_402276, %struct.Memory** %MEMORY
  %loadMem_40227a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1791 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1792 = getelementptr inbounds %struct.GPR, %struct.GPR* %1791, i32 0, i32 33
  %1793 = getelementptr inbounds %struct.Reg, %struct.Reg* %1792, i32 0, i32 0
  %PC.i358 = bitcast %union.anon* %1793 to i64*
  %1794 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1795 = getelementptr inbounds %struct.GPR, %struct.GPR* %1794, i32 0, i32 5
  %1796 = getelementptr inbounds %struct.Reg, %struct.Reg* %1795, i32 0, i32 0
  %RCX.i359 = bitcast %union.anon* %1796 to i64*
  %1797 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1798 = getelementptr inbounds %struct.GPR, %struct.GPR* %1797, i32 0, i32 9
  %1799 = getelementptr inbounds %struct.Reg, %struct.Reg* %1798, i32 0, i32 0
  %RSI.i360 = bitcast %union.anon* %1799 to i64*
  %1800 = load i64, i64* %RSI.i360
  %1801 = load i64, i64* %PC.i358
  %1802 = add i64 %1801, 2
  store i64 %1802, i64* %PC.i358
  %1803 = inttoptr i64 %1800 to i32*
  %1804 = load i32, i32* %1803
  %1805 = zext i32 %1804 to i64
  store i64 %1805, i64* %RCX.i359, align 8
  store %struct.Memory* %loadMem_40227a, %struct.Memory** %MEMORY
  %loadMem_40227c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1806 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1807 = getelementptr inbounds %struct.GPR, %struct.GPR* %1806, i32 0, i32 33
  %1808 = getelementptr inbounds %struct.Reg, %struct.Reg* %1807, i32 0, i32 0
  %PC.i355 = bitcast %union.anon* %1808 to i64*
  %1809 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1810 = getelementptr inbounds %struct.GPR, %struct.GPR* %1809, i32 0, i32 5
  %1811 = getelementptr inbounds %struct.Reg, %struct.Reg* %1810, i32 0, i32 0
  %ECX.i356 = bitcast %union.anon* %1811 to i32*
  %1812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1813 = getelementptr inbounds %struct.GPR, %struct.GPR* %1812, i32 0, i32 11
  %1814 = getelementptr inbounds %struct.Reg, %struct.Reg* %1813, i32 0, i32 0
  %RDI.i357 = bitcast %union.anon* %1814 to i64*
  %1815 = load i32, i32* %ECX.i356
  %1816 = zext i32 %1815 to i64
  %1817 = load i64, i64* %PC.i355
  %1818 = add i64 %1817, 2
  store i64 %1818, i64* %PC.i355
  %1819 = and i64 %1816, 4294967295
  store i64 %1819, i64* %RDI.i357, align 8
  store %struct.Memory* %loadMem_40227c, %struct.Memory** %MEMORY
  %loadMem_40227e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1821 = getelementptr inbounds %struct.GPR, %struct.GPR* %1820, i32 0, i32 33
  %1822 = getelementptr inbounds %struct.Reg, %struct.Reg* %1821, i32 0, i32 0
  %PC.i353 = bitcast %union.anon* %1822 to i64*
  %1823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1824 = getelementptr inbounds %struct.GPR, %struct.GPR* %1823, i32 0, i32 11
  %1825 = getelementptr inbounds %struct.Reg, %struct.Reg* %1824, i32 0, i32 0
  %RDI.i354 = bitcast %union.anon* %1825 to i64*
  %1826 = load i64, i64* %RDI.i354
  %1827 = load i64, i64* %PC.i353
  %1828 = add i64 %1827, 3
  store i64 %1828, i64* %PC.i353
  %1829 = trunc i64 %1826 to i32
  %1830 = add i32 1, %1829
  %1831 = zext i32 %1830 to i64
  store i64 %1831, i64* %RDI.i354, align 8
  %1832 = icmp ult i32 %1830, %1829
  %1833 = icmp ult i32 %1830, 1
  %1834 = or i1 %1832, %1833
  %1835 = zext i1 %1834 to i8
  %1836 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1835, i8* %1836, align 1
  %1837 = and i32 %1830, 255
  %1838 = call i32 @llvm.ctpop.i32(i32 %1837)
  %1839 = trunc i32 %1838 to i8
  %1840 = and i8 %1839, 1
  %1841 = xor i8 %1840, 1
  %1842 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1841, i8* %1842, align 1
  %1843 = xor i64 1, %1826
  %1844 = trunc i64 %1843 to i32
  %1845 = xor i32 %1844, %1830
  %1846 = lshr i32 %1845, 4
  %1847 = trunc i32 %1846 to i8
  %1848 = and i8 %1847, 1
  %1849 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1848, i8* %1849, align 1
  %1850 = icmp eq i32 %1830, 0
  %1851 = zext i1 %1850 to i8
  %1852 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1851, i8* %1852, align 1
  %1853 = lshr i32 %1830, 31
  %1854 = trunc i32 %1853 to i8
  %1855 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1854, i8* %1855, align 1
  %1856 = lshr i32 %1829, 31
  %1857 = xor i32 %1853, %1856
  %1858 = add i32 %1857, %1853
  %1859 = icmp eq i32 %1858, 2
  %1860 = zext i1 %1859 to i8
  %1861 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1860, i8* %1861, align 1
  store %struct.Memory* %loadMem_40227e, %struct.Memory** %MEMORY
  %loadMem_402281 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1862 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1863 = getelementptr inbounds %struct.GPR, %struct.GPR* %1862, i32 0, i32 33
  %1864 = getelementptr inbounds %struct.Reg, %struct.Reg* %1863, i32 0, i32 0
  %PC.i350 = bitcast %union.anon* %1864 to i64*
  %1865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1866 = getelementptr inbounds %struct.GPR, %struct.GPR* %1865, i32 0, i32 11
  %1867 = getelementptr inbounds %struct.Reg, %struct.Reg* %1866, i32 0, i32 0
  %EDI.i351 = bitcast %union.anon* %1867 to i32*
  %1868 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1869 = getelementptr inbounds %struct.GPR, %struct.GPR* %1868, i32 0, i32 9
  %1870 = getelementptr inbounds %struct.Reg, %struct.Reg* %1869, i32 0, i32 0
  %RSI.i352 = bitcast %union.anon* %1870 to i64*
  %1871 = load i64, i64* %RSI.i352
  %1872 = load i32, i32* %EDI.i351
  %1873 = zext i32 %1872 to i64
  %1874 = load i64, i64* %PC.i350
  %1875 = add i64 %1874, 2
  store i64 %1875, i64* %PC.i350
  %1876 = inttoptr i64 %1871 to i32*
  store i32 %1872, i32* %1876
  store %struct.Memory* %loadMem_402281, %struct.Memory** %MEMORY
  %loadMem_402283 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1878 = getelementptr inbounds %struct.GPR, %struct.GPR* %1877, i32 0, i32 33
  %1879 = getelementptr inbounds %struct.Reg, %struct.Reg* %1878, i32 0, i32 0
  %PC.i347 = bitcast %union.anon* %1879 to i64*
  %1880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1881 = getelementptr inbounds %struct.GPR, %struct.GPR* %1880, i32 0, i32 5
  %1882 = getelementptr inbounds %struct.Reg, %struct.Reg* %1881, i32 0, i32 0
  %ECX.i348 = bitcast %union.anon* %1882 to i32*
  %1883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1884 = getelementptr inbounds %struct.GPR, %struct.GPR* %1883, i32 0, i32 9
  %1885 = getelementptr inbounds %struct.Reg, %struct.Reg* %1884, i32 0, i32 0
  %RSI.i349 = bitcast %union.anon* %1885 to i64*
  %1886 = load i32, i32* %ECX.i348
  %1887 = zext i32 %1886 to i64
  %1888 = load i64, i64* %PC.i347
  %1889 = add i64 %1888, 3
  store i64 %1889, i64* %PC.i347
  %1890 = shl i64 %1887, 32
  %1891 = ashr exact i64 %1890, 32
  store i64 %1891, i64* %RSI.i349, align 8
  store %struct.Memory* %loadMem_402283, %struct.Memory** %MEMORY
  %loadMem_402286 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1893 = getelementptr inbounds %struct.GPR, %struct.GPR* %1892, i32 0, i32 33
  %1894 = getelementptr inbounds %struct.Reg, %struct.Reg* %1893, i32 0, i32 0
  %PC.i343 = bitcast %union.anon* %1894 to i64*
  %1895 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1896 = getelementptr inbounds %struct.GPR, %struct.GPR* %1895, i32 0, i32 7
  %1897 = getelementptr inbounds %struct.Reg, %struct.Reg* %1896, i32 0, i32 0
  %1898 = bitcast %union.anon* %1897 to %struct.anon.2*
  %DL.i344 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1898, i32 0, i32 0
  %1899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1900 = getelementptr inbounds %struct.GPR, %struct.GPR* %1899, i32 0, i32 1
  %1901 = getelementptr inbounds %struct.Reg, %struct.Reg* %1900, i32 0, i32 0
  %RAX.i345 = bitcast %union.anon* %1901 to i64*
  %1902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1903 = getelementptr inbounds %struct.GPR, %struct.GPR* %1902, i32 0, i32 9
  %1904 = getelementptr inbounds %struct.Reg, %struct.Reg* %1903, i32 0, i32 0
  %RSI.i346 = bitcast %union.anon* %1904 to i64*
  %1905 = load i64, i64* %RAX.i345
  %1906 = load i64, i64* %RSI.i346
  %1907 = add i64 %1906, %1905
  %1908 = load i8, i8* %DL.i344
  %1909 = zext i8 %1908 to i64
  %1910 = load i64, i64* %PC.i343
  %1911 = add i64 %1910, 3
  store i64 %1911, i64* %PC.i343
  %1912 = inttoptr i64 %1907 to i8*
  store i8 %1908, i8* %1912
  store %struct.Memory* %loadMem_402286, %struct.Memory** %MEMORY
  %loadMem_402289 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1914 = getelementptr inbounds %struct.GPR, %struct.GPR* %1913, i32 0, i32 33
  %1915 = getelementptr inbounds %struct.Reg, %struct.Reg* %1914, i32 0, i32 0
  %PC.i340 = bitcast %union.anon* %1915 to i64*
  %1916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1917 = getelementptr inbounds %struct.GPR, %struct.GPR* %1916, i32 0, i32 1
  %1918 = getelementptr inbounds %struct.Reg, %struct.Reg* %1917, i32 0, i32 0
  %RAX.i341 = bitcast %union.anon* %1918 to i64*
  %1919 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1920 = getelementptr inbounds %struct.GPR, %struct.GPR* %1919, i32 0, i32 15
  %1921 = getelementptr inbounds %struct.Reg, %struct.Reg* %1920, i32 0, i32 0
  %RBP.i342 = bitcast %union.anon* %1921 to i64*
  %1922 = load i64, i64* %RBP.i342
  %1923 = sub i64 %1922, 8
  %1924 = load i64, i64* %PC.i340
  %1925 = add i64 %1924, 4
  store i64 %1925, i64* %PC.i340
  %1926 = inttoptr i64 %1923 to i64*
  %1927 = load i64, i64* %1926
  store i64 %1927, i64* %RAX.i341, align 8
  store %struct.Memory* %loadMem_402289, %struct.Memory** %MEMORY
  %loadMem_40228d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1928 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1929 = getelementptr inbounds %struct.GPR, %struct.GPR* %1928, i32 0, i32 33
  %1930 = getelementptr inbounds %struct.Reg, %struct.Reg* %1929, i32 0, i32 0
  %PC.i338 = bitcast %union.anon* %1930 to i64*
  %1931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1932 = getelementptr inbounds %struct.GPR, %struct.GPR* %1931, i32 0, i32 1
  %1933 = getelementptr inbounds %struct.Reg, %struct.Reg* %1932, i32 0, i32 0
  %RAX.i339 = bitcast %union.anon* %1933 to i64*
  %1934 = load i64, i64* %RAX.i339
  %1935 = add i64 %1934, 12
  %1936 = load i64, i64* %PC.i338
  %1937 = add i64 %1936, 7
  store i64 %1937, i64* %PC.i338
  %1938 = inttoptr i64 %1935 to i32*
  store i32 8, i32* %1938
  store %struct.Memory* %loadMem_40228d, %struct.Memory** %MEMORY
  br label %block_.L_402294

block_.L_402294:                                  ; preds = %block_4022a2, %block_402261
  %loadMem_402294 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1939 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1940 = getelementptr inbounds %struct.GPR, %struct.GPR* %1939, i32 0, i32 33
  %1941 = getelementptr inbounds %struct.Reg, %struct.Reg* %1940, i32 0, i32 0
  %PC.i335 = bitcast %union.anon* %1941 to i64*
  %1942 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1943 = getelementptr inbounds %struct.GPR, %struct.GPR* %1942, i32 0, i32 1
  %1944 = getelementptr inbounds %struct.Reg, %struct.Reg* %1943, i32 0, i32 0
  %RAX.i336 = bitcast %union.anon* %1944 to i64*
  %1945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1946 = getelementptr inbounds %struct.GPR, %struct.GPR* %1945, i32 0, i32 15
  %1947 = getelementptr inbounds %struct.Reg, %struct.Reg* %1946, i32 0, i32 0
  %RBP.i337 = bitcast %union.anon* %1947 to i64*
  %1948 = load i64, i64* %RBP.i337
  %1949 = sub i64 %1948, 8
  %1950 = load i64, i64* %PC.i335
  %1951 = add i64 %1950, 4
  store i64 %1951, i64* %PC.i335
  %1952 = inttoptr i64 %1949 to i64*
  %1953 = load i64, i64* %1952
  store i64 %1953, i64* %RAX.i336, align 8
  store %struct.Memory* %loadMem_402294, %struct.Memory** %MEMORY
  %loadMem_402298 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1955 = getelementptr inbounds %struct.GPR, %struct.GPR* %1954, i32 0, i32 33
  %1956 = getelementptr inbounds %struct.Reg, %struct.Reg* %1955, i32 0, i32 0
  %PC.i333 = bitcast %union.anon* %1956 to i64*
  %1957 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1958 = getelementptr inbounds %struct.GPR, %struct.GPR* %1957, i32 0, i32 1
  %1959 = getelementptr inbounds %struct.Reg, %struct.Reg* %1958, i32 0, i32 0
  %RAX.i334 = bitcast %union.anon* %1959 to i64*
  %1960 = load i64, i64* %RAX.i334
  %1961 = add i64 %1960, 80
  %1962 = load i64, i64* %PC.i333
  %1963 = add i64 %1962, 4
  store i64 %1963, i64* %PC.i333
  %1964 = inttoptr i64 %1961 to i32*
  %1965 = load i32, i32* %1964
  %1966 = sub i32 %1965, 7
  %1967 = icmp ult i32 %1965, 7
  %1968 = zext i1 %1967 to i8
  %1969 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1968, i8* %1969, align 1
  %1970 = and i32 %1966, 255
  %1971 = call i32 @llvm.ctpop.i32(i32 %1970)
  %1972 = trunc i32 %1971 to i8
  %1973 = and i8 %1972, 1
  %1974 = xor i8 %1973, 1
  %1975 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1974, i8* %1975, align 1
  %1976 = xor i32 %1965, 7
  %1977 = xor i32 %1976, %1966
  %1978 = lshr i32 %1977, 4
  %1979 = trunc i32 %1978 to i8
  %1980 = and i8 %1979, 1
  %1981 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1980, i8* %1981, align 1
  %1982 = icmp eq i32 %1966, 0
  %1983 = zext i1 %1982 to i8
  %1984 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1983, i8* %1984, align 1
  %1985 = lshr i32 %1966, 31
  %1986 = trunc i32 %1985 to i8
  %1987 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1986, i8* %1987, align 1
  %1988 = lshr i32 %1965, 31
  %1989 = xor i32 %1985, %1988
  %1990 = add i32 %1989, %1988
  %1991 = icmp eq i32 %1990, 2
  %1992 = zext i1 %1991 to i8
  %1993 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1992, i8* %1993, align 1
  store %struct.Memory* %loadMem_402298, %struct.Memory** %MEMORY
  %loadMem_40229c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1995 = getelementptr inbounds %struct.GPR, %struct.GPR* %1994, i32 0, i32 33
  %1996 = getelementptr inbounds %struct.Reg, %struct.Reg* %1995, i32 0, i32 0
  %PC.i332 = bitcast %union.anon* %1996 to i64*
  %1997 = load i64, i64* %PC.i332
  %1998 = add i64 %1997, 37
  %1999 = load i64, i64* %PC.i332
  %2000 = add i64 %1999, 6
  %2001 = load i64, i64* %PC.i332
  %2002 = add i64 %2001, 6
  store i64 %2002, i64* %PC.i332
  %2003 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2004 = load i8, i8* %2003, align 1
  %2005 = icmp ne i8 %2004, 0
  %2006 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2007 = load i8, i8* %2006, align 1
  %2008 = icmp ne i8 %2007, 0
  %2009 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2010 = load i8, i8* %2009, align 1
  %2011 = icmp ne i8 %2010, 0
  %2012 = xor i1 %2008, %2011
  %2013 = or i1 %2005, %2012
  %2014 = zext i1 %2013 to i8
  store i8 %2014, i8* %BRANCH_TAKEN, align 1
  %2015 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2016 = select i1 %2013, i64 %1998, i64 %2000
  store i64 %2016, i64* %2015, align 8
  store %struct.Memory* %loadMem_40229c, %struct.Memory** %MEMORY
  %loadBr_40229c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40229c = icmp eq i8 %loadBr_40229c, 1
  br i1 %cmpBr_40229c, label %block_.L_4022c1, label %block_4022a2

block_4022a2:                                     ; preds = %block_.L_402294
  %loadMem_4022a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2017 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2018 = getelementptr inbounds %struct.GPR, %struct.GPR* %2017, i32 0, i32 33
  %2019 = getelementptr inbounds %struct.Reg, %struct.Reg* %2018, i32 0, i32 0
  %PC.i329 = bitcast %union.anon* %2019 to i64*
  %2020 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2021 = getelementptr inbounds %struct.GPR, %struct.GPR* %2020, i32 0, i32 1
  %2022 = getelementptr inbounds %struct.Reg, %struct.Reg* %2021, i32 0, i32 0
  %RAX.i330 = bitcast %union.anon* %2022 to i64*
  %2023 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2024 = getelementptr inbounds %struct.GPR, %struct.GPR* %2023, i32 0, i32 15
  %2025 = getelementptr inbounds %struct.Reg, %struct.Reg* %2024, i32 0, i32 0
  %RBP.i331 = bitcast %union.anon* %2025 to i64*
  %2026 = load i64, i64* %RBP.i331
  %2027 = sub i64 %2026, 8
  %2028 = load i64, i64* %PC.i329
  %2029 = add i64 %2028, 4
  store i64 %2029, i64* %PC.i329
  %2030 = inttoptr i64 %2027 to i64*
  %2031 = load i64, i64* %2030
  store i64 %2031, i64* %RAX.i330, align 8
  store %struct.Memory* %loadMem_4022a2, %struct.Memory** %MEMORY
  %loadMem_4022a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2033 = getelementptr inbounds %struct.GPR, %struct.GPR* %2032, i32 0, i32 33
  %2034 = getelementptr inbounds %struct.Reg, %struct.Reg* %2033, i32 0, i32 0
  %PC.i326 = bitcast %union.anon* %2034 to i64*
  %2035 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2036 = getelementptr inbounds %struct.GPR, %struct.GPR* %2035, i32 0, i32 1
  %2037 = getelementptr inbounds %struct.Reg, %struct.Reg* %2036, i32 0, i32 0
  %RAX.i327 = bitcast %union.anon* %2037 to i64*
  %2038 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2039 = getelementptr inbounds %struct.GPR, %struct.GPR* %2038, i32 0, i32 5
  %2040 = getelementptr inbounds %struct.Reg, %struct.Reg* %2039, i32 0, i32 0
  %RCX.i328 = bitcast %union.anon* %2040 to i64*
  %2041 = load i64, i64* %RAX.i327
  %2042 = add i64 %2041, 80
  %2043 = load i64, i64* %PC.i326
  %2044 = add i64 %2043, 3
  store i64 %2044, i64* %PC.i326
  %2045 = inttoptr i64 %2042 to i32*
  %2046 = load i32, i32* %2045
  %2047 = zext i32 %2046 to i64
  store i64 %2047, i64* %RCX.i328, align 8
  store %struct.Memory* %loadMem_4022a6, %struct.Memory** %MEMORY
  %loadMem_4022a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2048 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2049 = getelementptr inbounds %struct.GPR, %struct.GPR* %2048, i32 0, i32 33
  %2050 = getelementptr inbounds %struct.Reg, %struct.Reg* %2049, i32 0, i32 0
  %PC.i324 = bitcast %union.anon* %2050 to i64*
  %2051 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2052 = getelementptr inbounds %struct.GPR, %struct.GPR* %2051, i32 0, i32 5
  %2053 = getelementptr inbounds %struct.Reg, %struct.Reg* %2052, i32 0, i32 0
  %RCX.i325 = bitcast %union.anon* %2053 to i64*
  %2054 = load i64, i64* %RCX.i325
  %2055 = load i64, i64* %PC.i324
  %2056 = add i64 %2055, 3
  store i64 %2056, i64* %PC.i324
  %2057 = trunc i64 %2054 to i32
  %2058 = sub i32 %2057, 8
  %2059 = zext i32 %2058 to i64
  store i64 %2059, i64* %RCX.i325, align 8
  %2060 = icmp ult i32 %2057, 8
  %2061 = zext i1 %2060 to i8
  %2062 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2061, i8* %2062, align 1
  %2063 = and i32 %2058, 255
  %2064 = call i32 @llvm.ctpop.i32(i32 %2063)
  %2065 = trunc i32 %2064 to i8
  %2066 = and i8 %2065, 1
  %2067 = xor i8 %2066, 1
  %2068 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2067, i8* %2068, align 1
  %2069 = xor i64 8, %2054
  %2070 = trunc i64 %2069 to i32
  %2071 = xor i32 %2070, %2058
  %2072 = lshr i32 %2071, 4
  %2073 = trunc i32 %2072 to i8
  %2074 = and i8 %2073, 1
  %2075 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2074, i8* %2075, align 1
  %2076 = icmp eq i32 %2058, 0
  %2077 = zext i1 %2076 to i8
  %2078 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2077, i8* %2078, align 1
  %2079 = lshr i32 %2058, 31
  %2080 = trunc i32 %2079 to i8
  %2081 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2080, i8* %2081, align 1
  %2082 = lshr i32 %2057, 31
  %2083 = xor i32 %2079, %2082
  %2084 = add i32 %2083, %2082
  %2085 = icmp eq i32 %2084, 2
  %2086 = zext i1 %2085 to i8
  %2087 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2086, i8* %2087, align 1
  store %struct.Memory* %loadMem_4022a9, %struct.Memory** %MEMORY
  %loadMem_4022ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %2088 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2089 = getelementptr inbounds %struct.GPR, %struct.GPR* %2088, i32 0, i32 33
  %2090 = getelementptr inbounds %struct.Reg, %struct.Reg* %2089, i32 0, i32 0
  %PC.i321 = bitcast %union.anon* %2090 to i64*
  %2091 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2092 = getelementptr inbounds %struct.GPR, %struct.GPR* %2091, i32 0, i32 5
  %2093 = getelementptr inbounds %struct.Reg, %struct.Reg* %2092, i32 0, i32 0
  %ECX.i322 = bitcast %union.anon* %2093 to i32*
  %2094 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2095 = getelementptr inbounds %struct.GPR, %struct.GPR* %2094, i32 0, i32 1
  %2096 = getelementptr inbounds %struct.Reg, %struct.Reg* %2095, i32 0, i32 0
  %RAX.i323 = bitcast %union.anon* %2096 to i64*
  %2097 = load i64, i64* %RAX.i323
  %2098 = add i64 %2097, 80
  %2099 = load i32, i32* %ECX.i322
  %2100 = zext i32 %2099 to i64
  %2101 = load i64, i64* %PC.i321
  %2102 = add i64 %2101, 3
  store i64 %2102, i64* %PC.i321
  %2103 = inttoptr i64 %2098 to i32*
  store i32 %2099, i32* %2103
  store %struct.Memory* %loadMem_4022ac, %struct.Memory** %MEMORY
  %loadMem_4022af = load %struct.Memory*, %struct.Memory** %MEMORY
  %2104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2105 = getelementptr inbounds %struct.GPR, %struct.GPR* %2104, i32 0, i32 33
  %2106 = getelementptr inbounds %struct.Reg, %struct.Reg* %2105, i32 0, i32 0
  %PC.i318 = bitcast %union.anon* %2106 to i64*
  %2107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2108 = getelementptr inbounds %struct.GPR, %struct.GPR* %2107, i32 0, i32 1
  %2109 = getelementptr inbounds %struct.Reg, %struct.Reg* %2108, i32 0, i32 0
  %RAX.i319 = bitcast %union.anon* %2109 to i64*
  %2110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2111 = getelementptr inbounds %struct.GPR, %struct.GPR* %2110, i32 0, i32 15
  %2112 = getelementptr inbounds %struct.Reg, %struct.Reg* %2111, i32 0, i32 0
  %RBP.i320 = bitcast %union.anon* %2112 to i64*
  %2113 = load i64, i64* %RBP.i320
  %2114 = sub i64 %2113, 8
  %2115 = load i64, i64* %PC.i318
  %2116 = add i64 %2115, 4
  store i64 %2116, i64* %PC.i318
  %2117 = inttoptr i64 %2114 to i64*
  %2118 = load i64, i64* %2117
  store i64 %2118, i64* %RAX.i319, align 8
  store %struct.Memory* %loadMem_4022af, %struct.Memory** %MEMORY
  %loadMem_4022b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2120 = getelementptr inbounds %struct.GPR, %struct.GPR* %2119, i32 0, i32 33
  %2121 = getelementptr inbounds %struct.Reg, %struct.Reg* %2120, i32 0, i32 0
  %PC.i315 = bitcast %union.anon* %2121 to i64*
  %2122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2123 = getelementptr inbounds %struct.GPR, %struct.GPR* %2122, i32 0, i32 1
  %2124 = getelementptr inbounds %struct.Reg, %struct.Reg* %2123, i32 0, i32 0
  %RAX.i316 = bitcast %union.anon* %2124 to i64*
  %2125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2126 = getelementptr inbounds %struct.GPR, %struct.GPR* %2125, i32 0, i32 5
  %2127 = getelementptr inbounds %struct.Reg, %struct.Reg* %2126, i32 0, i32 0
  %RCX.i317 = bitcast %union.anon* %2127 to i64*
  %2128 = load i64, i64* %RAX.i316
  %2129 = add i64 %2128, 88
  %2130 = load i64, i64* %PC.i315
  %2131 = add i64 %2130, 3
  store i64 %2131, i64* %PC.i315
  %2132 = inttoptr i64 %2129 to i32*
  %2133 = load i32, i32* %2132
  %2134 = zext i32 %2133 to i64
  store i64 %2134, i64* %RCX.i317, align 8
  store %struct.Memory* %loadMem_4022b3, %struct.Memory** %MEMORY
  %loadMem_4022b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2136 = getelementptr inbounds %struct.GPR, %struct.GPR* %2135, i32 0, i32 33
  %2137 = getelementptr inbounds %struct.Reg, %struct.Reg* %2136, i32 0, i32 0
  %PC.i313 = bitcast %union.anon* %2137 to i64*
  %2138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2139 = getelementptr inbounds %struct.GPR, %struct.GPR* %2138, i32 0, i32 5
  %2140 = getelementptr inbounds %struct.Reg, %struct.Reg* %2139, i32 0, i32 0
  %RCX.i314 = bitcast %union.anon* %2140 to i64*
  %2141 = load i64, i64* %RCX.i314
  %2142 = load i64, i64* %PC.i313
  %2143 = add i64 %2142, 3
  store i64 %2143, i64* %PC.i313
  %2144 = trunc i64 %2141 to i32
  %2145 = add i32 1, %2144
  %2146 = zext i32 %2145 to i64
  store i64 %2146, i64* %RCX.i314, align 8
  %2147 = icmp ult i32 %2145, %2144
  %2148 = icmp ult i32 %2145, 1
  %2149 = or i1 %2147, %2148
  %2150 = zext i1 %2149 to i8
  %2151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2150, i8* %2151, align 1
  %2152 = and i32 %2145, 255
  %2153 = call i32 @llvm.ctpop.i32(i32 %2152)
  %2154 = trunc i32 %2153 to i8
  %2155 = and i8 %2154, 1
  %2156 = xor i8 %2155, 1
  %2157 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2156, i8* %2157, align 1
  %2158 = xor i64 1, %2141
  %2159 = trunc i64 %2158 to i32
  %2160 = xor i32 %2159, %2145
  %2161 = lshr i32 %2160, 4
  %2162 = trunc i32 %2161 to i8
  %2163 = and i8 %2162, 1
  %2164 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2163, i8* %2164, align 1
  %2165 = icmp eq i32 %2145, 0
  %2166 = zext i1 %2165 to i8
  %2167 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2166, i8* %2167, align 1
  %2168 = lshr i32 %2145, 31
  %2169 = trunc i32 %2168 to i8
  %2170 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2169, i8* %2170, align 1
  %2171 = lshr i32 %2144, 31
  %2172 = xor i32 %2168, %2171
  %2173 = add i32 %2172, %2168
  %2174 = icmp eq i32 %2173, 2
  %2175 = zext i1 %2174 to i8
  %2176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2175, i8* %2176, align 1
  store %struct.Memory* %loadMem_4022b6, %struct.Memory** %MEMORY
  %loadMem_4022b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2178 = getelementptr inbounds %struct.GPR, %struct.GPR* %2177, i32 0, i32 33
  %2179 = getelementptr inbounds %struct.Reg, %struct.Reg* %2178, i32 0, i32 0
  %PC.i310 = bitcast %union.anon* %2179 to i64*
  %2180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2181 = getelementptr inbounds %struct.GPR, %struct.GPR* %2180, i32 0, i32 5
  %2182 = getelementptr inbounds %struct.Reg, %struct.Reg* %2181, i32 0, i32 0
  %ECX.i311 = bitcast %union.anon* %2182 to i32*
  %2183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2184 = getelementptr inbounds %struct.GPR, %struct.GPR* %2183, i32 0, i32 1
  %2185 = getelementptr inbounds %struct.Reg, %struct.Reg* %2184, i32 0, i32 0
  %RAX.i312 = bitcast %union.anon* %2185 to i64*
  %2186 = load i64, i64* %RAX.i312
  %2187 = add i64 %2186, 88
  %2188 = load i32, i32* %ECX.i311
  %2189 = zext i32 %2188 to i64
  %2190 = load i64, i64* %PC.i310
  %2191 = add i64 %2190, 3
  store i64 %2191, i64* %PC.i310
  %2192 = inttoptr i64 %2187 to i32*
  store i32 %2188, i32* %2192
  store %struct.Memory* %loadMem_4022b9, %struct.Memory** %MEMORY
  %loadMem_4022bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2194 = getelementptr inbounds %struct.GPR, %struct.GPR* %2193, i32 0, i32 33
  %2195 = getelementptr inbounds %struct.Reg, %struct.Reg* %2194, i32 0, i32 0
  %PC.i309 = bitcast %union.anon* %2195 to i64*
  %2196 = load i64, i64* %PC.i309
  %2197 = add i64 %2196, -40
  %2198 = load i64, i64* %PC.i309
  %2199 = add i64 %2198, 5
  store i64 %2199, i64* %PC.i309
  %2200 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2197, i64* %2200, align 8
  store %struct.Memory* %loadMem_4022bc, %struct.Memory** %MEMORY
  br label %block_.L_402294

block_.L_4022c1:                                  ; preds = %block_.L_402294
  %loadMem_4022c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2202 = getelementptr inbounds %struct.GPR, %struct.GPR* %2201, i32 0, i32 33
  %2203 = getelementptr inbounds %struct.Reg, %struct.Reg* %2202, i32 0, i32 0
  %PC.i308 = bitcast %union.anon* %2203 to i64*
  %2204 = load i64, i64* %PC.i308
  %2205 = add i64 %2204, 5
  %2206 = load i64, i64* %PC.i308
  %2207 = add i64 %2206, 5
  store i64 %2207, i64* %PC.i308
  %2208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2205, i64* %2208, align 8
  store %struct.Memory* %loadMem_4022c1, %struct.Memory** %MEMORY
  br label %block_.L_4022c6

block_.L_4022c6:                                  ; preds = %block_.L_4022c1, %block_402227
  %loadMem_4022c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2210 = getelementptr inbounds %struct.GPR, %struct.GPR* %2209, i32 0, i32 33
  %2211 = getelementptr inbounds %struct.Reg, %struct.Reg* %2210, i32 0, i32 0
  %PC.i307 = bitcast %union.anon* %2211 to i64*
  %2212 = load i64, i64* %PC.i307
  %2213 = add i64 %2212, -173
  %2214 = load i64, i64* %PC.i307
  %2215 = add i64 %2214, 5
  store i64 %2215, i64* %PC.i307
  %2216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2213, i64* %2216, align 8
  store %struct.Memory* %loadMem_4022c6, %struct.Memory** %MEMORY
  br label %block_.L_402219

block_.L_4022cb:                                  ; preds = %block_.L_402219
  %loadMem_4022cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2218 = getelementptr inbounds %struct.GPR, %struct.GPR* %2217, i32 0, i32 33
  %2219 = getelementptr inbounds %struct.Reg, %struct.Reg* %2218, i32 0, i32 0
  %PC.i304 = bitcast %union.anon* %2219 to i64*
  %2220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2221 = getelementptr inbounds %struct.GPR, %struct.GPR* %2220, i32 0, i32 1
  %2222 = getelementptr inbounds %struct.Reg, %struct.Reg* %2221, i32 0, i32 0
  %RAX.i305 = bitcast %union.anon* %2222 to i64*
  %2223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2224 = getelementptr inbounds %struct.GPR, %struct.GPR* %2223, i32 0, i32 15
  %2225 = getelementptr inbounds %struct.Reg, %struct.Reg* %2224, i32 0, i32 0
  %RBP.i306 = bitcast %union.anon* %2225 to i64*
  %2226 = load i64, i64* %RBP.i306
  %2227 = sub i64 %2226, 20
  %2228 = load i64, i64* %PC.i304
  %2229 = add i64 %2228, 3
  store i64 %2229, i64* %PC.i304
  %2230 = inttoptr i64 %2227 to i32*
  %2231 = load i32, i32* %2230
  %2232 = zext i32 %2231 to i64
  store i64 %2232, i64* %RAX.i305, align 8
  store %struct.Memory* %loadMem_4022cb, %struct.Memory** %MEMORY
  %loadMem_4022ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %2233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2234 = getelementptr inbounds %struct.GPR, %struct.GPR* %2233, i32 0, i32 33
  %2235 = getelementptr inbounds %struct.Reg, %struct.Reg* %2234, i32 0, i32 0
  %PC.i302 = bitcast %union.anon* %2235 to i64*
  %2236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2237 = getelementptr inbounds %struct.GPR, %struct.GPR* %2236, i32 0, i32 1
  %2238 = getelementptr inbounds %struct.Reg, %struct.Reg* %2237, i32 0, i32 0
  %RAX.i303 = bitcast %union.anon* %2238 to i64*
  %2239 = load i64, i64* %RAX.i303
  %2240 = load i64, i64* %PC.i302
  %2241 = add i64 %2240, 5
  store i64 %2241, i64* %PC.i302
  %2242 = trunc i64 %2239 to i32
  %2243 = sub i32 %2242, 512
  %2244 = zext i32 %2243 to i64
  store i64 %2244, i64* %RAX.i303, align 8
  %2245 = icmp ult i32 %2242, 512
  %2246 = zext i1 %2245 to i8
  %2247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2246, i8* %2247, align 1
  %2248 = and i32 %2243, 255
  %2249 = call i32 @llvm.ctpop.i32(i32 %2248)
  %2250 = trunc i32 %2249 to i8
  %2251 = and i8 %2250, 1
  %2252 = xor i8 %2251, 1
  %2253 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2252, i8* %2253, align 1
  %2254 = xor i64 512, %2239
  %2255 = trunc i64 %2254 to i32
  %2256 = xor i32 %2255, %2243
  %2257 = lshr i32 %2256, 4
  %2258 = trunc i32 %2257 to i8
  %2259 = and i8 %2258, 1
  %2260 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2259, i8* %2260, align 1
  %2261 = icmp eq i32 %2243, 0
  %2262 = zext i1 %2261 to i8
  %2263 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2262, i8* %2263, align 1
  %2264 = lshr i32 %2243, 31
  %2265 = trunc i32 %2264 to i8
  %2266 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2265, i8* %2266, align 1
  %2267 = lshr i32 %2242, 31
  %2268 = xor i32 %2264, %2267
  %2269 = add i32 %2268, %2267
  %2270 = icmp eq i32 %2269, 2
  %2271 = zext i1 %2270 to i8
  %2272 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2271, i8* %2272, align 1
  store %struct.Memory* %loadMem_4022ce, %struct.Memory** %MEMORY
  %loadMem_4022d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2274 = getelementptr inbounds %struct.GPR, %struct.GPR* %2273, i32 0, i32 33
  %2275 = getelementptr inbounds %struct.Reg, %struct.Reg* %2274, i32 0, i32 0
  %PC.i299 = bitcast %union.anon* %2275 to i64*
  %2276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2277 = getelementptr inbounds %struct.GPR, %struct.GPR* %2276, i32 0, i32 1
  %2278 = getelementptr inbounds %struct.Reg, %struct.Reg* %2277, i32 0, i32 0
  %EAX.i300 = bitcast %union.anon* %2278 to i32*
  %2279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2280 = getelementptr inbounds %struct.GPR, %struct.GPR* %2279, i32 0, i32 15
  %2281 = getelementptr inbounds %struct.Reg, %struct.Reg* %2280, i32 0, i32 0
  %RBP.i301 = bitcast %union.anon* %2281 to i64*
  %2282 = load i64, i64* %RBP.i301
  %2283 = sub i64 %2282, 20
  %2284 = load i32, i32* %EAX.i300
  %2285 = zext i32 %2284 to i64
  %2286 = load i64, i64* %PC.i299
  %2287 = add i64 %2286, 3
  store i64 %2287, i64* %PC.i299
  %2288 = inttoptr i64 %2283 to i32*
  store i32 %2284, i32* %2288
  store %struct.Memory* %loadMem_4022d3, %struct.Memory** %MEMORY
  %loadMem_4022d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2290 = getelementptr inbounds %struct.GPR, %struct.GPR* %2289, i32 0, i32 33
  %2291 = getelementptr inbounds %struct.Reg, %struct.Reg* %2290, i32 0, i32 0
  %PC.i298 = bitcast %union.anon* %2291 to i64*
  %2292 = load i64, i64* %PC.i298
  %2293 = add i64 %2292, 385
  %2294 = load i64, i64* %PC.i298
  %2295 = add i64 %2294, 5
  store i64 %2295, i64* %PC.i298
  %2296 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2293, i64* %2296, align 8
  store %struct.Memory* %loadMem_4022d6, %struct.Memory** %MEMORY
  br label %block_.L_402457

block_.L_4022db:                                  ; preds = %block_402172
  %loadMem_4022db = load %struct.Memory*, %struct.Memory** %MEMORY
  %2297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2298 = getelementptr inbounds %struct.GPR, %struct.GPR* %2297, i32 0, i32 33
  %2299 = getelementptr inbounds %struct.Reg, %struct.Reg* %2298, i32 0, i32 0
  %PC.i296 = bitcast %union.anon* %2299 to i64*
  %2300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2301 = getelementptr inbounds %struct.GPR, %struct.GPR* %2300, i32 0, i32 15
  %2302 = getelementptr inbounds %struct.Reg, %struct.Reg* %2301, i32 0, i32 0
  %RBP.i297 = bitcast %union.anon* %2302 to i64*
  %2303 = load i64, i64* %RBP.i297
  %2304 = sub i64 %2303, 20
  %2305 = load i64, i64* %PC.i296
  %2306 = add i64 %2305, 7
  store i64 %2306, i64* %PC.i296
  %2307 = inttoptr i64 %2304 to i32*
  %2308 = load i32, i32* %2307
  %2309 = sub i32 %2308, 256
  %2310 = icmp ult i32 %2308, 256
  %2311 = zext i1 %2310 to i8
  %2312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2311, i8* %2312, align 1
  %2313 = and i32 %2309, 255
  %2314 = call i32 @llvm.ctpop.i32(i32 %2313)
  %2315 = trunc i32 %2314 to i8
  %2316 = and i8 %2315, 1
  %2317 = xor i8 %2316, 1
  %2318 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2317, i8* %2318, align 1
  %2319 = xor i32 %2308, 256
  %2320 = xor i32 %2319, %2309
  %2321 = lshr i32 %2320, 4
  %2322 = trunc i32 %2321 to i8
  %2323 = and i8 %2322, 1
  %2324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2323, i8* %2324, align 1
  %2325 = icmp eq i32 %2309, 0
  %2326 = zext i1 %2325 to i8
  %2327 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2326, i8* %2327, align 1
  %2328 = lshr i32 %2309, 31
  %2329 = trunc i32 %2328 to i8
  %2330 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2329, i8* %2330, align 1
  %2331 = lshr i32 %2308, 31
  %2332 = xor i32 %2328, %2331
  %2333 = add i32 %2332, %2331
  %2334 = icmp eq i32 %2333, 2
  %2335 = zext i1 %2334 to i8
  %2336 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2335, i8* %2336, align 1
  store %struct.Memory* %loadMem_4022db, %struct.Memory** %MEMORY
  %loadMem_4022e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2338 = getelementptr inbounds %struct.GPR, %struct.GPR* %2337, i32 0, i32 33
  %2339 = getelementptr inbounds %struct.Reg, %struct.Reg* %2338, i32 0, i32 0
  %PC.i295 = bitcast %union.anon* %2339 to i64*
  %2340 = load i64, i64* %PC.i295
  %2341 = add i64 %2340, 343
  %2342 = load i64, i64* %PC.i295
  %2343 = add i64 %2342, 6
  %2344 = load i64, i64* %PC.i295
  %2345 = add i64 %2344, 6
  store i64 %2345, i64* %PC.i295
  %2346 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2347 = load i8, i8* %2346, align 1
  %2348 = icmp eq i8 %2347, 0
  %2349 = zext i1 %2348 to i8
  store i8 %2349, i8* %BRANCH_TAKEN, align 1
  %2350 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2351 = select i1 %2348, i64 %2341, i64 %2343
  store i64 %2351, i64* %2350, align 8
  store %struct.Memory* %loadMem_4022e2, %struct.Memory** %MEMORY
  %loadBr_4022e2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4022e2 = icmp eq i8 %loadBr_4022e2, 1
  br i1 %cmpBr_4022e2, label %block_.L_402439, label %block_4022e8

block_4022e8:                                     ; preds = %block_.L_4022db
  %loadMem_4022e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2353 = getelementptr inbounds %struct.GPR, %struct.GPR* %2352, i32 0, i32 33
  %2354 = getelementptr inbounds %struct.Reg, %struct.Reg* %2353, i32 0, i32 0
  %PC.i292 = bitcast %union.anon* %2354 to i64*
  %2355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2356 = getelementptr inbounds %struct.GPR, %struct.GPR* %2355, i32 0, i32 1
  %2357 = getelementptr inbounds %struct.Reg, %struct.Reg* %2356, i32 0, i32 0
  %RAX.i293 = bitcast %union.anon* %2357 to i64*
  %2358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2359 = getelementptr inbounds %struct.GPR, %struct.GPR* %2358, i32 0, i32 15
  %2360 = getelementptr inbounds %struct.Reg, %struct.Reg* %2359, i32 0, i32 0
  %RBP.i294 = bitcast %union.anon* %2360 to i64*
  %2361 = load i64, i64* %RBP.i294
  %2362 = sub i64 %2361, 8
  %2363 = load i64, i64* %PC.i292
  %2364 = add i64 %2363, 4
  store i64 %2364, i64* %PC.i292
  %2365 = inttoptr i64 %2362 to i64*
  %2366 = load i64, i64* %2365
  store i64 %2366, i64* %RAX.i293, align 8
  store %struct.Memory* %loadMem_4022e8, %struct.Memory** %MEMORY
  %loadMem_4022ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %2367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2368 = getelementptr inbounds %struct.GPR, %struct.GPR* %2367, i32 0, i32 33
  %2369 = getelementptr inbounds %struct.Reg, %struct.Reg* %2368, i32 0, i32 0
  %PC.i289 = bitcast %union.anon* %2369 to i64*
  %2370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2371 = getelementptr inbounds %struct.GPR, %struct.GPR* %2370, i32 0, i32 1
  %2372 = getelementptr inbounds %struct.Reg, %struct.Reg* %2371, i32 0, i32 0
  %RAX.i290 = bitcast %union.anon* %2372 to i64*
  %2373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2374 = getelementptr inbounds %struct.GPR, %struct.GPR* %2373, i32 0, i32 5
  %2375 = getelementptr inbounds %struct.Reg, %struct.Reg* %2374, i32 0, i32 0
  %RCX.i291 = bitcast %union.anon* %2375 to i64*
  %2376 = load i64, i64* %RAX.i290
  %2377 = add i64 %2376, 8
  %2378 = load i64, i64* %PC.i289
  %2379 = add i64 %2378, 3
  store i64 %2379, i64* %PC.i289
  %2380 = inttoptr i64 %2377 to i32*
  %2381 = load i32, i32* %2380
  %2382 = zext i32 %2381 to i64
  store i64 %2382, i64* %RCX.i291, align 8
  store %struct.Memory* %loadMem_4022ec, %struct.Memory** %MEMORY
  %loadMem_4022ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %2383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2384 = getelementptr inbounds %struct.GPR, %struct.GPR* %2383, i32 0, i32 33
  %2385 = getelementptr inbounds %struct.Reg, %struct.Reg* %2384, i32 0, i32 0
  %PC.i287 = bitcast %union.anon* %2385 to i64*
  %2386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2387 = getelementptr inbounds %struct.GPR, %struct.GPR* %2386, i32 0, i32 5
  %2388 = getelementptr inbounds %struct.Reg, %struct.Reg* %2387, i32 0, i32 0
  %RCX.i288 = bitcast %union.anon* %2388 to i64*
  %2389 = load i64, i64* %RCX.i288
  %2390 = load i64, i64* %PC.i287
  %2391 = add i64 %2390, 2
  store i64 %2391, i64* %PC.i287
  %2392 = trunc i64 %2389 to i32
  %2393 = shl i32 %2392, 1
  %2394 = icmp slt i32 %2392, 0
  %2395 = icmp slt i32 %2393, 0
  %2396 = xor i1 %2394, %2395
  %2397 = zext i32 %2393 to i64
  store i64 %2397, i64* %RCX.i288, align 8
  %2398 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2399 = zext i1 %2394 to i8
  store i8 %2399, i8* %2398, align 1
  %2400 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2401 = and i32 %2393, 254
  %2402 = call i32 @llvm.ctpop.i32(i32 %2401)
  %2403 = trunc i32 %2402 to i8
  %2404 = and i8 %2403, 1
  %2405 = xor i8 %2404, 1
  store i8 %2405, i8* %2400, align 1
  %2406 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2406, align 1
  %2407 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2408 = icmp eq i32 %2393, 0
  %2409 = zext i1 %2408 to i8
  store i8 %2409, i8* %2407, align 1
  %2410 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2411 = lshr i32 %2393, 31
  %2412 = trunc i32 %2411 to i8
  store i8 %2412, i8* %2410, align 1
  %2413 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2414 = zext i1 %2396 to i8
  store i8 %2414, i8* %2413, align 1
  store %struct.Memory* %loadMem_4022ef, %struct.Memory** %MEMORY
  %loadMem_4022f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2416 = getelementptr inbounds %struct.GPR, %struct.GPR* %2415, i32 0, i32 33
  %2417 = getelementptr inbounds %struct.Reg, %struct.Reg* %2416, i32 0, i32 0
  %PC.i284 = bitcast %union.anon* %2417 to i64*
  %2418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2419 = getelementptr inbounds %struct.GPR, %struct.GPR* %2418, i32 0, i32 5
  %2420 = getelementptr inbounds %struct.Reg, %struct.Reg* %2419, i32 0, i32 0
  %ECX.i285 = bitcast %union.anon* %2420 to i32*
  %2421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2422 = getelementptr inbounds %struct.GPR, %struct.GPR* %2421, i32 0, i32 1
  %2423 = getelementptr inbounds %struct.Reg, %struct.Reg* %2422, i32 0, i32 0
  %RAX.i286 = bitcast %union.anon* %2423 to i64*
  %2424 = load i64, i64* %RAX.i286
  %2425 = add i64 %2424, 8
  %2426 = load i32, i32* %ECX.i285
  %2427 = zext i32 %2426 to i64
  %2428 = load i64, i64* %PC.i284
  %2429 = add i64 %2428, 3
  store i64 %2429, i64* %PC.i284
  %2430 = inttoptr i64 %2425 to i32*
  store i32 %2426, i32* %2430
  store %struct.Memory* %loadMem_4022f2, %struct.Memory** %MEMORY
  %loadMem_4022f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2432 = getelementptr inbounds %struct.GPR, %struct.GPR* %2431, i32 0, i32 33
  %2433 = getelementptr inbounds %struct.Reg, %struct.Reg* %2432, i32 0, i32 0
  %PC.i281 = bitcast %union.anon* %2433 to i64*
  %2434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2435 = getelementptr inbounds %struct.GPR, %struct.GPR* %2434, i32 0, i32 1
  %2436 = getelementptr inbounds %struct.Reg, %struct.Reg* %2435, i32 0, i32 0
  %RAX.i282 = bitcast %union.anon* %2436 to i64*
  %2437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2438 = getelementptr inbounds %struct.GPR, %struct.GPR* %2437, i32 0, i32 15
  %2439 = getelementptr inbounds %struct.Reg, %struct.Reg* %2438, i32 0, i32 0
  %RBP.i283 = bitcast %union.anon* %2439 to i64*
  %2440 = load i64, i64* %RBP.i283
  %2441 = sub i64 %2440, 8
  %2442 = load i64, i64* %PC.i281
  %2443 = add i64 %2442, 4
  store i64 %2443, i64* %PC.i281
  %2444 = inttoptr i64 %2441 to i64*
  %2445 = load i64, i64* %2444
  store i64 %2445, i64* %RAX.i282, align 8
  store %struct.Memory* %loadMem_4022f5, %struct.Memory** %MEMORY
  %loadMem_4022f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2447 = getelementptr inbounds %struct.GPR, %struct.GPR* %2446, i32 0, i32 33
  %2448 = getelementptr inbounds %struct.Reg, %struct.Reg* %2447, i32 0, i32 0
  %PC.i278 = bitcast %union.anon* %2448 to i64*
  %2449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2450 = getelementptr inbounds %struct.GPR, %struct.GPR* %2449, i32 0, i32 1
  %2451 = getelementptr inbounds %struct.Reg, %struct.Reg* %2450, i32 0, i32 0
  %RAX.i279 = bitcast %union.anon* %2451 to i64*
  %2452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2453 = getelementptr inbounds %struct.GPR, %struct.GPR* %2452, i32 0, i32 5
  %2454 = getelementptr inbounds %struct.Reg, %struct.Reg* %2453, i32 0, i32 0
  %RCX.i280 = bitcast %union.anon* %2454 to i64*
  %2455 = load i64, i64* %RAX.i279
  %2456 = add i64 %2455, 8
  %2457 = load i64, i64* %PC.i278
  %2458 = add i64 %2457, 3
  store i64 %2458, i64* %PC.i278
  %2459 = inttoptr i64 %2456 to i32*
  %2460 = load i32, i32* %2459
  %2461 = zext i32 %2460 to i64
  store i64 %2461, i64* %RCX.i280, align 8
  store %struct.Memory* %loadMem_4022f9, %struct.Memory** %MEMORY
  %loadMem_4022fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2463 = getelementptr inbounds %struct.GPR, %struct.GPR* %2462, i32 0, i32 33
  %2464 = getelementptr inbounds %struct.Reg, %struct.Reg* %2463, i32 0, i32 0
  %PC.i275 = bitcast %union.anon* %2464 to i64*
  %2465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2466 = getelementptr inbounds %struct.GPR, %struct.GPR* %2465, i32 0, i32 5
  %2467 = getelementptr inbounds %struct.Reg, %struct.Reg* %2466, i32 0, i32 0
  %ECX.i276 = bitcast %union.anon* %2467 to i32*
  %2468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2469 = getelementptr inbounds %struct.GPR, %struct.GPR* %2468, i32 0, i32 1
  %2470 = getelementptr inbounds %struct.Reg, %struct.Reg* %2469, i32 0, i32 0
  %RAX.i277 = bitcast %union.anon* %2470 to i64*
  %2471 = load i64, i64* %RAX.i277
  %2472 = add i64 %2471, 8
  %2473 = load i32, i32* %ECX.i276
  %2474 = zext i32 %2473 to i64
  %2475 = load i64, i64* %PC.i275
  %2476 = add i64 %2475, 3
  store i64 %2476, i64* %PC.i275
  %2477 = inttoptr i64 %2472 to i32*
  store i32 %2473, i32* %2477
  store %struct.Memory* %loadMem_4022fc, %struct.Memory** %MEMORY
  %loadMem_4022ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %2478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2479 = getelementptr inbounds %struct.GPR, %struct.GPR* %2478, i32 0, i32 33
  %2480 = getelementptr inbounds %struct.Reg, %struct.Reg* %2479, i32 0, i32 0
  %PC.i272 = bitcast %union.anon* %2480 to i64*
  %2481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2482 = getelementptr inbounds %struct.GPR, %struct.GPR* %2481, i32 0, i32 1
  %2483 = getelementptr inbounds %struct.Reg, %struct.Reg* %2482, i32 0, i32 0
  %RAX.i273 = bitcast %union.anon* %2483 to i64*
  %2484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2485 = getelementptr inbounds %struct.GPR, %struct.GPR* %2484, i32 0, i32 15
  %2486 = getelementptr inbounds %struct.Reg, %struct.Reg* %2485, i32 0, i32 0
  %RBP.i274 = bitcast %union.anon* %2486 to i64*
  %2487 = load i64, i64* %RBP.i274
  %2488 = sub i64 %2487, 8
  %2489 = load i64, i64* %PC.i272
  %2490 = add i64 %2489, 4
  store i64 %2490, i64* %PC.i272
  %2491 = inttoptr i64 %2488 to i64*
  %2492 = load i64, i64* %2491
  store i64 %2492, i64* %RAX.i273, align 8
  store %struct.Memory* %loadMem_4022ff, %struct.Memory** %MEMORY
  %loadMem_402303 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2494 = getelementptr inbounds %struct.GPR, %struct.GPR* %2493, i32 0, i32 33
  %2495 = getelementptr inbounds %struct.Reg, %struct.Reg* %2494, i32 0, i32 0
  %PC.i269 = bitcast %union.anon* %2495 to i64*
  %2496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2497 = getelementptr inbounds %struct.GPR, %struct.GPR* %2496, i32 0, i32 1
  %2498 = getelementptr inbounds %struct.Reg, %struct.Reg* %2497, i32 0, i32 0
  %RAX.i270 = bitcast %union.anon* %2498 to i64*
  %2499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2500 = getelementptr inbounds %struct.GPR, %struct.GPR* %2499, i32 0, i32 5
  %2501 = getelementptr inbounds %struct.Reg, %struct.Reg* %2500, i32 0, i32 0
  %RCX.i271 = bitcast %union.anon* %2501 to i64*
  %2502 = load i64, i64* %RAX.i270
  %2503 = add i64 %2502, 12
  %2504 = load i64, i64* %PC.i269
  %2505 = add i64 %2504, 3
  store i64 %2505, i64* %PC.i269
  %2506 = inttoptr i64 %2503 to i32*
  %2507 = load i32, i32* %2506
  %2508 = zext i32 %2507 to i64
  store i64 %2508, i64* %RCX.i271, align 8
  store %struct.Memory* %loadMem_402303, %struct.Memory** %MEMORY
  %loadMem_402306 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2510 = getelementptr inbounds %struct.GPR, %struct.GPR* %2509, i32 0, i32 33
  %2511 = getelementptr inbounds %struct.Reg, %struct.Reg* %2510, i32 0, i32 0
  %PC.i267 = bitcast %union.anon* %2511 to i64*
  %2512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2513 = getelementptr inbounds %struct.GPR, %struct.GPR* %2512, i32 0, i32 5
  %2514 = getelementptr inbounds %struct.Reg, %struct.Reg* %2513, i32 0, i32 0
  %RCX.i268 = bitcast %union.anon* %2514 to i64*
  %2515 = load i64, i64* %RCX.i268
  %2516 = load i64, i64* %PC.i267
  %2517 = add i64 %2516, 3
  store i64 %2517, i64* %PC.i267
  %2518 = trunc i64 %2515 to i32
  %2519 = add i32 -1, %2518
  %2520 = zext i32 %2519 to i64
  store i64 %2520, i64* %RCX.i268, align 8
  %2521 = icmp ult i32 %2519, %2518
  %2522 = icmp ult i32 %2519, -1
  %2523 = or i1 %2521, %2522
  %2524 = zext i1 %2523 to i8
  %2525 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2524, i8* %2525, align 1
  %2526 = and i32 %2519, 255
  %2527 = call i32 @llvm.ctpop.i32(i32 %2526)
  %2528 = trunc i32 %2527 to i8
  %2529 = and i8 %2528, 1
  %2530 = xor i8 %2529, 1
  %2531 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2530, i8* %2531, align 1
  %2532 = xor i64 -1, %2515
  %2533 = trunc i64 %2532 to i32
  %2534 = xor i32 %2533, %2519
  %2535 = lshr i32 %2534, 4
  %2536 = trunc i32 %2535 to i8
  %2537 = and i8 %2536, 1
  %2538 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2537, i8* %2538, align 1
  %2539 = icmp eq i32 %2519, 0
  %2540 = zext i1 %2539 to i8
  %2541 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2540, i8* %2541, align 1
  %2542 = lshr i32 %2519, 31
  %2543 = trunc i32 %2542 to i8
  %2544 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2543, i8* %2544, align 1
  %2545 = lshr i32 %2518, 31
  %2546 = xor i32 %2542, %2545
  %2547 = xor i32 %2542, 1
  %2548 = add i32 %2546, %2547
  %2549 = icmp eq i32 %2548, 2
  %2550 = zext i1 %2549 to i8
  %2551 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2550, i8* %2551, align 1
  store %struct.Memory* %loadMem_402306, %struct.Memory** %MEMORY
  %loadMem_402309 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2553 = getelementptr inbounds %struct.GPR, %struct.GPR* %2552, i32 0, i32 33
  %2554 = getelementptr inbounds %struct.Reg, %struct.Reg* %2553, i32 0, i32 0
  %PC.i264 = bitcast %union.anon* %2554 to i64*
  %2555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2556 = getelementptr inbounds %struct.GPR, %struct.GPR* %2555, i32 0, i32 5
  %2557 = getelementptr inbounds %struct.Reg, %struct.Reg* %2556, i32 0, i32 0
  %ECX.i265 = bitcast %union.anon* %2557 to i32*
  %2558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2559 = getelementptr inbounds %struct.GPR, %struct.GPR* %2558, i32 0, i32 1
  %2560 = getelementptr inbounds %struct.Reg, %struct.Reg* %2559, i32 0, i32 0
  %RAX.i266 = bitcast %union.anon* %2560 to i64*
  %2561 = load i64, i64* %RAX.i266
  %2562 = add i64 %2561, 12
  %2563 = load i32, i32* %ECX.i265
  %2564 = zext i32 %2563 to i64
  %2565 = load i64, i64* %PC.i264
  %2566 = add i64 %2565, 3
  store i64 %2566, i64* %PC.i264
  %2567 = inttoptr i64 %2562 to i32*
  store i32 %2563, i32* %2567
  store %struct.Memory* %loadMem_402309, %struct.Memory** %MEMORY
  %loadMem_40230c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2569 = getelementptr inbounds %struct.GPR, %struct.GPR* %2568, i32 0, i32 33
  %2570 = getelementptr inbounds %struct.Reg, %struct.Reg* %2569, i32 0, i32 0
  %PC.i262 = bitcast %union.anon* %2570 to i64*
  %2571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2572 = getelementptr inbounds %struct.GPR, %struct.GPR* %2571, i32 0, i32 5
  %2573 = getelementptr inbounds %struct.Reg, %struct.Reg* %2572, i32 0, i32 0
  %ECX.i263 = bitcast %union.anon* %2573 to i32*
  %2574 = load i32, i32* %ECX.i263
  %2575 = zext i32 %2574 to i64
  %2576 = load i64, i64* %PC.i262
  %2577 = add i64 %2576, 3
  store i64 %2577, i64* %PC.i262
  %2578 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2578, align 1
  %2579 = and i32 %2574, 255
  %2580 = call i32 @llvm.ctpop.i32(i32 %2579)
  %2581 = trunc i32 %2580 to i8
  %2582 = and i8 %2581, 1
  %2583 = xor i8 %2582, 1
  %2584 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2583, i8* %2584, align 1
  %2585 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2585, align 1
  %2586 = icmp eq i32 %2574, 0
  %2587 = zext i1 %2586 to i8
  %2588 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2587, i8* %2588, align 1
  %2589 = lshr i32 %2574, 31
  %2590 = trunc i32 %2589 to i8
  %2591 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2590, i8* %2591, align 1
  %2592 = lshr i32 %2574, 31
  %2593 = xor i32 %2589, %2592
  %2594 = add i32 %2593, %2592
  %2595 = icmp eq i32 %2594, 2
  %2596 = zext i1 %2595 to i8
  %2597 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2596, i8* %2597, align 1
  store %struct.Memory* %loadMem_40230c, %struct.Memory** %MEMORY
  %loadMem_40230f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2599 = getelementptr inbounds %struct.GPR, %struct.GPR* %2598, i32 0, i32 33
  %2600 = getelementptr inbounds %struct.Reg, %struct.Reg* %2599, i32 0, i32 0
  %PC.i261 = bitcast %union.anon* %2600 to i64*
  %2601 = load i64, i64* %PC.i261
  %2602 = add i64 %2601, 107
  %2603 = load i64, i64* %PC.i261
  %2604 = add i64 %2603, 6
  %2605 = load i64, i64* %PC.i261
  %2606 = add i64 %2605, 6
  store i64 %2606, i64* %PC.i261
  %2607 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2608 = load i8, i8* %2607, align 1
  %2609 = icmp eq i8 %2608, 0
  %2610 = zext i1 %2609 to i8
  store i8 %2610, i8* %BRANCH_TAKEN, align 1
  %2611 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2612 = select i1 %2609, i64 %2602, i64 %2604
  store i64 %2612, i64* %2611, align 8
  store %struct.Memory* %loadMem_40230f, %struct.Memory** %MEMORY
  %loadBr_40230f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40230f = icmp eq i8 %loadBr_40230f, 1
  br i1 %cmpBr_40230f, label %block_.L_40237a, label %block_402315

block_402315:                                     ; preds = %block_4022e8
  %loadMem_402315 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2613 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2614 = getelementptr inbounds %struct.GPR, %struct.GPR* %2613, i32 0, i32 33
  %2615 = getelementptr inbounds %struct.Reg, %struct.Reg* %2614, i32 0, i32 0
  %PC.i258 = bitcast %union.anon* %2615 to i64*
  %2616 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2617 = getelementptr inbounds %struct.GPR, %struct.GPR* %2616, i32 0, i32 1
  %2618 = getelementptr inbounds %struct.Reg, %struct.Reg* %2617, i32 0, i32 0
  %RAX.i259 = bitcast %union.anon* %2618 to i64*
  %2619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2620 = getelementptr inbounds %struct.GPR, %struct.GPR* %2619, i32 0, i32 15
  %2621 = getelementptr inbounds %struct.Reg, %struct.Reg* %2620, i32 0, i32 0
  %RBP.i260 = bitcast %union.anon* %2621 to i64*
  %2622 = load i64, i64* %RBP.i260
  %2623 = sub i64 %2622, 8
  %2624 = load i64, i64* %PC.i258
  %2625 = add i64 %2624, 4
  store i64 %2625, i64* %PC.i258
  %2626 = inttoptr i64 %2623 to i64*
  %2627 = load i64, i64* %2626
  store i64 %2627, i64* %RAX.i259, align 8
  store %struct.Memory* %loadMem_402315, %struct.Memory** %MEMORY
  %loadMem_402319 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2629 = getelementptr inbounds %struct.GPR, %struct.GPR* %2628, i32 0, i32 33
  %2630 = getelementptr inbounds %struct.Reg, %struct.Reg* %2629, i32 0, i32 0
  %PC.i255 = bitcast %union.anon* %2630 to i64*
  %2631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2632 = getelementptr inbounds %struct.GPR, %struct.GPR* %2631, i32 0, i32 1
  %2633 = getelementptr inbounds %struct.Reg, %struct.Reg* %2632, i32 0, i32 0
  %RAX.i256 = bitcast %union.anon* %2633 to i64*
  %2634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2635 = getelementptr inbounds %struct.GPR, %struct.GPR* %2634, i32 0, i32 5
  %2636 = getelementptr inbounds %struct.Reg, %struct.Reg* %2635, i32 0, i32 0
  %RCX.i257 = bitcast %union.anon* %2636 to i64*
  %2637 = load i64, i64* %RAX.i256
  %2638 = add i64 %2637, 8
  %2639 = load i64, i64* %PC.i255
  %2640 = add i64 %2639, 3
  store i64 %2640, i64* %PC.i255
  %2641 = inttoptr i64 %2638 to i32*
  %2642 = load i32, i32* %2641
  %2643 = zext i32 %2642 to i64
  store i64 %2643, i64* %RCX.i257, align 8
  store %struct.Memory* %loadMem_402319, %struct.Memory** %MEMORY
  %loadMem_40231c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2644 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2645 = getelementptr inbounds %struct.GPR, %struct.GPR* %2644, i32 0, i32 33
  %2646 = getelementptr inbounds %struct.Reg, %struct.Reg* %2645, i32 0, i32 0
  %PC.i252 = bitcast %union.anon* %2646 to i64*
  %2647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2648 = getelementptr inbounds %struct.GPR, %struct.GPR* %2647, i32 0, i32 5
  %2649 = getelementptr inbounds %struct.Reg, %struct.Reg* %2648, i32 0, i32 0
  %2650 = bitcast %union.anon* %2649 to %struct.anon.2*
  %CL.i253 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2650, i32 0, i32 0
  %2651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2652 = getelementptr inbounds %struct.GPR, %struct.GPR* %2651, i32 0, i32 7
  %2653 = getelementptr inbounds %struct.Reg, %struct.Reg* %2652, i32 0, i32 0
  %2654 = bitcast %union.anon* %2653 to %struct.anon.2*
  %DL.i254 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2654, i32 0, i32 0
  %2655 = load i8, i8* %CL.i253
  %2656 = zext i8 %2655 to i64
  %2657 = load i64, i64* %PC.i252
  %2658 = add i64 %2657, 2
  store i64 %2658, i64* %PC.i252
  store i8 %2655, i8* %DL.i254, align 1
  store %struct.Memory* %loadMem_40231c, %struct.Memory** %MEMORY
  %loadMem_40231e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2659 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2660 = getelementptr inbounds %struct.GPR, %struct.GPR* %2659, i32 0, i32 33
  %2661 = getelementptr inbounds %struct.Reg, %struct.Reg* %2660, i32 0, i32 0
  %PC.i249 = bitcast %union.anon* %2661 to i64*
  %2662 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2663 = getelementptr inbounds %struct.GPR, %struct.GPR* %2662, i32 0, i32 1
  %2664 = getelementptr inbounds %struct.Reg, %struct.Reg* %2663, i32 0, i32 0
  %RAX.i250 = bitcast %union.anon* %2664 to i64*
  %2665 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2666 = getelementptr inbounds %struct.GPR, %struct.GPR* %2665, i32 0, i32 15
  %2667 = getelementptr inbounds %struct.Reg, %struct.Reg* %2666, i32 0, i32 0
  %RBP.i251 = bitcast %union.anon* %2667 to i64*
  %2668 = load i64, i64* %RBP.i251
  %2669 = sub i64 %2668, 8
  %2670 = load i64, i64* %PC.i249
  %2671 = add i64 %2670, 4
  store i64 %2671, i64* %PC.i249
  %2672 = inttoptr i64 %2669 to i64*
  %2673 = load i64, i64* %2672
  store i64 %2673, i64* %RAX.i250, align 8
  store %struct.Memory* %loadMem_40231e, %struct.Memory** %MEMORY
  %loadMem_402322 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2675 = getelementptr inbounds %struct.GPR, %struct.GPR* %2674, i32 0, i32 33
  %2676 = getelementptr inbounds %struct.Reg, %struct.Reg* %2675, i32 0, i32 0
  %PC.i247 = bitcast %union.anon* %2676 to i64*
  %2677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2678 = getelementptr inbounds %struct.GPR, %struct.GPR* %2677, i32 0, i32 1
  %2679 = getelementptr inbounds %struct.Reg, %struct.Reg* %2678, i32 0, i32 0
  %RAX.i248 = bitcast %union.anon* %2679 to i64*
  %2680 = load i64, i64* %RAX.i248
  %2681 = add i64 %2680, 24
  %2682 = load i64, i64* %PC.i247
  %2683 = add i64 %2682, 4
  store i64 %2683, i64* %PC.i247
  %2684 = inttoptr i64 %2681 to i64*
  %2685 = load i64, i64* %2684
  store i64 %2685, i64* %RAX.i248, align 8
  store %struct.Memory* %loadMem_402322, %struct.Memory** %MEMORY
  %loadMem_402326 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2687 = getelementptr inbounds %struct.GPR, %struct.GPR* %2686, i32 0, i32 33
  %2688 = getelementptr inbounds %struct.Reg, %struct.Reg* %2687, i32 0, i32 0
  %PC.i244 = bitcast %union.anon* %2688 to i64*
  %2689 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2690 = getelementptr inbounds %struct.GPR, %struct.GPR* %2689, i32 0, i32 9
  %2691 = getelementptr inbounds %struct.Reg, %struct.Reg* %2690, i32 0, i32 0
  %RSI.i245 = bitcast %union.anon* %2691 to i64*
  %2692 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2693 = getelementptr inbounds %struct.GPR, %struct.GPR* %2692, i32 0, i32 15
  %2694 = getelementptr inbounds %struct.Reg, %struct.Reg* %2693, i32 0, i32 0
  %RBP.i246 = bitcast %union.anon* %2694 to i64*
  %2695 = load i64, i64* %RBP.i246
  %2696 = sub i64 %2695, 8
  %2697 = load i64, i64* %PC.i244
  %2698 = add i64 %2697, 4
  store i64 %2698, i64* %PC.i244
  %2699 = inttoptr i64 %2696 to i64*
  %2700 = load i64, i64* %2699
  store i64 %2700, i64* %RSI.i245, align 8
  store %struct.Memory* %loadMem_402326, %struct.Memory** %MEMORY
  %loadMem_40232a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2702 = getelementptr inbounds %struct.GPR, %struct.GPR* %2701, i32 0, i32 33
  %2703 = getelementptr inbounds %struct.Reg, %struct.Reg* %2702, i32 0, i32 0
  %PC.i242 = bitcast %union.anon* %2703 to i64*
  %2704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2705 = getelementptr inbounds %struct.GPR, %struct.GPR* %2704, i32 0, i32 9
  %2706 = getelementptr inbounds %struct.Reg, %struct.Reg* %2705, i32 0, i32 0
  %RSI.i243 = bitcast %union.anon* %2706 to i64*
  %2707 = load i64, i64* %RSI.i243
  %2708 = add i64 %2707, 32
  %2709 = load i64, i64* %PC.i242
  %2710 = add i64 %2709, 4
  store i64 %2710, i64* %PC.i242
  %2711 = inttoptr i64 %2708 to i64*
  %2712 = load i64, i64* %2711
  store i64 %2712, i64* %RSI.i243, align 8
  store %struct.Memory* %loadMem_40232a, %struct.Memory** %MEMORY
  %loadMem_40232e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2714 = getelementptr inbounds %struct.GPR, %struct.GPR* %2713, i32 0, i32 33
  %2715 = getelementptr inbounds %struct.Reg, %struct.Reg* %2714, i32 0, i32 0
  %PC.i239 = bitcast %union.anon* %2715 to i64*
  %2716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2717 = getelementptr inbounds %struct.GPR, %struct.GPR* %2716, i32 0, i32 5
  %2718 = getelementptr inbounds %struct.Reg, %struct.Reg* %2717, i32 0, i32 0
  %RCX.i240 = bitcast %union.anon* %2718 to i64*
  %2719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2720 = getelementptr inbounds %struct.GPR, %struct.GPR* %2719, i32 0, i32 9
  %2721 = getelementptr inbounds %struct.Reg, %struct.Reg* %2720, i32 0, i32 0
  %RSI.i241 = bitcast %union.anon* %2721 to i64*
  %2722 = load i64, i64* %RSI.i241
  %2723 = load i64, i64* %PC.i239
  %2724 = add i64 %2723, 2
  store i64 %2724, i64* %PC.i239
  %2725 = inttoptr i64 %2722 to i32*
  %2726 = load i32, i32* %2725
  %2727 = zext i32 %2726 to i64
  store i64 %2727, i64* %RCX.i240, align 8
  store %struct.Memory* %loadMem_40232e, %struct.Memory** %MEMORY
  %loadMem_402330 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2729 = getelementptr inbounds %struct.GPR, %struct.GPR* %2728, i32 0, i32 33
  %2730 = getelementptr inbounds %struct.Reg, %struct.Reg* %2729, i32 0, i32 0
  %PC.i236 = bitcast %union.anon* %2730 to i64*
  %2731 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2732 = getelementptr inbounds %struct.GPR, %struct.GPR* %2731, i32 0, i32 5
  %2733 = getelementptr inbounds %struct.Reg, %struct.Reg* %2732, i32 0, i32 0
  %ECX.i237 = bitcast %union.anon* %2733 to i32*
  %2734 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2735 = getelementptr inbounds %struct.GPR, %struct.GPR* %2734, i32 0, i32 11
  %2736 = getelementptr inbounds %struct.Reg, %struct.Reg* %2735, i32 0, i32 0
  %RDI.i238 = bitcast %union.anon* %2736 to i64*
  %2737 = load i32, i32* %ECX.i237
  %2738 = zext i32 %2737 to i64
  %2739 = load i64, i64* %PC.i236
  %2740 = add i64 %2739, 2
  store i64 %2740, i64* %PC.i236
  %2741 = and i64 %2738, 4294967295
  store i64 %2741, i64* %RDI.i238, align 8
  store %struct.Memory* %loadMem_402330, %struct.Memory** %MEMORY
  %loadMem_402332 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2743 = getelementptr inbounds %struct.GPR, %struct.GPR* %2742, i32 0, i32 33
  %2744 = getelementptr inbounds %struct.Reg, %struct.Reg* %2743, i32 0, i32 0
  %PC.i234 = bitcast %union.anon* %2744 to i64*
  %2745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2746 = getelementptr inbounds %struct.GPR, %struct.GPR* %2745, i32 0, i32 11
  %2747 = getelementptr inbounds %struct.Reg, %struct.Reg* %2746, i32 0, i32 0
  %RDI.i235 = bitcast %union.anon* %2747 to i64*
  %2748 = load i64, i64* %RDI.i235
  %2749 = load i64, i64* %PC.i234
  %2750 = add i64 %2749, 3
  store i64 %2750, i64* %PC.i234
  %2751 = trunc i64 %2748 to i32
  %2752 = add i32 1, %2751
  %2753 = zext i32 %2752 to i64
  store i64 %2753, i64* %RDI.i235, align 8
  %2754 = icmp ult i32 %2752, %2751
  %2755 = icmp ult i32 %2752, 1
  %2756 = or i1 %2754, %2755
  %2757 = zext i1 %2756 to i8
  %2758 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2757, i8* %2758, align 1
  %2759 = and i32 %2752, 255
  %2760 = call i32 @llvm.ctpop.i32(i32 %2759)
  %2761 = trunc i32 %2760 to i8
  %2762 = and i8 %2761, 1
  %2763 = xor i8 %2762, 1
  %2764 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2763, i8* %2764, align 1
  %2765 = xor i64 1, %2748
  %2766 = trunc i64 %2765 to i32
  %2767 = xor i32 %2766, %2752
  %2768 = lshr i32 %2767, 4
  %2769 = trunc i32 %2768 to i8
  %2770 = and i8 %2769, 1
  %2771 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2770, i8* %2771, align 1
  %2772 = icmp eq i32 %2752, 0
  %2773 = zext i1 %2772 to i8
  %2774 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2773, i8* %2774, align 1
  %2775 = lshr i32 %2752, 31
  %2776 = trunc i32 %2775 to i8
  %2777 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2776, i8* %2777, align 1
  %2778 = lshr i32 %2751, 31
  %2779 = xor i32 %2775, %2778
  %2780 = add i32 %2779, %2775
  %2781 = icmp eq i32 %2780, 2
  %2782 = zext i1 %2781 to i8
  %2783 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2782, i8* %2783, align 1
  store %struct.Memory* %loadMem_402332, %struct.Memory** %MEMORY
  %loadMem_402335 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2785 = getelementptr inbounds %struct.GPR, %struct.GPR* %2784, i32 0, i32 33
  %2786 = getelementptr inbounds %struct.Reg, %struct.Reg* %2785, i32 0, i32 0
  %PC.i231 = bitcast %union.anon* %2786 to i64*
  %2787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2788 = getelementptr inbounds %struct.GPR, %struct.GPR* %2787, i32 0, i32 11
  %2789 = getelementptr inbounds %struct.Reg, %struct.Reg* %2788, i32 0, i32 0
  %EDI.i232 = bitcast %union.anon* %2789 to i32*
  %2790 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2791 = getelementptr inbounds %struct.GPR, %struct.GPR* %2790, i32 0, i32 9
  %2792 = getelementptr inbounds %struct.Reg, %struct.Reg* %2791, i32 0, i32 0
  %RSI.i233 = bitcast %union.anon* %2792 to i64*
  %2793 = load i64, i64* %RSI.i233
  %2794 = load i32, i32* %EDI.i232
  %2795 = zext i32 %2794 to i64
  %2796 = load i64, i64* %PC.i231
  %2797 = add i64 %2796, 2
  store i64 %2797, i64* %PC.i231
  %2798 = inttoptr i64 %2793 to i32*
  store i32 %2794, i32* %2798
  store %struct.Memory* %loadMem_402335, %struct.Memory** %MEMORY
  %loadMem_402337 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2799 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2800 = getelementptr inbounds %struct.GPR, %struct.GPR* %2799, i32 0, i32 33
  %2801 = getelementptr inbounds %struct.Reg, %struct.Reg* %2800, i32 0, i32 0
  %PC.i228 = bitcast %union.anon* %2801 to i64*
  %2802 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2803 = getelementptr inbounds %struct.GPR, %struct.GPR* %2802, i32 0, i32 5
  %2804 = getelementptr inbounds %struct.Reg, %struct.Reg* %2803, i32 0, i32 0
  %ECX.i229 = bitcast %union.anon* %2804 to i32*
  %2805 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2806 = getelementptr inbounds %struct.GPR, %struct.GPR* %2805, i32 0, i32 9
  %2807 = getelementptr inbounds %struct.Reg, %struct.Reg* %2806, i32 0, i32 0
  %RSI.i230 = bitcast %union.anon* %2807 to i64*
  %2808 = load i32, i32* %ECX.i229
  %2809 = zext i32 %2808 to i64
  %2810 = load i64, i64* %PC.i228
  %2811 = add i64 %2810, 3
  store i64 %2811, i64* %PC.i228
  %2812 = shl i64 %2809, 32
  %2813 = ashr exact i64 %2812, 32
  store i64 %2813, i64* %RSI.i230, align 8
  store %struct.Memory* %loadMem_402337, %struct.Memory** %MEMORY
  %loadMem_40233a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2814 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2815 = getelementptr inbounds %struct.GPR, %struct.GPR* %2814, i32 0, i32 33
  %2816 = getelementptr inbounds %struct.Reg, %struct.Reg* %2815, i32 0, i32 0
  %PC.i224 = bitcast %union.anon* %2816 to i64*
  %2817 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2818 = getelementptr inbounds %struct.GPR, %struct.GPR* %2817, i32 0, i32 7
  %2819 = getelementptr inbounds %struct.Reg, %struct.Reg* %2818, i32 0, i32 0
  %2820 = bitcast %union.anon* %2819 to %struct.anon.2*
  %DL.i225 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2820, i32 0, i32 0
  %2821 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2822 = getelementptr inbounds %struct.GPR, %struct.GPR* %2821, i32 0, i32 1
  %2823 = getelementptr inbounds %struct.Reg, %struct.Reg* %2822, i32 0, i32 0
  %RAX.i226 = bitcast %union.anon* %2823 to i64*
  %2824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2825 = getelementptr inbounds %struct.GPR, %struct.GPR* %2824, i32 0, i32 9
  %2826 = getelementptr inbounds %struct.Reg, %struct.Reg* %2825, i32 0, i32 0
  %RSI.i227 = bitcast %union.anon* %2826 to i64*
  %2827 = load i64, i64* %RAX.i226
  %2828 = load i64, i64* %RSI.i227
  %2829 = add i64 %2828, %2827
  %2830 = load i8, i8* %DL.i225
  %2831 = zext i8 %2830 to i64
  %2832 = load i64, i64* %PC.i224
  %2833 = add i64 %2832, 3
  store i64 %2833, i64* %PC.i224
  %2834 = inttoptr i64 %2829 to i8*
  store i8 %2830, i8* %2834
  store %struct.Memory* %loadMem_40233a, %struct.Memory** %MEMORY
  %loadMem_40233d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2835 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2836 = getelementptr inbounds %struct.GPR, %struct.GPR* %2835, i32 0, i32 33
  %2837 = getelementptr inbounds %struct.Reg, %struct.Reg* %2836, i32 0, i32 0
  %PC.i221 = bitcast %union.anon* %2837 to i64*
  %2838 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2839 = getelementptr inbounds %struct.GPR, %struct.GPR* %2838, i32 0, i32 1
  %2840 = getelementptr inbounds %struct.Reg, %struct.Reg* %2839, i32 0, i32 0
  %RAX.i222 = bitcast %union.anon* %2840 to i64*
  %2841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2842 = getelementptr inbounds %struct.GPR, %struct.GPR* %2841, i32 0, i32 15
  %2843 = getelementptr inbounds %struct.Reg, %struct.Reg* %2842, i32 0, i32 0
  %RBP.i223 = bitcast %union.anon* %2843 to i64*
  %2844 = load i64, i64* %RBP.i223
  %2845 = sub i64 %2844, 8
  %2846 = load i64, i64* %PC.i221
  %2847 = add i64 %2846, 4
  store i64 %2847, i64* %PC.i221
  %2848 = inttoptr i64 %2845 to i64*
  %2849 = load i64, i64* %2848
  store i64 %2849, i64* %RAX.i222, align 8
  store %struct.Memory* %loadMem_40233d, %struct.Memory** %MEMORY
  %loadMem_402341 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2850 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2851 = getelementptr inbounds %struct.GPR, %struct.GPR* %2850, i32 0, i32 33
  %2852 = getelementptr inbounds %struct.Reg, %struct.Reg* %2851, i32 0, i32 0
  %PC.i219 = bitcast %union.anon* %2852 to i64*
  %2853 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2854 = getelementptr inbounds %struct.GPR, %struct.GPR* %2853, i32 0, i32 1
  %2855 = getelementptr inbounds %struct.Reg, %struct.Reg* %2854, i32 0, i32 0
  %RAX.i220 = bitcast %union.anon* %2855 to i64*
  %2856 = load i64, i64* %RAX.i220
  %2857 = add i64 %2856, 12
  %2858 = load i64, i64* %PC.i219
  %2859 = add i64 %2858, 7
  store i64 %2859, i64* %PC.i219
  %2860 = inttoptr i64 %2857 to i32*
  store i32 8, i32* %2860
  store %struct.Memory* %loadMem_402341, %struct.Memory** %MEMORY
  br label %block_.L_402348

block_.L_402348:                                  ; preds = %block_402356, %block_402315
  %loadMem_402348 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2861 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2862 = getelementptr inbounds %struct.GPR, %struct.GPR* %2861, i32 0, i32 33
  %2863 = getelementptr inbounds %struct.Reg, %struct.Reg* %2862, i32 0, i32 0
  %PC.i216 = bitcast %union.anon* %2863 to i64*
  %2864 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2865 = getelementptr inbounds %struct.GPR, %struct.GPR* %2864, i32 0, i32 1
  %2866 = getelementptr inbounds %struct.Reg, %struct.Reg* %2865, i32 0, i32 0
  %RAX.i217 = bitcast %union.anon* %2866 to i64*
  %2867 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2868 = getelementptr inbounds %struct.GPR, %struct.GPR* %2867, i32 0, i32 15
  %2869 = getelementptr inbounds %struct.Reg, %struct.Reg* %2868, i32 0, i32 0
  %RBP.i218 = bitcast %union.anon* %2869 to i64*
  %2870 = load i64, i64* %RBP.i218
  %2871 = sub i64 %2870, 8
  %2872 = load i64, i64* %PC.i216
  %2873 = add i64 %2872, 4
  store i64 %2873, i64* %PC.i216
  %2874 = inttoptr i64 %2871 to i64*
  %2875 = load i64, i64* %2874
  store i64 %2875, i64* %RAX.i217, align 8
  store %struct.Memory* %loadMem_402348, %struct.Memory** %MEMORY
  %loadMem_40234c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2876 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2877 = getelementptr inbounds %struct.GPR, %struct.GPR* %2876, i32 0, i32 33
  %2878 = getelementptr inbounds %struct.Reg, %struct.Reg* %2877, i32 0, i32 0
  %PC.i214 = bitcast %union.anon* %2878 to i64*
  %2879 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2880 = getelementptr inbounds %struct.GPR, %struct.GPR* %2879, i32 0, i32 1
  %2881 = getelementptr inbounds %struct.Reg, %struct.Reg* %2880, i32 0, i32 0
  %RAX.i215 = bitcast %union.anon* %2881 to i64*
  %2882 = load i64, i64* %RAX.i215
  %2883 = add i64 %2882, 80
  %2884 = load i64, i64* %PC.i214
  %2885 = add i64 %2884, 4
  store i64 %2885, i64* %PC.i214
  %2886 = inttoptr i64 %2883 to i32*
  %2887 = load i32, i32* %2886
  %2888 = sub i32 %2887, 7
  %2889 = icmp ult i32 %2887, 7
  %2890 = zext i1 %2889 to i8
  %2891 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2890, i8* %2891, align 1
  %2892 = and i32 %2888, 255
  %2893 = call i32 @llvm.ctpop.i32(i32 %2892)
  %2894 = trunc i32 %2893 to i8
  %2895 = and i8 %2894, 1
  %2896 = xor i8 %2895, 1
  %2897 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2896, i8* %2897, align 1
  %2898 = xor i32 %2887, 7
  %2899 = xor i32 %2898, %2888
  %2900 = lshr i32 %2899, 4
  %2901 = trunc i32 %2900 to i8
  %2902 = and i8 %2901, 1
  %2903 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2902, i8* %2903, align 1
  %2904 = icmp eq i32 %2888, 0
  %2905 = zext i1 %2904 to i8
  %2906 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2905, i8* %2906, align 1
  %2907 = lshr i32 %2888, 31
  %2908 = trunc i32 %2907 to i8
  %2909 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2908, i8* %2909, align 1
  %2910 = lshr i32 %2887, 31
  %2911 = xor i32 %2907, %2910
  %2912 = add i32 %2911, %2910
  %2913 = icmp eq i32 %2912, 2
  %2914 = zext i1 %2913 to i8
  %2915 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2914, i8* %2915, align 1
  store %struct.Memory* %loadMem_40234c, %struct.Memory** %MEMORY
  %loadMem_402350 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2917 = getelementptr inbounds %struct.GPR, %struct.GPR* %2916, i32 0, i32 33
  %2918 = getelementptr inbounds %struct.Reg, %struct.Reg* %2917, i32 0, i32 0
  %PC.i213 = bitcast %union.anon* %2918 to i64*
  %2919 = load i64, i64* %PC.i213
  %2920 = add i64 %2919, 37
  %2921 = load i64, i64* %PC.i213
  %2922 = add i64 %2921, 6
  %2923 = load i64, i64* %PC.i213
  %2924 = add i64 %2923, 6
  store i64 %2924, i64* %PC.i213
  %2925 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2926 = load i8, i8* %2925, align 1
  %2927 = icmp ne i8 %2926, 0
  %2928 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2929 = load i8, i8* %2928, align 1
  %2930 = icmp ne i8 %2929, 0
  %2931 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2932 = load i8, i8* %2931, align 1
  %2933 = icmp ne i8 %2932, 0
  %2934 = xor i1 %2930, %2933
  %2935 = or i1 %2927, %2934
  %2936 = zext i1 %2935 to i8
  store i8 %2936, i8* %BRANCH_TAKEN, align 1
  %2937 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2938 = select i1 %2935, i64 %2920, i64 %2922
  store i64 %2938, i64* %2937, align 8
  store %struct.Memory* %loadMem_402350, %struct.Memory** %MEMORY
  %loadBr_402350 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_402350 = icmp eq i8 %loadBr_402350, 1
  br i1 %cmpBr_402350, label %block_.L_402375, label %block_402356

block_402356:                                     ; preds = %block_.L_402348
  %loadMem_402356 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2939 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2940 = getelementptr inbounds %struct.GPR, %struct.GPR* %2939, i32 0, i32 33
  %2941 = getelementptr inbounds %struct.Reg, %struct.Reg* %2940, i32 0, i32 0
  %PC.i210 = bitcast %union.anon* %2941 to i64*
  %2942 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2943 = getelementptr inbounds %struct.GPR, %struct.GPR* %2942, i32 0, i32 1
  %2944 = getelementptr inbounds %struct.Reg, %struct.Reg* %2943, i32 0, i32 0
  %RAX.i211 = bitcast %union.anon* %2944 to i64*
  %2945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2946 = getelementptr inbounds %struct.GPR, %struct.GPR* %2945, i32 0, i32 15
  %2947 = getelementptr inbounds %struct.Reg, %struct.Reg* %2946, i32 0, i32 0
  %RBP.i212 = bitcast %union.anon* %2947 to i64*
  %2948 = load i64, i64* %RBP.i212
  %2949 = sub i64 %2948, 8
  %2950 = load i64, i64* %PC.i210
  %2951 = add i64 %2950, 4
  store i64 %2951, i64* %PC.i210
  %2952 = inttoptr i64 %2949 to i64*
  %2953 = load i64, i64* %2952
  store i64 %2953, i64* %RAX.i211, align 8
  store %struct.Memory* %loadMem_402356, %struct.Memory** %MEMORY
  %loadMem_40235a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2955 = getelementptr inbounds %struct.GPR, %struct.GPR* %2954, i32 0, i32 33
  %2956 = getelementptr inbounds %struct.Reg, %struct.Reg* %2955, i32 0, i32 0
  %PC.i207 = bitcast %union.anon* %2956 to i64*
  %2957 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2958 = getelementptr inbounds %struct.GPR, %struct.GPR* %2957, i32 0, i32 1
  %2959 = getelementptr inbounds %struct.Reg, %struct.Reg* %2958, i32 0, i32 0
  %RAX.i208 = bitcast %union.anon* %2959 to i64*
  %2960 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2961 = getelementptr inbounds %struct.GPR, %struct.GPR* %2960, i32 0, i32 5
  %2962 = getelementptr inbounds %struct.Reg, %struct.Reg* %2961, i32 0, i32 0
  %RCX.i209 = bitcast %union.anon* %2962 to i64*
  %2963 = load i64, i64* %RAX.i208
  %2964 = add i64 %2963, 80
  %2965 = load i64, i64* %PC.i207
  %2966 = add i64 %2965, 3
  store i64 %2966, i64* %PC.i207
  %2967 = inttoptr i64 %2964 to i32*
  %2968 = load i32, i32* %2967
  %2969 = zext i32 %2968 to i64
  store i64 %2969, i64* %RCX.i209, align 8
  store %struct.Memory* %loadMem_40235a, %struct.Memory** %MEMORY
  %loadMem_40235d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2971 = getelementptr inbounds %struct.GPR, %struct.GPR* %2970, i32 0, i32 33
  %2972 = getelementptr inbounds %struct.Reg, %struct.Reg* %2971, i32 0, i32 0
  %PC.i205 = bitcast %union.anon* %2972 to i64*
  %2973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2974 = getelementptr inbounds %struct.GPR, %struct.GPR* %2973, i32 0, i32 5
  %2975 = getelementptr inbounds %struct.Reg, %struct.Reg* %2974, i32 0, i32 0
  %RCX.i206 = bitcast %union.anon* %2975 to i64*
  %2976 = load i64, i64* %RCX.i206
  %2977 = load i64, i64* %PC.i205
  %2978 = add i64 %2977, 3
  store i64 %2978, i64* %PC.i205
  %2979 = trunc i64 %2976 to i32
  %2980 = sub i32 %2979, 8
  %2981 = zext i32 %2980 to i64
  store i64 %2981, i64* %RCX.i206, align 8
  %2982 = icmp ult i32 %2979, 8
  %2983 = zext i1 %2982 to i8
  %2984 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2983, i8* %2984, align 1
  %2985 = and i32 %2980, 255
  %2986 = call i32 @llvm.ctpop.i32(i32 %2985)
  %2987 = trunc i32 %2986 to i8
  %2988 = and i8 %2987, 1
  %2989 = xor i8 %2988, 1
  %2990 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2989, i8* %2990, align 1
  %2991 = xor i64 8, %2976
  %2992 = trunc i64 %2991 to i32
  %2993 = xor i32 %2992, %2980
  %2994 = lshr i32 %2993, 4
  %2995 = trunc i32 %2994 to i8
  %2996 = and i8 %2995, 1
  %2997 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2996, i8* %2997, align 1
  %2998 = icmp eq i32 %2980, 0
  %2999 = zext i1 %2998 to i8
  %3000 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2999, i8* %3000, align 1
  %3001 = lshr i32 %2980, 31
  %3002 = trunc i32 %3001 to i8
  %3003 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3002, i8* %3003, align 1
  %3004 = lshr i32 %2979, 31
  %3005 = xor i32 %3001, %3004
  %3006 = add i32 %3005, %3004
  %3007 = icmp eq i32 %3006, 2
  %3008 = zext i1 %3007 to i8
  %3009 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3008, i8* %3009, align 1
  store %struct.Memory* %loadMem_40235d, %struct.Memory** %MEMORY
  %loadMem_402360 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3011 = getelementptr inbounds %struct.GPR, %struct.GPR* %3010, i32 0, i32 33
  %3012 = getelementptr inbounds %struct.Reg, %struct.Reg* %3011, i32 0, i32 0
  %PC.i202 = bitcast %union.anon* %3012 to i64*
  %3013 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3014 = getelementptr inbounds %struct.GPR, %struct.GPR* %3013, i32 0, i32 5
  %3015 = getelementptr inbounds %struct.Reg, %struct.Reg* %3014, i32 0, i32 0
  %ECX.i203 = bitcast %union.anon* %3015 to i32*
  %3016 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3017 = getelementptr inbounds %struct.GPR, %struct.GPR* %3016, i32 0, i32 1
  %3018 = getelementptr inbounds %struct.Reg, %struct.Reg* %3017, i32 0, i32 0
  %RAX.i204 = bitcast %union.anon* %3018 to i64*
  %3019 = load i64, i64* %RAX.i204
  %3020 = add i64 %3019, 80
  %3021 = load i32, i32* %ECX.i203
  %3022 = zext i32 %3021 to i64
  %3023 = load i64, i64* %PC.i202
  %3024 = add i64 %3023, 3
  store i64 %3024, i64* %PC.i202
  %3025 = inttoptr i64 %3020 to i32*
  store i32 %3021, i32* %3025
  store %struct.Memory* %loadMem_402360, %struct.Memory** %MEMORY
  %loadMem_402363 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3027 = getelementptr inbounds %struct.GPR, %struct.GPR* %3026, i32 0, i32 33
  %3028 = getelementptr inbounds %struct.Reg, %struct.Reg* %3027, i32 0, i32 0
  %PC.i199 = bitcast %union.anon* %3028 to i64*
  %3029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3030 = getelementptr inbounds %struct.GPR, %struct.GPR* %3029, i32 0, i32 1
  %3031 = getelementptr inbounds %struct.Reg, %struct.Reg* %3030, i32 0, i32 0
  %RAX.i200 = bitcast %union.anon* %3031 to i64*
  %3032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3033 = getelementptr inbounds %struct.GPR, %struct.GPR* %3032, i32 0, i32 15
  %3034 = getelementptr inbounds %struct.Reg, %struct.Reg* %3033, i32 0, i32 0
  %RBP.i201 = bitcast %union.anon* %3034 to i64*
  %3035 = load i64, i64* %RBP.i201
  %3036 = sub i64 %3035, 8
  %3037 = load i64, i64* %PC.i199
  %3038 = add i64 %3037, 4
  store i64 %3038, i64* %PC.i199
  %3039 = inttoptr i64 %3036 to i64*
  %3040 = load i64, i64* %3039
  store i64 %3040, i64* %RAX.i200, align 8
  store %struct.Memory* %loadMem_402363, %struct.Memory** %MEMORY
  %loadMem_402367 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3042 = getelementptr inbounds %struct.GPR, %struct.GPR* %3041, i32 0, i32 33
  %3043 = getelementptr inbounds %struct.Reg, %struct.Reg* %3042, i32 0, i32 0
  %PC.i196 = bitcast %union.anon* %3043 to i64*
  %3044 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3045 = getelementptr inbounds %struct.GPR, %struct.GPR* %3044, i32 0, i32 1
  %3046 = getelementptr inbounds %struct.Reg, %struct.Reg* %3045, i32 0, i32 0
  %RAX.i197 = bitcast %union.anon* %3046 to i64*
  %3047 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3048 = getelementptr inbounds %struct.GPR, %struct.GPR* %3047, i32 0, i32 5
  %3049 = getelementptr inbounds %struct.Reg, %struct.Reg* %3048, i32 0, i32 0
  %RCX.i198 = bitcast %union.anon* %3049 to i64*
  %3050 = load i64, i64* %RAX.i197
  %3051 = add i64 %3050, 88
  %3052 = load i64, i64* %PC.i196
  %3053 = add i64 %3052, 3
  store i64 %3053, i64* %PC.i196
  %3054 = inttoptr i64 %3051 to i32*
  %3055 = load i32, i32* %3054
  %3056 = zext i32 %3055 to i64
  store i64 %3056, i64* %RCX.i198, align 8
  store %struct.Memory* %loadMem_402367, %struct.Memory** %MEMORY
  %loadMem_40236a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3057 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3058 = getelementptr inbounds %struct.GPR, %struct.GPR* %3057, i32 0, i32 33
  %3059 = getelementptr inbounds %struct.Reg, %struct.Reg* %3058, i32 0, i32 0
  %PC.i194 = bitcast %union.anon* %3059 to i64*
  %3060 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3061 = getelementptr inbounds %struct.GPR, %struct.GPR* %3060, i32 0, i32 5
  %3062 = getelementptr inbounds %struct.Reg, %struct.Reg* %3061, i32 0, i32 0
  %RCX.i195 = bitcast %union.anon* %3062 to i64*
  %3063 = load i64, i64* %RCX.i195
  %3064 = load i64, i64* %PC.i194
  %3065 = add i64 %3064, 3
  store i64 %3065, i64* %PC.i194
  %3066 = trunc i64 %3063 to i32
  %3067 = add i32 1, %3066
  %3068 = zext i32 %3067 to i64
  store i64 %3068, i64* %RCX.i195, align 8
  %3069 = icmp ult i32 %3067, %3066
  %3070 = icmp ult i32 %3067, 1
  %3071 = or i1 %3069, %3070
  %3072 = zext i1 %3071 to i8
  %3073 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3072, i8* %3073, align 1
  %3074 = and i32 %3067, 255
  %3075 = call i32 @llvm.ctpop.i32(i32 %3074)
  %3076 = trunc i32 %3075 to i8
  %3077 = and i8 %3076, 1
  %3078 = xor i8 %3077, 1
  %3079 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3078, i8* %3079, align 1
  %3080 = xor i64 1, %3063
  %3081 = trunc i64 %3080 to i32
  %3082 = xor i32 %3081, %3067
  %3083 = lshr i32 %3082, 4
  %3084 = trunc i32 %3083 to i8
  %3085 = and i8 %3084, 1
  %3086 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3085, i8* %3086, align 1
  %3087 = icmp eq i32 %3067, 0
  %3088 = zext i1 %3087 to i8
  %3089 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3088, i8* %3089, align 1
  %3090 = lshr i32 %3067, 31
  %3091 = trunc i32 %3090 to i8
  %3092 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3091, i8* %3092, align 1
  %3093 = lshr i32 %3066, 31
  %3094 = xor i32 %3090, %3093
  %3095 = add i32 %3094, %3090
  %3096 = icmp eq i32 %3095, 2
  %3097 = zext i1 %3096 to i8
  %3098 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3097, i8* %3098, align 1
  store %struct.Memory* %loadMem_40236a, %struct.Memory** %MEMORY
  %loadMem_40236d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3099 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3100 = getelementptr inbounds %struct.GPR, %struct.GPR* %3099, i32 0, i32 33
  %3101 = getelementptr inbounds %struct.Reg, %struct.Reg* %3100, i32 0, i32 0
  %PC.i191 = bitcast %union.anon* %3101 to i64*
  %3102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3103 = getelementptr inbounds %struct.GPR, %struct.GPR* %3102, i32 0, i32 5
  %3104 = getelementptr inbounds %struct.Reg, %struct.Reg* %3103, i32 0, i32 0
  %ECX.i192 = bitcast %union.anon* %3104 to i32*
  %3105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3106 = getelementptr inbounds %struct.GPR, %struct.GPR* %3105, i32 0, i32 1
  %3107 = getelementptr inbounds %struct.Reg, %struct.Reg* %3106, i32 0, i32 0
  %RAX.i193 = bitcast %union.anon* %3107 to i64*
  %3108 = load i64, i64* %RAX.i193
  %3109 = add i64 %3108, 88
  %3110 = load i32, i32* %ECX.i192
  %3111 = zext i32 %3110 to i64
  %3112 = load i64, i64* %PC.i191
  %3113 = add i64 %3112, 3
  store i64 %3113, i64* %PC.i191
  %3114 = inttoptr i64 %3109 to i32*
  store i32 %3110, i32* %3114
  store %struct.Memory* %loadMem_40236d, %struct.Memory** %MEMORY
  %loadMem_402370 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3116 = getelementptr inbounds %struct.GPR, %struct.GPR* %3115, i32 0, i32 33
  %3117 = getelementptr inbounds %struct.Reg, %struct.Reg* %3116, i32 0, i32 0
  %PC.i190 = bitcast %union.anon* %3117 to i64*
  %3118 = load i64, i64* %PC.i190
  %3119 = add i64 %3118, -40
  %3120 = load i64, i64* %PC.i190
  %3121 = add i64 %3120, 5
  store i64 %3121, i64* %PC.i190
  %3122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3119, i64* %3122, align 8
  store %struct.Memory* %loadMem_402370, %struct.Memory** %MEMORY
  br label %block_.L_402348

block_.L_402375:                                  ; preds = %block_.L_402348
  %loadMem_402375 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3124 = getelementptr inbounds %struct.GPR, %struct.GPR* %3123, i32 0, i32 33
  %3125 = getelementptr inbounds %struct.Reg, %struct.Reg* %3124, i32 0, i32 0
  %PC.i189 = bitcast %union.anon* %3125 to i64*
  %3126 = load i64, i64* %PC.i189
  %3127 = add i64 %3126, 5
  %3128 = load i64, i64* %PC.i189
  %3129 = add i64 %3128, 5
  store i64 %3129, i64* %PC.i189
  %3130 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3127, i64* %3130, align 8
  store %struct.Memory* %loadMem_402375, %struct.Memory** %MEMORY
  br label %block_.L_40237a

block_.L_40237a:                                  ; preds = %block_.L_402375, %block_4022e8
  %loadMem_40237a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3132 = getelementptr inbounds %struct.GPR, %struct.GPR* %3131, i32 0, i32 33
  %3133 = getelementptr inbounds %struct.Reg, %struct.Reg* %3132, i32 0, i32 0
  %PC.i188 = bitcast %union.anon* %3133 to i64*
  %3134 = load i64, i64* %PC.i188
  %3135 = add i64 %3134, 5
  %3136 = load i64, i64* %PC.i188
  %3137 = add i64 %3136, 5
  store i64 %3137, i64* %PC.i188
  %3138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3135, i64* %3138, align 8
  store %struct.Memory* %loadMem_40237a, %struct.Memory** %MEMORY
  br label %block_.L_40237f

block_.L_40237f:                                  ; preds = %block_.L_40242f, %block_.L_40237a
  %loadMem_40237f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3140 = getelementptr inbounds %struct.GPR, %struct.GPR* %3139, i32 0, i32 33
  %3141 = getelementptr inbounds %struct.Reg, %struct.Reg* %3140, i32 0, i32 0
  %PC.i185 = bitcast %union.anon* %3141 to i64*
  %3142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3143 = getelementptr inbounds %struct.GPR, %struct.GPR* %3142, i32 0, i32 1
  %3144 = getelementptr inbounds %struct.Reg, %struct.Reg* %3143, i32 0, i32 0
  %RAX.i186 = bitcast %union.anon* %3144 to i64*
  %3145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3146 = getelementptr inbounds %struct.GPR, %struct.GPR* %3145, i32 0, i32 15
  %3147 = getelementptr inbounds %struct.Reg, %struct.Reg* %3146, i32 0, i32 0
  %RBP.i187 = bitcast %union.anon* %3147 to i64*
  %3148 = load i64, i64* %RBP.i187
  %3149 = sub i64 %3148, 8
  %3150 = load i64, i64* %PC.i185
  %3151 = add i64 %3150, 4
  store i64 %3151, i64* %PC.i185
  %3152 = inttoptr i64 %3149 to i64*
  %3153 = load i64, i64* %3152
  store i64 %3153, i64* %RAX.i186, align 8
  store %struct.Memory* %loadMem_40237f, %struct.Memory** %MEMORY
  %loadMem_402383 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3155 = getelementptr inbounds %struct.GPR, %struct.GPR* %3154, i32 0, i32 33
  %3156 = getelementptr inbounds %struct.Reg, %struct.Reg* %3155, i32 0, i32 0
  %PC.i183 = bitcast %union.anon* %3156 to i64*
  %3157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3158 = getelementptr inbounds %struct.GPR, %struct.GPR* %3157, i32 0, i32 1
  %3159 = getelementptr inbounds %struct.Reg, %struct.Reg* %3158, i32 0, i32 0
  %RAX.i184 = bitcast %union.anon* %3159 to i64*
  %3160 = load i64, i64* %RAX.i184
  %3161 = add i64 %3160, 16
  %3162 = load i64, i64* %PC.i183
  %3163 = add i64 %3162, 4
  store i64 %3163, i64* %PC.i183
  %3164 = inttoptr i64 %3161 to i32*
  %3165 = load i32, i32* %3164
  %3166 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3166, align 1
  %3167 = and i32 %3165, 255
  %3168 = call i32 @llvm.ctpop.i32(i32 %3167)
  %3169 = trunc i32 %3168 to i8
  %3170 = and i8 %3169, 1
  %3171 = xor i8 %3170, 1
  %3172 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3171, i8* %3172, align 1
  %3173 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3173, align 1
  %3174 = icmp eq i32 %3165, 0
  %3175 = zext i1 %3174 to i8
  %3176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3175, i8* %3176, align 1
  %3177 = lshr i32 %3165, 31
  %3178 = trunc i32 %3177 to i8
  %3179 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3178, i8* %3179, align 1
  %3180 = lshr i32 %3165, 31
  %3181 = xor i32 %3177, %3180
  %3182 = add i32 %3181, %3180
  %3183 = icmp eq i32 %3182, 2
  %3184 = zext i1 %3183 to i8
  %3185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3184, i8* %3185, align 1
  store %struct.Memory* %loadMem_402383, %struct.Memory** %MEMORY
  %loadMem_402387 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3187 = getelementptr inbounds %struct.GPR, %struct.GPR* %3186, i32 0, i32 33
  %3188 = getelementptr inbounds %struct.Reg, %struct.Reg* %3187, i32 0, i32 0
  %PC.i182 = bitcast %union.anon* %3188 to i64*
  %3189 = load i64, i64* %PC.i182
  %3190 = add i64 %3189, 173
  %3191 = load i64, i64* %PC.i182
  %3192 = add i64 %3191, 6
  %3193 = load i64, i64* %PC.i182
  %3194 = add i64 %3193, 6
  store i64 %3194, i64* %PC.i182
  %3195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %3196 = load i8, i8* %3195, align 1
  %3197 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3198 = load i8, i8* %3197, align 1
  %3199 = or i8 %3198, %3196
  %3200 = icmp ne i8 %3199, 0
  %3201 = zext i1 %3200 to i8
  store i8 %3201, i8* %BRANCH_TAKEN, align 1
  %3202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3203 = select i1 %3200, i64 %3190, i64 %3192
  store i64 %3203, i64* %3202, align 8
  store %struct.Memory* %loadMem_402387, %struct.Memory** %MEMORY
  %loadBr_402387 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_402387 = icmp eq i8 %loadBr_402387, 1
  br i1 %cmpBr_402387, label %block_.L_402434, label %block_40238d

block_40238d:                                     ; preds = %block_.L_40237f
  %loadMem_40238d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3205 = getelementptr inbounds %struct.GPR, %struct.GPR* %3204, i32 0, i32 33
  %3206 = getelementptr inbounds %struct.Reg, %struct.Reg* %3205, i32 0, i32 0
  %PC.i179 = bitcast %union.anon* %3206 to i64*
  %3207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3208 = getelementptr inbounds %struct.GPR, %struct.GPR* %3207, i32 0, i32 1
  %3209 = getelementptr inbounds %struct.Reg, %struct.Reg* %3208, i32 0, i32 0
  %RAX.i180 = bitcast %union.anon* %3209 to i64*
  %3210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3211 = getelementptr inbounds %struct.GPR, %struct.GPR* %3210, i32 0, i32 15
  %3212 = getelementptr inbounds %struct.Reg, %struct.Reg* %3211, i32 0, i32 0
  %RBP.i181 = bitcast %union.anon* %3212 to i64*
  %3213 = load i64, i64* %RBP.i181
  %3214 = sub i64 %3213, 8
  %3215 = load i64, i64* %PC.i179
  %3216 = add i64 %3215, 4
  store i64 %3216, i64* %PC.i179
  %3217 = inttoptr i64 %3214 to i64*
  %3218 = load i64, i64* %3217
  store i64 %3218, i64* %RAX.i180, align 8
  store %struct.Memory* %loadMem_40238d, %struct.Memory** %MEMORY
  %loadMem_402391 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3220 = getelementptr inbounds %struct.GPR, %struct.GPR* %3219, i32 0, i32 33
  %3221 = getelementptr inbounds %struct.Reg, %struct.Reg* %3220, i32 0, i32 0
  %PC.i176 = bitcast %union.anon* %3221 to i64*
  %3222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3223 = getelementptr inbounds %struct.GPR, %struct.GPR* %3222, i32 0, i32 1
  %3224 = getelementptr inbounds %struct.Reg, %struct.Reg* %3223, i32 0, i32 0
  %RAX.i177 = bitcast %union.anon* %3224 to i64*
  %3225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3226 = getelementptr inbounds %struct.GPR, %struct.GPR* %3225, i32 0, i32 5
  %3227 = getelementptr inbounds %struct.Reg, %struct.Reg* %3226, i32 0, i32 0
  %RCX.i178 = bitcast %union.anon* %3227 to i64*
  %3228 = load i64, i64* %RAX.i177
  %3229 = add i64 %3228, 16
  %3230 = load i64, i64* %PC.i176
  %3231 = add i64 %3230, 3
  store i64 %3231, i64* %PC.i176
  %3232 = inttoptr i64 %3229 to i32*
  %3233 = load i32, i32* %3232
  %3234 = zext i32 %3233 to i64
  store i64 %3234, i64* %RCX.i178, align 8
  store %struct.Memory* %loadMem_402391, %struct.Memory** %MEMORY
  %loadMem_402394 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3236 = getelementptr inbounds %struct.GPR, %struct.GPR* %3235, i32 0, i32 33
  %3237 = getelementptr inbounds %struct.Reg, %struct.Reg* %3236, i32 0, i32 0
  %PC.i174 = bitcast %union.anon* %3237 to i64*
  %3238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3239 = getelementptr inbounds %struct.GPR, %struct.GPR* %3238, i32 0, i32 5
  %3240 = getelementptr inbounds %struct.Reg, %struct.Reg* %3239, i32 0, i32 0
  %RCX.i175 = bitcast %union.anon* %3240 to i64*
  %3241 = load i64, i64* %RCX.i175
  %3242 = load i64, i64* %PC.i174
  %3243 = add i64 %3242, 3
  store i64 %3243, i64* %PC.i174
  %3244 = trunc i64 %3241 to i32
  %3245 = add i32 -1, %3244
  %3246 = zext i32 %3245 to i64
  store i64 %3246, i64* %RCX.i175, align 8
  %3247 = icmp ult i32 %3245, %3244
  %3248 = icmp ult i32 %3245, -1
  %3249 = or i1 %3247, %3248
  %3250 = zext i1 %3249 to i8
  %3251 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3250, i8* %3251, align 1
  %3252 = and i32 %3245, 255
  %3253 = call i32 @llvm.ctpop.i32(i32 %3252)
  %3254 = trunc i32 %3253 to i8
  %3255 = and i8 %3254, 1
  %3256 = xor i8 %3255, 1
  %3257 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3256, i8* %3257, align 1
  %3258 = xor i64 -1, %3241
  %3259 = trunc i64 %3258 to i32
  %3260 = xor i32 %3259, %3245
  %3261 = lshr i32 %3260, 4
  %3262 = trunc i32 %3261 to i8
  %3263 = and i8 %3262, 1
  %3264 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3263, i8* %3264, align 1
  %3265 = icmp eq i32 %3245, 0
  %3266 = zext i1 %3265 to i8
  %3267 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3266, i8* %3267, align 1
  %3268 = lshr i32 %3245, 31
  %3269 = trunc i32 %3268 to i8
  %3270 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3269, i8* %3270, align 1
  %3271 = lshr i32 %3244, 31
  %3272 = xor i32 %3268, %3271
  %3273 = xor i32 %3268, 1
  %3274 = add i32 %3272, %3273
  %3275 = icmp eq i32 %3274, 2
  %3276 = zext i1 %3275 to i8
  %3277 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3276, i8* %3277, align 1
  store %struct.Memory* %loadMem_402394, %struct.Memory** %MEMORY
  %loadMem_402397 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3279 = getelementptr inbounds %struct.GPR, %struct.GPR* %3278, i32 0, i32 33
  %3280 = getelementptr inbounds %struct.Reg, %struct.Reg* %3279, i32 0, i32 0
  %PC.i171 = bitcast %union.anon* %3280 to i64*
  %3281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3282 = getelementptr inbounds %struct.GPR, %struct.GPR* %3281, i32 0, i32 5
  %3283 = getelementptr inbounds %struct.Reg, %struct.Reg* %3282, i32 0, i32 0
  %ECX.i172 = bitcast %union.anon* %3283 to i32*
  %3284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3285 = getelementptr inbounds %struct.GPR, %struct.GPR* %3284, i32 0, i32 1
  %3286 = getelementptr inbounds %struct.Reg, %struct.Reg* %3285, i32 0, i32 0
  %RAX.i173 = bitcast %union.anon* %3286 to i64*
  %3287 = load i64, i64* %RAX.i173
  %3288 = add i64 %3287, 16
  %3289 = load i32, i32* %ECX.i172
  %3290 = zext i32 %3289 to i64
  %3291 = load i64, i64* %PC.i171
  %3292 = add i64 %3291, 3
  store i64 %3292, i64* %PC.i171
  %3293 = inttoptr i64 %3288 to i32*
  store i32 %3289, i32* %3293
  store %struct.Memory* %loadMem_402397, %struct.Memory** %MEMORY
  %loadMem_40239a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3295 = getelementptr inbounds %struct.GPR, %struct.GPR* %3294, i32 0, i32 33
  %3296 = getelementptr inbounds %struct.Reg, %struct.Reg* %3295, i32 0, i32 0
  %PC.i168 = bitcast %union.anon* %3296 to i64*
  %3297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3298 = getelementptr inbounds %struct.GPR, %struct.GPR* %3297, i32 0, i32 1
  %3299 = getelementptr inbounds %struct.Reg, %struct.Reg* %3298, i32 0, i32 0
  %RAX.i169 = bitcast %union.anon* %3299 to i64*
  %3300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3301 = getelementptr inbounds %struct.GPR, %struct.GPR* %3300, i32 0, i32 15
  %3302 = getelementptr inbounds %struct.Reg, %struct.Reg* %3301, i32 0, i32 0
  %RBP.i170 = bitcast %union.anon* %3302 to i64*
  %3303 = load i64, i64* %RBP.i170
  %3304 = sub i64 %3303, 8
  %3305 = load i64, i64* %PC.i168
  %3306 = add i64 %3305, 4
  store i64 %3306, i64* %PC.i168
  %3307 = inttoptr i64 %3304 to i64*
  %3308 = load i64, i64* %3307
  store i64 %3308, i64* %RAX.i169, align 8
  store %struct.Memory* %loadMem_40239a, %struct.Memory** %MEMORY
  %loadMem_40239e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3310 = getelementptr inbounds %struct.GPR, %struct.GPR* %3309, i32 0, i32 33
  %3311 = getelementptr inbounds %struct.Reg, %struct.Reg* %3310, i32 0, i32 0
  %PC.i165 = bitcast %union.anon* %3311 to i64*
  %3312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3313 = getelementptr inbounds %struct.GPR, %struct.GPR* %3312, i32 0, i32 1
  %3314 = getelementptr inbounds %struct.Reg, %struct.Reg* %3313, i32 0, i32 0
  %RAX.i166 = bitcast %union.anon* %3314 to i64*
  %3315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3316 = getelementptr inbounds %struct.GPR, %struct.GPR* %3315, i32 0, i32 5
  %3317 = getelementptr inbounds %struct.Reg, %struct.Reg* %3316, i32 0, i32 0
  %RCX.i167 = bitcast %union.anon* %3317 to i64*
  %3318 = load i64, i64* %RAX.i166
  %3319 = add i64 %3318, 8
  %3320 = load i64, i64* %PC.i165
  %3321 = add i64 %3320, 3
  store i64 %3321, i64* %PC.i165
  %3322 = inttoptr i64 %3319 to i32*
  %3323 = load i32, i32* %3322
  %3324 = zext i32 %3323 to i64
  store i64 %3324, i64* %RCX.i167, align 8
  store %struct.Memory* %loadMem_40239e, %struct.Memory** %MEMORY
  %loadMem_4023a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3326 = getelementptr inbounds %struct.GPR, %struct.GPR* %3325, i32 0, i32 33
  %3327 = getelementptr inbounds %struct.Reg, %struct.Reg* %3326, i32 0, i32 0
  %PC.i163 = bitcast %union.anon* %3327 to i64*
  %3328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3329 = getelementptr inbounds %struct.GPR, %struct.GPR* %3328, i32 0, i32 5
  %3330 = getelementptr inbounds %struct.Reg, %struct.Reg* %3329, i32 0, i32 0
  %RCX.i164 = bitcast %union.anon* %3330 to i64*
  %3331 = load i64, i64* %RCX.i164
  %3332 = load i64, i64* %PC.i163
  %3333 = add i64 %3332, 2
  store i64 %3333, i64* %PC.i163
  %3334 = trunc i64 %3331 to i32
  %3335 = shl i32 %3334, 1
  %3336 = icmp slt i32 %3334, 0
  %3337 = icmp slt i32 %3335, 0
  %3338 = xor i1 %3336, %3337
  %3339 = zext i32 %3335 to i64
  store i64 %3339, i64* %RCX.i164, align 8
  %3340 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %3341 = zext i1 %3336 to i8
  store i8 %3341, i8* %3340, align 1
  %3342 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %3343 = and i32 %3335, 254
  %3344 = call i32 @llvm.ctpop.i32(i32 %3343)
  %3345 = trunc i32 %3344 to i8
  %3346 = and i8 %3345, 1
  %3347 = xor i8 %3346, 1
  store i8 %3347, i8* %3342, align 1
  %3348 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3348, align 1
  %3349 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3350 = icmp eq i32 %3335, 0
  %3351 = zext i1 %3350 to i8
  store i8 %3351, i8* %3349, align 1
  %3352 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3353 = lshr i32 %3335, 31
  %3354 = trunc i32 %3353 to i8
  store i8 %3354, i8* %3352, align 1
  %3355 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3356 = zext i1 %3338 to i8
  store i8 %3356, i8* %3355, align 1
  store %struct.Memory* %loadMem_4023a1, %struct.Memory** %MEMORY
  %loadMem_4023a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3358 = getelementptr inbounds %struct.GPR, %struct.GPR* %3357, i32 0, i32 33
  %3359 = getelementptr inbounds %struct.Reg, %struct.Reg* %3358, i32 0, i32 0
  %PC.i160 = bitcast %union.anon* %3359 to i64*
  %3360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3361 = getelementptr inbounds %struct.GPR, %struct.GPR* %3360, i32 0, i32 5
  %3362 = getelementptr inbounds %struct.Reg, %struct.Reg* %3361, i32 0, i32 0
  %ECX.i161 = bitcast %union.anon* %3362 to i32*
  %3363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3364 = getelementptr inbounds %struct.GPR, %struct.GPR* %3363, i32 0, i32 1
  %3365 = getelementptr inbounds %struct.Reg, %struct.Reg* %3364, i32 0, i32 0
  %RAX.i162 = bitcast %union.anon* %3365 to i64*
  %3366 = load i64, i64* %RAX.i162
  %3367 = add i64 %3366, 8
  %3368 = load i32, i32* %ECX.i161
  %3369 = zext i32 %3368 to i64
  %3370 = load i64, i64* %PC.i160
  %3371 = add i64 %3370, 3
  store i64 %3371, i64* %PC.i160
  %3372 = inttoptr i64 %3367 to i32*
  store i32 %3368, i32* %3372
  store %struct.Memory* %loadMem_4023a4, %struct.Memory** %MEMORY
  %loadMem_4023a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3374 = getelementptr inbounds %struct.GPR, %struct.GPR* %3373, i32 0, i32 33
  %3375 = getelementptr inbounds %struct.Reg, %struct.Reg* %3374, i32 0, i32 0
  %PC.i157 = bitcast %union.anon* %3375 to i64*
  %3376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3377 = getelementptr inbounds %struct.GPR, %struct.GPR* %3376, i32 0, i32 1
  %3378 = getelementptr inbounds %struct.Reg, %struct.Reg* %3377, i32 0, i32 0
  %RAX.i158 = bitcast %union.anon* %3378 to i64*
  %3379 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3380 = getelementptr inbounds %struct.GPR, %struct.GPR* %3379, i32 0, i32 15
  %3381 = getelementptr inbounds %struct.Reg, %struct.Reg* %3380, i32 0, i32 0
  %RBP.i159 = bitcast %union.anon* %3381 to i64*
  %3382 = load i64, i64* %RBP.i159
  %3383 = sub i64 %3382, 8
  %3384 = load i64, i64* %PC.i157
  %3385 = add i64 %3384, 4
  store i64 %3385, i64* %PC.i157
  %3386 = inttoptr i64 %3383 to i64*
  %3387 = load i64, i64* %3386
  store i64 %3387, i64* %RAX.i158, align 8
  store %struct.Memory* %loadMem_4023a7, %struct.Memory** %MEMORY
  %loadMem_4023ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %3388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3389 = getelementptr inbounds %struct.GPR, %struct.GPR* %3388, i32 0, i32 33
  %3390 = getelementptr inbounds %struct.Reg, %struct.Reg* %3389, i32 0, i32 0
  %PC.i154 = bitcast %union.anon* %3390 to i64*
  %3391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3392 = getelementptr inbounds %struct.GPR, %struct.GPR* %3391, i32 0, i32 1
  %3393 = getelementptr inbounds %struct.Reg, %struct.Reg* %3392, i32 0, i32 0
  %RAX.i155 = bitcast %union.anon* %3393 to i64*
  %3394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3395 = getelementptr inbounds %struct.GPR, %struct.GPR* %3394, i32 0, i32 5
  %3396 = getelementptr inbounds %struct.Reg, %struct.Reg* %3395, i32 0, i32 0
  %RCX.i156 = bitcast %union.anon* %3396 to i64*
  %3397 = load i64, i64* %RAX.i155
  %3398 = add i64 %3397, 8
  %3399 = load i64, i64* %PC.i154
  %3400 = add i64 %3399, 3
  store i64 %3400, i64* %PC.i154
  %3401 = inttoptr i64 %3398 to i32*
  %3402 = load i32, i32* %3401
  %3403 = zext i32 %3402 to i64
  store i64 %3403, i64* %RCX.i156, align 8
  store %struct.Memory* %loadMem_4023ab, %struct.Memory** %MEMORY
  %loadMem_4023ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %3404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3405 = getelementptr inbounds %struct.GPR, %struct.GPR* %3404, i32 0, i32 33
  %3406 = getelementptr inbounds %struct.Reg, %struct.Reg* %3405, i32 0, i32 0
  %PC.i152 = bitcast %union.anon* %3406 to i64*
  %3407 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3408 = getelementptr inbounds %struct.GPR, %struct.GPR* %3407, i32 0, i32 5
  %3409 = getelementptr inbounds %struct.Reg, %struct.Reg* %3408, i32 0, i32 0
  %RCX.i153 = bitcast %union.anon* %3409 to i64*
  %3410 = load i64, i64* %RCX.i153
  %3411 = load i64, i64* %PC.i152
  %3412 = add i64 %3411, 3
  store i64 %3412, i64* %PC.i152
  %3413 = or i64 1, %3410
  %3414 = trunc i64 %3413 to i32
  %3415 = and i64 %3413, 4294967295
  store i64 %3415, i64* %RCX.i153, align 8
  %3416 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3416, align 1
  %3417 = and i32 %3414, 255
  %3418 = call i32 @llvm.ctpop.i32(i32 %3417)
  %3419 = trunc i32 %3418 to i8
  %3420 = and i8 %3419, 1
  %3421 = xor i8 %3420, 1
  %3422 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3421, i8* %3422, align 1
  %3423 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3423, align 1
  %3424 = lshr i32 %3414, 31
  %3425 = trunc i32 %3424 to i8
  %3426 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3425, i8* %3426, align 1
  %3427 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3427, align 1
  %3428 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3428, align 1
  store %struct.Memory* %loadMem_4023ae, %struct.Memory** %MEMORY
  %loadMem_4023b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3430 = getelementptr inbounds %struct.GPR, %struct.GPR* %3429, i32 0, i32 33
  %3431 = getelementptr inbounds %struct.Reg, %struct.Reg* %3430, i32 0, i32 0
  %PC.i149 = bitcast %union.anon* %3431 to i64*
  %3432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3433 = getelementptr inbounds %struct.GPR, %struct.GPR* %3432, i32 0, i32 5
  %3434 = getelementptr inbounds %struct.Reg, %struct.Reg* %3433, i32 0, i32 0
  %ECX.i150 = bitcast %union.anon* %3434 to i32*
  %3435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3436 = getelementptr inbounds %struct.GPR, %struct.GPR* %3435, i32 0, i32 1
  %3437 = getelementptr inbounds %struct.Reg, %struct.Reg* %3436, i32 0, i32 0
  %RAX.i151 = bitcast %union.anon* %3437 to i64*
  %3438 = load i64, i64* %RAX.i151
  %3439 = add i64 %3438, 8
  %3440 = load i32, i32* %ECX.i150
  %3441 = zext i32 %3440 to i64
  %3442 = load i64, i64* %PC.i149
  %3443 = add i64 %3442, 3
  store i64 %3443, i64* %PC.i149
  %3444 = inttoptr i64 %3439 to i32*
  store i32 %3440, i32* %3444
  store %struct.Memory* %loadMem_4023b1, %struct.Memory** %MEMORY
  %loadMem_4023b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3446 = getelementptr inbounds %struct.GPR, %struct.GPR* %3445, i32 0, i32 33
  %3447 = getelementptr inbounds %struct.Reg, %struct.Reg* %3446, i32 0, i32 0
  %PC.i146 = bitcast %union.anon* %3447 to i64*
  %3448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3449 = getelementptr inbounds %struct.GPR, %struct.GPR* %3448, i32 0, i32 1
  %3450 = getelementptr inbounds %struct.Reg, %struct.Reg* %3449, i32 0, i32 0
  %RAX.i147 = bitcast %union.anon* %3450 to i64*
  %3451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3452 = getelementptr inbounds %struct.GPR, %struct.GPR* %3451, i32 0, i32 15
  %3453 = getelementptr inbounds %struct.Reg, %struct.Reg* %3452, i32 0, i32 0
  %RBP.i148 = bitcast %union.anon* %3453 to i64*
  %3454 = load i64, i64* %RBP.i148
  %3455 = sub i64 %3454, 8
  %3456 = load i64, i64* %PC.i146
  %3457 = add i64 %3456, 4
  store i64 %3457, i64* %PC.i146
  %3458 = inttoptr i64 %3455 to i64*
  %3459 = load i64, i64* %3458
  store i64 %3459, i64* %RAX.i147, align 8
  store %struct.Memory* %loadMem_4023b4, %struct.Memory** %MEMORY
  %loadMem_4023b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3460 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3461 = getelementptr inbounds %struct.GPR, %struct.GPR* %3460, i32 0, i32 33
  %3462 = getelementptr inbounds %struct.Reg, %struct.Reg* %3461, i32 0, i32 0
  %PC.i143 = bitcast %union.anon* %3462 to i64*
  %3463 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3464 = getelementptr inbounds %struct.GPR, %struct.GPR* %3463, i32 0, i32 1
  %3465 = getelementptr inbounds %struct.Reg, %struct.Reg* %3464, i32 0, i32 0
  %RAX.i144 = bitcast %union.anon* %3465 to i64*
  %3466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3467 = getelementptr inbounds %struct.GPR, %struct.GPR* %3466, i32 0, i32 5
  %3468 = getelementptr inbounds %struct.Reg, %struct.Reg* %3467, i32 0, i32 0
  %RCX.i145 = bitcast %union.anon* %3468 to i64*
  %3469 = load i64, i64* %RAX.i144
  %3470 = add i64 %3469, 12
  %3471 = load i64, i64* %PC.i143
  %3472 = add i64 %3471, 3
  store i64 %3472, i64* %PC.i143
  %3473 = inttoptr i64 %3470 to i32*
  %3474 = load i32, i32* %3473
  %3475 = zext i32 %3474 to i64
  store i64 %3475, i64* %RCX.i145, align 8
  store %struct.Memory* %loadMem_4023b8, %struct.Memory** %MEMORY
  %loadMem_4023bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %3476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3477 = getelementptr inbounds %struct.GPR, %struct.GPR* %3476, i32 0, i32 33
  %3478 = getelementptr inbounds %struct.Reg, %struct.Reg* %3477, i32 0, i32 0
  %PC.i141 = bitcast %union.anon* %3478 to i64*
  %3479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3480 = getelementptr inbounds %struct.GPR, %struct.GPR* %3479, i32 0, i32 5
  %3481 = getelementptr inbounds %struct.Reg, %struct.Reg* %3480, i32 0, i32 0
  %RCX.i142 = bitcast %union.anon* %3481 to i64*
  %3482 = load i64, i64* %RCX.i142
  %3483 = load i64, i64* %PC.i141
  %3484 = add i64 %3483, 3
  store i64 %3484, i64* %PC.i141
  %3485 = trunc i64 %3482 to i32
  %3486 = add i32 -1, %3485
  %3487 = zext i32 %3486 to i64
  store i64 %3487, i64* %RCX.i142, align 8
  %3488 = icmp ult i32 %3486, %3485
  %3489 = icmp ult i32 %3486, -1
  %3490 = or i1 %3488, %3489
  %3491 = zext i1 %3490 to i8
  %3492 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3491, i8* %3492, align 1
  %3493 = and i32 %3486, 255
  %3494 = call i32 @llvm.ctpop.i32(i32 %3493)
  %3495 = trunc i32 %3494 to i8
  %3496 = and i8 %3495, 1
  %3497 = xor i8 %3496, 1
  %3498 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3497, i8* %3498, align 1
  %3499 = xor i64 -1, %3482
  %3500 = trunc i64 %3499 to i32
  %3501 = xor i32 %3500, %3486
  %3502 = lshr i32 %3501, 4
  %3503 = trunc i32 %3502 to i8
  %3504 = and i8 %3503, 1
  %3505 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3504, i8* %3505, align 1
  %3506 = icmp eq i32 %3486, 0
  %3507 = zext i1 %3506 to i8
  %3508 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3507, i8* %3508, align 1
  %3509 = lshr i32 %3486, 31
  %3510 = trunc i32 %3509 to i8
  %3511 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3510, i8* %3511, align 1
  %3512 = lshr i32 %3485, 31
  %3513 = xor i32 %3509, %3512
  %3514 = xor i32 %3509, 1
  %3515 = add i32 %3513, %3514
  %3516 = icmp eq i32 %3515, 2
  %3517 = zext i1 %3516 to i8
  %3518 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3517, i8* %3518, align 1
  store %struct.Memory* %loadMem_4023bb, %struct.Memory** %MEMORY
  %loadMem_4023be = load %struct.Memory*, %struct.Memory** %MEMORY
  %3519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3520 = getelementptr inbounds %struct.GPR, %struct.GPR* %3519, i32 0, i32 33
  %3521 = getelementptr inbounds %struct.Reg, %struct.Reg* %3520, i32 0, i32 0
  %PC.i138 = bitcast %union.anon* %3521 to i64*
  %3522 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3523 = getelementptr inbounds %struct.GPR, %struct.GPR* %3522, i32 0, i32 5
  %3524 = getelementptr inbounds %struct.Reg, %struct.Reg* %3523, i32 0, i32 0
  %ECX.i139 = bitcast %union.anon* %3524 to i32*
  %3525 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3526 = getelementptr inbounds %struct.GPR, %struct.GPR* %3525, i32 0, i32 1
  %3527 = getelementptr inbounds %struct.Reg, %struct.Reg* %3526, i32 0, i32 0
  %RAX.i140 = bitcast %union.anon* %3527 to i64*
  %3528 = load i64, i64* %RAX.i140
  %3529 = add i64 %3528, 12
  %3530 = load i32, i32* %ECX.i139
  %3531 = zext i32 %3530 to i64
  %3532 = load i64, i64* %PC.i138
  %3533 = add i64 %3532, 3
  store i64 %3533, i64* %PC.i138
  %3534 = inttoptr i64 %3529 to i32*
  store i32 %3530, i32* %3534
  store %struct.Memory* %loadMem_4023be, %struct.Memory** %MEMORY
  %loadMem_4023c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3536 = getelementptr inbounds %struct.GPR, %struct.GPR* %3535, i32 0, i32 33
  %3537 = getelementptr inbounds %struct.Reg, %struct.Reg* %3536, i32 0, i32 0
  %PC.i136 = bitcast %union.anon* %3537 to i64*
  %3538 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3539 = getelementptr inbounds %struct.GPR, %struct.GPR* %3538, i32 0, i32 5
  %3540 = getelementptr inbounds %struct.Reg, %struct.Reg* %3539, i32 0, i32 0
  %ECX.i137 = bitcast %union.anon* %3540 to i32*
  %3541 = load i32, i32* %ECX.i137
  %3542 = zext i32 %3541 to i64
  %3543 = load i64, i64* %PC.i136
  %3544 = add i64 %3543, 3
  store i64 %3544, i64* %PC.i136
  %3545 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3545, align 1
  %3546 = and i32 %3541, 255
  %3547 = call i32 @llvm.ctpop.i32(i32 %3546)
  %3548 = trunc i32 %3547 to i8
  %3549 = and i8 %3548, 1
  %3550 = xor i8 %3549, 1
  %3551 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3550, i8* %3551, align 1
  %3552 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3552, align 1
  %3553 = icmp eq i32 %3541, 0
  %3554 = zext i1 %3553 to i8
  %3555 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3554, i8* %3555, align 1
  %3556 = lshr i32 %3541, 31
  %3557 = trunc i32 %3556 to i8
  %3558 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3557, i8* %3558, align 1
  %3559 = lshr i32 %3541, 31
  %3560 = xor i32 %3556, %3559
  %3561 = add i32 %3560, %3559
  %3562 = icmp eq i32 %3561, 2
  %3563 = zext i1 %3562 to i8
  %3564 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3563, i8* %3564, align 1
  store %struct.Memory* %loadMem_4023c1, %struct.Memory** %MEMORY
  %loadMem_4023c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3566 = getelementptr inbounds %struct.GPR, %struct.GPR* %3565, i32 0, i32 33
  %3567 = getelementptr inbounds %struct.Reg, %struct.Reg* %3566, i32 0, i32 0
  %PC.i135 = bitcast %union.anon* %3567 to i64*
  %3568 = load i64, i64* %PC.i135
  %3569 = add i64 %3568, 107
  %3570 = load i64, i64* %PC.i135
  %3571 = add i64 %3570, 6
  %3572 = load i64, i64* %PC.i135
  %3573 = add i64 %3572, 6
  store i64 %3573, i64* %PC.i135
  %3574 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3575 = load i8, i8* %3574, align 1
  %3576 = icmp eq i8 %3575, 0
  %3577 = zext i1 %3576 to i8
  store i8 %3577, i8* %BRANCH_TAKEN, align 1
  %3578 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3579 = select i1 %3576, i64 %3569, i64 %3571
  store i64 %3579, i64* %3578, align 8
  store %struct.Memory* %loadMem_4023c4, %struct.Memory** %MEMORY
  %loadBr_4023c4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4023c4 = icmp eq i8 %loadBr_4023c4, 1
  br i1 %cmpBr_4023c4, label %block_.L_40242f, label %block_4023ca

block_4023ca:                                     ; preds = %block_40238d
  %loadMem_4023ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %3580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3581 = getelementptr inbounds %struct.GPR, %struct.GPR* %3580, i32 0, i32 33
  %3582 = getelementptr inbounds %struct.Reg, %struct.Reg* %3581, i32 0, i32 0
  %PC.i132 = bitcast %union.anon* %3582 to i64*
  %3583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3584 = getelementptr inbounds %struct.GPR, %struct.GPR* %3583, i32 0, i32 1
  %3585 = getelementptr inbounds %struct.Reg, %struct.Reg* %3584, i32 0, i32 0
  %RAX.i133 = bitcast %union.anon* %3585 to i64*
  %3586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3587 = getelementptr inbounds %struct.GPR, %struct.GPR* %3586, i32 0, i32 15
  %3588 = getelementptr inbounds %struct.Reg, %struct.Reg* %3587, i32 0, i32 0
  %RBP.i134 = bitcast %union.anon* %3588 to i64*
  %3589 = load i64, i64* %RBP.i134
  %3590 = sub i64 %3589, 8
  %3591 = load i64, i64* %PC.i132
  %3592 = add i64 %3591, 4
  store i64 %3592, i64* %PC.i132
  %3593 = inttoptr i64 %3590 to i64*
  %3594 = load i64, i64* %3593
  store i64 %3594, i64* %RAX.i133, align 8
  store %struct.Memory* %loadMem_4023ca, %struct.Memory** %MEMORY
  %loadMem_4023ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %3595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3596 = getelementptr inbounds %struct.GPR, %struct.GPR* %3595, i32 0, i32 33
  %3597 = getelementptr inbounds %struct.Reg, %struct.Reg* %3596, i32 0, i32 0
  %PC.i129 = bitcast %union.anon* %3597 to i64*
  %3598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3599 = getelementptr inbounds %struct.GPR, %struct.GPR* %3598, i32 0, i32 1
  %3600 = getelementptr inbounds %struct.Reg, %struct.Reg* %3599, i32 0, i32 0
  %RAX.i130 = bitcast %union.anon* %3600 to i64*
  %3601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3602 = getelementptr inbounds %struct.GPR, %struct.GPR* %3601, i32 0, i32 5
  %3603 = getelementptr inbounds %struct.Reg, %struct.Reg* %3602, i32 0, i32 0
  %RCX.i131 = bitcast %union.anon* %3603 to i64*
  %3604 = load i64, i64* %RAX.i130
  %3605 = add i64 %3604, 8
  %3606 = load i64, i64* %PC.i129
  %3607 = add i64 %3606, 3
  store i64 %3607, i64* %PC.i129
  %3608 = inttoptr i64 %3605 to i32*
  %3609 = load i32, i32* %3608
  %3610 = zext i32 %3609 to i64
  store i64 %3610, i64* %RCX.i131, align 8
  store %struct.Memory* %loadMem_4023ce, %struct.Memory** %MEMORY
  %loadMem_4023d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3612 = getelementptr inbounds %struct.GPR, %struct.GPR* %3611, i32 0, i32 33
  %3613 = getelementptr inbounds %struct.Reg, %struct.Reg* %3612, i32 0, i32 0
  %PC.i127 = bitcast %union.anon* %3613 to i64*
  %3614 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3615 = getelementptr inbounds %struct.GPR, %struct.GPR* %3614, i32 0, i32 5
  %3616 = getelementptr inbounds %struct.Reg, %struct.Reg* %3615, i32 0, i32 0
  %3617 = bitcast %union.anon* %3616 to %struct.anon.2*
  %CL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3617, i32 0, i32 0
  %3618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3619 = getelementptr inbounds %struct.GPR, %struct.GPR* %3618, i32 0, i32 7
  %3620 = getelementptr inbounds %struct.Reg, %struct.Reg* %3619, i32 0, i32 0
  %3621 = bitcast %union.anon* %3620 to %struct.anon.2*
  %DL.i128 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3621, i32 0, i32 0
  %3622 = load i8, i8* %CL.i
  %3623 = zext i8 %3622 to i64
  %3624 = load i64, i64* %PC.i127
  %3625 = add i64 %3624, 2
  store i64 %3625, i64* %PC.i127
  store i8 %3622, i8* %DL.i128, align 1
  store %struct.Memory* %loadMem_4023d1, %struct.Memory** %MEMORY
  %loadMem_4023d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3627 = getelementptr inbounds %struct.GPR, %struct.GPR* %3626, i32 0, i32 33
  %3628 = getelementptr inbounds %struct.Reg, %struct.Reg* %3627, i32 0, i32 0
  %PC.i124 = bitcast %union.anon* %3628 to i64*
  %3629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3630 = getelementptr inbounds %struct.GPR, %struct.GPR* %3629, i32 0, i32 1
  %3631 = getelementptr inbounds %struct.Reg, %struct.Reg* %3630, i32 0, i32 0
  %RAX.i125 = bitcast %union.anon* %3631 to i64*
  %3632 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3633 = getelementptr inbounds %struct.GPR, %struct.GPR* %3632, i32 0, i32 15
  %3634 = getelementptr inbounds %struct.Reg, %struct.Reg* %3633, i32 0, i32 0
  %RBP.i126 = bitcast %union.anon* %3634 to i64*
  %3635 = load i64, i64* %RBP.i126
  %3636 = sub i64 %3635, 8
  %3637 = load i64, i64* %PC.i124
  %3638 = add i64 %3637, 4
  store i64 %3638, i64* %PC.i124
  %3639 = inttoptr i64 %3636 to i64*
  %3640 = load i64, i64* %3639
  store i64 %3640, i64* %RAX.i125, align 8
  store %struct.Memory* %loadMem_4023d3, %struct.Memory** %MEMORY
  %loadMem_4023d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3641 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3642 = getelementptr inbounds %struct.GPR, %struct.GPR* %3641, i32 0, i32 33
  %3643 = getelementptr inbounds %struct.Reg, %struct.Reg* %3642, i32 0, i32 0
  %PC.i122 = bitcast %union.anon* %3643 to i64*
  %3644 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3645 = getelementptr inbounds %struct.GPR, %struct.GPR* %3644, i32 0, i32 1
  %3646 = getelementptr inbounds %struct.Reg, %struct.Reg* %3645, i32 0, i32 0
  %RAX.i123 = bitcast %union.anon* %3646 to i64*
  %3647 = load i64, i64* %RAX.i123
  %3648 = add i64 %3647, 24
  %3649 = load i64, i64* %PC.i122
  %3650 = add i64 %3649, 4
  store i64 %3650, i64* %PC.i122
  %3651 = inttoptr i64 %3648 to i64*
  %3652 = load i64, i64* %3651
  store i64 %3652, i64* %RAX.i123, align 8
  store %struct.Memory* %loadMem_4023d7, %struct.Memory** %MEMORY
  %loadMem_4023db = load %struct.Memory*, %struct.Memory** %MEMORY
  %3653 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3654 = getelementptr inbounds %struct.GPR, %struct.GPR* %3653, i32 0, i32 33
  %3655 = getelementptr inbounds %struct.Reg, %struct.Reg* %3654, i32 0, i32 0
  %PC.i119 = bitcast %union.anon* %3655 to i64*
  %3656 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3657 = getelementptr inbounds %struct.GPR, %struct.GPR* %3656, i32 0, i32 9
  %3658 = getelementptr inbounds %struct.Reg, %struct.Reg* %3657, i32 0, i32 0
  %RSI.i120 = bitcast %union.anon* %3658 to i64*
  %3659 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3660 = getelementptr inbounds %struct.GPR, %struct.GPR* %3659, i32 0, i32 15
  %3661 = getelementptr inbounds %struct.Reg, %struct.Reg* %3660, i32 0, i32 0
  %RBP.i121 = bitcast %union.anon* %3661 to i64*
  %3662 = load i64, i64* %RBP.i121
  %3663 = sub i64 %3662, 8
  %3664 = load i64, i64* %PC.i119
  %3665 = add i64 %3664, 4
  store i64 %3665, i64* %PC.i119
  %3666 = inttoptr i64 %3663 to i64*
  %3667 = load i64, i64* %3666
  store i64 %3667, i64* %RSI.i120, align 8
  store %struct.Memory* %loadMem_4023db, %struct.Memory** %MEMORY
  %loadMem_4023df = load %struct.Memory*, %struct.Memory** %MEMORY
  %3668 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3669 = getelementptr inbounds %struct.GPR, %struct.GPR* %3668, i32 0, i32 33
  %3670 = getelementptr inbounds %struct.Reg, %struct.Reg* %3669, i32 0, i32 0
  %PC.i117 = bitcast %union.anon* %3670 to i64*
  %3671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3672 = getelementptr inbounds %struct.GPR, %struct.GPR* %3671, i32 0, i32 9
  %3673 = getelementptr inbounds %struct.Reg, %struct.Reg* %3672, i32 0, i32 0
  %RSI.i118 = bitcast %union.anon* %3673 to i64*
  %3674 = load i64, i64* %RSI.i118
  %3675 = add i64 %3674, 32
  %3676 = load i64, i64* %PC.i117
  %3677 = add i64 %3676, 4
  store i64 %3677, i64* %PC.i117
  %3678 = inttoptr i64 %3675 to i64*
  %3679 = load i64, i64* %3678
  store i64 %3679, i64* %RSI.i118, align 8
  store %struct.Memory* %loadMem_4023df, %struct.Memory** %MEMORY
  %loadMem_4023e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3680 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3681 = getelementptr inbounds %struct.GPR, %struct.GPR* %3680, i32 0, i32 33
  %3682 = getelementptr inbounds %struct.Reg, %struct.Reg* %3681, i32 0, i32 0
  %PC.i114 = bitcast %union.anon* %3682 to i64*
  %3683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3684 = getelementptr inbounds %struct.GPR, %struct.GPR* %3683, i32 0, i32 5
  %3685 = getelementptr inbounds %struct.Reg, %struct.Reg* %3684, i32 0, i32 0
  %RCX.i115 = bitcast %union.anon* %3685 to i64*
  %3686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3687 = getelementptr inbounds %struct.GPR, %struct.GPR* %3686, i32 0, i32 9
  %3688 = getelementptr inbounds %struct.Reg, %struct.Reg* %3687, i32 0, i32 0
  %RSI.i116 = bitcast %union.anon* %3688 to i64*
  %3689 = load i64, i64* %RSI.i116
  %3690 = load i64, i64* %PC.i114
  %3691 = add i64 %3690, 2
  store i64 %3691, i64* %PC.i114
  %3692 = inttoptr i64 %3689 to i32*
  %3693 = load i32, i32* %3692
  %3694 = zext i32 %3693 to i64
  store i64 %3694, i64* %RCX.i115, align 8
  store %struct.Memory* %loadMem_4023e3, %struct.Memory** %MEMORY
  %loadMem_4023e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3695 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3696 = getelementptr inbounds %struct.GPR, %struct.GPR* %3695, i32 0, i32 33
  %3697 = getelementptr inbounds %struct.Reg, %struct.Reg* %3696, i32 0, i32 0
  %PC.i111 = bitcast %union.anon* %3697 to i64*
  %3698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3699 = getelementptr inbounds %struct.GPR, %struct.GPR* %3698, i32 0, i32 5
  %3700 = getelementptr inbounds %struct.Reg, %struct.Reg* %3699, i32 0, i32 0
  %ECX.i112 = bitcast %union.anon* %3700 to i32*
  %3701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3702 = getelementptr inbounds %struct.GPR, %struct.GPR* %3701, i32 0, i32 11
  %3703 = getelementptr inbounds %struct.Reg, %struct.Reg* %3702, i32 0, i32 0
  %RDI.i113 = bitcast %union.anon* %3703 to i64*
  %3704 = load i32, i32* %ECX.i112
  %3705 = zext i32 %3704 to i64
  %3706 = load i64, i64* %PC.i111
  %3707 = add i64 %3706, 2
  store i64 %3707, i64* %PC.i111
  %3708 = and i64 %3705, 4294967295
  store i64 %3708, i64* %RDI.i113, align 8
  store %struct.Memory* %loadMem_4023e5, %struct.Memory** %MEMORY
  %loadMem_4023e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3710 = getelementptr inbounds %struct.GPR, %struct.GPR* %3709, i32 0, i32 33
  %3711 = getelementptr inbounds %struct.Reg, %struct.Reg* %3710, i32 0, i32 0
  %PC.i110 = bitcast %union.anon* %3711 to i64*
  %3712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3713 = getelementptr inbounds %struct.GPR, %struct.GPR* %3712, i32 0, i32 11
  %3714 = getelementptr inbounds %struct.Reg, %struct.Reg* %3713, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %3714 to i64*
  %3715 = load i64, i64* %RDI.i
  %3716 = load i64, i64* %PC.i110
  %3717 = add i64 %3716, 3
  store i64 %3717, i64* %PC.i110
  %3718 = trunc i64 %3715 to i32
  %3719 = add i32 1, %3718
  %3720 = zext i32 %3719 to i64
  store i64 %3720, i64* %RDI.i, align 8
  %3721 = icmp ult i32 %3719, %3718
  %3722 = icmp ult i32 %3719, 1
  %3723 = or i1 %3721, %3722
  %3724 = zext i1 %3723 to i8
  %3725 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3724, i8* %3725, align 1
  %3726 = and i32 %3719, 255
  %3727 = call i32 @llvm.ctpop.i32(i32 %3726)
  %3728 = trunc i32 %3727 to i8
  %3729 = and i8 %3728, 1
  %3730 = xor i8 %3729, 1
  %3731 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3730, i8* %3731, align 1
  %3732 = xor i64 1, %3715
  %3733 = trunc i64 %3732 to i32
  %3734 = xor i32 %3733, %3719
  %3735 = lshr i32 %3734, 4
  %3736 = trunc i32 %3735 to i8
  %3737 = and i8 %3736, 1
  %3738 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3737, i8* %3738, align 1
  %3739 = icmp eq i32 %3719, 0
  %3740 = zext i1 %3739 to i8
  %3741 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3740, i8* %3741, align 1
  %3742 = lshr i32 %3719, 31
  %3743 = trunc i32 %3742 to i8
  %3744 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3743, i8* %3744, align 1
  %3745 = lshr i32 %3718, 31
  %3746 = xor i32 %3742, %3745
  %3747 = add i32 %3746, %3742
  %3748 = icmp eq i32 %3747, 2
  %3749 = zext i1 %3748 to i8
  %3750 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3749, i8* %3750, align 1
  store %struct.Memory* %loadMem_4023e7, %struct.Memory** %MEMORY
  %loadMem_4023ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %3751 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3752 = getelementptr inbounds %struct.GPR, %struct.GPR* %3751, i32 0, i32 33
  %3753 = getelementptr inbounds %struct.Reg, %struct.Reg* %3752, i32 0, i32 0
  %PC.i108 = bitcast %union.anon* %3753 to i64*
  %3754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3755 = getelementptr inbounds %struct.GPR, %struct.GPR* %3754, i32 0, i32 11
  %3756 = getelementptr inbounds %struct.Reg, %struct.Reg* %3755, i32 0, i32 0
  %EDI.i = bitcast %union.anon* %3756 to i32*
  %3757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3758 = getelementptr inbounds %struct.GPR, %struct.GPR* %3757, i32 0, i32 9
  %3759 = getelementptr inbounds %struct.Reg, %struct.Reg* %3758, i32 0, i32 0
  %RSI.i109 = bitcast %union.anon* %3759 to i64*
  %3760 = load i64, i64* %RSI.i109
  %3761 = load i32, i32* %EDI.i
  %3762 = zext i32 %3761 to i64
  %3763 = load i64, i64* %PC.i108
  %3764 = add i64 %3763, 2
  store i64 %3764, i64* %PC.i108
  %3765 = inttoptr i64 %3760 to i32*
  store i32 %3761, i32* %3765
  store %struct.Memory* %loadMem_4023ea, %struct.Memory** %MEMORY
  %loadMem_4023ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %3766 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3767 = getelementptr inbounds %struct.GPR, %struct.GPR* %3766, i32 0, i32 33
  %3768 = getelementptr inbounds %struct.Reg, %struct.Reg* %3767, i32 0, i32 0
  %PC.i105 = bitcast %union.anon* %3768 to i64*
  %3769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3770 = getelementptr inbounds %struct.GPR, %struct.GPR* %3769, i32 0, i32 5
  %3771 = getelementptr inbounds %struct.Reg, %struct.Reg* %3770, i32 0, i32 0
  %ECX.i106 = bitcast %union.anon* %3771 to i32*
  %3772 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3773 = getelementptr inbounds %struct.GPR, %struct.GPR* %3772, i32 0, i32 9
  %3774 = getelementptr inbounds %struct.Reg, %struct.Reg* %3773, i32 0, i32 0
  %RSI.i107 = bitcast %union.anon* %3774 to i64*
  %3775 = load i32, i32* %ECX.i106
  %3776 = zext i32 %3775 to i64
  %3777 = load i64, i64* %PC.i105
  %3778 = add i64 %3777, 3
  store i64 %3778, i64* %PC.i105
  %3779 = shl i64 %3776, 32
  %3780 = ashr exact i64 %3779, 32
  store i64 %3780, i64* %RSI.i107, align 8
  store %struct.Memory* %loadMem_4023ec, %struct.Memory** %MEMORY
  %loadMem_4023ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %3781 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3782 = getelementptr inbounds %struct.GPR, %struct.GPR* %3781, i32 0, i32 33
  %3783 = getelementptr inbounds %struct.Reg, %struct.Reg* %3782, i32 0, i32 0
  %PC.i103 = bitcast %union.anon* %3783 to i64*
  %3784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3785 = getelementptr inbounds %struct.GPR, %struct.GPR* %3784, i32 0, i32 7
  %3786 = getelementptr inbounds %struct.Reg, %struct.Reg* %3785, i32 0, i32 0
  %3787 = bitcast %union.anon* %3786 to %struct.anon.2*
  %DL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3787, i32 0, i32 0
  %3788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3789 = getelementptr inbounds %struct.GPR, %struct.GPR* %3788, i32 0, i32 1
  %3790 = getelementptr inbounds %struct.Reg, %struct.Reg* %3789, i32 0, i32 0
  %RAX.i104 = bitcast %union.anon* %3790 to i64*
  %3791 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3792 = getelementptr inbounds %struct.GPR, %struct.GPR* %3791, i32 0, i32 9
  %3793 = getelementptr inbounds %struct.Reg, %struct.Reg* %3792, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %3793 to i64*
  %3794 = load i64, i64* %RAX.i104
  %3795 = load i64, i64* %RSI.i
  %3796 = add i64 %3795, %3794
  %3797 = load i8, i8* %DL.i
  %3798 = zext i8 %3797 to i64
  %3799 = load i64, i64* %PC.i103
  %3800 = add i64 %3799, 3
  store i64 %3800, i64* %PC.i103
  %3801 = inttoptr i64 %3796 to i8*
  store i8 %3797, i8* %3801
  store %struct.Memory* %loadMem_4023ef, %struct.Memory** %MEMORY
  %loadMem_4023f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3802 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3803 = getelementptr inbounds %struct.GPR, %struct.GPR* %3802, i32 0, i32 33
  %3804 = getelementptr inbounds %struct.Reg, %struct.Reg* %3803, i32 0, i32 0
  %PC.i100 = bitcast %union.anon* %3804 to i64*
  %3805 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3806 = getelementptr inbounds %struct.GPR, %struct.GPR* %3805, i32 0, i32 1
  %3807 = getelementptr inbounds %struct.Reg, %struct.Reg* %3806, i32 0, i32 0
  %RAX.i101 = bitcast %union.anon* %3807 to i64*
  %3808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3809 = getelementptr inbounds %struct.GPR, %struct.GPR* %3808, i32 0, i32 15
  %3810 = getelementptr inbounds %struct.Reg, %struct.Reg* %3809, i32 0, i32 0
  %RBP.i102 = bitcast %union.anon* %3810 to i64*
  %3811 = load i64, i64* %RBP.i102
  %3812 = sub i64 %3811, 8
  %3813 = load i64, i64* %PC.i100
  %3814 = add i64 %3813, 4
  store i64 %3814, i64* %PC.i100
  %3815 = inttoptr i64 %3812 to i64*
  %3816 = load i64, i64* %3815
  store i64 %3816, i64* %RAX.i101, align 8
  store %struct.Memory* %loadMem_4023f2, %struct.Memory** %MEMORY
  %loadMem_4023f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3817 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3818 = getelementptr inbounds %struct.GPR, %struct.GPR* %3817, i32 0, i32 33
  %3819 = getelementptr inbounds %struct.Reg, %struct.Reg* %3818, i32 0, i32 0
  %PC.i98 = bitcast %union.anon* %3819 to i64*
  %3820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3821 = getelementptr inbounds %struct.GPR, %struct.GPR* %3820, i32 0, i32 1
  %3822 = getelementptr inbounds %struct.Reg, %struct.Reg* %3821, i32 0, i32 0
  %RAX.i99 = bitcast %union.anon* %3822 to i64*
  %3823 = load i64, i64* %RAX.i99
  %3824 = add i64 %3823, 12
  %3825 = load i64, i64* %PC.i98
  %3826 = add i64 %3825, 7
  store i64 %3826, i64* %PC.i98
  %3827 = inttoptr i64 %3824 to i32*
  store i32 8, i32* %3827
  store %struct.Memory* %loadMem_4023f6, %struct.Memory** %MEMORY
  br label %block_.L_4023fd

block_.L_4023fd:                                  ; preds = %block_40240b, %block_4023ca
  %loadMem_4023fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %3828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3829 = getelementptr inbounds %struct.GPR, %struct.GPR* %3828, i32 0, i32 33
  %3830 = getelementptr inbounds %struct.Reg, %struct.Reg* %3829, i32 0, i32 0
  %PC.i95 = bitcast %union.anon* %3830 to i64*
  %3831 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3832 = getelementptr inbounds %struct.GPR, %struct.GPR* %3831, i32 0, i32 1
  %3833 = getelementptr inbounds %struct.Reg, %struct.Reg* %3832, i32 0, i32 0
  %RAX.i96 = bitcast %union.anon* %3833 to i64*
  %3834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3835 = getelementptr inbounds %struct.GPR, %struct.GPR* %3834, i32 0, i32 15
  %3836 = getelementptr inbounds %struct.Reg, %struct.Reg* %3835, i32 0, i32 0
  %RBP.i97 = bitcast %union.anon* %3836 to i64*
  %3837 = load i64, i64* %RBP.i97
  %3838 = sub i64 %3837, 8
  %3839 = load i64, i64* %PC.i95
  %3840 = add i64 %3839, 4
  store i64 %3840, i64* %PC.i95
  %3841 = inttoptr i64 %3838 to i64*
  %3842 = load i64, i64* %3841
  store i64 %3842, i64* %RAX.i96, align 8
  store %struct.Memory* %loadMem_4023fd, %struct.Memory** %MEMORY
  %loadMem_402401 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3844 = getelementptr inbounds %struct.GPR, %struct.GPR* %3843, i32 0, i32 33
  %3845 = getelementptr inbounds %struct.Reg, %struct.Reg* %3844, i32 0, i32 0
  %PC.i93 = bitcast %union.anon* %3845 to i64*
  %3846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3847 = getelementptr inbounds %struct.GPR, %struct.GPR* %3846, i32 0, i32 1
  %3848 = getelementptr inbounds %struct.Reg, %struct.Reg* %3847, i32 0, i32 0
  %RAX.i94 = bitcast %union.anon* %3848 to i64*
  %3849 = load i64, i64* %RAX.i94
  %3850 = add i64 %3849, 80
  %3851 = load i64, i64* %PC.i93
  %3852 = add i64 %3851, 4
  store i64 %3852, i64* %PC.i93
  %3853 = inttoptr i64 %3850 to i32*
  %3854 = load i32, i32* %3853
  %3855 = sub i32 %3854, 7
  %3856 = icmp ult i32 %3854, 7
  %3857 = zext i1 %3856 to i8
  %3858 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3857, i8* %3858, align 1
  %3859 = and i32 %3855, 255
  %3860 = call i32 @llvm.ctpop.i32(i32 %3859)
  %3861 = trunc i32 %3860 to i8
  %3862 = and i8 %3861, 1
  %3863 = xor i8 %3862, 1
  %3864 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3863, i8* %3864, align 1
  %3865 = xor i32 %3854, 7
  %3866 = xor i32 %3865, %3855
  %3867 = lshr i32 %3866, 4
  %3868 = trunc i32 %3867 to i8
  %3869 = and i8 %3868, 1
  %3870 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3869, i8* %3870, align 1
  %3871 = icmp eq i32 %3855, 0
  %3872 = zext i1 %3871 to i8
  %3873 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3872, i8* %3873, align 1
  %3874 = lshr i32 %3855, 31
  %3875 = trunc i32 %3874 to i8
  %3876 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3875, i8* %3876, align 1
  %3877 = lshr i32 %3854, 31
  %3878 = xor i32 %3874, %3877
  %3879 = add i32 %3878, %3877
  %3880 = icmp eq i32 %3879, 2
  %3881 = zext i1 %3880 to i8
  %3882 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3881, i8* %3882, align 1
  store %struct.Memory* %loadMem_402401, %struct.Memory** %MEMORY
  %loadMem_402405 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3884 = getelementptr inbounds %struct.GPR, %struct.GPR* %3883, i32 0, i32 33
  %3885 = getelementptr inbounds %struct.Reg, %struct.Reg* %3884, i32 0, i32 0
  %PC.i92 = bitcast %union.anon* %3885 to i64*
  %3886 = load i64, i64* %PC.i92
  %3887 = add i64 %3886, 37
  %3888 = load i64, i64* %PC.i92
  %3889 = add i64 %3888, 6
  %3890 = load i64, i64* %PC.i92
  %3891 = add i64 %3890, 6
  store i64 %3891, i64* %PC.i92
  %3892 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3893 = load i8, i8* %3892, align 1
  %3894 = icmp ne i8 %3893, 0
  %3895 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3896 = load i8, i8* %3895, align 1
  %3897 = icmp ne i8 %3896, 0
  %3898 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3899 = load i8, i8* %3898, align 1
  %3900 = icmp ne i8 %3899, 0
  %3901 = xor i1 %3897, %3900
  %3902 = or i1 %3894, %3901
  %3903 = zext i1 %3902 to i8
  store i8 %3903, i8* %BRANCH_TAKEN, align 1
  %3904 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3905 = select i1 %3902, i64 %3887, i64 %3889
  store i64 %3905, i64* %3904, align 8
  store %struct.Memory* %loadMem_402405, %struct.Memory** %MEMORY
  %loadBr_402405 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_402405 = icmp eq i8 %loadBr_402405, 1
  br i1 %cmpBr_402405, label %block_.L_40242a, label %block_40240b

block_40240b:                                     ; preds = %block_.L_4023fd
  %loadMem_40240b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3906 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3907 = getelementptr inbounds %struct.GPR, %struct.GPR* %3906, i32 0, i32 33
  %3908 = getelementptr inbounds %struct.Reg, %struct.Reg* %3907, i32 0, i32 0
  %PC.i89 = bitcast %union.anon* %3908 to i64*
  %3909 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3910 = getelementptr inbounds %struct.GPR, %struct.GPR* %3909, i32 0, i32 1
  %3911 = getelementptr inbounds %struct.Reg, %struct.Reg* %3910, i32 0, i32 0
  %RAX.i90 = bitcast %union.anon* %3911 to i64*
  %3912 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3913 = getelementptr inbounds %struct.GPR, %struct.GPR* %3912, i32 0, i32 15
  %3914 = getelementptr inbounds %struct.Reg, %struct.Reg* %3913, i32 0, i32 0
  %RBP.i91 = bitcast %union.anon* %3914 to i64*
  %3915 = load i64, i64* %RBP.i91
  %3916 = sub i64 %3915, 8
  %3917 = load i64, i64* %PC.i89
  %3918 = add i64 %3917, 4
  store i64 %3918, i64* %PC.i89
  %3919 = inttoptr i64 %3916 to i64*
  %3920 = load i64, i64* %3919
  store i64 %3920, i64* %RAX.i90, align 8
  store %struct.Memory* %loadMem_40240b, %struct.Memory** %MEMORY
  %loadMem_40240f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3921 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3922 = getelementptr inbounds %struct.GPR, %struct.GPR* %3921, i32 0, i32 33
  %3923 = getelementptr inbounds %struct.Reg, %struct.Reg* %3922, i32 0, i32 0
  %PC.i86 = bitcast %union.anon* %3923 to i64*
  %3924 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3925 = getelementptr inbounds %struct.GPR, %struct.GPR* %3924, i32 0, i32 1
  %3926 = getelementptr inbounds %struct.Reg, %struct.Reg* %3925, i32 0, i32 0
  %RAX.i87 = bitcast %union.anon* %3926 to i64*
  %3927 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3928 = getelementptr inbounds %struct.GPR, %struct.GPR* %3927, i32 0, i32 5
  %3929 = getelementptr inbounds %struct.Reg, %struct.Reg* %3928, i32 0, i32 0
  %RCX.i88 = bitcast %union.anon* %3929 to i64*
  %3930 = load i64, i64* %RAX.i87
  %3931 = add i64 %3930, 80
  %3932 = load i64, i64* %PC.i86
  %3933 = add i64 %3932, 3
  store i64 %3933, i64* %PC.i86
  %3934 = inttoptr i64 %3931 to i32*
  %3935 = load i32, i32* %3934
  %3936 = zext i32 %3935 to i64
  store i64 %3936, i64* %RCX.i88, align 8
  store %struct.Memory* %loadMem_40240f, %struct.Memory** %MEMORY
  %loadMem_402412 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3938 = getelementptr inbounds %struct.GPR, %struct.GPR* %3937, i32 0, i32 33
  %3939 = getelementptr inbounds %struct.Reg, %struct.Reg* %3938, i32 0, i32 0
  %PC.i84 = bitcast %union.anon* %3939 to i64*
  %3940 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3941 = getelementptr inbounds %struct.GPR, %struct.GPR* %3940, i32 0, i32 5
  %3942 = getelementptr inbounds %struct.Reg, %struct.Reg* %3941, i32 0, i32 0
  %RCX.i85 = bitcast %union.anon* %3942 to i64*
  %3943 = load i64, i64* %RCX.i85
  %3944 = load i64, i64* %PC.i84
  %3945 = add i64 %3944, 3
  store i64 %3945, i64* %PC.i84
  %3946 = trunc i64 %3943 to i32
  %3947 = sub i32 %3946, 8
  %3948 = zext i32 %3947 to i64
  store i64 %3948, i64* %RCX.i85, align 8
  %3949 = icmp ult i32 %3946, 8
  %3950 = zext i1 %3949 to i8
  %3951 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3950, i8* %3951, align 1
  %3952 = and i32 %3947, 255
  %3953 = call i32 @llvm.ctpop.i32(i32 %3952)
  %3954 = trunc i32 %3953 to i8
  %3955 = and i8 %3954, 1
  %3956 = xor i8 %3955, 1
  %3957 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3956, i8* %3957, align 1
  %3958 = xor i64 8, %3943
  %3959 = trunc i64 %3958 to i32
  %3960 = xor i32 %3959, %3947
  %3961 = lshr i32 %3960, 4
  %3962 = trunc i32 %3961 to i8
  %3963 = and i8 %3962, 1
  %3964 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3963, i8* %3964, align 1
  %3965 = icmp eq i32 %3947, 0
  %3966 = zext i1 %3965 to i8
  %3967 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3966, i8* %3967, align 1
  %3968 = lshr i32 %3947, 31
  %3969 = trunc i32 %3968 to i8
  %3970 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3969, i8* %3970, align 1
  %3971 = lshr i32 %3946, 31
  %3972 = xor i32 %3968, %3971
  %3973 = add i32 %3972, %3971
  %3974 = icmp eq i32 %3973, 2
  %3975 = zext i1 %3974 to i8
  %3976 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3975, i8* %3976, align 1
  store %struct.Memory* %loadMem_402412, %struct.Memory** %MEMORY
  %loadMem_402415 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3977 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3978 = getelementptr inbounds %struct.GPR, %struct.GPR* %3977, i32 0, i32 33
  %3979 = getelementptr inbounds %struct.Reg, %struct.Reg* %3978, i32 0, i32 0
  %PC.i81 = bitcast %union.anon* %3979 to i64*
  %3980 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3981 = getelementptr inbounds %struct.GPR, %struct.GPR* %3980, i32 0, i32 5
  %3982 = getelementptr inbounds %struct.Reg, %struct.Reg* %3981, i32 0, i32 0
  %ECX.i82 = bitcast %union.anon* %3982 to i32*
  %3983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3984 = getelementptr inbounds %struct.GPR, %struct.GPR* %3983, i32 0, i32 1
  %3985 = getelementptr inbounds %struct.Reg, %struct.Reg* %3984, i32 0, i32 0
  %RAX.i83 = bitcast %union.anon* %3985 to i64*
  %3986 = load i64, i64* %RAX.i83
  %3987 = add i64 %3986, 80
  %3988 = load i32, i32* %ECX.i82
  %3989 = zext i32 %3988 to i64
  %3990 = load i64, i64* %PC.i81
  %3991 = add i64 %3990, 3
  store i64 %3991, i64* %PC.i81
  %3992 = inttoptr i64 %3987 to i32*
  store i32 %3988, i32* %3992
  store %struct.Memory* %loadMem_402415, %struct.Memory** %MEMORY
  %loadMem_402418 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3993 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3994 = getelementptr inbounds %struct.GPR, %struct.GPR* %3993, i32 0, i32 33
  %3995 = getelementptr inbounds %struct.Reg, %struct.Reg* %3994, i32 0, i32 0
  %PC.i78 = bitcast %union.anon* %3995 to i64*
  %3996 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3997 = getelementptr inbounds %struct.GPR, %struct.GPR* %3996, i32 0, i32 1
  %3998 = getelementptr inbounds %struct.Reg, %struct.Reg* %3997, i32 0, i32 0
  %RAX.i79 = bitcast %union.anon* %3998 to i64*
  %3999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4000 = getelementptr inbounds %struct.GPR, %struct.GPR* %3999, i32 0, i32 15
  %4001 = getelementptr inbounds %struct.Reg, %struct.Reg* %4000, i32 0, i32 0
  %RBP.i80 = bitcast %union.anon* %4001 to i64*
  %4002 = load i64, i64* %RBP.i80
  %4003 = sub i64 %4002, 8
  %4004 = load i64, i64* %PC.i78
  %4005 = add i64 %4004, 4
  store i64 %4005, i64* %PC.i78
  %4006 = inttoptr i64 %4003 to i64*
  %4007 = load i64, i64* %4006
  store i64 %4007, i64* %RAX.i79, align 8
  store %struct.Memory* %loadMem_402418, %struct.Memory** %MEMORY
  %loadMem_40241c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4008 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4009 = getelementptr inbounds %struct.GPR, %struct.GPR* %4008, i32 0, i32 33
  %4010 = getelementptr inbounds %struct.Reg, %struct.Reg* %4009, i32 0, i32 0
  %PC.i75 = bitcast %union.anon* %4010 to i64*
  %4011 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4012 = getelementptr inbounds %struct.GPR, %struct.GPR* %4011, i32 0, i32 1
  %4013 = getelementptr inbounds %struct.Reg, %struct.Reg* %4012, i32 0, i32 0
  %RAX.i76 = bitcast %union.anon* %4013 to i64*
  %4014 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4015 = getelementptr inbounds %struct.GPR, %struct.GPR* %4014, i32 0, i32 5
  %4016 = getelementptr inbounds %struct.Reg, %struct.Reg* %4015, i32 0, i32 0
  %RCX.i77 = bitcast %union.anon* %4016 to i64*
  %4017 = load i64, i64* %RAX.i76
  %4018 = add i64 %4017, 88
  %4019 = load i64, i64* %PC.i75
  %4020 = add i64 %4019, 3
  store i64 %4020, i64* %PC.i75
  %4021 = inttoptr i64 %4018 to i32*
  %4022 = load i32, i32* %4021
  %4023 = zext i32 %4022 to i64
  store i64 %4023, i64* %RCX.i77, align 8
  store %struct.Memory* %loadMem_40241c, %struct.Memory** %MEMORY
  %loadMem_40241f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4024 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4025 = getelementptr inbounds %struct.GPR, %struct.GPR* %4024, i32 0, i32 33
  %4026 = getelementptr inbounds %struct.Reg, %struct.Reg* %4025, i32 0, i32 0
  %PC.i73 = bitcast %union.anon* %4026 to i64*
  %4027 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4028 = getelementptr inbounds %struct.GPR, %struct.GPR* %4027, i32 0, i32 5
  %4029 = getelementptr inbounds %struct.Reg, %struct.Reg* %4028, i32 0, i32 0
  %RCX.i74 = bitcast %union.anon* %4029 to i64*
  %4030 = load i64, i64* %RCX.i74
  %4031 = load i64, i64* %PC.i73
  %4032 = add i64 %4031, 3
  store i64 %4032, i64* %PC.i73
  %4033 = trunc i64 %4030 to i32
  %4034 = add i32 1, %4033
  %4035 = zext i32 %4034 to i64
  store i64 %4035, i64* %RCX.i74, align 8
  %4036 = icmp ult i32 %4034, %4033
  %4037 = icmp ult i32 %4034, 1
  %4038 = or i1 %4036, %4037
  %4039 = zext i1 %4038 to i8
  %4040 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4039, i8* %4040, align 1
  %4041 = and i32 %4034, 255
  %4042 = call i32 @llvm.ctpop.i32(i32 %4041)
  %4043 = trunc i32 %4042 to i8
  %4044 = and i8 %4043, 1
  %4045 = xor i8 %4044, 1
  %4046 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4045, i8* %4046, align 1
  %4047 = xor i64 1, %4030
  %4048 = trunc i64 %4047 to i32
  %4049 = xor i32 %4048, %4034
  %4050 = lshr i32 %4049, 4
  %4051 = trunc i32 %4050 to i8
  %4052 = and i8 %4051, 1
  %4053 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4052, i8* %4053, align 1
  %4054 = icmp eq i32 %4034, 0
  %4055 = zext i1 %4054 to i8
  %4056 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4055, i8* %4056, align 1
  %4057 = lshr i32 %4034, 31
  %4058 = trunc i32 %4057 to i8
  %4059 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4058, i8* %4059, align 1
  %4060 = lshr i32 %4033, 31
  %4061 = xor i32 %4057, %4060
  %4062 = add i32 %4061, %4057
  %4063 = icmp eq i32 %4062, 2
  %4064 = zext i1 %4063 to i8
  %4065 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4064, i8* %4065, align 1
  store %struct.Memory* %loadMem_40241f, %struct.Memory** %MEMORY
  %loadMem_402422 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4066 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4067 = getelementptr inbounds %struct.GPR, %struct.GPR* %4066, i32 0, i32 33
  %4068 = getelementptr inbounds %struct.Reg, %struct.Reg* %4067, i32 0, i32 0
  %PC.i70 = bitcast %union.anon* %4068 to i64*
  %4069 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4070 = getelementptr inbounds %struct.GPR, %struct.GPR* %4069, i32 0, i32 5
  %4071 = getelementptr inbounds %struct.Reg, %struct.Reg* %4070, i32 0, i32 0
  %ECX.i71 = bitcast %union.anon* %4071 to i32*
  %4072 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4073 = getelementptr inbounds %struct.GPR, %struct.GPR* %4072, i32 0, i32 1
  %4074 = getelementptr inbounds %struct.Reg, %struct.Reg* %4073, i32 0, i32 0
  %RAX.i72 = bitcast %union.anon* %4074 to i64*
  %4075 = load i64, i64* %RAX.i72
  %4076 = add i64 %4075, 88
  %4077 = load i32, i32* %ECX.i71
  %4078 = zext i32 %4077 to i64
  %4079 = load i64, i64* %PC.i70
  %4080 = add i64 %4079, 3
  store i64 %4080, i64* %PC.i70
  %4081 = inttoptr i64 %4076 to i32*
  store i32 %4077, i32* %4081
  store %struct.Memory* %loadMem_402422, %struct.Memory** %MEMORY
  %loadMem_402425 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4082 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4083 = getelementptr inbounds %struct.GPR, %struct.GPR* %4082, i32 0, i32 33
  %4084 = getelementptr inbounds %struct.Reg, %struct.Reg* %4083, i32 0, i32 0
  %PC.i69 = bitcast %union.anon* %4084 to i64*
  %4085 = load i64, i64* %PC.i69
  %4086 = add i64 %4085, -40
  %4087 = load i64, i64* %PC.i69
  %4088 = add i64 %4087, 5
  store i64 %4088, i64* %PC.i69
  %4089 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4086, i64* %4089, align 8
  store %struct.Memory* %loadMem_402425, %struct.Memory** %MEMORY
  br label %block_.L_4023fd

block_.L_40242a:                                  ; preds = %block_.L_4023fd
  %loadMem_40242a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4091 = getelementptr inbounds %struct.GPR, %struct.GPR* %4090, i32 0, i32 33
  %4092 = getelementptr inbounds %struct.Reg, %struct.Reg* %4091, i32 0, i32 0
  %PC.i68 = bitcast %union.anon* %4092 to i64*
  %4093 = load i64, i64* %PC.i68
  %4094 = add i64 %4093, 5
  %4095 = load i64, i64* %PC.i68
  %4096 = add i64 %4095, 5
  store i64 %4096, i64* %PC.i68
  %4097 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4094, i64* %4097, align 8
  store %struct.Memory* %loadMem_40242a, %struct.Memory** %MEMORY
  br label %block_.L_40242f

block_.L_40242f:                                  ; preds = %block_.L_40242a, %block_40238d
  %loadMem_40242f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4098 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4099 = getelementptr inbounds %struct.GPR, %struct.GPR* %4098, i32 0, i32 33
  %4100 = getelementptr inbounds %struct.Reg, %struct.Reg* %4099, i32 0, i32 0
  %PC.i67 = bitcast %union.anon* %4100 to i64*
  %4101 = load i64, i64* %PC.i67
  %4102 = add i64 %4101, -176
  %4103 = load i64, i64* %PC.i67
  %4104 = add i64 %4103, 5
  store i64 %4104, i64* %PC.i67
  %4105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4102, i64* %4105, align 8
  store %struct.Memory* %loadMem_40242f, %struct.Memory** %MEMORY
  br label %block_.L_40237f

block_.L_402434:                                  ; preds = %block_.L_40237f
  %loadMem_402434 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4107 = getelementptr inbounds %struct.GPR, %struct.GPR* %4106, i32 0, i32 33
  %4108 = getelementptr inbounds %struct.Reg, %struct.Reg* %4107, i32 0, i32 0
  %PC.i66 = bitcast %union.anon* %4108 to i64*
  %4109 = load i64, i64* %PC.i66
  %4110 = add i64 %4109, 30
  %4111 = load i64, i64* %PC.i66
  %4112 = add i64 %4111, 5
  store i64 %4112, i64* %PC.i66
  %4113 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4110, i64* %4113, align 8
  store %struct.Memory* %loadMem_402434, %struct.Memory** %MEMORY
  br label %block_.L_402452

block_.L_402439:                                  ; preds = %block_.L_4022db
  %loadMem_402439 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4115 = getelementptr inbounds %struct.GPR, %struct.GPR* %4114, i32 0, i32 33
  %4116 = getelementptr inbounds %struct.Reg, %struct.Reg* %4115, i32 0, i32 0
  %PC.i63 = bitcast %union.anon* %4116 to i64*
  %4117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4118 = getelementptr inbounds %struct.GPR, %struct.GPR* %4117, i32 0, i32 1
  %4119 = getelementptr inbounds %struct.Reg, %struct.Reg* %4118, i32 0, i32 0
  %RAX.i64 = bitcast %union.anon* %4119 to i64*
  %4120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4121 = getelementptr inbounds %struct.GPR, %struct.GPR* %4120, i32 0, i32 15
  %4122 = getelementptr inbounds %struct.Reg, %struct.Reg* %4121, i32 0, i32 0
  %RBP.i65 = bitcast %union.anon* %4122 to i64*
  %4123 = load i64, i64* %RBP.i65
  %4124 = sub i64 %4123, 8
  %4125 = load i64, i64* %PC.i63
  %4126 = add i64 %4125, 4
  store i64 %4126, i64* %PC.i63
  %4127 = inttoptr i64 %4124 to i64*
  %4128 = load i64, i64* %4127
  store i64 %4128, i64* %RAX.i64, align 8
  store %struct.Memory* %loadMem_402439, %struct.Memory** %MEMORY
  %loadMem_40243d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4130 = getelementptr inbounds %struct.GPR, %struct.GPR* %4129, i32 0, i32 33
  %4131 = getelementptr inbounds %struct.Reg, %struct.Reg* %4130, i32 0, i32 0
  %PC.i60 = bitcast %union.anon* %4131 to i64*
  %4132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4133 = getelementptr inbounds %struct.GPR, %struct.GPR* %4132, i32 0, i32 1
  %4134 = getelementptr inbounds %struct.Reg, %struct.Reg* %4133, i32 0, i32 0
  %RAX.i61 = bitcast %union.anon* %4134 to i64*
  %4135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4136 = getelementptr inbounds %struct.GPR, %struct.GPR* %4135, i32 0, i32 5
  %4137 = getelementptr inbounds %struct.Reg, %struct.Reg* %4136, i32 0, i32 0
  %RCX.i62 = bitcast %union.anon* %4137 to i64*
  %4138 = load i64, i64* %RAX.i61
  %4139 = add i64 %4138, 16
  %4140 = load i64, i64* %PC.i60
  %4141 = add i64 %4140, 3
  store i64 %4141, i64* %PC.i60
  %4142 = inttoptr i64 %4139 to i32*
  %4143 = load i32, i32* %4142
  %4144 = zext i32 %4143 to i64
  store i64 %4144, i64* %RCX.i62, align 8
  store %struct.Memory* %loadMem_40243d, %struct.Memory** %MEMORY
  %loadMem_402440 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4146 = getelementptr inbounds %struct.GPR, %struct.GPR* %4145, i32 0, i32 33
  %4147 = getelementptr inbounds %struct.Reg, %struct.Reg* %4146, i32 0, i32 0
  %PC.i58 = bitcast %union.anon* %4147 to i64*
  %4148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4149 = getelementptr inbounds %struct.GPR, %struct.GPR* %4148, i32 0, i32 5
  %4150 = getelementptr inbounds %struct.Reg, %struct.Reg* %4149, i32 0, i32 0
  %RCX.i59 = bitcast %union.anon* %4150 to i64*
  %4151 = load i64, i64* %RCX.i59
  %4152 = load i64, i64* %PC.i58
  %4153 = add i64 %4152, 3
  store i64 %4153, i64* %PC.i58
  %4154 = trunc i64 %4151 to i32
  %4155 = add i32 1, %4154
  %4156 = zext i32 %4155 to i64
  store i64 %4156, i64* %RCX.i59, align 8
  %4157 = icmp ult i32 %4155, %4154
  %4158 = icmp ult i32 %4155, 1
  %4159 = or i1 %4157, %4158
  %4160 = zext i1 %4159 to i8
  %4161 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4160, i8* %4161, align 1
  %4162 = and i32 %4155, 255
  %4163 = call i32 @llvm.ctpop.i32(i32 %4162)
  %4164 = trunc i32 %4163 to i8
  %4165 = and i8 %4164, 1
  %4166 = xor i8 %4165, 1
  %4167 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4166, i8* %4167, align 1
  %4168 = xor i64 1, %4151
  %4169 = trunc i64 %4168 to i32
  %4170 = xor i32 %4169, %4155
  %4171 = lshr i32 %4170, 4
  %4172 = trunc i32 %4171 to i8
  %4173 = and i8 %4172, 1
  %4174 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4173, i8* %4174, align 1
  %4175 = icmp eq i32 %4155, 0
  %4176 = zext i1 %4175 to i8
  %4177 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4176, i8* %4177, align 1
  %4178 = lshr i32 %4155, 31
  %4179 = trunc i32 %4178 to i8
  %4180 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4179, i8* %4180, align 1
  %4181 = lshr i32 %4154, 31
  %4182 = xor i32 %4178, %4181
  %4183 = add i32 %4182, %4178
  %4184 = icmp eq i32 %4183, 2
  %4185 = zext i1 %4184 to i8
  %4186 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4185, i8* %4186, align 1
  store %struct.Memory* %loadMem_402440, %struct.Memory** %MEMORY
  %loadMem_402443 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4188 = getelementptr inbounds %struct.GPR, %struct.GPR* %4187, i32 0, i32 33
  %4189 = getelementptr inbounds %struct.Reg, %struct.Reg* %4188, i32 0, i32 0
  %PC.i55 = bitcast %union.anon* %4189 to i64*
  %4190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4191 = getelementptr inbounds %struct.GPR, %struct.GPR* %4190, i32 0, i32 5
  %4192 = getelementptr inbounds %struct.Reg, %struct.Reg* %4191, i32 0, i32 0
  %ECX.i56 = bitcast %union.anon* %4192 to i32*
  %4193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4194 = getelementptr inbounds %struct.GPR, %struct.GPR* %4193, i32 0, i32 1
  %4195 = getelementptr inbounds %struct.Reg, %struct.Reg* %4194, i32 0, i32 0
  %RAX.i57 = bitcast %union.anon* %4195 to i64*
  %4196 = load i64, i64* %RAX.i57
  %4197 = add i64 %4196, 16
  %4198 = load i32, i32* %ECX.i56
  %4199 = zext i32 %4198 to i64
  %4200 = load i64, i64* %PC.i55
  %4201 = add i64 %4200, 3
  store i64 %4201, i64* %PC.i55
  %4202 = inttoptr i64 %4197 to i32*
  store i32 %4198, i32* %4202
  store %struct.Memory* %loadMem_402443, %struct.Memory** %MEMORY
  %loadMem_402446 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4204 = getelementptr inbounds %struct.GPR, %struct.GPR* %4203, i32 0, i32 33
  %4205 = getelementptr inbounds %struct.Reg, %struct.Reg* %4204, i32 0, i32 0
  %PC.i52 = bitcast %union.anon* %4205 to i64*
  %4206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4207 = getelementptr inbounds %struct.GPR, %struct.GPR* %4206, i32 0, i32 5
  %4208 = getelementptr inbounds %struct.Reg, %struct.Reg* %4207, i32 0, i32 0
  %RCX.i53 = bitcast %union.anon* %4208 to i64*
  %4209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4210 = getelementptr inbounds %struct.GPR, %struct.GPR* %4209, i32 0, i32 15
  %4211 = getelementptr inbounds %struct.Reg, %struct.Reg* %4210, i32 0, i32 0
  %RBP.i54 = bitcast %union.anon* %4211 to i64*
  %4212 = load i64, i64* %RBP.i54
  %4213 = sub i64 %4212, 20
  %4214 = load i64, i64* %PC.i52
  %4215 = add i64 %4214, 3
  store i64 %4215, i64* %PC.i52
  %4216 = inttoptr i64 %4213 to i32*
  %4217 = load i32, i32* %4216
  %4218 = zext i32 %4217 to i64
  store i64 %4218, i64* %RCX.i53, align 8
  store %struct.Memory* %loadMem_402446, %struct.Memory** %MEMORY
  %loadMem_402449 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4220 = getelementptr inbounds %struct.GPR, %struct.GPR* %4219, i32 0, i32 33
  %4221 = getelementptr inbounds %struct.Reg, %struct.Reg* %4220, i32 0, i32 0
  %PC.i50 = bitcast %union.anon* %4221 to i64*
  %4222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4223 = getelementptr inbounds %struct.GPR, %struct.GPR* %4222, i32 0, i32 5
  %4224 = getelementptr inbounds %struct.Reg, %struct.Reg* %4223, i32 0, i32 0
  %RCX.i51 = bitcast %union.anon* %4224 to i64*
  %4225 = load i64, i64* %RCX.i51
  %4226 = load i64, i64* %PC.i50
  %4227 = add i64 %4226, 6
  store i64 %4227, i64* %PC.i50
  %4228 = trunc i64 %4225 to i32
  %4229 = sub i32 %4228, 256
  %4230 = zext i32 %4229 to i64
  store i64 %4230, i64* %RCX.i51, align 8
  %4231 = icmp ult i32 %4228, 256
  %4232 = zext i1 %4231 to i8
  %4233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4232, i8* %4233, align 1
  %4234 = and i32 %4229, 255
  %4235 = call i32 @llvm.ctpop.i32(i32 %4234)
  %4236 = trunc i32 %4235 to i8
  %4237 = and i8 %4236, 1
  %4238 = xor i8 %4237, 1
  %4239 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4238, i8* %4239, align 1
  %4240 = xor i64 256, %4225
  %4241 = trunc i64 %4240 to i32
  %4242 = xor i32 %4241, %4229
  %4243 = lshr i32 %4242, 4
  %4244 = trunc i32 %4243 to i8
  %4245 = and i8 %4244, 1
  %4246 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4245, i8* %4246, align 1
  %4247 = icmp eq i32 %4229, 0
  %4248 = zext i1 %4247 to i8
  %4249 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4248, i8* %4249, align 1
  %4250 = lshr i32 %4229, 31
  %4251 = trunc i32 %4250 to i8
  %4252 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4251, i8* %4252, align 1
  %4253 = lshr i32 %4228, 31
  %4254 = xor i32 %4250, %4253
  %4255 = add i32 %4254, %4253
  %4256 = icmp eq i32 %4255, 2
  %4257 = zext i1 %4256 to i8
  %4258 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4257, i8* %4258, align 1
  store %struct.Memory* %loadMem_402449, %struct.Memory** %MEMORY
  %loadMem_40244f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4260 = getelementptr inbounds %struct.GPR, %struct.GPR* %4259, i32 0, i32 33
  %4261 = getelementptr inbounds %struct.Reg, %struct.Reg* %4260, i32 0, i32 0
  %PC.i48 = bitcast %union.anon* %4261 to i64*
  %4262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4263 = getelementptr inbounds %struct.GPR, %struct.GPR* %4262, i32 0, i32 5
  %4264 = getelementptr inbounds %struct.Reg, %struct.Reg* %4263, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %4264 to i32*
  %4265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4266 = getelementptr inbounds %struct.GPR, %struct.GPR* %4265, i32 0, i32 15
  %4267 = getelementptr inbounds %struct.Reg, %struct.Reg* %4266, i32 0, i32 0
  %RBP.i49 = bitcast %union.anon* %4267 to i64*
  %4268 = load i64, i64* %RBP.i49
  %4269 = sub i64 %4268, 20
  %4270 = load i32, i32* %ECX.i
  %4271 = zext i32 %4270 to i64
  %4272 = load i64, i64* %PC.i48
  %4273 = add i64 %4272, 3
  store i64 %4273, i64* %PC.i48
  %4274 = inttoptr i64 %4269 to i32*
  store i32 %4270, i32* %4274
  store %struct.Memory* %loadMem_40244f, %struct.Memory** %MEMORY
  br label %block_.L_402452

block_.L_402452:                                  ; preds = %block_.L_402439, %block_.L_402434
  %loadMem_402452 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4276 = getelementptr inbounds %struct.GPR, %struct.GPR* %4275, i32 0, i32 33
  %4277 = getelementptr inbounds %struct.Reg, %struct.Reg* %4276, i32 0, i32 0
  %PC.i47 = bitcast %union.anon* %4277 to i64*
  %4278 = load i64, i64* %PC.i47
  %4279 = add i64 %4278, 5
  %4280 = load i64, i64* %PC.i47
  %4281 = add i64 %4280, 5
  store i64 %4281, i64* %PC.i47
  %4282 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4279, i64* %4282, align 8
  store %struct.Memory* %loadMem_402452, %struct.Memory** %MEMORY
  br label %block_.L_402457

block_.L_402457:                                  ; preds = %block_.L_402452, %block_.L_4022cb
  %loadMem_402457 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4284 = getelementptr inbounds %struct.GPR, %struct.GPR* %4283, i32 0, i32 33
  %4285 = getelementptr inbounds %struct.Reg, %struct.Reg* %4284, i32 0, i32 0
  %PC.i44 = bitcast %union.anon* %4285 to i64*
  %4286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4287 = getelementptr inbounds %struct.GPR, %struct.GPR* %4286, i32 0, i32 1
  %4288 = getelementptr inbounds %struct.Reg, %struct.Reg* %4287, i32 0, i32 0
  %RAX.i45 = bitcast %union.anon* %4288 to i64*
  %4289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4290 = getelementptr inbounds %struct.GPR, %struct.GPR* %4289, i32 0, i32 15
  %4291 = getelementptr inbounds %struct.Reg, %struct.Reg* %4290, i32 0, i32 0
  %RBP.i46 = bitcast %union.anon* %4291 to i64*
  %4292 = load i64, i64* %RBP.i46
  %4293 = sub i64 %4292, 20
  %4294 = load i64, i64* %PC.i44
  %4295 = add i64 %4294, 3
  store i64 %4295, i64* %PC.i44
  %4296 = inttoptr i64 %4293 to i32*
  %4297 = load i32, i32* %4296
  %4298 = zext i32 %4297 to i64
  store i64 %4298, i64* %RAX.i45, align 8
  store %struct.Memory* %loadMem_402457, %struct.Memory** %MEMORY
  %loadMem_40245a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4300 = getelementptr inbounds %struct.GPR, %struct.GPR* %4299, i32 0, i32 33
  %4301 = getelementptr inbounds %struct.Reg, %struct.Reg* %4300, i32 0, i32 0
  %PC.i42 = bitcast %union.anon* %4301 to i64*
  %4302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4303 = getelementptr inbounds %struct.GPR, %struct.GPR* %4302, i32 0, i32 1
  %4304 = getelementptr inbounds %struct.Reg, %struct.Reg* %4303, i32 0, i32 0
  %RAX.i43 = bitcast %union.anon* %4304 to i64*
  %4305 = load i64, i64* %RAX.i43
  %4306 = load i64, i64* %PC.i42
  %4307 = add i64 %4306, 2
  store i64 %4307, i64* %PC.i42
  %4308 = trunc i64 %4305 to i32
  %4309 = shl i32 %4308, 1
  %4310 = icmp slt i32 %4308, 0
  %4311 = icmp slt i32 %4309, 0
  %4312 = xor i1 %4310, %4311
  %4313 = zext i32 %4309 to i64
  store i64 %4313, i64* %RAX.i43, align 8
  %4314 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %4315 = zext i1 %4310 to i8
  store i8 %4315, i8* %4314, align 1
  %4316 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %4317 = and i32 %4309, 254
  %4318 = call i32 @llvm.ctpop.i32(i32 %4317)
  %4319 = trunc i32 %4318 to i8
  %4320 = and i8 %4319, 1
  %4321 = xor i8 %4320, 1
  store i8 %4321, i8* %4316, align 1
  %4322 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4322, align 1
  %4323 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4324 = icmp eq i32 %4309, 0
  %4325 = zext i1 %4324 to i8
  store i8 %4325, i8* %4323, align 1
  %4326 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4327 = lshr i32 %4309, 31
  %4328 = trunc i32 %4327 to i8
  store i8 %4328, i8* %4326, align 1
  %4329 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4330 = zext i1 %4312 to i8
  store i8 %4330, i8* %4329, align 1
  store %struct.Memory* %loadMem_40245a, %struct.Memory** %MEMORY
  %loadMem_40245d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4332 = getelementptr inbounds %struct.GPR, %struct.GPR* %4331, i32 0, i32 33
  %4333 = getelementptr inbounds %struct.Reg, %struct.Reg* %4332, i32 0, i32 0
  %PC.i39 = bitcast %union.anon* %4333 to i64*
  %4334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4335 = getelementptr inbounds %struct.GPR, %struct.GPR* %4334, i32 0, i32 1
  %4336 = getelementptr inbounds %struct.Reg, %struct.Reg* %4335, i32 0, i32 0
  %EAX.i40 = bitcast %union.anon* %4336 to i32*
  %4337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4338 = getelementptr inbounds %struct.GPR, %struct.GPR* %4337, i32 0, i32 15
  %4339 = getelementptr inbounds %struct.Reg, %struct.Reg* %4338, i32 0, i32 0
  %RBP.i41 = bitcast %union.anon* %4339 to i64*
  %4340 = load i64, i64* %RBP.i41
  %4341 = sub i64 %4340, 20
  %4342 = load i32, i32* %EAX.i40
  %4343 = zext i32 %4342 to i64
  %4344 = load i64, i64* %PC.i39
  %4345 = add i64 %4344, 3
  store i64 %4345, i64* %PC.i39
  %4346 = inttoptr i64 %4341 to i32*
  store i32 %4342, i32* %4346
  store %struct.Memory* %loadMem_40245d, %struct.Memory** %MEMORY
  %loadMem_402460 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4348 = getelementptr inbounds %struct.GPR, %struct.GPR* %4347, i32 0, i32 33
  %4349 = getelementptr inbounds %struct.Reg, %struct.Reg* %4348, i32 0, i32 0
  %PC.i36 = bitcast %union.anon* %4349 to i64*
  %4350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4351 = getelementptr inbounds %struct.GPR, %struct.GPR* %4350, i32 0, i32 1
  %4352 = getelementptr inbounds %struct.Reg, %struct.Reg* %4351, i32 0, i32 0
  %RAX.i37 = bitcast %union.anon* %4352 to i64*
  %4353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4354 = getelementptr inbounds %struct.GPR, %struct.GPR* %4353, i32 0, i32 15
  %4355 = getelementptr inbounds %struct.Reg, %struct.Reg* %4354, i32 0, i32 0
  %RBP.i38 = bitcast %union.anon* %4355 to i64*
  %4356 = load i64, i64* %RBP.i38
  %4357 = sub i64 %4356, 16
  %4358 = load i64, i64* %PC.i36
  %4359 = add i64 %4358, 3
  store i64 %4359, i64* %PC.i36
  %4360 = inttoptr i64 %4357 to i32*
  %4361 = load i32, i32* %4360
  %4362 = zext i32 %4361 to i64
  store i64 %4362, i64* %RAX.i37, align 8
  store %struct.Memory* %loadMem_402460, %struct.Memory** %MEMORY
  %loadMem_402463 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4364 = getelementptr inbounds %struct.GPR, %struct.GPR* %4363, i32 0, i32 33
  %4365 = getelementptr inbounds %struct.Reg, %struct.Reg* %4364, i32 0, i32 0
  %PC.i34 = bitcast %union.anon* %4365 to i64*
  %4366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4367 = getelementptr inbounds %struct.GPR, %struct.GPR* %4366, i32 0, i32 1
  %4368 = getelementptr inbounds %struct.Reg, %struct.Reg* %4367, i32 0, i32 0
  %RAX.i35 = bitcast %union.anon* %4368 to i64*
  %4369 = load i64, i64* %RAX.i35
  %4370 = load i64, i64* %PC.i34
  %4371 = add i64 %4370, 2
  store i64 %4371, i64* %PC.i34
  %4372 = trunc i64 %4369 to i32
  %4373 = shl i32 %4372, 1
  %4374 = icmp slt i32 %4372, 0
  %4375 = icmp slt i32 %4373, 0
  %4376 = xor i1 %4374, %4375
  %4377 = zext i32 %4373 to i64
  store i64 %4377, i64* %RAX.i35, align 8
  %4378 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %4379 = zext i1 %4374 to i8
  store i8 %4379, i8* %4378, align 1
  %4380 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %4381 = and i32 %4373, 254
  %4382 = call i32 @llvm.ctpop.i32(i32 %4381)
  %4383 = trunc i32 %4382 to i8
  %4384 = and i8 %4383, 1
  %4385 = xor i8 %4384, 1
  store i8 %4385, i8* %4380, align 1
  %4386 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4386, align 1
  %4387 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4388 = icmp eq i32 %4373, 0
  %4389 = zext i1 %4388 to i8
  store i8 %4389, i8* %4387, align 1
  %4390 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4391 = lshr i32 %4373, 31
  %4392 = trunc i32 %4391 to i8
  store i8 %4392, i8* %4390, align 1
  %4393 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4394 = zext i1 %4376 to i8
  store i8 %4394, i8* %4393, align 1
  store %struct.Memory* %loadMem_402463, %struct.Memory** %MEMORY
  %loadMem_402466 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4396 = getelementptr inbounds %struct.GPR, %struct.GPR* %4395, i32 0, i32 33
  %4397 = getelementptr inbounds %struct.Reg, %struct.Reg* %4396, i32 0, i32 0
  %PC.i31 = bitcast %union.anon* %4397 to i64*
  %4398 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4399 = getelementptr inbounds %struct.GPR, %struct.GPR* %4398, i32 0, i32 1
  %4400 = getelementptr inbounds %struct.Reg, %struct.Reg* %4399, i32 0, i32 0
  %EAX.i32 = bitcast %union.anon* %4400 to i32*
  %4401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4402 = getelementptr inbounds %struct.GPR, %struct.GPR* %4401, i32 0, i32 15
  %4403 = getelementptr inbounds %struct.Reg, %struct.Reg* %4402, i32 0, i32 0
  %RBP.i33 = bitcast %union.anon* %4403 to i64*
  %4404 = load i64, i64* %RBP.i33
  %4405 = sub i64 %4404, 16
  %4406 = load i32, i32* %EAX.i32
  %4407 = zext i32 %4406 to i64
  %4408 = load i64, i64* %PC.i31
  %4409 = add i64 %4408, 3
  store i64 %4409, i64* %PC.i31
  %4410 = inttoptr i64 %4405 to i32*
  store i32 %4406, i32* %4410
  store %struct.Memory* %loadMem_402466, %struct.Memory** %MEMORY
  %loadMem_402469 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4412 = getelementptr inbounds %struct.GPR, %struct.GPR* %4411, i32 0, i32 33
  %4413 = getelementptr inbounds %struct.Reg, %struct.Reg* %4412, i32 0, i32 0
  %PC.i30 = bitcast %union.anon* %4413 to i64*
  %4414 = load i64, i64* %PC.i30
  %4415 = add i64 %4414, -772
  %4416 = load i64, i64* %PC.i30
  %4417 = add i64 %4416, 5
  store i64 %4417, i64* %PC.i30
  %4418 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4415, i64* %4418, align 8
  store %struct.Memory* %loadMem_402469, %struct.Memory** %MEMORY
  br label %block_.L_402165

block_.L_40246e:                                  ; preds = %block_.L_402165
  %loadMem_40246e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4420 = getelementptr inbounds %struct.GPR, %struct.GPR* %4419, i32 0, i32 33
  %4421 = getelementptr inbounds %struct.Reg, %struct.Reg* %4420, i32 0, i32 0
  %PC.i27 = bitcast %union.anon* %4421 to i64*
  %4422 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4423 = getelementptr inbounds %struct.GPR, %struct.GPR* %4422, i32 0, i32 1
  %4424 = getelementptr inbounds %struct.Reg, %struct.Reg* %4423, i32 0, i32 0
  %RAX.i28 = bitcast %union.anon* %4424 to i64*
  %4425 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4426 = getelementptr inbounds %struct.GPR, %struct.GPR* %4425, i32 0, i32 15
  %4427 = getelementptr inbounds %struct.Reg, %struct.Reg* %4426, i32 0, i32 0
  %RBP.i29 = bitcast %union.anon* %4427 to i64*
  %4428 = load i64, i64* %RBP.i29
  %4429 = sub i64 %4428, 16
  %4430 = load i64, i64* %PC.i27
  %4431 = add i64 %4430, 3
  store i64 %4431, i64* %PC.i27
  %4432 = inttoptr i64 %4429 to i32*
  %4433 = load i32, i32* %4432
  %4434 = zext i32 %4433 to i64
  store i64 %4434, i64* %RAX.i28, align 8
  store %struct.Memory* %loadMem_40246e, %struct.Memory** %MEMORY
  %loadMem_402471 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4436 = getelementptr inbounds %struct.GPR, %struct.GPR* %4435, i32 0, i32 33
  %4437 = getelementptr inbounds %struct.Reg, %struct.Reg* %4436, i32 0, i32 0
  %PC.i24 = bitcast %union.anon* %4437 to i64*
  %4438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4439 = getelementptr inbounds %struct.GPR, %struct.GPR* %4438, i32 0, i32 5
  %4440 = getelementptr inbounds %struct.Reg, %struct.Reg* %4439, i32 0, i32 0
  %RCX.i25 = bitcast %union.anon* %4440 to i64*
  %4441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4442 = getelementptr inbounds %struct.GPR, %struct.GPR* %4441, i32 0, i32 15
  %4443 = getelementptr inbounds %struct.Reg, %struct.Reg* %4442, i32 0, i32 0
  %RBP.i26 = bitcast %union.anon* %4443 to i64*
  %4444 = load i64, i64* %RBP.i26
  %4445 = sub i64 %4444, 8
  %4446 = load i64, i64* %PC.i24
  %4447 = add i64 %4446, 4
  store i64 %4447, i64* %PC.i24
  %4448 = inttoptr i64 %4445 to i64*
  %4449 = load i64, i64* %4448
  store i64 %4449, i64* %RCX.i25, align 8
  store %struct.Memory* %loadMem_402471, %struct.Memory** %MEMORY
  %loadMem_402475 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4451 = getelementptr inbounds %struct.GPR, %struct.GPR* %4450, i32 0, i32 33
  %4452 = getelementptr inbounds %struct.Reg, %struct.Reg* %4451, i32 0, i32 0
  %PC.i21 = bitcast %union.anon* %4452 to i64*
  %4453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4454 = getelementptr inbounds %struct.GPR, %struct.GPR* %4453, i32 0, i32 1
  %4455 = getelementptr inbounds %struct.Reg, %struct.Reg* %4454, i32 0, i32 0
  %EAX.i22 = bitcast %union.anon* %4455 to i32*
  %4456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4457 = getelementptr inbounds %struct.GPR, %struct.GPR* %4456, i32 0, i32 5
  %4458 = getelementptr inbounds %struct.Reg, %struct.Reg* %4457, i32 0, i32 0
  %RCX.i23 = bitcast %union.anon* %4458 to i64*
  %4459 = load i64, i64* %RCX.i23
  %4460 = add i64 %4459, 4
  %4461 = load i32, i32* %EAX.i22
  %4462 = zext i32 %4461 to i64
  %4463 = load i64, i64* %PC.i21
  %4464 = add i64 %4463, 3
  store i64 %4464, i64* %PC.i21
  %4465 = inttoptr i64 %4460 to i32*
  store i32 %4461, i32* %4465
  store %struct.Memory* %loadMem_402475, %struct.Memory** %MEMORY
  %loadMem_402478 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4467 = getelementptr inbounds %struct.GPR, %struct.GPR* %4466, i32 0, i32 33
  %4468 = getelementptr inbounds %struct.Reg, %struct.Reg* %4467, i32 0, i32 0
  %PC.i18 = bitcast %union.anon* %4468 to i64*
  %4469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4470 = getelementptr inbounds %struct.GPR, %struct.GPR* %4469, i32 0, i32 1
  %4471 = getelementptr inbounds %struct.Reg, %struct.Reg* %4470, i32 0, i32 0
  %RAX.i19 = bitcast %union.anon* %4471 to i64*
  %4472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4473 = getelementptr inbounds %struct.GPR, %struct.GPR* %4472, i32 0, i32 15
  %4474 = getelementptr inbounds %struct.Reg, %struct.Reg* %4473, i32 0, i32 0
  %RBP.i20 = bitcast %union.anon* %4474 to i64*
  %4475 = load i64, i64* %RBP.i20
  %4476 = sub i64 %4475, 20
  %4477 = load i64, i64* %PC.i18
  %4478 = add i64 %4477, 3
  store i64 %4478, i64* %PC.i18
  %4479 = inttoptr i64 %4476 to i32*
  %4480 = load i32, i32* %4479
  %4481 = zext i32 %4480 to i64
  store i64 %4481, i64* %RAX.i19, align 8
  store %struct.Memory* %loadMem_402478, %struct.Memory** %MEMORY
  %loadMem_40247b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4482 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4483 = getelementptr inbounds %struct.GPR, %struct.GPR* %4482, i32 0, i32 33
  %4484 = getelementptr inbounds %struct.Reg, %struct.Reg* %4483, i32 0, i32 0
  %PC.i15 = bitcast %union.anon* %4484 to i64*
  %4485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4486 = getelementptr inbounds %struct.GPR, %struct.GPR* %4485, i32 0, i32 5
  %4487 = getelementptr inbounds %struct.Reg, %struct.Reg* %4486, i32 0, i32 0
  %RCX.i16 = bitcast %union.anon* %4487 to i64*
  %4488 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4489 = getelementptr inbounds %struct.GPR, %struct.GPR* %4488, i32 0, i32 15
  %4490 = getelementptr inbounds %struct.Reg, %struct.Reg* %4489, i32 0, i32 0
  %RBP.i17 = bitcast %union.anon* %4490 to i64*
  %4491 = load i64, i64* %RBP.i17
  %4492 = sub i64 %4491, 8
  %4493 = load i64, i64* %PC.i15
  %4494 = add i64 %4493, 4
  store i64 %4494, i64* %PC.i15
  %4495 = inttoptr i64 %4492 to i64*
  %4496 = load i64, i64* %4495
  store i64 %4496, i64* %RCX.i16, align 8
  store %struct.Memory* %loadMem_40247b, %struct.Memory** %MEMORY
  %loadMem_40247f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4498 = getelementptr inbounds %struct.GPR, %struct.GPR* %4497, i32 0, i32 33
  %4499 = getelementptr inbounds %struct.Reg, %struct.Reg* %4498, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %4499 to i64*
  %4500 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4501 = getelementptr inbounds %struct.GPR, %struct.GPR* %4500, i32 0, i32 1
  %4502 = getelementptr inbounds %struct.Reg, %struct.Reg* %4501, i32 0, i32 0
  %EAX.i13 = bitcast %union.anon* %4502 to i32*
  %4503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4504 = getelementptr inbounds %struct.GPR, %struct.GPR* %4503, i32 0, i32 5
  %4505 = getelementptr inbounds %struct.Reg, %struct.Reg* %4504, i32 0, i32 0
  %RCX.i14 = bitcast %union.anon* %4505 to i64*
  %4506 = load i64, i64* %RCX.i14
  %4507 = load i32, i32* %EAX.i13
  %4508 = zext i32 %4507 to i64
  %4509 = load i64, i64* %PC.i12
  %4510 = add i64 %4509, 2
  store i64 %4510, i64* %PC.i12
  %4511 = inttoptr i64 %4506 to i32*
  store i32 %4507, i32* %4511
  store %struct.Memory* %loadMem_40247f, %struct.Memory** %MEMORY
  %loadMem_402481 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4513 = getelementptr inbounds %struct.GPR, %struct.GPR* %4512, i32 0, i32 33
  %4514 = getelementptr inbounds %struct.Reg, %struct.Reg* %4513, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %4514 to i64*
  %4515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4516 = getelementptr inbounds %struct.GPR, %struct.GPR* %4515, i32 0, i32 5
  %4517 = getelementptr inbounds %struct.Reg, %struct.Reg* %4516, i32 0, i32 0
  %RCX.i10 = bitcast %union.anon* %4517 to i64*
  %4518 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4519 = getelementptr inbounds %struct.GPR, %struct.GPR* %4518, i32 0, i32 15
  %4520 = getelementptr inbounds %struct.Reg, %struct.Reg* %4519, i32 0, i32 0
  %RBP.i11 = bitcast %union.anon* %4520 to i64*
  %4521 = load i64, i64* %RBP.i11
  %4522 = sub i64 %4521, 8
  %4523 = load i64, i64* %PC.i9
  %4524 = add i64 %4523, 4
  store i64 %4524, i64* %PC.i9
  %4525 = inttoptr i64 %4522 to i64*
  %4526 = load i64, i64* %4525
  store i64 %4526, i64* %RCX.i10, align 8
  store %struct.Memory* %loadMem_402481, %struct.Memory** %MEMORY
  %loadMem_402485 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4528 = getelementptr inbounds %struct.GPR, %struct.GPR* %4527, i32 0, i32 33
  %4529 = getelementptr inbounds %struct.Reg, %struct.Reg* %4528, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %4529 to i64*
  %4530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4531 = getelementptr inbounds %struct.GPR, %struct.GPR* %4530, i32 0, i32 1
  %4532 = getelementptr inbounds %struct.Reg, %struct.Reg* %4531, i32 0, i32 0
  %RAX.i7 = bitcast %union.anon* %4532 to i64*
  %4533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4534 = getelementptr inbounds %struct.GPR, %struct.GPR* %4533, i32 0, i32 5
  %4535 = getelementptr inbounds %struct.Reg, %struct.Reg* %4534, i32 0, i32 0
  %RCX.i8 = bitcast %union.anon* %4535 to i64*
  %4536 = load i64, i64* %RCX.i8
  %4537 = add i64 %4536, 80
  %4538 = load i64, i64* %PC.i6
  %4539 = add i64 %4538, 3
  store i64 %4539, i64* %PC.i6
  %4540 = inttoptr i64 %4537 to i32*
  %4541 = load i32, i32* %4540
  %4542 = zext i32 %4541 to i64
  store i64 %4542, i64* %RAX.i7, align 8
  store %struct.Memory* %loadMem_402485, %struct.Memory** %MEMORY
  %loadMem_402488 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4544 = getelementptr inbounds %struct.GPR, %struct.GPR* %4543, i32 0, i32 33
  %4545 = getelementptr inbounds %struct.Reg, %struct.Reg* %4544, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %4545 to i64*
  %4546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4547 = getelementptr inbounds %struct.GPR, %struct.GPR* %4546, i32 0, i32 1
  %4548 = getelementptr inbounds %struct.Reg, %struct.Reg* %4547, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %4548 to i64*
  %4549 = load i64, i64* %RAX.i
  %4550 = load i64, i64* %PC.i5
  %4551 = add i64 %4550, 3
  store i64 %4551, i64* %PC.i5
  %4552 = trunc i64 %4549 to i32
  %4553 = add i32 1, %4552
  %4554 = zext i32 %4553 to i64
  store i64 %4554, i64* %RAX.i, align 8
  %4555 = icmp ult i32 %4553, %4552
  %4556 = icmp ult i32 %4553, 1
  %4557 = or i1 %4555, %4556
  %4558 = zext i1 %4557 to i8
  %4559 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4558, i8* %4559, align 1
  %4560 = and i32 %4553, 255
  %4561 = call i32 @llvm.ctpop.i32(i32 %4560)
  %4562 = trunc i32 %4561 to i8
  %4563 = and i8 %4562, 1
  %4564 = xor i8 %4563, 1
  %4565 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4564, i8* %4565, align 1
  %4566 = xor i64 1, %4549
  %4567 = trunc i64 %4566 to i32
  %4568 = xor i32 %4567, %4553
  %4569 = lshr i32 %4568, 4
  %4570 = trunc i32 %4569 to i8
  %4571 = and i8 %4570, 1
  %4572 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4571, i8* %4572, align 1
  %4573 = icmp eq i32 %4553, 0
  %4574 = zext i1 %4573 to i8
  %4575 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4574, i8* %4575, align 1
  %4576 = lshr i32 %4553, 31
  %4577 = trunc i32 %4576 to i8
  %4578 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4577, i8* %4578, align 1
  %4579 = lshr i32 %4552, 31
  %4580 = xor i32 %4576, %4579
  %4581 = add i32 %4580, %4576
  %4582 = icmp eq i32 %4581, 2
  %4583 = zext i1 %4582 to i8
  %4584 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4583, i8* %4584, align 1
  store %struct.Memory* %loadMem_402488, %struct.Memory** %MEMORY
  %loadMem_40248b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4586 = getelementptr inbounds %struct.GPR, %struct.GPR* %4585, i32 0, i32 33
  %4587 = getelementptr inbounds %struct.Reg, %struct.Reg* %4586, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %4587 to i64*
  %4588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4589 = getelementptr inbounds %struct.GPR, %struct.GPR* %4588, i32 0, i32 1
  %4590 = getelementptr inbounds %struct.Reg, %struct.Reg* %4589, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %4590 to i32*
  %4591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4592 = getelementptr inbounds %struct.GPR, %struct.GPR* %4591, i32 0, i32 5
  %4593 = getelementptr inbounds %struct.Reg, %struct.Reg* %4592, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %4593 to i64*
  %4594 = load i64, i64* %RCX.i
  %4595 = add i64 %4594, 80
  %4596 = load i32, i32* %EAX.i
  %4597 = zext i32 %4596 to i64
  %4598 = load i64, i64* %PC.i4
  %4599 = add i64 %4598, 3
  store i64 %4599, i64* %PC.i4
  %4600 = inttoptr i64 %4595 to i32*
  store i32 %4596, i32* %4600
  store %struct.Memory* %loadMem_40248b, %struct.Memory** %MEMORY
  %loadMem_40248e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4602 = getelementptr inbounds %struct.GPR, %struct.GPR* %4601, i32 0, i32 33
  %4603 = getelementptr inbounds %struct.Reg, %struct.Reg* %4602, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %4603 to i64*
  %4604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4605 = getelementptr inbounds %struct.GPR, %struct.GPR* %4604, i32 0, i32 15
  %4606 = getelementptr inbounds %struct.Reg, %struct.Reg* %4605, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %4606 to i64*
  %4607 = load i64, i64* %PC.i2
  %4608 = add i64 %4607, 1
  store i64 %4608, i64* %PC.i2
  %4609 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4610 = load i64, i64* %4609, align 8
  %4611 = add i64 %4610, 8
  %4612 = inttoptr i64 %4610 to i64*
  %4613 = load i64, i64* %4612
  store i64 %4613, i64* %RBP.i3, align 8
  store i64 %4611, i64* %4609, align 8
  store %struct.Memory* %loadMem_40248e, %struct.Memory** %MEMORY
  %loadMem_40248f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4614 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4615 = getelementptr inbounds %struct.GPR, %struct.GPR* %4614, i32 0, i32 33
  %4616 = getelementptr inbounds %struct.Reg, %struct.Reg* %4615, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %4616 to i64*
  %4617 = load i64, i64* %PC.i1
  %4618 = add i64 %4617, 1
  store i64 %4618, i64* %PC.i1
  %4619 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4620 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4621 = load i64, i64* %4620, align 8
  %4622 = inttoptr i64 %4621 to i64*
  %4623 = load i64, i64* %4622
  store i64 %4623, i64* %4619, align 8
  %4624 = add i64 %4621, 8
  store i64 %4624, i64* %4620, align 8
  store %struct.Memory* %loadMem_40248f, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_40248f
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

define %struct.Memory* @routine_movl_0x4__rdi____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_subl__0x2___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %12, 2
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RSI, align 8
  %15 = icmp ult i32 %12, 2
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
  %24 = xor i64 2, %9
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

define %struct.Memory* @routine_cmpw__0x0__MINUS0xa__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 10
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 5
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i16*
  %14 = load i16, i16* %13
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %15, align 1
  %16 = and i16 %14, 255
  %17 = zext i16 %16 to i32
  %18 = call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %23, align 1
  %24 = icmp eq i16 %14, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i16 %14, 15
  %28 = trunc i16 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i16 %14, 15
  %31 = xor i16 %27, %30
  %32 = add i16 %31, %30
  %33 = icmp eq i16 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_402160(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_addl_MINUS0x14__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 20
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
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

define %struct.Memory* @routine_movl__0x2__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 2, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_402165(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x100__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i32 %14, 256
  %16 = icmp ult i32 %14, 256
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
  %25 = xor i32 %14, 256
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

define %struct.Memory* @routine_jae_.L_40246e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x200__MINUS0x14__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jb_.L_4022db(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_402214(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jle_.L_40220f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_4021e2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_402214(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_402219(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jbe_.L_4022cb(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_4022c6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jle_.L_4022c1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_402294(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_4022c6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_subl__0x200___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %12, 512
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RAX, align 8
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

define %struct.Memory* @routine_jmpq_.L_402457(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x100__MINUS0x14__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i32, i32* %13
  %15 = sub i32 %14, 256
  %16 = icmp ult i32 %14, 256
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
  %25 = xor i32 %14, 256
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

define %struct.Memory* @routine_jae_.L_402439(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_40237a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jle_.L_402375(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_402348(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_40237a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_40237f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jbe_.L_402434(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_40242f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jle_.L_40242a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_4023fd(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_40242f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_402452(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl__0x100___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %12, 256
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RCX, align 8
  %15 = icmp ult i32 %12, 256
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
  %24 = xor i64 256, %9
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

define %struct.Memory* @routine_movl__ecx__MINUS0x14__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 20
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_shll__0x1___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 2
  store i64 %11, i64* %PC
  %12 = trunc i64 %9 to i32
  %13 = shl i32 %12, 1
  %14 = icmp slt i32 %12, 0
  %15 = icmp slt i32 %13, 0
  %16 = xor i1 %14, %15
  %17 = zext i32 %13 to i64
  store i64 %17, i64* %RAX, align 8
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
