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

declare %struct.Memory* @sub_4015c0.tolower_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_4013f0.toupper_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @SAMizeAlignmentByGapFrac(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_403390 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_403390, %struct.Memory** %MEMORY
  %loadMem_403391 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i343 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i344 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i345 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i344
  %27 = load i64, i64* %PC.i343
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i343
  store i64 %26, i64* %RBP.i345, align 8
  store %struct.Memory* %loadMem_403391, %struct.Memory** %MEMORY
  %loadMem_403394 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i496 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i497 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i497
  %36 = load i64, i64* %PC.i496
  %37 = add i64 %36, 4
  store i64 %37, i64* %PC.i496
  %38 = sub i64 %35, 32
  store i64 %38, i64* %RSP.i497, align 8
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
  store %struct.Memory* %loadMem_403394, %struct.Memory** %MEMORY
  %loadMem_403398 = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i493 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 11
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %RDI.i494 = bitcast %union.anon* %72 to i64*
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %74 = getelementptr inbounds %struct.GPR, %struct.GPR* %73, i32 0, i32 15
  %75 = getelementptr inbounds %struct.Reg, %struct.Reg* %74, i32 0, i32 0
  %RBP.i495 = bitcast %union.anon* %75 to i64*
  %76 = load i64, i64* %RBP.i495
  %77 = sub i64 %76, 8
  %78 = load i64, i64* %RDI.i494
  %79 = load i64, i64* %PC.i493
  %80 = add i64 %79, 4
  store i64 %80, i64* %PC.i493
  %81 = inttoptr i64 %77 to i64*
  store i64 %78, i64* %81
  store %struct.Memory* %loadMem_403398, %struct.Memory** %MEMORY
  %loadMem_40339c = load %struct.Memory*, %struct.Memory** %MEMORY
  %82 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %83 = getelementptr inbounds %struct.GPR, %struct.GPR* %82, i32 0, i32 33
  %84 = getelementptr inbounds %struct.Reg, %struct.Reg* %83, i32 0, i32 0
  %PC.i491 = bitcast %union.anon* %84 to i64*
  %85 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %86 = getelementptr inbounds %struct.GPR, %struct.GPR* %85, i32 0, i32 9
  %87 = getelementptr inbounds %struct.Reg, %struct.Reg* %86, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %87 to i32*
  %88 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %89 = getelementptr inbounds %struct.GPR, %struct.GPR* %88, i32 0, i32 15
  %90 = getelementptr inbounds %struct.Reg, %struct.Reg* %89, i32 0, i32 0
  %RBP.i492 = bitcast %union.anon* %90 to i64*
  %91 = load i64, i64* %RBP.i492
  %92 = sub i64 %91, 12
  %93 = load i32, i32* %ESI.i
  %94 = zext i32 %93 to i64
  %95 = load i64, i64* %PC.i491
  %96 = add i64 %95, 3
  store i64 %96, i64* %PC.i491
  %97 = inttoptr i64 %92 to i32*
  store i32 %93, i32* %97
  store %struct.Memory* %loadMem_40339c, %struct.Memory** %MEMORY
  %loadMem_40339f = load %struct.Memory*, %struct.Memory** %MEMORY
  %98 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %99 = getelementptr inbounds %struct.GPR, %struct.GPR* %98, i32 0, i32 33
  %100 = getelementptr inbounds %struct.Reg, %struct.Reg* %99, i32 0, i32 0
  %PC.i488 = bitcast %union.anon* %100 to i64*
  %101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %102 = getelementptr inbounds %struct.GPR, %struct.GPR* %101, i32 0, i32 7
  %103 = getelementptr inbounds %struct.Reg, %struct.Reg* %102, i32 0, i32 0
  %EDX.i489 = bitcast %union.anon* %103 to i32*
  %104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %105 = getelementptr inbounds %struct.GPR, %struct.GPR* %104, i32 0, i32 15
  %106 = getelementptr inbounds %struct.Reg, %struct.Reg* %105, i32 0, i32 0
  %RBP.i490 = bitcast %union.anon* %106 to i64*
  %107 = load i64, i64* %RBP.i490
  %108 = sub i64 %107, 16
  %109 = load i32, i32* %EDX.i489
  %110 = zext i32 %109 to i64
  %111 = load i64, i64* %PC.i488
  %112 = add i64 %111, 3
  store i64 %112, i64* %PC.i488
  %113 = inttoptr i64 %108 to i32*
  store i32 %109, i32* %113
  store %struct.Memory* %loadMem_40339f, %struct.Memory** %MEMORY
  %loadMem_4033a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %115 = getelementptr inbounds %struct.GPR, %struct.GPR* %114, i32 0, i32 33
  %116 = getelementptr inbounds %struct.Reg, %struct.Reg* %115, i32 0, i32 0
  %PC.i485 = bitcast %union.anon* %116 to i64*
  %117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %118 = getelementptr inbounds %struct.GPR, %struct.GPR* %117, i32 0, i32 15
  %119 = getelementptr inbounds %struct.Reg, %struct.Reg* %118, i32 0, i32 0
  %RBP.i486 = bitcast %union.anon* %119 to i64*
  %120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %121 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %120, i64 0, i64 0
  %XMM0.i487 = bitcast %union.VectorReg* %121 to %union.vec128_t*
  %122 = load i64, i64* %RBP.i486
  %123 = sub i64 %122, 20
  %124 = bitcast %union.vec128_t* %XMM0.i487 to i8*
  %125 = load i64, i64* %PC.i485
  %126 = add i64 %125, 5
  store i64 %126, i64* %PC.i485
  %127 = bitcast i8* %124 to <2 x float>*
  %128 = load <2 x float>, <2 x float>* %127, align 1
  %129 = extractelement <2 x float> %128, i32 0
  %130 = inttoptr i64 %123 to float*
  store float %129, float* %130
  store %struct.Memory* %loadMem_4033a2, %struct.Memory** %MEMORY
  %loadMem_4033a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %132 = getelementptr inbounds %struct.GPR, %struct.GPR* %131, i32 0, i32 33
  %133 = getelementptr inbounds %struct.Reg, %struct.Reg* %132, i32 0, i32 0
  %PC.i483 = bitcast %union.anon* %133 to i64*
  %134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %135 = getelementptr inbounds %struct.GPR, %struct.GPR* %134, i32 0, i32 15
  %136 = getelementptr inbounds %struct.Reg, %struct.Reg* %135, i32 0, i32 0
  %RBP.i484 = bitcast %union.anon* %136 to i64*
  %137 = load i64, i64* %RBP.i484
  %138 = sub i64 %137, 24
  %139 = load i64, i64* %PC.i483
  %140 = add i64 %139, 7
  store i64 %140, i64* %PC.i483
  %141 = inttoptr i64 %138 to i32*
  store i32 0, i32* %141
  store %struct.Memory* %loadMem_4033a7, %struct.Memory** %MEMORY
  br label %block_.L_4033ae

block_.L_4033ae:                                  ; preds = %block_.L_4036a4, %entry
  %loadMem_4033ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %143 = getelementptr inbounds %struct.GPR, %struct.GPR* %142, i32 0, i32 33
  %144 = getelementptr inbounds %struct.Reg, %struct.Reg* %143, i32 0, i32 0
  %PC.i480 = bitcast %union.anon* %144 to i64*
  %145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %146 = getelementptr inbounds %struct.GPR, %struct.GPR* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.Reg, %struct.Reg* %146, i32 0, i32 0
  %RAX.i481 = bitcast %union.anon* %147 to i64*
  %148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %149 = getelementptr inbounds %struct.GPR, %struct.GPR* %148, i32 0, i32 15
  %150 = getelementptr inbounds %struct.Reg, %struct.Reg* %149, i32 0, i32 0
  %RBP.i482 = bitcast %union.anon* %150 to i64*
  %151 = load i64, i64* %RBP.i482
  %152 = sub i64 %151, 24
  %153 = load i64, i64* %PC.i480
  %154 = add i64 %153, 3
  store i64 %154, i64* %PC.i480
  %155 = inttoptr i64 %152 to i32*
  %156 = load i32, i32* %155
  %157 = zext i32 %156 to i64
  store i64 %157, i64* %RAX.i481, align 8
  store %struct.Memory* %loadMem_4033ae, %struct.Memory** %MEMORY
  %loadMem_4033b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %159 = getelementptr inbounds %struct.GPR, %struct.GPR* %158, i32 0, i32 33
  %160 = getelementptr inbounds %struct.Reg, %struct.Reg* %159, i32 0, i32 0
  %PC.i477 = bitcast %union.anon* %160 to i64*
  %161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %162 = getelementptr inbounds %struct.GPR, %struct.GPR* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.Reg, %struct.Reg* %162, i32 0, i32 0
  %EAX.i478 = bitcast %union.anon* %163 to i32*
  %164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %165 = getelementptr inbounds %struct.GPR, %struct.GPR* %164, i32 0, i32 15
  %166 = getelementptr inbounds %struct.Reg, %struct.Reg* %165, i32 0, i32 0
  %RBP.i479 = bitcast %union.anon* %166 to i64*
  %167 = load i32, i32* %EAX.i478
  %168 = zext i32 %167 to i64
  %169 = load i64, i64* %RBP.i479
  %170 = sub i64 %169, 16
  %171 = load i64, i64* %PC.i477
  %172 = add i64 %171, 3
  store i64 %172, i64* %PC.i477
  %173 = inttoptr i64 %170 to i32*
  %174 = load i32, i32* %173
  %175 = sub i32 %167, %174
  %176 = icmp ult i32 %167, %174
  %177 = zext i1 %176 to i8
  %178 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %177, i8* %178, align 1
  %179 = and i32 %175, 255
  %180 = call i32 @llvm.ctpop.i32(i32 %179)
  %181 = trunc i32 %180 to i8
  %182 = and i8 %181, 1
  %183 = xor i8 %182, 1
  %184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %183, i8* %184, align 1
  %185 = xor i32 %174, %167
  %186 = xor i32 %185, %175
  %187 = lshr i32 %186, 4
  %188 = trunc i32 %187 to i8
  %189 = and i8 %188, 1
  %190 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %189, i8* %190, align 1
  %191 = icmp eq i32 %175, 0
  %192 = zext i1 %191 to i8
  %193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %192, i8* %193, align 1
  %194 = lshr i32 %175, 31
  %195 = trunc i32 %194 to i8
  %196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %195, i8* %196, align 1
  %197 = lshr i32 %167, 31
  %198 = lshr i32 %174, 31
  %199 = xor i32 %198, %197
  %200 = xor i32 %194, %197
  %201 = add i32 %200, %199
  %202 = icmp eq i32 %201, 2
  %203 = zext i1 %202 to i8
  %204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %203, i8* %204, align 1
  store %struct.Memory* %loadMem_4033b1, %struct.Memory** %MEMORY
  %loadMem_4033b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %206 = getelementptr inbounds %struct.GPR, %struct.GPR* %205, i32 0, i32 33
  %207 = getelementptr inbounds %struct.Reg, %struct.Reg* %206, i32 0, i32 0
  %PC.i476 = bitcast %union.anon* %207 to i64*
  %208 = load i64, i64* %PC.i476
  %209 = add i64 %208, 766
  %210 = load i64, i64* %PC.i476
  %211 = add i64 %210, 6
  %212 = load i64, i64* %PC.i476
  %213 = add i64 %212, 6
  store i64 %213, i64* %PC.i476
  %214 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %215 = load i8, i8* %214, align 1
  %216 = icmp ne i8 %215, 0
  %217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %218 = load i8, i8* %217, align 1
  %219 = icmp ne i8 %218, 0
  %220 = xor i1 %216, %219
  %221 = xor i1 %220, true
  %222 = zext i1 %221 to i8
  store i8 %222, i8* %BRANCH_TAKEN, align 1
  %223 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %224 = select i1 %220, i64 %211, i64 %209
  store i64 %224, i64* %223, align 8
  store %struct.Memory* %loadMem_4033b4, %struct.Memory** %MEMORY
  %loadBr_4033b4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4033b4 = icmp eq i8 %loadBr_4033b4, 1
  br i1 %cmpBr_4033b4, label %block_.L_4036b2, label %block_4033ba

block_4033ba:                                     ; preds = %block_.L_4033ae
  %loadMem_4033ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %226 = getelementptr inbounds %struct.GPR, %struct.GPR* %225, i32 0, i32 33
  %227 = getelementptr inbounds %struct.Reg, %struct.Reg* %226, i32 0, i32 0
  %PC.i474 = bitcast %union.anon* %227 to i64*
  %228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %229 = getelementptr inbounds %struct.GPR, %struct.GPR* %228, i32 0, i32 15
  %230 = getelementptr inbounds %struct.Reg, %struct.Reg* %229, i32 0, i32 0
  %RBP.i475 = bitcast %union.anon* %230 to i64*
  %231 = load i64, i64* %RBP.i475
  %232 = sub i64 %231, 32
  %233 = load i64, i64* %PC.i474
  %234 = add i64 %233, 7
  store i64 %234, i64* %PC.i474
  %235 = inttoptr i64 %232 to i32*
  store i32 0, i32* %235
  store %struct.Memory* %loadMem_4033ba, %struct.Memory** %MEMORY
  %loadMem_4033c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %237 = getelementptr inbounds %struct.GPR, %struct.GPR* %236, i32 0, i32 33
  %238 = getelementptr inbounds %struct.Reg, %struct.Reg* %237, i32 0, i32 0
  %PC.i472 = bitcast %union.anon* %238 to i64*
  %239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %240 = getelementptr inbounds %struct.GPR, %struct.GPR* %239, i32 0, i32 15
  %241 = getelementptr inbounds %struct.Reg, %struct.Reg* %240, i32 0, i32 0
  %RBP.i473 = bitcast %union.anon* %241 to i64*
  %242 = load i64, i64* %RBP.i473
  %243 = sub i64 %242, 28
  %244 = load i64, i64* %PC.i472
  %245 = add i64 %244, 7
  store i64 %245, i64* %PC.i472
  %246 = inttoptr i64 %243 to i32*
  store i32 0, i32* %246
  store %struct.Memory* %loadMem_4033c1, %struct.Memory** %MEMORY
  br label %block_.L_4033c8

block_.L_4033c8:                                  ; preds = %block_.L_403473, %block_4033ba
  %loadMem_4033c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %248 = getelementptr inbounds %struct.GPR, %struct.GPR* %247, i32 0, i32 33
  %249 = getelementptr inbounds %struct.Reg, %struct.Reg* %248, i32 0, i32 0
  %PC.i469 = bitcast %union.anon* %249 to i64*
  %250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %251 = getelementptr inbounds %struct.GPR, %struct.GPR* %250, i32 0, i32 1
  %252 = getelementptr inbounds %struct.Reg, %struct.Reg* %251, i32 0, i32 0
  %RAX.i470 = bitcast %union.anon* %252 to i64*
  %253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %254 = getelementptr inbounds %struct.GPR, %struct.GPR* %253, i32 0, i32 15
  %255 = getelementptr inbounds %struct.Reg, %struct.Reg* %254, i32 0, i32 0
  %RBP.i471 = bitcast %union.anon* %255 to i64*
  %256 = load i64, i64* %RBP.i471
  %257 = sub i64 %256, 28
  %258 = load i64, i64* %PC.i469
  %259 = add i64 %258, 3
  store i64 %259, i64* %PC.i469
  %260 = inttoptr i64 %257 to i32*
  %261 = load i32, i32* %260
  %262 = zext i32 %261 to i64
  store i64 %262, i64* %RAX.i470, align 8
  store %struct.Memory* %loadMem_4033c8, %struct.Memory** %MEMORY
  %loadMem_4033cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %264 = getelementptr inbounds %struct.GPR, %struct.GPR* %263, i32 0, i32 33
  %265 = getelementptr inbounds %struct.Reg, %struct.Reg* %264, i32 0, i32 0
  %PC.i466 = bitcast %union.anon* %265 to i64*
  %266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %267 = getelementptr inbounds %struct.GPR, %struct.GPR* %266, i32 0, i32 1
  %268 = getelementptr inbounds %struct.Reg, %struct.Reg* %267, i32 0, i32 0
  %EAX.i467 = bitcast %union.anon* %268 to i32*
  %269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %270 = getelementptr inbounds %struct.GPR, %struct.GPR* %269, i32 0, i32 15
  %271 = getelementptr inbounds %struct.Reg, %struct.Reg* %270, i32 0, i32 0
  %RBP.i468 = bitcast %union.anon* %271 to i64*
  %272 = load i32, i32* %EAX.i467
  %273 = zext i32 %272 to i64
  %274 = load i64, i64* %RBP.i468
  %275 = sub i64 %274, 12
  %276 = load i64, i64* %PC.i466
  %277 = add i64 %276, 3
  store i64 %277, i64* %PC.i466
  %278 = inttoptr i64 %275 to i32*
  %279 = load i32, i32* %278
  %280 = sub i32 %272, %279
  %281 = icmp ult i32 %272, %279
  %282 = zext i1 %281 to i8
  %283 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %282, i8* %283, align 1
  %284 = and i32 %280, 255
  %285 = call i32 @llvm.ctpop.i32(i32 %284)
  %286 = trunc i32 %285 to i8
  %287 = and i8 %286, 1
  %288 = xor i8 %287, 1
  %289 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %288, i8* %289, align 1
  %290 = xor i32 %279, %272
  %291 = xor i32 %290, %280
  %292 = lshr i32 %291, 4
  %293 = trunc i32 %292 to i8
  %294 = and i8 %293, 1
  %295 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %294, i8* %295, align 1
  %296 = icmp eq i32 %280, 0
  %297 = zext i1 %296 to i8
  %298 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %297, i8* %298, align 1
  %299 = lshr i32 %280, 31
  %300 = trunc i32 %299 to i8
  %301 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %300, i8* %301, align 1
  %302 = lshr i32 %272, 31
  %303 = lshr i32 %279, 31
  %304 = xor i32 %303, %302
  %305 = xor i32 %299, %302
  %306 = add i32 %305, %304
  %307 = icmp eq i32 %306, 2
  %308 = zext i1 %307 to i8
  %309 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %308, i8* %309, align 1
  store %struct.Memory* %loadMem_4033cb, %struct.Memory** %MEMORY
  %loadMem_4033ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %311 = getelementptr inbounds %struct.GPR, %struct.GPR* %310, i32 0, i32 33
  %312 = getelementptr inbounds %struct.Reg, %struct.Reg* %311, i32 0, i32 0
  %PC.i465 = bitcast %union.anon* %312 to i64*
  %313 = load i64, i64* %PC.i465
  %314 = add i64 %313, 179
  %315 = load i64, i64* %PC.i465
  %316 = add i64 %315, 6
  %317 = load i64, i64* %PC.i465
  %318 = add i64 %317, 6
  store i64 %318, i64* %PC.i465
  %319 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %320 = load i8, i8* %319, align 1
  %321 = icmp ne i8 %320, 0
  %322 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %323 = load i8, i8* %322, align 1
  %324 = icmp ne i8 %323, 0
  %325 = xor i1 %321, %324
  %326 = xor i1 %325, true
  %327 = zext i1 %326 to i8
  store i8 %327, i8* %BRANCH_TAKEN, align 1
  %328 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %329 = select i1 %325, i64 %316, i64 %314
  store i64 %329, i64* %328, align 8
  store %struct.Memory* %loadMem_4033ce, %struct.Memory** %MEMORY
  %loadBr_4033ce = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4033ce = icmp eq i8 %loadBr_4033ce, 1
  br i1 %cmpBr_4033ce, label %block_.L_403481, label %block_4033d4

block_4033d4:                                     ; preds = %block_.L_4033c8
  %loadMem_4033d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %331 = getelementptr inbounds %struct.GPR, %struct.GPR* %330, i32 0, i32 33
  %332 = getelementptr inbounds %struct.Reg, %struct.Reg* %331, i32 0, i32 0
  %PC.i462 = bitcast %union.anon* %332 to i64*
  %333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %334 = getelementptr inbounds %struct.GPR, %struct.GPR* %333, i32 0, i32 1
  %335 = getelementptr inbounds %struct.Reg, %struct.Reg* %334, i32 0, i32 0
  %RAX.i463 = bitcast %union.anon* %335 to i64*
  %336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %337 = getelementptr inbounds %struct.GPR, %struct.GPR* %336, i32 0, i32 15
  %338 = getelementptr inbounds %struct.Reg, %struct.Reg* %337, i32 0, i32 0
  %RBP.i464 = bitcast %union.anon* %338 to i64*
  %339 = load i64, i64* %RBP.i464
  %340 = sub i64 %339, 8
  %341 = load i64, i64* %PC.i462
  %342 = add i64 %341, 4
  store i64 %342, i64* %PC.i462
  %343 = inttoptr i64 %340 to i64*
  %344 = load i64, i64* %343
  store i64 %344, i64* %RAX.i463, align 8
  store %struct.Memory* %loadMem_4033d4, %struct.Memory** %MEMORY
  %loadMem_4033d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %346 = getelementptr inbounds %struct.GPR, %struct.GPR* %345, i32 0, i32 33
  %347 = getelementptr inbounds %struct.Reg, %struct.Reg* %346, i32 0, i32 0
  %PC.i459 = bitcast %union.anon* %347 to i64*
  %348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %349 = getelementptr inbounds %struct.GPR, %struct.GPR* %348, i32 0, i32 5
  %350 = getelementptr inbounds %struct.Reg, %struct.Reg* %349, i32 0, i32 0
  %RCX.i460 = bitcast %union.anon* %350 to i64*
  %351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %352 = getelementptr inbounds %struct.GPR, %struct.GPR* %351, i32 0, i32 15
  %353 = getelementptr inbounds %struct.Reg, %struct.Reg* %352, i32 0, i32 0
  %RBP.i461 = bitcast %union.anon* %353 to i64*
  %354 = load i64, i64* %RBP.i461
  %355 = sub i64 %354, 28
  %356 = load i64, i64* %PC.i459
  %357 = add i64 %356, 4
  store i64 %357, i64* %PC.i459
  %358 = inttoptr i64 %355 to i32*
  %359 = load i32, i32* %358
  %360 = sext i32 %359 to i64
  store i64 %360, i64* %RCX.i460, align 8
  store %struct.Memory* %loadMem_4033d8, %struct.Memory** %MEMORY
  %loadMem_4033dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %362 = getelementptr inbounds %struct.GPR, %struct.GPR* %361, i32 0, i32 33
  %363 = getelementptr inbounds %struct.Reg, %struct.Reg* %362, i32 0, i32 0
  %PC.i456 = bitcast %union.anon* %363 to i64*
  %364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %365 = getelementptr inbounds %struct.GPR, %struct.GPR* %364, i32 0, i32 1
  %366 = getelementptr inbounds %struct.Reg, %struct.Reg* %365, i32 0, i32 0
  %RAX.i457 = bitcast %union.anon* %366 to i64*
  %367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %368 = getelementptr inbounds %struct.GPR, %struct.GPR* %367, i32 0, i32 5
  %369 = getelementptr inbounds %struct.Reg, %struct.Reg* %368, i32 0, i32 0
  %RCX.i458 = bitcast %union.anon* %369 to i64*
  %370 = load i64, i64* %RAX.i457
  %371 = load i64, i64* %RCX.i458
  %372 = mul i64 %371, 8
  %373 = add i64 %372, %370
  %374 = load i64, i64* %PC.i456
  %375 = add i64 %374, 4
  store i64 %375, i64* %PC.i456
  %376 = inttoptr i64 %373 to i64*
  %377 = load i64, i64* %376
  store i64 %377, i64* %RAX.i457, align 8
  store %struct.Memory* %loadMem_4033dc, %struct.Memory** %MEMORY
  %loadMem_4033e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %379 = getelementptr inbounds %struct.GPR, %struct.GPR* %378, i32 0, i32 33
  %380 = getelementptr inbounds %struct.Reg, %struct.Reg* %379, i32 0, i32 0
  %PC.i453 = bitcast %union.anon* %380 to i64*
  %381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %382 = getelementptr inbounds %struct.GPR, %struct.GPR* %381, i32 0, i32 5
  %383 = getelementptr inbounds %struct.Reg, %struct.Reg* %382, i32 0, i32 0
  %RCX.i454 = bitcast %union.anon* %383 to i64*
  %384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %385 = getelementptr inbounds %struct.GPR, %struct.GPR* %384, i32 0, i32 15
  %386 = getelementptr inbounds %struct.Reg, %struct.Reg* %385, i32 0, i32 0
  %RBP.i455 = bitcast %union.anon* %386 to i64*
  %387 = load i64, i64* %RBP.i455
  %388 = sub i64 %387, 24
  %389 = load i64, i64* %PC.i453
  %390 = add i64 %389, 4
  store i64 %390, i64* %PC.i453
  %391 = inttoptr i64 %388 to i32*
  %392 = load i32, i32* %391
  %393 = sext i32 %392 to i64
  store i64 %393, i64* %RCX.i454, align 8
  store %struct.Memory* %loadMem_4033e0, %struct.Memory** %MEMORY
  %loadMem_4033e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %395 = getelementptr inbounds %struct.GPR, %struct.GPR* %394, i32 0, i32 33
  %396 = getelementptr inbounds %struct.Reg, %struct.Reg* %395, i32 0, i32 0
  %PC.i449 = bitcast %union.anon* %396 to i64*
  %397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %398 = getelementptr inbounds %struct.GPR, %struct.GPR* %397, i32 0, i32 1
  %399 = getelementptr inbounds %struct.Reg, %struct.Reg* %398, i32 0, i32 0
  %RAX.i450 = bitcast %union.anon* %399 to i64*
  %400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %401 = getelementptr inbounds %struct.GPR, %struct.GPR* %400, i32 0, i32 5
  %402 = getelementptr inbounds %struct.Reg, %struct.Reg* %401, i32 0, i32 0
  %RCX.i451 = bitcast %union.anon* %402 to i64*
  %403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %404 = getelementptr inbounds %struct.GPR, %struct.GPR* %403, i32 0, i32 7
  %405 = getelementptr inbounds %struct.Reg, %struct.Reg* %404, i32 0, i32 0
  %RDX.i452 = bitcast %union.anon* %405 to i64*
  %406 = load i64, i64* %RAX.i450
  %407 = load i64, i64* %RCX.i451
  %408 = add i64 %407, %406
  %409 = load i64, i64* %PC.i449
  %410 = add i64 %409, 4
  store i64 %410, i64* %PC.i449
  %411 = inttoptr i64 %408 to i8*
  %412 = load i8, i8* %411
  %413 = sext i8 %412 to i64
  %414 = and i64 %413, 4294967295
  store i64 %414, i64* %RDX.i452, align 8
  store %struct.Memory* %loadMem_4033e4, %struct.Memory** %MEMORY
  %loadMem_4033e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %416 = getelementptr inbounds %struct.GPR, %struct.GPR* %415, i32 0, i32 33
  %417 = getelementptr inbounds %struct.Reg, %struct.Reg* %416, i32 0, i32 0
  %PC.i447 = bitcast %union.anon* %417 to i64*
  %418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %419 = getelementptr inbounds %struct.GPR, %struct.GPR* %418, i32 0, i32 7
  %420 = getelementptr inbounds %struct.Reg, %struct.Reg* %419, i32 0, i32 0
  %EDX.i448 = bitcast %union.anon* %420 to i32*
  %421 = load i32, i32* %EDX.i448
  %422 = zext i32 %421 to i64
  %423 = load i64, i64* %PC.i447
  %424 = add i64 %423, 3
  store i64 %424, i64* %PC.i447
  %425 = sub i32 %421, 32
  %426 = icmp ult i32 %421, 32
  %427 = zext i1 %426 to i8
  %428 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %427, i8* %428, align 1
  %429 = and i32 %425, 255
  %430 = call i32 @llvm.ctpop.i32(i32 %429)
  %431 = trunc i32 %430 to i8
  %432 = and i8 %431, 1
  %433 = xor i8 %432, 1
  %434 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %433, i8* %434, align 1
  %435 = xor i64 32, %422
  %436 = trunc i64 %435 to i32
  %437 = xor i32 %436, %425
  %438 = lshr i32 %437, 4
  %439 = trunc i32 %438 to i8
  %440 = and i8 %439, 1
  %441 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %440, i8* %441, align 1
  %442 = icmp eq i32 %425, 0
  %443 = zext i1 %442 to i8
  %444 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %443, i8* %444, align 1
  %445 = lshr i32 %425, 31
  %446 = trunc i32 %445 to i8
  %447 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %446, i8* %447, align 1
  %448 = lshr i32 %421, 31
  %449 = xor i32 %445, %448
  %450 = add i32 %449, %448
  %451 = icmp eq i32 %450, 2
  %452 = zext i1 %451 to i8
  %453 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %452, i8* %453, align 1
  store %struct.Memory* %loadMem_4033e8, %struct.Memory** %MEMORY
  %loadMem_4033eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %455 = getelementptr inbounds %struct.GPR, %struct.GPR* %454, i32 0, i32 33
  %456 = getelementptr inbounds %struct.Reg, %struct.Reg* %455, i32 0, i32 0
  %PC.i446 = bitcast %union.anon* %456 to i64*
  %457 = load i64, i64* %PC.i446
  %458 = add i64 %457, 122
  %459 = load i64, i64* %PC.i446
  %460 = add i64 %459, 6
  %461 = load i64, i64* %PC.i446
  %462 = add i64 %461, 6
  store i64 %462, i64* %PC.i446
  %463 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %464 = load i8, i8* %463, align 1
  store i8 %464, i8* %BRANCH_TAKEN, align 1
  %465 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %466 = icmp ne i8 %464, 0
  %467 = select i1 %466, i64 %458, i64 %460
  store i64 %467, i64* %465, align 8
  store %struct.Memory* %loadMem_4033eb, %struct.Memory** %MEMORY
  %loadBr_4033eb = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4033eb = icmp eq i8 %loadBr_4033eb, 1
  br i1 %cmpBr_4033eb, label %block_.L_403465, label %block_4033f1

block_4033f1:                                     ; preds = %block_4033d4
  %loadMem_4033f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %469 = getelementptr inbounds %struct.GPR, %struct.GPR* %468, i32 0, i32 33
  %470 = getelementptr inbounds %struct.Reg, %struct.Reg* %469, i32 0, i32 0
  %PC.i443 = bitcast %union.anon* %470 to i64*
  %471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %472 = getelementptr inbounds %struct.GPR, %struct.GPR* %471, i32 0, i32 1
  %473 = getelementptr inbounds %struct.Reg, %struct.Reg* %472, i32 0, i32 0
  %RAX.i444 = bitcast %union.anon* %473 to i64*
  %474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %475 = getelementptr inbounds %struct.GPR, %struct.GPR* %474, i32 0, i32 15
  %476 = getelementptr inbounds %struct.Reg, %struct.Reg* %475, i32 0, i32 0
  %RBP.i445 = bitcast %union.anon* %476 to i64*
  %477 = load i64, i64* %RBP.i445
  %478 = sub i64 %477, 8
  %479 = load i64, i64* %PC.i443
  %480 = add i64 %479, 4
  store i64 %480, i64* %PC.i443
  %481 = inttoptr i64 %478 to i64*
  %482 = load i64, i64* %481
  store i64 %482, i64* %RAX.i444, align 8
  store %struct.Memory* %loadMem_4033f1, %struct.Memory** %MEMORY
  %loadMem_4033f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %484 = getelementptr inbounds %struct.GPR, %struct.GPR* %483, i32 0, i32 33
  %485 = getelementptr inbounds %struct.Reg, %struct.Reg* %484, i32 0, i32 0
  %PC.i440 = bitcast %union.anon* %485 to i64*
  %486 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %487 = getelementptr inbounds %struct.GPR, %struct.GPR* %486, i32 0, i32 5
  %488 = getelementptr inbounds %struct.Reg, %struct.Reg* %487, i32 0, i32 0
  %RCX.i441 = bitcast %union.anon* %488 to i64*
  %489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %490 = getelementptr inbounds %struct.GPR, %struct.GPR* %489, i32 0, i32 15
  %491 = getelementptr inbounds %struct.Reg, %struct.Reg* %490, i32 0, i32 0
  %RBP.i442 = bitcast %union.anon* %491 to i64*
  %492 = load i64, i64* %RBP.i442
  %493 = sub i64 %492, 28
  %494 = load i64, i64* %PC.i440
  %495 = add i64 %494, 4
  store i64 %495, i64* %PC.i440
  %496 = inttoptr i64 %493 to i32*
  %497 = load i32, i32* %496
  %498 = sext i32 %497 to i64
  store i64 %498, i64* %RCX.i441, align 8
  store %struct.Memory* %loadMem_4033f5, %struct.Memory** %MEMORY
  %loadMem_4033f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %500 = getelementptr inbounds %struct.GPR, %struct.GPR* %499, i32 0, i32 33
  %501 = getelementptr inbounds %struct.Reg, %struct.Reg* %500, i32 0, i32 0
  %PC.i437 = bitcast %union.anon* %501 to i64*
  %502 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %503 = getelementptr inbounds %struct.GPR, %struct.GPR* %502, i32 0, i32 1
  %504 = getelementptr inbounds %struct.Reg, %struct.Reg* %503, i32 0, i32 0
  %RAX.i438 = bitcast %union.anon* %504 to i64*
  %505 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %506 = getelementptr inbounds %struct.GPR, %struct.GPR* %505, i32 0, i32 5
  %507 = getelementptr inbounds %struct.Reg, %struct.Reg* %506, i32 0, i32 0
  %RCX.i439 = bitcast %union.anon* %507 to i64*
  %508 = load i64, i64* %RAX.i438
  %509 = load i64, i64* %RCX.i439
  %510 = mul i64 %509, 8
  %511 = add i64 %510, %508
  %512 = load i64, i64* %PC.i437
  %513 = add i64 %512, 4
  store i64 %513, i64* %PC.i437
  %514 = inttoptr i64 %511 to i64*
  %515 = load i64, i64* %514
  store i64 %515, i64* %RAX.i438, align 8
  store %struct.Memory* %loadMem_4033f9, %struct.Memory** %MEMORY
  %loadMem_4033fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %517 = getelementptr inbounds %struct.GPR, %struct.GPR* %516, i32 0, i32 33
  %518 = getelementptr inbounds %struct.Reg, %struct.Reg* %517, i32 0, i32 0
  %PC.i434 = bitcast %union.anon* %518 to i64*
  %519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %520 = getelementptr inbounds %struct.GPR, %struct.GPR* %519, i32 0, i32 5
  %521 = getelementptr inbounds %struct.Reg, %struct.Reg* %520, i32 0, i32 0
  %RCX.i435 = bitcast %union.anon* %521 to i64*
  %522 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %523 = getelementptr inbounds %struct.GPR, %struct.GPR* %522, i32 0, i32 15
  %524 = getelementptr inbounds %struct.Reg, %struct.Reg* %523, i32 0, i32 0
  %RBP.i436 = bitcast %union.anon* %524 to i64*
  %525 = load i64, i64* %RBP.i436
  %526 = sub i64 %525, 24
  %527 = load i64, i64* %PC.i434
  %528 = add i64 %527, 4
  store i64 %528, i64* %PC.i434
  %529 = inttoptr i64 %526 to i32*
  %530 = load i32, i32* %529
  %531 = sext i32 %530 to i64
  store i64 %531, i64* %RCX.i435, align 8
  store %struct.Memory* %loadMem_4033fd, %struct.Memory** %MEMORY
  %loadMem_403401 = load %struct.Memory*, %struct.Memory** %MEMORY
  %532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %533 = getelementptr inbounds %struct.GPR, %struct.GPR* %532, i32 0, i32 33
  %534 = getelementptr inbounds %struct.Reg, %struct.Reg* %533, i32 0, i32 0
  %PC.i430 = bitcast %union.anon* %534 to i64*
  %535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %536 = getelementptr inbounds %struct.GPR, %struct.GPR* %535, i32 0, i32 1
  %537 = getelementptr inbounds %struct.Reg, %struct.Reg* %536, i32 0, i32 0
  %RAX.i431 = bitcast %union.anon* %537 to i64*
  %538 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %539 = getelementptr inbounds %struct.GPR, %struct.GPR* %538, i32 0, i32 5
  %540 = getelementptr inbounds %struct.Reg, %struct.Reg* %539, i32 0, i32 0
  %RCX.i432 = bitcast %union.anon* %540 to i64*
  %541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %542 = getelementptr inbounds %struct.GPR, %struct.GPR* %541, i32 0, i32 7
  %543 = getelementptr inbounds %struct.Reg, %struct.Reg* %542, i32 0, i32 0
  %RDX.i433 = bitcast %union.anon* %543 to i64*
  %544 = load i64, i64* %RAX.i431
  %545 = load i64, i64* %RCX.i432
  %546 = add i64 %545, %544
  %547 = load i64, i64* %PC.i430
  %548 = add i64 %547, 4
  store i64 %548, i64* %PC.i430
  %549 = inttoptr i64 %546 to i8*
  %550 = load i8, i8* %549
  %551 = sext i8 %550 to i64
  %552 = and i64 %551, 4294967295
  store i64 %552, i64* %RDX.i433, align 8
  store %struct.Memory* %loadMem_403401, %struct.Memory** %MEMORY
  %loadMem_403405 = load %struct.Memory*, %struct.Memory** %MEMORY
  %553 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %554 = getelementptr inbounds %struct.GPR, %struct.GPR* %553, i32 0, i32 33
  %555 = getelementptr inbounds %struct.Reg, %struct.Reg* %554, i32 0, i32 0
  %PC.i428 = bitcast %union.anon* %555 to i64*
  %556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %557 = getelementptr inbounds %struct.GPR, %struct.GPR* %556, i32 0, i32 7
  %558 = getelementptr inbounds %struct.Reg, %struct.Reg* %557, i32 0, i32 0
  %EDX.i429 = bitcast %union.anon* %558 to i32*
  %559 = load i32, i32* %EDX.i429
  %560 = zext i32 %559 to i64
  %561 = load i64, i64* %PC.i428
  %562 = add i64 %561, 3
  store i64 %562, i64* %PC.i428
  %563 = sub i32 %559, 46
  %564 = icmp ult i32 %559, 46
  %565 = zext i1 %564 to i8
  %566 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %565, i8* %566, align 1
  %567 = and i32 %563, 255
  %568 = call i32 @llvm.ctpop.i32(i32 %567)
  %569 = trunc i32 %568 to i8
  %570 = and i8 %569, 1
  %571 = xor i8 %570, 1
  %572 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %571, i8* %572, align 1
  %573 = xor i64 46, %560
  %574 = trunc i64 %573 to i32
  %575 = xor i32 %574, %563
  %576 = lshr i32 %575, 4
  %577 = trunc i32 %576 to i8
  %578 = and i8 %577, 1
  %579 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %578, i8* %579, align 1
  %580 = icmp eq i32 %563, 0
  %581 = zext i1 %580 to i8
  %582 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %581, i8* %582, align 1
  %583 = lshr i32 %563, 31
  %584 = trunc i32 %583 to i8
  %585 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %584, i8* %585, align 1
  %586 = lshr i32 %559, 31
  %587 = xor i32 %583, %586
  %588 = add i32 %587, %586
  %589 = icmp eq i32 %588, 2
  %590 = zext i1 %589 to i8
  %591 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %590, i8* %591, align 1
  store %struct.Memory* %loadMem_403405, %struct.Memory** %MEMORY
  %loadMem_403408 = load %struct.Memory*, %struct.Memory** %MEMORY
  %592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %593 = getelementptr inbounds %struct.GPR, %struct.GPR* %592, i32 0, i32 33
  %594 = getelementptr inbounds %struct.Reg, %struct.Reg* %593, i32 0, i32 0
  %PC.i427 = bitcast %union.anon* %594 to i64*
  %595 = load i64, i64* %PC.i427
  %596 = add i64 %595, 93
  %597 = load i64, i64* %PC.i427
  %598 = add i64 %597, 6
  %599 = load i64, i64* %PC.i427
  %600 = add i64 %599, 6
  store i64 %600, i64* %PC.i427
  %601 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %602 = load i8, i8* %601, align 1
  store i8 %602, i8* %BRANCH_TAKEN, align 1
  %603 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %604 = icmp ne i8 %602, 0
  %605 = select i1 %604, i64 %596, i64 %598
  store i64 %605, i64* %603, align 8
  store %struct.Memory* %loadMem_403408, %struct.Memory** %MEMORY
  %loadBr_403408 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_403408 = icmp eq i8 %loadBr_403408, 1
  br i1 %cmpBr_403408, label %block_.L_403465, label %block_40340e

block_40340e:                                     ; preds = %block_4033f1
  %loadMem_40340e = load %struct.Memory*, %struct.Memory** %MEMORY
  %606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %607 = getelementptr inbounds %struct.GPR, %struct.GPR* %606, i32 0, i32 33
  %608 = getelementptr inbounds %struct.Reg, %struct.Reg* %607, i32 0, i32 0
  %PC.i424 = bitcast %union.anon* %608 to i64*
  %609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %610 = getelementptr inbounds %struct.GPR, %struct.GPR* %609, i32 0, i32 1
  %611 = getelementptr inbounds %struct.Reg, %struct.Reg* %610, i32 0, i32 0
  %RAX.i425 = bitcast %union.anon* %611 to i64*
  %612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %613 = getelementptr inbounds %struct.GPR, %struct.GPR* %612, i32 0, i32 15
  %614 = getelementptr inbounds %struct.Reg, %struct.Reg* %613, i32 0, i32 0
  %RBP.i426 = bitcast %union.anon* %614 to i64*
  %615 = load i64, i64* %RBP.i426
  %616 = sub i64 %615, 8
  %617 = load i64, i64* %PC.i424
  %618 = add i64 %617, 4
  store i64 %618, i64* %PC.i424
  %619 = inttoptr i64 %616 to i64*
  %620 = load i64, i64* %619
  store i64 %620, i64* %RAX.i425, align 8
  store %struct.Memory* %loadMem_40340e, %struct.Memory** %MEMORY
  %loadMem_403412 = load %struct.Memory*, %struct.Memory** %MEMORY
  %621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %622 = getelementptr inbounds %struct.GPR, %struct.GPR* %621, i32 0, i32 33
  %623 = getelementptr inbounds %struct.Reg, %struct.Reg* %622, i32 0, i32 0
  %PC.i421 = bitcast %union.anon* %623 to i64*
  %624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %625 = getelementptr inbounds %struct.GPR, %struct.GPR* %624, i32 0, i32 5
  %626 = getelementptr inbounds %struct.Reg, %struct.Reg* %625, i32 0, i32 0
  %RCX.i422 = bitcast %union.anon* %626 to i64*
  %627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %628 = getelementptr inbounds %struct.GPR, %struct.GPR* %627, i32 0, i32 15
  %629 = getelementptr inbounds %struct.Reg, %struct.Reg* %628, i32 0, i32 0
  %RBP.i423 = bitcast %union.anon* %629 to i64*
  %630 = load i64, i64* %RBP.i423
  %631 = sub i64 %630, 28
  %632 = load i64, i64* %PC.i421
  %633 = add i64 %632, 4
  store i64 %633, i64* %PC.i421
  %634 = inttoptr i64 %631 to i32*
  %635 = load i32, i32* %634
  %636 = sext i32 %635 to i64
  store i64 %636, i64* %RCX.i422, align 8
  store %struct.Memory* %loadMem_403412, %struct.Memory** %MEMORY
  %loadMem_403416 = load %struct.Memory*, %struct.Memory** %MEMORY
  %637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %638 = getelementptr inbounds %struct.GPR, %struct.GPR* %637, i32 0, i32 33
  %639 = getelementptr inbounds %struct.Reg, %struct.Reg* %638, i32 0, i32 0
  %PC.i418 = bitcast %union.anon* %639 to i64*
  %640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %641 = getelementptr inbounds %struct.GPR, %struct.GPR* %640, i32 0, i32 1
  %642 = getelementptr inbounds %struct.Reg, %struct.Reg* %641, i32 0, i32 0
  %RAX.i419 = bitcast %union.anon* %642 to i64*
  %643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %644 = getelementptr inbounds %struct.GPR, %struct.GPR* %643, i32 0, i32 5
  %645 = getelementptr inbounds %struct.Reg, %struct.Reg* %644, i32 0, i32 0
  %RCX.i420 = bitcast %union.anon* %645 to i64*
  %646 = load i64, i64* %RAX.i419
  %647 = load i64, i64* %RCX.i420
  %648 = mul i64 %647, 8
  %649 = add i64 %648, %646
  %650 = load i64, i64* %PC.i418
  %651 = add i64 %650, 4
  store i64 %651, i64* %PC.i418
  %652 = inttoptr i64 %649 to i64*
  %653 = load i64, i64* %652
  store i64 %653, i64* %RAX.i419, align 8
  store %struct.Memory* %loadMem_403416, %struct.Memory** %MEMORY
  %loadMem_40341a = load %struct.Memory*, %struct.Memory** %MEMORY
  %654 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %655 = getelementptr inbounds %struct.GPR, %struct.GPR* %654, i32 0, i32 33
  %656 = getelementptr inbounds %struct.Reg, %struct.Reg* %655, i32 0, i32 0
  %PC.i415 = bitcast %union.anon* %656 to i64*
  %657 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %658 = getelementptr inbounds %struct.GPR, %struct.GPR* %657, i32 0, i32 5
  %659 = getelementptr inbounds %struct.Reg, %struct.Reg* %658, i32 0, i32 0
  %RCX.i416 = bitcast %union.anon* %659 to i64*
  %660 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %661 = getelementptr inbounds %struct.GPR, %struct.GPR* %660, i32 0, i32 15
  %662 = getelementptr inbounds %struct.Reg, %struct.Reg* %661, i32 0, i32 0
  %RBP.i417 = bitcast %union.anon* %662 to i64*
  %663 = load i64, i64* %RBP.i417
  %664 = sub i64 %663, 24
  %665 = load i64, i64* %PC.i415
  %666 = add i64 %665, 4
  store i64 %666, i64* %PC.i415
  %667 = inttoptr i64 %664 to i32*
  %668 = load i32, i32* %667
  %669 = sext i32 %668 to i64
  store i64 %669, i64* %RCX.i416, align 8
  store %struct.Memory* %loadMem_40341a, %struct.Memory** %MEMORY
  %loadMem_40341e = load %struct.Memory*, %struct.Memory** %MEMORY
  %670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %671 = getelementptr inbounds %struct.GPR, %struct.GPR* %670, i32 0, i32 33
  %672 = getelementptr inbounds %struct.Reg, %struct.Reg* %671, i32 0, i32 0
  %PC.i411 = bitcast %union.anon* %672 to i64*
  %673 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %674 = getelementptr inbounds %struct.GPR, %struct.GPR* %673, i32 0, i32 1
  %675 = getelementptr inbounds %struct.Reg, %struct.Reg* %674, i32 0, i32 0
  %RAX.i412 = bitcast %union.anon* %675 to i64*
  %676 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %677 = getelementptr inbounds %struct.GPR, %struct.GPR* %676, i32 0, i32 5
  %678 = getelementptr inbounds %struct.Reg, %struct.Reg* %677, i32 0, i32 0
  %RCX.i413 = bitcast %union.anon* %678 to i64*
  %679 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %680 = getelementptr inbounds %struct.GPR, %struct.GPR* %679, i32 0, i32 7
  %681 = getelementptr inbounds %struct.Reg, %struct.Reg* %680, i32 0, i32 0
  %RDX.i414 = bitcast %union.anon* %681 to i64*
  %682 = load i64, i64* %RAX.i412
  %683 = load i64, i64* %RCX.i413
  %684 = add i64 %683, %682
  %685 = load i64, i64* %PC.i411
  %686 = add i64 %685, 4
  store i64 %686, i64* %PC.i411
  %687 = inttoptr i64 %684 to i8*
  %688 = load i8, i8* %687
  %689 = sext i8 %688 to i64
  %690 = and i64 %689, 4294967295
  store i64 %690, i64* %RDX.i414, align 8
  store %struct.Memory* %loadMem_40341e, %struct.Memory** %MEMORY
  %loadMem_403422 = load %struct.Memory*, %struct.Memory** %MEMORY
  %691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %692 = getelementptr inbounds %struct.GPR, %struct.GPR* %691, i32 0, i32 33
  %693 = getelementptr inbounds %struct.Reg, %struct.Reg* %692, i32 0, i32 0
  %PC.i409 = bitcast %union.anon* %693 to i64*
  %694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %695 = getelementptr inbounds %struct.GPR, %struct.GPR* %694, i32 0, i32 7
  %696 = getelementptr inbounds %struct.Reg, %struct.Reg* %695, i32 0, i32 0
  %EDX.i410 = bitcast %union.anon* %696 to i32*
  %697 = load i32, i32* %EDX.i410
  %698 = zext i32 %697 to i64
  %699 = load i64, i64* %PC.i409
  %700 = add i64 %699, 3
  store i64 %700, i64* %PC.i409
  %701 = sub i32 %697, 95
  %702 = icmp ult i32 %697, 95
  %703 = zext i1 %702 to i8
  %704 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %703, i8* %704, align 1
  %705 = and i32 %701, 255
  %706 = call i32 @llvm.ctpop.i32(i32 %705)
  %707 = trunc i32 %706 to i8
  %708 = and i8 %707, 1
  %709 = xor i8 %708, 1
  %710 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %709, i8* %710, align 1
  %711 = xor i64 95, %698
  %712 = trunc i64 %711 to i32
  %713 = xor i32 %712, %701
  %714 = lshr i32 %713, 4
  %715 = trunc i32 %714 to i8
  %716 = and i8 %715, 1
  %717 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %716, i8* %717, align 1
  %718 = icmp eq i32 %701, 0
  %719 = zext i1 %718 to i8
  %720 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %719, i8* %720, align 1
  %721 = lshr i32 %701, 31
  %722 = trunc i32 %721 to i8
  %723 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %722, i8* %723, align 1
  %724 = lshr i32 %697, 31
  %725 = xor i32 %721, %724
  %726 = add i32 %725, %724
  %727 = icmp eq i32 %726, 2
  %728 = zext i1 %727 to i8
  %729 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %728, i8* %729, align 1
  store %struct.Memory* %loadMem_403422, %struct.Memory** %MEMORY
  %loadMem_403425 = load %struct.Memory*, %struct.Memory** %MEMORY
  %730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %731 = getelementptr inbounds %struct.GPR, %struct.GPR* %730, i32 0, i32 33
  %732 = getelementptr inbounds %struct.Reg, %struct.Reg* %731, i32 0, i32 0
  %PC.i408 = bitcast %union.anon* %732 to i64*
  %733 = load i64, i64* %PC.i408
  %734 = add i64 %733, 64
  %735 = load i64, i64* %PC.i408
  %736 = add i64 %735, 6
  %737 = load i64, i64* %PC.i408
  %738 = add i64 %737, 6
  store i64 %738, i64* %PC.i408
  %739 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %740 = load i8, i8* %739, align 1
  store i8 %740, i8* %BRANCH_TAKEN, align 1
  %741 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %742 = icmp ne i8 %740, 0
  %743 = select i1 %742, i64 %734, i64 %736
  store i64 %743, i64* %741, align 8
  store %struct.Memory* %loadMem_403425, %struct.Memory** %MEMORY
  %loadBr_403425 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_403425 = icmp eq i8 %loadBr_403425, 1
  br i1 %cmpBr_403425, label %block_.L_403465, label %block_40342b

block_40342b:                                     ; preds = %block_40340e
  %loadMem_40342b = load %struct.Memory*, %struct.Memory** %MEMORY
  %744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %745 = getelementptr inbounds %struct.GPR, %struct.GPR* %744, i32 0, i32 33
  %746 = getelementptr inbounds %struct.Reg, %struct.Reg* %745, i32 0, i32 0
  %PC.i405 = bitcast %union.anon* %746 to i64*
  %747 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %748 = getelementptr inbounds %struct.GPR, %struct.GPR* %747, i32 0, i32 1
  %749 = getelementptr inbounds %struct.Reg, %struct.Reg* %748, i32 0, i32 0
  %RAX.i406 = bitcast %union.anon* %749 to i64*
  %750 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %751 = getelementptr inbounds %struct.GPR, %struct.GPR* %750, i32 0, i32 15
  %752 = getelementptr inbounds %struct.Reg, %struct.Reg* %751, i32 0, i32 0
  %RBP.i407 = bitcast %union.anon* %752 to i64*
  %753 = load i64, i64* %RBP.i407
  %754 = sub i64 %753, 8
  %755 = load i64, i64* %PC.i405
  %756 = add i64 %755, 4
  store i64 %756, i64* %PC.i405
  %757 = inttoptr i64 %754 to i64*
  %758 = load i64, i64* %757
  store i64 %758, i64* %RAX.i406, align 8
  store %struct.Memory* %loadMem_40342b, %struct.Memory** %MEMORY
  %loadMem_40342f = load %struct.Memory*, %struct.Memory** %MEMORY
  %759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %760 = getelementptr inbounds %struct.GPR, %struct.GPR* %759, i32 0, i32 33
  %761 = getelementptr inbounds %struct.Reg, %struct.Reg* %760, i32 0, i32 0
  %PC.i402 = bitcast %union.anon* %761 to i64*
  %762 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %763 = getelementptr inbounds %struct.GPR, %struct.GPR* %762, i32 0, i32 5
  %764 = getelementptr inbounds %struct.Reg, %struct.Reg* %763, i32 0, i32 0
  %RCX.i403 = bitcast %union.anon* %764 to i64*
  %765 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %766 = getelementptr inbounds %struct.GPR, %struct.GPR* %765, i32 0, i32 15
  %767 = getelementptr inbounds %struct.Reg, %struct.Reg* %766, i32 0, i32 0
  %RBP.i404 = bitcast %union.anon* %767 to i64*
  %768 = load i64, i64* %RBP.i404
  %769 = sub i64 %768, 28
  %770 = load i64, i64* %PC.i402
  %771 = add i64 %770, 4
  store i64 %771, i64* %PC.i402
  %772 = inttoptr i64 %769 to i32*
  %773 = load i32, i32* %772
  %774 = sext i32 %773 to i64
  store i64 %774, i64* %RCX.i403, align 8
  store %struct.Memory* %loadMem_40342f, %struct.Memory** %MEMORY
  %loadMem_403433 = load %struct.Memory*, %struct.Memory** %MEMORY
  %775 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %776 = getelementptr inbounds %struct.GPR, %struct.GPR* %775, i32 0, i32 33
  %777 = getelementptr inbounds %struct.Reg, %struct.Reg* %776, i32 0, i32 0
  %PC.i399 = bitcast %union.anon* %777 to i64*
  %778 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %779 = getelementptr inbounds %struct.GPR, %struct.GPR* %778, i32 0, i32 1
  %780 = getelementptr inbounds %struct.Reg, %struct.Reg* %779, i32 0, i32 0
  %RAX.i400 = bitcast %union.anon* %780 to i64*
  %781 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %782 = getelementptr inbounds %struct.GPR, %struct.GPR* %781, i32 0, i32 5
  %783 = getelementptr inbounds %struct.Reg, %struct.Reg* %782, i32 0, i32 0
  %RCX.i401 = bitcast %union.anon* %783 to i64*
  %784 = load i64, i64* %RAX.i400
  %785 = load i64, i64* %RCX.i401
  %786 = mul i64 %785, 8
  %787 = add i64 %786, %784
  %788 = load i64, i64* %PC.i399
  %789 = add i64 %788, 4
  store i64 %789, i64* %PC.i399
  %790 = inttoptr i64 %787 to i64*
  %791 = load i64, i64* %790
  store i64 %791, i64* %RAX.i400, align 8
  store %struct.Memory* %loadMem_403433, %struct.Memory** %MEMORY
  %loadMem_403437 = load %struct.Memory*, %struct.Memory** %MEMORY
  %792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %793 = getelementptr inbounds %struct.GPR, %struct.GPR* %792, i32 0, i32 33
  %794 = getelementptr inbounds %struct.Reg, %struct.Reg* %793, i32 0, i32 0
  %PC.i396 = bitcast %union.anon* %794 to i64*
  %795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %796 = getelementptr inbounds %struct.GPR, %struct.GPR* %795, i32 0, i32 5
  %797 = getelementptr inbounds %struct.Reg, %struct.Reg* %796, i32 0, i32 0
  %RCX.i397 = bitcast %union.anon* %797 to i64*
  %798 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %799 = getelementptr inbounds %struct.GPR, %struct.GPR* %798, i32 0, i32 15
  %800 = getelementptr inbounds %struct.Reg, %struct.Reg* %799, i32 0, i32 0
  %RBP.i398 = bitcast %union.anon* %800 to i64*
  %801 = load i64, i64* %RBP.i398
  %802 = sub i64 %801, 24
  %803 = load i64, i64* %PC.i396
  %804 = add i64 %803, 4
  store i64 %804, i64* %PC.i396
  %805 = inttoptr i64 %802 to i32*
  %806 = load i32, i32* %805
  %807 = sext i32 %806 to i64
  store i64 %807, i64* %RCX.i397, align 8
  store %struct.Memory* %loadMem_403437, %struct.Memory** %MEMORY
  %loadMem_40343b = load %struct.Memory*, %struct.Memory** %MEMORY
  %808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %809 = getelementptr inbounds %struct.GPR, %struct.GPR* %808, i32 0, i32 33
  %810 = getelementptr inbounds %struct.Reg, %struct.Reg* %809, i32 0, i32 0
  %PC.i392 = bitcast %union.anon* %810 to i64*
  %811 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %812 = getelementptr inbounds %struct.GPR, %struct.GPR* %811, i32 0, i32 1
  %813 = getelementptr inbounds %struct.Reg, %struct.Reg* %812, i32 0, i32 0
  %RAX.i393 = bitcast %union.anon* %813 to i64*
  %814 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %815 = getelementptr inbounds %struct.GPR, %struct.GPR* %814, i32 0, i32 5
  %816 = getelementptr inbounds %struct.Reg, %struct.Reg* %815, i32 0, i32 0
  %RCX.i394 = bitcast %union.anon* %816 to i64*
  %817 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %818 = getelementptr inbounds %struct.GPR, %struct.GPR* %817, i32 0, i32 7
  %819 = getelementptr inbounds %struct.Reg, %struct.Reg* %818, i32 0, i32 0
  %RDX.i395 = bitcast %union.anon* %819 to i64*
  %820 = load i64, i64* %RAX.i393
  %821 = load i64, i64* %RCX.i394
  %822 = add i64 %821, %820
  %823 = load i64, i64* %PC.i392
  %824 = add i64 %823, 4
  store i64 %824, i64* %PC.i392
  %825 = inttoptr i64 %822 to i8*
  %826 = load i8, i8* %825
  %827 = sext i8 %826 to i64
  %828 = and i64 %827, 4294967295
  store i64 %828, i64* %RDX.i395, align 8
  store %struct.Memory* %loadMem_40343b, %struct.Memory** %MEMORY
  %loadMem_40343f = load %struct.Memory*, %struct.Memory** %MEMORY
  %829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %830 = getelementptr inbounds %struct.GPR, %struct.GPR* %829, i32 0, i32 33
  %831 = getelementptr inbounds %struct.Reg, %struct.Reg* %830, i32 0, i32 0
  %PC.i390 = bitcast %union.anon* %831 to i64*
  %832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %833 = getelementptr inbounds %struct.GPR, %struct.GPR* %832, i32 0, i32 7
  %834 = getelementptr inbounds %struct.Reg, %struct.Reg* %833, i32 0, i32 0
  %EDX.i391 = bitcast %union.anon* %834 to i32*
  %835 = load i32, i32* %EDX.i391
  %836 = zext i32 %835 to i64
  %837 = load i64, i64* %PC.i390
  %838 = add i64 %837, 3
  store i64 %838, i64* %PC.i390
  %839 = sub i32 %835, 45
  %840 = icmp ult i32 %835, 45
  %841 = zext i1 %840 to i8
  %842 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %841, i8* %842, align 1
  %843 = and i32 %839, 255
  %844 = call i32 @llvm.ctpop.i32(i32 %843)
  %845 = trunc i32 %844 to i8
  %846 = and i8 %845, 1
  %847 = xor i8 %846, 1
  %848 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %847, i8* %848, align 1
  %849 = xor i64 45, %836
  %850 = trunc i64 %849 to i32
  %851 = xor i32 %850, %839
  %852 = lshr i32 %851, 4
  %853 = trunc i32 %852 to i8
  %854 = and i8 %853, 1
  %855 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %854, i8* %855, align 1
  %856 = icmp eq i32 %839, 0
  %857 = zext i1 %856 to i8
  %858 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %857, i8* %858, align 1
  %859 = lshr i32 %839, 31
  %860 = trunc i32 %859 to i8
  %861 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %860, i8* %861, align 1
  %862 = lshr i32 %835, 31
  %863 = xor i32 %859, %862
  %864 = add i32 %863, %862
  %865 = icmp eq i32 %864, 2
  %866 = zext i1 %865 to i8
  %867 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %866, i8* %867, align 1
  store %struct.Memory* %loadMem_40343f, %struct.Memory** %MEMORY
  %loadMem_403442 = load %struct.Memory*, %struct.Memory** %MEMORY
  %868 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %869 = getelementptr inbounds %struct.GPR, %struct.GPR* %868, i32 0, i32 33
  %870 = getelementptr inbounds %struct.Reg, %struct.Reg* %869, i32 0, i32 0
  %PC.i389 = bitcast %union.anon* %870 to i64*
  %871 = load i64, i64* %PC.i389
  %872 = add i64 %871, 35
  %873 = load i64, i64* %PC.i389
  %874 = add i64 %873, 6
  %875 = load i64, i64* %PC.i389
  %876 = add i64 %875, 6
  store i64 %876, i64* %PC.i389
  %877 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %878 = load i8, i8* %877, align 1
  store i8 %878, i8* %BRANCH_TAKEN, align 1
  %879 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %880 = icmp ne i8 %878, 0
  %881 = select i1 %880, i64 %872, i64 %874
  store i64 %881, i64* %879, align 8
  store %struct.Memory* %loadMem_403442, %struct.Memory** %MEMORY
  %loadBr_403442 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_403442 = icmp eq i8 %loadBr_403442, 1
  br i1 %cmpBr_403442, label %block_.L_403465, label %block_403448

block_403448:                                     ; preds = %block_40342b
  %loadMem_403448 = load %struct.Memory*, %struct.Memory** %MEMORY
  %882 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %883 = getelementptr inbounds %struct.GPR, %struct.GPR* %882, i32 0, i32 33
  %884 = getelementptr inbounds %struct.Reg, %struct.Reg* %883, i32 0, i32 0
  %PC.i386 = bitcast %union.anon* %884 to i64*
  %885 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %886 = getelementptr inbounds %struct.GPR, %struct.GPR* %885, i32 0, i32 1
  %887 = getelementptr inbounds %struct.Reg, %struct.Reg* %886, i32 0, i32 0
  %RAX.i387 = bitcast %union.anon* %887 to i64*
  %888 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %889 = getelementptr inbounds %struct.GPR, %struct.GPR* %888, i32 0, i32 15
  %890 = getelementptr inbounds %struct.Reg, %struct.Reg* %889, i32 0, i32 0
  %RBP.i388 = bitcast %union.anon* %890 to i64*
  %891 = load i64, i64* %RBP.i388
  %892 = sub i64 %891, 8
  %893 = load i64, i64* %PC.i386
  %894 = add i64 %893, 4
  store i64 %894, i64* %PC.i386
  %895 = inttoptr i64 %892 to i64*
  %896 = load i64, i64* %895
  store i64 %896, i64* %RAX.i387, align 8
  store %struct.Memory* %loadMem_403448, %struct.Memory** %MEMORY
  %loadMem_40344c = load %struct.Memory*, %struct.Memory** %MEMORY
  %897 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %898 = getelementptr inbounds %struct.GPR, %struct.GPR* %897, i32 0, i32 33
  %899 = getelementptr inbounds %struct.Reg, %struct.Reg* %898, i32 0, i32 0
  %PC.i383 = bitcast %union.anon* %899 to i64*
  %900 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %901 = getelementptr inbounds %struct.GPR, %struct.GPR* %900, i32 0, i32 5
  %902 = getelementptr inbounds %struct.Reg, %struct.Reg* %901, i32 0, i32 0
  %RCX.i384 = bitcast %union.anon* %902 to i64*
  %903 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %904 = getelementptr inbounds %struct.GPR, %struct.GPR* %903, i32 0, i32 15
  %905 = getelementptr inbounds %struct.Reg, %struct.Reg* %904, i32 0, i32 0
  %RBP.i385 = bitcast %union.anon* %905 to i64*
  %906 = load i64, i64* %RBP.i385
  %907 = sub i64 %906, 28
  %908 = load i64, i64* %PC.i383
  %909 = add i64 %908, 4
  store i64 %909, i64* %PC.i383
  %910 = inttoptr i64 %907 to i32*
  %911 = load i32, i32* %910
  %912 = sext i32 %911 to i64
  store i64 %912, i64* %RCX.i384, align 8
  store %struct.Memory* %loadMem_40344c, %struct.Memory** %MEMORY
  %loadMem_403450 = load %struct.Memory*, %struct.Memory** %MEMORY
  %913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %914 = getelementptr inbounds %struct.GPR, %struct.GPR* %913, i32 0, i32 33
  %915 = getelementptr inbounds %struct.Reg, %struct.Reg* %914, i32 0, i32 0
  %PC.i380 = bitcast %union.anon* %915 to i64*
  %916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %917 = getelementptr inbounds %struct.GPR, %struct.GPR* %916, i32 0, i32 1
  %918 = getelementptr inbounds %struct.Reg, %struct.Reg* %917, i32 0, i32 0
  %RAX.i381 = bitcast %union.anon* %918 to i64*
  %919 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %920 = getelementptr inbounds %struct.GPR, %struct.GPR* %919, i32 0, i32 5
  %921 = getelementptr inbounds %struct.Reg, %struct.Reg* %920, i32 0, i32 0
  %RCX.i382 = bitcast %union.anon* %921 to i64*
  %922 = load i64, i64* %RAX.i381
  %923 = load i64, i64* %RCX.i382
  %924 = mul i64 %923, 8
  %925 = add i64 %924, %922
  %926 = load i64, i64* %PC.i380
  %927 = add i64 %926, 4
  store i64 %927, i64* %PC.i380
  %928 = inttoptr i64 %925 to i64*
  %929 = load i64, i64* %928
  store i64 %929, i64* %RAX.i381, align 8
  store %struct.Memory* %loadMem_403450, %struct.Memory** %MEMORY
  %loadMem_403454 = load %struct.Memory*, %struct.Memory** %MEMORY
  %930 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %931 = getelementptr inbounds %struct.GPR, %struct.GPR* %930, i32 0, i32 33
  %932 = getelementptr inbounds %struct.Reg, %struct.Reg* %931, i32 0, i32 0
  %PC.i377 = bitcast %union.anon* %932 to i64*
  %933 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %934 = getelementptr inbounds %struct.GPR, %struct.GPR* %933, i32 0, i32 5
  %935 = getelementptr inbounds %struct.Reg, %struct.Reg* %934, i32 0, i32 0
  %RCX.i378 = bitcast %union.anon* %935 to i64*
  %936 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %937 = getelementptr inbounds %struct.GPR, %struct.GPR* %936, i32 0, i32 15
  %938 = getelementptr inbounds %struct.Reg, %struct.Reg* %937, i32 0, i32 0
  %RBP.i379 = bitcast %union.anon* %938 to i64*
  %939 = load i64, i64* %RBP.i379
  %940 = sub i64 %939, 24
  %941 = load i64, i64* %PC.i377
  %942 = add i64 %941, 4
  store i64 %942, i64* %PC.i377
  %943 = inttoptr i64 %940 to i32*
  %944 = load i32, i32* %943
  %945 = sext i32 %944 to i64
  store i64 %945, i64* %RCX.i378, align 8
  store %struct.Memory* %loadMem_403454, %struct.Memory** %MEMORY
  %loadMem_403458 = load %struct.Memory*, %struct.Memory** %MEMORY
  %946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %947 = getelementptr inbounds %struct.GPR, %struct.GPR* %946, i32 0, i32 33
  %948 = getelementptr inbounds %struct.Reg, %struct.Reg* %947, i32 0, i32 0
  %PC.i373 = bitcast %union.anon* %948 to i64*
  %949 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %950 = getelementptr inbounds %struct.GPR, %struct.GPR* %949, i32 0, i32 1
  %951 = getelementptr inbounds %struct.Reg, %struct.Reg* %950, i32 0, i32 0
  %RAX.i374 = bitcast %union.anon* %951 to i64*
  %952 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %953 = getelementptr inbounds %struct.GPR, %struct.GPR* %952, i32 0, i32 5
  %954 = getelementptr inbounds %struct.Reg, %struct.Reg* %953, i32 0, i32 0
  %RCX.i375 = bitcast %union.anon* %954 to i64*
  %955 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %956 = getelementptr inbounds %struct.GPR, %struct.GPR* %955, i32 0, i32 7
  %957 = getelementptr inbounds %struct.Reg, %struct.Reg* %956, i32 0, i32 0
  %RDX.i376 = bitcast %union.anon* %957 to i64*
  %958 = load i64, i64* %RAX.i374
  %959 = load i64, i64* %RCX.i375
  %960 = add i64 %959, %958
  %961 = load i64, i64* %PC.i373
  %962 = add i64 %961, 4
  store i64 %962, i64* %PC.i373
  %963 = inttoptr i64 %960 to i8*
  %964 = load i8, i8* %963
  %965 = sext i8 %964 to i64
  %966 = and i64 %965, 4294967295
  store i64 %966, i64* %RDX.i376, align 8
  store %struct.Memory* %loadMem_403458, %struct.Memory** %MEMORY
  %loadMem_40345c = load %struct.Memory*, %struct.Memory** %MEMORY
  %967 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %968 = getelementptr inbounds %struct.GPR, %struct.GPR* %967, i32 0, i32 33
  %969 = getelementptr inbounds %struct.Reg, %struct.Reg* %968, i32 0, i32 0
  %PC.i371 = bitcast %union.anon* %969 to i64*
  %970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %971 = getelementptr inbounds %struct.GPR, %struct.GPR* %970, i32 0, i32 7
  %972 = getelementptr inbounds %struct.Reg, %struct.Reg* %971, i32 0, i32 0
  %EDX.i372 = bitcast %union.anon* %972 to i32*
  %973 = load i32, i32* %EDX.i372
  %974 = zext i32 %973 to i64
  %975 = load i64, i64* %PC.i371
  %976 = add i64 %975, 3
  store i64 %976, i64* %PC.i371
  %977 = sub i32 %973, 126
  %978 = icmp ult i32 %973, 126
  %979 = zext i1 %978 to i8
  %980 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %979, i8* %980, align 1
  %981 = and i32 %977, 255
  %982 = call i32 @llvm.ctpop.i32(i32 %981)
  %983 = trunc i32 %982 to i8
  %984 = and i8 %983, 1
  %985 = xor i8 %984, 1
  %986 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %985, i8* %986, align 1
  %987 = xor i64 126, %974
  %988 = trunc i64 %987 to i32
  %989 = xor i32 %988, %977
  %990 = lshr i32 %989, 4
  %991 = trunc i32 %990 to i8
  %992 = and i8 %991, 1
  %993 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %992, i8* %993, align 1
  %994 = icmp eq i32 %977, 0
  %995 = zext i1 %994 to i8
  %996 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %995, i8* %996, align 1
  %997 = lshr i32 %977, 31
  %998 = trunc i32 %997 to i8
  %999 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %998, i8* %999, align 1
  %1000 = lshr i32 %973, 31
  %1001 = xor i32 %997, %1000
  %1002 = add i32 %1001, %1000
  %1003 = icmp eq i32 %1002, 2
  %1004 = zext i1 %1003 to i8
  %1005 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1004, i8* %1005, align 1
  store %struct.Memory* %loadMem_40345c, %struct.Memory** %MEMORY
  %loadMem_40345f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1006 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1007 = getelementptr inbounds %struct.GPR, %struct.GPR* %1006, i32 0, i32 33
  %1008 = getelementptr inbounds %struct.Reg, %struct.Reg* %1007, i32 0, i32 0
  %PC.i370 = bitcast %union.anon* %1008 to i64*
  %1009 = load i64, i64* %PC.i370
  %1010 = add i64 %1009, 15
  %1011 = load i64, i64* %PC.i370
  %1012 = add i64 %1011, 6
  %1013 = load i64, i64* %PC.i370
  %1014 = add i64 %1013, 6
  store i64 %1014, i64* %PC.i370
  %1015 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1016 = load i8, i8* %1015, align 1
  %1017 = icmp eq i8 %1016, 0
  %1018 = zext i1 %1017 to i8
  store i8 %1018, i8* %BRANCH_TAKEN, align 1
  %1019 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1020 = select i1 %1017, i64 %1010, i64 %1012
  store i64 %1020, i64* %1019, align 8
  store %struct.Memory* %loadMem_40345f, %struct.Memory** %MEMORY
  %loadBr_40345f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40345f = icmp eq i8 %loadBr_40345f, 1
  br i1 %cmpBr_40345f, label %block_.L_40346e, label %block_.L_403465

block_.L_403465:                                  ; preds = %block_403448, %block_40342b, %block_40340e, %block_4033f1, %block_4033d4
  %loadMem_403465 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1021 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1022 = getelementptr inbounds %struct.GPR, %struct.GPR* %1021, i32 0, i32 33
  %1023 = getelementptr inbounds %struct.Reg, %struct.Reg* %1022, i32 0, i32 0
  %PC.i367 = bitcast %union.anon* %1023 to i64*
  %1024 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1025 = getelementptr inbounds %struct.GPR, %struct.GPR* %1024, i32 0, i32 1
  %1026 = getelementptr inbounds %struct.Reg, %struct.Reg* %1025, i32 0, i32 0
  %RAX.i368 = bitcast %union.anon* %1026 to i64*
  %1027 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1028 = getelementptr inbounds %struct.GPR, %struct.GPR* %1027, i32 0, i32 15
  %1029 = getelementptr inbounds %struct.Reg, %struct.Reg* %1028, i32 0, i32 0
  %RBP.i369 = bitcast %union.anon* %1029 to i64*
  %1030 = load i64, i64* %RBP.i369
  %1031 = sub i64 %1030, 32
  %1032 = load i64, i64* %PC.i367
  %1033 = add i64 %1032, 3
  store i64 %1033, i64* %PC.i367
  %1034 = inttoptr i64 %1031 to i32*
  %1035 = load i32, i32* %1034
  %1036 = zext i32 %1035 to i64
  store i64 %1036, i64* %RAX.i368, align 8
  store %struct.Memory* %loadMem_403465, %struct.Memory** %MEMORY
  %loadMem_403468 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1037 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1038 = getelementptr inbounds %struct.GPR, %struct.GPR* %1037, i32 0, i32 33
  %1039 = getelementptr inbounds %struct.Reg, %struct.Reg* %1038, i32 0, i32 0
  %PC.i365 = bitcast %union.anon* %1039 to i64*
  %1040 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1041 = getelementptr inbounds %struct.GPR, %struct.GPR* %1040, i32 0, i32 1
  %1042 = getelementptr inbounds %struct.Reg, %struct.Reg* %1041, i32 0, i32 0
  %RAX.i366 = bitcast %union.anon* %1042 to i64*
  %1043 = load i64, i64* %RAX.i366
  %1044 = load i64, i64* %PC.i365
  %1045 = add i64 %1044, 3
  store i64 %1045, i64* %PC.i365
  %1046 = trunc i64 %1043 to i32
  %1047 = add i32 1, %1046
  %1048 = zext i32 %1047 to i64
  store i64 %1048, i64* %RAX.i366, align 8
  %1049 = icmp ult i32 %1047, %1046
  %1050 = icmp ult i32 %1047, 1
  %1051 = or i1 %1049, %1050
  %1052 = zext i1 %1051 to i8
  %1053 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1052, i8* %1053, align 1
  %1054 = and i32 %1047, 255
  %1055 = call i32 @llvm.ctpop.i32(i32 %1054)
  %1056 = trunc i32 %1055 to i8
  %1057 = and i8 %1056, 1
  %1058 = xor i8 %1057, 1
  %1059 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1058, i8* %1059, align 1
  %1060 = xor i64 1, %1043
  %1061 = trunc i64 %1060 to i32
  %1062 = xor i32 %1061, %1047
  %1063 = lshr i32 %1062, 4
  %1064 = trunc i32 %1063 to i8
  %1065 = and i8 %1064, 1
  %1066 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1065, i8* %1066, align 1
  %1067 = icmp eq i32 %1047, 0
  %1068 = zext i1 %1067 to i8
  %1069 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1068, i8* %1069, align 1
  %1070 = lshr i32 %1047, 31
  %1071 = trunc i32 %1070 to i8
  %1072 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1071, i8* %1072, align 1
  %1073 = lshr i32 %1046, 31
  %1074 = xor i32 %1070, %1073
  %1075 = add i32 %1074, %1070
  %1076 = icmp eq i32 %1075, 2
  %1077 = zext i1 %1076 to i8
  %1078 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1077, i8* %1078, align 1
  store %struct.Memory* %loadMem_403468, %struct.Memory** %MEMORY
  %loadMem_40346b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1079 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1080 = getelementptr inbounds %struct.GPR, %struct.GPR* %1079, i32 0, i32 33
  %1081 = getelementptr inbounds %struct.Reg, %struct.Reg* %1080, i32 0, i32 0
  %PC.i362 = bitcast %union.anon* %1081 to i64*
  %1082 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1083 = getelementptr inbounds %struct.GPR, %struct.GPR* %1082, i32 0, i32 1
  %1084 = getelementptr inbounds %struct.Reg, %struct.Reg* %1083, i32 0, i32 0
  %EAX.i363 = bitcast %union.anon* %1084 to i32*
  %1085 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1086 = getelementptr inbounds %struct.GPR, %struct.GPR* %1085, i32 0, i32 15
  %1087 = getelementptr inbounds %struct.Reg, %struct.Reg* %1086, i32 0, i32 0
  %RBP.i364 = bitcast %union.anon* %1087 to i64*
  %1088 = load i64, i64* %RBP.i364
  %1089 = sub i64 %1088, 32
  %1090 = load i32, i32* %EAX.i363
  %1091 = zext i32 %1090 to i64
  %1092 = load i64, i64* %PC.i362
  %1093 = add i64 %1092, 3
  store i64 %1093, i64* %PC.i362
  %1094 = inttoptr i64 %1089 to i32*
  store i32 %1090, i32* %1094
  store %struct.Memory* %loadMem_40346b, %struct.Memory** %MEMORY
  br label %block_.L_40346e

block_.L_40346e:                                  ; preds = %block_.L_403465, %block_403448
  %loadMem_40346e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1095 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1096 = getelementptr inbounds %struct.GPR, %struct.GPR* %1095, i32 0, i32 33
  %1097 = getelementptr inbounds %struct.Reg, %struct.Reg* %1096, i32 0, i32 0
  %PC.i361 = bitcast %union.anon* %1097 to i64*
  %1098 = load i64, i64* %PC.i361
  %1099 = add i64 %1098, 5
  %1100 = load i64, i64* %PC.i361
  %1101 = add i64 %1100, 5
  store i64 %1101, i64* %PC.i361
  %1102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1099, i64* %1102, align 8
  store %struct.Memory* %loadMem_40346e, %struct.Memory** %MEMORY
  br label %block_.L_403473

block_.L_403473:                                  ; preds = %block_.L_40346e
  %loadMem_403473 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1104 = getelementptr inbounds %struct.GPR, %struct.GPR* %1103, i32 0, i32 33
  %1105 = getelementptr inbounds %struct.Reg, %struct.Reg* %1104, i32 0, i32 0
  %PC.i358 = bitcast %union.anon* %1105 to i64*
  %1106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1107 = getelementptr inbounds %struct.GPR, %struct.GPR* %1106, i32 0, i32 1
  %1108 = getelementptr inbounds %struct.Reg, %struct.Reg* %1107, i32 0, i32 0
  %RAX.i359 = bitcast %union.anon* %1108 to i64*
  %1109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1110 = getelementptr inbounds %struct.GPR, %struct.GPR* %1109, i32 0, i32 15
  %1111 = getelementptr inbounds %struct.Reg, %struct.Reg* %1110, i32 0, i32 0
  %RBP.i360 = bitcast %union.anon* %1111 to i64*
  %1112 = load i64, i64* %RBP.i360
  %1113 = sub i64 %1112, 28
  %1114 = load i64, i64* %PC.i358
  %1115 = add i64 %1114, 3
  store i64 %1115, i64* %PC.i358
  %1116 = inttoptr i64 %1113 to i32*
  %1117 = load i32, i32* %1116
  %1118 = zext i32 %1117 to i64
  store i64 %1118, i64* %RAX.i359, align 8
  store %struct.Memory* %loadMem_403473, %struct.Memory** %MEMORY
  %loadMem_403476 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1120 = getelementptr inbounds %struct.GPR, %struct.GPR* %1119, i32 0, i32 33
  %1121 = getelementptr inbounds %struct.Reg, %struct.Reg* %1120, i32 0, i32 0
  %PC.i356 = bitcast %union.anon* %1121 to i64*
  %1122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1123 = getelementptr inbounds %struct.GPR, %struct.GPR* %1122, i32 0, i32 1
  %1124 = getelementptr inbounds %struct.Reg, %struct.Reg* %1123, i32 0, i32 0
  %RAX.i357 = bitcast %union.anon* %1124 to i64*
  %1125 = load i64, i64* %RAX.i357
  %1126 = load i64, i64* %PC.i356
  %1127 = add i64 %1126, 3
  store i64 %1127, i64* %PC.i356
  %1128 = trunc i64 %1125 to i32
  %1129 = add i32 1, %1128
  %1130 = zext i32 %1129 to i64
  store i64 %1130, i64* %RAX.i357, align 8
  %1131 = icmp ult i32 %1129, %1128
  %1132 = icmp ult i32 %1129, 1
  %1133 = or i1 %1131, %1132
  %1134 = zext i1 %1133 to i8
  %1135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1134, i8* %1135, align 1
  %1136 = and i32 %1129, 255
  %1137 = call i32 @llvm.ctpop.i32(i32 %1136)
  %1138 = trunc i32 %1137 to i8
  %1139 = and i8 %1138, 1
  %1140 = xor i8 %1139, 1
  %1141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1140, i8* %1141, align 1
  %1142 = xor i64 1, %1125
  %1143 = trunc i64 %1142 to i32
  %1144 = xor i32 %1143, %1129
  %1145 = lshr i32 %1144, 4
  %1146 = trunc i32 %1145 to i8
  %1147 = and i8 %1146, 1
  %1148 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1147, i8* %1148, align 1
  %1149 = icmp eq i32 %1129, 0
  %1150 = zext i1 %1149 to i8
  %1151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1150, i8* %1151, align 1
  %1152 = lshr i32 %1129, 31
  %1153 = trunc i32 %1152 to i8
  %1154 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1153, i8* %1154, align 1
  %1155 = lshr i32 %1128, 31
  %1156 = xor i32 %1152, %1155
  %1157 = add i32 %1156, %1152
  %1158 = icmp eq i32 %1157, 2
  %1159 = zext i1 %1158 to i8
  %1160 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1159, i8* %1160, align 1
  store %struct.Memory* %loadMem_403476, %struct.Memory** %MEMORY
  %loadMem_403479 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1162 = getelementptr inbounds %struct.GPR, %struct.GPR* %1161, i32 0, i32 33
  %1163 = getelementptr inbounds %struct.Reg, %struct.Reg* %1162, i32 0, i32 0
  %PC.i353 = bitcast %union.anon* %1163 to i64*
  %1164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1165 = getelementptr inbounds %struct.GPR, %struct.GPR* %1164, i32 0, i32 1
  %1166 = getelementptr inbounds %struct.Reg, %struct.Reg* %1165, i32 0, i32 0
  %EAX.i354 = bitcast %union.anon* %1166 to i32*
  %1167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1168 = getelementptr inbounds %struct.GPR, %struct.GPR* %1167, i32 0, i32 15
  %1169 = getelementptr inbounds %struct.Reg, %struct.Reg* %1168, i32 0, i32 0
  %RBP.i355 = bitcast %union.anon* %1169 to i64*
  %1170 = load i64, i64* %RBP.i355
  %1171 = sub i64 %1170, 28
  %1172 = load i32, i32* %EAX.i354
  %1173 = zext i32 %1172 to i64
  %1174 = load i64, i64* %PC.i353
  %1175 = add i64 %1174, 3
  store i64 %1175, i64* %PC.i353
  %1176 = inttoptr i64 %1171 to i32*
  store i32 %1172, i32* %1176
  store %struct.Memory* %loadMem_403479, %struct.Memory** %MEMORY
  %loadMem_40347c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1178 = getelementptr inbounds %struct.GPR, %struct.GPR* %1177, i32 0, i32 33
  %1179 = getelementptr inbounds %struct.Reg, %struct.Reg* %1178, i32 0, i32 0
  %PC.i352 = bitcast %union.anon* %1179 to i64*
  %1180 = load i64, i64* %PC.i352
  %1181 = add i64 %1180, -180
  %1182 = load i64, i64* %PC.i352
  %1183 = add i64 %1182, 5
  store i64 %1183, i64* %PC.i352
  %1184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1181, i64* %1184, align 8
  store %struct.Memory* %loadMem_40347c, %struct.Memory** %MEMORY
  br label %block_.L_4033c8

block_.L_403481:                                  ; preds = %block_.L_4033c8
  %loadMem_403481 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1186 = getelementptr inbounds %struct.GPR, %struct.GPR* %1185, i32 0, i32 33
  %1187 = getelementptr inbounds %struct.Reg, %struct.Reg* %1186, i32 0, i32 0
  %PC.i349 = bitcast %union.anon* %1187 to i64*
  %1188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1189 = getelementptr inbounds %struct.GPR, %struct.GPR* %1188, i32 0, i32 15
  %1190 = getelementptr inbounds %struct.Reg, %struct.Reg* %1189, i32 0, i32 0
  %RBP.i350 = bitcast %union.anon* %1190 to i64*
  %1191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1192 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1191, i64 0, i64 0
  %YMM0.i351 = bitcast %union.VectorReg* %1192 to %"class.std::bitset"*
  %1193 = bitcast %"class.std::bitset"* %YMM0.i351 to i8*
  %1194 = load i64, i64* %RBP.i350
  %1195 = sub i64 %1194, 32
  %1196 = load i64, i64* %PC.i349
  %1197 = add i64 %1196, 5
  store i64 %1197, i64* %PC.i349
  %1198 = bitcast i8* %1193 to <2 x i32>*
  %1199 = load <2 x i32>, <2 x i32>* %1198, align 1
  %1200 = getelementptr inbounds i8, i8* %1193, i64 8
  %1201 = bitcast i8* %1200 to <2 x i32>*
  %1202 = load <2 x i32>, <2 x i32>* %1201, align 1
  %1203 = inttoptr i64 %1195 to i32*
  %1204 = load i32, i32* %1203
  %1205 = sitofp i32 %1204 to float
  %1206 = bitcast i8* %1193 to float*
  store float %1205, float* %1206, align 1
  %1207 = extractelement <2 x i32> %1199, i32 1
  %1208 = getelementptr inbounds i8, i8* %1193, i64 4
  %1209 = bitcast i8* %1208 to i32*
  store i32 %1207, i32* %1209, align 1
  %1210 = extractelement <2 x i32> %1202, i32 0
  %1211 = bitcast i8* %1200 to i32*
  store i32 %1210, i32* %1211, align 1
  %1212 = extractelement <2 x i32> %1202, i32 1
  %1213 = getelementptr inbounds i8, i8* %1193, i64 12
  %1214 = bitcast i8* %1213 to i32*
  store i32 %1212, i32* %1214, align 1
  store %struct.Memory* %loadMem_403481, %struct.Memory** %MEMORY
  %loadMem_403486 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1216 = getelementptr inbounds %struct.GPR, %struct.GPR* %1215, i32 0, i32 33
  %1217 = getelementptr inbounds %struct.Reg, %struct.Reg* %1216, i32 0, i32 0
  %PC.i347 = bitcast %union.anon* %1217 to i64*
  %1218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1219 = getelementptr inbounds %struct.GPR, %struct.GPR* %1218, i32 0, i32 15
  %1220 = getelementptr inbounds %struct.Reg, %struct.Reg* %1219, i32 0, i32 0
  %RBP.i348 = bitcast %union.anon* %1220 to i64*
  %1221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1222 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1221, i64 0, i64 1
  %YMM1.i = bitcast %union.VectorReg* %1222 to %"class.std::bitset"*
  %1223 = bitcast %"class.std::bitset"* %YMM1.i to i8*
  %1224 = load i64, i64* %RBP.i348
  %1225 = sub i64 %1224, 12
  %1226 = load i64, i64* %PC.i347
  %1227 = add i64 %1226, 5
  store i64 %1227, i64* %PC.i347
  %1228 = bitcast i8* %1223 to <2 x i32>*
  %1229 = load <2 x i32>, <2 x i32>* %1228, align 1
  %1230 = getelementptr inbounds i8, i8* %1223, i64 8
  %1231 = bitcast i8* %1230 to <2 x i32>*
  %1232 = load <2 x i32>, <2 x i32>* %1231, align 1
  %1233 = inttoptr i64 %1225 to i32*
  %1234 = load i32, i32* %1233
  %1235 = sitofp i32 %1234 to float
  %1236 = bitcast i8* %1223 to float*
  store float %1235, float* %1236, align 1
  %1237 = extractelement <2 x i32> %1229, i32 1
  %1238 = getelementptr inbounds i8, i8* %1223, i64 4
  %1239 = bitcast i8* %1238 to i32*
  store i32 %1237, i32* %1239, align 1
  %1240 = extractelement <2 x i32> %1232, i32 0
  %1241 = bitcast i8* %1230 to i32*
  store i32 %1240, i32* %1241, align 1
  %1242 = extractelement <2 x i32> %1232, i32 1
  %1243 = getelementptr inbounds i8, i8* %1223, i64 12
  %1244 = bitcast i8* %1243 to i32*
  store i32 %1242, i32* %1244, align 1
  store %struct.Memory* %loadMem_403486, %struct.Memory** %MEMORY
  %loadMem_40348b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1246 = getelementptr inbounds %struct.GPR, %struct.GPR* %1245, i32 0, i32 33
  %1247 = getelementptr inbounds %struct.Reg, %struct.Reg* %1246, i32 0, i32 0
  %PC.i346 = bitcast %union.anon* %1247 to i64*
  %1248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1249 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1248, i64 0, i64 0
  %YMM0.i = bitcast %union.VectorReg* %1249 to %"class.std::bitset"*
  %1250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1251 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1250, i64 0, i64 1
  %XMM1.i = bitcast %union.VectorReg* %1251 to %union.vec128_t*
  %1252 = bitcast %"class.std::bitset"* %YMM0.i to i8*
  %1253 = bitcast %"class.std::bitset"* %YMM0.i to i8*
  %1254 = bitcast %union.vec128_t* %XMM1.i to i8*
  %1255 = load i64, i64* %PC.i346
  %1256 = add i64 %1255, 4
  store i64 %1256, i64* %PC.i346
  %1257 = bitcast i8* %1253 to <2 x float>*
  %1258 = load <2 x float>, <2 x float>* %1257, align 1
  %1259 = getelementptr inbounds i8, i8* %1253, i64 8
  %1260 = bitcast i8* %1259 to <2 x i32>*
  %1261 = load <2 x i32>, <2 x i32>* %1260, align 1
  %1262 = bitcast i8* %1254 to <2 x float>*
  %1263 = load <2 x float>, <2 x float>* %1262, align 1
  %1264 = extractelement <2 x float> %1258, i32 0
  %1265 = extractelement <2 x float> %1263, i32 0
  %1266 = fdiv float %1264, %1265
  %1267 = bitcast i8* %1252 to float*
  store float %1266, float* %1267, align 1
  %1268 = bitcast <2 x float> %1258 to <2 x i32>
  %1269 = extractelement <2 x i32> %1268, i32 1
  %1270 = getelementptr inbounds i8, i8* %1252, i64 4
  %1271 = bitcast i8* %1270 to i32*
  store i32 %1269, i32* %1271, align 1
  %1272 = extractelement <2 x i32> %1261, i32 0
  %1273 = getelementptr inbounds i8, i8* %1252, i64 8
  %1274 = bitcast i8* %1273 to i32*
  store i32 %1272, i32* %1274, align 1
  %1275 = extractelement <2 x i32> %1261, i32 1
  %1276 = getelementptr inbounds i8, i8* %1252, i64 12
  %1277 = bitcast i8* %1276 to i32*
  store i32 %1275, i32* %1277, align 1
  store %struct.Memory* %loadMem_40348b, %struct.Memory** %MEMORY
  %loadMem_40348f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1279 = getelementptr inbounds %struct.GPR, %struct.GPR* %1278, i32 0, i32 33
  %1280 = getelementptr inbounds %struct.Reg, %struct.Reg* %1279, i32 0, i32 0
  %PC.i341 = bitcast %union.anon* %1280 to i64*
  %1281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1282 = getelementptr inbounds %struct.GPR, %struct.GPR* %1281, i32 0, i32 15
  %1283 = getelementptr inbounds %struct.Reg, %struct.Reg* %1282, i32 0, i32 0
  %RBP.i342 = bitcast %union.anon* %1283 to i64*
  %1284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1285 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1284, i64 0, i64 0
  %XMM0.i = bitcast %union.VectorReg* %1285 to %union.vec128_t*
  %1286 = bitcast %union.vec128_t* %XMM0.i to i8*
  %1287 = load i64, i64* %RBP.i342
  %1288 = sub i64 %1287, 20
  %1289 = load i64, i64* %PC.i341
  %1290 = add i64 %1289, 4
  store i64 %1290, i64* %PC.i341
  %1291 = bitcast i8* %1286 to <2 x float>*
  %1292 = load <2 x float>, <2 x float>* %1291, align 1
  %1293 = extractelement <2 x float> %1292, i32 0
  %1294 = inttoptr i64 %1288 to float*
  %1295 = load float, float* %1294
  %1296 = fcmp uno float %1293, %1295
  br i1 %1296, label %1297, label %1309

; <label>:1297:                                   ; preds = %block_.L_403481
  %1298 = fadd float %1293, %1295
  %1299 = bitcast float %1298 to i32
  %1300 = and i32 %1299, 2143289344
  %1301 = icmp eq i32 %1300, 2139095040
  %1302 = and i32 %1299, 4194303
  %1303 = icmp ne i32 %1302, 0
  %1304 = and i1 %1301, %1303
  br i1 %1304, label %1305, label %1315

; <label>:1305:                                   ; preds = %1297
  %1306 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1307 = load i64, i64* %1306, align 8
  %1308 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1307, %struct.Memory* %loadMem_40348f)
  br label %routine_ucomiss_MINUS0x14__rbp____xmm0.exit

