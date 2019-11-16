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

declare %struct.Memory* @sub_407890.AllocPlan7Matrix(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_4281b0.ILogsum(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_407940.FreePlan7Matrix(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_427ef0.Scorify(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @P7Backward(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_435860 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_435860, %struct.Memory** %MEMORY
  %loadMem_435861 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i1316 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i1317 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i1318 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i1317
  %27 = load i64, i64* %PC.i1316
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i1316
  store i64 %26, i64* %RBP.i1318, align 8
  store %struct.Memory* %loadMem_435861, %struct.Memory** %MEMORY
  %loadMem_435864 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i1314 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i1315 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i1315
  %36 = load i64, i64* %PC.i1314
  %37 = add i64 %36, 4
  store i64 %37, i64* %PC.i1314
  %38 = sub i64 %35, 96
  store i64 %38, i64* %RSP.i1315, align 8
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
  store %struct.Memory* %loadMem_435864, %struct.Memory** %MEMORY
  %loadMem_435868 = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i1311 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %RAX.i1312 = bitcast %union.anon* %72 to i64*
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %74 = getelementptr inbounds %struct.GPR, %struct.GPR* %73, i32 0, i32 15
  %75 = getelementptr inbounds %struct.Reg, %struct.Reg* %74, i32 0, i32 0
  %RBP.i1313 = bitcast %union.anon* %75 to i64*
  %76 = load i64, i64* %RBP.i1313
  %77 = sub i64 %76, 48
  %78 = load i64, i64* %PC.i1311
  %79 = add i64 %78, 4
  store i64 %79, i64* %PC.i1311
  store i64 %77, i64* %RAX.i1312, align 8
  store %struct.Memory* %loadMem_435868, %struct.Memory** %MEMORY
  %loadMem_43586c = load %struct.Memory*, %struct.Memory** %MEMORY
  %80 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %81 = getelementptr inbounds %struct.GPR, %struct.GPR* %80, i32 0, i32 33
  %82 = getelementptr inbounds %struct.Reg, %struct.Reg* %81, i32 0, i32 0
  %PC.i1308 = bitcast %union.anon* %82 to i64*
  %83 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %84 = getelementptr inbounds %struct.GPR, %struct.GPR* %83, i32 0, i32 15
  %85 = getelementptr inbounds %struct.Reg, %struct.Reg* %84, i32 0, i32 0
  %RBP.i1309 = bitcast %union.anon* %85 to i64*
  %86 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %87 = getelementptr inbounds %struct.GPR, %struct.GPR* %86, i32 0, i32 17
  %88 = getelementptr inbounds %struct.Reg, %struct.Reg* %87, i32 0, i32 0
  %R8.i1310 = bitcast %union.anon* %88 to i64*
  %89 = load i64, i64* %RBP.i1309
  %90 = sub i64 %89, 56
  %91 = load i64, i64* %PC.i1308
  %92 = add i64 %91, 4
  store i64 %92, i64* %PC.i1308
  store i64 %90, i64* %R8.i1310, align 8
  store %struct.Memory* %loadMem_43586c, %struct.Memory** %MEMORY
  %loadMem_435870 = load %struct.Memory*, %struct.Memory** %MEMORY
  %93 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %94 = getelementptr inbounds %struct.GPR, %struct.GPR* %93, i32 0, i32 33
  %95 = getelementptr inbounds %struct.Reg, %struct.Reg* %94, i32 0, i32 0
  %PC.i1305 = bitcast %union.anon* %95 to i64*
  %96 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %97 = getelementptr inbounds %struct.GPR, %struct.GPR* %96, i32 0, i32 15
  %98 = getelementptr inbounds %struct.Reg, %struct.Reg* %97, i32 0, i32 0
  %RBP.i1306 = bitcast %union.anon* %98 to i64*
  %99 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %100 = getelementptr inbounds %struct.GPR, %struct.GPR* %99, i32 0, i32 19
  %101 = getelementptr inbounds %struct.Reg, %struct.Reg* %100, i32 0, i32 0
  %R9.i1307 = bitcast %union.anon* %101 to i64*
  %102 = load i64, i64* %RBP.i1306
  %103 = sub i64 %102, 64
  %104 = load i64, i64* %PC.i1305
  %105 = add i64 %104, 4
  store i64 %105, i64* %PC.i1305
  store i64 %103, i64* %R9.i1307, align 8
  store %struct.Memory* %loadMem_435870, %struct.Memory** %MEMORY
  %loadMem_435874 = load %struct.Memory*, %struct.Memory** %MEMORY
  %106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %107 = getelementptr inbounds %struct.GPR, %struct.GPR* %106, i32 0, i32 33
  %108 = getelementptr inbounds %struct.Reg, %struct.Reg* %107, i32 0, i32 0
  %PC.i1302 = bitcast %union.anon* %108 to i64*
  %109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %110 = getelementptr inbounds %struct.GPR, %struct.GPR* %109, i32 0, i32 15
  %111 = getelementptr inbounds %struct.Reg, %struct.Reg* %110, i32 0, i32 0
  %RBP.i1303 = bitcast %union.anon* %111 to i64*
  %112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %113 = getelementptr inbounds %struct.GPR, %struct.GPR* %112, i32 0, i32 21
  %114 = getelementptr inbounds %struct.Reg, %struct.Reg* %113, i32 0, i32 0
  %R10.i1304 = bitcast %union.anon* %114 to i64*
  %115 = load i64, i64* %RBP.i1303
  %116 = sub i64 %115, 72
  %117 = load i64, i64* %PC.i1302
  %118 = add i64 %117, 4
  store i64 %118, i64* %PC.i1302
  store i64 %116, i64* %R10.i1304, align 8
  store %struct.Memory* %loadMem_435874, %struct.Memory** %MEMORY
  %loadMem_435878 = load %struct.Memory*, %struct.Memory** %MEMORY
  %119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %120 = getelementptr inbounds %struct.GPR, %struct.GPR* %119, i32 0, i32 33
  %121 = getelementptr inbounds %struct.Reg, %struct.Reg* %120, i32 0, i32 0
  %PC.i1299 = bitcast %union.anon* %121 to i64*
  %122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %123 = getelementptr inbounds %struct.GPR, %struct.GPR* %122, i32 0, i32 11
  %124 = getelementptr inbounds %struct.Reg, %struct.Reg* %123, i32 0, i32 0
  %RDI.i1300 = bitcast %union.anon* %124 to i64*
  %125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %126 = getelementptr inbounds %struct.GPR, %struct.GPR* %125, i32 0, i32 15
  %127 = getelementptr inbounds %struct.Reg, %struct.Reg* %126, i32 0, i32 0
  %RBP.i1301 = bitcast %union.anon* %127 to i64*
  %128 = load i64, i64* %RBP.i1301
  %129 = sub i64 %128, 8
  %130 = load i64, i64* %RDI.i1300
  %131 = load i64, i64* %PC.i1299
  %132 = add i64 %131, 4
  store i64 %132, i64* %PC.i1299
  %133 = inttoptr i64 %129 to i64*
  store i64 %130, i64* %133
  store %struct.Memory* %loadMem_435878, %struct.Memory** %MEMORY
  %loadMem_43587c = load %struct.Memory*, %struct.Memory** %MEMORY
  %134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %135 = getelementptr inbounds %struct.GPR, %struct.GPR* %134, i32 0, i32 33
  %136 = getelementptr inbounds %struct.Reg, %struct.Reg* %135, i32 0, i32 0
  %PC.i1296 = bitcast %union.anon* %136 to i64*
  %137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %138 = getelementptr inbounds %struct.GPR, %struct.GPR* %137, i32 0, i32 9
  %139 = getelementptr inbounds %struct.Reg, %struct.Reg* %138, i32 0, i32 0
  %ESI.i1297 = bitcast %union.anon* %139 to i32*
  %140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %141 = getelementptr inbounds %struct.GPR, %struct.GPR* %140, i32 0, i32 15
  %142 = getelementptr inbounds %struct.Reg, %struct.Reg* %141, i32 0, i32 0
  %RBP.i1298 = bitcast %union.anon* %142 to i64*
  %143 = load i64, i64* %RBP.i1298
  %144 = sub i64 %143, 12
  %145 = load i32, i32* %ESI.i1297
  %146 = zext i32 %145 to i64
  %147 = load i64, i64* %PC.i1296
  %148 = add i64 %147, 3
  store i64 %148, i64* %PC.i1296
  %149 = inttoptr i64 %144 to i32*
  store i32 %145, i32* %149
  store %struct.Memory* %loadMem_43587c, %struct.Memory** %MEMORY
  %loadMem_43587f = load %struct.Memory*, %struct.Memory** %MEMORY
  %150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %151 = getelementptr inbounds %struct.GPR, %struct.GPR* %150, i32 0, i32 33
  %152 = getelementptr inbounds %struct.Reg, %struct.Reg* %151, i32 0, i32 0
  %PC.i1293 = bitcast %union.anon* %152 to i64*
  %153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %154 = getelementptr inbounds %struct.GPR, %struct.GPR* %153, i32 0, i32 7
  %155 = getelementptr inbounds %struct.Reg, %struct.Reg* %154, i32 0, i32 0
  %RDX.i1294 = bitcast %union.anon* %155 to i64*
  %156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %157 = getelementptr inbounds %struct.GPR, %struct.GPR* %156, i32 0, i32 15
  %158 = getelementptr inbounds %struct.Reg, %struct.Reg* %157, i32 0, i32 0
  %RBP.i1295 = bitcast %union.anon* %158 to i64*
  %159 = load i64, i64* %RBP.i1295
  %160 = sub i64 %159, 24
  %161 = load i64, i64* %RDX.i1294
  %162 = load i64, i64* %PC.i1293
  %163 = add i64 %162, 4
  store i64 %163, i64* %PC.i1293
  %164 = inttoptr i64 %160 to i64*
  store i64 %161, i64* %164
  store %struct.Memory* %loadMem_43587f, %struct.Memory** %MEMORY
  %loadMem_435883 = load %struct.Memory*, %struct.Memory** %MEMORY
  %165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %166 = getelementptr inbounds %struct.GPR, %struct.GPR* %165, i32 0, i32 33
  %167 = getelementptr inbounds %struct.Reg, %struct.Reg* %166, i32 0, i32 0
  %PC.i1290 = bitcast %union.anon* %167 to i64*
  %168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %169 = getelementptr inbounds %struct.GPR, %struct.GPR* %168, i32 0, i32 5
  %170 = getelementptr inbounds %struct.Reg, %struct.Reg* %169, i32 0, i32 0
  %RCX.i1291 = bitcast %union.anon* %170 to i64*
  %171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %172 = getelementptr inbounds %struct.GPR, %struct.GPR* %171, i32 0, i32 15
  %173 = getelementptr inbounds %struct.Reg, %struct.Reg* %172, i32 0, i32 0
  %RBP.i1292 = bitcast %union.anon* %173 to i64*
  %174 = load i64, i64* %RBP.i1292
  %175 = sub i64 %174, 32
  %176 = load i64, i64* %RCX.i1291
  %177 = load i64, i64* %PC.i1290
  %178 = add i64 %177, 4
  store i64 %178, i64* %PC.i1290
  %179 = inttoptr i64 %175 to i64*
  store i64 %176, i64* %179
  store %struct.Memory* %loadMem_435883, %struct.Memory** %MEMORY
  %loadMem_435887 = load %struct.Memory*, %struct.Memory** %MEMORY
  %180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %181 = getelementptr inbounds %struct.GPR, %struct.GPR* %180, i32 0, i32 33
  %182 = getelementptr inbounds %struct.Reg, %struct.Reg* %181, i32 0, i32 0
  %PC.i1287 = bitcast %union.anon* %182 to i64*
  %183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %184 = getelementptr inbounds %struct.GPR, %struct.GPR* %183, i32 0, i32 9
  %185 = getelementptr inbounds %struct.Reg, %struct.Reg* %184, i32 0, i32 0
  %RSI.i1288 = bitcast %union.anon* %185 to i64*
  %186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %187 = getelementptr inbounds %struct.GPR, %struct.GPR* %186, i32 0, i32 15
  %188 = getelementptr inbounds %struct.Reg, %struct.Reg* %187, i32 0, i32 0
  %RBP.i1289 = bitcast %union.anon* %188 to i64*
  %189 = load i64, i64* %RBP.i1289
  %190 = sub i64 %189, 12
  %191 = load i64, i64* %PC.i1287
  %192 = add i64 %191, 3
  store i64 %192, i64* %PC.i1287
  %193 = inttoptr i64 %190 to i32*
  %194 = load i32, i32* %193
  %195 = zext i32 %194 to i64
  store i64 %195, i64* %RSI.i1288, align 8
  store %struct.Memory* %loadMem_435887, %struct.Memory** %MEMORY
  %loadMem_43588a = load %struct.Memory*, %struct.Memory** %MEMORY
  %196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %197 = getelementptr inbounds %struct.GPR, %struct.GPR* %196, i32 0, i32 33
  %198 = getelementptr inbounds %struct.Reg, %struct.Reg* %197, i32 0, i32 0
  %PC.i1285 = bitcast %union.anon* %198 to i64*
  %199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %200 = getelementptr inbounds %struct.GPR, %struct.GPR* %199, i32 0, i32 9
  %201 = getelementptr inbounds %struct.Reg, %struct.Reg* %200, i32 0, i32 0
  %RSI.i1286 = bitcast %union.anon* %201 to i64*
  %202 = load i64, i64* %RSI.i1286
  %203 = load i64, i64* %PC.i1285
  %204 = add i64 %203, 3
  store i64 %204, i64* %PC.i1285
  %205 = trunc i64 %202 to i32
  %206 = add i32 1, %205
  %207 = zext i32 %206 to i64
  store i64 %207, i64* %RSI.i1286, align 8
  %208 = icmp ult i32 %206, %205
  %209 = icmp ult i32 %206, 1
  %210 = or i1 %208, %209
  %211 = zext i1 %210 to i8
  %212 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %211, i8* %212, align 1
  %213 = and i32 %206, 255
  %214 = call i32 @llvm.ctpop.i32(i32 %213)
  %215 = trunc i32 %214 to i8
  %216 = and i8 %215, 1
  %217 = xor i8 %216, 1
  %218 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %217, i8* %218, align 1
  %219 = xor i64 1, %202
  %220 = trunc i64 %219 to i32
  %221 = xor i32 %220, %206
  %222 = lshr i32 %221, 4
  %223 = trunc i32 %222 to i8
  %224 = and i8 %223, 1
  %225 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %224, i8* %225, align 1
  %226 = icmp eq i32 %206, 0
  %227 = zext i1 %226 to i8
  %228 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %227, i8* %228, align 1
  %229 = lshr i32 %206, 31
  %230 = trunc i32 %229 to i8
  %231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %230, i8* %231, align 1
  %232 = lshr i32 %205, 31
  %233 = xor i32 %229, %232
  %234 = add i32 %233, %229
  %235 = icmp eq i32 %234, 2
  %236 = zext i1 %235 to i8
  %237 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %236, i8* %237, align 1
  store %struct.Memory* %loadMem_43588a, %struct.Memory** %MEMORY
  %loadMem_43588d = load %struct.Memory*, %struct.Memory** %MEMORY
  %238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %239 = getelementptr inbounds %struct.GPR, %struct.GPR* %238, i32 0, i32 33
  %240 = getelementptr inbounds %struct.Reg, %struct.Reg* %239, i32 0, i32 0
  %PC.i1282 = bitcast %union.anon* %240 to i64*
  %241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %242 = getelementptr inbounds %struct.GPR, %struct.GPR* %241, i32 0, i32 5
  %243 = getelementptr inbounds %struct.Reg, %struct.Reg* %242, i32 0, i32 0
  %RCX.i1283 = bitcast %union.anon* %243 to i64*
  %244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %245 = getelementptr inbounds %struct.GPR, %struct.GPR* %244, i32 0, i32 15
  %246 = getelementptr inbounds %struct.Reg, %struct.Reg* %245, i32 0, i32 0
  %RBP.i1284 = bitcast %union.anon* %246 to i64*
  %247 = load i64, i64* %RBP.i1284
  %248 = sub i64 %247, 24
  %249 = load i64, i64* %PC.i1282
  %250 = add i64 %249, 4
  store i64 %250, i64* %PC.i1282
  %251 = inttoptr i64 %248 to i64*
  %252 = load i64, i64* %251
  store i64 %252, i64* %RCX.i1283, align 8
  store %struct.Memory* %loadMem_43588d, %struct.Memory** %MEMORY
  %loadMem_435891 = load %struct.Memory*, %struct.Memory** %MEMORY
  %253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %254 = getelementptr inbounds %struct.GPR, %struct.GPR* %253, i32 0, i32 33
  %255 = getelementptr inbounds %struct.Reg, %struct.Reg* %254, i32 0, i32 0
  %PC.i1279 = bitcast %union.anon* %255 to i64*
  %256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %257 = getelementptr inbounds %struct.GPR, %struct.GPR* %256, i32 0, i32 23
  %258 = getelementptr inbounds %struct.Reg, %struct.Reg* %257, i32 0, i32 0
  %R11D.i1280 = bitcast %union.anon* %258 to i32*
  %259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %260 = getelementptr inbounds %struct.GPR, %struct.GPR* %259, i32 0, i32 5
  %261 = getelementptr inbounds %struct.Reg, %struct.Reg* %260, i32 0, i32 0
  %RCX.i1281 = bitcast %union.anon* %261 to i64*
  %262 = bitcast i32* %R11D.i1280 to i64*
  %263 = load i64, i64* %RCX.i1281
  %264 = add i64 %263, 136
  %265 = load i64, i64* %PC.i1279
  %266 = add i64 %265, 7
  store i64 %266, i64* %PC.i1279
  %267 = inttoptr i64 %264 to i32*
  %268 = load i32, i32* %267
  %269 = zext i32 %268 to i64
  store i64 %269, i64* %262, align 8
  store %struct.Memory* %loadMem_435891, %struct.Memory** %MEMORY
  %loadMem_435898 = load %struct.Memory*, %struct.Memory** %MEMORY
  %270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %271 = getelementptr inbounds %struct.GPR, %struct.GPR* %270, i32 0, i32 33
  %272 = getelementptr inbounds %struct.Reg, %struct.Reg* %271, i32 0, i32 0
  %PC.i1276 = bitcast %union.anon* %272 to i64*
  %273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %274 = getelementptr inbounds %struct.GPR, %struct.GPR* %273, i32 0, i32 9
  %275 = getelementptr inbounds %struct.Reg, %struct.Reg* %274, i32 0, i32 0
  %ESI.i1277 = bitcast %union.anon* %275 to i32*
  %276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %277 = getelementptr inbounds %struct.GPR, %struct.GPR* %276, i32 0, i32 11
  %278 = getelementptr inbounds %struct.Reg, %struct.Reg* %277, i32 0, i32 0
  %RDI.i1278 = bitcast %union.anon* %278 to i64*
  %279 = load i32, i32* %ESI.i1277
  %280 = zext i32 %279 to i64
  %281 = load i64, i64* %PC.i1276
  %282 = add i64 %281, 2
  store i64 %282, i64* %PC.i1276
  %283 = and i64 %280, 4294967295
  store i64 %283, i64* %RDI.i1278, align 8
  store %struct.Memory* %loadMem_435898, %struct.Memory** %MEMORY
  %loadMem_43589a = load %struct.Memory*, %struct.Memory** %MEMORY
  %284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %285 = getelementptr inbounds %struct.GPR, %struct.GPR* %284, i32 0, i32 33
  %286 = getelementptr inbounds %struct.Reg, %struct.Reg* %285, i32 0, i32 0
  %PC.i1274 = bitcast %union.anon* %286 to i64*
  %287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %288 = getelementptr inbounds %struct.GPR, %struct.GPR* %287, i32 0, i32 23
  %289 = getelementptr inbounds %struct.Reg, %struct.Reg* %288, i32 0, i32 0
  %R11D.i = bitcast %union.anon* %289 to i32*
  %290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %291 = getelementptr inbounds %struct.GPR, %struct.GPR* %290, i32 0, i32 9
  %292 = getelementptr inbounds %struct.Reg, %struct.Reg* %291, i32 0, i32 0
  %RSI.i1275 = bitcast %union.anon* %292 to i64*
  %293 = load i32, i32* %R11D.i
  %294 = zext i32 %293 to i64
  %295 = load i64, i64* %PC.i1274
  %296 = add i64 %295, 3
  store i64 %296, i64* %PC.i1274
  %297 = and i64 %294, 4294967295
  store i64 %297, i64* %RSI.i1275, align 8
  store %struct.Memory* %loadMem_43589a, %struct.Memory** %MEMORY
  %loadMem_43589d = load %struct.Memory*, %struct.Memory** %MEMORY
  %298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %299 = getelementptr inbounds %struct.GPR, %struct.GPR* %298, i32 0, i32 33
  %300 = getelementptr inbounds %struct.Reg, %struct.Reg* %299, i32 0, i32 0
  %PC.i1271 = bitcast %union.anon* %300 to i64*
  %301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %302 = getelementptr inbounds %struct.GPR, %struct.GPR* %301, i32 0, i32 1
  %303 = getelementptr inbounds %struct.Reg, %struct.Reg* %302, i32 0, i32 0
  %RAX.i1272 = bitcast %union.anon* %303 to i64*
  %304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %305 = getelementptr inbounds %struct.GPR, %struct.GPR* %304, i32 0, i32 7
  %306 = getelementptr inbounds %struct.Reg, %struct.Reg* %305, i32 0, i32 0
  %RDX.i1273 = bitcast %union.anon* %306 to i64*
  %307 = load i64, i64* %RAX.i1272
  %308 = load i64, i64* %PC.i1271
  %309 = add i64 %308, 3
  store i64 %309, i64* %PC.i1271
  store i64 %307, i64* %RDX.i1273, align 8
  store %struct.Memory* %loadMem_43589d, %struct.Memory** %MEMORY
  %loadMem_4358a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %311 = getelementptr inbounds %struct.GPR, %struct.GPR* %310, i32 0, i32 33
  %312 = getelementptr inbounds %struct.Reg, %struct.Reg* %311, i32 0, i32 0
  %PC.i1268 = bitcast %union.anon* %312 to i64*
  %313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %314 = getelementptr inbounds %struct.GPR, %struct.GPR* %313, i32 0, i32 5
  %315 = getelementptr inbounds %struct.Reg, %struct.Reg* %314, i32 0, i32 0
  %RCX.i1269 = bitcast %union.anon* %315 to i64*
  %316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %317 = getelementptr inbounds %struct.GPR, %struct.GPR* %316, i32 0, i32 17
  %318 = getelementptr inbounds %struct.Reg, %struct.Reg* %317, i32 0, i32 0
  %R8.i1270 = bitcast %union.anon* %318 to i64*
  %319 = load i64, i64* %R8.i1270
  %320 = load i64, i64* %PC.i1268
  %321 = add i64 %320, 3
  store i64 %321, i64* %PC.i1268
  store i64 %319, i64* %RCX.i1269, align 8
  store %struct.Memory* %loadMem_4358a0, %struct.Memory** %MEMORY
  %loadMem_4358a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %322 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %323 = getelementptr inbounds %struct.GPR, %struct.GPR* %322, i32 0, i32 33
  %324 = getelementptr inbounds %struct.Reg, %struct.Reg* %323, i32 0, i32 0
  %PC.i1265 = bitcast %union.anon* %324 to i64*
  %325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %326 = getelementptr inbounds %struct.GPR, %struct.GPR* %325, i32 0, i32 17
  %327 = getelementptr inbounds %struct.Reg, %struct.Reg* %326, i32 0, i32 0
  %R8.i1266 = bitcast %union.anon* %327 to i64*
  %328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %329 = getelementptr inbounds %struct.GPR, %struct.GPR* %328, i32 0, i32 19
  %330 = getelementptr inbounds %struct.Reg, %struct.Reg* %329, i32 0, i32 0
  %R9.i1267 = bitcast %union.anon* %330 to i64*
  %331 = load i64, i64* %R9.i1267
  %332 = load i64, i64* %PC.i1265
  %333 = add i64 %332, 3
  store i64 %333, i64* %PC.i1265
  store i64 %331, i64* %R8.i1266, align 8
  store %struct.Memory* %loadMem_4358a3, %struct.Memory** %MEMORY
  %loadMem_4358a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %335 = getelementptr inbounds %struct.GPR, %struct.GPR* %334, i32 0, i32 33
  %336 = getelementptr inbounds %struct.Reg, %struct.Reg* %335, i32 0, i32 0
  %PC.i1263 = bitcast %union.anon* %336 to i64*
  %337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %338 = getelementptr inbounds %struct.GPR, %struct.GPR* %337, i32 0, i32 19
  %339 = getelementptr inbounds %struct.Reg, %struct.Reg* %338, i32 0, i32 0
  %R9.i1264 = bitcast %union.anon* %339 to i64*
  %340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %341 = getelementptr inbounds %struct.GPR, %struct.GPR* %340, i32 0, i32 21
  %342 = getelementptr inbounds %struct.Reg, %struct.Reg* %341, i32 0, i32 0
  %R10.i = bitcast %union.anon* %342 to i64*
  %343 = load i64, i64* %R10.i
  %344 = load i64, i64* %PC.i1263
  %345 = add i64 %344, 3
  store i64 %345, i64* %PC.i1263
  store i64 %343, i64* %R9.i1264, align 8
  store %struct.Memory* %loadMem_4358a6, %struct.Memory** %MEMORY
  %loadMem1_4358a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %347 = getelementptr inbounds %struct.GPR, %struct.GPR* %346, i32 0, i32 33
  %348 = getelementptr inbounds %struct.Reg, %struct.Reg* %347, i32 0, i32 0
  %PC.i1262 = bitcast %union.anon* %348 to i64*
  %349 = load i64, i64* %PC.i1262
  %350 = add i64 %349, -188441
  %351 = load i64, i64* %PC.i1262
  %352 = add i64 %351, 5
  %353 = load i64, i64* %PC.i1262
  %354 = add i64 %353, 5
  store i64 %354, i64* %PC.i1262
  %355 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %356 = load i64, i64* %355, align 8
  %357 = add i64 %356, -8
  %358 = inttoptr i64 %357 to i64*
  store i64 %352, i64* %358
  store i64 %357, i64* %355, align 8
  %359 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %350, i64* %359, align 8
  store %struct.Memory* %loadMem1_4358a9, %struct.Memory** %MEMORY
  %loadMem2_4358a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4358a9 = load i64, i64* %3
  %call2_4358a9 = call %struct.Memory* @sub_407890.AllocPlan7Matrix(%struct.State* %0, i64 %loadPC_4358a9, %struct.Memory* %loadMem2_4358a9)
  store %struct.Memory* %call2_4358a9, %struct.Memory** %MEMORY
  %loadMem_4358ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %361 = getelementptr inbounds %struct.GPR, %struct.GPR* %360, i32 0, i32 33
  %362 = getelementptr inbounds %struct.Reg, %struct.Reg* %361, i32 0, i32 0
  %PC.i1259 = bitcast %union.anon* %362 to i64*
  %363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %364 = getelementptr inbounds %struct.GPR, %struct.GPR* %363, i32 0, i32 1
  %365 = getelementptr inbounds %struct.Reg, %struct.Reg* %364, i32 0, i32 0
  %RAX.i1260 = bitcast %union.anon* %365 to i64*
  %366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %367 = getelementptr inbounds %struct.GPR, %struct.GPR* %366, i32 0, i32 15
  %368 = getelementptr inbounds %struct.Reg, %struct.Reg* %367, i32 0, i32 0
  %RBP.i1261 = bitcast %union.anon* %368 to i64*
  %369 = load i64, i64* %RBP.i1261
  %370 = sub i64 %369, 40
  %371 = load i64, i64* %RAX.i1260
  %372 = load i64, i64* %PC.i1259
  %373 = add i64 %372, 4
  store i64 %373, i64* %PC.i1259
  %374 = inttoptr i64 %370 to i64*
  store i64 %371, i64* %374
  store %struct.Memory* %loadMem_4358ae, %struct.Memory** %MEMORY
  %loadMem_4358b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %376 = getelementptr inbounds %struct.GPR, %struct.GPR* %375, i32 0, i32 33
  %377 = getelementptr inbounds %struct.Reg, %struct.Reg* %376, i32 0, i32 0
  %PC.i1256 = bitcast %union.anon* %377 to i64*
  %378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %379 = getelementptr inbounds %struct.GPR, %struct.GPR* %378, i32 0, i32 1
  %380 = getelementptr inbounds %struct.Reg, %struct.Reg* %379, i32 0, i32 0
  %RAX.i1257 = bitcast %union.anon* %380 to i64*
  %381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %382 = getelementptr inbounds %struct.GPR, %struct.GPR* %381, i32 0, i32 15
  %383 = getelementptr inbounds %struct.Reg, %struct.Reg* %382, i32 0, i32 0
  %RBP.i1258 = bitcast %union.anon* %383 to i64*
  %384 = load i64, i64* %RBP.i1258
  %385 = sub i64 %384, 24
  %386 = load i64, i64* %PC.i1256
  %387 = add i64 %386, 4
  store i64 %387, i64* %PC.i1256
  %388 = inttoptr i64 %385 to i64*
  %389 = load i64, i64* %388
  store i64 %389, i64* %RAX.i1257, align 8
  store %struct.Memory* %loadMem_4358b2, %struct.Memory** %MEMORY
  %loadMem_4358b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %391 = getelementptr inbounds %struct.GPR, %struct.GPR* %390, i32 0, i32 33
  %392 = getelementptr inbounds %struct.Reg, %struct.Reg* %391, i32 0, i32 0
  %PC.i1253 = bitcast %union.anon* %392 to i64*
  %393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %394 = getelementptr inbounds %struct.GPR, %struct.GPR* %393, i32 0, i32 1
  %395 = getelementptr inbounds %struct.Reg, %struct.Reg* %394, i32 0, i32 0
  %RAX.i1254 = bitcast %union.anon* %395 to i64*
  %396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %397 = getelementptr inbounds %struct.GPR, %struct.GPR* %396, i32 0, i32 9
  %398 = getelementptr inbounds %struct.Reg, %struct.Reg* %397, i32 0, i32 0
  %RSI.i1255 = bitcast %union.anon* %398 to i64*
  %399 = load i64, i64* %RAX.i1254
  %400 = add i64 %399, 352
  %401 = load i64, i64* %PC.i1253
  %402 = add i64 %401, 6
  store i64 %402, i64* %PC.i1253
  %403 = inttoptr i64 %400 to i32*
  %404 = load i32, i32* %403
  %405 = zext i32 %404 to i64
  store i64 %405, i64* %RSI.i1255, align 8
  store %struct.Memory* %loadMem_4358b6, %struct.Memory** %MEMORY
  %loadMem_4358bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %407 = getelementptr inbounds %struct.GPR, %struct.GPR* %406, i32 0, i32 33
  %408 = getelementptr inbounds %struct.Reg, %struct.Reg* %407, i32 0, i32 0
  %PC.i1250 = bitcast %union.anon* %408 to i64*
  %409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %410 = getelementptr inbounds %struct.GPR, %struct.GPR* %409, i32 0, i32 1
  %411 = getelementptr inbounds %struct.Reg, %struct.Reg* %410, i32 0, i32 0
  %RAX.i1251 = bitcast %union.anon* %411 to i64*
  %412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %413 = getelementptr inbounds %struct.GPR, %struct.GPR* %412, i32 0, i32 15
  %414 = getelementptr inbounds %struct.Reg, %struct.Reg* %413, i32 0, i32 0
  %RBP.i1252 = bitcast %union.anon* %414 to i64*
  %415 = load i64, i64* %RBP.i1252
  %416 = sub i64 %415, 48
  %417 = load i64, i64* %PC.i1250
  %418 = add i64 %417, 4
  store i64 %418, i64* %PC.i1250
  %419 = inttoptr i64 %416 to i64*
  %420 = load i64, i64* %419
  store i64 %420, i64* %RAX.i1251, align 8
  store %struct.Memory* %loadMem_4358bc, %struct.Memory** %MEMORY
  %loadMem_4358c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %422 = getelementptr inbounds %struct.GPR, %struct.GPR* %421, i32 0, i32 33
  %423 = getelementptr inbounds %struct.Reg, %struct.Reg* %422, i32 0, i32 0
  %PC.i1247 = bitcast %union.anon* %423 to i64*
  %424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %425 = getelementptr inbounds %struct.GPR, %struct.GPR* %424, i32 0, i32 5
  %426 = getelementptr inbounds %struct.Reg, %struct.Reg* %425, i32 0, i32 0
  %RCX.i1248 = bitcast %union.anon* %426 to i64*
  %427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %428 = getelementptr inbounds %struct.GPR, %struct.GPR* %427, i32 0, i32 15
  %429 = getelementptr inbounds %struct.Reg, %struct.Reg* %428, i32 0, i32 0
  %RBP.i1249 = bitcast %union.anon* %429 to i64*
  %430 = load i64, i64* %RBP.i1249
  %431 = sub i64 %430, 12
  %432 = load i64, i64* %PC.i1247
  %433 = add i64 %432, 4
  store i64 %433, i64* %PC.i1247
  %434 = inttoptr i64 %431 to i32*
  %435 = load i32, i32* %434
  %436 = sext i32 %435 to i64
  store i64 %436, i64* %RCX.i1248, align 8
  store %struct.Memory* %loadMem_4358c0, %struct.Memory** %MEMORY
  %loadMem_4358c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %438 = getelementptr inbounds %struct.GPR, %struct.GPR* %437, i32 0, i32 33
  %439 = getelementptr inbounds %struct.Reg, %struct.Reg* %438, i32 0, i32 0
  %PC.i1244 = bitcast %union.anon* %439 to i64*
  %440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %441 = getelementptr inbounds %struct.GPR, %struct.GPR* %440, i32 0, i32 1
  %442 = getelementptr inbounds %struct.Reg, %struct.Reg* %441, i32 0, i32 0
  %RAX.i1245 = bitcast %union.anon* %442 to i64*
  %443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %444 = getelementptr inbounds %struct.GPR, %struct.GPR* %443, i32 0, i32 5
  %445 = getelementptr inbounds %struct.Reg, %struct.Reg* %444, i32 0, i32 0
  %RCX.i1246 = bitcast %union.anon* %445 to i64*
  %446 = load i64, i64* %RAX.i1245
  %447 = load i64, i64* %RCX.i1246
  %448 = mul i64 %447, 8
  %449 = add i64 %448, %446
  %450 = load i64, i64* %PC.i1244
  %451 = add i64 %450, 4
  store i64 %451, i64* %PC.i1244
  %452 = inttoptr i64 %449 to i64*
  %453 = load i64, i64* %452
  store i64 %453, i64* %RAX.i1245, align 8
  store %struct.Memory* %loadMem_4358c4, %struct.Memory** %MEMORY
  %loadMem_4358c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %455 = getelementptr inbounds %struct.GPR, %struct.GPR* %454, i32 0, i32 33
  %456 = getelementptr inbounds %struct.Reg, %struct.Reg* %455, i32 0, i32 0
  %PC.i1241 = bitcast %union.anon* %456 to i64*
  %457 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %458 = getelementptr inbounds %struct.GPR, %struct.GPR* %457, i32 0, i32 9
  %459 = getelementptr inbounds %struct.Reg, %struct.Reg* %458, i32 0, i32 0
  %ESI.i1242 = bitcast %union.anon* %459 to i32*
  %460 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %461 = getelementptr inbounds %struct.GPR, %struct.GPR* %460, i32 0, i32 1
  %462 = getelementptr inbounds %struct.Reg, %struct.Reg* %461, i32 0, i32 0
  %RAX.i1243 = bitcast %union.anon* %462 to i64*
  %463 = load i64, i64* %RAX.i1243
  %464 = add i64 %463, 8
  %465 = load i32, i32* %ESI.i1242
  %466 = zext i32 %465 to i64
  %467 = load i64, i64* %PC.i1241
  %468 = add i64 %467, 3
  store i64 %468, i64* %PC.i1241
  %469 = inttoptr i64 %464 to i32*
  store i32 %465, i32* %469
  store %struct.Memory* %loadMem_4358c8, %struct.Memory** %MEMORY
  %loadMem_4358cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %471 = getelementptr inbounds %struct.GPR, %struct.GPR* %470, i32 0, i32 33
  %472 = getelementptr inbounds %struct.Reg, %struct.Reg* %471, i32 0, i32 0
  %PC.i1238 = bitcast %union.anon* %472 to i64*
  %473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %474 = getelementptr inbounds %struct.GPR, %struct.GPR* %473, i32 0, i32 1
  %475 = getelementptr inbounds %struct.Reg, %struct.Reg* %474, i32 0, i32 0
  %RAX.i1239 = bitcast %union.anon* %475 to i64*
  %476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %477 = getelementptr inbounds %struct.GPR, %struct.GPR* %476, i32 0, i32 15
  %478 = getelementptr inbounds %struct.Reg, %struct.Reg* %477, i32 0, i32 0
  %RBP.i1240 = bitcast %union.anon* %478 to i64*
  %479 = load i64, i64* %RBP.i1240
  %480 = sub i64 %479, 48
  %481 = load i64, i64* %PC.i1238
  %482 = add i64 %481, 4
  store i64 %482, i64* %PC.i1238
  %483 = inttoptr i64 %480 to i64*
  %484 = load i64, i64* %483
  store i64 %484, i64* %RAX.i1239, align 8
  store %struct.Memory* %loadMem_4358cb, %struct.Memory** %MEMORY
  %loadMem_4358cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %486 = getelementptr inbounds %struct.GPR, %struct.GPR* %485, i32 0, i32 33
  %487 = getelementptr inbounds %struct.Reg, %struct.Reg* %486, i32 0, i32 0
  %PC.i1235 = bitcast %union.anon* %487 to i64*
  %488 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %489 = getelementptr inbounds %struct.GPR, %struct.GPR* %488, i32 0, i32 5
  %490 = getelementptr inbounds %struct.Reg, %struct.Reg* %489, i32 0, i32 0
  %RCX.i1236 = bitcast %union.anon* %490 to i64*
  %491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %492 = getelementptr inbounds %struct.GPR, %struct.GPR* %491, i32 0, i32 15
  %493 = getelementptr inbounds %struct.Reg, %struct.Reg* %492, i32 0, i32 0
  %RBP.i1237 = bitcast %union.anon* %493 to i64*
  %494 = load i64, i64* %RBP.i1237
  %495 = sub i64 %494, 12
  %496 = load i64, i64* %PC.i1235
  %497 = add i64 %496, 4
  store i64 %497, i64* %PC.i1235
  %498 = inttoptr i64 %495 to i32*
  %499 = load i32, i32* %498
  %500 = sext i32 %499 to i64
  store i64 %500, i64* %RCX.i1236, align 8
  store %struct.Memory* %loadMem_4358cf, %struct.Memory** %MEMORY
  %loadMem_4358d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %502 = getelementptr inbounds %struct.GPR, %struct.GPR* %501, i32 0, i32 33
  %503 = getelementptr inbounds %struct.Reg, %struct.Reg* %502, i32 0, i32 0
  %PC.i1232 = bitcast %union.anon* %503 to i64*
  %504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %505 = getelementptr inbounds %struct.GPR, %struct.GPR* %504, i32 0, i32 1
  %506 = getelementptr inbounds %struct.Reg, %struct.Reg* %505, i32 0, i32 0
  %RAX.i1233 = bitcast %union.anon* %506 to i64*
  %507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %508 = getelementptr inbounds %struct.GPR, %struct.GPR* %507, i32 0, i32 5
  %509 = getelementptr inbounds %struct.Reg, %struct.Reg* %508, i32 0, i32 0
  %RCX.i1234 = bitcast %union.anon* %509 to i64*
  %510 = load i64, i64* %RAX.i1233
  %511 = load i64, i64* %RCX.i1234
  %512 = mul i64 %511, 8
  %513 = add i64 %512, %510
  %514 = load i64, i64* %PC.i1232
  %515 = add i64 %514, 4
  store i64 %515, i64* %PC.i1232
  %516 = inttoptr i64 %513 to i64*
  %517 = load i64, i64* %516
  store i64 %517, i64* %RAX.i1233, align 8
  store %struct.Memory* %loadMem_4358d3, %struct.Memory** %MEMORY
  %loadMem_4358d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %518 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %519 = getelementptr inbounds %struct.GPR, %struct.GPR* %518, i32 0, i32 33
  %520 = getelementptr inbounds %struct.Reg, %struct.Reg* %519, i32 0, i32 0
  %PC.i1229 = bitcast %union.anon* %520 to i64*
  %521 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %522 = getelementptr inbounds %struct.GPR, %struct.GPR* %521, i32 0, i32 1
  %523 = getelementptr inbounds %struct.Reg, %struct.Reg* %522, i32 0, i32 0
  %RAX.i1230 = bitcast %union.anon* %523 to i64*
  %524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %525 = getelementptr inbounds %struct.GPR, %struct.GPR* %524, i32 0, i32 9
  %526 = getelementptr inbounds %struct.Reg, %struct.Reg* %525, i32 0, i32 0
  %RSI.i1231 = bitcast %union.anon* %526 to i64*
  %527 = load i64, i64* %RAX.i1230
  %528 = add i64 %527, 8
  %529 = load i64, i64* %PC.i1229
  %530 = add i64 %529, 3
  store i64 %530, i64* %PC.i1229
  %531 = inttoptr i64 %528 to i32*
  %532 = load i32, i32* %531
  %533 = zext i32 %532 to i64
  store i64 %533, i64* %RSI.i1231, align 8
  store %struct.Memory* %loadMem_4358d7, %struct.Memory** %MEMORY
  %loadMem_4358da = load %struct.Memory*, %struct.Memory** %MEMORY
  %534 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %535 = getelementptr inbounds %struct.GPR, %struct.GPR* %534, i32 0, i32 33
  %536 = getelementptr inbounds %struct.Reg, %struct.Reg* %535, i32 0, i32 0
  %PC.i1226 = bitcast %union.anon* %536 to i64*
  %537 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %538 = getelementptr inbounds %struct.GPR, %struct.GPR* %537, i32 0, i32 1
  %539 = getelementptr inbounds %struct.Reg, %struct.Reg* %538, i32 0, i32 0
  %RAX.i1227 = bitcast %union.anon* %539 to i64*
  %540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %541 = getelementptr inbounds %struct.GPR, %struct.GPR* %540, i32 0, i32 15
  %542 = getelementptr inbounds %struct.Reg, %struct.Reg* %541, i32 0, i32 0
  %RBP.i1228 = bitcast %union.anon* %542 to i64*
  %543 = load i64, i64* %RBP.i1228
  %544 = sub i64 %543, 24
  %545 = load i64, i64* %PC.i1226
  %546 = add i64 %545, 4
  store i64 %546, i64* %PC.i1226
  %547 = inttoptr i64 %544 to i64*
  %548 = load i64, i64* %547
  store i64 %548, i64* %RAX.i1227, align 8
  store %struct.Memory* %loadMem_4358da, %struct.Memory** %MEMORY
  %loadMem_4358de = load %struct.Memory*, %struct.Memory** %MEMORY
  %549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %550 = getelementptr inbounds %struct.GPR, %struct.GPR* %549, i32 0, i32 33
  %551 = getelementptr inbounds %struct.Reg, %struct.Reg* %550, i32 0, i32 0
  %PC.i1223 = bitcast %union.anon* %551 to i64*
  %552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %553 = getelementptr inbounds %struct.GPR, %struct.GPR* %552, i32 0, i32 1
  %554 = getelementptr inbounds %struct.Reg, %struct.Reg* %553, i32 0, i32 0
  %RAX.i1224 = bitcast %union.anon* %554 to i64*
  %555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %556 = getelementptr inbounds %struct.GPR, %struct.GPR* %555, i32 0, i32 9
  %557 = getelementptr inbounds %struct.Reg, %struct.Reg* %556, i32 0, i32 0
  %RSI.i1225 = bitcast %union.anon* %557 to i64*
  %558 = load i64, i64* %RSI.i1225
  %559 = load i64, i64* %RAX.i1224
  %560 = add i64 %559, 344
  %561 = load i64, i64* %PC.i1223
  %562 = add i64 %561, 6
  store i64 %562, i64* %PC.i1223
  %563 = trunc i64 %558 to i32
  %564 = inttoptr i64 %560 to i32*
  %565 = load i32, i32* %564
  %566 = add i32 %565, %563
  %567 = zext i32 %566 to i64
  store i64 %567, i64* %RSI.i1225, align 8
  %568 = icmp ult i32 %566, %563
  %569 = icmp ult i32 %566, %565
  %570 = or i1 %568, %569
  %571 = zext i1 %570 to i8
  %572 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %571, i8* %572, align 1
  %573 = and i32 %566, 255
  %574 = call i32 @llvm.ctpop.i32(i32 %573)
  %575 = trunc i32 %574 to i8
  %576 = and i8 %575, 1
  %577 = xor i8 %576, 1
  %578 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %577, i8* %578, align 1
  %579 = xor i32 %565, %563
  %580 = xor i32 %579, %566
  %581 = lshr i32 %580, 4
  %582 = trunc i32 %581 to i8
  %583 = and i8 %582, 1
  %584 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %583, i8* %584, align 1
  %585 = icmp eq i32 %566, 0
  %586 = zext i1 %585 to i8
  %587 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %586, i8* %587, align 1
  %588 = lshr i32 %566, 31
  %589 = trunc i32 %588 to i8
  %590 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %589, i8* %590, align 1
  %591 = lshr i32 %563, 31
  %592 = lshr i32 %565, 31
  %593 = xor i32 %588, %591
  %594 = xor i32 %588, %592
  %595 = add i32 %593, %594
  %596 = icmp eq i32 %595, 2
  %597 = zext i1 %596 to i8
  %598 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %597, i8* %598, align 1
  store %struct.Memory* %loadMem_4358de, %struct.Memory** %MEMORY
  %loadMem_4358e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %599 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %600 = getelementptr inbounds %struct.GPR, %struct.GPR* %599, i32 0, i32 33
  %601 = getelementptr inbounds %struct.Reg, %struct.Reg* %600, i32 0, i32 0
  %PC.i1220 = bitcast %union.anon* %601 to i64*
  %602 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %603 = getelementptr inbounds %struct.GPR, %struct.GPR* %602, i32 0, i32 1
  %604 = getelementptr inbounds %struct.Reg, %struct.Reg* %603, i32 0, i32 0
  %RAX.i1221 = bitcast %union.anon* %604 to i64*
  %605 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %606 = getelementptr inbounds %struct.GPR, %struct.GPR* %605, i32 0, i32 15
  %607 = getelementptr inbounds %struct.Reg, %struct.Reg* %606, i32 0, i32 0
  %RBP.i1222 = bitcast %union.anon* %607 to i64*
  %608 = load i64, i64* %RBP.i1222
  %609 = sub i64 %608, 48
  %610 = load i64, i64* %PC.i1220
  %611 = add i64 %610, 4
  store i64 %611, i64* %PC.i1220
  %612 = inttoptr i64 %609 to i64*
  %613 = load i64, i64* %612
  store i64 %613, i64* %RAX.i1221, align 8
  store %struct.Memory* %loadMem_4358e4, %struct.Memory** %MEMORY
  %loadMem_4358e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %614 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %615 = getelementptr inbounds %struct.GPR, %struct.GPR* %614, i32 0, i32 33
  %616 = getelementptr inbounds %struct.Reg, %struct.Reg* %615, i32 0, i32 0
  %PC.i1217 = bitcast %union.anon* %616 to i64*
  %617 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %618 = getelementptr inbounds %struct.GPR, %struct.GPR* %617, i32 0, i32 5
  %619 = getelementptr inbounds %struct.Reg, %struct.Reg* %618, i32 0, i32 0
  %RCX.i1218 = bitcast %union.anon* %619 to i64*
  %620 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %621 = getelementptr inbounds %struct.GPR, %struct.GPR* %620, i32 0, i32 15
  %622 = getelementptr inbounds %struct.Reg, %struct.Reg* %621, i32 0, i32 0
  %RBP.i1219 = bitcast %union.anon* %622 to i64*
  %623 = load i64, i64* %RBP.i1219
  %624 = sub i64 %623, 12
  %625 = load i64, i64* %PC.i1217
  %626 = add i64 %625, 4
  store i64 %626, i64* %PC.i1217
  %627 = inttoptr i64 %624 to i32*
  %628 = load i32, i32* %627
  %629 = sext i32 %628 to i64
  store i64 %629, i64* %RCX.i1218, align 8
  store %struct.Memory* %loadMem_4358e8, %struct.Memory** %MEMORY
  %loadMem_4358ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %631 = getelementptr inbounds %struct.GPR, %struct.GPR* %630, i32 0, i32 33
  %632 = getelementptr inbounds %struct.Reg, %struct.Reg* %631, i32 0, i32 0
  %PC.i1214 = bitcast %union.anon* %632 to i64*
  %633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %634 = getelementptr inbounds %struct.GPR, %struct.GPR* %633, i32 0, i32 1
  %635 = getelementptr inbounds %struct.Reg, %struct.Reg* %634, i32 0, i32 0
  %RAX.i1215 = bitcast %union.anon* %635 to i64*
  %636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %637 = getelementptr inbounds %struct.GPR, %struct.GPR* %636, i32 0, i32 5
  %638 = getelementptr inbounds %struct.Reg, %struct.Reg* %637, i32 0, i32 0
  %RCX.i1216 = bitcast %union.anon* %638 to i64*
  %639 = load i64, i64* %RAX.i1215
  %640 = load i64, i64* %RCX.i1216
  %641 = mul i64 %640, 8
  %642 = add i64 %641, %639
  %643 = load i64, i64* %PC.i1214
  %644 = add i64 %643, 4
  store i64 %644, i64* %PC.i1214
  %645 = inttoptr i64 %642 to i64*
  %646 = load i64, i64* %645
  store i64 %646, i64* %RAX.i1215, align 8
  store %struct.Memory* %loadMem_4358ec, %struct.Memory** %MEMORY
  %loadMem_4358f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %648 = getelementptr inbounds %struct.GPR, %struct.GPR* %647, i32 0, i32 33
  %649 = getelementptr inbounds %struct.Reg, %struct.Reg* %648, i32 0, i32 0
  %PC.i1211 = bitcast %union.anon* %649 to i64*
  %650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %651 = getelementptr inbounds %struct.GPR, %struct.GPR* %650, i32 0, i32 9
  %652 = getelementptr inbounds %struct.Reg, %struct.Reg* %651, i32 0, i32 0
  %ESI.i1212 = bitcast %union.anon* %652 to i32*
  %653 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %654 = getelementptr inbounds %struct.GPR, %struct.GPR* %653, i32 0, i32 1
  %655 = getelementptr inbounds %struct.Reg, %struct.Reg* %654, i32 0, i32 0
  %RAX.i1213 = bitcast %union.anon* %655 to i64*
  %656 = load i64, i64* %RAX.i1213
  %657 = add i64 %656, 4
  %658 = load i32, i32* %ESI.i1212
  %659 = zext i32 %658 to i64
  %660 = load i64, i64* %PC.i1211
  %661 = add i64 %660, 3
  store i64 %661, i64* %PC.i1211
  %662 = inttoptr i64 %657 to i32*
  store i32 %658, i32* %662
  store %struct.Memory* %loadMem_4358f0, %struct.Memory** %MEMORY
  %loadMem_4358f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %664 = getelementptr inbounds %struct.GPR, %struct.GPR* %663, i32 0, i32 33
  %665 = getelementptr inbounds %struct.Reg, %struct.Reg* %664, i32 0, i32 0
  %PC.i1208 = bitcast %union.anon* %665 to i64*
  %666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %667 = getelementptr inbounds %struct.GPR, %struct.GPR* %666, i32 0, i32 1
  %668 = getelementptr inbounds %struct.Reg, %struct.Reg* %667, i32 0, i32 0
  %RAX.i1209 = bitcast %union.anon* %668 to i64*
  %669 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %670 = getelementptr inbounds %struct.GPR, %struct.GPR* %669, i32 0, i32 15
  %671 = getelementptr inbounds %struct.Reg, %struct.Reg* %670, i32 0, i32 0
  %RBP.i1210 = bitcast %union.anon* %671 to i64*
  %672 = load i64, i64* %RBP.i1210
  %673 = sub i64 %672, 48
  %674 = load i64, i64* %PC.i1208
  %675 = add i64 %674, 4
  store i64 %675, i64* %PC.i1208
  %676 = inttoptr i64 %673 to i64*
  %677 = load i64, i64* %676
  store i64 %677, i64* %RAX.i1209, align 8
  store %struct.Memory* %loadMem_4358f3, %struct.Memory** %MEMORY
  %loadMem_4358f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %679 = getelementptr inbounds %struct.GPR, %struct.GPR* %678, i32 0, i32 33
  %680 = getelementptr inbounds %struct.Reg, %struct.Reg* %679, i32 0, i32 0
  %PC.i1205 = bitcast %union.anon* %680 to i64*
  %681 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %682 = getelementptr inbounds %struct.GPR, %struct.GPR* %681, i32 0, i32 5
  %683 = getelementptr inbounds %struct.Reg, %struct.Reg* %682, i32 0, i32 0
  %RCX.i1206 = bitcast %union.anon* %683 to i64*
  %684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %685 = getelementptr inbounds %struct.GPR, %struct.GPR* %684, i32 0, i32 15
  %686 = getelementptr inbounds %struct.Reg, %struct.Reg* %685, i32 0, i32 0
  %RBP.i1207 = bitcast %union.anon* %686 to i64*
  %687 = load i64, i64* %RBP.i1207
  %688 = sub i64 %687, 12
  %689 = load i64, i64* %PC.i1205
  %690 = add i64 %689, 4
  store i64 %690, i64* %PC.i1205
  %691 = inttoptr i64 %688 to i32*
  %692 = load i32, i32* %691
  %693 = sext i32 %692 to i64
  store i64 %693, i64* %RCX.i1206, align 8
  store %struct.Memory* %loadMem_4358f7, %struct.Memory** %MEMORY
  %loadMem_4358fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %695 = getelementptr inbounds %struct.GPR, %struct.GPR* %694, i32 0, i32 33
  %696 = getelementptr inbounds %struct.Reg, %struct.Reg* %695, i32 0, i32 0
  %PC.i1202 = bitcast %union.anon* %696 to i64*
  %697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %698 = getelementptr inbounds %struct.GPR, %struct.GPR* %697, i32 0, i32 1
  %699 = getelementptr inbounds %struct.Reg, %struct.Reg* %698, i32 0, i32 0
  %RAX.i1203 = bitcast %union.anon* %699 to i64*
  %700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %701 = getelementptr inbounds %struct.GPR, %struct.GPR* %700, i32 0, i32 5
  %702 = getelementptr inbounds %struct.Reg, %struct.Reg* %701, i32 0, i32 0
  %RCX.i1204 = bitcast %union.anon* %702 to i64*
  %703 = load i64, i64* %RAX.i1203
  %704 = load i64, i64* %RCX.i1204
  %705 = mul i64 %704, 8
  %706 = add i64 %705, %703
  %707 = load i64, i64* %PC.i1202
  %708 = add i64 %707, 4
  store i64 %708, i64* %PC.i1202
  %709 = inttoptr i64 %706 to i64*
  %710 = load i64, i64* %709
  store i64 %710, i64* %RAX.i1203, align 8
  store %struct.Memory* %loadMem_4358fb, %struct.Memory** %MEMORY
  %loadMem_4358ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %712 = getelementptr inbounds %struct.GPR, %struct.GPR* %711, i32 0, i32 33
  %713 = getelementptr inbounds %struct.Reg, %struct.Reg* %712, i32 0, i32 0
  %PC.i1200 = bitcast %union.anon* %713 to i64*
  %714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %715 = getelementptr inbounds %struct.GPR, %struct.GPR* %714, i32 0, i32 1
  %716 = getelementptr inbounds %struct.Reg, %struct.Reg* %715, i32 0, i32 0
  %RAX.i1201 = bitcast %union.anon* %716 to i64*
  %717 = load i64, i64* %RAX.i1201
  %718 = add i64 %717, 16
  %719 = load i64, i64* %PC.i1200
  %720 = add i64 %719, 7
  store i64 %720, i64* %PC.i1200
  %721 = inttoptr i64 %718 to i32*
  store i32 -987654321, i32* %721
  store %struct.Memory* %loadMem_4358ff, %struct.Memory** %MEMORY
  %loadMem_435906 = load %struct.Memory*, %struct.Memory** %MEMORY
  %722 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %723 = getelementptr inbounds %struct.GPR, %struct.GPR* %722, i32 0, i32 33
  %724 = getelementptr inbounds %struct.Reg, %struct.Reg* %723, i32 0, i32 0
  %PC.i1197 = bitcast %union.anon* %724 to i64*
  %725 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %726 = getelementptr inbounds %struct.GPR, %struct.GPR* %725, i32 0, i32 1
  %727 = getelementptr inbounds %struct.Reg, %struct.Reg* %726, i32 0, i32 0
  %RAX.i1198 = bitcast %union.anon* %727 to i64*
  %728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %729 = getelementptr inbounds %struct.GPR, %struct.GPR* %728, i32 0, i32 15
  %730 = getelementptr inbounds %struct.Reg, %struct.Reg* %729, i32 0, i32 0
  %RBP.i1199 = bitcast %union.anon* %730 to i64*
  %731 = load i64, i64* %RBP.i1199
  %732 = sub i64 %731, 48
  %733 = load i64, i64* %PC.i1197
  %734 = add i64 %733, 4
  store i64 %734, i64* %PC.i1197
  %735 = inttoptr i64 %732 to i64*
  %736 = load i64, i64* %735
  store i64 %736, i64* %RAX.i1198, align 8
  store %struct.Memory* %loadMem_435906, %struct.Memory** %MEMORY
  %loadMem_43590a = load %struct.Memory*, %struct.Memory** %MEMORY
  %737 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %738 = getelementptr inbounds %struct.GPR, %struct.GPR* %737, i32 0, i32 33
  %739 = getelementptr inbounds %struct.Reg, %struct.Reg* %738, i32 0, i32 0
  %PC.i1194 = bitcast %union.anon* %739 to i64*
  %740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %741 = getelementptr inbounds %struct.GPR, %struct.GPR* %740, i32 0, i32 5
  %742 = getelementptr inbounds %struct.Reg, %struct.Reg* %741, i32 0, i32 0
  %RCX.i1195 = bitcast %union.anon* %742 to i64*
  %743 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %744 = getelementptr inbounds %struct.GPR, %struct.GPR* %743, i32 0, i32 15
  %745 = getelementptr inbounds %struct.Reg, %struct.Reg* %744, i32 0, i32 0
  %RBP.i1196 = bitcast %union.anon* %745 to i64*
  %746 = load i64, i64* %RBP.i1196
  %747 = sub i64 %746, 12
  %748 = load i64, i64* %PC.i1194
  %749 = add i64 %748, 4
  store i64 %749, i64* %PC.i1194
  %750 = inttoptr i64 %747 to i32*
  %751 = load i32, i32* %750
  %752 = sext i32 %751 to i64
  store i64 %752, i64* %RCX.i1195, align 8
  store %struct.Memory* %loadMem_43590a, %struct.Memory** %MEMORY
  %loadMem_43590e = load %struct.Memory*, %struct.Memory** %MEMORY
  %753 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %754 = getelementptr inbounds %struct.GPR, %struct.GPR* %753, i32 0, i32 33
  %755 = getelementptr inbounds %struct.Reg, %struct.Reg* %754, i32 0, i32 0
  %PC.i1191 = bitcast %union.anon* %755 to i64*
  %756 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %757 = getelementptr inbounds %struct.GPR, %struct.GPR* %756, i32 0, i32 1
  %758 = getelementptr inbounds %struct.Reg, %struct.Reg* %757, i32 0, i32 0
  %RAX.i1192 = bitcast %union.anon* %758 to i64*
  %759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %760 = getelementptr inbounds %struct.GPR, %struct.GPR* %759, i32 0, i32 5
  %761 = getelementptr inbounds %struct.Reg, %struct.Reg* %760, i32 0, i32 0
  %RCX.i1193 = bitcast %union.anon* %761 to i64*
  %762 = load i64, i64* %RAX.i1192
  %763 = load i64, i64* %RCX.i1193
  %764 = mul i64 %763, 8
  %765 = add i64 %764, %762
  %766 = load i64, i64* %PC.i1191
  %767 = add i64 %766, 4
  store i64 %767, i64* %PC.i1191
  %768 = inttoptr i64 %765 to i64*
  %769 = load i64, i64* %768
  store i64 %769, i64* %RAX.i1192, align 8
  store %struct.Memory* %loadMem_43590e, %struct.Memory** %MEMORY
  %loadMem_435912 = load %struct.Memory*, %struct.Memory** %MEMORY
  %770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %771 = getelementptr inbounds %struct.GPR, %struct.GPR* %770, i32 0, i32 33
  %772 = getelementptr inbounds %struct.Reg, %struct.Reg* %771, i32 0, i32 0
  %PC.i1189 = bitcast %union.anon* %772 to i64*
  %773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %774 = getelementptr inbounds %struct.GPR, %struct.GPR* %773, i32 0, i32 1
  %775 = getelementptr inbounds %struct.Reg, %struct.Reg* %774, i32 0, i32 0
  %RAX.i1190 = bitcast %union.anon* %775 to i64*
  %776 = load i64, i64* %RAX.i1190
  %777 = load i64, i64* %PC.i1189
  %778 = add i64 %777, 6
  store i64 %778, i64* %PC.i1189
  %779 = inttoptr i64 %776 to i32*
  store i32 -987654321, i32* %779
  store %struct.Memory* %loadMem_435912, %struct.Memory** %MEMORY
  %loadMem_435918 = load %struct.Memory*, %struct.Memory** %MEMORY
  %780 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %781 = getelementptr inbounds %struct.GPR, %struct.GPR* %780, i32 0, i32 33
  %782 = getelementptr inbounds %struct.Reg, %struct.Reg* %781, i32 0, i32 0
  %PC.i1186 = bitcast %union.anon* %782 to i64*
  %783 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %784 = getelementptr inbounds %struct.GPR, %struct.GPR* %783, i32 0, i32 1
  %785 = getelementptr inbounds %struct.Reg, %struct.Reg* %784, i32 0, i32 0
  %RAX.i1187 = bitcast %union.anon* %785 to i64*
  %786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %787 = getelementptr inbounds %struct.GPR, %struct.GPR* %786, i32 0, i32 15
  %788 = getelementptr inbounds %struct.Reg, %struct.Reg* %787, i32 0, i32 0
  %RBP.i1188 = bitcast %union.anon* %788 to i64*
  %789 = load i64, i64* %RBP.i1188
  %790 = sub i64 %789, 48
  %791 = load i64, i64* %PC.i1186
  %792 = add i64 %791, 4
  store i64 %792, i64* %PC.i1186
  %793 = inttoptr i64 %790 to i64*
  %794 = load i64, i64* %793
  store i64 %794, i64* %RAX.i1187, align 8
  store %struct.Memory* %loadMem_435918, %struct.Memory** %MEMORY
  %loadMem_43591c = load %struct.Memory*, %struct.Memory** %MEMORY
  %795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %796 = getelementptr inbounds %struct.GPR, %struct.GPR* %795, i32 0, i32 33
  %797 = getelementptr inbounds %struct.Reg, %struct.Reg* %796, i32 0, i32 0
  %PC.i1183 = bitcast %union.anon* %797 to i64*
  %798 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %799 = getelementptr inbounds %struct.GPR, %struct.GPR* %798, i32 0, i32 5
  %800 = getelementptr inbounds %struct.Reg, %struct.Reg* %799, i32 0, i32 0
  %RCX.i1184 = bitcast %union.anon* %800 to i64*
  %801 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %802 = getelementptr inbounds %struct.GPR, %struct.GPR* %801, i32 0, i32 15
  %803 = getelementptr inbounds %struct.Reg, %struct.Reg* %802, i32 0, i32 0
  %RBP.i1185 = bitcast %union.anon* %803 to i64*
  %804 = load i64, i64* %RBP.i1185
  %805 = sub i64 %804, 12
  %806 = load i64, i64* %PC.i1183
  %807 = add i64 %806, 4
  store i64 %807, i64* %PC.i1183
  %808 = inttoptr i64 %805 to i32*
  %809 = load i32, i32* %808
  %810 = sext i32 %809 to i64
  store i64 %810, i64* %RCX.i1184, align 8
  store %struct.Memory* %loadMem_43591c, %struct.Memory** %MEMORY
  %loadMem_435920 = load %struct.Memory*, %struct.Memory** %MEMORY
  %811 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %812 = getelementptr inbounds %struct.GPR, %struct.GPR* %811, i32 0, i32 33
  %813 = getelementptr inbounds %struct.Reg, %struct.Reg* %812, i32 0, i32 0
  %PC.i1180 = bitcast %union.anon* %813 to i64*
  %814 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %815 = getelementptr inbounds %struct.GPR, %struct.GPR* %814, i32 0, i32 1
  %816 = getelementptr inbounds %struct.Reg, %struct.Reg* %815, i32 0, i32 0
  %RAX.i1181 = bitcast %union.anon* %816 to i64*
  %817 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %818 = getelementptr inbounds %struct.GPR, %struct.GPR* %817, i32 0, i32 5
  %819 = getelementptr inbounds %struct.Reg, %struct.Reg* %818, i32 0, i32 0
  %RCX.i1182 = bitcast %union.anon* %819 to i64*
  %820 = load i64, i64* %RAX.i1181
  %821 = load i64, i64* %RCX.i1182
  %822 = mul i64 %821, 8
  %823 = add i64 %822, %820
  %824 = load i64, i64* %PC.i1180
  %825 = add i64 %824, 4
  store i64 %825, i64* %PC.i1180
  %826 = inttoptr i64 %823 to i64*
  %827 = load i64, i64* %826
  store i64 %827, i64* %RAX.i1181, align 8
  store %struct.Memory* %loadMem_435920, %struct.Memory** %MEMORY
  %loadMem_435924 = load %struct.Memory*, %struct.Memory** %MEMORY
  %828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %829 = getelementptr inbounds %struct.GPR, %struct.GPR* %828, i32 0, i32 33
  %830 = getelementptr inbounds %struct.Reg, %struct.Reg* %829, i32 0, i32 0
  %PC.i1178 = bitcast %union.anon* %830 to i64*
  %831 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %832 = getelementptr inbounds %struct.GPR, %struct.GPR* %831, i32 0, i32 1
  %833 = getelementptr inbounds %struct.Reg, %struct.Reg* %832, i32 0, i32 0
  %RAX.i1179 = bitcast %union.anon* %833 to i64*
  %834 = load i64, i64* %RAX.i1179
  %835 = add i64 %834, 12
  %836 = load i64, i64* %PC.i1178
  %837 = add i64 %836, 7
  store i64 %837, i64* %PC.i1178
  %838 = inttoptr i64 %835 to i32*
  store i32 -987654321, i32* %838
  store %struct.Memory* %loadMem_435924, %struct.Memory** %MEMORY
  %loadMem_43592b = load %struct.Memory*, %struct.Memory** %MEMORY
  %839 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %840 = getelementptr inbounds %struct.GPR, %struct.GPR* %839, i32 0, i32 33
  %841 = getelementptr inbounds %struct.Reg, %struct.Reg* %840, i32 0, i32 0
  %PC.i1175 = bitcast %union.anon* %841 to i64*
  %842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %843 = getelementptr inbounds %struct.GPR, %struct.GPR* %842, i32 0, i32 1
  %844 = getelementptr inbounds %struct.Reg, %struct.Reg* %843, i32 0, i32 0
  %RAX.i1176 = bitcast %union.anon* %844 to i64*
  %845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %846 = getelementptr inbounds %struct.GPR, %struct.GPR* %845, i32 0, i32 15
  %847 = getelementptr inbounds %struct.Reg, %struct.Reg* %846, i32 0, i32 0
  %RBP.i1177 = bitcast %union.anon* %847 to i64*
  %848 = load i64, i64* %RBP.i1177
  %849 = sub i64 %848, 24
  %850 = load i64, i64* %PC.i1175
  %851 = add i64 %850, 4
  store i64 %851, i64* %PC.i1175
  %852 = inttoptr i64 %849 to i64*
  %853 = load i64, i64* %852
  store i64 %853, i64* %RAX.i1176, align 8
  store %struct.Memory* %loadMem_43592b, %struct.Memory** %MEMORY
  %loadMem_43592f = load %struct.Memory*, %struct.Memory** %MEMORY
  %854 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %855 = getelementptr inbounds %struct.GPR, %struct.GPR* %854, i32 0, i32 33
  %856 = getelementptr inbounds %struct.Reg, %struct.Reg* %855, i32 0, i32 0
  %PC.i1172 = bitcast %union.anon* %856 to i64*
  %857 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %858 = getelementptr inbounds %struct.GPR, %struct.GPR* %857, i32 0, i32 1
  %859 = getelementptr inbounds %struct.Reg, %struct.Reg* %858, i32 0, i32 0
  %RAX.i1173 = bitcast %union.anon* %859 to i64*
  %860 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %861 = getelementptr inbounds %struct.GPR, %struct.GPR* %860, i32 0, i32 9
  %862 = getelementptr inbounds %struct.Reg, %struct.Reg* %861, i32 0, i32 0
  %RSI.i1174 = bitcast %union.anon* %862 to i64*
  %863 = load i64, i64* %RAX.i1173
  %864 = add i64 %863, 136
  %865 = load i64, i64* %PC.i1172
  %866 = add i64 %865, 6
  store i64 %866, i64* %PC.i1172
  %867 = inttoptr i64 %864 to i32*
  %868 = load i32, i32* %867
  %869 = zext i32 %868 to i64
  store i64 %869, i64* %RSI.i1174, align 8
  store %struct.Memory* %loadMem_43592f, %struct.Memory** %MEMORY
  %loadMem_435935 = load %struct.Memory*, %struct.Memory** %MEMORY
  %870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %871 = getelementptr inbounds %struct.GPR, %struct.GPR* %870, i32 0, i32 33
  %872 = getelementptr inbounds %struct.Reg, %struct.Reg* %871, i32 0, i32 0
  %PC.i1169 = bitcast %union.anon* %872 to i64*
  %873 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %874 = getelementptr inbounds %struct.GPR, %struct.GPR* %873, i32 0, i32 9
  %875 = getelementptr inbounds %struct.Reg, %struct.Reg* %874, i32 0, i32 0
  %ESI.i1170 = bitcast %union.anon* %875 to i32*
  %876 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %877 = getelementptr inbounds %struct.GPR, %struct.GPR* %876, i32 0, i32 15
  %878 = getelementptr inbounds %struct.Reg, %struct.Reg* %877, i32 0, i32 0
  %RBP.i1171 = bitcast %union.anon* %878 to i64*
  %879 = load i64, i64* %RBP.i1171
  %880 = sub i64 %879, 80
  %881 = load i32, i32* %ESI.i1170
  %882 = zext i32 %881 to i64
  %883 = load i64, i64* %PC.i1169
  %884 = add i64 %883, 3
  store i64 %884, i64* %PC.i1169
  %885 = inttoptr i64 %880 to i32*
  store i32 %881, i32* %885
  store %struct.Memory* %loadMem_435935, %struct.Memory** %MEMORY
  br label %block_.L_435938

block_.L_435938:                                  ; preds = %block_435942, %entry
  %loadMem_435938 = load %struct.Memory*, %struct.Memory** %MEMORY
  %886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %887 = getelementptr inbounds %struct.GPR, %struct.GPR* %886, i32 0, i32 33
  %888 = getelementptr inbounds %struct.Reg, %struct.Reg* %887, i32 0, i32 0
  %PC.i1167 = bitcast %union.anon* %888 to i64*
  %889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %890 = getelementptr inbounds %struct.GPR, %struct.GPR* %889, i32 0, i32 15
  %891 = getelementptr inbounds %struct.Reg, %struct.Reg* %890, i32 0, i32 0
  %RBP.i1168 = bitcast %union.anon* %891 to i64*
  %892 = load i64, i64* %RBP.i1168
  %893 = sub i64 %892, 80
  %894 = load i64, i64* %PC.i1167
  %895 = add i64 %894, 4
  store i64 %895, i64* %PC.i1167
  %896 = inttoptr i64 %893 to i32*
  %897 = load i32, i32* %896
  %898 = sub i32 %897, 1
  %899 = icmp ult i32 %897, 1
  %900 = zext i1 %899 to i8
  %901 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %900, i8* %901, align 1
  %902 = and i32 %898, 255
  %903 = call i32 @llvm.ctpop.i32(i32 %902)
  %904 = trunc i32 %903 to i8
  %905 = and i8 %904, 1
  %906 = xor i8 %905, 1
  %907 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %906, i8* %907, align 1
  %908 = xor i32 %897, 1
  %909 = xor i32 %908, %898
  %910 = lshr i32 %909, 4
  %911 = trunc i32 %910 to i8
  %912 = and i8 %911, 1
  %913 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %912, i8* %913, align 1
  %914 = icmp eq i32 %898, 0
  %915 = zext i1 %914 to i8
  %916 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %915, i8* %916, align 1
  %917 = lshr i32 %898, 31
  %918 = trunc i32 %917 to i8
  %919 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %918, i8* %919, align 1
  %920 = lshr i32 %897, 31
  %921 = xor i32 %917, %920
  %922 = add i32 %921, %920
  %923 = icmp eq i32 %922, 2
  %924 = zext i1 %923 to i8
  %925 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %924, i8* %925, align 1
  store %struct.Memory* %loadMem_435938, %struct.Memory** %MEMORY
  %loadMem_43593c = load %struct.Memory*, %struct.Memory** %MEMORY
  %926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %927 = getelementptr inbounds %struct.GPR, %struct.GPR* %926, i32 0, i32 33
  %928 = getelementptr inbounds %struct.Reg, %struct.Reg* %927, i32 0, i32 0
  %PC.i1166 = bitcast %union.anon* %928 to i64*
  %929 = load i64, i64* %PC.i1166
  %930 = add i64 %929, 177
  %931 = load i64, i64* %PC.i1166
  %932 = add i64 %931, 6
  %933 = load i64, i64* %PC.i1166
  %934 = add i64 %933, 6
  store i64 %934, i64* %PC.i1166
  %935 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %936 = load i8, i8* %935, align 1
  %937 = icmp ne i8 %936, 0
  %938 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %939 = load i8, i8* %938, align 1
  %940 = icmp ne i8 %939, 0
  %941 = xor i1 %937, %940
  %942 = zext i1 %941 to i8
  store i8 %942, i8* %BRANCH_TAKEN, align 1
  %943 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %944 = select i1 %941, i64 %930, i64 %932
  store i64 %944, i64* %943, align 8
  store %struct.Memory* %loadMem_43593c, %struct.Memory** %MEMORY
  %loadBr_43593c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43593c = icmp eq i8 %loadBr_43593c, 1
  br i1 %cmpBr_43593c, label %block_.L_4359ed, label %block_435942

block_435942:                                     ; preds = %block_.L_435938
  %loadMem_435942 = load %struct.Memory*, %struct.Memory** %MEMORY
  %945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %946 = getelementptr inbounds %struct.GPR, %struct.GPR* %945, i32 0, i32 33
  %947 = getelementptr inbounds %struct.Reg, %struct.Reg* %946, i32 0, i32 0
  %PC.i1163 = bitcast %union.anon* %947 to i64*
  %948 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %949 = getelementptr inbounds %struct.GPR, %struct.GPR* %948, i32 0, i32 1
  %950 = getelementptr inbounds %struct.Reg, %struct.Reg* %949, i32 0, i32 0
  %RAX.i1164 = bitcast %union.anon* %950 to i64*
  %951 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %952 = getelementptr inbounds %struct.GPR, %struct.GPR* %951, i32 0, i32 15
  %953 = getelementptr inbounds %struct.Reg, %struct.Reg* %952, i32 0, i32 0
  %RBP.i1165 = bitcast %union.anon* %953 to i64*
  %954 = load i64, i64* %RBP.i1165
  %955 = sub i64 %954, 48
  %956 = load i64, i64* %PC.i1163
  %957 = add i64 %956, 4
  store i64 %957, i64* %PC.i1163
  %958 = inttoptr i64 %955 to i64*
  %959 = load i64, i64* %958
  store i64 %959, i64* %RAX.i1164, align 8
  store %struct.Memory* %loadMem_435942, %struct.Memory** %MEMORY
  %loadMem_435946 = load %struct.Memory*, %struct.Memory** %MEMORY
  %960 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %961 = getelementptr inbounds %struct.GPR, %struct.GPR* %960, i32 0, i32 33
  %962 = getelementptr inbounds %struct.Reg, %struct.Reg* %961, i32 0, i32 0
  %PC.i1160 = bitcast %union.anon* %962 to i64*
  %963 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %964 = getelementptr inbounds %struct.GPR, %struct.GPR* %963, i32 0, i32 5
  %965 = getelementptr inbounds %struct.Reg, %struct.Reg* %964, i32 0, i32 0
  %RCX.i1161 = bitcast %union.anon* %965 to i64*
  %966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %967 = getelementptr inbounds %struct.GPR, %struct.GPR* %966, i32 0, i32 15
  %968 = getelementptr inbounds %struct.Reg, %struct.Reg* %967, i32 0, i32 0
  %RBP.i1162 = bitcast %union.anon* %968 to i64*
  %969 = load i64, i64* %RBP.i1162
  %970 = sub i64 %969, 12
  %971 = load i64, i64* %PC.i1160
  %972 = add i64 %971, 4
  store i64 %972, i64* %PC.i1160
  %973 = inttoptr i64 %970 to i32*
  %974 = load i32, i32* %973
  %975 = sext i32 %974 to i64
  store i64 %975, i64* %RCX.i1161, align 8
  store %struct.Memory* %loadMem_435946, %struct.Memory** %MEMORY
  %loadMem_43594a = load %struct.Memory*, %struct.Memory** %MEMORY
  %976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %977 = getelementptr inbounds %struct.GPR, %struct.GPR* %976, i32 0, i32 33
  %978 = getelementptr inbounds %struct.Reg, %struct.Reg* %977, i32 0, i32 0
  %PC.i1157 = bitcast %union.anon* %978 to i64*
  %979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %980 = getelementptr inbounds %struct.GPR, %struct.GPR* %979, i32 0, i32 1
  %981 = getelementptr inbounds %struct.Reg, %struct.Reg* %980, i32 0, i32 0
  %RAX.i1158 = bitcast %union.anon* %981 to i64*
  %982 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %983 = getelementptr inbounds %struct.GPR, %struct.GPR* %982, i32 0, i32 5
  %984 = getelementptr inbounds %struct.Reg, %struct.Reg* %983, i32 0, i32 0
  %RCX.i1159 = bitcast %union.anon* %984 to i64*
  %985 = load i64, i64* %RAX.i1158
  %986 = load i64, i64* %RCX.i1159
  %987 = mul i64 %986, 8
  %988 = add i64 %987, %985
  %989 = load i64, i64* %PC.i1157
  %990 = add i64 %989, 4
  store i64 %990, i64* %PC.i1157
  %991 = inttoptr i64 %988 to i64*
  %992 = load i64, i64* %991
  store i64 %992, i64* %RAX.i1158, align 8
  store %struct.Memory* %loadMem_43594a, %struct.Memory** %MEMORY
  %loadMem_43594e = load %struct.Memory*, %struct.Memory** %MEMORY
  %993 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %994 = getelementptr inbounds %struct.GPR, %struct.GPR* %993, i32 0, i32 33
  %995 = getelementptr inbounds %struct.Reg, %struct.Reg* %994, i32 0, i32 0
  %PC.i1154 = bitcast %union.anon* %995 to i64*
  %996 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %997 = getelementptr inbounds %struct.GPR, %struct.GPR* %996, i32 0, i32 1
  %998 = getelementptr inbounds %struct.Reg, %struct.Reg* %997, i32 0, i32 0
  %RAX.i1155 = bitcast %union.anon* %998 to i64*
  %999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1000 = getelementptr inbounds %struct.GPR, %struct.GPR* %999, i32 0, i32 7
  %1001 = getelementptr inbounds %struct.Reg, %struct.Reg* %1000, i32 0, i32 0
  %RDX.i1156 = bitcast %union.anon* %1001 to i64*
  %1002 = load i64, i64* %RAX.i1155
  %1003 = add i64 %1002, 4
  %1004 = load i64, i64* %PC.i1154
  %1005 = add i64 %1004, 3
  store i64 %1005, i64* %PC.i1154
  %1006 = inttoptr i64 %1003 to i32*
  %1007 = load i32, i32* %1006
  %1008 = zext i32 %1007 to i64
  store i64 %1008, i64* %RDX.i1156, align 8
  store %struct.Memory* %loadMem_43594e, %struct.Memory** %MEMORY
  %loadMem_435951 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1009 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1010 = getelementptr inbounds %struct.GPR, %struct.GPR* %1009, i32 0, i32 33
  %1011 = getelementptr inbounds %struct.Reg, %struct.Reg* %1010, i32 0, i32 0
  %PC.i1151 = bitcast %union.anon* %1011 to i64*
  %1012 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1013 = getelementptr inbounds %struct.GPR, %struct.GPR* %1012, i32 0, i32 1
  %1014 = getelementptr inbounds %struct.Reg, %struct.Reg* %1013, i32 0, i32 0
  %RAX.i1152 = bitcast %union.anon* %1014 to i64*
  %1015 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1016 = getelementptr inbounds %struct.GPR, %struct.GPR* %1015, i32 0, i32 15
  %1017 = getelementptr inbounds %struct.Reg, %struct.Reg* %1016, i32 0, i32 0
  %RBP.i1153 = bitcast %union.anon* %1017 to i64*
  %1018 = load i64, i64* %RBP.i1153
  %1019 = sub i64 %1018, 24
  %1020 = load i64, i64* %PC.i1151
  %1021 = add i64 %1020, 4
  store i64 %1021, i64* %PC.i1151
  %1022 = inttoptr i64 %1019 to i64*
  %1023 = load i64, i64* %1022
  store i64 %1023, i64* %RAX.i1152, align 8
  store %struct.Memory* %loadMem_435951, %struct.Memory** %MEMORY
  %loadMem_435955 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1024 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1025 = getelementptr inbounds %struct.GPR, %struct.GPR* %1024, i32 0, i32 33
  %1026 = getelementptr inbounds %struct.Reg, %struct.Reg* %1025, i32 0, i32 0
  %PC.i1149 = bitcast %union.anon* %1026 to i64*
  %1027 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1028 = getelementptr inbounds %struct.GPR, %struct.GPR* %1027, i32 0, i32 1
  %1029 = getelementptr inbounds %struct.Reg, %struct.Reg* %1028, i32 0, i32 0
  %RAX.i1150 = bitcast %union.anon* %1029 to i64*
  %1030 = load i64, i64* %RAX.i1150
  %1031 = add i64 %1030, 376
  %1032 = load i64, i64* %PC.i1149
  %1033 = add i64 %1032, 7
  store i64 %1033, i64* %PC.i1149
  %1034 = inttoptr i64 %1031 to i64*
  %1035 = load i64, i64* %1034
  store i64 %1035, i64* %RAX.i1150, align 8
  store %struct.Memory* %loadMem_435955, %struct.Memory** %MEMORY
  %loadMem_43595c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1036 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1037 = getelementptr inbounds %struct.GPR, %struct.GPR* %1036, i32 0, i32 33
  %1038 = getelementptr inbounds %struct.Reg, %struct.Reg* %1037, i32 0, i32 0
  %PC.i1146 = bitcast %union.anon* %1038 to i64*
  %1039 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1040 = getelementptr inbounds %struct.GPR, %struct.GPR* %1039, i32 0, i32 5
  %1041 = getelementptr inbounds %struct.Reg, %struct.Reg* %1040, i32 0, i32 0
  %RCX.i1147 = bitcast %union.anon* %1041 to i64*
  %1042 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1043 = getelementptr inbounds %struct.GPR, %struct.GPR* %1042, i32 0, i32 15
  %1044 = getelementptr inbounds %struct.Reg, %struct.Reg* %1043, i32 0, i32 0
  %RBP.i1148 = bitcast %union.anon* %1044 to i64*
  %1045 = load i64, i64* %RBP.i1148
  %1046 = sub i64 %1045, 80
  %1047 = load i64, i64* %PC.i1146
  %1048 = add i64 %1047, 4
  store i64 %1048, i64* %PC.i1146
  %1049 = inttoptr i64 %1046 to i32*
  %1050 = load i32, i32* %1049
  %1051 = sext i32 %1050 to i64
  store i64 %1051, i64* %RCX.i1147, align 8
  store %struct.Memory* %loadMem_43595c, %struct.Memory** %MEMORY
  %loadMem_435960 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1052 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1053 = getelementptr inbounds %struct.GPR, %struct.GPR* %1052, i32 0, i32 33
  %1054 = getelementptr inbounds %struct.Reg, %struct.Reg* %1053, i32 0, i32 0
  %PC.i1142 = bitcast %union.anon* %1054 to i64*
  %1055 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1056 = getelementptr inbounds %struct.GPR, %struct.GPR* %1055, i32 0, i32 1
  %1057 = getelementptr inbounds %struct.Reg, %struct.Reg* %1056, i32 0, i32 0
  %RAX.i1143 = bitcast %union.anon* %1057 to i64*
  %1058 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1059 = getelementptr inbounds %struct.GPR, %struct.GPR* %1058, i32 0, i32 5
  %1060 = getelementptr inbounds %struct.Reg, %struct.Reg* %1059, i32 0, i32 0
  %RCX.i1144 = bitcast %union.anon* %1060 to i64*
  %1061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1062 = getelementptr inbounds %struct.GPR, %struct.GPR* %1061, i32 0, i32 7
  %1063 = getelementptr inbounds %struct.Reg, %struct.Reg* %1062, i32 0, i32 0
  %RDX.i1145 = bitcast %union.anon* %1063 to i64*
  %1064 = load i64, i64* %RDX.i1145
  %1065 = load i64, i64* %RAX.i1143
  %1066 = load i64, i64* %RCX.i1144
  %1067 = mul i64 %1066, 4
  %1068 = add i64 %1067, %1065
  %1069 = load i64, i64* %PC.i1142
  %1070 = add i64 %1069, 3
  store i64 %1070, i64* %PC.i1142
  %1071 = trunc i64 %1064 to i32
  %1072 = inttoptr i64 %1068 to i32*
  %1073 = load i32, i32* %1072
  %1074 = add i32 %1073, %1071
  %1075 = zext i32 %1074 to i64
  store i64 %1075, i64* %RDX.i1145, align 8
  %1076 = icmp ult i32 %1074, %1071
  %1077 = icmp ult i32 %1074, %1073
  %1078 = or i1 %1076, %1077
  %1079 = zext i1 %1078 to i8
  %1080 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1079, i8* %1080, align 1
  %1081 = and i32 %1074, 255
  %1082 = call i32 @llvm.ctpop.i32(i32 %1081)
  %1083 = trunc i32 %1082 to i8
  %1084 = and i8 %1083, 1
  %1085 = xor i8 %1084, 1
  %1086 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1085, i8* %1086, align 1
  %1087 = xor i32 %1073, %1071
  %1088 = xor i32 %1087, %1074
  %1089 = lshr i32 %1088, 4
  %1090 = trunc i32 %1089 to i8
  %1091 = and i8 %1090, 1
  %1092 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1091, i8* %1092, align 1
  %1093 = icmp eq i32 %1074, 0
  %1094 = zext i1 %1093 to i8
  %1095 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1094, i8* %1095, align 1
  %1096 = lshr i32 %1074, 31
  %1097 = trunc i32 %1096 to i8
  %1098 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1097, i8* %1098, align 1
  %1099 = lshr i32 %1071, 31
  %1100 = lshr i32 %1073, 31
  %1101 = xor i32 %1096, %1099
  %1102 = xor i32 %1096, %1100
  %1103 = add i32 %1101, %1102
  %1104 = icmp eq i32 %1103, 2
  %1105 = zext i1 %1104 to i8
  %1106 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1105, i8* %1106, align 1
  store %struct.Memory* %loadMem_435960, %struct.Memory** %MEMORY
  %loadMem_435963 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1108 = getelementptr inbounds %struct.GPR, %struct.GPR* %1107, i32 0, i32 33
  %1109 = getelementptr inbounds %struct.Reg, %struct.Reg* %1108, i32 0, i32 0
  %PC.i1139 = bitcast %union.anon* %1109 to i64*
  %1110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1111 = getelementptr inbounds %struct.GPR, %struct.GPR* %1110, i32 0, i32 1
  %1112 = getelementptr inbounds %struct.Reg, %struct.Reg* %1111, i32 0, i32 0
  %RAX.i1140 = bitcast %union.anon* %1112 to i64*
  %1113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1114 = getelementptr inbounds %struct.GPR, %struct.GPR* %1113, i32 0, i32 15
  %1115 = getelementptr inbounds %struct.Reg, %struct.Reg* %1114, i32 0, i32 0
  %RBP.i1141 = bitcast %union.anon* %1115 to i64*
  %1116 = load i64, i64* %RBP.i1141
  %1117 = sub i64 %1116, 56
  %1118 = load i64, i64* %PC.i1139
  %1119 = add i64 %1118, 4
  store i64 %1119, i64* %PC.i1139
  %1120 = inttoptr i64 %1117 to i64*
  %1121 = load i64, i64* %1120
  store i64 %1121, i64* %RAX.i1140, align 8
  store %struct.Memory* %loadMem_435963, %struct.Memory** %MEMORY
  %loadMem_435967 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1123 = getelementptr inbounds %struct.GPR, %struct.GPR* %1122, i32 0, i32 33
  %1124 = getelementptr inbounds %struct.Reg, %struct.Reg* %1123, i32 0, i32 0
  %PC.i1136 = bitcast %union.anon* %1124 to i64*
  %1125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1126 = getelementptr inbounds %struct.GPR, %struct.GPR* %1125, i32 0, i32 5
  %1127 = getelementptr inbounds %struct.Reg, %struct.Reg* %1126, i32 0, i32 0
  %RCX.i1137 = bitcast %union.anon* %1127 to i64*
  %1128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1129 = getelementptr inbounds %struct.GPR, %struct.GPR* %1128, i32 0, i32 15
  %1130 = getelementptr inbounds %struct.Reg, %struct.Reg* %1129, i32 0, i32 0
  %RBP.i1138 = bitcast %union.anon* %1130 to i64*
  %1131 = load i64, i64* %RBP.i1138
  %1132 = sub i64 %1131, 12
  %1133 = load i64, i64* %PC.i1136
  %1134 = add i64 %1133, 4
  store i64 %1134, i64* %PC.i1136
  %1135 = inttoptr i64 %1132 to i32*
  %1136 = load i32, i32* %1135
  %1137 = sext i32 %1136 to i64
  store i64 %1137, i64* %RCX.i1137, align 8
  store %struct.Memory* %loadMem_435967, %struct.Memory** %MEMORY
  %loadMem_43596b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1139 = getelementptr inbounds %struct.GPR, %struct.GPR* %1138, i32 0, i32 33
  %1140 = getelementptr inbounds %struct.Reg, %struct.Reg* %1139, i32 0, i32 0
  %PC.i1133 = bitcast %union.anon* %1140 to i64*
  %1141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1142 = getelementptr inbounds %struct.GPR, %struct.GPR* %1141, i32 0, i32 1
  %1143 = getelementptr inbounds %struct.Reg, %struct.Reg* %1142, i32 0, i32 0
  %RAX.i1134 = bitcast %union.anon* %1143 to i64*
  %1144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1145 = getelementptr inbounds %struct.GPR, %struct.GPR* %1144, i32 0, i32 5
  %1146 = getelementptr inbounds %struct.Reg, %struct.Reg* %1145, i32 0, i32 0
  %RCX.i1135 = bitcast %union.anon* %1146 to i64*
  %1147 = load i64, i64* %RAX.i1134
  %1148 = load i64, i64* %RCX.i1135
  %1149 = mul i64 %1148, 8
  %1150 = add i64 %1149, %1147
  %1151 = load i64, i64* %PC.i1133
  %1152 = add i64 %1151, 4
  store i64 %1152, i64* %PC.i1133
  %1153 = inttoptr i64 %1150 to i64*
  %1154 = load i64, i64* %1153
  store i64 %1154, i64* %RAX.i1134, align 8
  store %struct.Memory* %loadMem_43596b, %struct.Memory** %MEMORY
  %loadMem_43596f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1156 = getelementptr inbounds %struct.GPR, %struct.GPR* %1155, i32 0, i32 33
  %1157 = getelementptr inbounds %struct.Reg, %struct.Reg* %1156, i32 0, i32 0
  %PC.i1130 = bitcast %union.anon* %1157 to i64*
  %1158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1159 = getelementptr inbounds %struct.GPR, %struct.GPR* %1158, i32 0, i32 5
  %1160 = getelementptr inbounds %struct.Reg, %struct.Reg* %1159, i32 0, i32 0
  %RCX.i1131 = bitcast %union.anon* %1160 to i64*
  %1161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1162 = getelementptr inbounds %struct.GPR, %struct.GPR* %1161, i32 0, i32 15
  %1163 = getelementptr inbounds %struct.Reg, %struct.Reg* %1162, i32 0, i32 0
  %RBP.i1132 = bitcast %union.anon* %1163 to i64*
  %1164 = load i64, i64* %RBP.i1132
  %1165 = sub i64 %1164, 80
  %1166 = load i64, i64* %PC.i1130
  %1167 = add i64 %1166, 4
  store i64 %1167, i64* %PC.i1130
  %1168 = inttoptr i64 %1165 to i32*
  %1169 = load i32, i32* %1168
  %1170 = sext i32 %1169 to i64
  store i64 %1170, i64* %RCX.i1131, align 8
  store %struct.Memory* %loadMem_43596f, %struct.Memory** %MEMORY
  %loadMem_435973 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1172 = getelementptr inbounds %struct.GPR, %struct.GPR* %1171, i32 0, i32 33
  %1173 = getelementptr inbounds %struct.Reg, %struct.Reg* %1172, i32 0, i32 0
  %PC.i1126 = bitcast %union.anon* %1173 to i64*
  %1174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1175 = getelementptr inbounds %struct.GPR, %struct.GPR* %1174, i32 0, i32 7
  %1176 = getelementptr inbounds %struct.Reg, %struct.Reg* %1175, i32 0, i32 0
  %EDX.i1127 = bitcast %union.anon* %1176 to i32*
  %1177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1178 = getelementptr inbounds %struct.GPR, %struct.GPR* %1177, i32 0, i32 1
  %1179 = getelementptr inbounds %struct.Reg, %struct.Reg* %1178, i32 0, i32 0
  %RAX.i1128 = bitcast %union.anon* %1179 to i64*
  %1180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1181 = getelementptr inbounds %struct.GPR, %struct.GPR* %1180, i32 0, i32 5
  %1182 = getelementptr inbounds %struct.Reg, %struct.Reg* %1181, i32 0, i32 0
  %RCX.i1129 = bitcast %union.anon* %1182 to i64*
  %1183 = load i64, i64* %RAX.i1128
  %1184 = load i64, i64* %RCX.i1129
  %1185 = mul i64 %1184, 4
  %1186 = add i64 %1185, %1183
  %1187 = load i32, i32* %EDX.i1127
  %1188 = zext i32 %1187 to i64
  %1189 = load i64, i64* %PC.i1126
  %1190 = add i64 %1189, 3
  store i64 %1190, i64* %PC.i1126
  %1191 = inttoptr i64 %1186 to i32*
  store i32 %1187, i32* %1191
  store %struct.Memory* %loadMem_435973, %struct.Memory** %MEMORY
  %loadMem_435976 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1192 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1193 = getelementptr inbounds %struct.GPR, %struct.GPR* %1192, i32 0, i32 33
  %1194 = getelementptr inbounds %struct.Reg, %struct.Reg* %1193, i32 0, i32 0
  %PC.i1123 = bitcast %union.anon* %1194 to i64*
  %1195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1196 = getelementptr inbounds %struct.GPR, %struct.GPR* %1195, i32 0, i32 1
  %1197 = getelementptr inbounds %struct.Reg, %struct.Reg* %1196, i32 0, i32 0
  %RAX.i1124 = bitcast %union.anon* %1197 to i64*
  %1198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1199 = getelementptr inbounds %struct.GPR, %struct.GPR* %1198, i32 0, i32 15
  %1200 = getelementptr inbounds %struct.Reg, %struct.Reg* %1199, i32 0, i32 0
  %RBP.i1125 = bitcast %union.anon* %1200 to i64*
  %1201 = load i64, i64* %RBP.i1125
  %1202 = sub i64 %1201, 24
  %1203 = load i64, i64* %PC.i1123
  %1204 = add i64 %1203, 4
  store i64 %1204, i64* %PC.i1123
  %1205 = inttoptr i64 %1202 to i64*
  %1206 = load i64, i64* %1205
  store i64 %1206, i64* %RAX.i1124, align 8
  store %struct.Memory* %loadMem_435976, %struct.Memory** %MEMORY
  %loadMem_43597a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1208 = getelementptr inbounds %struct.GPR, %struct.GPR* %1207, i32 0, i32 33
  %1209 = getelementptr inbounds %struct.Reg, %struct.Reg* %1208, i32 0, i32 0
  %PC.i1121 = bitcast %union.anon* %1209 to i64*
  %1210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1211 = getelementptr inbounds %struct.GPR, %struct.GPR* %1210, i32 0, i32 1
  %1212 = getelementptr inbounds %struct.Reg, %struct.Reg* %1211, i32 0, i32 0
  %RAX.i1122 = bitcast %union.anon* %1212 to i64*
  %1213 = load i64, i64* %RAX.i1122
  %1214 = add i64 %1213, 320
  %1215 = load i64, i64* %PC.i1121
  %1216 = add i64 %1215, 7
  store i64 %1216, i64* %PC.i1121
  %1217 = inttoptr i64 %1214 to i64*
  %1218 = load i64, i64* %1217
  store i64 %1218, i64* %RAX.i1122, align 8
  store %struct.Memory* %loadMem_43597a, %struct.Memory** %MEMORY
  %loadMem_435981 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1220 = getelementptr inbounds %struct.GPR, %struct.GPR* %1219, i32 0, i32 33
  %1221 = getelementptr inbounds %struct.Reg, %struct.Reg* %1220, i32 0, i32 0
  %PC.i1118 = bitcast %union.anon* %1221 to i64*
  %1222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1223 = getelementptr inbounds %struct.GPR, %struct.GPR* %1222, i32 0, i32 5
  %1224 = getelementptr inbounds %struct.Reg, %struct.Reg* %1223, i32 0, i32 0
  %RCX.i1119 = bitcast %union.anon* %1224 to i64*
  %1225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1226 = getelementptr inbounds %struct.GPR, %struct.GPR* %1225, i32 0, i32 15
  %1227 = getelementptr inbounds %struct.Reg, %struct.Reg* %1226, i32 0, i32 0
  %RBP.i1120 = bitcast %union.anon* %1227 to i64*
  %1228 = load i64, i64* %RBP.i1120
  %1229 = sub i64 %1228, 8
  %1230 = load i64, i64* %PC.i1118
  %1231 = add i64 %1230, 4
  store i64 %1231, i64* %PC.i1118
  %1232 = inttoptr i64 %1229 to i64*
  %1233 = load i64, i64* %1232
  store i64 %1233, i64* %RCX.i1119, align 8
  store %struct.Memory* %loadMem_435981, %struct.Memory** %MEMORY
  %loadMem_435985 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1235 = getelementptr inbounds %struct.GPR, %struct.GPR* %1234, i32 0, i32 33
  %1236 = getelementptr inbounds %struct.Reg, %struct.Reg* %1235, i32 0, i32 0
  %PC.i1115 = bitcast %union.anon* %1236 to i64*
  %1237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1238 = getelementptr inbounds %struct.GPR, %struct.GPR* %1237, i32 0, i32 9
  %1239 = getelementptr inbounds %struct.Reg, %struct.Reg* %1238, i32 0, i32 0
  %RSI.i1116 = bitcast %union.anon* %1239 to i64*
  %1240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1241 = getelementptr inbounds %struct.GPR, %struct.GPR* %1240, i32 0, i32 15
  %1242 = getelementptr inbounds %struct.Reg, %struct.Reg* %1241, i32 0, i32 0
  %RBP.i1117 = bitcast %union.anon* %1242 to i64*
  %1243 = load i64, i64* %RBP.i1117
  %1244 = sub i64 %1243, 12
  %1245 = load i64, i64* %PC.i1115
  %1246 = add i64 %1245, 4
  store i64 %1246, i64* %PC.i1115
  %1247 = inttoptr i64 %1244 to i32*
  %1248 = load i32, i32* %1247
  %1249 = sext i32 %1248 to i64
  store i64 %1249, i64* %RSI.i1116, align 8
  store %struct.Memory* %loadMem_435985, %struct.Memory** %MEMORY
  %loadMem_435989 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1251 = getelementptr inbounds %struct.GPR, %struct.GPR* %1250, i32 0, i32 33
  %1252 = getelementptr inbounds %struct.Reg, %struct.Reg* %1251, i32 0, i32 0
  %PC.i1111 = bitcast %union.anon* %1252 to i64*
  %1253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1254 = getelementptr inbounds %struct.GPR, %struct.GPR* %1253, i32 0, i32 5
  %1255 = getelementptr inbounds %struct.Reg, %struct.Reg* %1254, i32 0, i32 0
  %RCX.i1112 = bitcast %union.anon* %1255 to i64*
  %1256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1257 = getelementptr inbounds %struct.GPR, %struct.GPR* %1256, i32 0, i32 7
  %1258 = getelementptr inbounds %struct.Reg, %struct.Reg* %1257, i32 0, i32 0
  %RDX.i1113 = bitcast %union.anon* %1258 to i64*
  %1259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1260 = getelementptr inbounds %struct.GPR, %struct.GPR* %1259, i32 0, i32 9
  %1261 = getelementptr inbounds %struct.Reg, %struct.Reg* %1260, i32 0, i32 0
  %RSI.i1114 = bitcast %union.anon* %1261 to i64*
  %1262 = load i64, i64* %RCX.i1112
  %1263 = load i64, i64* %RSI.i1114
  %1264 = add i64 %1263, %1262
  %1265 = load i64, i64* %PC.i1111
  %1266 = add i64 %1265, 4
  store i64 %1266, i64* %PC.i1111
  %1267 = inttoptr i64 %1264 to i8*
  %1268 = load i8, i8* %1267
  %1269 = sext i8 %1268 to i64
  %1270 = and i64 %1269, 4294967295
  store i64 %1270, i64* %RDX.i1113, align 8
  store %struct.Memory* %loadMem_435989, %struct.Memory** %MEMORY
  %loadMem_43598d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1272 = getelementptr inbounds %struct.GPR, %struct.GPR* %1271, i32 0, i32 33
  %1273 = getelementptr inbounds %struct.Reg, %struct.Reg* %1272, i32 0, i32 0
  %PC.i1108 = bitcast %union.anon* %1273 to i64*
  %1274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1275 = getelementptr inbounds %struct.GPR, %struct.GPR* %1274, i32 0, i32 7
  %1276 = getelementptr inbounds %struct.Reg, %struct.Reg* %1275, i32 0, i32 0
  %EDX.i1109 = bitcast %union.anon* %1276 to i32*
  %1277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1278 = getelementptr inbounds %struct.GPR, %struct.GPR* %1277, i32 0, i32 5
  %1279 = getelementptr inbounds %struct.Reg, %struct.Reg* %1278, i32 0, i32 0
  %RCX.i1110 = bitcast %union.anon* %1279 to i64*
  %1280 = load i32, i32* %EDX.i1109
  %1281 = zext i32 %1280 to i64
  %1282 = load i64, i64* %PC.i1108
  %1283 = add i64 %1282, 3
  store i64 %1283, i64* %PC.i1108
  %1284 = shl i64 %1281, 32
  %1285 = ashr exact i64 %1284, 32
  store i64 %1285, i64* %RCX.i1110, align 8
  store %struct.Memory* %loadMem_43598d, %struct.Memory** %MEMORY
  %loadMem_435990 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1287 = getelementptr inbounds %struct.GPR, %struct.GPR* %1286, i32 0, i32 33
  %1288 = getelementptr inbounds %struct.Reg, %struct.Reg* %1287, i32 0, i32 0
  %PC.i1105 = bitcast %union.anon* %1288 to i64*
  %1289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1290 = getelementptr inbounds %struct.GPR, %struct.GPR* %1289, i32 0, i32 1
  %1291 = getelementptr inbounds %struct.Reg, %struct.Reg* %1290, i32 0, i32 0
  %RAX.i1106 = bitcast %union.anon* %1291 to i64*
  %1292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1293 = getelementptr inbounds %struct.GPR, %struct.GPR* %1292, i32 0, i32 5
  %1294 = getelementptr inbounds %struct.Reg, %struct.Reg* %1293, i32 0, i32 0
  %RCX.i1107 = bitcast %union.anon* %1294 to i64*
  %1295 = load i64, i64* %RAX.i1106
  %1296 = load i64, i64* %RCX.i1107
  %1297 = mul i64 %1296, 8
  %1298 = add i64 %1297, %1295
  %1299 = load i64, i64* %PC.i1105
  %1300 = add i64 %1299, 4
  store i64 %1300, i64* %PC.i1105
  %1301 = inttoptr i64 %1298 to i64*
  %1302 = load i64, i64* %1301
  store i64 %1302, i64* %RAX.i1106, align 8
  store %struct.Memory* %loadMem_435990, %struct.Memory** %MEMORY
  %loadMem_435994 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1304 = getelementptr inbounds %struct.GPR, %struct.GPR* %1303, i32 0, i32 33
  %1305 = getelementptr inbounds %struct.Reg, %struct.Reg* %1304, i32 0, i32 0
  %PC.i1102 = bitcast %union.anon* %1305 to i64*
  %1306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1307 = getelementptr inbounds %struct.GPR, %struct.GPR* %1306, i32 0, i32 5
  %1308 = getelementptr inbounds %struct.Reg, %struct.Reg* %1307, i32 0, i32 0
  %RCX.i1103 = bitcast %union.anon* %1308 to i64*
  %1309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1310 = getelementptr inbounds %struct.GPR, %struct.GPR* %1309, i32 0, i32 15
  %1311 = getelementptr inbounds %struct.Reg, %struct.Reg* %1310, i32 0, i32 0
  %RBP.i1104 = bitcast %union.anon* %1311 to i64*
  %1312 = load i64, i64* %RBP.i1104
  %1313 = sub i64 %1312, 80
  %1314 = load i64, i64* %PC.i1102
  %1315 = add i64 %1314, 4
  store i64 %1315, i64* %PC.i1102
  %1316 = inttoptr i64 %1313 to i32*
  %1317 = load i32, i32* %1316
  %1318 = sext i32 %1317 to i64
  store i64 %1318, i64* %RCX.i1103, align 8
  store %struct.Memory* %loadMem_435994, %struct.Memory** %MEMORY
  %loadMem_435998 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1319 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1320 = getelementptr inbounds %struct.GPR, %struct.GPR* %1319, i32 0, i32 33
  %1321 = getelementptr inbounds %struct.Reg, %struct.Reg* %1320, i32 0, i32 0
  %PC.i1098 = bitcast %union.anon* %1321 to i64*
  %1322 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1323 = getelementptr inbounds %struct.GPR, %struct.GPR* %1322, i32 0, i32 1
  %1324 = getelementptr inbounds %struct.Reg, %struct.Reg* %1323, i32 0, i32 0
  %RAX.i1099 = bitcast %union.anon* %1324 to i64*
  %1325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1326 = getelementptr inbounds %struct.GPR, %struct.GPR* %1325, i32 0, i32 5
  %1327 = getelementptr inbounds %struct.Reg, %struct.Reg* %1326, i32 0, i32 0
  %RCX.i1100 = bitcast %union.anon* %1327 to i64*
  %1328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1329 = getelementptr inbounds %struct.GPR, %struct.GPR* %1328, i32 0, i32 7
  %1330 = getelementptr inbounds %struct.Reg, %struct.Reg* %1329, i32 0, i32 0
  %RDX.i1101 = bitcast %union.anon* %1330 to i64*
  %1331 = load i64, i64* %RAX.i1099
  %1332 = load i64, i64* %RCX.i1100
  %1333 = mul i64 %1332, 4
  %1334 = add i64 %1333, %1331
  %1335 = load i64, i64* %PC.i1098
  %1336 = add i64 %1335, 3
  store i64 %1336, i64* %PC.i1098
  %1337 = inttoptr i64 %1334 to i32*
  %1338 = load i32, i32* %1337
  %1339 = zext i32 %1338 to i64
  store i64 %1339, i64* %RDX.i1101, align 8
  store %struct.Memory* %loadMem_435998, %struct.Memory** %MEMORY
  %loadMem_43599b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1341 = getelementptr inbounds %struct.GPR, %struct.GPR* %1340, i32 0, i32 33
  %1342 = getelementptr inbounds %struct.Reg, %struct.Reg* %1341, i32 0, i32 0
  %PC.i1095 = bitcast %union.anon* %1342 to i64*
  %1343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1344 = getelementptr inbounds %struct.GPR, %struct.GPR* %1343, i32 0, i32 1
  %1345 = getelementptr inbounds %struct.Reg, %struct.Reg* %1344, i32 0, i32 0
  %RAX.i1096 = bitcast %union.anon* %1345 to i64*
  %1346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1347 = getelementptr inbounds %struct.GPR, %struct.GPR* %1346, i32 0, i32 15
  %1348 = getelementptr inbounds %struct.Reg, %struct.Reg* %1347, i32 0, i32 0
  %RBP.i1097 = bitcast %union.anon* %1348 to i64*
  %1349 = load i64, i64* %RBP.i1097
  %1350 = sub i64 %1349, 56
  %1351 = load i64, i64* %PC.i1095
  %1352 = add i64 %1351, 4
  store i64 %1352, i64* %PC.i1095
  %1353 = inttoptr i64 %1350 to i64*
  %1354 = load i64, i64* %1353
  store i64 %1354, i64* %RAX.i1096, align 8
  store %struct.Memory* %loadMem_43599b, %struct.Memory** %MEMORY
  %loadMem_43599f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1356 = getelementptr inbounds %struct.GPR, %struct.GPR* %1355, i32 0, i32 33
  %1357 = getelementptr inbounds %struct.Reg, %struct.Reg* %1356, i32 0, i32 0
  %PC.i1092 = bitcast %union.anon* %1357 to i64*
  %1358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1359 = getelementptr inbounds %struct.GPR, %struct.GPR* %1358, i32 0, i32 5
  %1360 = getelementptr inbounds %struct.Reg, %struct.Reg* %1359, i32 0, i32 0
  %RCX.i1093 = bitcast %union.anon* %1360 to i64*
  %1361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1362 = getelementptr inbounds %struct.GPR, %struct.GPR* %1361, i32 0, i32 15
  %1363 = getelementptr inbounds %struct.Reg, %struct.Reg* %1362, i32 0, i32 0
  %RBP.i1094 = bitcast %union.anon* %1363 to i64*
  %1364 = load i64, i64* %RBP.i1094
  %1365 = sub i64 %1364, 12
  %1366 = load i64, i64* %PC.i1092
  %1367 = add i64 %1366, 4
  store i64 %1367, i64* %PC.i1092
  %1368 = inttoptr i64 %1365 to i32*
  %1369 = load i32, i32* %1368
  %1370 = sext i32 %1369 to i64
  store i64 %1370, i64* %RCX.i1093, align 8
  store %struct.Memory* %loadMem_43599f, %struct.Memory** %MEMORY
  %loadMem_4359a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1372 = getelementptr inbounds %struct.GPR, %struct.GPR* %1371, i32 0, i32 33
  %1373 = getelementptr inbounds %struct.Reg, %struct.Reg* %1372, i32 0, i32 0
  %PC.i1089 = bitcast %union.anon* %1373 to i64*
  %1374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1375 = getelementptr inbounds %struct.GPR, %struct.GPR* %1374, i32 0, i32 1
  %1376 = getelementptr inbounds %struct.Reg, %struct.Reg* %1375, i32 0, i32 0
  %RAX.i1090 = bitcast %union.anon* %1376 to i64*
  %1377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1378 = getelementptr inbounds %struct.GPR, %struct.GPR* %1377, i32 0, i32 5
  %1379 = getelementptr inbounds %struct.Reg, %struct.Reg* %1378, i32 0, i32 0
  %RCX.i1091 = bitcast %union.anon* %1379 to i64*
  %1380 = load i64, i64* %RAX.i1090
  %1381 = load i64, i64* %RCX.i1091
  %1382 = mul i64 %1381, 8
  %1383 = add i64 %1382, %1380
  %1384 = load i64, i64* %PC.i1089
  %1385 = add i64 %1384, 4
  store i64 %1385, i64* %PC.i1089
  %1386 = inttoptr i64 %1383 to i64*
  %1387 = load i64, i64* %1386
  store i64 %1387, i64* %RAX.i1090, align 8
  store %struct.Memory* %loadMem_4359a3, %struct.Memory** %MEMORY
  %loadMem_4359a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1389 = getelementptr inbounds %struct.GPR, %struct.GPR* %1388, i32 0, i32 33
  %1390 = getelementptr inbounds %struct.Reg, %struct.Reg* %1389, i32 0, i32 0
  %PC.i1086 = bitcast %union.anon* %1390 to i64*
  %1391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1392 = getelementptr inbounds %struct.GPR, %struct.GPR* %1391, i32 0, i32 5
  %1393 = getelementptr inbounds %struct.Reg, %struct.Reg* %1392, i32 0, i32 0
  %RCX.i1087 = bitcast %union.anon* %1393 to i64*
  %1394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1395 = getelementptr inbounds %struct.GPR, %struct.GPR* %1394, i32 0, i32 15
  %1396 = getelementptr inbounds %struct.Reg, %struct.Reg* %1395, i32 0, i32 0
  %RBP.i1088 = bitcast %union.anon* %1396 to i64*
  %1397 = load i64, i64* %RBP.i1088
  %1398 = sub i64 %1397, 80
  %1399 = load i64, i64* %PC.i1086
  %1400 = add i64 %1399, 4
  store i64 %1400, i64* %PC.i1086
  %1401 = inttoptr i64 %1398 to i32*
  %1402 = load i32, i32* %1401
  %1403 = sext i32 %1402 to i64
  store i64 %1403, i64* %RCX.i1087, align 8
  store %struct.Memory* %loadMem_4359a7, %struct.Memory** %MEMORY
  %loadMem_4359ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %1404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1405 = getelementptr inbounds %struct.GPR, %struct.GPR* %1404, i32 0, i32 33
  %1406 = getelementptr inbounds %struct.Reg, %struct.Reg* %1405, i32 0, i32 0
  %PC.i1082 = bitcast %union.anon* %1406 to i64*
  %1407 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1408 = getelementptr inbounds %struct.GPR, %struct.GPR* %1407, i32 0, i32 1
  %1409 = getelementptr inbounds %struct.Reg, %struct.Reg* %1408, i32 0, i32 0
  %RAX.i1083 = bitcast %union.anon* %1409 to i64*
  %1410 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1411 = getelementptr inbounds %struct.GPR, %struct.GPR* %1410, i32 0, i32 5
  %1412 = getelementptr inbounds %struct.Reg, %struct.Reg* %1411, i32 0, i32 0
  %RCX.i1084 = bitcast %union.anon* %1412 to i64*
  %1413 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1414 = getelementptr inbounds %struct.GPR, %struct.GPR* %1413, i32 0, i32 7
  %1415 = getelementptr inbounds %struct.Reg, %struct.Reg* %1414, i32 0, i32 0
  %RDX.i1085 = bitcast %union.anon* %1415 to i64*
  %1416 = load i64, i64* %RDX.i1085
  %1417 = load i64, i64* %RAX.i1083
  %1418 = load i64, i64* %RCX.i1084
  %1419 = mul i64 %1418, 4
  %1420 = add i64 %1419, %1417
  %1421 = load i64, i64* %PC.i1082
  %1422 = add i64 %1421, 3
  store i64 %1422, i64* %PC.i1082
  %1423 = trunc i64 %1416 to i32
  %1424 = inttoptr i64 %1420 to i32*
  %1425 = load i32, i32* %1424
  %1426 = add i32 %1425, %1423
  %1427 = zext i32 %1426 to i64
  store i64 %1427, i64* %RDX.i1085, align 8
  %1428 = icmp ult i32 %1426, %1423
  %1429 = icmp ult i32 %1426, %1425
  %1430 = or i1 %1428, %1429
  %1431 = zext i1 %1430 to i8
  %1432 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1431, i8* %1432, align 1
  %1433 = and i32 %1426, 255
  %1434 = call i32 @llvm.ctpop.i32(i32 %1433)
  %1435 = trunc i32 %1434 to i8
  %1436 = and i8 %1435, 1
  %1437 = xor i8 %1436, 1
  %1438 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1437, i8* %1438, align 1
  %1439 = xor i32 %1425, %1423
  %1440 = xor i32 %1439, %1426
  %1441 = lshr i32 %1440, 4
  %1442 = trunc i32 %1441 to i8
  %1443 = and i8 %1442, 1
  %1444 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1443, i8* %1444, align 1
  %1445 = icmp eq i32 %1426, 0
  %1446 = zext i1 %1445 to i8
  %1447 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1446, i8* %1447, align 1
  %1448 = lshr i32 %1426, 31
  %1449 = trunc i32 %1448 to i8
  %1450 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1449, i8* %1450, align 1
  %1451 = lshr i32 %1423, 31
  %1452 = lshr i32 %1425, 31
  %1453 = xor i32 %1448, %1451
  %1454 = xor i32 %1448, %1452
  %1455 = add i32 %1453, %1454
  %1456 = icmp eq i32 %1455, 2
  %1457 = zext i1 %1456 to i8
  %1458 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1457, i8* %1458, align 1
  store %struct.Memory* %loadMem_4359ab, %struct.Memory** %MEMORY
  %loadMem_4359ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %1459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1460 = getelementptr inbounds %struct.GPR, %struct.GPR* %1459, i32 0, i32 33
  %1461 = getelementptr inbounds %struct.Reg, %struct.Reg* %1460, i32 0, i32 0
  %PC.i1078 = bitcast %union.anon* %1461 to i64*
  %1462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1463 = getelementptr inbounds %struct.GPR, %struct.GPR* %1462, i32 0, i32 7
  %1464 = getelementptr inbounds %struct.Reg, %struct.Reg* %1463, i32 0, i32 0
  %EDX.i1079 = bitcast %union.anon* %1464 to i32*
  %1465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1466 = getelementptr inbounds %struct.GPR, %struct.GPR* %1465, i32 0, i32 1
  %1467 = getelementptr inbounds %struct.Reg, %struct.Reg* %1466, i32 0, i32 0
  %RAX.i1080 = bitcast %union.anon* %1467 to i64*
  %1468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1469 = getelementptr inbounds %struct.GPR, %struct.GPR* %1468, i32 0, i32 5
  %1470 = getelementptr inbounds %struct.Reg, %struct.Reg* %1469, i32 0, i32 0
  %RCX.i1081 = bitcast %union.anon* %1470 to i64*
  %1471 = load i64, i64* %RAX.i1080
  %1472 = load i64, i64* %RCX.i1081
  %1473 = mul i64 %1472, 4
  %1474 = add i64 %1473, %1471
  %1475 = load i32, i32* %EDX.i1079
  %1476 = zext i32 %1475 to i64
  %1477 = load i64, i64* %PC.i1078
  %1478 = add i64 %1477, 3
  store i64 %1478, i64* %PC.i1078
  %1479 = inttoptr i64 %1474 to i32*
  store i32 %1475, i32* %1479
  store %struct.Memory* %loadMem_4359ae, %struct.Memory** %MEMORY
  %loadMem_4359b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1481 = getelementptr inbounds %struct.GPR, %struct.GPR* %1480, i32 0, i32 33
  %1482 = getelementptr inbounds %struct.Reg, %struct.Reg* %1481, i32 0, i32 0
  %PC.i1075 = bitcast %union.anon* %1482 to i64*
  %1483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1484 = getelementptr inbounds %struct.GPR, %struct.GPR* %1483, i32 0, i32 1
  %1485 = getelementptr inbounds %struct.Reg, %struct.Reg* %1484, i32 0, i32 0
  %RAX.i1076 = bitcast %union.anon* %1485 to i64*
  %1486 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1487 = getelementptr inbounds %struct.GPR, %struct.GPR* %1486, i32 0, i32 15
  %1488 = getelementptr inbounds %struct.Reg, %struct.Reg* %1487, i32 0, i32 0
  %RBP.i1077 = bitcast %union.anon* %1488 to i64*
  %1489 = load i64, i64* %RBP.i1077
  %1490 = sub i64 %1489, 72
  %1491 = load i64, i64* %PC.i1075
  %1492 = add i64 %1491, 4
  store i64 %1492, i64* %PC.i1075
  %1493 = inttoptr i64 %1490 to i64*
  %1494 = load i64, i64* %1493
  store i64 %1494, i64* %RAX.i1076, align 8
  store %struct.Memory* %loadMem_4359b1, %struct.Memory** %MEMORY
  %loadMem_4359b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1496 = getelementptr inbounds %struct.GPR, %struct.GPR* %1495, i32 0, i32 33
  %1497 = getelementptr inbounds %struct.Reg, %struct.Reg* %1496, i32 0, i32 0
  %PC.i1072 = bitcast %union.anon* %1497 to i64*
  %1498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1499 = getelementptr inbounds %struct.GPR, %struct.GPR* %1498, i32 0, i32 5
  %1500 = getelementptr inbounds %struct.Reg, %struct.Reg* %1499, i32 0, i32 0
  %RCX.i1073 = bitcast %union.anon* %1500 to i64*
  %1501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1502 = getelementptr inbounds %struct.GPR, %struct.GPR* %1501, i32 0, i32 15
  %1503 = getelementptr inbounds %struct.Reg, %struct.Reg* %1502, i32 0, i32 0
  %RBP.i1074 = bitcast %union.anon* %1503 to i64*
  %1504 = load i64, i64* %RBP.i1074
  %1505 = sub i64 %1504, 12
  %1506 = load i64, i64* %PC.i1072
  %1507 = add i64 %1506, 4
  store i64 %1507, i64* %PC.i1072
  %1508 = inttoptr i64 %1505 to i32*
  %1509 = load i32, i32* %1508
  %1510 = sext i32 %1509 to i64
  store i64 %1510, i64* %RCX.i1073, align 8
  store %struct.Memory* %loadMem_4359b5, %struct.Memory** %MEMORY
  %loadMem_4359b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1511 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1512 = getelementptr inbounds %struct.GPR, %struct.GPR* %1511, i32 0, i32 33
  %1513 = getelementptr inbounds %struct.Reg, %struct.Reg* %1512, i32 0, i32 0
  %PC.i1069 = bitcast %union.anon* %1513 to i64*
  %1514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1515 = getelementptr inbounds %struct.GPR, %struct.GPR* %1514, i32 0, i32 1
  %1516 = getelementptr inbounds %struct.Reg, %struct.Reg* %1515, i32 0, i32 0
  %RAX.i1070 = bitcast %union.anon* %1516 to i64*
  %1517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1518 = getelementptr inbounds %struct.GPR, %struct.GPR* %1517, i32 0, i32 5
  %1519 = getelementptr inbounds %struct.Reg, %struct.Reg* %1518, i32 0, i32 0
  %RCX.i1071 = bitcast %union.anon* %1519 to i64*
  %1520 = load i64, i64* %RAX.i1070
  %1521 = load i64, i64* %RCX.i1071
  %1522 = mul i64 %1521, 8
  %1523 = add i64 %1522, %1520
  %1524 = load i64, i64* %PC.i1069
  %1525 = add i64 %1524, 4
  store i64 %1525, i64* %PC.i1069
  %1526 = inttoptr i64 %1523 to i64*
  %1527 = load i64, i64* %1526
  store i64 %1527, i64* %RAX.i1070, align 8
  store %struct.Memory* %loadMem_4359b9, %struct.Memory** %MEMORY
  %loadMem_4359bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1529 = getelementptr inbounds %struct.GPR, %struct.GPR* %1528, i32 0, i32 33
  %1530 = getelementptr inbounds %struct.Reg, %struct.Reg* %1529, i32 0, i32 0
  %PC.i1066 = bitcast %union.anon* %1530 to i64*
  %1531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1532 = getelementptr inbounds %struct.GPR, %struct.GPR* %1531, i32 0, i32 5
  %1533 = getelementptr inbounds %struct.Reg, %struct.Reg* %1532, i32 0, i32 0
  %RCX.i1067 = bitcast %union.anon* %1533 to i64*
  %1534 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1535 = getelementptr inbounds %struct.GPR, %struct.GPR* %1534, i32 0, i32 15
  %1536 = getelementptr inbounds %struct.Reg, %struct.Reg* %1535, i32 0, i32 0
  %RBP.i1068 = bitcast %union.anon* %1536 to i64*
  %1537 = load i64, i64* %RBP.i1068
  %1538 = sub i64 %1537, 80
  %1539 = load i64, i64* %PC.i1066
  %1540 = add i64 %1539, 4
  store i64 %1540, i64* %PC.i1066
  %1541 = inttoptr i64 %1538 to i32*
  %1542 = load i32, i32* %1541
  %1543 = sext i32 %1542 to i64
  store i64 %1543, i64* %RCX.i1067, align 8
  store %struct.Memory* %loadMem_4359bd, %struct.Memory** %MEMORY
  %loadMem_4359c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1545 = getelementptr inbounds %struct.GPR, %struct.GPR* %1544, i32 0, i32 33
  %1546 = getelementptr inbounds %struct.Reg, %struct.Reg* %1545, i32 0, i32 0
  %PC.i1063 = bitcast %union.anon* %1546 to i64*
  %1547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1548 = getelementptr inbounds %struct.GPR, %struct.GPR* %1547, i32 0, i32 1
  %1549 = getelementptr inbounds %struct.Reg, %struct.Reg* %1548, i32 0, i32 0
  %RAX.i1064 = bitcast %union.anon* %1549 to i64*
  %1550 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1551 = getelementptr inbounds %struct.GPR, %struct.GPR* %1550, i32 0, i32 5
  %1552 = getelementptr inbounds %struct.Reg, %struct.Reg* %1551, i32 0, i32 0
  %RCX.i1065 = bitcast %union.anon* %1552 to i64*
  %1553 = load i64, i64* %RAX.i1064
  %1554 = load i64, i64* %RCX.i1065
  %1555 = mul i64 %1554, 4
  %1556 = add i64 %1555, %1553
  %1557 = load i64, i64* %PC.i1063
  %1558 = add i64 %1557, 7
  store i64 %1558, i64* %PC.i1063
  %1559 = inttoptr i64 %1556 to i32*
  store i32 -987654321, i32* %1559
  store %struct.Memory* %loadMem_4359c1, %struct.Memory** %MEMORY
  %loadMem_4359c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1561 = getelementptr inbounds %struct.GPR, %struct.GPR* %1560, i32 0, i32 33
  %1562 = getelementptr inbounds %struct.Reg, %struct.Reg* %1561, i32 0, i32 0
  %PC.i1060 = bitcast %union.anon* %1562 to i64*
  %1563 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1564 = getelementptr inbounds %struct.GPR, %struct.GPR* %1563, i32 0, i32 1
  %1565 = getelementptr inbounds %struct.Reg, %struct.Reg* %1564, i32 0, i32 0
  %RAX.i1061 = bitcast %union.anon* %1565 to i64*
  %1566 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1567 = getelementptr inbounds %struct.GPR, %struct.GPR* %1566, i32 0, i32 15
  %1568 = getelementptr inbounds %struct.Reg, %struct.Reg* %1567, i32 0, i32 0
  %RBP.i1062 = bitcast %union.anon* %1568 to i64*
  %1569 = load i64, i64* %RBP.i1062
  %1570 = sub i64 %1569, 64
  %1571 = load i64, i64* %PC.i1060
  %1572 = add i64 %1571, 4
  store i64 %1572, i64* %PC.i1060
  %1573 = inttoptr i64 %1570 to i64*
  %1574 = load i64, i64* %1573
  store i64 %1574, i64* %RAX.i1061, align 8
  store %struct.Memory* %loadMem_4359c8, %struct.Memory** %MEMORY
  %loadMem_4359cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1576 = getelementptr inbounds %struct.GPR, %struct.GPR* %1575, i32 0, i32 33
  %1577 = getelementptr inbounds %struct.Reg, %struct.Reg* %1576, i32 0, i32 0
  %PC.i1057 = bitcast %union.anon* %1577 to i64*
  %1578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1579 = getelementptr inbounds %struct.GPR, %struct.GPR* %1578, i32 0, i32 5
  %1580 = getelementptr inbounds %struct.Reg, %struct.Reg* %1579, i32 0, i32 0
  %RCX.i1058 = bitcast %union.anon* %1580 to i64*
  %1581 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1582 = getelementptr inbounds %struct.GPR, %struct.GPR* %1581, i32 0, i32 15
  %1583 = getelementptr inbounds %struct.Reg, %struct.Reg* %1582, i32 0, i32 0
  %RBP.i1059 = bitcast %union.anon* %1583 to i64*
  %1584 = load i64, i64* %RBP.i1059
  %1585 = sub i64 %1584, 12
  %1586 = load i64, i64* %PC.i1057
  %1587 = add i64 %1586, 4
  store i64 %1587, i64* %PC.i1057
  %1588 = inttoptr i64 %1585 to i32*
  %1589 = load i32, i32* %1588
  %1590 = sext i32 %1589 to i64
  store i64 %1590, i64* %RCX.i1058, align 8
  store %struct.Memory* %loadMem_4359cc, %struct.Memory** %MEMORY
  %loadMem_4359d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1592 = getelementptr inbounds %struct.GPR, %struct.GPR* %1591, i32 0, i32 33
  %1593 = getelementptr inbounds %struct.Reg, %struct.Reg* %1592, i32 0, i32 0
  %PC.i1054 = bitcast %union.anon* %1593 to i64*
  %1594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1595 = getelementptr inbounds %struct.GPR, %struct.GPR* %1594, i32 0, i32 1
  %1596 = getelementptr inbounds %struct.Reg, %struct.Reg* %1595, i32 0, i32 0
  %RAX.i1055 = bitcast %union.anon* %1596 to i64*
  %1597 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1598 = getelementptr inbounds %struct.GPR, %struct.GPR* %1597, i32 0, i32 5
  %1599 = getelementptr inbounds %struct.Reg, %struct.Reg* %1598, i32 0, i32 0
  %RCX.i1056 = bitcast %union.anon* %1599 to i64*
  %1600 = load i64, i64* %RAX.i1055
  %1601 = load i64, i64* %RCX.i1056
  %1602 = mul i64 %1601, 8
  %1603 = add i64 %1602, %1600
  %1604 = load i64, i64* %PC.i1054
  %1605 = add i64 %1604, 4
  store i64 %1605, i64* %PC.i1054
  %1606 = inttoptr i64 %1603 to i64*
  %1607 = load i64, i64* %1606
  store i64 %1607, i64* %RAX.i1055, align 8
  store %struct.Memory* %loadMem_4359d0, %struct.Memory** %MEMORY
  %loadMem_4359d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1609 = getelementptr inbounds %struct.GPR, %struct.GPR* %1608, i32 0, i32 33
  %1610 = getelementptr inbounds %struct.Reg, %struct.Reg* %1609, i32 0, i32 0
  %PC.i1051 = bitcast %union.anon* %1610 to i64*
  %1611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1612 = getelementptr inbounds %struct.GPR, %struct.GPR* %1611, i32 0, i32 5
  %1613 = getelementptr inbounds %struct.Reg, %struct.Reg* %1612, i32 0, i32 0
  %RCX.i1052 = bitcast %union.anon* %1613 to i64*
  %1614 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1615 = getelementptr inbounds %struct.GPR, %struct.GPR* %1614, i32 0, i32 15
  %1616 = getelementptr inbounds %struct.Reg, %struct.Reg* %1615, i32 0, i32 0
  %RBP.i1053 = bitcast %union.anon* %1616 to i64*
  %1617 = load i64, i64* %RBP.i1053
  %1618 = sub i64 %1617, 80
  %1619 = load i64, i64* %PC.i1051
  %1620 = add i64 %1619, 4
  store i64 %1620, i64* %PC.i1051
  %1621 = inttoptr i64 %1618 to i32*
  %1622 = load i32, i32* %1621
  %1623 = sext i32 %1622 to i64
  store i64 %1623, i64* %RCX.i1052, align 8
  store %struct.Memory* %loadMem_4359d4, %struct.Memory** %MEMORY
  %loadMem_4359d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1625 = getelementptr inbounds %struct.GPR, %struct.GPR* %1624, i32 0, i32 33
  %1626 = getelementptr inbounds %struct.Reg, %struct.Reg* %1625, i32 0, i32 0
  %PC.i1048 = bitcast %union.anon* %1626 to i64*
  %1627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1628 = getelementptr inbounds %struct.GPR, %struct.GPR* %1627, i32 0, i32 1
  %1629 = getelementptr inbounds %struct.Reg, %struct.Reg* %1628, i32 0, i32 0
  %RAX.i1049 = bitcast %union.anon* %1629 to i64*
  %1630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1631 = getelementptr inbounds %struct.GPR, %struct.GPR* %1630, i32 0, i32 5
  %1632 = getelementptr inbounds %struct.Reg, %struct.Reg* %1631, i32 0, i32 0
  %RCX.i1050 = bitcast %union.anon* %1632 to i64*
  %1633 = load i64, i64* %RAX.i1049
  %1634 = load i64, i64* %RCX.i1050
  %1635 = mul i64 %1634, 4
  %1636 = add i64 %1635, %1633
  %1637 = load i64, i64* %PC.i1048
  %1638 = add i64 %1637, 7
  store i64 %1638, i64* %PC.i1048
  %1639 = inttoptr i64 %1636 to i32*
  store i32 -987654321, i32* %1639
  store %struct.Memory* %loadMem_4359d8, %struct.Memory** %MEMORY
  %loadMem_4359df = load %struct.Memory*, %struct.Memory** %MEMORY
  %1640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1641 = getelementptr inbounds %struct.GPR, %struct.GPR* %1640, i32 0, i32 33
  %1642 = getelementptr inbounds %struct.Reg, %struct.Reg* %1641, i32 0, i32 0
  %PC.i1045 = bitcast %union.anon* %1642 to i64*
  %1643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1644 = getelementptr inbounds %struct.GPR, %struct.GPR* %1643, i32 0, i32 1
  %1645 = getelementptr inbounds %struct.Reg, %struct.Reg* %1644, i32 0, i32 0
  %RAX.i1046 = bitcast %union.anon* %1645 to i64*
  %1646 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1647 = getelementptr inbounds %struct.GPR, %struct.GPR* %1646, i32 0, i32 15
  %1648 = getelementptr inbounds %struct.Reg, %struct.Reg* %1647, i32 0, i32 0
  %RBP.i1047 = bitcast %union.anon* %1648 to i64*
  %1649 = load i64, i64* %RBP.i1047
  %1650 = sub i64 %1649, 80
  %1651 = load i64, i64* %PC.i1045
  %1652 = add i64 %1651, 3
  store i64 %1652, i64* %PC.i1045
  %1653 = inttoptr i64 %1650 to i32*
  %1654 = load i32, i32* %1653
  %1655 = zext i32 %1654 to i64
  store i64 %1655, i64* %RAX.i1046, align 8
  store %struct.Memory* %loadMem_4359df, %struct.Memory** %MEMORY
  %loadMem_4359e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1656 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1657 = getelementptr inbounds %struct.GPR, %struct.GPR* %1656, i32 0, i32 33
  %1658 = getelementptr inbounds %struct.Reg, %struct.Reg* %1657, i32 0, i32 0
  %PC.i1043 = bitcast %union.anon* %1658 to i64*
  %1659 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1660 = getelementptr inbounds %struct.GPR, %struct.GPR* %1659, i32 0, i32 1
  %1661 = getelementptr inbounds %struct.Reg, %struct.Reg* %1660, i32 0, i32 0
  %RAX.i1044 = bitcast %union.anon* %1661 to i64*
  %1662 = load i64, i64* %RAX.i1044
  %1663 = load i64, i64* %PC.i1043
  %1664 = add i64 %1663, 3
  store i64 %1664, i64* %PC.i1043
  %1665 = trunc i64 %1662 to i32
  %1666 = add i32 -1, %1665
  %1667 = zext i32 %1666 to i64
  store i64 %1667, i64* %RAX.i1044, align 8
  %1668 = icmp ult i32 %1666, %1665
  %1669 = icmp ult i32 %1666, -1
  %1670 = or i1 %1668, %1669
  %1671 = zext i1 %1670 to i8
  %1672 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1671, i8* %1672, align 1
  %1673 = and i32 %1666, 255
  %1674 = call i32 @llvm.ctpop.i32(i32 %1673)
  %1675 = trunc i32 %1674 to i8
  %1676 = and i8 %1675, 1
  %1677 = xor i8 %1676, 1
  %1678 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1677, i8* %1678, align 1
  %1679 = xor i64 -1, %1662
  %1680 = trunc i64 %1679 to i32
  %1681 = xor i32 %1680, %1666
  %1682 = lshr i32 %1681, 4
  %1683 = trunc i32 %1682 to i8
  %1684 = and i8 %1683, 1
  %1685 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1684, i8* %1685, align 1
  %1686 = icmp eq i32 %1666, 0
  %1687 = zext i1 %1686 to i8
  %1688 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1687, i8* %1688, align 1
  %1689 = lshr i32 %1666, 31
  %1690 = trunc i32 %1689 to i8
  %1691 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1690, i8* %1691, align 1
  %1692 = lshr i32 %1665, 31
  %1693 = xor i32 %1689, %1692
  %1694 = xor i32 %1689, 1
  %1695 = add i32 %1693, %1694
  %1696 = icmp eq i32 %1695, 2
  %1697 = zext i1 %1696 to i8
  %1698 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1697, i8* %1698, align 1
  store %struct.Memory* %loadMem_4359e2, %struct.Memory** %MEMORY
  %loadMem_4359e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1700 = getelementptr inbounds %struct.GPR, %struct.GPR* %1699, i32 0, i32 33
  %1701 = getelementptr inbounds %struct.Reg, %struct.Reg* %1700, i32 0, i32 0
  %PC.i1040 = bitcast %union.anon* %1701 to i64*
  %1702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1703 = getelementptr inbounds %struct.GPR, %struct.GPR* %1702, i32 0, i32 1
  %1704 = getelementptr inbounds %struct.Reg, %struct.Reg* %1703, i32 0, i32 0
  %EAX.i1041 = bitcast %union.anon* %1704 to i32*
  %1705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1706 = getelementptr inbounds %struct.GPR, %struct.GPR* %1705, i32 0, i32 15
  %1707 = getelementptr inbounds %struct.Reg, %struct.Reg* %1706, i32 0, i32 0
  %RBP.i1042 = bitcast %union.anon* %1707 to i64*
  %1708 = load i64, i64* %RBP.i1042
  %1709 = sub i64 %1708, 80
  %1710 = load i32, i32* %EAX.i1041
  %1711 = zext i32 %1710 to i64
  %1712 = load i64, i64* %PC.i1040
  %1713 = add i64 %1712, 3
  store i64 %1713, i64* %PC.i1040
  %1714 = inttoptr i64 %1709 to i32*
  store i32 %1710, i32* %1714
  store %struct.Memory* %loadMem_4359e5, %struct.Memory** %MEMORY
  %loadMem_4359e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1716 = getelementptr inbounds %struct.GPR, %struct.GPR* %1715, i32 0, i32 33
  %1717 = getelementptr inbounds %struct.Reg, %struct.Reg* %1716, i32 0, i32 0
  %PC.i1039 = bitcast %union.anon* %1717 to i64*
  %1718 = load i64, i64* %PC.i1039
  %1719 = add i64 %1718, -176
  %1720 = load i64, i64* %PC.i1039
  %1721 = add i64 %1720, 5
  store i64 %1721, i64* %PC.i1039
  %1722 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1719, i64* %1722, align 8
  store %struct.Memory* %loadMem_4359e8, %struct.Memory** %MEMORY
  br label %block_.L_435938

block_.L_4359ed:                                  ; preds = %block_.L_435938
  %loadMem_4359ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %1723 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1724 = getelementptr inbounds %struct.GPR, %struct.GPR* %1723, i32 0, i32 33
  %1725 = getelementptr inbounds %struct.Reg, %struct.Reg* %1724, i32 0, i32 0
  %PC.i1036 = bitcast %union.anon* %1725 to i64*
  %1726 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1727 = getelementptr inbounds %struct.GPR, %struct.GPR* %1726, i32 0, i32 1
  %1728 = getelementptr inbounds %struct.Reg, %struct.Reg* %1727, i32 0, i32 0
  %RAX.i1037 = bitcast %union.anon* %1728 to i64*
  %1729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1730 = getelementptr inbounds %struct.GPR, %struct.GPR* %1729, i32 0, i32 15
  %1731 = getelementptr inbounds %struct.Reg, %struct.Reg* %1730, i32 0, i32 0
  %RBP.i1038 = bitcast %union.anon* %1731 to i64*
  %1732 = load i64, i64* %RBP.i1038
  %1733 = sub i64 %1732, 24
  %1734 = load i64, i64* %PC.i1036
  %1735 = add i64 %1734, 4
  store i64 %1735, i64* %PC.i1036
  %1736 = inttoptr i64 %1733 to i64*
  %1737 = load i64, i64* %1736
  store i64 %1737, i64* %RAX.i1037, align 8
  store %struct.Memory* %loadMem_4359ed, %struct.Memory** %MEMORY
  %loadMem_4359f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1739 = getelementptr inbounds %struct.GPR, %struct.GPR* %1738, i32 0, i32 33
  %1740 = getelementptr inbounds %struct.Reg, %struct.Reg* %1739, i32 0, i32 0
  %PC.i1034 = bitcast %union.anon* %1740 to i64*
  %1741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1742 = getelementptr inbounds %struct.GPR, %struct.GPR* %1741, i32 0, i32 1
  %1743 = getelementptr inbounds %struct.Reg, %struct.Reg* %1742, i32 0, i32 0
  %RAX.i1035 = bitcast %union.anon* %1743 to i64*
  %1744 = load i64, i64* %RAX.i1035
  %1745 = add i64 %1744, 312
  %1746 = load i64, i64* %PC.i1034
  %1747 = add i64 %1746, 7
  store i64 %1747, i64* %PC.i1034
  %1748 = inttoptr i64 %1745 to i64*
  %1749 = load i64, i64* %1748
  store i64 %1749, i64* %RAX.i1035, align 8
  store %struct.Memory* %loadMem_4359f1, %struct.Memory** %MEMORY
  %loadMem_4359f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1750 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1751 = getelementptr inbounds %struct.GPR, %struct.GPR* %1750, i32 0, i32 33
  %1752 = getelementptr inbounds %struct.Reg, %struct.Reg* %1751, i32 0, i32 0
  %PC.i1032 = bitcast %union.anon* %1752 to i64*
  %1753 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1754 = getelementptr inbounds %struct.GPR, %struct.GPR* %1753, i32 0, i32 1
  %1755 = getelementptr inbounds %struct.Reg, %struct.Reg* %1754, i32 0, i32 0
  %RAX.i1033 = bitcast %union.anon* %1755 to i64*
  %1756 = load i64, i64* %RAX.i1033
  %1757 = add i64 %1756, 16
  %1758 = load i64, i64* %PC.i1032
  %1759 = add i64 %1758, 4
  store i64 %1759, i64* %PC.i1032
  %1760 = inttoptr i64 %1757 to i64*
  %1761 = load i64, i64* %1760
  store i64 %1761, i64* %RAX.i1033, align 8
  store %struct.Memory* %loadMem_4359f8, %struct.Memory** %MEMORY
  %loadMem_4359fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1762 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1763 = getelementptr inbounds %struct.GPR, %struct.GPR* %1762, i32 0, i32 33
  %1764 = getelementptr inbounds %struct.Reg, %struct.Reg* %1763, i32 0, i32 0
  %PC.i1029 = bitcast %union.anon* %1764 to i64*
  %1765 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1766 = getelementptr inbounds %struct.GPR, %struct.GPR* %1765, i32 0, i32 5
  %1767 = getelementptr inbounds %struct.Reg, %struct.Reg* %1766, i32 0, i32 0
  %RCX.i1030 = bitcast %union.anon* %1767 to i64*
  %1768 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1769 = getelementptr inbounds %struct.GPR, %struct.GPR* %1768, i32 0, i32 15
  %1770 = getelementptr inbounds %struct.Reg, %struct.Reg* %1769, i32 0, i32 0
  %RBP.i1031 = bitcast %union.anon* %1770 to i64*
  %1771 = load i64, i64* %RBP.i1031
  %1772 = sub i64 %1771, 24
  %1773 = load i64, i64* %PC.i1029
  %1774 = add i64 %1773, 4
  store i64 %1774, i64* %PC.i1029
  %1775 = inttoptr i64 %1772 to i64*
  %1776 = load i64, i64* %1775
  store i64 %1776, i64* %RCX.i1030, align 8
  store %struct.Memory* %loadMem_4359fc, %struct.Memory** %MEMORY
  %loadMem_435a00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1778 = getelementptr inbounds %struct.GPR, %struct.GPR* %1777, i32 0, i32 33
  %1779 = getelementptr inbounds %struct.Reg, %struct.Reg* %1778, i32 0, i32 0
  %PC.i1026 = bitcast %union.anon* %1779 to i64*
  %1780 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1781 = getelementptr inbounds %struct.GPR, %struct.GPR* %1780, i32 0, i32 5
  %1782 = getelementptr inbounds %struct.Reg, %struct.Reg* %1781, i32 0, i32 0
  %RCX.i1027 = bitcast %union.anon* %1782 to i64*
  %1783 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1784 = getelementptr inbounds %struct.GPR, %struct.GPR* %1783, i32 0, i32 7
  %1785 = getelementptr inbounds %struct.Reg, %struct.Reg* %1784, i32 0, i32 0
  %RDX.i1028 = bitcast %union.anon* %1785 to i64*
  %1786 = load i64, i64* %RCX.i1027
  %1787 = add i64 %1786, 136
  %1788 = load i64, i64* %PC.i1026
  %1789 = add i64 %1788, 6
  store i64 %1789, i64* %PC.i1026
  %1790 = inttoptr i64 %1787 to i32*
  %1791 = load i32, i32* %1790
  %1792 = zext i32 %1791 to i64
  store i64 %1792, i64* %RDX.i1028, align 8
  store %struct.Memory* %loadMem_435a00, %struct.Memory** %MEMORY
  %loadMem_435a06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1793 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1794 = getelementptr inbounds %struct.GPR, %struct.GPR* %1793, i32 0, i32 33
  %1795 = getelementptr inbounds %struct.Reg, %struct.Reg* %1794, i32 0, i32 0
  %PC.i1024 = bitcast %union.anon* %1795 to i64*
  %1796 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1797 = getelementptr inbounds %struct.GPR, %struct.GPR* %1796, i32 0, i32 7
  %1798 = getelementptr inbounds %struct.Reg, %struct.Reg* %1797, i32 0, i32 0
  %RDX.i1025 = bitcast %union.anon* %1798 to i64*
  %1799 = load i64, i64* %RDX.i1025
  %1800 = load i64, i64* %PC.i1024
  %1801 = add i64 %1800, 3
  store i64 %1801, i64* %PC.i1024
  %1802 = trunc i64 %1799 to i32
  %1803 = sub i32 %1802, 1
  %1804 = zext i32 %1803 to i64
  store i64 %1804, i64* %RDX.i1025, align 8
  %1805 = icmp ult i32 %1802, 1
  %1806 = zext i1 %1805 to i8
  %1807 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1806, i8* %1807, align 1
  %1808 = and i32 %1803, 255
  %1809 = call i32 @llvm.ctpop.i32(i32 %1808)
  %1810 = trunc i32 %1809 to i8
  %1811 = and i8 %1810, 1
  %1812 = xor i8 %1811, 1
  %1813 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1812, i8* %1813, align 1
  %1814 = xor i64 1, %1799
  %1815 = trunc i64 %1814 to i32
  %1816 = xor i32 %1815, %1803
  %1817 = lshr i32 %1816, 4
  %1818 = trunc i32 %1817 to i8
  %1819 = and i8 %1818, 1
  %1820 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1819, i8* %1820, align 1
  %1821 = icmp eq i32 %1803, 0
  %1822 = zext i1 %1821 to i8
  %1823 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1822, i8* %1823, align 1
  %1824 = lshr i32 %1803, 31
  %1825 = trunc i32 %1824 to i8
  %1826 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1825, i8* %1826, align 1
  %1827 = lshr i32 %1802, 31
  %1828 = xor i32 %1824, %1827
  %1829 = add i32 %1828, %1827
  %1830 = icmp eq i32 %1829, 2
  %1831 = zext i1 %1830 to i8
  %1832 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1831, i8* %1832, align 1
  store %struct.Memory* %loadMem_435a06, %struct.Memory** %MEMORY
  %loadMem_435a09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1833 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1834 = getelementptr inbounds %struct.GPR, %struct.GPR* %1833, i32 0, i32 33
  %1835 = getelementptr inbounds %struct.Reg, %struct.Reg* %1834, i32 0, i32 0
  %PC.i1021 = bitcast %union.anon* %1835 to i64*
  %1836 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1837 = getelementptr inbounds %struct.GPR, %struct.GPR* %1836, i32 0, i32 7
  %1838 = getelementptr inbounds %struct.Reg, %struct.Reg* %1837, i32 0, i32 0
  %EDX.i1022 = bitcast %union.anon* %1838 to i32*
  %1839 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1840 = getelementptr inbounds %struct.GPR, %struct.GPR* %1839, i32 0, i32 5
  %1841 = getelementptr inbounds %struct.Reg, %struct.Reg* %1840, i32 0, i32 0
  %RCX.i1023 = bitcast %union.anon* %1841 to i64*
  %1842 = load i32, i32* %EDX.i1022
  %1843 = zext i32 %1842 to i64
  %1844 = load i64, i64* %PC.i1021
  %1845 = add i64 %1844, 3
  store i64 %1845, i64* %PC.i1021
  %1846 = shl i64 %1843, 32
  %1847 = ashr exact i64 %1846, 32
  store i64 %1847, i64* %RCX.i1023, align 8
  store %struct.Memory* %loadMem_435a09, %struct.Memory** %MEMORY
  %loadMem_435a0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1849 = getelementptr inbounds %struct.GPR, %struct.GPR* %1848, i32 0, i32 33
  %1850 = getelementptr inbounds %struct.Reg, %struct.Reg* %1849, i32 0, i32 0
  %PC.i1018 = bitcast %union.anon* %1850 to i64*
  %1851 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1852 = getelementptr inbounds %struct.GPR, %struct.GPR* %1851, i32 0, i32 1
  %1853 = getelementptr inbounds %struct.Reg, %struct.Reg* %1852, i32 0, i32 0
  %RAX.i1019 = bitcast %union.anon* %1853 to i64*
  %1854 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1855 = getelementptr inbounds %struct.GPR, %struct.GPR* %1854, i32 0, i32 5
  %1856 = getelementptr inbounds %struct.Reg, %struct.Reg* %1855, i32 0, i32 0
  %RCX.i1020 = bitcast %union.anon* %1856 to i64*
  %1857 = load i64, i64* %RAX.i1019
  %1858 = load i64, i64* %RCX.i1020
  %1859 = mul i64 %1858, 4
  %1860 = add i64 %1859, %1857
  %1861 = load i64, i64* %PC.i1018
  %1862 = add i64 %1861, 7
  store i64 %1862, i64* %PC.i1018
  %1863 = inttoptr i64 %1860 to i32*
  store i32 -987654321, i32* %1863
  store %struct.Memory* %loadMem_435a0c, %struct.Memory** %MEMORY
  %loadMem_435a13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1864 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1865 = getelementptr inbounds %struct.GPR, %struct.GPR* %1864, i32 0, i32 33
  %1866 = getelementptr inbounds %struct.Reg, %struct.Reg* %1865, i32 0, i32 0
  %PC.i1015 = bitcast %union.anon* %1866 to i64*
  %1867 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1868 = getelementptr inbounds %struct.GPR, %struct.GPR* %1867, i32 0, i32 1
  %1869 = getelementptr inbounds %struct.Reg, %struct.Reg* %1868, i32 0, i32 0
  %RAX.i1016 = bitcast %union.anon* %1869 to i64*
  %1870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1871 = getelementptr inbounds %struct.GPR, %struct.GPR* %1870, i32 0, i32 15
  %1872 = getelementptr inbounds %struct.Reg, %struct.Reg* %1871, i32 0, i32 0
  %RBP.i1017 = bitcast %union.anon* %1872 to i64*
  %1873 = load i64, i64* %RBP.i1017
  %1874 = sub i64 %1873, 24
  %1875 = load i64, i64* %PC.i1015
  %1876 = add i64 %1875, 4
  store i64 %1876, i64* %PC.i1015
  %1877 = inttoptr i64 %1874 to i64*
  %1878 = load i64, i64* %1877
  store i64 %1878, i64* %RAX.i1016, align 8
  store %struct.Memory* %loadMem_435a13, %struct.Memory** %MEMORY
  %loadMem_435a17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1879 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1880 = getelementptr inbounds %struct.GPR, %struct.GPR* %1879, i32 0, i32 33
  %1881 = getelementptr inbounds %struct.Reg, %struct.Reg* %1880, i32 0, i32 0
  %PC.i1013 = bitcast %union.anon* %1881 to i64*
  %1882 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1883 = getelementptr inbounds %struct.GPR, %struct.GPR* %1882, i32 0, i32 1
  %1884 = getelementptr inbounds %struct.Reg, %struct.Reg* %1883, i32 0, i32 0
  %RAX.i1014 = bitcast %union.anon* %1884 to i64*
  %1885 = load i64, i64* %RAX.i1014
  %1886 = add i64 %1885, 312
  %1887 = load i64, i64* %PC.i1013
  %1888 = add i64 %1887, 7
  store i64 %1888, i64* %PC.i1013
  %1889 = inttoptr i64 %1886 to i64*
  %1890 = load i64, i64* %1889
  store i64 %1890, i64* %RAX.i1014, align 8
  store %struct.Memory* %loadMem_435a17, %struct.Memory** %MEMORY
  %loadMem_435a1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1891 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1892 = getelementptr inbounds %struct.GPR, %struct.GPR* %1891, i32 0, i32 33
  %1893 = getelementptr inbounds %struct.Reg, %struct.Reg* %1892, i32 0, i32 0
  %PC.i1011 = bitcast %union.anon* %1893 to i64*
  %1894 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1895 = getelementptr inbounds %struct.GPR, %struct.GPR* %1894, i32 0, i32 1
  %1896 = getelementptr inbounds %struct.Reg, %struct.Reg* %1895, i32 0, i32 0
  %RAX.i1012 = bitcast %union.anon* %1896 to i64*
  %1897 = load i64, i64* %RAX.i1012
  %1898 = add i64 %1897, 48
  %1899 = load i64, i64* %PC.i1011
  %1900 = add i64 %1899, 4
  store i64 %1900, i64* %PC.i1011
  %1901 = inttoptr i64 %1898 to i64*
  %1902 = load i64, i64* %1901
  store i64 %1902, i64* %RAX.i1012, align 8
  store %struct.Memory* %loadMem_435a1e, %struct.Memory** %MEMORY
  %loadMem_435a22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1903 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1904 = getelementptr inbounds %struct.GPR, %struct.GPR* %1903, i32 0, i32 33
  %1905 = getelementptr inbounds %struct.Reg, %struct.Reg* %1904, i32 0, i32 0
  %PC.i1008 = bitcast %union.anon* %1905 to i64*
  %1906 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1907 = getelementptr inbounds %struct.GPR, %struct.GPR* %1906, i32 0, i32 5
  %1908 = getelementptr inbounds %struct.Reg, %struct.Reg* %1907, i32 0, i32 0
  %RCX.i1009 = bitcast %union.anon* %1908 to i64*
  %1909 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1910 = getelementptr inbounds %struct.GPR, %struct.GPR* %1909, i32 0, i32 15
  %1911 = getelementptr inbounds %struct.Reg, %struct.Reg* %1910, i32 0, i32 0
  %RBP.i1010 = bitcast %union.anon* %1911 to i64*
  %1912 = load i64, i64* %RBP.i1010
  %1913 = sub i64 %1912, 24
  %1914 = load i64, i64* %PC.i1008
  %1915 = add i64 %1914, 4
  store i64 %1915, i64* %PC.i1008
  %1916 = inttoptr i64 %1913 to i64*
  %1917 = load i64, i64* %1916
  store i64 %1917, i64* %RCX.i1009, align 8
  store %struct.Memory* %loadMem_435a22, %struct.Memory** %MEMORY
  %loadMem_435a26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1918 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1919 = getelementptr inbounds %struct.GPR, %struct.GPR* %1918, i32 0, i32 33
  %1920 = getelementptr inbounds %struct.Reg, %struct.Reg* %1919, i32 0, i32 0
  %PC.i1005 = bitcast %union.anon* %1920 to i64*
  %1921 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1922 = getelementptr inbounds %struct.GPR, %struct.GPR* %1921, i32 0, i32 5
  %1923 = getelementptr inbounds %struct.Reg, %struct.Reg* %1922, i32 0, i32 0
  %RCX.i1006 = bitcast %union.anon* %1923 to i64*
  %1924 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1925 = getelementptr inbounds %struct.GPR, %struct.GPR* %1924, i32 0, i32 7
  %1926 = getelementptr inbounds %struct.Reg, %struct.Reg* %1925, i32 0, i32 0
  %RDX.i1007 = bitcast %union.anon* %1926 to i64*
  %1927 = load i64, i64* %RCX.i1006
  %1928 = add i64 %1927, 136
  %1929 = load i64, i64* %PC.i1005
  %1930 = add i64 %1929, 6
  store i64 %1930, i64* %PC.i1005
  %1931 = inttoptr i64 %1928 to i32*
  %1932 = load i32, i32* %1931
  %1933 = zext i32 %1932 to i64
  store i64 %1933, i64* %RDX.i1007, align 8
  store %struct.Memory* %loadMem_435a26, %struct.Memory** %MEMORY
  %loadMem_435a2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1935 = getelementptr inbounds %struct.GPR, %struct.GPR* %1934, i32 0, i32 33
  %1936 = getelementptr inbounds %struct.Reg, %struct.Reg* %1935, i32 0, i32 0
  %PC.i1003 = bitcast %union.anon* %1936 to i64*
  %1937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1938 = getelementptr inbounds %struct.GPR, %struct.GPR* %1937, i32 0, i32 7
  %1939 = getelementptr inbounds %struct.Reg, %struct.Reg* %1938, i32 0, i32 0
  %RDX.i1004 = bitcast %union.anon* %1939 to i64*
  %1940 = load i64, i64* %RDX.i1004
  %1941 = load i64, i64* %PC.i1003
  %1942 = add i64 %1941, 3
  store i64 %1942, i64* %PC.i1003
  %1943 = trunc i64 %1940 to i32
  %1944 = sub i32 %1943, 1
  %1945 = zext i32 %1944 to i64
  store i64 %1945, i64* %RDX.i1004, align 8
  %1946 = icmp ult i32 %1943, 1
  %1947 = zext i1 %1946 to i8
  %1948 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1947, i8* %1948, align 1
  %1949 = and i32 %1944, 255
  %1950 = call i32 @llvm.ctpop.i32(i32 %1949)
  %1951 = trunc i32 %1950 to i8
  %1952 = and i8 %1951, 1
  %1953 = xor i8 %1952, 1
  %1954 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1953, i8* %1954, align 1
  %1955 = xor i64 1, %1940
  %1956 = trunc i64 %1955 to i32
  %1957 = xor i32 %1956, %1944
  %1958 = lshr i32 %1957, 4
  %1959 = trunc i32 %1958 to i8
  %1960 = and i8 %1959, 1
  %1961 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1960, i8* %1961, align 1
  %1962 = icmp eq i32 %1944, 0
  %1963 = zext i1 %1962 to i8
  %1964 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1963, i8* %1964, align 1
  %1965 = lshr i32 %1944, 31
  %1966 = trunc i32 %1965 to i8
  %1967 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1966, i8* %1967, align 1
  %1968 = lshr i32 %1943, 31
  %1969 = xor i32 %1965, %1968
  %1970 = add i32 %1969, %1968
  %1971 = icmp eq i32 %1970, 2
  %1972 = zext i1 %1971 to i8
  %1973 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1972, i8* %1973, align 1
  store %struct.Memory* %loadMem_435a2c, %struct.Memory** %MEMORY
  %loadMem_435a2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1975 = getelementptr inbounds %struct.GPR, %struct.GPR* %1974, i32 0, i32 33
  %1976 = getelementptr inbounds %struct.Reg, %struct.Reg* %1975, i32 0, i32 0
  %PC.i1000 = bitcast %union.anon* %1976 to i64*
  %1977 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1978 = getelementptr inbounds %struct.GPR, %struct.GPR* %1977, i32 0, i32 7
  %1979 = getelementptr inbounds %struct.Reg, %struct.Reg* %1978, i32 0, i32 0
  %EDX.i1001 = bitcast %union.anon* %1979 to i32*
  %1980 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1981 = getelementptr inbounds %struct.GPR, %struct.GPR* %1980, i32 0, i32 5
  %1982 = getelementptr inbounds %struct.Reg, %struct.Reg* %1981, i32 0, i32 0
  %RCX.i1002 = bitcast %union.anon* %1982 to i64*
  %1983 = load i32, i32* %EDX.i1001
  %1984 = zext i32 %1983 to i64
  %1985 = load i64, i64* %PC.i1000
  %1986 = add i64 %1985, 3
  store i64 %1986, i64* %PC.i1000
  %1987 = shl i64 %1984, 32
  %1988 = ashr exact i64 %1987, 32
  store i64 %1988, i64* %RCX.i1002, align 8
  store %struct.Memory* %loadMem_435a2f, %struct.Memory** %MEMORY
  %loadMem_435a32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1990 = getelementptr inbounds %struct.GPR, %struct.GPR* %1989, i32 0, i32 33
  %1991 = getelementptr inbounds %struct.Reg, %struct.Reg* %1990, i32 0, i32 0
  %PC.i997 = bitcast %union.anon* %1991 to i64*
  %1992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1993 = getelementptr inbounds %struct.GPR, %struct.GPR* %1992, i32 0, i32 1
  %1994 = getelementptr inbounds %struct.Reg, %struct.Reg* %1993, i32 0, i32 0
  %RAX.i998 = bitcast %union.anon* %1994 to i64*
  %1995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1996 = getelementptr inbounds %struct.GPR, %struct.GPR* %1995, i32 0, i32 5
  %1997 = getelementptr inbounds %struct.Reg, %struct.Reg* %1996, i32 0, i32 0
  %RCX.i999 = bitcast %union.anon* %1997 to i64*
  %1998 = load i64, i64* %RAX.i998
  %1999 = load i64, i64* %RCX.i999
  %2000 = mul i64 %1999, 4
  %2001 = add i64 %2000, %1998
  %2002 = load i64, i64* %PC.i997
  %2003 = add i64 %2002, 7
  store i64 %2003, i64* %PC.i997
  %2004 = inttoptr i64 %2001 to i32*
  store i32 -987654321, i32* %2004
  store %struct.Memory* %loadMem_435a32, %struct.Memory** %MEMORY
  %loadMem_435a39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2005 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2006 = getelementptr inbounds %struct.GPR, %struct.GPR* %2005, i32 0, i32 33
  %2007 = getelementptr inbounds %struct.Reg, %struct.Reg* %2006, i32 0, i32 0
  %PC.i994 = bitcast %union.anon* %2007 to i64*
  %2008 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2009 = getelementptr inbounds %struct.GPR, %struct.GPR* %2008, i32 0, i32 7
  %2010 = getelementptr inbounds %struct.Reg, %struct.Reg* %2009, i32 0, i32 0
  %RDX.i995 = bitcast %union.anon* %2010 to i64*
  %2011 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2012 = getelementptr inbounds %struct.GPR, %struct.GPR* %2011, i32 0, i32 15
  %2013 = getelementptr inbounds %struct.Reg, %struct.Reg* %2012, i32 0, i32 0
  %RBP.i996 = bitcast %union.anon* %2013 to i64*
  %2014 = load i64, i64* %RBP.i996
  %2015 = sub i64 %2014, 12
  %2016 = load i64, i64* %PC.i994
  %2017 = add i64 %2016, 3
  store i64 %2017, i64* %PC.i994
  %2018 = inttoptr i64 %2015 to i32*
  %2019 = load i32, i32* %2018
  %2020 = zext i32 %2019 to i64
  store i64 %2020, i64* %RDX.i995, align 8
  store %struct.Memory* %loadMem_435a39, %struct.Memory** %MEMORY
  %loadMem_435a3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2021 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2022 = getelementptr inbounds %struct.GPR, %struct.GPR* %2021, i32 0, i32 33
  %2023 = getelementptr inbounds %struct.Reg, %struct.Reg* %2022, i32 0, i32 0
  %PC.i992 = bitcast %union.anon* %2023 to i64*
  %2024 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2025 = getelementptr inbounds %struct.GPR, %struct.GPR* %2024, i32 0, i32 7
  %2026 = getelementptr inbounds %struct.Reg, %struct.Reg* %2025, i32 0, i32 0
  %RDX.i993 = bitcast %union.anon* %2026 to i64*
  %2027 = load i64, i64* %RDX.i993
  %2028 = load i64, i64* %PC.i992
  %2029 = add i64 %2028, 3
  store i64 %2029, i64* %PC.i992
  %2030 = trunc i64 %2027 to i32
  %2031 = sub i32 %2030, 1
  %2032 = zext i32 %2031 to i64
  store i64 %2032, i64* %RDX.i993, align 8
  %2033 = icmp ult i32 %2030, 1
  %2034 = zext i1 %2033 to i8
  %2035 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2034, i8* %2035, align 1
  %2036 = and i32 %2031, 255
  %2037 = call i32 @llvm.ctpop.i32(i32 %2036)
  %2038 = trunc i32 %2037 to i8
  %2039 = and i8 %2038, 1
  %2040 = xor i8 %2039, 1
  %2041 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2040, i8* %2041, align 1
  %2042 = xor i64 1, %2027
  %2043 = trunc i64 %2042 to i32
  %2044 = xor i32 %2043, %2031
  %2045 = lshr i32 %2044, 4
  %2046 = trunc i32 %2045 to i8
  %2047 = and i8 %2046, 1
  %2048 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2047, i8* %2048, align 1
  %2049 = icmp eq i32 %2031, 0
  %2050 = zext i1 %2049 to i8
  %2051 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2050, i8* %2051, align 1
  %2052 = lshr i32 %2031, 31
  %2053 = trunc i32 %2052 to i8
  %2054 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2053, i8* %2054, align 1
  %2055 = lshr i32 %2030, 31
  %2056 = xor i32 %2052, %2055
  %2057 = add i32 %2056, %2055
  %2058 = icmp eq i32 %2057, 2
  %2059 = zext i1 %2058 to i8
  %2060 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2059, i8* %2060, align 1
  store %struct.Memory* %loadMem_435a3c, %struct.Memory** %MEMORY
  %loadMem_435a3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2062 = getelementptr inbounds %struct.GPR, %struct.GPR* %2061, i32 0, i32 33
  %2063 = getelementptr inbounds %struct.Reg, %struct.Reg* %2062, i32 0, i32 0
  %PC.i989 = bitcast %union.anon* %2063 to i64*
  %2064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2065 = getelementptr inbounds %struct.GPR, %struct.GPR* %2064, i32 0, i32 7
  %2066 = getelementptr inbounds %struct.Reg, %struct.Reg* %2065, i32 0, i32 0
  %EDX.i990 = bitcast %union.anon* %2066 to i32*
  %2067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2068 = getelementptr inbounds %struct.GPR, %struct.GPR* %2067, i32 0, i32 15
  %2069 = getelementptr inbounds %struct.Reg, %struct.Reg* %2068, i32 0, i32 0
  %RBP.i991 = bitcast %union.anon* %2069 to i64*
  %2070 = load i64, i64* %RBP.i991
  %2071 = sub i64 %2070, 76
  %2072 = load i32, i32* %EDX.i990
  %2073 = zext i32 %2072 to i64
  %2074 = load i64, i64* %PC.i989
  %2075 = add i64 %2074, 3
  store i64 %2075, i64* %PC.i989
  %2076 = inttoptr i64 %2071 to i32*
  store i32 %2072, i32* %2076
  store %struct.Memory* %loadMem_435a3f, %struct.Memory** %MEMORY
  br label %block_.L_435a42

block_.L_435a42:                                  ; preds = %block_.L_435f70, %block_.L_4359ed
  %loadMem_435a42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2078 = getelementptr inbounds %struct.GPR, %struct.GPR* %2077, i32 0, i32 33
  %2079 = getelementptr inbounds %struct.Reg, %struct.Reg* %2078, i32 0, i32 0
  %PC.i987 = bitcast %union.anon* %2079 to i64*
  %2080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2081 = getelementptr inbounds %struct.GPR, %struct.GPR* %2080, i32 0, i32 15
  %2082 = getelementptr inbounds %struct.Reg, %struct.Reg* %2081, i32 0, i32 0
  %RBP.i988 = bitcast %union.anon* %2082 to i64*
  %2083 = load i64, i64* %RBP.i988
  %2084 = sub i64 %2083, 76
  %2085 = load i64, i64* %PC.i987
  %2086 = add i64 %2085, 4
  store i64 %2086, i64* %PC.i987
  %2087 = inttoptr i64 %2084 to i32*
  %2088 = load i32, i32* %2087
  %2089 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2089, align 1
  %2090 = and i32 %2088, 255
  %2091 = call i32 @llvm.ctpop.i32(i32 %2090)
  %2092 = trunc i32 %2091 to i8
  %2093 = and i8 %2092, 1
  %2094 = xor i8 %2093, 1
  %2095 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2094, i8* %2095, align 1
  %2096 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2096, align 1
  %2097 = icmp eq i32 %2088, 0
  %2098 = zext i1 %2097 to i8
  %2099 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2098, i8* %2099, align 1
  %2100 = lshr i32 %2088, 31
  %2101 = trunc i32 %2100 to i8
  %2102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2101, i8* %2102, align 1
  %2103 = lshr i32 %2088, 31
  %2104 = xor i32 %2100, %2103
  %2105 = add i32 %2104, %2103
  %2106 = icmp eq i32 %2105, 2
  %2107 = zext i1 %2106 to i8
  %2108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2107, i8* %2108, align 1
  store %struct.Memory* %loadMem_435a42, %struct.Memory** %MEMORY
  %loadMem_435a46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2110 = getelementptr inbounds %struct.GPR, %struct.GPR* %2109, i32 0, i32 33
  %2111 = getelementptr inbounds %struct.Reg, %struct.Reg* %2110, i32 0, i32 0
  %PC.i986 = bitcast %union.anon* %2111 to i64*
  %2112 = load i64, i64* %PC.i986
  %2113 = add i64 %2112, 1336
  %2114 = load i64, i64* %PC.i986
  %2115 = add i64 %2114, 6
  %2116 = load i64, i64* %PC.i986
  %2117 = add i64 %2116, 6
  store i64 %2117, i64* %PC.i986
  %2118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2119 = load i8, i8* %2118, align 1
  %2120 = icmp ne i8 %2119, 0
  %2121 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2122 = load i8, i8* %2121, align 1
  %2123 = icmp ne i8 %2122, 0
  %2124 = xor i1 %2120, %2123
  %2125 = zext i1 %2124 to i8
  store i8 %2125, i8* %BRANCH_TAKEN, align 1
  %2126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2127 = select i1 %2124, i64 %2113, i64 %2115
  store i64 %2127, i64* %2126, align 8
  store %struct.Memory* %loadMem_435a46, %struct.Memory** %MEMORY
  %loadBr_435a46 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_435a46 = icmp eq i8 %loadBr_435a46, 1
  br i1 %cmpBr_435a46, label %block_.L_435f7e, label %block_435a4c

block_435a4c:                                     ; preds = %block_.L_435a42
  %loadMem_435a4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2129 = getelementptr inbounds %struct.GPR, %struct.GPR* %2128, i32 0, i32 33
  %2130 = getelementptr inbounds %struct.Reg, %struct.Reg* %2129, i32 0, i32 0
  %PC.i983 = bitcast %union.anon* %2130 to i64*
  %2131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2132 = getelementptr inbounds %struct.GPR, %struct.GPR* %2131, i32 0, i32 1
  %2133 = getelementptr inbounds %struct.Reg, %struct.Reg* %2132, i32 0, i32 0
  %RAX.i984 = bitcast %union.anon* %2133 to i64*
  %2134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2135 = getelementptr inbounds %struct.GPR, %struct.GPR* %2134, i32 0, i32 15
  %2136 = getelementptr inbounds %struct.Reg, %struct.Reg* %2135, i32 0, i32 0
  %RBP.i985 = bitcast %union.anon* %2136 to i64*
  %2137 = load i64, i64* %RBP.i985
  %2138 = sub i64 %2137, 48
  %2139 = load i64, i64* %PC.i983
  %2140 = add i64 %2139, 4
  store i64 %2140, i64* %PC.i983
  %2141 = inttoptr i64 %2138 to i64*
  %2142 = load i64, i64* %2141
  store i64 %2142, i64* %RAX.i984, align 8
  store %struct.Memory* %loadMem_435a4c, %struct.Memory** %MEMORY
  %loadMem_435a50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2144 = getelementptr inbounds %struct.GPR, %struct.GPR* %2143, i32 0, i32 33
  %2145 = getelementptr inbounds %struct.Reg, %struct.Reg* %2144, i32 0, i32 0
  %PC.i980 = bitcast %union.anon* %2145 to i64*
  %2146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2147 = getelementptr inbounds %struct.GPR, %struct.GPR* %2146, i32 0, i32 5
  %2148 = getelementptr inbounds %struct.Reg, %struct.Reg* %2147, i32 0, i32 0
  %RCX.i981 = bitcast %union.anon* %2148 to i64*
  %2149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2150 = getelementptr inbounds %struct.GPR, %struct.GPR* %2149, i32 0, i32 15
  %2151 = getelementptr inbounds %struct.Reg, %struct.Reg* %2150, i32 0, i32 0
  %RBP.i982 = bitcast %union.anon* %2151 to i64*
  %2152 = load i64, i64* %RBP.i982
  %2153 = sub i64 %2152, 76
  %2154 = load i64, i64* %PC.i980
  %2155 = add i64 %2154, 3
  store i64 %2155, i64* %PC.i980
  %2156 = inttoptr i64 %2153 to i32*
  %2157 = load i32, i32* %2156
  %2158 = zext i32 %2157 to i64
  store i64 %2158, i64* %RCX.i981, align 8
  store %struct.Memory* %loadMem_435a50, %struct.Memory** %MEMORY
  %loadMem_435a53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2160 = getelementptr inbounds %struct.GPR, %struct.GPR* %2159, i32 0, i32 33
  %2161 = getelementptr inbounds %struct.Reg, %struct.Reg* %2160, i32 0, i32 0
  %PC.i978 = bitcast %union.anon* %2161 to i64*
  %2162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2163 = getelementptr inbounds %struct.GPR, %struct.GPR* %2162, i32 0, i32 5
  %2164 = getelementptr inbounds %struct.Reg, %struct.Reg* %2163, i32 0, i32 0
  %RCX.i979 = bitcast %union.anon* %2164 to i64*
  %2165 = load i64, i64* %RCX.i979
  %2166 = load i64, i64* %PC.i978
  %2167 = add i64 %2166, 3
  store i64 %2167, i64* %PC.i978
  %2168 = trunc i64 %2165 to i32
  %2169 = add i32 1, %2168
  %2170 = zext i32 %2169 to i64
  store i64 %2170, i64* %RCX.i979, align 8
  %2171 = icmp ult i32 %2169, %2168
  %2172 = icmp ult i32 %2169, 1
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
  %2182 = xor i64 1, %2165
  %2183 = trunc i64 %2182 to i32
  %2184 = xor i32 %2183, %2169
  %2185 = lshr i32 %2184, 4
  %2186 = trunc i32 %2185 to i8
  %2187 = and i8 %2186, 1
  %2188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2187, i8* %2188, align 1
  %2189 = icmp eq i32 %2169, 0
  %2190 = zext i1 %2189 to i8
  %2191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2190, i8* %2191, align 1
  %2192 = lshr i32 %2169, 31
  %2193 = trunc i32 %2192 to i8
  %2194 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2193, i8* %2194, align 1
  %2195 = lshr i32 %2168, 31
  %2196 = xor i32 %2192, %2195
  %2197 = add i32 %2196, %2192
  %2198 = icmp eq i32 %2197, 2
  %2199 = zext i1 %2198 to i8
  %2200 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2199, i8* %2200, align 1
  store %struct.Memory* %loadMem_435a53, %struct.Memory** %MEMORY
  %loadMem_435a56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2202 = getelementptr inbounds %struct.GPR, %struct.GPR* %2201, i32 0, i32 33
  %2203 = getelementptr inbounds %struct.Reg, %struct.Reg* %2202, i32 0, i32 0
  %PC.i975 = bitcast %union.anon* %2203 to i64*
  %2204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2205 = getelementptr inbounds %struct.GPR, %struct.GPR* %2204, i32 0, i32 5
  %2206 = getelementptr inbounds %struct.Reg, %struct.Reg* %2205, i32 0, i32 0
  %ECX.i976 = bitcast %union.anon* %2206 to i32*
  %2207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2208 = getelementptr inbounds %struct.GPR, %struct.GPR* %2207, i32 0, i32 7
  %2209 = getelementptr inbounds %struct.Reg, %struct.Reg* %2208, i32 0, i32 0
  %RDX.i977 = bitcast %union.anon* %2209 to i64*
  %2210 = load i32, i32* %ECX.i976
  %2211 = zext i32 %2210 to i64
  %2212 = load i64, i64* %PC.i975
  %2213 = add i64 %2212, 3
  store i64 %2213, i64* %PC.i975
  %2214 = shl i64 %2211, 32
  %2215 = ashr exact i64 %2214, 32
  store i64 %2215, i64* %RDX.i977, align 8
  store %struct.Memory* %loadMem_435a56, %struct.Memory** %MEMORY
  %loadMem_435a59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2217 = getelementptr inbounds %struct.GPR, %struct.GPR* %2216, i32 0, i32 33
  %2218 = getelementptr inbounds %struct.Reg, %struct.Reg* %2217, i32 0, i32 0
  %PC.i972 = bitcast %union.anon* %2218 to i64*
  %2219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2220 = getelementptr inbounds %struct.GPR, %struct.GPR* %2219, i32 0, i32 1
  %2221 = getelementptr inbounds %struct.Reg, %struct.Reg* %2220, i32 0, i32 0
  %RAX.i973 = bitcast %union.anon* %2221 to i64*
  %2222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2223 = getelementptr inbounds %struct.GPR, %struct.GPR* %2222, i32 0, i32 7
  %2224 = getelementptr inbounds %struct.Reg, %struct.Reg* %2223, i32 0, i32 0
  %RDX.i974 = bitcast %union.anon* %2224 to i64*
  %2225 = load i64, i64* %RAX.i973
  %2226 = load i64, i64* %RDX.i974
  %2227 = mul i64 %2226, 8
  %2228 = add i64 %2227, %2225
  %2229 = load i64, i64* %PC.i972
  %2230 = add i64 %2229, 4
  store i64 %2230, i64* %PC.i972
  %2231 = inttoptr i64 %2228 to i64*
  %2232 = load i64, i64* %2231
  store i64 %2232, i64* %RAX.i973, align 8
  store %struct.Memory* %loadMem_435a59, %struct.Memory** %MEMORY
  %loadMem_435a5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2234 = getelementptr inbounds %struct.GPR, %struct.GPR* %2233, i32 0, i32 33
  %2235 = getelementptr inbounds %struct.Reg, %struct.Reg* %2234, i32 0, i32 0
  %PC.i969 = bitcast %union.anon* %2235 to i64*
  %2236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2237 = getelementptr inbounds %struct.GPR, %struct.GPR* %2236, i32 0, i32 1
  %2238 = getelementptr inbounds %struct.Reg, %struct.Reg* %2237, i32 0, i32 0
  %RAX.i970 = bitcast %union.anon* %2238 to i64*
  %2239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2240 = getelementptr inbounds %struct.GPR, %struct.GPR* %2239, i32 0, i32 5
  %2241 = getelementptr inbounds %struct.Reg, %struct.Reg* %2240, i32 0, i32 0
  %RCX.i971 = bitcast %union.anon* %2241 to i64*
  %2242 = load i64, i64* %RAX.i970
  %2243 = add i64 %2242, 8
  %2244 = load i64, i64* %PC.i969
  %2245 = add i64 %2244, 3
  store i64 %2245, i64* %PC.i969
  %2246 = inttoptr i64 %2243 to i32*
  %2247 = load i32, i32* %2246
  %2248 = zext i32 %2247 to i64
  store i64 %2248, i64* %RCX.i971, align 8
  store %struct.Memory* %loadMem_435a5d, %struct.Memory** %MEMORY
  %loadMem_435a60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2250 = getelementptr inbounds %struct.GPR, %struct.GPR* %2249, i32 0, i32 33
  %2251 = getelementptr inbounds %struct.Reg, %struct.Reg* %2250, i32 0, i32 0
  %PC.i966 = bitcast %union.anon* %2251 to i64*
  %2252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2253 = getelementptr inbounds %struct.GPR, %struct.GPR* %2252, i32 0, i32 1
  %2254 = getelementptr inbounds %struct.Reg, %struct.Reg* %2253, i32 0, i32 0
  %RAX.i967 = bitcast %union.anon* %2254 to i64*
  %2255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2256 = getelementptr inbounds %struct.GPR, %struct.GPR* %2255, i32 0, i32 15
  %2257 = getelementptr inbounds %struct.Reg, %struct.Reg* %2256, i32 0, i32 0
  %RBP.i968 = bitcast %union.anon* %2257 to i64*
  %2258 = load i64, i64* %RBP.i968
  %2259 = sub i64 %2258, 24
  %2260 = load i64, i64* %PC.i966
  %2261 = add i64 %2260, 4
  store i64 %2261, i64* %PC.i966
  %2262 = inttoptr i64 %2259 to i64*
  %2263 = load i64, i64* %2262
  store i64 %2263, i64* %RAX.i967, align 8
  store %struct.Memory* %loadMem_435a60, %struct.Memory** %MEMORY
  %loadMem_435a64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2265 = getelementptr inbounds %struct.GPR, %struct.GPR* %2264, i32 0, i32 33
  %2266 = getelementptr inbounds %struct.Reg, %struct.Reg* %2265, i32 0, i32 0
  %PC.i963 = bitcast %union.anon* %2266 to i64*
  %2267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2268 = getelementptr inbounds %struct.GPR, %struct.GPR* %2267, i32 0, i32 1
  %2269 = getelementptr inbounds %struct.Reg, %struct.Reg* %2268, i32 0, i32 0
  %RAX.i964 = bitcast %union.anon* %2269 to i64*
  %2270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2271 = getelementptr inbounds %struct.GPR, %struct.GPR* %2270, i32 0, i32 5
  %2272 = getelementptr inbounds %struct.Reg, %struct.Reg* %2271, i32 0, i32 0
  %RCX.i965 = bitcast %union.anon* %2272 to i64*
  %2273 = load i64, i64* %RCX.i965
  %2274 = load i64, i64* %RAX.i964
  %2275 = add i64 %2274, 356
  %2276 = load i64, i64* %PC.i963
  %2277 = add i64 %2276, 6
  store i64 %2277, i64* %PC.i963
  %2278 = trunc i64 %2273 to i32
  %2279 = inttoptr i64 %2275 to i32*
  %2280 = load i32, i32* %2279
  %2281 = add i32 %2280, %2278
  %2282 = zext i32 %2281 to i64
  store i64 %2282, i64* %RCX.i965, align 8
  %2283 = icmp ult i32 %2281, %2278
  %2284 = icmp ult i32 %2281, %2280
  %2285 = or i1 %2283, %2284
  %2286 = zext i1 %2285 to i8
  %2287 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2286, i8* %2287, align 1
  %2288 = and i32 %2281, 255
  %2289 = call i32 @llvm.ctpop.i32(i32 %2288)
  %2290 = trunc i32 %2289 to i8
  %2291 = and i8 %2290, 1
  %2292 = xor i8 %2291, 1
  %2293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2292, i8* %2293, align 1
  %2294 = xor i32 %2280, %2278
  %2295 = xor i32 %2294, %2281
  %2296 = lshr i32 %2295, 4
  %2297 = trunc i32 %2296 to i8
  %2298 = and i8 %2297, 1
  %2299 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2298, i8* %2299, align 1
  %2300 = icmp eq i32 %2281, 0
  %2301 = zext i1 %2300 to i8
  %2302 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2301, i8* %2302, align 1
  %2303 = lshr i32 %2281, 31
  %2304 = trunc i32 %2303 to i8
  %2305 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2304, i8* %2305, align 1
  %2306 = lshr i32 %2278, 31
  %2307 = lshr i32 %2280, 31
  %2308 = xor i32 %2303, %2306
  %2309 = xor i32 %2303, %2307
  %2310 = add i32 %2308, %2309
  %2311 = icmp eq i32 %2310, 2
  %2312 = zext i1 %2311 to i8
  %2313 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2312, i8* %2313, align 1
  store %struct.Memory* %loadMem_435a64, %struct.Memory** %MEMORY
  %loadMem_435a6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2315 = getelementptr inbounds %struct.GPR, %struct.GPR* %2314, i32 0, i32 33
  %2316 = getelementptr inbounds %struct.Reg, %struct.Reg* %2315, i32 0, i32 0
  %PC.i960 = bitcast %union.anon* %2316 to i64*
  %2317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2318 = getelementptr inbounds %struct.GPR, %struct.GPR* %2317, i32 0, i32 1
  %2319 = getelementptr inbounds %struct.Reg, %struct.Reg* %2318, i32 0, i32 0
  %RAX.i961 = bitcast %union.anon* %2319 to i64*
  %2320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2321 = getelementptr inbounds %struct.GPR, %struct.GPR* %2320, i32 0, i32 15
  %2322 = getelementptr inbounds %struct.Reg, %struct.Reg* %2321, i32 0, i32 0
  %RBP.i962 = bitcast %union.anon* %2322 to i64*
  %2323 = load i64, i64* %RBP.i962
  %2324 = sub i64 %2323, 48
  %2325 = load i64, i64* %PC.i960
  %2326 = add i64 %2325, 4
  store i64 %2326, i64* %PC.i960
  %2327 = inttoptr i64 %2324 to i64*
  %2328 = load i64, i64* %2327
  store i64 %2328, i64* %RAX.i961, align 8
  store %struct.Memory* %loadMem_435a6a, %struct.Memory** %MEMORY
  %loadMem_435a6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2330 = getelementptr inbounds %struct.GPR, %struct.GPR* %2329, i32 0, i32 33
  %2331 = getelementptr inbounds %struct.Reg, %struct.Reg* %2330, i32 0, i32 0
  %PC.i957 = bitcast %union.anon* %2331 to i64*
  %2332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2333 = getelementptr inbounds %struct.GPR, %struct.GPR* %2332, i32 0, i32 7
  %2334 = getelementptr inbounds %struct.Reg, %struct.Reg* %2333, i32 0, i32 0
  %RDX.i958 = bitcast %union.anon* %2334 to i64*
  %2335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2336 = getelementptr inbounds %struct.GPR, %struct.GPR* %2335, i32 0, i32 15
  %2337 = getelementptr inbounds %struct.Reg, %struct.Reg* %2336, i32 0, i32 0
  %RBP.i959 = bitcast %union.anon* %2337 to i64*
  %2338 = load i64, i64* %RBP.i959
  %2339 = sub i64 %2338, 76
  %2340 = load i64, i64* %PC.i957
  %2341 = add i64 %2340, 4
  store i64 %2341, i64* %PC.i957
  %2342 = inttoptr i64 %2339 to i32*
  %2343 = load i32, i32* %2342
  %2344 = sext i32 %2343 to i64
  store i64 %2344, i64* %RDX.i958, align 8
  store %struct.Memory* %loadMem_435a6e, %struct.Memory** %MEMORY
  %loadMem_435a72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2346 = getelementptr inbounds %struct.GPR, %struct.GPR* %2345, i32 0, i32 33
  %2347 = getelementptr inbounds %struct.Reg, %struct.Reg* %2346, i32 0, i32 0
  %PC.i954 = bitcast %union.anon* %2347 to i64*
  %2348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2349 = getelementptr inbounds %struct.GPR, %struct.GPR* %2348, i32 0, i32 1
  %2350 = getelementptr inbounds %struct.Reg, %struct.Reg* %2349, i32 0, i32 0
  %RAX.i955 = bitcast %union.anon* %2350 to i64*
  %2351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2352 = getelementptr inbounds %struct.GPR, %struct.GPR* %2351, i32 0, i32 7
  %2353 = getelementptr inbounds %struct.Reg, %struct.Reg* %2352, i32 0, i32 0
  %RDX.i956 = bitcast %union.anon* %2353 to i64*
  %2354 = load i64, i64* %RAX.i955
  %2355 = load i64, i64* %RDX.i956
  %2356 = mul i64 %2355, 8
  %2357 = add i64 %2356, %2354
  %2358 = load i64, i64* %PC.i954
  %2359 = add i64 %2358, 4
  store i64 %2359, i64* %PC.i954
  %2360 = inttoptr i64 %2357 to i64*
  %2361 = load i64, i64* %2360
  store i64 %2361, i64* %RAX.i955, align 8
  store %struct.Memory* %loadMem_435a72, %struct.Memory** %MEMORY
  %loadMem_435a76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2363 = getelementptr inbounds %struct.GPR, %struct.GPR* %2362, i32 0, i32 33
  %2364 = getelementptr inbounds %struct.Reg, %struct.Reg* %2363, i32 0, i32 0
  %PC.i951 = bitcast %union.anon* %2364 to i64*
  %2365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2366 = getelementptr inbounds %struct.GPR, %struct.GPR* %2365, i32 0, i32 5
  %2367 = getelementptr inbounds %struct.Reg, %struct.Reg* %2366, i32 0, i32 0
  %ECX.i952 = bitcast %union.anon* %2367 to i32*
  %2368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2369 = getelementptr inbounds %struct.GPR, %struct.GPR* %2368, i32 0, i32 1
  %2370 = getelementptr inbounds %struct.Reg, %struct.Reg* %2369, i32 0, i32 0
  %RAX.i953 = bitcast %union.anon* %2370 to i64*
  %2371 = load i64, i64* %RAX.i953
  %2372 = add i64 %2371, 8
  %2373 = load i32, i32* %ECX.i952
  %2374 = zext i32 %2373 to i64
  %2375 = load i64, i64* %PC.i951
  %2376 = add i64 %2375, 3
  store i64 %2376, i64* %PC.i951
  %2377 = inttoptr i64 %2372 to i32*
  store i32 %2373, i32* %2377
  store %struct.Memory* %loadMem_435a76, %struct.Memory** %MEMORY
  %loadMem_435a79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2379 = getelementptr inbounds %struct.GPR, %struct.GPR* %2378, i32 0, i32 33
  %2380 = getelementptr inbounds %struct.Reg, %struct.Reg* %2379, i32 0, i32 0
  %PC.i948 = bitcast %union.anon* %2380 to i64*
  %2381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2382 = getelementptr inbounds %struct.GPR, %struct.GPR* %2381, i32 0, i32 1
  %2383 = getelementptr inbounds %struct.Reg, %struct.Reg* %2382, i32 0, i32 0
  %RAX.i949 = bitcast %union.anon* %2383 to i64*
  %2384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2385 = getelementptr inbounds %struct.GPR, %struct.GPR* %2384, i32 0, i32 15
  %2386 = getelementptr inbounds %struct.Reg, %struct.Reg* %2385, i32 0, i32 0
  %RBP.i950 = bitcast %union.anon* %2386 to i64*
  %2387 = load i64, i64* %RBP.i950
  %2388 = sub i64 %2387, 48
  %2389 = load i64, i64* %PC.i948
  %2390 = add i64 %2389, 4
  store i64 %2390, i64* %PC.i948
  %2391 = inttoptr i64 %2388 to i64*
  %2392 = load i64, i64* %2391
  store i64 %2392, i64* %RAX.i949, align 8
  store %struct.Memory* %loadMem_435a79, %struct.Memory** %MEMORY
  %loadMem_435a7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2394 = getelementptr inbounds %struct.GPR, %struct.GPR* %2393, i32 0, i32 33
  %2395 = getelementptr inbounds %struct.Reg, %struct.Reg* %2394, i32 0, i32 0
  %PC.i945 = bitcast %union.anon* %2395 to i64*
  %2396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2397 = getelementptr inbounds %struct.GPR, %struct.GPR* %2396, i32 0, i32 7
  %2398 = getelementptr inbounds %struct.Reg, %struct.Reg* %2397, i32 0, i32 0
  %RDX.i946 = bitcast %union.anon* %2398 to i64*
  %2399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2400 = getelementptr inbounds %struct.GPR, %struct.GPR* %2399, i32 0, i32 15
  %2401 = getelementptr inbounds %struct.Reg, %struct.Reg* %2400, i32 0, i32 0
  %RBP.i947 = bitcast %union.anon* %2401 to i64*
  %2402 = load i64, i64* %RBP.i947
  %2403 = sub i64 %2402, 76
  %2404 = load i64, i64* %PC.i945
  %2405 = add i64 %2404, 4
  store i64 %2405, i64* %PC.i945
  %2406 = inttoptr i64 %2403 to i32*
  %2407 = load i32, i32* %2406
  %2408 = sext i32 %2407 to i64
  store i64 %2408, i64* %RDX.i946, align 8
  store %struct.Memory* %loadMem_435a7d, %struct.Memory** %MEMORY
  %loadMem_435a81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2410 = getelementptr inbounds %struct.GPR, %struct.GPR* %2409, i32 0, i32 33
  %2411 = getelementptr inbounds %struct.Reg, %struct.Reg* %2410, i32 0, i32 0
  %PC.i942 = bitcast %union.anon* %2411 to i64*
  %2412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2413 = getelementptr inbounds %struct.GPR, %struct.GPR* %2412, i32 0, i32 1
  %2414 = getelementptr inbounds %struct.Reg, %struct.Reg* %2413, i32 0, i32 0
  %RAX.i943 = bitcast %union.anon* %2414 to i64*
  %2415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2416 = getelementptr inbounds %struct.GPR, %struct.GPR* %2415, i32 0, i32 7
  %2417 = getelementptr inbounds %struct.Reg, %struct.Reg* %2416, i32 0, i32 0
  %RDX.i944 = bitcast %union.anon* %2417 to i64*
  %2418 = load i64, i64* %RAX.i943
  %2419 = load i64, i64* %RDX.i944
  %2420 = mul i64 %2419, 8
  %2421 = add i64 %2420, %2418
  %2422 = load i64, i64* %PC.i942
  %2423 = add i64 %2422, 4
  store i64 %2423, i64* %PC.i942
  %2424 = inttoptr i64 %2421 to i64*
  %2425 = load i64, i64* %2424
  store i64 %2425, i64* %RAX.i943, align 8
  store %struct.Memory* %loadMem_435a81, %struct.Memory** %MEMORY
  %loadMem_435a85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2427 = getelementptr inbounds %struct.GPR, %struct.GPR* %2426, i32 0, i32 33
  %2428 = getelementptr inbounds %struct.Reg, %struct.Reg* %2427, i32 0, i32 0
  %PC.i940 = bitcast %union.anon* %2428 to i64*
  %2429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2430 = getelementptr inbounds %struct.GPR, %struct.GPR* %2429, i32 0, i32 1
  %2431 = getelementptr inbounds %struct.Reg, %struct.Reg* %2430, i32 0, i32 0
  %RAX.i941 = bitcast %union.anon* %2431 to i64*
  %2432 = load i64, i64* %RAX.i941
  %2433 = load i64, i64* %PC.i940
  %2434 = add i64 %2433, 6
  store i64 %2434, i64* %PC.i940
  %2435 = inttoptr i64 %2432 to i32*
  store i32 -987654321, i32* %2435
  store %struct.Memory* %loadMem_435a85, %struct.Memory** %MEMORY
  %loadMem_435a8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2437 = getelementptr inbounds %struct.GPR, %struct.GPR* %2436, i32 0, i32 33
  %2438 = getelementptr inbounds %struct.Reg, %struct.Reg* %2437, i32 0, i32 0
  %PC.i937 = bitcast %union.anon* %2438 to i64*
  %2439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2440 = getelementptr inbounds %struct.GPR, %struct.GPR* %2439, i32 0, i32 1
  %2441 = getelementptr inbounds %struct.Reg, %struct.Reg* %2440, i32 0, i32 0
  %RAX.i938 = bitcast %union.anon* %2441 to i64*
  %2442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2443 = getelementptr inbounds %struct.GPR, %struct.GPR* %2442, i32 0, i32 15
  %2444 = getelementptr inbounds %struct.Reg, %struct.Reg* %2443, i32 0, i32 0
  %RBP.i939 = bitcast %union.anon* %2444 to i64*
  %2445 = load i64, i64* %RBP.i939
  %2446 = sub i64 %2445, 48
  %2447 = load i64, i64* %PC.i937
  %2448 = add i64 %2447, 4
  store i64 %2448, i64* %PC.i937
  %2449 = inttoptr i64 %2446 to i64*
  %2450 = load i64, i64* %2449
  store i64 %2450, i64* %RAX.i938, align 8
  store %struct.Memory* %loadMem_435a8b, %struct.Memory** %MEMORY
  %loadMem_435a8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2452 = getelementptr inbounds %struct.GPR, %struct.GPR* %2451, i32 0, i32 33
  %2453 = getelementptr inbounds %struct.Reg, %struct.Reg* %2452, i32 0, i32 0
  %PC.i934 = bitcast %union.anon* %2453 to i64*
  %2454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2455 = getelementptr inbounds %struct.GPR, %struct.GPR* %2454, i32 0, i32 7
  %2456 = getelementptr inbounds %struct.Reg, %struct.Reg* %2455, i32 0, i32 0
  %RDX.i935 = bitcast %union.anon* %2456 to i64*
  %2457 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2458 = getelementptr inbounds %struct.GPR, %struct.GPR* %2457, i32 0, i32 15
  %2459 = getelementptr inbounds %struct.Reg, %struct.Reg* %2458, i32 0, i32 0
  %RBP.i936 = bitcast %union.anon* %2459 to i64*
  %2460 = load i64, i64* %RBP.i936
  %2461 = sub i64 %2460, 76
  %2462 = load i64, i64* %PC.i934
  %2463 = add i64 %2462, 4
  store i64 %2463, i64* %PC.i934
  %2464 = inttoptr i64 %2461 to i32*
  %2465 = load i32, i32* %2464
  %2466 = sext i32 %2465 to i64
  store i64 %2466, i64* %RDX.i935, align 8
  store %struct.Memory* %loadMem_435a8f, %struct.Memory** %MEMORY
  %loadMem_435a93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2468 = getelementptr inbounds %struct.GPR, %struct.GPR* %2467, i32 0, i32 33
  %2469 = getelementptr inbounds %struct.Reg, %struct.Reg* %2468, i32 0, i32 0
  %PC.i931 = bitcast %union.anon* %2469 to i64*
  %2470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2471 = getelementptr inbounds %struct.GPR, %struct.GPR* %2470, i32 0, i32 1
  %2472 = getelementptr inbounds %struct.Reg, %struct.Reg* %2471, i32 0, i32 0
  %RAX.i932 = bitcast %union.anon* %2472 to i64*
  %2473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2474 = getelementptr inbounds %struct.GPR, %struct.GPR* %2473, i32 0, i32 7
  %2475 = getelementptr inbounds %struct.Reg, %struct.Reg* %2474, i32 0, i32 0
  %RDX.i933 = bitcast %union.anon* %2475 to i64*
  %2476 = load i64, i64* %RAX.i932
  %2477 = load i64, i64* %RDX.i933
  %2478 = mul i64 %2477, 8
  %2479 = add i64 %2478, %2476
  %2480 = load i64, i64* %PC.i931
  %2481 = add i64 %2480, 4
  store i64 %2481, i64* %PC.i931
  %2482 = inttoptr i64 %2479 to i64*
  %2483 = load i64, i64* %2482
  store i64 %2483, i64* %RAX.i932, align 8
  store %struct.Memory* %loadMem_435a93, %struct.Memory** %MEMORY
  %loadMem_435a97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2485 = getelementptr inbounds %struct.GPR, %struct.GPR* %2484, i32 0, i32 33
  %2486 = getelementptr inbounds %struct.Reg, %struct.Reg* %2485, i32 0, i32 0
  %PC.i928 = bitcast %union.anon* %2486 to i64*
  %2487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2488 = getelementptr inbounds %struct.GPR, %struct.GPR* %2487, i32 0, i32 1
  %2489 = getelementptr inbounds %struct.Reg, %struct.Reg* %2488, i32 0, i32 0
  %RAX.i929 = bitcast %union.anon* %2489 to i64*
  %2490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2491 = getelementptr inbounds %struct.GPR, %struct.GPR* %2490, i32 0, i32 11
  %2492 = getelementptr inbounds %struct.Reg, %struct.Reg* %2491, i32 0, i32 0
  %RDI.i930 = bitcast %union.anon* %2492 to i64*
  %2493 = load i64, i64* %RAX.i929
  %2494 = load i64, i64* %PC.i928
  %2495 = add i64 %2494, 2
  store i64 %2495, i64* %PC.i928
  %2496 = inttoptr i64 %2493 to i32*
  %2497 = load i32, i32* %2496
  %2498 = zext i32 %2497 to i64
  store i64 %2498, i64* %RDI.i930, align 8
  store %struct.Memory* %loadMem_435a97, %struct.Memory** %MEMORY
  %loadMem_435a99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2500 = getelementptr inbounds %struct.GPR, %struct.GPR* %2499, i32 0, i32 33
  %2501 = getelementptr inbounds %struct.Reg, %struct.Reg* %2500, i32 0, i32 0
  %PC.i925 = bitcast %union.anon* %2501 to i64*
  %2502 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2503 = getelementptr inbounds %struct.GPR, %struct.GPR* %2502, i32 0, i32 1
  %2504 = getelementptr inbounds %struct.Reg, %struct.Reg* %2503, i32 0, i32 0
  %RAX.i926 = bitcast %union.anon* %2504 to i64*
  %2505 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2506 = getelementptr inbounds %struct.GPR, %struct.GPR* %2505, i32 0, i32 15
  %2507 = getelementptr inbounds %struct.Reg, %struct.Reg* %2506, i32 0, i32 0
  %RBP.i927 = bitcast %union.anon* %2507 to i64*
  %2508 = load i64, i64* %RBP.i927
  %2509 = sub i64 %2508, 56
  %2510 = load i64, i64* %PC.i925
  %2511 = add i64 %2510, 4
  store i64 %2511, i64* %PC.i925
  %2512 = inttoptr i64 %2509 to i64*
  %2513 = load i64, i64* %2512
  store i64 %2513, i64* %RAX.i926, align 8
  store %struct.Memory* %loadMem_435a99, %struct.Memory** %MEMORY
  %loadMem_435a9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2515 = getelementptr inbounds %struct.GPR, %struct.GPR* %2514, i32 0, i32 33
  %2516 = getelementptr inbounds %struct.Reg, %struct.Reg* %2515, i32 0, i32 0
  %PC.i922 = bitcast %union.anon* %2516 to i64*
  %2517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2518 = getelementptr inbounds %struct.GPR, %struct.GPR* %2517, i32 0, i32 5
  %2519 = getelementptr inbounds %struct.Reg, %struct.Reg* %2518, i32 0, i32 0
  %RCX.i923 = bitcast %union.anon* %2519 to i64*
  %2520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2521 = getelementptr inbounds %struct.GPR, %struct.GPR* %2520, i32 0, i32 15
  %2522 = getelementptr inbounds %struct.Reg, %struct.Reg* %2521, i32 0, i32 0
  %RBP.i924 = bitcast %union.anon* %2522 to i64*
  %2523 = load i64, i64* %RBP.i924
  %2524 = sub i64 %2523, 76
  %2525 = load i64, i64* %PC.i922
  %2526 = add i64 %2525, 3
  store i64 %2526, i64* %PC.i922
  %2527 = inttoptr i64 %2524 to i32*
  %2528 = load i32, i32* %2527
  %2529 = zext i32 %2528 to i64
  store i64 %2529, i64* %RCX.i923, align 8
  store %struct.Memory* %loadMem_435a9d, %struct.Memory** %MEMORY
  %loadMem_435aa0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2531 = getelementptr inbounds %struct.GPR, %struct.GPR* %2530, i32 0, i32 33
  %2532 = getelementptr inbounds %struct.Reg, %struct.Reg* %2531, i32 0, i32 0
  %PC.i920 = bitcast %union.anon* %2532 to i64*
  %2533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2534 = getelementptr inbounds %struct.GPR, %struct.GPR* %2533, i32 0, i32 5
  %2535 = getelementptr inbounds %struct.Reg, %struct.Reg* %2534, i32 0, i32 0
  %RCX.i921 = bitcast %union.anon* %2535 to i64*
  %2536 = load i64, i64* %RCX.i921
  %2537 = load i64, i64* %PC.i920
  %2538 = add i64 %2537, 3
  store i64 %2538, i64* %PC.i920
  %2539 = trunc i64 %2536 to i32
  %2540 = add i32 1, %2539
  %2541 = zext i32 %2540 to i64
  store i64 %2541, i64* %RCX.i921, align 8
  %2542 = icmp ult i32 %2540, %2539
  %2543 = icmp ult i32 %2540, 1
  %2544 = or i1 %2542, %2543
  %2545 = zext i1 %2544 to i8
  %2546 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2545, i8* %2546, align 1
  %2547 = and i32 %2540, 255
  %2548 = call i32 @llvm.ctpop.i32(i32 %2547)
  %2549 = trunc i32 %2548 to i8
  %2550 = and i8 %2549, 1
  %2551 = xor i8 %2550, 1
  %2552 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2551, i8* %2552, align 1
  %2553 = xor i64 1, %2536
  %2554 = trunc i64 %2553 to i32
  %2555 = xor i32 %2554, %2540
  %2556 = lshr i32 %2555, 4
  %2557 = trunc i32 %2556 to i8
  %2558 = and i8 %2557, 1
  %2559 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2558, i8* %2559, align 1
  %2560 = icmp eq i32 %2540, 0
  %2561 = zext i1 %2560 to i8
  %2562 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2561, i8* %2562, align 1
  %2563 = lshr i32 %2540, 31
  %2564 = trunc i32 %2563 to i8
  %2565 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2564, i8* %2565, align 1
  %2566 = lshr i32 %2539, 31
  %2567 = xor i32 %2563, %2566
  %2568 = add i32 %2567, %2563
  %2569 = icmp eq i32 %2568, 2
  %2570 = zext i1 %2569 to i8
  %2571 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2570, i8* %2571, align 1
  store %struct.Memory* %loadMem_435aa0, %struct.Memory** %MEMORY
  %loadMem_435aa3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2573 = getelementptr inbounds %struct.GPR, %struct.GPR* %2572, i32 0, i32 33
  %2574 = getelementptr inbounds %struct.Reg, %struct.Reg* %2573, i32 0, i32 0
  %PC.i917 = bitcast %union.anon* %2574 to i64*
  %2575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2576 = getelementptr inbounds %struct.GPR, %struct.GPR* %2575, i32 0, i32 5
  %2577 = getelementptr inbounds %struct.Reg, %struct.Reg* %2576, i32 0, i32 0
  %ECX.i918 = bitcast %union.anon* %2577 to i32*
  %2578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2579 = getelementptr inbounds %struct.GPR, %struct.GPR* %2578, i32 0, i32 7
  %2580 = getelementptr inbounds %struct.Reg, %struct.Reg* %2579, i32 0, i32 0
  %RDX.i919 = bitcast %union.anon* %2580 to i64*
  %2581 = load i32, i32* %ECX.i918
  %2582 = zext i32 %2581 to i64
  %2583 = load i64, i64* %PC.i917
  %2584 = add i64 %2583, 3
  store i64 %2584, i64* %PC.i917
  %2585 = shl i64 %2582, 32
  %2586 = ashr exact i64 %2585, 32
  store i64 %2586, i64* %RDX.i919, align 8
  store %struct.Memory* %loadMem_435aa3, %struct.Memory** %MEMORY
  %loadMem_435aa6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2587 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2588 = getelementptr inbounds %struct.GPR, %struct.GPR* %2587, i32 0, i32 33
  %2589 = getelementptr inbounds %struct.Reg, %struct.Reg* %2588, i32 0, i32 0
  %PC.i914 = bitcast %union.anon* %2589 to i64*
  %2590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2591 = getelementptr inbounds %struct.GPR, %struct.GPR* %2590, i32 0, i32 1
  %2592 = getelementptr inbounds %struct.Reg, %struct.Reg* %2591, i32 0, i32 0
  %RAX.i915 = bitcast %union.anon* %2592 to i64*
  %2593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2594 = getelementptr inbounds %struct.GPR, %struct.GPR* %2593, i32 0, i32 7
  %2595 = getelementptr inbounds %struct.Reg, %struct.Reg* %2594, i32 0, i32 0
  %RDX.i916 = bitcast %union.anon* %2595 to i64*
  %2596 = load i64, i64* %RAX.i915
  %2597 = load i64, i64* %RDX.i916
  %2598 = mul i64 %2597, 8
  %2599 = add i64 %2598, %2596
  %2600 = load i64, i64* %PC.i914
  %2601 = add i64 %2600, 4
  store i64 %2601, i64* %PC.i914
  %2602 = inttoptr i64 %2599 to i64*
  %2603 = load i64, i64* %2602
  store i64 %2603, i64* %RAX.i915, align 8
  store %struct.Memory* %loadMem_435aa6, %struct.Memory** %MEMORY
  %loadMem_435aaa = load %struct.Memory*, %struct.Memory** %MEMORY
  %2604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2605 = getelementptr inbounds %struct.GPR, %struct.GPR* %2604, i32 0, i32 33
  %2606 = getelementptr inbounds %struct.Reg, %struct.Reg* %2605, i32 0, i32 0
  %PC.i911 = bitcast %union.anon* %2606 to i64*
  %2607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2608 = getelementptr inbounds %struct.GPR, %struct.GPR* %2607, i32 0, i32 7
  %2609 = getelementptr inbounds %struct.Reg, %struct.Reg* %2608, i32 0, i32 0
  %RDX.i912 = bitcast %union.anon* %2609 to i64*
  %2610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2611 = getelementptr inbounds %struct.GPR, %struct.GPR* %2610, i32 0, i32 15
  %2612 = getelementptr inbounds %struct.Reg, %struct.Reg* %2611, i32 0, i32 0
  %RBP.i913 = bitcast %union.anon* %2612 to i64*
  %2613 = load i64, i64* %RBP.i913
  %2614 = sub i64 %2613, 24
  %2615 = load i64, i64* %PC.i911
  %2616 = add i64 %2615, 4
  store i64 %2616, i64* %PC.i911
  %2617 = inttoptr i64 %2614 to i64*
  %2618 = load i64, i64* %2617
  store i64 %2618, i64* %RDX.i912, align 8
  store %struct.Memory* %loadMem_435aaa, %struct.Memory** %MEMORY
  %loadMem_435aae = load %struct.Memory*, %struct.Memory** %MEMORY
  %2619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2620 = getelementptr inbounds %struct.GPR, %struct.GPR* %2619, i32 0, i32 33
  %2621 = getelementptr inbounds %struct.Reg, %struct.Reg* %2620, i32 0, i32 0
  %PC.i909 = bitcast %union.anon* %2621 to i64*
  %2622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2623 = getelementptr inbounds %struct.GPR, %struct.GPR* %2622, i32 0, i32 7
  %2624 = getelementptr inbounds %struct.Reg, %struct.Reg* %2623, i32 0, i32 0
  %RDX.i910 = bitcast %union.anon* %2624 to i64*
  %2625 = load i64, i64* %RDX.i910
  %2626 = add i64 %2625, 136
  %2627 = load i64, i64* %PC.i909
  %2628 = add i64 %2627, 7
  store i64 %2628, i64* %PC.i909
  %2629 = inttoptr i64 %2626 to i32*
  %2630 = load i32, i32* %2629
  %2631 = sext i32 %2630 to i64
  store i64 %2631, i64* %RDX.i910, align 8
  store %struct.Memory* %loadMem_435aae, %struct.Memory** %MEMORY
  %loadMem_435ab5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2632 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2633 = getelementptr inbounds %struct.GPR, %struct.GPR* %2632, i32 0, i32 33
  %2634 = getelementptr inbounds %struct.Reg, %struct.Reg* %2633, i32 0, i32 0
  %PC.i905 = bitcast %union.anon* %2634 to i64*
  %2635 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2636 = getelementptr inbounds %struct.GPR, %struct.GPR* %2635, i32 0, i32 1
  %2637 = getelementptr inbounds %struct.Reg, %struct.Reg* %2636, i32 0, i32 0
  %RAX.i906 = bitcast %union.anon* %2637 to i64*
  %2638 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2639 = getelementptr inbounds %struct.GPR, %struct.GPR* %2638, i32 0, i32 5
  %2640 = getelementptr inbounds %struct.Reg, %struct.Reg* %2639, i32 0, i32 0
  %RCX.i907 = bitcast %union.anon* %2640 to i64*
  %2641 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2642 = getelementptr inbounds %struct.GPR, %struct.GPR* %2641, i32 0, i32 7
  %2643 = getelementptr inbounds %struct.Reg, %struct.Reg* %2642, i32 0, i32 0
  %RDX.i908 = bitcast %union.anon* %2643 to i64*
  %2644 = load i64, i64* %RAX.i906
  %2645 = load i64, i64* %RDX.i908
  %2646 = mul i64 %2645, 4
  %2647 = add i64 %2646, %2644
  %2648 = load i64, i64* %PC.i905
  %2649 = add i64 %2648, 3
  store i64 %2649, i64* %PC.i905
  %2650 = inttoptr i64 %2647 to i32*
  %2651 = load i32, i32* %2650
  %2652 = zext i32 %2651 to i64
  store i64 %2652, i64* %RCX.i907, align 8
  store %struct.Memory* %loadMem_435ab5, %struct.Memory** %MEMORY
  %loadMem_435ab8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2653 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2654 = getelementptr inbounds %struct.GPR, %struct.GPR* %2653, i32 0, i32 33
  %2655 = getelementptr inbounds %struct.Reg, %struct.Reg* %2654, i32 0, i32 0
  %PC.i902 = bitcast %union.anon* %2655 to i64*
  %2656 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2657 = getelementptr inbounds %struct.GPR, %struct.GPR* %2656, i32 0, i32 1
  %2658 = getelementptr inbounds %struct.Reg, %struct.Reg* %2657, i32 0, i32 0
  %RAX.i903 = bitcast %union.anon* %2658 to i64*
  %2659 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2660 = getelementptr inbounds %struct.GPR, %struct.GPR* %2659, i32 0, i32 15
  %2661 = getelementptr inbounds %struct.Reg, %struct.Reg* %2660, i32 0, i32 0
  %RBP.i904 = bitcast %union.anon* %2661 to i64*
  %2662 = load i64, i64* %RBP.i904
  %2663 = sub i64 %2662, 24
  %2664 = load i64, i64* %PC.i902
  %2665 = add i64 %2664, 4
  store i64 %2665, i64* %PC.i902
  %2666 = inttoptr i64 %2663 to i64*
  %2667 = load i64, i64* %2666
  store i64 %2667, i64* %RAX.i903, align 8
  store %struct.Memory* %loadMem_435ab8, %struct.Memory** %MEMORY
  %loadMem_435abc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2668 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2669 = getelementptr inbounds %struct.GPR, %struct.GPR* %2668, i32 0, i32 33
  %2670 = getelementptr inbounds %struct.Reg, %struct.Reg* %2669, i32 0, i32 0
  %PC.i900 = bitcast %union.anon* %2670 to i64*
  %2671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2672 = getelementptr inbounds %struct.GPR, %struct.GPR* %2671, i32 0, i32 1
  %2673 = getelementptr inbounds %struct.Reg, %struct.Reg* %2672, i32 0, i32 0
  %RAX.i901 = bitcast %union.anon* %2673 to i64*
  %2674 = load i64, i64* %RAX.i901
  %2675 = add i64 %2674, 368
  %2676 = load i64, i64* %PC.i900
  %2677 = add i64 %2676, 7
  store i64 %2677, i64* %PC.i900
  %2678 = inttoptr i64 %2675 to i64*
  %2679 = load i64, i64* %2678
  store i64 %2679, i64* %RAX.i901, align 8
  store %struct.Memory* %loadMem_435abc, %struct.Memory** %MEMORY
  %loadMem_435ac3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2680 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2681 = getelementptr inbounds %struct.GPR, %struct.GPR* %2680, i32 0, i32 33
  %2682 = getelementptr inbounds %struct.Reg, %struct.Reg* %2681, i32 0, i32 0
  %PC.i897 = bitcast %union.anon* %2682 to i64*
  %2683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2684 = getelementptr inbounds %struct.GPR, %struct.GPR* %2683, i32 0, i32 7
  %2685 = getelementptr inbounds %struct.Reg, %struct.Reg* %2684, i32 0, i32 0
  %RDX.i898 = bitcast %union.anon* %2685 to i64*
  %2686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2687 = getelementptr inbounds %struct.GPR, %struct.GPR* %2686, i32 0, i32 15
  %2688 = getelementptr inbounds %struct.Reg, %struct.Reg* %2687, i32 0, i32 0
  %RBP.i899 = bitcast %union.anon* %2688 to i64*
  %2689 = load i64, i64* %RBP.i899
  %2690 = sub i64 %2689, 24
  %2691 = load i64, i64* %PC.i897
  %2692 = add i64 %2691, 4
  store i64 %2692, i64* %PC.i897
  %2693 = inttoptr i64 %2690 to i64*
  %2694 = load i64, i64* %2693
  store i64 %2694, i64* %RDX.i898, align 8
  store %struct.Memory* %loadMem_435ac3, %struct.Memory** %MEMORY
  %loadMem_435ac7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2695 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2696 = getelementptr inbounds %struct.GPR, %struct.GPR* %2695, i32 0, i32 33
  %2697 = getelementptr inbounds %struct.Reg, %struct.Reg* %2696, i32 0, i32 0
  %PC.i894 = bitcast %union.anon* %2697 to i64*
  %2698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2699 = getelementptr inbounds %struct.GPR, %struct.GPR* %2698, i32 0, i32 7
  %2700 = getelementptr inbounds %struct.Reg, %struct.Reg* %2699, i32 0, i32 0
  %RDX.i895 = bitcast %union.anon* %2700 to i64*
  %2701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2702 = getelementptr inbounds %struct.GPR, %struct.GPR* %2701, i32 0, i32 9
  %2703 = getelementptr inbounds %struct.Reg, %struct.Reg* %2702, i32 0, i32 0
  %RSI.i896 = bitcast %union.anon* %2703 to i64*
  %2704 = load i64, i64* %RDX.i895
  %2705 = add i64 %2704, 136
  %2706 = load i64, i64* %PC.i894
  %2707 = add i64 %2706, 6
  store i64 %2707, i64* %PC.i894
  %2708 = inttoptr i64 %2705 to i32*
  %2709 = load i32, i32* %2708
  %2710 = zext i32 %2709 to i64
  store i64 %2710, i64* %RSI.i896, align 8
  store %struct.Memory* %loadMem_435ac7, %struct.Memory** %MEMORY
  %loadMem_435acd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2712 = getelementptr inbounds %struct.GPR, %struct.GPR* %2711, i32 0, i32 33
  %2713 = getelementptr inbounds %struct.Reg, %struct.Reg* %2712, i32 0, i32 0
  %PC.i892 = bitcast %union.anon* %2713 to i64*
  %2714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2715 = getelementptr inbounds %struct.GPR, %struct.GPR* %2714, i32 0, i32 9
  %2716 = getelementptr inbounds %struct.Reg, %struct.Reg* %2715, i32 0, i32 0
  %RSI.i893 = bitcast %union.anon* %2716 to i64*
  %2717 = load i64, i64* %RSI.i893
  %2718 = load i64, i64* %PC.i892
  %2719 = add i64 %2718, 3
  store i64 %2719, i64* %PC.i892
  %2720 = trunc i64 %2717 to i32
  %2721 = sub i32 %2720, 1
  %2722 = zext i32 %2721 to i64
  store i64 %2722, i64* %RSI.i893, align 8
  %2723 = icmp ult i32 %2720, 1
  %2724 = zext i1 %2723 to i8
  %2725 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2724, i8* %2725, align 1
  %2726 = and i32 %2721, 255
  %2727 = call i32 @llvm.ctpop.i32(i32 %2726)
  %2728 = trunc i32 %2727 to i8
  %2729 = and i8 %2728, 1
  %2730 = xor i8 %2729, 1
  %2731 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2730, i8* %2731, align 1
  %2732 = xor i64 1, %2717
  %2733 = trunc i64 %2732 to i32
  %2734 = xor i32 %2733, %2721
  %2735 = lshr i32 %2734, 4
  %2736 = trunc i32 %2735 to i8
  %2737 = and i8 %2736, 1
  %2738 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2737, i8* %2738, align 1
  %2739 = icmp eq i32 %2721, 0
  %2740 = zext i1 %2739 to i8
  %2741 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2740, i8* %2741, align 1
  %2742 = lshr i32 %2721, 31
  %2743 = trunc i32 %2742 to i8
  %2744 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2743, i8* %2744, align 1
  %2745 = lshr i32 %2720, 31
  %2746 = xor i32 %2742, %2745
  %2747 = add i32 %2746, %2745
  %2748 = icmp eq i32 %2747, 2
  %2749 = zext i1 %2748 to i8
  %2750 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2749, i8* %2750, align 1
  store %struct.Memory* %loadMem_435acd, %struct.Memory** %MEMORY
  %loadMem_435ad0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2751 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2752 = getelementptr inbounds %struct.GPR, %struct.GPR* %2751, i32 0, i32 33
  %2753 = getelementptr inbounds %struct.Reg, %struct.Reg* %2752, i32 0, i32 0
  %PC.i889 = bitcast %union.anon* %2753 to i64*
  %2754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2755 = getelementptr inbounds %struct.GPR, %struct.GPR* %2754, i32 0, i32 9
  %2756 = getelementptr inbounds %struct.Reg, %struct.Reg* %2755, i32 0, i32 0
  %ESI.i890 = bitcast %union.anon* %2756 to i32*
  %2757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2758 = getelementptr inbounds %struct.GPR, %struct.GPR* %2757, i32 0, i32 7
  %2759 = getelementptr inbounds %struct.Reg, %struct.Reg* %2758, i32 0, i32 0
  %RDX.i891 = bitcast %union.anon* %2759 to i64*
  %2760 = load i32, i32* %ESI.i890
  %2761 = zext i32 %2760 to i64
  %2762 = load i64, i64* %PC.i889
  %2763 = add i64 %2762, 3
  store i64 %2763, i64* %PC.i889
  %2764 = shl i64 %2761, 32
  %2765 = ashr exact i64 %2764, 32
  store i64 %2765, i64* %RDX.i891, align 8
  store %struct.Memory* %loadMem_435ad0, %struct.Memory** %MEMORY
  %loadMem_435ad3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2766 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2767 = getelementptr inbounds %struct.GPR, %struct.GPR* %2766, i32 0, i32 33
  %2768 = getelementptr inbounds %struct.Reg, %struct.Reg* %2767, i32 0, i32 0
  %PC.i885 = bitcast %union.anon* %2768 to i64*
  %2769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2770 = getelementptr inbounds %struct.GPR, %struct.GPR* %2769, i32 0, i32 1
  %2771 = getelementptr inbounds %struct.Reg, %struct.Reg* %2770, i32 0, i32 0
  %RAX.i886 = bitcast %union.anon* %2771 to i64*
  %2772 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2773 = getelementptr inbounds %struct.GPR, %struct.GPR* %2772, i32 0, i32 5
  %2774 = getelementptr inbounds %struct.Reg, %struct.Reg* %2773, i32 0, i32 0
  %RCX.i887 = bitcast %union.anon* %2774 to i64*
  %2775 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2776 = getelementptr inbounds %struct.GPR, %struct.GPR* %2775, i32 0, i32 7
  %2777 = getelementptr inbounds %struct.Reg, %struct.Reg* %2776, i32 0, i32 0
  %RDX.i888 = bitcast %union.anon* %2777 to i64*
  %2778 = load i64, i64* %RCX.i887
  %2779 = load i64, i64* %RAX.i886
  %2780 = load i64, i64* %RDX.i888
  %2781 = mul i64 %2780, 4
  %2782 = add i64 %2781, %2779
  %2783 = load i64, i64* %PC.i885
  %2784 = add i64 %2783, 3
  store i64 %2784, i64* %PC.i885
  %2785 = trunc i64 %2778 to i32
  %2786 = inttoptr i64 %2782 to i32*
  %2787 = load i32, i32* %2786
  %2788 = add i32 %2787, %2785
  %2789 = zext i32 %2788 to i64
  store i64 %2789, i64* %RCX.i887, align 8
  %2790 = icmp ult i32 %2788, %2785
  %2791 = icmp ult i32 %2788, %2787
  %2792 = or i1 %2790, %2791
  %2793 = zext i1 %2792 to i8
  %2794 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2793, i8* %2794, align 1
  %2795 = and i32 %2788, 255
  %2796 = call i32 @llvm.ctpop.i32(i32 %2795)
  %2797 = trunc i32 %2796 to i8
  %2798 = and i8 %2797, 1
  %2799 = xor i8 %2798, 1
  %2800 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2799, i8* %2800, align 1
  %2801 = xor i32 %2787, %2785
  %2802 = xor i32 %2801, %2788
  %2803 = lshr i32 %2802, 4
  %2804 = trunc i32 %2803 to i8
  %2805 = and i8 %2804, 1
  %2806 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2805, i8* %2806, align 1
  %2807 = icmp eq i32 %2788, 0
  %2808 = zext i1 %2807 to i8
  %2809 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2808, i8* %2809, align 1
  %2810 = lshr i32 %2788, 31
  %2811 = trunc i32 %2810 to i8
  %2812 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2811, i8* %2812, align 1
  %2813 = lshr i32 %2785, 31
  %2814 = lshr i32 %2787, 31
  %2815 = xor i32 %2810, %2813
  %2816 = xor i32 %2810, %2814
  %2817 = add i32 %2815, %2816
  %2818 = icmp eq i32 %2817, 2
  %2819 = zext i1 %2818 to i8
  %2820 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2819, i8* %2820, align 1
  store %struct.Memory* %loadMem_435ad3, %struct.Memory** %MEMORY
  %loadMem_435ad6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2821 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2822 = getelementptr inbounds %struct.GPR, %struct.GPR* %2821, i32 0, i32 33
  %2823 = getelementptr inbounds %struct.Reg, %struct.Reg* %2822, i32 0, i32 0
  %PC.i882 = bitcast %union.anon* %2823 to i64*
  %2824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2825 = getelementptr inbounds %struct.GPR, %struct.GPR* %2824, i32 0, i32 5
  %2826 = getelementptr inbounds %struct.Reg, %struct.Reg* %2825, i32 0, i32 0
  %ECX.i883 = bitcast %union.anon* %2826 to i32*
  %2827 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2828 = getelementptr inbounds %struct.GPR, %struct.GPR* %2827, i32 0, i32 9
  %2829 = getelementptr inbounds %struct.Reg, %struct.Reg* %2828, i32 0, i32 0
  %RSI.i884 = bitcast %union.anon* %2829 to i64*
  %2830 = load i32, i32* %ECX.i883
  %2831 = zext i32 %2830 to i64
  %2832 = load i64, i64* %PC.i882
  %2833 = add i64 %2832, 2
  store i64 %2833, i64* %PC.i882
  %2834 = and i64 %2831, 4294967295
  store i64 %2834, i64* %RSI.i884, align 8
  store %struct.Memory* %loadMem_435ad6, %struct.Memory** %MEMORY
  %loadMem1_435ad8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2835 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2836 = getelementptr inbounds %struct.GPR, %struct.GPR* %2835, i32 0, i32 33
  %2837 = getelementptr inbounds %struct.Reg, %struct.Reg* %2836, i32 0, i32 0
  %PC.i881 = bitcast %union.anon* %2837 to i64*
  %2838 = load i64, i64* %PC.i881
  %2839 = add i64 %2838, -55592
  %2840 = load i64, i64* %PC.i881
  %2841 = add i64 %2840, 5
  %2842 = load i64, i64* %PC.i881
  %2843 = add i64 %2842, 5
  store i64 %2843, i64* %PC.i881
  %2844 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2845 = load i64, i64* %2844, align 8
  %2846 = add i64 %2845, -8
  %2847 = inttoptr i64 %2846 to i64*
  store i64 %2841, i64* %2847
  store i64 %2846, i64* %2844, align 8
  %2848 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2839, i64* %2848, align 8
  store %struct.Memory* %loadMem1_435ad8, %struct.Memory** %MEMORY
  %loadMem2_435ad8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_435ad8 = load i64, i64* %3
  %call2_435ad8 = call %struct.Memory* @sub_4281b0.ILogsum(%struct.State* %0, i64 %loadPC_435ad8, %struct.Memory* %loadMem2_435ad8)
  store %struct.Memory* %call2_435ad8, %struct.Memory** %MEMORY
  %loadMem_435add = load %struct.Memory*, %struct.Memory** %MEMORY
  %2849 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2850 = getelementptr inbounds %struct.GPR, %struct.GPR* %2849, i32 0, i32 33
  %2851 = getelementptr inbounds %struct.Reg, %struct.Reg* %2850, i32 0, i32 0
  %PC.i878 = bitcast %union.anon* %2851 to i64*
  %2852 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2853 = getelementptr inbounds %struct.GPR, %struct.GPR* %2852, i32 0, i32 7
  %2854 = getelementptr inbounds %struct.Reg, %struct.Reg* %2853, i32 0, i32 0
  %RDX.i879 = bitcast %union.anon* %2854 to i64*
  %2855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2856 = getelementptr inbounds %struct.GPR, %struct.GPR* %2855, i32 0, i32 15
  %2857 = getelementptr inbounds %struct.Reg, %struct.Reg* %2856, i32 0, i32 0
  %RBP.i880 = bitcast %union.anon* %2857 to i64*
  %2858 = load i64, i64* %RBP.i880
  %2859 = sub i64 %2858, 48
  %2860 = load i64, i64* %PC.i878
  %2861 = add i64 %2860, 4
  store i64 %2861, i64* %PC.i878
  %2862 = inttoptr i64 %2859 to i64*
  %2863 = load i64, i64* %2862
  store i64 %2863, i64* %RDX.i879, align 8
  store %struct.Memory* %loadMem_435add, %struct.Memory** %MEMORY
  %loadMem_435ae1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2864 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2865 = getelementptr inbounds %struct.GPR, %struct.GPR* %2864, i32 0, i32 33
  %2866 = getelementptr inbounds %struct.Reg, %struct.Reg* %2865, i32 0, i32 0
  %PC.i875 = bitcast %union.anon* %2866 to i64*
  %2867 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2868 = getelementptr inbounds %struct.GPR, %struct.GPR* %2867, i32 0, i32 15
  %2869 = getelementptr inbounds %struct.Reg, %struct.Reg* %2868, i32 0, i32 0
  %RBP.i876 = bitcast %union.anon* %2869 to i64*
  %2870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2871 = getelementptr inbounds %struct.GPR, %struct.GPR* %2870, i32 0, i32 17
  %2872 = getelementptr inbounds %struct.Reg, %struct.Reg* %2871, i32 0, i32 0
  %R8.i877 = bitcast %union.anon* %2872 to i64*
  %2873 = load i64, i64* %RBP.i876
  %2874 = sub i64 %2873, 76
  %2875 = load i64, i64* %PC.i875
  %2876 = add i64 %2875, 4
  store i64 %2876, i64* %PC.i875
  %2877 = inttoptr i64 %2874 to i32*
  %2878 = load i32, i32* %2877
  %2879 = sext i32 %2878 to i64
  store i64 %2879, i64* %R8.i877, align 8
  store %struct.Memory* %loadMem_435ae1, %struct.Memory** %MEMORY
  %loadMem_435ae5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2881 = getelementptr inbounds %struct.GPR, %struct.GPR* %2880, i32 0, i32 33
  %2882 = getelementptr inbounds %struct.Reg, %struct.Reg* %2881, i32 0, i32 0
  %PC.i872 = bitcast %union.anon* %2882 to i64*
  %2883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2884 = getelementptr inbounds %struct.GPR, %struct.GPR* %2883, i32 0, i32 7
  %2885 = getelementptr inbounds %struct.Reg, %struct.Reg* %2884, i32 0, i32 0
  %RDX.i873 = bitcast %union.anon* %2885 to i64*
  %2886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2887 = getelementptr inbounds %struct.GPR, %struct.GPR* %2886, i32 0, i32 17
  %2888 = getelementptr inbounds %struct.Reg, %struct.Reg* %2887, i32 0, i32 0
  %R8.i874 = bitcast %union.anon* %2888 to i64*
  %2889 = load i64, i64* %RDX.i873
  %2890 = load i64, i64* %R8.i874
  %2891 = mul i64 %2890, 8
  %2892 = add i64 %2891, %2889
  %2893 = load i64, i64* %PC.i872
  %2894 = add i64 %2893, 4
  store i64 %2894, i64* %PC.i872
  %2895 = inttoptr i64 %2892 to i64*
  %2896 = load i64, i64* %2895
  store i64 %2896, i64* %RDX.i873, align 8
  store %struct.Memory* %loadMem_435ae5, %struct.Memory** %MEMORY
  %loadMem_435ae9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2897 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2898 = getelementptr inbounds %struct.GPR, %struct.GPR* %2897, i32 0, i32 33
  %2899 = getelementptr inbounds %struct.Reg, %struct.Reg* %2898, i32 0, i32 0
  %PC.i869 = bitcast %union.anon* %2899 to i64*
  %2900 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2901 = getelementptr inbounds %struct.GPR, %struct.GPR* %2900, i32 0, i32 1
  %2902 = getelementptr inbounds %struct.Reg, %struct.Reg* %2901, i32 0, i32 0
  %EAX.i870 = bitcast %union.anon* %2902 to i32*
  %2903 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2904 = getelementptr inbounds %struct.GPR, %struct.GPR* %2903, i32 0, i32 7
  %2905 = getelementptr inbounds %struct.Reg, %struct.Reg* %2904, i32 0, i32 0
  %RDX.i871 = bitcast %union.anon* %2905 to i64*
  %2906 = load i64, i64* %RDX.i871
  %2907 = load i32, i32* %EAX.i870
  %2908 = zext i32 %2907 to i64
  %2909 = load i64, i64* %PC.i869
  %2910 = add i64 %2909, 2
  store i64 %2910, i64* %PC.i869
  %2911 = inttoptr i64 %2906 to i32*
  store i32 %2907, i32* %2911
  store %struct.Memory* %loadMem_435ae9, %struct.Memory** %MEMORY
  %loadMem_435aeb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2912 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2913 = getelementptr inbounds %struct.GPR, %struct.GPR* %2912, i32 0, i32 33
  %2914 = getelementptr inbounds %struct.Reg, %struct.Reg* %2913, i32 0, i32 0
  %PC.i866 = bitcast %union.anon* %2914 to i64*
  %2915 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2916 = getelementptr inbounds %struct.GPR, %struct.GPR* %2915, i32 0, i32 7
  %2917 = getelementptr inbounds %struct.Reg, %struct.Reg* %2916, i32 0, i32 0
  %RDX.i867 = bitcast %union.anon* %2917 to i64*
  %2918 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2919 = getelementptr inbounds %struct.GPR, %struct.GPR* %2918, i32 0, i32 15
  %2920 = getelementptr inbounds %struct.Reg, %struct.Reg* %2919, i32 0, i32 0
  %RBP.i868 = bitcast %union.anon* %2920 to i64*
  %2921 = load i64, i64* %RBP.i868
  %2922 = sub i64 %2921, 24
  %2923 = load i64, i64* %PC.i866
  %2924 = add i64 %2923, 4
  store i64 %2924, i64* %PC.i866
  %2925 = inttoptr i64 %2922 to i64*
  %2926 = load i64, i64* %2925
  store i64 %2926, i64* %RDX.i867, align 8
  store %struct.Memory* %loadMem_435aeb, %struct.Memory** %MEMORY
  %loadMem_435aef = load %struct.Memory*, %struct.Memory** %MEMORY
  %2927 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2928 = getelementptr inbounds %struct.GPR, %struct.GPR* %2927, i32 0, i32 33
  %2929 = getelementptr inbounds %struct.Reg, %struct.Reg* %2928, i32 0, i32 0
  %PC.i863 = bitcast %union.anon* %2929 to i64*
  %2930 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2931 = getelementptr inbounds %struct.GPR, %struct.GPR* %2930, i32 0, i32 1
  %2932 = getelementptr inbounds %struct.Reg, %struct.Reg* %2931, i32 0, i32 0
  %RAX.i864 = bitcast %union.anon* %2932 to i64*
  %2933 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2934 = getelementptr inbounds %struct.GPR, %struct.GPR* %2933, i32 0, i32 7
  %2935 = getelementptr inbounds %struct.Reg, %struct.Reg* %2934, i32 0, i32 0
  %RDX.i865 = bitcast %union.anon* %2935 to i64*
  %2936 = load i64, i64* %RDX.i865
  %2937 = add i64 %2936, 136
  %2938 = load i64, i64* %PC.i863
  %2939 = add i64 %2938, 6
  store i64 %2939, i64* %PC.i863
  %2940 = inttoptr i64 %2937 to i32*
  %2941 = load i32, i32* %2940
  %2942 = zext i32 %2941 to i64
  store i64 %2942, i64* %RAX.i864, align 8
  store %struct.Memory* %loadMem_435aef, %struct.Memory** %MEMORY
  %loadMem_435af5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2943 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2944 = getelementptr inbounds %struct.GPR, %struct.GPR* %2943, i32 0, i32 33
  %2945 = getelementptr inbounds %struct.Reg, %struct.Reg* %2944, i32 0, i32 0
  %PC.i861 = bitcast %union.anon* %2945 to i64*
  %2946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2947 = getelementptr inbounds %struct.GPR, %struct.GPR* %2946, i32 0, i32 1
  %2948 = getelementptr inbounds %struct.Reg, %struct.Reg* %2947, i32 0, i32 0
  %RAX.i862 = bitcast %union.anon* %2948 to i64*
  %2949 = load i64, i64* %RAX.i862
  %2950 = load i64, i64* %PC.i861
  %2951 = add i64 %2950, 3
  store i64 %2951, i64* %PC.i861
  %2952 = trunc i64 %2949 to i32
  %2953 = sub i32 %2952, 1
  %2954 = zext i32 %2953 to i64
  store i64 %2954, i64* %RAX.i862, align 8
  %2955 = icmp ult i32 %2952, 1
  %2956 = zext i1 %2955 to i8
  %2957 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2956, i8* %2957, align 1
  %2958 = and i32 %2953, 255
  %2959 = call i32 @llvm.ctpop.i32(i32 %2958)
  %2960 = trunc i32 %2959 to i8
  %2961 = and i8 %2960, 1
  %2962 = xor i8 %2961, 1
  %2963 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2962, i8* %2963, align 1
  %2964 = xor i64 1, %2949
  %2965 = trunc i64 %2964 to i32
  %2966 = xor i32 %2965, %2953
  %2967 = lshr i32 %2966, 4
  %2968 = trunc i32 %2967 to i8
  %2969 = and i8 %2968, 1
  %2970 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2969, i8* %2970, align 1
  %2971 = icmp eq i32 %2953, 0
  %2972 = zext i1 %2971 to i8
  %2973 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2972, i8* %2973, align 1
  %2974 = lshr i32 %2953, 31
  %2975 = trunc i32 %2974 to i8
  %2976 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2975, i8* %2976, align 1
  %2977 = lshr i32 %2952, 31
  %2978 = xor i32 %2974, %2977
  %2979 = add i32 %2978, %2977
  %2980 = icmp eq i32 %2979, 2
  %2981 = zext i1 %2980 to i8
  %2982 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2981, i8* %2982, align 1
  store %struct.Memory* %loadMem_435af5, %struct.Memory** %MEMORY
  %loadMem_435af8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2984 = getelementptr inbounds %struct.GPR, %struct.GPR* %2983, i32 0, i32 33
  %2985 = getelementptr inbounds %struct.Reg, %struct.Reg* %2984, i32 0, i32 0
  %PC.i858 = bitcast %union.anon* %2985 to i64*
  %2986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2987 = getelementptr inbounds %struct.GPR, %struct.GPR* %2986, i32 0, i32 1
  %2988 = getelementptr inbounds %struct.Reg, %struct.Reg* %2987, i32 0, i32 0
  %EAX.i859 = bitcast %union.anon* %2988 to i32*
  %2989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2990 = getelementptr inbounds %struct.GPR, %struct.GPR* %2989, i32 0, i32 15
  %2991 = getelementptr inbounds %struct.Reg, %struct.Reg* %2990, i32 0, i32 0
  %RBP.i860 = bitcast %union.anon* %2991 to i64*
  %2992 = load i64, i64* %RBP.i860
  %2993 = sub i64 %2992, 80
  %2994 = load i32, i32* %EAX.i859
  %2995 = zext i32 %2994 to i64
  %2996 = load i64, i64* %PC.i858
  %2997 = add i64 %2996, 3
  store i64 %2997, i64* %PC.i858
  %2998 = inttoptr i64 %2993 to i32*
  store i32 %2994, i32* %2998
  store %struct.Memory* %loadMem_435af8, %struct.Memory** %MEMORY
  br label %block_.L_435afb

block_.L_435afb:                                  ; preds = %block_435b05, %block_435a4c
  %loadMem_435afb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3000 = getelementptr inbounds %struct.GPR, %struct.GPR* %2999, i32 0, i32 33
  %3001 = getelementptr inbounds %struct.Reg, %struct.Reg* %3000, i32 0, i32 0
  %PC.i856 = bitcast %union.anon* %3001 to i64*
  %3002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3003 = getelementptr inbounds %struct.GPR, %struct.GPR* %3002, i32 0, i32 15
  %3004 = getelementptr inbounds %struct.Reg, %struct.Reg* %3003, i32 0, i32 0
  %RBP.i857 = bitcast %union.anon* %3004 to i64*
  %3005 = load i64, i64* %RBP.i857
  %3006 = sub i64 %3005, 80
  %3007 = load i64, i64* %PC.i856
  %3008 = add i64 %3007, 4
  store i64 %3008, i64* %PC.i856
  %3009 = inttoptr i64 %3006 to i32*
  %3010 = load i32, i32* %3009
  %3011 = sub i32 %3010, 1
  %3012 = icmp ult i32 %3010, 1
  %3013 = zext i1 %3012 to i8
  %3014 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3013, i8* %3014, align 1
  %3015 = and i32 %3011, 255
  %3016 = call i32 @llvm.ctpop.i32(i32 %3015)
  %3017 = trunc i32 %3016 to i8
  %3018 = and i8 %3017, 1
  %3019 = xor i8 %3018, 1
  %3020 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3019, i8* %3020, align 1
  %3021 = xor i32 %3010, 1
  %3022 = xor i32 %3021, %3011
  %3023 = lshr i32 %3022, 4
  %3024 = trunc i32 %3023 to i8
  %3025 = and i8 %3024, 1
  %3026 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3025, i8* %3026, align 1
  %3027 = icmp eq i32 %3011, 0
  %3028 = zext i1 %3027 to i8
  %3029 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3028, i8* %3029, align 1
  %3030 = lshr i32 %3011, 31
  %3031 = trunc i32 %3030 to i8
  %3032 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3031, i8* %3032, align 1
  %3033 = lshr i32 %3010, 31
  %3034 = xor i32 %3030, %3033
  %3035 = add i32 %3034, %3033
  %3036 = icmp eq i32 %3035, 2
  %3037 = zext i1 %3036 to i8
  %3038 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3037, i8* %3038, align 1
  store %struct.Memory* %loadMem_435afb, %struct.Memory** %MEMORY
  %loadMem_435aff = load %struct.Memory*, %struct.Memory** %MEMORY
  %3039 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3040 = getelementptr inbounds %struct.GPR, %struct.GPR* %3039, i32 0, i32 33
  %3041 = getelementptr inbounds %struct.Reg, %struct.Reg* %3040, i32 0, i32 0
  %PC.i855 = bitcast %union.anon* %3041 to i64*
  %3042 = load i64, i64* %PC.i855
  %3043 = add i64 %3042, 97
  %3044 = load i64, i64* %PC.i855
  %3045 = add i64 %3044, 6
  %3046 = load i64, i64* %PC.i855
  %3047 = add i64 %3046, 6
  store i64 %3047, i64* %PC.i855
  %3048 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3049 = load i8, i8* %3048, align 1
  %3050 = icmp ne i8 %3049, 0
  %3051 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3052 = load i8, i8* %3051, align 1
  %3053 = icmp ne i8 %3052, 0
  %3054 = xor i1 %3050, %3053
  %3055 = zext i1 %3054 to i8
  store i8 %3055, i8* %BRANCH_TAKEN, align 1
  %3056 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3057 = select i1 %3054, i64 %3043, i64 %3045
  store i64 %3057, i64* %3056, align 8
  store %struct.Memory* %loadMem_435aff, %struct.Memory** %MEMORY
  %loadBr_435aff = load i8, i8* %BRANCH_TAKEN
  %cmpBr_435aff = icmp eq i8 %loadBr_435aff, 1
  br i1 %cmpBr_435aff, label %block_.L_435b60, label %block_435b05

block_435b05:                                     ; preds = %block_.L_435afb
  %loadMem_435b05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3058 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3059 = getelementptr inbounds %struct.GPR, %struct.GPR* %3058, i32 0, i32 33
  %3060 = getelementptr inbounds %struct.Reg, %struct.Reg* %3059, i32 0, i32 0
  %PC.i852 = bitcast %union.anon* %3060 to i64*
  %3061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3062 = getelementptr inbounds %struct.GPR, %struct.GPR* %3061, i32 0, i32 1
  %3063 = getelementptr inbounds %struct.Reg, %struct.Reg* %3062, i32 0, i32 0
  %RAX.i853 = bitcast %union.anon* %3063 to i64*
  %3064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3065 = getelementptr inbounds %struct.GPR, %struct.GPR* %3064, i32 0, i32 15
  %3066 = getelementptr inbounds %struct.Reg, %struct.Reg* %3065, i32 0, i32 0
  %RBP.i854 = bitcast %union.anon* %3066 to i64*
  %3067 = load i64, i64* %RBP.i854
  %3068 = sub i64 %3067, 48
  %3069 = load i64, i64* %PC.i852
  %3070 = add i64 %3069, 4
  store i64 %3070, i64* %PC.i852
  %3071 = inttoptr i64 %3068 to i64*
  %3072 = load i64, i64* %3071
  store i64 %3072, i64* %RAX.i853, align 8
  store %struct.Memory* %loadMem_435b05, %struct.Memory** %MEMORY
  %loadMem_435b09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3073 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3074 = getelementptr inbounds %struct.GPR, %struct.GPR* %3073, i32 0, i32 33
  %3075 = getelementptr inbounds %struct.Reg, %struct.Reg* %3074, i32 0, i32 0
  %PC.i849 = bitcast %union.anon* %3075 to i64*
  %3076 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3077 = getelementptr inbounds %struct.GPR, %struct.GPR* %3076, i32 0, i32 5
  %3078 = getelementptr inbounds %struct.Reg, %struct.Reg* %3077, i32 0, i32 0
  %RCX.i850 = bitcast %union.anon* %3078 to i64*
  %3079 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3080 = getelementptr inbounds %struct.GPR, %struct.GPR* %3079, i32 0, i32 15
  %3081 = getelementptr inbounds %struct.Reg, %struct.Reg* %3080, i32 0, i32 0
  %RBP.i851 = bitcast %union.anon* %3081 to i64*
  %3082 = load i64, i64* %RBP.i851
  %3083 = sub i64 %3082, 76
  %3084 = load i64, i64* %PC.i849
  %3085 = add i64 %3084, 4
  store i64 %3085, i64* %PC.i849
  %3086 = inttoptr i64 %3083 to i32*
  %3087 = load i32, i32* %3086
  %3088 = sext i32 %3087 to i64
  store i64 %3088, i64* %RCX.i850, align 8
  store %struct.Memory* %loadMem_435b09, %struct.Memory** %MEMORY
  %loadMem_435b0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3089 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3090 = getelementptr inbounds %struct.GPR, %struct.GPR* %3089, i32 0, i32 33
  %3091 = getelementptr inbounds %struct.Reg, %struct.Reg* %3090, i32 0, i32 0
  %PC.i846 = bitcast %union.anon* %3091 to i64*
  %3092 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3093 = getelementptr inbounds %struct.GPR, %struct.GPR* %3092, i32 0, i32 1
  %3094 = getelementptr inbounds %struct.Reg, %struct.Reg* %3093, i32 0, i32 0
  %RAX.i847 = bitcast %union.anon* %3094 to i64*
  %3095 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3096 = getelementptr inbounds %struct.GPR, %struct.GPR* %3095, i32 0, i32 5
  %3097 = getelementptr inbounds %struct.Reg, %struct.Reg* %3096, i32 0, i32 0
  %RCX.i848 = bitcast %union.anon* %3097 to i64*
  %3098 = load i64, i64* %RAX.i847
  %3099 = load i64, i64* %RCX.i848
  %3100 = mul i64 %3099, 8
  %3101 = add i64 %3100, %3098
  %3102 = load i64, i64* %PC.i846
  %3103 = add i64 %3102, 4
  store i64 %3103, i64* %PC.i846
  %3104 = inttoptr i64 %3101 to i64*
  %3105 = load i64, i64* %3104
  store i64 %3105, i64* %RAX.i847, align 8
  store %struct.Memory* %loadMem_435b0d, %struct.Memory** %MEMORY
  %loadMem_435b11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3107 = getelementptr inbounds %struct.GPR, %struct.GPR* %3106, i32 0, i32 33
  %3108 = getelementptr inbounds %struct.Reg, %struct.Reg* %3107, i32 0, i32 0
  %PC.i843 = bitcast %union.anon* %3108 to i64*
  %3109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3110 = getelementptr inbounds %struct.GPR, %struct.GPR* %3109, i32 0, i32 1
  %3111 = getelementptr inbounds %struct.Reg, %struct.Reg* %3110, i32 0, i32 0
  %RAX.i844 = bitcast %union.anon* %3111 to i64*
  %3112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3113 = getelementptr inbounds %struct.GPR, %struct.GPR* %3112, i32 0, i32 11
  %3114 = getelementptr inbounds %struct.Reg, %struct.Reg* %3113, i32 0, i32 0
  %RDI.i845 = bitcast %union.anon* %3114 to i64*
  %3115 = load i64, i64* %RAX.i844
  %3116 = load i64, i64* %PC.i843
  %3117 = add i64 %3116, 2
  store i64 %3117, i64* %PC.i843
  %3118 = inttoptr i64 %3115 to i32*
  %3119 = load i32, i32* %3118
  %3120 = zext i32 %3119 to i64
  store i64 %3120, i64* %RDI.i845, align 8
  store %struct.Memory* %loadMem_435b11, %struct.Memory** %MEMORY
  %loadMem_435b13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3122 = getelementptr inbounds %struct.GPR, %struct.GPR* %3121, i32 0, i32 33
  %3123 = getelementptr inbounds %struct.Reg, %struct.Reg* %3122, i32 0, i32 0
  %PC.i840 = bitcast %union.anon* %3123 to i64*
  %3124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3125 = getelementptr inbounds %struct.GPR, %struct.GPR* %3124, i32 0, i32 1
  %3126 = getelementptr inbounds %struct.Reg, %struct.Reg* %3125, i32 0, i32 0
  %RAX.i841 = bitcast %union.anon* %3126 to i64*
  %3127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3128 = getelementptr inbounds %struct.GPR, %struct.GPR* %3127, i32 0, i32 15
  %3129 = getelementptr inbounds %struct.Reg, %struct.Reg* %3128, i32 0, i32 0
  %RBP.i842 = bitcast %union.anon* %3129 to i64*
  %3130 = load i64, i64* %RBP.i842
  %3131 = sub i64 %3130, 56
  %3132 = load i64, i64* %PC.i840
  %3133 = add i64 %3132, 4
  store i64 %3133, i64* %PC.i840
  %3134 = inttoptr i64 %3131 to i64*
  %3135 = load i64, i64* %3134
  store i64 %3135, i64* %RAX.i841, align 8
  store %struct.Memory* %loadMem_435b13, %struct.Memory** %MEMORY
  %loadMem_435b17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3137 = getelementptr inbounds %struct.GPR, %struct.GPR* %3136, i32 0, i32 33
  %3138 = getelementptr inbounds %struct.Reg, %struct.Reg* %3137, i32 0, i32 0
  %PC.i837 = bitcast %union.anon* %3138 to i64*
  %3139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3140 = getelementptr inbounds %struct.GPR, %struct.GPR* %3139, i32 0, i32 7
  %3141 = getelementptr inbounds %struct.Reg, %struct.Reg* %3140, i32 0, i32 0
  %RDX.i838 = bitcast %union.anon* %3141 to i64*
  %3142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3143 = getelementptr inbounds %struct.GPR, %struct.GPR* %3142, i32 0, i32 15
  %3144 = getelementptr inbounds %struct.Reg, %struct.Reg* %3143, i32 0, i32 0
  %RBP.i839 = bitcast %union.anon* %3144 to i64*
  %3145 = load i64, i64* %RBP.i839
  %3146 = sub i64 %3145, 76
  %3147 = load i64, i64* %PC.i837
  %3148 = add i64 %3147, 3
  store i64 %3148, i64* %PC.i837
  %3149 = inttoptr i64 %3146 to i32*
  %3150 = load i32, i32* %3149
  %3151 = zext i32 %3150 to i64
  store i64 %3151, i64* %RDX.i838, align 8
  store %struct.Memory* %loadMem_435b17, %struct.Memory** %MEMORY
  %loadMem_435b1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3153 = getelementptr inbounds %struct.GPR, %struct.GPR* %3152, i32 0, i32 33
  %3154 = getelementptr inbounds %struct.Reg, %struct.Reg* %3153, i32 0, i32 0
  %PC.i835 = bitcast %union.anon* %3154 to i64*
  %3155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3156 = getelementptr inbounds %struct.GPR, %struct.GPR* %3155, i32 0, i32 7
  %3157 = getelementptr inbounds %struct.Reg, %struct.Reg* %3156, i32 0, i32 0
  %RDX.i836 = bitcast %union.anon* %3157 to i64*
  %3158 = load i64, i64* %RDX.i836
  %3159 = load i64, i64* %PC.i835
  %3160 = add i64 %3159, 3
  store i64 %3160, i64* %PC.i835
  %3161 = trunc i64 %3158 to i32
  %3162 = add i32 1, %3161
  %3163 = zext i32 %3162 to i64
  store i64 %3163, i64* %RDX.i836, align 8
  %3164 = icmp ult i32 %3162, %3161
  %3165 = icmp ult i32 %3162, 1
  %3166 = or i1 %3164, %3165
  %3167 = zext i1 %3166 to i8
  %3168 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3167, i8* %3168, align 1
  %3169 = and i32 %3162, 255
  %3170 = call i32 @llvm.ctpop.i32(i32 %3169)
  %3171 = trunc i32 %3170 to i8
  %3172 = and i8 %3171, 1
  %3173 = xor i8 %3172, 1
  %3174 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3173, i8* %3174, align 1
  %3175 = xor i64 1, %3158
  %3176 = trunc i64 %3175 to i32
  %3177 = xor i32 %3176, %3162
  %3178 = lshr i32 %3177, 4
  %3179 = trunc i32 %3178 to i8
  %3180 = and i8 %3179, 1
  %3181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3180, i8* %3181, align 1
  %3182 = icmp eq i32 %3162, 0
  %3183 = zext i1 %3182 to i8
  %3184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3183, i8* %3184, align 1
  %3185 = lshr i32 %3162, 31
  %3186 = trunc i32 %3185 to i8
  %3187 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3186, i8* %3187, align 1
  %3188 = lshr i32 %3161, 31
  %3189 = xor i32 %3185, %3188
  %3190 = add i32 %3189, %3185
  %3191 = icmp eq i32 %3190, 2
  %3192 = zext i1 %3191 to i8
  %3193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3192, i8* %3193, align 1
  store %struct.Memory* %loadMem_435b1a, %struct.Memory** %MEMORY
  %loadMem_435b1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3195 = getelementptr inbounds %struct.GPR, %struct.GPR* %3194, i32 0, i32 33
  %3196 = getelementptr inbounds %struct.Reg, %struct.Reg* %3195, i32 0, i32 0
  %PC.i832 = bitcast %union.anon* %3196 to i64*
  %3197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3198 = getelementptr inbounds %struct.GPR, %struct.GPR* %3197, i32 0, i32 7
  %3199 = getelementptr inbounds %struct.Reg, %struct.Reg* %3198, i32 0, i32 0
  %EDX.i833 = bitcast %union.anon* %3199 to i32*
  %3200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3201 = getelementptr inbounds %struct.GPR, %struct.GPR* %3200, i32 0, i32 5
  %3202 = getelementptr inbounds %struct.Reg, %struct.Reg* %3201, i32 0, i32 0
  %RCX.i834 = bitcast %union.anon* %3202 to i64*
  %3203 = load i32, i32* %EDX.i833
  %3204 = zext i32 %3203 to i64
  %3205 = load i64, i64* %PC.i832
  %3206 = add i64 %3205, 3
  store i64 %3206, i64* %PC.i832
  %3207 = shl i64 %3204, 32
  %3208 = ashr exact i64 %3207, 32
  store i64 %3208, i64* %RCX.i834, align 8
  store %struct.Memory* %loadMem_435b1d, %struct.Memory** %MEMORY
  %loadMem_435b20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3210 = getelementptr inbounds %struct.GPR, %struct.GPR* %3209, i32 0, i32 33
  %3211 = getelementptr inbounds %struct.Reg, %struct.Reg* %3210, i32 0, i32 0
  %PC.i829 = bitcast %union.anon* %3211 to i64*
  %3212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3213 = getelementptr inbounds %struct.GPR, %struct.GPR* %3212, i32 0, i32 1
  %3214 = getelementptr inbounds %struct.Reg, %struct.Reg* %3213, i32 0, i32 0
  %RAX.i830 = bitcast %union.anon* %3214 to i64*
  %3215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3216 = getelementptr inbounds %struct.GPR, %struct.GPR* %3215, i32 0, i32 5
  %3217 = getelementptr inbounds %struct.Reg, %struct.Reg* %3216, i32 0, i32 0
  %RCX.i831 = bitcast %union.anon* %3217 to i64*
  %3218 = load i64, i64* %RAX.i830
  %3219 = load i64, i64* %RCX.i831
  %3220 = mul i64 %3219, 8
  %3221 = add i64 %3220, %3218
  %3222 = load i64, i64* %PC.i829
  %3223 = add i64 %3222, 4
  store i64 %3223, i64* %PC.i829
  %3224 = inttoptr i64 %3221 to i64*
  %3225 = load i64, i64* %3224
  store i64 %3225, i64* %RAX.i830, align 8
  store %struct.Memory* %loadMem_435b20, %struct.Memory** %MEMORY
  %loadMem_435b24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3227 = getelementptr inbounds %struct.GPR, %struct.GPR* %3226, i32 0, i32 33
  %3228 = getelementptr inbounds %struct.Reg, %struct.Reg* %3227, i32 0, i32 0
  %PC.i826 = bitcast %union.anon* %3228 to i64*
  %3229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3230 = getelementptr inbounds %struct.GPR, %struct.GPR* %3229, i32 0, i32 5
  %3231 = getelementptr inbounds %struct.Reg, %struct.Reg* %3230, i32 0, i32 0
  %RCX.i827 = bitcast %union.anon* %3231 to i64*
  %3232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3233 = getelementptr inbounds %struct.GPR, %struct.GPR* %3232, i32 0, i32 15
  %3234 = getelementptr inbounds %struct.Reg, %struct.Reg* %3233, i32 0, i32 0
  %RBP.i828 = bitcast %union.anon* %3234 to i64*
  %3235 = load i64, i64* %RBP.i828
  %3236 = sub i64 %3235, 80
  %3237 = load i64, i64* %PC.i826
  %3238 = add i64 %3237, 4
  store i64 %3238, i64* %PC.i826
  %3239 = inttoptr i64 %3236 to i32*
  %3240 = load i32, i32* %3239
  %3241 = sext i32 %3240 to i64
  store i64 %3241, i64* %RCX.i827, align 8
  store %struct.Memory* %loadMem_435b24, %struct.Memory** %MEMORY
  %loadMem_435b28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3243 = getelementptr inbounds %struct.GPR, %struct.GPR* %3242, i32 0, i32 33
  %3244 = getelementptr inbounds %struct.Reg, %struct.Reg* %3243, i32 0, i32 0
  %PC.i822 = bitcast %union.anon* %3244 to i64*
  %3245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3246 = getelementptr inbounds %struct.GPR, %struct.GPR* %3245, i32 0, i32 1
  %3247 = getelementptr inbounds %struct.Reg, %struct.Reg* %3246, i32 0, i32 0
  %RAX.i823 = bitcast %union.anon* %3247 to i64*
  %3248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3249 = getelementptr inbounds %struct.GPR, %struct.GPR* %3248, i32 0, i32 5
  %3250 = getelementptr inbounds %struct.Reg, %struct.Reg* %3249, i32 0, i32 0
  %RCX.i824 = bitcast %union.anon* %3250 to i64*
  %3251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3252 = getelementptr inbounds %struct.GPR, %struct.GPR* %3251, i32 0, i32 7
  %3253 = getelementptr inbounds %struct.Reg, %struct.Reg* %3252, i32 0, i32 0
  %RDX.i825 = bitcast %union.anon* %3253 to i64*
  %3254 = load i64, i64* %RAX.i823
  %3255 = load i64, i64* %RCX.i824
  %3256 = mul i64 %3255, 4
  %3257 = add i64 %3256, %3254
  %3258 = load i64, i64* %PC.i822
  %3259 = add i64 %3258, 3
  store i64 %3259, i64* %PC.i822
  %3260 = inttoptr i64 %3257 to i32*
  %3261 = load i32, i32* %3260
  %3262 = zext i32 %3261 to i64
  store i64 %3262, i64* %RDX.i825, align 8
  store %struct.Memory* %loadMem_435b28, %struct.Memory** %MEMORY
  %loadMem_435b2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3264 = getelementptr inbounds %struct.GPR, %struct.GPR* %3263, i32 0, i32 33
  %3265 = getelementptr inbounds %struct.Reg, %struct.Reg* %3264, i32 0, i32 0
  %PC.i819 = bitcast %union.anon* %3265 to i64*
  %3266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3267 = getelementptr inbounds %struct.GPR, %struct.GPR* %3266, i32 0, i32 1
  %3268 = getelementptr inbounds %struct.Reg, %struct.Reg* %3267, i32 0, i32 0
  %RAX.i820 = bitcast %union.anon* %3268 to i64*
  %3269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3270 = getelementptr inbounds %struct.GPR, %struct.GPR* %3269, i32 0, i32 15
  %3271 = getelementptr inbounds %struct.Reg, %struct.Reg* %3270, i32 0, i32 0
  %RBP.i821 = bitcast %union.anon* %3271 to i64*
  %3272 = load i64, i64* %RBP.i821
  %3273 = sub i64 %3272, 24
  %3274 = load i64, i64* %PC.i819
  %3275 = add i64 %3274, 4
  store i64 %3275, i64* %PC.i819
  %3276 = inttoptr i64 %3273 to i64*
  %3277 = load i64, i64* %3276
  store i64 %3277, i64* %RAX.i820, align 8
  store %struct.Memory* %loadMem_435b2b, %struct.Memory** %MEMORY
  %loadMem_435b2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3279 = getelementptr inbounds %struct.GPR, %struct.GPR* %3278, i32 0, i32 33
  %3280 = getelementptr inbounds %struct.Reg, %struct.Reg* %3279, i32 0, i32 0
  %PC.i817 = bitcast %union.anon* %3280 to i64*
  %3281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3282 = getelementptr inbounds %struct.GPR, %struct.GPR* %3281, i32 0, i32 1
  %3283 = getelementptr inbounds %struct.Reg, %struct.Reg* %3282, i32 0, i32 0
  %RAX.i818 = bitcast %union.anon* %3283 to i64*
  %3284 = load i64, i64* %RAX.i818
  %3285 = add i64 %3284, 368
  %3286 = load i64, i64* %PC.i817
  %3287 = add i64 %3286, 7
  store i64 %3287, i64* %PC.i817
  %3288 = inttoptr i64 %3285 to i64*
  %3289 = load i64, i64* %3288
  store i64 %3289, i64* %RAX.i818, align 8
  store %struct.Memory* %loadMem_435b2f, %struct.Memory** %MEMORY
  %loadMem_435b36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3291 = getelementptr inbounds %struct.GPR, %struct.GPR* %3290, i32 0, i32 33
  %3292 = getelementptr inbounds %struct.Reg, %struct.Reg* %3291, i32 0, i32 0
  %PC.i814 = bitcast %union.anon* %3292 to i64*
  %3293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3294 = getelementptr inbounds %struct.GPR, %struct.GPR* %3293, i32 0, i32 5
  %3295 = getelementptr inbounds %struct.Reg, %struct.Reg* %3294, i32 0, i32 0
  %RCX.i815 = bitcast %union.anon* %3295 to i64*
  %3296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3297 = getelementptr inbounds %struct.GPR, %struct.GPR* %3296, i32 0, i32 15
  %3298 = getelementptr inbounds %struct.Reg, %struct.Reg* %3297, i32 0, i32 0
  %RBP.i816 = bitcast %union.anon* %3298 to i64*
  %3299 = load i64, i64* %RBP.i816
  %3300 = sub i64 %3299, 80
  %3301 = load i64, i64* %PC.i814
  %3302 = add i64 %3301, 4
  store i64 %3302, i64* %PC.i814
  %3303 = inttoptr i64 %3300 to i32*
  %3304 = load i32, i32* %3303
  %3305 = sext i32 %3304 to i64
  store i64 %3305, i64* %RCX.i815, align 8
  store %struct.Memory* %loadMem_435b36, %struct.Memory** %MEMORY
  %loadMem_435b3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3307 = getelementptr inbounds %struct.GPR, %struct.GPR* %3306, i32 0, i32 33
  %3308 = getelementptr inbounds %struct.Reg, %struct.Reg* %3307, i32 0, i32 0
  %PC.i810 = bitcast %union.anon* %3308 to i64*
  %3309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3310 = getelementptr inbounds %struct.GPR, %struct.GPR* %3309, i32 0, i32 1
  %3311 = getelementptr inbounds %struct.Reg, %struct.Reg* %3310, i32 0, i32 0
  %RAX.i811 = bitcast %union.anon* %3311 to i64*
  %3312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3313 = getelementptr inbounds %struct.GPR, %struct.GPR* %3312, i32 0, i32 5
  %3314 = getelementptr inbounds %struct.Reg, %struct.Reg* %3313, i32 0, i32 0
  %RCX.i812 = bitcast %union.anon* %3314 to i64*
  %3315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3316 = getelementptr inbounds %struct.GPR, %struct.GPR* %3315, i32 0, i32 7
  %3317 = getelementptr inbounds %struct.Reg, %struct.Reg* %3316, i32 0, i32 0
  %RDX.i813 = bitcast %union.anon* %3317 to i64*
  %3318 = load i64, i64* %RDX.i813
  %3319 = load i64, i64* %RAX.i811
  %3320 = load i64, i64* %RCX.i812
  %3321 = mul i64 %3320, 4
  %3322 = add i64 %3321, %3319
  %3323 = load i64, i64* %PC.i810
  %3324 = add i64 %3323, 3
  store i64 %3324, i64* %PC.i810
  %3325 = trunc i64 %3318 to i32
  %3326 = inttoptr i64 %3322 to i32*
  %3327 = load i32, i32* %3326
  %3328 = add i32 %3327, %3325
  %3329 = zext i32 %3328 to i64
  store i64 %3329, i64* %RDX.i813, align 8
  %3330 = icmp ult i32 %3328, %3325
  %3331 = icmp ult i32 %3328, %3327
  %3332 = or i1 %3330, %3331
  %3333 = zext i1 %3332 to i8
  %3334 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3333, i8* %3334, align 1
  %3335 = and i32 %3328, 255
  %3336 = call i32 @llvm.ctpop.i32(i32 %3335)
  %3337 = trunc i32 %3336 to i8
  %3338 = and i8 %3337, 1
  %3339 = xor i8 %3338, 1
  %3340 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3339, i8* %3340, align 1
  %3341 = xor i32 %3327, %3325
  %3342 = xor i32 %3341, %3328
  %3343 = lshr i32 %3342, 4
  %3344 = trunc i32 %3343 to i8
  %3345 = and i8 %3344, 1
  %3346 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3345, i8* %3346, align 1
  %3347 = icmp eq i32 %3328, 0
  %3348 = zext i1 %3347 to i8
  %3349 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3348, i8* %3349, align 1
  %3350 = lshr i32 %3328, 31
  %3351 = trunc i32 %3350 to i8
  %3352 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3351, i8* %3352, align 1
  %3353 = lshr i32 %3325, 31
  %3354 = lshr i32 %3327, 31
  %3355 = xor i32 %3350, %3353
  %3356 = xor i32 %3350, %3354
  %3357 = add i32 %3355, %3356
  %3358 = icmp eq i32 %3357, 2
  %3359 = zext i1 %3358 to i8
  %3360 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3359, i8* %3360, align 1
  store %struct.Memory* %loadMem_435b3a, %struct.Memory** %MEMORY
  %loadMem_435b3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3362 = getelementptr inbounds %struct.GPR, %struct.GPR* %3361, i32 0, i32 33
  %3363 = getelementptr inbounds %struct.Reg, %struct.Reg* %3362, i32 0, i32 0
  %PC.i807 = bitcast %union.anon* %3363 to i64*
  %3364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3365 = getelementptr inbounds %struct.GPR, %struct.GPR* %3364, i32 0, i32 7
  %3366 = getelementptr inbounds %struct.Reg, %struct.Reg* %3365, i32 0, i32 0
  %EDX.i808 = bitcast %union.anon* %3366 to i32*
  %3367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3368 = getelementptr inbounds %struct.GPR, %struct.GPR* %3367, i32 0, i32 9
  %3369 = getelementptr inbounds %struct.Reg, %struct.Reg* %3368, i32 0, i32 0
  %RSI.i809 = bitcast %union.anon* %3369 to i64*
  %3370 = load i32, i32* %EDX.i808
  %3371 = zext i32 %3370 to i64
  %3372 = load i64, i64* %PC.i807
  %3373 = add i64 %3372, 2
  store i64 %3373, i64* %PC.i807
  %3374 = and i64 %3371, 4294967295
  store i64 %3374, i64* %RSI.i809, align 8
  store %struct.Memory* %loadMem_435b3d, %struct.Memory** %MEMORY
  %loadMem1_435b3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3376 = getelementptr inbounds %struct.GPR, %struct.GPR* %3375, i32 0, i32 33
  %3377 = getelementptr inbounds %struct.Reg, %struct.Reg* %3376, i32 0, i32 0
  %PC.i806 = bitcast %union.anon* %3377 to i64*
  %3378 = load i64, i64* %PC.i806
  %3379 = add i64 %3378, -55695
  %3380 = load i64, i64* %PC.i806
  %3381 = add i64 %3380, 5
  %3382 = load i64, i64* %PC.i806
  %3383 = add i64 %3382, 5
  store i64 %3383, i64* %PC.i806
  %3384 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3385 = load i64, i64* %3384, align 8
  %3386 = add i64 %3385, -8
  %3387 = inttoptr i64 %3386 to i64*
  store i64 %3381, i64* %3387
  store i64 %3386, i64* %3384, align 8
  %3388 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3379, i64* %3388, align 8
  store %struct.Memory* %loadMem1_435b3f, %struct.Memory** %MEMORY
  %loadMem2_435b3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_435b3f = load i64, i64* %3
  %call2_435b3f = call %struct.Memory* @sub_4281b0.ILogsum(%struct.State* %0, i64 %loadPC_435b3f, %struct.Memory* %loadMem2_435b3f)
  store %struct.Memory* %call2_435b3f, %struct.Memory** %MEMORY
  %loadMem_435b44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3390 = getelementptr inbounds %struct.GPR, %struct.GPR* %3389, i32 0, i32 33
  %3391 = getelementptr inbounds %struct.Reg, %struct.Reg* %3390, i32 0, i32 0
  %PC.i803 = bitcast %union.anon* %3391 to i64*
  %3392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3393 = getelementptr inbounds %struct.GPR, %struct.GPR* %3392, i32 0, i32 5
  %3394 = getelementptr inbounds %struct.Reg, %struct.Reg* %3393, i32 0, i32 0
  %RCX.i804 = bitcast %union.anon* %3394 to i64*
  %3395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3396 = getelementptr inbounds %struct.GPR, %struct.GPR* %3395, i32 0, i32 15
  %3397 = getelementptr inbounds %struct.Reg, %struct.Reg* %3396, i32 0, i32 0
  %RBP.i805 = bitcast %union.anon* %3397 to i64*
  %3398 = load i64, i64* %RBP.i805
  %3399 = sub i64 %3398, 48
  %3400 = load i64, i64* %PC.i803
  %3401 = add i64 %3400, 4
  store i64 %3401, i64* %PC.i803
  %3402 = inttoptr i64 %3399 to i64*
  %3403 = load i64, i64* %3402
  store i64 %3403, i64* %RCX.i804, align 8
  store %struct.Memory* %loadMem_435b44, %struct.Memory** %MEMORY
  %loadMem_435b48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3405 = getelementptr inbounds %struct.GPR, %struct.GPR* %3404, i32 0, i32 33
  %3406 = getelementptr inbounds %struct.Reg, %struct.Reg* %3405, i32 0, i32 0
  %PC.i800 = bitcast %union.anon* %3406 to i64*
  %3407 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3408 = getelementptr inbounds %struct.GPR, %struct.GPR* %3407, i32 0, i32 15
  %3409 = getelementptr inbounds %struct.Reg, %struct.Reg* %3408, i32 0, i32 0
  %RBP.i801 = bitcast %union.anon* %3409 to i64*
  %3410 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3411 = getelementptr inbounds %struct.GPR, %struct.GPR* %3410, i32 0, i32 17
  %3412 = getelementptr inbounds %struct.Reg, %struct.Reg* %3411, i32 0, i32 0
  %R8.i802 = bitcast %union.anon* %3412 to i64*
  %3413 = load i64, i64* %RBP.i801
  %3414 = sub i64 %3413, 76
  %3415 = load i64, i64* %PC.i800
  %3416 = add i64 %3415, 4
  store i64 %3416, i64* %PC.i800
  %3417 = inttoptr i64 %3414 to i32*
  %3418 = load i32, i32* %3417
  %3419 = sext i32 %3418 to i64
  store i64 %3419, i64* %R8.i802, align 8
  store %struct.Memory* %loadMem_435b48, %struct.Memory** %MEMORY
  %loadMem_435b4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3421 = getelementptr inbounds %struct.GPR, %struct.GPR* %3420, i32 0, i32 33
  %3422 = getelementptr inbounds %struct.Reg, %struct.Reg* %3421, i32 0, i32 0
  %PC.i797 = bitcast %union.anon* %3422 to i64*
  %3423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3424 = getelementptr inbounds %struct.GPR, %struct.GPR* %3423, i32 0, i32 5
  %3425 = getelementptr inbounds %struct.Reg, %struct.Reg* %3424, i32 0, i32 0
  %RCX.i798 = bitcast %union.anon* %3425 to i64*
  %3426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3427 = getelementptr inbounds %struct.GPR, %struct.GPR* %3426, i32 0, i32 17
  %3428 = getelementptr inbounds %struct.Reg, %struct.Reg* %3427, i32 0, i32 0
  %R8.i799 = bitcast %union.anon* %3428 to i64*
  %3429 = load i64, i64* %RCX.i798
  %3430 = load i64, i64* %R8.i799
  %3431 = mul i64 %3430, 8
  %3432 = add i64 %3431, %3429
  %3433 = load i64, i64* %PC.i797
  %3434 = add i64 %3433, 4
  store i64 %3434, i64* %PC.i797
  %3435 = inttoptr i64 %3432 to i64*
  %3436 = load i64, i64* %3435
  store i64 %3436, i64* %RCX.i798, align 8
  store %struct.Memory* %loadMem_435b4c, %struct.Memory** %MEMORY
  %loadMem_435b50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3438 = getelementptr inbounds %struct.GPR, %struct.GPR* %3437, i32 0, i32 33
  %3439 = getelementptr inbounds %struct.Reg, %struct.Reg* %3438, i32 0, i32 0
  %PC.i794 = bitcast %union.anon* %3439 to i64*
  %3440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3441 = getelementptr inbounds %struct.GPR, %struct.GPR* %3440, i32 0, i32 1
  %3442 = getelementptr inbounds %struct.Reg, %struct.Reg* %3441, i32 0, i32 0
  %EAX.i795 = bitcast %union.anon* %3442 to i32*
  %3443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3444 = getelementptr inbounds %struct.GPR, %struct.GPR* %3443, i32 0, i32 5
  %3445 = getelementptr inbounds %struct.Reg, %struct.Reg* %3444, i32 0, i32 0
  %RCX.i796 = bitcast %union.anon* %3445 to i64*
  %3446 = load i64, i64* %RCX.i796
  %3447 = load i32, i32* %EAX.i795
  %3448 = zext i32 %3447 to i64
  %3449 = load i64, i64* %PC.i794
  %3450 = add i64 %3449, 2
  store i64 %3450, i64* %PC.i794
  %3451 = inttoptr i64 %3446 to i32*
  store i32 %3447, i32* %3451
  store %struct.Memory* %loadMem_435b50, %struct.Memory** %MEMORY
  %loadMem_435b52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3453 = getelementptr inbounds %struct.GPR, %struct.GPR* %3452, i32 0, i32 33
  %3454 = getelementptr inbounds %struct.Reg, %struct.Reg* %3453, i32 0, i32 0
  %PC.i791 = bitcast %union.anon* %3454 to i64*
  %3455 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3456 = getelementptr inbounds %struct.GPR, %struct.GPR* %3455, i32 0, i32 1
  %3457 = getelementptr inbounds %struct.Reg, %struct.Reg* %3456, i32 0, i32 0
  %RAX.i792 = bitcast %union.anon* %3457 to i64*
  %3458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3459 = getelementptr inbounds %struct.GPR, %struct.GPR* %3458, i32 0, i32 15
  %3460 = getelementptr inbounds %struct.Reg, %struct.Reg* %3459, i32 0, i32 0
  %RBP.i793 = bitcast %union.anon* %3460 to i64*
  %3461 = load i64, i64* %RBP.i793
  %3462 = sub i64 %3461, 80
  %3463 = load i64, i64* %PC.i791
  %3464 = add i64 %3463, 3
  store i64 %3464, i64* %PC.i791
  %3465 = inttoptr i64 %3462 to i32*
  %3466 = load i32, i32* %3465
  %3467 = zext i32 %3466 to i64
  store i64 %3467, i64* %RAX.i792, align 8
  store %struct.Memory* %loadMem_435b52, %struct.Memory** %MEMORY
  %loadMem_435b55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3469 = getelementptr inbounds %struct.GPR, %struct.GPR* %3468, i32 0, i32 33
  %3470 = getelementptr inbounds %struct.Reg, %struct.Reg* %3469, i32 0, i32 0
  %PC.i789 = bitcast %union.anon* %3470 to i64*
  %3471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3472 = getelementptr inbounds %struct.GPR, %struct.GPR* %3471, i32 0, i32 1
  %3473 = getelementptr inbounds %struct.Reg, %struct.Reg* %3472, i32 0, i32 0
  %RAX.i790 = bitcast %union.anon* %3473 to i64*
  %3474 = load i64, i64* %RAX.i790
  %3475 = load i64, i64* %PC.i789
  %3476 = add i64 %3475, 3
  store i64 %3476, i64* %PC.i789
  %3477 = trunc i64 %3474 to i32
  %3478 = add i32 -1, %3477
  %3479 = zext i32 %3478 to i64
  store i64 %3479, i64* %RAX.i790, align 8
  %3480 = icmp ult i32 %3478, %3477
  %3481 = icmp ult i32 %3478, -1
  %3482 = or i1 %3480, %3481
  %3483 = zext i1 %3482 to i8
  %3484 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3483, i8* %3484, align 1
  %3485 = and i32 %3478, 255
  %3486 = call i32 @llvm.ctpop.i32(i32 %3485)
  %3487 = trunc i32 %3486 to i8
  %3488 = and i8 %3487, 1
  %3489 = xor i8 %3488, 1
  %3490 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3489, i8* %3490, align 1
  %3491 = xor i64 -1, %3474
  %3492 = trunc i64 %3491 to i32
  %3493 = xor i32 %3492, %3478
  %3494 = lshr i32 %3493, 4
  %3495 = trunc i32 %3494 to i8
  %3496 = and i8 %3495, 1
  %3497 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3496, i8* %3497, align 1
  %3498 = icmp eq i32 %3478, 0
  %3499 = zext i1 %3498 to i8
  %3500 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3499, i8* %3500, align 1
  %3501 = lshr i32 %3478, 31
  %3502 = trunc i32 %3501 to i8
  %3503 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3502, i8* %3503, align 1
  %3504 = lshr i32 %3477, 31
  %3505 = xor i32 %3501, %3504
  %3506 = xor i32 %3501, 1
  %3507 = add i32 %3505, %3506
  %3508 = icmp eq i32 %3507, 2
  %3509 = zext i1 %3508 to i8
  %3510 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3509, i8* %3510, align 1
  store %struct.Memory* %loadMem_435b55, %struct.Memory** %MEMORY
  %loadMem_435b58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3511 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3512 = getelementptr inbounds %struct.GPR, %struct.GPR* %3511, i32 0, i32 33
  %3513 = getelementptr inbounds %struct.Reg, %struct.Reg* %3512, i32 0, i32 0
  %PC.i786 = bitcast %union.anon* %3513 to i64*
  %3514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3515 = getelementptr inbounds %struct.GPR, %struct.GPR* %3514, i32 0, i32 1
  %3516 = getelementptr inbounds %struct.Reg, %struct.Reg* %3515, i32 0, i32 0
  %EAX.i787 = bitcast %union.anon* %3516 to i32*
  %3517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3518 = getelementptr inbounds %struct.GPR, %struct.GPR* %3517, i32 0, i32 15
  %3519 = getelementptr inbounds %struct.Reg, %struct.Reg* %3518, i32 0, i32 0
  %RBP.i788 = bitcast %union.anon* %3519 to i64*
  %3520 = load i64, i64* %RBP.i788
  %3521 = sub i64 %3520, 80
  %3522 = load i32, i32* %EAX.i787
  %3523 = zext i32 %3522 to i64
  %3524 = load i64, i64* %PC.i786
  %3525 = add i64 %3524, 3
  store i64 %3525, i64* %PC.i786
  %3526 = inttoptr i64 %3521 to i32*
  store i32 %3522, i32* %3526
  store %struct.Memory* %loadMem_435b58, %struct.Memory** %MEMORY
  %loadMem_435b5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3528 = getelementptr inbounds %struct.GPR, %struct.GPR* %3527, i32 0, i32 33
  %3529 = getelementptr inbounds %struct.Reg, %struct.Reg* %3528, i32 0, i32 0
  %PC.i785 = bitcast %union.anon* %3529 to i64*
  %3530 = load i64, i64* %PC.i785
  %3531 = add i64 %3530, -96
  %3532 = load i64, i64* %PC.i785
  %3533 = add i64 %3532, 5
  store i64 %3533, i64* %PC.i785
  %3534 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3531, i64* %3534, align 8
  store %struct.Memory* %loadMem_435b5b, %struct.Memory** %MEMORY
  br label %block_.L_435afb

block_.L_435b60:                                  ; preds = %block_.L_435afb
  %loadMem_435b60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3536 = getelementptr inbounds %struct.GPR, %struct.GPR* %3535, i32 0, i32 33
  %3537 = getelementptr inbounds %struct.Reg, %struct.Reg* %3536, i32 0, i32 0
  %PC.i782 = bitcast %union.anon* %3537 to i64*
  %3538 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3539 = getelementptr inbounds %struct.GPR, %struct.GPR* %3538, i32 0, i32 1
  %3540 = getelementptr inbounds %struct.Reg, %struct.Reg* %3539, i32 0, i32 0
  %RAX.i783 = bitcast %union.anon* %3540 to i64*
  %3541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3542 = getelementptr inbounds %struct.GPR, %struct.GPR* %3541, i32 0, i32 15
  %3543 = getelementptr inbounds %struct.Reg, %struct.Reg* %3542, i32 0, i32 0
  %RBP.i784 = bitcast %union.anon* %3543 to i64*
  %3544 = load i64, i64* %RBP.i784
  %3545 = sub i64 %3544, 48
  %3546 = load i64, i64* %PC.i782
  %3547 = add i64 %3546, 4
  store i64 %3547, i64* %PC.i782
  %3548 = inttoptr i64 %3545 to i64*
  %3549 = load i64, i64* %3548
  store i64 %3549, i64* %RAX.i783, align 8
  store %struct.Memory* %loadMem_435b60, %struct.Memory** %MEMORY
  %loadMem_435b64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3550 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3551 = getelementptr inbounds %struct.GPR, %struct.GPR* %3550, i32 0, i32 33
  %3552 = getelementptr inbounds %struct.Reg, %struct.Reg* %3551, i32 0, i32 0
  %PC.i779 = bitcast %union.anon* %3552 to i64*
  %3553 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3554 = getelementptr inbounds %struct.GPR, %struct.GPR* %3553, i32 0, i32 5
  %3555 = getelementptr inbounds %struct.Reg, %struct.Reg* %3554, i32 0, i32 0
  %RCX.i780 = bitcast %union.anon* %3555 to i64*
  %3556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3557 = getelementptr inbounds %struct.GPR, %struct.GPR* %3556, i32 0, i32 15
  %3558 = getelementptr inbounds %struct.Reg, %struct.Reg* %3557, i32 0, i32 0
  %RBP.i781 = bitcast %union.anon* %3558 to i64*
  %3559 = load i64, i64* %RBP.i781
  %3560 = sub i64 %3559, 76
  %3561 = load i64, i64* %PC.i779
  %3562 = add i64 %3561, 4
  store i64 %3562, i64* %PC.i779
  %3563 = inttoptr i64 %3560 to i32*
  %3564 = load i32, i32* %3563
  %3565 = sext i32 %3564 to i64
  store i64 %3565, i64* %RCX.i780, align 8
  store %struct.Memory* %loadMem_435b64, %struct.Memory** %MEMORY
  %loadMem_435b68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3566 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3567 = getelementptr inbounds %struct.GPR, %struct.GPR* %3566, i32 0, i32 33
  %3568 = getelementptr inbounds %struct.Reg, %struct.Reg* %3567, i32 0, i32 0
  %PC.i776 = bitcast %union.anon* %3568 to i64*
  %3569 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3570 = getelementptr inbounds %struct.GPR, %struct.GPR* %3569, i32 0, i32 1
  %3571 = getelementptr inbounds %struct.Reg, %struct.Reg* %3570, i32 0, i32 0
  %RAX.i777 = bitcast %union.anon* %3571 to i64*
  %3572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3573 = getelementptr inbounds %struct.GPR, %struct.GPR* %3572, i32 0, i32 5
  %3574 = getelementptr inbounds %struct.Reg, %struct.Reg* %3573, i32 0, i32 0
  %RCX.i778 = bitcast %union.anon* %3574 to i64*
  %3575 = load i64, i64* %RAX.i777
  %3576 = load i64, i64* %RCX.i778
  %3577 = mul i64 %3576, 8
  %3578 = add i64 %3577, %3575
  %3579 = load i64, i64* %PC.i776
  %3580 = add i64 %3579, 4
  store i64 %3580, i64* %PC.i776
  %3581 = inttoptr i64 %3578 to i64*
  %3582 = load i64, i64* %3581
  store i64 %3582, i64* %RAX.i777, align 8
  store %struct.Memory* %loadMem_435b68, %struct.Memory** %MEMORY
  %loadMem_435b6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3584 = getelementptr inbounds %struct.GPR, %struct.GPR* %3583, i32 0, i32 33
  %3585 = getelementptr inbounds %struct.Reg, %struct.Reg* %3584, i32 0, i32 0
  %PC.i773 = bitcast %union.anon* %3585 to i64*
  %3586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3587 = getelementptr inbounds %struct.GPR, %struct.GPR* %3586, i32 0, i32 1
  %3588 = getelementptr inbounds %struct.Reg, %struct.Reg* %3587, i32 0, i32 0
  %RAX.i774 = bitcast %union.anon* %3588 to i64*
  %3589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3590 = getelementptr inbounds %struct.GPR, %struct.GPR* %3589, i32 0, i32 7
  %3591 = getelementptr inbounds %struct.Reg, %struct.Reg* %3590, i32 0, i32 0
  %RDX.i775 = bitcast %union.anon* %3591 to i64*
  %3592 = load i64, i64* %RAX.i774
  %3593 = load i64, i64* %PC.i773
  %3594 = add i64 %3593, 2
  store i64 %3594, i64* %PC.i773
  %3595 = inttoptr i64 %3592 to i32*
  %3596 = load i32, i32* %3595
  %3597 = zext i32 %3596 to i64
  store i64 %3597, i64* %RDX.i775, align 8
  store %struct.Memory* %loadMem_435b6c, %struct.Memory** %MEMORY
  %loadMem_435b6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3599 = getelementptr inbounds %struct.GPR, %struct.GPR* %3598, i32 0, i32 33
  %3600 = getelementptr inbounds %struct.Reg, %struct.Reg* %3599, i32 0, i32 0
  %PC.i770 = bitcast %union.anon* %3600 to i64*
  %3601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3602 = getelementptr inbounds %struct.GPR, %struct.GPR* %3601, i32 0, i32 1
  %3603 = getelementptr inbounds %struct.Reg, %struct.Reg* %3602, i32 0, i32 0
  %RAX.i771 = bitcast %union.anon* %3603 to i64*
  %3604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3605 = getelementptr inbounds %struct.GPR, %struct.GPR* %3604, i32 0, i32 15
  %3606 = getelementptr inbounds %struct.Reg, %struct.Reg* %3605, i32 0, i32 0
  %RBP.i772 = bitcast %union.anon* %3606 to i64*
  %3607 = load i64, i64* %RBP.i772
  %3608 = sub i64 %3607, 24
  %3609 = load i64, i64* %PC.i770
  %3610 = add i64 %3609, 4
  store i64 %3610, i64* %PC.i770
  %3611 = inttoptr i64 %3608 to i64*
  %3612 = load i64, i64* %3611
  store i64 %3612, i64* %RAX.i771, align 8
  store %struct.Memory* %loadMem_435b6e, %struct.Memory** %MEMORY
  %loadMem_435b72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3613 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3614 = getelementptr inbounds %struct.GPR, %struct.GPR* %3613, i32 0, i32 33
  %3615 = getelementptr inbounds %struct.Reg, %struct.Reg* %3614, i32 0, i32 0
  %PC.i767 = bitcast %union.anon* %3615 to i64*
  %3616 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3617 = getelementptr inbounds %struct.GPR, %struct.GPR* %3616, i32 0, i32 1
  %3618 = getelementptr inbounds %struct.Reg, %struct.Reg* %3617, i32 0, i32 0
  %RAX.i768 = bitcast %union.anon* %3618 to i64*
  %3619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3620 = getelementptr inbounds %struct.GPR, %struct.GPR* %3619, i32 0, i32 7
  %3621 = getelementptr inbounds %struct.Reg, %struct.Reg* %3620, i32 0, i32 0
  %RDX.i769 = bitcast %union.anon* %3621 to i64*
  %3622 = load i64, i64* %RDX.i769
  %3623 = load i64, i64* %RAX.i768
  %3624 = add i64 %3623, 360
  %3625 = load i64, i64* %PC.i767
  %3626 = add i64 %3625, 6
  store i64 %3626, i64* %PC.i767
  %3627 = trunc i64 %3622 to i32
  %3628 = inttoptr i64 %3624 to i32*
  %3629 = load i32, i32* %3628
  %3630 = add i32 %3629, %3627
  %3631 = zext i32 %3630 to i64
  store i64 %3631, i64* %RDX.i769, align 8
  %3632 = icmp ult i32 %3630, %3627
  %3633 = icmp ult i32 %3630, %3629
  %3634 = or i1 %3632, %3633
  %3635 = zext i1 %3634 to i8
  %3636 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3635, i8* %3636, align 1
  %3637 = and i32 %3630, 255
  %3638 = call i32 @llvm.ctpop.i32(i32 %3637)
  %3639 = trunc i32 %3638 to i8
  %3640 = and i8 %3639, 1
  %3641 = xor i8 %3640, 1
  %3642 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3641, i8* %3642, align 1
  %3643 = xor i32 %3629, %3627
  %3644 = xor i32 %3643, %3630
  %3645 = lshr i32 %3644, 4
  %3646 = trunc i32 %3645 to i8
  %3647 = and i8 %3646, 1
  %3648 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3647, i8* %3648, align 1
  %3649 = icmp eq i32 %3630, 0
  %3650 = zext i1 %3649 to i8
  %3651 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3650, i8* %3651, align 1
  %3652 = lshr i32 %3630, 31
  %3653 = trunc i32 %3652 to i8
  %3654 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3653, i8* %3654, align 1
  %3655 = lshr i32 %3627, 31
  %3656 = lshr i32 %3629, 31
  %3657 = xor i32 %3652, %3655
  %3658 = xor i32 %3652, %3656
  %3659 = add i32 %3657, %3658
  %3660 = icmp eq i32 %3659, 2
  %3661 = zext i1 %3660 to i8
  %3662 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3661, i8* %3662, align 1
  store %struct.Memory* %loadMem_435b72, %struct.Memory** %MEMORY
  %loadMem_435b78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3664 = getelementptr inbounds %struct.GPR, %struct.GPR* %3663, i32 0, i32 33
  %3665 = getelementptr inbounds %struct.Reg, %struct.Reg* %3664, i32 0, i32 0
  %PC.i764 = bitcast %union.anon* %3665 to i64*
  %3666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3667 = getelementptr inbounds %struct.GPR, %struct.GPR* %3666, i32 0, i32 1
  %3668 = getelementptr inbounds %struct.Reg, %struct.Reg* %3667, i32 0, i32 0
  %RAX.i765 = bitcast %union.anon* %3668 to i64*
  %3669 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3670 = getelementptr inbounds %struct.GPR, %struct.GPR* %3669, i32 0, i32 15
  %3671 = getelementptr inbounds %struct.Reg, %struct.Reg* %3670, i32 0, i32 0
  %RBP.i766 = bitcast %union.anon* %3671 to i64*
  %3672 = load i64, i64* %RBP.i766
  %3673 = sub i64 %3672, 48
  %3674 = load i64, i64* %PC.i764
  %3675 = add i64 %3674, 4
  store i64 %3675, i64* %PC.i764
  %3676 = inttoptr i64 %3673 to i64*
  %3677 = load i64, i64* %3676
  store i64 %3677, i64* %RAX.i765, align 8
  store %struct.Memory* %loadMem_435b78, %struct.Memory** %MEMORY
  %loadMem_435b7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3679 = getelementptr inbounds %struct.GPR, %struct.GPR* %3678, i32 0, i32 33
  %3680 = getelementptr inbounds %struct.Reg, %struct.Reg* %3679, i32 0, i32 0
  %PC.i761 = bitcast %union.anon* %3680 to i64*
  %3681 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3682 = getelementptr inbounds %struct.GPR, %struct.GPR* %3681, i32 0, i32 9
  %3683 = getelementptr inbounds %struct.Reg, %struct.Reg* %3682, i32 0, i32 0
  %RSI.i762 = bitcast %union.anon* %3683 to i64*
  %3684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3685 = getelementptr inbounds %struct.GPR, %struct.GPR* %3684, i32 0, i32 15
  %3686 = getelementptr inbounds %struct.Reg, %struct.Reg* %3685, i32 0, i32 0
  %RBP.i763 = bitcast %union.anon* %3686 to i64*
  %3687 = load i64, i64* %RBP.i763
  %3688 = sub i64 %3687, 76
  %3689 = load i64, i64* %PC.i761
  %3690 = add i64 %3689, 3
  store i64 %3690, i64* %PC.i761
  %3691 = inttoptr i64 %3688 to i32*
  %3692 = load i32, i32* %3691
  %3693 = zext i32 %3692 to i64
  store i64 %3693, i64* %RSI.i762, align 8
  store %struct.Memory* %loadMem_435b7c, %struct.Memory** %MEMORY
  %loadMem_435b7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3695 = getelementptr inbounds %struct.GPR, %struct.GPR* %3694, i32 0, i32 33
  %3696 = getelementptr inbounds %struct.Reg, %struct.Reg* %3695, i32 0, i32 0
  %PC.i759 = bitcast %union.anon* %3696 to i64*
  %3697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3698 = getelementptr inbounds %struct.GPR, %struct.GPR* %3697, i32 0, i32 9
  %3699 = getelementptr inbounds %struct.Reg, %struct.Reg* %3698, i32 0, i32 0
  %RSI.i760 = bitcast %union.anon* %3699 to i64*
  %3700 = load i64, i64* %RSI.i760
  %3701 = load i64, i64* %PC.i759
  %3702 = add i64 %3701, 3
  store i64 %3702, i64* %PC.i759
  %3703 = trunc i64 %3700 to i32
  %3704 = add i32 1, %3703
  %3705 = zext i32 %3704 to i64
  store i64 %3705, i64* %RSI.i760, align 8
  %3706 = icmp ult i32 %3704, %3703
  %3707 = icmp ult i32 %3704, 1
  %3708 = or i1 %3706, %3707
  %3709 = zext i1 %3708 to i8
  %3710 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3709, i8* %3710, align 1
  %3711 = and i32 %3704, 255
  %3712 = call i32 @llvm.ctpop.i32(i32 %3711)
  %3713 = trunc i32 %3712 to i8
  %3714 = and i8 %3713, 1
  %3715 = xor i8 %3714, 1
  %3716 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3715, i8* %3716, align 1
  %3717 = xor i64 1, %3700
  %3718 = trunc i64 %3717 to i32
  %3719 = xor i32 %3718, %3704
  %3720 = lshr i32 %3719, 4
  %3721 = trunc i32 %3720 to i8
  %3722 = and i8 %3721, 1
  %3723 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3722, i8* %3723, align 1
  %3724 = icmp eq i32 %3704, 0
  %3725 = zext i1 %3724 to i8
  %3726 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3725, i8* %3726, align 1
  %3727 = lshr i32 %3704, 31
  %3728 = trunc i32 %3727 to i8
  %3729 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3728, i8* %3729, align 1
  %3730 = lshr i32 %3703, 31
  %3731 = xor i32 %3727, %3730
  %3732 = add i32 %3731, %3727
  %3733 = icmp eq i32 %3732, 2
  %3734 = zext i1 %3733 to i8
  %3735 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3734, i8* %3735, align 1
  store %struct.Memory* %loadMem_435b7f, %struct.Memory** %MEMORY
  %loadMem_435b82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3737 = getelementptr inbounds %struct.GPR, %struct.GPR* %3736, i32 0, i32 33
  %3738 = getelementptr inbounds %struct.Reg, %struct.Reg* %3737, i32 0, i32 0
  %PC.i756 = bitcast %union.anon* %3738 to i64*
  %3739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3740 = getelementptr inbounds %struct.GPR, %struct.GPR* %3739, i32 0, i32 9
  %3741 = getelementptr inbounds %struct.Reg, %struct.Reg* %3740, i32 0, i32 0
  %ESI.i757 = bitcast %union.anon* %3741 to i32*
  %3742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3743 = getelementptr inbounds %struct.GPR, %struct.GPR* %3742, i32 0, i32 5
  %3744 = getelementptr inbounds %struct.Reg, %struct.Reg* %3743, i32 0, i32 0
  %RCX.i758 = bitcast %union.anon* %3744 to i64*
  %3745 = load i32, i32* %ESI.i757
  %3746 = zext i32 %3745 to i64
  %3747 = load i64, i64* %PC.i756
  %3748 = add i64 %3747, 3
  store i64 %3748, i64* %PC.i756
  %3749 = shl i64 %3746, 32
  %3750 = ashr exact i64 %3749, 32
  store i64 %3750, i64* %RCX.i758, align 8
  store %struct.Memory* %loadMem_435b82, %struct.Memory** %MEMORY
  %loadMem_435b85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3751 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3752 = getelementptr inbounds %struct.GPR, %struct.GPR* %3751, i32 0, i32 33
  %3753 = getelementptr inbounds %struct.Reg, %struct.Reg* %3752, i32 0, i32 0
  %PC.i753 = bitcast %union.anon* %3753 to i64*
  %3754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3755 = getelementptr inbounds %struct.GPR, %struct.GPR* %3754, i32 0, i32 1
  %3756 = getelementptr inbounds %struct.Reg, %struct.Reg* %3755, i32 0, i32 0
  %RAX.i754 = bitcast %union.anon* %3756 to i64*
  %3757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3758 = getelementptr inbounds %struct.GPR, %struct.GPR* %3757, i32 0, i32 5
  %3759 = getelementptr inbounds %struct.Reg, %struct.Reg* %3758, i32 0, i32 0
  %RCX.i755 = bitcast %union.anon* %3759 to i64*
  %3760 = load i64, i64* %RAX.i754
  %3761 = load i64, i64* %RCX.i755
  %3762 = mul i64 %3761, 8
  %3763 = add i64 %3762, %3760
  %3764 = load i64, i64* %PC.i753
  %3765 = add i64 %3764, 4
  store i64 %3765, i64* %PC.i753
  %3766 = inttoptr i64 %3763 to i64*
  %3767 = load i64, i64* %3766
  store i64 %3767, i64* %RAX.i754, align 8
  store %struct.Memory* %loadMem_435b85, %struct.Memory** %MEMORY
  %loadMem_435b89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3768 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3769 = getelementptr inbounds %struct.GPR, %struct.GPR* %3768, i32 0, i32 33
  %3770 = getelementptr inbounds %struct.Reg, %struct.Reg* %3769, i32 0, i32 0
  %PC.i750 = bitcast %union.anon* %3770 to i64*
  %3771 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3772 = getelementptr inbounds %struct.GPR, %struct.GPR* %3771, i32 0, i32 1
  %3773 = getelementptr inbounds %struct.Reg, %struct.Reg* %3772, i32 0, i32 0
  %RAX.i751 = bitcast %union.anon* %3773 to i64*
  %3774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3775 = getelementptr inbounds %struct.GPR, %struct.GPR* %3774, i32 0, i32 9
  %3776 = getelementptr inbounds %struct.Reg, %struct.Reg* %3775, i32 0, i32 0
  %RSI.i752 = bitcast %union.anon* %3776 to i64*
  %3777 = load i64, i64* %RAX.i751
  %3778 = add i64 %3777, 12
  %3779 = load i64, i64* %PC.i750
  %3780 = add i64 %3779, 3
  store i64 %3780, i64* %PC.i750
  %3781 = inttoptr i64 %3778 to i32*
  %3782 = load i32, i32* %3781
  %3783 = zext i32 %3782 to i64
  store i64 %3783, i64* %RSI.i752, align 8
  store %struct.Memory* %loadMem_435b89, %struct.Memory** %MEMORY
  %loadMem_435b8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3785 = getelementptr inbounds %struct.GPR, %struct.GPR* %3784, i32 0, i32 33
  %3786 = getelementptr inbounds %struct.Reg, %struct.Reg* %3785, i32 0, i32 0
  %PC.i747 = bitcast %union.anon* %3786 to i64*
  %3787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3788 = getelementptr inbounds %struct.GPR, %struct.GPR* %3787, i32 0, i32 1
  %3789 = getelementptr inbounds %struct.Reg, %struct.Reg* %3788, i32 0, i32 0
  %RAX.i748 = bitcast %union.anon* %3789 to i64*
  %3790 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3791 = getelementptr inbounds %struct.GPR, %struct.GPR* %3790, i32 0, i32 15
  %3792 = getelementptr inbounds %struct.Reg, %struct.Reg* %3791, i32 0, i32 0
  %RBP.i749 = bitcast %union.anon* %3792 to i64*
  %3793 = load i64, i64* %RBP.i749
  %3794 = sub i64 %3793, 24
  %3795 = load i64, i64* %PC.i747
  %3796 = add i64 %3795, 4
  store i64 %3796, i64* %PC.i747
  %3797 = inttoptr i64 %3794 to i64*
  %3798 = load i64, i64* %3797
  store i64 %3798, i64* %RAX.i748, align 8
  store %struct.Memory* %loadMem_435b8c, %struct.Memory** %MEMORY
  %loadMem_435b90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3799 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3800 = getelementptr inbounds %struct.GPR, %struct.GPR* %3799, i32 0, i32 33
  %3801 = getelementptr inbounds %struct.Reg, %struct.Reg* %3800, i32 0, i32 0
  %PC.i744 = bitcast %union.anon* %3801 to i64*
  %3802 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3803 = getelementptr inbounds %struct.GPR, %struct.GPR* %3802, i32 0, i32 1
  %3804 = getelementptr inbounds %struct.Reg, %struct.Reg* %3803, i32 0, i32 0
  %RAX.i745 = bitcast %union.anon* %3804 to i64*
  %3805 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3806 = getelementptr inbounds %struct.GPR, %struct.GPR* %3805, i32 0, i32 9
  %3807 = getelementptr inbounds %struct.Reg, %struct.Reg* %3806, i32 0, i32 0
  %RSI.i746 = bitcast %union.anon* %3807 to i64*
  %3808 = load i64, i64* %RSI.i746
  %3809 = load i64, i64* %RAX.i745
  %3810 = add i64 %3809, 364
  %3811 = load i64, i64* %PC.i744
  %3812 = add i64 %3811, 6
  store i64 %3812, i64* %PC.i744
  %3813 = trunc i64 %3808 to i32
  %3814 = inttoptr i64 %3810 to i32*
  %3815 = load i32, i32* %3814
  %3816 = add i32 %3815, %3813
  %3817 = zext i32 %3816 to i64
  store i64 %3817, i64* %RSI.i746, align 8
  %3818 = icmp ult i32 %3816, %3813
  %3819 = icmp ult i32 %3816, %3815
  %3820 = or i1 %3818, %3819
  %3821 = zext i1 %3820 to i8
  %3822 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3821, i8* %3822, align 1
  %3823 = and i32 %3816, 255
  %3824 = call i32 @llvm.ctpop.i32(i32 %3823)
  %3825 = trunc i32 %3824 to i8
  %3826 = and i8 %3825, 1
  %3827 = xor i8 %3826, 1
  %3828 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3827, i8* %3828, align 1
  %3829 = xor i32 %3815, %3813
  %3830 = xor i32 %3829, %3816
  %3831 = lshr i32 %3830, 4
  %3832 = trunc i32 %3831 to i8
  %3833 = and i8 %3832, 1
  %3834 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3833, i8* %3834, align 1
  %3835 = icmp eq i32 %3816, 0
  %3836 = zext i1 %3835 to i8
  %3837 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3836, i8* %3837, align 1
  %3838 = lshr i32 %3816, 31
  %3839 = trunc i32 %3838 to i8
  %3840 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3839, i8* %3840, align 1
  %3841 = lshr i32 %3813, 31
  %3842 = lshr i32 %3815, 31
  %3843 = xor i32 %3838, %3841
  %3844 = xor i32 %3838, %3842
  %3845 = add i32 %3843, %3844
  %3846 = icmp eq i32 %3845, 2
  %3847 = zext i1 %3846 to i8
  %3848 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3847, i8* %3848, align 1
  store %struct.Memory* %loadMem_435b90, %struct.Memory** %MEMORY
  %loadMem_435b96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3849 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3850 = getelementptr inbounds %struct.GPR, %struct.GPR* %3849, i32 0, i32 33
  %3851 = getelementptr inbounds %struct.Reg, %struct.Reg* %3850, i32 0, i32 0
  %PC.i741 = bitcast %union.anon* %3851 to i64*
  %3852 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3853 = getelementptr inbounds %struct.GPR, %struct.GPR* %3852, i32 0, i32 7
  %3854 = getelementptr inbounds %struct.Reg, %struct.Reg* %3853, i32 0, i32 0
  %EDX.i742 = bitcast %union.anon* %3854 to i32*
  %3855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3856 = getelementptr inbounds %struct.GPR, %struct.GPR* %3855, i32 0, i32 11
  %3857 = getelementptr inbounds %struct.Reg, %struct.Reg* %3856, i32 0, i32 0
  %RDI.i743 = bitcast %union.anon* %3857 to i64*
  %3858 = load i32, i32* %EDX.i742
  %3859 = zext i32 %3858 to i64
  %3860 = load i64, i64* %PC.i741
  %3861 = add i64 %3860, 2
  store i64 %3861, i64* %PC.i741
  %3862 = and i64 %3859, 4294967295
  store i64 %3862, i64* %RDI.i743, align 8
  store %struct.Memory* %loadMem_435b96, %struct.Memory** %MEMORY
  %loadMem1_435b98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3864 = getelementptr inbounds %struct.GPR, %struct.GPR* %3863, i32 0, i32 33
  %3865 = getelementptr inbounds %struct.Reg, %struct.Reg* %3864, i32 0, i32 0
  %PC.i740 = bitcast %union.anon* %3865 to i64*
  %3866 = load i64, i64* %PC.i740
  %3867 = add i64 %3866, -55784
  %3868 = load i64, i64* %PC.i740
  %3869 = add i64 %3868, 5
  %3870 = load i64, i64* %PC.i740
  %3871 = add i64 %3870, 5
  store i64 %3871, i64* %PC.i740
  %3872 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3873 = load i64, i64* %3872, align 8
  %3874 = add i64 %3873, -8
  %3875 = inttoptr i64 %3874 to i64*
  store i64 %3869, i64* %3875
  store i64 %3874, i64* %3872, align 8
  %3876 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3867, i64* %3876, align 8
  store %struct.Memory* %loadMem1_435b98, %struct.Memory** %MEMORY
  %loadMem2_435b98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_435b98 = load i64, i64* %3
  %call2_435b98 = call %struct.Memory* @sub_4281b0.ILogsum(%struct.State* %0, i64 %loadPC_435b98, %struct.Memory* %loadMem2_435b98)
  store %struct.Memory* %call2_435b98, %struct.Memory** %MEMORY
  %loadMem_435b9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3878 = getelementptr inbounds %struct.GPR, %struct.GPR* %3877, i32 0, i32 33
  %3879 = getelementptr inbounds %struct.Reg, %struct.Reg* %3878, i32 0, i32 0
  %PC.i737 = bitcast %union.anon* %3879 to i64*
  %3880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3881 = getelementptr inbounds %struct.GPR, %struct.GPR* %3880, i32 0, i32 5
  %3882 = getelementptr inbounds %struct.Reg, %struct.Reg* %3881, i32 0, i32 0
  %RCX.i738 = bitcast %union.anon* %3882 to i64*
  %3883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3884 = getelementptr inbounds %struct.GPR, %struct.GPR* %3883, i32 0, i32 15
  %3885 = getelementptr inbounds %struct.Reg, %struct.Reg* %3884, i32 0, i32 0
  %RBP.i739 = bitcast %union.anon* %3885 to i64*
  %3886 = load i64, i64* %RBP.i739
  %3887 = sub i64 %3886, 48
  %3888 = load i64, i64* %PC.i737
  %3889 = add i64 %3888, 4
  store i64 %3889, i64* %PC.i737
  %3890 = inttoptr i64 %3887 to i64*
  %3891 = load i64, i64* %3890
  store i64 %3891, i64* %RCX.i738, align 8
  store %struct.Memory* %loadMem_435b9d, %struct.Memory** %MEMORY
  %loadMem_435ba1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3893 = getelementptr inbounds %struct.GPR, %struct.GPR* %3892, i32 0, i32 33
  %3894 = getelementptr inbounds %struct.Reg, %struct.Reg* %3893, i32 0, i32 0
  %PC.i734 = bitcast %union.anon* %3894 to i64*
  %3895 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3896 = getelementptr inbounds %struct.GPR, %struct.GPR* %3895, i32 0, i32 15
  %3897 = getelementptr inbounds %struct.Reg, %struct.Reg* %3896, i32 0, i32 0
  %RBP.i735 = bitcast %union.anon* %3897 to i64*
  %3898 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3899 = getelementptr inbounds %struct.GPR, %struct.GPR* %3898, i32 0, i32 17
  %3900 = getelementptr inbounds %struct.Reg, %struct.Reg* %3899, i32 0, i32 0
  %R8.i736 = bitcast %union.anon* %3900 to i64*
  %3901 = load i64, i64* %RBP.i735
  %3902 = sub i64 %3901, 76
  %3903 = load i64, i64* %PC.i734
  %3904 = add i64 %3903, 4
  store i64 %3904, i64* %PC.i734
  %3905 = inttoptr i64 %3902 to i32*
  %3906 = load i32, i32* %3905
  %3907 = sext i32 %3906 to i64
  store i64 %3907, i64* %R8.i736, align 8
  store %struct.Memory* %loadMem_435ba1, %struct.Memory** %MEMORY
  %loadMem_435ba5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3909 = getelementptr inbounds %struct.GPR, %struct.GPR* %3908, i32 0, i32 33
  %3910 = getelementptr inbounds %struct.Reg, %struct.Reg* %3909, i32 0, i32 0
  %PC.i731 = bitcast %union.anon* %3910 to i64*
  %3911 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3912 = getelementptr inbounds %struct.GPR, %struct.GPR* %3911, i32 0, i32 5
  %3913 = getelementptr inbounds %struct.Reg, %struct.Reg* %3912, i32 0, i32 0
  %RCX.i732 = bitcast %union.anon* %3913 to i64*
  %3914 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3915 = getelementptr inbounds %struct.GPR, %struct.GPR* %3914, i32 0, i32 17
  %3916 = getelementptr inbounds %struct.Reg, %struct.Reg* %3915, i32 0, i32 0
  %R8.i733 = bitcast %union.anon* %3916 to i64*
  %3917 = load i64, i64* %RCX.i732
  %3918 = load i64, i64* %R8.i733
  %3919 = mul i64 %3918, 8
  %3920 = add i64 %3919, %3917
  %3921 = load i64, i64* %PC.i731
  %3922 = add i64 %3921, 4
  store i64 %3922, i64* %PC.i731
  %3923 = inttoptr i64 %3920 to i64*
  %3924 = load i64, i64* %3923
  store i64 %3924, i64* %RCX.i732, align 8
  store %struct.Memory* %loadMem_435ba5, %struct.Memory** %MEMORY
  %loadMem_435ba9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3925 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3926 = getelementptr inbounds %struct.GPR, %struct.GPR* %3925, i32 0, i32 33
  %3927 = getelementptr inbounds %struct.Reg, %struct.Reg* %3926, i32 0, i32 0
  %PC.i728 = bitcast %union.anon* %3927 to i64*
  %3928 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3929 = getelementptr inbounds %struct.GPR, %struct.GPR* %3928, i32 0, i32 1
  %3930 = getelementptr inbounds %struct.Reg, %struct.Reg* %3929, i32 0, i32 0
  %EAX.i729 = bitcast %union.anon* %3930 to i32*
  %3931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3932 = getelementptr inbounds %struct.GPR, %struct.GPR* %3931, i32 0, i32 5
  %3933 = getelementptr inbounds %struct.Reg, %struct.Reg* %3932, i32 0, i32 0
  %RCX.i730 = bitcast %union.anon* %3933 to i64*
  %3934 = load i64, i64* %RCX.i730
  %3935 = add i64 %3934, 12
  %3936 = load i32, i32* %EAX.i729
  %3937 = zext i32 %3936 to i64
  %3938 = load i64, i64* %PC.i728
  %3939 = add i64 %3938, 3
  store i64 %3939, i64* %PC.i728
  %3940 = inttoptr i64 %3935 to i32*
  store i32 %3936, i32* %3940
  store %struct.Memory* %loadMem_435ba9, %struct.Memory** %MEMORY
  %loadMem_435bac = load %struct.Memory*, %struct.Memory** %MEMORY
  %3941 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3942 = getelementptr inbounds %struct.GPR, %struct.GPR* %3941, i32 0, i32 33
  %3943 = getelementptr inbounds %struct.Reg, %struct.Reg* %3942, i32 0, i32 0
  %PC.i725 = bitcast %union.anon* %3943 to i64*
  %3944 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3945 = getelementptr inbounds %struct.GPR, %struct.GPR* %3944, i32 0, i32 5
  %3946 = getelementptr inbounds %struct.Reg, %struct.Reg* %3945, i32 0, i32 0
  %RCX.i726 = bitcast %union.anon* %3946 to i64*
  %3947 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3948 = getelementptr inbounds %struct.GPR, %struct.GPR* %3947, i32 0, i32 15
  %3949 = getelementptr inbounds %struct.Reg, %struct.Reg* %3948, i32 0, i32 0
  %RBP.i727 = bitcast %union.anon* %3949 to i64*
  %3950 = load i64, i64* %RBP.i727
  %3951 = sub i64 %3950, 48
  %3952 = load i64, i64* %PC.i725
  %3953 = add i64 %3952, 4
  store i64 %3953, i64* %PC.i725
  %3954 = inttoptr i64 %3951 to i64*
  %3955 = load i64, i64* %3954
  store i64 %3955, i64* %RCX.i726, align 8
  store %struct.Memory* %loadMem_435bac, %struct.Memory** %MEMORY
  %loadMem_435bb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3956 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3957 = getelementptr inbounds %struct.GPR, %struct.GPR* %3956, i32 0, i32 33
  %3958 = getelementptr inbounds %struct.Reg, %struct.Reg* %3957, i32 0, i32 0
  %PC.i722 = bitcast %union.anon* %3958 to i64*
  %3959 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3960 = getelementptr inbounds %struct.GPR, %struct.GPR* %3959, i32 0, i32 15
  %3961 = getelementptr inbounds %struct.Reg, %struct.Reg* %3960, i32 0, i32 0
  %RBP.i723 = bitcast %union.anon* %3961 to i64*
  %3962 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3963 = getelementptr inbounds %struct.GPR, %struct.GPR* %3962, i32 0, i32 17
  %3964 = getelementptr inbounds %struct.Reg, %struct.Reg* %3963, i32 0, i32 0
  %R8.i724 = bitcast %union.anon* %3964 to i64*
  %3965 = load i64, i64* %RBP.i723
  %3966 = sub i64 %3965, 76
  %3967 = load i64, i64* %PC.i722
  %3968 = add i64 %3967, 4
  store i64 %3968, i64* %PC.i722
  %3969 = inttoptr i64 %3966 to i32*
  %3970 = load i32, i32* %3969
  %3971 = sext i32 %3970 to i64
  store i64 %3971, i64* %R8.i724, align 8
  store %struct.Memory* %loadMem_435bb0, %struct.Memory** %MEMORY
  %loadMem_435bb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3972 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3973 = getelementptr inbounds %struct.GPR, %struct.GPR* %3972, i32 0, i32 33
  %3974 = getelementptr inbounds %struct.Reg, %struct.Reg* %3973, i32 0, i32 0
  %PC.i719 = bitcast %union.anon* %3974 to i64*
  %3975 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3976 = getelementptr inbounds %struct.GPR, %struct.GPR* %3975, i32 0, i32 5
  %3977 = getelementptr inbounds %struct.Reg, %struct.Reg* %3976, i32 0, i32 0
  %RCX.i720 = bitcast %union.anon* %3977 to i64*
  %3978 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3979 = getelementptr inbounds %struct.GPR, %struct.GPR* %3978, i32 0, i32 17
  %3980 = getelementptr inbounds %struct.Reg, %struct.Reg* %3979, i32 0, i32 0
  %R8.i721 = bitcast %union.anon* %3980 to i64*
  %3981 = load i64, i64* %RCX.i720
  %3982 = load i64, i64* %R8.i721
  %3983 = mul i64 %3982, 8
  %3984 = add i64 %3983, %3981
  %3985 = load i64, i64* %PC.i719
  %3986 = add i64 %3985, 4
  store i64 %3986, i64* %PC.i719
  %3987 = inttoptr i64 %3984 to i64*
  %3988 = load i64, i64* %3987
  store i64 %3988, i64* %RCX.i720, align 8
  store %struct.Memory* %loadMem_435bb4, %struct.Memory** %MEMORY
  %loadMem_435bb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3990 = getelementptr inbounds %struct.GPR, %struct.GPR* %3989, i32 0, i32 33
  %3991 = getelementptr inbounds %struct.Reg, %struct.Reg* %3990, i32 0, i32 0
  %PC.i716 = bitcast %union.anon* %3991 to i64*
  %3992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3993 = getelementptr inbounds %struct.GPR, %struct.GPR* %3992, i32 0, i32 1
  %3994 = getelementptr inbounds %struct.Reg, %struct.Reg* %3993, i32 0, i32 0
  %RAX.i717 = bitcast %union.anon* %3994 to i64*
  %3995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3996 = getelementptr inbounds %struct.GPR, %struct.GPR* %3995, i32 0, i32 5
  %3997 = getelementptr inbounds %struct.Reg, %struct.Reg* %3996, i32 0, i32 0
  %RCX.i718 = bitcast %union.anon* %3997 to i64*
  %3998 = load i64, i64* %RCX.i718
  %3999 = add i64 %3998, 8
  %4000 = load i64, i64* %PC.i716
  %4001 = add i64 %4000, 3
  store i64 %4001, i64* %PC.i716
  %4002 = inttoptr i64 %3999 to i32*
  %4003 = load i32, i32* %4002
  %4004 = zext i32 %4003 to i64
  store i64 %4004, i64* %RAX.i717, align 8
  store %struct.Memory* %loadMem_435bb8, %struct.Memory** %MEMORY
  %loadMem_435bbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %4005 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4006 = getelementptr inbounds %struct.GPR, %struct.GPR* %4005, i32 0, i32 33
  %4007 = getelementptr inbounds %struct.Reg, %struct.Reg* %4006, i32 0, i32 0
  %PC.i713 = bitcast %union.anon* %4007 to i64*
  %4008 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4009 = getelementptr inbounds %struct.GPR, %struct.GPR* %4008, i32 0, i32 5
  %4010 = getelementptr inbounds %struct.Reg, %struct.Reg* %4009, i32 0, i32 0
  %RCX.i714 = bitcast %union.anon* %4010 to i64*
  %4011 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4012 = getelementptr inbounds %struct.GPR, %struct.GPR* %4011, i32 0, i32 15
  %4013 = getelementptr inbounds %struct.Reg, %struct.Reg* %4012, i32 0, i32 0
  %RBP.i715 = bitcast %union.anon* %4013 to i64*
  %4014 = load i64, i64* %RBP.i715
  %4015 = sub i64 %4014, 24
  %4016 = load i64, i64* %PC.i713
  %4017 = add i64 %4016, 4
  store i64 %4017, i64* %PC.i713
  %4018 = inttoptr i64 %4015 to i64*
  %4019 = load i64, i64* %4018
  store i64 %4019, i64* %RCX.i714, align 8
  store %struct.Memory* %loadMem_435bbb, %struct.Memory** %MEMORY
  %loadMem_435bbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %4020 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4021 = getelementptr inbounds %struct.GPR, %struct.GPR* %4020, i32 0, i32 33
  %4022 = getelementptr inbounds %struct.Reg, %struct.Reg* %4021, i32 0, i32 0
  %PC.i710 = bitcast %union.anon* %4022 to i64*
  %4023 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4024 = getelementptr inbounds %struct.GPR, %struct.GPR* %4023, i32 0, i32 1
  %4025 = getelementptr inbounds %struct.Reg, %struct.Reg* %4024, i32 0, i32 0
  %RAX.i711 = bitcast %union.anon* %4025 to i64*
  %4026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4027 = getelementptr inbounds %struct.GPR, %struct.GPR* %4026, i32 0, i32 5
  %4028 = getelementptr inbounds %struct.Reg, %struct.Reg* %4027, i32 0, i32 0
  %RCX.i712 = bitcast %union.anon* %4028 to i64*
  %4029 = load i64, i64* %RAX.i711
  %4030 = load i64, i64* %RCX.i712
  %4031 = add i64 %4030, 344
  %4032 = load i64, i64* %PC.i710
  %4033 = add i64 %4032, 6
  store i64 %4033, i64* %PC.i710
  %4034 = trunc i64 %4029 to i32
  %4035 = inttoptr i64 %4031 to i32*
  %4036 = load i32, i32* %4035
  %4037 = add i32 %4036, %4034
  %4038 = zext i32 %4037 to i64
  store i64 %4038, i64* %RAX.i711, align 8
  %4039 = icmp ult i32 %4037, %4034
  %4040 = icmp ult i32 %4037, %4036
  %4041 = or i1 %4039, %4040
  %4042 = zext i1 %4041 to i8
  %4043 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4042, i8* %4043, align 1
  %4044 = and i32 %4037, 255
  %4045 = call i32 @llvm.ctpop.i32(i32 %4044)
  %4046 = trunc i32 %4045 to i8
  %4047 = and i8 %4046, 1
  %4048 = xor i8 %4047, 1
  %4049 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4048, i8* %4049, align 1
  %4050 = xor i32 %4036, %4034
  %4051 = xor i32 %4050, %4037
  %4052 = lshr i32 %4051, 4
  %4053 = trunc i32 %4052 to i8
  %4054 = and i8 %4053, 1
  %4055 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4054, i8* %4055, align 1
  %4056 = icmp eq i32 %4037, 0
  %4057 = zext i1 %4056 to i8
  %4058 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4057, i8* %4058, align 1
  %4059 = lshr i32 %4037, 31
  %4060 = trunc i32 %4059 to i8
  %4061 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4060, i8* %4061, align 1
  %4062 = lshr i32 %4034, 31
  %4063 = lshr i32 %4036, 31
  %4064 = xor i32 %4059, %4062
  %4065 = xor i32 %4059, %4063
  %4066 = add i32 %4064, %4065
  %4067 = icmp eq i32 %4066, 2
  %4068 = zext i1 %4067 to i8
  %4069 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4068, i8* %4069, align 1
  store %struct.Memory* %loadMem_435bbf, %struct.Memory** %MEMORY
  %loadMem_435bc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4070 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4071 = getelementptr inbounds %struct.GPR, %struct.GPR* %4070, i32 0, i32 33
  %4072 = getelementptr inbounds %struct.Reg, %struct.Reg* %4071, i32 0, i32 0
  %PC.i707 = bitcast %union.anon* %4072 to i64*
  %4073 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4074 = getelementptr inbounds %struct.GPR, %struct.GPR* %4073, i32 0, i32 5
  %4075 = getelementptr inbounds %struct.Reg, %struct.Reg* %4074, i32 0, i32 0
  %RCX.i708 = bitcast %union.anon* %4075 to i64*
  %4076 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4077 = getelementptr inbounds %struct.GPR, %struct.GPR* %4076, i32 0, i32 15
  %4078 = getelementptr inbounds %struct.Reg, %struct.Reg* %4077, i32 0, i32 0
  %RBP.i709 = bitcast %union.anon* %4078 to i64*
  %4079 = load i64, i64* %RBP.i709
  %4080 = sub i64 %4079, 48
  %4081 = load i64, i64* %PC.i707
  %4082 = add i64 %4081, 4
  store i64 %4082, i64* %PC.i707
  %4083 = inttoptr i64 %4080 to i64*
  %4084 = load i64, i64* %4083
  store i64 %4084, i64* %RCX.i708, align 8
  store %struct.Memory* %loadMem_435bc5, %struct.Memory** %MEMORY
  %loadMem_435bc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4085 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4086 = getelementptr inbounds %struct.GPR, %struct.GPR* %4085, i32 0, i32 33
  %4087 = getelementptr inbounds %struct.Reg, %struct.Reg* %4086, i32 0, i32 0
  %PC.i704 = bitcast %union.anon* %4087 to i64*
  %4088 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4089 = getelementptr inbounds %struct.GPR, %struct.GPR* %4088, i32 0, i32 15
  %4090 = getelementptr inbounds %struct.Reg, %struct.Reg* %4089, i32 0, i32 0
  %RBP.i705 = bitcast %union.anon* %4090 to i64*
  %4091 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4092 = getelementptr inbounds %struct.GPR, %struct.GPR* %4091, i32 0, i32 17
  %4093 = getelementptr inbounds %struct.Reg, %struct.Reg* %4092, i32 0, i32 0
  %R8.i706 = bitcast %union.anon* %4093 to i64*
  %4094 = load i64, i64* %RBP.i705
  %4095 = sub i64 %4094, 76
  %4096 = load i64, i64* %PC.i704
  %4097 = add i64 %4096, 4
  store i64 %4097, i64* %PC.i704
  %4098 = inttoptr i64 %4095 to i32*
  %4099 = load i32, i32* %4098
  %4100 = sext i32 %4099 to i64
  store i64 %4100, i64* %R8.i706, align 8
  store %struct.Memory* %loadMem_435bc9, %struct.Memory** %MEMORY
  %loadMem_435bcd = load %struct.Memory*, %struct.Memory** %MEMORY
  %4101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4102 = getelementptr inbounds %struct.GPR, %struct.GPR* %4101, i32 0, i32 33
  %4103 = getelementptr inbounds %struct.Reg, %struct.Reg* %4102, i32 0, i32 0
  %PC.i701 = bitcast %union.anon* %4103 to i64*
  %4104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4105 = getelementptr inbounds %struct.GPR, %struct.GPR* %4104, i32 0, i32 5
  %4106 = getelementptr inbounds %struct.Reg, %struct.Reg* %4105, i32 0, i32 0
  %RCX.i702 = bitcast %union.anon* %4106 to i64*
  %4107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4108 = getelementptr inbounds %struct.GPR, %struct.GPR* %4107, i32 0, i32 17
  %4109 = getelementptr inbounds %struct.Reg, %struct.Reg* %4108, i32 0, i32 0
  %R8.i703 = bitcast %union.anon* %4109 to i64*
  %4110 = load i64, i64* %RCX.i702
  %4111 = load i64, i64* %R8.i703
  %4112 = mul i64 %4111, 8
  %4113 = add i64 %4112, %4110
  %4114 = load i64, i64* %PC.i701
  %4115 = add i64 %4114, 4
  store i64 %4115, i64* %PC.i701
  %4116 = inttoptr i64 %4113 to i64*
  %4117 = load i64, i64* %4116
  store i64 %4117, i64* %RCX.i702, align 8
  store %struct.Memory* %loadMem_435bcd, %struct.Memory** %MEMORY
  %loadMem_435bd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4119 = getelementptr inbounds %struct.GPR, %struct.GPR* %4118, i32 0, i32 33
  %4120 = getelementptr inbounds %struct.Reg, %struct.Reg* %4119, i32 0, i32 0
  %PC.i698 = bitcast %union.anon* %4120 to i64*
  %4121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4122 = getelementptr inbounds %struct.GPR, %struct.GPR* %4121, i32 0, i32 5
  %4123 = getelementptr inbounds %struct.Reg, %struct.Reg* %4122, i32 0, i32 0
  %RCX.i699 = bitcast %union.anon* %4123 to i64*
  %4124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4125 = getelementptr inbounds %struct.GPR, %struct.GPR* %4124, i32 0, i32 7
  %4126 = getelementptr inbounds %struct.Reg, %struct.Reg* %4125, i32 0, i32 0
  %RDX.i700 = bitcast %union.anon* %4126 to i64*
  %4127 = load i64, i64* %RCX.i699
  %4128 = add i64 %4127, 12
  %4129 = load i64, i64* %PC.i698
  %4130 = add i64 %4129, 3
  store i64 %4130, i64* %PC.i698
  %4131 = inttoptr i64 %4128 to i32*
  %4132 = load i32, i32* %4131
  %4133 = zext i32 %4132 to i64
  store i64 %4133, i64* %RDX.i700, align 8
  store %struct.Memory* %loadMem_435bd1, %struct.Memory** %MEMORY
  %loadMem_435bd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4135 = getelementptr inbounds %struct.GPR, %struct.GPR* %4134, i32 0, i32 33
  %4136 = getelementptr inbounds %struct.Reg, %struct.Reg* %4135, i32 0, i32 0
  %PC.i695 = bitcast %union.anon* %4136 to i64*
  %4137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4138 = getelementptr inbounds %struct.GPR, %struct.GPR* %4137, i32 0, i32 5
  %4139 = getelementptr inbounds %struct.Reg, %struct.Reg* %4138, i32 0, i32 0
  %RCX.i696 = bitcast %union.anon* %4139 to i64*
  %4140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4141 = getelementptr inbounds %struct.GPR, %struct.GPR* %4140, i32 0, i32 15
  %4142 = getelementptr inbounds %struct.Reg, %struct.Reg* %4141, i32 0, i32 0
  %RBP.i697 = bitcast %union.anon* %4142 to i64*
  %4143 = load i64, i64* %RBP.i697
  %4144 = sub i64 %4143, 24
  %4145 = load i64, i64* %PC.i695
  %4146 = add i64 %4145, 4
  store i64 %4146, i64* %PC.i695
  %4147 = inttoptr i64 %4144 to i64*
  %4148 = load i64, i64* %4147
  store i64 %4148, i64* %RCX.i696, align 8
  store %struct.Memory* %loadMem_435bd4, %struct.Memory** %MEMORY
  %loadMem_435bd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4150 = getelementptr inbounds %struct.GPR, %struct.GPR* %4149, i32 0, i32 33
  %4151 = getelementptr inbounds %struct.Reg, %struct.Reg* %4150, i32 0, i32 0
  %PC.i692 = bitcast %union.anon* %4151 to i64*
  %4152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4153 = getelementptr inbounds %struct.GPR, %struct.GPR* %4152, i32 0, i32 5
  %4154 = getelementptr inbounds %struct.Reg, %struct.Reg* %4153, i32 0, i32 0
  %RCX.i693 = bitcast %union.anon* %4154 to i64*
  %4155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4156 = getelementptr inbounds %struct.GPR, %struct.GPR* %4155, i32 0, i32 7
  %4157 = getelementptr inbounds %struct.Reg, %struct.Reg* %4156, i32 0, i32 0
  %RDX.i694 = bitcast %union.anon* %4157 to i64*
  %4158 = load i64, i64* %RDX.i694
  %4159 = load i64, i64* %RCX.i693
  %4160 = add i64 %4159, 348
  %4161 = load i64, i64* %PC.i692
  %4162 = add i64 %4161, 6
  store i64 %4162, i64* %PC.i692
  %4163 = trunc i64 %4158 to i32
  %4164 = inttoptr i64 %4160 to i32*
  %4165 = load i32, i32* %4164
  %4166 = add i32 %4165, %4163
  %4167 = zext i32 %4166 to i64
  store i64 %4167, i64* %RDX.i694, align 8
  %4168 = icmp ult i32 %4166, %4163
  %4169 = icmp ult i32 %4166, %4165
  %4170 = or i1 %4168, %4169
  %4171 = zext i1 %4170 to i8
  %4172 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4171, i8* %4172, align 1
  %4173 = and i32 %4166, 255
  %4174 = call i32 @llvm.ctpop.i32(i32 %4173)
  %4175 = trunc i32 %4174 to i8
  %4176 = and i8 %4175, 1
  %4177 = xor i8 %4176, 1
  %4178 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4177, i8* %4178, align 1
  %4179 = xor i32 %4165, %4163
  %4180 = xor i32 %4179, %4166
  %4181 = lshr i32 %4180, 4
  %4182 = trunc i32 %4181 to i8
  %4183 = and i8 %4182, 1
  %4184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4183, i8* %4184, align 1
  %4185 = icmp eq i32 %4166, 0
  %4186 = zext i1 %4185 to i8
  %4187 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4186, i8* %4187, align 1
  %4188 = lshr i32 %4166, 31
  %4189 = trunc i32 %4188 to i8
  %4190 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4189, i8* %4190, align 1
  %4191 = lshr i32 %4163, 31
  %4192 = lshr i32 %4165, 31
  %4193 = xor i32 %4188, %4191
  %4194 = xor i32 %4188, %4192
  %4195 = add i32 %4193, %4194
  %4196 = icmp eq i32 %4195, 2
  %4197 = zext i1 %4196 to i8
  %4198 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4197, i8* %4198, align 1
  store %struct.Memory* %loadMem_435bd8, %struct.Memory** %MEMORY
  %loadMem_435bde = load %struct.Memory*, %struct.Memory** %MEMORY
  %4199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4200 = getelementptr inbounds %struct.GPR, %struct.GPR* %4199, i32 0, i32 33
  %4201 = getelementptr inbounds %struct.Reg, %struct.Reg* %4200, i32 0, i32 0
  %PC.i689 = bitcast %union.anon* %4201 to i64*
  %4202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4203 = getelementptr inbounds %struct.GPR, %struct.GPR* %4202, i32 0, i32 1
  %4204 = getelementptr inbounds %struct.Reg, %struct.Reg* %4203, i32 0, i32 0
  %EAX.i690 = bitcast %union.anon* %4204 to i32*
  %4205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4206 = getelementptr inbounds %struct.GPR, %struct.GPR* %4205, i32 0, i32 11
  %4207 = getelementptr inbounds %struct.Reg, %struct.Reg* %4206, i32 0, i32 0
  %RDI.i691 = bitcast %union.anon* %4207 to i64*
  %4208 = load i32, i32* %EAX.i690
  %4209 = zext i32 %4208 to i64
  %4210 = load i64, i64* %PC.i689
  %4211 = add i64 %4210, 2
  store i64 %4211, i64* %PC.i689
  %4212 = and i64 %4209, 4294967295
  store i64 %4212, i64* %RDI.i691, align 8
  store %struct.Memory* %loadMem_435bde, %struct.Memory** %MEMORY
  %loadMem_435be0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4214 = getelementptr inbounds %struct.GPR, %struct.GPR* %4213, i32 0, i32 33
  %4215 = getelementptr inbounds %struct.Reg, %struct.Reg* %4214, i32 0, i32 0
  %PC.i686 = bitcast %union.anon* %4215 to i64*
  %4216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4217 = getelementptr inbounds %struct.GPR, %struct.GPR* %4216, i32 0, i32 7
  %4218 = getelementptr inbounds %struct.Reg, %struct.Reg* %4217, i32 0, i32 0
  %EDX.i687 = bitcast %union.anon* %4218 to i32*
  %4219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4220 = getelementptr inbounds %struct.GPR, %struct.GPR* %4219, i32 0, i32 9
  %4221 = getelementptr inbounds %struct.Reg, %struct.Reg* %4220, i32 0, i32 0
  %RSI.i688 = bitcast %union.anon* %4221 to i64*
  %4222 = load i32, i32* %EDX.i687
  %4223 = zext i32 %4222 to i64
  %4224 = load i64, i64* %PC.i686
  %4225 = add i64 %4224, 2
  store i64 %4225, i64* %PC.i686
  %4226 = and i64 %4223, 4294967295
  store i64 %4226, i64* %RSI.i688, align 8
  store %struct.Memory* %loadMem_435be0, %struct.Memory** %MEMORY
  %loadMem1_435be2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4228 = getelementptr inbounds %struct.GPR, %struct.GPR* %4227, i32 0, i32 33
  %4229 = getelementptr inbounds %struct.Reg, %struct.Reg* %4228, i32 0, i32 0
  %PC.i685 = bitcast %union.anon* %4229 to i64*
  %4230 = load i64, i64* %PC.i685
  %4231 = add i64 %4230, -55858
  %4232 = load i64, i64* %PC.i685
  %4233 = add i64 %4232, 5
  %4234 = load i64, i64* %PC.i685
  %4235 = add i64 %4234, 5
  store i64 %4235, i64* %PC.i685
  %4236 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4237 = load i64, i64* %4236, align 8
  %4238 = add i64 %4237, -8
  %4239 = inttoptr i64 %4238 to i64*
  store i64 %4233, i64* %4239
  store i64 %4238, i64* %4236, align 8
  %4240 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4231, i64* %4240, align 8
  store %struct.Memory* %loadMem1_435be2, %struct.Memory** %MEMORY
  %loadMem2_435be2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_435be2 = load i64, i64* %3
  %call2_435be2 = call %struct.Memory* @sub_4281b0.ILogsum(%struct.State* %0, i64 %loadPC_435be2, %struct.Memory* %loadMem2_435be2)
  store %struct.Memory* %call2_435be2, %struct.Memory** %MEMORY
  %loadMem_435be7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4242 = getelementptr inbounds %struct.GPR, %struct.GPR* %4241, i32 0, i32 33
  %4243 = getelementptr inbounds %struct.Reg, %struct.Reg* %4242, i32 0, i32 0
  %PC.i682 = bitcast %union.anon* %4243 to i64*
  %4244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4245 = getelementptr inbounds %struct.GPR, %struct.GPR* %4244, i32 0, i32 5
  %4246 = getelementptr inbounds %struct.Reg, %struct.Reg* %4245, i32 0, i32 0
  %RCX.i683 = bitcast %union.anon* %4246 to i64*
  %4247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4248 = getelementptr inbounds %struct.GPR, %struct.GPR* %4247, i32 0, i32 15
  %4249 = getelementptr inbounds %struct.Reg, %struct.Reg* %4248, i32 0, i32 0
  %RBP.i684 = bitcast %union.anon* %4249 to i64*
  %4250 = load i64, i64* %RBP.i684
  %4251 = sub i64 %4250, 48
  %4252 = load i64, i64* %PC.i682
  %4253 = add i64 %4252, 4
  store i64 %4253, i64* %PC.i682
  %4254 = inttoptr i64 %4251 to i64*
  %4255 = load i64, i64* %4254
  store i64 %4255, i64* %RCX.i683, align 8
  store %struct.Memory* %loadMem_435be7, %struct.Memory** %MEMORY
  %loadMem_435beb = load %struct.Memory*, %struct.Memory** %MEMORY
  %4256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4257 = getelementptr inbounds %struct.GPR, %struct.GPR* %4256, i32 0, i32 33
  %4258 = getelementptr inbounds %struct.Reg, %struct.Reg* %4257, i32 0, i32 0
  %PC.i679 = bitcast %union.anon* %4258 to i64*
  %4259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4260 = getelementptr inbounds %struct.GPR, %struct.GPR* %4259, i32 0, i32 15
  %4261 = getelementptr inbounds %struct.Reg, %struct.Reg* %4260, i32 0, i32 0
  %RBP.i680 = bitcast %union.anon* %4261 to i64*
  %4262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4263 = getelementptr inbounds %struct.GPR, %struct.GPR* %4262, i32 0, i32 17
  %4264 = getelementptr inbounds %struct.Reg, %struct.Reg* %4263, i32 0, i32 0
  %R8.i681 = bitcast %union.anon* %4264 to i64*
  %4265 = load i64, i64* %RBP.i680
  %4266 = sub i64 %4265, 76
  %4267 = load i64, i64* %PC.i679
  %4268 = add i64 %4267, 4
  store i64 %4268, i64* %PC.i679
  %4269 = inttoptr i64 %4266 to i32*
  %4270 = load i32, i32* %4269
  %4271 = sext i32 %4270 to i64
  store i64 %4271, i64* %R8.i681, align 8
  store %struct.Memory* %loadMem_435beb, %struct.Memory** %MEMORY
  %loadMem_435bef = load %struct.Memory*, %struct.Memory** %MEMORY
  %4272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4273 = getelementptr inbounds %struct.GPR, %struct.GPR* %4272, i32 0, i32 33
  %4274 = getelementptr inbounds %struct.Reg, %struct.Reg* %4273, i32 0, i32 0
  %PC.i676 = bitcast %union.anon* %4274 to i64*
  %4275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4276 = getelementptr inbounds %struct.GPR, %struct.GPR* %4275, i32 0, i32 5
  %4277 = getelementptr inbounds %struct.Reg, %struct.Reg* %4276, i32 0, i32 0
  %RCX.i677 = bitcast %union.anon* %4277 to i64*
  %4278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4279 = getelementptr inbounds %struct.GPR, %struct.GPR* %4278, i32 0, i32 17
  %4280 = getelementptr inbounds %struct.Reg, %struct.Reg* %4279, i32 0, i32 0
  %R8.i678 = bitcast %union.anon* %4280 to i64*
  %4281 = load i64, i64* %RCX.i677
  %4282 = load i64, i64* %R8.i678
  %4283 = mul i64 %4282, 8
  %4284 = add i64 %4283, %4281
  %4285 = load i64, i64* %PC.i676
  %4286 = add i64 %4285, 4
  store i64 %4286, i64* %PC.i676
  %4287 = inttoptr i64 %4284 to i64*
  %4288 = load i64, i64* %4287
  store i64 %4288, i64* %RCX.i677, align 8
  store %struct.Memory* %loadMem_435bef, %struct.Memory** %MEMORY
  %loadMem_435bf3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4290 = getelementptr inbounds %struct.GPR, %struct.GPR* %4289, i32 0, i32 33
  %4291 = getelementptr inbounds %struct.Reg, %struct.Reg* %4290, i32 0, i32 0
  %PC.i673 = bitcast %union.anon* %4291 to i64*
  %4292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4293 = getelementptr inbounds %struct.GPR, %struct.GPR* %4292, i32 0, i32 1
  %4294 = getelementptr inbounds %struct.Reg, %struct.Reg* %4293, i32 0, i32 0
  %EAX.i674 = bitcast %union.anon* %4294 to i32*
  %4295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4296 = getelementptr inbounds %struct.GPR, %struct.GPR* %4295, i32 0, i32 5
  %4297 = getelementptr inbounds %struct.Reg, %struct.Reg* %4296, i32 0, i32 0
  %RCX.i675 = bitcast %union.anon* %4297 to i64*
  %4298 = load i64, i64* %RCX.i675
  %4299 = add i64 %4298, 4
  %4300 = load i32, i32* %EAX.i674
  %4301 = zext i32 %4300 to i64
  %4302 = load i64, i64* %PC.i673
  %4303 = add i64 %4302, 3
  store i64 %4303, i64* %PC.i673
  %4304 = inttoptr i64 %4299 to i32*
  store i32 %4300, i32* %4304
  store %struct.Memory* %loadMem_435bf3, %struct.Memory** %MEMORY
  %loadMem_435bf6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4306 = getelementptr inbounds %struct.GPR, %struct.GPR* %4305, i32 0, i32 33
  %4307 = getelementptr inbounds %struct.Reg, %struct.Reg* %4306, i32 0, i32 0
  %PC.i670 = bitcast %union.anon* %4307 to i64*
  %4308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4309 = getelementptr inbounds %struct.GPR, %struct.GPR* %4308, i32 0, i32 5
  %4310 = getelementptr inbounds %struct.Reg, %struct.Reg* %4309, i32 0, i32 0
  %RCX.i671 = bitcast %union.anon* %4310 to i64*
  %4311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4312 = getelementptr inbounds %struct.GPR, %struct.GPR* %4311, i32 0, i32 15
  %4313 = getelementptr inbounds %struct.Reg, %struct.Reg* %4312, i32 0, i32 0
  %RBP.i672 = bitcast %union.anon* %4313 to i64*
  %4314 = load i64, i64* %RBP.i672
  %4315 = sub i64 %4314, 48
  %4316 = load i64, i64* %PC.i670
  %4317 = add i64 %4316, 4
  store i64 %4317, i64* %PC.i670
  %4318 = inttoptr i64 %4315 to i64*
  %4319 = load i64, i64* %4318
  store i64 %4319, i64* %RCX.i671, align 8
  store %struct.Memory* %loadMem_435bf6, %struct.Memory** %MEMORY
  %loadMem_435bfa = load %struct.Memory*, %struct.Memory** %MEMORY
  %4320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4321 = getelementptr inbounds %struct.GPR, %struct.GPR* %4320, i32 0, i32 33
  %4322 = getelementptr inbounds %struct.Reg, %struct.Reg* %4321, i32 0, i32 0
  %PC.i667 = bitcast %union.anon* %4322 to i64*
  %4323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4324 = getelementptr inbounds %struct.GPR, %struct.GPR* %4323, i32 0, i32 15
  %4325 = getelementptr inbounds %struct.Reg, %struct.Reg* %4324, i32 0, i32 0
  %RBP.i668 = bitcast %union.anon* %4325 to i64*
  %4326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4327 = getelementptr inbounds %struct.GPR, %struct.GPR* %4326, i32 0, i32 17
  %4328 = getelementptr inbounds %struct.Reg, %struct.Reg* %4327, i32 0, i32 0
  %R8.i669 = bitcast %union.anon* %4328 to i64*
  %4329 = load i64, i64* %RBP.i668
  %4330 = sub i64 %4329, 76
  %4331 = load i64, i64* %PC.i667
  %4332 = add i64 %4331, 4
  store i64 %4332, i64* %PC.i667
  %4333 = inttoptr i64 %4330 to i32*
  %4334 = load i32, i32* %4333
  %4335 = sext i32 %4334 to i64
  store i64 %4335, i64* %R8.i669, align 8
  store %struct.Memory* %loadMem_435bfa, %struct.Memory** %MEMORY
  %loadMem_435bfe = load %struct.Memory*, %struct.Memory** %MEMORY
  %4336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4337 = getelementptr inbounds %struct.GPR, %struct.GPR* %4336, i32 0, i32 33
  %4338 = getelementptr inbounds %struct.Reg, %struct.Reg* %4337, i32 0, i32 0
  %PC.i664 = bitcast %union.anon* %4338 to i64*
  %4339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4340 = getelementptr inbounds %struct.GPR, %struct.GPR* %4339, i32 0, i32 5
  %4341 = getelementptr inbounds %struct.Reg, %struct.Reg* %4340, i32 0, i32 0
  %RCX.i665 = bitcast %union.anon* %4341 to i64*
  %4342 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4343 = getelementptr inbounds %struct.GPR, %struct.GPR* %4342, i32 0, i32 17
  %4344 = getelementptr inbounds %struct.Reg, %struct.Reg* %4343, i32 0, i32 0
  %R8.i666 = bitcast %union.anon* %4344 to i64*
  %4345 = load i64, i64* %RCX.i665
  %4346 = load i64, i64* %R8.i666
  %4347 = mul i64 %4346, 8
  %4348 = add i64 %4347, %4345
  %4349 = load i64, i64* %PC.i664
  %4350 = add i64 %4349, 4
  store i64 %4350, i64* %PC.i664
  %4351 = inttoptr i64 %4348 to i64*
  %4352 = load i64, i64* %4351
  store i64 %4352, i64* %RCX.i665, align 8
  store %struct.Memory* %loadMem_435bfe, %struct.Memory** %MEMORY
  %loadMem_435c02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4354 = getelementptr inbounds %struct.GPR, %struct.GPR* %4353, i32 0, i32 33
  %4355 = getelementptr inbounds %struct.Reg, %struct.Reg* %4354, i32 0, i32 0
  %PC.i661 = bitcast %union.anon* %4355 to i64*
  %4356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4357 = getelementptr inbounds %struct.GPR, %struct.GPR* %4356, i32 0, i32 1
  %4358 = getelementptr inbounds %struct.Reg, %struct.Reg* %4357, i32 0, i32 0
  %RAX.i662 = bitcast %union.anon* %4358 to i64*
  %4359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4360 = getelementptr inbounds %struct.GPR, %struct.GPR* %4359, i32 0, i32 5
  %4361 = getelementptr inbounds %struct.Reg, %struct.Reg* %4360, i32 0, i32 0
  %RCX.i663 = bitcast %union.anon* %4361 to i64*
  %4362 = load i64, i64* %RCX.i663
  %4363 = load i64, i64* %PC.i661
  %4364 = add i64 %4363, 2
  store i64 %4364, i64* %PC.i661
  %4365 = inttoptr i64 %4362 to i32*
  %4366 = load i32, i32* %4365
  %4367 = zext i32 %4366 to i64
  store i64 %4367, i64* %RAX.i662, align 8
  store %struct.Memory* %loadMem_435c02, %struct.Memory** %MEMORY
  %loadMem_435c04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4369 = getelementptr inbounds %struct.GPR, %struct.GPR* %4368, i32 0, i32 33
  %4370 = getelementptr inbounds %struct.Reg, %struct.Reg* %4369, i32 0, i32 0
  %PC.i658 = bitcast %union.anon* %4370 to i64*
  %4371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4372 = getelementptr inbounds %struct.GPR, %struct.GPR* %4371, i32 0, i32 5
  %4373 = getelementptr inbounds %struct.Reg, %struct.Reg* %4372, i32 0, i32 0
  %RCX.i659 = bitcast %union.anon* %4373 to i64*
  %4374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4375 = getelementptr inbounds %struct.GPR, %struct.GPR* %4374, i32 0, i32 15
  %4376 = getelementptr inbounds %struct.Reg, %struct.Reg* %4375, i32 0, i32 0
  %RBP.i660 = bitcast %union.anon* %4376 to i64*
  %4377 = load i64, i64* %RBP.i660
  %4378 = sub i64 %4377, 24
  %4379 = load i64, i64* %PC.i658
  %4380 = add i64 %4379, 4
  store i64 %4380, i64* %PC.i658
  %4381 = inttoptr i64 %4378 to i64*
  %4382 = load i64, i64* %4381
  store i64 %4382, i64* %RCX.i659, align 8
  store %struct.Memory* %loadMem_435c04, %struct.Memory** %MEMORY
  %loadMem_435c08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4384 = getelementptr inbounds %struct.GPR, %struct.GPR* %4383, i32 0, i32 33
  %4385 = getelementptr inbounds %struct.Reg, %struct.Reg* %4384, i32 0, i32 0
  %PC.i655 = bitcast %union.anon* %4385 to i64*
  %4386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4387 = getelementptr inbounds %struct.GPR, %struct.GPR* %4386, i32 0, i32 1
  %4388 = getelementptr inbounds %struct.Reg, %struct.Reg* %4387, i32 0, i32 0
  %RAX.i656 = bitcast %union.anon* %4388 to i64*
  %4389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4390 = getelementptr inbounds %struct.GPR, %struct.GPR* %4389, i32 0, i32 5
  %4391 = getelementptr inbounds %struct.Reg, %struct.Reg* %4390, i32 0, i32 0
  %RCX.i657 = bitcast %union.anon* %4391 to i64*
  %4392 = load i64, i64* %RAX.i656
  %4393 = load i64, i64* %RCX.i657
  %4394 = add i64 %4393, 336
  %4395 = load i64, i64* %PC.i655
  %4396 = add i64 %4395, 6
  store i64 %4396, i64* %PC.i655
  %4397 = trunc i64 %4392 to i32
  %4398 = inttoptr i64 %4394 to i32*
  %4399 = load i32, i32* %4398
  %4400 = add i32 %4399, %4397
  %4401 = zext i32 %4400 to i64
  store i64 %4401, i64* %RAX.i656, align 8
  %4402 = icmp ult i32 %4400, %4397
  %4403 = icmp ult i32 %4400, %4399
  %4404 = or i1 %4402, %4403
  %4405 = zext i1 %4404 to i8
  %4406 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4405, i8* %4406, align 1
  %4407 = and i32 %4400, 255
  %4408 = call i32 @llvm.ctpop.i32(i32 %4407)
  %4409 = trunc i32 %4408 to i8
  %4410 = and i8 %4409, 1
  %4411 = xor i8 %4410, 1
  %4412 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4411, i8* %4412, align 1
  %4413 = xor i32 %4399, %4397
  %4414 = xor i32 %4413, %4400
  %4415 = lshr i32 %4414, 4
  %4416 = trunc i32 %4415 to i8
  %4417 = and i8 %4416, 1
  %4418 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4417, i8* %4418, align 1
  %4419 = icmp eq i32 %4400, 0
  %4420 = zext i1 %4419 to i8
  %4421 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4420, i8* %4421, align 1
  %4422 = lshr i32 %4400, 31
  %4423 = trunc i32 %4422 to i8
  %4424 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4423, i8* %4424, align 1
  %4425 = lshr i32 %4397, 31
  %4426 = lshr i32 %4399, 31
  %4427 = xor i32 %4422, %4425
  %4428 = xor i32 %4422, %4426
  %4429 = add i32 %4427, %4428
  %4430 = icmp eq i32 %4429, 2
  %4431 = zext i1 %4430 to i8
  %4432 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4431, i8* %4432, align 1
  store %struct.Memory* %loadMem_435c08, %struct.Memory** %MEMORY
  %loadMem_435c0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4433 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4434 = getelementptr inbounds %struct.GPR, %struct.GPR* %4433, i32 0, i32 33
  %4435 = getelementptr inbounds %struct.Reg, %struct.Reg* %4434, i32 0, i32 0
  %PC.i652 = bitcast %union.anon* %4435 to i64*
  %4436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4437 = getelementptr inbounds %struct.GPR, %struct.GPR* %4436, i32 0, i32 5
  %4438 = getelementptr inbounds %struct.Reg, %struct.Reg* %4437, i32 0, i32 0
  %RCX.i653 = bitcast %union.anon* %4438 to i64*
  %4439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4440 = getelementptr inbounds %struct.GPR, %struct.GPR* %4439, i32 0, i32 15
  %4441 = getelementptr inbounds %struct.Reg, %struct.Reg* %4440, i32 0, i32 0
  %RBP.i654 = bitcast %union.anon* %4441 to i64*
  %4442 = load i64, i64* %RBP.i654
  %4443 = sub i64 %4442, 48
  %4444 = load i64, i64* %PC.i652
  %4445 = add i64 %4444, 4
  store i64 %4445, i64* %PC.i652
  %4446 = inttoptr i64 %4443 to i64*
  %4447 = load i64, i64* %4446
  store i64 %4447, i64* %RCX.i653, align 8
  store %struct.Memory* %loadMem_435c0e, %struct.Memory** %MEMORY
  %loadMem_435c12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4449 = getelementptr inbounds %struct.GPR, %struct.GPR* %4448, i32 0, i32 33
  %4450 = getelementptr inbounds %struct.Reg, %struct.Reg* %4449, i32 0, i32 0
  %PC.i649 = bitcast %union.anon* %4450 to i64*
  %4451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4452 = getelementptr inbounds %struct.GPR, %struct.GPR* %4451, i32 0, i32 7
  %4453 = getelementptr inbounds %struct.Reg, %struct.Reg* %4452, i32 0, i32 0
  %RDX.i650 = bitcast %union.anon* %4453 to i64*
  %4454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4455 = getelementptr inbounds %struct.GPR, %struct.GPR* %4454, i32 0, i32 15
  %4456 = getelementptr inbounds %struct.Reg, %struct.Reg* %4455, i32 0, i32 0
  %RBP.i651 = bitcast %union.anon* %4456 to i64*
  %4457 = load i64, i64* %RBP.i651
  %4458 = sub i64 %4457, 76
  %4459 = load i64, i64* %PC.i649
  %4460 = add i64 %4459, 3
  store i64 %4460, i64* %PC.i649
  %4461 = inttoptr i64 %4458 to i32*
  %4462 = load i32, i32* %4461
  %4463 = zext i32 %4462 to i64
  store i64 %4463, i64* %RDX.i650, align 8
  store %struct.Memory* %loadMem_435c12, %struct.Memory** %MEMORY
  %loadMem_435c15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4465 = getelementptr inbounds %struct.GPR, %struct.GPR* %4464, i32 0, i32 33
  %4466 = getelementptr inbounds %struct.Reg, %struct.Reg* %4465, i32 0, i32 0
  %PC.i647 = bitcast %union.anon* %4466 to i64*
  %4467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4468 = getelementptr inbounds %struct.GPR, %struct.GPR* %4467, i32 0, i32 7
  %4469 = getelementptr inbounds %struct.Reg, %struct.Reg* %4468, i32 0, i32 0
  %RDX.i648 = bitcast %union.anon* %4469 to i64*
  %4470 = load i64, i64* %RDX.i648
  %4471 = load i64, i64* %PC.i647
  %4472 = add i64 %4471, 3
  store i64 %4472, i64* %PC.i647
  %4473 = trunc i64 %4470 to i32
  %4474 = add i32 1, %4473
  %4475 = zext i32 %4474 to i64
  store i64 %4475, i64* %RDX.i648, align 8
  %4476 = icmp ult i32 %4474, %4473
  %4477 = icmp ult i32 %4474, 1
  %4478 = or i1 %4476, %4477
  %4479 = zext i1 %4478 to i8
  %4480 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4479, i8* %4480, align 1
  %4481 = and i32 %4474, 255
  %4482 = call i32 @llvm.ctpop.i32(i32 %4481)
  %4483 = trunc i32 %4482 to i8
  %4484 = and i8 %4483, 1
  %4485 = xor i8 %4484, 1
  %4486 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4485, i8* %4486, align 1
  %4487 = xor i64 1, %4470
  %4488 = trunc i64 %4487 to i32
  %4489 = xor i32 %4488, %4474
  %4490 = lshr i32 %4489, 4
  %4491 = trunc i32 %4490 to i8
  %4492 = and i8 %4491, 1
  %4493 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4492, i8* %4493, align 1
  %4494 = icmp eq i32 %4474, 0
  %4495 = zext i1 %4494 to i8
  %4496 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4495, i8* %4496, align 1
  %4497 = lshr i32 %4474, 31
  %4498 = trunc i32 %4497 to i8
  %4499 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4498, i8* %4499, align 1
  %4500 = lshr i32 %4473, 31
  %4501 = xor i32 %4497, %4500
  %4502 = add i32 %4501, %4497
  %4503 = icmp eq i32 %4502, 2
  %4504 = zext i1 %4503 to i8
  %4505 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4504, i8* %4505, align 1
  store %struct.Memory* %loadMem_435c15, %struct.Memory** %MEMORY
  %loadMem_435c18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4507 = getelementptr inbounds %struct.GPR, %struct.GPR* %4506, i32 0, i32 33
  %4508 = getelementptr inbounds %struct.Reg, %struct.Reg* %4507, i32 0, i32 0
  %PC.i644 = bitcast %union.anon* %4508 to i64*
  %4509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4510 = getelementptr inbounds %struct.GPR, %struct.GPR* %4509, i32 0, i32 7
  %4511 = getelementptr inbounds %struct.Reg, %struct.Reg* %4510, i32 0, i32 0
  %EDX.i645 = bitcast %union.anon* %4511 to i32*
  %4512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4513 = getelementptr inbounds %struct.GPR, %struct.GPR* %4512, i32 0, i32 17
  %4514 = getelementptr inbounds %struct.Reg, %struct.Reg* %4513, i32 0, i32 0
  %R8.i646 = bitcast %union.anon* %4514 to i64*
  %4515 = load i32, i32* %EDX.i645
  %4516 = zext i32 %4515 to i64
  %4517 = load i64, i64* %PC.i644
  %4518 = add i64 %4517, 3
  store i64 %4518, i64* %PC.i644
  %4519 = shl i64 %4516, 32
  %4520 = ashr exact i64 %4519, 32
  store i64 %4520, i64* %R8.i646, align 8
  store %struct.Memory* %loadMem_435c18, %struct.Memory** %MEMORY
  %loadMem_435c1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4521 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4522 = getelementptr inbounds %struct.GPR, %struct.GPR* %4521, i32 0, i32 33
  %4523 = getelementptr inbounds %struct.Reg, %struct.Reg* %4522, i32 0, i32 0
  %PC.i641 = bitcast %union.anon* %4523 to i64*
  %4524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4525 = getelementptr inbounds %struct.GPR, %struct.GPR* %4524, i32 0, i32 5
  %4526 = getelementptr inbounds %struct.Reg, %struct.Reg* %4525, i32 0, i32 0
  %RCX.i642 = bitcast %union.anon* %4526 to i64*
  %4527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4528 = getelementptr inbounds %struct.GPR, %struct.GPR* %4527, i32 0, i32 17
  %4529 = getelementptr inbounds %struct.Reg, %struct.Reg* %4528, i32 0, i32 0
  %R8.i643 = bitcast %union.anon* %4529 to i64*
  %4530 = load i64, i64* %RCX.i642
  %4531 = load i64, i64* %R8.i643
  %4532 = mul i64 %4531, 8
  %4533 = add i64 %4532, %4530
  %4534 = load i64, i64* %PC.i641
  %4535 = add i64 %4534, 4
  store i64 %4535, i64* %PC.i641
  %4536 = inttoptr i64 %4533 to i64*
  %4537 = load i64, i64* %4536
  store i64 %4537, i64* %RCX.i642, align 8
  store %struct.Memory* %loadMem_435c1b, %struct.Memory** %MEMORY
  %loadMem_435c1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4538 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4539 = getelementptr inbounds %struct.GPR, %struct.GPR* %4538, i32 0, i32 33
  %4540 = getelementptr inbounds %struct.Reg, %struct.Reg* %4539, i32 0, i32 0
  %PC.i638 = bitcast %union.anon* %4540 to i64*
  %4541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4542 = getelementptr inbounds %struct.GPR, %struct.GPR* %4541, i32 0, i32 5
  %4543 = getelementptr inbounds %struct.Reg, %struct.Reg* %4542, i32 0, i32 0
  %RCX.i639 = bitcast %union.anon* %4543 to i64*
  %4544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4545 = getelementptr inbounds %struct.GPR, %struct.GPR* %4544, i32 0, i32 7
  %4546 = getelementptr inbounds %struct.Reg, %struct.Reg* %4545, i32 0, i32 0
  %RDX.i640 = bitcast %union.anon* %4546 to i64*
  %4547 = load i64, i64* %RCX.i639
  %4548 = add i64 %4547, 16
  %4549 = load i64, i64* %PC.i638
  %4550 = add i64 %4549, 3
  store i64 %4550, i64* %PC.i638
  %4551 = inttoptr i64 %4548 to i32*
  %4552 = load i32, i32* %4551
  %4553 = zext i32 %4552 to i64
  store i64 %4553, i64* %RDX.i640, align 8
  store %struct.Memory* %loadMem_435c1f, %struct.Memory** %MEMORY
  %loadMem_435c22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4555 = getelementptr inbounds %struct.GPR, %struct.GPR* %4554, i32 0, i32 33
  %4556 = getelementptr inbounds %struct.Reg, %struct.Reg* %4555, i32 0, i32 0
  %PC.i635 = bitcast %union.anon* %4556 to i64*
  %4557 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4558 = getelementptr inbounds %struct.GPR, %struct.GPR* %4557, i32 0, i32 5
  %4559 = getelementptr inbounds %struct.Reg, %struct.Reg* %4558, i32 0, i32 0
  %RCX.i636 = bitcast %union.anon* %4559 to i64*
  %4560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4561 = getelementptr inbounds %struct.GPR, %struct.GPR* %4560, i32 0, i32 15
  %4562 = getelementptr inbounds %struct.Reg, %struct.Reg* %4561, i32 0, i32 0
  %RBP.i637 = bitcast %union.anon* %4562 to i64*
  %4563 = load i64, i64* %RBP.i637
  %4564 = sub i64 %4563, 24
  %4565 = load i64, i64* %PC.i635
  %4566 = add i64 %4565, 4
  store i64 %4566, i64* %PC.i635
  %4567 = inttoptr i64 %4564 to i64*
  %4568 = load i64, i64* %4567
  store i64 %4568, i64* %RCX.i636, align 8
  store %struct.Memory* %loadMem_435c22, %struct.Memory** %MEMORY
  %loadMem_435c26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4569 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4570 = getelementptr inbounds %struct.GPR, %struct.GPR* %4569, i32 0, i32 33
  %4571 = getelementptr inbounds %struct.Reg, %struct.Reg* %4570, i32 0, i32 0
  %PC.i632 = bitcast %union.anon* %4571 to i64*
  %4572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4573 = getelementptr inbounds %struct.GPR, %struct.GPR* %4572, i32 0, i32 5
  %4574 = getelementptr inbounds %struct.Reg, %struct.Reg* %4573, i32 0, i32 0
  %RCX.i633 = bitcast %union.anon* %4574 to i64*
  %4575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4576 = getelementptr inbounds %struct.GPR, %struct.GPR* %4575, i32 0, i32 7
  %4577 = getelementptr inbounds %struct.Reg, %struct.Reg* %4576, i32 0, i32 0
  %RDX.i634 = bitcast %union.anon* %4577 to i64*
  %4578 = load i64, i64* %RDX.i634
  %4579 = load i64, i64* %RCX.i633
  %4580 = add i64 %4579, 340
  %4581 = load i64, i64* %PC.i632
  %4582 = add i64 %4581, 6
  store i64 %4582, i64* %PC.i632
  %4583 = trunc i64 %4578 to i32
  %4584 = inttoptr i64 %4580 to i32*
  %4585 = load i32, i32* %4584
  %4586 = add i32 %4585, %4583
  %4587 = zext i32 %4586 to i64
  store i64 %4587, i64* %RDX.i634, align 8
  %4588 = icmp ult i32 %4586, %4583
  %4589 = icmp ult i32 %4586, %4585
  %4590 = or i1 %4588, %4589
  %4591 = zext i1 %4590 to i8
  %4592 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4591, i8* %4592, align 1
  %4593 = and i32 %4586, 255
  %4594 = call i32 @llvm.ctpop.i32(i32 %4593)
  %4595 = trunc i32 %4594 to i8
  %4596 = and i8 %4595, 1
  %4597 = xor i8 %4596, 1
  %4598 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4597, i8* %4598, align 1
  %4599 = xor i32 %4585, %4583
  %4600 = xor i32 %4599, %4586
  %4601 = lshr i32 %4600, 4
  %4602 = trunc i32 %4601 to i8
  %4603 = and i8 %4602, 1
  %4604 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4603, i8* %4604, align 1
  %4605 = icmp eq i32 %4586, 0
  %4606 = zext i1 %4605 to i8
  %4607 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4606, i8* %4607, align 1
  %4608 = lshr i32 %4586, 31
  %4609 = trunc i32 %4608 to i8
  %4610 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4609, i8* %4610, align 1
  %4611 = lshr i32 %4583, 31
  %4612 = lshr i32 %4585, 31
  %4613 = xor i32 %4608, %4611
  %4614 = xor i32 %4608, %4612
  %4615 = add i32 %4613, %4614
  %4616 = icmp eq i32 %4615, 2
  %4617 = zext i1 %4616 to i8
  %4618 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4617, i8* %4618, align 1
  store %struct.Memory* %loadMem_435c26, %struct.Memory** %MEMORY
  %loadMem_435c2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4620 = getelementptr inbounds %struct.GPR, %struct.GPR* %4619, i32 0, i32 33
  %4621 = getelementptr inbounds %struct.Reg, %struct.Reg* %4620, i32 0, i32 0
  %PC.i629 = bitcast %union.anon* %4621 to i64*
  %4622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4623 = getelementptr inbounds %struct.GPR, %struct.GPR* %4622, i32 0, i32 1
  %4624 = getelementptr inbounds %struct.Reg, %struct.Reg* %4623, i32 0, i32 0
  %EAX.i630 = bitcast %union.anon* %4624 to i32*
  %4625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4626 = getelementptr inbounds %struct.GPR, %struct.GPR* %4625, i32 0, i32 11
  %4627 = getelementptr inbounds %struct.Reg, %struct.Reg* %4626, i32 0, i32 0
  %RDI.i631 = bitcast %union.anon* %4627 to i64*
  %4628 = load i32, i32* %EAX.i630
  %4629 = zext i32 %4628 to i64
  %4630 = load i64, i64* %PC.i629
  %4631 = add i64 %4630, 2
  store i64 %4631, i64* %PC.i629
  %4632 = and i64 %4629, 4294967295
  store i64 %4632, i64* %RDI.i631, align 8
  store %struct.Memory* %loadMem_435c2c, %struct.Memory** %MEMORY
  %loadMem_435c2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4634 = getelementptr inbounds %struct.GPR, %struct.GPR* %4633, i32 0, i32 33
  %4635 = getelementptr inbounds %struct.Reg, %struct.Reg* %4634, i32 0, i32 0
  %PC.i626 = bitcast %union.anon* %4635 to i64*
  %4636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4637 = getelementptr inbounds %struct.GPR, %struct.GPR* %4636, i32 0, i32 7
  %4638 = getelementptr inbounds %struct.Reg, %struct.Reg* %4637, i32 0, i32 0
  %EDX.i627 = bitcast %union.anon* %4638 to i32*
  %4639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4640 = getelementptr inbounds %struct.GPR, %struct.GPR* %4639, i32 0, i32 9
  %4641 = getelementptr inbounds %struct.Reg, %struct.Reg* %4640, i32 0, i32 0
  %RSI.i628 = bitcast %union.anon* %4641 to i64*
  %4642 = load i32, i32* %EDX.i627
  %4643 = zext i32 %4642 to i64
  %4644 = load i64, i64* %PC.i626
  %4645 = add i64 %4644, 2
  store i64 %4645, i64* %PC.i626
  %4646 = and i64 %4643, 4294967295
  store i64 %4646, i64* %RSI.i628, align 8
  store %struct.Memory* %loadMem_435c2e, %struct.Memory** %MEMORY
  %loadMem1_435c30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4648 = getelementptr inbounds %struct.GPR, %struct.GPR* %4647, i32 0, i32 33
  %4649 = getelementptr inbounds %struct.Reg, %struct.Reg* %4648, i32 0, i32 0
  %PC.i625 = bitcast %union.anon* %4649 to i64*
  %4650 = load i64, i64* %PC.i625
  %4651 = add i64 %4650, -55936
  %4652 = load i64, i64* %PC.i625
  %4653 = add i64 %4652, 5
  %4654 = load i64, i64* %PC.i625
  %4655 = add i64 %4654, 5
  store i64 %4655, i64* %PC.i625
  %4656 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4657 = load i64, i64* %4656, align 8
  %4658 = add i64 %4657, -8
  %4659 = inttoptr i64 %4658 to i64*
  store i64 %4653, i64* %4659
  store i64 %4658, i64* %4656, align 8
  %4660 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4651, i64* %4660, align 8
  store %struct.Memory* %loadMem1_435c30, %struct.Memory** %MEMORY
  %loadMem2_435c30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_435c30 = load i64, i64* %3
  %call2_435c30 = call %struct.Memory* @sub_4281b0.ILogsum(%struct.State* %0, i64 %loadPC_435c30, %struct.Memory* %loadMem2_435c30)
  store %struct.Memory* %call2_435c30, %struct.Memory** %MEMORY
  %loadMem_435c35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4662 = getelementptr inbounds %struct.GPR, %struct.GPR* %4661, i32 0, i32 33
  %4663 = getelementptr inbounds %struct.Reg, %struct.Reg* %4662, i32 0, i32 0
  %PC.i622 = bitcast %union.anon* %4663 to i64*
  %4664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4665 = getelementptr inbounds %struct.GPR, %struct.GPR* %4664, i32 0, i32 5
  %4666 = getelementptr inbounds %struct.Reg, %struct.Reg* %4665, i32 0, i32 0
  %RCX.i623 = bitcast %union.anon* %4666 to i64*
  %4667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4668 = getelementptr inbounds %struct.GPR, %struct.GPR* %4667, i32 0, i32 15
  %4669 = getelementptr inbounds %struct.Reg, %struct.Reg* %4668, i32 0, i32 0
  %RBP.i624 = bitcast %union.anon* %4669 to i64*
  %4670 = load i64, i64* %RBP.i624
  %4671 = sub i64 %4670, 48
  %4672 = load i64, i64* %PC.i622
  %4673 = add i64 %4672, 4
  store i64 %4673, i64* %PC.i622
  %4674 = inttoptr i64 %4671 to i64*
  %4675 = load i64, i64* %4674
  store i64 %4675, i64* %RCX.i623, align 8
  store %struct.Memory* %loadMem_435c35, %struct.Memory** %MEMORY
  %loadMem_435c39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4676 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4677 = getelementptr inbounds %struct.GPR, %struct.GPR* %4676, i32 0, i32 33
  %4678 = getelementptr inbounds %struct.Reg, %struct.Reg* %4677, i32 0, i32 0
  %PC.i619 = bitcast %union.anon* %4678 to i64*
  %4679 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4680 = getelementptr inbounds %struct.GPR, %struct.GPR* %4679, i32 0, i32 15
  %4681 = getelementptr inbounds %struct.Reg, %struct.Reg* %4680, i32 0, i32 0
  %RBP.i620 = bitcast %union.anon* %4681 to i64*
  %4682 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4683 = getelementptr inbounds %struct.GPR, %struct.GPR* %4682, i32 0, i32 17
  %4684 = getelementptr inbounds %struct.Reg, %struct.Reg* %4683, i32 0, i32 0
  %R8.i621 = bitcast %union.anon* %4684 to i64*
  %4685 = load i64, i64* %RBP.i620
  %4686 = sub i64 %4685, 76
  %4687 = load i64, i64* %PC.i619
  %4688 = add i64 %4687, 4
  store i64 %4688, i64* %PC.i619
  %4689 = inttoptr i64 %4686 to i32*
  %4690 = load i32, i32* %4689
  %4691 = sext i32 %4690 to i64
  store i64 %4691, i64* %R8.i621, align 8
  store %struct.Memory* %loadMem_435c39, %struct.Memory** %MEMORY
  %loadMem_435c3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4692 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4693 = getelementptr inbounds %struct.GPR, %struct.GPR* %4692, i32 0, i32 33
  %4694 = getelementptr inbounds %struct.Reg, %struct.Reg* %4693, i32 0, i32 0
  %PC.i616 = bitcast %union.anon* %4694 to i64*
  %4695 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4696 = getelementptr inbounds %struct.GPR, %struct.GPR* %4695, i32 0, i32 5
  %4697 = getelementptr inbounds %struct.Reg, %struct.Reg* %4696, i32 0, i32 0
  %RCX.i617 = bitcast %union.anon* %4697 to i64*
  %4698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4699 = getelementptr inbounds %struct.GPR, %struct.GPR* %4698, i32 0, i32 17
  %4700 = getelementptr inbounds %struct.Reg, %struct.Reg* %4699, i32 0, i32 0
  %R8.i618 = bitcast %union.anon* %4700 to i64*
  %4701 = load i64, i64* %RCX.i617
  %4702 = load i64, i64* %R8.i618
  %4703 = mul i64 %4702, 8
  %4704 = add i64 %4703, %4701
  %4705 = load i64, i64* %PC.i616
  %4706 = add i64 %4705, 4
  store i64 %4706, i64* %PC.i616
  %4707 = inttoptr i64 %4704 to i64*
  %4708 = load i64, i64* %4707
  store i64 %4708, i64* %RCX.i617, align 8
  store %struct.Memory* %loadMem_435c3d, %struct.Memory** %MEMORY
  %loadMem_435c41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4710 = getelementptr inbounds %struct.GPR, %struct.GPR* %4709, i32 0, i32 33
  %4711 = getelementptr inbounds %struct.Reg, %struct.Reg* %4710, i32 0, i32 0
  %PC.i613 = bitcast %union.anon* %4711 to i64*
  %4712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4713 = getelementptr inbounds %struct.GPR, %struct.GPR* %4712, i32 0, i32 1
  %4714 = getelementptr inbounds %struct.Reg, %struct.Reg* %4713, i32 0, i32 0
  %EAX.i614 = bitcast %union.anon* %4714 to i32*
  %4715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4716 = getelementptr inbounds %struct.GPR, %struct.GPR* %4715, i32 0, i32 5
  %4717 = getelementptr inbounds %struct.Reg, %struct.Reg* %4716, i32 0, i32 0
  %RCX.i615 = bitcast %union.anon* %4717 to i64*
  %4718 = load i64, i64* %RCX.i615
  %4719 = add i64 %4718, 16
  %4720 = load i32, i32* %EAX.i614
  %4721 = zext i32 %4720 to i64
  %4722 = load i64, i64* %PC.i613
  %4723 = add i64 %4722, 3
  store i64 %4723, i64* %PC.i613
  %4724 = inttoptr i64 %4719 to i32*
  store i32 %4720, i32* %4724
  store %struct.Memory* %loadMem_435c41, %struct.Memory** %MEMORY
  %loadMem_435c44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4725 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4726 = getelementptr inbounds %struct.GPR, %struct.GPR* %4725, i32 0, i32 33
  %4727 = getelementptr inbounds %struct.Reg, %struct.Reg* %4726, i32 0, i32 0
  %PC.i611 = bitcast %union.anon* %4727 to i64*
  %4728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4729 = getelementptr inbounds %struct.GPR, %struct.GPR* %4728, i32 0, i32 15
  %4730 = getelementptr inbounds %struct.Reg, %struct.Reg* %4729, i32 0, i32 0
  %RBP.i612 = bitcast %union.anon* %4730 to i64*
  %4731 = load i64, i64* %RBP.i612
  %4732 = sub i64 %4731, 76
  %4733 = load i64, i64* %PC.i611
  %4734 = add i64 %4733, 4
  store i64 %4734, i64* %PC.i611
  %4735 = inttoptr i64 %4732 to i32*
  %4736 = load i32, i32* %4735
  %4737 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4737, align 1
  %4738 = and i32 %4736, 255
  %4739 = call i32 @llvm.ctpop.i32(i32 %4738)
  %4740 = trunc i32 %4739 to i8
  %4741 = and i8 %4740, 1
  %4742 = xor i8 %4741, 1
  %4743 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4742, i8* %4743, align 1
  %4744 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4744, align 1
  %4745 = icmp eq i32 %4736, 0
  %4746 = zext i1 %4745 to i8
  %4747 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4746, i8* %4747, align 1
  %4748 = lshr i32 %4736, 31
  %4749 = trunc i32 %4748 to i8
  %4750 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4749, i8* %4750, align 1
  %4751 = lshr i32 %4736, 31
  %4752 = xor i32 %4748, %4751
  %4753 = add i32 %4752, %4751
  %4754 = icmp eq i32 %4753, 2
  %4755 = zext i1 %4754 to i8
  %4756 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4755, i8* %4756, align 1
  store %struct.Memory* %loadMem_435c44, %struct.Memory** %MEMORY
  %loadMem_435c48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4758 = getelementptr inbounds %struct.GPR, %struct.GPR* %4757, i32 0, i32 33
  %4759 = getelementptr inbounds %struct.Reg, %struct.Reg* %4758, i32 0, i32 0
  %PC.i610 = bitcast %union.anon* %4759 to i64*
  %4760 = load i64, i64* %PC.i610
  %4761 = add i64 %4760, 803
  %4762 = load i64, i64* %PC.i610
  %4763 = add i64 %4762, 6
  %4764 = load i64, i64* %PC.i610
  %4765 = add i64 %4764, 6
  store i64 %4765, i64* %PC.i610
  %4766 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4767 = load i8, i8* %4766, align 1
  %4768 = icmp ne i8 %4767, 0
  %4769 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4770 = load i8, i8* %4769, align 1
  %4771 = icmp ne i8 %4770, 0
  %4772 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4773 = load i8, i8* %4772, align 1
  %4774 = icmp ne i8 %4773, 0
  %4775 = xor i1 %4771, %4774
  %4776 = or i1 %4768, %4775
  %4777 = zext i1 %4776 to i8
  store i8 %4777, i8* %BRANCH_TAKEN, align 1
  %4778 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4779 = select i1 %4776, i64 %4761, i64 %4763
  store i64 %4779, i64* %4778, align 8
  store %struct.Memory* %loadMem_435c48, %struct.Memory** %MEMORY
  %loadBr_435c48 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_435c48 = icmp eq i8 %loadBr_435c48, 1
  br i1 %cmpBr_435c48, label %block_.L_435f6b, label %block_435c4e

block_435c4e:                                     ; preds = %block_.L_435b60
  %loadMem_435c4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4780 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4781 = getelementptr inbounds %struct.GPR, %struct.GPR* %4780, i32 0, i32 33
  %4782 = getelementptr inbounds %struct.Reg, %struct.Reg* %4781, i32 0, i32 0
  %PC.i607 = bitcast %union.anon* %4782 to i64*
  %4783 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4784 = getelementptr inbounds %struct.GPR, %struct.GPR* %4783, i32 0, i32 1
  %4785 = getelementptr inbounds %struct.Reg, %struct.Reg* %4784, i32 0, i32 0
  %RAX.i608 = bitcast %union.anon* %4785 to i64*
  %4786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4787 = getelementptr inbounds %struct.GPR, %struct.GPR* %4786, i32 0, i32 15
  %4788 = getelementptr inbounds %struct.Reg, %struct.Reg* %4787, i32 0, i32 0
  %RBP.i609 = bitcast %union.anon* %4788 to i64*
  %4789 = load i64, i64* %RBP.i609
  %4790 = sub i64 %4789, 48
  %4791 = load i64, i64* %PC.i607
  %4792 = add i64 %4791, 4
  store i64 %4792, i64* %PC.i607
  %4793 = inttoptr i64 %4790 to i64*
  %4794 = load i64, i64* %4793
  store i64 %4794, i64* %RAX.i608, align 8
  store %struct.Memory* %loadMem_435c4e, %struct.Memory** %MEMORY
  %loadMem_435c52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4796 = getelementptr inbounds %struct.GPR, %struct.GPR* %4795, i32 0, i32 33
  %4797 = getelementptr inbounds %struct.Reg, %struct.Reg* %4796, i32 0, i32 0
  %PC.i604 = bitcast %union.anon* %4797 to i64*
  %4798 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4799 = getelementptr inbounds %struct.GPR, %struct.GPR* %4798, i32 0, i32 5
  %4800 = getelementptr inbounds %struct.Reg, %struct.Reg* %4799, i32 0, i32 0
  %RCX.i605 = bitcast %union.anon* %4800 to i64*
  %4801 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4802 = getelementptr inbounds %struct.GPR, %struct.GPR* %4801, i32 0, i32 15
  %4803 = getelementptr inbounds %struct.Reg, %struct.Reg* %4802, i32 0, i32 0
  %RBP.i606 = bitcast %union.anon* %4803 to i64*
  %4804 = load i64, i64* %RBP.i606
  %4805 = sub i64 %4804, 76
  %4806 = load i64, i64* %PC.i604
  %4807 = add i64 %4806, 4
  store i64 %4807, i64* %PC.i604
  %4808 = inttoptr i64 %4805 to i32*
  %4809 = load i32, i32* %4808
  %4810 = sext i32 %4809 to i64
  store i64 %4810, i64* %RCX.i605, align 8
  store %struct.Memory* %loadMem_435c52, %struct.Memory** %MEMORY
  %loadMem_435c56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4811 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4812 = getelementptr inbounds %struct.GPR, %struct.GPR* %4811, i32 0, i32 33
  %4813 = getelementptr inbounds %struct.Reg, %struct.Reg* %4812, i32 0, i32 0
  %PC.i601 = bitcast %union.anon* %4813 to i64*
  %4814 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4815 = getelementptr inbounds %struct.GPR, %struct.GPR* %4814, i32 0, i32 1
  %4816 = getelementptr inbounds %struct.Reg, %struct.Reg* %4815, i32 0, i32 0
  %RAX.i602 = bitcast %union.anon* %4816 to i64*
  %4817 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4818 = getelementptr inbounds %struct.GPR, %struct.GPR* %4817, i32 0, i32 5
  %4819 = getelementptr inbounds %struct.Reg, %struct.Reg* %4818, i32 0, i32 0
  %RCX.i603 = bitcast %union.anon* %4819 to i64*
  %4820 = load i64, i64* %RAX.i602
  %4821 = load i64, i64* %RCX.i603
  %4822 = mul i64 %4821, 8
  %4823 = add i64 %4822, %4820
  %4824 = load i64, i64* %PC.i601
  %4825 = add i64 %4824, 4
  store i64 %4825, i64* %PC.i601
  %4826 = inttoptr i64 %4823 to i64*
  %4827 = load i64, i64* %4826
  store i64 %4827, i64* %RAX.i602, align 8
  store %struct.Memory* %loadMem_435c56, %struct.Memory** %MEMORY
  %loadMem_435c5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4829 = getelementptr inbounds %struct.GPR, %struct.GPR* %4828, i32 0, i32 33
  %4830 = getelementptr inbounds %struct.Reg, %struct.Reg* %4829, i32 0, i32 0
  %PC.i598 = bitcast %union.anon* %4830 to i64*
  %4831 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4832 = getelementptr inbounds %struct.GPR, %struct.GPR* %4831, i32 0, i32 1
  %4833 = getelementptr inbounds %struct.Reg, %struct.Reg* %4832, i32 0, i32 0
  %RAX.i599 = bitcast %union.anon* %4833 to i64*
  %4834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4835 = getelementptr inbounds %struct.GPR, %struct.GPR* %4834, i32 0, i32 7
  %4836 = getelementptr inbounds %struct.Reg, %struct.Reg* %4835, i32 0, i32 0
  %RDX.i600 = bitcast %union.anon* %4836 to i64*
  %4837 = load i64, i64* %RAX.i599
  %4838 = add i64 %4837, 4
  %4839 = load i64, i64* %PC.i598
  %4840 = add i64 %4839, 3
  store i64 %4840, i64* %PC.i598
  %4841 = inttoptr i64 %4838 to i32*
  %4842 = load i32, i32* %4841
  %4843 = zext i32 %4842 to i64
  store i64 %4843, i64* %RDX.i600, align 8
  store %struct.Memory* %loadMem_435c5a, %struct.Memory** %MEMORY
  %loadMem_435c5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4844 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4845 = getelementptr inbounds %struct.GPR, %struct.GPR* %4844, i32 0, i32 33
  %4846 = getelementptr inbounds %struct.Reg, %struct.Reg* %4845, i32 0, i32 0
  %PC.i595 = bitcast %union.anon* %4846 to i64*
  %4847 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4848 = getelementptr inbounds %struct.GPR, %struct.GPR* %4847, i32 0, i32 1
  %4849 = getelementptr inbounds %struct.Reg, %struct.Reg* %4848, i32 0, i32 0
  %RAX.i596 = bitcast %union.anon* %4849 to i64*
  %4850 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4851 = getelementptr inbounds %struct.GPR, %struct.GPR* %4850, i32 0, i32 15
  %4852 = getelementptr inbounds %struct.Reg, %struct.Reg* %4851, i32 0, i32 0
  %RBP.i597 = bitcast %union.anon* %4852 to i64*
  %4853 = load i64, i64* %RBP.i597
  %4854 = sub i64 %4853, 24
  %4855 = load i64, i64* %PC.i595
  %4856 = add i64 %4855, 4
  store i64 %4856, i64* %PC.i595
  %4857 = inttoptr i64 %4854 to i64*
  %4858 = load i64, i64* %4857
  store i64 %4858, i64* %RAX.i596, align 8
  store %struct.Memory* %loadMem_435c5d, %struct.Memory** %MEMORY
  %loadMem_435c61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4859 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4860 = getelementptr inbounds %struct.GPR, %struct.GPR* %4859, i32 0, i32 33
  %4861 = getelementptr inbounds %struct.Reg, %struct.Reg* %4860, i32 0, i32 0
  %PC.i593 = bitcast %union.anon* %4861 to i64*
  %4862 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4863 = getelementptr inbounds %struct.GPR, %struct.GPR* %4862, i32 0, i32 1
  %4864 = getelementptr inbounds %struct.Reg, %struct.Reg* %4863, i32 0, i32 0
  %RAX.i594 = bitcast %union.anon* %4864 to i64*
  %4865 = load i64, i64* %RAX.i594
  %4866 = add i64 %4865, 376
  %4867 = load i64, i64* %PC.i593
  %4868 = add i64 %4867, 7
  store i64 %4868, i64* %PC.i593
  %4869 = inttoptr i64 %4866 to i64*
  %4870 = load i64, i64* %4869
  store i64 %4870, i64* %RAX.i594, align 8
  store %struct.Memory* %loadMem_435c61, %struct.Memory** %MEMORY
  %loadMem_435c68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4872 = getelementptr inbounds %struct.GPR, %struct.GPR* %4871, i32 0, i32 33
  %4873 = getelementptr inbounds %struct.Reg, %struct.Reg* %4872, i32 0, i32 0
  %PC.i590 = bitcast %union.anon* %4873 to i64*
  %4874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4875 = getelementptr inbounds %struct.GPR, %struct.GPR* %4874, i32 0, i32 5
  %4876 = getelementptr inbounds %struct.Reg, %struct.Reg* %4875, i32 0, i32 0
  %RCX.i591 = bitcast %union.anon* %4876 to i64*
  %4877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4878 = getelementptr inbounds %struct.GPR, %struct.GPR* %4877, i32 0, i32 15
  %4879 = getelementptr inbounds %struct.Reg, %struct.Reg* %4878, i32 0, i32 0
  %RBP.i592 = bitcast %union.anon* %4879 to i64*
  %4880 = load i64, i64* %RBP.i592
  %4881 = sub i64 %4880, 24
  %4882 = load i64, i64* %PC.i590
  %4883 = add i64 %4882, 4
  store i64 %4883, i64* %PC.i590
  %4884 = inttoptr i64 %4881 to i64*
  %4885 = load i64, i64* %4884
  store i64 %4885, i64* %RCX.i591, align 8
  store %struct.Memory* %loadMem_435c68, %struct.Memory** %MEMORY
  %loadMem_435c6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4887 = getelementptr inbounds %struct.GPR, %struct.GPR* %4886, i32 0, i32 33
  %4888 = getelementptr inbounds %struct.Reg, %struct.Reg* %4887, i32 0, i32 0
  %PC.i588 = bitcast %union.anon* %4888 to i64*
  %4889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4890 = getelementptr inbounds %struct.GPR, %struct.GPR* %4889, i32 0, i32 5
  %4891 = getelementptr inbounds %struct.Reg, %struct.Reg* %4890, i32 0, i32 0
  %RCX.i589 = bitcast %union.anon* %4891 to i64*
  %4892 = load i64, i64* %RCX.i589
  %4893 = add i64 %4892, 136
  %4894 = load i64, i64* %PC.i588
  %4895 = add i64 %4894, 7
  store i64 %4895, i64* %PC.i588
  %4896 = inttoptr i64 %4893 to i32*
  %4897 = load i32, i32* %4896
  %4898 = sext i32 %4897 to i64
  store i64 %4898, i64* %RCX.i589, align 8
  store %struct.Memory* %loadMem_435c6c, %struct.Memory** %MEMORY
  %loadMem_435c73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4900 = getelementptr inbounds %struct.GPR, %struct.GPR* %4899, i32 0, i32 33
  %4901 = getelementptr inbounds %struct.Reg, %struct.Reg* %4900, i32 0, i32 0
  %PC.i584 = bitcast %union.anon* %4901 to i64*
  %4902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4903 = getelementptr inbounds %struct.GPR, %struct.GPR* %4902, i32 0, i32 1
  %4904 = getelementptr inbounds %struct.Reg, %struct.Reg* %4903, i32 0, i32 0
  %RAX.i585 = bitcast %union.anon* %4904 to i64*
  %4905 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4906 = getelementptr inbounds %struct.GPR, %struct.GPR* %4905, i32 0, i32 5
  %4907 = getelementptr inbounds %struct.Reg, %struct.Reg* %4906, i32 0, i32 0
  %RCX.i586 = bitcast %union.anon* %4907 to i64*
  %4908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4909 = getelementptr inbounds %struct.GPR, %struct.GPR* %4908, i32 0, i32 7
  %4910 = getelementptr inbounds %struct.Reg, %struct.Reg* %4909, i32 0, i32 0
  %RDX.i587 = bitcast %union.anon* %4910 to i64*
  %4911 = load i64, i64* %RDX.i587
  %4912 = load i64, i64* %RAX.i585
  %4913 = load i64, i64* %RCX.i586
  %4914 = mul i64 %4913, 4
  %4915 = add i64 %4914, %4912
  %4916 = load i64, i64* %PC.i584
  %4917 = add i64 %4916, 3
  store i64 %4917, i64* %PC.i584
  %4918 = trunc i64 %4911 to i32
  %4919 = inttoptr i64 %4915 to i32*
  %4920 = load i32, i32* %4919
  %4921 = add i32 %4920, %4918
  %4922 = zext i32 %4921 to i64
  store i64 %4922, i64* %RDX.i587, align 8
  %4923 = icmp ult i32 %4921, %4918
  %4924 = icmp ult i32 %4921, %4920
  %4925 = or i1 %4923, %4924
  %4926 = zext i1 %4925 to i8
  %4927 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4926, i8* %4927, align 1
  %4928 = and i32 %4921, 255
  %4929 = call i32 @llvm.ctpop.i32(i32 %4928)
  %4930 = trunc i32 %4929 to i8
  %4931 = and i8 %4930, 1
  %4932 = xor i8 %4931, 1
  %4933 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4932, i8* %4933, align 1
  %4934 = xor i32 %4920, %4918
  %4935 = xor i32 %4934, %4921
  %4936 = lshr i32 %4935, 4
  %4937 = trunc i32 %4936 to i8
  %4938 = and i8 %4937, 1
  %4939 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4938, i8* %4939, align 1
  %4940 = icmp eq i32 %4921, 0
  %4941 = zext i1 %4940 to i8
  %4942 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4941, i8* %4942, align 1
  %4943 = lshr i32 %4921, 31
  %4944 = trunc i32 %4943 to i8
  %4945 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4944, i8* %4945, align 1
  %4946 = lshr i32 %4918, 31
  %4947 = lshr i32 %4920, 31
  %4948 = xor i32 %4943, %4946
  %4949 = xor i32 %4943, %4947
  %4950 = add i32 %4948, %4949
  %4951 = icmp eq i32 %4950, 2
  %4952 = zext i1 %4951 to i8
  %4953 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4952, i8* %4953, align 1
  store %struct.Memory* %loadMem_435c73, %struct.Memory** %MEMORY
  %loadMem_435c76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4955 = getelementptr inbounds %struct.GPR, %struct.GPR* %4954, i32 0, i32 33
  %4956 = getelementptr inbounds %struct.Reg, %struct.Reg* %4955, i32 0, i32 0
  %PC.i581 = bitcast %union.anon* %4956 to i64*
  %4957 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4958 = getelementptr inbounds %struct.GPR, %struct.GPR* %4957, i32 0, i32 1
  %4959 = getelementptr inbounds %struct.Reg, %struct.Reg* %4958, i32 0, i32 0
  %RAX.i582 = bitcast %union.anon* %4959 to i64*
  %4960 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4961 = getelementptr inbounds %struct.GPR, %struct.GPR* %4960, i32 0, i32 15
  %4962 = getelementptr inbounds %struct.Reg, %struct.Reg* %4961, i32 0, i32 0
  %RBP.i583 = bitcast %union.anon* %4962 to i64*
  %4963 = load i64, i64* %RBP.i583
  %4964 = sub i64 %4963, 24
  %4965 = load i64, i64* %PC.i581
  %4966 = add i64 %4965, 4
  store i64 %4966, i64* %PC.i581
  %4967 = inttoptr i64 %4964 to i64*
  %4968 = load i64, i64* %4967
  store i64 %4968, i64* %RAX.i582, align 8
  store %struct.Memory* %loadMem_435c76, %struct.Memory** %MEMORY
  %loadMem_435c7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4969 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4970 = getelementptr inbounds %struct.GPR, %struct.GPR* %4969, i32 0, i32 33
  %4971 = getelementptr inbounds %struct.Reg, %struct.Reg* %4970, i32 0, i32 0
  %PC.i579 = bitcast %union.anon* %4971 to i64*
  %4972 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4973 = getelementptr inbounds %struct.GPR, %struct.GPR* %4972, i32 0, i32 1
  %4974 = getelementptr inbounds %struct.Reg, %struct.Reg* %4973, i32 0, i32 0
  %RAX.i580 = bitcast %union.anon* %4974 to i64*
  %4975 = load i64, i64* %RAX.i580
  %4976 = add i64 %4975, 320
  %4977 = load i64, i64* %PC.i579
  %4978 = add i64 %4977, 7
  store i64 %4978, i64* %PC.i579
  %4979 = inttoptr i64 %4976 to i64*
  %4980 = load i64, i64* %4979
  store i64 %4980, i64* %RAX.i580, align 8
  store %struct.Memory* %loadMem_435c7a, %struct.Memory** %MEMORY
  %loadMem_435c81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4982 = getelementptr inbounds %struct.GPR, %struct.GPR* %4981, i32 0, i32 33
  %4983 = getelementptr inbounds %struct.Reg, %struct.Reg* %4982, i32 0, i32 0
  %PC.i576 = bitcast %union.anon* %4983 to i64*
  %4984 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4985 = getelementptr inbounds %struct.GPR, %struct.GPR* %4984, i32 0, i32 5
  %4986 = getelementptr inbounds %struct.Reg, %struct.Reg* %4985, i32 0, i32 0
  %RCX.i577 = bitcast %union.anon* %4986 to i64*
  %4987 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4988 = getelementptr inbounds %struct.GPR, %struct.GPR* %4987, i32 0, i32 15
  %4989 = getelementptr inbounds %struct.Reg, %struct.Reg* %4988, i32 0, i32 0
  %RBP.i578 = bitcast %union.anon* %4989 to i64*
  %4990 = load i64, i64* %RBP.i578
  %4991 = sub i64 %4990, 8
  %4992 = load i64, i64* %PC.i576
  %4993 = add i64 %4992, 4
  store i64 %4993, i64* %PC.i576
  %4994 = inttoptr i64 %4991 to i64*
  %4995 = load i64, i64* %4994
  store i64 %4995, i64* %RCX.i577, align 8
  store %struct.Memory* %loadMem_435c81, %struct.Memory** %MEMORY
  %loadMem_435c85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4996 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4997 = getelementptr inbounds %struct.GPR, %struct.GPR* %4996, i32 0, i32 33
  %4998 = getelementptr inbounds %struct.Reg, %struct.Reg* %4997, i32 0, i32 0
  %PC.i573 = bitcast %union.anon* %4998 to i64*
  %4999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5000 = getelementptr inbounds %struct.GPR, %struct.GPR* %4999, i32 0, i32 9
  %5001 = getelementptr inbounds %struct.Reg, %struct.Reg* %5000, i32 0, i32 0
  %RSI.i574 = bitcast %union.anon* %5001 to i64*
  %5002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5003 = getelementptr inbounds %struct.GPR, %struct.GPR* %5002, i32 0, i32 15
  %5004 = getelementptr inbounds %struct.Reg, %struct.Reg* %5003, i32 0, i32 0
  %RBP.i575 = bitcast %union.anon* %5004 to i64*
  %5005 = load i64, i64* %RBP.i575
  %5006 = sub i64 %5005, 76
  %5007 = load i64, i64* %PC.i573
  %5008 = add i64 %5007, 4
  store i64 %5008, i64* %PC.i573
  %5009 = inttoptr i64 %5006 to i32*
  %5010 = load i32, i32* %5009
  %5011 = sext i32 %5010 to i64
  store i64 %5011, i64* %RSI.i574, align 8
  store %struct.Memory* %loadMem_435c85, %struct.Memory** %MEMORY
  %loadMem_435c89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5012 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5013 = getelementptr inbounds %struct.GPR, %struct.GPR* %5012, i32 0, i32 33
  %5014 = getelementptr inbounds %struct.Reg, %struct.Reg* %5013, i32 0, i32 0
  %PC.i569 = bitcast %union.anon* %5014 to i64*
  %5015 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5016 = getelementptr inbounds %struct.GPR, %struct.GPR* %5015, i32 0, i32 5
  %5017 = getelementptr inbounds %struct.Reg, %struct.Reg* %5016, i32 0, i32 0
  %RCX.i570 = bitcast %union.anon* %5017 to i64*
  %5018 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5019 = getelementptr inbounds %struct.GPR, %struct.GPR* %5018, i32 0, i32 9
  %5020 = getelementptr inbounds %struct.Reg, %struct.Reg* %5019, i32 0, i32 0
  %RSI.i571 = bitcast %union.anon* %5020 to i64*
  %5021 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5022 = getelementptr inbounds %struct.GPR, %struct.GPR* %5021, i32 0, i32 11
  %5023 = getelementptr inbounds %struct.Reg, %struct.Reg* %5022, i32 0, i32 0
  %RDI.i572 = bitcast %union.anon* %5023 to i64*
  %5024 = load i64, i64* %RCX.i570
  %5025 = load i64, i64* %RSI.i571
  %5026 = add i64 %5025, %5024
  %5027 = load i64, i64* %PC.i569
  %5028 = add i64 %5027, 4
  store i64 %5028, i64* %PC.i569
  %5029 = inttoptr i64 %5026 to i8*
  %5030 = load i8, i8* %5029
  %5031 = sext i8 %5030 to i64
  %5032 = and i64 %5031, 4294967295
  store i64 %5032, i64* %RDI.i572, align 8
  store %struct.Memory* %loadMem_435c89, %struct.Memory** %MEMORY
  %loadMem_435c8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5033 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5034 = getelementptr inbounds %struct.GPR, %struct.GPR* %5033, i32 0, i32 33
  %5035 = getelementptr inbounds %struct.Reg, %struct.Reg* %5034, i32 0, i32 0
  %PC.i567 = bitcast %union.anon* %5035 to i64*
  %5036 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5037 = getelementptr inbounds %struct.GPR, %struct.GPR* %5036, i32 0, i32 11
  %5038 = getelementptr inbounds %struct.Reg, %struct.Reg* %5037, i32 0, i32 0
  %EDI.i = bitcast %union.anon* %5038 to i32*
  %5039 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5040 = getelementptr inbounds %struct.GPR, %struct.GPR* %5039, i32 0, i32 5
  %5041 = getelementptr inbounds %struct.Reg, %struct.Reg* %5040, i32 0, i32 0
  %RCX.i568 = bitcast %union.anon* %5041 to i64*
  %5042 = load i32, i32* %EDI.i
  %5043 = zext i32 %5042 to i64
  %5044 = load i64, i64* %PC.i567
  %5045 = add i64 %5044, 3
  store i64 %5045, i64* %PC.i567
  %5046 = shl i64 %5043, 32
  %5047 = ashr exact i64 %5046, 32
  store i64 %5047, i64* %RCX.i568, align 8
  store %struct.Memory* %loadMem_435c8d, %struct.Memory** %MEMORY
  %loadMem_435c90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5048 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5049 = getelementptr inbounds %struct.GPR, %struct.GPR* %5048, i32 0, i32 33
  %5050 = getelementptr inbounds %struct.Reg, %struct.Reg* %5049, i32 0, i32 0
  %PC.i564 = bitcast %union.anon* %5050 to i64*
  %5051 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5052 = getelementptr inbounds %struct.GPR, %struct.GPR* %5051, i32 0, i32 1
  %5053 = getelementptr inbounds %struct.Reg, %struct.Reg* %5052, i32 0, i32 0
  %RAX.i565 = bitcast %union.anon* %5053 to i64*
  %5054 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5055 = getelementptr inbounds %struct.GPR, %struct.GPR* %5054, i32 0, i32 5
  %5056 = getelementptr inbounds %struct.Reg, %struct.Reg* %5055, i32 0, i32 0
  %RCX.i566 = bitcast %union.anon* %5056 to i64*
  %5057 = load i64, i64* %RAX.i565
  %5058 = load i64, i64* %RCX.i566
  %5059 = mul i64 %5058, 8
  %5060 = add i64 %5059, %5057
  %5061 = load i64, i64* %PC.i564
  %5062 = add i64 %5061, 4
  store i64 %5062, i64* %PC.i564
  %5063 = inttoptr i64 %5060 to i64*
  %5064 = load i64, i64* %5063
  store i64 %5064, i64* %RAX.i565, align 8
  store %struct.Memory* %loadMem_435c90, %struct.Memory** %MEMORY
  %loadMem_435c94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5065 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5066 = getelementptr inbounds %struct.GPR, %struct.GPR* %5065, i32 0, i32 33
  %5067 = getelementptr inbounds %struct.Reg, %struct.Reg* %5066, i32 0, i32 0
  %PC.i561 = bitcast %union.anon* %5067 to i64*
  %5068 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5069 = getelementptr inbounds %struct.GPR, %struct.GPR* %5068, i32 0, i32 5
  %5070 = getelementptr inbounds %struct.Reg, %struct.Reg* %5069, i32 0, i32 0
  %RCX.i562 = bitcast %union.anon* %5070 to i64*
  %5071 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5072 = getelementptr inbounds %struct.GPR, %struct.GPR* %5071, i32 0, i32 15
  %5073 = getelementptr inbounds %struct.Reg, %struct.Reg* %5072, i32 0, i32 0
  %RBP.i563 = bitcast %union.anon* %5073 to i64*
  %5074 = load i64, i64* %RBP.i563
  %5075 = sub i64 %5074, 24
  %5076 = load i64, i64* %PC.i561
  %5077 = add i64 %5076, 4
  store i64 %5077, i64* %PC.i561
  %5078 = inttoptr i64 %5075 to i64*
  %5079 = load i64, i64* %5078
  store i64 %5079, i64* %RCX.i562, align 8
  store %struct.Memory* %loadMem_435c94, %struct.Memory** %MEMORY
  %loadMem_435c98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5081 = getelementptr inbounds %struct.GPR, %struct.GPR* %5080, i32 0, i32 33
  %5082 = getelementptr inbounds %struct.Reg, %struct.Reg* %5081, i32 0, i32 0
  %PC.i559 = bitcast %union.anon* %5082 to i64*
  %5083 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5084 = getelementptr inbounds %struct.GPR, %struct.GPR* %5083, i32 0, i32 5
  %5085 = getelementptr inbounds %struct.Reg, %struct.Reg* %5084, i32 0, i32 0
  %RCX.i560 = bitcast %union.anon* %5085 to i64*
  %5086 = load i64, i64* %RCX.i560
  %5087 = add i64 %5086, 136
  %5088 = load i64, i64* %PC.i559
  %5089 = add i64 %5088, 7
  store i64 %5089, i64* %PC.i559
  %5090 = inttoptr i64 %5087 to i32*
  %5091 = load i32, i32* %5090
  %5092 = sext i32 %5091 to i64
  store i64 %5092, i64* %RCX.i560, align 8
  store %struct.Memory* %loadMem_435c98, %struct.Memory** %MEMORY
  %loadMem_435c9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5094 = getelementptr inbounds %struct.GPR, %struct.GPR* %5093, i32 0, i32 33
  %5095 = getelementptr inbounds %struct.Reg, %struct.Reg* %5094, i32 0, i32 0
  %PC.i555 = bitcast %union.anon* %5095 to i64*
  %5096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5097 = getelementptr inbounds %struct.GPR, %struct.GPR* %5096, i32 0, i32 1
  %5098 = getelementptr inbounds %struct.Reg, %struct.Reg* %5097, i32 0, i32 0
  %RAX.i556 = bitcast %union.anon* %5098 to i64*
  %5099 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5100 = getelementptr inbounds %struct.GPR, %struct.GPR* %5099, i32 0, i32 5
  %5101 = getelementptr inbounds %struct.Reg, %struct.Reg* %5100, i32 0, i32 0
  %RCX.i557 = bitcast %union.anon* %5101 to i64*
  %5102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5103 = getelementptr inbounds %struct.GPR, %struct.GPR* %5102, i32 0, i32 7
  %5104 = getelementptr inbounds %struct.Reg, %struct.Reg* %5103, i32 0, i32 0
  %RDX.i558 = bitcast %union.anon* %5104 to i64*
  %5105 = load i64, i64* %RDX.i558
  %5106 = load i64, i64* %RAX.i556
  %5107 = load i64, i64* %RCX.i557
  %5108 = mul i64 %5107, 4
  %5109 = add i64 %5108, %5106
  %5110 = load i64, i64* %PC.i555
  %5111 = add i64 %5110, 3
  store i64 %5111, i64* %PC.i555
  %5112 = trunc i64 %5105 to i32
  %5113 = inttoptr i64 %5109 to i32*
  %5114 = load i32, i32* %5113
  %5115 = add i32 %5114, %5112
  %5116 = zext i32 %5115 to i64
  store i64 %5116, i64* %RDX.i558, align 8
  %5117 = icmp ult i32 %5115, %5112
  %5118 = icmp ult i32 %5115, %5114
  %5119 = or i1 %5117, %5118
  %5120 = zext i1 %5119 to i8
  %5121 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5120, i8* %5121, align 1
  %5122 = and i32 %5115, 255
  %5123 = call i32 @llvm.ctpop.i32(i32 %5122)
  %5124 = trunc i32 %5123 to i8
  %5125 = and i8 %5124, 1
  %5126 = xor i8 %5125, 1
  %5127 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5126, i8* %5127, align 1
  %5128 = xor i32 %5114, %5112
  %5129 = xor i32 %5128, %5115
  %5130 = lshr i32 %5129, 4
  %5131 = trunc i32 %5130 to i8
  %5132 = and i8 %5131, 1
  %5133 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5132, i8* %5133, align 1
  %5134 = icmp eq i32 %5115, 0
  %5135 = zext i1 %5134 to i8
  %5136 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5135, i8* %5136, align 1
  %5137 = lshr i32 %5115, 31
  %5138 = trunc i32 %5137 to i8
  %5139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5138, i8* %5139, align 1
  %5140 = lshr i32 %5112, 31
  %5141 = lshr i32 %5114, 31
  %5142 = xor i32 %5137, %5140
  %5143 = xor i32 %5137, %5141
  %5144 = add i32 %5142, %5143
  %5145 = icmp eq i32 %5144, 2
  %5146 = zext i1 %5145 to i8
  %5147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5146, i8* %5147, align 1
  store %struct.Memory* %loadMem_435c9f, %struct.Memory** %MEMORY
  %loadMem_435ca2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5149 = getelementptr inbounds %struct.GPR, %struct.GPR* %5148, i32 0, i32 33
  %5150 = getelementptr inbounds %struct.Reg, %struct.Reg* %5149, i32 0, i32 0
  %PC.i552 = bitcast %union.anon* %5150 to i64*
  %5151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5152 = getelementptr inbounds %struct.GPR, %struct.GPR* %5151, i32 0, i32 1
  %5153 = getelementptr inbounds %struct.Reg, %struct.Reg* %5152, i32 0, i32 0
  %RAX.i553 = bitcast %union.anon* %5153 to i64*
  %5154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5155 = getelementptr inbounds %struct.GPR, %struct.GPR* %5154, i32 0, i32 15
  %5156 = getelementptr inbounds %struct.Reg, %struct.Reg* %5155, i32 0, i32 0
  %RBP.i554 = bitcast %union.anon* %5156 to i64*
  %5157 = load i64, i64* %RBP.i554
  %5158 = sub i64 %5157, 56
  %5159 = load i64, i64* %PC.i552
  %5160 = add i64 %5159, 4
  store i64 %5160, i64* %PC.i552
  %5161 = inttoptr i64 %5158 to i64*
  %5162 = load i64, i64* %5161
  store i64 %5162, i64* %RAX.i553, align 8
  store %struct.Memory* %loadMem_435ca2, %struct.Memory** %MEMORY
  %loadMem_435ca6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5164 = getelementptr inbounds %struct.GPR, %struct.GPR* %5163, i32 0, i32 33
  %5165 = getelementptr inbounds %struct.Reg, %struct.Reg* %5164, i32 0, i32 0
  %PC.i549 = bitcast %union.anon* %5165 to i64*
  %5166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5167 = getelementptr inbounds %struct.GPR, %struct.GPR* %5166, i32 0, i32 5
  %5168 = getelementptr inbounds %struct.Reg, %struct.Reg* %5167, i32 0, i32 0
  %RCX.i550 = bitcast %union.anon* %5168 to i64*
  %5169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5170 = getelementptr inbounds %struct.GPR, %struct.GPR* %5169, i32 0, i32 15
  %5171 = getelementptr inbounds %struct.Reg, %struct.Reg* %5170, i32 0, i32 0
  %RBP.i551 = bitcast %union.anon* %5171 to i64*
  %5172 = load i64, i64* %RBP.i551
  %5173 = sub i64 %5172, 76
  %5174 = load i64, i64* %PC.i549
  %5175 = add i64 %5174, 4
  store i64 %5175, i64* %PC.i549
  %5176 = inttoptr i64 %5173 to i32*
  %5177 = load i32, i32* %5176
  %5178 = sext i32 %5177 to i64
  store i64 %5178, i64* %RCX.i550, align 8
  store %struct.Memory* %loadMem_435ca6, %struct.Memory** %MEMORY
  %loadMem_435caa = load %struct.Memory*, %struct.Memory** %MEMORY
  %5179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5180 = getelementptr inbounds %struct.GPR, %struct.GPR* %5179, i32 0, i32 33
  %5181 = getelementptr inbounds %struct.Reg, %struct.Reg* %5180, i32 0, i32 0
  %PC.i546 = bitcast %union.anon* %5181 to i64*
  %5182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5183 = getelementptr inbounds %struct.GPR, %struct.GPR* %5182, i32 0, i32 1
  %5184 = getelementptr inbounds %struct.Reg, %struct.Reg* %5183, i32 0, i32 0
  %RAX.i547 = bitcast %union.anon* %5184 to i64*
  %5185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5186 = getelementptr inbounds %struct.GPR, %struct.GPR* %5185, i32 0, i32 5
  %5187 = getelementptr inbounds %struct.Reg, %struct.Reg* %5186, i32 0, i32 0
  %RCX.i548 = bitcast %union.anon* %5187 to i64*
  %5188 = load i64, i64* %RAX.i547
  %5189 = load i64, i64* %RCX.i548
  %5190 = mul i64 %5189, 8
  %5191 = add i64 %5190, %5188
  %5192 = load i64, i64* %PC.i546
  %5193 = add i64 %5192, 4
  store i64 %5193, i64* %PC.i546
  %5194 = inttoptr i64 %5191 to i64*
  %5195 = load i64, i64* %5194
  store i64 %5195, i64* %RAX.i547, align 8
  store %struct.Memory* %loadMem_435caa, %struct.Memory** %MEMORY
  %loadMem_435cae = load %struct.Memory*, %struct.Memory** %MEMORY
  %5196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5197 = getelementptr inbounds %struct.GPR, %struct.GPR* %5196, i32 0, i32 33
  %5198 = getelementptr inbounds %struct.Reg, %struct.Reg* %5197, i32 0, i32 0
  %PC.i543 = bitcast %union.anon* %5198 to i64*
  %5199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5200 = getelementptr inbounds %struct.GPR, %struct.GPR* %5199, i32 0, i32 5
  %5201 = getelementptr inbounds %struct.Reg, %struct.Reg* %5200, i32 0, i32 0
  %RCX.i544 = bitcast %union.anon* %5201 to i64*
  %5202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5203 = getelementptr inbounds %struct.GPR, %struct.GPR* %5202, i32 0, i32 15
  %5204 = getelementptr inbounds %struct.Reg, %struct.Reg* %5203, i32 0, i32 0
  %RBP.i545 = bitcast %union.anon* %5204 to i64*
  %5205 = load i64, i64* %RBP.i545
  %5206 = sub i64 %5205, 24
  %5207 = load i64, i64* %PC.i543
  %5208 = add i64 %5207, 4
  store i64 %5208, i64* %PC.i543
  %5209 = inttoptr i64 %5206 to i64*
  %5210 = load i64, i64* %5209
  store i64 %5210, i64* %RCX.i544, align 8
  store %struct.Memory* %loadMem_435cae, %struct.Memory** %MEMORY
  %loadMem_435cb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5212 = getelementptr inbounds %struct.GPR, %struct.GPR* %5211, i32 0, i32 33
  %5213 = getelementptr inbounds %struct.Reg, %struct.Reg* %5212, i32 0, i32 0
  %PC.i541 = bitcast %union.anon* %5213 to i64*
  %5214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5215 = getelementptr inbounds %struct.GPR, %struct.GPR* %5214, i32 0, i32 5
  %5216 = getelementptr inbounds %struct.Reg, %struct.Reg* %5215, i32 0, i32 0
  %RCX.i542 = bitcast %union.anon* %5216 to i64*
  %5217 = load i64, i64* %RCX.i542
  %5218 = add i64 %5217, 136
  %5219 = load i64, i64* %PC.i541
  %5220 = add i64 %5219, 7
  store i64 %5220, i64* %PC.i541
  %5221 = inttoptr i64 %5218 to i32*
  %5222 = load i32, i32* %5221
  %5223 = sext i32 %5222 to i64
  store i64 %5223, i64* %RCX.i542, align 8
  store %struct.Memory* %loadMem_435cb2, %struct.Memory** %MEMORY
  %loadMem_435cb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5225 = getelementptr inbounds %struct.GPR, %struct.GPR* %5224, i32 0, i32 33
  %5226 = getelementptr inbounds %struct.Reg, %struct.Reg* %5225, i32 0, i32 0
  %PC.i537 = bitcast %union.anon* %5226 to i64*
  %5227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5228 = getelementptr inbounds %struct.GPR, %struct.GPR* %5227, i32 0, i32 7
  %5229 = getelementptr inbounds %struct.Reg, %struct.Reg* %5228, i32 0, i32 0
  %EDX.i538 = bitcast %union.anon* %5229 to i32*
  %5230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5231 = getelementptr inbounds %struct.GPR, %struct.GPR* %5230, i32 0, i32 1
  %5232 = getelementptr inbounds %struct.Reg, %struct.Reg* %5231, i32 0, i32 0
  %RAX.i539 = bitcast %union.anon* %5232 to i64*
  %5233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5234 = getelementptr inbounds %struct.GPR, %struct.GPR* %5233, i32 0, i32 5
  %5235 = getelementptr inbounds %struct.Reg, %struct.Reg* %5234, i32 0, i32 0
  %RCX.i540 = bitcast %union.anon* %5235 to i64*
  %5236 = load i64, i64* %RAX.i539
  %5237 = load i64, i64* %RCX.i540
  %5238 = mul i64 %5237, 4
  %5239 = add i64 %5238, %5236
  %5240 = load i32, i32* %EDX.i538
  %5241 = zext i32 %5240 to i64
  %5242 = load i64, i64* %PC.i537
  %5243 = add i64 %5242, 3
  store i64 %5243, i64* %PC.i537
  %5244 = inttoptr i64 %5239 to i32*
  store i32 %5240, i32* %5244
  store %struct.Memory* %loadMem_435cb9, %struct.Memory** %MEMORY
  %loadMem_435cbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %5245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5246 = getelementptr inbounds %struct.GPR, %struct.GPR* %5245, i32 0, i32 33
  %5247 = getelementptr inbounds %struct.Reg, %struct.Reg* %5246, i32 0, i32 0
  %PC.i534 = bitcast %union.anon* %5247 to i64*
  %5248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5249 = getelementptr inbounds %struct.GPR, %struct.GPR* %5248, i32 0, i32 1
  %5250 = getelementptr inbounds %struct.Reg, %struct.Reg* %5249, i32 0, i32 0
  %RAX.i535 = bitcast %union.anon* %5250 to i64*
  %5251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5252 = getelementptr inbounds %struct.GPR, %struct.GPR* %5251, i32 0, i32 15
  %5253 = getelementptr inbounds %struct.Reg, %struct.Reg* %5252, i32 0, i32 0
  %RBP.i536 = bitcast %union.anon* %5253 to i64*
  %5254 = load i64, i64* %RBP.i536
  %5255 = sub i64 %5254, 72
  %5256 = load i64, i64* %PC.i534
  %5257 = add i64 %5256, 4
  store i64 %5257, i64* %PC.i534
  %5258 = inttoptr i64 %5255 to i64*
  %5259 = load i64, i64* %5258
  store i64 %5259, i64* %RAX.i535, align 8
  store %struct.Memory* %loadMem_435cbc, %struct.Memory** %MEMORY
  %loadMem_435cc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5261 = getelementptr inbounds %struct.GPR, %struct.GPR* %5260, i32 0, i32 33
  %5262 = getelementptr inbounds %struct.Reg, %struct.Reg* %5261, i32 0, i32 0
  %PC.i531 = bitcast %union.anon* %5262 to i64*
  %5263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5264 = getelementptr inbounds %struct.GPR, %struct.GPR* %5263, i32 0, i32 5
  %5265 = getelementptr inbounds %struct.Reg, %struct.Reg* %5264, i32 0, i32 0
  %RCX.i532 = bitcast %union.anon* %5265 to i64*
  %5266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5267 = getelementptr inbounds %struct.GPR, %struct.GPR* %5266, i32 0, i32 15
  %5268 = getelementptr inbounds %struct.Reg, %struct.Reg* %5267, i32 0, i32 0
  %RBP.i533 = bitcast %union.anon* %5268 to i64*
  %5269 = load i64, i64* %RBP.i533
  %5270 = sub i64 %5269, 76
  %5271 = load i64, i64* %PC.i531
  %5272 = add i64 %5271, 4
  store i64 %5272, i64* %PC.i531
  %5273 = inttoptr i64 %5270 to i32*
  %5274 = load i32, i32* %5273
  %5275 = sext i32 %5274 to i64
  store i64 %5275, i64* %RCX.i532, align 8
  store %struct.Memory* %loadMem_435cc0, %struct.Memory** %MEMORY
  %loadMem_435cc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5277 = getelementptr inbounds %struct.GPR, %struct.GPR* %5276, i32 0, i32 33
  %5278 = getelementptr inbounds %struct.Reg, %struct.Reg* %5277, i32 0, i32 0
  %PC.i528 = bitcast %union.anon* %5278 to i64*
  %5279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5280 = getelementptr inbounds %struct.GPR, %struct.GPR* %5279, i32 0, i32 1
  %5281 = getelementptr inbounds %struct.Reg, %struct.Reg* %5280, i32 0, i32 0
  %RAX.i529 = bitcast %union.anon* %5281 to i64*
  %5282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5283 = getelementptr inbounds %struct.GPR, %struct.GPR* %5282, i32 0, i32 5
  %5284 = getelementptr inbounds %struct.Reg, %struct.Reg* %5283, i32 0, i32 0
  %RCX.i530 = bitcast %union.anon* %5284 to i64*
  %5285 = load i64, i64* %RAX.i529
  %5286 = load i64, i64* %RCX.i530
  %5287 = mul i64 %5286, 8
  %5288 = add i64 %5287, %5285
  %5289 = load i64, i64* %PC.i528
  %5290 = add i64 %5289, 4
  store i64 %5290, i64* %PC.i528
  %5291 = inttoptr i64 %5288 to i64*
  %5292 = load i64, i64* %5291
  store i64 %5292, i64* %RAX.i529, align 8
  store %struct.Memory* %loadMem_435cc4, %struct.Memory** %MEMORY
  %loadMem_435cc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5294 = getelementptr inbounds %struct.GPR, %struct.GPR* %5293, i32 0, i32 33
  %5295 = getelementptr inbounds %struct.Reg, %struct.Reg* %5294, i32 0, i32 0
  %PC.i525 = bitcast %union.anon* %5295 to i64*
  %5296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5297 = getelementptr inbounds %struct.GPR, %struct.GPR* %5296, i32 0, i32 5
  %5298 = getelementptr inbounds %struct.Reg, %struct.Reg* %5297, i32 0, i32 0
  %RCX.i526 = bitcast %union.anon* %5298 to i64*
  %5299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5300 = getelementptr inbounds %struct.GPR, %struct.GPR* %5299, i32 0, i32 15
  %5301 = getelementptr inbounds %struct.Reg, %struct.Reg* %5300, i32 0, i32 0
  %RBP.i527 = bitcast %union.anon* %5301 to i64*
  %5302 = load i64, i64* %RBP.i527
  %5303 = sub i64 %5302, 24
  %5304 = load i64, i64* %PC.i525
  %5305 = add i64 %5304, 4
  store i64 %5305, i64* %PC.i525
  %5306 = inttoptr i64 %5303 to i64*
  %5307 = load i64, i64* %5306
  store i64 %5307, i64* %RCX.i526, align 8
  store %struct.Memory* %loadMem_435cc8, %struct.Memory** %MEMORY
  %loadMem_435ccc = load %struct.Memory*, %struct.Memory** %MEMORY
  %5308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5309 = getelementptr inbounds %struct.GPR, %struct.GPR* %5308, i32 0, i32 33
  %5310 = getelementptr inbounds %struct.Reg, %struct.Reg* %5309, i32 0, i32 0
  %PC.i523 = bitcast %union.anon* %5310 to i64*
  %5311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5312 = getelementptr inbounds %struct.GPR, %struct.GPR* %5311, i32 0, i32 5
  %5313 = getelementptr inbounds %struct.Reg, %struct.Reg* %5312, i32 0, i32 0
  %RCX.i524 = bitcast %union.anon* %5313 to i64*
  %5314 = load i64, i64* %RCX.i524
  %5315 = add i64 %5314, 136
  %5316 = load i64, i64* %PC.i523
  %5317 = add i64 %5316, 7
  store i64 %5317, i64* %PC.i523
  %5318 = inttoptr i64 %5315 to i32*
  %5319 = load i32, i32* %5318
  %5320 = sext i32 %5319 to i64
  store i64 %5320, i64* %RCX.i524, align 8
  store %struct.Memory* %loadMem_435ccc, %struct.Memory** %MEMORY
  %loadMem_435cd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5322 = getelementptr inbounds %struct.GPR, %struct.GPR* %5321, i32 0, i32 33
  %5323 = getelementptr inbounds %struct.Reg, %struct.Reg* %5322, i32 0, i32 0
  %PC.i520 = bitcast %union.anon* %5323 to i64*
  %5324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5325 = getelementptr inbounds %struct.GPR, %struct.GPR* %5324, i32 0, i32 1
  %5326 = getelementptr inbounds %struct.Reg, %struct.Reg* %5325, i32 0, i32 0
  %RAX.i521 = bitcast %union.anon* %5326 to i64*
  %5327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5328 = getelementptr inbounds %struct.GPR, %struct.GPR* %5327, i32 0, i32 5
  %5329 = getelementptr inbounds %struct.Reg, %struct.Reg* %5328, i32 0, i32 0
  %RCX.i522 = bitcast %union.anon* %5329 to i64*
  %5330 = load i64, i64* %RAX.i521
  %5331 = load i64, i64* %RCX.i522
  %5332 = mul i64 %5331, 4
  %5333 = add i64 %5332, %5330
  %5334 = load i64, i64* %PC.i520
  %5335 = add i64 %5334, 7
  store i64 %5335, i64* %PC.i520
  %5336 = inttoptr i64 %5333 to i32*
  store i32 -987654321, i32* %5336
  store %struct.Memory* %loadMem_435cd3, %struct.Memory** %MEMORY
  %loadMem_435cda = load %struct.Memory*, %struct.Memory** %MEMORY
  %5337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5338 = getelementptr inbounds %struct.GPR, %struct.GPR* %5337, i32 0, i32 33
  %5339 = getelementptr inbounds %struct.Reg, %struct.Reg* %5338, i32 0, i32 0
  %PC.i517 = bitcast %union.anon* %5339 to i64*
  %5340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5341 = getelementptr inbounds %struct.GPR, %struct.GPR* %5340, i32 0, i32 1
  %5342 = getelementptr inbounds %struct.Reg, %struct.Reg* %5341, i32 0, i32 0
  %RAX.i518 = bitcast %union.anon* %5342 to i64*
  %5343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5344 = getelementptr inbounds %struct.GPR, %struct.GPR* %5343, i32 0, i32 15
  %5345 = getelementptr inbounds %struct.Reg, %struct.Reg* %5344, i32 0, i32 0
  %RBP.i519 = bitcast %union.anon* %5345 to i64*
  %5346 = load i64, i64* %RBP.i519
  %5347 = sub i64 %5346, 24
  %5348 = load i64, i64* %PC.i517
  %5349 = add i64 %5348, 4
  store i64 %5349, i64* %PC.i517
  %5350 = inttoptr i64 %5347 to i64*
  %5351 = load i64, i64* %5350
  store i64 %5351, i64* %RAX.i518, align 8
  store %struct.Memory* %loadMem_435cda, %struct.Memory** %MEMORY
  %loadMem_435cde = load %struct.Memory*, %struct.Memory** %MEMORY
  %5352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5353 = getelementptr inbounds %struct.GPR, %struct.GPR* %5352, i32 0, i32 33
  %5354 = getelementptr inbounds %struct.Reg, %struct.Reg* %5353, i32 0, i32 0
  %PC.i514 = bitcast %union.anon* %5354 to i64*
  %5355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5356 = getelementptr inbounds %struct.GPR, %struct.GPR* %5355, i32 0, i32 1
  %5357 = getelementptr inbounds %struct.Reg, %struct.Reg* %5356, i32 0, i32 0
  %RAX.i515 = bitcast %union.anon* %5357 to i64*
  %5358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5359 = getelementptr inbounds %struct.GPR, %struct.GPR* %5358, i32 0, i32 7
  %5360 = getelementptr inbounds %struct.Reg, %struct.Reg* %5359, i32 0, i32 0
  %RDX.i516 = bitcast %union.anon* %5360 to i64*
  %5361 = load i64, i64* %RAX.i515
  %5362 = add i64 %5361, 136
  %5363 = load i64, i64* %PC.i514
  %5364 = add i64 %5363, 6
  store i64 %5364, i64* %PC.i514
  %5365 = inttoptr i64 %5362 to i32*
  %5366 = load i32, i32* %5365
  %5367 = zext i32 %5366 to i64
  store i64 %5367, i64* %RDX.i516, align 8
  store %struct.Memory* %loadMem_435cde, %struct.Memory** %MEMORY
  %loadMem_435ce4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5369 = getelementptr inbounds %struct.GPR, %struct.GPR* %5368, i32 0, i32 33
  %5370 = getelementptr inbounds %struct.Reg, %struct.Reg* %5369, i32 0, i32 0
  %PC.i512 = bitcast %union.anon* %5370 to i64*
  %5371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5372 = getelementptr inbounds %struct.GPR, %struct.GPR* %5371, i32 0, i32 7
  %5373 = getelementptr inbounds %struct.Reg, %struct.Reg* %5372, i32 0, i32 0
  %RDX.i513 = bitcast %union.anon* %5373 to i64*
  %5374 = load i64, i64* %RDX.i513
  %5375 = load i64, i64* %PC.i512
  %5376 = add i64 %5375, 3
  store i64 %5376, i64* %PC.i512
  %5377 = trunc i64 %5374 to i32
  %5378 = sub i32 %5377, 1
  %5379 = zext i32 %5378 to i64
  store i64 %5379, i64* %RDX.i513, align 8
  %5380 = icmp ult i32 %5377, 1
  %5381 = zext i1 %5380 to i8
  %5382 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5381, i8* %5382, align 1
  %5383 = and i32 %5378, 255
  %5384 = call i32 @llvm.ctpop.i32(i32 %5383)
  %5385 = trunc i32 %5384 to i8
  %5386 = and i8 %5385, 1
  %5387 = xor i8 %5386, 1
  %5388 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5387, i8* %5388, align 1
  %5389 = xor i64 1, %5374
  %5390 = trunc i64 %5389 to i32
  %5391 = xor i32 %5390, %5378
  %5392 = lshr i32 %5391, 4
  %5393 = trunc i32 %5392 to i8
  %5394 = and i8 %5393, 1
  %5395 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5394, i8* %5395, align 1
  %5396 = icmp eq i32 %5378, 0
  %5397 = zext i1 %5396 to i8
  %5398 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5397, i8* %5398, align 1
  %5399 = lshr i32 %5378, 31
  %5400 = trunc i32 %5399 to i8
  %5401 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5400, i8* %5401, align 1
  %5402 = lshr i32 %5377, 31
  %5403 = xor i32 %5399, %5402
  %5404 = add i32 %5403, %5402
  %5405 = icmp eq i32 %5404, 2
  %5406 = zext i1 %5405 to i8
  %5407 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5406, i8* %5407, align 1
  store %struct.Memory* %loadMem_435ce4, %struct.Memory** %MEMORY
  %loadMem_435ce7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5409 = getelementptr inbounds %struct.GPR, %struct.GPR* %5408, i32 0, i32 33
  %5410 = getelementptr inbounds %struct.Reg, %struct.Reg* %5409, i32 0, i32 0
  %PC.i509 = bitcast %union.anon* %5410 to i64*
  %5411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5412 = getelementptr inbounds %struct.GPR, %struct.GPR* %5411, i32 0, i32 7
  %5413 = getelementptr inbounds %struct.Reg, %struct.Reg* %5412, i32 0, i32 0
  %EDX.i510 = bitcast %union.anon* %5413 to i32*
  %5414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5415 = getelementptr inbounds %struct.GPR, %struct.GPR* %5414, i32 0, i32 15
  %5416 = getelementptr inbounds %struct.Reg, %struct.Reg* %5415, i32 0, i32 0
  %RBP.i511 = bitcast %union.anon* %5416 to i64*
  %5417 = load i64, i64* %RBP.i511
  %5418 = sub i64 %5417, 80
  %5419 = load i32, i32* %EDX.i510
  %5420 = zext i32 %5419 to i64
  %5421 = load i64, i64* %PC.i509
  %5422 = add i64 %5421, 3
  store i64 %5422, i64* %PC.i509
  %5423 = inttoptr i64 %5418 to i32*
  store i32 %5419, i32* %5423
  store %struct.Memory* %loadMem_435ce7, %struct.Memory** %MEMORY
  br label %block_.L_435cea

block_.L_435cea:                                  ; preds = %block_435cf4, %block_435c4e
  %loadMem_435cea = load %struct.Memory*, %struct.Memory** %MEMORY
  %5424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5425 = getelementptr inbounds %struct.GPR, %struct.GPR* %5424, i32 0, i32 33
  %5426 = getelementptr inbounds %struct.Reg, %struct.Reg* %5425, i32 0, i32 0
  %PC.i507 = bitcast %union.anon* %5426 to i64*
  %5427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5428 = getelementptr inbounds %struct.GPR, %struct.GPR* %5427, i32 0, i32 15
  %5429 = getelementptr inbounds %struct.Reg, %struct.Reg* %5428, i32 0, i32 0
  %RBP.i508 = bitcast %union.anon* %5429 to i64*
  %5430 = load i64, i64* %RBP.i508
  %5431 = sub i64 %5430, 80
  %5432 = load i64, i64* %PC.i507
  %5433 = add i64 %5432, 4
  store i64 %5433, i64* %PC.i507
  %5434 = inttoptr i64 %5431 to i32*
  %5435 = load i32, i32* %5434
  %5436 = sub i32 %5435, 1
  %5437 = icmp ult i32 %5435, 1
  %5438 = zext i1 %5437 to i8
  %5439 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5438, i8* %5439, align 1
  %5440 = and i32 %5436, 255
  %5441 = call i32 @llvm.ctpop.i32(i32 %5440)
  %5442 = trunc i32 %5441 to i8
  %5443 = and i8 %5442, 1
  %5444 = xor i8 %5443, 1
  %5445 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5444, i8* %5445, align 1
  %5446 = xor i32 %5435, 1
  %5447 = xor i32 %5446, %5436
  %5448 = lshr i32 %5447, 4
  %5449 = trunc i32 %5448 to i8
  %5450 = and i8 %5449, 1
  %5451 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5450, i8* %5451, align 1
  %5452 = icmp eq i32 %5436, 0
  %5453 = zext i1 %5452 to i8
  %5454 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5453, i8* %5454, align 1
  %5455 = lshr i32 %5436, 31
  %5456 = trunc i32 %5455 to i8
  %5457 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5456, i8* %5457, align 1
  %5458 = lshr i32 %5435, 31
  %5459 = xor i32 %5455, %5458
  %5460 = add i32 %5459, %5458
  %5461 = icmp eq i32 %5460, 2
  %5462 = zext i1 %5461 to i8
  %5463 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5462, i8* %5463, align 1
  store %struct.Memory* %loadMem_435cea, %struct.Memory** %MEMORY
  %loadMem_435cee = load %struct.Memory*, %struct.Memory** %MEMORY
  %5464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5465 = getelementptr inbounds %struct.GPR, %struct.GPR* %5464, i32 0, i32 33
  %5466 = getelementptr inbounds %struct.Reg, %struct.Reg* %5465, i32 0, i32 0
  %PC.i506 = bitcast %union.anon* %5466 to i64*
  %5467 = load i64, i64* %PC.i506
  %5468 = add i64 %5467, 632
  %5469 = load i64, i64* %PC.i506
  %5470 = add i64 %5469, 6
  %5471 = load i64, i64* %PC.i506
  %5472 = add i64 %5471, 6
  store i64 %5472, i64* %PC.i506
  %5473 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5474 = load i8, i8* %5473, align 1
  %5475 = icmp ne i8 %5474, 0
  %5476 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %5477 = load i8, i8* %5476, align 1
  %5478 = icmp ne i8 %5477, 0
  %5479 = xor i1 %5475, %5478
  %5480 = zext i1 %5479 to i8
  store i8 %5480, i8* %BRANCH_TAKEN, align 1
  %5481 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5482 = select i1 %5479, i64 %5468, i64 %5470
  store i64 %5482, i64* %5481, align 8
  store %struct.Memory* %loadMem_435cee, %struct.Memory** %MEMORY
  %loadBr_435cee = load i8, i8* %BRANCH_TAKEN
  %cmpBr_435cee = icmp eq i8 %loadBr_435cee, 1
  br i1 %cmpBr_435cee, label %block_.L_435f66, label %block_435cf4

block_435cf4:                                     ; preds = %block_.L_435cea
  %loadMem_435cf4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5484 = getelementptr inbounds %struct.GPR, %struct.GPR* %5483, i32 0, i32 33
  %5485 = getelementptr inbounds %struct.Reg, %struct.Reg* %5484, i32 0, i32 0
  %PC.i503 = bitcast %union.anon* %5485 to i64*
  %5486 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5487 = getelementptr inbounds %struct.GPR, %struct.GPR* %5486, i32 0, i32 1
  %5488 = getelementptr inbounds %struct.Reg, %struct.Reg* %5487, i32 0, i32 0
  %RAX.i504 = bitcast %union.anon* %5488 to i64*
  %5489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5490 = getelementptr inbounds %struct.GPR, %struct.GPR* %5489, i32 0, i32 15
  %5491 = getelementptr inbounds %struct.Reg, %struct.Reg* %5490, i32 0, i32 0
  %RBP.i505 = bitcast %union.anon* %5491 to i64*
  %5492 = load i64, i64* %RBP.i505
  %5493 = sub i64 %5492, 48
  %5494 = load i64, i64* %PC.i503
  %5495 = add i64 %5494, 4
  store i64 %5495, i64* %PC.i503
  %5496 = inttoptr i64 %5493 to i64*
  %5497 = load i64, i64* %5496
  store i64 %5497, i64* %RAX.i504, align 8
  store %struct.Memory* %loadMem_435cf4, %struct.Memory** %MEMORY
  %loadMem_435cf8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5499 = getelementptr inbounds %struct.GPR, %struct.GPR* %5498, i32 0, i32 33
  %5500 = getelementptr inbounds %struct.Reg, %struct.Reg* %5499, i32 0, i32 0
  %PC.i500 = bitcast %union.anon* %5500 to i64*
  %5501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5502 = getelementptr inbounds %struct.GPR, %struct.GPR* %5501, i32 0, i32 5
  %5503 = getelementptr inbounds %struct.Reg, %struct.Reg* %5502, i32 0, i32 0
  %RCX.i501 = bitcast %union.anon* %5503 to i64*
  %5504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5505 = getelementptr inbounds %struct.GPR, %struct.GPR* %5504, i32 0, i32 15
  %5506 = getelementptr inbounds %struct.Reg, %struct.Reg* %5505, i32 0, i32 0
  %RBP.i502 = bitcast %union.anon* %5506 to i64*
  %5507 = load i64, i64* %RBP.i502
  %5508 = sub i64 %5507, 76
  %5509 = load i64, i64* %PC.i500
  %5510 = add i64 %5509, 4
  store i64 %5510, i64* %PC.i500
  %5511 = inttoptr i64 %5508 to i32*
  %5512 = load i32, i32* %5511
  %5513 = sext i32 %5512 to i64
  store i64 %5513, i64* %RCX.i501, align 8
  store %struct.Memory* %loadMem_435cf8, %struct.Memory** %MEMORY
  %loadMem_435cfc = load %struct.Memory*, %struct.Memory** %MEMORY
  %5514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5515 = getelementptr inbounds %struct.GPR, %struct.GPR* %5514, i32 0, i32 33
  %5516 = getelementptr inbounds %struct.Reg, %struct.Reg* %5515, i32 0, i32 0
  %PC.i497 = bitcast %union.anon* %5516 to i64*
  %5517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5518 = getelementptr inbounds %struct.GPR, %struct.GPR* %5517, i32 0, i32 1
  %5519 = getelementptr inbounds %struct.Reg, %struct.Reg* %5518, i32 0, i32 0
  %RAX.i498 = bitcast %union.anon* %5519 to i64*
  %5520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5521 = getelementptr inbounds %struct.GPR, %struct.GPR* %5520, i32 0, i32 5
  %5522 = getelementptr inbounds %struct.Reg, %struct.Reg* %5521, i32 0, i32 0
  %RCX.i499 = bitcast %union.anon* %5522 to i64*
  %5523 = load i64, i64* %RAX.i498
  %5524 = load i64, i64* %RCX.i499
  %5525 = mul i64 %5524, 8
  %5526 = add i64 %5525, %5523
  %5527 = load i64, i64* %PC.i497
  %5528 = add i64 %5527, 4
  store i64 %5528, i64* %PC.i497
  %5529 = inttoptr i64 %5526 to i64*
  %5530 = load i64, i64* %5529
  store i64 %5530, i64* %RAX.i498, align 8
  store %struct.Memory* %loadMem_435cfc, %struct.Memory** %MEMORY
  %loadMem_435d00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5532 = getelementptr inbounds %struct.GPR, %struct.GPR* %5531, i32 0, i32 33
  %5533 = getelementptr inbounds %struct.Reg, %struct.Reg* %5532, i32 0, i32 0
  %PC.i494 = bitcast %union.anon* %5533 to i64*
  %5534 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5535 = getelementptr inbounds %struct.GPR, %struct.GPR* %5534, i32 0, i32 1
  %5536 = getelementptr inbounds %struct.Reg, %struct.Reg* %5535, i32 0, i32 0
  %RAX.i495 = bitcast %union.anon* %5536 to i64*
  %5537 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5538 = getelementptr inbounds %struct.GPR, %struct.GPR* %5537, i32 0, i32 7
  %5539 = getelementptr inbounds %struct.Reg, %struct.Reg* %5538, i32 0, i32 0
  %RDX.i496 = bitcast %union.anon* %5539 to i64*
  %5540 = load i64, i64* %RAX.i495
  %5541 = add i64 %5540, 4
  %5542 = load i64, i64* %PC.i494
  %5543 = add i64 %5542, 3
  store i64 %5543, i64* %PC.i494
  %5544 = inttoptr i64 %5541 to i32*
  %5545 = load i32, i32* %5544
  %5546 = zext i32 %5545 to i64
  store i64 %5546, i64* %RDX.i496, align 8
  store %struct.Memory* %loadMem_435d00, %struct.Memory** %MEMORY
  %loadMem_435d03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5548 = getelementptr inbounds %struct.GPR, %struct.GPR* %5547, i32 0, i32 33
  %5549 = getelementptr inbounds %struct.Reg, %struct.Reg* %5548, i32 0, i32 0
  %PC.i491 = bitcast %union.anon* %5549 to i64*
  %5550 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5551 = getelementptr inbounds %struct.GPR, %struct.GPR* %5550, i32 0, i32 1
  %5552 = getelementptr inbounds %struct.Reg, %struct.Reg* %5551, i32 0, i32 0
  %RAX.i492 = bitcast %union.anon* %5552 to i64*
  %5553 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5554 = getelementptr inbounds %struct.GPR, %struct.GPR* %5553, i32 0, i32 15
  %5555 = getelementptr inbounds %struct.Reg, %struct.Reg* %5554, i32 0, i32 0
  %RBP.i493 = bitcast %union.anon* %5555 to i64*
  %5556 = load i64, i64* %RBP.i493
  %5557 = sub i64 %5556, 24
  %5558 = load i64, i64* %PC.i491
  %5559 = add i64 %5558, 4
  store i64 %5559, i64* %PC.i491
  %5560 = inttoptr i64 %5557 to i64*
  %5561 = load i64, i64* %5560
  store i64 %5561, i64* %RAX.i492, align 8
  store %struct.Memory* %loadMem_435d03, %struct.Memory** %MEMORY
  %loadMem_435d07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5563 = getelementptr inbounds %struct.GPR, %struct.GPR* %5562, i32 0, i32 33
  %5564 = getelementptr inbounds %struct.Reg, %struct.Reg* %5563, i32 0, i32 0
  %PC.i489 = bitcast %union.anon* %5564 to i64*
  %5565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5566 = getelementptr inbounds %struct.GPR, %struct.GPR* %5565, i32 0, i32 1
  %5567 = getelementptr inbounds %struct.Reg, %struct.Reg* %5566, i32 0, i32 0
  %RAX.i490 = bitcast %union.anon* %5567 to i64*
  %5568 = load i64, i64* %RAX.i490
  %5569 = add i64 %5568, 376
  %5570 = load i64, i64* %PC.i489
  %5571 = add i64 %5570, 7
  store i64 %5571, i64* %PC.i489
  %5572 = inttoptr i64 %5569 to i64*
  %5573 = load i64, i64* %5572
  store i64 %5573, i64* %RAX.i490, align 8
  store %struct.Memory* %loadMem_435d07, %struct.Memory** %MEMORY
  %loadMem_435d0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5575 = getelementptr inbounds %struct.GPR, %struct.GPR* %5574, i32 0, i32 33
  %5576 = getelementptr inbounds %struct.Reg, %struct.Reg* %5575, i32 0, i32 0
  %PC.i486 = bitcast %union.anon* %5576 to i64*
  %5577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5578 = getelementptr inbounds %struct.GPR, %struct.GPR* %5577, i32 0, i32 5
  %5579 = getelementptr inbounds %struct.Reg, %struct.Reg* %5578, i32 0, i32 0
  %RCX.i487 = bitcast %union.anon* %5579 to i64*
  %5580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5581 = getelementptr inbounds %struct.GPR, %struct.GPR* %5580, i32 0, i32 15
  %5582 = getelementptr inbounds %struct.Reg, %struct.Reg* %5581, i32 0, i32 0
  %RBP.i488 = bitcast %union.anon* %5582 to i64*
  %5583 = load i64, i64* %RBP.i488
  %5584 = sub i64 %5583, 80
  %5585 = load i64, i64* %PC.i486
  %5586 = add i64 %5585, 4
  store i64 %5586, i64* %PC.i486
  %5587 = inttoptr i64 %5584 to i32*
  %5588 = load i32, i32* %5587
  %5589 = sext i32 %5588 to i64
  store i64 %5589, i64* %RCX.i487, align 8
  store %struct.Memory* %loadMem_435d0e, %struct.Memory** %MEMORY
  %loadMem_435d12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5591 = getelementptr inbounds %struct.GPR, %struct.GPR* %5590, i32 0, i32 33
  %5592 = getelementptr inbounds %struct.Reg, %struct.Reg* %5591, i32 0, i32 0
  %PC.i482 = bitcast %union.anon* %5592 to i64*
  %5593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5594 = getelementptr inbounds %struct.GPR, %struct.GPR* %5593, i32 0, i32 1
  %5595 = getelementptr inbounds %struct.Reg, %struct.Reg* %5594, i32 0, i32 0
  %RAX.i483 = bitcast %union.anon* %5595 to i64*
  %5596 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5597 = getelementptr inbounds %struct.GPR, %struct.GPR* %5596, i32 0, i32 5
  %5598 = getelementptr inbounds %struct.Reg, %struct.Reg* %5597, i32 0, i32 0
  %RCX.i484 = bitcast %union.anon* %5598 to i64*
  %5599 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5600 = getelementptr inbounds %struct.GPR, %struct.GPR* %5599, i32 0, i32 7
  %5601 = getelementptr inbounds %struct.Reg, %struct.Reg* %5600, i32 0, i32 0
  %RDX.i485 = bitcast %union.anon* %5601 to i64*
  %5602 = load i64, i64* %RDX.i485
  %5603 = load i64, i64* %RAX.i483
  %5604 = load i64, i64* %RCX.i484
  %5605 = mul i64 %5604, 4
  %5606 = add i64 %5605, %5603
  %5607 = load i64, i64* %PC.i482
  %5608 = add i64 %5607, 3
  store i64 %5608, i64* %PC.i482
  %5609 = trunc i64 %5602 to i32
  %5610 = inttoptr i64 %5606 to i32*
  %5611 = load i32, i32* %5610
  %5612 = add i32 %5611, %5609
  %5613 = zext i32 %5612 to i64
  store i64 %5613, i64* %RDX.i485, align 8
  %5614 = icmp ult i32 %5612, %5609
  %5615 = icmp ult i32 %5612, %5611
  %5616 = or i1 %5614, %5615
  %5617 = zext i1 %5616 to i8
  %5618 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5617, i8* %5618, align 1
  %5619 = and i32 %5612, 255
  %5620 = call i32 @llvm.ctpop.i32(i32 %5619)
  %5621 = trunc i32 %5620 to i8
  %5622 = and i8 %5621, 1
  %5623 = xor i8 %5622, 1
  %5624 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5623, i8* %5624, align 1
  %5625 = xor i32 %5611, %5609
  %5626 = xor i32 %5625, %5612
  %5627 = lshr i32 %5626, 4
  %5628 = trunc i32 %5627 to i8
  %5629 = and i8 %5628, 1
  %5630 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5629, i8* %5630, align 1
  %5631 = icmp eq i32 %5612, 0
  %5632 = zext i1 %5631 to i8
  %5633 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5632, i8* %5633, align 1
  %5634 = lshr i32 %5612, 31
  %5635 = trunc i32 %5634 to i8
  %5636 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5635, i8* %5636, align 1
  %5637 = lshr i32 %5609, 31
  %5638 = lshr i32 %5611, 31
  %5639 = xor i32 %5634, %5637
  %5640 = xor i32 %5634, %5638
  %5641 = add i32 %5639, %5640
  %5642 = icmp eq i32 %5641, 2
  %5643 = zext i1 %5642 to i8
  %5644 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5643, i8* %5644, align 1
  store %struct.Memory* %loadMem_435d12, %struct.Memory** %MEMORY
  %loadMem_435d15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5645 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5646 = getelementptr inbounds %struct.GPR, %struct.GPR* %5645, i32 0, i32 33
  %5647 = getelementptr inbounds %struct.Reg, %struct.Reg* %5646, i32 0, i32 0
  %PC.i479 = bitcast %union.anon* %5647 to i64*
  %5648 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5649 = getelementptr inbounds %struct.GPR, %struct.GPR* %5648, i32 0, i32 1
  %5650 = getelementptr inbounds %struct.Reg, %struct.Reg* %5649, i32 0, i32 0
  %RAX.i480 = bitcast %union.anon* %5650 to i64*
  %5651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5652 = getelementptr inbounds %struct.GPR, %struct.GPR* %5651, i32 0, i32 15
  %5653 = getelementptr inbounds %struct.Reg, %struct.Reg* %5652, i32 0, i32 0
  %RBP.i481 = bitcast %union.anon* %5653 to i64*
  %5654 = load i64, i64* %RBP.i481
  %5655 = sub i64 %5654, 56
  %5656 = load i64, i64* %PC.i479
  %5657 = add i64 %5656, 4
  store i64 %5657, i64* %PC.i479
  %5658 = inttoptr i64 %5655 to i64*
  %5659 = load i64, i64* %5658
  store i64 %5659, i64* %RAX.i480, align 8
  store %struct.Memory* %loadMem_435d15, %struct.Memory** %MEMORY
  %loadMem_435d19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5660 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5661 = getelementptr inbounds %struct.GPR, %struct.GPR* %5660, i32 0, i32 33
  %5662 = getelementptr inbounds %struct.Reg, %struct.Reg* %5661, i32 0, i32 0
  %PC.i476 = bitcast %union.anon* %5662 to i64*
  %5663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5664 = getelementptr inbounds %struct.GPR, %struct.GPR* %5663, i32 0, i32 9
  %5665 = getelementptr inbounds %struct.Reg, %struct.Reg* %5664, i32 0, i32 0
  %RSI.i477 = bitcast %union.anon* %5665 to i64*
  %5666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5667 = getelementptr inbounds %struct.GPR, %struct.GPR* %5666, i32 0, i32 15
  %5668 = getelementptr inbounds %struct.Reg, %struct.Reg* %5667, i32 0, i32 0
  %RBP.i478 = bitcast %union.anon* %5668 to i64*
  %5669 = load i64, i64* %RBP.i478
  %5670 = sub i64 %5669, 76
  %5671 = load i64, i64* %PC.i476
  %5672 = add i64 %5671, 3
  store i64 %5672, i64* %PC.i476
  %5673 = inttoptr i64 %5670 to i32*
  %5674 = load i32, i32* %5673
  %5675 = zext i32 %5674 to i64
  store i64 %5675, i64* %RSI.i477, align 8
  store %struct.Memory* %loadMem_435d19, %struct.Memory** %MEMORY
  %loadMem_435d1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5676 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5677 = getelementptr inbounds %struct.GPR, %struct.GPR* %5676, i32 0, i32 33
  %5678 = getelementptr inbounds %struct.Reg, %struct.Reg* %5677, i32 0, i32 0
  %PC.i474 = bitcast %union.anon* %5678 to i64*
  %5679 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5680 = getelementptr inbounds %struct.GPR, %struct.GPR* %5679, i32 0, i32 9
  %5681 = getelementptr inbounds %struct.Reg, %struct.Reg* %5680, i32 0, i32 0
  %RSI.i475 = bitcast %union.anon* %5681 to i64*
  %5682 = load i64, i64* %RSI.i475
  %5683 = load i64, i64* %PC.i474
  %5684 = add i64 %5683, 3
  store i64 %5684, i64* %PC.i474
  %5685 = trunc i64 %5682 to i32
  %5686 = add i32 1, %5685
  %5687 = zext i32 %5686 to i64
  store i64 %5687, i64* %RSI.i475, align 8
  %5688 = icmp ult i32 %5686, %5685
  %5689 = icmp ult i32 %5686, 1
  %5690 = or i1 %5688, %5689
  %5691 = zext i1 %5690 to i8
  %5692 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5691, i8* %5692, align 1
  %5693 = and i32 %5686, 255
  %5694 = call i32 @llvm.ctpop.i32(i32 %5693)
  %5695 = trunc i32 %5694 to i8
  %5696 = and i8 %5695, 1
  %5697 = xor i8 %5696, 1
  %5698 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5697, i8* %5698, align 1
  %5699 = xor i64 1, %5682
  %5700 = trunc i64 %5699 to i32
  %5701 = xor i32 %5700, %5686
  %5702 = lshr i32 %5701, 4
  %5703 = trunc i32 %5702 to i8
  %5704 = and i8 %5703, 1
  %5705 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5704, i8* %5705, align 1
  %5706 = icmp eq i32 %5686, 0
  %5707 = zext i1 %5706 to i8
  %5708 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5707, i8* %5708, align 1
  %5709 = lshr i32 %5686, 31
  %5710 = trunc i32 %5709 to i8
  %5711 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5710, i8* %5711, align 1
  %5712 = lshr i32 %5685, 31
  %5713 = xor i32 %5709, %5712
  %5714 = add i32 %5713, %5709
  %5715 = icmp eq i32 %5714, 2
  %5716 = zext i1 %5715 to i8
  %5717 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5716, i8* %5717, align 1
  store %struct.Memory* %loadMem_435d1c, %struct.Memory** %MEMORY
  %loadMem_435d1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5719 = getelementptr inbounds %struct.GPR, %struct.GPR* %5718, i32 0, i32 33
  %5720 = getelementptr inbounds %struct.Reg, %struct.Reg* %5719, i32 0, i32 0
  %PC.i471 = bitcast %union.anon* %5720 to i64*
  %5721 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5722 = getelementptr inbounds %struct.GPR, %struct.GPR* %5721, i32 0, i32 9
  %5723 = getelementptr inbounds %struct.Reg, %struct.Reg* %5722, i32 0, i32 0
  %ESI.i472 = bitcast %union.anon* %5723 to i32*
  %5724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5725 = getelementptr inbounds %struct.GPR, %struct.GPR* %5724, i32 0, i32 5
  %5726 = getelementptr inbounds %struct.Reg, %struct.Reg* %5725, i32 0, i32 0
  %RCX.i473 = bitcast %union.anon* %5726 to i64*
  %5727 = load i32, i32* %ESI.i472
  %5728 = zext i32 %5727 to i64
  %5729 = load i64, i64* %PC.i471
  %5730 = add i64 %5729, 3
  store i64 %5730, i64* %PC.i471
  %5731 = shl i64 %5728, 32
  %5732 = ashr exact i64 %5731, 32
  store i64 %5732, i64* %RCX.i473, align 8
  store %struct.Memory* %loadMem_435d1f, %struct.Memory** %MEMORY
  %loadMem_435d22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5733 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5734 = getelementptr inbounds %struct.GPR, %struct.GPR* %5733, i32 0, i32 33
  %5735 = getelementptr inbounds %struct.Reg, %struct.Reg* %5734, i32 0, i32 0
  %PC.i468 = bitcast %union.anon* %5735 to i64*
  %5736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5737 = getelementptr inbounds %struct.GPR, %struct.GPR* %5736, i32 0, i32 1
  %5738 = getelementptr inbounds %struct.Reg, %struct.Reg* %5737, i32 0, i32 0
  %RAX.i469 = bitcast %union.anon* %5738 to i64*
  %5739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5740 = getelementptr inbounds %struct.GPR, %struct.GPR* %5739, i32 0, i32 5
  %5741 = getelementptr inbounds %struct.Reg, %struct.Reg* %5740, i32 0, i32 0
  %RCX.i470 = bitcast %union.anon* %5741 to i64*
  %5742 = load i64, i64* %RAX.i469
  %5743 = load i64, i64* %RCX.i470
  %5744 = mul i64 %5743, 8
  %5745 = add i64 %5744, %5742
  %5746 = load i64, i64* %PC.i468
  %5747 = add i64 %5746, 4
  store i64 %5747, i64* %PC.i468
  %5748 = inttoptr i64 %5745 to i64*
  %5749 = load i64, i64* %5748
  store i64 %5749, i64* %RAX.i469, align 8
  store %struct.Memory* %loadMem_435d22, %struct.Memory** %MEMORY
  %loadMem_435d26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5750 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5751 = getelementptr inbounds %struct.GPR, %struct.GPR* %5750, i32 0, i32 33
  %5752 = getelementptr inbounds %struct.Reg, %struct.Reg* %5751, i32 0, i32 0
  %PC.i465 = bitcast %union.anon* %5752 to i64*
  %5753 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5754 = getelementptr inbounds %struct.GPR, %struct.GPR* %5753, i32 0, i32 9
  %5755 = getelementptr inbounds %struct.Reg, %struct.Reg* %5754, i32 0, i32 0
  %RSI.i466 = bitcast %union.anon* %5755 to i64*
  %5756 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5757 = getelementptr inbounds %struct.GPR, %struct.GPR* %5756, i32 0, i32 15
  %5758 = getelementptr inbounds %struct.Reg, %struct.Reg* %5757, i32 0, i32 0
  %RBP.i467 = bitcast %union.anon* %5758 to i64*
  %5759 = load i64, i64* %RBP.i467
  %5760 = sub i64 %5759, 80
  %5761 = load i64, i64* %PC.i465
  %5762 = add i64 %5761, 3
  store i64 %5762, i64* %PC.i465
  %5763 = inttoptr i64 %5760 to i32*
  %5764 = load i32, i32* %5763
  %5765 = zext i32 %5764 to i64
  store i64 %5765, i64* %RSI.i466, align 8
  store %struct.Memory* %loadMem_435d26, %struct.Memory** %MEMORY
  %loadMem_435d29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5766 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5767 = getelementptr inbounds %struct.GPR, %struct.GPR* %5766, i32 0, i32 33
  %5768 = getelementptr inbounds %struct.Reg, %struct.Reg* %5767, i32 0, i32 0
  %PC.i463 = bitcast %union.anon* %5768 to i64*
  %5769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5770 = getelementptr inbounds %struct.GPR, %struct.GPR* %5769, i32 0, i32 9
  %5771 = getelementptr inbounds %struct.Reg, %struct.Reg* %5770, i32 0, i32 0
  %RSI.i464 = bitcast %union.anon* %5771 to i64*
  %5772 = load i64, i64* %RSI.i464
  %5773 = load i64, i64* %PC.i463
  %5774 = add i64 %5773, 3
  store i64 %5774, i64* %PC.i463
  %5775 = trunc i64 %5772 to i32
  %5776 = add i32 1, %5775
  %5777 = zext i32 %5776 to i64
  store i64 %5777, i64* %RSI.i464, align 8
  %5778 = icmp ult i32 %5776, %5775
  %5779 = icmp ult i32 %5776, 1
  %5780 = or i1 %5778, %5779
  %5781 = zext i1 %5780 to i8
  %5782 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5781, i8* %5782, align 1
  %5783 = and i32 %5776, 255
  %5784 = call i32 @llvm.ctpop.i32(i32 %5783)
  %5785 = trunc i32 %5784 to i8
  %5786 = and i8 %5785, 1
  %5787 = xor i8 %5786, 1
  %5788 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5787, i8* %5788, align 1
  %5789 = xor i64 1, %5772
  %5790 = trunc i64 %5789 to i32
  %5791 = xor i32 %5790, %5776
  %5792 = lshr i32 %5791, 4
  %5793 = trunc i32 %5792 to i8
  %5794 = and i8 %5793, 1
  %5795 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5794, i8* %5795, align 1
  %5796 = icmp eq i32 %5776, 0
  %5797 = zext i1 %5796 to i8
  %5798 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5797, i8* %5798, align 1
  %5799 = lshr i32 %5776, 31
  %5800 = trunc i32 %5799 to i8
  %5801 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5800, i8* %5801, align 1
  %5802 = lshr i32 %5775, 31
  %5803 = xor i32 %5799, %5802
  %5804 = add i32 %5803, %5799
  %5805 = icmp eq i32 %5804, 2
  %5806 = zext i1 %5805 to i8
  %5807 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5806, i8* %5807, align 1
  store %struct.Memory* %loadMem_435d29, %struct.Memory** %MEMORY
  %loadMem_435d2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5809 = getelementptr inbounds %struct.GPR, %struct.GPR* %5808, i32 0, i32 33
  %5810 = getelementptr inbounds %struct.Reg, %struct.Reg* %5809, i32 0, i32 0
  %PC.i460 = bitcast %union.anon* %5810 to i64*
  %5811 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5812 = getelementptr inbounds %struct.GPR, %struct.GPR* %5811, i32 0, i32 9
  %5813 = getelementptr inbounds %struct.Reg, %struct.Reg* %5812, i32 0, i32 0
  %ESI.i461 = bitcast %union.anon* %5813 to i32*
  %5814 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5815 = getelementptr inbounds %struct.GPR, %struct.GPR* %5814, i32 0, i32 5
  %5816 = getelementptr inbounds %struct.Reg, %struct.Reg* %5815, i32 0, i32 0
  %RCX.i462 = bitcast %union.anon* %5816 to i64*
  %5817 = load i32, i32* %ESI.i461
  %5818 = zext i32 %5817 to i64
  %5819 = load i64, i64* %PC.i460
  %5820 = add i64 %5819, 3
  store i64 %5820, i64* %PC.i460
  %5821 = shl i64 %5818, 32
  %5822 = ashr exact i64 %5821, 32
  store i64 %5822, i64* %RCX.i462, align 8
  store %struct.Memory* %loadMem_435d2c, %struct.Memory** %MEMORY
  %loadMem_435d2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5824 = getelementptr inbounds %struct.GPR, %struct.GPR* %5823, i32 0, i32 33
  %5825 = getelementptr inbounds %struct.Reg, %struct.Reg* %5824, i32 0, i32 0
  %PC.i456 = bitcast %union.anon* %5825 to i64*
  %5826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5827 = getelementptr inbounds %struct.GPR, %struct.GPR* %5826, i32 0, i32 1
  %5828 = getelementptr inbounds %struct.Reg, %struct.Reg* %5827, i32 0, i32 0
  %RAX.i457 = bitcast %union.anon* %5828 to i64*
  %5829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5830 = getelementptr inbounds %struct.GPR, %struct.GPR* %5829, i32 0, i32 5
  %5831 = getelementptr inbounds %struct.Reg, %struct.Reg* %5830, i32 0, i32 0
  %RCX.i458 = bitcast %union.anon* %5831 to i64*
  %5832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5833 = getelementptr inbounds %struct.GPR, %struct.GPR* %5832, i32 0, i32 9
  %5834 = getelementptr inbounds %struct.Reg, %struct.Reg* %5833, i32 0, i32 0
  %RSI.i459 = bitcast %union.anon* %5834 to i64*
  %5835 = load i64, i64* %RAX.i457
  %5836 = load i64, i64* %RCX.i458
  %5837 = mul i64 %5836, 4
  %5838 = add i64 %5837, %5835
  %5839 = load i64, i64* %PC.i456
  %5840 = add i64 %5839, 3
  store i64 %5840, i64* %PC.i456
  %5841 = inttoptr i64 %5838 to i32*
  %5842 = load i32, i32* %5841
  %5843 = zext i32 %5842 to i64
  store i64 %5843, i64* %RSI.i459, align 8
  store %struct.Memory* %loadMem_435d2f, %struct.Memory** %MEMORY
  %loadMem_435d32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5844 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5845 = getelementptr inbounds %struct.GPR, %struct.GPR* %5844, i32 0, i32 33
  %5846 = getelementptr inbounds %struct.Reg, %struct.Reg* %5845, i32 0, i32 0
  %PC.i453 = bitcast %union.anon* %5846 to i64*
  %5847 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5848 = getelementptr inbounds %struct.GPR, %struct.GPR* %5847, i32 0, i32 1
  %5849 = getelementptr inbounds %struct.Reg, %struct.Reg* %5848, i32 0, i32 0
  %RAX.i454 = bitcast %union.anon* %5849 to i64*
  %5850 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5851 = getelementptr inbounds %struct.GPR, %struct.GPR* %5850, i32 0, i32 15
  %5852 = getelementptr inbounds %struct.Reg, %struct.Reg* %5851, i32 0, i32 0
  %RBP.i455 = bitcast %union.anon* %5852 to i64*
  %5853 = load i64, i64* %RBP.i455
  %5854 = sub i64 %5853, 24
  %5855 = load i64, i64* %PC.i453
  %5856 = add i64 %5855, 4
  store i64 %5856, i64* %PC.i453
  %5857 = inttoptr i64 %5854 to i64*
  %5858 = load i64, i64* %5857
  store i64 %5858, i64* %RAX.i454, align 8
  store %struct.Memory* %loadMem_435d32, %struct.Memory** %MEMORY
  %loadMem_435d36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5859 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5860 = getelementptr inbounds %struct.GPR, %struct.GPR* %5859, i32 0, i32 33
  %5861 = getelementptr inbounds %struct.Reg, %struct.Reg* %5860, i32 0, i32 0
  %PC.i451 = bitcast %union.anon* %5861 to i64*
  %5862 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5863 = getelementptr inbounds %struct.GPR, %struct.GPR* %5862, i32 0, i32 1
  %5864 = getelementptr inbounds %struct.Reg, %struct.Reg* %5863, i32 0, i32 0
  %RAX.i452 = bitcast %union.anon* %5864 to i64*
  %5865 = load i64, i64* %RAX.i452
  %5866 = add i64 %5865, 312
  %5867 = load i64, i64* %PC.i451
  %5868 = add i64 %5867, 7
  store i64 %5868, i64* %PC.i451
  %5869 = inttoptr i64 %5866 to i64*
  %5870 = load i64, i64* %5869
  store i64 %5870, i64* %RAX.i452, align 8
  store %struct.Memory* %loadMem_435d36, %struct.Memory** %MEMORY
  %loadMem_435d3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5872 = getelementptr inbounds %struct.GPR, %struct.GPR* %5871, i32 0, i32 33
  %5873 = getelementptr inbounds %struct.Reg, %struct.Reg* %5872, i32 0, i32 0
  %PC.i449 = bitcast %union.anon* %5873 to i64*
  %5874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5875 = getelementptr inbounds %struct.GPR, %struct.GPR* %5874, i32 0, i32 1
  %5876 = getelementptr inbounds %struct.Reg, %struct.Reg* %5875, i32 0, i32 0
  %RAX.i450 = bitcast %union.anon* %5876 to i64*
  %5877 = load i64, i64* %RAX.i450
  %5878 = load i64, i64* %PC.i449
  %5879 = add i64 %5878, 3
  store i64 %5879, i64* %PC.i449
  %5880 = inttoptr i64 %5877 to i64*
  %5881 = load i64, i64* %5880
  store i64 %5881, i64* %RAX.i450, align 8
  store %struct.Memory* %loadMem_435d3d, %struct.Memory** %MEMORY
  %loadMem_435d40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5882 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5883 = getelementptr inbounds %struct.GPR, %struct.GPR* %5882, i32 0, i32 33
  %5884 = getelementptr inbounds %struct.Reg, %struct.Reg* %5883, i32 0, i32 0
  %PC.i446 = bitcast %union.anon* %5884 to i64*
  %5885 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5886 = getelementptr inbounds %struct.GPR, %struct.GPR* %5885, i32 0, i32 5
  %5887 = getelementptr inbounds %struct.Reg, %struct.Reg* %5886, i32 0, i32 0
  %RCX.i447 = bitcast %union.anon* %5887 to i64*
  %5888 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5889 = getelementptr inbounds %struct.GPR, %struct.GPR* %5888, i32 0, i32 15
  %5890 = getelementptr inbounds %struct.Reg, %struct.Reg* %5889, i32 0, i32 0
  %RBP.i448 = bitcast %union.anon* %5890 to i64*
  %5891 = load i64, i64* %RBP.i448
  %5892 = sub i64 %5891, 80
  %5893 = load i64, i64* %PC.i446
  %5894 = add i64 %5893, 4
  store i64 %5894, i64* %PC.i446
  %5895 = inttoptr i64 %5892 to i32*
  %5896 = load i32, i32* %5895
  %5897 = sext i32 %5896 to i64
  store i64 %5897, i64* %RCX.i447, align 8
  store %struct.Memory* %loadMem_435d40, %struct.Memory** %MEMORY
  %loadMem_435d44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5898 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5899 = getelementptr inbounds %struct.GPR, %struct.GPR* %5898, i32 0, i32 33
  %5900 = getelementptr inbounds %struct.Reg, %struct.Reg* %5899, i32 0, i32 0
  %PC.i442 = bitcast %union.anon* %5900 to i64*
  %5901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5902 = getelementptr inbounds %struct.GPR, %struct.GPR* %5901, i32 0, i32 1
  %5903 = getelementptr inbounds %struct.Reg, %struct.Reg* %5902, i32 0, i32 0
  %RAX.i443 = bitcast %union.anon* %5903 to i64*
  %5904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5905 = getelementptr inbounds %struct.GPR, %struct.GPR* %5904, i32 0, i32 5
  %5906 = getelementptr inbounds %struct.Reg, %struct.Reg* %5905, i32 0, i32 0
  %RCX.i444 = bitcast %union.anon* %5906 to i64*
  %5907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5908 = getelementptr inbounds %struct.GPR, %struct.GPR* %5907, i32 0, i32 9
  %5909 = getelementptr inbounds %struct.Reg, %struct.Reg* %5908, i32 0, i32 0
  %RSI.i445 = bitcast %union.anon* %5909 to i64*
  %5910 = load i64, i64* %RSI.i445
  %5911 = load i64, i64* %RAX.i443
  %5912 = load i64, i64* %RCX.i444
  %5913 = mul i64 %5912, 4
  %5914 = add i64 %5913, %5911
  %5915 = load i64, i64* %PC.i442
  %5916 = add i64 %5915, 3
  store i64 %5916, i64* %PC.i442
  %5917 = trunc i64 %5910 to i32
  %5918 = inttoptr i64 %5914 to i32*
  %5919 = load i32, i32* %5918
  %5920 = add i32 %5919, %5917
  %5921 = zext i32 %5920 to i64
  store i64 %5921, i64* %RSI.i445, align 8
  %5922 = icmp ult i32 %5920, %5917
  %5923 = icmp ult i32 %5920, %5919
  %5924 = or i1 %5922, %5923
  %5925 = zext i1 %5924 to i8
  %5926 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5925, i8* %5926, align 1
  %5927 = and i32 %5920, 255
  %5928 = call i32 @llvm.ctpop.i32(i32 %5927)
  %5929 = trunc i32 %5928 to i8
  %5930 = and i8 %5929, 1
  %5931 = xor i8 %5930, 1
  %5932 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5931, i8* %5932, align 1
  %5933 = xor i32 %5919, %5917
  %5934 = xor i32 %5933, %5920
  %5935 = lshr i32 %5934, 4
  %5936 = trunc i32 %5935 to i8
  %5937 = and i8 %5936, 1
  %5938 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5937, i8* %5938, align 1
  %5939 = icmp eq i32 %5920, 0
  %5940 = zext i1 %5939 to i8
  %5941 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5940, i8* %5941, align 1
  %5942 = lshr i32 %5920, 31
  %5943 = trunc i32 %5942 to i8
  %5944 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5943, i8* %5944, align 1
  %5945 = lshr i32 %5917, 31
  %5946 = lshr i32 %5919, 31
  %5947 = xor i32 %5942, %5945
  %5948 = xor i32 %5942, %5946
  %5949 = add i32 %5947, %5948
  %5950 = icmp eq i32 %5949, 2
  %5951 = zext i1 %5950 to i8
  %5952 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5951, i8* %5952, align 1
  store %struct.Memory* %loadMem_435d44, %struct.Memory** %MEMORY
  %loadMem_435d47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5953 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5954 = getelementptr inbounds %struct.GPR, %struct.GPR* %5953, i32 0, i32 33
  %5955 = getelementptr inbounds %struct.Reg, %struct.Reg* %5954, i32 0, i32 0
  %PC.i439 = bitcast %union.anon* %5955 to i64*
  %5956 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5957 = getelementptr inbounds %struct.GPR, %struct.GPR* %5956, i32 0, i32 7
  %5958 = getelementptr inbounds %struct.Reg, %struct.Reg* %5957, i32 0, i32 0
  %EDX.i440 = bitcast %union.anon* %5958 to i32*
  %5959 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5960 = getelementptr inbounds %struct.GPR, %struct.GPR* %5959, i32 0, i32 11
  %5961 = getelementptr inbounds %struct.Reg, %struct.Reg* %5960, i32 0, i32 0
  %RDI.i441 = bitcast %union.anon* %5961 to i64*
  %5962 = load i32, i32* %EDX.i440
  %5963 = zext i32 %5962 to i64
  %5964 = load i64, i64* %PC.i439
  %5965 = add i64 %5964, 2
  store i64 %5965, i64* %PC.i439
  %5966 = and i64 %5963, 4294967295
  store i64 %5966, i64* %RDI.i441, align 8
  store %struct.Memory* %loadMem_435d47, %struct.Memory** %MEMORY
  %loadMem1_435d49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5967 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5968 = getelementptr inbounds %struct.GPR, %struct.GPR* %5967, i32 0, i32 33
  %5969 = getelementptr inbounds %struct.Reg, %struct.Reg* %5968, i32 0, i32 0
  %PC.i438 = bitcast %union.anon* %5969 to i64*
  %5970 = load i64, i64* %PC.i438
  %5971 = add i64 %5970, -56217
  %5972 = load i64, i64* %PC.i438
  %5973 = add i64 %5972, 5
  %5974 = load i64, i64* %PC.i438
  %5975 = add i64 %5974, 5
  store i64 %5975, i64* %PC.i438
  %5976 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5977 = load i64, i64* %5976, align 8
  %5978 = add i64 %5977, -8
  %5979 = inttoptr i64 %5978 to i64*
  store i64 %5973, i64* %5979
  store i64 %5978, i64* %5976, align 8
  %5980 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5971, i64* %5980, align 8
  store %struct.Memory* %loadMem1_435d49, %struct.Memory** %MEMORY
  %loadMem2_435d49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_435d49 = load i64, i64* %3
  %call2_435d49 = call %struct.Memory* @sub_4281b0.ILogsum(%struct.State* %0, i64 %loadPC_435d49, %struct.Memory* %loadMem2_435d49)
  store %struct.Memory* %call2_435d49, %struct.Memory** %MEMORY
  %loadMem_435d4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5982 = getelementptr inbounds %struct.GPR, %struct.GPR* %5981, i32 0, i32 33
  %5983 = getelementptr inbounds %struct.Reg, %struct.Reg* %5982, i32 0, i32 0
  %PC.i435 = bitcast %union.anon* %5983 to i64*
  %5984 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5985 = getelementptr inbounds %struct.GPR, %struct.GPR* %5984, i32 0, i32 5
  %5986 = getelementptr inbounds %struct.Reg, %struct.Reg* %5985, i32 0, i32 0
  %RCX.i436 = bitcast %union.anon* %5986 to i64*
  %5987 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5988 = getelementptr inbounds %struct.GPR, %struct.GPR* %5987, i32 0, i32 15
  %5989 = getelementptr inbounds %struct.Reg, %struct.Reg* %5988, i32 0, i32 0
  %RBP.i437 = bitcast %union.anon* %5989 to i64*
  %5990 = load i64, i64* %RBP.i437
  %5991 = sub i64 %5990, 64
  %5992 = load i64, i64* %PC.i435
  %5993 = add i64 %5992, 4
  store i64 %5993, i64* %PC.i435
  %5994 = inttoptr i64 %5991 to i64*
  %5995 = load i64, i64* %5994
  store i64 %5995, i64* %RCX.i436, align 8
  store %struct.Memory* %loadMem_435d4e, %struct.Memory** %MEMORY
  %loadMem_435d52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5996 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5997 = getelementptr inbounds %struct.GPR, %struct.GPR* %5996, i32 0, i32 33
  %5998 = getelementptr inbounds %struct.Reg, %struct.Reg* %5997, i32 0, i32 0
  %PC.i432 = bitcast %union.anon* %5998 to i64*
  %5999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6000 = getelementptr inbounds %struct.GPR, %struct.GPR* %5999, i32 0, i32 7
  %6001 = getelementptr inbounds %struct.Reg, %struct.Reg* %6000, i32 0, i32 0
  %RDX.i433 = bitcast %union.anon* %6001 to i64*
  %6002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6003 = getelementptr inbounds %struct.GPR, %struct.GPR* %6002, i32 0, i32 15
  %6004 = getelementptr inbounds %struct.Reg, %struct.Reg* %6003, i32 0, i32 0
  %RBP.i434 = bitcast %union.anon* %6004 to i64*
  %6005 = load i64, i64* %RBP.i434
  %6006 = sub i64 %6005, 76
  %6007 = load i64, i64* %PC.i432
  %6008 = add i64 %6007, 3
  store i64 %6008, i64* %PC.i432
  %6009 = inttoptr i64 %6006 to i32*
  %6010 = load i32, i32* %6009
  %6011 = zext i32 %6010 to i64
  store i64 %6011, i64* %RDX.i433, align 8
  store %struct.Memory* %loadMem_435d52, %struct.Memory** %MEMORY
  %loadMem_435d55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6012 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6013 = getelementptr inbounds %struct.GPR, %struct.GPR* %6012, i32 0, i32 33
  %6014 = getelementptr inbounds %struct.Reg, %struct.Reg* %6013, i32 0, i32 0
  %PC.i430 = bitcast %union.anon* %6014 to i64*
  %6015 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6016 = getelementptr inbounds %struct.GPR, %struct.GPR* %6015, i32 0, i32 7
  %6017 = getelementptr inbounds %struct.Reg, %struct.Reg* %6016, i32 0, i32 0
  %RDX.i431 = bitcast %union.anon* %6017 to i64*
  %6018 = load i64, i64* %RDX.i431
  %6019 = load i64, i64* %PC.i430
  %6020 = add i64 %6019, 3
  store i64 %6020, i64* %PC.i430
  %6021 = trunc i64 %6018 to i32
  %6022 = add i32 1, %6021
  %6023 = zext i32 %6022 to i64
  store i64 %6023, i64* %RDX.i431, align 8
  %6024 = icmp ult i32 %6022, %6021
  %6025 = icmp ult i32 %6022, 1
  %6026 = or i1 %6024, %6025
  %6027 = zext i1 %6026 to i8
  %6028 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6027, i8* %6028, align 1
  %6029 = and i32 %6022, 255
  %6030 = call i32 @llvm.ctpop.i32(i32 %6029)
  %6031 = trunc i32 %6030 to i8
  %6032 = and i8 %6031, 1
  %6033 = xor i8 %6032, 1
  %6034 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6033, i8* %6034, align 1
  %6035 = xor i64 1, %6018
  %6036 = trunc i64 %6035 to i32
  %6037 = xor i32 %6036, %6022
  %6038 = lshr i32 %6037, 4
  %6039 = trunc i32 %6038 to i8
  %6040 = and i8 %6039, 1
  %6041 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6040, i8* %6041, align 1
  %6042 = icmp eq i32 %6022, 0
  %6043 = zext i1 %6042 to i8
  %6044 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6043, i8* %6044, align 1
  %6045 = lshr i32 %6022, 31
  %6046 = trunc i32 %6045 to i8
  %6047 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6046, i8* %6047, align 1
  %6048 = lshr i32 %6021, 31
  %6049 = xor i32 %6045, %6048
  %6050 = add i32 %6049, %6045
  %6051 = icmp eq i32 %6050, 2
  %6052 = zext i1 %6051 to i8
  %6053 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6052, i8* %6053, align 1
  store %struct.Memory* %loadMem_435d55, %struct.Memory** %MEMORY
  %loadMem_435d58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6054 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6055 = getelementptr inbounds %struct.GPR, %struct.GPR* %6054, i32 0, i32 33
  %6056 = getelementptr inbounds %struct.Reg, %struct.Reg* %6055, i32 0, i32 0
  %PC.i427 = bitcast %union.anon* %6056 to i64*
  %6057 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6058 = getelementptr inbounds %struct.GPR, %struct.GPR* %6057, i32 0, i32 7
  %6059 = getelementptr inbounds %struct.Reg, %struct.Reg* %6058, i32 0, i32 0
  %EDX.i428 = bitcast %union.anon* %6059 to i32*
  %6060 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6061 = getelementptr inbounds %struct.GPR, %struct.GPR* %6060, i32 0, i32 17
  %6062 = getelementptr inbounds %struct.Reg, %struct.Reg* %6061, i32 0, i32 0
  %R8.i429 = bitcast %union.anon* %6062 to i64*
  %6063 = load i32, i32* %EDX.i428
  %6064 = zext i32 %6063 to i64
  %6065 = load i64, i64* %PC.i427
  %6066 = add i64 %6065, 3
  store i64 %6066, i64* %PC.i427
  %6067 = shl i64 %6064, 32
  %6068 = ashr exact i64 %6067, 32
  store i64 %6068, i64* %R8.i429, align 8
  store %struct.Memory* %loadMem_435d58, %struct.Memory** %MEMORY
  %loadMem_435d5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6069 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6070 = getelementptr inbounds %struct.GPR, %struct.GPR* %6069, i32 0, i32 33
  %6071 = getelementptr inbounds %struct.Reg, %struct.Reg* %6070, i32 0, i32 0
  %PC.i424 = bitcast %union.anon* %6071 to i64*
  %6072 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6073 = getelementptr inbounds %struct.GPR, %struct.GPR* %6072, i32 0, i32 5
  %6074 = getelementptr inbounds %struct.Reg, %struct.Reg* %6073, i32 0, i32 0
  %RCX.i425 = bitcast %union.anon* %6074 to i64*
  %6075 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6076 = getelementptr inbounds %struct.GPR, %struct.GPR* %6075, i32 0, i32 17
  %6077 = getelementptr inbounds %struct.Reg, %struct.Reg* %6076, i32 0, i32 0
  %R8.i426 = bitcast %union.anon* %6077 to i64*
  %6078 = load i64, i64* %RCX.i425
  %6079 = load i64, i64* %R8.i426
  %6080 = mul i64 %6079, 8
  %6081 = add i64 %6080, %6078
  %6082 = load i64, i64* %PC.i424
  %6083 = add i64 %6082, 4
  store i64 %6083, i64* %PC.i424
  %6084 = inttoptr i64 %6081 to i64*
  %6085 = load i64, i64* %6084
  store i64 %6085, i64* %RCX.i425, align 8
  store %struct.Memory* %loadMem_435d5b, %struct.Memory** %MEMORY
  %loadMem_435d5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %6086 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6087 = getelementptr inbounds %struct.GPR, %struct.GPR* %6086, i32 0, i32 33
  %6088 = getelementptr inbounds %struct.Reg, %struct.Reg* %6087, i32 0, i32 0
  %PC.i421 = bitcast %union.anon* %6088 to i64*
  %6089 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6090 = getelementptr inbounds %struct.GPR, %struct.GPR* %6089, i32 0, i32 15
  %6091 = getelementptr inbounds %struct.Reg, %struct.Reg* %6090, i32 0, i32 0
  %RBP.i422 = bitcast %union.anon* %6091 to i64*
  %6092 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6093 = getelementptr inbounds %struct.GPR, %struct.GPR* %6092, i32 0, i32 17
  %6094 = getelementptr inbounds %struct.Reg, %struct.Reg* %6093, i32 0, i32 0
  %R8.i423 = bitcast %union.anon* %6094 to i64*
  %6095 = load i64, i64* %RBP.i422
  %6096 = sub i64 %6095, 80
  %6097 = load i64, i64* %PC.i421
  %6098 = add i64 %6097, 4
  store i64 %6098, i64* %PC.i421
  %6099 = inttoptr i64 %6096 to i32*
  %6100 = load i32, i32* %6099
  %6101 = sext i32 %6100 to i64
  store i64 %6101, i64* %R8.i423, align 8
  store %struct.Memory* %loadMem_435d5f, %struct.Memory** %MEMORY
  %loadMem_435d63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6103 = getelementptr inbounds %struct.GPR, %struct.GPR* %6102, i32 0, i32 33
  %6104 = getelementptr inbounds %struct.Reg, %struct.Reg* %6103, i32 0, i32 0
  %PC.i417 = bitcast %union.anon* %6104 to i64*
  %6105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6106 = getelementptr inbounds %struct.GPR, %struct.GPR* %6105, i32 0, i32 5
  %6107 = getelementptr inbounds %struct.Reg, %struct.Reg* %6106, i32 0, i32 0
  %RCX.i418 = bitcast %union.anon* %6107 to i64*
  %6108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6109 = getelementptr inbounds %struct.GPR, %struct.GPR* %6108, i32 0, i32 7
  %6110 = getelementptr inbounds %struct.Reg, %struct.Reg* %6109, i32 0, i32 0
  %RDX.i419 = bitcast %union.anon* %6110 to i64*
  %6111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6112 = getelementptr inbounds %struct.GPR, %struct.GPR* %6111, i32 0, i32 17
  %6113 = getelementptr inbounds %struct.Reg, %struct.Reg* %6112, i32 0, i32 0
  %R8.i420 = bitcast %union.anon* %6113 to i64*
  %6114 = load i64, i64* %RCX.i418
  %6115 = load i64, i64* %R8.i420
  %6116 = mul i64 %6115, 4
  %6117 = add i64 %6116, %6114
  %6118 = load i64, i64* %PC.i417
  %6119 = add i64 %6118, 4
  store i64 %6119, i64* %PC.i417
  %6120 = inttoptr i64 %6117 to i32*
  %6121 = load i32, i32* %6120
  %6122 = zext i32 %6121 to i64
  store i64 %6122, i64* %RDX.i419, align 8
  store %struct.Memory* %loadMem_435d63, %struct.Memory** %MEMORY
  %loadMem_435d67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6124 = getelementptr inbounds %struct.GPR, %struct.GPR* %6123, i32 0, i32 33
  %6125 = getelementptr inbounds %struct.Reg, %struct.Reg* %6124, i32 0, i32 0
  %PC.i414 = bitcast %union.anon* %6125 to i64*
  %6126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6127 = getelementptr inbounds %struct.GPR, %struct.GPR* %6126, i32 0, i32 5
  %6128 = getelementptr inbounds %struct.Reg, %struct.Reg* %6127, i32 0, i32 0
  %RCX.i415 = bitcast %union.anon* %6128 to i64*
  %6129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6130 = getelementptr inbounds %struct.GPR, %struct.GPR* %6129, i32 0, i32 15
  %6131 = getelementptr inbounds %struct.Reg, %struct.Reg* %6130, i32 0, i32 0
  %RBP.i416 = bitcast %union.anon* %6131 to i64*
  %6132 = load i64, i64* %RBP.i416
  %6133 = sub i64 %6132, 24
  %6134 = load i64, i64* %PC.i414
  %6135 = add i64 %6134, 4
  store i64 %6135, i64* %PC.i414
  %6136 = inttoptr i64 %6133 to i64*
  %6137 = load i64, i64* %6136
  store i64 %6137, i64* %RCX.i415, align 8
  store %struct.Memory* %loadMem_435d67, %struct.Memory** %MEMORY
  %loadMem_435d6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6139 = getelementptr inbounds %struct.GPR, %struct.GPR* %6138, i32 0, i32 33
  %6140 = getelementptr inbounds %struct.Reg, %struct.Reg* %6139, i32 0, i32 0
  %PC.i412 = bitcast %union.anon* %6140 to i64*
  %6141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6142 = getelementptr inbounds %struct.GPR, %struct.GPR* %6141, i32 0, i32 5
  %6143 = getelementptr inbounds %struct.Reg, %struct.Reg* %6142, i32 0, i32 0
  %RCX.i413 = bitcast %union.anon* %6143 to i64*
  %6144 = load i64, i64* %RCX.i413
  %6145 = add i64 %6144, 312
  %6146 = load i64, i64* %PC.i412
  %6147 = add i64 %6146, 7
  store i64 %6147, i64* %PC.i412
  %6148 = inttoptr i64 %6145 to i64*
  %6149 = load i64, i64* %6148
  store i64 %6149, i64* %RCX.i413, align 8
  store %struct.Memory* %loadMem_435d6b, %struct.Memory** %MEMORY
  %loadMem_435d72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6151 = getelementptr inbounds %struct.GPR, %struct.GPR* %6150, i32 0, i32 33
  %6152 = getelementptr inbounds %struct.Reg, %struct.Reg* %6151, i32 0, i32 0
  %PC.i410 = bitcast %union.anon* %6152 to i64*
  %6153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6154 = getelementptr inbounds %struct.GPR, %struct.GPR* %6153, i32 0, i32 5
  %6155 = getelementptr inbounds %struct.Reg, %struct.Reg* %6154, i32 0, i32 0
  %RCX.i411 = bitcast %union.anon* %6155 to i64*
  %6156 = load i64, i64* %RCX.i411
  %6157 = add i64 %6156, 8
  %6158 = load i64, i64* %PC.i410
  %6159 = add i64 %6158, 4
  store i64 %6159, i64* %PC.i410
  %6160 = inttoptr i64 %6157 to i64*
  %6161 = load i64, i64* %6160
  store i64 %6161, i64* %RCX.i411, align 8
  store %struct.Memory* %loadMem_435d72, %struct.Memory** %MEMORY
  %loadMem_435d76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6163 = getelementptr inbounds %struct.GPR, %struct.GPR* %6162, i32 0, i32 33
  %6164 = getelementptr inbounds %struct.Reg, %struct.Reg* %6163, i32 0, i32 0
  %PC.i407 = bitcast %union.anon* %6164 to i64*
  %6165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6166 = getelementptr inbounds %struct.GPR, %struct.GPR* %6165, i32 0, i32 15
  %6167 = getelementptr inbounds %struct.Reg, %struct.Reg* %6166, i32 0, i32 0
  %RBP.i408 = bitcast %union.anon* %6167 to i64*
  %6168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6169 = getelementptr inbounds %struct.GPR, %struct.GPR* %6168, i32 0, i32 17
  %6170 = getelementptr inbounds %struct.Reg, %struct.Reg* %6169, i32 0, i32 0
  %R8.i409 = bitcast %union.anon* %6170 to i64*
  %6171 = load i64, i64* %RBP.i408
  %6172 = sub i64 %6171, 80
  %6173 = load i64, i64* %PC.i407
  %6174 = add i64 %6173, 4
  store i64 %6174, i64* %PC.i407
  %6175 = inttoptr i64 %6172 to i32*
  %6176 = load i32, i32* %6175
  %6177 = sext i32 %6176 to i64
  store i64 %6177, i64* %R8.i409, align 8
  store %struct.Memory* %loadMem_435d76, %struct.Memory** %MEMORY
  %loadMem_435d7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %6178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6179 = getelementptr inbounds %struct.GPR, %struct.GPR* %6178, i32 0, i32 33
  %6180 = getelementptr inbounds %struct.Reg, %struct.Reg* %6179, i32 0, i32 0
  %PC.i403 = bitcast %union.anon* %6180 to i64*
  %6181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6182 = getelementptr inbounds %struct.GPR, %struct.GPR* %6181, i32 0, i32 5
  %6183 = getelementptr inbounds %struct.Reg, %struct.Reg* %6182, i32 0, i32 0
  %RCX.i404 = bitcast %union.anon* %6183 to i64*
  %6184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6185 = getelementptr inbounds %struct.GPR, %struct.GPR* %6184, i32 0, i32 7
  %6186 = getelementptr inbounds %struct.Reg, %struct.Reg* %6185, i32 0, i32 0
  %RDX.i405 = bitcast %union.anon* %6186 to i64*
  %6187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6188 = getelementptr inbounds %struct.GPR, %struct.GPR* %6187, i32 0, i32 17
  %6189 = getelementptr inbounds %struct.Reg, %struct.Reg* %6188, i32 0, i32 0
  %R8.i406 = bitcast %union.anon* %6189 to i64*
  %6190 = load i64, i64* %RDX.i405
  %6191 = load i64, i64* %RCX.i404
  %6192 = load i64, i64* %R8.i406
  %6193 = mul i64 %6192, 4
  %6194 = add i64 %6193, %6191
  %6195 = load i64, i64* %PC.i403
  %6196 = add i64 %6195, 4
  store i64 %6196, i64* %PC.i403
  %6197 = trunc i64 %6190 to i32
  %6198 = inttoptr i64 %6194 to i32*
  %6199 = load i32, i32* %6198
  %6200 = add i32 %6199, %6197
  %6201 = zext i32 %6200 to i64
  store i64 %6201, i64* %RDX.i405, align 8
  %6202 = icmp ult i32 %6200, %6197
  %6203 = icmp ult i32 %6200, %6199
  %6204 = or i1 %6202, %6203
  %6205 = zext i1 %6204 to i8
  %6206 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6205, i8* %6206, align 1
  %6207 = and i32 %6200, 255
  %6208 = call i32 @llvm.ctpop.i32(i32 %6207)
  %6209 = trunc i32 %6208 to i8
  %6210 = and i8 %6209, 1
  %6211 = xor i8 %6210, 1
  %6212 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6211, i8* %6212, align 1
  %6213 = xor i32 %6199, %6197
  %6214 = xor i32 %6213, %6200
  %6215 = lshr i32 %6214, 4
  %6216 = trunc i32 %6215 to i8
  %6217 = and i8 %6216, 1
  %6218 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6217, i8* %6218, align 1
  %6219 = icmp eq i32 %6200, 0
  %6220 = zext i1 %6219 to i8
  %6221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6220, i8* %6221, align 1
  %6222 = lshr i32 %6200, 31
  %6223 = trunc i32 %6222 to i8
  %6224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6223, i8* %6224, align 1
  %6225 = lshr i32 %6197, 31
  %6226 = lshr i32 %6199, 31
  %6227 = xor i32 %6222, %6225
  %6228 = xor i32 %6222, %6226
  %6229 = add i32 %6227, %6228
  %6230 = icmp eq i32 %6229, 2
  %6231 = zext i1 %6230 to i8
  %6232 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6231, i8* %6232, align 1
  store %struct.Memory* %loadMem_435d7a, %struct.Memory** %MEMORY
  %loadMem_435d7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6234 = getelementptr inbounds %struct.GPR, %struct.GPR* %6233, i32 0, i32 33
  %6235 = getelementptr inbounds %struct.Reg, %struct.Reg* %6234, i32 0, i32 0
  %PC.i400 = bitcast %union.anon* %6235 to i64*
  %6236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6237 = getelementptr inbounds %struct.GPR, %struct.GPR* %6236, i32 0, i32 5
  %6238 = getelementptr inbounds %struct.Reg, %struct.Reg* %6237, i32 0, i32 0
  %RCX.i401 = bitcast %union.anon* %6238 to i64*
  %6239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6240 = getelementptr inbounds %struct.GPR, %struct.GPR* %6239, i32 0, i32 15
  %6241 = getelementptr inbounds %struct.Reg, %struct.Reg* %6240, i32 0, i32 0
  %RBP.i402 = bitcast %union.anon* %6241 to i64*
  %6242 = load i64, i64* %RBP.i402
  %6243 = sub i64 %6242, 72
  %6244 = load i64, i64* %PC.i400
  %6245 = add i64 %6244, 4
  store i64 %6245, i64* %PC.i400
  %6246 = inttoptr i64 %6243 to i64*
  %6247 = load i64, i64* %6246
  store i64 %6247, i64* %RCX.i401, align 8
  store %struct.Memory* %loadMem_435d7e, %struct.Memory** %MEMORY
  %loadMem_435d82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6249 = getelementptr inbounds %struct.GPR, %struct.GPR* %6248, i32 0, i32 33
  %6250 = getelementptr inbounds %struct.Reg, %struct.Reg* %6249, i32 0, i32 0
  %PC.i397 = bitcast %union.anon* %6250 to i64*
  %6251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6252 = getelementptr inbounds %struct.GPR, %struct.GPR* %6251, i32 0, i32 15
  %6253 = getelementptr inbounds %struct.Reg, %struct.Reg* %6252, i32 0, i32 0
  %RBP.i398 = bitcast %union.anon* %6253 to i64*
  %6254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6255 = getelementptr inbounds %struct.GPR, %struct.GPR* %6254, i32 0, i32 17
  %6256 = getelementptr inbounds %struct.Reg, %struct.Reg* %6255, i32 0, i32 0
  %R8.i399 = bitcast %union.anon* %6256 to i64*
  %6257 = load i64, i64* %RBP.i398
  %6258 = sub i64 %6257, 76
  %6259 = load i64, i64* %PC.i397
  %6260 = add i64 %6259, 4
  store i64 %6260, i64* %PC.i397
  %6261 = inttoptr i64 %6258 to i32*
  %6262 = load i32, i32* %6261
  %6263 = sext i32 %6262 to i64
  store i64 %6263, i64* %R8.i399, align 8
  store %struct.Memory* %loadMem_435d82, %struct.Memory** %MEMORY
  %loadMem_435d86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6265 = getelementptr inbounds %struct.GPR, %struct.GPR* %6264, i32 0, i32 33
  %6266 = getelementptr inbounds %struct.Reg, %struct.Reg* %6265, i32 0, i32 0
  %PC.i394 = bitcast %union.anon* %6266 to i64*
  %6267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6268 = getelementptr inbounds %struct.GPR, %struct.GPR* %6267, i32 0, i32 5
  %6269 = getelementptr inbounds %struct.Reg, %struct.Reg* %6268, i32 0, i32 0
  %RCX.i395 = bitcast %union.anon* %6269 to i64*
  %6270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6271 = getelementptr inbounds %struct.GPR, %struct.GPR* %6270, i32 0, i32 17
  %6272 = getelementptr inbounds %struct.Reg, %struct.Reg* %6271, i32 0, i32 0
  %R8.i396 = bitcast %union.anon* %6272 to i64*
  %6273 = load i64, i64* %RCX.i395
  %6274 = load i64, i64* %R8.i396
  %6275 = mul i64 %6274, 8
  %6276 = add i64 %6275, %6273
  %6277 = load i64, i64* %PC.i394
  %6278 = add i64 %6277, 4
  store i64 %6278, i64* %PC.i394
  %6279 = inttoptr i64 %6276 to i64*
  %6280 = load i64, i64* %6279
  store i64 %6280, i64* %RCX.i395, align 8
  store %struct.Memory* %loadMem_435d86, %struct.Memory** %MEMORY
  %loadMem_435d8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %6281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6282 = getelementptr inbounds %struct.GPR, %struct.GPR* %6281, i32 0, i32 33
  %6283 = getelementptr inbounds %struct.Reg, %struct.Reg* %6282, i32 0, i32 0
  %PC.i391 = bitcast %union.anon* %6283 to i64*
  %6284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6285 = getelementptr inbounds %struct.GPR, %struct.GPR* %6284, i32 0, i32 9
  %6286 = getelementptr inbounds %struct.Reg, %struct.Reg* %6285, i32 0, i32 0
  %RSI.i392 = bitcast %union.anon* %6286 to i64*
  %6287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6288 = getelementptr inbounds %struct.GPR, %struct.GPR* %6287, i32 0, i32 15
  %6289 = getelementptr inbounds %struct.Reg, %struct.Reg* %6288, i32 0, i32 0
  %RBP.i393 = bitcast %union.anon* %6289 to i64*
  %6290 = load i64, i64* %RBP.i393
  %6291 = sub i64 %6290, 80
  %6292 = load i64, i64* %PC.i391
  %6293 = add i64 %6292, 3
  store i64 %6293, i64* %PC.i391
  %6294 = inttoptr i64 %6291 to i32*
  %6295 = load i32, i32* %6294
  %6296 = zext i32 %6295 to i64
  store i64 %6296, i64* %RSI.i392, align 8
  store %struct.Memory* %loadMem_435d8a, %struct.Memory** %MEMORY
  %loadMem_435d8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %6297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6298 = getelementptr inbounds %struct.GPR, %struct.GPR* %6297, i32 0, i32 33
  %6299 = getelementptr inbounds %struct.Reg, %struct.Reg* %6298, i32 0, i32 0
  %PC.i389 = bitcast %union.anon* %6299 to i64*
  %6300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6301 = getelementptr inbounds %struct.GPR, %struct.GPR* %6300, i32 0, i32 9
  %6302 = getelementptr inbounds %struct.Reg, %struct.Reg* %6301, i32 0, i32 0
  %RSI.i390 = bitcast %union.anon* %6302 to i64*
  %6303 = load i64, i64* %RSI.i390
  %6304 = load i64, i64* %PC.i389
  %6305 = add i64 %6304, 3
  store i64 %6305, i64* %PC.i389
  %6306 = trunc i64 %6303 to i32
  %6307 = add i32 1, %6306
  %6308 = zext i32 %6307 to i64
  store i64 %6308, i64* %RSI.i390, align 8
  %6309 = icmp ult i32 %6307, %6306
  %6310 = icmp ult i32 %6307, 1
  %6311 = or i1 %6309, %6310
  %6312 = zext i1 %6311 to i8
  %6313 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6312, i8* %6313, align 1
  %6314 = and i32 %6307, 255
  %6315 = call i32 @llvm.ctpop.i32(i32 %6314)
  %6316 = trunc i32 %6315 to i8
  %6317 = and i8 %6316, 1
  %6318 = xor i8 %6317, 1
  %6319 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6318, i8* %6319, align 1
  %6320 = xor i64 1, %6303
  %6321 = trunc i64 %6320 to i32
  %6322 = xor i32 %6321, %6307
  %6323 = lshr i32 %6322, 4
  %6324 = trunc i32 %6323 to i8
  %6325 = and i8 %6324, 1
  %6326 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6325, i8* %6326, align 1
  %6327 = icmp eq i32 %6307, 0
  %6328 = zext i1 %6327 to i8
  %6329 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6328, i8* %6329, align 1
  %6330 = lshr i32 %6307, 31
  %6331 = trunc i32 %6330 to i8
  %6332 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6331, i8* %6332, align 1
  %6333 = lshr i32 %6306, 31
  %6334 = xor i32 %6330, %6333
  %6335 = add i32 %6334, %6330
  %6336 = icmp eq i32 %6335, 2
  %6337 = zext i1 %6336 to i8
  %6338 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6337, i8* %6338, align 1
  store %struct.Memory* %loadMem_435d8d, %struct.Memory** %MEMORY
  %loadMem_435d90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6340 = getelementptr inbounds %struct.GPR, %struct.GPR* %6339, i32 0, i32 33
  %6341 = getelementptr inbounds %struct.Reg, %struct.Reg* %6340, i32 0, i32 0
  %PC.i387 = bitcast %union.anon* %6341 to i64*
  %6342 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6343 = getelementptr inbounds %struct.GPR, %struct.GPR* %6342, i32 0, i32 9
  %6344 = getelementptr inbounds %struct.Reg, %struct.Reg* %6343, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %6344 to i32*
  %6345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6346 = getelementptr inbounds %struct.GPR, %struct.GPR* %6345, i32 0, i32 17
  %6347 = getelementptr inbounds %struct.Reg, %struct.Reg* %6346, i32 0, i32 0
  %R8.i388 = bitcast %union.anon* %6347 to i64*
  %6348 = load i32, i32* %ESI.i
  %6349 = zext i32 %6348 to i64
  %6350 = load i64, i64* %PC.i387
  %6351 = add i64 %6350, 3
  store i64 %6351, i64* %PC.i387
  %6352 = shl i64 %6349, 32
  %6353 = ashr exact i64 %6352, 32
  store i64 %6353, i64* %R8.i388, align 8
  store %struct.Memory* %loadMem_435d90, %struct.Memory** %MEMORY
  %loadMem_435d93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6355 = getelementptr inbounds %struct.GPR, %struct.GPR* %6354, i32 0, i32 33
  %6356 = getelementptr inbounds %struct.Reg, %struct.Reg* %6355, i32 0, i32 0
  %PC.i383 = bitcast %union.anon* %6356 to i64*
  %6357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6358 = getelementptr inbounds %struct.GPR, %struct.GPR* %6357, i32 0, i32 5
  %6359 = getelementptr inbounds %struct.Reg, %struct.Reg* %6358, i32 0, i32 0
  %RCX.i384 = bitcast %union.anon* %6359 to i64*
  %6360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6361 = getelementptr inbounds %struct.GPR, %struct.GPR* %6360, i32 0, i32 9
  %6362 = getelementptr inbounds %struct.Reg, %struct.Reg* %6361, i32 0, i32 0
  %RSI.i385 = bitcast %union.anon* %6362 to i64*
  %6363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6364 = getelementptr inbounds %struct.GPR, %struct.GPR* %6363, i32 0, i32 17
  %6365 = getelementptr inbounds %struct.Reg, %struct.Reg* %6364, i32 0, i32 0
  %R8.i386 = bitcast %union.anon* %6365 to i64*
  %6366 = load i64, i64* %RCX.i384
  %6367 = load i64, i64* %R8.i386
  %6368 = mul i64 %6367, 4
  %6369 = add i64 %6368, %6366
  %6370 = load i64, i64* %PC.i383
  %6371 = add i64 %6370, 4
  store i64 %6371, i64* %PC.i383
  %6372 = inttoptr i64 %6369 to i32*
  %6373 = load i32, i32* %6372
  %6374 = zext i32 %6373 to i64
  store i64 %6374, i64* %RSI.i385, align 8
  store %struct.Memory* %loadMem_435d93, %struct.Memory** %MEMORY
  %loadMem_435d97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6376 = getelementptr inbounds %struct.GPR, %struct.GPR* %6375, i32 0, i32 33
  %6377 = getelementptr inbounds %struct.Reg, %struct.Reg* %6376, i32 0, i32 0
  %PC.i380 = bitcast %union.anon* %6377 to i64*
  %6378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6379 = getelementptr inbounds %struct.GPR, %struct.GPR* %6378, i32 0, i32 5
  %6380 = getelementptr inbounds %struct.Reg, %struct.Reg* %6379, i32 0, i32 0
  %RCX.i381 = bitcast %union.anon* %6380 to i64*
  %6381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6382 = getelementptr inbounds %struct.GPR, %struct.GPR* %6381, i32 0, i32 15
  %6383 = getelementptr inbounds %struct.Reg, %struct.Reg* %6382, i32 0, i32 0
  %RBP.i382 = bitcast %union.anon* %6383 to i64*
  %6384 = load i64, i64* %RBP.i382
  %6385 = sub i64 %6384, 24
  %6386 = load i64, i64* %PC.i380
  %6387 = add i64 %6386, 4
  store i64 %6387, i64* %PC.i380
  %6388 = inttoptr i64 %6385 to i64*
  %6389 = load i64, i64* %6388
  store i64 %6389, i64* %RCX.i381, align 8
  store %struct.Memory* %loadMem_435d97, %struct.Memory** %MEMORY
  %loadMem_435d9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6391 = getelementptr inbounds %struct.GPR, %struct.GPR* %6390, i32 0, i32 33
  %6392 = getelementptr inbounds %struct.Reg, %struct.Reg* %6391, i32 0, i32 0
  %PC.i378 = bitcast %union.anon* %6392 to i64*
  %6393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6394 = getelementptr inbounds %struct.GPR, %struct.GPR* %6393, i32 0, i32 5
  %6395 = getelementptr inbounds %struct.Reg, %struct.Reg* %6394, i32 0, i32 0
  %RCX.i379 = bitcast %union.anon* %6395 to i64*
  %6396 = load i64, i64* %RCX.i379
  %6397 = add i64 %6396, 312
  %6398 = load i64, i64* %PC.i378
  %6399 = add i64 %6398, 7
  store i64 %6399, i64* %PC.i378
  %6400 = inttoptr i64 %6397 to i64*
  %6401 = load i64, i64* %6400
  store i64 %6401, i64* %RCX.i379, align 8
  store %struct.Memory* %loadMem_435d9b, %struct.Memory** %MEMORY
  %loadMem_435da2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6403 = getelementptr inbounds %struct.GPR, %struct.GPR* %6402, i32 0, i32 33
  %6404 = getelementptr inbounds %struct.Reg, %struct.Reg* %6403, i32 0, i32 0
  %PC.i376 = bitcast %union.anon* %6404 to i64*
  %6405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6406 = getelementptr inbounds %struct.GPR, %struct.GPR* %6405, i32 0, i32 5
  %6407 = getelementptr inbounds %struct.Reg, %struct.Reg* %6406, i32 0, i32 0
  %RCX.i377 = bitcast %union.anon* %6407 to i64*
  %6408 = load i64, i64* %RCX.i377
  %6409 = add i64 %6408, 16
  %6410 = load i64, i64* %PC.i376
  %6411 = add i64 %6410, 4
  store i64 %6411, i64* %PC.i376
  %6412 = inttoptr i64 %6409 to i64*
  %6413 = load i64, i64* %6412
  store i64 %6413, i64* %RCX.i377, align 8
  store %struct.Memory* %loadMem_435da2, %struct.Memory** %MEMORY
  %loadMem_435da6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6415 = getelementptr inbounds %struct.GPR, %struct.GPR* %6414, i32 0, i32 33
  %6416 = getelementptr inbounds %struct.Reg, %struct.Reg* %6415, i32 0, i32 0
  %PC.i373 = bitcast %union.anon* %6416 to i64*
  %6417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6418 = getelementptr inbounds %struct.GPR, %struct.GPR* %6417, i32 0, i32 15
  %6419 = getelementptr inbounds %struct.Reg, %struct.Reg* %6418, i32 0, i32 0
  %RBP.i374 = bitcast %union.anon* %6419 to i64*
  %6420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6421 = getelementptr inbounds %struct.GPR, %struct.GPR* %6420, i32 0, i32 17
  %6422 = getelementptr inbounds %struct.Reg, %struct.Reg* %6421, i32 0, i32 0
  %R8.i375 = bitcast %union.anon* %6422 to i64*
  %6423 = load i64, i64* %RBP.i374
  %6424 = sub i64 %6423, 80
  %6425 = load i64, i64* %PC.i373
  %6426 = add i64 %6425, 4
  store i64 %6426, i64* %PC.i373
  %6427 = inttoptr i64 %6424 to i32*
  %6428 = load i32, i32* %6427
  %6429 = sext i32 %6428 to i64
  store i64 %6429, i64* %R8.i375, align 8
  store %struct.Memory* %loadMem_435da6, %struct.Memory** %MEMORY
  %loadMem_435daa = load %struct.Memory*, %struct.Memory** %MEMORY
  %6430 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6431 = getelementptr inbounds %struct.GPR, %struct.GPR* %6430, i32 0, i32 33
  %6432 = getelementptr inbounds %struct.Reg, %struct.Reg* %6431, i32 0, i32 0
  %PC.i369 = bitcast %union.anon* %6432 to i64*
  %6433 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6434 = getelementptr inbounds %struct.GPR, %struct.GPR* %6433, i32 0, i32 5
  %6435 = getelementptr inbounds %struct.Reg, %struct.Reg* %6434, i32 0, i32 0
  %RCX.i370 = bitcast %union.anon* %6435 to i64*
  %6436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6437 = getelementptr inbounds %struct.GPR, %struct.GPR* %6436, i32 0, i32 9
  %6438 = getelementptr inbounds %struct.Reg, %struct.Reg* %6437, i32 0, i32 0
  %RSI.i371 = bitcast %union.anon* %6438 to i64*
  %6439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6440 = getelementptr inbounds %struct.GPR, %struct.GPR* %6439, i32 0, i32 17
  %6441 = getelementptr inbounds %struct.Reg, %struct.Reg* %6440, i32 0, i32 0
  %R8.i372 = bitcast %union.anon* %6441 to i64*
  %6442 = load i64, i64* %RSI.i371
  %6443 = load i64, i64* %RCX.i370
  %6444 = load i64, i64* %R8.i372
  %6445 = mul i64 %6444, 4
  %6446 = add i64 %6445, %6443
  %6447 = load i64, i64* %PC.i369
  %6448 = add i64 %6447, 4
  store i64 %6448, i64* %PC.i369
  %6449 = trunc i64 %6442 to i32
  %6450 = inttoptr i64 %6446 to i32*
  %6451 = load i32, i32* %6450
  %6452 = add i32 %6451, %6449
  %6453 = zext i32 %6452 to i64
  store i64 %6453, i64* %RSI.i371, align 8
  %6454 = icmp ult i32 %6452, %6449
  %6455 = icmp ult i32 %6452, %6451
  %6456 = or i1 %6454, %6455
  %6457 = zext i1 %6456 to i8
  %6458 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6457, i8* %6458, align 1
  %6459 = and i32 %6452, 255
  %6460 = call i32 @llvm.ctpop.i32(i32 %6459)
  %6461 = trunc i32 %6460 to i8
  %6462 = and i8 %6461, 1
  %6463 = xor i8 %6462, 1
  %6464 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6463, i8* %6464, align 1
  %6465 = xor i32 %6451, %6449
  %6466 = xor i32 %6465, %6452
  %6467 = lshr i32 %6466, 4
  %6468 = trunc i32 %6467 to i8
  %6469 = and i8 %6468, 1
  %6470 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6469, i8* %6470, align 1
  %6471 = icmp eq i32 %6452, 0
  %6472 = zext i1 %6471 to i8
  %6473 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6472, i8* %6473, align 1
  %6474 = lshr i32 %6452, 31
  %6475 = trunc i32 %6474 to i8
  %6476 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6475, i8* %6476, align 1
  %6477 = lshr i32 %6449, 31
  %6478 = lshr i32 %6451, 31
  %6479 = xor i32 %6474, %6477
  %6480 = xor i32 %6474, %6478
  %6481 = add i32 %6479, %6480
  %6482 = icmp eq i32 %6481, 2
  %6483 = zext i1 %6482 to i8
  %6484 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6483, i8* %6484, align 1
  store %struct.Memory* %loadMem_435daa, %struct.Memory** %MEMORY
  %loadMem_435dae = load %struct.Memory*, %struct.Memory** %MEMORY
  %6485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6486 = getelementptr inbounds %struct.GPR, %struct.GPR* %6485, i32 0, i32 33
  %6487 = getelementptr inbounds %struct.Reg, %struct.Reg* %6486, i32 0, i32 0
  %PC.i366 = bitcast %union.anon* %6487 to i64*
  %6488 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6489 = getelementptr inbounds %struct.GPR, %struct.GPR* %6488, i32 0, i32 7
  %6490 = getelementptr inbounds %struct.Reg, %struct.Reg* %6489, i32 0, i32 0
  %EDX.i367 = bitcast %union.anon* %6490 to i32*
  %6491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6492 = getelementptr inbounds %struct.GPR, %struct.GPR* %6491, i32 0, i32 11
  %6493 = getelementptr inbounds %struct.Reg, %struct.Reg* %6492, i32 0, i32 0
  %RDI.i368 = bitcast %union.anon* %6493 to i64*
  %6494 = load i32, i32* %EDX.i367
  %6495 = zext i32 %6494 to i64
  %6496 = load i64, i64* %PC.i366
  %6497 = add i64 %6496, 2
  store i64 %6497, i64* %PC.i366
  %6498 = and i64 %6495, 4294967295
  store i64 %6498, i64* %RDI.i368, align 8
  store %struct.Memory* %loadMem_435dae, %struct.Memory** %MEMORY
  %loadMem_435db0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6500 = getelementptr inbounds %struct.GPR, %struct.GPR* %6499, i32 0, i32 33
  %6501 = getelementptr inbounds %struct.Reg, %struct.Reg* %6500, i32 0, i32 0
  %PC.i363 = bitcast %union.anon* %6501 to i64*
  %6502 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6503 = getelementptr inbounds %struct.GPR, %struct.GPR* %6502, i32 0, i32 1
  %6504 = getelementptr inbounds %struct.Reg, %struct.Reg* %6503, i32 0, i32 0
  %EAX.i364 = bitcast %union.anon* %6504 to i32*
  %6505 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6506 = getelementptr inbounds %struct.GPR, %struct.GPR* %6505, i32 0, i32 15
  %6507 = getelementptr inbounds %struct.Reg, %struct.Reg* %6506, i32 0, i32 0
  %RBP.i365 = bitcast %union.anon* %6507 to i64*
  %6508 = load i64, i64* %RBP.i365
  %6509 = sub i64 %6508, 88
  %6510 = load i32, i32* %EAX.i364
  %6511 = zext i32 %6510 to i64
  %6512 = load i64, i64* %PC.i363
  %6513 = add i64 %6512, 3
  store i64 %6513, i64* %PC.i363
  %6514 = inttoptr i64 %6509 to i32*
  store i32 %6510, i32* %6514
  store %struct.Memory* %loadMem_435db0, %struct.Memory** %MEMORY
  %loadMem1_435db3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6516 = getelementptr inbounds %struct.GPR, %struct.GPR* %6515, i32 0, i32 33
  %6517 = getelementptr inbounds %struct.Reg, %struct.Reg* %6516, i32 0, i32 0
  %PC.i362 = bitcast %union.anon* %6517 to i64*
  %6518 = load i64, i64* %PC.i362
  %6519 = add i64 %6518, -56323
  %6520 = load i64, i64* %PC.i362
  %6521 = add i64 %6520, 5
  %6522 = load i64, i64* %PC.i362
  %6523 = add i64 %6522, 5
  store i64 %6523, i64* %PC.i362
  %6524 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6525 = load i64, i64* %6524, align 8
  %6526 = add i64 %6525, -8
  %6527 = inttoptr i64 %6526 to i64*
  store i64 %6521, i64* %6527
  store i64 %6526, i64* %6524, align 8
  %6528 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6519, i64* %6528, align 8
  store %struct.Memory* %loadMem1_435db3, %struct.Memory** %MEMORY
  %loadMem2_435db3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_435db3 = load i64, i64* %3
  %call2_435db3 = call %struct.Memory* @sub_4281b0.ILogsum(%struct.State* %0, i64 %loadPC_435db3, %struct.Memory* %loadMem2_435db3)
  store %struct.Memory* %call2_435db3, %struct.Memory** %MEMORY
  %loadMem_435db8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6530 = getelementptr inbounds %struct.GPR, %struct.GPR* %6529, i32 0, i32 33
  %6531 = getelementptr inbounds %struct.Reg, %struct.Reg* %6530, i32 0, i32 0
  %PC.i359 = bitcast %union.anon* %6531 to i64*
  %6532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6533 = getelementptr inbounds %struct.GPR, %struct.GPR* %6532, i32 0, i32 11
  %6534 = getelementptr inbounds %struct.Reg, %struct.Reg* %6533, i32 0, i32 0
  %RDI.i360 = bitcast %union.anon* %6534 to i64*
  %6535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6536 = getelementptr inbounds %struct.GPR, %struct.GPR* %6535, i32 0, i32 15
  %6537 = getelementptr inbounds %struct.Reg, %struct.Reg* %6536, i32 0, i32 0
  %RBP.i361 = bitcast %union.anon* %6537 to i64*
  %6538 = load i64, i64* %RBP.i361
  %6539 = sub i64 %6538, 88
  %6540 = load i64, i64* %PC.i359
  %6541 = add i64 %6540, 3
  store i64 %6541, i64* %PC.i359
  %6542 = inttoptr i64 %6539 to i32*
  %6543 = load i32, i32* %6542
  %6544 = zext i32 %6543 to i64
  store i64 %6544, i64* %RDI.i360, align 8
  store %struct.Memory* %loadMem_435db8, %struct.Memory** %MEMORY
  %loadMem_435dbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %6545 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6546 = getelementptr inbounds %struct.GPR, %struct.GPR* %6545, i32 0, i32 33
  %6547 = getelementptr inbounds %struct.Reg, %struct.Reg* %6546, i32 0, i32 0
  %PC.i356 = bitcast %union.anon* %6547 to i64*
  %6548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6549 = getelementptr inbounds %struct.GPR, %struct.GPR* %6548, i32 0, i32 1
  %6550 = getelementptr inbounds %struct.Reg, %struct.Reg* %6549, i32 0, i32 0
  %EAX.i357 = bitcast %union.anon* %6550 to i32*
  %6551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6552 = getelementptr inbounds %struct.GPR, %struct.GPR* %6551, i32 0, i32 9
  %6553 = getelementptr inbounds %struct.Reg, %struct.Reg* %6552, i32 0, i32 0
  %RSI.i358 = bitcast %union.anon* %6553 to i64*
  %6554 = load i32, i32* %EAX.i357
  %6555 = zext i32 %6554 to i64
  %6556 = load i64, i64* %PC.i356
  %6557 = add i64 %6556, 2
  store i64 %6557, i64* %PC.i356
  %6558 = and i64 %6555, 4294967295
  store i64 %6558, i64* %RSI.i358, align 8
  store %struct.Memory* %loadMem_435dbb, %struct.Memory** %MEMORY
  %loadMem1_435dbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %6559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6560 = getelementptr inbounds %struct.GPR, %struct.GPR* %6559, i32 0, i32 33
  %6561 = getelementptr inbounds %struct.Reg, %struct.Reg* %6560, i32 0, i32 0
  %PC.i355 = bitcast %union.anon* %6561 to i64*
  %6562 = load i64, i64* %PC.i355
  %6563 = add i64 %6562, -56333
  %6564 = load i64, i64* %PC.i355
  %6565 = add i64 %6564, 5
  %6566 = load i64, i64* %PC.i355
  %6567 = add i64 %6566, 5
  store i64 %6567, i64* %PC.i355
  %6568 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6569 = load i64, i64* %6568, align 8
  %6570 = add i64 %6569, -8
  %6571 = inttoptr i64 %6570 to i64*
  store i64 %6565, i64* %6571
  store i64 %6570, i64* %6568, align 8
  %6572 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6563, i64* %6572, align 8
  store %struct.Memory* %loadMem1_435dbd, %struct.Memory** %MEMORY
  %loadMem2_435dbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_435dbd = load i64, i64* %3
  %call2_435dbd = call %struct.Memory* @sub_4281b0.ILogsum(%struct.State* %0, i64 %loadPC_435dbd, %struct.Memory* %loadMem2_435dbd)
  store %struct.Memory* %call2_435dbd, %struct.Memory** %MEMORY
  %loadMem_435dc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6573 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6574 = getelementptr inbounds %struct.GPR, %struct.GPR* %6573, i32 0, i32 33
  %6575 = getelementptr inbounds %struct.Reg, %struct.Reg* %6574, i32 0, i32 0
  %PC.i352 = bitcast %union.anon* %6575 to i64*
  %6576 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6577 = getelementptr inbounds %struct.GPR, %struct.GPR* %6576, i32 0, i32 5
  %6578 = getelementptr inbounds %struct.Reg, %struct.Reg* %6577, i32 0, i32 0
  %RCX.i353 = bitcast %union.anon* %6578 to i64*
  %6579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6580 = getelementptr inbounds %struct.GPR, %struct.GPR* %6579, i32 0, i32 15
  %6581 = getelementptr inbounds %struct.Reg, %struct.Reg* %6580, i32 0, i32 0
  %RBP.i354 = bitcast %union.anon* %6581 to i64*
  %6582 = load i64, i64* %RBP.i354
  %6583 = sub i64 %6582, 56
  %6584 = load i64, i64* %PC.i352
  %6585 = add i64 %6584, 4
  store i64 %6585, i64* %PC.i352
  %6586 = inttoptr i64 %6583 to i64*
  %6587 = load i64, i64* %6586
  store i64 %6587, i64* %RCX.i353, align 8
  store %struct.Memory* %loadMem_435dc2, %struct.Memory** %MEMORY
  %loadMem_435dc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6589 = getelementptr inbounds %struct.GPR, %struct.GPR* %6588, i32 0, i32 33
  %6590 = getelementptr inbounds %struct.Reg, %struct.Reg* %6589, i32 0, i32 0
  %PC.i349 = bitcast %union.anon* %6590 to i64*
  %6591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6592 = getelementptr inbounds %struct.GPR, %struct.GPR* %6591, i32 0, i32 15
  %6593 = getelementptr inbounds %struct.Reg, %struct.Reg* %6592, i32 0, i32 0
  %RBP.i350 = bitcast %union.anon* %6593 to i64*
  %6594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6595 = getelementptr inbounds %struct.GPR, %struct.GPR* %6594, i32 0, i32 17
  %6596 = getelementptr inbounds %struct.Reg, %struct.Reg* %6595, i32 0, i32 0
  %R8.i351 = bitcast %union.anon* %6596 to i64*
  %6597 = load i64, i64* %RBP.i350
  %6598 = sub i64 %6597, 76
  %6599 = load i64, i64* %PC.i349
  %6600 = add i64 %6599, 4
  store i64 %6600, i64* %PC.i349
  %6601 = inttoptr i64 %6598 to i32*
  %6602 = load i32, i32* %6601
  %6603 = sext i32 %6602 to i64
  store i64 %6603, i64* %R8.i351, align 8
  store %struct.Memory* %loadMem_435dc6, %struct.Memory** %MEMORY
  %loadMem_435dca = load %struct.Memory*, %struct.Memory** %MEMORY
  %6604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6605 = getelementptr inbounds %struct.GPR, %struct.GPR* %6604, i32 0, i32 33
  %6606 = getelementptr inbounds %struct.Reg, %struct.Reg* %6605, i32 0, i32 0
  %PC.i346 = bitcast %union.anon* %6606 to i64*
  %6607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6608 = getelementptr inbounds %struct.GPR, %struct.GPR* %6607, i32 0, i32 5
  %6609 = getelementptr inbounds %struct.Reg, %struct.Reg* %6608, i32 0, i32 0
  %RCX.i347 = bitcast %union.anon* %6609 to i64*
  %6610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6611 = getelementptr inbounds %struct.GPR, %struct.GPR* %6610, i32 0, i32 17
  %6612 = getelementptr inbounds %struct.Reg, %struct.Reg* %6611, i32 0, i32 0
  %R8.i348 = bitcast %union.anon* %6612 to i64*
  %6613 = load i64, i64* %RCX.i347
  %6614 = load i64, i64* %R8.i348
  %6615 = mul i64 %6614, 8
  %6616 = add i64 %6615, %6613
  %6617 = load i64, i64* %PC.i346
  %6618 = add i64 %6617, 4
  store i64 %6618, i64* %PC.i346
  %6619 = inttoptr i64 %6616 to i64*
  %6620 = load i64, i64* %6619
  store i64 %6620, i64* %RCX.i347, align 8
  store %struct.Memory* %loadMem_435dca, %struct.Memory** %MEMORY
  %loadMem_435dce = load %struct.Memory*, %struct.Memory** %MEMORY
  %6621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6622 = getelementptr inbounds %struct.GPR, %struct.GPR* %6621, i32 0, i32 33
  %6623 = getelementptr inbounds %struct.Reg, %struct.Reg* %6622, i32 0, i32 0
  %PC.i343 = bitcast %union.anon* %6623 to i64*
  %6624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6625 = getelementptr inbounds %struct.GPR, %struct.GPR* %6624, i32 0, i32 15
  %6626 = getelementptr inbounds %struct.Reg, %struct.Reg* %6625, i32 0, i32 0
  %RBP.i344 = bitcast %union.anon* %6626 to i64*
  %6627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6628 = getelementptr inbounds %struct.GPR, %struct.GPR* %6627, i32 0, i32 17
  %6629 = getelementptr inbounds %struct.Reg, %struct.Reg* %6628, i32 0, i32 0
  %R8.i345 = bitcast %union.anon* %6629 to i64*
  %6630 = load i64, i64* %RBP.i344
  %6631 = sub i64 %6630, 80
  %6632 = load i64, i64* %PC.i343
  %6633 = add i64 %6632, 4
  store i64 %6633, i64* %PC.i343
  %6634 = inttoptr i64 %6631 to i32*
  %6635 = load i32, i32* %6634
  %6636 = sext i32 %6635 to i64
  store i64 %6636, i64* %R8.i345, align 8
  store %struct.Memory* %loadMem_435dce, %struct.Memory** %MEMORY
  %loadMem_435dd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6638 = getelementptr inbounds %struct.GPR, %struct.GPR* %6637, i32 0, i32 33
  %6639 = getelementptr inbounds %struct.Reg, %struct.Reg* %6638, i32 0, i32 0
  %PC.i339 = bitcast %union.anon* %6639 to i64*
  %6640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6641 = getelementptr inbounds %struct.GPR, %struct.GPR* %6640, i32 0, i32 1
  %6642 = getelementptr inbounds %struct.Reg, %struct.Reg* %6641, i32 0, i32 0
  %EAX.i340 = bitcast %union.anon* %6642 to i32*
  %6643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6644 = getelementptr inbounds %struct.GPR, %struct.GPR* %6643, i32 0, i32 5
  %6645 = getelementptr inbounds %struct.Reg, %struct.Reg* %6644, i32 0, i32 0
  %RCX.i341 = bitcast %union.anon* %6645 to i64*
  %6646 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6647 = getelementptr inbounds %struct.GPR, %struct.GPR* %6646, i32 0, i32 17
  %6648 = getelementptr inbounds %struct.Reg, %struct.Reg* %6647, i32 0, i32 0
  %R8.i342 = bitcast %union.anon* %6648 to i64*
  %6649 = load i64, i64* %RCX.i341
  %6650 = load i64, i64* %R8.i342
  %6651 = mul i64 %6650, 4
  %6652 = add i64 %6651, %6649
  %6653 = load i32, i32* %EAX.i340
  %6654 = zext i32 %6653 to i64
  %6655 = load i64, i64* %PC.i339
  %6656 = add i64 %6655, 4
  store i64 %6656, i64* %PC.i339
  %6657 = inttoptr i64 %6652 to i32*
  store i32 %6653, i32* %6657
  store %struct.Memory* %loadMem_435dd2, %struct.Memory** %MEMORY
  %loadMem_435dd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6659 = getelementptr inbounds %struct.GPR, %struct.GPR* %6658, i32 0, i32 33
  %6660 = getelementptr inbounds %struct.Reg, %struct.Reg* %6659, i32 0, i32 0
  %PC.i336 = bitcast %union.anon* %6660 to i64*
  %6661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6662 = getelementptr inbounds %struct.GPR, %struct.GPR* %6661, i32 0, i32 5
  %6663 = getelementptr inbounds %struct.Reg, %struct.Reg* %6662, i32 0, i32 0
  %RCX.i337 = bitcast %union.anon* %6663 to i64*
  %6664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6665 = getelementptr inbounds %struct.GPR, %struct.GPR* %6664, i32 0, i32 15
  %6666 = getelementptr inbounds %struct.Reg, %struct.Reg* %6665, i32 0, i32 0
  %RBP.i338 = bitcast %union.anon* %6666 to i64*
  %6667 = load i64, i64* %RBP.i338
  %6668 = sub i64 %6667, 24
  %6669 = load i64, i64* %PC.i336
  %6670 = add i64 %6669, 4
  store i64 %6670, i64* %PC.i336
  %6671 = inttoptr i64 %6668 to i64*
  %6672 = load i64, i64* %6671
  store i64 %6672, i64* %RCX.i337, align 8
  store %struct.Memory* %loadMem_435dd6, %struct.Memory** %MEMORY
  %loadMem_435dda = load %struct.Memory*, %struct.Memory** %MEMORY
  %6673 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6674 = getelementptr inbounds %struct.GPR, %struct.GPR* %6673, i32 0, i32 33
  %6675 = getelementptr inbounds %struct.Reg, %struct.Reg* %6674, i32 0, i32 0
  %PC.i334 = bitcast %union.anon* %6675 to i64*
  %6676 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6677 = getelementptr inbounds %struct.GPR, %struct.GPR* %6676, i32 0, i32 5
  %6678 = getelementptr inbounds %struct.Reg, %struct.Reg* %6677, i32 0, i32 0
  %RCX.i335 = bitcast %union.anon* %6678 to i64*
  %6679 = load i64, i64* %RCX.i335
  %6680 = add i64 %6679, 320
  %6681 = load i64, i64* %PC.i334
  %6682 = add i64 %6681, 7
  store i64 %6682, i64* %PC.i334
  %6683 = inttoptr i64 %6680 to i64*
  %6684 = load i64, i64* %6683
  store i64 %6684, i64* %RCX.i335, align 8
  store %struct.Memory* %loadMem_435dda, %struct.Memory** %MEMORY
  %loadMem_435de1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6686 = getelementptr inbounds %struct.GPR, %struct.GPR* %6685, i32 0, i32 33
  %6687 = getelementptr inbounds %struct.Reg, %struct.Reg* %6686, i32 0, i32 0
  %PC.i331 = bitcast %union.anon* %6687 to i64*
  %6688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6689 = getelementptr inbounds %struct.GPR, %struct.GPR* %6688, i32 0, i32 15
  %6690 = getelementptr inbounds %struct.Reg, %struct.Reg* %6689, i32 0, i32 0
  %RBP.i332 = bitcast %union.anon* %6690 to i64*
  %6691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6692 = getelementptr inbounds %struct.GPR, %struct.GPR* %6691, i32 0, i32 17
  %6693 = getelementptr inbounds %struct.Reg, %struct.Reg* %6692, i32 0, i32 0
  %R8.i333 = bitcast %union.anon* %6693 to i64*
  %6694 = load i64, i64* %RBP.i332
  %6695 = sub i64 %6694, 8
  %6696 = load i64, i64* %PC.i331
  %6697 = add i64 %6696, 4
  store i64 %6697, i64* %PC.i331
  %6698 = inttoptr i64 %6695 to i64*
  %6699 = load i64, i64* %6698
  store i64 %6699, i64* %R8.i333, align 8
  store %struct.Memory* %loadMem_435de1, %struct.Memory** %MEMORY
  %loadMem_435de5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6701 = getelementptr inbounds %struct.GPR, %struct.GPR* %6700, i32 0, i32 33
  %6702 = getelementptr inbounds %struct.Reg, %struct.Reg* %6701, i32 0, i32 0
  %PC.i328 = bitcast %union.anon* %6702 to i64*
  %6703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6704 = getelementptr inbounds %struct.GPR, %struct.GPR* %6703, i32 0, i32 15
  %6705 = getelementptr inbounds %struct.Reg, %struct.Reg* %6704, i32 0, i32 0
  %RBP.i329 = bitcast %union.anon* %6705 to i64*
  %6706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6707 = getelementptr inbounds %struct.GPR, %struct.GPR* %6706, i32 0, i32 19
  %6708 = getelementptr inbounds %struct.Reg, %struct.Reg* %6707, i32 0, i32 0
  %R9.i330 = bitcast %union.anon* %6708 to i64*
  %6709 = load i64, i64* %RBP.i329
  %6710 = sub i64 %6709, 76
  %6711 = load i64, i64* %PC.i328
  %6712 = add i64 %6711, 4
  store i64 %6712, i64* %PC.i328
  %6713 = inttoptr i64 %6710 to i32*
  %6714 = load i32, i32* %6713
  %6715 = sext i32 %6714 to i64
  store i64 %6715, i64* %R9.i330, align 8
  store %struct.Memory* %loadMem_435de5, %struct.Memory** %MEMORY
  %loadMem_435de9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6717 = getelementptr inbounds %struct.GPR, %struct.GPR* %6716, i32 0, i32 33
  %6718 = getelementptr inbounds %struct.Reg, %struct.Reg* %6717, i32 0, i32 0
  %PC.i324 = bitcast %union.anon* %6718 to i64*
  %6719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6720 = getelementptr inbounds %struct.GPR, %struct.GPR* %6719, i32 0, i32 1
  %6721 = getelementptr inbounds %struct.Reg, %struct.Reg* %6720, i32 0, i32 0
  %RAX.i325 = bitcast %union.anon* %6721 to i64*
  %6722 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6723 = getelementptr inbounds %struct.GPR, %struct.GPR* %6722, i32 0, i32 17
  %6724 = getelementptr inbounds %struct.Reg, %struct.Reg* %6723, i32 0, i32 0
  %R8.i326 = bitcast %union.anon* %6724 to i64*
  %6725 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6726 = getelementptr inbounds %struct.GPR, %struct.GPR* %6725, i32 0, i32 19
  %6727 = getelementptr inbounds %struct.Reg, %struct.Reg* %6726, i32 0, i32 0
  %R9.i327 = bitcast %union.anon* %6727 to i64*
  %6728 = load i64, i64* %R8.i326
  %6729 = load i64, i64* %R9.i327
  %6730 = add i64 %6729, %6728
  %6731 = load i64, i64* %PC.i324
  %6732 = add i64 %6731, 5
  store i64 %6732, i64* %PC.i324
  %6733 = inttoptr i64 %6730 to i8*
  %6734 = load i8, i8* %6733
  %6735 = sext i8 %6734 to i64
  %6736 = and i64 %6735, 4294967295
  store i64 %6736, i64* %RAX.i325, align 8
  store %struct.Memory* %loadMem_435de9, %struct.Memory** %MEMORY
  %loadMem_435dee = load %struct.Memory*, %struct.Memory** %MEMORY
  %6737 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6738 = getelementptr inbounds %struct.GPR, %struct.GPR* %6737, i32 0, i32 33
  %6739 = getelementptr inbounds %struct.Reg, %struct.Reg* %6738, i32 0, i32 0
  %PC.i321 = bitcast %union.anon* %6739 to i64*
  %6740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6741 = getelementptr inbounds %struct.GPR, %struct.GPR* %6740, i32 0, i32 1
  %6742 = getelementptr inbounds %struct.Reg, %struct.Reg* %6741, i32 0, i32 0
  %EAX.i322 = bitcast %union.anon* %6742 to i32*
  %6743 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6744 = getelementptr inbounds %struct.GPR, %struct.GPR* %6743, i32 0, i32 17
  %6745 = getelementptr inbounds %struct.Reg, %struct.Reg* %6744, i32 0, i32 0
  %R8.i323 = bitcast %union.anon* %6745 to i64*
  %6746 = load i32, i32* %EAX.i322
  %6747 = zext i32 %6746 to i64
  %6748 = load i64, i64* %PC.i321
  %6749 = add i64 %6748, 3
  store i64 %6749, i64* %PC.i321
  %6750 = shl i64 %6747, 32
  %6751 = ashr exact i64 %6750, 32
  store i64 %6751, i64* %R8.i323, align 8
  store %struct.Memory* %loadMem_435dee, %struct.Memory** %MEMORY
  %loadMem_435df1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6753 = getelementptr inbounds %struct.GPR, %struct.GPR* %6752, i32 0, i32 33
  %6754 = getelementptr inbounds %struct.Reg, %struct.Reg* %6753, i32 0, i32 0
  %PC.i318 = bitcast %union.anon* %6754 to i64*
  %6755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6756 = getelementptr inbounds %struct.GPR, %struct.GPR* %6755, i32 0, i32 5
  %6757 = getelementptr inbounds %struct.Reg, %struct.Reg* %6756, i32 0, i32 0
  %RCX.i319 = bitcast %union.anon* %6757 to i64*
  %6758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6759 = getelementptr inbounds %struct.GPR, %struct.GPR* %6758, i32 0, i32 17
  %6760 = getelementptr inbounds %struct.Reg, %struct.Reg* %6759, i32 0, i32 0
  %R8.i320 = bitcast %union.anon* %6760 to i64*
  %6761 = load i64, i64* %RCX.i319
  %6762 = load i64, i64* %R8.i320
  %6763 = mul i64 %6762, 8
  %6764 = add i64 %6763, %6761
  %6765 = load i64, i64* %PC.i318
  %6766 = add i64 %6765, 4
  store i64 %6766, i64* %PC.i318
  %6767 = inttoptr i64 %6764 to i64*
  %6768 = load i64, i64* %6767
  store i64 %6768, i64* %RCX.i319, align 8
  store %struct.Memory* %loadMem_435df1, %struct.Memory** %MEMORY
  %loadMem_435df5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6770 = getelementptr inbounds %struct.GPR, %struct.GPR* %6769, i32 0, i32 33
  %6771 = getelementptr inbounds %struct.Reg, %struct.Reg* %6770, i32 0, i32 0
  %PC.i315 = bitcast %union.anon* %6771 to i64*
  %6772 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6773 = getelementptr inbounds %struct.GPR, %struct.GPR* %6772, i32 0, i32 15
  %6774 = getelementptr inbounds %struct.Reg, %struct.Reg* %6773, i32 0, i32 0
  %RBP.i316 = bitcast %union.anon* %6774 to i64*
  %6775 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6776 = getelementptr inbounds %struct.GPR, %struct.GPR* %6775, i32 0, i32 17
  %6777 = getelementptr inbounds %struct.Reg, %struct.Reg* %6776, i32 0, i32 0
  %R8.i317 = bitcast %union.anon* %6777 to i64*
  %6778 = load i64, i64* %RBP.i316
  %6779 = sub i64 %6778, 80
  %6780 = load i64, i64* %PC.i315
  %6781 = add i64 %6780, 4
  store i64 %6781, i64* %PC.i315
  %6782 = inttoptr i64 %6779 to i32*
  %6783 = load i32, i32* %6782
  %6784 = sext i32 %6783 to i64
  store i64 %6784, i64* %R8.i317, align 8
  store %struct.Memory* %loadMem_435df5, %struct.Memory** %MEMORY
  %loadMem_435df9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6785 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6786 = getelementptr inbounds %struct.GPR, %struct.GPR* %6785, i32 0, i32 33
  %6787 = getelementptr inbounds %struct.Reg, %struct.Reg* %6786, i32 0, i32 0
  %PC.i311 = bitcast %union.anon* %6787 to i64*
  %6788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6789 = getelementptr inbounds %struct.GPR, %struct.GPR* %6788, i32 0, i32 1
  %6790 = getelementptr inbounds %struct.Reg, %struct.Reg* %6789, i32 0, i32 0
  %RAX.i312 = bitcast %union.anon* %6790 to i64*
  %6791 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6792 = getelementptr inbounds %struct.GPR, %struct.GPR* %6791, i32 0, i32 5
  %6793 = getelementptr inbounds %struct.Reg, %struct.Reg* %6792, i32 0, i32 0
  %RCX.i313 = bitcast %union.anon* %6793 to i64*
  %6794 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6795 = getelementptr inbounds %struct.GPR, %struct.GPR* %6794, i32 0, i32 17
  %6796 = getelementptr inbounds %struct.Reg, %struct.Reg* %6795, i32 0, i32 0
  %R8.i314 = bitcast %union.anon* %6796 to i64*
  %6797 = load i64, i64* %RCX.i313
  %6798 = load i64, i64* %R8.i314
  %6799 = mul i64 %6798, 4
  %6800 = add i64 %6799, %6797
  %6801 = load i64, i64* %PC.i311
  %6802 = add i64 %6801, 4
  store i64 %6802, i64* %PC.i311
  %6803 = inttoptr i64 %6800 to i32*
  %6804 = load i32, i32* %6803
  %6805 = zext i32 %6804 to i64
  store i64 %6805, i64* %RAX.i312, align 8
  store %struct.Memory* %loadMem_435df9, %struct.Memory** %MEMORY
  %loadMem_435dfd = load %struct.Memory*, %struct.Memory** %MEMORY
  %6806 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6807 = getelementptr inbounds %struct.GPR, %struct.GPR* %6806, i32 0, i32 33
  %6808 = getelementptr inbounds %struct.Reg, %struct.Reg* %6807, i32 0, i32 0
  %PC.i308 = bitcast %union.anon* %6808 to i64*
  %6809 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6810 = getelementptr inbounds %struct.GPR, %struct.GPR* %6809, i32 0, i32 5
  %6811 = getelementptr inbounds %struct.Reg, %struct.Reg* %6810, i32 0, i32 0
  %RCX.i309 = bitcast %union.anon* %6811 to i64*
  %6812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6813 = getelementptr inbounds %struct.GPR, %struct.GPR* %6812, i32 0, i32 15
  %6814 = getelementptr inbounds %struct.Reg, %struct.Reg* %6813, i32 0, i32 0
  %RBP.i310 = bitcast %union.anon* %6814 to i64*
  %6815 = load i64, i64* %RBP.i310
  %6816 = sub i64 %6815, 56
  %6817 = load i64, i64* %PC.i308
  %6818 = add i64 %6817, 4
  store i64 %6818, i64* %PC.i308
  %6819 = inttoptr i64 %6816 to i64*
  %6820 = load i64, i64* %6819
  store i64 %6820, i64* %RCX.i309, align 8
  store %struct.Memory* %loadMem_435dfd, %struct.Memory** %MEMORY
  %loadMem_435e01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6821 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6822 = getelementptr inbounds %struct.GPR, %struct.GPR* %6821, i32 0, i32 33
  %6823 = getelementptr inbounds %struct.Reg, %struct.Reg* %6822, i32 0, i32 0
  %PC.i305 = bitcast %union.anon* %6823 to i64*
  %6824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6825 = getelementptr inbounds %struct.GPR, %struct.GPR* %6824, i32 0, i32 15
  %6826 = getelementptr inbounds %struct.Reg, %struct.Reg* %6825, i32 0, i32 0
  %RBP.i306 = bitcast %union.anon* %6826 to i64*
  %6827 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6828 = getelementptr inbounds %struct.GPR, %struct.GPR* %6827, i32 0, i32 17
  %6829 = getelementptr inbounds %struct.Reg, %struct.Reg* %6828, i32 0, i32 0
  %R8.i307 = bitcast %union.anon* %6829 to i64*
  %6830 = load i64, i64* %RBP.i306
  %6831 = sub i64 %6830, 76
  %6832 = load i64, i64* %PC.i305
  %6833 = add i64 %6832, 4
  store i64 %6833, i64* %PC.i305
  %6834 = inttoptr i64 %6831 to i32*
  %6835 = load i32, i32* %6834
  %6836 = sext i32 %6835 to i64
  store i64 %6836, i64* %R8.i307, align 8
  store %struct.Memory* %loadMem_435e01, %struct.Memory** %MEMORY
  %loadMem_435e05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6837 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6838 = getelementptr inbounds %struct.GPR, %struct.GPR* %6837, i32 0, i32 33
  %6839 = getelementptr inbounds %struct.Reg, %struct.Reg* %6838, i32 0, i32 0
  %PC.i302 = bitcast %union.anon* %6839 to i64*
  %6840 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6841 = getelementptr inbounds %struct.GPR, %struct.GPR* %6840, i32 0, i32 5
  %6842 = getelementptr inbounds %struct.Reg, %struct.Reg* %6841, i32 0, i32 0
  %RCX.i303 = bitcast %union.anon* %6842 to i64*
  %6843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6844 = getelementptr inbounds %struct.GPR, %struct.GPR* %6843, i32 0, i32 17
  %6845 = getelementptr inbounds %struct.Reg, %struct.Reg* %6844, i32 0, i32 0
  %R8.i304 = bitcast %union.anon* %6845 to i64*
  %6846 = load i64, i64* %RCX.i303
  %6847 = load i64, i64* %R8.i304
  %6848 = mul i64 %6847, 8
  %6849 = add i64 %6848, %6846
  %6850 = load i64, i64* %PC.i302
  %6851 = add i64 %6850, 4
  store i64 %6851, i64* %PC.i302
  %6852 = inttoptr i64 %6849 to i64*
  %6853 = load i64, i64* %6852
  store i64 %6853, i64* %RCX.i303, align 8
  store %struct.Memory* %loadMem_435e05, %struct.Memory** %MEMORY
  %loadMem_435e09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6854 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6855 = getelementptr inbounds %struct.GPR, %struct.GPR* %6854, i32 0, i32 33
  %6856 = getelementptr inbounds %struct.Reg, %struct.Reg* %6855, i32 0, i32 0
  %PC.i299 = bitcast %union.anon* %6856 to i64*
  %6857 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6858 = getelementptr inbounds %struct.GPR, %struct.GPR* %6857, i32 0, i32 15
  %6859 = getelementptr inbounds %struct.Reg, %struct.Reg* %6858, i32 0, i32 0
  %RBP.i300 = bitcast %union.anon* %6859 to i64*
  %6860 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6861 = getelementptr inbounds %struct.GPR, %struct.GPR* %6860, i32 0, i32 17
  %6862 = getelementptr inbounds %struct.Reg, %struct.Reg* %6861, i32 0, i32 0
  %R8.i301 = bitcast %union.anon* %6862 to i64*
  %6863 = load i64, i64* %RBP.i300
  %6864 = sub i64 %6863, 80
  %6865 = load i64, i64* %PC.i299
  %6866 = add i64 %6865, 4
  store i64 %6866, i64* %PC.i299
  %6867 = inttoptr i64 %6864 to i32*
  %6868 = load i32, i32* %6867
  %6869 = sext i32 %6868 to i64
  store i64 %6869, i64* %R8.i301, align 8
  store %struct.Memory* %loadMem_435e09, %struct.Memory** %MEMORY
  %loadMem_435e0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %6870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6871 = getelementptr inbounds %struct.GPR, %struct.GPR* %6870, i32 0, i32 33
  %6872 = getelementptr inbounds %struct.Reg, %struct.Reg* %6871, i32 0, i32 0
  %PC.i295 = bitcast %union.anon* %6872 to i64*
  %6873 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6874 = getelementptr inbounds %struct.GPR, %struct.GPR* %6873, i32 0, i32 1
  %6875 = getelementptr inbounds %struct.Reg, %struct.Reg* %6874, i32 0, i32 0
  %RAX.i296 = bitcast %union.anon* %6875 to i64*
  %6876 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6877 = getelementptr inbounds %struct.GPR, %struct.GPR* %6876, i32 0, i32 5
  %6878 = getelementptr inbounds %struct.Reg, %struct.Reg* %6877, i32 0, i32 0
  %RCX.i297 = bitcast %union.anon* %6878 to i64*
  %6879 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6880 = getelementptr inbounds %struct.GPR, %struct.GPR* %6879, i32 0, i32 17
  %6881 = getelementptr inbounds %struct.Reg, %struct.Reg* %6880, i32 0, i32 0
  %R8.i298 = bitcast %union.anon* %6881 to i64*
  %6882 = load i64, i64* %RAX.i296
  %6883 = load i64, i64* %RCX.i297
  %6884 = load i64, i64* %R8.i298
  %6885 = mul i64 %6884, 4
  %6886 = add i64 %6885, %6883
  %6887 = load i64, i64* %PC.i295
  %6888 = add i64 %6887, 4
  store i64 %6888, i64* %PC.i295
  %6889 = trunc i64 %6882 to i32
  %6890 = inttoptr i64 %6886 to i32*
  %6891 = load i32, i32* %6890
  %6892 = add i32 %6891, %6889
  %6893 = zext i32 %6892 to i64
  store i64 %6893, i64* %RAX.i296, align 8
  %6894 = icmp ult i32 %6892, %6889
  %6895 = icmp ult i32 %6892, %6891
  %6896 = or i1 %6894, %6895
  %6897 = zext i1 %6896 to i8
  %6898 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6897, i8* %6898, align 1
  %6899 = and i32 %6892, 255
  %6900 = call i32 @llvm.ctpop.i32(i32 %6899)
  %6901 = trunc i32 %6900 to i8
  %6902 = and i8 %6901, 1
  %6903 = xor i8 %6902, 1
  %6904 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6903, i8* %6904, align 1
  %6905 = xor i32 %6891, %6889
  %6906 = xor i32 %6905, %6892
  %6907 = lshr i32 %6906, 4
  %6908 = trunc i32 %6907 to i8
  %6909 = and i8 %6908, 1
  %6910 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6909, i8* %6910, align 1
  %6911 = icmp eq i32 %6892, 0
  %6912 = zext i1 %6911 to i8
  %6913 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6912, i8* %6913, align 1
  %6914 = lshr i32 %6892, 31
  %6915 = trunc i32 %6914 to i8
  %6916 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6915, i8* %6916, align 1
  %6917 = lshr i32 %6889, 31
  %6918 = lshr i32 %6891, 31
  %6919 = xor i32 %6914, %6917
  %6920 = xor i32 %6914, %6918
  %6921 = add i32 %6919, %6920
  %6922 = icmp eq i32 %6921, 2
  %6923 = zext i1 %6922 to i8
  %6924 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6923, i8* %6924, align 1
  store %struct.Memory* %loadMem_435e0d, %struct.Memory** %MEMORY
  %loadMem_435e11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6925 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6926 = getelementptr inbounds %struct.GPR, %struct.GPR* %6925, i32 0, i32 33
  %6927 = getelementptr inbounds %struct.Reg, %struct.Reg* %6926, i32 0, i32 0
  %PC.i291 = bitcast %union.anon* %6927 to i64*
  %6928 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6929 = getelementptr inbounds %struct.GPR, %struct.GPR* %6928, i32 0, i32 1
  %6930 = getelementptr inbounds %struct.Reg, %struct.Reg* %6929, i32 0, i32 0
  %EAX.i292 = bitcast %union.anon* %6930 to i32*
  %6931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6932 = getelementptr inbounds %struct.GPR, %struct.GPR* %6931, i32 0, i32 5
  %6933 = getelementptr inbounds %struct.Reg, %struct.Reg* %6932, i32 0, i32 0
  %RCX.i293 = bitcast %union.anon* %6933 to i64*
  %6934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6935 = getelementptr inbounds %struct.GPR, %struct.GPR* %6934, i32 0, i32 17
  %6936 = getelementptr inbounds %struct.Reg, %struct.Reg* %6935, i32 0, i32 0
  %R8.i294 = bitcast %union.anon* %6936 to i64*
  %6937 = load i64, i64* %RCX.i293
  %6938 = load i64, i64* %R8.i294
  %6939 = mul i64 %6938, 4
  %6940 = add i64 %6939, %6937
  %6941 = load i32, i32* %EAX.i292
  %6942 = zext i32 %6941 to i64
  %6943 = load i64, i64* %PC.i291
  %6944 = add i64 %6943, 4
  store i64 %6944, i64* %PC.i291
  %6945 = inttoptr i64 %6940 to i32*
  store i32 %6941, i32* %6945
  store %struct.Memory* %loadMem_435e11, %struct.Memory** %MEMORY
  %loadMem_435e15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6947 = getelementptr inbounds %struct.GPR, %struct.GPR* %6946, i32 0, i32 33
  %6948 = getelementptr inbounds %struct.Reg, %struct.Reg* %6947, i32 0, i32 0
  %PC.i288 = bitcast %union.anon* %6948 to i64*
  %6949 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6950 = getelementptr inbounds %struct.GPR, %struct.GPR* %6949, i32 0, i32 5
  %6951 = getelementptr inbounds %struct.Reg, %struct.Reg* %6950, i32 0, i32 0
  %RCX.i289 = bitcast %union.anon* %6951 to i64*
  %6952 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6953 = getelementptr inbounds %struct.GPR, %struct.GPR* %6952, i32 0, i32 15
  %6954 = getelementptr inbounds %struct.Reg, %struct.Reg* %6953, i32 0, i32 0
  %RBP.i290 = bitcast %union.anon* %6954 to i64*
  %6955 = load i64, i64* %RBP.i290
  %6956 = sub i64 %6955, 64
  %6957 = load i64, i64* %PC.i288
  %6958 = add i64 %6957, 4
  store i64 %6958, i64* %PC.i288
  %6959 = inttoptr i64 %6956 to i64*
  %6960 = load i64, i64* %6959
  store i64 %6960, i64* %RCX.i289, align 8
  store %struct.Memory* %loadMem_435e15, %struct.Memory** %MEMORY
  %loadMem_435e19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6961 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6962 = getelementptr inbounds %struct.GPR, %struct.GPR* %6961, i32 0, i32 33
  %6963 = getelementptr inbounds %struct.Reg, %struct.Reg* %6962, i32 0, i32 0
  %PC.i285 = bitcast %union.anon* %6963 to i64*
  %6964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6965 = getelementptr inbounds %struct.GPR, %struct.GPR* %6964, i32 0, i32 1
  %6966 = getelementptr inbounds %struct.Reg, %struct.Reg* %6965, i32 0, i32 0
  %RAX.i286 = bitcast %union.anon* %6966 to i64*
  %6967 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6968 = getelementptr inbounds %struct.GPR, %struct.GPR* %6967, i32 0, i32 15
  %6969 = getelementptr inbounds %struct.Reg, %struct.Reg* %6968, i32 0, i32 0
  %RBP.i287 = bitcast %union.anon* %6969 to i64*
  %6970 = load i64, i64* %RBP.i287
  %6971 = sub i64 %6970, 76
  %6972 = load i64, i64* %PC.i285
  %6973 = add i64 %6972, 3
  store i64 %6973, i64* %PC.i285
  %6974 = inttoptr i64 %6971 to i32*
  %6975 = load i32, i32* %6974
  %6976 = zext i32 %6975 to i64
  store i64 %6976, i64* %RAX.i286, align 8
  store %struct.Memory* %loadMem_435e19, %struct.Memory** %MEMORY
  %loadMem_435e1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %6977 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6978 = getelementptr inbounds %struct.GPR, %struct.GPR* %6977, i32 0, i32 33
  %6979 = getelementptr inbounds %struct.Reg, %struct.Reg* %6978, i32 0, i32 0
  %PC.i283 = bitcast %union.anon* %6979 to i64*
  %6980 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6981 = getelementptr inbounds %struct.GPR, %struct.GPR* %6980, i32 0, i32 1
  %6982 = getelementptr inbounds %struct.Reg, %struct.Reg* %6981, i32 0, i32 0
  %RAX.i284 = bitcast %union.anon* %6982 to i64*
  %6983 = load i64, i64* %RAX.i284
  %6984 = load i64, i64* %PC.i283
  %6985 = add i64 %6984, 3
  store i64 %6985, i64* %PC.i283
  %6986 = trunc i64 %6983 to i32
  %6987 = add i32 1, %6986
  %6988 = zext i32 %6987 to i64
  store i64 %6988, i64* %RAX.i284, align 8
  %6989 = icmp ult i32 %6987, %6986
  %6990 = icmp ult i32 %6987, 1
  %6991 = or i1 %6989, %6990
  %6992 = zext i1 %6991 to i8
  %6993 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6992, i8* %6993, align 1
  %6994 = and i32 %6987, 255
  %6995 = call i32 @llvm.ctpop.i32(i32 %6994)
  %6996 = trunc i32 %6995 to i8
  %6997 = and i8 %6996, 1
  %6998 = xor i8 %6997, 1
  %6999 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6998, i8* %6999, align 1
  %7000 = xor i64 1, %6983
  %7001 = trunc i64 %7000 to i32
  %7002 = xor i32 %7001, %6987
  %7003 = lshr i32 %7002, 4
  %7004 = trunc i32 %7003 to i8
  %7005 = and i8 %7004, 1
  %7006 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7005, i8* %7006, align 1
  %7007 = icmp eq i32 %6987, 0
  %7008 = zext i1 %7007 to i8
  %7009 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7008, i8* %7009, align 1
  %7010 = lshr i32 %6987, 31
  %7011 = trunc i32 %7010 to i8
  %7012 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7011, i8* %7012, align 1
  %7013 = lshr i32 %6986, 31
  %7014 = xor i32 %7010, %7013
  %7015 = add i32 %7014, %7010
  %7016 = icmp eq i32 %7015, 2
  %7017 = zext i1 %7016 to i8
  %7018 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7017, i8* %7018, align 1
  store %struct.Memory* %loadMem_435e1c, %struct.Memory** %MEMORY
  %loadMem_435e1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %7019 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7020 = getelementptr inbounds %struct.GPR, %struct.GPR* %7019, i32 0, i32 33
  %7021 = getelementptr inbounds %struct.Reg, %struct.Reg* %7020, i32 0, i32 0
  %PC.i280 = bitcast %union.anon* %7021 to i64*
  %7022 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7023 = getelementptr inbounds %struct.GPR, %struct.GPR* %7022, i32 0, i32 1
  %7024 = getelementptr inbounds %struct.Reg, %struct.Reg* %7023, i32 0, i32 0
  %EAX.i281 = bitcast %union.anon* %7024 to i32*
  %7025 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7026 = getelementptr inbounds %struct.GPR, %struct.GPR* %7025, i32 0, i32 17
  %7027 = getelementptr inbounds %struct.Reg, %struct.Reg* %7026, i32 0, i32 0
  %R8.i282 = bitcast %union.anon* %7027 to i64*
  %7028 = load i32, i32* %EAX.i281
  %7029 = zext i32 %7028 to i64
  %7030 = load i64, i64* %PC.i280
  %7031 = add i64 %7030, 3
  store i64 %7031, i64* %PC.i280
  %7032 = shl i64 %7029, 32
  %7033 = ashr exact i64 %7032, 32
  store i64 %7033, i64* %R8.i282, align 8
  store %struct.Memory* %loadMem_435e1f, %struct.Memory** %MEMORY
  %loadMem_435e22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7034 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7035 = getelementptr inbounds %struct.GPR, %struct.GPR* %7034, i32 0, i32 33
  %7036 = getelementptr inbounds %struct.Reg, %struct.Reg* %7035, i32 0, i32 0
  %PC.i277 = bitcast %union.anon* %7036 to i64*
  %7037 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7038 = getelementptr inbounds %struct.GPR, %struct.GPR* %7037, i32 0, i32 5
  %7039 = getelementptr inbounds %struct.Reg, %struct.Reg* %7038, i32 0, i32 0
  %RCX.i278 = bitcast %union.anon* %7039 to i64*
  %7040 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7041 = getelementptr inbounds %struct.GPR, %struct.GPR* %7040, i32 0, i32 17
  %7042 = getelementptr inbounds %struct.Reg, %struct.Reg* %7041, i32 0, i32 0
  %R8.i279 = bitcast %union.anon* %7042 to i64*
  %7043 = load i64, i64* %RCX.i278
  %7044 = load i64, i64* %R8.i279
  %7045 = mul i64 %7044, 8
  %7046 = add i64 %7045, %7043
  %7047 = load i64, i64* %PC.i277
  %7048 = add i64 %7047, 4
  store i64 %7048, i64* %PC.i277
  %7049 = inttoptr i64 %7046 to i64*
  %7050 = load i64, i64* %7049
  store i64 %7050, i64* %RCX.i278, align 8
  store %struct.Memory* %loadMem_435e22, %struct.Memory** %MEMORY
  %loadMem_435e26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7051 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7052 = getelementptr inbounds %struct.GPR, %struct.GPR* %7051, i32 0, i32 33
  %7053 = getelementptr inbounds %struct.Reg, %struct.Reg* %7052, i32 0, i32 0
  %PC.i274 = bitcast %union.anon* %7053 to i64*
  %7054 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7055 = getelementptr inbounds %struct.GPR, %struct.GPR* %7054, i32 0, i32 15
  %7056 = getelementptr inbounds %struct.Reg, %struct.Reg* %7055, i32 0, i32 0
  %RBP.i275 = bitcast %union.anon* %7056 to i64*
  %7057 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7058 = getelementptr inbounds %struct.GPR, %struct.GPR* %7057, i32 0, i32 17
  %7059 = getelementptr inbounds %struct.Reg, %struct.Reg* %7058, i32 0, i32 0
  %R8.i276 = bitcast %union.anon* %7059 to i64*
  %7060 = load i64, i64* %RBP.i275
  %7061 = sub i64 %7060, 80
  %7062 = load i64, i64* %PC.i274
  %7063 = add i64 %7062, 4
  store i64 %7063, i64* %PC.i274
  %7064 = inttoptr i64 %7061 to i32*
  %7065 = load i32, i32* %7064
  %7066 = sext i32 %7065 to i64
  store i64 %7066, i64* %R8.i276, align 8
  store %struct.Memory* %loadMem_435e26, %struct.Memory** %MEMORY
  %loadMem_435e2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %7067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7068 = getelementptr inbounds %struct.GPR, %struct.GPR* %7067, i32 0, i32 33
  %7069 = getelementptr inbounds %struct.Reg, %struct.Reg* %7068, i32 0, i32 0
  %PC.i270 = bitcast %union.anon* %7069 to i64*
  %7070 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7071 = getelementptr inbounds %struct.GPR, %struct.GPR* %7070, i32 0, i32 1
  %7072 = getelementptr inbounds %struct.Reg, %struct.Reg* %7071, i32 0, i32 0
  %RAX.i271 = bitcast %union.anon* %7072 to i64*
  %7073 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7074 = getelementptr inbounds %struct.GPR, %struct.GPR* %7073, i32 0, i32 5
  %7075 = getelementptr inbounds %struct.Reg, %struct.Reg* %7074, i32 0, i32 0
  %RCX.i272 = bitcast %union.anon* %7075 to i64*
  %7076 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7077 = getelementptr inbounds %struct.GPR, %struct.GPR* %7076, i32 0, i32 17
  %7078 = getelementptr inbounds %struct.Reg, %struct.Reg* %7077, i32 0, i32 0
  %R8.i273 = bitcast %union.anon* %7078 to i64*
  %7079 = load i64, i64* %RCX.i272
  %7080 = load i64, i64* %R8.i273
  %7081 = mul i64 %7080, 4
  %7082 = add i64 %7081, %7079
  %7083 = load i64, i64* %PC.i270
  %7084 = add i64 %7083, 4
  store i64 %7084, i64* %PC.i270
  %7085 = inttoptr i64 %7082 to i32*
  %7086 = load i32, i32* %7085
  %7087 = zext i32 %7086 to i64
  store i64 %7087, i64* %RAX.i271, align 8
  store %struct.Memory* %loadMem_435e2a, %struct.Memory** %MEMORY
  %loadMem_435e2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %7088 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7089 = getelementptr inbounds %struct.GPR, %struct.GPR* %7088, i32 0, i32 33
  %7090 = getelementptr inbounds %struct.Reg, %struct.Reg* %7089, i32 0, i32 0
  %PC.i267 = bitcast %union.anon* %7090 to i64*
  %7091 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7092 = getelementptr inbounds %struct.GPR, %struct.GPR* %7091, i32 0, i32 5
  %7093 = getelementptr inbounds %struct.Reg, %struct.Reg* %7092, i32 0, i32 0
  %RCX.i268 = bitcast %union.anon* %7093 to i64*
  %7094 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7095 = getelementptr inbounds %struct.GPR, %struct.GPR* %7094, i32 0, i32 15
  %7096 = getelementptr inbounds %struct.Reg, %struct.Reg* %7095, i32 0, i32 0
  %RBP.i269 = bitcast %union.anon* %7096 to i64*
  %7097 = load i64, i64* %RBP.i269
  %7098 = sub i64 %7097, 24
  %7099 = load i64, i64* %PC.i267
  %7100 = add i64 %7099, 4
  store i64 %7100, i64* %PC.i267
  %7101 = inttoptr i64 %7098 to i64*
  %7102 = load i64, i64* %7101
  store i64 %7102, i64* %RCX.i268, align 8
  store %struct.Memory* %loadMem_435e2e, %struct.Memory** %MEMORY
  %loadMem_435e32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7104 = getelementptr inbounds %struct.GPR, %struct.GPR* %7103, i32 0, i32 33
  %7105 = getelementptr inbounds %struct.Reg, %struct.Reg* %7104, i32 0, i32 0
  %PC.i265 = bitcast %union.anon* %7105 to i64*
  %7106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7107 = getelementptr inbounds %struct.GPR, %struct.GPR* %7106, i32 0, i32 5
  %7108 = getelementptr inbounds %struct.Reg, %struct.Reg* %7107, i32 0, i32 0
  %RCX.i266 = bitcast %union.anon* %7108 to i64*
  %7109 = load i64, i64* %RCX.i266
  %7110 = add i64 %7109, 312
  %7111 = load i64, i64* %PC.i265
  %7112 = add i64 %7111, 7
  store i64 %7112, i64* %PC.i265
  %7113 = inttoptr i64 %7110 to i64*
  %7114 = load i64, i64* %7113
  store i64 %7114, i64* %RCX.i266, align 8
  store %struct.Memory* %loadMem_435e32, %struct.Memory** %MEMORY
  %loadMem_435e39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7116 = getelementptr inbounds %struct.GPR, %struct.GPR* %7115, i32 0, i32 33
  %7117 = getelementptr inbounds %struct.Reg, %struct.Reg* %7116, i32 0, i32 0
  %PC.i263 = bitcast %union.anon* %7117 to i64*
  %7118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7119 = getelementptr inbounds %struct.GPR, %struct.GPR* %7118, i32 0, i32 5
  %7120 = getelementptr inbounds %struct.Reg, %struct.Reg* %7119, i32 0, i32 0
  %RCX.i264 = bitcast %union.anon* %7120 to i64*
  %7121 = load i64, i64* %RCX.i264
  %7122 = add i64 %7121, 32
  %7123 = load i64, i64* %PC.i263
  %7124 = add i64 %7123, 4
  store i64 %7124, i64* %PC.i263
  %7125 = inttoptr i64 %7122 to i64*
  %7126 = load i64, i64* %7125
  store i64 %7126, i64* %RCX.i264, align 8
  store %struct.Memory* %loadMem_435e39, %struct.Memory** %MEMORY
  %loadMem_435e3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %7127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7128 = getelementptr inbounds %struct.GPR, %struct.GPR* %7127, i32 0, i32 33
  %7129 = getelementptr inbounds %struct.Reg, %struct.Reg* %7128, i32 0, i32 0
  %PC.i260 = bitcast %union.anon* %7129 to i64*
  %7130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7131 = getelementptr inbounds %struct.GPR, %struct.GPR* %7130, i32 0, i32 15
  %7132 = getelementptr inbounds %struct.Reg, %struct.Reg* %7131, i32 0, i32 0
  %RBP.i261 = bitcast %union.anon* %7132 to i64*
  %7133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7134 = getelementptr inbounds %struct.GPR, %struct.GPR* %7133, i32 0, i32 17
  %7135 = getelementptr inbounds %struct.Reg, %struct.Reg* %7134, i32 0, i32 0
  %R8.i262 = bitcast %union.anon* %7135 to i64*
  %7136 = load i64, i64* %RBP.i261
  %7137 = sub i64 %7136, 80
  %7138 = load i64, i64* %PC.i260
  %7139 = add i64 %7138, 4
  store i64 %7139, i64* %PC.i260
  %7140 = inttoptr i64 %7137 to i32*
  %7141 = load i32, i32* %7140
  %7142 = sext i32 %7141 to i64
  store i64 %7142, i64* %R8.i262, align 8
  store %struct.Memory* %loadMem_435e3d, %struct.Memory** %MEMORY
  %loadMem_435e41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7144 = getelementptr inbounds %struct.GPR, %struct.GPR* %7143, i32 0, i32 33
  %7145 = getelementptr inbounds %struct.Reg, %struct.Reg* %7144, i32 0, i32 0
  %PC.i256 = bitcast %union.anon* %7145 to i64*
  %7146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7147 = getelementptr inbounds %struct.GPR, %struct.GPR* %7146, i32 0, i32 1
  %7148 = getelementptr inbounds %struct.Reg, %struct.Reg* %7147, i32 0, i32 0
  %RAX.i257 = bitcast %union.anon* %7148 to i64*
  %7149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7150 = getelementptr inbounds %struct.GPR, %struct.GPR* %7149, i32 0, i32 5
  %7151 = getelementptr inbounds %struct.Reg, %struct.Reg* %7150, i32 0, i32 0
  %RCX.i258 = bitcast %union.anon* %7151 to i64*
  %7152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7153 = getelementptr inbounds %struct.GPR, %struct.GPR* %7152, i32 0, i32 17
  %7154 = getelementptr inbounds %struct.Reg, %struct.Reg* %7153, i32 0, i32 0
  %R8.i259 = bitcast %union.anon* %7154 to i64*
  %7155 = load i64, i64* %RAX.i257
  %7156 = load i64, i64* %RCX.i258
  %7157 = load i64, i64* %R8.i259
  %7158 = mul i64 %7157, 4
  %7159 = add i64 %7158, %7156
  %7160 = load i64, i64* %PC.i256
  %7161 = add i64 %7160, 4
  store i64 %7161, i64* %PC.i256
  %7162 = trunc i64 %7155 to i32
  %7163 = inttoptr i64 %7159 to i32*
  %7164 = load i32, i32* %7163
  %7165 = add i32 %7164, %7162
  %7166 = zext i32 %7165 to i64
  store i64 %7166, i64* %RAX.i257, align 8
  %7167 = icmp ult i32 %7165, %7162
  %7168 = icmp ult i32 %7165, %7164
  %7169 = or i1 %7167, %7168
  %7170 = zext i1 %7169 to i8
  %7171 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7170, i8* %7171, align 1
  %7172 = and i32 %7165, 255
  %7173 = call i32 @llvm.ctpop.i32(i32 %7172)
  %7174 = trunc i32 %7173 to i8
  %7175 = and i8 %7174, 1
  %7176 = xor i8 %7175, 1
  %7177 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7176, i8* %7177, align 1
  %7178 = xor i32 %7164, %7162
  %7179 = xor i32 %7178, %7165
  %7180 = lshr i32 %7179, 4
  %7181 = trunc i32 %7180 to i8
  %7182 = and i8 %7181, 1
  %7183 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7182, i8* %7183, align 1
  %7184 = icmp eq i32 %7165, 0
  %7185 = zext i1 %7184 to i8
  %7186 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7185, i8* %7186, align 1
  %7187 = lshr i32 %7165, 31
  %7188 = trunc i32 %7187 to i8
  %7189 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7188, i8* %7189, align 1
  %7190 = lshr i32 %7162, 31
  %7191 = lshr i32 %7164, 31
  %7192 = xor i32 %7187, %7190
  %7193 = xor i32 %7187, %7191
  %7194 = add i32 %7192, %7193
  %7195 = icmp eq i32 %7194, 2
  %7196 = zext i1 %7195 to i8
  %7197 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7196, i8* %7197, align 1
  store %struct.Memory* %loadMem_435e41, %struct.Memory** %MEMORY
  %loadMem_435e45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7199 = getelementptr inbounds %struct.GPR, %struct.GPR* %7198, i32 0, i32 33
  %7200 = getelementptr inbounds %struct.Reg, %struct.Reg* %7199, i32 0, i32 0
  %PC.i253 = bitcast %union.anon* %7200 to i64*
  %7201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7202 = getelementptr inbounds %struct.GPR, %struct.GPR* %7201, i32 0, i32 5
  %7203 = getelementptr inbounds %struct.Reg, %struct.Reg* %7202, i32 0, i32 0
  %RCX.i254 = bitcast %union.anon* %7203 to i64*
  %7204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7205 = getelementptr inbounds %struct.GPR, %struct.GPR* %7204, i32 0, i32 15
  %7206 = getelementptr inbounds %struct.Reg, %struct.Reg* %7205, i32 0, i32 0
  %RBP.i255 = bitcast %union.anon* %7206 to i64*
  %7207 = load i64, i64* %RBP.i255
  %7208 = sub i64 %7207, 56
  %7209 = load i64, i64* %PC.i253
  %7210 = add i64 %7209, 4
  store i64 %7210, i64* %PC.i253
  %7211 = inttoptr i64 %7208 to i64*
  %7212 = load i64, i64* %7211
  store i64 %7212, i64* %RCX.i254, align 8
  store %struct.Memory* %loadMem_435e45, %struct.Memory** %MEMORY
  %loadMem_435e49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7214 = getelementptr inbounds %struct.GPR, %struct.GPR* %7213, i32 0, i32 33
  %7215 = getelementptr inbounds %struct.Reg, %struct.Reg* %7214, i32 0, i32 0
  %PC.i250 = bitcast %union.anon* %7215 to i64*
  %7216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7217 = getelementptr inbounds %struct.GPR, %struct.GPR* %7216, i32 0, i32 7
  %7218 = getelementptr inbounds %struct.Reg, %struct.Reg* %7217, i32 0, i32 0
  %RDX.i251 = bitcast %union.anon* %7218 to i64*
  %7219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7220 = getelementptr inbounds %struct.GPR, %struct.GPR* %7219, i32 0, i32 15
  %7221 = getelementptr inbounds %struct.Reg, %struct.Reg* %7220, i32 0, i32 0
  %RBP.i252 = bitcast %union.anon* %7221 to i64*
  %7222 = load i64, i64* %RBP.i252
  %7223 = sub i64 %7222, 76
  %7224 = load i64, i64* %PC.i250
  %7225 = add i64 %7224, 3
  store i64 %7225, i64* %PC.i250
  %7226 = inttoptr i64 %7223 to i32*
  %7227 = load i32, i32* %7226
  %7228 = zext i32 %7227 to i64
  store i64 %7228, i64* %RDX.i251, align 8
  store %struct.Memory* %loadMem_435e49, %struct.Memory** %MEMORY
  %loadMem_435e4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %7229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7230 = getelementptr inbounds %struct.GPR, %struct.GPR* %7229, i32 0, i32 33
  %7231 = getelementptr inbounds %struct.Reg, %struct.Reg* %7230, i32 0, i32 0
  %PC.i248 = bitcast %union.anon* %7231 to i64*
  %7232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7233 = getelementptr inbounds %struct.GPR, %struct.GPR* %7232, i32 0, i32 7
  %7234 = getelementptr inbounds %struct.Reg, %struct.Reg* %7233, i32 0, i32 0
  %RDX.i249 = bitcast %union.anon* %7234 to i64*
  %7235 = load i64, i64* %RDX.i249
  %7236 = load i64, i64* %PC.i248
  %7237 = add i64 %7236, 3
  store i64 %7237, i64* %PC.i248
  %7238 = trunc i64 %7235 to i32
  %7239 = add i32 1, %7238
  %7240 = zext i32 %7239 to i64
  store i64 %7240, i64* %RDX.i249, align 8
  %7241 = icmp ult i32 %7239, %7238
  %7242 = icmp ult i32 %7239, 1
  %7243 = or i1 %7241, %7242
  %7244 = zext i1 %7243 to i8
  %7245 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7244, i8* %7245, align 1
  %7246 = and i32 %7239, 255
  %7247 = call i32 @llvm.ctpop.i32(i32 %7246)
  %7248 = trunc i32 %7247 to i8
  %7249 = and i8 %7248, 1
  %7250 = xor i8 %7249, 1
  %7251 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7250, i8* %7251, align 1
  %7252 = xor i64 1, %7235
  %7253 = trunc i64 %7252 to i32
  %7254 = xor i32 %7253, %7239
  %7255 = lshr i32 %7254, 4
  %7256 = trunc i32 %7255 to i8
  %7257 = and i8 %7256, 1
  %7258 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7257, i8* %7258, align 1
  %7259 = icmp eq i32 %7239, 0
  %7260 = zext i1 %7259 to i8
  %7261 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7260, i8* %7261, align 1
  %7262 = lshr i32 %7239, 31
  %7263 = trunc i32 %7262 to i8
  %7264 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7263, i8* %7264, align 1
  %7265 = lshr i32 %7238, 31
  %7266 = xor i32 %7262, %7265
  %7267 = add i32 %7266, %7262
  %7268 = icmp eq i32 %7267, 2
  %7269 = zext i1 %7268 to i8
  %7270 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7269, i8* %7270, align 1
  store %struct.Memory* %loadMem_435e4c, %struct.Memory** %MEMORY
  %loadMem_435e4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %7271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7272 = getelementptr inbounds %struct.GPR, %struct.GPR* %7271, i32 0, i32 33
  %7273 = getelementptr inbounds %struct.Reg, %struct.Reg* %7272, i32 0, i32 0
  %PC.i245 = bitcast %union.anon* %7273 to i64*
  %7274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7275 = getelementptr inbounds %struct.GPR, %struct.GPR* %7274, i32 0, i32 7
  %7276 = getelementptr inbounds %struct.Reg, %struct.Reg* %7275, i32 0, i32 0
  %EDX.i246 = bitcast %union.anon* %7276 to i32*
  %7277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7278 = getelementptr inbounds %struct.GPR, %struct.GPR* %7277, i32 0, i32 17
  %7279 = getelementptr inbounds %struct.Reg, %struct.Reg* %7278, i32 0, i32 0
  %R8.i247 = bitcast %union.anon* %7279 to i64*
  %7280 = load i32, i32* %EDX.i246
  %7281 = zext i32 %7280 to i64
  %7282 = load i64, i64* %PC.i245
  %7283 = add i64 %7282, 3
  store i64 %7283, i64* %PC.i245
  %7284 = shl i64 %7281, 32
  %7285 = ashr exact i64 %7284, 32
  store i64 %7285, i64* %R8.i247, align 8
  store %struct.Memory* %loadMem_435e4f, %struct.Memory** %MEMORY
  %loadMem_435e52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7287 = getelementptr inbounds %struct.GPR, %struct.GPR* %7286, i32 0, i32 33
  %7288 = getelementptr inbounds %struct.Reg, %struct.Reg* %7287, i32 0, i32 0
  %PC.i242 = bitcast %union.anon* %7288 to i64*
  %7289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7290 = getelementptr inbounds %struct.GPR, %struct.GPR* %7289, i32 0, i32 5
  %7291 = getelementptr inbounds %struct.Reg, %struct.Reg* %7290, i32 0, i32 0
  %RCX.i243 = bitcast %union.anon* %7291 to i64*
  %7292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7293 = getelementptr inbounds %struct.GPR, %struct.GPR* %7292, i32 0, i32 17
  %7294 = getelementptr inbounds %struct.Reg, %struct.Reg* %7293, i32 0, i32 0
  %R8.i244 = bitcast %union.anon* %7294 to i64*
  %7295 = load i64, i64* %RCX.i243
  %7296 = load i64, i64* %R8.i244
  %7297 = mul i64 %7296, 8
  %7298 = add i64 %7297, %7295
  %7299 = load i64, i64* %PC.i242
  %7300 = add i64 %7299, 4
  store i64 %7300, i64* %PC.i242
  %7301 = inttoptr i64 %7298 to i64*
  %7302 = load i64, i64* %7301
  store i64 %7302, i64* %RCX.i243, align 8
  store %struct.Memory* %loadMem_435e52, %struct.Memory** %MEMORY
  %loadMem_435e56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7304 = getelementptr inbounds %struct.GPR, %struct.GPR* %7303, i32 0, i32 33
  %7305 = getelementptr inbounds %struct.Reg, %struct.Reg* %7304, i32 0, i32 0
  %PC.i239 = bitcast %union.anon* %7305 to i64*
  %7306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7307 = getelementptr inbounds %struct.GPR, %struct.GPR* %7306, i32 0, i32 7
  %7308 = getelementptr inbounds %struct.Reg, %struct.Reg* %7307, i32 0, i32 0
  %RDX.i240 = bitcast %union.anon* %7308 to i64*
  %7309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7310 = getelementptr inbounds %struct.GPR, %struct.GPR* %7309, i32 0, i32 15
  %7311 = getelementptr inbounds %struct.Reg, %struct.Reg* %7310, i32 0, i32 0
  %RBP.i241 = bitcast %union.anon* %7311 to i64*
  %7312 = load i64, i64* %RBP.i241
  %7313 = sub i64 %7312, 80
  %7314 = load i64, i64* %PC.i239
  %7315 = add i64 %7314, 3
  store i64 %7315, i64* %PC.i239
  %7316 = inttoptr i64 %7313 to i32*
  %7317 = load i32, i32* %7316
  %7318 = zext i32 %7317 to i64
  store i64 %7318, i64* %RDX.i240, align 8
  store %struct.Memory* %loadMem_435e56, %struct.Memory** %MEMORY
  %loadMem_435e59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7319 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7320 = getelementptr inbounds %struct.GPR, %struct.GPR* %7319, i32 0, i32 33
  %7321 = getelementptr inbounds %struct.Reg, %struct.Reg* %7320, i32 0, i32 0
  %PC.i237 = bitcast %union.anon* %7321 to i64*
  %7322 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7323 = getelementptr inbounds %struct.GPR, %struct.GPR* %7322, i32 0, i32 7
  %7324 = getelementptr inbounds %struct.Reg, %struct.Reg* %7323, i32 0, i32 0
  %RDX.i238 = bitcast %union.anon* %7324 to i64*
  %7325 = load i64, i64* %RDX.i238
  %7326 = load i64, i64* %PC.i237
  %7327 = add i64 %7326, 3
  store i64 %7327, i64* %PC.i237
  %7328 = trunc i64 %7325 to i32
  %7329 = add i32 1, %7328
  %7330 = zext i32 %7329 to i64
  store i64 %7330, i64* %RDX.i238, align 8
  %7331 = icmp ult i32 %7329, %7328
  %7332 = icmp ult i32 %7329, 1
  %7333 = or i1 %7331, %7332
  %7334 = zext i1 %7333 to i8
  %7335 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7334, i8* %7335, align 1
  %7336 = and i32 %7329, 255
  %7337 = call i32 @llvm.ctpop.i32(i32 %7336)
  %7338 = trunc i32 %7337 to i8
  %7339 = and i8 %7338, 1
  %7340 = xor i8 %7339, 1
  %7341 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7340, i8* %7341, align 1
  %7342 = xor i64 1, %7325
  %7343 = trunc i64 %7342 to i32
  %7344 = xor i32 %7343, %7329
  %7345 = lshr i32 %7344, 4
  %7346 = trunc i32 %7345 to i8
  %7347 = and i8 %7346, 1
  %7348 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7347, i8* %7348, align 1
  %7349 = icmp eq i32 %7329, 0
  %7350 = zext i1 %7349 to i8
  %7351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7350, i8* %7351, align 1
  %7352 = lshr i32 %7329, 31
  %7353 = trunc i32 %7352 to i8
  %7354 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7353, i8* %7354, align 1
  %7355 = lshr i32 %7328, 31
  %7356 = xor i32 %7352, %7355
  %7357 = add i32 %7356, %7352
  %7358 = icmp eq i32 %7357, 2
  %7359 = zext i1 %7358 to i8
  %7360 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7359, i8* %7360, align 1
  store %struct.Memory* %loadMem_435e59, %struct.Memory** %MEMORY
  %loadMem_435e5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %7361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7362 = getelementptr inbounds %struct.GPR, %struct.GPR* %7361, i32 0, i32 33
  %7363 = getelementptr inbounds %struct.Reg, %struct.Reg* %7362, i32 0, i32 0
  %PC.i234 = bitcast %union.anon* %7363 to i64*
  %7364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7365 = getelementptr inbounds %struct.GPR, %struct.GPR* %7364, i32 0, i32 7
  %7366 = getelementptr inbounds %struct.Reg, %struct.Reg* %7365, i32 0, i32 0
  %EDX.i235 = bitcast %union.anon* %7366 to i32*
  %7367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7368 = getelementptr inbounds %struct.GPR, %struct.GPR* %7367, i32 0, i32 17
  %7369 = getelementptr inbounds %struct.Reg, %struct.Reg* %7368, i32 0, i32 0
  %R8.i236 = bitcast %union.anon* %7369 to i64*
  %7370 = load i32, i32* %EDX.i235
  %7371 = zext i32 %7370 to i64
  %7372 = load i64, i64* %PC.i234
  %7373 = add i64 %7372, 3
  store i64 %7373, i64* %PC.i234
  %7374 = shl i64 %7371, 32
  %7375 = ashr exact i64 %7374, 32
  store i64 %7375, i64* %R8.i236, align 8
  store %struct.Memory* %loadMem_435e5c, %struct.Memory** %MEMORY
  %loadMem_435e5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %7376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7377 = getelementptr inbounds %struct.GPR, %struct.GPR* %7376, i32 0, i32 33
  %7378 = getelementptr inbounds %struct.Reg, %struct.Reg* %7377, i32 0, i32 0
  %PC.i230 = bitcast %union.anon* %7378 to i64*
  %7379 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7380 = getelementptr inbounds %struct.GPR, %struct.GPR* %7379, i32 0, i32 5
  %7381 = getelementptr inbounds %struct.Reg, %struct.Reg* %7380, i32 0, i32 0
  %RCX.i231 = bitcast %union.anon* %7381 to i64*
  %7382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7383 = getelementptr inbounds %struct.GPR, %struct.GPR* %7382, i32 0, i32 7
  %7384 = getelementptr inbounds %struct.Reg, %struct.Reg* %7383, i32 0, i32 0
  %RDX.i232 = bitcast %union.anon* %7384 to i64*
  %7385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7386 = getelementptr inbounds %struct.GPR, %struct.GPR* %7385, i32 0, i32 17
  %7387 = getelementptr inbounds %struct.Reg, %struct.Reg* %7386, i32 0, i32 0
  %R8.i233 = bitcast %union.anon* %7387 to i64*
  %7388 = load i64, i64* %RCX.i231
  %7389 = load i64, i64* %R8.i233
  %7390 = mul i64 %7389, 4
  %7391 = add i64 %7390, %7388
  %7392 = load i64, i64* %PC.i230
  %7393 = add i64 %7392, 4
  store i64 %7393, i64* %PC.i230
  %7394 = inttoptr i64 %7391 to i32*
  %7395 = load i32, i32* %7394
  %7396 = zext i32 %7395 to i64
  store i64 %7396, i64* %RDX.i232, align 8
  store %struct.Memory* %loadMem_435e5f, %struct.Memory** %MEMORY
  %loadMem_435e63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7398 = getelementptr inbounds %struct.GPR, %struct.GPR* %7397, i32 0, i32 33
  %7399 = getelementptr inbounds %struct.Reg, %struct.Reg* %7398, i32 0, i32 0
  %PC.i227 = bitcast %union.anon* %7399 to i64*
  %7400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7401 = getelementptr inbounds %struct.GPR, %struct.GPR* %7400, i32 0, i32 5
  %7402 = getelementptr inbounds %struct.Reg, %struct.Reg* %7401, i32 0, i32 0
  %RCX.i228 = bitcast %union.anon* %7402 to i64*
  %7403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7404 = getelementptr inbounds %struct.GPR, %struct.GPR* %7403, i32 0, i32 15
  %7405 = getelementptr inbounds %struct.Reg, %struct.Reg* %7404, i32 0, i32 0
  %RBP.i229 = bitcast %union.anon* %7405 to i64*
  %7406 = load i64, i64* %RBP.i229
  %7407 = sub i64 %7406, 24
  %7408 = load i64, i64* %PC.i227
  %7409 = add i64 %7408, 4
  store i64 %7409, i64* %PC.i227
  %7410 = inttoptr i64 %7407 to i64*
  %7411 = load i64, i64* %7410
  store i64 %7411, i64* %RCX.i228, align 8
  store %struct.Memory* %loadMem_435e63, %struct.Memory** %MEMORY
  %loadMem_435e67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7413 = getelementptr inbounds %struct.GPR, %struct.GPR* %7412, i32 0, i32 33
  %7414 = getelementptr inbounds %struct.Reg, %struct.Reg* %7413, i32 0, i32 0
  %PC.i225 = bitcast %union.anon* %7414 to i64*
  %7415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7416 = getelementptr inbounds %struct.GPR, %struct.GPR* %7415, i32 0, i32 5
  %7417 = getelementptr inbounds %struct.Reg, %struct.Reg* %7416, i32 0, i32 0
  %RCX.i226 = bitcast %union.anon* %7417 to i64*
  %7418 = load i64, i64* %RCX.i226
  %7419 = add i64 %7418, 312
  %7420 = load i64, i64* %PC.i225
  %7421 = add i64 %7420, 7
  store i64 %7421, i64* %PC.i225
  %7422 = inttoptr i64 %7419 to i64*
  %7423 = load i64, i64* %7422
  store i64 %7423, i64* %RCX.i226, align 8
  store %struct.Memory* %loadMem_435e67, %struct.Memory** %MEMORY
  %loadMem_435e6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %7424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7425 = getelementptr inbounds %struct.GPR, %struct.GPR* %7424, i32 0, i32 33
  %7426 = getelementptr inbounds %struct.Reg, %struct.Reg* %7425, i32 0, i32 0
  %PC.i223 = bitcast %union.anon* %7426 to i64*
  %7427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7428 = getelementptr inbounds %struct.GPR, %struct.GPR* %7427, i32 0, i32 5
  %7429 = getelementptr inbounds %struct.Reg, %struct.Reg* %7428, i32 0, i32 0
  %RCX.i224 = bitcast %union.anon* %7429 to i64*
  %7430 = load i64, i64* %RCX.i224
  %7431 = add i64 %7430, 24
  %7432 = load i64, i64* %PC.i223
  %7433 = add i64 %7432, 4
  store i64 %7433, i64* %PC.i223
  %7434 = inttoptr i64 %7431 to i64*
  %7435 = load i64, i64* %7434
  store i64 %7435, i64* %RCX.i224, align 8
  store %struct.Memory* %loadMem_435e6e, %struct.Memory** %MEMORY
  %loadMem_435e72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7437 = getelementptr inbounds %struct.GPR, %struct.GPR* %7436, i32 0, i32 33
  %7438 = getelementptr inbounds %struct.Reg, %struct.Reg* %7437, i32 0, i32 0
  %PC.i220 = bitcast %union.anon* %7438 to i64*
  %7439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7440 = getelementptr inbounds %struct.GPR, %struct.GPR* %7439, i32 0, i32 15
  %7441 = getelementptr inbounds %struct.Reg, %struct.Reg* %7440, i32 0, i32 0
  %RBP.i221 = bitcast %union.anon* %7441 to i64*
  %7442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7443 = getelementptr inbounds %struct.GPR, %struct.GPR* %7442, i32 0, i32 17
  %7444 = getelementptr inbounds %struct.Reg, %struct.Reg* %7443, i32 0, i32 0
  %R8.i222 = bitcast %union.anon* %7444 to i64*
  %7445 = load i64, i64* %RBP.i221
  %7446 = sub i64 %7445, 80
  %7447 = load i64, i64* %PC.i220
  %7448 = add i64 %7447, 4
  store i64 %7448, i64* %PC.i220
  %7449 = inttoptr i64 %7446 to i32*
  %7450 = load i32, i32* %7449
  %7451 = sext i32 %7450 to i64
  store i64 %7451, i64* %R8.i222, align 8
  store %struct.Memory* %loadMem_435e72, %struct.Memory** %MEMORY
  %loadMem_435e76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7453 = getelementptr inbounds %struct.GPR, %struct.GPR* %7452, i32 0, i32 33
  %7454 = getelementptr inbounds %struct.Reg, %struct.Reg* %7453, i32 0, i32 0
  %PC.i216 = bitcast %union.anon* %7454 to i64*
  %7455 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7456 = getelementptr inbounds %struct.GPR, %struct.GPR* %7455, i32 0, i32 5
  %7457 = getelementptr inbounds %struct.Reg, %struct.Reg* %7456, i32 0, i32 0
  %RCX.i217 = bitcast %union.anon* %7457 to i64*
  %7458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7459 = getelementptr inbounds %struct.GPR, %struct.GPR* %7458, i32 0, i32 7
  %7460 = getelementptr inbounds %struct.Reg, %struct.Reg* %7459, i32 0, i32 0
  %RDX.i218 = bitcast %union.anon* %7460 to i64*
  %7461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7462 = getelementptr inbounds %struct.GPR, %struct.GPR* %7461, i32 0, i32 17
  %7463 = getelementptr inbounds %struct.Reg, %struct.Reg* %7462, i32 0, i32 0
  %R8.i219 = bitcast %union.anon* %7463 to i64*
  %7464 = load i64, i64* %RDX.i218
  %7465 = load i64, i64* %RCX.i217
  %7466 = load i64, i64* %R8.i219
  %7467 = mul i64 %7466, 4
  %7468 = add i64 %7467, %7465
  %7469 = load i64, i64* %PC.i216
  %7470 = add i64 %7469, 4
  store i64 %7470, i64* %PC.i216
  %7471 = trunc i64 %7464 to i32
  %7472 = inttoptr i64 %7468 to i32*
  %7473 = load i32, i32* %7472
  %7474 = add i32 %7473, %7471
  %7475 = zext i32 %7474 to i64
  store i64 %7475, i64* %RDX.i218, align 8
  %7476 = icmp ult i32 %7474, %7471
  %7477 = icmp ult i32 %7474, %7473
  %7478 = or i1 %7476, %7477
  %7479 = zext i1 %7478 to i8
  %7480 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7479, i8* %7480, align 1
  %7481 = and i32 %7474, 255
  %7482 = call i32 @llvm.ctpop.i32(i32 %7481)
  %7483 = trunc i32 %7482 to i8
  %7484 = and i8 %7483, 1
  %7485 = xor i8 %7484, 1
  %7486 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7485, i8* %7486, align 1
  %7487 = xor i32 %7473, %7471
  %7488 = xor i32 %7487, %7474
  %7489 = lshr i32 %7488, 4
  %7490 = trunc i32 %7489 to i8
  %7491 = and i8 %7490, 1
  %7492 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7491, i8* %7492, align 1
  %7493 = icmp eq i32 %7474, 0
  %7494 = zext i1 %7493 to i8
  %7495 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7494, i8* %7495, align 1
  %7496 = lshr i32 %7474, 31
  %7497 = trunc i32 %7496 to i8
  %7498 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7497, i8* %7498, align 1
  %7499 = lshr i32 %7471, 31
  %7500 = lshr i32 %7473, 31
  %7501 = xor i32 %7496, %7499
  %7502 = xor i32 %7496, %7500
  %7503 = add i32 %7501, %7502
  %7504 = icmp eq i32 %7503, 2
  %7505 = zext i1 %7504 to i8
  %7506 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7505, i8* %7506, align 1
  store %struct.Memory* %loadMem_435e76, %struct.Memory** %MEMORY
  %loadMem_435e7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %7507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7508 = getelementptr inbounds %struct.GPR, %struct.GPR* %7507, i32 0, i32 33
  %7509 = getelementptr inbounds %struct.Reg, %struct.Reg* %7508, i32 0, i32 0
  %PC.i213 = bitcast %union.anon* %7509 to i64*
  %7510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7511 = getelementptr inbounds %struct.GPR, %struct.GPR* %7510, i32 0, i32 1
  %7512 = getelementptr inbounds %struct.Reg, %struct.Reg* %7511, i32 0, i32 0
  %EAX.i214 = bitcast %union.anon* %7512 to i32*
  %7513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7514 = getelementptr inbounds %struct.GPR, %struct.GPR* %7513, i32 0, i32 11
  %7515 = getelementptr inbounds %struct.Reg, %struct.Reg* %7514, i32 0, i32 0
  %RDI.i215 = bitcast %union.anon* %7515 to i64*
  %7516 = load i32, i32* %EAX.i214
  %7517 = zext i32 %7516 to i64
  %7518 = load i64, i64* %PC.i213
  %7519 = add i64 %7518, 2
  store i64 %7519, i64* %PC.i213
  %7520 = and i64 %7517, 4294967295
  store i64 %7520, i64* %RDI.i215, align 8
  store %struct.Memory* %loadMem_435e7a, %struct.Memory** %MEMORY
  %loadMem_435e7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %7521 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7522 = getelementptr inbounds %struct.GPR, %struct.GPR* %7521, i32 0, i32 33
  %7523 = getelementptr inbounds %struct.Reg, %struct.Reg* %7522, i32 0, i32 0
  %PC.i210 = bitcast %union.anon* %7523 to i64*
  %7524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7525 = getelementptr inbounds %struct.GPR, %struct.GPR* %7524, i32 0, i32 7
  %7526 = getelementptr inbounds %struct.Reg, %struct.Reg* %7525, i32 0, i32 0
  %EDX.i211 = bitcast %union.anon* %7526 to i32*
  %7527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7528 = getelementptr inbounds %struct.GPR, %struct.GPR* %7527, i32 0, i32 9
  %7529 = getelementptr inbounds %struct.Reg, %struct.Reg* %7528, i32 0, i32 0
  %RSI.i212 = bitcast %union.anon* %7529 to i64*
  %7530 = load i32, i32* %EDX.i211
  %7531 = zext i32 %7530 to i64
  %7532 = load i64, i64* %PC.i210
  %7533 = add i64 %7532, 2
  store i64 %7533, i64* %PC.i210
  %7534 = and i64 %7531, 4294967295
  store i64 %7534, i64* %RSI.i212, align 8
  store %struct.Memory* %loadMem_435e7c, %struct.Memory** %MEMORY
  %loadMem1_435e7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %7535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7536 = getelementptr inbounds %struct.GPR, %struct.GPR* %7535, i32 0, i32 33
  %7537 = getelementptr inbounds %struct.Reg, %struct.Reg* %7536, i32 0, i32 0
  %PC.i209 = bitcast %union.anon* %7537 to i64*
  %7538 = load i64, i64* %PC.i209
  %7539 = add i64 %7538, -56526
  %7540 = load i64, i64* %PC.i209
  %7541 = add i64 %7540, 5
  %7542 = load i64, i64* %PC.i209
  %7543 = add i64 %7542, 5
  store i64 %7543, i64* %PC.i209
  %7544 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7545 = load i64, i64* %7544, align 8
  %7546 = add i64 %7545, -8
  %7547 = inttoptr i64 %7546 to i64*
  store i64 %7541, i64* %7547
  store i64 %7546, i64* %7544, align 8
  %7548 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7539, i64* %7548, align 8
  store %struct.Memory* %loadMem1_435e7e, %struct.Memory** %MEMORY
  %loadMem2_435e7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_435e7e = load i64, i64* %3
  %call2_435e7e = call %struct.Memory* @sub_4281b0.ILogsum(%struct.State* %0, i64 %loadPC_435e7e, %struct.Memory* %loadMem2_435e7e)
  store %struct.Memory* %call2_435e7e, %struct.Memory** %MEMORY
  %loadMem_435e83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7550 = getelementptr inbounds %struct.GPR, %struct.GPR* %7549, i32 0, i32 33
  %7551 = getelementptr inbounds %struct.Reg, %struct.Reg* %7550, i32 0, i32 0
  %PC.i206 = bitcast %union.anon* %7551 to i64*
  %7552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7553 = getelementptr inbounds %struct.GPR, %struct.GPR* %7552, i32 0, i32 5
  %7554 = getelementptr inbounds %struct.Reg, %struct.Reg* %7553, i32 0, i32 0
  %RCX.i207 = bitcast %union.anon* %7554 to i64*
  %7555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7556 = getelementptr inbounds %struct.GPR, %struct.GPR* %7555, i32 0, i32 15
  %7557 = getelementptr inbounds %struct.Reg, %struct.Reg* %7556, i32 0, i32 0
  %RBP.i208 = bitcast %union.anon* %7557 to i64*
  %7558 = load i64, i64* %RBP.i208
  %7559 = sub i64 %7558, 64
  %7560 = load i64, i64* %PC.i206
  %7561 = add i64 %7560, 4
  store i64 %7561, i64* %PC.i206
  %7562 = inttoptr i64 %7559 to i64*
  %7563 = load i64, i64* %7562
  store i64 %7563, i64* %RCX.i207, align 8
  store %struct.Memory* %loadMem_435e83, %struct.Memory** %MEMORY
  %loadMem_435e87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7565 = getelementptr inbounds %struct.GPR, %struct.GPR* %7564, i32 0, i32 33
  %7566 = getelementptr inbounds %struct.Reg, %struct.Reg* %7565, i32 0, i32 0
  %PC.i203 = bitcast %union.anon* %7566 to i64*
  %7567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7568 = getelementptr inbounds %struct.GPR, %struct.GPR* %7567, i32 0, i32 15
  %7569 = getelementptr inbounds %struct.Reg, %struct.Reg* %7568, i32 0, i32 0
  %RBP.i204 = bitcast %union.anon* %7569 to i64*
  %7570 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7571 = getelementptr inbounds %struct.GPR, %struct.GPR* %7570, i32 0, i32 17
  %7572 = getelementptr inbounds %struct.Reg, %struct.Reg* %7571, i32 0, i32 0
  %R8.i205 = bitcast %union.anon* %7572 to i64*
  %7573 = load i64, i64* %RBP.i204
  %7574 = sub i64 %7573, 76
  %7575 = load i64, i64* %PC.i203
  %7576 = add i64 %7575, 4
  store i64 %7576, i64* %PC.i203
  %7577 = inttoptr i64 %7574 to i32*
  %7578 = load i32, i32* %7577
  %7579 = sext i32 %7578 to i64
  store i64 %7579, i64* %R8.i205, align 8
  store %struct.Memory* %loadMem_435e87, %struct.Memory** %MEMORY
  %loadMem_435e8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %7580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7581 = getelementptr inbounds %struct.GPR, %struct.GPR* %7580, i32 0, i32 33
  %7582 = getelementptr inbounds %struct.Reg, %struct.Reg* %7581, i32 0, i32 0
  %PC.i200 = bitcast %union.anon* %7582 to i64*
  %7583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7584 = getelementptr inbounds %struct.GPR, %struct.GPR* %7583, i32 0, i32 5
  %7585 = getelementptr inbounds %struct.Reg, %struct.Reg* %7584, i32 0, i32 0
  %RCX.i201 = bitcast %union.anon* %7585 to i64*
  %7586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7587 = getelementptr inbounds %struct.GPR, %struct.GPR* %7586, i32 0, i32 17
  %7588 = getelementptr inbounds %struct.Reg, %struct.Reg* %7587, i32 0, i32 0
  %R8.i202 = bitcast %union.anon* %7588 to i64*
  %7589 = load i64, i64* %RCX.i201
  %7590 = load i64, i64* %R8.i202
  %7591 = mul i64 %7590, 8
  %7592 = add i64 %7591, %7589
  %7593 = load i64, i64* %PC.i200
  %7594 = add i64 %7593, 4
  store i64 %7594, i64* %PC.i200
  %7595 = inttoptr i64 %7592 to i64*
  %7596 = load i64, i64* %7595
  store i64 %7596, i64* %RCX.i201, align 8
  store %struct.Memory* %loadMem_435e8b, %struct.Memory** %MEMORY
  %loadMem_435e8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %7597 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7598 = getelementptr inbounds %struct.GPR, %struct.GPR* %7597, i32 0, i32 33
  %7599 = getelementptr inbounds %struct.Reg, %struct.Reg* %7598, i32 0, i32 0
  %PC.i197 = bitcast %union.anon* %7599 to i64*
  %7600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7601 = getelementptr inbounds %struct.GPR, %struct.GPR* %7600, i32 0, i32 15
  %7602 = getelementptr inbounds %struct.Reg, %struct.Reg* %7601, i32 0, i32 0
  %RBP.i198 = bitcast %union.anon* %7602 to i64*
  %7603 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7604 = getelementptr inbounds %struct.GPR, %struct.GPR* %7603, i32 0, i32 17
  %7605 = getelementptr inbounds %struct.Reg, %struct.Reg* %7604, i32 0, i32 0
  %R8.i199 = bitcast %union.anon* %7605 to i64*
  %7606 = load i64, i64* %RBP.i198
  %7607 = sub i64 %7606, 80
  %7608 = load i64, i64* %PC.i197
  %7609 = add i64 %7608, 4
  store i64 %7609, i64* %PC.i197
  %7610 = inttoptr i64 %7607 to i32*
  %7611 = load i32, i32* %7610
  %7612 = sext i32 %7611 to i64
  store i64 %7612, i64* %R8.i199, align 8
  store %struct.Memory* %loadMem_435e8f, %struct.Memory** %MEMORY
  %loadMem_435e93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7613 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7614 = getelementptr inbounds %struct.GPR, %struct.GPR* %7613, i32 0, i32 33
  %7615 = getelementptr inbounds %struct.Reg, %struct.Reg* %7614, i32 0, i32 0
  %PC.i193 = bitcast %union.anon* %7615 to i64*
  %7616 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7617 = getelementptr inbounds %struct.GPR, %struct.GPR* %7616, i32 0, i32 1
  %7618 = getelementptr inbounds %struct.Reg, %struct.Reg* %7617, i32 0, i32 0
  %EAX.i194 = bitcast %union.anon* %7618 to i32*
  %7619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7620 = getelementptr inbounds %struct.GPR, %struct.GPR* %7619, i32 0, i32 5
  %7621 = getelementptr inbounds %struct.Reg, %struct.Reg* %7620, i32 0, i32 0
  %RCX.i195 = bitcast %union.anon* %7621 to i64*
  %7622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7623 = getelementptr inbounds %struct.GPR, %struct.GPR* %7622, i32 0, i32 17
  %7624 = getelementptr inbounds %struct.Reg, %struct.Reg* %7623, i32 0, i32 0
  %R8.i196 = bitcast %union.anon* %7624 to i64*
  %7625 = load i64, i64* %RCX.i195
  %7626 = load i64, i64* %R8.i196
  %7627 = mul i64 %7626, 4
  %7628 = add i64 %7627, %7625
  %7629 = load i32, i32* %EAX.i194
  %7630 = zext i32 %7629 to i64
  %7631 = load i64, i64* %PC.i193
  %7632 = add i64 %7631, 4
  store i64 %7632, i64* %PC.i193
  %7633 = inttoptr i64 %7628 to i32*
  store i32 %7629, i32* %7633
  store %struct.Memory* %loadMem_435e93, %struct.Memory** %MEMORY
  %loadMem_435e97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7635 = getelementptr inbounds %struct.GPR, %struct.GPR* %7634, i32 0, i32 33
  %7636 = getelementptr inbounds %struct.Reg, %struct.Reg* %7635, i32 0, i32 0
  %PC.i190 = bitcast %union.anon* %7636 to i64*
  %7637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7638 = getelementptr inbounds %struct.GPR, %struct.GPR* %7637, i32 0, i32 5
  %7639 = getelementptr inbounds %struct.Reg, %struct.Reg* %7638, i32 0, i32 0
  %RCX.i191 = bitcast %union.anon* %7639 to i64*
  %7640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7641 = getelementptr inbounds %struct.GPR, %struct.GPR* %7640, i32 0, i32 15
  %7642 = getelementptr inbounds %struct.Reg, %struct.Reg* %7641, i32 0, i32 0
  %RBP.i192 = bitcast %union.anon* %7642 to i64*
  %7643 = load i64, i64* %RBP.i192
  %7644 = sub i64 %7643, 24
  %7645 = load i64, i64* %PC.i190
  %7646 = add i64 %7645, 4
  store i64 %7646, i64* %PC.i190
  %7647 = inttoptr i64 %7644 to i64*
  %7648 = load i64, i64* %7647
  store i64 %7648, i64* %RCX.i191, align 8
  store %struct.Memory* %loadMem_435e97, %struct.Memory** %MEMORY
  %loadMem_435e9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %7649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7650 = getelementptr inbounds %struct.GPR, %struct.GPR* %7649, i32 0, i32 33
  %7651 = getelementptr inbounds %struct.Reg, %struct.Reg* %7650, i32 0, i32 0
  %PC.i188 = bitcast %union.anon* %7651 to i64*
  %7652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7653 = getelementptr inbounds %struct.GPR, %struct.GPR* %7652, i32 0, i32 5
  %7654 = getelementptr inbounds %struct.Reg, %struct.Reg* %7653, i32 0, i32 0
  %RCX.i189 = bitcast %union.anon* %7654 to i64*
  %7655 = load i64, i64* %RCX.i189
  %7656 = add i64 %7655, 328
  %7657 = load i64, i64* %PC.i188
  %7658 = add i64 %7657, 7
  store i64 %7658, i64* %PC.i188
  %7659 = inttoptr i64 %7656 to i64*
  %7660 = load i64, i64* %7659
  store i64 %7660, i64* %RCX.i189, align 8
  store %struct.Memory* %loadMem_435e9b, %struct.Memory** %MEMORY
  %loadMem_435ea2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7662 = getelementptr inbounds %struct.GPR, %struct.GPR* %7661, i32 0, i32 33
  %7663 = getelementptr inbounds %struct.Reg, %struct.Reg* %7662, i32 0, i32 0
  %PC.i185 = bitcast %union.anon* %7663 to i64*
  %7664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7665 = getelementptr inbounds %struct.GPR, %struct.GPR* %7664, i32 0, i32 15
  %7666 = getelementptr inbounds %struct.Reg, %struct.Reg* %7665, i32 0, i32 0
  %RBP.i186 = bitcast %union.anon* %7666 to i64*
  %7667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7668 = getelementptr inbounds %struct.GPR, %struct.GPR* %7667, i32 0, i32 17
  %7669 = getelementptr inbounds %struct.Reg, %struct.Reg* %7668, i32 0, i32 0
  %R8.i187 = bitcast %union.anon* %7669 to i64*
  %7670 = load i64, i64* %RBP.i186
  %7671 = sub i64 %7670, 8
  %7672 = load i64, i64* %PC.i185
  %7673 = add i64 %7672, 4
  store i64 %7673, i64* %PC.i185
  %7674 = inttoptr i64 %7671 to i64*
  %7675 = load i64, i64* %7674
  store i64 %7675, i64* %R8.i187, align 8
  store %struct.Memory* %loadMem_435ea2, %struct.Memory** %MEMORY
  %loadMem_435ea6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7676 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7677 = getelementptr inbounds %struct.GPR, %struct.GPR* %7676, i32 0, i32 33
  %7678 = getelementptr inbounds %struct.Reg, %struct.Reg* %7677, i32 0, i32 0
  %PC.i182 = bitcast %union.anon* %7678 to i64*
  %7679 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7680 = getelementptr inbounds %struct.GPR, %struct.GPR* %7679, i32 0, i32 15
  %7681 = getelementptr inbounds %struct.Reg, %struct.Reg* %7680, i32 0, i32 0
  %RBP.i183 = bitcast %union.anon* %7681 to i64*
  %7682 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7683 = getelementptr inbounds %struct.GPR, %struct.GPR* %7682, i32 0, i32 19
  %7684 = getelementptr inbounds %struct.Reg, %struct.Reg* %7683, i32 0, i32 0
  %R9.i184 = bitcast %union.anon* %7684 to i64*
  %7685 = load i64, i64* %RBP.i183
  %7686 = sub i64 %7685, 76
  %7687 = load i64, i64* %PC.i182
  %7688 = add i64 %7687, 4
  store i64 %7688, i64* %PC.i182
  %7689 = inttoptr i64 %7686 to i32*
  %7690 = load i32, i32* %7689
  %7691 = sext i32 %7690 to i64
  store i64 %7691, i64* %R9.i184, align 8
  store %struct.Memory* %loadMem_435ea6, %struct.Memory** %MEMORY
  %loadMem_435eaa = load %struct.Memory*, %struct.Memory** %MEMORY
  %7692 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7693 = getelementptr inbounds %struct.GPR, %struct.GPR* %7692, i32 0, i32 33
  %7694 = getelementptr inbounds %struct.Reg, %struct.Reg* %7693, i32 0, i32 0
  %PC.i179 = bitcast %union.anon* %7694 to i64*
  %7695 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7696 = getelementptr inbounds %struct.GPR, %struct.GPR* %7695, i32 0, i32 1
  %7697 = getelementptr inbounds %struct.Reg, %struct.Reg* %7696, i32 0, i32 0
  %RAX.i180 = bitcast %union.anon* %7697 to i64*
  %7698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7699 = getelementptr inbounds %struct.GPR, %struct.GPR* %7698, i32 0, i32 17
  %7700 = getelementptr inbounds %struct.Reg, %struct.Reg* %7699, i32 0, i32 0
  %R8.i181 = bitcast %union.anon* %7700 to i64*
  %7701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7702 = getelementptr inbounds %struct.GPR, %struct.GPR* %7701, i32 0, i32 19
  %7703 = getelementptr inbounds %struct.Reg, %struct.Reg* %7702, i32 0, i32 0
  %R9.i = bitcast %union.anon* %7703 to i64*
  %7704 = load i64, i64* %R8.i181
  %7705 = load i64, i64* %R9.i
  %7706 = add i64 %7705, %7704
  %7707 = load i64, i64* %PC.i179
  %7708 = add i64 %7707, 5
  store i64 %7708, i64* %PC.i179
  %7709 = inttoptr i64 %7706 to i8*
  %7710 = load i8, i8* %7709
  %7711 = sext i8 %7710 to i64
  %7712 = and i64 %7711, 4294967295
  store i64 %7712, i64* %RAX.i180, align 8
  store %struct.Memory* %loadMem_435eaa, %struct.Memory** %MEMORY
  %loadMem_435eaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %7713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7714 = getelementptr inbounds %struct.GPR, %struct.GPR* %7713, i32 0, i32 33
  %7715 = getelementptr inbounds %struct.Reg, %struct.Reg* %7714, i32 0, i32 0
  %PC.i176 = bitcast %union.anon* %7715 to i64*
  %7716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7717 = getelementptr inbounds %struct.GPR, %struct.GPR* %7716, i32 0, i32 1
  %7718 = getelementptr inbounds %struct.Reg, %struct.Reg* %7717, i32 0, i32 0
  %EAX.i177 = bitcast %union.anon* %7718 to i32*
  %7719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7720 = getelementptr inbounds %struct.GPR, %struct.GPR* %7719, i32 0, i32 17
  %7721 = getelementptr inbounds %struct.Reg, %struct.Reg* %7720, i32 0, i32 0
  %R8.i178 = bitcast %union.anon* %7721 to i64*
  %7722 = load i32, i32* %EAX.i177
  %7723 = zext i32 %7722 to i64
  %7724 = load i64, i64* %PC.i176
  %7725 = add i64 %7724, 3
  store i64 %7725, i64* %PC.i176
  %7726 = shl i64 %7723, 32
  %7727 = ashr exact i64 %7726, 32
  store i64 %7727, i64* %R8.i178, align 8
  store %struct.Memory* %loadMem_435eaf, %struct.Memory** %MEMORY
  %loadMem_435eb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7729 = getelementptr inbounds %struct.GPR, %struct.GPR* %7728, i32 0, i32 33
  %7730 = getelementptr inbounds %struct.Reg, %struct.Reg* %7729, i32 0, i32 0
  %PC.i173 = bitcast %union.anon* %7730 to i64*
  %7731 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7732 = getelementptr inbounds %struct.GPR, %struct.GPR* %7731, i32 0, i32 5
  %7733 = getelementptr inbounds %struct.Reg, %struct.Reg* %7732, i32 0, i32 0
  %RCX.i174 = bitcast %union.anon* %7733 to i64*
  %7734 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7735 = getelementptr inbounds %struct.GPR, %struct.GPR* %7734, i32 0, i32 17
  %7736 = getelementptr inbounds %struct.Reg, %struct.Reg* %7735, i32 0, i32 0
  %R8.i175 = bitcast %union.anon* %7736 to i64*
  %7737 = load i64, i64* %RCX.i174
  %7738 = load i64, i64* %R8.i175
  %7739 = mul i64 %7738, 8
  %7740 = add i64 %7739, %7737
  %7741 = load i64, i64* %PC.i173
  %7742 = add i64 %7741, 4
  store i64 %7742, i64* %PC.i173
  %7743 = inttoptr i64 %7740 to i64*
  %7744 = load i64, i64* %7743
  store i64 %7744, i64* %RCX.i174, align 8
  store %struct.Memory* %loadMem_435eb2, %struct.Memory** %MEMORY
  %loadMem_435eb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7746 = getelementptr inbounds %struct.GPR, %struct.GPR* %7745, i32 0, i32 33
  %7747 = getelementptr inbounds %struct.Reg, %struct.Reg* %7746, i32 0, i32 0
  %PC.i170 = bitcast %union.anon* %7747 to i64*
  %7748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7749 = getelementptr inbounds %struct.GPR, %struct.GPR* %7748, i32 0, i32 15
  %7750 = getelementptr inbounds %struct.Reg, %struct.Reg* %7749, i32 0, i32 0
  %RBP.i171 = bitcast %union.anon* %7750 to i64*
  %7751 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7752 = getelementptr inbounds %struct.GPR, %struct.GPR* %7751, i32 0, i32 17
  %7753 = getelementptr inbounds %struct.Reg, %struct.Reg* %7752, i32 0, i32 0
  %R8.i172 = bitcast %union.anon* %7753 to i64*
  %7754 = load i64, i64* %RBP.i171
  %7755 = sub i64 %7754, 80
  %7756 = load i64, i64* %PC.i170
  %7757 = add i64 %7756, 4
  store i64 %7757, i64* %PC.i170
  %7758 = inttoptr i64 %7755 to i32*
  %7759 = load i32, i32* %7758
  %7760 = sext i32 %7759 to i64
  store i64 %7760, i64* %R8.i172, align 8
  store %struct.Memory* %loadMem_435eb6, %struct.Memory** %MEMORY
  %loadMem_435eba = load %struct.Memory*, %struct.Memory** %MEMORY
  %7761 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7762 = getelementptr inbounds %struct.GPR, %struct.GPR* %7761, i32 0, i32 33
  %7763 = getelementptr inbounds %struct.Reg, %struct.Reg* %7762, i32 0, i32 0
  %PC.i166 = bitcast %union.anon* %7763 to i64*
  %7764 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7765 = getelementptr inbounds %struct.GPR, %struct.GPR* %7764, i32 0, i32 1
  %7766 = getelementptr inbounds %struct.Reg, %struct.Reg* %7765, i32 0, i32 0
  %RAX.i167 = bitcast %union.anon* %7766 to i64*
  %7767 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7768 = getelementptr inbounds %struct.GPR, %struct.GPR* %7767, i32 0, i32 5
  %7769 = getelementptr inbounds %struct.Reg, %struct.Reg* %7768, i32 0, i32 0
  %RCX.i168 = bitcast %union.anon* %7769 to i64*
  %7770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7771 = getelementptr inbounds %struct.GPR, %struct.GPR* %7770, i32 0, i32 17
  %7772 = getelementptr inbounds %struct.Reg, %struct.Reg* %7771, i32 0, i32 0
  %R8.i169 = bitcast %union.anon* %7772 to i64*
  %7773 = load i64, i64* %RCX.i168
  %7774 = load i64, i64* %R8.i169
  %7775 = mul i64 %7774, 4
  %7776 = add i64 %7775, %7773
  %7777 = load i64, i64* %PC.i166
  %7778 = add i64 %7777, 4
  store i64 %7778, i64* %PC.i166
  %7779 = inttoptr i64 %7776 to i32*
  %7780 = load i32, i32* %7779
  %7781 = zext i32 %7780 to i64
  store i64 %7781, i64* %RAX.i167, align 8
  store %struct.Memory* %loadMem_435eba, %struct.Memory** %MEMORY
  %loadMem_435ebe = load %struct.Memory*, %struct.Memory** %MEMORY
  %7782 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7783 = getelementptr inbounds %struct.GPR, %struct.GPR* %7782, i32 0, i32 33
  %7784 = getelementptr inbounds %struct.Reg, %struct.Reg* %7783, i32 0, i32 0
  %PC.i163 = bitcast %union.anon* %7784 to i64*
  %7785 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7786 = getelementptr inbounds %struct.GPR, %struct.GPR* %7785, i32 0, i32 5
  %7787 = getelementptr inbounds %struct.Reg, %struct.Reg* %7786, i32 0, i32 0
  %RCX.i164 = bitcast %union.anon* %7787 to i64*
  %7788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7789 = getelementptr inbounds %struct.GPR, %struct.GPR* %7788, i32 0, i32 15
  %7790 = getelementptr inbounds %struct.Reg, %struct.Reg* %7789, i32 0, i32 0
  %RBP.i165 = bitcast %union.anon* %7790 to i64*
  %7791 = load i64, i64* %RBP.i165
  %7792 = sub i64 %7791, 64
  %7793 = load i64, i64* %PC.i163
  %7794 = add i64 %7793, 4
  store i64 %7794, i64* %PC.i163
  %7795 = inttoptr i64 %7792 to i64*
  %7796 = load i64, i64* %7795
  store i64 %7796, i64* %RCX.i164, align 8
  store %struct.Memory* %loadMem_435ebe, %struct.Memory** %MEMORY
  %loadMem_435ec2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7797 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7798 = getelementptr inbounds %struct.GPR, %struct.GPR* %7797, i32 0, i32 33
  %7799 = getelementptr inbounds %struct.Reg, %struct.Reg* %7798, i32 0, i32 0
  %PC.i160 = bitcast %union.anon* %7799 to i64*
  %7800 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7801 = getelementptr inbounds %struct.GPR, %struct.GPR* %7800, i32 0, i32 15
  %7802 = getelementptr inbounds %struct.Reg, %struct.Reg* %7801, i32 0, i32 0
  %RBP.i161 = bitcast %union.anon* %7802 to i64*
  %7803 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7804 = getelementptr inbounds %struct.GPR, %struct.GPR* %7803, i32 0, i32 17
  %7805 = getelementptr inbounds %struct.Reg, %struct.Reg* %7804, i32 0, i32 0
  %R8.i162 = bitcast %union.anon* %7805 to i64*
  %7806 = load i64, i64* %RBP.i161
  %7807 = sub i64 %7806, 76
  %7808 = load i64, i64* %PC.i160
  %7809 = add i64 %7808, 4
  store i64 %7809, i64* %PC.i160
  %7810 = inttoptr i64 %7807 to i32*
  %7811 = load i32, i32* %7810
  %7812 = sext i32 %7811 to i64
  store i64 %7812, i64* %R8.i162, align 8
  store %struct.Memory* %loadMem_435ec2, %struct.Memory** %MEMORY
  %loadMem_435ec6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7813 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7814 = getelementptr inbounds %struct.GPR, %struct.GPR* %7813, i32 0, i32 33
  %7815 = getelementptr inbounds %struct.Reg, %struct.Reg* %7814, i32 0, i32 0
  %PC.i157 = bitcast %union.anon* %7815 to i64*
  %7816 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7817 = getelementptr inbounds %struct.GPR, %struct.GPR* %7816, i32 0, i32 5
  %7818 = getelementptr inbounds %struct.Reg, %struct.Reg* %7817, i32 0, i32 0
  %RCX.i158 = bitcast %union.anon* %7818 to i64*
  %7819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7820 = getelementptr inbounds %struct.GPR, %struct.GPR* %7819, i32 0, i32 17
  %7821 = getelementptr inbounds %struct.Reg, %struct.Reg* %7820, i32 0, i32 0
  %R8.i159 = bitcast %union.anon* %7821 to i64*
  %7822 = load i64, i64* %RCX.i158
  %7823 = load i64, i64* %R8.i159
  %7824 = mul i64 %7823, 8
  %7825 = add i64 %7824, %7822
  %7826 = load i64, i64* %PC.i157
  %7827 = add i64 %7826, 4
  store i64 %7827, i64* %PC.i157
  %7828 = inttoptr i64 %7825 to i64*
  %7829 = load i64, i64* %7828
  store i64 %7829, i64* %RCX.i158, align 8
  store %struct.Memory* %loadMem_435ec6, %struct.Memory** %MEMORY
  %loadMem_435eca = load %struct.Memory*, %struct.Memory** %MEMORY
  %7830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7831 = getelementptr inbounds %struct.GPR, %struct.GPR* %7830, i32 0, i32 33
  %7832 = getelementptr inbounds %struct.Reg, %struct.Reg* %7831, i32 0, i32 0
  %PC.i154 = bitcast %union.anon* %7832 to i64*
  %7833 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7834 = getelementptr inbounds %struct.GPR, %struct.GPR* %7833, i32 0, i32 15
  %7835 = getelementptr inbounds %struct.Reg, %struct.Reg* %7834, i32 0, i32 0
  %RBP.i155 = bitcast %union.anon* %7835 to i64*
  %7836 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7837 = getelementptr inbounds %struct.GPR, %struct.GPR* %7836, i32 0, i32 17
  %7838 = getelementptr inbounds %struct.Reg, %struct.Reg* %7837, i32 0, i32 0
  %R8.i156 = bitcast %union.anon* %7838 to i64*
  %7839 = load i64, i64* %RBP.i155
  %7840 = sub i64 %7839, 80
  %7841 = load i64, i64* %PC.i154
  %7842 = add i64 %7841, 4
  store i64 %7842, i64* %PC.i154
  %7843 = inttoptr i64 %7840 to i32*
  %7844 = load i32, i32* %7843
  %7845 = sext i32 %7844 to i64
  store i64 %7845, i64* %R8.i156, align 8
  store %struct.Memory* %loadMem_435eca, %struct.Memory** %MEMORY
  %loadMem_435ece = load %struct.Memory*, %struct.Memory** %MEMORY
  %7846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7847 = getelementptr inbounds %struct.GPR, %struct.GPR* %7846, i32 0, i32 33
  %7848 = getelementptr inbounds %struct.Reg, %struct.Reg* %7847, i32 0, i32 0
  %PC.i150 = bitcast %union.anon* %7848 to i64*
  %7849 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7850 = getelementptr inbounds %struct.GPR, %struct.GPR* %7849, i32 0, i32 1
  %7851 = getelementptr inbounds %struct.Reg, %struct.Reg* %7850, i32 0, i32 0
  %RAX.i151 = bitcast %union.anon* %7851 to i64*
  %7852 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7853 = getelementptr inbounds %struct.GPR, %struct.GPR* %7852, i32 0, i32 5
  %7854 = getelementptr inbounds %struct.Reg, %struct.Reg* %7853, i32 0, i32 0
  %RCX.i152 = bitcast %union.anon* %7854 to i64*
  %7855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7856 = getelementptr inbounds %struct.GPR, %struct.GPR* %7855, i32 0, i32 17
  %7857 = getelementptr inbounds %struct.Reg, %struct.Reg* %7856, i32 0, i32 0
  %R8.i153 = bitcast %union.anon* %7857 to i64*
  %7858 = load i64, i64* %RAX.i151
  %7859 = load i64, i64* %RCX.i152
  %7860 = load i64, i64* %R8.i153
  %7861 = mul i64 %7860, 4
  %7862 = add i64 %7861, %7859
  %7863 = load i64, i64* %PC.i150
  %7864 = add i64 %7863, 4
  store i64 %7864, i64* %PC.i150
  %7865 = trunc i64 %7858 to i32
  %7866 = inttoptr i64 %7862 to i32*
  %7867 = load i32, i32* %7866
  %7868 = add i32 %7867, %7865
  %7869 = zext i32 %7868 to i64
  store i64 %7869, i64* %RAX.i151, align 8
  %7870 = icmp ult i32 %7868, %7865
  %7871 = icmp ult i32 %7868, %7867
  %7872 = or i1 %7870, %7871
  %7873 = zext i1 %7872 to i8
  %7874 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7873, i8* %7874, align 1
  %7875 = and i32 %7868, 255
  %7876 = call i32 @llvm.ctpop.i32(i32 %7875)
  %7877 = trunc i32 %7876 to i8
  %7878 = and i8 %7877, 1
  %7879 = xor i8 %7878, 1
  %7880 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7879, i8* %7880, align 1
  %7881 = xor i32 %7867, %7865
  %7882 = xor i32 %7881, %7868
  %7883 = lshr i32 %7882, 4
  %7884 = trunc i32 %7883 to i8
  %7885 = and i8 %7884, 1
  %7886 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7885, i8* %7886, align 1
  %7887 = icmp eq i32 %7868, 0
  %7888 = zext i1 %7887 to i8
  %7889 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7888, i8* %7889, align 1
  %7890 = lshr i32 %7868, 31
  %7891 = trunc i32 %7890 to i8
  %7892 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7891, i8* %7892, align 1
  %7893 = lshr i32 %7865, 31
  %7894 = lshr i32 %7867, 31
  %7895 = xor i32 %7890, %7893
  %7896 = xor i32 %7890, %7894
  %7897 = add i32 %7895, %7896
  %7898 = icmp eq i32 %7897, 2
  %7899 = zext i1 %7898 to i8
  %7900 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7899, i8* %7900, align 1
  store %struct.Memory* %loadMem_435ece, %struct.Memory** %MEMORY
  %loadMem_435ed2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7902 = getelementptr inbounds %struct.GPR, %struct.GPR* %7901, i32 0, i32 33
  %7903 = getelementptr inbounds %struct.Reg, %struct.Reg* %7902, i32 0, i32 0
  %PC.i146 = bitcast %union.anon* %7903 to i64*
  %7904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7905 = getelementptr inbounds %struct.GPR, %struct.GPR* %7904, i32 0, i32 1
  %7906 = getelementptr inbounds %struct.Reg, %struct.Reg* %7905, i32 0, i32 0
  %EAX.i147 = bitcast %union.anon* %7906 to i32*
  %7907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7908 = getelementptr inbounds %struct.GPR, %struct.GPR* %7907, i32 0, i32 5
  %7909 = getelementptr inbounds %struct.Reg, %struct.Reg* %7908, i32 0, i32 0
  %RCX.i148 = bitcast %union.anon* %7909 to i64*
  %7910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7911 = getelementptr inbounds %struct.GPR, %struct.GPR* %7910, i32 0, i32 17
  %7912 = getelementptr inbounds %struct.Reg, %struct.Reg* %7911, i32 0, i32 0
  %R8.i149 = bitcast %union.anon* %7912 to i64*
  %7913 = load i64, i64* %RCX.i148
  %7914 = load i64, i64* %R8.i149
  %7915 = mul i64 %7914, 4
  %7916 = add i64 %7915, %7913
  %7917 = load i32, i32* %EAX.i147
  %7918 = zext i32 %7917 to i64
  %7919 = load i64, i64* %PC.i146
  %7920 = add i64 %7919, 4
  store i64 %7920, i64* %PC.i146
  %7921 = inttoptr i64 %7916 to i32*
  store i32 %7917, i32* %7921
  store %struct.Memory* %loadMem_435ed2, %struct.Memory** %MEMORY
  %loadMem_435ed6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7922 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7923 = getelementptr inbounds %struct.GPR, %struct.GPR* %7922, i32 0, i32 33
  %7924 = getelementptr inbounds %struct.Reg, %struct.Reg* %7923, i32 0, i32 0
  %PC.i143 = bitcast %union.anon* %7924 to i64*
  %7925 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7926 = getelementptr inbounds %struct.GPR, %struct.GPR* %7925, i32 0, i32 5
  %7927 = getelementptr inbounds %struct.Reg, %struct.Reg* %7926, i32 0, i32 0
  %RCX.i144 = bitcast %union.anon* %7927 to i64*
  %7928 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7929 = getelementptr inbounds %struct.GPR, %struct.GPR* %7928, i32 0, i32 15
  %7930 = getelementptr inbounds %struct.Reg, %struct.Reg* %7929, i32 0, i32 0
  %RBP.i145 = bitcast %union.anon* %7930 to i64*
  %7931 = load i64, i64* %RBP.i145
  %7932 = sub i64 %7931, 72
  %7933 = load i64, i64* %PC.i143
  %7934 = add i64 %7933, 4
  store i64 %7934, i64* %PC.i143
  %7935 = inttoptr i64 %7932 to i64*
  %7936 = load i64, i64* %7935
  store i64 %7936, i64* %RCX.i144, align 8
  store %struct.Memory* %loadMem_435ed6, %struct.Memory** %MEMORY
  %loadMem_435eda = load %struct.Memory*, %struct.Memory** %MEMORY
  %7937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7938 = getelementptr inbounds %struct.GPR, %struct.GPR* %7937, i32 0, i32 33
  %7939 = getelementptr inbounds %struct.Reg, %struct.Reg* %7938, i32 0, i32 0
  %PC.i140 = bitcast %union.anon* %7939 to i64*
  %7940 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7941 = getelementptr inbounds %struct.GPR, %struct.GPR* %7940, i32 0, i32 15
  %7942 = getelementptr inbounds %struct.Reg, %struct.Reg* %7941, i32 0, i32 0
  %RBP.i141 = bitcast %union.anon* %7942 to i64*
  %7943 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7944 = getelementptr inbounds %struct.GPR, %struct.GPR* %7943, i32 0, i32 17
  %7945 = getelementptr inbounds %struct.Reg, %struct.Reg* %7944, i32 0, i32 0
  %R8.i142 = bitcast %union.anon* %7945 to i64*
  %7946 = load i64, i64* %RBP.i141
  %7947 = sub i64 %7946, 76
  %7948 = load i64, i64* %PC.i140
  %7949 = add i64 %7948, 4
  store i64 %7949, i64* %PC.i140
  %7950 = inttoptr i64 %7947 to i32*
  %7951 = load i32, i32* %7950
  %7952 = sext i32 %7951 to i64
  store i64 %7952, i64* %R8.i142, align 8
  store %struct.Memory* %loadMem_435eda, %struct.Memory** %MEMORY
  %loadMem_435ede = load %struct.Memory*, %struct.Memory** %MEMORY
  %7953 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7954 = getelementptr inbounds %struct.GPR, %struct.GPR* %7953, i32 0, i32 33
  %7955 = getelementptr inbounds %struct.Reg, %struct.Reg* %7954, i32 0, i32 0
  %PC.i137 = bitcast %union.anon* %7955 to i64*
  %7956 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7957 = getelementptr inbounds %struct.GPR, %struct.GPR* %7956, i32 0, i32 5
  %7958 = getelementptr inbounds %struct.Reg, %struct.Reg* %7957, i32 0, i32 0
  %RCX.i138 = bitcast %union.anon* %7958 to i64*
  %7959 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7960 = getelementptr inbounds %struct.GPR, %struct.GPR* %7959, i32 0, i32 17
  %7961 = getelementptr inbounds %struct.Reg, %struct.Reg* %7960, i32 0, i32 0
  %R8.i139 = bitcast %union.anon* %7961 to i64*
  %7962 = load i64, i64* %RCX.i138
  %7963 = load i64, i64* %R8.i139
  %7964 = mul i64 %7963, 8
  %7965 = add i64 %7964, %7962
  %7966 = load i64, i64* %PC.i137
  %7967 = add i64 %7966, 4
  store i64 %7967, i64* %PC.i137
  %7968 = inttoptr i64 %7965 to i64*
  %7969 = load i64, i64* %7968
  store i64 %7969, i64* %RCX.i138, align 8
  store %struct.Memory* %loadMem_435ede, %struct.Memory** %MEMORY
  %loadMem_435ee2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7971 = getelementptr inbounds %struct.GPR, %struct.GPR* %7970, i32 0, i32 33
  %7972 = getelementptr inbounds %struct.Reg, %struct.Reg* %7971, i32 0, i32 0
  %PC.i134 = bitcast %union.anon* %7972 to i64*
  %7973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7974 = getelementptr inbounds %struct.GPR, %struct.GPR* %7973, i32 0, i32 1
  %7975 = getelementptr inbounds %struct.Reg, %struct.Reg* %7974, i32 0, i32 0
  %RAX.i135 = bitcast %union.anon* %7975 to i64*
  %7976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7977 = getelementptr inbounds %struct.GPR, %struct.GPR* %7976, i32 0, i32 15
  %7978 = getelementptr inbounds %struct.Reg, %struct.Reg* %7977, i32 0, i32 0
  %RBP.i136 = bitcast %union.anon* %7978 to i64*
  %7979 = load i64, i64* %RBP.i136
  %7980 = sub i64 %7979, 80
  %7981 = load i64, i64* %PC.i134
  %7982 = add i64 %7981, 3
  store i64 %7982, i64* %PC.i134
  %7983 = inttoptr i64 %7980 to i32*
  %7984 = load i32, i32* %7983
  %7985 = zext i32 %7984 to i64
  store i64 %7985, i64* %RAX.i135, align 8
  store %struct.Memory* %loadMem_435ee2, %struct.Memory** %MEMORY
  %loadMem_435ee5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7987 = getelementptr inbounds %struct.GPR, %struct.GPR* %7986, i32 0, i32 33
  %7988 = getelementptr inbounds %struct.Reg, %struct.Reg* %7987, i32 0, i32 0
  %PC.i132 = bitcast %union.anon* %7988 to i64*
  %7989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7990 = getelementptr inbounds %struct.GPR, %struct.GPR* %7989, i32 0, i32 1
  %7991 = getelementptr inbounds %struct.Reg, %struct.Reg* %7990, i32 0, i32 0
  %RAX.i133 = bitcast %union.anon* %7991 to i64*
  %7992 = load i64, i64* %RAX.i133
  %7993 = load i64, i64* %PC.i132
  %7994 = add i64 %7993, 3
  store i64 %7994, i64* %PC.i132
  %7995 = trunc i64 %7992 to i32
  %7996 = add i32 1, %7995
  %7997 = zext i32 %7996 to i64
  store i64 %7997, i64* %RAX.i133, align 8
  %7998 = icmp ult i32 %7996, %7995
  %7999 = icmp ult i32 %7996, 1
  %8000 = or i1 %7998, %7999
  %8001 = zext i1 %8000 to i8
  %8002 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8001, i8* %8002, align 1
  %8003 = and i32 %7996, 255
  %8004 = call i32 @llvm.ctpop.i32(i32 %8003)
  %8005 = trunc i32 %8004 to i8
  %8006 = and i8 %8005, 1
  %8007 = xor i8 %8006, 1
  %8008 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8007, i8* %8008, align 1
  %8009 = xor i64 1, %7992
  %8010 = trunc i64 %8009 to i32
  %8011 = xor i32 %8010, %7996
  %8012 = lshr i32 %8011, 4
  %8013 = trunc i32 %8012 to i8
  %8014 = and i8 %8013, 1
  %8015 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8014, i8* %8015, align 1
  %8016 = icmp eq i32 %7996, 0
  %8017 = zext i1 %8016 to i8
  %8018 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8017, i8* %8018, align 1
  %8019 = lshr i32 %7996, 31
  %8020 = trunc i32 %8019 to i8
  %8021 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8020, i8* %8021, align 1
  %8022 = lshr i32 %7995, 31
  %8023 = xor i32 %8019, %8022
  %8024 = add i32 %8023, %8019
  %8025 = icmp eq i32 %8024, 2
  %8026 = zext i1 %8025 to i8
  %8027 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8026, i8* %8027, align 1
  store %struct.Memory* %loadMem_435ee5, %struct.Memory** %MEMORY
  %loadMem_435ee8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8028 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8029 = getelementptr inbounds %struct.GPR, %struct.GPR* %8028, i32 0, i32 33
  %8030 = getelementptr inbounds %struct.Reg, %struct.Reg* %8029, i32 0, i32 0
  %PC.i129 = bitcast %union.anon* %8030 to i64*
  %8031 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8032 = getelementptr inbounds %struct.GPR, %struct.GPR* %8031, i32 0, i32 1
  %8033 = getelementptr inbounds %struct.Reg, %struct.Reg* %8032, i32 0, i32 0
  %EAX.i130 = bitcast %union.anon* %8033 to i32*
  %8034 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8035 = getelementptr inbounds %struct.GPR, %struct.GPR* %8034, i32 0, i32 17
  %8036 = getelementptr inbounds %struct.Reg, %struct.Reg* %8035, i32 0, i32 0
  %R8.i131 = bitcast %union.anon* %8036 to i64*
  %8037 = load i32, i32* %EAX.i130
  %8038 = zext i32 %8037 to i64
  %8039 = load i64, i64* %PC.i129
  %8040 = add i64 %8039, 3
  store i64 %8040, i64* %PC.i129
  %8041 = shl i64 %8038, 32
  %8042 = ashr exact i64 %8041, 32
  store i64 %8042, i64* %R8.i131, align 8
  store %struct.Memory* %loadMem_435ee8, %struct.Memory** %MEMORY
  %loadMem_435eeb = load %struct.Memory*, %struct.Memory** %MEMORY
  %8043 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8044 = getelementptr inbounds %struct.GPR, %struct.GPR* %8043, i32 0, i32 33
  %8045 = getelementptr inbounds %struct.Reg, %struct.Reg* %8044, i32 0, i32 0
  %PC.i125 = bitcast %union.anon* %8045 to i64*
  %8046 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8047 = getelementptr inbounds %struct.GPR, %struct.GPR* %8046, i32 0, i32 1
  %8048 = getelementptr inbounds %struct.Reg, %struct.Reg* %8047, i32 0, i32 0
  %RAX.i126 = bitcast %union.anon* %8048 to i64*
  %8049 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8050 = getelementptr inbounds %struct.GPR, %struct.GPR* %8049, i32 0, i32 5
  %8051 = getelementptr inbounds %struct.Reg, %struct.Reg* %8050, i32 0, i32 0
  %RCX.i127 = bitcast %union.anon* %8051 to i64*
  %8052 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8053 = getelementptr inbounds %struct.GPR, %struct.GPR* %8052, i32 0, i32 17
  %8054 = getelementptr inbounds %struct.Reg, %struct.Reg* %8053, i32 0, i32 0
  %R8.i128 = bitcast %union.anon* %8054 to i64*
  %8055 = load i64, i64* %RCX.i127
  %8056 = load i64, i64* %R8.i128
  %8057 = mul i64 %8056, 4
  %8058 = add i64 %8057, %8055
  %8059 = load i64, i64* %PC.i125
  %8060 = add i64 %8059, 4
  store i64 %8060, i64* %PC.i125
  %8061 = inttoptr i64 %8058 to i32*
  %8062 = load i32, i32* %8061
  %8063 = zext i32 %8062 to i64
  store i64 %8063, i64* %RAX.i126, align 8
  store %struct.Memory* %loadMem_435eeb, %struct.Memory** %MEMORY
  %loadMem_435eef = load %struct.Memory*, %struct.Memory** %MEMORY
  %8064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8065 = getelementptr inbounds %struct.GPR, %struct.GPR* %8064, i32 0, i32 33
  %8066 = getelementptr inbounds %struct.Reg, %struct.Reg* %8065, i32 0, i32 0
  %PC.i122 = bitcast %union.anon* %8066 to i64*
  %8067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8068 = getelementptr inbounds %struct.GPR, %struct.GPR* %8067, i32 0, i32 5
  %8069 = getelementptr inbounds %struct.Reg, %struct.Reg* %8068, i32 0, i32 0
  %RCX.i123 = bitcast %union.anon* %8069 to i64*
  %8070 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8071 = getelementptr inbounds %struct.GPR, %struct.GPR* %8070, i32 0, i32 15
  %8072 = getelementptr inbounds %struct.Reg, %struct.Reg* %8071, i32 0, i32 0
  %RBP.i124 = bitcast %union.anon* %8072 to i64*
  %8073 = load i64, i64* %RBP.i124
  %8074 = sub i64 %8073, 24
  %8075 = load i64, i64* %PC.i122
  %8076 = add i64 %8075, 4
  store i64 %8076, i64* %PC.i122
  %8077 = inttoptr i64 %8074 to i64*
  %8078 = load i64, i64* %8077
  store i64 %8078, i64* %RCX.i123, align 8
  store %struct.Memory* %loadMem_435eef, %struct.Memory** %MEMORY
  %loadMem_435ef3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8079 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8080 = getelementptr inbounds %struct.GPR, %struct.GPR* %8079, i32 0, i32 33
  %8081 = getelementptr inbounds %struct.Reg, %struct.Reg* %8080, i32 0, i32 0
  %PC.i120 = bitcast %union.anon* %8081 to i64*
  %8082 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8083 = getelementptr inbounds %struct.GPR, %struct.GPR* %8082, i32 0, i32 5
  %8084 = getelementptr inbounds %struct.Reg, %struct.Reg* %8083, i32 0, i32 0
  %RCX.i121 = bitcast %union.anon* %8084 to i64*
  %8085 = load i64, i64* %RCX.i121
  %8086 = add i64 %8085, 312
  %8087 = load i64, i64* %PC.i120
  %8088 = add i64 %8087, 7
  store i64 %8088, i64* %PC.i120
  %8089 = inttoptr i64 %8086 to i64*
  %8090 = load i64, i64* %8089
  store i64 %8090, i64* %RCX.i121, align 8
  store %struct.Memory* %loadMem_435ef3, %struct.Memory** %MEMORY
  %loadMem_435efa = load %struct.Memory*, %struct.Memory** %MEMORY
  %8091 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8092 = getelementptr inbounds %struct.GPR, %struct.GPR* %8091, i32 0, i32 33
  %8093 = getelementptr inbounds %struct.Reg, %struct.Reg* %8092, i32 0, i32 0
  %PC.i118 = bitcast %union.anon* %8093 to i64*
  %8094 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8095 = getelementptr inbounds %struct.GPR, %struct.GPR* %8094, i32 0, i32 5
  %8096 = getelementptr inbounds %struct.Reg, %struct.Reg* %8095, i32 0, i32 0
  %RCX.i119 = bitcast %union.anon* %8096 to i64*
  %8097 = load i64, i64* %RCX.i119
  %8098 = add i64 %8097, 48
  %8099 = load i64, i64* %PC.i118
  %8100 = add i64 %8099, 4
  store i64 %8100, i64* %PC.i118
  %8101 = inttoptr i64 %8098 to i64*
  %8102 = load i64, i64* %8101
  store i64 %8102, i64* %RCX.i119, align 8
  store %struct.Memory* %loadMem_435efa, %struct.Memory** %MEMORY
  %loadMem_435efe = load %struct.Memory*, %struct.Memory** %MEMORY
  %8103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8104 = getelementptr inbounds %struct.GPR, %struct.GPR* %8103, i32 0, i32 33
  %8105 = getelementptr inbounds %struct.Reg, %struct.Reg* %8104, i32 0, i32 0
  %PC.i115 = bitcast %union.anon* %8105 to i64*
  %8106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8107 = getelementptr inbounds %struct.GPR, %struct.GPR* %8106, i32 0, i32 15
  %8108 = getelementptr inbounds %struct.Reg, %struct.Reg* %8107, i32 0, i32 0
  %RBP.i116 = bitcast %union.anon* %8108 to i64*
  %8109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8110 = getelementptr inbounds %struct.GPR, %struct.GPR* %8109, i32 0, i32 17
  %8111 = getelementptr inbounds %struct.Reg, %struct.Reg* %8110, i32 0, i32 0
  %R8.i117 = bitcast %union.anon* %8111 to i64*
  %8112 = load i64, i64* %RBP.i116
  %8113 = sub i64 %8112, 80
  %8114 = load i64, i64* %PC.i115
  %8115 = add i64 %8114, 4
  store i64 %8115, i64* %PC.i115
  %8116 = inttoptr i64 %8113 to i32*
  %8117 = load i32, i32* %8116
  %8118 = sext i32 %8117 to i64
  store i64 %8118, i64* %R8.i117, align 8
  store %struct.Memory* %loadMem_435efe, %struct.Memory** %MEMORY
  %loadMem_435f02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8120 = getelementptr inbounds %struct.GPR, %struct.GPR* %8119, i32 0, i32 33
  %8121 = getelementptr inbounds %struct.Reg, %struct.Reg* %8120, i32 0, i32 0
  %PC.i111 = bitcast %union.anon* %8121 to i64*
  %8122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8123 = getelementptr inbounds %struct.GPR, %struct.GPR* %8122, i32 0, i32 1
  %8124 = getelementptr inbounds %struct.Reg, %struct.Reg* %8123, i32 0, i32 0
  %RAX.i112 = bitcast %union.anon* %8124 to i64*
  %8125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8126 = getelementptr inbounds %struct.GPR, %struct.GPR* %8125, i32 0, i32 5
  %8127 = getelementptr inbounds %struct.Reg, %struct.Reg* %8126, i32 0, i32 0
  %RCX.i113 = bitcast %union.anon* %8127 to i64*
  %8128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8129 = getelementptr inbounds %struct.GPR, %struct.GPR* %8128, i32 0, i32 17
  %8130 = getelementptr inbounds %struct.Reg, %struct.Reg* %8129, i32 0, i32 0
  %R8.i114 = bitcast %union.anon* %8130 to i64*
  %8131 = load i64, i64* %RAX.i112
  %8132 = load i64, i64* %RCX.i113
  %8133 = load i64, i64* %R8.i114
  %8134 = mul i64 %8133, 4
  %8135 = add i64 %8134, %8132
  %8136 = load i64, i64* %PC.i111
  %8137 = add i64 %8136, 4
  store i64 %8137, i64* %PC.i111
  %8138 = trunc i64 %8131 to i32
  %8139 = inttoptr i64 %8135 to i32*
  %8140 = load i32, i32* %8139
  %8141 = add i32 %8140, %8138
  %8142 = zext i32 %8141 to i64
  store i64 %8142, i64* %RAX.i112, align 8
  %8143 = icmp ult i32 %8141, %8138
  %8144 = icmp ult i32 %8141, %8140
  %8145 = or i1 %8143, %8144
  %8146 = zext i1 %8145 to i8
  %8147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8146, i8* %8147, align 1
  %8148 = and i32 %8141, 255
  %8149 = call i32 @llvm.ctpop.i32(i32 %8148)
  %8150 = trunc i32 %8149 to i8
  %8151 = and i8 %8150, 1
  %8152 = xor i8 %8151, 1
  %8153 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8152, i8* %8153, align 1
  %8154 = xor i32 %8140, %8138
  %8155 = xor i32 %8154, %8141
  %8156 = lshr i32 %8155, 4
  %8157 = trunc i32 %8156 to i8
  %8158 = and i8 %8157, 1
  %8159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8158, i8* %8159, align 1
  %8160 = icmp eq i32 %8141, 0
  %8161 = zext i1 %8160 to i8
  %8162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8161, i8* %8162, align 1
  %8163 = lshr i32 %8141, 31
  %8164 = trunc i32 %8163 to i8
  %8165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8164, i8* %8165, align 1
  %8166 = lshr i32 %8138, 31
  %8167 = lshr i32 %8140, 31
  %8168 = xor i32 %8163, %8166
  %8169 = xor i32 %8163, %8167
  %8170 = add i32 %8168, %8169
  %8171 = icmp eq i32 %8170, 2
  %8172 = zext i1 %8171 to i8
  %8173 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8172, i8* %8173, align 1
  store %struct.Memory* %loadMem_435f02, %struct.Memory** %MEMORY
  %loadMem_435f06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8175 = getelementptr inbounds %struct.GPR, %struct.GPR* %8174, i32 0, i32 33
  %8176 = getelementptr inbounds %struct.Reg, %struct.Reg* %8175, i32 0, i32 0
  %PC.i108 = bitcast %union.anon* %8176 to i64*
  %8177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8178 = getelementptr inbounds %struct.GPR, %struct.GPR* %8177, i32 0, i32 5
  %8179 = getelementptr inbounds %struct.Reg, %struct.Reg* %8178, i32 0, i32 0
  %RCX.i109 = bitcast %union.anon* %8179 to i64*
  %8180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8181 = getelementptr inbounds %struct.GPR, %struct.GPR* %8180, i32 0, i32 15
  %8182 = getelementptr inbounds %struct.Reg, %struct.Reg* %8181, i32 0, i32 0
  %RBP.i110 = bitcast %union.anon* %8182 to i64*
  %8183 = load i64, i64* %RBP.i110
  %8184 = sub i64 %8183, 56
  %8185 = load i64, i64* %PC.i108
  %8186 = add i64 %8185, 4
  store i64 %8186, i64* %PC.i108
  %8187 = inttoptr i64 %8184 to i64*
  %8188 = load i64, i64* %8187
  store i64 %8188, i64* %RCX.i109, align 8
  store %struct.Memory* %loadMem_435f06, %struct.Memory** %MEMORY
  %loadMem_435f0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %8189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8190 = getelementptr inbounds %struct.GPR, %struct.GPR* %8189, i32 0, i32 33
  %8191 = getelementptr inbounds %struct.Reg, %struct.Reg* %8190, i32 0, i32 0
  %PC.i105 = bitcast %union.anon* %8191 to i64*
  %8192 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8193 = getelementptr inbounds %struct.GPR, %struct.GPR* %8192, i32 0, i32 7
  %8194 = getelementptr inbounds %struct.Reg, %struct.Reg* %8193, i32 0, i32 0
  %RDX.i106 = bitcast %union.anon* %8194 to i64*
  %8195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8196 = getelementptr inbounds %struct.GPR, %struct.GPR* %8195, i32 0, i32 15
  %8197 = getelementptr inbounds %struct.Reg, %struct.Reg* %8196, i32 0, i32 0
  %RBP.i107 = bitcast %union.anon* %8197 to i64*
  %8198 = load i64, i64* %RBP.i107
  %8199 = sub i64 %8198, 76
  %8200 = load i64, i64* %PC.i105
  %8201 = add i64 %8200, 3
  store i64 %8201, i64* %PC.i105
  %8202 = inttoptr i64 %8199 to i32*
  %8203 = load i32, i32* %8202
  %8204 = zext i32 %8203 to i64
  store i64 %8204, i64* %RDX.i106, align 8
  store %struct.Memory* %loadMem_435f0a, %struct.Memory** %MEMORY
  %loadMem_435f0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %8205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8206 = getelementptr inbounds %struct.GPR, %struct.GPR* %8205, i32 0, i32 33
  %8207 = getelementptr inbounds %struct.Reg, %struct.Reg* %8206, i32 0, i32 0
  %PC.i103 = bitcast %union.anon* %8207 to i64*
  %8208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8209 = getelementptr inbounds %struct.GPR, %struct.GPR* %8208, i32 0, i32 7
  %8210 = getelementptr inbounds %struct.Reg, %struct.Reg* %8209, i32 0, i32 0
  %RDX.i104 = bitcast %union.anon* %8210 to i64*
  %8211 = load i64, i64* %RDX.i104
  %8212 = load i64, i64* %PC.i103
  %8213 = add i64 %8212, 3
  store i64 %8213, i64* %PC.i103
  %8214 = trunc i64 %8211 to i32
  %8215 = add i32 1, %8214
  %8216 = zext i32 %8215 to i64
  store i64 %8216, i64* %RDX.i104, align 8
  %8217 = icmp ult i32 %8215, %8214
  %8218 = icmp ult i32 %8215, 1
  %8219 = or i1 %8217, %8218
  %8220 = zext i1 %8219 to i8
  %8221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8220, i8* %8221, align 1
  %8222 = and i32 %8215, 255
  %8223 = call i32 @llvm.ctpop.i32(i32 %8222)
  %8224 = trunc i32 %8223 to i8
  %8225 = and i8 %8224, 1
  %8226 = xor i8 %8225, 1
  %8227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8226, i8* %8227, align 1
  %8228 = xor i64 1, %8211
  %8229 = trunc i64 %8228 to i32
  %8230 = xor i32 %8229, %8215
  %8231 = lshr i32 %8230, 4
  %8232 = trunc i32 %8231 to i8
  %8233 = and i8 %8232, 1
  %8234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8233, i8* %8234, align 1
  %8235 = icmp eq i32 %8215, 0
  %8236 = zext i1 %8235 to i8
  %8237 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8236, i8* %8237, align 1
  %8238 = lshr i32 %8215, 31
  %8239 = trunc i32 %8238 to i8
  %8240 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8239, i8* %8240, align 1
  %8241 = lshr i32 %8214, 31
  %8242 = xor i32 %8238, %8241
  %8243 = add i32 %8242, %8238
  %8244 = icmp eq i32 %8243, 2
  %8245 = zext i1 %8244 to i8
  %8246 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8245, i8* %8246, align 1
  store %struct.Memory* %loadMem_435f0d, %struct.Memory** %MEMORY
  %loadMem_435f10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8248 = getelementptr inbounds %struct.GPR, %struct.GPR* %8247, i32 0, i32 33
  %8249 = getelementptr inbounds %struct.Reg, %struct.Reg* %8248, i32 0, i32 0
  %PC.i100 = bitcast %union.anon* %8249 to i64*
  %8250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8251 = getelementptr inbounds %struct.GPR, %struct.GPR* %8250, i32 0, i32 7
  %8252 = getelementptr inbounds %struct.Reg, %struct.Reg* %8251, i32 0, i32 0
  %EDX.i101 = bitcast %union.anon* %8252 to i32*
  %8253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8254 = getelementptr inbounds %struct.GPR, %struct.GPR* %8253, i32 0, i32 17
  %8255 = getelementptr inbounds %struct.Reg, %struct.Reg* %8254, i32 0, i32 0
  %R8.i102 = bitcast %union.anon* %8255 to i64*
  %8256 = load i32, i32* %EDX.i101
  %8257 = zext i32 %8256 to i64
  %8258 = load i64, i64* %PC.i100
  %8259 = add i64 %8258, 3
  store i64 %8259, i64* %PC.i100
  %8260 = shl i64 %8257, 32
  %8261 = ashr exact i64 %8260, 32
  store i64 %8261, i64* %R8.i102, align 8
  store %struct.Memory* %loadMem_435f10, %struct.Memory** %MEMORY
  %loadMem_435f13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8263 = getelementptr inbounds %struct.GPR, %struct.GPR* %8262, i32 0, i32 33
  %8264 = getelementptr inbounds %struct.Reg, %struct.Reg* %8263, i32 0, i32 0
  %PC.i97 = bitcast %union.anon* %8264 to i64*
  %8265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8266 = getelementptr inbounds %struct.GPR, %struct.GPR* %8265, i32 0, i32 5
  %8267 = getelementptr inbounds %struct.Reg, %struct.Reg* %8266, i32 0, i32 0
  %RCX.i98 = bitcast %union.anon* %8267 to i64*
  %8268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8269 = getelementptr inbounds %struct.GPR, %struct.GPR* %8268, i32 0, i32 17
  %8270 = getelementptr inbounds %struct.Reg, %struct.Reg* %8269, i32 0, i32 0
  %R8.i99 = bitcast %union.anon* %8270 to i64*
  %8271 = load i64, i64* %RCX.i98
  %8272 = load i64, i64* %R8.i99
  %8273 = mul i64 %8272, 8
  %8274 = add i64 %8273, %8271
  %8275 = load i64, i64* %PC.i97
  %8276 = add i64 %8275, 4
  store i64 %8276, i64* %PC.i97
  %8277 = inttoptr i64 %8274 to i64*
  %8278 = load i64, i64* %8277
  store i64 %8278, i64* %RCX.i98, align 8
  store %struct.Memory* %loadMem_435f13, %struct.Memory** %MEMORY
  %loadMem_435f17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8280 = getelementptr inbounds %struct.GPR, %struct.GPR* %8279, i32 0, i32 33
  %8281 = getelementptr inbounds %struct.Reg, %struct.Reg* %8280, i32 0, i32 0
  %PC.i94 = bitcast %union.anon* %8281 to i64*
  %8282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8283 = getelementptr inbounds %struct.GPR, %struct.GPR* %8282, i32 0, i32 7
  %8284 = getelementptr inbounds %struct.Reg, %struct.Reg* %8283, i32 0, i32 0
  %RDX.i95 = bitcast %union.anon* %8284 to i64*
  %8285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8286 = getelementptr inbounds %struct.GPR, %struct.GPR* %8285, i32 0, i32 15
  %8287 = getelementptr inbounds %struct.Reg, %struct.Reg* %8286, i32 0, i32 0
  %RBP.i96 = bitcast %union.anon* %8287 to i64*
  %8288 = load i64, i64* %RBP.i96
  %8289 = sub i64 %8288, 80
  %8290 = load i64, i64* %PC.i94
  %8291 = add i64 %8290, 3
  store i64 %8291, i64* %PC.i94
  %8292 = inttoptr i64 %8289 to i32*
  %8293 = load i32, i32* %8292
  %8294 = zext i32 %8293 to i64
  store i64 %8294, i64* %RDX.i95, align 8
  store %struct.Memory* %loadMem_435f17, %struct.Memory** %MEMORY
  %loadMem_435f1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %8295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8296 = getelementptr inbounds %struct.GPR, %struct.GPR* %8295, i32 0, i32 33
  %8297 = getelementptr inbounds %struct.Reg, %struct.Reg* %8296, i32 0, i32 0
  %PC.i92 = bitcast %union.anon* %8297 to i64*
  %8298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8299 = getelementptr inbounds %struct.GPR, %struct.GPR* %8298, i32 0, i32 7
  %8300 = getelementptr inbounds %struct.Reg, %struct.Reg* %8299, i32 0, i32 0
  %RDX.i93 = bitcast %union.anon* %8300 to i64*
  %8301 = load i64, i64* %RDX.i93
  %8302 = load i64, i64* %PC.i92
  %8303 = add i64 %8302, 3
  store i64 %8303, i64* %PC.i92
  %8304 = trunc i64 %8301 to i32
  %8305 = add i32 1, %8304
  %8306 = zext i32 %8305 to i64
  store i64 %8306, i64* %RDX.i93, align 8
  %8307 = icmp ult i32 %8305, %8304
  %8308 = icmp ult i32 %8305, 1
  %8309 = or i1 %8307, %8308
  %8310 = zext i1 %8309 to i8
  %8311 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8310, i8* %8311, align 1
  %8312 = and i32 %8305, 255
  %8313 = call i32 @llvm.ctpop.i32(i32 %8312)
  %8314 = trunc i32 %8313 to i8
  %8315 = and i8 %8314, 1
  %8316 = xor i8 %8315, 1
  %8317 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8316, i8* %8317, align 1
  %8318 = xor i64 1, %8301
  %8319 = trunc i64 %8318 to i32
  %8320 = xor i32 %8319, %8305
  %8321 = lshr i32 %8320, 4
  %8322 = trunc i32 %8321 to i8
  %8323 = and i8 %8322, 1
  %8324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8323, i8* %8324, align 1
  %8325 = icmp eq i32 %8305, 0
  %8326 = zext i1 %8325 to i8
  %8327 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8326, i8* %8327, align 1
  %8328 = lshr i32 %8305, 31
  %8329 = trunc i32 %8328 to i8
  %8330 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8329, i8* %8330, align 1
  %8331 = lshr i32 %8304, 31
  %8332 = xor i32 %8328, %8331
  %8333 = add i32 %8332, %8328
  %8334 = icmp eq i32 %8333, 2
  %8335 = zext i1 %8334 to i8
  %8336 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8335, i8* %8336, align 1
  store %struct.Memory* %loadMem_435f1a, %struct.Memory** %MEMORY
  %loadMem_435f1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %8337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8338 = getelementptr inbounds %struct.GPR, %struct.GPR* %8337, i32 0, i32 33
  %8339 = getelementptr inbounds %struct.Reg, %struct.Reg* %8338, i32 0, i32 0
  %PC.i89 = bitcast %union.anon* %8339 to i64*
  %8340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8341 = getelementptr inbounds %struct.GPR, %struct.GPR* %8340, i32 0, i32 7
  %8342 = getelementptr inbounds %struct.Reg, %struct.Reg* %8341, i32 0, i32 0
  %EDX.i90 = bitcast %union.anon* %8342 to i32*
  %8343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8344 = getelementptr inbounds %struct.GPR, %struct.GPR* %8343, i32 0, i32 17
  %8345 = getelementptr inbounds %struct.Reg, %struct.Reg* %8344, i32 0, i32 0
  %R8.i91 = bitcast %union.anon* %8345 to i64*
  %8346 = load i32, i32* %EDX.i90
  %8347 = zext i32 %8346 to i64
  %8348 = load i64, i64* %PC.i89
  %8349 = add i64 %8348, 3
  store i64 %8349, i64* %PC.i89
  %8350 = shl i64 %8347, 32
  %8351 = ashr exact i64 %8350, 32
  store i64 %8351, i64* %R8.i91, align 8
  store %struct.Memory* %loadMem_435f1d, %struct.Memory** %MEMORY
  %loadMem_435f20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8353 = getelementptr inbounds %struct.GPR, %struct.GPR* %8352, i32 0, i32 33
  %8354 = getelementptr inbounds %struct.Reg, %struct.Reg* %8353, i32 0, i32 0
  %PC.i85 = bitcast %union.anon* %8354 to i64*
  %8355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8356 = getelementptr inbounds %struct.GPR, %struct.GPR* %8355, i32 0, i32 5
  %8357 = getelementptr inbounds %struct.Reg, %struct.Reg* %8356, i32 0, i32 0
  %RCX.i86 = bitcast %union.anon* %8357 to i64*
  %8358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8359 = getelementptr inbounds %struct.GPR, %struct.GPR* %8358, i32 0, i32 7
  %8360 = getelementptr inbounds %struct.Reg, %struct.Reg* %8359, i32 0, i32 0
  %RDX.i87 = bitcast %union.anon* %8360 to i64*
  %8361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8362 = getelementptr inbounds %struct.GPR, %struct.GPR* %8361, i32 0, i32 17
  %8363 = getelementptr inbounds %struct.Reg, %struct.Reg* %8362, i32 0, i32 0
  %R8.i88 = bitcast %union.anon* %8363 to i64*
  %8364 = load i64, i64* %RCX.i86
  %8365 = load i64, i64* %R8.i88
  %8366 = mul i64 %8365, 4
  %8367 = add i64 %8366, %8364
  %8368 = load i64, i64* %PC.i85
  %8369 = add i64 %8368, 4
  store i64 %8369, i64* %PC.i85
  %8370 = inttoptr i64 %8367 to i32*
  %8371 = load i32, i32* %8370
  %8372 = zext i32 %8371 to i64
  store i64 %8372, i64* %RDX.i87, align 8
  store %struct.Memory* %loadMem_435f20, %struct.Memory** %MEMORY
  %loadMem_435f24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8374 = getelementptr inbounds %struct.GPR, %struct.GPR* %8373, i32 0, i32 33
  %8375 = getelementptr inbounds %struct.Reg, %struct.Reg* %8374, i32 0, i32 0
  %PC.i82 = bitcast %union.anon* %8375 to i64*
  %8376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8377 = getelementptr inbounds %struct.GPR, %struct.GPR* %8376, i32 0, i32 5
  %8378 = getelementptr inbounds %struct.Reg, %struct.Reg* %8377, i32 0, i32 0
  %RCX.i83 = bitcast %union.anon* %8378 to i64*
  %8379 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8380 = getelementptr inbounds %struct.GPR, %struct.GPR* %8379, i32 0, i32 15
  %8381 = getelementptr inbounds %struct.Reg, %struct.Reg* %8380, i32 0, i32 0
  %RBP.i84 = bitcast %union.anon* %8381 to i64*
  %8382 = load i64, i64* %RBP.i84
  %8383 = sub i64 %8382, 24
  %8384 = load i64, i64* %PC.i82
  %8385 = add i64 %8384, 4
  store i64 %8385, i64* %PC.i82
  %8386 = inttoptr i64 %8383 to i64*
  %8387 = load i64, i64* %8386
  store i64 %8387, i64* %RCX.i83, align 8
  store %struct.Memory* %loadMem_435f24, %struct.Memory** %MEMORY
  %loadMem_435f28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8389 = getelementptr inbounds %struct.GPR, %struct.GPR* %8388, i32 0, i32 33
  %8390 = getelementptr inbounds %struct.Reg, %struct.Reg* %8389, i32 0, i32 0
  %PC.i80 = bitcast %union.anon* %8390 to i64*
  %8391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8392 = getelementptr inbounds %struct.GPR, %struct.GPR* %8391, i32 0, i32 5
  %8393 = getelementptr inbounds %struct.Reg, %struct.Reg* %8392, i32 0, i32 0
  %RCX.i81 = bitcast %union.anon* %8393 to i64*
  %8394 = load i64, i64* %RCX.i81
  %8395 = add i64 %8394, 312
  %8396 = load i64, i64* %PC.i80
  %8397 = add i64 %8396, 7
  store i64 %8397, i64* %PC.i80
  %8398 = inttoptr i64 %8395 to i64*
  %8399 = load i64, i64* %8398
  store i64 %8399, i64* %RCX.i81, align 8
  store %struct.Memory* %loadMem_435f28, %struct.Memory** %MEMORY
  %loadMem_435f2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %8400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8401 = getelementptr inbounds %struct.GPR, %struct.GPR* %8400, i32 0, i32 33
  %8402 = getelementptr inbounds %struct.Reg, %struct.Reg* %8401, i32 0, i32 0
  %PC.i78 = bitcast %union.anon* %8402 to i64*
  %8403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8404 = getelementptr inbounds %struct.GPR, %struct.GPR* %8403, i32 0, i32 5
  %8405 = getelementptr inbounds %struct.Reg, %struct.Reg* %8404, i32 0, i32 0
  %RCX.i79 = bitcast %union.anon* %8405 to i64*
  %8406 = load i64, i64* %RCX.i79
  %8407 = add i64 %8406, 40
  %8408 = load i64, i64* %PC.i78
  %8409 = add i64 %8408, 4
  store i64 %8409, i64* %PC.i78
  %8410 = inttoptr i64 %8407 to i64*
  %8411 = load i64, i64* %8410
  store i64 %8411, i64* %RCX.i79, align 8
  store %struct.Memory* %loadMem_435f2f, %struct.Memory** %MEMORY
  %loadMem_435f33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8413 = getelementptr inbounds %struct.GPR, %struct.GPR* %8412, i32 0, i32 33
  %8414 = getelementptr inbounds %struct.Reg, %struct.Reg* %8413, i32 0, i32 0
  %PC.i75 = bitcast %union.anon* %8414 to i64*
  %8415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8416 = getelementptr inbounds %struct.GPR, %struct.GPR* %8415, i32 0, i32 15
  %8417 = getelementptr inbounds %struct.Reg, %struct.Reg* %8416, i32 0, i32 0
  %RBP.i76 = bitcast %union.anon* %8417 to i64*
  %8418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8419 = getelementptr inbounds %struct.GPR, %struct.GPR* %8418, i32 0, i32 17
  %8420 = getelementptr inbounds %struct.Reg, %struct.Reg* %8419, i32 0, i32 0
  %R8.i77 = bitcast %union.anon* %8420 to i64*
  %8421 = load i64, i64* %RBP.i76
  %8422 = sub i64 %8421, 80
  %8423 = load i64, i64* %PC.i75
  %8424 = add i64 %8423, 4
  store i64 %8424, i64* %PC.i75
  %8425 = inttoptr i64 %8422 to i32*
  %8426 = load i32, i32* %8425
  %8427 = sext i32 %8426 to i64
  store i64 %8427, i64* %R8.i77, align 8
  store %struct.Memory* %loadMem_435f33, %struct.Memory** %MEMORY
  %loadMem_435f37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8428 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8429 = getelementptr inbounds %struct.GPR, %struct.GPR* %8428, i32 0, i32 33
  %8430 = getelementptr inbounds %struct.Reg, %struct.Reg* %8429, i32 0, i32 0
  %PC.i72 = bitcast %union.anon* %8430 to i64*
  %8431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8432 = getelementptr inbounds %struct.GPR, %struct.GPR* %8431, i32 0, i32 5
  %8433 = getelementptr inbounds %struct.Reg, %struct.Reg* %8432, i32 0, i32 0
  %RCX.i73 = bitcast %union.anon* %8433 to i64*
  %8434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8435 = getelementptr inbounds %struct.GPR, %struct.GPR* %8434, i32 0, i32 7
  %8436 = getelementptr inbounds %struct.Reg, %struct.Reg* %8435, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %8436 to i64*
  %8437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8438 = getelementptr inbounds %struct.GPR, %struct.GPR* %8437, i32 0, i32 17
  %8439 = getelementptr inbounds %struct.Reg, %struct.Reg* %8438, i32 0, i32 0
  %R8.i74 = bitcast %union.anon* %8439 to i64*
  %8440 = load i64, i64* %RDX.i
  %8441 = load i64, i64* %RCX.i73
  %8442 = load i64, i64* %R8.i74
  %8443 = mul i64 %8442, 4
  %8444 = add i64 %8443, %8441
  %8445 = load i64, i64* %PC.i72
  %8446 = add i64 %8445, 4
  store i64 %8446, i64* %PC.i72
  %8447 = trunc i64 %8440 to i32
  %8448 = inttoptr i64 %8444 to i32*
  %8449 = load i32, i32* %8448
  %8450 = add i32 %8449, %8447
  %8451 = zext i32 %8450 to i64
  store i64 %8451, i64* %RDX.i, align 8
  %8452 = icmp ult i32 %8450, %8447
  %8453 = icmp ult i32 %8450, %8449
  %8454 = or i1 %8452, %8453
  %8455 = zext i1 %8454 to i8
  %8456 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8455, i8* %8456, align 1
  %8457 = and i32 %8450, 255
  %8458 = call i32 @llvm.ctpop.i32(i32 %8457)
  %8459 = trunc i32 %8458 to i8
  %8460 = and i8 %8459, 1
  %8461 = xor i8 %8460, 1
  %8462 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8461, i8* %8462, align 1
  %8463 = xor i32 %8449, %8447
  %8464 = xor i32 %8463, %8450
  %8465 = lshr i32 %8464, 4
  %8466 = trunc i32 %8465 to i8
  %8467 = and i8 %8466, 1
  %8468 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8467, i8* %8468, align 1
  %8469 = icmp eq i32 %8450, 0
  %8470 = zext i1 %8469 to i8
  %8471 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8470, i8* %8471, align 1
  %8472 = lshr i32 %8450, 31
  %8473 = trunc i32 %8472 to i8
  %8474 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8473, i8* %8474, align 1
  %8475 = lshr i32 %8447, 31
  %8476 = lshr i32 %8449, 31
  %8477 = xor i32 %8472, %8475
  %8478 = xor i32 %8472, %8476
  %8479 = add i32 %8477, %8478
  %8480 = icmp eq i32 %8479, 2
  %8481 = zext i1 %8480 to i8
  %8482 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8481, i8* %8482, align 1
  store %struct.Memory* %loadMem_435f37, %struct.Memory** %MEMORY
  %loadMem_435f3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %8483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8484 = getelementptr inbounds %struct.GPR, %struct.GPR* %8483, i32 0, i32 33
  %8485 = getelementptr inbounds %struct.Reg, %struct.Reg* %8484, i32 0, i32 0
  %PC.i69 = bitcast %union.anon* %8485 to i64*
  %8486 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8487 = getelementptr inbounds %struct.GPR, %struct.GPR* %8486, i32 0, i32 1
  %8488 = getelementptr inbounds %struct.Reg, %struct.Reg* %8487, i32 0, i32 0
  %EAX.i70 = bitcast %union.anon* %8488 to i32*
  %8489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8490 = getelementptr inbounds %struct.GPR, %struct.GPR* %8489, i32 0, i32 11
  %8491 = getelementptr inbounds %struct.Reg, %struct.Reg* %8490, i32 0, i32 0
  %RDI.i71 = bitcast %union.anon* %8491 to i64*
  %8492 = load i32, i32* %EAX.i70
  %8493 = zext i32 %8492 to i64
  %8494 = load i64, i64* %PC.i69
  %8495 = add i64 %8494, 2
  store i64 %8495, i64* %PC.i69
  %8496 = and i64 %8493, 4294967295
  store i64 %8496, i64* %RDI.i71, align 8
  store %struct.Memory* %loadMem_435f3b, %struct.Memory** %MEMORY
  %loadMem_435f3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %8497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8498 = getelementptr inbounds %struct.GPR, %struct.GPR* %8497, i32 0, i32 33
  %8499 = getelementptr inbounds %struct.Reg, %struct.Reg* %8498, i32 0, i32 0
  %PC.i68 = bitcast %union.anon* %8499 to i64*
  %8500 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8501 = getelementptr inbounds %struct.GPR, %struct.GPR* %8500, i32 0, i32 7
  %8502 = getelementptr inbounds %struct.Reg, %struct.Reg* %8501, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %8502 to i32*
  %8503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8504 = getelementptr inbounds %struct.GPR, %struct.GPR* %8503, i32 0, i32 9
  %8505 = getelementptr inbounds %struct.Reg, %struct.Reg* %8504, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %8505 to i64*
  %8506 = load i32, i32* %EDX.i
  %8507 = zext i32 %8506 to i64
  %8508 = load i64, i64* %PC.i68
  %8509 = add i64 %8508, 2
  store i64 %8509, i64* %PC.i68
  %8510 = and i64 %8507, 4294967295
  store i64 %8510, i64* %RSI.i, align 8
  store %struct.Memory* %loadMem_435f3d, %struct.Memory** %MEMORY
  %loadMem1_435f3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %8511 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8512 = getelementptr inbounds %struct.GPR, %struct.GPR* %8511, i32 0, i32 33
  %8513 = getelementptr inbounds %struct.Reg, %struct.Reg* %8512, i32 0, i32 0
  %PC.i67 = bitcast %union.anon* %8513 to i64*
  %8514 = load i64, i64* %PC.i67
  %8515 = add i64 %8514, -56719
  %8516 = load i64, i64* %PC.i67
  %8517 = add i64 %8516, 5
  %8518 = load i64, i64* %PC.i67
  %8519 = add i64 %8518, 5
  store i64 %8519, i64* %PC.i67
  %8520 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %8521 = load i64, i64* %8520, align 8
  %8522 = add i64 %8521, -8
  %8523 = inttoptr i64 %8522 to i64*
  store i64 %8517, i64* %8523
  store i64 %8522, i64* %8520, align 8
  %8524 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %8515, i64* %8524, align 8
  store %struct.Memory* %loadMem1_435f3f, %struct.Memory** %MEMORY
  %loadMem2_435f3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_435f3f = load i64, i64* %3
  %call2_435f3f = call %struct.Memory* @sub_4281b0.ILogsum(%struct.State* %0, i64 %loadPC_435f3f, %struct.Memory* %loadMem2_435f3f)
  store %struct.Memory* %call2_435f3f, %struct.Memory** %MEMORY
  %loadMem_435f44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8525 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8526 = getelementptr inbounds %struct.GPR, %struct.GPR* %8525, i32 0, i32 33
  %8527 = getelementptr inbounds %struct.Reg, %struct.Reg* %8526, i32 0, i32 0
  %PC.i64 = bitcast %union.anon* %8527 to i64*
  %8528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8529 = getelementptr inbounds %struct.GPR, %struct.GPR* %8528, i32 0, i32 5
  %8530 = getelementptr inbounds %struct.Reg, %struct.Reg* %8529, i32 0, i32 0
  %RCX.i65 = bitcast %union.anon* %8530 to i64*
  %8531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8532 = getelementptr inbounds %struct.GPR, %struct.GPR* %8531, i32 0, i32 15
  %8533 = getelementptr inbounds %struct.Reg, %struct.Reg* %8532, i32 0, i32 0
  %RBP.i66 = bitcast %union.anon* %8533 to i64*
  %8534 = load i64, i64* %RBP.i66
  %8535 = sub i64 %8534, 72
  %8536 = load i64, i64* %PC.i64
  %8537 = add i64 %8536, 4
  store i64 %8537, i64* %PC.i64
  %8538 = inttoptr i64 %8535 to i64*
  %8539 = load i64, i64* %8538
  store i64 %8539, i64* %RCX.i65, align 8
  store %struct.Memory* %loadMem_435f44, %struct.Memory** %MEMORY
  %loadMem_435f48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8541 = getelementptr inbounds %struct.GPR, %struct.GPR* %8540, i32 0, i32 33
  %8542 = getelementptr inbounds %struct.Reg, %struct.Reg* %8541, i32 0, i32 0
  %PC.i61 = bitcast %union.anon* %8542 to i64*
  %8543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8544 = getelementptr inbounds %struct.GPR, %struct.GPR* %8543, i32 0, i32 15
  %8545 = getelementptr inbounds %struct.Reg, %struct.Reg* %8544, i32 0, i32 0
  %RBP.i62 = bitcast %union.anon* %8545 to i64*
  %8546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8547 = getelementptr inbounds %struct.GPR, %struct.GPR* %8546, i32 0, i32 17
  %8548 = getelementptr inbounds %struct.Reg, %struct.Reg* %8547, i32 0, i32 0
  %R8.i63 = bitcast %union.anon* %8548 to i64*
  %8549 = load i64, i64* %RBP.i62
  %8550 = sub i64 %8549, 76
  %8551 = load i64, i64* %PC.i61
  %8552 = add i64 %8551, 4
  store i64 %8552, i64* %PC.i61
  %8553 = inttoptr i64 %8550 to i32*
  %8554 = load i32, i32* %8553
  %8555 = sext i32 %8554 to i64
  store i64 %8555, i64* %R8.i63, align 8
  store %struct.Memory* %loadMem_435f48, %struct.Memory** %MEMORY
  %loadMem_435f4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %8556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8557 = getelementptr inbounds %struct.GPR, %struct.GPR* %8556, i32 0, i32 33
  %8558 = getelementptr inbounds %struct.Reg, %struct.Reg* %8557, i32 0, i32 0
  %PC.i58 = bitcast %union.anon* %8558 to i64*
  %8559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8560 = getelementptr inbounds %struct.GPR, %struct.GPR* %8559, i32 0, i32 5
  %8561 = getelementptr inbounds %struct.Reg, %struct.Reg* %8560, i32 0, i32 0
  %RCX.i59 = bitcast %union.anon* %8561 to i64*
  %8562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8563 = getelementptr inbounds %struct.GPR, %struct.GPR* %8562, i32 0, i32 17
  %8564 = getelementptr inbounds %struct.Reg, %struct.Reg* %8563, i32 0, i32 0
  %R8.i60 = bitcast %union.anon* %8564 to i64*
  %8565 = load i64, i64* %RCX.i59
  %8566 = load i64, i64* %R8.i60
  %8567 = mul i64 %8566, 8
  %8568 = add i64 %8567, %8565
  %8569 = load i64, i64* %PC.i58
  %8570 = add i64 %8569, 4
  store i64 %8570, i64* %PC.i58
  %8571 = inttoptr i64 %8568 to i64*
  %8572 = load i64, i64* %8571
  store i64 %8572, i64* %RCX.i59, align 8
  store %struct.Memory* %loadMem_435f4c, %struct.Memory** %MEMORY
  %loadMem_435f50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8573 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8574 = getelementptr inbounds %struct.GPR, %struct.GPR* %8573, i32 0, i32 33
  %8575 = getelementptr inbounds %struct.Reg, %struct.Reg* %8574, i32 0, i32 0
  %PC.i55 = bitcast %union.anon* %8575 to i64*
  %8576 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8577 = getelementptr inbounds %struct.GPR, %struct.GPR* %8576, i32 0, i32 15
  %8578 = getelementptr inbounds %struct.Reg, %struct.Reg* %8577, i32 0, i32 0
  %RBP.i56 = bitcast %union.anon* %8578 to i64*
  %8579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8580 = getelementptr inbounds %struct.GPR, %struct.GPR* %8579, i32 0, i32 17
  %8581 = getelementptr inbounds %struct.Reg, %struct.Reg* %8580, i32 0, i32 0
  %R8.i57 = bitcast %union.anon* %8581 to i64*
  %8582 = load i64, i64* %RBP.i56
  %8583 = sub i64 %8582, 80
  %8584 = load i64, i64* %PC.i55
  %8585 = add i64 %8584, 4
  store i64 %8585, i64* %PC.i55
  %8586 = inttoptr i64 %8583 to i32*
  %8587 = load i32, i32* %8586
  %8588 = sext i32 %8587 to i64
  store i64 %8588, i64* %R8.i57, align 8
  store %struct.Memory* %loadMem_435f50, %struct.Memory** %MEMORY
  %loadMem_435f54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8590 = getelementptr inbounds %struct.GPR, %struct.GPR* %8589, i32 0, i32 33
  %8591 = getelementptr inbounds %struct.Reg, %struct.Reg* %8590, i32 0, i32 0
  %PC.i52 = bitcast %union.anon* %8591 to i64*
  %8592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8593 = getelementptr inbounds %struct.GPR, %struct.GPR* %8592, i32 0, i32 1
  %8594 = getelementptr inbounds %struct.Reg, %struct.Reg* %8593, i32 0, i32 0
  %EAX.i53 = bitcast %union.anon* %8594 to i32*
  %8595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8596 = getelementptr inbounds %struct.GPR, %struct.GPR* %8595, i32 0, i32 5
  %8597 = getelementptr inbounds %struct.Reg, %struct.Reg* %8596, i32 0, i32 0
  %RCX.i54 = bitcast %union.anon* %8597 to i64*
  %8598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8599 = getelementptr inbounds %struct.GPR, %struct.GPR* %8598, i32 0, i32 17
  %8600 = getelementptr inbounds %struct.Reg, %struct.Reg* %8599, i32 0, i32 0
  %R8.i = bitcast %union.anon* %8600 to i64*
  %8601 = load i64, i64* %RCX.i54
  %8602 = load i64, i64* %R8.i
  %8603 = mul i64 %8602, 4
  %8604 = add i64 %8603, %8601
  %8605 = load i32, i32* %EAX.i53
  %8606 = zext i32 %8605 to i64
  %8607 = load i64, i64* %PC.i52
  %8608 = add i64 %8607, 4
  store i64 %8608, i64* %PC.i52
  %8609 = inttoptr i64 %8604 to i32*
  store i32 %8605, i32* %8609
  store %struct.Memory* %loadMem_435f54, %struct.Memory** %MEMORY
  %loadMem_435f58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8611 = getelementptr inbounds %struct.GPR, %struct.GPR* %8610, i32 0, i32 33
  %8612 = getelementptr inbounds %struct.Reg, %struct.Reg* %8611, i32 0, i32 0
  %PC.i49 = bitcast %union.anon* %8612 to i64*
  %8613 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8614 = getelementptr inbounds %struct.GPR, %struct.GPR* %8613, i32 0, i32 1
  %8615 = getelementptr inbounds %struct.Reg, %struct.Reg* %8614, i32 0, i32 0
  %RAX.i50 = bitcast %union.anon* %8615 to i64*
  %8616 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8617 = getelementptr inbounds %struct.GPR, %struct.GPR* %8616, i32 0, i32 15
  %8618 = getelementptr inbounds %struct.Reg, %struct.Reg* %8617, i32 0, i32 0
  %RBP.i51 = bitcast %union.anon* %8618 to i64*
  %8619 = load i64, i64* %RBP.i51
  %8620 = sub i64 %8619, 80
  %8621 = load i64, i64* %PC.i49
  %8622 = add i64 %8621, 3
  store i64 %8622, i64* %PC.i49
  %8623 = inttoptr i64 %8620 to i32*
  %8624 = load i32, i32* %8623
  %8625 = zext i32 %8624 to i64
  store i64 %8625, i64* %RAX.i50, align 8
  store %struct.Memory* %loadMem_435f58, %struct.Memory** %MEMORY
  %loadMem_435f5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %8626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8627 = getelementptr inbounds %struct.GPR, %struct.GPR* %8626, i32 0, i32 33
  %8628 = getelementptr inbounds %struct.Reg, %struct.Reg* %8627, i32 0, i32 0
  %PC.i47 = bitcast %union.anon* %8628 to i64*
  %8629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8630 = getelementptr inbounds %struct.GPR, %struct.GPR* %8629, i32 0, i32 1
  %8631 = getelementptr inbounds %struct.Reg, %struct.Reg* %8630, i32 0, i32 0
  %RAX.i48 = bitcast %union.anon* %8631 to i64*
  %8632 = load i64, i64* %RAX.i48
  %8633 = load i64, i64* %PC.i47
  %8634 = add i64 %8633, 3
  store i64 %8634, i64* %PC.i47
  %8635 = trunc i64 %8632 to i32
  %8636 = add i32 -1, %8635
  %8637 = zext i32 %8636 to i64
  store i64 %8637, i64* %RAX.i48, align 8
  %8638 = icmp ult i32 %8636, %8635
  %8639 = icmp ult i32 %8636, -1
  %8640 = or i1 %8638, %8639
  %8641 = zext i1 %8640 to i8
  %8642 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8641, i8* %8642, align 1
  %8643 = and i32 %8636, 255
  %8644 = call i32 @llvm.ctpop.i32(i32 %8643)
  %8645 = trunc i32 %8644 to i8
  %8646 = and i8 %8645, 1
  %8647 = xor i8 %8646, 1
  %8648 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8647, i8* %8648, align 1
  %8649 = xor i64 -1, %8632
  %8650 = trunc i64 %8649 to i32
  %8651 = xor i32 %8650, %8636
  %8652 = lshr i32 %8651, 4
  %8653 = trunc i32 %8652 to i8
  %8654 = and i8 %8653, 1
  %8655 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8654, i8* %8655, align 1
  %8656 = icmp eq i32 %8636, 0
  %8657 = zext i1 %8656 to i8
  %8658 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8657, i8* %8658, align 1
  %8659 = lshr i32 %8636, 31
  %8660 = trunc i32 %8659 to i8
  %8661 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8660, i8* %8661, align 1
  %8662 = lshr i32 %8635, 31
  %8663 = xor i32 %8659, %8662
  %8664 = xor i32 %8659, 1
  %8665 = add i32 %8663, %8664
  %8666 = icmp eq i32 %8665, 2
  %8667 = zext i1 %8666 to i8
  %8668 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8667, i8* %8668, align 1
  store %struct.Memory* %loadMem_435f5b, %struct.Memory** %MEMORY
  %loadMem_435f5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %8669 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8670 = getelementptr inbounds %struct.GPR, %struct.GPR* %8669, i32 0, i32 33
  %8671 = getelementptr inbounds %struct.Reg, %struct.Reg* %8670, i32 0, i32 0
  %PC.i44 = bitcast %union.anon* %8671 to i64*
  %8672 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8673 = getelementptr inbounds %struct.GPR, %struct.GPR* %8672, i32 0, i32 1
  %8674 = getelementptr inbounds %struct.Reg, %struct.Reg* %8673, i32 0, i32 0
  %EAX.i45 = bitcast %union.anon* %8674 to i32*
  %8675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8676 = getelementptr inbounds %struct.GPR, %struct.GPR* %8675, i32 0, i32 15
  %8677 = getelementptr inbounds %struct.Reg, %struct.Reg* %8676, i32 0, i32 0
  %RBP.i46 = bitcast %union.anon* %8677 to i64*
  %8678 = load i64, i64* %RBP.i46
  %8679 = sub i64 %8678, 80
  %8680 = load i32, i32* %EAX.i45
  %8681 = zext i32 %8680 to i64
  %8682 = load i64, i64* %PC.i44
  %8683 = add i64 %8682, 3
  store i64 %8683, i64* %PC.i44
  %8684 = inttoptr i64 %8679 to i32*
  store i32 %8680, i32* %8684
  store %struct.Memory* %loadMem_435f5e, %struct.Memory** %MEMORY
  %loadMem_435f61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8686 = getelementptr inbounds %struct.GPR, %struct.GPR* %8685, i32 0, i32 33
  %8687 = getelementptr inbounds %struct.Reg, %struct.Reg* %8686, i32 0, i32 0
  %PC.i43 = bitcast %union.anon* %8687 to i64*
  %8688 = load i64, i64* %PC.i43
  %8689 = add i64 %8688, -631
  %8690 = load i64, i64* %PC.i43
  %8691 = add i64 %8690, 5
  store i64 %8691, i64* %PC.i43
  %8692 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %8689, i64* %8692, align 8
  store %struct.Memory* %loadMem_435f61, %struct.Memory** %MEMORY
  br label %block_.L_435cea

block_.L_435f66:                                  ; preds = %block_.L_435cea
  %loadMem_435f66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8694 = getelementptr inbounds %struct.GPR, %struct.GPR* %8693, i32 0, i32 33
  %8695 = getelementptr inbounds %struct.Reg, %struct.Reg* %8694, i32 0, i32 0
  %PC.i42 = bitcast %union.anon* %8695 to i64*
  %8696 = load i64, i64* %PC.i42
  %8697 = add i64 %8696, 5
  %8698 = load i64, i64* %PC.i42
  %8699 = add i64 %8698, 5
  store i64 %8699, i64* %PC.i42
  %8700 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %8697, i64* %8700, align 8
  store %struct.Memory* %loadMem_435f66, %struct.Memory** %MEMORY
  br label %block_.L_435f6b

block_.L_435f6b:                                  ; preds = %block_.L_435f66, %block_.L_435b60
  %loadMem_435f6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %8701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8702 = getelementptr inbounds %struct.GPR, %struct.GPR* %8701, i32 0, i32 33
  %8703 = getelementptr inbounds %struct.Reg, %struct.Reg* %8702, i32 0, i32 0
  %PC.i41 = bitcast %union.anon* %8703 to i64*
  %8704 = load i64, i64* %PC.i41
  %8705 = add i64 %8704, 5
  %8706 = load i64, i64* %PC.i41
  %8707 = add i64 %8706, 5
  store i64 %8707, i64* %PC.i41
  %8708 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %8705, i64* %8708, align 8
  store %struct.Memory* %loadMem_435f6b, %struct.Memory** %MEMORY
  br label %block_.L_435f70

block_.L_435f70:                                  ; preds = %block_.L_435f6b
  %loadMem_435f70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8710 = getelementptr inbounds %struct.GPR, %struct.GPR* %8709, i32 0, i32 33
  %8711 = getelementptr inbounds %struct.Reg, %struct.Reg* %8710, i32 0, i32 0
  %PC.i38 = bitcast %union.anon* %8711 to i64*
  %8712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8713 = getelementptr inbounds %struct.GPR, %struct.GPR* %8712, i32 0, i32 1
  %8714 = getelementptr inbounds %struct.Reg, %struct.Reg* %8713, i32 0, i32 0
  %RAX.i39 = bitcast %union.anon* %8714 to i64*
  %8715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8716 = getelementptr inbounds %struct.GPR, %struct.GPR* %8715, i32 0, i32 15
  %8717 = getelementptr inbounds %struct.Reg, %struct.Reg* %8716, i32 0, i32 0
  %RBP.i40 = bitcast %union.anon* %8717 to i64*
  %8718 = load i64, i64* %RBP.i40
  %8719 = sub i64 %8718, 76
  %8720 = load i64, i64* %PC.i38
  %8721 = add i64 %8720, 3
  store i64 %8721, i64* %PC.i38
  %8722 = inttoptr i64 %8719 to i32*
  %8723 = load i32, i32* %8722
  %8724 = zext i32 %8723 to i64
  store i64 %8724, i64* %RAX.i39, align 8
  store %struct.Memory* %loadMem_435f70, %struct.Memory** %MEMORY
  %loadMem_435f73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8725 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8726 = getelementptr inbounds %struct.GPR, %struct.GPR* %8725, i32 0, i32 33
  %8727 = getelementptr inbounds %struct.Reg, %struct.Reg* %8726, i32 0, i32 0
  %PC.i36 = bitcast %union.anon* %8727 to i64*
  %8728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8729 = getelementptr inbounds %struct.GPR, %struct.GPR* %8728, i32 0, i32 1
  %8730 = getelementptr inbounds %struct.Reg, %struct.Reg* %8729, i32 0, i32 0
  %RAX.i37 = bitcast %union.anon* %8730 to i64*
  %8731 = load i64, i64* %RAX.i37
  %8732 = load i64, i64* %PC.i36
  %8733 = add i64 %8732, 3
  store i64 %8733, i64* %PC.i36
  %8734 = trunc i64 %8731 to i32
  %8735 = add i32 -1, %8734
  %8736 = zext i32 %8735 to i64
  store i64 %8736, i64* %RAX.i37, align 8
  %8737 = icmp ult i32 %8735, %8734
  %8738 = icmp ult i32 %8735, -1
  %8739 = or i1 %8737, %8738
  %8740 = zext i1 %8739 to i8
  %8741 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8740, i8* %8741, align 1
  %8742 = and i32 %8735, 255
  %8743 = call i32 @llvm.ctpop.i32(i32 %8742)
  %8744 = trunc i32 %8743 to i8
  %8745 = and i8 %8744, 1
  %8746 = xor i8 %8745, 1
  %8747 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8746, i8* %8747, align 1
  %8748 = xor i64 -1, %8731
  %8749 = trunc i64 %8748 to i32
  %8750 = xor i32 %8749, %8735
  %8751 = lshr i32 %8750, 4
  %8752 = trunc i32 %8751 to i8
  %8753 = and i8 %8752, 1
  %8754 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8753, i8* %8754, align 1
  %8755 = icmp eq i32 %8735, 0
  %8756 = zext i1 %8755 to i8
  %8757 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8756, i8* %8757, align 1
  %8758 = lshr i32 %8735, 31
  %8759 = trunc i32 %8758 to i8
  %8760 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8759, i8* %8760, align 1
  %8761 = lshr i32 %8734, 31
  %8762 = xor i32 %8758, %8761
  %8763 = xor i32 %8758, 1
  %8764 = add i32 %8762, %8763
  %8765 = icmp eq i32 %8764, 2
  %8766 = zext i1 %8765 to i8
  %8767 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8766, i8* %8767, align 1
  store %struct.Memory* %loadMem_435f73, %struct.Memory** %MEMORY
  %loadMem_435f76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8768 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8769 = getelementptr inbounds %struct.GPR, %struct.GPR* %8768, i32 0, i32 33
  %8770 = getelementptr inbounds %struct.Reg, %struct.Reg* %8769, i32 0, i32 0
  %PC.i34 = bitcast %union.anon* %8770 to i64*
  %8771 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8772 = getelementptr inbounds %struct.GPR, %struct.GPR* %8771, i32 0, i32 1
  %8773 = getelementptr inbounds %struct.Reg, %struct.Reg* %8772, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %8773 to i32*
  %8774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8775 = getelementptr inbounds %struct.GPR, %struct.GPR* %8774, i32 0, i32 15
  %8776 = getelementptr inbounds %struct.Reg, %struct.Reg* %8775, i32 0, i32 0
  %RBP.i35 = bitcast %union.anon* %8776 to i64*
  %8777 = load i64, i64* %RBP.i35
  %8778 = sub i64 %8777, 76
  %8779 = load i32, i32* %EAX.i
  %8780 = zext i32 %8779 to i64
  %8781 = load i64, i64* %PC.i34
  %8782 = add i64 %8781, 3
  store i64 %8782, i64* %PC.i34
  %8783 = inttoptr i64 %8778 to i32*
  store i32 %8779, i32* %8783
  store %struct.Memory* %loadMem_435f76, %struct.Memory** %MEMORY
  %loadMem_435f79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8785 = getelementptr inbounds %struct.GPR, %struct.GPR* %8784, i32 0, i32 33
  %8786 = getelementptr inbounds %struct.Reg, %struct.Reg* %8785, i32 0, i32 0
  %PC.i33 = bitcast %union.anon* %8786 to i64*
  %8787 = load i64, i64* %PC.i33
  %8788 = add i64 %8787, -1335
  %8789 = load i64, i64* %PC.i33
  %8790 = add i64 %8789, 5
  store i64 %8790, i64* %PC.i33
  %8791 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %8788, i64* %8791, align 8
  store %struct.Memory* %loadMem_435f79, %struct.Memory** %MEMORY
  br label %block_.L_435a42

block_.L_435f7e:                                  ; preds = %block_.L_435a42
  %loadMem_435f7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %8792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8793 = getelementptr inbounds %struct.GPR, %struct.GPR* %8792, i32 0, i32 33
  %8794 = getelementptr inbounds %struct.Reg, %struct.Reg* %8793, i32 0, i32 0
  %PC.i30 = bitcast %union.anon* %8794 to i64*
  %8795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8796 = getelementptr inbounds %struct.GPR, %struct.GPR* %8795, i32 0, i32 1
  %8797 = getelementptr inbounds %struct.Reg, %struct.Reg* %8796, i32 0, i32 0
  %RAX.i31 = bitcast %union.anon* %8797 to i64*
  %8798 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8799 = getelementptr inbounds %struct.GPR, %struct.GPR* %8798, i32 0, i32 15
  %8800 = getelementptr inbounds %struct.Reg, %struct.Reg* %8799, i32 0, i32 0
  %RBP.i32 = bitcast %union.anon* %8800 to i64*
  %8801 = load i64, i64* %RBP.i32
  %8802 = sub i64 %8801, 48
  %8803 = load i64, i64* %PC.i30
  %8804 = add i64 %8803, 4
  store i64 %8804, i64* %PC.i30
  %8805 = inttoptr i64 %8802 to i64*
  %8806 = load i64, i64* %8805
  store i64 %8806, i64* %RAX.i31, align 8
  store %struct.Memory* %loadMem_435f7e, %struct.Memory** %MEMORY
  %loadMem_435f82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8808 = getelementptr inbounds %struct.GPR, %struct.GPR* %8807, i32 0, i32 33
  %8809 = getelementptr inbounds %struct.Reg, %struct.Reg* %8808, i32 0, i32 0
  %PC.i28 = bitcast %union.anon* %8809 to i64*
  %8810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8811 = getelementptr inbounds %struct.GPR, %struct.GPR* %8810, i32 0, i32 1
  %8812 = getelementptr inbounds %struct.Reg, %struct.Reg* %8811, i32 0, i32 0
  %RAX.i29 = bitcast %union.anon* %8812 to i64*
  %8813 = load i64, i64* %RAX.i29
  %8814 = load i64, i64* %PC.i28
  %8815 = add i64 %8814, 3
  store i64 %8815, i64* %PC.i28
  %8816 = inttoptr i64 %8813 to i64*
  %8817 = load i64, i64* %8816
  store i64 %8817, i64* %RAX.i29, align 8
  store %struct.Memory* %loadMem_435f82, %struct.Memory** %MEMORY
  %loadMem_435f85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8819 = getelementptr inbounds %struct.GPR, %struct.GPR* %8818, i32 0, i32 33
  %8820 = getelementptr inbounds %struct.Reg, %struct.Reg* %8819, i32 0, i32 0
  %PC.i25 = bitcast %union.anon* %8820 to i64*
  %8821 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8822 = getelementptr inbounds %struct.GPR, %struct.GPR* %8821, i32 0, i32 1
  %8823 = getelementptr inbounds %struct.Reg, %struct.Reg* %8822, i32 0, i32 0
  %RAX.i26 = bitcast %union.anon* %8823 to i64*
  %8824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8825 = getelementptr inbounds %struct.GPR, %struct.GPR* %8824, i32 0, i32 5
  %8826 = getelementptr inbounds %struct.Reg, %struct.Reg* %8825, i32 0, i32 0
  %RCX.i27 = bitcast %union.anon* %8826 to i64*
  %8827 = load i64, i64* %RAX.i26
  %8828 = add i64 %8827, 16
  %8829 = load i64, i64* %PC.i25
  %8830 = add i64 %8829, 3
  store i64 %8830, i64* %PC.i25
  %8831 = inttoptr i64 %8828 to i32*
  %8832 = load i32, i32* %8831
  %8833 = zext i32 %8832 to i64
  store i64 %8833, i64* %RCX.i27, align 8
  store %struct.Memory* %loadMem_435f85, %struct.Memory** %MEMORY
  %loadMem_435f88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8835 = getelementptr inbounds %struct.GPR, %struct.GPR* %8834, i32 0, i32 33
  %8836 = getelementptr inbounds %struct.Reg, %struct.Reg* %8835, i32 0, i32 0
  %PC.i23 = bitcast %union.anon* %8836 to i64*
  %8837 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8838 = getelementptr inbounds %struct.GPR, %struct.GPR* %8837, i32 0, i32 5
  %8839 = getelementptr inbounds %struct.Reg, %struct.Reg* %8838, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %8839 to i32*
  %8840 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8841 = getelementptr inbounds %struct.GPR, %struct.GPR* %8840, i32 0, i32 15
  %8842 = getelementptr inbounds %struct.Reg, %struct.Reg* %8841, i32 0, i32 0
  %RBP.i24 = bitcast %union.anon* %8842 to i64*
  %8843 = load i64, i64* %RBP.i24
  %8844 = sub i64 %8843, 84
  %8845 = load i32, i32* %ECX.i
  %8846 = zext i32 %8845 to i64
  %8847 = load i64, i64* %PC.i23
  %8848 = add i64 %8847, 3
  store i64 %8848, i64* %PC.i23
  %8849 = inttoptr i64 %8844 to i32*
  store i32 %8845, i32* %8849
  store %struct.Memory* %loadMem_435f88, %struct.Memory** %MEMORY
  %loadMem_435f8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %8850 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8851 = getelementptr inbounds %struct.GPR, %struct.GPR* %8850, i32 0, i32 33
  %8852 = getelementptr inbounds %struct.Reg, %struct.Reg* %8851, i32 0, i32 0
  %PC.i21 = bitcast %union.anon* %8852 to i64*
  %8853 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8854 = getelementptr inbounds %struct.GPR, %struct.GPR* %8853, i32 0, i32 15
  %8855 = getelementptr inbounds %struct.Reg, %struct.Reg* %8854, i32 0, i32 0
  %RBP.i22 = bitcast %union.anon* %8855 to i64*
  %8856 = load i64, i64* %RBP.i22
  %8857 = sub i64 %8856, 32
  %8858 = load i64, i64* %PC.i21
  %8859 = add i64 %8858, 5
  store i64 %8859, i64* %PC.i21
  %8860 = inttoptr i64 %8857 to i64*
  %8861 = load i64, i64* %8860
  %8862 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8862, align 1
  %8863 = trunc i64 %8861 to i32
  %8864 = and i32 %8863, 255
  %8865 = call i32 @llvm.ctpop.i32(i32 %8864)
  %8866 = trunc i32 %8865 to i8
  %8867 = and i8 %8866, 1
  %8868 = xor i8 %8867, 1
  %8869 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8868, i8* %8869, align 1
  %8870 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %8870, align 1
  %8871 = icmp eq i64 %8861, 0
  %8872 = zext i1 %8871 to i8
  %8873 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8872, i8* %8873, align 1
  %8874 = lshr i64 %8861, 63
  %8875 = trunc i64 %8874 to i8
  %8876 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8875, i8* %8876, align 1
  %8877 = lshr i64 %8861, 63
  %8878 = xor i64 %8874, %8877
  %8879 = add i64 %8878, %8877
  %8880 = icmp eq i64 %8879, 2
  %8881 = zext i1 %8880 to i8
  %8882 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8881, i8* %8882, align 1
  store %struct.Memory* %loadMem_435f8b, %struct.Memory** %MEMORY
  %loadMem_435f90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8884 = getelementptr inbounds %struct.GPR, %struct.GPR* %8883, i32 0, i32 33
  %8885 = getelementptr inbounds %struct.Reg, %struct.Reg* %8884, i32 0, i32 0
  %PC.i20 = bitcast %union.anon* %8885 to i64*
  %8886 = load i64, i64* %PC.i20
  %8887 = add i64 %8886, 22
  %8888 = load i64, i64* %PC.i20
  %8889 = add i64 %8888, 6
  %8890 = load i64, i64* %PC.i20
  %8891 = add i64 %8890, 6
  store i64 %8891, i64* %PC.i20
  %8892 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %8893 = load i8, i8* %8892, align 1
  store i8 %8893, i8* %BRANCH_TAKEN, align 1
  %8894 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %8895 = icmp ne i8 %8893, 0
  %8896 = select i1 %8895, i64 %8887, i64 %8889
  store i64 %8896, i64* %8894, align 8
  store %struct.Memory* %loadMem_435f90, %struct.Memory** %MEMORY
  %loadBr_435f90 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_435f90 = icmp eq i8 %loadBr_435f90, 1
  br i1 %cmpBr_435f90, label %block_.L_435fa6, label %block_435f96

block_435f96:                                     ; preds = %block_.L_435f7e
  %loadMem_435f96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8897 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8898 = getelementptr inbounds %struct.GPR, %struct.GPR* %8897, i32 0, i32 33
  %8899 = getelementptr inbounds %struct.Reg, %struct.Reg* %8898, i32 0, i32 0
  %PC.i17 = bitcast %union.anon* %8899 to i64*
  %8900 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8901 = getelementptr inbounds %struct.GPR, %struct.GPR* %8900, i32 0, i32 1
  %8902 = getelementptr inbounds %struct.Reg, %struct.Reg* %8901, i32 0, i32 0
  %RAX.i18 = bitcast %union.anon* %8902 to i64*
  %8903 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8904 = getelementptr inbounds %struct.GPR, %struct.GPR* %8903, i32 0, i32 15
  %8905 = getelementptr inbounds %struct.Reg, %struct.Reg* %8904, i32 0, i32 0
  %RBP.i19 = bitcast %union.anon* %8905 to i64*
  %8906 = load i64, i64* %RBP.i19
  %8907 = sub i64 %8906, 40
  %8908 = load i64, i64* %PC.i17
  %8909 = add i64 %8908, 4
  store i64 %8909, i64* %PC.i17
  %8910 = inttoptr i64 %8907 to i64*
  %8911 = load i64, i64* %8910
  store i64 %8911, i64* %RAX.i18, align 8
  store %struct.Memory* %loadMem_435f96, %struct.Memory** %MEMORY
  %loadMem_435f9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %8912 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8913 = getelementptr inbounds %struct.GPR, %struct.GPR* %8912, i32 0, i32 33
  %8914 = getelementptr inbounds %struct.Reg, %struct.Reg* %8913, i32 0, i32 0
  %PC.i14 = bitcast %union.anon* %8914 to i64*
  %8915 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8916 = getelementptr inbounds %struct.GPR, %struct.GPR* %8915, i32 0, i32 5
  %8917 = getelementptr inbounds %struct.Reg, %struct.Reg* %8916, i32 0, i32 0
  %RCX.i15 = bitcast %union.anon* %8917 to i64*
  %8918 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8919 = getelementptr inbounds %struct.GPR, %struct.GPR* %8918, i32 0, i32 15
  %8920 = getelementptr inbounds %struct.Reg, %struct.Reg* %8919, i32 0, i32 0
  %RBP.i16 = bitcast %union.anon* %8920 to i64*
  %8921 = load i64, i64* %RBP.i16
  %8922 = sub i64 %8921, 32
  %8923 = load i64, i64* %PC.i14
  %8924 = add i64 %8923, 4
  store i64 %8924, i64* %PC.i14
  %8925 = inttoptr i64 %8922 to i64*
  %8926 = load i64, i64* %8925
  store i64 %8926, i64* %RCX.i15, align 8
  store %struct.Memory* %loadMem_435f9a, %struct.Memory** %MEMORY
  %loadMem_435f9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %8927 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8928 = getelementptr inbounds %struct.GPR, %struct.GPR* %8927, i32 0, i32 33
  %8929 = getelementptr inbounds %struct.Reg, %struct.Reg* %8928, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %8929 to i64*
  %8930 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8931 = getelementptr inbounds %struct.GPR, %struct.GPR* %8930, i32 0, i32 1
  %8932 = getelementptr inbounds %struct.Reg, %struct.Reg* %8931, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %8932 to i64*
  %8933 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8934 = getelementptr inbounds %struct.GPR, %struct.GPR* %8933, i32 0, i32 5
  %8935 = getelementptr inbounds %struct.Reg, %struct.Reg* %8934, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %8935 to i64*
  %8936 = load i64, i64* %RCX.i
  %8937 = load i64, i64* %RAX.i
  %8938 = load i64, i64* %PC.i13
  %8939 = add i64 %8938, 3
  store i64 %8939, i64* %PC.i13
  %8940 = inttoptr i64 %8936 to i64*
  store i64 %8937, i64* %8940
  store %struct.Memory* %loadMem_435f9e, %struct.Memory** %MEMORY
  %loadMem_435fa1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8941 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8942 = getelementptr inbounds %struct.GPR, %struct.GPR* %8941, i32 0, i32 33
  %8943 = getelementptr inbounds %struct.Reg, %struct.Reg* %8942, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %8943 to i64*
  %8944 = load i64, i64* %PC.i12
  %8945 = add i64 %8944, 14
  %8946 = load i64, i64* %PC.i12
  %8947 = add i64 %8946, 5
  store i64 %8947, i64* %PC.i12
  %8948 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %8945, i64* %8948, align 8
  store %struct.Memory* %loadMem_435fa1, %struct.Memory** %MEMORY
  br label %block_.L_435faf

block_.L_435fa6:                                  ; preds = %block_.L_435f7e
  %loadMem_435fa6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8949 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8950 = getelementptr inbounds %struct.GPR, %struct.GPR* %8949, i32 0, i32 33
  %8951 = getelementptr inbounds %struct.Reg, %struct.Reg* %8950, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %8951 to i64*
  %8952 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8953 = getelementptr inbounds %struct.GPR, %struct.GPR* %8952, i32 0, i32 11
  %8954 = getelementptr inbounds %struct.Reg, %struct.Reg* %8953, i32 0, i32 0
  %RDI.i10 = bitcast %union.anon* %8954 to i64*
  %8955 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8956 = getelementptr inbounds %struct.GPR, %struct.GPR* %8955, i32 0, i32 15
  %8957 = getelementptr inbounds %struct.Reg, %struct.Reg* %8956, i32 0, i32 0
  %RBP.i11 = bitcast %union.anon* %8957 to i64*
  %8958 = load i64, i64* %RBP.i11
  %8959 = sub i64 %8958, 40
  %8960 = load i64, i64* %PC.i9
  %8961 = add i64 %8960, 4
  store i64 %8961, i64* %PC.i9
  %8962 = inttoptr i64 %8959 to i64*
  %8963 = load i64, i64* %8962
  store i64 %8963, i64* %RDI.i10, align 8
  store %struct.Memory* %loadMem_435fa6, %struct.Memory** %MEMORY
  %loadMem1_435faa = load %struct.Memory*, %struct.Memory** %MEMORY
  %8964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8965 = getelementptr inbounds %struct.GPR, %struct.GPR* %8964, i32 0, i32 33
  %8966 = getelementptr inbounds %struct.Reg, %struct.Reg* %8965, i32 0, i32 0
  %PC.i8 = bitcast %union.anon* %8966 to i64*
  %8967 = load i64, i64* %PC.i8
  %8968 = add i64 %8967, -190058
  %8969 = load i64, i64* %PC.i8
  %8970 = add i64 %8969, 5
  %8971 = load i64, i64* %PC.i8
  %8972 = add i64 %8971, 5
  store i64 %8972, i64* %PC.i8
  %8973 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %8974 = load i64, i64* %8973, align 8
  %8975 = add i64 %8974, -8
  %8976 = inttoptr i64 %8975 to i64*
  store i64 %8970, i64* %8976
  store i64 %8975, i64* %8973, align 8
  %8977 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %8968, i64* %8977, align 8
  store %struct.Memory* %loadMem1_435faa, %struct.Memory** %MEMORY
  %loadMem2_435faa = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_435faa = load i64, i64* %3
  %call2_435faa = call %struct.Memory* @sub_407940.FreePlan7Matrix(%struct.State* %0, i64 %loadPC_435faa, %struct.Memory* %loadMem2_435faa)
  store %struct.Memory* %call2_435faa, %struct.Memory** %MEMORY
  br label %block_.L_435faf

block_.L_435faf:                                  ; preds = %block_.L_435fa6, %block_435f96
  %loadMem_435faf = load %struct.Memory*, %struct.Memory** %MEMORY
  %8978 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8979 = getelementptr inbounds %struct.GPR, %struct.GPR* %8978, i32 0, i32 33
  %8980 = getelementptr inbounds %struct.Reg, %struct.Reg* %8979, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %8980 to i64*
  %8981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8982 = getelementptr inbounds %struct.GPR, %struct.GPR* %8981, i32 0, i32 11
  %8983 = getelementptr inbounds %struct.Reg, %struct.Reg* %8982, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %8983 to i64*
  %8984 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8985 = getelementptr inbounds %struct.GPR, %struct.GPR* %8984, i32 0, i32 15
  %8986 = getelementptr inbounds %struct.Reg, %struct.Reg* %8985, i32 0, i32 0
  %RBP.i7 = bitcast %union.anon* %8986 to i64*
  %8987 = load i64, i64* %RBP.i7
  %8988 = sub i64 %8987, 84
  %8989 = load i64, i64* %PC.i6
  %8990 = add i64 %8989, 3
  store i64 %8990, i64* %PC.i6
  %8991 = inttoptr i64 %8988 to i32*
  %8992 = load i32, i32* %8991
  %8993 = zext i32 %8992 to i64
  store i64 %8993, i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_435faf, %struct.Memory** %MEMORY
  %loadMem1_435fb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8995 = getelementptr inbounds %struct.GPR, %struct.GPR* %8994, i32 0, i32 33
  %8996 = getelementptr inbounds %struct.Reg, %struct.Reg* %8995, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %8996 to i64*
  %8997 = load i64, i64* %PC.i5
  %8998 = add i64 %8997, -57538
  %8999 = load i64, i64* %PC.i5
  %9000 = add i64 %8999, 5
  %9001 = load i64, i64* %PC.i5
  %9002 = add i64 %9001, 5
  store i64 %9002, i64* %PC.i5
  %9003 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %9004 = load i64, i64* %9003, align 8
  %9005 = add i64 %9004, -8
  %9006 = inttoptr i64 %9005 to i64*
  store i64 %9000, i64* %9006
  store i64 %9005, i64* %9003, align 8
  %9007 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %8998, i64* %9007, align 8
  store %struct.Memory* %loadMem1_435fb2, %struct.Memory** %MEMORY
  %loadMem2_435fb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_435fb2 = load i64, i64* %3
  %call2_435fb2 = call %struct.Memory* @sub_427ef0.Scorify(%struct.State* %0, i64 %loadPC_435fb2, %struct.Memory* %loadMem2_435fb2)
  store %struct.Memory* %call2_435fb2, %struct.Memory** %MEMORY
  %loadMem_435fb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9008 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9009 = getelementptr inbounds %struct.GPR, %struct.GPR* %9008, i32 0, i32 33
  %9010 = getelementptr inbounds %struct.Reg, %struct.Reg* %9009, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %9010 to i64*
  %9011 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9012 = getelementptr inbounds %struct.GPR, %struct.GPR* %9011, i32 0, i32 13
  %9013 = getelementptr inbounds %struct.Reg, %struct.Reg* %9012, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %9013 to i64*
  %9014 = load i64, i64* %RSP.i
  %9015 = load i64, i64* %PC.i4
  %9016 = add i64 %9015, 4
  store i64 %9016, i64* %PC.i4
  %9017 = add i64 96, %9014
  store i64 %9017, i64* %RSP.i, align 8
  %9018 = icmp ult i64 %9017, %9014
  %9019 = icmp ult i64 %9017, 96
  %9020 = or i1 %9018, %9019
  %9021 = zext i1 %9020 to i8
  %9022 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %9021, i8* %9022, align 1
  %9023 = trunc i64 %9017 to i32
  %9024 = and i32 %9023, 255
  %9025 = call i32 @llvm.ctpop.i32(i32 %9024)
  %9026 = trunc i32 %9025 to i8
  %9027 = and i8 %9026, 1
  %9028 = xor i8 %9027, 1
  %9029 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %9028, i8* %9029, align 1
  %9030 = xor i64 96, %9014
  %9031 = xor i64 %9030, %9017
  %9032 = lshr i64 %9031, 4
  %9033 = trunc i64 %9032 to i8
  %9034 = and i8 %9033, 1
  %9035 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %9034, i8* %9035, align 1
  %9036 = icmp eq i64 %9017, 0
  %9037 = zext i1 %9036 to i8
  %9038 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %9037, i8* %9038, align 1
  %9039 = lshr i64 %9017, 63
  %9040 = trunc i64 %9039 to i8
  %9041 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %9040, i8* %9041, align 1
  %9042 = lshr i64 %9014, 63
  %9043 = xor i64 %9039, %9042
  %9044 = add i64 %9043, %9039
  %9045 = icmp eq i64 %9044, 2
  %9046 = zext i1 %9045 to i8
  %9047 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %9046, i8* %9047, align 1
  store %struct.Memory* %loadMem_435fb7, %struct.Memory** %MEMORY
  %loadMem_435fbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %9048 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9049 = getelementptr inbounds %struct.GPR, %struct.GPR* %9048, i32 0, i32 33
  %9050 = getelementptr inbounds %struct.Reg, %struct.Reg* %9049, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %9050 to i64*
  %9051 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9052 = getelementptr inbounds %struct.GPR, %struct.GPR* %9051, i32 0, i32 15
  %9053 = getelementptr inbounds %struct.Reg, %struct.Reg* %9052, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %9053 to i64*
  %9054 = load i64, i64* %PC.i2
  %9055 = add i64 %9054, 1
  store i64 %9055, i64* %PC.i2
  %9056 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %9057 = load i64, i64* %9056, align 8
  %9058 = add i64 %9057, 8
  %9059 = inttoptr i64 %9057 to i64*
  %9060 = load i64, i64* %9059
  store i64 %9060, i64* %RBP.i3, align 8
  store i64 %9058, i64* %9056, align 8
  store %struct.Memory* %loadMem_435fbb, %struct.Memory** %MEMORY
  %loadMem_435fbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %9061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9062 = getelementptr inbounds %struct.GPR, %struct.GPR* %9061, i32 0, i32 33
  %9063 = getelementptr inbounds %struct.Reg, %struct.Reg* %9062, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %9063 to i64*
  %9064 = load i64, i64* %PC.i1
  %9065 = add i64 %9064, 1
  store i64 %9065, i64* %PC.i1
  %9066 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %9067 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %9068 = load i64, i64* %9067, align 8
  %9069 = inttoptr i64 %9068 to i64*
  %9070 = load i64, i64* %9069
  store i64 %9070, i64* %9066, align 8
  %9071 = add i64 %9068, 8
  store i64 %9071, i64* %9067, align 8
  store %struct.Memory* %loadMem_435fbc, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_435fbc
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

define %struct.Memory* @routine_leaq_MINUS0x30__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 %13, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_leaq_MINUS0x38__rbp____r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 56
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  store i64 %13, i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_leaq_MINUS0x40__rbp____r9(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  store i64 %13, i64* %R9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_leaq_MINUS0x48__rbp____r10(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 21
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R10 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 72
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  store i64 %13, i64* %R10, align 8
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

define %struct.Memory* @routine_movl_MINUS0xc__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 12
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

define %struct.Memory* @routine_movl_0x88__rcx____r11d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RCX = bitcast %union.anon* %11 to i64*
  %12 = bitcast i32* %R11D to i64*
  %13 = load i64, i64* %RCX
  %14 = add i64 %13, 136
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__esi___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %ESI
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__r11d___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %R11D
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  store i64 %12, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r8___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R8
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  store i64 %12, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r9___r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R8 = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 19
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R9 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R9
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  store i64 %12, i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r10___r9(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 19
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R9 = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 21
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R10 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R10
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  store i64 %12, i64* %R9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.AllocPlan7Matrix(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__rax__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movl_0x160__rax____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 352
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
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

define %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movl__esi__0x8__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 8
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x8__rax____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_0x158__rax____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, 344
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = trunc i64 %12 to i32
  %18 = inttoptr i64 %14 to i32*
  %19 = load i32, i32* %18
  %20 = add i32 %19, %17
  %21 = zext i32 %20 to i64
  store i64 %21, i64* %RSI, align 8
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

define %struct.Memory* @routine_movl__esi__0x4__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 4
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0xc521974f__0x10__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 -987654321, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0xc521974f____rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 6
  store i64 %11, i64* %PC
  %12 = inttoptr i64 %9 to i32*
  store i32 -987654321, i32* %12
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0xc521974f__0xc__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 -987654321, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x88__rax____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 136
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__esi__MINUS0x50__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 80
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x1__MINUS0x50__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 80
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sub i32 %14, 1
  %16 = icmp ult i32 %14, 1
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
  %25 = xor i32 %14, 1
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

define %struct.Memory* @routine_jl_.L_4359ed(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %19 = zext i1 %18 to i8
  store i8 %19, i8* %BRANCH_TAKEN, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %21 = select i1 %18, i64 %7, i64 %9
  store i64 %21, i64* %20, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x4__rax____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 4
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x178__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 376
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x50__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 80
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl___rax__rcx_4____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = load i64, i64* %RDX
  %16 = load i64, i64* %RAX
  %17 = load i64, i64* %RCX
  %18 = mul i64 %17, 4
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 3
  store i64 %21, i64* %PC
  %22 = trunc i64 %15 to i32
  %23 = inttoptr i64 %19 to i32*
  %24 = load i32, i32* %23
  %25 = add i32 %24, %22
  %26 = zext i32 %25 to i64
  store i64 %26, i64* %RDX, align 8
  %27 = icmp ult i32 %25, %22
  %28 = icmp ult i32 %25, %24
  %29 = or i1 %27, %28
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %30, i8* %31, align 1
  %32 = and i32 %25, 255
  %33 = call i32 @llvm.ctpop.i32(i32 %32)
  %34 = trunc i32 %33 to i8
  %35 = and i8 %34, 1
  %36 = xor i8 %35, 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %36, i8* %37, align 1
  %38 = xor i32 %24, %22
  %39 = xor i32 %38, %25
  %40 = lshr i32 %39, 4
  %41 = trunc i32 %40 to i8
  %42 = and i8 %41, 1
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %42, i8* %43, align 1
  %44 = icmp eq i32 %25, 0
  %45 = zext i1 %44 to i8
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %45, i8* %46, align 1
  %47 = lshr i32 %25, 31
  %48 = trunc i32 %47 to i8
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %48, i8* %49, align 1
  %50 = lshr i32 %22, 31
  %51 = lshr i32 %24, 31
  %52 = xor i32 %47, %50
  %53 = xor i32 %47, %51
  %54 = add i32 %52, %53
  %55 = icmp eq i32 %54, 2
  %56 = zext i1 %55 to i8
  %57 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %56, i8* %57, align 1
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

define %struct.Memory* @routine_movq_0x140__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 320
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
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

define %struct.Memory* @routine_movslq_MINUS0xc__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsbl___rcx__rsi_1____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 9
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RSI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %RSI
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

define %struct.Memory* @routine_movl__0xc521974f____rax__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 -987654321, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x40__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x50__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 80
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__0xffffffff___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i32 -1, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RAX, align 8
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

define %struct.Memory* @routine_movl__eax__MINUS0x50__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 80
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_435938(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq_0x138__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 312
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
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

define %struct.Memory* @routine_movl_0x88__rcx____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 136
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
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

define %struct.Memory* @routine_movq_0x30__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 48
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
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

define %struct.Memory* @routine_movl__edx__MINUS0x4c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 76
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0__MINUS0x4c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 76
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

define %struct.Memory* @routine_jl_.L_435f7e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %19 = zext i1 %18 to i8
  store i8 %19, i8* %BRANCH_TAKEN, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %21 = select i1 %18, i64 %7, i64 %9
  store i64 %21, i64* %20, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x4c__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 76
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

define %struct.Memory* @routine_addl_0x164__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, 356
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
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

define %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 76
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
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

define %struct.Memory* @routine_movl___rax____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RAX
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 2
  store i64 %14, i64* %PC
  %15 = inttoptr i64 %12 to i32*
  %16 = load i32, i32* %15
  %17 = zext i32 %16 to i64
  store i64 %17, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_0x88__rdx____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 136
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl___rax__rdx_4____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 3
  store i64 %20, i64* %PC
  %21 = inttoptr i64 %18 to i32*
  %22 = load i32, i32* %21
  %23 = zext i32 %22 to i64
  store i64 %23, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x170__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 368
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x88__rdx____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 136
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl__0x1___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %12, 1
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RSI, align 8
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

define %struct.Memory* @routine_movslq__esi___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %ESI
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  store i64 %17, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl___rax__rdx_4____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %RAX
  %17 = load i64, i64* %RDX
  %18 = mul i64 %17, 4
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 3
  store i64 %21, i64* %PC
  %22 = trunc i64 %15 to i32
  %23 = inttoptr i64 %19 to i32*
  %24 = load i32, i32* %23
  %25 = add i32 %24, %22
  %26 = zext i32 %25 to i64
  store i64 %26, i64* %RCX, align 8
  %27 = icmp ult i32 %25, %22
  %28 = icmp ult i32 %25, %24
  %29 = or i1 %27, %28
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %30, i8* %31, align 1
  %32 = and i32 %25, 255
  %33 = call i32 @llvm.ctpop.i32(i32 %32)
  %34 = trunc i32 %33 to i8
  %35 = and i8 %34, 1
  %36 = xor i8 %35, 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %36, i8* %37, align 1
  %38 = xor i32 %24, %22
  %39 = xor i32 %38, %25
  %40 = lshr i32 %39, 4
  %41 = trunc i32 %40 to i8
  %42 = and i8 %41, 1
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %42, i8* %43, align 1
  %44 = icmp eq i32 %25, 0
  %45 = zext i1 %44 to i8
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %45, i8* %46, align 1
  %47 = lshr i32 %25, 31
  %48 = trunc i32 %47 to i8
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %48, i8* %49, align 1
  %50 = lshr i32 %22, 31
  %51 = lshr i32 %24, 31
  %52 = xor i32 %47, %50
  %53 = xor i32 %47, %51
  %54 = add i32 %52, %53
  %55 = icmp eq i32 %54, 2
  %56 = zext i1 %55 to i8
  %57 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %56, i8* %57, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.ILogsum(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x4c__rbp____r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 76
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq___rdx__r8_8____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDX
  %13 = load i64, i64* %R8
  %14 = mul i64 %13, 8
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %15 to i64*
  %19 = load i64, i64* %18
  store i64 %19, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax____rdx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDX = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDX
  %13 = load i32, i32* %EAX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %12 to i32*
  store i32 %13, i32* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x88__rdx____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RDX
  %13 = add i64 %12, 136
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl__0x1___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %12, 1
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RAX, align 8
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

define %struct.Memory* @routine_jl_.L_435b60(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %19 = zext i1 %18 to i8
  store i8 %19, i8* %BRANCH_TAKEN, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %21 = select i1 %18, i64 %7, i64 %9
  store i64 %21, i64* %20, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 76
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x4c__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 76
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

define %struct.Memory* @routine_movl__edx___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %EDX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RSI, align 8
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

define %struct.Memory* @routine_movq___rcx__r8_8____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RCX
  %13 = load i64, i64* %R8
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

define %struct.Memory* @routine_jmpq_.L_435afb(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl___rax____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 2
  store i64 %14, i64* %PC
  %15 = inttoptr i64 %12 to i32*
  %16 = load i32, i32* %15
  %17 = zext i32 %16 to i64
  store i64 %17, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_0x168__rax____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RDX
  %13 = load i64, i64* %RAX
  %14 = add i64 %13, 360
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = trunc i64 %12 to i32
  %18 = inttoptr i64 %14 to i32*
  %19 = load i32, i32* %18
  %20 = add i32 %19, %17
  %21 = zext i32 %20 to i64
  store i64 %21, i64* %RDX, align 8
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

define %struct.Memory* @routine_movl_MINUS0x4c__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 76
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq__esi___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i32, i32* %ESI
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0xc__rax____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_0x16c__rax____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, 364
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = trunc i64 %12 to i32
  %18 = inttoptr i64 %14 to i32*
  %19 = load i32, i32* %18
  %20 = add i32 %19, %17
  %21 = zext i32 %20 to i64
  store i64 %21, i64* %RSI, align 8
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

define %struct.Memory* @routine_movl__edx___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %EDX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__0xc__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 12
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x8__rcx____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_0x158__rcx____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, 344
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
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

define %struct.Memory* @routine_movl_0xc__rcx____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_0x15c__rcx____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, 348
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = trunc i64 %12 to i32
  %18 = inttoptr i64 %14 to i32*
  %19 = load i32, i32* %18
  %20 = add i32 %19, %17
  %21 = zext i32 %20 to i64
  store i64 %21, i64* %RDX, align 8
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

define %struct.Memory* @routine_movl___rcx____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 2
  store i64 %14, i64* %PC
  %15 = inttoptr i64 %12 to i32*
  %16 = load i32, i32* %15
  %17 = zext i32 %16 to i64
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_0x150__rcx____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, 336
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
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

define %struct.Memory* @routine_movslq__edx___r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %EDX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  store i64 %17, i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x10__rcx____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_0x154__rcx____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, 340
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = trunc i64 %12 to i32
  %18 = inttoptr i64 %14 to i32*
  %19 = load i32, i32* %18
  %20 = add i32 %19, %17
  %21 = zext i32 %20 to i64
  store i64 %21, i64* %RDX, align 8
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

define %struct.Memory* @routine_movl__eax__0x10__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 16
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jle_.L_435f6b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_0x88__rcx____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 136
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 76
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsbl___rcx__rsi_1____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 11
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %RSI
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

define %struct.Memory* @routine_movslq__edi___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RCX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %EDI
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x88__rax____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 136
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0x50__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 80
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jl_.L_435f66(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %19 = zext i1 %18 to i8
  store i8 %19, i8* %BRANCH_TAKEN, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %21 = select i1 %18, i64 %7, i64 %9
  store i64 %21, i64* %20, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x50__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
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

define %struct.Memory* @routine_addl___rax__rcx_4____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = load i64, i64* %RSI
  %16 = load i64, i64* %RAX
  %17 = load i64, i64* %RCX
  %18 = mul i64 %17, 4
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 3
  store i64 %21, i64* %PC
  %22 = trunc i64 %15 to i32
  %23 = inttoptr i64 %19 to i32*
  %24 = load i32, i32* %23
  %25 = add i32 %24, %22
  %26 = zext i32 %25 to i64
  store i64 %26, i64* %RSI, align 8
  %27 = icmp ult i32 %25, %22
  %28 = icmp ult i32 %25, %24
  %29 = or i1 %27, %28
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %30, i8* %31, align 1
  %32 = and i32 %25, 255
  %33 = call i32 @llvm.ctpop.i32(i32 %32)
  %34 = trunc i32 %33 to i8
  %35 = and i8 %34, 1
  %36 = xor i8 %35, 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %36, i8* %37, align 1
  %38 = xor i32 %24, %22
  %39 = xor i32 %38, %25
  %40 = lshr i32 %39, 4
  %41 = trunc i32 %40 to i8
  %42 = and i8 %41, 1
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %42, i8* %43, align 1
  %44 = icmp eq i32 %25, 0
  %45 = zext i1 %44 to i8
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %45, i8* %46, align 1
  %47 = lshr i32 %25, 31
  %48 = trunc i32 %47 to i8
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %48, i8* %49, align 1
  %50 = lshr i32 %22, 31
  %51 = lshr i32 %24, 31
  %52 = xor i32 %47, %50
  %53 = xor i32 %47, %51
  %54 = add i32 %52, %53
  %55 = icmp eq i32 %54, 2
  %56 = zext i1 %55 to i8
  %57 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %56, i8* %57, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x40__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x50__rbp____r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 80
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl___rcx__r8_4____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 17
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %R8 = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %R8
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 4
  store i64 %20, i64* %PC
  %21 = inttoptr i64 %18 to i32*
  %22 = load i32, i32* %21
  %23 = zext i32 %22 to i64
  store i64 %23, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x138__rcx____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 312
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x8__rcx____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 8
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl___rcx__r8_4____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 17
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %R8 = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RDX
  %16 = load i64, i64* %RCX
  %17 = load i64, i64* %R8
  %18 = mul i64 %17, 4
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 4
  store i64 %21, i64* %PC
  %22 = trunc i64 %15 to i32
  %23 = inttoptr i64 %19 to i32*
  %24 = load i32, i32* %23
  %25 = add i32 %24, %22
  %26 = zext i32 %25 to i64
  store i64 %26, i64* %RDX, align 8
  %27 = icmp ult i32 %25, %22
  %28 = icmp ult i32 %25, %24
  %29 = or i1 %27, %28
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %30, i8* %31, align 1
  %32 = and i32 %25, 255
  %33 = call i32 @llvm.ctpop.i32(i32 %32)
  %34 = trunc i32 %33 to i8
  %35 = and i8 %34, 1
  %36 = xor i8 %35, 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %36, i8* %37, align 1
  %38 = xor i32 %24, %22
  %39 = xor i32 %38, %25
  %40 = lshr i32 %39, 4
  %41 = trunc i32 %40 to i8
  %42 = and i8 %41, 1
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %42, i8* %43, align 1
  %44 = icmp eq i32 %25, 0
  %45 = zext i1 %44 to i8
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %45, i8* %46, align 1
  %47 = lshr i32 %25, 31
  %48 = trunc i32 %47 to i8
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %48, i8* %49, align 1
  %50 = lshr i32 %22, 31
  %51 = lshr i32 %24, 31
  %52 = xor i32 %47, %50
  %53 = xor i32 %47, %51
  %54 = add i32 %52, %53
  %55 = icmp eq i32 %54, 2
  %56 = zext i1 %55 to i8
  %57 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %56, i8* %57, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x48__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq__esi___r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %ESI
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  store i64 %17, i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl___rcx__r8_4____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 17
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %R8 = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %R8
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 4
  store i64 %20, i64* %PC
  %21 = inttoptr i64 %18 to i32*
  %22 = load i32, i32* %21
  %23 = zext i32 %22 to i64
  store i64 %23, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x10__rcx____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 16
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl___rcx__r8_4____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 17
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %R8 = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RSI
  %16 = load i64, i64* %RCX
  %17 = load i64, i64* %R8
  %18 = mul i64 %17, 4
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 4
  store i64 %21, i64* %PC
  %22 = trunc i64 %15 to i32
  %23 = inttoptr i64 %19 to i32*
  %24 = load i32, i32* %23
  %25 = add i32 %24, %22
  %26 = zext i32 %25 to i64
  store i64 %26, i64* %RSI, align 8
  %27 = icmp ult i32 %25, %22
  %28 = icmp ult i32 %25, %24
  %29 = or i1 %27, %28
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %30, i8* %31, align 1
  %32 = and i32 %25, 255
  %33 = call i32 @llvm.ctpop.i32(i32 %32)
  %34 = trunc i32 %33 to i8
  %35 = and i8 %34, 1
  %36 = xor i8 %35, 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %36, i8* %37, align 1
  %38 = xor i32 %24, %22
  %39 = xor i32 %38, %25
  %40 = lshr i32 %39, 4
  %41 = trunc i32 %40 to i8
  %42 = and i8 %41, 1
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %42, i8* %43, align 1
  %44 = icmp eq i32 %25, 0
  %45 = zext i1 %44 to i8
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %45, i8* %46, align 1
  %47 = lshr i32 %25, 31
  %48 = trunc i32 %47 to i8
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %48, i8* %49, align 1
  %50 = lshr i32 %22, 31
  %51 = lshr i32 %24, 31
  %52 = xor i32 %47, %50
  %53 = xor i32 %47, %51
  %54 = add i32 %52, %53
  %55 = icmp eq i32 %54, 2
  %56 = zext i1 %55 to i8
  %57 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %56, i8* %57, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x58__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 88
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x58__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 88
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %EAX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x38__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax____rcx__r8_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 17
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %R8 = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %R8
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i32, i32* %EAX
  %20 = zext i32 %19 to i64
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 4
  store i64 %22, i64* %PC
  %23 = inttoptr i64 %18 to i32*
  store i32 %19, i32* %23
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x140__rcx____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 320
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x8__rbp____r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x4c__rbp____r9(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 76
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %R9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsbl___r8__r9_1____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 19
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %R9 = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %R8
  %16 = load i64, i64* %R9
  %17 = add i64 %16, %15
  %18 = load i64, i64* %PC
  %19 = add i64 %18, 5
  store i64 %19, i64* %PC
  %20 = inttoptr i64 %17 to i8*
  %21 = load i8, i8* %20
  %22 = sext i8 %21 to i64
  %23 = and i64 %22, 4294967295
  store i64 %23, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq__eax___r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %EAX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  store i64 %17, i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl___rcx__r8_4____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 17
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %R8 = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %R8
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 4
  store i64 %20, i64* %PC
  %21 = inttoptr i64 %18 to i32*
  %22 = load i32, i32* %21
  %23 = zext i32 %22 to i64
  store i64 %23, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl___rcx__r8_4____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 17
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %R8 = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RCX
  %17 = load i64, i64* %R8
  %18 = mul i64 %17, 4
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 4
  store i64 %21, i64* %PC
  %22 = trunc i64 %15 to i32
  %23 = inttoptr i64 %19 to i32*
  %24 = load i32, i32* %23
  %25 = add i32 %24, %22
  %26 = zext i32 %25 to i64
  store i64 %26, i64* %RAX, align 8
  %27 = icmp ult i32 %25, %22
  %28 = icmp ult i32 %25, %24
  %29 = or i1 %27, %28
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %30, i8* %31, align 1
  %32 = and i32 %25, 255
  %33 = call i32 @llvm.ctpop.i32(i32 %32)
  %34 = trunc i32 %33 to i8
  %35 = and i8 %34, 1
  %36 = xor i8 %35, 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %36, i8* %37, align 1
  %38 = xor i32 %24, %22
  %39 = xor i32 %38, %25
  %40 = lshr i32 %39, 4
  %41 = trunc i32 %40 to i8
  %42 = and i8 %41, 1
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %42, i8* %43, align 1
  %44 = icmp eq i32 %25, 0
  %45 = zext i1 %44 to i8
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %45, i8* %46, align 1
  %47 = lshr i32 %25, 31
  %48 = trunc i32 %47 to i8
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %48, i8* %49, align 1
  %50 = lshr i32 %22, 31
  %51 = lshr i32 %24, 31
  %52 = xor i32 %47, %50
  %53 = xor i32 %47, %51
  %54 = add i32 %52, %53
  %55 = icmp eq i32 %54, 2
  %56 = zext i1 %55 to i8
  %57 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %56, i8* %57, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x4c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 76
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

define %struct.Memory* @routine_movq_0x20__rcx____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 32
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x50__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x18__rcx____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 24
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x148__rcx____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 328
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x30__rcx____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 48
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x28__rcx____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 40
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_435cea(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_435f6b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_435f70(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__eax__MINUS0x4c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 76
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_435a42(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__ecx__MINUS0x54__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 84
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_je_.L_435fa6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_435faf(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq_MINUS0x28__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 40
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.FreePlan7Matrix(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x54__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 84
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.Scorify(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
