; ModuleID = 'mcsema/test.proposed.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%union.anon = type { i64 }
%seg_400370__init_type = type <{ [23 x i8] }>
%seg_400390__text_type = type <{ [354 x i8] }>
%seg_4004f4__fini_type = type <{ [9 x i8] }>
%seg_400500__rodata_type = type <{ [4 x i8] }>
%seg_400504__eh_frame_hdr_type = type <{ [52 x i8] }>
%seg_400538__eh_frame_type = type <{ [208 x i8] }>
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
@seg_400370__init = internal constant %seg_400370__init_type <{ [23 x i8] c"H\83\EC\08H\8B\05}\0C \00H\85\C0t\02\FF\D0H\83\C4\08\C3" }>
@seg_400390__text = internal constant %seg_400390__text_type <{ [354 x i8] c"1\EDI\89\D1^H\89\E2H\83\E4\F0PTI\C7\C0\F0\04@\00H\C7\C1\80\04@\00H\C7\C7x\04@\00\FF\156\0C \00\F4\0F\1FD\00\00\F3\C3f.\0F\1F\84\00\00\00\00\00\0F\1F@\00U\B8(\10`\00H=(\10`\00H\89\E5t\17\B8\00\00\00\00H\85\C0t\0D]\BF(\10`\00\FF\E0\0F\1FD\00\00]\C3f\0F\1FD\00\00\BE(\10`\00UH\81\EE(\10`\00H\89\E5H\C1\FE\03H\89\F0H\C1\E8?H\01\C6H\D1\FEt\15\B8\00\00\00\00H\85\C0t\0B]\BF(\10`\00\FF\E0\0F\1F\00]\C3f\0F\1FD\00\00\80=\E1\0B \00\00u\17UH\89\E5\E8~\FF\FF\FF\C6\05\CF\0B \00\01]\C3\0F\1FD\00\00\F3\C3\0F\1F@\00f.\0F\1F\84\00\00\00\00\00UH\89\E5]\EB\89\90U\C3f\0F\1FD\00\00AWAVI\89\D7AUATL\8D%\BE\09 \00UH\8D-\BE\09 \00SA\89\FDI\89\F6L)\E5H\83\EC\08H\C1\FD\03\E8\BF\FE\FF\FFH\85\EDt 1\DB\0F\1F\84\00\00\00\00\00L\89\FAL\89\F6D\89\EFA\FF\14\DCH\83\C3\01H9\DDu\EAH\83\C4\08[]A\5CA]A^A_\C3\90f.\0F\1F\84\00\00\00\00\00\F3\C3" }>
@seg_4004f4__fini = internal constant %seg_4004f4__fini_type <{ [9 x i8] c"H\83\EC\08H\83\C4\08\C3" }>
@seg_400500__rodata = internal constant %seg_400500__rodata_type <{ [4 x i8] c"\01\00\02\00" }>
@seg_400504__eh_frame_hdr = internal constant %seg_400504__eh_frame_hdr_type <{ [52 x i8] c"\01\1B\03;0\00\00\00\05\00\00\00\8C\FE\FF\FFL\00\00\00\BC\FE\FF\FFx\00\00\00t\FF\FF\FF\8C\00\00\00|\FF\FF\FF\A4\00\00\00\EC\FF\FF\FF\EC\00\00\00" }>
@seg_400538__eh_frame = internal constant %seg_400538__eh_frame_type <{ [208 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\07\10\10\00\00\00\1C\00\00\008\FE\FF\FF+\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\10\00\00\00\1C\00\00\00<\FE\FF\FF\02\00\00\00\00\00\00\00\14\00\00\000\00\00\00\E0\FE\FF\FF\02\00\00\00\00\00\00\00\00\00\00\00D\00\00\00H\00\00\00\D0\FE\FF\FFe\00\00\00\00B\0E\10\8F\02B\0E\18\8E\03E\0E \8D\04B\0E(\8C\05H\0E0\86\06H\0E8\83\07M\0E@r\0E8A\0E0A\0E(B\0E B\0E\18B\0E\10B\0E\08\00\10\00\00\00\90\00\00\00\F8\FE\FF\FF\02\00\00\00\00\00\00\00\00\00\00\00" }>
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

declare %struct.Memory* @sub_4005c0.to_byte(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_400630.read_bytes(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @keycomp(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_400740 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_400740, %struct.Memory** %MEMORY
  %loadMem_400741 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i146 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i147 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i148 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i147
  %27 = load i64, i64* %PC.i146
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i146
  store i64 %26, i64* %RBP.i148, align 8
  store %struct.Memory* %loadMem_400741, %struct.Memory** %MEMORY
  %loadMem_400744 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i490 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i491 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i491
  %36 = load i64, i64* %PC.i490
  %37 = add i64 %36, 4
  store i64 %37, i64* %PC.i490
  %38 = sub i64 %35, 80
  store i64 %38, i64* %RSP.i491, align 8
  %39 = icmp ult i64 %35, 80
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
  %49 = xor i64 80, %35
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
  store %struct.Memory* %loadMem_400744, %struct.Memory** %MEMORY
  %loadMem_400748 = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i580 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 11
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %RDI.i581 = bitcast %union.anon* %72 to i64*
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %74 = getelementptr inbounds %struct.GPR, %struct.GPR* %73, i32 0, i32 15
  %75 = getelementptr inbounds %struct.Reg, %struct.Reg* %74, i32 0, i32 0
  %RBP.i582 = bitcast %union.anon* %75 to i64*
  %76 = load i64, i64* %RBP.i582
  %77 = sub i64 %76, 16
  %78 = load i64, i64* %RDI.i581
  %79 = load i64, i64* %PC.i580
  %80 = add i64 %79, 4
  store i64 %80, i64* %PC.i580
  %81 = inttoptr i64 %77 to i64*
  store i64 %78, i64* %81
  store %struct.Memory* %loadMem_400748, %struct.Memory** %MEMORY
  %loadMem_40074c = load %struct.Memory*, %struct.Memory** %MEMORY
  %82 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %83 = getelementptr inbounds %struct.GPR, %struct.GPR* %82, i32 0, i32 33
  %84 = getelementptr inbounds %struct.Reg, %struct.Reg* %83, i32 0, i32 0
  %PC.i584 = bitcast %union.anon* %84 to i64*
  %85 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %86 = getelementptr inbounds %struct.GPR, %struct.GPR* %85, i32 0, i32 11
  %87 = getelementptr inbounds %struct.Reg, %struct.Reg* %86, i32 0, i32 0
  %RDI.i585 = bitcast %union.anon* %87 to i64*
  %88 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %89 = getelementptr inbounds %struct.GPR, %struct.GPR* %88, i32 0, i32 15
  %90 = getelementptr inbounds %struct.Reg, %struct.Reg* %89, i32 0, i32 0
  %RBP.i586 = bitcast %union.anon* %90 to i64*
  %91 = load i64, i64* %RBP.i586
  %92 = sub i64 %91, 16
  %93 = load i64, i64* %PC.i584
  %94 = add i64 %93, 4
  store i64 %94, i64* %PC.i584
  %95 = inttoptr i64 %92 to i64*
  %96 = load i64, i64* %95
  store i64 %96, i64* %RDI.i585, align 8
  store %struct.Memory* %loadMem_40074c, %struct.Memory** %MEMORY
  %loadMem1_400750 = load %struct.Memory*, %struct.Memory** %MEMORY
  %97 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %98 = getelementptr inbounds %struct.GPR, %struct.GPR* %97, i32 0, i32 33
  %99 = getelementptr inbounds %struct.Reg, %struct.Reg* %98, i32 0, i32 0
  %PC.i583 = bitcast %union.anon* %99 to i64*
  %100 = load i64, i64* %PC.i583
  %101 = add i64 %100, -688
  %102 = load i64, i64* %PC.i583
  %103 = add i64 %102, 5
  %104 = load i64, i64* %PC.i583
  %105 = add i64 %104, 5
  store i64 %105, i64* %PC.i583
  %106 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = add i64 %107, -8
  %109 = inttoptr i64 %108 to i64*
  store i64 %103, i64* %109
  store i64 %108, i64* %106, align 8
  %110 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %101, i64* %110, align 8
  store %struct.Memory* %loadMem1_400750, %struct.Memory** %MEMORY
  %loadMem2_400750 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400750 = load i64, i64* %3
  %111 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @strlen to i64), %struct.Memory* %loadMem2_400750)
  store %struct.Memory* %111, %struct.Memory** %MEMORY
  %loadMem_400755 = load %struct.Memory*, %struct.Memory** %MEMORY
  %112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %113 = getelementptr inbounds %struct.GPR, %struct.GPR* %112, i32 0, i32 33
  %114 = getelementptr inbounds %struct.Reg, %struct.Reg* %113, i32 0, i32 0
  %PC.i577 = bitcast %union.anon* %114 to i64*
  %115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %116 = getelementptr inbounds %struct.GPR, %struct.GPR* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.Reg, %struct.Reg* %116, i32 0, i32 0
  %EAX.i578 = bitcast %union.anon* %117 to i32*
  %118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %119 = getelementptr inbounds %struct.GPR, %struct.GPR* %118, i32 0, i32 5
  %120 = getelementptr inbounds %struct.Reg, %struct.Reg* %119, i32 0, i32 0
  %RCX.i579 = bitcast %union.anon* %120 to i64*
  %121 = load i32, i32* %EAX.i578
  %122 = zext i32 %121 to i64
  %123 = load i64, i64* %PC.i577
  %124 = add i64 %123, 2
  store i64 %124, i64* %PC.i577
  %125 = and i64 %122, 4294967295
  store i64 %125, i64* %RCX.i579, align 8
  store %struct.Memory* %loadMem_400755, %struct.Memory** %MEMORY
  %loadMem_400757 = load %struct.Memory*, %struct.Memory** %MEMORY
  %126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %127 = getelementptr inbounds %struct.GPR, %struct.GPR* %126, i32 0, i32 33
  %128 = getelementptr inbounds %struct.Reg, %struct.Reg* %127, i32 0, i32 0
  %PC.i574 = bitcast %union.anon* %128 to i64*
  %129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %130 = getelementptr inbounds %struct.GPR, %struct.GPR* %129, i32 0, i32 5
  %131 = getelementptr inbounds %struct.Reg, %struct.Reg* %130, i32 0, i32 0
  %ECX.i575 = bitcast %union.anon* %131 to i32*
  %132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %133 = getelementptr inbounds %struct.GPR, %struct.GPR* %132, i32 0, i32 15
  %134 = getelementptr inbounds %struct.Reg, %struct.Reg* %133, i32 0, i32 0
  %RBP.i576 = bitcast %union.anon* %134 to i64*
  %135 = load i64, i64* %RBP.i576
  %136 = sub i64 %135, 32
  %137 = load i32, i32* %ECX.i575
  %138 = zext i32 %137 to i64
  %139 = load i64, i64* %PC.i574
  %140 = add i64 %139, 3
  store i64 %140, i64* %PC.i574
  %141 = inttoptr i64 %136 to i32*
  store i32 %137, i32* %141
  store %struct.Memory* %loadMem_400757, %struct.Memory** %MEMORY
  %loadMem_40075a = load %struct.Memory*, %struct.Memory** %MEMORY
  %142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %143 = getelementptr inbounds %struct.GPR, %struct.GPR* %142, i32 0, i32 33
  %144 = getelementptr inbounds %struct.Reg, %struct.Reg* %143, i32 0, i32 0
  %PC.i572 = bitcast %union.anon* %144 to i64*
  %145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %146 = getelementptr inbounds %struct.GPR, %struct.GPR* %145, i32 0, i32 15
  %147 = getelementptr inbounds %struct.Reg, %struct.Reg* %146, i32 0, i32 0
  %RBP.i573 = bitcast %union.anon* %147 to i64*
  %148 = load i64, i64* %RBP.i573
  %149 = sub i64 %148, 32
  %150 = load i64, i64* %PC.i572
  %151 = add i64 %150, 4
  store i64 %151, i64* %PC.i572
  %152 = inttoptr i64 %149 to i32*
  %153 = load i32, i32* %152
  %154 = sub i32 %153, 37
  %155 = icmp ult i32 %153, 37
  %156 = zext i1 %155 to i8
  %157 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %156, i8* %157, align 1
  %158 = and i32 %154, 255
  %159 = call i32 @llvm.ctpop.i32(i32 %158)
  %160 = trunc i32 %159 to i8
  %161 = and i8 %160, 1
  %162 = xor i8 %161, 1
  %163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %162, i8* %163, align 1
  %164 = xor i32 %153, 37
  %165 = xor i32 %164, %154
  %166 = lshr i32 %165, 4
  %167 = trunc i32 %166 to i8
  %168 = and i8 %167, 1
  %169 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %168, i8* %169, align 1
  %170 = icmp eq i32 %154, 0
  %171 = zext i1 %170 to i8
  %172 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %171, i8* %172, align 1
  %173 = lshr i32 %154, 31
  %174 = trunc i32 %173 to i8
  %175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %174, i8* %175, align 1
  %176 = lshr i32 %153, 31
  %177 = xor i32 %173, %176
  %178 = add i32 %177, %176
  %179 = icmp eq i32 %178, 2
  %180 = zext i1 %179 to i8
  %181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %180, i8* %181, align 1
  store %struct.Memory* %loadMem_40075a, %struct.Memory** %MEMORY
  %loadMem_40075e = load %struct.Memory*, %struct.Memory** %MEMORY
  %182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %183 = getelementptr inbounds %struct.GPR, %struct.GPR* %182, i32 0, i32 33
  %184 = getelementptr inbounds %struct.Reg, %struct.Reg* %183, i32 0, i32 0
  %PC.i571 = bitcast %union.anon* %184 to i64*
  %185 = load i64, i64* %PC.i571
  %186 = add i64 %185, 17
  %187 = load i64, i64* %PC.i571
  %188 = add i64 %187, 6
  %189 = load i64, i64* %PC.i571
  %190 = add i64 %189, 6
  store i64 %190, i64* %PC.i571
  %191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %192 = load i8, i8* %191, align 1
  store i8 %192, i8* %BRANCH_TAKEN, align 1
  %193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %194 = icmp ne i8 %192, 0
  %195 = select i1 %194, i64 %186, i64 %188
  store i64 %195, i64* %193, align 8
  store %struct.Memory* %loadMem_40075e, %struct.Memory** %MEMORY
  %loadBr_40075e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40075e = icmp eq i8 %loadBr_40075e, 1
  br i1 %cmpBr_40075e, label %block_.L_40076f, label %block_400764

block_400764:                                     ; preds = %entry
  %loadMem_400764 = load %struct.Memory*, %struct.Memory** %MEMORY
  %196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %197 = getelementptr inbounds %struct.GPR, %struct.GPR* %196, i32 0, i32 33
  %198 = getelementptr inbounds %struct.Reg, %struct.Reg* %197, i32 0, i32 0
  %PC.i568 = bitcast %union.anon* %198 to i64*
  %199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %200 = getelementptr inbounds %struct.GPR, %struct.GPR* %199, i32 0, i32 1
  %201 = getelementptr inbounds %struct.Reg, %struct.Reg* %200, i32 0, i32 0
  %RAX.i569 = bitcast %union.anon* %201 to i64*
  %202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %203 = getelementptr inbounds %struct.GPR, %struct.GPR* %202, i32 0, i32 15
  %204 = getelementptr inbounds %struct.Reg, %struct.Reg* %203, i32 0, i32 0
  %RBP.i570 = bitcast %union.anon* %204 to i64*
  %205 = load i64, i64* %RBP.i570
  %206 = sub i64 %205, 32
  %207 = load i64, i64* %PC.i568
  %208 = add i64 %207, 3
  store i64 %208, i64* %PC.i568
  %209 = inttoptr i64 %206 to i32*
  %210 = load i32, i32* %209
  %211 = zext i32 %210 to i64
  store i64 %211, i64* %RAX.i569, align 8
  store %struct.Memory* %loadMem_400764, %struct.Memory** %MEMORY
  %loadMem_400767 = load %struct.Memory*, %struct.Memory** %MEMORY
  %212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %213 = getelementptr inbounds %struct.GPR, %struct.GPR* %212, i32 0, i32 33
  %214 = getelementptr inbounds %struct.Reg, %struct.Reg* %213, i32 0, i32 0
  %PC.i565 = bitcast %union.anon* %214 to i64*
  %215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %216 = getelementptr inbounds %struct.GPR, %struct.GPR* %215, i32 0, i32 1
  %217 = getelementptr inbounds %struct.Reg, %struct.Reg* %216, i32 0, i32 0
  %EAX.i566 = bitcast %union.anon* %217 to i32*
  %218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %219 = getelementptr inbounds %struct.GPR, %struct.GPR* %218, i32 0, i32 15
  %220 = getelementptr inbounds %struct.Reg, %struct.Reg* %219, i32 0, i32 0
  %RBP.i567 = bitcast %union.anon* %220 to i64*
  %221 = load i64, i64* %RBP.i567
  %222 = sub i64 %221, 4
  %223 = load i32, i32* %EAX.i566
  %224 = zext i32 %223 to i64
  %225 = load i64, i64* %PC.i565
  %226 = add i64 %225, 3
  store i64 %226, i64* %PC.i565
  %227 = inttoptr i64 %222 to i32*
  store i32 %223, i32* %227
  store %struct.Memory* %loadMem_400767, %struct.Memory** %MEMORY
  %loadMem_40076a = load %struct.Memory*, %struct.Memory** %MEMORY
  %228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %229 = getelementptr inbounds %struct.GPR, %struct.GPR* %228, i32 0, i32 33
  %230 = getelementptr inbounds %struct.Reg, %struct.Reg* %229, i32 0, i32 0
  %PC.i564 = bitcast %union.anon* %230 to i64*
  %231 = load i64, i64* %PC.i564
  %232 = add i64 %231, 1005
  %233 = load i64, i64* %PC.i564
  %234 = add i64 %233, 5
  store i64 %234, i64* %PC.i564
  %235 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %232, i64* %235, align 8
  store %struct.Memory* %loadMem_40076a, %struct.Memory** %MEMORY
  br label %block_.L_400b57

block_.L_40076f:                                  ; preds = %entry
  %loadMem_40076f = load %struct.Memory*, %struct.Memory** %MEMORY
  %236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %237 = getelementptr inbounds %struct.GPR, %struct.GPR* %236, i32 0, i32 33
  %238 = getelementptr inbounds %struct.Reg, %struct.Reg* %237, i32 0, i32 0
  %PC.i561 = bitcast %union.anon* %238 to i64*
  %239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %240 = getelementptr inbounds %struct.GPR, %struct.GPR* %239, i32 0, i32 1
  %241 = getelementptr inbounds %struct.Reg, %struct.Reg* %240, i32 0, i32 0
  %RAX.i562 = bitcast %union.anon* %241 to i64*
  %242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %243 = getelementptr inbounds %struct.GPR, %struct.GPR* %242, i32 0, i32 15
  %244 = getelementptr inbounds %struct.Reg, %struct.Reg* %243, i32 0, i32 0
  %RBP.i563 = bitcast %union.anon* %244 to i64*
  %245 = load i64, i64* %RBP.i563
  %246 = sub i64 %245, 16
  %247 = load i64, i64* %PC.i561
  %248 = add i64 %247, 4
  store i64 %248, i64* %PC.i561
  %249 = inttoptr i64 %246 to i64*
  %250 = load i64, i64* %249
  store i64 %250, i64* %RAX.i562, align 8
  store %struct.Memory* %loadMem_40076f, %struct.Memory** %MEMORY
  %loadMem_400773 = load %struct.Memory*, %struct.Memory** %MEMORY
  %251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %252 = getelementptr inbounds %struct.GPR, %struct.GPR* %251, i32 0, i32 33
  %253 = getelementptr inbounds %struct.Reg, %struct.Reg* %252, i32 0, i32 0
  %PC.i559 = bitcast %union.anon* %253 to i64*
  %254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %255 = getelementptr inbounds %struct.GPR, %struct.GPR* %254, i32 0, i32 1
  %256 = getelementptr inbounds %struct.Reg, %struct.Reg* %255, i32 0, i32 0
  %RAX.i560 = bitcast %union.anon* %256 to i64*
  %257 = load i64, i64* %RAX.i560
  %258 = load i64, i64* %PC.i559
  %259 = add i64 %258, 4
  store i64 %259, i64* %PC.i559
  %260 = add i64 4, %257
  store i64 %260, i64* %RAX.i560, align 8
  %261 = icmp ult i64 %260, %257
  %262 = icmp ult i64 %260, 4
  %263 = or i1 %261, %262
  %264 = zext i1 %263 to i8
  %265 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %264, i8* %265, align 1
  %266 = trunc i64 %260 to i32
  %267 = and i32 %266, 255
  %268 = call i32 @llvm.ctpop.i32(i32 %267)
  %269 = trunc i32 %268 to i8
  %270 = and i8 %269, 1
  %271 = xor i8 %270, 1
  %272 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %271, i8* %272, align 1
  %273 = xor i64 4, %257
  %274 = xor i64 %273, %260
  %275 = lshr i64 %274, 4
  %276 = trunc i64 %275 to i8
  %277 = and i8 %276, 1
  %278 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %277, i8* %278, align 1
  %279 = icmp eq i64 %260, 0
  %280 = zext i1 %279 to i8
  %281 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %280, i8* %281, align 1
  %282 = lshr i64 %260, 63
  %283 = trunc i64 %282 to i8
  %284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %283, i8* %284, align 1
  %285 = lshr i64 %257, 63
  %286 = xor i64 %282, %285
  %287 = add i64 %286, %282
  %288 = icmp eq i64 %287, 2
  %289 = zext i1 %288 to i8
  %290 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %289, i8* %290, align 1
  store %struct.Memory* %loadMem_400773, %struct.Memory** %MEMORY
  %loadMem_400777 = load %struct.Memory*, %struct.Memory** %MEMORY
  %291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %292 = getelementptr inbounds %struct.GPR, %struct.GPR* %291, i32 0, i32 33
  %293 = getelementptr inbounds %struct.Reg, %struct.Reg* %292, i32 0, i32 0
  %PC.i556 = bitcast %union.anon* %293 to i64*
  %294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %295 = getelementptr inbounds %struct.GPR, %struct.GPR* %294, i32 0, i32 1
  %296 = getelementptr inbounds %struct.Reg, %struct.Reg* %295, i32 0, i32 0
  %RAX.i557 = bitcast %union.anon* %296 to i64*
  %297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %298 = getelementptr inbounds %struct.GPR, %struct.GPR* %297, i32 0, i32 15
  %299 = getelementptr inbounds %struct.Reg, %struct.Reg* %298, i32 0, i32 0
  %RBP.i558 = bitcast %union.anon* %299 to i64*
  %300 = load i64, i64* %RBP.i558
  %301 = sub i64 %300, 16
  %302 = load i64, i64* %RAX.i557
  %303 = load i64, i64* %PC.i556
  %304 = add i64 %303, 4
  store i64 %304, i64* %PC.i556
  %305 = inttoptr i64 %301 to i64*
  store i64 %302, i64* %305
  store %struct.Memory* %loadMem_400777, %struct.Memory** %MEMORY
  %loadMem_40077b = load %struct.Memory*, %struct.Memory** %MEMORY
  %306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %307 = getelementptr inbounds %struct.GPR, %struct.GPR* %306, i32 0, i32 33
  %308 = getelementptr inbounds %struct.Reg, %struct.Reg* %307, i32 0, i32 0
  %PC.i553 = bitcast %union.anon* %308 to i64*
  %309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %310 = getelementptr inbounds %struct.GPR, %struct.GPR* %309, i32 0, i32 1
  %311 = getelementptr inbounds %struct.Reg, %struct.Reg* %310, i32 0, i32 0
  %RAX.i554 = bitcast %union.anon* %311 to i64*
  %312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %313 = getelementptr inbounds %struct.GPR, %struct.GPR* %312, i32 0, i32 15
  %314 = getelementptr inbounds %struct.Reg, %struct.Reg* %313, i32 0, i32 0
  %RBP.i555 = bitcast %union.anon* %314 to i64*
  %315 = load i64, i64* %RBP.i555
  %316 = sub i64 %315, 16
  %317 = load i64, i64* %PC.i553
  %318 = add i64 %317, 4
  store i64 %318, i64* %PC.i553
  %319 = inttoptr i64 %316 to i64*
  %320 = load i64, i64* %319
  store i64 %320, i64* %RAX.i554, align 8
  store %struct.Memory* %loadMem_40077b, %struct.Memory** %MEMORY
  %loadMem_40077f = load %struct.Memory*, %struct.Memory** %MEMORY
  %321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %322 = getelementptr inbounds %struct.GPR, %struct.GPR* %321, i32 0, i32 33
  %323 = getelementptr inbounds %struct.Reg, %struct.Reg* %322, i32 0, i32 0
  %PC.i550 = bitcast %union.anon* %323 to i64*
  %324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %325 = getelementptr inbounds %struct.GPR, %struct.GPR* %324, i32 0, i32 1
  %326 = getelementptr inbounds %struct.Reg, %struct.Reg* %325, i32 0, i32 0
  %RAX.i551 = bitcast %union.anon* %326 to i64*
  %327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %328 = getelementptr inbounds %struct.GPR, %struct.GPR* %327, i32 0, i32 5
  %329 = getelementptr inbounds %struct.Reg, %struct.Reg* %328, i32 0, i32 0
  %RCX.i552 = bitcast %union.anon* %329 to i64*
  %330 = load i64, i64* %RAX.i551
  %331 = load i64, i64* %PC.i550
  %332 = add i64 %331, 3
  store i64 %332, i64* %PC.i550
  %333 = inttoptr i64 %330 to i8*
  %334 = load i8, i8* %333
  %335 = sext i8 %334 to i64
  %336 = and i64 %335, 4294967295
  store i64 %336, i64* %RCX.i552, align 8
  store %struct.Memory* %loadMem_40077f, %struct.Memory** %MEMORY
  %loadMem_400782 = load %struct.Memory*, %struct.Memory** %MEMORY
  %337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %338 = getelementptr inbounds %struct.GPR, %struct.GPR* %337, i32 0, i32 33
  %339 = getelementptr inbounds %struct.Reg, %struct.Reg* %338, i32 0, i32 0
  %PC.i548 = bitcast %union.anon* %339 to i64*
  %340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %341 = getelementptr inbounds %struct.GPR, %struct.GPR* %340, i32 0, i32 5
  %342 = getelementptr inbounds %struct.Reg, %struct.Reg* %341, i32 0, i32 0
  %ECX.i549 = bitcast %union.anon* %342 to i32*
  %343 = load i32, i32* %ECX.i549
  %344 = zext i32 %343 to i64
  %345 = load i64, i64* %PC.i548
  %346 = add i64 %345, 3
  store i64 %346, i64* %PC.i548
  %347 = sub i32 %343, 100
  %348 = icmp ult i32 %343, 100
  %349 = zext i1 %348 to i8
  %350 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %349, i8* %350, align 1
  %351 = and i32 %347, 255
  %352 = call i32 @llvm.ctpop.i32(i32 %351)
  %353 = trunc i32 %352 to i8
  %354 = and i8 %353, 1
  %355 = xor i8 %354, 1
  %356 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %355, i8* %356, align 1
  %357 = xor i64 100, %344
  %358 = trunc i64 %357 to i32
  %359 = xor i32 %358, %347
  %360 = lshr i32 %359, 4
  %361 = trunc i32 %360 to i8
  %362 = and i8 %361, 1
  %363 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %362, i8* %363, align 1
  %364 = icmp eq i32 %347, 0
  %365 = zext i1 %364 to i8
  %366 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %365, i8* %366, align 1
  %367 = lshr i32 %347, 31
  %368 = trunc i32 %367 to i8
  %369 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %368, i8* %369, align 1
  %370 = lshr i32 %343, 31
  %371 = xor i32 %367, %370
  %372 = add i32 %371, %370
  %373 = icmp eq i32 %372, 2
  %374 = zext i1 %373 to i8
  %375 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %374, i8* %375, align 1
  store %struct.Memory* %loadMem_400782, %struct.Memory** %MEMORY
  %loadMem_400785 = load %struct.Memory*, %struct.Memory** %MEMORY
  %376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %377 = getelementptr inbounds %struct.GPR, %struct.GPR* %376, i32 0, i32 33
  %378 = getelementptr inbounds %struct.Reg, %struct.Reg* %377, i32 0, i32 0
  %PC.i547 = bitcast %union.anon* %378 to i64*
  %379 = load i64, i64* %PC.i547
  %380 = add i64 %379, 18
  %381 = load i64, i64* %PC.i547
  %382 = add i64 %381, 6
  %383 = load i64, i64* %PC.i547
  %384 = add i64 %383, 6
  store i64 %384, i64* %PC.i547
  %385 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %386 = load i8, i8* %385, align 1
  store i8 %386, i8* %BRANCH_TAKEN, align 1
  %387 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %388 = icmp ne i8 %386, 0
  %389 = select i1 %388, i64 %380, i64 %382
  store i64 %389, i64* %387, align 8
  store %struct.Memory* %loadMem_400785, %struct.Memory** %MEMORY
  %loadBr_400785 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400785 = icmp eq i8 %loadBr_400785, 1
  br i1 %cmpBr_400785, label %block_.L_400797, label %block_40078b

block_40078b:                                     ; preds = %block_.L_40076f
  %loadMem_40078b = load %struct.Memory*, %struct.Memory** %MEMORY
  %390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %391 = getelementptr inbounds %struct.GPR, %struct.GPR* %390, i32 0, i32 33
  %392 = getelementptr inbounds %struct.Reg, %struct.Reg* %391, i32 0, i32 0
  %PC.i545 = bitcast %union.anon* %392 to i64*
  %393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %394 = getelementptr inbounds %struct.GPR, %struct.GPR* %393, i32 0, i32 15
  %395 = getelementptr inbounds %struct.Reg, %struct.Reg* %394, i32 0, i32 0
  %RBP.i546 = bitcast %union.anon* %395 to i64*
  %396 = load i64, i64* %RBP.i546
  %397 = sub i64 %396, 4
  %398 = load i64, i64* %PC.i545
  %399 = add i64 %398, 7
  store i64 %399, i64* %PC.i545
  %400 = inttoptr i64 %397 to i32*
  store i32 -2, i32* %400
  store %struct.Memory* %loadMem_40078b, %struct.Memory** %MEMORY
  %loadMem_400792 = load %struct.Memory*, %struct.Memory** %MEMORY
  %401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %402 = getelementptr inbounds %struct.GPR, %struct.GPR* %401, i32 0, i32 33
  %403 = getelementptr inbounds %struct.Reg, %struct.Reg* %402, i32 0, i32 0
  %PC.i544 = bitcast %union.anon* %403 to i64*
  %404 = load i64, i64* %PC.i544
  %405 = add i64 %404, 965
  %406 = load i64, i64* %PC.i544
  %407 = add i64 %406, 5
  store i64 %407, i64* %PC.i544
  %408 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %405, i64* %408, align 8
  store %struct.Memory* %loadMem_400792, %struct.Memory** %MEMORY
  br label %block_.L_400b57

block_.L_400797:                                  ; preds = %block_.L_40076f
  %loadMem_400797 = load %struct.Memory*, %struct.Memory** %MEMORY
  %409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %410 = getelementptr inbounds %struct.GPR, %struct.GPR* %409, i32 0, i32 33
  %411 = getelementptr inbounds %struct.Reg, %struct.Reg* %410, i32 0, i32 0
  %PC.i541 = bitcast %union.anon* %411 to i64*
  %412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %413 = getelementptr inbounds %struct.GPR, %struct.GPR* %412, i32 0, i32 1
  %414 = getelementptr inbounds %struct.Reg, %struct.Reg* %413, i32 0, i32 0
  %RAX.i542 = bitcast %union.anon* %414 to i64*
  %415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %416 = getelementptr inbounds %struct.GPR, %struct.GPR* %415, i32 0, i32 15
  %417 = getelementptr inbounds %struct.Reg, %struct.Reg* %416, i32 0, i32 0
  %RBP.i543 = bitcast %union.anon* %417 to i64*
  %418 = load i64, i64* %RBP.i543
  %419 = sub i64 %418, 16
  %420 = load i64, i64* %PC.i541
  %421 = add i64 %420, 4
  store i64 %421, i64* %PC.i541
  %422 = inttoptr i64 %419 to i64*
  %423 = load i64, i64* %422
  store i64 %423, i64* %RAX.i542, align 8
  store %struct.Memory* %loadMem_400797, %struct.Memory** %MEMORY
  %loadMem_40079b = load %struct.Memory*, %struct.Memory** %MEMORY
  %424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %425 = getelementptr inbounds %struct.GPR, %struct.GPR* %424, i32 0, i32 33
  %426 = getelementptr inbounds %struct.Reg, %struct.Reg* %425, i32 0, i32 0
  %PC.i538 = bitcast %union.anon* %426 to i64*
  %427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %428 = getelementptr inbounds %struct.GPR, %struct.GPR* %427, i32 0, i32 1
  %429 = getelementptr inbounds %struct.Reg, %struct.Reg* %428, i32 0, i32 0
  %RAX.i539 = bitcast %union.anon* %429 to i64*
  %430 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %431 = getelementptr inbounds %struct.GPR, %struct.GPR* %430, i32 0, i32 11
  %432 = getelementptr inbounds %struct.Reg, %struct.Reg* %431, i32 0, i32 0
  %RDI.i540 = bitcast %union.anon* %432 to i64*
  %433 = load i64, i64* %RAX.i539
  %434 = add i64 %433, 1
  %435 = load i64, i64* %PC.i538
  %436 = add i64 %435, 4
  store i64 %436, i64* %PC.i538
  %437 = inttoptr i64 %434 to i8*
  %438 = load i8, i8* %437
  %439 = zext i8 %438 to i64
  store i64 %439, i64* %RDI.i540, align 8
  store %struct.Memory* %loadMem_40079b, %struct.Memory** %MEMORY
  %loadMem1_40079f = load %struct.Memory*, %struct.Memory** %MEMORY
  %440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %441 = getelementptr inbounds %struct.GPR, %struct.GPR* %440, i32 0, i32 33
  %442 = getelementptr inbounds %struct.Reg, %struct.Reg* %441, i32 0, i32 0
  %PC.i537 = bitcast %union.anon* %442 to i64*
  %443 = load i64, i64* %PC.i537
  %444 = add i64 %443, -479
  %445 = load i64, i64* %PC.i537
  %446 = add i64 %445, 5
  %447 = load i64, i64* %PC.i537
  %448 = add i64 %447, 5
  store i64 %448, i64* %PC.i537
  %449 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %450 = load i64, i64* %449, align 8
  %451 = add i64 %450, -8
  %452 = inttoptr i64 %451 to i64*
  store i64 %446, i64* %452
  store i64 %451, i64* %449, align 8
  %453 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %444, i64* %453, align 8
  store %struct.Memory* %loadMem1_40079f, %struct.Memory** %MEMORY
  %loadMem2_40079f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40079f = load i64, i64* %3
  %call2_40079f = call %struct.Memory* @sub_4005c0.to_byte(%struct.State* %0, i64 %loadPC_40079f, %struct.Memory* %loadMem2_40079f)
  store %struct.Memory* %call2_40079f, %struct.Memory** %MEMORY
  %loadMem_4007a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %455 = getelementptr inbounds %struct.GPR, %struct.GPR* %454, i32 0, i32 33
  %456 = getelementptr inbounds %struct.Reg, %struct.Reg* %455, i32 0, i32 0
  %PC.i535 = bitcast %union.anon* %456 to i64*
  %457 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %458 = getelementptr inbounds %struct.GPR, %struct.GPR* %457, i32 0, i32 1
  %459 = getelementptr inbounds %struct.Reg, %struct.Reg* %458, i32 0, i32 0
  %EAX.i536 = bitcast %union.anon* %459 to i32*
  %460 = load i32, i32* %EAX.i536
  %461 = zext i32 %460 to i64
  %462 = load i64, i64* %PC.i535
  %463 = add i64 %462, 3
  store i64 %463, i64* %PC.i535
  %464 = sub i32 %460, 9
  %465 = icmp ult i32 %460, 9
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
  %474 = xor i64 9, %461
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
  store %struct.Memory* %loadMem_4007a4, %struct.Memory** %MEMORY
  %loadMem_4007a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %494 = getelementptr inbounds %struct.GPR, %struct.GPR* %493, i32 0, i32 33
  %495 = getelementptr inbounds %struct.Reg, %struct.Reg* %494, i32 0, i32 0
  %PC.i534 = bitcast %union.anon* %495 to i64*
  %496 = load i64, i64* %PC.i534
  %497 = add i64 %496, 18
  %498 = load i64, i64* %PC.i534
  %499 = add i64 %498, 6
  %500 = load i64, i64* %PC.i534
  %501 = add i64 %500, 6
  store i64 %501, i64* %PC.i534
  %502 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %503 = load i8, i8* %502, align 1
  store i8 %503, i8* %BRANCH_TAKEN, align 1
  %504 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %505 = icmp ne i8 %503, 0
  %506 = select i1 %505, i64 %497, i64 %499
  store i64 %506, i64* %504, align 8
  store %struct.Memory* %loadMem_4007a7, %struct.Memory** %MEMORY
  %loadBr_4007a7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4007a7 = icmp eq i8 %loadBr_4007a7, 1
  br i1 %cmpBr_4007a7, label %block_.L_4007b9, label %block_4007ad

block_4007ad:                                     ; preds = %block_.L_400797
  %loadMem_4007ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %508 = getelementptr inbounds %struct.GPR, %struct.GPR* %507, i32 0, i32 33
  %509 = getelementptr inbounds %struct.Reg, %struct.Reg* %508, i32 0, i32 0
  %PC.i532 = bitcast %union.anon* %509 to i64*
  %510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %511 = getelementptr inbounds %struct.GPR, %struct.GPR* %510, i32 0, i32 15
  %512 = getelementptr inbounds %struct.Reg, %struct.Reg* %511, i32 0, i32 0
  %RBP.i533 = bitcast %union.anon* %512 to i64*
  %513 = load i64, i64* %RBP.i533
  %514 = sub i64 %513, 4
  %515 = load i64, i64* %PC.i532
  %516 = add i64 %515, 7
  store i64 %516, i64* %PC.i532
  %517 = inttoptr i64 %514 to i32*
  store i32 -3, i32* %517
  store %struct.Memory* %loadMem_4007ad, %struct.Memory** %MEMORY
  %loadMem_4007b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %518 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %519 = getelementptr inbounds %struct.GPR, %struct.GPR* %518, i32 0, i32 33
  %520 = getelementptr inbounds %struct.Reg, %struct.Reg* %519, i32 0, i32 0
  %PC.i531 = bitcast %union.anon* %520 to i64*
  %521 = load i64, i64* %PC.i531
  %522 = add i64 %521, 931
  %523 = load i64, i64* %PC.i531
  %524 = add i64 %523, 5
  store i64 %524, i64* %PC.i531
  %525 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %522, i64* %525, align 8
  store %struct.Memory* %loadMem_4007b4, %struct.Memory** %MEMORY
  br label %block_.L_400b57

block_.L_4007b9:                                  ; preds = %block_.L_400797
  %loadMem_4007b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %527 = getelementptr inbounds %struct.GPR, %struct.GPR* %526, i32 0, i32 33
  %528 = getelementptr inbounds %struct.Reg, %struct.Reg* %527, i32 0, i32 0
  %PC.i528 = bitcast %union.anon* %528 to i64*
  %529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %530 = getelementptr inbounds %struct.GPR, %struct.GPR* %529, i32 0, i32 1
  %531 = getelementptr inbounds %struct.Reg, %struct.Reg* %530, i32 0, i32 0
  %RAX.i529 = bitcast %union.anon* %531 to i64*
  %532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %533 = getelementptr inbounds %struct.GPR, %struct.GPR* %532, i32 0, i32 15
  %534 = getelementptr inbounds %struct.Reg, %struct.Reg* %533, i32 0, i32 0
  %RBP.i530 = bitcast %union.anon* %534 to i64*
  %535 = load i64, i64* %RBP.i530
  %536 = sub i64 %535, 16
  %537 = load i64, i64* %PC.i528
  %538 = add i64 %537, 4
  store i64 %538, i64* %PC.i528
  %539 = inttoptr i64 %536 to i64*
  %540 = load i64, i64* %539
  store i64 %540, i64* %RAX.i529, align 8
  store %struct.Memory* %loadMem_4007b9, %struct.Memory** %MEMORY
  %loadMem_4007bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %542 = getelementptr inbounds %struct.GPR, %struct.GPR* %541, i32 0, i32 33
  %543 = getelementptr inbounds %struct.Reg, %struct.Reg* %542, i32 0, i32 0
  %PC.i525 = bitcast %union.anon* %543 to i64*
  %544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %545 = getelementptr inbounds %struct.GPR, %struct.GPR* %544, i32 0, i32 1
  %546 = getelementptr inbounds %struct.Reg, %struct.Reg* %545, i32 0, i32 0
  %RAX.i526 = bitcast %union.anon* %546 to i64*
  %547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %548 = getelementptr inbounds %struct.GPR, %struct.GPR* %547, i32 0, i32 11
  %549 = getelementptr inbounds %struct.Reg, %struct.Reg* %548, i32 0, i32 0
  %RDI.i527 = bitcast %union.anon* %549 to i64*
  %550 = load i64, i64* %RAX.i526
  %551 = add i64 %550, 2
  %552 = load i64, i64* %PC.i525
  %553 = add i64 %552, 4
  store i64 %553, i64* %PC.i525
  %554 = inttoptr i64 %551 to i8*
  %555 = load i8, i8* %554
  %556 = zext i8 %555 to i64
  store i64 %556, i64* %RDI.i527, align 8
  store %struct.Memory* %loadMem_4007bd, %struct.Memory** %MEMORY
  %loadMem1_4007c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %557 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %558 = getelementptr inbounds %struct.GPR, %struct.GPR* %557, i32 0, i32 33
  %559 = getelementptr inbounds %struct.Reg, %struct.Reg* %558, i32 0, i32 0
  %PC.i524 = bitcast %union.anon* %559 to i64*
  %560 = load i64, i64* %PC.i524
  %561 = add i64 %560, -513
  %562 = load i64, i64* %PC.i524
  %563 = add i64 %562, 5
  %564 = load i64, i64* %PC.i524
  %565 = add i64 %564, 5
  store i64 %565, i64* %PC.i524
  %566 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %567 = load i64, i64* %566, align 8
  %568 = add i64 %567, -8
  %569 = inttoptr i64 %568 to i64*
  store i64 %563, i64* %569
  store i64 %568, i64* %566, align 8
  %570 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %561, i64* %570, align 8
  store %struct.Memory* %loadMem1_4007c1, %struct.Memory** %MEMORY
  %loadMem2_4007c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4007c1 = load i64, i64* %3
  %call2_4007c1 = call %struct.Memory* @sub_4005c0.to_byte(%struct.State* %0, i64 %loadPC_4007c1, %struct.Memory* %loadMem2_4007c1)
  store %struct.Memory* %call2_4007c1, %struct.Memory** %MEMORY
  %loadMem_4007c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %572 = getelementptr inbounds %struct.GPR, %struct.GPR* %571, i32 0, i32 33
  %573 = getelementptr inbounds %struct.Reg, %struct.Reg* %572, i32 0, i32 0
  %PC.i521 = bitcast %union.anon* %573 to i64*
  %574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %575 = getelementptr inbounds %struct.GPR, %struct.GPR* %574, i32 0, i32 1
  %576 = getelementptr inbounds %struct.Reg, %struct.Reg* %575, i32 0, i32 0
  %EAX.i522 = bitcast %union.anon* %576 to i32*
  %577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %578 = getelementptr inbounds %struct.GPR, %struct.GPR* %577, i32 0, i32 15
  %579 = getelementptr inbounds %struct.Reg, %struct.Reg* %578, i32 0, i32 0
  %RBP.i523 = bitcast %union.anon* %579 to i64*
  %580 = load i64, i64* %RBP.i523
  %581 = sub i64 %580, 24
  %582 = load i32, i32* %EAX.i522
  %583 = zext i32 %582 to i64
  %584 = load i64, i64* %PC.i521
  %585 = add i64 %584, 3
  store i64 %585, i64* %PC.i521
  %586 = inttoptr i64 %581 to i32*
  store i32 %582, i32* %586
  store %struct.Memory* %loadMem_4007c6, %struct.Memory** %MEMORY
  %loadMem_4007c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %587 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %588 = getelementptr inbounds %struct.GPR, %struct.GPR* %587, i32 0, i32 33
  %589 = getelementptr inbounds %struct.Reg, %struct.Reg* %588, i32 0, i32 0
  %PC.i518 = bitcast %union.anon* %589 to i64*
  %590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %591 = getelementptr inbounds %struct.GPR, %struct.GPR* %590, i32 0, i32 1
  %592 = getelementptr inbounds %struct.Reg, %struct.Reg* %591, i32 0, i32 0
  %RAX.i519 = bitcast %union.anon* %592 to i64*
  %593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %594 = getelementptr inbounds %struct.GPR, %struct.GPR* %593, i32 0, i32 15
  %595 = getelementptr inbounds %struct.Reg, %struct.Reg* %594, i32 0, i32 0
  %RBP.i520 = bitcast %union.anon* %595 to i64*
  %596 = load i64, i64* %RBP.i520
  %597 = sub i64 %596, 24
  %598 = load i64, i64* %PC.i518
  %599 = add i64 %598, 3
  store i64 %599, i64* %PC.i518
  %600 = inttoptr i64 %597 to i32*
  %601 = load i32, i32* %600
  %602 = zext i32 %601 to i64
  store i64 %602, i64* %RAX.i519, align 8
  store %struct.Memory* %loadMem_4007c9, %struct.Memory** %MEMORY
  %loadMem_4007cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %603 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %604 = getelementptr inbounds %struct.GPR, %struct.GPR* %603, i32 0, i32 33
  %605 = getelementptr inbounds %struct.Reg, %struct.Reg* %604, i32 0, i32 0
  %PC.i516 = bitcast %union.anon* %605 to i64*
  %606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %607 = getelementptr inbounds %struct.GPR, %struct.GPR* %606, i32 0, i32 1
  %608 = getelementptr inbounds %struct.Reg, %struct.Reg* %607, i32 0, i32 0
  %RAX.i517 = bitcast %union.anon* %608 to i64*
  %609 = load i64, i64* %RAX.i517
  %610 = load i64, i64* %PC.i516
  %611 = add i64 %610, 2
  store i64 %611, i64* %PC.i516
  %612 = trunc i64 %609 to i32
  %613 = shl i32 %612, 1
  %614 = icmp slt i32 %612, 0
  %615 = icmp slt i32 %613, 0
  %616 = xor i1 %614, %615
  %617 = zext i32 %613 to i64
  store i64 %617, i64* %RAX.i517, align 8
  %618 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %619 = zext i1 %614 to i8
  store i8 %619, i8* %618, align 1
  %620 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %621 = and i32 %613, 254
  %622 = call i32 @llvm.ctpop.i32(i32 %621)
  %623 = trunc i32 %622 to i8
  %624 = and i8 %623, 1
  %625 = xor i8 %624, 1
  store i8 %625, i8* %620, align 1
  %626 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %626, align 1
  %627 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %628 = icmp eq i32 %613, 0
  %629 = zext i1 %628 to i8
  store i8 %629, i8* %627, align 1
  %630 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %631 = lshr i32 %613, 31
  %632 = trunc i32 %631 to i8
  store i8 %632, i8* %630, align 1
  %633 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %634 = zext i1 %616 to i8
  store i8 %634, i8* %633, align 1
  store %struct.Memory* %loadMem_4007cc, %struct.Memory** %MEMORY
  %loadMem_4007cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %635 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %636 = getelementptr inbounds %struct.GPR, %struct.GPR* %635, i32 0, i32 33
  %637 = getelementptr inbounds %struct.Reg, %struct.Reg* %636, i32 0, i32 0
  %PC.i514 = bitcast %union.anon* %637 to i64*
  %638 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %639 = getelementptr inbounds %struct.GPR, %struct.GPR* %638, i32 0, i32 1
  %640 = getelementptr inbounds %struct.Reg, %struct.Reg* %639, i32 0, i32 0
  %EAX.i515 = bitcast %union.anon* %640 to i32*
  %641 = load i32, i32* %EAX.i515
  %642 = zext i32 %641 to i64
  %643 = load i64, i64* %PC.i514
  %644 = add i64 %643, 3
  store i64 %644, i64* %PC.i514
  %645 = sub i32 %641, 26
  %646 = icmp ult i32 %641, 26
  %647 = zext i1 %646 to i8
  %648 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %647, i8* %648, align 1
  %649 = and i32 %645, 255
  %650 = call i32 @llvm.ctpop.i32(i32 %649)
  %651 = trunc i32 %650 to i8
  %652 = and i8 %651, 1
  %653 = xor i8 %652, 1
  %654 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %653, i8* %654, align 1
  %655 = xor i64 26, %642
  %656 = trunc i64 %655 to i32
  %657 = xor i32 %656, %645
  %658 = lshr i32 %657, 4
  %659 = trunc i32 %658 to i8
  %660 = and i8 %659, 1
  %661 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %660, i8* %661, align 1
  %662 = icmp eq i32 %645, 0
  %663 = zext i1 %662 to i8
  %664 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %663, i8* %664, align 1
  %665 = lshr i32 %645, 31
  %666 = trunc i32 %665 to i8
  %667 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %666, i8* %667, align 1
  %668 = lshr i32 %641, 31
  %669 = xor i32 %665, %668
  %670 = add i32 %669, %668
  %671 = icmp eq i32 %670, 2
  %672 = zext i1 %671 to i8
  %673 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %672, i8* %673, align 1
  store %struct.Memory* %loadMem_4007cf, %struct.Memory** %MEMORY
  %loadMem_4007d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %675 = getelementptr inbounds %struct.GPR, %struct.GPR* %674, i32 0, i32 33
  %676 = getelementptr inbounds %struct.Reg, %struct.Reg* %675, i32 0, i32 0
  %PC.i513 = bitcast %union.anon* %676 to i64*
  %677 = load i64, i64* %PC.i513
  %678 = add i64 %677, 18
  %679 = load i64, i64* %PC.i513
  %680 = add i64 %679, 6
  %681 = load i64, i64* %PC.i513
  %682 = add i64 %681, 6
  store i64 %682, i64* %PC.i513
  %683 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %684 = load i8, i8* %683, align 1
  store i8 %684, i8* %BRANCH_TAKEN, align 1
  %685 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %686 = icmp ne i8 %684, 0
  %687 = select i1 %686, i64 %678, i64 %680
  store i64 %687, i64* %685, align 8
  store %struct.Memory* %loadMem_4007d2, %struct.Memory** %MEMORY
  %loadBr_4007d2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4007d2 = icmp eq i8 %loadBr_4007d2, 1
  br i1 %cmpBr_4007d2, label %block_.L_4007e4, label %block_4007d8

block_4007d8:                                     ; preds = %block_.L_4007b9
  %loadMem_4007d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %689 = getelementptr inbounds %struct.GPR, %struct.GPR* %688, i32 0, i32 33
  %690 = getelementptr inbounds %struct.Reg, %struct.Reg* %689, i32 0, i32 0
  %PC.i511 = bitcast %union.anon* %690 to i64*
  %691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %692 = getelementptr inbounds %struct.GPR, %struct.GPR* %691, i32 0, i32 15
  %693 = getelementptr inbounds %struct.Reg, %struct.Reg* %692, i32 0, i32 0
  %RBP.i512 = bitcast %union.anon* %693 to i64*
  %694 = load i64, i64* %RBP.i512
  %695 = sub i64 %694, 4
  %696 = load i64, i64* %PC.i511
  %697 = add i64 %696, 7
  store i64 %697, i64* %PC.i511
  %698 = inttoptr i64 %695 to i32*
  store i32 -4, i32* %698
  store %struct.Memory* %loadMem_4007d8, %struct.Memory** %MEMORY
  %loadMem_4007df = load %struct.Memory*, %struct.Memory** %MEMORY
  %699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %700 = getelementptr inbounds %struct.GPR, %struct.GPR* %699, i32 0, i32 33
  %701 = getelementptr inbounds %struct.Reg, %struct.Reg* %700, i32 0, i32 0
  %PC.i510 = bitcast %union.anon* %701 to i64*
  %702 = load i64, i64* %PC.i510
  %703 = add i64 %702, 888
  %704 = load i64, i64* %PC.i510
  %705 = add i64 %704, 5
  store i64 %705, i64* %PC.i510
  %706 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %703, i64* %706, align 8
  store %struct.Memory* %loadMem_4007df, %struct.Memory** %MEMORY
  br label %block_.L_400b57

block_.L_4007e4:                                  ; preds = %block_.L_4007b9
  %loadMem_4007e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %707 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %708 = getelementptr inbounds %struct.GPR, %struct.GPR* %707, i32 0, i32 33
  %709 = getelementptr inbounds %struct.Reg, %struct.Reg* %708, i32 0, i32 0
  %PC.i507 = bitcast %union.anon* %709 to i64*
  %710 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %711 = getelementptr inbounds %struct.GPR, %struct.GPR* %710, i32 0, i32 1
  %712 = getelementptr inbounds %struct.Reg, %struct.Reg* %711, i32 0, i32 0
  %RAX.i508 = bitcast %union.anon* %712 to i64*
  %713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %714 = getelementptr inbounds %struct.GPR, %struct.GPR* %713, i32 0, i32 15
  %715 = getelementptr inbounds %struct.Reg, %struct.Reg* %714, i32 0, i32 0
  %RBP.i509 = bitcast %union.anon* %715 to i64*
  %716 = load i64, i64* %RBP.i509
  %717 = sub i64 %716, 16
  %718 = load i64, i64* %PC.i507
  %719 = add i64 %718, 4
  store i64 %719, i64* %PC.i507
  %720 = inttoptr i64 %717 to i64*
  %721 = load i64, i64* %720
  store i64 %721, i64* %RAX.i508, align 8
  store %struct.Memory* %loadMem_4007e4, %struct.Memory** %MEMORY
  %loadMem_4007e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %722 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %723 = getelementptr inbounds %struct.GPR, %struct.GPR* %722, i32 0, i32 33
  %724 = getelementptr inbounds %struct.Reg, %struct.Reg* %723, i32 0, i32 0
  %PC.i504 = bitcast %union.anon* %724 to i64*
  %725 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %726 = getelementptr inbounds %struct.GPR, %struct.GPR* %725, i32 0, i32 1
  %727 = getelementptr inbounds %struct.Reg, %struct.Reg* %726, i32 0, i32 0
  %RAX.i505 = bitcast %union.anon* %727 to i64*
  %728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %729 = getelementptr inbounds %struct.GPR, %struct.GPR* %728, i32 0, i32 11
  %730 = getelementptr inbounds %struct.Reg, %struct.Reg* %729, i32 0, i32 0
  %RDI.i506 = bitcast %union.anon* %730 to i64*
  %731 = load i64, i64* %RAX.i505
  %732 = add i64 %731, 3
  %733 = load i64, i64* %PC.i504
  %734 = add i64 %733, 4
  store i64 %734, i64* %PC.i504
  %735 = inttoptr i64 %732 to i8*
  %736 = load i8, i8* %735
  %737 = zext i8 %736 to i64
  store i64 %737, i64* %RDI.i506, align 8
  store %struct.Memory* %loadMem_4007e8, %struct.Memory** %MEMORY
  %loadMem1_4007ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %739 = getelementptr inbounds %struct.GPR, %struct.GPR* %738, i32 0, i32 33
  %740 = getelementptr inbounds %struct.Reg, %struct.Reg* %739, i32 0, i32 0
  %PC.i503 = bitcast %union.anon* %740 to i64*
  %741 = load i64, i64* %PC.i503
  %742 = add i64 %741, -556
  %743 = load i64, i64* %PC.i503
  %744 = add i64 %743, 5
  %745 = load i64, i64* %PC.i503
  %746 = add i64 %745, 5
  store i64 %746, i64* %PC.i503
  %747 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %748 = load i64, i64* %747, align 8
  %749 = add i64 %748, -8
  %750 = inttoptr i64 %749 to i64*
  store i64 %744, i64* %750
  store i64 %749, i64* %747, align 8
  %751 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %742, i64* %751, align 8
  store %struct.Memory* %loadMem1_4007ec, %struct.Memory** %MEMORY
  %loadMem2_4007ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4007ec = load i64, i64* %3
  %call2_4007ec = call %struct.Memory* @sub_4005c0.to_byte(%struct.State* %0, i64 %loadPC_4007ec, %struct.Memory* %loadMem2_4007ec)
  store %struct.Memory* %call2_4007ec, %struct.Memory** %MEMORY
  %loadMem_4007f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %753 = getelementptr inbounds %struct.GPR, %struct.GPR* %752, i32 0, i32 33
  %754 = getelementptr inbounds %struct.Reg, %struct.Reg* %753, i32 0, i32 0
  %PC.i501 = bitcast %union.anon* %754 to i64*
  %755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %756 = getelementptr inbounds %struct.GPR, %struct.GPR* %755, i32 0, i32 11
  %757 = getelementptr inbounds %struct.Reg, %struct.Reg* %756, i32 0, i32 0
  %RDI.i502 = bitcast %union.anon* %757 to i64*
  %758 = load i64, i64* %PC.i501
  %759 = add i64 %758, 5
  store i64 %759, i64* %PC.i501
  store i64 2, i64* %RDI.i502, align 8
  store %struct.Memory* %loadMem_4007f1, %struct.Memory** %MEMORY
  %loadMem_4007f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %761 = getelementptr inbounds %struct.GPR, %struct.GPR* %760, i32 0, i32 33
  %762 = getelementptr inbounds %struct.Reg, %struct.Reg* %761, i32 0, i32 0
  %PC.i498 = bitcast %union.anon* %762 to i64*
  %763 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %764 = getelementptr inbounds %struct.GPR, %struct.GPR* %763, i32 0, i32 1
  %765 = getelementptr inbounds %struct.Reg, %struct.Reg* %764, i32 0, i32 0
  %EAX.i499 = bitcast %union.anon* %765 to i32*
  %766 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %767 = getelementptr inbounds %struct.GPR, %struct.GPR* %766, i32 0, i32 15
  %768 = getelementptr inbounds %struct.Reg, %struct.Reg* %767, i32 0, i32 0
  %RBP.i500 = bitcast %union.anon* %768 to i64*
  %769 = load i64, i64* %RBP.i500
  %770 = sub i64 %769, 28
  %771 = load i32, i32* %EAX.i499
  %772 = zext i32 %771 to i64
  %773 = load i64, i64* %PC.i498
  %774 = add i64 %773, 3
  store i64 %774, i64* %PC.i498
  %775 = inttoptr i64 %770 to i32*
  store i32 %771, i32* %775
  store %struct.Memory* %loadMem_4007f6, %struct.Memory** %MEMORY
  %loadMem_4007f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %777 = getelementptr inbounds %struct.GPR, %struct.GPR* %776, i32 0, i32 33
  %778 = getelementptr inbounds %struct.Reg, %struct.Reg* %777, i32 0, i32 0
  %PC.i495 = bitcast %union.anon* %778 to i64*
  %779 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %780 = getelementptr inbounds %struct.GPR, %struct.GPR* %779, i32 0, i32 1
  %781 = getelementptr inbounds %struct.Reg, %struct.Reg* %780, i32 0, i32 0
  %RAX.i496 = bitcast %union.anon* %781 to i64*
  %782 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %783 = getelementptr inbounds %struct.GPR, %struct.GPR* %782, i32 0, i32 15
  %784 = getelementptr inbounds %struct.Reg, %struct.Reg* %783, i32 0, i32 0
  %RBP.i497 = bitcast %union.anon* %784 to i64*
  %785 = load i64, i64* %RBP.i497
  %786 = sub i64 %785, 28
  %787 = load i64, i64* %PC.i495
  %788 = add i64 %787, 3
  store i64 %788, i64* %PC.i495
  %789 = inttoptr i64 %786 to i32*
  %790 = load i32, i32* %789
  %791 = zext i32 %790 to i64
  store i64 %791, i64* %RAX.i496, align 8
  store %struct.Memory* %loadMem_4007f9, %struct.Memory** %MEMORY
  %loadMem_4007fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %793 = getelementptr inbounds %struct.GPR, %struct.GPR* %792, i32 0, i32 33
  %794 = getelementptr inbounds %struct.Reg, %struct.Reg* %793, i32 0, i32 0
  %PC.i493 = bitcast %union.anon* %794 to i64*
  %795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %796 = getelementptr inbounds %struct.GPR, %struct.GPR* %795, i32 0, i32 1
  %797 = getelementptr inbounds %struct.Reg, %struct.Reg* %796, i32 0, i32 0
  %RAX.i494 = bitcast %union.anon* %797 to i64*
  %798 = load i64, i64* %RAX.i494
  %799 = load i64, i64* %PC.i493
  %800 = add i64 %799, 3
  store i64 %800, i64* %PC.i493
  %801 = trunc i64 %798 to i32
  %802 = add i32 1, %801
  %803 = zext i32 %802 to i64
  store i64 %803, i64* %RAX.i494, align 8
  %804 = icmp ult i32 %802, %801
  %805 = icmp ult i32 %802, 1
  %806 = or i1 %804, %805
  %807 = zext i1 %806 to i8
  %808 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %807, i8* %808, align 1
  %809 = and i32 %802, 255
  %810 = call i32 @llvm.ctpop.i32(i32 %809)
  %811 = trunc i32 %810 to i8
  %812 = and i8 %811, 1
  %813 = xor i8 %812, 1
  %814 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %813, i8* %814, align 1
  %815 = xor i64 1, %798
  %816 = trunc i64 %815 to i32
  %817 = xor i32 %816, %802
  %818 = lshr i32 %817, 4
  %819 = trunc i32 %818 to i8
  %820 = and i8 %819, 1
  %821 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %820, i8* %821, align 1
  %822 = icmp eq i32 %802, 0
  %823 = zext i1 %822 to i8
  %824 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %823, i8* %824, align 1
  %825 = lshr i32 %802, 31
  %826 = trunc i32 %825 to i8
  %827 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %826, i8* %827, align 1
  %828 = lshr i32 %801, 31
  %829 = xor i32 %825, %828
  %830 = add i32 %829, %825
  %831 = icmp eq i32 %830, 2
  %832 = zext i1 %831 to i8
  %833 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %832, i8* %833, align 1
  store %struct.Memory* %loadMem_4007fc, %struct.Memory** %MEMORY
  %loadMem_4007ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %835 = getelementptr inbounds %struct.GPR, %struct.GPR* %834, i32 0, i32 33
  %836 = getelementptr inbounds %struct.Reg, %struct.Reg* %835, i32 0, i32 0
  %PC.i492 = bitcast %union.anon* %836 to i64*
  %837 = load i64, i64* %PC.i492
  %838 = add i64 %837, 1
  store i64 %838, i64* %PC.i492
  %839 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %840 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %841 = bitcast %union.anon* %840 to i32*
  %842 = load i32, i32* %841, align 8
  %843 = sext i32 %842 to i64
  %844 = lshr i64 %843, 32
  store i64 %844, i64* %839, align 8
  store %struct.Memory* %loadMem_4007ff, %struct.Memory** %MEMORY
  %loadMem_400800 = load %struct.Memory*, %struct.Memory** %MEMORY
  %845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %846 = getelementptr inbounds %struct.GPR, %struct.GPR* %845, i32 0, i32 33
  %847 = getelementptr inbounds %struct.Reg, %struct.Reg* %846, i32 0, i32 0
  %PC.i488 = bitcast %union.anon* %847 to i64*
  %848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %849 = getelementptr inbounds %struct.GPR, %struct.GPR* %848, i32 0, i32 11
  %850 = getelementptr inbounds %struct.Reg, %struct.Reg* %849, i32 0, i32 0
  %EDI.i489 = bitcast %union.anon* %850 to i32*
  %851 = load i32, i32* %EDI.i489
  %852 = zext i32 %851 to i64
  %853 = load i64, i64* %PC.i488
  %854 = add i64 %853, 2
  store i64 %854, i64* %PC.i488
  %855 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %856 = bitcast %union.anon* %855 to i32*
  %857 = load i32, i32* %856, align 8
  %858 = zext i32 %857 to i64
  %859 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %860 = bitcast %union.anon* %859 to i32*
  %861 = load i32, i32* %860, align 8
  %862 = zext i32 %861 to i64
  %863 = shl i64 %852, 32
  %864 = ashr exact i64 %863, 32
  %865 = shl i64 %862, 32
  %866 = or i64 %865, %858
  %867 = sdiv i64 %866, %864
  %868 = shl i64 %867, 32
  %869 = ashr exact i64 %868, 32
  %870 = icmp eq i64 %867, %869
  br i1 %870, label %875, label %871

; <label>:871:                                    ; preds = %block_.L_4007e4
  %872 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %873 = load i64, i64* %872, align 8
  %874 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %873, %struct.Memory* %loadMem_400800)
  br label %routine_idivl__edi.exit

; <label>:875:                                    ; preds = %block_.L_4007e4
  %876 = srem i64 %866, %864
  %877 = getelementptr inbounds %union.anon, %union.anon* %855, i64 0, i32 0
  %878 = and i64 %867, 4294967295
  store i64 %878, i64* %877, align 8
  %879 = getelementptr inbounds %union.anon, %union.anon* %859, i64 0, i32 0
  %880 = and i64 %876, 4294967295
  store i64 %880, i64* %879, align 8
  %881 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %881, align 1
  %882 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %882, align 1
  %883 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %883, align 1
  %884 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %884, align 1
  %885 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %885, align 1
  %886 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %886, align 1
  br label %routine_idivl__edi.exit

routine_idivl__edi.exit:                          ; preds = %871, %875
  %887 = phi %struct.Memory* [ %874, %871 ], [ %loadMem_400800, %875 ]
  store %struct.Memory* %887, %struct.Memory** %MEMORY
  %loadMem_400802 = load %struct.Memory*, %struct.Memory** %MEMORY
  %888 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %889 = getelementptr inbounds %struct.GPR, %struct.GPR* %888, i32 0, i32 33
  %890 = getelementptr inbounds %struct.Reg, %struct.Reg* %889, i32 0, i32 0
  %PC.i486 = bitcast %union.anon* %890 to i64*
  %891 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %892 = getelementptr inbounds %struct.GPR, %struct.GPR* %891, i32 0, i32 1
  %893 = getelementptr inbounds %struct.Reg, %struct.Reg* %892, i32 0, i32 0
  %EAX.i487 = bitcast %union.anon* %893 to i32*
  %894 = load i32, i32* %EAX.i487
  %895 = zext i32 %894 to i64
  %896 = load i64, i64* %PC.i486
  %897 = add i64 %896, 3
  store i64 %897, i64* %PC.i486
  %898 = sub i32 %894, 7
  %899 = icmp ult i32 %894, 7
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
  %908 = xor i64 7, %895
  %909 = trunc i64 %908 to i32
  %910 = xor i32 %909, %898
  %911 = lshr i32 %910, 4
  %912 = trunc i32 %911 to i8
  %913 = and i8 %912, 1
  %914 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %913, i8* %914, align 1
  %915 = icmp eq i32 %898, 0
  %916 = zext i1 %915 to i8
  %917 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %916, i8* %917, align 1
  %918 = lshr i32 %898, 31
  %919 = trunc i32 %918 to i8
  %920 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %919, i8* %920, align 1
  %921 = lshr i32 %894, 31
  %922 = xor i32 %918, %921
  %923 = add i32 %922, %921
  %924 = icmp eq i32 %923, 2
  %925 = zext i1 %924 to i8
  %926 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %925, i8* %926, align 1
  store %struct.Memory* %loadMem_400802, %struct.Memory** %MEMORY
  %loadMem_400805 = load %struct.Memory*, %struct.Memory** %MEMORY
  %927 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %928 = getelementptr inbounds %struct.GPR, %struct.GPR* %927, i32 0, i32 33
  %929 = getelementptr inbounds %struct.Reg, %struct.Reg* %928, i32 0, i32 0
  %PC.i485 = bitcast %union.anon* %929 to i64*
  %930 = load i64, i64* %PC.i485
  %931 = add i64 %930, 18
  %932 = load i64, i64* %PC.i485
  %933 = add i64 %932, 6
  %934 = load i64, i64* %PC.i485
  %935 = add i64 %934, 6
  store i64 %935, i64* %PC.i485
  %936 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %937 = load i8, i8* %936, align 1
  store i8 %937, i8* %BRANCH_TAKEN, align 1
  %938 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %939 = icmp ne i8 %937, 0
  %940 = select i1 %939, i64 %931, i64 %933
  store i64 %940, i64* %938, align 8
  store %struct.Memory* %loadMem_400805, %struct.Memory** %MEMORY
  %loadBr_400805 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400805 = icmp eq i8 %loadBr_400805, 1
  br i1 %cmpBr_400805, label %block_.L_400817, label %block_40080b

block_40080b:                                     ; preds = %routine_idivl__edi.exit
  %loadMem_40080b = load %struct.Memory*, %struct.Memory** %MEMORY
  %941 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %942 = getelementptr inbounds %struct.GPR, %struct.GPR* %941, i32 0, i32 33
  %943 = getelementptr inbounds %struct.Reg, %struct.Reg* %942, i32 0, i32 0
  %PC.i483 = bitcast %union.anon* %943 to i64*
  %944 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %945 = getelementptr inbounds %struct.GPR, %struct.GPR* %944, i32 0, i32 15
  %946 = getelementptr inbounds %struct.Reg, %struct.Reg* %945, i32 0, i32 0
  %RBP.i484 = bitcast %union.anon* %946 to i64*
  %947 = load i64, i64* %RBP.i484
  %948 = sub i64 %947, 4
  %949 = load i64, i64* %PC.i483
  %950 = add i64 %949, 7
  store i64 %950, i64* %PC.i483
  %951 = inttoptr i64 %948 to i32*
  store i32 -5, i32* %951
  store %struct.Memory* %loadMem_40080b, %struct.Memory** %MEMORY
  %loadMem_400812 = load %struct.Memory*, %struct.Memory** %MEMORY
  %952 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %953 = getelementptr inbounds %struct.GPR, %struct.GPR* %952, i32 0, i32 33
  %954 = getelementptr inbounds %struct.Reg, %struct.Reg* %953, i32 0, i32 0
  %PC.i482 = bitcast %union.anon* %954 to i64*
  %955 = load i64, i64* %PC.i482
  %956 = add i64 %955, 837
  %957 = load i64, i64* %PC.i482
  %958 = add i64 %957, 5
  store i64 %958, i64* %PC.i482
  %959 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %956, i64* %959, align 8
  store %struct.Memory* %loadMem_400812, %struct.Memory** %MEMORY
  br label %block_.L_400b57

block_.L_400817:                                  ; preds = %routine_idivl__edi.exit
  %loadMem_400817 = load %struct.Memory*, %struct.Memory** %MEMORY
  %960 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %961 = getelementptr inbounds %struct.GPR, %struct.GPR* %960, i32 0, i32 33
  %962 = getelementptr inbounds %struct.Reg, %struct.Reg* %961, i32 0, i32 0
  %PC.i479 = bitcast %union.anon* %962 to i64*
  %963 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %964 = getelementptr inbounds %struct.GPR, %struct.GPR* %963, i32 0, i32 1
  %965 = getelementptr inbounds %struct.Reg, %struct.Reg* %964, i32 0, i32 0
  %RAX.i480 = bitcast %union.anon* %965 to i64*
  %966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %967 = getelementptr inbounds %struct.GPR, %struct.GPR* %966, i32 0, i32 15
  %968 = getelementptr inbounds %struct.Reg, %struct.Reg* %967, i32 0, i32 0
  %RBP.i481 = bitcast %union.anon* %968 to i64*
  %969 = load i64, i64* %RBP.i481
  %970 = sub i64 %969, 16
  %971 = load i64, i64* %PC.i479
  %972 = add i64 %971, 4
  store i64 %972, i64* %PC.i479
  %973 = inttoptr i64 %970 to i64*
  %974 = load i64, i64* %973
  store i64 %974, i64* %RAX.i480, align 8
  store %struct.Memory* %loadMem_400817, %struct.Memory** %MEMORY
  %loadMem_40081b = load %struct.Memory*, %struct.Memory** %MEMORY
  %975 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %976 = getelementptr inbounds %struct.GPR, %struct.GPR* %975, i32 0, i32 33
  %977 = getelementptr inbounds %struct.Reg, %struct.Reg* %976, i32 0, i32 0
  %PC.i476 = bitcast %union.anon* %977 to i64*
  %978 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %979 = getelementptr inbounds %struct.GPR, %struct.GPR* %978, i32 0, i32 1
  %980 = getelementptr inbounds %struct.Reg, %struct.Reg* %979, i32 0, i32 0
  %RAX.i477 = bitcast %union.anon* %980 to i64*
  %981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %982 = getelementptr inbounds %struct.GPR, %struct.GPR* %981, i32 0, i32 5
  %983 = getelementptr inbounds %struct.Reg, %struct.Reg* %982, i32 0, i32 0
  %RCX.i478 = bitcast %union.anon* %983 to i64*
  %984 = load i64, i64* %RAX.i477
  %985 = add i64 %984, 4
  %986 = load i64, i64* %PC.i476
  %987 = add i64 %986, 4
  store i64 %987, i64* %PC.i476
  %988 = inttoptr i64 %985 to i8*
  %989 = load i8, i8* %988
  %990 = sext i8 %989 to i64
  %991 = and i64 %990, 4294967295
  store i64 %991, i64* %RCX.i478, align 8
  store %struct.Memory* %loadMem_40081b, %struct.Memory** %MEMORY
  %loadMem_40081f = load %struct.Memory*, %struct.Memory** %MEMORY
  %992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %993 = getelementptr inbounds %struct.GPR, %struct.GPR* %992, i32 0, i32 33
  %994 = getelementptr inbounds %struct.Reg, %struct.Reg* %993, i32 0, i32 0
  %PC.i474 = bitcast %union.anon* %994 to i64*
  %995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %996 = getelementptr inbounds %struct.GPR, %struct.GPR* %995, i32 0, i32 5
  %997 = getelementptr inbounds %struct.Reg, %struct.Reg* %996, i32 0, i32 0
  %RCX.i475 = bitcast %union.anon* %997 to i64*
  %998 = load i64, i64* %RCX.i475
  %999 = load i64, i64* %PC.i474
  %1000 = add i64 %999, 3
  store i64 %1000, i64* %PC.i474
  %1001 = and i64 15, %998
  %1002 = trunc i64 %1001 to i32
  store i64 %1001, i64* %RCX.i475, align 8
  %1003 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1003, align 1
  %1004 = and i32 %1002, 255
  %1005 = call i32 @llvm.ctpop.i32(i32 %1004)
  %1006 = trunc i32 %1005 to i8
  %1007 = and i8 %1006, 1
  %1008 = xor i8 %1007, 1
  %1009 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1008, i8* %1009, align 1
  %1010 = icmp eq i32 %1002, 0
  %1011 = zext i1 %1010 to i8
  %1012 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1011, i8* %1012, align 1
  %1013 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1013, align 1
  %1014 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1014, align 1
  %1015 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1015, align 1
  store %struct.Memory* %loadMem_40081f, %struct.Memory** %MEMORY
  %loadMem_400822 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1016 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1017 = getelementptr inbounds %struct.GPR, %struct.GPR* %1016, i32 0, i32 33
  %1018 = getelementptr inbounds %struct.Reg, %struct.Reg* %1017, i32 0, i32 0
  %PC.i472 = bitcast %union.anon* %1018 to i64*
  %1019 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1020 = getelementptr inbounds %struct.GPR, %struct.GPR* %1019, i32 0, i32 5
  %1021 = getelementptr inbounds %struct.Reg, %struct.Reg* %1020, i32 0, i32 0
  %ECX.i473 = bitcast %union.anon* %1021 to i32*
  %1022 = load i32, i32* %ECX.i473
  %1023 = zext i32 %1022 to i64
  %1024 = load i64, i64* %PC.i472
  %1025 = add i64 %1024, 3
  store i64 %1025, i64* %PC.i472
  %1026 = sub i32 %1022, 1
  %1027 = icmp ult i32 %1022, 1
  %1028 = zext i1 %1027 to i8
  %1029 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1028, i8* %1029, align 1
  %1030 = and i32 %1026, 255
  %1031 = call i32 @llvm.ctpop.i32(i32 %1030)
  %1032 = trunc i32 %1031 to i8
  %1033 = and i8 %1032, 1
  %1034 = xor i8 %1033, 1
  %1035 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1034, i8* %1035, align 1
  %1036 = xor i64 1, %1023
  %1037 = trunc i64 %1036 to i32
  %1038 = xor i32 %1037, %1026
  %1039 = lshr i32 %1038, 4
  %1040 = trunc i32 %1039 to i8
  %1041 = and i8 %1040, 1
  %1042 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1041, i8* %1042, align 1
  %1043 = icmp eq i32 %1026, 0
  %1044 = zext i1 %1043 to i8
  %1045 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1044, i8* %1045, align 1
  %1046 = lshr i32 %1026, 31
  %1047 = trunc i32 %1046 to i8
  %1048 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1047, i8* %1048, align 1
  %1049 = lshr i32 %1022, 31
  %1050 = xor i32 %1046, %1049
  %1051 = add i32 %1050, %1049
  %1052 = icmp eq i32 %1051, 2
  %1053 = zext i1 %1052 to i8
  %1054 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1053, i8* %1054, align 1
  store %struct.Memory* %loadMem_400822, %struct.Memory** %MEMORY
  %loadMem_400825 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1055 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1056 = getelementptr inbounds %struct.GPR, %struct.GPR* %1055, i32 0, i32 33
  %1057 = getelementptr inbounds %struct.Reg, %struct.Reg* %1056, i32 0, i32 0
  %PC.i471 = bitcast %union.anon* %1057 to i64*
  %1058 = load i64, i64* %PC.i471
  %1059 = add i64 %1058, 41
  %1060 = load i64, i64* %PC.i471
  %1061 = add i64 %1060, 6
  %1062 = load i64, i64* %PC.i471
  %1063 = add i64 %1062, 6
  store i64 %1063, i64* %PC.i471
  %1064 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1065 = load i8, i8* %1064, align 1
  %1066 = icmp eq i8 %1065, 0
  %1067 = zext i1 %1066 to i8
  store i8 %1067, i8* %BRANCH_TAKEN, align 1
  %1068 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1069 = select i1 %1066, i64 %1059, i64 %1061
  store i64 %1069, i64* %1068, align 8
  store %struct.Memory* %loadMem_400825, %struct.Memory** %MEMORY
  %loadBr_400825 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400825 = icmp eq i8 %loadBr_400825, 1
  br i1 %cmpBr_400825, label %block_.L_40084e, label %block_40082b

block_40082b:                                     ; preds = %block_.L_400817
  %loadMem_40082b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1070 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1071 = getelementptr inbounds %struct.GPR, %struct.GPR* %1070, i32 0, i32 33
  %1072 = getelementptr inbounds %struct.Reg, %struct.Reg* %1071, i32 0, i32 0
  %PC.i468 = bitcast %union.anon* %1072 to i64*
  %1073 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1074 = getelementptr inbounds %struct.GPR, %struct.GPR* %1073, i32 0, i32 1
  %1075 = getelementptr inbounds %struct.Reg, %struct.Reg* %1074, i32 0, i32 0
  %RAX.i469 = bitcast %union.anon* %1075 to i64*
  %1076 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1077 = getelementptr inbounds %struct.GPR, %struct.GPR* %1076, i32 0, i32 15
  %1078 = getelementptr inbounds %struct.Reg, %struct.Reg* %1077, i32 0, i32 0
  %RBP.i470 = bitcast %union.anon* %1078 to i64*
  %1079 = load i64, i64* %RBP.i470
  %1080 = sub i64 %1079, 16
  %1081 = load i64, i64* %PC.i468
  %1082 = add i64 %1081, 4
  store i64 %1082, i64* %PC.i468
  %1083 = inttoptr i64 %1080 to i64*
  %1084 = load i64, i64* %1083
  store i64 %1084, i64* %RAX.i469, align 8
  store %struct.Memory* %loadMem_40082b, %struct.Memory** %MEMORY
  %loadMem_40082f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1085 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1086 = getelementptr inbounds %struct.GPR, %struct.GPR* %1085, i32 0, i32 33
  %1087 = getelementptr inbounds %struct.Reg, %struct.Reg* %1086, i32 0, i32 0
  %PC.i465 = bitcast %union.anon* %1087 to i64*
  %1088 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1089 = getelementptr inbounds %struct.GPR, %struct.GPR* %1088, i32 0, i32 1
  %1090 = getelementptr inbounds %struct.Reg, %struct.Reg* %1089, i32 0, i32 0
  %RAX.i466 = bitcast %union.anon* %1090 to i64*
  %1091 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1092 = getelementptr inbounds %struct.GPR, %struct.GPR* %1091, i32 0, i32 5
  %1093 = getelementptr inbounds %struct.Reg, %struct.Reg* %1092, i32 0, i32 0
  %RCX.i467 = bitcast %union.anon* %1093 to i64*
  %1094 = load i64, i64* %RAX.i466
  %1095 = add i64 %1094, 4
  %1096 = load i64, i64* %PC.i465
  %1097 = add i64 %1096, 4
  store i64 %1097, i64* %PC.i465
  %1098 = inttoptr i64 %1095 to i8*
  %1099 = load i8, i8* %1098
  %1100 = sext i8 %1099 to i64
  %1101 = and i64 %1100, 4294967295
  store i64 %1101, i64* %RCX.i467, align 8
  store %struct.Memory* %loadMem_40082f, %struct.Memory** %MEMORY
  %loadMem_400833 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1103 = getelementptr inbounds %struct.GPR, %struct.GPR* %1102, i32 0, i32 33
  %1104 = getelementptr inbounds %struct.Reg, %struct.Reg* %1103, i32 0, i32 0
  %PC.i463 = bitcast %union.anon* %1104 to i64*
  %1105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1106 = getelementptr inbounds %struct.GPR, %struct.GPR* %1105, i32 0, i32 5
  %1107 = getelementptr inbounds %struct.Reg, %struct.Reg* %1106, i32 0, i32 0
  %RCX.i464 = bitcast %union.anon* %1107 to i64*
  %1108 = load i64, i64* %RCX.i464
  %1109 = load i64, i64* %PC.i463
  %1110 = add i64 %1109, 6
  store i64 %1110, i64* %PC.i463
  %1111 = and i64 240, %1108
  %1112 = trunc i64 %1111 to i32
  store i64 %1111, i64* %RCX.i464, align 8
  %1113 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1113, align 1
  %1114 = and i32 %1112, 255
  %1115 = call i32 @llvm.ctpop.i32(i32 %1114)
  %1116 = trunc i32 %1115 to i8
  %1117 = and i8 %1116, 1
  %1118 = xor i8 %1117, 1
  %1119 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1118, i8* %1119, align 1
  %1120 = icmp eq i32 %1112, 0
  %1121 = zext i1 %1120 to i8
  %1122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1121, i8* %1122, align 1
  %1123 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1123, align 1
  %1124 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1124, align 1
  %1125 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1125, align 1
  store %struct.Memory* %loadMem_400833, %struct.Memory** %MEMORY
  %loadMem_400839 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1127 = getelementptr inbounds %struct.GPR, %struct.GPR* %1126, i32 0, i32 33
  %1128 = getelementptr inbounds %struct.Reg, %struct.Reg* %1127, i32 0, i32 0
  %PC.i461 = bitcast %union.anon* %1128 to i64*
  %1129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1130 = getelementptr inbounds %struct.GPR, %struct.GPR* %1129, i32 0, i32 5
  %1131 = getelementptr inbounds %struct.Reg, %struct.Reg* %1130, i32 0, i32 0
  %ECX.i462 = bitcast %union.anon* %1131 to i32*
  %1132 = load i32, i32* %ECX.i462
  %1133 = zext i32 %1132 to i64
  %1134 = load i64, i64* %PC.i461
  %1135 = add i64 %1134, 3
  store i64 %1135, i64* %PC.i461
  %1136 = sub i32 %1132, 48
  %1137 = icmp ult i32 %1132, 48
  %1138 = zext i1 %1137 to i8
  %1139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1138, i8* %1139, align 1
  %1140 = and i32 %1136, 255
  %1141 = call i32 @llvm.ctpop.i32(i32 %1140)
  %1142 = trunc i32 %1141 to i8
  %1143 = and i8 %1142, 1
  %1144 = xor i8 %1143, 1
  %1145 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1144, i8* %1145, align 1
  %1146 = xor i64 48, %1133
  %1147 = trunc i64 %1146 to i32
  %1148 = xor i32 %1147, %1136
  %1149 = lshr i32 %1148, 4
  %1150 = trunc i32 %1149 to i8
  %1151 = and i8 %1150, 1
  %1152 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1151, i8* %1152, align 1
  %1153 = icmp eq i32 %1136, 0
  %1154 = zext i1 %1153 to i8
  %1155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1154, i8* %1155, align 1
  %1156 = lshr i32 %1136, 31
  %1157 = trunc i32 %1156 to i8
  %1158 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1157, i8* %1158, align 1
  %1159 = lshr i32 %1132, 31
  %1160 = xor i32 %1156, %1159
  %1161 = add i32 %1160, %1159
  %1162 = icmp eq i32 %1161, 2
  %1163 = zext i1 %1162 to i8
  %1164 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1163, i8* %1164, align 1
  store %struct.Memory* %loadMem_400839, %struct.Memory** %MEMORY
  %loadMem_40083c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1166 = getelementptr inbounds %struct.GPR, %struct.GPR* %1165, i32 0, i32 33
  %1167 = getelementptr inbounds %struct.Reg, %struct.Reg* %1166, i32 0, i32 0
  %PC.i460 = bitcast %union.anon* %1167 to i64*
  %1168 = load i64, i64* %PC.i460
  %1169 = add i64 %1168, 18
  %1170 = load i64, i64* %PC.i460
  %1171 = add i64 %1170, 6
  %1172 = load i64, i64* %PC.i460
  %1173 = add i64 %1172, 6
  store i64 %1173, i64* %PC.i460
  %1174 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1175 = load i8, i8* %1174, align 1
  %1176 = icmp eq i8 %1175, 0
  %1177 = zext i1 %1176 to i8
  store i8 %1177, i8* %BRANCH_TAKEN, align 1
  %1178 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1179 = select i1 %1176, i64 %1169, i64 %1171
  store i64 %1179, i64* %1178, align 8
  store %struct.Memory* %loadMem_40083c, %struct.Memory** %MEMORY
  %loadBr_40083c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40083c = icmp eq i8 %loadBr_40083c, 1
  br i1 %cmpBr_40083c, label %block_.L_40084e, label %block_400842

block_400842:                                     ; preds = %block_40082b
  %loadMem_400842 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1181 = getelementptr inbounds %struct.GPR, %struct.GPR* %1180, i32 0, i32 33
  %1182 = getelementptr inbounds %struct.Reg, %struct.Reg* %1181, i32 0, i32 0
  %PC.i458 = bitcast %union.anon* %1182 to i64*
  %1183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1184 = getelementptr inbounds %struct.GPR, %struct.GPR* %1183, i32 0, i32 15
  %1185 = getelementptr inbounds %struct.Reg, %struct.Reg* %1184, i32 0, i32 0
  %RBP.i459 = bitcast %union.anon* %1185 to i64*
  %1186 = load i64, i64* %RBP.i459
  %1187 = sub i64 %1186, 20
  %1188 = load i64, i64* %PC.i458
  %1189 = add i64 %1188, 7
  store i64 %1189, i64* %PC.i458
  %1190 = inttoptr i64 %1187 to i32*
  store i32 -4, i32* %1190
  store %struct.Memory* %loadMem_400842, %struct.Memory** %MEMORY
  %loadMem_400849 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1192 = getelementptr inbounds %struct.GPR, %struct.GPR* %1191, i32 0, i32 33
  %1193 = getelementptr inbounds %struct.Reg, %struct.Reg* %1192, i32 0, i32 0
  %PC.i457 = bitcast %union.anon* %1193 to i64*
  %1194 = load i64, i64* %PC.i457
  %1195 = add i64 %1194, 17
  %1196 = load i64, i64* %PC.i457
  %1197 = add i64 %1196, 5
  store i64 %1197, i64* %PC.i457
  %1198 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1195, i64* %1198, align 8
  store %struct.Memory* %loadMem_400849, %struct.Memory** %MEMORY
  br label %block_.L_40085a

block_.L_40084e:                                  ; preds = %block_40082b, %block_.L_400817
  %loadMem_40084e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1200 = getelementptr inbounds %struct.GPR, %struct.GPR* %1199, i32 0, i32 33
  %1201 = getelementptr inbounds %struct.Reg, %struct.Reg* %1200, i32 0, i32 0
  %PC.i455 = bitcast %union.anon* %1201 to i64*
  %1202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1203 = getelementptr inbounds %struct.GPR, %struct.GPR* %1202, i32 0, i32 15
  %1204 = getelementptr inbounds %struct.Reg, %struct.Reg* %1203, i32 0, i32 0
  %RBP.i456 = bitcast %union.anon* %1204 to i64*
  %1205 = load i64, i64* %RBP.i456
  %1206 = sub i64 %1205, 4
  %1207 = load i64, i64* %PC.i455
  %1208 = add i64 %1207, 7
  store i64 %1208, i64* %PC.i455
  %1209 = inttoptr i64 %1206 to i32*
  store i32 -6, i32* %1209
  store %struct.Memory* %loadMem_40084e, %struct.Memory** %MEMORY
  %loadMem_400855 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1211 = getelementptr inbounds %struct.GPR, %struct.GPR* %1210, i32 0, i32 33
  %1212 = getelementptr inbounds %struct.Reg, %struct.Reg* %1211, i32 0, i32 0
  %PC.i454 = bitcast %union.anon* %1212 to i64*
  %1213 = load i64, i64* %PC.i454
  %1214 = add i64 %1213, 770
  %1215 = load i64, i64* %PC.i454
  %1216 = add i64 %1215, 5
  store i64 %1216, i64* %PC.i454
  %1217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1214, i64* %1217, align 8
  store %struct.Memory* %loadMem_400855, %struct.Memory** %MEMORY
  br label %block_.L_400b57

block_.L_40085a:                                  ; preds = %block_400842
  %loadMem_40085a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1219 = getelementptr inbounds %struct.GPR, %struct.GPR* %1218, i32 0, i32 33
  %1220 = getelementptr inbounds %struct.Reg, %struct.Reg* %1219, i32 0, i32 0
  %PC.i451 = bitcast %union.anon* %1220 to i64*
  %1221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1222 = getelementptr inbounds %struct.GPR, %struct.GPR* %1221, i32 0, i32 1
  %1223 = getelementptr inbounds %struct.Reg, %struct.Reg* %1222, i32 0, i32 0
  %RAX.i452 = bitcast %union.anon* %1223 to i64*
  %1224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1225 = getelementptr inbounds %struct.GPR, %struct.GPR* %1224, i32 0, i32 15
  %1226 = getelementptr inbounds %struct.Reg, %struct.Reg* %1225, i32 0, i32 0
  %RBP.i453 = bitcast %union.anon* %1226 to i64*
  %1227 = load i64, i64* %RBP.i453
  %1228 = sub i64 %1227, 16
  %1229 = load i64, i64* %PC.i451
  %1230 = add i64 %1229, 4
  store i64 %1230, i64* %PC.i451
  %1231 = inttoptr i64 %1228 to i64*
  %1232 = load i64, i64* %1231
  store i64 %1232, i64* %RAX.i452, align 8
  store %struct.Memory* %loadMem_40085a, %struct.Memory** %MEMORY
  %loadMem_40085e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1234 = getelementptr inbounds %struct.GPR, %struct.GPR* %1233, i32 0, i32 33
  %1235 = getelementptr inbounds %struct.Reg, %struct.Reg* %1234, i32 0, i32 0
  %PC.i448 = bitcast %union.anon* %1235 to i64*
  %1236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1237 = getelementptr inbounds %struct.GPR, %struct.GPR* %1236, i32 0, i32 1
  %1238 = getelementptr inbounds %struct.Reg, %struct.Reg* %1237, i32 0, i32 0
  %RAX.i449 = bitcast %union.anon* %1238 to i64*
  %1239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1240 = getelementptr inbounds %struct.GPR, %struct.GPR* %1239, i32 0, i32 5
  %1241 = getelementptr inbounds %struct.Reg, %struct.Reg* %1240, i32 0, i32 0
  %RCX.i450 = bitcast %union.anon* %1241 to i64*
  %1242 = load i64, i64* %RAX.i449
  %1243 = add i64 %1242, 5
  %1244 = load i64, i64* %PC.i448
  %1245 = add i64 %1244, 4
  store i64 %1245, i64* %PC.i448
  %1246 = inttoptr i64 %1243 to i8*
  %1247 = load i8, i8* %1246
  %1248 = sext i8 %1247 to i64
  %1249 = and i64 %1248, 4294967295
  store i64 %1249, i64* %RCX.i450, align 8
  store %struct.Memory* %loadMem_40085e, %struct.Memory** %MEMORY
  %loadMem_400862 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1251 = getelementptr inbounds %struct.GPR, %struct.GPR* %1250, i32 0, i32 33
  %1252 = getelementptr inbounds %struct.Reg, %struct.Reg* %1251, i32 0, i32 0
  %PC.i446 = bitcast %union.anon* %1252 to i64*
  %1253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1254 = getelementptr inbounds %struct.GPR, %struct.GPR* %1253, i32 0, i32 5
  %1255 = getelementptr inbounds %struct.Reg, %struct.Reg* %1254, i32 0, i32 0
  %RCX.i447 = bitcast %union.anon* %1255 to i64*
  %1256 = load i64, i64* %RCX.i447
  %1257 = load i64, i64* %PC.i446
  %1258 = add i64 %1257, 3
  store i64 %1258, i64* %PC.i446
  %1259 = and i64 15, %1256
  %1260 = trunc i64 %1259 to i32
  store i64 %1259, i64* %RCX.i447, align 8
  %1261 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1261, align 1
  %1262 = and i32 %1260, 255
  %1263 = call i32 @llvm.ctpop.i32(i32 %1262)
  %1264 = trunc i32 %1263 to i8
  %1265 = and i8 %1264, 1
  %1266 = xor i8 %1265, 1
  %1267 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1266, i8* %1267, align 1
  %1268 = icmp eq i32 %1260, 0
  %1269 = zext i1 %1268 to i8
  %1270 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1269, i8* %1270, align 1
  %1271 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1271, align 1
  %1272 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1272, align 1
  %1273 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1273, align 1
  store %struct.Memory* %loadMem_400862, %struct.Memory** %MEMORY
  %loadMem_400865 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1275 = getelementptr inbounds %struct.GPR, %struct.GPR* %1274, i32 0, i32 33
  %1276 = getelementptr inbounds %struct.Reg, %struct.Reg* %1275, i32 0, i32 0
  %PC.i443 = bitcast %union.anon* %1276 to i64*
  %1277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1278 = getelementptr inbounds %struct.GPR, %struct.GPR* %1277, i32 0, i32 5
  %1279 = getelementptr inbounds %struct.Reg, %struct.Reg* %1278, i32 0, i32 0
  %1280 = bitcast %union.anon* %1279 to %struct.anon.2*
  %CL.i444 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1280, i32 0, i32 0
  %1281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1282 = getelementptr inbounds %struct.GPR, %struct.GPR* %1281, i32 0, i32 7
  %1283 = getelementptr inbounds %struct.Reg, %struct.Reg* %1282, i32 0, i32 0
  %1284 = bitcast %union.anon* %1283 to %struct.anon.2*
  %DL.i445 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1284, i32 0, i32 0
  %1285 = load i8, i8* %CL.i444
  %1286 = zext i8 %1285 to i64
  %1287 = load i64, i64* %PC.i443
  %1288 = add i64 %1287, 2
  store i64 %1288, i64* %PC.i443
  store i8 %1285, i8* %DL.i445, align 1
  store %struct.Memory* %loadMem_400865, %struct.Memory** %MEMORY
  %loadMem_400867 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1290 = getelementptr inbounds %struct.GPR, %struct.GPR* %1289, i32 0, i32 33
  %1291 = getelementptr inbounds %struct.Reg, %struct.Reg* %1290, i32 0, i32 0
  %PC.i440 = bitcast %union.anon* %1291 to i64*
  %1292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1293 = getelementptr inbounds %struct.GPR, %struct.GPR* %1292, i32 0, i32 7
  %1294 = getelementptr inbounds %struct.Reg, %struct.Reg* %1293, i32 0, i32 0
  %1295 = bitcast %union.anon* %1294 to %struct.anon.2*
  %DL.i441 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1295, i32 0, i32 0
  %1296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1297 = getelementptr inbounds %struct.GPR, %struct.GPR* %1296, i32 0, i32 15
  %1298 = getelementptr inbounds %struct.Reg, %struct.Reg* %1297, i32 0, i32 0
  %RBP.i442 = bitcast %union.anon* %1298 to i64*
  %1299 = load i64, i64* %RBP.i442
  %1300 = sub i64 %1299, 33
  %1301 = load i8, i8* %DL.i441
  %1302 = zext i8 %1301 to i64
  %1303 = load i64, i64* %PC.i440
  %1304 = add i64 %1303, 3
  store i64 %1304, i64* %PC.i440
  %1305 = inttoptr i64 %1300 to i8*
  store i8 %1301, i8* %1305
  store %struct.Memory* %loadMem_400867, %struct.Memory** %MEMORY
  %loadMem_40086a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1307 = getelementptr inbounds %struct.GPR, %struct.GPR* %1306, i32 0, i32 33
  %1308 = getelementptr inbounds %struct.Reg, %struct.Reg* %1307, i32 0, i32 0
  %PC.i437 = bitcast %union.anon* %1308 to i64*
  %1309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1310 = getelementptr inbounds %struct.GPR, %struct.GPR* %1309, i32 0, i32 1
  %1311 = getelementptr inbounds %struct.Reg, %struct.Reg* %1310, i32 0, i32 0
  %RAX.i438 = bitcast %union.anon* %1311 to i64*
  %1312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1313 = getelementptr inbounds %struct.GPR, %struct.GPR* %1312, i32 0, i32 15
  %1314 = getelementptr inbounds %struct.Reg, %struct.Reg* %1313, i32 0, i32 0
  %RBP.i439 = bitcast %union.anon* %1314 to i64*
  %1315 = load i64, i64* %RBP.i439
  %1316 = sub i64 %1315, 16
  %1317 = load i64, i64* %PC.i437
  %1318 = add i64 %1317, 4
  store i64 %1318, i64* %PC.i437
  %1319 = inttoptr i64 %1316 to i64*
  %1320 = load i64, i64* %1319
  store i64 %1320, i64* %RAX.i438, align 8
  store %struct.Memory* %loadMem_40086a, %struct.Memory** %MEMORY
  %loadMem_40086e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1322 = getelementptr inbounds %struct.GPR, %struct.GPR* %1321, i32 0, i32 33
  %1323 = getelementptr inbounds %struct.Reg, %struct.Reg* %1322, i32 0, i32 0
  %PC.i434 = bitcast %union.anon* %1323 to i64*
  %1324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1325 = getelementptr inbounds %struct.GPR, %struct.GPR* %1324, i32 0, i32 1
  %1326 = getelementptr inbounds %struct.Reg, %struct.Reg* %1325, i32 0, i32 0
  %RAX.i435 = bitcast %union.anon* %1326 to i64*
  %1327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1328 = getelementptr inbounds %struct.GPR, %struct.GPR* %1327, i32 0, i32 5
  %1329 = getelementptr inbounds %struct.Reg, %struct.Reg* %1328, i32 0, i32 0
  %RCX.i436 = bitcast %union.anon* %1329 to i64*
  %1330 = load i64, i64* %RAX.i435
  %1331 = add i64 %1330, 5
  %1332 = load i64, i64* %PC.i434
  %1333 = add i64 %1332, 4
  store i64 %1333, i64* %PC.i434
  %1334 = inttoptr i64 %1331 to i8*
  %1335 = load i8, i8* %1334
  %1336 = sext i8 %1335 to i64
  %1337 = and i64 %1336, 4294967295
  store i64 %1337, i64* %RCX.i436, align 8
  store %struct.Memory* %loadMem_40086e, %struct.Memory** %MEMORY
  %loadMem_400872 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1339 = getelementptr inbounds %struct.GPR, %struct.GPR* %1338, i32 0, i32 33
  %1340 = getelementptr inbounds %struct.Reg, %struct.Reg* %1339, i32 0, i32 0
  %PC.i432 = bitcast %union.anon* %1340 to i64*
  %1341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1342 = getelementptr inbounds %struct.GPR, %struct.GPR* %1341, i32 0, i32 5
  %1343 = getelementptr inbounds %struct.Reg, %struct.Reg* %1342, i32 0, i32 0
  %RCX.i433 = bitcast %union.anon* %1343 to i64*
  %1344 = load i64, i64* %RCX.i433
  %1345 = load i64, i64* %PC.i432
  %1346 = add i64 %1345, 6
  store i64 %1346, i64* %PC.i432
  %1347 = and i64 240, %1344
  %1348 = trunc i64 %1347 to i32
  store i64 %1347, i64* %RCX.i433, align 8
  %1349 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1349, align 1
  %1350 = and i32 %1348, 255
  %1351 = call i32 @llvm.ctpop.i32(i32 %1350)
  %1352 = trunc i32 %1351 to i8
  %1353 = and i8 %1352, 1
  %1354 = xor i8 %1353, 1
  %1355 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1354, i8* %1355, align 1
  %1356 = icmp eq i32 %1348, 0
  %1357 = zext i1 %1356 to i8
  %1358 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1357, i8* %1358, align 1
  %1359 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1359, align 1
  %1360 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1360, align 1
  %1361 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1361, align 1
  store %struct.Memory* %loadMem_400872, %struct.Memory** %MEMORY
  %loadMem_400878 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1363 = getelementptr inbounds %struct.GPR, %struct.GPR* %1362, i32 0, i32 33
  %1364 = getelementptr inbounds %struct.Reg, %struct.Reg* %1363, i32 0, i32 0
  %PC.i429 = bitcast %union.anon* %1364 to i64*
  %1365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1366 = getelementptr inbounds %struct.GPR, %struct.GPR* %1365, i32 0, i32 5
  %1367 = getelementptr inbounds %struct.Reg, %struct.Reg* %1366, i32 0, i32 0
  %1368 = bitcast %union.anon* %1367 to %struct.anon.2*
  %CL.i430 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1368, i32 0, i32 0
  %1369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1370 = getelementptr inbounds %struct.GPR, %struct.GPR* %1369, i32 0, i32 7
  %1371 = getelementptr inbounds %struct.Reg, %struct.Reg* %1370, i32 0, i32 0
  %1372 = bitcast %union.anon* %1371 to %struct.anon.2*
  %DL.i431 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1372, i32 0, i32 0
  %1373 = load i8, i8* %CL.i430
  %1374 = zext i8 %1373 to i64
  %1375 = load i64, i64* %PC.i429
  %1376 = add i64 %1375, 2
  store i64 %1376, i64* %PC.i429
  store i8 %1373, i8* %DL.i431, align 1
  store %struct.Memory* %loadMem_400878, %struct.Memory** %MEMORY
  %loadMem_40087a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1378 = getelementptr inbounds %struct.GPR, %struct.GPR* %1377, i32 0, i32 33
  %1379 = getelementptr inbounds %struct.Reg, %struct.Reg* %1378, i32 0, i32 0
  %PC.i427 = bitcast %union.anon* %1379 to i64*
  %1380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1381 = getelementptr inbounds %struct.GPR, %struct.GPR* %1380, i32 0, i32 7
  %1382 = getelementptr inbounds %struct.Reg, %struct.Reg* %1381, i32 0, i32 0
  %1383 = bitcast %union.anon* %1382 to %struct.anon.2*
  %DL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1383, i32 0, i32 0
  %1384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1385 = getelementptr inbounds %struct.GPR, %struct.GPR* %1384, i32 0, i32 15
  %1386 = getelementptr inbounds %struct.Reg, %struct.Reg* %1385, i32 0, i32 0
  %RBP.i428 = bitcast %union.anon* %1386 to i64*
  %1387 = load i64, i64* %RBP.i428
  %1388 = sub i64 %1387, 34
  %1389 = load i8, i8* %DL.i
  %1390 = zext i8 %1389 to i64
  %1391 = load i64, i64* %PC.i427
  %1392 = add i64 %1391, 3
  store i64 %1392, i64* %PC.i427
  %1393 = inttoptr i64 %1388 to i8*
  store i8 %1389, i8* %1393
  store %struct.Memory* %loadMem_40087a, %struct.Memory** %MEMORY
  %loadMem_40087d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1395 = getelementptr inbounds %struct.GPR, %struct.GPR* %1394, i32 0, i32 33
  %1396 = getelementptr inbounds %struct.Reg, %struct.Reg* %1395, i32 0, i32 0
  %PC.i424 = bitcast %union.anon* %1396 to i64*
  %1397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1398 = getelementptr inbounds %struct.GPR, %struct.GPR* %1397, i32 0, i32 5
  %1399 = getelementptr inbounds %struct.Reg, %struct.Reg* %1398, i32 0, i32 0
  %RCX.i425 = bitcast %union.anon* %1399 to i64*
  %1400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1401 = getelementptr inbounds %struct.GPR, %struct.GPR* %1400, i32 0, i32 15
  %1402 = getelementptr inbounds %struct.Reg, %struct.Reg* %1401, i32 0, i32 0
  %RBP.i426 = bitcast %union.anon* %1402 to i64*
  %1403 = load i64, i64* %RBP.i426
  %1404 = sub i64 %1403, 33
  %1405 = load i64, i64* %PC.i424
  %1406 = add i64 %1405, 4
  store i64 %1406, i64* %PC.i424
  %1407 = inttoptr i64 %1404 to i8*
  %1408 = load i8, i8* %1407
  %1409 = zext i8 %1408 to i64
  store i64 %1409, i64* %RCX.i425, align 8
  store %struct.Memory* %loadMem_40087d, %struct.Memory** %MEMORY
  %loadMem_400881 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1410 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1411 = getelementptr inbounds %struct.GPR, %struct.GPR* %1410, i32 0, i32 33
  %1412 = getelementptr inbounds %struct.Reg, %struct.Reg* %1411, i32 0, i32 0
  %PC.i422 = bitcast %union.anon* %1412 to i64*
  %1413 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1414 = getelementptr inbounds %struct.GPR, %struct.GPR* %1413, i32 0, i32 5
  %1415 = getelementptr inbounds %struct.Reg, %struct.Reg* %1414, i32 0, i32 0
  %ECX.i423 = bitcast %union.anon* %1415 to i32*
  %1416 = load i32, i32* %ECX.i423
  %1417 = zext i32 %1416 to i64
  %1418 = load i64, i64* %PC.i422
  %1419 = add i64 %1418, 3
  store i64 %1419, i64* %PC.i422
  %1420 = sub i32 %1416, 3
  %1421 = icmp ult i32 %1416, 3
  %1422 = zext i1 %1421 to i8
  %1423 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1422, i8* %1423, align 1
  %1424 = and i32 %1420, 255
  %1425 = call i32 @llvm.ctpop.i32(i32 %1424)
  %1426 = trunc i32 %1425 to i8
  %1427 = and i8 %1426, 1
  %1428 = xor i8 %1427, 1
  %1429 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1428, i8* %1429, align 1
  %1430 = xor i64 3, %1417
  %1431 = trunc i64 %1430 to i32
  %1432 = xor i32 %1431, %1420
  %1433 = lshr i32 %1432, 4
  %1434 = trunc i32 %1433 to i8
  %1435 = and i8 %1434, 1
  %1436 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1435, i8* %1436, align 1
  %1437 = icmp eq i32 %1420, 0
  %1438 = zext i1 %1437 to i8
  %1439 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1438, i8* %1439, align 1
  %1440 = lshr i32 %1420, 31
  %1441 = trunc i32 %1440 to i8
  %1442 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1441, i8* %1442, align 1
  %1443 = lshr i32 %1416, 31
  %1444 = xor i32 %1440, %1443
  %1445 = add i32 %1444, %1443
  %1446 = icmp eq i32 %1445, 2
  %1447 = zext i1 %1446 to i8
  %1448 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1447, i8* %1448, align 1
  store %struct.Memory* %loadMem_400881, %struct.Memory** %MEMORY
  %loadMem_400884 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1450 = getelementptr inbounds %struct.GPR, %struct.GPR* %1449, i32 0, i32 33
  %1451 = getelementptr inbounds %struct.Reg, %struct.Reg* %1450, i32 0, i32 0
  %PC.i421 = bitcast %union.anon* %1451 to i64*
  %1452 = load i64, i64* %PC.i421
  %1453 = add i64 %1452, 33
  %1454 = load i64, i64* %PC.i421
  %1455 = add i64 %1454, 6
  %1456 = load i64, i64* %PC.i421
  %1457 = add i64 %1456, 6
  store i64 %1457, i64* %PC.i421
  %1458 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1459 = load i8, i8* %1458, align 1
  %1460 = icmp eq i8 %1459, 0
  %1461 = zext i1 %1460 to i8
  store i8 %1461, i8* %BRANCH_TAKEN, align 1
  %1462 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1463 = select i1 %1460, i64 %1453, i64 %1455
  store i64 %1463, i64* %1462, align 8
  store %struct.Memory* %loadMem_400884, %struct.Memory** %MEMORY
  %loadBr_400884 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400884 = icmp eq i8 %loadBr_400884, 1
  br i1 %cmpBr_400884, label %block_.L_4008a5, label %block_40088a

block_40088a:                                     ; preds = %block_.L_40085a
  %loadMem_40088a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1465 = getelementptr inbounds %struct.GPR, %struct.GPR* %1464, i32 0, i32 33
  %1466 = getelementptr inbounds %struct.Reg, %struct.Reg* %1465, i32 0, i32 0
  %PC.i418 = bitcast %union.anon* %1466 to i64*
  %1467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1468 = getelementptr inbounds %struct.GPR, %struct.GPR* %1467, i32 0, i32 1
  %1469 = getelementptr inbounds %struct.Reg, %struct.Reg* %1468, i32 0, i32 0
  %RAX.i419 = bitcast %union.anon* %1469 to i64*
  %1470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1471 = getelementptr inbounds %struct.GPR, %struct.GPR* %1470, i32 0, i32 15
  %1472 = getelementptr inbounds %struct.Reg, %struct.Reg* %1471, i32 0, i32 0
  %RBP.i420 = bitcast %union.anon* %1472 to i64*
  %1473 = load i64, i64* %RBP.i420
  %1474 = sub i64 %1473, 34
  %1475 = load i64, i64* %PC.i418
  %1476 = add i64 %1475, 4
  store i64 %1476, i64* %PC.i418
  %1477 = inttoptr i64 %1474 to i8*
  %1478 = load i8, i8* %1477
  %1479 = zext i8 %1478 to i64
  store i64 %1479, i64* %RAX.i419, align 8
  store %struct.Memory* %loadMem_40088a, %struct.Memory** %MEMORY
  %loadMem_40088e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1481 = getelementptr inbounds %struct.GPR, %struct.GPR* %1480, i32 0, i32 33
  %1482 = getelementptr inbounds %struct.Reg, %struct.Reg* %1481, i32 0, i32 0
  %PC.i416 = bitcast %union.anon* %1482 to i64*
  %1483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1484 = getelementptr inbounds %struct.GPR, %struct.GPR* %1483, i32 0, i32 1
  %1485 = getelementptr inbounds %struct.Reg, %struct.Reg* %1484, i32 0, i32 0
  %EAX.i417 = bitcast %union.anon* %1485 to i32*
  %1486 = load i32, i32* %EAX.i417
  %1487 = zext i32 %1486 to i64
  %1488 = load i64, i64* %PC.i416
  %1489 = add i64 %1488, 3
  store i64 %1489, i64* %PC.i416
  %1490 = sub i32 %1486, 96
  %1491 = icmp ult i32 %1486, 96
  %1492 = zext i1 %1491 to i8
  %1493 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1492, i8* %1493, align 1
  %1494 = and i32 %1490, 255
  %1495 = call i32 @llvm.ctpop.i32(i32 %1494)
  %1496 = trunc i32 %1495 to i8
  %1497 = and i8 %1496, 1
  %1498 = xor i8 %1497, 1
  %1499 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1498, i8* %1499, align 1
  %1500 = xor i64 96, %1487
  %1501 = trunc i64 %1500 to i32
  %1502 = xor i32 %1501, %1490
  %1503 = lshr i32 %1502, 4
  %1504 = trunc i32 %1503 to i8
  %1505 = and i8 %1504, 1
  %1506 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1505, i8* %1506, align 1
  %1507 = icmp eq i32 %1490, 0
  %1508 = zext i1 %1507 to i8
  %1509 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1508, i8* %1509, align 1
  %1510 = lshr i32 %1490, 31
  %1511 = trunc i32 %1510 to i8
  %1512 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1511, i8* %1512, align 1
  %1513 = lshr i32 %1486, 31
  %1514 = xor i32 %1510, %1513
  %1515 = add i32 %1514, %1513
  %1516 = icmp eq i32 %1515, 2
  %1517 = zext i1 %1516 to i8
  %1518 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1517, i8* %1518, align 1
  store %struct.Memory* %loadMem_40088e, %struct.Memory** %MEMORY
  %loadMem_400891 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1520 = getelementptr inbounds %struct.GPR, %struct.GPR* %1519, i32 0, i32 33
  %1521 = getelementptr inbounds %struct.Reg, %struct.Reg* %1520, i32 0, i32 0
  %PC.i415 = bitcast %union.anon* %1521 to i64*
  %1522 = load i64, i64* %PC.i415
  %1523 = add i64 %1522, 20
  %1524 = load i64, i64* %PC.i415
  %1525 = add i64 %1524, 6
  %1526 = load i64, i64* %PC.i415
  %1527 = add i64 %1526, 6
  store i64 %1527, i64* %PC.i415
  %1528 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1529 = load i8, i8* %1528, align 1
  %1530 = icmp eq i8 %1529, 0
  %1531 = zext i1 %1530 to i8
  store i8 %1531, i8* %BRANCH_TAKEN, align 1
  %1532 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1533 = select i1 %1530, i64 %1523, i64 %1525
  store i64 %1533, i64* %1532, align 8
  store %struct.Memory* %loadMem_400891, %struct.Memory** %MEMORY
  %loadBr_400891 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400891 = icmp eq i8 %loadBr_400891, 1
  br i1 %cmpBr_400891, label %block_.L_4008a5, label %block_400897

block_400897:                                     ; preds = %block_40088a
  %loadMem_400897 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1534 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1535 = getelementptr inbounds %struct.GPR, %struct.GPR* %1534, i32 0, i32 33
  %1536 = getelementptr inbounds %struct.Reg, %struct.Reg* %1535, i32 0, i32 0
  %PC.i412 = bitcast %union.anon* %1536 to i64*
  %1537 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1538 = getelementptr inbounds %struct.GPR, %struct.GPR* %1537, i32 0, i32 1
  %1539 = getelementptr inbounds %struct.Reg, %struct.Reg* %1538, i32 0, i32 0
  %RAX.i413 = bitcast %union.anon* %1539 to i64*
  %1540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1541 = getelementptr inbounds %struct.GPR, %struct.GPR* %1540, i32 0, i32 15
  %1542 = getelementptr inbounds %struct.Reg, %struct.Reg* %1541, i32 0, i32 0
  %RBP.i414 = bitcast %union.anon* %1542 to i64*
  %1543 = load i64, i64* %RBP.i414
  %1544 = sub i64 %1543, 20
  %1545 = load i64, i64* %PC.i412
  %1546 = add i64 %1545, 3
  store i64 %1546, i64* %PC.i412
  %1547 = inttoptr i64 %1544 to i32*
  %1548 = load i32, i32* %1547
  %1549 = zext i32 %1548 to i64
  store i64 %1549, i64* %RAX.i413, align 8
  store %struct.Memory* %loadMem_400897, %struct.Memory** %MEMORY
  %loadMem_40089a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1550 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1551 = getelementptr inbounds %struct.GPR, %struct.GPR* %1550, i32 0, i32 33
  %1552 = getelementptr inbounds %struct.Reg, %struct.Reg* %1551, i32 0, i32 0
  %PC.i410 = bitcast %union.anon* %1552 to i64*
  %1553 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1554 = getelementptr inbounds %struct.GPR, %struct.GPR* %1553, i32 0, i32 1
  %1555 = getelementptr inbounds %struct.Reg, %struct.Reg* %1554, i32 0, i32 0
  %RAX.i411 = bitcast %union.anon* %1555 to i64*
  %1556 = load i64, i64* %RAX.i411
  %1557 = load i64, i64* %PC.i410
  %1558 = add i64 %1557, 3
  store i64 %1558, i64* %PC.i410
  %1559 = trunc i64 %1556 to i32
  %1560 = add i32 4, %1559
  %1561 = zext i32 %1560 to i64
  store i64 %1561, i64* %RAX.i411, align 8
  %1562 = icmp ult i32 %1560, %1559
  %1563 = icmp ult i32 %1560, 4
  %1564 = or i1 %1562, %1563
  %1565 = zext i1 %1564 to i8
  %1566 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1565, i8* %1566, align 1
  %1567 = and i32 %1560, 255
  %1568 = call i32 @llvm.ctpop.i32(i32 %1567)
  %1569 = trunc i32 %1568 to i8
  %1570 = and i8 %1569, 1
  %1571 = xor i8 %1570, 1
  %1572 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1571, i8* %1572, align 1
  %1573 = xor i64 4, %1556
  %1574 = trunc i64 %1573 to i32
  %1575 = xor i32 %1574, %1560
  %1576 = lshr i32 %1575, 4
  %1577 = trunc i32 %1576 to i8
  %1578 = and i8 %1577, 1
  %1579 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1578, i8* %1579, align 1
  %1580 = icmp eq i32 %1560, 0
  %1581 = zext i1 %1580 to i8
  %1582 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1581, i8* %1582, align 1
  %1583 = lshr i32 %1560, 31
  %1584 = trunc i32 %1583 to i8
  %1585 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1584, i8* %1585, align 1
  %1586 = lshr i32 %1559, 31
  %1587 = xor i32 %1583, %1586
  %1588 = add i32 %1587, %1583
  %1589 = icmp eq i32 %1588, 2
  %1590 = zext i1 %1589 to i8
  %1591 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1590, i8* %1591, align 1
  store %struct.Memory* %loadMem_40089a, %struct.Memory** %MEMORY
  %loadMem_40089d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1593 = getelementptr inbounds %struct.GPR, %struct.GPR* %1592, i32 0, i32 33
  %1594 = getelementptr inbounds %struct.Reg, %struct.Reg* %1593, i32 0, i32 0
  %PC.i407 = bitcast %union.anon* %1594 to i64*
  %1595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1596 = getelementptr inbounds %struct.GPR, %struct.GPR* %1595, i32 0, i32 1
  %1597 = getelementptr inbounds %struct.Reg, %struct.Reg* %1596, i32 0, i32 0
  %EAX.i408 = bitcast %union.anon* %1597 to i32*
  %1598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1599 = getelementptr inbounds %struct.GPR, %struct.GPR* %1598, i32 0, i32 15
  %1600 = getelementptr inbounds %struct.Reg, %struct.Reg* %1599, i32 0, i32 0
  %RBP.i409 = bitcast %union.anon* %1600 to i64*
  %1601 = load i64, i64* %RBP.i409
  %1602 = sub i64 %1601, 20
  %1603 = load i32, i32* %EAX.i408
  %1604 = zext i32 %1603 to i64
  %1605 = load i64, i64* %PC.i407
  %1606 = add i64 %1605, 3
  store i64 %1606, i64* %PC.i407
  %1607 = inttoptr i64 %1602 to i32*
  store i32 %1603, i32* %1607
  store %struct.Memory* %loadMem_40089d, %struct.Memory** %MEMORY
  %loadMem_4008a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1609 = getelementptr inbounds %struct.GPR, %struct.GPR* %1608, i32 0, i32 33
  %1610 = getelementptr inbounds %struct.Reg, %struct.Reg* %1609, i32 0, i32 0
  %PC.i406 = bitcast %union.anon* %1610 to i64*
  %1611 = load i64, i64* %PC.i406
  %1612 = add i64 %1611, 14
  %1613 = load i64, i64* %PC.i406
  %1614 = add i64 %1613, 5
  store i64 %1614, i64* %PC.i406
  %1615 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1612, i64* %1615, align 8
  store %struct.Memory* %loadMem_4008a0, %struct.Memory** %MEMORY
  br label %block_.L_4008ae

block_.L_4008a5:                                  ; preds = %block_40088a, %block_.L_40085a
  %loadMem_4008a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1616 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1617 = getelementptr inbounds %struct.GPR, %struct.GPR* %1616, i32 0, i32 33
  %1618 = getelementptr inbounds %struct.Reg, %struct.Reg* %1617, i32 0, i32 0
  %PC.i403 = bitcast %union.anon* %1618 to i64*
  %1619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1620 = getelementptr inbounds %struct.GPR, %struct.GPR* %1619, i32 0, i32 1
  %1621 = getelementptr inbounds %struct.Reg, %struct.Reg* %1620, i32 0, i32 0
  %RAX.i404 = bitcast %union.anon* %1621 to i64*
  %1622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1623 = getelementptr inbounds %struct.GPR, %struct.GPR* %1622, i32 0, i32 15
  %1624 = getelementptr inbounds %struct.Reg, %struct.Reg* %1623, i32 0, i32 0
  %RBP.i405 = bitcast %union.anon* %1624 to i64*
  %1625 = load i64, i64* %RBP.i405
  %1626 = sub i64 %1625, 20
  %1627 = load i64, i64* %PC.i403
  %1628 = add i64 %1627, 3
  store i64 %1628, i64* %PC.i403
  %1629 = inttoptr i64 %1626 to i32*
  %1630 = load i32, i32* %1629
  %1631 = zext i32 %1630 to i64
  store i64 %1631, i64* %RAX.i404, align 8
  store %struct.Memory* %loadMem_4008a5, %struct.Memory** %MEMORY
  %loadMem_4008a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1632 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1633 = getelementptr inbounds %struct.GPR, %struct.GPR* %1632, i32 0, i32 33
  %1634 = getelementptr inbounds %struct.Reg, %struct.Reg* %1633, i32 0, i32 0
  %PC.i401 = bitcast %union.anon* %1634 to i64*
  %1635 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1636 = getelementptr inbounds %struct.GPR, %struct.GPR* %1635, i32 0, i32 1
  %1637 = getelementptr inbounds %struct.Reg, %struct.Reg* %1636, i32 0, i32 0
  %RAX.i402 = bitcast %union.anon* %1637 to i64*
  %1638 = load i64, i64* %RAX.i402
  %1639 = load i64, i64* %PC.i401
  %1640 = add i64 %1639, 3
  store i64 %1640, i64* %PC.i401
  %1641 = trunc i64 %1638 to i32
  %1642 = add i32 5, %1641
  %1643 = zext i32 %1642 to i64
  store i64 %1643, i64* %RAX.i402, align 8
  %1644 = icmp ult i32 %1642, %1641
  %1645 = icmp ult i32 %1642, 5
  %1646 = or i1 %1644, %1645
  %1647 = zext i1 %1646 to i8
  %1648 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1647, i8* %1648, align 1
  %1649 = and i32 %1642, 255
  %1650 = call i32 @llvm.ctpop.i32(i32 %1649)
  %1651 = trunc i32 %1650 to i8
  %1652 = and i8 %1651, 1
  %1653 = xor i8 %1652, 1
  %1654 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1653, i8* %1654, align 1
  %1655 = xor i64 5, %1638
  %1656 = trunc i64 %1655 to i32
  %1657 = xor i32 %1656, %1642
  %1658 = lshr i32 %1657, 4
  %1659 = trunc i32 %1658 to i8
  %1660 = and i8 %1659, 1
  %1661 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1660, i8* %1661, align 1
  %1662 = icmp eq i32 %1642, 0
  %1663 = zext i1 %1662 to i8
  %1664 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1663, i8* %1664, align 1
  %1665 = lshr i32 %1642, 31
  %1666 = trunc i32 %1665 to i8
  %1667 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1666, i8* %1667, align 1
  %1668 = lshr i32 %1641, 31
  %1669 = xor i32 %1665, %1668
  %1670 = add i32 %1669, %1665
  %1671 = icmp eq i32 %1670, 2
  %1672 = zext i1 %1671 to i8
  %1673 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1672, i8* %1673, align 1
  store %struct.Memory* %loadMem_4008a8, %struct.Memory** %MEMORY
  %loadMem_4008ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %1674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1675 = getelementptr inbounds %struct.GPR, %struct.GPR* %1674, i32 0, i32 33
  %1676 = getelementptr inbounds %struct.Reg, %struct.Reg* %1675, i32 0, i32 0
  %PC.i398 = bitcast %union.anon* %1676 to i64*
  %1677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1678 = getelementptr inbounds %struct.GPR, %struct.GPR* %1677, i32 0, i32 1
  %1679 = getelementptr inbounds %struct.Reg, %struct.Reg* %1678, i32 0, i32 0
  %EAX.i399 = bitcast %union.anon* %1679 to i32*
  %1680 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1681 = getelementptr inbounds %struct.GPR, %struct.GPR* %1680, i32 0, i32 15
  %1682 = getelementptr inbounds %struct.Reg, %struct.Reg* %1681, i32 0, i32 0
  %RBP.i400 = bitcast %union.anon* %1682 to i64*
  %1683 = load i64, i64* %RBP.i400
  %1684 = sub i64 %1683, 20
  %1685 = load i32, i32* %EAX.i399
  %1686 = zext i32 %1685 to i64
  %1687 = load i64, i64* %PC.i398
  %1688 = add i64 %1687, 3
  store i64 %1688, i64* %PC.i398
  %1689 = inttoptr i64 %1684 to i32*
  store i32 %1685, i32* %1689
  store %struct.Memory* %loadMem_4008ab, %struct.Memory** %MEMORY
  br label %block_.L_4008ae

block_.L_4008ae:                                  ; preds = %block_.L_4008a5, %block_400897
  %loadMem_4008ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %1690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1691 = getelementptr inbounds %struct.GPR, %struct.GPR* %1690, i32 0, i32 33
  %1692 = getelementptr inbounds %struct.Reg, %struct.Reg* %1691, i32 0, i32 0
  %PC.i395 = bitcast %union.anon* %1692 to i64*
  %1693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1694 = getelementptr inbounds %struct.GPR, %struct.GPR* %1693, i32 0, i32 1
  %1695 = getelementptr inbounds %struct.Reg, %struct.Reg* %1694, i32 0, i32 0
  %RAX.i396 = bitcast %union.anon* %1695 to i64*
  %1696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1697 = getelementptr inbounds %struct.GPR, %struct.GPR* %1696, i32 0, i32 15
  %1698 = getelementptr inbounds %struct.Reg, %struct.Reg* %1697, i32 0, i32 0
  %RBP.i397 = bitcast %union.anon* %1698 to i64*
  %1699 = load i64, i64* %RBP.i397
  %1700 = sub i64 %1699, 16
  %1701 = load i64, i64* %PC.i395
  %1702 = add i64 %1701, 4
  store i64 %1702, i64* %PC.i395
  %1703 = inttoptr i64 %1700 to i64*
  %1704 = load i64, i64* %1703
  store i64 %1704, i64* %RAX.i396, align 8
  store %struct.Memory* %loadMem_4008ae, %struct.Memory** %MEMORY
  %loadMem_4008b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1706 = getelementptr inbounds %struct.GPR, %struct.GPR* %1705, i32 0, i32 33
  %1707 = getelementptr inbounds %struct.Reg, %struct.Reg* %1706, i32 0, i32 0
  %PC.i392 = bitcast %union.anon* %1707 to i64*
  %1708 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1709 = getelementptr inbounds %struct.GPR, %struct.GPR* %1708, i32 0, i32 1
  %1710 = getelementptr inbounds %struct.Reg, %struct.Reg* %1709, i32 0, i32 0
  %RAX.i393 = bitcast %union.anon* %1710 to i64*
  %1711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1712 = getelementptr inbounds %struct.GPR, %struct.GPR* %1711, i32 0, i32 11
  %1713 = getelementptr inbounds %struct.Reg, %struct.Reg* %1712, i32 0, i32 0
  %RDI.i394 = bitcast %union.anon* %1713 to i64*
  %1714 = load i64, i64* %RAX.i393
  %1715 = add i64 %1714, 6
  %1716 = load i64, i64* %PC.i392
  %1717 = add i64 %1716, 4
  store i64 %1717, i64* %PC.i392
  %1718 = inttoptr i64 %1715 to i8*
  %1719 = load i8, i8* %1718
  %1720 = zext i8 %1719 to i64
  store i64 %1720, i64* %RDI.i394, align 8
  store %struct.Memory* %loadMem_4008b2, %struct.Memory** %MEMORY
  %loadMem1_4008b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1721 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1722 = getelementptr inbounds %struct.GPR, %struct.GPR* %1721, i32 0, i32 33
  %1723 = getelementptr inbounds %struct.Reg, %struct.Reg* %1722, i32 0, i32 0
  %PC.i391 = bitcast %union.anon* %1723 to i64*
  %1724 = load i64, i64* %PC.i391
  %1725 = add i64 %1724, -758
  %1726 = load i64, i64* %PC.i391
  %1727 = add i64 %1726, 5
  %1728 = load i64, i64* %PC.i391
  %1729 = add i64 %1728, 5
  store i64 %1729, i64* %PC.i391
  %1730 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1731 = load i64, i64* %1730, align 8
  %1732 = add i64 %1731, -8
  %1733 = inttoptr i64 %1732 to i64*
  store i64 %1727, i64* %1733
  store i64 %1732, i64* %1730, align 8
  %1734 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1725, i64* %1734, align 8
  store %struct.Memory* %loadMem1_4008b6, %struct.Memory** %MEMORY
  %loadMem2_4008b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4008b6 = load i64, i64* %3
  %call2_4008b6 = call %struct.Memory* @sub_4005c0.to_byte(%struct.State* %0, i64 %loadPC_4008b6, %struct.Memory* %loadMem2_4008b6)
  store %struct.Memory* %call2_4008b6, %struct.Memory** %MEMORY
  %loadMem_4008bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1736 = getelementptr inbounds %struct.GPR, %struct.GPR* %1735, i32 0, i32 33
  %1737 = getelementptr inbounds %struct.Reg, %struct.Reg* %1736, i32 0, i32 0
  %PC.i389 = bitcast %union.anon* %1737 to i64*
  %1738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1739 = getelementptr inbounds %struct.GPR, %struct.GPR* %1738, i32 0, i32 1
  %1740 = getelementptr inbounds %struct.Reg, %struct.Reg* %1739, i32 0, i32 0
  %1741 = bitcast %union.anon* %1740 to %struct.anon.2*
  %AL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1741, i32 0, i32 0
  %1742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1743 = getelementptr inbounds %struct.GPR, %struct.GPR* %1742, i32 0, i32 5
  %1744 = getelementptr inbounds %struct.Reg, %struct.Reg* %1743, i32 0, i32 0
  %1745 = bitcast %union.anon* %1744 to %struct.anon.2*
  %CL.i390 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1745, i32 0, i32 0
  %1746 = load i8, i8* %AL.i
  %1747 = zext i8 %1746 to i64
  %1748 = load i64, i64* %PC.i389
  %1749 = add i64 %1748, 2
  store i64 %1749, i64* %PC.i389
  store i8 %1746, i8* %CL.i390, align 1
  store %struct.Memory* %loadMem_4008bb, %struct.Memory** %MEMORY
  %loadMem_4008bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1750 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1751 = getelementptr inbounds %struct.GPR, %struct.GPR* %1750, i32 0, i32 33
  %1752 = getelementptr inbounds %struct.Reg, %struct.Reg* %1751, i32 0, i32 0
  %PC.i386 = bitcast %union.anon* %1752 to i64*
  %1753 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1754 = getelementptr inbounds %struct.GPR, %struct.GPR* %1753, i32 0, i32 5
  %1755 = getelementptr inbounds %struct.Reg, %struct.Reg* %1754, i32 0, i32 0
  %1756 = bitcast %union.anon* %1755 to %struct.anon.2*
  %CL.i387 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1756, i32 0, i32 0
  %1757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1758 = getelementptr inbounds %struct.GPR, %struct.GPR* %1757, i32 0, i32 15
  %1759 = getelementptr inbounds %struct.Reg, %struct.Reg* %1758, i32 0, i32 0
  %RBP.i388 = bitcast %union.anon* %1759 to i64*
  %1760 = load i64, i64* %RBP.i388
  %1761 = sub i64 %1760, 35
  %1762 = load i8, i8* %CL.i387
  %1763 = zext i8 %1762 to i64
  %1764 = load i64, i64* %PC.i386
  %1765 = add i64 %1764, 3
  store i64 %1765, i64* %PC.i386
  %1766 = inttoptr i64 %1761 to i8*
  store i8 %1762, i8* %1766
  store %struct.Memory* %loadMem_4008bd, %struct.Memory** %MEMORY
  %loadMem_4008c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1767 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1768 = getelementptr inbounds %struct.GPR, %struct.GPR* %1767, i32 0, i32 33
  %1769 = getelementptr inbounds %struct.Reg, %struct.Reg* %1768, i32 0, i32 0
  %PC.i383 = bitcast %union.anon* %1769 to i64*
  %1770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1771 = getelementptr inbounds %struct.GPR, %struct.GPR* %1770, i32 0, i32 7
  %1772 = getelementptr inbounds %struct.Reg, %struct.Reg* %1771, i32 0, i32 0
  %RDX.i384 = bitcast %union.anon* %1772 to i64*
  %1773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1774 = getelementptr inbounds %struct.GPR, %struct.GPR* %1773, i32 0, i32 15
  %1775 = getelementptr inbounds %struct.Reg, %struct.Reg* %1774, i32 0, i32 0
  %RBP.i385 = bitcast %union.anon* %1775 to i64*
  %1776 = load i64, i64* %RBP.i385
  %1777 = sub i64 %1776, 16
  %1778 = load i64, i64* %PC.i383
  %1779 = add i64 %1778, 4
  store i64 %1779, i64* %PC.i383
  %1780 = inttoptr i64 %1777 to i64*
  %1781 = load i64, i64* %1780
  store i64 %1781, i64* %RDX.i384, align 8
  store %struct.Memory* %loadMem_4008c0, %struct.Memory** %MEMORY
  %loadMem_4008c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1782 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1783 = getelementptr inbounds %struct.GPR, %struct.GPR* %1782, i32 0, i32 33
  %1784 = getelementptr inbounds %struct.Reg, %struct.Reg* %1783, i32 0, i32 0
  %PC.i380 = bitcast %union.anon* %1784 to i64*
  %1785 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1786 = getelementptr inbounds %struct.GPR, %struct.GPR* %1785, i32 0, i32 7
  %1787 = getelementptr inbounds %struct.Reg, %struct.Reg* %1786, i32 0, i32 0
  %RDX.i381 = bitcast %union.anon* %1787 to i64*
  %1788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1789 = getelementptr inbounds %struct.GPR, %struct.GPR* %1788, i32 0, i32 11
  %1790 = getelementptr inbounds %struct.Reg, %struct.Reg* %1789, i32 0, i32 0
  %RDI.i382 = bitcast %union.anon* %1790 to i64*
  %1791 = load i64, i64* %RDX.i381
  %1792 = add i64 %1791, 7
  %1793 = load i64, i64* %PC.i380
  %1794 = add i64 %1793, 4
  store i64 %1794, i64* %PC.i380
  %1795 = inttoptr i64 %1792 to i8*
  %1796 = load i8, i8* %1795
  %1797 = zext i8 %1796 to i64
  store i64 %1797, i64* %RDI.i382, align 8
  store %struct.Memory* %loadMem_4008c4, %struct.Memory** %MEMORY
  %loadMem1_4008c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1798 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1799 = getelementptr inbounds %struct.GPR, %struct.GPR* %1798, i32 0, i32 33
  %1800 = getelementptr inbounds %struct.Reg, %struct.Reg* %1799, i32 0, i32 0
  %PC.i379 = bitcast %union.anon* %1800 to i64*
  %1801 = load i64, i64* %PC.i379
  %1802 = add i64 %1801, -776
  %1803 = load i64, i64* %PC.i379
  %1804 = add i64 %1803, 5
  %1805 = load i64, i64* %PC.i379
  %1806 = add i64 %1805, 5
  store i64 %1806, i64* %PC.i379
  %1807 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1808 = load i64, i64* %1807, align 8
  %1809 = add i64 %1808, -8
  %1810 = inttoptr i64 %1809 to i64*
  store i64 %1804, i64* %1810
  store i64 %1809, i64* %1807, align 8
  %1811 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1802, i64* %1811, align 8
  store %struct.Memory* %loadMem1_4008c8, %struct.Memory** %MEMORY
  %loadMem2_4008c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4008c8 = load i64, i64* %3
  %call2_4008c8 = call %struct.Memory* @sub_4005c0.to_byte(%struct.State* %0, i64 %loadPC_4008c8, %struct.Memory* %loadMem2_4008c8)
  store %struct.Memory* %call2_4008c8, %struct.Memory** %MEMORY
  %loadMem_4008cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1813 = getelementptr inbounds %struct.GPR, %struct.GPR* %1812, i32 0, i32 33
  %1814 = getelementptr inbounds %struct.Reg, %struct.Reg* %1813, i32 0, i32 0
  %PC.i376 = bitcast %union.anon* %1814 to i64*
  %1815 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1816 = getelementptr inbounds %struct.GPR, %struct.GPR* %1815, i32 0, i32 11
  %1817 = getelementptr inbounds %struct.Reg, %struct.Reg* %1816, i32 0, i32 0
  %RDI.i377 = bitcast %union.anon* %1817 to i64*
  %1818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1819 = getelementptr inbounds %struct.GPR, %struct.GPR* %1818, i32 0, i32 15
  %1820 = getelementptr inbounds %struct.Reg, %struct.Reg* %1819, i32 0, i32 0
  %RBP.i378 = bitcast %union.anon* %1820 to i64*
  %1821 = load i64, i64* %RBP.i378
  %1822 = sub i64 %1821, 35
  %1823 = load i64, i64* %PC.i376
  %1824 = add i64 %1823, 4
  store i64 %1824, i64* %PC.i376
  %1825 = inttoptr i64 %1822 to i8*
  %1826 = load i8, i8* %1825
  %1827 = zext i8 %1826 to i64
  store i64 %1827, i64* %RDI.i377, align 8
  store %struct.Memory* %loadMem_4008cd, %struct.Memory** %MEMORY
  %loadMem_4008d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1829 = getelementptr inbounds %struct.GPR, %struct.GPR* %1828, i32 0, i32 33
  %1830 = getelementptr inbounds %struct.Reg, %struct.Reg* %1829, i32 0, i32 0
  %PC.i373 = bitcast %union.anon* %1830 to i64*
  %1831 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1832 = getelementptr inbounds %struct.GPR, %struct.GPR* %1831, i32 0, i32 1
  %1833 = getelementptr inbounds %struct.Reg, %struct.Reg* %1832, i32 0, i32 0
  %EAX.i374 = bitcast %union.anon* %1833 to i32*
  %1834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1835 = getelementptr inbounds %struct.GPR, %struct.GPR* %1834, i32 0, i32 11
  %1836 = getelementptr inbounds %struct.Reg, %struct.Reg* %1835, i32 0, i32 0
  %RDI.i375 = bitcast %union.anon* %1836 to i64*
  %1837 = load i64, i64* %RDI.i375
  %1838 = load i32, i32* %EAX.i374
  %1839 = zext i32 %1838 to i64
  %1840 = load i64, i64* %PC.i373
  %1841 = add i64 %1840, 2
  store i64 %1841, i64* %PC.i373
  %1842 = or i64 %1839, %1837
  %1843 = trunc i64 %1842 to i32
  %1844 = and i64 %1842, 4294967295
  store i64 %1844, i64* %RDI.i375, align 8
  %1845 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1845, align 1
  %1846 = and i32 %1843, 255
  %1847 = call i32 @llvm.ctpop.i32(i32 %1846)
  %1848 = trunc i32 %1847 to i8
  %1849 = and i8 %1848, 1
  %1850 = xor i8 %1849, 1
  %1851 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1850, i8* %1851, align 1
  %1852 = icmp eq i32 %1843, 0
  %1853 = zext i1 %1852 to i8
  %1854 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1853, i8* %1854, align 1
  %1855 = lshr i32 %1843, 31
  %1856 = trunc i32 %1855 to i8
  %1857 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1856, i8* %1857, align 1
  %1858 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1858, align 1
  %1859 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1859, align 1
  store %struct.Memory* %loadMem_4008d1, %struct.Memory** %MEMORY
  %loadMem_4008d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1860 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1861 = getelementptr inbounds %struct.GPR, %struct.GPR* %1860, i32 0, i32 33
  %1862 = getelementptr inbounds %struct.Reg, %struct.Reg* %1861, i32 0, i32 0
  %PC.i371 = bitcast %union.anon* %1862 to i64*
  %1863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1864 = getelementptr inbounds %struct.GPR, %struct.GPR* %1863, i32 0, i32 5
  %1865 = getelementptr inbounds %struct.Reg, %struct.Reg* %1864, i32 0, i32 0
  %1866 = bitcast %union.anon* %1865 to %struct.anon.2*
  %CL.i372 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1866, i32 0, i32 0
  %1867 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1868 = getelementptr inbounds %struct.GPR, %struct.GPR* %1867, i32 0, i32 11
  %1869 = getelementptr inbounds %struct.Reg, %struct.Reg* %1868, i32 0, i32 0
  %1870 = bitcast %union.anon* %1869 to %struct.anon.2*
  %DIL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1870, i32 0, i32 0
  %1871 = load i8, i8* %DIL.i
  %1872 = zext i8 %1871 to i64
  %1873 = load i64, i64* %PC.i371
  %1874 = add i64 %1873, 3
  store i64 %1874, i64* %PC.i371
  store i8 %1871, i8* %CL.i372, align 1
  store %struct.Memory* %loadMem_4008d3, %struct.Memory** %MEMORY
  %loadMem_4008d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1875 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1876 = getelementptr inbounds %struct.GPR, %struct.GPR* %1875, i32 0, i32 33
  %1877 = getelementptr inbounds %struct.Reg, %struct.Reg* %1876, i32 0, i32 0
  %PC.i368 = bitcast %union.anon* %1877 to i64*
  %1878 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1879 = getelementptr inbounds %struct.GPR, %struct.GPR* %1878, i32 0, i32 5
  %1880 = getelementptr inbounds %struct.Reg, %struct.Reg* %1879, i32 0, i32 0
  %1881 = bitcast %union.anon* %1880 to %struct.anon.2*
  %CL.i369 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1881, i32 0, i32 0
  %1882 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1883 = getelementptr inbounds %struct.GPR, %struct.GPR* %1882, i32 0, i32 15
  %1884 = getelementptr inbounds %struct.Reg, %struct.Reg* %1883, i32 0, i32 0
  %RBP.i370 = bitcast %union.anon* %1884 to i64*
  %1885 = load i64, i64* %RBP.i370
  %1886 = sub i64 %1885, 35
  %1887 = load i8, i8* %CL.i369
  %1888 = zext i8 %1887 to i64
  %1889 = load i64, i64* %PC.i368
  %1890 = add i64 %1889, 3
  store i64 %1890, i64* %PC.i368
  %1891 = inttoptr i64 %1886 to i8*
  store i8 %1887, i8* %1891
  store %struct.Memory* %loadMem_4008d6, %struct.Memory** %MEMORY
  %loadMem_4008d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1893 = getelementptr inbounds %struct.GPR, %struct.GPR* %1892, i32 0, i32 33
  %1894 = getelementptr inbounds %struct.Reg, %struct.Reg* %1893, i32 0, i32 0
  %PC.i365 = bitcast %union.anon* %1894 to i64*
  %1895 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1896 = getelementptr inbounds %struct.GPR, %struct.GPR* %1895, i32 0, i32 1
  %1897 = getelementptr inbounds %struct.Reg, %struct.Reg* %1896, i32 0, i32 0
  %RAX.i366 = bitcast %union.anon* %1897 to i64*
  %1898 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1899 = getelementptr inbounds %struct.GPR, %struct.GPR* %1898, i32 0, i32 15
  %1900 = getelementptr inbounds %struct.Reg, %struct.Reg* %1899, i32 0, i32 0
  %RBP.i367 = bitcast %union.anon* %1900 to i64*
  %1901 = load i64, i64* %RBP.i367
  %1902 = sub i64 %1901, 35
  %1903 = load i64, i64* %PC.i365
  %1904 = add i64 %1903, 4
  store i64 %1904, i64* %PC.i365
  %1905 = inttoptr i64 %1902 to i8*
  %1906 = load i8, i8* %1905
  %1907 = zext i8 %1906 to i64
  store i64 %1907, i64* %RAX.i366, align 8
  store %struct.Memory* %loadMem_4008d9, %struct.Memory** %MEMORY
  %loadMem_4008dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1909 = getelementptr inbounds %struct.GPR, %struct.GPR* %1908, i32 0, i32 33
  %1910 = getelementptr inbounds %struct.Reg, %struct.Reg* %1909, i32 0, i32 0
  %PC.i363 = bitcast %union.anon* %1910 to i64*
  %1911 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1912 = getelementptr inbounds %struct.GPR, %struct.GPR* %1911, i32 0, i32 1
  %1913 = getelementptr inbounds %struct.Reg, %struct.Reg* %1912, i32 0, i32 0
  %RAX.i364 = bitcast %union.anon* %1913 to i64*
  %1914 = load i64, i64* %RAX.i364
  %1915 = load i64, i64* %PC.i363
  %1916 = add i64 %1915, 3
  store i64 %1916, i64* %PC.i363
  %1917 = xor i64 -1, %1914
  %1918 = trunc i64 %1917 to i32
  %1919 = and i64 %1917, 4294967295
  store i64 %1919, i64* %RAX.i364, align 8
  %1920 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1920, align 1
  %1921 = and i32 %1918, 255
  %1922 = call i32 @llvm.ctpop.i32(i32 %1921)
  %1923 = trunc i32 %1922 to i8
  %1924 = and i8 %1923, 1
  %1925 = xor i8 %1924, 1
  %1926 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1925, i8* %1926, align 1
  %1927 = icmp eq i32 %1918, 0
  %1928 = zext i1 %1927 to i8
  %1929 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1928, i8* %1929, align 1
  %1930 = lshr i32 %1918, 31
  %1931 = trunc i32 %1930 to i8
  %1932 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1931, i8* %1932, align 1
  %1933 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1933, align 1
  %1934 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1934, align 1
  store %struct.Memory* %loadMem_4008dd, %struct.Memory** %MEMORY
  %loadMem_4008e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1936 = getelementptr inbounds %struct.GPR, %struct.GPR* %1935, i32 0, i32 33
  %1937 = getelementptr inbounds %struct.Reg, %struct.Reg* %1936, i32 0, i32 0
  %PC.i361 = bitcast %union.anon* %1937 to i64*
  %1938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1939 = getelementptr inbounds %struct.GPR, %struct.GPR* %1938, i32 0, i32 1
  %1940 = getelementptr inbounds %struct.Reg, %struct.Reg* %1939, i32 0, i32 0
  %EAX.i362 = bitcast %union.anon* %1940 to i32*
  %1941 = load i32, i32* %EAX.i362
  %1942 = zext i32 %1941 to i64
  %1943 = load i64, i64* %PC.i361
  %1944 = add i64 %1943, 3
  store i64 %1944, i64* %PC.i361
  %1945 = sub i32 %1941, 70
  %1946 = icmp ult i32 %1941, 70
  %1947 = zext i1 %1946 to i8
  %1948 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1947, i8* %1948, align 1
  %1949 = and i32 %1945, 255
  %1950 = call i32 @llvm.ctpop.i32(i32 %1949)
  %1951 = trunc i32 %1950 to i8
  %1952 = and i8 %1951, 1
  %1953 = xor i8 %1952, 1
  %1954 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1953, i8* %1954, align 1
  %1955 = xor i64 70, %1942
  %1956 = trunc i64 %1955 to i32
  %1957 = xor i32 %1956, %1945
  %1958 = lshr i32 %1957, 4
  %1959 = trunc i32 %1958 to i8
  %1960 = and i8 %1959, 1
  %1961 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1960, i8* %1961, align 1
  %1962 = icmp eq i32 %1945, 0
  %1963 = zext i1 %1962 to i8
  %1964 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1963, i8* %1964, align 1
  %1965 = lshr i32 %1945, 31
  %1966 = trunc i32 %1965 to i8
  %1967 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1966, i8* %1967, align 1
  %1968 = lshr i32 %1941, 31
  %1969 = xor i32 %1965, %1968
  %1970 = add i32 %1969, %1968
  %1971 = icmp eq i32 %1970, 2
  %1972 = zext i1 %1971 to i8
  %1973 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1972, i8* %1973, align 1
  store %struct.Memory* %loadMem_4008e0, %struct.Memory** %MEMORY
  %loadMem_4008e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1975 = getelementptr inbounds %struct.GPR, %struct.GPR* %1974, i32 0, i32 33
  %1976 = getelementptr inbounds %struct.Reg, %struct.Reg* %1975, i32 0, i32 0
  %PC.i360 = bitcast %union.anon* %1976 to i64*
  %1977 = load i64, i64* %PC.i360
  %1978 = add i64 %1977, 20
  %1979 = load i64, i64* %PC.i360
  %1980 = add i64 %1979, 6
  %1981 = load i64, i64* %PC.i360
  %1982 = add i64 %1981, 6
  store i64 %1982, i64* %PC.i360
  %1983 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1984 = load i8, i8* %1983, align 1
  %1985 = icmp eq i8 %1984, 0
  %1986 = zext i1 %1985 to i8
  store i8 %1986, i8* %BRANCH_TAKEN, align 1
  %1987 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1988 = select i1 %1985, i64 %1978, i64 %1980
  store i64 %1988, i64* %1987, align 8
  store %struct.Memory* %loadMem_4008e3, %struct.Memory** %MEMORY
  %loadBr_4008e3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4008e3 = icmp eq i8 %loadBr_4008e3, 1
  br i1 %cmpBr_4008e3, label %block_.L_4008f7, label %block_4008e9

block_4008e9:                                     ; preds = %block_.L_4008ae
  %loadMem_4008e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1990 = getelementptr inbounds %struct.GPR, %struct.GPR* %1989, i32 0, i32 33
  %1991 = getelementptr inbounds %struct.Reg, %struct.Reg* %1990, i32 0, i32 0
  %PC.i357 = bitcast %union.anon* %1991 to i64*
  %1992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1993 = getelementptr inbounds %struct.GPR, %struct.GPR* %1992, i32 0, i32 1
  %1994 = getelementptr inbounds %struct.Reg, %struct.Reg* %1993, i32 0, i32 0
  %RAX.i358 = bitcast %union.anon* %1994 to i64*
  %1995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1996 = getelementptr inbounds %struct.GPR, %struct.GPR* %1995, i32 0, i32 15
  %1997 = getelementptr inbounds %struct.Reg, %struct.Reg* %1996, i32 0, i32 0
  %RBP.i359 = bitcast %union.anon* %1997 to i64*
  %1998 = load i64, i64* %RBP.i359
  %1999 = sub i64 %1998, 20
  %2000 = load i64, i64* %PC.i357
  %2001 = add i64 %2000, 3
  store i64 %2001, i64* %PC.i357
  %2002 = inttoptr i64 %1999 to i32*
  %2003 = load i32, i32* %2002
  %2004 = zext i32 %2003 to i64
  store i64 %2004, i64* %RAX.i358, align 8
  store %struct.Memory* %loadMem_4008e9, %struct.Memory** %MEMORY
  %loadMem_4008ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %2005 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2006 = getelementptr inbounds %struct.GPR, %struct.GPR* %2005, i32 0, i32 33
  %2007 = getelementptr inbounds %struct.Reg, %struct.Reg* %2006, i32 0, i32 0
  %PC.i355 = bitcast %union.anon* %2007 to i64*
  %2008 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2009 = getelementptr inbounds %struct.GPR, %struct.GPR* %2008, i32 0, i32 1
  %2010 = getelementptr inbounds %struct.Reg, %struct.Reg* %2009, i32 0, i32 0
  %RAX.i356 = bitcast %union.anon* %2010 to i64*
  %2011 = load i64, i64* %RAX.i356
  %2012 = load i64, i64* %PC.i355
  %2013 = add i64 %2012, 3
  store i64 %2013, i64* %PC.i355
  %2014 = trunc i64 %2011 to i32
  %2015 = sub i32 %2014, 1
  %2016 = zext i32 %2015 to i64
  store i64 %2016, i64* %RAX.i356, align 8
  %2017 = icmp ult i32 %2014, 1
  %2018 = zext i1 %2017 to i8
  %2019 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2018, i8* %2019, align 1
  %2020 = and i32 %2015, 255
  %2021 = call i32 @llvm.ctpop.i32(i32 %2020)
  %2022 = trunc i32 %2021 to i8
  %2023 = and i8 %2022, 1
  %2024 = xor i8 %2023, 1
  %2025 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2024, i8* %2025, align 1
  %2026 = xor i64 1, %2011
  %2027 = trunc i64 %2026 to i32
  %2028 = xor i32 %2027, %2015
  %2029 = lshr i32 %2028, 4
  %2030 = trunc i32 %2029 to i8
  %2031 = and i8 %2030, 1
  %2032 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2031, i8* %2032, align 1
  %2033 = icmp eq i32 %2015, 0
  %2034 = zext i1 %2033 to i8
  %2035 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2034, i8* %2035, align 1
  %2036 = lshr i32 %2015, 31
  %2037 = trunc i32 %2036 to i8
  %2038 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2037, i8* %2038, align 1
  %2039 = lshr i32 %2014, 31
  %2040 = xor i32 %2036, %2039
  %2041 = add i32 %2040, %2039
  %2042 = icmp eq i32 %2041, 2
  %2043 = zext i1 %2042 to i8
  %2044 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2043, i8* %2044, align 1
  store %struct.Memory* %loadMem_4008ec, %struct.Memory** %MEMORY
  %loadMem_4008ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %2045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2046 = getelementptr inbounds %struct.GPR, %struct.GPR* %2045, i32 0, i32 33
  %2047 = getelementptr inbounds %struct.Reg, %struct.Reg* %2046, i32 0, i32 0
  %PC.i352 = bitcast %union.anon* %2047 to i64*
  %2048 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2049 = getelementptr inbounds %struct.GPR, %struct.GPR* %2048, i32 0, i32 1
  %2050 = getelementptr inbounds %struct.Reg, %struct.Reg* %2049, i32 0, i32 0
  %EAX.i353 = bitcast %union.anon* %2050 to i32*
  %2051 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2052 = getelementptr inbounds %struct.GPR, %struct.GPR* %2051, i32 0, i32 15
  %2053 = getelementptr inbounds %struct.Reg, %struct.Reg* %2052, i32 0, i32 0
  %RBP.i354 = bitcast %union.anon* %2053 to i64*
  %2054 = load i64, i64* %RBP.i354
  %2055 = sub i64 %2054, 20
  %2056 = load i32, i32* %EAX.i353
  %2057 = zext i32 %2056 to i64
  %2058 = load i64, i64* %PC.i352
  %2059 = add i64 %2058, 3
  store i64 %2059, i64* %PC.i352
  %2060 = inttoptr i64 %2055 to i32*
  store i32 %2056, i32* %2060
  store %struct.Memory* %loadMem_4008ef, %struct.Memory** %MEMORY
  %loadMem_4008f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2062 = getelementptr inbounds %struct.GPR, %struct.GPR* %2061, i32 0, i32 33
  %2063 = getelementptr inbounds %struct.Reg, %struct.Reg* %2062, i32 0, i32 0
  %PC.i351 = bitcast %union.anon* %2063 to i64*
  %2064 = load i64, i64* %PC.i351
  %2065 = add i64 %2064, 16
  %2066 = load i64, i64* %PC.i351
  %2067 = add i64 %2066, 5
  store i64 %2067, i64* %PC.i351
  %2068 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2065, i64* %2068, align 8
  store %struct.Memory* %loadMem_4008f2, %struct.Memory** %MEMORY
  br label %block_.L_400902

block_.L_4008f7:                                  ; preds = %block_.L_4008ae
  %loadMem_4008f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2069 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2070 = getelementptr inbounds %struct.GPR, %struct.GPR* %2069, i32 0, i32 33
  %2071 = getelementptr inbounds %struct.Reg, %struct.Reg* %2070, i32 0, i32 0
  %PC.i348 = bitcast %union.anon* %2071 to i64*
  %2072 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2073 = getelementptr inbounds %struct.GPR, %struct.GPR* %2072, i32 0, i32 5
  %2074 = getelementptr inbounds %struct.Reg, %struct.Reg* %2073, i32 0, i32 0
  %RCX.i349 = bitcast %union.anon* %2074 to i64*
  %2075 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2076 = getelementptr inbounds %struct.GPR, %struct.GPR* %2075, i32 0, i32 15
  %2077 = getelementptr inbounds %struct.Reg, %struct.Reg* %2076, i32 0, i32 0
  %RBP.i350 = bitcast %union.anon* %2077 to i64*
  %2078 = load i64, i64* %RBP.i350
  %2079 = sub i64 %2078, 20
  %2080 = load i64, i64* %PC.i348
  %2081 = add i64 %2080, 3
  store i64 %2081, i64* %PC.i348
  %2082 = inttoptr i64 %2079 to i32*
  %2083 = load i32, i32* %2082
  %2084 = zext i32 %2083 to i64
  store i64 %2084, i64* %RCX.i349, align 8
  store %struct.Memory* %loadMem_4008f7, %struct.Memory** %MEMORY
  %loadMem_4008fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %2085 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2086 = getelementptr inbounds %struct.GPR, %struct.GPR* %2085, i32 0, i32 33
  %2087 = getelementptr inbounds %struct.Reg, %struct.Reg* %2086, i32 0, i32 0
  %PC.i345 = bitcast %union.anon* %2087 to i64*
  %2088 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2089 = getelementptr inbounds %struct.GPR, %struct.GPR* %2088, i32 0, i32 1
  %2090 = getelementptr inbounds %struct.Reg, %struct.Reg* %2089, i32 0, i32 0
  %RAX.i346 = bitcast %union.anon* %2090 to i64*
  %2091 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2092 = getelementptr inbounds %struct.GPR, %struct.GPR* %2091, i32 0, i32 15
  %2093 = getelementptr inbounds %struct.Reg, %struct.Reg* %2092, i32 0, i32 0
  %RBP.i347 = bitcast %union.anon* %2093 to i64*
  %2094 = load i64, i64* %RBP.i347
  %2095 = sub i64 %2094, 20
  %2096 = load i64, i64* %PC.i345
  %2097 = add i64 %2096, 3
  store i64 %2097, i64* %PC.i345
  %2098 = inttoptr i64 %2095 to i32*
  %2099 = load i32, i32* %2098
  %2100 = zext i32 %2099 to i64
  store i64 %2100, i64* %RAX.i346, align 8
  store %struct.Memory* %loadMem_4008fa, %struct.Memory** %MEMORY
  %loadMem_4008fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2102 = getelementptr inbounds %struct.GPR, %struct.GPR* %2101, i32 0, i32 33
  %2103 = getelementptr inbounds %struct.Reg, %struct.Reg* %2102, i32 0, i32 0
  %PC.i343 = bitcast %union.anon* %2103 to i64*
  %2104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2105 = getelementptr inbounds %struct.GPR, %struct.GPR* %2104, i32 0, i32 5
  %2106 = getelementptr inbounds %struct.Reg, %struct.Reg* %2105, i32 0, i32 0
  %2107 = bitcast %union.anon* %2106 to %struct.anon.2*
  %CL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2107, i32 0, i32 0
  %2108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2109 = getelementptr inbounds %struct.GPR, %struct.GPR* %2108, i32 0, i32 1
  %2110 = getelementptr inbounds %struct.Reg, %struct.Reg* %2109, i32 0, i32 0
  %RAX.i344 = bitcast %union.anon* %2110 to i64*
  %2111 = load i64, i64* %RAX.i344
  %2112 = load i8, i8* %CL.i
  %2113 = zext i8 %2112 to i64
  %2114 = load i64, i64* %PC.i343
  %2115 = add i64 %2114, 2
  store i64 %2115, i64* %PC.i343
  %2116 = trunc i64 %2113 to i5
  switch i5 %2116, label %2123 [
    i5 0, label %routine_shll__cl___eax.exit
    i5 1, label %2117
  ]

; <label>:2117:                                   ; preds = %block_.L_4008f7
  %2118 = trunc i64 %2111 to i32
  %2119 = shl i32 %2118, 1
  %2120 = icmp slt i32 %2118, 0
  %2121 = icmp slt i32 %2119, 0
  %2122 = xor i1 %2120, %2121
  br label %2132

; <label>:2123:                                   ; preds = %block_.L_4008f7
  %2124 = and i64 %2113, 31
  %2125 = add i64 %2124, 4294967295
  %2126 = and i64 %2111, 4294967295
  %2127 = and i64 %2125, 4294967295
  %2128 = shl i64 %2126, %2127
  %2129 = trunc i64 %2128 to i32
  %2130 = icmp slt i32 %2129, 0
  %2131 = shl i32 %2129, 1
  br label %2132

; <label>:2132:                                   ; preds = %2123, %2117
  %2133 = phi i1 [ %2120, %2117 ], [ %2130, %2123 ]
  %2134 = phi i1 [ %2122, %2117 ], [ false, %2123 ]
  %2135 = phi i32 [ %2119, %2117 ], [ %2131, %2123 ]
  %2136 = zext i32 %2135 to i64
  store i64 %2136, i64* %RAX.i344, align 8
  %2137 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2138 = zext i1 %2133 to i8
  store i8 %2138, i8* %2137, align 1
  %2139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2140 = and i32 %2135, 254
  %2141 = call i32 @llvm.ctpop.i32(i32 %2140)
  %2142 = trunc i32 %2141 to i8
  %2143 = and i8 %2142, 1
  %2144 = xor i8 %2143, 1
  store i8 %2144, i8* %2139, align 1
  %2145 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2145, align 1
  %2146 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2147 = icmp eq i32 %2135, 0
  %2148 = zext i1 %2147 to i8
  store i8 %2148, i8* %2146, align 1
  %2149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2150 = lshr i32 %2135, 31
  %2151 = trunc i32 %2150 to i8
  store i8 %2151, i8* %2149, align 1
  %2152 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2153 = zext i1 %2134 to i8
  store i8 %2153, i8* %2152, align 1
  br label %routine_shll__cl___eax.exit

routine_shll__cl___eax.exit:                      ; preds = %block_.L_4008f7, %2132
  store %struct.Memory* %loadMem_4008fd, %struct.Memory** %MEMORY
  %loadMem_4008ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %2154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2155 = getelementptr inbounds %struct.GPR, %struct.GPR* %2154, i32 0, i32 33
  %2156 = getelementptr inbounds %struct.Reg, %struct.Reg* %2155, i32 0, i32 0
  %PC.i340 = bitcast %union.anon* %2156 to i64*
  %2157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2158 = getelementptr inbounds %struct.GPR, %struct.GPR* %2157, i32 0, i32 1
  %2159 = getelementptr inbounds %struct.Reg, %struct.Reg* %2158, i32 0, i32 0
  %EAX.i341 = bitcast %union.anon* %2159 to i32*
  %2160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2161 = getelementptr inbounds %struct.GPR, %struct.GPR* %2160, i32 0, i32 15
  %2162 = getelementptr inbounds %struct.Reg, %struct.Reg* %2161, i32 0, i32 0
  %RBP.i342 = bitcast %union.anon* %2162 to i64*
  %2163 = load i64, i64* %RBP.i342
  %2164 = sub i64 %2163, 20
  %2165 = load i32, i32* %EAX.i341
  %2166 = zext i32 %2165 to i64
  %2167 = load i64, i64* %PC.i340
  %2168 = add i64 %2167, 3
  store i64 %2168, i64* %PC.i340
  %2169 = inttoptr i64 %2164 to i32*
  store i32 %2165, i32* %2169
  store %struct.Memory* %loadMem_4008ff, %struct.Memory** %MEMORY
  br label %block_.L_400902

block_.L_400902:                                  ; preds = %routine_shll__cl___eax.exit, %block_4008e9
  %loadMem_400902 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2171 = getelementptr inbounds %struct.GPR, %struct.GPR* %2170, i32 0, i32 33
  %2172 = getelementptr inbounds %struct.Reg, %struct.Reg* %2171, i32 0, i32 0
  %PC.i338 = bitcast %union.anon* %2172 to i64*
  %2173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2174 = getelementptr inbounds %struct.GPR, %struct.GPR* %2173, i32 0, i32 15
  %2175 = getelementptr inbounds %struct.Reg, %struct.Reg* %2174, i32 0, i32 0
  %RBP.i339 = bitcast %union.anon* %2175 to i64*
  %2176 = load i64, i64* %RBP.i339
  %2177 = sub i64 %2176, 20
  %2178 = load i64, i64* %PC.i338
  %2179 = add i64 %2178, 4
  store i64 %2179, i64* %PC.i338
  %2180 = inttoptr i64 %2177 to i32*
  %2181 = load i32, i32* %2180
  %2182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2182, align 1
  %2183 = and i32 %2181, 255
  %2184 = call i32 @llvm.ctpop.i32(i32 %2183)
  %2185 = trunc i32 %2184 to i8
  %2186 = and i8 %2185, 1
  %2187 = xor i8 %2186, 1
  %2188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2187, i8* %2188, align 1
  %2189 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2189, align 1
  %2190 = icmp eq i32 %2181, 0
  %2191 = zext i1 %2190 to i8
  %2192 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2191, i8* %2192, align 1
  %2193 = lshr i32 %2181, 31
  %2194 = trunc i32 %2193 to i8
  %2195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2194, i8* %2195, align 1
  %2196 = lshr i32 %2181, 31
  %2197 = xor i32 %2193, %2196
  %2198 = add i32 %2197, %2196
  %2199 = icmp eq i32 %2198, 2
  %2200 = zext i1 %2199 to i8
  %2201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2200, i8* %2201, align 1
  store %struct.Memory* %loadMem_400902, %struct.Memory** %MEMORY
  %loadMem_400906 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2203 = getelementptr inbounds %struct.GPR, %struct.GPR* %2202, i32 0, i32 33
  %2204 = getelementptr inbounds %struct.Reg, %struct.Reg* %2203, i32 0, i32 0
  %PC.i337 = bitcast %union.anon* %2204 to i64*
  %2205 = load i64, i64* %PC.i337
  %2206 = add i64 %2205, 18
  %2207 = load i64, i64* %PC.i337
  %2208 = add i64 %2207, 6
  %2209 = load i64, i64* %PC.i337
  %2210 = add i64 %2209, 6
  store i64 %2210, i64* %PC.i337
  %2211 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2212 = load i8, i8* %2211, align 1
  store i8 %2212, i8* %BRANCH_TAKEN, align 1
  %2213 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2214 = icmp ne i8 %2212, 0
  %2215 = select i1 %2214, i64 %2206, i64 %2208
  store i64 %2215, i64* %2213, align 8
  store %struct.Memory* %loadMem_400906, %struct.Memory** %MEMORY
  %loadBr_400906 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400906 = icmp eq i8 %loadBr_400906, 1
  br i1 %cmpBr_400906, label %block_.L_400918, label %block_40090c

block_40090c:                                     ; preds = %block_.L_400902
  %loadMem_40090c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2217 = getelementptr inbounds %struct.GPR, %struct.GPR* %2216, i32 0, i32 33
  %2218 = getelementptr inbounds %struct.Reg, %struct.Reg* %2217, i32 0, i32 0
  %PC.i335 = bitcast %union.anon* %2218 to i64*
  %2219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2220 = getelementptr inbounds %struct.GPR, %struct.GPR* %2219, i32 0, i32 15
  %2221 = getelementptr inbounds %struct.Reg, %struct.Reg* %2220, i32 0, i32 0
  %RBP.i336 = bitcast %union.anon* %2221 to i64*
  %2222 = load i64, i64* %RBP.i336
  %2223 = sub i64 %2222, 4
  %2224 = load i64, i64* %PC.i335
  %2225 = add i64 %2224, 7
  store i64 %2225, i64* %PC.i335
  %2226 = inttoptr i64 %2223 to i32*
  store i32 -7, i32* %2226
  store %struct.Memory* %loadMem_40090c, %struct.Memory** %MEMORY
  %loadMem_400913 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2228 = getelementptr inbounds %struct.GPR, %struct.GPR* %2227, i32 0, i32 33
  %2229 = getelementptr inbounds %struct.Reg, %struct.Reg* %2228, i32 0, i32 0
  %PC.i334 = bitcast %union.anon* %2229 to i64*
  %2230 = load i64, i64* %PC.i334
  %2231 = add i64 %2230, 580
  %2232 = load i64, i64* %PC.i334
  %2233 = add i64 %2232, 5
  store i64 %2233, i64* %PC.i334
  %2234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2231, i64* %2234, align 8
  store %struct.Memory* %loadMem_400913, %struct.Memory** %MEMORY
  br label %block_.L_400b57

block_.L_400918:                                  ; preds = %block_.L_400902
  %loadMem_400918 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2236 = getelementptr inbounds %struct.GPR, %struct.GPR* %2235, i32 0, i32 33
  %2237 = getelementptr inbounds %struct.Reg, %struct.Reg* %2236, i32 0, i32 0
  %PC.i331 = bitcast %union.anon* %2237 to i64*
  %2238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2239 = getelementptr inbounds %struct.GPR, %struct.GPR* %2238, i32 0, i32 11
  %2240 = getelementptr inbounds %struct.Reg, %struct.Reg* %2239, i32 0, i32 0
  %EDI.i332 = bitcast %union.anon* %2240 to i32*
  %2241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2242 = getelementptr inbounds %struct.GPR, %struct.GPR* %2241, i32 0, i32 11
  %2243 = getelementptr inbounds %struct.Reg, %struct.Reg* %2242, i32 0, i32 0
  %RDI.i333 = bitcast %union.anon* %2243 to i64*
  %2244 = load i64, i64* %RDI.i333
  %2245 = load i32, i32* %EDI.i332
  %2246 = zext i32 %2245 to i64
  %2247 = load i64, i64* %PC.i331
  %2248 = add i64 %2247, 2
  store i64 %2248, i64* %PC.i331
  %2249 = xor i64 %2246, %2244
  %2250 = trunc i64 %2249 to i32
  %2251 = and i64 %2249, 4294967295
  store i64 %2251, i64* %RDI.i333, align 8
  %2252 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2252, align 1
  %2253 = and i32 %2250, 255
  %2254 = call i32 @llvm.ctpop.i32(i32 %2253)
  %2255 = trunc i32 %2254 to i8
  %2256 = and i8 %2255, 1
  %2257 = xor i8 %2256, 1
  %2258 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2257, i8* %2258, align 1
  %2259 = icmp eq i32 %2250, 0
  %2260 = zext i1 %2259 to i8
  %2261 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2260, i8* %2261, align 1
  %2262 = lshr i32 %2250, 31
  %2263 = trunc i32 %2262 to i8
  %2264 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2263, i8* %2264, align 1
  %2265 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2265, align 1
  %2266 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2266, align 1
  store %struct.Memory* %loadMem_400918, %struct.Memory** %MEMORY
  %loadMem_40091a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2268 = getelementptr inbounds %struct.GPR, %struct.GPR* %2267, i32 0, i32 33
  %2269 = getelementptr inbounds %struct.Reg, %struct.Reg* %2268, i32 0, i32 0
  %PC.i329 = bitcast %union.anon* %2269 to i64*
  %2270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2271 = getelementptr inbounds %struct.GPR, %struct.GPR* %2270, i32 0, i32 7
  %2272 = getelementptr inbounds %struct.Reg, %struct.Reg* %2271, i32 0, i32 0
  %RDX.i330 = bitcast %union.anon* %2272 to i64*
  %2273 = load i64, i64* %PC.i329
  %2274 = add i64 %2273, 5
  store i64 %2274, i64* %PC.i329
  store i64 4, i64* %RDX.i330, align 8
  store %struct.Memory* %loadMem_40091a, %struct.Memory** %MEMORY
  %loadMem_40091f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2276 = getelementptr inbounds %struct.GPR, %struct.GPR* %2275, i32 0, i32 33
  %2277 = getelementptr inbounds %struct.Reg, %struct.Reg* %2276, i32 0, i32 0
  %PC.i326 = bitcast %union.anon* %2277 to i64*
  %2278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2279 = getelementptr inbounds %struct.GPR, %struct.GPR* %2278, i32 0, i32 1
  %2280 = getelementptr inbounds %struct.Reg, %struct.Reg* %2279, i32 0, i32 0
  %RAX.i327 = bitcast %union.anon* %2280 to i64*
  %2281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2282 = getelementptr inbounds %struct.GPR, %struct.GPR* %2281, i32 0, i32 15
  %2283 = getelementptr inbounds %struct.Reg, %struct.Reg* %2282, i32 0, i32 0
  %RBP.i328 = bitcast %union.anon* %2283 to i64*
  %2284 = load i64, i64* %RBP.i328
  %2285 = sub i64 %2284, 16
  %2286 = load i64, i64* %PC.i326
  %2287 = add i64 %2286, 4
  store i64 %2287, i64* %PC.i326
  %2288 = inttoptr i64 %2285 to i64*
  %2289 = load i64, i64* %2288
  store i64 %2289, i64* %RAX.i327, align 8
  store %struct.Memory* %loadMem_40091f, %struct.Memory** %MEMORY
  %loadMem_400923 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2291 = getelementptr inbounds %struct.GPR, %struct.GPR* %2290, i32 0, i32 33
  %2292 = getelementptr inbounds %struct.Reg, %struct.Reg* %2291, i32 0, i32 0
  %PC.i324 = bitcast %union.anon* %2292 to i64*
  %2293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2294 = getelementptr inbounds %struct.GPR, %struct.GPR* %2293, i32 0, i32 1
  %2295 = getelementptr inbounds %struct.Reg, %struct.Reg* %2294, i32 0, i32 0
  %RAX.i325 = bitcast %union.anon* %2295 to i64*
  %2296 = load i64, i64* %RAX.i325
  %2297 = load i64, i64* %PC.i324
  %2298 = add i64 %2297, 4
  store i64 %2298, i64* %PC.i324
  %2299 = add i64 8, %2296
  store i64 %2299, i64* %RAX.i325, align 8
  %2300 = icmp ult i64 %2299, %2296
  %2301 = icmp ult i64 %2299, 8
  %2302 = or i1 %2300, %2301
  %2303 = zext i1 %2302 to i8
  %2304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2303, i8* %2304, align 1
  %2305 = trunc i64 %2299 to i32
  %2306 = and i32 %2305, 255
  %2307 = call i32 @llvm.ctpop.i32(i32 %2306)
  %2308 = trunc i32 %2307 to i8
  %2309 = and i8 %2308, 1
  %2310 = xor i8 %2309, 1
  %2311 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2310, i8* %2311, align 1
  %2312 = xor i64 8, %2296
  %2313 = xor i64 %2312, %2299
  %2314 = lshr i64 %2313, 4
  %2315 = trunc i64 %2314 to i8
  %2316 = and i8 %2315, 1
  %2317 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2316, i8* %2317, align 1
  %2318 = icmp eq i64 %2299, 0
  %2319 = zext i1 %2318 to i8
  %2320 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2319, i8* %2320, align 1
  %2321 = lshr i64 %2299, 63
  %2322 = trunc i64 %2321 to i8
  %2323 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2322, i8* %2323, align 1
  %2324 = lshr i64 %2296, 63
  %2325 = xor i64 %2321, %2324
  %2326 = add i64 %2325, %2321
  %2327 = icmp eq i64 %2326, 2
  %2328 = zext i1 %2327 to i8
  %2329 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2328, i8* %2329, align 1
  store %struct.Memory* %loadMem_400923, %struct.Memory** %MEMORY
  %loadMem_400927 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2331 = getelementptr inbounds %struct.GPR, %struct.GPR* %2330, i32 0, i32 33
  %2332 = getelementptr inbounds %struct.Reg, %struct.Reg* %2331, i32 0, i32 0
  %PC.i321 = bitcast %union.anon* %2332 to i64*
  %2333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2334 = getelementptr inbounds %struct.GPR, %struct.GPR* %2333, i32 0, i32 1
  %2335 = getelementptr inbounds %struct.Reg, %struct.Reg* %2334, i32 0, i32 0
  %RAX.i322 = bitcast %union.anon* %2335 to i64*
  %2336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2337 = getelementptr inbounds %struct.GPR, %struct.GPR* %2336, i32 0, i32 9
  %2338 = getelementptr inbounds %struct.Reg, %struct.Reg* %2337, i32 0, i32 0
  %RSI.i323 = bitcast %union.anon* %2338 to i64*
  %2339 = load i64, i64* %RAX.i322
  %2340 = load i64, i64* %PC.i321
  %2341 = add i64 %2340, 3
  store i64 %2341, i64* %PC.i321
  store i64 %2339, i64* %RSI.i323, align 8
  store %struct.Memory* %loadMem_400927, %struct.Memory** %MEMORY
  %loadMem1_40092a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2342 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2343 = getelementptr inbounds %struct.GPR, %struct.GPR* %2342, i32 0, i32 33
  %2344 = getelementptr inbounds %struct.Reg, %struct.Reg* %2343, i32 0, i32 0
  %PC.i320 = bitcast %union.anon* %2344 to i64*
  %2345 = load i64, i64* %PC.i320
  %2346 = add i64 %2345, -762
  %2347 = load i64, i64* %PC.i320
  %2348 = add i64 %2347, 5
  %2349 = load i64, i64* %PC.i320
  %2350 = add i64 %2349, 5
  store i64 %2350, i64* %PC.i320
  %2351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2352 = load i64, i64* %2351, align 8
  %2353 = add i64 %2352, -8
  %2354 = inttoptr i64 %2353 to i64*
  store i64 %2348, i64* %2354
  store i64 %2353, i64* %2351, align 8
  %2355 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2346, i64* %2355, align 8
  store %struct.Memory* %loadMem1_40092a, %struct.Memory** %MEMORY
  %loadMem2_40092a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40092a = load i64, i64* %3
  %call2_40092a = call %struct.Memory* @sub_400630.read_bytes(%struct.State* %0, i64 %loadPC_40092a, %struct.Memory* %loadMem2_40092a)
  store %struct.Memory* %call2_40092a, %struct.Memory** %MEMORY
  %loadMem_40092f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2357 = getelementptr inbounds %struct.GPR, %struct.GPR* %2356, i32 0, i32 33
  %2358 = getelementptr inbounds %struct.Reg, %struct.Reg* %2357, i32 0, i32 0
  %PC.i318 = bitcast %union.anon* %2358 to i64*
  %2359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2360 = getelementptr inbounds %struct.GPR, %struct.GPR* %2359, i32 0, i32 1
  %2361 = getelementptr inbounds %struct.Reg, %struct.Reg* %2360, i32 0, i32 0
  %AX.i = bitcast %union.anon* %2361 to i16*
  %2362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2363 = getelementptr inbounds %struct.GPR, %struct.GPR* %2362, i32 0, i32 5
  %2364 = getelementptr inbounds %struct.Reg, %struct.Reg* %2363, i32 0, i32 0
  %CX.i319 = bitcast %union.anon* %2364 to i16*
  %2365 = load i16, i16* %AX.i
  %2366 = zext i16 %2365 to i64
  %2367 = load i64, i64* %PC.i318
  %2368 = add i64 %2367, 3
  store i64 %2368, i64* %PC.i318
  store i16 %2365, i16* %CX.i319, align 2
  store %struct.Memory* %loadMem_40092f, %struct.Memory** %MEMORY
  %loadMem_400932 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2370 = getelementptr inbounds %struct.GPR, %struct.GPR* %2369, i32 0, i32 33
  %2371 = getelementptr inbounds %struct.Reg, %struct.Reg* %2370, i32 0, i32 0
  %PC.i316 = bitcast %union.anon* %2371 to i64*
  %2372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2373 = getelementptr inbounds %struct.GPR, %struct.GPR* %2372, i32 0, i32 5
  %2374 = getelementptr inbounds %struct.Reg, %struct.Reg* %2373, i32 0, i32 0
  %CX.i = bitcast %union.anon* %2374 to i16*
  %2375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2376 = getelementptr inbounds %struct.GPR, %struct.GPR* %2375, i32 0, i32 15
  %2377 = getelementptr inbounds %struct.Reg, %struct.Reg* %2376, i32 0, i32 0
  %RBP.i317 = bitcast %union.anon* %2377 to i64*
  %2378 = load i64, i64* %RBP.i317
  %2379 = sub i64 %2378, 38
  %2380 = load i16, i16* %CX.i
  %2381 = zext i16 %2380 to i64
  %2382 = load i64, i64* %PC.i316
  %2383 = add i64 %2382, 4
  store i64 %2383, i64* %PC.i316
  %2384 = inttoptr i64 %2379 to i16*
  store i16 %2380, i16* %2384
  store %struct.Memory* %loadMem_400932, %struct.Memory** %MEMORY
  %loadMem_400936 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2386 = getelementptr inbounds %struct.GPR, %struct.GPR* %2385, i32 0, i32 33
  %2387 = getelementptr inbounds %struct.Reg, %struct.Reg* %2386, i32 0, i32 0
  %PC.i313 = bitcast %union.anon* %2387 to i64*
  %2388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2389 = getelementptr inbounds %struct.GPR, %struct.GPR* %2388, i32 0, i32 1
  %2390 = getelementptr inbounds %struct.Reg, %struct.Reg* %2389, i32 0, i32 0
  %RAX.i314 = bitcast %union.anon* %2390 to i64*
  %2391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2392 = getelementptr inbounds %struct.GPR, %struct.GPR* %2391, i32 0, i32 15
  %2393 = getelementptr inbounds %struct.Reg, %struct.Reg* %2392, i32 0, i32 0
  %RBP.i315 = bitcast %union.anon* %2393 to i64*
  %2394 = load i64, i64* %RBP.i315
  %2395 = sub i64 %2394, 38
  %2396 = load i64, i64* %PC.i313
  %2397 = add i64 %2396, 4
  store i64 %2397, i64* %PC.i313
  %2398 = inttoptr i64 %2395 to i16*
  %2399 = load i16, i16* %2398
  %2400 = zext i16 %2399 to i64
  store i64 %2400, i64* %RAX.i314, align 8
  store %struct.Memory* %loadMem_400936, %struct.Memory** %MEMORY
  %loadMem_40093a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2402 = getelementptr inbounds %struct.GPR, %struct.GPR* %2401, i32 0, i32 33
  %2403 = getelementptr inbounds %struct.Reg, %struct.Reg* %2402, i32 0, i32 0
  %PC.i311 = bitcast %union.anon* %2403 to i64*
  %2404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2405 = getelementptr inbounds %struct.GPR, %struct.GPR* %2404, i32 0, i32 1
  %2406 = getelementptr inbounds %struct.Reg, %struct.Reg* %2405, i32 0, i32 0
  %RAX.i312 = bitcast %union.anon* %2406 to i64*
  %2407 = load i64, i64* %RAX.i312
  %2408 = load i64, i64* %PC.i311
  %2409 = add i64 %2408, 5
  store i64 %2409, i64* %PC.i311
  %2410 = or i64 21845, %2407
  %2411 = trunc i64 %2410 to i32
  %2412 = and i64 %2410, 4294967295
  store i64 %2412, i64* %RAX.i312, align 8
  %2413 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2413, align 1
  %2414 = and i32 %2411, 255
  %2415 = call i32 @llvm.ctpop.i32(i32 %2414)
  %2416 = trunc i32 %2415 to i8
  %2417 = and i8 %2416, 1
  %2418 = xor i8 %2417, 1
  %2419 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2418, i8* %2419, align 1
  %2420 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2420, align 1
  %2421 = lshr i32 %2411, 31
  %2422 = trunc i32 %2421 to i8
  %2423 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2422, i8* %2423, align 1
  %2424 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2424, align 1
  %2425 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2425, align 1
  store %struct.Memory* %loadMem_40093a, %struct.Memory** %MEMORY
  %loadMem_40093f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2427 = getelementptr inbounds %struct.GPR, %struct.GPR* %2426, i32 0, i32 33
  %2428 = getelementptr inbounds %struct.Reg, %struct.Reg* %2427, i32 0, i32 0
  %PC.i309 = bitcast %union.anon* %2428 to i64*
  %2429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2430 = getelementptr inbounds %struct.GPR, %struct.GPR* %2429, i32 0, i32 1
  %2431 = getelementptr inbounds %struct.Reg, %struct.Reg* %2430, i32 0, i32 0
  %EAX.i310 = bitcast %union.anon* %2431 to i32*
  %2432 = load i32, i32* %EAX.i310
  %2433 = zext i32 %2432 to i64
  %2434 = load i64, i64* %PC.i309
  %2435 = add i64 %2434, 5
  store i64 %2435, i64* %PC.i309
  %2436 = sub i32 %2432, 56663
  %2437 = icmp ult i32 %2432, 56663
  %2438 = zext i1 %2437 to i8
  %2439 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2438, i8* %2439, align 1
  %2440 = and i32 %2436, 255
  %2441 = call i32 @llvm.ctpop.i32(i32 %2440)
  %2442 = trunc i32 %2441 to i8
  %2443 = and i8 %2442, 1
  %2444 = xor i8 %2443, 1
  %2445 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2444, i8* %2445, align 1
  %2446 = xor i64 56663, %2433
  %2447 = trunc i64 %2446 to i32
  %2448 = xor i32 %2447, %2436
  %2449 = lshr i32 %2448, 4
  %2450 = trunc i32 %2449 to i8
  %2451 = and i8 %2450, 1
  %2452 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2451, i8* %2452, align 1
  %2453 = icmp eq i32 %2436, 0
  %2454 = zext i1 %2453 to i8
  %2455 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2454, i8* %2455, align 1
  %2456 = lshr i32 %2436, 31
  %2457 = trunc i32 %2456 to i8
  %2458 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2457, i8* %2458, align 1
  %2459 = lshr i32 %2432, 31
  %2460 = xor i32 %2456, %2459
  %2461 = add i32 %2460, %2459
  %2462 = icmp eq i32 %2461, 2
  %2463 = zext i1 %2462 to i8
  %2464 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2463, i8* %2464, align 1
  store %struct.Memory* %loadMem_40093f, %struct.Memory** %MEMORY
  %loadMem_400944 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2466 = getelementptr inbounds %struct.GPR, %struct.GPR* %2465, i32 0, i32 33
  %2467 = getelementptr inbounds %struct.Reg, %struct.Reg* %2466, i32 0, i32 0
  %PC.i308 = bitcast %union.anon* %2467 to i64*
  %2468 = load i64, i64* %PC.i308
  %2469 = add i64 %2468, 38
  %2470 = load i64, i64* %PC.i308
  %2471 = add i64 %2470, 6
  %2472 = load i64, i64* %PC.i308
  %2473 = add i64 %2472, 6
  store i64 %2473, i64* %PC.i308
  %2474 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2475 = load i8, i8* %2474, align 1
  %2476 = icmp eq i8 %2475, 0
  %2477 = zext i1 %2476 to i8
  store i8 %2477, i8* %BRANCH_TAKEN, align 1
  %2478 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2479 = select i1 %2476, i64 %2469, i64 %2471
  store i64 %2479, i64* %2478, align 8
  store %struct.Memory* %loadMem_400944, %struct.Memory** %MEMORY
  %loadBr_400944 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400944 = icmp eq i8 %loadBr_400944, 1
  br i1 %cmpBr_400944, label %block_.L_40096a, label %block_40094a

block_40094a:                                     ; preds = %block_.L_400918
  %loadMem_40094a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2481 = getelementptr inbounds %struct.GPR, %struct.GPR* %2480, i32 0, i32 33
  %2482 = getelementptr inbounds %struct.Reg, %struct.Reg* %2481, i32 0, i32 0
  %PC.i305 = bitcast %union.anon* %2482 to i64*
  %2483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2484 = getelementptr inbounds %struct.GPR, %struct.GPR* %2483, i32 0, i32 1
  %2485 = getelementptr inbounds %struct.Reg, %struct.Reg* %2484, i32 0, i32 0
  %RAX.i306 = bitcast %union.anon* %2485 to i64*
  %2486 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2487 = getelementptr inbounds %struct.GPR, %struct.GPR* %2486, i32 0, i32 15
  %2488 = getelementptr inbounds %struct.Reg, %struct.Reg* %2487, i32 0, i32 0
  %RBP.i307 = bitcast %union.anon* %2488 to i64*
  %2489 = load i64, i64* %RBP.i307
  %2490 = sub i64 %2489, 38
  %2491 = load i64, i64* %PC.i305
  %2492 = add i64 %2491, 4
  store i64 %2492, i64* %PC.i305
  %2493 = inttoptr i64 %2490 to i16*
  %2494 = load i16, i16* %2493
  %2495 = zext i16 %2494 to i64
  store i64 %2495, i64* %RAX.i306, align 8
  store %struct.Memory* %loadMem_40094a, %struct.Memory** %MEMORY
  %loadMem_40094e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2497 = getelementptr inbounds %struct.GPR, %struct.GPR* %2496, i32 0, i32 33
  %2498 = getelementptr inbounds %struct.Reg, %struct.Reg* %2497, i32 0, i32 0
  %PC.i303 = bitcast %union.anon* %2498 to i64*
  %2499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2500 = getelementptr inbounds %struct.GPR, %struct.GPR* %2499, i32 0, i32 1
  %2501 = getelementptr inbounds %struct.Reg, %struct.Reg* %2500, i32 0, i32 0
  %RAX.i304 = bitcast %union.anon* %2501 to i64*
  %2502 = load i64, i64* %RAX.i304
  %2503 = load i64, i64* %PC.i303
  %2504 = add i64 %2503, 5
  store i64 %2504, i64* %PC.i303
  %2505 = or i64 43690, %2502
  %2506 = trunc i64 %2505 to i32
  %2507 = and i64 %2505, 4294967295
  store i64 %2507, i64* %RAX.i304, align 8
  %2508 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2508, align 1
  %2509 = and i32 %2506, 255
  %2510 = call i32 @llvm.ctpop.i32(i32 %2509)
  %2511 = trunc i32 %2510 to i8
  %2512 = and i8 %2511, 1
  %2513 = xor i8 %2512, 1
  %2514 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2513, i8* %2514, align 1
  %2515 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2515, align 1
  %2516 = lshr i32 %2506, 31
  %2517 = trunc i32 %2516 to i8
  %2518 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2517, i8* %2518, align 1
  %2519 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2519, align 1
  %2520 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2520, align 1
  store %struct.Memory* %loadMem_40094e, %struct.Memory** %MEMORY
  %loadMem_400953 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2521 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2522 = getelementptr inbounds %struct.GPR, %struct.GPR* %2521, i32 0, i32 33
  %2523 = getelementptr inbounds %struct.Reg, %struct.Reg* %2522, i32 0, i32 0
  %PC.i301 = bitcast %union.anon* %2523 to i64*
  %2524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2525 = getelementptr inbounds %struct.GPR, %struct.GPR* %2524, i32 0, i32 1
  %2526 = getelementptr inbounds %struct.Reg, %struct.Reg* %2525, i32 0, i32 0
  %EAX.i302 = bitcast %union.anon* %2526 to i32*
  %2527 = load i32, i32* %EAX.i302
  %2528 = zext i32 %2527 to i64
  %2529 = load i64, i64* %PC.i301
  %2530 = add i64 %2529, 5
  store i64 %2530, i64* %PC.i301
  %2531 = sub i32 %2527, 65211
  %2532 = icmp ult i32 %2527, 65211
  %2533 = zext i1 %2532 to i8
  %2534 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2533, i8* %2534, align 1
  %2535 = and i32 %2531, 255
  %2536 = call i32 @llvm.ctpop.i32(i32 %2535)
  %2537 = trunc i32 %2536 to i8
  %2538 = and i8 %2537, 1
  %2539 = xor i8 %2538, 1
  %2540 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2539, i8* %2540, align 1
  %2541 = xor i64 65211, %2528
  %2542 = trunc i64 %2541 to i32
  %2543 = xor i32 %2542, %2531
  %2544 = lshr i32 %2543, 4
  %2545 = trunc i32 %2544 to i8
  %2546 = and i8 %2545, 1
  %2547 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2546, i8* %2547, align 1
  %2548 = icmp eq i32 %2531, 0
  %2549 = zext i1 %2548 to i8
  %2550 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2549, i8* %2550, align 1
  %2551 = lshr i32 %2531, 31
  %2552 = trunc i32 %2551 to i8
  %2553 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2552, i8* %2553, align 1
  %2554 = lshr i32 %2527, 31
  %2555 = xor i32 %2551, %2554
  %2556 = add i32 %2555, %2554
  %2557 = icmp eq i32 %2556, 2
  %2558 = zext i1 %2557 to i8
  %2559 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2558, i8* %2559, align 1
  store %struct.Memory* %loadMem_400953, %struct.Memory** %MEMORY
  %loadMem_400958 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2561 = getelementptr inbounds %struct.GPR, %struct.GPR* %2560, i32 0, i32 33
  %2562 = getelementptr inbounds %struct.Reg, %struct.Reg* %2561, i32 0, i32 0
  %PC.i300 = bitcast %union.anon* %2562 to i64*
  %2563 = load i64, i64* %PC.i300
  %2564 = add i64 %2563, 18
  %2565 = load i64, i64* %PC.i300
  %2566 = add i64 %2565, 6
  %2567 = load i64, i64* %PC.i300
  %2568 = add i64 %2567, 6
  store i64 %2568, i64* %PC.i300
  %2569 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2570 = load i8, i8* %2569, align 1
  %2571 = icmp eq i8 %2570, 0
  %2572 = zext i1 %2571 to i8
  store i8 %2572, i8* %BRANCH_TAKEN, align 1
  %2573 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2574 = select i1 %2571, i64 %2564, i64 %2566
  store i64 %2574, i64* %2573, align 8
  store %struct.Memory* %loadMem_400958, %struct.Memory** %MEMORY
  %loadBr_400958 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400958 = icmp eq i8 %loadBr_400958, 1
  br i1 %cmpBr_400958, label %block_.L_40096a, label %block_40095e

block_40095e:                                     ; preds = %block_40094a
  %loadMem_40095e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2576 = getelementptr inbounds %struct.GPR, %struct.GPR* %2575, i32 0, i32 33
  %2577 = getelementptr inbounds %struct.Reg, %struct.Reg* %2576, i32 0, i32 0
  %PC.i298 = bitcast %union.anon* %2577 to i64*
  %2578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2579 = getelementptr inbounds %struct.GPR, %struct.GPR* %2578, i32 0, i32 15
  %2580 = getelementptr inbounds %struct.Reg, %struct.Reg* %2579, i32 0, i32 0
  %RBP.i299 = bitcast %union.anon* %2580 to i64*
  %2581 = load i64, i64* %RBP.i299
  %2582 = sub i64 %2581, 20
  %2583 = load i64, i64* %PC.i298
  %2584 = add i64 %2583, 7
  store i64 %2584, i64* %PC.i298
  %2585 = inttoptr i64 %2582 to i32*
  store i32 43690, i32* %2585
  store %struct.Memory* %loadMem_40095e, %struct.Memory** %MEMORY
  %loadMem_400965 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2587 = getelementptr inbounds %struct.GPR, %struct.GPR* %2586, i32 0, i32 33
  %2588 = getelementptr inbounds %struct.Reg, %struct.Reg* %2587, i32 0, i32 0
  %PC.i297 = bitcast %union.anon* %2588 to i64*
  %2589 = load i64, i64* %PC.i297
  %2590 = add i64 %2589, 12
  %2591 = load i64, i64* %PC.i297
  %2592 = add i64 %2591, 5
  store i64 %2592, i64* %PC.i297
  %2593 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2590, i64* %2593, align 8
  store %struct.Memory* %loadMem_400965, %struct.Memory** %MEMORY
  br label %block_.L_400971

block_.L_40096a:                                  ; preds = %block_40094a, %block_.L_400918
  %loadMem_40096a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2595 = getelementptr inbounds %struct.GPR, %struct.GPR* %2594, i32 0, i32 33
  %2596 = getelementptr inbounds %struct.Reg, %struct.Reg* %2595, i32 0, i32 0
  %PC.i295 = bitcast %union.anon* %2596 to i64*
  %2597 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2598 = getelementptr inbounds %struct.GPR, %struct.GPR* %2597, i32 0, i32 15
  %2599 = getelementptr inbounds %struct.Reg, %struct.Reg* %2598, i32 0, i32 0
  %RBP.i296 = bitcast %union.anon* %2599 to i64*
  %2600 = load i64, i64* %RBP.i296
  %2601 = sub i64 %2600, 20
  %2602 = load i64, i64* %PC.i295
  %2603 = add i64 %2602, 7
  store i64 %2603, i64* %PC.i295
  %2604 = inttoptr i64 %2601 to i32*
  store i32 48059, i32* %2604
  store %struct.Memory* %loadMem_40096a, %struct.Memory** %MEMORY
  br label %block_.L_400971

block_.L_400971:                                  ; preds = %block_.L_40096a, %block_40095e
  %loadMem_400971 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2605 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2606 = getelementptr inbounds %struct.GPR, %struct.GPR* %2605, i32 0, i32 33
  %2607 = getelementptr inbounds %struct.Reg, %struct.Reg* %2606, i32 0, i32 0
  %PC.i293 = bitcast %union.anon* %2607 to i64*
  %2608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2609 = getelementptr inbounds %struct.GPR, %struct.GPR* %2608, i32 0, i32 11
  %2610 = getelementptr inbounds %struct.Reg, %struct.Reg* %2609, i32 0, i32 0
  %EDI.i = bitcast %union.anon* %2610 to i32*
  %2611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2612 = getelementptr inbounds %struct.GPR, %struct.GPR* %2611, i32 0, i32 11
  %2613 = getelementptr inbounds %struct.Reg, %struct.Reg* %2612, i32 0, i32 0
  %RDI.i294 = bitcast %union.anon* %2613 to i64*
  %2614 = load i64, i64* %RDI.i294
  %2615 = load i32, i32* %EDI.i
  %2616 = zext i32 %2615 to i64
  %2617 = load i64, i64* %PC.i293
  %2618 = add i64 %2617, 2
  store i64 %2618, i64* %PC.i293
  %2619 = xor i64 %2616, %2614
  %2620 = trunc i64 %2619 to i32
  %2621 = and i64 %2619, 4294967295
  store i64 %2621, i64* %RDI.i294, align 8
  %2622 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2622, align 1
  %2623 = and i32 %2620, 255
  %2624 = call i32 @llvm.ctpop.i32(i32 %2623)
  %2625 = trunc i32 %2624 to i8
  %2626 = and i8 %2625, 1
  %2627 = xor i8 %2626, 1
  %2628 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2627, i8* %2628, align 1
  %2629 = icmp eq i32 %2620, 0
  %2630 = zext i1 %2629 to i8
  %2631 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2630, i8* %2631, align 1
  %2632 = lshr i32 %2620, 31
  %2633 = trunc i32 %2632 to i8
  %2634 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2633, i8* %2634, align 1
  %2635 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2635, align 1
  %2636 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2636, align 1
  store %struct.Memory* %loadMem_400971, %struct.Memory** %MEMORY
  %loadMem_400973 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2638 = getelementptr inbounds %struct.GPR, %struct.GPR* %2637, i32 0, i32 33
  %2639 = getelementptr inbounds %struct.Reg, %struct.Reg* %2638, i32 0, i32 0
  %PC.i291 = bitcast %union.anon* %2639 to i64*
  %2640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2641 = getelementptr inbounds %struct.GPR, %struct.GPR* %2640, i32 0, i32 7
  %2642 = getelementptr inbounds %struct.Reg, %struct.Reg* %2641, i32 0, i32 0
  %RDX.i292 = bitcast %union.anon* %2642 to i64*
  %2643 = load i64, i64* %PC.i291
  %2644 = add i64 %2643, 5
  store i64 %2644, i64* %PC.i291
  store i64 8, i64* %RDX.i292, align 8
  store %struct.Memory* %loadMem_400973, %struct.Memory** %MEMORY
  %loadMem_400978 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2645 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2646 = getelementptr inbounds %struct.GPR, %struct.GPR* %2645, i32 0, i32 33
  %2647 = getelementptr inbounds %struct.Reg, %struct.Reg* %2646, i32 0, i32 0
  %PC.i288 = bitcast %union.anon* %2647 to i64*
  %2648 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2649 = getelementptr inbounds %struct.GPR, %struct.GPR* %2648, i32 0, i32 1
  %2650 = getelementptr inbounds %struct.Reg, %struct.Reg* %2649, i32 0, i32 0
  %RAX.i289 = bitcast %union.anon* %2650 to i64*
  %2651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2652 = getelementptr inbounds %struct.GPR, %struct.GPR* %2651, i32 0, i32 15
  %2653 = getelementptr inbounds %struct.Reg, %struct.Reg* %2652, i32 0, i32 0
  %RBP.i290 = bitcast %union.anon* %2653 to i64*
  %2654 = load i64, i64* %RBP.i290
  %2655 = sub i64 %2654, 16
  %2656 = load i64, i64* %PC.i288
  %2657 = add i64 %2656, 4
  store i64 %2657, i64* %PC.i288
  %2658 = inttoptr i64 %2655 to i64*
  %2659 = load i64, i64* %2658
  store i64 %2659, i64* %RAX.i289, align 8
  store %struct.Memory* %loadMem_400978, %struct.Memory** %MEMORY
  %loadMem_40097c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2660 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2661 = getelementptr inbounds %struct.GPR, %struct.GPR* %2660, i32 0, i32 33
  %2662 = getelementptr inbounds %struct.Reg, %struct.Reg* %2661, i32 0, i32 0
  %PC.i286 = bitcast %union.anon* %2662 to i64*
  %2663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2664 = getelementptr inbounds %struct.GPR, %struct.GPR* %2663, i32 0, i32 1
  %2665 = getelementptr inbounds %struct.Reg, %struct.Reg* %2664, i32 0, i32 0
  %RAX.i287 = bitcast %union.anon* %2665 to i64*
  %2666 = load i64, i64* %RAX.i287
  %2667 = load i64, i64* %PC.i286
  %2668 = add i64 %2667, 4
  store i64 %2668, i64* %PC.i286
  %2669 = add i64 12, %2666
  store i64 %2669, i64* %RAX.i287, align 8
  %2670 = icmp ult i64 %2669, %2666
  %2671 = icmp ult i64 %2669, 12
  %2672 = or i1 %2670, %2671
  %2673 = zext i1 %2672 to i8
  %2674 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2673, i8* %2674, align 1
  %2675 = trunc i64 %2669 to i32
  %2676 = and i32 %2675, 255
  %2677 = call i32 @llvm.ctpop.i32(i32 %2676)
  %2678 = trunc i32 %2677 to i8
  %2679 = and i8 %2678, 1
  %2680 = xor i8 %2679, 1
  %2681 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2680, i8* %2681, align 1
  %2682 = xor i64 12, %2666
  %2683 = xor i64 %2682, %2669
  %2684 = lshr i64 %2683, 4
  %2685 = trunc i64 %2684 to i8
  %2686 = and i8 %2685, 1
  %2687 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2686, i8* %2687, align 1
  %2688 = icmp eq i64 %2669, 0
  %2689 = zext i1 %2688 to i8
  %2690 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2689, i8* %2690, align 1
  %2691 = lshr i64 %2669, 63
  %2692 = trunc i64 %2691 to i8
  %2693 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2692, i8* %2693, align 1
  %2694 = lshr i64 %2666, 63
  %2695 = xor i64 %2691, %2694
  %2696 = add i64 %2695, %2691
  %2697 = icmp eq i64 %2696, 2
  %2698 = zext i1 %2697 to i8
  %2699 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2698, i8* %2699, align 1
  store %struct.Memory* %loadMem_40097c, %struct.Memory** %MEMORY
  %loadMem_400980 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2701 = getelementptr inbounds %struct.GPR, %struct.GPR* %2700, i32 0, i32 33
  %2702 = getelementptr inbounds %struct.Reg, %struct.Reg* %2701, i32 0, i32 0
  %PC.i283 = bitcast %union.anon* %2702 to i64*
  %2703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2704 = getelementptr inbounds %struct.GPR, %struct.GPR* %2703, i32 0, i32 1
  %2705 = getelementptr inbounds %struct.Reg, %struct.Reg* %2704, i32 0, i32 0
  %RAX.i284 = bitcast %union.anon* %2705 to i64*
  %2706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2707 = getelementptr inbounds %struct.GPR, %struct.GPR* %2706, i32 0, i32 9
  %2708 = getelementptr inbounds %struct.Reg, %struct.Reg* %2707, i32 0, i32 0
  %RSI.i285 = bitcast %union.anon* %2708 to i64*
  %2709 = load i64, i64* %RAX.i284
  %2710 = load i64, i64* %PC.i283
  %2711 = add i64 %2710, 3
  store i64 %2711, i64* %PC.i283
  store i64 %2709, i64* %RSI.i285, align 8
  store %struct.Memory* %loadMem_400980, %struct.Memory** %MEMORY
  %loadMem1_400983 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2713 = getelementptr inbounds %struct.GPR, %struct.GPR* %2712, i32 0, i32 33
  %2714 = getelementptr inbounds %struct.Reg, %struct.Reg* %2713, i32 0, i32 0
  %PC.i282 = bitcast %union.anon* %2714 to i64*
  %2715 = load i64, i64* %PC.i282
  %2716 = add i64 %2715, -851
  %2717 = load i64, i64* %PC.i282
  %2718 = add i64 %2717, 5
  %2719 = load i64, i64* %PC.i282
  %2720 = add i64 %2719, 5
  store i64 %2720, i64* %PC.i282
  %2721 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2722 = load i64, i64* %2721, align 8
  %2723 = add i64 %2722, -8
  %2724 = inttoptr i64 %2723 to i64*
  store i64 %2718, i64* %2724
  store i64 %2723, i64* %2721, align 8
  %2725 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2716, i64* %2725, align 8
  store %struct.Memory* %loadMem1_400983, %struct.Memory** %MEMORY
  %loadMem2_400983 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400983 = load i64, i64* %3
  %call2_400983 = call %struct.Memory* @sub_400630.read_bytes(%struct.State* %0, i64 %loadPC_400983, %struct.Memory* %loadMem2_400983)
  store %struct.Memory* %call2_400983, %struct.Memory** %MEMORY
  %loadMem_400988 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2726 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2727 = getelementptr inbounds %struct.GPR, %struct.GPR* %2726, i32 0, i32 33
  %2728 = getelementptr inbounds %struct.Reg, %struct.Reg* %2727, i32 0, i32 0
  %PC.i279 = bitcast %union.anon* %2728 to i64*
  %2729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2730 = getelementptr inbounds %struct.GPR, %struct.GPR* %2729, i32 0, i32 1
  %2731 = getelementptr inbounds %struct.Reg, %struct.Reg* %2730, i32 0, i32 0
  %EAX.i280 = bitcast %union.anon* %2731 to i32*
  %2732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2733 = getelementptr inbounds %struct.GPR, %struct.GPR* %2732, i32 0, i32 15
  %2734 = getelementptr inbounds %struct.Reg, %struct.Reg* %2733, i32 0, i32 0
  %RBP.i281 = bitcast %union.anon* %2734 to i64*
  %2735 = load i64, i64* %RBP.i281
  %2736 = sub i64 %2735, 44
  %2737 = load i32, i32* %EAX.i280
  %2738 = zext i32 %2737 to i64
  %2739 = load i64, i64* %PC.i279
  %2740 = add i64 %2739, 3
  store i64 %2740, i64* %PC.i279
  %2741 = inttoptr i64 %2736 to i32*
  store i32 %2737, i32* %2741
  store %struct.Memory* %loadMem_400988, %struct.Memory** %MEMORY
  %loadMem_40098b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2743 = getelementptr inbounds %struct.GPR, %struct.GPR* %2742, i32 0, i32 33
  %2744 = getelementptr inbounds %struct.Reg, %struct.Reg* %2743, i32 0, i32 0
  %PC.i276 = bitcast %union.anon* %2744 to i64*
  %2745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2746 = getelementptr inbounds %struct.GPR, %struct.GPR* %2745, i32 0, i32 1
  %2747 = getelementptr inbounds %struct.Reg, %struct.Reg* %2746, i32 0, i32 0
  %RAX.i277 = bitcast %union.anon* %2747 to i64*
  %2748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2749 = getelementptr inbounds %struct.GPR, %struct.GPR* %2748, i32 0, i32 15
  %2750 = getelementptr inbounds %struct.Reg, %struct.Reg* %2749, i32 0, i32 0
  %RBP.i278 = bitcast %union.anon* %2750 to i64*
  %2751 = load i64, i64* %RBP.i278
  %2752 = sub i64 %2751, 44
  %2753 = load i64, i64* %PC.i276
  %2754 = add i64 %2753, 3
  store i64 %2754, i64* %PC.i276
  %2755 = inttoptr i64 %2752 to i32*
  %2756 = load i32, i32* %2755
  %2757 = zext i32 %2756 to i64
  store i64 %2757, i64* %RAX.i277, align 8
  store %struct.Memory* %loadMem_40098b, %struct.Memory** %MEMORY
  %loadMem_40098e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2759 = getelementptr inbounds %struct.GPR, %struct.GPR* %2758, i32 0, i32 33
  %2760 = getelementptr inbounds %struct.Reg, %struct.Reg* %2759, i32 0, i32 0
  %PC.i274 = bitcast %union.anon* %2760 to i64*
  %2761 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2762 = getelementptr inbounds %struct.GPR, %struct.GPR* %2761, i32 0, i32 1
  %2763 = getelementptr inbounds %struct.Reg, %struct.Reg* %2762, i32 0, i32 0
  %RAX.i275 = bitcast %union.anon* %2763 to i64*
  %2764 = load i64, i64* %RAX.i275
  %2765 = load i64, i64* %PC.i274
  %2766 = add i64 %2765, 5
  store i64 %2766, i64* %PC.i274
  %2767 = xor i64 -1534560611, %2764
  %2768 = trunc i64 %2767 to i32
  %2769 = and i64 %2767, 4294967295
  store i64 %2769, i64* %RAX.i275, align 8
  %2770 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2770, align 1
  %2771 = and i32 %2768, 255
  %2772 = call i32 @llvm.ctpop.i32(i32 %2771)
  %2773 = trunc i32 %2772 to i8
  %2774 = and i8 %2773, 1
  %2775 = xor i8 %2774, 1
  %2776 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2775, i8* %2776, align 1
  %2777 = icmp eq i32 %2768, 0
  %2778 = zext i1 %2777 to i8
  %2779 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2778, i8* %2779, align 1
  %2780 = lshr i32 %2768, 31
  %2781 = trunc i32 %2780 to i8
  %2782 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2781, i8* %2782, align 1
  %2783 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2783, align 1
  %2784 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2784, align 1
  store %struct.Memory* %loadMem_40098e, %struct.Memory** %MEMORY
  %loadMem_400993 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2785 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2786 = getelementptr inbounds %struct.GPR, %struct.GPR* %2785, i32 0, i32 33
  %2787 = getelementptr inbounds %struct.Reg, %struct.Reg* %2786, i32 0, i32 0
  %PC.i271 = bitcast %union.anon* %2787 to i64*
  %2788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2789 = getelementptr inbounds %struct.GPR, %struct.GPR* %2788, i32 0, i32 1
  %2790 = getelementptr inbounds %struct.Reg, %struct.Reg* %2789, i32 0, i32 0
  %EAX.i272 = bitcast %union.anon* %2790 to i32*
  %2791 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2792 = getelementptr inbounds %struct.GPR, %struct.GPR* %2791, i32 0, i32 15
  %2793 = getelementptr inbounds %struct.Reg, %struct.Reg* %2792, i32 0, i32 0
  %RBP.i273 = bitcast %union.anon* %2793 to i64*
  %2794 = load i64, i64* %RBP.i273
  %2795 = sub i64 %2794, 48
  %2796 = load i32, i32* %EAX.i272
  %2797 = zext i32 %2796 to i64
  %2798 = load i64, i64* %PC.i271
  %2799 = add i64 %2798, 3
  store i64 %2799, i64* %PC.i271
  %2800 = inttoptr i64 %2795 to i32*
  store i32 %2796, i32* %2800
  store %struct.Memory* %loadMem_400993, %struct.Memory** %MEMORY
  %loadMem_400996 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2801 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2802 = getelementptr inbounds %struct.GPR, %struct.GPR* %2801, i32 0, i32 33
  %2803 = getelementptr inbounds %struct.Reg, %struct.Reg* %2802, i32 0, i32 0
  %PC.i268 = bitcast %union.anon* %2803 to i64*
  %2804 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2805 = getelementptr inbounds %struct.GPR, %struct.GPR* %2804, i32 0, i32 1
  %2806 = getelementptr inbounds %struct.Reg, %struct.Reg* %2805, i32 0, i32 0
  %RAX.i269 = bitcast %union.anon* %2806 to i64*
  %2807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2808 = getelementptr inbounds %struct.GPR, %struct.GPR* %2807, i32 0, i32 15
  %2809 = getelementptr inbounds %struct.Reg, %struct.Reg* %2808, i32 0, i32 0
  %RBP.i270 = bitcast %union.anon* %2809 to i64*
  %2810 = load i64, i64* %RBP.i270
  %2811 = sub i64 %2810, 48
  %2812 = load i64, i64* %PC.i268
  %2813 = add i64 %2812, 3
  store i64 %2813, i64* %PC.i268
  %2814 = inttoptr i64 %2811 to i32*
  %2815 = load i32, i32* %2814
  %2816 = zext i32 %2815 to i64
  store i64 %2816, i64* %RAX.i269, align 8
  store %struct.Memory* %loadMem_400996, %struct.Memory** %MEMORY
  %loadMem_400999 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2817 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2818 = getelementptr inbounds %struct.GPR, %struct.GPR* %2817, i32 0, i32 33
  %2819 = getelementptr inbounds %struct.Reg, %struct.Reg* %2818, i32 0, i32 0
  %PC.i266 = bitcast %union.anon* %2819 to i64*
  %2820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2821 = getelementptr inbounds %struct.GPR, %struct.GPR* %2820, i32 0, i32 1
  %2822 = getelementptr inbounds %struct.Reg, %struct.Reg* %2821, i32 0, i32 0
  %RAX.i267 = bitcast %union.anon* %2822 to i64*
  %2823 = load i64, i64* %RAX.i267
  %2824 = load i64, i64* %PC.i266
  %2825 = add i64 %2824, 3
  store i64 %2825, i64* %PC.i266
  %2826 = and i64 %2823, 4294967295
  %2827 = lshr i64 %2826, 15
  %2828 = trunc i64 %2827 to i8
  %2829 = and i8 %2828, 1
  %2830 = lshr i64 %2827, 1
  %2831 = trunc i64 %2830 to i32
  %2832 = and i32 %2831, 2147483647
  %2833 = zext i32 %2832 to i64
  store i64 %2833, i64* %RAX.i267, align 8
  %2834 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2829, i8* %2834, align 1
  %2835 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2836 = and i32 %2831, 255
  %2837 = call i32 @llvm.ctpop.i32(i32 %2836)
  %2838 = trunc i32 %2837 to i8
  %2839 = and i8 %2838, 1
  %2840 = xor i8 %2839, 1
  store i8 %2840, i8* %2835, align 1
  %2841 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2841, align 1
  %2842 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2843 = icmp eq i32 %2832, 0
  %2844 = zext i1 %2843 to i8
  store i8 %2844, i8* %2842, align 1
  %2845 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2845, align 1
  %2846 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2846, align 1
  store %struct.Memory* %loadMem_400999, %struct.Memory** %MEMORY
  %loadMem_40099c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2847 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2848 = getelementptr inbounds %struct.GPR, %struct.GPR* %2847, i32 0, i32 33
  %2849 = getelementptr inbounds %struct.Reg, %struct.Reg* %2848, i32 0, i32 0
  %PC.i263 = bitcast %union.anon* %2849 to i64*
  %2850 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2851 = getelementptr inbounds %struct.GPR, %struct.GPR* %2850, i32 0, i32 1
  %2852 = getelementptr inbounds %struct.Reg, %struct.Reg* %2851, i32 0, i32 0
  %EAX.i264 = bitcast %union.anon* %2852 to i32*
  %2853 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2854 = getelementptr inbounds %struct.GPR, %struct.GPR* %2853, i32 0, i32 15
  %2855 = getelementptr inbounds %struct.Reg, %struct.Reg* %2854, i32 0, i32 0
  %RBP.i265 = bitcast %union.anon* %2855 to i64*
  %2856 = load i64, i64* %RBP.i265
  %2857 = sub i64 %2856, 52
  %2858 = load i32, i32* %EAX.i264
  %2859 = zext i32 %2858 to i64
  %2860 = load i64, i64* %PC.i263
  %2861 = add i64 %2860, 3
  store i64 %2861, i64* %PC.i263
  %2862 = inttoptr i64 %2857 to i32*
  store i32 %2858, i32* %2862
  store %struct.Memory* %loadMem_40099c, %struct.Memory** %MEMORY
  %loadMem_40099f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2864 = getelementptr inbounds %struct.GPR, %struct.GPR* %2863, i32 0, i32 33
  %2865 = getelementptr inbounds %struct.Reg, %struct.Reg* %2864, i32 0, i32 0
  %PC.i260 = bitcast %union.anon* %2865 to i64*
  %2866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2867 = getelementptr inbounds %struct.GPR, %struct.GPR* %2866, i32 0, i32 1
  %2868 = getelementptr inbounds %struct.Reg, %struct.Reg* %2867, i32 0, i32 0
  %RAX.i261 = bitcast %union.anon* %2868 to i64*
  %2869 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2870 = getelementptr inbounds %struct.GPR, %struct.GPR* %2869, i32 0, i32 15
  %2871 = getelementptr inbounds %struct.Reg, %struct.Reg* %2870, i32 0, i32 0
  %RBP.i262 = bitcast %union.anon* %2871 to i64*
  %2872 = load i64, i64* %RBP.i262
  %2873 = sub i64 %2872, 48
  %2874 = load i64, i64* %PC.i260
  %2875 = add i64 %2874, 3
  store i64 %2875, i64* %PC.i260
  %2876 = inttoptr i64 %2873 to i32*
  %2877 = load i32, i32* %2876
  %2878 = zext i32 %2877 to i64
  store i64 %2878, i64* %RAX.i261, align 8
  store %struct.Memory* %loadMem_40099f, %struct.Memory** %MEMORY
  %loadMem_4009a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2879 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2880 = getelementptr inbounds %struct.GPR, %struct.GPR* %2879, i32 0, i32 33
  %2881 = getelementptr inbounds %struct.Reg, %struct.Reg* %2880, i32 0, i32 0
  %PC.i258 = bitcast %union.anon* %2881 to i64*
  %2882 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2883 = getelementptr inbounds %struct.GPR, %struct.GPR* %2882, i32 0, i32 1
  %2884 = getelementptr inbounds %struct.Reg, %struct.Reg* %2883, i32 0, i32 0
  %RAX.i259 = bitcast %union.anon* %2884 to i64*
  %2885 = load i64, i64* %RAX.i259
  %2886 = load i64, i64* %PC.i258
  %2887 = add i64 %2886, 5
  store i64 %2887, i64* %PC.i258
  %2888 = and i64 65535, %2885
  %2889 = trunc i64 %2888 to i32
  store i64 %2888, i64* %RAX.i259, align 8
  %2890 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2890, align 1
  %2891 = and i32 %2889, 255
  %2892 = call i32 @llvm.ctpop.i32(i32 %2891)
  %2893 = trunc i32 %2892 to i8
  %2894 = and i8 %2893, 1
  %2895 = xor i8 %2894, 1
  %2896 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2895, i8* %2896, align 1
  %2897 = icmp eq i32 %2889, 0
  %2898 = zext i1 %2897 to i8
  %2899 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2898, i8* %2899, align 1
  %2900 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2900, align 1
  %2901 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2901, align 1
  %2902 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2902, align 1
  store %struct.Memory* %loadMem_4009a2, %struct.Memory** %MEMORY
  %loadMem_4009a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2903 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2904 = getelementptr inbounds %struct.GPR, %struct.GPR* %2903, i32 0, i32 33
  %2905 = getelementptr inbounds %struct.Reg, %struct.Reg* %2904, i32 0, i32 0
  %PC.i255 = bitcast %union.anon* %2905 to i64*
  %2906 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2907 = getelementptr inbounds %struct.GPR, %struct.GPR* %2906, i32 0, i32 1
  %2908 = getelementptr inbounds %struct.Reg, %struct.Reg* %2907, i32 0, i32 0
  %EAX.i256 = bitcast %union.anon* %2908 to i32*
  %2909 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2910 = getelementptr inbounds %struct.GPR, %struct.GPR* %2909, i32 0, i32 15
  %2911 = getelementptr inbounds %struct.Reg, %struct.Reg* %2910, i32 0, i32 0
  %RBP.i257 = bitcast %union.anon* %2911 to i64*
  %2912 = load i64, i64* %RBP.i257
  %2913 = sub i64 %2912, 56
  %2914 = load i32, i32* %EAX.i256
  %2915 = zext i32 %2914 to i64
  %2916 = load i64, i64* %PC.i255
  %2917 = add i64 %2916, 3
  store i64 %2917, i64* %PC.i255
  %2918 = inttoptr i64 %2913 to i32*
  store i32 %2914, i32* %2918
  store %struct.Memory* %loadMem_4009a7, %struct.Memory** %MEMORY
  %loadMem_4009aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %2919 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2920 = getelementptr inbounds %struct.GPR, %struct.GPR* %2919, i32 0, i32 33
  %2921 = getelementptr inbounds %struct.Reg, %struct.Reg* %2920, i32 0, i32 0
  %PC.i253 = bitcast %union.anon* %2921 to i64*
  %2922 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2923 = getelementptr inbounds %struct.GPR, %struct.GPR* %2922, i32 0, i32 15
  %2924 = getelementptr inbounds %struct.Reg, %struct.Reg* %2923, i32 0, i32 0
  %RBP.i254 = bitcast %union.anon* %2924 to i64*
  %2925 = load i64, i64* %RBP.i254
  %2926 = sub i64 %2925, 52
  %2927 = load i64, i64* %PC.i253
  %2928 = add i64 %2927, 4
  store i64 %2928, i64* %PC.i253
  %2929 = inttoptr i64 %2926 to i32*
  %2930 = load i32, i32* %2929
  %2931 = sub i32 %2930, 79
  %2932 = icmp ult i32 %2930, 79
  %2933 = zext i1 %2932 to i8
  %2934 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2933, i8* %2934, align 1
  %2935 = and i32 %2931, 255
  %2936 = call i32 @llvm.ctpop.i32(i32 %2935)
  %2937 = trunc i32 %2936 to i8
  %2938 = and i8 %2937, 1
  %2939 = xor i8 %2938, 1
  %2940 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2939, i8* %2940, align 1
  %2941 = xor i32 %2930, 79
  %2942 = xor i32 %2941, %2931
  %2943 = lshr i32 %2942, 4
  %2944 = trunc i32 %2943 to i8
  %2945 = and i8 %2944, 1
  %2946 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2945, i8* %2946, align 1
  %2947 = icmp eq i32 %2931, 0
  %2948 = zext i1 %2947 to i8
  %2949 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2948, i8* %2949, align 1
  %2950 = lshr i32 %2931, 31
  %2951 = trunc i32 %2950 to i8
  %2952 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2951, i8* %2952, align 1
  %2953 = lshr i32 %2930, 31
  %2954 = xor i32 %2950, %2953
  %2955 = add i32 %2954, %2953
  %2956 = icmp eq i32 %2955, 2
  %2957 = zext i1 %2956 to i8
  %2958 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2957, i8* %2958, align 1
  store %struct.Memory* %loadMem_4009aa, %struct.Memory** %MEMORY
  %loadMem_4009ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %2959 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2960 = getelementptr inbounds %struct.GPR, %struct.GPR* %2959, i32 0, i32 33
  %2961 = getelementptr inbounds %struct.Reg, %struct.Reg* %2960, i32 0, i32 0
  %PC.i252 = bitcast %union.anon* %2961 to i64*
  %2962 = load i64, i64* %PC.i252
  %2963 = add i64 %2962, 30
  %2964 = load i64, i64* %PC.i252
  %2965 = add i64 %2964, 6
  %2966 = load i64, i64* %PC.i252
  %2967 = add i64 %2966, 6
  store i64 %2967, i64* %PC.i252
  %2968 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2969 = load i8, i8* %2968, align 1
  %2970 = icmp eq i8 %2969, 0
  %2971 = zext i1 %2970 to i8
  store i8 %2971, i8* %BRANCH_TAKEN, align 1
  %2972 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2973 = select i1 %2970, i64 %2963, i64 %2965
  store i64 %2973, i64* %2972, align 8
  store %struct.Memory* %loadMem_4009ae, %struct.Memory** %MEMORY
  %loadBr_4009ae = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4009ae = icmp eq i8 %loadBr_4009ae, 1
  br i1 %cmpBr_4009ae, label %block_.L_4009cc, label %block_4009b4

block_4009b4:                                     ; preds = %block_.L_400971
  %loadMem_4009b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2975 = getelementptr inbounds %struct.GPR, %struct.GPR* %2974, i32 0, i32 33
  %2976 = getelementptr inbounds %struct.Reg, %struct.Reg* %2975, i32 0, i32 0
  %PC.i249 = bitcast %union.anon* %2976 to i64*
  %2977 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2978 = getelementptr inbounds %struct.GPR, %struct.GPR* %2977, i32 0, i32 1
  %2979 = getelementptr inbounds %struct.Reg, %struct.Reg* %2978, i32 0, i32 0
  %RAX.i250 = bitcast %union.anon* %2979 to i64*
  %2980 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2981 = getelementptr inbounds %struct.GPR, %struct.GPR* %2980, i32 0, i32 15
  %2982 = getelementptr inbounds %struct.Reg, %struct.Reg* %2981, i32 0, i32 0
  %RBP.i251 = bitcast %union.anon* %2982 to i64*
  %2983 = load i64, i64* %RBP.i251
  %2984 = sub i64 %2983, 56
  %2985 = load i64, i64* %PC.i249
  %2986 = add i64 %2985, 3
  store i64 %2986, i64* %PC.i249
  %2987 = inttoptr i64 %2984 to i32*
  %2988 = load i32, i32* %2987
  %2989 = zext i32 %2988 to i64
  store i64 %2989, i64* %RAX.i250, align 8
  store %struct.Memory* %loadMem_4009b4, %struct.Memory** %MEMORY
  %loadMem_4009b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2990 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2991 = getelementptr inbounds %struct.GPR, %struct.GPR* %2990, i32 0, i32 33
  %2992 = getelementptr inbounds %struct.Reg, %struct.Reg* %2991, i32 0, i32 0
  %PC.i246 = bitcast %union.anon* %2992 to i64*
  %2993 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2994 = getelementptr inbounds %struct.GPR, %struct.GPR* %2993, i32 0, i32 1
  %2995 = getelementptr inbounds %struct.Reg, %struct.Reg* %2994, i32 0, i32 0
  %EAX.i247 = bitcast %union.anon* %2995 to i32*
  %2996 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2997 = getelementptr inbounds %struct.GPR, %struct.GPR* %2996, i32 0, i32 15
  %2998 = getelementptr inbounds %struct.Reg, %struct.Reg* %2997, i32 0, i32 0
  %RBP.i248 = bitcast %union.anon* %2998 to i64*
  %2999 = load i32, i32* %EAX.i247
  %3000 = zext i32 %2999 to i64
  %3001 = load i64, i64* %RBP.i248
  %3002 = sub i64 %3001, 20
  %3003 = load i64, i64* %PC.i246
  %3004 = add i64 %3003, 3
  store i64 %3004, i64* %PC.i246
  %3005 = inttoptr i64 %3002 to i32*
  %3006 = load i32, i32* %3005
  %3007 = sub i32 %2999, %3006
  %3008 = icmp ult i32 %2999, %3006
  %3009 = zext i1 %3008 to i8
  %3010 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3009, i8* %3010, align 1
  %3011 = and i32 %3007, 255
  %3012 = call i32 @llvm.ctpop.i32(i32 %3011)
  %3013 = trunc i32 %3012 to i8
  %3014 = and i8 %3013, 1
  %3015 = xor i8 %3014, 1
  %3016 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3015, i8* %3016, align 1
  %3017 = xor i32 %3006, %2999
  %3018 = xor i32 %3017, %3007
  %3019 = lshr i32 %3018, 4
  %3020 = trunc i32 %3019 to i8
  %3021 = and i8 %3020, 1
  %3022 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3021, i8* %3022, align 1
  %3023 = icmp eq i32 %3007, 0
  %3024 = zext i1 %3023 to i8
  %3025 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3024, i8* %3025, align 1
  %3026 = lshr i32 %3007, 31
  %3027 = trunc i32 %3026 to i8
  %3028 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3027, i8* %3028, align 1
  %3029 = lshr i32 %2999, 31
  %3030 = lshr i32 %3006, 31
  %3031 = xor i32 %3030, %3029
  %3032 = xor i32 %3026, %3029
  %3033 = add i32 %3032, %3031
  %3034 = icmp eq i32 %3033, 2
  %3035 = zext i1 %3034 to i8
  %3036 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3035, i8* %3036, align 1
  store %struct.Memory* %loadMem_4009b7, %struct.Memory** %MEMORY
  %loadMem_4009ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %3037 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3038 = getelementptr inbounds %struct.GPR, %struct.GPR* %3037, i32 0, i32 33
  %3039 = getelementptr inbounds %struct.Reg, %struct.Reg* %3038, i32 0, i32 0
  %PC.i245 = bitcast %union.anon* %3039 to i64*
  %3040 = load i64, i64* %PC.i245
  %3041 = add i64 %3040, 18
  %3042 = load i64, i64* %PC.i245
  %3043 = add i64 %3042, 6
  %3044 = load i64, i64* %PC.i245
  %3045 = add i64 %3044, 6
  store i64 %3045, i64* %PC.i245
  %3046 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3047 = load i8, i8* %3046, align 1
  %3048 = icmp eq i8 %3047, 0
  %3049 = zext i1 %3048 to i8
  store i8 %3049, i8* %BRANCH_TAKEN, align 1
  %3050 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3051 = select i1 %3048, i64 %3041, i64 %3043
  store i64 %3051, i64* %3050, align 8
  store %struct.Memory* %loadMem_4009ba, %struct.Memory** %MEMORY
  %loadBr_4009ba = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4009ba = icmp eq i8 %loadBr_4009ba, 1
  br i1 %cmpBr_4009ba, label %block_.L_4009cc, label %block_4009c0

block_4009c0:                                     ; preds = %block_4009b4
  %loadMem_4009c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3052 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3053 = getelementptr inbounds %struct.GPR, %struct.GPR* %3052, i32 0, i32 33
  %3054 = getelementptr inbounds %struct.Reg, %struct.Reg* %3053, i32 0, i32 0
  %PC.i243 = bitcast %union.anon* %3054 to i64*
  %3055 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3056 = getelementptr inbounds %struct.GPR, %struct.GPR* %3055, i32 0, i32 15
  %3057 = getelementptr inbounds %struct.Reg, %struct.Reg* %3056, i32 0, i32 0
  %RBP.i244 = bitcast %union.anon* %3057 to i64*
  %3058 = load i64, i64* %RBP.i244
  %3059 = sub i64 %3058, 20
  %3060 = load i64, i64* %PC.i243
  %3061 = add i64 %3060, 7
  store i64 %3061, i64* %PC.i243
  %3062 = inttoptr i64 %3059 to i32*
  store i32 0, i32* %3062
  store %struct.Memory* %loadMem_4009c0, %struct.Memory** %MEMORY
  %loadMem_4009c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3063 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3064 = getelementptr inbounds %struct.GPR, %struct.GPR* %3063, i32 0, i32 33
  %3065 = getelementptr inbounds %struct.Reg, %struct.Reg* %3064, i32 0, i32 0
  %PC.i242 = bitcast %union.anon* %3065 to i64*
  %3066 = load i64, i64* %PC.i242
  %3067 = add i64 %3066, 12
  %3068 = load i64, i64* %PC.i242
  %3069 = add i64 %3068, 5
  store i64 %3069, i64* %PC.i242
  %3070 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3067, i64* %3070, align 8
  store %struct.Memory* %loadMem_4009c7, %struct.Memory** %MEMORY
  br label %block_.L_4009d3

block_.L_4009cc:                                  ; preds = %block_4009b4, %block_.L_400971
  %loadMem_4009cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %3071 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3072 = getelementptr inbounds %struct.GPR, %struct.GPR* %3071, i32 0, i32 33
  %3073 = getelementptr inbounds %struct.Reg, %struct.Reg* %3072, i32 0, i32 0
  %PC.i240 = bitcast %union.anon* %3073 to i64*
  %3074 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3075 = getelementptr inbounds %struct.GPR, %struct.GPR* %3074, i32 0, i32 15
  %3076 = getelementptr inbounds %struct.Reg, %struct.Reg* %3075, i32 0, i32 0
  %RBP.i241 = bitcast %union.anon* %3076 to i64*
  %3077 = load i64, i64* %RBP.i241
  %3078 = sub i64 %3077, 20
  %3079 = load i64, i64* %PC.i240
  %3080 = add i64 %3079, 7
  store i64 %3080, i64* %PC.i240
  %3081 = inttoptr i64 %3078 to i32*
  store i32 48351, i32* %3081
  store %struct.Memory* %loadMem_4009cc, %struct.Memory** %MEMORY
  br label %block_.L_4009d3

block_.L_4009d3:                                  ; preds = %block_.L_4009cc, %block_4009c0
  %loadMem_4009d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3082 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3083 = getelementptr inbounds %struct.GPR, %struct.GPR* %3082, i32 0, i32 33
  %3084 = getelementptr inbounds %struct.Reg, %struct.Reg* %3083, i32 0, i32 0
  %PC.i238 = bitcast %union.anon* %3084 to i64*
  %3085 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3086 = getelementptr inbounds %struct.GPR, %struct.GPR* %3085, i32 0, i32 7
  %3087 = getelementptr inbounds %struct.Reg, %struct.Reg* %3086, i32 0, i32 0
  %RDX.i239 = bitcast %union.anon* %3087 to i64*
  %3088 = load i64, i64* %PC.i238
  %3089 = add i64 %3088, 5
  store i64 %3089, i64* %PC.i238
  store i64 8, i64* %RDX.i239, align 8
  store %struct.Memory* %loadMem_4009d3, %struct.Memory** %MEMORY
  %loadMem_4009d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3091 = getelementptr inbounds %struct.GPR, %struct.GPR* %3090, i32 0, i32 33
  %3092 = getelementptr inbounds %struct.Reg, %struct.Reg* %3091, i32 0, i32 0
  %PC.i235 = bitcast %union.anon* %3092 to i64*
  %3093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3094 = getelementptr inbounds %struct.GPR, %struct.GPR* %3093, i32 0, i32 11
  %3095 = getelementptr inbounds %struct.Reg, %struct.Reg* %3094, i32 0, i32 0
  %RDI.i236 = bitcast %union.anon* %3095 to i64*
  %3096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3097 = getelementptr inbounds %struct.GPR, %struct.GPR* %3096, i32 0, i32 15
  %3098 = getelementptr inbounds %struct.Reg, %struct.Reg* %3097, i32 0, i32 0
  %RBP.i237 = bitcast %union.anon* %3098 to i64*
  %3099 = load i64, i64* %RBP.i237
  %3100 = sub i64 %3099, 20
  %3101 = load i64, i64* %PC.i235
  %3102 = add i64 %3101, 3
  store i64 %3102, i64* %PC.i235
  %3103 = inttoptr i64 %3100 to i32*
  %3104 = load i32, i32* %3103
  %3105 = zext i32 %3104 to i64
  store i64 %3105, i64* %RDI.i236, align 8
  store %struct.Memory* %loadMem_4009d8, %struct.Memory** %MEMORY
  %loadMem_4009db = load %struct.Memory*, %struct.Memory** %MEMORY
  %3106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3107 = getelementptr inbounds %struct.GPR, %struct.GPR* %3106, i32 0, i32 33
  %3108 = getelementptr inbounds %struct.Reg, %struct.Reg* %3107, i32 0, i32 0
  %PC.i232 = bitcast %union.anon* %3108 to i64*
  %3109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3110 = getelementptr inbounds %struct.GPR, %struct.GPR* %3109, i32 0, i32 1
  %3111 = getelementptr inbounds %struct.Reg, %struct.Reg* %3110, i32 0, i32 0
  %RAX.i233 = bitcast %union.anon* %3111 to i64*
  %3112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3113 = getelementptr inbounds %struct.GPR, %struct.GPR* %3112, i32 0, i32 15
  %3114 = getelementptr inbounds %struct.Reg, %struct.Reg* %3113, i32 0, i32 0
  %RBP.i234 = bitcast %union.anon* %3114 to i64*
  %3115 = load i64, i64* %RBP.i234
  %3116 = sub i64 %3115, 16
  %3117 = load i64, i64* %PC.i232
  %3118 = add i64 %3117, 4
  store i64 %3118, i64* %PC.i232
  %3119 = inttoptr i64 %3116 to i64*
  %3120 = load i64, i64* %3119
  store i64 %3120, i64* %RAX.i233, align 8
  store %struct.Memory* %loadMem_4009db, %struct.Memory** %MEMORY
  %loadMem_4009df = load %struct.Memory*, %struct.Memory** %MEMORY
  %3121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3122 = getelementptr inbounds %struct.GPR, %struct.GPR* %3121, i32 0, i32 33
  %3123 = getelementptr inbounds %struct.Reg, %struct.Reg* %3122, i32 0, i32 0
  %PC.i230 = bitcast %union.anon* %3123 to i64*
  %3124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3125 = getelementptr inbounds %struct.GPR, %struct.GPR* %3124, i32 0, i32 1
  %3126 = getelementptr inbounds %struct.Reg, %struct.Reg* %3125, i32 0, i32 0
  %RAX.i231 = bitcast %union.anon* %3126 to i64*
  %3127 = load i64, i64* %RAX.i231
  %3128 = load i64, i64* %PC.i230
  %3129 = add i64 %3128, 4
  store i64 %3129, i64* %PC.i230
  %3130 = add i64 20, %3127
  store i64 %3130, i64* %RAX.i231, align 8
  %3131 = icmp ult i64 %3130, %3127
  %3132 = icmp ult i64 %3130, 20
  %3133 = or i1 %3131, %3132
  %3134 = zext i1 %3133 to i8
  %3135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3134, i8* %3135, align 1
  %3136 = trunc i64 %3130 to i32
  %3137 = and i32 %3136, 255
  %3138 = call i32 @llvm.ctpop.i32(i32 %3137)
  %3139 = trunc i32 %3138 to i8
  %3140 = and i8 %3139, 1
  %3141 = xor i8 %3140, 1
  %3142 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3141, i8* %3142, align 1
  %3143 = xor i64 20, %3127
  %3144 = xor i64 %3143, %3130
  %3145 = lshr i64 %3144, 4
  %3146 = trunc i64 %3145 to i8
  %3147 = and i8 %3146, 1
  %3148 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3147, i8* %3148, align 1
  %3149 = icmp eq i64 %3130, 0
  %3150 = zext i1 %3149 to i8
  %3151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3150, i8* %3151, align 1
  %3152 = lshr i64 %3130, 63
  %3153 = trunc i64 %3152 to i8
  %3154 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3153, i8* %3154, align 1
  %3155 = lshr i64 %3127, 63
  %3156 = xor i64 %3152, %3155
  %3157 = add i64 %3156, %3152
  %3158 = icmp eq i64 %3157, 2
  %3159 = zext i1 %3158 to i8
  %3160 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3159, i8* %3160, align 1
  store %struct.Memory* %loadMem_4009df, %struct.Memory** %MEMORY
  %loadMem_4009e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3162 = getelementptr inbounds %struct.GPR, %struct.GPR* %3161, i32 0, i32 33
  %3163 = getelementptr inbounds %struct.Reg, %struct.Reg* %3162, i32 0, i32 0
  %PC.i227 = bitcast %union.anon* %3163 to i64*
  %3164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3165 = getelementptr inbounds %struct.GPR, %struct.GPR* %3164, i32 0, i32 1
  %3166 = getelementptr inbounds %struct.Reg, %struct.Reg* %3165, i32 0, i32 0
  %RAX.i228 = bitcast %union.anon* %3166 to i64*
  %3167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3168 = getelementptr inbounds %struct.GPR, %struct.GPR* %3167, i32 0, i32 9
  %3169 = getelementptr inbounds %struct.Reg, %struct.Reg* %3168, i32 0, i32 0
  %RSI.i229 = bitcast %union.anon* %3169 to i64*
  %3170 = load i64, i64* %RAX.i228
  %3171 = load i64, i64* %PC.i227
  %3172 = add i64 %3171, 3
  store i64 %3172, i64* %PC.i227
  store i64 %3170, i64* %RSI.i229, align 8
  store %struct.Memory* %loadMem_4009e3, %struct.Memory** %MEMORY
  %loadMem1_4009e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3174 = getelementptr inbounds %struct.GPR, %struct.GPR* %3173, i32 0, i32 33
  %3175 = getelementptr inbounds %struct.Reg, %struct.Reg* %3174, i32 0, i32 0
  %PC.i226 = bitcast %union.anon* %3175 to i64*
  %3176 = load i64, i64* %PC.i226
  %3177 = add i64 %3176, -950
  %3178 = load i64, i64* %PC.i226
  %3179 = add i64 %3178, 5
  %3180 = load i64, i64* %PC.i226
  %3181 = add i64 %3180, 5
  store i64 %3181, i64* %PC.i226
  %3182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3183 = load i64, i64* %3182, align 8
  %3184 = add i64 %3183, -8
  %3185 = inttoptr i64 %3184 to i64*
  store i64 %3179, i64* %3185
  store i64 %3184, i64* %3182, align 8
  %3186 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3177, i64* %3186, align 8
  store %struct.Memory* %loadMem1_4009e6, %struct.Memory** %MEMORY
  %loadMem2_4009e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4009e6 = load i64, i64* %3
  %call2_4009e6 = call %struct.Memory* @sub_400630.read_bytes(%struct.State* %0, i64 %loadPC_4009e6, %struct.Memory* %loadMem2_4009e6)
  store %struct.Memory* %call2_4009e6, %struct.Memory** %MEMORY
  %loadMem_4009eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %3187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3188 = getelementptr inbounds %struct.GPR, %struct.GPR* %3187, i32 0, i32 33
  %3189 = getelementptr inbounds %struct.Reg, %struct.Reg* %3188, i32 0, i32 0
  %PC.i223 = bitcast %union.anon* %3189 to i64*
  %3190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3191 = getelementptr inbounds %struct.GPR, %struct.GPR* %3190, i32 0, i32 1
  %3192 = getelementptr inbounds %struct.Reg, %struct.Reg* %3191, i32 0, i32 0
  %EAX.i224 = bitcast %union.anon* %3192 to i32*
  %3193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3194 = getelementptr inbounds %struct.GPR, %struct.GPR* %3193, i32 0, i32 15
  %3195 = getelementptr inbounds %struct.Reg, %struct.Reg* %3194, i32 0, i32 0
  %RBP.i225 = bitcast %union.anon* %3195 to i64*
  %3196 = load i64, i64* %RBP.i225
  %3197 = sub i64 %3196, 60
  %3198 = load i32, i32* %EAX.i224
  %3199 = zext i32 %3198 to i64
  %3200 = load i64, i64* %PC.i223
  %3201 = add i64 %3200, 3
  store i64 %3201, i64* %PC.i223
  %3202 = inttoptr i64 %3197 to i32*
  store i32 %3198, i32* %3202
  store %struct.Memory* %loadMem_4009eb, %struct.Memory** %MEMORY
  %loadMem_4009ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %3203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3204 = getelementptr inbounds %struct.GPR, %struct.GPR* %3203, i32 0, i32 33
  %3205 = getelementptr inbounds %struct.Reg, %struct.Reg* %3204, i32 0, i32 0
  %PC.i220 = bitcast %union.anon* %3205 to i64*
  %3206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3207 = getelementptr inbounds %struct.GPR, %struct.GPR* %3206, i32 0, i32 1
  %3208 = getelementptr inbounds %struct.Reg, %struct.Reg* %3207, i32 0, i32 0
  %RAX.i221 = bitcast %union.anon* %3208 to i64*
  %3209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3210 = getelementptr inbounds %struct.GPR, %struct.GPR* %3209, i32 0, i32 15
  %3211 = getelementptr inbounds %struct.Reg, %struct.Reg* %3210, i32 0, i32 0
  %RBP.i222 = bitcast %union.anon* %3211 to i64*
  %3212 = load i64, i64* %RBP.i222
  %3213 = sub i64 %3212, 60
  %3214 = load i64, i64* %PC.i220
  %3215 = add i64 %3214, 3
  store i64 %3215, i64* %PC.i220
  %3216 = inttoptr i64 %3213 to i32*
  %3217 = load i32, i32* %3216
  %3218 = zext i32 %3217 to i64
  store i64 %3218, i64* %RAX.i221, align 8
  store %struct.Memory* %loadMem_4009ee, %struct.Memory** %MEMORY
  %loadMem_4009f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3220 = getelementptr inbounds %struct.GPR, %struct.GPR* %3219, i32 0, i32 33
  %3221 = getelementptr inbounds %struct.Reg, %struct.Reg* %3220, i32 0, i32 0
  %PC.i218 = bitcast %union.anon* %3221 to i64*
  %3222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3223 = getelementptr inbounds %struct.GPR, %struct.GPR* %3222, i32 0, i32 1
  %3224 = getelementptr inbounds %struct.Reg, %struct.Reg* %3223, i32 0, i32 0
  %RAX.i219 = bitcast %union.anon* %3224 to i64*
  %3225 = load i64, i64* %RAX.i219
  %3226 = load i64, i64* %PC.i218
  %3227 = add i64 %3226, 3
  store i64 %3227, i64* %PC.i218
  %3228 = trunc i64 %3225 to i32
  %3229 = sub i32 %3228, 3
  %3230 = zext i32 %3229 to i64
  store i64 %3230, i64* %RAX.i219, align 8
  %3231 = icmp ult i32 %3228, 3
  %3232 = zext i1 %3231 to i8
  %3233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3232, i8* %3233, align 1
  %3234 = and i32 %3229, 255
  %3235 = call i32 @llvm.ctpop.i32(i32 %3234)
  %3236 = trunc i32 %3235 to i8
  %3237 = and i8 %3236, 1
  %3238 = xor i8 %3237, 1
  %3239 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3238, i8* %3239, align 1
  %3240 = xor i64 3, %3225
  %3241 = trunc i64 %3240 to i32
  %3242 = xor i32 %3241, %3229
  %3243 = lshr i32 %3242, 4
  %3244 = trunc i32 %3243 to i8
  %3245 = and i8 %3244, 1
  %3246 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3245, i8* %3246, align 1
  %3247 = icmp eq i32 %3229, 0
  %3248 = zext i1 %3247 to i8
  %3249 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3248, i8* %3249, align 1
  %3250 = lshr i32 %3229, 31
  %3251 = trunc i32 %3250 to i8
  %3252 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3251, i8* %3252, align 1
  %3253 = lshr i32 %3228, 31
  %3254 = xor i32 %3250, %3253
  %3255 = add i32 %3254, %3253
  %3256 = icmp eq i32 %3255, 2
  %3257 = zext i1 %3256 to i8
  %3258 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3257, i8* %3258, align 1
  store %struct.Memory* %loadMem_4009f1, %struct.Memory** %MEMORY
  %loadMem_4009f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3260 = getelementptr inbounds %struct.GPR, %struct.GPR* %3259, i32 0, i32 33
  %3261 = getelementptr inbounds %struct.Reg, %struct.Reg* %3260, i32 0, i32 0
  %PC.i215 = bitcast %union.anon* %3261 to i64*
  %3262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3263 = getelementptr inbounds %struct.GPR, %struct.GPR* %3262, i32 0, i32 1
  %3264 = getelementptr inbounds %struct.Reg, %struct.Reg* %3263, i32 0, i32 0
  %EAX.i216 = bitcast %union.anon* %3264 to i32*
  %3265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3266 = getelementptr inbounds %struct.GPR, %struct.GPR* %3265, i32 0, i32 15
  %3267 = getelementptr inbounds %struct.Reg, %struct.Reg* %3266, i32 0, i32 0
  %RBP.i217 = bitcast %union.anon* %3267 to i64*
  %3268 = load i64, i64* %RBP.i217
  %3269 = sub i64 %3268, 60
  %3270 = load i32, i32* %EAX.i216
  %3271 = zext i32 %3270 to i64
  %3272 = load i64, i64* %PC.i215
  %3273 = add i64 %3272, 3
  store i64 %3273, i64* %PC.i215
  %3274 = inttoptr i64 %3269 to i32*
  store i32 %3270, i32* %3274
  store %struct.Memory* %loadMem_4009f4, %struct.Memory** %MEMORY
  %loadMem_4009f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3276 = getelementptr inbounds %struct.GPR, %struct.GPR* %3275, i32 0, i32 33
  %3277 = getelementptr inbounds %struct.Reg, %struct.Reg* %3276, i32 0, i32 0
  %PC.i212 = bitcast %union.anon* %3277 to i64*
  %3278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3279 = getelementptr inbounds %struct.GPR, %struct.GPR* %3278, i32 0, i32 1
  %3280 = getelementptr inbounds %struct.Reg, %struct.Reg* %3279, i32 0, i32 0
  %RAX.i213 = bitcast %union.anon* %3280 to i64*
  %3281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3282 = getelementptr inbounds %struct.GPR, %struct.GPR* %3281, i32 0, i32 15
  %3283 = getelementptr inbounds %struct.Reg, %struct.Reg* %3282, i32 0, i32 0
  %RBP.i214 = bitcast %union.anon* %3283 to i64*
  %3284 = load i64, i64* %RBP.i214
  %3285 = sub i64 %3284, 60
  %3286 = load i64, i64* %PC.i212
  %3287 = add i64 %3286, 3
  store i64 %3287, i64* %PC.i212
  %3288 = inttoptr i64 %3285 to i32*
  %3289 = load i32, i32* %3288
  %3290 = zext i32 %3289 to i64
  store i64 %3290, i64* %RAX.i213, align 8
  store %struct.Memory* %loadMem_4009f7, %struct.Memory** %MEMORY
  %loadMem_4009fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %3291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3292 = getelementptr inbounds %struct.GPR, %struct.GPR* %3291, i32 0, i32 33
  %3293 = getelementptr inbounds %struct.Reg, %struct.Reg* %3292, i32 0, i32 0
  %PC.i210 = bitcast %union.anon* %3293 to i64*
  %3294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3295 = getelementptr inbounds %struct.GPR, %struct.GPR* %3294, i32 0, i32 1
  %3296 = getelementptr inbounds %struct.Reg, %struct.Reg* %3295, i32 0, i32 0
  %RAX.i211 = bitcast %union.anon* %3296 to i64*
  %3297 = load i64, i64* %RAX.i211
  %3298 = load i64, i64* %PC.i210
  %3299 = add i64 %3298, 3
  store i64 %3299, i64* %PC.i210
  %3300 = and i64 7, %3297
  %3301 = trunc i64 %3300 to i32
  store i64 %3300, i64* %RAX.i211, align 8
  %3302 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3302, align 1
  %3303 = and i32 %3301, 255
  %3304 = call i32 @llvm.ctpop.i32(i32 %3303)
  %3305 = trunc i32 %3304 to i8
  %3306 = and i8 %3305, 1
  %3307 = xor i8 %3306, 1
  %3308 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3307, i8* %3308, align 1
  %3309 = icmp eq i32 %3301, 0
  %3310 = zext i1 %3309 to i8
  %3311 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3310, i8* %3311, align 1
  %3312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %3312, align 1
  %3313 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3313, align 1
  %3314 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3314, align 1
  store %struct.Memory* %loadMem_4009fa, %struct.Memory** %MEMORY
  %loadMem_4009fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %3315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3316 = getelementptr inbounds %struct.GPR, %struct.GPR* %3315, i32 0, i32 33
  %3317 = getelementptr inbounds %struct.Reg, %struct.Reg* %3316, i32 0, i32 0
  %PC.i208 = bitcast %union.anon* %3317 to i64*
  %3318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3319 = getelementptr inbounds %struct.GPR, %struct.GPR* %3318, i32 0, i32 1
  %3320 = getelementptr inbounds %struct.Reg, %struct.Reg* %3319, i32 0, i32 0
  %EAX.i209 = bitcast %union.anon* %3320 to i32*
  %3321 = load i32, i32* %EAX.i209
  %3322 = zext i32 %3321 to i64
  %3323 = load i64, i64* %PC.i208
  %3324 = add i64 %3323, 3
  store i64 %3324, i64* %PC.i208
  %3325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3325, align 1
  %3326 = and i32 %3321, 255
  %3327 = call i32 @llvm.ctpop.i32(i32 %3326)
  %3328 = trunc i32 %3327 to i8
  %3329 = and i8 %3328, 1
  %3330 = xor i8 %3329, 1
  %3331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3330, i8* %3331, align 1
  %3332 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3332, align 1
  %3333 = icmp eq i32 %3321, 0
  %3334 = zext i1 %3333 to i8
  %3335 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3334, i8* %3335, align 1
  %3336 = lshr i32 %3321, 31
  %3337 = trunc i32 %3336 to i8
  %3338 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3337, i8* %3338, align 1
  %3339 = lshr i32 %3321, 31
  %3340 = xor i32 %3336, %3339
  %3341 = add i32 %3340, %3339
  %3342 = icmp eq i32 %3341, 2
  %3343 = zext i1 %3342 to i8
  %3344 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3343, i8* %3344, align 1
  store %struct.Memory* %loadMem_4009fd, %struct.Memory** %MEMORY
  %loadMem_400a00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3346 = getelementptr inbounds %struct.GPR, %struct.GPR* %3345, i32 0, i32 33
  %3347 = getelementptr inbounds %struct.Reg, %struct.Reg* %3346, i32 0, i32 0
  %PC.i207 = bitcast %union.anon* %3347 to i64*
  %3348 = load i64, i64* %PC.i207
  %3349 = add i64 %3348, 18
  %3350 = load i64, i64* %PC.i207
  %3351 = add i64 %3350, 6
  %3352 = load i64, i64* %PC.i207
  %3353 = add i64 %3352, 6
  store i64 %3353, i64* %PC.i207
  %3354 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3355 = load i8, i8* %3354, align 1
  store i8 %3355, i8* %BRANCH_TAKEN, align 1
  %3356 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3357 = icmp ne i8 %3355, 0
  %3358 = select i1 %3357, i64 %3349, i64 %3351
  store i64 %3358, i64* %3356, align 8
  store %struct.Memory* %loadMem_400a00, %struct.Memory** %MEMORY
  %loadBr_400a00 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400a00 = icmp eq i8 %loadBr_400a00, 1
  br i1 %cmpBr_400a00, label %block_.L_400a12, label %block_400a06

block_400a06:                                     ; preds = %block_.L_4009d3
  %loadMem_400a06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3360 = getelementptr inbounds %struct.GPR, %struct.GPR* %3359, i32 0, i32 33
  %3361 = getelementptr inbounds %struct.Reg, %struct.Reg* %3360, i32 0, i32 0
  %PC.i205 = bitcast %union.anon* %3361 to i64*
  %3362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3363 = getelementptr inbounds %struct.GPR, %struct.GPR* %3362, i32 0, i32 15
  %3364 = getelementptr inbounds %struct.Reg, %struct.Reg* %3363, i32 0, i32 0
  %RBP.i206 = bitcast %union.anon* %3364 to i64*
  %3365 = load i64, i64* %RBP.i206
  %3366 = sub i64 %3365, 4
  %3367 = load i64, i64* %PC.i205
  %3368 = add i64 %3367, 7
  store i64 %3368, i64* %PC.i205
  %3369 = inttoptr i64 %3366 to i32*
  store i32 -21, i32* %3369
  store %struct.Memory* %loadMem_400a06, %struct.Memory** %MEMORY
  %loadMem_400a0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3371 = getelementptr inbounds %struct.GPR, %struct.GPR* %3370, i32 0, i32 33
  %3372 = getelementptr inbounds %struct.Reg, %struct.Reg* %3371, i32 0, i32 0
  %PC.i204 = bitcast %union.anon* %3372 to i64*
  %3373 = load i64, i64* %PC.i204
  %3374 = add i64 %3373, 330
  %3375 = load i64, i64* %PC.i204
  %3376 = add i64 %3375, 5
  store i64 %3376, i64* %PC.i204
  %3377 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3374, i64* %3377, align 8
  store %struct.Memory* %loadMem_400a0d, %struct.Memory** %MEMORY
  br label %block_.L_400b57

block_.L_400a12:                                  ; preds = %block_.L_4009d3
  %loadMem_400a12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3379 = getelementptr inbounds %struct.GPR, %struct.GPR* %3378, i32 0, i32 33
  %3380 = getelementptr inbounds %struct.Reg, %struct.Reg* %3379, i32 0, i32 0
  %PC.i201 = bitcast %union.anon* %3380 to i64*
  %3381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3382 = getelementptr inbounds %struct.GPR, %struct.GPR* %3381, i32 0, i32 1
  %3383 = getelementptr inbounds %struct.Reg, %struct.Reg* %3382, i32 0, i32 0
  %RAX.i202 = bitcast %union.anon* %3383 to i64*
  %3384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3385 = getelementptr inbounds %struct.GPR, %struct.GPR* %3384, i32 0, i32 15
  %3386 = getelementptr inbounds %struct.Reg, %struct.Reg* %3385, i32 0, i32 0
  %RBP.i203 = bitcast %union.anon* %3386 to i64*
  %3387 = load i64, i64* %RBP.i203
  %3388 = sub i64 %3387, 60
  %3389 = load i64, i64* %PC.i201
  %3390 = add i64 %3389, 3
  store i64 %3390, i64* %PC.i201
  %3391 = inttoptr i64 %3388 to i32*
  %3392 = load i32, i32* %3391
  %3393 = zext i32 %3392 to i64
  store i64 %3393, i64* %RAX.i202, align 8
  store %struct.Memory* %loadMem_400a12, %struct.Memory** %MEMORY
  %loadMem_400a15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3395 = getelementptr inbounds %struct.GPR, %struct.GPR* %3394, i32 0, i32 33
  %3396 = getelementptr inbounds %struct.Reg, %struct.Reg* %3395, i32 0, i32 0
  %PC.i199 = bitcast %union.anon* %3396 to i64*
  %3397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3398 = getelementptr inbounds %struct.GPR, %struct.GPR* %3397, i32 0, i32 1
  %3399 = getelementptr inbounds %struct.Reg, %struct.Reg* %3398, i32 0, i32 0
  %RAX.i200 = bitcast %union.anon* %3399 to i64*
  %3400 = load i64, i64* %RAX.i200
  %3401 = load i64, i64* %PC.i199
  %3402 = add i64 %3401, 5
  store i64 %3402, i64* %PC.i199
  %3403 = trunc i64 %3400 to i32
  %3404 = sub i32 %3403, -2147483648
  %3405 = zext i32 %3404 to i64
  store i64 %3405, i64* %RAX.i200, align 8
  %3406 = icmp ult i32 %3403, -2147483648
  %3407 = zext i1 %3406 to i8
  %3408 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3407, i8* %3408, align 1
  %3409 = and i32 %3404, 255
  %3410 = call i32 @llvm.ctpop.i32(i32 %3409)
  %3411 = trunc i32 %3410 to i8
  %3412 = and i8 %3411, 1
  %3413 = xor i8 %3412, 1
  %3414 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3413, i8* %3414, align 1
  %3415 = xor i64 -2147483648, %3400
  %3416 = trunc i64 %3415 to i32
  %3417 = xor i32 %3416, %3404
  %3418 = lshr i32 %3417, 4
  %3419 = trunc i32 %3418 to i8
  %3420 = and i8 %3419, 1
  %3421 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3420, i8* %3421, align 1
  %3422 = icmp eq i32 %3404, 0
  %3423 = zext i1 %3422 to i8
  %3424 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3423, i8* %3424, align 1
  %3425 = lshr i32 %3404, 31
  %3426 = trunc i32 %3425 to i8
  %3427 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3426, i8* %3427, align 1
  %3428 = lshr i32 %3403, 31
  %3429 = xor i32 1, %3428
  %3430 = xor i32 %3425, %3428
  %3431 = add i32 %3430, %3429
  %3432 = icmp eq i32 %3431, 2
  %3433 = zext i1 %3432 to i8
  %3434 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3433, i8* %3434, align 1
  store %struct.Memory* %loadMem_400a15, %struct.Memory** %MEMORY
  %loadMem_400a1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3436 = getelementptr inbounds %struct.GPR, %struct.GPR* %3435, i32 0, i32 33
  %3437 = getelementptr inbounds %struct.Reg, %struct.Reg* %3436, i32 0, i32 0
  %PC.i196 = bitcast %union.anon* %3437 to i64*
  %3438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3439 = getelementptr inbounds %struct.GPR, %struct.GPR* %3438, i32 0, i32 1
  %3440 = getelementptr inbounds %struct.Reg, %struct.Reg* %3439, i32 0, i32 0
  %EAX.i197 = bitcast %union.anon* %3440 to i32*
  %3441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3442 = getelementptr inbounds %struct.GPR, %struct.GPR* %3441, i32 0, i32 15
  %3443 = getelementptr inbounds %struct.Reg, %struct.Reg* %3442, i32 0, i32 0
  %RBP.i198 = bitcast %union.anon* %3443 to i64*
  %3444 = load i64, i64* %RBP.i198
  %3445 = sub i64 %3444, 60
  %3446 = load i32, i32* %EAX.i197
  %3447 = zext i32 %3446 to i64
  %3448 = load i64, i64* %PC.i196
  %3449 = add i64 %3448, 3
  store i64 %3449, i64* %PC.i196
  %3450 = inttoptr i64 %3445 to i32*
  store i32 %3446, i32* %3450
  store %struct.Memory* %loadMem_400a1a, %struct.Memory** %MEMORY
  %loadMem_400a1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3452 = getelementptr inbounds %struct.GPR, %struct.GPR* %3451, i32 0, i32 33
  %3453 = getelementptr inbounds %struct.Reg, %struct.Reg* %3452, i32 0, i32 0
  %PC.i194 = bitcast %union.anon* %3453 to i64*
  %3454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3455 = getelementptr inbounds %struct.GPR, %struct.GPR* %3454, i32 0, i32 15
  %3456 = getelementptr inbounds %struct.Reg, %struct.Reg* %3455, i32 0, i32 0
  %RBP.i195 = bitcast %union.anon* %3456 to i64*
  %3457 = load i64, i64* %RBP.i195
  %3458 = sub i64 %3457, 60
  %3459 = load i64, i64* %PC.i194
  %3460 = add i64 %3459, 7
  store i64 %3460, i64* %PC.i194
  %3461 = inttoptr i64 %3458 to i32*
  %3462 = load i32, i32* %3461
  %3463 = sub i32 %3462, 268435455
  %3464 = icmp ult i32 %3462, 268435455
  %3465 = zext i1 %3464 to i8
  %3466 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3465, i8* %3466, align 1
  %3467 = and i32 %3463, 255
  %3468 = call i32 @llvm.ctpop.i32(i32 %3467)
  %3469 = trunc i32 %3468 to i8
  %3470 = and i8 %3469, 1
  %3471 = xor i8 %3470, 1
  %3472 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3471, i8* %3472, align 1
  %3473 = xor i32 %3462, 268435455
  %3474 = xor i32 %3473, %3463
  %3475 = lshr i32 %3474, 4
  %3476 = trunc i32 %3475 to i8
  %3477 = and i8 %3476, 1
  %3478 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3477, i8* %3478, align 1
  %3479 = icmp eq i32 %3463, 0
  %3480 = zext i1 %3479 to i8
  %3481 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3480, i8* %3481, align 1
  %3482 = lshr i32 %3463, 31
  %3483 = trunc i32 %3482 to i8
  %3484 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3483, i8* %3484, align 1
  %3485 = lshr i32 %3462, 31
  %3486 = xor i32 %3482, %3485
  %3487 = add i32 %3486, %3485
  %3488 = icmp eq i32 %3487, 2
  %3489 = zext i1 %3488 to i8
  %3490 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3489, i8* %3490, align 1
  store %struct.Memory* %loadMem_400a1d, %struct.Memory** %MEMORY
  %loadMem_400a24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3492 = getelementptr inbounds %struct.GPR, %struct.GPR* %3491, i32 0, i32 33
  %3493 = getelementptr inbounds %struct.Reg, %struct.Reg* %3492, i32 0, i32 0
  %PC.i193 = bitcast %union.anon* %3493 to i64*
  %3494 = load i64, i64* %PC.i193
  %3495 = add i64 %3494, 18
  %3496 = load i64, i64* %PC.i193
  %3497 = add i64 %3496, 6
  %3498 = load i64, i64* %PC.i193
  %3499 = add i64 %3498, 6
  store i64 %3499, i64* %PC.i193
  %3500 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %3501 = load i8, i8* %3500, align 1
  %3502 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3503 = load i8, i8* %3502, align 1
  %3504 = or i8 %3503, %3501
  %3505 = icmp ne i8 %3504, 0
  %3506 = zext i1 %3505 to i8
  store i8 %3506, i8* %BRANCH_TAKEN, align 1
  %3507 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3508 = select i1 %3505, i64 %3495, i64 %3497
  store i64 %3508, i64* %3507, align 8
  store %struct.Memory* %loadMem_400a24, %struct.Memory** %MEMORY
  %loadBr_400a24 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400a24 = icmp eq i8 %loadBr_400a24, 1
  br i1 %cmpBr_400a24, label %block_.L_400a36, label %block_400a2a

block_400a2a:                                     ; preds = %block_.L_400a12
  %loadMem_400a2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3510 = getelementptr inbounds %struct.GPR, %struct.GPR* %3509, i32 0, i32 33
  %3511 = getelementptr inbounds %struct.Reg, %struct.Reg* %3510, i32 0, i32 0
  %PC.i191 = bitcast %union.anon* %3511 to i64*
  %3512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3513 = getelementptr inbounds %struct.GPR, %struct.GPR* %3512, i32 0, i32 15
  %3514 = getelementptr inbounds %struct.Reg, %struct.Reg* %3513, i32 0, i32 0
  %RBP.i192 = bitcast %union.anon* %3514 to i64*
  %3515 = load i64, i64* %RBP.i192
  %3516 = sub i64 %3515, 4
  %3517 = load i64, i64* %PC.i191
  %3518 = add i64 %3517, 7
  store i64 %3518, i64* %PC.i191
  %3519 = inttoptr i64 %3516 to i32*
  store i32 -22, i32* %3519
  store %struct.Memory* %loadMem_400a2a, %struct.Memory** %MEMORY
  %loadMem_400a31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3521 = getelementptr inbounds %struct.GPR, %struct.GPR* %3520, i32 0, i32 33
  %3522 = getelementptr inbounds %struct.Reg, %struct.Reg* %3521, i32 0, i32 0
  %PC.i190 = bitcast %union.anon* %3522 to i64*
  %3523 = load i64, i64* %PC.i190
  %3524 = add i64 %3523, 294
  %3525 = load i64, i64* %PC.i190
  %3526 = add i64 %3525, 5
  store i64 %3526, i64* %PC.i190
  %3527 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3524, i64* %3527, align 8
  store %struct.Memory* %loadMem_400a31, %struct.Memory** %MEMORY
  br label %block_.L_400b57

block_.L_400a36:                                  ; preds = %block_.L_400a12
  %loadMem_400a36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3529 = getelementptr inbounds %struct.GPR, %struct.GPR* %3528, i32 0, i32 33
  %3530 = getelementptr inbounds %struct.Reg, %struct.Reg* %3529, i32 0, i32 0
  %PC.i188 = bitcast %union.anon* %3530 to i64*
  %3531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3532 = getelementptr inbounds %struct.GPR, %struct.GPR* %3531, i32 0, i32 1
  %3533 = getelementptr inbounds %struct.Reg, %struct.Reg* %3532, i32 0, i32 0
  %RAX.i189 = bitcast %union.anon* %3533 to i64*
  %3534 = load i64, i64* %PC.i188
  %3535 = add i64 %3534, 5
  store i64 %3535, i64* %PC.i188
  store i64 10000, i64* %RAX.i189, align 8
  store %struct.Memory* %loadMem_400a36, %struct.Memory** %MEMORY
  %loadMem_400a3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3536 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3537 = getelementptr inbounds %struct.GPR, %struct.GPR* %3536, i32 0, i32 33
  %3538 = getelementptr inbounds %struct.Reg, %struct.Reg* %3537, i32 0, i32 0
  %PC.i185 = bitcast %union.anon* %3538 to i64*
  %3539 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3540 = getelementptr inbounds %struct.GPR, %struct.GPR* %3539, i32 0, i32 5
  %3541 = getelementptr inbounds %struct.Reg, %struct.Reg* %3540, i32 0, i32 0
  %RCX.i186 = bitcast %union.anon* %3541 to i64*
  %3542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3543 = getelementptr inbounds %struct.GPR, %struct.GPR* %3542, i32 0, i32 15
  %3544 = getelementptr inbounds %struct.Reg, %struct.Reg* %3543, i32 0, i32 0
  %RBP.i187 = bitcast %union.anon* %3544 to i64*
  %3545 = load i64, i64* %RBP.i187
  %3546 = sub i64 %3545, 60
  %3547 = load i64, i64* %PC.i185
  %3548 = add i64 %3547, 3
  store i64 %3548, i64* %PC.i185
  %3549 = inttoptr i64 %3546 to i32*
  %3550 = load i32, i32* %3549
  %3551 = zext i32 %3550 to i64
  store i64 %3551, i64* %RCX.i186, align 8
  store %struct.Memory* %loadMem_400a3b, %struct.Memory** %MEMORY
  %loadMem_400a3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3553 = getelementptr inbounds %struct.GPR, %struct.GPR* %3552, i32 0, i32 33
  %3554 = getelementptr inbounds %struct.Reg, %struct.Reg* %3553, i32 0, i32 0
  %PC.i183 = bitcast %union.anon* %3554 to i64*
  %3555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3556 = getelementptr inbounds %struct.GPR, %struct.GPR* %3555, i32 0, i32 5
  %3557 = getelementptr inbounds %struct.Reg, %struct.Reg* %3556, i32 0, i32 0
  %RCX.i184 = bitcast %union.anon* %3557 to i64*
  %3558 = load i64, i64* %RCX.i184
  %3559 = load i64, i64* %PC.i183
  %3560 = add i64 %3559, 6
  store i64 %3560, i64* %PC.i183
  %3561 = xor i64 13631488, %3558
  %3562 = trunc i64 %3561 to i32
  %3563 = and i64 %3561, 4294967295
  store i64 %3563, i64* %RCX.i184, align 8
  %3564 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3564, align 1
  %3565 = and i32 %3562, 255
  %3566 = call i32 @llvm.ctpop.i32(i32 %3565)
  %3567 = trunc i32 %3566 to i8
  %3568 = and i8 %3567, 1
  %3569 = xor i8 %3568, 1
  %3570 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3569, i8* %3570, align 1
  %3571 = icmp eq i32 %3562, 0
  %3572 = zext i1 %3571 to i8
  %3573 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3572, i8* %3573, align 1
  %3574 = lshr i32 %3562, 31
  %3575 = trunc i32 %3574 to i8
  %3576 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3575, i8* %3576, align 1
  %3577 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3577, align 1
  %3578 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3578, align 1
  store %struct.Memory* %loadMem_400a3e, %struct.Memory** %MEMORY
  %loadMem_400a44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3580 = getelementptr inbounds %struct.GPR, %struct.GPR* %3579, i32 0, i32 33
  %3581 = getelementptr inbounds %struct.Reg, %struct.Reg* %3580, i32 0, i32 0
  %PC.i180 = bitcast %union.anon* %3581 to i64*
  %3582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3583 = getelementptr inbounds %struct.GPR, %struct.GPR* %3582, i32 0, i32 5
  %3584 = getelementptr inbounds %struct.Reg, %struct.Reg* %3583, i32 0, i32 0
  %ECX.i181 = bitcast %union.anon* %3584 to i32*
  %3585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3586 = getelementptr inbounds %struct.GPR, %struct.GPR* %3585, i32 0, i32 15
  %3587 = getelementptr inbounds %struct.Reg, %struct.Reg* %3586, i32 0, i32 0
  %RBP.i182 = bitcast %union.anon* %3587 to i64*
  %3588 = load i64, i64* %RBP.i182
  %3589 = sub i64 %3588, 60
  %3590 = load i32, i32* %ECX.i181
  %3591 = zext i32 %3590 to i64
  %3592 = load i64, i64* %PC.i180
  %3593 = add i64 %3592, 3
  store i64 %3593, i64* %PC.i180
  %3594 = inttoptr i64 %3589 to i32*
  store i32 %3590, i32* %3594
  store %struct.Memory* %loadMem_400a44, %struct.Memory** %MEMORY
  %loadMem_400a47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3596 = getelementptr inbounds %struct.GPR, %struct.GPR* %3595, i32 0, i32 33
  %3597 = getelementptr inbounds %struct.Reg, %struct.Reg* %3596, i32 0, i32 0
  %PC.i177 = bitcast %union.anon* %3597 to i64*
  %3598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3599 = getelementptr inbounds %struct.GPR, %struct.GPR* %3598, i32 0, i32 5
  %3600 = getelementptr inbounds %struct.Reg, %struct.Reg* %3599, i32 0, i32 0
  %RCX.i178 = bitcast %union.anon* %3600 to i64*
  %3601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3602 = getelementptr inbounds %struct.GPR, %struct.GPR* %3601, i32 0, i32 15
  %3603 = getelementptr inbounds %struct.Reg, %struct.Reg* %3602, i32 0, i32 0
  %RBP.i179 = bitcast %union.anon* %3603 to i64*
  %3604 = load i64, i64* %RBP.i179
  %3605 = sub i64 %3604, 60
  %3606 = load i64, i64* %PC.i177
  %3607 = add i64 %3606, 3
  store i64 %3607, i64* %PC.i177
  %3608 = inttoptr i64 %3605 to i32*
  %3609 = load i32, i32* %3608
  %3610 = zext i32 %3609 to i64
  store i64 %3610, i64* %RCX.i178, align 8
  store %struct.Memory* %loadMem_400a47, %struct.Memory** %MEMORY
  %loadMem_400a4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3612 = getelementptr inbounds %struct.GPR, %struct.GPR* %3611, i32 0, i32 33
  %3613 = getelementptr inbounds %struct.Reg, %struct.Reg* %3612, i32 0, i32 0
  %PC.i175 = bitcast %union.anon* %3613 to i64*
  %3614 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3615 = getelementptr inbounds %struct.GPR, %struct.GPR* %3614, i32 0, i32 5
  %3616 = getelementptr inbounds %struct.Reg, %struct.Reg* %3615, i32 0, i32 0
  %RCX.i176 = bitcast %union.anon* %3616 to i64*
  %3617 = load i64, i64* %RCX.i176
  %3618 = load i64, i64* %PC.i175
  %3619 = add i64 %3618, 3
  store i64 %3619, i64* %PC.i175
  %3620 = and i64 %3617, 4294967295
  %3621 = lshr i64 %3620, 3
  %3622 = trunc i64 %3621 to i8
  %3623 = and i8 %3622, 1
  %3624 = lshr i64 %3621, 1
  %3625 = trunc i64 %3624 to i32
  %3626 = and i32 %3625, 2147483647
  %3627 = zext i32 %3626 to i64
  store i64 %3627, i64* %RCX.i176, align 8
  %3628 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3623, i8* %3628, align 1
  %3629 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %3630 = and i32 %3625, 255
  %3631 = call i32 @llvm.ctpop.i32(i32 %3630)
  %3632 = trunc i32 %3631 to i8
  %3633 = and i8 %3632, 1
  %3634 = xor i8 %3633, 1
  store i8 %3634, i8* %3629, align 1
  %3635 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3635, align 1
  %3636 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3637 = icmp eq i32 %3626, 0
  %3638 = zext i1 %3637 to i8
  store i8 %3638, i8* %3636, align 1
  %3639 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %3639, align 1
  %3640 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3640, align 1
  store %struct.Memory* %loadMem_400a4a, %struct.Memory** %MEMORY
  %loadMem_400a4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3641 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3642 = getelementptr inbounds %struct.GPR, %struct.GPR* %3641, i32 0, i32 33
  %3643 = getelementptr inbounds %struct.Reg, %struct.Reg* %3642, i32 0, i32 0
  %PC.i172 = bitcast %union.anon* %3643 to i64*
  %3644 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3645 = getelementptr inbounds %struct.GPR, %struct.GPR* %3644, i32 0, i32 5
  %3646 = getelementptr inbounds %struct.Reg, %struct.Reg* %3645, i32 0, i32 0
  %ECX.i173 = bitcast %union.anon* %3646 to i32*
  %3647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3648 = getelementptr inbounds %struct.GPR, %struct.GPR* %3647, i32 0, i32 15
  %3649 = getelementptr inbounds %struct.Reg, %struct.Reg* %3648, i32 0, i32 0
  %RBP.i174 = bitcast %union.anon* %3649 to i64*
  %3650 = load i64, i64* %RBP.i174
  %3651 = sub i64 %3650, 60
  %3652 = load i32, i32* %ECX.i173
  %3653 = zext i32 %3652 to i64
  %3654 = load i64, i64* %PC.i172
  %3655 = add i64 %3654, 3
  store i64 %3655, i64* %PC.i172
  %3656 = inttoptr i64 %3651 to i32*
  store i32 %3652, i32* %3656
  store %struct.Memory* %loadMem_400a4d, %struct.Memory** %MEMORY
  %loadMem_400a50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3657 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3658 = getelementptr inbounds %struct.GPR, %struct.GPR* %3657, i32 0, i32 33
  %3659 = getelementptr inbounds %struct.Reg, %struct.Reg* %3658, i32 0, i32 0
  %PC.i169 = bitcast %union.anon* %3659 to i64*
  %3660 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3661 = getelementptr inbounds %struct.GPR, %struct.GPR* %3660, i32 0, i32 5
  %3662 = getelementptr inbounds %struct.Reg, %struct.Reg* %3661, i32 0, i32 0
  %RCX.i170 = bitcast %union.anon* %3662 to i64*
  %3663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3664 = getelementptr inbounds %struct.GPR, %struct.GPR* %3663, i32 0, i32 15
  %3665 = getelementptr inbounds %struct.Reg, %struct.Reg* %3664, i32 0, i32 0
  %RBP.i171 = bitcast %union.anon* %3665 to i64*
  %3666 = load i64, i64* %RBP.i171
  %3667 = sub i64 %3666, 60
  %3668 = load i64, i64* %PC.i169
  %3669 = add i64 %3668, 3
  store i64 %3669, i64* %PC.i169
  %3670 = inttoptr i64 %3667 to i32*
  %3671 = load i32, i32* %3670
  %3672 = zext i32 %3671 to i64
  store i64 %3672, i64* %RCX.i170, align 8
  store %struct.Memory* %loadMem_400a50, %struct.Memory** %MEMORY
  %loadMem_400a53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3673 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3674 = getelementptr inbounds %struct.GPR, %struct.GPR* %3673, i32 0, i32 33
  %3675 = getelementptr inbounds %struct.Reg, %struct.Reg* %3674, i32 0, i32 0
  %PC.i167 = bitcast %union.anon* %3675 to i64*
  %3676 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3677 = getelementptr inbounds %struct.GPR, %struct.GPR* %3676, i32 0, i32 5
  %3678 = getelementptr inbounds %struct.Reg, %struct.Reg* %3677, i32 0, i32 0
  %RCX.i168 = bitcast %union.anon* %3678 to i64*
  %3679 = load i64, i64* %RCX.i168
  %3680 = load i64, i64* %PC.i167
  %3681 = add i64 %3680, 6
  store i64 %3681, i64* %PC.i167
  %3682 = trunc i64 %3679 to i32
  %3683 = sub i32 %3682, 226
  %3684 = zext i32 %3683 to i64
  store i64 %3684, i64* %RCX.i168, align 8
  %3685 = icmp ult i32 %3682, 226
  %3686 = zext i1 %3685 to i8
  %3687 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3686, i8* %3687, align 1
  %3688 = and i32 %3683, 255
  %3689 = call i32 @llvm.ctpop.i32(i32 %3688)
  %3690 = trunc i32 %3689 to i8
  %3691 = and i8 %3690, 1
  %3692 = xor i8 %3691, 1
  %3693 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3692, i8* %3693, align 1
  %3694 = xor i64 226, %3679
  %3695 = trunc i64 %3694 to i32
  %3696 = xor i32 %3695, %3683
  %3697 = lshr i32 %3696, 4
  %3698 = trunc i32 %3697 to i8
  %3699 = and i8 %3698, 1
  %3700 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3699, i8* %3700, align 1
  %3701 = icmp eq i32 %3683, 0
  %3702 = zext i1 %3701 to i8
  %3703 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3702, i8* %3703, align 1
  %3704 = lshr i32 %3683, 31
  %3705 = trunc i32 %3704 to i8
  %3706 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3705, i8* %3706, align 1
  %3707 = lshr i32 %3682, 31
  %3708 = xor i32 %3704, %3707
  %3709 = add i32 %3708, %3707
  %3710 = icmp eq i32 %3709, 2
  %3711 = zext i1 %3710 to i8
  %3712 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3711, i8* %3712, align 1
  store %struct.Memory* %loadMem_400a53, %struct.Memory** %MEMORY
  %loadMem_400a59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3714 = getelementptr inbounds %struct.GPR, %struct.GPR* %3713, i32 0, i32 33
  %3715 = getelementptr inbounds %struct.Reg, %struct.Reg* %3714, i32 0, i32 0
  %PC.i164 = bitcast %union.anon* %3715 to i64*
  %3716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3717 = getelementptr inbounds %struct.GPR, %struct.GPR* %3716, i32 0, i32 5
  %3718 = getelementptr inbounds %struct.Reg, %struct.Reg* %3717, i32 0, i32 0
  %ECX.i165 = bitcast %union.anon* %3718 to i32*
  %3719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3720 = getelementptr inbounds %struct.GPR, %struct.GPR* %3719, i32 0, i32 15
  %3721 = getelementptr inbounds %struct.Reg, %struct.Reg* %3720, i32 0, i32 0
  %RBP.i166 = bitcast %union.anon* %3721 to i64*
  %3722 = load i64, i64* %RBP.i166
  %3723 = sub i64 %3722, 60
  %3724 = load i32, i32* %ECX.i165
  %3725 = zext i32 %3724 to i64
  %3726 = load i64, i64* %PC.i164
  %3727 = add i64 %3726, 3
  store i64 %3727, i64* %PC.i164
  %3728 = inttoptr i64 %3723 to i32*
  store i32 %3724, i32* %3728
  store %struct.Memory* %loadMem_400a59, %struct.Memory** %MEMORY
  %loadMem_400a5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3730 = getelementptr inbounds %struct.GPR, %struct.GPR* %3729, i32 0, i32 33
  %3731 = getelementptr inbounds %struct.Reg, %struct.Reg* %3730, i32 0, i32 0
  %PC.i161 = bitcast %union.anon* %3731 to i64*
  %3732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3733 = getelementptr inbounds %struct.GPR, %struct.GPR* %3732, i32 0, i32 5
  %3734 = getelementptr inbounds %struct.Reg, %struct.Reg* %3733, i32 0, i32 0
  %RCX.i162 = bitcast %union.anon* %3734 to i64*
  %3735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3736 = getelementptr inbounds %struct.GPR, %struct.GPR* %3735, i32 0, i32 15
  %3737 = getelementptr inbounds %struct.Reg, %struct.Reg* %3736, i32 0, i32 0
  %RBP.i163 = bitcast %union.anon* %3737 to i64*
  %3738 = load i64, i64* %RBP.i163
  %3739 = sub i64 %3738, 60
  %3740 = load i64, i64* %PC.i161
  %3741 = add i64 %3740, 3
  store i64 %3741, i64* %PC.i161
  %3742 = inttoptr i64 %3739 to i32*
  %3743 = load i32, i32* %3742
  %3744 = zext i32 %3743 to i64
  store i64 %3744, i64* %RCX.i162, align 8
  store %struct.Memory* %loadMem_400a5c, %struct.Memory** %MEMORY
  %loadMem_400a5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3746 = getelementptr inbounds %struct.GPR, %struct.GPR* %3745, i32 0, i32 33
  %3747 = getelementptr inbounds %struct.Reg, %struct.Reg* %3746, i32 0, i32 0
  %PC.i158 = bitcast %union.anon* %3747 to i64*
  %3748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3749 = getelementptr inbounds %struct.GPR, %struct.GPR* %3748, i32 0, i32 1
  %3750 = getelementptr inbounds %struct.Reg, %struct.Reg* %3749, i32 0, i32 0
  %EAX.i159 = bitcast %union.anon* %3750 to i32*
  %3751 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3752 = getelementptr inbounds %struct.GPR, %struct.GPR* %3751, i32 0, i32 15
  %3753 = getelementptr inbounds %struct.Reg, %struct.Reg* %3752, i32 0, i32 0
  %RBP.i160 = bitcast %union.anon* %3753 to i64*
  %3754 = load i64, i64* %RBP.i160
  %3755 = sub i64 %3754, 68
  %3756 = load i32, i32* %EAX.i159
  %3757 = zext i32 %3756 to i64
  %3758 = load i64, i64* %PC.i158
  %3759 = add i64 %3758, 3
  store i64 %3759, i64* %PC.i158
  %3760 = inttoptr i64 %3755 to i32*
  store i32 %3756, i32* %3760
  store %struct.Memory* %loadMem_400a5f, %struct.Memory** %MEMORY
  %loadMem_400a62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3761 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3762 = getelementptr inbounds %struct.GPR, %struct.GPR* %3761, i32 0, i32 33
  %3763 = getelementptr inbounds %struct.Reg, %struct.Reg* %3762, i32 0, i32 0
  %PC.i155 = bitcast %union.anon* %3763 to i64*
  %3764 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3765 = getelementptr inbounds %struct.GPR, %struct.GPR* %3764, i32 0, i32 5
  %3766 = getelementptr inbounds %struct.Reg, %struct.Reg* %3765, i32 0, i32 0
  %ECX.i156 = bitcast %union.anon* %3766 to i32*
  %3767 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3768 = getelementptr inbounds %struct.GPR, %struct.GPR* %3767, i32 0, i32 1
  %3769 = getelementptr inbounds %struct.Reg, %struct.Reg* %3768, i32 0, i32 0
  %RAX.i157 = bitcast %union.anon* %3769 to i64*
  %3770 = load i32, i32* %ECX.i156
  %3771 = zext i32 %3770 to i64
  %3772 = load i64, i64* %PC.i155
  %3773 = add i64 %3772, 2
  store i64 %3773, i64* %PC.i155
  %3774 = and i64 %3771, 4294967295
  store i64 %3774, i64* %RAX.i157, align 8
  store %struct.Memory* %loadMem_400a62, %struct.Memory** %MEMORY
  %loadMem_400a64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3775 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3776 = getelementptr inbounds %struct.GPR, %struct.GPR* %3775, i32 0, i32 33
  %3777 = getelementptr inbounds %struct.Reg, %struct.Reg* %3776, i32 0, i32 0
  %PC.i152 = bitcast %union.anon* %3777 to i64*
  %3778 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3779 = getelementptr inbounds %struct.GPR, %struct.GPR* %3778, i32 0, i32 7
  %3780 = getelementptr inbounds %struct.Reg, %struct.Reg* %3779, i32 0, i32 0
  %EDX.i153 = bitcast %union.anon* %3780 to i32*
  %3781 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3782 = getelementptr inbounds %struct.GPR, %struct.GPR* %3781, i32 0, i32 7
  %3783 = getelementptr inbounds %struct.Reg, %struct.Reg* %3782, i32 0, i32 0
  %RDX.i154 = bitcast %union.anon* %3783 to i64*
  %3784 = load i64, i64* %RDX.i154
  %3785 = load i32, i32* %EDX.i153
  %3786 = zext i32 %3785 to i64
  %3787 = load i64, i64* %PC.i152
  %3788 = add i64 %3787, 2
  store i64 %3788, i64* %PC.i152
  %3789 = xor i64 %3786, %3784
  %3790 = trunc i64 %3789 to i32
  %3791 = and i64 %3789, 4294967295
  store i64 %3791, i64* %RDX.i154, align 8
  %3792 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3792, align 1
  %3793 = and i32 %3790, 255
  %3794 = call i32 @llvm.ctpop.i32(i32 %3793)
  %3795 = trunc i32 %3794 to i8
  %3796 = and i8 %3795, 1
  %3797 = xor i8 %3796, 1
  %3798 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3797, i8* %3798, align 1
  %3799 = icmp eq i32 %3790, 0
  %3800 = zext i1 %3799 to i8
  %3801 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3800, i8* %3801, align 1
  %3802 = lshr i32 %3790, 31
  %3803 = trunc i32 %3802 to i8
  %3804 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3803, i8* %3804, align 1
  %3805 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3805, align 1
  %3806 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3806, align 1
  store %struct.Memory* %loadMem_400a64, %struct.Memory** %MEMORY
  %loadMem_400a66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3808 = getelementptr inbounds %struct.GPR, %struct.GPR* %3807, i32 0, i32 33
  %3809 = getelementptr inbounds %struct.Reg, %struct.Reg* %3808, i32 0, i32 0
  %PC.i149 = bitcast %union.anon* %3809 to i64*
  %3810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3811 = getelementptr inbounds %struct.GPR, %struct.GPR* %3810, i32 0, i32 5
  %3812 = getelementptr inbounds %struct.Reg, %struct.Reg* %3811, i32 0, i32 0
  %RCX.i150 = bitcast %union.anon* %3812 to i64*
  %3813 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3814 = getelementptr inbounds %struct.GPR, %struct.GPR* %3813, i32 0, i32 15
  %3815 = getelementptr inbounds %struct.Reg, %struct.Reg* %3814, i32 0, i32 0
  %RBP.i151 = bitcast %union.anon* %3815 to i64*
  %3816 = load i64, i64* %RBP.i151
  %3817 = sub i64 %3816, 68
  %3818 = load i64, i64* %PC.i149
  %3819 = add i64 %3818, 3
  store i64 %3819, i64* %PC.i149
  %3820 = inttoptr i64 %3817 to i32*
  %3821 = load i32, i32* %3820
  %3822 = zext i32 %3821 to i64
  store i64 %3822, i64* %RCX.i150, align 8
  store %struct.Memory* %loadMem_400a66, %struct.Memory** %MEMORY
  %loadMem_400a69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3824 = getelementptr inbounds %struct.GPR, %struct.GPR* %3823, i32 0, i32 33
  %3825 = getelementptr inbounds %struct.Reg, %struct.Reg* %3824, i32 0, i32 0
  %PC.i144 = bitcast %union.anon* %3825 to i64*
  %3826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3827 = getelementptr inbounds %struct.GPR, %struct.GPR* %3826, i32 0, i32 5
  %3828 = getelementptr inbounds %struct.Reg, %struct.Reg* %3827, i32 0, i32 0
  %ECX.i145 = bitcast %union.anon* %3828 to i32*
  %3829 = load i32, i32* %ECX.i145
  %3830 = zext i32 %3829 to i64
  %3831 = load i64, i64* %PC.i144
  %3832 = add i64 %3831, 2
  store i64 %3832, i64* %PC.i144
  %3833 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %3834 = bitcast %union.anon* %3833 to i32*
  %3835 = load i32, i32* %3834, align 8
  %3836 = zext i32 %3835 to i64
  %3837 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %3838 = bitcast %union.anon* %3837 to i32*
  %3839 = load i32, i32* %3838, align 8
  %3840 = zext i32 %3839 to i64
  %3841 = and i64 %3830, 4294967295
  %3842 = shl i64 %3840, 32
  %3843 = or i64 %3842, %3836
  %3844 = udiv i64 %3843, %3841
  %3845 = and i64 %3844, 4294967295
  %3846 = icmp eq i64 %3844, %3845
  br i1 %3846, label %3851, label %3847

; <label>:3847:                                   ; preds = %block_.L_400a36
  %3848 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3849 = load i64, i64* %3848, align 8
  %3850 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3849, %struct.Memory* %loadMem_400a69)
  br label %routine_divl__ecx.exit

; <label>:3851:                                   ; preds = %block_.L_400a36
  %3852 = urem i64 %3843, %3841
  %3853 = getelementptr inbounds %union.anon, %union.anon* %3833, i64 0, i32 0
  store i64 %3844, i64* %3853, align 8
  %3854 = getelementptr inbounds %union.anon, %union.anon* %3837, i64 0, i32 0
  store i64 %3852, i64* %3854, align 8
  %3855 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3855, align 1
  %3856 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %3856, align 1
  %3857 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3857, align 1
  %3858 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3858, align 1
  %3859 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %3859, align 1
  %3860 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3860, align 1
  br label %routine_divl__ecx.exit

routine_divl__ecx.exit:                           ; preds = %3847, %3851
  %3861 = phi %struct.Memory* [ %3850, %3847 ], [ %loadMem_400a69, %3851 ]
  store %struct.Memory* %3861, %struct.Memory** %MEMORY
  %loadMem_400a6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3862 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3863 = getelementptr inbounds %struct.GPR, %struct.GPR* %3862, i32 0, i32 33
  %3864 = getelementptr inbounds %struct.Reg, %struct.Reg* %3863, i32 0, i32 0
  %PC.i141 = bitcast %union.anon* %3864 to i64*
  %3865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3866 = getelementptr inbounds %struct.GPR, %struct.GPR* %3865, i32 0, i32 1
  %3867 = getelementptr inbounds %struct.Reg, %struct.Reg* %3866, i32 0, i32 0
  %EAX.i142 = bitcast %union.anon* %3867 to i32*
  %3868 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3869 = getelementptr inbounds %struct.GPR, %struct.GPR* %3868, i32 0, i32 15
  %3870 = getelementptr inbounds %struct.Reg, %struct.Reg* %3869, i32 0, i32 0
  %RBP.i143 = bitcast %union.anon* %3870 to i64*
  %3871 = load i64, i64* %RBP.i143
  %3872 = sub i64 %3871, 60
  %3873 = load i32, i32* %EAX.i142
  %3874 = zext i32 %3873 to i64
  %3875 = load i64, i64* %PC.i141
  %3876 = add i64 %3875, 3
  store i64 %3876, i64* %PC.i141
  %3877 = inttoptr i64 %3872 to i32*
  store i32 %3873, i32* %3877
  store %struct.Memory* %loadMem_400a6b, %struct.Memory** %MEMORY
  %loadMem_400a6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3878 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3879 = getelementptr inbounds %struct.GPR, %struct.GPR* %3878, i32 0, i32 33
  %3880 = getelementptr inbounds %struct.Reg, %struct.Reg* %3879, i32 0, i32 0
  %PC.i139 = bitcast %union.anon* %3880 to i64*
  %3881 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3882 = getelementptr inbounds %struct.GPR, %struct.GPR* %3881, i32 0, i32 15
  %3883 = getelementptr inbounds %struct.Reg, %struct.Reg* %3882, i32 0, i32 0
  %RBP.i140 = bitcast %union.anon* %3883 to i64*
  %3884 = load i64, i64* %RBP.i140
  %3885 = sub i64 %3884, 60
  %3886 = load i64, i64* %PC.i139
  %3887 = add i64 %3886, 4
  store i64 %3887, i64* %PC.i139
  %3888 = inttoptr i64 %3885 to i32*
  %3889 = load i32, i32* %3888
  %3890 = sub i32 %3889, 3
  %3891 = icmp ult i32 %3889, 3
  %3892 = zext i1 %3891 to i8
  %3893 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3892, i8* %3893, align 1
  %3894 = and i32 %3890, 255
  %3895 = call i32 @llvm.ctpop.i32(i32 %3894)
  %3896 = trunc i32 %3895 to i8
  %3897 = and i8 %3896, 1
  %3898 = xor i8 %3897, 1
  %3899 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3898, i8* %3899, align 1
  %3900 = xor i32 %3889, 3
  %3901 = xor i32 %3900, %3890
  %3902 = lshr i32 %3901, 4
  %3903 = trunc i32 %3902 to i8
  %3904 = and i8 %3903, 1
  %3905 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3904, i8* %3905, align 1
  %3906 = icmp eq i32 %3890, 0
  %3907 = zext i1 %3906 to i8
  %3908 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3907, i8* %3908, align 1
  %3909 = lshr i32 %3890, 31
  %3910 = trunc i32 %3909 to i8
  %3911 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3910, i8* %3911, align 1
  %3912 = lshr i32 %3889, 31
  %3913 = xor i32 %3909, %3912
  %3914 = add i32 %3913, %3912
  %3915 = icmp eq i32 %3914, 2
  %3916 = zext i1 %3915 to i8
  %3917 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3916, i8* %3917, align 1
  store %struct.Memory* %loadMem_400a6e, %struct.Memory** %MEMORY
  %loadMem_400a72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3918 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3919 = getelementptr inbounds %struct.GPR, %struct.GPR* %3918, i32 0, i32 33
  %3920 = getelementptr inbounds %struct.Reg, %struct.Reg* %3919, i32 0, i32 0
  %PC.i138 = bitcast %union.anon* %3920 to i64*
  %3921 = load i64, i64* %PC.i138
  %3922 = add i64 %3921, 17
  %3923 = load i64, i64* %PC.i138
  %3924 = add i64 %3923, 6
  %3925 = load i64, i64* %PC.i138
  %3926 = add i64 %3925, 6
  store i64 %3926, i64* %PC.i138
  %3927 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3928 = load i8, i8* %3927, align 1
  store i8 %3928, i8* %BRANCH_TAKEN, align 1
  %3929 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3930 = icmp ne i8 %3928, 0
  %3931 = select i1 %3930, i64 %3922, i64 %3924
  store i64 %3931, i64* %3929, align 8
  store %struct.Memory* %loadMem_400a72, %struct.Memory** %MEMORY
  %loadBr_400a72 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400a72 = icmp eq i8 %loadBr_400a72, 1
  br i1 %cmpBr_400a72, label %block_.L_400a83, label %block_400a78

block_400a78:                                     ; preds = %routine_divl__ecx.exit
  %loadMem_400a78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3932 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3933 = getelementptr inbounds %struct.GPR, %struct.GPR* %3932, i32 0, i32 33
  %3934 = getelementptr inbounds %struct.Reg, %struct.Reg* %3933, i32 0, i32 0
  %PC.i135 = bitcast %union.anon* %3934 to i64*
  %3935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3936 = getelementptr inbounds %struct.GPR, %struct.GPR* %3935, i32 0, i32 1
  %3937 = getelementptr inbounds %struct.Reg, %struct.Reg* %3936, i32 0, i32 0
  %RAX.i136 = bitcast %union.anon* %3937 to i64*
  %3938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3939 = getelementptr inbounds %struct.GPR, %struct.GPR* %3938, i32 0, i32 15
  %3940 = getelementptr inbounds %struct.Reg, %struct.Reg* %3939, i32 0, i32 0
  %RBP.i137 = bitcast %union.anon* %3940 to i64*
  %3941 = load i64, i64* %RBP.i137
  %3942 = sub i64 %3941, 60
  %3943 = load i64, i64* %PC.i135
  %3944 = add i64 %3943, 3
  store i64 %3944, i64* %PC.i135
  %3945 = inttoptr i64 %3942 to i32*
  %3946 = load i32, i32* %3945
  %3947 = zext i32 %3946 to i64
  store i64 %3947, i64* %RAX.i136, align 8
  store %struct.Memory* %loadMem_400a78, %struct.Memory** %MEMORY
  %loadMem_400a7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3948 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3949 = getelementptr inbounds %struct.GPR, %struct.GPR* %3948, i32 0, i32 33
  %3950 = getelementptr inbounds %struct.Reg, %struct.Reg* %3949, i32 0, i32 0
  %PC.i132 = bitcast %union.anon* %3950 to i64*
  %3951 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3952 = getelementptr inbounds %struct.GPR, %struct.GPR* %3951, i32 0, i32 1
  %3953 = getelementptr inbounds %struct.Reg, %struct.Reg* %3952, i32 0, i32 0
  %EAX.i133 = bitcast %union.anon* %3953 to i32*
  %3954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3955 = getelementptr inbounds %struct.GPR, %struct.GPR* %3954, i32 0, i32 15
  %3956 = getelementptr inbounds %struct.Reg, %struct.Reg* %3955, i32 0, i32 0
  %RBP.i134 = bitcast %union.anon* %3956 to i64*
  %3957 = load i64, i64* %RBP.i134
  %3958 = sub i64 %3957, 4
  %3959 = load i32, i32* %EAX.i133
  %3960 = zext i32 %3959 to i64
  %3961 = load i64, i64* %PC.i132
  %3962 = add i64 %3961, 3
  store i64 %3962, i64* %PC.i132
  %3963 = inttoptr i64 %3958 to i32*
  store i32 %3959, i32* %3963
  store %struct.Memory* %loadMem_400a7b, %struct.Memory** %MEMORY
  %loadMem_400a7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3965 = getelementptr inbounds %struct.GPR, %struct.GPR* %3964, i32 0, i32 33
  %3966 = getelementptr inbounds %struct.Reg, %struct.Reg* %3965, i32 0, i32 0
  %PC.i131 = bitcast %union.anon* %3966 to i64*
  %3967 = load i64, i64* %PC.i131
  %3968 = add i64 %3967, 217
  %3969 = load i64, i64* %PC.i131
  %3970 = add i64 %3969, 5
  store i64 %3970, i64* %PC.i131
  %3971 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3968, i64* %3971, align 8
  store %struct.Memory* %loadMem_400a7e, %struct.Memory** %MEMORY
  br label %block_.L_400b57

block_.L_400a83:                                  ; preds = %routine_divl__ecx.exit
  %loadMem_400a83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3972 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3973 = getelementptr inbounds %struct.GPR, %struct.GPR* %3972, i32 0, i32 33
  %3974 = getelementptr inbounds %struct.Reg, %struct.Reg* %3973, i32 0, i32 0
  %PC.i129 = bitcast %union.anon* %3974 to i64*
  %3975 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3976 = getelementptr inbounds %struct.GPR, %struct.GPR* %3975, i32 0, i32 7
  %3977 = getelementptr inbounds %struct.Reg, %struct.Reg* %3976, i32 0, i32 0
  %RDX.i130 = bitcast %union.anon* %3977 to i64*
  %3978 = load i64, i64* %PC.i129
  %3979 = add i64 %3978, 5
  store i64 %3979, i64* %PC.i129
  store i64 4, i64* %RDX.i130, align 8
  store %struct.Memory* %loadMem_400a83, %struct.Memory** %MEMORY
  %loadMem_400a88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3980 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3981 = getelementptr inbounds %struct.GPR, %struct.GPR* %3980, i32 0, i32 33
  %3982 = getelementptr inbounds %struct.Reg, %struct.Reg* %3981, i32 0, i32 0
  %PC.i126 = bitcast %union.anon* %3982 to i64*
  %3983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3984 = getelementptr inbounds %struct.GPR, %struct.GPR* %3983, i32 0, i32 11
  %3985 = getelementptr inbounds %struct.Reg, %struct.Reg* %3984, i32 0, i32 0
  %RDI.i127 = bitcast %union.anon* %3985 to i64*
  %3986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3987 = getelementptr inbounds %struct.GPR, %struct.GPR* %3986, i32 0, i32 15
  %3988 = getelementptr inbounds %struct.Reg, %struct.Reg* %3987, i32 0, i32 0
  %RBP.i128 = bitcast %union.anon* %3988 to i64*
  %3989 = load i64, i64* %RBP.i128
  %3990 = sub i64 %3989, 20
  %3991 = load i64, i64* %PC.i126
  %3992 = add i64 %3991, 3
  store i64 %3992, i64* %PC.i126
  %3993 = inttoptr i64 %3990 to i32*
  %3994 = load i32, i32* %3993
  %3995 = zext i32 %3994 to i64
  store i64 %3995, i64* %RDI.i127, align 8
  store %struct.Memory* %loadMem_400a88, %struct.Memory** %MEMORY
  %loadMem_400a8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3996 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3997 = getelementptr inbounds %struct.GPR, %struct.GPR* %3996, i32 0, i32 33
  %3998 = getelementptr inbounds %struct.Reg, %struct.Reg* %3997, i32 0, i32 0
  %PC.i123 = bitcast %union.anon* %3998 to i64*
  %3999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4000 = getelementptr inbounds %struct.GPR, %struct.GPR* %3999, i32 0, i32 1
  %4001 = getelementptr inbounds %struct.Reg, %struct.Reg* %4000, i32 0, i32 0
  %RAX.i124 = bitcast %union.anon* %4001 to i64*
  %4002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4003 = getelementptr inbounds %struct.GPR, %struct.GPR* %4002, i32 0, i32 15
  %4004 = getelementptr inbounds %struct.Reg, %struct.Reg* %4003, i32 0, i32 0
  %RBP.i125 = bitcast %union.anon* %4004 to i64*
  %4005 = load i64, i64* %RBP.i125
  %4006 = sub i64 %4005, 16
  %4007 = load i64, i64* %PC.i123
  %4008 = add i64 %4007, 4
  store i64 %4008, i64* %PC.i123
  %4009 = inttoptr i64 %4006 to i64*
  %4010 = load i64, i64* %4009
  store i64 %4010, i64* %RAX.i124, align 8
  store %struct.Memory* %loadMem_400a8b, %struct.Memory** %MEMORY
  %loadMem_400a8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4011 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4012 = getelementptr inbounds %struct.GPR, %struct.GPR* %4011, i32 0, i32 33
  %4013 = getelementptr inbounds %struct.Reg, %struct.Reg* %4012, i32 0, i32 0
  %PC.i121 = bitcast %union.anon* %4013 to i64*
  %4014 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4015 = getelementptr inbounds %struct.GPR, %struct.GPR* %4014, i32 0, i32 1
  %4016 = getelementptr inbounds %struct.Reg, %struct.Reg* %4015, i32 0, i32 0
  %RAX.i122 = bitcast %union.anon* %4016 to i64*
  %4017 = load i64, i64* %RAX.i122
  %4018 = load i64, i64* %PC.i121
  %4019 = add i64 %4018, 4
  store i64 %4019, i64* %PC.i121
  %4020 = add i64 28, %4017
  store i64 %4020, i64* %RAX.i122, align 8
  %4021 = icmp ult i64 %4020, %4017
  %4022 = icmp ult i64 %4020, 28
  %4023 = or i1 %4021, %4022
  %4024 = zext i1 %4023 to i8
  %4025 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4024, i8* %4025, align 1
  %4026 = trunc i64 %4020 to i32
  %4027 = and i32 %4026, 255
  %4028 = call i32 @llvm.ctpop.i32(i32 %4027)
  %4029 = trunc i32 %4028 to i8
  %4030 = and i8 %4029, 1
  %4031 = xor i8 %4030, 1
  %4032 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4031, i8* %4032, align 1
  %4033 = xor i64 28, %4017
  %4034 = xor i64 %4033, %4020
  %4035 = lshr i64 %4034, 4
  %4036 = trunc i64 %4035 to i8
  %4037 = and i8 %4036, 1
  %4038 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4037, i8* %4038, align 1
  %4039 = icmp eq i64 %4020, 0
  %4040 = zext i1 %4039 to i8
  %4041 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4040, i8* %4041, align 1
  %4042 = lshr i64 %4020, 63
  %4043 = trunc i64 %4042 to i8
  %4044 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4043, i8* %4044, align 1
  %4045 = lshr i64 %4017, 63
  %4046 = xor i64 %4042, %4045
  %4047 = add i64 %4046, %4042
  %4048 = icmp eq i64 %4047, 2
  %4049 = zext i1 %4048 to i8
  %4050 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4049, i8* %4050, align 1
  store %struct.Memory* %loadMem_400a8f, %struct.Memory** %MEMORY
  %loadMem_400a93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4051 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4052 = getelementptr inbounds %struct.GPR, %struct.GPR* %4051, i32 0, i32 33
  %4053 = getelementptr inbounds %struct.Reg, %struct.Reg* %4052, i32 0, i32 0
  %PC.i118 = bitcast %union.anon* %4053 to i64*
  %4054 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4055 = getelementptr inbounds %struct.GPR, %struct.GPR* %4054, i32 0, i32 1
  %4056 = getelementptr inbounds %struct.Reg, %struct.Reg* %4055, i32 0, i32 0
  %RAX.i119 = bitcast %union.anon* %4056 to i64*
  %4057 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4058 = getelementptr inbounds %struct.GPR, %struct.GPR* %4057, i32 0, i32 9
  %4059 = getelementptr inbounds %struct.Reg, %struct.Reg* %4058, i32 0, i32 0
  %RSI.i120 = bitcast %union.anon* %4059 to i64*
  %4060 = load i64, i64* %RAX.i119
  %4061 = load i64, i64* %PC.i118
  %4062 = add i64 %4061, 3
  store i64 %4062, i64* %PC.i118
  store i64 %4060, i64* %RSI.i120, align 8
  store %struct.Memory* %loadMem_400a93, %struct.Memory** %MEMORY
  %loadMem1_400a96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4063 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4064 = getelementptr inbounds %struct.GPR, %struct.GPR* %4063, i32 0, i32 33
  %4065 = getelementptr inbounds %struct.Reg, %struct.Reg* %4064, i32 0, i32 0
  %PC.i117 = bitcast %union.anon* %4065 to i64*
  %4066 = load i64, i64* %PC.i117
  %4067 = add i64 %4066, -1126
  %4068 = load i64, i64* %PC.i117
  %4069 = add i64 %4068, 5
  %4070 = load i64, i64* %PC.i117
  %4071 = add i64 %4070, 5
  store i64 %4071, i64* %PC.i117
  %4072 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4073 = load i64, i64* %4072, align 8
  %4074 = add i64 %4073, -8
  %4075 = inttoptr i64 %4074 to i64*
  store i64 %4069, i64* %4075
  store i64 %4074, i64* %4072, align 8
  %4076 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4067, i64* %4076, align 8
  store %struct.Memory* %loadMem1_400a96, %struct.Memory** %MEMORY
  %loadMem2_400a96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400a96 = load i64, i64* %3
  %call2_400a96 = call %struct.Memory* @sub_400630.read_bytes(%struct.State* %0, i64 %loadPC_400a96, %struct.Memory* %loadMem2_400a96)
  store %struct.Memory* %call2_400a96, %struct.Memory** %MEMORY
  %loadMem_400a9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4078 = getelementptr inbounds %struct.GPR, %struct.GPR* %4077, i32 0, i32 33
  %4079 = getelementptr inbounds %struct.Reg, %struct.Reg* %4078, i32 0, i32 0
  %PC.i114 = bitcast %union.anon* %4079 to i64*
  %4080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4081 = getelementptr inbounds %struct.GPR, %struct.GPR* %4080, i32 0, i32 1
  %4082 = getelementptr inbounds %struct.Reg, %struct.Reg* %4081, i32 0, i32 0
  %EAX.i115 = bitcast %union.anon* %4082 to i32*
  %4083 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4084 = getelementptr inbounds %struct.GPR, %struct.GPR* %4083, i32 0, i32 15
  %4085 = getelementptr inbounds %struct.Reg, %struct.Reg* %4084, i32 0, i32 0
  %RBP.i116 = bitcast %union.anon* %4085 to i64*
  %4086 = load i64, i64* %RBP.i116
  %4087 = sub i64 %4086, 64
  %4088 = load i32, i32* %EAX.i115
  %4089 = zext i32 %4088 to i64
  %4090 = load i64, i64* %PC.i114
  %4091 = add i64 %4090, 3
  store i64 %4091, i64* %PC.i114
  %4092 = inttoptr i64 %4087 to i32*
  store i32 %4088, i32* %4092
  store %struct.Memory* %loadMem_400a9b, %struct.Memory** %MEMORY
  %loadMem_400a9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4094 = getelementptr inbounds %struct.GPR, %struct.GPR* %4093, i32 0, i32 33
  %4095 = getelementptr inbounds %struct.Reg, %struct.Reg* %4094, i32 0, i32 0
  %PC.i111 = bitcast %union.anon* %4095 to i64*
  %4096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4097 = getelementptr inbounds %struct.GPR, %struct.GPR* %4096, i32 0, i32 9
  %4098 = getelementptr inbounds %struct.Reg, %struct.Reg* %4097, i32 0, i32 0
  %RSI.i112 = bitcast %union.anon* %4098 to i64*
  %4099 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4100 = getelementptr inbounds %struct.GPR, %struct.GPR* %4099, i32 0, i32 15
  %4101 = getelementptr inbounds %struct.Reg, %struct.Reg* %4100, i32 0, i32 0
  %RBP.i113 = bitcast %union.anon* %4101 to i64*
  %4102 = load i64, i64* %RBP.i113
  %4103 = sub i64 %4102, 16
  %4104 = load i64, i64* %PC.i111
  %4105 = add i64 %4104, 4
  store i64 %4105, i64* %PC.i111
  %4106 = inttoptr i64 %4103 to i64*
  %4107 = load i64, i64* %4106
  store i64 %4107, i64* %RSI.i112, align 8
  store %struct.Memory* %loadMem_400a9e, %struct.Memory** %MEMORY
  %loadMem_400aa2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4109 = getelementptr inbounds %struct.GPR, %struct.GPR* %4108, i32 0, i32 33
  %4110 = getelementptr inbounds %struct.Reg, %struct.Reg* %4109, i32 0, i32 0
  %PC.i108 = bitcast %union.anon* %4110 to i64*
  %4111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4112 = getelementptr inbounds %struct.GPR, %struct.GPR* %4111, i32 0, i32 1
  %4113 = getelementptr inbounds %struct.Reg, %struct.Reg* %4112, i32 0, i32 0
  %RAX.i109 = bitcast %union.anon* %4113 to i64*
  %4114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4115 = getelementptr inbounds %struct.GPR, %struct.GPR* %4114, i32 0, i32 9
  %4116 = getelementptr inbounds %struct.Reg, %struct.Reg* %4115, i32 0, i32 0
  %RSI.i110 = bitcast %union.anon* %4116 to i64*
  %4117 = load i64, i64* %RSI.i110
  %4118 = add i64 %4117, 28
  %4119 = load i64, i64* %PC.i108
  %4120 = add i64 %4119, 4
  store i64 %4120, i64* %PC.i108
  %4121 = inttoptr i64 %4118 to i8*
  %4122 = load i8, i8* %4121
  %4123 = sext i8 %4122 to i64
  %4124 = and i64 %4123, 4294967295
  store i64 %4124, i64* %RAX.i109, align 8
  store %struct.Memory* %loadMem_400aa2, %struct.Memory** %MEMORY
  %loadMem_400aa6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4126 = getelementptr inbounds %struct.GPR, %struct.GPR* %4125, i32 0, i32 33
  %4127 = getelementptr inbounds %struct.Reg, %struct.Reg* %4126, i32 0, i32 0
  %PC.i106 = bitcast %union.anon* %4127 to i64*
  %4128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4129 = getelementptr inbounds %struct.GPR, %struct.GPR* %4128, i32 0, i32 1
  %4130 = getelementptr inbounds %struct.Reg, %struct.Reg* %4129, i32 0, i32 0
  %EAX.i107 = bitcast %union.anon* %4130 to i32*
  %4131 = load i32, i32* %EAX.i107
  %4132 = zext i32 %4131 to i64
  %4133 = load i64, i64* %PC.i106
  %4134 = add i64 %4133, 3
  store i64 %4134, i64* %PC.i106
  %4135 = sub i32 %4131, 100
  %4136 = icmp ult i32 %4131, 100
  %4137 = zext i1 %4136 to i8
  %4138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4137, i8* %4138, align 1
  %4139 = and i32 %4135, 255
  %4140 = call i32 @llvm.ctpop.i32(i32 %4139)
  %4141 = trunc i32 %4140 to i8
  %4142 = and i8 %4141, 1
  %4143 = xor i8 %4142, 1
  %4144 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4143, i8* %4144, align 1
  %4145 = xor i64 100, %4132
  %4146 = trunc i64 %4145 to i32
  %4147 = xor i32 %4146, %4135
  %4148 = lshr i32 %4147, 4
  %4149 = trunc i32 %4148 to i8
  %4150 = and i8 %4149, 1
  %4151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4150, i8* %4151, align 1
  %4152 = icmp eq i32 %4135, 0
  %4153 = zext i1 %4152 to i8
  %4154 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4153, i8* %4154, align 1
  %4155 = lshr i32 %4135, 31
  %4156 = trunc i32 %4155 to i8
  %4157 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4156, i8* %4157, align 1
  %4158 = lshr i32 %4131, 31
  %4159 = xor i32 %4155, %4158
  %4160 = add i32 %4159, %4158
  %4161 = icmp eq i32 %4160, 2
  %4162 = zext i1 %4161 to i8
  %4163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4162, i8* %4163, align 1
  store %struct.Memory* %loadMem_400aa6, %struct.Memory** %MEMORY
  %loadMem_400aa9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4165 = getelementptr inbounds %struct.GPR, %struct.GPR* %4164, i32 0, i32 33
  %4166 = getelementptr inbounds %struct.Reg, %struct.Reg* %4165, i32 0, i32 0
  %PC.i105 = bitcast %union.anon* %4166 to i64*
  %4167 = load i64, i64* %PC.i105
  %4168 = add i64 %4167, 37
  %4169 = load i64, i64* %PC.i105
  %4170 = add i64 %4169, 6
  %4171 = load i64, i64* %PC.i105
  %4172 = add i64 %4171, 6
  store i64 %4172, i64* %PC.i105
  %4173 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4174 = load i8, i8* %4173, align 1
  %4175 = icmp eq i8 %4174, 0
  %4176 = zext i1 %4175 to i8
  store i8 %4176, i8* %BRANCH_TAKEN, align 1
  %4177 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4178 = select i1 %4175, i64 %4168, i64 %4170
  store i64 %4178, i64* %4177, align 8
  store %struct.Memory* %loadMem_400aa9, %struct.Memory** %MEMORY
  %loadBr_400aa9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400aa9 = icmp eq i8 %loadBr_400aa9, 1
  br i1 %cmpBr_400aa9, label %block_.L_400ace, label %block_400aaf

block_400aaf:                                     ; preds = %block_.L_400a83
  %loadMem_400aaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %4179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4180 = getelementptr inbounds %struct.GPR, %struct.GPR* %4179, i32 0, i32 33
  %4181 = getelementptr inbounds %struct.Reg, %struct.Reg* %4180, i32 0, i32 0
  %PC.i102 = bitcast %union.anon* %4181 to i64*
  %4182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4183 = getelementptr inbounds %struct.GPR, %struct.GPR* %4182, i32 0, i32 1
  %4184 = getelementptr inbounds %struct.Reg, %struct.Reg* %4183, i32 0, i32 0
  %RAX.i103 = bitcast %union.anon* %4184 to i64*
  %4185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4186 = getelementptr inbounds %struct.GPR, %struct.GPR* %4185, i32 0, i32 15
  %4187 = getelementptr inbounds %struct.Reg, %struct.Reg* %4186, i32 0, i32 0
  %RBP.i104 = bitcast %union.anon* %4187 to i64*
  %4188 = load i64, i64* %RBP.i104
  %4189 = sub i64 %4188, 16
  %4190 = load i64, i64* %PC.i102
  %4191 = add i64 %4190, 4
  store i64 %4191, i64* %PC.i102
  %4192 = inttoptr i64 %4189 to i64*
  %4193 = load i64, i64* %4192
  store i64 %4193, i64* %RAX.i103, align 8
  store %struct.Memory* %loadMem_400aaf, %struct.Memory** %MEMORY
  %loadMem_400ab3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4195 = getelementptr inbounds %struct.GPR, %struct.GPR* %4194, i32 0, i32 33
  %4196 = getelementptr inbounds %struct.Reg, %struct.Reg* %4195, i32 0, i32 0
  %PC.i99 = bitcast %union.anon* %4196 to i64*
  %4197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4198 = getelementptr inbounds %struct.GPR, %struct.GPR* %4197, i32 0, i32 1
  %4199 = getelementptr inbounds %struct.Reg, %struct.Reg* %4198, i32 0, i32 0
  %RAX.i100 = bitcast %union.anon* %4199 to i64*
  %4200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4201 = getelementptr inbounds %struct.GPR, %struct.GPR* %4200, i32 0, i32 5
  %4202 = getelementptr inbounds %struct.Reg, %struct.Reg* %4201, i32 0, i32 0
  %RCX.i101 = bitcast %union.anon* %4202 to i64*
  %4203 = load i64, i64* %RAX.i100
  %4204 = add i64 %4203, 29
  %4205 = load i64, i64* %PC.i99
  %4206 = add i64 %4205, 4
  store i64 %4206, i64* %PC.i99
  %4207 = inttoptr i64 %4204 to i8*
  %4208 = load i8, i8* %4207
  %4209 = sext i8 %4208 to i64
  %4210 = and i64 %4209, 4294967295
  store i64 %4210, i64* %RCX.i101, align 8
  store %struct.Memory* %loadMem_400ab3, %struct.Memory** %MEMORY
  %loadMem_400ab7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4212 = getelementptr inbounds %struct.GPR, %struct.GPR* %4211, i32 0, i32 33
  %4213 = getelementptr inbounds %struct.Reg, %struct.Reg* %4212, i32 0, i32 0
  %PC.i97 = bitcast %union.anon* %4213 to i64*
  %4214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4215 = getelementptr inbounds %struct.GPR, %struct.GPR* %4214, i32 0, i32 5
  %4216 = getelementptr inbounds %struct.Reg, %struct.Reg* %4215, i32 0, i32 0
  %ECX.i98 = bitcast %union.anon* %4216 to i32*
  %4217 = load i32, i32* %ECX.i98
  %4218 = zext i32 %4217 to i64
  %4219 = load i64, i64* %PC.i97
  %4220 = add i64 %4219, 3
  store i64 %4220, i64* %PC.i97
  %4221 = sub i32 %4217, 100
  %4222 = icmp ult i32 %4217, 100
  %4223 = zext i1 %4222 to i8
  %4224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4223, i8* %4224, align 1
  %4225 = and i32 %4221, 255
  %4226 = call i32 @llvm.ctpop.i32(i32 %4225)
  %4227 = trunc i32 %4226 to i8
  %4228 = and i8 %4227, 1
  %4229 = xor i8 %4228, 1
  %4230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4229, i8* %4230, align 1
  %4231 = xor i64 100, %4218
  %4232 = trunc i64 %4231 to i32
  %4233 = xor i32 %4232, %4221
  %4234 = lshr i32 %4233, 4
  %4235 = trunc i32 %4234 to i8
  %4236 = and i8 %4235, 1
  %4237 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4236, i8* %4237, align 1
  %4238 = icmp eq i32 %4221, 0
  %4239 = zext i1 %4238 to i8
  %4240 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4239, i8* %4240, align 1
  %4241 = lshr i32 %4221, 31
  %4242 = trunc i32 %4241 to i8
  %4243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4242, i8* %4243, align 1
  %4244 = lshr i32 %4217, 31
  %4245 = xor i32 %4241, %4244
  %4246 = add i32 %4245, %4244
  %4247 = icmp eq i32 %4246, 2
  %4248 = zext i1 %4247 to i8
  %4249 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4248, i8* %4249, align 1
  store %struct.Memory* %loadMem_400ab7, %struct.Memory** %MEMORY
  %loadMem_400aba = load %struct.Memory*, %struct.Memory** %MEMORY
  %4250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4251 = getelementptr inbounds %struct.GPR, %struct.GPR* %4250, i32 0, i32 33
  %4252 = getelementptr inbounds %struct.Reg, %struct.Reg* %4251, i32 0, i32 0
  %PC.i96 = bitcast %union.anon* %4252 to i64*
  %4253 = load i64, i64* %PC.i96
  %4254 = add i64 %4253, 20
  %4255 = load i64, i64* %PC.i96
  %4256 = add i64 %4255, 6
  %4257 = load i64, i64* %PC.i96
  %4258 = add i64 %4257, 6
  store i64 %4258, i64* %PC.i96
  %4259 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4260 = load i8, i8* %4259, align 1
  %4261 = icmp eq i8 %4260, 0
  %4262 = zext i1 %4261 to i8
  store i8 %4262, i8* %BRANCH_TAKEN, align 1
  %4263 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4264 = select i1 %4261, i64 %4254, i64 %4256
  store i64 %4264, i64* %4263, align 8
  store %struct.Memory* %loadMem_400aba, %struct.Memory** %MEMORY
  %loadBr_400aba = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400aba = icmp eq i8 %loadBr_400aba, 1
  br i1 %cmpBr_400aba, label %block_.L_400ace, label %block_400ac0

block_400ac0:                                     ; preds = %block_400aaf
  %loadMem_400ac0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4266 = getelementptr inbounds %struct.GPR, %struct.GPR* %4265, i32 0, i32 33
  %4267 = getelementptr inbounds %struct.Reg, %struct.Reg* %4266, i32 0, i32 0
  %PC.i93 = bitcast %union.anon* %4267 to i64*
  %4268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4269 = getelementptr inbounds %struct.GPR, %struct.GPR* %4268, i32 0, i32 1
  %4270 = getelementptr inbounds %struct.Reg, %struct.Reg* %4269, i32 0, i32 0
  %RAX.i94 = bitcast %union.anon* %4270 to i64*
  %4271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4272 = getelementptr inbounds %struct.GPR, %struct.GPR* %4271, i32 0, i32 15
  %4273 = getelementptr inbounds %struct.Reg, %struct.Reg* %4272, i32 0, i32 0
  %RBP.i95 = bitcast %union.anon* %4273 to i64*
  %4274 = load i64, i64* %RBP.i95
  %4275 = sub i64 %4274, 64
  %4276 = load i64, i64* %PC.i93
  %4277 = add i64 %4276, 3
  store i64 %4277, i64* %PC.i93
  %4278 = inttoptr i64 %4275 to i32*
  %4279 = load i32, i32* %4278
  %4280 = zext i32 %4279 to i64
  store i64 %4280, i64* %RAX.i94, align 8
  store %struct.Memory* %loadMem_400ac0, %struct.Memory** %MEMORY
  %loadMem_400ac3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4282 = getelementptr inbounds %struct.GPR, %struct.GPR* %4281, i32 0, i32 33
  %4283 = getelementptr inbounds %struct.Reg, %struct.Reg* %4282, i32 0, i32 0
  %PC.i90 = bitcast %union.anon* %4283 to i64*
  %4284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4285 = getelementptr inbounds %struct.GPR, %struct.GPR* %4284, i32 0, i32 1
  %4286 = getelementptr inbounds %struct.Reg, %struct.Reg* %4285, i32 0, i32 0
  %RAX.i91 = bitcast %union.anon* %4286 to i64*
  %4287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4288 = getelementptr inbounds %struct.GPR, %struct.GPR* %4287, i32 0, i32 15
  %4289 = getelementptr inbounds %struct.Reg, %struct.Reg* %4288, i32 0, i32 0
  %RBP.i92 = bitcast %union.anon* %4289 to i64*
  %4290 = load i64, i64* %RAX.i91
  %4291 = load i64, i64* %RBP.i92
  %4292 = sub i64 %4291, 20
  %4293 = load i64, i64* %PC.i90
  %4294 = add i64 %4293, 3
  store i64 %4294, i64* %PC.i90
  %4295 = trunc i64 %4290 to i32
  %4296 = inttoptr i64 %4292 to i32*
  %4297 = load i32, i32* %4296
  %4298 = xor i32 %4297, %4295
  %4299 = zext i32 %4298 to i64
  store i64 %4299, i64* %RAX.i91, align 8
  %4300 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4300, align 1
  %4301 = and i32 %4298, 255
  %4302 = call i32 @llvm.ctpop.i32(i32 %4301)
  %4303 = trunc i32 %4302 to i8
  %4304 = and i8 %4303, 1
  %4305 = xor i8 %4304, 1
  %4306 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4305, i8* %4306, align 1
  %4307 = icmp eq i32 %4298, 0
  %4308 = zext i1 %4307 to i8
  %4309 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4308, i8* %4309, align 1
  %4310 = lshr i32 %4298, 31
  %4311 = trunc i32 %4310 to i8
  %4312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4311, i8* %4312, align 1
  %4313 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4313, align 1
  %4314 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4314, align 1
  store %struct.Memory* %loadMem_400ac3, %struct.Memory** %MEMORY
  %loadMem_400ac6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4316 = getelementptr inbounds %struct.GPR, %struct.GPR* %4315, i32 0, i32 33
  %4317 = getelementptr inbounds %struct.Reg, %struct.Reg* %4316, i32 0, i32 0
  %PC.i87 = bitcast %union.anon* %4317 to i64*
  %4318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4319 = getelementptr inbounds %struct.GPR, %struct.GPR* %4318, i32 0, i32 1
  %4320 = getelementptr inbounds %struct.Reg, %struct.Reg* %4319, i32 0, i32 0
  %EAX.i88 = bitcast %union.anon* %4320 to i32*
  %4321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4322 = getelementptr inbounds %struct.GPR, %struct.GPR* %4321, i32 0, i32 15
  %4323 = getelementptr inbounds %struct.Reg, %struct.Reg* %4322, i32 0, i32 0
  %RBP.i89 = bitcast %union.anon* %4323 to i64*
  %4324 = load i64, i64* %RBP.i89
  %4325 = sub i64 %4324, 20
  %4326 = load i32, i32* %EAX.i88
  %4327 = zext i32 %4326 to i64
  %4328 = load i64, i64* %PC.i87
  %4329 = add i64 %4328, 3
  store i64 %4329, i64* %PC.i87
  %4330 = inttoptr i64 %4325 to i32*
  store i32 %4326, i32* %4330
  store %struct.Memory* %loadMem_400ac6, %struct.Memory** %MEMORY
  %loadMem_400ac9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4332 = getelementptr inbounds %struct.GPR, %struct.GPR* %4331, i32 0, i32 33
  %4333 = getelementptr inbounds %struct.Reg, %struct.Reg* %4332, i32 0, i32 0
  %PC.i86 = bitcast %union.anon* %4333 to i64*
  %4334 = load i64, i64* %PC.i86
  %4335 = add i64 %4334, 136
  %4336 = load i64, i64* %PC.i86
  %4337 = add i64 %4336, 5
  store i64 %4337, i64* %PC.i86
  %4338 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4335, i64* %4338, align 8
  store %struct.Memory* %loadMem_400ac9, %struct.Memory** %MEMORY
  br label %block_.L_400b51

block_.L_400ace:                                  ; preds = %block_400aaf, %block_.L_400a83
  %loadMem_400ace = load %struct.Memory*, %struct.Memory** %MEMORY
  %4339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4340 = getelementptr inbounds %struct.GPR, %struct.GPR* %4339, i32 0, i32 33
  %4341 = getelementptr inbounds %struct.Reg, %struct.Reg* %4340, i32 0, i32 0
  %PC.i83 = bitcast %union.anon* %4341 to i64*
  %4342 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4343 = getelementptr inbounds %struct.GPR, %struct.GPR* %4342, i32 0, i32 1
  %4344 = getelementptr inbounds %struct.Reg, %struct.Reg* %4343, i32 0, i32 0
  %RAX.i84 = bitcast %union.anon* %4344 to i64*
  %4345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4346 = getelementptr inbounds %struct.GPR, %struct.GPR* %4345, i32 0, i32 15
  %4347 = getelementptr inbounds %struct.Reg, %struct.Reg* %4346, i32 0, i32 0
  %RBP.i85 = bitcast %union.anon* %4347 to i64*
  %4348 = load i64, i64* %RBP.i85
  %4349 = sub i64 %4348, 16
  %4350 = load i64, i64* %PC.i83
  %4351 = add i64 %4350, 4
  store i64 %4351, i64* %PC.i83
  %4352 = inttoptr i64 %4349 to i64*
  %4353 = load i64, i64* %4352
  store i64 %4353, i64* %RAX.i84, align 8
  store %struct.Memory* %loadMem_400ace, %struct.Memory** %MEMORY
  %loadMem_400ad2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4355 = getelementptr inbounds %struct.GPR, %struct.GPR* %4354, i32 0, i32 33
  %4356 = getelementptr inbounds %struct.Reg, %struct.Reg* %4355, i32 0, i32 0
  %PC.i80 = bitcast %union.anon* %4356 to i64*
  %4357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4358 = getelementptr inbounds %struct.GPR, %struct.GPR* %4357, i32 0, i32 1
  %4359 = getelementptr inbounds %struct.Reg, %struct.Reg* %4358, i32 0, i32 0
  %RAX.i81 = bitcast %union.anon* %4359 to i64*
  %4360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4361 = getelementptr inbounds %struct.GPR, %struct.GPR* %4360, i32 0, i32 5
  %4362 = getelementptr inbounds %struct.Reg, %struct.Reg* %4361, i32 0, i32 0
  %RCX.i82 = bitcast %union.anon* %4362 to i64*
  %4363 = load i64, i64* %RAX.i81
  %4364 = add i64 %4363, 28
  %4365 = load i64, i64* %PC.i80
  %4366 = add i64 %4365, 4
  store i64 %4366, i64* %PC.i80
  %4367 = inttoptr i64 %4364 to i8*
  %4368 = load i8, i8* %4367
  %4369 = sext i8 %4368 to i64
  %4370 = and i64 %4369, 4294967295
  store i64 %4370, i64* %RCX.i82, align 8
  store %struct.Memory* %loadMem_400ad2, %struct.Memory** %MEMORY
  %loadMem_400ad6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4372 = getelementptr inbounds %struct.GPR, %struct.GPR* %4371, i32 0, i32 33
  %4373 = getelementptr inbounds %struct.Reg, %struct.Reg* %4372, i32 0, i32 0
  %PC.i77 = bitcast %union.anon* %4373 to i64*
  %4374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4375 = getelementptr inbounds %struct.GPR, %struct.GPR* %4374, i32 0, i32 1
  %4376 = getelementptr inbounds %struct.Reg, %struct.Reg* %4375, i32 0, i32 0
  %RAX.i78 = bitcast %union.anon* %4376 to i64*
  %4377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4378 = getelementptr inbounds %struct.GPR, %struct.GPR* %4377, i32 0, i32 15
  %4379 = getelementptr inbounds %struct.Reg, %struct.Reg* %4378, i32 0, i32 0
  %RBP.i79 = bitcast %union.anon* %4379 to i64*
  %4380 = load i64, i64* %RBP.i79
  %4381 = sub i64 %4380, 16
  %4382 = load i64, i64* %PC.i77
  %4383 = add i64 %4382, 4
  store i64 %4383, i64* %PC.i77
  %4384 = inttoptr i64 %4381 to i64*
  %4385 = load i64, i64* %4384
  store i64 %4385, i64* %RAX.i78, align 8
  store %struct.Memory* %loadMem_400ad6, %struct.Memory** %MEMORY
  %loadMem_400ada = load %struct.Memory*, %struct.Memory** %MEMORY
  %4386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4387 = getelementptr inbounds %struct.GPR, %struct.GPR* %4386, i32 0, i32 33
  %4388 = getelementptr inbounds %struct.Reg, %struct.Reg* %4387, i32 0, i32 0
  %PC.i74 = bitcast %union.anon* %4388 to i64*
  %4389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4390 = getelementptr inbounds %struct.GPR, %struct.GPR* %4389, i32 0, i32 1
  %4391 = getelementptr inbounds %struct.Reg, %struct.Reg* %4390, i32 0, i32 0
  %RAX.i75 = bitcast %union.anon* %4391 to i64*
  %4392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4393 = getelementptr inbounds %struct.GPR, %struct.GPR* %4392, i32 0, i32 7
  %4394 = getelementptr inbounds %struct.Reg, %struct.Reg* %4393, i32 0, i32 0
  %RDX.i76 = bitcast %union.anon* %4394 to i64*
  %4395 = load i64, i64* %RAX.i75
  %4396 = add i64 %4395, 29
  %4397 = load i64, i64* %PC.i74
  %4398 = add i64 %4397, 4
  store i64 %4398, i64* %PC.i74
  %4399 = inttoptr i64 %4396 to i8*
  %4400 = load i8, i8* %4399
  %4401 = sext i8 %4400 to i64
  %4402 = and i64 %4401, 4294967295
  store i64 %4402, i64* %RDX.i76, align 8
  store %struct.Memory* %loadMem_400ada, %struct.Memory** %MEMORY
  %loadMem_400ade = load %struct.Memory*, %struct.Memory** %MEMORY
  %4403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4404 = getelementptr inbounds %struct.GPR, %struct.GPR* %4403, i32 0, i32 33
  %4405 = getelementptr inbounds %struct.Reg, %struct.Reg* %4404, i32 0, i32 0
  %PC.i72 = bitcast %union.anon* %4405 to i64*
  %4406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4407 = getelementptr inbounds %struct.GPR, %struct.GPR* %4406, i32 0, i32 5
  %4408 = getelementptr inbounds %struct.Reg, %struct.Reg* %4407, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %4408 to i32*
  %4409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4410 = getelementptr inbounds %struct.GPR, %struct.GPR* %4409, i32 0, i32 7
  %4411 = getelementptr inbounds %struct.Reg, %struct.Reg* %4410, i32 0, i32 0
  %EDX.i73 = bitcast %union.anon* %4411 to i32*
  %4412 = load i32, i32* %ECX.i
  %4413 = zext i32 %4412 to i64
  %4414 = load i32, i32* %EDX.i73
  %4415 = zext i32 %4414 to i64
  %4416 = load i64, i64* %PC.i72
  %4417 = add i64 %4416, 2
  store i64 %4417, i64* %PC.i72
  %4418 = sub i32 %4412, %4414
  %4419 = icmp ult i32 %4412, %4414
  %4420 = zext i1 %4419 to i8
  %4421 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4420, i8* %4421, align 1
  %4422 = and i32 %4418, 255
  %4423 = call i32 @llvm.ctpop.i32(i32 %4422)
  %4424 = trunc i32 %4423 to i8
  %4425 = and i8 %4424, 1
  %4426 = xor i8 %4425, 1
  %4427 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4426, i8* %4427, align 1
  %4428 = xor i64 %4415, %4413
  %4429 = trunc i64 %4428 to i32
  %4430 = xor i32 %4429, %4418
  %4431 = lshr i32 %4430, 4
  %4432 = trunc i32 %4431 to i8
  %4433 = and i8 %4432, 1
  %4434 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4433, i8* %4434, align 1
  %4435 = icmp eq i32 %4418, 0
  %4436 = zext i1 %4435 to i8
  %4437 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4436, i8* %4437, align 1
  %4438 = lshr i32 %4418, 31
  %4439 = trunc i32 %4438 to i8
  %4440 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4439, i8* %4440, align 1
  %4441 = lshr i32 %4412, 31
  %4442 = lshr i32 %4414, 31
  %4443 = xor i32 %4442, %4441
  %4444 = xor i32 %4438, %4441
  %4445 = add i32 %4444, %4443
  %4446 = icmp eq i32 %4445, 2
  %4447 = zext i1 %4446 to i8
  %4448 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4447, i8* %4448, align 1
  store %struct.Memory* %loadMem_400ade, %struct.Memory** %MEMORY
  %loadMem_400ae0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4450 = getelementptr inbounds %struct.GPR, %struct.GPR* %4449, i32 0, i32 33
  %4451 = getelementptr inbounds %struct.Reg, %struct.Reg* %4450, i32 0, i32 0
  %PC.i71 = bitcast %union.anon* %4451 to i64*
  %4452 = load i64, i64* %PC.i71
  %4453 = add i64 %4452, 102
  %4454 = load i64, i64* %PC.i71
  %4455 = add i64 %4454, 6
  %4456 = load i64, i64* %PC.i71
  %4457 = add i64 %4456, 6
  store i64 %4457, i64* %PC.i71
  %4458 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4459 = load i8, i8* %4458, align 1
  %4460 = icmp eq i8 %4459, 0
  %4461 = zext i1 %4460 to i8
  store i8 %4461, i8* %BRANCH_TAKEN, align 1
  %4462 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4463 = select i1 %4460, i64 %4453, i64 %4455
  store i64 %4463, i64* %4462, align 8
  store %struct.Memory* %loadMem_400ae0, %struct.Memory** %MEMORY
  %loadBr_400ae0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400ae0 = icmp eq i8 %loadBr_400ae0, 1
  br i1 %cmpBr_400ae0, label %block_.L_400b46, label %block_400ae6

block_400ae6:                                     ; preds = %block_.L_400ace
  %loadMem_400ae6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4465 = getelementptr inbounds %struct.GPR, %struct.GPR* %4464, i32 0, i32 33
  %4466 = getelementptr inbounds %struct.Reg, %struct.Reg* %4465, i32 0, i32 0
  %PC.i69 = bitcast %union.anon* %4466 to i64*
  %4467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4468 = getelementptr inbounds %struct.GPR, %struct.GPR* %4467, i32 0, i32 1
  %4469 = getelementptr inbounds %struct.Reg, %struct.Reg* %4468, i32 0, i32 0
  %RAX.i70 = bitcast %union.anon* %4469 to i64*
  %4470 = load i64, i64* %PC.i69
  %4471 = add i64 %4470, 5
  store i64 %4471, i64* %PC.i69
  store i64 15, i64* %RAX.i70, align 8
  store %struct.Memory* %loadMem_400ae6, %struct.Memory** %MEMORY
  %loadMem_400aeb = load %struct.Memory*, %struct.Memory** %MEMORY
  %4472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4473 = getelementptr inbounds %struct.GPR, %struct.GPR* %4472, i32 0, i32 33
  %4474 = getelementptr inbounds %struct.Reg, %struct.Reg* %4473, i32 0, i32 0
  %PC.i66 = bitcast %union.anon* %4474 to i64*
  %4475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4476 = getelementptr inbounds %struct.GPR, %struct.GPR* %4475, i32 0, i32 5
  %4477 = getelementptr inbounds %struct.Reg, %struct.Reg* %4476, i32 0, i32 0
  %RCX.i67 = bitcast %union.anon* %4477 to i64*
  %4478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4479 = getelementptr inbounds %struct.GPR, %struct.GPR* %4478, i32 0, i32 15
  %4480 = getelementptr inbounds %struct.Reg, %struct.Reg* %4479, i32 0, i32 0
  %RBP.i68 = bitcast %union.anon* %4480 to i64*
  %4481 = load i64, i64* %RBP.i68
  %4482 = sub i64 %4481, 16
  %4483 = load i64, i64* %PC.i66
  %4484 = add i64 %4483, 4
  store i64 %4484, i64* %PC.i66
  %4485 = inttoptr i64 %4482 to i64*
  %4486 = load i64, i64* %4485
  store i64 %4486, i64* %RCX.i67, align 8
  store %struct.Memory* %loadMem_400aeb, %struct.Memory** %MEMORY
  %loadMem_400aef = load %struct.Memory*, %struct.Memory** %MEMORY
  %4487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4488 = getelementptr inbounds %struct.GPR, %struct.GPR* %4487, i32 0, i32 33
  %4489 = getelementptr inbounds %struct.Reg, %struct.Reg* %4488, i32 0, i32 0
  %PC.i63 = bitcast %union.anon* %4489 to i64*
  %4490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4491 = getelementptr inbounds %struct.GPR, %struct.GPR* %4490, i32 0, i32 5
  %4492 = getelementptr inbounds %struct.Reg, %struct.Reg* %4491, i32 0, i32 0
  %RCX.i64 = bitcast %union.anon* %4492 to i64*
  %4493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4494 = getelementptr inbounds %struct.GPR, %struct.GPR* %4493, i32 0, i32 7
  %4495 = getelementptr inbounds %struct.Reg, %struct.Reg* %4494, i32 0, i32 0
  %RDX.i65 = bitcast %union.anon* %4495 to i64*
  %4496 = load i64, i64* %RCX.i64
  %4497 = add i64 %4496, 31
  %4498 = load i64, i64* %PC.i63
  %4499 = add i64 %4498, 4
  store i64 %4499, i64* %PC.i63
  %4500 = inttoptr i64 %4497 to i8*
  %4501 = load i8, i8* %4500
  %4502 = sext i8 %4501 to i64
  %4503 = and i64 %4502, 4294967295
  store i64 %4503, i64* %RDX.i65, align 8
  store %struct.Memory* %loadMem_400aef, %struct.Memory** %MEMORY
  %loadMem_400af3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4505 = getelementptr inbounds %struct.GPR, %struct.GPR* %4504, i32 0, i32 33
  %4506 = getelementptr inbounds %struct.Reg, %struct.Reg* %4505, i32 0, i32 0
  %PC.i60 = bitcast %union.anon* %4506 to i64*
  %4507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4508 = getelementptr inbounds %struct.GPR, %struct.GPR* %4507, i32 0, i32 5
  %4509 = getelementptr inbounds %struct.Reg, %struct.Reg* %4508, i32 0, i32 0
  %RCX.i61 = bitcast %union.anon* %4509 to i64*
  %4510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4511 = getelementptr inbounds %struct.GPR, %struct.GPR* %4510, i32 0, i32 15
  %4512 = getelementptr inbounds %struct.Reg, %struct.Reg* %4511, i32 0, i32 0
  %RBP.i62 = bitcast %union.anon* %4512 to i64*
  %4513 = load i64, i64* %RBP.i62
  %4514 = sub i64 %4513, 16
  %4515 = load i64, i64* %PC.i60
  %4516 = add i64 %4515, 4
  store i64 %4516, i64* %PC.i60
  %4517 = inttoptr i64 %4514 to i64*
  %4518 = load i64, i64* %4517
  store i64 %4518, i64* %RCX.i61, align 8
  store %struct.Memory* %loadMem_400af3, %struct.Memory** %MEMORY
  %loadMem_400af7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4520 = getelementptr inbounds %struct.GPR, %struct.GPR* %4519, i32 0, i32 33
  %4521 = getelementptr inbounds %struct.Reg, %struct.Reg* %4520, i32 0, i32 0
  %PC.i58 = bitcast %union.anon* %4521 to i64*
  %4522 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4523 = getelementptr inbounds %struct.GPR, %struct.GPR* %4522, i32 0, i32 5
  %4524 = getelementptr inbounds %struct.Reg, %struct.Reg* %4523, i32 0, i32 0
  %RCX.i59 = bitcast %union.anon* %4524 to i64*
  %4525 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4526 = getelementptr inbounds %struct.GPR, %struct.GPR* %4525, i32 0, i32 9
  %4527 = getelementptr inbounds %struct.Reg, %struct.Reg* %4526, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %4527 to i64*
  %4528 = load i64, i64* %RCX.i59
  %4529 = add i64 %4528, 30
  %4530 = load i64, i64* %PC.i58
  %4531 = add i64 %4530, 4
  store i64 %4531, i64* %PC.i58
  %4532 = inttoptr i64 %4529 to i8*
  %4533 = load i8, i8* %4532
  %4534 = sext i8 %4533 to i64
  %4535 = and i64 %4534, 4294967295
  store i64 %4535, i64* %RSI.i, align 8
  store %struct.Memory* %loadMem_400af7, %struct.Memory** %MEMORY
  %loadMem_400afb = load %struct.Memory*, %struct.Memory** %MEMORY
  %4536 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4537 = getelementptr inbounds %struct.GPR, %struct.GPR* %4536, i32 0, i32 33
  %4538 = getelementptr inbounds %struct.Reg, %struct.Reg* %4537, i32 0, i32 0
  %PC.i56 = bitcast %union.anon* %4538 to i64*
  %4539 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4540 = getelementptr inbounds %struct.GPR, %struct.GPR* %4539, i32 0, i32 9
  %4541 = getelementptr inbounds %struct.Reg, %struct.Reg* %4540, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %4541 to i32*
  %4542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4543 = getelementptr inbounds %struct.GPR, %struct.GPR* %4542, i32 0, i32 7
  %4544 = getelementptr inbounds %struct.Reg, %struct.Reg* %4543, i32 0, i32 0
  %RDX.i57 = bitcast %union.anon* %4544 to i64*
  %4545 = load i64, i64* %RDX.i57
  %4546 = load i32, i32* %ESI.i
  %4547 = zext i32 %4546 to i64
  %4548 = load i64, i64* %PC.i56
  %4549 = add i64 %4548, 2
  store i64 %4549, i64* %PC.i56
  %4550 = trunc i64 %4545 to i32
  %4551 = sub i32 %4550, %4546
  %4552 = zext i32 %4551 to i64
  store i64 %4552, i64* %RDX.i57, align 8
  %4553 = icmp ult i32 %4550, %4546
  %4554 = zext i1 %4553 to i8
  %4555 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4554, i8* %4555, align 1
  %4556 = and i32 %4551, 255
  %4557 = call i32 @llvm.ctpop.i32(i32 %4556)
  %4558 = trunc i32 %4557 to i8
  %4559 = and i8 %4558, 1
  %4560 = xor i8 %4559, 1
  %4561 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4560, i8* %4561, align 1
  %4562 = xor i64 %4547, %4545
  %4563 = trunc i64 %4562 to i32
  %4564 = xor i32 %4563, %4551
  %4565 = lshr i32 %4564, 4
  %4566 = trunc i32 %4565 to i8
  %4567 = and i8 %4566, 1
  %4568 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4567, i8* %4568, align 1
  %4569 = icmp eq i32 %4551, 0
  %4570 = zext i1 %4569 to i8
  %4571 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4570, i8* %4571, align 1
  %4572 = lshr i32 %4551, 31
  %4573 = trunc i32 %4572 to i8
  %4574 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4573, i8* %4574, align 1
  %4575 = lshr i32 %4550, 31
  %4576 = lshr i32 %4546, 31
  %4577 = xor i32 %4576, %4575
  %4578 = xor i32 %4572, %4575
  %4579 = add i32 %4578, %4577
  %4580 = icmp eq i32 %4579, 2
  %4581 = zext i1 %4580 to i8
  %4582 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4581, i8* %4582, align 1
  store %struct.Memory* %loadMem_400afb, %struct.Memory** %MEMORY
  %loadMem_400afd = load %struct.Memory*, %struct.Memory** %MEMORY
  %4583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4584 = getelementptr inbounds %struct.GPR, %struct.GPR* %4583, i32 0, i32 33
  %4585 = getelementptr inbounds %struct.Reg, %struct.Reg* %4584, i32 0, i32 0
  %PC.i53 = bitcast %union.anon* %4585 to i64*
  %4586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4587 = getelementptr inbounds %struct.GPR, %struct.GPR* %4586, i32 0, i32 7
  %4588 = getelementptr inbounds %struct.Reg, %struct.Reg* %4587, i32 0, i32 0
  %EDX.i54 = bitcast %union.anon* %4588 to i32*
  %4589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4590 = getelementptr inbounds %struct.GPR, %struct.GPR* %4589, i32 0, i32 1
  %4591 = getelementptr inbounds %struct.Reg, %struct.Reg* %4590, i32 0, i32 0
  %RAX.i55 = bitcast %union.anon* %4591 to i64*
  %4592 = load i64, i64* %RAX.i55
  %4593 = load i32, i32* %EDX.i54
  %4594 = zext i32 %4593 to i64
  %4595 = load i64, i64* %PC.i53
  %4596 = add i64 %4595, 2
  store i64 %4596, i64* %PC.i53
  %4597 = trunc i64 %4592 to i32
  %4598 = sub i32 %4597, %4593
  %4599 = zext i32 %4598 to i64
  store i64 %4599, i64* %RAX.i55, align 8
  %4600 = icmp ult i32 %4597, %4593
  %4601 = zext i1 %4600 to i8
  %4602 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4601, i8* %4602, align 1
  %4603 = and i32 %4598, 255
  %4604 = call i32 @llvm.ctpop.i32(i32 %4603)
  %4605 = trunc i32 %4604 to i8
  %4606 = and i8 %4605, 1
  %4607 = xor i8 %4606, 1
  %4608 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4607, i8* %4608, align 1
  %4609 = xor i64 %4594, %4592
  %4610 = trunc i64 %4609 to i32
  %4611 = xor i32 %4610, %4598
  %4612 = lshr i32 %4611, 4
  %4613 = trunc i32 %4612 to i8
  %4614 = and i8 %4613, 1
  %4615 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4614, i8* %4615, align 1
  %4616 = icmp eq i32 %4598, 0
  %4617 = zext i1 %4616 to i8
  %4618 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4617, i8* %4618, align 1
  %4619 = lshr i32 %4598, 31
  %4620 = trunc i32 %4619 to i8
  %4621 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4620, i8* %4621, align 1
  %4622 = lshr i32 %4597, 31
  %4623 = lshr i32 %4593, 31
  %4624 = xor i32 %4623, %4622
  %4625 = xor i32 %4619, %4622
  %4626 = add i32 %4625, %4624
  %4627 = icmp eq i32 %4626, 2
  %4628 = zext i1 %4627 to i8
  %4629 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4628, i8* %4629, align 1
  store %struct.Memory* %loadMem_400afd, %struct.Memory** %MEMORY
  %loadMem_400aff = load %struct.Memory*, %struct.Memory** %MEMORY
  %4630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4631 = getelementptr inbounds %struct.GPR, %struct.GPR* %4630, i32 0, i32 33
  %4632 = getelementptr inbounds %struct.Reg, %struct.Reg* %4631, i32 0, i32 0
  %PC.i50 = bitcast %union.anon* %4632 to i64*
  %4633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4634 = getelementptr inbounds %struct.GPR, %struct.GPR* %4633, i32 0, i32 1
  %4635 = getelementptr inbounds %struct.Reg, %struct.Reg* %4634, i32 0, i32 0
  %RAX.i51 = bitcast %union.anon* %4635 to i64*
  %4636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4637 = getelementptr inbounds %struct.GPR, %struct.GPR* %4636, i32 0, i32 15
  %4638 = getelementptr inbounds %struct.Reg, %struct.Reg* %4637, i32 0, i32 0
  %RBP.i52 = bitcast %union.anon* %4638 to i64*
  %4639 = load i64, i64* %RAX.i51
  %4640 = load i64, i64* %RBP.i52
  %4641 = sub i64 %4640, 20
  %4642 = load i64, i64* %PC.i50
  %4643 = add i64 %4642, 3
  store i64 %4643, i64* %PC.i50
  %4644 = trunc i64 %4639 to i32
  %4645 = inttoptr i64 %4641 to i32*
  %4646 = load i32, i32* %4645
  %4647 = add i32 %4646, %4644
  %4648 = zext i32 %4647 to i64
  store i64 %4648, i64* %RAX.i51, align 8
  %4649 = icmp ult i32 %4647, %4644
  %4650 = icmp ult i32 %4647, %4646
  %4651 = or i1 %4649, %4650
  %4652 = zext i1 %4651 to i8
  %4653 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4652, i8* %4653, align 1
  %4654 = and i32 %4647, 255
  %4655 = call i32 @llvm.ctpop.i32(i32 %4654)
  %4656 = trunc i32 %4655 to i8
  %4657 = and i8 %4656, 1
  %4658 = xor i8 %4657, 1
  %4659 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4658, i8* %4659, align 1
  %4660 = xor i32 %4646, %4644
  %4661 = xor i32 %4660, %4647
  %4662 = lshr i32 %4661, 4
  %4663 = trunc i32 %4662 to i8
  %4664 = and i8 %4663, 1
  %4665 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4664, i8* %4665, align 1
  %4666 = icmp eq i32 %4647, 0
  %4667 = zext i1 %4666 to i8
  %4668 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4667, i8* %4668, align 1
  %4669 = lshr i32 %4647, 31
  %4670 = trunc i32 %4669 to i8
  %4671 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4670, i8* %4671, align 1
  %4672 = lshr i32 %4644, 31
  %4673 = lshr i32 %4646, 31
  %4674 = xor i32 %4669, %4672
  %4675 = xor i32 %4669, %4673
  %4676 = add i32 %4674, %4675
  %4677 = icmp eq i32 %4676, 2
  %4678 = zext i1 %4677 to i8
  %4679 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4678, i8* %4679, align 1
  store %struct.Memory* %loadMem_400aff, %struct.Memory** %MEMORY
  %loadMem_400b02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4680 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4681 = getelementptr inbounds %struct.GPR, %struct.GPR* %4680, i32 0, i32 33
  %4682 = getelementptr inbounds %struct.Reg, %struct.Reg* %4681, i32 0, i32 0
  %PC.i47 = bitcast %union.anon* %4682 to i64*
  %4683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4684 = getelementptr inbounds %struct.GPR, %struct.GPR* %4683, i32 0, i32 1
  %4685 = getelementptr inbounds %struct.Reg, %struct.Reg* %4684, i32 0, i32 0
  %EAX.i48 = bitcast %union.anon* %4685 to i32*
  %4686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4687 = getelementptr inbounds %struct.GPR, %struct.GPR* %4686, i32 0, i32 15
  %4688 = getelementptr inbounds %struct.Reg, %struct.Reg* %4687, i32 0, i32 0
  %RBP.i49 = bitcast %union.anon* %4688 to i64*
  %4689 = load i64, i64* %RBP.i49
  %4690 = sub i64 %4689, 20
  %4691 = load i32, i32* %EAX.i48
  %4692 = zext i32 %4691 to i64
  %4693 = load i64, i64* %PC.i47
  %4694 = add i64 %4693, 3
  store i64 %4694, i64* %PC.i47
  %4695 = inttoptr i64 %4690 to i32*
  store i32 %4691, i32* %4695
  store %struct.Memory* %loadMem_400b02, %struct.Memory** %MEMORY
  %loadMem_400b05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4697 = getelementptr inbounds %struct.GPR, %struct.GPR* %4696, i32 0, i32 33
  %4698 = getelementptr inbounds %struct.Reg, %struct.Reg* %4697, i32 0, i32 0
  %PC.i44 = bitcast %union.anon* %4698 to i64*
  %4699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4700 = getelementptr inbounds %struct.GPR, %struct.GPR* %4699, i32 0, i32 5
  %4701 = getelementptr inbounds %struct.Reg, %struct.Reg* %4700, i32 0, i32 0
  %RCX.i45 = bitcast %union.anon* %4701 to i64*
  %4702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4703 = getelementptr inbounds %struct.GPR, %struct.GPR* %4702, i32 0, i32 15
  %4704 = getelementptr inbounds %struct.Reg, %struct.Reg* %4703, i32 0, i32 0
  %RBP.i46 = bitcast %union.anon* %4704 to i64*
  %4705 = load i64, i64* %RBP.i46
  %4706 = sub i64 %4705, 16
  %4707 = load i64, i64* %PC.i44
  %4708 = add i64 %4707, 4
  store i64 %4708, i64* %PC.i44
  %4709 = inttoptr i64 %4706 to i64*
  %4710 = load i64, i64* %4709
  store i64 %4710, i64* %RCX.i45, align 8
  store %struct.Memory* %loadMem_400b05, %struct.Memory** %MEMORY
  %loadMem_400b09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4712 = getelementptr inbounds %struct.GPR, %struct.GPR* %4711, i32 0, i32 33
  %4713 = getelementptr inbounds %struct.Reg, %struct.Reg* %4712, i32 0, i32 0
  %PC.i42 = bitcast %union.anon* %4713 to i64*
  %4714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4715 = getelementptr inbounds %struct.GPR, %struct.GPR* %4714, i32 0, i32 5
  %4716 = getelementptr inbounds %struct.Reg, %struct.Reg* %4715, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %4716 to i64*
  %4717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4718 = getelementptr inbounds %struct.GPR, %struct.GPR* %4717, i32 0, i32 11
  %4719 = getelementptr inbounds %struct.Reg, %struct.Reg* %4718, i32 0, i32 0
  %RDI.i43 = bitcast %union.anon* %4719 to i64*
  %4720 = load i64, i64* %RCX.i
  %4721 = add i64 %4720, 28
  %4722 = load i64, i64* %PC.i42
  %4723 = add i64 %4722, 4
  store i64 %4723, i64* %PC.i42
  %4724 = inttoptr i64 %4721 to i8*
  %4725 = load i8, i8* %4724
  %4726 = zext i8 %4725 to i64
  store i64 %4726, i64* %RDI.i43, align 8
  store %struct.Memory* %loadMem_400b09, %struct.Memory** %MEMORY
  %loadMem1_400b0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4728 = getelementptr inbounds %struct.GPR, %struct.GPR* %4727, i32 0, i32 33
  %4729 = getelementptr inbounds %struct.Reg, %struct.Reg* %4728, i32 0, i32 0
  %PC.i41 = bitcast %union.anon* %4729 to i64*
  %4730 = load i64, i64* %PC.i41
  %4731 = add i64 %4730, -1357
  %4732 = load i64, i64* %PC.i41
  %4733 = add i64 %4732, 5
  %4734 = load i64, i64* %PC.i41
  %4735 = add i64 %4734, 5
  store i64 %4735, i64* %PC.i41
  %4736 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4737 = load i64, i64* %4736, align 8
  %4738 = add i64 %4737, -8
  %4739 = inttoptr i64 %4738 to i64*
  store i64 %4733, i64* %4739
  store i64 %4738, i64* %4736, align 8
  %4740 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4731, i64* %4740, align 8
  store %struct.Memory* %loadMem1_400b0d, %struct.Memory** %MEMORY
  %loadMem2_400b0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400b0d = load i64, i64* %3
  %call2_400b0d = call %struct.Memory* @sub_4005c0.to_byte(%struct.State* %0, i64 %loadPC_400b0d, %struct.Memory* %loadMem2_400b0d)
  store %struct.Memory* %call2_400b0d, %struct.Memory** %MEMORY
  %loadMem_400b12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4742 = getelementptr inbounds %struct.GPR, %struct.GPR* %4741, i32 0, i32 33
  %4743 = getelementptr inbounds %struct.Reg, %struct.Reg* %4742, i32 0, i32 0
  %PC.i38 = bitcast %union.anon* %4743 to i64*
  %4744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4745 = getelementptr inbounds %struct.GPR, %struct.GPR* %4744, i32 0, i32 7
  %4746 = getelementptr inbounds %struct.Reg, %struct.Reg* %4745, i32 0, i32 0
  %RDX.i39 = bitcast %union.anon* %4746 to i64*
  %4747 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4748 = getelementptr inbounds %struct.GPR, %struct.GPR* %4747, i32 0, i32 15
  %4749 = getelementptr inbounds %struct.Reg, %struct.Reg* %4748, i32 0, i32 0
  %RBP.i40 = bitcast %union.anon* %4749 to i64*
  %4750 = load i64, i64* %RBP.i40
  %4751 = sub i64 %4750, 20
  %4752 = load i64, i64* %PC.i38
  %4753 = add i64 %4752, 3
  store i64 %4753, i64* %PC.i38
  %4754 = inttoptr i64 %4751 to i32*
  %4755 = load i32, i32* %4754
  %4756 = zext i32 %4755 to i64
  store i64 %4756, i64* %RDX.i39, align 8
  store %struct.Memory* %loadMem_400b12, %struct.Memory** %MEMORY
  %loadMem_400b15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4758 = getelementptr inbounds %struct.GPR, %struct.GPR* %4757, i32 0, i32 33
  %4759 = getelementptr inbounds %struct.Reg, %struct.Reg* %4758, i32 0, i32 0
  %PC.i36 = bitcast %union.anon* %4759 to i64*
  %4760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4761 = getelementptr inbounds %struct.GPR, %struct.GPR* %4760, i32 0, i32 1
  %4762 = getelementptr inbounds %struct.Reg, %struct.Reg* %4761, i32 0, i32 0
  %EAX.i37 = bitcast %union.anon* %4762 to i32*
  %4763 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4764 = getelementptr inbounds %struct.GPR, %struct.GPR* %4763, i32 0, i32 7
  %4765 = getelementptr inbounds %struct.Reg, %struct.Reg* %4764, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %4765 to i64*
  %4766 = load i64, i64* %RDX.i
  %4767 = load i32, i32* %EAX.i37
  %4768 = zext i32 %4767 to i64
  %4769 = load i64, i64* %PC.i36
  %4770 = add i64 %4769, 2
  store i64 %4770, i64* %PC.i36
  %4771 = trunc i64 %4766 to i32
  %4772 = sub i32 %4771, %4767
  %4773 = zext i32 %4772 to i64
  store i64 %4773, i64* %RDX.i, align 8
  %4774 = icmp ult i32 %4771, %4767
  %4775 = zext i1 %4774 to i8
  %4776 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4775, i8* %4776, align 1
  %4777 = and i32 %4772, 255
  %4778 = call i32 @llvm.ctpop.i32(i32 %4777)
  %4779 = trunc i32 %4778 to i8
  %4780 = and i8 %4779, 1
  %4781 = xor i8 %4780, 1
  %4782 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4781, i8* %4782, align 1
  %4783 = xor i64 %4768, %4766
  %4784 = trunc i64 %4783 to i32
  %4785 = xor i32 %4784, %4772
  %4786 = lshr i32 %4785, 4
  %4787 = trunc i32 %4786 to i8
  %4788 = and i8 %4787, 1
  %4789 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4788, i8* %4789, align 1
  %4790 = icmp eq i32 %4772, 0
  %4791 = zext i1 %4790 to i8
  %4792 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4791, i8* %4792, align 1
  %4793 = lshr i32 %4772, 31
  %4794 = trunc i32 %4793 to i8
  %4795 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4794, i8* %4795, align 1
  %4796 = lshr i32 %4771, 31
  %4797 = lshr i32 %4767, 31
  %4798 = xor i32 %4797, %4796
  %4799 = xor i32 %4793, %4796
  %4800 = add i32 %4799, %4798
  %4801 = icmp eq i32 %4800, 2
  %4802 = zext i1 %4801 to i8
  %4803 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4802, i8* %4803, align 1
  store %struct.Memory* %loadMem_400b15, %struct.Memory** %MEMORY
  %loadMem_400b17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4804 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4805 = getelementptr inbounds %struct.GPR, %struct.GPR* %4804, i32 0, i32 33
  %4806 = getelementptr inbounds %struct.Reg, %struct.Reg* %4805, i32 0, i32 0
  %PC.i34 = bitcast %union.anon* %4806 to i64*
  %4807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4808 = getelementptr inbounds %struct.GPR, %struct.GPR* %4807, i32 0, i32 7
  %4809 = getelementptr inbounds %struct.Reg, %struct.Reg* %4808, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %4809 to i32*
  %4810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4811 = getelementptr inbounds %struct.GPR, %struct.GPR* %4810, i32 0, i32 15
  %4812 = getelementptr inbounds %struct.Reg, %struct.Reg* %4811, i32 0, i32 0
  %RBP.i35 = bitcast %union.anon* %4812 to i64*
  %4813 = load i64, i64* %RBP.i35
  %4814 = sub i64 %4813, 20
  %4815 = load i32, i32* %EDX.i
  %4816 = zext i32 %4815 to i64
  %4817 = load i64, i64* %PC.i34
  %4818 = add i64 %4817, 3
  store i64 %4818, i64* %PC.i34
  %4819 = inttoptr i64 %4814 to i32*
  store i32 %4815, i32* %4819
  store %struct.Memory* %loadMem_400b17, %struct.Memory** %MEMORY
  %loadMem_400b1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4821 = getelementptr inbounds %struct.GPR, %struct.GPR* %4820, i32 0, i32 33
  %4822 = getelementptr inbounds %struct.Reg, %struct.Reg* %4821, i32 0, i32 0
  %PC.i32 = bitcast %union.anon* %4822 to i64*
  %4823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4824 = getelementptr inbounds %struct.GPR, %struct.GPR* %4823, i32 0, i32 15
  %4825 = getelementptr inbounds %struct.Reg, %struct.Reg* %4824, i32 0, i32 0
  %RBP.i33 = bitcast %union.anon* %4825 to i64*
  %4826 = load i64, i64* %RBP.i33
  %4827 = sub i64 %4826, 20
  %4828 = load i64, i64* %PC.i32
  %4829 = add i64 %4828, 4
  store i64 %4829, i64* %PC.i32
  %4830 = inttoptr i64 %4827 to i32*
  %4831 = load i32, i32* %4830
  %4832 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4832, align 1
  %4833 = and i32 %4831, 255
  %4834 = call i32 @llvm.ctpop.i32(i32 %4833)
  %4835 = trunc i32 %4834 to i8
  %4836 = and i8 %4835, 1
  %4837 = xor i8 %4836, 1
  %4838 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4837, i8* %4838, align 1
  %4839 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4839, align 1
  %4840 = icmp eq i32 %4831, 0
  %4841 = zext i1 %4840 to i8
  %4842 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4841, i8* %4842, align 1
  %4843 = lshr i32 %4831, 31
  %4844 = trunc i32 %4843 to i8
  %4845 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4844, i8* %4845, align 1
  %4846 = lshr i32 %4831, 31
  %4847 = xor i32 %4843, %4846
  %4848 = add i32 %4847, %4846
  %4849 = icmp eq i32 %4848, 2
  %4850 = zext i1 %4849 to i8
  %4851 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4850, i8* %4851, align 1
  store %struct.Memory* %loadMem_400b1a, %struct.Memory** %MEMORY
  %loadMem_400b1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4852 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4853 = getelementptr inbounds %struct.GPR, %struct.GPR* %4852, i32 0, i32 33
  %4854 = getelementptr inbounds %struct.Reg, %struct.Reg* %4853, i32 0, i32 0
  %PC.i31 = bitcast %union.anon* %4854 to i64*
  %4855 = load i64, i64* %PC.i31
  %4856 = add i64 %4855, 35
  %4857 = load i64, i64* %PC.i31
  %4858 = add i64 %4857, 6
  %4859 = load i64, i64* %PC.i31
  %4860 = add i64 %4859, 6
  store i64 %4860, i64* %PC.i31
  %4861 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4862 = load i8, i8* %4861, align 1
  %4863 = icmp eq i8 %4862, 0
  %4864 = zext i1 %4863 to i8
  store i8 %4864, i8* %BRANCH_TAKEN, align 1
  %4865 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4866 = select i1 %4863, i64 %4856, i64 %4858
  store i64 %4866, i64* %4865, align 8
  store %struct.Memory* %loadMem_400b1e, %struct.Memory** %MEMORY
  %loadBr_400b1e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400b1e = icmp eq i8 %loadBr_400b1e, 1
  br i1 %cmpBr_400b1e, label %block_.L_400b41, label %block_400b24

block_400b24:                                     ; preds = %block_400ae6
  %loadMem_400b24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4867 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4868 = getelementptr inbounds %struct.GPR, %struct.GPR* %4867, i32 0, i32 33
  %4869 = getelementptr inbounds %struct.Reg, %struct.Reg* %4868, i32 0, i32 0
  %PC.i28 = bitcast %union.anon* %4869 to i64*
  %4870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4871 = getelementptr inbounds %struct.GPR, %struct.GPR* %4870, i32 0, i32 1
  %4872 = getelementptr inbounds %struct.Reg, %struct.Reg* %4871, i32 0, i32 0
  %RAX.i29 = bitcast %union.anon* %4872 to i64*
  %4873 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4874 = getelementptr inbounds %struct.GPR, %struct.GPR* %4873, i32 0, i32 15
  %4875 = getelementptr inbounds %struct.Reg, %struct.Reg* %4874, i32 0, i32 0
  %RBP.i30 = bitcast %union.anon* %4875 to i64*
  %4876 = load i64, i64* %RBP.i30
  %4877 = sub i64 %4876, 16
  %4878 = load i64, i64* %PC.i28
  %4879 = add i64 %4878, 4
  store i64 %4879, i64* %PC.i28
  %4880 = inttoptr i64 %4877 to i64*
  %4881 = load i64, i64* %4880
  store i64 %4881, i64* %RAX.i29, align 8
  store %struct.Memory* %loadMem_400b24, %struct.Memory** %MEMORY
  %loadMem_400b28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4882 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4883 = getelementptr inbounds %struct.GPR, %struct.GPR* %4882, i32 0, i32 33
  %4884 = getelementptr inbounds %struct.Reg, %struct.Reg* %4883, i32 0, i32 0
  %PC.i26 = bitcast %union.anon* %4884 to i64*
  %4885 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4886 = getelementptr inbounds %struct.GPR, %struct.GPR* %4885, i32 0, i32 1
  %4887 = getelementptr inbounds %struct.Reg, %struct.Reg* %4886, i32 0, i32 0
  %RAX.i27 = bitcast %union.anon* %4887 to i64*
  %4888 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4889 = getelementptr inbounds %struct.GPR, %struct.GPR* %4888, i32 0, i32 11
  %4890 = getelementptr inbounds %struct.Reg, %struct.Reg* %4889, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %4890 to i64*
  %4891 = load i64, i64* %RAX.i27
  %4892 = add i64 %4891, 31
  %4893 = load i64, i64* %PC.i26
  %4894 = add i64 %4893, 4
  store i64 %4894, i64* %PC.i26
  %4895 = inttoptr i64 %4892 to i8*
  %4896 = load i8, i8* %4895
  %4897 = zext i8 %4896 to i64
  store i64 %4897, i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_400b28, %struct.Memory** %MEMORY
  %loadMem1_400b2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4898 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4899 = getelementptr inbounds %struct.GPR, %struct.GPR* %4898, i32 0, i32 33
  %4900 = getelementptr inbounds %struct.Reg, %struct.Reg* %4899, i32 0, i32 0
  %PC.i25 = bitcast %union.anon* %4900 to i64*
  %4901 = load i64, i64* %PC.i25
  %4902 = add i64 %4901, -1388
  %4903 = load i64, i64* %PC.i25
  %4904 = add i64 %4903, 5
  %4905 = load i64, i64* %PC.i25
  %4906 = add i64 %4905, 5
  store i64 %4906, i64* %PC.i25
  %4907 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4908 = load i64, i64* %4907, align 8
  %4909 = add i64 %4908, -8
  %4910 = inttoptr i64 %4909 to i64*
  store i64 %4904, i64* %4910
  store i64 %4909, i64* %4907, align 8
  %4911 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4902, i64* %4911, align 8
  store %struct.Memory* %loadMem1_400b2c, %struct.Memory** %MEMORY
  %loadMem2_400b2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400b2c = load i64, i64* %3
  %call2_400b2c = call %struct.Memory* @sub_4005c0.to_byte(%struct.State* %0, i64 %loadPC_400b2c, %struct.Memory* %loadMem2_400b2c)
  store %struct.Memory* %call2_400b2c, %struct.Memory** %MEMORY
  %loadMem_400b31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4912 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4913 = getelementptr inbounds %struct.GPR, %struct.GPR* %4912, i32 0, i32 33
  %4914 = getelementptr inbounds %struct.Reg, %struct.Reg* %4913, i32 0, i32 0
  %PC.i23 = bitcast %union.anon* %4914 to i64*
  %4915 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4916 = getelementptr inbounds %struct.GPR, %struct.GPR* %4915, i32 0, i32 1
  %4917 = getelementptr inbounds %struct.Reg, %struct.Reg* %4916, i32 0, i32 0
  %EAX.i24 = bitcast %union.anon* %4917 to i32*
  %4918 = load i32, i32* %EAX.i24
  %4919 = zext i32 %4918 to i64
  %4920 = load i64, i64* %PC.i23
  %4921 = add i64 %4920, 3
  store i64 %4921, i64* %PC.i23
  %4922 = sub i32 %4918, 4
  %4923 = icmp ult i32 %4918, 4
  %4924 = zext i1 %4923 to i8
  %4925 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4924, i8* %4925, align 1
  %4926 = and i32 %4922, 255
  %4927 = call i32 @llvm.ctpop.i32(i32 %4926)
  %4928 = trunc i32 %4927 to i8
  %4929 = and i8 %4928, 1
  %4930 = xor i8 %4929, 1
  %4931 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4930, i8* %4931, align 1
  %4932 = xor i64 4, %4919
  %4933 = trunc i64 %4932 to i32
  %4934 = xor i32 %4933, %4922
  %4935 = lshr i32 %4934, 4
  %4936 = trunc i32 %4935 to i8
  %4937 = and i8 %4936, 1
  %4938 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4937, i8* %4938, align 1
  %4939 = icmp eq i32 %4922, 0
  %4940 = zext i1 %4939 to i8
  %4941 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4940, i8* %4941, align 1
  %4942 = lshr i32 %4922, 31
  %4943 = trunc i32 %4942 to i8
  %4944 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4943, i8* %4944, align 1
  %4945 = lshr i32 %4918, 31
  %4946 = xor i32 %4942, %4945
  %4947 = add i32 %4946, %4945
  %4948 = icmp eq i32 %4947, 2
  %4949 = zext i1 %4948 to i8
  %4950 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4949, i8* %4950, align 1
  store %struct.Memory* %loadMem_400b31, %struct.Memory** %MEMORY
  %loadMem_400b34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4951 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4952 = getelementptr inbounds %struct.GPR, %struct.GPR* %4951, i32 0, i32 33
  %4953 = getelementptr inbounds %struct.Reg, %struct.Reg* %4952, i32 0, i32 0
  %PC.i22 = bitcast %union.anon* %4953 to i64*
  %4954 = load i64, i64* %PC.i22
  %4955 = add i64 %4954, 13
  %4956 = load i64, i64* %PC.i22
  %4957 = add i64 %4956, 6
  %4958 = load i64, i64* %PC.i22
  %4959 = add i64 %4958, 6
  store i64 %4959, i64* %PC.i22
  %4960 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4961 = load i8, i8* %4960, align 1
  store i8 %4961, i8* %BRANCH_TAKEN, align 1
  %4962 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4963 = icmp ne i8 %4961, 0
  %4964 = select i1 %4963, i64 %4955, i64 %4957
  store i64 %4964, i64* %4962, align 8
  store %struct.Memory* %loadMem_400b34, %struct.Memory** %MEMORY
  %loadBr_400b34 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400b34 = icmp eq i8 %loadBr_400b34, 1
  br i1 %cmpBr_400b34, label %block_.L_400b41, label %block_400b3a

block_400b3a:                                     ; preds = %block_400b24
  %loadMem_400b3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4965 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4966 = getelementptr inbounds %struct.GPR, %struct.GPR* %4965, i32 0, i32 33
  %4967 = getelementptr inbounds %struct.Reg, %struct.Reg* %4966, i32 0, i32 0
  %PC.i20 = bitcast %union.anon* %4967 to i64*
  %4968 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4969 = getelementptr inbounds %struct.GPR, %struct.GPR* %4968, i32 0, i32 15
  %4970 = getelementptr inbounds %struct.Reg, %struct.Reg* %4969, i32 0, i32 0
  %RBP.i21 = bitcast %union.anon* %4970 to i64*
  %4971 = load i64, i64* %RBP.i21
  %4972 = sub i64 %4971, 20
  %4973 = load i64, i64* %PC.i20
  %4974 = add i64 %4973, 7
  store i64 %4974, i64* %PC.i20
  %4975 = inttoptr i64 %4972 to i32*
  store i32 -32, i32* %4975
  store %struct.Memory* %loadMem_400b3a, %struct.Memory** %MEMORY
  br label %block_.L_400b41

block_.L_400b41:                                  ; preds = %block_400b3a, %block_400b24, %block_400ae6
  %loadMem_400b41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4977 = getelementptr inbounds %struct.GPR, %struct.GPR* %4976, i32 0, i32 33
  %4978 = getelementptr inbounds %struct.Reg, %struct.Reg* %4977, i32 0, i32 0
  %PC.i19 = bitcast %union.anon* %4978 to i64*
  %4979 = load i64, i64* %PC.i19
  %4980 = add i64 %4979, 11
  %4981 = load i64, i64* %PC.i19
  %4982 = add i64 %4981, 5
  store i64 %4982, i64* %PC.i19
  %4983 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4980, i64* %4983, align 8
  store %struct.Memory* %loadMem_400b41, %struct.Memory** %MEMORY
  br label %block_.L_400b4c

block_.L_400b46:                                  ; preds = %block_.L_400ace
  %loadMem_400b46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4984 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4985 = getelementptr inbounds %struct.GPR, %struct.GPR* %4984, i32 0, i32 33
  %4986 = getelementptr inbounds %struct.Reg, %struct.Reg* %4985, i32 0, i32 0
  %PC.i16 = bitcast %union.anon* %4986 to i64*
  %4987 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4988 = getelementptr inbounds %struct.GPR, %struct.GPR* %4987, i32 0, i32 1
  %4989 = getelementptr inbounds %struct.Reg, %struct.Reg* %4988, i32 0, i32 0
  %RAX.i17 = bitcast %union.anon* %4989 to i64*
  %4990 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4991 = getelementptr inbounds %struct.GPR, %struct.GPR* %4990, i32 0, i32 15
  %4992 = getelementptr inbounds %struct.Reg, %struct.Reg* %4991, i32 0, i32 0
  %RBP.i18 = bitcast %union.anon* %4992 to i64*
  %4993 = load i64, i64* %RBP.i18
  %4994 = sub i64 %4993, 64
  %4995 = load i64, i64* %PC.i16
  %4996 = add i64 %4995, 3
  store i64 %4996, i64* %PC.i16
  %4997 = inttoptr i64 %4994 to i32*
  %4998 = load i32, i32* %4997
  %4999 = zext i32 %4998 to i64
  store i64 %4999, i64* %RAX.i17, align 8
  store %struct.Memory* %loadMem_400b46, %struct.Memory** %MEMORY
  %loadMem_400b49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5001 = getelementptr inbounds %struct.GPR, %struct.GPR* %5000, i32 0, i32 33
  %5002 = getelementptr inbounds %struct.Reg, %struct.Reg* %5001, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %5002 to i64*
  %5003 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5004 = getelementptr inbounds %struct.GPR, %struct.GPR* %5003, i32 0, i32 1
  %5005 = getelementptr inbounds %struct.Reg, %struct.Reg* %5004, i32 0, i32 0
  %EAX.i14 = bitcast %union.anon* %5005 to i32*
  %5006 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5007 = getelementptr inbounds %struct.GPR, %struct.GPR* %5006, i32 0, i32 15
  %5008 = getelementptr inbounds %struct.Reg, %struct.Reg* %5007, i32 0, i32 0
  %RBP.i15 = bitcast %union.anon* %5008 to i64*
  %5009 = load i64, i64* %RBP.i15
  %5010 = sub i64 %5009, 20
  %5011 = load i32, i32* %EAX.i14
  %5012 = zext i32 %5011 to i64
  %5013 = load i64, i64* %PC.i13
  %5014 = add i64 %5013, 3
  store i64 %5014, i64* %PC.i13
  %5015 = inttoptr i64 %5010 to i32*
  store i32 %5011, i32* %5015
  store %struct.Memory* %loadMem_400b49, %struct.Memory** %MEMORY
  br label %block_.L_400b4c

block_.L_400b4c:                                  ; preds = %block_.L_400b46, %block_.L_400b41
  %loadMem_400b4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5016 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5017 = getelementptr inbounds %struct.GPR, %struct.GPR* %5016, i32 0, i32 33
  %5018 = getelementptr inbounds %struct.Reg, %struct.Reg* %5017, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %5018 to i64*
  %5019 = load i64, i64* %PC.i12
  %5020 = add i64 %5019, 5
  %5021 = load i64, i64* %PC.i12
  %5022 = add i64 %5021, 5
  store i64 %5022, i64* %PC.i12
  %5023 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5020, i64* %5023, align 8
  store %struct.Memory* %loadMem_400b4c, %struct.Memory** %MEMORY
  br label %block_.L_400b51

block_.L_400b51:                                  ; preds = %block_.L_400b4c, %block_400ac0
  %loadMem_400b51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5024 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5025 = getelementptr inbounds %struct.GPR, %struct.GPR* %5024, i32 0, i32 33
  %5026 = getelementptr inbounds %struct.Reg, %struct.Reg* %5025, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %5026 to i64*
  %5027 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5028 = getelementptr inbounds %struct.GPR, %struct.GPR* %5027, i32 0, i32 1
  %5029 = getelementptr inbounds %struct.Reg, %struct.Reg* %5028, i32 0, i32 0
  %RAX.i10 = bitcast %union.anon* %5029 to i64*
  %5030 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5031 = getelementptr inbounds %struct.GPR, %struct.GPR* %5030, i32 0, i32 15
  %5032 = getelementptr inbounds %struct.Reg, %struct.Reg* %5031, i32 0, i32 0
  %RBP.i11 = bitcast %union.anon* %5032 to i64*
  %5033 = load i64, i64* %RBP.i11
  %5034 = sub i64 %5033, 20
  %5035 = load i64, i64* %PC.i9
  %5036 = add i64 %5035, 3
  store i64 %5036, i64* %PC.i9
  %5037 = inttoptr i64 %5034 to i32*
  %5038 = load i32, i32* %5037
  %5039 = zext i32 %5038 to i64
  store i64 %5039, i64* %RAX.i10, align 8
  store %struct.Memory* %loadMem_400b51, %struct.Memory** %MEMORY
  %loadMem_400b54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5040 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5041 = getelementptr inbounds %struct.GPR, %struct.GPR* %5040, i32 0, i32 33
  %5042 = getelementptr inbounds %struct.Reg, %struct.Reg* %5041, i32 0, i32 0
  %PC.i7 = bitcast %union.anon* %5042 to i64*
  %5043 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5044 = getelementptr inbounds %struct.GPR, %struct.GPR* %5043, i32 0, i32 1
  %5045 = getelementptr inbounds %struct.Reg, %struct.Reg* %5044, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %5045 to i32*
  %5046 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5047 = getelementptr inbounds %struct.GPR, %struct.GPR* %5046, i32 0, i32 15
  %5048 = getelementptr inbounds %struct.Reg, %struct.Reg* %5047, i32 0, i32 0
  %RBP.i8 = bitcast %union.anon* %5048 to i64*
  %5049 = load i64, i64* %RBP.i8
  %5050 = sub i64 %5049, 4
  %5051 = load i32, i32* %EAX.i
  %5052 = zext i32 %5051 to i64
  %5053 = load i64, i64* %PC.i7
  %5054 = add i64 %5053, 3
  store i64 %5054, i64* %PC.i7
  %5055 = inttoptr i64 %5050 to i32*
  store i32 %5051, i32* %5055
  store %struct.Memory* %loadMem_400b54, %struct.Memory** %MEMORY
  br label %block_.L_400b57

block_.L_400b57:                                  ; preds = %block_.L_400b51, %block_400a78, %block_400a2a, %block_400a06, %block_40090c, %block_.L_40084e, %block_40080b, %block_4007d8, %block_4007ad, %block_40078b, %block_400764
  %loadMem_400b57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5056 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5057 = getelementptr inbounds %struct.GPR, %struct.GPR* %5056, i32 0, i32 33
  %5058 = getelementptr inbounds %struct.Reg, %struct.Reg* %5057, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %5058 to i64*
  %5059 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5060 = getelementptr inbounds %struct.GPR, %struct.GPR* %5059, i32 0, i32 1
  %5061 = getelementptr inbounds %struct.Reg, %struct.Reg* %5060, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %5061 to i64*
  %5062 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5063 = getelementptr inbounds %struct.GPR, %struct.GPR* %5062, i32 0, i32 15
  %5064 = getelementptr inbounds %struct.Reg, %struct.Reg* %5063, i32 0, i32 0
  %RBP.i6 = bitcast %union.anon* %5064 to i64*
  %5065 = load i64, i64* %RBP.i6
  %5066 = sub i64 %5065, 4
  %5067 = load i64, i64* %PC.i5
  %5068 = add i64 %5067, 3
  store i64 %5068, i64* %PC.i5
  %5069 = inttoptr i64 %5066 to i32*
  %5070 = load i32, i32* %5069
  %5071 = zext i32 %5070 to i64
  store i64 %5071, i64* %RAX.i, align 8
  store %struct.Memory* %loadMem_400b57, %struct.Memory** %MEMORY
  %loadMem_400b5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5072 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5073 = getelementptr inbounds %struct.GPR, %struct.GPR* %5072, i32 0, i32 33
  %5074 = getelementptr inbounds %struct.Reg, %struct.Reg* %5073, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %5074 to i64*
  %5075 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5076 = getelementptr inbounds %struct.GPR, %struct.GPR* %5075, i32 0, i32 13
  %5077 = getelementptr inbounds %struct.Reg, %struct.Reg* %5076, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %5077 to i64*
  %5078 = load i64, i64* %RSP.i
  %5079 = load i64, i64* %PC.i4
  %5080 = add i64 %5079, 4
  store i64 %5080, i64* %PC.i4
  %5081 = add i64 80, %5078
  store i64 %5081, i64* %RSP.i, align 8
  %5082 = icmp ult i64 %5081, %5078
  %5083 = icmp ult i64 %5081, 80
  %5084 = or i1 %5082, %5083
  %5085 = zext i1 %5084 to i8
  %5086 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5085, i8* %5086, align 1
  %5087 = trunc i64 %5081 to i32
  %5088 = and i32 %5087, 255
  %5089 = call i32 @llvm.ctpop.i32(i32 %5088)
  %5090 = trunc i32 %5089 to i8
  %5091 = and i8 %5090, 1
  %5092 = xor i8 %5091, 1
  %5093 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5092, i8* %5093, align 1
  %5094 = xor i64 80, %5078
  %5095 = xor i64 %5094, %5081
  %5096 = lshr i64 %5095, 4
  %5097 = trunc i64 %5096 to i8
  %5098 = and i8 %5097, 1
  %5099 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5098, i8* %5099, align 1
  %5100 = icmp eq i64 %5081, 0
  %5101 = zext i1 %5100 to i8
  %5102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5101, i8* %5102, align 1
  %5103 = lshr i64 %5081, 63
  %5104 = trunc i64 %5103 to i8
  %5105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5104, i8* %5105, align 1
  %5106 = lshr i64 %5078, 63
  %5107 = xor i64 %5103, %5106
  %5108 = add i64 %5107, %5103
  %5109 = icmp eq i64 %5108, 2
  %5110 = zext i1 %5109 to i8
  %5111 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5110, i8* %5111, align 1
  store %struct.Memory* %loadMem_400b5a, %struct.Memory** %MEMORY
  %loadMem_400b5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5113 = getelementptr inbounds %struct.GPR, %struct.GPR* %5112, i32 0, i32 33
  %5114 = getelementptr inbounds %struct.Reg, %struct.Reg* %5113, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %5114 to i64*
  %5115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5116 = getelementptr inbounds %struct.GPR, %struct.GPR* %5115, i32 0, i32 15
  %5117 = getelementptr inbounds %struct.Reg, %struct.Reg* %5116, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %5117 to i64*
  %5118 = load i64, i64* %PC.i2
  %5119 = add i64 %5118, 1
  store i64 %5119, i64* %PC.i2
  %5120 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5121 = load i64, i64* %5120, align 8
  %5122 = add i64 %5121, 8
  %5123 = inttoptr i64 %5121 to i64*
  %5124 = load i64, i64* %5123
  store i64 %5124, i64* %RBP.i3, align 8
  store i64 %5122, i64* %5120, align 8
  store %struct.Memory* %loadMem_400b5e, %struct.Memory** %MEMORY
  %loadMem_400b5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5126 = getelementptr inbounds %struct.GPR, %struct.GPR* %5125, i32 0, i32 33
  %5127 = getelementptr inbounds %struct.Reg, %struct.Reg* %5126, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %5127 to i64*
  %5128 = load i64, i64* %PC.i1
  %5129 = add i64 %5128, 1
  store i64 %5129, i64* %PC.i1
  %5130 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5131 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5132 = load i64, i64* %5131, align 8
  %5133 = inttoptr i64 %5132 to i64*
  %5134 = load i64, i64* %5133
  store i64 %5134, i64* %5130, align 8
  %5135 = add i64 %5132, 8
  store i64 %5135, i64* %5131, align 8
  store %struct.Memory* %loadMem_400b5f, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_400b5f
}

define %struct.Memory* @routine_pushq__rbp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
block_400478:
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

define %struct.Memory* @routine_subq__0x50___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %12 = sub i64 %9, 80
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %9, 80
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
  %23 = xor i64 80, %9
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
block_400478:
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

define %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.strlen_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400478:
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

define %struct.Memory* @routine_movl__eax___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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

define %struct.Memory* @routine_movl__ecx__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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

define %struct.Memory* @routine_cmpl__0x25__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sub i32 %14, 37
  %16 = icmp ult i32 %14, 37
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
  %25 = xor i32 %14, 37
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

define %struct.Memory* @routine_je_.L_40076f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400478:
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

define %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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

define %struct.Memory* @routine_movl__eax__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %13 = sub i64 %12, 4
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400b57(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400478:
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

define %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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

define %struct.Memory* @routine_addq__0x4___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %12 = add i64 4, %9
  store i64 %12, i64* %RAX, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 4
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
  %25 = xor i64 4, %9
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
block_400478:
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
block_400478:
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

define %struct.Memory* @routine_cmpl__0x64___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %13 = sub i32 %9, 100
  %14 = icmp ult i32 %9, 100
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
  %23 = xor i64 100, %10
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

define %struct.Memory* @routine_je_.L_400797(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400478:
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

define %struct.Memory* @routine_movl__0xfffffffe__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  store i32 -2, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movzbl_0x1__rax____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %13 = add i64 %12, 1
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i8*
  %17 = load i8, i8* %16
  %18 = zext i8 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.to_byte(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400478:
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

define %struct.Memory* @routine_cmpl__0x9___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %13 = sub i32 %9, 9
  %14 = icmp ult i32 %9, 9
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
  %23 = xor i64 9, %10
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

define %struct.Memory* @routine_je_.L_4007b9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400478:
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

define %struct.Memory* @routine_movl__0xfffffffd__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  store i32 -3, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movzbl_0x2__rax____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %13 = add i64 %12, 2
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i8*
  %17 = load i8, i8* %16
  %18 = zext i8 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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

define %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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

define %struct.Memory* @routine_shll__0x1___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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

define %struct.Memory* @routine_cmpl__0x1a___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %13 = sub i32 %9, 26
  %14 = icmp ult i32 %9, 26
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
  %23 = xor i64 26, %10
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

define %struct.Memory* @routine_je_.L_4007e4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400478:
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

define %struct.Memory* @routine_movl__0xfffffffc__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  store i32 -4, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movzbl_0x3__rax____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %13 = add i64 %12, 3
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i8*
  %17 = load i8, i8* %16
  %18 = zext i8 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x2___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  store i64 2, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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

define %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
block_400478:
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

define %struct.Memory* @routine_cltd(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 1
  store i64 %7, i64* %PC
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %10 = bitcast %union.anon* %9 to i32*
  %11 = load i32, i32* %10, align 8
  %12 = sext i32 %11 to i64
  %13 = lshr i64 %12, 32
  store i64 %13, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_idivl__edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EDI = bitcast %union.anon* %8 to i32*
  %9 = load i32, i32* %EDI
  %10 = zext i32 %9 to i64
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 2
  store i64 %12, i64* %PC
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %14 = bitcast %union.anon* %13 to i32*
  %15 = load i32, i32* %14, align 8
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %18 = bitcast %union.anon* %17 to i32*
  %19 = load i32, i32* %18, align 8
  %20 = zext i32 %19 to i64
  %21 = shl i64 %10, 32
  %22 = ashr exact i64 %21, 32
  %23 = shl i64 %20, 32
  %24 = or i64 %23, %16
  %25 = sdiv i64 %24, %22
  %26 = shl i64 %25, 32
  %27 = ashr exact i64 %26, 32
  %28 = icmp eq i64 %25, %27
  br i1 %28, label %33, label %29

; <label>:29:                                     ; preds = %block_400478
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %31, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:33:                                     ; preds = %block_400478
  %34 = srem i64 %24, %22
  %35 = getelementptr inbounds %union.anon, %union.anon* %13, i64 0, i32 0
  %36 = and i64 %25, 4294967295
  store i64 %36, i64* %35, align 8
  %37 = getelementptr inbounds %union.anon, %union.anon* %17, i64 0, i32 0
  %38 = and i64 %34, 4294967295
  store i64 %38, i64* %37, align 8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %39, align 1
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %40, align 1
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %41, align 1
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %42, align 1
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %43, align 1
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %44, align 1
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %29, %33
  %45 = phi %struct.Memory* [ %32, %29 ], [ %2, %33 ]
  ret %struct.Memory* %45
}

define %struct.Memory* @routine_cmpl__0x7___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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

define %struct.Memory* @routine_je_.L_400817(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400478:
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

define %struct.Memory* @routine_movl__0xfffffffb__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  store i32 -5, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsbl_0x4__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %13 = add i64 %12, 4
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i8*
  %17 = load i8, i8* %16
  %18 = sext i8 %17 to i64
  %19 = and i64 %18, 4294967295
  store i64 %19, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_andl__0xf___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %12 = and i64 15, %9
  %13 = trunc i64 %12 to i32
  store i64 %12, i64* %RCX, align 8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %14, align 1
  %15 = and i32 %13, 255
  %16 = call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = icmp eq i32 %13, 0
  %22 = zext i1 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %22, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x1___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %13 = sub i32 %9, 1
  %14 = icmp ult i32 %9, 1
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
  %23 = xor i64 1, %10
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

define %struct.Memory* @routine_jne_.L_40084e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400478:
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

define %struct.Memory* @routine_andl__0xf0___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %12 = and i64 240, %9
  %13 = trunc i64 %12 to i32
  store i64 %12, i64* %RCX, align 8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %14, align 1
  %15 = and i32 %13, 255
  %16 = call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = icmp eq i32 %13, 0
  %22 = zext i1 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %22, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x30___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %13 = sub i32 %9, 48
  %14 = icmp ult i32 %9, 48
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
  %23 = xor i64 48, %10
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

define %struct.Memory* @routine_movl__0xfffffffc__MINUS0x14__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  store i32 -4, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_40085a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400478:
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

define %struct.Memory* @routine_movl__0xfffffffa__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  store i32 -6, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsbl_0x5__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %13 = add i64 %12, 5
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i8*
  %17 = load i8, i8* %16
  %18 = sext i8 %17 to i64
  %19 = and i64 %18, 4294967295
  store i64 %19, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__cl___dl(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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

define %struct.Memory* @routine_movb__dl__MINUS0x21__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 15
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RBP = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 33
  %15 = load i8, i8* %DL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 3
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %14 to i8*
  store i8 %15, i8* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__dl__MINUS0x22__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 15
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RBP = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 34
  %15 = load i8, i8* %DL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 3
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %14 to i8*
  store i8 %15, i8* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movzbl_MINUS0x21__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %13 = sub i64 %12, 33
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i8*
  %17 = load i8, i8* %16
  %18 = zext i8 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x3___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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

define %struct.Memory* @routine_jne_.L_4008a5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400478:
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

define %struct.Memory* @routine_movzbl_MINUS0x22__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %13 = sub i64 %12, 34
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i8*
  %17 = load i8, i8* %16
  %18 = zext i8 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x60___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %13 = sub i32 %9, 96
  %14 = icmp ult i32 %9, 96
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
  %23 = xor i64 96, %10
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

define %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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

define %struct.Memory* @routine_addl__0x4___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %13 = add i32 4, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RAX, align 8
  %15 = icmp ult i32 %13, %12
  %16 = icmp ult i32 %13, 4
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
  %26 = xor i64 4, %9
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

define %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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

define %struct.Memory* @routine_jmpq_.L_4008ae(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400478:
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

define %struct.Memory* @routine_addl__0x5___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %13 = add i32 5, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RAX, align 8
  %15 = icmp ult i32 %13, %12
  %16 = icmp ult i32 %13, 5
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
  %26 = xor i64 5, %9
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

define %struct.Memory* @routine_movzbl_0x6__rax____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %13 = add i64 %12, 6
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i8*
  %17 = load i8, i8* %16
  %18 = zext i8 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__al___cl(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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

define %struct.Memory* @routine_movb__cl__MINUS0x23__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %14 = sub i64 %13, 35
  %15 = load i8, i8* %CL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 3
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %14 to i8*
  store i8 %15, i8* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %13 = sub i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movzbl_0x7__rdx____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDX
  %13 = add i64 %12, 7
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i8*
  %17 = load i8, i8* %16
  %18 = zext i8 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movzbl_MINUS0x23__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %13 = sub i64 %12, 35
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i8*
  %17 = load i8, i8* %16
  %18 = zext i8 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_orl__eax___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %12 = load i64, i64* %RDI
  %13 = load i32, i32* %EAX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = or i64 %14, %12
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
block_400478:
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

define %struct.Memory* @routine_movzbl_MINUS0x23__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %13 = sub i64 %12, 35
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i8*
  %17 = load i8, i8* %16
  %18 = zext i8 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_xorl__0xffffffff___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %12 = xor i64 -1, %9
  %13 = trunc i64 %12 to i32
  %14 = and i64 %12, 4294967295
  store i64 %14, i64* %RAX, align 8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %15, align 1
  %16 = and i32 %13, 255
  %17 = call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = icmp eq i32 %13, 0
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %23, i8* %24, align 1
  %25 = lshr i32 %13, 31
  %26 = trunc i32 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %28, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %29, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x46___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %13 = sub i32 %9, 70
  %14 = icmp ult i32 %9, 70
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
  %23 = xor i64 70, %10
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

define %struct.Memory* @routine_jne_.L_4008f7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400478:
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

define %struct.Memory* @routine_subl__0x1___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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

define %struct.Memory* @routine_jmpq_.L_400902(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400478:
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
block_400478:
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

define %struct.Memory* @routine_shll__cl___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RAX = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RAX
  %14 = load i8, i8* %CL
  %15 = zext i8 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 2
  store i64 %17, i64* %PC
  %18 = trunc i64 %15 to i5
  switch i5 %18, label %25 [
    i5 0, label %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit
    i5 1, label %19
  ]

; <label>:19:                                     ; preds = %block_400478
  %20 = trunc i64 %13 to i32
  %21 = shl i32 %20, 1
  %22 = icmp slt i32 %20, 0
  %23 = icmp slt i32 %21, 0
  %24 = xor i1 %22, %23
  br label %34

; <label>:25:                                     ; preds = %block_400478
  %26 = and i64 %15, 31
  %27 = add i64 %26, 4294967295
  %28 = and i64 %13, 4294967295
  %29 = and i64 %27, 4294967295
  %30 = shl i64 %28, %29
  %31 = trunc i64 %30 to i32
  %32 = icmp slt i32 %31, 0
  %33 = shl i32 %31, 1
  br label %34

; <label>:34:                                     ; preds = %25, %19
  %35 = phi i1 [ %22, %19 ], [ %32, %25 ]
  %36 = phi i1 [ %24, %19 ], [ false, %25 ]
  %37 = phi i32 [ %21, %19 ], [ %33, %25 ]
  %38 = zext i32 %37 to i64
  store i64 %38, i64* %RAX, align 8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %40 = zext i1 %35 to i8
  store i8 %40, i8* %39, align 1
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %42 = and i32 %37, 254
  %43 = call i32 @llvm.ctpop.i32(i32 %42)
  %44 = trunc i32 %43 to i8
  %45 = and i8 %44, 1
  %46 = xor i8 %45, 1
  store i8 %46, i8* %41, align 1
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %47, align 1
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %49 = icmp eq i32 %37, 0
  %50 = zext i1 %49 to i8
  store i8 %50, i8* %48, align 1
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %52 = lshr i32 %37, 31
  %53 = trunc i32 %52 to i8
  store i8 %53, i8* %51, align 1
  %54 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %55 = zext i1 %36 to i8
  store i8 %55, i8* %54, align 1
  br label %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit

_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit: ; preds = %block_400478, %34
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0__MINUS0x14__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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

define %struct.Memory* @routine_je_.L_400918(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400478:
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

define %struct.Memory* @routine_movl__0xfffffff9__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  store i32 -7, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_xorl__edi___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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

define %struct.Memory* @routine_movl__0x4___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  store i64 4, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__0x8___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %12 = add i64 8, %9
  store i64 %12, i64* %RAX, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 8
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
  %25 = xor i64 8, %9
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

define %struct.Memory* @routine_movq__rax___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  store i64 %12, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.read_bytes(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400478:
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

define %struct.Memory* @routine_movw__ax___cx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %AX = bitcast %union.anon* %8 to i16*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %CX = bitcast %union.anon* %11 to i16*
  %12 = load i16, i16* %AX
  %13 = zext i16 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  store i16 %12, i16* %CX, align 2
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movw__cx__MINUS0x26__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %CX = bitcast %union.anon* %8 to i16*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 38
  %14 = load i16, i16* %CX
  %15 = zext i16 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i16*
  store i16 %14, i16* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movzwl_MINUS0x26__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %13 = sub i64 %12, 38
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i16*
  %17 = load i16, i16* %16
  %18 = zext i16 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_orl__0x5555___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %12 = or i64 21845, %9
  %13 = trunc i64 %12 to i32
  %14 = and i64 %12, 4294967295
  store i64 %14, i64* %RAX, align 8
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

define %struct.Memory* @routine_cmpl__0xdd57___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %12 = add i64 %11, 5
  store i64 %12, i64* %PC
  %13 = sub i32 %9, 56663
  %14 = icmp ult i32 %9, 56663
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
  %23 = xor i64 56663, %10
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

define %struct.Memory* @routine_jne_.L_40096a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400478:
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

define %struct.Memory* @routine_orl__0xaaaa___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %12 = or i64 43690, %9
  %13 = trunc i64 %12 to i32
  %14 = and i64 %12, 4294967295
  store i64 %14, i64* %RAX, align 8
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

define %struct.Memory* @routine_cmpl__0xfebb___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %12 = add i64 %11, 5
  store i64 %12, i64* %PC
  %13 = sub i32 %9, 65211
  %14 = icmp ult i32 %9, 65211
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
  %23 = xor i64 65211, %10
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

define %struct.Memory* @routine_movl__0xaaaa__MINUS0x14__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  store i32 43690, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400971(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400478:
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

define %struct.Memory* @routine_movl__0xbbbb__MINUS0x14__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  store i32 48059, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x8___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  store i64 8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__0xc___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %12 = add i64 12, %9
  store i64 %12, i64* %RAX, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 12
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
  %25 = xor i64 12, %9
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

define %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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

define %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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

define %struct.Memory* @routine_xorl__0xa488769d___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %12 = xor i64 -1534560611, %9
  %13 = trunc i64 %12 to i32
  %14 = and i64 %12, 4294967295
  store i64 %14, i64* %RAX, align 8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %15, align 1
  %16 = and i32 %13, 255
  %17 = call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = icmp eq i32 %13, 0
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %23, i8* %24, align 1
  %25 = lshr i32 %13, 31
  %26 = trunc i32 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %28, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %29, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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

define %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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

define %struct.Memory* @routine_shrl__0x10___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %12 = and i64 %9, 4294967295
  %13 = lshr i64 %12, 15
  %14 = trunc i64 %13 to i8
  %15 = and i8 %14, 1
  %16 = lshr i64 %13, 1
  %17 = trunc i64 %16 to i32
  %18 = and i32 %17, 2147483647
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RAX, align 8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %15, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %22 = and i32 %17, 255
  %23 = call i32 @llvm.ctpop.i32(i32 %22)
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  %26 = xor i8 %25, 1
  store i8 %26, i8* %21, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %29 = icmp eq i32 %18, 0
  %30 = zext i1 %29 to i8
  store i8 %30, i8* %28, align 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %32, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x34__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %13 = sub i64 %12, 52
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_andl__0xffff___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %12 = and i64 65535, %9
  %13 = trunc i64 %12 to i32
  store i64 %12, i64* %RAX, align 8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %14, align 1
  %15 = and i32 %13, 255
  %16 = call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = icmp eq i32 %13, 0
  %22 = zext i1 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %22, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x38__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %13 = sub i64 %12, 56
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x4f__MINUS0x34__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %RBP
  %10 = sub i64 %9, 52
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sub i32 %14, 79
  %16 = icmp ult i32 %14, 79
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
  %25 = xor i32 %14, 79
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

define %struct.Memory* @routine_jne_.L_4009cc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400478:
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

define %struct.Memory* @routine_movl_MINUS0x38__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_MINUS0x14__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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

define %struct.Memory* @routine_movl__0x0__MINUS0x14__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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

define %struct.Memory* @routine_jmpq_.L_4009d3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400478:
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

define %struct.Memory* @routine_movl__0xbcdf__MINUS0x14__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  store i32 48351, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x14__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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

define %struct.Memory* @routine_addq__0x14___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %12 = add i64 20, %9
  store i64 %12, i64* %RAX, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 20
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
  %25 = xor i64 20, %9
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

define %struct.Memory* @routine_movl__eax__MINUS0x3c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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

define %struct.Memory* @routine_movl_MINUS0x3c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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

define %struct.Memory* @routine_subl__0x3___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %13 = sub i32 %12, 3
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RAX, align 8
  %15 = icmp ult i32 %12, 3
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
  %24 = xor i64 3, %9
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

define %struct.Memory* @routine_andl__0x7___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %12 = and i64 7, %9
  %13 = trunc i64 %12 to i32
  store i64 %12, i64* %RAX, align 8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %14, align 1
  %15 = and i32 %13, 255
  %16 = call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = icmp eq i32 %13, 0
  %22 = zext i1 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %22, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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

define %struct.Memory* @routine_je_.L_400a12(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400478:
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

define %struct.Memory* @routine_movl__0xffffffeb__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  store i32 -21, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl__0x80000000___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %13 = sub i32 %12, -2147483648
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RAX, align 8
  %15 = icmp ult i32 %12, -2147483648
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
  %24 = xor i64 -2147483648, %9
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
  %38 = xor i32 1, %37
  %39 = xor i32 %34, %37
  %40 = add i32 %39, %38
  %41 = icmp eq i32 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0xfffffff__MINUS0x3c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %14 = load i32, i32* %13
  %15 = sub i32 %14, 268435455
  %16 = icmp ult i32 %14, 268435455
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
  %25 = xor i32 %14, 268435455
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

define %struct.Memory* @routine_jbe_.L_400a36(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400478:
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

define %struct.Memory* @routine_movl__0xffffffea__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  store i32 -22, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x2710___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  store i64 10000, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x3c__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_xorl__0xd00000___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %12 = xor i64 13631488, %9
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
  %22 = icmp eq i32 %13, 0
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %23, i8* %24, align 1
  %25 = lshr i32 %13, 31
  %26 = trunc i32 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %28, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %29, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__MINUS0x3c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %13 = sub i64 %12, 60
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_shrl__0x4___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %12 = and i64 %9, 4294967295
  %13 = lshr i64 %12, 3
  %14 = trunc i64 %13 to i8
  %15 = and i8 %14, 1
  %16 = lshr i64 %13, 1
  %17 = trunc i64 %16 to i32
  %18 = and i32 %17, 2147483647
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RCX, align 8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %15, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %22 = and i32 %17, 255
  %23 = call i32 @llvm.ctpop.i32(i32 %22)
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  %26 = xor i8 %25, 1
  store i8 %26, i8* %21, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %29 = icmp eq i32 %18, 0
  %30 = zext i1 %29 to i8
  store i8 %30, i8* %28, align 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %32, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl__0xe2___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %13 = sub i32 %12, 226
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RCX, align 8
  %15 = icmp ult i32 %12, 226
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
  %24 = xor i64 226, %9
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

define %struct.Memory* @routine_movl__eax__MINUS0x44__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %13 = sub i64 %12, 68
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %12 = load i32, i32* %ECX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_xorl__edx___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EDX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDX = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDX
  %13 = load i32, i32* %EDX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = xor i64 %14, %12
  %18 = trunc i64 %17 to i32
  %19 = and i64 %17, 4294967295
  store i64 %19, i64* %RDX, align 8
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

define %struct.Memory* @routine_movl_MINUS0x44__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %13 = sub i64 %12, 68
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_divl__ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %12 = add i64 %11, 2
  store i64 %12, i64* %PC
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %14 = bitcast %union.anon* %13 to i32*
  %15 = load i32, i32* %14, align 8
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %18 = bitcast %union.anon* %17 to i32*
  %19 = load i32, i32* %18, align 8
  %20 = zext i32 %19 to i64
  %21 = and i64 %10, 4294967295
  %22 = shl i64 %20, 32
  %23 = or i64 %22, %16
  %24 = udiv i64 %23, %21
  %25 = and i64 %24, 4294967295
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %31, label %27

; <label>:27:                                     ; preds = %block_400478
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %29, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L9DIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:31:                                     ; preds = %block_400478
  %32 = urem i64 %23, %21
  %33 = getelementptr inbounds %union.anon, %union.anon* %13, i64 0, i32 0
  store i64 %24, i64* %33, align 8
  %34 = getelementptr inbounds %union.anon, %union.anon* %17, i64 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %35, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %36, align 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %37, align 1
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %38, align 1
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %39, align 1
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %40, align 1
  br label %_ZN12_GLOBAL__N_1L9DIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L9DIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %27, %31
  %41 = phi %struct.Memory* [ %30, %27 ], [ %2, %31 ]
  ret %struct.Memory* %41
}

define %struct.Memory* @routine_cmpl__0x3__MINUS0x3c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sub i32 %14, 3
  %16 = icmp ult i32 %14, 3
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
  %25 = xor i32 %14, 3
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

define %struct.Memory* @routine_je_.L_400a83(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400478:
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

define %struct.Memory* @routine_addq__0x1c___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %12 = add i64 28, %9
  store i64 %12, i64* %RAX, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 28
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
  %25 = xor i64 28, %9
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

define %struct.Memory* @routine_movl__eax__MINUS0x40__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %13 = sub i64 %12, 64
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x10__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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

define %struct.Memory* @routine_movsbl_0x1c__rsi____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %13 = add i64 %12, 28
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i8*
  %17 = load i8, i8* %16
  %18 = sext i8 %17 to i64
  %19 = and i64 %18, 4294967295
  store i64 %19, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x64___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %13 = sub i32 %9, 100
  %14 = icmp ult i32 %9, 100
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
  %23 = xor i64 100, %10
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

define %struct.Memory* @routine_jne_.L_400ace(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400478:
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

define %struct.Memory* @routine_movsbl_0x1d__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %13 = add i64 %12, 29
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i8*
  %17 = load i8, i8* %16
  %18 = sext i8 %17 to i64
  %19 = and i64 %18, 4294967295
  store i64 %19, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x40__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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

define %struct.Memory* @routine_xorl_MINUS0x14__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %20 = xor i32 %19, %17
  %21 = zext i32 %20 to i64
  store i64 %21, i64* %RAX, align 8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %22, align 1
  %23 = and i32 %20, 255
  %24 = call i32 @llvm.ctpop.i32(i32 %23)
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = xor i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %27, i8* %28, align 1
  %29 = icmp eq i32 %20, 0
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %30, i8* %31, align 1
  %32 = lshr i32 %20, 31
  %33 = trunc i32 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %33, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %35, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %36, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400b51(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400478:
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

define %struct.Memory* @routine_movsbl_0x1c__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %13 = add i64 %12, 28
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i8*
  %17 = load i8, i8* %16
  %18 = sext i8 %17 to i64
  %19 = and i64 %18, 4294967295
  store i64 %19, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsbl_0x1d__rax____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %13 = add i64 %12, 29
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i8*
  %17 = load i8, i8* %16
  %18 = sext i8 %17 to i64
  %19 = and i64 %18, 4294967295
  store i64 %19, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__edx___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %EDX = bitcast %union.anon* %11 to i32*
  %12 = load i32, i32* %ECX
  %13 = zext i32 %12 to i64
  %14 = load i32, i32* %EDX
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

define %struct.Memory* @routine_jne_.L_400b46(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400478:
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

define %struct.Memory* @routine_movl__0xf___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  store i64 15, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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

define %struct.Memory* @routine_movsbl_0x1f__rcx____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %13 = add i64 %12, 31
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i8*
  %17 = load i8, i8* %16
  %18 = sext i8 %17 to i64
  %19 = and i64 %18, 4294967295
  store i64 %19, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsbl_0x1e__rcx____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %13 = add i64 %12, 30
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i8*
  %17 = load i8, i8* %16
  %18 = sext i8 %17 to i64
  %19 = and i64 %18, 4294967295
  store i64 %19, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl__esi___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %12 = load i64, i64* %RDX
  %13 = load i32, i32* %ESI
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = trunc i64 %12 to i32
  %18 = sub i32 %17, %13
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RDX, align 8
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

define %struct.Memory* @routine_subl__edx___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %12 = load i64, i64* %RAX
  %13 = load i32, i32* %EDX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = trunc i64 %12 to i32
  %18 = sub i32 %17, %13
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RAX, align 8
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

define %struct.Memory* @routine_addl_MINUS0x14__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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

define %struct.Memory* @routine_movzbl_0x1c__rcx____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RCX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RCX
  %13 = add i64 %12, 28
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i8*
  %17 = load i8, i8* %16
  %18 = zext i8 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x14__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %13 = sub i64 %12, 20
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl__eax___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %17 = trunc i64 %12 to i32
  %18 = sub i32 %17, %13
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RDX, align 8
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

define %struct.Memory* @routine_movl__edx__MINUS0x14__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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

define %struct.Memory* @routine_jne_.L_400b41(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400478:
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

define %struct.Memory* @routine_movzbl_0x1f__rax____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %13 = add i64 %12, 31
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i8*
  %17 = load i8, i8* %16
  %18 = zext i8 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x4___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %13 = sub i32 %9, 4
  %14 = icmp ult i32 %9, 4
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
  %23 = xor i64 4, %10
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

define %struct.Memory* @routine_je_.L_400b41(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400478:
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

define %struct.Memory* @routine_movl__0xffffffe0__MINUS0x14__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  store i32 -32, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400b4c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400478:
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

define %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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

define %struct.Memory* @routine_addq__0x50___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %12 = add i64 80, %9
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 80
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
  %25 = xor i64 80, %9
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
block_400478:
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
block_400478:
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