; <label>:1309:                                   ; preds = %block_.L_403481
  %1310 = fcmp ogt float %1293, %1295
  br i1 %1310, label %1315, label %1311

; <label>:1311:                                   ; preds = %1309
  %1312 = fcmp olt float %1293, %1295
  br i1 %1312, label %1315, label %1313

; <label>:1313:                                   ; preds = %1311
  %1314 = fcmp oeq float %1293, %1295
  br i1 %1314, label %1315, label %1322

; <label>:1315:                                   ; preds = %1313, %1311, %1309, %1297
  %1316 = phi i8 [ 0, %1309 ], [ 0, %1311 ], [ 1, %1313 ], [ 1, %1297 ]
  %1317 = phi i8 [ 0, %1309 ], [ 0, %1311 ], [ 0, %1313 ], [ 1, %1297 ]
  %1318 = phi i8 [ 0, %1309 ], [ 1, %1311 ], [ 0, %1313 ], [ 1, %1297 ]
  %1319 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1316, i8* %1319, align 1
  %1320 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1317, i8* %1320, align 1
  %1321 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1318, i8* %1321, align 1
  br label %1322

; <label>:1322:                                   ; preds = %1315, %1313
  %1323 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1323, align 1
  %1324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1324, align 1
  %1325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1325, align 1
  br label %routine_ucomiss_MINUS0x14__rbp____xmm0.exit

