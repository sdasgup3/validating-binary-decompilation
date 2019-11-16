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
%G_0x99c070_type = type <{ [4 x i8] }>
%G_0xafc478_type = type <{ [4 x i8] }>
%G_0xafc47c_type = type <{ [4 x i8] }>
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
@G_0x99c070 = global %G_0x99c070_type zeroinitializer
@G_0xafc478 = global %G_0xafc478_type zeroinitializer
@G_0xafc47c = global %G_0xafc47c_type zeroinitializer

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
define %struct.Memory* @exchange(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_4e2170 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_4e2170, %struct.Memory** %MEMORY
  %loadMem_4e2171 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i305 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i306 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i
  %27 = load i64, i64* %PC.i305
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i305
  store i64 %26, i64* %RBP.i306, align 8
  store %struct.Memory* %loadMem_4e2171, %struct.Memory** %MEMORY
  %loadMem_4e2174 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i302 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 11
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RDI.i303 = bitcast %union.anon* %34 to i64*
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %36 = getelementptr inbounds %struct.GPR, %struct.GPR* %35, i32 0, i32 15
  %37 = getelementptr inbounds %struct.Reg, %struct.Reg* %36, i32 0, i32 0
  %RBP.i304 = bitcast %union.anon* %37 to i64*
  %38 = load i64, i64* %RBP.i304
  %39 = sub i64 %38, 8
  %40 = load i64, i64* %RDI.i303
  %41 = load i64, i64* %PC.i302
  %42 = add i64 %41, 4
  store i64 %42, i64* %PC.i302
  %43 = inttoptr i64 %39 to i64*
  store i64 %40, i64* %43
  store %struct.Memory* %loadMem_4e2174, %struct.Memory** %MEMORY
  %loadMem_4e2178 = load %struct.Memory*, %struct.Memory** %MEMORY
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %45 = getelementptr inbounds %struct.GPR, %struct.GPR* %44, i32 0, i32 33
  %46 = getelementptr inbounds %struct.Reg, %struct.Reg* %45, i32 0, i32 0
  %PC.i300 = bitcast %union.anon* %46 to i64*
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %48 = getelementptr inbounds %struct.GPR, %struct.GPR* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.Reg, %struct.Reg* %48, i32 0, i32 0
  %RAX.i301 = bitcast %union.anon* %49 to i64*
  %50 = load i64, i64* %PC.i300
  %51 = add i64 %50, 7
  store i64 %51, i64* %PC.i300
  %52 = load i32, i32* bitcast (%G_0xafc47c_type* @G_0xafc47c to i32*)
  %53 = zext i32 %52 to i64
  store i64 %53, i64* %RAX.i301, align 8
  store %struct.Memory* %loadMem_4e2178, %struct.Memory** %MEMORY
  %loadMem_4e217f = load %struct.Memory*, %struct.Memory** %MEMORY
  %54 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %55 = getelementptr inbounds %struct.GPR, %struct.GPR* %54, i32 0, i32 33
  %56 = getelementptr inbounds %struct.Reg, %struct.Reg* %55, i32 0, i32 0
  %PC.i297 = bitcast %union.anon* %56 to i64*
  %57 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %58 = getelementptr inbounds %struct.GPR, %struct.GPR* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.Reg, %struct.Reg* %58, i32 0, i32 0
  %EAX.i298 = bitcast %union.anon* %59 to i32*
  %60 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %61 = getelementptr inbounds %struct.GPR, %struct.GPR* %60, i32 0, i32 15
  %62 = getelementptr inbounds %struct.Reg, %struct.Reg* %61, i32 0, i32 0
  %RBP.i299 = bitcast %union.anon* %62 to i64*
  %63 = load i64, i64* %RBP.i299
  %64 = sub i64 %63, 12
  %65 = load i32, i32* %EAX.i298
  %66 = zext i32 %65 to i64
  %67 = load i64, i64* %PC.i297
  %68 = add i64 %67, 3
  store i64 %68, i64* %PC.i297
  %69 = inttoptr i64 %64 to i32*
  store i32 %65, i32* %69
  store %struct.Memory* %loadMem_4e217f, %struct.Memory** %MEMORY
  %loadMem_4e2182 = load %struct.Memory*, %struct.Memory** %MEMORY
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 33
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %PC.i295 = bitcast %union.anon* %72 to i64*
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %74 = getelementptr inbounds %struct.GPR, %struct.GPR* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.Reg, %struct.Reg* %74, i32 0, i32 0
  %RAX.i296 = bitcast %union.anon* %75 to i64*
  %76 = load i64, i64* %PC.i295
  %77 = add i64 %76, 7
  store i64 %77, i64* %PC.i295
  %78 = load i32, i32* bitcast (%G_0xafc478_type* @G_0xafc478 to i32*)
  %79 = zext i32 %78 to i64
  store i64 %79, i64* %RAX.i296, align 8
  store %struct.Memory* %loadMem_4e2182, %struct.Memory** %MEMORY
  %loadMem_4e2189 = load %struct.Memory*, %struct.Memory** %MEMORY
  %80 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %81 = getelementptr inbounds %struct.GPR, %struct.GPR* %80, i32 0, i32 33
  %82 = getelementptr inbounds %struct.Reg, %struct.Reg* %81, i32 0, i32 0
  %PC.i292 = bitcast %union.anon* %82 to i64*
  %83 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %84 = getelementptr inbounds %struct.GPR, %struct.GPR* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.Reg, %struct.Reg* %84, i32 0, i32 0
  %EAX.i293 = bitcast %union.anon* %85 to i32*
  %86 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %87 = getelementptr inbounds %struct.GPR, %struct.GPR* %86, i32 0, i32 15
  %88 = getelementptr inbounds %struct.Reg, %struct.Reg* %87, i32 0, i32 0
  %RBP.i294 = bitcast %union.anon* %88 to i64*
  %89 = load i64, i64* %RBP.i294
  %90 = sub i64 %89, 16
  %91 = load i32, i32* %EAX.i293
  %92 = zext i32 %91 to i64
  %93 = load i64, i64* %PC.i292
  %94 = add i64 %93, 3
  store i64 %94, i64* %PC.i292
  %95 = inttoptr i64 %90 to i32*
  store i32 %91, i32* %95
  store %struct.Memory* %loadMem_4e2189, %struct.Memory** %MEMORY
  %loadMem_4e218c = load %struct.Memory*, %struct.Memory** %MEMORY
  %96 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %97 = getelementptr inbounds %struct.GPR, %struct.GPR* %96, i32 0, i32 33
  %98 = getelementptr inbounds %struct.Reg, %struct.Reg* %97, i32 0, i32 0
  %PC.i290 = bitcast %union.anon* %98 to i64*
  %99 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %100 = getelementptr inbounds %struct.GPR, %struct.GPR* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.Reg, %struct.Reg* %100, i32 0, i32 0
  %RAX.i291 = bitcast %union.anon* %101 to i64*
  %102 = load i64, i64* %PC.i290
  %103 = add i64 %102, 7
  store i64 %103, i64* %PC.i290
  %104 = load i32, i32* bitcast (%G_0x99c070_type* @G_0x99c070 to i32*)
  %105 = zext i32 %104 to i64
  store i64 %105, i64* %RAX.i291, align 8
  store %struct.Memory* %loadMem_4e218c, %struct.Memory** %MEMORY
  %loadMem_4e2193 = load %struct.Memory*, %struct.Memory** %MEMORY
  %106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %107 = getelementptr inbounds %struct.GPR, %struct.GPR* %106, i32 0, i32 33
  %108 = getelementptr inbounds %struct.Reg, %struct.Reg* %107, i32 0, i32 0
  %PC.i287 = bitcast %union.anon* %108 to i64*
  %109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %110 = getelementptr inbounds %struct.GPR, %struct.GPR* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.Reg, %struct.Reg* %110, i32 0, i32 0
  %EAX.i288 = bitcast %union.anon* %111 to i32*
  %112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %113 = getelementptr inbounds %struct.GPR, %struct.GPR* %112, i32 0, i32 15
  %114 = getelementptr inbounds %struct.Reg, %struct.Reg* %113, i32 0, i32 0
  %RBP.i289 = bitcast %union.anon* %114 to i64*
  %115 = load i64, i64* %RBP.i289
  %116 = sub i64 %115, 20
  %117 = load i32, i32* %EAX.i288
  %118 = zext i32 %117 to i64
  %119 = load i64, i64* %PC.i287
  %120 = add i64 %119, 3
  store i64 %120, i64* %PC.i287
  %121 = inttoptr i64 %116 to i32*
  store i32 %117, i32* %121
  store %struct.Memory* %loadMem_4e2193, %struct.Memory** %MEMORY
  br label %block_.L_4e2196

block_.L_4e2196:                                  ; preds = %block_.L_4e22ee, %entry
  %loadMem_4e2196 = load %struct.Memory*, %struct.Memory** %MEMORY
  %122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %123 = getelementptr inbounds %struct.GPR, %struct.GPR* %122, i32 0, i32 33
  %124 = getelementptr inbounds %struct.Reg, %struct.Reg* %123, i32 0, i32 0
  %PC.i284 = bitcast %union.anon* %124 to i64*
  %125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %126 = getelementptr inbounds %struct.GPR, %struct.GPR* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.Reg, %struct.Reg* %126, i32 0, i32 0
  %EAX.i285 = bitcast %union.anon* %127 to i32*
  %128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %129 = getelementptr inbounds %struct.GPR, %struct.GPR* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.Reg, %struct.Reg* %129, i32 0, i32 0
  %RAX.i286 = bitcast %union.anon* %130 to i64*
  %131 = load i64, i64* %RAX.i286
  %132 = load i32, i32* %EAX.i285
  %133 = zext i32 %132 to i64
  %134 = load i64, i64* %PC.i284
  %135 = add i64 %134, 2
  store i64 %135, i64* %PC.i284
  %136 = xor i64 %133, %131
  %137 = trunc i64 %136 to i32
  %138 = and i64 %136, 4294967295
  store i64 %138, i64* %RAX.i286, align 8
  %139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %139, align 1
  %140 = and i32 %137, 255
  %141 = call i32 @llvm.ctpop.i32(i32 %140)
  %142 = trunc i32 %141 to i8
  %143 = and i8 %142, 1
  %144 = xor i8 %143, 1
  %145 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %144, i8* %145, align 1
  %146 = icmp eq i32 %137, 0
  %147 = zext i1 %146 to i8
  %148 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %147, i8* %148, align 1
  %149 = lshr i32 %137, 31
  %150 = trunc i32 %149 to i8
  %151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %150, i8* %151, align 1
  %152 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %152, align 1
  %153 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %153, align 1
  store %struct.Memory* %loadMem_4e2196, %struct.Memory** %MEMORY
  %loadMem_4e2198 = load %struct.Memory*, %struct.Memory** %MEMORY
  %154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %155 = getelementptr inbounds %struct.GPR, %struct.GPR* %154, i32 0, i32 33
  %156 = getelementptr inbounds %struct.Reg, %struct.Reg* %155, i32 0, i32 0
  %PC.i281 = bitcast %union.anon* %156 to i64*
  %157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %158 = getelementptr inbounds %struct.GPR, %struct.GPR* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.Reg, %struct.Reg* %158, i32 0, i32 0
  %160 = bitcast %union.anon* %159 to %struct.anon.2*
  %AL.i282 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %160, i32 0, i32 0
  %161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %162 = getelementptr inbounds %struct.GPR, %struct.GPR* %161, i32 0, i32 5
  %163 = getelementptr inbounds %struct.Reg, %struct.Reg* %162, i32 0, i32 0
  %164 = bitcast %union.anon* %163 to %struct.anon.2*
  %CL.i283 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %164, i32 0, i32 0
  %165 = load i8, i8* %AL.i282
  %166 = zext i8 %165 to i64
  %167 = load i64, i64* %PC.i281
  %168 = add i64 %167, 2
  store i64 %168, i64* %PC.i281
  store i8 %165, i8* %CL.i283, align 1
  store %struct.Memory* %loadMem_4e2198, %struct.Memory** %MEMORY
  %loadMem_4e219a = load %struct.Memory*, %struct.Memory** %MEMORY
  %169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %170 = getelementptr inbounds %struct.GPR, %struct.GPR* %169, i32 0, i32 33
  %171 = getelementptr inbounds %struct.Reg, %struct.Reg* %170, i32 0, i32 0
  %PC.i278 = bitcast %union.anon* %171 to i64*
  %172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %173 = getelementptr inbounds %struct.GPR, %struct.GPR* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.Reg, %struct.Reg* %173, i32 0, i32 0
  %RAX.i279 = bitcast %union.anon* %174 to i64*
  %175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %176 = getelementptr inbounds %struct.GPR, %struct.GPR* %175, i32 0, i32 15
  %177 = getelementptr inbounds %struct.Reg, %struct.Reg* %176, i32 0, i32 0
  %RBP.i280 = bitcast %union.anon* %177 to i64*
  %178 = load i64, i64* %RBP.i280
  %179 = sub i64 %178, 20
  %180 = load i64, i64* %PC.i278
  %181 = add i64 %180, 3
  store i64 %181, i64* %PC.i278
  %182 = inttoptr i64 %179 to i32*
  %183 = load i32, i32* %182
  %184 = zext i32 %183 to i64
  store i64 %184, i64* %RAX.i279, align 8
  store %struct.Memory* %loadMem_4e219a, %struct.Memory** %MEMORY
  %loadMem_4e219d = load %struct.Memory*, %struct.Memory** %MEMORY
  %185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %186 = getelementptr inbounds %struct.GPR, %struct.GPR* %185, i32 0, i32 33
  %187 = getelementptr inbounds %struct.Reg, %struct.Reg* %186, i32 0, i32 0
  %PC.i275 = bitcast %union.anon* %187 to i64*
  %188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %189 = getelementptr inbounds %struct.GPR, %struct.GPR* %188, i32 0, i32 1
  %190 = getelementptr inbounds %struct.Reg, %struct.Reg* %189, i32 0, i32 0
  %EAX.i276 = bitcast %union.anon* %190 to i32*
  %191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %192 = getelementptr inbounds %struct.GPR, %struct.GPR* %191, i32 0, i32 15
  %193 = getelementptr inbounds %struct.Reg, %struct.Reg* %192, i32 0, i32 0
  %RBP.i277 = bitcast %union.anon* %193 to i64*
  %194 = load i32, i32* %EAX.i276
  %195 = zext i32 %194 to i64
  %196 = load i64, i64* %RBP.i277
  %197 = sub i64 %196, 16
  %198 = load i64, i64* %PC.i275
  %199 = add i64 %198, 3
  store i64 %199, i64* %PC.i275
  %200 = inttoptr i64 %197 to i32*
  %201 = load i32, i32* %200
  %202 = sub i32 %194, %201
  %203 = icmp ult i32 %194, %201
  %204 = zext i1 %203 to i8
  %205 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %204, i8* %205, align 1
  %206 = and i32 %202, 255
  %207 = call i32 @llvm.ctpop.i32(i32 %206)
  %208 = trunc i32 %207 to i8
  %209 = and i8 %208, 1
  %210 = xor i8 %209, 1
  %211 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %210, i8* %211, align 1
  %212 = xor i32 %201, %194
  %213 = xor i32 %212, %202
  %214 = lshr i32 %213, 4
  %215 = trunc i32 %214 to i8
  %216 = and i8 %215, 1
  %217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %216, i8* %217, align 1
  %218 = icmp eq i32 %202, 0
  %219 = zext i1 %218 to i8
  %220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %219, i8* %220, align 1
  %221 = lshr i32 %202, 31
  %222 = trunc i32 %221 to i8
  %223 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %222, i8* %223, align 1
  %224 = lshr i32 %194, 31
  %225 = lshr i32 %201, 31
  %226 = xor i32 %225, %224
  %227 = xor i32 %221, %224
  %228 = add i32 %227, %226
  %229 = icmp eq i32 %228, 2
  %230 = zext i1 %229 to i8
  %231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %230, i8* %231, align 1
  store %struct.Memory* %loadMem_4e219d, %struct.Memory** %MEMORY
  %loadMem_4e21a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %233 = getelementptr inbounds %struct.GPR, %struct.GPR* %232, i32 0, i32 33
  %234 = getelementptr inbounds %struct.Reg, %struct.Reg* %233, i32 0, i32 0
  %PC.i272 = bitcast %union.anon* %234 to i64*
  %235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %236 = getelementptr inbounds %struct.GPR, %struct.GPR* %235, i32 0, i32 5
  %237 = getelementptr inbounds %struct.Reg, %struct.Reg* %236, i32 0, i32 0
  %238 = bitcast %union.anon* %237 to %struct.anon.2*
  %CL.i273 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %238, i32 0, i32 0
  %239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %240 = getelementptr inbounds %struct.GPR, %struct.GPR* %239, i32 0, i32 15
  %241 = getelementptr inbounds %struct.Reg, %struct.Reg* %240, i32 0, i32 0
  %RBP.i274 = bitcast %union.anon* %241 to i64*
  %242 = load i64, i64* %RBP.i274
  %243 = sub i64 %242, 49
  %244 = load i8, i8* %CL.i273
  %245 = zext i8 %244 to i64
  %246 = load i64, i64* %PC.i272
  %247 = add i64 %246, 3
  store i64 %247, i64* %PC.i272
  %248 = inttoptr i64 %243 to i8*
  store i8 %244, i8* %248
  store %struct.Memory* %loadMem_4e21a0, %struct.Memory** %MEMORY
  %loadMem_4e21a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %250 = getelementptr inbounds %struct.GPR, %struct.GPR* %249, i32 0, i32 33
  %251 = getelementptr inbounds %struct.Reg, %struct.Reg* %250, i32 0, i32 0
  %PC.i271 = bitcast %union.anon* %251 to i64*
  %252 = load i64, i64* %PC.i271
  %253 = add i64 %252, 18
  %254 = load i64, i64* %PC.i271
  %255 = add i64 %254, 6
  %256 = load i64, i64* %PC.i271
  %257 = add i64 %256, 6
  store i64 %257, i64* %PC.i271
  %258 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %259 = load i8, i8* %258, align 1
  %260 = icmp ne i8 %259, 0
  %261 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %262 = load i8, i8* %261, align 1
  %263 = icmp ne i8 %262, 0
  %264 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %265 = load i8, i8* %264, align 1
  %266 = icmp ne i8 %265, 0
  %267 = xor i1 %263, %266
  %268 = or i1 %260, %267
  %269 = zext i1 %268 to i8
  store i8 %269, i8* %BRANCH_TAKEN, align 1
  %270 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %271 = select i1 %268, i64 %253, i64 %255
  store i64 %271, i64* %270, align 8
  store %struct.Memory* %loadMem_4e21a3, %struct.Memory** %MEMORY
  %loadBr_4e21a3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4e21a3 = icmp eq i8 %loadBr_4e21a3, 1
  br i1 %cmpBr_4e21a3, label %block_.L_4e21b5, label %block_4e21a9

block_4e21a9:                                     ; preds = %block_.L_4e2196
  %loadMem_4e21a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %273 = getelementptr inbounds %struct.GPR, %struct.GPR* %272, i32 0, i32 33
  %274 = getelementptr inbounds %struct.Reg, %struct.Reg* %273, i32 0, i32 0
  %PC.i268 = bitcast %union.anon* %274 to i64*
  %275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %276 = getelementptr inbounds %struct.GPR, %struct.GPR* %275, i32 0, i32 1
  %277 = getelementptr inbounds %struct.Reg, %struct.Reg* %276, i32 0, i32 0
  %RAX.i269 = bitcast %union.anon* %277 to i64*
  %278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %279 = getelementptr inbounds %struct.GPR, %struct.GPR* %278, i32 0, i32 15
  %280 = getelementptr inbounds %struct.Reg, %struct.Reg* %279, i32 0, i32 0
  %RBP.i270 = bitcast %union.anon* %280 to i64*
  %281 = load i64, i64* %RBP.i270
  %282 = sub i64 %281, 16
  %283 = load i64, i64* %PC.i268
  %284 = add i64 %283, 3
  store i64 %284, i64* %PC.i268
  %285 = inttoptr i64 %282 to i32*
  %286 = load i32, i32* %285
  %287 = zext i32 %286 to i64
  store i64 %287, i64* %RAX.i269, align 8
  store %struct.Memory* %loadMem_4e21a9, %struct.Memory** %MEMORY
  %loadMem_4e21ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %289 = getelementptr inbounds %struct.GPR, %struct.GPR* %288, i32 0, i32 33
  %290 = getelementptr inbounds %struct.Reg, %struct.Reg* %289, i32 0, i32 0
  %PC.i265 = bitcast %union.anon* %290 to i64*
  %291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %292 = getelementptr inbounds %struct.GPR, %struct.GPR* %291, i32 0, i32 1
  %293 = getelementptr inbounds %struct.Reg, %struct.Reg* %292, i32 0, i32 0
  %EAX.i266 = bitcast %union.anon* %293 to i32*
  %294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %295 = getelementptr inbounds %struct.GPR, %struct.GPR* %294, i32 0, i32 15
  %296 = getelementptr inbounds %struct.Reg, %struct.Reg* %295, i32 0, i32 0
  %RBP.i267 = bitcast %union.anon* %296 to i64*
  %297 = load i32, i32* %EAX.i266
  %298 = zext i32 %297 to i64
  %299 = load i64, i64* %RBP.i267
  %300 = sub i64 %299, 12
  %301 = load i64, i64* %PC.i265
  %302 = add i64 %301, 3
  store i64 %302, i64* %PC.i265
  %303 = inttoptr i64 %300 to i32*
  %304 = load i32, i32* %303
  %305 = sub i32 %297, %304
  %306 = icmp ult i32 %297, %304
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
  %315 = xor i32 %304, %297
  %316 = xor i32 %315, %305
  %317 = lshr i32 %316, 4
  %318 = trunc i32 %317 to i8
  %319 = and i8 %318, 1
  %320 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %319, i8* %320, align 1
  %321 = icmp eq i32 %305, 0
  %322 = zext i1 %321 to i8
  %323 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %322, i8* %323, align 1
  %324 = lshr i32 %305, 31
  %325 = trunc i32 %324 to i8
  %326 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %325, i8* %326, align 1
  %327 = lshr i32 %297, 31
  %328 = lshr i32 %304, 31
  %329 = xor i32 %328, %327
  %330 = xor i32 %324, %327
  %331 = add i32 %330, %329
  %332 = icmp eq i32 %331, 2
  %333 = zext i1 %332 to i8
  %334 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %333, i8* %334, align 1
  store %struct.Memory* %loadMem_4e21ac, %struct.Memory** %MEMORY
  %loadMem_4e21af = load %struct.Memory*, %struct.Memory** %MEMORY
  %335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %336 = getelementptr inbounds %struct.GPR, %struct.GPR* %335, i32 0, i32 33
  %337 = getelementptr inbounds %struct.Reg, %struct.Reg* %336, i32 0, i32 0
  %PC.i263 = bitcast %union.anon* %337 to i64*
  %338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %339 = getelementptr inbounds %struct.GPR, %struct.GPR* %338, i32 0, i32 5
  %340 = getelementptr inbounds %struct.Reg, %struct.Reg* %339, i32 0, i32 0
  %341 = bitcast %union.anon* %340 to %struct.anon.2*
  %CL.i264 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %341, i32 0, i32 0
  %342 = load i64, i64* %PC.i263
  %343 = add i64 %342, 3
  store i64 %343, i64* %PC.i263
  %344 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %345 = load i8, i8* %344, align 1
  %346 = icmp eq i8 %345, 0
  %347 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %348 = load i8, i8* %347, align 1
  %349 = icmp ne i8 %348, 0
  %350 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %351 = load i8, i8* %350, align 1
  %352 = icmp ne i8 %351, 0
  %353 = xor i1 %349, %352
  %354 = xor i1 %353, true
  %355 = and i1 %346, %354
  %356 = zext i1 %355 to i8
  store i8 %356, i8* %CL.i264, align 1
  store %struct.Memory* %loadMem_4e21af, %struct.Memory** %MEMORY
  %loadMem_4e21b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %358 = getelementptr inbounds %struct.GPR, %struct.GPR* %357, i32 0, i32 33
  %359 = getelementptr inbounds %struct.Reg, %struct.Reg* %358, i32 0, i32 0
  %PC.i261 = bitcast %union.anon* %359 to i64*
  %360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %361 = getelementptr inbounds %struct.GPR, %struct.GPR* %360, i32 0, i32 5
  %362 = getelementptr inbounds %struct.Reg, %struct.Reg* %361, i32 0, i32 0
  %363 = bitcast %union.anon* %362 to %struct.anon.2*
  %CL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %363, i32 0, i32 0
  %364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %365 = getelementptr inbounds %struct.GPR, %struct.GPR* %364, i32 0, i32 15
  %366 = getelementptr inbounds %struct.Reg, %struct.Reg* %365, i32 0, i32 0
  %RBP.i262 = bitcast %union.anon* %366 to i64*
  %367 = load i64, i64* %RBP.i262
  %368 = sub i64 %367, 49
  %369 = load i8, i8* %CL.i
  %370 = zext i8 %369 to i64
  %371 = load i64, i64* %PC.i261
  %372 = add i64 %371, 3
  store i64 %372, i64* %PC.i261
  %373 = inttoptr i64 %368 to i8*
  store i8 %369, i8* %373
  store %struct.Memory* %loadMem_4e21b2, %struct.Memory** %MEMORY
  br label %block_.L_4e21b5

block_.L_4e21b5:                                  ; preds = %block_4e21a9, %block_.L_4e2196
  %loadMem_4e21b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %375 = getelementptr inbounds %struct.GPR, %struct.GPR* %374, i32 0, i32 33
  %376 = getelementptr inbounds %struct.Reg, %struct.Reg* %375, i32 0, i32 0
  %PC.i258 = bitcast %union.anon* %376 to i64*
  %377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %378 = getelementptr inbounds %struct.GPR, %struct.GPR* %377, i32 0, i32 1
  %379 = getelementptr inbounds %struct.Reg, %struct.Reg* %378, i32 0, i32 0
  %380 = bitcast %union.anon* %379 to %struct.anon.2*
  %AL.i259 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %380, i32 0, i32 0
  %381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %382 = getelementptr inbounds %struct.GPR, %struct.GPR* %381, i32 0, i32 15
  %383 = getelementptr inbounds %struct.Reg, %struct.Reg* %382, i32 0, i32 0
  %RBP.i260 = bitcast %union.anon* %383 to i64*
  %384 = load i64, i64* %RBP.i260
  %385 = sub i64 %384, 49
  %386 = load i64, i64* %PC.i258
  %387 = add i64 %386, 3
  store i64 %387, i64* %PC.i258
  %388 = inttoptr i64 %385 to i8*
  %389 = load i8, i8* %388
  store i8 %389, i8* %AL.i259, align 1
  store %struct.Memory* %loadMem_4e21b5, %struct.Memory** %MEMORY
  %loadMem_4e21b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %391 = getelementptr inbounds %struct.GPR, %struct.GPR* %390, i32 0, i32 33
  %392 = getelementptr inbounds %struct.Reg, %struct.Reg* %391, i32 0, i32 0
  %PC.i257 = bitcast %union.anon* %392 to i64*
  %393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %394 = getelementptr inbounds %struct.GPR, %struct.GPR* %393, i32 0, i32 1
  %395 = getelementptr inbounds %struct.Reg, %struct.Reg* %394, i32 0, i32 0
  %396 = bitcast %union.anon* %395 to %struct.anon.2*
  %AL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %396, i32 0, i32 0
  %397 = load i8, i8* %AL.i
  %398 = zext i8 %397 to i64
  %399 = load i64, i64* %PC.i257
  %400 = add i64 %399, 2
  store i64 %400, i64* %PC.i257
  %401 = and i64 1, %398
  %402 = trunc i64 %401 to i8
  %403 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %403, align 1
  %404 = trunc i64 %401 to i32
  %405 = and i32 %404, 255
  %406 = call i32 @llvm.ctpop.i32(i32 %405)
  %407 = trunc i32 %406 to i8
  %408 = and i8 %407, 1
  %409 = xor i8 %408, 1
  %410 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %409, i8* %410, align 1
  %411 = icmp eq i8 %402, 0
  %412 = zext i1 %411 to i8
  %413 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %412, i8* %413, align 1
  %414 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %414, align 1
  %415 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %415, align 1
  %416 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %416, align 1
  store %struct.Memory* %loadMem_4e21b8, %struct.Memory** %MEMORY
  %loadMem_4e21ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %418 = getelementptr inbounds %struct.GPR, %struct.GPR* %417, i32 0, i32 33
  %419 = getelementptr inbounds %struct.Reg, %struct.Reg* %418, i32 0, i32 0
  %PC.i256 = bitcast %union.anon* %419 to i64*
  %420 = load i64, i64* %PC.i256
  %421 = add i64 %420, 11
  %422 = load i64, i64* %PC.i256
  %423 = add i64 %422, 6
  %424 = load i64, i64* %PC.i256
  %425 = add i64 %424, 6
  store i64 %425, i64* %PC.i256
  %426 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %427 = load i8, i8* %426, align 1
  %428 = icmp eq i8 %427, 0
  %429 = zext i1 %428 to i8
  store i8 %429, i8* %BRANCH_TAKEN, align 1
  %430 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %431 = select i1 %428, i64 %421, i64 %423
  store i64 %431, i64* %430, align 8
  store %struct.Memory* %loadMem_4e21ba, %struct.Memory** %MEMORY
  %loadBr_4e21ba = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4e21ba = icmp eq i8 %loadBr_4e21ba, 1
  br i1 %cmpBr_4e21ba, label %block_.L_4e21c5, label %block_4e21c0

block_4e21c0:                                     ; preds = %block_.L_4e21b5
  %loadMem_4e21c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %433 = getelementptr inbounds %struct.GPR, %struct.GPR* %432, i32 0, i32 33
  %434 = getelementptr inbounds %struct.Reg, %struct.Reg* %433, i32 0, i32 0
  %PC.i255 = bitcast %union.anon* %434 to i64*
  %435 = load i64, i64* %PC.i255
  %436 = add i64 %435, 307
  %437 = load i64, i64* %PC.i255
  %438 = add i64 %437, 5
  store i64 %438, i64* %PC.i255
  %439 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %436, i64* %439, align 8
  store %struct.Memory* %loadMem_4e21c0, %struct.Memory** %MEMORY
  br label %block_.L_4e22f3

block_.L_4e21c5:                                  ; preds = %block_.L_4e21b5
  %loadMem_4e21c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %441 = getelementptr inbounds %struct.GPR, %struct.GPR* %440, i32 0, i32 33
  %442 = getelementptr inbounds %struct.Reg, %struct.Reg* %441, i32 0, i32 0
  %PC.i252 = bitcast %union.anon* %442 to i64*
  %443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %444 = getelementptr inbounds %struct.GPR, %struct.GPR* %443, i32 0, i32 1
  %445 = getelementptr inbounds %struct.Reg, %struct.Reg* %444, i32 0, i32 0
  %RAX.i253 = bitcast %union.anon* %445 to i64*
  %446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %447 = getelementptr inbounds %struct.GPR, %struct.GPR* %446, i32 0, i32 15
  %448 = getelementptr inbounds %struct.Reg, %struct.Reg* %447, i32 0, i32 0
  %RBP.i254 = bitcast %union.anon* %448 to i64*
  %449 = load i64, i64* %RBP.i254
  %450 = sub i64 %449, 20
  %451 = load i64, i64* %PC.i252
  %452 = add i64 %451, 3
  store i64 %452, i64* %PC.i252
  %453 = inttoptr i64 %450 to i32*
  %454 = load i32, i32* %453
  %455 = zext i32 %454 to i64
  store i64 %455, i64* %RAX.i253, align 8
  store %struct.Memory* %loadMem_4e21c5, %struct.Memory** %MEMORY
  %loadMem_4e21c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %457 = getelementptr inbounds %struct.GPR, %struct.GPR* %456, i32 0, i32 33
  %458 = getelementptr inbounds %struct.Reg, %struct.Reg* %457, i32 0, i32 0
  %PC.i249 = bitcast %union.anon* %458 to i64*
  %459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %460 = getelementptr inbounds %struct.GPR, %struct.GPR* %459, i32 0, i32 1
  %461 = getelementptr inbounds %struct.Reg, %struct.Reg* %460, i32 0, i32 0
  %RAX.i250 = bitcast %union.anon* %461 to i64*
  %462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %463 = getelementptr inbounds %struct.GPR, %struct.GPR* %462, i32 0, i32 15
  %464 = getelementptr inbounds %struct.Reg, %struct.Reg* %463, i32 0, i32 0
  %RBP.i251 = bitcast %union.anon* %464 to i64*
  %465 = load i64, i64* %RAX.i250
  %466 = load i64, i64* %RBP.i251
  %467 = sub i64 %466, 16
  %468 = load i64, i64* %PC.i249
  %469 = add i64 %468, 3
  store i64 %469, i64* %PC.i249
  %470 = trunc i64 %465 to i32
  %471 = inttoptr i64 %467 to i32*
  %472 = load i32, i32* %471
  %473 = sub i32 %470, %472
  %474 = zext i32 %473 to i64
  store i64 %474, i64* %RAX.i250, align 8
  %475 = icmp ult i32 %470, %472
  %476 = zext i1 %475 to i8
  %477 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %476, i8* %477, align 1
  %478 = and i32 %473, 255
  %479 = call i32 @llvm.ctpop.i32(i32 %478)
  %480 = trunc i32 %479 to i8
  %481 = and i8 %480, 1
  %482 = xor i8 %481, 1
  %483 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %482, i8* %483, align 1
  %484 = xor i32 %472, %470
  %485 = xor i32 %484, %473
  %486 = lshr i32 %485, 4
  %487 = trunc i32 %486 to i8
  %488 = and i8 %487, 1
  %489 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %488, i8* %489, align 1
  %490 = icmp eq i32 %473, 0
  %491 = zext i1 %490 to i8
  %492 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %491, i8* %492, align 1
  %493 = lshr i32 %473, 31
  %494 = trunc i32 %493 to i8
  %495 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %494, i8* %495, align 1
  %496 = lshr i32 %470, 31
  %497 = lshr i32 %472, 31
  %498 = xor i32 %497, %496
  %499 = xor i32 %493, %496
  %500 = add i32 %499, %498
  %501 = icmp eq i32 %500, 2
  %502 = zext i1 %501 to i8
  %503 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %502, i8* %503, align 1
  store %struct.Memory* %loadMem_4e21c8, %struct.Memory** %MEMORY
  %loadMem_4e21cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %505 = getelementptr inbounds %struct.GPR, %struct.GPR* %504, i32 0, i32 33
  %506 = getelementptr inbounds %struct.Reg, %struct.Reg* %505, i32 0, i32 0
  %PC.i246 = bitcast %union.anon* %506 to i64*
  %507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %508 = getelementptr inbounds %struct.GPR, %struct.GPR* %507, i32 0, i32 5
  %509 = getelementptr inbounds %struct.Reg, %struct.Reg* %508, i32 0, i32 0
  %RCX.i247 = bitcast %union.anon* %509 to i64*
  %510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %511 = getelementptr inbounds %struct.GPR, %struct.GPR* %510, i32 0, i32 15
  %512 = getelementptr inbounds %struct.Reg, %struct.Reg* %511, i32 0, i32 0
  %RBP.i248 = bitcast %union.anon* %512 to i64*
  %513 = load i64, i64* %RBP.i248
  %514 = sub i64 %513, 16
  %515 = load i64, i64* %PC.i246
  %516 = add i64 %515, 3
  store i64 %516, i64* %PC.i246
  %517 = inttoptr i64 %514 to i32*
  %518 = load i32, i32* %517
  %519 = zext i32 %518 to i64
  store i64 %519, i64* %RCX.i247, align 8
  store %struct.Memory* %loadMem_4e21cb, %struct.Memory** %MEMORY
  %loadMem_4e21ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %521 = getelementptr inbounds %struct.GPR, %struct.GPR* %520, i32 0, i32 33
  %522 = getelementptr inbounds %struct.Reg, %struct.Reg* %521, i32 0, i32 0
  %PC.i243 = bitcast %union.anon* %522 to i64*
  %523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %524 = getelementptr inbounds %struct.GPR, %struct.GPR* %523, i32 0, i32 5
  %525 = getelementptr inbounds %struct.Reg, %struct.Reg* %524, i32 0, i32 0
  %RCX.i244 = bitcast %union.anon* %525 to i64*
  %526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %527 = getelementptr inbounds %struct.GPR, %struct.GPR* %526, i32 0, i32 15
  %528 = getelementptr inbounds %struct.Reg, %struct.Reg* %527, i32 0, i32 0
  %RBP.i245 = bitcast %union.anon* %528 to i64*
  %529 = load i64, i64* %RCX.i244
  %530 = load i64, i64* %RBP.i245
  %531 = sub i64 %530, 12
  %532 = load i64, i64* %PC.i243
  %533 = add i64 %532, 3
  store i64 %533, i64* %PC.i243
  %534 = trunc i64 %529 to i32
  %535 = inttoptr i64 %531 to i32*
  %536 = load i32, i32* %535
  %537 = sub i32 %534, %536
  %538 = zext i32 %537 to i64
  store i64 %538, i64* %RCX.i244, align 8
  %539 = icmp ult i32 %534, %536
  %540 = zext i1 %539 to i8
  %541 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %540, i8* %541, align 1
  %542 = and i32 %537, 255
  %543 = call i32 @llvm.ctpop.i32(i32 %542)
  %544 = trunc i32 %543 to i8
  %545 = and i8 %544, 1
  %546 = xor i8 %545, 1
  %547 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %546, i8* %547, align 1
  %548 = xor i32 %536, %534
  %549 = xor i32 %548, %537
  %550 = lshr i32 %549, 4
  %551 = trunc i32 %550 to i8
  %552 = and i8 %551, 1
  %553 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %552, i8* %553, align 1
  %554 = icmp eq i32 %537, 0
  %555 = zext i1 %554 to i8
  %556 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %555, i8* %556, align 1
  %557 = lshr i32 %537, 31
  %558 = trunc i32 %557 to i8
  %559 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %558, i8* %559, align 1
  %560 = lshr i32 %534, 31
  %561 = lshr i32 %536, 31
  %562 = xor i32 %561, %560
  %563 = xor i32 %557, %560
  %564 = add i32 %563, %562
  %565 = icmp eq i32 %564, 2
  %566 = zext i1 %565 to i8
  %567 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %566, i8* %567, align 1
  store %struct.Memory* %loadMem_4e21ce, %struct.Memory** %MEMORY
  %loadMem_4e21d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %569 = getelementptr inbounds %struct.GPR, %struct.GPR* %568, i32 0, i32 33
  %570 = getelementptr inbounds %struct.Reg, %struct.Reg* %569, i32 0, i32 0
  %PC.i240 = bitcast %union.anon* %570 to i64*
  %571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %572 = getelementptr inbounds %struct.GPR, %struct.GPR* %571, i32 0, i32 1
  %573 = getelementptr inbounds %struct.Reg, %struct.Reg* %572, i32 0, i32 0
  %EAX.i241 = bitcast %union.anon* %573 to i32*
  %574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %575 = getelementptr inbounds %struct.GPR, %struct.GPR* %574, i32 0, i32 5
  %576 = getelementptr inbounds %struct.Reg, %struct.Reg* %575, i32 0, i32 0
  %ECX.i242 = bitcast %union.anon* %576 to i32*
  %577 = load i32, i32* %EAX.i241
  %578 = zext i32 %577 to i64
  %579 = load i32, i32* %ECX.i242
  %580 = zext i32 %579 to i64
  %581 = load i64, i64* %PC.i240
  %582 = add i64 %581, 2
  store i64 %582, i64* %PC.i240
  %583 = sub i32 %577, %579
  %584 = icmp ult i32 %577, %579
  %585 = zext i1 %584 to i8
  %586 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %585, i8* %586, align 1
  %587 = and i32 %583, 255
  %588 = call i32 @llvm.ctpop.i32(i32 %587)
  %589 = trunc i32 %588 to i8
  %590 = and i8 %589, 1
  %591 = xor i8 %590, 1
  %592 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %591, i8* %592, align 1
  %593 = xor i64 %580, %578
  %594 = trunc i64 %593 to i32
  %595 = xor i32 %594, %583
  %596 = lshr i32 %595, 4
  %597 = trunc i32 %596 to i8
  %598 = and i8 %597, 1
  %599 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %598, i8* %599, align 1
  %600 = icmp eq i32 %583, 0
  %601 = zext i1 %600 to i8
  %602 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %601, i8* %602, align 1
  %603 = lshr i32 %583, 31
  %604 = trunc i32 %603 to i8
  %605 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %604, i8* %605, align 1
  %606 = lshr i32 %577, 31
  %607 = lshr i32 %579, 31
  %608 = xor i32 %607, %606
  %609 = xor i32 %603, %606
  %610 = add i32 %609, %608
  %611 = icmp eq i32 %610, 2
  %612 = zext i1 %611 to i8
  %613 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %612, i8* %613, align 1
  store %struct.Memory* %loadMem_4e21d1, %struct.Memory** %MEMORY
  %loadMem_4e21d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %614 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %615 = getelementptr inbounds %struct.GPR, %struct.GPR* %614, i32 0, i32 33
  %616 = getelementptr inbounds %struct.Reg, %struct.Reg* %615, i32 0, i32 0
  %PC.i239 = bitcast %union.anon* %616 to i64*
  %617 = load i64, i64* %PC.i239
  %618 = add i64 %617, 156
  %619 = load i64, i64* %PC.i239
  %620 = add i64 %619, 6
  %621 = load i64, i64* %PC.i239
  %622 = add i64 %621, 6
  store i64 %622, i64* %PC.i239
  %623 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %624 = load i8, i8* %623, align 1
  %625 = icmp ne i8 %624, 0
  %626 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %627 = load i8, i8* %626, align 1
  %628 = icmp ne i8 %627, 0
  %629 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %630 = load i8, i8* %629, align 1
  %631 = icmp ne i8 %630, 0
  %632 = xor i1 %628, %631
  %633 = or i1 %625, %632
  %634 = zext i1 %633 to i8
  store i8 %634, i8* %BRANCH_TAKEN, align 1
  %635 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %636 = select i1 %633, i64 %618, i64 %620
  store i64 %636, i64* %635, align 8
  store %struct.Memory* %loadMem_4e21d3, %struct.Memory** %MEMORY
  %loadBr_4e21d3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4e21d3 = icmp eq i8 %loadBr_4e21d3, 1
  br i1 %cmpBr_4e21d3, label %block_.L_4e226f, label %block_4e21d9

block_4e21d9:                                     ; preds = %block_.L_4e21c5
  %loadMem_4e21d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %638 = getelementptr inbounds %struct.GPR, %struct.GPR* %637, i32 0, i32 33
  %639 = getelementptr inbounds %struct.Reg, %struct.Reg* %638, i32 0, i32 0
  %PC.i236 = bitcast %union.anon* %639 to i64*
  %640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %641 = getelementptr inbounds %struct.GPR, %struct.GPR* %640, i32 0, i32 1
  %642 = getelementptr inbounds %struct.Reg, %struct.Reg* %641, i32 0, i32 0
  %RAX.i237 = bitcast %union.anon* %642 to i64*
  %643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %644 = getelementptr inbounds %struct.GPR, %struct.GPR* %643, i32 0, i32 15
  %645 = getelementptr inbounds %struct.Reg, %struct.Reg* %644, i32 0, i32 0
  %RBP.i238 = bitcast %union.anon* %645 to i64*
  %646 = load i64, i64* %RBP.i238
  %647 = sub i64 %646, 16
  %648 = load i64, i64* %PC.i236
  %649 = add i64 %648, 3
  store i64 %649, i64* %PC.i236
  %650 = inttoptr i64 %647 to i32*
  %651 = load i32, i32* %650
  %652 = zext i32 %651 to i64
  store i64 %652, i64* %RAX.i237, align 8
  store %struct.Memory* %loadMem_4e21d9, %struct.Memory** %MEMORY
  %loadMem_4e21dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %653 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %654 = getelementptr inbounds %struct.GPR, %struct.GPR* %653, i32 0, i32 33
  %655 = getelementptr inbounds %struct.Reg, %struct.Reg* %654, i32 0, i32 0
  %PC.i233 = bitcast %union.anon* %655 to i64*
  %656 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %657 = getelementptr inbounds %struct.GPR, %struct.GPR* %656, i32 0, i32 1
  %658 = getelementptr inbounds %struct.Reg, %struct.Reg* %657, i32 0, i32 0
  %RAX.i234 = bitcast %union.anon* %658 to i64*
  %659 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %660 = getelementptr inbounds %struct.GPR, %struct.GPR* %659, i32 0, i32 15
  %661 = getelementptr inbounds %struct.Reg, %struct.Reg* %660, i32 0, i32 0
  %RBP.i235 = bitcast %union.anon* %661 to i64*
  %662 = load i64, i64* %RAX.i234
  %663 = load i64, i64* %RBP.i235
  %664 = sub i64 %663, 12
  %665 = load i64, i64* %PC.i233
  %666 = add i64 %665, 3
  store i64 %666, i64* %PC.i233
  %667 = trunc i64 %662 to i32
  %668 = inttoptr i64 %664 to i32*
  %669 = load i32, i32* %668
  %670 = sub i32 %667, %669
  %671 = zext i32 %670 to i64
  store i64 %671, i64* %RAX.i234, align 8
  %672 = icmp ult i32 %667, %669
  %673 = zext i1 %672 to i8
  %674 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %673, i8* %674, align 1
  %675 = and i32 %670, 255
  %676 = call i32 @llvm.ctpop.i32(i32 %675)
  %677 = trunc i32 %676 to i8
  %678 = and i8 %677, 1
  %679 = xor i8 %678, 1
  %680 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %679, i8* %680, align 1
  %681 = xor i32 %669, %667
  %682 = xor i32 %681, %670
  %683 = lshr i32 %682, 4
  %684 = trunc i32 %683 to i8
  %685 = and i8 %684, 1
  %686 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %685, i8* %686, align 1
  %687 = icmp eq i32 %670, 0
  %688 = zext i1 %687 to i8
  %689 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %688, i8* %689, align 1
  %690 = lshr i32 %670, 31
  %691 = trunc i32 %690 to i8
  %692 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %691, i8* %692, align 1
  %693 = lshr i32 %667, 31
  %694 = lshr i32 %669, 31
  %695 = xor i32 %694, %693
  %696 = xor i32 %690, %693
  %697 = add i32 %696, %695
  %698 = icmp eq i32 %697, 2
  %699 = zext i1 %698 to i8
  %700 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %699, i8* %700, align 1
  store %struct.Memory* %loadMem_4e21dc, %struct.Memory** %MEMORY
  %loadMem_4e21df = load %struct.Memory*, %struct.Memory** %MEMORY
  %701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %702 = getelementptr inbounds %struct.GPR, %struct.GPR* %701, i32 0, i32 33
  %703 = getelementptr inbounds %struct.Reg, %struct.Reg* %702, i32 0, i32 0
  %PC.i230 = bitcast %union.anon* %703 to i64*
  %704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %705 = getelementptr inbounds %struct.GPR, %struct.GPR* %704, i32 0, i32 1
  %706 = getelementptr inbounds %struct.Reg, %struct.Reg* %705, i32 0, i32 0
  %EAX.i231 = bitcast %union.anon* %706 to i32*
  %707 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %708 = getelementptr inbounds %struct.GPR, %struct.GPR* %707, i32 0, i32 15
  %709 = getelementptr inbounds %struct.Reg, %struct.Reg* %708, i32 0, i32 0
  %RBP.i232 = bitcast %union.anon* %709 to i64*
  %710 = load i64, i64* %RBP.i232
  %711 = sub i64 %710, 36
  %712 = load i32, i32* %EAX.i231
  %713 = zext i32 %712 to i64
  %714 = load i64, i64* %PC.i230
  %715 = add i64 %714, 3
  store i64 %715, i64* %PC.i230
  %716 = inttoptr i64 %711 to i32*
  store i32 %712, i32* %716
  store %struct.Memory* %loadMem_4e21df, %struct.Memory** %MEMORY
  %loadMem_4e21e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %718 = getelementptr inbounds %struct.GPR, %struct.GPR* %717, i32 0, i32 33
  %719 = getelementptr inbounds %struct.Reg, %struct.Reg* %718, i32 0, i32 0
  %PC.i228 = bitcast %union.anon* %719 to i64*
  %720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %721 = getelementptr inbounds %struct.GPR, %struct.GPR* %720, i32 0, i32 15
  %722 = getelementptr inbounds %struct.Reg, %struct.Reg* %721, i32 0, i32 0
  %RBP.i229 = bitcast %union.anon* %722 to i64*
  %723 = load i64, i64* %RBP.i229
  %724 = sub i64 %723, 40
  %725 = load i64, i64* %PC.i228
  %726 = add i64 %725, 7
  store i64 %726, i64* %PC.i228
  %727 = inttoptr i64 %724 to i32*
  store i32 0, i32* %727
  store %struct.Memory* %loadMem_4e21e2, %struct.Memory** %MEMORY
  br label %block_.L_4e21e9

block_.L_4e21e9:                                  ; preds = %block_4e21f5, %block_4e21d9
  %loadMem_4e21e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %729 = getelementptr inbounds %struct.GPR, %struct.GPR* %728, i32 0, i32 33
  %730 = getelementptr inbounds %struct.Reg, %struct.Reg* %729, i32 0, i32 0
  %PC.i225 = bitcast %union.anon* %730 to i64*
  %731 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %732 = getelementptr inbounds %struct.GPR, %struct.GPR* %731, i32 0, i32 1
  %733 = getelementptr inbounds %struct.Reg, %struct.Reg* %732, i32 0, i32 0
  %RAX.i226 = bitcast %union.anon* %733 to i64*
  %734 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %735 = getelementptr inbounds %struct.GPR, %struct.GPR* %734, i32 0, i32 15
  %736 = getelementptr inbounds %struct.Reg, %struct.Reg* %735, i32 0, i32 0
  %RBP.i227 = bitcast %union.anon* %736 to i64*
  %737 = load i64, i64* %RBP.i227
  %738 = sub i64 %737, 40
  %739 = load i64, i64* %PC.i225
  %740 = add i64 %739, 3
  store i64 %740, i64* %PC.i225
  %741 = inttoptr i64 %738 to i32*
  %742 = load i32, i32* %741
  %743 = zext i32 %742 to i64
  store i64 %743, i64* %RAX.i226, align 8
  store %struct.Memory* %loadMem_4e21e9, %struct.Memory** %MEMORY
  %loadMem_4e21ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %745 = getelementptr inbounds %struct.GPR, %struct.GPR* %744, i32 0, i32 33
  %746 = getelementptr inbounds %struct.Reg, %struct.Reg* %745, i32 0, i32 0
  %PC.i222 = bitcast %union.anon* %746 to i64*
  %747 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %748 = getelementptr inbounds %struct.GPR, %struct.GPR* %747, i32 0, i32 1
  %749 = getelementptr inbounds %struct.Reg, %struct.Reg* %748, i32 0, i32 0
  %EAX.i223 = bitcast %union.anon* %749 to i32*
  %750 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %751 = getelementptr inbounds %struct.GPR, %struct.GPR* %750, i32 0, i32 15
  %752 = getelementptr inbounds %struct.Reg, %struct.Reg* %751, i32 0, i32 0
  %RBP.i224 = bitcast %union.anon* %752 to i64*
  %753 = load i32, i32* %EAX.i223
  %754 = zext i32 %753 to i64
  %755 = load i64, i64* %RBP.i224
  %756 = sub i64 %755, 36
  %757 = load i64, i64* %PC.i222
  %758 = add i64 %757, 3
  store i64 %758, i64* %PC.i222
  %759 = inttoptr i64 %756 to i32*
  %760 = load i32, i32* %759
  %761 = sub i32 %753, %760
  %762 = icmp ult i32 %753, %760
  %763 = zext i1 %762 to i8
  %764 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %763, i8* %764, align 1
  %765 = and i32 %761, 255
  %766 = call i32 @llvm.ctpop.i32(i32 %765)
  %767 = trunc i32 %766 to i8
  %768 = and i8 %767, 1
  %769 = xor i8 %768, 1
  %770 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %769, i8* %770, align 1
  %771 = xor i32 %760, %753
  %772 = xor i32 %771, %761
  %773 = lshr i32 %772, 4
  %774 = trunc i32 %773 to i8
  %775 = and i8 %774, 1
  %776 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %775, i8* %776, align 1
  %777 = icmp eq i32 %761, 0
  %778 = zext i1 %777 to i8
  %779 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %778, i8* %779, align 1
  %780 = lshr i32 %761, 31
  %781 = trunc i32 %780 to i8
  %782 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %781, i8* %782, align 1
  %783 = lshr i32 %753, 31
  %784 = lshr i32 %760, 31
  %785 = xor i32 %784, %783
  %786 = xor i32 %780, %783
  %787 = add i32 %786, %785
  %788 = icmp eq i32 %787, 2
  %789 = zext i1 %788 to i8
  %790 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %789, i8* %790, align 1
  store %struct.Memory* %loadMem_4e21ec, %struct.Memory** %MEMORY
  %loadMem_4e21ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %791 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %792 = getelementptr inbounds %struct.GPR, %struct.GPR* %791, i32 0, i32 33
  %793 = getelementptr inbounds %struct.Reg, %struct.Reg* %792, i32 0, i32 0
  %PC.i221 = bitcast %union.anon* %793 to i64*
  %794 = load i64, i64* %PC.i221
  %795 = add i64 %794, 112
  %796 = load i64, i64* %PC.i221
  %797 = add i64 %796, 6
  %798 = load i64, i64* %PC.i221
  %799 = add i64 %798, 6
  store i64 %799, i64* %PC.i221
  %800 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %801 = load i8, i8* %800, align 1
  %802 = icmp ne i8 %801, 0
  %803 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %804 = load i8, i8* %803, align 1
  %805 = icmp ne i8 %804, 0
  %806 = xor i1 %802, %805
  %807 = xor i1 %806, true
  %808 = zext i1 %807 to i8
  store i8 %808, i8* %BRANCH_TAKEN, align 1
  %809 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %810 = select i1 %806, i64 %797, i64 %795
  store i64 %810, i64* %809, align 8
  store %struct.Memory* %loadMem_4e21ef, %struct.Memory** %MEMORY
  %loadBr_4e21ef = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4e21ef = icmp eq i8 %loadBr_4e21ef, 1
  br i1 %cmpBr_4e21ef, label %block_.L_4e225f, label %block_4e21f5

block_4e21f5:                                     ; preds = %block_.L_4e21e9
  %loadMem_4e21f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %811 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %812 = getelementptr inbounds %struct.GPR, %struct.GPR* %811, i32 0, i32 33
  %813 = getelementptr inbounds %struct.Reg, %struct.Reg* %812, i32 0, i32 0
  %PC.i218 = bitcast %union.anon* %813 to i64*
  %814 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %815 = getelementptr inbounds %struct.GPR, %struct.GPR* %814, i32 0, i32 1
  %816 = getelementptr inbounds %struct.Reg, %struct.Reg* %815, i32 0, i32 0
  %RAX.i219 = bitcast %union.anon* %816 to i64*
  %817 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %818 = getelementptr inbounds %struct.GPR, %struct.GPR* %817, i32 0, i32 15
  %819 = getelementptr inbounds %struct.Reg, %struct.Reg* %818, i32 0, i32 0
  %RBP.i220 = bitcast %union.anon* %819 to i64*
  %820 = load i64, i64* %RBP.i220
  %821 = sub i64 %820, 8
  %822 = load i64, i64* %PC.i218
  %823 = add i64 %822, 4
  store i64 %823, i64* %PC.i218
  %824 = inttoptr i64 %821 to i64*
  %825 = load i64, i64* %824
  store i64 %825, i64* %RAX.i219, align 8
  store %struct.Memory* %loadMem_4e21f5, %struct.Memory** %MEMORY
  %loadMem_4e21f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %827 = getelementptr inbounds %struct.GPR, %struct.GPR* %826, i32 0, i32 33
  %828 = getelementptr inbounds %struct.Reg, %struct.Reg* %827, i32 0, i32 0
  %PC.i215 = bitcast %union.anon* %828 to i64*
  %829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %830 = getelementptr inbounds %struct.GPR, %struct.GPR* %829, i32 0, i32 5
  %831 = getelementptr inbounds %struct.Reg, %struct.Reg* %830, i32 0, i32 0
  %RCX.i216 = bitcast %union.anon* %831 to i64*
  %832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %833 = getelementptr inbounds %struct.GPR, %struct.GPR* %832, i32 0, i32 15
  %834 = getelementptr inbounds %struct.Reg, %struct.Reg* %833, i32 0, i32 0
  %RBP.i217 = bitcast %union.anon* %834 to i64*
  %835 = load i64, i64* %RBP.i217
  %836 = sub i64 %835, 12
  %837 = load i64, i64* %PC.i215
  %838 = add i64 %837, 3
  store i64 %838, i64* %PC.i215
  %839 = inttoptr i64 %836 to i32*
  %840 = load i32, i32* %839
  %841 = zext i32 %840 to i64
  store i64 %841, i64* %RCX.i216, align 8
  store %struct.Memory* %loadMem_4e21f9, %struct.Memory** %MEMORY
  %loadMem_4e21fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %843 = getelementptr inbounds %struct.GPR, %struct.GPR* %842, i32 0, i32 33
  %844 = getelementptr inbounds %struct.Reg, %struct.Reg* %843, i32 0, i32 0
  %PC.i212 = bitcast %union.anon* %844 to i64*
  %845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %846 = getelementptr inbounds %struct.GPR, %struct.GPR* %845, i32 0, i32 5
  %847 = getelementptr inbounds %struct.Reg, %struct.Reg* %846, i32 0, i32 0
  %RCX.i213 = bitcast %union.anon* %847 to i64*
  %848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %849 = getelementptr inbounds %struct.GPR, %struct.GPR* %848, i32 0, i32 15
  %850 = getelementptr inbounds %struct.Reg, %struct.Reg* %849, i32 0, i32 0
  %RBP.i214 = bitcast %union.anon* %850 to i64*
  %851 = load i64, i64* %RCX.i213
  %852 = load i64, i64* %RBP.i214
  %853 = sub i64 %852, 40
  %854 = load i64, i64* %PC.i212
  %855 = add i64 %854, 3
  store i64 %855, i64* %PC.i212
  %856 = trunc i64 %851 to i32
  %857 = inttoptr i64 %853 to i32*
  %858 = load i32, i32* %857
  %859 = add i32 %858, %856
  %860 = zext i32 %859 to i64
  store i64 %860, i64* %RCX.i213, align 8
  %861 = icmp ult i32 %859, %856
  %862 = icmp ult i32 %859, %858
  %863 = or i1 %861, %862
  %864 = zext i1 %863 to i8
  %865 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %864, i8* %865, align 1
  %866 = and i32 %859, 255
  %867 = call i32 @llvm.ctpop.i32(i32 %866)
  %868 = trunc i32 %867 to i8
  %869 = and i8 %868, 1
  %870 = xor i8 %869, 1
  %871 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %870, i8* %871, align 1
  %872 = xor i32 %858, %856
  %873 = xor i32 %872, %859
  %874 = lshr i32 %873, 4
  %875 = trunc i32 %874 to i8
  %876 = and i8 %875, 1
  %877 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %876, i8* %877, align 1
  %878 = icmp eq i32 %859, 0
  %879 = zext i1 %878 to i8
  %880 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %879, i8* %880, align 1
  %881 = lshr i32 %859, 31
  %882 = trunc i32 %881 to i8
  %883 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %882, i8* %883, align 1
  %884 = lshr i32 %856, 31
  %885 = lshr i32 %858, 31
  %886 = xor i32 %881, %884
  %887 = xor i32 %881, %885
  %888 = add i32 %886, %887
  %889 = icmp eq i32 %888, 2
  %890 = zext i1 %889 to i8
  %891 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %890, i8* %891, align 1
  store %struct.Memory* %loadMem_4e21fc, %struct.Memory** %MEMORY
  %loadMem_4e21ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %893 = getelementptr inbounds %struct.GPR, %struct.GPR* %892, i32 0, i32 33
  %894 = getelementptr inbounds %struct.Reg, %struct.Reg* %893, i32 0, i32 0
  %PC.i209 = bitcast %union.anon* %894 to i64*
  %895 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %896 = getelementptr inbounds %struct.GPR, %struct.GPR* %895, i32 0, i32 5
  %897 = getelementptr inbounds %struct.Reg, %struct.Reg* %896, i32 0, i32 0
  %ECX.i210 = bitcast %union.anon* %897 to i32*
  %898 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %899 = getelementptr inbounds %struct.GPR, %struct.GPR* %898, i32 0, i32 7
  %900 = getelementptr inbounds %struct.Reg, %struct.Reg* %899, i32 0, i32 0
  %RDX.i211 = bitcast %union.anon* %900 to i64*
  %901 = load i32, i32* %ECX.i210
  %902 = zext i32 %901 to i64
  %903 = load i64, i64* %PC.i209
  %904 = add i64 %903, 3
  store i64 %904, i64* %PC.i209
  %905 = shl i64 %902, 32
  %906 = ashr exact i64 %905, 32
  store i64 %906, i64* %RDX.i211, align 8
  store %struct.Memory* %loadMem_4e21ff, %struct.Memory** %MEMORY
  %loadMem_4e2202 = load %struct.Memory*, %struct.Memory** %MEMORY
  %907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %908 = getelementptr inbounds %struct.GPR, %struct.GPR* %907, i32 0, i32 33
  %909 = getelementptr inbounds %struct.Reg, %struct.Reg* %908, i32 0, i32 0
  %PC.i206 = bitcast %union.anon* %909 to i64*
  %910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %911 = getelementptr inbounds %struct.GPR, %struct.GPR* %910, i32 0, i32 1
  %912 = getelementptr inbounds %struct.Reg, %struct.Reg* %911, i32 0, i32 0
  %RAX.i207 = bitcast %union.anon* %912 to i64*
  %913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %914 = getelementptr inbounds %struct.GPR, %struct.GPR* %913, i32 0, i32 7
  %915 = getelementptr inbounds %struct.Reg, %struct.Reg* %914, i32 0, i32 0
  %RDX.i208 = bitcast %union.anon* %915 to i64*
  %916 = load i64, i64* %RAX.i207
  %917 = load i64, i64* %RDX.i208
  %918 = mul i64 %917, 8
  %919 = add i64 %918, %916
  %920 = load i64, i64* %PC.i206
  %921 = add i64 %920, 4
  store i64 %921, i64* %PC.i206
  %922 = inttoptr i64 %919 to i64*
  %923 = load i64, i64* %922
  store i64 %923, i64* %RAX.i207, align 8
  store %struct.Memory* %loadMem_4e2202, %struct.Memory** %MEMORY
  %loadMem_4e2206 = load %struct.Memory*, %struct.Memory** %MEMORY
  %924 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %925 = getelementptr inbounds %struct.GPR, %struct.GPR* %924, i32 0, i32 33
  %926 = getelementptr inbounds %struct.Reg, %struct.Reg* %925, i32 0, i32 0
  %PC.i203 = bitcast %union.anon* %926 to i64*
  %927 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %928 = getelementptr inbounds %struct.GPR, %struct.GPR* %927, i32 0, i32 1
  %929 = getelementptr inbounds %struct.Reg, %struct.Reg* %928, i32 0, i32 0
  %RAX.i204 = bitcast %union.anon* %929 to i64*
  %930 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %931 = getelementptr inbounds %struct.GPR, %struct.GPR* %930, i32 0, i32 15
  %932 = getelementptr inbounds %struct.Reg, %struct.Reg* %931, i32 0, i32 0
  %RBP.i205 = bitcast %union.anon* %932 to i64*
  %933 = load i64, i64* %RBP.i205
  %934 = sub i64 %933, 32
  %935 = load i64, i64* %RAX.i204
  %936 = load i64, i64* %PC.i203
  %937 = add i64 %936, 4
  store i64 %937, i64* %PC.i203
  %938 = inttoptr i64 %934 to i64*
  store i64 %935, i64* %938
  store %struct.Memory* %loadMem_4e2206, %struct.Memory** %MEMORY
  %loadMem_4e220a = load %struct.Memory*, %struct.Memory** %MEMORY
  %939 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %940 = getelementptr inbounds %struct.GPR, %struct.GPR* %939, i32 0, i32 33
  %941 = getelementptr inbounds %struct.Reg, %struct.Reg* %940, i32 0, i32 0
  %PC.i200 = bitcast %union.anon* %941 to i64*
  %942 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %943 = getelementptr inbounds %struct.GPR, %struct.GPR* %942, i32 0, i32 1
  %944 = getelementptr inbounds %struct.Reg, %struct.Reg* %943, i32 0, i32 0
  %RAX.i201 = bitcast %union.anon* %944 to i64*
  %945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %946 = getelementptr inbounds %struct.GPR, %struct.GPR* %945, i32 0, i32 15
  %947 = getelementptr inbounds %struct.Reg, %struct.Reg* %946, i32 0, i32 0
  %RBP.i202 = bitcast %union.anon* %947 to i64*
  %948 = load i64, i64* %RBP.i202
  %949 = sub i64 %948, 8
  %950 = load i64, i64* %PC.i200
  %951 = add i64 %950, 4
  store i64 %951, i64* %PC.i200
  %952 = inttoptr i64 %949 to i64*
  %953 = load i64, i64* %952
  store i64 %953, i64* %RAX.i201, align 8
  store %struct.Memory* %loadMem_4e220a, %struct.Memory** %MEMORY
  %loadMem_4e220e = load %struct.Memory*, %struct.Memory** %MEMORY
  %954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %955 = getelementptr inbounds %struct.GPR, %struct.GPR* %954, i32 0, i32 33
  %956 = getelementptr inbounds %struct.Reg, %struct.Reg* %955, i32 0, i32 0
  %PC.i197 = bitcast %union.anon* %956 to i64*
  %957 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %958 = getelementptr inbounds %struct.GPR, %struct.GPR* %957, i32 0, i32 5
  %959 = getelementptr inbounds %struct.Reg, %struct.Reg* %958, i32 0, i32 0
  %RCX.i198 = bitcast %union.anon* %959 to i64*
  %960 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %961 = getelementptr inbounds %struct.GPR, %struct.GPR* %960, i32 0, i32 15
  %962 = getelementptr inbounds %struct.Reg, %struct.Reg* %961, i32 0, i32 0
  %RBP.i199 = bitcast %union.anon* %962 to i64*
  %963 = load i64, i64* %RBP.i199
  %964 = sub i64 %963, 20
  %965 = load i64, i64* %PC.i197
  %966 = add i64 %965, 3
  store i64 %966, i64* %PC.i197
  %967 = inttoptr i64 %964 to i32*
  %968 = load i32, i32* %967
  %969 = zext i32 %968 to i64
  store i64 %969, i64* %RCX.i198, align 8
  store %struct.Memory* %loadMem_4e220e, %struct.Memory** %MEMORY
  %loadMem_4e2211 = load %struct.Memory*, %struct.Memory** %MEMORY
  %970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %971 = getelementptr inbounds %struct.GPR, %struct.GPR* %970, i32 0, i32 33
  %972 = getelementptr inbounds %struct.Reg, %struct.Reg* %971, i32 0, i32 0
  %PC.i194 = bitcast %union.anon* %972 to i64*
  %973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %974 = getelementptr inbounds %struct.GPR, %struct.GPR* %973, i32 0, i32 9
  %975 = getelementptr inbounds %struct.Reg, %struct.Reg* %974, i32 0, i32 0
  %RSI.i195 = bitcast %union.anon* %975 to i64*
  %976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %977 = getelementptr inbounds %struct.GPR, %struct.GPR* %976, i32 0, i32 15
  %978 = getelementptr inbounds %struct.Reg, %struct.Reg* %977, i32 0, i32 0
  %RBP.i196 = bitcast %union.anon* %978 to i64*
  %979 = load i64, i64* %RBP.i196
  %980 = sub i64 %979, 16
  %981 = load i64, i64* %PC.i194
  %982 = add i64 %981, 3
  store i64 %982, i64* %PC.i194
  %983 = inttoptr i64 %980 to i32*
  %984 = load i32, i32* %983
  %985 = zext i32 %984 to i64
  store i64 %985, i64* %RSI.i195, align 8
  store %struct.Memory* %loadMem_4e2211, %struct.Memory** %MEMORY
  %loadMem_4e2214 = load %struct.Memory*, %struct.Memory** %MEMORY
  %986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %987 = getelementptr inbounds %struct.GPR, %struct.GPR* %986, i32 0, i32 33
  %988 = getelementptr inbounds %struct.Reg, %struct.Reg* %987, i32 0, i32 0
  %PC.i191 = bitcast %union.anon* %988 to i64*
  %989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %990 = getelementptr inbounds %struct.GPR, %struct.GPR* %989, i32 0, i32 9
  %991 = getelementptr inbounds %struct.Reg, %struct.Reg* %990, i32 0, i32 0
  %RSI.i192 = bitcast %union.anon* %991 to i64*
  %992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %993 = getelementptr inbounds %struct.GPR, %struct.GPR* %992, i32 0, i32 15
  %994 = getelementptr inbounds %struct.Reg, %struct.Reg* %993, i32 0, i32 0
  %RBP.i193 = bitcast %union.anon* %994 to i64*
  %995 = load i64, i64* %RSI.i192
  %996 = load i64, i64* %RBP.i193
  %997 = sub i64 %996, 12
  %998 = load i64, i64* %PC.i191
  %999 = add i64 %998, 3
  store i64 %999, i64* %PC.i191
  %1000 = trunc i64 %995 to i32
  %1001 = inttoptr i64 %997 to i32*
  %1002 = load i32, i32* %1001
  %1003 = sub i32 %1000, %1002
  %1004 = zext i32 %1003 to i64
  store i64 %1004, i64* %RSI.i192, align 8
  %1005 = icmp ult i32 %1000, %1002
  %1006 = zext i1 %1005 to i8
  %1007 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1006, i8* %1007, align 1
  %1008 = and i32 %1003, 255
  %1009 = call i32 @llvm.ctpop.i32(i32 %1008)
  %1010 = trunc i32 %1009 to i8
  %1011 = and i8 %1010, 1
  %1012 = xor i8 %1011, 1
  %1013 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1012, i8* %1013, align 1
  %1014 = xor i32 %1002, %1000
  %1015 = xor i32 %1014, %1003
  %1016 = lshr i32 %1015, 4
  %1017 = trunc i32 %1016 to i8
  %1018 = and i8 %1017, 1
  %1019 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1018, i8* %1019, align 1
  %1020 = icmp eq i32 %1003, 0
  %1021 = zext i1 %1020 to i8
  %1022 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1021, i8* %1022, align 1
  %1023 = lshr i32 %1003, 31
  %1024 = trunc i32 %1023 to i8
  %1025 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1024, i8* %1025, align 1
  %1026 = lshr i32 %1000, 31
  %1027 = lshr i32 %1002, 31
  %1028 = xor i32 %1027, %1026
  %1029 = xor i32 %1023, %1026
  %1030 = add i32 %1029, %1028
  %1031 = icmp eq i32 %1030, 2
  %1032 = zext i1 %1031 to i8
  %1033 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1032, i8* %1033, align 1
  store %struct.Memory* %loadMem_4e2214, %struct.Memory** %MEMORY
  %loadMem_4e2217 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1034 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1035 = getelementptr inbounds %struct.GPR, %struct.GPR* %1034, i32 0, i32 33
  %1036 = getelementptr inbounds %struct.Reg, %struct.Reg* %1035, i32 0, i32 0
  %PC.i188 = bitcast %union.anon* %1036 to i64*
  %1037 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1038 = getelementptr inbounds %struct.GPR, %struct.GPR* %1037, i32 0, i32 9
  %1039 = getelementptr inbounds %struct.Reg, %struct.Reg* %1038, i32 0, i32 0
  %ESI.i189 = bitcast %union.anon* %1039 to i32*
  %1040 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1041 = getelementptr inbounds %struct.GPR, %struct.GPR* %1040, i32 0, i32 5
  %1042 = getelementptr inbounds %struct.Reg, %struct.Reg* %1041, i32 0, i32 0
  %RCX.i190 = bitcast %union.anon* %1042 to i64*
  %1043 = load i64, i64* %RCX.i190
  %1044 = load i32, i32* %ESI.i189
  %1045 = zext i32 %1044 to i64
  %1046 = load i64, i64* %PC.i188
  %1047 = add i64 %1046, 2
  store i64 %1047, i64* %PC.i188
  %1048 = trunc i64 %1043 to i32
  %1049 = sub i32 %1048, %1044
  %1050 = zext i32 %1049 to i64
  store i64 %1050, i64* %RCX.i190, align 8
  %1051 = icmp ult i32 %1048, %1044
  %1052 = zext i1 %1051 to i8
  %1053 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1052, i8* %1053, align 1
  %1054 = and i32 %1049, 255
  %1055 = call i32 @llvm.ctpop.i32(i32 %1054)
  %1056 = trunc i32 %1055 to i8
  %1057 = and i8 %1056, 1
  %1058 = xor i8 %1057, 1
  %1059 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1058, i8* %1059, align 1
  %1060 = xor i64 %1045, %1043
  %1061 = trunc i64 %1060 to i32
  %1062 = xor i32 %1061, %1049
  %1063 = lshr i32 %1062, 4
  %1064 = trunc i32 %1063 to i8
  %1065 = and i8 %1064, 1
  %1066 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1065, i8* %1066, align 1
  %1067 = icmp eq i32 %1049, 0
  %1068 = zext i1 %1067 to i8
  %1069 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1068, i8* %1069, align 1
  %1070 = lshr i32 %1049, 31
  %1071 = trunc i32 %1070 to i8
  %1072 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1071, i8* %1072, align 1
  %1073 = lshr i32 %1048, 31
  %1074 = lshr i32 %1044, 31
  %1075 = xor i32 %1074, %1073
  %1076 = xor i32 %1070, %1073
  %1077 = add i32 %1076, %1075
  %1078 = icmp eq i32 %1077, 2
  %1079 = zext i1 %1078 to i8
  %1080 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1079, i8* %1080, align 1
  store %struct.Memory* %loadMem_4e2217, %struct.Memory** %MEMORY
  %loadMem_4e2219 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1081 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1082 = getelementptr inbounds %struct.GPR, %struct.GPR* %1081, i32 0, i32 33
  %1083 = getelementptr inbounds %struct.Reg, %struct.Reg* %1082, i32 0, i32 0
  %PC.i185 = bitcast %union.anon* %1083 to i64*
  %1084 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1085 = getelementptr inbounds %struct.GPR, %struct.GPR* %1084, i32 0, i32 5
  %1086 = getelementptr inbounds %struct.Reg, %struct.Reg* %1085, i32 0, i32 0
  %RCX.i186 = bitcast %union.anon* %1086 to i64*
  %1087 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1088 = getelementptr inbounds %struct.GPR, %struct.GPR* %1087, i32 0, i32 15
  %1089 = getelementptr inbounds %struct.Reg, %struct.Reg* %1088, i32 0, i32 0
  %RBP.i187 = bitcast %union.anon* %1089 to i64*
  %1090 = load i64, i64* %RCX.i186
  %1091 = load i64, i64* %RBP.i187
  %1092 = sub i64 %1091, 40
  %1093 = load i64, i64* %PC.i185
  %1094 = add i64 %1093, 3
  store i64 %1094, i64* %PC.i185
  %1095 = trunc i64 %1090 to i32
  %1096 = inttoptr i64 %1092 to i32*
  %1097 = load i32, i32* %1096
  %1098 = add i32 %1097, %1095
  %1099 = zext i32 %1098 to i64
  store i64 %1099, i64* %RCX.i186, align 8
  %1100 = icmp ult i32 %1098, %1095
  %1101 = icmp ult i32 %1098, %1097
  %1102 = or i1 %1100, %1101
  %1103 = zext i1 %1102 to i8
  %1104 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1103, i8* %1104, align 1
  %1105 = and i32 %1098, 255
  %1106 = call i32 @llvm.ctpop.i32(i32 %1105)
  %1107 = trunc i32 %1106 to i8
  %1108 = and i8 %1107, 1
  %1109 = xor i8 %1108, 1
  %1110 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1109, i8* %1110, align 1
  %1111 = xor i32 %1097, %1095
  %1112 = xor i32 %1111, %1098
  %1113 = lshr i32 %1112, 4
  %1114 = trunc i32 %1113 to i8
  %1115 = and i8 %1114, 1
  %1116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1115, i8* %1116, align 1
  %1117 = icmp eq i32 %1098, 0
  %1118 = zext i1 %1117 to i8
  %1119 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1118, i8* %1119, align 1
  %1120 = lshr i32 %1098, 31
  %1121 = trunc i32 %1120 to i8
  %1122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1121, i8* %1122, align 1
  %1123 = lshr i32 %1095, 31
  %1124 = lshr i32 %1097, 31
  %1125 = xor i32 %1120, %1123
  %1126 = xor i32 %1120, %1124
  %1127 = add i32 %1125, %1126
  %1128 = icmp eq i32 %1127, 2
  %1129 = zext i1 %1128 to i8
  %1130 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1129, i8* %1130, align 1
  store %struct.Memory* %loadMem_4e2219, %struct.Memory** %MEMORY
  %loadMem_4e221c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1132 = getelementptr inbounds %struct.GPR, %struct.GPR* %1131, i32 0, i32 33
  %1133 = getelementptr inbounds %struct.Reg, %struct.Reg* %1132, i32 0, i32 0
  %PC.i182 = bitcast %union.anon* %1133 to i64*
  %1134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1135 = getelementptr inbounds %struct.GPR, %struct.GPR* %1134, i32 0, i32 5
  %1136 = getelementptr inbounds %struct.Reg, %struct.Reg* %1135, i32 0, i32 0
  %ECX.i183 = bitcast %union.anon* %1136 to i32*
  %1137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1138 = getelementptr inbounds %struct.GPR, %struct.GPR* %1137, i32 0, i32 7
  %1139 = getelementptr inbounds %struct.Reg, %struct.Reg* %1138, i32 0, i32 0
  %RDX.i184 = bitcast %union.anon* %1139 to i64*
  %1140 = load i32, i32* %ECX.i183
  %1141 = zext i32 %1140 to i64
  %1142 = load i64, i64* %PC.i182
  %1143 = add i64 %1142, 3
  store i64 %1143, i64* %PC.i182
  %1144 = shl i64 %1141, 32
  %1145 = ashr exact i64 %1144, 32
  store i64 %1145, i64* %RDX.i184, align 8
  store %struct.Memory* %loadMem_4e221c, %struct.Memory** %MEMORY
  %loadMem_4e221f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1147 = getelementptr inbounds %struct.GPR, %struct.GPR* %1146, i32 0, i32 33
  %1148 = getelementptr inbounds %struct.Reg, %struct.Reg* %1147, i32 0, i32 0
  %PC.i179 = bitcast %union.anon* %1148 to i64*
  %1149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1150 = getelementptr inbounds %struct.GPR, %struct.GPR* %1149, i32 0, i32 1
  %1151 = getelementptr inbounds %struct.Reg, %struct.Reg* %1150, i32 0, i32 0
  %RAX.i180 = bitcast %union.anon* %1151 to i64*
  %1152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1153 = getelementptr inbounds %struct.GPR, %struct.GPR* %1152, i32 0, i32 7
  %1154 = getelementptr inbounds %struct.Reg, %struct.Reg* %1153, i32 0, i32 0
  %RDX.i181 = bitcast %union.anon* %1154 to i64*
  %1155 = load i64, i64* %RAX.i180
  %1156 = load i64, i64* %RDX.i181
  %1157 = mul i64 %1156, 8
  %1158 = add i64 %1157, %1155
  %1159 = load i64, i64* %PC.i179
  %1160 = add i64 %1159, 4
  store i64 %1160, i64* %PC.i179
  %1161 = inttoptr i64 %1158 to i64*
  %1162 = load i64, i64* %1161
  store i64 %1162, i64* %RAX.i180, align 8
  store %struct.Memory* %loadMem_4e221f, %struct.Memory** %MEMORY
  %loadMem_4e2223 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1164 = getelementptr inbounds %struct.GPR, %struct.GPR* %1163, i32 0, i32 33
  %1165 = getelementptr inbounds %struct.Reg, %struct.Reg* %1164, i32 0, i32 0
  %PC.i176 = bitcast %union.anon* %1165 to i64*
  %1166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1167 = getelementptr inbounds %struct.GPR, %struct.GPR* %1166, i32 0, i32 7
  %1168 = getelementptr inbounds %struct.Reg, %struct.Reg* %1167, i32 0, i32 0
  %RDX.i177 = bitcast %union.anon* %1168 to i64*
  %1169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1170 = getelementptr inbounds %struct.GPR, %struct.GPR* %1169, i32 0, i32 15
  %1171 = getelementptr inbounds %struct.Reg, %struct.Reg* %1170, i32 0, i32 0
  %RBP.i178 = bitcast %union.anon* %1171 to i64*
  %1172 = load i64, i64* %RBP.i178
  %1173 = sub i64 %1172, 8
  %1174 = load i64, i64* %PC.i176
  %1175 = add i64 %1174, 4
  store i64 %1175, i64* %PC.i176
  %1176 = inttoptr i64 %1173 to i64*
  %1177 = load i64, i64* %1176
  store i64 %1177, i64* %RDX.i177, align 8
  store %struct.Memory* %loadMem_4e2223, %struct.Memory** %MEMORY
  %loadMem_4e2227 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1179 = getelementptr inbounds %struct.GPR, %struct.GPR* %1178, i32 0, i32 33
  %1180 = getelementptr inbounds %struct.Reg, %struct.Reg* %1179, i32 0, i32 0
  %PC.i173 = bitcast %union.anon* %1180 to i64*
  %1181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1182 = getelementptr inbounds %struct.GPR, %struct.GPR* %1181, i32 0, i32 5
  %1183 = getelementptr inbounds %struct.Reg, %struct.Reg* %1182, i32 0, i32 0
  %RCX.i174 = bitcast %union.anon* %1183 to i64*
  %1184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1185 = getelementptr inbounds %struct.GPR, %struct.GPR* %1184, i32 0, i32 15
  %1186 = getelementptr inbounds %struct.Reg, %struct.Reg* %1185, i32 0, i32 0
  %RBP.i175 = bitcast %union.anon* %1186 to i64*
  %1187 = load i64, i64* %RBP.i175
  %1188 = sub i64 %1187, 12
  %1189 = load i64, i64* %PC.i173
  %1190 = add i64 %1189, 3
  store i64 %1190, i64* %PC.i173
  %1191 = inttoptr i64 %1188 to i32*
  %1192 = load i32, i32* %1191
  %1193 = zext i32 %1192 to i64
  store i64 %1193, i64* %RCX.i174, align 8
  store %struct.Memory* %loadMem_4e2227, %struct.Memory** %MEMORY
  %loadMem_4e222a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1195 = getelementptr inbounds %struct.GPR, %struct.GPR* %1194, i32 0, i32 33
  %1196 = getelementptr inbounds %struct.Reg, %struct.Reg* %1195, i32 0, i32 0
  %PC.i170 = bitcast %union.anon* %1196 to i64*
  %1197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1198 = getelementptr inbounds %struct.GPR, %struct.GPR* %1197, i32 0, i32 5
  %1199 = getelementptr inbounds %struct.Reg, %struct.Reg* %1198, i32 0, i32 0
  %RCX.i171 = bitcast %union.anon* %1199 to i64*
  %1200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1201 = getelementptr inbounds %struct.GPR, %struct.GPR* %1200, i32 0, i32 15
  %1202 = getelementptr inbounds %struct.Reg, %struct.Reg* %1201, i32 0, i32 0
  %RBP.i172 = bitcast %union.anon* %1202 to i64*
  %1203 = load i64, i64* %RCX.i171
  %1204 = load i64, i64* %RBP.i172
  %1205 = sub i64 %1204, 40
  %1206 = load i64, i64* %PC.i170
  %1207 = add i64 %1206, 3
  store i64 %1207, i64* %PC.i170
  %1208 = trunc i64 %1203 to i32
  %1209 = inttoptr i64 %1205 to i32*
  %1210 = load i32, i32* %1209
  %1211 = add i32 %1210, %1208
  %1212 = zext i32 %1211 to i64
  store i64 %1212, i64* %RCX.i171, align 8
  %1213 = icmp ult i32 %1211, %1208
  %1214 = icmp ult i32 %1211, %1210
  %1215 = or i1 %1213, %1214
  %1216 = zext i1 %1215 to i8
  %1217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1216, i8* %1217, align 1
  %1218 = and i32 %1211, 255
  %1219 = call i32 @llvm.ctpop.i32(i32 %1218)
  %1220 = trunc i32 %1219 to i8
  %1221 = and i8 %1220, 1
  %1222 = xor i8 %1221, 1
  %1223 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1222, i8* %1223, align 1
  %1224 = xor i32 %1210, %1208
  %1225 = xor i32 %1224, %1211
  %1226 = lshr i32 %1225, 4
  %1227 = trunc i32 %1226 to i8
  %1228 = and i8 %1227, 1
  %1229 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1228, i8* %1229, align 1
  %1230 = icmp eq i32 %1211, 0
  %1231 = zext i1 %1230 to i8
  %1232 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1231, i8* %1232, align 1
  %1233 = lshr i32 %1211, 31
  %1234 = trunc i32 %1233 to i8
  %1235 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1234, i8* %1235, align 1
  %1236 = lshr i32 %1208, 31
  %1237 = lshr i32 %1210, 31
  %1238 = xor i32 %1233, %1236
  %1239 = xor i32 %1233, %1237
  %1240 = add i32 %1238, %1239
  %1241 = icmp eq i32 %1240, 2
  %1242 = zext i1 %1241 to i8
  %1243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1242, i8* %1243, align 1
  store %struct.Memory* %loadMem_4e222a, %struct.Memory** %MEMORY
  %loadMem_4e222d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1245 = getelementptr inbounds %struct.GPR, %struct.GPR* %1244, i32 0, i32 33
  %1246 = getelementptr inbounds %struct.Reg, %struct.Reg* %1245, i32 0, i32 0
  %PC.i167 = bitcast %union.anon* %1246 to i64*
  %1247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1248 = getelementptr inbounds %struct.GPR, %struct.GPR* %1247, i32 0, i32 5
  %1249 = getelementptr inbounds %struct.Reg, %struct.Reg* %1248, i32 0, i32 0
  %ECX.i168 = bitcast %union.anon* %1249 to i32*
  %1250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1251 = getelementptr inbounds %struct.GPR, %struct.GPR* %1250, i32 0, i32 11
  %1252 = getelementptr inbounds %struct.Reg, %struct.Reg* %1251, i32 0, i32 0
  %RDI.i169 = bitcast %union.anon* %1252 to i64*
  %1253 = load i32, i32* %ECX.i168
  %1254 = zext i32 %1253 to i64
  %1255 = load i64, i64* %PC.i167
  %1256 = add i64 %1255, 3
  store i64 %1256, i64* %PC.i167
  %1257 = shl i64 %1254, 32
  %1258 = ashr exact i64 %1257, 32
  store i64 %1258, i64* %RDI.i169, align 8
  store %struct.Memory* %loadMem_4e222d, %struct.Memory** %MEMORY
  %loadMem_4e2230 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1260 = getelementptr inbounds %struct.GPR, %struct.GPR* %1259, i32 0, i32 33
  %1261 = getelementptr inbounds %struct.Reg, %struct.Reg* %1260, i32 0, i32 0
  %PC.i163 = bitcast %union.anon* %1261 to i64*
  %1262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1263 = getelementptr inbounds %struct.GPR, %struct.GPR* %1262, i32 0, i32 1
  %1264 = getelementptr inbounds %struct.Reg, %struct.Reg* %1263, i32 0, i32 0
  %RAX.i164 = bitcast %union.anon* %1264 to i64*
  %1265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1266 = getelementptr inbounds %struct.GPR, %struct.GPR* %1265, i32 0, i32 7
  %1267 = getelementptr inbounds %struct.Reg, %struct.Reg* %1266, i32 0, i32 0
  %RDX.i165 = bitcast %union.anon* %1267 to i64*
  %1268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1269 = getelementptr inbounds %struct.GPR, %struct.GPR* %1268, i32 0, i32 11
  %1270 = getelementptr inbounds %struct.Reg, %struct.Reg* %1269, i32 0, i32 0
  %RDI.i166 = bitcast %union.anon* %1270 to i64*
  %1271 = load i64, i64* %RDX.i165
  %1272 = load i64, i64* %RDI.i166
  %1273 = mul i64 %1272, 8
  %1274 = add i64 %1273, %1271
  %1275 = load i64, i64* %RAX.i164
  %1276 = load i64, i64* %PC.i163
  %1277 = add i64 %1276, 4
  store i64 %1277, i64* %PC.i163
  %1278 = inttoptr i64 %1274 to i64*
  store i64 %1275, i64* %1278
  store %struct.Memory* %loadMem_4e2230, %struct.Memory** %MEMORY
  %loadMem_4e2234 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1280 = getelementptr inbounds %struct.GPR, %struct.GPR* %1279, i32 0, i32 33
  %1281 = getelementptr inbounds %struct.Reg, %struct.Reg* %1280, i32 0, i32 0
  %PC.i160 = bitcast %union.anon* %1281 to i64*
  %1282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1283 = getelementptr inbounds %struct.GPR, %struct.GPR* %1282, i32 0, i32 1
  %1284 = getelementptr inbounds %struct.Reg, %struct.Reg* %1283, i32 0, i32 0
  %RAX.i161 = bitcast %union.anon* %1284 to i64*
  %1285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1286 = getelementptr inbounds %struct.GPR, %struct.GPR* %1285, i32 0, i32 15
  %1287 = getelementptr inbounds %struct.Reg, %struct.Reg* %1286, i32 0, i32 0
  %RBP.i162 = bitcast %union.anon* %1287 to i64*
  %1288 = load i64, i64* %RBP.i162
  %1289 = sub i64 %1288, 32
  %1290 = load i64, i64* %PC.i160
  %1291 = add i64 %1290, 4
  store i64 %1291, i64* %PC.i160
  %1292 = inttoptr i64 %1289 to i64*
  %1293 = load i64, i64* %1292
  store i64 %1293, i64* %RAX.i161, align 8
  store %struct.Memory* %loadMem_4e2234, %struct.Memory** %MEMORY
  %loadMem_4e2238 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1295 = getelementptr inbounds %struct.GPR, %struct.GPR* %1294, i32 0, i32 33
  %1296 = getelementptr inbounds %struct.Reg, %struct.Reg* %1295, i32 0, i32 0
  %PC.i157 = bitcast %union.anon* %1296 to i64*
  %1297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1298 = getelementptr inbounds %struct.GPR, %struct.GPR* %1297, i32 0, i32 7
  %1299 = getelementptr inbounds %struct.Reg, %struct.Reg* %1298, i32 0, i32 0
  %RDX.i158 = bitcast %union.anon* %1299 to i64*
  %1300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1301 = getelementptr inbounds %struct.GPR, %struct.GPR* %1300, i32 0, i32 15
  %1302 = getelementptr inbounds %struct.Reg, %struct.Reg* %1301, i32 0, i32 0
  %RBP.i159 = bitcast %union.anon* %1302 to i64*
  %1303 = load i64, i64* %RBP.i159
  %1304 = sub i64 %1303, 8
  %1305 = load i64, i64* %PC.i157
  %1306 = add i64 %1305, 4
  store i64 %1306, i64* %PC.i157
  %1307 = inttoptr i64 %1304 to i64*
  %1308 = load i64, i64* %1307
  store i64 %1308, i64* %RDX.i158, align 8
  store %struct.Memory* %loadMem_4e2238, %struct.Memory** %MEMORY
  %loadMem_4e223c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1310 = getelementptr inbounds %struct.GPR, %struct.GPR* %1309, i32 0, i32 33
  %1311 = getelementptr inbounds %struct.Reg, %struct.Reg* %1310, i32 0, i32 0
  %PC.i154 = bitcast %union.anon* %1311 to i64*
  %1312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1313 = getelementptr inbounds %struct.GPR, %struct.GPR* %1312, i32 0, i32 5
  %1314 = getelementptr inbounds %struct.Reg, %struct.Reg* %1313, i32 0, i32 0
  %RCX.i155 = bitcast %union.anon* %1314 to i64*
  %1315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1316 = getelementptr inbounds %struct.GPR, %struct.GPR* %1315, i32 0, i32 15
  %1317 = getelementptr inbounds %struct.Reg, %struct.Reg* %1316, i32 0, i32 0
  %RBP.i156 = bitcast %union.anon* %1317 to i64*
  %1318 = load i64, i64* %RBP.i156
  %1319 = sub i64 %1318, 20
  %1320 = load i64, i64* %PC.i154
  %1321 = add i64 %1320, 3
  store i64 %1321, i64* %PC.i154
  %1322 = inttoptr i64 %1319 to i32*
  %1323 = load i32, i32* %1322
  %1324 = zext i32 %1323 to i64
  store i64 %1324, i64* %RCX.i155, align 8
  store %struct.Memory* %loadMem_4e223c, %struct.Memory** %MEMORY
  %loadMem_4e223f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1326 = getelementptr inbounds %struct.GPR, %struct.GPR* %1325, i32 0, i32 33
  %1327 = getelementptr inbounds %struct.Reg, %struct.Reg* %1326, i32 0, i32 0
  %PC.i151 = bitcast %union.anon* %1327 to i64*
  %1328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1329 = getelementptr inbounds %struct.GPR, %struct.GPR* %1328, i32 0, i32 9
  %1330 = getelementptr inbounds %struct.Reg, %struct.Reg* %1329, i32 0, i32 0
  %RSI.i152 = bitcast %union.anon* %1330 to i64*
  %1331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1332 = getelementptr inbounds %struct.GPR, %struct.GPR* %1331, i32 0, i32 15
  %1333 = getelementptr inbounds %struct.Reg, %struct.Reg* %1332, i32 0, i32 0
  %RBP.i153 = bitcast %union.anon* %1333 to i64*
  %1334 = load i64, i64* %RBP.i153
  %1335 = sub i64 %1334, 16
  %1336 = load i64, i64* %PC.i151
  %1337 = add i64 %1336, 3
  store i64 %1337, i64* %PC.i151
  %1338 = inttoptr i64 %1335 to i32*
  %1339 = load i32, i32* %1338
  %1340 = zext i32 %1339 to i64
  store i64 %1340, i64* %RSI.i152, align 8
  store %struct.Memory* %loadMem_4e223f, %struct.Memory** %MEMORY
  %loadMem_4e2242 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1342 = getelementptr inbounds %struct.GPR, %struct.GPR* %1341, i32 0, i32 33
  %1343 = getelementptr inbounds %struct.Reg, %struct.Reg* %1342, i32 0, i32 0
  %PC.i148 = bitcast %union.anon* %1343 to i64*
  %1344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1345 = getelementptr inbounds %struct.GPR, %struct.GPR* %1344, i32 0, i32 9
  %1346 = getelementptr inbounds %struct.Reg, %struct.Reg* %1345, i32 0, i32 0
  %RSI.i149 = bitcast %union.anon* %1346 to i64*
  %1347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1348 = getelementptr inbounds %struct.GPR, %struct.GPR* %1347, i32 0, i32 15
  %1349 = getelementptr inbounds %struct.Reg, %struct.Reg* %1348, i32 0, i32 0
  %RBP.i150 = bitcast %union.anon* %1349 to i64*
  %1350 = load i64, i64* %RSI.i149
  %1351 = load i64, i64* %RBP.i150
  %1352 = sub i64 %1351, 12
  %1353 = load i64, i64* %PC.i148
  %1354 = add i64 %1353, 3
  store i64 %1354, i64* %PC.i148
  %1355 = trunc i64 %1350 to i32
  %1356 = inttoptr i64 %1352 to i32*
  %1357 = load i32, i32* %1356
  %1358 = sub i32 %1355, %1357
  %1359 = zext i32 %1358 to i64
  store i64 %1359, i64* %RSI.i149, align 8
  %1360 = icmp ult i32 %1355, %1357
  %1361 = zext i1 %1360 to i8
  %1362 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1361, i8* %1362, align 1
  %1363 = and i32 %1358, 255
  %1364 = call i32 @llvm.ctpop.i32(i32 %1363)
  %1365 = trunc i32 %1364 to i8
  %1366 = and i8 %1365, 1
  %1367 = xor i8 %1366, 1
  %1368 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1367, i8* %1368, align 1
  %1369 = xor i32 %1357, %1355
  %1370 = xor i32 %1369, %1358
  %1371 = lshr i32 %1370, 4
  %1372 = trunc i32 %1371 to i8
  %1373 = and i8 %1372, 1
  %1374 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1373, i8* %1374, align 1
  %1375 = icmp eq i32 %1358, 0
  %1376 = zext i1 %1375 to i8
  %1377 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1376, i8* %1377, align 1
  %1378 = lshr i32 %1358, 31
  %1379 = trunc i32 %1378 to i8
  %1380 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1379, i8* %1380, align 1
  %1381 = lshr i32 %1355, 31
  %1382 = lshr i32 %1357, 31
  %1383 = xor i32 %1382, %1381
  %1384 = xor i32 %1378, %1381
  %1385 = add i32 %1384, %1383
  %1386 = icmp eq i32 %1385, 2
  %1387 = zext i1 %1386 to i8
  %1388 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1387, i8* %1388, align 1
  store %struct.Memory* %loadMem_4e2242, %struct.Memory** %MEMORY
  %loadMem_4e2245 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1390 = getelementptr inbounds %struct.GPR, %struct.GPR* %1389, i32 0, i32 33
  %1391 = getelementptr inbounds %struct.Reg, %struct.Reg* %1390, i32 0, i32 0
  %PC.i146 = bitcast %union.anon* %1391 to i64*
  %1392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1393 = getelementptr inbounds %struct.GPR, %struct.GPR* %1392, i32 0, i32 9
  %1394 = getelementptr inbounds %struct.Reg, %struct.Reg* %1393, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %1394 to i32*
  %1395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1396 = getelementptr inbounds %struct.GPR, %struct.GPR* %1395, i32 0, i32 5
  %1397 = getelementptr inbounds %struct.Reg, %struct.Reg* %1396, i32 0, i32 0
  %RCX.i147 = bitcast %union.anon* %1397 to i64*
  %1398 = load i64, i64* %RCX.i147
  %1399 = load i32, i32* %ESI.i
  %1400 = zext i32 %1399 to i64
  %1401 = load i64, i64* %PC.i146
  %1402 = add i64 %1401, 2
  store i64 %1402, i64* %PC.i146
  %1403 = trunc i64 %1398 to i32
  %1404 = sub i32 %1403, %1399
  %1405 = zext i32 %1404 to i64
  store i64 %1405, i64* %RCX.i147, align 8
  %1406 = icmp ult i32 %1403, %1399
  %1407 = zext i1 %1406 to i8
  %1408 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1407, i8* %1408, align 1
  %1409 = and i32 %1404, 255
  %1410 = call i32 @llvm.ctpop.i32(i32 %1409)
  %1411 = trunc i32 %1410 to i8
  %1412 = and i8 %1411, 1
  %1413 = xor i8 %1412, 1
  %1414 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1413, i8* %1414, align 1
  %1415 = xor i64 %1400, %1398
  %1416 = trunc i64 %1415 to i32
  %1417 = xor i32 %1416, %1404
  %1418 = lshr i32 %1417, 4
  %1419 = trunc i32 %1418 to i8
  %1420 = and i8 %1419, 1
  %1421 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1420, i8* %1421, align 1
  %1422 = icmp eq i32 %1404, 0
  %1423 = zext i1 %1422 to i8
  %1424 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1423, i8* %1424, align 1
  %1425 = lshr i32 %1404, 31
  %1426 = trunc i32 %1425 to i8
  %1427 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1426, i8* %1427, align 1
  %1428 = lshr i32 %1403, 31
  %1429 = lshr i32 %1399, 31
  %1430 = xor i32 %1429, %1428
  %1431 = xor i32 %1425, %1428
  %1432 = add i32 %1431, %1430
  %1433 = icmp eq i32 %1432, 2
  %1434 = zext i1 %1433 to i8
  %1435 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1434, i8* %1435, align 1
  store %struct.Memory* %loadMem_4e2245, %struct.Memory** %MEMORY
  %loadMem_4e2247 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1437 = getelementptr inbounds %struct.GPR, %struct.GPR* %1436, i32 0, i32 33
  %1438 = getelementptr inbounds %struct.Reg, %struct.Reg* %1437, i32 0, i32 0
  %PC.i143 = bitcast %union.anon* %1438 to i64*
  %1439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1440 = getelementptr inbounds %struct.GPR, %struct.GPR* %1439, i32 0, i32 5
  %1441 = getelementptr inbounds %struct.Reg, %struct.Reg* %1440, i32 0, i32 0
  %RCX.i144 = bitcast %union.anon* %1441 to i64*
  %1442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1443 = getelementptr inbounds %struct.GPR, %struct.GPR* %1442, i32 0, i32 15
  %1444 = getelementptr inbounds %struct.Reg, %struct.Reg* %1443, i32 0, i32 0
  %RBP.i145 = bitcast %union.anon* %1444 to i64*
  %1445 = load i64, i64* %RCX.i144
  %1446 = load i64, i64* %RBP.i145
  %1447 = sub i64 %1446, 40
  %1448 = load i64, i64* %PC.i143
  %1449 = add i64 %1448, 3
  store i64 %1449, i64* %PC.i143
  %1450 = trunc i64 %1445 to i32
  %1451 = inttoptr i64 %1447 to i32*
  %1452 = load i32, i32* %1451
  %1453 = add i32 %1452, %1450
  %1454 = zext i32 %1453 to i64
  store i64 %1454, i64* %RCX.i144, align 8
  %1455 = icmp ult i32 %1453, %1450
  %1456 = icmp ult i32 %1453, %1452
  %1457 = or i1 %1455, %1456
  %1458 = zext i1 %1457 to i8
  %1459 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1458, i8* %1459, align 1
  %1460 = and i32 %1453, 255
  %1461 = call i32 @llvm.ctpop.i32(i32 %1460)
  %1462 = trunc i32 %1461 to i8
  %1463 = and i8 %1462, 1
  %1464 = xor i8 %1463, 1
  %1465 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1464, i8* %1465, align 1
  %1466 = xor i32 %1452, %1450
  %1467 = xor i32 %1466, %1453
  %1468 = lshr i32 %1467, 4
  %1469 = trunc i32 %1468 to i8
  %1470 = and i8 %1469, 1
  %1471 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1470, i8* %1471, align 1
  %1472 = icmp eq i32 %1453, 0
  %1473 = zext i1 %1472 to i8
  %1474 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1473, i8* %1474, align 1
  %1475 = lshr i32 %1453, 31
  %1476 = trunc i32 %1475 to i8
  %1477 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1476, i8* %1477, align 1
  %1478 = lshr i32 %1450, 31
  %1479 = lshr i32 %1452, 31
  %1480 = xor i32 %1475, %1478
  %1481 = xor i32 %1475, %1479
  %1482 = add i32 %1480, %1481
  %1483 = icmp eq i32 %1482, 2
  %1484 = zext i1 %1483 to i8
  %1485 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1484, i8* %1485, align 1
  store %struct.Memory* %loadMem_4e2247, %struct.Memory** %MEMORY
  %loadMem_4e224a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1486 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1487 = getelementptr inbounds %struct.GPR, %struct.GPR* %1486, i32 0, i32 33
  %1488 = getelementptr inbounds %struct.Reg, %struct.Reg* %1487, i32 0, i32 0
  %PC.i140 = bitcast %union.anon* %1488 to i64*
  %1489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1490 = getelementptr inbounds %struct.GPR, %struct.GPR* %1489, i32 0, i32 5
  %1491 = getelementptr inbounds %struct.Reg, %struct.Reg* %1490, i32 0, i32 0
  %ECX.i141 = bitcast %union.anon* %1491 to i32*
  %1492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1493 = getelementptr inbounds %struct.GPR, %struct.GPR* %1492, i32 0, i32 11
  %1494 = getelementptr inbounds %struct.Reg, %struct.Reg* %1493, i32 0, i32 0
  %RDI.i142 = bitcast %union.anon* %1494 to i64*
  %1495 = load i32, i32* %ECX.i141
  %1496 = zext i32 %1495 to i64
  %1497 = load i64, i64* %PC.i140
  %1498 = add i64 %1497, 3
  store i64 %1498, i64* %PC.i140
  %1499 = shl i64 %1496, 32
  %1500 = ashr exact i64 %1499, 32
  store i64 %1500, i64* %RDI.i142, align 8
  store %struct.Memory* %loadMem_4e224a, %struct.Memory** %MEMORY
  %loadMem_4e224d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1502 = getelementptr inbounds %struct.GPR, %struct.GPR* %1501, i32 0, i32 33
  %1503 = getelementptr inbounds %struct.Reg, %struct.Reg* %1502, i32 0, i32 0
  %PC.i137 = bitcast %union.anon* %1503 to i64*
  %1504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1505 = getelementptr inbounds %struct.GPR, %struct.GPR* %1504, i32 0, i32 1
  %1506 = getelementptr inbounds %struct.Reg, %struct.Reg* %1505, i32 0, i32 0
  %RAX.i138 = bitcast %union.anon* %1506 to i64*
  %1507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1508 = getelementptr inbounds %struct.GPR, %struct.GPR* %1507, i32 0, i32 7
  %1509 = getelementptr inbounds %struct.Reg, %struct.Reg* %1508, i32 0, i32 0
  %RDX.i139 = bitcast %union.anon* %1509 to i64*
  %1510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1511 = getelementptr inbounds %struct.GPR, %struct.GPR* %1510, i32 0, i32 11
  %1512 = getelementptr inbounds %struct.Reg, %struct.Reg* %1511, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %1512 to i64*
  %1513 = load i64, i64* %RDX.i139
  %1514 = load i64, i64* %RDI.i
  %1515 = mul i64 %1514, 8
  %1516 = add i64 %1515, %1513
  %1517 = load i64, i64* %RAX.i138
  %1518 = load i64, i64* %PC.i137
  %1519 = add i64 %1518, 4
  store i64 %1519, i64* %PC.i137
  %1520 = inttoptr i64 %1516 to i64*
  store i64 %1517, i64* %1520
  store %struct.Memory* %loadMem_4e224d, %struct.Memory** %MEMORY
  %loadMem_4e2251 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1521 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1522 = getelementptr inbounds %struct.GPR, %struct.GPR* %1521, i32 0, i32 33
  %1523 = getelementptr inbounds %struct.Reg, %struct.Reg* %1522, i32 0, i32 0
  %PC.i134 = bitcast %union.anon* %1523 to i64*
  %1524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1525 = getelementptr inbounds %struct.GPR, %struct.GPR* %1524, i32 0, i32 1
  %1526 = getelementptr inbounds %struct.Reg, %struct.Reg* %1525, i32 0, i32 0
  %RAX.i135 = bitcast %union.anon* %1526 to i64*
  %1527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1528 = getelementptr inbounds %struct.GPR, %struct.GPR* %1527, i32 0, i32 15
  %1529 = getelementptr inbounds %struct.Reg, %struct.Reg* %1528, i32 0, i32 0
  %RBP.i136 = bitcast %union.anon* %1529 to i64*
  %1530 = load i64, i64* %RBP.i136
  %1531 = sub i64 %1530, 40
  %1532 = load i64, i64* %PC.i134
  %1533 = add i64 %1532, 3
  store i64 %1533, i64* %PC.i134
  %1534 = inttoptr i64 %1531 to i32*
  %1535 = load i32, i32* %1534
  %1536 = zext i32 %1535 to i64
  store i64 %1536, i64* %RAX.i135, align 8
  store %struct.Memory* %loadMem_4e2251, %struct.Memory** %MEMORY
  %loadMem_4e2254 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1537 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1538 = getelementptr inbounds %struct.GPR, %struct.GPR* %1537, i32 0, i32 33
  %1539 = getelementptr inbounds %struct.Reg, %struct.Reg* %1538, i32 0, i32 0
  %PC.i132 = bitcast %union.anon* %1539 to i64*
  %1540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1541 = getelementptr inbounds %struct.GPR, %struct.GPR* %1540, i32 0, i32 1
  %1542 = getelementptr inbounds %struct.Reg, %struct.Reg* %1541, i32 0, i32 0
  %RAX.i133 = bitcast %union.anon* %1542 to i64*
  %1543 = load i64, i64* %RAX.i133
  %1544 = load i64, i64* %PC.i132
  %1545 = add i64 %1544, 3
  store i64 %1545, i64* %PC.i132
  %1546 = trunc i64 %1543 to i32
  %1547 = add i32 1, %1546
  %1548 = zext i32 %1547 to i64
  store i64 %1548, i64* %RAX.i133, align 8
  %1549 = icmp ult i32 %1547, %1546
  %1550 = icmp ult i32 %1547, 1
  %1551 = or i1 %1549, %1550
  %1552 = zext i1 %1551 to i8
  %1553 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1552, i8* %1553, align 1
  %1554 = and i32 %1547, 255
  %1555 = call i32 @llvm.ctpop.i32(i32 %1554)
  %1556 = trunc i32 %1555 to i8
  %1557 = and i8 %1556, 1
  %1558 = xor i8 %1557, 1
  %1559 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1558, i8* %1559, align 1
  %1560 = xor i64 1, %1543
  %1561 = trunc i64 %1560 to i32
  %1562 = xor i32 %1561, %1547
  %1563 = lshr i32 %1562, 4
  %1564 = trunc i32 %1563 to i8
  %1565 = and i8 %1564, 1
  %1566 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1565, i8* %1566, align 1
  %1567 = icmp eq i32 %1547, 0
  %1568 = zext i1 %1567 to i8
  %1569 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1568, i8* %1569, align 1
  %1570 = lshr i32 %1547, 31
  %1571 = trunc i32 %1570 to i8
  %1572 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1571, i8* %1572, align 1
  %1573 = lshr i32 %1546, 31
  %1574 = xor i32 %1570, %1573
  %1575 = add i32 %1574, %1570
  %1576 = icmp eq i32 %1575, 2
  %1577 = zext i1 %1576 to i8
  %1578 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1577, i8* %1578, align 1
  store %struct.Memory* %loadMem_4e2254, %struct.Memory** %MEMORY
  %loadMem_4e2257 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1580 = getelementptr inbounds %struct.GPR, %struct.GPR* %1579, i32 0, i32 33
  %1581 = getelementptr inbounds %struct.Reg, %struct.Reg* %1580, i32 0, i32 0
  %PC.i129 = bitcast %union.anon* %1581 to i64*
  %1582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1583 = getelementptr inbounds %struct.GPR, %struct.GPR* %1582, i32 0, i32 1
  %1584 = getelementptr inbounds %struct.Reg, %struct.Reg* %1583, i32 0, i32 0
  %EAX.i130 = bitcast %union.anon* %1584 to i32*
  %1585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1586 = getelementptr inbounds %struct.GPR, %struct.GPR* %1585, i32 0, i32 15
  %1587 = getelementptr inbounds %struct.Reg, %struct.Reg* %1586, i32 0, i32 0
  %RBP.i131 = bitcast %union.anon* %1587 to i64*
  %1588 = load i64, i64* %RBP.i131
  %1589 = sub i64 %1588, 40
  %1590 = load i32, i32* %EAX.i130
  %1591 = zext i32 %1590 to i64
  %1592 = load i64, i64* %PC.i129
  %1593 = add i64 %1592, 3
  store i64 %1593, i64* %PC.i129
  %1594 = inttoptr i64 %1589 to i32*
  store i32 %1590, i32* %1594
  store %struct.Memory* %loadMem_4e2257, %struct.Memory** %MEMORY
  %loadMem_4e225a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1596 = getelementptr inbounds %struct.GPR, %struct.GPR* %1595, i32 0, i32 33
  %1597 = getelementptr inbounds %struct.Reg, %struct.Reg* %1596, i32 0, i32 0
  %PC.i128 = bitcast %union.anon* %1597 to i64*
  %1598 = load i64, i64* %PC.i128
  %1599 = add i64 %1598, -113
  %1600 = load i64, i64* %PC.i128
  %1601 = add i64 %1600, 5
  store i64 %1601, i64* %PC.i128
  %1602 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1599, i64* %1602, align 8
  store %struct.Memory* %loadMem_4e225a, %struct.Memory** %MEMORY
  br label %block_.L_4e21e9

block_.L_4e225f:                                  ; preds = %block_.L_4e21e9
  %loadMem_4e225f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1603 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1604 = getelementptr inbounds %struct.GPR, %struct.GPR* %1603, i32 0, i32 33
  %1605 = getelementptr inbounds %struct.Reg, %struct.Reg* %1604, i32 0, i32 0
  %PC.i125 = bitcast %union.anon* %1605 to i64*
  %1606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1607 = getelementptr inbounds %struct.GPR, %struct.GPR* %1606, i32 0, i32 1
  %1608 = getelementptr inbounds %struct.Reg, %struct.Reg* %1607, i32 0, i32 0
  %RAX.i126 = bitcast %union.anon* %1608 to i64*
  %1609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1610 = getelementptr inbounds %struct.GPR, %struct.GPR* %1609, i32 0, i32 15
  %1611 = getelementptr inbounds %struct.Reg, %struct.Reg* %1610, i32 0, i32 0
  %RBP.i127 = bitcast %union.anon* %1611 to i64*
  %1612 = load i64, i64* %RBP.i127
  %1613 = sub i64 %1612, 36
  %1614 = load i64, i64* %PC.i125
  %1615 = add i64 %1614, 3
  store i64 %1615, i64* %PC.i125
  %1616 = inttoptr i64 %1613 to i32*
  %1617 = load i32, i32* %1616
  %1618 = zext i32 %1617 to i64
  store i64 %1618, i64* %RAX.i126, align 8
  store %struct.Memory* %loadMem_4e225f, %struct.Memory** %MEMORY
  %loadMem_4e2262 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1620 = getelementptr inbounds %struct.GPR, %struct.GPR* %1619, i32 0, i32 33
  %1621 = getelementptr inbounds %struct.Reg, %struct.Reg* %1620, i32 0, i32 0
  %PC.i122 = bitcast %union.anon* %1621 to i64*
  %1622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1623 = getelementptr inbounds %struct.GPR, %struct.GPR* %1622, i32 0, i32 5
  %1624 = getelementptr inbounds %struct.Reg, %struct.Reg* %1623, i32 0, i32 0
  %RCX.i123 = bitcast %union.anon* %1624 to i64*
  %1625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1626 = getelementptr inbounds %struct.GPR, %struct.GPR* %1625, i32 0, i32 15
  %1627 = getelementptr inbounds %struct.Reg, %struct.Reg* %1626, i32 0, i32 0
  %RBP.i124 = bitcast %union.anon* %1627 to i64*
  %1628 = load i64, i64* %RBP.i124
  %1629 = sub i64 %1628, 20
  %1630 = load i64, i64* %PC.i122
  %1631 = add i64 %1630, 3
  store i64 %1631, i64* %PC.i122
  %1632 = inttoptr i64 %1629 to i32*
  %1633 = load i32, i32* %1632
  %1634 = zext i32 %1633 to i64
  store i64 %1634, i64* %RCX.i123, align 8
  store %struct.Memory* %loadMem_4e2262, %struct.Memory** %MEMORY
  %loadMem_4e2265 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1635 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1636 = getelementptr inbounds %struct.GPR, %struct.GPR* %1635, i32 0, i32 33
  %1637 = getelementptr inbounds %struct.Reg, %struct.Reg* %1636, i32 0, i32 0
  %PC.i119 = bitcast %union.anon* %1637 to i64*
  %1638 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1639 = getelementptr inbounds %struct.GPR, %struct.GPR* %1638, i32 0, i32 1
  %1640 = getelementptr inbounds %struct.Reg, %struct.Reg* %1639, i32 0, i32 0
  %EAX.i120 = bitcast %union.anon* %1640 to i32*
  %1641 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1642 = getelementptr inbounds %struct.GPR, %struct.GPR* %1641, i32 0, i32 5
  %1643 = getelementptr inbounds %struct.Reg, %struct.Reg* %1642, i32 0, i32 0
  %RCX.i121 = bitcast %union.anon* %1643 to i64*
  %1644 = load i64, i64* %RCX.i121
  %1645 = load i32, i32* %EAX.i120
  %1646 = zext i32 %1645 to i64
  %1647 = load i64, i64* %PC.i119
  %1648 = add i64 %1647, 2
  store i64 %1648, i64* %PC.i119
  %1649 = trunc i64 %1644 to i32
  %1650 = sub i32 %1649, %1645
  %1651 = zext i32 %1650 to i64
  store i64 %1651, i64* %RCX.i121, align 8
  %1652 = icmp ult i32 %1649, %1645
  %1653 = zext i1 %1652 to i8
  %1654 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1653, i8* %1654, align 1
  %1655 = and i32 %1650, 255
  %1656 = call i32 @llvm.ctpop.i32(i32 %1655)
  %1657 = trunc i32 %1656 to i8
  %1658 = and i8 %1657, 1
  %1659 = xor i8 %1658, 1
  %1660 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1659, i8* %1660, align 1
  %1661 = xor i64 %1646, %1644
  %1662 = trunc i64 %1661 to i32
  %1663 = xor i32 %1662, %1650
  %1664 = lshr i32 %1663, 4
  %1665 = trunc i32 %1664 to i8
  %1666 = and i8 %1665, 1
  %1667 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1666, i8* %1667, align 1
  %1668 = icmp eq i32 %1650, 0
  %1669 = zext i1 %1668 to i8
  %1670 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1669, i8* %1670, align 1
  %1671 = lshr i32 %1650, 31
  %1672 = trunc i32 %1671 to i8
  %1673 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1672, i8* %1673, align 1
  %1674 = lshr i32 %1649, 31
  %1675 = lshr i32 %1645, 31
  %1676 = xor i32 %1675, %1674
  %1677 = xor i32 %1671, %1674
  %1678 = add i32 %1677, %1676
  %1679 = icmp eq i32 %1678, 2
  %1680 = zext i1 %1679 to i8
  %1681 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1680, i8* %1681, align 1
  store %struct.Memory* %loadMem_4e2265, %struct.Memory** %MEMORY
  %loadMem_4e2267 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1682 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1683 = getelementptr inbounds %struct.GPR, %struct.GPR* %1682, i32 0, i32 33
  %1684 = getelementptr inbounds %struct.Reg, %struct.Reg* %1683, i32 0, i32 0
  %PC.i116 = bitcast %union.anon* %1684 to i64*
  %1685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1686 = getelementptr inbounds %struct.GPR, %struct.GPR* %1685, i32 0, i32 5
  %1687 = getelementptr inbounds %struct.Reg, %struct.Reg* %1686, i32 0, i32 0
  %ECX.i117 = bitcast %union.anon* %1687 to i32*
  %1688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1689 = getelementptr inbounds %struct.GPR, %struct.GPR* %1688, i32 0, i32 15
  %1690 = getelementptr inbounds %struct.Reg, %struct.Reg* %1689, i32 0, i32 0
  %RBP.i118 = bitcast %union.anon* %1690 to i64*
  %1691 = load i64, i64* %RBP.i118
  %1692 = sub i64 %1691, 20
  %1693 = load i32, i32* %ECX.i117
  %1694 = zext i32 %1693 to i64
  %1695 = load i64, i64* %PC.i116
  %1696 = add i64 %1695, 3
  store i64 %1696, i64* %PC.i116
  %1697 = inttoptr i64 %1692 to i32*
  store i32 %1693, i32* %1697
  store %struct.Memory* %loadMem_4e2267, %struct.Memory** %MEMORY
  %loadMem_4e226a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1699 = getelementptr inbounds %struct.GPR, %struct.GPR* %1698, i32 0, i32 33
  %1700 = getelementptr inbounds %struct.Reg, %struct.Reg* %1699, i32 0, i32 0
  %PC.i115 = bitcast %union.anon* %1700 to i64*
  %1701 = load i64, i64* %PC.i115
  %1702 = add i64 %1701, 132
  %1703 = load i64, i64* %PC.i115
  %1704 = add i64 %1703, 5
  store i64 %1704, i64* %PC.i115
  %1705 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1702, i64* %1705, align 8
  store %struct.Memory* %loadMem_4e226a, %struct.Memory** %MEMORY
  br label %block_.L_4e22ee

block_.L_4e226f:                                  ; preds = %block_.L_4e21c5
  %loadMem_4e226f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1707 = getelementptr inbounds %struct.GPR, %struct.GPR* %1706, i32 0, i32 33
  %1708 = getelementptr inbounds %struct.Reg, %struct.Reg* %1707, i32 0, i32 0
  %PC.i112 = bitcast %union.anon* %1708 to i64*
  %1709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1710 = getelementptr inbounds %struct.GPR, %struct.GPR* %1709, i32 0, i32 1
  %1711 = getelementptr inbounds %struct.Reg, %struct.Reg* %1710, i32 0, i32 0
  %RAX.i113 = bitcast %union.anon* %1711 to i64*
  %1712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1713 = getelementptr inbounds %struct.GPR, %struct.GPR* %1712, i32 0, i32 15
  %1714 = getelementptr inbounds %struct.Reg, %struct.Reg* %1713, i32 0, i32 0
  %RBP.i114 = bitcast %union.anon* %1714 to i64*
  %1715 = load i64, i64* %RBP.i114
  %1716 = sub i64 %1715, 20
  %1717 = load i64, i64* %PC.i112
  %1718 = add i64 %1717, 3
  store i64 %1718, i64* %PC.i112
  %1719 = inttoptr i64 %1716 to i32*
  %1720 = load i32, i32* %1719
  %1721 = zext i32 %1720 to i64
  store i64 %1721, i64* %RAX.i113, align 8
  store %struct.Memory* %loadMem_4e226f, %struct.Memory** %MEMORY
  %loadMem_4e2272 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1722 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1723 = getelementptr inbounds %struct.GPR, %struct.GPR* %1722, i32 0, i32 33
  %1724 = getelementptr inbounds %struct.Reg, %struct.Reg* %1723, i32 0, i32 0
  %PC.i109 = bitcast %union.anon* %1724 to i64*
  %1725 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1726 = getelementptr inbounds %struct.GPR, %struct.GPR* %1725, i32 0, i32 1
  %1727 = getelementptr inbounds %struct.Reg, %struct.Reg* %1726, i32 0, i32 0
  %RAX.i110 = bitcast %union.anon* %1727 to i64*
  %1728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1729 = getelementptr inbounds %struct.GPR, %struct.GPR* %1728, i32 0, i32 15
  %1730 = getelementptr inbounds %struct.Reg, %struct.Reg* %1729, i32 0, i32 0
  %RBP.i111 = bitcast %union.anon* %1730 to i64*
  %1731 = load i64, i64* %RAX.i110
  %1732 = load i64, i64* %RBP.i111
  %1733 = sub i64 %1732, 16
  %1734 = load i64, i64* %PC.i109
  %1735 = add i64 %1734, 3
  store i64 %1735, i64* %PC.i109
  %1736 = trunc i64 %1731 to i32
  %1737 = inttoptr i64 %1733 to i32*
  %1738 = load i32, i32* %1737
  %1739 = sub i32 %1736, %1738
  %1740 = zext i32 %1739 to i64
  store i64 %1740, i64* %RAX.i110, align 8
  %1741 = icmp ult i32 %1736, %1738
  %1742 = zext i1 %1741 to i8
  %1743 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1742, i8* %1743, align 1
  %1744 = and i32 %1739, 255
  %1745 = call i32 @llvm.ctpop.i32(i32 %1744)
  %1746 = trunc i32 %1745 to i8
  %1747 = and i8 %1746, 1
  %1748 = xor i8 %1747, 1
  %1749 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1748, i8* %1749, align 1
  %1750 = xor i32 %1738, %1736
  %1751 = xor i32 %1750, %1739
  %1752 = lshr i32 %1751, 4
  %1753 = trunc i32 %1752 to i8
  %1754 = and i8 %1753, 1
  %1755 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1754, i8* %1755, align 1
  %1756 = icmp eq i32 %1739, 0
  %1757 = zext i1 %1756 to i8
  %1758 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1757, i8* %1758, align 1
  %1759 = lshr i32 %1739, 31
  %1760 = trunc i32 %1759 to i8
  %1761 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1760, i8* %1761, align 1
  %1762 = lshr i32 %1736, 31
  %1763 = lshr i32 %1738, 31
  %1764 = xor i32 %1763, %1762
  %1765 = xor i32 %1759, %1762
  %1766 = add i32 %1765, %1764
  %1767 = icmp eq i32 %1766, 2
  %1768 = zext i1 %1767 to i8
  %1769 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1768, i8* %1769, align 1
  store %struct.Memory* %loadMem_4e2272, %struct.Memory** %MEMORY
  %loadMem_4e2275 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1771 = getelementptr inbounds %struct.GPR, %struct.GPR* %1770, i32 0, i32 33
  %1772 = getelementptr inbounds %struct.Reg, %struct.Reg* %1771, i32 0, i32 0
  %PC.i106 = bitcast %union.anon* %1772 to i64*
  %1773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1774 = getelementptr inbounds %struct.GPR, %struct.GPR* %1773, i32 0, i32 1
  %1775 = getelementptr inbounds %struct.Reg, %struct.Reg* %1774, i32 0, i32 0
  %EAX.i107 = bitcast %union.anon* %1775 to i32*
  %1776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1777 = getelementptr inbounds %struct.GPR, %struct.GPR* %1776, i32 0, i32 15
  %1778 = getelementptr inbounds %struct.Reg, %struct.Reg* %1777, i32 0, i32 0
  %RBP.i108 = bitcast %union.anon* %1778 to i64*
  %1779 = load i64, i64* %RBP.i108
  %1780 = sub i64 %1779, 44
  %1781 = load i32, i32* %EAX.i107
  %1782 = zext i32 %1781 to i64
  %1783 = load i64, i64* %PC.i106
  %1784 = add i64 %1783, 3
  store i64 %1784, i64* %PC.i106
  %1785 = inttoptr i64 %1780 to i32*
  store i32 %1781, i32* %1785
  store %struct.Memory* %loadMem_4e2275, %struct.Memory** %MEMORY
  %loadMem_4e2278 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1787 = getelementptr inbounds %struct.GPR, %struct.GPR* %1786, i32 0, i32 33
  %1788 = getelementptr inbounds %struct.Reg, %struct.Reg* %1787, i32 0, i32 0
  %PC.i104 = bitcast %union.anon* %1788 to i64*
  %1789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1790 = getelementptr inbounds %struct.GPR, %struct.GPR* %1789, i32 0, i32 15
  %1791 = getelementptr inbounds %struct.Reg, %struct.Reg* %1790, i32 0, i32 0
  %RBP.i105 = bitcast %union.anon* %1791 to i64*
  %1792 = load i64, i64* %RBP.i105
  %1793 = sub i64 %1792, 48
  %1794 = load i64, i64* %PC.i104
  %1795 = add i64 %1794, 7
  store i64 %1795, i64* %PC.i104
  %1796 = inttoptr i64 %1793 to i32*
  store i32 0, i32* %1796
  store %struct.Memory* %loadMem_4e2278, %struct.Memory** %MEMORY
  br label %block_.L_4e227f

block_.L_4e227f:                                  ; preds = %block_4e228b, %block_.L_4e226f
  %loadMem_4e227f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1797 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1798 = getelementptr inbounds %struct.GPR, %struct.GPR* %1797, i32 0, i32 33
  %1799 = getelementptr inbounds %struct.Reg, %struct.Reg* %1798, i32 0, i32 0
  %PC.i101 = bitcast %union.anon* %1799 to i64*
  %1800 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1801 = getelementptr inbounds %struct.GPR, %struct.GPR* %1800, i32 0, i32 1
  %1802 = getelementptr inbounds %struct.Reg, %struct.Reg* %1801, i32 0, i32 0
  %RAX.i102 = bitcast %union.anon* %1802 to i64*
  %1803 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1804 = getelementptr inbounds %struct.GPR, %struct.GPR* %1803, i32 0, i32 15
  %1805 = getelementptr inbounds %struct.Reg, %struct.Reg* %1804, i32 0, i32 0
  %RBP.i103 = bitcast %union.anon* %1805 to i64*
  %1806 = load i64, i64* %RBP.i103
  %1807 = sub i64 %1806, 48
  %1808 = load i64, i64* %PC.i101
  %1809 = add i64 %1808, 3
  store i64 %1809, i64* %PC.i101
  %1810 = inttoptr i64 %1807 to i32*
  %1811 = load i32, i32* %1810
  %1812 = zext i32 %1811 to i64
  store i64 %1812, i64* %RAX.i102, align 8
  store %struct.Memory* %loadMem_4e227f, %struct.Memory** %MEMORY
  %loadMem_4e2282 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1813 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1814 = getelementptr inbounds %struct.GPR, %struct.GPR* %1813, i32 0, i32 33
  %1815 = getelementptr inbounds %struct.Reg, %struct.Reg* %1814, i32 0, i32 0
  %PC.i98 = bitcast %union.anon* %1815 to i64*
  %1816 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1817 = getelementptr inbounds %struct.GPR, %struct.GPR* %1816, i32 0, i32 1
  %1818 = getelementptr inbounds %struct.Reg, %struct.Reg* %1817, i32 0, i32 0
  %EAX.i99 = bitcast %union.anon* %1818 to i32*
  %1819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1820 = getelementptr inbounds %struct.GPR, %struct.GPR* %1819, i32 0, i32 15
  %1821 = getelementptr inbounds %struct.Reg, %struct.Reg* %1820, i32 0, i32 0
  %RBP.i100 = bitcast %union.anon* %1821 to i64*
  %1822 = load i32, i32* %EAX.i99
  %1823 = zext i32 %1822 to i64
  %1824 = load i64, i64* %RBP.i100
  %1825 = sub i64 %1824, 44
  %1826 = load i64, i64* %PC.i98
  %1827 = add i64 %1826, 3
  store i64 %1827, i64* %PC.i98
  %1828 = inttoptr i64 %1825 to i32*
  %1829 = load i32, i32* %1828
  %1830 = sub i32 %1822, %1829
  %1831 = icmp ult i32 %1822, %1829
  %1832 = zext i1 %1831 to i8
  %1833 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1832, i8* %1833, align 1
  %1834 = and i32 %1830, 255
  %1835 = call i32 @llvm.ctpop.i32(i32 %1834)
  %1836 = trunc i32 %1835 to i8
  %1837 = and i8 %1836, 1
  %1838 = xor i8 %1837, 1
  %1839 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1838, i8* %1839, align 1
  %1840 = xor i32 %1829, %1822
  %1841 = xor i32 %1840, %1830
  %1842 = lshr i32 %1841, 4
  %1843 = trunc i32 %1842 to i8
  %1844 = and i8 %1843, 1
  %1845 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1844, i8* %1845, align 1
  %1846 = icmp eq i32 %1830, 0
  %1847 = zext i1 %1846 to i8
  %1848 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1847, i8* %1848, align 1
  %1849 = lshr i32 %1830, 31
  %1850 = trunc i32 %1849 to i8
  %1851 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1850, i8* %1851, align 1
  %1852 = lshr i32 %1822, 31
  %1853 = lshr i32 %1829, 31
  %1854 = xor i32 %1853, %1852
  %1855 = xor i32 %1849, %1852
  %1856 = add i32 %1855, %1854
  %1857 = icmp eq i32 %1856, 2
  %1858 = zext i1 %1857 to i8
  %1859 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1858, i8* %1859, align 1
  store %struct.Memory* %loadMem_4e2282, %struct.Memory** %MEMORY
  %loadMem_4e2285 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1860 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1861 = getelementptr inbounds %struct.GPR, %struct.GPR* %1860, i32 0, i32 33
  %1862 = getelementptr inbounds %struct.Reg, %struct.Reg* %1861, i32 0, i32 0
  %PC.i97 = bitcast %union.anon* %1862 to i64*
  %1863 = load i64, i64* %PC.i97
  %1864 = add i64 %1863, 96
  %1865 = load i64, i64* %PC.i97
  %1866 = add i64 %1865, 6
  %1867 = load i64, i64* %PC.i97
  %1868 = add i64 %1867, 6
  store i64 %1868, i64* %PC.i97
  %1869 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1870 = load i8, i8* %1869, align 1
  %1871 = icmp ne i8 %1870, 0
  %1872 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1873 = load i8, i8* %1872, align 1
  %1874 = icmp ne i8 %1873, 0
  %1875 = xor i1 %1871, %1874
  %1876 = xor i1 %1875, true
  %1877 = zext i1 %1876 to i8
  store i8 %1877, i8* %BRANCH_TAKEN, align 1
  %1878 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1879 = select i1 %1875, i64 %1866, i64 %1864
  store i64 %1879, i64* %1878, align 8
  store %struct.Memory* %loadMem_4e2285, %struct.Memory** %MEMORY
  %loadBr_4e2285 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4e2285 = icmp eq i8 %loadBr_4e2285, 1
  br i1 %cmpBr_4e2285, label %block_.L_4e22e5, label %block_4e228b

block_4e228b:                                     ; preds = %block_.L_4e227f
  %loadMem_4e228b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1881 = getelementptr inbounds %struct.GPR, %struct.GPR* %1880, i32 0, i32 33
  %1882 = getelementptr inbounds %struct.Reg, %struct.Reg* %1881, i32 0, i32 0
  %PC.i94 = bitcast %union.anon* %1882 to i64*
  %1883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1884 = getelementptr inbounds %struct.GPR, %struct.GPR* %1883, i32 0, i32 1
  %1885 = getelementptr inbounds %struct.Reg, %struct.Reg* %1884, i32 0, i32 0
  %RAX.i95 = bitcast %union.anon* %1885 to i64*
  %1886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1887 = getelementptr inbounds %struct.GPR, %struct.GPR* %1886, i32 0, i32 15
  %1888 = getelementptr inbounds %struct.Reg, %struct.Reg* %1887, i32 0, i32 0
  %RBP.i96 = bitcast %union.anon* %1888 to i64*
  %1889 = load i64, i64* %RBP.i96
  %1890 = sub i64 %1889, 8
  %1891 = load i64, i64* %PC.i94
  %1892 = add i64 %1891, 4
  store i64 %1892, i64* %PC.i94
  %1893 = inttoptr i64 %1890 to i64*
  %1894 = load i64, i64* %1893
  store i64 %1894, i64* %RAX.i95, align 8
  store %struct.Memory* %loadMem_4e228b, %struct.Memory** %MEMORY
  %loadMem_4e228f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1895 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1896 = getelementptr inbounds %struct.GPR, %struct.GPR* %1895, i32 0, i32 33
  %1897 = getelementptr inbounds %struct.Reg, %struct.Reg* %1896, i32 0, i32 0
  %PC.i91 = bitcast %union.anon* %1897 to i64*
  %1898 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1899 = getelementptr inbounds %struct.GPR, %struct.GPR* %1898, i32 0, i32 5
  %1900 = getelementptr inbounds %struct.Reg, %struct.Reg* %1899, i32 0, i32 0
  %RCX.i92 = bitcast %union.anon* %1900 to i64*
  %1901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1902 = getelementptr inbounds %struct.GPR, %struct.GPR* %1901, i32 0, i32 15
  %1903 = getelementptr inbounds %struct.Reg, %struct.Reg* %1902, i32 0, i32 0
  %RBP.i93 = bitcast %union.anon* %1903 to i64*
  %1904 = load i64, i64* %RBP.i93
  %1905 = sub i64 %1904, 12
  %1906 = load i64, i64* %PC.i91
  %1907 = add i64 %1906, 3
  store i64 %1907, i64* %PC.i91
  %1908 = inttoptr i64 %1905 to i32*
  %1909 = load i32, i32* %1908
  %1910 = zext i32 %1909 to i64
  store i64 %1910, i64* %RCX.i92, align 8
  store %struct.Memory* %loadMem_4e228f, %struct.Memory** %MEMORY
  %loadMem_4e2292 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1911 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1912 = getelementptr inbounds %struct.GPR, %struct.GPR* %1911, i32 0, i32 33
  %1913 = getelementptr inbounds %struct.Reg, %struct.Reg* %1912, i32 0, i32 0
  %PC.i88 = bitcast %union.anon* %1913 to i64*
  %1914 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1915 = getelementptr inbounds %struct.GPR, %struct.GPR* %1914, i32 0, i32 5
  %1916 = getelementptr inbounds %struct.Reg, %struct.Reg* %1915, i32 0, i32 0
  %RCX.i89 = bitcast %union.anon* %1916 to i64*
  %1917 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1918 = getelementptr inbounds %struct.GPR, %struct.GPR* %1917, i32 0, i32 15
  %1919 = getelementptr inbounds %struct.Reg, %struct.Reg* %1918, i32 0, i32 0
  %RBP.i90 = bitcast %union.anon* %1919 to i64*
  %1920 = load i64, i64* %RCX.i89
  %1921 = load i64, i64* %RBP.i90
  %1922 = sub i64 %1921, 48
  %1923 = load i64, i64* %PC.i88
  %1924 = add i64 %1923, 3
  store i64 %1924, i64* %PC.i88
  %1925 = trunc i64 %1920 to i32
  %1926 = inttoptr i64 %1922 to i32*
  %1927 = load i32, i32* %1926
  %1928 = add i32 %1927, %1925
  %1929 = zext i32 %1928 to i64
  store i64 %1929, i64* %RCX.i89, align 8
  %1930 = icmp ult i32 %1928, %1925
  %1931 = icmp ult i32 %1928, %1927
  %1932 = or i1 %1930, %1931
  %1933 = zext i1 %1932 to i8
  %1934 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1933, i8* %1934, align 1
  %1935 = and i32 %1928, 255
  %1936 = call i32 @llvm.ctpop.i32(i32 %1935)
  %1937 = trunc i32 %1936 to i8
  %1938 = and i8 %1937, 1
  %1939 = xor i8 %1938, 1
  %1940 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1939, i8* %1940, align 1
  %1941 = xor i32 %1927, %1925
  %1942 = xor i32 %1941, %1928
  %1943 = lshr i32 %1942, 4
  %1944 = trunc i32 %1943 to i8
  %1945 = and i8 %1944, 1
  %1946 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1945, i8* %1946, align 1
  %1947 = icmp eq i32 %1928, 0
  %1948 = zext i1 %1947 to i8
  %1949 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1948, i8* %1949, align 1
  %1950 = lshr i32 %1928, 31
  %1951 = trunc i32 %1950 to i8
  %1952 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1951, i8* %1952, align 1
  %1953 = lshr i32 %1925, 31
  %1954 = lshr i32 %1927, 31
  %1955 = xor i32 %1950, %1953
  %1956 = xor i32 %1950, %1954
  %1957 = add i32 %1955, %1956
  %1958 = icmp eq i32 %1957, 2
  %1959 = zext i1 %1958 to i8
  %1960 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1959, i8* %1960, align 1
  store %struct.Memory* %loadMem_4e2292, %struct.Memory** %MEMORY
  %loadMem_4e2295 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1961 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1962 = getelementptr inbounds %struct.GPR, %struct.GPR* %1961, i32 0, i32 33
  %1963 = getelementptr inbounds %struct.Reg, %struct.Reg* %1962, i32 0, i32 0
  %PC.i85 = bitcast %union.anon* %1963 to i64*
  %1964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1965 = getelementptr inbounds %struct.GPR, %struct.GPR* %1964, i32 0, i32 5
  %1966 = getelementptr inbounds %struct.Reg, %struct.Reg* %1965, i32 0, i32 0
  %ECX.i86 = bitcast %union.anon* %1966 to i32*
  %1967 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1968 = getelementptr inbounds %struct.GPR, %struct.GPR* %1967, i32 0, i32 7
  %1969 = getelementptr inbounds %struct.Reg, %struct.Reg* %1968, i32 0, i32 0
  %RDX.i87 = bitcast %union.anon* %1969 to i64*
  %1970 = load i32, i32* %ECX.i86
  %1971 = zext i32 %1970 to i64
  %1972 = load i64, i64* %PC.i85
  %1973 = add i64 %1972, 3
  store i64 %1973, i64* %PC.i85
  %1974 = shl i64 %1971, 32
  %1975 = ashr exact i64 %1974, 32
  store i64 %1975, i64* %RDX.i87, align 8
  store %struct.Memory* %loadMem_4e2295, %struct.Memory** %MEMORY
  %loadMem_4e2298 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1977 = getelementptr inbounds %struct.GPR, %struct.GPR* %1976, i32 0, i32 33
  %1978 = getelementptr inbounds %struct.Reg, %struct.Reg* %1977, i32 0, i32 0
  %PC.i82 = bitcast %union.anon* %1978 to i64*
  %1979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1980 = getelementptr inbounds %struct.GPR, %struct.GPR* %1979, i32 0, i32 1
  %1981 = getelementptr inbounds %struct.Reg, %struct.Reg* %1980, i32 0, i32 0
  %RAX.i83 = bitcast %union.anon* %1981 to i64*
  %1982 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1983 = getelementptr inbounds %struct.GPR, %struct.GPR* %1982, i32 0, i32 7
  %1984 = getelementptr inbounds %struct.Reg, %struct.Reg* %1983, i32 0, i32 0
  %RDX.i84 = bitcast %union.anon* %1984 to i64*
  %1985 = load i64, i64* %RAX.i83
  %1986 = load i64, i64* %RDX.i84
  %1987 = mul i64 %1986, 8
  %1988 = add i64 %1987, %1985
  %1989 = load i64, i64* %PC.i82
  %1990 = add i64 %1989, 4
  store i64 %1990, i64* %PC.i82
  %1991 = inttoptr i64 %1988 to i64*
  %1992 = load i64, i64* %1991
  store i64 %1992, i64* %RAX.i83, align 8
  store %struct.Memory* %loadMem_4e2298, %struct.Memory** %MEMORY
  %loadMem_4e229c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1993 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1994 = getelementptr inbounds %struct.GPR, %struct.GPR* %1993, i32 0, i32 33
  %1995 = getelementptr inbounds %struct.Reg, %struct.Reg* %1994, i32 0, i32 0
  %PC.i79 = bitcast %union.anon* %1995 to i64*
  %1996 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1997 = getelementptr inbounds %struct.GPR, %struct.GPR* %1996, i32 0, i32 1
  %1998 = getelementptr inbounds %struct.Reg, %struct.Reg* %1997, i32 0, i32 0
  %RAX.i80 = bitcast %union.anon* %1998 to i64*
  %1999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2000 = getelementptr inbounds %struct.GPR, %struct.GPR* %1999, i32 0, i32 15
  %2001 = getelementptr inbounds %struct.Reg, %struct.Reg* %2000, i32 0, i32 0
  %RBP.i81 = bitcast %union.anon* %2001 to i64*
  %2002 = load i64, i64* %RBP.i81
  %2003 = sub i64 %2002, 32
  %2004 = load i64, i64* %RAX.i80
  %2005 = load i64, i64* %PC.i79
  %2006 = add i64 %2005, 4
  store i64 %2006, i64* %PC.i79
  %2007 = inttoptr i64 %2003 to i64*
  store i64 %2004, i64* %2007
  store %struct.Memory* %loadMem_4e229c, %struct.Memory** %MEMORY
  %loadMem_4e22a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2008 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2009 = getelementptr inbounds %struct.GPR, %struct.GPR* %2008, i32 0, i32 33
  %2010 = getelementptr inbounds %struct.Reg, %struct.Reg* %2009, i32 0, i32 0
  %PC.i76 = bitcast %union.anon* %2010 to i64*
  %2011 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2012 = getelementptr inbounds %struct.GPR, %struct.GPR* %2011, i32 0, i32 1
  %2013 = getelementptr inbounds %struct.Reg, %struct.Reg* %2012, i32 0, i32 0
  %RAX.i77 = bitcast %union.anon* %2013 to i64*
  %2014 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2015 = getelementptr inbounds %struct.GPR, %struct.GPR* %2014, i32 0, i32 15
  %2016 = getelementptr inbounds %struct.Reg, %struct.Reg* %2015, i32 0, i32 0
  %RBP.i78 = bitcast %union.anon* %2016 to i64*
  %2017 = load i64, i64* %RBP.i78
  %2018 = sub i64 %2017, 8
  %2019 = load i64, i64* %PC.i76
  %2020 = add i64 %2019, 4
  store i64 %2020, i64* %PC.i76
  %2021 = inttoptr i64 %2018 to i64*
  %2022 = load i64, i64* %2021
  store i64 %2022, i64* %RAX.i77, align 8
  store %struct.Memory* %loadMem_4e22a0, %struct.Memory** %MEMORY
  %loadMem_4e22a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2023 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2024 = getelementptr inbounds %struct.GPR, %struct.GPR* %2023, i32 0, i32 33
  %2025 = getelementptr inbounds %struct.Reg, %struct.Reg* %2024, i32 0, i32 0
  %PC.i73 = bitcast %union.anon* %2025 to i64*
  %2026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2027 = getelementptr inbounds %struct.GPR, %struct.GPR* %2026, i32 0, i32 5
  %2028 = getelementptr inbounds %struct.Reg, %struct.Reg* %2027, i32 0, i32 0
  %RCX.i74 = bitcast %union.anon* %2028 to i64*
  %2029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2030 = getelementptr inbounds %struct.GPR, %struct.GPR* %2029, i32 0, i32 15
  %2031 = getelementptr inbounds %struct.Reg, %struct.Reg* %2030, i32 0, i32 0
  %RBP.i75 = bitcast %union.anon* %2031 to i64*
  %2032 = load i64, i64* %RBP.i75
  %2033 = sub i64 %2032, 16
  %2034 = load i64, i64* %PC.i73
  %2035 = add i64 %2034, 3
  store i64 %2035, i64* %PC.i73
  %2036 = inttoptr i64 %2033 to i32*
  %2037 = load i32, i32* %2036
  %2038 = zext i32 %2037 to i64
  store i64 %2038, i64* %RCX.i74, align 8
  store %struct.Memory* %loadMem_4e22a4, %struct.Memory** %MEMORY
  %loadMem_4e22a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2039 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2040 = getelementptr inbounds %struct.GPR, %struct.GPR* %2039, i32 0, i32 33
  %2041 = getelementptr inbounds %struct.Reg, %struct.Reg* %2040, i32 0, i32 0
  %PC.i70 = bitcast %union.anon* %2041 to i64*
  %2042 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2043 = getelementptr inbounds %struct.GPR, %struct.GPR* %2042, i32 0, i32 5
  %2044 = getelementptr inbounds %struct.Reg, %struct.Reg* %2043, i32 0, i32 0
  %RCX.i71 = bitcast %union.anon* %2044 to i64*
  %2045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2046 = getelementptr inbounds %struct.GPR, %struct.GPR* %2045, i32 0, i32 15
  %2047 = getelementptr inbounds %struct.Reg, %struct.Reg* %2046, i32 0, i32 0
  %RBP.i72 = bitcast %union.anon* %2047 to i64*
  %2048 = load i64, i64* %RCX.i71
  %2049 = load i64, i64* %RBP.i72
  %2050 = sub i64 %2049, 48
  %2051 = load i64, i64* %PC.i70
  %2052 = add i64 %2051, 3
  store i64 %2052, i64* %PC.i70
  %2053 = trunc i64 %2048 to i32
  %2054 = inttoptr i64 %2050 to i32*
  %2055 = load i32, i32* %2054
  %2056 = add i32 %2055, %2053
  %2057 = zext i32 %2056 to i64
  store i64 %2057, i64* %RCX.i71, align 8
  %2058 = icmp ult i32 %2056, %2053
  %2059 = icmp ult i32 %2056, %2055
  %2060 = or i1 %2058, %2059
  %2061 = zext i1 %2060 to i8
  %2062 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2061, i8* %2062, align 1
  %2063 = and i32 %2056, 255
  %2064 = call i32 @llvm.ctpop.i32(i32 %2063)
  %2065 = trunc i32 %2064 to i8
  %2066 = and i8 %2065, 1
  %2067 = xor i8 %2066, 1
  %2068 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2067, i8* %2068, align 1
  %2069 = xor i32 %2055, %2053
  %2070 = xor i32 %2069, %2056
  %2071 = lshr i32 %2070, 4
  %2072 = trunc i32 %2071 to i8
  %2073 = and i8 %2072, 1
  %2074 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2073, i8* %2074, align 1
  %2075 = icmp eq i32 %2056, 0
  %2076 = zext i1 %2075 to i8
  %2077 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2076, i8* %2077, align 1
  %2078 = lshr i32 %2056, 31
  %2079 = trunc i32 %2078 to i8
  %2080 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2079, i8* %2080, align 1
  %2081 = lshr i32 %2053, 31
  %2082 = lshr i32 %2055, 31
  %2083 = xor i32 %2078, %2081
  %2084 = xor i32 %2078, %2082
  %2085 = add i32 %2083, %2084
  %2086 = icmp eq i32 %2085, 2
  %2087 = zext i1 %2086 to i8
  %2088 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2087, i8* %2088, align 1
  store %struct.Memory* %loadMem_4e22a7, %struct.Memory** %MEMORY
  %loadMem_4e22aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %2089 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2090 = getelementptr inbounds %struct.GPR, %struct.GPR* %2089, i32 0, i32 33
  %2091 = getelementptr inbounds %struct.Reg, %struct.Reg* %2090, i32 0, i32 0
  %PC.i67 = bitcast %union.anon* %2091 to i64*
  %2092 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2093 = getelementptr inbounds %struct.GPR, %struct.GPR* %2092, i32 0, i32 5
  %2094 = getelementptr inbounds %struct.Reg, %struct.Reg* %2093, i32 0, i32 0
  %ECX.i68 = bitcast %union.anon* %2094 to i32*
  %2095 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2096 = getelementptr inbounds %struct.GPR, %struct.GPR* %2095, i32 0, i32 7
  %2097 = getelementptr inbounds %struct.Reg, %struct.Reg* %2096, i32 0, i32 0
  %RDX.i69 = bitcast %union.anon* %2097 to i64*
  %2098 = load i32, i32* %ECX.i68
  %2099 = zext i32 %2098 to i64
  %2100 = load i64, i64* %PC.i67
  %2101 = add i64 %2100, 3
  store i64 %2101, i64* %PC.i67
  %2102 = shl i64 %2099, 32
  %2103 = ashr exact i64 %2102, 32
  store i64 %2103, i64* %RDX.i69, align 8
  store %struct.Memory* %loadMem_4e22aa, %struct.Memory** %MEMORY
  %loadMem_4e22ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %2104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2105 = getelementptr inbounds %struct.GPR, %struct.GPR* %2104, i32 0, i32 33
  %2106 = getelementptr inbounds %struct.Reg, %struct.Reg* %2105, i32 0, i32 0
  %PC.i64 = bitcast %union.anon* %2106 to i64*
  %2107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2108 = getelementptr inbounds %struct.GPR, %struct.GPR* %2107, i32 0, i32 1
  %2109 = getelementptr inbounds %struct.Reg, %struct.Reg* %2108, i32 0, i32 0
  %RAX.i65 = bitcast %union.anon* %2109 to i64*
  %2110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2111 = getelementptr inbounds %struct.GPR, %struct.GPR* %2110, i32 0, i32 7
  %2112 = getelementptr inbounds %struct.Reg, %struct.Reg* %2111, i32 0, i32 0
  %RDX.i66 = bitcast %union.anon* %2112 to i64*
  %2113 = load i64, i64* %RAX.i65
  %2114 = load i64, i64* %RDX.i66
  %2115 = mul i64 %2114, 8
  %2116 = add i64 %2115, %2113
  %2117 = load i64, i64* %PC.i64
  %2118 = add i64 %2117, 4
  store i64 %2118, i64* %PC.i64
  %2119 = inttoptr i64 %2116 to i64*
  %2120 = load i64, i64* %2119
  store i64 %2120, i64* %RAX.i65, align 8
  store %struct.Memory* %loadMem_4e22ad, %struct.Memory** %MEMORY
  %loadMem_4e22b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2122 = getelementptr inbounds %struct.GPR, %struct.GPR* %2121, i32 0, i32 33
  %2123 = getelementptr inbounds %struct.Reg, %struct.Reg* %2122, i32 0, i32 0
  %PC.i61 = bitcast %union.anon* %2123 to i64*
  %2124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2125 = getelementptr inbounds %struct.GPR, %struct.GPR* %2124, i32 0, i32 7
  %2126 = getelementptr inbounds %struct.Reg, %struct.Reg* %2125, i32 0, i32 0
  %RDX.i62 = bitcast %union.anon* %2126 to i64*
  %2127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2128 = getelementptr inbounds %struct.GPR, %struct.GPR* %2127, i32 0, i32 15
  %2129 = getelementptr inbounds %struct.Reg, %struct.Reg* %2128, i32 0, i32 0
  %RBP.i63 = bitcast %union.anon* %2129 to i64*
  %2130 = load i64, i64* %RBP.i63
  %2131 = sub i64 %2130, 8
  %2132 = load i64, i64* %PC.i61
  %2133 = add i64 %2132, 4
  store i64 %2133, i64* %PC.i61
  %2134 = inttoptr i64 %2131 to i64*
  %2135 = load i64, i64* %2134
  store i64 %2135, i64* %RDX.i62, align 8
  store %struct.Memory* %loadMem_4e22b1, %struct.Memory** %MEMORY
  %loadMem_4e22b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2137 = getelementptr inbounds %struct.GPR, %struct.GPR* %2136, i32 0, i32 33
  %2138 = getelementptr inbounds %struct.Reg, %struct.Reg* %2137, i32 0, i32 0
  %PC.i58 = bitcast %union.anon* %2138 to i64*
  %2139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2140 = getelementptr inbounds %struct.GPR, %struct.GPR* %2139, i32 0, i32 5
  %2141 = getelementptr inbounds %struct.Reg, %struct.Reg* %2140, i32 0, i32 0
  %RCX.i59 = bitcast %union.anon* %2141 to i64*
  %2142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2143 = getelementptr inbounds %struct.GPR, %struct.GPR* %2142, i32 0, i32 15
  %2144 = getelementptr inbounds %struct.Reg, %struct.Reg* %2143, i32 0, i32 0
  %RBP.i60 = bitcast %union.anon* %2144 to i64*
  %2145 = load i64, i64* %RBP.i60
  %2146 = sub i64 %2145, 12
  %2147 = load i64, i64* %PC.i58
  %2148 = add i64 %2147, 3
  store i64 %2148, i64* %PC.i58
  %2149 = inttoptr i64 %2146 to i32*
  %2150 = load i32, i32* %2149
  %2151 = zext i32 %2150 to i64
  store i64 %2151, i64* %RCX.i59, align 8
  store %struct.Memory* %loadMem_4e22b5, %struct.Memory** %MEMORY
  %loadMem_4e22b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2153 = getelementptr inbounds %struct.GPR, %struct.GPR* %2152, i32 0, i32 33
  %2154 = getelementptr inbounds %struct.Reg, %struct.Reg* %2153, i32 0, i32 0
  %PC.i55 = bitcast %union.anon* %2154 to i64*
  %2155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2156 = getelementptr inbounds %struct.GPR, %struct.GPR* %2155, i32 0, i32 5
  %2157 = getelementptr inbounds %struct.Reg, %struct.Reg* %2156, i32 0, i32 0
  %RCX.i56 = bitcast %union.anon* %2157 to i64*
  %2158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2159 = getelementptr inbounds %struct.GPR, %struct.GPR* %2158, i32 0, i32 15
  %2160 = getelementptr inbounds %struct.Reg, %struct.Reg* %2159, i32 0, i32 0
  %RBP.i57 = bitcast %union.anon* %2160 to i64*
  %2161 = load i64, i64* %RCX.i56
  %2162 = load i64, i64* %RBP.i57
  %2163 = sub i64 %2162, 48
  %2164 = load i64, i64* %PC.i55
  %2165 = add i64 %2164, 3
  store i64 %2165, i64* %PC.i55
  %2166 = trunc i64 %2161 to i32
  %2167 = inttoptr i64 %2163 to i32*
  %2168 = load i32, i32* %2167
  %2169 = add i32 %2168, %2166
  %2170 = zext i32 %2169 to i64
  store i64 %2170, i64* %RCX.i56, align 8
  %2171 = icmp ult i32 %2169, %2166
  %2172 = icmp ult i32 %2169, %2168
  %2173 = or i1 %2171, %2172
  %2174 = zext i1 %2173 to i8
  %2175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2174, i8* %2175, align 1
  %2176 = and i32 %2169, 255
  %2177 = call i32 @llvm.ctpop.i32(i32 %2176)
  %2178 = trunc i32 %2177 to i8
  %2179 = and i8 %2178, 1
  %2180 = xor i8 %2179, 1
  %2181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2180, i8* %2181, align 1
  %2182 = xor i32 %2168, %2166
  %2183 = xor i32 %2182, %2169
  %2184 = lshr i32 %2183, 4
  %2185 = trunc i32 %2184 to i8
  %2186 = and i8 %2185, 1
  %2187 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2186, i8* %2187, align 1
  %2188 = icmp eq i32 %2169, 0
  %2189 = zext i1 %2188 to i8
  %2190 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2189, i8* %2190, align 1
  %2191 = lshr i32 %2169, 31
  %2192 = trunc i32 %2191 to i8
  %2193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2192, i8* %2193, align 1
  %2194 = lshr i32 %2166, 31
  %2195 = lshr i32 %2168, 31
  %2196 = xor i32 %2191, %2194
  %2197 = xor i32 %2191, %2195
  %2198 = add i32 %2196, %2197
  %2199 = icmp eq i32 %2198, 2
  %2200 = zext i1 %2199 to i8
  %2201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2200, i8* %2201, align 1
  store %struct.Memory* %loadMem_4e22b8, %struct.Memory** %MEMORY
  %loadMem_4e22bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2203 = getelementptr inbounds %struct.GPR, %struct.GPR* %2202, i32 0, i32 33
  %2204 = getelementptr inbounds %struct.Reg, %struct.Reg* %2203, i32 0, i32 0
  %PC.i52 = bitcast %union.anon* %2204 to i64*
  %2205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2206 = getelementptr inbounds %struct.GPR, %struct.GPR* %2205, i32 0, i32 5
  %2207 = getelementptr inbounds %struct.Reg, %struct.Reg* %2206, i32 0, i32 0
  %ECX.i53 = bitcast %union.anon* %2207 to i32*
  %2208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2209 = getelementptr inbounds %struct.GPR, %struct.GPR* %2208, i32 0, i32 9
  %2210 = getelementptr inbounds %struct.Reg, %struct.Reg* %2209, i32 0, i32 0
  %RSI.i54 = bitcast %union.anon* %2210 to i64*
  %2211 = load i32, i32* %ECX.i53
  %2212 = zext i32 %2211 to i64
  %2213 = load i64, i64* %PC.i52
  %2214 = add i64 %2213, 3
  store i64 %2214, i64* %PC.i52
  %2215 = shl i64 %2212, 32
  %2216 = ashr exact i64 %2215, 32
  store i64 %2216, i64* %RSI.i54, align 8
  store %struct.Memory* %loadMem_4e22bb, %struct.Memory** %MEMORY
  %loadMem_4e22be = load %struct.Memory*, %struct.Memory** %MEMORY
  %2217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2218 = getelementptr inbounds %struct.GPR, %struct.GPR* %2217, i32 0, i32 33
  %2219 = getelementptr inbounds %struct.Reg, %struct.Reg* %2218, i32 0, i32 0
  %PC.i48 = bitcast %union.anon* %2219 to i64*
  %2220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2221 = getelementptr inbounds %struct.GPR, %struct.GPR* %2220, i32 0, i32 1
  %2222 = getelementptr inbounds %struct.Reg, %struct.Reg* %2221, i32 0, i32 0
  %RAX.i49 = bitcast %union.anon* %2222 to i64*
  %2223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2224 = getelementptr inbounds %struct.GPR, %struct.GPR* %2223, i32 0, i32 7
  %2225 = getelementptr inbounds %struct.Reg, %struct.Reg* %2224, i32 0, i32 0
  %RDX.i50 = bitcast %union.anon* %2225 to i64*
  %2226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2227 = getelementptr inbounds %struct.GPR, %struct.GPR* %2226, i32 0, i32 9
  %2228 = getelementptr inbounds %struct.Reg, %struct.Reg* %2227, i32 0, i32 0
  %RSI.i51 = bitcast %union.anon* %2228 to i64*
  %2229 = load i64, i64* %RDX.i50
  %2230 = load i64, i64* %RSI.i51
  %2231 = mul i64 %2230, 8
  %2232 = add i64 %2231, %2229
  %2233 = load i64, i64* %RAX.i49
  %2234 = load i64, i64* %PC.i48
  %2235 = add i64 %2234, 4
  store i64 %2235, i64* %PC.i48
  %2236 = inttoptr i64 %2232 to i64*
  store i64 %2233, i64* %2236
  store %struct.Memory* %loadMem_4e22be, %struct.Memory** %MEMORY
  %loadMem_4e22c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2238 = getelementptr inbounds %struct.GPR, %struct.GPR* %2237, i32 0, i32 33
  %2239 = getelementptr inbounds %struct.Reg, %struct.Reg* %2238, i32 0, i32 0
  %PC.i45 = bitcast %union.anon* %2239 to i64*
  %2240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2241 = getelementptr inbounds %struct.GPR, %struct.GPR* %2240, i32 0, i32 1
  %2242 = getelementptr inbounds %struct.Reg, %struct.Reg* %2241, i32 0, i32 0
  %RAX.i46 = bitcast %union.anon* %2242 to i64*
  %2243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2244 = getelementptr inbounds %struct.GPR, %struct.GPR* %2243, i32 0, i32 15
  %2245 = getelementptr inbounds %struct.Reg, %struct.Reg* %2244, i32 0, i32 0
  %RBP.i47 = bitcast %union.anon* %2245 to i64*
  %2246 = load i64, i64* %RBP.i47
  %2247 = sub i64 %2246, 32
  %2248 = load i64, i64* %PC.i45
  %2249 = add i64 %2248, 4
  store i64 %2249, i64* %PC.i45
  %2250 = inttoptr i64 %2247 to i64*
  %2251 = load i64, i64* %2250
  store i64 %2251, i64* %RAX.i46, align 8
  store %struct.Memory* %loadMem_4e22c2, %struct.Memory** %MEMORY
  %loadMem_4e22c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2253 = getelementptr inbounds %struct.GPR, %struct.GPR* %2252, i32 0, i32 33
  %2254 = getelementptr inbounds %struct.Reg, %struct.Reg* %2253, i32 0, i32 0
  %PC.i42 = bitcast %union.anon* %2254 to i64*
  %2255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2256 = getelementptr inbounds %struct.GPR, %struct.GPR* %2255, i32 0, i32 7
  %2257 = getelementptr inbounds %struct.Reg, %struct.Reg* %2256, i32 0, i32 0
  %RDX.i43 = bitcast %union.anon* %2257 to i64*
  %2258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2259 = getelementptr inbounds %struct.GPR, %struct.GPR* %2258, i32 0, i32 15
  %2260 = getelementptr inbounds %struct.Reg, %struct.Reg* %2259, i32 0, i32 0
  %RBP.i44 = bitcast %union.anon* %2260 to i64*
  %2261 = load i64, i64* %RBP.i44
  %2262 = sub i64 %2261, 8
  %2263 = load i64, i64* %PC.i42
  %2264 = add i64 %2263, 4
  store i64 %2264, i64* %PC.i42
  %2265 = inttoptr i64 %2262 to i64*
  %2266 = load i64, i64* %2265
  store i64 %2266, i64* %RDX.i43, align 8
  store %struct.Memory* %loadMem_4e22c6, %struct.Memory** %MEMORY
  %loadMem_4e22ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %2267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2268 = getelementptr inbounds %struct.GPR, %struct.GPR* %2267, i32 0, i32 33
  %2269 = getelementptr inbounds %struct.Reg, %struct.Reg* %2268, i32 0, i32 0
  %PC.i39 = bitcast %union.anon* %2269 to i64*
  %2270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2271 = getelementptr inbounds %struct.GPR, %struct.GPR* %2270, i32 0, i32 5
  %2272 = getelementptr inbounds %struct.Reg, %struct.Reg* %2271, i32 0, i32 0
  %RCX.i40 = bitcast %union.anon* %2272 to i64*
  %2273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2274 = getelementptr inbounds %struct.GPR, %struct.GPR* %2273, i32 0, i32 15
  %2275 = getelementptr inbounds %struct.Reg, %struct.Reg* %2274, i32 0, i32 0
  %RBP.i41 = bitcast %union.anon* %2275 to i64*
  %2276 = load i64, i64* %RBP.i41
  %2277 = sub i64 %2276, 16
  %2278 = load i64, i64* %PC.i39
  %2279 = add i64 %2278, 3
  store i64 %2279, i64* %PC.i39
  %2280 = inttoptr i64 %2277 to i32*
  %2281 = load i32, i32* %2280
  %2282 = zext i32 %2281 to i64
  store i64 %2282, i64* %RCX.i40, align 8
  store %struct.Memory* %loadMem_4e22ca, %struct.Memory** %MEMORY
  %loadMem_4e22cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2284 = getelementptr inbounds %struct.GPR, %struct.GPR* %2283, i32 0, i32 33
  %2285 = getelementptr inbounds %struct.Reg, %struct.Reg* %2284, i32 0, i32 0
  %PC.i37 = bitcast %union.anon* %2285 to i64*
  %2286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2287 = getelementptr inbounds %struct.GPR, %struct.GPR* %2286, i32 0, i32 5
  %2288 = getelementptr inbounds %struct.Reg, %struct.Reg* %2287, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %2288 to i64*
  %2289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2290 = getelementptr inbounds %struct.GPR, %struct.GPR* %2289, i32 0, i32 15
  %2291 = getelementptr inbounds %struct.Reg, %struct.Reg* %2290, i32 0, i32 0
  %RBP.i38 = bitcast %union.anon* %2291 to i64*
  %2292 = load i64, i64* %RCX.i
  %2293 = load i64, i64* %RBP.i38
  %2294 = sub i64 %2293, 48
  %2295 = load i64, i64* %PC.i37
  %2296 = add i64 %2295, 3
  store i64 %2296, i64* %PC.i37
  %2297 = trunc i64 %2292 to i32
  %2298 = inttoptr i64 %2294 to i32*
  %2299 = load i32, i32* %2298
  %2300 = add i32 %2299, %2297
  %2301 = zext i32 %2300 to i64
  store i64 %2301, i64* %RCX.i, align 8
  %2302 = icmp ult i32 %2300, %2297
  %2303 = icmp ult i32 %2300, %2299
  %2304 = or i1 %2302, %2303
  %2305 = zext i1 %2304 to i8
  %2306 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2305, i8* %2306, align 1
  %2307 = and i32 %2300, 255
  %2308 = call i32 @llvm.ctpop.i32(i32 %2307)
  %2309 = trunc i32 %2308 to i8
  %2310 = and i8 %2309, 1
  %2311 = xor i8 %2310, 1
  %2312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2311, i8* %2312, align 1
  %2313 = xor i32 %2299, %2297
  %2314 = xor i32 %2313, %2300
  %2315 = lshr i32 %2314, 4
  %2316 = trunc i32 %2315 to i8
  %2317 = and i8 %2316, 1
  %2318 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2317, i8* %2318, align 1
  %2319 = icmp eq i32 %2300, 0
  %2320 = zext i1 %2319 to i8
  %2321 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2320, i8* %2321, align 1
  %2322 = lshr i32 %2300, 31
  %2323 = trunc i32 %2322 to i8
  %2324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2323, i8* %2324, align 1
  %2325 = lshr i32 %2297, 31
  %2326 = lshr i32 %2299, 31
  %2327 = xor i32 %2322, %2325
  %2328 = xor i32 %2322, %2326
  %2329 = add i32 %2327, %2328
  %2330 = icmp eq i32 %2329, 2
  %2331 = zext i1 %2330 to i8
  %2332 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2331, i8* %2332, align 1
  store %struct.Memory* %loadMem_4e22cd, %struct.Memory** %MEMORY
  %loadMem_4e22d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2334 = getelementptr inbounds %struct.GPR, %struct.GPR* %2333, i32 0, i32 33
  %2335 = getelementptr inbounds %struct.Reg, %struct.Reg* %2334, i32 0, i32 0
  %PC.i35 = bitcast %union.anon* %2335 to i64*
  %2336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2337 = getelementptr inbounds %struct.GPR, %struct.GPR* %2336, i32 0, i32 5
  %2338 = getelementptr inbounds %struct.Reg, %struct.Reg* %2337, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %2338 to i32*
  %2339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2340 = getelementptr inbounds %struct.GPR, %struct.GPR* %2339, i32 0, i32 9
  %2341 = getelementptr inbounds %struct.Reg, %struct.Reg* %2340, i32 0, i32 0
  %RSI.i36 = bitcast %union.anon* %2341 to i64*
  %2342 = load i32, i32* %ECX.i
  %2343 = zext i32 %2342 to i64
  %2344 = load i64, i64* %PC.i35
  %2345 = add i64 %2344, 3
  store i64 %2345, i64* %PC.i35
  %2346 = shl i64 %2343, 32
  %2347 = ashr exact i64 %2346, 32
  store i64 %2347, i64* %RSI.i36, align 8
  store %struct.Memory* %loadMem_4e22d0, %struct.Memory** %MEMORY
  %loadMem_4e22d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2349 = getelementptr inbounds %struct.GPR, %struct.GPR* %2348, i32 0, i32 33
  %2350 = getelementptr inbounds %struct.Reg, %struct.Reg* %2349, i32 0, i32 0
  %PC.i33 = bitcast %union.anon* %2350 to i64*
  %2351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2352 = getelementptr inbounds %struct.GPR, %struct.GPR* %2351, i32 0, i32 1
  %2353 = getelementptr inbounds %struct.Reg, %struct.Reg* %2352, i32 0, i32 0
  %RAX.i34 = bitcast %union.anon* %2353 to i64*
  %2354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2355 = getelementptr inbounds %struct.GPR, %struct.GPR* %2354, i32 0, i32 7
  %2356 = getelementptr inbounds %struct.Reg, %struct.Reg* %2355, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %2356 to i64*
  %2357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2358 = getelementptr inbounds %struct.GPR, %struct.GPR* %2357, i32 0, i32 9
  %2359 = getelementptr inbounds %struct.Reg, %struct.Reg* %2358, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %2359 to i64*
  %2360 = load i64, i64* %RDX.i
  %2361 = load i64, i64* %RSI.i
  %2362 = mul i64 %2361, 8
  %2363 = add i64 %2362, %2360
  %2364 = load i64, i64* %RAX.i34
  %2365 = load i64, i64* %PC.i33
  %2366 = add i64 %2365, 4
  store i64 %2366, i64* %PC.i33
  %2367 = inttoptr i64 %2363 to i64*
  store i64 %2364, i64* %2367
  store %struct.Memory* %loadMem_4e22d3, %struct.Memory** %MEMORY
  %loadMem_4e22d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2369 = getelementptr inbounds %struct.GPR, %struct.GPR* %2368, i32 0, i32 33
  %2370 = getelementptr inbounds %struct.Reg, %struct.Reg* %2369, i32 0, i32 0
  %PC.i30 = bitcast %union.anon* %2370 to i64*
  %2371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2372 = getelementptr inbounds %struct.GPR, %struct.GPR* %2371, i32 0, i32 1
  %2373 = getelementptr inbounds %struct.Reg, %struct.Reg* %2372, i32 0, i32 0
  %RAX.i31 = bitcast %union.anon* %2373 to i64*
  %2374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2375 = getelementptr inbounds %struct.GPR, %struct.GPR* %2374, i32 0, i32 15
  %2376 = getelementptr inbounds %struct.Reg, %struct.Reg* %2375, i32 0, i32 0
  %RBP.i32 = bitcast %union.anon* %2376 to i64*
  %2377 = load i64, i64* %RBP.i32
  %2378 = sub i64 %2377, 48
  %2379 = load i64, i64* %PC.i30
  %2380 = add i64 %2379, 3
  store i64 %2380, i64* %PC.i30
  %2381 = inttoptr i64 %2378 to i32*
  %2382 = load i32, i32* %2381
  %2383 = zext i32 %2382 to i64
  store i64 %2383, i64* %RAX.i31, align 8
  store %struct.Memory* %loadMem_4e22d7, %struct.Memory** %MEMORY
  %loadMem_4e22da = load %struct.Memory*, %struct.Memory** %MEMORY
  %2384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2385 = getelementptr inbounds %struct.GPR, %struct.GPR* %2384, i32 0, i32 33
  %2386 = getelementptr inbounds %struct.Reg, %struct.Reg* %2385, i32 0, i32 0
  %PC.i28 = bitcast %union.anon* %2386 to i64*
  %2387 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2388 = getelementptr inbounds %struct.GPR, %struct.GPR* %2387, i32 0, i32 1
  %2389 = getelementptr inbounds %struct.Reg, %struct.Reg* %2388, i32 0, i32 0
  %RAX.i29 = bitcast %union.anon* %2389 to i64*
  %2390 = load i64, i64* %RAX.i29
  %2391 = load i64, i64* %PC.i28
  %2392 = add i64 %2391, 3
  store i64 %2392, i64* %PC.i28
  %2393 = trunc i64 %2390 to i32
  %2394 = add i32 1, %2393
  %2395 = zext i32 %2394 to i64
  store i64 %2395, i64* %RAX.i29, align 8
  %2396 = icmp ult i32 %2394, %2393
  %2397 = icmp ult i32 %2394, 1
  %2398 = or i1 %2396, %2397
  %2399 = zext i1 %2398 to i8
  %2400 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2399, i8* %2400, align 1
  %2401 = and i32 %2394, 255
  %2402 = call i32 @llvm.ctpop.i32(i32 %2401)
  %2403 = trunc i32 %2402 to i8
  %2404 = and i8 %2403, 1
  %2405 = xor i8 %2404, 1
  %2406 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2405, i8* %2406, align 1
  %2407 = xor i64 1, %2390
  %2408 = trunc i64 %2407 to i32
  %2409 = xor i32 %2408, %2394
  %2410 = lshr i32 %2409, 4
  %2411 = trunc i32 %2410 to i8
  %2412 = and i8 %2411, 1
  %2413 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2412, i8* %2413, align 1
  %2414 = icmp eq i32 %2394, 0
  %2415 = zext i1 %2414 to i8
  %2416 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2415, i8* %2416, align 1
  %2417 = lshr i32 %2394, 31
  %2418 = trunc i32 %2417 to i8
  %2419 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2418, i8* %2419, align 1
  %2420 = lshr i32 %2393, 31
  %2421 = xor i32 %2417, %2420
  %2422 = add i32 %2421, %2417
  %2423 = icmp eq i32 %2422, 2
  %2424 = zext i1 %2423 to i8
  %2425 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2424, i8* %2425, align 1
  store %struct.Memory* %loadMem_4e22da, %struct.Memory** %MEMORY
  %loadMem_4e22dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2427 = getelementptr inbounds %struct.GPR, %struct.GPR* %2426, i32 0, i32 33
  %2428 = getelementptr inbounds %struct.Reg, %struct.Reg* %2427, i32 0, i32 0
  %PC.i25 = bitcast %union.anon* %2428 to i64*
  %2429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2430 = getelementptr inbounds %struct.GPR, %struct.GPR* %2429, i32 0, i32 1
  %2431 = getelementptr inbounds %struct.Reg, %struct.Reg* %2430, i32 0, i32 0
  %EAX.i26 = bitcast %union.anon* %2431 to i32*
  %2432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2433 = getelementptr inbounds %struct.GPR, %struct.GPR* %2432, i32 0, i32 15
  %2434 = getelementptr inbounds %struct.Reg, %struct.Reg* %2433, i32 0, i32 0
  %RBP.i27 = bitcast %union.anon* %2434 to i64*
  %2435 = load i64, i64* %RBP.i27
  %2436 = sub i64 %2435, 48
  %2437 = load i32, i32* %EAX.i26
  %2438 = zext i32 %2437 to i64
  %2439 = load i64, i64* %PC.i25
  %2440 = add i64 %2439, 3
  store i64 %2440, i64* %PC.i25
  %2441 = inttoptr i64 %2436 to i32*
  store i32 %2437, i32* %2441
  store %struct.Memory* %loadMem_4e22dd, %struct.Memory** %MEMORY
  %loadMem_4e22e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2443 = getelementptr inbounds %struct.GPR, %struct.GPR* %2442, i32 0, i32 33
  %2444 = getelementptr inbounds %struct.Reg, %struct.Reg* %2443, i32 0, i32 0
  %PC.i24 = bitcast %union.anon* %2444 to i64*
  %2445 = load i64, i64* %PC.i24
  %2446 = add i64 %2445, -97
  %2447 = load i64, i64* %PC.i24
  %2448 = add i64 %2447, 5
  store i64 %2448, i64* %PC.i24
  %2449 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2446, i64* %2449, align 8
  store %struct.Memory* %loadMem_4e22e0, %struct.Memory** %MEMORY
  br label %block_.L_4e227f

block_.L_4e22e5:                                  ; preds = %block_.L_4e227f
  %loadMem_4e22e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2451 = getelementptr inbounds %struct.GPR, %struct.GPR* %2450, i32 0, i32 33
  %2452 = getelementptr inbounds %struct.Reg, %struct.Reg* %2451, i32 0, i32 0
  %PC.i21 = bitcast %union.anon* %2452 to i64*
  %2453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2454 = getelementptr inbounds %struct.GPR, %struct.GPR* %2453, i32 0, i32 1
  %2455 = getelementptr inbounds %struct.Reg, %struct.Reg* %2454, i32 0, i32 0
  %RAX.i22 = bitcast %union.anon* %2455 to i64*
  %2456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2457 = getelementptr inbounds %struct.GPR, %struct.GPR* %2456, i32 0, i32 15
  %2458 = getelementptr inbounds %struct.Reg, %struct.Reg* %2457, i32 0, i32 0
  %RBP.i23 = bitcast %union.anon* %2458 to i64*
  %2459 = load i64, i64* %RBP.i23
  %2460 = sub i64 %2459, 44
  %2461 = load i64, i64* %PC.i21
  %2462 = add i64 %2461, 3
  store i64 %2462, i64* %PC.i21
  %2463 = inttoptr i64 %2460 to i32*
  %2464 = load i32, i32* %2463
  %2465 = zext i32 %2464 to i64
  store i64 %2465, i64* %RAX.i22, align 8
  store %struct.Memory* %loadMem_4e22e5, %struct.Memory** %MEMORY
  %loadMem_4e22e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2467 = getelementptr inbounds %struct.GPR, %struct.GPR* %2466, i32 0, i32 33
  %2468 = getelementptr inbounds %struct.Reg, %struct.Reg* %2467, i32 0, i32 0
  %PC.i18 = bitcast %union.anon* %2468 to i64*
  %2469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2470 = getelementptr inbounds %struct.GPR, %struct.GPR* %2469, i32 0, i32 1
  %2471 = getelementptr inbounds %struct.Reg, %struct.Reg* %2470, i32 0, i32 0
  %RAX.i19 = bitcast %union.anon* %2471 to i64*
  %2472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2473 = getelementptr inbounds %struct.GPR, %struct.GPR* %2472, i32 0, i32 15
  %2474 = getelementptr inbounds %struct.Reg, %struct.Reg* %2473, i32 0, i32 0
  %RBP.i20 = bitcast %union.anon* %2474 to i64*
  %2475 = load i64, i64* %RAX.i19
  %2476 = load i64, i64* %RBP.i20
  %2477 = sub i64 %2476, 12
  %2478 = load i64, i64* %PC.i18
  %2479 = add i64 %2478, 3
  store i64 %2479, i64* %PC.i18
  %2480 = trunc i64 %2475 to i32
  %2481 = inttoptr i64 %2477 to i32*
  %2482 = load i32, i32* %2481
  %2483 = add i32 %2482, %2480
  %2484 = zext i32 %2483 to i64
  store i64 %2484, i64* %RAX.i19, align 8
  %2485 = icmp ult i32 %2483, %2480
  %2486 = icmp ult i32 %2483, %2482
  %2487 = or i1 %2485, %2486
  %2488 = zext i1 %2487 to i8
  %2489 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2488, i8* %2489, align 1
  %2490 = and i32 %2483, 255
  %2491 = call i32 @llvm.ctpop.i32(i32 %2490)
  %2492 = trunc i32 %2491 to i8
  %2493 = and i8 %2492, 1
  %2494 = xor i8 %2493, 1
  %2495 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2494, i8* %2495, align 1
  %2496 = xor i32 %2482, %2480
  %2497 = xor i32 %2496, %2483
  %2498 = lshr i32 %2497, 4
  %2499 = trunc i32 %2498 to i8
  %2500 = and i8 %2499, 1
  %2501 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2500, i8* %2501, align 1
  %2502 = icmp eq i32 %2483, 0
  %2503 = zext i1 %2502 to i8
  %2504 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2503, i8* %2504, align 1
  %2505 = lshr i32 %2483, 31
  %2506 = trunc i32 %2505 to i8
  %2507 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2506, i8* %2507, align 1
  %2508 = lshr i32 %2480, 31
  %2509 = lshr i32 %2482, 31
  %2510 = xor i32 %2505, %2508
  %2511 = xor i32 %2505, %2509
  %2512 = add i32 %2510, %2511
  %2513 = icmp eq i32 %2512, 2
  %2514 = zext i1 %2513 to i8
  %2515 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2514, i8* %2515, align 1
  store %struct.Memory* %loadMem_4e22e8, %struct.Memory** %MEMORY
  %loadMem_4e22eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2517 = getelementptr inbounds %struct.GPR, %struct.GPR* %2516, i32 0, i32 33
  %2518 = getelementptr inbounds %struct.Reg, %struct.Reg* %2517, i32 0, i32 0
  %PC.i15 = bitcast %union.anon* %2518 to i64*
  %2519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2520 = getelementptr inbounds %struct.GPR, %struct.GPR* %2519, i32 0, i32 1
  %2521 = getelementptr inbounds %struct.Reg, %struct.Reg* %2520, i32 0, i32 0
  %EAX.i16 = bitcast %union.anon* %2521 to i32*
  %2522 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2523 = getelementptr inbounds %struct.GPR, %struct.GPR* %2522, i32 0, i32 15
  %2524 = getelementptr inbounds %struct.Reg, %struct.Reg* %2523, i32 0, i32 0
  %RBP.i17 = bitcast %union.anon* %2524 to i64*
  %2525 = load i64, i64* %RBP.i17
  %2526 = sub i64 %2525, 12
  %2527 = load i32, i32* %EAX.i16
  %2528 = zext i32 %2527 to i64
  %2529 = load i64, i64* %PC.i15
  %2530 = add i64 %2529, 3
  store i64 %2530, i64* %PC.i15
  %2531 = inttoptr i64 %2526 to i32*
  store i32 %2527, i32* %2531
  store %struct.Memory* %loadMem_4e22eb, %struct.Memory** %MEMORY
  br label %block_.L_4e22ee

block_.L_4e22ee:                                  ; preds = %block_.L_4e22e5, %block_.L_4e225f
  %loadMem_4e22ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %2532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2533 = getelementptr inbounds %struct.GPR, %struct.GPR* %2532, i32 0, i32 33
  %2534 = getelementptr inbounds %struct.Reg, %struct.Reg* %2533, i32 0, i32 0
  %PC.i14 = bitcast %union.anon* %2534 to i64*
  %2535 = load i64, i64* %PC.i14
  %2536 = add i64 %2535, -344
  %2537 = load i64, i64* %PC.i14
  %2538 = add i64 %2537, 5
  store i64 %2538, i64* %PC.i14
  %2539 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2536, i64* %2539, align 8
  store %struct.Memory* %loadMem_4e22ee, %struct.Memory** %MEMORY
  br label %block_.L_4e2196

block_.L_4e22f3:                                  ; preds = %block_4e21c0
  %loadMem_4e22f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2541 = getelementptr inbounds %struct.GPR, %struct.GPR* %2540, i32 0, i32 33
  %2542 = getelementptr inbounds %struct.Reg, %struct.Reg* %2541, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %2542 to i64*
  %2543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2544 = getelementptr inbounds %struct.GPR, %struct.GPR* %2543, i32 0, i32 1
  %2545 = getelementptr inbounds %struct.Reg, %struct.Reg* %2544, i32 0, i32 0
  %RAX.i13 = bitcast %union.anon* %2545 to i64*
  %2546 = load i64, i64* %PC.i12
  %2547 = add i64 %2546, 7
  store i64 %2547, i64* %PC.i12
  %2548 = load i32, i32* bitcast (%G_0x99c070_type* @G_0x99c070 to i32*)
  %2549 = zext i32 %2548 to i64
  store i64 %2549, i64* %RAX.i13, align 8
  store %struct.Memory* %loadMem_4e22f3, %struct.Memory** %MEMORY
  %loadMem_4e22fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %2550 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2551 = getelementptr inbounds %struct.GPR, %struct.GPR* %2550, i32 0, i32 33
  %2552 = getelementptr inbounds %struct.Reg, %struct.Reg* %2551, i32 0, i32 0
  %PC.i10 = bitcast %union.anon* %2552 to i64*
  %2553 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2554 = getelementptr inbounds %struct.GPR, %struct.GPR* %2553, i32 0, i32 1
  %2555 = getelementptr inbounds %struct.Reg, %struct.Reg* %2554, i32 0, i32 0
  %RAX.i11 = bitcast %union.anon* %2555 to i64*
  %2556 = load i64, i64* %RAX.i11
  %2557 = load i64, i64* %PC.i10
  %2558 = add i64 %2557, 7
  store i64 %2558, i64* %PC.i10
  %2559 = trunc i64 %2556 to i32
  %2560 = load i32, i32* bitcast (%G_0xafc478_type* @G_0xafc478 to i32*)
  %2561 = sub i32 %2559, %2560
  %2562 = zext i32 %2561 to i64
  store i64 %2562, i64* %RAX.i11, align 8
  %2563 = icmp ult i32 %2559, %2560
  %2564 = zext i1 %2563 to i8
  %2565 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2564, i8* %2565, align 1
  %2566 = and i32 %2561, 255
  %2567 = call i32 @llvm.ctpop.i32(i32 %2566)
  %2568 = trunc i32 %2567 to i8
  %2569 = and i8 %2568, 1
  %2570 = xor i8 %2569, 1
  %2571 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2570, i8* %2571, align 1
  %2572 = xor i32 %2560, %2559
  %2573 = xor i32 %2572, %2561
  %2574 = lshr i32 %2573, 4
  %2575 = trunc i32 %2574 to i8
  %2576 = and i8 %2575, 1
  %2577 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2576, i8* %2577, align 1
  %2578 = icmp eq i32 %2561, 0
  %2579 = zext i1 %2578 to i8
  %2580 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2579, i8* %2580, align 1
  %2581 = lshr i32 %2561, 31
  %2582 = trunc i32 %2581 to i8
  %2583 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2582, i8* %2583, align 1
  %2584 = lshr i32 %2559, 31
  %2585 = lshr i32 %2560, 31
  %2586 = xor i32 %2585, %2584
  %2587 = xor i32 %2581, %2584
  %2588 = add i32 %2587, %2586
  %2589 = icmp eq i32 %2588, 2
  %2590 = zext i1 %2589 to i8
  %2591 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2590, i8* %2591, align 1
  store %struct.Memory* %loadMem_4e22fa, %struct.Memory** %MEMORY
  %loadMem_4e2301 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2593 = getelementptr inbounds %struct.GPR, %struct.GPR* %2592, i32 0, i32 33
  %2594 = getelementptr inbounds %struct.Reg, %struct.Reg* %2593, i32 0, i32 0
  %PC.i8 = bitcast %union.anon* %2594 to i64*
  %2595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2596 = getelementptr inbounds %struct.GPR, %struct.GPR* %2595, i32 0, i32 1
  %2597 = getelementptr inbounds %struct.Reg, %struct.Reg* %2596, i32 0, i32 0
  %RAX.i9 = bitcast %union.anon* %2597 to i64*
  %2598 = load i64, i64* %RAX.i9
  %2599 = load i64, i64* %PC.i8
  %2600 = add i64 %2599, 7
  store i64 %2600, i64* %PC.i8
  %2601 = trunc i64 %2598 to i32
  %2602 = load i32, i32* bitcast (%G_0xafc47c_type* @G_0xafc47c to i32*)
  %2603 = add i32 %2602, %2601
  %2604 = zext i32 %2603 to i64
  store i64 %2604, i64* %RAX.i9, align 8
  %2605 = icmp ult i32 %2603, %2601
  %2606 = icmp ult i32 %2603, %2602
  %2607 = or i1 %2605, %2606
  %2608 = zext i1 %2607 to i8
  %2609 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2608, i8* %2609, align 1
  %2610 = and i32 %2603, 255
  %2611 = call i32 @llvm.ctpop.i32(i32 %2610)
  %2612 = trunc i32 %2611 to i8
  %2613 = and i8 %2612, 1
  %2614 = xor i8 %2613, 1
  %2615 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2614, i8* %2615, align 1
  %2616 = xor i32 %2602, %2601
  %2617 = xor i32 %2616, %2603
  %2618 = lshr i32 %2617, 4
  %2619 = trunc i32 %2618 to i8
  %2620 = and i8 %2619, 1
  %2621 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2620, i8* %2621, align 1
  %2622 = icmp eq i32 %2603, 0
  %2623 = zext i1 %2622 to i8
  %2624 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2623, i8* %2624, align 1
  %2625 = lshr i32 %2603, 31
  %2626 = trunc i32 %2625 to i8
  %2627 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2626, i8* %2627, align 1
  %2628 = lshr i32 %2601, 31
  %2629 = lshr i32 %2602, 31
  %2630 = xor i32 %2625, %2628
  %2631 = xor i32 %2625, %2629
  %2632 = add i32 %2630, %2631
  %2633 = icmp eq i32 %2632, 2
  %2634 = zext i1 %2633 to i8
  %2635 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2634, i8* %2635, align 1
  store %struct.Memory* %loadMem_4e2301, %struct.Memory** %MEMORY
  %loadMem_4e2308 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2637 = getelementptr inbounds %struct.GPR, %struct.GPR* %2636, i32 0, i32 33
  %2638 = getelementptr inbounds %struct.Reg, %struct.Reg* %2637, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %2638 to i64*
  %2639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2640 = getelementptr inbounds %struct.GPR, %struct.GPR* %2639, i32 0, i32 1
  %2641 = getelementptr inbounds %struct.Reg, %struct.Reg* %2640, i32 0, i32 0
  %EAX.i7 = bitcast %union.anon* %2641 to i32*
  %2642 = load i32, i32* %EAX.i7
  %2643 = zext i32 %2642 to i64
  %2644 = load i64, i64* %PC.i6
  %2645 = add i64 %2644, 7
  store i64 %2645, i64* %PC.i6
  store i32 %2642, i32* bitcast (%G_0xafc47c_type* @G_0xafc47c to i32*)
  store %struct.Memory* %loadMem_4e2308, %struct.Memory** %MEMORY
  %loadMem_4e230f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2646 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2647 = getelementptr inbounds %struct.GPR, %struct.GPR* %2646, i32 0, i32 33
  %2648 = getelementptr inbounds %struct.Reg, %struct.Reg* %2647, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %2648 to i64*
  %2649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2650 = getelementptr inbounds %struct.GPR, %struct.GPR* %2649, i32 0, i32 1
  %2651 = getelementptr inbounds %struct.Reg, %struct.Reg* %2650, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %2651 to i64*
  %2652 = load i64, i64* %PC.i5
  %2653 = add i64 %2652, 7
  store i64 %2653, i64* %PC.i5
  %2654 = load i32, i32* bitcast (%G_0x99c070_type* @G_0x99c070 to i32*)
  %2655 = zext i32 %2654 to i64
  store i64 %2655, i64* %RAX.i, align 8
  store %struct.Memory* %loadMem_4e230f, %struct.Memory** %MEMORY
  %loadMem_4e2316 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2656 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2657 = getelementptr inbounds %struct.GPR, %struct.GPR* %2656, i32 0, i32 33
  %2658 = getelementptr inbounds %struct.Reg, %struct.Reg* %2657, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %2658 to i64*
  %2659 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2660 = getelementptr inbounds %struct.GPR, %struct.GPR* %2659, i32 0, i32 1
  %2661 = getelementptr inbounds %struct.Reg, %struct.Reg* %2660, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %2661 to i32*
  %2662 = load i32, i32* %EAX.i
  %2663 = zext i32 %2662 to i64
  %2664 = load i64, i64* %PC.i4
  %2665 = add i64 %2664, 7
  store i64 %2665, i64* %PC.i4
  store i32 %2662, i32* bitcast (%G_0xafc478_type* @G_0xafc478 to i32*)
  store %struct.Memory* %loadMem_4e2316, %struct.Memory** %MEMORY
  %loadMem_4e231d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2667 = getelementptr inbounds %struct.GPR, %struct.GPR* %2666, i32 0, i32 33
  %2668 = getelementptr inbounds %struct.Reg, %struct.Reg* %2667, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %2668 to i64*
  %2669 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2670 = getelementptr inbounds %struct.GPR, %struct.GPR* %2669, i32 0, i32 15
  %2671 = getelementptr inbounds %struct.Reg, %struct.Reg* %2670, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %2671 to i64*
  %2672 = load i64, i64* %PC.i2
  %2673 = add i64 %2672, 1
  store i64 %2673, i64* %PC.i2
  %2674 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2675 = load i64, i64* %2674, align 8
  %2676 = add i64 %2675, 8
  %2677 = inttoptr i64 %2675 to i64*
  %2678 = load i64, i64* %2677
  store i64 %2678, i64* %RBP.i3, align 8
  store i64 %2676, i64* %2674, align 8
  store %struct.Memory* %loadMem_4e231d, %struct.Memory** %MEMORY
  %loadMem_4e231e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2679 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2680 = getelementptr inbounds %struct.GPR, %struct.GPR* %2679, i32 0, i32 33
  %2681 = getelementptr inbounds %struct.Reg, %struct.Reg* %2680, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %2681 to i64*
  %2682 = load i64, i64* %PC.i1
  %2683 = add i64 %2682, 1
  store i64 %2683, i64* %PC.i1
  %2684 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2685 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2686 = load i64, i64* %2685, align 8
  %2687 = inttoptr i64 %2686 to i64*
  %2688 = load i64, i64* %2687
  store i64 %2688, i64* %2684, align 8
  %2689 = add i64 %2686, 8
  store i64 %2689, i64* %2685, align 8
  store %struct.Memory* %loadMem_4e231e, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_4e231e
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

define %struct.Memory* @routine_movl_0xafc47c___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC
  %11 = load i32, i32* bitcast (%G_0xafc47c_type* @G_0xafc47c to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0xc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 12
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0xafc478___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC
  %11 = load i32, i32* bitcast (%G_0xafc478_type* @G_0xafc478 to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
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

define %struct.Memory* @routine_movl_0x99c070___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC
  %11 = load i32, i32* bitcast (%G_0x99c070_type* @G_0x99c070 to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
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

define %struct.Memory* @routine_movb__cl__MINUS0x31__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 49
  %15 = load i8, i8* %CL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 3
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %14 to i8*
  store i8 %15, i8* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jle_.L_4e21b5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_setg__cl(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 3
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
  store i8 %24, i8* %CL, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb_MINUS0x31__rbp____al(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 49
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

define %struct.Memory* @routine_jne_.L_4e21c5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_4e22f3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_subl_MINUS0x10__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 16
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

define %struct.Memory* @routine_movl_MINUS0x10__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl_MINUS0xc__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 12
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = trunc i64 %12 to i32
  %18 = inttoptr i64 %14 to i32*
  %19 = load i32, i32* %18
  %20 = sub i32 %17, %19
  %21 = zext i32 %20 to i64
  store i64 %21, i64* %RCX, align 8
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

define %struct.Memory* @routine_cmpl__ecx___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %ECX = bitcast %union.anon* %11 to i32*
  %12 = load i32, i32* %EAX
  %13 = zext i32 %12 to i64
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 2
  store i64 %17, i64* %PC
  %18 = sub i32 %12, %14
  %19 = icmp ult i32 %12, %14
  %20 = zext i1 %19 to i8
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %20, i8* %21, align 1
  %22 = and i32 %18, 255
  %23 = call i32 @llvm.ctpop.i32(i32 %22)
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  %26 = xor i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %26, i8* %27, align 1
  %28 = xor i64 %15, %13
  %29 = trunc i64 %28 to i32
  %30 = xor i32 %29, %18
  %31 = lshr i32 %30, 4
  %32 = trunc i32 %31 to i8
  %33 = and i8 %32, 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %33, i8* %34, align 1
  %35 = icmp eq i32 %18, 0
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %36, i8* %37, align 1
  %38 = lshr i32 %18, 31
  %39 = trunc i32 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %39, i8* %40, align 1
  %41 = lshr i32 %12, 31
  %42 = lshr i32 %14, 31
  %43 = xor i32 %42, %41
  %44 = xor i32 %38, %41
  %45 = add i32 %44, %43
  %46 = icmp eq i32 %45, 2
  %47 = zext i1 %46 to i8
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %47, i8* %48, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jle_.L_4e226f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_subl_MINUS0xc__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 12
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

define %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 36
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_cmpl_MINUS0x24__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i64 %14, 36
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

define %struct.Memory* @routine_jge_.L_4e225f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0xc__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x28__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 40
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

define %struct.Memory* @routine_movq__rax__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
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

define %struct.Memory* @routine_movl_MINUS0x10__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl_MINUS0xc__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RSI
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 12
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = trunc i64 %12 to i32
  %18 = inttoptr i64 %14 to i32*
  %19 = load i32, i32* %18
  %20 = sub i32 %17, %19
  %21 = zext i32 %20 to i64
  store i64 %21, i64* %RSI, align 8
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

define %struct.Memory* @routine_subl__esi___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RCX = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RCX
  %13 = load i32, i32* %ESI
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = trunc i64 %12 to i32
  %18 = sub i32 %17, %13
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RCX, align 8
  %20 = icmp ult i32 %17, %13
  %21 = zext i1 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %21, i8* %22, align 1
  %23 = and i32 %18, 255
  %24 = call i32 @llvm.ctpop.i32(i32 %23)
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = xor i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %27, i8* %28, align 1
  %29 = xor i64 %14, %12
  %30 = trunc i64 %29 to i32
  %31 = xor i32 %30, %18
  %32 = lshr i32 %31, 4
  %33 = trunc i32 %32 to i8
  %34 = and i8 %33, 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %34, i8* %35, align 1
  %36 = icmp eq i32 %18, 0
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %37, i8* %38, align 1
  %39 = lshr i32 %18, 31
  %40 = trunc i32 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %40, i8* %41, align 1
  %42 = lshr i32 %17, 31
  %43 = lshr i32 %13, 31
  %44 = xor i32 %43, %42
  %45 = xor i32 %39, %42
  %46 = add i32 %45, %44
  %47 = icmp eq i32 %46, 2
  %48 = zext i1 %47 to i8
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %48, i8* %49, align 1
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

define %struct.Memory* @routine_movslq__ecx___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  store i64 %17, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax____rdx__rdi_8_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 11
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RDX
  %16 = load i64, i64* %RDI
  %17 = mul i64 %16, 8
  %18 = add i64 %17, %15
  %19 = load i64, i64* %RAX
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 4
  store i64 %21, i64* %PC
  %22 = inttoptr i64 %18 to i64*
  store i64 %19, i64* %22
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

define %struct.Memory* @routine_movl__eax__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 40
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4e21e9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_subl__eax___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %17 = trunc i64 %12 to i32
  %18 = sub i32 %17, %13
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RCX, align 8
  %20 = icmp ult i32 %17, %13
  %21 = zext i1 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %21, i8* %22, align 1
  %23 = and i32 %18, 255
  %24 = call i32 @llvm.ctpop.i32(i32 %23)
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = xor i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %27, i8* %28, align 1
  %29 = xor i64 %14, %12
  %30 = trunc i64 %29 to i32
  %31 = xor i32 %30, %18
  %32 = lshr i32 %31, 4
  %33 = trunc i32 %32 to i8
  %34 = and i8 %33, 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %34, i8* %35, align 1
  %36 = icmp eq i32 %18, 0
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %37, i8* %38, align 1
  %39 = lshr i32 %18, 31
  %40 = trunc i32 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %40, i8* %41, align 1
  %42 = lshr i32 %17, 31
  %43 = lshr i32 %13, 31
  %44 = xor i32 %43, %42
  %45 = xor i32 %39, %42
  %46 = add i32 %45, %44
  %47 = icmp eq i32 %46, 2
  %48 = zext i1 %47 to i8
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %48, i8* %49, align 1
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

define %struct.Memory* @routine_jmpq_.L_4e22ee(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 44
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_cmpl_MINUS0x2c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i64 %14, 44
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

define %struct.Memory* @routine_jge_.L_4e22e5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_addl_MINUS0x30__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 48
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

define %struct.Memory* @routine_movq__rax____rdx__rsi_8_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = load i64, i64* %RDX
  %16 = load i64, i64* %RSI
  %17 = mul i64 %16, 8
  %18 = add i64 %17, %15
  %19 = load i64, i64* %RAX
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 4
  store i64 %21, i64* %PC
  %22 = inttoptr i64 %18 to i64*
  store i64 %19, i64* %22
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 48
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4e227f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_addl_MINUS0xc__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 12
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

define %struct.Memory* @routine_jmpq_.L_4e2196(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_subl_0xafc478___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC
  %12 = trunc i64 %9 to i32
  %13 = load i32, i32* bitcast (%G_0xafc478_type* @G_0xafc478 to i32*)
  %14 = sub i32 %12, %13
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %RAX, align 8
  %16 = icmp ult i32 %12, %13
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %17, i8* %18, align 1
  %19 = and i32 %14, 255
  %20 = call i32 @llvm.ctpop.i32(i32 %19)
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = xor i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %23, i8* %24, align 1
  %25 = xor i32 %13, %12
  %26 = xor i32 %25, %14
  %27 = lshr i32 %26, 4
  %28 = trunc i32 %27 to i8
  %29 = and i8 %28, 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %29, i8* %30, align 1
  %31 = icmp eq i32 %14, 0
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %14, 31
  %35 = trunc i32 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %35, i8* %36, align 1
  %37 = lshr i32 %12, 31
  %38 = lshr i32 %13, 31
  %39 = xor i32 %38, %37
  %40 = xor i32 %34, %37
  %41 = add i32 %40, %39
  %42 = icmp eq i32 %41, 2
  %43 = zext i1 %42 to i8
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %43, i8* %44, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_0xafc47c___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC
  %12 = trunc i64 %9 to i32
  %13 = load i32, i32* bitcast (%G_0xafc47c_type* @G_0xafc47c to i32*)
  %14 = add i32 %13, %12
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %RAX, align 8
  %16 = icmp ult i32 %14, %12
  %17 = icmp ult i32 %14, %13
  %18 = or i1 %16, %17
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %19, i8* %20, align 1
  %21 = and i32 %14, 255
  %22 = call i32 @llvm.ctpop.i32(i32 %21)
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = xor i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %25, i8* %26, align 1
  %27 = xor i32 %13, %12
  %28 = xor i32 %27, %14
  %29 = lshr i32 %28, 4
  %30 = trunc i32 %29 to i8
  %31 = and i8 %30, 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %31, i8* %32, align 1
  %33 = icmp eq i32 %14, 0
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %14, 31
  %37 = trunc i32 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %37, i8* %38, align 1
  %39 = lshr i32 %12, 31
  %40 = lshr i32 %13, 31
  %41 = xor i32 %36, %39
  %42 = xor i32 %36, %40
  %43 = add i32 %41, %42
  %44 = icmp eq i32 %43, 2
  %45 = zext i1 %44 to i8
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %45, i8* %46, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__0xafc47c(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  store i32 %9, i32* bitcast (%G_0xafc47c_type* @G_0xafc47c to i32*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__0xafc478(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  store i32 %9, i32* bitcast (%G_0xafc478_type* @G_0xafc478 to i32*)
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
