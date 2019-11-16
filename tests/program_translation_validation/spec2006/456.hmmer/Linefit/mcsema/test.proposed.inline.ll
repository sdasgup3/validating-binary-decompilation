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

; Function Attrs: alwaysinline
define %struct.Memory* @Linefit(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_4448e0 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_4448e0, %struct.Memory** %MEMORY
  %loadMem_4448e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i314 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i315 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i316 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i315
  %27 = load i64, i64* %PC.i314
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i314
  store i64 %26, i64* %RBP.i316, align 8
  store %struct.Memory* %loadMem_4448e1, %struct.Memory** %MEMORY
  %loadMem_4448e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i312 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i313 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i313
  %36 = load i64, i64* %PC.i312
  %37 = add i64 %36, 4
  store i64 %37, i64* %PC.i312
  %38 = sub i64 %35, 96
  store i64 %38, i64* %RSP.i313, align 8
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
  store %struct.Memory* %loadMem_4448e4, %struct.Memory** %MEMORY
  %loadMem_4448e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i309 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %71 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %70, i64 0, i64 0
  %YMM0.i310 = bitcast %union.VectorReg* %71 to %"class.std::bitset"*
  %72 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %73 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %72, i64 0, i64 0
  %XMM0.i311 = bitcast %union.VectorReg* %73 to %union.vec128_t*
  %74 = bitcast %"class.std::bitset"* %YMM0.i310 to i8*
  %75 = bitcast %"class.std::bitset"* %YMM0.i310 to i8*
  %76 = bitcast %union.vec128_t* %XMM0.i311 to i8*
  %77 = load i64, i64* %PC.i309
  %78 = add i64 %77, 3
  store i64 %78, i64* %PC.i309
  %79 = bitcast i8* %75 to i64*
  %80 = load i64, i64* %79, align 1
  %81 = getelementptr inbounds i8, i8* %75, i64 8
  %82 = bitcast i8* %81 to i64*
  %83 = load i64, i64* %82, align 1
  %84 = bitcast i8* %76 to i64*
  %85 = load i64, i64* %84, align 1
  %86 = getelementptr inbounds i8, i8* %76, i64 8
  %87 = bitcast i8* %86 to i64*
  %88 = load i64, i64* %87, align 1
  %89 = xor i64 %85, %80
  %90 = xor i64 %88, %83
  %91 = trunc i64 %89 to i32
  %92 = lshr i64 %89, 32
  %93 = trunc i64 %92 to i32
  %94 = bitcast i8* %74 to i32*
  store i32 %91, i32* %94, align 1
  %95 = getelementptr inbounds i8, i8* %74, i64 4
  %96 = bitcast i8* %95 to i32*
  store i32 %93, i32* %96, align 1
  %97 = trunc i64 %90 to i32
  %98 = getelementptr inbounds i8, i8* %74, i64 8
  %99 = bitcast i8* %98 to i32*
  store i32 %97, i32* %99, align 1
  %100 = lshr i64 %90, 32
  %101 = trunc i64 %100 to i32
  %102 = getelementptr inbounds i8, i8* %74, i64 12
  %103 = bitcast i8* %102 to i32*
  store i32 %101, i32* %103, align 1
  store %struct.Memory* %loadMem_4448e8, %struct.Memory** %MEMORY
  %loadMem_4448eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %105 = getelementptr inbounds %struct.GPR, %struct.GPR* %104, i32 0, i32 33
  %106 = getelementptr inbounds %struct.Reg, %struct.Reg* %105, i32 0, i32 0
  %PC.i307 = bitcast %union.anon* %106 to i64*
  %107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %108 = getelementptr inbounds %struct.GPR, %struct.GPR* %107, i32 0, i32 11
  %109 = getelementptr inbounds %struct.Reg, %struct.Reg* %108, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %109 to i64*
  %110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %111 = getelementptr inbounds %struct.GPR, %struct.GPR* %110, i32 0, i32 15
  %112 = getelementptr inbounds %struct.Reg, %struct.Reg* %111, i32 0, i32 0
  %RBP.i308 = bitcast %union.anon* %112 to i64*
  %113 = load i64, i64* %RBP.i308
  %114 = sub i64 %113, 8
  %115 = load i64, i64* %RDI.i
  %116 = load i64, i64* %PC.i307
  %117 = add i64 %116, 4
  store i64 %117, i64* %PC.i307
  %118 = inttoptr i64 %114 to i64*
  store i64 %115, i64* %118
  store %struct.Memory* %loadMem_4448eb, %struct.Memory** %MEMORY
  %loadMem_4448ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %120 = getelementptr inbounds %struct.GPR, %struct.GPR* %119, i32 0, i32 33
  %121 = getelementptr inbounds %struct.Reg, %struct.Reg* %120, i32 0, i32 0
  %PC.i305 = bitcast %union.anon* %121 to i64*
  %122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %123 = getelementptr inbounds %struct.GPR, %struct.GPR* %122, i32 0, i32 9
  %124 = getelementptr inbounds %struct.Reg, %struct.Reg* %123, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %124 to i64*
  %125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %126 = getelementptr inbounds %struct.GPR, %struct.GPR* %125, i32 0, i32 15
  %127 = getelementptr inbounds %struct.Reg, %struct.Reg* %126, i32 0, i32 0
  %RBP.i306 = bitcast %union.anon* %127 to i64*
  %128 = load i64, i64* %RBP.i306
  %129 = sub i64 %128, 16
  %130 = load i64, i64* %RSI.i
  %131 = load i64, i64* %PC.i305
  %132 = add i64 %131, 4
  store i64 %132, i64* %PC.i305
  %133 = inttoptr i64 %129 to i64*
  store i64 %130, i64* %133
  store %struct.Memory* %loadMem_4448ef, %struct.Memory** %MEMORY
  %loadMem_4448f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %135 = getelementptr inbounds %struct.GPR, %struct.GPR* %134, i32 0, i32 33
  %136 = getelementptr inbounds %struct.Reg, %struct.Reg* %135, i32 0, i32 0
  %PC.i303 = bitcast %union.anon* %136 to i64*
  %137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %138 = getelementptr inbounds %struct.GPR, %struct.GPR* %137, i32 0, i32 7
  %139 = getelementptr inbounds %struct.Reg, %struct.Reg* %138, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %139 to i32*
  %140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %141 = getelementptr inbounds %struct.GPR, %struct.GPR* %140, i32 0, i32 15
  %142 = getelementptr inbounds %struct.Reg, %struct.Reg* %141, i32 0, i32 0
  %RBP.i304 = bitcast %union.anon* %142 to i64*
  %143 = load i64, i64* %RBP.i304
  %144 = sub i64 %143, 20
  %145 = load i32, i32* %EDX.i
  %146 = zext i32 %145 to i64
  %147 = load i64, i64* %PC.i303
  %148 = add i64 %147, 3
  store i64 %148, i64* %PC.i303
  %149 = inttoptr i64 %144 to i32*
  store i32 %145, i32* %149
  store %struct.Memory* %loadMem_4448f3, %struct.Memory** %MEMORY
  %loadMem_4448f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %151 = getelementptr inbounds %struct.GPR, %struct.GPR* %150, i32 0, i32 33
  %152 = getelementptr inbounds %struct.Reg, %struct.Reg* %151, i32 0, i32 0
  %PC.i300 = bitcast %union.anon* %152 to i64*
  %153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %154 = getelementptr inbounds %struct.GPR, %struct.GPR* %153, i32 0, i32 5
  %155 = getelementptr inbounds %struct.Reg, %struct.Reg* %154, i32 0, i32 0
  %RCX.i301 = bitcast %union.anon* %155 to i64*
  %156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %157 = getelementptr inbounds %struct.GPR, %struct.GPR* %156, i32 0, i32 15
  %158 = getelementptr inbounds %struct.Reg, %struct.Reg* %157, i32 0, i32 0
  %RBP.i302 = bitcast %union.anon* %158 to i64*
  %159 = load i64, i64* %RBP.i302
  %160 = sub i64 %159, 32
  %161 = load i64, i64* %RCX.i301
  %162 = load i64, i64* %PC.i300
  %163 = add i64 %162, 4
  store i64 %163, i64* %PC.i300
  %164 = inttoptr i64 %160 to i64*
  store i64 %161, i64* %164
  store %struct.Memory* %loadMem_4448f6, %struct.Memory** %MEMORY
  %loadMem_4448fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %166 = getelementptr inbounds %struct.GPR, %struct.GPR* %165, i32 0, i32 33
  %167 = getelementptr inbounds %struct.Reg, %struct.Reg* %166, i32 0, i32 0
  %PC.i298 = bitcast %union.anon* %167 to i64*
  %168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %169 = getelementptr inbounds %struct.GPR, %struct.GPR* %168, i32 0, i32 15
  %170 = getelementptr inbounds %struct.Reg, %struct.Reg* %169, i32 0, i32 0
  %RBP.i299 = bitcast %union.anon* %170 to i64*
  %171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %172 = getelementptr inbounds %struct.GPR, %struct.GPR* %171, i32 0, i32 17
  %173 = getelementptr inbounds %struct.Reg, %struct.Reg* %172, i32 0, i32 0
  %R8.i = bitcast %union.anon* %173 to i64*
  %174 = load i64, i64* %RBP.i299
  %175 = sub i64 %174, 40
  %176 = load i64, i64* %R8.i
  %177 = load i64, i64* %PC.i298
  %178 = add i64 %177, 4
  store i64 %178, i64* %PC.i298
  %179 = inttoptr i64 %175 to i64*
  store i64 %176, i64* %179
  store %struct.Memory* %loadMem_4448fa, %struct.Memory** %MEMORY
  %loadMem_4448fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %181 = getelementptr inbounds %struct.GPR, %struct.GPR* %180, i32 0, i32 33
  %182 = getelementptr inbounds %struct.Reg, %struct.Reg* %181, i32 0, i32 0
  %PC.i296 = bitcast %union.anon* %182 to i64*
  %183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %184 = getelementptr inbounds %struct.GPR, %struct.GPR* %183, i32 0, i32 15
  %185 = getelementptr inbounds %struct.Reg, %struct.Reg* %184, i32 0, i32 0
  %RBP.i297 = bitcast %union.anon* %185 to i64*
  %186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %187 = getelementptr inbounds %struct.GPR, %struct.GPR* %186, i32 0, i32 19
  %188 = getelementptr inbounds %struct.Reg, %struct.Reg* %187, i32 0, i32 0
  %R9.i = bitcast %union.anon* %188 to i64*
  %189 = load i64, i64* %RBP.i297
  %190 = sub i64 %189, 48
  %191 = load i64, i64* %R9.i
  %192 = load i64, i64* %PC.i296
  %193 = add i64 %192, 4
  store i64 %193, i64* %PC.i296
  %194 = inttoptr i64 %190 to i64*
  store i64 %191, i64* %194
  store %struct.Memory* %loadMem_4448fe, %struct.Memory** %MEMORY
  %loadMem_444902 = load %struct.Memory*, %struct.Memory** %MEMORY
  %195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %196 = getelementptr inbounds %struct.GPR, %struct.GPR* %195, i32 0, i32 33
  %197 = getelementptr inbounds %struct.Reg, %struct.Reg* %196, i32 0, i32 0
  %PC.i293 = bitcast %union.anon* %197 to i64*
  %198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %199 = getelementptr inbounds %struct.GPR, %struct.GPR* %198, i32 0, i32 15
  %200 = getelementptr inbounds %struct.Reg, %struct.Reg* %199, i32 0, i32 0
  %RBP.i294 = bitcast %union.anon* %200 to i64*
  %201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %202 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %201, i64 0, i64 0
  %XMM0.i295 = bitcast %union.VectorReg* %202 to %union.vec128_t*
  %203 = load i64, i64* %RBP.i294
  %204 = sub i64 %203, 56
  %205 = bitcast %union.vec128_t* %XMM0.i295 to i8*
  %206 = load i64, i64* %PC.i293
  %207 = add i64 %206, 5
  store i64 %207, i64* %PC.i293
  %208 = bitcast i8* %205 to <2 x float>*
  %209 = load <2 x float>, <2 x float>* %208, align 1
  %210 = extractelement <2 x float> %209, i32 0
  %211 = inttoptr i64 %204 to float*
  store float %210, float* %211
  store %struct.Memory* %loadMem_444902, %struct.Memory** %MEMORY
  %loadMem_444907 = load %struct.Memory*, %struct.Memory** %MEMORY
  %212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %213 = getelementptr inbounds %struct.GPR, %struct.GPR* %212, i32 0, i32 33
  %214 = getelementptr inbounds %struct.Reg, %struct.Reg* %213, i32 0, i32 0
  %PC.i290 = bitcast %union.anon* %214 to i64*
  %215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %216 = getelementptr inbounds %struct.GPR, %struct.GPR* %215, i32 0, i32 15
  %217 = getelementptr inbounds %struct.Reg, %struct.Reg* %216, i32 0, i32 0
  %RBP.i291 = bitcast %union.anon* %217 to i64*
  %218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %219 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %218, i64 0, i64 0
  %XMM0.i292 = bitcast %union.VectorReg* %219 to %union.vec128_t*
  %220 = load i64, i64* %RBP.i291
  %221 = sub i64 %220, 52
  %222 = bitcast %union.vec128_t* %XMM0.i292 to i8*
  %223 = load i64, i64* %PC.i290
  %224 = add i64 %223, 5
  store i64 %224, i64* %PC.i290
  %225 = bitcast i8* %222 to <2 x float>*
  %226 = load <2 x float>, <2 x float>* %225, align 1
  %227 = extractelement <2 x float> %226, i32 0
  %228 = inttoptr i64 %221 to float*
  store float %227, float* %228
  store %struct.Memory* %loadMem_444907, %struct.Memory** %MEMORY
  %loadMem_44490c = load %struct.Memory*, %struct.Memory** %MEMORY
  %229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %230 = getelementptr inbounds %struct.GPR, %struct.GPR* %229, i32 0, i32 33
  %231 = getelementptr inbounds %struct.Reg, %struct.Reg* %230, i32 0, i32 0
  %PC.i288 = bitcast %union.anon* %231 to i64*
  %232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %233 = getelementptr inbounds %struct.GPR, %struct.GPR* %232, i32 0, i32 15
  %234 = getelementptr inbounds %struct.Reg, %struct.Reg* %233, i32 0, i32 0
  %RBP.i289 = bitcast %union.anon* %234 to i64*
  %235 = load i64, i64* %RBP.i289
  %236 = sub i64 %235, 72
  %237 = load i64, i64* %PC.i288
  %238 = add i64 %237, 7
  store i64 %238, i64* %PC.i288
  %239 = inttoptr i64 %236 to i32*
  store i32 0, i32* %239
  store %struct.Memory* %loadMem_44490c, %struct.Memory** %MEMORY
  br label %block_.L_444913

block_.L_444913:                                  ; preds = %block_44491f, %entry
  %loadMem_444913 = load %struct.Memory*, %struct.Memory** %MEMORY
  %240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %241 = getelementptr inbounds %struct.GPR, %struct.GPR* %240, i32 0, i32 33
  %242 = getelementptr inbounds %struct.Reg, %struct.Reg* %241, i32 0, i32 0
  %PC.i285 = bitcast %union.anon* %242 to i64*
  %243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %244 = getelementptr inbounds %struct.GPR, %struct.GPR* %243, i32 0, i32 1
  %245 = getelementptr inbounds %struct.Reg, %struct.Reg* %244, i32 0, i32 0
  %RAX.i286 = bitcast %union.anon* %245 to i64*
  %246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %247 = getelementptr inbounds %struct.GPR, %struct.GPR* %246, i32 0, i32 15
  %248 = getelementptr inbounds %struct.Reg, %struct.Reg* %247, i32 0, i32 0
  %RBP.i287 = bitcast %union.anon* %248 to i64*
  %249 = load i64, i64* %RBP.i287
  %250 = sub i64 %249, 72
  %251 = load i64, i64* %PC.i285
  %252 = add i64 %251, 3
  store i64 %252, i64* %PC.i285
  %253 = inttoptr i64 %250 to i32*
  %254 = load i32, i32* %253
  %255 = zext i32 %254 to i64
  store i64 %255, i64* %RAX.i286, align 8
  store %struct.Memory* %loadMem_444913, %struct.Memory** %MEMORY
  %loadMem_444916 = load %struct.Memory*, %struct.Memory** %MEMORY
  %256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %257 = getelementptr inbounds %struct.GPR, %struct.GPR* %256, i32 0, i32 33
  %258 = getelementptr inbounds %struct.Reg, %struct.Reg* %257, i32 0, i32 0
  %PC.i282 = bitcast %union.anon* %258 to i64*
  %259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %260 = getelementptr inbounds %struct.GPR, %struct.GPR* %259, i32 0, i32 1
  %261 = getelementptr inbounds %struct.Reg, %struct.Reg* %260, i32 0, i32 0
  %EAX.i283 = bitcast %union.anon* %261 to i32*
  %262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %263 = getelementptr inbounds %struct.GPR, %struct.GPR* %262, i32 0, i32 15
  %264 = getelementptr inbounds %struct.Reg, %struct.Reg* %263, i32 0, i32 0
  %RBP.i284 = bitcast %union.anon* %264 to i64*
  %265 = load i32, i32* %EAX.i283
  %266 = zext i32 %265 to i64
  %267 = load i64, i64* %RBP.i284
  %268 = sub i64 %267, 20
  %269 = load i64, i64* %PC.i282
  %270 = add i64 %269, 3
  store i64 %270, i64* %PC.i282
  %271 = inttoptr i64 %268 to i32*
  %272 = load i32, i32* %271
  %273 = sub i32 %265, %272
  %274 = icmp ult i32 %265, %272
  %275 = zext i1 %274 to i8
  %276 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %275, i8* %276, align 1
  %277 = and i32 %273, 255
  %278 = call i32 @llvm.ctpop.i32(i32 %277)
  %279 = trunc i32 %278 to i8
  %280 = and i8 %279, 1
  %281 = xor i8 %280, 1
  %282 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %281, i8* %282, align 1
  %283 = xor i32 %272, %265
  %284 = xor i32 %283, %273
  %285 = lshr i32 %284, 4
  %286 = trunc i32 %285 to i8
  %287 = and i8 %286, 1
  %288 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %287, i8* %288, align 1
  %289 = icmp eq i32 %273, 0
  %290 = zext i1 %289 to i8
  %291 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %290, i8* %291, align 1
  %292 = lshr i32 %273, 31
  %293 = trunc i32 %292 to i8
  %294 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %293, i8* %294, align 1
  %295 = lshr i32 %265, 31
  %296 = lshr i32 %272, 31
  %297 = xor i32 %296, %295
  %298 = xor i32 %292, %295
  %299 = add i32 %298, %297
  %300 = icmp eq i32 %299, 2
  %301 = zext i1 %300 to i8
  %302 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %301, i8* %302, align 1
  store %struct.Memory* %loadMem_444916, %struct.Memory** %MEMORY
  %loadMem_444919 = load %struct.Memory*, %struct.Memory** %MEMORY
  %303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %304 = getelementptr inbounds %struct.GPR, %struct.GPR* %303, i32 0, i32 33
  %305 = getelementptr inbounds %struct.Reg, %struct.Reg* %304, i32 0, i32 0
  %PC.i281 = bitcast %union.anon* %305 to i64*
  %306 = load i64, i64* %PC.i281
  %307 = add i64 %306, 66
  %308 = load i64, i64* %PC.i281
  %309 = add i64 %308, 6
  %310 = load i64, i64* %PC.i281
  %311 = add i64 %310, 6
  store i64 %311, i64* %PC.i281
  %312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %313 = load i8, i8* %312, align 1
  %314 = icmp ne i8 %313, 0
  %315 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %316 = load i8, i8* %315, align 1
  %317 = icmp ne i8 %316, 0
  %318 = xor i1 %314, %317
  %319 = xor i1 %318, true
  %320 = zext i1 %319 to i8
  store i8 %320, i8* %BRANCH_TAKEN, align 1
  %321 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %322 = select i1 %318, i64 %309, i64 %307
  store i64 %322, i64* %321, align 8
  store %struct.Memory* %loadMem_444919, %struct.Memory** %MEMORY
  %loadBr_444919 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_444919 = icmp eq i8 %loadBr_444919, 1
  br i1 %cmpBr_444919, label %block_.L_44495b, label %block_44491f

block_44491f:                                     ; preds = %block_.L_444913
  %loadMem_44491f = load %struct.Memory*, %struct.Memory** %MEMORY
  %323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %324 = getelementptr inbounds %struct.GPR, %struct.GPR* %323, i32 0, i32 33
  %325 = getelementptr inbounds %struct.Reg, %struct.Reg* %324, i32 0, i32 0
  %PC.i278 = bitcast %union.anon* %325 to i64*
  %326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %327 = getelementptr inbounds %struct.GPR, %struct.GPR* %326, i32 0, i32 1
  %328 = getelementptr inbounds %struct.Reg, %struct.Reg* %327, i32 0, i32 0
  %RAX.i279 = bitcast %union.anon* %328 to i64*
  %329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %330 = getelementptr inbounds %struct.GPR, %struct.GPR* %329, i32 0, i32 15
  %331 = getelementptr inbounds %struct.Reg, %struct.Reg* %330, i32 0, i32 0
  %RBP.i280 = bitcast %union.anon* %331 to i64*
  %332 = load i64, i64* %RBP.i280
  %333 = sub i64 %332, 8
  %334 = load i64, i64* %PC.i278
  %335 = add i64 %334, 4
  store i64 %335, i64* %PC.i278
  %336 = inttoptr i64 %333 to i64*
  %337 = load i64, i64* %336
  store i64 %337, i64* %RAX.i279, align 8
  store %struct.Memory* %loadMem_44491f, %struct.Memory** %MEMORY
  %loadMem_444923 = load %struct.Memory*, %struct.Memory** %MEMORY
  %338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %339 = getelementptr inbounds %struct.GPR, %struct.GPR* %338, i32 0, i32 33
  %340 = getelementptr inbounds %struct.Reg, %struct.Reg* %339, i32 0, i32 0
  %PC.i275 = bitcast %union.anon* %340 to i64*
  %341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %342 = getelementptr inbounds %struct.GPR, %struct.GPR* %341, i32 0, i32 5
  %343 = getelementptr inbounds %struct.Reg, %struct.Reg* %342, i32 0, i32 0
  %RCX.i276 = bitcast %union.anon* %343 to i64*
  %344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %345 = getelementptr inbounds %struct.GPR, %struct.GPR* %344, i32 0, i32 15
  %346 = getelementptr inbounds %struct.Reg, %struct.Reg* %345, i32 0, i32 0
  %RBP.i277 = bitcast %union.anon* %346 to i64*
  %347 = load i64, i64* %RBP.i277
  %348 = sub i64 %347, 72
  %349 = load i64, i64* %PC.i275
  %350 = add i64 %349, 4
  store i64 %350, i64* %PC.i275
  %351 = inttoptr i64 %348 to i32*
  %352 = load i32, i32* %351
  %353 = sext i32 %352 to i64
  store i64 %353, i64* %RCX.i276, align 8
  store %struct.Memory* %loadMem_444923, %struct.Memory** %MEMORY
  %loadMem_444927 = load %struct.Memory*, %struct.Memory** %MEMORY
  %354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %355 = getelementptr inbounds %struct.GPR, %struct.GPR* %354, i32 0, i32 33
  %356 = getelementptr inbounds %struct.Reg, %struct.Reg* %355, i32 0, i32 0
  %PC.i271 = bitcast %union.anon* %356 to i64*
  %357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %358 = getelementptr inbounds %struct.GPR, %struct.GPR* %357, i32 0, i32 1
  %359 = getelementptr inbounds %struct.Reg, %struct.Reg* %358, i32 0, i32 0
  %RAX.i272 = bitcast %union.anon* %359 to i64*
  %360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %361 = getelementptr inbounds %struct.GPR, %struct.GPR* %360, i32 0, i32 5
  %362 = getelementptr inbounds %struct.Reg, %struct.Reg* %361, i32 0, i32 0
  %RCX.i273 = bitcast %union.anon* %362 to i64*
  %363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %364 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %363, i64 0, i64 0
  %YMM0.i274 = bitcast %union.VectorReg* %364 to %"class.std::bitset"*
  %365 = bitcast %"class.std::bitset"* %YMM0.i274 to i8*
  %366 = load i64, i64* %RAX.i272
  %367 = load i64, i64* %RCX.i273
  %368 = mul i64 %367, 4
  %369 = add i64 %368, %366
  %370 = load i64, i64* %PC.i271
  %371 = add i64 %370, 5
  store i64 %371, i64* %PC.i271
  %372 = inttoptr i64 %369 to float*
  %373 = load float, float* %372
  %374 = bitcast i8* %365 to float*
  store float %373, float* %374, align 1
  %375 = getelementptr inbounds i8, i8* %365, i64 4
  %376 = bitcast i8* %375 to float*
  store float 0.000000e+00, float* %376, align 1
  %377 = getelementptr inbounds i8, i8* %365, i64 8
  %378 = bitcast i8* %377 to float*
  store float 0.000000e+00, float* %378, align 1
  %379 = getelementptr inbounds i8, i8* %365, i64 12
  %380 = bitcast i8* %379 to float*
  store float 0.000000e+00, float* %380, align 1
  store %struct.Memory* %loadMem_444927, %struct.Memory** %MEMORY
  %loadMem_44492c = load %struct.Memory*, %struct.Memory** %MEMORY
  %381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %382 = getelementptr inbounds %struct.GPR, %struct.GPR* %381, i32 0, i32 33
  %383 = getelementptr inbounds %struct.Reg, %struct.Reg* %382, i32 0, i32 0
  %PC.i268 = bitcast %union.anon* %383 to i64*
  %384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %385 = getelementptr inbounds %struct.GPR, %struct.GPR* %384, i32 0, i32 15
  %386 = getelementptr inbounds %struct.Reg, %struct.Reg* %385, i32 0, i32 0
  %RBP.i269 = bitcast %union.anon* %386 to i64*
  %387 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %388 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %387, i64 0, i64 0
  %YMM0.i270 = bitcast %union.VectorReg* %388 to %"class.std::bitset"*
  %389 = bitcast %"class.std::bitset"* %YMM0.i270 to i8*
  %390 = bitcast %"class.std::bitset"* %YMM0.i270 to i8*
  %391 = load i64, i64* %RBP.i269
  %392 = sub i64 %391, 52
  %393 = load i64, i64* %PC.i268
  %394 = add i64 %393, 5
  store i64 %394, i64* %PC.i268
  %395 = bitcast i8* %390 to <2 x float>*
  %396 = load <2 x float>, <2 x float>* %395, align 1
  %397 = getelementptr inbounds i8, i8* %390, i64 8
  %398 = bitcast i8* %397 to <2 x i32>*
  %399 = load <2 x i32>, <2 x i32>* %398, align 1
  %400 = inttoptr i64 %392 to float*
  %401 = load float, float* %400
  %402 = extractelement <2 x float> %396, i32 0
  %403 = fadd float %402, %401
  %404 = bitcast i8* %389 to float*
  store float %403, float* %404, align 1
  %405 = bitcast <2 x float> %396 to <2 x i32>
  %406 = extractelement <2 x i32> %405, i32 1
  %407 = getelementptr inbounds i8, i8* %389, i64 4
  %408 = bitcast i8* %407 to i32*
  store i32 %406, i32* %408, align 1
  %409 = extractelement <2 x i32> %399, i32 0
  %410 = getelementptr inbounds i8, i8* %389, i64 8
  %411 = bitcast i8* %410 to i32*
  store i32 %409, i32* %411, align 1
  %412 = extractelement <2 x i32> %399, i32 1
  %413 = getelementptr inbounds i8, i8* %389, i64 12
  %414 = bitcast i8* %413 to i32*
  store i32 %412, i32* %414, align 1
  store %struct.Memory* %loadMem_44492c, %struct.Memory** %MEMORY
  %loadMem_444931 = load %struct.Memory*, %struct.Memory** %MEMORY
  %415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %416 = getelementptr inbounds %struct.GPR, %struct.GPR* %415, i32 0, i32 33
  %417 = getelementptr inbounds %struct.Reg, %struct.Reg* %416, i32 0, i32 0
  %PC.i265 = bitcast %union.anon* %417 to i64*
  %418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %419 = getelementptr inbounds %struct.GPR, %struct.GPR* %418, i32 0, i32 15
  %420 = getelementptr inbounds %struct.Reg, %struct.Reg* %419, i32 0, i32 0
  %RBP.i266 = bitcast %union.anon* %420 to i64*
  %421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %422 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %421, i64 0, i64 0
  %XMM0.i267 = bitcast %union.VectorReg* %422 to %union.vec128_t*
  %423 = load i64, i64* %RBP.i266
  %424 = sub i64 %423, 52
  %425 = bitcast %union.vec128_t* %XMM0.i267 to i8*
  %426 = load i64, i64* %PC.i265
  %427 = add i64 %426, 5
  store i64 %427, i64* %PC.i265
  %428 = bitcast i8* %425 to <2 x float>*
  %429 = load <2 x float>, <2 x float>* %428, align 1
  %430 = extractelement <2 x float> %429, i32 0
  %431 = inttoptr i64 %424 to float*
  store float %430, float* %431
  store %struct.Memory* %loadMem_444931, %struct.Memory** %MEMORY
  %loadMem_444936 = load %struct.Memory*, %struct.Memory** %MEMORY
  %432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %433 = getelementptr inbounds %struct.GPR, %struct.GPR* %432, i32 0, i32 33
  %434 = getelementptr inbounds %struct.Reg, %struct.Reg* %433, i32 0, i32 0
  %PC.i262 = bitcast %union.anon* %434 to i64*
  %435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %436 = getelementptr inbounds %struct.GPR, %struct.GPR* %435, i32 0, i32 1
  %437 = getelementptr inbounds %struct.Reg, %struct.Reg* %436, i32 0, i32 0
  %RAX.i263 = bitcast %union.anon* %437 to i64*
  %438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %439 = getelementptr inbounds %struct.GPR, %struct.GPR* %438, i32 0, i32 15
  %440 = getelementptr inbounds %struct.Reg, %struct.Reg* %439, i32 0, i32 0
  %RBP.i264 = bitcast %union.anon* %440 to i64*
  %441 = load i64, i64* %RBP.i264
  %442 = sub i64 %441, 16
  %443 = load i64, i64* %PC.i262
  %444 = add i64 %443, 4
  store i64 %444, i64* %PC.i262
  %445 = inttoptr i64 %442 to i64*
  %446 = load i64, i64* %445
  store i64 %446, i64* %RAX.i263, align 8
  store %struct.Memory* %loadMem_444936, %struct.Memory** %MEMORY
  %loadMem_44493a = load %struct.Memory*, %struct.Memory** %MEMORY
  %447 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %448 = getelementptr inbounds %struct.GPR, %struct.GPR* %447, i32 0, i32 33
  %449 = getelementptr inbounds %struct.Reg, %struct.Reg* %448, i32 0, i32 0
  %PC.i259 = bitcast %union.anon* %449 to i64*
  %450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %451 = getelementptr inbounds %struct.GPR, %struct.GPR* %450, i32 0, i32 5
  %452 = getelementptr inbounds %struct.Reg, %struct.Reg* %451, i32 0, i32 0
  %RCX.i260 = bitcast %union.anon* %452 to i64*
  %453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %454 = getelementptr inbounds %struct.GPR, %struct.GPR* %453, i32 0, i32 15
  %455 = getelementptr inbounds %struct.Reg, %struct.Reg* %454, i32 0, i32 0
  %RBP.i261 = bitcast %union.anon* %455 to i64*
  %456 = load i64, i64* %RBP.i261
  %457 = sub i64 %456, 72
  %458 = load i64, i64* %PC.i259
  %459 = add i64 %458, 4
  store i64 %459, i64* %PC.i259
  %460 = inttoptr i64 %457 to i32*
  %461 = load i32, i32* %460
  %462 = sext i32 %461 to i64
  store i64 %462, i64* %RCX.i260, align 8
  store %struct.Memory* %loadMem_44493a, %struct.Memory** %MEMORY
  %loadMem_44493e = load %struct.Memory*, %struct.Memory** %MEMORY
  %463 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %464 = getelementptr inbounds %struct.GPR, %struct.GPR* %463, i32 0, i32 33
  %465 = getelementptr inbounds %struct.Reg, %struct.Reg* %464, i32 0, i32 0
  %PC.i255 = bitcast %union.anon* %465 to i64*
  %466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %467 = getelementptr inbounds %struct.GPR, %struct.GPR* %466, i32 0, i32 1
  %468 = getelementptr inbounds %struct.Reg, %struct.Reg* %467, i32 0, i32 0
  %RAX.i256 = bitcast %union.anon* %468 to i64*
  %469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %470 = getelementptr inbounds %struct.GPR, %struct.GPR* %469, i32 0, i32 5
  %471 = getelementptr inbounds %struct.Reg, %struct.Reg* %470, i32 0, i32 0
  %RCX.i257 = bitcast %union.anon* %471 to i64*
  %472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %473 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %472, i64 0, i64 0
  %YMM0.i258 = bitcast %union.VectorReg* %473 to %"class.std::bitset"*
  %474 = bitcast %"class.std::bitset"* %YMM0.i258 to i8*
  %475 = load i64, i64* %RAX.i256
  %476 = load i64, i64* %RCX.i257
  %477 = mul i64 %476, 4
  %478 = add i64 %477, %475
  %479 = load i64, i64* %PC.i255
  %480 = add i64 %479, 5
  store i64 %480, i64* %PC.i255
  %481 = inttoptr i64 %478 to float*
  %482 = load float, float* %481
  %483 = bitcast i8* %474 to float*
  store float %482, float* %483, align 1
  %484 = getelementptr inbounds i8, i8* %474, i64 4
  %485 = bitcast i8* %484 to float*
  store float 0.000000e+00, float* %485, align 1
  %486 = getelementptr inbounds i8, i8* %474, i64 8
  %487 = bitcast i8* %486 to float*
  store float 0.000000e+00, float* %487, align 1
  %488 = getelementptr inbounds i8, i8* %474, i64 12
  %489 = bitcast i8* %488 to float*
  store float 0.000000e+00, float* %489, align 1
  store %struct.Memory* %loadMem_44493e, %struct.Memory** %MEMORY
  %loadMem_444943 = load %struct.Memory*, %struct.Memory** %MEMORY
  %490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %491 = getelementptr inbounds %struct.GPR, %struct.GPR* %490, i32 0, i32 33
  %492 = getelementptr inbounds %struct.Reg, %struct.Reg* %491, i32 0, i32 0
  %PC.i252 = bitcast %union.anon* %492 to i64*
  %493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %494 = getelementptr inbounds %struct.GPR, %struct.GPR* %493, i32 0, i32 15
  %495 = getelementptr inbounds %struct.Reg, %struct.Reg* %494, i32 0, i32 0
  %RBP.i253 = bitcast %union.anon* %495 to i64*
  %496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %497 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %496, i64 0, i64 0
  %YMM0.i254 = bitcast %union.VectorReg* %497 to %"class.std::bitset"*
  %498 = bitcast %"class.std::bitset"* %YMM0.i254 to i8*
  %499 = bitcast %"class.std::bitset"* %YMM0.i254 to i8*
  %500 = load i64, i64* %RBP.i253
  %501 = sub i64 %500, 56
  %502 = load i64, i64* %PC.i252
  %503 = add i64 %502, 5
  store i64 %503, i64* %PC.i252
  %504 = bitcast i8* %499 to <2 x float>*
  %505 = load <2 x float>, <2 x float>* %504, align 1
  %506 = getelementptr inbounds i8, i8* %499, i64 8
  %507 = bitcast i8* %506 to <2 x i32>*
  %508 = load <2 x i32>, <2 x i32>* %507, align 1
  %509 = inttoptr i64 %501 to float*
  %510 = load float, float* %509
  %511 = extractelement <2 x float> %505, i32 0
  %512 = fadd float %511, %510
  %513 = bitcast i8* %498 to float*
  store float %512, float* %513, align 1
  %514 = bitcast <2 x float> %505 to <2 x i32>
  %515 = extractelement <2 x i32> %514, i32 1
  %516 = getelementptr inbounds i8, i8* %498, i64 4
  %517 = bitcast i8* %516 to i32*
  store i32 %515, i32* %517, align 1
  %518 = extractelement <2 x i32> %508, i32 0
  %519 = getelementptr inbounds i8, i8* %498, i64 8
  %520 = bitcast i8* %519 to i32*
  store i32 %518, i32* %520, align 1
  %521 = extractelement <2 x i32> %508, i32 1
  %522 = getelementptr inbounds i8, i8* %498, i64 12
  %523 = bitcast i8* %522 to i32*
  store i32 %521, i32* %523, align 1
  store %struct.Memory* %loadMem_444943, %struct.Memory** %MEMORY
  %loadMem_444948 = load %struct.Memory*, %struct.Memory** %MEMORY
  %524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %525 = getelementptr inbounds %struct.GPR, %struct.GPR* %524, i32 0, i32 33
  %526 = getelementptr inbounds %struct.Reg, %struct.Reg* %525, i32 0, i32 0
  %PC.i249 = bitcast %union.anon* %526 to i64*
  %527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %528 = getelementptr inbounds %struct.GPR, %struct.GPR* %527, i32 0, i32 15
  %529 = getelementptr inbounds %struct.Reg, %struct.Reg* %528, i32 0, i32 0
  %RBP.i250 = bitcast %union.anon* %529 to i64*
  %530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %531 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %530, i64 0, i64 0
  %XMM0.i251 = bitcast %union.VectorReg* %531 to %union.vec128_t*
  %532 = load i64, i64* %RBP.i250
  %533 = sub i64 %532, 56
  %534 = bitcast %union.vec128_t* %XMM0.i251 to i8*
  %535 = load i64, i64* %PC.i249
  %536 = add i64 %535, 5
  store i64 %536, i64* %PC.i249
  %537 = bitcast i8* %534 to <2 x float>*
  %538 = load <2 x float>, <2 x float>* %537, align 1
  %539 = extractelement <2 x float> %538, i32 0
  %540 = inttoptr i64 %533 to float*
  store float %539, float* %540
  store %struct.Memory* %loadMem_444948, %struct.Memory** %MEMORY
  %loadMem_44494d = load %struct.Memory*, %struct.Memory** %MEMORY
  %541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %542 = getelementptr inbounds %struct.GPR, %struct.GPR* %541, i32 0, i32 33
  %543 = getelementptr inbounds %struct.Reg, %struct.Reg* %542, i32 0, i32 0
  %PC.i246 = bitcast %union.anon* %543 to i64*
  %544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %545 = getelementptr inbounds %struct.GPR, %struct.GPR* %544, i32 0, i32 1
  %546 = getelementptr inbounds %struct.Reg, %struct.Reg* %545, i32 0, i32 0
  %RAX.i247 = bitcast %union.anon* %546 to i64*
  %547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %548 = getelementptr inbounds %struct.GPR, %struct.GPR* %547, i32 0, i32 15
  %549 = getelementptr inbounds %struct.Reg, %struct.Reg* %548, i32 0, i32 0
  %RBP.i248 = bitcast %union.anon* %549 to i64*
  %550 = load i64, i64* %RBP.i248
  %551 = sub i64 %550, 72
  %552 = load i64, i64* %PC.i246
  %553 = add i64 %552, 3
  store i64 %553, i64* %PC.i246
  %554 = inttoptr i64 %551 to i32*
  %555 = load i32, i32* %554
  %556 = zext i32 %555 to i64
  store i64 %556, i64* %RAX.i247, align 8
  store %struct.Memory* %loadMem_44494d, %struct.Memory** %MEMORY
  %loadMem_444950 = load %struct.Memory*, %struct.Memory** %MEMORY
  %557 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %558 = getelementptr inbounds %struct.GPR, %struct.GPR* %557, i32 0, i32 33
  %559 = getelementptr inbounds %struct.Reg, %struct.Reg* %558, i32 0, i32 0
  %PC.i244 = bitcast %union.anon* %559 to i64*
  %560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %561 = getelementptr inbounds %struct.GPR, %struct.GPR* %560, i32 0, i32 1
  %562 = getelementptr inbounds %struct.Reg, %struct.Reg* %561, i32 0, i32 0
  %RAX.i245 = bitcast %union.anon* %562 to i64*
  %563 = load i64, i64* %RAX.i245
  %564 = load i64, i64* %PC.i244
  %565 = add i64 %564, 3
  store i64 %565, i64* %PC.i244
  %566 = trunc i64 %563 to i32
  %567 = add i32 1, %566
  %568 = zext i32 %567 to i64
  store i64 %568, i64* %RAX.i245, align 8
  %569 = icmp ult i32 %567, %566
  %570 = icmp ult i32 %567, 1
  %571 = or i1 %569, %570
  %572 = zext i1 %571 to i8
  %573 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %572, i8* %573, align 1
  %574 = and i32 %567, 255
  %575 = call i32 @llvm.ctpop.i32(i32 %574)
  %576 = trunc i32 %575 to i8
  %577 = and i8 %576, 1
  %578 = xor i8 %577, 1
  %579 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %578, i8* %579, align 1
  %580 = xor i64 1, %563
  %581 = trunc i64 %580 to i32
  %582 = xor i32 %581, %567
  %583 = lshr i32 %582, 4
  %584 = trunc i32 %583 to i8
  %585 = and i8 %584, 1
  %586 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %585, i8* %586, align 1
  %587 = icmp eq i32 %567, 0
  %588 = zext i1 %587 to i8
  %589 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %588, i8* %589, align 1
  %590 = lshr i32 %567, 31
  %591 = trunc i32 %590 to i8
  %592 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %591, i8* %592, align 1
  %593 = lshr i32 %566, 31
  %594 = xor i32 %590, %593
  %595 = add i32 %594, %590
  %596 = icmp eq i32 %595, 2
  %597 = zext i1 %596 to i8
  %598 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %597, i8* %598, align 1
  store %struct.Memory* %loadMem_444950, %struct.Memory** %MEMORY
  %loadMem_444953 = load %struct.Memory*, %struct.Memory** %MEMORY
  %599 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %600 = getelementptr inbounds %struct.GPR, %struct.GPR* %599, i32 0, i32 33
  %601 = getelementptr inbounds %struct.Reg, %struct.Reg* %600, i32 0, i32 0
  %PC.i241 = bitcast %union.anon* %601 to i64*
  %602 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %603 = getelementptr inbounds %struct.GPR, %struct.GPR* %602, i32 0, i32 1
  %604 = getelementptr inbounds %struct.Reg, %struct.Reg* %603, i32 0, i32 0
  %EAX.i242 = bitcast %union.anon* %604 to i32*
  %605 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %606 = getelementptr inbounds %struct.GPR, %struct.GPR* %605, i32 0, i32 15
  %607 = getelementptr inbounds %struct.Reg, %struct.Reg* %606, i32 0, i32 0
  %RBP.i243 = bitcast %union.anon* %607 to i64*
  %608 = load i64, i64* %RBP.i243
  %609 = sub i64 %608, 72
  %610 = load i32, i32* %EAX.i242
  %611 = zext i32 %610 to i64
  %612 = load i64, i64* %PC.i241
  %613 = add i64 %612, 3
  store i64 %613, i64* %PC.i241
  %614 = inttoptr i64 %609 to i32*
  store i32 %610, i32* %614
  store %struct.Memory* %loadMem_444953, %struct.Memory** %MEMORY
  %loadMem_444956 = load %struct.Memory*, %struct.Memory** %MEMORY
  %615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %616 = getelementptr inbounds %struct.GPR, %struct.GPR* %615, i32 0, i32 33
  %617 = getelementptr inbounds %struct.Reg, %struct.Reg* %616, i32 0, i32 0
  %PC.i240 = bitcast %union.anon* %617 to i64*
  %618 = load i64, i64* %PC.i240
  %619 = add i64 %618, -67
  %620 = load i64, i64* %PC.i240
  %621 = add i64 %620, 5
  store i64 %621, i64* %PC.i240
  %622 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %619, i64* %622, align 8
  store %struct.Memory* %loadMem_444956, %struct.Memory** %MEMORY
  br label %block_.L_444913

block_.L_44495b:                                  ; preds = %block_.L_444913
  %loadMem_44495b = load %struct.Memory*, %struct.Memory** %MEMORY
  %623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %624 = getelementptr inbounds %struct.GPR, %struct.GPR* %623, i32 0, i32 33
  %625 = getelementptr inbounds %struct.Reg, %struct.Reg* %624, i32 0, i32 0
  %PC.i237 = bitcast %union.anon* %625 to i64*
  %626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %627 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %626, i64 0, i64 0
  %YMM0.i238 = bitcast %union.VectorReg* %627 to %"class.std::bitset"*
  %628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %629 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %628, i64 0, i64 0
  %XMM0.i239 = bitcast %union.VectorReg* %629 to %union.vec128_t*
  %630 = bitcast %"class.std::bitset"* %YMM0.i238 to i8*
  %631 = bitcast %"class.std::bitset"* %YMM0.i238 to i8*
  %632 = bitcast %union.vec128_t* %XMM0.i239 to i8*
  %633 = load i64, i64* %PC.i237
  %634 = add i64 %633, 3
  store i64 %634, i64* %PC.i237
  %635 = bitcast i8* %631 to i64*
  %636 = load i64, i64* %635, align 1
  %637 = getelementptr inbounds i8, i8* %631, i64 8
  %638 = bitcast i8* %637 to i64*
  %639 = load i64, i64* %638, align 1
  %640 = bitcast i8* %632 to i64*
  %641 = load i64, i64* %640, align 1
  %642 = getelementptr inbounds i8, i8* %632, i64 8
  %643 = bitcast i8* %642 to i64*
  %644 = load i64, i64* %643, align 1
  %645 = xor i64 %641, %636
  %646 = xor i64 %644, %639
  %647 = trunc i64 %645 to i32
  %648 = lshr i64 %645, 32
  %649 = trunc i64 %648 to i32
  %650 = bitcast i8* %630 to i32*
  store i32 %647, i32* %650, align 1
  %651 = getelementptr inbounds i8, i8* %630, i64 4
  %652 = bitcast i8* %651 to i32*
  store i32 %649, i32* %652, align 1
  %653 = trunc i64 %646 to i32
  %654 = getelementptr inbounds i8, i8* %630, i64 8
  %655 = bitcast i8* %654 to i32*
  store i32 %653, i32* %655, align 1
  %656 = lshr i64 %646, 32
  %657 = trunc i64 %656 to i32
  %658 = getelementptr inbounds i8, i8* %630, i64 12
  %659 = bitcast i8* %658 to i32*
  store i32 %657, i32* %659, align 1
  store %struct.Memory* %loadMem_44495b, %struct.Memory** %MEMORY
  %loadMem_44495e = load %struct.Memory*, %struct.Memory** %MEMORY
  %660 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %661 = getelementptr inbounds %struct.GPR, %struct.GPR* %660, i32 0, i32 33
  %662 = getelementptr inbounds %struct.Reg, %struct.Reg* %661, i32 0, i32 0
  %PC.i234 = bitcast %union.anon* %662 to i64*
  %663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %664 = getelementptr inbounds %struct.GPR, %struct.GPR* %663, i32 0, i32 15
  %665 = getelementptr inbounds %struct.Reg, %struct.Reg* %664, i32 0, i32 0
  %RBP.i235 = bitcast %union.anon* %665 to i64*
  %666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %667 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %666, i64 0, i64 1
  %YMM1.i236 = bitcast %union.VectorReg* %667 to %"class.std::bitset"*
  %668 = bitcast %"class.std::bitset"* %YMM1.i236 to i8*
  %669 = load i64, i64* %RBP.i235
  %670 = sub i64 %669, 20
  %671 = load i64, i64* %PC.i234
  %672 = add i64 %671, 5
  store i64 %672, i64* %PC.i234
  %673 = bitcast i8* %668 to <2 x i32>*
  %674 = load <2 x i32>, <2 x i32>* %673, align 1
  %675 = getelementptr inbounds i8, i8* %668, i64 8
  %676 = bitcast i8* %675 to <2 x i32>*
  %677 = load <2 x i32>, <2 x i32>* %676, align 1
  %678 = inttoptr i64 %670 to i32*
  %679 = load i32, i32* %678
  %680 = sitofp i32 %679 to float
  %681 = bitcast i8* %668 to float*
  store float %680, float* %681, align 1
  %682 = extractelement <2 x i32> %674, i32 1
  %683 = getelementptr inbounds i8, i8* %668, i64 4
  %684 = bitcast i8* %683 to i32*
  store i32 %682, i32* %684, align 1
  %685 = extractelement <2 x i32> %677, i32 0
  %686 = bitcast i8* %675 to i32*
  store i32 %685, i32* %686, align 1
  %687 = extractelement <2 x i32> %677, i32 1
  %688 = getelementptr inbounds i8, i8* %668, i64 12
  %689 = bitcast i8* %688 to i32*
  store i32 %687, i32* %689, align 1
  store %struct.Memory* %loadMem_44495e, %struct.Memory** %MEMORY
  %loadMem_444963 = load %struct.Memory*, %struct.Memory** %MEMORY
  %690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %691 = getelementptr inbounds %struct.GPR, %struct.GPR* %690, i32 0, i32 33
  %692 = getelementptr inbounds %struct.Reg, %struct.Reg* %691, i32 0, i32 0
  %PC.i231 = bitcast %union.anon* %692 to i64*
  %693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %694 = getelementptr inbounds %struct.GPR, %struct.GPR* %693, i32 0, i32 15
  %695 = getelementptr inbounds %struct.Reg, %struct.Reg* %694, i32 0, i32 0
  %RBP.i232 = bitcast %union.anon* %695 to i64*
  %696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %697 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %696, i64 0, i64 2
  %YMM2.i233 = bitcast %union.VectorReg* %697 to %"class.std::bitset"*
  %698 = bitcast %"class.std::bitset"* %YMM2.i233 to i8*
  %699 = load i64, i64* %RBP.i232
  %700 = sub i64 %699, 52
  %701 = load i64, i64* %PC.i231
  %702 = add i64 %701, 5
  store i64 %702, i64* %PC.i231
  %703 = inttoptr i64 %700 to float*
  %704 = load float, float* %703
  %705 = bitcast i8* %698 to float*
  store float %704, float* %705, align 1
  %706 = getelementptr inbounds i8, i8* %698, i64 4
  %707 = bitcast i8* %706 to float*
  store float 0.000000e+00, float* %707, align 1
  %708 = getelementptr inbounds i8, i8* %698, i64 8
  %709 = bitcast i8* %708 to float*
  store float 0.000000e+00, float* %709, align 1
  %710 = getelementptr inbounds i8, i8* %698, i64 12
  %711 = bitcast i8* %710 to float*
  store float 0.000000e+00, float* %711, align 1
  store %struct.Memory* %loadMem_444963, %struct.Memory** %MEMORY
  %loadMem_444968 = load %struct.Memory*, %struct.Memory** %MEMORY
  %712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %713 = getelementptr inbounds %struct.GPR, %struct.GPR* %712, i32 0, i32 33
  %714 = getelementptr inbounds %struct.Reg, %struct.Reg* %713, i32 0, i32 0
  %PC.i228 = bitcast %union.anon* %714 to i64*
  %715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %716 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %715, i64 0, i64 2
  %YMM2.i229 = bitcast %union.VectorReg* %716 to %"class.std::bitset"*
  %717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %718 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %717, i64 0, i64 1
  %XMM1.i230 = bitcast %union.VectorReg* %718 to %union.vec128_t*
  %719 = bitcast %"class.std::bitset"* %YMM2.i229 to i8*
  %720 = bitcast %"class.std::bitset"* %YMM2.i229 to i8*
  %721 = bitcast %union.vec128_t* %XMM1.i230 to i8*
  %722 = load i64, i64* %PC.i228
  %723 = add i64 %722, 4
  store i64 %723, i64* %PC.i228
  %724 = bitcast i8* %720 to <2 x float>*
  %725 = load <2 x float>, <2 x float>* %724, align 1
  %726 = getelementptr inbounds i8, i8* %720, i64 8
  %727 = bitcast i8* %726 to <2 x i32>*
  %728 = load <2 x i32>, <2 x i32>* %727, align 1
  %729 = bitcast i8* %721 to <2 x float>*
  %730 = load <2 x float>, <2 x float>* %729, align 1
  %731 = extractelement <2 x float> %725, i32 0
  %732 = extractelement <2 x float> %730, i32 0
  %733 = fdiv float %731, %732
  %734 = bitcast i8* %719 to float*
  store float %733, float* %734, align 1
  %735 = bitcast <2 x float> %725 to <2 x i32>
  %736 = extractelement <2 x i32> %735, i32 1
  %737 = getelementptr inbounds i8, i8* %719, i64 4
  %738 = bitcast i8* %737 to i32*
  store i32 %736, i32* %738, align 1
  %739 = extractelement <2 x i32> %728, i32 0
  %740 = getelementptr inbounds i8, i8* %719, i64 8
  %741 = bitcast i8* %740 to i32*
  store i32 %739, i32* %741, align 1
  %742 = extractelement <2 x i32> %728, i32 1
  %743 = getelementptr inbounds i8, i8* %719, i64 12
  %744 = bitcast i8* %743 to i32*
  store i32 %742, i32* %744, align 1
  store %struct.Memory* %loadMem_444968, %struct.Memory** %MEMORY
  %loadMem_44496c = load %struct.Memory*, %struct.Memory** %MEMORY
  %745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %746 = getelementptr inbounds %struct.GPR, %struct.GPR* %745, i32 0, i32 33
  %747 = getelementptr inbounds %struct.Reg, %struct.Reg* %746, i32 0, i32 0
  %PC.i225 = bitcast %union.anon* %747 to i64*
  %748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %749 = getelementptr inbounds %struct.GPR, %struct.GPR* %748, i32 0, i32 15
  %750 = getelementptr inbounds %struct.Reg, %struct.Reg* %749, i32 0, i32 0
  %RBP.i226 = bitcast %union.anon* %750 to i64*
  %751 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %752 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %751, i64 0, i64 2
  %XMM2.i227 = bitcast %union.VectorReg* %752 to %union.vec128_t*
  %753 = load i64, i64* %RBP.i226
  %754 = sub i64 %753, 52
  %755 = bitcast %union.vec128_t* %XMM2.i227 to i8*
  %756 = load i64, i64* %PC.i225
  %757 = add i64 %756, 5
  store i64 %757, i64* %PC.i225
  %758 = bitcast i8* %755 to <2 x float>*
  %759 = load <2 x float>, <2 x float>* %758, align 1
  %760 = extractelement <2 x float> %759, i32 0
  %761 = inttoptr i64 %754 to float*
  store float %760, float* %761
  store %struct.Memory* %loadMem_44496c, %struct.Memory** %MEMORY
  %loadMem_444971 = load %struct.Memory*, %struct.Memory** %MEMORY
  %762 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %763 = getelementptr inbounds %struct.GPR, %struct.GPR* %762, i32 0, i32 33
  %764 = getelementptr inbounds %struct.Reg, %struct.Reg* %763, i32 0, i32 0
  %PC.i222 = bitcast %union.anon* %764 to i64*
  %765 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %766 = getelementptr inbounds %struct.GPR, %struct.GPR* %765, i32 0, i32 15
  %767 = getelementptr inbounds %struct.Reg, %struct.Reg* %766, i32 0, i32 0
  %RBP.i223 = bitcast %union.anon* %767 to i64*
  %768 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %769 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %768, i64 0, i64 1
  %YMM1.i224 = bitcast %union.VectorReg* %769 to %"class.std::bitset"*
  %770 = bitcast %"class.std::bitset"* %YMM1.i224 to i8*
  %771 = load i64, i64* %RBP.i223
  %772 = sub i64 %771, 20
  %773 = load i64, i64* %PC.i222
  %774 = add i64 %773, 5
  store i64 %774, i64* %PC.i222
  %775 = bitcast i8* %770 to <2 x i32>*
  %776 = load <2 x i32>, <2 x i32>* %775, align 1
  %777 = getelementptr inbounds i8, i8* %770, i64 8
  %778 = bitcast i8* %777 to <2 x i32>*
  %779 = load <2 x i32>, <2 x i32>* %778, align 1
  %780 = inttoptr i64 %772 to i32*
  %781 = load i32, i32* %780
  %782 = sitofp i32 %781 to float
  %783 = bitcast i8* %770 to float*
  store float %782, float* %783, align 1
  %784 = extractelement <2 x i32> %776, i32 1
  %785 = getelementptr inbounds i8, i8* %770, i64 4
  %786 = bitcast i8* %785 to i32*
  store i32 %784, i32* %786, align 1
  %787 = extractelement <2 x i32> %779, i32 0
  %788 = bitcast i8* %777 to i32*
  store i32 %787, i32* %788, align 1
  %789 = extractelement <2 x i32> %779, i32 1
  %790 = getelementptr inbounds i8, i8* %770, i64 12
  %791 = bitcast i8* %790 to i32*
  store i32 %789, i32* %791, align 1
  store %struct.Memory* %loadMem_444971, %struct.Memory** %MEMORY
  %loadMem_444976 = load %struct.Memory*, %struct.Memory** %MEMORY
  %792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %793 = getelementptr inbounds %struct.GPR, %struct.GPR* %792, i32 0, i32 33
  %794 = getelementptr inbounds %struct.Reg, %struct.Reg* %793, i32 0, i32 0
  %PC.i219 = bitcast %union.anon* %794 to i64*
  %795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %796 = getelementptr inbounds %struct.GPR, %struct.GPR* %795, i32 0, i32 15
  %797 = getelementptr inbounds %struct.Reg, %struct.Reg* %796, i32 0, i32 0
  %RBP.i220 = bitcast %union.anon* %797 to i64*
  %798 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %799 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %798, i64 0, i64 2
  %YMM2.i221 = bitcast %union.VectorReg* %799 to %"class.std::bitset"*
  %800 = bitcast %"class.std::bitset"* %YMM2.i221 to i8*
  %801 = load i64, i64* %RBP.i220
  %802 = sub i64 %801, 56
  %803 = load i64, i64* %PC.i219
  %804 = add i64 %803, 5
  store i64 %804, i64* %PC.i219
  %805 = inttoptr i64 %802 to float*
  %806 = load float, float* %805
  %807 = bitcast i8* %800 to float*
  store float %806, float* %807, align 1
  %808 = getelementptr inbounds i8, i8* %800, i64 4
  %809 = bitcast i8* %808 to float*
  store float 0.000000e+00, float* %809, align 1
  %810 = getelementptr inbounds i8, i8* %800, i64 8
  %811 = bitcast i8* %810 to float*
  store float 0.000000e+00, float* %811, align 1
  %812 = getelementptr inbounds i8, i8* %800, i64 12
  %813 = bitcast i8* %812 to float*
  store float 0.000000e+00, float* %813, align 1
  store %struct.Memory* %loadMem_444976, %struct.Memory** %MEMORY
  %loadMem_44497b = load %struct.Memory*, %struct.Memory** %MEMORY
  %814 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %815 = getelementptr inbounds %struct.GPR, %struct.GPR* %814, i32 0, i32 33
  %816 = getelementptr inbounds %struct.Reg, %struct.Reg* %815, i32 0, i32 0
  %PC.i217 = bitcast %union.anon* %816 to i64*
  %817 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %818 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %817, i64 0, i64 2
  %YMM2.i = bitcast %union.VectorReg* %818 to %"class.std::bitset"*
  %819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %820 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %819, i64 0, i64 1
  %XMM1.i218 = bitcast %union.VectorReg* %820 to %union.vec128_t*
  %821 = bitcast %"class.std::bitset"* %YMM2.i to i8*
  %822 = bitcast %"class.std::bitset"* %YMM2.i to i8*
  %823 = bitcast %union.vec128_t* %XMM1.i218 to i8*
  %824 = load i64, i64* %PC.i217
  %825 = add i64 %824, 4
  store i64 %825, i64* %PC.i217
  %826 = bitcast i8* %822 to <2 x float>*
  %827 = load <2 x float>, <2 x float>* %826, align 1
  %828 = getelementptr inbounds i8, i8* %822, i64 8
  %829 = bitcast i8* %828 to <2 x i32>*
  %830 = load <2 x i32>, <2 x i32>* %829, align 1
  %831 = bitcast i8* %823 to <2 x float>*
  %832 = load <2 x float>, <2 x float>* %831, align 1
  %833 = extractelement <2 x float> %827, i32 0
  %834 = extractelement <2 x float> %832, i32 0
  %835 = fdiv float %833, %834
  %836 = bitcast i8* %821 to float*
  store float %835, float* %836, align 1
  %837 = bitcast <2 x float> %827 to <2 x i32>
  %838 = extractelement <2 x i32> %837, i32 1
  %839 = getelementptr inbounds i8, i8* %821, i64 4
  %840 = bitcast i8* %839 to i32*
  store i32 %838, i32* %840, align 1
  %841 = extractelement <2 x i32> %830, i32 0
  %842 = getelementptr inbounds i8, i8* %821, i64 8
  %843 = bitcast i8* %842 to i32*
  store i32 %841, i32* %843, align 1
  %844 = extractelement <2 x i32> %830, i32 1
  %845 = getelementptr inbounds i8, i8* %821, i64 12
  %846 = bitcast i8* %845 to i32*
  store i32 %844, i32* %846, align 1
  store %struct.Memory* %loadMem_44497b, %struct.Memory** %MEMORY
  %loadMem_44497f = load %struct.Memory*, %struct.Memory** %MEMORY
  %847 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %848 = getelementptr inbounds %struct.GPR, %struct.GPR* %847, i32 0, i32 33
  %849 = getelementptr inbounds %struct.Reg, %struct.Reg* %848, i32 0, i32 0
  %PC.i215 = bitcast %union.anon* %849 to i64*
  %850 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %851 = getelementptr inbounds %struct.GPR, %struct.GPR* %850, i32 0, i32 15
  %852 = getelementptr inbounds %struct.Reg, %struct.Reg* %851, i32 0, i32 0
  %RBP.i216 = bitcast %union.anon* %852 to i64*
  %853 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %854 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %853, i64 0, i64 2
  %XMM2.i = bitcast %union.VectorReg* %854 to %union.vec128_t*
  %855 = load i64, i64* %RBP.i216
  %856 = sub i64 %855, 56
  %857 = bitcast %union.vec128_t* %XMM2.i to i8*
  %858 = load i64, i64* %PC.i215
  %859 = add i64 %858, 5
  store i64 %859, i64* %PC.i215
  %860 = bitcast i8* %857 to <2 x float>*
  %861 = load <2 x float>, <2 x float>* %860, align 1
  %862 = extractelement <2 x float> %861, i32 0
  %863 = inttoptr i64 %856 to float*
  store float %862, float* %863
  store %struct.Memory* %loadMem_44497f, %struct.Memory** %MEMORY
  %loadMem_444984 = load %struct.Memory*, %struct.Memory** %MEMORY
  %864 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %865 = getelementptr inbounds %struct.GPR, %struct.GPR* %864, i32 0, i32 33
  %866 = getelementptr inbounds %struct.Reg, %struct.Reg* %865, i32 0, i32 0
  %PC.i212 = bitcast %union.anon* %866 to i64*
  %867 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %868 = getelementptr inbounds %struct.GPR, %struct.GPR* %867, i32 0, i32 15
  %869 = getelementptr inbounds %struct.Reg, %struct.Reg* %868, i32 0, i32 0
  %RBP.i213 = bitcast %union.anon* %869 to i64*
  %870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %871 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %870, i64 0, i64 0
  %XMM0.i214 = bitcast %union.VectorReg* %871 to %union.vec128_t*
  %872 = load i64, i64* %RBP.i213
  %873 = sub i64 %872, 68
  %874 = bitcast %union.vec128_t* %XMM0.i214 to i8*
  %875 = load i64, i64* %PC.i212
  %876 = add i64 %875, 5
  store i64 %876, i64* %PC.i212
  %877 = bitcast i8* %874 to <2 x float>*
  %878 = load <2 x float>, <2 x float>* %877, align 1
  %879 = extractelement <2 x float> %878, i32 0
  %880 = inttoptr i64 %873 to float*
  store float %879, float* %880
  store %struct.Memory* %loadMem_444984, %struct.Memory** %MEMORY
  %loadMem_444989 = load %struct.Memory*, %struct.Memory** %MEMORY
  %881 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %882 = getelementptr inbounds %struct.GPR, %struct.GPR* %881, i32 0, i32 33
  %883 = getelementptr inbounds %struct.Reg, %struct.Reg* %882, i32 0, i32 0
  %PC.i209 = bitcast %union.anon* %883 to i64*
  %884 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %885 = getelementptr inbounds %struct.GPR, %struct.GPR* %884, i32 0, i32 15
  %886 = getelementptr inbounds %struct.Reg, %struct.Reg* %885, i32 0, i32 0
  %RBP.i210 = bitcast %union.anon* %886 to i64*
  %887 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %888 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %887, i64 0, i64 0
  %XMM0.i211 = bitcast %union.VectorReg* %888 to %union.vec128_t*
  %889 = load i64, i64* %RBP.i210
  %890 = sub i64 %889, 64
  %891 = bitcast %union.vec128_t* %XMM0.i211 to i8*
  %892 = load i64, i64* %PC.i209
  %893 = add i64 %892, 5
  store i64 %893, i64* %PC.i209
  %894 = bitcast i8* %891 to <2 x float>*
  %895 = load <2 x float>, <2 x float>* %894, align 1
  %896 = extractelement <2 x float> %895, i32 0
  %897 = inttoptr i64 %890 to float*
  store float %896, float* %897
  store %struct.Memory* %loadMem_444989, %struct.Memory** %MEMORY
  %loadMem_44498e = load %struct.Memory*, %struct.Memory** %MEMORY
  %898 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %899 = getelementptr inbounds %struct.GPR, %struct.GPR* %898, i32 0, i32 33
  %900 = getelementptr inbounds %struct.Reg, %struct.Reg* %899, i32 0, i32 0
  %PC.i206 = bitcast %union.anon* %900 to i64*
  %901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %902 = getelementptr inbounds %struct.GPR, %struct.GPR* %901, i32 0, i32 15
  %903 = getelementptr inbounds %struct.Reg, %struct.Reg* %902, i32 0, i32 0
  %RBP.i207 = bitcast %union.anon* %903 to i64*
  %904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %905 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %904, i64 0, i64 0
  %XMM0.i208 = bitcast %union.VectorReg* %905 to %union.vec128_t*
  %906 = load i64, i64* %RBP.i207
  %907 = sub i64 %906, 60
  %908 = bitcast %union.vec128_t* %XMM0.i208 to i8*
  %909 = load i64, i64* %PC.i206
  %910 = add i64 %909, 5
  store i64 %910, i64* %PC.i206
  %911 = bitcast i8* %908 to <2 x float>*
  %912 = load <2 x float>, <2 x float>* %911, align 1
  %913 = extractelement <2 x float> %912, i32 0
  %914 = inttoptr i64 %907 to float*
  store float %913, float* %914
  store %struct.Memory* %loadMem_44498e, %struct.Memory** %MEMORY
  %loadMem_444993 = load %struct.Memory*, %struct.Memory** %MEMORY
  %915 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %916 = getelementptr inbounds %struct.GPR, %struct.GPR* %915, i32 0, i32 33
  %917 = getelementptr inbounds %struct.Reg, %struct.Reg* %916, i32 0, i32 0
  %PC.i204 = bitcast %union.anon* %917 to i64*
  %918 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %919 = getelementptr inbounds %struct.GPR, %struct.GPR* %918, i32 0, i32 15
  %920 = getelementptr inbounds %struct.Reg, %struct.Reg* %919, i32 0, i32 0
  %RBP.i205 = bitcast %union.anon* %920 to i64*
  %921 = load i64, i64* %RBP.i205
  %922 = sub i64 %921, 72
  %923 = load i64, i64* %PC.i204
  %924 = add i64 %923, 7
  store i64 %924, i64* %PC.i204
  %925 = inttoptr i64 %922 to i32*
  store i32 0, i32* %925
  store %struct.Memory* %loadMem_444993, %struct.Memory** %MEMORY
  br label %block_.L_44499a

block_.L_44499a:                                  ; preds = %block_4449a6, %block_.L_44495b
  %loadMem_44499a = load %struct.Memory*, %struct.Memory** %MEMORY
  %926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %927 = getelementptr inbounds %struct.GPR, %struct.GPR* %926, i32 0, i32 33
  %928 = getelementptr inbounds %struct.Reg, %struct.Reg* %927, i32 0, i32 0
  %PC.i201 = bitcast %union.anon* %928 to i64*
  %929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %930 = getelementptr inbounds %struct.GPR, %struct.GPR* %929, i32 0, i32 1
  %931 = getelementptr inbounds %struct.Reg, %struct.Reg* %930, i32 0, i32 0
  %RAX.i202 = bitcast %union.anon* %931 to i64*
  %932 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %933 = getelementptr inbounds %struct.GPR, %struct.GPR* %932, i32 0, i32 15
  %934 = getelementptr inbounds %struct.Reg, %struct.Reg* %933, i32 0, i32 0
  %RBP.i203 = bitcast %union.anon* %934 to i64*
  %935 = load i64, i64* %RBP.i203
  %936 = sub i64 %935, 72
  %937 = load i64, i64* %PC.i201
  %938 = add i64 %937, 3
  store i64 %938, i64* %PC.i201
  %939 = inttoptr i64 %936 to i32*
  %940 = load i32, i32* %939
  %941 = zext i32 %940 to i64
  store i64 %941, i64* %RAX.i202, align 8
  store %struct.Memory* %loadMem_44499a, %struct.Memory** %MEMORY
  %loadMem_44499d = load %struct.Memory*, %struct.Memory** %MEMORY
  %942 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %943 = getelementptr inbounds %struct.GPR, %struct.GPR* %942, i32 0, i32 33
  %944 = getelementptr inbounds %struct.Reg, %struct.Reg* %943, i32 0, i32 0
  %PC.i198 = bitcast %union.anon* %944 to i64*
  %945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %946 = getelementptr inbounds %struct.GPR, %struct.GPR* %945, i32 0, i32 1
  %947 = getelementptr inbounds %struct.Reg, %struct.Reg* %946, i32 0, i32 0
  %EAX.i199 = bitcast %union.anon* %947 to i32*
  %948 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %949 = getelementptr inbounds %struct.GPR, %struct.GPR* %948, i32 0, i32 15
  %950 = getelementptr inbounds %struct.Reg, %struct.Reg* %949, i32 0, i32 0
  %RBP.i200 = bitcast %union.anon* %950 to i64*
  %951 = load i32, i32* %EAX.i199
  %952 = zext i32 %951 to i64
  %953 = load i64, i64* %RBP.i200
  %954 = sub i64 %953, 20
  %955 = load i64, i64* %PC.i198
  %956 = add i64 %955, 3
  store i64 %956, i64* %PC.i198
  %957 = inttoptr i64 %954 to i32*
  %958 = load i32, i32* %957
  %959 = sub i32 %951, %958
  %960 = icmp ult i32 %951, %958
  %961 = zext i1 %960 to i8
  %962 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %961, i8* %962, align 1
  %963 = and i32 %959, 255
  %964 = call i32 @llvm.ctpop.i32(i32 %963)
  %965 = trunc i32 %964 to i8
  %966 = and i8 %965, 1
  %967 = xor i8 %966, 1
  %968 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %967, i8* %968, align 1
  %969 = xor i32 %958, %951
  %970 = xor i32 %969, %959
  %971 = lshr i32 %970, 4
  %972 = trunc i32 %971 to i8
  %973 = and i8 %972, 1
  %974 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %973, i8* %974, align 1
  %975 = icmp eq i32 %959, 0
  %976 = zext i1 %975 to i8
  %977 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %976, i8* %977, align 1
  %978 = lshr i32 %959, 31
  %979 = trunc i32 %978 to i8
  %980 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %979, i8* %980, align 1
  %981 = lshr i32 %951, 31
  %982 = lshr i32 %958, 31
  %983 = xor i32 %982, %981
  %984 = xor i32 %978, %981
  %985 = add i32 %984, %983
  %986 = icmp eq i32 %985, 2
  %987 = zext i1 %986 to i8
  %988 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %987, i8* %988, align 1
  store %struct.Memory* %loadMem_44499d, %struct.Memory** %MEMORY
  %loadMem_4449a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %990 = getelementptr inbounds %struct.GPR, %struct.GPR* %989, i32 0, i32 33
  %991 = getelementptr inbounds %struct.Reg, %struct.Reg* %990, i32 0, i32 0
  %PC.i197 = bitcast %union.anon* %991 to i64*
  %992 = load i64, i64* %PC.i197
  %993 = add i64 %992, 170
  %994 = load i64, i64* %PC.i197
  %995 = add i64 %994, 6
  %996 = load i64, i64* %PC.i197
  %997 = add i64 %996, 6
  store i64 %997, i64* %PC.i197
  %998 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %999 = load i8, i8* %998, align 1
  %1000 = icmp ne i8 %999, 0
  %1001 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1002 = load i8, i8* %1001, align 1
  %1003 = icmp ne i8 %1002, 0
  %1004 = xor i1 %1000, %1003
  %1005 = xor i1 %1004, true
  %1006 = zext i1 %1005 to i8
  store i8 %1006, i8* %BRANCH_TAKEN, align 1
  %1007 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1008 = select i1 %1004, i64 %995, i64 %993
  store i64 %1008, i64* %1007, align 8
  store %struct.Memory* %loadMem_4449a0, %struct.Memory** %MEMORY
  %loadBr_4449a0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4449a0 = icmp eq i8 %loadBr_4449a0, 1
  br i1 %cmpBr_4449a0, label %block_.L_444a4a, label %block_4449a6

block_4449a6:                                     ; preds = %block_.L_44499a
  %loadMem_4449a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1009 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1010 = getelementptr inbounds %struct.GPR, %struct.GPR* %1009, i32 0, i32 33
  %1011 = getelementptr inbounds %struct.Reg, %struct.Reg* %1010, i32 0, i32 0
  %PC.i194 = bitcast %union.anon* %1011 to i64*
  %1012 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1013 = getelementptr inbounds %struct.GPR, %struct.GPR* %1012, i32 0, i32 1
  %1014 = getelementptr inbounds %struct.Reg, %struct.Reg* %1013, i32 0, i32 0
  %RAX.i195 = bitcast %union.anon* %1014 to i64*
  %1015 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1016 = getelementptr inbounds %struct.GPR, %struct.GPR* %1015, i32 0, i32 15
  %1017 = getelementptr inbounds %struct.Reg, %struct.Reg* %1016, i32 0, i32 0
  %RBP.i196 = bitcast %union.anon* %1017 to i64*
  %1018 = load i64, i64* %RBP.i196
  %1019 = sub i64 %1018, 8
  %1020 = load i64, i64* %PC.i194
  %1021 = add i64 %1020, 4
  store i64 %1021, i64* %PC.i194
  %1022 = inttoptr i64 %1019 to i64*
  %1023 = load i64, i64* %1022
  store i64 %1023, i64* %RAX.i195, align 8
  store %struct.Memory* %loadMem_4449a6, %struct.Memory** %MEMORY
  %loadMem_4449aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %1024 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1025 = getelementptr inbounds %struct.GPR, %struct.GPR* %1024, i32 0, i32 33
  %1026 = getelementptr inbounds %struct.Reg, %struct.Reg* %1025, i32 0, i32 0
  %PC.i191 = bitcast %union.anon* %1026 to i64*
  %1027 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1028 = getelementptr inbounds %struct.GPR, %struct.GPR* %1027, i32 0, i32 5
  %1029 = getelementptr inbounds %struct.Reg, %struct.Reg* %1028, i32 0, i32 0
  %RCX.i192 = bitcast %union.anon* %1029 to i64*
  %1030 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1031 = getelementptr inbounds %struct.GPR, %struct.GPR* %1030, i32 0, i32 15
  %1032 = getelementptr inbounds %struct.Reg, %struct.Reg* %1031, i32 0, i32 0
  %RBP.i193 = bitcast %union.anon* %1032 to i64*
  %1033 = load i64, i64* %RBP.i193
  %1034 = sub i64 %1033, 72
  %1035 = load i64, i64* %PC.i191
  %1036 = add i64 %1035, 4
  store i64 %1036, i64* %PC.i191
  %1037 = inttoptr i64 %1034 to i32*
  %1038 = load i32, i32* %1037
  %1039 = sext i32 %1038 to i64
  store i64 %1039, i64* %RCX.i192, align 8
  store %struct.Memory* %loadMem_4449aa, %struct.Memory** %MEMORY
  %loadMem_4449ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %1040 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1041 = getelementptr inbounds %struct.GPR, %struct.GPR* %1040, i32 0, i32 33
  %1042 = getelementptr inbounds %struct.Reg, %struct.Reg* %1041, i32 0, i32 0
  %PC.i187 = bitcast %union.anon* %1042 to i64*
  %1043 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1044 = getelementptr inbounds %struct.GPR, %struct.GPR* %1043, i32 0, i32 1
  %1045 = getelementptr inbounds %struct.Reg, %struct.Reg* %1044, i32 0, i32 0
  %RAX.i188 = bitcast %union.anon* %1045 to i64*
  %1046 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1047 = getelementptr inbounds %struct.GPR, %struct.GPR* %1046, i32 0, i32 5
  %1048 = getelementptr inbounds %struct.Reg, %struct.Reg* %1047, i32 0, i32 0
  %RCX.i189 = bitcast %union.anon* %1048 to i64*
  %1049 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1050 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1049, i64 0, i64 0
  %YMM0.i190 = bitcast %union.VectorReg* %1050 to %"class.std::bitset"*
  %1051 = bitcast %"class.std::bitset"* %YMM0.i190 to i8*
  %1052 = load i64, i64* %RAX.i188
  %1053 = load i64, i64* %RCX.i189
  %1054 = mul i64 %1053, 4
  %1055 = add i64 %1054, %1052
  %1056 = load i64, i64* %PC.i187
  %1057 = add i64 %1056, 5
  store i64 %1057, i64* %PC.i187
  %1058 = inttoptr i64 %1055 to float*
  %1059 = load float, float* %1058
  %1060 = bitcast i8* %1051 to float*
  store float %1059, float* %1060, align 1
  %1061 = getelementptr inbounds i8, i8* %1051, i64 4
  %1062 = bitcast i8* %1061 to float*
  store float 0.000000e+00, float* %1062, align 1
  %1063 = getelementptr inbounds i8, i8* %1051, i64 8
  %1064 = bitcast i8* %1063 to float*
  store float 0.000000e+00, float* %1064, align 1
  %1065 = getelementptr inbounds i8, i8* %1051, i64 12
  %1066 = bitcast i8* %1065 to float*
  store float 0.000000e+00, float* %1066, align 1
  store %struct.Memory* %loadMem_4449ae, %struct.Memory** %MEMORY
  %loadMem_4449b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1068 = getelementptr inbounds %struct.GPR, %struct.GPR* %1067, i32 0, i32 33
  %1069 = getelementptr inbounds %struct.Reg, %struct.Reg* %1068, i32 0, i32 0
  %PC.i184 = bitcast %union.anon* %1069 to i64*
  %1070 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1071 = getelementptr inbounds %struct.GPR, %struct.GPR* %1070, i32 0, i32 15
  %1072 = getelementptr inbounds %struct.Reg, %struct.Reg* %1071, i32 0, i32 0
  %RBP.i185 = bitcast %union.anon* %1072 to i64*
  %1073 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1074 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1073, i64 0, i64 0
  %YMM0.i186 = bitcast %union.VectorReg* %1074 to %"class.std::bitset"*
  %1075 = bitcast %"class.std::bitset"* %YMM0.i186 to i8*
  %1076 = bitcast %"class.std::bitset"* %YMM0.i186 to i8*
  %1077 = load i64, i64* %RBP.i185
  %1078 = sub i64 %1077, 52
  %1079 = load i64, i64* %PC.i184
  %1080 = add i64 %1079, 5
  store i64 %1080, i64* %PC.i184
  %1081 = bitcast i8* %1076 to <2 x float>*
  %1082 = load <2 x float>, <2 x float>* %1081, align 1
  %1083 = getelementptr inbounds i8, i8* %1076, i64 8
  %1084 = bitcast i8* %1083 to <2 x i32>*
  %1085 = load <2 x i32>, <2 x i32>* %1084, align 1
  %1086 = inttoptr i64 %1078 to float*
  %1087 = load float, float* %1086
  %1088 = extractelement <2 x float> %1082, i32 0
  %1089 = fsub float %1088, %1087
  %1090 = bitcast i8* %1075 to float*
  store float %1089, float* %1090, align 1
  %1091 = bitcast <2 x float> %1082 to <2 x i32>
  %1092 = extractelement <2 x i32> %1091, i32 1
  %1093 = getelementptr inbounds i8, i8* %1075, i64 4
  %1094 = bitcast i8* %1093 to i32*
  store i32 %1092, i32* %1094, align 1
  %1095 = extractelement <2 x i32> %1085, i32 0
  %1096 = getelementptr inbounds i8, i8* %1075, i64 8
  %1097 = bitcast i8* %1096 to i32*
  store i32 %1095, i32* %1097, align 1
  %1098 = extractelement <2 x i32> %1085, i32 1
  %1099 = getelementptr inbounds i8, i8* %1075, i64 12
  %1100 = bitcast i8* %1099 to i32*
  store i32 %1098, i32* %1100, align 1
  store %struct.Memory* %loadMem_4449b3, %struct.Memory** %MEMORY
  %loadMem_4449b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1102 = getelementptr inbounds %struct.GPR, %struct.GPR* %1101, i32 0, i32 33
  %1103 = getelementptr inbounds %struct.Reg, %struct.Reg* %1102, i32 0, i32 0
  %PC.i181 = bitcast %union.anon* %1103 to i64*
  %1104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1105 = getelementptr inbounds %struct.GPR, %struct.GPR* %1104, i32 0, i32 1
  %1106 = getelementptr inbounds %struct.Reg, %struct.Reg* %1105, i32 0, i32 0
  %RAX.i182 = bitcast %union.anon* %1106 to i64*
  %1107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1108 = getelementptr inbounds %struct.GPR, %struct.GPR* %1107, i32 0, i32 15
  %1109 = getelementptr inbounds %struct.Reg, %struct.Reg* %1108, i32 0, i32 0
  %RBP.i183 = bitcast %union.anon* %1109 to i64*
  %1110 = load i64, i64* %RBP.i183
  %1111 = sub i64 %1110, 8
  %1112 = load i64, i64* %PC.i181
  %1113 = add i64 %1112, 4
  store i64 %1113, i64* %PC.i181
  %1114 = inttoptr i64 %1111 to i64*
  %1115 = load i64, i64* %1114
  store i64 %1115, i64* %RAX.i182, align 8
  store %struct.Memory* %loadMem_4449b8, %struct.Memory** %MEMORY
  %loadMem_4449bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1117 = getelementptr inbounds %struct.GPR, %struct.GPR* %1116, i32 0, i32 33
  %1118 = getelementptr inbounds %struct.Reg, %struct.Reg* %1117, i32 0, i32 0
  %PC.i178 = bitcast %union.anon* %1118 to i64*
  %1119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1120 = getelementptr inbounds %struct.GPR, %struct.GPR* %1119, i32 0, i32 5
  %1121 = getelementptr inbounds %struct.Reg, %struct.Reg* %1120, i32 0, i32 0
  %RCX.i179 = bitcast %union.anon* %1121 to i64*
  %1122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1123 = getelementptr inbounds %struct.GPR, %struct.GPR* %1122, i32 0, i32 15
  %1124 = getelementptr inbounds %struct.Reg, %struct.Reg* %1123, i32 0, i32 0
  %RBP.i180 = bitcast %union.anon* %1124 to i64*
  %1125 = load i64, i64* %RBP.i180
  %1126 = sub i64 %1125, 72
  %1127 = load i64, i64* %PC.i178
  %1128 = add i64 %1127, 4
  store i64 %1128, i64* %PC.i178
  %1129 = inttoptr i64 %1126 to i32*
  %1130 = load i32, i32* %1129
  %1131 = sext i32 %1130 to i64
  store i64 %1131, i64* %RCX.i179, align 8
  store %struct.Memory* %loadMem_4449bc, %struct.Memory** %MEMORY
  %loadMem_4449c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1133 = getelementptr inbounds %struct.GPR, %struct.GPR* %1132, i32 0, i32 33
  %1134 = getelementptr inbounds %struct.Reg, %struct.Reg* %1133, i32 0, i32 0
  %PC.i174 = bitcast %union.anon* %1134 to i64*
  %1135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1136 = getelementptr inbounds %struct.GPR, %struct.GPR* %1135, i32 0, i32 1
  %1137 = getelementptr inbounds %struct.Reg, %struct.Reg* %1136, i32 0, i32 0
  %RAX.i175 = bitcast %union.anon* %1137 to i64*
  %1138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1139 = getelementptr inbounds %struct.GPR, %struct.GPR* %1138, i32 0, i32 5
  %1140 = getelementptr inbounds %struct.Reg, %struct.Reg* %1139, i32 0, i32 0
  %RCX.i176 = bitcast %union.anon* %1140 to i64*
  %1141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1142 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1141, i64 0, i64 1
  %YMM1.i177 = bitcast %union.VectorReg* %1142 to %"class.std::bitset"*
  %1143 = bitcast %"class.std::bitset"* %YMM1.i177 to i8*
  %1144 = load i64, i64* %RAX.i175
  %1145 = load i64, i64* %RCX.i176
  %1146 = mul i64 %1145, 4
  %1147 = add i64 %1146, %1144
  %1148 = load i64, i64* %PC.i174
  %1149 = add i64 %1148, 5
  store i64 %1149, i64* %PC.i174
  %1150 = inttoptr i64 %1147 to float*
  %1151 = load float, float* %1150
  %1152 = bitcast i8* %1143 to float*
  store float %1151, float* %1152, align 1
  %1153 = getelementptr inbounds i8, i8* %1143, i64 4
  %1154 = bitcast i8* %1153 to float*
  store float 0.000000e+00, float* %1154, align 1
  %1155 = getelementptr inbounds i8, i8* %1143, i64 8
  %1156 = bitcast i8* %1155 to float*
  store float 0.000000e+00, float* %1156, align 1
  %1157 = getelementptr inbounds i8, i8* %1143, i64 12
  %1158 = bitcast i8* %1157 to float*
  store float 0.000000e+00, float* %1158, align 1
  store %struct.Memory* %loadMem_4449c0, %struct.Memory** %MEMORY
  %loadMem_4449c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1160 = getelementptr inbounds %struct.GPR, %struct.GPR* %1159, i32 0, i32 33
  %1161 = getelementptr inbounds %struct.Reg, %struct.Reg* %1160, i32 0, i32 0
  %PC.i171 = bitcast %union.anon* %1161 to i64*
  %1162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1163 = getelementptr inbounds %struct.GPR, %struct.GPR* %1162, i32 0, i32 15
  %1164 = getelementptr inbounds %struct.Reg, %struct.Reg* %1163, i32 0, i32 0
  %RBP.i172 = bitcast %union.anon* %1164 to i64*
  %1165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1166 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1165, i64 0, i64 1
  %YMM1.i173 = bitcast %union.VectorReg* %1166 to %"class.std::bitset"*
  %1167 = bitcast %"class.std::bitset"* %YMM1.i173 to i8*
  %1168 = bitcast %"class.std::bitset"* %YMM1.i173 to i8*
  %1169 = load i64, i64* %RBP.i172
  %1170 = sub i64 %1169, 52
  %1171 = load i64, i64* %PC.i171
  %1172 = add i64 %1171, 5
  store i64 %1172, i64* %PC.i171
  %1173 = bitcast i8* %1168 to <2 x float>*
  %1174 = load <2 x float>, <2 x float>* %1173, align 1
  %1175 = getelementptr inbounds i8, i8* %1168, i64 8
  %1176 = bitcast i8* %1175 to <2 x i32>*
  %1177 = load <2 x i32>, <2 x i32>* %1176, align 1
  %1178 = inttoptr i64 %1170 to float*
  %1179 = load float, float* %1178
  %1180 = extractelement <2 x float> %1174, i32 0
  %1181 = fsub float %1180, %1179
  %1182 = bitcast i8* %1167 to float*
  store float %1181, float* %1182, align 1
  %1183 = bitcast <2 x float> %1174 to <2 x i32>
  %1184 = extractelement <2 x i32> %1183, i32 1
  %1185 = getelementptr inbounds i8, i8* %1167, i64 4
  %1186 = bitcast i8* %1185 to i32*
  store i32 %1184, i32* %1186, align 1
  %1187 = extractelement <2 x i32> %1177, i32 0
  %1188 = getelementptr inbounds i8, i8* %1167, i64 8
  %1189 = bitcast i8* %1188 to i32*
  store i32 %1187, i32* %1189, align 1
  %1190 = extractelement <2 x i32> %1177, i32 1
  %1191 = getelementptr inbounds i8, i8* %1167, i64 12
  %1192 = bitcast i8* %1191 to i32*
  store i32 %1190, i32* %1192, align 1
  store %struct.Memory* %loadMem_4449c5, %struct.Memory** %MEMORY
  %loadMem_4449ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %1193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1194 = getelementptr inbounds %struct.GPR, %struct.GPR* %1193, i32 0, i32 33
  %1195 = getelementptr inbounds %struct.Reg, %struct.Reg* %1194, i32 0, i32 0
  %PC.i168 = bitcast %union.anon* %1195 to i64*
  %1196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1197 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1196, i64 0, i64 0
  %YMM0.i169 = bitcast %union.VectorReg* %1197 to %"class.std::bitset"*
  %1198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1199 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1198, i64 0, i64 1
  %XMM1.i170 = bitcast %union.VectorReg* %1199 to %union.vec128_t*
  %1200 = bitcast %"class.std::bitset"* %YMM0.i169 to i8*
  %1201 = bitcast %"class.std::bitset"* %YMM0.i169 to i8*
  %1202 = bitcast %union.vec128_t* %XMM1.i170 to i8*
  %1203 = load i64, i64* %PC.i168
  %1204 = add i64 %1203, 4
  store i64 %1204, i64* %PC.i168
  %1205 = bitcast i8* %1201 to <2 x float>*
  %1206 = load <2 x float>, <2 x float>* %1205, align 1
  %1207 = getelementptr inbounds i8, i8* %1201, i64 8
  %1208 = bitcast i8* %1207 to <2 x i32>*
  %1209 = load <2 x i32>, <2 x i32>* %1208, align 1
  %1210 = bitcast i8* %1202 to <2 x float>*
  %1211 = load <2 x float>, <2 x float>* %1210, align 1
  %1212 = extractelement <2 x float> %1206, i32 0
  %1213 = extractelement <2 x float> %1211, i32 0
  %1214 = fmul float %1212, %1213
  %1215 = bitcast i8* %1200 to float*
  store float %1214, float* %1215, align 1
  %1216 = bitcast <2 x float> %1206 to <2 x i32>
  %1217 = extractelement <2 x i32> %1216, i32 1
  %1218 = getelementptr inbounds i8, i8* %1200, i64 4
  %1219 = bitcast i8* %1218 to i32*
  store i32 %1217, i32* %1219, align 1
  %1220 = extractelement <2 x i32> %1209, i32 0
  %1221 = getelementptr inbounds i8, i8* %1200, i64 8
  %1222 = bitcast i8* %1221 to i32*
  store i32 %1220, i32* %1222, align 1
  %1223 = extractelement <2 x i32> %1209, i32 1
  %1224 = getelementptr inbounds i8, i8* %1200, i64 12
  %1225 = bitcast i8* %1224 to i32*
  store i32 %1223, i32* %1225, align 1
  store %struct.Memory* %loadMem_4449ca, %struct.Memory** %MEMORY
  %loadMem_4449ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %1226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1227 = getelementptr inbounds %struct.GPR, %struct.GPR* %1226, i32 0, i32 33
  %1228 = getelementptr inbounds %struct.Reg, %struct.Reg* %1227, i32 0, i32 0
  %PC.i165 = bitcast %union.anon* %1228 to i64*
  %1229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1230 = getelementptr inbounds %struct.GPR, %struct.GPR* %1229, i32 0, i32 15
  %1231 = getelementptr inbounds %struct.Reg, %struct.Reg* %1230, i32 0, i32 0
  %RBP.i166 = bitcast %union.anon* %1231 to i64*
  %1232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1233 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1232, i64 0, i64 0
  %YMM0.i167 = bitcast %union.VectorReg* %1233 to %"class.std::bitset"*
  %1234 = bitcast %"class.std::bitset"* %YMM0.i167 to i8*
  %1235 = bitcast %"class.std::bitset"* %YMM0.i167 to i8*
  %1236 = load i64, i64* %RBP.i166
  %1237 = sub i64 %1236, 60
  %1238 = load i64, i64* %PC.i165
  %1239 = add i64 %1238, 5
  store i64 %1239, i64* %PC.i165
  %1240 = bitcast i8* %1235 to <2 x float>*
  %1241 = load <2 x float>, <2 x float>* %1240, align 1
  %1242 = getelementptr inbounds i8, i8* %1235, i64 8
  %1243 = bitcast i8* %1242 to <2 x i32>*
  %1244 = load <2 x i32>, <2 x i32>* %1243, align 1
  %1245 = inttoptr i64 %1237 to float*
  %1246 = load float, float* %1245
  %1247 = extractelement <2 x float> %1241, i32 0
  %1248 = fadd float %1247, %1246
  %1249 = bitcast i8* %1234 to float*
  store float %1248, float* %1249, align 1
  %1250 = bitcast <2 x float> %1241 to <2 x i32>
  %1251 = extractelement <2 x i32> %1250, i32 1
  %1252 = getelementptr inbounds i8, i8* %1234, i64 4
  %1253 = bitcast i8* %1252 to i32*
  store i32 %1251, i32* %1253, align 1
  %1254 = extractelement <2 x i32> %1244, i32 0
  %1255 = getelementptr inbounds i8, i8* %1234, i64 8
  %1256 = bitcast i8* %1255 to i32*
  store i32 %1254, i32* %1256, align 1
  %1257 = extractelement <2 x i32> %1244, i32 1
  %1258 = getelementptr inbounds i8, i8* %1234, i64 12
  %1259 = bitcast i8* %1258 to i32*
  store i32 %1257, i32* %1259, align 1
  store %struct.Memory* %loadMem_4449ce, %struct.Memory** %MEMORY
  %loadMem_4449d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1261 = getelementptr inbounds %struct.GPR, %struct.GPR* %1260, i32 0, i32 33
  %1262 = getelementptr inbounds %struct.Reg, %struct.Reg* %1261, i32 0, i32 0
  %PC.i162 = bitcast %union.anon* %1262 to i64*
  %1263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1264 = getelementptr inbounds %struct.GPR, %struct.GPR* %1263, i32 0, i32 15
  %1265 = getelementptr inbounds %struct.Reg, %struct.Reg* %1264, i32 0, i32 0
  %RBP.i163 = bitcast %union.anon* %1265 to i64*
  %1266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1267 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1266, i64 0, i64 0
  %XMM0.i164 = bitcast %union.VectorReg* %1267 to %union.vec128_t*
  %1268 = load i64, i64* %RBP.i163
  %1269 = sub i64 %1268, 60
  %1270 = bitcast %union.vec128_t* %XMM0.i164 to i8*
  %1271 = load i64, i64* %PC.i162
  %1272 = add i64 %1271, 5
  store i64 %1272, i64* %PC.i162
  %1273 = bitcast i8* %1270 to <2 x float>*
  %1274 = load <2 x float>, <2 x float>* %1273, align 1
  %1275 = extractelement <2 x float> %1274, i32 0
  %1276 = inttoptr i64 %1269 to float*
  store float %1275, float* %1276
  store %struct.Memory* %loadMem_4449d3, %struct.Memory** %MEMORY
  %loadMem_4449d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1278 = getelementptr inbounds %struct.GPR, %struct.GPR* %1277, i32 0, i32 33
  %1279 = getelementptr inbounds %struct.Reg, %struct.Reg* %1278, i32 0, i32 0
  %PC.i159 = bitcast %union.anon* %1279 to i64*
  %1280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1281 = getelementptr inbounds %struct.GPR, %struct.GPR* %1280, i32 0, i32 1
  %1282 = getelementptr inbounds %struct.Reg, %struct.Reg* %1281, i32 0, i32 0
  %RAX.i160 = bitcast %union.anon* %1282 to i64*
  %1283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1284 = getelementptr inbounds %struct.GPR, %struct.GPR* %1283, i32 0, i32 15
  %1285 = getelementptr inbounds %struct.Reg, %struct.Reg* %1284, i32 0, i32 0
  %RBP.i161 = bitcast %union.anon* %1285 to i64*
  %1286 = load i64, i64* %RBP.i161
  %1287 = sub i64 %1286, 16
  %1288 = load i64, i64* %PC.i159
  %1289 = add i64 %1288, 4
  store i64 %1289, i64* %PC.i159
  %1290 = inttoptr i64 %1287 to i64*
  %1291 = load i64, i64* %1290
  store i64 %1291, i64* %RAX.i160, align 8
  store %struct.Memory* %loadMem_4449d8, %struct.Memory** %MEMORY
  %loadMem_4449dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1293 = getelementptr inbounds %struct.GPR, %struct.GPR* %1292, i32 0, i32 33
  %1294 = getelementptr inbounds %struct.Reg, %struct.Reg* %1293, i32 0, i32 0
  %PC.i156 = bitcast %union.anon* %1294 to i64*
  %1295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1296 = getelementptr inbounds %struct.GPR, %struct.GPR* %1295, i32 0, i32 5
  %1297 = getelementptr inbounds %struct.Reg, %struct.Reg* %1296, i32 0, i32 0
  %RCX.i157 = bitcast %union.anon* %1297 to i64*
  %1298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1299 = getelementptr inbounds %struct.GPR, %struct.GPR* %1298, i32 0, i32 15
  %1300 = getelementptr inbounds %struct.Reg, %struct.Reg* %1299, i32 0, i32 0
  %RBP.i158 = bitcast %union.anon* %1300 to i64*
  %1301 = load i64, i64* %RBP.i158
  %1302 = sub i64 %1301, 72
  %1303 = load i64, i64* %PC.i156
  %1304 = add i64 %1303, 4
  store i64 %1304, i64* %PC.i156
  %1305 = inttoptr i64 %1302 to i32*
  %1306 = load i32, i32* %1305
  %1307 = sext i32 %1306 to i64
  store i64 %1307, i64* %RCX.i157, align 8
  store %struct.Memory* %loadMem_4449dc, %struct.Memory** %MEMORY
  %loadMem_4449e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1309 = getelementptr inbounds %struct.GPR, %struct.GPR* %1308, i32 0, i32 33
  %1310 = getelementptr inbounds %struct.Reg, %struct.Reg* %1309, i32 0, i32 0
  %PC.i152 = bitcast %union.anon* %1310 to i64*
  %1311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1312 = getelementptr inbounds %struct.GPR, %struct.GPR* %1311, i32 0, i32 1
  %1313 = getelementptr inbounds %struct.Reg, %struct.Reg* %1312, i32 0, i32 0
  %RAX.i153 = bitcast %union.anon* %1313 to i64*
  %1314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1315 = getelementptr inbounds %struct.GPR, %struct.GPR* %1314, i32 0, i32 5
  %1316 = getelementptr inbounds %struct.Reg, %struct.Reg* %1315, i32 0, i32 0
  %RCX.i154 = bitcast %union.anon* %1316 to i64*
  %1317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1318 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1317, i64 0, i64 0
  %YMM0.i155 = bitcast %union.VectorReg* %1318 to %"class.std::bitset"*
  %1319 = bitcast %"class.std::bitset"* %YMM0.i155 to i8*
  %1320 = load i64, i64* %RAX.i153
  %1321 = load i64, i64* %RCX.i154
  %1322 = mul i64 %1321, 4
  %1323 = add i64 %1322, %1320
  %1324 = load i64, i64* %PC.i152
  %1325 = add i64 %1324, 5
  store i64 %1325, i64* %PC.i152
  %1326 = inttoptr i64 %1323 to float*
  %1327 = load float, float* %1326
  %1328 = bitcast i8* %1319 to float*
  store float %1327, float* %1328, align 1
  %1329 = getelementptr inbounds i8, i8* %1319, i64 4
  %1330 = bitcast i8* %1329 to float*
  store float 0.000000e+00, float* %1330, align 1
  %1331 = getelementptr inbounds i8, i8* %1319, i64 8
  %1332 = bitcast i8* %1331 to float*
  store float 0.000000e+00, float* %1332, align 1
  %1333 = getelementptr inbounds i8, i8* %1319, i64 12
  %1334 = bitcast i8* %1333 to float*
  store float 0.000000e+00, float* %1334, align 1
  store %struct.Memory* %loadMem_4449e0, %struct.Memory** %MEMORY
  %loadMem_4449e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1336 = getelementptr inbounds %struct.GPR, %struct.GPR* %1335, i32 0, i32 33
  %1337 = getelementptr inbounds %struct.Reg, %struct.Reg* %1336, i32 0, i32 0
  %PC.i149 = bitcast %union.anon* %1337 to i64*
  %1338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1339 = getelementptr inbounds %struct.GPR, %struct.GPR* %1338, i32 0, i32 15
  %1340 = getelementptr inbounds %struct.Reg, %struct.Reg* %1339, i32 0, i32 0
  %RBP.i150 = bitcast %union.anon* %1340 to i64*
  %1341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1342 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1341, i64 0, i64 0
  %YMM0.i151 = bitcast %union.VectorReg* %1342 to %"class.std::bitset"*
  %1343 = bitcast %"class.std::bitset"* %YMM0.i151 to i8*
  %1344 = bitcast %"class.std::bitset"* %YMM0.i151 to i8*
  %1345 = load i64, i64* %RBP.i150
  %1346 = sub i64 %1345, 56
  %1347 = load i64, i64* %PC.i149
  %1348 = add i64 %1347, 5
  store i64 %1348, i64* %PC.i149
  %1349 = bitcast i8* %1344 to <2 x float>*
  %1350 = load <2 x float>, <2 x float>* %1349, align 1
  %1351 = getelementptr inbounds i8, i8* %1344, i64 8
  %1352 = bitcast i8* %1351 to <2 x i32>*
  %1353 = load <2 x i32>, <2 x i32>* %1352, align 1
  %1354 = inttoptr i64 %1346 to float*
  %1355 = load float, float* %1354
  %1356 = extractelement <2 x float> %1350, i32 0
  %1357 = fsub float %1356, %1355
  %1358 = bitcast i8* %1343 to float*
  store float %1357, float* %1358, align 1
  %1359 = bitcast <2 x float> %1350 to <2 x i32>
  %1360 = extractelement <2 x i32> %1359, i32 1
  %1361 = getelementptr inbounds i8, i8* %1343, i64 4
  %1362 = bitcast i8* %1361 to i32*
  store i32 %1360, i32* %1362, align 1
  %1363 = extractelement <2 x i32> %1353, i32 0
  %1364 = getelementptr inbounds i8, i8* %1343, i64 8
  %1365 = bitcast i8* %1364 to i32*
  store i32 %1363, i32* %1365, align 1
  %1366 = extractelement <2 x i32> %1353, i32 1
  %1367 = getelementptr inbounds i8, i8* %1343, i64 12
  %1368 = bitcast i8* %1367 to i32*
  store i32 %1366, i32* %1368, align 1
  store %struct.Memory* %loadMem_4449e5, %struct.Memory** %MEMORY
  %loadMem_4449ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %1369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1370 = getelementptr inbounds %struct.GPR, %struct.GPR* %1369, i32 0, i32 33
  %1371 = getelementptr inbounds %struct.Reg, %struct.Reg* %1370, i32 0, i32 0
  %PC.i146 = bitcast %union.anon* %1371 to i64*
  %1372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1373 = getelementptr inbounds %struct.GPR, %struct.GPR* %1372, i32 0, i32 1
  %1374 = getelementptr inbounds %struct.Reg, %struct.Reg* %1373, i32 0, i32 0
  %RAX.i147 = bitcast %union.anon* %1374 to i64*
  %1375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1376 = getelementptr inbounds %struct.GPR, %struct.GPR* %1375, i32 0, i32 15
  %1377 = getelementptr inbounds %struct.Reg, %struct.Reg* %1376, i32 0, i32 0
  %RBP.i148 = bitcast %union.anon* %1377 to i64*
  %1378 = load i64, i64* %RBP.i148
  %1379 = sub i64 %1378, 16
  %1380 = load i64, i64* %PC.i146
  %1381 = add i64 %1380, 4
  store i64 %1381, i64* %PC.i146
  %1382 = inttoptr i64 %1379 to i64*
  %1383 = load i64, i64* %1382
  store i64 %1383, i64* %RAX.i147, align 8
  store %struct.Memory* %loadMem_4449ea, %struct.Memory** %MEMORY
  %loadMem_4449ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %1384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1385 = getelementptr inbounds %struct.GPR, %struct.GPR* %1384, i32 0, i32 33
  %1386 = getelementptr inbounds %struct.Reg, %struct.Reg* %1385, i32 0, i32 0
  %PC.i143 = bitcast %union.anon* %1386 to i64*
  %1387 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1388 = getelementptr inbounds %struct.GPR, %struct.GPR* %1387, i32 0, i32 5
  %1389 = getelementptr inbounds %struct.Reg, %struct.Reg* %1388, i32 0, i32 0
  %RCX.i144 = bitcast %union.anon* %1389 to i64*
  %1390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1391 = getelementptr inbounds %struct.GPR, %struct.GPR* %1390, i32 0, i32 15
  %1392 = getelementptr inbounds %struct.Reg, %struct.Reg* %1391, i32 0, i32 0
  %RBP.i145 = bitcast %union.anon* %1392 to i64*
  %1393 = load i64, i64* %RBP.i145
  %1394 = sub i64 %1393, 72
  %1395 = load i64, i64* %PC.i143
  %1396 = add i64 %1395, 4
  store i64 %1396, i64* %PC.i143
  %1397 = inttoptr i64 %1394 to i32*
  %1398 = load i32, i32* %1397
  %1399 = sext i32 %1398 to i64
  store i64 %1399, i64* %RCX.i144, align 8
  store %struct.Memory* %loadMem_4449ee, %struct.Memory** %MEMORY
  %loadMem_4449f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1401 = getelementptr inbounds %struct.GPR, %struct.GPR* %1400, i32 0, i32 33
  %1402 = getelementptr inbounds %struct.Reg, %struct.Reg* %1401, i32 0, i32 0
  %PC.i139 = bitcast %union.anon* %1402 to i64*
  %1403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1404 = getelementptr inbounds %struct.GPR, %struct.GPR* %1403, i32 0, i32 1
  %1405 = getelementptr inbounds %struct.Reg, %struct.Reg* %1404, i32 0, i32 0
  %RAX.i140 = bitcast %union.anon* %1405 to i64*
  %1406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1407 = getelementptr inbounds %struct.GPR, %struct.GPR* %1406, i32 0, i32 5
  %1408 = getelementptr inbounds %struct.Reg, %struct.Reg* %1407, i32 0, i32 0
  %RCX.i141 = bitcast %union.anon* %1408 to i64*
  %1409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1410 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1409, i64 0, i64 1
  %YMM1.i142 = bitcast %union.VectorReg* %1410 to %"class.std::bitset"*
  %1411 = bitcast %"class.std::bitset"* %YMM1.i142 to i8*
  %1412 = load i64, i64* %RAX.i140
  %1413 = load i64, i64* %RCX.i141
  %1414 = mul i64 %1413, 4
  %1415 = add i64 %1414, %1412
  %1416 = load i64, i64* %PC.i139
  %1417 = add i64 %1416, 5
  store i64 %1417, i64* %PC.i139
  %1418 = inttoptr i64 %1415 to float*
  %1419 = load float, float* %1418
  %1420 = bitcast i8* %1411 to float*
  store float %1419, float* %1420, align 1
  %1421 = getelementptr inbounds i8, i8* %1411, i64 4
  %1422 = bitcast i8* %1421 to float*
  store float 0.000000e+00, float* %1422, align 1
  %1423 = getelementptr inbounds i8, i8* %1411, i64 8
  %1424 = bitcast i8* %1423 to float*
  store float 0.000000e+00, float* %1424, align 1
  %1425 = getelementptr inbounds i8, i8* %1411, i64 12
  %1426 = bitcast i8* %1425 to float*
  store float 0.000000e+00, float* %1426, align 1
  store %struct.Memory* %loadMem_4449f2, %struct.Memory** %MEMORY
  %loadMem_4449f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1428 = getelementptr inbounds %struct.GPR, %struct.GPR* %1427, i32 0, i32 33
  %1429 = getelementptr inbounds %struct.Reg, %struct.Reg* %1428, i32 0, i32 0
  %PC.i136 = bitcast %union.anon* %1429 to i64*
  %1430 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1431 = getelementptr inbounds %struct.GPR, %struct.GPR* %1430, i32 0, i32 15
  %1432 = getelementptr inbounds %struct.Reg, %struct.Reg* %1431, i32 0, i32 0
  %RBP.i137 = bitcast %union.anon* %1432 to i64*
  %1433 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1434 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1433, i64 0, i64 1
  %YMM1.i138 = bitcast %union.VectorReg* %1434 to %"class.std::bitset"*
  %1435 = bitcast %"class.std::bitset"* %YMM1.i138 to i8*
  %1436 = bitcast %"class.std::bitset"* %YMM1.i138 to i8*
  %1437 = load i64, i64* %RBP.i137
  %1438 = sub i64 %1437, 52
  %1439 = load i64, i64* %PC.i136
  %1440 = add i64 %1439, 5
  store i64 %1440, i64* %PC.i136
  %1441 = bitcast i8* %1436 to <2 x float>*
  %1442 = load <2 x float>, <2 x float>* %1441, align 1
  %1443 = getelementptr inbounds i8, i8* %1436, i64 8
  %1444 = bitcast i8* %1443 to <2 x i32>*
  %1445 = load <2 x i32>, <2 x i32>* %1444, align 1
  %1446 = inttoptr i64 %1438 to float*
  %1447 = load float, float* %1446
  %1448 = extractelement <2 x float> %1442, i32 0
  %1449 = fsub float %1448, %1447
  %1450 = bitcast i8* %1435 to float*
  store float %1449, float* %1450, align 1
  %1451 = bitcast <2 x float> %1442 to <2 x i32>
  %1452 = extractelement <2 x i32> %1451, i32 1
  %1453 = getelementptr inbounds i8, i8* %1435, i64 4
  %1454 = bitcast i8* %1453 to i32*
  store i32 %1452, i32* %1454, align 1
  %1455 = extractelement <2 x i32> %1445, i32 0
  %1456 = getelementptr inbounds i8, i8* %1435, i64 8
  %1457 = bitcast i8* %1456 to i32*
  store i32 %1455, i32* %1457, align 1
  %1458 = extractelement <2 x i32> %1445, i32 1
  %1459 = getelementptr inbounds i8, i8* %1435, i64 12
  %1460 = bitcast i8* %1459 to i32*
  store i32 %1458, i32* %1460, align 1
  store %struct.Memory* %loadMem_4449f7, %struct.Memory** %MEMORY
  %loadMem_4449fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1462 = getelementptr inbounds %struct.GPR, %struct.GPR* %1461, i32 0, i32 33
  %1463 = getelementptr inbounds %struct.Reg, %struct.Reg* %1462, i32 0, i32 0
  %PC.i133 = bitcast %union.anon* %1463 to i64*
  %1464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1465 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1464, i64 0, i64 0
  %YMM0.i134 = bitcast %union.VectorReg* %1465 to %"class.std::bitset"*
  %1466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1467 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1466, i64 0, i64 1
  %XMM1.i135 = bitcast %union.VectorReg* %1467 to %union.vec128_t*
  %1468 = bitcast %"class.std::bitset"* %YMM0.i134 to i8*
  %1469 = bitcast %"class.std::bitset"* %YMM0.i134 to i8*
  %1470 = bitcast %union.vec128_t* %XMM1.i135 to i8*
  %1471 = load i64, i64* %PC.i133
  %1472 = add i64 %1471, 4
  store i64 %1472, i64* %PC.i133
  %1473 = bitcast i8* %1469 to <2 x float>*
  %1474 = load <2 x float>, <2 x float>* %1473, align 1
  %1475 = getelementptr inbounds i8, i8* %1469, i64 8
  %1476 = bitcast i8* %1475 to <2 x i32>*
  %1477 = load <2 x i32>, <2 x i32>* %1476, align 1
  %1478 = bitcast i8* %1470 to <2 x float>*
  %1479 = load <2 x float>, <2 x float>* %1478, align 1
  %1480 = extractelement <2 x float> %1474, i32 0
  %1481 = extractelement <2 x float> %1479, i32 0
  %1482 = fmul float %1480, %1481
  %1483 = bitcast i8* %1468 to float*
  store float %1482, float* %1483, align 1
  %1484 = bitcast <2 x float> %1474 to <2 x i32>
  %1485 = extractelement <2 x i32> %1484, i32 1
  %1486 = getelementptr inbounds i8, i8* %1468, i64 4
  %1487 = bitcast i8* %1486 to i32*
  store i32 %1485, i32* %1487, align 1
  %1488 = extractelement <2 x i32> %1477, i32 0
  %1489 = getelementptr inbounds i8, i8* %1468, i64 8
  %1490 = bitcast i8* %1489 to i32*
  store i32 %1488, i32* %1490, align 1
  %1491 = extractelement <2 x i32> %1477, i32 1
  %1492 = getelementptr inbounds i8, i8* %1468, i64 12
  %1493 = bitcast i8* %1492 to i32*
  store i32 %1491, i32* %1493, align 1
  store %struct.Memory* %loadMem_4449fc, %struct.Memory** %MEMORY
  %loadMem_444a00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1495 = getelementptr inbounds %struct.GPR, %struct.GPR* %1494, i32 0, i32 33
  %1496 = getelementptr inbounds %struct.Reg, %struct.Reg* %1495, i32 0, i32 0
  %PC.i130 = bitcast %union.anon* %1496 to i64*
  %1497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1498 = getelementptr inbounds %struct.GPR, %struct.GPR* %1497, i32 0, i32 15
  %1499 = getelementptr inbounds %struct.Reg, %struct.Reg* %1498, i32 0, i32 0
  %RBP.i131 = bitcast %union.anon* %1499 to i64*
  %1500 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1501 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1500, i64 0, i64 0
  %YMM0.i132 = bitcast %union.VectorReg* %1501 to %"class.std::bitset"*
  %1502 = bitcast %"class.std::bitset"* %YMM0.i132 to i8*
  %1503 = bitcast %"class.std::bitset"* %YMM0.i132 to i8*
  %1504 = load i64, i64* %RBP.i131
  %1505 = sub i64 %1504, 64
  %1506 = load i64, i64* %PC.i130
  %1507 = add i64 %1506, 5
  store i64 %1507, i64* %PC.i130
  %1508 = bitcast i8* %1503 to <2 x float>*
  %1509 = load <2 x float>, <2 x float>* %1508, align 1
  %1510 = getelementptr inbounds i8, i8* %1503, i64 8
  %1511 = bitcast i8* %1510 to <2 x i32>*
  %1512 = load <2 x i32>, <2 x i32>* %1511, align 1
  %1513 = inttoptr i64 %1505 to float*
  %1514 = load float, float* %1513
  %1515 = extractelement <2 x float> %1509, i32 0
  %1516 = fadd float %1515, %1514
  %1517 = bitcast i8* %1502 to float*
  store float %1516, float* %1517, align 1
  %1518 = bitcast <2 x float> %1509 to <2 x i32>
  %1519 = extractelement <2 x i32> %1518, i32 1
  %1520 = getelementptr inbounds i8, i8* %1502, i64 4
  %1521 = bitcast i8* %1520 to i32*
  store i32 %1519, i32* %1521, align 1
  %1522 = extractelement <2 x i32> %1512, i32 0
  %1523 = getelementptr inbounds i8, i8* %1502, i64 8
  %1524 = bitcast i8* %1523 to i32*
  store i32 %1522, i32* %1524, align 1
  %1525 = extractelement <2 x i32> %1512, i32 1
  %1526 = getelementptr inbounds i8, i8* %1502, i64 12
  %1527 = bitcast i8* %1526 to i32*
  store i32 %1525, i32* %1527, align 1
  store %struct.Memory* %loadMem_444a00, %struct.Memory** %MEMORY
  %loadMem_444a05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1529 = getelementptr inbounds %struct.GPR, %struct.GPR* %1528, i32 0, i32 33
  %1530 = getelementptr inbounds %struct.Reg, %struct.Reg* %1529, i32 0, i32 0
  %PC.i127 = bitcast %union.anon* %1530 to i64*
  %1531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1532 = getelementptr inbounds %struct.GPR, %struct.GPR* %1531, i32 0, i32 15
  %1533 = getelementptr inbounds %struct.Reg, %struct.Reg* %1532, i32 0, i32 0
  %RBP.i128 = bitcast %union.anon* %1533 to i64*
  %1534 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1535 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1534, i64 0, i64 0
  %XMM0.i129 = bitcast %union.VectorReg* %1535 to %union.vec128_t*
  %1536 = load i64, i64* %RBP.i128
  %1537 = sub i64 %1536, 64
  %1538 = bitcast %union.vec128_t* %XMM0.i129 to i8*
  %1539 = load i64, i64* %PC.i127
  %1540 = add i64 %1539, 5
  store i64 %1540, i64* %PC.i127
  %1541 = bitcast i8* %1538 to <2 x float>*
  %1542 = load <2 x float>, <2 x float>* %1541, align 1
  %1543 = extractelement <2 x float> %1542, i32 0
  %1544 = inttoptr i64 %1537 to float*
  store float %1543, float* %1544
  store %struct.Memory* %loadMem_444a05, %struct.Memory** %MEMORY
  %loadMem_444a0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1545 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1546 = getelementptr inbounds %struct.GPR, %struct.GPR* %1545, i32 0, i32 33
  %1547 = getelementptr inbounds %struct.Reg, %struct.Reg* %1546, i32 0, i32 0
  %PC.i124 = bitcast %union.anon* %1547 to i64*
  %1548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1549 = getelementptr inbounds %struct.GPR, %struct.GPR* %1548, i32 0, i32 1
  %1550 = getelementptr inbounds %struct.Reg, %struct.Reg* %1549, i32 0, i32 0
  %RAX.i125 = bitcast %union.anon* %1550 to i64*
  %1551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1552 = getelementptr inbounds %struct.GPR, %struct.GPR* %1551, i32 0, i32 15
  %1553 = getelementptr inbounds %struct.Reg, %struct.Reg* %1552, i32 0, i32 0
  %RBP.i126 = bitcast %union.anon* %1553 to i64*
  %1554 = load i64, i64* %RBP.i126
  %1555 = sub i64 %1554, 8
  %1556 = load i64, i64* %PC.i124
  %1557 = add i64 %1556, 4
  store i64 %1557, i64* %PC.i124
  %1558 = inttoptr i64 %1555 to i64*
  %1559 = load i64, i64* %1558
  store i64 %1559, i64* %RAX.i125, align 8
  store %struct.Memory* %loadMem_444a0a, %struct.Memory** %MEMORY
  %loadMem_444a0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1561 = getelementptr inbounds %struct.GPR, %struct.GPR* %1560, i32 0, i32 33
  %1562 = getelementptr inbounds %struct.Reg, %struct.Reg* %1561, i32 0, i32 0
  %PC.i121 = bitcast %union.anon* %1562 to i64*
  %1563 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1564 = getelementptr inbounds %struct.GPR, %struct.GPR* %1563, i32 0, i32 5
  %1565 = getelementptr inbounds %struct.Reg, %struct.Reg* %1564, i32 0, i32 0
  %RCX.i122 = bitcast %union.anon* %1565 to i64*
  %1566 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1567 = getelementptr inbounds %struct.GPR, %struct.GPR* %1566, i32 0, i32 15
  %1568 = getelementptr inbounds %struct.Reg, %struct.Reg* %1567, i32 0, i32 0
  %RBP.i123 = bitcast %union.anon* %1568 to i64*
  %1569 = load i64, i64* %RBP.i123
  %1570 = sub i64 %1569, 72
  %1571 = load i64, i64* %PC.i121
  %1572 = add i64 %1571, 4
  store i64 %1572, i64* %PC.i121
  %1573 = inttoptr i64 %1570 to i32*
  %1574 = load i32, i32* %1573
  %1575 = sext i32 %1574 to i64
  store i64 %1575, i64* %RCX.i122, align 8
  store %struct.Memory* %loadMem_444a0e, %struct.Memory** %MEMORY
  %loadMem_444a12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1576 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1577 = getelementptr inbounds %struct.GPR, %struct.GPR* %1576, i32 0, i32 33
  %1578 = getelementptr inbounds %struct.Reg, %struct.Reg* %1577, i32 0, i32 0
  %PC.i117 = bitcast %union.anon* %1578 to i64*
  %1579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1580 = getelementptr inbounds %struct.GPR, %struct.GPR* %1579, i32 0, i32 1
  %1581 = getelementptr inbounds %struct.Reg, %struct.Reg* %1580, i32 0, i32 0
  %RAX.i118 = bitcast %union.anon* %1581 to i64*
  %1582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1583 = getelementptr inbounds %struct.GPR, %struct.GPR* %1582, i32 0, i32 5
  %1584 = getelementptr inbounds %struct.Reg, %struct.Reg* %1583, i32 0, i32 0
  %RCX.i119 = bitcast %union.anon* %1584 to i64*
  %1585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1586 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1585, i64 0, i64 0
  %YMM0.i120 = bitcast %union.VectorReg* %1586 to %"class.std::bitset"*
  %1587 = bitcast %"class.std::bitset"* %YMM0.i120 to i8*
  %1588 = load i64, i64* %RAX.i118
  %1589 = load i64, i64* %RCX.i119
  %1590 = mul i64 %1589, 4
  %1591 = add i64 %1590, %1588
  %1592 = load i64, i64* %PC.i117
  %1593 = add i64 %1592, 5
  store i64 %1593, i64* %PC.i117
  %1594 = inttoptr i64 %1591 to float*
  %1595 = load float, float* %1594
  %1596 = bitcast i8* %1587 to float*
  store float %1595, float* %1596, align 1
  %1597 = getelementptr inbounds i8, i8* %1587, i64 4
  %1598 = bitcast i8* %1597 to float*
  store float 0.000000e+00, float* %1598, align 1
  %1599 = getelementptr inbounds i8, i8* %1587, i64 8
  %1600 = bitcast i8* %1599 to float*
  store float 0.000000e+00, float* %1600, align 1
  %1601 = getelementptr inbounds i8, i8* %1587, i64 12
  %1602 = bitcast i8* %1601 to float*
  store float 0.000000e+00, float* %1602, align 1
  store %struct.Memory* %loadMem_444a12, %struct.Memory** %MEMORY
  %loadMem_444a17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1603 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1604 = getelementptr inbounds %struct.GPR, %struct.GPR* %1603, i32 0, i32 33
  %1605 = getelementptr inbounds %struct.Reg, %struct.Reg* %1604, i32 0, i32 0
  %PC.i114 = bitcast %union.anon* %1605 to i64*
  %1606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1607 = getelementptr inbounds %struct.GPR, %struct.GPR* %1606, i32 0, i32 15
  %1608 = getelementptr inbounds %struct.Reg, %struct.Reg* %1607, i32 0, i32 0
  %RBP.i115 = bitcast %union.anon* %1608 to i64*
  %1609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1610 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1609, i64 0, i64 0
  %YMM0.i116 = bitcast %union.VectorReg* %1610 to %"class.std::bitset"*
  %1611 = bitcast %"class.std::bitset"* %YMM0.i116 to i8*
  %1612 = bitcast %"class.std::bitset"* %YMM0.i116 to i8*
  %1613 = load i64, i64* %RBP.i115
  %1614 = sub i64 %1613, 52
  %1615 = load i64, i64* %PC.i114
  %1616 = add i64 %1615, 5
  store i64 %1616, i64* %PC.i114
  %1617 = bitcast i8* %1612 to <2 x float>*
  %1618 = load <2 x float>, <2 x float>* %1617, align 1
  %1619 = getelementptr inbounds i8, i8* %1612, i64 8
  %1620 = bitcast i8* %1619 to <2 x i32>*
  %1621 = load <2 x i32>, <2 x i32>* %1620, align 1
  %1622 = inttoptr i64 %1614 to float*
  %1623 = load float, float* %1622
  %1624 = extractelement <2 x float> %1618, i32 0
  %1625 = fsub float %1624, %1623
  %1626 = bitcast i8* %1611 to float*
  store float %1625, float* %1626, align 1
  %1627 = bitcast <2 x float> %1618 to <2 x i32>
  %1628 = extractelement <2 x i32> %1627, i32 1
  %1629 = getelementptr inbounds i8, i8* %1611, i64 4
  %1630 = bitcast i8* %1629 to i32*
  store i32 %1628, i32* %1630, align 1
  %1631 = extractelement <2 x i32> %1621, i32 0
  %1632 = getelementptr inbounds i8, i8* %1611, i64 8
  %1633 = bitcast i8* %1632 to i32*
  store i32 %1631, i32* %1633, align 1
  %1634 = extractelement <2 x i32> %1621, i32 1
  %1635 = getelementptr inbounds i8, i8* %1611, i64 12
  %1636 = bitcast i8* %1635 to i32*
  store i32 %1634, i32* %1636, align 1
  store %struct.Memory* %loadMem_444a17, %struct.Memory** %MEMORY
  %loadMem_444a1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1638 = getelementptr inbounds %struct.GPR, %struct.GPR* %1637, i32 0, i32 33
  %1639 = getelementptr inbounds %struct.Reg, %struct.Reg* %1638, i32 0, i32 0
  %PC.i111 = bitcast %union.anon* %1639 to i64*
  %1640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1641 = getelementptr inbounds %struct.GPR, %struct.GPR* %1640, i32 0, i32 1
  %1642 = getelementptr inbounds %struct.Reg, %struct.Reg* %1641, i32 0, i32 0
  %RAX.i112 = bitcast %union.anon* %1642 to i64*
  %1643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1644 = getelementptr inbounds %struct.GPR, %struct.GPR* %1643, i32 0, i32 15
  %1645 = getelementptr inbounds %struct.Reg, %struct.Reg* %1644, i32 0, i32 0
  %RBP.i113 = bitcast %union.anon* %1645 to i64*
  %1646 = load i64, i64* %RBP.i113
  %1647 = sub i64 %1646, 16
  %1648 = load i64, i64* %PC.i111
  %1649 = add i64 %1648, 4
  store i64 %1649, i64* %PC.i111
  %1650 = inttoptr i64 %1647 to i64*
  %1651 = load i64, i64* %1650
  store i64 %1651, i64* %RAX.i112, align 8
  store %struct.Memory* %loadMem_444a1c, %struct.Memory** %MEMORY
  %loadMem_444a20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1653 = getelementptr inbounds %struct.GPR, %struct.GPR* %1652, i32 0, i32 33
  %1654 = getelementptr inbounds %struct.Reg, %struct.Reg* %1653, i32 0, i32 0
  %PC.i108 = bitcast %union.anon* %1654 to i64*
  %1655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1656 = getelementptr inbounds %struct.GPR, %struct.GPR* %1655, i32 0, i32 5
  %1657 = getelementptr inbounds %struct.Reg, %struct.Reg* %1656, i32 0, i32 0
  %RCX.i109 = bitcast %union.anon* %1657 to i64*
  %1658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1659 = getelementptr inbounds %struct.GPR, %struct.GPR* %1658, i32 0, i32 15
  %1660 = getelementptr inbounds %struct.Reg, %struct.Reg* %1659, i32 0, i32 0
  %RBP.i110 = bitcast %union.anon* %1660 to i64*
  %1661 = load i64, i64* %RBP.i110
  %1662 = sub i64 %1661, 72
  %1663 = load i64, i64* %PC.i108
  %1664 = add i64 %1663, 4
  store i64 %1664, i64* %PC.i108
  %1665 = inttoptr i64 %1662 to i32*
  %1666 = load i32, i32* %1665
  %1667 = sext i32 %1666 to i64
  store i64 %1667, i64* %RCX.i109, align 8
  store %struct.Memory* %loadMem_444a20, %struct.Memory** %MEMORY
  %loadMem_444a24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1668 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1669 = getelementptr inbounds %struct.GPR, %struct.GPR* %1668, i32 0, i32 33
  %1670 = getelementptr inbounds %struct.Reg, %struct.Reg* %1669, i32 0, i32 0
  %PC.i104 = bitcast %union.anon* %1670 to i64*
  %1671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1672 = getelementptr inbounds %struct.GPR, %struct.GPR* %1671, i32 0, i32 1
  %1673 = getelementptr inbounds %struct.Reg, %struct.Reg* %1672, i32 0, i32 0
  %RAX.i105 = bitcast %union.anon* %1673 to i64*
  %1674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1675 = getelementptr inbounds %struct.GPR, %struct.GPR* %1674, i32 0, i32 5
  %1676 = getelementptr inbounds %struct.Reg, %struct.Reg* %1675, i32 0, i32 0
  %RCX.i106 = bitcast %union.anon* %1676 to i64*
  %1677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1678 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1677, i64 0, i64 1
  %YMM1.i107 = bitcast %union.VectorReg* %1678 to %"class.std::bitset"*
  %1679 = bitcast %"class.std::bitset"* %YMM1.i107 to i8*
  %1680 = load i64, i64* %RAX.i105
  %1681 = load i64, i64* %RCX.i106
  %1682 = mul i64 %1681, 4
  %1683 = add i64 %1682, %1680
  %1684 = load i64, i64* %PC.i104
  %1685 = add i64 %1684, 5
  store i64 %1685, i64* %PC.i104
  %1686 = inttoptr i64 %1683 to float*
  %1687 = load float, float* %1686
  %1688 = bitcast i8* %1679 to float*
  store float %1687, float* %1688, align 1
  %1689 = getelementptr inbounds i8, i8* %1679, i64 4
  %1690 = bitcast i8* %1689 to float*
  store float 0.000000e+00, float* %1690, align 1
  %1691 = getelementptr inbounds i8, i8* %1679, i64 8
  %1692 = bitcast i8* %1691 to float*
  store float 0.000000e+00, float* %1692, align 1
  %1693 = getelementptr inbounds i8, i8* %1679, i64 12
  %1694 = bitcast i8* %1693 to float*
  store float 0.000000e+00, float* %1694, align 1
  store %struct.Memory* %loadMem_444a24, %struct.Memory** %MEMORY
  %loadMem_444a29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1695 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1696 = getelementptr inbounds %struct.GPR, %struct.GPR* %1695, i32 0, i32 33
  %1697 = getelementptr inbounds %struct.Reg, %struct.Reg* %1696, i32 0, i32 0
  %PC.i101 = bitcast %union.anon* %1697 to i64*
  %1698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1699 = getelementptr inbounds %struct.GPR, %struct.GPR* %1698, i32 0, i32 15
  %1700 = getelementptr inbounds %struct.Reg, %struct.Reg* %1699, i32 0, i32 0
  %RBP.i102 = bitcast %union.anon* %1700 to i64*
  %1701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1702 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1701, i64 0, i64 1
  %YMM1.i103 = bitcast %union.VectorReg* %1702 to %"class.std::bitset"*
  %1703 = bitcast %"class.std::bitset"* %YMM1.i103 to i8*
  %1704 = bitcast %"class.std::bitset"* %YMM1.i103 to i8*
  %1705 = load i64, i64* %RBP.i102
  %1706 = sub i64 %1705, 56
  %1707 = load i64, i64* %PC.i101
  %1708 = add i64 %1707, 5
  store i64 %1708, i64* %PC.i101
  %1709 = bitcast i8* %1704 to <2 x float>*
  %1710 = load <2 x float>, <2 x float>* %1709, align 1
  %1711 = getelementptr inbounds i8, i8* %1704, i64 8
  %1712 = bitcast i8* %1711 to <2 x i32>*
  %1713 = load <2 x i32>, <2 x i32>* %1712, align 1
  %1714 = inttoptr i64 %1706 to float*
  %1715 = load float, float* %1714
  %1716 = extractelement <2 x float> %1710, i32 0
  %1717 = fsub float %1716, %1715
  %1718 = bitcast i8* %1703 to float*
  store float %1717, float* %1718, align 1
  %1719 = bitcast <2 x float> %1710 to <2 x i32>
  %1720 = extractelement <2 x i32> %1719, i32 1
  %1721 = getelementptr inbounds i8, i8* %1703, i64 4
  %1722 = bitcast i8* %1721 to i32*
  store i32 %1720, i32* %1722, align 1
  %1723 = extractelement <2 x i32> %1713, i32 0
  %1724 = getelementptr inbounds i8, i8* %1703, i64 8
  %1725 = bitcast i8* %1724 to i32*
  store i32 %1723, i32* %1725, align 1
  %1726 = extractelement <2 x i32> %1713, i32 1
  %1727 = getelementptr inbounds i8, i8* %1703, i64 12
  %1728 = bitcast i8* %1727 to i32*
  store i32 %1726, i32* %1728, align 1
  store %struct.Memory* %loadMem_444a29, %struct.Memory** %MEMORY
  %loadMem_444a2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1730 = getelementptr inbounds %struct.GPR, %struct.GPR* %1729, i32 0, i32 33
  %1731 = getelementptr inbounds %struct.Reg, %struct.Reg* %1730, i32 0, i32 0
  %PC.i98 = bitcast %union.anon* %1731 to i64*
  %1732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1733 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1732, i64 0, i64 0
  %YMM0.i99 = bitcast %union.VectorReg* %1733 to %"class.std::bitset"*
  %1734 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1735 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1734, i64 0, i64 1
  %XMM1.i100 = bitcast %union.VectorReg* %1735 to %union.vec128_t*
  %1736 = bitcast %"class.std::bitset"* %YMM0.i99 to i8*
  %1737 = bitcast %"class.std::bitset"* %YMM0.i99 to i8*
  %1738 = bitcast %union.vec128_t* %XMM1.i100 to i8*
  %1739 = load i64, i64* %PC.i98
  %1740 = add i64 %1739, 4
  store i64 %1740, i64* %PC.i98
  %1741 = bitcast i8* %1737 to <2 x float>*
  %1742 = load <2 x float>, <2 x float>* %1741, align 1
  %1743 = getelementptr inbounds i8, i8* %1737, i64 8
  %1744 = bitcast i8* %1743 to <2 x i32>*
  %1745 = load <2 x i32>, <2 x i32>* %1744, align 1
  %1746 = bitcast i8* %1738 to <2 x float>*
  %1747 = load <2 x float>, <2 x float>* %1746, align 1
  %1748 = extractelement <2 x float> %1742, i32 0
  %1749 = extractelement <2 x float> %1747, i32 0
  %1750 = fmul float %1748, %1749
  %1751 = bitcast i8* %1736 to float*
  store float %1750, float* %1751, align 1
  %1752 = bitcast <2 x float> %1742 to <2 x i32>
  %1753 = extractelement <2 x i32> %1752, i32 1
  %1754 = getelementptr inbounds i8, i8* %1736, i64 4
  %1755 = bitcast i8* %1754 to i32*
  store i32 %1753, i32* %1755, align 1
  %1756 = extractelement <2 x i32> %1745, i32 0
  %1757 = getelementptr inbounds i8, i8* %1736, i64 8
  %1758 = bitcast i8* %1757 to i32*
  store i32 %1756, i32* %1758, align 1
  %1759 = extractelement <2 x i32> %1745, i32 1
  %1760 = getelementptr inbounds i8, i8* %1736, i64 12
  %1761 = bitcast i8* %1760 to i32*
  store i32 %1759, i32* %1761, align 1
  store %struct.Memory* %loadMem_444a2e, %struct.Memory** %MEMORY
  %loadMem_444a32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1762 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1763 = getelementptr inbounds %struct.GPR, %struct.GPR* %1762, i32 0, i32 33
  %1764 = getelementptr inbounds %struct.Reg, %struct.Reg* %1763, i32 0, i32 0
  %PC.i95 = bitcast %union.anon* %1764 to i64*
  %1765 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1766 = getelementptr inbounds %struct.GPR, %struct.GPR* %1765, i32 0, i32 15
  %1767 = getelementptr inbounds %struct.Reg, %struct.Reg* %1766, i32 0, i32 0
  %RBP.i96 = bitcast %union.anon* %1767 to i64*
  %1768 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1769 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1768, i64 0, i64 0
  %YMM0.i97 = bitcast %union.VectorReg* %1769 to %"class.std::bitset"*
  %1770 = bitcast %"class.std::bitset"* %YMM0.i97 to i8*
  %1771 = bitcast %"class.std::bitset"* %YMM0.i97 to i8*
  %1772 = load i64, i64* %RBP.i96
  %1773 = sub i64 %1772, 68
  %1774 = load i64, i64* %PC.i95
  %1775 = add i64 %1774, 5
  store i64 %1775, i64* %PC.i95
  %1776 = bitcast i8* %1771 to <2 x float>*
  %1777 = load <2 x float>, <2 x float>* %1776, align 1
  %1778 = getelementptr inbounds i8, i8* %1771, i64 8
  %1779 = bitcast i8* %1778 to <2 x i32>*
  %1780 = load <2 x i32>, <2 x i32>* %1779, align 1
  %1781 = inttoptr i64 %1773 to float*
  %1782 = load float, float* %1781
  %1783 = extractelement <2 x float> %1777, i32 0
  %1784 = fadd float %1783, %1782
  %1785 = bitcast i8* %1770 to float*
  store float %1784, float* %1785, align 1
  %1786 = bitcast <2 x float> %1777 to <2 x i32>
  %1787 = extractelement <2 x i32> %1786, i32 1
  %1788 = getelementptr inbounds i8, i8* %1770, i64 4
  %1789 = bitcast i8* %1788 to i32*
  store i32 %1787, i32* %1789, align 1
  %1790 = extractelement <2 x i32> %1780, i32 0
  %1791 = getelementptr inbounds i8, i8* %1770, i64 8
  %1792 = bitcast i8* %1791 to i32*
  store i32 %1790, i32* %1792, align 1
  %1793 = extractelement <2 x i32> %1780, i32 1
  %1794 = getelementptr inbounds i8, i8* %1770, i64 12
  %1795 = bitcast i8* %1794 to i32*
  store i32 %1793, i32* %1795, align 1
  store %struct.Memory* %loadMem_444a32, %struct.Memory** %MEMORY
  %loadMem_444a37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1796 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1797 = getelementptr inbounds %struct.GPR, %struct.GPR* %1796, i32 0, i32 33
  %1798 = getelementptr inbounds %struct.Reg, %struct.Reg* %1797, i32 0, i32 0
  %PC.i92 = bitcast %union.anon* %1798 to i64*
  %1799 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1800 = getelementptr inbounds %struct.GPR, %struct.GPR* %1799, i32 0, i32 15
  %1801 = getelementptr inbounds %struct.Reg, %struct.Reg* %1800, i32 0, i32 0
  %RBP.i93 = bitcast %union.anon* %1801 to i64*
  %1802 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1803 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1802, i64 0, i64 0
  %XMM0.i94 = bitcast %union.VectorReg* %1803 to %union.vec128_t*
  %1804 = load i64, i64* %RBP.i93
  %1805 = sub i64 %1804, 68
  %1806 = bitcast %union.vec128_t* %XMM0.i94 to i8*
  %1807 = load i64, i64* %PC.i92
  %1808 = add i64 %1807, 5
  store i64 %1808, i64* %PC.i92
  %1809 = bitcast i8* %1806 to <2 x float>*
  %1810 = load <2 x float>, <2 x float>* %1809, align 1
  %1811 = extractelement <2 x float> %1810, i32 0
  %1812 = inttoptr i64 %1805 to float*
  store float %1811, float* %1812
  store %struct.Memory* %loadMem_444a37, %struct.Memory** %MEMORY
  %loadMem_444a3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1813 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1814 = getelementptr inbounds %struct.GPR, %struct.GPR* %1813, i32 0, i32 33
  %1815 = getelementptr inbounds %struct.Reg, %struct.Reg* %1814, i32 0, i32 0
  %PC.i89 = bitcast %union.anon* %1815 to i64*
  %1816 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1817 = getelementptr inbounds %struct.GPR, %struct.GPR* %1816, i32 0, i32 1
  %1818 = getelementptr inbounds %struct.Reg, %struct.Reg* %1817, i32 0, i32 0
  %RAX.i90 = bitcast %union.anon* %1818 to i64*
  %1819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1820 = getelementptr inbounds %struct.GPR, %struct.GPR* %1819, i32 0, i32 15
  %1821 = getelementptr inbounds %struct.Reg, %struct.Reg* %1820, i32 0, i32 0
  %RBP.i91 = bitcast %union.anon* %1821 to i64*
  %1822 = load i64, i64* %RBP.i91
  %1823 = sub i64 %1822, 72
  %1824 = load i64, i64* %PC.i89
  %1825 = add i64 %1824, 3
  store i64 %1825, i64* %PC.i89
  %1826 = inttoptr i64 %1823 to i32*
  %1827 = load i32, i32* %1826
  %1828 = zext i32 %1827 to i64
  store i64 %1828, i64* %RAX.i90, align 8
  store %struct.Memory* %loadMem_444a3c, %struct.Memory** %MEMORY
  %loadMem_444a3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1830 = getelementptr inbounds %struct.GPR, %struct.GPR* %1829, i32 0, i32 33
  %1831 = getelementptr inbounds %struct.Reg, %struct.Reg* %1830, i32 0, i32 0
  %PC.i87 = bitcast %union.anon* %1831 to i64*
  %1832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1833 = getelementptr inbounds %struct.GPR, %struct.GPR* %1832, i32 0, i32 1
  %1834 = getelementptr inbounds %struct.Reg, %struct.Reg* %1833, i32 0, i32 0
  %RAX.i88 = bitcast %union.anon* %1834 to i64*
  %1835 = load i64, i64* %RAX.i88
  %1836 = load i64, i64* %PC.i87
  %1837 = add i64 %1836, 3
  store i64 %1837, i64* %PC.i87
  %1838 = trunc i64 %1835 to i32
  %1839 = add i32 1, %1838
  %1840 = zext i32 %1839 to i64
  store i64 %1840, i64* %RAX.i88, align 8
  %1841 = icmp ult i32 %1839, %1838
  %1842 = icmp ult i32 %1839, 1
  %1843 = or i1 %1841, %1842
  %1844 = zext i1 %1843 to i8
  %1845 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1844, i8* %1845, align 1
  %1846 = and i32 %1839, 255
  %1847 = call i32 @llvm.ctpop.i32(i32 %1846)
  %1848 = trunc i32 %1847 to i8
  %1849 = and i8 %1848, 1
  %1850 = xor i8 %1849, 1
  %1851 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1850, i8* %1851, align 1
  %1852 = xor i64 1, %1835
  %1853 = trunc i64 %1852 to i32
  %1854 = xor i32 %1853, %1839
  %1855 = lshr i32 %1854, 4
  %1856 = trunc i32 %1855 to i8
  %1857 = and i8 %1856, 1
  %1858 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1857, i8* %1858, align 1
  %1859 = icmp eq i32 %1839, 0
  %1860 = zext i1 %1859 to i8
  %1861 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1860, i8* %1861, align 1
  %1862 = lshr i32 %1839, 31
  %1863 = trunc i32 %1862 to i8
  %1864 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1863, i8* %1864, align 1
  %1865 = lshr i32 %1838, 31
  %1866 = xor i32 %1862, %1865
  %1867 = add i32 %1866, %1862
  %1868 = icmp eq i32 %1867, 2
  %1869 = zext i1 %1868 to i8
  %1870 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1869, i8* %1870, align 1
  store %struct.Memory* %loadMem_444a3f, %struct.Memory** %MEMORY
  %loadMem_444a42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1872 = getelementptr inbounds %struct.GPR, %struct.GPR* %1871, i32 0, i32 33
  %1873 = getelementptr inbounds %struct.Reg, %struct.Reg* %1872, i32 0, i32 0
  %PC.i84 = bitcast %union.anon* %1873 to i64*
  %1874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1875 = getelementptr inbounds %struct.GPR, %struct.GPR* %1874, i32 0, i32 1
  %1876 = getelementptr inbounds %struct.Reg, %struct.Reg* %1875, i32 0, i32 0
  %EAX.i85 = bitcast %union.anon* %1876 to i32*
  %1877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1878 = getelementptr inbounds %struct.GPR, %struct.GPR* %1877, i32 0, i32 15
  %1879 = getelementptr inbounds %struct.Reg, %struct.Reg* %1878, i32 0, i32 0
  %RBP.i86 = bitcast %union.anon* %1879 to i64*
  %1880 = load i64, i64* %RBP.i86
  %1881 = sub i64 %1880, 72
  %1882 = load i32, i32* %EAX.i85
  %1883 = zext i32 %1882 to i64
  %1884 = load i64, i64* %PC.i84
  %1885 = add i64 %1884, 3
  store i64 %1885, i64* %PC.i84
  %1886 = inttoptr i64 %1881 to i32*
  store i32 %1882, i32* %1886
  store %struct.Memory* %loadMem_444a42, %struct.Memory** %MEMORY
  %loadMem_444a45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1887 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1888 = getelementptr inbounds %struct.GPR, %struct.GPR* %1887, i32 0, i32 33
  %1889 = getelementptr inbounds %struct.Reg, %struct.Reg* %1888, i32 0, i32 0
  %PC.i83 = bitcast %union.anon* %1889 to i64*
  %1890 = load i64, i64* %PC.i83
  %1891 = add i64 %1890, -171
  %1892 = load i64, i64* %PC.i83
  %1893 = add i64 %1892, 5
  store i64 %1893, i64* %PC.i83
  %1894 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1891, i64* %1894, align 8
  store %struct.Memory* %loadMem_444a45, %struct.Memory** %MEMORY
  br label %block_.L_44499a

block_.L_444a4a:                                  ; preds = %block_.L_44499a
  %loadMem_444a4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1895 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1896 = getelementptr inbounds %struct.GPR, %struct.GPR* %1895, i32 0, i32 33
  %1897 = getelementptr inbounds %struct.Reg, %struct.Reg* %1896, i32 0, i32 0
  %PC.i81 = bitcast %union.anon* %1897 to i64*
  %1898 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1899 = getelementptr inbounds %struct.GPR, %struct.GPR* %1898, i32 0, i32 1
  %1900 = getelementptr inbounds %struct.Reg, %struct.Reg* %1899, i32 0, i32 0
  %RAX.i82 = bitcast %union.anon* %1900 to i64*
  %1901 = load i64, i64* %PC.i81
  %1902 = add i64 %1901, 5
  store i64 %1902, i64* %PC.i81
  store i64 1, i64* %RAX.i82, align 8
  store %struct.Memory* %loadMem_444a4a, %struct.Memory** %MEMORY
  %loadMem_444a4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1903 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1904 = getelementptr inbounds %struct.GPR, %struct.GPR* %1903, i32 0, i32 33
  %1905 = getelementptr inbounds %struct.Reg, %struct.Reg* %1904, i32 0, i32 0
  %PC.i78 = bitcast %union.anon* %1905 to i64*
  %1906 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1907 = getelementptr inbounds %struct.GPR, %struct.GPR* %1906, i32 0, i32 15
  %1908 = getelementptr inbounds %struct.Reg, %struct.Reg* %1907, i32 0, i32 0
  %RBP.i79 = bitcast %union.anon* %1908 to i64*
  %1909 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1910 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1909, i64 0, i64 0
  %YMM0.i80 = bitcast %union.VectorReg* %1910 to %"class.std::bitset"*
  %1911 = bitcast %"class.std::bitset"* %YMM0.i80 to i8*
  %1912 = load i64, i64* %RBP.i79
  %1913 = sub i64 %1912, 68
  %1914 = load i64, i64* %PC.i78
  %1915 = add i64 %1914, 5
  store i64 %1915, i64* %PC.i78
  %1916 = inttoptr i64 %1913 to float*
  %1917 = load float, float* %1916
  %1918 = bitcast i8* %1911 to float*
  store float %1917, float* %1918, align 1
  %1919 = getelementptr inbounds i8, i8* %1911, i64 4
  %1920 = bitcast i8* %1919 to float*
  store float 0.000000e+00, float* %1920, align 1
  %1921 = getelementptr inbounds i8, i8* %1911, i64 8
  %1922 = bitcast i8* %1921 to float*
  store float 0.000000e+00, float* %1922, align 1
  %1923 = getelementptr inbounds i8, i8* %1911, i64 12
  %1924 = bitcast i8* %1923 to float*
  store float 0.000000e+00, float* %1924, align 1
  store %struct.Memory* %loadMem_444a4f, %struct.Memory** %MEMORY
  %loadMem_444a54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1925 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1926 = getelementptr inbounds %struct.GPR, %struct.GPR* %1925, i32 0, i32 33
  %1927 = getelementptr inbounds %struct.Reg, %struct.Reg* %1926, i32 0, i32 0
  %PC.i75 = bitcast %union.anon* %1927 to i64*
  %1928 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1929 = getelementptr inbounds %struct.GPR, %struct.GPR* %1928, i32 0, i32 15
  %1930 = getelementptr inbounds %struct.Reg, %struct.Reg* %1929, i32 0, i32 0
  %RBP.i76 = bitcast %union.anon* %1930 to i64*
  %1931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1932 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1931, i64 0, i64 0
  %YMM0.i77 = bitcast %union.VectorReg* %1932 to %"class.std::bitset"*
  %1933 = bitcast %"class.std::bitset"* %YMM0.i77 to i8*
  %1934 = bitcast %"class.std::bitset"* %YMM0.i77 to i8*
  %1935 = load i64, i64* %RBP.i76
  %1936 = sub i64 %1935, 60
  %1937 = load i64, i64* %PC.i75
  %1938 = add i64 %1937, 5
  store i64 %1938, i64* %PC.i75
  %1939 = bitcast i8* %1934 to <2 x float>*
  %1940 = load <2 x float>, <2 x float>* %1939, align 1
  %1941 = getelementptr inbounds i8, i8* %1934, i64 8
  %1942 = bitcast i8* %1941 to <2 x i32>*
  %1943 = load <2 x i32>, <2 x i32>* %1942, align 1
  %1944 = inttoptr i64 %1936 to float*
  %1945 = load float, float* %1944
  %1946 = extractelement <2 x float> %1940, i32 0
  %1947 = fdiv float %1946, %1945
  %1948 = bitcast i8* %1933 to float*
  store float %1947, float* %1948, align 1
  %1949 = bitcast <2 x float> %1940 to <2 x i32>
  %1950 = extractelement <2 x i32> %1949, i32 1
  %1951 = getelementptr inbounds i8, i8* %1933, i64 4
  %1952 = bitcast i8* %1951 to i32*
  store i32 %1950, i32* %1952, align 1
  %1953 = extractelement <2 x i32> %1943, i32 0
  %1954 = getelementptr inbounds i8, i8* %1933, i64 8
  %1955 = bitcast i8* %1954 to i32*
  store i32 %1953, i32* %1955, align 1
  %1956 = extractelement <2 x i32> %1943, i32 1
  %1957 = getelementptr inbounds i8, i8* %1933, i64 12
  %1958 = bitcast i8* %1957 to i32*
  store i32 %1956, i32* %1958, align 1
  store %struct.Memory* %loadMem_444a54, %struct.Memory** %MEMORY
  %loadMem_444a59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1959 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1960 = getelementptr inbounds %struct.GPR, %struct.GPR* %1959, i32 0, i32 33
  %1961 = getelementptr inbounds %struct.Reg, %struct.Reg* %1960, i32 0, i32 0
  %PC.i72 = bitcast %union.anon* %1961 to i64*
  %1962 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1963 = getelementptr inbounds %struct.GPR, %struct.GPR* %1962, i32 0, i32 5
  %1964 = getelementptr inbounds %struct.Reg, %struct.Reg* %1963, i32 0, i32 0
  %RCX.i73 = bitcast %union.anon* %1964 to i64*
  %1965 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1966 = getelementptr inbounds %struct.GPR, %struct.GPR* %1965, i32 0, i32 15
  %1967 = getelementptr inbounds %struct.Reg, %struct.Reg* %1966, i32 0, i32 0
  %RBP.i74 = bitcast %union.anon* %1967 to i64*
  %1968 = load i64, i64* %RBP.i74
  %1969 = sub i64 %1968, 40
  %1970 = load i64, i64* %PC.i72
  %1971 = add i64 %1970, 4
  store i64 %1971, i64* %PC.i72
  %1972 = inttoptr i64 %1969 to i64*
  %1973 = load i64, i64* %1972
  store i64 %1973, i64* %RCX.i73, align 8
  store %struct.Memory* %loadMem_444a59, %struct.Memory** %MEMORY
  %loadMem_444a5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1975 = getelementptr inbounds %struct.GPR, %struct.GPR* %1974, i32 0, i32 33
  %1976 = getelementptr inbounds %struct.Reg, %struct.Reg* %1975, i32 0, i32 0
  %PC.i69 = bitcast %union.anon* %1976 to i64*
  %1977 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1978 = getelementptr inbounds %struct.GPR, %struct.GPR* %1977, i32 0, i32 5
  %1979 = getelementptr inbounds %struct.Reg, %struct.Reg* %1978, i32 0, i32 0
  %RCX.i70 = bitcast %union.anon* %1979 to i64*
  %1980 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1981 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1980, i64 0, i64 0
  %XMM0.i71 = bitcast %union.VectorReg* %1981 to %union.vec128_t*
  %1982 = load i64, i64* %RCX.i70
  %1983 = bitcast %union.vec128_t* %XMM0.i71 to i8*
  %1984 = load i64, i64* %PC.i69
  %1985 = add i64 %1984, 4
  store i64 %1985, i64* %PC.i69
  %1986 = bitcast i8* %1983 to <2 x float>*
  %1987 = load <2 x float>, <2 x float>* %1986, align 1
  %1988 = extractelement <2 x float> %1987, i32 0
  %1989 = inttoptr i64 %1982 to float*
  store float %1988, float* %1989
  store %struct.Memory* %loadMem_444a5d, %struct.Memory** %MEMORY
  %loadMem_444a61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1990 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1991 = getelementptr inbounds %struct.GPR, %struct.GPR* %1990, i32 0, i32 33
  %1992 = getelementptr inbounds %struct.Reg, %struct.Reg* %1991, i32 0, i32 0
  %PC.i66 = bitcast %union.anon* %1992 to i64*
  %1993 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1994 = getelementptr inbounds %struct.GPR, %struct.GPR* %1993, i32 0, i32 15
  %1995 = getelementptr inbounds %struct.Reg, %struct.Reg* %1994, i32 0, i32 0
  %RBP.i67 = bitcast %union.anon* %1995 to i64*
  %1996 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1997 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1996, i64 0, i64 0
  %YMM0.i68 = bitcast %union.VectorReg* %1997 to %"class.std::bitset"*
  %1998 = bitcast %"class.std::bitset"* %YMM0.i68 to i8*
  %1999 = load i64, i64* %RBP.i67
  %2000 = sub i64 %1999, 56
  %2001 = load i64, i64* %PC.i66
  %2002 = add i64 %2001, 5
  store i64 %2002, i64* %PC.i66
  %2003 = inttoptr i64 %2000 to float*
  %2004 = load float, float* %2003
  %2005 = bitcast i8* %1998 to float*
  store float %2004, float* %2005, align 1
  %2006 = getelementptr inbounds i8, i8* %1998, i64 4
  %2007 = bitcast i8* %2006 to float*
  store float 0.000000e+00, float* %2007, align 1
  %2008 = getelementptr inbounds i8, i8* %1998, i64 8
  %2009 = bitcast i8* %2008 to float*
  store float 0.000000e+00, float* %2009, align 1
  %2010 = getelementptr inbounds i8, i8* %1998, i64 12
  %2011 = bitcast i8* %2010 to float*
  store float 0.000000e+00, float* %2011, align 1
  store %struct.Memory* %loadMem_444a61, %struct.Memory** %MEMORY
  %loadMem_444a66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2012 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2013 = getelementptr inbounds %struct.GPR, %struct.GPR* %2012, i32 0, i32 33
  %2014 = getelementptr inbounds %struct.Reg, %struct.Reg* %2013, i32 0, i32 0
  %PC.i63 = bitcast %union.anon* %2014 to i64*
  %2015 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2016 = getelementptr inbounds %struct.GPR, %struct.GPR* %2015, i32 0, i32 15
  %2017 = getelementptr inbounds %struct.Reg, %struct.Reg* %2016, i32 0, i32 0
  %RBP.i64 = bitcast %union.anon* %2017 to i64*
  %2018 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2019 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2018, i64 0, i64 1
  %YMM1.i65 = bitcast %union.VectorReg* %2019 to %"class.std::bitset"*
  %2020 = bitcast %"class.std::bitset"* %YMM1.i65 to i8*
  %2021 = load i64, i64* %RBP.i64
  %2022 = sub i64 %2021, 52
  %2023 = load i64, i64* %PC.i63
  %2024 = add i64 %2023, 5
  store i64 %2024, i64* %PC.i63
  %2025 = inttoptr i64 %2022 to float*
  %2026 = load float, float* %2025
  %2027 = bitcast i8* %2020 to float*
  store float %2026, float* %2027, align 1
  %2028 = getelementptr inbounds i8, i8* %2020, i64 4
  %2029 = bitcast i8* %2028 to float*
  store float 0.000000e+00, float* %2029, align 1
  %2030 = getelementptr inbounds i8, i8* %2020, i64 8
  %2031 = bitcast i8* %2030 to float*
  store float 0.000000e+00, float* %2031, align 1
  %2032 = getelementptr inbounds i8, i8* %2020, i64 12
  %2033 = bitcast i8* %2032 to float*
  store float 0.000000e+00, float* %2033, align 1
  store %struct.Memory* %loadMem_444a66, %struct.Memory** %MEMORY
  %loadMem_444a6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2034 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2035 = getelementptr inbounds %struct.GPR, %struct.GPR* %2034, i32 0, i32 33
  %2036 = getelementptr inbounds %struct.Reg, %struct.Reg* %2035, i32 0, i32 0
  %PC.i60 = bitcast %union.anon* %2036 to i64*
  %2037 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2038 = getelementptr inbounds %struct.GPR, %struct.GPR* %2037, i32 0, i32 5
  %2039 = getelementptr inbounds %struct.Reg, %struct.Reg* %2038, i32 0, i32 0
  %RCX.i61 = bitcast %union.anon* %2039 to i64*
  %2040 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2041 = getelementptr inbounds %struct.GPR, %struct.GPR* %2040, i32 0, i32 15
  %2042 = getelementptr inbounds %struct.Reg, %struct.Reg* %2041, i32 0, i32 0
  %RBP.i62 = bitcast %union.anon* %2042 to i64*
  %2043 = load i64, i64* %RBP.i62
  %2044 = sub i64 %2043, 40
  %2045 = load i64, i64* %PC.i60
  %2046 = add i64 %2045, 4
  store i64 %2046, i64* %PC.i60
  %2047 = inttoptr i64 %2044 to i64*
  %2048 = load i64, i64* %2047
  store i64 %2048, i64* %RCX.i61, align 8
  store %struct.Memory* %loadMem_444a6b, %struct.Memory** %MEMORY
  %loadMem_444a6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2049 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2050 = getelementptr inbounds %struct.GPR, %struct.GPR* %2049, i32 0, i32 33
  %2051 = getelementptr inbounds %struct.Reg, %struct.Reg* %2050, i32 0, i32 0
  %PC.i57 = bitcast %union.anon* %2051 to i64*
  %2052 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2053 = getelementptr inbounds %struct.GPR, %struct.GPR* %2052, i32 0, i32 5
  %2054 = getelementptr inbounds %struct.Reg, %struct.Reg* %2053, i32 0, i32 0
  %RCX.i58 = bitcast %union.anon* %2054 to i64*
  %2055 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2056 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2055, i64 0, i64 1
  %YMM1.i59 = bitcast %union.VectorReg* %2056 to %"class.std::bitset"*
  %2057 = bitcast %"class.std::bitset"* %YMM1.i59 to i8*
  %2058 = bitcast %"class.std::bitset"* %YMM1.i59 to i8*
  %2059 = load i64, i64* %RCX.i58
  %2060 = load i64, i64* %PC.i57
  %2061 = add i64 %2060, 4
  store i64 %2061, i64* %PC.i57
  %2062 = bitcast i8* %2058 to <2 x float>*
  %2063 = load <2 x float>, <2 x float>* %2062, align 1
  %2064 = getelementptr inbounds i8, i8* %2058, i64 8
  %2065 = bitcast i8* %2064 to <2 x i32>*
  %2066 = load <2 x i32>, <2 x i32>* %2065, align 1
  %2067 = inttoptr i64 %2059 to float*
  %2068 = load float, float* %2067
  %2069 = extractelement <2 x float> %2063, i32 0
  %2070 = fmul float %2069, %2068
  %2071 = bitcast i8* %2057 to float*
  store float %2070, float* %2071, align 1
  %2072 = bitcast <2 x float> %2063 to <2 x i32>
  %2073 = extractelement <2 x i32> %2072, i32 1
  %2074 = getelementptr inbounds i8, i8* %2057, i64 4
  %2075 = bitcast i8* %2074 to i32*
  store i32 %2073, i32* %2075, align 1
  %2076 = extractelement <2 x i32> %2066, i32 0
  %2077 = getelementptr inbounds i8, i8* %2057, i64 8
  %2078 = bitcast i8* %2077 to i32*
  store i32 %2076, i32* %2078, align 1
  %2079 = extractelement <2 x i32> %2066, i32 1
  %2080 = getelementptr inbounds i8, i8* %2057, i64 12
  %2081 = bitcast i8* %2080 to i32*
  store i32 %2079, i32* %2081, align 1
  store %struct.Memory* %loadMem_444a6f, %struct.Memory** %MEMORY
  %loadMem_444a73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2082 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2083 = getelementptr inbounds %struct.GPR, %struct.GPR* %2082, i32 0, i32 33
  %2084 = getelementptr inbounds %struct.Reg, %struct.Reg* %2083, i32 0, i32 0
  %PC.i54 = bitcast %union.anon* %2084 to i64*
  %2085 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2086 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2085, i64 0, i64 0
  %YMM0.i55 = bitcast %union.VectorReg* %2086 to %"class.std::bitset"*
  %2087 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2088 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2087, i64 0, i64 1
  %XMM1.i56 = bitcast %union.VectorReg* %2088 to %union.vec128_t*
  %2089 = bitcast %"class.std::bitset"* %YMM0.i55 to i8*
  %2090 = bitcast %"class.std::bitset"* %YMM0.i55 to i8*
  %2091 = bitcast %union.vec128_t* %XMM1.i56 to i8*
  %2092 = load i64, i64* %PC.i54
  %2093 = add i64 %2092, 4
  store i64 %2093, i64* %PC.i54
  %2094 = bitcast i8* %2090 to <2 x float>*
  %2095 = load <2 x float>, <2 x float>* %2094, align 1
  %2096 = getelementptr inbounds i8, i8* %2090, i64 8
  %2097 = bitcast i8* %2096 to <2 x i32>*
  %2098 = load <2 x i32>, <2 x i32>* %2097, align 1
  %2099 = bitcast i8* %2091 to <2 x float>*
  %2100 = load <2 x float>, <2 x float>* %2099, align 1
  %2101 = extractelement <2 x float> %2095, i32 0
  %2102 = extractelement <2 x float> %2100, i32 0
  %2103 = fsub float %2101, %2102
  %2104 = bitcast i8* %2089 to float*
  store float %2103, float* %2104, align 1
  %2105 = bitcast <2 x float> %2095 to <2 x i32>
  %2106 = extractelement <2 x i32> %2105, i32 1
  %2107 = getelementptr inbounds i8, i8* %2089, i64 4
  %2108 = bitcast i8* %2107 to i32*
  store i32 %2106, i32* %2108, align 1
  %2109 = extractelement <2 x i32> %2098, i32 0
  %2110 = getelementptr inbounds i8, i8* %2089, i64 8
  %2111 = bitcast i8* %2110 to i32*
  store i32 %2109, i32* %2111, align 1
  %2112 = extractelement <2 x i32> %2098, i32 1
  %2113 = getelementptr inbounds i8, i8* %2089, i64 12
  %2114 = bitcast i8* %2113 to i32*
  store i32 %2112, i32* %2114, align 1
  store %struct.Memory* %loadMem_444a73, %struct.Memory** %MEMORY
  %loadMem_444a77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2116 = getelementptr inbounds %struct.GPR, %struct.GPR* %2115, i32 0, i32 33
  %2117 = getelementptr inbounds %struct.Reg, %struct.Reg* %2116, i32 0, i32 0
  %PC.i51 = bitcast %union.anon* %2117 to i64*
  %2118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2119 = getelementptr inbounds %struct.GPR, %struct.GPR* %2118, i32 0, i32 5
  %2120 = getelementptr inbounds %struct.Reg, %struct.Reg* %2119, i32 0, i32 0
  %RCX.i52 = bitcast %union.anon* %2120 to i64*
  %2121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2122 = getelementptr inbounds %struct.GPR, %struct.GPR* %2121, i32 0, i32 15
  %2123 = getelementptr inbounds %struct.Reg, %struct.Reg* %2122, i32 0, i32 0
  %RBP.i53 = bitcast %union.anon* %2123 to i64*
  %2124 = load i64, i64* %RBP.i53
  %2125 = sub i64 %2124, 32
  %2126 = load i64, i64* %PC.i51
  %2127 = add i64 %2126, 4
  store i64 %2127, i64* %PC.i51
  %2128 = inttoptr i64 %2125 to i64*
  %2129 = load i64, i64* %2128
  store i64 %2129, i64* %RCX.i52, align 8
  store %struct.Memory* %loadMem_444a77, %struct.Memory** %MEMORY
  %loadMem_444a7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2131 = getelementptr inbounds %struct.GPR, %struct.GPR* %2130, i32 0, i32 33
  %2132 = getelementptr inbounds %struct.Reg, %struct.Reg* %2131, i32 0, i32 0
  %PC.i48 = bitcast %union.anon* %2132 to i64*
  %2133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2134 = getelementptr inbounds %struct.GPR, %struct.GPR* %2133, i32 0, i32 5
  %2135 = getelementptr inbounds %struct.Reg, %struct.Reg* %2134, i32 0, i32 0
  %RCX.i49 = bitcast %union.anon* %2135 to i64*
  %2136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2137 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2136, i64 0, i64 0
  %XMM0.i50 = bitcast %union.VectorReg* %2137 to %union.vec128_t*
  %2138 = load i64, i64* %RCX.i49
  %2139 = bitcast %union.vec128_t* %XMM0.i50 to i8*
  %2140 = load i64, i64* %PC.i48
  %2141 = add i64 %2140, 4
  store i64 %2141, i64* %PC.i48
  %2142 = bitcast i8* %2139 to <2 x float>*
  %2143 = load <2 x float>, <2 x float>* %2142, align 1
  %2144 = extractelement <2 x float> %2143, i32 0
  %2145 = inttoptr i64 %2138 to float*
  store float %2144, float* %2145
  store %struct.Memory* %loadMem_444a7b, %struct.Memory** %MEMORY
  %loadMem_444a7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2147 = getelementptr inbounds %struct.GPR, %struct.GPR* %2146, i32 0, i32 33
  %2148 = getelementptr inbounds %struct.Reg, %struct.Reg* %2147, i32 0, i32 0
  %PC.i45 = bitcast %union.anon* %2148 to i64*
  %2149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2150 = getelementptr inbounds %struct.GPR, %struct.GPR* %2149, i32 0, i32 15
  %2151 = getelementptr inbounds %struct.Reg, %struct.Reg* %2150, i32 0, i32 0
  %RBP.i46 = bitcast %union.anon* %2151 to i64*
  %2152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2153 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2152, i64 0, i64 0
  %YMM0.i47 = bitcast %union.VectorReg* %2153 to %"class.std::bitset"*
  %2154 = bitcast %"class.std::bitset"* %YMM0.i47 to i8*
  %2155 = load i64, i64* %RBP.i46
  %2156 = sub i64 %2155, 68
  %2157 = load i64, i64* %PC.i45
  %2158 = add i64 %2157, 5
  store i64 %2158, i64* %PC.i45
  %2159 = inttoptr i64 %2156 to float*
  %2160 = load float, float* %2159
  %2161 = fpext float %2160 to double
  %2162 = bitcast i8* %2154 to double*
  store double %2161, double* %2162, align 1
  store %struct.Memory* %loadMem_444a7f, %struct.Memory** %MEMORY
  %loadMem_444a84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2164 = getelementptr inbounds %struct.GPR, %struct.GPR* %2163, i32 0, i32 33
  %2165 = getelementptr inbounds %struct.Reg, %struct.Reg* %2164, i32 0, i32 0
  %PC.i42 = bitcast %union.anon* %2165 to i64*
  %2166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2167 = getelementptr inbounds %struct.GPR, %struct.GPR* %2166, i32 0, i32 15
  %2168 = getelementptr inbounds %struct.Reg, %struct.Reg* %2167, i32 0, i32 0
  %RBP.i43 = bitcast %union.anon* %2168 to i64*
  %2169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2170 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2169, i64 0, i64 1
  %YMM1.i44 = bitcast %union.VectorReg* %2170 to %"class.std::bitset"*
  %2171 = bitcast %"class.std::bitset"* %YMM1.i44 to i8*
  %2172 = load i64, i64* %RBP.i43
  %2173 = sub i64 %2172, 60
  %2174 = load i64, i64* %PC.i42
  %2175 = add i64 %2174, 5
  store i64 %2175, i64* %PC.i42
  %2176 = inttoptr i64 %2173 to float*
  %2177 = load float, float* %2176
  %2178 = fpext float %2177 to double
  %2179 = bitcast i8* %2171 to double*
  store double %2178, double* %2179, align 1
  store %struct.Memory* %loadMem_444a84, %struct.Memory** %MEMORY
  %loadMem_444a89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2181 = getelementptr inbounds %struct.GPR, %struct.GPR* %2180, i32 0, i32 33
  %2182 = getelementptr inbounds %struct.Reg, %struct.Reg* %2181, i32 0, i32 0
  %PC.i39 = bitcast %union.anon* %2182 to i64*
  %2183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2184 = getelementptr inbounds %struct.GPR, %struct.GPR* %2183, i32 0, i32 15
  %2185 = getelementptr inbounds %struct.Reg, %struct.Reg* %2184, i32 0, i32 0
  %RBP.i40 = bitcast %union.anon* %2185 to i64*
  %2186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2187 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2186, i64 0, i64 0
  %XMM0.i41 = bitcast %union.VectorReg* %2187 to %union.vec128_t*
  %2188 = load i64, i64* %RBP.i40
  %2189 = sub i64 %2188, 80
  %2190 = bitcast %union.vec128_t* %XMM0.i41 to i8*
  %2191 = load i64, i64* %PC.i39
  %2192 = add i64 %2191, 5
  store i64 %2192, i64* %PC.i39
  %2193 = bitcast i8* %2190 to double*
  %2194 = load double, double* %2193, align 1
  %2195 = inttoptr i64 %2189 to double*
  store double %2194, double* %2195
  store %struct.Memory* %loadMem_444a89, %struct.Memory** %MEMORY
  %loadMem_444a8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2197 = getelementptr inbounds %struct.GPR, %struct.GPR* %2196, i32 0, i32 33
  %2198 = getelementptr inbounds %struct.Reg, %struct.Reg* %2197, i32 0, i32 0
  %PC.i36 = bitcast %union.anon* %2198 to i64*
  %2199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2200 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2199, i64 0, i64 0
  %YMM0.i37 = bitcast %union.VectorReg* %2200 to %"class.std::bitset"*
  %2201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2202 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2201, i64 0, i64 1
  %XMM1.i38 = bitcast %union.VectorReg* %2202 to %union.vec128_t*
  %2203 = bitcast %"class.std::bitset"* %YMM0.i37 to i8*
  %2204 = bitcast %union.vec128_t* %XMM1.i38 to i8*
  %2205 = load i64, i64* %PC.i36
  %2206 = add i64 %2205, 3
  store i64 %2206, i64* %PC.i36
  %2207 = bitcast i8* %2204 to <2 x i32>*
  %2208 = load <2 x i32>, <2 x i32>* %2207, align 1
  %2209 = getelementptr inbounds i8, i8* %2204, i64 8
  %2210 = bitcast i8* %2209 to <2 x i32>*
  %2211 = load <2 x i32>, <2 x i32>* %2210, align 1
  %2212 = extractelement <2 x i32> %2208, i32 0
  %2213 = bitcast i8* %2203 to i32*
  store i32 %2212, i32* %2213, align 1
  %2214 = extractelement <2 x i32> %2208, i32 1
  %2215 = getelementptr inbounds i8, i8* %2203, i64 4
  %2216 = bitcast i8* %2215 to i32*
  store i32 %2214, i32* %2216, align 1
  %2217 = extractelement <2 x i32> %2211, i32 0
  %2218 = getelementptr inbounds i8, i8* %2203, i64 8
  %2219 = bitcast i8* %2218 to i32*
  store i32 %2217, i32* %2219, align 1
  %2220 = extractelement <2 x i32> %2211, i32 1
  %2221 = getelementptr inbounds i8, i8* %2203, i64 12
  %2222 = bitcast i8* %2221 to i32*
  store i32 %2220, i32* %2222, align 1
  store %struct.Memory* %loadMem_444a8e, %struct.Memory** %MEMORY
  %loadMem_444a91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2224 = getelementptr inbounds %struct.GPR, %struct.GPR* %2223, i32 0, i32 33
  %2225 = getelementptr inbounds %struct.Reg, %struct.Reg* %2224, i32 0, i32 0
  %PC.i34 = bitcast %union.anon* %2225 to i64*
  %2226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2227 = getelementptr inbounds %struct.GPR, %struct.GPR* %2226, i32 0, i32 1
  %2228 = getelementptr inbounds %struct.Reg, %struct.Reg* %2227, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %2228 to i32*
  %2229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2230 = getelementptr inbounds %struct.GPR, %struct.GPR* %2229, i32 0, i32 15
  %2231 = getelementptr inbounds %struct.Reg, %struct.Reg* %2230, i32 0, i32 0
  %RBP.i35 = bitcast %union.anon* %2231 to i64*
  %2232 = load i64, i64* %RBP.i35
  %2233 = sub i64 %2232, 84
  %2234 = load i32, i32* %EAX.i
  %2235 = zext i32 %2234 to i64
  %2236 = load i64, i64* %PC.i34
  %2237 = add i64 %2236, 3
  store i64 %2237, i64* %PC.i34
  %2238 = inttoptr i64 %2233 to i32*
  store i32 %2234, i32* %2238
  store %struct.Memory* %loadMem_444a91, %struct.Memory** %MEMORY
  %loadMem1_444a94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2240 = getelementptr inbounds %struct.GPR, %struct.GPR* %2239, i32 0, i32 33
  %2241 = getelementptr inbounds %struct.Reg, %struct.Reg* %2240, i32 0, i32 0
  %PC.i33 = bitcast %union.anon* %2241 to i64*
  %2242 = load i64, i64* %PC.i33
  %2243 = add i64 %2242, -275364
  %2244 = load i64, i64* %PC.i33
  %2245 = add i64 %2244, 5
  %2246 = load i64, i64* %PC.i33
  %2247 = add i64 %2246, 5
  store i64 %2247, i64* %PC.i33
  %2248 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2249 = load i64, i64* %2248, align 8
  %2250 = add i64 %2249, -8
  %2251 = inttoptr i64 %2250 to i64*
  store i64 %2245, i64* %2251
  store i64 %2250, i64* %2248, align 8
  %2252 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2243, i64* %2252, align 8
  store %struct.Memory* %loadMem1_444a94, %struct.Memory** %MEMORY
  %loadMem2_444a94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_444a94 = load i64, i64* %3
  %call2_444a94 = call %struct.Memory* @ext_sqrt(%struct.State* %0, i64 %loadPC_444a94, %struct.Memory* %loadMem2_444a94)
  store %struct.Memory* %call2_444a94, %struct.Memory** %MEMORY
  %loadMem_444a99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2254 = getelementptr inbounds %struct.GPR, %struct.GPR* %2253, i32 0, i32 33
  %2255 = getelementptr inbounds %struct.Reg, %struct.Reg* %2254, i32 0, i32 0
  %PC.i30 = bitcast %union.anon* %2255 to i64*
  %2256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2257 = getelementptr inbounds %struct.GPR, %struct.GPR* %2256, i32 0, i32 15
  %2258 = getelementptr inbounds %struct.Reg, %struct.Reg* %2257, i32 0, i32 0
  %RBP.i31 = bitcast %union.anon* %2258 to i64*
  %2259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2260 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2259, i64 0, i64 1
  %YMM1.i32 = bitcast %union.VectorReg* %2260 to %"class.std::bitset"*
  %2261 = bitcast %"class.std::bitset"* %YMM1.i32 to i8*
  %2262 = load i64, i64* %RBP.i31
  %2263 = sub i64 %2262, 64
  %2264 = load i64, i64* %PC.i30
  %2265 = add i64 %2264, 5
  store i64 %2265, i64* %PC.i30
  %2266 = inttoptr i64 %2263 to float*
  %2267 = load float, float* %2266
  %2268 = fpext float %2267 to double
  %2269 = bitcast i8* %2261 to double*
  store double %2268, double* %2269, align 1
  store %struct.Memory* %loadMem_444a99, %struct.Memory** %MEMORY
  %loadMem_444a9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2271 = getelementptr inbounds %struct.GPR, %struct.GPR* %2270, i32 0, i32 33
  %2272 = getelementptr inbounds %struct.Reg, %struct.Reg* %2271, i32 0, i32 0
  %PC.i27 = bitcast %union.anon* %2272 to i64*
  %2273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2274 = getelementptr inbounds %struct.GPR, %struct.GPR* %2273, i32 0, i32 15
  %2275 = getelementptr inbounds %struct.Reg, %struct.Reg* %2274, i32 0, i32 0
  %RBP.i28 = bitcast %union.anon* %2275 to i64*
  %2276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2277 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2276, i64 0, i64 0
  %XMM0.i29 = bitcast %union.VectorReg* %2277 to %union.vec128_t*
  %2278 = load i64, i64* %RBP.i28
  %2279 = sub i64 %2278, 96
  %2280 = bitcast %union.vec128_t* %XMM0.i29 to i8*
  %2281 = load i64, i64* %PC.i27
  %2282 = add i64 %2281, 5
  store i64 %2282, i64* %PC.i27
  %2283 = bitcast i8* %2280 to double*
  %2284 = load double, double* %2283, align 1
  %2285 = inttoptr i64 %2279 to double*
  store double %2284, double* %2285
  store %struct.Memory* %loadMem_444a9e, %struct.Memory** %MEMORY
  %loadMem_444aa3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2287 = getelementptr inbounds %struct.GPR, %struct.GPR* %2286, i32 0, i32 33
  %2288 = getelementptr inbounds %struct.Reg, %struct.Reg* %2287, i32 0, i32 0
  %PC.i24 = bitcast %union.anon* %2288 to i64*
  %2289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2290 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2289, i64 0, i64 0
  %YMM0.i25 = bitcast %union.VectorReg* %2290 to %"class.std::bitset"*
  %2291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2292 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2291, i64 0, i64 1
  %XMM1.i26 = bitcast %union.VectorReg* %2292 to %union.vec128_t*
  %2293 = bitcast %"class.std::bitset"* %YMM0.i25 to i8*
  %2294 = bitcast %union.vec128_t* %XMM1.i26 to i8*
  %2295 = load i64, i64* %PC.i24
  %2296 = add i64 %2295, 3
  store i64 %2296, i64* %PC.i24
  %2297 = bitcast i8* %2294 to <2 x i32>*
  %2298 = load <2 x i32>, <2 x i32>* %2297, align 1
  %2299 = getelementptr inbounds i8, i8* %2294, i64 8
  %2300 = bitcast i8* %2299 to <2 x i32>*
  %2301 = load <2 x i32>, <2 x i32>* %2300, align 1
  %2302 = extractelement <2 x i32> %2298, i32 0
  %2303 = bitcast i8* %2293 to i32*
  store i32 %2302, i32* %2303, align 1
  %2304 = extractelement <2 x i32> %2298, i32 1
  %2305 = getelementptr inbounds i8, i8* %2293, i64 4
  %2306 = bitcast i8* %2305 to i32*
  store i32 %2304, i32* %2306, align 1
  %2307 = extractelement <2 x i32> %2301, i32 0
  %2308 = getelementptr inbounds i8, i8* %2293, i64 8
  %2309 = bitcast i8* %2308 to i32*
  store i32 %2307, i32* %2309, align 1
  %2310 = extractelement <2 x i32> %2301, i32 1
  %2311 = getelementptr inbounds i8, i8* %2293, i64 12
  %2312 = bitcast i8* %2311 to i32*
  store i32 %2310, i32* %2312, align 1
  store %struct.Memory* %loadMem_444aa3, %struct.Memory** %MEMORY
  %loadMem1_444aa6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2314 = getelementptr inbounds %struct.GPR, %struct.GPR* %2313, i32 0, i32 33
  %2315 = getelementptr inbounds %struct.Reg, %struct.Reg* %2314, i32 0, i32 0
  %PC.i23 = bitcast %union.anon* %2315 to i64*
  %2316 = load i64, i64* %PC.i23
  %2317 = add i64 %2316, -275382
  %2318 = load i64, i64* %PC.i23
  %2319 = add i64 %2318, 5
  %2320 = load i64, i64* %PC.i23
  %2321 = add i64 %2320, 5
  store i64 %2321, i64* %PC.i23
  %2322 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2323 = load i64, i64* %2322, align 8
  %2324 = add i64 %2323, -8
  %2325 = inttoptr i64 %2324 to i64*
  store i64 %2319, i64* %2325
  store i64 %2324, i64* %2322, align 8
  %2326 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2317, i64* %2326, align 8
  store %struct.Memory* %loadMem1_444aa6, %struct.Memory** %MEMORY
  %loadMem2_444aa6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_444aa6 = load i64, i64* %3
  %call2_444aa6 = call %struct.Memory* @ext_sqrt(%struct.State* %0, i64 %loadPC_444aa6, %struct.Memory* %loadMem2_444aa6)
  store %struct.Memory* %call2_444aa6, %struct.Memory** %MEMORY
  %loadMem_444aab = load %struct.Memory*, %struct.Memory** %MEMORY
  %2327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2328 = getelementptr inbounds %struct.GPR, %struct.GPR* %2327, i32 0, i32 33
  %2329 = getelementptr inbounds %struct.Reg, %struct.Reg* %2328, i32 0, i32 0
  %PC.i20 = bitcast %union.anon* %2329 to i64*
  %2330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2331 = getelementptr inbounds %struct.GPR, %struct.GPR* %2330, i32 0, i32 15
  %2332 = getelementptr inbounds %struct.Reg, %struct.Reg* %2331, i32 0, i32 0
  %RBP.i21 = bitcast %union.anon* %2332 to i64*
  %2333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2334 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2333, i64 0, i64 1
  %YMM1.i22 = bitcast %union.VectorReg* %2334 to %"class.std::bitset"*
  %2335 = bitcast %"class.std::bitset"* %YMM1.i22 to i8*
  %2336 = load i64, i64* %RBP.i21
  %2337 = sub i64 %2336, 96
  %2338 = load i64, i64* %PC.i20
  %2339 = add i64 %2338, 5
  store i64 %2339, i64* %PC.i20
  %2340 = inttoptr i64 %2337 to double*
  %2341 = load double, double* %2340
  %2342 = bitcast i8* %2335 to double*
  store double %2341, double* %2342, align 1
  %2343 = getelementptr inbounds i8, i8* %2335, i64 8
  %2344 = bitcast i8* %2343 to double*
  store double 0.000000e+00, double* %2344, align 1
  store %struct.Memory* %loadMem_444aab, %struct.Memory** %MEMORY
  %loadMem_444ab0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2346 = getelementptr inbounds %struct.GPR, %struct.GPR* %2345, i32 0, i32 33
  %2347 = getelementptr inbounds %struct.Reg, %struct.Reg* %2346, i32 0, i32 0
  %PC.i18 = bitcast %union.anon* %2347 to i64*
  %2348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2349 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2348, i64 0, i64 1
  %YMM1.i = bitcast %union.VectorReg* %2349 to %"class.std::bitset"*
  %2350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2351 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2350, i64 0, i64 0
  %XMM0.i19 = bitcast %union.VectorReg* %2351 to %union.vec128_t*
  %2352 = bitcast %"class.std::bitset"* %YMM1.i to i8*
  %2353 = bitcast %"class.std::bitset"* %YMM1.i to i8*
  %2354 = bitcast %union.vec128_t* %XMM0.i19 to i8*
  %2355 = load i64, i64* %PC.i18
  %2356 = add i64 %2355, 4
  store i64 %2356, i64* %PC.i18
  %2357 = bitcast i8* %2353 to double*
  %2358 = load double, double* %2357, align 1
  %2359 = getelementptr inbounds i8, i8* %2353, i64 8
  %2360 = bitcast i8* %2359 to i64*
  %2361 = load i64, i64* %2360, align 1
  %2362 = bitcast i8* %2354 to double*
  %2363 = load double, double* %2362, align 1
  %2364 = fmul double %2358, %2363
  %2365 = bitcast i8* %2352 to double*
  store double %2364, double* %2365, align 1
  %2366 = getelementptr inbounds i8, i8* %2352, i64 8
  %2367 = bitcast i8* %2366 to i64*
  store i64 %2361, i64* %2367, align 1
  store %struct.Memory* %loadMem_444ab0, %struct.Memory** %MEMORY
  %loadMem_444ab4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2369 = getelementptr inbounds %struct.GPR, %struct.GPR* %2368, i32 0, i32 33
  %2370 = getelementptr inbounds %struct.Reg, %struct.Reg* %2369, i32 0, i32 0
  %PC.i15 = bitcast %union.anon* %2370 to i64*
  %2371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2372 = getelementptr inbounds %struct.GPR, %struct.GPR* %2371, i32 0, i32 15
  %2373 = getelementptr inbounds %struct.Reg, %struct.Reg* %2372, i32 0, i32 0
  %RBP.i16 = bitcast %union.anon* %2373 to i64*
  %2374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2375 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2374, i64 0, i64 0
  %YMM0.i17 = bitcast %union.VectorReg* %2375 to %"class.std::bitset"*
  %2376 = bitcast %"class.std::bitset"* %YMM0.i17 to i8*
  %2377 = load i64, i64* %RBP.i16
  %2378 = sub i64 %2377, 80
  %2379 = load i64, i64* %PC.i15
  %2380 = add i64 %2379, 5
  store i64 %2380, i64* %PC.i15
  %2381 = inttoptr i64 %2378 to double*
  %2382 = load double, double* %2381
  %2383 = bitcast i8* %2376 to double*
  store double %2382, double* %2383, align 1
  %2384 = getelementptr inbounds i8, i8* %2376, i64 8
  %2385 = bitcast i8* %2384 to double*
  store double 0.000000e+00, double* %2385, align 1
  store %struct.Memory* %loadMem_444ab4, %struct.Memory** %MEMORY
  %loadMem_444ab9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2387 = getelementptr inbounds %struct.GPR, %struct.GPR* %2386, i32 0, i32 33
  %2388 = getelementptr inbounds %struct.Reg, %struct.Reg* %2387, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %2388 to i64*
  %2389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2390 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2389, i64 0, i64 0
  %YMM0.i14 = bitcast %union.VectorReg* %2390 to %"class.std::bitset"*
  %2391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2392 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2391, i64 0, i64 1
  %XMM1.i = bitcast %union.VectorReg* %2392 to %union.vec128_t*
  %2393 = bitcast %"class.std::bitset"* %YMM0.i14 to i8*
  %2394 = bitcast %"class.std::bitset"* %YMM0.i14 to i8*
  %2395 = bitcast %union.vec128_t* %XMM1.i to i8*
  %2396 = load i64, i64* %PC.i13
  %2397 = add i64 %2396, 4
  store i64 %2397, i64* %PC.i13
  %2398 = bitcast i8* %2394 to double*
  %2399 = load double, double* %2398, align 1
  %2400 = getelementptr inbounds i8, i8* %2394, i64 8
  %2401 = bitcast i8* %2400 to i64*
  %2402 = load i64, i64* %2401, align 1
  %2403 = bitcast i8* %2395 to double*
  %2404 = load double, double* %2403, align 1
  %2405 = fdiv double %2399, %2404
  %2406 = bitcast i8* %2393 to double*
  store double %2405, double* %2406, align 1
  %2407 = getelementptr inbounds i8, i8* %2393, i64 8
  %2408 = bitcast i8* %2407 to i64*
  store i64 %2402, i64* %2408, align 1
  store %struct.Memory* %loadMem_444ab9, %struct.Memory** %MEMORY
  %loadMem_444abd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2410 = getelementptr inbounds %struct.GPR, %struct.GPR* %2409, i32 0, i32 33
  %2411 = getelementptr inbounds %struct.Reg, %struct.Reg* %2410, i32 0, i32 0
  %PC.i11 = bitcast %union.anon* %2411 to i64*
  %2412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2413 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2412, i64 0, i64 0
  %YMM0.i = bitcast %union.VectorReg* %2413 to %"class.std::bitset"*
  %2414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2415 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2414, i64 0, i64 0
  %XMM0.i12 = bitcast %union.VectorReg* %2415 to %union.vec128_t*
  %2416 = bitcast %"class.std::bitset"* %YMM0.i to i8*
  %2417 = bitcast %union.vec128_t* %XMM0.i12 to i8*
  %2418 = load i64, i64* %PC.i11
  %2419 = add i64 %2418, 4
  store i64 %2419, i64* %PC.i11
  %2420 = bitcast i8* %2416 to <2 x i32>*
  %2421 = load <2 x i32>, <2 x i32>* %2420, align 1
  %2422 = getelementptr inbounds i8, i8* %2416, i64 8
  %2423 = bitcast i8* %2422 to <2 x i32>*
  %2424 = load <2 x i32>, <2 x i32>* %2423, align 1
  %2425 = bitcast i8* %2417 to double*
  %2426 = load double, double* %2425, align 1
  %2427 = fptrunc double %2426 to float
  %2428 = bitcast i8* %2416 to float*
  store float %2427, float* %2428, align 1
  %2429 = extractelement <2 x i32> %2421, i32 1
  %2430 = getelementptr inbounds i8, i8* %2416, i64 4
  %2431 = bitcast i8* %2430 to i32*
  store i32 %2429, i32* %2431, align 1
  %2432 = extractelement <2 x i32> %2424, i32 0
  %2433 = bitcast i8* %2422 to i32*
  store i32 %2432, i32* %2433, align 1
  %2434 = extractelement <2 x i32> %2424, i32 1
  %2435 = getelementptr inbounds i8, i8* %2416, i64 12
  %2436 = bitcast i8* %2435 to i32*
  store i32 %2434, i32* %2436, align 1
  store %struct.Memory* %loadMem_444abd, %struct.Memory** %MEMORY
  %loadMem_444ac1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2438 = getelementptr inbounds %struct.GPR, %struct.GPR* %2437, i32 0, i32 33
  %2439 = getelementptr inbounds %struct.Reg, %struct.Reg* %2438, i32 0, i32 0
  %PC.i8 = bitcast %union.anon* %2439 to i64*
  %2440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2441 = getelementptr inbounds %struct.GPR, %struct.GPR* %2440, i32 0, i32 5
  %2442 = getelementptr inbounds %struct.Reg, %struct.Reg* %2441, i32 0, i32 0
  %RCX.i9 = bitcast %union.anon* %2442 to i64*
  %2443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2444 = getelementptr inbounds %struct.GPR, %struct.GPR* %2443, i32 0, i32 15
  %2445 = getelementptr inbounds %struct.Reg, %struct.Reg* %2444, i32 0, i32 0
  %RBP.i10 = bitcast %union.anon* %2445 to i64*
  %2446 = load i64, i64* %RBP.i10
  %2447 = sub i64 %2446, 48
  %2448 = load i64, i64* %PC.i8
  %2449 = add i64 %2448, 4
  store i64 %2449, i64* %PC.i8
  %2450 = inttoptr i64 %2447 to i64*
  %2451 = load i64, i64* %2450
  store i64 %2451, i64* %RCX.i9, align 8
  store %struct.Memory* %loadMem_444ac1, %struct.Memory** %MEMORY
  %loadMem_444ac5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2453 = getelementptr inbounds %struct.GPR, %struct.GPR* %2452, i32 0, i32 33
  %2454 = getelementptr inbounds %struct.Reg, %struct.Reg* %2453, i32 0, i32 0
  %PC.i7 = bitcast %union.anon* %2454 to i64*
  %2455 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2456 = getelementptr inbounds %struct.GPR, %struct.GPR* %2455, i32 0, i32 5
  %2457 = getelementptr inbounds %struct.Reg, %struct.Reg* %2456, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %2457 to i64*
  %2458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2459 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2458, i64 0, i64 0
  %XMM0.i = bitcast %union.VectorReg* %2459 to %union.vec128_t*
  %2460 = load i64, i64* %RCX.i
  %2461 = bitcast %union.vec128_t* %XMM0.i to i8*
  %2462 = load i64, i64* %PC.i7
  %2463 = add i64 %2462, 4
  store i64 %2463, i64* %PC.i7
  %2464 = bitcast i8* %2461 to <2 x float>*
  %2465 = load <2 x float>, <2 x float>* %2464, align 1
  %2466 = extractelement <2 x float> %2465, i32 0
  %2467 = inttoptr i64 %2460 to float*
  store float %2466, float* %2467
  store %struct.Memory* %loadMem_444ac5, %struct.Memory** %MEMORY
  %loadMem_444ac9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2469 = getelementptr inbounds %struct.GPR, %struct.GPR* %2468, i32 0, i32 33
  %2470 = getelementptr inbounds %struct.Reg, %struct.Reg* %2469, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %2470 to i64*
  %2471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2472 = getelementptr inbounds %struct.GPR, %struct.GPR* %2471, i32 0, i32 1
  %2473 = getelementptr inbounds %struct.Reg, %struct.Reg* %2472, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %2473 to i64*
  %2474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2475 = getelementptr inbounds %struct.GPR, %struct.GPR* %2474, i32 0, i32 15
  %2476 = getelementptr inbounds %struct.Reg, %struct.Reg* %2475, i32 0, i32 0
  %RBP.i6 = bitcast %union.anon* %2476 to i64*
  %2477 = load i64, i64* %RBP.i6
  %2478 = sub i64 %2477, 84
  %2479 = load i64, i64* %PC.i5
  %2480 = add i64 %2479, 3
  store i64 %2480, i64* %PC.i5
  %2481 = inttoptr i64 %2478 to i32*
  %2482 = load i32, i32* %2481
  %2483 = zext i32 %2482 to i64
  store i64 %2483, i64* %RAX.i, align 8
  store %struct.Memory* %loadMem_444ac9, %struct.Memory** %MEMORY
  %loadMem_444acc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2485 = getelementptr inbounds %struct.GPR, %struct.GPR* %2484, i32 0, i32 33
  %2486 = getelementptr inbounds %struct.Reg, %struct.Reg* %2485, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %2486 to i64*
  %2487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2488 = getelementptr inbounds %struct.GPR, %struct.GPR* %2487, i32 0, i32 13
  %2489 = getelementptr inbounds %struct.Reg, %struct.Reg* %2488, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %2489 to i64*
  %2490 = load i64, i64* %RSP.i
  %2491 = load i64, i64* %PC.i4
  %2492 = add i64 %2491, 4
  store i64 %2492, i64* %PC.i4
  %2493 = add i64 96, %2490
  store i64 %2493, i64* %RSP.i, align 8
  %2494 = icmp ult i64 %2493, %2490
  %2495 = icmp ult i64 %2493, 96
  %2496 = or i1 %2494, %2495
  %2497 = zext i1 %2496 to i8
  %2498 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2497, i8* %2498, align 1
  %2499 = trunc i64 %2493 to i32
  %2500 = and i32 %2499, 255
  %2501 = call i32 @llvm.ctpop.i32(i32 %2500)
  %2502 = trunc i32 %2501 to i8
  %2503 = and i8 %2502, 1
  %2504 = xor i8 %2503, 1
  %2505 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2504, i8* %2505, align 1
  %2506 = xor i64 96, %2490
  %2507 = xor i64 %2506, %2493
  %2508 = lshr i64 %2507, 4
  %2509 = trunc i64 %2508 to i8
  %2510 = and i8 %2509, 1
  %2511 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2510, i8* %2511, align 1
  %2512 = icmp eq i64 %2493, 0
  %2513 = zext i1 %2512 to i8
  %2514 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2513, i8* %2514, align 1
  %2515 = lshr i64 %2493, 63
  %2516 = trunc i64 %2515 to i8
  %2517 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2516, i8* %2517, align 1
  %2518 = lshr i64 %2490, 63
  %2519 = xor i64 %2515, %2518
  %2520 = add i64 %2519, %2515
  %2521 = icmp eq i64 %2520, 2
  %2522 = zext i1 %2521 to i8
  %2523 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2522, i8* %2523, align 1
  store %struct.Memory* %loadMem_444acc, %struct.Memory** %MEMORY
  %loadMem_444ad0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2525 = getelementptr inbounds %struct.GPR, %struct.GPR* %2524, i32 0, i32 33
  %2526 = getelementptr inbounds %struct.Reg, %struct.Reg* %2525, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %2526 to i64*
  %2527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2528 = getelementptr inbounds %struct.GPR, %struct.GPR* %2527, i32 0, i32 15
  %2529 = getelementptr inbounds %struct.Reg, %struct.Reg* %2528, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %2529 to i64*
  %2530 = load i64, i64* %PC.i2
  %2531 = add i64 %2530, 1
  store i64 %2531, i64* %PC.i2
  %2532 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2533 = load i64, i64* %2532, align 8
  %2534 = add i64 %2533, 8
  %2535 = inttoptr i64 %2533 to i64*
  %2536 = load i64, i64* %2535
  store i64 %2536, i64* %RBP.i3, align 8
  store i64 %2534, i64* %2532, align 8
  store %struct.Memory* %loadMem_444ad0, %struct.Memory** %MEMORY
  %loadMem_444ad1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2537 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2538 = getelementptr inbounds %struct.GPR, %struct.GPR* %2537, i32 0, i32 33
  %2539 = getelementptr inbounds %struct.Reg, %struct.Reg* %2538, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %2539 to i64*
  %2540 = load i64, i64* %PC.i1
  %2541 = add i64 %2540, 1
  store i64 %2541, i64* %PC.i1
  %2542 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2543 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2544 = load i64, i64* %2543, align 8
  %2545 = inttoptr i64 %2544 to i64*
  %2546 = load i64, i64* %2545
  store i64 %2546, i64* %2542, align 8
  %2547 = add i64 %2544, 8
  store i64 %2547, i64* %2543, align 8
  store %struct.Memory* %loadMem_444ad1, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_444ad1
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

define %struct.Memory* @routine_movl__edx__MINUS0x14__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 20
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_movss__xmm0__MINUS0x38__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 56
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

define %struct.Memory* @routine_movss__xmm0__MINUS0x34__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 52
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

define %struct.Memory* @routine_movl__0x0__MINUS0x48__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 72
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x48__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jge_.L_44495b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x48__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 72
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
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

define %struct.Memory* @routine_addss_MINUS0x34__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 52
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

define %struct.Memory* @routine_addss_MINUS0x38__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 56
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

define %struct.Memory* @routine_movl__eax__MINUS0x48__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 72
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_444913(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cvtsi2ssl_MINUS0x14__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 20
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = bitcast i8* %11 to <2 x i32>*
  %17 = load <2 x i32>, <2 x i32>* %16, align 1
  %18 = getelementptr inbounds i8, i8* %11, i64 8
  %19 = bitcast i8* %18 to <2 x i32>*
  %20 = load <2 x i32>, <2 x i32>* %19, align 1
  %21 = inttoptr i64 %13 to i32*
  %22 = load i32, i32* %21
  %23 = sitofp i32 %22 to float
  %24 = bitcast i8* %11 to float*
  store float %23, float* %24, align 1
  %25 = extractelement <2 x i32> %17, i32 1
  %26 = getelementptr inbounds i8, i8* %11, i64 4
  %27 = bitcast i8* %26 to i32*
  store i32 %25, i32* %27, align 1
  %28 = extractelement <2 x i32> %20, i32 0
  %29 = bitcast i8* %18 to i32*
  store i32 %28, i32* %29, align 1
  %30 = extractelement <2 x i32> %20, i32 1
  %31 = getelementptr inbounds i8, i8* %11, i64 12
  %32 = bitcast i8* %31 to i32*
  store i32 %30, i32* %32, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss_MINUS0x34__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 52
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to float*
  %17 = load float, float* %16
  %18 = bitcast i8* %11 to float*
  store float %17, float* %18, align 1
  %19 = getelementptr inbounds i8, i8* %11, i64 4
  %20 = bitcast i8* %19 to float*
  store float 0.000000e+00, float* %20, align 1
  %21 = getelementptr inbounds i8, i8* %11, i64 8
  %22 = bitcast i8* %21 to float*
  store float 0.000000e+00, float* %22, align 1
  %23 = getelementptr inbounds i8, i8* %11, i64 12
  %24 = bitcast i8* %23 to float*
  store float 0.000000e+00, float* %24, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_divss__xmm1___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %12 = bitcast %union.vec128_t* %XMM1 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = bitcast i8* %11 to <2 x float>*
  %16 = load <2 x float>, <2 x float>* %15, align 1
  %17 = getelementptr inbounds i8, i8* %11, i64 8
  %18 = bitcast i8* %17 to <2 x i32>*
  %19 = load <2 x i32>, <2 x i32>* %18, align 1
  %20 = bitcast i8* %12 to <2 x float>*
  %21 = load <2 x float>, <2 x float>* %20, align 1
  %22 = extractelement <2 x float> %16, i32 0
  %23 = extractelement <2 x float> %21, i32 0
  %24 = fdiv float %22, %23
  %25 = bitcast i8* %10 to float*
  store float %24, float* %25, align 1
  %26 = bitcast <2 x float> %16 to <2 x i32>
  %27 = extractelement <2 x i32> %26, i32 1
  %28 = getelementptr inbounds i8, i8* %10, i64 4
  %29 = bitcast i8* %28 to i32*
  store i32 %27, i32* %29, align 1
  %30 = extractelement <2 x i32> %19, i32 0
  %31 = getelementptr inbounds i8, i8* %10, i64 8
  %32 = bitcast i8* %31 to i32*
  store i32 %30, i32* %32, align 1
  %33 = extractelement <2 x i32> %19, i32 1
  %34 = getelementptr inbounds i8, i8* %10, i64 12
  %35 = bitcast i8* %34 to i32*
  store i32 %33, i32* %35, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm2__MINUS0x34__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 52
  %13 = bitcast %union.vec128_t* %XMM2 to i8*
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

define %struct.Memory* @routine_movss_MINUS0x38__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 56
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to float*
  %17 = load float, float* %16
  %18 = bitcast i8* %11 to float*
  store float %17, float* %18, align 1
  %19 = getelementptr inbounds i8, i8* %11, i64 4
  %20 = bitcast i8* %19 to float*
  store float 0.000000e+00, float* %20, align 1
  %21 = getelementptr inbounds i8, i8* %11, i64 8
  %22 = bitcast i8* %21 to float*
  store float 0.000000e+00, float* %22, align 1
  %23 = getelementptr inbounds i8, i8* %11, i64 12
  %24 = bitcast i8* %23 to float*
  store float 0.000000e+00, float* %24, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm2__MINUS0x38__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 56
  %13 = bitcast %union.vec128_t* %XMM2 to i8*
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

define %struct.Memory* @routine_movss__xmm0__MINUS0x44__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 68
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

define %struct.Memory* @routine_movss__xmm0__MINUS0x40__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 64
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

define %struct.Memory* @routine_movss__xmm0__MINUS0x3c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 60
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

define %struct.Memory* @routine_jge_.L_444a4a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_subss_MINUS0x34__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 52
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
  %25 = fsub float %24, %23
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

define %struct.Memory* @routine_movss___rax__rcx_4____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM1 to i8*
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

define %struct.Memory* @routine_subss_MINUS0x34__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 52
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
  %25 = fsub float %24, %23
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

define %struct.Memory* @routine_mulss__xmm1___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = bitcast %union.vec128_t* %XMM1 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = bitcast i8* %11 to <2 x float>*
  %16 = load <2 x float>, <2 x float>* %15, align 1
  %17 = getelementptr inbounds i8, i8* %11, i64 8
  %18 = bitcast i8* %17 to <2 x i32>*
  %19 = load <2 x i32>, <2 x i32>* %18, align 1
  %20 = bitcast i8* %12 to <2 x float>*
  %21 = load <2 x float>, <2 x float>* %20, align 1
  %22 = extractelement <2 x float> %16, i32 0
  %23 = extractelement <2 x float> %21, i32 0
  %24 = fmul float %22, %23
  %25 = bitcast i8* %10 to float*
  store float %24, float* %25, align 1
  %26 = bitcast <2 x float> %16 to <2 x i32>
  %27 = extractelement <2 x i32> %26, i32 1
  %28 = getelementptr inbounds i8, i8* %10, i64 4
  %29 = bitcast i8* %28 to i32*
  store i32 %27, i32* %29, align 1
  %30 = extractelement <2 x i32> %19, i32 0
  %31 = getelementptr inbounds i8, i8* %10, i64 8
  %32 = bitcast i8* %31 to i32*
  store i32 %30, i32* %32, align 1
  %33 = extractelement <2 x i32> %19, i32 1
  %34 = getelementptr inbounds i8, i8* %10, i64 12
  %35 = bitcast i8* %34 to i32*
  store i32 %33, i32* %35, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addss_MINUS0x3c__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 60
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

define %struct.Memory* @routine_subss_MINUS0x38__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 56
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
  %25 = fsub float %24, %23
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

define %struct.Memory* @routine_addss_MINUS0x40__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 64
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

define %struct.Memory* @routine_subss_MINUS0x38__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 56
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
  %25 = fsub float %24, %23
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

define %struct.Memory* @routine_addss_MINUS0x44__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 68
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

define %struct.Memory* @routine_jmpq_.L_44499a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x1___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 1, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss_MINUS0x44__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 68
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to float*
  %17 = load float, float* %16
  %18 = bitcast i8* %11 to float*
  store float %17, float* %18, align 1
  %19 = getelementptr inbounds i8, i8* %11, i64 4
  %20 = bitcast i8* %19 to float*
  store float 0.000000e+00, float* %20, align 1
  %21 = getelementptr inbounds i8, i8* %11, i64 8
  %22 = bitcast i8* %21 to float*
  store float 0.000000e+00, float* %22, align 1
  %23 = getelementptr inbounds i8, i8* %11, i64 12
  %24 = bitcast i8* %23 to float*
  store float 0.000000e+00, float* %24, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_divss_MINUS0x3c__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 60
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
  %25 = fdiv float %24, %23
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

define %struct.Memory* @routine_movss__xmm0____rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RCX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RCX
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

define %struct.Memory* @routine_movss_MINUS0x38__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 56
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to float*
  %17 = load float, float* %16
  %18 = bitcast i8* %11 to float*
  store float %17, float* %18, align 1
  %19 = getelementptr inbounds i8, i8* %11, i64 4
  %20 = bitcast i8* %19 to float*
  store float 0.000000e+00, float* %20, align 1
  %21 = getelementptr inbounds i8, i8* %11, i64 8
  %22 = bitcast i8* %21 to float*
  store float 0.000000e+00, float* %22, align 1
  %23 = getelementptr inbounds i8, i8* %11, i64 12
  %24 = bitcast i8* %23 to float*
  store float 0.000000e+00, float* %24, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss_MINUS0x34__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 52
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to float*
  %17 = load float, float* %16
  %18 = bitcast i8* %11 to float*
  store float %17, float* %18, align 1
  %19 = getelementptr inbounds i8, i8* %11, i64 4
  %20 = bitcast i8* %19 to float*
  store float 0.000000e+00, float* %20, align 1
  %21 = getelementptr inbounds i8, i8* %11, i64 8
  %22 = bitcast i8* %21 to float*
  store float 0.000000e+00, float* %22, align 1
  %23 = getelementptr inbounds i8, i8* %11, i64 12
  %24 = bitcast i8* %23 to float*
  store float 0.000000e+00, float* %24, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulss___rcx____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RCX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %13 = load i64, i64* %RCX
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
  %24 = fmul float %23, %22
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

define %struct.Memory* @routine_subss__xmm1___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = bitcast %union.vec128_t* %XMM1 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = bitcast i8* %11 to <2 x float>*
  %16 = load <2 x float>, <2 x float>* %15, align 1
  %17 = getelementptr inbounds i8, i8* %11, i64 8
  %18 = bitcast i8* %17 to <2 x i32>*
  %19 = load <2 x i32>, <2 x i32>* %18, align 1
  %20 = bitcast i8* %12 to <2 x float>*
  %21 = load <2 x float>, <2 x float>* %20, align 1
  %22 = extractelement <2 x float> %16, i32 0
  %23 = extractelement <2 x float> %21, i32 0
  %24 = fsub float %22, %23
  %25 = bitcast i8* %10 to float*
  store float %24, float* %25, align 1
  %26 = bitcast <2 x float> %16 to <2 x i32>
  %27 = extractelement <2 x i32> %26, i32 1
  %28 = getelementptr inbounds i8, i8* %10, i64 4
  %29 = bitcast i8* %28 to i32*
  store i32 %27, i32* %29, align 1
  %30 = extractelement <2 x i32> %19, i32 0
  %31 = getelementptr inbounds i8, i8* %10, i64 8
  %32 = bitcast i8* %31 to i32*
  store i32 %30, i32* %32, align 1
  %33 = extractelement <2 x i32> %19, i32 1
  %34 = getelementptr inbounds i8, i8* %10, i64 12
  %35 = bitcast i8* %34 to i32*
  store i32 %33, i32* %35, align 1
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

define %struct.Memory* @routine_cvtss2sd_MINUS0x44__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 68
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to float*
  %17 = load float, float* %16
  %18 = fpext float %17 to double
  %19 = bitcast i8* %11 to double*
  store double %18, double* %19, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvtss2sd_MINUS0x3c__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 60
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to float*
  %17 = load float, float* %16
  %18 = fpext float %17 to double
  %19 = bitcast i8* %11 to double*
  store double %18, double* %19, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x50__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 80
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movaps__xmm1___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %11 = bitcast %union.vec128_t* %XMM1 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 3
  store i64 %13, i64* %PC
  %14 = bitcast i8* %11 to <2 x i32>*
  %15 = load <2 x i32>, <2 x i32>* %14, align 1
  %16 = getelementptr inbounds i8, i8* %11, i64 8
  %17 = bitcast i8* %16 to <2 x i32>*
  %18 = load <2 x i32>, <2 x i32>* %17, align 1
  %19 = extractelement <2 x i32> %15, i32 0
  %20 = bitcast i8* %10 to i32*
  store i32 %19, i32* %20, align 1
  %21 = extractelement <2 x i32> %15, i32 1
  %22 = getelementptr inbounds i8, i8* %10, i64 4
  %23 = bitcast i8* %22 to i32*
  store i32 %21, i32* %23, align 1
  %24 = extractelement <2 x i32> %18, i32 0
  %25 = getelementptr inbounds i8, i8* %10, i64 8
  %26 = bitcast i8* %25 to i32*
  store i32 %24, i32* %26, align 1
  %27 = extractelement <2 x i32> %18, i32 1
  %28 = getelementptr inbounds i8, i8* %10, i64 12
  %29 = bitcast i8* %28 to i32*
  store i32 %27, i32* %29, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x54__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 84
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.sqrt_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cvtss2sd_MINUS0x40__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to float*
  %17 = load float, float* %16
  %18 = fpext float %17 to double
  %19 = bitcast i8* %11 to double*
  store double %18, double* %19, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x60__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 96
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x60__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 96
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to double*
  %17 = load double, double* %16
  %18 = bitcast i8* %11 to double*
  store double %17, double* %18, align 1
  %19 = getelementptr inbounds i8, i8* %11, i64 8
  %20 = bitcast i8* %19 to double*
  store double 0.000000e+00, double* %20, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd__xmm0___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = bitcast %union.vec128_t* %XMM0 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = bitcast i8* %11 to double*
  %16 = load double, double* %15, align 1
  %17 = getelementptr inbounds i8, i8* %11, i64 8
  %18 = bitcast i8* %17 to i64*
  %19 = load i64, i64* %18, align 1
  %20 = bitcast i8* %12 to double*
  %21 = load double, double* %20, align 1
  %22 = fmul double %16, %21
  %23 = bitcast i8* %10 to double*
  store double %22, double* %23, align 1
  %24 = getelementptr inbounds i8, i8* %10, i64 8
  %25 = bitcast i8* %24 to i64*
  store i64 %19, i64* %25, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x50__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 80
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to double*
  %17 = load double, double* %16
  %18 = bitcast i8* %11 to double*
  store double %17, double* %18, align 1
  %19 = getelementptr inbounds i8, i8* %11, i64 8
  %20 = bitcast i8* %19 to double*
  store double 0.000000e+00, double* %20, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_divsd__xmm1___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = bitcast %union.vec128_t* %XMM1 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = bitcast i8* %11 to double*
  %16 = load double, double* %15, align 1
  %17 = getelementptr inbounds i8, i8* %11, i64 8
  %18 = bitcast i8* %17 to i64*
  %19 = load i64, i64* %18, align 1
  %20 = bitcast i8* %12 to double*
  %21 = load double, double* %20, align 1
  %22 = fdiv double %16, %21
  %23 = bitcast i8* %10 to double*
  store double %22, double* %23, align 1
  %24 = getelementptr inbounds i8, i8* %10, i64 8
  %25 = bitcast i8* %24 to i64*
  store i64 %19, i64* %25, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvtsd2ss__xmm0___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = bitcast %union.vec128_t* %XMM0 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = bitcast i8* %10 to <2 x i32>*
  %15 = load <2 x i32>, <2 x i32>* %14, align 1
  %16 = getelementptr inbounds i8, i8* %10, i64 8
  %17 = bitcast i8* %16 to <2 x i32>*
  %18 = load <2 x i32>, <2 x i32>* %17, align 1
  %19 = bitcast i8* %11 to double*
  %20 = load double, double* %19, align 1
  %21 = fptrunc double %20 to float
  %22 = bitcast i8* %10 to float*
  store float %21, float* %22, align 1
  %23 = extractelement <2 x i32> %15, i32 1
  %24 = getelementptr inbounds i8, i8* %10, i64 4
  %25 = bitcast i8* %24 to i32*
  store i32 %23, i32* %25, align 1
  %26 = extractelement <2 x i32> %18, i32 0
  %27 = bitcast i8* %16 to i32*
  store i32 %26, i32* %27, align 1
  %28 = extractelement <2 x i32> %18, i32 1
  %29 = getelementptr inbounds i8, i8* %10, i64 12
  %30 = bitcast i8* %29 to i32*
  store i32 %28, i32* %30, align 1
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

define %struct.Memory* @routine_movl_MINUS0x54__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 84
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
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