routine_ucomiss_MINUS0x14__rbp____xmm0.exit:      ; preds = %1305, %1322
  %1326 = phi %struct.Memory* [ %1308, %1305 ], [ %loadMem_40348f, %1322 ]
  store %struct.Memory* %1326, %struct.Memory** %MEMORY
  %loadMem_403493 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1328 = getelementptr inbounds %struct.GPR, %struct.GPR* %1327, i32 0, i32 33
  %1329 = getelementptr inbounds %struct.Reg, %struct.Reg* %1328, i32 0, i32 0
  %PC.i340 = bitcast %union.anon* %1329 to i64*
  %1330 = load i64, i64* %PC.i340
  %1331 = add i64 %1330, 265
  %1332 = load i64, i64* %PC.i340
  %1333 = add i64 %1332, 6
  %1334 = load i64, i64* %PC.i340
  %1335 = add i64 %1334, 6
  store i64 %1335, i64* %PC.i340
  %1336 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1337 = load i8, i8* %1336, align 1
  %1338 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1339 = load i8, i8* %1338, align 1
  %1340 = or i8 %1339, %1337
  %1341 = icmp ne i8 %1340, 0
  %1342 = zext i1 %1341 to i8
  store i8 %1342, i8* %BRANCH_TAKEN, align 1
  %1343 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1344 = select i1 %1341, i64 %1331, i64 %1333
  store i64 %1344, i64* %1343, align 8
  store %struct.Memory* %loadMem_403493, %struct.Memory** %MEMORY
  %loadBr_403493 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_403493 = icmp eq i8 %loadBr_403493, 1
  br i1 %cmpBr_403493, label %block_.L_40359c, label %block_403499

block_403499:                                     ; preds = %routine_ucomiss_MINUS0x14__rbp____xmm0.exit
  %loadMem_403499 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1346 = getelementptr inbounds %struct.GPR, %struct.GPR* %1345, i32 0, i32 33
  %1347 = getelementptr inbounds %struct.Reg, %struct.Reg* %1346, i32 0, i32 0
  %PC.i338 = bitcast %union.anon* %1347 to i64*
  %1348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1349 = getelementptr inbounds %struct.GPR, %struct.GPR* %1348, i32 0, i32 15
  %1350 = getelementptr inbounds %struct.Reg, %struct.Reg* %1349, i32 0, i32 0
  %RBP.i339 = bitcast %union.anon* %1350 to i64*
  %1351 = load i64, i64* %RBP.i339
  %1352 = sub i64 %1351, 28
  %1353 = load i64, i64* %PC.i338
  %1354 = add i64 %1353, 7
  store i64 %1354, i64* %PC.i338
  %1355 = inttoptr i64 %1352 to i32*
  store i32 0, i32* %1355
  store %struct.Memory* %loadMem_403499, %struct.Memory** %MEMORY
  br label %block_.L_4034a0

block_.L_4034a0:                                  ; preds = %block_.L_403589, %block_403499
  %loadMem_4034a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1357 = getelementptr inbounds %struct.GPR, %struct.GPR* %1356, i32 0, i32 33
  %1358 = getelementptr inbounds %struct.Reg, %struct.Reg* %1357, i32 0, i32 0
  %PC.i335 = bitcast %union.anon* %1358 to i64*
  %1359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1360 = getelementptr inbounds %struct.GPR, %struct.GPR* %1359, i32 0, i32 1
  %1361 = getelementptr inbounds %struct.Reg, %struct.Reg* %1360, i32 0, i32 0
  %RAX.i336 = bitcast %union.anon* %1361 to i64*
  %1362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1363 = getelementptr inbounds %struct.GPR, %struct.GPR* %1362, i32 0, i32 15
  %1364 = getelementptr inbounds %struct.Reg, %struct.Reg* %1363, i32 0, i32 0
  %RBP.i337 = bitcast %union.anon* %1364 to i64*
  %1365 = load i64, i64* %RBP.i337
  %1366 = sub i64 %1365, 28
  %1367 = load i64, i64* %PC.i335
  %1368 = add i64 %1367, 3
  store i64 %1368, i64* %PC.i335
  %1369 = inttoptr i64 %1366 to i32*
  %1370 = load i32, i32* %1369
  %1371 = zext i32 %1370 to i64
  store i64 %1371, i64* %RAX.i336, align 8
  store %struct.Memory* %loadMem_4034a0, %struct.Memory** %MEMORY
  %loadMem_4034a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1373 = getelementptr inbounds %struct.GPR, %struct.GPR* %1372, i32 0, i32 33
  %1374 = getelementptr inbounds %struct.Reg, %struct.Reg* %1373, i32 0, i32 0
  %PC.i332 = bitcast %union.anon* %1374 to i64*
  %1375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1376 = getelementptr inbounds %struct.GPR, %struct.GPR* %1375, i32 0, i32 1
  %1377 = getelementptr inbounds %struct.Reg, %struct.Reg* %1376, i32 0, i32 0
  %EAX.i333 = bitcast %union.anon* %1377 to i32*
  %1378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1379 = getelementptr inbounds %struct.GPR, %struct.GPR* %1378, i32 0, i32 15
  %1380 = getelementptr inbounds %struct.Reg, %struct.Reg* %1379, i32 0, i32 0
  %RBP.i334 = bitcast %union.anon* %1380 to i64*
  %1381 = load i32, i32* %EAX.i333
  %1382 = zext i32 %1381 to i64
  %1383 = load i64, i64* %RBP.i334
  %1384 = sub i64 %1383, 12
  %1385 = load i64, i64* %PC.i332
  %1386 = add i64 %1385, 3
  store i64 %1386, i64* %PC.i332
  %1387 = inttoptr i64 %1384 to i32*
  %1388 = load i32, i32* %1387
  %1389 = sub i32 %1381, %1388
  %1390 = icmp ult i32 %1381, %1388
  %1391 = zext i1 %1390 to i8
  %1392 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1391, i8* %1392, align 1
  %1393 = and i32 %1389, 255
  %1394 = call i32 @llvm.ctpop.i32(i32 %1393)
  %1395 = trunc i32 %1394 to i8
  %1396 = and i8 %1395, 1
  %1397 = xor i8 %1396, 1
  %1398 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1397, i8* %1398, align 1
  %1399 = xor i32 %1388, %1381
  %1400 = xor i32 %1399, %1389
  %1401 = lshr i32 %1400, 4
  %1402 = trunc i32 %1401 to i8
  %1403 = and i8 %1402, 1
  %1404 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1403, i8* %1404, align 1
  %1405 = icmp eq i32 %1389, 0
  %1406 = zext i1 %1405 to i8
  %1407 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1406, i8* %1407, align 1
  %1408 = lshr i32 %1389, 31
  %1409 = trunc i32 %1408 to i8
  %1410 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1409, i8* %1410, align 1
  %1411 = lshr i32 %1381, 31
  %1412 = lshr i32 %1388, 31
  %1413 = xor i32 %1412, %1411
  %1414 = xor i32 %1408, %1411
  %1415 = add i32 %1414, %1413
  %1416 = icmp eq i32 %1415, 2
  %1417 = zext i1 %1416 to i8
  %1418 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1417, i8* %1418, align 1
  store %struct.Memory* %loadMem_4034a3, %struct.Memory** %MEMORY
  %loadMem_4034a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1420 = getelementptr inbounds %struct.GPR, %struct.GPR* %1419, i32 0, i32 33
  %1421 = getelementptr inbounds %struct.Reg, %struct.Reg* %1420, i32 0, i32 0
  %PC.i331 = bitcast %union.anon* %1421 to i64*
  %1422 = load i64, i64* %PC.i331
  %1423 = add i64 %1422, 241
  %1424 = load i64, i64* %PC.i331
  %1425 = add i64 %1424, 6
  %1426 = load i64, i64* %PC.i331
  %1427 = add i64 %1426, 6
  store i64 %1427, i64* %PC.i331
  %1428 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1429 = load i8, i8* %1428, align 1
  %1430 = icmp ne i8 %1429, 0
  %1431 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1432 = load i8, i8* %1431, align 1
  %1433 = icmp ne i8 %1432, 0
  %1434 = xor i1 %1430, %1433
  %1435 = xor i1 %1434, true
  %1436 = zext i1 %1435 to i8
  store i8 %1436, i8* %BRANCH_TAKEN, align 1
  %1437 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1438 = select i1 %1434, i64 %1425, i64 %1423
  store i64 %1438, i64* %1437, align 8
  store %struct.Memory* %loadMem_4034a6, %struct.Memory** %MEMORY
  %loadBr_4034a6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4034a6 = icmp eq i8 %loadBr_4034a6, 1
  br i1 %cmpBr_4034a6, label %block_.L_403597, label %block_4034ac

block_4034ac:                                     ; preds = %block_.L_4034a0
  %loadMem_4034ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %1439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1440 = getelementptr inbounds %struct.GPR, %struct.GPR* %1439, i32 0, i32 33
  %1441 = getelementptr inbounds %struct.Reg, %struct.Reg* %1440, i32 0, i32 0
  %PC.i328 = bitcast %union.anon* %1441 to i64*
  %1442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1443 = getelementptr inbounds %struct.GPR, %struct.GPR* %1442, i32 0, i32 1
  %1444 = getelementptr inbounds %struct.Reg, %struct.Reg* %1443, i32 0, i32 0
  %RAX.i329 = bitcast %union.anon* %1444 to i64*
  %1445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1446 = getelementptr inbounds %struct.GPR, %struct.GPR* %1445, i32 0, i32 15
  %1447 = getelementptr inbounds %struct.Reg, %struct.Reg* %1446, i32 0, i32 0
  %RBP.i330 = bitcast %union.anon* %1447 to i64*
  %1448 = load i64, i64* %RBP.i330
  %1449 = sub i64 %1448, 8
  %1450 = load i64, i64* %PC.i328
  %1451 = add i64 %1450, 4
  store i64 %1451, i64* %PC.i328
  %1452 = inttoptr i64 %1449 to i64*
  %1453 = load i64, i64* %1452
  store i64 %1453, i64* %RAX.i329, align 8
  store %struct.Memory* %loadMem_4034ac, %struct.Memory** %MEMORY
  %loadMem_4034b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1455 = getelementptr inbounds %struct.GPR, %struct.GPR* %1454, i32 0, i32 33
  %1456 = getelementptr inbounds %struct.Reg, %struct.Reg* %1455, i32 0, i32 0
  %PC.i325 = bitcast %union.anon* %1456 to i64*
  %1457 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1458 = getelementptr inbounds %struct.GPR, %struct.GPR* %1457, i32 0, i32 5
  %1459 = getelementptr inbounds %struct.Reg, %struct.Reg* %1458, i32 0, i32 0
  %RCX.i326 = bitcast %union.anon* %1459 to i64*
  %1460 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1461 = getelementptr inbounds %struct.GPR, %struct.GPR* %1460, i32 0, i32 15
  %1462 = getelementptr inbounds %struct.Reg, %struct.Reg* %1461, i32 0, i32 0
  %RBP.i327 = bitcast %union.anon* %1462 to i64*
  %1463 = load i64, i64* %RBP.i327
  %1464 = sub i64 %1463, 28
  %1465 = load i64, i64* %PC.i325
  %1466 = add i64 %1465, 4
  store i64 %1466, i64* %PC.i325
  %1467 = inttoptr i64 %1464 to i32*
  %1468 = load i32, i32* %1467
  %1469 = sext i32 %1468 to i64
  store i64 %1469, i64* %RCX.i326, align 8
  store %struct.Memory* %loadMem_4034b0, %struct.Memory** %MEMORY
  %loadMem_4034b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1471 = getelementptr inbounds %struct.GPR, %struct.GPR* %1470, i32 0, i32 33
  %1472 = getelementptr inbounds %struct.Reg, %struct.Reg* %1471, i32 0, i32 0
  %PC.i322 = bitcast %union.anon* %1472 to i64*
  %1473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1474 = getelementptr inbounds %struct.GPR, %struct.GPR* %1473, i32 0, i32 1
  %1475 = getelementptr inbounds %struct.Reg, %struct.Reg* %1474, i32 0, i32 0
  %RAX.i323 = bitcast %union.anon* %1475 to i64*
  %1476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1477 = getelementptr inbounds %struct.GPR, %struct.GPR* %1476, i32 0, i32 5
  %1478 = getelementptr inbounds %struct.Reg, %struct.Reg* %1477, i32 0, i32 0
  %RCX.i324 = bitcast %union.anon* %1478 to i64*
  %1479 = load i64, i64* %RAX.i323
  %1480 = load i64, i64* %RCX.i324
  %1481 = mul i64 %1480, 8
  %1482 = add i64 %1481, %1479
  %1483 = load i64, i64* %PC.i322
  %1484 = add i64 %1483, 4
  store i64 %1484, i64* %PC.i322
  %1485 = inttoptr i64 %1482 to i64*
  %1486 = load i64, i64* %1485
  store i64 %1486, i64* %RAX.i323, align 8
  store %struct.Memory* %loadMem_4034b4, %struct.Memory** %MEMORY
  %loadMem_4034b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1488 = getelementptr inbounds %struct.GPR, %struct.GPR* %1487, i32 0, i32 33
  %1489 = getelementptr inbounds %struct.Reg, %struct.Reg* %1488, i32 0, i32 0
  %PC.i319 = bitcast %union.anon* %1489 to i64*
  %1490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1491 = getelementptr inbounds %struct.GPR, %struct.GPR* %1490, i32 0, i32 5
  %1492 = getelementptr inbounds %struct.Reg, %struct.Reg* %1491, i32 0, i32 0
  %RCX.i320 = bitcast %union.anon* %1492 to i64*
  %1493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1494 = getelementptr inbounds %struct.GPR, %struct.GPR* %1493, i32 0, i32 15
  %1495 = getelementptr inbounds %struct.Reg, %struct.Reg* %1494, i32 0, i32 0
  %RBP.i321 = bitcast %union.anon* %1495 to i64*
  %1496 = load i64, i64* %RBP.i321
  %1497 = sub i64 %1496, 24
  %1498 = load i64, i64* %PC.i319
  %1499 = add i64 %1498, 4
  store i64 %1499, i64* %PC.i319
  %1500 = inttoptr i64 %1497 to i32*
  %1501 = load i32, i32* %1500
  %1502 = sext i32 %1501 to i64
  store i64 %1502, i64* %RCX.i320, align 8
  store %struct.Memory* %loadMem_4034b8, %struct.Memory** %MEMORY
  %loadMem_4034bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1504 = getelementptr inbounds %struct.GPR, %struct.GPR* %1503, i32 0, i32 33
  %1505 = getelementptr inbounds %struct.Reg, %struct.Reg* %1504, i32 0, i32 0
  %PC.i315 = bitcast %union.anon* %1505 to i64*
  %1506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1507 = getelementptr inbounds %struct.GPR, %struct.GPR* %1506, i32 0, i32 1
  %1508 = getelementptr inbounds %struct.Reg, %struct.Reg* %1507, i32 0, i32 0
  %RAX.i316 = bitcast %union.anon* %1508 to i64*
  %1509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1510 = getelementptr inbounds %struct.GPR, %struct.GPR* %1509, i32 0, i32 5
  %1511 = getelementptr inbounds %struct.Reg, %struct.Reg* %1510, i32 0, i32 0
  %RCX.i317 = bitcast %union.anon* %1511 to i64*
  %1512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1513 = getelementptr inbounds %struct.GPR, %struct.GPR* %1512, i32 0, i32 7
  %1514 = getelementptr inbounds %struct.Reg, %struct.Reg* %1513, i32 0, i32 0
  %RDX.i318 = bitcast %union.anon* %1514 to i64*
  %1515 = load i64, i64* %RAX.i316
  %1516 = load i64, i64* %RCX.i317
  %1517 = add i64 %1516, %1515
  %1518 = load i64, i64* %PC.i315
  %1519 = add i64 %1518, 4
  store i64 %1519, i64* %PC.i315
  %1520 = inttoptr i64 %1517 to i8*
  %1521 = load i8, i8* %1520
  %1522 = sext i8 %1521 to i64
  %1523 = and i64 %1522, 4294967295
  store i64 %1523, i64* %RDX.i318, align 8
  store %struct.Memory* %loadMem_4034bc, %struct.Memory** %MEMORY
  %loadMem_4034c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1525 = getelementptr inbounds %struct.GPR, %struct.GPR* %1524, i32 0, i32 33
  %1526 = getelementptr inbounds %struct.Reg, %struct.Reg* %1525, i32 0, i32 0
  %PC.i313 = bitcast %union.anon* %1526 to i64*
  %1527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1528 = getelementptr inbounds %struct.GPR, %struct.GPR* %1527, i32 0, i32 7
  %1529 = getelementptr inbounds %struct.Reg, %struct.Reg* %1528, i32 0, i32 0
  %EDX.i314 = bitcast %union.anon* %1529 to i32*
  %1530 = load i32, i32* %EDX.i314
  %1531 = zext i32 %1530 to i64
  %1532 = load i64, i64* %PC.i313
  %1533 = add i64 %1532, 3
  store i64 %1533, i64* %PC.i313
  %1534 = sub i32 %1530, 32
  %1535 = icmp ult i32 %1530, 32
  %1536 = zext i1 %1535 to i8
  %1537 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1536, i8* %1537, align 1
  %1538 = and i32 %1534, 255
  %1539 = call i32 @llvm.ctpop.i32(i32 %1538)
  %1540 = trunc i32 %1539 to i8
  %1541 = and i8 %1540, 1
  %1542 = xor i8 %1541, 1
  %1543 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1542, i8* %1543, align 1
  %1544 = xor i64 32, %1531
  %1545 = trunc i64 %1544 to i32
  %1546 = xor i32 %1545, %1534
  %1547 = lshr i32 %1546, 4
  %1548 = trunc i32 %1547 to i8
  %1549 = and i8 %1548, 1
  %1550 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1549, i8* %1550, align 1
  %1551 = icmp eq i32 %1534, 0
  %1552 = zext i1 %1551 to i8
  %1553 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1552, i8* %1553, align 1
  %1554 = lshr i32 %1534, 31
  %1555 = trunc i32 %1554 to i8
  %1556 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1555, i8* %1556, align 1
  %1557 = lshr i32 %1530, 31
  %1558 = xor i32 %1554, %1557
  %1559 = add i32 %1558, %1557
  %1560 = icmp eq i32 %1559, 2
  %1561 = zext i1 %1560 to i8
  %1562 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1561, i8* %1562, align 1
  store %struct.Memory* %loadMem_4034c0, %struct.Memory** %MEMORY
  %loadMem_4034c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1563 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1564 = getelementptr inbounds %struct.GPR, %struct.GPR* %1563, i32 0, i32 33
  %1565 = getelementptr inbounds %struct.Reg, %struct.Reg* %1564, i32 0, i32 0
  %PC.i312 = bitcast %union.anon* %1565 to i64*
  %1566 = load i64, i64* %PC.i312
  %1567 = add i64 %1566, 122
  %1568 = load i64, i64* %PC.i312
  %1569 = add i64 %1568, 6
  %1570 = load i64, i64* %PC.i312
  %1571 = add i64 %1570, 6
  store i64 %1571, i64* %PC.i312
  %1572 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1573 = load i8, i8* %1572, align 1
  store i8 %1573, i8* %BRANCH_TAKEN, align 1
  %1574 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1575 = icmp ne i8 %1573, 0
  %1576 = select i1 %1575, i64 %1567, i64 %1569
  store i64 %1576, i64* %1574, align 8
  store %struct.Memory* %loadMem_4034c3, %struct.Memory** %MEMORY
  %loadBr_4034c3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4034c3 = icmp eq i8 %loadBr_4034c3, 1
  br i1 %cmpBr_4034c3, label %block_.L_40353d, label %block_4034c9

