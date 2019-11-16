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
%G_0x54a1a4__rip__type = type <{ [8 x i8] }>
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
@G_0x54a1a4__rip_ = global %G_0x54a1a4__rip__type zeroinitializer

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

declare %struct.Memory* @sub_451370.vgprintf(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @gprintf(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_451db0 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_451db0, %struct.Memory** %MEMORY
  %loadMem_451db1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i139 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i140 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i141 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i140
  %27 = load i64, i64* %PC.i139
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i139
  store i64 %26, i64* %RBP.i141, align 8
  store %struct.Memory* %loadMem_451db1, %struct.Memory** %MEMORY
  %loadMem_451db4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i137 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i138 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i138
  %36 = load i64, i64* %PC.i137
  %37 = add i64 %36, 7
  store i64 %37, i64* %PC.i137
  %38 = sub i64 %35, 384
  store i64 %38, i64* %RSP.i138, align 8
  %39 = icmp ult i64 %35, 384
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
  %49 = xor i64 384, %35
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
  store %struct.Memory* %loadMem_451db4, %struct.Memory** %MEMORY
  %loadMem_451dbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i136 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %73 = bitcast %union.anon* %72 to %struct.anon.2*
  %AL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %73, i32 0, i32 0
  %74 = load i8, i8* %AL.i
  %75 = zext i8 %74 to i64
  %76 = load i8, i8* %AL.i
  %77 = zext i8 %76 to i64
  %78 = load i64, i64* %PC.i136
  %79 = add i64 %78, 2
  store i64 %79, i64* %PC.i136
  %80 = and i64 %77, %75
  %81 = trunc i64 %80 to i8
  %82 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %82, align 1
  %83 = trunc i64 %80 to i32
  %84 = and i32 %83, 255
  %85 = call i32 @llvm.ctpop.i32(i32 %84)
  %86 = trunc i32 %85 to i8
  %87 = and i8 %86, 1
  %88 = xor i8 %87, 1
  %89 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %88, i8* %89, align 1
  %90 = icmp eq i8 %81, 0
  %91 = zext i1 %90 to i8
  %92 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %91, i8* %92, align 1
  %93 = lshr i8 %81, 7
  %94 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %93, i8* %94, align 1
  %95 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %95, align 1
  %96 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %96, align 1
  store %struct.Memory* %loadMem_451dbb, %struct.Memory** %MEMORY
  %loadMem_451dbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %97 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %98 = getelementptr inbounds %struct.GPR, %struct.GPR* %97, i32 0, i32 33
  %99 = getelementptr inbounds %struct.Reg, %struct.Reg* %98, i32 0, i32 0
  %PC.i133 = bitcast %union.anon* %99 to i64*
  %100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %101 = getelementptr inbounds %struct.GPR, %struct.GPR* %100, i32 0, i32 15
  %102 = getelementptr inbounds %struct.Reg, %struct.Reg* %101, i32 0, i32 0
  %RBP.i134 = bitcast %union.anon* %102 to i64*
  %103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %104 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %103, i64 0, i64 7
  %XMM7.i135 = bitcast %union.VectorReg* %104 to %union.vec128_t*
  %105 = load i64, i64* %RBP.i134
  %106 = sub i64 %105, 224
  %107 = bitcast %union.vec128_t* %XMM7.i135 to i8*
  %108 = load i64, i64* %PC.i133
  %109 = add i64 %108, 7
  store i64 %109, i64* %PC.i133
  %110 = bitcast i8* %107 to <2 x float>*
  %111 = load <2 x float>, <2 x float>* %110, align 1
  %112 = getelementptr inbounds i8, i8* %107, i64 8
  %113 = bitcast i8* %112 to <2 x float>*
  %114 = load <2 x float>, <2 x float>* %113, align 1
  %115 = extractelement <2 x float> %111, i32 0
  %116 = inttoptr i64 %106 to float*
  store float %115, float* %116
  %117 = add i64 %106, 4
  %118 = extractelement <2 x float> %111, i32 1
  %119 = inttoptr i64 %117 to float*
  store float %118, float* %119
  %120 = add i64 %106, 8
  %121 = extractelement <2 x float> %114, i32 0
  %122 = inttoptr i64 %120 to float*
  store float %121, float* %122
  %123 = add i64 %106, 12
  %124 = extractelement <2 x float> %114, i32 1
  %125 = inttoptr i64 %123 to float*
  store float %124, float* %125
  store %struct.Memory* %loadMem_451dbd, %struct.Memory** %MEMORY
  %loadMem_451dc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %127 = getelementptr inbounds %struct.GPR, %struct.GPR* %126, i32 0, i32 33
  %128 = getelementptr inbounds %struct.Reg, %struct.Reg* %127, i32 0, i32 0
  %PC.i130 = bitcast %union.anon* %128 to i64*
  %129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %130 = getelementptr inbounds %struct.GPR, %struct.GPR* %129, i32 0, i32 15
  %131 = getelementptr inbounds %struct.Reg, %struct.Reg* %130, i32 0, i32 0
  %RBP.i131 = bitcast %union.anon* %131 to i64*
  %132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %133 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %132, i64 0, i64 6
  %XMM6.i132 = bitcast %union.VectorReg* %133 to %union.vec128_t*
  %134 = load i64, i64* %RBP.i131
  %135 = sub i64 %134, 240
  %136 = bitcast %union.vec128_t* %XMM6.i132 to i8*
  %137 = load i64, i64* %PC.i130
  %138 = add i64 %137, 7
  store i64 %138, i64* %PC.i130
  %139 = bitcast i8* %136 to <2 x float>*
  %140 = load <2 x float>, <2 x float>* %139, align 1
  %141 = getelementptr inbounds i8, i8* %136, i64 8
  %142 = bitcast i8* %141 to <2 x float>*
  %143 = load <2 x float>, <2 x float>* %142, align 1
  %144 = extractelement <2 x float> %140, i32 0
  %145 = inttoptr i64 %135 to float*
  store float %144, float* %145
  %146 = add i64 %135, 4
  %147 = extractelement <2 x float> %140, i32 1
  %148 = inttoptr i64 %146 to float*
  store float %147, float* %148
  %149 = add i64 %135, 8
  %150 = extractelement <2 x float> %143, i32 0
  %151 = inttoptr i64 %149 to float*
  store float %150, float* %151
  %152 = add i64 %135, 12
  %153 = extractelement <2 x float> %143, i32 1
  %154 = inttoptr i64 %152 to float*
  store float %153, float* %154
  store %struct.Memory* %loadMem_451dc4, %struct.Memory** %MEMORY
  %loadMem_451dcb = load %struct.Memory*, %struct.Memory** %MEMORY
  %155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %156 = getelementptr inbounds %struct.GPR, %struct.GPR* %155, i32 0, i32 33
  %157 = getelementptr inbounds %struct.Reg, %struct.Reg* %156, i32 0, i32 0
  %PC.i127 = bitcast %union.anon* %157 to i64*
  %158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %159 = getelementptr inbounds %struct.GPR, %struct.GPR* %158, i32 0, i32 15
  %160 = getelementptr inbounds %struct.Reg, %struct.Reg* %159, i32 0, i32 0
  %RBP.i128 = bitcast %union.anon* %160 to i64*
  %161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %162 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %161, i64 0, i64 5
  %XMM5.i129 = bitcast %union.VectorReg* %162 to %union.vec128_t*
  %163 = load i64, i64* %RBP.i128
  %164 = sub i64 %163, 256
  %165 = bitcast %union.vec128_t* %XMM5.i129 to i8*
  %166 = load i64, i64* %PC.i127
  %167 = add i64 %166, 7
  store i64 %167, i64* %PC.i127
  %168 = bitcast i8* %165 to <2 x float>*
  %169 = load <2 x float>, <2 x float>* %168, align 1
  %170 = getelementptr inbounds i8, i8* %165, i64 8
  %171 = bitcast i8* %170 to <2 x float>*
  %172 = load <2 x float>, <2 x float>* %171, align 1
  %173 = extractelement <2 x float> %169, i32 0
  %174 = inttoptr i64 %164 to float*
  store float %173, float* %174
  %175 = add i64 %164, 4
  %176 = extractelement <2 x float> %169, i32 1
  %177 = inttoptr i64 %175 to float*
  store float %176, float* %177
  %178 = add i64 %164, 8
  %179 = extractelement <2 x float> %172, i32 0
  %180 = inttoptr i64 %178 to float*
  store float %179, float* %180
  %181 = add i64 %164, 12
  %182 = extractelement <2 x float> %172, i32 1
  %183 = inttoptr i64 %181 to float*
  store float %182, float* %183
  store %struct.Memory* %loadMem_451dcb, %struct.Memory** %MEMORY
  %loadMem_451dd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %185 = getelementptr inbounds %struct.GPR, %struct.GPR* %184, i32 0, i32 33
  %186 = getelementptr inbounds %struct.Reg, %struct.Reg* %185, i32 0, i32 0
  %PC.i124 = bitcast %union.anon* %186 to i64*
  %187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %188 = getelementptr inbounds %struct.GPR, %struct.GPR* %187, i32 0, i32 15
  %189 = getelementptr inbounds %struct.Reg, %struct.Reg* %188, i32 0, i32 0
  %RBP.i125 = bitcast %union.anon* %189 to i64*
  %190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %191 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %190, i64 0, i64 4
  %XMM4.i126 = bitcast %union.VectorReg* %191 to %union.vec128_t*
  %192 = load i64, i64* %RBP.i125
  %193 = sub i64 %192, 272
  %194 = bitcast %union.vec128_t* %XMM4.i126 to i8*
  %195 = load i64, i64* %PC.i124
  %196 = add i64 %195, 7
  store i64 %196, i64* %PC.i124
  %197 = bitcast i8* %194 to <2 x float>*
  %198 = load <2 x float>, <2 x float>* %197, align 1
  %199 = getelementptr inbounds i8, i8* %194, i64 8
  %200 = bitcast i8* %199 to <2 x float>*
  %201 = load <2 x float>, <2 x float>* %200, align 1
  %202 = extractelement <2 x float> %198, i32 0
  %203 = inttoptr i64 %193 to float*
  store float %202, float* %203
  %204 = add i64 %193, 4
  %205 = extractelement <2 x float> %198, i32 1
  %206 = inttoptr i64 %204 to float*
  store float %205, float* %206
  %207 = add i64 %193, 8
  %208 = extractelement <2 x float> %201, i32 0
  %209 = inttoptr i64 %207 to float*
  store float %208, float* %209
  %210 = add i64 %193, 12
  %211 = extractelement <2 x float> %201, i32 1
  %212 = inttoptr i64 %210 to float*
  store float %211, float* %212
  store %struct.Memory* %loadMem_451dd2, %struct.Memory** %MEMORY
  %loadMem_451dd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %214 = getelementptr inbounds %struct.GPR, %struct.GPR* %213, i32 0, i32 33
  %215 = getelementptr inbounds %struct.Reg, %struct.Reg* %214, i32 0, i32 0
  %PC.i121 = bitcast %union.anon* %215 to i64*
  %216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %217 = getelementptr inbounds %struct.GPR, %struct.GPR* %216, i32 0, i32 15
  %218 = getelementptr inbounds %struct.Reg, %struct.Reg* %217, i32 0, i32 0
  %RBP.i122 = bitcast %union.anon* %218 to i64*
  %219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %220 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %219, i64 0, i64 3
  %XMM3.i123 = bitcast %union.VectorReg* %220 to %union.vec128_t*
  %221 = load i64, i64* %RBP.i122
  %222 = sub i64 %221, 288
  %223 = bitcast %union.vec128_t* %XMM3.i123 to i8*
  %224 = load i64, i64* %PC.i121
  %225 = add i64 %224, 7
  store i64 %225, i64* %PC.i121
  %226 = bitcast i8* %223 to <2 x float>*
  %227 = load <2 x float>, <2 x float>* %226, align 1
  %228 = getelementptr inbounds i8, i8* %223, i64 8
  %229 = bitcast i8* %228 to <2 x float>*
  %230 = load <2 x float>, <2 x float>* %229, align 1
  %231 = extractelement <2 x float> %227, i32 0
  %232 = inttoptr i64 %222 to float*
  store float %231, float* %232
  %233 = add i64 %222, 4
  %234 = extractelement <2 x float> %227, i32 1
  %235 = inttoptr i64 %233 to float*
  store float %234, float* %235
  %236 = add i64 %222, 8
  %237 = extractelement <2 x float> %230, i32 0
  %238 = inttoptr i64 %236 to float*
  store float %237, float* %238
  %239 = add i64 %222, 12
  %240 = extractelement <2 x float> %230, i32 1
  %241 = inttoptr i64 %239 to float*
  store float %240, float* %241
  store %struct.Memory* %loadMem_451dd9, %struct.Memory** %MEMORY
  %loadMem_451de0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %243 = getelementptr inbounds %struct.GPR, %struct.GPR* %242, i32 0, i32 33
  %244 = getelementptr inbounds %struct.Reg, %struct.Reg* %243, i32 0, i32 0
  %PC.i118 = bitcast %union.anon* %244 to i64*
  %245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %246 = getelementptr inbounds %struct.GPR, %struct.GPR* %245, i32 0, i32 15
  %247 = getelementptr inbounds %struct.Reg, %struct.Reg* %246, i32 0, i32 0
  %RBP.i119 = bitcast %union.anon* %247 to i64*
  %248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %249 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %248, i64 0, i64 2
  %XMM2.i120 = bitcast %union.VectorReg* %249 to %union.vec128_t*
  %250 = load i64, i64* %RBP.i119
  %251 = sub i64 %250, 304
  %252 = bitcast %union.vec128_t* %XMM2.i120 to i8*
  %253 = load i64, i64* %PC.i118
  %254 = add i64 %253, 7
  store i64 %254, i64* %PC.i118
  %255 = bitcast i8* %252 to <2 x float>*
  %256 = load <2 x float>, <2 x float>* %255, align 1
  %257 = getelementptr inbounds i8, i8* %252, i64 8
  %258 = bitcast i8* %257 to <2 x float>*
  %259 = load <2 x float>, <2 x float>* %258, align 1
  %260 = extractelement <2 x float> %256, i32 0
  %261 = inttoptr i64 %251 to float*
  store float %260, float* %261
  %262 = add i64 %251, 4
  %263 = extractelement <2 x float> %256, i32 1
  %264 = inttoptr i64 %262 to float*
  store float %263, float* %264
  %265 = add i64 %251, 8
  %266 = extractelement <2 x float> %259, i32 0
  %267 = inttoptr i64 %265 to float*
  store float %266, float* %267
  %268 = add i64 %251, 12
  %269 = extractelement <2 x float> %259, i32 1
  %270 = inttoptr i64 %268 to float*
  store float %269, float* %270
  store %struct.Memory* %loadMem_451de0, %struct.Memory** %MEMORY
  %loadMem_451de7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %272 = getelementptr inbounds %struct.GPR, %struct.GPR* %271, i32 0, i32 33
  %273 = getelementptr inbounds %struct.Reg, %struct.Reg* %272, i32 0, i32 0
  %PC.i115 = bitcast %union.anon* %273 to i64*
  %274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %275 = getelementptr inbounds %struct.GPR, %struct.GPR* %274, i32 0, i32 15
  %276 = getelementptr inbounds %struct.Reg, %struct.Reg* %275, i32 0, i32 0
  %RBP.i116 = bitcast %union.anon* %276 to i64*
  %277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %278 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %277, i64 0, i64 1
  %XMM1.i117 = bitcast %union.VectorReg* %278 to %union.vec128_t*
  %279 = load i64, i64* %RBP.i116
  %280 = sub i64 %279, 320
  %281 = bitcast %union.vec128_t* %XMM1.i117 to i8*
  %282 = load i64, i64* %PC.i115
  %283 = add i64 %282, 7
  store i64 %283, i64* %PC.i115
  %284 = bitcast i8* %281 to <2 x float>*
  %285 = load <2 x float>, <2 x float>* %284, align 1
  %286 = getelementptr inbounds i8, i8* %281, i64 8
  %287 = bitcast i8* %286 to <2 x float>*
  %288 = load <2 x float>, <2 x float>* %287, align 1
  %289 = extractelement <2 x float> %285, i32 0
  %290 = inttoptr i64 %280 to float*
  store float %289, float* %290
  %291 = add i64 %280, 4
  %292 = extractelement <2 x float> %285, i32 1
  %293 = inttoptr i64 %291 to float*
  store float %292, float* %293
  %294 = add i64 %280, 8
  %295 = extractelement <2 x float> %288, i32 0
  %296 = inttoptr i64 %294 to float*
  store float %295, float* %296
  %297 = add i64 %280, 12
  %298 = extractelement <2 x float> %288, i32 1
  %299 = inttoptr i64 %297 to float*
  store float %298, float* %299
  store %struct.Memory* %loadMem_451de7, %struct.Memory** %MEMORY
  %loadMem_451dee = load %struct.Memory*, %struct.Memory** %MEMORY
  %300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %301 = getelementptr inbounds %struct.GPR, %struct.GPR* %300, i32 0, i32 33
  %302 = getelementptr inbounds %struct.Reg, %struct.Reg* %301, i32 0, i32 0
  %PC.i112 = bitcast %union.anon* %302 to i64*
  %303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %304 = getelementptr inbounds %struct.GPR, %struct.GPR* %303, i32 0, i32 15
  %305 = getelementptr inbounds %struct.Reg, %struct.Reg* %304, i32 0, i32 0
  %RBP.i113 = bitcast %union.anon* %305 to i64*
  %306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %307 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %306, i64 0, i64 0
  %XMM0.i114 = bitcast %union.VectorReg* %307 to %union.vec128_t*
  %308 = load i64, i64* %RBP.i113
  %309 = sub i64 %308, 336
  %310 = bitcast %union.vec128_t* %XMM0.i114 to i8*
  %311 = load i64, i64* %PC.i112
  %312 = add i64 %311, 7
  store i64 %312, i64* %PC.i112
  %313 = bitcast i8* %310 to <2 x float>*
  %314 = load <2 x float>, <2 x float>* %313, align 1
  %315 = getelementptr inbounds i8, i8* %310, i64 8
  %316 = bitcast i8* %315 to <2 x float>*
  %317 = load <2 x float>, <2 x float>* %316, align 1
  %318 = extractelement <2 x float> %314, i32 0
  %319 = inttoptr i64 %309 to float*
  store float %318, float* %319
  %320 = add i64 %309, 4
  %321 = extractelement <2 x float> %314, i32 1
  %322 = inttoptr i64 %320 to float*
  store float %321, float* %322
  %323 = add i64 %309, 8
  %324 = extractelement <2 x float> %317, i32 0
  %325 = inttoptr i64 %323 to float*
  store float %324, float* %325
  %326 = add i64 %309, 12
  %327 = extractelement <2 x float> %317, i32 1
  %328 = inttoptr i64 %326 to float*
  store float %327, float* %328
  store %struct.Memory* %loadMem_451dee, %struct.Memory** %MEMORY
  %loadMem_451df5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %330 = getelementptr inbounds %struct.GPR, %struct.GPR* %329, i32 0, i32 33
  %331 = getelementptr inbounds %struct.Reg, %struct.Reg* %330, i32 0, i32 0
  %PC.i109 = bitcast %union.anon* %331 to i64*
  %332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %333 = getelementptr inbounds %struct.GPR, %struct.GPR* %332, i32 0, i32 11
  %334 = getelementptr inbounds %struct.Reg, %struct.Reg* %333, i32 0, i32 0
  %RDI.i110 = bitcast %union.anon* %334 to i64*
  %335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %336 = getelementptr inbounds %struct.GPR, %struct.GPR* %335, i32 0, i32 15
  %337 = getelementptr inbounds %struct.Reg, %struct.Reg* %336, i32 0, i32 0
  %RBP.i111 = bitcast %union.anon* %337 to i64*
  %338 = load i64, i64* %RBP.i111
  %339 = sub i64 %338, 344
  %340 = load i64, i64* %RDI.i110
  %341 = load i64, i64* %PC.i109
  %342 = add i64 %341, 7
  store i64 %342, i64* %PC.i109
  %343 = inttoptr i64 %339 to i64*
  store i64 %340, i64* %343
  store %struct.Memory* %loadMem_451df5, %struct.Memory** %MEMORY
  %loadMem_451dfc = load %struct.Memory*, %struct.Memory** %MEMORY
  %344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %345 = getelementptr inbounds %struct.GPR, %struct.GPR* %344, i32 0, i32 33
  %346 = getelementptr inbounds %struct.Reg, %struct.Reg* %345, i32 0, i32 0
  %PC.i107 = bitcast %union.anon* %346 to i64*
  %347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %348 = getelementptr inbounds %struct.GPR, %struct.GPR* %347, i32 0, i32 15
  %349 = getelementptr inbounds %struct.Reg, %struct.Reg* %348, i32 0, i32 0
  %RBP.i108 = bitcast %union.anon* %349 to i64*
  %350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %351 = getelementptr inbounds %struct.GPR, %struct.GPR* %350, i32 0, i32 19
  %352 = getelementptr inbounds %struct.Reg, %struct.Reg* %351, i32 0, i32 0
  %R9.i = bitcast %union.anon* %352 to i64*
  %353 = load i64, i64* %RBP.i108
  %354 = sub i64 %353, 352
  %355 = load i64, i64* %R9.i
  %356 = load i64, i64* %PC.i107
  %357 = add i64 %356, 7
  store i64 %357, i64* %PC.i107
  %358 = inttoptr i64 %354 to i64*
  store i64 %355, i64* %358
  store %struct.Memory* %loadMem_451dfc, %struct.Memory** %MEMORY
  %loadMem_451e03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %360 = getelementptr inbounds %struct.GPR, %struct.GPR* %359, i32 0, i32 33
  %361 = getelementptr inbounds %struct.Reg, %struct.Reg* %360, i32 0, i32 0
  %PC.i104 = bitcast %union.anon* %361 to i64*
  %362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %363 = getelementptr inbounds %struct.GPR, %struct.GPR* %362, i32 0, i32 15
  %364 = getelementptr inbounds %struct.Reg, %struct.Reg* %363, i32 0, i32 0
  %RBP.i105 = bitcast %union.anon* %364 to i64*
  %365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %366 = getelementptr inbounds %struct.GPR, %struct.GPR* %365, i32 0, i32 17
  %367 = getelementptr inbounds %struct.Reg, %struct.Reg* %366, i32 0, i32 0
  %R8.i106 = bitcast %union.anon* %367 to i64*
  %368 = load i64, i64* %RBP.i105
  %369 = sub i64 %368, 360
  %370 = load i64, i64* %R8.i106
  %371 = load i64, i64* %PC.i104
  %372 = add i64 %371, 7
  store i64 %372, i64* %PC.i104
  %373 = inttoptr i64 %369 to i64*
  store i64 %370, i64* %373
  store %struct.Memory* %loadMem_451e03, %struct.Memory** %MEMORY
  %loadMem_451e0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %375 = getelementptr inbounds %struct.GPR, %struct.GPR* %374, i32 0, i32 33
  %376 = getelementptr inbounds %struct.Reg, %struct.Reg* %375, i32 0, i32 0
  %PC.i101 = bitcast %union.anon* %376 to i64*
  %377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %378 = getelementptr inbounds %struct.GPR, %struct.GPR* %377, i32 0, i32 5
  %379 = getelementptr inbounds %struct.Reg, %struct.Reg* %378, i32 0, i32 0
  %RCX.i102 = bitcast %union.anon* %379 to i64*
  %380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %381 = getelementptr inbounds %struct.GPR, %struct.GPR* %380, i32 0, i32 15
  %382 = getelementptr inbounds %struct.Reg, %struct.Reg* %381, i32 0, i32 0
  %RBP.i103 = bitcast %union.anon* %382 to i64*
  %383 = load i64, i64* %RBP.i103
  %384 = sub i64 %383, 368
  %385 = load i64, i64* %RCX.i102
  %386 = load i64, i64* %PC.i101
  %387 = add i64 %386, 7
  store i64 %387, i64* %PC.i101
  %388 = inttoptr i64 %384 to i64*
  store i64 %385, i64* %388
  store %struct.Memory* %loadMem_451e0a, %struct.Memory** %MEMORY
  %loadMem_451e11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %390 = getelementptr inbounds %struct.GPR, %struct.GPR* %389, i32 0, i32 33
  %391 = getelementptr inbounds %struct.Reg, %struct.Reg* %390, i32 0, i32 0
  %PC.i98 = bitcast %union.anon* %391 to i64*
  %392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %393 = getelementptr inbounds %struct.GPR, %struct.GPR* %392, i32 0, i32 7
  %394 = getelementptr inbounds %struct.Reg, %struct.Reg* %393, i32 0, i32 0
  %RDX.i99 = bitcast %union.anon* %394 to i64*
  %395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %396 = getelementptr inbounds %struct.GPR, %struct.GPR* %395, i32 0, i32 15
  %397 = getelementptr inbounds %struct.Reg, %struct.Reg* %396, i32 0, i32 0
  %RBP.i100 = bitcast %union.anon* %397 to i64*
  %398 = load i64, i64* %RBP.i100
  %399 = sub i64 %398, 376
  %400 = load i64, i64* %RDX.i99
  %401 = load i64, i64* %PC.i98
  %402 = add i64 %401, 7
  store i64 %402, i64* %PC.i98
  %403 = inttoptr i64 %399 to i64*
  store i64 %400, i64* %403
  store %struct.Memory* %loadMem_451e11, %struct.Memory** %MEMORY
  %loadMem_451e18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %405 = getelementptr inbounds %struct.GPR, %struct.GPR* %404, i32 0, i32 33
  %406 = getelementptr inbounds %struct.Reg, %struct.Reg* %405, i32 0, i32 0
  %PC.i95 = bitcast %union.anon* %406 to i64*
  %407 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %408 = getelementptr inbounds %struct.GPR, %struct.GPR* %407, i32 0, i32 9
  %409 = getelementptr inbounds %struct.Reg, %struct.Reg* %408, i32 0, i32 0
  %RSI.i96 = bitcast %union.anon* %409 to i64*
  %410 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %411 = getelementptr inbounds %struct.GPR, %struct.GPR* %410, i32 0, i32 15
  %412 = getelementptr inbounds %struct.Reg, %struct.Reg* %411, i32 0, i32 0
  %RBP.i97 = bitcast %union.anon* %412 to i64*
  %413 = load i64, i64* %RBP.i97
  %414 = sub i64 %413, 384
  %415 = load i64, i64* %RSI.i96
  %416 = load i64, i64* %PC.i95
  %417 = add i64 %416, 7
  store i64 %417, i64* %PC.i95
  %418 = inttoptr i64 %414 to i64*
  store i64 %415, i64* %418
  store %struct.Memory* %loadMem_451e18, %struct.Memory** %MEMORY
  %loadMem_451e1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %420 = getelementptr inbounds %struct.GPR, %struct.GPR* %419, i32 0, i32 33
  %421 = getelementptr inbounds %struct.Reg, %struct.Reg* %420, i32 0, i32 0
  %PC.i94 = bitcast %union.anon* %421 to i64*
  %422 = load i64, i64* %PC.i94
  %423 = add i64 %422, 100
  %424 = load i64, i64* %PC.i94
  %425 = add i64 %424, 6
  %426 = load i64, i64* %PC.i94
  %427 = add i64 %426, 6
  store i64 %427, i64* %PC.i94
  %428 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %429 = load i8, i8* %428, align 1
  store i8 %429, i8* %BRANCH_TAKEN, align 1
  %430 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %431 = icmp ne i8 %429, 0
  %432 = select i1 %431, i64 %423, i64 %425
  store i64 %432, i64* %430, align 8
  store %struct.Memory* %loadMem_451e1f, %struct.Memory** %MEMORY
  %loadBr_451e1f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_451e1f = icmp eq i8 %loadBr_451e1f, 1
  br i1 %cmpBr_451e1f, label %block_.L_451e83, label %block_451e25

block_451e25:                                     ; preds = %entry
  %loadMem_451e25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %433 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %434 = getelementptr inbounds %struct.GPR, %struct.GPR* %433, i32 0, i32 33
  %435 = getelementptr inbounds %struct.Reg, %struct.Reg* %434, i32 0, i32 0
  %PC.i92 = bitcast %union.anon* %435 to i64*
  %436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %437 = getelementptr inbounds %struct.GPR, %struct.GPR* %436, i32 0, i32 15
  %438 = getelementptr inbounds %struct.Reg, %struct.Reg* %437, i32 0, i32 0
  %RBP.i93 = bitcast %union.anon* %438 to i64*
  %439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %440 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %439, i64 0, i64 0
  %YMM0.i = bitcast %union.VectorReg* %440 to %"class.std::bitset"*
  %441 = bitcast %"class.std::bitset"* %YMM0.i to i8*
  %442 = load i64, i64* %RBP.i93
  %443 = sub i64 %442, 336
  %444 = load i64, i64* %PC.i92
  %445 = add i64 %444, 7
  store i64 %445, i64* %PC.i92
  %446 = inttoptr i64 %443 to float*
  %447 = load float, float* %446
  %448 = add i64 %443, 4
  %449 = inttoptr i64 %448 to float*
  %450 = load float, float* %449
  %451 = add i64 %443, 8
  %452 = inttoptr i64 %451 to float*
  %453 = load float, float* %452
  %454 = add i64 %443, 12
  %455 = inttoptr i64 %454 to float*
  %456 = load float, float* %455
  %457 = bitcast i8* %441 to float*
  store float %447, float* %457, align 1
  %458 = getelementptr inbounds i8, i8* %441, i64 4
  %459 = bitcast i8* %458 to float*
  store float %450, float* %459, align 1
  %460 = getelementptr inbounds i8, i8* %441, i64 8
  %461 = bitcast i8* %460 to float*
  store float %453, float* %461, align 1
  %462 = getelementptr inbounds i8, i8* %441, i64 12
  %463 = bitcast i8* %462 to float*
  store float %456, float* %463, align 1
  store %struct.Memory* %loadMem_451e25, %struct.Memory** %MEMORY
  %loadMem_451e2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %465 = getelementptr inbounds %struct.GPR, %struct.GPR* %464, i32 0, i32 33
  %466 = getelementptr inbounds %struct.Reg, %struct.Reg* %465, i32 0, i32 0
  %PC.i90 = bitcast %union.anon* %466 to i64*
  %467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %468 = getelementptr inbounds %struct.GPR, %struct.GPR* %467, i32 0, i32 15
  %469 = getelementptr inbounds %struct.Reg, %struct.Reg* %468, i32 0, i32 0
  %RBP.i91 = bitcast %union.anon* %469 to i64*
  %470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %471 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %470, i64 0, i64 0
  %XMM0.i = bitcast %union.VectorReg* %471 to %union.vec128_t*
  %472 = load i64, i64* %RBP.i91
  %473 = sub i64 %472, 160
  %474 = bitcast %union.vec128_t* %XMM0.i to i8*
  %475 = load i64, i64* %PC.i90
  %476 = add i64 %475, 7
  store i64 %476, i64* %PC.i90
  %477 = bitcast i8* %474 to <2 x float>*
  %478 = load <2 x float>, <2 x float>* %477, align 1
  %479 = getelementptr inbounds i8, i8* %474, i64 8
  %480 = bitcast i8* %479 to <2 x float>*
  %481 = load <2 x float>, <2 x float>* %480, align 1
  %482 = extractelement <2 x float> %478, i32 0
  %483 = inttoptr i64 %473 to float*
  store float %482, float* %483
  %484 = add i64 %473, 4
  %485 = extractelement <2 x float> %478, i32 1
  %486 = inttoptr i64 %484 to float*
  store float %485, float* %486
  %487 = add i64 %473, 8
  %488 = extractelement <2 x float> %481, i32 0
  %489 = inttoptr i64 %487 to float*
  store float %488, float* %489
  %490 = add i64 %473, 12
  %491 = extractelement <2 x float> %481, i32 1
  %492 = inttoptr i64 %490 to float*
  store float %491, float* %492
  store %struct.Memory* %loadMem_451e2c, %struct.Memory** %MEMORY
  %loadMem_451e33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %494 = getelementptr inbounds %struct.GPR, %struct.GPR* %493, i32 0, i32 33
  %495 = getelementptr inbounds %struct.Reg, %struct.Reg* %494, i32 0, i32 0
  %PC.i88 = bitcast %union.anon* %495 to i64*
  %496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %497 = getelementptr inbounds %struct.GPR, %struct.GPR* %496, i32 0, i32 15
  %498 = getelementptr inbounds %struct.Reg, %struct.Reg* %497, i32 0, i32 0
  %RBP.i89 = bitcast %union.anon* %498 to i64*
  %499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %500 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %499, i64 0, i64 1
  %YMM1.i = bitcast %union.VectorReg* %500 to %"class.std::bitset"*
  %501 = bitcast %"class.std::bitset"* %YMM1.i to i8*
  %502 = load i64, i64* %RBP.i89
  %503 = sub i64 %502, 320
  %504 = load i64, i64* %PC.i88
  %505 = add i64 %504, 7
  store i64 %505, i64* %PC.i88
  %506 = inttoptr i64 %503 to float*
  %507 = load float, float* %506
  %508 = add i64 %503, 4
  %509 = inttoptr i64 %508 to float*
  %510 = load float, float* %509
  %511 = add i64 %503, 8
  %512 = inttoptr i64 %511 to float*
  %513 = load float, float* %512
  %514 = add i64 %503, 12
  %515 = inttoptr i64 %514 to float*
  %516 = load float, float* %515
  %517 = bitcast i8* %501 to float*
  store float %507, float* %517, align 1
  %518 = getelementptr inbounds i8, i8* %501, i64 4
  %519 = bitcast i8* %518 to float*
  store float %510, float* %519, align 1
  %520 = getelementptr inbounds i8, i8* %501, i64 8
  %521 = bitcast i8* %520 to float*
  store float %513, float* %521, align 1
  %522 = getelementptr inbounds i8, i8* %501, i64 12
  %523 = bitcast i8* %522 to float*
  store float %516, float* %523, align 1
  store %struct.Memory* %loadMem_451e33, %struct.Memory** %MEMORY
  %loadMem_451e3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %525 = getelementptr inbounds %struct.GPR, %struct.GPR* %524, i32 0, i32 33
  %526 = getelementptr inbounds %struct.Reg, %struct.Reg* %525, i32 0, i32 0
  %PC.i86 = bitcast %union.anon* %526 to i64*
  %527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %528 = getelementptr inbounds %struct.GPR, %struct.GPR* %527, i32 0, i32 15
  %529 = getelementptr inbounds %struct.Reg, %struct.Reg* %528, i32 0, i32 0
  %RBP.i87 = bitcast %union.anon* %529 to i64*
  %530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %531 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %530, i64 0, i64 1
  %XMM1.i = bitcast %union.VectorReg* %531 to %union.vec128_t*
  %532 = load i64, i64* %RBP.i87
  %533 = sub i64 %532, 144
  %534 = bitcast %union.vec128_t* %XMM1.i to i8*
  %535 = load i64, i64* %PC.i86
  %536 = add i64 %535, 7
  store i64 %536, i64* %PC.i86
  %537 = bitcast i8* %534 to <2 x float>*
  %538 = load <2 x float>, <2 x float>* %537, align 1
  %539 = getelementptr inbounds i8, i8* %534, i64 8
  %540 = bitcast i8* %539 to <2 x float>*
  %541 = load <2 x float>, <2 x float>* %540, align 1
  %542 = extractelement <2 x float> %538, i32 0
  %543 = inttoptr i64 %533 to float*
  store float %542, float* %543
  %544 = add i64 %533, 4
  %545 = extractelement <2 x float> %538, i32 1
  %546 = inttoptr i64 %544 to float*
  store float %545, float* %546
  %547 = add i64 %533, 8
  %548 = extractelement <2 x float> %541, i32 0
  %549 = inttoptr i64 %547 to float*
  store float %548, float* %549
  %550 = add i64 %533, 12
  %551 = extractelement <2 x float> %541, i32 1
  %552 = inttoptr i64 %550 to float*
  store float %551, float* %552
  store %struct.Memory* %loadMem_451e3a, %struct.Memory** %MEMORY
  %loadMem_451e41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %553 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %554 = getelementptr inbounds %struct.GPR, %struct.GPR* %553, i32 0, i32 33
  %555 = getelementptr inbounds %struct.Reg, %struct.Reg* %554, i32 0, i32 0
  %PC.i84 = bitcast %union.anon* %555 to i64*
  %556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %557 = getelementptr inbounds %struct.GPR, %struct.GPR* %556, i32 0, i32 15
  %558 = getelementptr inbounds %struct.Reg, %struct.Reg* %557, i32 0, i32 0
  %RBP.i85 = bitcast %union.anon* %558 to i64*
  %559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %560 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %559, i64 0, i64 2
  %YMM2.i = bitcast %union.VectorReg* %560 to %"class.std::bitset"*
  %561 = bitcast %"class.std::bitset"* %YMM2.i to i8*
  %562 = load i64, i64* %RBP.i85
  %563 = sub i64 %562, 304
  %564 = load i64, i64* %PC.i84
  %565 = add i64 %564, 7
  store i64 %565, i64* %PC.i84
  %566 = inttoptr i64 %563 to float*
  %567 = load float, float* %566
  %568 = add i64 %563, 4
  %569 = inttoptr i64 %568 to float*
  %570 = load float, float* %569
  %571 = add i64 %563, 8
  %572 = inttoptr i64 %571 to float*
  %573 = load float, float* %572
  %574 = add i64 %563, 12
  %575 = inttoptr i64 %574 to float*
  %576 = load float, float* %575
  %577 = bitcast i8* %561 to float*
  store float %567, float* %577, align 1
  %578 = getelementptr inbounds i8, i8* %561, i64 4
  %579 = bitcast i8* %578 to float*
  store float %570, float* %579, align 1
  %580 = getelementptr inbounds i8, i8* %561, i64 8
  %581 = bitcast i8* %580 to float*
  store float %573, float* %581, align 1
  %582 = getelementptr inbounds i8, i8* %561, i64 12
  %583 = bitcast i8* %582 to float*
  store float %576, float* %583, align 1
  store %struct.Memory* %loadMem_451e41, %struct.Memory** %MEMORY
  %loadMem_451e48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %584 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %585 = getelementptr inbounds %struct.GPR, %struct.GPR* %584, i32 0, i32 33
  %586 = getelementptr inbounds %struct.Reg, %struct.Reg* %585, i32 0, i32 0
  %PC.i82 = bitcast %union.anon* %586 to i64*
  %587 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %588 = getelementptr inbounds %struct.GPR, %struct.GPR* %587, i32 0, i32 15
  %589 = getelementptr inbounds %struct.Reg, %struct.Reg* %588, i32 0, i32 0
  %RBP.i83 = bitcast %union.anon* %589 to i64*
  %590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %591 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %590, i64 0, i64 2
  %XMM2.i = bitcast %union.VectorReg* %591 to %union.vec128_t*
  %592 = load i64, i64* %RBP.i83
  %593 = sub i64 %592, 128
  %594 = bitcast %union.vec128_t* %XMM2.i to i8*
  %595 = load i64, i64* %PC.i82
  %596 = add i64 %595, 4
  store i64 %596, i64* %PC.i82
  %597 = bitcast i8* %594 to <2 x float>*
  %598 = load <2 x float>, <2 x float>* %597, align 1
  %599 = getelementptr inbounds i8, i8* %594, i64 8
  %600 = bitcast i8* %599 to <2 x float>*
  %601 = load <2 x float>, <2 x float>* %600, align 1
  %602 = extractelement <2 x float> %598, i32 0
  %603 = inttoptr i64 %593 to float*
  store float %602, float* %603
  %604 = add i64 %593, 4
  %605 = extractelement <2 x float> %598, i32 1
  %606 = inttoptr i64 %604 to float*
  store float %605, float* %606
  %607 = add i64 %593, 8
  %608 = extractelement <2 x float> %601, i32 0
  %609 = inttoptr i64 %607 to float*
  store float %608, float* %609
  %610 = add i64 %593, 12
  %611 = extractelement <2 x float> %601, i32 1
  %612 = inttoptr i64 %610 to float*
  store float %611, float* %612
  store %struct.Memory* %loadMem_451e48, %struct.Memory** %MEMORY
  %loadMem_451e4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %613 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %614 = getelementptr inbounds %struct.GPR, %struct.GPR* %613, i32 0, i32 33
  %615 = getelementptr inbounds %struct.Reg, %struct.Reg* %614, i32 0, i32 0
  %PC.i80 = bitcast %union.anon* %615 to i64*
  %616 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %617 = getelementptr inbounds %struct.GPR, %struct.GPR* %616, i32 0, i32 15
  %618 = getelementptr inbounds %struct.Reg, %struct.Reg* %617, i32 0, i32 0
  %RBP.i81 = bitcast %union.anon* %618 to i64*
  %619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %620 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %619, i64 0, i64 3
  %YMM3.i = bitcast %union.VectorReg* %620 to %"class.std::bitset"*
  %621 = bitcast %"class.std::bitset"* %YMM3.i to i8*
  %622 = load i64, i64* %RBP.i81
  %623 = sub i64 %622, 288
  %624 = load i64, i64* %PC.i80
  %625 = add i64 %624, 7
  store i64 %625, i64* %PC.i80
  %626 = inttoptr i64 %623 to float*
  %627 = load float, float* %626
  %628 = add i64 %623, 4
  %629 = inttoptr i64 %628 to float*
  %630 = load float, float* %629
  %631 = add i64 %623, 8
  %632 = inttoptr i64 %631 to float*
  %633 = load float, float* %632
  %634 = add i64 %623, 12
  %635 = inttoptr i64 %634 to float*
  %636 = load float, float* %635
  %637 = bitcast i8* %621 to float*
  store float %627, float* %637, align 1
  %638 = getelementptr inbounds i8, i8* %621, i64 4
  %639 = bitcast i8* %638 to float*
  store float %630, float* %639, align 1
  %640 = getelementptr inbounds i8, i8* %621, i64 8
  %641 = bitcast i8* %640 to float*
  store float %633, float* %641, align 1
  %642 = getelementptr inbounds i8, i8* %621, i64 12
  %643 = bitcast i8* %642 to float*
  store float %636, float* %643, align 1
  store %struct.Memory* %loadMem_451e4c, %struct.Memory** %MEMORY
  %loadMem_451e53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %644 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %645 = getelementptr inbounds %struct.GPR, %struct.GPR* %644, i32 0, i32 33
  %646 = getelementptr inbounds %struct.Reg, %struct.Reg* %645, i32 0, i32 0
  %PC.i78 = bitcast %union.anon* %646 to i64*
  %647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %648 = getelementptr inbounds %struct.GPR, %struct.GPR* %647, i32 0, i32 15
  %649 = getelementptr inbounds %struct.Reg, %struct.Reg* %648, i32 0, i32 0
  %RBP.i79 = bitcast %union.anon* %649 to i64*
  %650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %651 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %650, i64 0, i64 3
  %XMM3.i = bitcast %union.VectorReg* %651 to %union.vec128_t*
  %652 = load i64, i64* %RBP.i79
  %653 = sub i64 %652, 112
  %654 = bitcast %union.vec128_t* %XMM3.i to i8*
  %655 = load i64, i64* %PC.i78
  %656 = add i64 %655, 4
  store i64 %656, i64* %PC.i78
  %657 = bitcast i8* %654 to <2 x float>*
  %658 = load <2 x float>, <2 x float>* %657, align 1
  %659 = getelementptr inbounds i8, i8* %654, i64 8
  %660 = bitcast i8* %659 to <2 x float>*
  %661 = load <2 x float>, <2 x float>* %660, align 1
  %662 = extractelement <2 x float> %658, i32 0
  %663 = inttoptr i64 %653 to float*
  store float %662, float* %663
  %664 = add i64 %653, 4
  %665 = extractelement <2 x float> %658, i32 1
  %666 = inttoptr i64 %664 to float*
  store float %665, float* %666
  %667 = add i64 %653, 8
  %668 = extractelement <2 x float> %661, i32 0
  %669 = inttoptr i64 %667 to float*
  store float %668, float* %669
  %670 = add i64 %653, 12
  %671 = extractelement <2 x float> %661, i32 1
  %672 = inttoptr i64 %670 to float*
  store float %671, float* %672
  store %struct.Memory* %loadMem_451e53, %struct.Memory** %MEMORY
  %loadMem_451e57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %673 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %674 = getelementptr inbounds %struct.GPR, %struct.GPR* %673, i32 0, i32 33
  %675 = getelementptr inbounds %struct.Reg, %struct.Reg* %674, i32 0, i32 0
  %PC.i76 = bitcast %union.anon* %675 to i64*
  %676 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %677 = getelementptr inbounds %struct.GPR, %struct.GPR* %676, i32 0, i32 15
  %678 = getelementptr inbounds %struct.Reg, %struct.Reg* %677, i32 0, i32 0
  %RBP.i77 = bitcast %union.anon* %678 to i64*
  %679 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %680 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %679, i64 0, i64 4
  %YMM4.i = bitcast %union.VectorReg* %680 to %"class.std::bitset"*
  %681 = bitcast %"class.std::bitset"* %YMM4.i to i8*
  %682 = load i64, i64* %RBP.i77
  %683 = sub i64 %682, 272
  %684 = load i64, i64* %PC.i76
  %685 = add i64 %684, 7
  store i64 %685, i64* %PC.i76
  %686 = inttoptr i64 %683 to float*
  %687 = load float, float* %686
  %688 = add i64 %683, 4
  %689 = inttoptr i64 %688 to float*
  %690 = load float, float* %689
  %691 = add i64 %683, 8
  %692 = inttoptr i64 %691 to float*
  %693 = load float, float* %692
  %694 = add i64 %683, 12
  %695 = inttoptr i64 %694 to float*
  %696 = load float, float* %695
  %697 = bitcast i8* %681 to float*
  store float %687, float* %697, align 1
  %698 = getelementptr inbounds i8, i8* %681, i64 4
  %699 = bitcast i8* %698 to float*
  store float %690, float* %699, align 1
  %700 = getelementptr inbounds i8, i8* %681, i64 8
  %701 = bitcast i8* %700 to float*
  store float %693, float* %701, align 1
  %702 = getelementptr inbounds i8, i8* %681, i64 12
  %703 = bitcast i8* %702 to float*
  store float %696, float* %703, align 1
  store %struct.Memory* %loadMem_451e57, %struct.Memory** %MEMORY
  %loadMem_451e5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %705 = getelementptr inbounds %struct.GPR, %struct.GPR* %704, i32 0, i32 33
  %706 = getelementptr inbounds %struct.Reg, %struct.Reg* %705, i32 0, i32 0
  %PC.i74 = bitcast %union.anon* %706 to i64*
  %707 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %708 = getelementptr inbounds %struct.GPR, %struct.GPR* %707, i32 0, i32 15
  %709 = getelementptr inbounds %struct.Reg, %struct.Reg* %708, i32 0, i32 0
  %RBP.i75 = bitcast %union.anon* %709 to i64*
  %710 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %711 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %710, i64 0, i64 4
  %XMM4.i = bitcast %union.VectorReg* %711 to %union.vec128_t*
  %712 = load i64, i64* %RBP.i75
  %713 = sub i64 %712, 96
  %714 = bitcast %union.vec128_t* %XMM4.i to i8*
  %715 = load i64, i64* %PC.i74
  %716 = add i64 %715, 4
  store i64 %716, i64* %PC.i74
  %717 = bitcast i8* %714 to <2 x float>*
  %718 = load <2 x float>, <2 x float>* %717, align 1
  %719 = getelementptr inbounds i8, i8* %714, i64 8
  %720 = bitcast i8* %719 to <2 x float>*
  %721 = load <2 x float>, <2 x float>* %720, align 1
  %722 = extractelement <2 x float> %718, i32 0
  %723 = inttoptr i64 %713 to float*
  store float %722, float* %723
  %724 = add i64 %713, 4
  %725 = extractelement <2 x float> %718, i32 1
  %726 = inttoptr i64 %724 to float*
  store float %725, float* %726
  %727 = add i64 %713, 8
  %728 = extractelement <2 x float> %721, i32 0
  %729 = inttoptr i64 %727 to float*
  store float %728, float* %729
  %730 = add i64 %713, 12
  %731 = extractelement <2 x float> %721, i32 1
  %732 = inttoptr i64 %730 to float*
  store float %731, float* %732
  store %struct.Memory* %loadMem_451e5e, %struct.Memory** %MEMORY
  %loadMem_451e62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %733 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %734 = getelementptr inbounds %struct.GPR, %struct.GPR* %733, i32 0, i32 33
  %735 = getelementptr inbounds %struct.Reg, %struct.Reg* %734, i32 0, i32 0
  %PC.i72 = bitcast %union.anon* %735 to i64*
  %736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %737 = getelementptr inbounds %struct.GPR, %struct.GPR* %736, i32 0, i32 15
  %738 = getelementptr inbounds %struct.Reg, %struct.Reg* %737, i32 0, i32 0
  %RBP.i73 = bitcast %union.anon* %738 to i64*
  %739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %740 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %739, i64 0, i64 5
  %YMM5.i = bitcast %union.VectorReg* %740 to %"class.std::bitset"*
  %741 = bitcast %"class.std::bitset"* %YMM5.i to i8*
  %742 = load i64, i64* %RBP.i73
  %743 = sub i64 %742, 256
  %744 = load i64, i64* %PC.i72
  %745 = add i64 %744, 7
  store i64 %745, i64* %PC.i72
  %746 = inttoptr i64 %743 to float*
  %747 = load float, float* %746
  %748 = add i64 %743, 4
  %749 = inttoptr i64 %748 to float*
  %750 = load float, float* %749
  %751 = add i64 %743, 8
  %752 = inttoptr i64 %751 to float*
  %753 = load float, float* %752
  %754 = add i64 %743, 12
  %755 = inttoptr i64 %754 to float*
  %756 = load float, float* %755
  %757 = bitcast i8* %741 to float*
  store float %747, float* %757, align 1
  %758 = getelementptr inbounds i8, i8* %741, i64 4
  %759 = bitcast i8* %758 to float*
  store float %750, float* %759, align 1
  %760 = getelementptr inbounds i8, i8* %741, i64 8
  %761 = bitcast i8* %760 to float*
  store float %753, float* %761, align 1
  %762 = getelementptr inbounds i8, i8* %741, i64 12
  %763 = bitcast i8* %762 to float*
  store float %756, float* %763, align 1
  store %struct.Memory* %loadMem_451e62, %struct.Memory** %MEMORY
  %loadMem_451e69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %764 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %765 = getelementptr inbounds %struct.GPR, %struct.GPR* %764, i32 0, i32 33
  %766 = getelementptr inbounds %struct.Reg, %struct.Reg* %765, i32 0, i32 0
  %PC.i70 = bitcast %union.anon* %766 to i64*
  %767 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %768 = getelementptr inbounds %struct.GPR, %struct.GPR* %767, i32 0, i32 15
  %769 = getelementptr inbounds %struct.Reg, %struct.Reg* %768, i32 0, i32 0
  %RBP.i71 = bitcast %union.anon* %769 to i64*
  %770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %771 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %770, i64 0, i64 5
  %XMM5.i = bitcast %union.VectorReg* %771 to %union.vec128_t*
  %772 = load i64, i64* %RBP.i71
  %773 = sub i64 %772, 80
  %774 = bitcast %union.vec128_t* %XMM5.i to i8*
  %775 = load i64, i64* %PC.i70
  %776 = add i64 %775, 4
  store i64 %776, i64* %PC.i70
  %777 = bitcast i8* %774 to <2 x float>*
  %778 = load <2 x float>, <2 x float>* %777, align 1
  %779 = getelementptr inbounds i8, i8* %774, i64 8
  %780 = bitcast i8* %779 to <2 x float>*
  %781 = load <2 x float>, <2 x float>* %780, align 1
  %782 = extractelement <2 x float> %778, i32 0
  %783 = inttoptr i64 %773 to float*
  store float %782, float* %783
  %784 = add i64 %773, 4
  %785 = extractelement <2 x float> %778, i32 1
  %786 = inttoptr i64 %784 to float*
  store float %785, float* %786
  %787 = add i64 %773, 8
  %788 = extractelement <2 x float> %781, i32 0
  %789 = inttoptr i64 %787 to float*
  store float %788, float* %789
  %790 = add i64 %773, 12
  %791 = extractelement <2 x float> %781, i32 1
  %792 = inttoptr i64 %790 to float*
  store float %791, float* %792
  store %struct.Memory* %loadMem_451e69, %struct.Memory** %MEMORY
  %loadMem_451e6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %793 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %794 = getelementptr inbounds %struct.GPR, %struct.GPR* %793, i32 0, i32 33
  %795 = getelementptr inbounds %struct.Reg, %struct.Reg* %794, i32 0, i32 0
  %PC.i68 = bitcast %union.anon* %795 to i64*
  %796 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %797 = getelementptr inbounds %struct.GPR, %struct.GPR* %796, i32 0, i32 15
  %798 = getelementptr inbounds %struct.Reg, %struct.Reg* %797, i32 0, i32 0
  %RBP.i69 = bitcast %union.anon* %798 to i64*
  %799 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %800 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %799, i64 0, i64 6
  %YMM6.i = bitcast %union.VectorReg* %800 to %"class.std::bitset"*
  %801 = bitcast %"class.std::bitset"* %YMM6.i to i8*
  %802 = load i64, i64* %RBP.i69
  %803 = sub i64 %802, 240
  %804 = load i64, i64* %PC.i68
  %805 = add i64 %804, 7
  store i64 %805, i64* %PC.i68
  %806 = inttoptr i64 %803 to float*
  %807 = load float, float* %806
  %808 = add i64 %803, 4
  %809 = inttoptr i64 %808 to float*
  %810 = load float, float* %809
  %811 = add i64 %803, 8
  %812 = inttoptr i64 %811 to float*
  %813 = load float, float* %812
  %814 = add i64 %803, 12
  %815 = inttoptr i64 %814 to float*
  %816 = load float, float* %815
  %817 = bitcast i8* %801 to float*
  store float %807, float* %817, align 1
  %818 = getelementptr inbounds i8, i8* %801, i64 4
  %819 = bitcast i8* %818 to float*
  store float %810, float* %819, align 1
  %820 = getelementptr inbounds i8, i8* %801, i64 8
  %821 = bitcast i8* %820 to float*
  store float %813, float* %821, align 1
  %822 = getelementptr inbounds i8, i8* %801, i64 12
  %823 = bitcast i8* %822 to float*
  store float %816, float* %823, align 1
  store %struct.Memory* %loadMem_451e6d, %struct.Memory** %MEMORY
  %loadMem_451e74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %825 = getelementptr inbounds %struct.GPR, %struct.GPR* %824, i32 0, i32 33
  %826 = getelementptr inbounds %struct.Reg, %struct.Reg* %825, i32 0, i32 0
  %PC.i66 = bitcast %union.anon* %826 to i64*
  %827 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %828 = getelementptr inbounds %struct.GPR, %struct.GPR* %827, i32 0, i32 15
  %829 = getelementptr inbounds %struct.Reg, %struct.Reg* %828, i32 0, i32 0
  %RBP.i67 = bitcast %union.anon* %829 to i64*
  %830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %831 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %830, i64 0, i64 6
  %XMM6.i = bitcast %union.VectorReg* %831 to %union.vec128_t*
  %832 = load i64, i64* %RBP.i67
  %833 = sub i64 %832, 64
  %834 = bitcast %union.vec128_t* %XMM6.i to i8*
  %835 = load i64, i64* %PC.i66
  %836 = add i64 %835, 4
  store i64 %836, i64* %PC.i66
  %837 = bitcast i8* %834 to <2 x float>*
  %838 = load <2 x float>, <2 x float>* %837, align 1
  %839 = getelementptr inbounds i8, i8* %834, i64 8
  %840 = bitcast i8* %839 to <2 x float>*
  %841 = load <2 x float>, <2 x float>* %840, align 1
  %842 = extractelement <2 x float> %838, i32 0
  %843 = inttoptr i64 %833 to float*
  store float %842, float* %843
  %844 = add i64 %833, 4
  %845 = extractelement <2 x float> %838, i32 1
  %846 = inttoptr i64 %844 to float*
  store float %845, float* %846
  %847 = add i64 %833, 8
  %848 = extractelement <2 x float> %841, i32 0
  %849 = inttoptr i64 %847 to float*
  store float %848, float* %849
  %850 = add i64 %833, 12
  %851 = extractelement <2 x float> %841, i32 1
  %852 = inttoptr i64 %850 to float*
  store float %851, float* %852
  store %struct.Memory* %loadMem_451e74, %struct.Memory** %MEMORY
  %loadMem_451e78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %853 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %854 = getelementptr inbounds %struct.GPR, %struct.GPR* %853, i32 0, i32 33
  %855 = getelementptr inbounds %struct.Reg, %struct.Reg* %854, i32 0, i32 0
  %PC.i64 = bitcast %union.anon* %855 to i64*
  %856 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %857 = getelementptr inbounds %struct.GPR, %struct.GPR* %856, i32 0, i32 15
  %858 = getelementptr inbounds %struct.Reg, %struct.Reg* %857, i32 0, i32 0
  %RBP.i65 = bitcast %union.anon* %858 to i64*
  %859 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %860 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %859, i64 0, i64 7
  %YMM7.i = bitcast %union.VectorReg* %860 to %"class.std::bitset"*
  %861 = bitcast %"class.std::bitset"* %YMM7.i to i8*
  %862 = load i64, i64* %RBP.i65
  %863 = sub i64 %862, 224
  %864 = load i64, i64* %PC.i64
  %865 = add i64 %864, 7
  store i64 %865, i64* %PC.i64
  %866 = inttoptr i64 %863 to float*
  %867 = load float, float* %866
  %868 = add i64 %863, 4
  %869 = inttoptr i64 %868 to float*
  %870 = load float, float* %869
  %871 = add i64 %863, 8
  %872 = inttoptr i64 %871 to float*
  %873 = load float, float* %872
  %874 = add i64 %863, 12
  %875 = inttoptr i64 %874 to float*
  %876 = load float, float* %875
  %877 = bitcast i8* %861 to float*
  store float %867, float* %877, align 1
  %878 = getelementptr inbounds i8, i8* %861, i64 4
  %879 = bitcast i8* %878 to float*
  store float %870, float* %879, align 1
  %880 = getelementptr inbounds i8, i8* %861, i64 8
  %881 = bitcast i8* %880 to float*
  store float %873, float* %881, align 1
  %882 = getelementptr inbounds i8, i8* %861, i64 12
  %883 = bitcast i8* %882 to float*
  store float %876, float* %883, align 1
  store %struct.Memory* %loadMem_451e78, %struct.Memory** %MEMORY
  %loadMem_451e7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %884 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %885 = getelementptr inbounds %struct.GPR, %struct.GPR* %884, i32 0, i32 33
  %886 = getelementptr inbounds %struct.Reg, %struct.Reg* %885, i32 0, i32 0
  %PC.i62 = bitcast %union.anon* %886 to i64*
  %887 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %888 = getelementptr inbounds %struct.GPR, %struct.GPR* %887, i32 0, i32 15
  %889 = getelementptr inbounds %struct.Reg, %struct.Reg* %888, i32 0, i32 0
  %RBP.i63 = bitcast %union.anon* %889 to i64*
  %890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %891 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %890, i64 0, i64 7
  %XMM7.i = bitcast %union.VectorReg* %891 to %union.vec128_t*
  %892 = load i64, i64* %RBP.i63
  %893 = sub i64 %892, 48
  %894 = bitcast %union.vec128_t* %XMM7.i to i8*
  %895 = load i64, i64* %PC.i62
  %896 = add i64 %895, 4
  store i64 %896, i64* %PC.i62
  %897 = bitcast i8* %894 to <2 x float>*
  %898 = load <2 x float>, <2 x float>* %897, align 1
  %899 = getelementptr inbounds i8, i8* %894, i64 8
  %900 = bitcast i8* %899 to <2 x float>*
  %901 = load <2 x float>, <2 x float>* %900, align 1
  %902 = extractelement <2 x float> %898, i32 0
  %903 = inttoptr i64 %893 to float*
  store float %902, float* %903
  %904 = add i64 %893, 4
  %905 = extractelement <2 x float> %898, i32 1
  %906 = inttoptr i64 %904 to float*
  store float %905, float* %906
  %907 = add i64 %893, 8
  %908 = extractelement <2 x float> %901, i32 0
  %909 = inttoptr i64 %907 to float*
  store float %908, float* %909
  %910 = add i64 %893, 12
  %911 = extractelement <2 x float> %901, i32 1
  %912 = inttoptr i64 %910 to float*
  store float %911, float* %912
  store %struct.Memory* %loadMem_451e7f, %struct.Memory** %MEMORY
  br label %block_.L_451e83

block_.L_451e83:                                  ; preds = %block_451e25, %entry
  %loadMem_451e83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %914 = getelementptr inbounds %struct.GPR, %struct.GPR* %913, i32 0, i32 33
  %915 = getelementptr inbounds %struct.Reg, %struct.Reg* %914, i32 0, i32 0
  %PC.i59 = bitcast %union.anon* %915 to i64*
  %916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %917 = getelementptr inbounds %struct.GPR, %struct.GPR* %916, i32 0, i32 1
  %918 = getelementptr inbounds %struct.Reg, %struct.Reg* %917, i32 0, i32 0
  %RAX.i60 = bitcast %union.anon* %918 to i64*
  %919 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %920 = getelementptr inbounds %struct.GPR, %struct.GPR* %919, i32 0, i32 15
  %921 = getelementptr inbounds %struct.Reg, %struct.Reg* %920, i32 0, i32 0
  %RBP.i61 = bitcast %union.anon* %921 to i64*
  %922 = load i64, i64* %RBP.i61
  %923 = sub i64 %922, 352
  %924 = load i64, i64* %PC.i59
  %925 = add i64 %924, 7
  store i64 %925, i64* %PC.i59
  %926 = inttoptr i64 %923 to i64*
  %927 = load i64, i64* %926
  store i64 %927, i64* %RAX.i60, align 8
  store %struct.Memory* %loadMem_451e83, %struct.Memory** %MEMORY
  %loadMem_451e8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %928 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %929 = getelementptr inbounds %struct.GPR, %struct.GPR* %928, i32 0, i32 33
  %930 = getelementptr inbounds %struct.Reg, %struct.Reg* %929, i32 0, i32 0
  %PC.i56 = bitcast %union.anon* %930 to i64*
  %931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %932 = getelementptr inbounds %struct.GPR, %struct.GPR* %931, i32 0, i32 1
  %933 = getelementptr inbounds %struct.Reg, %struct.Reg* %932, i32 0, i32 0
  %RAX.i57 = bitcast %union.anon* %933 to i64*
  %934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %935 = getelementptr inbounds %struct.GPR, %struct.GPR* %934, i32 0, i32 15
  %936 = getelementptr inbounds %struct.Reg, %struct.Reg* %935, i32 0, i32 0
  %RBP.i58 = bitcast %union.anon* %936 to i64*
  %937 = load i64, i64* %RBP.i58
  %938 = sub i64 %937, 168
  %939 = load i64, i64* %RAX.i57
  %940 = load i64, i64* %PC.i56
  %941 = add i64 %940, 7
  store i64 %941, i64* %PC.i56
  %942 = inttoptr i64 %938 to i64*
  store i64 %939, i64* %942
  store %struct.Memory* %loadMem_451e8a, %struct.Memory** %MEMORY
  %loadMem_451e91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %943 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %944 = getelementptr inbounds %struct.GPR, %struct.GPR* %943, i32 0, i32 33
  %945 = getelementptr inbounds %struct.Reg, %struct.Reg* %944, i32 0, i32 0
  %PC.i53 = bitcast %union.anon* %945 to i64*
  %946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %947 = getelementptr inbounds %struct.GPR, %struct.GPR* %946, i32 0, i32 5
  %948 = getelementptr inbounds %struct.Reg, %struct.Reg* %947, i32 0, i32 0
  %RCX.i54 = bitcast %union.anon* %948 to i64*
  %949 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %950 = getelementptr inbounds %struct.GPR, %struct.GPR* %949, i32 0, i32 15
  %951 = getelementptr inbounds %struct.Reg, %struct.Reg* %950, i32 0, i32 0
  %RBP.i55 = bitcast %union.anon* %951 to i64*
  %952 = load i64, i64* %RBP.i55
  %953 = sub i64 %952, 360
  %954 = load i64, i64* %PC.i53
  %955 = add i64 %954, 7
  store i64 %955, i64* %PC.i53
  %956 = inttoptr i64 %953 to i64*
  %957 = load i64, i64* %956
  store i64 %957, i64* %RCX.i54, align 8
  store %struct.Memory* %loadMem_451e91, %struct.Memory** %MEMORY
  %loadMem_451e98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %958 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %959 = getelementptr inbounds %struct.GPR, %struct.GPR* %958, i32 0, i32 33
  %960 = getelementptr inbounds %struct.Reg, %struct.Reg* %959, i32 0, i32 0
  %PC.i51 = bitcast %union.anon* %960 to i64*
  %961 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %962 = getelementptr inbounds %struct.GPR, %struct.GPR* %961, i32 0, i32 5
  %963 = getelementptr inbounds %struct.Reg, %struct.Reg* %962, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %963 to i64*
  %964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %965 = getelementptr inbounds %struct.GPR, %struct.GPR* %964, i32 0, i32 15
  %966 = getelementptr inbounds %struct.Reg, %struct.Reg* %965, i32 0, i32 0
  %RBP.i52 = bitcast %union.anon* %966 to i64*
  %967 = load i64, i64* %RBP.i52
  %968 = sub i64 %967, 176
  %969 = load i64, i64* %RCX.i
  %970 = load i64, i64* %PC.i51
  %971 = add i64 %970, 7
  store i64 %971, i64* %PC.i51
  %972 = inttoptr i64 %968 to i64*
  store i64 %969, i64* %972
  store %struct.Memory* %loadMem_451e98, %struct.Memory** %MEMORY
  %loadMem_451e9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %974 = getelementptr inbounds %struct.GPR, %struct.GPR* %973, i32 0, i32 33
  %975 = getelementptr inbounds %struct.Reg, %struct.Reg* %974, i32 0, i32 0
  %PC.i48 = bitcast %union.anon* %975 to i64*
  %976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %977 = getelementptr inbounds %struct.GPR, %struct.GPR* %976, i32 0, i32 7
  %978 = getelementptr inbounds %struct.Reg, %struct.Reg* %977, i32 0, i32 0
  %RDX.i49 = bitcast %union.anon* %978 to i64*
  %979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %980 = getelementptr inbounds %struct.GPR, %struct.GPR* %979, i32 0, i32 15
  %981 = getelementptr inbounds %struct.Reg, %struct.Reg* %980, i32 0, i32 0
  %RBP.i50 = bitcast %union.anon* %981 to i64*
  %982 = load i64, i64* %RBP.i50
  %983 = sub i64 %982, 368
  %984 = load i64, i64* %PC.i48
  %985 = add i64 %984, 7
  store i64 %985, i64* %PC.i48
  %986 = inttoptr i64 %983 to i64*
  %987 = load i64, i64* %986
  store i64 %987, i64* %RDX.i49, align 8
  store %struct.Memory* %loadMem_451e9f, %struct.Memory** %MEMORY
  %loadMem_451ea6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %988 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %989 = getelementptr inbounds %struct.GPR, %struct.GPR* %988, i32 0, i32 33
  %990 = getelementptr inbounds %struct.Reg, %struct.Reg* %989, i32 0, i32 0
  %PC.i45 = bitcast %union.anon* %990 to i64*
  %991 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %992 = getelementptr inbounds %struct.GPR, %struct.GPR* %991, i32 0, i32 7
  %993 = getelementptr inbounds %struct.Reg, %struct.Reg* %992, i32 0, i32 0
  %RDX.i46 = bitcast %union.anon* %993 to i64*
  %994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %995 = getelementptr inbounds %struct.GPR, %struct.GPR* %994, i32 0, i32 15
  %996 = getelementptr inbounds %struct.Reg, %struct.Reg* %995, i32 0, i32 0
  %RBP.i47 = bitcast %union.anon* %996 to i64*
  %997 = load i64, i64* %RBP.i47
  %998 = sub i64 %997, 184
  %999 = load i64, i64* %RDX.i46
  %1000 = load i64, i64* %PC.i45
  %1001 = add i64 %1000, 7
  store i64 %1001, i64* %PC.i45
  %1002 = inttoptr i64 %998 to i64*
  store i64 %999, i64* %1002
  store %struct.Memory* %loadMem_451ea6, %struct.Memory** %MEMORY
  %loadMem_451ead = load %struct.Memory*, %struct.Memory** %MEMORY
  %1003 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1004 = getelementptr inbounds %struct.GPR, %struct.GPR* %1003, i32 0, i32 33
  %1005 = getelementptr inbounds %struct.Reg, %struct.Reg* %1004, i32 0, i32 0
  %PC.i42 = bitcast %union.anon* %1005 to i64*
  %1006 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1007 = getelementptr inbounds %struct.GPR, %struct.GPR* %1006, i32 0, i32 9
  %1008 = getelementptr inbounds %struct.Reg, %struct.Reg* %1007, i32 0, i32 0
  %RSI.i43 = bitcast %union.anon* %1008 to i64*
  %1009 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1010 = getelementptr inbounds %struct.GPR, %struct.GPR* %1009, i32 0, i32 15
  %1011 = getelementptr inbounds %struct.Reg, %struct.Reg* %1010, i32 0, i32 0
  %RBP.i44 = bitcast %union.anon* %1011 to i64*
  %1012 = load i64, i64* %RBP.i44
  %1013 = sub i64 %1012, 376
  %1014 = load i64, i64* %PC.i42
  %1015 = add i64 %1014, 7
  store i64 %1015, i64* %PC.i42
  %1016 = inttoptr i64 %1013 to i64*
  %1017 = load i64, i64* %1016
  store i64 %1017, i64* %RSI.i43, align 8
  store %struct.Memory* %loadMem_451ead, %struct.Memory** %MEMORY
  %loadMem_451eb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1018 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1019 = getelementptr inbounds %struct.GPR, %struct.GPR* %1018, i32 0, i32 33
  %1020 = getelementptr inbounds %struct.Reg, %struct.Reg* %1019, i32 0, i32 0
  %PC.i39 = bitcast %union.anon* %1020 to i64*
  %1021 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1022 = getelementptr inbounds %struct.GPR, %struct.GPR* %1021, i32 0, i32 9
  %1023 = getelementptr inbounds %struct.Reg, %struct.Reg* %1022, i32 0, i32 0
  %RSI.i40 = bitcast %union.anon* %1023 to i64*
  %1024 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1025 = getelementptr inbounds %struct.GPR, %struct.GPR* %1024, i32 0, i32 15
  %1026 = getelementptr inbounds %struct.Reg, %struct.Reg* %1025, i32 0, i32 0
  %RBP.i41 = bitcast %union.anon* %1026 to i64*
  %1027 = load i64, i64* %RBP.i41
  %1028 = sub i64 %1027, 192
  %1029 = load i64, i64* %RSI.i40
  %1030 = load i64, i64* %PC.i39
  %1031 = add i64 %1030, 7
  store i64 %1031, i64* %PC.i39
  %1032 = inttoptr i64 %1028 to i64*
  store i64 %1029, i64* %1032
  store %struct.Memory* %loadMem_451eb4, %struct.Memory** %MEMORY
  %loadMem_451ebb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1033 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1034 = getelementptr inbounds %struct.GPR, %struct.GPR* %1033, i32 0, i32 33
  %1035 = getelementptr inbounds %struct.Reg, %struct.Reg* %1034, i32 0, i32 0
  %PC.i36 = bitcast %union.anon* %1035 to i64*
  %1036 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1037 = getelementptr inbounds %struct.GPR, %struct.GPR* %1036, i32 0, i32 11
  %1038 = getelementptr inbounds %struct.Reg, %struct.Reg* %1037, i32 0, i32 0
  %RDI.i37 = bitcast %union.anon* %1038 to i64*
  %1039 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1040 = getelementptr inbounds %struct.GPR, %struct.GPR* %1039, i32 0, i32 15
  %1041 = getelementptr inbounds %struct.Reg, %struct.Reg* %1040, i32 0, i32 0
  %RBP.i38 = bitcast %union.anon* %1041 to i64*
  %1042 = load i64, i64* %RBP.i38
  %1043 = sub i64 %1042, 384
  %1044 = load i64, i64* %PC.i36
  %1045 = add i64 %1044, 7
  store i64 %1045, i64* %PC.i36
  %1046 = inttoptr i64 %1043 to i64*
  %1047 = load i64, i64* %1046
  store i64 %1047, i64* %RDI.i37, align 8
  store %struct.Memory* %loadMem_451ebb, %struct.Memory** %MEMORY
  %loadMem_451ec2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1048 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1049 = getelementptr inbounds %struct.GPR, %struct.GPR* %1048, i32 0, i32 33
  %1050 = getelementptr inbounds %struct.Reg, %struct.Reg* %1049, i32 0, i32 0
  %PC.i33 = bitcast %union.anon* %1050 to i64*
  %1051 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1052 = getelementptr inbounds %struct.GPR, %struct.GPR* %1051, i32 0, i32 11
  %1053 = getelementptr inbounds %struct.Reg, %struct.Reg* %1052, i32 0, i32 0
  %RDI.i34 = bitcast %union.anon* %1053 to i64*
  %1054 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1055 = getelementptr inbounds %struct.GPR, %struct.GPR* %1054, i32 0, i32 15
  %1056 = getelementptr inbounds %struct.Reg, %struct.Reg* %1055, i32 0, i32 0
  %RBP.i35 = bitcast %union.anon* %1056 to i64*
  %1057 = load i64, i64* %RBP.i35
  %1058 = sub i64 %1057, 200
  %1059 = load i64, i64* %RDI.i34
  %1060 = load i64, i64* %PC.i33
  %1061 = add i64 %1060, 7
  store i64 %1061, i64* %PC.i33
  %1062 = inttoptr i64 %1058 to i64*
  store i64 %1059, i64* %1062
  store %struct.Memory* %loadMem_451ec2, %struct.Memory** %MEMORY
  %loadMem_451ec9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1063 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1064 = getelementptr inbounds %struct.GPR, %struct.GPR* %1063, i32 0, i32 33
  %1065 = getelementptr inbounds %struct.Reg, %struct.Reg* %1064, i32 0, i32 0
  %PC.i30 = bitcast %union.anon* %1065 to i64*
  %1066 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1067 = getelementptr inbounds %struct.GPR, %struct.GPR* %1066, i32 0, i32 15
  %1068 = getelementptr inbounds %struct.Reg, %struct.Reg* %1067, i32 0, i32 0
  %RBP.i31 = bitcast %union.anon* %1068 to i64*
  %1069 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1070 = getelementptr inbounds %struct.GPR, %struct.GPR* %1069, i32 0, i32 17
  %1071 = getelementptr inbounds %struct.Reg, %struct.Reg* %1070, i32 0, i32 0
  %R8.i32 = bitcast %union.anon* %1071 to i64*
  %1072 = load i64, i64* %RBP.i31
  %1073 = sub i64 %1072, 344
  %1074 = load i64, i64* %PC.i30
  %1075 = add i64 %1074, 7
  store i64 %1075, i64* %PC.i30
  %1076 = inttoptr i64 %1073 to i64*
  %1077 = load i64, i64* %1076
  store i64 %1077, i64* %R8.i32, align 8
  store %struct.Memory* %loadMem_451ec9, %struct.Memory** %MEMORY
  %loadMem_451ed0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1078 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1079 = getelementptr inbounds %struct.GPR, %struct.GPR* %1078, i32 0, i32 33
  %1080 = getelementptr inbounds %struct.Reg, %struct.Reg* %1079, i32 0, i32 0
  %PC.i27 = bitcast %union.anon* %1080 to i64*
  %1081 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1082 = getelementptr inbounds %struct.GPR, %struct.GPR* %1081, i32 0, i32 15
  %1083 = getelementptr inbounds %struct.Reg, %struct.Reg* %1082, i32 0, i32 0
  %RBP.i28 = bitcast %union.anon* %1083 to i64*
  %1084 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1085 = getelementptr inbounds %struct.GPR, %struct.GPR* %1084, i32 0, i32 17
  %1086 = getelementptr inbounds %struct.Reg, %struct.Reg* %1085, i32 0, i32 0
  %R8.i29 = bitcast %union.anon* %1086 to i64*
  %1087 = load i64, i64* %RBP.i28
  %1088 = sub i64 %1087, 8
  %1089 = load i64, i64* %R8.i29
  %1090 = load i64, i64* %PC.i27
  %1091 = add i64 %1090, 4
  store i64 %1091, i64* %PC.i27
  %1092 = inttoptr i64 %1088 to i64*
  store i64 %1089, i64* %1092
  store %struct.Memory* %loadMem_451ed0, %struct.Memory** %MEMORY
  %loadMem_451ed4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1094 = getelementptr inbounds %struct.GPR, %struct.GPR* %1093, i32 0, i32 33
  %1095 = getelementptr inbounds %struct.Reg, %struct.Reg* %1094, i32 0, i32 0
  %PC.i24 = bitcast %union.anon* %1095 to i64*
  %1096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1097 = getelementptr inbounds %struct.GPR, %struct.GPR* %1096, i32 0, i32 15
  %1098 = getelementptr inbounds %struct.Reg, %struct.Reg* %1097, i32 0, i32 0
  %RBP.i25 = bitcast %union.anon* %1098 to i64*
  %1099 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1100 = getelementptr inbounds %struct.GPR, %struct.GPR* %1099, i32 0, i32 17
  %1101 = getelementptr inbounds %struct.Reg, %struct.Reg* %1100, i32 0, i32 0
  %R8.i26 = bitcast %union.anon* %1101 to i64*
  %1102 = load i64, i64* %RBP.i25
  %1103 = sub i64 %1102, 208
  %1104 = load i64, i64* %PC.i24
  %1105 = add i64 %1104, 7
  store i64 %1105, i64* %PC.i24
  store i64 %1103, i64* %R8.i26, align 8
  store %struct.Memory* %loadMem_451ed4, %struct.Memory** %MEMORY
  %loadMem_451edb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1107 = getelementptr inbounds %struct.GPR, %struct.GPR* %1106, i32 0, i32 33
  %1108 = getelementptr inbounds %struct.Reg, %struct.Reg* %1107, i32 0, i32 0
  %PC.i21 = bitcast %union.anon* %1108 to i64*
  %1109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1110 = getelementptr inbounds %struct.GPR, %struct.GPR* %1109, i32 0, i32 15
  %1111 = getelementptr inbounds %struct.Reg, %struct.Reg* %1110, i32 0, i32 0
  %RBP.i22 = bitcast %union.anon* %1111 to i64*
  %1112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1113 = getelementptr inbounds %struct.GPR, %struct.GPR* %1112, i32 0, i32 17
  %1114 = getelementptr inbounds %struct.Reg, %struct.Reg* %1113, i32 0, i32 0
  %R8.i23 = bitcast %union.anon* %1114 to i64*
  %1115 = load i64, i64* %RBP.i22
  %1116 = sub i64 %1115, 16
  %1117 = load i64, i64* %R8.i23
  %1118 = load i64, i64* %PC.i21
  %1119 = add i64 %1118, 4
  store i64 %1119, i64* %PC.i21
  %1120 = inttoptr i64 %1116 to i64*
  store i64 %1117, i64* %1120
  store %struct.Memory* %loadMem_451edb, %struct.Memory** %MEMORY
  %loadMem_451edf = load %struct.Memory*, %struct.Memory** %MEMORY
  %1121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1122 = getelementptr inbounds %struct.GPR, %struct.GPR* %1121, i32 0, i32 33
  %1123 = getelementptr inbounds %struct.Reg, %struct.Reg* %1122, i32 0, i32 0
  %PC.i18 = bitcast %union.anon* %1123 to i64*
  %1124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1125 = getelementptr inbounds %struct.GPR, %struct.GPR* %1124, i32 0, i32 15
  %1126 = getelementptr inbounds %struct.Reg, %struct.Reg* %1125, i32 0, i32 0
  %RBP.i19 = bitcast %union.anon* %1126 to i64*
  %1127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1128 = getelementptr inbounds %struct.GPR, %struct.GPR* %1127, i32 0, i32 17
  %1129 = getelementptr inbounds %struct.Reg, %struct.Reg* %1128, i32 0, i32 0
  %R8.i20 = bitcast %union.anon* %1129 to i64*
  %1130 = load i64, i64* %RBP.i19
  %1131 = add i64 %1130, 16
  %1132 = load i64, i64* %PC.i18
  %1133 = add i64 %1132, 4
  store i64 %1133, i64* %PC.i18
  store i64 %1131, i64* %R8.i20, align 8
  store %struct.Memory* %loadMem_451edf, %struct.Memory** %MEMORY
  %loadMem_451ee3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1135 = getelementptr inbounds %struct.GPR, %struct.GPR* %1134, i32 0, i32 33
  %1136 = getelementptr inbounds %struct.Reg, %struct.Reg* %1135, i32 0, i32 0
  %PC.i16 = bitcast %union.anon* %1136 to i64*
  %1137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1138 = getelementptr inbounds %struct.GPR, %struct.GPR* %1137, i32 0, i32 15
  %1139 = getelementptr inbounds %struct.Reg, %struct.Reg* %1138, i32 0, i32 0
  %RBP.i17 = bitcast %union.anon* %1139 to i64*
  %1140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1141 = getelementptr inbounds %struct.GPR, %struct.GPR* %1140, i32 0, i32 17
  %1142 = getelementptr inbounds %struct.Reg, %struct.Reg* %1141, i32 0, i32 0
  %R8.i = bitcast %union.anon* %1142 to i64*
  %1143 = load i64, i64* %RBP.i17
  %1144 = sub i64 %1143, 24
  %1145 = load i64, i64* %R8.i
  %1146 = load i64, i64* %PC.i16
  %1147 = add i64 %1146, 4
  store i64 %1147, i64* %PC.i16
  %1148 = inttoptr i64 %1144 to i64*
  store i64 %1145, i64* %1148
  store %struct.Memory* %loadMem_451ee3, %struct.Memory** %MEMORY
  %loadMem_451ee7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1150 = getelementptr inbounds %struct.GPR, %struct.GPR* %1149, i32 0, i32 33
  %1151 = getelementptr inbounds %struct.Reg, %struct.Reg* %1150, i32 0, i32 0
  %PC.i14 = bitcast %union.anon* %1151 to i64*
  %1152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1153 = getelementptr inbounds %struct.GPR, %struct.GPR* %1152, i32 0, i32 15
  %1154 = getelementptr inbounds %struct.Reg, %struct.Reg* %1153, i32 0, i32 0
  %RBP.i15 = bitcast %union.anon* %1154 to i64*
  %1155 = load i64, i64* %RBP.i15
  %1156 = sub i64 %1155, 28
  %1157 = load i64, i64* %PC.i14
  %1158 = add i64 %1157, 7
  store i64 %1158, i64* %PC.i14
  %1159 = inttoptr i64 %1156 to i32*
  store i32 48, i32* %1159
  store %struct.Memory* %loadMem_451ee7, %struct.Memory** %MEMORY
  %loadMem_451eee = load %struct.Memory*, %struct.Memory** %MEMORY
  %1160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1161 = getelementptr inbounds %struct.GPR, %struct.GPR* %1160, i32 0, i32 33
  %1162 = getelementptr inbounds %struct.Reg, %struct.Reg* %1161, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %1162 to i64*
  %1163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1164 = getelementptr inbounds %struct.GPR, %struct.GPR* %1163, i32 0, i32 15
  %1165 = getelementptr inbounds %struct.Reg, %struct.Reg* %1164, i32 0, i32 0
  %RBP.i13 = bitcast %union.anon* %1165 to i64*
  %1166 = load i64, i64* %RBP.i13
  %1167 = sub i64 %1166, 32
  %1168 = load i64, i64* %PC.i12
  %1169 = add i64 %1168, 7
  store i64 %1169, i64* %PC.i12
  %1170 = inttoptr i64 %1167 to i32*
  store i32 8, i32* %1170
  store %struct.Memory* %loadMem_451eee, %struct.Memory** %MEMORY
  %loadMem_451ef5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1172 = getelementptr inbounds %struct.GPR, %struct.GPR* %1171, i32 0, i32 33
  %1173 = getelementptr inbounds %struct.Reg, %struct.Reg* %1172, i32 0, i32 0
  %PC.i11 = bitcast %union.anon* %1173 to i64*
  %1174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1175 = getelementptr inbounds %struct.GPR, %struct.GPR* %1174, i32 0, i32 11
  %1176 = getelementptr inbounds %struct.Reg, %struct.Reg* %1175, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %1176 to i64*
  %1177 = load i64, i64* %PC.i11
  %1178 = add i64 %1177, ptrtoint (%G_0x54a1a4__rip__type* @G_0x54a1a4__rip_ to i64)
  %1179 = load i64, i64* %PC.i11
  %1180 = add i64 %1179, 7
  store i64 %1180, i64* %PC.i11
  %1181 = inttoptr i64 %1178 to i64*
  %1182 = load i64, i64* %1181
  store i64 %1182, i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_451ef5, %struct.Memory** %MEMORY
  %loadMem_451efc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1184 = getelementptr inbounds %struct.GPR, %struct.GPR* %1183, i32 0, i32 33
  %1185 = getelementptr inbounds %struct.Reg, %struct.Reg* %1184, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %1185 to i64*
  %1186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1187 = getelementptr inbounds %struct.GPR, %struct.GPR* %1186, i32 0, i32 9
  %1188 = getelementptr inbounds %struct.Reg, %struct.Reg* %1187, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %1188 to i64*
  %1189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1190 = getelementptr inbounds %struct.GPR, %struct.GPR* %1189, i32 0, i32 15
  %1191 = getelementptr inbounds %struct.Reg, %struct.Reg* %1190, i32 0, i32 0
  %RBP.i10 = bitcast %union.anon* %1191 to i64*
  %1192 = load i64, i64* %RBP.i10
  %1193 = sub i64 %1192, 8
  %1194 = load i64, i64* %PC.i9
  %1195 = add i64 %1194, 4
  store i64 %1195, i64* %PC.i9
  %1196 = inttoptr i64 %1193 to i64*
  %1197 = load i64, i64* %1196
  store i64 %1197, i64* %RSI.i, align 8
  store %struct.Memory* %loadMem_451efc, %struct.Memory** %MEMORY
  %loadMem_451f00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1199 = getelementptr inbounds %struct.GPR, %struct.GPR* %1198, i32 0, i32 33
  %1200 = getelementptr inbounds %struct.Reg, %struct.Reg* %1199, i32 0, i32 0
  %PC.i7 = bitcast %union.anon* %1200 to i64*
  %1201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1202 = getelementptr inbounds %struct.GPR, %struct.GPR* %1201, i32 0, i32 7
  %1203 = getelementptr inbounds %struct.Reg, %struct.Reg* %1202, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %1203 to i64*
  %1204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1205 = getelementptr inbounds %struct.GPR, %struct.GPR* %1204, i32 0, i32 15
  %1206 = getelementptr inbounds %struct.Reg, %struct.Reg* %1205, i32 0, i32 0
  %RBP.i8 = bitcast %union.anon* %1206 to i64*
  %1207 = load i64, i64* %RBP.i8
  %1208 = sub i64 %1207, 32
  %1209 = load i64, i64* %PC.i7
  %1210 = add i64 %1209, 4
  store i64 %1210, i64* %PC.i7
  store i64 %1208, i64* %RDX.i, align 8
  store %struct.Memory* %loadMem_451f00, %struct.Memory** %MEMORY
  %loadMem1_451f04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1212 = getelementptr inbounds %struct.GPR, %struct.GPR* %1211, i32 0, i32 33
  %1213 = getelementptr inbounds %struct.Reg, %struct.Reg* %1212, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %1213 to i64*
  %1214 = load i64, i64* %PC.i6
  %1215 = add i64 %1214, -2964
  %1216 = load i64, i64* %PC.i6
  %1217 = add i64 %1216, 5
  %1218 = load i64, i64* %PC.i6
  %1219 = add i64 %1218, 5
  store i64 %1219, i64* %PC.i6
  %1220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1221 = load i64, i64* %1220, align 8
  %1222 = add i64 %1221, -8
  %1223 = inttoptr i64 %1222 to i64*
  store i64 %1217, i64* %1223
  store i64 %1222, i64* %1220, align 8
  %1224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1215, i64* %1224, align 8
  store %struct.Memory* %loadMem1_451f04, %struct.Memory** %MEMORY
  %loadMem2_451f04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_451f04 = load i64, i64* %3
  %call2_451f04 = call %struct.Memory* @sub_451370.vgprintf(%struct.State* %0, i64 %loadPC_451f04, %struct.Memory* %loadMem2_451f04)
  store %struct.Memory* %call2_451f04, %struct.Memory** %MEMORY
  %loadMem_451f09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1226 = getelementptr inbounds %struct.GPR, %struct.GPR* %1225, i32 0, i32 33
  %1227 = getelementptr inbounds %struct.Reg, %struct.Reg* %1226, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %1227 to i64*
  %1228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1229 = getelementptr inbounds %struct.GPR, %struct.GPR* %1228, i32 0, i32 1
  %1230 = getelementptr inbounds %struct.Reg, %struct.Reg* %1229, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %1230 to i64*
  %1231 = load i64, i64* %PC.i5
  %1232 = add i64 %1231, 5
  store i64 %1232, i64* %PC.i5
  store i64 1, i64* %RAX.i, align 8
  store %struct.Memory* %loadMem_451f09, %struct.Memory** %MEMORY
  %loadMem_451f0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1234 = getelementptr inbounds %struct.GPR, %struct.GPR* %1233, i32 0, i32 33
  %1235 = getelementptr inbounds %struct.Reg, %struct.Reg* %1234, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %1235 to i64*
  %1236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1237 = getelementptr inbounds %struct.GPR, %struct.GPR* %1236, i32 0, i32 13
  %1238 = getelementptr inbounds %struct.Reg, %struct.Reg* %1237, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %1238 to i64*
  %1239 = load i64, i64* %RSP.i
  %1240 = load i64, i64* %PC.i4
  %1241 = add i64 %1240, 7
  store i64 %1241, i64* %PC.i4
  %1242 = add i64 384, %1239
  store i64 %1242, i64* %RSP.i, align 8
  %1243 = icmp ult i64 %1242, %1239
  %1244 = icmp ult i64 %1242, 384
  %1245 = or i1 %1243, %1244
  %1246 = zext i1 %1245 to i8
  %1247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1246, i8* %1247, align 1
  %1248 = trunc i64 %1242 to i32
  %1249 = and i32 %1248, 255
  %1250 = call i32 @llvm.ctpop.i32(i32 %1249)
  %1251 = trunc i32 %1250 to i8
  %1252 = and i8 %1251, 1
  %1253 = xor i8 %1252, 1
  %1254 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1253, i8* %1254, align 1
  %1255 = xor i64 384, %1239
  %1256 = xor i64 %1255, %1242
  %1257 = lshr i64 %1256, 4
  %1258 = trunc i64 %1257 to i8
  %1259 = and i8 %1258, 1
  %1260 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1259, i8* %1260, align 1
  %1261 = icmp eq i64 %1242, 0
  %1262 = zext i1 %1261 to i8
  %1263 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1262, i8* %1263, align 1
  %1264 = lshr i64 %1242, 63
  %1265 = trunc i64 %1264 to i8
  %1266 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1265, i8* %1266, align 1
  %1267 = lshr i64 %1239, 63
  %1268 = xor i64 %1264, %1267
  %1269 = add i64 %1268, %1264
  %1270 = icmp eq i64 %1269, 2
  %1271 = zext i1 %1270 to i8
  %1272 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1271, i8* %1272, align 1
  store %struct.Memory* %loadMem_451f0e, %struct.Memory** %MEMORY
  %loadMem_451f15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1274 = getelementptr inbounds %struct.GPR, %struct.GPR* %1273, i32 0, i32 33
  %1275 = getelementptr inbounds %struct.Reg, %struct.Reg* %1274, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %1275 to i64*
  %1276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1277 = getelementptr inbounds %struct.GPR, %struct.GPR* %1276, i32 0, i32 15
  %1278 = getelementptr inbounds %struct.Reg, %struct.Reg* %1277, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %1278 to i64*
  %1279 = load i64, i64* %PC.i2
  %1280 = add i64 %1279, 1
  store i64 %1280, i64* %PC.i2
  %1281 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1282 = load i64, i64* %1281, align 8
  %1283 = add i64 %1282, 8
  %1284 = inttoptr i64 %1282 to i64*
  %1285 = load i64, i64* %1284
  store i64 %1285, i64* %RBP.i3, align 8
  store i64 %1283, i64* %1281, align 8
  store %struct.Memory* %loadMem_451f15, %struct.Memory** %MEMORY
  %loadMem_451f16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1287 = getelementptr inbounds %struct.GPR, %struct.GPR* %1286, i32 0, i32 33
  %1288 = getelementptr inbounds %struct.Reg, %struct.Reg* %1287, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %1288 to i64*
  %1289 = load i64, i64* %PC.i1
  %1290 = add i64 %1289, 1
  store i64 %1290, i64* %PC.i1
  %1291 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1292 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1293 = load i64, i64* %1292, align 8
  %1294 = inttoptr i64 %1293 to i64*
  %1295 = load i64, i64* %1294
  store i64 %1295, i64* %1291, align 8
  %1296 = add i64 %1293, 8
  store i64 %1296, i64* %1292, align 8
  store %struct.Memory* %loadMem_451f16, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_451f16
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

define %struct.Memory* @routine_subq__0x180___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC
  %12 = sub i64 %9, 384
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %9, 384
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
  %23 = xor i64 384, %9
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

define %struct.Memory* @routine_testb__al___al(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i8, i8* %AL
  %13 = zext i8 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = and i64 %13, %11
  %17 = trunc i64 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %18, align 1
  %19 = trunc i64 %16 to i32
  %20 = and i32 %19, 255
  %21 = call i32 @llvm.ctpop.i32(i32 %20)
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = xor i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %24, i8* %25, align 1
  %26 = icmp eq i8 %17, 0
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %27, i8* %28, align 1
  %29 = lshr i8 %17, 7
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %32, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movaps__xmm7__MINUS0xe0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 7
  %XMM7 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 224
  %13 = bitcast %union.vec128_t* %XMM7 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to <2 x float>*
  %17 = load <2 x float>, <2 x float>* %16, align 1
  %18 = getelementptr inbounds i8, i8* %13, i64 8
  %19 = bitcast i8* %18 to <2 x float>*
  %20 = load <2 x float>, <2 x float>* %19, align 1
  %21 = extractelement <2 x float> %17, i32 0
  %22 = inttoptr i64 %12 to float*
  store float %21, float* %22
  %23 = add i64 %12, 4
  %24 = extractelement <2 x float> %17, i32 1
  %25 = inttoptr i64 %23 to float*
  store float %24, float* %25
  %26 = add i64 %12, 8
  %27 = extractelement <2 x float> %20, i32 0
  %28 = inttoptr i64 %26 to float*
  store float %27, float* %28
  %29 = add i64 %12, 12
  %30 = extractelement <2 x float> %20, i32 1
  %31 = inttoptr i64 %29 to float*
  store float %30, float* %31
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movaps__xmm6__MINUS0xf0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 6
  %XMM6 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 240
  %13 = bitcast %union.vec128_t* %XMM6 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to <2 x float>*
  %17 = load <2 x float>, <2 x float>* %16, align 1
  %18 = getelementptr inbounds i8, i8* %13, i64 8
  %19 = bitcast i8* %18 to <2 x float>*
  %20 = load <2 x float>, <2 x float>* %19, align 1
  %21 = extractelement <2 x float> %17, i32 0
  %22 = inttoptr i64 %12 to float*
  store float %21, float* %22
  %23 = add i64 %12, 4
  %24 = extractelement <2 x float> %17, i32 1
  %25 = inttoptr i64 %23 to float*
  store float %24, float* %25
  %26 = add i64 %12, 8
  %27 = extractelement <2 x float> %20, i32 0
  %28 = inttoptr i64 %26 to float*
  store float %27, float* %28
  %29 = add i64 %12, 12
  %30 = extractelement <2 x float> %20, i32 1
  %31 = inttoptr i64 %29 to float*
  store float %30, float* %31
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movaps__xmm5__MINUS0x100__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 5
  %XMM5 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 256
  %13 = bitcast %union.vec128_t* %XMM5 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to <2 x float>*
  %17 = load <2 x float>, <2 x float>* %16, align 1
  %18 = getelementptr inbounds i8, i8* %13, i64 8
  %19 = bitcast i8* %18 to <2 x float>*
  %20 = load <2 x float>, <2 x float>* %19, align 1
  %21 = extractelement <2 x float> %17, i32 0
  %22 = inttoptr i64 %12 to float*
  store float %21, float* %22
  %23 = add i64 %12, 4
  %24 = extractelement <2 x float> %17, i32 1
  %25 = inttoptr i64 %23 to float*
  store float %24, float* %25
  %26 = add i64 %12, 8
  %27 = extractelement <2 x float> %20, i32 0
  %28 = inttoptr i64 %26 to float*
  store float %27, float* %28
  %29 = add i64 %12, 12
  %30 = extractelement <2 x float> %20, i32 1
  %31 = inttoptr i64 %29 to float*
  store float %30, float* %31
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movaps__xmm4__MINUS0x110__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 4
  %XMM4 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 272
  %13 = bitcast %union.vec128_t* %XMM4 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to <2 x float>*
  %17 = load <2 x float>, <2 x float>* %16, align 1
  %18 = getelementptr inbounds i8, i8* %13, i64 8
  %19 = bitcast i8* %18 to <2 x float>*
  %20 = load <2 x float>, <2 x float>* %19, align 1
  %21 = extractelement <2 x float> %17, i32 0
  %22 = inttoptr i64 %12 to float*
  store float %21, float* %22
  %23 = add i64 %12, 4
  %24 = extractelement <2 x float> %17, i32 1
  %25 = inttoptr i64 %23 to float*
  store float %24, float* %25
  %26 = add i64 %12, 8
  %27 = extractelement <2 x float> %20, i32 0
  %28 = inttoptr i64 %26 to float*
  store float %27, float* %28
  %29 = add i64 %12, 12
  %30 = extractelement <2 x float> %20, i32 1
  %31 = inttoptr i64 %29 to float*
  store float %30, float* %31
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movaps__xmm3__MINUS0x120__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 3
  %XMM3 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 288
  %13 = bitcast %union.vec128_t* %XMM3 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to <2 x float>*
  %17 = load <2 x float>, <2 x float>* %16, align 1
  %18 = getelementptr inbounds i8, i8* %13, i64 8
  %19 = bitcast i8* %18 to <2 x float>*
  %20 = load <2 x float>, <2 x float>* %19, align 1
  %21 = extractelement <2 x float> %17, i32 0
  %22 = inttoptr i64 %12 to float*
  store float %21, float* %22
  %23 = add i64 %12, 4
  %24 = extractelement <2 x float> %17, i32 1
  %25 = inttoptr i64 %23 to float*
  store float %24, float* %25
  %26 = add i64 %12, 8
  %27 = extractelement <2 x float> %20, i32 0
  %28 = inttoptr i64 %26 to float*
  store float %27, float* %28
  %29 = add i64 %12, 12
  %30 = extractelement <2 x float> %20, i32 1
  %31 = inttoptr i64 %29 to float*
  store float %30, float* %31
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movaps__xmm2__MINUS0x130__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 304
  %13 = bitcast %union.vec128_t* %XMM2 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to <2 x float>*
  %17 = load <2 x float>, <2 x float>* %16, align 1
  %18 = getelementptr inbounds i8, i8* %13, i64 8
  %19 = bitcast i8* %18 to <2 x float>*
  %20 = load <2 x float>, <2 x float>* %19, align 1
  %21 = extractelement <2 x float> %17, i32 0
  %22 = inttoptr i64 %12 to float*
  store float %21, float* %22
  %23 = add i64 %12, 4
  %24 = extractelement <2 x float> %17, i32 1
  %25 = inttoptr i64 %23 to float*
  store float %24, float* %25
  %26 = add i64 %12, 8
  %27 = extractelement <2 x float> %20, i32 0
  %28 = inttoptr i64 %26 to float*
  store float %27, float* %28
  %29 = add i64 %12, 12
  %30 = extractelement <2 x float> %20, i32 1
  %31 = inttoptr i64 %29 to float*
  store float %30, float* %31
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movaps__xmm1__MINUS0x140__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %XMM1 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 320
  %13 = bitcast %union.vec128_t* %XMM1 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to <2 x float>*
  %17 = load <2 x float>, <2 x float>* %16, align 1
  %18 = getelementptr inbounds i8, i8* %13, i64 8
  %19 = bitcast i8* %18 to <2 x float>*
  %20 = load <2 x float>, <2 x float>* %19, align 1
  %21 = extractelement <2 x float> %17, i32 0
  %22 = inttoptr i64 %12 to float*
  store float %21, float* %22
  %23 = add i64 %12, 4
  %24 = extractelement <2 x float> %17, i32 1
  %25 = inttoptr i64 %23 to float*
  store float %24, float* %25
  %26 = add i64 %12, 8
  %27 = extractelement <2 x float> %20, i32 0
  %28 = inttoptr i64 %26 to float*
  store float %27, float* %28
  %29 = add i64 %12, 12
  %30 = extractelement <2 x float> %20, i32 1
  %31 = inttoptr i64 %29 to float*
  store float %30, float* %31
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movaps__xmm0__MINUS0x150__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 336
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to <2 x float>*
  %17 = load <2 x float>, <2 x float>* %16, align 1
  %18 = getelementptr inbounds i8, i8* %13, i64 8
  %19 = bitcast i8* %18 to <2 x float>*
  %20 = load <2 x float>, <2 x float>* %19, align 1
  %21 = extractelement <2 x float> %17, i32 0
  %22 = inttoptr i64 %12 to float*
  store float %21, float* %22
  %23 = add i64 %12, 4
  %24 = extractelement <2 x float> %17, i32 1
  %25 = inttoptr i64 %23 to float*
  store float %24, float* %25
  %26 = add i64 %12, 8
  %27 = extractelement <2 x float> %20, i32 0
  %28 = inttoptr i64 %26 to float*
  store float %27, float* %28
  %29 = add i64 %12, 12
  %30 = extractelement <2 x float> %20, i32 1
  %31 = inttoptr i64 %29 to float*
  store float %30, float* %31
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rdi__MINUS0x158__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 344
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r9__MINUS0x160__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 352
  %14 = load i64, i64* %R9
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r8__MINUS0x168__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 360
  %14 = load i64, i64* %R8
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rcx__MINUS0x170__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 368
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rdx__MINUS0x178__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 376
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rsi__MINUS0x180__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 384
  %14 = load i64, i64* %RSI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_451e83(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movaps_MINUS0x150__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 336
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to float*
  %17 = load float, float* %16
  %18 = add i64 %13, 4
  %19 = inttoptr i64 %18 to float*
  %20 = load float, float* %19
  %21 = add i64 %13, 8
  %22 = inttoptr i64 %21 to float*
  %23 = load float, float* %22
  %24 = add i64 %13, 12
  %25 = inttoptr i64 %24 to float*
  %26 = load float, float* %25
  %27 = bitcast i8* %11 to float*
  store float %17, float* %27, align 1
  %28 = getelementptr inbounds i8, i8* %11, i64 4
  %29 = bitcast i8* %28 to float*
  store float %20, float* %29, align 1
  %30 = getelementptr inbounds i8, i8* %11, i64 8
  %31 = bitcast i8* %30 to float*
  store float %23, float* %31, align 1
  %32 = getelementptr inbounds i8, i8* %11, i64 12
  %33 = bitcast i8* %32 to float*
  store float %26, float* %33, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movaps__xmm0__MINUS0xa0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 160
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to <2 x float>*
  %17 = load <2 x float>, <2 x float>* %16, align 1
  %18 = getelementptr inbounds i8, i8* %13, i64 8
  %19 = bitcast i8* %18 to <2 x float>*
  %20 = load <2 x float>, <2 x float>* %19, align 1
  %21 = extractelement <2 x float> %17, i32 0
  %22 = inttoptr i64 %12 to float*
  store float %21, float* %22
  %23 = add i64 %12, 4
  %24 = extractelement <2 x float> %17, i32 1
  %25 = inttoptr i64 %23 to float*
  store float %24, float* %25
  %26 = add i64 %12, 8
  %27 = extractelement <2 x float> %20, i32 0
  %28 = inttoptr i64 %26 to float*
  store float %27, float* %28
  %29 = add i64 %12, 12
  %30 = extractelement <2 x float> %20, i32 1
  %31 = inttoptr i64 %29 to float*
  store float %30, float* %31
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movaps_MINUS0x140__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 320
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to float*
  %17 = load float, float* %16
  %18 = add i64 %13, 4
  %19 = inttoptr i64 %18 to float*
  %20 = load float, float* %19
  %21 = add i64 %13, 8
  %22 = inttoptr i64 %21 to float*
  %23 = load float, float* %22
  %24 = add i64 %13, 12
  %25 = inttoptr i64 %24 to float*
  %26 = load float, float* %25
  %27 = bitcast i8* %11 to float*
  store float %17, float* %27, align 1
  %28 = getelementptr inbounds i8, i8* %11, i64 4
  %29 = bitcast i8* %28 to float*
  store float %20, float* %29, align 1
  %30 = getelementptr inbounds i8, i8* %11, i64 8
  %31 = bitcast i8* %30 to float*
  store float %23, float* %31, align 1
  %32 = getelementptr inbounds i8, i8* %11, i64 12
  %33 = bitcast i8* %32 to float*
  store float %26, float* %33, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movaps__xmm1__MINUS0x90__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %XMM1 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 144
  %13 = bitcast %union.vec128_t* %XMM1 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to <2 x float>*
  %17 = load <2 x float>, <2 x float>* %16, align 1
  %18 = getelementptr inbounds i8, i8* %13, i64 8
  %19 = bitcast i8* %18 to <2 x float>*
  %20 = load <2 x float>, <2 x float>* %19, align 1
  %21 = extractelement <2 x float> %17, i32 0
  %22 = inttoptr i64 %12 to float*
  store float %21, float* %22
  %23 = add i64 %12, 4
  %24 = extractelement <2 x float> %17, i32 1
  %25 = inttoptr i64 %23 to float*
  store float %24, float* %25
  %26 = add i64 %12, 8
  %27 = extractelement <2 x float> %20, i32 0
  %28 = inttoptr i64 %26 to float*
  store float %27, float* %28
  %29 = add i64 %12, 12
  %30 = extractelement <2 x float> %20, i32 1
  %31 = inttoptr i64 %29 to float*
  store float %30, float* %31
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movaps_MINUS0x130__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 304
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to float*
  %17 = load float, float* %16
  %18 = add i64 %13, 4
  %19 = inttoptr i64 %18 to float*
  %20 = load float, float* %19
  %21 = add i64 %13, 8
  %22 = inttoptr i64 %21 to float*
  %23 = load float, float* %22
  %24 = add i64 %13, 12
  %25 = inttoptr i64 %24 to float*
  %26 = load float, float* %25
  %27 = bitcast i8* %11 to float*
  store float %17, float* %27, align 1
  %28 = getelementptr inbounds i8, i8* %11, i64 4
  %29 = bitcast i8* %28 to float*
  store float %20, float* %29, align 1
  %30 = getelementptr inbounds i8, i8* %11, i64 8
  %31 = bitcast i8* %30 to float*
  store float %23, float* %31, align 1
  %32 = getelementptr inbounds i8, i8* %11, i64 12
  %33 = bitcast i8* %32 to float*
  store float %26, float* %33, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movaps__xmm2__MINUS0x80__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 128
  %13 = bitcast %union.vec128_t* %XMM2 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to <2 x float>*
  %17 = load <2 x float>, <2 x float>* %16, align 1
  %18 = getelementptr inbounds i8, i8* %13, i64 8
  %19 = bitcast i8* %18 to <2 x float>*
  %20 = load <2 x float>, <2 x float>* %19, align 1
  %21 = extractelement <2 x float> %17, i32 0
  %22 = inttoptr i64 %12 to float*
  store float %21, float* %22
  %23 = add i64 %12, 4
  %24 = extractelement <2 x float> %17, i32 1
  %25 = inttoptr i64 %23 to float*
  store float %24, float* %25
  %26 = add i64 %12, 8
  %27 = extractelement <2 x float> %20, i32 0
  %28 = inttoptr i64 %26 to float*
  store float %27, float* %28
  %29 = add i64 %12, 12
  %30 = extractelement <2 x float> %20, i32 1
  %31 = inttoptr i64 %29 to float*
  store float %30, float* %31
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movaps_MINUS0x120__rbp____xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 288
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to float*
  %17 = load float, float* %16
  %18 = add i64 %13, 4
  %19 = inttoptr i64 %18 to float*
  %20 = load float, float* %19
  %21 = add i64 %13, 8
  %22 = inttoptr i64 %21 to float*
  %23 = load float, float* %22
  %24 = add i64 %13, 12
  %25 = inttoptr i64 %24 to float*
  %26 = load float, float* %25
  %27 = bitcast i8* %11 to float*
  store float %17, float* %27, align 1
  %28 = getelementptr inbounds i8, i8* %11, i64 4
  %29 = bitcast i8* %28 to float*
  store float %20, float* %29, align 1
  %30 = getelementptr inbounds i8, i8* %11, i64 8
  %31 = bitcast i8* %30 to float*
  store float %23, float* %31, align 1
  %32 = getelementptr inbounds i8, i8* %11, i64 12
  %33 = bitcast i8* %32 to float*
  store float %26, float* %33, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movaps__xmm3__MINUS0x70__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 3
  %XMM3 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 112
  %13 = bitcast %union.vec128_t* %XMM3 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to <2 x float>*
  %17 = load <2 x float>, <2 x float>* %16, align 1
  %18 = getelementptr inbounds i8, i8* %13, i64 8
  %19 = bitcast i8* %18 to <2 x float>*
  %20 = load <2 x float>, <2 x float>* %19, align 1
  %21 = extractelement <2 x float> %17, i32 0
  %22 = inttoptr i64 %12 to float*
  store float %21, float* %22
  %23 = add i64 %12, 4
  %24 = extractelement <2 x float> %17, i32 1
  %25 = inttoptr i64 %23 to float*
  store float %24, float* %25
  %26 = add i64 %12, 8
  %27 = extractelement <2 x float> %20, i32 0
  %28 = inttoptr i64 %26 to float*
  store float %27, float* %28
  %29 = add i64 %12, 12
  %30 = extractelement <2 x float> %20, i32 1
  %31 = inttoptr i64 %29 to float*
  store float %30, float* %31
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movaps_MINUS0x110__rbp____xmm4(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 4
  %YMM4 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 272
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to float*
  %17 = load float, float* %16
  %18 = add i64 %13, 4
  %19 = inttoptr i64 %18 to float*
  %20 = load float, float* %19
  %21 = add i64 %13, 8
  %22 = inttoptr i64 %21 to float*
  %23 = load float, float* %22
  %24 = add i64 %13, 12
  %25 = inttoptr i64 %24 to float*
  %26 = load float, float* %25
  %27 = bitcast i8* %11 to float*
  store float %17, float* %27, align 1
  %28 = getelementptr inbounds i8, i8* %11, i64 4
  %29 = bitcast i8* %28 to float*
  store float %20, float* %29, align 1
  %30 = getelementptr inbounds i8, i8* %11, i64 8
  %31 = bitcast i8* %30 to float*
  store float %23, float* %31, align 1
  %32 = getelementptr inbounds i8, i8* %11, i64 12
  %33 = bitcast i8* %32 to float*
  store float %26, float* %33, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movaps__xmm4__MINUS0x60__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 4
  %XMM4 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 96
  %13 = bitcast %union.vec128_t* %XMM4 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to <2 x float>*
  %17 = load <2 x float>, <2 x float>* %16, align 1
  %18 = getelementptr inbounds i8, i8* %13, i64 8
  %19 = bitcast i8* %18 to <2 x float>*
  %20 = load <2 x float>, <2 x float>* %19, align 1
  %21 = extractelement <2 x float> %17, i32 0
  %22 = inttoptr i64 %12 to float*
  store float %21, float* %22
  %23 = add i64 %12, 4
  %24 = extractelement <2 x float> %17, i32 1
  %25 = inttoptr i64 %23 to float*
  store float %24, float* %25
  %26 = add i64 %12, 8
  %27 = extractelement <2 x float> %20, i32 0
  %28 = inttoptr i64 %26 to float*
  store float %27, float* %28
  %29 = add i64 %12, 12
  %30 = extractelement <2 x float> %20, i32 1
  %31 = inttoptr i64 %29 to float*
  store float %30, float* %31
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movaps_MINUS0x100__rbp____xmm5(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 5
  %YMM5 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM5 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 256
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to float*
  %17 = load float, float* %16
  %18 = add i64 %13, 4
  %19 = inttoptr i64 %18 to float*
  %20 = load float, float* %19
  %21 = add i64 %13, 8
  %22 = inttoptr i64 %21 to float*
  %23 = load float, float* %22
  %24 = add i64 %13, 12
  %25 = inttoptr i64 %24 to float*
  %26 = load float, float* %25
  %27 = bitcast i8* %11 to float*
  store float %17, float* %27, align 1
  %28 = getelementptr inbounds i8, i8* %11, i64 4
  %29 = bitcast i8* %28 to float*
  store float %20, float* %29, align 1
  %30 = getelementptr inbounds i8, i8* %11, i64 8
  %31 = bitcast i8* %30 to float*
  store float %23, float* %31, align 1
  %32 = getelementptr inbounds i8, i8* %11, i64 12
  %33 = bitcast i8* %32 to float*
  store float %26, float* %33, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movaps__xmm5__MINUS0x50__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 5
  %XMM5 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 80
  %13 = bitcast %union.vec128_t* %XMM5 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to <2 x float>*
  %17 = load <2 x float>, <2 x float>* %16, align 1
  %18 = getelementptr inbounds i8, i8* %13, i64 8
  %19 = bitcast i8* %18 to <2 x float>*
  %20 = load <2 x float>, <2 x float>* %19, align 1
  %21 = extractelement <2 x float> %17, i32 0
  %22 = inttoptr i64 %12 to float*
  store float %21, float* %22
  %23 = add i64 %12, 4
  %24 = extractelement <2 x float> %17, i32 1
  %25 = inttoptr i64 %23 to float*
  store float %24, float* %25
  %26 = add i64 %12, 8
  %27 = extractelement <2 x float> %20, i32 0
  %28 = inttoptr i64 %26 to float*
  store float %27, float* %28
  %29 = add i64 %12, 12
  %30 = extractelement <2 x float> %20, i32 1
  %31 = inttoptr i64 %29 to float*
  store float %30, float* %31
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movaps_MINUS0xf0__rbp____xmm6(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 6
  %YMM6 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM6 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 240
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to float*
  %17 = load float, float* %16
  %18 = add i64 %13, 4
  %19 = inttoptr i64 %18 to float*
  %20 = load float, float* %19
  %21 = add i64 %13, 8
  %22 = inttoptr i64 %21 to float*
  %23 = load float, float* %22
  %24 = add i64 %13, 12
  %25 = inttoptr i64 %24 to float*
  %26 = load float, float* %25
  %27 = bitcast i8* %11 to float*
  store float %17, float* %27, align 1
  %28 = getelementptr inbounds i8, i8* %11, i64 4
  %29 = bitcast i8* %28 to float*
  store float %20, float* %29, align 1
  %30 = getelementptr inbounds i8, i8* %11, i64 8
  %31 = bitcast i8* %30 to float*
  store float %23, float* %31, align 1
  %32 = getelementptr inbounds i8, i8* %11, i64 12
  %33 = bitcast i8* %32 to float*
  store float %26, float* %33, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movaps__xmm6__MINUS0x40__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 6
  %XMM6 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 64
  %13 = bitcast %union.vec128_t* %XMM6 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to <2 x float>*
  %17 = load <2 x float>, <2 x float>* %16, align 1
  %18 = getelementptr inbounds i8, i8* %13, i64 8
  %19 = bitcast i8* %18 to <2 x float>*
  %20 = load <2 x float>, <2 x float>* %19, align 1
  %21 = extractelement <2 x float> %17, i32 0
  %22 = inttoptr i64 %12 to float*
  store float %21, float* %22
  %23 = add i64 %12, 4
  %24 = extractelement <2 x float> %17, i32 1
  %25 = inttoptr i64 %23 to float*
  store float %24, float* %25
  %26 = add i64 %12, 8
  %27 = extractelement <2 x float> %20, i32 0
  %28 = inttoptr i64 %26 to float*
  store float %27, float* %28
  %29 = add i64 %12, 12
  %30 = extractelement <2 x float> %20, i32 1
  %31 = inttoptr i64 %29 to float*
  store float %30, float* %31
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movaps_MINUS0xe0__rbp____xmm7(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 7
  %YMM7 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM7 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 224
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to float*
  %17 = load float, float* %16
  %18 = add i64 %13, 4
  %19 = inttoptr i64 %18 to float*
  %20 = load float, float* %19
  %21 = add i64 %13, 8
  %22 = inttoptr i64 %21 to float*
  %23 = load float, float* %22
  %24 = add i64 %13, 12
  %25 = inttoptr i64 %24 to float*
  %26 = load float, float* %25
  %27 = bitcast i8* %11 to float*
  store float %17, float* %27, align 1
  %28 = getelementptr inbounds i8, i8* %11, i64 4
  %29 = bitcast i8* %28 to float*
  store float %20, float* %29, align 1
  %30 = getelementptr inbounds i8, i8* %11, i64 8
  %31 = bitcast i8* %30 to float*
  store float %23, float* %31, align 1
  %32 = getelementptr inbounds i8, i8* %11, i64 12
  %33 = bitcast i8* %32 to float*
  store float %26, float* %33, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movaps__xmm7__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 7
  %XMM7 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 48
  %13 = bitcast %union.vec128_t* %XMM7 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to <2 x float>*
  %17 = load <2 x float>, <2 x float>* %16, align 1
  %18 = getelementptr inbounds i8, i8* %13, i64 8
  %19 = bitcast i8* %18 to <2 x float>*
  %20 = load <2 x float>, <2 x float>* %19, align 1
  %21 = extractelement <2 x float> %17, i32 0
  %22 = inttoptr i64 %12 to float*
  store float %21, float* %22
  %23 = add i64 %12, 4
  %24 = extractelement <2 x float> %17, i32 1
  %25 = inttoptr i64 %23 to float*
  store float %24, float* %25
  %26 = add i64 %12, 8
  %27 = extractelement <2 x float> %20, i32 0
  %28 = inttoptr i64 %26 to float*
  store float %27, float* %28
  %29 = add i64 %12, 12
  %30 = extractelement <2 x float> %20, i32 1
  %31 = inttoptr i64 %29 to float*
  store float %30, float* %31
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x160__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 352
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0xa8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 168
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x168__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 360
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rcx__MINUS0xb0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 176
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x170__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 368
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rdx__MINUS0xb8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 184
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x178__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 376
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rsi__MINUS0xc0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 192
  %14 = load i64, i64* %RSI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x180__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 384
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rdi__MINUS0xc8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 200
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x158__rbp____r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 344
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r8__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %R8
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_leaq_MINUS0xd0__rbp____r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 208
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  store i64 %13, i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r8__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 16
  %14 = load i64, i64* %R8
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_leaq_0x10__rbp____r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  store i64 %13, i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r8__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 24
  %14 = load i64, i64* %R8
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x30__MINUS0x1c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 48, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x8__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 8, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x54a1a4__rip____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint (%G_0x54a1a4__rip__type* @G_0x54a1a4__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RDI, align 8
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

define %struct.Memory* @routine_leaq_MINUS0x20__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  store i64 %13, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.vgprintf(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_addq__0x180___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC
  %12 = add i64 384, %9
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 384
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
  %25 = xor i64 384, %9
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
