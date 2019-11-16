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
%"class.std::bitset" = type { %struct.uint64v4_t }
%struct.uint64v4_t = type { [4 x i64] }

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

declare %struct.Memory* @sub_451f40.FSet(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @build_cij(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_42c250 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_42c250, %struct.Memory** %MEMORY
  %loadMem_42c251 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i756 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i757 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i758 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i757
  %27 = load i64, i64* %PC.i756
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i756
  store i64 %26, i64* %RBP.i758, align 8
  store %struct.Memory* %loadMem_42c251, %struct.Memory** %MEMORY
  %loadMem_42c254 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i754 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i755 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i755
  %36 = load i64, i64* %PC.i754
  %37 = add i64 %36, 4
  store i64 %37, i64* %PC.i754
  %38 = sub i64 %35, 64
  store i64 %38, i64* %RSP.i755, align 8
  %39 = icmp ult i64 %35, 64
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
  %49 = xor i64 64, %35
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
  store %struct.Memory* %loadMem_42c254, %struct.Memory** %MEMORY
  %loadMem_42c258 = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i751 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %RAX.i752 = bitcast %union.anon* %72 to i64*
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %74 = getelementptr inbounds %struct.GPR, %struct.GPR* %73, i32 0, i32 15
  %75 = getelementptr inbounds %struct.Reg, %struct.Reg* %74, i32 0, i32 0
  %RBP.i753 = bitcast %union.anon* %75 to i64*
  %76 = load i64, i64* %RBP.i753
  %77 = add i64 %76, 16
  %78 = load i64, i64* %PC.i751
  %79 = add i64 %78, 4
  store i64 %79, i64* %PC.i751
  %80 = inttoptr i64 %77 to i64*
  %81 = load i64, i64* %80
  store i64 %81, i64* %RAX.i752, align 8
  store %struct.Memory* %loadMem_42c258, %struct.Memory** %MEMORY
  %loadMem_42c25c = load %struct.Memory*, %struct.Memory** %MEMORY
  %82 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %83 = getelementptr inbounds %struct.GPR, %struct.GPR* %82, i32 0, i32 33
  %84 = getelementptr inbounds %struct.Reg, %struct.Reg* %83, i32 0, i32 0
  %PC.i749 = bitcast %union.anon* %84 to i64*
  %85 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %86 = getelementptr inbounds %struct.GPR, %struct.GPR* %85, i32 0, i32 21
  %87 = getelementptr inbounds %struct.Reg, %struct.Reg* %86, i32 0, i32 0
  %R10D.i750 = bitcast %union.anon* %87 to i32*
  %88 = bitcast i32* %R10D.i750 to i64*
  %89 = load i64, i64* %PC.i749
  %90 = add i64 %89, 6
  store i64 %90, i64* %PC.i749
  store i64 8, i64* %88, align 8
  store %struct.Memory* %loadMem_42c25c, %struct.Memory** %MEMORY
  %loadMem_42c262 = load %struct.Memory*, %struct.Memory** %MEMORY
  %91 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %92 = getelementptr inbounds %struct.GPR, %struct.GPR* %91, i32 0, i32 33
  %93 = getelementptr inbounds %struct.Reg, %struct.Reg* %92, i32 0, i32 0
  %PC.i746 = bitcast %union.anon* %93 to i64*
  %94 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %95 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %94, i64 0, i64 0
  %YMM0.i747 = bitcast %union.VectorReg* %95 to %"class.std::bitset"*
  %96 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %97 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %96, i64 0, i64 0
  %XMM0.i748 = bitcast %union.VectorReg* %97 to %union.vec128_t*
  %98 = bitcast %"class.std::bitset"* %YMM0.i747 to i8*
  %99 = bitcast %"class.std::bitset"* %YMM0.i747 to i8*
  %100 = bitcast %union.vec128_t* %XMM0.i748 to i8*
  %101 = load i64, i64* %PC.i746
  %102 = add i64 %101, 3
  store i64 %102, i64* %PC.i746
  %103 = bitcast i8* %99 to i64*
  %104 = load i64, i64* %103, align 1
  %105 = getelementptr inbounds i8, i8* %99, i64 8
  %106 = bitcast i8* %105 to i64*
  %107 = load i64, i64* %106, align 1
  %108 = bitcast i8* %100 to i64*
  %109 = load i64, i64* %108, align 1
  %110 = getelementptr inbounds i8, i8* %100, i64 8
  %111 = bitcast i8* %110 to i64*
  %112 = load i64, i64* %111, align 1
  %113 = xor i64 %109, %104
  %114 = xor i64 %112, %107
  %115 = trunc i64 %113 to i32
  %116 = lshr i64 %113, 32
  %117 = trunc i64 %116 to i32
  %118 = bitcast i8* %98 to i32*
  store i32 %115, i32* %118, align 1
  %119 = getelementptr inbounds i8, i8* %98, i64 4
  %120 = bitcast i8* %119 to i32*
  store i32 %117, i32* %120, align 1
  %121 = trunc i64 %114 to i32
  %122 = getelementptr inbounds i8, i8* %98, i64 8
  %123 = bitcast i8* %122 to i32*
  store i32 %121, i32* %123, align 1
  %124 = lshr i64 %114, 32
  %125 = trunc i64 %124 to i32
  %126 = getelementptr inbounds i8, i8* %98, i64 12
  %127 = bitcast i8* %126 to i32*
  store i32 %125, i32* %127, align 1
  store %struct.Memory* %loadMem_42c262, %struct.Memory** %MEMORY
  %loadMem_42c265 = load %struct.Memory*, %struct.Memory** %MEMORY
  %128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %129 = getelementptr inbounds %struct.GPR, %struct.GPR* %128, i32 0, i32 33
  %130 = getelementptr inbounds %struct.Reg, %struct.Reg* %129, i32 0, i32 0
  %PC.i743 = bitcast %union.anon* %130 to i64*
  %131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %132 = getelementptr inbounds %struct.GPR, %struct.GPR* %131, i32 0, i32 11
  %133 = getelementptr inbounds %struct.Reg, %struct.Reg* %132, i32 0, i32 0
  %RDI.i744 = bitcast %union.anon* %133 to i64*
  %134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %135 = getelementptr inbounds %struct.GPR, %struct.GPR* %134, i32 0, i32 15
  %136 = getelementptr inbounds %struct.Reg, %struct.Reg* %135, i32 0, i32 0
  %RBP.i745 = bitcast %union.anon* %136 to i64*
  %137 = load i64, i64* %RBP.i745
  %138 = sub i64 %137, 16
  %139 = load i64, i64* %RDI.i744
  %140 = load i64, i64* %PC.i743
  %141 = add i64 %140, 4
  store i64 %141, i64* %PC.i743
  %142 = inttoptr i64 %138 to i64*
  store i64 %139, i64* %142
  store %struct.Memory* %loadMem_42c265, %struct.Memory** %MEMORY
  %loadMem_42c269 = load %struct.Memory*, %struct.Memory** %MEMORY
  %143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %144 = getelementptr inbounds %struct.GPR, %struct.GPR* %143, i32 0, i32 33
  %145 = getelementptr inbounds %struct.Reg, %struct.Reg* %144, i32 0, i32 0
  %PC.i741 = bitcast %union.anon* %145 to i64*
  %146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %147 = getelementptr inbounds %struct.GPR, %struct.GPR* %146, i32 0, i32 9
  %148 = getelementptr inbounds %struct.Reg, %struct.Reg* %147, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %148 to i32*
  %149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %150 = getelementptr inbounds %struct.GPR, %struct.GPR* %149, i32 0, i32 15
  %151 = getelementptr inbounds %struct.Reg, %struct.Reg* %150, i32 0, i32 0
  %RBP.i742 = bitcast %union.anon* %151 to i64*
  %152 = load i64, i64* %RBP.i742
  %153 = sub i64 %152, 20
  %154 = load i32, i32* %ESI.i
  %155 = zext i32 %154 to i64
  %156 = load i64, i64* %PC.i741
  %157 = add i64 %156, 3
  store i64 %157, i64* %PC.i741
  %158 = inttoptr i64 %153 to i32*
  store i32 %154, i32* %158
  store %struct.Memory* %loadMem_42c269, %struct.Memory** %MEMORY
  %loadMem_42c26c = load %struct.Memory*, %struct.Memory** %MEMORY
  %159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %160 = getelementptr inbounds %struct.GPR, %struct.GPR* %159, i32 0, i32 33
  %161 = getelementptr inbounds %struct.Reg, %struct.Reg* %160, i32 0, i32 0
  %PC.i738 = bitcast %union.anon* %161 to i64*
  %162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %163 = getelementptr inbounds %struct.GPR, %struct.GPR* %162, i32 0, i32 7
  %164 = getelementptr inbounds %struct.Reg, %struct.Reg* %163, i32 0, i32 0
  %RDX.i739 = bitcast %union.anon* %164 to i64*
  %165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %166 = getelementptr inbounds %struct.GPR, %struct.GPR* %165, i32 0, i32 15
  %167 = getelementptr inbounds %struct.Reg, %struct.Reg* %166, i32 0, i32 0
  %RBP.i740 = bitcast %union.anon* %167 to i64*
  %168 = load i64, i64* %RBP.i740
  %169 = sub i64 %168, 32
  %170 = load i64, i64* %RDX.i739
  %171 = load i64, i64* %PC.i738
  %172 = add i64 %171, 4
  store i64 %172, i64* %PC.i738
  %173 = inttoptr i64 %169 to i64*
  store i64 %170, i64* %173
  store %struct.Memory* %loadMem_42c26c, %struct.Memory** %MEMORY
  %loadMem_42c270 = load %struct.Memory*, %struct.Memory** %MEMORY
  %174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %175 = getelementptr inbounds %struct.GPR, %struct.GPR* %174, i32 0, i32 33
  %176 = getelementptr inbounds %struct.Reg, %struct.Reg* %175, i32 0, i32 0
  %PC.i735 = bitcast %union.anon* %176 to i64*
  %177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %178 = getelementptr inbounds %struct.GPR, %struct.GPR* %177, i32 0, i32 5
  %179 = getelementptr inbounds %struct.Reg, %struct.Reg* %178, i32 0, i32 0
  %ECX.i736 = bitcast %union.anon* %179 to i32*
  %180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %181 = getelementptr inbounds %struct.GPR, %struct.GPR* %180, i32 0, i32 15
  %182 = getelementptr inbounds %struct.Reg, %struct.Reg* %181, i32 0, i32 0
  %RBP.i737 = bitcast %union.anon* %182 to i64*
  %183 = load i64, i64* %RBP.i737
  %184 = sub i64 %183, 36
  %185 = load i32, i32* %ECX.i736
  %186 = zext i32 %185 to i64
  %187 = load i64, i64* %PC.i735
  %188 = add i64 %187, 3
  store i64 %188, i64* %PC.i735
  %189 = inttoptr i64 %184 to i32*
  store i32 %185, i32* %189
  store %struct.Memory* %loadMem_42c270, %struct.Memory** %MEMORY
  %loadMem_42c273 = load %struct.Memory*, %struct.Memory** %MEMORY
  %190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %191 = getelementptr inbounds %struct.GPR, %struct.GPR* %190, i32 0, i32 33
  %192 = getelementptr inbounds %struct.Reg, %struct.Reg* %191, i32 0, i32 0
  %PC.i733 = bitcast %union.anon* %192 to i64*
  %193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %194 = getelementptr inbounds %struct.GPR, %struct.GPR* %193, i32 0, i32 17
  %195 = getelementptr inbounds %struct.Reg, %struct.Reg* %194, i32 0, i32 0
  %R8D.i = bitcast %union.anon* %195 to i32*
  %196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %197 = getelementptr inbounds %struct.GPR, %struct.GPR* %196, i32 0, i32 15
  %198 = getelementptr inbounds %struct.Reg, %struct.Reg* %197, i32 0, i32 0
  %RBP.i734 = bitcast %union.anon* %198 to i64*
  %199 = load i64, i64* %RBP.i734
  %200 = sub i64 %199, 40
  %201 = load i32, i32* %R8D.i
  %202 = zext i32 %201 to i64
  %203 = load i64, i64* %PC.i733
  %204 = add i64 %203, 4
  store i64 %204, i64* %PC.i733
  %205 = inttoptr i64 %200 to i32*
  store i32 %201, i32* %205
  store %struct.Memory* %loadMem_42c273, %struct.Memory** %MEMORY
  %loadMem_42c277 = load %struct.Memory*, %struct.Memory** %MEMORY
  %206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %207 = getelementptr inbounds %struct.GPR, %struct.GPR* %206, i32 0, i32 33
  %208 = getelementptr inbounds %struct.Reg, %struct.Reg* %207, i32 0, i32 0
  %PC.i731 = bitcast %union.anon* %208 to i64*
  %209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %210 = getelementptr inbounds %struct.GPR, %struct.GPR* %209, i32 0, i32 15
  %211 = getelementptr inbounds %struct.Reg, %struct.Reg* %210, i32 0, i32 0
  %RBP.i732 = bitcast %union.anon* %211 to i64*
  %212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %213 = getelementptr inbounds %struct.GPR, %struct.GPR* %212, i32 0, i32 19
  %214 = getelementptr inbounds %struct.Reg, %struct.Reg* %213, i32 0, i32 0
  %R9.i = bitcast %union.anon* %214 to i64*
  %215 = load i64, i64* %RBP.i732
  %216 = sub i64 %215, 48
  %217 = load i64, i64* %R9.i
  %218 = load i64, i64* %PC.i731
  %219 = add i64 %218, 4
  store i64 %219, i64* %PC.i731
  %220 = inttoptr i64 %216 to i64*
  store i64 %217, i64* %220
  store %struct.Memory* %loadMem_42c277, %struct.Memory** %MEMORY
  %loadMem_42c27b = load %struct.Memory*, %struct.Memory** %MEMORY
  %221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %222 = getelementptr inbounds %struct.GPR, %struct.GPR* %221, i32 0, i32 33
  %223 = getelementptr inbounds %struct.Reg, %struct.Reg* %222, i32 0, i32 0
  %PC.i728 = bitcast %union.anon* %223 to i64*
  %224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %225 = getelementptr inbounds %struct.GPR, %struct.GPR* %224, i32 0, i32 1
  %226 = getelementptr inbounds %struct.Reg, %struct.Reg* %225, i32 0, i32 0
  %RAX.i729 = bitcast %union.anon* %226 to i64*
  %227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %228 = getelementptr inbounds %struct.GPR, %struct.GPR* %227, i32 0, i32 15
  %229 = getelementptr inbounds %struct.Reg, %struct.Reg* %228, i32 0, i32 0
  %RBP.i730 = bitcast %union.anon* %229 to i64*
  %230 = load i64, i64* %RBP.i730
  %231 = sub i64 %230, 56
  %232 = load i64, i64* %RAX.i729
  %233 = load i64, i64* %PC.i728
  %234 = add i64 %233, 4
  store i64 %234, i64* %PC.i728
  %235 = inttoptr i64 %231 to i64*
  store i64 %232, i64* %235
  store %struct.Memory* %loadMem_42c27b, %struct.Memory** %MEMORY
  %loadMem_42c27f = load %struct.Memory*, %struct.Memory** %MEMORY
  %236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %237 = getelementptr inbounds %struct.GPR, %struct.GPR* %236, i32 0, i32 33
  %238 = getelementptr inbounds %struct.Reg, %struct.Reg* %237, i32 0, i32 0
  %PC.i725 = bitcast %union.anon* %238 to i64*
  %239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %240 = getelementptr inbounds %struct.GPR, %struct.GPR* %239, i32 0, i32 5
  %241 = getelementptr inbounds %struct.Reg, %struct.Reg* %240, i32 0, i32 0
  %RCX.i726 = bitcast %union.anon* %241 to i64*
  %242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %243 = getelementptr inbounds %struct.GPR, %struct.GPR* %242, i32 0, i32 15
  %244 = getelementptr inbounds %struct.Reg, %struct.Reg* %243, i32 0, i32 0
  %RBP.i727 = bitcast %union.anon* %244 to i64*
  %245 = load i64, i64* %RBP.i727
  %246 = sub i64 %245, 36
  %247 = load i64, i64* %PC.i725
  %248 = add i64 %247, 3
  store i64 %248, i64* %PC.i725
  %249 = inttoptr i64 %246 to i32*
  %250 = load i32, i32* %249
  %251 = zext i32 %250 to i64
  store i64 %251, i64* %RCX.i726, align 8
  store %struct.Memory* %loadMem_42c27f, %struct.Memory** %MEMORY
  %loadMem_42c282 = load %struct.Memory*, %struct.Memory** %MEMORY
  %252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %253 = getelementptr inbounds %struct.GPR, %struct.GPR* %252, i32 0, i32 33
  %254 = getelementptr inbounds %struct.Reg, %struct.Reg* %253, i32 0, i32 0
  %PC.i723 = bitcast %union.anon* %254 to i64*
  %255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %256 = getelementptr inbounds %struct.GPR, %struct.GPR* %255, i32 0, i32 5
  %257 = getelementptr inbounds %struct.Reg, %struct.Reg* %256, i32 0, i32 0
  %RCX.i724 = bitcast %union.anon* %257 to i64*
  %258 = load i64, i64* %RCX.i724
  %259 = load i64, i64* %PC.i723
  %260 = add i64 %259, 3
  store i64 %260, i64* %PC.i723
  %261 = trunc i64 %258 to i32
  %262 = add i32 -1, %261
  %263 = zext i32 %262 to i64
  store i64 %263, i64* %RCX.i724, align 8
  %264 = icmp ult i32 %262, %261
  %265 = icmp ult i32 %262, -1
  %266 = or i1 %264, %265
  %267 = zext i1 %266 to i8
  %268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %267, i8* %268, align 1
  %269 = and i32 %262, 255
  %270 = call i32 @llvm.ctpop.i32(i32 %269)
  %271 = trunc i32 %270 to i8
  %272 = and i8 %271, 1
  %273 = xor i8 %272, 1
  %274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %273, i8* %274, align 1
  %275 = xor i64 -1, %258
  %276 = trunc i64 %275 to i32
  %277 = xor i32 %276, %262
  %278 = lshr i32 %277, 4
  %279 = trunc i32 %278 to i8
  %280 = and i8 %279, 1
  %281 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %280, i8* %281, align 1
  %282 = icmp eq i32 %262, 0
  %283 = zext i1 %282 to i8
  %284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %283, i8* %284, align 1
  %285 = lshr i32 %262, 31
  %286 = trunc i32 %285 to i8
  %287 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %286, i8* %287, align 1
  %288 = lshr i32 %261, 31
  %289 = xor i32 %285, %288
  %290 = xor i32 %285, 1
  %291 = add i32 %289, %290
  %292 = icmp eq i32 %291, 2
  %293 = zext i1 %292 to i8
  %294 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %293, i8* %294, align 1
  store %struct.Memory* %loadMem_42c282, %struct.Memory** %MEMORY
  %loadMem_42c285 = load %struct.Memory*, %struct.Memory** %MEMORY
  %295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %296 = getelementptr inbounds %struct.GPR, %struct.GPR* %295, i32 0, i32 33
  %297 = getelementptr inbounds %struct.Reg, %struct.Reg* %296, i32 0, i32 0
  %PC.i720 = bitcast %union.anon* %297 to i64*
  %298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %299 = getelementptr inbounds %struct.GPR, %struct.GPR* %298, i32 0, i32 5
  %300 = getelementptr inbounds %struct.Reg, %struct.Reg* %299, i32 0, i32 0
  %ECX.i721 = bitcast %union.anon* %300 to i32*
  %301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %302 = getelementptr inbounds %struct.GPR, %struct.GPR* %301, i32 0, i32 15
  %303 = getelementptr inbounds %struct.Reg, %struct.Reg* %302, i32 0, i32 0
  %RBP.i722 = bitcast %union.anon* %303 to i64*
  %304 = load i64, i64* %RBP.i722
  %305 = sub i64 %304, 36
  %306 = load i32, i32* %ECX.i721
  %307 = zext i32 %306 to i64
  %308 = load i64, i64* %PC.i720
  %309 = add i64 %308, 3
  store i64 %309, i64* %PC.i720
  %310 = inttoptr i64 %305 to i32*
  store i32 %306, i32* %310
  store %struct.Memory* %loadMem_42c285, %struct.Memory** %MEMORY
  %loadMem_42c288 = load %struct.Memory*, %struct.Memory** %MEMORY
  %311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %312 = getelementptr inbounds %struct.GPR, %struct.GPR* %311, i32 0, i32 33
  %313 = getelementptr inbounds %struct.Reg, %struct.Reg* %312, i32 0, i32 0
  %PC.i717 = bitcast %union.anon* %313 to i64*
  %314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %315 = getelementptr inbounds %struct.GPR, %struct.GPR* %314, i32 0, i32 5
  %316 = getelementptr inbounds %struct.Reg, %struct.Reg* %315, i32 0, i32 0
  %RCX.i718 = bitcast %union.anon* %316 to i64*
  %317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %318 = getelementptr inbounds %struct.GPR, %struct.GPR* %317, i32 0, i32 15
  %319 = getelementptr inbounds %struct.Reg, %struct.Reg* %318, i32 0, i32 0
  %RBP.i719 = bitcast %union.anon* %319 to i64*
  %320 = load i64, i64* %RBP.i719
  %321 = sub i64 %320, 40
  %322 = load i64, i64* %PC.i717
  %323 = add i64 %322, 3
  store i64 %323, i64* %PC.i717
  %324 = inttoptr i64 %321 to i32*
  %325 = load i32, i32* %324
  %326 = zext i32 %325 to i64
  store i64 %326, i64* %RCX.i718, align 8
  store %struct.Memory* %loadMem_42c288, %struct.Memory** %MEMORY
  %loadMem_42c28b = load %struct.Memory*, %struct.Memory** %MEMORY
  %327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %328 = getelementptr inbounds %struct.GPR, %struct.GPR* %327, i32 0, i32 33
  %329 = getelementptr inbounds %struct.Reg, %struct.Reg* %328, i32 0, i32 0
  %PC.i715 = bitcast %union.anon* %329 to i64*
  %330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %331 = getelementptr inbounds %struct.GPR, %struct.GPR* %330, i32 0, i32 5
  %332 = getelementptr inbounds %struct.Reg, %struct.Reg* %331, i32 0, i32 0
  %RCX.i716 = bitcast %union.anon* %332 to i64*
  %333 = load i64, i64* %RCX.i716
  %334 = load i64, i64* %PC.i715
  %335 = add i64 %334, 3
  store i64 %335, i64* %PC.i715
  %336 = trunc i64 %333 to i32
  %337 = add i32 -1, %336
  %338 = zext i32 %337 to i64
  store i64 %338, i64* %RCX.i716, align 8
  %339 = icmp ult i32 %337, %336
  %340 = icmp ult i32 %337, -1
  %341 = or i1 %339, %340
  %342 = zext i1 %341 to i8
  %343 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %342, i8* %343, align 1
  %344 = and i32 %337, 255
  %345 = call i32 @llvm.ctpop.i32(i32 %344)
  %346 = trunc i32 %345 to i8
  %347 = and i8 %346, 1
  %348 = xor i8 %347, 1
  %349 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %348, i8* %349, align 1
  %350 = xor i64 -1, %333
  %351 = trunc i64 %350 to i32
  %352 = xor i32 %351, %337
  %353 = lshr i32 %352, 4
  %354 = trunc i32 %353 to i8
  %355 = and i8 %354, 1
  %356 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %355, i8* %356, align 1
  %357 = icmp eq i32 %337, 0
  %358 = zext i1 %357 to i8
  %359 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %358, i8* %359, align 1
  %360 = lshr i32 %337, 31
  %361 = trunc i32 %360 to i8
  %362 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %361, i8* %362, align 1
  %363 = lshr i32 %336, 31
  %364 = xor i32 %360, %363
  %365 = xor i32 %360, 1
  %366 = add i32 %364, %365
  %367 = icmp eq i32 %366, 2
  %368 = zext i1 %367 to i8
  %369 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %368, i8* %369, align 1
  store %struct.Memory* %loadMem_42c28b, %struct.Memory** %MEMORY
  %loadMem_42c28e = load %struct.Memory*, %struct.Memory** %MEMORY
  %370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %371 = getelementptr inbounds %struct.GPR, %struct.GPR* %370, i32 0, i32 33
  %372 = getelementptr inbounds %struct.Reg, %struct.Reg* %371, i32 0, i32 0
  %PC.i713 = bitcast %union.anon* %372 to i64*
  %373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %374 = getelementptr inbounds %struct.GPR, %struct.GPR* %373, i32 0, i32 5
  %375 = getelementptr inbounds %struct.Reg, %struct.Reg* %374, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %375 to i32*
  %376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %377 = getelementptr inbounds %struct.GPR, %struct.GPR* %376, i32 0, i32 15
  %378 = getelementptr inbounds %struct.Reg, %struct.Reg* %377, i32 0, i32 0
  %RBP.i714 = bitcast %union.anon* %378 to i64*
  %379 = load i64, i64* %RBP.i714
  %380 = sub i64 %379, 40
  %381 = load i32, i32* %ECX.i
  %382 = zext i32 %381 to i64
  %383 = load i64, i64* %PC.i713
  %384 = add i64 %383, 3
  store i64 %384, i64* %PC.i713
  %385 = inttoptr i64 %380 to i32*
  store i32 %381, i32* %385
  store %struct.Memory* %loadMem_42c28e, %struct.Memory** %MEMORY
  %loadMem_42c291 = load %struct.Memory*, %struct.Memory** %MEMORY
  %386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %387 = getelementptr inbounds %struct.GPR, %struct.GPR* %386, i32 0, i32 33
  %388 = getelementptr inbounds %struct.Reg, %struct.Reg* %387, i32 0, i32 0
  %PC.i711 = bitcast %union.anon* %388 to i64*
  %389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %390 = getelementptr inbounds %struct.GPR, %struct.GPR* %389, i32 0, i32 11
  %391 = getelementptr inbounds %struct.Reg, %struct.Reg* %390, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %391 to i64*
  %392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %393 = getelementptr inbounds %struct.GPR, %struct.GPR* %392, i32 0, i32 15
  %394 = getelementptr inbounds %struct.Reg, %struct.Reg* %393, i32 0, i32 0
  %RBP.i712 = bitcast %union.anon* %394 to i64*
  %395 = load i64, i64* %RBP.i712
  %396 = sub i64 %395, 56
  %397 = load i64, i64* %PC.i711
  %398 = add i64 %397, 4
  store i64 %398, i64* %PC.i711
  %399 = inttoptr i64 %396 to i64*
  %400 = load i64, i64* %399
  store i64 %400, i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_42c291, %struct.Memory** %MEMORY
  %loadMem_42c295 = load %struct.Memory*, %struct.Memory** %MEMORY
  %401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %402 = getelementptr inbounds %struct.GPR, %struct.GPR* %401, i32 0, i32 33
  %403 = getelementptr inbounds %struct.Reg, %struct.Reg* %402, i32 0, i32 0
  %PC.i710 = bitcast %union.anon* %403 to i64*
  %404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %405 = getelementptr inbounds %struct.GPR, %struct.GPR* %404, i32 0, i32 21
  %406 = getelementptr inbounds %struct.Reg, %struct.Reg* %405, i32 0, i32 0
  %R10D.i = bitcast %union.anon* %406 to i32*
  %407 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %408 = getelementptr inbounds %struct.GPR, %struct.GPR* %407, i32 0, i32 9
  %409 = getelementptr inbounds %struct.Reg, %struct.Reg* %408, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %409 to i64*
  %410 = load i32, i32* %R10D.i
  %411 = zext i32 %410 to i64
  %412 = load i64, i64* %PC.i710
  %413 = add i64 %412, 3
  store i64 %413, i64* %PC.i710
  %414 = and i64 %411, 4294967295
  store i64 %414, i64* %RSI.i, align 8
  store %struct.Memory* %loadMem_42c295, %struct.Memory** %MEMORY
  %loadMem1_42c298 = load %struct.Memory*, %struct.Memory** %MEMORY
  %415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %416 = getelementptr inbounds %struct.GPR, %struct.GPR* %415, i32 0, i32 33
  %417 = getelementptr inbounds %struct.Reg, %struct.Reg* %416, i32 0, i32 0
  %PC.i709 = bitcast %union.anon* %417 to i64*
  %418 = load i64, i64* %PC.i709
  %419 = add i64 %418, 154792
  %420 = load i64, i64* %PC.i709
  %421 = add i64 %420, 5
  %422 = load i64, i64* %PC.i709
  %423 = add i64 %422, 5
  store i64 %423, i64* %PC.i709
  %424 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %425 = load i64, i64* %424, align 8
  %426 = add i64 %425, -8
  %427 = inttoptr i64 %426 to i64*
  store i64 %421, i64* %427
  store i64 %426, i64* %424, align 8
  %428 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %419, i64* %428, align 8
  store %struct.Memory* %loadMem1_42c298, %struct.Memory** %MEMORY
  %loadMem2_42c298 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42c298 = load i64, i64* %3
  %call2_42c298 = call %struct.Memory* @sub_451f40.FSet(%struct.State* %0, i64 %loadPC_42c298, %struct.Memory* %loadMem2_42c298)
  store %struct.Memory* %call2_42c298, %struct.Memory** %MEMORY
  %loadMem_42c29d = load %struct.Memory*, %struct.Memory** %MEMORY
  %429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %430 = getelementptr inbounds %struct.GPR, %struct.GPR* %429, i32 0, i32 33
  %431 = getelementptr inbounds %struct.Reg, %struct.Reg* %430, i32 0, i32 0
  %PC.i707 = bitcast %union.anon* %431 to i64*
  %432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %433 = getelementptr inbounds %struct.GPR, %struct.GPR* %432, i32 0, i32 15
  %434 = getelementptr inbounds %struct.Reg, %struct.Reg* %433, i32 0, i32 0
  %RBP.i708 = bitcast %union.anon* %434 to i64*
  %435 = load i64, i64* %RBP.i708
  %436 = sub i64 %435, 60
  %437 = load i64, i64* %PC.i707
  %438 = add i64 %437, 7
  store i64 %438, i64* %PC.i707
  %439 = inttoptr i64 %436 to i32*
  store i32 0, i32* %439
  store %struct.Memory* %loadMem_42c29d, %struct.Memory** %MEMORY
  br label %block_.L_42c2a4

block_.L_42c2a4:                                  ; preds = %block_.L_42c6ed, %entry
  %loadMem_42c2a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %441 = getelementptr inbounds %struct.GPR, %struct.GPR* %440, i32 0, i32 33
  %442 = getelementptr inbounds %struct.Reg, %struct.Reg* %441, i32 0, i32 0
  %PC.i704 = bitcast %union.anon* %442 to i64*
  %443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %444 = getelementptr inbounds %struct.GPR, %struct.GPR* %443, i32 0, i32 1
  %445 = getelementptr inbounds %struct.Reg, %struct.Reg* %444, i32 0, i32 0
  %RAX.i705 = bitcast %union.anon* %445 to i64*
  %446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %447 = getelementptr inbounds %struct.GPR, %struct.GPR* %446, i32 0, i32 15
  %448 = getelementptr inbounds %struct.Reg, %struct.Reg* %447, i32 0, i32 0
  %RBP.i706 = bitcast %union.anon* %448 to i64*
  %449 = load i64, i64* %RBP.i706
  %450 = sub i64 %449, 60
  %451 = load i64, i64* %PC.i704
  %452 = add i64 %451, 3
  store i64 %452, i64* %PC.i704
  %453 = inttoptr i64 %450 to i32*
  %454 = load i32, i32* %453
  %455 = zext i32 %454 to i64
  store i64 %455, i64* %RAX.i705, align 8
  store %struct.Memory* %loadMem_42c2a4, %struct.Memory** %MEMORY
  %loadMem_42c2a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %457 = getelementptr inbounds %struct.GPR, %struct.GPR* %456, i32 0, i32 33
  %458 = getelementptr inbounds %struct.Reg, %struct.Reg* %457, i32 0, i32 0
  %PC.i701 = bitcast %union.anon* %458 to i64*
  %459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %460 = getelementptr inbounds %struct.GPR, %struct.GPR* %459, i32 0, i32 1
  %461 = getelementptr inbounds %struct.Reg, %struct.Reg* %460, i32 0, i32 0
  %EAX.i702 = bitcast %union.anon* %461 to i32*
  %462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %463 = getelementptr inbounds %struct.GPR, %struct.GPR* %462, i32 0, i32 15
  %464 = getelementptr inbounds %struct.Reg, %struct.Reg* %463, i32 0, i32 0
  %RBP.i703 = bitcast %union.anon* %464 to i64*
  %465 = load i32, i32* %EAX.i702
  %466 = zext i32 %465 to i64
  %467 = load i64, i64* %RBP.i703
  %468 = sub i64 %467, 20
  %469 = load i64, i64* %PC.i701
  %470 = add i64 %469, 3
  store i64 %470, i64* %PC.i701
  %471 = inttoptr i64 %468 to i32*
  %472 = load i32, i32* %471
  %473 = sub i32 %465, %472
  %474 = icmp ult i32 %465, %472
  %475 = zext i1 %474 to i8
  %476 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %475, i8* %476, align 1
  %477 = and i32 %473, 255
  %478 = call i32 @llvm.ctpop.i32(i32 %477)
  %479 = trunc i32 %478 to i8
  %480 = and i8 %479, 1
  %481 = xor i8 %480, 1
  %482 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %481, i8* %482, align 1
  %483 = xor i32 %472, %465
  %484 = xor i32 %483, %473
  %485 = lshr i32 %484, 4
  %486 = trunc i32 %485 to i8
  %487 = and i8 %486, 1
  %488 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %487, i8* %488, align 1
  %489 = icmp eq i32 %473, 0
  %490 = zext i1 %489 to i8
  %491 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %490, i8* %491, align 1
  %492 = lshr i32 %473, 31
  %493 = trunc i32 %492 to i8
  %494 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %493, i8* %494, align 1
  %495 = lshr i32 %465, 31
  %496 = lshr i32 %472, 31
  %497 = xor i32 %496, %495
  %498 = xor i32 %492, %495
  %499 = add i32 %498, %497
  %500 = icmp eq i32 %499, 2
  %501 = zext i1 %500 to i8
  %502 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %501, i8* %502, align 1
  store %struct.Memory* %loadMem_42c2a7, %struct.Memory** %MEMORY
  %loadMem_42c2aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %504 = getelementptr inbounds %struct.GPR, %struct.GPR* %503, i32 0, i32 33
  %505 = getelementptr inbounds %struct.Reg, %struct.Reg* %504, i32 0, i32 0
  %PC.i700 = bitcast %union.anon* %505 to i64*
  %506 = load i64, i64* %PC.i700
  %507 = add i64 %506, 1105
  %508 = load i64, i64* %PC.i700
  %509 = add i64 %508, 6
  %510 = load i64, i64* %PC.i700
  %511 = add i64 %510, 6
  store i64 %511, i64* %PC.i700
  %512 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %513 = load i8, i8* %512, align 1
  %514 = icmp ne i8 %513, 0
  %515 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %516 = load i8, i8* %515, align 1
  %517 = icmp ne i8 %516, 0
  %518 = xor i1 %514, %517
  %519 = xor i1 %518, true
  %520 = zext i1 %519 to i8
  store i8 %520, i8* %BRANCH_TAKEN, align 1
  %521 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %522 = select i1 %518, i64 %509, i64 %507
  store i64 %522, i64* %521, align 8
  store %struct.Memory* %loadMem_42c2aa, %struct.Memory** %MEMORY
  %loadBr_42c2aa = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42c2aa = icmp eq i8 %loadBr_42c2aa, 1
  br i1 %cmpBr_42c2aa, label %block_.L_42c6fb, label %block_42c2b0

block_42c2b0:                                     ; preds = %block_.L_42c2a4
  %loadMem_42c2b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %524 = getelementptr inbounds %struct.GPR, %struct.GPR* %523, i32 0, i32 33
  %525 = getelementptr inbounds %struct.Reg, %struct.Reg* %524, i32 0, i32 0
  %PC.i697 = bitcast %union.anon* %525 to i64*
  %526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %527 = getelementptr inbounds %struct.GPR, %struct.GPR* %526, i32 0, i32 1
  %528 = getelementptr inbounds %struct.Reg, %struct.Reg* %527, i32 0, i32 0
  %RAX.i698 = bitcast %union.anon* %528 to i64*
  %529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %530 = getelementptr inbounds %struct.GPR, %struct.GPR* %529, i32 0, i32 15
  %531 = getelementptr inbounds %struct.Reg, %struct.Reg* %530, i32 0, i32 0
  %RBP.i699 = bitcast %union.anon* %531 to i64*
  %532 = load i64, i64* %RBP.i699
  %533 = sub i64 %532, 32
  %534 = load i64, i64* %PC.i697
  %535 = add i64 %534, 4
  store i64 %535, i64* %PC.i697
  %536 = inttoptr i64 %533 to i64*
  %537 = load i64, i64* %536
  store i64 %537, i64* %RAX.i698, align 8
  store %struct.Memory* %loadMem_42c2b0, %struct.Memory** %MEMORY
  %loadMem_42c2b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %538 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %539 = getelementptr inbounds %struct.GPR, %struct.GPR* %538, i32 0, i32 33
  %540 = getelementptr inbounds %struct.Reg, %struct.Reg* %539, i32 0, i32 0
  %PC.i694 = bitcast %union.anon* %540 to i64*
  %541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %542 = getelementptr inbounds %struct.GPR, %struct.GPR* %541, i32 0, i32 5
  %543 = getelementptr inbounds %struct.Reg, %struct.Reg* %542, i32 0, i32 0
  %RCX.i695 = bitcast %union.anon* %543 to i64*
  %544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %545 = getelementptr inbounds %struct.GPR, %struct.GPR* %544, i32 0, i32 15
  %546 = getelementptr inbounds %struct.Reg, %struct.Reg* %545, i32 0, i32 0
  %RBP.i696 = bitcast %union.anon* %546 to i64*
  %547 = load i64, i64* %RBP.i696
  %548 = sub i64 %547, 60
  %549 = load i64, i64* %PC.i694
  %550 = add i64 %549, 4
  store i64 %550, i64* %PC.i694
  %551 = inttoptr i64 %548 to i32*
  %552 = load i32, i32* %551
  %553 = sext i32 %552 to i64
  store i64 %553, i64* %RCX.i695, align 8
  store %struct.Memory* %loadMem_42c2b4, %struct.Memory** %MEMORY
  %loadMem_42c2b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %555 = getelementptr inbounds %struct.GPR, %struct.GPR* %554, i32 0, i32 33
  %556 = getelementptr inbounds %struct.Reg, %struct.Reg* %555, i32 0, i32 0
  %PC.i691 = bitcast %union.anon* %556 to i64*
  %557 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %558 = getelementptr inbounds %struct.GPR, %struct.GPR* %557, i32 0, i32 1
  %559 = getelementptr inbounds %struct.Reg, %struct.Reg* %558, i32 0, i32 0
  %RAX.i692 = bitcast %union.anon* %559 to i64*
  %560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %561 = getelementptr inbounds %struct.GPR, %struct.GPR* %560, i32 0, i32 5
  %562 = getelementptr inbounds %struct.Reg, %struct.Reg* %561, i32 0, i32 0
  %RCX.i693 = bitcast %union.anon* %562 to i64*
  %563 = load i64, i64* %RAX.i692
  %564 = load i64, i64* %RCX.i693
  %565 = mul i64 %564, 4
  %566 = add i64 %565, %563
  %567 = load i64, i64* %PC.i691
  %568 = add i64 %567, 4
  store i64 %568, i64* %PC.i691
  %569 = inttoptr i64 %566 to i32*
  %570 = load i32, i32* %569
  %571 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %571, align 1
  %572 = and i32 %570, 255
  %573 = call i32 @llvm.ctpop.i32(i32 %572)
  %574 = trunc i32 %573 to i8
  %575 = and i8 %574, 1
  %576 = xor i8 %575, 1
  %577 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %576, i8* %577, align 1
  %578 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %578, align 1
  %579 = icmp eq i32 %570, 0
  %580 = zext i1 %579 to i8
  %581 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %580, i8* %581, align 1
  %582 = lshr i32 %570, 31
  %583 = trunc i32 %582 to i8
  %584 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %583, i8* %584, align 1
  %585 = lshr i32 %570, 31
  %586 = xor i32 %582, %585
  %587 = add i32 %586, %585
  %588 = icmp eq i32 %587, 2
  %589 = zext i1 %588 to i8
  %590 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %589, i8* %590, align 1
  store %struct.Memory* %loadMem_42c2b8, %struct.Memory** %MEMORY
  %loadMem_42c2bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %592 = getelementptr inbounds %struct.GPR, %struct.GPR* %591, i32 0, i32 33
  %593 = getelementptr inbounds %struct.Reg, %struct.Reg* %592, i32 0, i32 0
  %PC.i690 = bitcast %union.anon* %593 to i64*
  %594 = load i64, i64* %PC.i690
  %595 = add i64 %594, 424
  %596 = load i64, i64* %PC.i690
  %597 = add i64 %596, 6
  %598 = load i64, i64* %PC.i690
  %599 = add i64 %598, 6
  store i64 %599, i64* %PC.i690
  %600 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %601 = load i8, i8* %600, align 1
  %602 = icmp ne i8 %601, 0
  %603 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %604 = load i8, i8* %603, align 1
  %605 = icmp ne i8 %604, 0
  %606 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %607 = load i8, i8* %606, align 1
  %608 = icmp ne i8 %607, 0
  %609 = xor i1 %605, %608
  %610 = or i1 %602, %609
  %611 = zext i1 %610 to i8
  store i8 %611, i8* %BRANCH_TAKEN, align 1
  %612 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %613 = select i1 %610, i64 %595, i64 %597
  store i64 %613, i64* %612, align 8
  store %struct.Memory* %loadMem_42c2bc, %struct.Memory** %MEMORY
  %loadBr_42c2bc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42c2bc = icmp eq i8 %loadBr_42c2bc, 1
  br i1 %cmpBr_42c2bc, label %block_.L_42c464, label %block_42c2c2

block_42c2c2:                                     ; preds = %block_42c2b0
  %loadMem_42c2c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %614 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %615 = getelementptr inbounds %struct.GPR, %struct.GPR* %614, i32 0, i32 33
  %616 = getelementptr inbounds %struct.Reg, %struct.Reg* %615, i32 0, i32 0
  %PC.i687 = bitcast %union.anon* %616 to i64*
  %617 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %618 = getelementptr inbounds %struct.GPR, %struct.GPR* %617, i32 0, i32 1
  %619 = getelementptr inbounds %struct.Reg, %struct.Reg* %618, i32 0, i32 0
  %RAX.i688 = bitcast %union.anon* %619 to i64*
  %620 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %621 = getelementptr inbounds %struct.GPR, %struct.GPR* %620, i32 0, i32 15
  %622 = getelementptr inbounds %struct.Reg, %struct.Reg* %621, i32 0, i32 0
  %RBP.i689 = bitcast %union.anon* %622 to i64*
  %623 = load i64, i64* %RBP.i689
  %624 = sub i64 %623, 16
  %625 = load i64, i64* %PC.i687
  %626 = add i64 %625, 4
  store i64 %626, i64* %PC.i687
  %627 = inttoptr i64 %624 to i64*
  %628 = load i64, i64* %627
  store i64 %628, i64* %RAX.i688, align 8
  store %struct.Memory* %loadMem_42c2c2, %struct.Memory** %MEMORY
  %loadMem_42c2c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %630 = getelementptr inbounds %struct.GPR, %struct.GPR* %629, i32 0, i32 33
  %631 = getelementptr inbounds %struct.Reg, %struct.Reg* %630, i32 0, i32 0
  %PC.i684 = bitcast %union.anon* %631 to i64*
  %632 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %633 = getelementptr inbounds %struct.GPR, %struct.GPR* %632, i32 0, i32 5
  %634 = getelementptr inbounds %struct.Reg, %struct.Reg* %633, i32 0, i32 0
  %RCX.i685 = bitcast %union.anon* %634 to i64*
  %635 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %636 = getelementptr inbounds %struct.GPR, %struct.GPR* %635, i32 0, i32 15
  %637 = getelementptr inbounds %struct.Reg, %struct.Reg* %636, i32 0, i32 0
  %RBP.i686 = bitcast %union.anon* %637 to i64*
  %638 = load i64, i64* %RBP.i686
  %639 = sub i64 %638, 60
  %640 = load i64, i64* %PC.i684
  %641 = add i64 %640, 4
  store i64 %641, i64* %PC.i684
  %642 = inttoptr i64 %639 to i32*
  %643 = load i32, i32* %642
  %644 = sext i32 %643 to i64
  store i64 %644, i64* %RCX.i685, align 8
  store %struct.Memory* %loadMem_42c2c6, %struct.Memory** %MEMORY
  %loadMem_42c2ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %645 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %646 = getelementptr inbounds %struct.GPR, %struct.GPR* %645, i32 0, i32 33
  %647 = getelementptr inbounds %struct.Reg, %struct.Reg* %646, i32 0, i32 0
  %PC.i681 = bitcast %union.anon* %647 to i64*
  %648 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %649 = getelementptr inbounds %struct.GPR, %struct.GPR* %648, i32 0, i32 1
  %650 = getelementptr inbounds %struct.Reg, %struct.Reg* %649, i32 0, i32 0
  %RAX.i682 = bitcast %union.anon* %650 to i64*
  %651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %652 = getelementptr inbounds %struct.GPR, %struct.GPR* %651, i32 0, i32 5
  %653 = getelementptr inbounds %struct.Reg, %struct.Reg* %652, i32 0, i32 0
  %RCX.i683 = bitcast %union.anon* %653 to i64*
  %654 = load i64, i64* %RAX.i682
  %655 = load i64, i64* %RCX.i683
  %656 = mul i64 %655, 8
  %657 = add i64 %656, %654
  %658 = load i64, i64* %PC.i681
  %659 = add i64 %658, 4
  store i64 %659, i64* %PC.i681
  %660 = inttoptr i64 %657 to i64*
  %661 = load i64, i64* %660
  store i64 %661, i64* %RAX.i682, align 8
  store %struct.Memory* %loadMem_42c2ca, %struct.Memory** %MEMORY
  %loadMem_42c2ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %662 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %663 = getelementptr inbounds %struct.GPR, %struct.GPR* %662, i32 0, i32 33
  %664 = getelementptr inbounds %struct.Reg, %struct.Reg* %663, i32 0, i32 0
  %PC.i678 = bitcast %union.anon* %664 to i64*
  %665 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %666 = getelementptr inbounds %struct.GPR, %struct.GPR* %665, i32 0, i32 5
  %667 = getelementptr inbounds %struct.Reg, %struct.Reg* %666, i32 0, i32 0
  %RCX.i679 = bitcast %union.anon* %667 to i64*
  %668 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %669 = getelementptr inbounds %struct.GPR, %struct.GPR* %668, i32 0, i32 15
  %670 = getelementptr inbounds %struct.Reg, %struct.Reg* %669, i32 0, i32 0
  %RBP.i680 = bitcast %union.anon* %670 to i64*
  %671 = load i64, i64* %RBP.i680
  %672 = sub i64 %671, 36
  %673 = load i64, i64* %PC.i678
  %674 = add i64 %673, 4
  store i64 %674, i64* %PC.i678
  %675 = inttoptr i64 %672 to i32*
  %676 = load i32, i32* %675
  %677 = sext i32 %676 to i64
  store i64 %677, i64* %RCX.i679, align 8
  store %struct.Memory* %loadMem_42c2ce, %struct.Memory** %MEMORY
  %loadMem_42c2d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %679 = getelementptr inbounds %struct.GPR, %struct.GPR* %678, i32 0, i32 33
  %680 = getelementptr inbounds %struct.Reg, %struct.Reg* %679, i32 0, i32 0
  %PC.i674 = bitcast %union.anon* %680 to i64*
  %681 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %682 = getelementptr inbounds %struct.GPR, %struct.GPR* %681, i32 0, i32 1
  %683 = getelementptr inbounds %struct.Reg, %struct.Reg* %682, i32 0, i32 0
  %RAX.i675 = bitcast %union.anon* %683 to i64*
  %684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %685 = getelementptr inbounds %struct.GPR, %struct.GPR* %684, i32 0, i32 5
  %686 = getelementptr inbounds %struct.Reg, %struct.Reg* %685, i32 0, i32 0
  %RCX.i676 = bitcast %union.anon* %686 to i64*
  %687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %688 = getelementptr inbounds %struct.GPR, %struct.GPR* %687, i32 0, i32 7
  %689 = getelementptr inbounds %struct.Reg, %struct.Reg* %688, i32 0, i32 0
  %RDX.i677 = bitcast %union.anon* %689 to i64*
  %690 = load i64, i64* %RAX.i675
  %691 = load i64, i64* %RCX.i676
  %692 = add i64 %691, %690
  %693 = load i64, i64* %PC.i674
  %694 = add i64 %693, 4
  store i64 %694, i64* %PC.i674
  %695 = inttoptr i64 %692 to i8*
  %696 = load i8, i8* %695
  %697 = sext i8 %696 to i64
  %698 = and i64 %697, 4294967295
  store i64 %698, i64* %RDX.i677, align 8
  store %struct.Memory* %loadMem_42c2d2, %struct.Memory** %MEMORY
  %loadMem_42c2d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %700 = getelementptr inbounds %struct.GPR, %struct.GPR* %699, i32 0, i32 33
  %701 = getelementptr inbounds %struct.Reg, %struct.Reg* %700, i32 0, i32 0
  %PC.i672 = bitcast %union.anon* %701 to i64*
  %702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %703 = getelementptr inbounds %struct.GPR, %struct.GPR* %702, i32 0, i32 7
  %704 = getelementptr inbounds %struct.Reg, %struct.Reg* %703, i32 0, i32 0
  %EDX.i673 = bitcast %union.anon* %704 to i32*
  %705 = load i32, i32* %EDX.i673
  %706 = zext i32 %705 to i64
  %707 = load i64, i64* %PC.i672
  %708 = add i64 %707, 3
  store i64 %708, i64* %PC.i672
  %709 = sub i32 %705, 32
  %710 = icmp ult i32 %705, 32
  %711 = zext i1 %710 to i8
  %712 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %711, i8* %712, align 1
  %713 = and i32 %709, 255
  %714 = call i32 @llvm.ctpop.i32(i32 %713)
  %715 = trunc i32 %714 to i8
  %716 = and i8 %715, 1
  %717 = xor i8 %716, 1
  %718 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %717, i8* %718, align 1
  %719 = xor i64 32, %706
  %720 = trunc i64 %719 to i32
  %721 = xor i32 %720, %709
  %722 = lshr i32 %721, 4
  %723 = trunc i32 %722 to i8
  %724 = and i8 %723, 1
  %725 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %724, i8* %725, align 1
  %726 = icmp eq i32 %709, 0
  %727 = zext i1 %726 to i8
  %728 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %727, i8* %728, align 1
  %729 = lshr i32 %709, 31
  %730 = trunc i32 %729 to i8
  %731 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %730, i8* %731, align 1
  %732 = lshr i32 %705, 31
  %733 = xor i32 %729, %732
  %734 = add i32 %733, %732
  %735 = icmp eq i32 %734, 2
  %736 = zext i1 %735 to i8
  %737 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %736, i8* %737, align 1
  store %struct.Memory* %loadMem_42c2d6, %struct.Memory** %MEMORY
  %loadMem_42c2d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %739 = getelementptr inbounds %struct.GPR, %struct.GPR* %738, i32 0, i32 33
  %740 = getelementptr inbounds %struct.Reg, %struct.Reg* %739, i32 0, i32 0
  %PC.i671 = bitcast %union.anon* %740 to i64*
  %741 = load i64, i64* %PC.i671
  %742 = add i64 %741, 122
  %743 = load i64, i64* %PC.i671
  %744 = add i64 %743, 6
  %745 = load i64, i64* %PC.i671
  %746 = add i64 %745, 6
  store i64 %746, i64* %PC.i671
  %747 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %748 = load i8, i8* %747, align 1
  store i8 %748, i8* %BRANCH_TAKEN, align 1
  %749 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %750 = icmp ne i8 %748, 0
  %751 = select i1 %750, i64 %742, i64 %744
  store i64 %751, i64* %749, align 8
  store %struct.Memory* %loadMem_42c2d9, %struct.Memory** %MEMORY
  %loadBr_42c2d9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42c2d9 = icmp eq i8 %loadBr_42c2d9, 1
  br i1 %cmpBr_42c2d9, label %block_.L_42c353, label %block_42c2df

block_42c2df:                                     ; preds = %block_42c2c2
  %loadMem_42c2df = load %struct.Memory*, %struct.Memory** %MEMORY
  %752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %753 = getelementptr inbounds %struct.GPR, %struct.GPR* %752, i32 0, i32 33
  %754 = getelementptr inbounds %struct.Reg, %struct.Reg* %753, i32 0, i32 0
  %PC.i668 = bitcast %union.anon* %754 to i64*
  %755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %756 = getelementptr inbounds %struct.GPR, %struct.GPR* %755, i32 0, i32 1
  %757 = getelementptr inbounds %struct.Reg, %struct.Reg* %756, i32 0, i32 0
  %RAX.i669 = bitcast %union.anon* %757 to i64*
  %758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %759 = getelementptr inbounds %struct.GPR, %struct.GPR* %758, i32 0, i32 15
  %760 = getelementptr inbounds %struct.Reg, %struct.Reg* %759, i32 0, i32 0
  %RBP.i670 = bitcast %union.anon* %760 to i64*
  %761 = load i64, i64* %RBP.i670
  %762 = sub i64 %761, 16
  %763 = load i64, i64* %PC.i668
  %764 = add i64 %763, 4
  store i64 %764, i64* %PC.i668
  %765 = inttoptr i64 %762 to i64*
  %766 = load i64, i64* %765
  store i64 %766, i64* %RAX.i669, align 8
  store %struct.Memory* %loadMem_42c2df, %struct.Memory** %MEMORY
  %loadMem_42c2e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %767 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %768 = getelementptr inbounds %struct.GPR, %struct.GPR* %767, i32 0, i32 33
  %769 = getelementptr inbounds %struct.Reg, %struct.Reg* %768, i32 0, i32 0
  %PC.i665 = bitcast %union.anon* %769 to i64*
  %770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %771 = getelementptr inbounds %struct.GPR, %struct.GPR* %770, i32 0, i32 5
  %772 = getelementptr inbounds %struct.Reg, %struct.Reg* %771, i32 0, i32 0
  %RCX.i666 = bitcast %union.anon* %772 to i64*
  %773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %774 = getelementptr inbounds %struct.GPR, %struct.GPR* %773, i32 0, i32 15
  %775 = getelementptr inbounds %struct.Reg, %struct.Reg* %774, i32 0, i32 0
  %RBP.i667 = bitcast %union.anon* %775 to i64*
  %776 = load i64, i64* %RBP.i667
  %777 = sub i64 %776, 60
  %778 = load i64, i64* %PC.i665
  %779 = add i64 %778, 4
  store i64 %779, i64* %PC.i665
  %780 = inttoptr i64 %777 to i32*
  %781 = load i32, i32* %780
  %782 = sext i32 %781 to i64
  store i64 %782, i64* %RCX.i666, align 8
  store %struct.Memory* %loadMem_42c2e3, %struct.Memory** %MEMORY
  %loadMem_42c2e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %783 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %784 = getelementptr inbounds %struct.GPR, %struct.GPR* %783, i32 0, i32 33
  %785 = getelementptr inbounds %struct.Reg, %struct.Reg* %784, i32 0, i32 0
  %PC.i662 = bitcast %union.anon* %785 to i64*
  %786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %787 = getelementptr inbounds %struct.GPR, %struct.GPR* %786, i32 0, i32 1
  %788 = getelementptr inbounds %struct.Reg, %struct.Reg* %787, i32 0, i32 0
  %RAX.i663 = bitcast %union.anon* %788 to i64*
  %789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %790 = getelementptr inbounds %struct.GPR, %struct.GPR* %789, i32 0, i32 5
  %791 = getelementptr inbounds %struct.Reg, %struct.Reg* %790, i32 0, i32 0
  %RCX.i664 = bitcast %union.anon* %791 to i64*
  %792 = load i64, i64* %RAX.i663
  %793 = load i64, i64* %RCX.i664
  %794 = mul i64 %793, 8
  %795 = add i64 %794, %792
  %796 = load i64, i64* %PC.i662
  %797 = add i64 %796, 4
  store i64 %797, i64* %PC.i662
  %798 = inttoptr i64 %795 to i64*
  %799 = load i64, i64* %798
  store i64 %799, i64* %RAX.i663, align 8
  store %struct.Memory* %loadMem_42c2e7, %struct.Memory** %MEMORY
  %loadMem_42c2eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %800 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %801 = getelementptr inbounds %struct.GPR, %struct.GPR* %800, i32 0, i32 33
  %802 = getelementptr inbounds %struct.Reg, %struct.Reg* %801, i32 0, i32 0
  %PC.i659 = bitcast %union.anon* %802 to i64*
  %803 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %804 = getelementptr inbounds %struct.GPR, %struct.GPR* %803, i32 0, i32 5
  %805 = getelementptr inbounds %struct.Reg, %struct.Reg* %804, i32 0, i32 0
  %RCX.i660 = bitcast %union.anon* %805 to i64*
  %806 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %807 = getelementptr inbounds %struct.GPR, %struct.GPR* %806, i32 0, i32 15
  %808 = getelementptr inbounds %struct.Reg, %struct.Reg* %807, i32 0, i32 0
  %RBP.i661 = bitcast %union.anon* %808 to i64*
  %809 = load i64, i64* %RBP.i661
  %810 = sub i64 %809, 36
  %811 = load i64, i64* %PC.i659
  %812 = add i64 %811, 4
  store i64 %812, i64* %PC.i659
  %813 = inttoptr i64 %810 to i32*
  %814 = load i32, i32* %813
  %815 = sext i32 %814 to i64
  store i64 %815, i64* %RCX.i660, align 8
  store %struct.Memory* %loadMem_42c2eb, %struct.Memory** %MEMORY
  %loadMem_42c2ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %816 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %817 = getelementptr inbounds %struct.GPR, %struct.GPR* %816, i32 0, i32 33
  %818 = getelementptr inbounds %struct.Reg, %struct.Reg* %817, i32 0, i32 0
  %PC.i655 = bitcast %union.anon* %818 to i64*
  %819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %820 = getelementptr inbounds %struct.GPR, %struct.GPR* %819, i32 0, i32 1
  %821 = getelementptr inbounds %struct.Reg, %struct.Reg* %820, i32 0, i32 0
  %RAX.i656 = bitcast %union.anon* %821 to i64*
  %822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %823 = getelementptr inbounds %struct.GPR, %struct.GPR* %822, i32 0, i32 5
  %824 = getelementptr inbounds %struct.Reg, %struct.Reg* %823, i32 0, i32 0
  %RCX.i657 = bitcast %union.anon* %824 to i64*
  %825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %826 = getelementptr inbounds %struct.GPR, %struct.GPR* %825, i32 0, i32 7
  %827 = getelementptr inbounds %struct.Reg, %struct.Reg* %826, i32 0, i32 0
  %RDX.i658 = bitcast %union.anon* %827 to i64*
  %828 = load i64, i64* %RAX.i656
  %829 = load i64, i64* %RCX.i657
  %830 = add i64 %829, %828
  %831 = load i64, i64* %PC.i655
  %832 = add i64 %831, 4
  store i64 %832, i64* %PC.i655
  %833 = inttoptr i64 %830 to i8*
  %834 = load i8, i8* %833
  %835 = sext i8 %834 to i64
  %836 = and i64 %835, 4294967295
  store i64 %836, i64* %RDX.i658, align 8
  store %struct.Memory* %loadMem_42c2ef, %struct.Memory** %MEMORY
  %loadMem_42c2f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %837 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %838 = getelementptr inbounds %struct.GPR, %struct.GPR* %837, i32 0, i32 33
  %839 = getelementptr inbounds %struct.Reg, %struct.Reg* %838, i32 0, i32 0
  %PC.i653 = bitcast %union.anon* %839 to i64*
  %840 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %841 = getelementptr inbounds %struct.GPR, %struct.GPR* %840, i32 0, i32 7
  %842 = getelementptr inbounds %struct.Reg, %struct.Reg* %841, i32 0, i32 0
  %EDX.i654 = bitcast %union.anon* %842 to i32*
  %843 = load i32, i32* %EDX.i654
  %844 = zext i32 %843 to i64
  %845 = load i64, i64* %PC.i653
  %846 = add i64 %845, 3
  store i64 %846, i64* %PC.i653
  %847 = sub i32 %843, 46
  %848 = icmp ult i32 %843, 46
  %849 = zext i1 %848 to i8
  %850 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %849, i8* %850, align 1
  %851 = and i32 %847, 255
  %852 = call i32 @llvm.ctpop.i32(i32 %851)
  %853 = trunc i32 %852 to i8
  %854 = and i8 %853, 1
  %855 = xor i8 %854, 1
  %856 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %855, i8* %856, align 1
  %857 = xor i64 46, %844
  %858 = trunc i64 %857 to i32
  %859 = xor i32 %858, %847
  %860 = lshr i32 %859, 4
  %861 = trunc i32 %860 to i8
  %862 = and i8 %861, 1
  %863 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %862, i8* %863, align 1
  %864 = icmp eq i32 %847, 0
  %865 = zext i1 %864 to i8
  %866 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %865, i8* %866, align 1
  %867 = lshr i32 %847, 31
  %868 = trunc i32 %867 to i8
  %869 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %868, i8* %869, align 1
  %870 = lshr i32 %843, 31
  %871 = xor i32 %867, %870
  %872 = add i32 %871, %870
  %873 = icmp eq i32 %872, 2
  %874 = zext i1 %873 to i8
  %875 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %874, i8* %875, align 1
  store %struct.Memory* %loadMem_42c2f3, %struct.Memory** %MEMORY
  %loadMem_42c2f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %876 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %877 = getelementptr inbounds %struct.GPR, %struct.GPR* %876, i32 0, i32 33
  %878 = getelementptr inbounds %struct.Reg, %struct.Reg* %877, i32 0, i32 0
  %PC.i652 = bitcast %union.anon* %878 to i64*
  %879 = load i64, i64* %PC.i652
  %880 = add i64 %879, 93
  %881 = load i64, i64* %PC.i652
  %882 = add i64 %881, 6
  %883 = load i64, i64* %PC.i652
  %884 = add i64 %883, 6
  store i64 %884, i64* %PC.i652
  %885 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %886 = load i8, i8* %885, align 1
  store i8 %886, i8* %BRANCH_TAKEN, align 1
  %887 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %888 = icmp ne i8 %886, 0
  %889 = select i1 %888, i64 %880, i64 %882
  store i64 %889, i64* %887, align 8
  store %struct.Memory* %loadMem_42c2f6, %struct.Memory** %MEMORY
  %loadBr_42c2f6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42c2f6 = icmp eq i8 %loadBr_42c2f6, 1
  br i1 %cmpBr_42c2f6, label %block_.L_42c353, label %block_42c2fc

block_42c2fc:                                     ; preds = %block_42c2df
  %loadMem_42c2fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %891 = getelementptr inbounds %struct.GPR, %struct.GPR* %890, i32 0, i32 33
  %892 = getelementptr inbounds %struct.Reg, %struct.Reg* %891, i32 0, i32 0
  %PC.i649 = bitcast %union.anon* %892 to i64*
  %893 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %894 = getelementptr inbounds %struct.GPR, %struct.GPR* %893, i32 0, i32 1
  %895 = getelementptr inbounds %struct.Reg, %struct.Reg* %894, i32 0, i32 0
  %RAX.i650 = bitcast %union.anon* %895 to i64*
  %896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %897 = getelementptr inbounds %struct.GPR, %struct.GPR* %896, i32 0, i32 15
  %898 = getelementptr inbounds %struct.Reg, %struct.Reg* %897, i32 0, i32 0
  %RBP.i651 = bitcast %union.anon* %898 to i64*
  %899 = load i64, i64* %RBP.i651
  %900 = sub i64 %899, 16
  %901 = load i64, i64* %PC.i649
  %902 = add i64 %901, 4
  store i64 %902, i64* %PC.i649
  %903 = inttoptr i64 %900 to i64*
  %904 = load i64, i64* %903
  store i64 %904, i64* %RAX.i650, align 8
  store %struct.Memory* %loadMem_42c2fc, %struct.Memory** %MEMORY
  %loadMem_42c300 = load %struct.Memory*, %struct.Memory** %MEMORY
  %905 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %906 = getelementptr inbounds %struct.GPR, %struct.GPR* %905, i32 0, i32 33
  %907 = getelementptr inbounds %struct.Reg, %struct.Reg* %906, i32 0, i32 0
  %PC.i646 = bitcast %union.anon* %907 to i64*
  %908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %909 = getelementptr inbounds %struct.GPR, %struct.GPR* %908, i32 0, i32 5
  %910 = getelementptr inbounds %struct.Reg, %struct.Reg* %909, i32 0, i32 0
  %RCX.i647 = bitcast %union.anon* %910 to i64*
  %911 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %912 = getelementptr inbounds %struct.GPR, %struct.GPR* %911, i32 0, i32 15
  %913 = getelementptr inbounds %struct.Reg, %struct.Reg* %912, i32 0, i32 0
  %RBP.i648 = bitcast %union.anon* %913 to i64*
  %914 = load i64, i64* %RBP.i648
  %915 = sub i64 %914, 60
  %916 = load i64, i64* %PC.i646
  %917 = add i64 %916, 4
  store i64 %917, i64* %PC.i646
  %918 = inttoptr i64 %915 to i32*
  %919 = load i32, i32* %918
  %920 = sext i32 %919 to i64
  store i64 %920, i64* %RCX.i647, align 8
  store %struct.Memory* %loadMem_42c300, %struct.Memory** %MEMORY
  %loadMem_42c304 = load %struct.Memory*, %struct.Memory** %MEMORY
  %921 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %922 = getelementptr inbounds %struct.GPR, %struct.GPR* %921, i32 0, i32 33
  %923 = getelementptr inbounds %struct.Reg, %struct.Reg* %922, i32 0, i32 0
  %PC.i643 = bitcast %union.anon* %923 to i64*
  %924 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %925 = getelementptr inbounds %struct.GPR, %struct.GPR* %924, i32 0, i32 1
  %926 = getelementptr inbounds %struct.Reg, %struct.Reg* %925, i32 0, i32 0
  %RAX.i644 = bitcast %union.anon* %926 to i64*
  %927 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %928 = getelementptr inbounds %struct.GPR, %struct.GPR* %927, i32 0, i32 5
  %929 = getelementptr inbounds %struct.Reg, %struct.Reg* %928, i32 0, i32 0
  %RCX.i645 = bitcast %union.anon* %929 to i64*
  %930 = load i64, i64* %RAX.i644
  %931 = load i64, i64* %RCX.i645
  %932 = mul i64 %931, 8
  %933 = add i64 %932, %930
  %934 = load i64, i64* %PC.i643
  %935 = add i64 %934, 4
  store i64 %935, i64* %PC.i643
  %936 = inttoptr i64 %933 to i64*
  %937 = load i64, i64* %936
  store i64 %937, i64* %RAX.i644, align 8
  store %struct.Memory* %loadMem_42c304, %struct.Memory** %MEMORY
  %loadMem_42c308 = load %struct.Memory*, %struct.Memory** %MEMORY
  %938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %939 = getelementptr inbounds %struct.GPR, %struct.GPR* %938, i32 0, i32 33
  %940 = getelementptr inbounds %struct.Reg, %struct.Reg* %939, i32 0, i32 0
  %PC.i640 = bitcast %union.anon* %940 to i64*
  %941 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %942 = getelementptr inbounds %struct.GPR, %struct.GPR* %941, i32 0, i32 5
  %943 = getelementptr inbounds %struct.Reg, %struct.Reg* %942, i32 0, i32 0
  %RCX.i641 = bitcast %union.anon* %943 to i64*
  %944 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %945 = getelementptr inbounds %struct.GPR, %struct.GPR* %944, i32 0, i32 15
  %946 = getelementptr inbounds %struct.Reg, %struct.Reg* %945, i32 0, i32 0
  %RBP.i642 = bitcast %union.anon* %946 to i64*
  %947 = load i64, i64* %RBP.i642
  %948 = sub i64 %947, 36
  %949 = load i64, i64* %PC.i640
  %950 = add i64 %949, 4
  store i64 %950, i64* %PC.i640
  %951 = inttoptr i64 %948 to i32*
  %952 = load i32, i32* %951
  %953 = sext i32 %952 to i64
  store i64 %953, i64* %RCX.i641, align 8
  store %struct.Memory* %loadMem_42c308, %struct.Memory** %MEMORY
  %loadMem_42c30c = load %struct.Memory*, %struct.Memory** %MEMORY
  %954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %955 = getelementptr inbounds %struct.GPR, %struct.GPR* %954, i32 0, i32 33
  %956 = getelementptr inbounds %struct.Reg, %struct.Reg* %955, i32 0, i32 0
  %PC.i636 = bitcast %union.anon* %956 to i64*
  %957 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %958 = getelementptr inbounds %struct.GPR, %struct.GPR* %957, i32 0, i32 1
  %959 = getelementptr inbounds %struct.Reg, %struct.Reg* %958, i32 0, i32 0
  %RAX.i637 = bitcast %union.anon* %959 to i64*
  %960 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %961 = getelementptr inbounds %struct.GPR, %struct.GPR* %960, i32 0, i32 5
  %962 = getelementptr inbounds %struct.Reg, %struct.Reg* %961, i32 0, i32 0
  %RCX.i638 = bitcast %union.anon* %962 to i64*
  %963 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %964 = getelementptr inbounds %struct.GPR, %struct.GPR* %963, i32 0, i32 7
  %965 = getelementptr inbounds %struct.Reg, %struct.Reg* %964, i32 0, i32 0
  %RDX.i639 = bitcast %union.anon* %965 to i64*
  %966 = load i64, i64* %RAX.i637
  %967 = load i64, i64* %RCX.i638
  %968 = add i64 %967, %966
  %969 = load i64, i64* %PC.i636
  %970 = add i64 %969, 4
  store i64 %970, i64* %PC.i636
  %971 = inttoptr i64 %968 to i8*
  %972 = load i8, i8* %971
  %973 = sext i8 %972 to i64
  %974 = and i64 %973, 4294967295
  store i64 %974, i64* %RDX.i639, align 8
  store %struct.Memory* %loadMem_42c30c, %struct.Memory** %MEMORY
  %loadMem_42c310 = load %struct.Memory*, %struct.Memory** %MEMORY
  %975 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %976 = getelementptr inbounds %struct.GPR, %struct.GPR* %975, i32 0, i32 33
  %977 = getelementptr inbounds %struct.Reg, %struct.Reg* %976, i32 0, i32 0
  %PC.i634 = bitcast %union.anon* %977 to i64*
  %978 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %979 = getelementptr inbounds %struct.GPR, %struct.GPR* %978, i32 0, i32 7
  %980 = getelementptr inbounds %struct.Reg, %struct.Reg* %979, i32 0, i32 0
  %EDX.i635 = bitcast %union.anon* %980 to i32*
  %981 = load i32, i32* %EDX.i635
  %982 = zext i32 %981 to i64
  %983 = load i64, i64* %PC.i634
  %984 = add i64 %983, 3
  store i64 %984, i64* %PC.i634
  %985 = sub i32 %981, 95
  %986 = icmp ult i32 %981, 95
  %987 = zext i1 %986 to i8
  %988 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %987, i8* %988, align 1
  %989 = and i32 %985, 255
  %990 = call i32 @llvm.ctpop.i32(i32 %989)
  %991 = trunc i32 %990 to i8
  %992 = and i8 %991, 1
  %993 = xor i8 %992, 1
  %994 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %993, i8* %994, align 1
  %995 = xor i64 95, %982
  %996 = trunc i64 %995 to i32
  %997 = xor i32 %996, %985
  %998 = lshr i32 %997, 4
  %999 = trunc i32 %998 to i8
  %1000 = and i8 %999, 1
  %1001 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1000, i8* %1001, align 1
  %1002 = icmp eq i32 %985, 0
  %1003 = zext i1 %1002 to i8
  %1004 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1003, i8* %1004, align 1
  %1005 = lshr i32 %985, 31
  %1006 = trunc i32 %1005 to i8
  %1007 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1006, i8* %1007, align 1
  %1008 = lshr i32 %981, 31
  %1009 = xor i32 %1005, %1008
  %1010 = add i32 %1009, %1008
  %1011 = icmp eq i32 %1010, 2
  %1012 = zext i1 %1011 to i8
  %1013 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1012, i8* %1013, align 1
  store %struct.Memory* %loadMem_42c310, %struct.Memory** %MEMORY
  %loadMem_42c313 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1014 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1015 = getelementptr inbounds %struct.GPR, %struct.GPR* %1014, i32 0, i32 33
  %1016 = getelementptr inbounds %struct.Reg, %struct.Reg* %1015, i32 0, i32 0
  %PC.i633 = bitcast %union.anon* %1016 to i64*
  %1017 = load i64, i64* %PC.i633
  %1018 = add i64 %1017, 64
  %1019 = load i64, i64* %PC.i633
  %1020 = add i64 %1019, 6
  %1021 = load i64, i64* %PC.i633
  %1022 = add i64 %1021, 6
  store i64 %1022, i64* %PC.i633
  %1023 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1024 = load i8, i8* %1023, align 1
  store i8 %1024, i8* %BRANCH_TAKEN, align 1
  %1025 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1026 = icmp ne i8 %1024, 0
  %1027 = select i1 %1026, i64 %1018, i64 %1020
  store i64 %1027, i64* %1025, align 8
  store %struct.Memory* %loadMem_42c313, %struct.Memory** %MEMORY
  %loadBr_42c313 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42c313 = icmp eq i8 %loadBr_42c313, 1
  br i1 %cmpBr_42c313, label %block_.L_42c353, label %block_42c319

block_42c319:                                     ; preds = %block_42c2fc
  %loadMem_42c319 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1028 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1029 = getelementptr inbounds %struct.GPR, %struct.GPR* %1028, i32 0, i32 33
  %1030 = getelementptr inbounds %struct.Reg, %struct.Reg* %1029, i32 0, i32 0
  %PC.i630 = bitcast %union.anon* %1030 to i64*
  %1031 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1032 = getelementptr inbounds %struct.GPR, %struct.GPR* %1031, i32 0, i32 1
  %1033 = getelementptr inbounds %struct.Reg, %struct.Reg* %1032, i32 0, i32 0
  %RAX.i631 = bitcast %union.anon* %1033 to i64*
  %1034 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1035 = getelementptr inbounds %struct.GPR, %struct.GPR* %1034, i32 0, i32 15
  %1036 = getelementptr inbounds %struct.Reg, %struct.Reg* %1035, i32 0, i32 0
  %RBP.i632 = bitcast %union.anon* %1036 to i64*
  %1037 = load i64, i64* %RBP.i632
  %1038 = sub i64 %1037, 16
  %1039 = load i64, i64* %PC.i630
  %1040 = add i64 %1039, 4
  store i64 %1040, i64* %PC.i630
  %1041 = inttoptr i64 %1038 to i64*
  %1042 = load i64, i64* %1041
  store i64 %1042, i64* %RAX.i631, align 8
  store %struct.Memory* %loadMem_42c319, %struct.Memory** %MEMORY
  %loadMem_42c31d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1043 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1044 = getelementptr inbounds %struct.GPR, %struct.GPR* %1043, i32 0, i32 33
  %1045 = getelementptr inbounds %struct.Reg, %struct.Reg* %1044, i32 0, i32 0
  %PC.i627 = bitcast %union.anon* %1045 to i64*
  %1046 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1047 = getelementptr inbounds %struct.GPR, %struct.GPR* %1046, i32 0, i32 5
  %1048 = getelementptr inbounds %struct.Reg, %struct.Reg* %1047, i32 0, i32 0
  %RCX.i628 = bitcast %union.anon* %1048 to i64*
  %1049 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1050 = getelementptr inbounds %struct.GPR, %struct.GPR* %1049, i32 0, i32 15
  %1051 = getelementptr inbounds %struct.Reg, %struct.Reg* %1050, i32 0, i32 0
  %RBP.i629 = bitcast %union.anon* %1051 to i64*
  %1052 = load i64, i64* %RBP.i629
  %1053 = sub i64 %1052, 60
  %1054 = load i64, i64* %PC.i627
  %1055 = add i64 %1054, 4
  store i64 %1055, i64* %PC.i627
  %1056 = inttoptr i64 %1053 to i32*
  %1057 = load i32, i32* %1056
  %1058 = sext i32 %1057 to i64
  store i64 %1058, i64* %RCX.i628, align 8
  store %struct.Memory* %loadMem_42c31d, %struct.Memory** %MEMORY
  %loadMem_42c321 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1059 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1060 = getelementptr inbounds %struct.GPR, %struct.GPR* %1059, i32 0, i32 33
  %1061 = getelementptr inbounds %struct.Reg, %struct.Reg* %1060, i32 0, i32 0
  %PC.i624 = bitcast %union.anon* %1061 to i64*
  %1062 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1063 = getelementptr inbounds %struct.GPR, %struct.GPR* %1062, i32 0, i32 1
  %1064 = getelementptr inbounds %struct.Reg, %struct.Reg* %1063, i32 0, i32 0
  %RAX.i625 = bitcast %union.anon* %1064 to i64*
  %1065 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1066 = getelementptr inbounds %struct.GPR, %struct.GPR* %1065, i32 0, i32 5
  %1067 = getelementptr inbounds %struct.Reg, %struct.Reg* %1066, i32 0, i32 0
  %RCX.i626 = bitcast %union.anon* %1067 to i64*
  %1068 = load i64, i64* %RAX.i625
  %1069 = load i64, i64* %RCX.i626
  %1070 = mul i64 %1069, 8
  %1071 = add i64 %1070, %1068
  %1072 = load i64, i64* %PC.i624
  %1073 = add i64 %1072, 4
  store i64 %1073, i64* %PC.i624
  %1074 = inttoptr i64 %1071 to i64*
  %1075 = load i64, i64* %1074
  store i64 %1075, i64* %RAX.i625, align 8
  store %struct.Memory* %loadMem_42c321, %struct.Memory** %MEMORY
  %loadMem_42c325 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1076 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1077 = getelementptr inbounds %struct.GPR, %struct.GPR* %1076, i32 0, i32 33
  %1078 = getelementptr inbounds %struct.Reg, %struct.Reg* %1077, i32 0, i32 0
  %PC.i621 = bitcast %union.anon* %1078 to i64*
  %1079 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1080 = getelementptr inbounds %struct.GPR, %struct.GPR* %1079, i32 0, i32 5
  %1081 = getelementptr inbounds %struct.Reg, %struct.Reg* %1080, i32 0, i32 0
  %RCX.i622 = bitcast %union.anon* %1081 to i64*
  %1082 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1083 = getelementptr inbounds %struct.GPR, %struct.GPR* %1082, i32 0, i32 15
  %1084 = getelementptr inbounds %struct.Reg, %struct.Reg* %1083, i32 0, i32 0
  %RBP.i623 = bitcast %union.anon* %1084 to i64*
  %1085 = load i64, i64* %RBP.i623
  %1086 = sub i64 %1085, 36
  %1087 = load i64, i64* %PC.i621
  %1088 = add i64 %1087, 4
  store i64 %1088, i64* %PC.i621
  %1089 = inttoptr i64 %1086 to i32*
  %1090 = load i32, i32* %1089
  %1091 = sext i32 %1090 to i64
  store i64 %1091, i64* %RCX.i622, align 8
  store %struct.Memory* %loadMem_42c325, %struct.Memory** %MEMORY
  %loadMem_42c329 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1092 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1093 = getelementptr inbounds %struct.GPR, %struct.GPR* %1092, i32 0, i32 33
  %1094 = getelementptr inbounds %struct.Reg, %struct.Reg* %1093, i32 0, i32 0
  %PC.i617 = bitcast %union.anon* %1094 to i64*
  %1095 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1096 = getelementptr inbounds %struct.GPR, %struct.GPR* %1095, i32 0, i32 1
  %1097 = getelementptr inbounds %struct.Reg, %struct.Reg* %1096, i32 0, i32 0
  %RAX.i618 = bitcast %union.anon* %1097 to i64*
  %1098 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1099 = getelementptr inbounds %struct.GPR, %struct.GPR* %1098, i32 0, i32 5
  %1100 = getelementptr inbounds %struct.Reg, %struct.Reg* %1099, i32 0, i32 0
  %RCX.i619 = bitcast %union.anon* %1100 to i64*
  %1101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1102 = getelementptr inbounds %struct.GPR, %struct.GPR* %1101, i32 0, i32 7
  %1103 = getelementptr inbounds %struct.Reg, %struct.Reg* %1102, i32 0, i32 0
  %RDX.i620 = bitcast %union.anon* %1103 to i64*
  %1104 = load i64, i64* %RAX.i618
  %1105 = load i64, i64* %RCX.i619
  %1106 = add i64 %1105, %1104
  %1107 = load i64, i64* %PC.i617
  %1108 = add i64 %1107, 4
  store i64 %1108, i64* %PC.i617
  %1109 = inttoptr i64 %1106 to i8*
  %1110 = load i8, i8* %1109
  %1111 = sext i8 %1110 to i64
  %1112 = and i64 %1111, 4294967295
  store i64 %1112, i64* %RDX.i620, align 8
  store %struct.Memory* %loadMem_42c329, %struct.Memory** %MEMORY
  %loadMem_42c32d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1114 = getelementptr inbounds %struct.GPR, %struct.GPR* %1113, i32 0, i32 33
  %1115 = getelementptr inbounds %struct.Reg, %struct.Reg* %1114, i32 0, i32 0
  %PC.i615 = bitcast %union.anon* %1115 to i64*
  %1116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1117 = getelementptr inbounds %struct.GPR, %struct.GPR* %1116, i32 0, i32 7
  %1118 = getelementptr inbounds %struct.Reg, %struct.Reg* %1117, i32 0, i32 0
  %EDX.i616 = bitcast %union.anon* %1118 to i32*
  %1119 = load i32, i32* %EDX.i616
  %1120 = zext i32 %1119 to i64
  %1121 = load i64, i64* %PC.i615
  %1122 = add i64 %1121, 3
  store i64 %1122, i64* %PC.i615
  %1123 = sub i32 %1119, 45
  %1124 = icmp ult i32 %1119, 45
  %1125 = zext i1 %1124 to i8
  %1126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1125, i8* %1126, align 1
  %1127 = and i32 %1123, 255
  %1128 = call i32 @llvm.ctpop.i32(i32 %1127)
  %1129 = trunc i32 %1128 to i8
  %1130 = and i8 %1129, 1
  %1131 = xor i8 %1130, 1
  %1132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1131, i8* %1132, align 1
  %1133 = xor i64 45, %1120
  %1134 = trunc i64 %1133 to i32
  %1135 = xor i32 %1134, %1123
  %1136 = lshr i32 %1135, 4
  %1137 = trunc i32 %1136 to i8
  %1138 = and i8 %1137, 1
  %1139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1138, i8* %1139, align 1
  %1140 = icmp eq i32 %1123, 0
  %1141 = zext i1 %1140 to i8
  %1142 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1141, i8* %1142, align 1
  %1143 = lshr i32 %1123, 31
  %1144 = trunc i32 %1143 to i8
  %1145 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1144, i8* %1145, align 1
  %1146 = lshr i32 %1119, 31
  %1147 = xor i32 %1143, %1146
  %1148 = add i32 %1147, %1146
  %1149 = icmp eq i32 %1148, 2
  %1150 = zext i1 %1149 to i8
  %1151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1150, i8* %1151, align 1
  store %struct.Memory* %loadMem_42c32d, %struct.Memory** %MEMORY
  %loadMem_42c330 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1153 = getelementptr inbounds %struct.GPR, %struct.GPR* %1152, i32 0, i32 33
  %1154 = getelementptr inbounds %struct.Reg, %struct.Reg* %1153, i32 0, i32 0
  %PC.i614 = bitcast %union.anon* %1154 to i64*
  %1155 = load i64, i64* %PC.i614
  %1156 = add i64 %1155, 35
  %1157 = load i64, i64* %PC.i614
  %1158 = add i64 %1157, 6
  %1159 = load i64, i64* %PC.i614
  %1160 = add i64 %1159, 6
  store i64 %1160, i64* %PC.i614
  %1161 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1162 = load i8, i8* %1161, align 1
  store i8 %1162, i8* %BRANCH_TAKEN, align 1
  %1163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1164 = icmp ne i8 %1162, 0
  %1165 = select i1 %1164, i64 %1156, i64 %1158
  store i64 %1165, i64* %1163, align 8
  store %struct.Memory* %loadMem_42c330, %struct.Memory** %MEMORY
  %loadBr_42c330 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42c330 = icmp eq i8 %loadBr_42c330, 1
  br i1 %cmpBr_42c330, label %block_.L_42c353, label %block_42c336

block_42c336:                                     ; preds = %block_42c319
  %loadMem_42c336 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1167 = getelementptr inbounds %struct.GPR, %struct.GPR* %1166, i32 0, i32 33
  %1168 = getelementptr inbounds %struct.Reg, %struct.Reg* %1167, i32 0, i32 0
  %PC.i611 = bitcast %union.anon* %1168 to i64*
  %1169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1170 = getelementptr inbounds %struct.GPR, %struct.GPR* %1169, i32 0, i32 1
  %1171 = getelementptr inbounds %struct.Reg, %struct.Reg* %1170, i32 0, i32 0
  %RAX.i612 = bitcast %union.anon* %1171 to i64*
  %1172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1173 = getelementptr inbounds %struct.GPR, %struct.GPR* %1172, i32 0, i32 15
  %1174 = getelementptr inbounds %struct.Reg, %struct.Reg* %1173, i32 0, i32 0
  %RBP.i613 = bitcast %union.anon* %1174 to i64*
  %1175 = load i64, i64* %RBP.i613
  %1176 = sub i64 %1175, 16
  %1177 = load i64, i64* %PC.i611
  %1178 = add i64 %1177, 4
  store i64 %1178, i64* %PC.i611
  %1179 = inttoptr i64 %1176 to i64*
  %1180 = load i64, i64* %1179
  store i64 %1180, i64* %RAX.i612, align 8
  store %struct.Memory* %loadMem_42c336, %struct.Memory** %MEMORY
  %loadMem_42c33a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1182 = getelementptr inbounds %struct.GPR, %struct.GPR* %1181, i32 0, i32 33
  %1183 = getelementptr inbounds %struct.Reg, %struct.Reg* %1182, i32 0, i32 0
  %PC.i608 = bitcast %union.anon* %1183 to i64*
  %1184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1185 = getelementptr inbounds %struct.GPR, %struct.GPR* %1184, i32 0, i32 5
  %1186 = getelementptr inbounds %struct.Reg, %struct.Reg* %1185, i32 0, i32 0
  %RCX.i609 = bitcast %union.anon* %1186 to i64*
  %1187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1188 = getelementptr inbounds %struct.GPR, %struct.GPR* %1187, i32 0, i32 15
  %1189 = getelementptr inbounds %struct.Reg, %struct.Reg* %1188, i32 0, i32 0
  %RBP.i610 = bitcast %union.anon* %1189 to i64*
  %1190 = load i64, i64* %RBP.i610
  %1191 = sub i64 %1190, 60
  %1192 = load i64, i64* %PC.i608
  %1193 = add i64 %1192, 4
  store i64 %1193, i64* %PC.i608
  %1194 = inttoptr i64 %1191 to i32*
  %1195 = load i32, i32* %1194
  %1196 = sext i32 %1195 to i64
  store i64 %1196, i64* %RCX.i609, align 8
  store %struct.Memory* %loadMem_42c33a, %struct.Memory** %MEMORY
  %loadMem_42c33e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1198 = getelementptr inbounds %struct.GPR, %struct.GPR* %1197, i32 0, i32 33
  %1199 = getelementptr inbounds %struct.Reg, %struct.Reg* %1198, i32 0, i32 0
  %PC.i605 = bitcast %union.anon* %1199 to i64*
  %1200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1201 = getelementptr inbounds %struct.GPR, %struct.GPR* %1200, i32 0, i32 1
  %1202 = getelementptr inbounds %struct.Reg, %struct.Reg* %1201, i32 0, i32 0
  %RAX.i606 = bitcast %union.anon* %1202 to i64*
  %1203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1204 = getelementptr inbounds %struct.GPR, %struct.GPR* %1203, i32 0, i32 5
  %1205 = getelementptr inbounds %struct.Reg, %struct.Reg* %1204, i32 0, i32 0
  %RCX.i607 = bitcast %union.anon* %1205 to i64*
  %1206 = load i64, i64* %RAX.i606
  %1207 = load i64, i64* %RCX.i607
  %1208 = mul i64 %1207, 8
  %1209 = add i64 %1208, %1206
  %1210 = load i64, i64* %PC.i605
  %1211 = add i64 %1210, 4
  store i64 %1211, i64* %PC.i605
  %1212 = inttoptr i64 %1209 to i64*
  %1213 = load i64, i64* %1212
  store i64 %1213, i64* %RAX.i606, align 8
  store %struct.Memory* %loadMem_42c33e, %struct.Memory** %MEMORY
  %loadMem_42c342 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1215 = getelementptr inbounds %struct.GPR, %struct.GPR* %1214, i32 0, i32 33
  %1216 = getelementptr inbounds %struct.Reg, %struct.Reg* %1215, i32 0, i32 0
  %PC.i602 = bitcast %union.anon* %1216 to i64*
  %1217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1218 = getelementptr inbounds %struct.GPR, %struct.GPR* %1217, i32 0, i32 5
  %1219 = getelementptr inbounds %struct.Reg, %struct.Reg* %1218, i32 0, i32 0
  %RCX.i603 = bitcast %union.anon* %1219 to i64*
  %1220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1221 = getelementptr inbounds %struct.GPR, %struct.GPR* %1220, i32 0, i32 15
  %1222 = getelementptr inbounds %struct.Reg, %struct.Reg* %1221, i32 0, i32 0
  %RBP.i604 = bitcast %union.anon* %1222 to i64*
  %1223 = load i64, i64* %RBP.i604
  %1224 = sub i64 %1223, 36
  %1225 = load i64, i64* %PC.i602
  %1226 = add i64 %1225, 4
  store i64 %1226, i64* %PC.i602
  %1227 = inttoptr i64 %1224 to i32*
  %1228 = load i32, i32* %1227
  %1229 = sext i32 %1228 to i64
  store i64 %1229, i64* %RCX.i603, align 8
  store %struct.Memory* %loadMem_42c342, %struct.Memory** %MEMORY
  %loadMem_42c346 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1231 = getelementptr inbounds %struct.GPR, %struct.GPR* %1230, i32 0, i32 33
  %1232 = getelementptr inbounds %struct.Reg, %struct.Reg* %1231, i32 0, i32 0
  %PC.i598 = bitcast %union.anon* %1232 to i64*
  %1233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1234 = getelementptr inbounds %struct.GPR, %struct.GPR* %1233, i32 0, i32 1
  %1235 = getelementptr inbounds %struct.Reg, %struct.Reg* %1234, i32 0, i32 0
  %RAX.i599 = bitcast %union.anon* %1235 to i64*
  %1236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1237 = getelementptr inbounds %struct.GPR, %struct.GPR* %1236, i32 0, i32 5
  %1238 = getelementptr inbounds %struct.Reg, %struct.Reg* %1237, i32 0, i32 0
  %RCX.i600 = bitcast %union.anon* %1238 to i64*
  %1239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1240 = getelementptr inbounds %struct.GPR, %struct.GPR* %1239, i32 0, i32 7
  %1241 = getelementptr inbounds %struct.Reg, %struct.Reg* %1240, i32 0, i32 0
  %RDX.i601 = bitcast %union.anon* %1241 to i64*
  %1242 = load i64, i64* %RAX.i599
  %1243 = load i64, i64* %RCX.i600
  %1244 = add i64 %1243, %1242
  %1245 = load i64, i64* %PC.i598
  %1246 = add i64 %1245, 4
  store i64 %1246, i64* %PC.i598
  %1247 = inttoptr i64 %1244 to i8*
  %1248 = load i8, i8* %1247
  %1249 = sext i8 %1248 to i64
  %1250 = and i64 %1249, 4294967295
  store i64 %1250, i64* %RDX.i601, align 8
  store %struct.Memory* %loadMem_42c346, %struct.Memory** %MEMORY
  %loadMem_42c34a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1252 = getelementptr inbounds %struct.GPR, %struct.GPR* %1251, i32 0, i32 33
  %1253 = getelementptr inbounds %struct.Reg, %struct.Reg* %1252, i32 0, i32 0
  %PC.i596 = bitcast %union.anon* %1253 to i64*
  %1254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1255 = getelementptr inbounds %struct.GPR, %struct.GPR* %1254, i32 0, i32 7
  %1256 = getelementptr inbounds %struct.Reg, %struct.Reg* %1255, i32 0, i32 0
  %EDX.i597 = bitcast %union.anon* %1256 to i32*
  %1257 = load i32, i32* %EDX.i597
  %1258 = zext i32 %1257 to i64
  %1259 = load i64, i64* %PC.i596
  %1260 = add i64 %1259, 3
  store i64 %1260, i64* %PC.i596
  %1261 = sub i32 %1257, 126
  %1262 = icmp ult i32 %1257, 126
  %1263 = zext i1 %1262 to i8
  %1264 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1263, i8* %1264, align 1
  %1265 = and i32 %1261, 255
  %1266 = call i32 @llvm.ctpop.i32(i32 %1265)
  %1267 = trunc i32 %1266 to i8
  %1268 = and i8 %1267, 1
  %1269 = xor i8 %1268, 1
  %1270 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1269, i8* %1270, align 1
  %1271 = xor i64 126, %1258
  %1272 = trunc i64 %1271 to i32
  %1273 = xor i32 %1272, %1261
  %1274 = lshr i32 %1273, 4
  %1275 = trunc i32 %1274 to i8
  %1276 = and i8 %1275, 1
  %1277 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1276, i8* %1277, align 1
  %1278 = icmp eq i32 %1261, 0
  %1279 = zext i1 %1278 to i8
  %1280 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1279, i8* %1280, align 1
  %1281 = lshr i32 %1261, 31
  %1282 = trunc i32 %1281 to i8
  %1283 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1282, i8* %1283, align 1
  %1284 = lshr i32 %1257, 31
  %1285 = xor i32 %1281, %1284
  %1286 = add i32 %1285, %1284
  %1287 = icmp eq i32 %1286, 2
  %1288 = zext i1 %1287 to i8
  %1289 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1288, i8* %1289, align 1
  store %struct.Memory* %loadMem_42c34a, %struct.Memory** %MEMORY
  %loadMem_42c34d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1291 = getelementptr inbounds %struct.GPR, %struct.GPR* %1290, i32 0, i32 33
  %1292 = getelementptr inbounds %struct.Reg, %struct.Reg* %1291, i32 0, i32 0
  %PC.i595 = bitcast %union.anon* %1292 to i64*
  %1293 = load i64, i64* %PC.i595
  %1294 = add i64 %1293, 18
  %1295 = load i64, i64* %PC.i595
  %1296 = add i64 %1295, 6
  %1297 = load i64, i64* %PC.i595
  %1298 = add i64 %1297, 6
  store i64 %1298, i64* %PC.i595
  %1299 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1300 = load i8, i8* %1299, align 1
  %1301 = icmp eq i8 %1300, 0
  %1302 = zext i1 %1301 to i8
  store i8 %1302, i8* %BRANCH_TAKEN, align 1
  %1303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1304 = select i1 %1301, i64 %1294, i64 %1296
  store i64 %1304, i64* %1303, align 8
  store %struct.Memory* %loadMem_42c34d, %struct.Memory** %MEMORY
  %loadBr_42c34d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42c34d = icmp eq i8 %loadBr_42c34d, 1
  br i1 %cmpBr_42c34d, label %block_.L_42c35f, label %block_.L_42c353

block_.L_42c353:                                  ; preds = %block_42c336, %block_42c319, %block_42c2fc, %block_42c2df, %block_42c2c2
  %loadMem_42c353 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1306 = getelementptr inbounds %struct.GPR, %struct.GPR* %1305, i32 0, i32 33
  %1307 = getelementptr inbounds %struct.Reg, %struct.Reg* %1306, i32 0, i32 0
  %PC.i593 = bitcast %union.anon* %1307 to i64*
  %1308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1309 = getelementptr inbounds %struct.GPR, %struct.GPR* %1308, i32 0, i32 15
  %1310 = getelementptr inbounds %struct.Reg, %struct.Reg* %1309, i32 0, i32 0
  %RBP.i594 = bitcast %union.anon* %1310 to i64*
  %1311 = load i64, i64* %RBP.i594
  %1312 = sub i64 %1311, 4
  %1313 = load i64, i64* %PC.i593
  %1314 = add i64 %1313, 7
  store i64 %1314, i64* %PC.i593
  %1315 = inttoptr i64 %1312 to i32*
  store i32 -1, i32* %1315
  store %struct.Memory* %loadMem_42c353, %struct.Memory** %MEMORY
  %loadMem_42c35a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1317 = getelementptr inbounds %struct.GPR, %struct.GPR* %1316, i32 0, i32 33
  %1318 = getelementptr inbounds %struct.Reg, %struct.Reg* %1317, i32 0, i32 0
  %PC.i592 = bitcast %union.anon* %1318 to i64*
  %1319 = load i64, i64* %PC.i592
  %1320 = add i64 %1319, 936
  %1321 = load i64, i64* %PC.i592
  %1322 = add i64 %1321, 5
  store i64 %1322, i64* %PC.i592
  %1323 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1320, i64* %1323, align 8
  store %struct.Memory* %loadMem_42c35a, %struct.Memory** %MEMORY
  br label %block_.L_42c702

block_.L_42c35f:                                  ; preds = %block_42c336
  %loadMem_42c35f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1325 = getelementptr inbounds %struct.GPR, %struct.GPR* %1324, i32 0, i32 33
  %1326 = getelementptr inbounds %struct.Reg, %struct.Reg* %1325, i32 0, i32 0
  %PC.i589 = bitcast %union.anon* %1326 to i64*
  %1327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1328 = getelementptr inbounds %struct.GPR, %struct.GPR* %1327, i32 0, i32 1
  %1329 = getelementptr inbounds %struct.Reg, %struct.Reg* %1328, i32 0, i32 0
  %RAX.i590 = bitcast %union.anon* %1329 to i64*
  %1330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1331 = getelementptr inbounds %struct.GPR, %struct.GPR* %1330, i32 0, i32 15
  %1332 = getelementptr inbounds %struct.Reg, %struct.Reg* %1331, i32 0, i32 0
  %RBP.i591 = bitcast %union.anon* %1332 to i64*
  %1333 = load i64, i64* %RBP.i591
  %1334 = sub i64 %1333, 16
  %1335 = load i64, i64* %PC.i589
  %1336 = add i64 %1335, 4
  store i64 %1336, i64* %PC.i589
  %1337 = inttoptr i64 %1334 to i64*
  %1338 = load i64, i64* %1337
  store i64 %1338, i64* %RAX.i590, align 8
  store %struct.Memory* %loadMem_42c35f, %struct.Memory** %MEMORY
  %loadMem_42c363 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1340 = getelementptr inbounds %struct.GPR, %struct.GPR* %1339, i32 0, i32 33
  %1341 = getelementptr inbounds %struct.Reg, %struct.Reg* %1340, i32 0, i32 0
  %PC.i586 = bitcast %union.anon* %1341 to i64*
  %1342 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1343 = getelementptr inbounds %struct.GPR, %struct.GPR* %1342, i32 0, i32 5
  %1344 = getelementptr inbounds %struct.Reg, %struct.Reg* %1343, i32 0, i32 0
  %RCX.i587 = bitcast %union.anon* %1344 to i64*
  %1345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1346 = getelementptr inbounds %struct.GPR, %struct.GPR* %1345, i32 0, i32 15
  %1347 = getelementptr inbounds %struct.Reg, %struct.Reg* %1346, i32 0, i32 0
  %RBP.i588 = bitcast %union.anon* %1347 to i64*
  %1348 = load i64, i64* %RBP.i588
  %1349 = sub i64 %1348, 60
  %1350 = load i64, i64* %PC.i586
  %1351 = add i64 %1350, 4
  store i64 %1351, i64* %PC.i586
  %1352 = inttoptr i64 %1349 to i32*
  %1353 = load i32, i32* %1352
  %1354 = sext i32 %1353 to i64
  store i64 %1354, i64* %RCX.i587, align 8
  store %struct.Memory* %loadMem_42c363, %struct.Memory** %MEMORY
  %loadMem_42c367 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1356 = getelementptr inbounds %struct.GPR, %struct.GPR* %1355, i32 0, i32 33
  %1357 = getelementptr inbounds %struct.Reg, %struct.Reg* %1356, i32 0, i32 0
  %PC.i583 = bitcast %union.anon* %1357 to i64*
  %1358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1359 = getelementptr inbounds %struct.GPR, %struct.GPR* %1358, i32 0, i32 1
  %1360 = getelementptr inbounds %struct.Reg, %struct.Reg* %1359, i32 0, i32 0
  %RAX.i584 = bitcast %union.anon* %1360 to i64*
  %1361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1362 = getelementptr inbounds %struct.GPR, %struct.GPR* %1361, i32 0, i32 5
  %1363 = getelementptr inbounds %struct.Reg, %struct.Reg* %1362, i32 0, i32 0
  %RCX.i585 = bitcast %union.anon* %1363 to i64*
  %1364 = load i64, i64* %RAX.i584
  %1365 = load i64, i64* %RCX.i585
  %1366 = mul i64 %1365, 8
  %1367 = add i64 %1366, %1364
  %1368 = load i64, i64* %PC.i583
  %1369 = add i64 %1368, 4
  store i64 %1369, i64* %PC.i583
  %1370 = inttoptr i64 %1367 to i64*
  %1371 = load i64, i64* %1370
  store i64 %1371, i64* %RAX.i584, align 8
  store %struct.Memory* %loadMem_42c367, %struct.Memory** %MEMORY
  %loadMem_42c36b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1373 = getelementptr inbounds %struct.GPR, %struct.GPR* %1372, i32 0, i32 33
  %1374 = getelementptr inbounds %struct.Reg, %struct.Reg* %1373, i32 0, i32 0
  %PC.i580 = bitcast %union.anon* %1374 to i64*
  %1375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1376 = getelementptr inbounds %struct.GPR, %struct.GPR* %1375, i32 0, i32 5
  %1377 = getelementptr inbounds %struct.Reg, %struct.Reg* %1376, i32 0, i32 0
  %RCX.i581 = bitcast %union.anon* %1377 to i64*
  %1378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1379 = getelementptr inbounds %struct.GPR, %struct.GPR* %1378, i32 0, i32 15
  %1380 = getelementptr inbounds %struct.Reg, %struct.Reg* %1379, i32 0, i32 0
  %RBP.i582 = bitcast %union.anon* %1380 to i64*
  %1381 = load i64, i64* %RBP.i582
  %1382 = sub i64 %1381, 40
  %1383 = load i64, i64* %PC.i580
  %1384 = add i64 %1383, 4
  store i64 %1384, i64* %PC.i580
  %1385 = inttoptr i64 %1382 to i32*
  %1386 = load i32, i32* %1385
  %1387 = sext i32 %1386 to i64
  store i64 %1387, i64* %RCX.i581, align 8
  store %struct.Memory* %loadMem_42c36b, %struct.Memory** %MEMORY
  %loadMem_42c36f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1389 = getelementptr inbounds %struct.GPR, %struct.GPR* %1388, i32 0, i32 33
  %1390 = getelementptr inbounds %struct.Reg, %struct.Reg* %1389, i32 0, i32 0
  %PC.i576 = bitcast %union.anon* %1390 to i64*
  %1391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1392 = getelementptr inbounds %struct.GPR, %struct.GPR* %1391, i32 0, i32 1
  %1393 = getelementptr inbounds %struct.Reg, %struct.Reg* %1392, i32 0, i32 0
  %RAX.i577 = bitcast %union.anon* %1393 to i64*
  %1394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1395 = getelementptr inbounds %struct.GPR, %struct.GPR* %1394, i32 0, i32 5
  %1396 = getelementptr inbounds %struct.Reg, %struct.Reg* %1395, i32 0, i32 0
  %RCX.i578 = bitcast %union.anon* %1396 to i64*
  %1397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1398 = getelementptr inbounds %struct.GPR, %struct.GPR* %1397, i32 0, i32 7
  %1399 = getelementptr inbounds %struct.Reg, %struct.Reg* %1398, i32 0, i32 0
  %RDX.i579 = bitcast %union.anon* %1399 to i64*
  %1400 = load i64, i64* %RAX.i577
  %1401 = load i64, i64* %RCX.i578
  %1402 = add i64 %1401, %1400
  %1403 = load i64, i64* %PC.i576
  %1404 = add i64 %1403, 4
  store i64 %1404, i64* %PC.i576
  %1405 = inttoptr i64 %1402 to i8*
  %1406 = load i8, i8* %1405
  %1407 = sext i8 %1406 to i64
  %1408 = and i64 %1407, 4294967295
  store i64 %1408, i64* %RDX.i579, align 8
  store %struct.Memory* %loadMem_42c36f, %struct.Memory** %MEMORY
  %loadMem_42c373 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1410 = getelementptr inbounds %struct.GPR, %struct.GPR* %1409, i32 0, i32 33
  %1411 = getelementptr inbounds %struct.Reg, %struct.Reg* %1410, i32 0, i32 0
  %PC.i574 = bitcast %union.anon* %1411 to i64*
  %1412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1413 = getelementptr inbounds %struct.GPR, %struct.GPR* %1412, i32 0, i32 7
  %1414 = getelementptr inbounds %struct.Reg, %struct.Reg* %1413, i32 0, i32 0
  %EDX.i575 = bitcast %union.anon* %1414 to i32*
  %1415 = load i32, i32* %EDX.i575
  %1416 = zext i32 %1415 to i64
  %1417 = load i64, i64* %PC.i574
  %1418 = add i64 %1417, 3
  store i64 %1418, i64* %PC.i574
  %1419 = sub i32 %1415, 32
  %1420 = icmp ult i32 %1415, 32
  %1421 = zext i1 %1420 to i8
  %1422 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1421, i8* %1422, align 1
  %1423 = and i32 %1419, 255
  %1424 = call i32 @llvm.ctpop.i32(i32 %1423)
  %1425 = trunc i32 %1424 to i8
  %1426 = and i8 %1425, 1
  %1427 = xor i8 %1426, 1
  %1428 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1427, i8* %1428, align 1
  %1429 = xor i64 32, %1416
  %1430 = trunc i64 %1429 to i32
  %1431 = xor i32 %1430, %1419
  %1432 = lshr i32 %1431, 4
  %1433 = trunc i32 %1432 to i8
  %1434 = and i8 %1433, 1
  %1435 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1434, i8* %1435, align 1
  %1436 = icmp eq i32 %1419, 0
  %1437 = zext i1 %1436 to i8
  %1438 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1437, i8* %1438, align 1
  %1439 = lshr i32 %1419, 31
  %1440 = trunc i32 %1439 to i8
  %1441 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1440, i8* %1441, align 1
  %1442 = lshr i32 %1415, 31
  %1443 = xor i32 %1439, %1442
  %1444 = add i32 %1443, %1442
  %1445 = icmp eq i32 %1444, 2
  %1446 = zext i1 %1445 to i8
  %1447 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1446, i8* %1447, align 1
  store %struct.Memory* %loadMem_42c373, %struct.Memory** %MEMORY
  %loadMem_42c376 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1449 = getelementptr inbounds %struct.GPR, %struct.GPR* %1448, i32 0, i32 33
  %1450 = getelementptr inbounds %struct.Reg, %struct.Reg* %1449, i32 0, i32 0
  %PC.i573 = bitcast %union.anon* %1450 to i64*
  %1451 = load i64, i64* %PC.i573
  %1452 = add i64 %1451, 122
  %1453 = load i64, i64* %PC.i573
  %1454 = add i64 %1453, 6
  %1455 = load i64, i64* %PC.i573
  %1456 = add i64 %1455, 6
  store i64 %1456, i64* %PC.i573
  %1457 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1458 = load i8, i8* %1457, align 1
  store i8 %1458, i8* %BRANCH_TAKEN, align 1
  %1459 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1460 = icmp ne i8 %1458, 0
  %1461 = select i1 %1460, i64 %1452, i64 %1454
  store i64 %1461, i64* %1459, align 8
  store %struct.Memory* %loadMem_42c376, %struct.Memory** %MEMORY
  %loadBr_42c376 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42c376 = icmp eq i8 %loadBr_42c376, 1
  br i1 %cmpBr_42c376, label %block_.L_42c3f0, label %block_42c37c

block_42c37c:                                     ; preds = %block_.L_42c35f
  %loadMem_42c37c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1463 = getelementptr inbounds %struct.GPR, %struct.GPR* %1462, i32 0, i32 33
  %1464 = getelementptr inbounds %struct.Reg, %struct.Reg* %1463, i32 0, i32 0
  %PC.i570 = bitcast %union.anon* %1464 to i64*
  %1465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1466 = getelementptr inbounds %struct.GPR, %struct.GPR* %1465, i32 0, i32 1
  %1467 = getelementptr inbounds %struct.Reg, %struct.Reg* %1466, i32 0, i32 0
  %RAX.i571 = bitcast %union.anon* %1467 to i64*
  %1468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1469 = getelementptr inbounds %struct.GPR, %struct.GPR* %1468, i32 0, i32 15
  %1470 = getelementptr inbounds %struct.Reg, %struct.Reg* %1469, i32 0, i32 0
  %RBP.i572 = bitcast %union.anon* %1470 to i64*
  %1471 = load i64, i64* %RBP.i572
  %1472 = sub i64 %1471, 16
  %1473 = load i64, i64* %PC.i570
  %1474 = add i64 %1473, 4
  store i64 %1474, i64* %PC.i570
  %1475 = inttoptr i64 %1472 to i64*
  %1476 = load i64, i64* %1475
  store i64 %1476, i64* %RAX.i571, align 8
  store %struct.Memory* %loadMem_42c37c, %struct.Memory** %MEMORY
  %loadMem_42c380 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1478 = getelementptr inbounds %struct.GPR, %struct.GPR* %1477, i32 0, i32 33
  %1479 = getelementptr inbounds %struct.Reg, %struct.Reg* %1478, i32 0, i32 0
  %PC.i567 = bitcast %union.anon* %1479 to i64*
  %1480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1481 = getelementptr inbounds %struct.GPR, %struct.GPR* %1480, i32 0, i32 5
  %1482 = getelementptr inbounds %struct.Reg, %struct.Reg* %1481, i32 0, i32 0
  %RCX.i568 = bitcast %union.anon* %1482 to i64*
  %1483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1484 = getelementptr inbounds %struct.GPR, %struct.GPR* %1483, i32 0, i32 15
  %1485 = getelementptr inbounds %struct.Reg, %struct.Reg* %1484, i32 0, i32 0
  %RBP.i569 = bitcast %union.anon* %1485 to i64*
  %1486 = load i64, i64* %RBP.i569
  %1487 = sub i64 %1486, 60
  %1488 = load i64, i64* %PC.i567
  %1489 = add i64 %1488, 4
  store i64 %1489, i64* %PC.i567
  %1490 = inttoptr i64 %1487 to i32*
  %1491 = load i32, i32* %1490
  %1492 = sext i32 %1491 to i64
  store i64 %1492, i64* %RCX.i568, align 8
  store %struct.Memory* %loadMem_42c380, %struct.Memory** %MEMORY
  %loadMem_42c384 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1494 = getelementptr inbounds %struct.GPR, %struct.GPR* %1493, i32 0, i32 33
  %1495 = getelementptr inbounds %struct.Reg, %struct.Reg* %1494, i32 0, i32 0
  %PC.i564 = bitcast %union.anon* %1495 to i64*
  %1496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1497 = getelementptr inbounds %struct.GPR, %struct.GPR* %1496, i32 0, i32 1
  %1498 = getelementptr inbounds %struct.Reg, %struct.Reg* %1497, i32 0, i32 0
  %RAX.i565 = bitcast %union.anon* %1498 to i64*
  %1499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1500 = getelementptr inbounds %struct.GPR, %struct.GPR* %1499, i32 0, i32 5
  %1501 = getelementptr inbounds %struct.Reg, %struct.Reg* %1500, i32 0, i32 0
  %RCX.i566 = bitcast %union.anon* %1501 to i64*
  %1502 = load i64, i64* %RAX.i565
  %1503 = load i64, i64* %RCX.i566
  %1504 = mul i64 %1503, 8
  %1505 = add i64 %1504, %1502
  %1506 = load i64, i64* %PC.i564
  %1507 = add i64 %1506, 4
  store i64 %1507, i64* %PC.i564
  %1508 = inttoptr i64 %1505 to i64*
  %1509 = load i64, i64* %1508
  store i64 %1509, i64* %RAX.i565, align 8
  store %struct.Memory* %loadMem_42c384, %struct.Memory** %MEMORY
  %loadMem_42c388 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1511 = getelementptr inbounds %struct.GPR, %struct.GPR* %1510, i32 0, i32 33
  %1512 = getelementptr inbounds %struct.Reg, %struct.Reg* %1511, i32 0, i32 0
  %PC.i561 = bitcast %union.anon* %1512 to i64*
  %1513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1514 = getelementptr inbounds %struct.GPR, %struct.GPR* %1513, i32 0, i32 5
  %1515 = getelementptr inbounds %struct.Reg, %struct.Reg* %1514, i32 0, i32 0
  %RCX.i562 = bitcast %union.anon* %1515 to i64*
  %1516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1517 = getelementptr inbounds %struct.GPR, %struct.GPR* %1516, i32 0, i32 15
  %1518 = getelementptr inbounds %struct.Reg, %struct.Reg* %1517, i32 0, i32 0
  %RBP.i563 = bitcast %union.anon* %1518 to i64*
  %1519 = load i64, i64* %RBP.i563
  %1520 = sub i64 %1519, 40
  %1521 = load i64, i64* %PC.i561
  %1522 = add i64 %1521, 4
  store i64 %1522, i64* %PC.i561
  %1523 = inttoptr i64 %1520 to i32*
  %1524 = load i32, i32* %1523
  %1525 = sext i32 %1524 to i64
  store i64 %1525, i64* %RCX.i562, align 8
  store %struct.Memory* %loadMem_42c388, %struct.Memory** %MEMORY
  %loadMem_42c38c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1527 = getelementptr inbounds %struct.GPR, %struct.GPR* %1526, i32 0, i32 33
  %1528 = getelementptr inbounds %struct.Reg, %struct.Reg* %1527, i32 0, i32 0
  %PC.i557 = bitcast %union.anon* %1528 to i64*
  %1529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1530 = getelementptr inbounds %struct.GPR, %struct.GPR* %1529, i32 0, i32 1
  %1531 = getelementptr inbounds %struct.Reg, %struct.Reg* %1530, i32 0, i32 0
  %RAX.i558 = bitcast %union.anon* %1531 to i64*
  %1532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1533 = getelementptr inbounds %struct.GPR, %struct.GPR* %1532, i32 0, i32 5
  %1534 = getelementptr inbounds %struct.Reg, %struct.Reg* %1533, i32 0, i32 0
  %RCX.i559 = bitcast %union.anon* %1534 to i64*
  %1535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1536 = getelementptr inbounds %struct.GPR, %struct.GPR* %1535, i32 0, i32 7
  %1537 = getelementptr inbounds %struct.Reg, %struct.Reg* %1536, i32 0, i32 0
  %RDX.i560 = bitcast %union.anon* %1537 to i64*
  %1538 = load i64, i64* %RAX.i558
  %1539 = load i64, i64* %RCX.i559
  %1540 = add i64 %1539, %1538
  %1541 = load i64, i64* %PC.i557
  %1542 = add i64 %1541, 4
  store i64 %1542, i64* %PC.i557
  %1543 = inttoptr i64 %1540 to i8*
  %1544 = load i8, i8* %1543
  %1545 = sext i8 %1544 to i64
  %1546 = and i64 %1545, 4294967295
  store i64 %1546, i64* %RDX.i560, align 8
  store %struct.Memory* %loadMem_42c38c, %struct.Memory** %MEMORY
  %loadMem_42c390 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1548 = getelementptr inbounds %struct.GPR, %struct.GPR* %1547, i32 0, i32 33
  %1549 = getelementptr inbounds %struct.Reg, %struct.Reg* %1548, i32 0, i32 0
  %PC.i555 = bitcast %union.anon* %1549 to i64*
  %1550 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1551 = getelementptr inbounds %struct.GPR, %struct.GPR* %1550, i32 0, i32 7
  %1552 = getelementptr inbounds %struct.Reg, %struct.Reg* %1551, i32 0, i32 0
  %EDX.i556 = bitcast %union.anon* %1552 to i32*
  %1553 = load i32, i32* %EDX.i556
  %1554 = zext i32 %1553 to i64
  %1555 = load i64, i64* %PC.i555
  %1556 = add i64 %1555, 3
  store i64 %1556, i64* %PC.i555
  %1557 = sub i32 %1553, 46
  %1558 = icmp ult i32 %1553, 46
  %1559 = zext i1 %1558 to i8
  %1560 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1559, i8* %1560, align 1
  %1561 = and i32 %1557, 255
  %1562 = call i32 @llvm.ctpop.i32(i32 %1561)
  %1563 = trunc i32 %1562 to i8
  %1564 = and i8 %1563, 1
  %1565 = xor i8 %1564, 1
  %1566 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1565, i8* %1566, align 1
  %1567 = xor i64 46, %1554
  %1568 = trunc i64 %1567 to i32
  %1569 = xor i32 %1568, %1557
  %1570 = lshr i32 %1569, 4
  %1571 = trunc i32 %1570 to i8
  %1572 = and i8 %1571, 1
  %1573 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1572, i8* %1573, align 1
  %1574 = icmp eq i32 %1557, 0
  %1575 = zext i1 %1574 to i8
  %1576 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1575, i8* %1576, align 1
  %1577 = lshr i32 %1557, 31
  %1578 = trunc i32 %1577 to i8
  %1579 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1578, i8* %1579, align 1
  %1580 = lshr i32 %1553, 31
  %1581 = xor i32 %1577, %1580
  %1582 = add i32 %1581, %1580
  %1583 = icmp eq i32 %1582, 2
  %1584 = zext i1 %1583 to i8
  %1585 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1584, i8* %1585, align 1
  store %struct.Memory* %loadMem_42c390, %struct.Memory** %MEMORY
  %loadMem_42c393 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1587 = getelementptr inbounds %struct.GPR, %struct.GPR* %1586, i32 0, i32 33
  %1588 = getelementptr inbounds %struct.Reg, %struct.Reg* %1587, i32 0, i32 0
  %PC.i554 = bitcast %union.anon* %1588 to i64*
  %1589 = load i64, i64* %PC.i554
  %1590 = add i64 %1589, 93
  %1591 = load i64, i64* %PC.i554
  %1592 = add i64 %1591, 6
  %1593 = load i64, i64* %PC.i554
  %1594 = add i64 %1593, 6
  store i64 %1594, i64* %PC.i554
  %1595 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1596 = load i8, i8* %1595, align 1
  store i8 %1596, i8* %BRANCH_TAKEN, align 1
  %1597 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1598 = icmp ne i8 %1596, 0
  %1599 = select i1 %1598, i64 %1590, i64 %1592
  store i64 %1599, i64* %1597, align 8
  store %struct.Memory* %loadMem_42c393, %struct.Memory** %MEMORY
  %loadBr_42c393 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42c393 = icmp eq i8 %loadBr_42c393, 1
  br i1 %cmpBr_42c393, label %block_.L_42c3f0, label %block_42c399

block_42c399:                                     ; preds = %block_42c37c
  %loadMem_42c399 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1601 = getelementptr inbounds %struct.GPR, %struct.GPR* %1600, i32 0, i32 33
  %1602 = getelementptr inbounds %struct.Reg, %struct.Reg* %1601, i32 0, i32 0
  %PC.i551 = bitcast %union.anon* %1602 to i64*
  %1603 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1604 = getelementptr inbounds %struct.GPR, %struct.GPR* %1603, i32 0, i32 1
  %1605 = getelementptr inbounds %struct.Reg, %struct.Reg* %1604, i32 0, i32 0
  %RAX.i552 = bitcast %union.anon* %1605 to i64*
  %1606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1607 = getelementptr inbounds %struct.GPR, %struct.GPR* %1606, i32 0, i32 15
  %1608 = getelementptr inbounds %struct.Reg, %struct.Reg* %1607, i32 0, i32 0
  %RBP.i553 = bitcast %union.anon* %1608 to i64*
  %1609 = load i64, i64* %RBP.i553
  %1610 = sub i64 %1609, 16
  %1611 = load i64, i64* %PC.i551
  %1612 = add i64 %1611, 4
  store i64 %1612, i64* %PC.i551
  %1613 = inttoptr i64 %1610 to i64*
  %1614 = load i64, i64* %1613
  store i64 %1614, i64* %RAX.i552, align 8
  store %struct.Memory* %loadMem_42c399, %struct.Memory** %MEMORY
  %loadMem_42c39d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1616 = getelementptr inbounds %struct.GPR, %struct.GPR* %1615, i32 0, i32 33
  %1617 = getelementptr inbounds %struct.Reg, %struct.Reg* %1616, i32 0, i32 0
  %PC.i548 = bitcast %union.anon* %1617 to i64*
  %1618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1619 = getelementptr inbounds %struct.GPR, %struct.GPR* %1618, i32 0, i32 5
  %1620 = getelementptr inbounds %struct.Reg, %struct.Reg* %1619, i32 0, i32 0
  %RCX.i549 = bitcast %union.anon* %1620 to i64*
  %1621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1622 = getelementptr inbounds %struct.GPR, %struct.GPR* %1621, i32 0, i32 15
  %1623 = getelementptr inbounds %struct.Reg, %struct.Reg* %1622, i32 0, i32 0
  %RBP.i550 = bitcast %union.anon* %1623 to i64*
  %1624 = load i64, i64* %RBP.i550
  %1625 = sub i64 %1624, 60
  %1626 = load i64, i64* %PC.i548
  %1627 = add i64 %1626, 4
  store i64 %1627, i64* %PC.i548
  %1628 = inttoptr i64 %1625 to i32*
  %1629 = load i32, i32* %1628
  %1630 = sext i32 %1629 to i64
  store i64 %1630, i64* %RCX.i549, align 8
  store %struct.Memory* %loadMem_42c39d, %struct.Memory** %MEMORY
  %loadMem_42c3a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1632 = getelementptr inbounds %struct.GPR, %struct.GPR* %1631, i32 0, i32 33
  %1633 = getelementptr inbounds %struct.Reg, %struct.Reg* %1632, i32 0, i32 0
  %PC.i545 = bitcast %union.anon* %1633 to i64*
  %1634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1635 = getelementptr inbounds %struct.GPR, %struct.GPR* %1634, i32 0, i32 1
  %1636 = getelementptr inbounds %struct.Reg, %struct.Reg* %1635, i32 0, i32 0
  %RAX.i546 = bitcast %union.anon* %1636 to i64*
  %1637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1638 = getelementptr inbounds %struct.GPR, %struct.GPR* %1637, i32 0, i32 5
  %1639 = getelementptr inbounds %struct.Reg, %struct.Reg* %1638, i32 0, i32 0
  %RCX.i547 = bitcast %union.anon* %1639 to i64*
  %1640 = load i64, i64* %RAX.i546
  %1641 = load i64, i64* %RCX.i547
  %1642 = mul i64 %1641, 8
  %1643 = add i64 %1642, %1640
  %1644 = load i64, i64* %PC.i545
  %1645 = add i64 %1644, 4
  store i64 %1645, i64* %PC.i545
  %1646 = inttoptr i64 %1643 to i64*
  %1647 = load i64, i64* %1646
  store i64 %1647, i64* %RAX.i546, align 8
  store %struct.Memory* %loadMem_42c3a1, %struct.Memory** %MEMORY
  %loadMem_42c3a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1648 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1649 = getelementptr inbounds %struct.GPR, %struct.GPR* %1648, i32 0, i32 33
  %1650 = getelementptr inbounds %struct.Reg, %struct.Reg* %1649, i32 0, i32 0
  %PC.i542 = bitcast %union.anon* %1650 to i64*
  %1651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1652 = getelementptr inbounds %struct.GPR, %struct.GPR* %1651, i32 0, i32 5
  %1653 = getelementptr inbounds %struct.Reg, %struct.Reg* %1652, i32 0, i32 0
  %RCX.i543 = bitcast %union.anon* %1653 to i64*
  %1654 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1655 = getelementptr inbounds %struct.GPR, %struct.GPR* %1654, i32 0, i32 15
  %1656 = getelementptr inbounds %struct.Reg, %struct.Reg* %1655, i32 0, i32 0
  %RBP.i544 = bitcast %union.anon* %1656 to i64*
  %1657 = load i64, i64* %RBP.i544
  %1658 = sub i64 %1657, 40
  %1659 = load i64, i64* %PC.i542
  %1660 = add i64 %1659, 4
  store i64 %1660, i64* %PC.i542
  %1661 = inttoptr i64 %1658 to i32*
  %1662 = load i32, i32* %1661
  %1663 = sext i32 %1662 to i64
  store i64 %1663, i64* %RCX.i543, align 8
  store %struct.Memory* %loadMem_42c3a5, %struct.Memory** %MEMORY
  %loadMem_42c3a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1665 = getelementptr inbounds %struct.GPR, %struct.GPR* %1664, i32 0, i32 33
  %1666 = getelementptr inbounds %struct.Reg, %struct.Reg* %1665, i32 0, i32 0
  %PC.i538 = bitcast %union.anon* %1666 to i64*
  %1667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1668 = getelementptr inbounds %struct.GPR, %struct.GPR* %1667, i32 0, i32 1
  %1669 = getelementptr inbounds %struct.Reg, %struct.Reg* %1668, i32 0, i32 0
  %RAX.i539 = bitcast %union.anon* %1669 to i64*
  %1670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1671 = getelementptr inbounds %struct.GPR, %struct.GPR* %1670, i32 0, i32 5
  %1672 = getelementptr inbounds %struct.Reg, %struct.Reg* %1671, i32 0, i32 0
  %RCX.i540 = bitcast %union.anon* %1672 to i64*
  %1673 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1674 = getelementptr inbounds %struct.GPR, %struct.GPR* %1673, i32 0, i32 7
  %1675 = getelementptr inbounds %struct.Reg, %struct.Reg* %1674, i32 0, i32 0
  %RDX.i541 = bitcast %union.anon* %1675 to i64*
  %1676 = load i64, i64* %RAX.i539
  %1677 = load i64, i64* %RCX.i540
  %1678 = add i64 %1677, %1676
  %1679 = load i64, i64* %PC.i538
  %1680 = add i64 %1679, 4
  store i64 %1680, i64* %PC.i538
  %1681 = inttoptr i64 %1678 to i8*
  %1682 = load i8, i8* %1681
  %1683 = sext i8 %1682 to i64
  %1684 = and i64 %1683, 4294967295
  store i64 %1684, i64* %RDX.i541, align 8
  store %struct.Memory* %loadMem_42c3a9, %struct.Memory** %MEMORY
  %loadMem_42c3ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %1685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1686 = getelementptr inbounds %struct.GPR, %struct.GPR* %1685, i32 0, i32 33
  %1687 = getelementptr inbounds %struct.Reg, %struct.Reg* %1686, i32 0, i32 0
  %PC.i536 = bitcast %union.anon* %1687 to i64*
  %1688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1689 = getelementptr inbounds %struct.GPR, %struct.GPR* %1688, i32 0, i32 7
  %1690 = getelementptr inbounds %struct.Reg, %struct.Reg* %1689, i32 0, i32 0
  %EDX.i537 = bitcast %union.anon* %1690 to i32*
  %1691 = load i32, i32* %EDX.i537
  %1692 = zext i32 %1691 to i64
  %1693 = load i64, i64* %PC.i536
  %1694 = add i64 %1693, 3
  store i64 %1694, i64* %PC.i536
  %1695 = sub i32 %1691, 95
  %1696 = icmp ult i32 %1691, 95
  %1697 = zext i1 %1696 to i8
  %1698 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1697, i8* %1698, align 1
  %1699 = and i32 %1695, 255
  %1700 = call i32 @llvm.ctpop.i32(i32 %1699)
  %1701 = trunc i32 %1700 to i8
  %1702 = and i8 %1701, 1
  %1703 = xor i8 %1702, 1
  %1704 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1703, i8* %1704, align 1
  %1705 = xor i64 95, %1692
  %1706 = trunc i64 %1705 to i32
  %1707 = xor i32 %1706, %1695
  %1708 = lshr i32 %1707, 4
  %1709 = trunc i32 %1708 to i8
  %1710 = and i8 %1709, 1
  %1711 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1710, i8* %1711, align 1
  %1712 = icmp eq i32 %1695, 0
  %1713 = zext i1 %1712 to i8
  %1714 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1713, i8* %1714, align 1
  %1715 = lshr i32 %1695, 31
  %1716 = trunc i32 %1715 to i8
  %1717 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1716, i8* %1717, align 1
  %1718 = lshr i32 %1691, 31
  %1719 = xor i32 %1715, %1718
  %1720 = add i32 %1719, %1718
  %1721 = icmp eq i32 %1720, 2
  %1722 = zext i1 %1721 to i8
  %1723 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1722, i8* %1723, align 1
  store %struct.Memory* %loadMem_42c3ad, %struct.Memory** %MEMORY
  %loadMem_42c3b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1725 = getelementptr inbounds %struct.GPR, %struct.GPR* %1724, i32 0, i32 33
  %1726 = getelementptr inbounds %struct.Reg, %struct.Reg* %1725, i32 0, i32 0
  %PC.i535 = bitcast %union.anon* %1726 to i64*
  %1727 = load i64, i64* %PC.i535
  %1728 = add i64 %1727, 64
  %1729 = load i64, i64* %PC.i535
  %1730 = add i64 %1729, 6
  %1731 = load i64, i64* %PC.i535
  %1732 = add i64 %1731, 6
  store i64 %1732, i64* %PC.i535
  %1733 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1734 = load i8, i8* %1733, align 1
  store i8 %1734, i8* %BRANCH_TAKEN, align 1
  %1735 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1736 = icmp ne i8 %1734, 0
  %1737 = select i1 %1736, i64 %1728, i64 %1730
  store i64 %1737, i64* %1735, align 8
  store %struct.Memory* %loadMem_42c3b0, %struct.Memory** %MEMORY
  %loadBr_42c3b0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42c3b0 = icmp eq i8 %loadBr_42c3b0, 1
  br i1 %cmpBr_42c3b0, label %block_.L_42c3f0, label %block_42c3b6

block_42c3b6:                                     ; preds = %block_42c399
  %loadMem_42c3b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1739 = getelementptr inbounds %struct.GPR, %struct.GPR* %1738, i32 0, i32 33
  %1740 = getelementptr inbounds %struct.Reg, %struct.Reg* %1739, i32 0, i32 0
  %PC.i532 = bitcast %union.anon* %1740 to i64*
  %1741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1742 = getelementptr inbounds %struct.GPR, %struct.GPR* %1741, i32 0, i32 1
  %1743 = getelementptr inbounds %struct.Reg, %struct.Reg* %1742, i32 0, i32 0
  %RAX.i533 = bitcast %union.anon* %1743 to i64*
  %1744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1745 = getelementptr inbounds %struct.GPR, %struct.GPR* %1744, i32 0, i32 15
  %1746 = getelementptr inbounds %struct.Reg, %struct.Reg* %1745, i32 0, i32 0
  %RBP.i534 = bitcast %union.anon* %1746 to i64*
  %1747 = load i64, i64* %RBP.i534
  %1748 = sub i64 %1747, 16
  %1749 = load i64, i64* %PC.i532
  %1750 = add i64 %1749, 4
  store i64 %1750, i64* %PC.i532
  %1751 = inttoptr i64 %1748 to i64*
  %1752 = load i64, i64* %1751
  store i64 %1752, i64* %RAX.i533, align 8
  store %struct.Memory* %loadMem_42c3b6, %struct.Memory** %MEMORY
  %loadMem_42c3ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %1753 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1754 = getelementptr inbounds %struct.GPR, %struct.GPR* %1753, i32 0, i32 33
  %1755 = getelementptr inbounds %struct.Reg, %struct.Reg* %1754, i32 0, i32 0
  %PC.i529 = bitcast %union.anon* %1755 to i64*
  %1756 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1757 = getelementptr inbounds %struct.GPR, %struct.GPR* %1756, i32 0, i32 5
  %1758 = getelementptr inbounds %struct.Reg, %struct.Reg* %1757, i32 0, i32 0
  %RCX.i530 = bitcast %union.anon* %1758 to i64*
  %1759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1760 = getelementptr inbounds %struct.GPR, %struct.GPR* %1759, i32 0, i32 15
  %1761 = getelementptr inbounds %struct.Reg, %struct.Reg* %1760, i32 0, i32 0
  %RBP.i531 = bitcast %union.anon* %1761 to i64*
  %1762 = load i64, i64* %RBP.i531
  %1763 = sub i64 %1762, 60
  %1764 = load i64, i64* %PC.i529
  %1765 = add i64 %1764, 4
  store i64 %1765, i64* %PC.i529
  %1766 = inttoptr i64 %1763 to i32*
  %1767 = load i32, i32* %1766
  %1768 = sext i32 %1767 to i64
  store i64 %1768, i64* %RCX.i530, align 8
  store %struct.Memory* %loadMem_42c3ba, %struct.Memory** %MEMORY
  %loadMem_42c3be = load %struct.Memory*, %struct.Memory** %MEMORY
  %1769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1770 = getelementptr inbounds %struct.GPR, %struct.GPR* %1769, i32 0, i32 33
  %1771 = getelementptr inbounds %struct.Reg, %struct.Reg* %1770, i32 0, i32 0
  %PC.i526 = bitcast %union.anon* %1771 to i64*
  %1772 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1773 = getelementptr inbounds %struct.GPR, %struct.GPR* %1772, i32 0, i32 1
  %1774 = getelementptr inbounds %struct.Reg, %struct.Reg* %1773, i32 0, i32 0
  %RAX.i527 = bitcast %union.anon* %1774 to i64*
  %1775 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1776 = getelementptr inbounds %struct.GPR, %struct.GPR* %1775, i32 0, i32 5
  %1777 = getelementptr inbounds %struct.Reg, %struct.Reg* %1776, i32 0, i32 0
  %RCX.i528 = bitcast %union.anon* %1777 to i64*
  %1778 = load i64, i64* %RAX.i527
  %1779 = load i64, i64* %RCX.i528
  %1780 = mul i64 %1779, 8
  %1781 = add i64 %1780, %1778
  %1782 = load i64, i64* %PC.i526
  %1783 = add i64 %1782, 4
  store i64 %1783, i64* %PC.i526
  %1784 = inttoptr i64 %1781 to i64*
  %1785 = load i64, i64* %1784
  store i64 %1785, i64* %RAX.i527, align 8
  store %struct.Memory* %loadMem_42c3be, %struct.Memory** %MEMORY
  %loadMem_42c3c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1787 = getelementptr inbounds %struct.GPR, %struct.GPR* %1786, i32 0, i32 33
  %1788 = getelementptr inbounds %struct.Reg, %struct.Reg* %1787, i32 0, i32 0
  %PC.i523 = bitcast %union.anon* %1788 to i64*
  %1789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1790 = getelementptr inbounds %struct.GPR, %struct.GPR* %1789, i32 0, i32 5
  %1791 = getelementptr inbounds %struct.Reg, %struct.Reg* %1790, i32 0, i32 0
  %RCX.i524 = bitcast %union.anon* %1791 to i64*
  %1792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1793 = getelementptr inbounds %struct.GPR, %struct.GPR* %1792, i32 0, i32 15
  %1794 = getelementptr inbounds %struct.Reg, %struct.Reg* %1793, i32 0, i32 0
  %RBP.i525 = bitcast %union.anon* %1794 to i64*
  %1795 = load i64, i64* %RBP.i525
  %1796 = sub i64 %1795, 40
  %1797 = load i64, i64* %PC.i523
  %1798 = add i64 %1797, 4
  store i64 %1798, i64* %PC.i523
  %1799 = inttoptr i64 %1796 to i32*
  %1800 = load i32, i32* %1799
  %1801 = sext i32 %1800 to i64
  store i64 %1801, i64* %RCX.i524, align 8
  store %struct.Memory* %loadMem_42c3c2, %struct.Memory** %MEMORY
  %loadMem_42c3c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1802 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1803 = getelementptr inbounds %struct.GPR, %struct.GPR* %1802, i32 0, i32 33
  %1804 = getelementptr inbounds %struct.Reg, %struct.Reg* %1803, i32 0, i32 0
  %PC.i519 = bitcast %union.anon* %1804 to i64*
  %1805 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1806 = getelementptr inbounds %struct.GPR, %struct.GPR* %1805, i32 0, i32 1
  %1807 = getelementptr inbounds %struct.Reg, %struct.Reg* %1806, i32 0, i32 0
  %RAX.i520 = bitcast %union.anon* %1807 to i64*
  %1808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1809 = getelementptr inbounds %struct.GPR, %struct.GPR* %1808, i32 0, i32 5
  %1810 = getelementptr inbounds %struct.Reg, %struct.Reg* %1809, i32 0, i32 0
  %RCX.i521 = bitcast %union.anon* %1810 to i64*
  %1811 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1812 = getelementptr inbounds %struct.GPR, %struct.GPR* %1811, i32 0, i32 7
  %1813 = getelementptr inbounds %struct.Reg, %struct.Reg* %1812, i32 0, i32 0
  %RDX.i522 = bitcast %union.anon* %1813 to i64*
  %1814 = load i64, i64* %RAX.i520
  %1815 = load i64, i64* %RCX.i521
  %1816 = add i64 %1815, %1814
  %1817 = load i64, i64* %PC.i519
  %1818 = add i64 %1817, 4
  store i64 %1818, i64* %PC.i519
  %1819 = inttoptr i64 %1816 to i8*
  %1820 = load i8, i8* %1819
  %1821 = sext i8 %1820 to i64
  %1822 = and i64 %1821, 4294967295
  store i64 %1822, i64* %RDX.i522, align 8
  store %struct.Memory* %loadMem_42c3c6, %struct.Memory** %MEMORY
  %loadMem_42c3ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %1823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1824 = getelementptr inbounds %struct.GPR, %struct.GPR* %1823, i32 0, i32 33
  %1825 = getelementptr inbounds %struct.Reg, %struct.Reg* %1824, i32 0, i32 0
  %PC.i517 = bitcast %union.anon* %1825 to i64*
  %1826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1827 = getelementptr inbounds %struct.GPR, %struct.GPR* %1826, i32 0, i32 7
  %1828 = getelementptr inbounds %struct.Reg, %struct.Reg* %1827, i32 0, i32 0
  %EDX.i518 = bitcast %union.anon* %1828 to i32*
  %1829 = load i32, i32* %EDX.i518
  %1830 = zext i32 %1829 to i64
  %1831 = load i64, i64* %PC.i517
  %1832 = add i64 %1831, 3
  store i64 %1832, i64* %PC.i517
  %1833 = sub i32 %1829, 45
  %1834 = icmp ult i32 %1829, 45
  %1835 = zext i1 %1834 to i8
  %1836 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1835, i8* %1836, align 1
  %1837 = and i32 %1833, 255
  %1838 = call i32 @llvm.ctpop.i32(i32 %1837)
  %1839 = trunc i32 %1838 to i8
  %1840 = and i8 %1839, 1
  %1841 = xor i8 %1840, 1
  %1842 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1841, i8* %1842, align 1
  %1843 = xor i64 45, %1830
  %1844 = trunc i64 %1843 to i32
  %1845 = xor i32 %1844, %1833
  %1846 = lshr i32 %1845, 4
  %1847 = trunc i32 %1846 to i8
  %1848 = and i8 %1847, 1
  %1849 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1848, i8* %1849, align 1
  %1850 = icmp eq i32 %1833, 0
  %1851 = zext i1 %1850 to i8
  %1852 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1851, i8* %1852, align 1
  %1853 = lshr i32 %1833, 31
  %1854 = trunc i32 %1853 to i8
  %1855 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1854, i8* %1855, align 1
  %1856 = lshr i32 %1829, 31
  %1857 = xor i32 %1853, %1856
  %1858 = add i32 %1857, %1856
  %1859 = icmp eq i32 %1858, 2
  %1860 = zext i1 %1859 to i8
  %1861 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1860, i8* %1861, align 1
  store %struct.Memory* %loadMem_42c3ca, %struct.Memory** %MEMORY
  %loadMem_42c3cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1862 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1863 = getelementptr inbounds %struct.GPR, %struct.GPR* %1862, i32 0, i32 33
  %1864 = getelementptr inbounds %struct.Reg, %struct.Reg* %1863, i32 0, i32 0
  %PC.i516 = bitcast %union.anon* %1864 to i64*
  %1865 = load i64, i64* %PC.i516
  %1866 = add i64 %1865, 35
  %1867 = load i64, i64* %PC.i516
  %1868 = add i64 %1867, 6
  %1869 = load i64, i64* %PC.i516
  %1870 = add i64 %1869, 6
  store i64 %1870, i64* %PC.i516
  %1871 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1872 = load i8, i8* %1871, align 1
  store i8 %1872, i8* %BRANCH_TAKEN, align 1
  %1873 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1874 = icmp ne i8 %1872, 0
  %1875 = select i1 %1874, i64 %1866, i64 %1868
  store i64 %1875, i64* %1873, align 8
  store %struct.Memory* %loadMem_42c3cd, %struct.Memory** %MEMORY
  %loadBr_42c3cd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42c3cd = icmp eq i8 %loadBr_42c3cd, 1
  br i1 %cmpBr_42c3cd, label %block_.L_42c3f0, label %block_42c3d3

block_42c3d3:                                     ; preds = %block_42c3b6
  %loadMem_42c3d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1876 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1877 = getelementptr inbounds %struct.GPR, %struct.GPR* %1876, i32 0, i32 33
  %1878 = getelementptr inbounds %struct.Reg, %struct.Reg* %1877, i32 0, i32 0
  %PC.i513 = bitcast %union.anon* %1878 to i64*
  %1879 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1880 = getelementptr inbounds %struct.GPR, %struct.GPR* %1879, i32 0, i32 1
  %1881 = getelementptr inbounds %struct.Reg, %struct.Reg* %1880, i32 0, i32 0
  %RAX.i514 = bitcast %union.anon* %1881 to i64*
  %1882 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1883 = getelementptr inbounds %struct.GPR, %struct.GPR* %1882, i32 0, i32 15
  %1884 = getelementptr inbounds %struct.Reg, %struct.Reg* %1883, i32 0, i32 0
  %RBP.i515 = bitcast %union.anon* %1884 to i64*
  %1885 = load i64, i64* %RBP.i515
  %1886 = sub i64 %1885, 16
  %1887 = load i64, i64* %PC.i513
  %1888 = add i64 %1887, 4
  store i64 %1888, i64* %PC.i513
  %1889 = inttoptr i64 %1886 to i64*
  %1890 = load i64, i64* %1889
  store i64 %1890, i64* %RAX.i514, align 8
  store %struct.Memory* %loadMem_42c3d3, %struct.Memory** %MEMORY
  %loadMem_42c3d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1891 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1892 = getelementptr inbounds %struct.GPR, %struct.GPR* %1891, i32 0, i32 33
  %1893 = getelementptr inbounds %struct.Reg, %struct.Reg* %1892, i32 0, i32 0
  %PC.i510 = bitcast %union.anon* %1893 to i64*
  %1894 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1895 = getelementptr inbounds %struct.GPR, %struct.GPR* %1894, i32 0, i32 5
  %1896 = getelementptr inbounds %struct.Reg, %struct.Reg* %1895, i32 0, i32 0
  %RCX.i511 = bitcast %union.anon* %1896 to i64*
  %1897 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1898 = getelementptr inbounds %struct.GPR, %struct.GPR* %1897, i32 0, i32 15
  %1899 = getelementptr inbounds %struct.Reg, %struct.Reg* %1898, i32 0, i32 0
  %RBP.i512 = bitcast %union.anon* %1899 to i64*
  %1900 = load i64, i64* %RBP.i512
  %1901 = sub i64 %1900, 60
  %1902 = load i64, i64* %PC.i510
  %1903 = add i64 %1902, 4
  store i64 %1903, i64* %PC.i510
  %1904 = inttoptr i64 %1901 to i32*
  %1905 = load i32, i32* %1904
  %1906 = sext i32 %1905 to i64
  store i64 %1906, i64* %RCX.i511, align 8
  store %struct.Memory* %loadMem_42c3d7, %struct.Memory** %MEMORY
  %loadMem_42c3db = load %struct.Memory*, %struct.Memory** %MEMORY
  %1907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1908 = getelementptr inbounds %struct.GPR, %struct.GPR* %1907, i32 0, i32 33
  %1909 = getelementptr inbounds %struct.Reg, %struct.Reg* %1908, i32 0, i32 0
  %PC.i507 = bitcast %union.anon* %1909 to i64*
  %1910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1911 = getelementptr inbounds %struct.GPR, %struct.GPR* %1910, i32 0, i32 1
  %1912 = getelementptr inbounds %struct.Reg, %struct.Reg* %1911, i32 0, i32 0
  %RAX.i508 = bitcast %union.anon* %1912 to i64*
  %1913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1914 = getelementptr inbounds %struct.GPR, %struct.GPR* %1913, i32 0, i32 5
  %1915 = getelementptr inbounds %struct.Reg, %struct.Reg* %1914, i32 0, i32 0
  %RCX.i509 = bitcast %union.anon* %1915 to i64*
  %1916 = load i64, i64* %RAX.i508
  %1917 = load i64, i64* %RCX.i509
  %1918 = mul i64 %1917, 8
  %1919 = add i64 %1918, %1916
  %1920 = load i64, i64* %PC.i507
  %1921 = add i64 %1920, 4
  store i64 %1921, i64* %PC.i507
  %1922 = inttoptr i64 %1919 to i64*
  %1923 = load i64, i64* %1922
  store i64 %1923, i64* %RAX.i508, align 8
  store %struct.Memory* %loadMem_42c3db, %struct.Memory** %MEMORY
  %loadMem_42c3df = load %struct.Memory*, %struct.Memory** %MEMORY
  %1924 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1925 = getelementptr inbounds %struct.GPR, %struct.GPR* %1924, i32 0, i32 33
  %1926 = getelementptr inbounds %struct.Reg, %struct.Reg* %1925, i32 0, i32 0
  %PC.i504 = bitcast %union.anon* %1926 to i64*
  %1927 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1928 = getelementptr inbounds %struct.GPR, %struct.GPR* %1927, i32 0, i32 5
  %1929 = getelementptr inbounds %struct.Reg, %struct.Reg* %1928, i32 0, i32 0
  %RCX.i505 = bitcast %union.anon* %1929 to i64*
  %1930 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1931 = getelementptr inbounds %struct.GPR, %struct.GPR* %1930, i32 0, i32 15
  %1932 = getelementptr inbounds %struct.Reg, %struct.Reg* %1931, i32 0, i32 0
  %RBP.i506 = bitcast %union.anon* %1932 to i64*
  %1933 = load i64, i64* %RBP.i506
  %1934 = sub i64 %1933, 40
  %1935 = load i64, i64* %PC.i504
  %1936 = add i64 %1935, 4
  store i64 %1936, i64* %PC.i504
  %1937 = inttoptr i64 %1934 to i32*
  %1938 = load i32, i32* %1937
  %1939 = sext i32 %1938 to i64
  store i64 %1939, i64* %RCX.i505, align 8
  store %struct.Memory* %loadMem_42c3df, %struct.Memory** %MEMORY
  %loadMem_42c3e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1940 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1941 = getelementptr inbounds %struct.GPR, %struct.GPR* %1940, i32 0, i32 33
  %1942 = getelementptr inbounds %struct.Reg, %struct.Reg* %1941, i32 0, i32 0
  %PC.i500 = bitcast %union.anon* %1942 to i64*
  %1943 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1944 = getelementptr inbounds %struct.GPR, %struct.GPR* %1943, i32 0, i32 1
  %1945 = getelementptr inbounds %struct.Reg, %struct.Reg* %1944, i32 0, i32 0
  %RAX.i501 = bitcast %union.anon* %1945 to i64*
  %1946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1947 = getelementptr inbounds %struct.GPR, %struct.GPR* %1946, i32 0, i32 5
  %1948 = getelementptr inbounds %struct.Reg, %struct.Reg* %1947, i32 0, i32 0
  %RCX.i502 = bitcast %union.anon* %1948 to i64*
  %1949 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1950 = getelementptr inbounds %struct.GPR, %struct.GPR* %1949, i32 0, i32 7
  %1951 = getelementptr inbounds %struct.Reg, %struct.Reg* %1950, i32 0, i32 0
  %RDX.i503 = bitcast %union.anon* %1951 to i64*
  %1952 = load i64, i64* %RAX.i501
  %1953 = load i64, i64* %RCX.i502
  %1954 = add i64 %1953, %1952
  %1955 = load i64, i64* %PC.i500
  %1956 = add i64 %1955, 4
  store i64 %1956, i64* %PC.i500
  %1957 = inttoptr i64 %1954 to i8*
  %1958 = load i8, i8* %1957
  %1959 = sext i8 %1958 to i64
  %1960 = and i64 %1959, 4294967295
  store i64 %1960, i64* %RDX.i503, align 8
  store %struct.Memory* %loadMem_42c3e3, %struct.Memory** %MEMORY
  %loadMem_42c3e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1961 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1962 = getelementptr inbounds %struct.GPR, %struct.GPR* %1961, i32 0, i32 33
  %1963 = getelementptr inbounds %struct.Reg, %struct.Reg* %1962, i32 0, i32 0
  %PC.i498 = bitcast %union.anon* %1963 to i64*
  %1964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1965 = getelementptr inbounds %struct.GPR, %struct.GPR* %1964, i32 0, i32 7
  %1966 = getelementptr inbounds %struct.Reg, %struct.Reg* %1965, i32 0, i32 0
  %EDX.i499 = bitcast %union.anon* %1966 to i32*
  %1967 = load i32, i32* %EDX.i499
  %1968 = zext i32 %1967 to i64
  %1969 = load i64, i64* %PC.i498
  %1970 = add i64 %1969, 3
  store i64 %1970, i64* %PC.i498
  %1971 = sub i32 %1967, 126
  %1972 = icmp ult i32 %1967, 126
  %1973 = zext i1 %1972 to i8
  %1974 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1973, i8* %1974, align 1
  %1975 = and i32 %1971, 255
  %1976 = call i32 @llvm.ctpop.i32(i32 %1975)
  %1977 = trunc i32 %1976 to i8
  %1978 = and i8 %1977, 1
  %1979 = xor i8 %1978, 1
  %1980 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1979, i8* %1980, align 1
  %1981 = xor i64 126, %1968
  %1982 = trunc i64 %1981 to i32
  %1983 = xor i32 %1982, %1971
  %1984 = lshr i32 %1983, 4
  %1985 = trunc i32 %1984 to i8
  %1986 = and i8 %1985, 1
  %1987 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1986, i8* %1987, align 1
  %1988 = icmp eq i32 %1971, 0
  %1989 = zext i1 %1988 to i8
  %1990 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1989, i8* %1990, align 1
  %1991 = lshr i32 %1971, 31
  %1992 = trunc i32 %1991 to i8
  %1993 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1992, i8* %1993, align 1
  %1994 = lshr i32 %1967, 31
  %1995 = xor i32 %1991, %1994
  %1996 = add i32 %1995, %1994
  %1997 = icmp eq i32 %1996, 2
  %1998 = zext i1 %1997 to i8
  %1999 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1998, i8* %1999, align 1
  store %struct.Memory* %loadMem_42c3e7, %struct.Memory** %MEMORY
  %loadMem_42c3ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %2000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2001 = getelementptr inbounds %struct.GPR, %struct.GPR* %2000, i32 0, i32 33
  %2002 = getelementptr inbounds %struct.Reg, %struct.Reg* %2001, i32 0, i32 0
  %PC.i497 = bitcast %union.anon* %2002 to i64*
  %2003 = load i64, i64* %PC.i497
  %2004 = add i64 %2003, 18
  %2005 = load i64, i64* %PC.i497
  %2006 = add i64 %2005, 6
  %2007 = load i64, i64* %PC.i497
  %2008 = add i64 %2007, 6
  store i64 %2008, i64* %PC.i497
  %2009 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2010 = load i8, i8* %2009, align 1
  %2011 = icmp eq i8 %2010, 0
  %2012 = zext i1 %2011 to i8
  store i8 %2012, i8* %BRANCH_TAKEN, align 1
  %2013 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2014 = select i1 %2011, i64 %2004, i64 %2006
  store i64 %2014, i64* %2013, align 8
  store %struct.Memory* %loadMem_42c3ea, %struct.Memory** %MEMORY
  %loadBr_42c3ea = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42c3ea = icmp eq i8 %loadBr_42c3ea, 1
  br i1 %cmpBr_42c3ea, label %block_.L_42c3fc, label %block_.L_42c3f0

block_.L_42c3f0:                                  ; preds = %block_42c3d3, %block_42c3b6, %block_42c399, %block_42c37c, %block_.L_42c35f
  %loadMem_42c3f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2015 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2016 = getelementptr inbounds %struct.GPR, %struct.GPR* %2015, i32 0, i32 33
  %2017 = getelementptr inbounds %struct.Reg, %struct.Reg* %2016, i32 0, i32 0
  %PC.i495 = bitcast %union.anon* %2017 to i64*
  %2018 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2019 = getelementptr inbounds %struct.GPR, %struct.GPR* %2018, i32 0, i32 15
  %2020 = getelementptr inbounds %struct.Reg, %struct.Reg* %2019, i32 0, i32 0
  %RBP.i496 = bitcast %union.anon* %2020 to i64*
  %2021 = load i64, i64* %RBP.i496
  %2022 = sub i64 %2021, 4
  %2023 = load i64, i64* %PC.i495
  %2024 = add i64 %2023, 7
  store i64 %2024, i64* %PC.i495
  %2025 = inttoptr i64 %2022 to i32*
  store i32 0, i32* %2025
  store %struct.Memory* %loadMem_42c3f0, %struct.Memory** %MEMORY
  %loadMem_42c3f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2027 = getelementptr inbounds %struct.GPR, %struct.GPR* %2026, i32 0, i32 33
  %2028 = getelementptr inbounds %struct.Reg, %struct.Reg* %2027, i32 0, i32 0
  %PC.i494 = bitcast %union.anon* %2028 to i64*
  %2029 = load i64, i64* %PC.i494
  %2030 = add i64 %2029, 779
  %2031 = load i64, i64* %PC.i494
  %2032 = add i64 %2031, 5
  store i64 %2032, i64* %PC.i494
  %2033 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2030, i64* %2033, align 8
  store %struct.Memory* %loadMem_42c3f7, %struct.Memory** %MEMORY
  br label %block_.L_42c702

block_.L_42c3fc:                                  ; preds = %block_42c3d3
  %loadMem_42c3fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2034 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2035 = getelementptr inbounds %struct.GPR, %struct.GPR* %2034, i32 0, i32 33
  %2036 = getelementptr inbounds %struct.Reg, %struct.Reg* %2035, i32 0, i32 0
  %PC.i491 = bitcast %union.anon* %2036 to i64*
  %2037 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2038 = getelementptr inbounds %struct.GPR, %struct.GPR* %2037, i32 0, i32 1
  %2039 = getelementptr inbounds %struct.Reg, %struct.Reg* %2038, i32 0, i32 0
  %RAX.i492 = bitcast %union.anon* %2039 to i64*
  %2040 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2041 = getelementptr inbounds %struct.GPR, %struct.GPR* %2040, i32 0, i32 15
  %2042 = getelementptr inbounds %struct.Reg, %struct.Reg* %2041, i32 0, i32 0
  %RBP.i493 = bitcast %union.anon* %2042 to i64*
  %2043 = load i64, i64* %RBP.i493
  %2044 = sub i64 %2043, 48
  %2045 = load i64, i64* %PC.i491
  %2046 = add i64 %2045, 4
  store i64 %2046, i64* %PC.i491
  %2047 = inttoptr i64 %2044 to i64*
  %2048 = load i64, i64* %2047
  store i64 %2048, i64* %RAX.i492, align 8
  store %struct.Memory* %loadMem_42c3fc, %struct.Memory** %MEMORY
  %loadMem_42c400 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2049 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2050 = getelementptr inbounds %struct.GPR, %struct.GPR* %2049, i32 0, i32 33
  %2051 = getelementptr inbounds %struct.Reg, %struct.Reg* %2050, i32 0, i32 0
  %PC.i488 = bitcast %union.anon* %2051 to i64*
  %2052 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2053 = getelementptr inbounds %struct.GPR, %struct.GPR* %2052, i32 0, i32 5
  %2054 = getelementptr inbounds %struct.Reg, %struct.Reg* %2053, i32 0, i32 0
  %RCX.i489 = bitcast %union.anon* %2054 to i64*
  %2055 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2056 = getelementptr inbounds %struct.GPR, %struct.GPR* %2055, i32 0, i32 15
  %2057 = getelementptr inbounds %struct.Reg, %struct.Reg* %2056, i32 0, i32 0
  %RBP.i490 = bitcast %union.anon* %2057 to i64*
  %2058 = load i64, i64* %RBP.i490
  %2059 = sub i64 %2058, 60
  %2060 = load i64, i64* %PC.i488
  %2061 = add i64 %2060, 4
  store i64 %2061, i64* %PC.i488
  %2062 = inttoptr i64 %2059 to i32*
  %2063 = load i32, i32* %2062
  %2064 = sext i32 %2063 to i64
  store i64 %2064, i64* %RCX.i489, align 8
  store %struct.Memory* %loadMem_42c400, %struct.Memory** %MEMORY
  %loadMem_42c404 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2065 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2066 = getelementptr inbounds %struct.GPR, %struct.GPR* %2065, i32 0, i32 33
  %2067 = getelementptr inbounds %struct.Reg, %struct.Reg* %2066, i32 0, i32 0
  %PC.i484 = bitcast %union.anon* %2067 to i64*
  %2068 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2069 = getelementptr inbounds %struct.GPR, %struct.GPR* %2068, i32 0, i32 1
  %2070 = getelementptr inbounds %struct.Reg, %struct.Reg* %2069, i32 0, i32 0
  %RAX.i485 = bitcast %union.anon* %2070 to i64*
  %2071 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2072 = getelementptr inbounds %struct.GPR, %struct.GPR* %2071, i32 0, i32 5
  %2073 = getelementptr inbounds %struct.Reg, %struct.Reg* %2072, i32 0, i32 0
  %RCX.i486 = bitcast %union.anon* %2073 to i64*
  %2074 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2075 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2074, i64 0, i64 0
  %YMM0.i487 = bitcast %union.VectorReg* %2075 to %"class.std::bitset"*
  %2076 = bitcast %"class.std::bitset"* %YMM0.i487 to i8*
  %2077 = load i64, i64* %RAX.i485
  %2078 = load i64, i64* %RCX.i486
  %2079 = mul i64 %2078, 4
  %2080 = add i64 %2079, %2077
  %2081 = load i64, i64* %PC.i484
  %2082 = add i64 %2081, 5
  store i64 %2082, i64* %PC.i484
  %2083 = inttoptr i64 %2080 to float*
  %2084 = load float, float* %2083
  %2085 = bitcast i8* %2076 to float*
  store float %2084, float* %2085, align 1
  %2086 = getelementptr inbounds i8, i8* %2076, i64 4
  %2087 = bitcast i8* %2086 to float*
  store float 0.000000e+00, float* %2087, align 1
  %2088 = getelementptr inbounds i8, i8* %2076, i64 8
  %2089 = bitcast i8* %2088 to float*
  store float 0.000000e+00, float* %2089, align 1
  %2090 = getelementptr inbounds i8, i8* %2076, i64 12
  %2091 = bitcast i8* %2090 to float*
  store float 0.000000e+00, float* %2091, align 1
  store %struct.Memory* %loadMem_42c404, %struct.Memory** %MEMORY
  %loadMem_42c409 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2092 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2093 = getelementptr inbounds %struct.GPR, %struct.GPR* %2092, i32 0, i32 33
  %2094 = getelementptr inbounds %struct.Reg, %struct.Reg* %2093, i32 0, i32 0
  %PC.i481 = bitcast %union.anon* %2094 to i64*
  %2095 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2096 = getelementptr inbounds %struct.GPR, %struct.GPR* %2095, i32 0, i32 1
  %2097 = getelementptr inbounds %struct.Reg, %struct.Reg* %2096, i32 0, i32 0
  %RAX.i482 = bitcast %union.anon* %2097 to i64*
  %2098 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2099 = getelementptr inbounds %struct.GPR, %struct.GPR* %2098, i32 0, i32 15
  %2100 = getelementptr inbounds %struct.Reg, %struct.Reg* %2099, i32 0, i32 0
  %RBP.i483 = bitcast %union.anon* %2100 to i64*
  %2101 = load i64, i64* %RBP.i483
  %2102 = sub i64 %2101, 56
  %2103 = load i64, i64* %PC.i481
  %2104 = add i64 %2103, 4
  store i64 %2104, i64* %PC.i481
  %2105 = inttoptr i64 %2102 to i64*
  %2106 = load i64, i64* %2105
  store i64 %2106, i64* %RAX.i482, align 8
  store %struct.Memory* %loadMem_42c409, %struct.Memory** %MEMORY
  %loadMem_42c40d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2108 = getelementptr inbounds %struct.GPR, %struct.GPR* %2107, i32 0, i32 33
  %2109 = getelementptr inbounds %struct.Reg, %struct.Reg* %2108, i32 0, i32 0
  %PC.i478 = bitcast %union.anon* %2109 to i64*
  %2110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2111 = getelementptr inbounds %struct.GPR, %struct.GPR* %2110, i32 0, i32 1
  %2112 = getelementptr inbounds %struct.Reg, %struct.Reg* %2111, i32 0, i32 0
  %RAX.i479 = bitcast %union.anon* %2112 to i64*
  %2113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2114 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2113, i64 0, i64 0
  %YMM0.i480 = bitcast %union.VectorReg* %2114 to %"class.std::bitset"*
  %2115 = bitcast %"class.std::bitset"* %YMM0.i480 to i8*
  %2116 = bitcast %"class.std::bitset"* %YMM0.i480 to i8*
  %2117 = load i64, i64* %RAX.i479
  %2118 = add i64 %2117, 4
  %2119 = load i64, i64* %PC.i478
  %2120 = add i64 %2119, 5
  store i64 %2120, i64* %PC.i478
  %2121 = bitcast i8* %2116 to <2 x float>*
  %2122 = load <2 x float>, <2 x float>* %2121, align 1
  %2123 = getelementptr inbounds i8, i8* %2116, i64 8
  %2124 = bitcast i8* %2123 to <2 x i32>*
  %2125 = load <2 x i32>, <2 x i32>* %2124, align 1
  %2126 = inttoptr i64 %2118 to float*
  %2127 = load float, float* %2126
  %2128 = extractelement <2 x float> %2122, i32 0
  %2129 = fadd float %2128, %2127
  %2130 = bitcast i8* %2115 to float*
  store float %2129, float* %2130, align 1
  %2131 = bitcast <2 x float> %2122 to <2 x i32>
  %2132 = extractelement <2 x i32> %2131, i32 1
  %2133 = getelementptr inbounds i8, i8* %2115, i64 4
  %2134 = bitcast i8* %2133 to i32*
  store i32 %2132, i32* %2134, align 1
  %2135 = extractelement <2 x i32> %2125, i32 0
  %2136 = getelementptr inbounds i8, i8* %2115, i64 8
  %2137 = bitcast i8* %2136 to i32*
  store i32 %2135, i32* %2137, align 1
  %2138 = extractelement <2 x i32> %2125, i32 1
  %2139 = getelementptr inbounds i8, i8* %2115, i64 12
  %2140 = bitcast i8* %2139 to i32*
  store i32 %2138, i32* %2140, align 1
  store %struct.Memory* %loadMem_42c40d, %struct.Memory** %MEMORY
  %loadMem_42c412 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2142 = getelementptr inbounds %struct.GPR, %struct.GPR* %2141, i32 0, i32 33
  %2143 = getelementptr inbounds %struct.Reg, %struct.Reg* %2142, i32 0, i32 0
  %PC.i475 = bitcast %union.anon* %2143 to i64*
  %2144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2145 = getelementptr inbounds %struct.GPR, %struct.GPR* %2144, i32 0, i32 1
  %2146 = getelementptr inbounds %struct.Reg, %struct.Reg* %2145, i32 0, i32 0
  %RAX.i476 = bitcast %union.anon* %2146 to i64*
  %2147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2148 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2147, i64 0, i64 0
  %XMM0.i477 = bitcast %union.VectorReg* %2148 to %union.vec128_t*
  %2149 = load i64, i64* %RAX.i476
  %2150 = add i64 %2149, 4
  %2151 = bitcast %union.vec128_t* %XMM0.i477 to i8*
  %2152 = load i64, i64* %PC.i475
  %2153 = add i64 %2152, 5
  store i64 %2153, i64* %PC.i475
  %2154 = bitcast i8* %2151 to <2 x float>*
  %2155 = load <2 x float>, <2 x float>* %2154, align 1
  %2156 = extractelement <2 x float> %2155, i32 0
  %2157 = inttoptr i64 %2150 to float*
  store float %2156, float* %2157
  store %struct.Memory* %loadMem_42c412, %struct.Memory** %MEMORY
  %loadMem_42c417 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2159 = getelementptr inbounds %struct.GPR, %struct.GPR* %2158, i32 0, i32 33
  %2160 = getelementptr inbounds %struct.Reg, %struct.Reg* %2159, i32 0, i32 0
  %PC.i472 = bitcast %union.anon* %2160 to i64*
  %2161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2162 = getelementptr inbounds %struct.GPR, %struct.GPR* %2161, i32 0, i32 1
  %2163 = getelementptr inbounds %struct.Reg, %struct.Reg* %2162, i32 0, i32 0
  %RAX.i473 = bitcast %union.anon* %2163 to i64*
  %2164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2165 = getelementptr inbounds %struct.GPR, %struct.GPR* %2164, i32 0, i32 15
  %2166 = getelementptr inbounds %struct.Reg, %struct.Reg* %2165, i32 0, i32 0
  %RBP.i474 = bitcast %union.anon* %2166 to i64*
  %2167 = load i64, i64* %RBP.i474
  %2168 = sub i64 %2167, 32
  %2169 = load i64, i64* %PC.i472
  %2170 = add i64 %2169, 4
  store i64 %2170, i64* %PC.i472
  %2171 = inttoptr i64 %2168 to i64*
  %2172 = load i64, i64* %2171
  store i64 %2172, i64* %RAX.i473, align 8
  store %struct.Memory* %loadMem_42c417, %struct.Memory** %MEMORY
  %loadMem_42c41b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2174 = getelementptr inbounds %struct.GPR, %struct.GPR* %2173, i32 0, i32 33
  %2175 = getelementptr inbounds %struct.Reg, %struct.Reg* %2174, i32 0, i32 0
  %PC.i469 = bitcast %union.anon* %2175 to i64*
  %2176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2177 = getelementptr inbounds %struct.GPR, %struct.GPR* %2176, i32 0, i32 5
  %2178 = getelementptr inbounds %struct.Reg, %struct.Reg* %2177, i32 0, i32 0
  %RCX.i470 = bitcast %union.anon* %2178 to i64*
  %2179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2180 = getelementptr inbounds %struct.GPR, %struct.GPR* %2179, i32 0, i32 15
  %2181 = getelementptr inbounds %struct.Reg, %struct.Reg* %2180, i32 0, i32 0
  %RBP.i471 = bitcast %union.anon* %2181 to i64*
  %2182 = load i64, i64* %RBP.i471
  %2183 = sub i64 %2182, 60
  %2184 = load i64, i64* %PC.i469
  %2185 = add i64 %2184, 4
  store i64 %2185, i64* %PC.i469
  %2186 = inttoptr i64 %2183 to i32*
  %2187 = load i32, i32* %2186
  %2188 = sext i32 %2187 to i64
  store i64 %2188, i64* %RCX.i470, align 8
  store %struct.Memory* %loadMem_42c41b, %struct.Memory** %MEMORY
  %loadMem_42c41f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2190 = getelementptr inbounds %struct.GPR, %struct.GPR* %2189, i32 0, i32 33
  %2191 = getelementptr inbounds %struct.Reg, %struct.Reg* %2190, i32 0, i32 0
  %PC.i465 = bitcast %union.anon* %2191 to i64*
  %2192 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2193 = getelementptr inbounds %struct.GPR, %struct.GPR* %2192, i32 0, i32 1
  %2194 = getelementptr inbounds %struct.Reg, %struct.Reg* %2193, i32 0, i32 0
  %RAX.i466 = bitcast %union.anon* %2194 to i64*
  %2195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2196 = getelementptr inbounds %struct.GPR, %struct.GPR* %2195, i32 0, i32 5
  %2197 = getelementptr inbounds %struct.Reg, %struct.Reg* %2196, i32 0, i32 0
  %RCX.i467 = bitcast %union.anon* %2197 to i64*
  %2198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2199 = getelementptr inbounds %struct.GPR, %struct.GPR* %2198, i32 0, i32 7
  %2200 = getelementptr inbounds %struct.Reg, %struct.Reg* %2199, i32 0, i32 0
  %RDX.i468 = bitcast %union.anon* %2200 to i64*
  %2201 = load i64, i64* %RAX.i466
  %2202 = load i64, i64* %RCX.i467
  %2203 = mul i64 %2202, 4
  %2204 = add i64 %2203, %2201
  %2205 = load i64, i64* %PC.i465
  %2206 = add i64 %2205, 3
  store i64 %2206, i64* %PC.i465
  %2207 = inttoptr i64 %2204 to i32*
  %2208 = load i32, i32* %2207
  %2209 = zext i32 %2208 to i64
  store i64 %2209, i64* %RDX.i468, align 8
  store %struct.Memory* %loadMem_42c41f, %struct.Memory** %MEMORY
  %loadMem_42c422 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2211 = getelementptr inbounds %struct.GPR, %struct.GPR* %2210, i32 0, i32 33
  %2212 = getelementptr inbounds %struct.Reg, %struct.Reg* %2211, i32 0, i32 0
  %PC.i463 = bitcast %union.anon* %2212 to i64*
  %2213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2214 = getelementptr inbounds %struct.GPR, %struct.GPR* %2213, i32 0, i32 7
  %2215 = getelementptr inbounds %struct.Reg, %struct.Reg* %2214, i32 0, i32 0
  %RDX.i464 = bitcast %union.anon* %2215 to i64*
  %2216 = load i64, i64* %RDX.i464
  %2217 = load i64, i64* %PC.i463
  %2218 = add i64 %2217, 3
  store i64 %2218, i64* %PC.i463
  %2219 = trunc i64 %2216 to i32
  %2220 = sub i32 %2219, 1
  %2221 = zext i32 %2220 to i64
  store i64 %2221, i64* %RDX.i464, align 8
  %2222 = icmp ult i32 %2219, 1
  %2223 = zext i1 %2222 to i8
  %2224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2223, i8* %2224, align 1
  %2225 = and i32 %2220, 255
  %2226 = call i32 @llvm.ctpop.i32(i32 %2225)
  %2227 = trunc i32 %2226 to i8
  %2228 = and i8 %2227, 1
  %2229 = xor i8 %2228, 1
  %2230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2229, i8* %2230, align 1
  %2231 = xor i64 1, %2216
  %2232 = trunc i64 %2231 to i32
  %2233 = xor i32 %2232, %2220
  %2234 = lshr i32 %2233, 4
  %2235 = trunc i32 %2234 to i8
  %2236 = and i8 %2235, 1
  %2237 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2236, i8* %2237, align 1
  %2238 = icmp eq i32 %2220, 0
  %2239 = zext i1 %2238 to i8
  %2240 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2239, i8* %2240, align 1
  %2241 = lshr i32 %2220, 31
  %2242 = trunc i32 %2241 to i8
  %2243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2242, i8* %2243, align 1
  %2244 = lshr i32 %2219, 31
  %2245 = xor i32 %2241, %2244
  %2246 = add i32 %2245, %2244
  %2247 = icmp eq i32 %2246, 2
  %2248 = zext i1 %2247 to i8
  %2249 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2248, i8* %2249, align 1
  store %struct.Memory* %loadMem_42c422, %struct.Memory** %MEMORY
  %loadMem_42c425 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2251 = getelementptr inbounds %struct.GPR, %struct.GPR* %2250, i32 0, i32 33
  %2252 = getelementptr inbounds %struct.Reg, %struct.Reg* %2251, i32 0, i32 0
  %PC.i460 = bitcast %union.anon* %2252 to i64*
  %2253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2254 = getelementptr inbounds %struct.GPR, %struct.GPR* %2253, i32 0, i32 7
  %2255 = getelementptr inbounds %struct.Reg, %struct.Reg* %2254, i32 0, i32 0
  %EDX.i461 = bitcast %union.anon* %2255 to i32*
  %2256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2257 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2256, i64 0, i64 0
  %YMM0.i462 = bitcast %union.VectorReg* %2257 to %"class.std::bitset"*
  %2258 = bitcast %"class.std::bitset"* %YMM0.i462 to i8*
  %2259 = load i32, i32* %EDX.i461
  %2260 = zext i32 %2259 to i64
  %2261 = load i64, i64* %PC.i460
  %2262 = add i64 %2261, 4
  store i64 %2262, i64* %PC.i460
  %2263 = bitcast i8* %2258 to <2 x i32>*
  %2264 = load <2 x i32>, <2 x i32>* %2263, align 1
  %2265 = getelementptr inbounds i8, i8* %2258, i64 8
  %2266 = bitcast i8* %2265 to <2 x i32>*
  %2267 = load <2 x i32>, <2 x i32>* %2266, align 1
  %2268 = sitofp i32 %2259 to float
  %2269 = bitcast i8* %2258 to float*
  store float %2268, float* %2269, align 1
  %2270 = extractelement <2 x i32> %2264, i32 1
  %2271 = getelementptr inbounds i8, i8* %2258, i64 4
  %2272 = bitcast i8* %2271 to i32*
  store i32 %2270, i32* %2272, align 1
  %2273 = extractelement <2 x i32> %2267, i32 0
  %2274 = bitcast i8* %2265 to i32*
  store i32 %2273, i32* %2274, align 1
  %2275 = extractelement <2 x i32> %2267, i32 1
  %2276 = getelementptr inbounds i8, i8* %2258, i64 12
  %2277 = bitcast i8* %2276 to i32*
  store i32 %2275, i32* %2277, align 1
  store %struct.Memory* %loadMem_42c425, %struct.Memory** %MEMORY
  %loadMem_42c429 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2279 = getelementptr inbounds %struct.GPR, %struct.GPR* %2278, i32 0, i32 33
  %2280 = getelementptr inbounds %struct.Reg, %struct.Reg* %2279, i32 0, i32 0
  %PC.i457 = bitcast %union.anon* %2280 to i64*
  %2281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2282 = getelementptr inbounds %struct.GPR, %struct.GPR* %2281, i32 0, i32 1
  %2283 = getelementptr inbounds %struct.Reg, %struct.Reg* %2282, i32 0, i32 0
  %RAX.i458 = bitcast %union.anon* %2283 to i64*
  %2284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2285 = getelementptr inbounds %struct.GPR, %struct.GPR* %2284, i32 0, i32 15
  %2286 = getelementptr inbounds %struct.Reg, %struct.Reg* %2285, i32 0, i32 0
  %RBP.i459 = bitcast %union.anon* %2286 to i64*
  %2287 = load i64, i64* %RBP.i459
  %2288 = sub i64 %2287, 48
  %2289 = load i64, i64* %PC.i457
  %2290 = add i64 %2289, 4
  store i64 %2290, i64* %PC.i457
  %2291 = inttoptr i64 %2288 to i64*
  %2292 = load i64, i64* %2291
  store i64 %2292, i64* %RAX.i458, align 8
  store %struct.Memory* %loadMem_42c429, %struct.Memory** %MEMORY
  %loadMem_42c42d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2294 = getelementptr inbounds %struct.GPR, %struct.GPR* %2293, i32 0, i32 33
  %2295 = getelementptr inbounds %struct.Reg, %struct.Reg* %2294, i32 0, i32 0
  %PC.i454 = bitcast %union.anon* %2295 to i64*
  %2296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2297 = getelementptr inbounds %struct.GPR, %struct.GPR* %2296, i32 0, i32 5
  %2298 = getelementptr inbounds %struct.Reg, %struct.Reg* %2297, i32 0, i32 0
  %RCX.i455 = bitcast %union.anon* %2298 to i64*
  %2299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2300 = getelementptr inbounds %struct.GPR, %struct.GPR* %2299, i32 0, i32 15
  %2301 = getelementptr inbounds %struct.Reg, %struct.Reg* %2300, i32 0, i32 0
  %RBP.i456 = bitcast %union.anon* %2301 to i64*
  %2302 = load i64, i64* %RBP.i456
  %2303 = sub i64 %2302, 60
  %2304 = load i64, i64* %PC.i454
  %2305 = add i64 %2304, 4
  store i64 %2305, i64* %PC.i454
  %2306 = inttoptr i64 %2303 to i32*
  %2307 = load i32, i32* %2306
  %2308 = sext i32 %2307 to i64
  store i64 %2308, i64* %RCX.i455, align 8
  store %struct.Memory* %loadMem_42c42d, %struct.Memory** %MEMORY
  %loadMem_42c431 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2310 = getelementptr inbounds %struct.GPR, %struct.GPR* %2309, i32 0, i32 33
  %2311 = getelementptr inbounds %struct.Reg, %struct.Reg* %2310, i32 0, i32 0
  %PC.i450 = bitcast %union.anon* %2311 to i64*
  %2312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2313 = getelementptr inbounds %struct.GPR, %struct.GPR* %2312, i32 0, i32 1
  %2314 = getelementptr inbounds %struct.Reg, %struct.Reg* %2313, i32 0, i32 0
  %RAX.i451 = bitcast %union.anon* %2314 to i64*
  %2315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2316 = getelementptr inbounds %struct.GPR, %struct.GPR* %2315, i32 0, i32 5
  %2317 = getelementptr inbounds %struct.Reg, %struct.Reg* %2316, i32 0, i32 0
  %RCX.i452 = bitcast %union.anon* %2317 to i64*
  %2318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2319 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2318, i64 0, i64 0
  %YMM0.i453 = bitcast %union.VectorReg* %2319 to %"class.std::bitset"*
  %2320 = bitcast %"class.std::bitset"* %YMM0.i453 to i8*
  %2321 = bitcast %"class.std::bitset"* %YMM0.i453 to i8*
  %2322 = load i64, i64* %RAX.i451
  %2323 = load i64, i64* %RCX.i452
  %2324 = mul i64 %2323, 4
  %2325 = add i64 %2324, %2322
  %2326 = load i64, i64* %PC.i450
  %2327 = add i64 %2326, 5
  store i64 %2327, i64* %PC.i450
  %2328 = bitcast i8* %2321 to <2 x float>*
  %2329 = load <2 x float>, <2 x float>* %2328, align 1
  %2330 = getelementptr inbounds i8, i8* %2321, i64 8
  %2331 = bitcast i8* %2330 to <2 x i32>*
  %2332 = load <2 x i32>, <2 x i32>* %2331, align 1
  %2333 = inttoptr i64 %2325 to float*
  %2334 = load float, float* %2333
  %2335 = extractelement <2 x float> %2329, i32 0
  %2336 = fmul float %2335, %2334
  %2337 = bitcast i8* %2320 to float*
  store float %2336, float* %2337, align 1
  %2338 = bitcast <2 x float> %2329 to <2 x i32>
  %2339 = extractelement <2 x i32> %2338, i32 1
  %2340 = getelementptr inbounds i8, i8* %2320, i64 4
  %2341 = bitcast i8* %2340 to i32*
  store i32 %2339, i32* %2341, align 1
  %2342 = extractelement <2 x i32> %2332, i32 0
  %2343 = getelementptr inbounds i8, i8* %2320, i64 8
  %2344 = bitcast i8* %2343 to i32*
  store i32 %2342, i32* %2344, align 1
  %2345 = extractelement <2 x i32> %2332, i32 1
  %2346 = getelementptr inbounds i8, i8* %2320, i64 12
  %2347 = bitcast i8* %2346 to i32*
  store i32 %2345, i32* %2347, align 1
  store %struct.Memory* %loadMem_42c431, %struct.Memory** %MEMORY
  %loadMem_42c436 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2349 = getelementptr inbounds %struct.GPR, %struct.GPR* %2348, i32 0, i32 33
  %2350 = getelementptr inbounds %struct.Reg, %struct.Reg* %2349, i32 0, i32 0
  %PC.i447 = bitcast %union.anon* %2350 to i64*
  %2351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2352 = getelementptr inbounds %struct.GPR, %struct.GPR* %2351, i32 0, i32 1
  %2353 = getelementptr inbounds %struct.Reg, %struct.Reg* %2352, i32 0, i32 0
  %RAX.i448 = bitcast %union.anon* %2353 to i64*
  %2354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2355 = getelementptr inbounds %struct.GPR, %struct.GPR* %2354, i32 0, i32 15
  %2356 = getelementptr inbounds %struct.Reg, %struct.Reg* %2355, i32 0, i32 0
  %RBP.i449 = bitcast %union.anon* %2356 to i64*
  %2357 = load i64, i64* %RBP.i449
  %2358 = sub i64 %2357, 56
  %2359 = load i64, i64* %PC.i447
  %2360 = add i64 %2359, 4
  store i64 %2360, i64* %PC.i447
  %2361 = inttoptr i64 %2358 to i64*
  %2362 = load i64, i64* %2361
  store i64 %2362, i64* %RAX.i448, align 8
  store %struct.Memory* %loadMem_42c436, %struct.Memory** %MEMORY
  %loadMem_42c43a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2364 = getelementptr inbounds %struct.GPR, %struct.GPR* %2363, i32 0, i32 33
  %2365 = getelementptr inbounds %struct.Reg, %struct.Reg* %2364, i32 0, i32 0
  %PC.i444 = bitcast %union.anon* %2365 to i64*
  %2366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2367 = getelementptr inbounds %struct.GPR, %struct.GPR* %2366, i32 0, i32 1
  %2368 = getelementptr inbounds %struct.Reg, %struct.Reg* %2367, i32 0, i32 0
  %RAX.i445 = bitcast %union.anon* %2368 to i64*
  %2369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2370 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2369, i64 0, i64 0
  %YMM0.i446 = bitcast %union.VectorReg* %2370 to %"class.std::bitset"*
  %2371 = bitcast %"class.std::bitset"* %YMM0.i446 to i8*
  %2372 = bitcast %"class.std::bitset"* %YMM0.i446 to i8*
  %2373 = load i64, i64* %RAX.i445
  %2374 = add i64 %2373, 16
  %2375 = load i64, i64* %PC.i444
  %2376 = add i64 %2375, 5
  store i64 %2376, i64* %PC.i444
  %2377 = bitcast i8* %2372 to <2 x float>*
  %2378 = load <2 x float>, <2 x float>* %2377, align 1
  %2379 = getelementptr inbounds i8, i8* %2372, i64 8
  %2380 = bitcast i8* %2379 to <2 x i32>*
  %2381 = load <2 x i32>, <2 x i32>* %2380, align 1
  %2382 = inttoptr i64 %2374 to float*
  %2383 = load float, float* %2382
  %2384 = extractelement <2 x float> %2378, i32 0
  %2385 = fadd float %2384, %2383
  %2386 = bitcast i8* %2371 to float*
  store float %2385, float* %2386, align 1
  %2387 = bitcast <2 x float> %2378 to <2 x i32>
  %2388 = extractelement <2 x i32> %2387, i32 1
  %2389 = getelementptr inbounds i8, i8* %2371, i64 4
  %2390 = bitcast i8* %2389 to i32*
  store i32 %2388, i32* %2390, align 1
  %2391 = extractelement <2 x i32> %2381, i32 0
  %2392 = getelementptr inbounds i8, i8* %2371, i64 8
  %2393 = bitcast i8* %2392 to i32*
  store i32 %2391, i32* %2393, align 1
  %2394 = extractelement <2 x i32> %2381, i32 1
  %2395 = getelementptr inbounds i8, i8* %2371, i64 12
  %2396 = bitcast i8* %2395 to i32*
  store i32 %2394, i32* %2396, align 1
  store %struct.Memory* %loadMem_42c43a, %struct.Memory** %MEMORY
  %loadMem_42c43f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2398 = getelementptr inbounds %struct.GPR, %struct.GPR* %2397, i32 0, i32 33
  %2399 = getelementptr inbounds %struct.Reg, %struct.Reg* %2398, i32 0, i32 0
  %PC.i441 = bitcast %union.anon* %2399 to i64*
  %2400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2401 = getelementptr inbounds %struct.GPR, %struct.GPR* %2400, i32 0, i32 1
  %2402 = getelementptr inbounds %struct.Reg, %struct.Reg* %2401, i32 0, i32 0
  %RAX.i442 = bitcast %union.anon* %2402 to i64*
  %2403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2404 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2403, i64 0, i64 0
  %XMM0.i443 = bitcast %union.VectorReg* %2404 to %union.vec128_t*
  %2405 = load i64, i64* %RAX.i442
  %2406 = add i64 %2405, 16
  %2407 = bitcast %union.vec128_t* %XMM0.i443 to i8*
  %2408 = load i64, i64* %PC.i441
  %2409 = add i64 %2408, 5
  store i64 %2409, i64* %PC.i441
  %2410 = bitcast i8* %2407 to <2 x float>*
  %2411 = load <2 x float>, <2 x float>* %2410, align 1
  %2412 = extractelement <2 x float> %2411, i32 0
  %2413 = inttoptr i64 %2406 to float*
  store float %2412, float* %2413
  store %struct.Memory* %loadMem_42c43f, %struct.Memory** %MEMORY
  %loadMem_42c444 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2415 = getelementptr inbounds %struct.GPR, %struct.GPR* %2414, i32 0, i32 33
  %2416 = getelementptr inbounds %struct.Reg, %struct.Reg* %2415, i32 0, i32 0
  %PC.i438 = bitcast %union.anon* %2416 to i64*
  %2417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2418 = getelementptr inbounds %struct.GPR, %struct.GPR* %2417, i32 0, i32 1
  %2419 = getelementptr inbounds %struct.Reg, %struct.Reg* %2418, i32 0, i32 0
  %RAX.i439 = bitcast %union.anon* %2419 to i64*
  %2420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2421 = getelementptr inbounds %struct.GPR, %struct.GPR* %2420, i32 0, i32 15
  %2422 = getelementptr inbounds %struct.Reg, %struct.Reg* %2421, i32 0, i32 0
  %RBP.i440 = bitcast %union.anon* %2422 to i64*
  %2423 = load i64, i64* %RBP.i440
  %2424 = sub i64 %2423, 48
  %2425 = load i64, i64* %PC.i438
  %2426 = add i64 %2425, 4
  store i64 %2426, i64* %PC.i438
  %2427 = inttoptr i64 %2424 to i64*
  %2428 = load i64, i64* %2427
  store i64 %2428, i64* %RAX.i439, align 8
  store %struct.Memory* %loadMem_42c444, %struct.Memory** %MEMORY
  %loadMem_42c448 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2430 = getelementptr inbounds %struct.GPR, %struct.GPR* %2429, i32 0, i32 33
  %2431 = getelementptr inbounds %struct.Reg, %struct.Reg* %2430, i32 0, i32 0
  %PC.i435 = bitcast %union.anon* %2431 to i64*
  %2432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2433 = getelementptr inbounds %struct.GPR, %struct.GPR* %2432, i32 0, i32 5
  %2434 = getelementptr inbounds %struct.Reg, %struct.Reg* %2433, i32 0, i32 0
  %RCX.i436 = bitcast %union.anon* %2434 to i64*
  %2435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2436 = getelementptr inbounds %struct.GPR, %struct.GPR* %2435, i32 0, i32 15
  %2437 = getelementptr inbounds %struct.Reg, %struct.Reg* %2436, i32 0, i32 0
  %RBP.i437 = bitcast %union.anon* %2437 to i64*
  %2438 = load i64, i64* %RBP.i437
  %2439 = sub i64 %2438, 60
  %2440 = load i64, i64* %PC.i435
  %2441 = add i64 %2440, 4
  store i64 %2441, i64* %PC.i435
  %2442 = inttoptr i64 %2439 to i32*
  %2443 = load i32, i32* %2442
  %2444 = sext i32 %2443 to i64
  store i64 %2444, i64* %RCX.i436, align 8
  store %struct.Memory* %loadMem_42c448, %struct.Memory** %MEMORY
  %loadMem_42c44c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2446 = getelementptr inbounds %struct.GPR, %struct.GPR* %2445, i32 0, i32 33
  %2447 = getelementptr inbounds %struct.Reg, %struct.Reg* %2446, i32 0, i32 0
  %PC.i431 = bitcast %union.anon* %2447 to i64*
  %2448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2449 = getelementptr inbounds %struct.GPR, %struct.GPR* %2448, i32 0, i32 1
  %2450 = getelementptr inbounds %struct.Reg, %struct.Reg* %2449, i32 0, i32 0
  %RAX.i432 = bitcast %union.anon* %2450 to i64*
  %2451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2452 = getelementptr inbounds %struct.GPR, %struct.GPR* %2451, i32 0, i32 5
  %2453 = getelementptr inbounds %struct.Reg, %struct.Reg* %2452, i32 0, i32 0
  %RCX.i433 = bitcast %union.anon* %2453 to i64*
  %2454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2455 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2454, i64 0, i64 0
  %YMM0.i434 = bitcast %union.VectorReg* %2455 to %"class.std::bitset"*
  %2456 = bitcast %"class.std::bitset"* %YMM0.i434 to i8*
  %2457 = load i64, i64* %RAX.i432
  %2458 = load i64, i64* %RCX.i433
  %2459 = mul i64 %2458, 4
  %2460 = add i64 %2459, %2457
  %2461 = load i64, i64* %PC.i431
  %2462 = add i64 %2461, 5
  store i64 %2462, i64* %PC.i431
  %2463 = inttoptr i64 %2460 to float*
  %2464 = load float, float* %2463
  %2465 = bitcast i8* %2456 to float*
  store float %2464, float* %2465, align 1
  %2466 = getelementptr inbounds i8, i8* %2456, i64 4
  %2467 = bitcast i8* %2466 to float*
  store float 0.000000e+00, float* %2467, align 1
  %2468 = getelementptr inbounds i8, i8* %2456, i64 8
  %2469 = bitcast i8* %2468 to float*
  store float 0.000000e+00, float* %2469, align 1
  %2470 = getelementptr inbounds i8, i8* %2456, i64 12
  %2471 = bitcast i8* %2470 to float*
  store float 0.000000e+00, float* %2471, align 1
  store %struct.Memory* %loadMem_42c44c, %struct.Memory** %MEMORY
  %loadMem_42c451 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2473 = getelementptr inbounds %struct.GPR, %struct.GPR* %2472, i32 0, i32 33
  %2474 = getelementptr inbounds %struct.Reg, %struct.Reg* %2473, i32 0, i32 0
  %PC.i428 = bitcast %union.anon* %2474 to i64*
  %2475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2476 = getelementptr inbounds %struct.GPR, %struct.GPR* %2475, i32 0, i32 1
  %2477 = getelementptr inbounds %struct.Reg, %struct.Reg* %2476, i32 0, i32 0
  %RAX.i429 = bitcast %union.anon* %2477 to i64*
  %2478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2479 = getelementptr inbounds %struct.GPR, %struct.GPR* %2478, i32 0, i32 15
  %2480 = getelementptr inbounds %struct.Reg, %struct.Reg* %2479, i32 0, i32 0
  %RBP.i430 = bitcast %union.anon* %2480 to i64*
  %2481 = load i64, i64* %RBP.i430
  %2482 = sub i64 %2481, 56
  %2483 = load i64, i64* %PC.i428
  %2484 = add i64 %2483, 4
  store i64 %2484, i64* %PC.i428
  %2485 = inttoptr i64 %2482 to i64*
  %2486 = load i64, i64* %2485
  store i64 %2486, i64* %RAX.i429, align 8
  store %struct.Memory* %loadMem_42c451, %struct.Memory** %MEMORY
  %loadMem_42c455 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2488 = getelementptr inbounds %struct.GPR, %struct.GPR* %2487, i32 0, i32 33
  %2489 = getelementptr inbounds %struct.Reg, %struct.Reg* %2488, i32 0, i32 0
  %PC.i425 = bitcast %union.anon* %2489 to i64*
  %2490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2491 = getelementptr inbounds %struct.GPR, %struct.GPR* %2490, i32 0, i32 1
  %2492 = getelementptr inbounds %struct.Reg, %struct.Reg* %2491, i32 0, i32 0
  %RAX.i426 = bitcast %union.anon* %2492 to i64*
  %2493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2494 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2493, i64 0, i64 0
  %YMM0.i427 = bitcast %union.VectorReg* %2494 to %"class.std::bitset"*
  %2495 = bitcast %"class.std::bitset"* %YMM0.i427 to i8*
  %2496 = bitcast %"class.std::bitset"* %YMM0.i427 to i8*
  %2497 = load i64, i64* %RAX.i426
  %2498 = add i64 %2497, 12
  %2499 = load i64, i64* %PC.i425
  %2500 = add i64 %2499, 5
  store i64 %2500, i64* %PC.i425
  %2501 = bitcast i8* %2496 to <2 x float>*
  %2502 = load <2 x float>, <2 x float>* %2501, align 1
  %2503 = getelementptr inbounds i8, i8* %2496, i64 8
  %2504 = bitcast i8* %2503 to <2 x i32>*
  %2505 = load <2 x i32>, <2 x i32>* %2504, align 1
  %2506 = inttoptr i64 %2498 to float*
  %2507 = load float, float* %2506
  %2508 = extractelement <2 x float> %2502, i32 0
  %2509 = fadd float %2508, %2507
  %2510 = bitcast i8* %2495 to float*
  store float %2509, float* %2510, align 1
  %2511 = bitcast <2 x float> %2502 to <2 x i32>
  %2512 = extractelement <2 x i32> %2511, i32 1
  %2513 = getelementptr inbounds i8, i8* %2495, i64 4
  %2514 = bitcast i8* %2513 to i32*
  store i32 %2512, i32* %2514, align 1
  %2515 = extractelement <2 x i32> %2505, i32 0
  %2516 = getelementptr inbounds i8, i8* %2495, i64 8
  %2517 = bitcast i8* %2516 to i32*
  store i32 %2515, i32* %2517, align 1
  %2518 = extractelement <2 x i32> %2505, i32 1
  %2519 = getelementptr inbounds i8, i8* %2495, i64 12
  %2520 = bitcast i8* %2519 to i32*
  store i32 %2518, i32* %2520, align 1
  store %struct.Memory* %loadMem_42c455, %struct.Memory** %MEMORY
  %loadMem_42c45a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2521 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2522 = getelementptr inbounds %struct.GPR, %struct.GPR* %2521, i32 0, i32 33
  %2523 = getelementptr inbounds %struct.Reg, %struct.Reg* %2522, i32 0, i32 0
  %PC.i422 = bitcast %union.anon* %2523 to i64*
  %2524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2525 = getelementptr inbounds %struct.GPR, %struct.GPR* %2524, i32 0, i32 1
  %2526 = getelementptr inbounds %struct.Reg, %struct.Reg* %2525, i32 0, i32 0
  %RAX.i423 = bitcast %union.anon* %2526 to i64*
  %2527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2528 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2527, i64 0, i64 0
  %XMM0.i424 = bitcast %union.VectorReg* %2528 to %union.vec128_t*
  %2529 = load i64, i64* %RAX.i423
  %2530 = add i64 %2529, 12
  %2531 = bitcast %union.vec128_t* %XMM0.i424 to i8*
  %2532 = load i64, i64* %PC.i422
  %2533 = add i64 %2532, 5
  store i64 %2533, i64* %PC.i422
  %2534 = bitcast i8* %2531 to <2 x float>*
  %2535 = load <2 x float>, <2 x float>* %2534, align 1
  %2536 = extractelement <2 x float> %2535, i32 0
  %2537 = inttoptr i64 %2530 to float*
  store float %2536, float* %2537
  store %struct.Memory* %loadMem_42c45a, %struct.Memory** %MEMORY
  %loadMem_42c45f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2538 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2539 = getelementptr inbounds %struct.GPR, %struct.GPR* %2538, i32 0, i32 33
  %2540 = getelementptr inbounds %struct.Reg, %struct.Reg* %2539, i32 0, i32 0
  %PC.i421 = bitcast %union.anon* %2540 to i64*
  %2541 = load i64, i64* %PC.i421
  %2542 = add i64 %2541, 649
  %2543 = load i64, i64* %PC.i421
  %2544 = add i64 %2543, 5
  store i64 %2544, i64* %PC.i421
  %2545 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2542, i64* %2545, align 8
  store %struct.Memory* %loadMem_42c45f, %struct.Memory** %MEMORY
  br label %block_.L_42c6e8

block_.L_42c464:                                  ; preds = %block_42c2b0
  %loadMem_42c464 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2547 = getelementptr inbounds %struct.GPR, %struct.GPR* %2546, i32 0, i32 33
  %2548 = getelementptr inbounds %struct.Reg, %struct.Reg* %2547, i32 0, i32 0
  %PC.i418 = bitcast %union.anon* %2548 to i64*
  %2549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2550 = getelementptr inbounds %struct.GPR, %struct.GPR* %2549, i32 0, i32 1
  %2551 = getelementptr inbounds %struct.Reg, %struct.Reg* %2550, i32 0, i32 0
  %RAX.i419 = bitcast %union.anon* %2551 to i64*
  %2552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2553 = getelementptr inbounds %struct.GPR, %struct.GPR* %2552, i32 0, i32 15
  %2554 = getelementptr inbounds %struct.Reg, %struct.Reg* %2553, i32 0, i32 0
  %RBP.i420 = bitcast %union.anon* %2554 to i64*
  %2555 = load i64, i64* %RBP.i420
  %2556 = sub i64 %2555, 16
  %2557 = load i64, i64* %PC.i418
  %2558 = add i64 %2557, 4
  store i64 %2558, i64* %PC.i418
  %2559 = inttoptr i64 %2556 to i64*
  %2560 = load i64, i64* %2559
  store i64 %2560, i64* %RAX.i419, align 8
  store %struct.Memory* %loadMem_42c464, %struct.Memory** %MEMORY
  %loadMem_42c468 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2562 = getelementptr inbounds %struct.GPR, %struct.GPR* %2561, i32 0, i32 33
  %2563 = getelementptr inbounds %struct.Reg, %struct.Reg* %2562, i32 0, i32 0
  %PC.i415 = bitcast %union.anon* %2563 to i64*
  %2564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2565 = getelementptr inbounds %struct.GPR, %struct.GPR* %2564, i32 0, i32 5
  %2566 = getelementptr inbounds %struct.Reg, %struct.Reg* %2565, i32 0, i32 0
  %RCX.i416 = bitcast %union.anon* %2566 to i64*
  %2567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2568 = getelementptr inbounds %struct.GPR, %struct.GPR* %2567, i32 0, i32 15
  %2569 = getelementptr inbounds %struct.Reg, %struct.Reg* %2568, i32 0, i32 0
  %RBP.i417 = bitcast %union.anon* %2569 to i64*
  %2570 = load i64, i64* %RBP.i417
  %2571 = sub i64 %2570, 60
  %2572 = load i64, i64* %PC.i415
  %2573 = add i64 %2572, 4
  store i64 %2573, i64* %PC.i415
  %2574 = inttoptr i64 %2571 to i32*
  %2575 = load i32, i32* %2574
  %2576 = sext i32 %2575 to i64
  store i64 %2576, i64* %RCX.i416, align 8
  store %struct.Memory* %loadMem_42c468, %struct.Memory** %MEMORY
  %loadMem_42c46c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2578 = getelementptr inbounds %struct.GPR, %struct.GPR* %2577, i32 0, i32 33
  %2579 = getelementptr inbounds %struct.Reg, %struct.Reg* %2578, i32 0, i32 0
  %PC.i412 = bitcast %union.anon* %2579 to i64*
  %2580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2581 = getelementptr inbounds %struct.GPR, %struct.GPR* %2580, i32 0, i32 1
  %2582 = getelementptr inbounds %struct.Reg, %struct.Reg* %2581, i32 0, i32 0
  %RAX.i413 = bitcast %union.anon* %2582 to i64*
  %2583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2584 = getelementptr inbounds %struct.GPR, %struct.GPR* %2583, i32 0, i32 5
  %2585 = getelementptr inbounds %struct.Reg, %struct.Reg* %2584, i32 0, i32 0
  %RCX.i414 = bitcast %union.anon* %2585 to i64*
  %2586 = load i64, i64* %RAX.i413
  %2587 = load i64, i64* %RCX.i414
  %2588 = mul i64 %2587, 8
  %2589 = add i64 %2588, %2586
  %2590 = load i64, i64* %PC.i412
  %2591 = add i64 %2590, 4
  store i64 %2591, i64* %PC.i412
  %2592 = inttoptr i64 %2589 to i64*
  %2593 = load i64, i64* %2592
  store i64 %2593, i64* %RAX.i413, align 8
  store %struct.Memory* %loadMem_42c46c, %struct.Memory** %MEMORY
  %loadMem_42c470 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2595 = getelementptr inbounds %struct.GPR, %struct.GPR* %2594, i32 0, i32 33
  %2596 = getelementptr inbounds %struct.Reg, %struct.Reg* %2595, i32 0, i32 0
  %PC.i409 = bitcast %union.anon* %2596 to i64*
  %2597 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2598 = getelementptr inbounds %struct.GPR, %struct.GPR* %2597, i32 0, i32 5
  %2599 = getelementptr inbounds %struct.Reg, %struct.Reg* %2598, i32 0, i32 0
  %RCX.i410 = bitcast %union.anon* %2599 to i64*
  %2600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2601 = getelementptr inbounds %struct.GPR, %struct.GPR* %2600, i32 0, i32 15
  %2602 = getelementptr inbounds %struct.Reg, %struct.Reg* %2601, i32 0, i32 0
  %RBP.i411 = bitcast %union.anon* %2602 to i64*
  %2603 = load i64, i64* %RBP.i411
  %2604 = sub i64 %2603, 36
  %2605 = load i64, i64* %PC.i409
  %2606 = add i64 %2605, 4
  store i64 %2606, i64* %PC.i409
  %2607 = inttoptr i64 %2604 to i32*
  %2608 = load i32, i32* %2607
  %2609 = sext i32 %2608 to i64
  store i64 %2609, i64* %RCX.i410, align 8
  store %struct.Memory* %loadMem_42c470, %struct.Memory** %MEMORY
  %loadMem_42c474 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2611 = getelementptr inbounds %struct.GPR, %struct.GPR* %2610, i32 0, i32 33
  %2612 = getelementptr inbounds %struct.Reg, %struct.Reg* %2611, i32 0, i32 0
  %PC.i405 = bitcast %union.anon* %2612 to i64*
  %2613 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2614 = getelementptr inbounds %struct.GPR, %struct.GPR* %2613, i32 0, i32 1
  %2615 = getelementptr inbounds %struct.Reg, %struct.Reg* %2614, i32 0, i32 0
  %RAX.i406 = bitcast %union.anon* %2615 to i64*
  %2616 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2617 = getelementptr inbounds %struct.GPR, %struct.GPR* %2616, i32 0, i32 5
  %2618 = getelementptr inbounds %struct.Reg, %struct.Reg* %2617, i32 0, i32 0
  %RCX.i407 = bitcast %union.anon* %2618 to i64*
  %2619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2620 = getelementptr inbounds %struct.GPR, %struct.GPR* %2619, i32 0, i32 7
  %2621 = getelementptr inbounds %struct.Reg, %struct.Reg* %2620, i32 0, i32 0
  %RDX.i408 = bitcast %union.anon* %2621 to i64*
  %2622 = load i64, i64* %RAX.i406
  %2623 = load i64, i64* %RCX.i407
  %2624 = add i64 %2623, %2622
  %2625 = load i64, i64* %PC.i405
  %2626 = add i64 %2625, 4
  store i64 %2626, i64* %PC.i405
  %2627 = inttoptr i64 %2624 to i8*
  %2628 = load i8, i8* %2627
  %2629 = sext i8 %2628 to i64
  %2630 = and i64 %2629, 4294967295
  store i64 %2630, i64* %RDX.i408, align 8
  store %struct.Memory* %loadMem_42c474, %struct.Memory** %MEMORY
  %loadMem_42c478 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2632 = getelementptr inbounds %struct.GPR, %struct.GPR* %2631, i32 0, i32 33
  %2633 = getelementptr inbounds %struct.Reg, %struct.Reg* %2632, i32 0, i32 0
  %PC.i403 = bitcast %union.anon* %2633 to i64*
  %2634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2635 = getelementptr inbounds %struct.GPR, %struct.GPR* %2634, i32 0, i32 7
  %2636 = getelementptr inbounds %struct.Reg, %struct.Reg* %2635, i32 0, i32 0
  %EDX.i404 = bitcast %union.anon* %2636 to i32*
  %2637 = load i32, i32* %EDX.i404
  %2638 = zext i32 %2637 to i64
  %2639 = load i64, i64* %PC.i403
  %2640 = add i64 %2639, 3
  store i64 %2640, i64* %PC.i403
  %2641 = sub i32 %2637, 32
  %2642 = icmp ult i32 %2637, 32
  %2643 = zext i1 %2642 to i8
  %2644 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2643, i8* %2644, align 1
  %2645 = and i32 %2641, 255
  %2646 = call i32 @llvm.ctpop.i32(i32 %2645)
  %2647 = trunc i32 %2646 to i8
  %2648 = and i8 %2647, 1
  %2649 = xor i8 %2648, 1
  %2650 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2649, i8* %2650, align 1
  %2651 = xor i64 32, %2638
  %2652 = trunc i64 %2651 to i32
  %2653 = xor i32 %2652, %2641
  %2654 = lshr i32 %2653, 4
  %2655 = trunc i32 %2654 to i8
  %2656 = and i8 %2655, 1
  %2657 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2656, i8* %2657, align 1
  %2658 = icmp eq i32 %2641, 0
  %2659 = zext i1 %2658 to i8
  %2660 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2659, i8* %2660, align 1
  %2661 = lshr i32 %2641, 31
  %2662 = trunc i32 %2661 to i8
  %2663 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2662, i8* %2663, align 1
  %2664 = lshr i32 %2637, 31
  %2665 = xor i32 %2661, %2664
  %2666 = add i32 %2665, %2664
  %2667 = icmp eq i32 %2666, 2
  %2668 = zext i1 %2667 to i8
  %2669 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2668, i8* %2669, align 1
  store %struct.Memory* %loadMem_42c478, %struct.Memory** %MEMORY
  %loadMem_42c47b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2671 = getelementptr inbounds %struct.GPR, %struct.GPR* %2670, i32 0, i32 33
  %2672 = getelementptr inbounds %struct.Reg, %struct.Reg* %2671, i32 0, i32 0
  %PC.i402 = bitcast %union.anon* %2672 to i64*
  %2673 = load i64, i64* %PC.i402
  %2674 = add i64 %2673, 368
  %2675 = load i64, i64* %PC.i402
  %2676 = add i64 %2675, 6
  %2677 = load i64, i64* %PC.i402
  %2678 = add i64 %2677, 6
  store i64 %2678, i64* %PC.i402
  %2679 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2680 = load i8, i8* %2679, align 1
  store i8 %2680, i8* %BRANCH_TAKEN, align 1
  %2681 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2682 = icmp ne i8 %2680, 0
  %2683 = select i1 %2682, i64 %2674, i64 %2676
  store i64 %2683, i64* %2681, align 8
  store %struct.Memory* %loadMem_42c47b, %struct.Memory** %MEMORY
  %loadBr_42c47b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42c47b = icmp eq i8 %loadBr_42c47b, 1
  br i1 %cmpBr_42c47b, label %block_.L_42c5eb, label %block_42c481

block_42c481:                                     ; preds = %block_.L_42c464
  %loadMem_42c481 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2685 = getelementptr inbounds %struct.GPR, %struct.GPR* %2684, i32 0, i32 33
  %2686 = getelementptr inbounds %struct.Reg, %struct.Reg* %2685, i32 0, i32 0
  %PC.i399 = bitcast %union.anon* %2686 to i64*
  %2687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2688 = getelementptr inbounds %struct.GPR, %struct.GPR* %2687, i32 0, i32 1
  %2689 = getelementptr inbounds %struct.Reg, %struct.Reg* %2688, i32 0, i32 0
  %RAX.i400 = bitcast %union.anon* %2689 to i64*
  %2690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2691 = getelementptr inbounds %struct.GPR, %struct.GPR* %2690, i32 0, i32 15
  %2692 = getelementptr inbounds %struct.Reg, %struct.Reg* %2691, i32 0, i32 0
  %RBP.i401 = bitcast %union.anon* %2692 to i64*
  %2693 = load i64, i64* %RBP.i401
  %2694 = sub i64 %2693, 16
  %2695 = load i64, i64* %PC.i399
  %2696 = add i64 %2695, 4
  store i64 %2696, i64* %PC.i399
  %2697 = inttoptr i64 %2694 to i64*
  %2698 = load i64, i64* %2697
  store i64 %2698, i64* %RAX.i400, align 8
  store %struct.Memory* %loadMem_42c481, %struct.Memory** %MEMORY
  %loadMem_42c485 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2700 = getelementptr inbounds %struct.GPR, %struct.GPR* %2699, i32 0, i32 33
  %2701 = getelementptr inbounds %struct.Reg, %struct.Reg* %2700, i32 0, i32 0
  %PC.i396 = bitcast %union.anon* %2701 to i64*
  %2702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2703 = getelementptr inbounds %struct.GPR, %struct.GPR* %2702, i32 0, i32 5
  %2704 = getelementptr inbounds %struct.Reg, %struct.Reg* %2703, i32 0, i32 0
  %RCX.i397 = bitcast %union.anon* %2704 to i64*
  %2705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2706 = getelementptr inbounds %struct.GPR, %struct.GPR* %2705, i32 0, i32 15
  %2707 = getelementptr inbounds %struct.Reg, %struct.Reg* %2706, i32 0, i32 0
  %RBP.i398 = bitcast %union.anon* %2707 to i64*
  %2708 = load i64, i64* %RBP.i398
  %2709 = sub i64 %2708, 60
  %2710 = load i64, i64* %PC.i396
  %2711 = add i64 %2710, 4
  store i64 %2711, i64* %PC.i396
  %2712 = inttoptr i64 %2709 to i32*
  %2713 = load i32, i32* %2712
  %2714 = sext i32 %2713 to i64
  store i64 %2714, i64* %RCX.i397, align 8
  store %struct.Memory* %loadMem_42c485, %struct.Memory** %MEMORY
  %loadMem_42c489 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2716 = getelementptr inbounds %struct.GPR, %struct.GPR* %2715, i32 0, i32 33
  %2717 = getelementptr inbounds %struct.Reg, %struct.Reg* %2716, i32 0, i32 0
  %PC.i393 = bitcast %union.anon* %2717 to i64*
  %2718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2719 = getelementptr inbounds %struct.GPR, %struct.GPR* %2718, i32 0, i32 1
  %2720 = getelementptr inbounds %struct.Reg, %struct.Reg* %2719, i32 0, i32 0
  %RAX.i394 = bitcast %union.anon* %2720 to i64*
  %2721 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2722 = getelementptr inbounds %struct.GPR, %struct.GPR* %2721, i32 0, i32 5
  %2723 = getelementptr inbounds %struct.Reg, %struct.Reg* %2722, i32 0, i32 0
  %RCX.i395 = bitcast %union.anon* %2723 to i64*
  %2724 = load i64, i64* %RAX.i394
  %2725 = load i64, i64* %RCX.i395
  %2726 = mul i64 %2725, 8
  %2727 = add i64 %2726, %2724
  %2728 = load i64, i64* %PC.i393
  %2729 = add i64 %2728, 4
  store i64 %2729, i64* %PC.i393
  %2730 = inttoptr i64 %2727 to i64*
  %2731 = load i64, i64* %2730
  store i64 %2731, i64* %RAX.i394, align 8
  store %struct.Memory* %loadMem_42c489, %struct.Memory** %MEMORY
  %loadMem_42c48d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2733 = getelementptr inbounds %struct.GPR, %struct.GPR* %2732, i32 0, i32 33
  %2734 = getelementptr inbounds %struct.Reg, %struct.Reg* %2733, i32 0, i32 0
  %PC.i390 = bitcast %union.anon* %2734 to i64*
  %2735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2736 = getelementptr inbounds %struct.GPR, %struct.GPR* %2735, i32 0, i32 5
  %2737 = getelementptr inbounds %struct.Reg, %struct.Reg* %2736, i32 0, i32 0
  %RCX.i391 = bitcast %union.anon* %2737 to i64*
  %2738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2739 = getelementptr inbounds %struct.GPR, %struct.GPR* %2738, i32 0, i32 15
  %2740 = getelementptr inbounds %struct.Reg, %struct.Reg* %2739, i32 0, i32 0
  %RBP.i392 = bitcast %union.anon* %2740 to i64*
  %2741 = load i64, i64* %RBP.i392
  %2742 = sub i64 %2741, 36
  %2743 = load i64, i64* %PC.i390
  %2744 = add i64 %2743, 4
  store i64 %2744, i64* %PC.i390
  %2745 = inttoptr i64 %2742 to i32*
  %2746 = load i32, i32* %2745
  %2747 = sext i32 %2746 to i64
  store i64 %2747, i64* %RCX.i391, align 8
  store %struct.Memory* %loadMem_42c48d, %struct.Memory** %MEMORY
  %loadMem_42c491 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2749 = getelementptr inbounds %struct.GPR, %struct.GPR* %2748, i32 0, i32 33
  %2750 = getelementptr inbounds %struct.Reg, %struct.Reg* %2749, i32 0, i32 0
  %PC.i386 = bitcast %union.anon* %2750 to i64*
  %2751 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2752 = getelementptr inbounds %struct.GPR, %struct.GPR* %2751, i32 0, i32 1
  %2753 = getelementptr inbounds %struct.Reg, %struct.Reg* %2752, i32 0, i32 0
  %RAX.i387 = bitcast %union.anon* %2753 to i64*
  %2754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2755 = getelementptr inbounds %struct.GPR, %struct.GPR* %2754, i32 0, i32 5
  %2756 = getelementptr inbounds %struct.Reg, %struct.Reg* %2755, i32 0, i32 0
  %RCX.i388 = bitcast %union.anon* %2756 to i64*
  %2757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2758 = getelementptr inbounds %struct.GPR, %struct.GPR* %2757, i32 0, i32 7
  %2759 = getelementptr inbounds %struct.Reg, %struct.Reg* %2758, i32 0, i32 0
  %RDX.i389 = bitcast %union.anon* %2759 to i64*
  %2760 = load i64, i64* %RAX.i387
  %2761 = load i64, i64* %RCX.i388
  %2762 = add i64 %2761, %2760
  %2763 = load i64, i64* %PC.i386
  %2764 = add i64 %2763, 4
  store i64 %2764, i64* %PC.i386
  %2765 = inttoptr i64 %2762 to i8*
  %2766 = load i8, i8* %2765
  %2767 = sext i8 %2766 to i64
  %2768 = and i64 %2767, 4294967295
  store i64 %2768, i64* %RDX.i389, align 8
  store %struct.Memory* %loadMem_42c491, %struct.Memory** %MEMORY
  %loadMem_42c495 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2770 = getelementptr inbounds %struct.GPR, %struct.GPR* %2769, i32 0, i32 33
  %2771 = getelementptr inbounds %struct.Reg, %struct.Reg* %2770, i32 0, i32 0
  %PC.i384 = bitcast %union.anon* %2771 to i64*
  %2772 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2773 = getelementptr inbounds %struct.GPR, %struct.GPR* %2772, i32 0, i32 7
  %2774 = getelementptr inbounds %struct.Reg, %struct.Reg* %2773, i32 0, i32 0
  %EDX.i385 = bitcast %union.anon* %2774 to i32*
  %2775 = load i32, i32* %EDX.i385
  %2776 = zext i32 %2775 to i64
  %2777 = load i64, i64* %PC.i384
  %2778 = add i64 %2777, 3
  store i64 %2778, i64* %PC.i384
  %2779 = sub i32 %2775, 46
  %2780 = icmp ult i32 %2775, 46
  %2781 = zext i1 %2780 to i8
  %2782 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2781, i8* %2782, align 1
  %2783 = and i32 %2779, 255
  %2784 = call i32 @llvm.ctpop.i32(i32 %2783)
  %2785 = trunc i32 %2784 to i8
  %2786 = and i8 %2785, 1
  %2787 = xor i8 %2786, 1
  %2788 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2787, i8* %2788, align 1
  %2789 = xor i64 46, %2776
  %2790 = trunc i64 %2789 to i32
  %2791 = xor i32 %2790, %2779
  %2792 = lshr i32 %2791, 4
  %2793 = trunc i32 %2792 to i8
  %2794 = and i8 %2793, 1
  %2795 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2794, i8* %2795, align 1
  %2796 = icmp eq i32 %2779, 0
  %2797 = zext i1 %2796 to i8
  %2798 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2797, i8* %2798, align 1
  %2799 = lshr i32 %2779, 31
  %2800 = trunc i32 %2799 to i8
  %2801 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2800, i8* %2801, align 1
  %2802 = lshr i32 %2775, 31
  %2803 = xor i32 %2799, %2802
  %2804 = add i32 %2803, %2802
  %2805 = icmp eq i32 %2804, 2
  %2806 = zext i1 %2805 to i8
  %2807 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2806, i8* %2807, align 1
  store %struct.Memory* %loadMem_42c495, %struct.Memory** %MEMORY
  %loadMem_42c498 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2809 = getelementptr inbounds %struct.GPR, %struct.GPR* %2808, i32 0, i32 33
  %2810 = getelementptr inbounds %struct.Reg, %struct.Reg* %2809, i32 0, i32 0
  %PC.i383 = bitcast %union.anon* %2810 to i64*
  %2811 = load i64, i64* %PC.i383
  %2812 = add i64 %2811, 339
  %2813 = load i64, i64* %PC.i383
  %2814 = add i64 %2813, 6
  %2815 = load i64, i64* %PC.i383
  %2816 = add i64 %2815, 6
  store i64 %2816, i64* %PC.i383
  %2817 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2818 = load i8, i8* %2817, align 1
  store i8 %2818, i8* %BRANCH_TAKEN, align 1
  %2819 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2820 = icmp ne i8 %2818, 0
  %2821 = select i1 %2820, i64 %2812, i64 %2814
  store i64 %2821, i64* %2819, align 8
  store %struct.Memory* %loadMem_42c498, %struct.Memory** %MEMORY
  %loadBr_42c498 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42c498 = icmp eq i8 %loadBr_42c498, 1
  br i1 %cmpBr_42c498, label %block_.L_42c5eb, label %block_42c49e

block_42c49e:                                     ; preds = %block_42c481
  %loadMem_42c49e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2823 = getelementptr inbounds %struct.GPR, %struct.GPR* %2822, i32 0, i32 33
  %2824 = getelementptr inbounds %struct.Reg, %struct.Reg* %2823, i32 0, i32 0
  %PC.i380 = bitcast %union.anon* %2824 to i64*
  %2825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2826 = getelementptr inbounds %struct.GPR, %struct.GPR* %2825, i32 0, i32 1
  %2827 = getelementptr inbounds %struct.Reg, %struct.Reg* %2826, i32 0, i32 0
  %RAX.i381 = bitcast %union.anon* %2827 to i64*
  %2828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2829 = getelementptr inbounds %struct.GPR, %struct.GPR* %2828, i32 0, i32 15
  %2830 = getelementptr inbounds %struct.Reg, %struct.Reg* %2829, i32 0, i32 0
  %RBP.i382 = bitcast %union.anon* %2830 to i64*
  %2831 = load i64, i64* %RBP.i382
  %2832 = sub i64 %2831, 16
  %2833 = load i64, i64* %PC.i380
  %2834 = add i64 %2833, 4
  store i64 %2834, i64* %PC.i380
  %2835 = inttoptr i64 %2832 to i64*
  %2836 = load i64, i64* %2835
  store i64 %2836, i64* %RAX.i381, align 8
  store %struct.Memory* %loadMem_42c49e, %struct.Memory** %MEMORY
  %loadMem_42c4a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2837 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2838 = getelementptr inbounds %struct.GPR, %struct.GPR* %2837, i32 0, i32 33
  %2839 = getelementptr inbounds %struct.Reg, %struct.Reg* %2838, i32 0, i32 0
  %PC.i377 = bitcast %union.anon* %2839 to i64*
  %2840 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2841 = getelementptr inbounds %struct.GPR, %struct.GPR* %2840, i32 0, i32 5
  %2842 = getelementptr inbounds %struct.Reg, %struct.Reg* %2841, i32 0, i32 0
  %RCX.i378 = bitcast %union.anon* %2842 to i64*
  %2843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2844 = getelementptr inbounds %struct.GPR, %struct.GPR* %2843, i32 0, i32 15
  %2845 = getelementptr inbounds %struct.Reg, %struct.Reg* %2844, i32 0, i32 0
  %RBP.i379 = bitcast %union.anon* %2845 to i64*
  %2846 = load i64, i64* %RBP.i379
  %2847 = sub i64 %2846, 60
  %2848 = load i64, i64* %PC.i377
  %2849 = add i64 %2848, 4
  store i64 %2849, i64* %PC.i377
  %2850 = inttoptr i64 %2847 to i32*
  %2851 = load i32, i32* %2850
  %2852 = sext i32 %2851 to i64
  store i64 %2852, i64* %RCX.i378, align 8
  store %struct.Memory* %loadMem_42c4a2, %struct.Memory** %MEMORY
  %loadMem_42c4a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2853 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2854 = getelementptr inbounds %struct.GPR, %struct.GPR* %2853, i32 0, i32 33
  %2855 = getelementptr inbounds %struct.Reg, %struct.Reg* %2854, i32 0, i32 0
  %PC.i374 = bitcast %union.anon* %2855 to i64*
  %2856 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2857 = getelementptr inbounds %struct.GPR, %struct.GPR* %2856, i32 0, i32 1
  %2858 = getelementptr inbounds %struct.Reg, %struct.Reg* %2857, i32 0, i32 0
  %RAX.i375 = bitcast %union.anon* %2858 to i64*
  %2859 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2860 = getelementptr inbounds %struct.GPR, %struct.GPR* %2859, i32 0, i32 5
  %2861 = getelementptr inbounds %struct.Reg, %struct.Reg* %2860, i32 0, i32 0
  %RCX.i376 = bitcast %union.anon* %2861 to i64*
  %2862 = load i64, i64* %RAX.i375
  %2863 = load i64, i64* %RCX.i376
  %2864 = mul i64 %2863, 8
  %2865 = add i64 %2864, %2862
  %2866 = load i64, i64* %PC.i374
  %2867 = add i64 %2866, 4
  store i64 %2867, i64* %PC.i374
  %2868 = inttoptr i64 %2865 to i64*
  %2869 = load i64, i64* %2868
  store i64 %2869, i64* %RAX.i375, align 8
  store %struct.Memory* %loadMem_42c4a6, %struct.Memory** %MEMORY
  %loadMem_42c4aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %2870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2871 = getelementptr inbounds %struct.GPR, %struct.GPR* %2870, i32 0, i32 33
  %2872 = getelementptr inbounds %struct.Reg, %struct.Reg* %2871, i32 0, i32 0
  %PC.i371 = bitcast %union.anon* %2872 to i64*
  %2873 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2874 = getelementptr inbounds %struct.GPR, %struct.GPR* %2873, i32 0, i32 5
  %2875 = getelementptr inbounds %struct.Reg, %struct.Reg* %2874, i32 0, i32 0
  %RCX.i372 = bitcast %union.anon* %2875 to i64*
  %2876 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2877 = getelementptr inbounds %struct.GPR, %struct.GPR* %2876, i32 0, i32 15
  %2878 = getelementptr inbounds %struct.Reg, %struct.Reg* %2877, i32 0, i32 0
  %RBP.i373 = bitcast %union.anon* %2878 to i64*
  %2879 = load i64, i64* %RBP.i373
  %2880 = sub i64 %2879, 36
  %2881 = load i64, i64* %PC.i371
  %2882 = add i64 %2881, 4
  store i64 %2882, i64* %PC.i371
  %2883 = inttoptr i64 %2880 to i32*
  %2884 = load i32, i32* %2883
  %2885 = sext i32 %2884 to i64
  store i64 %2885, i64* %RCX.i372, align 8
  store %struct.Memory* %loadMem_42c4aa, %struct.Memory** %MEMORY
  %loadMem_42c4ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %2886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2887 = getelementptr inbounds %struct.GPR, %struct.GPR* %2886, i32 0, i32 33
  %2888 = getelementptr inbounds %struct.Reg, %struct.Reg* %2887, i32 0, i32 0
  %PC.i367 = bitcast %union.anon* %2888 to i64*
  %2889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2890 = getelementptr inbounds %struct.GPR, %struct.GPR* %2889, i32 0, i32 1
  %2891 = getelementptr inbounds %struct.Reg, %struct.Reg* %2890, i32 0, i32 0
  %RAX.i368 = bitcast %union.anon* %2891 to i64*
  %2892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2893 = getelementptr inbounds %struct.GPR, %struct.GPR* %2892, i32 0, i32 5
  %2894 = getelementptr inbounds %struct.Reg, %struct.Reg* %2893, i32 0, i32 0
  %RCX.i369 = bitcast %union.anon* %2894 to i64*
  %2895 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2896 = getelementptr inbounds %struct.GPR, %struct.GPR* %2895, i32 0, i32 7
  %2897 = getelementptr inbounds %struct.Reg, %struct.Reg* %2896, i32 0, i32 0
  %RDX.i370 = bitcast %union.anon* %2897 to i64*
  %2898 = load i64, i64* %RAX.i368
  %2899 = load i64, i64* %RCX.i369
  %2900 = add i64 %2899, %2898
  %2901 = load i64, i64* %PC.i367
  %2902 = add i64 %2901, 4
  store i64 %2902, i64* %PC.i367
  %2903 = inttoptr i64 %2900 to i8*
  %2904 = load i8, i8* %2903
  %2905 = sext i8 %2904 to i64
  %2906 = and i64 %2905, 4294967295
  store i64 %2906, i64* %RDX.i370, align 8
  store %struct.Memory* %loadMem_42c4ae, %struct.Memory** %MEMORY
  %loadMem_42c4b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2908 = getelementptr inbounds %struct.GPR, %struct.GPR* %2907, i32 0, i32 33
  %2909 = getelementptr inbounds %struct.Reg, %struct.Reg* %2908, i32 0, i32 0
  %PC.i365 = bitcast %union.anon* %2909 to i64*
  %2910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2911 = getelementptr inbounds %struct.GPR, %struct.GPR* %2910, i32 0, i32 7
  %2912 = getelementptr inbounds %struct.Reg, %struct.Reg* %2911, i32 0, i32 0
  %EDX.i366 = bitcast %union.anon* %2912 to i32*
  %2913 = load i32, i32* %EDX.i366
  %2914 = zext i32 %2913 to i64
  %2915 = load i64, i64* %PC.i365
  %2916 = add i64 %2915, 3
  store i64 %2916, i64* %PC.i365
  %2917 = sub i32 %2913, 95
  %2918 = icmp ult i32 %2913, 95
  %2919 = zext i1 %2918 to i8
  %2920 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2919, i8* %2920, align 1
  %2921 = and i32 %2917, 255
  %2922 = call i32 @llvm.ctpop.i32(i32 %2921)
  %2923 = trunc i32 %2922 to i8
  %2924 = and i8 %2923, 1
  %2925 = xor i8 %2924, 1
  %2926 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2925, i8* %2926, align 1
  %2927 = xor i64 95, %2914
  %2928 = trunc i64 %2927 to i32
  %2929 = xor i32 %2928, %2917
  %2930 = lshr i32 %2929, 4
  %2931 = trunc i32 %2930 to i8
  %2932 = and i8 %2931, 1
  %2933 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2932, i8* %2933, align 1
  %2934 = icmp eq i32 %2917, 0
  %2935 = zext i1 %2934 to i8
  %2936 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2935, i8* %2936, align 1
  %2937 = lshr i32 %2917, 31
  %2938 = trunc i32 %2937 to i8
  %2939 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2938, i8* %2939, align 1
  %2940 = lshr i32 %2913, 31
  %2941 = xor i32 %2937, %2940
  %2942 = add i32 %2941, %2940
  %2943 = icmp eq i32 %2942, 2
  %2944 = zext i1 %2943 to i8
  %2945 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2944, i8* %2945, align 1
  store %struct.Memory* %loadMem_42c4b2, %struct.Memory** %MEMORY
  %loadMem_42c4b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2947 = getelementptr inbounds %struct.GPR, %struct.GPR* %2946, i32 0, i32 33
  %2948 = getelementptr inbounds %struct.Reg, %struct.Reg* %2947, i32 0, i32 0
  %PC.i364 = bitcast %union.anon* %2948 to i64*
  %2949 = load i64, i64* %PC.i364
  %2950 = add i64 %2949, 310
  %2951 = load i64, i64* %PC.i364
  %2952 = add i64 %2951, 6
  %2953 = load i64, i64* %PC.i364
  %2954 = add i64 %2953, 6
  store i64 %2954, i64* %PC.i364
  %2955 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2956 = load i8, i8* %2955, align 1
  store i8 %2956, i8* %BRANCH_TAKEN, align 1
  %2957 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2958 = icmp ne i8 %2956, 0
  %2959 = select i1 %2958, i64 %2950, i64 %2952
  store i64 %2959, i64* %2957, align 8
  store %struct.Memory* %loadMem_42c4b5, %struct.Memory** %MEMORY
  %loadBr_42c4b5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42c4b5 = icmp eq i8 %loadBr_42c4b5, 1
  br i1 %cmpBr_42c4b5, label %block_.L_42c5eb, label %block_42c4bb

block_42c4bb:                                     ; preds = %block_42c49e
  %loadMem_42c4bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2960 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2961 = getelementptr inbounds %struct.GPR, %struct.GPR* %2960, i32 0, i32 33
  %2962 = getelementptr inbounds %struct.Reg, %struct.Reg* %2961, i32 0, i32 0
  %PC.i361 = bitcast %union.anon* %2962 to i64*
  %2963 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2964 = getelementptr inbounds %struct.GPR, %struct.GPR* %2963, i32 0, i32 1
  %2965 = getelementptr inbounds %struct.Reg, %struct.Reg* %2964, i32 0, i32 0
  %RAX.i362 = bitcast %union.anon* %2965 to i64*
  %2966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2967 = getelementptr inbounds %struct.GPR, %struct.GPR* %2966, i32 0, i32 15
  %2968 = getelementptr inbounds %struct.Reg, %struct.Reg* %2967, i32 0, i32 0
  %RBP.i363 = bitcast %union.anon* %2968 to i64*
  %2969 = load i64, i64* %RBP.i363
  %2970 = sub i64 %2969, 16
  %2971 = load i64, i64* %PC.i361
  %2972 = add i64 %2971, 4
  store i64 %2972, i64* %PC.i361
  %2973 = inttoptr i64 %2970 to i64*
  %2974 = load i64, i64* %2973
  store i64 %2974, i64* %RAX.i362, align 8
  store %struct.Memory* %loadMem_42c4bb, %struct.Memory** %MEMORY
  %loadMem_42c4bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %2975 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2976 = getelementptr inbounds %struct.GPR, %struct.GPR* %2975, i32 0, i32 33
  %2977 = getelementptr inbounds %struct.Reg, %struct.Reg* %2976, i32 0, i32 0
  %PC.i358 = bitcast %union.anon* %2977 to i64*
  %2978 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2979 = getelementptr inbounds %struct.GPR, %struct.GPR* %2978, i32 0, i32 5
  %2980 = getelementptr inbounds %struct.Reg, %struct.Reg* %2979, i32 0, i32 0
  %RCX.i359 = bitcast %union.anon* %2980 to i64*
  %2981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2982 = getelementptr inbounds %struct.GPR, %struct.GPR* %2981, i32 0, i32 15
  %2983 = getelementptr inbounds %struct.Reg, %struct.Reg* %2982, i32 0, i32 0
  %RBP.i360 = bitcast %union.anon* %2983 to i64*
  %2984 = load i64, i64* %RBP.i360
  %2985 = sub i64 %2984, 60
  %2986 = load i64, i64* %PC.i358
  %2987 = add i64 %2986, 4
  store i64 %2987, i64* %PC.i358
  %2988 = inttoptr i64 %2985 to i32*
  %2989 = load i32, i32* %2988
  %2990 = sext i32 %2989 to i64
  store i64 %2990, i64* %RCX.i359, align 8
  store %struct.Memory* %loadMem_42c4bf, %struct.Memory** %MEMORY
  %loadMem_42c4c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2991 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2992 = getelementptr inbounds %struct.GPR, %struct.GPR* %2991, i32 0, i32 33
  %2993 = getelementptr inbounds %struct.Reg, %struct.Reg* %2992, i32 0, i32 0
  %PC.i355 = bitcast %union.anon* %2993 to i64*
  %2994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2995 = getelementptr inbounds %struct.GPR, %struct.GPR* %2994, i32 0, i32 1
  %2996 = getelementptr inbounds %struct.Reg, %struct.Reg* %2995, i32 0, i32 0
  %RAX.i356 = bitcast %union.anon* %2996 to i64*
  %2997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2998 = getelementptr inbounds %struct.GPR, %struct.GPR* %2997, i32 0, i32 5
  %2999 = getelementptr inbounds %struct.Reg, %struct.Reg* %2998, i32 0, i32 0
  %RCX.i357 = bitcast %union.anon* %2999 to i64*
  %3000 = load i64, i64* %RAX.i356
  %3001 = load i64, i64* %RCX.i357
  %3002 = mul i64 %3001, 8
  %3003 = add i64 %3002, %3000
  %3004 = load i64, i64* %PC.i355
  %3005 = add i64 %3004, 4
  store i64 %3005, i64* %PC.i355
  %3006 = inttoptr i64 %3003 to i64*
  %3007 = load i64, i64* %3006
  store i64 %3007, i64* %RAX.i356, align 8
  store %struct.Memory* %loadMem_42c4c3, %struct.Memory** %MEMORY
  %loadMem_42c4c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3008 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3009 = getelementptr inbounds %struct.GPR, %struct.GPR* %3008, i32 0, i32 33
  %3010 = getelementptr inbounds %struct.Reg, %struct.Reg* %3009, i32 0, i32 0
  %PC.i352 = bitcast %union.anon* %3010 to i64*
  %3011 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3012 = getelementptr inbounds %struct.GPR, %struct.GPR* %3011, i32 0, i32 5
  %3013 = getelementptr inbounds %struct.Reg, %struct.Reg* %3012, i32 0, i32 0
  %RCX.i353 = bitcast %union.anon* %3013 to i64*
  %3014 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3015 = getelementptr inbounds %struct.GPR, %struct.GPR* %3014, i32 0, i32 15
  %3016 = getelementptr inbounds %struct.Reg, %struct.Reg* %3015, i32 0, i32 0
  %RBP.i354 = bitcast %union.anon* %3016 to i64*
  %3017 = load i64, i64* %RBP.i354
  %3018 = sub i64 %3017, 36
  %3019 = load i64, i64* %PC.i352
  %3020 = add i64 %3019, 4
  store i64 %3020, i64* %PC.i352
  %3021 = inttoptr i64 %3018 to i32*
  %3022 = load i32, i32* %3021
  %3023 = sext i32 %3022 to i64
  store i64 %3023, i64* %RCX.i353, align 8
  store %struct.Memory* %loadMem_42c4c7, %struct.Memory** %MEMORY
  %loadMem_42c4cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %3024 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3025 = getelementptr inbounds %struct.GPR, %struct.GPR* %3024, i32 0, i32 33
  %3026 = getelementptr inbounds %struct.Reg, %struct.Reg* %3025, i32 0, i32 0
  %PC.i348 = bitcast %union.anon* %3026 to i64*
  %3027 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3028 = getelementptr inbounds %struct.GPR, %struct.GPR* %3027, i32 0, i32 1
  %3029 = getelementptr inbounds %struct.Reg, %struct.Reg* %3028, i32 0, i32 0
  %RAX.i349 = bitcast %union.anon* %3029 to i64*
  %3030 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3031 = getelementptr inbounds %struct.GPR, %struct.GPR* %3030, i32 0, i32 5
  %3032 = getelementptr inbounds %struct.Reg, %struct.Reg* %3031, i32 0, i32 0
  %RCX.i350 = bitcast %union.anon* %3032 to i64*
  %3033 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3034 = getelementptr inbounds %struct.GPR, %struct.GPR* %3033, i32 0, i32 7
  %3035 = getelementptr inbounds %struct.Reg, %struct.Reg* %3034, i32 0, i32 0
  %RDX.i351 = bitcast %union.anon* %3035 to i64*
  %3036 = load i64, i64* %RAX.i349
  %3037 = load i64, i64* %RCX.i350
  %3038 = add i64 %3037, %3036
  %3039 = load i64, i64* %PC.i348
  %3040 = add i64 %3039, 4
  store i64 %3040, i64* %PC.i348
  %3041 = inttoptr i64 %3038 to i8*
  %3042 = load i8, i8* %3041
  %3043 = sext i8 %3042 to i64
  %3044 = and i64 %3043, 4294967295
  store i64 %3044, i64* %RDX.i351, align 8
  store %struct.Memory* %loadMem_42c4cb, %struct.Memory** %MEMORY
  %loadMem_42c4cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %3045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3046 = getelementptr inbounds %struct.GPR, %struct.GPR* %3045, i32 0, i32 33
  %3047 = getelementptr inbounds %struct.Reg, %struct.Reg* %3046, i32 0, i32 0
  %PC.i346 = bitcast %union.anon* %3047 to i64*
  %3048 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3049 = getelementptr inbounds %struct.GPR, %struct.GPR* %3048, i32 0, i32 7
  %3050 = getelementptr inbounds %struct.Reg, %struct.Reg* %3049, i32 0, i32 0
  %EDX.i347 = bitcast %union.anon* %3050 to i32*
  %3051 = load i32, i32* %EDX.i347
  %3052 = zext i32 %3051 to i64
  %3053 = load i64, i64* %PC.i346
  %3054 = add i64 %3053, 3
  store i64 %3054, i64* %PC.i346
  %3055 = sub i32 %3051, 45
  %3056 = icmp ult i32 %3051, 45
  %3057 = zext i1 %3056 to i8
  %3058 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3057, i8* %3058, align 1
  %3059 = and i32 %3055, 255
  %3060 = call i32 @llvm.ctpop.i32(i32 %3059)
  %3061 = trunc i32 %3060 to i8
  %3062 = and i8 %3061, 1
  %3063 = xor i8 %3062, 1
  %3064 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3063, i8* %3064, align 1
  %3065 = xor i64 45, %3052
  %3066 = trunc i64 %3065 to i32
  %3067 = xor i32 %3066, %3055
  %3068 = lshr i32 %3067, 4
  %3069 = trunc i32 %3068 to i8
  %3070 = and i8 %3069, 1
  %3071 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3070, i8* %3071, align 1
  %3072 = icmp eq i32 %3055, 0
  %3073 = zext i1 %3072 to i8
  %3074 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3073, i8* %3074, align 1
  %3075 = lshr i32 %3055, 31
  %3076 = trunc i32 %3075 to i8
  %3077 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3076, i8* %3077, align 1
  %3078 = lshr i32 %3051, 31
  %3079 = xor i32 %3075, %3078
  %3080 = add i32 %3079, %3078
  %3081 = icmp eq i32 %3080, 2
  %3082 = zext i1 %3081 to i8
  %3083 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3082, i8* %3083, align 1
  store %struct.Memory* %loadMem_42c4cf, %struct.Memory** %MEMORY
  %loadMem_42c4d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3084 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3085 = getelementptr inbounds %struct.GPR, %struct.GPR* %3084, i32 0, i32 33
  %3086 = getelementptr inbounds %struct.Reg, %struct.Reg* %3085, i32 0, i32 0
  %PC.i345 = bitcast %union.anon* %3086 to i64*
  %3087 = load i64, i64* %PC.i345
  %3088 = add i64 %3087, 281
  %3089 = load i64, i64* %PC.i345
  %3090 = add i64 %3089, 6
  %3091 = load i64, i64* %PC.i345
  %3092 = add i64 %3091, 6
  store i64 %3092, i64* %PC.i345
  %3093 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3094 = load i8, i8* %3093, align 1
  store i8 %3094, i8* %BRANCH_TAKEN, align 1
  %3095 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3096 = icmp ne i8 %3094, 0
  %3097 = select i1 %3096, i64 %3088, i64 %3090
  store i64 %3097, i64* %3095, align 8
  store %struct.Memory* %loadMem_42c4d2, %struct.Memory** %MEMORY
  %loadBr_42c4d2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42c4d2 = icmp eq i8 %loadBr_42c4d2, 1
  br i1 %cmpBr_42c4d2, label %block_.L_42c5eb, label %block_42c4d8

block_42c4d8:                                     ; preds = %block_42c4bb
  %loadMem_42c4d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3098 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3099 = getelementptr inbounds %struct.GPR, %struct.GPR* %3098, i32 0, i32 33
  %3100 = getelementptr inbounds %struct.Reg, %struct.Reg* %3099, i32 0, i32 0
  %PC.i342 = bitcast %union.anon* %3100 to i64*
  %3101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3102 = getelementptr inbounds %struct.GPR, %struct.GPR* %3101, i32 0, i32 1
  %3103 = getelementptr inbounds %struct.Reg, %struct.Reg* %3102, i32 0, i32 0
  %RAX.i343 = bitcast %union.anon* %3103 to i64*
  %3104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3105 = getelementptr inbounds %struct.GPR, %struct.GPR* %3104, i32 0, i32 15
  %3106 = getelementptr inbounds %struct.Reg, %struct.Reg* %3105, i32 0, i32 0
  %RBP.i344 = bitcast %union.anon* %3106 to i64*
  %3107 = load i64, i64* %RBP.i344
  %3108 = sub i64 %3107, 16
  %3109 = load i64, i64* %PC.i342
  %3110 = add i64 %3109, 4
  store i64 %3110, i64* %PC.i342
  %3111 = inttoptr i64 %3108 to i64*
  %3112 = load i64, i64* %3111
  store i64 %3112, i64* %RAX.i343, align 8
  store %struct.Memory* %loadMem_42c4d8, %struct.Memory** %MEMORY
  %loadMem_42c4dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %3113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3114 = getelementptr inbounds %struct.GPR, %struct.GPR* %3113, i32 0, i32 33
  %3115 = getelementptr inbounds %struct.Reg, %struct.Reg* %3114, i32 0, i32 0
  %PC.i339 = bitcast %union.anon* %3115 to i64*
  %3116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3117 = getelementptr inbounds %struct.GPR, %struct.GPR* %3116, i32 0, i32 5
  %3118 = getelementptr inbounds %struct.Reg, %struct.Reg* %3117, i32 0, i32 0
  %RCX.i340 = bitcast %union.anon* %3118 to i64*
  %3119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3120 = getelementptr inbounds %struct.GPR, %struct.GPR* %3119, i32 0, i32 15
  %3121 = getelementptr inbounds %struct.Reg, %struct.Reg* %3120, i32 0, i32 0
  %RBP.i341 = bitcast %union.anon* %3121 to i64*
  %3122 = load i64, i64* %RBP.i341
  %3123 = sub i64 %3122, 60
  %3124 = load i64, i64* %PC.i339
  %3125 = add i64 %3124, 4
  store i64 %3125, i64* %PC.i339
  %3126 = inttoptr i64 %3123 to i32*
  %3127 = load i32, i32* %3126
  %3128 = sext i32 %3127 to i64
  store i64 %3128, i64* %RCX.i340, align 8
  store %struct.Memory* %loadMem_42c4dc, %struct.Memory** %MEMORY
  %loadMem_42c4e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3130 = getelementptr inbounds %struct.GPR, %struct.GPR* %3129, i32 0, i32 33
  %3131 = getelementptr inbounds %struct.Reg, %struct.Reg* %3130, i32 0, i32 0
  %PC.i336 = bitcast %union.anon* %3131 to i64*
  %3132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3133 = getelementptr inbounds %struct.GPR, %struct.GPR* %3132, i32 0, i32 1
  %3134 = getelementptr inbounds %struct.Reg, %struct.Reg* %3133, i32 0, i32 0
  %RAX.i337 = bitcast %union.anon* %3134 to i64*
  %3135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3136 = getelementptr inbounds %struct.GPR, %struct.GPR* %3135, i32 0, i32 5
  %3137 = getelementptr inbounds %struct.Reg, %struct.Reg* %3136, i32 0, i32 0
  %RCX.i338 = bitcast %union.anon* %3137 to i64*
  %3138 = load i64, i64* %RAX.i337
  %3139 = load i64, i64* %RCX.i338
  %3140 = mul i64 %3139, 8
  %3141 = add i64 %3140, %3138
  %3142 = load i64, i64* %PC.i336
  %3143 = add i64 %3142, 4
  store i64 %3143, i64* %PC.i336
  %3144 = inttoptr i64 %3141 to i64*
  %3145 = load i64, i64* %3144
  store i64 %3145, i64* %RAX.i337, align 8
  store %struct.Memory* %loadMem_42c4e0, %struct.Memory** %MEMORY
  %loadMem_42c4e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3147 = getelementptr inbounds %struct.GPR, %struct.GPR* %3146, i32 0, i32 33
  %3148 = getelementptr inbounds %struct.Reg, %struct.Reg* %3147, i32 0, i32 0
  %PC.i333 = bitcast %union.anon* %3148 to i64*
  %3149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3150 = getelementptr inbounds %struct.GPR, %struct.GPR* %3149, i32 0, i32 5
  %3151 = getelementptr inbounds %struct.Reg, %struct.Reg* %3150, i32 0, i32 0
  %RCX.i334 = bitcast %union.anon* %3151 to i64*
  %3152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3153 = getelementptr inbounds %struct.GPR, %struct.GPR* %3152, i32 0, i32 15
  %3154 = getelementptr inbounds %struct.Reg, %struct.Reg* %3153, i32 0, i32 0
  %RBP.i335 = bitcast %union.anon* %3154 to i64*
  %3155 = load i64, i64* %RBP.i335
  %3156 = sub i64 %3155, 36
  %3157 = load i64, i64* %PC.i333
  %3158 = add i64 %3157, 4
  store i64 %3158, i64* %PC.i333
  %3159 = inttoptr i64 %3156 to i32*
  %3160 = load i32, i32* %3159
  %3161 = sext i32 %3160 to i64
  store i64 %3161, i64* %RCX.i334, align 8
  store %struct.Memory* %loadMem_42c4e4, %struct.Memory** %MEMORY
  %loadMem_42c4e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3163 = getelementptr inbounds %struct.GPR, %struct.GPR* %3162, i32 0, i32 33
  %3164 = getelementptr inbounds %struct.Reg, %struct.Reg* %3163, i32 0, i32 0
  %PC.i329 = bitcast %union.anon* %3164 to i64*
  %3165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3166 = getelementptr inbounds %struct.GPR, %struct.GPR* %3165, i32 0, i32 1
  %3167 = getelementptr inbounds %struct.Reg, %struct.Reg* %3166, i32 0, i32 0
  %RAX.i330 = bitcast %union.anon* %3167 to i64*
  %3168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3169 = getelementptr inbounds %struct.GPR, %struct.GPR* %3168, i32 0, i32 5
  %3170 = getelementptr inbounds %struct.Reg, %struct.Reg* %3169, i32 0, i32 0
  %RCX.i331 = bitcast %union.anon* %3170 to i64*
  %3171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3172 = getelementptr inbounds %struct.GPR, %struct.GPR* %3171, i32 0, i32 7
  %3173 = getelementptr inbounds %struct.Reg, %struct.Reg* %3172, i32 0, i32 0
  %RDX.i332 = bitcast %union.anon* %3173 to i64*
  %3174 = load i64, i64* %RAX.i330
  %3175 = load i64, i64* %RCX.i331
  %3176 = add i64 %3175, %3174
  %3177 = load i64, i64* %PC.i329
  %3178 = add i64 %3177, 4
  store i64 %3178, i64* %PC.i329
  %3179 = inttoptr i64 %3176 to i8*
  %3180 = load i8, i8* %3179
  %3181 = sext i8 %3180 to i64
  %3182 = and i64 %3181, 4294967295
  store i64 %3182, i64* %RDX.i332, align 8
  store %struct.Memory* %loadMem_42c4e8, %struct.Memory** %MEMORY
  %loadMem_42c4ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %3183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3184 = getelementptr inbounds %struct.GPR, %struct.GPR* %3183, i32 0, i32 33
  %3185 = getelementptr inbounds %struct.Reg, %struct.Reg* %3184, i32 0, i32 0
  %PC.i327 = bitcast %union.anon* %3185 to i64*
  %3186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3187 = getelementptr inbounds %struct.GPR, %struct.GPR* %3186, i32 0, i32 7
  %3188 = getelementptr inbounds %struct.Reg, %struct.Reg* %3187, i32 0, i32 0
  %EDX.i328 = bitcast %union.anon* %3188 to i32*
  %3189 = load i32, i32* %EDX.i328
  %3190 = zext i32 %3189 to i64
  %3191 = load i64, i64* %PC.i327
  %3192 = add i64 %3191, 3
  store i64 %3192, i64* %PC.i327
  %3193 = sub i32 %3189, 126
  %3194 = icmp ult i32 %3189, 126
  %3195 = zext i1 %3194 to i8
  %3196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3195, i8* %3196, align 1
  %3197 = and i32 %3193, 255
  %3198 = call i32 @llvm.ctpop.i32(i32 %3197)
  %3199 = trunc i32 %3198 to i8
  %3200 = and i8 %3199, 1
  %3201 = xor i8 %3200, 1
  %3202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3201, i8* %3202, align 1
  %3203 = xor i64 126, %3190
  %3204 = trunc i64 %3203 to i32
  %3205 = xor i32 %3204, %3193
  %3206 = lshr i32 %3205, 4
  %3207 = trunc i32 %3206 to i8
  %3208 = and i8 %3207, 1
  %3209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3208, i8* %3209, align 1
  %3210 = icmp eq i32 %3193, 0
  %3211 = zext i1 %3210 to i8
  %3212 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3211, i8* %3212, align 1
  %3213 = lshr i32 %3193, 31
  %3214 = trunc i32 %3213 to i8
  %3215 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3214, i8* %3215, align 1
  %3216 = lshr i32 %3189, 31
  %3217 = xor i32 %3213, %3216
  %3218 = add i32 %3217, %3216
  %3219 = icmp eq i32 %3218, 2
  %3220 = zext i1 %3219 to i8
  %3221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3220, i8* %3221, align 1
  store %struct.Memory* %loadMem_42c4ec, %struct.Memory** %MEMORY
  %loadMem_42c4ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %3222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3223 = getelementptr inbounds %struct.GPR, %struct.GPR* %3222, i32 0, i32 33
  %3224 = getelementptr inbounds %struct.Reg, %struct.Reg* %3223, i32 0, i32 0
  %PC.i326 = bitcast %union.anon* %3224 to i64*
  %3225 = load i64, i64* %PC.i326
  %3226 = add i64 %3225, 252
  %3227 = load i64, i64* %PC.i326
  %3228 = add i64 %3227, 6
  %3229 = load i64, i64* %PC.i326
  %3230 = add i64 %3229, 6
  store i64 %3230, i64* %PC.i326
  %3231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3232 = load i8, i8* %3231, align 1
  store i8 %3232, i8* %BRANCH_TAKEN, align 1
  %3233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3234 = icmp ne i8 %3232, 0
  %3235 = select i1 %3234, i64 %3226, i64 %3228
  store i64 %3235, i64* %3233, align 8
  store %struct.Memory* %loadMem_42c4ef, %struct.Memory** %MEMORY
  %loadBr_42c4ef = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42c4ef = icmp eq i8 %loadBr_42c4ef, 1
  br i1 %cmpBr_42c4ef, label %block_.L_42c5eb, label %block_42c4f5

block_42c4f5:                                     ; preds = %block_42c4d8
  %loadMem_42c4f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3237 = getelementptr inbounds %struct.GPR, %struct.GPR* %3236, i32 0, i32 33
  %3238 = getelementptr inbounds %struct.Reg, %struct.Reg* %3237, i32 0, i32 0
  %PC.i323 = bitcast %union.anon* %3238 to i64*
  %3239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3240 = getelementptr inbounds %struct.GPR, %struct.GPR* %3239, i32 0, i32 1
  %3241 = getelementptr inbounds %struct.Reg, %struct.Reg* %3240, i32 0, i32 0
  %RAX.i324 = bitcast %union.anon* %3241 to i64*
  %3242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3243 = getelementptr inbounds %struct.GPR, %struct.GPR* %3242, i32 0, i32 15
  %3244 = getelementptr inbounds %struct.Reg, %struct.Reg* %3243, i32 0, i32 0
  %RBP.i325 = bitcast %union.anon* %3244 to i64*
  %3245 = load i64, i64* %RBP.i325
  %3246 = sub i64 %3245, 16
  %3247 = load i64, i64* %PC.i323
  %3248 = add i64 %3247, 4
  store i64 %3248, i64* %PC.i323
  %3249 = inttoptr i64 %3246 to i64*
  %3250 = load i64, i64* %3249
  store i64 %3250, i64* %RAX.i324, align 8
  store %struct.Memory* %loadMem_42c4f5, %struct.Memory** %MEMORY
  %loadMem_42c4f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3252 = getelementptr inbounds %struct.GPR, %struct.GPR* %3251, i32 0, i32 33
  %3253 = getelementptr inbounds %struct.Reg, %struct.Reg* %3252, i32 0, i32 0
  %PC.i320 = bitcast %union.anon* %3253 to i64*
  %3254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3255 = getelementptr inbounds %struct.GPR, %struct.GPR* %3254, i32 0, i32 5
  %3256 = getelementptr inbounds %struct.Reg, %struct.Reg* %3255, i32 0, i32 0
  %RCX.i321 = bitcast %union.anon* %3256 to i64*
  %3257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3258 = getelementptr inbounds %struct.GPR, %struct.GPR* %3257, i32 0, i32 15
  %3259 = getelementptr inbounds %struct.Reg, %struct.Reg* %3258, i32 0, i32 0
  %RBP.i322 = bitcast %union.anon* %3259 to i64*
  %3260 = load i64, i64* %RBP.i322
  %3261 = sub i64 %3260, 60
  %3262 = load i64, i64* %PC.i320
  %3263 = add i64 %3262, 4
  store i64 %3263, i64* %PC.i320
  %3264 = inttoptr i64 %3261 to i32*
  %3265 = load i32, i32* %3264
  %3266 = sext i32 %3265 to i64
  store i64 %3266, i64* %RCX.i321, align 8
  store %struct.Memory* %loadMem_42c4f9, %struct.Memory** %MEMORY
  %loadMem_42c4fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %3267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3268 = getelementptr inbounds %struct.GPR, %struct.GPR* %3267, i32 0, i32 33
  %3269 = getelementptr inbounds %struct.Reg, %struct.Reg* %3268, i32 0, i32 0
  %PC.i317 = bitcast %union.anon* %3269 to i64*
  %3270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3271 = getelementptr inbounds %struct.GPR, %struct.GPR* %3270, i32 0, i32 1
  %3272 = getelementptr inbounds %struct.Reg, %struct.Reg* %3271, i32 0, i32 0
  %RAX.i318 = bitcast %union.anon* %3272 to i64*
  %3273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3274 = getelementptr inbounds %struct.GPR, %struct.GPR* %3273, i32 0, i32 5
  %3275 = getelementptr inbounds %struct.Reg, %struct.Reg* %3274, i32 0, i32 0
  %RCX.i319 = bitcast %union.anon* %3275 to i64*
  %3276 = load i64, i64* %RAX.i318
  %3277 = load i64, i64* %RCX.i319
  %3278 = mul i64 %3277, 8
  %3279 = add i64 %3278, %3276
  %3280 = load i64, i64* %PC.i317
  %3281 = add i64 %3280, 4
  store i64 %3281, i64* %PC.i317
  %3282 = inttoptr i64 %3279 to i64*
  %3283 = load i64, i64* %3282
  store i64 %3283, i64* %RAX.i318, align 8
  store %struct.Memory* %loadMem_42c4fd, %struct.Memory** %MEMORY
  %loadMem_42c501 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3285 = getelementptr inbounds %struct.GPR, %struct.GPR* %3284, i32 0, i32 33
  %3286 = getelementptr inbounds %struct.Reg, %struct.Reg* %3285, i32 0, i32 0
  %PC.i314 = bitcast %union.anon* %3286 to i64*
  %3287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3288 = getelementptr inbounds %struct.GPR, %struct.GPR* %3287, i32 0, i32 5
  %3289 = getelementptr inbounds %struct.Reg, %struct.Reg* %3288, i32 0, i32 0
  %RCX.i315 = bitcast %union.anon* %3289 to i64*
  %3290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3291 = getelementptr inbounds %struct.GPR, %struct.GPR* %3290, i32 0, i32 15
  %3292 = getelementptr inbounds %struct.Reg, %struct.Reg* %3291, i32 0, i32 0
  %RBP.i316 = bitcast %union.anon* %3292 to i64*
  %3293 = load i64, i64* %RBP.i316
  %3294 = sub i64 %3293, 40
  %3295 = load i64, i64* %PC.i314
  %3296 = add i64 %3295, 4
  store i64 %3296, i64* %PC.i314
  %3297 = inttoptr i64 %3294 to i32*
  %3298 = load i32, i32* %3297
  %3299 = sext i32 %3298 to i64
  store i64 %3299, i64* %RCX.i315, align 8
  store %struct.Memory* %loadMem_42c501, %struct.Memory** %MEMORY
  %loadMem_42c505 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3301 = getelementptr inbounds %struct.GPR, %struct.GPR* %3300, i32 0, i32 33
  %3302 = getelementptr inbounds %struct.Reg, %struct.Reg* %3301, i32 0, i32 0
  %PC.i310 = bitcast %union.anon* %3302 to i64*
  %3303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3304 = getelementptr inbounds %struct.GPR, %struct.GPR* %3303, i32 0, i32 1
  %3305 = getelementptr inbounds %struct.Reg, %struct.Reg* %3304, i32 0, i32 0
  %RAX.i311 = bitcast %union.anon* %3305 to i64*
  %3306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3307 = getelementptr inbounds %struct.GPR, %struct.GPR* %3306, i32 0, i32 5
  %3308 = getelementptr inbounds %struct.Reg, %struct.Reg* %3307, i32 0, i32 0
  %RCX.i312 = bitcast %union.anon* %3308 to i64*
  %3309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3310 = getelementptr inbounds %struct.GPR, %struct.GPR* %3309, i32 0, i32 7
  %3311 = getelementptr inbounds %struct.Reg, %struct.Reg* %3310, i32 0, i32 0
  %RDX.i313 = bitcast %union.anon* %3311 to i64*
  %3312 = load i64, i64* %RAX.i311
  %3313 = load i64, i64* %RCX.i312
  %3314 = add i64 %3313, %3312
  %3315 = load i64, i64* %PC.i310
  %3316 = add i64 %3315, 4
  store i64 %3316, i64* %PC.i310
  %3317 = inttoptr i64 %3314 to i8*
  %3318 = load i8, i8* %3317
  %3319 = sext i8 %3318 to i64
  %3320 = and i64 %3319, 4294967295
  store i64 %3320, i64* %RDX.i313, align 8
  store %struct.Memory* %loadMem_42c505, %struct.Memory** %MEMORY
  %loadMem_42c509 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3322 = getelementptr inbounds %struct.GPR, %struct.GPR* %3321, i32 0, i32 33
  %3323 = getelementptr inbounds %struct.Reg, %struct.Reg* %3322, i32 0, i32 0
  %PC.i308 = bitcast %union.anon* %3323 to i64*
  %3324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3325 = getelementptr inbounds %struct.GPR, %struct.GPR* %3324, i32 0, i32 7
  %3326 = getelementptr inbounds %struct.Reg, %struct.Reg* %3325, i32 0, i32 0
  %EDX.i309 = bitcast %union.anon* %3326 to i32*
  %3327 = load i32, i32* %EDX.i309
  %3328 = zext i32 %3327 to i64
  %3329 = load i64, i64* %PC.i308
  %3330 = add i64 %3329, 3
  store i64 %3330, i64* %PC.i308
  %3331 = sub i32 %3327, 95
  %3332 = icmp ult i32 %3327, 95
  %3333 = zext i1 %3332 to i8
  %3334 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3333, i8* %3334, align 1
  %3335 = and i32 %3331, 255
  %3336 = call i32 @llvm.ctpop.i32(i32 %3335)
  %3337 = trunc i32 %3336 to i8
  %3338 = and i8 %3337, 1
  %3339 = xor i8 %3338, 1
  %3340 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3339, i8* %3340, align 1
  %3341 = xor i64 95, %3328
  %3342 = trunc i64 %3341 to i32
  %3343 = xor i32 %3342, %3331
  %3344 = lshr i32 %3343, 4
  %3345 = trunc i32 %3344 to i8
  %3346 = and i8 %3345, 1
  %3347 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3346, i8* %3347, align 1
  %3348 = icmp eq i32 %3331, 0
  %3349 = zext i1 %3348 to i8
  %3350 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3349, i8* %3350, align 1
  %3351 = lshr i32 %3331, 31
  %3352 = trunc i32 %3351 to i8
  %3353 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3352, i8* %3353, align 1
  %3354 = lshr i32 %3327, 31
  %3355 = xor i32 %3351, %3354
  %3356 = add i32 %3355, %3354
  %3357 = icmp eq i32 %3356, 2
  %3358 = zext i1 %3357 to i8
  %3359 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3358, i8* %3359, align 1
  store %struct.Memory* %loadMem_42c509, %struct.Memory** %MEMORY
  %loadMem_42c50c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3361 = getelementptr inbounds %struct.GPR, %struct.GPR* %3360, i32 0, i32 33
  %3362 = getelementptr inbounds %struct.Reg, %struct.Reg* %3361, i32 0, i32 0
  %PC.i307 = bitcast %union.anon* %3362 to i64*
  %3363 = load i64, i64* %PC.i307
  %3364 = add i64 %3363, 11
  %3365 = load i64, i64* %PC.i307
  %3366 = add i64 %3365, 6
  %3367 = load i64, i64* %PC.i307
  %3368 = add i64 %3367, 6
  store i64 %3368, i64* %PC.i307
  %3369 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3370 = load i8, i8* %3369, align 1
  %3371 = icmp eq i8 %3370, 0
  %3372 = zext i1 %3371 to i8
  store i8 %3372, i8* %BRANCH_TAKEN, align 1
  %3373 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3374 = select i1 %3371, i64 %3364, i64 %3366
  store i64 %3374, i64* %3373, align 8
  store %struct.Memory* %loadMem_42c50c, %struct.Memory** %MEMORY
  %loadBr_42c50c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42c50c = icmp eq i8 %loadBr_42c50c, 1
  br i1 %cmpBr_42c50c, label %block_.L_42c517, label %block_42c512

block_42c512:                                     ; preds = %block_42c4f5
  %loadMem_42c512 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3376 = getelementptr inbounds %struct.GPR, %struct.GPR* %3375, i32 0, i32 33
  %3377 = getelementptr inbounds %struct.Reg, %struct.Reg* %3376, i32 0, i32 0
  %PC.i306 = bitcast %union.anon* %3377 to i64*
  %3378 = load i64, i64* %PC.i306
  %3379 = add i64 %3378, 212
  %3380 = load i64, i64* %PC.i306
  %3381 = add i64 %3380, 5
  store i64 %3381, i64* %PC.i306
  %3382 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3379, i64* %3382, align 8
  store %struct.Memory* %loadMem_42c512, %struct.Memory** %MEMORY
  br label %block_.L_42c5e6

block_.L_42c517:                                  ; preds = %block_42c4f5
  %loadMem_42c517 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3384 = getelementptr inbounds %struct.GPR, %struct.GPR* %3383, i32 0, i32 33
  %3385 = getelementptr inbounds %struct.Reg, %struct.Reg* %3384, i32 0, i32 0
  %PC.i303 = bitcast %union.anon* %3385 to i64*
  %3386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3387 = getelementptr inbounds %struct.GPR, %struct.GPR* %3386, i32 0, i32 1
  %3388 = getelementptr inbounds %struct.Reg, %struct.Reg* %3387, i32 0, i32 0
  %RAX.i304 = bitcast %union.anon* %3388 to i64*
  %3389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3390 = getelementptr inbounds %struct.GPR, %struct.GPR* %3389, i32 0, i32 15
  %3391 = getelementptr inbounds %struct.Reg, %struct.Reg* %3390, i32 0, i32 0
  %RBP.i305 = bitcast %union.anon* %3391 to i64*
  %3392 = load i64, i64* %RBP.i305
  %3393 = sub i64 %3392, 16
  %3394 = load i64, i64* %PC.i303
  %3395 = add i64 %3394, 4
  store i64 %3395, i64* %PC.i303
  %3396 = inttoptr i64 %3393 to i64*
  %3397 = load i64, i64* %3396
  store i64 %3397, i64* %RAX.i304, align 8
  store %struct.Memory* %loadMem_42c517, %struct.Memory** %MEMORY
  %loadMem_42c51b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3398 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3399 = getelementptr inbounds %struct.GPR, %struct.GPR* %3398, i32 0, i32 33
  %3400 = getelementptr inbounds %struct.Reg, %struct.Reg* %3399, i32 0, i32 0
  %PC.i300 = bitcast %union.anon* %3400 to i64*
  %3401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3402 = getelementptr inbounds %struct.GPR, %struct.GPR* %3401, i32 0, i32 5
  %3403 = getelementptr inbounds %struct.Reg, %struct.Reg* %3402, i32 0, i32 0
  %RCX.i301 = bitcast %union.anon* %3403 to i64*
  %3404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3405 = getelementptr inbounds %struct.GPR, %struct.GPR* %3404, i32 0, i32 15
  %3406 = getelementptr inbounds %struct.Reg, %struct.Reg* %3405, i32 0, i32 0
  %RBP.i302 = bitcast %union.anon* %3406 to i64*
  %3407 = load i64, i64* %RBP.i302
  %3408 = sub i64 %3407, 60
  %3409 = load i64, i64* %PC.i300
  %3410 = add i64 %3409, 4
  store i64 %3410, i64* %PC.i300
  %3411 = inttoptr i64 %3408 to i32*
  %3412 = load i32, i32* %3411
  %3413 = sext i32 %3412 to i64
  store i64 %3413, i64* %RCX.i301, align 8
  store %struct.Memory* %loadMem_42c51b, %struct.Memory** %MEMORY
  %loadMem_42c51f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3415 = getelementptr inbounds %struct.GPR, %struct.GPR* %3414, i32 0, i32 33
  %3416 = getelementptr inbounds %struct.Reg, %struct.Reg* %3415, i32 0, i32 0
  %PC.i297 = bitcast %union.anon* %3416 to i64*
  %3417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3418 = getelementptr inbounds %struct.GPR, %struct.GPR* %3417, i32 0, i32 1
  %3419 = getelementptr inbounds %struct.Reg, %struct.Reg* %3418, i32 0, i32 0
  %RAX.i298 = bitcast %union.anon* %3419 to i64*
  %3420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3421 = getelementptr inbounds %struct.GPR, %struct.GPR* %3420, i32 0, i32 5
  %3422 = getelementptr inbounds %struct.Reg, %struct.Reg* %3421, i32 0, i32 0
  %RCX.i299 = bitcast %union.anon* %3422 to i64*
  %3423 = load i64, i64* %RAX.i298
  %3424 = load i64, i64* %RCX.i299
  %3425 = mul i64 %3424, 8
  %3426 = add i64 %3425, %3423
  %3427 = load i64, i64* %PC.i297
  %3428 = add i64 %3427, 4
  store i64 %3428, i64* %PC.i297
  %3429 = inttoptr i64 %3426 to i64*
  %3430 = load i64, i64* %3429
  store i64 %3430, i64* %RAX.i298, align 8
  store %struct.Memory* %loadMem_42c51f, %struct.Memory** %MEMORY
  %loadMem_42c523 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3432 = getelementptr inbounds %struct.GPR, %struct.GPR* %3431, i32 0, i32 33
  %3433 = getelementptr inbounds %struct.Reg, %struct.Reg* %3432, i32 0, i32 0
  %PC.i294 = bitcast %union.anon* %3433 to i64*
  %3434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3435 = getelementptr inbounds %struct.GPR, %struct.GPR* %3434, i32 0, i32 5
  %3436 = getelementptr inbounds %struct.Reg, %struct.Reg* %3435, i32 0, i32 0
  %RCX.i295 = bitcast %union.anon* %3436 to i64*
  %3437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3438 = getelementptr inbounds %struct.GPR, %struct.GPR* %3437, i32 0, i32 15
  %3439 = getelementptr inbounds %struct.Reg, %struct.Reg* %3438, i32 0, i32 0
  %RBP.i296 = bitcast %union.anon* %3439 to i64*
  %3440 = load i64, i64* %RBP.i296
  %3441 = sub i64 %3440, 40
  %3442 = load i64, i64* %PC.i294
  %3443 = add i64 %3442, 4
  store i64 %3443, i64* %PC.i294
  %3444 = inttoptr i64 %3441 to i32*
  %3445 = load i32, i32* %3444
  %3446 = sext i32 %3445 to i64
  store i64 %3446, i64* %RCX.i295, align 8
  store %struct.Memory* %loadMem_42c523, %struct.Memory** %MEMORY
  %loadMem_42c527 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3447 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3448 = getelementptr inbounds %struct.GPR, %struct.GPR* %3447, i32 0, i32 33
  %3449 = getelementptr inbounds %struct.Reg, %struct.Reg* %3448, i32 0, i32 0
  %PC.i290 = bitcast %union.anon* %3449 to i64*
  %3450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3451 = getelementptr inbounds %struct.GPR, %struct.GPR* %3450, i32 0, i32 1
  %3452 = getelementptr inbounds %struct.Reg, %struct.Reg* %3451, i32 0, i32 0
  %RAX.i291 = bitcast %union.anon* %3452 to i64*
  %3453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3454 = getelementptr inbounds %struct.GPR, %struct.GPR* %3453, i32 0, i32 5
  %3455 = getelementptr inbounds %struct.Reg, %struct.Reg* %3454, i32 0, i32 0
  %RCX.i292 = bitcast %union.anon* %3455 to i64*
  %3456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3457 = getelementptr inbounds %struct.GPR, %struct.GPR* %3456, i32 0, i32 7
  %3458 = getelementptr inbounds %struct.Reg, %struct.Reg* %3457, i32 0, i32 0
  %RDX.i293 = bitcast %union.anon* %3458 to i64*
  %3459 = load i64, i64* %RAX.i291
  %3460 = load i64, i64* %RCX.i292
  %3461 = add i64 %3460, %3459
  %3462 = load i64, i64* %PC.i290
  %3463 = add i64 %3462, 4
  store i64 %3463, i64* %PC.i290
  %3464 = inttoptr i64 %3461 to i8*
  %3465 = load i8, i8* %3464
  %3466 = sext i8 %3465 to i64
  %3467 = and i64 %3466, 4294967295
  store i64 %3467, i64* %RDX.i293, align 8
  store %struct.Memory* %loadMem_42c527, %struct.Memory** %MEMORY
  %loadMem_42c52b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3469 = getelementptr inbounds %struct.GPR, %struct.GPR* %3468, i32 0, i32 33
  %3470 = getelementptr inbounds %struct.Reg, %struct.Reg* %3469, i32 0, i32 0
  %PC.i288 = bitcast %union.anon* %3470 to i64*
  %3471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3472 = getelementptr inbounds %struct.GPR, %struct.GPR* %3471, i32 0, i32 7
  %3473 = getelementptr inbounds %struct.Reg, %struct.Reg* %3472, i32 0, i32 0
  %EDX.i289 = bitcast %union.anon* %3473 to i32*
  %3474 = load i32, i32* %EDX.i289
  %3475 = zext i32 %3474 to i64
  %3476 = load i64, i64* %PC.i288
  %3477 = add i64 %3476, 3
  store i64 %3477, i64* %PC.i288
  %3478 = sub i32 %3474, 32
  %3479 = icmp ult i32 %3474, 32
  %3480 = zext i1 %3479 to i8
  %3481 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3480, i8* %3481, align 1
  %3482 = and i32 %3478, 255
  %3483 = call i32 @llvm.ctpop.i32(i32 %3482)
  %3484 = trunc i32 %3483 to i8
  %3485 = and i8 %3484, 1
  %3486 = xor i8 %3485, 1
  %3487 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3486, i8* %3487, align 1
  %3488 = xor i64 32, %3475
  %3489 = trunc i64 %3488 to i32
  %3490 = xor i32 %3489, %3478
  %3491 = lshr i32 %3490, 4
  %3492 = trunc i32 %3491 to i8
  %3493 = and i8 %3492, 1
  %3494 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3493, i8* %3494, align 1
  %3495 = icmp eq i32 %3478, 0
  %3496 = zext i1 %3495 to i8
  %3497 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3496, i8* %3497, align 1
  %3498 = lshr i32 %3478, 31
  %3499 = trunc i32 %3498 to i8
  %3500 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3499, i8* %3500, align 1
  %3501 = lshr i32 %3474, 31
  %3502 = xor i32 %3498, %3501
  %3503 = add i32 %3502, %3501
  %3504 = icmp eq i32 %3503, 2
  %3505 = zext i1 %3504 to i8
  %3506 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3505, i8* %3506, align 1
  store %struct.Memory* %loadMem_42c52b, %struct.Memory** %MEMORY
  %loadMem_42c52e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3508 = getelementptr inbounds %struct.GPR, %struct.GPR* %3507, i32 0, i32 33
  %3509 = getelementptr inbounds %struct.Reg, %struct.Reg* %3508, i32 0, i32 0
  %PC.i287 = bitcast %union.anon* %3509 to i64*
  %3510 = load i64, i64* %PC.i287
  %3511 = add i64 %3510, 122
  %3512 = load i64, i64* %PC.i287
  %3513 = add i64 %3512, 6
  %3514 = load i64, i64* %PC.i287
  %3515 = add i64 %3514, 6
  store i64 %3515, i64* %PC.i287
  %3516 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3517 = load i8, i8* %3516, align 1
  store i8 %3517, i8* %BRANCH_TAKEN, align 1
  %3518 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3519 = icmp ne i8 %3517, 0
  %3520 = select i1 %3519, i64 %3511, i64 %3513
  store i64 %3520, i64* %3518, align 8
  store %struct.Memory* %loadMem_42c52e, %struct.Memory** %MEMORY
  %loadBr_42c52e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42c52e = icmp eq i8 %loadBr_42c52e, 1
  br i1 %cmpBr_42c52e, label %block_.L_42c5a8, label %block_42c534

block_42c534:                                     ; preds = %block_.L_42c517
  %loadMem_42c534 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3521 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3522 = getelementptr inbounds %struct.GPR, %struct.GPR* %3521, i32 0, i32 33
  %3523 = getelementptr inbounds %struct.Reg, %struct.Reg* %3522, i32 0, i32 0
  %PC.i284 = bitcast %union.anon* %3523 to i64*
  %3524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3525 = getelementptr inbounds %struct.GPR, %struct.GPR* %3524, i32 0, i32 1
  %3526 = getelementptr inbounds %struct.Reg, %struct.Reg* %3525, i32 0, i32 0
  %RAX.i285 = bitcast %union.anon* %3526 to i64*
  %3527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3528 = getelementptr inbounds %struct.GPR, %struct.GPR* %3527, i32 0, i32 15
  %3529 = getelementptr inbounds %struct.Reg, %struct.Reg* %3528, i32 0, i32 0
  %RBP.i286 = bitcast %union.anon* %3529 to i64*
  %3530 = load i64, i64* %RBP.i286
  %3531 = sub i64 %3530, 16
  %3532 = load i64, i64* %PC.i284
  %3533 = add i64 %3532, 4
  store i64 %3533, i64* %PC.i284
  %3534 = inttoptr i64 %3531 to i64*
  %3535 = load i64, i64* %3534
  store i64 %3535, i64* %RAX.i285, align 8
  store %struct.Memory* %loadMem_42c534, %struct.Memory** %MEMORY
  %loadMem_42c538 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3536 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3537 = getelementptr inbounds %struct.GPR, %struct.GPR* %3536, i32 0, i32 33
  %3538 = getelementptr inbounds %struct.Reg, %struct.Reg* %3537, i32 0, i32 0
  %PC.i281 = bitcast %union.anon* %3538 to i64*
  %3539 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3540 = getelementptr inbounds %struct.GPR, %struct.GPR* %3539, i32 0, i32 5
  %3541 = getelementptr inbounds %struct.Reg, %struct.Reg* %3540, i32 0, i32 0
  %RCX.i282 = bitcast %union.anon* %3541 to i64*
  %3542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3543 = getelementptr inbounds %struct.GPR, %struct.GPR* %3542, i32 0, i32 15
  %3544 = getelementptr inbounds %struct.Reg, %struct.Reg* %3543, i32 0, i32 0
  %RBP.i283 = bitcast %union.anon* %3544 to i64*
  %3545 = load i64, i64* %RBP.i283
  %3546 = sub i64 %3545, 60
  %3547 = load i64, i64* %PC.i281
  %3548 = add i64 %3547, 4
  store i64 %3548, i64* %PC.i281
  %3549 = inttoptr i64 %3546 to i32*
  %3550 = load i32, i32* %3549
  %3551 = sext i32 %3550 to i64
  store i64 %3551, i64* %RCX.i282, align 8
  store %struct.Memory* %loadMem_42c538, %struct.Memory** %MEMORY
  %loadMem_42c53c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3553 = getelementptr inbounds %struct.GPR, %struct.GPR* %3552, i32 0, i32 33
  %3554 = getelementptr inbounds %struct.Reg, %struct.Reg* %3553, i32 0, i32 0
  %PC.i278 = bitcast %union.anon* %3554 to i64*
  %3555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3556 = getelementptr inbounds %struct.GPR, %struct.GPR* %3555, i32 0, i32 1
  %3557 = getelementptr inbounds %struct.Reg, %struct.Reg* %3556, i32 0, i32 0
  %RAX.i279 = bitcast %union.anon* %3557 to i64*
  %3558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3559 = getelementptr inbounds %struct.GPR, %struct.GPR* %3558, i32 0, i32 5
  %3560 = getelementptr inbounds %struct.Reg, %struct.Reg* %3559, i32 0, i32 0
  %RCX.i280 = bitcast %union.anon* %3560 to i64*
  %3561 = load i64, i64* %RAX.i279
  %3562 = load i64, i64* %RCX.i280
  %3563 = mul i64 %3562, 8
  %3564 = add i64 %3563, %3561
  %3565 = load i64, i64* %PC.i278
  %3566 = add i64 %3565, 4
  store i64 %3566, i64* %PC.i278
  %3567 = inttoptr i64 %3564 to i64*
  %3568 = load i64, i64* %3567
  store i64 %3568, i64* %RAX.i279, align 8
  store %struct.Memory* %loadMem_42c53c, %struct.Memory** %MEMORY
  %loadMem_42c540 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3569 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3570 = getelementptr inbounds %struct.GPR, %struct.GPR* %3569, i32 0, i32 33
  %3571 = getelementptr inbounds %struct.Reg, %struct.Reg* %3570, i32 0, i32 0
  %PC.i275 = bitcast %union.anon* %3571 to i64*
  %3572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3573 = getelementptr inbounds %struct.GPR, %struct.GPR* %3572, i32 0, i32 5
  %3574 = getelementptr inbounds %struct.Reg, %struct.Reg* %3573, i32 0, i32 0
  %RCX.i276 = bitcast %union.anon* %3574 to i64*
  %3575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3576 = getelementptr inbounds %struct.GPR, %struct.GPR* %3575, i32 0, i32 15
  %3577 = getelementptr inbounds %struct.Reg, %struct.Reg* %3576, i32 0, i32 0
  %RBP.i277 = bitcast %union.anon* %3577 to i64*
  %3578 = load i64, i64* %RBP.i277
  %3579 = sub i64 %3578, 40
  %3580 = load i64, i64* %PC.i275
  %3581 = add i64 %3580, 4
  store i64 %3581, i64* %PC.i275
  %3582 = inttoptr i64 %3579 to i32*
  %3583 = load i32, i32* %3582
  %3584 = sext i32 %3583 to i64
  store i64 %3584, i64* %RCX.i276, align 8
  store %struct.Memory* %loadMem_42c540, %struct.Memory** %MEMORY
  %loadMem_42c544 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3586 = getelementptr inbounds %struct.GPR, %struct.GPR* %3585, i32 0, i32 33
  %3587 = getelementptr inbounds %struct.Reg, %struct.Reg* %3586, i32 0, i32 0
  %PC.i271 = bitcast %union.anon* %3587 to i64*
  %3588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3589 = getelementptr inbounds %struct.GPR, %struct.GPR* %3588, i32 0, i32 1
  %3590 = getelementptr inbounds %struct.Reg, %struct.Reg* %3589, i32 0, i32 0
  %RAX.i272 = bitcast %union.anon* %3590 to i64*
  %3591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3592 = getelementptr inbounds %struct.GPR, %struct.GPR* %3591, i32 0, i32 5
  %3593 = getelementptr inbounds %struct.Reg, %struct.Reg* %3592, i32 0, i32 0
  %RCX.i273 = bitcast %union.anon* %3593 to i64*
  %3594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3595 = getelementptr inbounds %struct.GPR, %struct.GPR* %3594, i32 0, i32 7
  %3596 = getelementptr inbounds %struct.Reg, %struct.Reg* %3595, i32 0, i32 0
  %RDX.i274 = bitcast %union.anon* %3596 to i64*
  %3597 = load i64, i64* %RAX.i272
  %3598 = load i64, i64* %RCX.i273
  %3599 = add i64 %3598, %3597
  %3600 = load i64, i64* %PC.i271
  %3601 = add i64 %3600, 4
  store i64 %3601, i64* %PC.i271
  %3602 = inttoptr i64 %3599 to i8*
  %3603 = load i8, i8* %3602
  %3604 = sext i8 %3603 to i64
  %3605 = and i64 %3604, 4294967295
  store i64 %3605, i64* %RDX.i274, align 8
  store %struct.Memory* %loadMem_42c544, %struct.Memory** %MEMORY
  %loadMem_42c548 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3607 = getelementptr inbounds %struct.GPR, %struct.GPR* %3606, i32 0, i32 33
  %3608 = getelementptr inbounds %struct.Reg, %struct.Reg* %3607, i32 0, i32 0
  %PC.i269 = bitcast %union.anon* %3608 to i64*
  %3609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3610 = getelementptr inbounds %struct.GPR, %struct.GPR* %3609, i32 0, i32 7
  %3611 = getelementptr inbounds %struct.Reg, %struct.Reg* %3610, i32 0, i32 0
  %EDX.i270 = bitcast %union.anon* %3611 to i32*
  %3612 = load i32, i32* %EDX.i270
  %3613 = zext i32 %3612 to i64
  %3614 = load i64, i64* %PC.i269
  %3615 = add i64 %3614, 3
  store i64 %3615, i64* %PC.i269
  %3616 = sub i32 %3612, 46
  %3617 = icmp ult i32 %3612, 46
  %3618 = zext i1 %3617 to i8
  %3619 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3618, i8* %3619, align 1
  %3620 = and i32 %3616, 255
  %3621 = call i32 @llvm.ctpop.i32(i32 %3620)
  %3622 = trunc i32 %3621 to i8
  %3623 = and i8 %3622, 1
  %3624 = xor i8 %3623, 1
  %3625 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3624, i8* %3625, align 1
  %3626 = xor i64 46, %3613
  %3627 = trunc i64 %3626 to i32
  %3628 = xor i32 %3627, %3616
  %3629 = lshr i32 %3628, 4
  %3630 = trunc i32 %3629 to i8
  %3631 = and i8 %3630, 1
  %3632 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3631, i8* %3632, align 1
  %3633 = icmp eq i32 %3616, 0
  %3634 = zext i1 %3633 to i8
  %3635 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3634, i8* %3635, align 1
  %3636 = lshr i32 %3616, 31
  %3637 = trunc i32 %3636 to i8
  %3638 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3637, i8* %3638, align 1
  %3639 = lshr i32 %3612, 31
  %3640 = xor i32 %3636, %3639
  %3641 = add i32 %3640, %3639
  %3642 = icmp eq i32 %3641, 2
  %3643 = zext i1 %3642 to i8
  %3644 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3643, i8* %3644, align 1
  store %struct.Memory* %loadMem_42c548, %struct.Memory** %MEMORY
  %loadMem_42c54b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3645 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3646 = getelementptr inbounds %struct.GPR, %struct.GPR* %3645, i32 0, i32 33
  %3647 = getelementptr inbounds %struct.Reg, %struct.Reg* %3646, i32 0, i32 0
  %PC.i268 = bitcast %union.anon* %3647 to i64*
  %3648 = load i64, i64* %PC.i268
  %3649 = add i64 %3648, 93
  %3650 = load i64, i64* %PC.i268
  %3651 = add i64 %3650, 6
  %3652 = load i64, i64* %PC.i268
  %3653 = add i64 %3652, 6
  store i64 %3653, i64* %PC.i268
  %3654 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3655 = load i8, i8* %3654, align 1
  store i8 %3655, i8* %BRANCH_TAKEN, align 1
  %3656 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3657 = icmp ne i8 %3655, 0
  %3658 = select i1 %3657, i64 %3649, i64 %3651
  store i64 %3658, i64* %3656, align 8
  store %struct.Memory* %loadMem_42c54b, %struct.Memory** %MEMORY
  %loadBr_42c54b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42c54b = icmp eq i8 %loadBr_42c54b, 1
  br i1 %cmpBr_42c54b, label %block_.L_42c5a8, label %block_42c551

block_42c551:                                     ; preds = %block_42c534
  %loadMem_42c551 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3659 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3660 = getelementptr inbounds %struct.GPR, %struct.GPR* %3659, i32 0, i32 33
  %3661 = getelementptr inbounds %struct.Reg, %struct.Reg* %3660, i32 0, i32 0
  %PC.i265 = bitcast %union.anon* %3661 to i64*
  %3662 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3663 = getelementptr inbounds %struct.GPR, %struct.GPR* %3662, i32 0, i32 1
  %3664 = getelementptr inbounds %struct.Reg, %struct.Reg* %3663, i32 0, i32 0
  %RAX.i266 = bitcast %union.anon* %3664 to i64*
  %3665 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3666 = getelementptr inbounds %struct.GPR, %struct.GPR* %3665, i32 0, i32 15
  %3667 = getelementptr inbounds %struct.Reg, %struct.Reg* %3666, i32 0, i32 0
  %RBP.i267 = bitcast %union.anon* %3667 to i64*
  %3668 = load i64, i64* %RBP.i267
  %3669 = sub i64 %3668, 16
  %3670 = load i64, i64* %PC.i265
  %3671 = add i64 %3670, 4
  store i64 %3671, i64* %PC.i265
  %3672 = inttoptr i64 %3669 to i64*
  %3673 = load i64, i64* %3672
  store i64 %3673, i64* %RAX.i266, align 8
  store %struct.Memory* %loadMem_42c551, %struct.Memory** %MEMORY
  %loadMem_42c555 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3675 = getelementptr inbounds %struct.GPR, %struct.GPR* %3674, i32 0, i32 33
  %3676 = getelementptr inbounds %struct.Reg, %struct.Reg* %3675, i32 0, i32 0
  %PC.i262 = bitcast %union.anon* %3676 to i64*
  %3677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3678 = getelementptr inbounds %struct.GPR, %struct.GPR* %3677, i32 0, i32 5
  %3679 = getelementptr inbounds %struct.Reg, %struct.Reg* %3678, i32 0, i32 0
  %RCX.i263 = bitcast %union.anon* %3679 to i64*
  %3680 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3681 = getelementptr inbounds %struct.GPR, %struct.GPR* %3680, i32 0, i32 15
  %3682 = getelementptr inbounds %struct.Reg, %struct.Reg* %3681, i32 0, i32 0
  %RBP.i264 = bitcast %union.anon* %3682 to i64*
  %3683 = load i64, i64* %RBP.i264
  %3684 = sub i64 %3683, 60
  %3685 = load i64, i64* %PC.i262
  %3686 = add i64 %3685, 4
  store i64 %3686, i64* %PC.i262
  %3687 = inttoptr i64 %3684 to i32*
  %3688 = load i32, i32* %3687
  %3689 = sext i32 %3688 to i64
  store i64 %3689, i64* %RCX.i263, align 8
  store %struct.Memory* %loadMem_42c555, %struct.Memory** %MEMORY
  %loadMem_42c559 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3691 = getelementptr inbounds %struct.GPR, %struct.GPR* %3690, i32 0, i32 33
  %3692 = getelementptr inbounds %struct.Reg, %struct.Reg* %3691, i32 0, i32 0
  %PC.i259 = bitcast %union.anon* %3692 to i64*
  %3693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3694 = getelementptr inbounds %struct.GPR, %struct.GPR* %3693, i32 0, i32 1
  %3695 = getelementptr inbounds %struct.Reg, %struct.Reg* %3694, i32 0, i32 0
  %RAX.i260 = bitcast %union.anon* %3695 to i64*
  %3696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3697 = getelementptr inbounds %struct.GPR, %struct.GPR* %3696, i32 0, i32 5
  %3698 = getelementptr inbounds %struct.Reg, %struct.Reg* %3697, i32 0, i32 0
  %RCX.i261 = bitcast %union.anon* %3698 to i64*
  %3699 = load i64, i64* %RAX.i260
  %3700 = load i64, i64* %RCX.i261
  %3701 = mul i64 %3700, 8
  %3702 = add i64 %3701, %3699
  %3703 = load i64, i64* %PC.i259
  %3704 = add i64 %3703, 4
  store i64 %3704, i64* %PC.i259
  %3705 = inttoptr i64 %3702 to i64*
  %3706 = load i64, i64* %3705
  store i64 %3706, i64* %RAX.i260, align 8
  store %struct.Memory* %loadMem_42c559, %struct.Memory** %MEMORY
  %loadMem_42c55d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3707 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3708 = getelementptr inbounds %struct.GPR, %struct.GPR* %3707, i32 0, i32 33
  %3709 = getelementptr inbounds %struct.Reg, %struct.Reg* %3708, i32 0, i32 0
  %PC.i256 = bitcast %union.anon* %3709 to i64*
  %3710 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3711 = getelementptr inbounds %struct.GPR, %struct.GPR* %3710, i32 0, i32 5
  %3712 = getelementptr inbounds %struct.Reg, %struct.Reg* %3711, i32 0, i32 0
  %RCX.i257 = bitcast %union.anon* %3712 to i64*
  %3713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3714 = getelementptr inbounds %struct.GPR, %struct.GPR* %3713, i32 0, i32 15
  %3715 = getelementptr inbounds %struct.Reg, %struct.Reg* %3714, i32 0, i32 0
  %RBP.i258 = bitcast %union.anon* %3715 to i64*
  %3716 = load i64, i64* %RBP.i258
  %3717 = sub i64 %3716, 40
  %3718 = load i64, i64* %PC.i256
  %3719 = add i64 %3718, 4
  store i64 %3719, i64* %PC.i256
  %3720 = inttoptr i64 %3717 to i32*
  %3721 = load i32, i32* %3720
  %3722 = sext i32 %3721 to i64
  store i64 %3722, i64* %RCX.i257, align 8
  store %struct.Memory* %loadMem_42c55d, %struct.Memory** %MEMORY
  %loadMem_42c561 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3723 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3724 = getelementptr inbounds %struct.GPR, %struct.GPR* %3723, i32 0, i32 33
  %3725 = getelementptr inbounds %struct.Reg, %struct.Reg* %3724, i32 0, i32 0
  %PC.i252 = bitcast %union.anon* %3725 to i64*
  %3726 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3727 = getelementptr inbounds %struct.GPR, %struct.GPR* %3726, i32 0, i32 1
  %3728 = getelementptr inbounds %struct.Reg, %struct.Reg* %3727, i32 0, i32 0
  %RAX.i253 = bitcast %union.anon* %3728 to i64*
  %3729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3730 = getelementptr inbounds %struct.GPR, %struct.GPR* %3729, i32 0, i32 5
  %3731 = getelementptr inbounds %struct.Reg, %struct.Reg* %3730, i32 0, i32 0
  %RCX.i254 = bitcast %union.anon* %3731 to i64*
  %3732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3733 = getelementptr inbounds %struct.GPR, %struct.GPR* %3732, i32 0, i32 7
  %3734 = getelementptr inbounds %struct.Reg, %struct.Reg* %3733, i32 0, i32 0
  %RDX.i255 = bitcast %union.anon* %3734 to i64*
  %3735 = load i64, i64* %RAX.i253
  %3736 = load i64, i64* %RCX.i254
  %3737 = add i64 %3736, %3735
  %3738 = load i64, i64* %PC.i252
  %3739 = add i64 %3738, 4
  store i64 %3739, i64* %PC.i252
  %3740 = inttoptr i64 %3737 to i8*
  %3741 = load i8, i8* %3740
  %3742 = sext i8 %3741 to i64
  %3743 = and i64 %3742, 4294967295
  store i64 %3743, i64* %RDX.i255, align 8
  store %struct.Memory* %loadMem_42c561, %struct.Memory** %MEMORY
  %loadMem_42c565 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3745 = getelementptr inbounds %struct.GPR, %struct.GPR* %3744, i32 0, i32 33
  %3746 = getelementptr inbounds %struct.Reg, %struct.Reg* %3745, i32 0, i32 0
  %PC.i250 = bitcast %union.anon* %3746 to i64*
  %3747 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3748 = getelementptr inbounds %struct.GPR, %struct.GPR* %3747, i32 0, i32 7
  %3749 = getelementptr inbounds %struct.Reg, %struct.Reg* %3748, i32 0, i32 0
  %EDX.i251 = bitcast %union.anon* %3749 to i32*
  %3750 = load i32, i32* %EDX.i251
  %3751 = zext i32 %3750 to i64
  %3752 = load i64, i64* %PC.i250
  %3753 = add i64 %3752, 3
  store i64 %3753, i64* %PC.i250
  %3754 = sub i32 %3750, 95
  %3755 = icmp ult i32 %3750, 95
  %3756 = zext i1 %3755 to i8
  %3757 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3756, i8* %3757, align 1
  %3758 = and i32 %3754, 255
  %3759 = call i32 @llvm.ctpop.i32(i32 %3758)
  %3760 = trunc i32 %3759 to i8
  %3761 = and i8 %3760, 1
  %3762 = xor i8 %3761, 1
  %3763 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3762, i8* %3763, align 1
  %3764 = xor i64 95, %3751
  %3765 = trunc i64 %3764 to i32
  %3766 = xor i32 %3765, %3754
  %3767 = lshr i32 %3766, 4
  %3768 = trunc i32 %3767 to i8
  %3769 = and i8 %3768, 1
  %3770 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3769, i8* %3770, align 1
  %3771 = icmp eq i32 %3754, 0
  %3772 = zext i1 %3771 to i8
  %3773 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3772, i8* %3773, align 1
  %3774 = lshr i32 %3754, 31
  %3775 = trunc i32 %3774 to i8
  %3776 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3775, i8* %3776, align 1
  %3777 = lshr i32 %3750, 31
  %3778 = xor i32 %3774, %3777
  %3779 = add i32 %3778, %3777
  %3780 = icmp eq i32 %3779, 2
  %3781 = zext i1 %3780 to i8
  %3782 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3781, i8* %3782, align 1
  store %struct.Memory* %loadMem_42c565, %struct.Memory** %MEMORY
  %loadMem_42c568 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3783 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3784 = getelementptr inbounds %struct.GPR, %struct.GPR* %3783, i32 0, i32 33
  %3785 = getelementptr inbounds %struct.Reg, %struct.Reg* %3784, i32 0, i32 0
  %PC.i249 = bitcast %union.anon* %3785 to i64*
  %3786 = load i64, i64* %PC.i249
  %3787 = add i64 %3786, 64
  %3788 = load i64, i64* %PC.i249
  %3789 = add i64 %3788, 6
  %3790 = load i64, i64* %PC.i249
  %3791 = add i64 %3790, 6
  store i64 %3791, i64* %PC.i249
  %3792 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3793 = load i8, i8* %3792, align 1
  store i8 %3793, i8* %BRANCH_TAKEN, align 1
  %3794 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3795 = icmp ne i8 %3793, 0
  %3796 = select i1 %3795, i64 %3787, i64 %3789
  store i64 %3796, i64* %3794, align 8
  store %struct.Memory* %loadMem_42c568, %struct.Memory** %MEMORY
  %loadBr_42c568 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42c568 = icmp eq i8 %loadBr_42c568, 1
  br i1 %cmpBr_42c568, label %block_.L_42c5a8, label %block_42c56e

block_42c56e:                                     ; preds = %block_42c551
  %loadMem_42c56e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3797 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3798 = getelementptr inbounds %struct.GPR, %struct.GPR* %3797, i32 0, i32 33
  %3799 = getelementptr inbounds %struct.Reg, %struct.Reg* %3798, i32 0, i32 0
  %PC.i246 = bitcast %union.anon* %3799 to i64*
  %3800 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3801 = getelementptr inbounds %struct.GPR, %struct.GPR* %3800, i32 0, i32 1
  %3802 = getelementptr inbounds %struct.Reg, %struct.Reg* %3801, i32 0, i32 0
  %RAX.i247 = bitcast %union.anon* %3802 to i64*
  %3803 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3804 = getelementptr inbounds %struct.GPR, %struct.GPR* %3803, i32 0, i32 15
  %3805 = getelementptr inbounds %struct.Reg, %struct.Reg* %3804, i32 0, i32 0
  %RBP.i248 = bitcast %union.anon* %3805 to i64*
  %3806 = load i64, i64* %RBP.i248
  %3807 = sub i64 %3806, 16
  %3808 = load i64, i64* %PC.i246
  %3809 = add i64 %3808, 4
  store i64 %3809, i64* %PC.i246
  %3810 = inttoptr i64 %3807 to i64*
  %3811 = load i64, i64* %3810
  store i64 %3811, i64* %RAX.i247, align 8
  store %struct.Memory* %loadMem_42c56e, %struct.Memory** %MEMORY
  %loadMem_42c572 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3813 = getelementptr inbounds %struct.GPR, %struct.GPR* %3812, i32 0, i32 33
  %3814 = getelementptr inbounds %struct.Reg, %struct.Reg* %3813, i32 0, i32 0
  %PC.i243 = bitcast %union.anon* %3814 to i64*
  %3815 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3816 = getelementptr inbounds %struct.GPR, %struct.GPR* %3815, i32 0, i32 5
  %3817 = getelementptr inbounds %struct.Reg, %struct.Reg* %3816, i32 0, i32 0
  %RCX.i244 = bitcast %union.anon* %3817 to i64*
  %3818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3819 = getelementptr inbounds %struct.GPR, %struct.GPR* %3818, i32 0, i32 15
  %3820 = getelementptr inbounds %struct.Reg, %struct.Reg* %3819, i32 0, i32 0
  %RBP.i245 = bitcast %union.anon* %3820 to i64*
  %3821 = load i64, i64* %RBP.i245
  %3822 = sub i64 %3821, 60
  %3823 = load i64, i64* %PC.i243
  %3824 = add i64 %3823, 4
  store i64 %3824, i64* %PC.i243
  %3825 = inttoptr i64 %3822 to i32*
  %3826 = load i32, i32* %3825
  %3827 = sext i32 %3826 to i64
  store i64 %3827, i64* %RCX.i244, align 8
  store %struct.Memory* %loadMem_42c572, %struct.Memory** %MEMORY
  %loadMem_42c576 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3829 = getelementptr inbounds %struct.GPR, %struct.GPR* %3828, i32 0, i32 33
  %3830 = getelementptr inbounds %struct.Reg, %struct.Reg* %3829, i32 0, i32 0
  %PC.i240 = bitcast %union.anon* %3830 to i64*
  %3831 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3832 = getelementptr inbounds %struct.GPR, %struct.GPR* %3831, i32 0, i32 1
  %3833 = getelementptr inbounds %struct.Reg, %struct.Reg* %3832, i32 0, i32 0
  %RAX.i241 = bitcast %union.anon* %3833 to i64*
  %3834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3835 = getelementptr inbounds %struct.GPR, %struct.GPR* %3834, i32 0, i32 5
  %3836 = getelementptr inbounds %struct.Reg, %struct.Reg* %3835, i32 0, i32 0
  %RCX.i242 = bitcast %union.anon* %3836 to i64*
  %3837 = load i64, i64* %RAX.i241
  %3838 = load i64, i64* %RCX.i242
  %3839 = mul i64 %3838, 8
  %3840 = add i64 %3839, %3837
  %3841 = load i64, i64* %PC.i240
  %3842 = add i64 %3841, 4
  store i64 %3842, i64* %PC.i240
  %3843 = inttoptr i64 %3840 to i64*
  %3844 = load i64, i64* %3843
  store i64 %3844, i64* %RAX.i241, align 8
  store %struct.Memory* %loadMem_42c576, %struct.Memory** %MEMORY
  %loadMem_42c57a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3846 = getelementptr inbounds %struct.GPR, %struct.GPR* %3845, i32 0, i32 33
  %3847 = getelementptr inbounds %struct.Reg, %struct.Reg* %3846, i32 0, i32 0
  %PC.i237 = bitcast %union.anon* %3847 to i64*
  %3848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3849 = getelementptr inbounds %struct.GPR, %struct.GPR* %3848, i32 0, i32 5
  %3850 = getelementptr inbounds %struct.Reg, %struct.Reg* %3849, i32 0, i32 0
  %RCX.i238 = bitcast %union.anon* %3850 to i64*
  %3851 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3852 = getelementptr inbounds %struct.GPR, %struct.GPR* %3851, i32 0, i32 15
  %3853 = getelementptr inbounds %struct.Reg, %struct.Reg* %3852, i32 0, i32 0
  %RBP.i239 = bitcast %union.anon* %3853 to i64*
  %3854 = load i64, i64* %RBP.i239
  %3855 = sub i64 %3854, 40
  %3856 = load i64, i64* %PC.i237
  %3857 = add i64 %3856, 4
  store i64 %3857, i64* %PC.i237
  %3858 = inttoptr i64 %3855 to i32*
  %3859 = load i32, i32* %3858
  %3860 = sext i32 %3859 to i64
  store i64 %3860, i64* %RCX.i238, align 8
  store %struct.Memory* %loadMem_42c57a, %struct.Memory** %MEMORY
  %loadMem_42c57e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3861 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3862 = getelementptr inbounds %struct.GPR, %struct.GPR* %3861, i32 0, i32 33
  %3863 = getelementptr inbounds %struct.Reg, %struct.Reg* %3862, i32 0, i32 0
  %PC.i233 = bitcast %union.anon* %3863 to i64*
  %3864 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3865 = getelementptr inbounds %struct.GPR, %struct.GPR* %3864, i32 0, i32 1
  %3866 = getelementptr inbounds %struct.Reg, %struct.Reg* %3865, i32 0, i32 0
  %RAX.i234 = bitcast %union.anon* %3866 to i64*
  %3867 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3868 = getelementptr inbounds %struct.GPR, %struct.GPR* %3867, i32 0, i32 5
  %3869 = getelementptr inbounds %struct.Reg, %struct.Reg* %3868, i32 0, i32 0
  %RCX.i235 = bitcast %union.anon* %3869 to i64*
  %3870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3871 = getelementptr inbounds %struct.GPR, %struct.GPR* %3870, i32 0, i32 7
  %3872 = getelementptr inbounds %struct.Reg, %struct.Reg* %3871, i32 0, i32 0
  %RDX.i236 = bitcast %union.anon* %3872 to i64*
  %3873 = load i64, i64* %RAX.i234
  %3874 = load i64, i64* %RCX.i235
  %3875 = add i64 %3874, %3873
  %3876 = load i64, i64* %PC.i233
  %3877 = add i64 %3876, 4
  store i64 %3877, i64* %PC.i233
  %3878 = inttoptr i64 %3875 to i8*
  %3879 = load i8, i8* %3878
  %3880 = sext i8 %3879 to i64
  %3881 = and i64 %3880, 4294967295
  store i64 %3881, i64* %RDX.i236, align 8
  store %struct.Memory* %loadMem_42c57e, %struct.Memory** %MEMORY
  %loadMem_42c582 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3882 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3883 = getelementptr inbounds %struct.GPR, %struct.GPR* %3882, i32 0, i32 33
  %3884 = getelementptr inbounds %struct.Reg, %struct.Reg* %3883, i32 0, i32 0
  %PC.i231 = bitcast %union.anon* %3884 to i64*
  %3885 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3886 = getelementptr inbounds %struct.GPR, %struct.GPR* %3885, i32 0, i32 7
  %3887 = getelementptr inbounds %struct.Reg, %struct.Reg* %3886, i32 0, i32 0
  %EDX.i232 = bitcast %union.anon* %3887 to i32*
  %3888 = load i32, i32* %EDX.i232
  %3889 = zext i32 %3888 to i64
  %3890 = load i64, i64* %PC.i231
  %3891 = add i64 %3890, 3
  store i64 %3891, i64* %PC.i231
  %3892 = sub i32 %3888, 45
  %3893 = icmp ult i32 %3888, 45
  %3894 = zext i1 %3893 to i8
  %3895 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3894, i8* %3895, align 1
  %3896 = and i32 %3892, 255
  %3897 = call i32 @llvm.ctpop.i32(i32 %3896)
  %3898 = trunc i32 %3897 to i8
  %3899 = and i8 %3898, 1
  %3900 = xor i8 %3899, 1
  %3901 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3900, i8* %3901, align 1
  %3902 = xor i64 45, %3889
  %3903 = trunc i64 %3902 to i32
  %3904 = xor i32 %3903, %3892
  %3905 = lshr i32 %3904, 4
  %3906 = trunc i32 %3905 to i8
  %3907 = and i8 %3906, 1
  %3908 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3907, i8* %3908, align 1
  %3909 = icmp eq i32 %3892, 0
  %3910 = zext i1 %3909 to i8
  %3911 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3910, i8* %3911, align 1
  %3912 = lshr i32 %3892, 31
  %3913 = trunc i32 %3912 to i8
  %3914 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3913, i8* %3914, align 1
  %3915 = lshr i32 %3888, 31
  %3916 = xor i32 %3912, %3915
  %3917 = add i32 %3916, %3915
  %3918 = icmp eq i32 %3917, 2
  %3919 = zext i1 %3918 to i8
  %3920 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3919, i8* %3920, align 1
  store %struct.Memory* %loadMem_42c582, %struct.Memory** %MEMORY
  %loadMem_42c585 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3921 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3922 = getelementptr inbounds %struct.GPR, %struct.GPR* %3921, i32 0, i32 33
  %3923 = getelementptr inbounds %struct.Reg, %struct.Reg* %3922, i32 0, i32 0
  %PC.i230 = bitcast %union.anon* %3923 to i64*
  %3924 = load i64, i64* %PC.i230
  %3925 = add i64 %3924, 35
  %3926 = load i64, i64* %PC.i230
  %3927 = add i64 %3926, 6
  %3928 = load i64, i64* %PC.i230
  %3929 = add i64 %3928, 6
  store i64 %3929, i64* %PC.i230
  %3930 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3931 = load i8, i8* %3930, align 1
  store i8 %3931, i8* %BRANCH_TAKEN, align 1
  %3932 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3933 = icmp ne i8 %3931, 0
  %3934 = select i1 %3933, i64 %3925, i64 %3927
  store i64 %3934, i64* %3932, align 8
  store %struct.Memory* %loadMem_42c585, %struct.Memory** %MEMORY
  %loadBr_42c585 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42c585 = icmp eq i8 %loadBr_42c585, 1
  br i1 %cmpBr_42c585, label %block_.L_42c5a8, label %block_42c58b

block_42c58b:                                     ; preds = %block_42c56e
  %loadMem_42c58b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3936 = getelementptr inbounds %struct.GPR, %struct.GPR* %3935, i32 0, i32 33
  %3937 = getelementptr inbounds %struct.Reg, %struct.Reg* %3936, i32 0, i32 0
  %PC.i227 = bitcast %union.anon* %3937 to i64*
  %3938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3939 = getelementptr inbounds %struct.GPR, %struct.GPR* %3938, i32 0, i32 1
  %3940 = getelementptr inbounds %struct.Reg, %struct.Reg* %3939, i32 0, i32 0
  %RAX.i228 = bitcast %union.anon* %3940 to i64*
  %3941 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3942 = getelementptr inbounds %struct.GPR, %struct.GPR* %3941, i32 0, i32 15
  %3943 = getelementptr inbounds %struct.Reg, %struct.Reg* %3942, i32 0, i32 0
  %RBP.i229 = bitcast %union.anon* %3943 to i64*
  %3944 = load i64, i64* %RBP.i229
  %3945 = sub i64 %3944, 16
  %3946 = load i64, i64* %PC.i227
  %3947 = add i64 %3946, 4
  store i64 %3947, i64* %PC.i227
  %3948 = inttoptr i64 %3945 to i64*
  %3949 = load i64, i64* %3948
  store i64 %3949, i64* %RAX.i228, align 8
  store %struct.Memory* %loadMem_42c58b, %struct.Memory** %MEMORY
  %loadMem_42c58f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3950 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3951 = getelementptr inbounds %struct.GPR, %struct.GPR* %3950, i32 0, i32 33
  %3952 = getelementptr inbounds %struct.Reg, %struct.Reg* %3951, i32 0, i32 0
  %PC.i224 = bitcast %union.anon* %3952 to i64*
  %3953 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3954 = getelementptr inbounds %struct.GPR, %struct.GPR* %3953, i32 0, i32 5
  %3955 = getelementptr inbounds %struct.Reg, %struct.Reg* %3954, i32 0, i32 0
  %RCX.i225 = bitcast %union.anon* %3955 to i64*
  %3956 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3957 = getelementptr inbounds %struct.GPR, %struct.GPR* %3956, i32 0, i32 15
  %3958 = getelementptr inbounds %struct.Reg, %struct.Reg* %3957, i32 0, i32 0
  %RBP.i226 = bitcast %union.anon* %3958 to i64*
  %3959 = load i64, i64* %RBP.i226
  %3960 = sub i64 %3959, 60
  %3961 = load i64, i64* %PC.i224
  %3962 = add i64 %3961, 4
  store i64 %3962, i64* %PC.i224
  %3963 = inttoptr i64 %3960 to i32*
  %3964 = load i32, i32* %3963
  %3965 = sext i32 %3964 to i64
  store i64 %3965, i64* %RCX.i225, align 8
  store %struct.Memory* %loadMem_42c58f, %struct.Memory** %MEMORY
  %loadMem_42c593 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3967 = getelementptr inbounds %struct.GPR, %struct.GPR* %3966, i32 0, i32 33
  %3968 = getelementptr inbounds %struct.Reg, %struct.Reg* %3967, i32 0, i32 0
  %PC.i221 = bitcast %union.anon* %3968 to i64*
  %3969 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3970 = getelementptr inbounds %struct.GPR, %struct.GPR* %3969, i32 0, i32 1
  %3971 = getelementptr inbounds %struct.Reg, %struct.Reg* %3970, i32 0, i32 0
  %RAX.i222 = bitcast %union.anon* %3971 to i64*
  %3972 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3973 = getelementptr inbounds %struct.GPR, %struct.GPR* %3972, i32 0, i32 5
  %3974 = getelementptr inbounds %struct.Reg, %struct.Reg* %3973, i32 0, i32 0
  %RCX.i223 = bitcast %union.anon* %3974 to i64*
  %3975 = load i64, i64* %RAX.i222
  %3976 = load i64, i64* %RCX.i223
  %3977 = mul i64 %3976, 8
  %3978 = add i64 %3977, %3975
  %3979 = load i64, i64* %PC.i221
  %3980 = add i64 %3979, 4
  store i64 %3980, i64* %PC.i221
  %3981 = inttoptr i64 %3978 to i64*
  %3982 = load i64, i64* %3981
  store i64 %3982, i64* %RAX.i222, align 8
  store %struct.Memory* %loadMem_42c593, %struct.Memory** %MEMORY
  %loadMem_42c597 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3984 = getelementptr inbounds %struct.GPR, %struct.GPR* %3983, i32 0, i32 33
  %3985 = getelementptr inbounds %struct.Reg, %struct.Reg* %3984, i32 0, i32 0
  %PC.i218 = bitcast %union.anon* %3985 to i64*
  %3986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3987 = getelementptr inbounds %struct.GPR, %struct.GPR* %3986, i32 0, i32 5
  %3988 = getelementptr inbounds %struct.Reg, %struct.Reg* %3987, i32 0, i32 0
  %RCX.i219 = bitcast %union.anon* %3988 to i64*
  %3989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3990 = getelementptr inbounds %struct.GPR, %struct.GPR* %3989, i32 0, i32 15
  %3991 = getelementptr inbounds %struct.Reg, %struct.Reg* %3990, i32 0, i32 0
  %RBP.i220 = bitcast %union.anon* %3991 to i64*
  %3992 = load i64, i64* %RBP.i220
  %3993 = sub i64 %3992, 40
  %3994 = load i64, i64* %PC.i218
  %3995 = add i64 %3994, 4
  store i64 %3995, i64* %PC.i218
  %3996 = inttoptr i64 %3993 to i32*
  %3997 = load i32, i32* %3996
  %3998 = sext i32 %3997 to i64
  store i64 %3998, i64* %RCX.i219, align 8
  store %struct.Memory* %loadMem_42c597, %struct.Memory** %MEMORY
  %loadMem_42c59b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4000 = getelementptr inbounds %struct.GPR, %struct.GPR* %3999, i32 0, i32 33
  %4001 = getelementptr inbounds %struct.Reg, %struct.Reg* %4000, i32 0, i32 0
  %PC.i214 = bitcast %union.anon* %4001 to i64*
  %4002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4003 = getelementptr inbounds %struct.GPR, %struct.GPR* %4002, i32 0, i32 1
  %4004 = getelementptr inbounds %struct.Reg, %struct.Reg* %4003, i32 0, i32 0
  %RAX.i215 = bitcast %union.anon* %4004 to i64*
  %4005 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4006 = getelementptr inbounds %struct.GPR, %struct.GPR* %4005, i32 0, i32 5
  %4007 = getelementptr inbounds %struct.Reg, %struct.Reg* %4006, i32 0, i32 0
  %RCX.i216 = bitcast %union.anon* %4007 to i64*
  %4008 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4009 = getelementptr inbounds %struct.GPR, %struct.GPR* %4008, i32 0, i32 7
  %4010 = getelementptr inbounds %struct.Reg, %struct.Reg* %4009, i32 0, i32 0
  %RDX.i217 = bitcast %union.anon* %4010 to i64*
  %4011 = load i64, i64* %RAX.i215
  %4012 = load i64, i64* %RCX.i216
  %4013 = add i64 %4012, %4011
  %4014 = load i64, i64* %PC.i214
  %4015 = add i64 %4014, 4
  store i64 %4015, i64* %PC.i214
  %4016 = inttoptr i64 %4013 to i8*
  %4017 = load i8, i8* %4016
  %4018 = sext i8 %4017 to i64
  %4019 = and i64 %4018, 4294967295
  store i64 %4019, i64* %RDX.i217, align 8
  store %struct.Memory* %loadMem_42c59b, %struct.Memory** %MEMORY
  %loadMem_42c59f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4020 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4021 = getelementptr inbounds %struct.GPR, %struct.GPR* %4020, i32 0, i32 33
  %4022 = getelementptr inbounds %struct.Reg, %struct.Reg* %4021, i32 0, i32 0
  %PC.i212 = bitcast %union.anon* %4022 to i64*
  %4023 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4024 = getelementptr inbounds %struct.GPR, %struct.GPR* %4023, i32 0, i32 7
  %4025 = getelementptr inbounds %struct.Reg, %struct.Reg* %4024, i32 0, i32 0
  %EDX.i213 = bitcast %union.anon* %4025 to i32*
  %4026 = load i32, i32* %EDX.i213
  %4027 = zext i32 %4026 to i64
  %4028 = load i64, i64* %PC.i212
  %4029 = add i64 %4028, 3
  store i64 %4029, i64* %PC.i212
  %4030 = sub i32 %4026, 126
  %4031 = icmp ult i32 %4026, 126
  %4032 = zext i1 %4031 to i8
  %4033 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4032, i8* %4033, align 1
  %4034 = and i32 %4030, 255
  %4035 = call i32 @llvm.ctpop.i32(i32 %4034)
  %4036 = trunc i32 %4035 to i8
  %4037 = and i8 %4036, 1
  %4038 = xor i8 %4037, 1
  %4039 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4038, i8* %4039, align 1
  %4040 = xor i64 126, %4027
  %4041 = trunc i64 %4040 to i32
  %4042 = xor i32 %4041, %4030
  %4043 = lshr i32 %4042, 4
  %4044 = trunc i32 %4043 to i8
  %4045 = and i8 %4044, 1
  %4046 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4045, i8* %4046, align 1
  %4047 = icmp eq i32 %4030, 0
  %4048 = zext i1 %4047 to i8
  %4049 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4048, i8* %4049, align 1
  %4050 = lshr i32 %4030, 31
  %4051 = trunc i32 %4050 to i8
  %4052 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4051, i8* %4052, align 1
  %4053 = lshr i32 %4026, 31
  %4054 = xor i32 %4050, %4053
  %4055 = add i32 %4054, %4053
  %4056 = icmp eq i32 %4055, 2
  %4057 = zext i1 %4056 to i8
  %4058 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4057, i8* %4058, align 1
  store %struct.Memory* %loadMem_42c59f, %struct.Memory** %MEMORY
  %loadMem_42c5a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4059 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4060 = getelementptr inbounds %struct.GPR, %struct.GPR* %4059, i32 0, i32 33
  %4061 = getelementptr inbounds %struct.Reg, %struct.Reg* %4060, i32 0, i32 0
  %PC.i211 = bitcast %union.anon* %4061 to i64*
  %4062 = load i64, i64* %PC.i211
  %4063 = add i64 %4062, 38
  %4064 = load i64, i64* %PC.i211
  %4065 = add i64 %4064, 6
  %4066 = load i64, i64* %PC.i211
  %4067 = add i64 %4066, 6
  store i64 %4067, i64* %PC.i211
  %4068 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4069 = load i8, i8* %4068, align 1
  %4070 = icmp eq i8 %4069, 0
  %4071 = zext i1 %4070 to i8
  store i8 %4071, i8* %BRANCH_TAKEN, align 1
  %4072 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4073 = select i1 %4070, i64 %4063, i64 %4065
  store i64 %4073, i64* %4072, align 8
  store %struct.Memory* %loadMem_42c5a2, %struct.Memory** %MEMORY
  %loadBr_42c5a2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42c5a2 = icmp eq i8 %loadBr_42c5a2, 1
  br i1 %cmpBr_42c5a2, label %block_.L_42c5c8, label %block_.L_42c5a8

block_.L_42c5a8:                                  ; preds = %block_42c58b, %block_42c56e, %block_42c551, %block_42c534, %block_.L_42c517
  %loadMem_42c5a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4074 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4075 = getelementptr inbounds %struct.GPR, %struct.GPR* %4074, i32 0, i32 33
  %4076 = getelementptr inbounds %struct.Reg, %struct.Reg* %4075, i32 0, i32 0
  %PC.i208 = bitcast %union.anon* %4076 to i64*
  %4077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4078 = getelementptr inbounds %struct.GPR, %struct.GPR* %4077, i32 0, i32 1
  %4079 = getelementptr inbounds %struct.Reg, %struct.Reg* %4078, i32 0, i32 0
  %RAX.i209 = bitcast %union.anon* %4079 to i64*
  %4080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4081 = getelementptr inbounds %struct.GPR, %struct.GPR* %4080, i32 0, i32 15
  %4082 = getelementptr inbounds %struct.Reg, %struct.Reg* %4081, i32 0, i32 0
  %RBP.i210 = bitcast %union.anon* %4082 to i64*
  %4083 = load i64, i64* %RBP.i210
  %4084 = sub i64 %4083, 48
  %4085 = load i64, i64* %PC.i208
  %4086 = add i64 %4085, 4
  store i64 %4086, i64* %PC.i208
  %4087 = inttoptr i64 %4084 to i64*
  %4088 = load i64, i64* %4087
  store i64 %4088, i64* %RAX.i209, align 8
  store %struct.Memory* %loadMem_42c5a8, %struct.Memory** %MEMORY
  %loadMem_42c5ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %4089 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4090 = getelementptr inbounds %struct.GPR, %struct.GPR* %4089, i32 0, i32 33
  %4091 = getelementptr inbounds %struct.Reg, %struct.Reg* %4090, i32 0, i32 0
  %PC.i205 = bitcast %union.anon* %4091 to i64*
  %4092 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4093 = getelementptr inbounds %struct.GPR, %struct.GPR* %4092, i32 0, i32 5
  %4094 = getelementptr inbounds %struct.Reg, %struct.Reg* %4093, i32 0, i32 0
  %RCX.i206 = bitcast %union.anon* %4094 to i64*
  %4095 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4096 = getelementptr inbounds %struct.GPR, %struct.GPR* %4095, i32 0, i32 15
  %4097 = getelementptr inbounds %struct.Reg, %struct.Reg* %4096, i32 0, i32 0
  %RBP.i207 = bitcast %union.anon* %4097 to i64*
  %4098 = load i64, i64* %RBP.i207
  %4099 = sub i64 %4098, 60
  %4100 = load i64, i64* %PC.i205
  %4101 = add i64 %4100, 4
  store i64 %4101, i64* %PC.i205
  %4102 = inttoptr i64 %4099 to i32*
  %4103 = load i32, i32* %4102
  %4104 = sext i32 %4103 to i64
  store i64 %4104, i64* %RCX.i206, align 8
  store %struct.Memory* %loadMem_42c5ac, %struct.Memory** %MEMORY
  %loadMem_42c5b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4106 = getelementptr inbounds %struct.GPR, %struct.GPR* %4105, i32 0, i32 33
  %4107 = getelementptr inbounds %struct.Reg, %struct.Reg* %4106, i32 0, i32 0
  %PC.i201 = bitcast %union.anon* %4107 to i64*
  %4108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4109 = getelementptr inbounds %struct.GPR, %struct.GPR* %4108, i32 0, i32 1
  %4110 = getelementptr inbounds %struct.Reg, %struct.Reg* %4109, i32 0, i32 0
  %RAX.i202 = bitcast %union.anon* %4110 to i64*
  %4111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4112 = getelementptr inbounds %struct.GPR, %struct.GPR* %4111, i32 0, i32 5
  %4113 = getelementptr inbounds %struct.Reg, %struct.Reg* %4112, i32 0, i32 0
  %RCX.i203 = bitcast %union.anon* %4113 to i64*
  %4114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4115 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4114, i64 0, i64 0
  %YMM0.i204 = bitcast %union.VectorReg* %4115 to %"class.std::bitset"*
  %4116 = bitcast %"class.std::bitset"* %YMM0.i204 to i8*
  %4117 = load i64, i64* %RAX.i202
  %4118 = load i64, i64* %RCX.i203
  %4119 = mul i64 %4118, 4
  %4120 = add i64 %4119, %4117
  %4121 = load i64, i64* %PC.i201
  %4122 = add i64 %4121, 5
  store i64 %4122, i64* %PC.i201
  %4123 = inttoptr i64 %4120 to float*
  %4124 = load float, float* %4123
  %4125 = bitcast i8* %4116 to float*
  store float %4124, float* %4125, align 1
  %4126 = getelementptr inbounds i8, i8* %4116, i64 4
  %4127 = bitcast i8* %4126 to float*
  store float 0.000000e+00, float* %4127, align 1
  %4128 = getelementptr inbounds i8, i8* %4116, i64 8
  %4129 = bitcast i8* %4128 to float*
  store float 0.000000e+00, float* %4129, align 1
  %4130 = getelementptr inbounds i8, i8* %4116, i64 12
  %4131 = bitcast i8* %4130 to float*
  store float 0.000000e+00, float* %4131, align 1
  store %struct.Memory* %loadMem_42c5b0, %struct.Memory** %MEMORY
  %loadMem_42c5b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4133 = getelementptr inbounds %struct.GPR, %struct.GPR* %4132, i32 0, i32 33
  %4134 = getelementptr inbounds %struct.Reg, %struct.Reg* %4133, i32 0, i32 0
  %PC.i198 = bitcast %union.anon* %4134 to i64*
  %4135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4136 = getelementptr inbounds %struct.GPR, %struct.GPR* %4135, i32 0, i32 1
  %4137 = getelementptr inbounds %struct.Reg, %struct.Reg* %4136, i32 0, i32 0
  %RAX.i199 = bitcast %union.anon* %4137 to i64*
  %4138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4139 = getelementptr inbounds %struct.GPR, %struct.GPR* %4138, i32 0, i32 15
  %4140 = getelementptr inbounds %struct.Reg, %struct.Reg* %4139, i32 0, i32 0
  %RBP.i200 = bitcast %union.anon* %4140 to i64*
  %4141 = load i64, i64* %RBP.i200
  %4142 = sub i64 %4141, 56
  %4143 = load i64, i64* %PC.i198
  %4144 = add i64 %4143, 4
  store i64 %4144, i64* %PC.i198
  %4145 = inttoptr i64 %4142 to i64*
  %4146 = load i64, i64* %4145
  store i64 %4146, i64* %RAX.i199, align 8
  store %struct.Memory* %loadMem_42c5b5, %struct.Memory** %MEMORY
  %loadMem_42c5b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4148 = getelementptr inbounds %struct.GPR, %struct.GPR* %4147, i32 0, i32 33
  %4149 = getelementptr inbounds %struct.Reg, %struct.Reg* %4148, i32 0, i32 0
  %PC.i195 = bitcast %union.anon* %4149 to i64*
  %4150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4151 = getelementptr inbounds %struct.GPR, %struct.GPR* %4150, i32 0, i32 1
  %4152 = getelementptr inbounds %struct.Reg, %struct.Reg* %4151, i32 0, i32 0
  %RAX.i196 = bitcast %union.anon* %4152 to i64*
  %4153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4154 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4153, i64 0, i64 0
  %YMM0.i197 = bitcast %union.VectorReg* %4154 to %"class.std::bitset"*
  %4155 = bitcast %"class.std::bitset"* %YMM0.i197 to i8*
  %4156 = bitcast %"class.std::bitset"* %YMM0.i197 to i8*
  %4157 = load i64, i64* %RAX.i196
  %4158 = add i64 %4157, 8
  %4159 = load i64, i64* %PC.i195
  %4160 = add i64 %4159, 5
  store i64 %4160, i64* %PC.i195
  %4161 = bitcast i8* %4156 to <2 x float>*
  %4162 = load <2 x float>, <2 x float>* %4161, align 1
  %4163 = getelementptr inbounds i8, i8* %4156, i64 8
  %4164 = bitcast i8* %4163 to <2 x i32>*
  %4165 = load <2 x i32>, <2 x i32>* %4164, align 1
  %4166 = inttoptr i64 %4158 to float*
  %4167 = load float, float* %4166
  %4168 = extractelement <2 x float> %4162, i32 0
  %4169 = fadd float %4168, %4167
  %4170 = bitcast i8* %4155 to float*
  store float %4169, float* %4170, align 1
  %4171 = bitcast <2 x float> %4162 to <2 x i32>
  %4172 = extractelement <2 x i32> %4171, i32 1
  %4173 = getelementptr inbounds i8, i8* %4155, i64 4
  %4174 = bitcast i8* %4173 to i32*
  store i32 %4172, i32* %4174, align 1
  %4175 = extractelement <2 x i32> %4165, i32 0
  %4176 = getelementptr inbounds i8, i8* %4155, i64 8
  %4177 = bitcast i8* %4176 to i32*
  store i32 %4175, i32* %4177, align 1
  %4178 = extractelement <2 x i32> %4165, i32 1
  %4179 = getelementptr inbounds i8, i8* %4155, i64 12
  %4180 = bitcast i8* %4179 to i32*
  store i32 %4178, i32* %4180, align 1
  store %struct.Memory* %loadMem_42c5b9, %struct.Memory** %MEMORY
  %loadMem_42c5be = load %struct.Memory*, %struct.Memory** %MEMORY
  %4181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4182 = getelementptr inbounds %struct.GPR, %struct.GPR* %4181, i32 0, i32 33
  %4183 = getelementptr inbounds %struct.Reg, %struct.Reg* %4182, i32 0, i32 0
  %PC.i192 = bitcast %union.anon* %4183 to i64*
  %4184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4185 = getelementptr inbounds %struct.GPR, %struct.GPR* %4184, i32 0, i32 1
  %4186 = getelementptr inbounds %struct.Reg, %struct.Reg* %4185, i32 0, i32 0
  %RAX.i193 = bitcast %union.anon* %4186 to i64*
  %4187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4188 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4187, i64 0, i64 0
  %XMM0.i194 = bitcast %union.VectorReg* %4188 to %union.vec128_t*
  %4189 = load i64, i64* %RAX.i193
  %4190 = add i64 %4189, 8
  %4191 = bitcast %union.vec128_t* %XMM0.i194 to i8*
  %4192 = load i64, i64* %PC.i192
  %4193 = add i64 %4192, 5
  store i64 %4193, i64* %PC.i192
  %4194 = bitcast i8* %4191 to <2 x float>*
  %4195 = load <2 x float>, <2 x float>* %4194, align 1
  %4196 = extractelement <2 x float> %4195, i32 0
  %4197 = inttoptr i64 %4190 to float*
  store float %4196, float* %4197
  store %struct.Memory* %loadMem_42c5be, %struct.Memory** %MEMORY
  %loadMem_42c5c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4199 = getelementptr inbounds %struct.GPR, %struct.GPR* %4198, i32 0, i32 33
  %4200 = getelementptr inbounds %struct.Reg, %struct.Reg* %4199, i32 0, i32 0
  %PC.i191 = bitcast %union.anon* %4200 to i64*
  %4201 = load i64, i64* %PC.i191
  %4202 = add i64 %4201, 30
  %4203 = load i64, i64* %PC.i191
  %4204 = add i64 %4203, 5
  store i64 %4204, i64* %PC.i191
  %4205 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4202, i64* %4205, align 8
  store %struct.Memory* %loadMem_42c5c3, %struct.Memory** %MEMORY
  br label %block_.L_42c5e1

block_.L_42c5c8:                                  ; preds = %block_42c58b
  %loadMem_42c5c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4207 = getelementptr inbounds %struct.GPR, %struct.GPR* %4206, i32 0, i32 33
  %4208 = getelementptr inbounds %struct.Reg, %struct.Reg* %4207, i32 0, i32 0
  %PC.i188 = bitcast %union.anon* %4208 to i64*
  %4209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4210 = getelementptr inbounds %struct.GPR, %struct.GPR* %4209, i32 0, i32 1
  %4211 = getelementptr inbounds %struct.Reg, %struct.Reg* %4210, i32 0, i32 0
  %RAX.i189 = bitcast %union.anon* %4211 to i64*
  %4212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4213 = getelementptr inbounds %struct.GPR, %struct.GPR* %4212, i32 0, i32 15
  %4214 = getelementptr inbounds %struct.Reg, %struct.Reg* %4213, i32 0, i32 0
  %RBP.i190 = bitcast %union.anon* %4214 to i64*
  %4215 = load i64, i64* %RBP.i190
  %4216 = sub i64 %4215, 48
  %4217 = load i64, i64* %PC.i188
  %4218 = add i64 %4217, 4
  store i64 %4218, i64* %PC.i188
  %4219 = inttoptr i64 %4216 to i64*
  %4220 = load i64, i64* %4219
  store i64 %4220, i64* %RAX.i189, align 8
  store %struct.Memory* %loadMem_42c5c8, %struct.Memory** %MEMORY
  %loadMem_42c5cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %4221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4222 = getelementptr inbounds %struct.GPR, %struct.GPR* %4221, i32 0, i32 33
  %4223 = getelementptr inbounds %struct.Reg, %struct.Reg* %4222, i32 0, i32 0
  %PC.i185 = bitcast %union.anon* %4223 to i64*
  %4224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4225 = getelementptr inbounds %struct.GPR, %struct.GPR* %4224, i32 0, i32 5
  %4226 = getelementptr inbounds %struct.Reg, %struct.Reg* %4225, i32 0, i32 0
  %RCX.i186 = bitcast %union.anon* %4226 to i64*
  %4227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4228 = getelementptr inbounds %struct.GPR, %struct.GPR* %4227, i32 0, i32 15
  %4229 = getelementptr inbounds %struct.Reg, %struct.Reg* %4228, i32 0, i32 0
  %RBP.i187 = bitcast %union.anon* %4229 to i64*
  %4230 = load i64, i64* %RBP.i187
  %4231 = sub i64 %4230, 60
  %4232 = load i64, i64* %PC.i185
  %4233 = add i64 %4232, 4
  store i64 %4233, i64* %PC.i185
  %4234 = inttoptr i64 %4231 to i32*
  %4235 = load i32, i32* %4234
  %4236 = sext i32 %4235 to i64
  store i64 %4236, i64* %RCX.i186, align 8
  store %struct.Memory* %loadMem_42c5cc, %struct.Memory** %MEMORY
  %loadMem_42c5d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4238 = getelementptr inbounds %struct.GPR, %struct.GPR* %4237, i32 0, i32 33
  %4239 = getelementptr inbounds %struct.Reg, %struct.Reg* %4238, i32 0, i32 0
  %PC.i181 = bitcast %union.anon* %4239 to i64*
  %4240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4241 = getelementptr inbounds %struct.GPR, %struct.GPR* %4240, i32 0, i32 1
  %4242 = getelementptr inbounds %struct.Reg, %struct.Reg* %4241, i32 0, i32 0
  %RAX.i182 = bitcast %union.anon* %4242 to i64*
  %4243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4244 = getelementptr inbounds %struct.GPR, %struct.GPR* %4243, i32 0, i32 5
  %4245 = getelementptr inbounds %struct.Reg, %struct.Reg* %4244, i32 0, i32 0
  %RCX.i183 = bitcast %union.anon* %4245 to i64*
  %4246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4247 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4246, i64 0, i64 0
  %YMM0.i184 = bitcast %union.VectorReg* %4247 to %"class.std::bitset"*
  %4248 = bitcast %"class.std::bitset"* %YMM0.i184 to i8*
  %4249 = load i64, i64* %RAX.i182
  %4250 = load i64, i64* %RCX.i183
  %4251 = mul i64 %4250, 4
  %4252 = add i64 %4251, %4249
  %4253 = load i64, i64* %PC.i181
  %4254 = add i64 %4253, 5
  store i64 %4254, i64* %PC.i181
  %4255 = inttoptr i64 %4252 to float*
  %4256 = load float, float* %4255
  %4257 = bitcast i8* %4248 to float*
  store float %4256, float* %4257, align 1
  %4258 = getelementptr inbounds i8, i8* %4248, i64 4
  %4259 = bitcast i8* %4258 to float*
  store float 0.000000e+00, float* %4259, align 1
  %4260 = getelementptr inbounds i8, i8* %4248, i64 8
  %4261 = bitcast i8* %4260 to float*
  store float 0.000000e+00, float* %4261, align 1
  %4262 = getelementptr inbounds i8, i8* %4248, i64 12
  %4263 = bitcast i8* %4262 to float*
  store float 0.000000e+00, float* %4263, align 1
  store %struct.Memory* %loadMem_42c5d0, %struct.Memory** %MEMORY
  %loadMem_42c5d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4265 = getelementptr inbounds %struct.GPR, %struct.GPR* %4264, i32 0, i32 33
  %4266 = getelementptr inbounds %struct.Reg, %struct.Reg* %4265, i32 0, i32 0
  %PC.i178 = bitcast %union.anon* %4266 to i64*
  %4267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4268 = getelementptr inbounds %struct.GPR, %struct.GPR* %4267, i32 0, i32 1
  %4269 = getelementptr inbounds %struct.Reg, %struct.Reg* %4268, i32 0, i32 0
  %RAX.i179 = bitcast %union.anon* %4269 to i64*
  %4270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4271 = getelementptr inbounds %struct.GPR, %struct.GPR* %4270, i32 0, i32 15
  %4272 = getelementptr inbounds %struct.Reg, %struct.Reg* %4271, i32 0, i32 0
  %RBP.i180 = bitcast %union.anon* %4272 to i64*
  %4273 = load i64, i64* %RBP.i180
  %4274 = sub i64 %4273, 56
  %4275 = load i64, i64* %PC.i178
  %4276 = add i64 %4275, 4
  store i64 %4276, i64* %PC.i178
  %4277 = inttoptr i64 %4274 to i64*
  %4278 = load i64, i64* %4277
  store i64 %4278, i64* %RAX.i179, align 8
  store %struct.Memory* %loadMem_42c5d5, %struct.Memory** %MEMORY
  %loadMem_42c5d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4280 = getelementptr inbounds %struct.GPR, %struct.GPR* %4279, i32 0, i32 33
  %4281 = getelementptr inbounds %struct.Reg, %struct.Reg* %4280, i32 0, i32 0
  %PC.i175 = bitcast %union.anon* %4281 to i64*
  %4282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4283 = getelementptr inbounds %struct.GPR, %struct.GPR* %4282, i32 0, i32 1
  %4284 = getelementptr inbounds %struct.Reg, %struct.Reg* %4283, i32 0, i32 0
  %RAX.i176 = bitcast %union.anon* %4284 to i64*
  %4285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4286 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4285, i64 0, i64 0
  %YMM0.i177 = bitcast %union.VectorReg* %4286 to %"class.std::bitset"*
  %4287 = bitcast %"class.std::bitset"* %YMM0.i177 to i8*
  %4288 = bitcast %"class.std::bitset"* %YMM0.i177 to i8*
  %4289 = load i64, i64* %RAX.i176
  %4290 = load i64, i64* %PC.i175
  %4291 = add i64 %4290, 4
  store i64 %4291, i64* %PC.i175
  %4292 = bitcast i8* %4288 to <2 x float>*
  %4293 = load <2 x float>, <2 x float>* %4292, align 1
  %4294 = getelementptr inbounds i8, i8* %4288, i64 8
  %4295 = bitcast i8* %4294 to <2 x i32>*
  %4296 = load <2 x i32>, <2 x i32>* %4295, align 1
  %4297 = inttoptr i64 %4289 to float*
  %4298 = load float, float* %4297
  %4299 = extractelement <2 x float> %4293, i32 0
  %4300 = fadd float %4299, %4298
  %4301 = bitcast i8* %4287 to float*
  store float %4300, float* %4301, align 1
  %4302 = bitcast <2 x float> %4293 to <2 x i32>
  %4303 = extractelement <2 x i32> %4302, i32 1
  %4304 = getelementptr inbounds i8, i8* %4287, i64 4
  %4305 = bitcast i8* %4304 to i32*
  store i32 %4303, i32* %4305, align 1
  %4306 = extractelement <2 x i32> %4296, i32 0
  %4307 = getelementptr inbounds i8, i8* %4287, i64 8
  %4308 = bitcast i8* %4307 to i32*
  store i32 %4306, i32* %4308, align 1
  %4309 = extractelement <2 x i32> %4296, i32 1
  %4310 = getelementptr inbounds i8, i8* %4287, i64 12
  %4311 = bitcast i8* %4310 to i32*
  store i32 %4309, i32* %4311, align 1
  store %struct.Memory* %loadMem_42c5d9, %struct.Memory** %MEMORY
  %loadMem_42c5dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %4312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4313 = getelementptr inbounds %struct.GPR, %struct.GPR* %4312, i32 0, i32 33
  %4314 = getelementptr inbounds %struct.Reg, %struct.Reg* %4313, i32 0, i32 0
  %PC.i172 = bitcast %union.anon* %4314 to i64*
  %4315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4316 = getelementptr inbounds %struct.GPR, %struct.GPR* %4315, i32 0, i32 1
  %4317 = getelementptr inbounds %struct.Reg, %struct.Reg* %4316, i32 0, i32 0
  %RAX.i173 = bitcast %union.anon* %4317 to i64*
  %4318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4319 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4318, i64 0, i64 0
  %XMM0.i174 = bitcast %union.VectorReg* %4319 to %union.vec128_t*
  %4320 = load i64, i64* %RAX.i173
  %4321 = bitcast %union.vec128_t* %XMM0.i174 to i8*
  %4322 = load i64, i64* %PC.i172
  %4323 = add i64 %4322, 4
  store i64 %4323, i64* %PC.i172
  %4324 = bitcast i8* %4321 to <2 x float>*
  %4325 = load <2 x float>, <2 x float>* %4324, align 1
  %4326 = extractelement <2 x float> %4325, i32 0
  %4327 = inttoptr i64 %4320 to float*
  store float %4326, float* %4327
  store %struct.Memory* %loadMem_42c5dd, %struct.Memory** %MEMORY
  br label %block_.L_42c5e1

block_.L_42c5e1:                                  ; preds = %block_.L_42c5c8, %block_.L_42c5a8
  %loadMem_42c5e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4329 = getelementptr inbounds %struct.GPR, %struct.GPR* %4328, i32 0, i32 33
  %4330 = getelementptr inbounds %struct.Reg, %struct.Reg* %4329, i32 0, i32 0
  %PC.i171 = bitcast %union.anon* %4330 to i64*
  %4331 = load i64, i64* %PC.i171
  %4332 = add i64 %4331, 5
  %4333 = load i64, i64* %PC.i171
  %4334 = add i64 %4333, 5
  store i64 %4334, i64* %PC.i171
  %4335 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4332, i64* %4335, align 8
  store %struct.Memory* %loadMem_42c5e1, %struct.Memory** %MEMORY
  br label %block_.L_42c5e6

block_.L_42c5e6:                                  ; preds = %block_.L_42c5e1, %block_42c512
  %loadMem_42c5e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4337 = getelementptr inbounds %struct.GPR, %struct.GPR* %4336, i32 0, i32 33
  %4338 = getelementptr inbounds %struct.Reg, %struct.Reg* %4337, i32 0, i32 0
  %PC.i170 = bitcast %union.anon* %4338 to i64*
  %4339 = load i64, i64* %PC.i170
  %4340 = add i64 %4339, 253
  %4341 = load i64, i64* %PC.i170
  %4342 = add i64 %4341, 5
  store i64 %4342, i64* %PC.i170
  %4343 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4340, i64* %4343, align 8
  store %struct.Memory* %loadMem_42c5e6, %struct.Memory** %MEMORY
  br label %block_.L_42c6e3

block_.L_42c5eb:                                  ; preds = %block_42c4d8, %block_42c4bb, %block_42c49e, %block_42c481, %block_.L_42c464
  %loadMem_42c5eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %4344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4345 = getelementptr inbounds %struct.GPR, %struct.GPR* %4344, i32 0, i32 33
  %4346 = getelementptr inbounds %struct.Reg, %struct.Reg* %4345, i32 0, i32 0
  %PC.i167 = bitcast %union.anon* %4346 to i64*
  %4347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4348 = getelementptr inbounds %struct.GPR, %struct.GPR* %4347, i32 0, i32 1
  %4349 = getelementptr inbounds %struct.Reg, %struct.Reg* %4348, i32 0, i32 0
  %RAX.i168 = bitcast %union.anon* %4349 to i64*
  %4350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4351 = getelementptr inbounds %struct.GPR, %struct.GPR* %4350, i32 0, i32 15
  %4352 = getelementptr inbounds %struct.Reg, %struct.Reg* %4351, i32 0, i32 0
  %RBP.i169 = bitcast %union.anon* %4352 to i64*
  %4353 = load i64, i64* %RBP.i169
  %4354 = sub i64 %4353, 16
  %4355 = load i64, i64* %PC.i167
  %4356 = add i64 %4355, 4
  store i64 %4356, i64* %PC.i167
  %4357 = inttoptr i64 %4354 to i64*
  %4358 = load i64, i64* %4357
  store i64 %4358, i64* %RAX.i168, align 8
  store %struct.Memory* %loadMem_42c5eb, %struct.Memory** %MEMORY
  %loadMem_42c5ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %4359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4360 = getelementptr inbounds %struct.GPR, %struct.GPR* %4359, i32 0, i32 33
  %4361 = getelementptr inbounds %struct.Reg, %struct.Reg* %4360, i32 0, i32 0
  %PC.i164 = bitcast %union.anon* %4361 to i64*
  %4362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4363 = getelementptr inbounds %struct.GPR, %struct.GPR* %4362, i32 0, i32 5
  %4364 = getelementptr inbounds %struct.Reg, %struct.Reg* %4363, i32 0, i32 0
  %RCX.i165 = bitcast %union.anon* %4364 to i64*
  %4365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4366 = getelementptr inbounds %struct.GPR, %struct.GPR* %4365, i32 0, i32 15
  %4367 = getelementptr inbounds %struct.Reg, %struct.Reg* %4366, i32 0, i32 0
  %RBP.i166 = bitcast %union.anon* %4367 to i64*
  %4368 = load i64, i64* %RBP.i166
  %4369 = sub i64 %4368, 60
  %4370 = load i64, i64* %PC.i164
  %4371 = add i64 %4370, 4
  store i64 %4371, i64* %PC.i164
  %4372 = inttoptr i64 %4369 to i32*
  %4373 = load i32, i32* %4372
  %4374 = sext i32 %4373 to i64
  store i64 %4374, i64* %RCX.i165, align 8
  store %struct.Memory* %loadMem_42c5ef, %struct.Memory** %MEMORY
  %loadMem_42c5f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4376 = getelementptr inbounds %struct.GPR, %struct.GPR* %4375, i32 0, i32 33
  %4377 = getelementptr inbounds %struct.Reg, %struct.Reg* %4376, i32 0, i32 0
  %PC.i161 = bitcast %union.anon* %4377 to i64*
  %4378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4379 = getelementptr inbounds %struct.GPR, %struct.GPR* %4378, i32 0, i32 1
  %4380 = getelementptr inbounds %struct.Reg, %struct.Reg* %4379, i32 0, i32 0
  %RAX.i162 = bitcast %union.anon* %4380 to i64*
  %4381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4382 = getelementptr inbounds %struct.GPR, %struct.GPR* %4381, i32 0, i32 5
  %4383 = getelementptr inbounds %struct.Reg, %struct.Reg* %4382, i32 0, i32 0
  %RCX.i163 = bitcast %union.anon* %4383 to i64*
  %4384 = load i64, i64* %RAX.i162
  %4385 = load i64, i64* %RCX.i163
  %4386 = mul i64 %4385, 8
  %4387 = add i64 %4386, %4384
  %4388 = load i64, i64* %PC.i161
  %4389 = add i64 %4388, 4
  store i64 %4389, i64* %PC.i161
  %4390 = inttoptr i64 %4387 to i64*
  %4391 = load i64, i64* %4390
  store i64 %4391, i64* %RAX.i162, align 8
  store %struct.Memory* %loadMem_42c5f3, %struct.Memory** %MEMORY
  %loadMem_42c5f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4393 = getelementptr inbounds %struct.GPR, %struct.GPR* %4392, i32 0, i32 33
  %4394 = getelementptr inbounds %struct.Reg, %struct.Reg* %4393, i32 0, i32 0
  %PC.i158 = bitcast %union.anon* %4394 to i64*
  %4395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4396 = getelementptr inbounds %struct.GPR, %struct.GPR* %4395, i32 0, i32 5
  %4397 = getelementptr inbounds %struct.Reg, %struct.Reg* %4396, i32 0, i32 0
  %RCX.i159 = bitcast %union.anon* %4397 to i64*
  %4398 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4399 = getelementptr inbounds %struct.GPR, %struct.GPR* %4398, i32 0, i32 15
  %4400 = getelementptr inbounds %struct.Reg, %struct.Reg* %4399, i32 0, i32 0
  %RBP.i160 = bitcast %union.anon* %4400 to i64*
  %4401 = load i64, i64* %RBP.i160
  %4402 = sub i64 %4401, 40
  %4403 = load i64, i64* %PC.i158
  %4404 = add i64 %4403, 4
  store i64 %4404, i64* %PC.i158
  %4405 = inttoptr i64 %4402 to i32*
  %4406 = load i32, i32* %4405
  %4407 = sext i32 %4406 to i64
  store i64 %4407, i64* %RCX.i159, align 8
  store %struct.Memory* %loadMem_42c5f7, %struct.Memory** %MEMORY
  %loadMem_42c5fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %4408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4409 = getelementptr inbounds %struct.GPR, %struct.GPR* %4408, i32 0, i32 33
  %4410 = getelementptr inbounds %struct.Reg, %struct.Reg* %4409, i32 0, i32 0
  %PC.i154 = bitcast %union.anon* %4410 to i64*
  %4411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4412 = getelementptr inbounds %struct.GPR, %struct.GPR* %4411, i32 0, i32 1
  %4413 = getelementptr inbounds %struct.Reg, %struct.Reg* %4412, i32 0, i32 0
  %RAX.i155 = bitcast %union.anon* %4413 to i64*
  %4414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4415 = getelementptr inbounds %struct.GPR, %struct.GPR* %4414, i32 0, i32 5
  %4416 = getelementptr inbounds %struct.Reg, %struct.Reg* %4415, i32 0, i32 0
  %RCX.i156 = bitcast %union.anon* %4416 to i64*
  %4417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4418 = getelementptr inbounds %struct.GPR, %struct.GPR* %4417, i32 0, i32 7
  %4419 = getelementptr inbounds %struct.Reg, %struct.Reg* %4418, i32 0, i32 0
  %RDX.i157 = bitcast %union.anon* %4419 to i64*
  %4420 = load i64, i64* %RAX.i155
  %4421 = load i64, i64* %RCX.i156
  %4422 = add i64 %4421, %4420
  %4423 = load i64, i64* %PC.i154
  %4424 = add i64 %4423, 4
  store i64 %4424, i64* %PC.i154
  %4425 = inttoptr i64 %4422 to i8*
  %4426 = load i8, i8* %4425
  %4427 = sext i8 %4426 to i64
  %4428 = and i64 %4427, 4294967295
  store i64 %4428, i64* %RDX.i157, align 8
  store %struct.Memory* %loadMem_42c5fb, %struct.Memory** %MEMORY
  %loadMem_42c5ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %4429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4430 = getelementptr inbounds %struct.GPR, %struct.GPR* %4429, i32 0, i32 33
  %4431 = getelementptr inbounds %struct.Reg, %struct.Reg* %4430, i32 0, i32 0
  %PC.i152 = bitcast %union.anon* %4431 to i64*
  %4432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4433 = getelementptr inbounds %struct.GPR, %struct.GPR* %4432, i32 0, i32 7
  %4434 = getelementptr inbounds %struct.Reg, %struct.Reg* %4433, i32 0, i32 0
  %EDX.i153 = bitcast %union.anon* %4434 to i32*
  %4435 = load i32, i32* %EDX.i153
  %4436 = zext i32 %4435 to i64
  %4437 = load i64, i64* %PC.i152
  %4438 = add i64 %4437, 3
  store i64 %4438, i64* %PC.i152
  %4439 = sub i32 %4435, 95
  %4440 = icmp ult i32 %4435, 95
  %4441 = zext i1 %4440 to i8
  %4442 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4441, i8* %4442, align 1
  %4443 = and i32 %4439, 255
  %4444 = call i32 @llvm.ctpop.i32(i32 %4443)
  %4445 = trunc i32 %4444 to i8
  %4446 = and i8 %4445, 1
  %4447 = xor i8 %4446, 1
  %4448 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4447, i8* %4448, align 1
  %4449 = xor i64 95, %4436
  %4450 = trunc i64 %4449 to i32
  %4451 = xor i32 %4450, %4439
  %4452 = lshr i32 %4451, 4
  %4453 = trunc i32 %4452 to i8
  %4454 = and i8 %4453, 1
  %4455 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4454, i8* %4455, align 1
  %4456 = icmp eq i32 %4439, 0
  %4457 = zext i1 %4456 to i8
  %4458 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4457, i8* %4458, align 1
  %4459 = lshr i32 %4439, 31
  %4460 = trunc i32 %4459 to i8
  %4461 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4460, i8* %4461, align 1
  %4462 = lshr i32 %4435, 31
  %4463 = xor i32 %4459, %4462
  %4464 = add i32 %4463, %4462
  %4465 = icmp eq i32 %4464, 2
  %4466 = zext i1 %4465 to i8
  %4467 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4466, i8* %4467, align 1
  store %struct.Memory* %loadMem_42c5ff, %struct.Memory** %MEMORY
  %loadMem_42c602 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4469 = getelementptr inbounds %struct.GPR, %struct.GPR* %4468, i32 0, i32 33
  %4470 = getelementptr inbounds %struct.Reg, %struct.Reg* %4469, i32 0, i32 0
  %PC.i151 = bitcast %union.anon* %4470 to i64*
  %4471 = load i64, i64* %PC.i151
  %4472 = add i64 %4471, 11
  %4473 = load i64, i64* %PC.i151
  %4474 = add i64 %4473, 6
  %4475 = load i64, i64* %PC.i151
  %4476 = add i64 %4475, 6
  store i64 %4476, i64* %PC.i151
  %4477 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4478 = load i8, i8* %4477, align 1
  %4479 = icmp eq i8 %4478, 0
  %4480 = zext i1 %4479 to i8
  store i8 %4480, i8* %BRANCH_TAKEN, align 1
  %4481 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4482 = select i1 %4479, i64 %4472, i64 %4474
  store i64 %4482, i64* %4481, align 8
  store %struct.Memory* %loadMem_42c602, %struct.Memory** %MEMORY
  %loadBr_42c602 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42c602 = icmp eq i8 %loadBr_42c602, 1
  br i1 %cmpBr_42c602, label %block_.L_42c60d, label %block_42c608

block_42c608:                                     ; preds = %block_.L_42c5eb
  %loadMem_42c608 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4484 = getelementptr inbounds %struct.GPR, %struct.GPR* %4483, i32 0, i32 33
  %4485 = getelementptr inbounds %struct.Reg, %struct.Reg* %4484, i32 0, i32 0
  %PC.i150 = bitcast %union.anon* %4485 to i64*
  %4486 = load i64, i64* %PC.i150
  %4487 = add i64 %4486, 229
  %4488 = load i64, i64* %PC.i150
  %4489 = add i64 %4488, 5
  store i64 %4489, i64* %PC.i150
  %4490 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4487, i64* %4490, align 8
  store %struct.Memory* %loadMem_42c608, %struct.Memory** %MEMORY
  br label %block_.L_42c6ed

block_.L_42c60d:                                  ; preds = %block_.L_42c5eb
  %loadMem_42c60d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4492 = getelementptr inbounds %struct.GPR, %struct.GPR* %4491, i32 0, i32 33
  %4493 = getelementptr inbounds %struct.Reg, %struct.Reg* %4492, i32 0, i32 0
  %PC.i147 = bitcast %union.anon* %4493 to i64*
  %4494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4495 = getelementptr inbounds %struct.GPR, %struct.GPR* %4494, i32 0, i32 1
  %4496 = getelementptr inbounds %struct.Reg, %struct.Reg* %4495, i32 0, i32 0
  %RAX.i148 = bitcast %union.anon* %4496 to i64*
  %4497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4498 = getelementptr inbounds %struct.GPR, %struct.GPR* %4497, i32 0, i32 15
  %4499 = getelementptr inbounds %struct.Reg, %struct.Reg* %4498, i32 0, i32 0
  %RBP.i149 = bitcast %union.anon* %4499 to i64*
  %4500 = load i64, i64* %RBP.i149
  %4501 = sub i64 %4500, 16
  %4502 = load i64, i64* %PC.i147
  %4503 = add i64 %4502, 4
  store i64 %4503, i64* %PC.i147
  %4504 = inttoptr i64 %4501 to i64*
  %4505 = load i64, i64* %4504
  store i64 %4505, i64* %RAX.i148, align 8
  store %struct.Memory* %loadMem_42c60d, %struct.Memory** %MEMORY
  %loadMem_42c611 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4507 = getelementptr inbounds %struct.GPR, %struct.GPR* %4506, i32 0, i32 33
  %4508 = getelementptr inbounds %struct.Reg, %struct.Reg* %4507, i32 0, i32 0
  %PC.i144 = bitcast %union.anon* %4508 to i64*
  %4509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4510 = getelementptr inbounds %struct.GPR, %struct.GPR* %4509, i32 0, i32 5
  %4511 = getelementptr inbounds %struct.Reg, %struct.Reg* %4510, i32 0, i32 0
  %RCX.i145 = bitcast %union.anon* %4511 to i64*
  %4512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4513 = getelementptr inbounds %struct.GPR, %struct.GPR* %4512, i32 0, i32 15
  %4514 = getelementptr inbounds %struct.Reg, %struct.Reg* %4513, i32 0, i32 0
  %RBP.i146 = bitcast %union.anon* %4514 to i64*
  %4515 = load i64, i64* %RBP.i146
  %4516 = sub i64 %4515, 60
  %4517 = load i64, i64* %PC.i144
  %4518 = add i64 %4517, 4
  store i64 %4518, i64* %PC.i144
  %4519 = inttoptr i64 %4516 to i32*
  %4520 = load i32, i32* %4519
  %4521 = sext i32 %4520 to i64
  store i64 %4521, i64* %RCX.i145, align 8
  store %struct.Memory* %loadMem_42c611, %struct.Memory** %MEMORY
  %loadMem_42c615 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4522 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4523 = getelementptr inbounds %struct.GPR, %struct.GPR* %4522, i32 0, i32 33
  %4524 = getelementptr inbounds %struct.Reg, %struct.Reg* %4523, i32 0, i32 0
  %PC.i141 = bitcast %union.anon* %4524 to i64*
  %4525 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4526 = getelementptr inbounds %struct.GPR, %struct.GPR* %4525, i32 0, i32 1
  %4527 = getelementptr inbounds %struct.Reg, %struct.Reg* %4526, i32 0, i32 0
  %RAX.i142 = bitcast %union.anon* %4527 to i64*
  %4528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4529 = getelementptr inbounds %struct.GPR, %struct.GPR* %4528, i32 0, i32 5
  %4530 = getelementptr inbounds %struct.Reg, %struct.Reg* %4529, i32 0, i32 0
  %RCX.i143 = bitcast %union.anon* %4530 to i64*
  %4531 = load i64, i64* %RAX.i142
  %4532 = load i64, i64* %RCX.i143
  %4533 = mul i64 %4532, 8
  %4534 = add i64 %4533, %4531
  %4535 = load i64, i64* %PC.i141
  %4536 = add i64 %4535, 4
  store i64 %4536, i64* %PC.i141
  %4537 = inttoptr i64 %4534 to i64*
  %4538 = load i64, i64* %4537
  store i64 %4538, i64* %RAX.i142, align 8
  store %struct.Memory* %loadMem_42c615, %struct.Memory** %MEMORY
  %loadMem_42c619 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4539 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4540 = getelementptr inbounds %struct.GPR, %struct.GPR* %4539, i32 0, i32 33
  %4541 = getelementptr inbounds %struct.Reg, %struct.Reg* %4540, i32 0, i32 0
  %PC.i138 = bitcast %union.anon* %4541 to i64*
  %4542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4543 = getelementptr inbounds %struct.GPR, %struct.GPR* %4542, i32 0, i32 5
  %4544 = getelementptr inbounds %struct.Reg, %struct.Reg* %4543, i32 0, i32 0
  %RCX.i139 = bitcast %union.anon* %4544 to i64*
  %4545 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4546 = getelementptr inbounds %struct.GPR, %struct.GPR* %4545, i32 0, i32 15
  %4547 = getelementptr inbounds %struct.Reg, %struct.Reg* %4546, i32 0, i32 0
  %RBP.i140 = bitcast %union.anon* %4547 to i64*
  %4548 = load i64, i64* %RBP.i140
  %4549 = sub i64 %4548, 40
  %4550 = load i64, i64* %PC.i138
  %4551 = add i64 %4550, 4
  store i64 %4551, i64* %PC.i138
  %4552 = inttoptr i64 %4549 to i32*
  %4553 = load i32, i32* %4552
  %4554 = sext i32 %4553 to i64
  store i64 %4554, i64* %RCX.i139, align 8
  store %struct.Memory* %loadMem_42c619, %struct.Memory** %MEMORY
  %loadMem_42c61d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4556 = getelementptr inbounds %struct.GPR, %struct.GPR* %4555, i32 0, i32 33
  %4557 = getelementptr inbounds %struct.Reg, %struct.Reg* %4556, i32 0, i32 0
  %PC.i134 = bitcast %union.anon* %4557 to i64*
  %4558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4559 = getelementptr inbounds %struct.GPR, %struct.GPR* %4558, i32 0, i32 1
  %4560 = getelementptr inbounds %struct.Reg, %struct.Reg* %4559, i32 0, i32 0
  %RAX.i135 = bitcast %union.anon* %4560 to i64*
  %4561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4562 = getelementptr inbounds %struct.GPR, %struct.GPR* %4561, i32 0, i32 5
  %4563 = getelementptr inbounds %struct.Reg, %struct.Reg* %4562, i32 0, i32 0
  %RCX.i136 = bitcast %union.anon* %4563 to i64*
  %4564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4565 = getelementptr inbounds %struct.GPR, %struct.GPR* %4564, i32 0, i32 7
  %4566 = getelementptr inbounds %struct.Reg, %struct.Reg* %4565, i32 0, i32 0
  %RDX.i137 = bitcast %union.anon* %4566 to i64*
  %4567 = load i64, i64* %RAX.i135
  %4568 = load i64, i64* %RCX.i136
  %4569 = add i64 %4568, %4567
  %4570 = load i64, i64* %PC.i134
  %4571 = add i64 %4570, 4
  store i64 %4571, i64* %PC.i134
  %4572 = inttoptr i64 %4569 to i8*
  %4573 = load i8, i8* %4572
  %4574 = sext i8 %4573 to i64
  %4575 = and i64 %4574, 4294967295
  store i64 %4575, i64* %RDX.i137, align 8
  store %struct.Memory* %loadMem_42c61d, %struct.Memory** %MEMORY
  %loadMem_42c621 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4576 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4577 = getelementptr inbounds %struct.GPR, %struct.GPR* %4576, i32 0, i32 33
  %4578 = getelementptr inbounds %struct.Reg, %struct.Reg* %4577, i32 0, i32 0
  %PC.i132 = bitcast %union.anon* %4578 to i64*
  %4579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4580 = getelementptr inbounds %struct.GPR, %struct.GPR* %4579, i32 0, i32 7
  %4581 = getelementptr inbounds %struct.Reg, %struct.Reg* %4580, i32 0, i32 0
  %EDX.i133 = bitcast %union.anon* %4581 to i32*
  %4582 = load i32, i32* %EDX.i133
  %4583 = zext i32 %4582 to i64
  %4584 = load i64, i64* %PC.i132
  %4585 = add i64 %4584, 3
  store i64 %4585, i64* %PC.i132
  %4586 = sub i32 %4582, 32
  %4587 = icmp ult i32 %4582, 32
  %4588 = zext i1 %4587 to i8
  %4589 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4588, i8* %4589, align 1
  %4590 = and i32 %4586, 255
  %4591 = call i32 @llvm.ctpop.i32(i32 %4590)
  %4592 = trunc i32 %4591 to i8
  %4593 = and i8 %4592, 1
  %4594 = xor i8 %4593, 1
  %4595 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4594, i8* %4595, align 1
  %4596 = xor i64 32, %4583
  %4597 = trunc i64 %4596 to i32
  %4598 = xor i32 %4597, %4586
  %4599 = lshr i32 %4598, 4
  %4600 = trunc i32 %4599 to i8
  %4601 = and i8 %4600, 1
  %4602 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4601, i8* %4602, align 1
  %4603 = icmp eq i32 %4586, 0
  %4604 = zext i1 %4603 to i8
  %4605 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4604, i8* %4605, align 1
  %4606 = lshr i32 %4586, 31
  %4607 = trunc i32 %4606 to i8
  %4608 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4607, i8* %4608, align 1
  %4609 = lshr i32 %4582, 31
  %4610 = xor i32 %4606, %4609
  %4611 = add i32 %4610, %4609
  %4612 = icmp eq i32 %4611, 2
  %4613 = zext i1 %4612 to i8
  %4614 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4613, i8* %4614, align 1
  store %struct.Memory* %loadMem_42c621, %struct.Memory** %MEMORY
  %loadMem_42c624 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4616 = getelementptr inbounds %struct.GPR, %struct.GPR* %4615, i32 0, i32 33
  %4617 = getelementptr inbounds %struct.Reg, %struct.Reg* %4616, i32 0, i32 0
  %PC.i131 = bitcast %union.anon* %4617 to i64*
  %4618 = load i64, i64* %PC.i131
  %4619 = add i64 %4618, 122
  %4620 = load i64, i64* %PC.i131
  %4621 = add i64 %4620, 6
  %4622 = load i64, i64* %PC.i131
  %4623 = add i64 %4622, 6
  store i64 %4623, i64* %PC.i131
  %4624 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4625 = load i8, i8* %4624, align 1
  store i8 %4625, i8* %BRANCH_TAKEN, align 1
  %4626 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4627 = icmp ne i8 %4625, 0
  %4628 = select i1 %4627, i64 %4619, i64 %4621
  store i64 %4628, i64* %4626, align 8
  store %struct.Memory* %loadMem_42c624, %struct.Memory** %MEMORY
  %loadBr_42c624 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42c624 = icmp eq i8 %loadBr_42c624, 1
  br i1 %cmpBr_42c624, label %block_.L_42c69e, label %block_42c62a

block_42c62a:                                     ; preds = %block_.L_42c60d
  %loadMem_42c62a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4630 = getelementptr inbounds %struct.GPR, %struct.GPR* %4629, i32 0, i32 33
  %4631 = getelementptr inbounds %struct.Reg, %struct.Reg* %4630, i32 0, i32 0
  %PC.i128 = bitcast %union.anon* %4631 to i64*
  %4632 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4633 = getelementptr inbounds %struct.GPR, %struct.GPR* %4632, i32 0, i32 1
  %4634 = getelementptr inbounds %struct.Reg, %struct.Reg* %4633, i32 0, i32 0
  %RAX.i129 = bitcast %union.anon* %4634 to i64*
  %4635 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4636 = getelementptr inbounds %struct.GPR, %struct.GPR* %4635, i32 0, i32 15
  %4637 = getelementptr inbounds %struct.Reg, %struct.Reg* %4636, i32 0, i32 0
  %RBP.i130 = bitcast %union.anon* %4637 to i64*
  %4638 = load i64, i64* %RBP.i130
  %4639 = sub i64 %4638, 16
  %4640 = load i64, i64* %PC.i128
  %4641 = add i64 %4640, 4
  store i64 %4641, i64* %PC.i128
  %4642 = inttoptr i64 %4639 to i64*
  %4643 = load i64, i64* %4642
  store i64 %4643, i64* %RAX.i129, align 8
  store %struct.Memory* %loadMem_42c62a, %struct.Memory** %MEMORY
  %loadMem_42c62e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4644 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4645 = getelementptr inbounds %struct.GPR, %struct.GPR* %4644, i32 0, i32 33
  %4646 = getelementptr inbounds %struct.Reg, %struct.Reg* %4645, i32 0, i32 0
  %PC.i125 = bitcast %union.anon* %4646 to i64*
  %4647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4648 = getelementptr inbounds %struct.GPR, %struct.GPR* %4647, i32 0, i32 5
  %4649 = getelementptr inbounds %struct.Reg, %struct.Reg* %4648, i32 0, i32 0
  %RCX.i126 = bitcast %union.anon* %4649 to i64*
  %4650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4651 = getelementptr inbounds %struct.GPR, %struct.GPR* %4650, i32 0, i32 15
  %4652 = getelementptr inbounds %struct.Reg, %struct.Reg* %4651, i32 0, i32 0
  %RBP.i127 = bitcast %union.anon* %4652 to i64*
  %4653 = load i64, i64* %RBP.i127
  %4654 = sub i64 %4653, 60
  %4655 = load i64, i64* %PC.i125
  %4656 = add i64 %4655, 4
  store i64 %4656, i64* %PC.i125
  %4657 = inttoptr i64 %4654 to i32*
  %4658 = load i32, i32* %4657
  %4659 = sext i32 %4658 to i64
  store i64 %4659, i64* %RCX.i126, align 8
  store %struct.Memory* %loadMem_42c62e, %struct.Memory** %MEMORY
  %loadMem_42c632 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4660 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4661 = getelementptr inbounds %struct.GPR, %struct.GPR* %4660, i32 0, i32 33
  %4662 = getelementptr inbounds %struct.Reg, %struct.Reg* %4661, i32 0, i32 0
  %PC.i122 = bitcast %union.anon* %4662 to i64*
  %4663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4664 = getelementptr inbounds %struct.GPR, %struct.GPR* %4663, i32 0, i32 1
  %4665 = getelementptr inbounds %struct.Reg, %struct.Reg* %4664, i32 0, i32 0
  %RAX.i123 = bitcast %union.anon* %4665 to i64*
  %4666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4667 = getelementptr inbounds %struct.GPR, %struct.GPR* %4666, i32 0, i32 5
  %4668 = getelementptr inbounds %struct.Reg, %struct.Reg* %4667, i32 0, i32 0
  %RCX.i124 = bitcast %union.anon* %4668 to i64*
  %4669 = load i64, i64* %RAX.i123
  %4670 = load i64, i64* %RCX.i124
  %4671 = mul i64 %4670, 8
  %4672 = add i64 %4671, %4669
  %4673 = load i64, i64* %PC.i122
  %4674 = add i64 %4673, 4
  store i64 %4674, i64* %PC.i122
  %4675 = inttoptr i64 %4672 to i64*
  %4676 = load i64, i64* %4675
  store i64 %4676, i64* %RAX.i123, align 8
  store %struct.Memory* %loadMem_42c632, %struct.Memory** %MEMORY
  %loadMem_42c636 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4678 = getelementptr inbounds %struct.GPR, %struct.GPR* %4677, i32 0, i32 33
  %4679 = getelementptr inbounds %struct.Reg, %struct.Reg* %4678, i32 0, i32 0
  %PC.i119 = bitcast %union.anon* %4679 to i64*
  %4680 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4681 = getelementptr inbounds %struct.GPR, %struct.GPR* %4680, i32 0, i32 5
  %4682 = getelementptr inbounds %struct.Reg, %struct.Reg* %4681, i32 0, i32 0
  %RCX.i120 = bitcast %union.anon* %4682 to i64*
  %4683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4684 = getelementptr inbounds %struct.GPR, %struct.GPR* %4683, i32 0, i32 15
  %4685 = getelementptr inbounds %struct.Reg, %struct.Reg* %4684, i32 0, i32 0
  %RBP.i121 = bitcast %union.anon* %4685 to i64*
  %4686 = load i64, i64* %RBP.i121
  %4687 = sub i64 %4686, 40
  %4688 = load i64, i64* %PC.i119
  %4689 = add i64 %4688, 4
  store i64 %4689, i64* %PC.i119
  %4690 = inttoptr i64 %4687 to i32*
  %4691 = load i32, i32* %4690
  %4692 = sext i32 %4691 to i64
  store i64 %4692, i64* %RCX.i120, align 8
  store %struct.Memory* %loadMem_42c636, %struct.Memory** %MEMORY
  %loadMem_42c63a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4694 = getelementptr inbounds %struct.GPR, %struct.GPR* %4693, i32 0, i32 33
  %4695 = getelementptr inbounds %struct.Reg, %struct.Reg* %4694, i32 0, i32 0
  %PC.i115 = bitcast %union.anon* %4695 to i64*
  %4696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4697 = getelementptr inbounds %struct.GPR, %struct.GPR* %4696, i32 0, i32 1
  %4698 = getelementptr inbounds %struct.Reg, %struct.Reg* %4697, i32 0, i32 0
  %RAX.i116 = bitcast %union.anon* %4698 to i64*
  %4699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4700 = getelementptr inbounds %struct.GPR, %struct.GPR* %4699, i32 0, i32 5
  %4701 = getelementptr inbounds %struct.Reg, %struct.Reg* %4700, i32 0, i32 0
  %RCX.i117 = bitcast %union.anon* %4701 to i64*
  %4702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4703 = getelementptr inbounds %struct.GPR, %struct.GPR* %4702, i32 0, i32 7
  %4704 = getelementptr inbounds %struct.Reg, %struct.Reg* %4703, i32 0, i32 0
  %RDX.i118 = bitcast %union.anon* %4704 to i64*
  %4705 = load i64, i64* %RAX.i116
  %4706 = load i64, i64* %RCX.i117
  %4707 = add i64 %4706, %4705
  %4708 = load i64, i64* %PC.i115
  %4709 = add i64 %4708, 4
  store i64 %4709, i64* %PC.i115
  %4710 = inttoptr i64 %4707 to i8*
  %4711 = load i8, i8* %4710
  %4712 = sext i8 %4711 to i64
  %4713 = and i64 %4712, 4294967295
  store i64 %4713, i64* %RDX.i118, align 8
  store %struct.Memory* %loadMem_42c63a, %struct.Memory** %MEMORY
  %loadMem_42c63e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4715 = getelementptr inbounds %struct.GPR, %struct.GPR* %4714, i32 0, i32 33
  %4716 = getelementptr inbounds %struct.Reg, %struct.Reg* %4715, i32 0, i32 0
  %PC.i113 = bitcast %union.anon* %4716 to i64*
  %4717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4718 = getelementptr inbounds %struct.GPR, %struct.GPR* %4717, i32 0, i32 7
  %4719 = getelementptr inbounds %struct.Reg, %struct.Reg* %4718, i32 0, i32 0
  %EDX.i114 = bitcast %union.anon* %4719 to i32*
  %4720 = load i32, i32* %EDX.i114
  %4721 = zext i32 %4720 to i64
  %4722 = load i64, i64* %PC.i113
  %4723 = add i64 %4722, 3
  store i64 %4723, i64* %PC.i113
  %4724 = sub i32 %4720, 46
  %4725 = icmp ult i32 %4720, 46
  %4726 = zext i1 %4725 to i8
  %4727 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4726, i8* %4727, align 1
  %4728 = and i32 %4724, 255
  %4729 = call i32 @llvm.ctpop.i32(i32 %4728)
  %4730 = trunc i32 %4729 to i8
  %4731 = and i8 %4730, 1
  %4732 = xor i8 %4731, 1
  %4733 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4732, i8* %4733, align 1
  %4734 = xor i64 46, %4721
  %4735 = trunc i64 %4734 to i32
  %4736 = xor i32 %4735, %4724
  %4737 = lshr i32 %4736, 4
  %4738 = trunc i32 %4737 to i8
  %4739 = and i8 %4738, 1
  %4740 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4739, i8* %4740, align 1
  %4741 = icmp eq i32 %4724, 0
  %4742 = zext i1 %4741 to i8
  %4743 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4742, i8* %4743, align 1
  %4744 = lshr i32 %4724, 31
  %4745 = trunc i32 %4744 to i8
  %4746 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4745, i8* %4746, align 1
  %4747 = lshr i32 %4720, 31
  %4748 = xor i32 %4744, %4747
  %4749 = add i32 %4748, %4747
  %4750 = icmp eq i32 %4749, 2
  %4751 = zext i1 %4750 to i8
  %4752 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4751, i8* %4752, align 1
  store %struct.Memory* %loadMem_42c63e, %struct.Memory** %MEMORY
  %loadMem_42c641 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4753 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4754 = getelementptr inbounds %struct.GPR, %struct.GPR* %4753, i32 0, i32 33
  %4755 = getelementptr inbounds %struct.Reg, %struct.Reg* %4754, i32 0, i32 0
  %PC.i112 = bitcast %union.anon* %4755 to i64*
  %4756 = load i64, i64* %PC.i112
  %4757 = add i64 %4756, 93
  %4758 = load i64, i64* %PC.i112
  %4759 = add i64 %4758, 6
  %4760 = load i64, i64* %PC.i112
  %4761 = add i64 %4760, 6
  store i64 %4761, i64* %PC.i112
  %4762 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4763 = load i8, i8* %4762, align 1
  store i8 %4763, i8* %BRANCH_TAKEN, align 1
  %4764 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4765 = icmp ne i8 %4763, 0
  %4766 = select i1 %4765, i64 %4757, i64 %4759
  store i64 %4766, i64* %4764, align 8
  store %struct.Memory* %loadMem_42c641, %struct.Memory** %MEMORY
  %loadBr_42c641 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42c641 = icmp eq i8 %loadBr_42c641, 1
  br i1 %cmpBr_42c641, label %block_.L_42c69e, label %block_42c647

block_42c647:                                     ; preds = %block_42c62a
  %loadMem_42c647 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4767 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4768 = getelementptr inbounds %struct.GPR, %struct.GPR* %4767, i32 0, i32 33
  %4769 = getelementptr inbounds %struct.Reg, %struct.Reg* %4768, i32 0, i32 0
  %PC.i109 = bitcast %union.anon* %4769 to i64*
  %4770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4771 = getelementptr inbounds %struct.GPR, %struct.GPR* %4770, i32 0, i32 1
  %4772 = getelementptr inbounds %struct.Reg, %struct.Reg* %4771, i32 0, i32 0
  %RAX.i110 = bitcast %union.anon* %4772 to i64*
  %4773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4774 = getelementptr inbounds %struct.GPR, %struct.GPR* %4773, i32 0, i32 15
  %4775 = getelementptr inbounds %struct.Reg, %struct.Reg* %4774, i32 0, i32 0
  %RBP.i111 = bitcast %union.anon* %4775 to i64*
  %4776 = load i64, i64* %RBP.i111
  %4777 = sub i64 %4776, 16
  %4778 = load i64, i64* %PC.i109
  %4779 = add i64 %4778, 4
  store i64 %4779, i64* %PC.i109
  %4780 = inttoptr i64 %4777 to i64*
  %4781 = load i64, i64* %4780
  store i64 %4781, i64* %RAX.i110, align 8
  store %struct.Memory* %loadMem_42c647, %struct.Memory** %MEMORY
  %loadMem_42c64b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4782 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4783 = getelementptr inbounds %struct.GPR, %struct.GPR* %4782, i32 0, i32 33
  %4784 = getelementptr inbounds %struct.Reg, %struct.Reg* %4783, i32 0, i32 0
  %PC.i106 = bitcast %union.anon* %4784 to i64*
  %4785 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4786 = getelementptr inbounds %struct.GPR, %struct.GPR* %4785, i32 0, i32 5
  %4787 = getelementptr inbounds %struct.Reg, %struct.Reg* %4786, i32 0, i32 0
  %RCX.i107 = bitcast %union.anon* %4787 to i64*
  %4788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4789 = getelementptr inbounds %struct.GPR, %struct.GPR* %4788, i32 0, i32 15
  %4790 = getelementptr inbounds %struct.Reg, %struct.Reg* %4789, i32 0, i32 0
  %RBP.i108 = bitcast %union.anon* %4790 to i64*
  %4791 = load i64, i64* %RBP.i108
  %4792 = sub i64 %4791, 60
  %4793 = load i64, i64* %PC.i106
  %4794 = add i64 %4793, 4
  store i64 %4794, i64* %PC.i106
  %4795 = inttoptr i64 %4792 to i32*
  %4796 = load i32, i32* %4795
  %4797 = sext i32 %4796 to i64
  store i64 %4797, i64* %RCX.i107, align 8
  store %struct.Memory* %loadMem_42c64b, %struct.Memory** %MEMORY
  %loadMem_42c64f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4798 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4799 = getelementptr inbounds %struct.GPR, %struct.GPR* %4798, i32 0, i32 33
  %4800 = getelementptr inbounds %struct.Reg, %struct.Reg* %4799, i32 0, i32 0
  %PC.i103 = bitcast %union.anon* %4800 to i64*
  %4801 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4802 = getelementptr inbounds %struct.GPR, %struct.GPR* %4801, i32 0, i32 1
  %4803 = getelementptr inbounds %struct.Reg, %struct.Reg* %4802, i32 0, i32 0
  %RAX.i104 = bitcast %union.anon* %4803 to i64*
  %4804 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4805 = getelementptr inbounds %struct.GPR, %struct.GPR* %4804, i32 0, i32 5
  %4806 = getelementptr inbounds %struct.Reg, %struct.Reg* %4805, i32 0, i32 0
  %RCX.i105 = bitcast %union.anon* %4806 to i64*
  %4807 = load i64, i64* %RAX.i104
  %4808 = load i64, i64* %RCX.i105
  %4809 = mul i64 %4808, 8
  %4810 = add i64 %4809, %4807
  %4811 = load i64, i64* %PC.i103
  %4812 = add i64 %4811, 4
  store i64 %4812, i64* %PC.i103
  %4813 = inttoptr i64 %4810 to i64*
  %4814 = load i64, i64* %4813
  store i64 %4814, i64* %RAX.i104, align 8
  store %struct.Memory* %loadMem_42c64f, %struct.Memory** %MEMORY
  %loadMem_42c653 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4815 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4816 = getelementptr inbounds %struct.GPR, %struct.GPR* %4815, i32 0, i32 33
  %4817 = getelementptr inbounds %struct.Reg, %struct.Reg* %4816, i32 0, i32 0
  %PC.i100 = bitcast %union.anon* %4817 to i64*
  %4818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4819 = getelementptr inbounds %struct.GPR, %struct.GPR* %4818, i32 0, i32 5
  %4820 = getelementptr inbounds %struct.Reg, %struct.Reg* %4819, i32 0, i32 0
  %RCX.i101 = bitcast %union.anon* %4820 to i64*
  %4821 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4822 = getelementptr inbounds %struct.GPR, %struct.GPR* %4821, i32 0, i32 15
  %4823 = getelementptr inbounds %struct.Reg, %struct.Reg* %4822, i32 0, i32 0
  %RBP.i102 = bitcast %union.anon* %4823 to i64*
  %4824 = load i64, i64* %RBP.i102
  %4825 = sub i64 %4824, 40
  %4826 = load i64, i64* %PC.i100
  %4827 = add i64 %4826, 4
  store i64 %4827, i64* %PC.i100
  %4828 = inttoptr i64 %4825 to i32*
  %4829 = load i32, i32* %4828
  %4830 = sext i32 %4829 to i64
  store i64 %4830, i64* %RCX.i101, align 8
  store %struct.Memory* %loadMem_42c653, %struct.Memory** %MEMORY
  %loadMem_42c657 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4831 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4832 = getelementptr inbounds %struct.GPR, %struct.GPR* %4831, i32 0, i32 33
  %4833 = getelementptr inbounds %struct.Reg, %struct.Reg* %4832, i32 0, i32 0
  %PC.i96 = bitcast %union.anon* %4833 to i64*
  %4834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4835 = getelementptr inbounds %struct.GPR, %struct.GPR* %4834, i32 0, i32 1
  %4836 = getelementptr inbounds %struct.Reg, %struct.Reg* %4835, i32 0, i32 0
  %RAX.i97 = bitcast %union.anon* %4836 to i64*
  %4837 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4838 = getelementptr inbounds %struct.GPR, %struct.GPR* %4837, i32 0, i32 5
  %4839 = getelementptr inbounds %struct.Reg, %struct.Reg* %4838, i32 0, i32 0
  %RCX.i98 = bitcast %union.anon* %4839 to i64*
  %4840 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4841 = getelementptr inbounds %struct.GPR, %struct.GPR* %4840, i32 0, i32 7
  %4842 = getelementptr inbounds %struct.Reg, %struct.Reg* %4841, i32 0, i32 0
  %RDX.i99 = bitcast %union.anon* %4842 to i64*
  %4843 = load i64, i64* %RAX.i97
  %4844 = load i64, i64* %RCX.i98
  %4845 = add i64 %4844, %4843
  %4846 = load i64, i64* %PC.i96
  %4847 = add i64 %4846, 4
  store i64 %4847, i64* %PC.i96
  %4848 = inttoptr i64 %4845 to i8*
  %4849 = load i8, i8* %4848
  %4850 = sext i8 %4849 to i64
  %4851 = and i64 %4850, 4294967295
  store i64 %4851, i64* %RDX.i99, align 8
  store %struct.Memory* %loadMem_42c657, %struct.Memory** %MEMORY
  %loadMem_42c65b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4852 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4853 = getelementptr inbounds %struct.GPR, %struct.GPR* %4852, i32 0, i32 33
  %4854 = getelementptr inbounds %struct.Reg, %struct.Reg* %4853, i32 0, i32 0
  %PC.i94 = bitcast %union.anon* %4854 to i64*
  %4855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4856 = getelementptr inbounds %struct.GPR, %struct.GPR* %4855, i32 0, i32 7
  %4857 = getelementptr inbounds %struct.Reg, %struct.Reg* %4856, i32 0, i32 0
  %EDX.i95 = bitcast %union.anon* %4857 to i32*
  %4858 = load i32, i32* %EDX.i95
  %4859 = zext i32 %4858 to i64
  %4860 = load i64, i64* %PC.i94
  %4861 = add i64 %4860, 3
  store i64 %4861, i64* %PC.i94
  %4862 = sub i32 %4858, 95
  %4863 = icmp ult i32 %4858, 95
  %4864 = zext i1 %4863 to i8
  %4865 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4864, i8* %4865, align 1
  %4866 = and i32 %4862, 255
  %4867 = call i32 @llvm.ctpop.i32(i32 %4866)
  %4868 = trunc i32 %4867 to i8
  %4869 = and i8 %4868, 1
  %4870 = xor i8 %4869, 1
  %4871 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4870, i8* %4871, align 1
  %4872 = xor i64 95, %4859
  %4873 = trunc i64 %4872 to i32
  %4874 = xor i32 %4873, %4862
  %4875 = lshr i32 %4874, 4
  %4876 = trunc i32 %4875 to i8
  %4877 = and i8 %4876, 1
  %4878 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4877, i8* %4878, align 1
  %4879 = icmp eq i32 %4862, 0
  %4880 = zext i1 %4879 to i8
  %4881 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4880, i8* %4881, align 1
  %4882 = lshr i32 %4862, 31
  %4883 = trunc i32 %4882 to i8
  %4884 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4883, i8* %4884, align 1
  %4885 = lshr i32 %4858, 31
  %4886 = xor i32 %4882, %4885
  %4887 = add i32 %4886, %4885
  %4888 = icmp eq i32 %4887, 2
  %4889 = zext i1 %4888 to i8
  %4890 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4889, i8* %4890, align 1
  store %struct.Memory* %loadMem_42c65b, %struct.Memory** %MEMORY
  %loadMem_42c65e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4891 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4892 = getelementptr inbounds %struct.GPR, %struct.GPR* %4891, i32 0, i32 33
  %4893 = getelementptr inbounds %struct.Reg, %struct.Reg* %4892, i32 0, i32 0
  %PC.i93 = bitcast %union.anon* %4893 to i64*
  %4894 = load i64, i64* %PC.i93
  %4895 = add i64 %4894, 64
  %4896 = load i64, i64* %PC.i93
  %4897 = add i64 %4896, 6
  %4898 = load i64, i64* %PC.i93
  %4899 = add i64 %4898, 6
  store i64 %4899, i64* %PC.i93
  %4900 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4901 = load i8, i8* %4900, align 1
  store i8 %4901, i8* %BRANCH_TAKEN, align 1
  %4902 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4903 = icmp ne i8 %4901, 0
  %4904 = select i1 %4903, i64 %4895, i64 %4897
  store i64 %4904, i64* %4902, align 8
  store %struct.Memory* %loadMem_42c65e, %struct.Memory** %MEMORY
  %loadBr_42c65e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42c65e = icmp eq i8 %loadBr_42c65e, 1
  br i1 %cmpBr_42c65e, label %block_.L_42c69e, label %block_42c664

block_42c664:                                     ; preds = %block_42c647
  %loadMem_42c664 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4905 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4906 = getelementptr inbounds %struct.GPR, %struct.GPR* %4905, i32 0, i32 33
  %4907 = getelementptr inbounds %struct.Reg, %struct.Reg* %4906, i32 0, i32 0
  %PC.i90 = bitcast %union.anon* %4907 to i64*
  %4908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4909 = getelementptr inbounds %struct.GPR, %struct.GPR* %4908, i32 0, i32 1
  %4910 = getelementptr inbounds %struct.Reg, %struct.Reg* %4909, i32 0, i32 0
  %RAX.i91 = bitcast %union.anon* %4910 to i64*
  %4911 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4912 = getelementptr inbounds %struct.GPR, %struct.GPR* %4911, i32 0, i32 15
  %4913 = getelementptr inbounds %struct.Reg, %struct.Reg* %4912, i32 0, i32 0
  %RBP.i92 = bitcast %union.anon* %4913 to i64*
  %4914 = load i64, i64* %RBP.i92
  %4915 = sub i64 %4914, 16
  %4916 = load i64, i64* %PC.i90
  %4917 = add i64 %4916, 4
  store i64 %4917, i64* %PC.i90
  %4918 = inttoptr i64 %4915 to i64*
  %4919 = load i64, i64* %4918
  store i64 %4919, i64* %RAX.i91, align 8
  store %struct.Memory* %loadMem_42c664, %struct.Memory** %MEMORY
  %loadMem_42c668 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4921 = getelementptr inbounds %struct.GPR, %struct.GPR* %4920, i32 0, i32 33
  %4922 = getelementptr inbounds %struct.Reg, %struct.Reg* %4921, i32 0, i32 0
  %PC.i87 = bitcast %union.anon* %4922 to i64*
  %4923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4924 = getelementptr inbounds %struct.GPR, %struct.GPR* %4923, i32 0, i32 5
  %4925 = getelementptr inbounds %struct.Reg, %struct.Reg* %4924, i32 0, i32 0
  %RCX.i88 = bitcast %union.anon* %4925 to i64*
  %4926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4927 = getelementptr inbounds %struct.GPR, %struct.GPR* %4926, i32 0, i32 15
  %4928 = getelementptr inbounds %struct.Reg, %struct.Reg* %4927, i32 0, i32 0
  %RBP.i89 = bitcast %union.anon* %4928 to i64*
  %4929 = load i64, i64* %RBP.i89
  %4930 = sub i64 %4929, 60
  %4931 = load i64, i64* %PC.i87
  %4932 = add i64 %4931, 4
  store i64 %4932, i64* %PC.i87
  %4933 = inttoptr i64 %4930 to i32*
  %4934 = load i32, i32* %4933
  %4935 = sext i32 %4934 to i64
  store i64 %4935, i64* %RCX.i88, align 8
  store %struct.Memory* %loadMem_42c668, %struct.Memory** %MEMORY
  %loadMem_42c66c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4936 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4937 = getelementptr inbounds %struct.GPR, %struct.GPR* %4936, i32 0, i32 33
  %4938 = getelementptr inbounds %struct.Reg, %struct.Reg* %4937, i32 0, i32 0
  %PC.i84 = bitcast %union.anon* %4938 to i64*
  %4939 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4940 = getelementptr inbounds %struct.GPR, %struct.GPR* %4939, i32 0, i32 1
  %4941 = getelementptr inbounds %struct.Reg, %struct.Reg* %4940, i32 0, i32 0
  %RAX.i85 = bitcast %union.anon* %4941 to i64*
  %4942 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4943 = getelementptr inbounds %struct.GPR, %struct.GPR* %4942, i32 0, i32 5
  %4944 = getelementptr inbounds %struct.Reg, %struct.Reg* %4943, i32 0, i32 0
  %RCX.i86 = bitcast %union.anon* %4944 to i64*
  %4945 = load i64, i64* %RAX.i85
  %4946 = load i64, i64* %RCX.i86
  %4947 = mul i64 %4946, 8
  %4948 = add i64 %4947, %4945
  %4949 = load i64, i64* %PC.i84
  %4950 = add i64 %4949, 4
  store i64 %4950, i64* %PC.i84
  %4951 = inttoptr i64 %4948 to i64*
  %4952 = load i64, i64* %4951
  store i64 %4952, i64* %RAX.i85, align 8
  store %struct.Memory* %loadMem_42c66c, %struct.Memory** %MEMORY
  %loadMem_42c670 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4953 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4954 = getelementptr inbounds %struct.GPR, %struct.GPR* %4953, i32 0, i32 33
  %4955 = getelementptr inbounds %struct.Reg, %struct.Reg* %4954, i32 0, i32 0
  %PC.i81 = bitcast %union.anon* %4955 to i64*
  %4956 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4957 = getelementptr inbounds %struct.GPR, %struct.GPR* %4956, i32 0, i32 5
  %4958 = getelementptr inbounds %struct.Reg, %struct.Reg* %4957, i32 0, i32 0
  %RCX.i82 = bitcast %union.anon* %4958 to i64*
  %4959 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4960 = getelementptr inbounds %struct.GPR, %struct.GPR* %4959, i32 0, i32 15
  %4961 = getelementptr inbounds %struct.Reg, %struct.Reg* %4960, i32 0, i32 0
  %RBP.i83 = bitcast %union.anon* %4961 to i64*
  %4962 = load i64, i64* %RBP.i83
  %4963 = sub i64 %4962, 40
  %4964 = load i64, i64* %PC.i81
  %4965 = add i64 %4964, 4
  store i64 %4965, i64* %PC.i81
  %4966 = inttoptr i64 %4963 to i32*
  %4967 = load i32, i32* %4966
  %4968 = sext i32 %4967 to i64
  store i64 %4968, i64* %RCX.i82, align 8
  store %struct.Memory* %loadMem_42c670, %struct.Memory** %MEMORY
  %loadMem_42c674 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4969 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4970 = getelementptr inbounds %struct.GPR, %struct.GPR* %4969, i32 0, i32 33
  %4971 = getelementptr inbounds %struct.Reg, %struct.Reg* %4970, i32 0, i32 0
  %PC.i77 = bitcast %union.anon* %4971 to i64*
  %4972 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4973 = getelementptr inbounds %struct.GPR, %struct.GPR* %4972, i32 0, i32 1
  %4974 = getelementptr inbounds %struct.Reg, %struct.Reg* %4973, i32 0, i32 0
  %RAX.i78 = bitcast %union.anon* %4974 to i64*
  %4975 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4976 = getelementptr inbounds %struct.GPR, %struct.GPR* %4975, i32 0, i32 5
  %4977 = getelementptr inbounds %struct.Reg, %struct.Reg* %4976, i32 0, i32 0
  %RCX.i79 = bitcast %union.anon* %4977 to i64*
  %4978 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4979 = getelementptr inbounds %struct.GPR, %struct.GPR* %4978, i32 0, i32 7
  %4980 = getelementptr inbounds %struct.Reg, %struct.Reg* %4979, i32 0, i32 0
  %RDX.i80 = bitcast %union.anon* %4980 to i64*
  %4981 = load i64, i64* %RAX.i78
  %4982 = load i64, i64* %RCX.i79
  %4983 = add i64 %4982, %4981
  %4984 = load i64, i64* %PC.i77
  %4985 = add i64 %4984, 4
  store i64 %4985, i64* %PC.i77
  %4986 = inttoptr i64 %4983 to i8*
  %4987 = load i8, i8* %4986
  %4988 = sext i8 %4987 to i64
  %4989 = and i64 %4988, 4294967295
  store i64 %4989, i64* %RDX.i80, align 8
  store %struct.Memory* %loadMem_42c674, %struct.Memory** %MEMORY
  %loadMem_42c678 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4990 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4991 = getelementptr inbounds %struct.GPR, %struct.GPR* %4990, i32 0, i32 33
  %4992 = getelementptr inbounds %struct.Reg, %struct.Reg* %4991, i32 0, i32 0
  %PC.i75 = bitcast %union.anon* %4992 to i64*
  %4993 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4994 = getelementptr inbounds %struct.GPR, %struct.GPR* %4993, i32 0, i32 7
  %4995 = getelementptr inbounds %struct.Reg, %struct.Reg* %4994, i32 0, i32 0
  %EDX.i76 = bitcast %union.anon* %4995 to i32*
  %4996 = load i32, i32* %EDX.i76
  %4997 = zext i32 %4996 to i64
  %4998 = load i64, i64* %PC.i75
  %4999 = add i64 %4998, 3
  store i64 %4999, i64* %PC.i75
  %5000 = sub i32 %4996, 45
  %5001 = icmp ult i32 %4996, 45
  %5002 = zext i1 %5001 to i8
  %5003 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5002, i8* %5003, align 1
  %5004 = and i32 %5000, 255
  %5005 = call i32 @llvm.ctpop.i32(i32 %5004)
  %5006 = trunc i32 %5005 to i8
  %5007 = and i8 %5006, 1
  %5008 = xor i8 %5007, 1
  %5009 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5008, i8* %5009, align 1
  %5010 = xor i64 45, %4997
  %5011 = trunc i64 %5010 to i32
  %5012 = xor i32 %5011, %5000
  %5013 = lshr i32 %5012, 4
  %5014 = trunc i32 %5013 to i8
  %5015 = and i8 %5014, 1
  %5016 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5015, i8* %5016, align 1
  %5017 = icmp eq i32 %5000, 0
  %5018 = zext i1 %5017 to i8
  %5019 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5018, i8* %5019, align 1
  %5020 = lshr i32 %5000, 31
  %5021 = trunc i32 %5020 to i8
  %5022 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5021, i8* %5022, align 1
  %5023 = lshr i32 %4996, 31
  %5024 = xor i32 %5020, %5023
  %5025 = add i32 %5024, %5023
  %5026 = icmp eq i32 %5025, 2
  %5027 = zext i1 %5026 to i8
  %5028 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5027, i8* %5028, align 1
  store %struct.Memory* %loadMem_42c678, %struct.Memory** %MEMORY
  %loadMem_42c67b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5030 = getelementptr inbounds %struct.GPR, %struct.GPR* %5029, i32 0, i32 33
  %5031 = getelementptr inbounds %struct.Reg, %struct.Reg* %5030, i32 0, i32 0
  %PC.i74 = bitcast %union.anon* %5031 to i64*
  %5032 = load i64, i64* %PC.i74
  %5033 = add i64 %5032, 35
  %5034 = load i64, i64* %PC.i74
  %5035 = add i64 %5034, 6
  %5036 = load i64, i64* %PC.i74
  %5037 = add i64 %5036, 6
  store i64 %5037, i64* %PC.i74
  %5038 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5039 = load i8, i8* %5038, align 1
  store i8 %5039, i8* %BRANCH_TAKEN, align 1
  %5040 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5041 = icmp ne i8 %5039, 0
  %5042 = select i1 %5041, i64 %5033, i64 %5035
  store i64 %5042, i64* %5040, align 8
  store %struct.Memory* %loadMem_42c67b, %struct.Memory** %MEMORY
  %loadBr_42c67b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42c67b = icmp eq i8 %loadBr_42c67b, 1
  br i1 %cmpBr_42c67b, label %block_.L_42c69e, label %block_42c681

block_42c681:                                     ; preds = %block_42c664
  %loadMem_42c681 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5043 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5044 = getelementptr inbounds %struct.GPR, %struct.GPR* %5043, i32 0, i32 33
  %5045 = getelementptr inbounds %struct.Reg, %struct.Reg* %5044, i32 0, i32 0
  %PC.i71 = bitcast %union.anon* %5045 to i64*
  %5046 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5047 = getelementptr inbounds %struct.GPR, %struct.GPR* %5046, i32 0, i32 1
  %5048 = getelementptr inbounds %struct.Reg, %struct.Reg* %5047, i32 0, i32 0
  %RAX.i72 = bitcast %union.anon* %5048 to i64*
  %5049 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5050 = getelementptr inbounds %struct.GPR, %struct.GPR* %5049, i32 0, i32 15
  %5051 = getelementptr inbounds %struct.Reg, %struct.Reg* %5050, i32 0, i32 0
  %RBP.i73 = bitcast %union.anon* %5051 to i64*
  %5052 = load i64, i64* %RBP.i73
  %5053 = sub i64 %5052, 16
  %5054 = load i64, i64* %PC.i71
  %5055 = add i64 %5054, 4
  store i64 %5055, i64* %PC.i71
  %5056 = inttoptr i64 %5053 to i64*
  %5057 = load i64, i64* %5056
  store i64 %5057, i64* %RAX.i72, align 8
  store %struct.Memory* %loadMem_42c681, %struct.Memory** %MEMORY
  %loadMem_42c685 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5058 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5059 = getelementptr inbounds %struct.GPR, %struct.GPR* %5058, i32 0, i32 33
  %5060 = getelementptr inbounds %struct.Reg, %struct.Reg* %5059, i32 0, i32 0
  %PC.i68 = bitcast %union.anon* %5060 to i64*
  %5061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5062 = getelementptr inbounds %struct.GPR, %struct.GPR* %5061, i32 0, i32 5
  %5063 = getelementptr inbounds %struct.Reg, %struct.Reg* %5062, i32 0, i32 0
  %RCX.i69 = bitcast %union.anon* %5063 to i64*
  %5064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5065 = getelementptr inbounds %struct.GPR, %struct.GPR* %5064, i32 0, i32 15
  %5066 = getelementptr inbounds %struct.Reg, %struct.Reg* %5065, i32 0, i32 0
  %RBP.i70 = bitcast %union.anon* %5066 to i64*
  %5067 = load i64, i64* %RBP.i70
  %5068 = sub i64 %5067, 60
  %5069 = load i64, i64* %PC.i68
  %5070 = add i64 %5069, 4
  store i64 %5070, i64* %PC.i68
  %5071 = inttoptr i64 %5068 to i32*
  %5072 = load i32, i32* %5071
  %5073 = sext i32 %5072 to i64
  store i64 %5073, i64* %RCX.i69, align 8
  store %struct.Memory* %loadMem_42c685, %struct.Memory** %MEMORY
  %loadMem_42c689 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5074 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5075 = getelementptr inbounds %struct.GPR, %struct.GPR* %5074, i32 0, i32 33
  %5076 = getelementptr inbounds %struct.Reg, %struct.Reg* %5075, i32 0, i32 0
  %PC.i65 = bitcast %union.anon* %5076 to i64*
  %5077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5078 = getelementptr inbounds %struct.GPR, %struct.GPR* %5077, i32 0, i32 1
  %5079 = getelementptr inbounds %struct.Reg, %struct.Reg* %5078, i32 0, i32 0
  %RAX.i66 = bitcast %union.anon* %5079 to i64*
  %5080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5081 = getelementptr inbounds %struct.GPR, %struct.GPR* %5080, i32 0, i32 5
  %5082 = getelementptr inbounds %struct.Reg, %struct.Reg* %5081, i32 0, i32 0
  %RCX.i67 = bitcast %union.anon* %5082 to i64*
  %5083 = load i64, i64* %RAX.i66
  %5084 = load i64, i64* %RCX.i67
  %5085 = mul i64 %5084, 8
  %5086 = add i64 %5085, %5083
  %5087 = load i64, i64* %PC.i65
  %5088 = add i64 %5087, 4
  store i64 %5088, i64* %PC.i65
  %5089 = inttoptr i64 %5086 to i64*
  %5090 = load i64, i64* %5089
  store i64 %5090, i64* %RAX.i66, align 8
  store %struct.Memory* %loadMem_42c689, %struct.Memory** %MEMORY
  %loadMem_42c68d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5091 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5092 = getelementptr inbounds %struct.GPR, %struct.GPR* %5091, i32 0, i32 33
  %5093 = getelementptr inbounds %struct.Reg, %struct.Reg* %5092, i32 0, i32 0
  %PC.i62 = bitcast %union.anon* %5093 to i64*
  %5094 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5095 = getelementptr inbounds %struct.GPR, %struct.GPR* %5094, i32 0, i32 5
  %5096 = getelementptr inbounds %struct.Reg, %struct.Reg* %5095, i32 0, i32 0
  %RCX.i63 = bitcast %union.anon* %5096 to i64*
  %5097 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5098 = getelementptr inbounds %struct.GPR, %struct.GPR* %5097, i32 0, i32 15
  %5099 = getelementptr inbounds %struct.Reg, %struct.Reg* %5098, i32 0, i32 0
  %RBP.i64 = bitcast %union.anon* %5099 to i64*
  %5100 = load i64, i64* %RBP.i64
  %5101 = sub i64 %5100, 40
  %5102 = load i64, i64* %PC.i62
  %5103 = add i64 %5102, 4
  store i64 %5103, i64* %PC.i62
  %5104 = inttoptr i64 %5101 to i32*
  %5105 = load i32, i32* %5104
  %5106 = sext i32 %5105 to i64
  store i64 %5106, i64* %RCX.i63, align 8
  store %struct.Memory* %loadMem_42c68d, %struct.Memory** %MEMORY
  %loadMem_42c691 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5108 = getelementptr inbounds %struct.GPR, %struct.GPR* %5107, i32 0, i32 33
  %5109 = getelementptr inbounds %struct.Reg, %struct.Reg* %5108, i32 0, i32 0
  %PC.i59 = bitcast %union.anon* %5109 to i64*
  %5110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5111 = getelementptr inbounds %struct.GPR, %struct.GPR* %5110, i32 0, i32 1
  %5112 = getelementptr inbounds %struct.Reg, %struct.Reg* %5111, i32 0, i32 0
  %RAX.i60 = bitcast %union.anon* %5112 to i64*
  %5113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5114 = getelementptr inbounds %struct.GPR, %struct.GPR* %5113, i32 0, i32 5
  %5115 = getelementptr inbounds %struct.Reg, %struct.Reg* %5114, i32 0, i32 0
  %RCX.i61 = bitcast %union.anon* %5115 to i64*
  %5116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5117 = getelementptr inbounds %struct.GPR, %struct.GPR* %5116, i32 0, i32 7
  %5118 = getelementptr inbounds %struct.Reg, %struct.Reg* %5117, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %5118 to i64*
  %5119 = load i64, i64* %RAX.i60
  %5120 = load i64, i64* %RCX.i61
  %5121 = add i64 %5120, %5119
  %5122 = load i64, i64* %PC.i59
  %5123 = add i64 %5122, 4
  store i64 %5123, i64* %PC.i59
  %5124 = inttoptr i64 %5121 to i8*
  %5125 = load i8, i8* %5124
  %5126 = sext i8 %5125 to i64
  %5127 = and i64 %5126, 4294967295
  store i64 %5127, i64* %RDX.i, align 8
  store %struct.Memory* %loadMem_42c691, %struct.Memory** %MEMORY
  %loadMem_42c695 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5129 = getelementptr inbounds %struct.GPR, %struct.GPR* %5128, i32 0, i32 33
  %5130 = getelementptr inbounds %struct.Reg, %struct.Reg* %5129, i32 0, i32 0
  %PC.i58 = bitcast %union.anon* %5130 to i64*
  %5131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5132 = getelementptr inbounds %struct.GPR, %struct.GPR* %5131, i32 0, i32 7
  %5133 = getelementptr inbounds %struct.Reg, %struct.Reg* %5132, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %5133 to i32*
  %5134 = load i32, i32* %EDX.i
  %5135 = zext i32 %5134 to i64
  %5136 = load i64, i64* %PC.i58
  %5137 = add i64 %5136, 3
  store i64 %5137, i64* %PC.i58
  %5138 = sub i32 %5134, 126
  %5139 = icmp ult i32 %5134, 126
  %5140 = zext i1 %5139 to i8
  %5141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5140, i8* %5141, align 1
  %5142 = and i32 %5138, 255
  %5143 = call i32 @llvm.ctpop.i32(i32 %5142)
  %5144 = trunc i32 %5143 to i8
  %5145 = and i8 %5144, 1
  %5146 = xor i8 %5145, 1
  %5147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5146, i8* %5147, align 1
  %5148 = xor i64 126, %5135
  %5149 = trunc i64 %5148 to i32
  %5150 = xor i32 %5149, %5138
  %5151 = lshr i32 %5150, 4
  %5152 = trunc i32 %5151 to i8
  %5153 = and i8 %5152, 1
  %5154 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5153, i8* %5154, align 1
  %5155 = icmp eq i32 %5138, 0
  %5156 = zext i1 %5155 to i8
  %5157 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5156, i8* %5157, align 1
  %5158 = lshr i32 %5138, 31
  %5159 = trunc i32 %5158 to i8
  %5160 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5159, i8* %5160, align 1
  %5161 = lshr i32 %5134, 31
  %5162 = xor i32 %5158, %5161
  %5163 = add i32 %5162, %5161
  %5164 = icmp eq i32 %5163, 2
  %5165 = zext i1 %5164 to i8
  %5166 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5165, i8* %5166, align 1
  store %struct.Memory* %loadMem_42c695, %struct.Memory** %MEMORY
  %loadMem_42c698 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5168 = getelementptr inbounds %struct.GPR, %struct.GPR* %5167, i32 0, i32 33
  %5169 = getelementptr inbounds %struct.Reg, %struct.Reg* %5168, i32 0, i32 0
  %PC.i57 = bitcast %union.anon* %5169 to i64*
  %5170 = load i64, i64* %PC.i57
  %5171 = add i64 %5170, 38
  %5172 = load i64, i64* %PC.i57
  %5173 = add i64 %5172, 6
  %5174 = load i64, i64* %PC.i57
  %5175 = add i64 %5174, 6
  store i64 %5175, i64* %PC.i57
  %5176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5177 = load i8, i8* %5176, align 1
  %5178 = icmp eq i8 %5177, 0
  %5179 = zext i1 %5178 to i8
  store i8 %5179, i8* %BRANCH_TAKEN, align 1
  %5180 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5181 = select i1 %5178, i64 %5171, i64 %5173
  store i64 %5181, i64* %5180, align 8
  store %struct.Memory* %loadMem_42c698, %struct.Memory** %MEMORY
  %loadBr_42c698 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42c698 = icmp eq i8 %loadBr_42c698, 1
  br i1 %cmpBr_42c698, label %block_.L_42c6be, label %block_.L_42c69e

block_.L_42c69e:                                  ; preds = %block_42c681, %block_42c664, %block_42c647, %block_42c62a, %block_.L_42c60d
  %loadMem_42c69e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5183 = getelementptr inbounds %struct.GPR, %struct.GPR* %5182, i32 0, i32 33
  %5184 = getelementptr inbounds %struct.Reg, %struct.Reg* %5183, i32 0, i32 0
  %PC.i54 = bitcast %union.anon* %5184 to i64*
  %5185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5186 = getelementptr inbounds %struct.GPR, %struct.GPR* %5185, i32 0, i32 1
  %5187 = getelementptr inbounds %struct.Reg, %struct.Reg* %5186, i32 0, i32 0
  %RAX.i55 = bitcast %union.anon* %5187 to i64*
  %5188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5189 = getelementptr inbounds %struct.GPR, %struct.GPR* %5188, i32 0, i32 15
  %5190 = getelementptr inbounds %struct.Reg, %struct.Reg* %5189, i32 0, i32 0
  %RBP.i56 = bitcast %union.anon* %5190 to i64*
  %5191 = load i64, i64* %RBP.i56
  %5192 = sub i64 %5191, 48
  %5193 = load i64, i64* %PC.i54
  %5194 = add i64 %5193, 4
  store i64 %5194, i64* %PC.i54
  %5195 = inttoptr i64 %5192 to i64*
  %5196 = load i64, i64* %5195
  store i64 %5196, i64* %RAX.i55, align 8
  store %struct.Memory* %loadMem_42c69e, %struct.Memory** %MEMORY
  %loadMem_42c6a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5198 = getelementptr inbounds %struct.GPR, %struct.GPR* %5197, i32 0, i32 33
  %5199 = getelementptr inbounds %struct.Reg, %struct.Reg* %5198, i32 0, i32 0
  %PC.i51 = bitcast %union.anon* %5199 to i64*
  %5200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5201 = getelementptr inbounds %struct.GPR, %struct.GPR* %5200, i32 0, i32 5
  %5202 = getelementptr inbounds %struct.Reg, %struct.Reg* %5201, i32 0, i32 0
  %RCX.i52 = bitcast %union.anon* %5202 to i64*
  %5203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5204 = getelementptr inbounds %struct.GPR, %struct.GPR* %5203, i32 0, i32 15
  %5205 = getelementptr inbounds %struct.Reg, %struct.Reg* %5204, i32 0, i32 0
  %RBP.i53 = bitcast %union.anon* %5205 to i64*
  %5206 = load i64, i64* %RBP.i53
  %5207 = sub i64 %5206, 60
  %5208 = load i64, i64* %PC.i51
  %5209 = add i64 %5208, 4
  store i64 %5209, i64* %PC.i51
  %5210 = inttoptr i64 %5207 to i32*
  %5211 = load i32, i32* %5210
  %5212 = sext i32 %5211 to i64
  store i64 %5212, i64* %RCX.i52, align 8
  store %struct.Memory* %loadMem_42c6a2, %struct.Memory** %MEMORY
  %loadMem_42c6a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5214 = getelementptr inbounds %struct.GPR, %struct.GPR* %5213, i32 0, i32 33
  %5215 = getelementptr inbounds %struct.Reg, %struct.Reg* %5214, i32 0, i32 0
  %PC.i47 = bitcast %union.anon* %5215 to i64*
  %5216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5217 = getelementptr inbounds %struct.GPR, %struct.GPR* %5216, i32 0, i32 1
  %5218 = getelementptr inbounds %struct.Reg, %struct.Reg* %5217, i32 0, i32 0
  %RAX.i48 = bitcast %union.anon* %5218 to i64*
  %5219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5220 = getelementptr inbounds %struct.GPR, %struct.GPR* %5219, i32 0, i32 5
  %5221 = getelementptr inbounds %struct.Reg, %struct.Reg* %5220, i32 0, i32 0
  %RCX.i49 = bitcast %union.anon* %5221 to i64*
  %5222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5223 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5222, i64 0, i64 0
  %YMM0.i50 = bitcast %union.VectorReg* %5223 to %"class.std::bitset"*
  %5224 = bitcast %"class.std::bitset"* %YMM0.i50 to i8*
  %5225 = load i64, i64* %RAX.i48
  %5226 = load i64, i64* %RCX.i49
  %5227 = mul i64 %5226, 4
  %5228 = add i64 %5227, %5225
  %5229 = load i64, i64* %PC.i47
  %5230 = add i64 %5229, 5
  store i64 %5230, i64* %PC.i47
  %5231 = inttoptr i64 %5228 to float*
  %5232 = load float, float* %5231
  %5233 = bitcast i8* %5224 to float*
  store float %5232, float* %5233, align 1
  %5234 = getelementptr inbounds i8, i8* %5224, i64 4
  %5235 = bitcast i8* %5234 to float*
  store float 0.000000e+00, float* %5235, align 1
  %5236 = getelementptr inbounds i8, i8* %5224, i64 8
  %5237 = bitcast i8* %5236 to float*
  store float 0.000000e+00, float* %5237, align 1
  %5238 = getelementptr inbounds i8, i8* %5224, i64 12
  %5239 = bitcast i8* %5238 to float*
  store float 0.000000e+00, float* %5239, align 1
  store %struct.Memory* %loadMem_42c6a6, %struct.Memory** %MEMORY
  %loadMem_42c6ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %5240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5241 = getelementptr inbounds %struct.GPR, %struct.GPR* %5240, i32 0, i32 33
  %5242 = getelementptr inbounds %struct.Reg, %struct.Reg* %5241, i32 0, i32 0
  %PC.i44 = bitcast %union.anon* %5242 to i64*
  %5243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5244 = getelementptr inbounds %struct.GPR, %struct.GPR* %5243, i32 0, i32 1
  %5245 = getelementptr inbounds %struct.Reg, %struct.Reg* %5244, i32 0, i32 0
  %RAX.i45 = bitcast %union.anon* %5245 to i64*
  %5246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5247 = getelementptr inbounds %struct.GPR, %struct.GPR* %5246, i32 0, i32 15
  %5248 = getelementptr inbounds %struct.Reg, %struct.Reg* %5247, i32 0, i32 0
  %RBP.i46 = bitcast %union.anon* %5248 to i64*
  %5249 = load i64, i64* %RBP.i46
  %5250 = sub i64 %5249, 56
  %5251 = load i64, i64* %PC.i44
  %5252 = add i64 %5251, 4
  store i64 %5252, i64* %PC.i44
  %5253 = inttoptr i64 %5250 to i64*
  %5254 = load i64, i64* %5253
  store i64 %5254, i64* %RAX.i45, align 8
  store %struct.Memory* %loadMem_42c6ab, %struct.Memory** %MEMORY
  %loadMem_42c6af = load %struct.Memory*, %struct.Memory** %MEMORY
  %5255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5256 = getelementptr inbounds %struct.GPR, %struct.GPR* %5255, i32 0, i32 33
  %5257 = getelementptr inbounds %struct.Reg, %struct.Reg* %5256, i32 0, i32 0
  %PC.i41 = bitcast %union.anon* %5257 to i64*
  %5258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5259 = getelementptr inbounds %struct.GPR, %struct.GPR* %5258, i32 0, i32 1
  %5260 = getelementptr inbounds %struct.Reg, %struct.Reg* %5259, i32 0, i32 0
  %RAX.i42 = bitcast %union.anon* %5260 to i64*
  %5261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5262 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5261, i64 0, i64 0
  %YMM0.i43 = bitcast %union.VectorReg* %5262 to %"class.std::bitset"*
  %5263 = bitcast %"class.std::bitset"* %YMM0.i43 to i8*
  %5264 = bitcast %"class.std::bitset"* %YMM0.i43 to i8*
  %5265 = load i64, i64* %RAX.i42
  %5266 = add i64 %5265, 24
  %5267 = load i64, i64* %PC.i41
  %5268 = add i64 %5267, 5
  store i64 %5268, i64* %PC.i41
  %5269 = bitcast i8* %5264 to <2 x float>*
  %5270 = load <2 x float>, <2 x float>* %5269, align 1
  %5271 = getelementptr inbounds i8, i8* %5264, i64 8
  %5272 = bitcast i8* %5271 to <2 x i32>*
  %5273 = load <2 x i32>, <2 x i32>* %5272, align 1
  %5274 = inttoptr i64 %5266 to float*
  %5275 = load float, float* %5274
  %5276 = extractelement <2 x float> %5270, i32 0
  %5277 = fadd float %5276, %5275
  %5278 = bitcast i8* %5263 to float*
  store float %5277, float* %5278, align 1
  %5279 = bitcast <2 x float> %5270 to <2 x i32>
  %5280 = extractelement <2 x i32> %5279, i32 1
  %5281 = getelementptr inbounds i8, i8* %5263, i64 4
  %5282 = bitcast i8* %5281 to i32*
  store i32 %5280, i32* %5282, align 1
  %5283 = extractelement <2 x i32> %5273, i32 0
  %5284 = getelementptr inbounds i8, i8* %5263, i64 8
  %5285 = bitcast i8* %5284 to i32*
  store i32 %5283, i32* %5285, align 1
  %5286 = extractelement <2 x i32> %5273, i32 1
  %5287 = getelementptr inbounds i8, i8* %5263, i64 12
  %5288 = bitcast i8* %5287 to i32*
  store i32 %5286, i32* %5288, align 1
  store %struct.Memory* %loadMem_42c6af, %struct.Memory** %MEMORY
  %loadMem_42c6b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5290 = getelementptr inbounds %struct.GPR, %struct.GPR* %5289, i32 0, i32 33
  %5291 = getelementptr inbounds %struct.Reg, %struct.Reg* %5290, i32 0, i32 0
  %PC.i38 = bitcast %union.anon* %5291 to i64*
  %5292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5293 = getelementptr inbounds %struct.GPR, %struct.GPR* %5292, i32 0, i32 1
  %5294 = getelementptr inbounds %struct.Reg, %struct.Reg* %5293, i32 0, i32 0
  %RAX.i39 = bitcast %union.anon* %5294 to i64*
  %5295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5296 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5295, i64 0, i64 0
  %XMM0.i40 = bitcast %union.VectorReg* %5296 to %union.vec128_t*
  %5297 = load i64, i64* %RAX.i39
  %5298 = add i64 %5297, 24
  %5299 = bitcast %union.vec128_t* %XMM0.i40 to i8*
  %5300 = load i64, i64* %PC.i38
  %5301 = add i64 %5300, 5
  store i64 %5301, i64* %PC.i38
  %5302 = bitcast i8* %5299 to <2 x float>*
  %5303 = load <2 x float>, <2 x float>* %5302, align 1
  %5304 = extractelement <2 x float> %5303, i32 0
  %5305 = inttoptr i64 %5298 to float*
  store float %5304, float* %5305
  store %struct.Memory* %loadMem_42c6b4, %struct.Memory** %MEMORY
  %loadMem_42c6b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5307 = getelementptr inbounds %struct.GPR, %struct.GPR* %5306, i32 0, i32 33
  %5308 = getelementptr inbounds %struct.Reg, %struct.Reg* %5307, i32 0, i32 0
  %PC.i37 = bitcast %union.anon* %5308 to i64*
  %5309 = load i64, i64* %PC.i37
  %5310 = add i64 %5309, 32
  %5311 = load i64, i64* %PC.i37
  %5312 = add i64 %5311, 5
  store i64 %5312, i64* %PC.i37
  %5313 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5310, i64* %5313, align 8
  store %struct.Memory* %loadMem_42c6b9, %struct.Memory** %MEMORY
  br label %block_.L_42c6d9

block_.L_42c6be:                                  ; preds = %block_42c681
  %loadMem_42c6be = load %struct.Memory*, %struct.Memory** %MEMORY
  %5314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5315 = getelementptr inbounds %struct.GPR, %struct.GPR* %5314, i32 0, i32 33
  %5316 = getelementptr inbounds %struct.Reg, %struct.Reg* %5315, i32 0, i32 0
  %PC.i34 = bitcast %union.anon* %5316 to i64*
  %5317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5318 = getelementptr inbounds %struct.GPR, %struct.GPR* %5317, i32 0, i32 1
  %5319 = getelementptr inbounds %struct.Reg, %struct.Reg* %5318, i32 0, i32 0
  %RAX.i35 = bitcast %union.anon* %5319 to i64*
  %5320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5321 = getelementptr inbounds %struct.GPR, %struct.GPR* %5320, i32 0, i32 15
  %5322 = getelementptr inbounds %struct.Reg, %struct.Reg* %5321, i32 0, i32 0
  %RBP.i36 = bitcast %union.anon* %5322 to i64*
  %5323 = load i64, i64* %RBP.i36
  %5324 = sub i64 %5323, 48
  %5325 = load i64, i64* %PC.i34
  %5326 = add i64 %5325, 4
  store i64 %5326, i64* %PC.i34
  %5327 = inttoptr i64 %5324 to i64*
  %5328 = load i64, i64* %5327
  store i64 %5328, i64* %RAX.i35, align 8
  store %struct.Memory* %loadMem_42c6be, %struct.Memory** %MEMORY
  %loadMem_42c6c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5330 = getelementptr inbounds %struct.GPR, %struct.GPR* %5329, i32 0, i32 33
  %5331 = getelementptr inbounds %struct.Reg, %struct.Reg* %5330, i32 0, i32 0
  %PC.i31 = bitcast %union.anon* %5331 to i64*
  %5332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5333 = getelementptr inbounds %struct.GPR, %struct.GPR* %5332, i32 0, i32 5
  %5334 = getelementptr inbounds %struct.Reg, %struct.Reg* %5333, i32 0, i32 0
  %RCX.i32 = bitcast %union.anon* %5334 to i64*
  %5335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5336 = getelementptr inbounds %struct.GPR, %struct.GPR* %5335, i32 0, i32 15
  %5337 = getelementptr inbounds %struct.Reg, %struct.Reg* %5336, i32 0, i32 0
  %RBP.i33 = bitcast %union.anon* %5337 to i64*
  %5338 = load i64, i64* %RBP.i33
  %5339 = sub i64 %5338, 60
  %5340 = load i64, i64* %PC.i31
  %5341 = add i64 %5340, 4
  store i64 %5341, i64* %PC.i31
  %5342 = inttoptr i64 %5339 to i32*
  %5343 = load i32, i32* %5342
  %5344 = sext i32 %5343 to i64
  store i64 %5344, i64* %RCX.i32, align 8
  store %struct.Memory* %loadMem_42c6c2, %struct.Memory** %MEMORY
  %loadMem_42c6c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5346 = getelementptr inbounds %struct.GPR, %struct.GPR* %5345, i32 0, i32 33
  %5347 = getelementptr inbounds %struct.Reg, %struct.Reg* %5346, i32 0, i32 0
  %PC.i28 = bitcast %union.anon* %5347 to i64*
  %5348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5349 = getelementptr inbounds %struct.GPR, %struct.GPR* %5348, i32 0, i32 1
  %5350 = getelementptr inbounds %struct.Reg, %struct.Reg* %5349, i32 0, i32 0
  %RAX.i29 = bitcast %union.anon* %5350 to i64*
  %5351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5352 = getelementptr inbounds %struct.GPR, %struct.GPR* %5351, i32 0, i32 5
  %5353 = getelementptr inbounds %struct.Reg, %struct.Reg* %5352, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %5353 to i64*
  %5354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5355 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5354, i64 0, i64 0
  %YMM0.i30 = bitcast %union.VectorReg* %5355 to %"class.std::bitset"*
  %5356 = bitcast %"class.std::bitset"* %YMM0.i30 to i8*
  %5357 = load i64, i64* %RAX.i29
  %5358 = load i64, i64* %RCX.i
  %5359 = mul i64 %5358, 4
  %5360 = add i64 %5359, %5357
  %5361 = load i64, i64* %PC.i28
  %5362 = add i64 %5361, 5
  store i64 %5362, i64* %PC.i28
  %5363 = inttoptr i64 %5360 to float*
  %5364 = load float, float* %5363
  %5365 = bitcast i8* %5356 to float*
  store float %5364, float* %5365, align 1
  %5366 = getelementptr inbounds i8, i8* %5356, i64 4
  %5367 = bitcast i8* %5366 to float*
  store float 0.000000e+00, float* %5367, align 1
  %5368 = getelementptr inbounds i8, i8* %5356, i64 8
  %5369 = bitcast i8* %5368 to float*
  store float 0.000000e+00, float* %5369, align 1
  %5370 = getelementptr inbounds i8, i8* %5356, i64 12
  %5371 = bitcast i8* %5370 to float*
  store float 0.000000e+00, float* %5371, align 1
  store %struct.Memory* %loadMem_42c6c6, %struct.Memory** %MEMORY
  %loadMem_42c6cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %5372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5373 = getelementptr inbounds %struct.GPR, %struct.GPR* %5372, i32 0, i32 33
  %5374 = getelementptr inbounds %struct.Reg, %struct.Reg* %5373, i32 0, i32 0
  %PC.i25 = bitcast %union.anon* %5374 to i64*
  %5375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5376 = getelementptr inbounds %struct.GPR, %struct.GPR* %5375, i32 0, i32 1
  %5377 = getelementptr inbounds %struct.Reg, %struct.Reg* %5376, i32 0, i32 0
  %RAX.i26 = bitcast %union.anon* %5377 to i64*
  %5378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5379 = getelementptr inbounds %struct.GPR, %struct.GPR* %5378, i32 0, i32 15
  %5380 = getelementptr inbounds %struct.Reg, %struct.Reg* %5379, i32 0, i32 0
  %RBP.i27 = bitcast %union.anon* %5380 to i64*
  %5381 = load i64, i64* %RBP.i27
  %5382 = sub i64 %5381, 56
  %5383 = load i64, i64* %PC.i25
  %5384 = add i64 %5383, 4
  store i64 %5384, i64* %PC.i25
  %5385 = inttoptr i64 %5382 to i64*
  %5386 = load i64, i64* %5385
  store i64 %5386, i64* %RAX.i26, align 8
  store %struct.Memory* %loadMem_42c6cb, %struct.Memory** %MEMORY
  %loadMem_42c6cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %5387 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5388 = getelementptr inbounds %struct.GPR, %struct.GPR* %5387, i32 0, i32 33
  %5389 = getelementptr inbounds %struct.Reg, %struct.Reg* %5388, i32 0, i32 0
  %PC.i23 = bitcast %union.anon* %5389 to i64*
  %5390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5391 = getelementptr inbounds %struct.GPR, %struct.GPR* %5390, i32 0, i32 1
  %5392 = getelementptr inbounds %struct.Reg, %struct.Reg* %5391, i32 0, i32 0
  %RAX.i24 = bitcast %union.anon* %5392 to i64*
  %5393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5394 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5393, i64 0, i64 0
  %YMM0.i = bitcast %union.VectorReg* %5394 to %"class.std::bitset"*
  %5395 = bitcast %"class.std::bitset"* %YMM0.i to i8*
  %5396 = bitcast %"class.std::bitset"* %YMM0.i to i8*
  %5397 = load i64, i64* %RAX.i24
  %5398 = add i64 %5397, 20
  %5399 = load i64, i64* %PC.i23
  %5400 = add i64 %5399, 5
  store i64 %5400, i64* %PC.i23
  %5401 = bitcast i8* %5396 to <2 x float>*
  %5402 = load <2 x float>, <2 x float>* %5401, align 1
  %5403 = getelementptr inbounds i8, i8* %5396, i64 8
  %5404 = bitcast i8* %5403 to <2 x i32>*
  %5405 = load <2 x i32>, <2 x i32>* %5404, align 1
  %5406 = inttoptr i64 %5398 to float*
  %5407 = load float, float* %5406
  %5408 = extractelement <2 x float> %5402, i32 0
  %5409 = fadd float %5408, %5407
  %5410 = bitcast i8* %5395 to float*
  store float %5409, float* %5410, align 1
  %5411 = bitcast <2 x float> %5402 to <2 x i32>
  %5412 = extractelement <2 x i32> %5411, i32 1
  %5413 = getelementptr inbounds i8, i8* %5395, i64 4
  %5414 = bitcast i8* %5413 to i32*
  store i32 %5412, i32* %5414, align 1
  %5415 = extractelement <2 x i32> %5405, i32 0
  %5416 = getelementptr inbounds i8, i8* %5395, i64 8
  %5417 = bitcast i8* %5416 to i32*
  store i32 %5415, i32* %5417, align 1
  %5418 = extractelement <2 x i32> %5405, i32 1
  %5419 = getelementptr inbounds i8, i8* %5395, i64 12
  %5420 = bitcast i8* %5419 to i32*
  store i32 %5418, i32* %5420, align 1
  store %struct.Memory* %loadMem_42c6cf, %struct.Memory** %MEMORY
  %loadMem_42c6d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5422 = getelementptr inbounds %struct.GPR, %struct.GPR* %5421, i32 0, i32 33
  %5423 = getelementptr inbounds %struct.Reg, %struct.Reg* %5422, i32 0, i32 0
  %PC.i21 = bitcast %union.anon* %5423 to i64*
  %5424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5425 = getelementptr inbounds %struct.GPR, %struct.GPR* %5424, i32 0, i32 1
  %5426 = getelementptr inbounds %struct.Reg, %struct.Reg* %5425, i32 0, i32 0
  %RAX.i22 = bitcast %union.anon* %5426 to i64*
  %5427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5428 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5427, i64 0, i64 0
  %XMM0.i = bitcast %union.VectorReg* %5428 to %union.vec128_t*
  %5429 = load i64, i64* %RAX.i22
  %5430 = add i64 %5429, 20
  %5431 = bitcast %union.vec128_t* %XMM0.i to i8*
  %5432 = load i64, i64* %PC.i21
  %5433 = add i64 %5432, 5
  store i64 %5433, i64* %PC.i21
  %5434 = bitcast i8* %5431 to <2 x float>*
  %5435 = load <2 x float>, <2 x float>* %5434, align 1
  %5436 = extractelement <2 x float> %5435, i32 0
  %5437 = inttoptr i64 %5430 to float*
  store float %5436, float* %5437
  store %struct.Memory* %loadMem_42c6d4, %struct.Memory** %MEMORY
  br label %block_.L_42c6d9

block_.L_42c6d9:                                  ; preds = %block_.L_42c6be, %block_.L_42c69e
  %loadMem_42c6d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5439 = getelementptr inbounds %struct.GPR, %struct.GPR* %5438, i32 0, i32 33
  %5440 = getelementptr inbounds %struct.Reg, %struct.Reg* %5439, i32 0, i32 0
  %PC.i20 = bitcast %union.anon* %5440 to i64*
  %5441 = load i64, i64* %PC.i20
  %5442 = add i64 %5441, 5
  %5443 = load i64, i64* %PC.i20
  %5444 = add i64 %5443, 5
  store i64 %5444, i64* %PC.i20
  %5445 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5442, i64* %5445, align 8
  store %struct.Memory* %loadMem_42c6d9, %struct.Memory** %MEMORY
  br label %block_.L_42c6de

block_.L_42c6de:                                  ; preds = %block_.L_42c6d9
  %loadMem_42c6de = load %struct.Memory*, %struct.Memory** %MEMORY
  %5446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5447 = getelementptr inbounds %struct.GPR, %struct.GPR* %5446, i32 0, i32 33
  %5448 = getelementptr inbounds %struct.Reg, %struct.Reg* %5447, i32 0, i32 0
  %PC.i19 = bitcast %union.anon* %5448 to i64*
  %5449 = load i64, i64* %PC.i19
  %5450 = add i64 %5449, 5
  %5451 = load i64, i64* %PC.i19
  %5452 = add i64 %5451, 5
  store i64 %5452, i64* %PC.i19
  %5453 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5450, i64* %5453, align 8
  store %struct.Memory* %loadMem_42c6de, %struct.Memory** %MEMORY
  br label %block_.L_42c6e3

block_.L_42c6e3:                                  ; preds = %block_.L_42c6de, %block_.L_42c5e6
  %loadMem_42c6e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5455 = getelementptr inbounds %struct.GPR, %struct.GPR* %5454, i32 0, i32 33
  %5456 = getelementptr inbounds %struct.Reg, %struct.Reg* %5455, i32 0, i32 0
  %PC.i18 = bitcast %union.anon* %5456 to i64*
  %5457 = load i64, i64* %PC.i18
  %5458 = add i64 %5457, 5
  %5459 = load i64, i64* %PC.i18
  %5460 = add i64 %5459, 5
  store i64 %5460, i64* %PC.i18
  %5461 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5458, i64* %5461, align 8
  store %struct.Memory* %loadMem_42c6e3, %struct.Memory** %MEMORY
  br label %block_.L_42c6e8

block_.L_42c6e8:                                  ; preds = %block_.L_42c6e3, %block_.L_42c3fc
  %loadMem_42c6e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5463 = getelementptr inbounds %struct.GPR, %struct.GPR* %5462, i32 0, i32 33
  %5464 = getelementptr inbounds %struct.Reg, %struct.Reg* %5463, i32 0, i32 0
  %PC.i17 = bitcast %union.anon* %5464 to i64*
  %5465 = load i64, i64* %PC.i17
  %5466 = add i64 %5465, 5
  %5467 = load i64, i64* %PC.i17
  %5468 = add i64 %5467, 5
  store i64 %5468, i64* %PC.i17
  %5469 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5466, i64* %5469, align 8
  store %struct.Memory* %loadMem_42c6e8, %struct.Memory** %MEMORY
  br label %block_.L_42c6ed

block_.L_42c6ed:                                  ; preds = %block_.L_42c6e8, %block_42c608
  %loadMem_42c6ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %5470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5471 = getelementptr inbounds %struct.GPR, %struct.GPR* %5470, i32 0, i32 33
  %5472 = getelementptr inbounds %struct.Reg, %struct.Reg* %5471, i32 0, i32 0
  %PC.i14 = bitcast %union.anon* %5472 to i64*
  %5473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5474 = getelementptr inbounds %struct.GPR, %struct.GPR* %5473, i32 0, i32 1
  %5475 = getelementptr inbounds %struct.Reg, %struct.Reg* %5474, i32 0, i32 0
  %RAX.i15 = bitcast %union.anon* %5475 to i64*
  %5476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5477 = getelementptr inbounds %struct.GPR, %struct.GPR* %5476, i32 0, i32 15
  %5478 = getelementptr inbounds %struct.Reg, %struct.Reg* %5477, i32 0, i32 0
  %RBP.i16 = bitcast %union.anon* %5478 to i64*
  %5479 = load i64, i64* %RBP.i16
  %5480 = sub i64 %5479, 60
  %5481 = load i64, i64* %PC.i14
  %5482 = add i64 %5481, 3
  store i64 %5482, i64* %PC.i14
  %5483 = inttoptr i64 %5480 to i32*
  %5484 = load i32, i32* %5483
  %5485 = zext i32 %5484 to i64
  store i64 %5485, i64* %RAX.i15, align 8
  store %struct.Memory* %loadMem_42c6ed, %struct.Memory** %MEMORY
  %loadMem_42c6f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5486 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5487 = getelementptr inbounds %struct.GPR, %struct.GPR* %5486, i32 0, i32 33
  %5488 = getelementptr inbounds %struct.Reg, %struct.Reg* %5487, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %5488 to i64*
  %5489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5490 = getelementptr inbounds %struct.GPR, %struct.GPR* %5489, i32 0, i32 1
  %5491 = getelementptr inbounds %struct.Reg, %struct.Reg* %5490, i32 0, i32 0
  %RAX.i13 = bitcast %union.anon* %5491 to i64*
  %5492 = load i64, i64* %RAX.i13
  %5493 = load i64, i64* %PC.i12
  %5494 = add i64 %5493, 3
  store i64 %5494, i64* %PC.i12
  %5495 = trunc i64 %5492 to i32
  %5496 = add i32 1, %5495
  %5497 = zext i32 %5496 to i64
  store i64 %5497, i64* %RAX.i13, align 8
  %5498 = icmp ult i32 %5496, %5495
  %5499 = icmp ult i32 %5496, 1
  %5500 = or i1 %5498, %5499
  %5501 = zext i1 %5500 to i8
  %5502 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5501, i8* %5502, align 1
  %5503 = and i32 %5496, 255
  %5504 = call i32 @llvm.ctpop.i32(i32 %5503)
  %5505 = trunc i32 %5504 to i8
  %5506 = and i8 %5505, 1
  %5507 = xor i8 %5506, 1
  %5508 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5507, i8* %5508, align 1
  %5509 = xor i64 1, %5492
  %5510 = trunc i64 %5509 to i32
  %5511 = xor i32 %5510, %5496
  %5512 = lshr i32 %5511, 4
  %5513 = trunc i32 %5512 to i8
  %5514 = and i8 %5513, 1
  %5515 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5514, i8* %5515, align 1
  %5516 = icmp eq i32 %5496, 0
  %5517 = zext i1 %5516 to i8
  %5518 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5517, i8* %5518, align 1
  %5519 = lshr i32 %5496, 31
  %5520 = trunc i32 %5519 to i8
  %5521 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5520, i8* %5521, align 1
  %5522 = lshr i32 %5495, 31
  %5523 = xor i32 %5519, %5522
  %5524 = add i32 %5523, %5519
  %5525 = icmp eq i32 %5524, 2
  %5526 = zext i1 %5525 to i8
  %5527 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5526, i8* %5527, align 1
  store %struct.Memory* %loadMem_42c6f0, %struct.Memory** %MEMORY
  %loadMem_42c6f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5529 = getelementptr inbounds %struct.GPR, %struct.GPR* %5528, i32 0, i32 33
  %5530 = getelementptr inbounds %struct.Reg, %struct.Reg* %5529, i32 0, i32 0
  %PC.i10 = bitcast %union.anon* %5530 to i64*
  %5531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5532 = getelementptr inbounds %struct.GPR, %struct.GPR* %5531, i32 0, i32 1
  %5533 = getelementptr inbounds %struct.Reg, %struct.Reg* %5532, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %5533 to i32*
  %5534 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5535 = getelementptr inbounds %struct.GPR, %struct.GPR* %5534, i32 0, i32 15
  %5536 = getelementptr inbounds %struct.Reg, %struct.Reg* %5535, i32 0, i32 0
  %RBP.i11 = bitcast %union.anon* %5536 to i64*
  %5537 = load i64, i64* %RBP.i11
  %5538 = sub i64 %5537, 60
  %5539 = load i32, i32* %EAX.i
  %5540 = zext i32 %5539 to i64
  %5541 = load i64, i64* %PC.i10
  %5542 = add i64 %5541, 3
  store i64 %5542, i64* %PC.i10
  %5543 = inttoptr i64 %5538 to i32*
  store i32 %5539, i32* %5543
  store %struct.Memory* %loadMem_42c6f3, %struct.Memory** %MEMORY
  %loadMem_42c6f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5545 = getelementptr inbounds %struct.GPR, %struct.GPR* %5544, i32 0, i32 33
  %5546 = getelementptr inbounds %struct.Reg, %struct.Reg* %5545, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %5546 to i64*
  %5547 = load i64, i64* %PC.i9
  %5548 = add i64 %5547, -1106
  %5549 = load i64, i64* %PC.i9
  %5550 = add i64 %5549, 5
  store i64 %5550, i64* %PC.i9
  %5551 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5548, i64* %5551, align 8
  store %struct.Memory* %loadMem_42c6f6, %struct.Memory** %MEMORY
  br label %block_.L_42c2a4

block_.L_42c6fb:                                  ; preds = %block_.L_42c2a4
  %loadMem_42c6fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %5552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5553 = getelementptr inbounds %struct.GPR, %struct.GPR* %5552, i32 0, i32 33
  %5554 = getelementptr inbounds %struct.Reg, %struct.Reg* %5553, i32 0, i32 0
  %PC.i7 = bitcast %union.anon* %5554 to i64*
  %5555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5556 = getelementptr inbounds %struct.GPR, %struct.GPR* %5555, i32 0, i32 15
  %5557 = getelementptr inbounds %struct.Reg, %struct.Reg* %5556, i32 0, i32 0
  %RBP.i8 = bitcast %union.anon* %5557 to i64*
  %5558 = load i64, i64* %RBP.i8
  %5559 = sub i64 %5558, 4
  %5560 = load i64, i64* %PC.i7
  %5561 = add i64 %5560, 7
  store i64 %5561, i64* %PC.i7
  %5562 = inttoptr i64 %5559 to i32*
  store i32 1, i32* %5562
  store %struct.Memory* %loadMem_42c6fb, %struct.Memory** %MEMORY
  br label %block_.L_42c702

block_.L_42c702:                                  ; preds = %block_.L_42c6fb, %block_.L_42c3f0, %block_.L_42c353
  %loadMem_42c702 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5563 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5564 = getelementptr inbounds %struct.GPR, %struct.GPR* %5563, i32 0, i32 33
  %5565 = getelementptr inbounds %struct.Reg, %struct.Reg* %5564, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %5565 to i64*
  %5566 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5567 = getelementptr inbounds %struct.GPR, %struct.GPR* %5566, i32 0, i32 1
  %5568 = getelementptr inbounds %struct.Reg, %struct.Reg* %5567, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %5568 to i64*
  %5569 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5570 = getelementptr inbounds %struct.GPR, %struct.GPR* %5569, i32 0, i32 15
  %5571 = getelementptr inbounds %struct.Reg, %struct.Reg* %5570, i32 0, i32 0
  %RBP.i6 = bitcast %union.anon* %5571 to i64*
  %5572 = load i64, i64* %RBP.i6
  %5573 = sub i64 %5572, 4
  %5574 = load i64, i64* %PC.i5
  %5575 = add i64 %5574, 3
  store i64 %5575, i64* %PC.i5
  %5576 = inttoptr i64 %5573 to i32*
  %5577 = load i32, i32* %5576
  %5578 = zext i32 %5577 to i64
  store i64 %5578, i64* %RAX.i, align 8
  store %struct.Memory* %loadMem_42c702, %struct.Memory** %MEMORY
  %loadMem_42c705 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5580 = getelementptr inbounds %struct.GPR, %struct.GPR* %5579, i32 0, i32 33
  %5581 = getelementptr inbounds %struct.Reg, %struct.Reg* %5580, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %5581 to i64*
  %5582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5583 = getelementptr inbounds %struct.GPR, %struct.GPR* %5582, i32 0, i32 13
  %5584 = getelementptr inbounds %struct.Reg, %struct.Reg* %5583, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %5584 to i64*
  %5585 = load i64, i64* %RSP.i
  %5586 = load i64, i64* %PC.i4
  %5587 = add i64 %5586, 4
  store i64 %5587, i64* %PC.i4
  %5588 = add i64 64, %5585
  store i64 %5588, i64* %RSP.i, align 8
  %5589 = icmp ult i64 %5588, %5585
  %5590 = icmp ult i64 %5588, 64
  %5591 = or i1 %5589, %5590
  %5592 = zext i1 %5591 to i8
  %5593 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5592, i8* %5593, align 1
  %5594 = trunc i64 %5588 to i32
  %5595 = and i32 %5594, 255
  %5596 = call i32 @llvm.ctpop.i32(i32 %5595)
  %5597 = trunc i32 %5596 to i8
  %5598 = and i8 %5597, 1
  %5599 = xor i8 %5598, 1
  %5600 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5599, i8* %5600, align 1
  %5601 = xor i64 64, %5585
  %5602 = xor i64 %5601, %5588
  %5603 = lshr i64 %5602, 4
  %5604 = trunc i64 %5603 to i8
  %5605 = and i8 %5604, 1
  %5606 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5605, i8* %5606, align 1
  %5607 = icmp eq i64 %5588, 0
  %5608 = zext i1 %5607 to i8
  %5609 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5608, i8* %5609, align 1
  %5610 = lshr i64 %5588, 63
  %5611 = trunc i64 %5610 to i8
  %5612 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5611, i8* %5612, align 1
  %5613 = lshr i64 %5585, 63
  %5614 = xor i64 %5610, %5613
  %5615 = add i64 %5614, %5610
  %5616 = icmp eq i64 %5615, 2
  %5617 = zext i1 %5616 to i8
  %5618 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5617, i8* %5618, align 1
  store %struct.Memory* %loadMem_42c705, %struct.Memory** %MEMORY
  %loadMem_42c709 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5620 = getelementptr inbounds %struct.GPR, %struct.GPR* %5619, i32 0, i32 33
  %5621 = getelementptr inbounds %struct.Reg, %struct.Reg* %5620, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %5621 to i64*
  %5622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5623 = getelementptr inbounds %struct.GPR, %struct.GPR* %5622, i32 0, i32 15
  %5624 = getelementptr inbounds %struct.Reg, %struct.Reg* %5623, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %5624 to i64*
  %5625 = load i64, i64* %PC.i2
  %5626 = add i64 %5625, 1
  store i64 %5626, i64* %PC.i2
  %5627 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5628 = load i64, i64* %5627, align 8
  %5629 = add i64 %5628, 8
  %5630 = inttoptr i64 %5628 to i64*
  %5631 = load i64, i64* %5630
  store i64 %5631, i64* %RBP.i3, align 8
  store i64 %5629, i64* %5627, align 8
  store %struct.Memory* %loadMem_42c709, %struct.Memory** %MEMORY
  %loadMem_42c70a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5632 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5633 = getelementptr inbounds %struct.GPR, %struct.GPR* %5632, i32 0, i32 33
  %5634 = getelementptr inbounds %struct.Reg, %struct.Reg* %5633, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %5634 to i64*
  %5635 = load i64, i64* %PC.i1
  %5636 = add i64 %5635, 1
  store i64 %5636, i64* %PC.i1
  %5637 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5638 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5639 = load i64, i64* %5638, align 8
  %5640 = inttoptr i64 %5639 to i64*
  %5641 = load i64, i64* %5640
  store i64 %5641, i64* %5637, align 8
  %5642 = add i64 %5639, 8
  store i64 %5642, i64* %5638, align 8
  store %struct.Memory* %loadMem_42c70a, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_42c70a
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

define %struct.Memory* @routine_subq__0x40___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %9, 64
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %9, 64
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
  %23 = xor i64 64, %9
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

define %struct.Memory* @routine_movq_0x10__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x8___r10d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 21
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R10D = bitcast %union.anon* %8 to i32*
  %9 = bitcast i32* %R10D to i64*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 6
  store i64 %11, i64* %PC
  store i64 8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = bitcast %union.vec128_t* %XMM0 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = bitcast i8* %11 to i64*
  %16 = load i64, i64* %15, align 1
  %17 = getelementptr inbounds i8, i8* %11, i64 8
  %18 = bitcast i8* %17 to i64*
  %19 = load i64, i64* %18, align 1
  %20 = bitcast i8* %12 to i64*
  %21 = load i64, i64* %20, align 1
  %22 = getelementptr inbounds i8, i8* %12, i64 8
  %23 = bitcast i8* %22 to i64*
  %24 = load i64, i64* %23, align 1
  %25 = xor i64 %21, %16
  %26 = xor i64 %24, %19
  %27 = trunc i64 %25 to i32
  %28 = lshr i64 %25, 32
  %29 = trunc i64 %28 to i32
  %30 = bitcast i8* %10 to i32*
  store i32 %27, i32* %30, align 1
  %31 = getelementptr inbounds i8, i8* %10, i64 4
  %32 = bitcast i8* %31 to i32*
  store i32 %29, i32* %32, align 1
  %33 = trunc i64 %26 to i32
  %34 = getelementptr inbounds i8, i8* %10, i64 8
  %35 = bitcast i8* %34 to i32*
  store i32 %33, i32* %35, align 1
  %36 = lshr i64 %26, 32
  %37 = trunc i64 %36 to i32
  %38 = getelementptr inbounds i8, i8* %10, i64 12
  %39 = bitcast i8* %38 to i32*
  store i32 %37, i32* %39, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rdi__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 16
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
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

define %struct.Memory* @routine_movq__rdx__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 32
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
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

define %struct.Memory* @routine_movl__r8d__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 40
  %14 = load i32, i32* %R8D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_movl_MINUS0x28__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
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

define %struct.Memory* @routine_movl__r10d___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %R10D
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.FSet(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x0__MINUS0x3c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 60
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x3c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 60
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

define %struct.Memory* @routine_jge_.L_42c6fb(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x3c__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 60
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

define %struct.Memory* @routine_jle_.L_42c464(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x20___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %9, 32
  %14 = icmp ult i32 %9, 32
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
  %23 = xor i64 32, %10
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

define %struct.Memory* @routine_je_.L_42c353(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x2e___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %9, 46
  %14 = icmp ult i32 %9, 46
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
  %23 = xor i64 46, %10
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

define %struct.Memory* @routine_cmpl__0x5f___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %9, 95
  %14 = icmp ult i32 %9, 95
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
  %23 = xor i64 95, %10
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

define %struct.Memory* @routine_cmpl__0x2d___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %9, 45
  %14 = icmp ult i32 %9, 45
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
  %23 = xor i64 45, %10
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

define %struct.Memory* @routine_cmpl__0x7e___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %9, 126
  %14 = icmp ult i32 %9, 126
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
  %23 = xor i64 126, %10
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

define %struct.Memory* @routine_jne_.L_42c35f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0xffffffff__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 4
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 -1, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_42c702(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_je_.L_42c3f0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_42c3fc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x0__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 4
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
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

define %struct.Memory* @routine_movss___rax__rcx_4____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 5
  store i64 %20, i64* %PC
  %21 = inttoptr i64 %18 to float*
  %22 = load float, float* %21
  %23 = bitcast i8* %14 to float*
  store float %22, float* %23, align 1
  %24 = getelementptr inbounds i8, i8* %14, i64 4
  %25 = bitcast i8* %24 to float*
  store float 0.000000e+00, float* %25, align 1
  %26 = getelementptr inbounds i8, i8* %14, i64 8
  %27 = bitcast i8* %26 to float*
  store float 0.000000e+00, float* %27, align 1
  %28 = getelementptr inbounds i8, i8* %14, i64 12
  %29 = bitcast i8* %28 to float*
  store float 0.000000e+00, float* %29, align 1
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

define %struct.Memory* @routine_addss_0x4__rax____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %13 = load i64, i64* %RAX
  %14 = add i64 %13, 4
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to <2 x float>*
  %18 = load <2 x float>, <2 x float>* %17, align 1
  %19 = getelementptr inbounds i8, i8* %12, i64 8
  %20 = bitcast i8* %19 to <2 x i32>*
  %21 = load <2 x i32>, <2 x i32>* %20, align 1
  %22 = inttoptr i64 %14 to float*
  %23 = load float, float* %22
  %24 = extractelement <2 x float> %18, i32 0
  %25 = fadd float %24, %23
  %26 = bitcast i8* %11 to float*
  store float %25, float* %26, align 1
  %27 = bitcast <2 x float> %18 to <2 x i32>
  %28 = extractelement <2 x i32> %27, i32 1
  %29 = getelementptr inbounds i8, i8* %11, i64 4
  %30 = bitcast i8* %29 to i32*
  store i32 %28, i32* %30, align 1
  %31 = extractelement <2 x i32> %21, i32 0
  %32 = getelementptr inbounds i8, i8* %11, i64 8
  %33 = bitcast i8* %32 to i32*
  store i32 %31, i32* %33, align 1
  %34 = extractelement <2 x i32> %21, i32 1
  %35 = getelementptr inbounds i8, i8* %11, i64 12
  %36 = bitcast i8* %35 to i32*
  store i32 %34, i32* %36, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm0__0x4__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RAX
  %12 = add i64 %11, 4
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to <2 x float>*
  %17 = load <2 x float>, <2 x float>* %16, align 1
  %18 = extractelement <2 x float> %17, i32 0
  %19 = inttoptr i64 %12 to float*
  store float %18, float* %19
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

define %struct.Memory* @routine_cvtsi2ssl__edx___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EDX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i32, i32* %EDX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = bitcast i8* %11 to <2 x i32>*
  %17 = load <2 x i32>, <2 x i32>* %16, align 1
  %18 = getelementptr inbounds i8, i8* %11, i64 8
  %19 = bitcast i8* %18 to <2 x i32>*
  %20 = load <2 x i32>, <2 x i32>* %19, align 1
  %21 = sitofp i32 %12 to float
  %22 = bitcast i8* %11 to float*
  store float %21, float* %22, align 1
  %23 = extractelement <2 x i32> %17, i32 1
  %24 = getelementptr inbounds i8, i8* %11, i64 4
  %25 = bitcast i8* %24 to i32*
  store i32 %23, i32* %25, align 1
  %26 = extractelement <2 x i32> %20, i32 0
  %27 = bitcast i8* %18 to i32*
  store i32 %26, i32* %27, align 1
  %28 = extractelement <2 x i32> %20, i32 1
  %29 = getelementptr inbounds i8, i8* %11, i64 12
  %30 = bitcast i8* %29 to i32*
  store i32 %28, i32* %30, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulss___rax__rcx_4____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %15 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %16 = load i64, i64* %RAX
  %17 = load i64, i64* %RCX
  %18 = mul i64 %17, 4
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 5
  store i64 %21, i64* %PC
  %22 = bitcast i8* %15 to <2 x float>*
  %23 = load <2 x float>, <2 x float>* %22, align 1
  %24 = getelementptr inbounds i8, i8* %15, i64 8
  %25 = bitcast i8* %24 to <2 x i32>*
  %26 = load <2 x i32>, <2 x i32>* %25, align 1
  %27 = inttoptr i64 %19 to float*
  %28 = load float, float* %27
  %29 = extractelement <2 x float> %23, i32 0
  %30 = fmul float %29, %28
  %31 = bitcast i8* %14 to float*
  store float %30, float* %31, align 1
  %32 = bitcast <2 x float> %23 to <2 x i32>
  %33 = extractelement <2 x i32> %32, i32 1
  %34 = getelementptr inbounds i8, i8* %14, i64 4
  %35 = bitcast i8* %34 to i32*
  store i32 %33, i32* %35, align 1
  %36 = extractelement <2 x i32> %26, i32 0
  %37 = getelementptr inbounds i8, i8* %14, i64 8
  %38 = bitcast i8* %37 to i32*
  store i32 %36, i32* %38, align 1
  %39 = extractelement <2 x i32> %26, i32 1
  %40 = getelementptr inbounds i8, i8* %14, i64 12
  %41 = bitcast i8* %40 to i32*
  store i32 %39, i32* %41, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addss_0x10__rax____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %13 = load i64, i64* %RAX
  %14 = add i64 %13, 16
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to <2 x float>*
  %18 = load <2 x float>, <2 x float>* %17, align 1
  %19 = getelementptr inbounds i8, i8* %12, i64 8
  %20 = bitcast i8* %19 to <2 x i32>*
  %21 = load <2 x i32>, <2 x i32>* %20, align 1
  %22 = inttoptr i64 %14 to float*
  %23 = load float, float* %22
  %24 = extractelement <2 x float> %18, i32 0
  %25 = fadd float %24, %23
  %26 = bitcast i8* %11 to float*
  store float %25, float* %26, align 1
  %27 = bitcast <2 x float> %18 to <2 x i32>
  %28 = extractelement <2 x i32> %27, i32 1
  %29 = getelementptr inbounds i8, i8* %11, i64 4
  %30 = bitcast i8* %29 to i32*
  store i32 %28, i32* %30, align 1
  %31 = extractelement <2 x i32> %21, i32 0
  %32 = getelementptr inbounds i8, i8* %11, i64 8
  %33 = bitcast i8* %32 to i32*
  store i32 %31, i32* %33, align 1
  %34 = extractelement <2 x i32> %21, i32 1
  %35 = getelementptr inbounds i8, i8* %11, i64 12
  %36 = bitcast i8* %35 to i32*
  store i32 %34, i32* %36, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm0__0x10__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RAX
  %12 = add i64 %11, 16
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to <2 x float>*
  %17 = load <2 x float>, <2 x float>* %16, align 1
  %18 = extractelement <2 x float> %17, i32 0
  %19 = inttoptr i64 %12 to float*
  store float %18, float* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addss_0xc__rax____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %13 = load i64, i64* %RAX
  %14 = add i64 %13, 12
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to <2 x float>*
  %18 = load <2 x float>, <2 x float>* %17, align 1
  %19 = getelementptr inbounds i8, i8* %12, i64 8
  %20 = bitcast i8* %19 to <2 x i32>*
  %21 = load <2 x i32>, <2 x i32>* %20, align 1
  %22 = inttoptr i64 %14 to float*
  %23 = load float, float* %22
  %24 = extractelement <2 x float> %18, i32 0
  %25 = fadd float %24, %23
  %26 = bitcast i8* %11 to float*
  store float %25, float* %26, align 1
  %27 = bitcast <2 x float> %18 to <2 x i32>
  %28 = extractelement <2 x i32> %27, i32 1
  %29 = getelementptr inbounds i8, i8* %11, i64 4
  %30 = bitcast i8* %29 to i32*
  store i32 %28, i32* %30, align 1
  %31 = extractelement <2 x i32> %21, i32 0
  %32 = getelementptr inbounds i8, i8* %11, i64 8
  %33 = bitcast i8* %32 to i32*
  store i32 %31, i32* %33, align 1
  %34 = extractelement <2 x i32> %21, i32 1
  %35 = getelementptr inbounds i8, i8* %11, i64 12
  %36 = bitcast i8* %35 to i32*
  store i32 %34, i32* %36, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm0__0xc__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RAX
  %12 = add i64 %11, 12
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to <2 x float>*
  %17 = load <2 x float>, <2 x float>* %16, align 1
  %18 = extractelement <2 x float> %17, i32 0
  %19 = inttoptr i64 %12 to float*
  store float %18, float* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_42c6e8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_je_.L_42c5eb(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_42c517(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_42c5e6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_je_.L_42c5a8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_42c5c8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_addss_0x8__rax____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %13 = load i64, i64* %RAX
  %14 = add i64 %13, 8
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to <2 x float>*
  %18 = load <2 x float>, <2 x float>* %17, align 1
  %19 = getelementptr inbounds i8, i8* %12, i64 8
  %20 = bitcast i8* %19 to <2 x i32>*
  %21 = load <2 x i32>, <2 x i32>* %20, align 1
  %22 = inttoptr i64 %14 to float*
  %23 = load float, float* %22
  %24 = extractelement <2 x float> %18, i32 0
  %25 = fadd float %24, %23
  %26 = bitcast i8* %11 to float*
  store float %25, float* %26, align 1
  %27 = bitcast <2 x float> %18 to <2 x i32>
  %28 = extractelement <2 x i32> %27, i32 1
  %29 = getelementptr inbounds i8, i8* %11, i64 4
  %30 = bitcast i8* %29 to i32*
  store i32 %28, i32* %30, align 1
  %31 = extractelement <2 x i32> %21, i32 0
  %32 = getelementptr inbounds i8, i8* %11, i64 8
  %33 = bitcast i8* %32 to i32*
  store i32 %31, i32* %33, align 1
  %34 = extractelement <2 x i32> %21, i32 1
  %35 = getelementptr inbounds i8, i8* %11, i64 12
  %36 = bitcast i8* %35 to i32*
  store i32 %34, i32* %36, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm0__0x8__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RAX
  %12 = add i64 %11, 8
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to <2 x float>*
  %17 = load <2 x float>, <2 x float>* %16, align 1
  %18 = extractelement <2 x float> %17, i32 0
  %19 = inttoptr i64 %12 to float*
  store float %18, float* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_42c5e1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_addss___rax____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %13 = load i64, i64* %RAX
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = bitcast i8* %12 to <2 x float>*
  %17 = load <2 x float>, <2 x float>* %16, align 1
  %18 = getelementptr inbounds i8, i8* %12, i64 8
  %19 = bitcast i8* %18 to <2 x i32>*
  %20 = load <2 x i32>, <2 x i32>* %19, align 1
  %21 = inttoptr i64 %13 to float*
  %22 = load float, float* %21
  %23 = extractelement <2 x float> %17, i32 0
  %24 = fadd float %23, %22
  %25 = bitcast i8* %11 to float*
  store float %24, float* %25, align 1
  %26 = bitcast <2 x float> %17 to <2 x i32>
  %27 = extractelement <2 x i32> %26, i32 1
  %28 = getelementptr inbounds i8, i8* %11, i64 4
  %29 = bitcast i8* %28 to i32*
  store i32 %27, i32* %29, align 1
  %30 = extractelement <2 x i32> %20, i32 0
  %31 = getelementptr inbounds i8, i8* %11, i64 8
  %32 = bitcast i8* %31 to i32*
  store i32 %30, i32* %32, align 1
  %33 = extractelement <2 x i32> %20, i32 1
  %34 = getelementptr inbounds i8, i8* %11, i64 12
  %35 = bitcast i8* %34 to i32*
  store i32 %33, i32* %35, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm0____rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RAX
  %12 = bitcast %union.vec128_t* %XMM0 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = bitcast i8* %12 to <2 x float>*
  %16 = load <2 x float>, <2 x float>* %15, align 1
  %17 = extractelement <2 x float> %16, i32 0
  %18 = inttoptr i64 %11 to float*
  store float %17, float* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_42c6e3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jne_.L_42c60d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_42c6ed(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_je_.L_42c69e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_42c6be(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_addss_0x18__rax____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %13 = load i64, i64* %RAX
  %14 = add i64 %13, 24
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to <2 x float>*
  %18 = load <2 x float>, <2 x float>* %17, align 1
  %19 = getelementptr inbounds i8, i8* %12, i64 8
  %20 = bitcast i8* %19 to <2 x i32>*
  %21 = load <2 x i32>, <2 x i32>* %20, align 1
  %22 = inttoptr i64 %14 to float*
  %23 = load float, float* %22
  %24 = extractelement <2 x float> %18, i32 0
  %25 = fadd float %24, %23
  %26 = bitcast i8* %11 to float*
  store float %25, float* %26, align 1
  %27 = bitcast <2 x float> %18 to <2 x i32>
  %28 = extractelement <2 x i32> %27, i32 1
  %29 = getelementptr inbounds i8, i8* %11, i64 4
  %30 = bitcast i8* %29 to i32*
  store i32 %28, i32* %30, align 1
  %31 = extractelement <2 x i32> %21, i32 0
  %32 = getelementptr inbounds i8, i8* %11, i64 8
  %33 = bitcast i8* %32 to i32*
  store i32 %31, i32* %33, align 1
  %34 = extractelement <2 x i32> %21, i32 1
  %35 = getelementptr inbounds i8, i8* %11, i64 12
  %36 = bitcast i8* %35 to i32*
  store i32 %34, i32* %36, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm0__0x18__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RAX
  %12 = add i64 %11, 24
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to <2 x float>*
  %17 = load <2 x float>, <2 x float>* %16, align 1
  %18 = extractelement <2 x float> %17, i32 0
  %19 = inttoptr i64 %12 to float*
  store float %18, float* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_42c6d9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_addss_0x14__rax____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %13 = load i64, i64* %RAX
  %14 = add i64 %13, 20
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to <2 x float>*
  %18 = load <2 x float>, <2 x float>* %17, align 1
  %19 = getelementptr inbounds i8, i8* %12, i64 8
  %20 = bitcast i8* %19 to <2 x i32>*
  %21 = load <2 x i32>, <2 x i32>* %20, align 1
  %22 = inttoptr i64 %14 to float*
  %23 = load float, float* %22
  %24 = extractelement <2 x float> %18, i32 0
  %25 = fadd float %24, %23
  %26 = bitcast i8* %11 to float*
  store float %25, float* %26, align 1
  %27 = bitcast <2 x float> %18 to <2 x i32>
  %28 = extractelement <2 x i32> %27, i32 1
  %29 = getelementptr inbounds i8, i8* %11, i64 4
  %30 = bitcast i8* %29 to i32*
  store i32 %28, i32* %30, align 1
  %31 = extractelement <2 x i32> %21, i32 0
  %32 = getelementptr inbounds i8, i8* %11, i64 8
  %33 = bitcast i8* %32 to i32*
  store i32 %31, i32* %33, align 1
  %34 = extractelement <2 x i32> %21, i32 1
  %35 = getelementptr inbounds i8, i8* %11, i64 12
  %36 = bitcast i8* %35 to i32*
  store i32 %34, i32* %36, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm0__0x14__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RAX
  %12 = add i64 %11, 20
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to <2 x float>*
  %17 = load <2 x float>, <2 x float>* %16, align 1
  %18 = extractelement <2 x float> %17, i32 0
  %19 = inttoptr i64 %12 to float*
  store float %18, float* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_42c6de(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__eax__MINUS0x3c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 60
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_42c2a4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x1__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 4
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 1, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 4
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__0x40___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 64, %9
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 64
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
  %25 = xor i64 64, %9
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