block_4034c9:                                     ; preds = %block_4034ac
  %loadMem_4034c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1578 = getelementptr inbounds %struct.GPR, %struct.GPR* %1577, i32 0, i32 33
  %1579 = getelementptr inbounds %struct.Reg, %struct.Reg* %1578, i32 0, i32 0
  %PC.i309 = bitcast %union.anon* %1579 to i64*
  %1580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1581 = getelementptr inbounds %struct.GPR, %struct.GPR* %1580, i32 0, i32 1
  %1582 = getelementptr inbounds %struct.Reg, %struct.Reg* %1581, i32 0, i32 0
  %RAX.i310 = bitcast %union.anon* %1582 to i64*
  %1583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1584 = getelementptr inbounds %struct.GPR, %struct.GPR* %1583, i32 0, i32 15
  %1585 = getelementptr inbounds %struct.Reg, %struct.Reg* %1584, i32 0, i32 0
  %RBP.i311 = bitcast %union.anon* %1585 to i64*
  %1586 = load i64, i64* %RBP.i311
  %1587 = sub i64 %1586, 8
  %1588 = load i64, i64* %PC.i309
  %1589 = add i64 %1588, 4
  store i64 %1589, i64* %PC.i309
  %1590 = inttoptr i64 %1587 to i64*
  %1591 = load i64, i64* %1590
  store i64 %1591, i64* %RAX.i310, align 8
  store %struct.Memory* %loadMem_4034c9, %struct.Memory** %MEMORY
  %loadMem_4034cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1593 = getelementptr inbounds %struct.GPR, %struct.GPR* %1592, i32 0, i32 33
  %1594 = getelementptr inbounds %struct.Reg, %struct.Reg* %1593, i32 0, i32 0
  %PC.i306 = bitcast %union.anon* %1594 to i64*
  %1595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1596 = getelementptr inbounds %struct.GPR, %struct.GPR* %1595, i32 0, i32 5
  %1597 = getelementptr inbounds %struct.Reg, %struct.Reg* %1596, i32 0, i32 0
  %RCX.i307 = bitcast %union.anon* %1597 to i64*
  %1598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1599 = getelementptr inbounds %struct.GPR, %struct.GPR* %1598, i32 0, i32 15
  %1600 = getelementptr inbounds %struct.Reg, %struct.Reg* %1599, i32 0, i32 0
  %RBP.i308 = bitcast %union.anon* %1600 to i64*
  %1601 = load i64, i64* %RBP.i308
  %1602 = sub i64 %1601, 28
  %1603 = load i64, i64* %PC.i306
  %1604 = add i64 %1603, 4
  store i64 %1604, i64* %PC.i306
  %1605 = inttoptr i64 %1602 to i32*
  %1606 = load i32, i32* %1605
  %1607 = sext i32 %1606 to i64
  store i64 %1607, i64* %RCX.i307, align 8
  store %struct.Memory* %loadMem_4034cd, %struct.Memory** %MEMORY
  %loadMem_4034d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1609 = getelementptr inbounds %struct.GPR, %struct.GPR* %1608, i32 0, i32 33
  %1610 = getelementptr inbounds %struct.Reg, %struct.Reg* %1609, i32 0, i32 0
  %PC.i303 = bitcast %union.anon* %1610 to i64*
  %1611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1612 = getelementptr inbounds %struct.GPR, %struct.GPR* %1611, i32 0, i32 1
  %1613 = getelementptr inbounds %struct.Reg, %struct.Reg* %1612, i32 0, i32 0
  %RAX.i304 = bitcast %union.anon* %1613 to i64*
  %1614 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1615 = getelementptr inbounds %struct.GPR, %struct.GPR* %1614, i32 0, i32 5
  %1616 = getelementptr inbounds %struct.Reg, %struct.Reg* %1615, i32 0, i32 0
  %RCX.i305 = bitcast %union.anon* %1616 to i64*
  %1617 = load i64, i64* %RAX.i304
  %1618 = load i64, i64* %RCX.i305
  %1619 = mul i64 %1618, 8
  %1620 = add i64 %1619, %1617
  %1621 = load i64, i64* %PC.i303
  %1622 = add i64 %1621, 4
  store i64 %1622, i64* %PC.i303
  %1623 = inttoptr i64 %1620 to i64*
  %1624 = load i64, i64* %1623
  store i64 %1624, i64* %RAX.i304, align 8
  store %struct.Memory* %loadMem_4034d1, %struct.Memory** %MEMORY
  %loadMem_4034d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1626 = getelementptr inbounds %struct.GPR, %struct.GPR* %1625, i32 0, i32 33
  %1627 = getelementptr inbounds %struct.Reg, %struct.Reg* %1626, i32 0, i32 0
  %PC.i300 = bitcast %union.anon* %1627 to i64*
  %1628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1629 = getelementptr inbounds %struct.GPR, %struct.GPR* %1628, i32 0, i32 5
  %1630 = getelementptr inbounds %struct.Reg, %struct.Reg* %1629, i32 0, i32 0
  %RCX.i301 = bitcast %union.anon* %1630 to i64*
  %1631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1632 = getelementptr inbounds %struct.GPR, %struct.GPR* %1631, i32 0, i32 15
  %1633 = getelementptr inbounds %struct.Reg, %struct.Reg* %1632, i32 0, i32 0
  %RBP.i302 = bitcast %union.anon* %1633 to i64*
  %1634 = load i64, i64* %RBP.i302
  %1635 = sub i64 %1634, 24
  %1636 = load i64, i64* %PC.i300
  %1637 = add i64 %1636, 4
  store i64 %1637, i64* %PC.i300
  %1638 = inttoptr i64 %1635 to i32*
  %1639 = load i32, i32* %1638
  %1640 = sext i32 %1639 to i64
  store i64 %1640, i64* %RCX.i301, align 8
  store %struct.Memory* %loadMem_4034d5, %struct.Memory** %MEMORY
  %loadMem_4034d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1641 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1642 = getelementptr inbounds %struct.GPR, %struct.GPR* %1641, i32 0, i32 33
  %1643 = getelementptr inbounds %struct.Reg, %struct.Reg* %1642, i32 0, i32 0
  %PC.i296 = bitcast %union.anon* %1643 to i64*
  %1644 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1645 = getelementptr inbounds %struct.GPR, %struct.GPR* %1644, i32 0, i32 1
  %1646 = getelementptr inbounds %struct.Reg, %struct.Reg* %1645, i32 0, i32 0
  %RAX.i297 = bitcast %union.anon* %1646 to i64*
  %1647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1648 = getelementptr inbounds %struct.GPR, %struct.GPR* %1647, i32 0, i32 5
  %1649 = getelementptr inbounds %struct.Reg, %struct.Reg* %1648, i32 0, i32 0
  %RCX.i298 = bitcast %union.anon* %1649 to i64*
  %1650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1651 = getelementptr inbounds %struct.GPR, %struct.GPR* %1650, i32 0, i32 7
  %1652 = getelementptr inbounds %struct.Reg, %struct.Reg* %1651, i32 0, i32 0
  %RDX.i299 = bitcast %union.anon* %1652 to i64*
  %1653 = load i64, i64* %RAX.i297
  %1654 = load i64, i64* %RCX.i298
  %1655 = add i64 %1654, %1653
  %1656 = load i64, i64* %PC.i296
  %1657 = add i64 %1656, 4
  store i64 %1657, i64* %PC.i296
  %1658 = inttoptr i64 %1655 to i8*
  %1659 = load i8, i8* %1658
  %1660 = sext i8 %1659 to i64
  %1661 = and i64 %1660, 4294967295
  store i64 %1661, i64* %RDX.i299, align 8
  store %struct.Memory* %loadMem_4034d9, %struct.Memory** %MEMORY
  %loadMem_4034dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1662 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1663 = getelementptr inbounds %struct.GPR, %struct.GPR* %1662, i32 0, i32 33
  %1664 = getelementptr inbounds %struct.Reg, %struct.Reg* %1663, i32 0, i32 0
  %PC.i294 = bitcast %union.anon* %1664 to i64*
  %1665 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1666 = getelementptr inbounds %struct.GPR, %struct.GPR* %1665, i32 0, i32 7
  %1667 = getelementptr inbounds %struct.Reg, %struct.Reg* %1666, i32 0, i32 0
  %EDX.i295 = bitcast %union.anon* %1667 to i32*
  %1668 = load i32, i32* %EDX.i295
  %1669 = zext i32 %1668 to i64
  %1670 = load i64, i64* %PC.i294
  %1671 = add i64 %1670, 3
  store i64 %1671, i64* %PC.i294
  %1672 = sub i32 %1668, 46
  %1673 = icmp ult i32 %1668, 46
  %1674 = zext i1 %1673 to i8
  %1675 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1674, i8* %1675, align 1
  %1676 = and i32 %1672, 255
  %1677 = call i32 @llvm.ctpop.i32(i32 %1676)
  %1678 = trunc i32 %1677 to i8
  %1679 = and i8 %1678, 1
  %1680 = xor i8 %1679, 1
  %1681 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1680, i8* %1681, align 1
  %1682 = xor i64 46, %1669
  %1683 = trunc i64 %1682 to i32
  %1684 = xor i32 %1683, %1672
  %1685 = lshr i32 %1684, 4
  %1686 = trunc i32 %1685 to i8
  %1687 = and i8 %1686, 1
  %1688 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1687, i8* %1688, align 1
  %1689 = icmp eq i32 %1672, 0
  %1690 = zext i1 %1689 to i8
  %1691 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1690, i8* %1691, align 1
  %1692 = lshr i32 %1672, 31
  %1693 = trunc i32 %1692 to i8
  %1694 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1693, i8* %1694, align 1
  %1695 = lshr i32 %1668, 31
  %1696 = xor i32 %1692, %1695
  %1697 = add i32 %1696, %1695
  %1698 = icmp eq i32 %1697, 2
  %1699 = zext i1 %1698 to i8
  %1700 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1699, i8* %1700, align 1
  store %struct.Memory* %loadMem_4034dd, %struct.Memory** %MEMORY
  %loadMem_4034e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1702 = getelementptr inbounds %struct.GPR, %struct.GPR* %1701, i32 0, i32 33
  %1703 = getelementptr inbounds %struct.Reg, %struct.Reg* %1702, i32 0, i32 0
  %PC.i293 = bitcast %union.anon* %1703 to i64*
  %1704 = load i64, i64* %PC.i293
  %1705 = add i64 %1704, 93
  %1706 = load i64, i64* %PC.i293
  %1707 = add i64 %1706, 6
  %1708 = load i64, i64* %PC.i293
  %1709 = add i64 %1708, 6
  store i64 %1709, i64* %PC.i293
  %1710 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1711 = load i8, i8* %1710, align 1
  store i8 %1711, i8* %BRANCH_TAKEN, align 1
  %1712 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1713 = icmp ne i8 %1711, 0
  %1714 = select i1 %1713, i64 %1705, i64 %1707
  store i64 %1714, i64* %1712, align 8
  store %struct.Memory* %loadMem_4034e0, %struct.Memory** %MEMORY
  %loadBr_4034e0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4034e0 = icmp eq i8 %loadBr_4034e0, 1
  br i1 %cmpBr_4034e0, label %block_.L_40353d, label %block_4034e6

block_4034e6:                                     ; preds = %block_4034c9
  %loadMem_4034e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1716 = getelementptr inbounds %struct.GPR, %struct.GPR* %1715, i32 0, i32 33
  %1717 = getelementptr inbounds %struct.Reg, %struct.Reg* %1716, i32 0, i32 0
  %PC.i290 = bitcast %union.anon* %1717 to i64*
  %1718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1719 = getelementptr inbounds %struct.GPR, %struct.GPR* %1718, i32 0, i32 1
  %1720 = getelementptr inbounds %struct.Reg, %struct.Reg* %1719, i32 0, i32 0
  %RAX.i291 = bitcast %union.anon* %1720 to i64*
  %1721 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1722 = getelementptr inbounds %struct.GPR, %struct.GPR* %1721, i32 0, i32 15
  %1723 = getelementptr inbounds %struct.Reg, %struct.Reg* %1722, i32 0, i32 0
  %RBP.i292 = bitcast %union.anon* %1723 to i64*
  %1724 = load i64, i64* %RBP.i292
  %1725 = sub i64 %1724, 8
  %1726 = load i64, i64* %PC.i290
  %1727 = add i64 %1726, 4
  store i64 %1727, i64* %PC.i290
  %1728 = inttoptr i64 %1725 to i64*
  %1729 = load i64, i64* %1728
  store i64 %1729, i64* %RAX.i291, align 8
  store %struct.Memory* %loadMem_4034e6, %struct.Memory** %MEMORY
  %loadMem_4034ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %1730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1731 = getelementptr inbounds %struct.GPR, %struct.GPR* %1730, i32 0, i32 33
  %1732 = getelementptr inbounds %struct.Reg, %struct.Reg* %1731, i32 0, i32 0
  %PC.i287 = bitcast %union.anon* %1732 to i64*
  %1733 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1734 = getelementptr inbounds %struct.GPR, %struct.GPR* %1733, i32 0, i32 5
  %1735 = getelementptr inbounds %struct.Reg, %struct.Reg* %1734, i32 0, i32 0
  %RCX.i288 = bitcast %union.anon* %1735 to i64*
  %1736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1737 = getelementptr inbounds %struct.GPR, %struct.GPR* %1736, i32 0, i32 15
  %1738 = getelementptr inbounds %struct.Reg, %struct.Reg* %1737, i32 0, i32 0
  %RBP.i289 = bitcast %union.anon* %1738 to i64*
  %1739 = load i64, i64* %RBP.i289
  %1740 = sub i64 %1739, 28
  %1741 = load i64, i64* %PC.i287
  %1742 = add i64 %1741, 4
  store i64 %1742, i64* %PC.i287
  %1743 = inttoptr i64 %1740 to i32*
  %1744 = load i32, i32* %1743
  %1745 = sext i32 %1744 to i64
  store i64 %1745, i64* %RCX.i288, align 8
  store %struct.Memory* %loadMem_4034ea, %struct.Memory** %MEMORY
  %loadMem_4034ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %1746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1747 = getelementptr inbounds %struct.GPR, %struct.GPR* %1746, i32 0, i32 33
  %1748 = getelementptr inbounds %struct.Reg, %struct.Reg* %1747, i32 0, i32 0
  %PC.i284 = bitcast %union.anon* %1748 to i64*
  %1749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1750 = getelementptr inbounds %struct.GPR, %struct.GPR* %1749, i32 0, i32 1
  %1751 = getelementptr inbounds %struct.Reg, %struct.Reg* %1750, i32 0, i32 0
  %RAX.i285 = bitcast %union.anon* %1751 to i64*
  %1752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1753 = getelementptr inbounds %struct.GPR, %struct.GPR* %1752, i32 0, i32 5
  %1754 = getelementptr inbounds %struct.Reg, %struct.Reg* %1753, i32 0, i32 0
  %RCX.i286 = bitcast %union.anon* %1754 to i64*
  %1755 = load i64, i64* %RAX.i285
  %1756 = load i64, i64* %RCX.i286
  %1757 = mul i64 %1756, 8
  %1758 = add i64 %1757, %1755
  %1759 = load i64, i64* %PC.i284
  %1760 = add i64 %1759, 4
  store i64 %1760, i64* %PC.i284
  %1761 = inttoptr i64 %1758 to i64*
  %1762 = load i64, i64* %1761
  store i64 %1762, i64* %RAX.i285, align 8
  store %struct.Memory* %loadMem_4034ee, %struct.Memory** %MEMORY
  %loadMem_4034f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1763 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1764 = getelementptr inbounds %struct.GPR, %struct.GPR* %1763, i32 0, i32 33
  %1765 = getelementptr inbounds %struct.Reg, %struct.Reg* %1764, i32 0, i32 0
  %PC.i281 = bitcast %union.anon* %1765 to i64*
  %1766 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1767 = getelementptr inbounds %struct.GPR, %struct.GPR* %1766, i32 0, i32 5
  %1768 = getelementptr inbounds %struct.Reg, %struct.Reg* %1767, i32 0, i32 0
  %RCX.i282 = bitcast %union.anon* %1768 to i64*
  %1769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1770 = getelementptr inbounds %struct.GPR, %struct.GPR* %1769, i32 0, i32 15
  %1771 = getelementptr inbounds %struct.Reg, %struct.Reg* %1770, i32 0, i32 0
  %RBP.i283 = bitcast %union.anon* %1771 to i64*
  %1772 = load i64, i64* %RBP.i283
  %1773 = sub i64 %1772, 24
  %1774 = load i64, i64* %PC.i281
  %1775 = add i64 %1774, 4
  store i64 %1775, i64* %PC.i281
  %1776 = inttoptr i64 %1773 to i32*
  %1777 = load i32, i32* %1776
  %1778 = sext i32 %1777 to i64
  store i64 %1778, i64* %RCX.i282, align 8
  store %struct.Memory* %loadMem_4034f2, %struct.Memory** %MEMORY
  %loadMem_4034f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1779 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1780 = getelementptr inbounds %struct.GPR, %struct.GPR* %1779, i32 0, i32 33
  %1781 = getelementptr inbounds %struct.Reg, %struct.Reg* %1780, i32 0, i32 0
  %PC.i277 = bitcast %union.anon* %1781 to i64*
  %1782 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1783 = getelementptr inbounds %struct.GPR, %struct.GPR* %1782, i32 0, i32 1
  %1784 = getelementptr inbounds %struct.Reg, %struct.Reg* %1783, i32 0, i32 0
  %RAX.i278 = bitcast %union.anon* %1784 to i64*
  %1785 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1786 = getelementptr inbounds %struct.GPR, %struct.GPR* %1785, i32 0, i32 5
  %1787 = getelementptr inbounds %struct.Reg, %struct.Reg* %1786, i32 0, i32 0
  %RCX.i279 = bitcast %union.anon* %1787 to i64*
  %1788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1789 = getelementptr inbounds %struct.GPR, %struct.GPR* %1788, i32 0, i32 7
  %1790 = getelementptr inbounds %struct.Reg, %struct.Reg* %1789, i32 0, i32 0
  %RDX.i280 = bitcast %union.anon* %1790 to i64*
  %1791 = load i64, i64* %RAX.i278
  %1792 = load i64, i64* %RCX.i279
  %1793 = add i64 %1792, %1791
  %1794 = load i64, i64* %PC.i277
  %1795 = add i64 %1794, 4
  store i64 %1795, i64* %PC.i277
  %1796 = inttoptr i64 %1793 to i8*
  %1797 = load i8, i8* %1796
  %1798 = sext i8 %1797 to i64
  %1799 = and i64 %1798, 4294967295
  store i64 %1799, i64* %RDX.i280, align 8
  store %struct.Memory* %loadMem_4034f6, %struct.Memory** %MEMORY
  %loadMem_4034fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %1800 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1801 = getelementptr inbounds %struct.GPR, %struct.GPR* %1800, i32 0, i32 33
  %1802 = getelementptr inbounds %struct.Reg, %struct.Reg* %1801, i32 0, i32 0
  %PC.i275 = bitcast %union.anon* %1802 to i64*
  %1803 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1804 = getelementptr inbounds %struct.GPR, %struct.GPR* %1803, i32 0, i32 7
  %1805 = getelementptr inbounds %struct.Reg, %struct.Reg* %1804, i32 0, i32 0
  %EDX.i276 = bitcast %union.anon* %1805 to i32*
  %1806 = load i32, i32* %EDX.i276
  %1807 = zext i32 %1806 to i64
  %1808 = load i64, i64* %PC.i275
  %1809 = add i64 %1808, 3
  store i64 %1809, i64* %PC.i275
  %1810 = sub i32 %1806, 95
  %1811 = icmp ult i32 %1806, 95
  %1812 = zext i1 %1811 to i8
  %1813 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1812, i8* %1813, align 1
  %1814 = and i32 %1810, 255
  %1815 = call i32 @llvm.ctpop.i32(i32 %1814)
  %1816 = trunc i32 %1815 to i8
  %1817 = and i8 %1816, 1
  %1818 = xor i8 %1817, 1
  %1819 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1818, i8* %1819, align 1
  %1820 = xor i64 95, %1807
  %1821 = trunc i64 %1820 to i32
  %1822 = xor i32 %1821, %1810
  %1823 = lshr i32 %1822, 4
  %1824 = trunc i32 %1823 to i8
  %1825 = and i8 %1824, 1
  %1826 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1825, i8* %1826, align 1
  %1827 = icmp eq i32 %1810, 0
  %1828 = zext i1 %1827 to i8
  %1829 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1828, i8* %1829, align 1
  %1830 = lshr i32 %1810, 31
  %1831 = trunc i32 %1830 to i8
  %1832 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1831, i8* %1832, align 1
  %1833 = lshr i32 %1806, 31
  %1834 = xor i32 %1830, %1833
  %1835 = add i32 %1834, %1833
  %1836 = icmp eq i32 %1835, 2
  %1837 = zext i1 %1836 to i8
  %1838 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1837, i8* %1838, align 1
  store %struct.Memory* %loadMem_4034fa, %struct.Memory** %MEMORY
  %loadMem_4034fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1839 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1840 = getelementptr inbounds %struct.GPR, %struct.GPR* %1839, i32 0, i32 33
  %1841 = getelementptr inbounds %struct.Reg, %struct.Reg* %1840, i32 0, i32 0
  %PC.i274 = bitcast %union.anon* %1841 to i64*
  %1842 = load i64, i64* %PC.i274
  %1843 = add i64 %1842, 64
  %1844 = load i64, i64* %PC.i274
  %1845 = add i64 %1844, 6
  %1846 = load i64, i64* %PC.i274
  %1847 = add i64 %1846, 6
  store i64 %1847, i64* %PC.i274
  %1848 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1849 = load i8, i8* %1848, align 1
  store i8 %1849, i8* %BRANCH_TAKEN, align 1
  %1850 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1851 = icmp ne i8 %1849, 0
  %1852 = select i1 %1851, i64 %1843, i64 %1845
  store i64 %1852, i64* %1850, align 8
  store %struct.Memory* %loadMem_4034fd, %struct.Memory** %MEMORY
  %loadBr_4034fd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4034fd = icmp eq i8 %loadBr_4034fd, 1
  br i1 %cmpBr_4034fd, label %block_.L_40353d, label %block_403503

block_403503:                                     ; preds = %block_4034e6
  %loadMem_403503 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1853 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1854 = getelementptr inbounds %struct.GPR, %struct.GPR* %1853, i32 0, i32 33
  %1855 = getelementptr inbounds %struct.Reg, %struct.Reg* %1854, i32 0, i32 0
  %PC.i271 = bitcast %union.anon* %1855 to i64*
  %1856 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1857 = getelementptr inbounds %struct.GPR, %struct.GPR* %1856, i32 0, i32 1
  %1858 = getelementptr inbounds %struct.Reg, %struct.Reg* %1857, i32 0, i32 0
  %RAX.i272 = bitcast %union.anon* %1858 to i64*
  %1859 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1860 = getelementptr inbounds %struct.GPR, %struct.GPR* %1859, i32 0, i32 15
  %1861 = getelementptr inbounds %struct.Reg, %struct.Reg* %1860, i32 0, i32 0
  %RBP.i273 = bitcast %union.anon* %1861 to i64*
  %1862 = load i64, i64* %RBP.i273
  %1863 = sub i64 %1862, 8
  %1864 = load i64, i64* %PC.i271
  %1865 = add i64 %1864, 4
  store i64 %1865, i64* %PC.i271
  %1866 = inttoptr i64 %1863 to i64*
  %1867 = load i64, i64* %1866
  store i64 %1867, i64* %RAX.i272, align 8
  store %struct.Memory* %loadMem_403503, %struct.Memory** %MEMORY
  %loadMem_403507 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1868 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1869 = getelementptr inbounds %struct.GPR, %struct.GPR* %1868, i32 0, i32 33
  %1870 = getelementptr inbounds %struct.Reg, %struct.Reg* %1869, i32 0, i32 0
  %PC.i268 = bitcast %union.anon* %1870 to i64*
  %1871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1872 = getelementptr inbounds %struct.GPR, %struct.GPR* %1871, i32 0, i32 5
  %1873 = getelementptr inbounds %struct.Reg, %struct.Reg* %1872, i32 0, i32 0
  %RCX.i269 = bitcast %union.anon* %1873 to i64*
  %1874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1875 = getelementptr inbounds %struct.GPR, %struct.GPR* %1874, i32 0, i32 15
  %1876 = getelementptr inbounds %struct.Reg, %struct.Reg* %1875, i32 0, i32 0
  %RBP.i270 = bitcast %union.anon* %1876 to i64*
  %1877 = load i64, i64* %RBP.i270
  %1878 = sub i64 %1877, 28
  %1879 = load i64, i64* %PC.i268
  %1880 = add i64 %1879, 4
  store i64 %1880, i64* %PC.i268
  %1881 = inttoptr i64 %1878 to i32*
  %1882 = load i32, i32* %1881
  %1883 = sext i32 %1882 to i64
  store i64 %1883, i64* %RCX.i269, align 8
  store %struct.Memory* %loadMem_403507, %struct.Memory** %MEMORY
  %loadMem_40350b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1884 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1885 = getelementptr inbounds %struct.GPR, %struct.GPR* %1884, i32 0, i32 33
  %1886 = getelementptr inbounds %struct.Reg, %struct.Reg* %1885, i32 0, i32 0
  %PC.i265 = bitcast %union.anon* %1886 to i64*
  %1887 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1888 = getelementptr inbounds %struct.GPR, %struct.GPR* %1887, i32 0, i32 1
  %1889 = getelementptr inbounds %struct.Reg, %struct.Reg* %1888, i32 0, i32 0
  %RAX.i266 = bitcast %union.anon* %1889 to i64*
  %1890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1891 = getelementptr inbounds %struct.GPR, %struct.GPR* %1890, i32 0, i32 5
  %1892 = getelementptr inbounds %struct.Reg, %struct.Reg* %1891, i32 0, i32 0
  %RCX.i267 = bitcast %union.anon* %1892 to i64*
  %1893 = load i64, i64* %RAX.i266
  %1894 = load i64, i64* %RCX.i267
  %1895 = mul i64 %1894, 8
  %1896 = add i64 %1895, %1893
  %1897 = load i64, i64* %PC.i265
  %1898 = add i64 %1897, 4
  store i64 %1898, i64* %PC.i265
  %1899 = inttoptr i64 %1896 to i64*
  %1900 = load i64, i64* %1899
  store i64 %1900, i64* %RAX.i266, align 8
  store %struct.Memory* %loadMem_40350b, %struct.Memory** %MEMORY
  %loadMem_40350f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1902 = getelementptr inbounds %struct.GPR, %struct.GPR* %1901, i32 0, i32 33
  %1903 = getelementptr inbounds %struct.Reg, %struct.Reg* %1902, i32 0, i32 0
  %PC.i262 = bitcast %union.anon* %1903 to i64*
  %1904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1905 = getelementptr inbounds %struct.GPR, %struct.GPR* %1904, i32 0, i32 5
  %1906 = getelementptr inbounds %struct.Reg, %struct.Reg* %1905, i32 0, i32 0
  %RCX.i263 = bitcast %union.anon* %1906 to i64*
  %1907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1908 = getelementptr inbounds %struct.GPR, %struct.GPR* %1907, i32 0, i32 15
  %1909 = getelementptr inbounds %struct.Reg, %struct.Reg* %1908, i32 0, i32 0
  %RBP.i264 = bitcast %union.anon* %1909 to i64*
  %1910 = load i64, i64* %RBP.i264
  %1911 = sub i64 %1910, 24
  %1912 = load i64, i64* %PC.i262
  %1913 = add i64 %1912, 4
  store i64 %1913, i64* %PC.i262
  %1914 = inttoptr i64 %1911 to i32*
  %1915 = load i32, i32* %1914
  %1916 = sext i32 %1915 to i64
  store i64 %1916, i64* %RCX.i263, align 8
  store %struct.Memory* %loadMem_40350f, %struct.Memory** %MEMORY
  %loadMem_403513 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1917 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1918 = getelementptr inbounds %struct.GPR, %struct.GPR* %1917, i32 0, i32 33
  %1919 = getelementptr inbounds %struct.Reg, %struct.Reg* %1918, i32 0, i32 0
  %PC.i258 = bitcast %union.anon* %1919 to i64*
  %1920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1921 = getelementptr inbounds %struct.GPR, %struct.GPR* %1920, i32 0, i32 1
  %1922 = getelementptr inbounds %struct.Reg, %struct.Reg* %1921, i32 0, i32 0
  %RAX.i259 = bitcast %union.anon* %1922 to i64*
  %1923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1924 = getelementptr inbounds %struct.GPR, %struct.GPR* %1923, i32 0, i32 5
  %1925 = getelementptr inbounds %struct.Reg, %struct.Reg* %1924, i32 0, i32 0
  %RCX.i260 = bitcast %union.anon* %1925 to i64*
  %1926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1927 = getelementptr inbounds %struct.GPR, %struct.GPR* %1926, i32 0, i32 7
  %1928 = getelementptr inbounds %struct.Reg, %struct.Reg* %1927, i32 0, i32 0
  %RDX.i261 = bitcast %union.anon* %1928 to i64*
  %1929 = load i64, i64* %RAX.i259
  %1930 = load i64, i64* %RCX.i260
  %1931 = add i64 %1930, %1929
  %1932 = load i64, i64* %PC.i258
  %1933 = add i64 %1932, 4
  store i64 %1933, i64* %PC.i258
  %1934 = inttoptr i64 %1931 to i8*
  %1935 = load i8, i8* %1934
  %1936 = sext i8 %1935 to i64
  %1937 = and i64 %1936, 4294967295
  store i64 %1937, i64* %RDX.i261, align 8
  store %struct.Memory* %loadMem_403513, %struct.Memory** %MEMORY
  %loadMem_403517 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1939 = getelementptr inbounds %struct.GPR, %struct.GPR* %1938, i32 0, i32 33
  %1940 = getelementptr inbounds %struct.Reg, %struct.Reg* %1939, i32 0, i32 0
  %PC.i256 = bitcast %union.anon* %1940 to i64*
  %1941 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1942 = getelementptr inbounds %struct.GPR, %struct.GPR* %1941, i32 0, i32 7
  %1943 = getelementptr inbounds %struct.Reg, %struct.Reg* %1942, i32 0, i32 0
  %EDX.i257 = bitcast %union.anon* %1943 to i32*
  %1944 = load i32, i32* %EDX.i257
  %1945 = zext i32 %1944 to i64
  %1946 = load i64, i64* %PC.i256
  %1947 = add i64 %1946, 3
  store i64 %1947, i64* %PC.i256
  %1948 = sub i32 %1944, 45
  %1949 = icmp ult i32 %1944, 45
  %1950 = zext i1 %1949 to i8
  %1951 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1950, i8* %1951, align 1
  %1952 = and i32 %1948, 255
  %1953 = call i32 @llvm.ctpop.i32(i32 %1952)
  %1954 = trunc i32 %1953 to i8
  %1955 = and i8 %1954, 1
  %1956 = xor i8 %1955, 1
  %1957 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1956, i8* %1957, align 1
  %1958 = xor i64 45, %1945
  %1959 = trunc i64 %1958 to i32
  %1960 = xor i32 %1959, %1948
  %1961 = lshr i32 %1960, 4
  %1962 = trunc i32 %1961 to i8
  %1963 = and i8 %1962, 1
  %1964 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1963, i8* %1964, align 1
  %1965 = icmp eq i32 %1948, 0
  %1966 = zext i1 %1965 to i8
  %1967 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1966, i8* %1967, align 1
  %1968 = lshr i32 %1948, 31
  %1969 = trunc i32 %1968 to i8
  %1970 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1969, i8* %1970, align 1
  %1971 = lshr i32 %1944, 31
  %1972 = xor i32 %1968, %1971
  %1973 = add i32 %1972, %1971
  %1974 = icmp eq i32 %1973, 2
  %1975 = zext i1 %1974 to i8
  %1976 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1975, i8* %1976, align 1
  store %struct.Memory* %loadMem_403517, %struct.Memory** %MEMORY
  %loadMem_40351a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1977 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1978 = getelementptr inbounds %struct.GPR, %struct.GPR* %1977, i32 0, i32 33
  %1979 = getelementptr inbounds %struct.Reg, %struct.Reg* %1978, i32 0, i32 0
  %PC.i255 = bitcast %union.anon* %1979 to i64*
  %1980 = load i64, i64* %PC.i255
  %1981 = add i64 %1980, 35
  %1982 = load i64, i64* %PC.i255
  %1983 = add i64 %1982, 6
  %1984 = load i64, i64* %PC.i255
  %1985 = add i64 %1984, 6
  store i64 %1985, i64* %PC.i255
  %1986 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1987 = load i8, i8* %1986, align 1
  store i8 %1987, i8* %BRANCH_TAKEN, align 1
  %1988 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1989 = icmp ne i8 %1987, 0
  %1990 = select i1 %1989, i64 %1981, i64 %1983
  store i64 %1990, i64* %1988, align 8
  store %struct.Memory* %loadMem_40351a, %struct.Memory** %MEMORY
  %loadBr_40351a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40351a = icmp eq i8 %loadBr_40351a, 1
  br i1 %cmpBr_40351a, label %block_.L_40353d, label %block_403520

