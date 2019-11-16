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

declare %struct.Memory* @sub_401710.__ctype_b_loc_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @IsReal(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_4514a0 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_4514a0, %struct.Memory** %MEMORY
  %loadMem_4514a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i260 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i261 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i262 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i261
  %27 = load i64, i64* %PC.i260
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i260
  store i64 %26, i64* %RBP.i262, align 8
  store %struct.Memory* %loadMem_4514a1, %struct.Memory** %MEMORY
  %loadMem_4514a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i258 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i259 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i259
  %36 = load i64, i64* %PC.i258
  %37 = add i64 %36, 4
  store i64 %37, i64* %PC.i258
  %38 = sub i64 %35, 32
  store i64 %38, i64* %RSP.i259, align 8
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
  store %struct.Memory* %loadMem_4514a4, %struct.Memory** %MEMORY
  %loadMem_4514a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i256 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 11
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %72 to i64*
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %74 = getelementptr inbounds %struct.GPR, %struct.GPR* %73, i32 0, i32 15
  %75 = getelementptr inbounds %struct.Reg, %struct.Reg* %74, i32 0, i32 0
  %RBP.i257 = bitcast %union.anon* %75 to i64*
  %76 = load i64, i64* %RBP.i257
  %77 = sub i64 %76, 16
  %78 = load i64, i64* %RDI.i
  %79 = load i64, i64* %PC.i256
  %80 = add i64 %79, 4
  store i64 %80, i64* %PC.i256
  %81 = inttoptr i64 %77 to i64*
  store i64 %78, i64* %81
  store %struct.Memory* %loadMem_4514a8, %struct.Memory** %MEMORY
  %loadMem_4514ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %82 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %83 = getelementptr inbounds %struct.GPR, %struct.GPR* %82, i32 0, i32 33
  %84 = getelementptr inbounds %struct.Reg, %struct.Reg* %83, i32 0, i32 0
  %PC.i254 = bitcast %union.anon* %84 to i64*
  %85 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %86 = getelementptr inbounds %struct.GPR, %struct.GPR* %85, i32 0, i32 15
  %87 = getelementptr inbounds %struct.Reg, %struct.Reg* %86, i32 0, i32 0
  %RBP.i255 = bitcast %union.anon* %87 to i64*
  %88 = load i64, i64* %RBP.i255
  %89 = sub i64 %88, 20
  %90 = load i64, i64* %PC.i254
  %91 = add i64 %90, 7
  store i64 %91, i64* %PC.i254
  %92 = inttoptr i64 %89 to i32*
  store i32 0, i32* %92
  store %struct.Memory* %loadMem_4514ac, %struct.Memory** %MEMORY
  %loadMem_4514b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %93 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %94 = getelementptr inbounds %struct.GPR, %struct.GPR* %93, i32 0, i32 33
  %95 = getelementptr inbounds %struct.Reg, %struct.Reg* %94, i32 0, i32 0
  %PC.i252 = bitcast %union.anon* %95 to i64*
  %96 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %97 = getelementptr inbounds %struct.GPR, %struct.GPR* %96, i32 0, i32 15
  %98 = getelementptr inbounds %struct.Reg, %struct.Reg* %97, i32 0, i32 0
  %RBP.i253 = bitcast %union.anon* %98 to i64*
  %99 = load i64, i64* %RBP.i253
  %100 = sub i64 %99, 24
  %101 = load i64, i64* %PC.i252
  %102 = add i64 %101, 7
  store i64 %102, i64* %PC.i252
  %103 = inttoptr i64 %100 to i32*
  store i32 0, i32* %103
  store %struct.Memory* %loadMem_4514b3, %struct.Memory** %MEMORY
  %loadMem_4514ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %105 = getelementptr inbounds %struct.GPR, %struct.GPR* %104, i32 0, i32 33
  %106 = getelementptr inbounds %struct.Reg, %struct.Reg* %105, i32 0, i32 0
  %PC.i250 = bitcast %union.anon* %106 to i64*
  %107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %108 = getelementptr inbounds %struct.GPR, %struct.GPR* %107, i32 0, i32 15
  %109 = getelementptr inbounds %struct.Reg, %struct.Reg* %108, i32 0, i32 0
  %RBP.i251 = bitcast %union.anon* %109 to i64*
  %110 = load i64, i64* %RBP.i251
  %111 = sub i64 %110, 28
  %112 = load i64, i64* %PC.i250
  %113 = add i64 %112, 7
  store i64 %113, i64* %PC.i250
  %114 = inttoptr i64 %111 to i32*
  store i32 0, i32* %114
  store %struct.Memory* %loadMem_4514ba, %struct.Memory** %MEMORY
  %loadMem_4514c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %116 = getelementptr inbounds %struct.GPR, %struct.GPR* %115, i32 0, i32 33
  %117 = getelementptr inbounds %struct.Reg, %struct.Reg* %116, i32 0, i32 0
  %PC.i248 = bitcast %union.anon* %117 to i64*
  %118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %119 = getelementptr inbounds %struct.GPR, %struct.GPR* %118, i32 0, i32 15
  %120 = getelementptr inbounds %struct.Reg, %struct.Reg* %119, i32 0, i32 0
  %RBP.i249 = bitcast %union.anon* %120 to i64*
  %121 = load i64, i64* %RBP.i249
  %122 = sub i64 %121, 16
  %123 = load i64, i64* %PC.i248
  %124 = add i64 %123, 5
  store i64 %124, i64* %PC.i248
  %125 = inttoptr i64 %122 to i64*
  %126 = load i64, i64* %125
  %127 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %127, align 1
  %128 = trunc i64 %126 to i32
  %129 = and i32 %128, 255
  %130 = call i32 @llvm.ctpop.i32(i32 %129)
  %131 = trunc i32 %130 to i8
  %132 = and i8 %131, 1
  %133 = xor i8 %132, 1
  %134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %133, i8* %134, align 1
  %135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %135, align 1
  %136 = icmp eq i64 %126, 0
  %137 = zext i1 %136 to i8
  %138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %137, i8* %138, align 1
  %139 = lshr i64 %126, 63
  %140 = trunc i64 %139 to i8
  %141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %140, i8* %141, align 1
  %142 = lshr i64 %126, 63
  %143 = xor i64 %139, %142
  %144 = add i64 %143, %142
  %145 = icmp eq i64 %144, 2
  %146 = zext i1 %145 to i8
  %147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %146, i8* %147, align 1
  store %struct.Memory* %loadMem_4514c1, %struct.Memory** %MEMORY
  %loadMem_4514c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %149 = getelementptr inbounds %struct.GPR, %struct.GPR* %148, i32 0, i32 33
  %150 = getelementptr inbounds %struct.Reg, %struct.Reg* %149, i32 0, i32 0
  %PC.i247 = bitcast %union.anon* %150 to i64*
  %151 = load i64, i64* %PC.i247
  %152 = add i64 %151, 18
  %153 = load i64, i64* %PC.i247
  %154 = add i64 %153, 6
  %155 = load i64, i64* %PC.i247
  %156 = add i64 %155, 6
  store i64 %156, i64* %PC.i247
  %157 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %158 = load i8, i8* %157, align 1
  %159 = icmp eq i8 %158, 0
  %160 = zext i1 %159 to i8
  store i8 %160, i8* %BRANCH_TAKEN, align 1
  %161 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %162 = select i1 %159, i64 %152, i64 %154
  store i64 %162, i64* %161, align 8
  store %struct.Memory* %loadMem_4514c6, %struct.Memory** %MEMORY
  %loadBr_4514c6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4514c6 = icmp eq i8 %loadBr_4514c6, 1
  br i1 %cmpBr_4514c6, label %block_.L_4514d8, label %block_4514cc

block_4514cc:                                     ; preds = %entry
  %loadMem_4514cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %164 = getelementptr inbounds %struct.GPR, %struct.GPR* %163, i32 0, i32 33
  %165 = getelementptr inbounds %struct.Reg, %struct.Reg* %164, i32 0, i32 0
  %PC.i245 = bitcast %union.anon* %165 to i64*
  %166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %167 = getelementptr inbounds %struct.GPR, %struct.GPR* %166, i32 0, i32 15
  %168 = getelementptr inbounds %struct.Reg, %struct.Reg* %167, i32 0, i32 0
  %RBP.i246 = bitcast %union.anon* %168 to i64*
  %169 = load i64, i64* %RBP.i246
  %170 = sub i64 %169, 4
  %171 = load i64, i64* %PC.i245
  %172 = add i64 %171, 7
  store i64 %172, i64* %PC.i245
  %173 = inttoptr i64 %170 to i32*
  store i32 0, i32* %173
  store %struct.Memory* %loadMem_4514cc, %struct.Memory** %MEMORY
  %loadMem_4514d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %175 = getelementptr inbounds %struct.GPR, %struct.GPR* %174, i32 0, i32 33
  %176 = getelementptr inbounds %struct.Reg, %struct.Reg* %175, i32 0, i32 0
  %PC.i244 = bitcast %union.anon* %176 to i64*
  %177 = load i64, i64* %PC.i244
  %178 = add i64 %177, 500
  %179 = load i64, i64* %PC.i244
  %180 = add i64 %179, 5
  store i64 %180, i64* %PC.i244
  %181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %178, i64* %181, align 8
  store %struct.Memory* %loadMem_4514d3, %struct.Memory** %MEMORY
  br label %block_.L_4516c7

block_.L_4514d8:                                  ; preds = %entry
  %loadMem_4514d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %183 = getelementptr inbounds %struct.GPR, %struct.GPR* %182, i32 0, i32 33
  %184 = getelementptr inbounds %struct.Reg, %struct.Reg* %183, i32 0, i32 0
  %PC.i243 = bitcast %union.anon* %184 to i64*
  %185 = load i64, i64* %PC.i243
  %186 = add i64 %185, 5
  %187 = load i64, i64* %PC.i243
  %188 = add i64 %187, 5
  store i64 %188, i64* %PC.i243
  %189 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %186, i64* %189, align 8
  store %struct.Memory* %loadMem_4514d8, %struct.Memory** %MEMORY
  br label %block_.L_4514dd

block_.L_4514dd:                                  ; preds = %block_451502, %block_.L_4514d8
  %loadMem1_4514dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %191 = getelementptr inbounds %struct.GPR, %struct.GPR* %190, i32 0, i32 33
  %192 = getelementptr inbounds %struct.Reg, %struct.Reg* %191, i32 0, i32 0
  %PC.i242 = bitcast %union.anon* %192 to i64*
  %193 = load i64, i64* %PC.i242
  %194 = add i64 %193, -327117
  %195 = load i64, i64* %PC.i242
  %196 = add i64 %195, 5
  %197 = load i64, i64* %PC.i242
  %198 = add i64 %197, 5
  store i64 %198, i64* %PC.i242
  %199 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = add i64 %200, -8
  %202 = inttoptr i64 %201 to i64*
  store i64 %196, i64* %202
  store i64 %201, i64* %199, align 8
  %203 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %194, i64* %203, align 8
  store %struct.Memory* %loadMem1_4514dd, %struct.Memory** %MEMORY
  %loadMem2_4514dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4514dd = load i64, i64* %3
  %call2_4514dd = call %struct.Memory* @sub_401710.__ctype_b_loc_plt(%struct.State* %0, i64 %loadPC_4514dd, %struct.Memory* %loadMem2_4514dd)
  store %struct.Memory* %call2_4514dd, %struct.Memory** %MEMORY
  %loadMem_4514e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %205 = getelementptr inbounds %struct.GPR, %struct.GPR* %204, i32 0, i32 33
  %206 = getelementptr inbounds %struct.Reg, %struct.Reg* %205, i32 0, i32 0
  %PC.i240 = bitcast %union.anon* %206 to i64*
  %207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %208 = getelementptr inbounds %struct.GPR, %struct.GPR* %207, i32 0, i32 1
  %209 = getelementptr inbounds %struct.Reg, %struct.Reg* %208, i32 0, i32 0
  %RAX.i241 = bitcast %union.anon* %209 to i64*
  %210 = load i64, i64* %RAX.i241
  %211 = load i64, i64* %PC.i240
  %212 = add i64 %211, 3
  store i64 %212, i64* %PC.i240
  %213 = inttoptr i64 %210 to i64*
  %214 = load i64, i64* %213
  store i64 %214, i64* %RAX.i241, align 8
  store %struct.Memory* %loadMem_4514e2, %struct.Memory** %MEMORY
  %loadMem_4514e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %216 = getelementptr inbounds %struct.GPR, %struct.GPR* %215, i32 0, i32 33
  %217 = getelementptr inbounds %struct.Reg, %struct.Reg* %216, i32 0, i32 0
  %PC.i237 = bitcast %union.anon* %217 to i64*
  %218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %219 = getelementptr inbounds %struct.GPR, %struct.GPR* %218, i32 0, i32 5
  %220 = getelementptr inbounds %struct.Reg, %struct.Reg* %219, i32 0, i32 0
  %RCX.i238 = bitcast %union.anon* %220 to i64*
  %221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %222 = getelementptr inbounds %struct.GPR, %struct.GPR* %221, i32 0, i32 15
  %223 = getelementptr inbounds %struct.Reg, %struct.Reg* %222, i32 0, i32 0
  %RBP.i239 = bitcast %union.anon* %223 to i64*
  %224 = load i64, i64* %RBP.i239
  %225 = sub i64 %224, 16
  %226 = load i64, i64* %PC.i237
  %227 = add i64 %226, 4
  store i64 %227, i64* %PC.i237
  %228 = inttoptr i64 %225 to i64*
  %229 = load i64, i64* %228
  store i64 %229, i64* %RCX.i238, align 8
  store %struct.Memory* %loadMem_4514e5, %struct.Memory** %MEMORY
  %loadMem_4514e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %231 = getelementptr inbounds %struct.GPR, %struct.GPR* %230, i32 0, i32 33
  %232 = getelementptr inbounds %struct.Reg, %struct.Reg* %231, i32 0, i32 0
  %PC.i234 = bitcast %union.anon* %232 to i64*
  %233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %234 = getelementptr inbounds %struct.GPR, %struct.GPR* %233, i32 0, i32 5
  %235 = getelementptr inbounds %struct.Reg, %struct.Reg* %234, i32 0, i32 0
  %RCX.i235 = bitcast %union.anon* %235 to i64*
  %236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %237 = getelementptr inbounds %struct.GPR, %struct.GPR* %236, i32 0, i32 7
  %238 = getelementptr inbounds %struct.Reg, %struct.Reg* %237, i32 0, i32 0
  %RDX.i236 = bitcast %union.anon* %238 to i64*
  %239 = load i64, i64* %RCX.i235
  %240 = load i64, i64* %PC.i234
  %241 = add i64 %240, 3
  store i64 %241, i64* %PC.i234
  %242 = inttoptr i64 %239 to i8*
  %243 = load i8, i8* %242
  %244 = sext i8 %243 to i64
  %245 = and i64 %244, 4294967295
  store i64 %245, i64* %RDX.i236, align 8
  store %struct.Memory* %loadMem_4514e9, %struct.Memory** %MEMORY
  %loadMem_4514ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %247 = getelementptr inbounds %struct.GPR, %struct.GPR* %246, i32 0, i32 33
  %248 = getelementptr inbounds %struct.Reg, %struct.Reg* %247, i32 0, i32 0
  %PC.i231 = bitcast %union.anon* %248 to i64*
  %249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %250 = getelementptr inbounds %struct.GPR, %struct.GPR* %249, i32 0, i32 7
  %251 = getelementptr inbounds %struct.Reg, %struct.Reg* %250, i32 0, i32 0
  %EDX.i232 = bitcast %union.anon* %251 to i32*
  %252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %253 = getelementptr inbounds %struct.GPR, %struct.GPR* %252, i32 0, i32 5
  %254 = getelementptr inbounds %struct.Reg, %struct.Reg* %253, i32 0, i32 0
  %RCX.i233 = bitcast %union.anon* %254 to i64*
  %255 = load i32, i32* %EDX.i232
  %256 = zext i32 %255 to i64
  %257 = load i64, i64* %PC.i231
  %258 = add i64 %257, 3
  store i64 %258, i64* %PC.i231
  %259 = shl i64 %256, 32
  %260 = ashr exact i64 %259, 32
  store i64 %260, i64* %RCX.i233, align 8
  store %struct.Memory* %loadMem_4514ec, %struct.Memory** %MEMORY
  %loadMem_4514ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %262 = getelementptr inbounds %struct.GPR, %struct.GPR* %261, i32 0, i32 33
  %263 = getelementptr inbounds %struct.Reg, %struct.Reg* %262, i32 0, i32 0
  %PC.i227 = bitcast %union.anon* %263 to i64*
  %264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %265 = getelementptr inbounds %struct.GPR, %struct.GPR* %264, i32 0, i32 1
  %266 = getelementptr inbounds %struct.Reg, %struct.Reg* %265, i32 0, i32 0
  %RAX.i228 = bitcast %union.anon* %266 to i64*
  %267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %268 = getelementptr inbounds %struct.GPR, %struct.GPR* %267, i32 0, i32 5
  %269 = getelementptr inbounds %struct.Reg, %struct.Reg* %268, i32 0, i32 0
  %RCX.i229 = bitcast %union.anon* %269 to i64*
  %270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %271 = getelementptr inbounds %struct.GPR, %struct.GPR* %270, i32 0, i32 7
  %272 = getelementptr inbounds %struct.Reg, %struct.Reg* %271, i32 0, i32 0
  %RDX.i230 = bitcast %union.anon* %272 to i64*
  %273 = load i64, i64* %RAX.i228
  %274 = load i64, i64* %RCX.i229
  %275 = mul i64 %274, 2
  %276 = add i64 %275, %273
  %277 = load i64, i64* %PC.i227
  %278 = add i64 %277, 4
  store i64 %278, i64* %PC.i227
  %279 = inttoptr i64 %276 to i16*
  %280 = load i16, i16* %279
  %281 = zext i16 %280 to i64
  store i64 %281, i64* %RDX.i230, align 8
  store %struct.Memory* %loadMem_4514ef, %struct.Memory** %MEMORY
  %loadMem_4514f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %283 = getelementptr inbounds %struct.GPR, %struct.GPR* %282, i32 0, i32 33
  %284 = getelementptr inbounds %struct.Reg, %struct.Reg* %283, i32 0, i32 0
  %PC.i225 = bitcast %union.anon* %284 to i64*
  %285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %286 = getelementptr inbounds %struct.GPR, %struct.GPR* %285, i32 0, i32 7
  %287 = getelementptr inbounds %struct.Reg, %struct.Reg* %286, i32 0, i32 0
  %RDX.i226 = bitcast %union.anon* %287 to i64*
  %288 = load i64, i64* %RDX.i226
  %289 = load i64, i64* %PC.i225
  %290 = add i64 %289, 6
  store i64 %290, i64* %PC.i225
  %291 = and i64 8192, %288
  %292 = trunc i64 %291 to i32
  store i64 %291, i64* %RDX.i226, align 8
  %293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %293, align 1
  %294 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %294, align 1
  %295 = icmp eq i32 %292, 0
  %296 = zext i1 %295 to i8
  %297 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %296, i8* %297, align 1
  %298 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %298, align 1
  %299 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %299, align 1
  %300 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %300, align 1
  store %struct.Memory* %loadMem_4514f3, %struct.Memory** %MEMORY
  %loadMem_4514f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %302 = getelementptr inbounds %struct.GPR, %struct.GPR* %301, i32 0, i32 33
  %303 = getelementptr inbounds %struct.Reg, %struct.Reg* %302, i32 0, i32 0
  %PC.i223 = bitcast %union.anon* %303 to i64*
  %304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %305 = getelementptr inbounds %struct.GPR, %struct.GPR* %304, i32 0, i32 7
  %306 = getelementptr inbounds %struct.Reg, %struct.Reg* %305, i32 0, i32 0
  %EDX.i224 = bitcast %union.anon* %306 to i32*
  %307 = load i32, i32* %EDX.i224
  %308 = zext i32 %307 to i64
  %309 = load i64, i64* %PC.i223
  %310 = add i64 %309, 3
  store i64 %310, i64* %PC.i223
  %311 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %311, align 1
  %312 = and i32 %307, 255
  %313 = call i32 @llvm.ctpop.i32(i32 %312)
  %314 = trunc i32 %313 to i8
  %315 = and i8 %314, 1
  %316 = xor i8 %315, 1
  %317 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %316, i8* %317, align 1
  %318 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %318, align 1
  %319 = icmp eq i32 %307, 0
  %320 = zext i1 %319 to i8
  %321 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %320, i8* %321, align 1
  %322 = lshr i32 %307, 31
  %323 = trunc i32 %322 to i8
  %324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %323, i8* %324, align 1
  %325 = lshr i32 %307, 31
  %326 = xor i32 %322, %325
  %327 = add i32 %326, %325
  %328 = icmp eq i32 %327, 2
  %329 = zext i1 %328 to i8
  %330 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %329, i8* %330, align 1
  store %struct.Memory* %loadMem_4514f9, %struct.Memory** %MEMORY
  %loadMem_4514fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %332 = getelementptr inbounds %struct.GPR, %struct.GPR* %331, i32 0, i32 33
  %333 = getelementptr inbounds %struct.Reg, %struct.Reg* %332, i32 0, i32 0
  %PC.i222 = bitcast %union.anon* %333 to i64*
  %334 = load i64, i64* %PC.i222
  %335 = add i64 %334, 23
  %336 = load i64, i64* %PC.i222
  %337 = add i64 %336, 6
  %338 = load i64, i64* %PC.i222
  %339 = add i64 %338, 6
  store i64 %339, i64* %PC.i222
  %340 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %341 = load i8, i8* %340, align 1
  store i8 %341, i8* %BRANCH_TAKEN, align 1
  %342 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %343 = icmp ne i8 %341, 0
  %344 = select i1 %343, i64 %335, i64 %337
  store i64 %344, i64* %342, align 8
  store %struct.Memory* %loadMem_4514fc, %struct.Memory** %MEMORY
  %loadBr_4514fc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4514fc = icmp eq i8 %loadBr_4514fc, 1
  br i1 %cmpBr_4514fc, label %block_.L_451513, label %block_451502

block_451502:                                     ; preds = %block_.L_4514dd
  %loadMem_451502 = load %struct.Memory*, %struct.Memory** %MEMORY
  %345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %346 = getelementptr inbounds %struct.GPR, %struct.GPR* %345, i32 0, i32 33
  %347 = getelementptr inbounds %struct.Reg, %struct.Reg* %346, i32 0, i32 0
  %PC.i219 = bitcast %union.anon* %347 to i64*
  %348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %349 = getelementptr inbounds %struct.GPR, %struct.GPR* %348, i32 0, i32 1
  %350 = getelementptr inbounds %struct.Reg, %struct.Reg* %349, i32 0, i32 0
  %RAX.i220 = bitcast %union.anon* %350 to i64*
  %351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %352 = getelementptr inbounds %struct.GPR, %struct.GPR* %351, i32 0, i32 15
  %353 = getelementptr inbounds %struct.Reg, %struct.Reg* %352, i32 0, i32 0
  %RBP.i221 = bitcast %union.anon* %353 to i64*
  %354 = load i64, i64* %RBP.i221
  %355 = sub i64 %354, 16
  %356 = load i64, i64* %PC.i219
  %357 = add i64 %356, 4
  store i64 %357, i64* %PC.i219
  %358 = inttoptr i64 %355 to i64*
  %359 = load i64, i64* %358
  store i64 %359, i64* %RAX.i220, align 8
  store %struct.Memory* %loadMem_451502, %struct.Memory** %MEMORY
  %loadMem_451506 = load %struct.Memory*, %struct.Memory** %MEMORY
  %360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %361 = getelementptr inbounds %struct.GPR, %struct.GPR* %360, i32 0, i32 33
  %362 = getelementptr inbounds %struct.Reg, %struct.Reg* %361, i32 0, i32 0
  %PC.i217 = bitcast %union.anon* %362 to i64*
  %363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %364 = getelementptr inbounds %struct.GPR, %struct.GPR* %363, i32 0, i32 1
  %365 = getelementptr inbounds %struct.Reg, %struct.Reg* %364, i32 0, i32 0
  %RAX.i218 = bitcast %union.anon* %365 to i64*
  %366 = load i64, i64* %RAX.i218
  %367 = load i64, i64* %PC.i217
  %368 = add i64 %367, 4
  store i64 %368, i64* %PC.i217
  %369 = add i64 1, %366
  store i64 %369, i64* %RAX.i218, align 8
  %370 = icmp ult i64 %369, %366
  %371 = icmp ult i64 %369, 1
  %372 = or i1 %370, %371
  %373 = zext i1 %372 to i8
  %374 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %373, i8* %374, align 1
  %375 = trunc i64 %369 to i32
  %376 = and i32 %375, 255
  %377 = call i32 @llvm.ctpop.i32(i32 %376)
  %378 = trunc i32 %377 to i8
  %379 = and i8 %378, 1
  %380 = xor i8 %379, 1
  %381 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %380, i8* %381, align 1
  %382 = xor i64 1, %366
  %383 = xor i64 %382, %369
  %384 = lshr i64 %383, 4
  %385 = trunc i64 %384 to i8
  %386 = and i8 %385, 1
  %387 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %386, i8* %387, align 1
  %388 = icmp eq i64 %369, 0
  %389 = zext i1 %388 to i8
  %390 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %389, i8* %390, align 1
  %391 = lshr i64 %369, 63
  %392 = trunc i64 %391 to i8
  %393 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %392, i8* %393, align 1
  %394 = lshr i64 %366, 63
  %395 = xor i64 %391, %394
  %396 = add i64 %395, %391
  %397 = icmp eq i64 %396, 2
  %398 = zext i1 %397 to i8
  %399 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %398, i8* %399, align 1
  store %struct.Memory* %loadMem_451506, %struct.Memory** %MEMORY
  %loadMem_45150a = load %struct.Memory*, %struct.Memory** %MEMORY
  %400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %401 = getelementptr inbounds %struct.GPR, %struct.GPR* %400, i32 0, i32 33
  %402 = getelementptr inbounds %struct.Reg, %struct.Reg* %401, i32 0, i32 0
  %PC.i214 = bitcast %union.anon* %402 to i64*
  %403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %404 = getelementptr inbounds %struct.GPR, %struct.GPR* %403, i32 0, i32 1
  %405 = getelementptr inbounds %struct.Reg, %struct.Reg* %404, i32 0, i32 0
  %RAX.i215 = bitcast %union.anon* %405 to i64*
  %406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %407 = getelementptr inbounds %struct.GPR, %struct.GPR* %406, i32 0, i32 15
  %408 = getelementptr inbounds %struct.Reg, %struct.Reg* %407, i32 0, i32 0
  %RBP.i216 = bitcast %union.anon* %408 to i64*
  %409 = load i64, i64* %RBP.i216
  %410 = sub i64 %409, 16
  %411 = load i64, i64* %RAX.i215
  %412 = load i64, i64* %PC.i214
  %413 = add i64 %412, 4
  store i64 %413, i64* %PC.i214
  %414 = inttoptr i64 %410 to i64*
  store i64 %411, i64* %414
  store %struct.Memory* %loadMem_45150a, %struct.Memory** %MEMORY
  %loadMem_45150e = load %struct.Memory*, %struct.Memory** %MEMORY
  %415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %416 = getelementptr inbounds %struct.GPR, %struct.GPR* %415, i32 0, i32 33
  %417 = getelementptr inbounds %struct.Reg, %struct.Reg* %416, i32 0, i32 0
  %PC.i213 = bitcast %union.anon* %417 to i64*
  %418 = load i64, i64* %PC.i213
  %419 = add i64 %418, -49
  %420 = load i64, i64* %PC.i213
  %421 = add i64 %420, 5
  store i64 %421, i64* %PC.i213
  %422 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %419, i64* %422, align 8
  store %struct.Memory* %loadMem_45150e, %struct.Memory** %MEMORY
  br label %block_.L_4514dd

block_.L_451513:                                  ; preds = %block_.L_4514dd
  %loadMem_451513 = load %struct.Memory*, %struct.Memory** %MEMORY
  %423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %424 = getelementptr inbounds %struct.GPR, %struct.GPR* %423, i32 0, i32 33
  %425 = getelementptr inbounds %struct.Reg, %struct.Reg* %424, i32 0, i32 0
  %PC.i210 = bitcast %union.anon* %425 to i64*
  %426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %427 = getelementptr inbounds %struct.GPR, %struct.GPR* %426, i32 0, i32 1
  %428 = getelementptr inbounds %struct.Reg, %struct.Reg* %427, i32 0, i32 0
  %RAX.i211 = bitcast %union.anon* %428 to i64*
  %429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %430 = getelementptr inbounds %struct.GPR, %struct.GPR* %429, i32 0, i32 15
  %431 = getelementptr inbounds %struct.Reg, %struct.Reg* %430, i32 0, i32 0
  %RBP.i212 = bitcast %union.anon* %431 to i64*
  %432 = load i64, i64* %RBP.i212
  %433 = sub i64 %432, 16
  %434 = load i64, i64* %PC.i210
  %435 = add i64 %434, 4
  store i64 %435, i64* %PC.i210
  %436 = inttoptr i64 %433 to i64*
  %437 = load i64, i64* %436
  store i64 %437, i64* %RAX.i211, align 8
  store %struct.Memory* %loadMem_451513, %struct.Memory** %MEMORY
  %loadMem_451517 = load %struct.Memory*, %struct.Memory** %MEMORY
  %438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %439 = getelementptr inbounds %struct.GPR, %struct.GPR* %438, i32 0, i32 33
  %440 = getelementptr inbounds %struct.Reg, %struct.Reg* %439, i32 0, i32 0
  %PC.i207 = bitcast %union.anon* %440 to i64*
  %441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %442 = getelementptr inbounds %struct.GPR, %struct.GPR* %441, i32 0, i32 1
  %443 = getelementptr inbounds %struct.Reg, %struct.Reg* %442, i32 0, i32 0
  %RAX.i208 = bitcast %union.anon* %443 to i64*
  %444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %445 = getelementptr inbounds %struct.GPR, %struct.GPR* %444, i32 0, i32 5
  %446 = getelementptr inbounds %struct.Reg, %struct.Reg* %445, i32 0, i32 0
  %RCX.i209 = bitcast %union.anon* %446 to i64*
  %447 = load i64, i64* %RAX.i208
  %448 = load i64, i64* %PC.i207
  %449 = add i64 %448, 3
  store i64 %449, i64* %PC.i207
  %450 = inttoptr i64 %447 to i8*
  %451 = load i8, i8* %450
  %452 = sext i8 %451 to i64
  %453 = and i64 %452, 4294967295
  store i64 %453, i64* %RCX.i209, align 8
  store %struct.Memory* %loadMem_451517, %struct.Memory** %MEMORY
  %loadMem_45151a = load %struct.Memory*, %struct.Memory** %MEMORY
  %454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %455 = getelementptr inbounds %struct.GPR, %struct.GPR* %454, i32 0, i32 33
  %456 = getelementptr inbounds %struct.Reg, %struct.Reg* %455, i32 0, i32 0
  %PC.i205 = bitcast %union.anon* %456 to i64*
  %457 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %458 = getelementptr inbounds %struct.GPR, %struct.GPR* %457, i32 0, i32 5
  %459 = getelementptr inbounds %struct.Reg, %struct.Reg* %458, i32 0, i32 0
  %ECX.i206 = bitcast %union.anon* %459 to i32*
  %460 = load i32, i32* %ECX.i206
  %461 = zext i32 %460 to i64
  %462 = load i64, i64* %PC.i205
  %463 = add i64 %462, 3
  store i64 %463, i64* %PC.i205
  %464 = sub i32 %460, 45
  %465 = icmp ult i32 %460, 45
  %466 = zext i1 %465 to i8
  %467 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %466, i8* %467, align 1
  %468 = and i32 %464, 255
  %469 = call i32 @llvm.ctpop.i32(i32 %468)
  %470 = trunc i32 %469 to i8
  %471 = and i8 %470, 1
  %472 = xor i8 %471, 1
  %473 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %472, i8* %473, align 1
  %474 = xor i64 45, %461
  %475 = trunc i64 %474 to i32
  %476 = xor i32 %475, %464
  %477 = lshr i32 %476, 4
  %478 = trunc i32 %477 to i8
  %479 = and i8 %478, 1
  %480 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %479, i8* %480, align 1
  %481 = icmp eq i32 %464, 0
  %482 = zext i1 %481 to i8
  %483 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %482, i8* %483, align 1
  %484 = lshr i32 %464, 31
  %485 = trunc i32 %484 to i8
  %486 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %485, i8* %486, align 1
  %487 = lshr i32 %460, 31
  %488 = xor i32 %484, %487
  %489 = add i32 %488, %487
  %490 = icmp eq i32 %489, 2
  %491 = zext i1 %490 to i8
  %492 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %491, i8* %492, align 1
  store %struct.Memory* %loadMem_45151a, %struct.Memory** %MEMORY
  %loadMem_45151d = load %struct.Memory*, %struct.Memory** %MEMORY
  %493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %494 = getelementptr inbounds %struct.GPR, %struct.GPR* %493, i32 0, i32 33
  %495 = getelementptr inbounds %struct.Reg, %struct.Reg* %494, i32 0, i32 0
  %PC.i204 = bitcast %union.anon* %495 to i64*
  %496 = load i64, i64* %PC.i204
  %497 = add i64 %496, 22
  %498 = load i64, i64* %PC.i204
  %499 = add i64 %498, 6
  %500 = load i64, i64* %PC.i204
  %501 = add i64 %500, 6
  store i64 %501, i64* %PC.i204
  %502 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %503 = load i8, i8* %502, align 1
  store i8 %503, i8* %BRANCH_TAKEN, align 1
  %504 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %505 = icmp ne i8 %503, 0
  %506 = select i1 %505, i64 %497, i64 %499
  store i64 %506, i64* %504, align 8
  store %struct.Memory* %loadMem_45151d, %struct.Memory** %MEMORY
  %loadBr_45151d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45151d = icmp eq i8 %loadBr_45151d, 1
  br i1 %cmpBr_45151d, label %block_.L_451533, label %block_451523

block_451523:                                     ; preds = %block_.L_451513
  %loadMem_451523 = load %struct.Memory*, %struct.Memory** %MEMORY
  %507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %508 = getelementptr inbounds %struct.GPR, %struct.GPR* %507, i32 0, i32 33
  %509 = getelementptr inbounds %struct.Reg, %struct.Reg* %508, i32 0, i32 0
  %PC.i201 = bitcast %union.anon* %509 to i64*
  %510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %511 = getelementptr inbounds %struct.GPR, %struct.GPR* %510, i32 0, i32 1
  %512 = getelementptr inbounds %struct.Reg, %struct.Reg* %511, i32 0, i32 0
  %RAX.i202 = bitcast %union.anon* %512 to i64*
  %513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %514 = getelementptr inbounds %struct.GPR, %struct.GPR* %513, i32 0, i32 15
  %515 = getelementptr inbounds %struct.Reg, %struct.Reg* %514, i32 0, i32 0
  %RBP.i203 = bitcast %union.anon* %515 to i64*
  %516 = load i64, i64* %RBP.i203
  %517 = sub i64 %516, 16
  %518 = load i64, i64* %PC.i201
  %519 = add i64 %518, 4
  store i64 %519, i64* %PC.i201
  %520 = inttoptr i64 %517 to i64*
  %521 = load i64, i64* %520
  store i64 %521, i64* %RAX.i202, align 8
  store %struct.Memory* %loadMem_451523, %struct.Memory** %MEMORY
  %loadMem_451527 = load %struct.Memory*, %struct.Memory** %MEMORY
  %522 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %523 = getelementptr inbounds %struct.GPR, %struct.GPR* %522, i32 0, i32 33
  %524 = getelementptr inbounds %struct.Reg, %struct.Reg* %523, i32 0, i32 0
  %PC.i198 = bitcast %union.anon* %524 to i64*
  %525 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %526 = getelementptr inbounds %struct.GPR, %struct.GPR* %525, i32 0, i32 1
  %527 = getelementptr inbounds %struct.Reg, %struct.Reg* %526, i32 0, i32 0
  %RAX.i199 = bitcast %union.anon* %527 to i64*
  %528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %529 = getelementptr inbounds %struct.GPR, %struct.GPR* %528, i32 0, i32 5
  %530 = getelementptr inbounds %struct.Reg, %struct.Reg* %529, i32 0, i32 0
  %RCX.i200 = bitcast %union.anon* %530 to i64*
  %531 = load i64, i64* %RAX.i199
  %532 = load i64, i64* %PC.i198
  %533 = add i64 %532, 3
  store i64 %533, i64* %PC.i198
  %534 = inttoptr i64 %531 to i8*
  %535 = load i8, i8* %534
  %536 = sext i8 %535 to i64
  %537 = and i64 %536, 4294967295
  store i64 %537, i64* %RCX.i200, align 8
  store %struct.Memory* %loadMem_451527, %struct.Memory** %MEMORY
  %loadMem_45152a = load %struct.Memory*, %struct.Memory** %MEMORY
  %538 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %539 = getelementptr inbounds %struct.GPR, %struct.GPR* %538, i32 0, i32 33
  %540 = getelementptr inbounds %struct.Reg, %struct.Reg* %539, i32 0, i32 0
  %PC.i196 = bitcast %union.anon* %540 to i64*
  %541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %542 = getelementptr inbounds %struct.GPR, %struct.GPR* %541, i32 0, i32 5
  %543 = getelementptr inbounds %struct.Reg, %struct.Reg* %542, i32 0, i32 0
  %ECX.i197 = bitcast %union.anon* %543 to i32*
  %544 = load i32, i32* %ECX.i197
  %545 = zext i32 %544 to i64
  %546 = load i64, i64* %PC.i196
  %547 = add i64 %546, 3
  store i64 %547, i64* %PC.i196
  %548 = sub i32 %544, 43
  %549 = icmp ult i32 %544, 43
  %550 = zext i1 %549 to i8
  %551 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %550, i8* %551, align 1
  %552 = and i32 %548, 255
  %553 = call i32 @llvm.ctpop.i32(i32 %552)
  %554 = trunc i32 %553 to i8
  %555 = and i8 %554, 1
  %556 = xor i8 %555, 1
  %557 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %556, i8* %557, align 1
  %558 = xor i64 43, %545
  %559 = trunc i64 %558 to i32
  %560 = xor i32 %559, %548
  %561 = lshr i32 %560, 4
  %562 = trunc i32 %561 to i8
  %563 = and i8 %562, 1
  %564 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %563, i8* %564, align 1
  %565 = icmp eq i32 %548, 0
  %566 = zext i1 %565 to i8
  %567 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %566, i8* %567, align 1
  %568 = lshr i32 %548, 31
  %569 = trunc i32 %568 to i8
  %570 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %569, i8* %570, align 1
  %571 = lshr i32 %544, 31
  %572 = xor i32 %568, %571
  %573 = add i32 %572, %571
  %574 = icmp eq i32 %573, 2
  %575 = zext i1 %574 to i8
  %576 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %575, i8* %576, align 1
  store %struct.Memory* %loadMem_45152a, %struct.Memory** %MEMORY
  %loadMem_45152d = load %struct.Memory*, %struct.Memory** %MEMORY
  %577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %578 = getelementptr inbounds %struct.GPR, %struct.GPR* %577, i32 0, i32 33
  %579 = getelementptr inbounds %struct.Reg, %struct.Reg* %578, i32 0, i32 0
  %PC.i195 = bitcast %union.anon* %579 to i64*
  %580 = load i64, i64* %PC.i195
  %581 = add i64 %580, 18
  %582 = load i64, i64* %PC.i195
  %583 = add i64 %582, 6
  %584 = load i64, i64* %PC.i195
  %585 = add i64 %584, 6
  store i64 %585, i64* %PC.i195
  %586 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %587 = load i8, i8* %586, align 1
  %588 = icmp eq i8 %587, 0
  %589 = zext i1 %588 to i8
  store i8 %589, i8* %BRANCH_TAKEN, align 1
  %590 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %591 = select i1 %588, i64 %581, i64 %583
  store i64 %591, i64* %590, align 8
  store %struct.Memory* %loadMem_45152d, %struct.Memory** %MEMORY
  %loadBr_45152d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45152d = icmp eq i8 %loadBr_45152d, 1
  br i1 %cmpBr_45152d, label %block_.L_45153f, label %block_.L_451533

block_.L_451533:                                  ; preds = %block_451523, %block_.L_451513
  %loadMem_451533 = load %struct.Memory*, %struct.Memory** %MEMORY
  %592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %593 = getelementptr inbounds %struct.GPR, %struct.GPR* %592, i32 0, i32 33
  %594 = getelementptr inbounds %struct.Reg, %struct.Reg* %593, i32 0, i32 0
  %PC.i192 = bitcast %union.anon* %594 to i64*
  %595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %596 = getelementptr inbounds %struct.GPR, %struct.GPR* %595, i32 0, i32 1
  %597 = getelementptr inbounds %struct.Reg, %struct.Reg* %596, i32 0, i32 0
  %RAX.i193 = bitcast %union.anon* %597 to i64*
  %598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %599 = getelementptr inbounds %struct.GPR, %struct.GPR* %598, i32 0, i32 15
  %600 = getelementptr inbounds %struct.Reg, %struct.Reg* %599, i32 0, i32 0
  %RBP.i194 = bitcast %union.anon* %600 to i64*
  %601 = load i64, i64* %RBP.i194
  %602 = sub i64 %601, 16
  %603 = load i64, i64* %PC.i192
  %604 = add i64 %603, 4
  store i64 %604, i64* %PC.i192
  %605 = inttoptr i64 %602 to i64*
  %606 = load i64, i64* %605
  store i64 %606, i64* %RAX.i193, align 8
  store %struct.Memory* %loadMem_451533, %struct.Memory** %MEMORY
  %loadMem_451537 = load %struct.Memory*, %struct.Memory** %MEMORY
  %607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %608 = getelementptr inbounds %struct.GPR, %struct.GPR* %607, i32 0, i32 33
  %609 = getelementptr inbounds %struct.Reg, %struct.Reg* %608, i32 0, i32 0
  %PC.i190 = bitcast %union.anon* %609 to i64*
  %610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %611 = getelementptr inbounds %struct.GPR, %struct.GPR* %610, i32 0, i32 1
  %612 = getelementptr inbounds %struct.Reg, %struct.Reg* %611, i32 0, i32 0
  %RAX.i191 = bitcast %union.anon* %612 to i64*
  %613 = load i64, i64* %RAX.i191
  %614 = load i64, i64* %PC.i190
  %615 = add i64 %614, 4
  store i64 %615, i64* %PC.i190
  %616 = add i64 1, %613
  store i64 %616, i64* %RAX.i191, align 8
  %617 = icmp ult i64 %616, %613
  %618 = icmp ult i64 %616, 1
  %619 = or i1 %617, %618
  %620 = zext i1 %619 to i8
  %621 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %620, i8* %621, align 1
  %622 = trunc i64 %616 to i32
  %623 = and i32 %622, 255
  %624 = call i32 @llvm.ctpop.i32(i32 %623)
  %625 = trunc i32 %624 to i8
  %626 = and i8 %625, 1
  %627 = xor i8 %626, 1
  %628 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %627, i8* %628, align 1
  %629 = xor i64 1, %613
  %630 = xor i64 %629, %616
  %631 = lshr i64 %630, 4
  %632 = trunc i64 %631 to i8
  %633 = and i8 %632, 1
  %634 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %633, i8* %634, align 1
  %635 = icmp eq i64 %616, 0
  %636 = zext i1 %635 to i8
  %637 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %636, i8* %637, align 1
  %638 = lshr i64 %616, 63
  %639 = trunc i64 %638 to i8
  %640 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %639, i8* %640, align 1
  %641 = lshr i64 %613, 63
  %642 = xor i64 %638, %641
  %643 = add i64 %642, %638
  %644 = icmp eq i64 %643, 2
  %645 = zext i1 %644 to i8
  %646 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %645, i8* %646, align 1
  store %struct.Memory* %loadMem_451537, %struct.Memory** %MEMORY
  %loadMem_45153b = load %struct.Memory*, %struct.Memory** %MEMORY
  %647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %648 = getelementptr inbounds %struct.GPR, %struct.GPR* %647, i32 0, i32 33
  %649 = getelementptr inbounds %struct.Reg, %struct.Reg* %648, i32 0, i32 0
  %PC.i187 = bitcast %union.anon* %649 to i64*
  %650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %651 = getelementptr inbounds %struct.GPR, %struct.GPR* %650, i32 0, i32 1
  %652 = getelementptr inbounds %struct.Reg, %struct.Reg* %651, i32 0, i32 0
  %RAX.i188 = bitcast %union.anon* %652 to i64*
  %653 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %654 = getelementptr inbounds %struct.GPR, %struct.GPR* %653, i32 0, i32 15
  %655 = getelementptr inbounds %struct.Reg, %struct.Reg* %654, i32 0, i32 0
  %RBP.i189 = bitcast %union.anon* %655 to i64*
  %656 = load i64, i64* %RBP.i189
  %657 = sub i64 %656, 16
  %658 = load i64, i64* %RAX.i188
  %659 = load i64, i64* %PC.i187
  %660 = add i64 %659, 4
  store i64 %660, i64* %PC.i187
  %661 = inttoptr i64 %657 to i64*
  store i64 %658, i64* %661
  store %struct.Memory* %loadMem_45153b, %struct.Memory** %MEMORY
  br label %block_.L_45153f

block_.L_45153f:                                  ; preds = %block_.L_451533, %block_451523
  %loadMem_45153f = load %struct.Memory*, %struct.Memory** %MEMORY
  %662 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %663 = getelementptr inbounds %struct.GPR, %struct.GPR* %662, i32 0, i32 33
  %664 = getelementptr inbounds %struct.Reg, %struct.Reg* %663, i32 0, i32 0
  %PC.i186 = bitcast %union.anon* %664 to i64*
  %665 = load i64, i64* %PC.i186
  %666 = add i64 %665, 5
  %667 = load i64, i64* %PC.i186
  %668 = add i64 %667, 5
  store i64 %668, i64* %PC.i186
  %669 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %666, i64* %669, align 8
  store %struct.Memory* %loadMem_45153f, %struct.Memory** %MEMORY
  br label %block_.L_451544

block_.L_451544:                                  ; preds = %block_.L_45164e, %block_.L_45153f
  %loadMem_451544 = load %struct.Memory*, %struct.Memory** %MEMORY
  %670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %671 = getelementptr inbounds %struct.GPR, %struct.GPR* %670, i32 0, i32 33
  %672 = getelementptr inbounds %struct.Reg, %struct.Reg* %671, i32 0, i32 0
  %PC.i183 = bitcast %union.anon* %672 to i64*
  %673 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %674 = getelementptr inbounds %struct.GPR, %struct.GPR* %673, i32 0, i32 1
  %675 = getelementptr inbounds %struct.Reg, %struct.Reg* %674, i32 0, i32 0
  %RAX.i184 = bitcast %union.anon* %675 to i64*
  %676 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %677 = getelementptr inbounds %struct.GPR, %struct.GPR* %676, i32 0, i32 15
  %678 = getelementptr inbounds %struct.Reg, %struct.Reg* %677, i32 0, i32 0
  %RBP.i185 = bitcast %union.anon* %678 to i64*
  %679 = load i64, i64* %RBP.i185
  %680 = sub i64 %679, 16
  %681 = load i64, i64* %PC.i183
  %682 = add i64 %681, 4
  store i64 %682, i64* %PC.i183
  %683 = inttoptr i64 %680 to i64*
  %684 = load i64, i64* %683
  store i64 %684, i64* %RAX.i184, align 8
  store %struct.Memory* %loadMem_451544, %struct.Memory** %MEMORY
  %loadMem_451548 = load %struct.Memory*, %struct.Memory** %MEMORY
  %685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %686 = getelementptr inbounds %struct.GPR, %struct.GPR* %685, i32 0, i32 33
  %687 = getelementptr inbounds %struct.Reg, %struct.Reg* %686, i32 0, i32 0
  %PC.i180 = bitcast %union.anon* %687 to i64*
  %688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %689 = getelementptr inbounds %struct.GPR, %struct.GPR* %688, i32 0, i32 1
  %690 = getelementptr inbounds %struct.Reg, %struct.Reg* %689, i32 0, i32 0
  %RAX.i181 = bitcast %union.anon* %690 to i64*
  %691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %692 = getelementptr inbounds %struct.GPR, %struct.GPR* %691, i32 0, i32 5
  %693 = getelementptr inbounds %struct.Reg, %struct.Reg* %692, i32 0, i32 0
  %RCX.i182 = bitcast %union.anon* %693 to i64*
  %694 = load i64, i64* %RAX.i181
  %695 = load i64, i64* %PC.i180
  %696 = add i64 %695, 3
  store i64 %696, i64* %PC.i180
  %697 = inttoptr i64 %694 to i8*
  %698 = load i8, i8* %697
  %699 = sext i8 %698 to i64
  %700 = and i64 %699, 4294967295
  store i64 %700, i64* %RCX.i182, align 8
  store %struct.Memory* %loadMem_451548, %struct.Memory** %MEMORY
  %loadMem_45154b = load %struct.Memory*, %struct.Memory** %MEMORY
  %701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %702 = getelementptr inbounds %struct.GPR, %struct.GPR* %701, i32 0, i32 33
  %703 = getelementptr inbounds %struct.Reg, %struct.Reg* %702, i32 0, i32 0
  %PC.i178 = bitcast %union.anon* %703 to i64*
  %704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %705 = getelementptr inbounds %struct.GPR, %struct.GPR* %704, i32 0, i32 5
  %706 = getelementptr inbounds %struct.Reg, %struct.Reg* %705, i32 0, i32 0
  %ECX.i179 = bitcast %union.anon* %706 to i32*
  %707 = load i32, i32* %ECX.i179
  %708 = zext i32 %707 to i64
  %709 = load i64, i64* %PC.i178
  %710 = add i64 %709, 3
  store i64 %710, i64* %PC.i178
  %711 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %711, align 1
  %712 = and i32 %707, 255
  %713 = call i32 @llvm.ctpop.i32(i32 %712)
  %714 = trunc i32 %713 to i8
  %715 = and i8 %714, 1
  %716 = xor i8 %715, 1
  %717 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %716, i8* %717, align 1
  %718 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %718, align 1
  %719 = icmp eq i32 %707, 0
  %720 = zext i1 %719 to i8
  %721 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %720, i8* %721, align 1
  %722 = lshr i32 %707, 31
  %723 = trunc i32 %722 to i8
  %724 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %723, i8* %724, align 1
  %725 = lshr i32 %707, 31
  %726 = xor i32 %722, %725
  %727 = add i32 %726, %725
  %728 = icmp eq i32 %727, 2
  %729 = zext i1 %728 to i8
  %730 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %729, i8* %730, align 1
  store %struct.Memory* %loadMem_45154b, %struct.Memory** %MEMORY
  %loadMem_45154e = load %struct.Memory*, %struct.Memory** %MEMORY
  %731 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %732 = getelementptr inbounds %struct.GPR, %struct.GPR* %731, i32 0, i32 33
  %733 = getelementptr inbounds %struct.Reg, %struct.Reg* %732, i32 0, i32 0
  %PC.i177 = bitcast %union.anon* %733 to i64*
  %734 = load i64, i64* %PC.i177
  %735 = add i64 %734, 273
  %736 = load i64, i64* %PC.i177
  %737 = add i64 %736, 6
  %738 = load i64, i64* %PC.i177
  %739 = add i64 %738, 6
  store i64 %739, i64* %PC.i177
  %740 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %741 = load i8, i8* %740, align 1
  store i8 %741, i8* %BRANCH_TAKEN, align 1
  %742 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %743 = icmp ne i8 %741, 0
  %744 = select i1 %743, i64 %735, i64 %737
  store i64 %744, i64* %742, align 8
  store %struct.Memory* %loadMem_45154e, %struct.Memory** %MEMORY
  %loadBr_45154e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45154e = icmp eq i8 %loadBr_45154e, 1
  br i1 %cmpBr_45154e, label %block_.L_45165f, label %block_451554

block_451554:                                     ; preds = %block_.L_451544
  %loadMem1_451554 = load %struct.Memory*, %struct.Memory** %MEMORY
  %745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %746 = getelementptr inbounds %struct.GPR, %struct.GPR* %745, i32 0, i32 33
  %747 = getelementptr inbounds %struct.Reg, %struct.Reg* %746, i32 0, i32 0
  %PC.i176 = bitcast %union.anon* %747 to i64*
  %748 = load i64, i64* %PC.i176
  %749 = add i64 %748, -327236
  %750 = load i64, i64* %PC.i176
  %751 = add i64 %750, 5
  %752 = load i64, i64* %PC.i176
  %753 = add i64 %752, 5
  store i64 %753, i64* %PC.i176
  %754 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %755 = load i64, i64* %754, align 8
  %756 = add i64 %755, -8
  %757 = inttoptr i64 %756 to i64*
  store i64 %751, i64* %757
  store i64 %756, i64* %754, align 8
  %758 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %749, i64* %758, align 8
  store %struct.Memory* %loadMem1_451554, %struct.Memory** %MEMORY
  %loadMem2_451554 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_451554 = load i64, i64* %3
  %call2_451554 = call %struct.Memory* @sub_401710.__ctype_b_loc_plt(%struct.State* %0, i64 %loadPC_451554, %struct.Memory* %loadMem2_451554)
  store %struct.Memory* %call2_451554, %struct.Memory** %MEMORY
  %loadMem_451559 = load %struct.Memory*, %struct.Memory** %MEMORY
  %759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %760 = getelementptr inbounds %struct.GPR, %struct.GPR* %759, i32 0, i32 33
  %761 = getelementptr inbounds %struct.Reg, %struct.Reg* %760, i32 0, i32 0
  %PC.i174 = bitcast %union.anon* %761 to i64*
  %762 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %763 = getelementptr inbounds %struct.GPR, %struct.GPR* %762, i32 0, i32 1
  %764 = getelementptr inbounds %struct.Reg, %struct.Reg* %763, i32 0, i32 0
  %RAX.i175 = bitcast %union.anon* %764 to i64*
  %765 = load i64, i64* %RAX.i175
  %766 = load i64, i64* %PC.i174
  %767 = add i64 %766, 3
  store i64 %767, i64* %PC.i174
  %768 = inttoptr i64 %765 to i64*
  %769 = load i64, i64* %768
  store i64 %769, i64* %RAX.i175, align 8
  store %struct.Memory* %loadMem_451559, %struct.Memory** %MEMORY
  %loadMem_45155c = load %struct.Memory*, %struct.Memory** %MEMORY
  %770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %771 = getelementptr inbounds %struct.GPR, %struct.GPR* %770, i32 0, i32 33
  %772 = getelementptr inbounds %struct.Reg, %struct.Reg* %771, i32 0, i32 0
  %PC.i171 = bitcast %union.anon* %772 to i64*
  %773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %774 = getelementptr inbounds %struct.GPR, %struct.GPR* %773, i32 0, i32 5
  %775 = getelementptr inbounds %struct.Reg, %struct.Reg* %774, i32 0, i32 0
  %RCX.i172 = bitcast %union.anon* %775 to i64*
  %776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %777 = getelementptr inbounds %struct.GPR, %struct.GPR* %776, i32 0, i32 15
  %778 = getelementptr inbounds %struct.Reg, %struct.Reg* %777, i32 0, i32 0
  %RBP.i173 = bitcast %union.anon* %778 to i64*
  %779 = load i64, i64* %RBP.i173
  %780 = sub i64 %779, 16
  %781 = load i64, i64* %PC.i171
  %782 = add i64 %781, 4
  store i64 %782, i64* %PC.i171
  %783 = inttoptr i64 %780 to i64*
  %784 = load i64, i64* %783
  store i64 %784, i64* %RCX.i172, align 8
  store %struct.Memory* %loadMem_45155c, %struct.Memory** %MEMORY
  %loadMem_451560 = load %struct.Memory*, %struct.Memory** %MEMORY
  %785 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %786 = getelementptr inbounds %struct.GPR, %struct.GPR* %785, i32 0, i32 33
  %787 = getelementptr inbounds %struct.Reg, %struct.Reg* %786, i32 0, i32 0
  %PC.i168 = bitcast %union.anon* %787 to i64*
  %788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %789 = getelementptr inbounds %struct.GPR, %struct.GPR* %788, i32 0, i32 5
  %790 = getelementptr inbounds %struct.Reg, %struct.Reg* %789, i32 0, i32 0
  %RCX.i169 = bitcast %union.anon* %790 to i64*
  %791 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %792 = getelementptr inbounds %struct.GPR, %struct.GPR* %791, i32 0, i32 7
  %793 = getelementptr inbounds %struct.Reg, %struct.Reg* %792, i32 0, i32 0
  %RDX.i170 = bitcast %union.anon* %793 to i64*
  %794 = load i64, i64* %RCX.i169
  %795 = load i64, i64* %PC.i168
  %796 = add i64 %795, 3
  store i64 %796, i64* %PC.i168
  %797 = inttoptr i64 %794 to i8*
  %798 = load i8, i8* %797
  %799 = sext i8 %798 to i64
  %800 = and i64 %799, 4294967295
  store i64 %800, i64* %RDX.i170, align 8
  store %struct.Memory* %loadMem_451560, %struct.Memory** %MEMORY
  %loadMem_451563 = load %struct.Memory*, %struct.Memory** %MEMORY
  %801 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %802 = getelementptr inbounds %struct.GPR, %struct.GPR* %801, i32 0, i32 33
  %803 = getelementptr inbounds %struct.Reg, %struct.Reg* %802, i32 0, i32 0
  %PC.i165 = bitcast %union.anon* %803 to i64*
  %804 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %805 = getelementptr inbounds %struct.GPR, %struct.GPR* %804, i32 0, i32 7
  %806 = getelementptr inbounds %struct.Reg, %struct.Reg* %805, i32 0, i32 0
  %EDX.i166 = bitcast %union.anon* %806 to i32*
  %807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %808 = getelementptr inbounds %struct.GPR, %struct.GPR* %807, i32 0, i32 5
  %809 = getelementptr inbounds %struct.Reg, %struct.Reg* %808, i32 0, i32 0
  %RCX.i167 = bitcast %union.anon* %809 to i64*
  %810 = load i32, i32* %EDX.i166
  %811 = zext i32 %810 to i64
  %812 = load i64, i64* %PC.i165
  %813 = add i64 %812, 3
  store i64 %813, i64* %PC.i165
  %814 = shl i64 %811, 32
  %815 = ashr exact i64 %814, 32
  store i64 %815, i64* %RCX.i167, align 8
  store %struct.Memory* %loadMem_451563, %struct.Memory** %MEMORY
  %loadMem_451566 = load %struct.Memory*, %struct.Memory** %MEMORY
  %816 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %817 = getelementptr inbounds %struct.GPR, %struct.GPR* %816, i32 0, i32 33
  %818 = getelementptr inbounds %struct.Reg, %struct.Reg* %817, i32 0, i32 0
  %PC.i161 = bitcast %union.anon* %818 to i64*
  %819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %820 = getelementptr inbounds %struct.GPR, %struct.GPR* %819, i32 0, i32 1
  %821 = getelementptr inbounds %struct.Reg, %struct.Reg* %820, i32 0, i32 0
  %RAX.i162 = bitcast %union.anon* %821 to i64*
  %822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %823 = getelementptr inbounds %struct.GPR, %struct.GPR* %822, i32 0, i32 5
  %824 = getelementptr inbounds %struct.Reg, %struct.Reg* %823, i32 0, i32 0
  %RCX.i163 = bitcast %union.anon* %824 to i64*
  %825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %826 = getelementptr inbounds %struct.GPR, %struct.GPR* %825, i32 0, i32 7
  %827 = getelementptr inbounds %struct.Reg, %struct.Reg* %826, i32 0, i32 0
  %RDX.i164 = bitcast %union.anon* %827 to i64*
  %828 = load i64, i64* %RAX.i162
  %829 = load i64, i64* %RCX.i163
  %830 = mul i64 %829, 2
  %831 = add i64 %830, %828
  %832 = load i64, i64* %PC.i161
  %833 = add i64 %832, 4
  store i64 %833, i64* %PC.i161
  %834 = inttoptr i64 %831 to i16*
  %835 = load i16, i16* %834
  %836 = zext i16 %835 to i64
  store i64 %836, i64* %RDX.i164, align 8
  store %struct.Memory* %loadMem_451566, %struct.Memory** %MEMORY
  %loadMem_45156a = load %struct.Memory*, %struct.Memory** %MEMORY
  %837 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %838 = getelementptr inbounds %struct.GPR, %struct.GPR* %837, i32 0, i32 33
  %839 = getelementptr inbounds %struct.Reg, %struct.Reg* %838, i32 0, i32 0
  %PC.i159 = bitcast %union.anon* %839 to i64*
  %840 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %841 = getelementptr inbounds %struct.GPR, %struct.GPR* %840, i32 0, i32 7
  %842 = getelementptr inbounds %struct.Reg, %struct.Reg* %841, i32 0, i32 0
  %RDX.i160 = bitcast %union.anon* %842 to i64*
  %843 = load i64, i64* %RDX.i160
  %844 = load i64, i64* %PC.i159
  %845 = add i64 %844, 6
  store i64 %845, i64* %PC.i159
  %846 = and i64 2048, %843
  %847 = trunc i64 %846 to i32
  store i64 %846, i64* %RDX.i160, align 8
  %848 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %848, align 1
  %849 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %849, align 1
  %850 = icmp eq i32 %847, 0
  %851 = zext i1 %850 to i8
  %852 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %851, i8* %852, align 1
  %853 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %853, align 1
  %854 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %854, align 1
  %855 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %855, align 1
  store %struct.Memory* %loadMem_45156a, %struct.Memory** %MEMORY
  %loadMem_451570 = load %struct.Memory*, %struct.Memory** %MEMORY
  %856 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %857 = getelementptr inbounds %struct.GPR, %struct.GPR* %856, i32 0, i32 33
  %858 = getelementptr inbounds %struct.Reg, %struct.Reg* %857, i32 0, i32 0
  %PC.i157 = bitcast %union.anon* %858 to i64*
  %859 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %860 = getelementptr inbounds %struct.GPR, %struct.GPR* %859, i32 0, i32 7
  %861 = getelementptr inbounds %struct.Reg, %struct.Reg* %860, i32 0, i32 0
  %EDX.i158 = bitcast %union.anon* %861 to i32*
  %862 = load i32, i32* %EDX.i158
  %863 = zext i32 %862 to i64
  %864 = load i64, i64* %PC.i157
  %865 = add i64 %864, 3
  store i64 %865, i64* %PC.i157
  %866 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %866, align 1
  %867 = and i32 %862, 255
  %868 = call i32 @llvm.ctpop.i32(i32 %867)
  %869 = trunc i32 %868 to i8
  %870 = and i8 %869, 1
  %871 = xor i8 %870, 1
  %872 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %871, i8* %872, align 1
  %873 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %873, align 1
  %874 = icmp eq i32 %862, 0
  %875 = zext i1 %874 to i8
  %876 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %875, i8* %876, align 1
  %877 = lshr i32 %862, 31
  %878 = trunc i32 %877 to i8
  %879 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %878, i8* %879, align 1
  %880 = lshr i32 %862, 31
  %881 = xor i32 %877, %880
  %882 = add i32 %881, %880
  %883 = icmp eq i32 %882, 2
  %884 = zext i1 %883 to i8
  %885 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %884, i8* %885, align 1
  store %struct.Memory* %loadMem_451570, %struct.Memory** %MEMORY
  %loadMem_451573 = load %struct.Memory*, %struct.Memory** %MEMORY
  %886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %887 = getelementptr inbounds %struct.GPR, %struct.GPR* %886, i32 0, i32 33
  %888 = getelementptr inbounds %struct.Reg, %struct.Reg* %887, i32 0, i32 0
  %PC.i156 = bitcast %union.anon* %888 to i64*
  %889 = load i64, i64* %PC.i156
  %890 = add i64 %889, 20
  %891 = load i64, i64* %PC.i156
  %892 = add i64 %891, 6
  %893 = load i64, i64* %PC.i156
  %894 = add i64 %893, 6
  store i64 %894, i64* %PC.i156
  %895 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %896 = load i8, i8* %895, align 1
  store i8 %896, i8* %BRANCH_TAKEN, align 1
  %897 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %898 = icmp ne i8 %896, 0
  %899 = select i1 %898, i64 %890, i64 %892
  store i64 %899, i64* %897, align 8
  store %struct.Memory* %loadMem_451573, %struct.Memory** %MEMORY
  %loadBr_451573 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_451573 = icmp eq i8 %loadBr_451573, 1
  br i1 %cmpBr_451573, label %block_.L_451587, label %block_451579

block_451579:                                     ; preds = %block_451554
  %loadMem_451579 = load %struct.Memory*, %struct.Memory** %MEMORY
  %900 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %901 = getelementptr inbounds %struct.GPR, %struct.GPR* %900, i32 0, i32 33
  %902 = getelementptr inbounds %struct.Reg, %struct.Reg* %901, i32 0, i32 0
  %PC.i153 = bitcast %union.anon* %902 to i64*
  %903 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %904 = getelementptr inbounds %struct.GPR, %struct.GPR* %903, i32 0, i32 1
  %905 = getelementptr inbounds %struct.Reg, %struct.Reg* %904, i32 0, i32 0
  %RAX.i154 = bitcast %union.anon* %905 to i64*
  %906 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %907 = getelementptr inbounds %struct.GPR, %struct.GPR* %906, i32 0, i32 15
  %908 = getelementptr inbounds %struct.Reg, %struct.Reg* %907, i32 0, i32 0
  %RBP.i155 = bitcast %union.anon* %908 to i64*
  %909 = load i64, i64* %RBP.i155
  %910 = sub i64 %909, 28
  %911 = load i64, i64* %PC.i153
  %912 = add i64 %911, 3
  store i64 %912, i64* %PC.i153
  %913 = inttoptr i64 %910 to i32*
  %914 = load i32, i32* %913
  %915 = zext i32 %914 to i64
  store i64 %915, i64* %RAX.i154, align 8
  store %struct.Memory* %loadMem_451579, %struct.Memory** %MEMORY
  %loadMem_45157c = load %struct.Memory*, %struct.Memory** %MEMORY
  %916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %917 = getelementptr inbounds %struct.GPR, %struct.GPR* %916, i32 0, i32 33
  %918 = getelementptr inbounds %struct.Reg, %struct.Reg* %917, i32 0, i32 0
  %PC.i151 = bitcast %union.anon* %918 to i64*
  %919 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %920 = getelementptr inbounds %struct.GPR, %struct.GPR* %919, i32 0, i32 1
  %921 = getelementptr inbounds %struct.Reg, %struct.Reg* %920, i32 0, i32 0
  %RAX.i152 = bitcast %union.anon* %921 to i64*
  %922 = load i64, i64* %RAX.i152
  %923 = load i64, i64* %PC.i151
  %924 = add i64 %923, 3
  store i64 %924, i64* %PC.i151
  %925 = trunc i64 %922 to i32
  %926 = add i32 1, %925
  %927 = zext i32 %926 to i64
  store i64 %927, i64* %RAX.i152, align 8
  %928 = icmp ult i32 %926, %925
  %929 = icmp ult i32 %926, 1
  %930 = or i1 %928, %929
  %931 = zext i1 %930 to i8
  %932 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %931, i8* %932, align 1
  %933 = and i32 %926, 255
  %934 = call i32 @llvm.ctpop.i32(i32 %933)
  %935 = trunc i32 %934 to i8
  %936 = and i8 %935, 1
  %937 = xor i8 %936, 1
  %938 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %937, i8* %938, align 1
  %939 = xor i64 1, %922
  %940 = trunc i64 %939 to i32
  %941 = xor i32 %940, %926
  %942 = lshr i32 %941, 4
  %943 = trunc i32 %942 to i8
  %944 = and i8 %943, 1
  %945 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %944, i8* %945, align 1
  %946 = icmp eq i32 %926, 0
  %947 = zext i1 %946 to i8
  %948 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %947, i8* %948, align 1
  %949 = lshr i32 %926, 31
  %950 = trunc i32 %949 to i8
  %951 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %950, i8* %951, align 1
  %952 = lshr i32 %925, 31
  %953 = xor i32 %949, %952
  %954 = add i32 %953, %949
  %955 = icmp eq i32 %954, 2
  %956 = zext i1 %955 to i8
  %957 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %956, i8* %957, align 1
  store %struct.Memory* %loadMem_45157c, %struct.Memory** %MEMORY
  %loadMem_45157f = load %struct.Memory*, %struct.Memory** %MEMORY
  %958 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %959 = getelementptr inbounds %struct.GPR, %struct.GPR* %958, i32 0, i32 33
  %960 = getelementptr inbounds %struct.Reg, %struct.Reg* %959, i32 0, i32 0
  %PC.i148 = bitcast %union.anon* %960 to i64*
  %961 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %962 = getelementptr inbounds %struct.GPR, %struct.GPR* %961, i32 0, i32 1
  %963 = getelementptr inbounds %struct.Reg, %struct.Reg* %962, i32 0, i32 0
  %EAX.i149 = bitcast %union.anon* %963 to i32*
  %964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %965 = getelementptr inbounds %struct.GPR, %struct.GPR* %964, i32 0, i32 15
  %966 = getelementptr inbounds %struct.Reg, %struct.Reg* %965, i32 0, i32 0
  %RBP.i150 = bitcast %union.anon* %966 to i64*
  %967 = load i64, i64* %RBP.i150
  %968 = sub i64 %967, 28
  %969 = load i32, i32* %EAX.i149
  %970 = zext i32 %969 to i64
  %971 = load i64, i64* %PC.i148
  %972 = add i64 %971, 3
  store i64 %972, i64* %PC.i148
  %973 = inttoptr i64 %968 to i32*
  store i32 %969, i32* %973
  store %struct.Memory* %loadMem_45157f, %struct.Memory** %MEMORY
  %loadMem_451582 = load %struct.Memory*, %struct.Memory** %MEMORY
  %974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %975 = getelementptr inbounds %struct.GPR, %struct.GPR* %974, i32 0, i32 33
  %976 = getelementptr inbounds %struct.Reg, %struct.Reg* %975, i32 0, i32 0
  %PC.i147 = bitcast %union.anon* %976 to i64*
  %977 = load i64, i64* %PC.i147
  %978 = add i64 %977, 204
  %979 = load i64, i64* %PC.i147
  %980 = add i64 %979, 5
  store i64 %980, i64* %PC.i147
  %981 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %978, i64* %981, align 8
  store %struct.Memory* %loadMem_451582, %struct.Memory** %MEMORY
  br label %block_.L_45164e

block_.L_451587:                                  ; preds = %block_451554
  %loadMem_451587 = load %struct.Memory*, %struct.Memory** %MEMORY
  %982 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %983 = getelementptr inbounds %struct.GPR, %struct.GPR* %982, i32 0, i32 33
  %984 = getelementptr inbounds %struct.Reg, %struct.Reg* %983, i32 0, i32 0
  %PC.i144 = bitcast %union.anon* %984 to i64*
  %985 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %986 = getelementptr inbounds %struct.GPR, %struct.GPR* %985, i32 0, i32 1
  %987 = getelementptr inbounds %struct.Reg, %struct.Reg* %986, i32 0, i32 0
  %RAX.i145 = bitcast %union.anon* %987 to i64*
  %988 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %989 = getelementptr inbounds %struct.GPR, %struct.GPR* %988, i32 0, i32 15
  %990 = getelementptr inbounds %struct.Reg, %struct.Reg* %989, i32 0, i32 0
  %RBP.i146 = bitcast %union.anon* %990 to i64*
  %991 = load i64, i64* %RBP.i146
  %992 = sub i64 %991, 16
  %993 = load i64, i64* %PC.i144
  %994 = add i64 %993, 4
  store i64 %994, i64* %PC.i144
  %995 = inttoptr i64 %992 to i64*
  %996 = load i64, i64* %995
  store i64 %996, i64* %RAX.i145, align 8
  store %struct.Memory* %loadMem_451587, %struct.Memory** %MEMORY
  %loadMem_45158b = load %struct.Memory*, %struct.Memory** %MEMORY
  %997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %998 = getelementptr inbounds %struct.GPR, %struct.GPR* %997, i32 0, i32 33
  %999 = getelementptr inbounds %struct.Reg, %struct.Reg* %998, i32 0, i32 0
  %PC.i141 = bitcast %union.anon* %999 to i64*
  %1000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1001 = getelementptr inbounds %struct.GPR, %struct.GPR* %1000, i32 0, i32 1
  %1002 = getelementptr inbounds %struct.Reg, %struct.Reg* %1001, i32 0, i32 0
  %RAX.i142 = bitcast %union.anon* %1002 to i64*
  %1003 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1004 = getelementptr inbounds %struct.GPR, %struct.GPR* %1003, i32 0, i32 5
  %1005 = getelementptr inbounds %struct.Reg, %struct.Reg* %1004, i32 0, i32 0
  %RCX.i143 = bitcast %union.anon* %1005 to i64*
  %1006 = load i64, i64* %RAX.i142
  %1007 = load i64, i64* %PC.i141
  %1008 = add i64 %1007, 3
  store i64 %1008, i64* %PC.i141
  %1009 = inttoptr i64 %1006 to i8*
  %1010 = load i8, i8* %1009
  %1011 = sext i8 %1010 to i64
  %1012 = and i64 %1011, 4294967295
  store i64 %1012, i64* %RCX.i143, align 8
  store %struct.Memory* %loadMem_45158b, %struct.Memory** %MEMORY
  %loadMem_45158e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1013 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1014 = getelementptr inbounds %struct.GPR, %struct.GPR* %1013, i32 0, i32 33
  %1015 = getelementptr inbounds %struct.Reg, %struct.Reg* %1014, i32 0, i32 0
  %PC.i139 = bitcast %union.anon* %1015 to i64*
  %1016 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1017 = getelementptr inbounds %struct.GPR, %struct.GPR* %1016, i32 0, i32 5
  %1018 = getelementptr inbounds %struct.Reg, %struct.Reg* %1017, i32 0, i32 0
  %ECX.i140 = bitcast %union.anon* %1018 to i32*
  %1019 = load i32, i32* %ECX.i140
  %1020 = zext i32 %1019 to i64
  %1021 = load i64, i64* %PC.i139
  %1022 = add i64 %1021, 3
  store i64 %1022, i64* %PC.i139
  %1023 = sub i32 %1019, 46
  %1024 = icmp ult i32 %1019, 46
  %1025 = zext i1 %1024 to i8
  %1026 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1025, i8* %1026, align 1
  %1027 = and i32 %1023, 255
  %1028 = call i32 @llvm.ctpop.i32(i32 %1027)
  %1029 = trunc i32 %1028 to i8
  %1030 = and i8 %1029, 1
  %1031 = xor i8 %1030, 1
  %1032 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1031, i8* %1032, align 1
  %1033 = xor i64 46, %1020
  %1034 = trunc i64 %1033 to i32
  %1035 = xor i32 %1034, %1023
  %1036 = lshr i32 %1035, 4
  %1037 = trunc i32 %1036 to i8
  %1038 = and i8 %1037, 1
  %1039 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1038, i8* %1039, align 1
  %1040 = icmp eq i32 %1023, 0
  %1041 = zext i1 %1040 to i8
  %1042 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1041, i8* %1042, align 1
  %1043 = lshr i32 %1023, 31
  %1044 = trunc i32 %1043 to i8
  %1045 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1044, i8* %1045, align 1
  %1046 = lshr i32 %1019, 31
  %1047 = xor i32 %1043, %1046
  %1048 = add i32 %1047, %1046
  %1049 = icmp eq i32 %1048, 2
  %1050 = zext i1 %1049 to i8
  %1051 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1050, i8* %1051, align 1
  store %struct.Memory* %loadMem_45158e, %struct.Memory** %MEMORY
  %loadMem_451591 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1052 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1053 = getelementptr inbounds %struct.GPR, %struct.GPR* %1052, i32 0, i32 33
  %1054 = getelementptr inbounds %struct.Reg, %struct.Reg* %1053, i32 0, i32 0
  %PC.i138 = bitcast %union.anon* %1054 to i64*
  %1055 = load i64, i64* %PC.i138
  %1056 = add i64 %1055, 64
  %1057 = load i64, i64* %PC.i138
  %1058 = add i64 %1057, 6
  %1059 = load i64, i64* %PC.i138
  %1060 = add i64 %1059, 6
  store i64 %1060, i64* %PC.i138
  %1061 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1062 = load i8, i8* %1061, align 1
  %1063 = icmp eq i8 %1062, 0
  %1064 = zext i1 %1063 to i8
  store i8 %1064, i8* %BRANCH_TAKEN, align 1
  %1065 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1066 = select i1 %1063, i64 %1056, i64 %1058
  store i64 %1066, i64* %1065, align 8
  store %struct.Memory* %loadMem_451591, %struct.Memory** %MEMORY
  %loadBr_451591 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_451591 = icmp eq i8 %loadBr_451591, 1
  br i1 %cmpBr_451591, label %block_.L_4515d1, label %block_451597

block_451597:                                     ; preds = %block_.L_451587
  %loadMem_451597 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1068 = getelementptr inbounds %struct.GPR, %struct.GPR* %1067, i32 0, i32 33
  %1069 = getelementptr inbounds %struct.Reg, %struct.Reg* %1068, i32 0, i32 0
  %PC.i136 = bitcast %union.anon* %1069 to i64*
  %1070 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1071 = getelementptr inbounds %struct.GPR, %struct.GPR* %1070, i32 0, i32 15
  %1072 = getelementptr inbounds %struct.Reg, %struct.Reg* %1071, i32 0, i32 0
  %RBP.i137 = bitcast %union.anon* %1072 to i64*
  %1073 = load i64, i64* %RBP.i137
  %1074 = sub i64 %1073, 20
  %1075 = load i64, i64* %PC.i136
  %1076 = add i64 %1075, 4
  store i64 %1076, i64* %PC.i136
  %1077 = inttoptr i64 %1074 to i32*
  %1078 = load i32, i32* %1077
  %1079 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1079, align 1
  %1080 = and i32 %1078, 255
  %1081 = call i32 @llvm.ctpop.i32(i32 %1080)
  %1082 = trunc i32 %1081 to i8
  %1083 = and i8 %1082, 1
  %1084 = xor i8 %1083, 1
  %1085 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1084, i8* %1085, align 1
  %1086 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1086, align 1
  %1087 = icmp eq i32 %1078, 0
  %1088 = zext i1 %1087 to i8
  %1089 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1088, i8* %1089, align 1
  %1090 = lshr i32 %1078, 31
  %1091 = trunc i32 %1090 to i8
  %1092 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1091, i8* %1092, align 1
  %1093 = lshr i32 %1078, 31
  %1094 = xor i32 %1090, %1093
  %1095 = add i32 %1094, %1093
  %1096 = icmp eq i32 %1095, 2
  %1097 = zext i1 %1096 to i8
  %1098 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1097, i8* %1098, align 1
  store %struct.Memory* %loadMem_451597, %struct.Memory** %MEMORY
  %loadMem_45159b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1099 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1100 = getelementptr inbounds %struct.GPR, %struct.GPR* %1099, i32 0, i32 33
  %1101 = getelementptr inbounds %struct.Reg, %struct.Reg* %1100, i32 0, i32 0
  %PC.i135 = bitcast %union.anon* %1101 to i64*
  %1102 = load i64, i64* %PC.i135
  %1103 = add i64 %1102, 18
  %1104 = load i64, i64* %PC.i135
  %1105 = add i64 %1104, 6
  %1106 = load i64, i64* %PC.i135
  %1107 = add i64 %1106, 6
  store i64 %1107, i64* %PC.i135
  %1108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1109 = load i8, i8* %1108, align 1
  store i8 %1109, i8* %BRANCH_TAKEN, align 1
  %1110 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1111 = icmp ne i8 %1109, 0
  %1112 = select i1 %1111, i64 %1103, i64 %1105
  store i64 %1112, i64* %1110, align 8
  store %struct.Memory* %loadMem_45159b, %struct.Memory** %MEMORY
  %loadBr_45159b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45159b = icmp eq i8 %loadBr_45159b, 1
  br i1 %cmpBr_45159b, label %block_.L_4515ad, label %block_4515a1

block_4515a1:                                     ; preds = %block_451597
  %loadMem_4515a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1114 = getelementptr inbounds %struct.GPR, %struct.GPR* %1113, i32 0, i32 33
  %1115 = getelementptr inbounds %struct.Reg, %struct.Reg* %1114, i32 0, i32 0
  %PC.i133 = bitcast %union.anon* %1115 to i64*
  %1116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1117 = getelementptr inbounds %struct.GPR, %struct.GPR* %1116, i32 0, i32 15
  %1118 = getelementptr inbounds %struct.Reg, %struct.Reg* %1117, i32 0, i32 0
  %RBP.i134 = bitcast %union.anon* %1118 to i64*
  %1119 = load i64, i64* %RBP.i134
  %1120 = sub i64 %1119, 4
  %1121 = load i64, i64* %PC.i133
  %1122 = add i64 %1121, 7
  store i64 %1122, i64* %PC.i133
  %1123 = inttoptr i64 %1120 to i32*
  store i32 0, i32* %1123
  store %struct.Memory* %loadMem_4515a1, %struct.Memory** %MEMORY
  %loadMem_4515a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1125 = getelementptr inbounds %struct.GPR, %struct.GPR* %1124, i32 0, i32 33
  %1126 = getelementptr inbounds %struct.Reg, %struct.Reg* %1125, i32 0, i32 0
  %PC.i132 = bitcast %union.anon* %1126 to i64*
  %1127 = load i64, i64* %PC.i132
  %1128 = add i64 %1127, 287
  %1129 = load i64, i64* %PC.i132
  %1130 = add i64 %1129, 5
  store i64 %1130, i64* %PC.i132
  %1131 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1128, i64* %1131, align 8
  store %struct.Memory* %loadMem_4515a8, %struct.Memory** %MEMORY
  br label %block_.L_4516c7

block_.L_4515ad:                                  ; preds = %block_451597
  %loadMem_4515ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %1132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1133 = getelementptr inbounds %struct.GPR, %struct.GPR* %1132, i32 0, i32 33
  %1134 = getelementptr inbounds %struct.Reg, %struct.Reg* %1133, i32 0, i32 0
  %PC.i130 = bitcast %union.anon* %1134 to i64*
  %1135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1136 = getelementptr inbounds %struct.GPR, %struct.GPR* %1135, i32 0, i32 15
  %1137 = getelementptr inbounds %struct.Reg, %struct.Reg* %1136, i32 0, i32 0
  %RBP.i131 = bitcast %union.anon* %1137 to i64*
  %1138 = load i64, i64* %RBP.i131
  %1139 = sub i64 %1138, 24
  %1140 = load i64, i64* %PC.i130
  %1141 = add i64 %1140, 4
  store i64 %1141, i64* %PC.i130
  %1142 = inttoptr i64 %1139 to i32*
  %1143 = load i32, i32* %1142
  %1144 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1144, align 1
  %1145 = and i32 %1143, 255
  %1146 = call i32 @llvm.ctpop.i32(i32 %1145)
  %1147 = trunc i32 %1146 to i8
  %1148 = and i8 %1147, 1
  %1149 = xor i8 %1148, 1
  %1150 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1149, i8* %1150, align 1
  %1151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1151, align 1
  %1152 = icmp eq i32 %1143, 0
  %1153 = zext i1 %1152 to i8
  %1154 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1153, i8* %1154, align 1
  %1155 = lshr i32 %1143, 31
  %1156 = trunc i32 %1155 to i8
  %1157 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1156, i8* %1157, align 1
  %1158 = lshr i32 %1143, 31
  %1159 = xor i32 %1155, %1158
  %1160 = add i32 %1159, %1158
  %1161 = icmp eq i32 %1160, 2
  %1162 = zext i1 %1161 to i8
  %1163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1162, i8* %1163, align 1
  store %struct.Memory* %loadMem_4515ad, %struct.Memory** %MEMORY
  %loadMem_4515b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1165 = getelementptr inbounds %struct.GPR, %struct.GPR* %1164, i32 0, i32 33
  %1166 = getelementptr inbounds %struct.Reg, %struct.Reg* %1165, i32 0, i32 0
  %PC.i129 = bitcast %union.anon* %1166 to i64*
  %1167 = load i64, i64* %PC.i129
  %1168 = add i64 %1167, 18
  %1169 = load i64, i64* %PC.i129
  %1170 = add i64 %1169, 6
  %1171 = load i64, i64* %PC.i129
  %1172 = add i64 %1171, 6
  store i64 %1172, i64* %PC.i129
  %1173 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1174 = load i8, i8* %1173, align 1
  store i8 %1174, i8* %BRANCH_TAKEN, align 1
  %1175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1176 = icmp ne i8 %1174, 0
  %1177 = select i1 %1176, i64 %1168, i64 %1170
  store i64 %1177, i64* %1175, align 8
  store %struct.Memory* %loadMem_4515b1, %struct.Memory** %MEMORY
  %loadBr_4515b1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4515b1 = icmp eq i8 %loadBr_4515b1, 1
  br i1 %cmpBr_4515b1, label %block_.L_4515c3, label %block_4515b7

block_4515b7:                                     ; preds = %block_.L_4515ad
  %loadMem_4515b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1179 = getelementptr inbounds %struct.GPR, %struct.GPR* %1178, i32 0, i32 33
  %1180 = getelementptr inbounds %struct.Reg, %struct.Reg* %1179, i32 0, i32 0
  %PC.i127 = bitcast %union.anon* %1180 to i64*
  %1181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1182 = getelementptr inbounds %struct.GPR, %struct.GPR* %1181, i32 0, i32 15
  %1183 = getelementptr inbounds %struct.Reg, %struct.Reg* %1182, i32 0, i32 0
  %RBP.i128 = bitcast %union.anon* %1183 to i64*
  %1184 = load i64, i64* %RBP.i128
  %1185 = sub i64 %1184, 4
  %1186 = load i64, i64* %PC.i127
  %1187 = add i64 %1186, 7
  store i64 %1187, i64* %PC.i127
  %1188 = inttoptr i64 %1185 to i32*
  store i32 0, i32* %1188
  store %struct.Memory* %loadMem_4515b7, %struct.Memory** %MEMORY
  %loadMem_4515be = load %struct.Memory*, %struct.Memory** %MEMORY
  %1189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1190 = getelementptr inbounds %struct.GPR, %struct.GPR* %1189, i32 0, i32 33
  %1191 = getelementptr inbounds %struct.Reg, %struct.Reg* %1190, i32 0, i32 0
  %PC.i126 = bitcast %union.anon* %1191 to i64*
  %1192 = load i64, i64* %PC.i126
  %1193 = add i64 %1192, 265
  %1194 = load i64, i64* %PC.i126
  %1195 = add i64 %1194, 5
  store i64 %1195, i64* %PC.i126
  %1196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1193, i64* %1196, align 8
  store %struct.Memory* %loadMem_4515be, %struct.Memory** %MEMORY
  br label %block_.L_4516c7

block_.L_4515c3:                                  ; preds = %block_.L_4515ad
  %loadMem_4515c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1198 = getelementptr inbounds %struct.GPR, %struct.GPR* %1197, i32 0, i32 33
  %1199 = getelementptr inbounds %struct.Reg, %struct.Reg* %1198, i32 0, i32 0
  %PC.i123 = bitcast %union.anon* %1199 to i64*
  %1200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1201 = getelementptr inbounds %struct.GPR, %struct.GPR* %1200, i32 0, i32 1
  %1202 = getelementptr inbounds %struct.Reg, %struct.Reg* %1201, i32 0, i32 0
  %RAX.i124 = bitcast %union.anon* %1202 to i64*
  %1203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1204 = getelementptr inbounds %struct.GPR, %struct.GPR* %1203, i32 0, i32 15
  %1205 = getelementptr inbounds %struct.Reg, %struct.Reg* %1204, i32 0, i32 0
  %RBP.i125 = bitcast %union.anon* %1205 to i64*
  %1206 = load i64, i64* %RBP.i125
  %1207 = sub i64 %1206, 20
  %1208 = load i64, i64* %PC.i123
  %1209 = add i64 %1208, 3
  store i64 %1209, i64* %PC.i123
  %1210 = inttoptr i64 %1207 to i32*
  %1211 = load i32, i32* %1210
  %1212 = zext i32 %1211 to i64
  store i64 %1212, i64* %RAX.i124, align 8
  store %struct.Memory* %loadMem_4515c3, %struct.Memory** %MEMORY
  %loadMem_4515c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1214 = getelementptr inbounds %struct.GPR, %struct.GPR* %1213, i32 0, i32 33
  %1215 = getelementptr inbounds %struct.Reg, %struct.Reg* %1214, i32 0, i32 0
  %PC.i121 = bitcast %union.anon* %1215 to i64*
  %1216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1217 = getelementptr inbounds %struct.GPR, %struct.GPR* %1216, i32 0, i32 1
  %1218 = getelementptr inbounds %struct.Reg, %struct.Reg* %1217, i32 0, i32 0
  %RAX.i122 = bitcast %union.anon* %1218 to i64*
  %1219 = load i64, i64* %RAX.i122
  %1220 = load i64, i64* %PC.i121
  %1221 = add i64 %1220, 3
  store i64 %1221, i64* %PC.i121
  %1222 = trunc i64 %1219 to i32
  %1223 = add i32 1, %1222
  %1224 = zext i32 %1223 to i64
  store i64 %1224, i64* %RAX.i122, align 8
  %1225 = icmp ult i32 %1223, %1222
  %1226 = icmp ult i32 %1223, 1
  %1227 = or i1 %1225, %1226
  %1228 = zext i1 %1227 to i8
  %1229 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1228, i8* %1229, align 1
  %1230 = and i32 %1223, 255
  %1231 = call i32 @llvm.ctpop.i32(i32 %1230)
  %1232 = trunc i32 %1231 to i8
  %1233 = and i8 %1232, 1
  %1234 = xor i8 %1233, 1
  %1235 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1234, i8* %1235, align 1
  %1236 = xor i64 1, %1219
  %1237 = trunc i64 %1236 to i32
  %1238 = xor i32 %1237, %1223
  %1239 = lshr i32 %1238, 4
  %1240 = trunc i32 %1239 to i8
  %1241 = and i8 %1240, 1
  %1242 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1241, i8* %1242, align 1
  %1243 = icmp eq i32 %1223, 0
  %1244 = zext i1 %1243 to i8
  %1245 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1244, i8* %1245, align 1
  %1246 = lshr i32 %1223, 31
  %1247 = trunc i32 %1246 to i8
  %1248 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1247, i8* %1248, align 1
  %1249 = lshr i32 %1222, 31
  %1250 = xor i32 %1246, %1249
  %1251 = add i32 %1250, %1246
  %1252 = icmp eq i32 %1251, 2
  %1253 = zext i1 %1252 to i8
  %1254 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1253, i8* %1254, align 1
  store %struct.Memory* %loadMem_4515c6, %struct.Memory** %MEMORY
  %loadMem_4515c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1256 = getelementptr inbounds %struct.GPR, %struct.GPR* %1255, i32 0, i32 33
  %1257 = getelementptr inbounds %struct.Reg, %struct.Reg* %1256, i32 0, i32 0
  %PC.i118 = bitcast %union.anon* %1257 to i64*
  %1258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1259 = getelementptr inbounds %struct.GPR, %struct.GPR* %1258, i32 0, i32 1
  %1260 = getelementptr inbounds %struct.Reg, %struct.Reg* %1259, i32 0, i32 0
  %EAX.i119 = bitcast %union.anon* %1260 to i32*
  %1261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1262 = getelementptr inbounds %struct.GPR, %struct.GPR* %1261, i32 0, i32 15
  %1263 = getelementptr inbounds %struct.Reg, %struct.Reg* %1262, i32 0, i32 0
  %RBP.i120 = bitcast %union.anon* %1263 to i64*
  %1264 = load i64, i64* %RBP.i120
  %1265 = sub i64 %1264, 20
  %1266 = load i32, i32* %EAX.i119
  %1267 = zext i32 %1266 to i64
  %1268 = load i64, i64* %PC.i118
  %1269 = add i64 %1268, 3
  store i64 %1269, i64* %PC.i118
  %1270 = inttoptr i64 %1265 to i32*
  store i32 %1266, i32* %1270
  store %struct.Memory* %loadMem_4515c9, %struct.Memory** %MEMORY
  %loadMem_4515cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1272 = getelementptr inbounds %struct.GPR, %struct.GPR* %1271, i32 0, i32 33
  %1273 = getelementptr inbounds %struct.Reg, %struct.Reg* %1272, i32 0, i32 0
  %PC.i117 = bitcast %union.anon* %1273 to i64*
  %1274 = load i64, i64* %PC.i117
  %1275 = add i64 %1274, 125
  %1276 = load i64, i64* %PC.i117
  %1277 = add i64 %1276, 5
  store i64 %1277, i64* %PC.i117
  %1278 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1275, i64* %1278, align 8
  store %struct.Memory* %loadMem_4515cc, %struct.Memory** %MEMORY
  br label %block_.L_451649

block_.L_4515d1:                                  ; preds = %block_.L_451587
  %loadMem_4515d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1280 = getelementptr inbounds %struct.GPR, %struct.GPR* %1279, i32 0, i32 33
  %1281 = getelementptr inbounds %struct.Reg, %struct.Reg* %1280, i32 0, i32 0
  %PC.i114 = bitcast %union.anon* %1281 to i64*
  %1282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1283 = getelementptr inbounds %struct.GPR, %struct.GPR* %1282, i32 0, i32 1
  %1284 = getelementptr inbounds %struct.Reg, %struct.Reg* %1283, i32 0, i32 0
  %RAX.i115 = bitcast %union.anon* %1284 to i64*
  %1285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1286 = getelementptr inbounds %struct.GPR, %struct.GPR* %1285, i32 0, i32 15
  %1287 = getelementptr inbounds %struct.Reg, %struct.Reg* %1286, i32 0, i32 0
  %RBP.i116 = bitcast %union.anon* %1287 to i64*
  %1288 = load i64, i64* %RBP.i116
  %1289 = sub i64 %1288, 16
  %1290 = load i64, i64* %PC.i114
  %1291 = add i64 %1290, 4
  store i64 %1291, i64* %PC.i114
  %1292 = inttoptr i64 %1289 to i64*
  %1293 = load i64, i64* %1292
  store i64 %1293, i64* %RAX.i115, align 8
  store %struct.Memory* %loadMem_4515d1, %struct.Memory** %MEMORY
  %loadMem_4515d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1295 = getelementptr inbounds %struct.GPR, %struct.GPR* %1294, i32 0, i32 33
  %1296 = getelementptr inbounds %struct.Reg, %struct.Reg* %1295, i32 0, i32 0
  %PC.i111 = bitcast %union.anon* %1296 to i64*
  %1297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1298 = getelementptr inbounds %struct.GPR, %struct.GPR* %1297, i32 0, i32 1
  %1299 = getelementptr inbounds %struct.Reg, %struct.Reg* %1298, i32 0, i32 0
  %RAX.i112 = bitcast %union.anon* %1299 to i64*
  %1300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1301 = getelementptr inbounds %struct.GPR, %struct.GPR* %1300, i32 0, i32 5
  %1302 = getelementptr inbounds %struct.Reg, %struct.Reg* %1301, i32 0, i32 0
  %RCX.i113 = bitcast %union.anon* %1302 to i64*
  %1303 = load i64, i64* %RAX.i112
  %1304 = load i64, i64* %PC.i111
  %1305 = add i64 %1304, 3
  store i64 %1305, i64* %PC.i111
  %1306 = inttoptr i64 %1303 to i8*
  %1307 = load i8, i8* %1306
  %1308 = sext i8 %1307 to i64
  %1309 = and i64 %1308, 4294967295
  store i64 %1309, i64* %RCX.i113, align 8
  store %struct.Memory* %loadMem_4515d5, %struct.Memory** %MEMORY
  %loadMem_4515d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1311 = getelementptr inbounds %struct.GPR, %struct.GPR* %1310, i32 0, i32 33
  %1312 = getelementptr inbounds %struct.Reg, %struct.Reg* %1311, i32 0, i32 0
  %PC.i109 = bitcast %union.anon* %1312 to i64*
  %1313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1314 = getelementptr inbounds %struct.GPR, %struct.GPR* %1313, i32 0, i32 5
  %1315 = getelementptr inbounds %struct.Reg, %struct.Reg* %1314, i32 0, i32 0
  %ECX.i110 = bitcast %union.anon* %1315 to i32*
  %1316 = load i32, i32* %ECX.i110
  %1317 = zext i32 %1316 to i64
  %1318 = load i64, i64* %PC.i109
  %1319 = add i64 %1318, 3
  store i64 %1319, i64* %PC.i109
  %1320 = sub i32 %1316, 101
  %1321 = icmp ult i32 %1316, 101
  %1322 = zext i1 %1321 to i8
  %1323 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1322, i8* %1323, align 1
  %1324 = and i32 %1320, 255
  %1325 = call i32 @llvm.ctpop.i32(i32 %1324)
  %1326 = trunc i32 %1325 to i8
  %1327 = and i8 %1326, 1
  %1328 = xor i8 %1327, 1
  %1329 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1328, i8* %1329, align 1
  %1330 = xor i64 101, %1317
  %1331 = trunc i64 %1330 to i32
  %1332 = xor i32 %1331, %1320
  %1333 = lshr i32 %1332, 4
  %1334 = trunc i32 %1333 to i8
  %1335 = and i8 %1334, 1
  %1336 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1335, i8* %1336, align 1
  %1337 = icmp eq i32 %1320, 0
  %1338 = zext i1 %1337 to i8
  %1339 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1338, i8* %1339, align 1
  %1340 = lshr i32 %1320, 31
  %1341 = trunc i32 %1340 to i8
  %1342 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1341, i8* %1342, align 1
  %1343 = lshr i32 %1316, 31
  %1344 = xor i32 %1340, %1343
  %1345 = add i32 %1344, %1343
  %1346 = icmp eq i32 %1345, 2
  %1347 = zext i1 %1346 to i8
  %1348 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1347, i8* %1348, align 1
  store %struct.Memory* %loadMem_4515d8, %struct.Memory** %MEMORY
  %loadMem_4515db = load %struct.Memory*, %struct.Memory** %MEMORY
  %1349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1350 = getelementptr inbounds %struct.GPR, %struct.GPR* %1349, i32 0, i32 33
  %1351 = getelementptr inbounds %struct.Reg, %struct.Reg* %1350, i32 0, i32 0
  %PC.i108 = bitcast %union.anon* %1351 to i64*
  %1352 = load i64, i64* %PC.i108
  %1353 = add i64 %1352, 22
  %1354 = load i64, i64* %PC.i108
  %1355 = add i64 %1354, 6
  %1356 = load i64, i64* %PC.i108
  %1357 = add i64 %1356, 6
  store i64 %1357, i64* %PC.i108
  %1358 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1359 = load i8, i8* %1358, align 1
  store i8 %1359, i8* %BRANCH_TAKEN, align 1
  %1360 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1361 = icmp ne i8 %1359, 0
  %1362 = select i1 %1361, i64 %1353, i64 %1355
  store i64 %1362, i64* %1360, align 8
  store %struct.Memory* %loadMem_4515db, %struct.Memory** %MEMORY
  %loadBr_4515db = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4515db = icmp eq i8 %loadBr_4515db, 1
  br i1 %cmpBr_4515db, label %block_.L_4515f1, label %block_4515e1

block_4515e1:                                     ; preds = %block_.L_4515d1
  %loadMem_4515e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1364 = getelementptr inbounds %struct.GPR, %struct.GPR* %1363, i32 0, i32 33
  %1365 = getelementptr inbounds %struct.Reg, %struct.Reg* %1364, i32 0, i32 0
  %PC.i105 = bitcast %union.anon* %1365 to i64*
  %1366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1367 = getelementptr inbounds %struct.GPR, %struct.GPR* %1366, i32 0, i32 1
  %1368 = getelementptr inbounds %struct.Reg, %struct.Reg* %1367, i32 0, i32 0
  %RAX.i106 = bitcast %union.anon* %1368 to i64*
  %1369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1370 = getelementptr inbounds %struct.GPR, %struct.GPR* %1369, i32 0, i32 15
  %1371 = getelementptr inbounds %struct.Reg, %struct.Reg* %1370, i32 0, i32 0
  %RBP.i107 = bitcast %union.anon* %1371 to i64*
  %1372 = load i64, i64* %RBP.i107
  %1373 = sub i64 %1372, 16
  %1374 = load i64, i64* %PC.i105
  %1375 = add i64 %1374, 4
  store i64 %1375, i64* %PC.i105
  %1376 = inttoptr i64 %1373 to i64*
  %1377 = load i64, i64* %1376
  store i64 %1377, i64* %RAX.i106, align 8
  store %struct.Memory* %loadMem_4515e1, %struct.Memory** %MEMORY
  %loadMem_4515e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1379 = getelementptr inbounds %struct.GPR, %struct.GPR* %1378, i32 0, i32 33
  %1380 = getelementptr inbounds %struct.Reg, %struct.Reg* %1379, i32 0, i32 0
  %PC.i102 = bitcast %union.anon* %1380 to i64*
  %1381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1382 = getelementptr inbounds %struct.GPR, %struct.GPR* %1381, i32 0, i32 1
  %1383 = getelementptr inbounds %struct.Reg, %struct.Reg* %1382, i32 0, i32 0
  %RAX.i103 = bitcast %union.anon* %1383 to i64*
  %1384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1385 = getelementptr inbounds %struct.GPR, %struct.GPR* %1384, i32 0, i32 5
  %1386 = getelementptr inbounds %struct.Reg, %struct.Reg* %1385, i32 0, i32 0
  %RCX.i104 = bitcast %union.anon* %1386 to i64*
  %1387 = load i64, i64* %RAX.i103
  %1388 = load i64, i64* %PC.i102
  %1389 = add i64 %1388, 3
  store i64 %1389, i64* %PC.i102
  %1390 = inttoptr i64 %1387 to i8*
  %1391 = load i8, i8* %1390
  %1392 = sext i8 %1391 to i64
  %1393 = and i64 %1392, 4294967295
  store i64 %1393, i64* %RCX.i104, align 8
  store %struct.Memory* %loadMem_4515e5, %struct.Memory** %MEMORY
  %loadMem_4515e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1395 = getelementptr inbounds %struct.GPR, %struct.GPR* %1394, i32 0, i32 33
  %1396 = getelementptr inbounds %struct.Reg, %struct.Reg* %1395, i32 0, i32 0
  %PC.i100 = bitcast %union.anon* %1396 to i64*
  %1397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1398 = getelementptr inbounds %struct.GPR, %struct.GPR* %1397, i32 0, i32 5
  %1399 = getelementptr inbounds %struct.Reg, %struct.Reg* %1398, i32 0, i32 0
  %ECX.i101 = bitcast %union.anon* %1399 to i32*
  %1400 = load i32, i32* %ECX.i101
  %1401 = zext i32 %1400 to i64
  %1402 = load i64, i64* %PC.i100
  %1403 = add i64 %1402, 3
  store i64 %1403, i64* %PC.i100
  %1404 = sub i32 %1400, 69
  %1405 = icmp ult i32 %1400, 69
  %1406 = zext i1 %1405 to i8
  %1407 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1406, i8* %1407, align 1
  %1408 = and i32 %1404, 255
  %1409 = call i32 @llvm.ctpop.i32(i32 %1408)
  %1410 = trunc i32 %1409 to i8
  %1411 = and i8 %1410, 1
  %1412 = xor i8 %1411, 1
  %1413 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1412, i8* %1413, align 1
  %1414 = xor i64 69, %1401
  %1415 = trunc i64 %1414 to i32
  %1416 = xor i32 %1415, %1404
  %1417 = lshr i32 %1416, 4
  %1418 = trunc i32 %1417 to i8
  %1419 = and i8 %1418, 1
  %1420 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1419, i8* %1420, align 1
  %1421 = icmp eq i32 %1404, 0
  %1422 = zext i1 %1421 to i8
  %1423 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1422, i8* %1423, align 1
  %1424 = lshr i32 %1404, 31
  %1425 = trunc i32 %1424 to i8
  %1426 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1425, i8* %1426, align 1
  %1427 = lshr i32 %1400, 31
  %1428 = xor i32 %1424, %1427
  %1429 = add i32 %1428, %1427
  %1430 = icmp eq i32 %1429, 2
  %1431 = zext i1 %1430 to i8
  %1432 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1431, i8* %1432, align 1
  store %struct.Memory* %loadMem_4515e8, %struct.Memory** %MEMORY
  %loadMem_4515eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1433 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1434 = getelementptr inbounds %struct.GPR, %struct.GPR* %1433, i32 0, i32 33
  %1435 = getelementptr inbounds %struct.Reg, %struct.Reg* %1434, i32 0, i32 0
  %PC.i99 = bitcast %union.anon* %1435 to i64*
  %1436 = load i64, i64* %PC.i99
  %1437 = add i64 %1436, 42
  %1438 = load i64, i64* %PC.i99
  %1439 = add i64 %1438, 6
  %1440 = load i64, i64* %PC.i99
  %1441 = add i64 %1440, 6
  store i64 %1441, i64* %PC.i99
  %1442 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1443 = load i8, i8* %1442, align 1
  %1444 = icmp eq i8 %1443, 0
  %1445 = zext i1 %1444 to i8
  store i8 %1445, i8* %BRANCH_TAKEN, align 1
  %1446 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1447 = select i1 %1444, i64 %1437, i64 %1439
  store i64 %1447, i64* %1446, align 8
  store %struct.Memory* %loadMem_4515eb, %struct.Memory** %MEMORY
  %loadBr_4515eb = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4515eb = icmp eq i8 %loadBr_4515eb, 1
  br i1 %cmpBr_4515eb, label %block_.L_451615, label %block_.L_4515f1

block_.L_4515f1:                                  ; preds = %block_4515e1, %block_.L_4515d1
  %loadMem_4515f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1449 = getelementptr inbounds %struct.GPR, %struct.GPR* %1448, i32 0, i32 33
  %1450 = getelementptr inbounds %struct.Reg, %struct.Reg* %1449, i32 0, i32 0
  %PC.i97 = bitcast %union.anon* %1450 to i64*
  %1451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1452 = getelementptr inbounds %struct.GPR, %struct.GPR* %1451, i32 0, i32 15
  %1453 = getelementptr inbounds %struct.Reg, %struct.Reg* %1452, i32 0, i32 0
  %RBP.i98 = bitcast %union.anon* %1453 to i64*
  %1454 = load i64, i64* %RBP.i98
  %1455 = sub i64 %1454, 24
  %1456 = load i64, i64* %PC.i97
  %1457 = add i64 %1456, 4
  store i64 %1457, i64* %PC.i97
  %1458 = inttoptr i64 %1455 to i32*
  %1459 = load i32, i32* %1458
  %1460 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1460, align 1
  %1461 = and i32 %1459, 255
  %1462 = call i32 @llvm.ctpop.i32(i32 %1461)
  %1463 = trunc i32 %1462 to i8
  %1464 = and i8 %1463, 1
  %1465 = xor i8 %1464, 1
  %1466 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1465, i8* %1466, align 1
  %1467 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1467, align 1
  %1468 = icmp eq i32 %1459, 0
  %1469 = zext i1 %1468 to i8
  %1470 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1469, i8* %1470, align 1
  %1471 = lshr i32 %1459, 31
  %1472 = trunc i32 %1471 to i8
  %1473 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1472, i8* %1473, align 1
  %1474 = lshr i32 %1459, 31
  %1475 = xor i32 %1471, %1474
  %1476 = add i32 %1475, %1474
  %1477 = icmp eq i32 %1476, 2
  %1478 = zext i1 %1477 to i8
  %1479 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1478, i8* %1479, align 1
  store %struct.Memory* %loadMem_4515f1, %struct.Memory** %MEMORY
  %loadMem_4515f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1481 = getelementptr inbounds %struct.GPR, %struct.GPR* %1480, i32 0, i32 33
  %1482 = getelementptr inbounds %struct.Reg, %struct.Reg* %1481, i32 0, i32 0
  %PC.i96 = bitcast %union.anon* %1482 to i64*
  %1483 = load i64, i64* %PC.i96
  %1484 = add i64 %1483, 18
  %1485 = load i64, i64* %PC.i96
  %1486 = add i64 %1485, 6
  %1487 = load i64, i64* %PC.i96
  %1488 = add i64 %1487, 6
  store i64 %1488, i64* %PC.i96
  %1489 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1490 = load i8, i8* %1489, align 1
  store i8 %1490, i8* %BRANCH_TAKEN, align 1
  %1491 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1492 = icmp ne i8 %1490, 0
  %1493 = select i1 %1492, i64 %1484, i64 %1486
  store i64 %1493, i64* %1491, align 8
  store %struct.Memory* %loadMem_4515f5, %struct.Memory** %MEMORY
  %loadBr_4515f5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4515f5 = icmp eq i8 %loadBr_4515f5, 1
  br i1 %cmpBr_4515f5, label %block_.L_451607, label %block_4515fb

block_4515fb:                                     ; preds = %block_.L_4515f1
  %loadMem_4515fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1495 = getelementptr inbounds %struct.GPR, %struct.GPR* %1494, i32 0, i32 33
  %1496 = getelementptr inbounds %struct.Reg, %struct.Reg* %1495, i32 0, i32 0
  %PC.i94 = bitcast %union.anon* %1496 to i64*
  %1497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1498 = getelementptr inbounds %struct.GPR, %struct.GPR* %1497, i32 0, i32 15
  %1499 = getelementptr inbounds %struct.Reg, %struct.Reg* %1498, i32 0, i32 0
  %RBP.i95 = bitcast %union.anon* %1499 to i64*
  %1500 = load i64, i64* %RBP.i95
  %1501 = sub i64 %1500, 4
  %1502 = load i64, i64* %PC.i94
  %1503 = add i64 %1502, 7
  store i64 %1503, i64* %PC.i94
  %1504 = inttoptr i64 %1501 to i32*
  store i32 0, i32* %1504
  store %struct.Memory* %loadMem_4515fb, %struct.Memory** %MEMORY
  %loadMem_451602 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1505 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1506 = getelementptr inbounds %struct.GPR, %struct.GPR* %1505, i32 0, i32 33
  %1507 = getelementptr inbounds %struct.Reg, %struct.Reg* %1506, i32 0, i32 0
  %PC.i93 = bitcast %union.anon* %1507 to i64*
  %1508 = load i64, i64* %PC.i93
  %1509 = add i64 %1508, 197
  %1510 = load i64, i64* %PC.i93
  %1511 = add i64 %1510, 5
  store i64 %1511, i64* %PC.i93
  %1512 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1509, i64* %1512, align 8
  store %struct.Memory* %loadMem_451602, %struct.Memory** %MEMORY
  br label %block_.L_4516c7

block_.L_451607:                                  ; preds = %block_.L_4515f1
  %loadMem_451607 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1514 = getelementptr inbounds %struct.GPR, %struct.GPR* %1513, i32 0, i32 33
  %1515 = getelementptr inbounds %struct.Reg, %struct.Reg* %1514, i32 0, i32 0
  %PC.i90 = bitcast %union.anon* %1515 to i64*
  %1516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1517 = getelementptr inbounds %struct.GPR, %struct.GPR* %1516, i32 0, i32 1
  %1518 = getelementptr inbounds %struct.Reg, %struct.Reg* %1517, i32 0, i32 0
  %RAX.i91 = bitcast %union.anon* %1518 to i64*
  %1519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1520 = getelementptr inbounds %struct.GPR, %struct.GPR* %1519, i32 0, i32 15
  %1521 = getelementptr inbounds %struct.Reg, %struct.Reg* %1520, i32 0, i32 0
  %RBP.i92 = bitcast %union.anon* %1521 to i64*
  %1522 = load i64, i64* %RBP.i92
  %1523 = sub i64 %1522, 24
  %1524 = load i64, i64* %PC.i90
  %1525 = add i64 %1524, 3
  store i64 %1525, i64* %PC.i90
  %1526 = inttoptr i64 %1523 to i32*
  %1527 = load i32, i32* %1526
  %1528 = zext i32 %1527 to i64
  store i64 %1528, i64* %RAX.i91, align 8
  store %struct.Memory* %loadMem_451607, %struct.Memory** %MEMORY
  %loadMem_45160a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1530 = getelementptr inbounds %struct.GPR, %struct.GPR* %1529, i32 0, i32 33
  %1531 = getelementptr inbounds %struct.Reg, %struct.Reg* %1530, i32 0, i32 0
  %PC.i88 = bitcast %union.anon* %1531 to i64*
  %1532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1533 = getelementptr inbounds %struct.GPR, %struct.GPR* %1532, i32 0, i32 1
  %1534 = getelementptr inbounds %struct.Reg, %struct.Reg* %1533, i32 0, i32 0
  %RAX.i89 = bitcast %union.anon* %1534 to i64*
  %1535 = load i64, i64* %RAX.i89
  %1536 = load i64, i64* %PC.i88
  %1537 = add i64 %1536, 3
  store i64 %1537, i64* %PC.i88
  %1538 = trunc i64 %1535 to i32
  %1539 = add i32 1, %1538
  %1540 = zext i32 %1539 to i64
  store i64 %1540, i64* %RAX.i89, align 8
  %1541 = icmp ult i32 %1539, %1538
  %1542 = icmp ult i32 %1539, 1
  %1543 = or i1 %1541, %1542
  %1544 = zext i1 %1543 to i8
  %1545 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1544, i8* %1545, align 1
  %1546 = and i32 %1539, 255
  %1547 = call i32 @llvm.ctpop.i32(i32 %1546)
  %1548 = trunc i32 %1547 to i8
  %1549 = and i8 %1548, 1
  %1550 = xor i8 %1549, 1
  %1551 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1550, i8* %1551, align 1
  %1552 = xor i64 1, %1535
  %1553 = trunc i64 %1552 to i32
  %1554 = xor i32 %1553, %1539
  %1555 = lshr i32 %1554, 4
  %1556 = trunc i32 %1555 to i8
  %1557 = and i8 %1556, 1
  %1558 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1557, i8* %1558, align 1
  %1559 = icmp eq i32 %1539, 0
  %1560 = zext i1 %1559 to i8
  %1561 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1560, i8* %1561, align 1
  %1562 = lshr i32 %1539, 31
  %1563 = trunc i32 %1562 to i8
  %1564 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1563, i8* %1564, align 1
  %1565 = lshr i32 %1538, 31
  %1566 = xor i32 %1562, %1565
  %1567 = add i32 %1566, %1562
  %1568 = icmp eq i32 %1567, 2
  %1569 = zext i1 %1568 to i8
  %1570 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1569, i8* %1570, align 1
  store %struct.Memory* %loadMem_45160a, %struct.Memory** %MEMORY
  %loadMem_45160d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1572 = getelementptr inbounds %struct.GPR, %struct.GPR* %1571, i32 0, i32 33
  %1573 = getelementptr inbounds %struct.Reg, %struct.Reg* %1572, i32 0, i32 0
  %PC.i86 = bitcast %union.anon* %1573 to i64*
  %1574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1575 = getelementptr inbounds %struct.GPR, %struct.GPR* %1574, i32 0, i32 1
  %1576 = getelementptr inbounds %struct.Reg, %struct.Reg* %1575, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %1576 to i32*
  %1577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1578 = getelementptr inbounds %struct.GPR, %struct.GPR* %1577, i32 0, i32 15
  %1579 = getelementptr inbounds %struct.Reg, %struct.Reg* %1578, i32 0, i32 0
  %RBP.i87 = bitcast %union.anon* %1579 to i64*
  %1580 = load i64, i64* %RBP.i87
  %1581 = sub i64 %1580, 24
  %1582 = load i32, i32* %EAX.i
  %1583 = zext i32 %1582 to i64
  %1584 = load i64, i64* %PC.i86
  %1585 = add i64 %1584, 3
  store i64 %1585, i64* %PC.i86
  %1586 = inttoptr i64 %1581 to i32*
  store i32 %1582, i32* %1586
  store %struct.Memory* %loadMem_45160d, %struct.Memory** %MEMORY
  %loadMem_451610 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1587 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1588 = getelementptr inbounds %struct.GPR, %struct.GPR* %1587, i32 0, i32 33
  %1589 = getelementptr inbounds %struct.Reg, %struct.Reg* %1588, i32 0, i32 0
  %PC.i85 = bitcast %union.anon* %1589 to i64*
  %1590 = load i64, i64* %PC.i85
  %1591 = add i64 %1590, 52
  %1592 = load i64, i64* %PC.i85
  %1593 = add i64 %1592, 5
  store i64 %1593, i64* %PC.i85
  %1594 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1591, i64* %1594, align 8
  store %struct.Memory* %loadMem_451610, %struct.Memory** %MEMORY
  br label %block_.L_451644

block_.L_451615:                                  ; preds = %block_4515e1
  %loadMem1_451615 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1596 = getelementptr inbounds %struct.GPR, %struct.GPR* %1595, i32 0, i32 33
  %1597 = getelementptr inbounds %struct.Reg, %struct.Reg* %1596, i32 0, i32 0
  %PC.i84 = bitcast %union.anon* %1597 to i64*
  %1598 = load i64, i64* %PC.i84
  %1599 = add i64 %1598, -327429
  %1600 = load i64, i64* %PC.i84
  %1601 = add i64 %1600, 5
  %1602 = load i64, i64* %PC.i84
  %1603 = add i64 %1602, 5
  store i64 %1603, i64* %PC.i84
  %1604 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1605 = load i64, i64* %1604, align 8
  %1606 = add i64 %1605, -8
  %1607 = inttoptr i64 %1606 to i64*
  store i64 %1601, i64* %1607
  store i64 %1606, i64* %1604, align 8
  %1608 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1599, i64* %1608, align 8
  store %struct.Memory* %loadMem1_451615, %struct.Memory** %MEMORY
  %loadMem2_451615 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_451615 = load i64, i64* %3
  %call2_451615 = call %struct.Memory* @sub_401710.__ctype_b_loc_plt(%struct.State* %0, i64 %loadPC_451615, %struct.Memory* %loadMem2_451615)
  store %struct.Memory* %call2_451615, %struct.Memory** %MEMORY
  %loadMem_45161a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1610 = getelementptr inbounds %struct.GPR, %struct.GPR* %1609, i32 0, i32 33
  %1611 = getelementptr inbounds %struct.Reg, %struct.Reg* %1610, i32 0, i32 0
  %PC.i82 = bitcast %union.anon* %1611 to i64*
  %1612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1613 = getelementptr inbounds %struct.GPR, %struct.GPR* %1612, i32 0, i32 1
  %1614 = getelementptr inbounds %struct.Reg, %struct.Reg* %1613, i32 0, i32 0
  %RAX.i83 = bitcast %union.anon* %1614 to i64*
  %1615 = load i64, i64* %RAX.i83
  %1616 = load i64, i64* %PC.i82
  %1617 = add i64 %1616, 3
  store i64 %1617, i64* %PC.i82
  %1618 = inttoptr i64 %1615 to i64*
  %1619 = load i64, i64* %1618
  store i64 %1619, i64* %RAX.i83, align 8
  store %struct.Memory* %loadMem_45161a, %struct.Memory** %MEMORY
  %loadMem_45161d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1620 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1621 = getelementptr inbounds %struct.GPR, %struct.GPR* %1620, i32 0, i32 33
  %1622 = getelementptr inbounds %struct.Reg, %struct.Reg* %1621, i32 0, i32 0
  %PC.i79 = bitcast %union.anon* %1622 to i64*
  %1623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1624 = getelementptr inbounds %struct.GPR, %struct.GPR* %1623, i32 0, i32 5
  %1625 = getelementptr inbounds %struct.Reg, %struct.Reg* %1624, i32 0, i32 0
  %RCX.i80 = bitcast %union.anon* %1625 to i64*
  %1626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1627 = getelementptr inbounds %struct.GPR, %struct.GPR* %1626, i32 0, i32 15
  %1628 = getelementptr inbounds %struct.Reg, %struct.Reg* %1627, i32 0, i32 0
  %RBP.i81 = bitcast %union.anon* %1628 to i64*
  %1629 = load i64, i64* %RBP.i81
  %1630 = sub i64 %1629, 16
  %1631 = load i64, i64* %PC.i79
  %1632 = add i64 %1631, 4
  store i64 %1632, i64* %PC.i79
  %1633 = inttoptr i64 %1630 to i64*
  %1634 = load i64, i64* %1633
  store i64 %1634, i64* %RCX.i80, align 8
  store %struct.Memory* %loadMem_45161d, %struct.Memory** %MEMORY
  %loadMem_451621 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1635 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1636 = getelementptr inbounds %struct.GPR, %struct.GPR* %1635, i32 0, i32 33
  %1637 = getelementptr inbounds %struct.Reg, %struct.Reg* %1636, i32 0, i32 0
  %PC.i76 = bitcast %union.anon* %1637 to i64*
  %1638 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1639 = getelementptr inbounds %struct.GPR, %struct.GPR* %1638, i32 0, i32 5
  %1640 = getelementptr inbounds %struct.Reg, %struct.Reg* %1639, i32 0, i32 0
  %RCX.i77 = bitcast %union.anon* %1640 to i64*
  %1641 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1642 = getelementptr inbounds %struct.GPR, %struct.GPR* %1641, i32 0, i32 7
  %1643 = getelementptr inbounds %struct.Reg, %struct.Reg* %1642, i32 0, i32 0
  %RDX.i78 = bitcast %union.anon* %1643 to i64*
  %1644 = load i64, i64* %RCX.i77
  %1645 = load i64, i64* %PC.i76
  %1646 = add i64 %1645, 3
  store i64 %1646, i64* %PC.i76
  %1647 = inttoptr i64 %1644 to i8*
  %1648 = load i8, i8* %1647
  %1649 = sext i8 %1648 to i64
  %1650 = and i64 %1649, 4294967295
  store i64 %1650, i64* %RDX.i78, align 8
  store %struct.Memory* %loadMem_451621, %struct.Memory** %MEMORY
  %loadMem_451624 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1652 = getelementptr inbounds %struct.GPR, %struct.GPR* %1651, i32 0, i32 33
  %1653 = getelementptr inbounds %struct.Reg, %struct.Reg* %1652, i32 0, i32 0
  %PC.i73 = bitcast %union.anon* %1653 to i64*
  %1654 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1655 = getelementptr inbounds %struct.GPR, %struct.GPR* %1654, i32 0, i32 7
  %1656 = getelementptr inbounds %struct.Reg, %struct.Reg* %1655, i32 0, i32 0
  %EDX.i74 = bitcast %union.anon* %1656 to i32*
  %1657 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1658 = getelementptr inbounds %struct.GPR, %struct.GPR* %1657, i32 0, i32 5
  %1659 = getelementptr inbounds %struct.Reg, %struct.Reg* %1658, i32 0, i32 0
  %RCX.i75 = bitcast %union.anon* %1659 to i64*
  %1660 = load i32, i32* %EDX.i74
  %1661 = zext i32 %1660 to i64
  %1662 = load i64, i64* %PC.i73
  %1663 = add i64 %1662, 3
  store i64 %1663, i64* %PC.i73
  %1664 = shl i64 %1661, 32
  %1665 = ashr exact i64 %1664, 32
  store i64 %1665, i64* %RCX.i75, align 8
  store %struct.Memory* %loadMem_451624, %struct.Memory** %MEMORY
  %loadMem_451627 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1667 = getelementptr inbounds %struct.GPR, %struct.GPR* %1666, i32 0, i32 33
  %1668 = getelementptr inbounds %struct.Reg, %struct.Reg* %1667, i32 0, i32 0
  %PC.i69 = bitcast %union.anon* %1668 to i64*
  %1669 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1670 = getelementptr inbounds %struct.GPR, %struct.GPR* %1669, i32 0, i32 1
  %1671 = getelementptr inbounds %struct.Reg, %struct.Reg* %1670, i32 0, i32 0
  %RAX.i70 = bitcast %union.anon* %1671 to i64*
  %1672 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1673 = getelementptr inbounds %struct.GPR, %struct.GPR* %1672, i32 0, i32 5
  %1674 = getelementptr inbounds %struct.Reg, %struct.Reg* %1673, i32 0, i32 0
  %RCX.i71 = bitcast %union.anon* %1674 to i64*
  %1675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1676 = getelementptr inbounds %struct.GPR, %struct.GPR* %1675, i32 0, i32 7
  %1677 = getelementptr inbounds %struct.Reg, %struct.Reg* %1676, i32 0, i32 0
  %RDX.i72 = bitcast %union.anon* %1677 to i64*
  %1678 = load i64, i64* %RAX.i70
  %1679 = load i64, i64* %RCX.i71
  %1680 = mul i64 %1679, 2
  %1681 = add i64 %1680, %1678
  %1682 = load i64, i64* %PC.i69
  %1683 = add i64 %1682, 4
  store i64 %1683, i64* %PC.i69
  %1684 = inttoptr i64 %1681 to i16*
  %1685 = load i16, i16* %1684
  %1686 = zext i16 %1685 to i64
  store i64 %1686, i64* %RDX.i72, align 8
  store %struct.Memory* %loadMem_451627, %struct.Memory** %MEMORY
  %loadMem_45162b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1688 = getelementptr inbounds %struct.GPR, %struct.GPR* %1687, i32 0, i32 33
  %1689 = getelementptr inbounds %struct.Reg, %struct.Reg* %1688, i32 0, i32 0
  %PC.i67 = bitcast %union.anon* %1689 to i64*
  %1690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1691 = getelementptr inbounds %struct.GPR, %struct.GPR* %1690, i32 0, i32 7
  %1692 = getelementptr inbounds %struct.Reg, %struct.Reg* %1691, i32 0, i32 0
  %RDX.i68 = bitcast %union.anon* %1692 to i64*
  %1693 = load i64, i64* %RDX.i68
  %1694 = load i64, i64* %PC.i67
  %1695 = add i64 %1694, 6
  store i64 %1695, i64* %PC.i67
  %1696 = and i64 8192, %1693
  %1697 = trunc i64 %1696 to i32
  store i64 %1696, i64* %RDX.i68, align 8
  %1698 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1698, align 1
  %1699 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %1699, align 1
  %1700 = icmp eq i32 %1697, 0
  %1701 = zext i1 %1700 to i8
  %1702 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1701, i8* %1702, align 1
  %1703 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1703, align 1
  %1704 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1704, align 1
  %1705 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1705, align 1
  store %struct.Memory* %loadMem_45162b, %struct.Memory** %MEMORY
  %loadMem_451631 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1707 = getelementptr inbounds %struct.GPR, %struct.GPR* %1706, i32 0, i32 33
  %1708 = getelementptr inbounds %struct.Reg, %struct.Reg* %1707, i32 0, i32 0
  %PC.i65 = bitcast %union.anon* %1708 to i64*
  %1709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1710 = getelementptr inbounds %struct.GPR, %struct.GPR* %1709, i32 0, i32 7
  %1711 = getelementptr inbounds %struct.Reg, %struct.Reg* %1710, i32 0, i32 0
  %EDX.i66 = bitcast %union.anon* %1711 to i32*
  %1712 = load i32, i32* %EDX.i66
  %1713 = zext i32 %1712 to i64
  %1714 = load i64, i64* %PC.i65
  %1715 = add i64 %1714, 3
  store i64 %1715, i64* %PC.i65
  %1716 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1716, align 1
  %1717 = and i32 %1712, 255
  %1718 = call i32 @llvm.ctpop.i32(i32 %1717)
  %1719 = trunc i32 %1718 to i8
  %1720 = and i8 %1719, 1
  %1721 = xor i8 %1720, 1
  %1722 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1721, i8* %1722, align 1
  %1723 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1723, align 1
  %1724 = icmp eq i32 %1712, 0
  %1725 = zext i1 %1724 to i8
  %1726 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1725, i8* %1726, align 1
  %1727 = lshr i32 %1712, 31
  %1728 = trunc i32 %1727 to i8
  %1729 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1728, i8* %1729, align 1
  %1730 = lshr i32 %1712, 31
  %1731 = xor i32 %1727, %1730
  %1732 = add i32 %1731, %1730
  %1733 = icmp eq i32 %1732, 2
  %1734 = zext i1 %1733 to i8
  %1735 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1734, i8* %1735, align 1
  store %struct.Memory* %loadMem_451631, %struct.Memory** %MEMORY
  %loadMem_451634 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1737 = getelementptr inbounds %struct.GPR, %struct.GPR* %1736, i32 0, i32 33
  %1738 = getelementptr inbounds %struct.Reg, %struct.Reg* %1737, i32 0, i32 0
  %PC.i64 = bitcast %union.anon* %1738 to i64*
  %1739 = load i64, i64* %PC.i64
  %1740 = add i64 %1739, 11
  %1741 = load i64, i64* %PC.i64
  %1742 = add i64 %1741, 6
  %1743 = load i64, i64* %PC.i64
  %1744 = add i64 %1743, 6
  store i64 %1744, i64* %PC.i64
  %1745 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1746 = load i8, i8* %1745, align 1
  store i8 %1746, i8* %BRANCH_TAKEN, align 1
  %1747 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1748 = icmp ne i8 %1746, 0
  %1749 = select i1 %1748, i64 %1740, i64 %1742
  store i64 %1749, i64* %1747, align 8
  store %struct.Memory* %loadMem_451634, %struct.Memory** %MEMORY
  %loadBr_451634 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_451634 = icmp eq i8 %loadBr_451634, 1
  br i1 %cmpBr_451634, label %block_.L_45163f, label %block_45163a

block_45163a:                                     ; preds = %block_.L_451615
  %loadMem_45163a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1750 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1751 = getelementptr inbounds %struct.GPR, %struct.GPR* %1750, i32 0, i32 33
  %1752 = getelementptr inbounds %struct.Reg, %struct.Reg* %1751, i32 0, i32 0
  %PC.i63 = bitcast %union.anon* %1752 to i64*
  %1753 = load i64, i64* %PC.i63
  %1754 = add i64 %1753, 37
  %1755 = load i64, i64* %PC.i63
  %1756 = add i64 %1755, 5
  store i64 %1756, i64* %PC.i63
  %1757 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1754, i64* %1757, align 8
  store %struct.Memory* %loadMem_45163a, %struct.Memory** %MEMORY
  br label %block_.L_45165f

block_.L_45163f:                                  ; preds = %block_.L_451615
  %loadMem_45163f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1759 = getelementptr inbounds %struct.GPR, %struct.GPR* %1758, i32 0, i32 33
  %1760 = getelementptr inbounds %struct.Reg, %struct.Reg* %1759, i32 0, i32 0
  %PC.i62 = bitcast %union.anon* %1760 to i64*
  %1761 = load i64, i64* %PC.i62
  %1762 = add i64 %1761, 5
  %1763 = load i64, i64* %PC.i62
  %1764 = add i64 %1763, 5
  store i64 %1764, i64* %PC.i62
  %1765 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1762, i64* %1765, align 8
  store %struct.Memory* %loadMem_45163f, %struct.Memory** %MEMORY
  br label %block_.L_451644

block_.L_451644:                                  ; preds = %block_.L_45163f, %block_.L_451607
  %loadMem_451644 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1766 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1767 = getelementptr inbounds %struct.GPR, %struct.GPR* %1766, i32 0, i32 33
  %1768 = getelementptr inbounds %struct.Reg, %struct.Reg* %1767, i32 0, i32 0
  %PC.i61 = bitcast %union.anon* %1768 to i64*
  %1769 = load i64, i64* %PC.i61
  %1770 = add i64 %1769, 5
  %1771 = load i64, i64* %PC.i61
  %1772 = add i64 %1771, 5
  store i64 %1772, i64* %PC.i61
  %1773 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1770, i64* %1773, align 8
  store %struct.Memory* %loadMem_451644, %struct.Memory** %MEMORY
  br label %block_.L_451649

block_.L_451649:                                  ; preds = %block_.L_451644, %block_.L_4515c3
  %loadMem_451649 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1775 = getelementptr inbounds %struct.GPR, %struct.GPR* %1774, i32 0, i32 33
  %1776 = getelementptr inbounds %struct.Reg, %struct.Reg* %1775, i32 0, i32 0
  %PC.i60 = bitcast %union.anon* %1776 to i64*
  %1777 = load i64, i64* %PC.i60
  %1778 = add i64 %1777, 5
  %1779 = load i64, i64* %PC.i60
  %1780 = add i64 %1779, 5
  store i64 %1780, i64* %PC.i60
  %1781 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1778, i64* %1781, align 8
  store %struct.Memory* %loadMem_451649, %struct.Memory** %MEMORY
  br label %block_.L_45164e

block_.L_45164e:                                  ; preds = %block_.L_451649, %block_451579
  %loadMem_45164e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1782 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1783 = getelementptr inbounds %struct.GPR, %struct.GPR* %1782, i32 0, i32 33
  %1784 = getelementptr inbounds %struct.Reg, %struct.Reg* %1783, i32 0, i32 0
  %PC.i57 = bitcast %union.anon* %1784 to i64*
  %1785 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1786 = getelementptr inbounds %struct.GPR, %struct.GPR* %1785, i32 0, i32 1
  %1787 = getelementptr inbounds %struct.Reg, %struct.Reg* %1786, i32 0, i32 0
  %RAX.i58 = bitcast %union.anon* %1787 to i64*
  %1788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1789 = getelementptr inbounds %struct.GPR, %struct.GPR* %1788, i32 0, i32 15
  %1790 = getelementptr inbounds %struct.Reg, %struct.Reg* %1789, i32 0, i32 0
  %RBP.i59 = bitcast %union.anon* %1790 to i64*
  %1791 = load i64, i64* %RBP.i59
  %1792 = sub i64 %1791, 16
  %1793 = load i64, i64* %PC.i57
  %1794 = add i64 %1793, 4
  store i64 %1794, i64* %PC.i57
  %1795 = inttoptr i64 %1792 to i64*
  %1796 = load i64, i64* %1795
  store i64 %1796, i64* %RAX.i58, align 8
  store %struct.Memory* %loadMem_45164e, %struct.Memory** %MEMORY
  %loadMem_451652 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1797 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1798 = getelementptr inbounds %struct.GPR, %struct.GPR* %1797, i32 0, i32 33
  %1799 = getelementptr inbounds %struct.Reg, %struct.Reg* %1798, i32 0, i32 0
  %PC.i55 = bitcast %union.anon* %1799 to i64*
  %1800 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1801 = getelementptr inbounds %struct.GPR, %struct.GPR* %1800, i32 0, i32 1
  %1802 = getelementptr inbounds %struct.Reg, %struct.Reg* %1801, i32 0, i32 0
  %RAX.i56 = bitcast %union.anon* %1802 to i64*
  %1803 = load i64, i64* %RAX.i56
  %1804 = load i64, i64* %PC.i55
  %1805 = add i64 %1804, 4
  store i64 %1805, i64* %PC.i55
  %1806 = add i64 1, %1803
  store i64 %1806, i64* %RAX.i56, align 8
  %1807 = icmp ult i64 %1806, %1803
  %1808 = icmp ult i64 %1806, 1
  %1809 = or i1 %1807, %1808
  %1810 = zext i1 %1809 to i8
  %1811 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1810, i8* %1811, align 1
  %1812 = trunc i64 %1806 to i32
  %1813 = and i32 %1812, 255
  %1814 = call i32 @llvm.ctpop.i32(i32 %1813)
  %1815 = trunc i32 %1814 to i8
  %1816 = and i8 %1815, 1
  %1817 = xor i8 %1816, 1
  %1818 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1817, i8* %1818, align 1
  %1819 = xor i64 1, %1803
  %1820 = xor i64 %1819, %1806
  %1821 = lshr i64 %1820, 4
  %1822 = trunc i64 %1821 to i8
  %1823 = and i8 %1822, 1
  %1824 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1823, i8* %1824, align 1
  %1825 = icmp eq i64 %1806, 0
  %1826 = zext i1 %1825 to i8
  %1827 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1826, i8* %1827, align 1
  %1828 = lshr i64 %1806, 63
  %1829 = trunc i64 %1828 to i8
  %1830 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1829, i8* %1830, align 1
  %1831 = lshr i64 %1803, 63
  %1832 = xor i64 %1828, %1831
  %1833 = add i64 %1832, %1828
  %1834 = icmp eq i64 %1833, 2
  %1835 = zext i1 %1834 to i8
  %1836 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1835, i8* %1836, align 1
  store %struct.Memory* %loadMem_451652, %struct.Memory** %MEMORY
  %loadMem_451656 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1837 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1838 = getelementptr inbounds %struct.GPR, %struct.GPR* %1837, i32 0, i32 33
  %1839 = getelementptr inbounds %struct.Reg, %struct.Reg* %1838, i32 0, i32 0
  %PC.i52 = bitcast %union.anon* %1839 to i64*
  %1840 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1841 = getelementptr inbounds %struct.GPR, %struct.GPR* %1840, i32 0, i32 1
  %1842 = getelementptr inbounds %struct.Reg, %struct.Reg* %1841, i32 0, i32 0
  %RAX.i53 = bitcast %union.anon* %1842 to i64*
  %1843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1844 = getelementptr inbounds %struct.GPR, %struct.GPR* %1843, i32 0, i32 15
  %1845 = getelementptr inbounds %struct.Reg, %struct.Reg* %1844, i32 0, i32 0
  %RBP.i54 = bitcast %union.anon* %1845 to i64*
  %1846 = load i64, i64* %RBP.i54
  %1847 = sub i64 %1846, 16
  %1848 = load i64, i64* %RAX.i53
  %1849 = load i64, i64* %PC.i52
  %1850 = add i64 %1849, 4
  store i64 %1850, i64* %PC.i52
  %1851 = inttoptr i64 %1847 to i64*
  store i64 %1848, i64* %1851
  store %struct.Memory* %loadMem_451656, %struct.Memory** %MEMORY
  %loadMem_45165a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1852 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1853 = getelementptr inbounds %struct.GPR, %struct.GPR* %1852, i32 0, i32 33
  %1854 = getelementptr inbounds %struct.Reg, %struct.Reg* %1853, i32 0, i32 0
  %PC.i51 = bitcast %union.anon* %1854 to i64*
  %1855 = load i64, i64* %PC.i51
  %1856 = add i64 %1855, -278
  %1857 = load i64, i64* %PC.i51
  %1858 = add i64 %1857, 5
  store i64 %1858, i64* %PC.i51
  %1859 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1856, i64* %1859, align 8
  store %struct.Memory* %loadMem_45165a, %struct.Memory** %MEMORY
  br label %block_.L_451544

block_.L_45165f:                                  ; preds = %block_45163a, %block_.L_451544
  %loadMem_45165f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1860 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1861 = getelementptr inbounds %struct.GPR, %struct.GPR* %1860, i32 0, i32 33
  %1862 = getelementptr inbounds %struct.Reg, %struct.Reg* %1861, i32 0, i32 0
  %PC.i50 = bitcast %union.anon* %1862 to i64*
  %1863 = load i64, i64* %PC.i50
  %1864 = add i64 %1863, 5
  %1865 = load i64, i64* %PC.i50
  %1866 = add i64 %1865, 5
  store i64 %1866, i64* %PC.i50
  %1867 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1864, i64* %1867, align 8
  store %struct.Memory* %loadMem_45165f, %struct.Memory** %MEMORY
  br label %block_.L_451664

block_.L_451664:                                  ; preds = %block_451689, %block_.L_45165f
  %loadMem1_451664 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1868 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1869 = getelementptr inbounds %struct.GPR, %struct.GPR* %1868, i32 0, i32 33
  %1870 = getelementptr inbounds %struct.Reg, %struct.Reg* %1869, i32 0, i32 0
  %PC.i49 = bitcast %union.anon* %1870 to i64*
  %1871 = load i64, i64* %PC.i49
  %1872 = add i64 %1871, -327508
  %1873 = load i64, i64* %PC.i49
  %1874 = add i64 %1873, 5
  %1875 = load i64, i64* %PC.i49
  %1876 = add i64 %1875, 5
  store i64 %1876, i64* %PC.i49
  %1877 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1878 = load i64, i64* %1877, align 8
  %1879 = add i64 %1878, -8
  %1880 = inttoptr i64 %1879 to i64*
  store i64 %1874, i64* %1880
  store i64 %1879, i64* %1877, align 8
  %1881 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1872, i64* %1881, align 8
  store %struct.Memory* %loadMem1_451664, %struct.Memory** %MEMORY
  %loadMem2_451664 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_451664 = load i64, i64* %3
  %call2_451664 = call %struct.Memory* @sub_401710.__ctype_b_loc_plt(%struct.State* %0, i64 %loadPC_451664, %struct.Memory* %loadMem2_451664)
  store %struct.Memory* %call2_451664, %struct.Memory** %MEMORY
  %loadMem_451669 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1882 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1883 = getelementptr inbounds %struct.GPR, %struct.GPR* %1882, i32 0, i32 33
  %1884 = getelementptr inbounds %struct.Reg, %struct.Reg* %1883, i32 0, i32 0
  %PC.i47 = bitcast %union.anon* %1884 to i64*
  %1885 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1886 = getelementptr inbounds %struct.GPR, %struct.GPR* %1885, i32 0, i32 1
  %1887 = getelementptr inbounds %struct.Reg, %struct.Reg* %1886, i32 0, i32 0
  %RAX.i48 = bitcast %union.anon* %1887 to i64*
  %1888 = load i64, i64* %RAX.i48
  %1889 = load i64, i64* %PC.i47
  %1890 = add i64 %1889, 3
  store i64 %1890, i64* %PC.i47
  %1891 = inttoptr i64 %1888 to i64*
  %1892 = load i64, i64* %1891
  store i64 %1892, i64* %RAX.i48, align 8
  store %struct.Memory* %loadMem_451669, %struct.Memory** %MEMORY
  %loadMem_45166c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1893 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1894 = getelementptr inbounds %struct.GPR, %struct.GPR* %1893, i32 0, i32 33
  %1895 = getelementptr inbounds %struct.Reg, %struct.Reg* %1894, i32 0, i32 0
  %PC.i44 = bitcast %union.anon* %1895 to i64*
  %1896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1897 = getelementptr inbounds %struct.GPR, %struct.GPR* %1896, i32 0, i32 5
  %1898 = getelementptr inbounds %struct.Reg, %struct.Reg* %1897, i32 0, i32 0
  %RCX.i45 = bitcast %union.anon* %1898 to i64*
  %1899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1900 = getelementptr inbounds %struct.GPR, %struct.GPR* %1899, i32 0, i32 15
  %1901 = getelementptr inbounds %struct.Reg, %struct.Reg* %1900, i32 0, i32 0
  %RBP.i46 = bitcast %union.anon* %1901 to i64*
  %1902 = load i64, i64* %RBP.i46
  %1903 = sub i64 %1902, 16
  %1904 = load i64, i64* %PC.i44
  %1905 = add i64 %1904, 4
  store i64 %1905, i64* %PC.i44
  %1906 = inttoptr i64 %1903 to i64*
  %1907 = load i64, i64* %1906
  store i64 %1907, i64* %RCX.i45, align 8
  store %struct.Memory* %loadMem_45166c, %struct.Memory** %MEMORY
  %loadMem_451670 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1909 = getelementptr inbounds %struct.GPR, %struct.GPR* %1908, i32 0, i32 33
  %1910 = getelementptr inbounds %struct.Reg, %struct.Reg* %1909, i32 0, i32 0
  %PC.i41 = bitcast %union.anon* %1910 to i64*
  %1911 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1912 = getelementptr inbounds %struct.GPR, %struct.GPR* %1911, i32 0, i32 5
  %1913 = getelementptr inbounds %struct.Reg, %struct.Reg* %1912, i32 0, i32 0
  %RCX.i42 = bitcast %union.anon* %1913 to i64*
  %1914 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1915 = getelementptr inbounds %struct.GPR, %struct.GPR* %1914, i32 0, i32 7
  %1916 = getelementptr inbounds %struct.Reg, %struct.Reg* %1915, i32 0, i32 0
  %RDX.i43 = bitcast %union.anon* %1916 to i64*
  %1917 = load i64, i64* %RCX.i42
  %1918 = load i64, i64* %PC.i41
  %1919 = add i64 %1918, 3
  store i64 %1919, i64* %PC.i41
  %1920 = inttoptr i64 %1917 to i8*
  %1921 = load i8, i8* %1920
  %1922 = sext i8 %1921 to i64
  %1923 = and i64 %1922, 4294967295
  store i64 %1923, i64* %RDX.i43, align 8
  store %struct.Memory* %loadMem_451670, %struct.Memory** %MEMORY
  %loadMem_451673 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1924 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1925 = getelementptr inbounds %struct.GPR, %struct.GPR* %1924, i32 0, i32 33
  %1926 = getelementptr inbounds %struct.Reg, %struct.Reg* %1925, i32 0, i32 0
  %PC.i38 = bitcast %union.anon* %1926 to i64*
  %1927 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1928 = getelementptr inbounds %struct.GPR, %struct.GPR* %1927, i32 0, i32 7
  %1929 = getelementptr inbounds %struct.Reg, %struct.Reg* %1928, i32 0, i32 0
  %EDX.i39 = bitcast %union.anon* %1929 to i32*
  %1930 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1931 = getelementptr inbounds %struct.GPR, %struct.GPR* %1930, i32 0, i32 5
  %1932 = getelementptr inbounds %struct.Reg, %struct.Reg* %1931, i32 0, i32 0
  %RCX.i40 = bitcast %union.anon* %1932 to i64*
  %1933 = load i32, i32* %EDX.i39
  %1934 = zext i32 %1933 to i64
  %1935 = load i64, i64* %PC.i38
  %1936 = add i64 %1935, 3
  store i64 %1936, i64* %PC.i38
  %1937 = shl i64 %1934, 32
  %1938 = ashr exact i64 %1937, 32
  store i64 %1938, i64* %RCX.i40, align 8
  store %struct.Memory* %loadMem_451673, %struct.Memory** %MEMORY
  %loadMem_451676 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1939 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1940 = getelementptr inbounds %struct.GPR, %struct.GPR* %1939, i32 0, i32 33
  %1941 = getelementptr inbounds %struct.Reg, %struct.Reg* %1940, i32 0, i32 0
  %PC.i34 = bitcast %union.anon* %1941 to i64*
  %1942 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1943 = getelementptr inbounds %struct.GPR, %struct.GPR* %1942, i32 0, i32 1
  %1944 = getelementptr inbounds %struct.Reg, %struct.Reg* %1943, i32 0, i32 0
  %RAX.i35 = bitcast %union.anon* %1944 to i64*
  %1945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1946 = getelementptr inbounds %struct.GPR, %struct.GPR* %1945, i32 0, i32 5
  %1947 = getelementptr inbounds %struct.Reg, %struct.Reg* %1946, i32 0, i32 0
  %RCX.i36 = bitcast %union.anon* %1947 to i64*
  %1948 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1949 = getelementptr inbounds %struct.GPR, %struct.GPR* %1948, i32 0, i32 7
  %1950 = getelementptr inbounds %struct.Reg, %struct.Reg* %1949, i32 0, i32 0
  %RDX.i37 = bitcast %union.anon* %1950 to i64*
  %1951 = load i64, i64* %RAX.i35
  %1952 = load i64, i64* %RCX.i36
  %1953 = mul i64 %1952, 2
  %1954 = add i64 %1953, %1951
  %1955 = load i64, i64* %PC.i34
  %1956 = add i64 %1955, 4
  store i64 %1956, i64* %PC.i34
  %1957 = inttoptr i64 %1954 to i16*
  %1958 = load i16, i16* %1957
  %1959 = zext i16 %1958 to i64
  store i64 %1959, i64* %RDX.i37, align 8
  store %struct.Memory* %loadMem_451676, %struct.Memory** %MEMORY
  %loadMem_45167a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1960 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1961 = getelementptr inbounds %struct.GPR, %struct.GPR* %1960, i32 0, i32 33
  %1962 = getelementptr inbounds %struct.Reg, %struct.Reg* %1961, i32 0, i32 0
  %PC.i33 = bitcast %union.anon* %1962 to i64*
  %1963 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1964 = getelementptr inbounds %struct.GPR, %struct.GPR* %1963, i32 0, i32 7
  %1965 = getelementptr inbounds %struct.Reg, %struct.Reg* %1964, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %1965 to i64*
  %1966 = load i64, i64* %RDX.i
  %1967 = load i64, i64* %PC.i33
  %1968 = add i64 %1967, 6
  store i64 %1968, i64* %PC.i33
  %1969 = and i64 8192, %1966
  %1970 = trunc i64 %1969 to i32
  store i64 %1969, i64* %RDX.i, align 8
  %1971 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1971, align 1
  %1972 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %1972, align 1
  %1973 = icmp eq i32 %1970, 0
  %1974 = zext i1 %1973 to i8
  %1975 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1974, i8* %1975, align 1
  %1976 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1976, align 1
  %1977 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1977, align 1
  %1978 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1978, align 1
  store %struct.Memory* %loadMem_45167a, %struct.Memory** %MEMORY
  %loadMem_451680 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1980 = getelementptr inbounds %struct.GPR, %struct.GPR* %1979, i32 0, i32 33
  %1981 = getelementptr inbounds %struct.Reg, %struct.Reg* %1980, i32 0, i32 0
  %PC.i32 = bitcast %union.anon* %1981 to i64*
  %1982 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1983 = getelementptr inbounds %struct.GPR, %struct.GPR* %1982, i32 0, i32 7
  %1984 = getelementptr inbounds %struct.Reg, %struct.Reg* %1983, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %1984 to i32*
  %1985 = load i32, i32* %EDX.i
  %1986 = zext i32 %1985 to i64
  %1987 = load i64, i64* %PC.i32
  %1988 = add i64 %1987, 3
  store i64 %1988, i64* %PC.i32
  %1989 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1989, align 1
  %1990 = and i32 %1985, 255
  %1991 = call i32 @llvm.ctpop.i32(i32 %1990)
  %1992 = trunc i32 %1991 to i8
  %1993 = and i8 %1992, 1
  %1994 = xor i8 %1993, 1
  %1995 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1994, i8* %1995, align 1
  %1996 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1996, align 1
  %1997 = icmp eq i32 %1985, 0
  %1998 = zext i1 %1997 to i8
  %1999 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1998, i8* %1999, align 1
  %2000 = lshr i32 %1985, 31
  %2001 = trunc i32 %2000 to i8
  %2002 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2001, i8* %2002, align 1
  %2003 = lshr i32 %1985, 31
  %2004 = xor i32 %2000, %2003
  %2005 = add i32 %2004, %2003
  %2006 = icmp eq i32 %2005, 2
  %2007 = zext i1 %2006 to i8
  %2008 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2007, i8* %2008, align 1
  store %struct.Memory* %loadMem_451680, %struct.Memory** %MEMORY
  %loadMem_451683 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2009 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2010 = getelementptr inbounds %struct.GPR, %struct.GPR* %2009, i32 0, i32 33
  %2011 = getelementptr inbounds %struct.Reg, %struct.Reg* %2010, i32 0, i32 0
  %PC.i31 = bitcast %union.anon* %2011 to i64*
  %2012 = load i64, i64* %PC.i31
  %2013 = add i64 %2012, 23
  %2014 = load i64, i64* %PC.i31
  %2015 = add i64 %2014, 6
  %2016 = load i64, i64* %PC.i31
  %2017 = add i64 %2016, 6
  store i64 %2017, i64* %PC.i31
  %2018 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2019 = load i8, i8* %2018, align 1
  store i8 %2019, i8* %BRANCH_TAKEN, align 1
  %2020 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2021 = icmp ne i8 %2019, 0
  %2022 = select i1 %2021, i64 %2013, i64 %2015
  store i64 %2022, i64* %2020, align 8
  store %struct.Memory* %loadMem_451683, %struct.Memory** %MEMORY
  %loadBr_451683 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_451683 = icmp eq i8 %loadBr_451683, 1
  br i1 %cmpBr_451683, label %block_.L_45169a, label %block_451689

block_451689:                                     ; preds = %block_.L_451664
  %loadMem_451689 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2023 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2024 = getelementptr inbounds %struct.GPR, %struct.GPR* %2023, i32 0, i32 33
  %2025 = getelementptr inbounds %struct.Reg, %struct.Reg* %2024, i32 0, i32 0
  %PC.i28 = bitcast %union.anon* %2025 to i64*
  %2026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2027 = getelementptr inbounds %struct.GPR, %struct.GPR* %2026, i32 0, i32 1
  %2028 = getelementptr inbounds %struct.Reg, %struct.Reg* %2027, i32 0, i32 0
  %RAX.i29 = bitcast %union.anon* %2028 to i64*
  %2029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2030 = getelementptr inbounds %struct.GPR, %struct.GPR* %2029, i32 0, i32 15
  %2031 = getelementptr inbounds %struct.Reg, %struct.Reg* %2030, i32 0, i32 0
  %RBP.i30 = bitcast %union.anon* %2031 to i64*
  %2032 = load i64, i64* %RBP.i30
  %2033 = sub i64 %2032, 16
  %2034 = load i64, i64* %PC.i28
  %2035 = add i64 %2034, 4
  store i64 %2035, i64* %PC.i28
  %2036 = inttoptr i64 %2033 to i64*
  %2037 = load i64, i64* %2036
  store i64 %2037, i64* %RAX.i29, align 8
  store %struct.Memory* %loadMem_451689, %struct.Memory** %MEMORY
  %loadMem_45168d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2038 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2039 = getelementptr inbounds %struct.GPR, %struct.GPR* %2038, i32 0, i32 33
  %2040 = getelementptr inbounds %struct.Reg, %struct.Reg* %2039, i32 0, i32 0
  %PC.i26 = bitcast %union.anon* %2040 to i64*
  %2041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2042 = getelementptr inbounds %struct.GPR, %struct.GPR* %2041, i32 0, i32 1
  %2043 = getelementptr inbounds %struct.Reg, %struct.Reg* %2042, i32 0, i32 0
  %RAX.i27 = bitcast %union.anon* %2043 to i64*
  %2044 = load i64, i64* %RAX.i27
  %2045 = load i64, i64* %PC.i26
  %2046 = add i64 %2045, 4
  store i64 %2046, i64* %PC.i26
  %2047 = add i64 1, %2044
  store i64 %2047, i64* %RAX.i27, align 8
  %2048 = icmp ult i64 %2047, %2044
  %2049 = icmp ult i64 %2047, 1
  %2050 = or i1 %2048, %2049
  %2051 = zext i1 %2050 to i8
  %2052 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2051, i8* %2052, align 1
  %2053 = trunc i64 %2047 to i32
  %2054 = and i32 %2053, 255
  %2055 = call i32 @llvm.ctpop.i32(i32 %2054)
  %2056 = trunc i32 %2055 to i8
  %2057 = and i8 %2056, 1
  %2058 = xor i8 %2057, 1
  %2059 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2058, i8* %2059, align 1
  %2060 = xor i64 1, %2044
  %2061 = xor i64 %2060, %2047
  %2062 = lshr i64 %2061, 4
  %2063 = trunc i64 %2062 to i8
  %2064 = and i8 %2063, 1
  %2065 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2064, i8* %2065, align 1
  %2066 = icmp eq i64 %2047, 0
  %2067 = zext i1 %2066 to i8
  %2068 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2067, i8* %2068, align 1
  %2069 = lshr i64 %2047, 63
  %2070 = trunc i64 %2069 to i8
  %2071 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2070, i8* %2071, align 1
  %2072 = lshr i64 %2044, 63
  %2073 = xor i64 %2069, %2072
  %2074 = add i64 %2073, %2069
  %2075 = icmp eq i64 %2074, 2
  %2076 = zext i1 %2075 to i8
  %2077 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2076, i8* %2077, align 1
  store %struct.Memory* %loadMem_45168d, %struct.Memory** %MEMORY
  %loadMem_451691 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2078 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2079 = getelementptr inbounds %struct.GPR, %struct.GPR* %2078, i32 0, i32 33
  %2080 = getelementptr inbounds %struct.Reg, %struct.Reg* %2079, i32 0, i32 0
  %PC.i23 = bitcast %union.anon* %2080 to i64*
  %2081 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2082 = getelementptr inbounds %struct.GPR, %struct.GPR* %2081, i32 0, i32 1
  %2083 = getelementptr inbounds %struct.Reg, %struct.Reg* %2082, i32 0, i32 0
  %RAX.i24 = bitcast %union.anon* %2083 to i64*
  %2084 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2085 = getelementptr inbounds %struct.GPR, %struct.GPR* %2084, i32 0, i32 15
  %2086 = getelementptr inbounds %struct.Reg, %struct.Reg* %2085, i32 0, i32 0
  %RBP.i25 = bitcast %union.anon* %2086 to i64*
  %2087 = load i64, i64* %RBP.i25
  %2088 = sub i64 %2087, 16
  %2089 = load i64, i64* %RAX.i24
  %2090 = load i64, i64* %PC.i23
  %2091 = add i64 %2090, 4
  store i64 %2091, i64* %PC.i23
  %2092 = inttoptr i64 %2088 to i64*
  store i64 %2089, i64* %2092
  store %struct.Memory* %loadMem_451691, %struct.Memory** %MEMORY
  %loadMem_451695 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2094 = getelementptr inbounds %struct.GPR, %struct.GPR* %2093, i32 0, i32 33
  %2095 = getelementptr inbounds %struct.Reg, %struct.Reg* %2094, i32 0, i32 0
  %PC.i22 = bitcast %union.anon* %2095 to i64*
  %2096 = load i64, i64* %PC.i22
  %2097 = add i64 %2096, -49
  %2098 = load i64, i64* %PC.i22
  %2099 = add i64 %2098, 5
  store i64 %2099, i64* %PC.i22
  %2100 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2097, i64* %2100, align 8
  store %struct.Memory* %loadMem_451695, %struct.Memory** %MEMORY
  br label %block_.L_451664

block_.L_45169a:                                  ; preds = %block_.L_451664
  %loadMem_45169a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2102 = getelementptr inbounds %struct.GPR, %struct.GPR* %2101, i32 0, i32 33
  %2103 = getelementptr inbounds %struct.Reg, %struct.Reg* %2102, i32 0, i32 0
  %PC.i19 = bitcast %union.anon* %2103 to i64*
  %2104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2105 = getelementptr inbounds %struct.GPR, %struct.GPR* %2104, i32 0, i32 1
  %2106 = getelementptr inbounds %struct.Reg, %struct.Reg* %2105, i32 0, i32 0
  %RAX.i20 = bitcast %union.anon* %2106 to i64*
  %2107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2108 = getelementptr inbounds %struct.GPR, %struct.GPR* %2107, i32 0, i32 15
  %2109 = getelementptr inbounds %struct.Reg, %struct.Reg* %2108, i32 0, i32 0
  %RBP.i21 = bitcast %union.anon* %2109 to i64*
  %2110 = load i64, i64* %RBP.i21
  %2111 = sub i64 %2110, 16
  %2112 = load i64, i64* %PC.i19
  %2113 = add i64 %2112, 4
  store i64 %2113, i64* %PC.i19
  %2114 = inttoptr i64 %2111 to i64*
  %2115 = load i64, i64* %2114
  store i64 %2115, i64* %RAX.i20, align 8
  store %struct.Memory* %loadMem_45169a, %struct.Memory** %MEMORY
  %loadMem_45169e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2117 = getelementptr inbounds %struct.GPR, %struct.GPR* %2116, i32 0, i32 33
  %2118 = getelementptr inbounds %struct.Reg, %struct.Reg* %2117, i32 0, i32 0
  %PC.i17 = bitcast %union.anon* %2118 to i64*
  %2119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2120 = getelementptr inbounds %struct.GPR, %struct.GPR* %2119, i32 0, i32 1
  %2121 = getelementptr inbounds %struct.Reg, %struct.Reg* %2120, i32 0, i32 0
  %RAX.i18 = bitcast %union.anon* %2121 to i64*
  %2122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2123 = getelementptr inbounds %struct.GPR, %struct.GPR* %2122, i32 0, i32 5
  %2124 = getelementptr inbounds %struct.Reg, %struct.Reg* %2123, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %2124 to i64*
  %2125 = load i64, i64* %RAX.i18
  %2126 = load i64, i64* %PC.i17
  %2127 = add i64 %2126, 3
  store i64 %2127, i64* %PC.i17
  %2128 = inttoptr i64 %2125 to i8*
  %2129 = load i8, i8* %2128
  %2130 = sext i8 %2129 to i64
  %2131 = and i64 %2130, 4294967295
  store i64 %2131, i64* %RCX.i, align 8
  store %struct.Memory* %loadMem_45169e, %struct.Memory** %MEMORY
  %loadMem_4516a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2133 = getelementptr inbounds %struct.GPR, %struct.GPR* %2132, i32 0, i32 33
  %2134 = getelementptr inbounds %struct.Reg, %struct.Reg* %2133, i32 0, i32 0
  %PC.i16 = bitcast %union.anon* %2134 to i64*
  %2135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2136 = getelementptr inbounds %struct.GPR, %struct.GPR* %2135, i32 0, i32 5
  %2137 = getelementptr inbounds %struct.Reg, %struct.Reg* %2136, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %2137 to i32*
  %2138 = load i32, i32* %ECX.i
  %2139 = zext i32 %2138 to i64
  %2140 = load i64, i64* %PC.i16
  %2141 = add i64 %2140, 3
  store i64 %2141, i64* %PC.i16
  %2142 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2142, align 1
  %2143 = and i32 %2138, 255
  %2144 = call i32 @llvm.ctpop.i32(i32 %2143)
  %2145 = trunc i32 %2144 to i8
  %2146 = and i8 %2145, 1
  %2147 = xor i8 %2146, 1
  %2148 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2147, i8* %2148, align 1
  %2149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2149, align 1
  %2150 = icmp eq i32 %2138, 0
  %2151 = zext i1 %2150 to i8
  %2152 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2151, i8* %2152, align 1
  %2153 = lshr i32 %2138, 31
  %2154 = trunc i32 %2153 to i8
  %2155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2154, i8* %2155, align 1
  %2156 = lshr i32 %2138, 31
  %2157 = xor i32 %2153, %2156
  %2158 = add i32 %2157, %2156
  %2159 = icmp eq i32 %2158, 2
  %2160 = zext i1 %2159 to i8
  %2161 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2160, i8* %2161, align 1
  store %struct.Memory* %loadMem_4516a1, %struct.Memory** %MEMORY
  %loadMem_4516a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2163 = getelementptr inbounds %struct.GPR, %struct.GPR* %2162, i32 0, i32 33
  %2164 = getelementptr inbounds %struct.Reg, %struct.Reg* %2163, i32 0, i32 0
  %PC.i15 = bitcast %union.anon* %2164 to i64*
  %2165 = load i64, i64* %PC.i15
  %2166 = add i64 %2165, 28
  %2167 = load i64, i64* %PC.i15
  %2168 = add i64 %2167, 6
  %2169 = load i64, i64* %PC.i15
  %2170 = add i64 %2169, 6
  store i64 %2170, i64* %PC.i15
  %2171 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2172 = load i8, i8* %2171, align 1
  %2173 = icmp eq i8 %2172, 0
  %2174 = zext i1 %2173 to i8
  store i8 %2174, i8* %BRANCH_TAKEN, align 1
  %2175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2176 = select i1 %2173, i64 %2166, i64 %2168
  store i64 %2176, i64* %2175, align 8
  store %struct.Memory* %loadMem_4516a4, %struct.Memory** %MEMORY
  %loadBr_4516a4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4516a4 = icmp eq i8 %loadBr_4516a4, 1
  br i1 %cmpBr_4516a4, label %block_.L_4516c0, label %block_4516aa

block_4516aa:                                     ; preds = %block_.L_45169a
  %loadMem_4516aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %2177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2178 = getelementptr inbounds %struct.GPR, %struct.GPR* %2177, i32 0, i32 33
  %2179 = getelementptr inbounds %struct.Reg, %struct.Reg* %2178, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %2179 to i64*
  %2180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2181 = getelementptr inbounds %struct.GPR, %struct.GPR* %2180, i32 0, i32 15
  %2182 = getelementptr inbounds %struct.Reg, %struct.Reg* %2181, i32 0, i32 0
  %RBP.i14 = bitcast %union.anon* %2182 to i64*
  %2183 = load i64, i64* %RBP.i14
  %2184 = sub i64 %2183, 28
  %2185 = load i64, i64* %PC.i13
  %2186 = add i64 %2185, 4
  store i64 %2186, i64* %PC.i13
  %2187 = inttoptr i64 %2184 to i32*
  %2188 = load i32, i32* %2187
  %2189 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2189, align 1
  %2190 = and i32 %2188, 255
  %2191 = call i32 @llvm.ctpop.i32(i32 %2190)
  %2192 = trunc i32 %2191 to i8
  %2193 = and i8 %2192, 1
  %2194 = xor i8 %2193, 1
  %2195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2194, i8* %2195, align 1
  %2196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2196, align 1
  %2197 = icmp eq i32 %2188, 0
  %2198 = zext i1 %2197 to i8
  %2199 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2198, i8* %2199, align 1
  %2200 = lshr i32 %2188, 31
  %2201 = trunc i32 %2200 to i8
  %2202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2201, i8* %2202, align 1
  %2203 = lshr i32 %2188, 31
  %2204 = xor i32 %2200, %2203
  %2205 = add i32 %2204, %2203
  %2206 = icmp eq i32 %2205, 2
  %2207 = zext i1 %2206 to i8
  %2208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2207, i8* %2208, align 1
  store %struct.Memory* %loadMem_4516aa, %struct.Memory** %MEMORY
  %loadMem_4516ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %2209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2210 = getelementptr inbounds %struct.GPR, %struct.GPR* %2209, i32 0, i32 33
  %2211 = getelementptr inbounds %struct.Reg, %struct.Reg* %2210, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %2211 to i64*
  %2212 = load i64, i64* %PC.i12
  %2213 = add i64 %2212, 18
  %2214 = load i64, i64* %PC.i12
  %2215 = add i64 %2214, 6
  %2216 = load i64, i64* %PC.i12
  %2217 = add i64 %2216, 6
  store i64 %2217, i64* %PC.i12
  %2218 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2219 = load i8, i8* %2218, align 1
  store i8 %2219, i8* %BRANCH_TAKEN, align 1
  %2220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2221 = icmp ne i8 %2219, 0
  %2222 = select i1 %2221, i64 %2213, i64 %2215
  store i64 %2222, i64* %2220, align 8
  store %struct.Memory* %loadMem_4516ae, %struct.Memory** %MEMORY
  %loadBr_4516ae = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4516ae = icmp eq i8 %loadBr_4516ae, 1
  br i1 %cmpBr_4516ae, label %block_.L_4516c0, label %block_4516b4

block_4516b4:                                     ; preds = %block_4516aa
  %loadMem_4516b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2224 = getelementptr inbounds %struct.GPR, %struct.GPR* %2223, i32 0, i32 33
  %2225 = getelementptr inbounds %struct.Reg, %struct.Reg* %2224, i32 0, i32 0
  %PC.i10 = bitcast %union.anon* %2225 to i64*
  %2226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2227 = getelementptr inbounds %struct.GPR, %struct.GPR* %2226, i32 0, i32 15
  %2228 = getelementptr inbounds %struct.Reg, %struct.Reg* %2227, i32 0, i32 0
  %RBP.i11 = bitcast %union.anon* %2228 to i64*
  %2229 = load i64, i64* %RBP.i11
  %2230 = sub i64 %2229, 4
  %2231 = load i64, i64* %PC.i10
  %2232 = add i64 %2231, 7
  store i64 %2232, i64* %PC.i10
  %2233 = inttoptr i64 %2230 to i32*
  store i32 1, i32* %2233
  store %struct.Memory* %loadMem_4516b4, %struct.Memory** %MEMORY
  %loadMem_4516bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2235 = getelementptr inbounds %struct.GPR, %struct.GPR* %2234, i32 0, i32 33
  %2236 = getelementptr inbounds %struct.Reg, %struct.Reg* %2235, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %2236 to i64*
  %2237 = load i64, i64* %PC.i9
  %2238 = add i64 %2237, 12
  %2239 = load i64, i64* %PC.i9
  %2240 = add i64 %2239, 5
  store i64 %2240, i64* %PC.i9
  %2241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2238, i64* %2241, align 8
  store %struct.Memory* %loadMem_4516bb, %struct.Memory** %MEMORY
  br label %block_.L_4516c7

block_.L_4516c0:                                  ; preds = %block_4516aa, %block_.L_45169a
  %loadMem_4516c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2243 = getelementptr inbounds %struct.GPR, %struct.GPR* %2242, i32 0, i32 33
  %2244 = getelementptr inbounds %struct.Reg, %struct.Reg* %2243, i32 0, i32 0
  %PC.i7 = bitcast %union.anon* %2244 to i64*
  %2245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2246 = getelementptr inbounds %struct.GPR, %struct.GPR* %2245, i32 0, i32 15
  %2247 = getelementptr inbounds %struct.Reg, %struct.Reg* %2246, i32 0, i32 0
  %RBP.i8 = bitcast %union.anon* %2247 to i64*
  %2248 = load i64, i64* %RBP.i8
  %2249 = sub i64 %2248, 4
  %2250 = load i64, i64* %PC.i7
  %2251 = add i64 %2250, 7
  store i64 %2251, i64* %PC.i7
  %2252 = inttoptr i64 %2249 to i32*
  store i32 0, i32* %2252
  store %struct.Memory* %loadMem_4516c0, %struct.Memory** %MEMORY
  br label %block_.L_4516c7

block_.L_4516c7:                                  ; preds = %block_.L_4516c0, %block_4516b4, %block_4515fb, %block_4515b7, %block_4515a1, %block_4514cc
  %loadMem_4516c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2254 = getelementptr inbounds %struct.GPR, %struct.GPR* %2253, i32 0, i32 33
  %2255 = getelementptr inbounds %struct.Reg, %struct.Reg* %2254, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %2255 to i64*
  %2256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2257 = getelementptr inbounds %struct.GPR, %struct.GPR* %2256, i32 0, i32 1
  %2258 = getelementptr inbounds %struct.Reg, %struct.Reg* %2257, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %2258 to i64*
  %2259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2260 = getelementptr inbounds %struct.GPR, %struct.GPR* %2259, i32 0, i32 15
  %2261 = getelementptr inbounds %struct.Reg, %struct.Reg* %2260, i32 0, i32 0
  %RBP.i6 = bitcast %union.anon* %2261 to i64*
  %2262 = load i64, i64* %RBP.i6
  %2263 = sub i64 %2262, 4
  %2264 = load i64, i64* %PC.i5
  %2265 = add i64 %2264, 3
  store i64 %2265, i64* %PC.i5
  %2266 = inttoptr i64 %2263 to i32*
  %2267 = load i32, i32* %2266
  %2268 = zext i32 %2267 to i64
  store i64 %2268, i64* %RAX.i, align 8
  store %struct.Memory* %loadMem_4516c7, %struct.Memory** %MEMORY
  %loadMem_4516ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %2269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2270 = getelementptr inbounds %struct.GPR, %struct.GPR* %2269, i32 0, i32 33
  %2271 = getelementptr inbounds %struct.Reg, %struct.Reg* %2270, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %2271 to i64*
  %2272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2273 = getelementptr inbounds %struct.GPR, %struct.GPR* %2272, i32 0, i32 13
  %2274 = getelementptr inbounds %struct.Reg, %struct.Reg* %2273, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %2274 to i64*
  %2275 = load i64, i64* %RSP.i
  %2276 = load i64, i64* %PC.i4
  %2277 = add i64 %2276, 4
  store i64 %2277, i64* %PC.i4
  %2278 = add i64 32, %2275
  store i64 %2278, i64* %RSP.i, align 8
  %2279 = icmp ult i64 %2278, %2275
  %2280 = icmp ult i64 %2278, 32
  %2281 = or i1 %2279, %2280
  %2282 = zext i1 %2281 to i8
  %2283 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2282, i8* %2283, align 1
  %2284 = trunc i64 %2278 to i32
  %2285 = and i32 %2284, 255
  %2286 = call i32 @llvm.ctpop.i32(i32 %2285)
  %2287 = trunc i32 %2286 to i8
  %2288 = and i8 %2287, 1
  %2289 = xor i8 %2288, 1
  %2290 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2289, i8* %2290, align 1
  %2291 = xor i64 32, %2275
  %2292 = xor i64 %2291, %2278
  %2293 = lshr i64 %2292, 4
  %2294 = trunc i64 %2293 to i8
  %2295 = and i8 %2294, 1
  %2296 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2295, i8* %2296, align 1
  %2297 = icmp eq i64 %2278, 0
  %2298 = zext i1 %2297 to i8
  %2299 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2298, i8* %2299, align 1
  %2300 = lshr i64 %2278, 63
  %2301 = trunc i64 %2300 to i8
  %2302 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2301, i8* %2302, align 1
  %2303 = lshr i64 %2275, 63
  %2304 = xor i64 %2300, %2303
  %2305 = add i64 %2304, %2300
  %2306 = icmp eq i64 %2305, 2
  %2307 = zext i1 %2306 to i8
  %2308 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2307, i8* %2308, align 1
  store %struct.Memory* %loadMem_4516ca, %struct.Memory** %MEMORY
  %loadMem_4516ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %2309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2310 = getelementptr inbounds %struct.GPR, %struct.GPR* %2309, i32 0, i32 33
  %2311 = getelementptr inbounds %struct.Reg, %struct.Reg* %2310, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %2311 to i64*
  %2312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2313 = getelementptr inbounds %struct.GPR, %struct.GPR* %2312, i32 0, i32 15
  %2314 = getelementptr inbounds %struct.Reg, %struct.Reg* %2313, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %2314 to i64*
  %2315 = load i64, i64* %PC.i2
  %2316 = add i64 %2315, 1
  store i64 %2316, i64* %PC.i2
  %2317 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2318 = load i64, i64* %2317, align 8
  %2319 = add i64 %2318, 8
  %2320 = inttoptr i64 %2318 to i64*
  %2321 = load i64, i64* %2320
  store i64 %2321, i64* %RBP.i3, align 8
  store i64 %2319, i64* %2317, align 8
  store %struct.Memory* %loadMem_4516ce, %struct.Memory** %MEMORY
  %loadMem_4516cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %2322 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2323 = getelementptr inbounds %struct.GPR, %struct.GPR* %2322, i32 0, i32 33
  %2324 = getelementptr inbounds %struct.Reg, %struct.Reg* %2323, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %2324 to i64*
  %2325 = load i64, i64* %PC.i1
  %2326 = add i64 %2325, 1
  store i64 %2326, i64* %PC.i1
  %2327 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2328 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2329 = load i64, i64* %2328, align 8
  %2330 = inttoptr i64 %2329 to i64*
  %2331 = load i64, i64* %2330
  store i64 %2331, i64* %2327, align 8
  %2332 = add i64 %2329, 8
  store i64 %2332, i64* %2328, align 8
  store %struct.Memory* %loadMem_4516cf, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_4516cf
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

define %struct.Memory* @routine_cmpq__0x0__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jne_.L_4514d8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_4516c7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_4514dd(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_callq_.__ctype_b_loc_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsbl___rcx____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = inttoptr i64 %12 to i8*
  %16 = load i8, i8* %15
  %17 = sext i8 %16 to i64
  %18 = and i64 %17, 4294967295
  store i64 %18, i64* %RDX, align 8
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

define %struct.Memory* @routine_movzwl___rax__rcx_2____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %17 = mul i64 %16, 2
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 4
  store i64 %20, i64* %PC
  %21 = inttoptr i64 %18 to i16*
  %22 = load i16, i16* %21
  %23 = zext i16 %22 to i64
  store i64 %23, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_andl__0x2000___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 6
  store i64 %11, i64* %PC
  %12 = and i64 8192, %9
  %13 = trunc i64 %12 to i32
  store i64 %12, i64* %RDX, align 8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %14, align 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %15, align 1
  %16 = icmp eq i32 %13, 0
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %17, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %21, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_je_.L_451513(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_addq__0x1___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 1, %9
  store i64 %12, i64* %RAX, align 8
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

define %struct.Memory* @routine_movq__rax__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsbl___rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = inttoptr i64 %12 to i8*
  %16 = load i8, i8* %15
  %17 = sext i8 %16 to i64
  %18 = and i64 %17, 4294967295
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x2d___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_je_.L_451533(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x2b___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %9, 43
  %14 = icmp ult i32 %9, 43
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
  %23 = xor i64 43, %10
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

define %struct.Memory* @routine_jne_.L_45153f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_451544(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_je_.L_45165f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_andl__0x800___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 6
  store i64 %11, i64* %PC
  %12 = and i64 2048, %9
  %13 = trunc i64 %12 to i32
  store i64 %12, i64* %RDX, align 8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %14, align 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %15, align 1
  %16 = icmp eq i32 %13, 0
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %17, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %21, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_451587(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_45164e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x2e___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jne_.L_4515d1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x0__MINUS0x14__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_je_.L_4515ad(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x0__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_je_.L_4515c3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_451649(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x65___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %9, 101
  %14 = icmp ult i32 %9, 101
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
  %23 = xor i64 101, %10
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

define %struct.Memory* @routine_je_.L_4515f1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x45___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %9, 69
  %14 = icmp ult i32 %9, 69
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
  %23 = xor i64 69, %10
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

define %struct.Memory* @routine_jne_.L_451615(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_451607(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_451644(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_je_.L_45163f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_45165f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_451664(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_je_.L_45169a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_4516c0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_4516c0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