block_403520:                                     ; preds = %block_403503
  %loadMem_403520 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1991 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1992 = getelementptr inbounds %struct.GPR, %struct.GPR* %1991, i32 0, i32 33
  %1993 = getelementptr inbounds %struct.Reg, %struct.Reg* %1992, i32 0, i32 0
  %PC.i252 = bitcast %union.anon* %1993 to i64*
  %1994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1995 = getelementptr inbounds %struct.GPR, %struct.GPR* %1994, i32 0, i32 1
  %1996 = getelementptr inbounds %struct.Reg, %struct.Reg* %1995, i32 0, i32 0
  %RAX.i253 = bitcast %union.anon* %1996 to i64*
  %1997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1998 = getelementptr inbounds %struct.GPR, %struct.GPR* %1997, i32 0, i32 15
  %1999 = getelementptr inbounds %struct.Reg, %struct.Reg* %1998, i32 0, i32 0
  %RBP.i254 = bitcast %union.anon* %1999 to i64*
  %2000 = load i64, i64* %RBP.i254
  %2001 = sub i64 %2000, 8
  %2002 = load i64, i64* %PC.i252
  %2003 = add i64 %2002, 4
  store i64 %2003, i64* %PC.i252
  %2004 = inttoptr i64 %2001 to i64*
  %2005 = load i64, i64* %2004
  store i64 %2005, i64* %RAX.i253, align 8
  store %struct.Memory* %loadMem_403520, %struct.Memory** %MEMORY
  %loadMem_403524 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2006 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2007 = getelementptr inbounds %struct.GPR, %struct.GPR* %2006, i32 0, i32 33
  %2008 = getelementptr inbounds %struct.Reg, %struct.Reg* %2007, i32 0, i32 0
  %PC.i249 = bitcast %union.anon* %2008 to i64*
  %2009 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2010 = getelementptr inbounds %struct.GPR, %struct.GPR* %2009, i32 0, i32 5
  %2011 = getelementptr inbounds %struct.Reg, %struct.Reg* %2010, i32 0, i32 0
  %RCX.i250 = bitcast %union.anon* %2011 to i64*
  %2012 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2013 = getelementptr inbounds %struct.GPR, %struct.GPR* %2012, i32 0, i32 15
  %2014 = getelementptr inbounds %struct.Reg, %struct.Reg* %2013, i32 0, i32 0
  %RBP.i251 = bitcast %union.anon* %2014 to i64*
  %2015 = load i64, i64* %RBP.i251
  %2016 = sub i64 %2015, 28
  %2017 = load i64, i64* %PC.i249
  %2018 = add i64 %2017, 4
  store i64 %2018, i64* %PC.i249
  %2019 = inttoptr i64 %2016 to i32*
  %2020 = load i32, i32* %2019
  %2021 = sext i32 %2020 to i64
  store i64 %2021, i64* %RCX.i250, align 8
  store %struct.Memory* %loadMem_403524, %struct.Memory** %MEMORY
  %loadMem_403528 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2022 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2023 = getelementptr inbounds %struct.GPR, %struct.GPR* %2022, i32 0, i32 33
  %2024 = getelementptr inbounds %struct.Reg, %struct.Reg* %2023, i32 0, i32 0
  %PC.i246 = bitcast %union.anon* %2024 to i64*
  %2025 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2026 = getelementptr inbounds %struct.GPR, %struct.GPR* %2025, i32 0, i32 1
  %2027 = getelementptr inbounds %struct.Reg, %struct.Reg* %2026, i32 0, i32 0
  %RAX.i247 = bitcast %union.anon* %2027 to i64*
  %2028 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2029 = getelementptr inbounds %struct.GPR, %struct.GPR* %2028, i32 0, i32 5
  %2030 = getelementptr inbounds %struct.Reg, %struct.Reg* %2029, i32 0, i32 0
  %RCX.i248 = bitcast %union.anon* %2030 to i64*
  %2031 = load i64, i64* %RAX.i247
  %2032 = load i64, i64* %RCX.i248
  %2033 = mul i64 %2032, 8
  %2034 = add i64 %2033, %2031
  %2035 = load i64, i64* %PC.i246
  %2036 = add i64 %2035, 4
  store i64 %2036, i64* %PC.i246
  %2037 = inttoptr i64 %2034 to i64*
  %2038 = load i64, i64* %2037
  store i64 %2038, i64* %RAX.i247, align 8
  store %struct.Memory* %loadMem_403528, %struct.Memory** %MEMORY
  %loadMem_40352c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2039 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2040 = getelementptr inbounds %struct.GPR, %struct.GPR* %2039, i32 0, i32 33
  %2041 = getelementptr inbounds %struct.Reg, %struct.Reg* %2040, i32 0, i32 0
  %PC.i243 = bitcast %union.anon* %2041 to i64*
  %2042 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2043 = getelementptr inbounds %struct.GPR, %struct.GPR* %2042, i32 0, i32 5
  %2044 = getelementptr inbounds %struct.Reg, %struct.Reg* %2043, i32 0, i32 0
  %RCX.i244 = bitcast %union.anon* %2044 to i64*
  %2045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2046 = getelementptr inbounds %struct.GPR, %struct.GPR* %2045, i32 0, i32 15
  %2047 = getelementptr inbounds %struct.Reg, %struct.Reg* %2046, i32 0, i32 0
  %RBP.i245 = bitcast %union.anon* %2047 to i64*
  %2048 = load i64, i64* %RBP.i245
  %2049 = sub i64 %2048, 24
  %2050 = load i64, i64* %PC.i243
  %2051 = add i64 %2050, 4
  store i64 %2051, i64* %PC.i243
  %2052 = inttoptr i64 %2049 to i32*
  %2053 = load i32, i32* %2052
  %2054 = sext i32 %2053 to i64
  store i64 %2054, i64* %RCX.i244, align 8
  store %struct.Memory* %loadMem_40352c, %struct.Memory** %MEMORY
  %loadMem_403530 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2055 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2056 = getelementptr inbounds %struct.GPR, %struct.GPR* %2055, i32 0, i32 33
  %2057 = getelementptr inbounds %struct.Reg, %struct.Reg* %2056, i32 0, i32 0
  %PC.i239 = bitcast %union.anon* %2057 to i64*
  %2058 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2059 = getelementptr inbounds %struct.GPR, %struct.GPR* %2058, i32 0, i32 1
  %2060 = getelementptr inbounds %struct.Reg, %struct.Reg* %2059, i32 0, i32 0
  %RAX.i240 = bitcast %union.anon* %2060 to i64*
  %2061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2062 = getelementptr inbounds %struct.GPR, %struct.GPR* %2061, i32 0, i32 5
  %2063 = getelementptr inbounds %struct.Reg, %struct.Reg* %2062, i32 0, i32 0
  %RCX.i241 = bitcast %union.anon* %2063 to i64*
  %2064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2065 = getelementptr inbounds %struct.GPR, %struct.GPR* %2064, i32 0, i32 7
  %2066 = getelementptr inbounds %struct.Reg, %struct.Reg* %2065, i32 0, i32 0
  %RDX.i242 = bitcast %union.anon* %2066 to i64*
  %2067 = load i64, i64* %RAX.i240
  %2068 = load i64, i64* %RCX.i241
  %2069 = add i64 %2068, %2067
  %2070 = load i64, i64* %PC.i239
  %2071 = add i64 %2070, 4
  store i64 %2071, i64* %PC.i239
  %2072 = inttoptr i64 %2069 to i8*
  %2073 = load i8, i8* %2072
  %2074 = sext i8 %2073 to i64
  %2075 = and i64 %2074, 4294967295
  store i64 %2075, i64* %RDX.i242, align 8
  store %struct.Memory* %loadMem_403530, %struct.Memory** %MEMORY
  %loadMem_403534 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2076 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2077 = getelementptr inbounds %struct.GPR, %struct.GPR* %2076, i32 0, i32 33
  %2078 = getelementptr inbounds %struct.Reg, %struct.Reg* %2077, i32 0, i32 0
  %PC.i237 = bitcast %union.anon* %2078 to i64*
  %2079 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2080 = getelementptr inbounds %struct.GPR, %struct.GPR* %2079, i32 0, i32 7
  %2081 = getelementptr inbounds %struct.Reg, %struct.Reg* %2080, i32 0, i32 0
  %EDX.i238 = bitcast %union.anon* %2081 to i32*
  %2082 = load i32, i32* %EDX.i238
  %2083 = zext i32 %2082 to i64
  %2084 = load i64, i64* %PC.i237
  %2085 = add i64 %2084, 3
  store i64 %2085, i64* %PC.i237
  %2086 = sub i32 %2082, 126
  %2087 = icmp ult i32 %2082, 126
  %2088 = zext i1 %2087 to i8
  %2089 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2088, i8* %2089, align 1
  %2090 = and i32 %2086, 255
  %2091 = call i32 @llvm.ctpop.i32(i32 %2090)
  %2092 = trunc i32 %2091 to i8
  %2093 = and i8 %2092, 1
  %2094 = xor i8 %2093, 1
  %2095 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2094, i8* %2095, align 1
  %2096 = xor i64 126, %2083
  %2097 = trunc i64 %2096 to i32
  %2098 = xor i32 %2097, %2086
  %2099 = lshr i32 %2098, 4
  %2100 = trunc i32 %2099 to i8
  %2101 = and i8 %2100, 1
  %2102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2101, i8* %2102, align 1
  %2103 = icmp eq i32 %2086, 0
  %2104 = zext i1 %2103 to i8
  %2105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2104, i8* %2105, align 1
  %2106 = lshr i32 %2086, 31
  %2107 = trunc i32 %2106 to i8
  %2108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2107, i8* %2108, align 1
  %2109 = lshr i32 %2082, 31
  %2110 = xor i32 %2106, %2109
  %2111 = add i32 %2110, %2109
  %2112 = icmp eq i32 %2111, 2
  %2113 = zext i1 %2112 to i8
  %2114 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2113, i8* %2114, align 1
  store %struct.Memory* %loadMem_403534, %struct.Memory** %MEMORY
  %loadMem_403537 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2116 = getelementptr inbounds %struct.GPR, %struct.GPR* %2115, i32 0, i32 33
  %2117 = getelementptr inbounds %struct.Reg, %struct.Reg* %2116, i32 0, i32 0
  %PC.i236 = bitcast %union.anon* %2117 to i64*
  %2118 = load i64, i64* %PC.i236
  %2119 = add i64 %2118, 31
  %2120 = load i64, i64* %PC.i236
  %2121 = add i64 %2120, 6
  %2122 = load i64, i64* %PC.i236
  %2123 = add i64 %2122, 6
  store i64 %2123, i64* %PC.i236
  %2124 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2125 = load i8, i8* %2124, align 1
  %2126 = icmp eq i8 %2125, 0
  %2127 = zext i1 %2126 to i8
  store i8 %2127, i8* %BRANCH_TAKEN, align 1
  %2128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2129 = select i1 %2126, i64 %2119, i64 %2121
  store i64 %2129, i64* %2128, align 8
  store %struct.Memory* %loadMem_403537, %struct.Memory** %MEMORY
  %loadBr_403537 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_403537 = icmp eq i8 %loadBr_403537, 1
  br i1 %cmpBr_403537, label %block_.L_403556, label %block_.L_40353d

block_.L_40353d:                                  ; preds = %block_403520, %block_403503, %block_4034e6, %block_4034c9, %block_4034ac
  %loadMem_40353d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2131 = getelementptr inbounds %struct.GPR, %struct.GPR* %2130, i32 0, i32 33
  %2132 = getelementptr inbounds %struct.Reg, %struct.Reg* %2131, i32 0, i32 0
  %PC.i233 = bitcast %union.anon* %2132 to i64*
  %2133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2134 = getelementptr inbounds %struct.GPR, %struct.GPR* %2133, i32 0, i32 1
  %2135 = getelementptr inbounds %struct.Reg, %struct.Reg* %2134, i32 0, i32 0
  %RAX.i234 = bitcast %union.anon* %2135 to i64*
  %2136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2137 = getelementptr inbounds %struct.GPR, %struct.GPR* %2136, i32 0, i32 15
  %2138 = getelementptr inbounds %struct.Reg, %struct.Reg* %2137, i32 0, i32 0
  %RBP.i235 = bitcast %union.anon* %2138 to i64*
  %2139 = load i64, i64* %RBP.i235
  %2140 = sub i64 %2139, 8
  %2141 = load i64, i64* %PC.i233
  %2142 = add i64 %2141, 4
  store i64 %2142, i64* %PC.i233
  %2143 = inttoptr i64 %2140 to i64*
  %2144 = load i64, i64* %2143
  store i64 %2144, i64* %RAX.i234, align 8
  store %struct.Memory* %loadMem_40353d, %struct.Memory** %MEMORY
  %loadMem_403541 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2146 = getelementptr inbounds %struct.GPR, %struct.GPR* %2145, i32 0, i32 33
  %2147 = getelementptr inbounds %struct.Reg, %struct.Reg* %2146, i32 0, i32 0
  %PC.i230 = bitcast %union.anon* %2147 to i64*
  %2148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2149 = getelementptr inbounds %struct.GPR, %struct.GPR* %2148, i32 0, i32 5
  %2150 = getelementptr inbounds %struct.Reg, %struct.Reg* %2149, i32 0, i32 0
  %RCX.i231 = bitcast %union.anon* %2150 to i64*
  %2151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2152 = getelementptr inbounds %struct.GPR, %struct.GPR* %2151, i32 0, i32 15
  %2153 = getelementptr inbounds %struct.Reg, %struct.Reg* %2152, i32 0, i32 0
  %RBP.i232 = bitcast %union.anon* %2153 to i64*
  %2154 = load i64, i64* %RBP.i232
  %2155 = sub i64 %2154, 28
  %2156 = load i64, i64* %PC.i230
  %2157 = add i64 %2156, 4
  store i64 %2157, i64* %PC.i230
  %2158 = inttoptr i64 %2155 to i32*
  %2159 = load i32, i32* %2158
  %2160 = sext i32 %2159 to i64
  store i64 %2160, i64* %RCX.i231, align 8
  store %struct.Memory* %loadMem_403541, %struct.Memory** %MEMORY
  %loadMem_403545 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2162 = getelementptr inbounds %struct.GPR, %struct.GPR* %2161, i32 0, i32 33
  %2163 = getelementptr inbounds %struct.Reg, %struct.Reg* %2162, i32 0, i32 0
  %PC.i227 = bitcast %union.anon* %2163 to i64*
  %2164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2165 = getelementptr inbounds %struct.GPR, %struct.GPR* %2164, i32 0, i32 1
  %2166 = getelementptr inbounds %struct.Reg, %struct.Reg* %2165, i32 0, i32 0
  %RAX.i228 = bitcast %union.anon* %2166 to i64*
  %2167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2168 = getelementptr inbounds %struct.GPR, %struct.GPR* %2167, i32 0, i32 5
  %2169 = getelementptr inbounds %struct.Reg, %struct.Reg* %2168, i32 0, i32 0
  %RCX.i229 = bitcast %union.anon* %2169 to i64*
  %2170 = load i64, i64* %RAX.i228
  %2171 = load i64, i64* %RCX.i229
  %2172 = mul i64 %2171, 8
  %2173 = add i64 %2172, %2170
  %2174 = load i64, i64* %PC.i227
  %2175 = add i64 %2174, 4
  store i64 %2175, i64* %PC.i227
  %2176 = inttoptr i64 %2173 to i64*
  %2177 = load i64, i64* %2176
  store i64 %2177, i64* %RAX.i228, align 8
  store %struct.Memory* %loadMem_403545, %struct.Memory** %MEMORY
  %loadMem_403549 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2179 = getelementptr inbounds %struct.GPR, %struct.GPR* %2178, i32 0, i32 33
  %2180 = getelementptr inbounds %struct.Reg, %struct.Reg* %2179, i32 0, i32 0
  %PC.i224 = bitcast %union.anon* %2180 to i64*
  %2181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2182 = getelementptr inbounds %struct.GPR, %struct.GPR* %2181, i32 0, i32 5
  %2183 = getelementptr inbounds %struct.Reg, %struct.Reg* %2182, i32 0, i32 0
  %RCX.i225 = bitcast %union.anon* %2183 to i64*
  %2184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2185 = getelementptr inbounds %struct.GPR, %struct.GPR* %2184, i32 0, i32 15
  %2186 = getelementptr inbounds %struct.Reg, %struct.Reg* %2185, i32 0, i32 0
  %RBP.i226 = bitcast %union.anon* %2186 to i64*
  %2187 = load i64, i64* %RBP.i226
  %2188 = sub i64 %2187, 24
  %2189 = load i64, i64* %PC.i224
  %2190 = add i64 %2189, 4
  store i64 %2190, i64* %PC.i224
  %2191 = inttoptr i64 %2188 to i32*
  %2192 = load i32, i32* %2191
  %2193 = sext i32 %2192 to i64
  store i64 %2193, i64* %RCX.i225, align 8
  store %struct.Memory* %loadMem_403549, %struct.Memory** %MEMORY
  %loadMem_40354d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2195 = getelementptr inbounds %struct.GPR, %struct.GPR* %2194, i32 0, i32 33
  %2196 = getelementptr inbounds %struct.Reg, %struct.Reg* %2195, i32 0, i32 0
  %PC.i221 = bitcast %union.anon* %2196 to i64*
  %2197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2198 = getelementptr inbounds %struct.GPR, %struct.GPR* %2197, i32 0, i32 1
  %2199 = getelementptr inbounds %struct.Reg, %struct.Reg* %2198, i32 0, i32 0
  %RAX.i222 = bitcast %union.anon* %2199 to i64*
  %2200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2201 = getelementptr inbounds %struct.GPR, %struct.GPR* %2200, i32 0, i32 5
  %2202 = getelementptr inbounds %struct.Reg, %struct.Reg* %2201, i32 0, i32 0
  %RCX.i223 = bitcast %union.anon* %2202 to i64*
  %2203 = load i64, i64* %RAX.i222
  %2204 = load i64, i64* %RCX.i223
  %2205 = add i64 %2204, %2203
  %2206 = load i64, i64* %PC.i221
  %2207 = add i64 %2206, 4
  store i64 %2207, i64* %PC.i221
  %2208 = inttoptr i64 %2205 to i8*
  store i8 46, i8* %2208
  store %struct.Memory* %loadMem_40354d, %struct.Memory** %MEMORY
  %loadMem_403551 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2210 = getelementptr inbounds %struct.GPR, %struct.GPR* %2209, i32 0, i32 33
  %2211 = getelementptr inbounds %struct.Reg, %struct.Reg* %2210, i32 0, i32 0
  %PC.i220 = bitcast %union.anon* %2211 to i64*
  %2212 = load i64, i64* %PC.i220
  %2213 = add i64 %2212, 51
  %2214 = load i64, i64* %PC.i220
  %2215 = add i64 %2214, 5
  store i64 %2215, i64* %PC.i220
  %2216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2213, i64* %2216, align 8
  store %struct.Memory* %loadMem_403551, %struct.Memory** %MEMORY
  br label %block_.L_403584

block_.L_403556:                                  ; preds = %block_403520
  %loadMem_403556 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2218 = getelementptr inbounds %struct.GPR, %struct.GPR* %2217, i32 0, i32 33
  %2219 = getelementptr inbounds %struct.Reg, %struct.Reg* %2218, i32 0, i32 0
  %PC.i217 = bitcast %union.anon* %2219 to i64*
  %2220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2221 = getelementptr inbounds %struct.GPR, %struct.GPR* %2220, i32 0, i32 1
  %2222 = getelementptr inbounds %struct.Reg, %struct.Reg* %2221, i32 0, i32 0
  %RAX.i218 = bitcast %union.anon* %2222 to i64*
  %2223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2224 = getelementptr inbounds %struct.GPR, %struct.GPR* %2223, i32 0, i32 15
  %2225 = getelementptr inbounds %struct.Reg, %struct.Reg* %2224, i32 0, i32 0
  %RBP.i219 = bitcast %union.anon* %2225 to i64*
  %2226 = load i64, i64* %RBP.i219
  %2227 = sub i64 %2226, 8
  %2228 = load i64, i64* %PC.i217
  %2229 = add i64 %2228, 4
  store i64 %2229, i64* %PC.i217
  %2230 = inttoptr i64 %2227 to i64*
  %2231 = load i64, i64* %2230
  store i64 %2231, i64* %RAX.i218, align 8
  store %struct.Memory* %loadMem_403556, %struct.Memory** %MEMORY
  %loadMem_40355a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2233 = getelementptr inbounds %struct.GPR, %struct.GPR* %2232, i32 0, i32 33
  %2234 = getelementptr inbounds %struct.Reg, %struct.Reg* %2233, i32 0, i32 0
  %PC.i214 = bitcast %union.anon* %2234 to i64*
  %2235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2236 = getelementptr inbounds %struct.GPR, %struct.GPR* %2235, i32 0, i32 5
  %2237 = getelementptr inbounds %struct.Reg, %struct.Reg* %2236, i32 0, i32 0
  %RCX.i215 = bitcast %union.anon* %2237 to i64*
  %2238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2239 = getelementptr inbounds %struct.GPR, %struct.GPR* %2238, i32 0, i32 15
  %2240 = getelementptr inbounds %struct.Reg, %struct.Reg* %2239, i32 0, i32 0
  %RBP.i216 = bitcast %union.anon* %2240 to i64*
  %2241 = load i64, i64* %RBP.i216
  %2242 = sub i64 %2241, 28
  %2243 = load i64, i64* %PC.i214
  %2244 = add i64 %2243, 4
  store i64 %2244, i64* %PC.i214
  %2245 = inttoptr i64 %2242 to i32*
  %2246 = load i32, i32* %2245
  %2247 = sext i32 %2246 to i64
  store i64 %2247, i64* %RCX.i215, align 8
  store %struct.Memory* %loadMem_40355a, %struct.Memory** %MEMORY
  %loadMem_40355e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2249 = getelementptr inbounds %struct.GPR, %struct.GPR* %2248, i32 0, i32 33
  %2250 = getelementptr inbounds %struct.Reg, %struct.Reg* %2249, i32 0, i32 0
  %PC.i211 = bitcast %union.anon* %2250 to i64*
  %2251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2252 = getelementptr inbounds %struct.GPR, %struct.GPR* %2251, i32 0, i32 1
  %2253 = getelementptr inbounds %struct.Reg, %struct.Reg* %2252, i32 0, i32 0
  %RAX.i212 = bitcast %union.anon* %2253 to i64*
  %2254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2255 = getelementptr inbounds %struct.GPR, %struct.GPR* %2254, i32 0, i32 5
  %2256 = getelementptr inbounds %struct.Reg, %struct.Reg* %2255, i32 0, i32 0
  %RCX.i213 = bitcast %union.anon* %2256 to i64*
  %2257 = load i64, i64* %RAX.i212
  %2258 = load i64, i64* %RCX.i213
  %2259 = mul i64 %2258, 8
  %2260 = add i64 %2259, %2257
  %2261 = load i64, i64* %PC.i211
  %2262 = add i64 %2261, 4
  store i64 %2262, i64* %PC.i211
  %2263 = inttoptr i64 %2260 to i64*
  %2264 = load i64, i64* %2263
  store i64 %2264, i64* %RAX.i212, align 8
  store %struct.Memory* %loadMem_40355e, %struct.Memory** %MEMORY
  %loadMem_403562 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2266 = getelementptr inbounds %struct.GPR, %struct.GPR* %2265, i32 0, i32 33
  %2267 = getelementptr inbounds %struct.Reg, %struct.Reg* %2266, i32 0, i32 0
  %PC.i208 = bitcast %union.anon* %2267 to i64*
  %2268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2269 = getelementptr inbounds %struct.GPR, %struct.GPR* %2268, i32 0, i32 5
  %2270 = getelementptr inbounds %struct.Reg, %struct.Reg* %2269, i32 0, i32 0
  %RCX.i209 = bitcast %union.anon* %2270 to i64*
  %2271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2272 = getelementptr inbounds %struct.GPR, %struct.GPR* %2271, i32 0, i32 15
  %2273 = getelementptr inbounds %struct.Reg, %struct.Reg* %2272, i32 0, i32 0
  %RBP.i210 = bitcast %union.anon* %2273 to i64*
  %2274 = load i64, i64* %RBP.i210
  %2275 = sub i64 %2274, 24
  %2276 = load i64, i64* %PC.i208
  %2277 = add i64 %2276, 4
  store i64 %2277, i64* %PC.i208
  %2278 = inttoptr i64 %2275 to i32*
  %2279 = load i32, i32* %2278
  %2280 = sext i32 %2279 to i64
  store i64 %2280, i64* %RCX.i209, align 8
  store %struct.Memory* %loadMem_403562, %struct.Memory** %MEMORY
  %loadMem_403566 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2282 = getelementptr inbounds %struct.GPR, %struct.GPR* %2281, i32 0, i32 33
  %2283 = getelementptr inbounds %struct.Reg, %struct.Reg* %2282, i32 0, i32 0
  %PC.i204 = bitcast %union.anon* %2283 to i64*
  %2284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2285 = getelementptr inbounds %struct.GPR, %struct.GPR* %2284, i32 0, i32 1
  %2286 = getelementptr inbounds %struct.Reg, %struct.Reg* %2285, i32 0, i32 0
  %RAX.i205 = bitcast %union.anon* %2286 to i64*
  %2287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2288 = getelementptr inbounds %struct.GPR, %struct.GPR* %2287, i32 0, i32 5
  %2289 = getelementptr inbounds %struct.Reg, %struct.Reg* %2288, i32 0, i32 0
  %RCX.i206 = bitcast %union.anon* %2289 to i64*
  %2290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2291 = getelementptr inbounds %struct.GPR, %struct.GPR* %2290, i32 0, i32 11
  %2292 = getelementptr inbounds %struct.Reg, %struct.Reg* %2291, i32 0, i32 0
  %RDI.i207 = bitcast %union.anon* %2292 to i64*
  %2293 = load i64, i64* %RAX.i205
  %2294 = load i64, i64* %RCX.i206
  %2295 = add i64 %2294, %2293
  %2296 = load i64, i64* %PC.i204
  %2297 = add i64 %2296, 4
  store i64 %2297, i64* %PC.i204
  %2298 = inttoptr i64 %2295 to i8*
  %2299 = load i8, i8* %2298
  %2300 = sext i8 %2299 to i64
  %2301 = and i64 %2300, 4294967295
  store i64 %2301, i64* %RDI.i207, align 8
  store %struct.Memory* %loadMem_403566, %struct.Memory** %MEMORY
  %loadMem1_40356a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2303 = getelementptr inbounds %struct.GPR, %struct.GPR* %2302, i32 0, i32 33
  %2304 = getelementptr inbounds %struct.Reg, %struct.Reg* %2303, i32 0, i32 0
  %PC.i203 = bitcast %union.anon* %2304 to i64*
  %2305 = load i64, i64* %PC.i203
  %2306 = add i64 %2305, -8106
  %2307 = load i64, i64* %PC.i203
  %2308 = add i64 %2307, 5
  %2309 = load i64, i64* %PC.i203
  %2310 = add i64 %2309, 5
  store i64 %2310, i64* %PC.i203
  %2311 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2312 = load i64, i64* %2311, align 8
  %2313 = add i64 %2312, -8
  %2314 = inttoptr i64 %2313 to i64*
  store i64 %2308, i64* %2314
  store i64 %2313, i64* %2311, align 8
  %2315 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2306, i64* %2315, align 8
  store %struct.Memory* %loadMem1_40356a, %struct.Memory** %MEMORY
  %loadMem2_40356a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40356a = load i64, i64* %3
  %call2_40356a = call %struct.Memory* @sub_4015c0.tolower_plt(%struct.State* %0, i64 %loadPC_40356a, %struct.Memory* %loadMem2_40356a)
  store %struct.Memory* %call2_40356a, %struct.Memory** %MEMORY
  %loadMem_40356f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2317 = getelementptr inbounds %struct.GPR, %struct.GPR* %2316, i32 0, i32 33
  %2318 = getelementptr inbounds %struct.Reg, %struct.Reg* %2317, i32 0, i32 0
  %PC.i200 = bitcast %union.anon* %2318 to i64*
  %2319 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2320 = getelementptr inbounds %struct.GPR, %struct.GPR* %2319, i32 0, i32 1
  %2321 = getelementptr inbounds %struct.Reg, %struct.Reg* %2320, i32 0, i32 0
  %2322 = bitcast %union.anon* %2321 to %struct.anon.2*
  %AL.i201 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2322, i32 0, i32 0
  %2323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2324 = getelementptr inbounds %struct.GPR, %struct.GPR* %2323, i32 0, i32 7
  %2325 = getelementptr inbounds %struct.Reg, %struct.Reg* %2324, i32 0, i32 0
  %2326 = bitcast %union.anon* %2325 to %struct.anon.2*
  %DL.i202 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2326, i32 0, i32 0
  %2327 = load i8, i8* %AL.i201
  %2328 = zext i8 %2327 to i64
  %2329 = load i64, i64* %PC.i200
  %2330 = add i64 %2329, 2
  store i64 %2330, i64* %PC.i200
  store i8 %2327, i8* %DL.i202, align 1
  store %struct.Memory* %loadMem_40356f, %struct.Memory** %MEMORY
  %loadMem_403571 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2332 = getelementptr inbounds %struct.GPR, %struct.GPR* %2331, i32 0, i32 33
  %2333 = getelementptr inbounds %struct.Reg, %struct.Reg* %2332, i32 0, i32 0
  %PC.i197 = bitcast %union.anon* %2333 to i64*
  %2334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2335 = getelementptr inbounds %struct.GPR, %struct.GPR* %2334, i32 0, i32 5
  %2336 = getelementptr inbounds %struct.Reg, %struct.Reg* %2335, i32 0, i32 0
  %RCX.i198 = bitcast %union.anon* %2336 to i64*
  %2337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2338 = getelementptr inbounds %struct.GPR, %struct.GPR* %2337, i32 0, i32 15
  %2339 = getelementptr inbounds %struct.Reg, %struct.Reg* %2338, i32 0, i32 0
  %RBP.i199 = bitcast %union.anon* %2339 to i64*
  %2340 = load i64, i64* %RBP.i199
  %2341 = sub i64 %2340, 8
  %2342 = load i64, i64* %PC.i197
  %2343 = add i64 %2342, 4
  store i64 %2343, i64* %PC.i197
  %2344 = inttoptr i64 %2341 to i64*
  %2345 = load i64, i64* %2344
  store i64 %2345, i64* %RCX.i198, align 8
  store %struct.Memory* %loadMem_403571, %struct.Memory** %MEMORY
  %loadMem_403575 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2347 = getelementptr inbounds %struct.GPR, %struct.GPR* %2346, i32 0, i32 33
  %2348 = getelementptr inbounds %struct.Reg, %struct.Reg* %2347, i32 0, i32 0
  %PC.i194 = bitcast %union.anon* %2348 to i64*
  %2349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2350 = getelementptr inbounds %struct.GPR, %struct.GPR* %2349, i32 0, i32 9
  %2351 = getelementptr inbounds %struct.Reg, %struct.Reg* %2350, i32 0, i32 0
  %RSI.i195 = bitcast %union.anon* %2351 to i64*
  %2352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2353 = getelementptr inbounds %struct.GPR, %struct.GPR* %2352, i32 0, i32 15
  %2354 = getelementptr inbounds %struct.Reg, %struct.Reg* %2353, i32 0, i32 0
  %RBP.i196 = bitcast %union.anon* %2354 to i64*
  %2355 = load i64, i64* %RBP.i196
  %2356 = sub i64 %2355, 28
  %2357 = load i64, i64* %PC.i194
  %2358 = add i64 %2357, 4
  store i64 %2358, i64* %PC.i194
  %2359 = inttoptr i64 %2356 to i32*
  %2360 = load i32, i32* %2359
  %2361 = sext i32 %2360 to i64
  store i64 %2361, i64* %RSI.i195, align 8
  store %struct.Memory* %loadMem_403575, %struct.Memory** %MEMORY
  %loadMem_403579 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2363 = getelementptr inbounds %struct.GPR, %struct.GPR* %2362, i32 0, i32 33
  %2364 = getelementptr inbounds %struct.Reg, %struct.Reg* %2363, i32 0, i32 0
  %PC.i191 = bitcast %union.anon* %2364 to i64*
  %2365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2366 = getelementptr inbounds %struct.GPR, %struct.GPR* %2365, i32 0, i32 5
  %2367 = getelementptr inbounds %struct.Reg, %struct.Reg* %2366, i32 0, i32 0
  %RCX.i192 = bitcast %union.anon* %2367 to i64*
  %2368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2369 = getelementptr inbounds %struct.GPR, %struct.GPR* %2368, i32 0, i32 9
  %2370 = getelementptr inbounds %struct.Reg, %struct.Reg* %2369, i32 0, i32 0
  %RSI.i193 = bitcast %union.anon* %2370 to i64*
  %2371 = load i64, i64* %RCX.i192
  %2372 = load i64, i64* %RSI.i193
  %2373 = mul i64 %2372, 8
  %2374 = add i64 %2373, %2371
  %2375 = load i64, i64* %PC.i191
  %2376 = add i64 %2375, 4
  store i64 %2376, i64* %PC.i191
  %2377 = inttoptr i64 %2374 to i64*
  %2378 = load i64, i64* %2377
  store i64 %2378, i64* %RCX.i192, align 8
  store %struct.Memory* %loadMem_403579, %struct.Memory** %MEMORY
  %loadMem_40357d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2379 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2380 = getelementptr inbounds %struct.GPR, %struct.GPR* %2379, i32 0, i32 33
  %2381 = getelementptr inbounds %struct.Reg, %struct.Reg* %2380, i32 0, i32 0
  %PC.i188 = bitcast %union.anon* %2381 to i64*
  %2382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2383 = getelementptr inbounds %struct.GPR, %struct.GPR* %2382, i32 0, i32 9
  %2384 = getelementptr inbounds %struct.Reg, %struct.Reg* %2383, i32 0, i32 0
  %RSI.i189 = bitcast %union.anon* %2384 to i64*
  %2385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2386 = getelementptr inbounds %struct.GPR, %struct.GPR* %2385, i32 0, i32 15
  %2387 = getelementptr inbounds %struct.Reg, %struct.Reg* %2386, i32 0, i32 0
  %RBP.i190 = bitcast %union.anon* %2387 to i64*
  %2388 = load i64, i64* %RBP.i190
  %2389 = sub i64 %2388, 24
  %2390 = load i64, i64* %PC.i188
  %2391 = add i64 %2390, 4
  store i64 %2391, i64* %PC.i188
  %2392 = inttoptr i64 %2389 to i32*
  %2393 = load i32, i32* %2392
  %2394 = sext i32 %2393 to i64
  store i64 %2394, i64* %RSI.i189, align 8
  store %struct.Memory* %loadMem_40357d, %struct.Memory** %MEMORY
  %loadMem_403581 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2396 = getelementptr inbounds %struct.GPR, %struct.GPR* %2395, i32 0, i32 33
  %2397 = getelementptr inbounds %struct.Reg, %struct.Reg* %2396, i32 0, i32 0
  %PC.i184 = bitcast %union.anon* %2397 to i64*
  %2398 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2399 = getelementptr inbounds %struct.GPR, %struct.GPR* %2398, i32 0, i32 7
  %2400 = getelementptr inbounds %struct.Reg, %struct.Reg* %2399, i32 0, i32 0
  %2401 = bitcast %union.anon* %2400 to %struct.anon.2*
  %DL.i185 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2401, i32 0, i32 0
  %2402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2403 = getelementptr inbounds %struct.GPR, %struct.GPR* %2402, i32 0, i32 5
  %2404 = getelementptr inbounds %struct.Reg, %struct.Reg* %2403, i32 0, i32 0
  %RCX.i186 = bitcast %union.anon* %2404 to i64*
  %2405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2406 = getelementptr inbounds %struct.GPR, %struct.GPR* %2405, i32 0, i32 9
  %2407 = getelementptr inbounds %struct.Reg, %struct.Reg* %2406, i32 0, i32 0
  %RSI.i187 = bitcast %union.anon* %2407 to i64*
  %2408 = load i64, i64* %RCX.i186
  %2409 = load i64, i64* %RSI.i187
  %2410 = add i64 %2409, %2408
  %2411 = load i8, i8* %DL.i185
  %2412 = zext i8 %2411 to i64
  %2413 = load i64, i64* %PC.i184
  %2414 = add i64 %2413, 3
  store i64 %2414, i64* %PC.i184
  %2415 = inttoptr i64 %2410 to i8*
  store i8 %2411, i8* %2415
  store %struct.Memory* %loadMem_403581, %struct.Memory** %MEMORY
  br label %block_.L_403584

block_.L_403584:                                  ; preds = %block_.L_403556, %block_.L_40353d
  %loadMem_403584 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2416 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2417 = getelementptr inbounds %struct.GPR, %struct.GPR* %2416, i32 0, i32 33
  %2418 = getelementptr inbounds %struct.Reg, %struct.Reg* %2417, i32 0, i32 0
  %PC.i183 = bitcast %union.anon* %2418 to i64*
  %2419 = load i64, i64* %PC.i183
  %2420 = add i64 %2419, 5
  %2421 = load i64, i64* %PC.i183
  %2422 = add i64 %2421, 5
  store i64 %2422, i64* %PC.i183
  %2423 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2420, i64* %2423, align 8
  store %struct.Memory* %loadMem_403584, %struct.Memory** %MEMORY
  br label %block_.L_403589

block_.L_403589:                                  ; preds = %block_.L_403584
  %loadMem_403589 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2425 = getelementptr inbounds %struct.GPR, %struct.GPR* %2424, i32 0, i32 33
  %2426 = getelementptr inbounds %struct.Reg, %struct.Reg* %2425, i32 0, i32 0
  %PC.i180 = bitcast %union.anon* %2426 to i64*
  %2427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2428 = getelementptr inbounds %struct.GPR, %struct.GPR* %2427, i32 0, i32 1
  %2429 = getelementptr inbounds %struct.Reg, %struct.Reg* %2428, i32 0, i32 0
  %RAX.i181 = bitcast %union.anon* %2429 to i64*
  %2430 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2431 = getelementptr inbounds %struct.GPR, %struct.GPR* %2430, i32 0, i32 15
  %2432 = getelementptr inbounds %struct.Reg, %struct.Reg* %2431, i32 0, i32 0
  %RBP.i182 = bitcast %union.anon* %2432 to i64*
  %2433 = load i64, i64* %RBP.i182
  %2434 = sub i64 %2433, 28
  %2435 = load i64, i64* %PC.i180
  %2436 = add i64 %2435, 3
  store i64 %2436, i64* %PC.i180
  %2437 = inttoptr i64 %2434 to i32*
  %2438 = load i32, i32* %2437
  %2439 = zext i32 %2438 to i64
  store i64 %2439, i64* %RAX.i181, align 8
  store %struct.Memory* %loadMem_403589, %struct.Memory** %MEMORY
  %loadMem_40358c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2441 = getelementptr inbounds %struct.GPR, %struct.GPR* %2440, i32 0, i32 33
  %2442 = getelementptr inbounds %struct.Reg, %struct.Reg* %2441, i32 0, i32 0
  %PC.i178 = bitcast %union.anon* %2442 to i64*
  %2443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2444 = getelementptr inbounds %struct.GPR, %struct.GPR* %2443, i32 0, i32 1
  %2445 = getelementptr inbounds %struct.Reg, %struct.Reg* %2444, i32 0, i32 0
  %RAX.i179 = bitcast %union.anon* %2445 to i64*
  %2446 = load i64, i64* %RAX.i179
  %2447 = load i64, i64* %PC.i178
  %2448 = add i64 %2447, 3
  store i64 %2448, i64* %PC.i178
  %2449 = trunc i64 %2446 to i32
  %2450 = add i32 1, %2449
  %2451 = zext i32 %2450 to i64
  store i64 %2451, i64* %RAX.i179, align 8
  %2452 = icmp ult i32 %2450, %2449
  %2453 = icmp ult i32 %2450, 1
  %2454 = or i1 %2452, %2453
  %2455 = zext i1 %2454 to i8
  %2456 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2455, i8* %2456, align 1
  %2457 = and i32 %2450, 255
  %2458 = call i32 @llvm.ctpop.i32(i32 %2457)
  %2459 = trunc i32 %2458 to i8
  %2460 = and i8 %2459, 1
  %2461 = xor i8 %2460, 1
  %2462 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2461, i8* %2462, align 1
  %2463 = xor i64 1, %2446
  %2464 = trunc i64 %2463 to i32
  %2465 = xor i32 %2464, %2450
  %2466 = lshr i32 %2465, 4
  %2467 = trunc i32 %2466 to i8
  %2468 = and i8 %2467, 1
  %2469 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2468, i8* %2469, align 1
  %2470 = icmp eq i32 %2450, 0
  %2471 = zext i1 %2470 to i8
  %2472 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2471, i8* %2472, align 1
  %2473 = lshr i32 %2450, 31
  %2474 = trunc i32 %2473 to i8
  %2475 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2474, i8* %2475, align 1
  %2476 = lshr i32 %2449, 31
  %2477 = xor i32 %2473, %2476
  %2478 = add i32 %2477, %2473
  %2479 = icmp eq i32 %2478, 2
  %2480 = zext i1 %2479 to i8
  %2481 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2480, i8* %2481, align 1
  store %struct.Memory* %loadMem_40358c, %struct.Memory** %MEMORY
  %loadMem_40358f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2482 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2483 = getelementptr inbounds %struct.GPR, %struct.GPR* %2482, i32 0, i32 33
  %2484 = getelementptr inbounds %struct.Reg, %struct.Reg* %2483, i32 0, i32 0
  %PC.i175 = bitcast %union.anon* %2484 to i64*
  %2485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2486 = getelementptr inbounds %struct.GPR, %struct.GPR* %2485, i32 0, i32 1
  %2487 = getelementptr inbounds %struct.Reg, %struct.Reg* %2486, i32 0, i32 0
  %EAX.i176 = bitcast %union.anon* %2487 to i32*
  %2488 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2489 = getelementptr inbounds %struct.GPR, %struct.GPR* %2488, i32 0, i32 15
  %2490 = getelementptr inbounds %struct.Reg, %struct.Reg* %2489, i32 0, i32 0
  %RBP.i177 = bitcast %union.anon* %2490 to i64*
  %2491 = load i64, i64* %RBP.i177
  %2492 = sub i64 %2491, 28
  %2493 = load i32, i32* %EAX.i176
  %2494 = zext i32 %2493 to i64
  %2495 = load i64, i64* %PC.i175
  %2496 = add i64 %2495, 3
  store i64 %2496, i64* %PC.i175
  %2497 = inttoptr i64 %2492 to i32*
  store i32 %2493, i32* %2497
  store %struct.Memory* %loadMem_40358f, %struct.Memory** %MEMORY
  %loadMem_403592 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2499 = getelementptr inbounds %struct.GPR, %struct.GPR* %2498, i32 0, i32 33
  %2500 = getelementptr inbounds %struct.Reg, %struct.Reg* %2499, i32 0, i32 0
  %PC.i174 = bitcast %union.anon* %2500 to i64*
  %2501 = load i64, i64* %PC.i174
  %2502 = add i64 %2501, -242
  %2503 = load i64, i64* %PC.i174
  %2504 = add i64 %2503, 5
  store i64 %2504, i64* %PC.i174
  %2505 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2502, i64* %2505, align 8
  store %struct.Memory* %loadMem_403592, %struct.Memory** %MEMORY
  br label %block_.L_4034a0

block_.L_403597:                                  ; preds = %block_.L_4034a0
  %loadMem_403597 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2507 = getelementptr inbounds %struct.GPR, %struct.GPR* %2506, i32 0, i32 33
  %2508 = getelementptr inbounds %struct.Reg, %struct.Reg* %2507, i32 0, i32 0
  %PC.i173 = bitcast %union.anon* %2508 to i64*
  %2509 = load i64, i64* %PC.i173
  %2510 = add i64 %2509, 264
  %2511 = load i64, i64* %PC.i173
  %2512 = add i64 %2511, 5
  store i64 %2512, i64* %PC.i173
  %2513 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2510, i64* %2513, align 8
  store %struct.Memory* %loadMem_403597, %struct.Memory** %MEMORY
  br label %block_.L_40369f

block_.L_40359c:                                  ; preds = %routine_ucomiss_MINUS0x14__rbp____xmm0.exit
  %loadMem_40359c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2515 = getelementptr inbounds %struct.GPR, %struct.GPR* %2514, i32 0, i32 33
  %2516 = getelementptr inbounds %struct.Reg, %struct.Reg* %2515, i32 0, i32 0
  %PC.i171 = bitcast %union.anon* %2516 to i64*
  %2517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2518 = getelementptr inbounds %struct.GPR, %struct.GPR* %2517, i32 0, i32 15
  %2519 = getelementptr inbounds %struct.Reg, %struct.Reg* %2518, i32 0, i32 0
  %RBP.i172 = bitcast %union.anon* %2519 to i64*
  %2520 = load i64, i64* %RBP.i172
  %2521 = sub i64 %2520, 28
  %2522 = load i64, i64* %PC.i171
  %2523 = add i64 %2522, 7
  store i64 %2523, i64* %PC.i171
  %2524 = inttoptr i64 %2521 to i32*
  store i32 0, i32* %2524
  store %struct.Memory* %loadMem_40359c, %struct.Memory** %MEMORY
  br label %block_.L_4035a3

block_.L_4035a3:                                  ; preds = %block_.L_40368c, %block_.L_40359c
  %loadMem_4035a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2525 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2526 = getelementptr inbounds %struct.GPR, %struct.GPR* %2525, i32 0, i32 33
  %2527 = getelementptr inbounds %struct.Reg, %struct.Reg* %2526, i32 0, i32 0
  %PC.i168 = bitcast %union.anon* %2527 to i64*
  %2528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2529 = getelementptr inbounds %struct.GPR, %struct.GPR* %2528, i32 0, i32 1
  %2530 = getelementptr inbounds %struct.Reg, %struct.Reg* %2529, i32 0, i32 0
  %RAX.i169 = bitcast %union.anon* %2530 to i64*
  %2531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2532 = getelementptr inbounds %struct.GPR, %struct.GPR* %2531, i32 0, i32 15
  %2533 = getelementptr inbounds %struct.Reg, %struct.Reg* %2532, i32 0, i32 0
  %RBP.i170 = bitcast %union.anon* %2533 to i64*
  %2534 = load i64, i64* %RBP.i170
  %2535 = sub i64 %2534, 28
  %2536 = load i64, i64* %PC.i168
  %2537 = add i64 %2536, 3
  store i64 %2537, i64* %PC.i168
  %2538 = inttoptr i64 %2535 to i32*
  %2539 = load i32, i32* %2538
  %2540 = zext i32 %2539 to i64
  store i64 %2540, i64* %RAX.i169, align 8
  store %struct.Memory* %loadMem_4035a3, %struct.Memory** %MEMORY
  %loadMem_4035a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2542 = getelementptr inbounds %struct.GPR, %struct.GPR* %2541, i32 0, i32 33
  %2543 = getelementptr inbounds %struct.Reg, %struct.Reg* %2542, i32 0, i32 0
  %PC.i165 = bitcast %union.anon* %2543 to i64*
  %2544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2545 = getelementptr inbounds %struct.GPR, %struct.GPR* %2544, i32 0, i32 1
  %2546 = getelementptr inbounds %struct.Reg, %struct.Reg* %2545, i32 0, i32 0
  %EAX.i166 = bitcast %union.anon* %2546 to i32*
  %2547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2548 = getelementptr inbounds %struct.GPR, %struct.GPR* %2547, i32 0, i32 15
  %2549 = getelementptr inbounds %struct.Reg, %struct.Reg* %2548, i32 0, i32 0
  %RBP.i167 = bitcast %union.anon* %2549 to i64*
  %2550 = load i32, i32* %EAX.i166
  %2551 = zext i32 %2550 to i64
  %2552 = load i64, i64* %RBP.i167
  %2553 = sub i64 %2552, 12
  %2554 = load i64, i64* %PC.i165
  %2555 = add i64 %2554, 3
  store i64 %2555, i64* %PC.i165
  %2556 = inttoptr i64 %2553 to i32*
  %2557 = load i32, i32* %2556
  %2558 = sub i32 %2550, %2557
  %2559 = icmp ult i32 %2550, %2557
  %2560 = zext i1 %2559 to i8
  %2561 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2560, i8* %2561, align 1
  %2562 = and i32 %2558, 255
  %2563 = call i32 @llvm.ctpop.i32(i32 %2562)
  %2564 = trunc i32 %2563 to i8
  %2565 = and i8 %2564, 1
  %2566 = xor i8 %2565, 1
  %2567 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2566, i8* %2567, align 1
  %2568 = xor i32 %2557, %2550
  %2569 = xor i32 %2568, %2558
  %2570 = lshr i32 %2569, 4
  %2571 = trunc i32 %2570 to i8
  %2572 = and i8 %2571, 1
  %2573 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2572, i8* %2573, align 1
  %2574 = icmp eq i32 %2558, 0
  %2575 = zext i1 %2574 to i8
  %2576 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2575, i8* %2576, align 1
  %2577 = lshr i32 %2558, 31
  %2578 = trunc i32 %2577 to i8
  %2579 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2578, i8* %2579, align 1
  %2580 = lshr i32 %2550, 31
  %2581 = lshr i32 %2557, 31
  %2582 = xor i32 %2581, %2580
  %2583 = xor i32 %2577, %2580
  %2584 = add i32 %2583, %2582
  %2585 = icmp eq i32 %2584, 2
  %2586 = zext i1 %2585 to i8
  %2587 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2586, i8* %2587, align 1
  store %struct.Memory* %loadMem_4035a6, %struct.Memory** %MEMORY
  %loadMem_4035a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2589 = getelementptr inbounds %struct.GPR, %struct.GPR* %2588, i32 0, i32 33
  %2590 = getelementptr inbounds %struct.Reg, %struct.Reg* %2589, i32 0, i32 0
  %PC.i164 = bitcast %union.anon* %2590 to i64*
  %2591 = load i64, i64* %PC.i164
  %2592 = add i64 %2591, 241
  %2593 = load i64, i64* %PC.i164
  %2594 = add i64 %2593, 6
  %2595 = load i64, i64* %PC.i164
  %2596 = add i64 %2595, 6
  store i64 %2596, i64* %PC.i164
  %2597 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2598 = load i8, i8* %2597, align 1
  %2599 = icmp ne i8 %2598, 0
  %2600 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2601 = load i8, i8* %2600, align 1
  %2602 = icmp ne i8 %2601, 0
  %2603 = xor i1 %2599, %2602
  %2604 = xor i1 %2603, true
  %2605 = zext i1 %2604 to i8
  store i8 %2605, i8* %BRANCH_TAKEN, align 1
  %2606 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2607 = select i1 %2603, i64 %2594, i64 %2592
  store i64 %2607, i64* %2606, align 8
  store %struct.Memory* %loadMem_4035a9, %struct.Memory** %MEMORY
  %loadBr_4035a9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4035a9 = icmp eq i8 %loadBr_4035a9, 1
  br i1 %cmpBr_4035a9, label %block_.L_40369a, label %block_4035af

block_4035af:                                     ; preds = %block_.L_4035a3
  %loadMem_4035af = load %struct.Memory*, %struct.Memory** %MEMORY
  %2608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2609 = getelementptr inbounds %struct.GPR, %struct.GPR* %2608, i32 0, i32 33
  %2610 = getelementptr inbounds %struct.Reg, %struct.Reg* %2609, i32 0, i32 0
  %PC.i161 = bitcast %union.anon* %2610 to i64*
  %2611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2612 = getelementptr inbounds %struct.GPR, %struct.GPR* %2611, i32 0, i32 1
  %2613 = getelementptr inbounds %struct.Reg, %struct.Reg* %2612, i32 0, i32 0
  %RAX.i162 = bitcast %union.anon* %2613 to i64*
  %2614 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2615 = getelementptr inbounds %struct.GPR, %struct.GPR* %2614, i32 0, i32 15
  %2616 = getelementptr inbounds %struct.Reg, %struct.Reg* %2615, i32 0, i32 0
  %RBP.i163 = bitcast %union.anon* %2616 to i64*
  %2617 = load i64, i64* %RBP.i163
  %2618 = sub i64 %2617, 8
  %2619 = load i64, i64* %PC.i161
  %2620 = add i64 %2619, 4
  store i64 %2620, i64* %PC.i161
  %2621 = inttoptr i64 %2618 to i64*
  %2622 = load i64, i64* %2621
  store i64 %2622, i64* %RAX.i162, align 8
  store %struct.Memory* %loadMem_4035af, %struct.Memory** %MEMORY
  %loadMem_4035b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2624 = getelementptr inbounds %struct.GPR, %struct.GPR* %2623, i32 0, i32 33
  %2625 = getelementptr inbounds %struct.Reg, %struct.Reg* %2624, i32 0, i32 0
  %PC.i158 = bitcast %union.anon* %2625 to i64*
  %2626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2627 = getelementptr inbounds %struct.GPR, %struct.GPR* %2626, i32 0, i32 5
  %2628 = getelementptr inbounds %struct.Reg, %struct.Reg* %2627, i32 0, i32 0
  %RCX.i159 = bitcast %union.anon* %2628 to i64*
  %2629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2630 = getelementptr inbounds %struct.GPR, %struct.GPR* %2629, i32 0, i32 15
  %2631 = getelementptr inbounds %struct.Reg, %struct.Reg* %2630, i32 0, i32 0
  %RBP.i160 = bitcast %union.anon* %2631 to i64*
  %2632 = load i64, i64* %RBP.i160
  %2633 = sub i64 %2632, 28
  %2634 = load i64, i64* %PC.i158
  %2635 = add i64 %2634, 4
  store i64 %2635, i64* %PC.i158
  %2636 = inttoptr i64 %2633 to i32*
  %2637 = load i32, i32* %2636
  %2638 = sext i32 %2637 to i64
  store i64 %2638, i64* %RCX.i159, align 8
  store %struct.Memory* %loadMem_4035b3, %struct.Memory** %MEMORY
  %loadMem_4035b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2640 = getelementptr inbounds %struct.GPR, %struct.GPR* %2639, i32 0, i32 33
  %2641 = getelementptr inbounds %struct.Reg, %struct.Reg* %2640, i32 0, i32 0
  %PC.i155 = bitcast %union.anon* %2641 to i64*
  %2642 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2643 = getelementptr inbounds %struct.GPR, %struct.GPR* %2642, i32 0, i32 1
  %2644 = getelementptr inbounds %struct.Reg, %struct.Reg* %2643, i32 0, i32 0
  %RAX.i156 = bitcast %union.anon* %2644 to i64*
  %2645 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2646 = getelementptr inbounds %struct.GPR, %struct.GPR* %2645, i32 0, i32 5
  %2647 = getelementptr inbounds %struct.Reg, %struct.Reg* %2646, i32 0, i32 0
  %RCX.i157 = bitcast %union.anon* %2647 to i64*
  %2648 = load i64, i64* %RAX.i156
  %2649 = load i64, i64* %RCX.i157
  %2650 = mul i64 %2649, 8
  %2651 = add i64 %2650, %2648
  %2652 = load i64, i64* %PC.i155
  %2653 = add i64 %2652, 4
  store i64 %2653, i64* %PC.i155
  %2654 = inttoptr i64 %2651 to i64*
  %2655 = load i64, i64* %2654
  store i64 %2655, i64* %RAX.i156, align 8
  store %struct.Memory* %loadMem_4035b7, %struct.Memory** %MEMORY
  %loadMem_4035bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2656 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2657 = getelementptr inbounds %struct.GPR, %struct.GPR* %2656, i32 0, i32 33
  %2658 = getelementptr inbounds %struct.Reg, %struct.Reg* %2657, i32 0, i32 0
  %PC.i152 = bitcast %union.anon* %2658 to i64*
  %2659 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2660 = getelementptr inbounds %struct.GPR, %struct.GPR* %2659, i32 0, i32 5
  %2661 = getelementptr inbounds %struct.Reg, %struct.Reg* %2660, i32 0, i32 0
  %RCX.i153 = bitcast %union.anon* %2661 to i64*
  %2662 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2663 = getelementptr inbounds %struct.GPR, %struct.GPR* %2662, i32 0, i32 15
  %2664 = getelementptr inbounds %struct.Reg, %struct.Reg* %2663, i32 0, i32 0
  %RBP.i154 = bitcast %union.anon* %2664 to i64*
  %2665 = load i64, i64* %RBP.i154
  %2666 = sub i64 %2665, 24
  %2667 = load i64, i64* %PC.i152
  %2668 = add i64 %2667, 4
  store i64 %2668, i64* %PC.i152
  %2669 = inttoptr i64 %2666 to i32*
  %2670 = load i32, i32* %2669
  %2671 = sext i32 %2670 to i64
  store i64 %2671, i64* %RCX.i153, align 8
  store %struct.Memory* %loadMem_4035bb, %struct.Memory** %MEMORY
  %loadMem_4035bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %2672 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2673 = getelementptr inbounds %struct.GPR, %struct.GPR* %2672, i32 0, i32 33
  %2674 = getelementptr inbounds %struct.Reg, %struct.Reg* %2673, i32 0, i32 0
  %PC.i148 = bitcast %union.anon* %2674 to i64*
  %2675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2676 = getelementptr inbounds %struct.GPR, %struct.GPR* %2675, i32 0, i32 1
  %2677 = getelementptr inbounds %struct.Reg, %struct.Reg* %2676, i32 0, i32 0
  %RAX.i149 = bitcast %union.anon* %2677 to i64*
  %2678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2679 = getelementptr inbounds %struct.GPR, %struct.GPR* %2678, i32 0, i32 5
  %2680 = getelementptr inbounds %struct.Reg, %struct.Reg* %2679, i32 0, i32 0
  %RCX.i150 = bitcast %union.anon* %2680 to i64*
  %2681 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2682 = getelementptr inbounds %struct.GPR, %struct.GPR* %2681, i32 0, i32 7
  %2683 = getelementptr inbounds %struct.Reg, %struct.Reg* %2682, i32 0, i32 0
  %RDX.i151 = bitcast %union.anon* %2683 to i64*
  %2684 = load i64, i64* %RAX.i149
  %2685 = load i64, i64* %RCX.i150
  %2686 = add i64 %2685, %2684
  %2687 = load i64, i64* %PC.i148
  %2688 = add i64 %2687, 4
  store i64 %2688, i64* %PC.i148
  %2689 = inttoptr i64 %2686 to i8*
  %2690 = load i8, i8* %2689
  %2691 = sext i8 %2690 to i64
  %2692 = and i64 %2691, 4294967295
  store i64 %2692, i64* %RDX.i151, align 8
  store %struct.Memory* %loadMem_4035bf, %struct.Memory** %MEMORY
  %loadMem_4035c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2694 = getelementptr inbounds %struct.GPR, %struct.GPR* %2693, i32 0, i32 33
  %2695 = getelementptr inbounds %struct.Reg, %struct.Reg* %2694, i32 0, i32 0
  %PC.i146 = bitcast %union.anon* %2695 to i64*
  %2696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2697 = getelementptr inbounds %struct.GPR, %struct.GPR* %2696, i32 0, i32 7
  %2698 = getelementptr inbounds %struct.Reg, %struct.Reg* %2697, i32 0, i32 0
  %EDX.i147 = bitcast %union.anon* %2698 to i32*
  %2699 = load i32, i32* %EDX.i147
  %2700 = zext i32 %2699 to i64
  %2701 = load i64, i64* %PC.i146
  %2702 = add i64 %2701, 3
  store i64 %2702, i64* %PC.i146
  %2703 = sub i32 %2699, 32
  %2704 = icmp ult i32 %2699, 32
  %2705 = zext i1 %2704 to i8
  %2706 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2705, i8* %2706, align 1
  %2707 = and i32 %2703, 255
  %2708 = call i32 @llvm.ctpop.i32(i32 %2707)
  %2709 = trunc i32 %2708 to i8
  %2710 = and i8 %2709, 1
  %2711 = xor i8 %2710, 1
  %2712 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2711, i8* %2712, align 1
  %2713 = xor i64 32, %2700
  %2714 = trunc i64 %2713 to i32
  %2715 = xor i32 %2714, %2703
  %2716 = lshr i32 %2715, 4
  %2717 = trunc i32 %2716 to i8
  %2718 = and i8 %2717, 1
  %2719 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2718, i8* %2719, align 1
  %2720 = icmp eq i32 %2703, 0
  %2721 = zext i1 %2720 to i8
  %2722 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2721, i8* %2722, align 1
  %2723 = lshr i32 %2703, 31
  %2724 = trunc i32 %2723 to i8
  %2725 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2724, i8* %2725, align 1
  %2726 = lshr i32 %2699, 31
  %2727 = xor i32 %2723, %2726
  %2728 = add i32 %2727, %2726
  %2729 = icmp eq i32 %2728, 2
  %2730 = zext i1 %2729 to i8
  %2731 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2730, i8* %2731, align 1
  store %struct.Memory* %loadMem_4035c3, %struct.Memory** %MEMORY
  %loadMem_4035c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2733 = getelementptr inbounds %struct.GPR, %struct.GPR* %2732, i32 0, i32 33
  %2734 = getelementptr inbounds %struct.Reg, %struct.Reg* %2733, i32 0, i32 0
  %PC.i145 = bitcast %union.anon* %2734 to i64*
  %2735 = load i64, i64* %PC.i145
  %2736 = add i64 %2735, 122
  %2737 = load i64, i64* %PC.i145
  %2738 = add i64 %2737, 6
  %2739 = load i64, i64* %PC.i145
  %2740 = add i64 %2739, 6
  store i64 %2740, i64* %PC.i145
  %2741 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2742 = load i8, i8* %2741, align 1
  store i8 %2742, i8* %BRANCH_TAKEN, align 1
  %2743 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2744 = icmp ne i8 %2742, 0
  %2745 = select i1 %2744, i64 %2736, i64 %2738
  store i64 %2745, i64* %2743, align 8
  store %struct.Memory* %loadMem_4035c6, %struct.Memory** %MEMORY
  %loadBr_4035c6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4035c6 = icmp eq i8 %loadBr_4035c6, 1
  br i1 %cmpBr_4035c6, label %block_.L_403640, label %block_4035cc

block_4035cc:                                     ; preds = %block_4035af
  %loadMem_4035cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2747 = getelementptr inbounds %struct.GPR, %struct.GPR* %2746, i32 0, i32 33
  %2748 = getelementptr inbounds %struct.Reg, %struct.Reg* %2747, i32 0, i32 0
  %PC.i142 = bitcast %union.anon* %2748 to i64*
  %2749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2750 = getelementptr inbounds %struct.GPR, %struct.GPR* %2749, i32 0, i32 1
  %2751 = getelementptr inbounds %struct.Reg, %struct.Reg* %2750, i32 0, i32 0
  %RAX.i143 = bitcast %union.anon* %2751 to i64*
  %2752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2753 = getelementptr inbounds %struct.GPR, %struct.GPR* %2752, i32 0, i32 15
  %2754 = getelementptr inbounds %struct.Reg, %struct.Reg* %2753, i32 0, i32 0
  %RBP.i144 = bitcast %union.anon* %2754 to i64*
  %2755 = load i64, i64* %RBP.i144
  %2756 = sub i64 %2755, 8
  %2757 = load i64, i64* %PC.i142
  %2758 = add i64 %2757, 4
  store i64 %2758, i64* %PC.i142
  %2759 = inttoptr i64 %2756 to i64*
  %2760 = load i64, i64* %2759
  store i64 %2760, i64* %RAX.i143, align 8
  store %struct.Memory* %loadMem_4035cc, %struct.Memory** %MEMORY
  %loadMem_4035d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2761 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2762 = getelementptr inbounds %struct.GPR, %struct.GPR* %2761, i32 0, i32 33
  %2763 = getelementptr inbounds %struct.Reg, %struct.Reg* %2762, i32 0, i32 0
  %PC.i139 = bitcast %union.anon* %2763 to i64*
  %2764 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2765 = getelementptr inbounds %struct.GPR, %struct.GPR* %2764, i32 0, i32 5
  %2766 = getelementptr inbounds %struct.Reg, %struct.Reg* %2765, i32 0, i32 0
  %RCX.i140 = bitcast %union.anon* %2766 to i64*
  %2767 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2768 = getelementptr inbounds %struct.GPR, %struct.GPR* %2767, i32 0, i32 15
  %2769 = getelementptr inbounds %struct.Reg, %struct.Reg* %2768, i32 0, i32 0
  %RBP.i141 = bitcast %union.anon* %2769 to i64*
  %2770 = load i64, i64* %RBP.i141
  %2771 = sub i64 %2770, 28
  %2772 = load i64, i64* %PC.i139
  %2773 = add i64 %2772, 4
  store i64 %2773, i64* %PC.i139
  %2774 = inttoptr i64 %2771 to i32*
  %2775 = load i32, i32* %2774
  %2776 = sext i32 %2775 to i64
  store i64 %2776, i64* %RCX.i140, align 8
  store %struct.Memory* %loadMem_4035d0, %struct.Memory** %MEMORY
  %loadMem_4035d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2778 = getelementptr inbounds %struct.GPR, %struct.GPR* %2777, i32 0, i32 33
  %2779 = getelementptr inbounds %struct.Reg, %struct.Reg* %2778, i32 0, i32 0
  %PC.i136 = bitcast %union.anon* %2779 to i64*
  %2780 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2781 = getelementptr inbounds %struct.GPR, %struct.GPR* %2780, i32 0, i32 1
  %2782 = getelementptr inbounds %struct.Reg, %struct.Reg* %2781, i32 0, i32 0
  %RAX.i137 = bitcast %union.anon* %2782 to i64*
  %2783 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2784 = getelementptr inbounds %struct.GPR, %struct.GPR* %2783, i32 0, i32 5
  %2785 = getelementptr inbounds %struct.Reg, %struct.Reg* %2784, i32 0, i32 0
  %RCX.i138 = bitcast %union.anon* %2785 to i64*
  %2786 = load i64, i64* %RAX.i137
  %2787 = load i64, i64* %RCX.i138
  %2788 = mul i64 %2787, 8
  %2789 = add i64 %2788, %2786
  %2790 = load i64, i64* %PC.i136
  %2791 = add i64 %2790, 4
  store i64 %2791, i64* %PC.i136
  %2792 = inttoptr i64 %2789 to i64*
  %2793 = load i64, i64* %2792
  store i64 %2793, i64* %RAX.i137, align 8
  store %struct.Memory* %loadMem_4035d4, %struct.Memory** %MEMORY
  %loadMem_4035d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2794 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2795 = getelementptr inbounds %struct.GPR, %struct.GPR* %2794, i32 0, i32 33
  %2796 = getelementptr inbounds %struct.Reg, %struct.Reg* %2795, i32 0, i32 0
  %PC.i133 = bitcast %union.anon* %2796 to i64*
  %2797 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2798 = getelementptr inbounds %struct.GPR, %struct.GPR* %2797, i32 0, i32 5
  %2799 = getelementptr inbounds %struct.Reg, %struct.Reg* %2798, i32 0, i32 0
  %RCX.i134 = bitcast %union.anon* %2799 to i64*
  %2800 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2801 = getelementptr inbounds %struct.GPR, %struct.GPR* %2800, i32 0, i32 15
  %2802 = getelementptr inbounds %struct.Reg, %struct.Reg* %2801, i32 0, i32 0
  %RBP.i135 = bitcast %union.anon* %2802 to i64*
  %2803 = load i64, i64* %RBP.i135
  %2804 = sub i64 %2803, 24
  %2805 = load i64, i64* %PC.i133
  %2806 = add i64 %2805, 4
  store i64 %2806, i64* %PC.i133
  %2807 = inttoptr i64 %2804 to i32*
  %2808 = load i32, i32* %2807
  %2809 = sext i32 %2808 to i64
  store i64 %2809, i64* %RCX.i134, align 8
  store %struct.Memory* %loadMem_4035d8, %struct.Memory** %MEMORY
  %loadMem_4035dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2811 = getelementptr inbounds %struct.GPR, %struct.GPR* %2810, i32 0, i32 33
  %2812 = getelementptr inbounds %struct.Reg, %struct.Reg* %2811, i32 0, i32 0
  %PC.i129 = bitcast %union.anon* %2812 to i64*
  %2813 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2814 = getelementptr inbounds %struct.GPR, %struct.GPR* %2813, i32 0, i32 1
  %2815 = getelementptr inbounds %struct.Reg, %struct.Reg* %2814, i32 0, i32 0
  %RAX.i130 = bitcast %union.anon* %2815 to i64*
  %2816 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2817 = getelementptr inbounds %struct.GPR, %struct.GPR* %2816, i32 0, i32 5
  %2818 = getelementptr inbounds %struct.Reg, %struct.Reg* %2817, i32 0, i32 0
  %RCX.i131 = bitcast %union.anon* %2818 to i64*
  %2819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2820 = getelementptr inbounds %struct.GPR, %struct.GPR* %2819, i32 0, i32 7
  %2821 = getelementptr inbounds %struct.Reg, %struct.Reg* %2820, i32 0, i32 0
  %RDX.i132 = bitcast %union.anon* %2821 to i64*
  %2822 = load i64, i64* %RAX.i130
  %2823 = load i64, i64* %RCX.i131
  %2824 = add i64 %2823, %2822
  %2825 = load i64, i64* %PC.i129
  %2826 = add i64 %2825, 4
  store i64 %2826, i64* %PC.i129
  %2827 = inttoptr i64 %2824 to i8*
  %2828 = load i8, i8* %2827
  %2829 = sext i8 %2828 to i64
  %2830 = and i64 %2829, 4294967295
  store i64 %2830, i64* %RDX.i132, align 8
  store %struct.Memory* %loadMem_4035dc, %struct.Memory** %MEMORY
  %loadMem_4035e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2831 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2832 = getelementptr inbounds %struct.GPR, %struct.GPR* %2831, i32 0, i32 33
  %2833 = getelementptr inbounds %struct.Reg, %struct.Reg* %2832, i32 0, i32 0
  %PC.i127 = bitcast %union.anon* %2833 to i64*
  %2834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2835 = getelementptr inbounds %struct.GPR, %struct.GPR* %2834, i32 0, i32 7
  %2836 = getelementptr inbounds %struct.Reg, %struct.Reg* %2835, i32 0, i32 0
  %EDX.i128 = bitcast %union.anon* %2836 to i32*
  %2837 = load i32, i32* %EDX.i128
  %2838 = zext i32 %2837 to i64
  %2839 = load i64, i64* %PC.i127
  %2840 = add i64 %2839, 3
  store i64 %2840, i64* %PC.i127
  %2841 = sub i32 %2837, 46
  %2842 = icmp ult i32 %2837, 46
  %2843 = zext i1 %2842 to i8
  %2844 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2843, i8* %2844, align 1
  %2845 = and i32 %2841, 255
  %2846 = call i32 @llvm.ctpop.i32(i32 %2845)
  %2847 = trunc i32 %2846 to i8
  %2848 = and i8 %2847, 1
  %2849 = xor i8 %2848, 1
  %2850 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2849, i8* %2850, align 1
  %2851 = xor i64 46, %2838
  %2852 = trunc i64 %2851 to i32
  %2853 = xor i32 %2852, %2841
  %2854 = lshr i32 %2853, 4
  %2855 = trunc i32 %2854 to i8
  %2856 = and i8 %2855, 1
  %2857 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2856, i8* %2857, align 1
  %2858 = icmp eq i32 %2841, 0
  %2859 = zext i1 %2858 to i8
  %2860 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2859, i8* %2860, align 1
  %2861 = lshr i32 %2841, 31
  %2862 = trunc i32 %2861 to i8
  %2863 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2862, i8* %2863, align 1
  %2864 = lshr i32 %2837, 31
  %2865 = xor i32 %2861, %2864
  %2866 = add i32 %2865, %2864
  %2867 = icmp eq i32 %2866, 2
  %2868 = zext i1 %2867 to i8
  %2869 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2868, i8* %2869, align 1
  store %struct.Memory* %loadMem_4035e0, %struct.Memory** %MEMORY
  %loadMem_4035e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2871 = getelementptr inbounds %struct.GPR, %struct.GPR* %2870, i32 0, i32 33
  %2872 = getelementptr inbounds %struct.Reg, %struct.Reg* %2871, i32 0, i32 0
  %PC.i126 = bitcast %union.anon* %2872 to i64*
  %2873 = load i64, i64* %PC.i126
  %2874 = add i64 %2873, 93
  %2875 = load i64, i64* %PC.i126
  %2876 = add i64 %2875, 6
  %2877 = load i64, i64* %PC.i126
  %2878 = add i64 %2877, 6
  store i64 %2878, i64* %PC.i126
  %2879 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2880 = load i8, i8* %2879, align 1
  store i8 %2880, i8* %BRANCH_TAKEN, align 1
  %2881 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2882 = icmp ne i8 %2880, 0
  %2883 = select i1 %2882, i64 %2874, i64 %2876
  store i64 %2883, i64* %2881, align 8
  store %struct.Memory* %loadMem_4035e3, %struct.Memory** %MEMORY
  %loadBr_4035e3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4035e3 = icmp eq i8 %loadBr_4035e3, 1
  br i1 %cmpBr_4035e3, label %block_.L_403640, label %block_4035e9

block_4035e9:                                     ; preds = %block_4035cc
  %loadMem_4035e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2884 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2885 = getelementptr inbounds %struct.GPR, %struct.GPR* %2884, i32 0, i32 33
  %2886 = getelementptr inbounds %struct.Reg, %struct.Reg* %2885, i32 0, i32 0
  %PC.i123 = bitcast %union.anon* %2886 to i64*
  %2887 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2888 = getelementptr inbounds %struct.GPR, %struct.GPR* %2887, i32 0, i32 1
  %2889 = getelementptr inbounds %struct.Reg, %struct.Reg* %2888, i32 0, i32 0
  %RAX.i124 = bitcast %union.anon* %2889 to i64*
  %2890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2891 = getelementptr inbounds %struct.GPR, %struct.GPR* %2890, i32 0, i32 15
  %2892 = getelementptr inbounds %struct.Reg, %struct.Reg* %2891, i32 0, i32 0
  %RBP.i125 = bitcast %union.anon* %2892 to i64*
  %2893 = load i64, i64* %RBP.i125
  %2894 = sub i64 %2893, 8
  %2895 = load i64, i64* %PC.i123
  %2896 = add i64 %2895, 4
  store i64 %2896, i64* %PC.i123
  %2897 = inttoptr i64 %2894 to i64*
  %2898 = load i64, i64* %2897
  store i64 %2898, i64* %RAX.i124, align 8
  store %struct.Memory* %loadMem_4035e9, %struct.Memory** %MEMORY
  %loadMem_4035ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %2899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2900 = getelementptr inbounds %struct.GPR, %struct.GPR* %2899, i32 0, i32 33
  %2901 = getelementptr inbounds %struct.Reg, %struct.Reg* %2900, i32 0, i32 0
  %PC.i120 = bitcast %union.anon* %2901 to i64*
  %2902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2903 = getelementptr inbounds %struct.GPR, %struct.GPR* %2902, i32 0, i32 5
  %2904 = getelementptr inbounds %struct.Reg, %struct.Reg* %2903, i32 0, i32 0
  %RCX.i121 = bitcast %union.anon* %2904 to i64*
  %2905 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2906 = getelementptr inbounds %struct.GPR, %struct.GPR* %2905, i32 0, i32 15
  %2907 = getelementptr inbounds %struct.Reg, %struct.Reg* %2906, i32 0, i32 0
  %RBP.i122 = bitcast %union.anon* %2907 to i64*
  %2908 = load i64, i64* %RBP.i122
  %2909 = sub i64 %2908, 28
  %2910 = load i64, i64* %PC.i120
  %2911 = add i64 %2910, 4
  store i64 %2911, i64* %PC.i120
  %2912 = inttoptr i64 %2909 to i32*
  %2913 = load i32, i32* %2912
  %2914 = sext i32 %2913 to i64
  store i64 %2914, i64* %RCX.i121, align 8
  store %struct.Memory* %loadMem_4035ed, %struct.Memory** %MEMORY
  %loadMem_4035f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2915 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2916 = getelementptr inbounds %struct.GPR, %struct.GPR* %2915, i32 0, i32 33
  %2917 = getelementptr inbounds %struct.Reg, %struct.Reg* %2916, i32 0, i32 0
  %PC.i117 = bitcast %union.anon* %2917 to i64*
  %2918 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2919 = getelementptr inbounds %struct.GPR, %struct.GPR* %2918, i32 0, i32 1
  %2920 = getelementptr inbounds %struct.Reg, %struct.Reg* %2919, i32 0, i32 0
  %RAX.i118 = bitcast %union.anon* %2920 to i64*
  %2921 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2922 = getelementptr inbounds %struct.GPR, %struct.GPR* %2921, i32 0, i32 5
  %2923 = getelementptr inbounds %struct.Reg, %struct.Reg* %2922, i32 0, i32 0
  %RCX.i119 = bitcast %union.anon* %2923 to i64*
  %2924 = load i64, i64* %RAX.i118
  %2925 = load i64, i64* %RCX.i119
  %2926 = mul i64 %2925, 8
  %2927 = add i64 %2926, %2924
  %2928 = load i64, i64* %PC.i117
  %2929 = add i64 %2928, 4
  store i64 %2929, i64* %PC.i117
  %2930 = inttoptr i64 %2927 to i64*
  %2931 = load i64, i64* %2930
  store i64 %2931, i64* %RAX.i118, align 8
  store %struct.Memory* %loadMem_4035f1, %struct.Memory** %MEMORY
  %loadMem_4035f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2932 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2933 = getelementptr inbounds %struct.GPR, %struct.GPR* %2932, i32 0, i32 33
  %2934 = getelementptr inbounds %struct.Reg, %struct.Reg* %2933, i32 0, i32 0
  %PC.i114 = bitcast %union.anon* %2934 to i64*
  %2935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2936 = getelementptr inbounds %struct.GPR, %struct.GPR* %2935, i32 0, i32 5
  %2937 = getelementptr inbounds %struct.Reg, %struct.Reg* %2936, i32 0, i32 0
  %RCX.i115 = bitcast %union.anon* %2937 to i64*
  %2938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2939 = getelementptr inbounds %struct.GPR, %struct.GPR* %2938, i32 0, i32 15
  %2940 = getelementptr inbounds %struct.Reg, %struct.Reg* %2939, i32 0, i32 0
  %RBP.i116 = bitcast %union.anon* %2940 to i64*
  %2941 = load i64, i64* %RBP.i116
  %2942 = sub i64 %2941, 24
  %2943 = load i64, i64* %PC.i114
  %2944 = add i64 %2943, 4
  store i64 %2944, i64* %PC.i114
  %2945 = inttoptr i64 %2942 to i32*
  %2946 = load i32, i32* %2945
  %2947 = sext i32 %2946 to i64
  store i64 %2947, i64* %RCX.i115, align 8
  store %struct.Memory* %loadMem_4035f5, %struct.Memory** %MEMORY
  %loadMem_4035f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2948 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2949 = getelementptr inbounds %struct.GPR, %struct.GPR* %2948, i32 0, i32 33
  %2950 = getelementptr inbounds %struct.Reg, %struct.Reg* %2949, i32 0, i32 0
  %PC.i110 = bitcast %union.anon* %2950 to i64*
  %2951 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2952 = getelementptr inbounds %struct.GPR, %struct.GPR* %2951, i32 0, i32 1
  %2953 = getelementptr inbounds %struct.Reg, %struct.Reg* %2952, i32 0, i32 0
  %RAX.i111 = bitcast %union.anon* %2953 to i64*
  %2954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2955 = getelementptr inbounds %struct.GPR, %struct.GPR* %2954, i32 0, i32 5
  %2956 = getelementptr inbounds %struct.Reg, %struct.Reg* %2955, i32 0, i32 0
  %RCX.i112 = bitcast %union.anon* %2956 to i64*
  %2957 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2958 = getelementptr inbounds %struct.GPR, %struct.GPR* %2957, i32 0, i32 7
  %2959 = getelementptr inbounds %struct.Reg, %struct.Reg* %2958, i32 0, i32 0
  %RDX.i113 = bitcast %union.anon* %2959 to i64*
  %2960 = load i64, i64* %RAX.i111
  %2961 = load i64, i64* %RCX.i112
  %2962 = add i64 %2961, %2960
  %2963 = load i64, i64* %PC.i110
  %2964 = add i64 %2963, 4
  store i64 %2964, i64* %PC.i110
  %2965 = inttoptr i64 %2962 to i8*
  %2966 = load i8, i8* %2965
  %2967 = sext i8 %2966 to i64
  %2968 = and i64 %2967, 4294967295
  store i64 %2968, i64* %RDX.i113, align 8
  store %struct.Memory* %loadMem_4035f9, %struct.Memory** %MEMORY
  %loadMem_4035fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2969 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2970 = getelementptr inbounds %struct.GPR, %struct.GPR* %2969, i32 0, i32 33
  %2971 = getelementptr inbounds %struct.Reg, %struct.Reg* %2970, i32 0, i32 0
  %PC.i108 = bitcast %union.anon* %2971 to i64*
  %2972 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2973 = getelementptr inbounds %struct.GPR, %struct.GPR* %2972, i32 0, i32 7
  %2974 = getelementptr inbounds %struct.Reg, %struct.Reg* %2973, i32 0, i32 0
  %EDX.i109 = bitcast %union.anon* %2974 to i32*
  %2975 = load i32, i32* %EDX.i109
  %2976 = zext i32 %2975 to i64
  %2977 = load i64, i64* %PC.i108
  %2978 = add i64 %2977, 3
  store i64 %2978, i64* %PC.i108
  %2979 = sub i32 %2975, 95
  %2980 = icmp ult i32 %2975, 95
  %2981 = zext i1 %2980 to i8
  %2982 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2981, i8* %2982, align 1
  %2983 = and i32 %2979, 255
  %2984 = call i32 @llvm.ctpop.i32(i32 %2983)
  %2985 = trunc i32 %2984 to i8
  %2986 = and i8 %2985, 1
  %2987 = xor i8 %2986, 1
  %2988 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2987, i8* %2988, align 1
  %2989 = xor i64 95, %2976
  %2990 = trunc i64 %2989 to i32
  %2991 = xor i32 %2990, %2979
  %2992 = lshr i32 %2991, 4
  %2993 = trunc i32 %2992 to i8
  %2994 = and i8 %2993, 1
  %2995 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2994, i8* %2995, align 1
  %2996 = icmp eq i32 %2979, 0
  %2997 = zext i1 %2996 to i8
  %2998 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2997, i8* %2998, align 1
  %2999 = lshr i32 %2979, 31
  %3000 = trunc i32 %2999 to i8
  %3001 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3000, i8* %3001, align 1
  %3002 = lshr i32 %2975, 31
  %3003 = xor i32 %2999, %3002
  %3004 = add i32 %3003, %3002
  %3005 = icmp eq i32 %3004, 2
  %3006 = zext i1 %3005 to i8
  %3007 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3006, i8* %3007, align 1
  store %struct.Memory* %loadMem_4035fd, %struct.Memory** %MEMORY
  %loadMem_403600 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3008 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3009 = getelementptr inbounds %struct.GPR, %struct.GPR* %3008, i32 0, i32 33
  %3010 = getelementptr inbounds %struct.Reg, %struct.Reg* %3009, i32 0, i32 0
  %PC.i107 = bitcast %union.anon* %3010 to i64*
  %3011 = load i64, i64* %PC.i107
  %3012 = add i64 %3011, 64
  %3013 = load i64, i64* %PC.i107
  %3014 = add i64 %3013, 6
  %3015 = load i64, i64* %PC.i107
  %3016 = add i64 %3015, 6
  store i64 %3016, i64* %PC.i107
  %3017 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3018 = load i8, i8* %3017, align 1
  store i8 %3018, i8* %BRANCH_TAKEN, align 1
  %3019 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3020 = icmp ne i8 %3018, 0
  %3021 = select i1 %3020, i64 %3012, i64 %3014
  store i64 %3021, i64* %3019, align 8
  store %struct.Memory* %loadMem_403600, %struct.Memory** %MEMORY
  %loadBr_403600 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_403600 = icmp eq i8 %loadBr_403600, 1
  br i1 %cmpBr_403600, label %block_.L_403640, label %block_403606

block_403606:                                     ; preds = %block_4035e9
  %loadMem_403606 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3022 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3023 = getelementptr inbounds %struct.GPR, %struct.GPR* %3022, i32 0, i32 33
  %3024 = getelementptr inbounds %struct.Reg, %struct.Reg* %3023, i32 0, i32 0
  %PC.i104 = bitcast %union.anon* %3024 to i64*
  %3025 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3026 = getelementptr inbounds %struct.GPR, %struct.GPR* %3025, i32 0, i32 1
  %3027 = getelementptr inbounds %struct.Reg, %struct.Reg* %3026, i32 0, i32 0
  %RAX.i105 = bitcast %union.anon* %3027 to i64*
  %3028 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3029 = getelementptr inbounds %struct.GPR, %struct.GPR* %3028, i32 0, i32 15
  %3030 = getelementptr inbounds %struct.Reg, %struct.Reg* %3029, i32 0, i32 0
  %RBP.i106 = bitcast %union.anon* %3030 to i64*
  %3031 = load i64, i64* %RBP.i106
  %3032 = sub i64 %3031, 8
  %3033 = load i64, i64* %PC.i104
  %3034 = add i64 %3033, 4
  store i64 %3034, i64* %PC.i104
  %3035 = inttoptr i64 %3032 to i64*
  %3036 = load i64, i64* %3035
  store i64 %3036, i64* %RAX.i105, align 8
  store %struct.Memory* %loadMem_403606, %struct.Memory** %MEMORY
  %loadMem_40360a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3037 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3038 = getelementptr inbounds %struct.GPR, %struct.GPR* %3037, i32 0, i32 33
  %3039 = getelementptr inbounds %struct.Reg, %struct.Reg* %3038, i32 0, i32 0
  %PC.i101 = bitcast %union.anon* %3039 to i64*
  %3040 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3041 = getelementptr inbounds %struct.GPR, %struct.GPR* %3040, i32 0, i32 5
  %3042 = getelementptr inbounds %struct.Reg, %struct.Reg* %3041, i32 0, i32 0
  %RCX.i102 = bitcast %union.anon* %3042 to i64*
  %3043 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3044 = getelementptr inbounds %struct.GPR, %struct.GPR* %3043, i32 0, i32 15
  %3045 = getelementptr inbounds %struct.Reg, %struct.Reg* %3044, i32 0, i32 0
  %RBP.i103 = bitcast %union.anon* %3045 to i64*
  %3046 = load i64, i64* %RBP.i103
  %3047 = sub i64 %3046, 28
  %3048 = load i64, i64* %PC.i101
  %3049 = add i64 %3048, 4
  store i64 %3049, i64* %PC.i101
  %3050 = inttoptr i64 %3047 to i32*
  %3051 = load i32, i32* %3050
  %3052 = sext i32 %3051 to i64
  store i64 %3052, i64* %RCX.i102, align 8
  store %struct.Memory* %loadMem_40360a, %struct.Memory** %MEMORY
  %loadMem_40360e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3053 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3054 = getelementptr inbounds %struct.GPR, %struct.GPR* %3053, i32 0, i32 33
  %3055 = getelementptr inbounds %struct.Reg, %struct.Reg* %3054, i32 0, i32 0
  %PC.i98 = bitcast %union.anon* %3055 to i64*
  %3056 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3057 = getelementptr inbounds %struct.GPR, %struct.GPR* %3056, i32 0, i32 1
  %3058 = getelementptr inbounds %struct.Reg, %struct.Reg* %3057, i32 0, i32 0
  %RAX.i99 = bitcast %union.anon* %3058 to i64*
  %3059 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3060 = getelementptr inbounds %struct.GPR, %struct.GPR* %3059, i32 0, i32 5
  %3061 = getelementptr inbounds %struct.Reg, %struct.Reg* %3060, i32 0, i32 0
  %RCX.i100 = bitcast %union.anon* %3061 to i64*
  %3062 = load i64, i64* %RAX.i99
  %3063 = load i64, i64* %RCX.i100
  %3064 = mul i64 %3063, 8
  %3065 = add i64 %3064, %3062
  %3066 = load i64, i64* %PC.i98
  %3067 = add i64 %3066, 4
  store i64 %3067, i64* %PC.i98
  %3068 = inttoptr i64 %3065 to i64*
  %3069 = load i64, i64* %3068
  store i64 %3069, i64* %RAX.i99, align 8
  store %struct.Memory* %loadMem_40360e, %struct.Memory** %MEMORY
  %loadMem_403612 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3070 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3071 = getelementptr inbounds %struct.GPR, %struct.GPR* %3070, i32 0, i32 33
  %3072 = getelementptr inbounds %struct.Reg, %struct.Reg* %3071, i32 0, i32 0
  %PC.i95 = bitcast %union.anon* %3072 to i64*
  %3073 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3074 = getelementptr inbounds %struct.GPR, %struct.GPR* %3073, i32 0, i32 5
  %3075 = getelementptr inbounds %struct.Reg, %struct.Reg* %3074, i32 0, i32 0
  %RCX.i96 = bitcast %union.anon* %3075 to i64*
  %3076 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3077 = getelementptr inbounds %struct.GPR, %struct.GPR* %3076, i32 0, i32 15
  %3078 = getelementptr inbounds %struct.Reg, %struct.Reg* %3077, i32 0, i32 0
  %RBP.i97 = bitcast %union.anon* %3078 to i64*
  %3079 = load i64, i64* %RBP.i97
  %3080 = sub i64 %3079, 24
  %3081 = load i64, i64* %PC.i95
  %3082 = add i64 %3081, 4
  store i64 %3082, i64* %PC.i95
  %3083 = inttoptr i64 %3080 to i32*
  %3084 = load i32, i32* %3083
  %3085 = sext i32 %3084 to i64
  store i64 %3085, i64* %RCX.i96, align 8
  store %struct.Memory* %loadMem_403612, %struct.Memory** %MEMORY
  %loadMem_403616 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3086 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3087 = getelementptr inbounds %struct.GPR, %struct.GPR* %3086, i32 0, i32 33
  %3088 = getelementptr inbounds %struct.Reg, %struct.Reg* %3087, i32 0, i32 0
  %PC.i91 = bitcast %union.anon* %3088 to i64*
  %3089 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3090 = getelementptr inbounds %struct.GPR, %struct.GPR* %3089, i32 0, i32 1
  %3091 = getelementptr inbounds %struct.Reg, %struct.Reg* %3090, i32 0, i32 0
  %RAX.i92 = bitcast %union.anon* %3091 to i64*
  %3092 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3093 = getelementptr inbounds %struct.GPR, %struct.GPR* %3092, i32 0, i32 5
  %3094 = getelementptr inbounds %struct.Reg, %struct.Reg* %3093, i32 0, i32 0
  %RCX.i93 = bitcast %union.anon* %3094 to i64*
  %3095 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3096 = getelementptr inbounds %struct.GPR, %struct.GPR* %3095, i32 0, i32 7
  %3097 = getelementptr inbounds %struct.Reg, %struct.Reg* %3096, i32 0, i32 0
  %RDX.i94 = bitcast %union.anon* %3097 to i64*
  %3098 = load i64, i64* %RAX.i92
  %3099 = load i64, i64* %RCX.i93
  %3100 = add i64 %3099, %3098
  %3101 = load i64, i64* %PC.i91
  %3102 = add i64 %3101, 4
  store i64 %3102, i64* %PC.i91
  %3103 = inttoptr i64 %3100 to i8*
  %3104 = load i8, i8* %3103
  %3105 = sext i8 %3104 to i64
  %3106 = and i64 %3105, 4294967295
  store i64 %3106, i64* %RDX.i94, align 8
  store %struct.Memory* %loadMem_403616, %struct.Memory** %MEMORY
  %loadMem_40361a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3108 = getelementptr inbounds %struct.GPR, %struct.GPR* %3107, i32 0, i32 33
  %3109 = getelementptr inbounds %struct.Reg, %struct.Reg* %3108, i32 0, i32 0
  %PC.i89 = bitcast %union.anon* %3109 to i64*
  %3110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3111 = getelementptr inbounds %struct.GPR, %struct.GPR* %3110, i32 0, i32 7
  %3112 = getelementptr inbounds %struct.Reg, %struct.Reg* %3111, i32 0, i32 0
  %EDX.i90 = bitcast %union.anon* %3112 to i32*
  %3113 = load i32, i32* %EDX.i90
  %3114 = zext i32 %3113 to i64
  %3115 = load i64, i64* %PC.i89
  %3116 = add i64 %3115, 3
  store i64 %3116, i64* %PC.i89
  %3117 = sub i32 %3113, 45
  %3118 = icmp ult i32 %3113, 45
  %3119 = zext i1 %3118 to i8
  %3120 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3119, i8* %3120, align 1
  %3121 = and i32 %3117, 255
  %3122 = call i32 @llvm.ctpop.i32(i32 %3121)
  %3123 = trunc i32 %3122 to i8
  %3124 = and i8 %3123, 1
  %3125 = xor i8 %3124, 1
  %3126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3125, i8* %3126, align 1
  %3127 = xor i64 45, %3114
  %3128 = trunc i64 %3127 to i32
  %3129 = xor i32 %3128, %3117
  %3130 = lshr i32 %3129, 4
  %3131 = trunc i32 %3130 to i8
  %3132 = and i8 %3131, 1
  %3133 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3132, i8* %3133, align 1
  %3134 = icmp eq i32 %3117, 0
  %3135 = zext i1 %3134 to i8
  %3136 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3135, i8* %3136, align 1
  %3137 = lshr i32 %3117, 31
  %3138 = trunc i32 %3137 to i8
  %3139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3138, i8* %3139, align 1
  %3140 = lshr i32 %3113, 31
  %3141 = xor i32 %3137, %3140
  %3142 = add i32 %3141, %3140
  %3143 = icmp eq i32 %3142, 2
  %3144 = zext i1 %3143 to i8
  %3145 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3144, i8* %3145, align 1
  store %struct.Memory* %loadMem_40361a, %struct.Memory** %MEMORY
  %loadMem_40361d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3147 = getelementptr inbounds %struct.GPR, %struct.GPR* %3146, i32 0, i32 33
  %3148 = getelementptr inbounds %struct.Reg, %struct.Reg* %3147, i32 0, i32 0
  %PC.i88 = bitcast %union.anon* %3148 to i64*
  %3149 = load i64, i64* %PC.i88
  %3150 = add i64 %3149, 35
  %3151 = load i64, i64* %PC.i88
  %3152 = add i64 %3151, 6
  %3153 = load i64, i64* %PC.i88
  %3154 = add i64 %3153, 6
  store i64 %3154, i64* %PC.i88
  %3155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3156 = load i8, i8* %3155, align 1
  store i8 %3156, i8* %BRANCH_TAKEN, align 1
  %3157 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3158 = icmp ne i8 %3156, 0
  %3159 = select i1 %3158, i64 %3150, i64 %3152
  store i64 %3159, i64* %3157, align 8
  store %struct.Memory* %loadMem_40361d, %struct.Memory** %MEMORY
  %loadBr_40361d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40361d = icmp eq i8 %loadBr_40361d, 1
  br i1 %cmpBr_40361d, label %block_.L_403640, label %block_403623

block_403623:                                     ; preds = %block_403606
  %loadMem_403623 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3161 = getelementptr inbounds %struct.GPR, %struct.GPR* %3160, i32 0, i32 33
  %3162 = getelementptr inbounds %struct.Reg, %struct.Reg* %3161, i32 0, i32 0
  %PC.i85 = bitcast %union.anon* %3162 to i64*
  %3163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3164 = getelementptr inbounds %struct.GPR, %struct.GPR* %3163, i32 0, i32 1
  %3165 = getelementptr inbounds %struct.Reg, %struct.Reg* %3164, i32 0, i32 0
  %RAX.i86 = bitcast %union.anon* %3165 to i64*
  %3166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3167 = getelementptr inbounds %struct.GPR, %struct.GPR* %3166, i32 0, i32 15
  %3168 = getelementptr inbounds %struct.Reg, %struct.Reg* %3167, i32 0, i32 0
  %RBP.i87 = bitcast %union.anon* %3168 to i64*
  %3169 = load i64, i64* %RBP.i87
  %3170 = sub i64 %3169, 8
  %3171 = load i64, i64* %PC.i85
  %3172 = add i64 %3171, 4
  store i64 %3172, i64* %PC.i85
  %3173 = inttoptr i64 %3170 to i64*
  %3174 = load i64, i64* %3173
  store i64 %3174, i64* %RAX.i86, align 8
  store %struct.Memory* %loadMem_403623, %struct.Memory** %MEMORY
  %loadMem_403627 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3176 = getelementptr inbounds %struct.GPR, %struct.GPR* %3175, i32 0, i32 33
  %3177 = getelementptr inbounds %struct.Reg, %struct.Reg* %3176, i32 0, i32 0
  %PC.i82 = bitcast %union.anon* %3177 to i64*
  %3178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3179 = getelementptr inbounds %struct.GPR, %struct.GPR* %3178, i32 0, i32 5
  %3180 = getelementptr inbounds %struct.Reg, %struct.Reg* %3179, i32 0, i32 0
  %RCX.i83 = bitcast %union.anon* %3180 to i64*
  %3181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3182 = getelementptr inbounds %struct.GPR, %struct.GPR* %3181, i32 0, i32 15
  %3183 = getelementptr inbounds %struct.Reg, %struct.Reg* %3182, i32 0, i32 0
  %RBP.i84 = bitcast %union.anon* %3183 to i64*
  %3184 = load i64, i64* %RBP.i84
  %3185 = sub i64 %3184, 28
  %3186 = load i64, i64* %PC.i82
  %3187 = add i64 %3186, 4
  store i64 %3187, i64* %PC.i82
  %3188 = inttoptr i64 %3185 to i32*
  %3189 = load i32, i32* %3188
  %3190 = sext i32 %3189 to i64
  store i64 %3190, i64* %RCX.i83, align 8
  store %struct.Memory* %loadMem_403627, %struct.Memory** %MEMORY
  %loadMem_40362b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3192 = getelementptr inbounds %struct.GPR, %struct.GPR* %3191, i32 0, i32 33
  %3193 = getelementptr inbounds %struct.Reg, %struct.Reg* %3192, i32 0, i32 0
  %PC.i79 = bitcast %union.anon* %3193 to i64*
  %3194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3195 = getelementptr inbounds %struct.GPR, %struct.GPR* %3194, i32 0, i32 1
  %3196 = getelementptr inbounds %struct.Reg, %struct.Reg* %3195, i32 0, i32 0
  %RAX.i80 = bitcast %union.anon* %3196 to i64*
  %3197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3198 = getelementptr inbounds %struct.GPR, %struct.GPR* %3197, i32 0, i32 5
  %3199 = getelementptr inbounds %struct.Reg, %struct.Reg* %3198, i32 0, i32 0
  %RCX.i81 = bitcast %union.anon* %3199 to i64*
  %3200 = load i64, i64* %RAX.i80
  %3201 = load i64, i64* %RCX.i81
  %3202 = mul i64 %3201, 8
  %3203 = add i64 %3202, %3200
  %3204 = load i64, i64* %PC.i79
  %3205 = add i64 %3204, 4
  store i64 %3205, i64* %PC.i79
  %3206 = inttoptr i64 %3203 to i64*
  %3207 = load i64, i64* %3206
  store i64 %3207, i64* %RAX.i80, align 8
  store %struct.Memory* %loadMem_40362b, %struct.Memory** %MEMORY
  %loadMem_40362f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3209 = getelementptr inbounds %struct.GPR, %struct.GPR* %3208, i32 0, i32 33
  %3210 = getelementptr inbounds %struct.Reg, %struct.Reg* %3209, i32 0, i32 0
  %PC.i76 = bitcast %union.anon* %3210 to i64*
  %3211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3212 = getelementptr inbounds %struct.GPR, %struct.GPR* %3211, i32 0, i32 5
  %3213 = getelementptr inbounds %struct.Reg, %struct.Reg* %3212, i32 0, i32 0
  %RCX.i77 = bitcast %union.anon* %3213 to i64*
  %3214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3215 = getelementptr inbounds %struct.GPR, %struct.GPR* %3214, i32 0, i32 15
  %3216 = getelementptr inbounds %struct.Reg, %struct.Reg* %3215, i32 0, i32 0
  %RBP.i78 = bitcast %union.anon* %3216 to i64*
  %3217 = load i64, i64* %RBP.i78
  %3218 = sub i64 %3217, 24
  %3219 = load i64, i64* %PC.i76
  %3220 = add i64 %3219, 4
  store i64 %3220, i64* %PC.i76
  %3221 = inttoptr i64 %3218 to i32*
  %3222 = load i32, i32* %3221
  %3223 = sext i32 %3222 to i64
  store i64 %3223, i64* %RCX.i77, align 8
  store %struct.Memory* %loadMem_40362f, %struct.Memory** %MEMORY
  %loadMem_403633 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3225 = getelementptr inbounds %struct.GPR, %struct.GPR* %3224, i32 0, i32 33
  %3226 = getelementptr inbounds %struct.Reg, %struct.Reg* %3225, i32 0, i32 0
  %PC.i73 = bitcast %union.anon* %3226 to i64*
  %3227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3228 = getelementptr inbounds %struct.GPR, %struct.GPR* %3227, i32 0, i32 1
  %3229 = getelementptr inbounds %struct.Reg, %struct.Reg* %3228, i32 0, i32 0
  %RAX.i74 = bitcast %union.anon* %3229 to i64*
  %3230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3231 = getelementptr inbounds %struct.GPR, %struct.GPR* %3230, i32 0, i32 5
  %3232 = getelementptr inbounds %struct.Reg, %struct.Reg* %3231, i32 0, i32 0
  %RCX.i75 = bitcast %union.anon* %3232 to i64*
  %3233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3234 = getelementptr inbounds %struct.GPR, %struct.GPR* %3233, i32 0, i32 7
  %3235 = getelementptr inbounds %struct.Reg, %struct.Reg* %3234, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %3235 to i64*
  %3236 = load i64, i64* %RAX.i74
  %3237 = load i64, i64* %RCX.i75
  %3238 = add i64 %3237, %3236
  %3239 = load i64, i64* %PC.i73
  %3240 = add i64 %3239, 4
  store i64 %3240, i64* %PC.i73
  %3241 = inttoptr i64 %3238 to i8*
  %3242 = load i8, i8* %3241
  %3243 = sext i8 %3242 to i64
  %3244 = and i64 %3243, 4294967295
  store i64 %3244, i64* %RDX.i, align 8
  store %struct.Memory* %loadMem_403633, %struct.Memory** %MEMORY
  %loadMem_403637 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3246 = getelementptr inbounds %struct.GPR, %struct.GPR* %3245, i32 0, i32 33
  %3247 = getelementptr inbounds %struct.Reg, %struct.Reg* %3246, i32 0, i32 0
  %PC.i72 = bitcast %union.anon* %3247 to i64*
  %3248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3249 = getelementptr inbounds %struct.GPR, %struct.GPR* %3248, i32 0, i32 7
  %3250 = getelementptr inbounds %struct.Reg, %struct.Reg* %3249, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %3250 to i32*
  %3251 = load i32, i32* %EDX.i
  %3252 = zext i32 %3251 to i64
  %3253 = load i64, i64* %PC.i72
  %3254 = add i64 %3253, 3
  store i64 %3254, i64* %PC.i72
  %3255 = sub i32 %3251, 126
  %3256 = icmp ult i32 %3251, 126
  %3257 = zext i1 %3256 to i8
  %3258 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3257, i8* %3258, align 1
  %3259 = and i32 %3255, 255
  %3260 = call i32 @llvm.ctpop.i32(i32 %3259)
  %3261 = trunc i32 %3260 to i8
  %3262 = and i8 %3261, 1
  %3263 = xor i8 %3262, 1
  %3264 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3263, i8* %3264, align 1
  %3265 = xor i64 126, %3252
  %3266 = trunc i64 %3265 to i32
  %3267 = xor i32 %3266, %3255
  %3268 = lshr i32 %3267, 4
  %3269 = trunc i32 %3268 to i8
  %3270 = and i8 %3269, 1
  %3271 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3270, i8* %3271, align 1
  %3272 = icmp eq i32 %3255, 0
  %3273 = zext i1 %3272 to i8
  %3274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3273, i8* %3274, align 1
  %3275 = lshr i32 %3255, 31
  %3276 = trunc i32 %3275 to i8
  %3277 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3276, i8* %3277, align 1
  %3278 = lshr i32 %3251, 31
  %3279 = xor i32 %3275, %3278
  %3280 = add i32 %3279, %3278
  %3281 = icmp eq i32 %3280, 2
  %3282 = zext i1 %3281 to i8
  %3283 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3282, i8* %3283, align 1
  store %struct.Memory* %loadMem_403637, %struct.Memory** %MEMORY
  %loadMem_40363a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3285 = getelementptr inbounds %struct.GPR, %struct.GPR* %3284, i32 0, i32 33
  %3286 = getelementptr inbounds %struct.Reg, %struct.Reg* %3285, i32 0, i32 0
  %PC.i71 = bitcast %union.anon* %3286 to i64*
  %3287 = load i64, i64* %PC.i71
  %3288 = add i64 %3287, 31
  %3289 = load i64, i64* %PC.i71
  %3290 = add i64 %3289, 6
  %3291 = load i64, i64* %PC.i71
  %3292 = add i64 %3291, 6
  store i64 %3292, i64* %PC.i71
  %3293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3294 = load i8, i8* %3293, align 1
  %3295 = icmp eq i8 %3294, 0
  %3296 = zext i1 %3295 to i8
  store i8 %3296, i8* %BRANCH_TAKEN, align 1
  %3297 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3298 = select i1 %3295, i64 %3288, i64 %3290
  store i64 %3298, i64* %3297, align 8
  store %struct.Memory* %loadMem_40363a, %struct.Memory** %MEMORY
  %loadBr_40363a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40363a = icmp eq i8 %loadBr_40363a, 1
  br i1 %cmpBr_40363a, label %block_.L_403659, label %block_.L_403640

block_.L_403640:                                  ; preds = %block_403623, %block_403606, %block_4035e9, %block_4035cc, %block_4035af
  %loadMem_403640 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3300 = getelementptr inbounds %struct.GPR, %struct.GPR* %3299, i32 0, i32 33
  %3301 = getelementptr inbounds %struct.Reg, %struct.Reg* %3300, i32 0, i32 0
  %PC.i68 = bitcast %union.anon* %3301 to i64*
  %3302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3303 = getelementptr inbounds %struct.GPR, %struct.GPR* %3302, i32 0, i32 1
  %3304 = getelementptr inbounds %struct.Reg, %struct.Reg* %3303, i32 0, i32 0
  %RAX.i69 = bitcast %union.anon* %3304 to i64*
  %3305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3306 = getelementptr inbounds %struct.GPR, %struct.GPR* %3305, i32 0, i32 15
  %3307 = getelementptr inbounds %struct.Reg, %struct.Reg* %3306, i32 0, i32 0
  %RBP.i70 = bitcast %union.anon* %3307 to i64*
  %3308 = load i64, i64* %RBP.i70
  %3309 = sub i64 %3308, 8
  %3310 = load i64, i64* %PC.i68
  %3311 = add i64 %3310, 4
  store i64 %3311, i64* %PC.i68
  %3312 = inttoptr i64 %3309 to i64*
  %3313 = load i64, i64* %3312
  store i64 %3313, i64* %RAX.i69, align 8
  store %struct.Memory* %loadMem_403640, %struct.Memory** %MEMORY
  %loadMem_403644 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3315 = getelementptr inbounds %struct.GPR, %struct.GPR* %3314, i32 0, i32 33
  %3316 = getelementptr inbounds %struct.Reg, %struct.Reg* %3315, i32 0, i32 0
  %PC.i65 = bitcast %union.anon* %3316 to i64*
  %3317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3318 = getelementptr inbounds %struct.GPR, %struct.GPR* %3317, i32 0, i32 5
  %3319 = getelementptr inbounds %struct.Reg, %struct.Reg* %3318, i32 0, i32 0
  %RCX.i66 = bitcast %union.anon* %3319 to i64*
  %3320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3321 = getelementptr inbounds %struct.GPR, %struct.GPR* %3320, i32 0, i32 15
  %3322 = getelementptr inbounds %struct.Reg, %struct.Reg* %3321, i32 0, i32 0
  %RBP.i67 = bitcast %union.anon* %3322 to i64*
  %3323 = load i64, i64* %RBP.i67
  %3324 = sub i64 %3323, 28
  %3325 = load i64, i64* %PC.i65
  %3326 = add i64 %3325, 4
  store i64 %3326, i64* %PC.i65
  %3327 = inttoptr i64 %3324 to i32*
  %3328 = load i32, i32* %3327
  %3329 = sext i32 %3328 to i64
  store i64 %3329, i64* %RCX.i66, align 8
  store %struct.Memory* %loadMem_403644, %struct.Memory** %MEMORY
  %loadMem_403648 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3331 = getelementptr inbounds %struct.GPR, %struct.GPR* %3330, i32 0, i32 33
  %3332 = getelementptr inbounds %struct.Reg, %struct.Reg* %3331, i32 0, i32 0
  %PC.i62 = bitcast %union.anon* %3332 to i64*
  %3333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3334 = getelementptr inbounds %struct.GPR, %struct.GPR* %3333, i32 0, i32 1
  %3335 = getelementptr inbounds %struct.Reg, %struct.Reg* %3334, i32 0, i32 0
  %RAX.i63 = bitcast %union.anon* %3335 to i64*
  %3336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3337 = getelementptr inbounds %struct.GPR, %struct.GPR* %3336, i32 0, i32 5
  %3338 = getelementptr inbounds %struct.Reg, %struct.Reg* %3337, i32 0, i32 0
  %RCX.i64 = bitcast %union.anon* %3338 to i64*
  %3339 = load i64, i64* %RAX.i63
  %3340 = load i64, i64* %RCX.i64
  %3341 = mul i64 %3340, 8
  %3342 = add i64 %3341, %3339
  %3343 = load i64, i64* %PC.i62
  %3344 = add i64 %3343, 4
  store i64 %3344, i64* %PC.i62
  %3345 = inttoptr i64 %3342 to i64*
  %3346 = load i64, i64* %3345
  store i64 %3346, i64* %RAX.i63, align 8
  store %struct.Memory* %loadMem_403648, %struct.Memory** %MEMORY
  %loadMem_40364c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3348 = getelementptr inbounds %struct.GPR, %struct.GPR* %3347, i32 0, i32 33
  %3349 = getelementptr inbounds %struct.Reg, %struct.Reg* %3348, i32 0, i32 0
  %PC.i59 = bitcast %union.anon* %3349 to i64*
  %3350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3351 = getelementptr inbounds %struct.GPR, %struct.GPR* %3350, i32 0, i32 5
  %3352 = getelementptr inbounds %struct.Reg, %struct.Reg* %3351, i32 0, i32 0
  %RCX.i60 = bitcast %union.anon* %3352 to i64*
  %3353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3354 = getelementptr inbounds %struct.GPR, %struct.GPR* %3353, i32 0, i32 15
  %3355 = getelementptr inbounds %struct.Reg, %struct.Reg* %3354, i32 0, i32 0
  %RBP.i61 = bitcast %union.anon* %3355 to i64*
  %3356 = load i64, i64* %RBP.i61
  %3357 = sub i64 %3356, 24
  %3358 = load i64, i64* %PC.i59
  %3359 = add i64 %3358, 4
  store i64 %3359, i64* %PC.i59
  %3360 = inttoptr i64 %3357 to i32*
  %3361 = load i32, i32* %3360
  %3362 = sext i32 %3361 to i64
  store i64 %3362, i64* %RCX.i60, align 8
  store %struct.Memory* %loadMem_40364c, %struct.Memory** %MEMORY
  %loadMem_403650 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3364 = getelementptr inbounds %struct.GPR, %struct.GPR* %3363, i32 0, i32 33
  %3365 = getelementptr inbounds %struct.Reg, %struct.Reg* %3364, i32 0, i32 0
  %PC.i56 = bitcast %union.anon* %3365 to i64*
  %3366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3367 = getelementptr inbounds %struct.GPR, %struct.GPR* %3366, i32 0, i32 1
  %3368 = getelementptr inbounds %struct.Reg, %struct.Reg* %3367, i32 0, i32 0
  %RAX.i57 = bitcast %union.anon* %3368 to i64*
  %3369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3370 = getelementptr inbounds %struct.GPR, %struct.GPR* %3369, i32 0, i32 5
  %3371 = getelementptr inbounds %struct.Reg, %struct.Reg* %3370, i32 0, i32 0
  %RCX.i58 = bitcast %union.anon* %3371 to i64*
  %3372 = load i64, i64* %RAX.i57
  %3373 = load i64, i64* %RCX.i58
  %3374 = add i64 %3373, %3372
  %3375 = load i64, i64* %PC.i56
  %3376 = add i64 %3375, 4
  store i64 %3376, i64* %PC.i56
  %3377 = inttoptr i64 %3374 to i8*
  store i8 45, i8* %3377
  store %struct.Memory* %loadMem_403650, %struct.Memory** %MEMORY
  %loadMem_403654 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3379 = getelementptr inbounds %struct.GPR, %struct.GPR* %3378, i32 0, i32 33
  %3380 = getelementptr inbounds %struct.Reg, %struct.Reg* %3379, i32 0, i32 0
  %PC.i55 = bitcast %union.anon* %3380 to i64*
  %3381 = load i64, i64* %PC.i55
  %3382 = add i64 %3381, 51
  %3383 = load i64, i64* %PC.i55
  %3384 = add i64 %3383, 5
  store i64 %3384, i64* %PC.i55
  %3385 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3382, i64* %3385, align 8
  store %struct.Memory* %loadMem_403654, %struct.Memory** %MEMORY
  br label %block_.L_403687

block_.L_403659:                                  ; preds = %block_403623
  %loadMem_403659 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3387 = getelementptr inbounds %struct.GPR, %struct.GPR* %3386, i32 0, i32 33
  %3388 = getelementptr inbounds %struct.Reg, %struct.Reg* %3387, i32 0, i32 0
  %PC.i52 = bitcast %union.anon* %3388 to i64*
  %3389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3390 = getelementptr inbounds %struct.GPR, %struct.GPR* %3389, i32 0, i32 1
  %3391 = getelementptr inbounds %struct.Reg, %struct.Reg* %3390, i32 0, i32 0
  %RAX.i53 = bitcast %union.anon* %3391 to i64*
  %3392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3393 = getelementptr inbounds %struct.GPR, %struct.GPR* %3392, i32 0, i32 15
  %3394 = getelementptr inbounds %struct.Reg, %struct.Reg* %3393, i32 0, i32 0
  %RBP.i54 = bitcast %union.anon* %3394 to i64*
  %3395 = load i64, i64* %RBP.i54
  %3396 = sub i64 %3395, 8
  %3397 = load i64, i64* %PC.i52
  %3398 = add i64 %3397, 4
  store i64 %3398, i64* %PC.i52
  %3399 = inttoptr i64 %3396 to i64*
  %3400 = load i64, i64* %3399
  store i64 %3400, i64* %RAX.i53, align 8
  store %struct.Memory* %loadMem_403659, %struct.Memory** %MEMORY
  %loadMem_40365d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3402 = getelementptr inbounds %struct.GPR, %struct.GPR* %3401, i32 0, i32 33
  %3403 = getelementptr inbounds %struct.Reg, %struct.Reg* %3402, i32 0, i32 0
  %PC.i49 = bitcast %union.anon* %3403 to i64*
  %3404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3405 = getelementptr inbounds %struct.GPR, %struct.GPR* %3404, i32 0, i32 5
  %3406 = getelementptr inbounds %struct.Reg, %struct.Reg* %3405, i32 0, i32 0
  %RCX.i50 = bitcast %union.anon* %3406 to i64*
  %3407 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3408 = getelementptr inbounds %struct.GPR, %struct.GPR* %3407, i32 0, i32 15
  %3409 = getelementptr inbounds %struct.Reg, %struct.Reg* %3408, i32 0, i32 0
  %RBP.i51 = bitcast %union.anon* %3409 to i64*
  %3410 = load i64, i64* %RBP.i51
  %3411 = sub i64 %3410, 28
  %3412 = load i64, i64* %PC.i49
  %3413 = add i64 %3412, 4
  store i64 %3413, i64* %PC.i49
  %3414 = inttoptr i64 %3411 to i32*
  %3415 = load i32, i32* %3414
  %3416 = sext i32 %3415 to i64
  store i64 %3416, i64* %RCX.i50, align 8
  store %struct.Memory* %loadMem_40365d, %struct.Memory** %MEMORY
  %loadMem_403661 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3418 = getelementptr inbounds %struct.GPR, %struct.GPR* %3417, i32 0, i32 33
  %3419 = getelementptr inbounds %struct.Reg, %struct.Reg* %3418, i32 0, i32 0
  %PC.i46 = bitcast %union.anon* %3419 to i64*
  %3420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3421 = getelementptr inbounds %struct.GPR, %struct.GPR* %3420, i32 0, i32 1
  %3422 = getelementptr inbounds %struct.Reg, %struct.Reg* %3421, i32 0, i32 0
  %RAX.i47 = bitcast %union.anon* %3422 to i64*
  %3423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3424 = getelementptr inbounds %struct.GPR, %struct.GPR* %3423, i32 0, i32 5
  %3425 = getelementptr inbounds %struct.Reg, %struct.Reg* %3424, i32 0, i32 0
  %RCX.i48 = bitcast %union.anon* %3425 to i64*
  %3426 = load i64, i64* %RAX.i47
  %3427 = load i64, i64* %RCX.i48
  %3428 = mul i64 %3427, 8
  %3429 = add i64 %3428, %3426
  %3430 = load i64, i64* %PC.i46
  %3431 = add i64 %3430, 4
  store i64 %3431, i64* %PC.i46
  %3432 = inttoptr i64 %3429 to i64*
  %3433 = load i64, i64* %3432
  store i64 %3433, i64* %RAX.i47, align 8
  store %struct.Memory* %loadMem_403661, %struct.Memory** %MEMORY
  %loadMem_403665 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3435 = getelementptr inbounds %struct.GPR, %struct.GPR* %3434, i32 0, i32 33
  %3436 = getelementptr inbounds %struct.Reg, %struct.Reg* %3435, i32 0, i32 0
  %PC.i43 = bitcast %union.anon* %3436 to i64*
  %3437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3438 = getelementptr inbounds %struct.GPR, %struct.GPR* %3437, i32 0, i32 5
  %3439 = getelementptr inbounds %struct.Reg, %struct.Reg* %3438, i32 0, i32 0
  %RCX.i44 = bitcast %union.anon* %3439 to i64*
  %3440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3441 = getelementptr inbounds %struct.GPR, %struct.GPR* %3440, i32 0, i32 15
  %3442 = getelementptr inbounds %struct.Reg, %struct.Reg* %3441, i32 0, i32 0
  %RBP.i45 = bitcast %union.anon* %3442 to i64*
  %3443 = load i64, i64* %RBP.i45
  %3444 = sub i64 %3443, 24
  %3445 = load i64, i64* %PC.i43
  %3446 = add i64 %3445, 4
  store i64 %3446, i64* %PC.i43
  %3447 = inttoptr i64 %3444 to i32*
  %3448 = load i32, i32* %3447
  %3449 = sext i32 %3448 to i64
  store i64 %3449, i64* %RCX.i44, align 8
  store %struct.Memory* %loadMem_403665, %struct.Memory** %MEMORY
  %loadMem_403669 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3451 = getelementptr inbounds %struct.GPR, %struct.GPR* %3450, i32 0, i32 33
  %3452 = getelementptr inbounds %struct.Reg, %struct.Reg* %3451, i32 0, i32 0
  %PC.i40 = bitcast %union.anon* %3452 to i64*
  %3453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3454 = getelementptr inbounds %struct.GPR, %struct.GPR* %3453, i32 0, i32 1
  %3455 = getelementptr inbounds %struct.Reg, %struct.Reg* %3454, i32 0, i32 0
  %RAX.i41 = bitcast %union.anon* %3455 to i64*
  %3456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3457 = getelementptr inbounds %struct.GPR, %struct.GPR* %3456, i32 0, i32 5
  %3458 = getelementptr inbounds %struct.Reg, %struct.Reg* %3457, i32 0, i32 0
  %RCX.i42 = bitcast %union.anon* %3458 to i64*
  %3459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3460 = getelementptr inbounds %struct.GPR, %struct.GPR* %3459, i32 0, i32 11
  %3461 = getelementptr inbounds %struct.Reg, %struct.Reg* %3460, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %3461 to i64*
  %3462 = load i64, i64* %RAX.i41
  %3463 = load i64, i64* %RCX.i42
  %3464 = add i64 %3463, %3462
  %3465 = load i64, i64* %PC.i40
  %3466 = add i64 %3465, 4
  store i64 %3466, i64* %PC.i40
  %3467 = inttoptr i64 %3464 to i8*
  %3468 = load i8, i8* %3467
  %3469 = sext i8 %3468 to i64
  %3470 = and i64 %3469, 4294967295
  store i64 %3470, i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_403669, %struct.Memory** %MEMORY
  %loadMem1_40366d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3472 = getelementptr inbounds %struct.GPR, %struct.GPR* %3471, i32 0, i32 33
  %3473 = getelementptr inbounds %struct.Reg, %struct.Reg* %3472, i32 0, i32 0
  %PC.i39 = bitcast %union.anon* %3473 to i64*
  %3474 = load i64, i64* %PC.i39
  %3475 = add i64 %3474, -8829
  %3476 = load i64, i64* %PC.i39
  %3477 = add i64 %3476, 5
  %3478 = load i64, i64* %PC.i39
  %3479 = add i64 %3478, 5
  store i64 %3479, i64* %PC.i39
  %3480 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3481 = load i64, i64* %3480, align 8
  %3482 = add i64 %3481, -8
  %3483 = inttoptr i64 %3482 to i64*
  store i64 %3477, i64* %3483
  store i64 %3482, i64* %3480, align 8
  %3484 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3475, i64* %3484, align 8
  store %struct.Memory* %loadMem1_40366d, %struct.Memory** %MEMORY
  %loadMem2_40366d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40366d = load i64, i64* %3
  %call2_40366d = call %struct.Memory* @sub_4013f0.toupper_plt(%struct.State* %0, i64 %loadPC_40366d, %struct.Memory* %loadMem2_40366d)
  store %struct.Memory* %call2_40366d, %struct.Memory** %MEMORY
  %loadMem_403672 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3486 = getelementptr inbounds %struct.GPR, %struct.GPR* %3485, i32 0, i32 33
  %3487 = getelementptr inbounds %struct.Reg, %struct.Reg* %3486, i32 0, i32 0
  %PC.i37 = bitcast %union.anon* %3487 to i64*
  %3488 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3489 = getelementptr inbounds %struct.GPR, %struct.GPR* %3488, i32 0, i32 1
  %3490 = getelementptr inbounds %struct.Reg, %struct.Reg* %3489, i32 0, i32 0
  %3491 = bitcast %union.anon* %3490 to %struct.anon.2*
  %AL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3491, i32 0, i32 0
  %3492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3493 = getelementptr inbounds %struct.GPR, %struct.GPR* %3492, i32 0, i32 7
  %3494 = getelementptr inbounds %struct.Reg, %struct.Reg* %3493, i32 0, i32 0
  %3495 = bitcast %union.anon* %3494 to %struct.anon.2*
  %DL.i38 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3495, i32 0, i32 0
  %3496 = load i8, i8* %AL.i
  %3497 = zext i8 %3496 to i64
  %3498 = load i64, i64* %PC.i37
  %3499 = add i64 %3498, 2
  store i64 %3499, i64* %PC.i37
  store i8 %3496, i8* %DL.i38, align 1
  store %struct.Memory* %loadMem_403672, %struct.Memory** %MEMORY
  %loadMem_403674 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3500 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3501 = getelementptr inbounds %struct.GPR, %struct.GPR* %3500, i32 0, i32 33
  %3502 = getelementptr inbounds %struct.Reg, %struct.Reg* %3501, i32 0, i32 0
  %PC.i34 = bitcast %union.anon* %3502 to i64*
  %3503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3504 = getelementptr inbounds %struct.GPR, %struct.GPR* %3503, i32 0, i32 5
  %3505 = getelementptr inbounds %struct.Reg, %struct.Reg* %3504, i32 0, i32 0
  %RCX.i35 = bitcast %union.anon* %3505 to i64*
  %3506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3507 = getelementptr inbounds %struct.GPR, %struct.GPR* %3506, i32 0, i32 15
  %3508 = getelementptr inbounds %struct.Reg, %struct.Reg* %3507, i32 0, i32 0
  %RBP.i36 = bitcast %union.anon* %3508 to i64*
  %3509 = load i64, i64* %RBP.i36
  %3510 = sub i64 %3509, 8
  %3511 = load i64, i64* %PC.i34
  %3512 = add i64 %3511, 4
  store i64 %3512, i64* %PC.i34
  %3513 = inttoptr i64 %3510 to i64*
  %3514 = load i64, i64* %3513
  store i64 %3514, i64* %RCX.i35, align 8
  store %struct.Memory* %loadMem_403674, %struct.Memory** %MEMORY
  %loadMem_403678 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3516 = getelementptr inbounds %struct.GPR, %struct.GPR* %3515, i32 0, i32 33
  %3517 = getelementptr inbounds %struct.Reg, %struct.Reg* %3516, i32 0, i32 0
  %PC.i31 = bitcast %union.anon* %3517 to i64*
  %3518 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3519 = getelementptr inbounds %struct.GPR, %struct.GPR* %3518, i32 0, i32 9
  %3520 = getelementptr inbounds %struct.Reg, %struct.Reg* %3519, i32 0, i32 0
  %RSI.i32 = bitcast %union.anon* %3520 to i64*
  %3521 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3522 = getelementptr inbounds %struct.GPR, %struct.GPR* %3521, i32 0, i32 15
  %3523 = getelementptr inbounds %struct.Reg, %struct.Reg* %3522, i32 0, i32 0
  %RBP.i33 = bitcast %union.anon* %3523 to i64*
  %3524 = load i64, i64* %RBP.i33
  %3525 = sub i64 %3524, 28
  %3526 = load i64, i64* %PC.i31
  %3527 = add i64 %3526, 4
  store i64 %3527, i64* %PC.i31
  %3528 = inttoptr i64 %3525 to i32*
  %3529 = load i32, i32* %3528
  %3530 = sext i32 %3529 to i64
  store i64 %3530, i64* %RSI.i32, align 8
  store %struct.Memory* %loadMem_403678, %struct.Memory** %MEMORY
  %loadMem_40367c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3532 = getelementptr inbounds %struct.GPR, %struct.GPR* %3531, i32 0, i32 33
  %3533 = getelementptr inbounds %struct.Reg, %struct.Reg* %3532, i32 0, i32 0
  %PC.i28 = bitcast %union.anon* %3533 to i64*
  %3534 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3535 = getelementptr inbounds %struct.GPR, %struct.GPR* %3534, i32 0, i32 5
  %3536 = getelementptr inbounds %struct.Reg, %struct.Reg* %3535, i32 0, i32 0
  %RCX.i29 = bitcast %union.anon* %3536 to i64*
  %3537 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3538 = getelementptr inbounds %struct.GPR, %struct.GPR* %3537, i32 0, i32 9
  %3539 = getelementptr inbounds %struct.Reg, %struct.Reg* %3538, i32 0, i32 0
  %RSI.i30 = bitcast %union.anon* %3539 to i64*
  %3540 = load i64, i64* %RCX.i29
  %3541 = load i64, i64* %RSI.i30
  %3542 = mul i64 %3541, 8
  %3543 = add i64 %3542, %3540
  %3544 = load i64, i64* %PC.i28
  %3545 = add i64 %3544, 4
  store i64 %3545, i64* %PC.i28
  %3546 = inttoptr i64 %3543 to i64*
  %3547 = load i64, i64* %3546
  store i64 %3547, i64* %RCX.i29, align 8
  store %struct.Memory* %loadMem_40367c, %struct.Memory** %MEMORY
  %loadMem_403680 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3549 = getelementptr inbounds %struct.GPR, %struct.GPR* %3548, i32 0, i32 33
  %3550 = getelementptr inbounds %struct.Reg, %struct.Reg* %3549, i32 0, i32 0
  %PC.i25 = bitcast %union.anon* %3550 to i64*
  %3551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3552 = getelementptr inbounds %struct.GPR, %struct.GPR* %3551, i32 0, i32 9
  %3553 = getelementptr inbounds %struct.Reg, %struct.Reg* %3552, i32 0, i32 0
  %RSI.i26 = bitcast %union.anon* %3553 to i64*
  %3554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3555 = getelementptr inbounds %struct.GPR, %struct.GPR* %3554, i32 0, i32 15
  %3556 = getelementptr inbounds %struct.Reg, %struct.Reg* %3555, i32 0, i32 0
  %RBP.i27 = bitcast %union.anon* %3556 to i64*
  %3557 = load i64, i64* %RBP.i27
  %3558 = sub i64 %3557, 24
  %3559 = load i64, i64* %PC.i25
  %3560 = add i64 %3559, 4
  store i64 %3560, i64* %PC.i25
  %3561 = inttoptr i64 %3558 to i32*
  %3562 = load i32, i32* %3561
  %3563 = sext i32 %3562 to i64
  store i64 %3563, i64* %RSI.i26, align 8
  store %struct.Memory* %loadMem_403680, %struct.Memory** %MEMORY
  %loadMem_403684 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3565 = getelementptr inbounds %struct.GPR, %struct.GPR* %3564, i32 0, i32 33
  %3566 = getelementptr inbounds %struct.Reg, %struct.Reg* %3565, i32 0, i32 0
  %PC.i24 = bitcast %union.anon* %3566 to i64*
  %3567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3568 = getelementptr inbounds %struct.GPR, %struct.GPR* %3567, i32 0, i32 7
  %3569 = getelementptr inbounds %struct.Reg, %struct.Reg* %3568, i32 0, i32 0
  %3570 = bitcast %union.anon* %3569 to %struct.anon.2*
  %DL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3570, i32 0, i32 0
  %3571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3572 = getelementptr inbounds %struct.GPR, %struct.GPR* %3571, i32 0, i32 5
  %3573 = getelementptr inbounds %struct.Reg, %struct.Reg* %3572, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %3573 to i64*
  %3574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3575 = getelementptr inbounds %struct.GPR, %struct.GPR* %3574, i32 0, i32 9
  %3576 = getelementptr inbounds %struct.Reg, %struct.Reg* %3575, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %3576 to i64*
  %3577 = load i64, i64* %RCX.i
  %3578 = load i64, i64* %RSI.i
  %3579 = add i64 %3578, %3577
  %3580 = load i8, i8* %DL.i
  %3581 = zext i8 %3580 to i64
  %3582 = load i64, i64* %PC.i24
  %3583 = add i64 %3582, 3
  store i64 %3583, i64* %PC.i24
  %3584 = inttoptr i64 %3579 to i8*
  store i8 %3580, i8* %3584
  store %struct.Memory* %loadMem_403684, %struct.Memory** %MEMORY
  br label %block_.L_403687

block_.L_403687:                                  ; preds = %block_.L_403659, %block_.L_403640
  %loadMem_403687 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3586 = getelementptr inbounds %struct.GPR, %struct.GPR* %3585, i32 0, i32 33
  %3587 = getelementptr inbounds %struct.Reg, %struct.Reg* %3586, i32 0, i32 0
  %PC.i23 = bitcast %union.anon* %3587 to i64*
  %3588 = load i64, i64* %PC.i23
  %3589 = add i64 %3588, 5
  %3590 = load i64, i64* %PC.i23
  %3591 = add i64 %3590, 5
  store i64 %3591, i64* %PC.i23
  %3592 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3589, i64* %3592, align 8
  store %struct.Memory* %loadMem_403687, %struct.Memory** %MEMORY
  br label %block_.L_40368c

block_.L_40368c:                                  ; preds = %block_.L_403687
  %loadMem_40368c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3594 = getelementptr inbounds %struct.GPR, %struct.GPR* %3593, i32 0, i32 33
  %3595 = getelementptr inbounds %struct.Reg, %struct.Reg* %3594, i32 0, i32 0
  %PC.i20 = bitcast %union.anon* %3595 to i64*
  %3596 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3597 = getelementptr inbounds %struct.GPR, %struct.GPR* %3596, i32 0, i32 1
  %3598 = getelementptr inbounds %struct.Reg, %struct.Reg* %3597, i32 0, i32 0
  %RAX.i21 = bitcast %union.anon* %3598 to i64*
  %3599 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3600 = getelementptr inbounds %struct.GPR, %struct.GPR* %3599, i32 0, i32 15
  %3601 = getelementptr inbounds %struct.Reg, %struct.Reg* %3600, i32 0, i32 0
  %RBP.i22 = bitcast %union.anon* %3601 to i64*
  %3602 = load i64, i64* %RBP.i22
  %3603 = sub i64 %3602, 28
  %3604 = load i64, i64* %PC.i20
  %3605 = add i64 %3604, 3
  store i64 %3605, i64* %PC.i20
  %3606 = inttoptr i64 %3603 to i32*
  %3607 = load i32, i32* %3606
  %3608 = zext i32 %3607 to i64
  store i64 %3608, i64* %RAX.i21, align 8
  store %struct.Memory* %loadMem_40368c, %struct.Memory** %MEMORY
  %loadMem_40368f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3610 = getelementptr inbounds %struct.GPR, %struct.GPR* %3609, i32 0, i32 33
  %3611 = getelementptr inbounds %struct.Reg, %struct.Reg* %3610, i32 0, i32 0
  %PC.i18 = bitcast %union.anon* %3611 to i64*
  %3612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3613 = getelementptr inbounds %struct.GPR, %struct.GPR* %3612, i32 0, i32 1
  %3614 = getelementptr inbounds %struct.Reg, %struct.Reg* %3613, i32 0, i32 0
  %RAX.i19 = bitcast %union.anon* %3614 to i64*
  %3615 = load i64, i64* %RAX.i19
  %3616 = load i64, i64* %PC.i18
  %3617 = add i64 %3616, 3
  store i64 %3617, i64* %PC.i18
  %3618 = trunc i64 %3615 to i32
  %3619 = add i32 1, %3618
  %3620 = zext i32 %3619 to i64
  store i64 %3620, i64* %RAX.i19, align 8
  %3621 = icmp ult i32 %3619, %3618
  %3622 = icmp ult i32 %3619, 1
  %3623 = or i1 %3621, %3622
  %3624 = zext i1 %3623 to i8
  %3625 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3624, i8* %3625, align 1
  %3626 = and i32 %3619, 255
  %3627 = call i32 @llvm.ctpop.i32(i32 %3626)
  %3628 = trunc i32 %3627 to i8
  %3629 = and i8 %3628, 1
  %3630 = xor i8 %3629, 1
  %3631 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3630, i8* %3631, align 1
  %3632 = xor i64 1, %3615
  %3633 = trunc i64 %3632 to i32
  %3634 = xor i32 %3633, %3619
  %3635 = lshr i32 %3634, 4
  %3636 = trunc i32 %3635 to i8
  %3637 = and i8 %3636, 1
  %3638 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3637, i8* %3638, align 1
  %3639 = icmp eq i32 %3619, 0
  %3640 = zext i1 %3639 to i8
  %3641 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3640, i8* %3641, align 1
  %3642 = lshr i32 %3619, 31
  %3643 = trunc i32 %3642 to i8
  %3644 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3643, i8* %3644, align 1
  %3645 = lshr i32 %3618, 31
  %3646 = xor i32 %3642, %3645
  %3647 = add i32 %3646, %3642
  %3648 = icmp eq i32 %3647, 2
  %3649 = zext i1 %3648 to i8
  %3650 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3649, i8* %3650, align 1
  store %struct.Memory* %loadMem_40368f, %struct.Memory** %MEMORY
  %loadMem_403692 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3652 = getelementptr inbounds %struct.GPR, %struct.GPR* %3651, i32 0, i32 33
  %3653 = getelementptr inbounds %struct.Reg, %struct.Reg* %3652, i32 0, i32 0
  %PC.i15 = bitcast %union.anon* %3653 to i64*
  %3654 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3655 = getelementptr inbounds %struct.GPR, %struct.GPR* %3654, i32 0, i32 1
  %3656 = getelementptr inbounds %struct.Reg, %struct.Reg* %3655, i32 0, i32 0
  %EAX.i16 = bitcast %union.anon* %3656 to i32*
  %3657 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3658 = getelementptr inbounds %struct.GPR, %struct.GPR* %3657, i32 0, i32 15
  %3659 = getelementptr inbounds %struct.Reg, %struct.Reg* %3658, i32 0, i32 0
  %RBP.i17 = bitcast %union.anon* %3659 to i64*
  %3660 = load i64, i64* %RBP.i17
  %3661 = sub i64 %3660, 28
  %3662 = load i32, i32* %EAX.i16
  %3663 = zext i32 %3662 to i64
  %3664 = load i64, i64* %PC.i15
  %3665 = add i64 %3664, 3
  store i64 %3665, i64* %PC.i15
  %3666 = inttoptr i64 %3661 to i32*
  store i32 %3662, i32* %3666
  store %struct.Memory* %loadMem_403692, %struct.Memory** %MEMORY
  %loadMem_403695 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3668 = getelementptr inbounds %struct.GPR, %struct.GPR* %3667, i32 0, i32 33
  %3669 = getelementptr inbounds %struct.Reg, %struct.Reg* %3668, i32 0, i32 0
  %PC.i14 = bitcast %union.anon* %3669 to i64*
  %3670 = load i64, i64* %PC.i14
  %3671 = add i64 %3670, -242
  %3672 = load i64, i64* %PC.i14
  %3673 = add i64 %3672, 5
  store i64 %3673, i64* %PC.i14
  %3674 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3671, i64* %3674, align 8
  store %struct.Memory* %loadMem_403695, %struct.Memory** %MEMORY
  br label %block_.L_4035a3

block_.L_40369a:                                  ; preds = %block_.L_4035a3
  %loadMem_40369a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3676 = getelementptr inbounds %struct.GPR, %struct.GPR* %3675, i32 0, i32 33
  %3677 = getelementptr inbounds %struct.Reg, %struct.Reg* %3676, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %3677 to i64*
  %3678 = load i64, i64* %PC.i13
  %3679 = add i64 %3678, 5
  %3680 = load i64, i64* %PC.i13
  %3681 = add i64 %3680, 5
  store i64 %3681, i64* %PC.i13
  %3682 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3679, i64* %3682, align 8
  store %struct.Memory* %loadMem_40369a, %struct.Memory** %MEMORY
  br label %block_.L_40369f

block_.L_40369f:                                  ; preds = %block_.L_40369a, %block_.L_403597
  %loadMem_40369f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3684 = getelementptr inbounds %struct.GPR, %struct.GPR* %3683, i32 0, i32 33
  %3685 = getelementptr inbounds %struct.Reg, %struct.Reg* %3684, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %3685 to i64*
  %3686 = load i64, i64* %PC.i12
  %3687 = add i64 %3686, 5
  %3688 = load i64, i64* %PC.i12
  %3689 = add i64 %3688, 5
  store i64 %3689, i64* %PC.i12
  %3690 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3687, i64* %3690, align 8
  store %struct.Memory* %loadMem_40369f, %struct.Memory** %MEMORY
  br label %block_.L_4036a4

block_.L_4036a4:                                  ; preds = %block_.L_40369f
  %loadMem_4036a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3692 = getelementptr inbounds %struct.GPR, %struct.GPR* %3691, i32 0, i32 33
  %3693 = getelementptr inbounds %struct.Reg, %struct.Reg* %3692, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %3693 to i64*
  %3694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3695 = getelementptr inbounds %struct.GPR, %struct.GPR* %3694, i32 0, i32 1
  %3696 = getelementptr inbounds %struct.Reg, %struct.Reg* %3695, i32 0, i32 0
  %RAX.i10 = bitcast %union.anon* %3696 to i64*
  %3697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3698 = getelementptr inbounds %struct.GPR, %struct.GPR* %3697, i32 0, i32 15
  %3699 = getelementptr inbounds %struct.Reg, %struct.Reg* %3698, i32 0, i32 0
  %RBP.i11 = bitcast %union.anon* %3699 to i64*
  %3700 = load i64, i64* %RBP.i11
  %3701 = sub i64 %3700, 24
  %3702 = load i64, i64* %PC.i9
  %3703 = add i64 %3702, 3
  store i64 %3703, i64* %PC.i9
  %3704 = inttoptr i64 %3701 to i32*
  %3705 = load i32, i32* %3704
  %3706 = zext i32 %3705 to i64
  store i64 %3706, i64* %RAX.i10, align 8
  store %struct.Memory* %loadMem_4036a4, %struct.Memory** %MEMORY
  %loadMem_4036a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3707 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3708 = getelementptr inbounds %struct.GPR, %struct.GPR* %3707, i32 0, i32 33
  %3709 = getelementptr inbounds %struct.Reg, %struct.Reg* %3708, i32 0, i32 0
  %PC.i8 = bitcast %union.anon* %3709 to i64*
  %3710 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3711 = getelementptr inbounds %struct.GPR, %struct.GPR* %3710, i32 0, i32 1
  %3712 = getelementptr inbounds %struct.Reg, %struct.Reg* %3711, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %3712 to i64*
  %3713 = load i64, i64* %RAX.i
  %3714 = load i64, i64* %PC.i8
  %3715 = add i64 %3714, 3
  store i64 %3715, i64* %PC.i8
  %3716 = trunc i64 %3713 to i32
  %3717 = add i32 1, %3716
  %3718 = zext i32 %3717 to i64
  store i64 %3718, i64* %RAX.i, align 8
  %3719 = icmp ult i32 %3717, %3716
  %3720 = icmp ult i32 %3717, 1
  %3721 = or i1 %3719, %3720
  %3722 = zext i1 %3721 to i8
  %3723 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3722, i8* %3723, align 1
  %3724 = and i32 %3717, 255
  %3725 = call i32 @llvm.ctpop.i32(i32 %3724)
  %3726 = trunc i32 %3725 to i8
  %3727 = and i8 %3726, 1
  %3728 = xor i8 %3727, 1
  %3729 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3728, i8* %3729, align 1
  %3730 = xor i64 1, %3713
  %3731 = trunc i64 %3730 to i32
  %3732 = xor i32 %3731, %3717
  %3733 = lshr i32 %3732, 4
  %3734 = trunc i32 %3733 to i8
  %3735 = and i8 %3734, 1
  %3736 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3735, i8* %3736, align 1
  %3737 = icmp eq i32 %3717, 0
  %3738 = zext i1 %3737 to i8
  %3739 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3738, i8* %3739, align 1
  %3740 = lshr i32 %3717, 31
  %3741 = trunc i32 %3740 to i8
  %3742 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3741, i8* %3742, align 1
  %3743 = lshr i32 %3716, 31
  %3744 = xor i32 %3740, %3743
  %3745 = add i32 %3744, %3740
  %3746 = icmp eq i32 %3745, 2
  %3747 = zext i1 %3746 to i8
  %3748 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3747, i8* %3748, align 1
  store %struct.Memory* %loadMem_4036a7, %struct.Memory** %MEMORY
  %loadMem_4036aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %3749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3750 = getelementptr inbounds %struct.GPR, %struct.GPR* %3749, i32 0, i32 33
  %3751 = getelementptr inbounds %struct.Reg, %struct.Reg* %3750, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %3751 to i64*
  %3752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3753 = getelementptr inbounds %struct.GPR, %struct.GPR* %3752, i32 0, i32 1
  %3754 = getelementptr inbounds %struct.Reg, %struct.Reg* %3753, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %3754 to i32*
  %3755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3756 = getelementptr inbounds %struct.GPR, %struct.GPR* %3755, i32 0, i32 15
  %3757 = getelementptr inbounds %struct.Reg, %struct.Reg* %3756, i32 0, i32 0
  %RBP.i7 = bitcast %union.anon* %3757 to i64*
  %3758 = load i64, i64* %RBP.i7
  %3759 = sub i64 %3758, 24
  %3760 = load i32, i32* %EAX.i
  %3761 = zext i32 %3760 to i64
  %3762 = load i64, i64* %PC.i6
  %3763 = add i64 %3762, 3
  store i64 %3763, i64* %PC.i6
  %3764 = inttoptr i64 %3759 to i32*
  store i32 %3760, i32* %3764
  store %struct.Memory* %loadMem_4036aa, %struct.Memory** %MEMORY
  %loadMem_4036ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %3765 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3766 = getelementptr inbounds %struct.GPR, %struct.GPR* %3765, i32 0, i32 33
  %3767 = getelementptr inbounds %struct.Reg, %struct.Reg* %3766, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %3767 to i64*
  %3768 = load i64, i64* %PC.i5
  %3769 = add i64 %3768, -767
  %3770 = load i64, i64* %PC.i5
  %3771 = add i64 %3770, 5
  store i64 %3771, i64* %PC.i5
  %3772 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3769, i64* %3772, align 8
  store %struct.Memory* %loadMem_4036ad, %struct.Memory** %MEMORY
  br label %block_.L_4033ae

block_.L_4036b2:                                  ; preds = %block_.L_4033ae
  %loadMem_4036b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3774 = getelementptr inbounds %struct.GPR, %struct.GPR* %3773, i32 0, i32 33
  %3775 = getelementptr inbounds %struct.Reg, %struct.Reg* %3774, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %3775 to i64*
  %3776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3777 = getelementptr inbounds %struct.GPR, %struct.GPR* %3776, i32 0, i32 13
  %3778 = getelementptr inbounds %struct.Reg, %struct.Reg* %3777, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %3778 to i64*
  %3779 = load i64, i64* %RSP.i
  %3780 = load i64, i64* %PC.i4
  %3781 = add i64 %3780, 4
  store i64 %3781, i64* %PC.i4
  %3782 = add i64 32, %3779
  store i64 %3782, i64* %RSP.i, align 8
  %3783 = icmp ult i64 %3782, %3779
  %3784 = icmp ult i64 %3782, 32
  %3785 = or i1 %3783, %3784
  %3786 = zext i1 %3785 to i8
  %3787 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3786, i8* %3787, align 1
  %3788 = trunc i64 %3782 to i32
  %3789 = and i32 %3788, 255
  %3790 = call i32 @llvm.ctpop.i32(i32 %3789)
  %3791 = trunc i32 %3790 to i8
  %3792 = and i8 %3791, 1
  %3793 = xor i8 %3792, 1
  %3794 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3793, i8* %3794, align 1
  %3795 = xor i64 32, %3779
  %3796 = xor i64 %3795, %3782
  %3797 = lshr i64 %3796, 4
  %3798 = trunc i64 %3797 to i8
  %3799 = and i8 %3798, 1
  %3800 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3799, i8* %3800, align 1
  %3801 = icmp eq i64 %3782, 0
  %3802 = zext i1 %3801 to i8
  %3803 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3802, i8* %3803, align 1
  %3804 = lshr i64 %3782, 63
  %3805 = trunc i64 %3804 to i8
  %3806 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3805, i8* %3806, align 1
  %3807 = lshr i64 %3779, 63
  %3808 = xor i64 %3804, %3807
  %3809 = add i64 %3808, %3804
  %3810 = icmp eq i64 %3809, 2
  %3811 = zext i1 %3810 to i8
  %3812 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3811, i8* %3812, align 1
  store %struct.Memory* %loadMem_4036b2, %struct.Memory** %MEMORY
  %loadMem_4036b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3813 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3814 = getelementptr inbounds %struct.GPR, %struct.GPR* %3813, i32 0, i32 33
  %3815 = getelementptr inbounds %struct.Reg, %struct.Reg* %3814, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %3815 to i64*
  %3816 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3817 = getelementptr inbounds %struct.GPR, %struct.GPR* %3816, i32 0, i32 15
  %3818 = getelementptr inbounds %struct.Reg, %struct.Reg* %3817, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %3818 to i64*
  %3819 = load i64, i64* %PC.i2
  %3820 = add i64 %3819, 1
  store i64 %3820, i64* %PC.i2
  %3821 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3822 = load i64, i64* %3821, align 8
  %3823 = add i64 %3822, 8
  %3824 = inttoptr i64 %3822 to i64*
  %3825 = load i64, i64* %3824
  store i64 %3825, i64* %RBP.i3, align 8
  store i64 %3823, i64* %3821, align 8
  store %struct.Memory* %loadMem_4036b6, %struct.Memory** %MEMORY
  %loadMem_4036b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3827 = getelementptr inbounds %struct.GPR, %struct.GPR* %3826, i32 0, i32 33
  %3828 = getelementptr inbounds %struct.Reg, %struct.Reg* %3827, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %3828 to i64*
  %3829 = load i64, i64* %PC.i1
  %3830 = add i64 %3829, 1
  store i64 %3830, i64* %PC.i1
  %3831 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3832 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3833 = load i64, i64* %3832, align 8
  %3834 = inttoptr i64 %3833 to i64*
  %3835 = load i64, i64* %3834
  store i64 %3835, i64* %3831, align 8
  %3836 = add i64 %3833, 8
  store i64 %3836, i64* %3832, align 8
  store %struct.Memory* %loadMem_4036b7, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_4036b7
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

define %struct.Memory* @routine_movl__edx__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 16
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm0__MINUS0x14__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 20
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

define %struct.Memory* @routine_cmpl_MINUS0x10__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i64 %14, 16
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

define %struct.Memory* @routine_jge_.L_4036b2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jge_.L_403481(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_403465(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_40346e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_403473(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_4033c8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cvtsi2ssl_MINUS0x20__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 32
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

define %struct.Memory* @routine_cvtsi2ssl_MINUS0xc__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 12
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

define %struct.Memory* @routine_divss__xmm1___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_ucomiss_MINUS0x14__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = bitcast %union.vec128_t* %XMM0 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 20
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = bitcast i8* %11 to <2 x float>*
  %17 = load <2 x float>, <2 x float>* %16, align 1
  %18 = extractelement <2 x float> %17, i32 0
  %19 = inttoptr i64 %13 to float*
  %20 = load float, float* %19
  %21 = fcmp uno float %18, %20
  br i1 %21, label %22, label %34

; <label>:22:                                     ; preds = %block_400488
  %23 = fadd float %18, %20
  %24 = bitcast float %23 to i32
  %25 = and i32 %24, 2143289344
  %26 = icmp eq i32 %25, 2139095040
  %27 = and i32 %24, 4194303
  %28 = icmp ne i32 %27, 0
  %29 = and i1 %26, %28
  br i1 %29, label %30, label %40

; <label>:30:                                     ; preds = %22
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %32, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_.exit

; <label>:34:                                     ; preds = %block_400488
  %35 = fcmp ogt float %18, %20
  br i1 %35, label %40, label %36

; <label>:36:                                     ; preds = %34
  %37 = fcmp olt float %18, %20
  br i1 %37, label %40, label %38

; <label>:38:                                     ; preds = %36
  %39 = fcmp oeq float %18, %20
  br i1 %39, label %40, label %47

; <label>:40:                                     ; preds = %38, %36, %34, %22
  %41 = phi i8 [ 0, %34 ], [ 0, %36 ], [ 1, %38 ], [ 1, %22 ]
  %42 = phi i8 [ 0, %34 ], [ 0, %36 ], [ 0, %38 ], [ 1, %22 ]
  %43 = phi i8 [ 0, %34 ], [ 1, %36 ], [ 0, %38 ], [ 1, %22 ]
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %41, i8* %44, align 1
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %42, i8* %45, align 1
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %43, i8* %46, align 1
  br label %47

; <label>:47:                                     ; preds = %40, %38
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %48, align 1
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %49, align 1
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %50, align 1
  br label %_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_.exit: ; preds = %30, %47
  %51 = phi %struct.Memory* [ %33, %30 ], [ %2, %47 ]
  ret %struct.Memory* %51
}

define %struct.Memory* @routine_jbe_.L_40359c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jge_.L_403597(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_40353d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_403556(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movb__0x2e____rax__rcx_1_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i8 46, i8* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_403584(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movsbl___rax__rcx_1____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %17 = add i64 %16, %15
  %18 = load i64, i64* %PC
  %19 = add i64 %18, 4
  store i64 %19, i64* %PC
  %20 = inttoptr i64 %17 to i8*
  %21 = load i8, i8* %20
  %22 = sext i8 %21 to i64
  %23 = and i64 %22, 4294967295
  store i64 %23, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.tolower_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movb__al___dl(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i8, i8* %AL
  %15 = zext i8 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 2
  store i64 %17, i64* %PC
  store i8 %14, i8* %DL, align 1
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

define %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 28
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq___rcx__rsi_8____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movslq_MINUS0x18__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__dl____rcx__rsi_1_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 5
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RCX = bitcast %union.anon* %12 to i64*
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %14 = getelementptr inbounds %struct.GPR, %struct.GPR* %13, i32 0, i32 9
  %15 = getelementptr inbounds %struct.Reg, %struct.Reg* %14, i32 0, i32 0
  %RSI = bitcast %union.anon* %15 to i64*
  %16 = load i64, i64* %RCX
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

define %struct.Memory* @routine_jmpq_.L_403589(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_4034a0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_40369f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jge_.L_40369a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_403640(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_403659(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movb__0x2d____rax__rcx_1_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i8 45, i8* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_403687(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_callq_.toupper_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_40368c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_4035a3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_4036a4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_4033ae(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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
