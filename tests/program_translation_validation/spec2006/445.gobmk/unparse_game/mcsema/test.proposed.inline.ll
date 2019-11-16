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

declare %struct.Memory* @sub_403c60.sgf_putc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_403d00.unparse_root(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_403ee0.unparse_node(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_403ab0.unparse_game(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @unparse_game(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_403ab0 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_403ab0, %struct.Memory** %MEMORY
  %loadMem_403ab1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i132 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i133 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i134 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i133
  %27 = load i64, i64* %PC.i132
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i132
  store i64 %26, i64* %RBP.i134, align 8
  store %struct.Memory* %loadMem_403ab1, %struct.Memory** %MEMORY
  %loadMem_403ab4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i130 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i131 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i131
  %36 = load i64, i64* %PC.i130
  %37 = add i64 %36, 4
  store i64 %37, i64* %PC.i130
  %38 = sub i64 %35, 32
  store i64 %38, i64* %RSP.i131, align 8
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
  store %struct.Memory* %loadMem_403ab4, %struct.Memory** %MEMORY
  %loadMem_403ab8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i127 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 11
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %RDI.i128 = bitcast %union.anon* %72 to i64*
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %74 = getelementptr inbounds %struct.GPR, %struct.GPR* %73, i32 0, i32 15
  %75 = getelementptr inbounds %struct.Reg, %struct.Reg* %74, i32 0, i32 0
  %RBP.i129 = bitcast %union.anon* %75 to i64*
  %76 = load i64, i64* %RBP.i129
  %77 = sub i64 %76, 8
  %78 = load i64, i64* %RDI.i128
  %79 = load i64, i64* %PC.i127
  %80 = add i64 %79, 4
  store i64 %80, i64* %PC.i127
  %81 = inttoptr i64 %77 to i64*
  store i64 %78, i64* %81
  store %struct.Memory* %loadMem_403ab8, %struct.Memory** %MEMORY
  %loadMem_403abc = load %struct.Memory*, %struct.Memory** %MEMORY
  %82 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %83 = getelementptr inbounds %struct.GPR, %struct.GPR* %82, i32 0, i32 33
  %84 = getelementptr inbounds %struct.Reg, %struct.Reg* %83, i32 0, i32 0
  %PC.i124 = bitcast %union.anon* %84 to i64*
  %85 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %86 = getelementptr inbounds %struct.GPR, %struct.GPR* %85, i32 0, i32 9
  %87 = getelementptr inbounds %struct.Reg, %struct.Reg* %86, i32 0, i32 0
  %RSI.i125 = bitcast %union.anon* %87 to i64*
  %88 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %89 = getelementptr inbounds %struct.GPR, %struct.GPR* %88, i32 0, i32 15
  %90 = getelementptr inbounds %struct.Reg, %struct.Reg* %89, i32 0, i32 0
  %RBP.i126 = bitcast %union.anon* %90 to i64*
  %91 = load i64, i64* %RBP.i126
  %92 = sub i64 %91, 16
  %93 = load i64, i64* %RSI.i125
  %94 = load i64, i64* %PC.i124
  %95 = add i64 %94, 4
  store i64 %95, i64* %PC.i124
  %96 = inttoptr i64 %92 to i64*
  store i64 %93, i64* %96
  store %struct.Memory* %loadMem_403abc, %struct.Memory** %MEMORY
  %loadMem_403ac0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %97 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %98 = getelementptr inbounds %struct.GPR, %struct.GPR* %97, i32 0, i32 33
  %99 = getelementptr inbounds %struct.Reg, %struct.Reg* %98, i32 0, i32 0
  %PC.i121 = bitcast %union.anon* %99 to i64*
  %100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %101 = getelementptr inbounds %struct.GPR, %struct.GPR* %100, i32 0, i32 7
  %102 = getelementptr inbounds %struct.Reg, %struct.Reg* %101, i32 0, i32 0
  %EDX.i122 = bitcast %union.anon* %102 to i32*
  %103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %104 = getelementptr inbounds %struct.GPR, %struct.GPR* %103, i32 0, i32 15
  %105 = getelementptr inbounds %struct.Reg, %struct.Reg* %104, i32 0, i32 0
  %RBP.i123 = bitcast %union.anon* %105 to i64*
  %106 = load i64, i64* %RBP.i123
  %107 = sub i64 %106, 20
  %108 = load i32, i32* %EDX.i122
  %109 = zext i32 %108 to i64
  %110 = load i64, i64* %PC.i121
  %111 = add i64 %110, 3
  store i64 %111, i64* %PC.i121
  %112 = inttoptr i64 %107 to i32*
  store i32 %108, i32* %112
  store %struct.Memory* %loadMem_403ac0, %struct.Memory** %MEMORY
  %loadMem_403ac3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %114 = getelementptr inbounds %struct.GPR, %struct.GPR* %113, i32 0, i32 33
  %115 = getelementptr inbounds %struct.Reg, %struct.Reg* %114, i32 0, i32 0
  %PC.i119 = bitcast %union.anon* %115 to i64*
  %116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %117 = getelementptr inbounds %struct.GPR, %struct.GPR* %116, i32 0, i32 15
  %118 = getelementptr inbounds %struct.Reg, %struct.Reg* %117, i32 0, i32 0
  %RBP.i120 = bitcast %union.anon* %118 to i64*
  %119 = load i64, i64* %RBP.i120
  %120 = sub i64 %119, 20
  %121 = load i64, i64* %PC.i119
  %122 = add i64 %121, 4
  store i64 %122, i64* %PC.i119
  %123 = inttoptr i64 %120 to i32*
  %124 = load i32, i32* %123
  %125 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %125, align 1
  %126 = and i32 %124, 255
  %127 = call i32 @llvm.ctpop.i32(i32 %126)
  %128 = trunc i32 %127 to i8
  %129 = and i8 %128, 1
  %130 = xor i8 %129, 1
  %131 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %130, i8* %131, align 1
  %132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %132, align 1
  %133 = icmp eq i32 %124, 0
  %134 = zext i1 %133 to i8
  %135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %134, i8* %135, align 1
  %136 = lshr i32 %124, 31
  %137 = trunc i32 %136 to i8
  %138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %137, i8* %138, align 1
  %139 = lshr i32 %124, 31
  %140 = xor i32 %136, %139
  %141 = add i32 %140, %139
  %142 = icmp eq i32 %141, 2
  %143 = zext i1 %142 to i8
  %144 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %143, i8* %144, align 1
  store %struct.Memory* %loadMem_403ac3, %struct.Memory** %MEMORY
  %loadMem_403ac7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %146 = getelementptr inbounds %struct.GPR, %struct.GPR* %145, i32 0, i32 33
  %147 = getelementptr inbounds %struct.Reg, %struct.Reg* %146, i32 0, i32 0
  %PC.i118 = bitcast %union.anon* %147 to i64*
  %148 = load i64, i64* %PC.i118
  %149 = add i64 %148, 20
  %150 = load i64, i64* %PC.i118
  %151 = add i64 %150, 6
  %152 = load i64, i64* %PC.i118
  %153 = add i64 %152, 6
  store i64 %153, i64* %PC.i118
  %154 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %155 = load i8, i8* %154, align 1
  %156 = icmp eq i8 %155, 0
  %157 = zext i1 %156 to i8
  store i8 %157, i8* %BRANCH_TAKEN, align 1
  %158 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %159 = select i1 %156, i64 %149, i64 %151
  store i64 %159, i64* %158, align 8
  store %struct.Memory* %loadMem_403ac7, %struct.Memory** %MEMORY
  %loadBr_403ac7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_403ac7 = icmp eq i8 %loadBr_403ac7, 1
  br i1 %cmpBr_403ac7, label %block_.L_403adb, label %block_403acd

block_403acd:                                     ; preds = %entry
  %loadMem_403acd = load %struct.Memory*, %struct.Memory** %MEMORY
  %160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %161 = getelementptr inbounds %struct.GPR, %struct.GPR* %160, i32 0, i32 33
  %162 = getelementptr inbounds %struct.Reg, %struct.Reg* %161, i32 0, i32 0
  %PC.i116 = bitcast %union.anon* %162 to i64*
  %163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %164 = getelementptr inbounds %struct.GPR, %struct.GPR* %163, i32 0, i32 11
  %165 = getelementptr inbounds %struct.Reg, %struct.Reg* %164, i32 0, i32 0
  %RDI.i117 = bitcast %union.anon* %165 to i64*
  %166 = load i64, i64* %PC.i116
  %167 = add i64 %166, 5
  store i64 %167, i64* %PC.i116
  store i64 10, i64* %RDI.i117, align 8
  store %struct.Memory* %loadMem_403acd, %struct.Memory** %MEMORY
  %loadMem_403ad2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %169 = getelementptr inbounds %struct.GPR, %struct.GPR* %168, i32 0, i32 33
  %170 = getelementptr inbounds %struct.Reg, %struct.Reg* %169, i32 0, i32 0
  %PC.i113 = bitcast %union.anon* %170 to i64*
  %171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %172 = getelementptr inbounds %struct.GPR, %struct.GPR* %171, i32 0, i32 9
  %173 = getelementptr inbounds %struct.Reg, %struct.Reg* %172, i32 0, i32 0
  %RSI.i114 = bitcast %union.anon* %173 to i64*
  %174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %175 = getelementptr inbounds %struct.GPR, %struct.GPR* %174, i32 0, i32 15
  %176 = getelementptr inbounds %struct.Reg, %struct.Reg* %175, i32 0, i32 0
  %RBP.i115 = bitcast %union.anon* %176 to i64*
  %177 = load i64, i64* %RBP.i115
  %178 = sub i64 %177, 8
  %179 = load i64, i64* %PC.i113
  %180 = add i64 %179, 4
  store i64 %180, i64* %PC.i113
  %181 = inttoptr i64 %178 to i64*
  %182 = load i64, i64* %181
  store i64 %182, i64* %RSI.i114, align 8
  store %struct.Memory* %loadMem_403ad2, %struct.Memory** %MEMORY
  %loadMem1_403ad6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %184 = getelementptr inbounds %struct.GPR, %struct.GPR* %183, i32 0, i32 33
  %185 = getelementptr inbounds %struct.Reg, %struct.Reg* %184, i32 0, i32 0
  %PC.i112 = bitcast %union.anon* %185 to i64*
  %186 = load i64, i64* %PC.i112
  %187 = add i64 %186, 394
  %188 = load i64, i64* %PC.i112
  %189 = add i64 %188, 5
  %190 = load i64, i64* %PC.i112
  %191 = add i64 %190, 5
  store i64 %191, i64* %PC.i112
  %192 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = add i64 %193, -8
  %195 = inttoptr i64 %194 to i64*
  store i64 %189, i64* %195
  store i64 %194, i64* %192, align 8
  %196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %187, i64* %196, align 8
  store %struct.Memory* %loadMem1_403ad6, %struct.Memory** %MEMORY
  %loadMem2_403ad6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_403ad6 = load i64, i64* %3
  %call2_403ad6 = call %struct.Memory* @sub_403c60.sgf_putc(%struct.State* %0, i64 %loadPC_403ad6, %struct.Memory* %loadMem2_403ad6)
  store %struct.Memory* %call2_403ad6, %struct.Memory** %MEMORY
  br label %block_.L_403adb

block_.L_403adb:                                  ; preds = %block_403acd, %entry
  %loadMem_403adb = load %struct.Memory*, %struct.Memory** %MEMORY
  %197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %198 = getelementptr inbounds %struct.GPR, %struct.GPR* %197, i32 0, i32 33
  %199 = getelementptr inbounds %struct.Reg, %struct.Reg* %198, i32 0, i32 0
  %PC.i110 = bitcast %union.anon* %199 to i64*
  %200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %201 = getelementptr inbounds %struct.GPR, %struct.GPR* %200, i32 0, i32 11
  %202 = getelementptr inbounds %struct.Reg, %struct.Reg* %201, i32 0, i32 0
  %RDI.i111 = bitcast %union.anon* %202 to i64*
  %203 = load i64, i64* %PC.i110
  %204 = add i64 %203, 5
  store i64 %204, i64* %PC.i110
  store i64 40, i64* %RDI.i111, align 8
  store %struct.Memory* %loadMem_403adb, %struct.Memory** %MEMORY
  %loadMem_403ae0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %206 = getelementptr inbounds %struct.GPR, %struct.GPR* %205, i32 0, i32 33
  %207 = getelementptr inbounds %struct.Reg, %struct.Reg* %206, i32 0, i32 0
  %PC.i107 = bitcast %union.anon* %207 to i64*
  %208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %209 = getelementptr inbounds %struct.GPR, %struct.GPR* %208, i32 0, i32 9
  %210 = getelementptr inbounds %struct.Reg, %struct.Reg* %209, i32 0, i32 0
  %RSI.i108 = bitcast %union.anon* %210 to i64*
  %211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %212 = getelementptr inbounds %struct.GPR, %struct.GPR* %211, i32 0, i32 15
  %213 = getelementptr inbounds %struct.Reg, %struct.Reg* %212, i32 0, i32 0
  %RBP.i109 = bitcast %union.anon* %213 to i64*
  %214 = load i64, i64* %RBP.i109
  %215 = sub i64 %214, 8
  %216 = load i64, i64* %PC.i107
  %217 = add i64 %216, 4
  store i64 %217, i64* %PC.i107
  %218 = inttoptr i64 %215 to i64*
  %219 = load i64, i64* %218
  store i64 %219, i64* %RSI.i108, align 8
  store %struct.Memory* %loadMem_403ae0, %struct.Memory** %MEMORY
  %loadMem1_403ae4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %221 = getelementptr inbounds %struct.GPR, %struct.GPR* %220, i32 0, i32 33
  %222 = getelementptr inbounds %struct.Reg, %struct.Reg* %221, i32 0, i32 0
  %PC.i106 = bitcast %union.anon* %222 to i64*
  %223 = load i64, i64* %PC.i106
  %224 = add i64 %223, 380
  %225 = load i64, i64* %PC.i106
  %226 = add i64 %225, 5
  %227 = load i64, i64* %PC.i106
  %228 = add i64 %227, 5
  store i64 %228, i64* %PC.i106
  %229 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %230 = load i64, i64* %229, align 8
  %231 = add i64 %230, -8
  %232 = inttoptr i64 %231 to i64*
  store i64 %226, i64* %232
  store i64 %231, i64* %229, align 8
  %233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %224, i64* %233, align 8
  store %struct.Memory* %loadMem1_403ae4, %struct.Memory** %MEMORY
  %loadMem2_403ae4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_403ae4 = load i64, i64* %3
  %call2_403ae4 = call %struct.Memory* @sub_403c60.sgf_putc(%struct.State* %0, i64 %loadPC_403ae4, %struct.Memory* %loadMem2_403ae4)
  store %struct.Memory* %call2_403ae4, %struct.Memory** %MEMORY
  %loadMem_403ae9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %235 = getelementptr inbounds %struct.GPR, %struct.GPR* %234, i32 0, i32 33
  %236 = getelementptr inbounds %struct.Reg, %struct.Reg* %235, i32 0, i32 0
  %PC.i104 = bitcast %union.anon* %236 to i64*
  %237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %238 = getelementptr inbounds %struct.GPR, %struct.GPR* %237, i32 0, i32 15
  %239 = getelementptr inbounds %struct.Reg, %struct.Reg* %238, i32 0, i32 0
  %RBP.i105 = bitcast %union.anon* %239 to i64*
  %240 = load i64, i64* %RBP.i105
  %241 = sub i64 %240, 20
  %242 = load i64, i64* %PC.i104
  %243 = add i64 %242, 4
  store i64 %243, i64* %PC.i104
  %244 = inttoptr i64 %241 to i32*
  %245 = load i32, i32* %244
  %246 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %246, align 1
  %247 = and i32 %245, 255
  %248 = call i32 @llvm.ctpop.i32(i32 %247)
  %249 = trunc i32 %248 to i8
  %250 = and i8 %249, 1
  %251 = xor i8 %250, 1
  %252 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %251, i8* %252, align 1
  %253 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %253, align 1
  %254 = icmp eq i32 %245, 0
  %255 = zext i1 %254 to i8
  %256 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %255, i8* %256, align 1
  %257 = lshr i32 %245, 31
  %258 = trunc i32 %257 to i8
  %259 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %258, i8* %259, align 1
  %260 = lshr i32 %245, 31
  %261 = xor i32 %257, %260
  %262 = add i32 %261, %260
  %263 = icmp eq i32 %262, 2
  %264 = zext i1 %263 to i8
  %265 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %264, i8* %265, align 1
  store %struct.Memory* %loadMem_403ae9, %struct.Memory** %MEMORY
  %loadMem_403aed = load %struct.Memory*, %struct.Memory** %MEMORY
  %266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %267 = getelementptr inbounds %struct.GPR, %struct.GPR* %266, i32 0, i32 33
  %268 = getelementptr inbounds %struct.Reg, %struct.Reg* %267, i32 0, i32 0
  %PC.i103 = bitcast %union.anon* %268 to i64*
  %269 = load i64, i64* %PC.i103
  %270 = add i64 %269, 24
  %271 = load i64, i64* %PC.i103
  %272 = add i64 %271, 6
  %273 = load i64, i64* %PC.i103
  %274 = add i64 %273, 6
  store i64 %274, i64* %PC.i103
  %275 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %276 = load i8, i8* %275, align 1
  store i8 %276, i8* %BRANCH_TAKEN, align 1
  %277 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %278 = icmp ne i8 %276, 0
  %279 = select i1 %278, i64 %270, i64 %272
  store i64 %279, i64* %277, align 8
  store %struct.Memory* %loadMem_403aed, %struct.Memory** %MEMORY
  %loadBr_403aed = load i8, i8* %BRANCH_TAKEN
  %cmpBr_403aed = icmp eq i8 %loadBr_403aed, 1
  br i1 %cmpBr_403aed, label %block_.L_403b05, label %block_403af3

block_403af3:                                     ; preds = %block_.L_403adb
  %loadMem_403af3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %281 = getelementptr inbounds %struct.GPR, %struct.GPR* %280, i32 0, i32 33
  %282 = getelementptr inbounds %struct.Reg, %struct.Reg* %281, i32 0, i32 0
  %PC.i100 = bitcast %union.anon* %282 to i64*
  %283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %284 = getelementptr inbounds %struct.GPR, %struct.GPR* %283, i32 0, i32 11
  %285 = getelementptr inbounds %struct.Reg, %struct.Reg* %284, i32 0, i32 0
  %RDI.i101 = bitcast %union.anon* %285 to i64*
  %286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %287 = getelementptr inbounds %struct.GPR, %struct.GPR* %286, i32 0, i32 15
  %288 = getelementptr inbounds %struct.Reg, %struct.Reg* %287, i32 0, i32 0
  %RBP.i102 = bitcast %union.anon* %288 to i64*
  %289 = load i64, i64* %RBP.i102
  %290 = sub i64 %289, 8
  %291 = load i64, i64* %PC.i100
  %292 = add i64 %291, 4
  store i64 %292, i64* %PC.i100
  %293 = inttoptr i64 %290 to i64*
  %294 = load i64, i64* %293
  store i64 %294, i64* %RDI.i101, align 8
  store %struct.Memory* %loadMem_403af3, %struct.Memory** %MEMORY
  %loadMem_403af7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %296 = getelementptr inbounds %struct.GPR, %struct.GPR* %295, i32 0, i32 33
  %297 = getelementptr inbounds %struct.Reg, %struct.Reg* %296, i32 0, i32 0
  %PC.i97 = bitcast %union.anon* %297 to i64*
  %298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %299 = getelementptr inbounds %struct.GPR, %struct.GPR* %298, i32 0, i32 9
  %300 = getelementptr inbounds %struct.Reg, %struct.Reg* %299, i32 0, i32 0
  %RSI.i98 = bitcast %union.anon* %300 to i64*
  %301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %302 = getelementptr inbounds %struct.GPR, %struct.GPR* %301, i32 0, i32 15
  %303 = getelementptr inbounds %struct.Reg, %struct.Reg* %302, i32 0, i32 0
  %RBP.i99 = bitcast %union.anon* %303 to i64*
  %304 = load i64, i64* %RBP.i99
  %305 = sub i64 %304, 16
  %306 = load i64, i64* %PC.i97
  %307 = add i64 %306, 4
  store i64 %307, i64* %PC.i97
  %308 = inttoptr i64 %305 to i64*
  %309 = load i64, i64* %308
  store i64 %309, i64* %RSI.i98, align 8
  store %struct.Memory* %loadMem_403af7, %struct.Memory** %MEMORY
  %loadMem1_403afb = load %struct.Memory*, %struct.Memory** %MEMORY
  %310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %311 = getelementptr inbounds %struct.GPR, %struct.GPR* %310, i32 0, i32 33
  %312 = getelementptr inbounds %struct.Reg, %struct.Reg* %311, i32 0, i32 0
  %PC.i96 = bitcast %union.anon* %312 to i64*
  %313 = load i64, i64* %PC.i96
  %314 = add i64 %313, 517
  %315 = load i64, i64* %PC.i96
  %316 = add i64 %315, 5
  %317 = load i64, i64* %PC.i96
  %318 = add i64 %317, 5
  store i64 %318, i64* %PC.i96
  %319 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %320 = load i64, i64* %319, align 8
  %321 = add i64 %320, -8
  %322 = inttoptr i64 %321 to i64*
  store i64 %316, i64* %322
  store i64 %321, i64* %319, align 8
  %323 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %314, i64* %323, align 8
  store %struct.Memory* %loadMem1_403afb, %struct.Memory** %MEMORY
  %loadMem2_403afb = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_403afb = load i64, i64* %3
  %call2_403afb = call %struct.Memory* @sub_403d00.unparse_root(%struct.State* %0, i64 %loadPC_403afb, %struct.Memory* %loadMem2_403afb)
  store %struct.Memory* %call2_403afb, %struct.Memory** %MEMORY
  %loadMem_403b00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %325 = getelementptr inbounds %struct.GPR, %struct.GPR* %324, i32 0, i32 33
  %326 = getelementptr inbounds %struct.Reg, %struct.Reg* %325, i32 0, i32 0
  %PC.i95 = bitcast %union.anon* %326 to i64*
  %327 = load i64, i64* %PC.i95
  %328 = add i64 %327, 18
  %329 = load i64, i64* %PC.i95
  %330 = add i64 %329, 5
  store i64 %330, i64* %PC.i95
  %331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %328, i64* %331, align 8
  store %struct.Memory* %loadMem_403b00, %struct.Memory** %MEMORY
  br label %block_.L_403b12

block_.L_403b05:                                  ; preds = %block_.L_403adb
  %loadMem_403b05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %333 = getelementptr inbounds %struct.GPR, %struct.GPR* %332, i32 0, i32 33
  %334 = getelementptr inbounds %struct.Reg, %struct.Reg* %333, i32 0, i32 0
  %PC.i92 = bitcast %union.anon* %334 to i64*
  %335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %336 = getelementptr inbounds %struct.GPR, %struct.GPR* %335, i32 0, i32 11
  %337 = getelementptr inbounds %struct.Reg, %struct.Reg* %336, i32 0, i32 0
  %RDI.i93 = bitcast %union.anon* %337 to i64*
  %338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %339 = getelementptr inbounds %struct.GPR, %struct.GPR* %338, i32 0, i32 15
  %340 = getelementptr inbounds %struct.Reg, %struct.Reg* %339, i32 0, i32 0
  %RBP.i94 = bitcast %union.anon* %340 to i64*
  %341 = load i64, i64* %RBP.i94
  %342 = sub i64 %341, 8
  %343 = load i64, i64* %PC.i92
  %344 = add i64 %343, 4
  store i64 %344, i64* %PC.i92
  %345 = inttoptr i64 %342 to i64*
  %346 = load i64, i64* %345
  store i64 %346, i64* %RDI.i93, align 8
  store %struct.Memory* %loadMem_403b05, %struct.Memory** %MEMORY
  %loadMem_403b09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %348 = getelementptr inbounds %struct.GPR, %struct.GPR* %347, i32 0, i32 33
  %349 = getelementptr inbounds %struct.Reg, %struct.Reg* %348, i32 0, i32 0
  %PC.i89 = bitcast %union.anon* %349 to i64*
  %350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %351 = getelementptr inbounds %struct.GPR, %struct.GPR* %350, i32 0, i32 9
  %352 = getelementptr inbounds %struct.Reg, %struct.Reg* %351, i32 0, i32 0
  %RSI.i90 = bitcast %union.anon* %352 to i64*
  %353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %354 = getelementptr inbounds %struct.GPR, %struct.GPR* %353, i32 0, i32 15
  %355 = getelementptr inbounds %struct.Reg, %struct.Reg* %354, i32 0, i32 0
  %RBP.i91 = bitcast %union.anon* %355 to i64*
  %356 = load i64, i64* %RBP.i91
  %357 = sub i64 %356, 16
  %358 = load i64, i64* %PC.i89
  %359 = add i64 %358, 4
  store i64 %359, i64* %PC.i89
  %360 = inttoptr i64 %357 to i64*
  %361 = load i64, i64* %360
  store i64 %361, i64* %RSI.i90, align 8
  store %struct.Memory* %loadMem_403b09, %struct.Memory** %MEMORY
  %loadMem1_403b0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %363 = getelementptr inbounds %struct.GPR, %struct.GPR* %362, i32 0, i32 33
  %364 = getelementptr inbounds %struct.Reg, %struct.Reg* %363, i32 0, i32 0
  %PC.i88 = bitcast %union.anon* %364 to i64*
  %365 = load i64, i64* %PC.i88
  %366 = add i64 %365, 979
  %367 = load i64, i64* %PC.i88
  %368 = add i64 %367, 5
  %369 = load i64, i64* %PC.i88
  %370 = add i64 %369, 5
  store i64 %370, i64* %PC.i88
  %371 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %372 = load i64, i64* %371, align 8
  %373 = add i64 %372, -8
  %374 = inttoptr i64 %373 to i64*
  store i64 %368, i64* %374
  store i64 %373, i64* %371, align 8
  %375 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %366, i64* %375, align 8
  store %struct.Memory* %loadMem1_403b0d, %struct.Memory** %MEMORY
  %loadMem2_403b0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_403b0d = load i64, i64* %3
  %call2_403b0d = call %struct.Memory* @sub_403ee0.unparse_node(%struct.State* %0, i64 %loadPC_403b0d, %struct.Memory* %loadMem2_403b0d)
  store %struct.Memory* %call2_403b0d, %struct.Memory** %MEMORY
  br label %block_.L_403b12

block_.L_403b12:                                  ; preds = %block_.L_403b05, %block_403af3
  %loadMem_403b12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %377 = getelementptr inbounds %struct.GPR, %struct.GPR* %376, i32 0, i32 33
  %378 = getelementptr inbounds %struct.Reg, %struct.Reg* %377, i32 0, i32 0
  %PC.i85 = bitcast %union.anon* %378 to i64*
  %379 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %380 = getelementptr inbounds %struct.GPR, %struct.GPR* %379, i32 0, i32 1
  %381 = getelementptr inbounds %struct.Reg, %struct.Reg* %380, i32 0, i32 0
  %RAX.i86 = bitcast %union.anon* %381 to i64*
  %382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %383 = getelementptr inbounds %struct.GPR, %struct.GPR* %382, i32 0, i32 15
  %384 = getelementptr inbounds %struct.Reg, %struct.Reg* %383, i32 0, i32 0
  %RBP.i87 = bitcast %union.anon* %384 to i64*
  %385 = load i64, i64* %RBP.i87
  %386 = sub i64 %385, 16
  %387 = load i64, i64* %PC.i85
  %388 = add i64 %387, 4
  store i64 %388, i64* %PC.i85
  %389 = inttoptr i64 %386 to i64*
  %390 = load i64, i64* %389
  store i64 %390, i64* %RAX.i86, align 8
  store %struct.Memory* %loadMem_403b12, %struct.Memory** %MEMORY
  %loadMem_403b16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %392 = getelementptr inbounds %struct.GPR, %struct.GPR* %391, i32 0, i32 33
  %393 = getelementptr inbounds %struct.Reg, %struct.Reg* %392, i32 0, i32 0
  %PC.i83 = bitcast %union.anon* %393 to i64*
  %394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %395 = getelementptr inbounds %struct.GPR, %struct.GPR* %394, i32 0, i32 1
  %396 = getelementptr inbounds %struct.Reg, %struct.Reg* %395, i32 0, i32 0
  %RAX.i84 = bitcast %union.anon* %396 to i64*
  %397 = load i64, i64* %RAX.i84
  %398 = add i64 %397, 16
  %399 = load i64, i64* %PC.i83
  %400 = add i64 %399, 4
  store i64 %400, i64* %PC.i83
  %401 = inttoptr i64 %398 to i64*
  %402 = load i64, i64* %401
  store i64 %402, i64* %RAX.i84, align 8
  store %struct.Memory* %loadMem_403b16, %struct.Memory** %MEMORY
  %loadMem_403b1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %404 = getelementptr inbounds %struct.GPR, %struct.GPR* %403, i32 0, i32 33
  %405 = getelementptr inbounds %struct.Reg, %struct.Reg* %404, i32 0, i32 0
  %PC.i80 = bitcast %union.anon* %405 to i64*
  %406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %407 = getelementptr inbounds %struct.GPR, %struct.GPR* %406, i32 0, i32 1
  %408 = getelementptr inbounds %struct.Reg, %struct.Reg* %407, i32 0, i32 0
  %RAX.i81 = bitcast %union.anon* %408 to i64*
  %409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %410 = getelementptr inbounds %struct.GPR, %struct.GPR* %409, i32 0, i32 15
  %411 = getelementptr inbounds %struct.Reg, %struct.Reg* %410, i32 0, i32 0
  %RBP.i82 = bitcast %union.anon* %411 to i64*
  %412 = load i64, i64* %RBP.i82
  %413 = sub i64 %412, 16
  %414 = load i64, i64* %RAX.i81
  %415 = load i64, i64* %PC.i80
  %416 = add i64 %415, 4
  store i64 %416, i64* %PC.i80
  %417 = inttoptr i64 %413 to i64*
  store i64 %414, i64* %417
  store %struct.Memory* %loadMem_403b1a, %struct.Memory** %MEMORY
  br label %block_.L_403b1e

block_.L_403b1e:                                  ; preds = %block_.L_403b4f, %block_.L_403b12
  %loadMem_403b1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %419 = getelementptr inbounds %struct.GPR, %struct.GPR* %418, i32 0, i32 33
  %420 = getelementptr inbounds %struct.Reg, %struct.Reg* %419, i32 0, i32 0
  %PC.i78 = bitcast %union.anon* %420 to i64*
  %421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %422 = getelementptr inbounds %struct.GPR, %struct.GPR* %421, i32 0, i32 1
  %423 = getelementptr inbounds %struct.Reg, %struct.Reg* %422, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %423 to i32*
  %424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %425 = getelementptr inbounds %struct.GPR, %struct.GPR* %424, i32 0, i32 1
  %426 = getelementptr inbounds %struct.Reg, %struct.Reg* %425, i32 0, i32 0
  %RAX.i79 = bitcast %union.anon* %426 to i64*
  %427 = load i64, i64* %RAX.i79
  %428 = load i32, i32* %EAX.i
  %429 = zext i32 %428 to i64
  %430 = load i64, i64* %PC.i78
  %431 = add i64 %430, 2
  store i64 %431, i64* %PC.i78
  %432 = xor i64 %429, %427
  %433 = trunc i64 %432 to i32
  %434 = and i64 %432, 4294967295
  store i64 %434, i64* %RAX.i79, align 8
  %435 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %435, align 1
  %436 = and i32 %433, 255
  %437 = call i32 @llvm.ctpop.i32(i32 %436)
  %438 = trunc i32 %437 to i8
  %439 = and i8 %438, 1
  %440 = xor i8 %439, 1
  %441 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %440, i8* %441, align 1
  %442 = icmp eq i32 %433, 0
  %443 = zext i1 %442 to i8
  %444 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %443, i8* %444, align 1
  %445 = lshr i32 %433, 31
  %446 = trunc i32 %445 to i8
  %447 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %446, i8* %447, align 1
  %448 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %448, align 1
  %449 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %449, align 1
  store %struct.Memory* %loadMem_403b1e, %struct.Memory** %MEMORY
  %loadMem_403b20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %451 = getelementptr inbounds %struct.GPR, %struct.GPR* %450, i32 0, i32 33
  %452 = getelementptr inbounds %struct.Reg, %struct.Reg* %451, i32 0, i32 0
  %PC.i75 = bitcast %union.anon* %452 to i64*
  %453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %454 = getelementptr inbounds %struct.GPR, %struct.GPR* %453, i32 0, i32 1
  %455 = getelementptr inbounds %struct.Reg, %struct.Reg* %454, i32 0, i32 0
  %456 = bitcast %union.anon* %455 to %struct.anon.2*
  %AL.i76 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %456, i32 0, i32 0
  %457 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %458 = getelementptr inbounds %struct.GPR, %struct.GPR* %457, i32 0, i32 5
  %459 = getelementptr inbounds %struct.Reg, %struct.Reg* %458, i32 0, i32 0
  %460 = bitcast %union.anon* %459 to %struct.anon.2*
  %CL.i77 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %460, i32 0, i32 0
  %461 = load i8, i8* %AL.i76
  %462 = zext i8 %461 to i64
  %463 = load i64, i64* %PC.i75
  %464 = add i64 %463, 2
  store i64 %464, i64* %PC.i75
  store i8 %461, i8* %CL.i77, align 1
  store %struct.Memory* %loadMem_403b20, %struct.Memory** %MEMORY
  %loadMem_403b22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %466 = getelementptr inbounds %struct.GPR, %struct.GPR* %465, i32 0, i32 33
  %467 = getelementptr inbounds %struct.Reg, %struct.Reg* %466, i32 0, i32 0
  %PC.i73 = bitcast %union.anon* %467 to i64*
  %468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %469 = getelementptr inbounds %struct.GPR, %struct.GPR* %468, i32 0, i32 15
  %470 = getelementptr inbounds %struct.Reg, %struct.Reg* %469, i32 0, i32 0
  %RBP.i74 = bitcast %union.anon* %470 to i64*
  %471 = load i64, i64* %RBP.i74
  %472 = sub i64 %471, 16
  %473 = load i64, i64* %PC.i73
  %474 = add i64 %473, 5
  store i64 %474, i64* %PC.i73
  %475 = inttoptr i64 %472 to i64*
  %476 = load i64, i64* %475
  %477 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %477, align 1
  %478 = trunc i64 %476 to i32
  %479 = and i32 %478, 255
  %480 = call i32 @llvm.ctpop.i32(i32 %479)
  %481 = trunc i32 %480 to i8
  %482 = and i8 %481, 1
  %483 = xor i8 %482, 1
  %484 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %483, i8* %484, align 1
  %485 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %485, align 1
  %486 = icmp eq i64 %476, 0
  %487 = zext i1 %486 to i8
  %488 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %487, i8* %488, align 1
  %489 = lshr i64 %476, 63
  %490 = trunc i64 %489 to i8
  %491 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %490, i8* %491, align 1
  %492 = lshr i64 %476, 63
  %493 = xor i64 %489, %492
  %494 = add i64 %493, %492
  %495 = icmp eq i64 %494, 2
  %496 = zext i1 %495 to i8
  %497 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %496, i8* %497, align 1
  store %struct.Memory* %loadMem_403b22, %struct.Memory** %MEMORY
  %loadMem_403b27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %499 = getelementptr inbounds %struct.GPR, %struct.GPR* %498, i32 0, i32 33
  %500 = getelementptr inbounds %struct.Reg, %struct.Reg* %499, i32 0, i32 0
  %PC.i70 = bitcast %union.anon* %500 to i64*
  %501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %502 = getelementptr inbounds %struct.GPR, %struct.GPR* %501, i32 0, i32 5
  %503 = getelementptr inbounds %struct.Reg, %struct.Reg* %502, i32 0, i32 0
  %504 = bitcast %union.anon* %503 to %struct.anon.2*
  %CL.i71 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %504, i32 0, i32 0
  %505 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %506 = getelementptr inbounds %struct.GPR, %struct.GPR* %505, i32 0, i32 15
  %507 = getelementptr inbounds %struct.Reg, %struct.Reg* %506, i32 0, i32 0
  %RBP.i72 = bitcast %union.anon* %507 to i64*
  %508 = load i64, i64* %RBP.i72
  %509 = sub i64 %508, 21
  %510 = load i8, i8* %CL.i71
  %511 = zext i8 %510 to i64
  %512 = load i64, i64* %PC.i70
  %513 = add i64 %512, 3
  store i64 %513, i64* %PC.i70
  %514 = inttoptr i64 %509 to i8*
  store i8 %510, i8* %514
  store %struct.Memory* %loadMem_403b27, %struct.Memory** %MEMORY
  %loadMem_403b2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %516 = getelementptr inbounds %struct.GPR, %struct.GPR* %515, i32 0, i32 33
  %517 = getelementptr inbounds %struct.Reg, %struct.Reg* %516, i32 0, i32 0
  %PC.i69 = bitcast %union.anon* %517 to i64*
  %518 = load i64, i64* %PC.i69
  %519 = add i64 %518, 21
  %520 = load i64, i64* %PC.i69
  %521 = add i64 %520, 6
  %522 = load i64, i64* %PC.i69
  %523 = add i64 %522, 6
  store i64 %523, i64* %PC.i69
  %524 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %525 = load i8, i8* %524, align 1
  store i8 %525, i8* %BRANCH_TAKEN, align 1
  %526 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %527 = icmp ne i8 %525, 0
  %528 = select i1 %527, i64 %519, i64 %521
  store i64 %528, i64* %526, align 8
  store %struct.Memory* %loadMem_403b2a, %struct.Memory** %MEMORY
  %loadBr_403b2a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_403b2a = icmp eq i8 %loadBr_403b2a, 1
  br i1 %cmpBr_403b2a, label %block_.L_403b3f, label %block_403b30

block_403b30:                                     ; preds = %block_.L_403b1e
  %loadMem_403b30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %530 = getelementptr inbounds %struct.GPR, %struct.GPR* %529, i32 0, i32 33
  %531 = getelementptr inbounds %struct.Reg, %struct.Reg* %530, i32 0, i32 0
  %PC.i66 = bitcast %union.anon* %531 to i64*
  %532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %533 = getelementptr inbounds %struct.GPR, %struct.GPR* %532, i32 0, i32 1
  %534 = getelementptr inbounds %struct.Reg, %struct.Reg* %533, i32 0, i32 0
  %RAX.i67 = bitcast %union.anon* %534 to i64*
  %535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %536 = getelementptr inbounds %struct.GPR, %struct.GPR* %535, i32 0, i32 15
  %537 = getelementptr inbounds %struct.Reg, %struct.Reg* %536, i32 0, i32 0
  %RBP.i68 = bitcast %union.anon* %537 to i64*
  %538 = load i64, i64* %RBP.i68
  %539 = sub i64 %538, 16
  %540 = load i64, i64* %PC.i66
  %541 = add i64 %540, 4
  store i64 %541, i64* %PC.i66
  %542 = inttoptr i64 %539 to i64*
  %543 = load i64, i64* %542
  store i64 %543, i64* %RAX.i67, align 8
  store %struct.Memory* %loadMem_403b30, %struct.Memory** %MEMORY
  %loadMem_403b34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %545 = getelementptr inbounds %struct.GPR, %struct.GPR* %544, i32 0, i32 33
  %546 = getelementptr inbounds %struct.Reg, %struct.Reg* %545, i32 0, i32 0
  %PC.i65 = bitcast %union.anon* %546 to i64*
  %547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %548 = getelementptr inbounds %struct.GPR, %struct.GPR* %547, i32 0, i32 1
  %549 = getelementptr inbounds %struct.Reg, %struct.Reg* %548, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %549 to i64*
  %550 = load i64, i64* %RAX.i
  %551 = add i64 %550, 24
  %552 = load i64, i64* %PC.i65
  %553 = add i64 %552, 5
  store i64 %553, i64* %PC.i65
  %554 = inttoptr i64 %551 to i64*
  %555 = load i64, i64* %554
  %556 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %556, align 1
  %557 = trunc i64 %555 to i32
  %558 = and i32 %557, 255
  %559 = call i32 @llvm.ctpop.i32(i32 %558)
  %560 = trunc i32 %559 to i8
  %561 = and i8 %560, 1
  %562 = xor i8 %561, 1
  %563 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %562, i8* %563, align 1
  %564 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %564, align 1
  %565 = icmp eq i64 %555, 0
  %566 = zext i1 %565 to i8
  %567 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %566, i8* %567, align 1
  %568 = lshr i64 %555, 63
  %569 = trunc i64 %568 to i8
  %570 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %569, i8* %570, align 1
  %571 = lshr i64 %555, 63
  %572 = xor i64 %568, %571
  %573 = add i64 %572, %571
  %574 = icmp eq i64 %573, 2
  %575 = zext i1 %574 to i8
  %576 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %575, i8* %576, align 1
  store %struct.Memory* %loadMem_403b34, %struct.Memory** %MEMORY
  %loadMem_403b39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %578 = getelementptr inbounds %struct.GPR, %struct.GPR* %577, i32 0, i32 33
  %579 = getelementptr inbounds %struct.Reg, %struct.Reg* %578, i32 0, i32 0
  %PC.i63 = bitcast %union.anon* %579 to i64*
  %580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %581 = getelementptr inbounds %struct.GPR, %struct.GPR* %580, i32 0, i32 5
  %582 = getelementptr inbounds %struct.Reg, %struct.Reg* %581, i32 0, i32 0
  %583 = bitcast %union.anon* %582 to %struct.anon.2*
  %CL.i64 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %583, i32 0, i32 0
  %584 = load i64, i64* %PC.i63
  %585 = add i64 %584, 3
  store i64 %585, i64* %PC.i63
  %586 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %587 = load i8, i8* %586, align 1
  store i8 %587, i8* %CL.i64, align 1
  store %struct.Memory* %loadMem_403b39, %struct.Memory** %MEMORY
  %loadMem_403b3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %589 = getelementptr inbounds %struct.GPR, %struct.GPR* %588, i32 0, i32 33
  %590 = getelementptr inbounds %struct.Reg, %struct.Reg* %589, i32 0, i32 0
  %PC.i61 = bitcast %union.anon* %590 to i64*
  %591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %592 = getelementptr inbounds %struct.GPR, %struct.GPR* %591, i32 0, i32 5
  %593 = getelementptr inbounds %struct.Reg, %struct.Reg* %592, i32 0, i32 0
  %594 = bitcast %union.anon* %593 to %struct.anon.2*
  %CL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %594, i32 0, i32 0
  %595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %596 = getelementptr inbounds %struct.GPR, %struct.GPR* %595, i32 0, i32 15
  %597 = getelementptr inbounds %struct.Reg, %struct.Reg* %596, i32 0, i32 0
  %RBP.i62 = bitcast %union.anon* %597 to i64*
  %598 = load i64, i64* %RBP.i62
  %599 = sub i64 %598, 21
  %600 = load i8, i8* %CL.i
  %601 = zext i8 %600 to i64
  %602 = load i64, i64* %PC.i61
  %603 = add i64 %602, 3
  store i64 %603, i64* %PC.i61
  %604 = inttoptr i64 %599 to i8*
  store i8 %600, i8* %604
  store %struct.Memory* %loadMem_403b3c, %struct.Memory** %MEMORY
  br label %block_.L_403b3f

block_.L_403b3f:                                  ; preds = %block_403b30, %block_.L_403b1e
  %loadMem_403b3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %605 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %606 = getelementptr inbounds %struct.GPR, %struct.GPR* %605, i32 0, i32 33
  %607 = getelementptr inbounds %struct.Reg, %struct.Reg* %606, i32 0, i32 0
  %PC.i58 = bitcast %union.anon* %607 to i64*
  %608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %609 = getelementptr inbounds %struct.GPR, %struct.GPR* %608, i32 0, i32 1
  %610 = getelementptr inbounds %struct.Reg, %struct.Reg* %609, i32 0, i32 0
  %611 = bitcast %union.anon* %610 to %struct.anon.2*
  %AL.i59 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %611, i32 0, i32 0
  %612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %613 = getelementptr inbounds %struct.GPR, %struct.GPR* %612, i32 0, i32 15
  %614 = getelementptr inbounds %struct.Reg, %struct.Reg* %613, i32 0, i32 0
  %RBP.i60 = bitcast %union.anon* %614 to i64*
  %615 = load i64, i64* %RBP.i60
  %616 = sub i64 %615, 21
  %617 = load i64, i64* %PC.i58
  %618 = add i64 %617, 3
  store i64 %618, i64* %PC.i58
  %619 = inttoptr i64 %616 to i8*
  %620 = load i8, i8* %619
  store i8 %620, i8* %AL.i59, align 1
  store %struct.Memory* %loadMem_403b3f, %struct.Memory** %MEMORY
  %loadMem_403b42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %622 = getelementptr inbounds %struct.GPR, %struct.GPR* %621, i32 0, i32 33
  %623 = getelementptr inbounds %struct.Reg, %struct.Reg* %622, i32 0, i32 0
  %PC.i57 = bitcast %union.anon* %623 to i64*
  %624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %625 = getelementptr inbounds %struct.GPR, %struct.GPR* %624, i32 0, i32 1
  %626 = getelementptr inbounds %struct.Reg, %struct.Reg* %625, i32 0, i32 0
  %627 = bitcast %union.anon* %626 to %struct.anon.2*
  %AL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %627, i32 0, i32 0
  %628 = load i8, i8* %AL.i
  %629 = zext i8 %628 to i64
  %630 = load i64, i64* %PC.i57
  %631 = add i64 %630, 2
  store i64 %631, i64* %PC.i57
  %632 = and i64 1, %629
  %633 = trunc i64 %632 to i8
  %634 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %634, align 1
  %635 = trunc i64 %632 to i32
  %636 = and i32 %635, 255
  %637 = call i32 @llvm.ctpop.i32(i32 %636)
  %638 = trunc i32 %637 to i8
  %639 = and i8 %638, 1
  %640 = xor i8 %639, 1
  %641 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %640, i8* %641, align 1
  %642 = icmp eq i8 %633, 0
  %643 = zext i1 %642 to i8
  %644 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %643, i8* %644, align 1
  %645 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %645, align 1
  %646 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %646, align 1
  %647 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %647, align 1
  store %struct.Memory* %loadMem_403b42, %struct.Memory** %MEMORY
  %loadMem_403b44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %648 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %649 = getelementptr inbounds %struct.GPR, %struct.GPR* %648, i32 0, i32 33
  %650 = getelementptr inbounds %struct.Reg, %struct.Reg* %649, i32 0, i32 0
  %PC.i56 = bitcast %union.anon* %650 to i64*
  %651 = load i64, i64* %PC.i56
  %652 = add i64 %651, 11
  %653 = load i64, i64* %PC.i56
  %654 = add i64 %653, 6
  %655 = load i64, i64* %PC.i56
  %656 = add i64 %655, 6
  store i64 %656, i64* %PC.i56
  %657 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %658 = load i8, i8* %657, align 1
  %659 = icmp eq i8 %658, 0
  %660 = zext i1 %659 to i8
  store i8 %660, i8* %BRANCH_TAKEN, align 1
  %661 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %662 = select i1 %659, i64 %652, i64 %654
  store i64 %662, i64* %661, align 8
  store %struct.Memory* %loadMem_403b44, %struct.Memory** %MEMORY
  %loadBr_403b44 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_403b44 = icmp eq i8 %loadBr_403b44, 1
  br i1 %cmpBr_403b44, label %block_.L_403b4f, label %block_403b4a

block_403b4a:                                     ; preds = %block_.L_403b3f
  %loadMem_403b4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %664 = getelementptr inbounds %struct.GPR, %struct.GPR* %663, i32 0, i32 33
  %665 = getelementptr inbounds %struct.Reg, %struct.Reg* %664, i32 0, i32 0
  %PC.i55 = bitcast %union.anon* %665 to i64*
  %666 = load i64, i64* %PC.i55
  %667 = add i64 %666, 35
  %668 = load i64, i64* %PC.i55
  %669 = add i64 %668, 5
  store i64 %669, i64* %PC.i55
  %670 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %667, i64* %670, align 8
  store %struct.Memory* %loadMem_403b4a, %struct.Memory** %MEMORY
  br label %block_.L_403b6d

block_.L_403b4f:                                  ; preds = %block_.L_403b3f
  %loadMem_403b4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %672 = getelementptr inbounds %struct.GPR, %struct.GPR* %671, i32 0, i32 33
  %673 = getelementptr inbounds %struct.Reg, %struct.Reg* %672, i32 0, i32 0
  %PC.i52 = bitcast %union.anon* %673 to i64*
  %674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %675 = getelementptr inbounds %struct.GPR, %struct.GPR* %674, i32 0, i32 11
  %676 = getelementptr inbounds %struct.Reg, %struct.Reg* %675, i32 0, i32 0
  %RDI.i53 = bitcast %union.anon* %676 to i64*
  %677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %678 = getelementptr inbounds %struct.GPR, %struct.GPR* %677, i32 0, i32 15
  %679 = getelementptr inbounds %struct.Reg, %struct.Reg* %678, i32 0, i32 0
  %RBP.i54 = bitcast %union.anon* %679 to i64*
  %680 = load i64, i64* %RBP.i54
  %681 = sub i64 %680, 8
  %682 = load i64, i64* %PC.i52
  %683 = add i64 %682, 4
  store i64 %683, i64* %PC.i52
  %684 = inttoptr i64 %681 to i64*
  %685 = load i64, i64* %684
  store i64 %685, i64* %RDI.i53, align 8
  store %struct.Memory* %loadMem_403b4f, %struct.Memory** %MEMORY
  %loadMem_403b53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %687 = getelementptr inbounds %struct.GPR, %struct.GPR* %686, i32 0, i32 33
  %688 = getelementptr inbounds %struct.Reg, %struct.Reg* %687, i32 0, i32 0
  %PC.i49 = bitcast %union.anon* %688 to i64*
  %689 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %690 = getelementptr inbounds %struct.GPR, %struct.GPR* %689, i32 0, i32 9
  %691 = getelementptr inbounds %struct.Reg, %struct.Reg* %690, i32 0, i32 0
  %RSI.i50 = bitcast %union.anon* %691 to i64*
  %692 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %693 = getelementptr inbounds %struct.GPR, %struct.GPR* %692, i32 0, i32 15
  %694 = getelementptr inbounds %struct.Reg, %struct.Reg* %693, i32 0, i32 0
  %RBP.i51 = bitcast %union.anon* %694 to i64*
  %695 = load i64, i64* %RBP.i51
  %696 = sub i64 %695, 16
  %697 = load i64, i64* %PC.i49
  %698 = add i64 %697, 4
  store i64 %698, i64* %PC.i49
  %699 = inttoptr i64 %696 to i64*
  %700 = load i64, i64* %699
  store i64 %700, i64* %RSI.i50, align 8
  store %struct.Memory* %loadMem_403b53, %struct.Memory** %MEMORY
  %loadMem1_403b57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %702 = getelementptr inbounds %struct.GPR, %struct.GPR* %701, i32 0, i32 33
  %703 = getelementptr inbounds %struct.Reg, %struct.Reg* %702, i32 0, i32 0
  %PC.i48 = bitcast %union.anon* %703 to i64*
  %704 = load i64, i64* %PC.i48
  %705 = add i64 %704, 905
  %706 = load i64, i64* %PC.i48
  %707 = add i64 %706, 5
  %708 = load i64, i64* %PC.i48
  %709 = add i64 %708, 5
  store i64 %709, i64* %PC.i48
  %710 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %711 = load i64, i64* %710, align 8
  %712 = add i64 %711, -8
  %713 = inttoptr i64 %712 to i64*
  store i64 %707, i64* %713
  store i64 %712, i64* %710, align 8
  %714 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %705, i64* %714, align 8
  store %struct.Memory* %loadMem1_403b57, %struct.Memory** %MEMORY
  %loadMem2_403b57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_403b57 = load i64, i64* %3
  %call2_403b57 = call %struct.Memory* @sub_403ee0.unparse_node(%struct.State* %0, i64 %loadPC_403b57, %struct.Memory* %loadMem2_403b57)
  store %struct.Memory* %call2_403b57, %struct.Memory** %MEMORY
  %loadMem_403b5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %716 = getelementptr inbounds %struct.GPR, %struct.GPR* %715, i32 0, i32 33
  %717 = getelementptr inbounds %struct.Reg, %struct.Reg* %716, i32 0, i32 0
  %PC.i45 = bitcast %union.anon* %717 to i64*
  %718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %719 = getelementptr inbounds %struct.GPR, %struct.GPR* %718, i32 0, i32 9
  %720 = getelementptr inbounds %struct.Reg, %struct.Reg* %719, i32 0, i32 0
  %RSI.i46 = bitcast %union.anon* %720 to i64*
  %721 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %722 = getelementptr inbounds %struct.GPR, %struct.GPR* %721, i32 0, i32 15
  %723 = getelementptr inbounds %struct.Reg, %struct.Reg* %722, i32 0, i32 0
  %RBP.i47 = bitcast %union.anon* %723 to i64*
  %724 = load i64, i64* %RBP.i47
  %725 = sub i64 %724, 16
  %726 = load i64, i64* %PC.i45
  %727 = add i64 %726, 4
  store i64 %727, i64* %PC.i45
  %728 = inttoptr i64 %725 to i64*
  %729 = load i64, i64* %728
  store i64 %729, i64* %RSI.i46, align 8
  store %struct.Memory* %loadMem_403b5c, %struct.Memory** %MEMORY
  %loadMem_403b60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %731 = getelementptr inbounds %struct.GPR, %struct.GPR* %730, i32 0, i32 33
  %732 = getelementptr inbounds %struct.Reg, %struct.Reg* %731, i32 0, i32 0
  %PC.i43 = bitcast %union.anon* %732 to i64*
  %733 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %734 = getelementptr inbounds %struct.GPR, %struct.GPR* %733, i32 0, i32 9
  %735 = getelementptr inbounds %struct.Reg, %struct.Reg* %734, i32 0, i32 0
  %RSI.i44 = bitcast %union.anon* %735 to i64*
  %736 = load i64, i64* %RSI.i44
  %737 = add i64 %736, 16
  %738 = load i64, i64* %PC.i43
  %739 = add i64 %738, 4
  store i64 %739, i64* %PC.i43
  %740 = inttoptr i64 %737 to i64*
  %741 = load i64, i64* %740
  store i64 %741, i64* %RSI.i44, align 8
  store %struct.Memory* %loadMem_403b60, %struct.Memory** %MEMORY
  %loadMem_403b64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %743 = getelementptr inbounds %struct.GPR, %struct.GPR* %742, i32 0, i32 33
  %744 = getelementptr inbounds %struct.Reg, %struct.Reg* %743, i32 0, i32 0
  %PC.i40 = bitcast %union.anon* %744 to i64*
  %745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %746 = getelementptr inbounds %struct.GPR, %struct.GPR* %745, i32 0, i32 9
  %747 = getelementptr inbounds %struct.Reg, %struct.Reg* %746, i32 0, i32 0
  %RSI.i41 = bitcast %union.anon* %747 to i64*
  %748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %749 = getelementptr inbounds %struct.GPR, %struct.GPR* %748, i32 0, i32 15
  %750 = getelementptr inbounds %struct.Reg, %struct.Reg* %749, i32 0, i32 0
  %RBP.i42 = bitcast %union.anon* %750 to i64*
  %751 = load i64, i64* %RBP.i42
  %752 = sub i64 %751, 16
  %753 = load i64, i64* %RSI.i41
  %754 = load i64, i64* %PC.i40
  %755 = add i64 %754, 4
  store i64 %755, i64* %PC.i40
  %756 = inttoptr i64 %752 to i64*
  store i64 %753, i64* %756
  store %struct.Memory* %loadMem_403b64, %struct.Memory** %MEMORY
  %loadMem_403b68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %758 = getelementptr inbounds %struct.GPR, %struct.GPR* %757, i32 0, i32 33
  %759 = getelementptr inbounds %struct.Reg, %struct.Reg* %758, i32 0, i32 0
  %PC.i39 = bitcast %union.anon* %759 to i64*
  %760 = load i64, i64* %PC.i39
  %761 = add i64 %760, -74
  %762 = load i64, i64* %PC.i39
  %763 = add i64 %762, 5
  store i64 %763, i64* %PC.i39
  %764 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %761, i64* %764, align 8
  store %struct.Memory* %loadMem_403b68, %struct.Memory** %MEMORY
  br label %block_.L_403b1e

block_.L_403b6d:                                  ; preds = %block_403b4a
  %loadMem_403b6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %765 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %766 = getelementptr inbounds %struct.GPR, %struct.GPR* %765, i32 0, i32 33
  %767 = getelementptr inbounds %struct.Reg, %struct.Reg* %766, i32 0, i32 0
  %PC.i38 = bitcast %union.anon* %767 to i64*
  %768 = load i64, i64* %PC.i38
  %769 = add i64 %768, 5
  %770 = load i64, i64* %PC.i38
  %771 = add i64 %770, 5
  store i64 %771, i64* %PC.i38
  %772 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %769, i64* %772, align 8
  store %struct.Memory* %loadMem_403b6d, %struct.Memory** %MEMORY
  br label %block_.L_403b72

block_.L_403b72:                                  ; preds = %block_403b7d, %block_.L_403b6d
  %loadMem_403b72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %774 = getelementptr inbounds %struct.GPR, %struct.GPR* %773, i32 0, i32 33
  %775 = getelementptr inbounds %struct.Reg, %struct.Reg* %774, i32 0, i32 0
  %PC.i36 = bitcast %union.anon* %775 to i64*
  %776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %777 = getelementptr inbounds %struct.GPR, %struct.GPR* %776, i32 0, i32 15
  %778 = getelementptr inbounds %struct.Reg, %struct.Reg* %777, i32 0, i32 0
  %RBP.i37 = bitcast %union.anon* %778 to i64*
  %779 = load i64, i64* %RBP.i37
  %780 = sub i64 %779, 16
  %781 = load i64, i64* %PC.i36
  %782 = add i64 %781, 5
  store i64 %782, i64* %PC.i36
  %783 = inttoptr i64 %780 to i64*
  %784 = load i64, i64* %783
  %785 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %785, align 1
  %786 = trunc i64 %784 to i32
  %787 = and i32 %786, 255
  %788 = call i32 @llvm.ctpop.i32(i32 %787)
  %789 = trunc i32 %788 to i8
  %790 = and i8 %789, 1
  %791 = xor i8 %790, 1
  %792 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %791, i8* %792, align 1
  %793 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %793, align 1
  %794 = icmp eq i64 %784, 0
  %795 = zext i1 %794 to i8
  %796 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %795, i8* %796, align 1
  %797 = lshr i64 %784, 63
  %798 = trunc i64 %797 to i8
  %799 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %798, i8* %799, align 1
  %800 = lshr i64 %784, 63
  %801 = xor i64 %797, %800
  %802 = add i64 %801, %800
  %803 = icmp eq i64 %802, 2
  %804 = zext i1 %803 to i8
  %805 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %804, i8* %805, align 1
  store %struct.Memory* %loadMem_403b72, %struct.Memory** %MEMORY
  %loadMem_403b77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %806 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %807 = getelementptr inbounds %struct.GPR, %struct.GPR* %806, i32 0, i32 33
  %808 = getelementptr inbounds %struct.Reg, %struct.Reg* %807, i32 0, i32 0
  %PC.i35 = bitcast %union.anon* %808 to i64*
  %809 = load i64, i64* %PC.i35
  %810 = add i64 %809, 38
  %811 = load i64, i64* %PC.i35
  %812 = add i64 %811, 6
  %813 = load i64, i64* %PC.i35
  %814 = add i64 %813, 6
  store i64 %814, i64* %PC.i35
  %815 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %816 = load i8, i8* %815, align 1
  store i8 %816, i8* %BRANCH_TAKEN, align 1
  %817 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %818 = icmp ne i8 %816, 0
  %819 = select i1 %818, i64 %810, i64 %812
  store i64 %819, i64* %817, align 8
  store %struct.Memory* %loadMem_403b77, %struct.Memory** %MEMORY
  %loadBr_403b77 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_403b77 = icmp eq i8 %loadBr_403b77, 1
  br i1 %cmpBr_403b77, label %block_.L_403b9d, label %block_403b7d

block_403b7d:                                     ; preds = %block_.L_403b72
  %loadMem_403b7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %821 = getelementptr inbounds %struct.GPR, %struct.GPR* %820, i32 0, i32 33
  %822 = getelementptr inbounds %struct.Reg, %struct.Reg* %821, i32 0, i32 0
  %PC.i34 = bitcast %union.anon* %822 to i64*
  %823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %824 = getelementptr inbounds %struct.GPR, %struct.GPR* %823, i32 0, i32 7
  %825 = getelementptr inbounds %struct.Reg, %struct.Reg* %824, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %825 to i32*
  %826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %827 = getelementptr inbounds %struct.GPR, %struct.GPR* %826, i32 0, i32 7
  %828 = getelementptr inbounds %struct.Reg, %struct.Reg* %827, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %828 to i64*
  %829 = load i64, i64* %RDX.i
  %830 = load i32, i32* %EDX.i
  %831 = zext i32 %830 to i64
  %832 = load i64, i64* %PC.i34
  %833 = add i64 %832, 2
  store i64 %833, i64* %PC.i34
  %834 = xor i64 %831, %829
  %835 = trunc i64 %834 to i32
  %836 = and i64 %834, 4294967295
  store i64 %836, i64* %RDX.i, align 8
  %837 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %837, align 1
  %838 = and i32 %835, 255
  %839 = call i32 @llvm.ctpop.i32(i32 %838)
  %840 = trunc i32 %839 to i8
  %841 = and i8 %840, 1
  %842 = xor i8 %841, 1
  %843 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %842, i8* %843, align 1
  %844 = icmp eq i32 %835, 0
  %845 = zext i1 %844 to i8
  %846 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %845, i8* %846, align 1
  %847 = lshr i32 %835, 31
  %848 = trunc i32 %847 to i8
  %849 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %848, i8* %849, align 1
  %850 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %850, align 1
  %851 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %851, align 1
  store %struct.Memory* %loadMem_403b7d, %struct.Memory** %MEMORY
  %loadMem_403b7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %852 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %853 = getelementptr inbounds %struct.GPR, %struct.GPR* %852, i32 0, i32 33
  %854 = getelementptr inbounds %struct.Reg, %struct.Reg* %853, i32 0, i32 0
  %PC.i31 = bitcast %union.anon* %854 to i64*
  %855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %856 = getelementptr inbounds %struct.GPR, %struct.GPR* %855, i32 0, i32 11
  %857 = getelementptr inbounds %struct.Reg, %struct.Reg* %856, i32 0, i32 0
  %RDI.i32 = bitcast %union.anon* %857 to i64*
  %858 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %859 = getelementptr inbounds %struct.GPR, %struct.GPR* %858, i32 0, i32 15
  %860 = getelementptr inbounds %struct.Reg, %struct.Reg* %859, i32 0, i32 0
  %RBP.i33 = bitcast %union.anon* %860 to i64*
  %861 = load i64, i64* %RBP.i33
  %862 = sub i64 %861, 8
  %863 = load i64, i64* %PC.i31
  %864 = add i64 %863, 4
  store i64 %864, i64* %PC.i31
  %865 = inttoptr i64 %862 to i64*
  %866 = load i64, i64* %865
  store i64 %866, i64* %RDI.i32, align 8
  store %struct.Memory* %loadMem_403b7f, %struct.Memory** %MEMORY
  %loadMem_403b83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %867 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %868 = getelementptr inbounds %struct.GPR, %struct.GPR* %867, i32 0, i32 33
  %869 = getelementptr inbounds %struct.Reg, %struct.Reg* %868, i32 0, i32 0
  %PC.i28 = bitcast %union.anon* %869 to i64*
  %870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %871 = getelementptr inbounds %struct.GPR, %struct.GPR* %870, i32 0, i32 9
  %872 = getelementptr inbounds %struct.Reg, %struct.Reg* %871, i32 0, i32 0
  %RSI.i29 = bitcast %union.anon* %872 to i64*
  %873 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %874 = getelementptr inbounds %struct.GPR, %struct.GPR* %873, i32 0, i32 15
  %875 = getelementptr inbounds %struct.Reg, %struct.Reg* %874, i32 0, i32 0
  %RBP.i30 = bitcast %union.anon* %875 to i64*
  %876 = load i64, i64* %RBP.i30
  %877 = sub i64 %876, 16
  %878 = load i64, i64* %PC.i28
  %879 = add i64 %878, 4
  store i64 %879, i64* %PC.i28
  %880 = inttoptr i64 %877 to i64*
  %881 = load i64, i64* %880
  store i64 %881, i64* %RSI.i29, align 8
  store %struct.Memory* %loadMem_403b83, %struct.Memory** %MEMORY
  %loadMem1_403b87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %882 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %883 = getelementptr inbounds %struct.GPR, %struct.GPR* %882, i32 0, i32 33
  %884 = getelementptr inbounds %struct.Reg, %struct.Reg* %883, i32 0, i32 0
  %PC.i27 = bitcast %union.anon* %884 to i64*
  %885 = load i64, i64* %PC.i27
  %886 = add i64 %885, -215
  %887 = load i64, i64* %PC.i27
  %888 = add i64 %887, 5
  %889 = load i64, i64* %PC.i27
  %890 = add i64 %889, 5
  store i64 %890, i64* %PC.i27
  %891 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %892 = load i64, i64* %891, align 8
  %893 = add i64 %892, -8
  %894 = inttoptr i64 %893 to i64*
  store i64 %888, i64* %894
  store i64 %893, i64* %891, align 8
  %895 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %886, i64* %895, align 8
  store %struct.Memory* %loadMem1_403b87, %struct.Memory** %MEMORY
  %loadMem2_403b87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_403b87 = load i64, i64* %3
  %call2_403b87 = call %struct.Memory* @sub_403ab0.unparse_game(%struct.State* %0, i64 %loadPC_403b87, %struct.Memory* %loadMem2_403b87)
  store %struct.Memory* %call2_403b87, %struct.Memory** %MEMORY
  %loadMem_403b8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %897 = getelementptr inbounds %struct.GPR, %struct.GPR* %896, i32 0, i32 33
  %898 = getelementptr inbounds %struct.Reg, %struct.Reg* %897, i32 0, i32 0
  %PC.i24 = bitcast %union.anon* %898 to i64*
  %899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %900 = getelementptr inbounds %struct.GPR, %struct.GPR* %899, i32 0, i32 9
  %901 = getelementptr inbounds %struct.Reg, %struct.Reg* %900, i32 0, i32 0
  %RSI.i25 = bitcast %union.anon* %901 to i64*
  %902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %903 = getelementptr inbounds %struct.GPR, %struct.GPR* %902, i32 0, i32 15
  %904 = getelementptr inbounds %struct.Reg, %struct.Reg* %903, i32 0, i32 0
  %RBP.i26 = bitcast %union.anon* %904 to i64*
  %905 = load i64, i64* %RBP.i26
  %906 = sub i64 %905, 16
  %907 = load i64, i64* %PC.i24
  %908 = add i64 %907, 4
  store i64 %908, i64* %PC.i24
  %909 = inttoptr i64 %906 to i64*
  %910 = load i64, i64* %909
  store i64 %910, i64* %RSI.i25, align 8
  store %struct.Memory* %loadMem_403b8c, %struct.Memory** %MEMORY
  %loadMem_403b90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %911 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %912 = getelementptr inbounds %struct.GPR, %struct.GPR* %911, i32 0, i32 33
  %913 = getelementptr inbounds %struct.Reg, %struct.Reg* %912, i32 0, i32 0
  %PC.i22 = bitcast %union.anon* %913 to i64*
  %914 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %915 = getelementptr inbounds %struct.GPR, %struct.GPR* %914, i32 0, i32 9
  %916 = getelementptr inbounds %struct.Reg, %struct.Reg* %915, i32 0, i32 0
  %RSI.i23 = bitcast %union.anon* %916 to i64*
  %917 = load i64, i64* %RSI.i23
  %918 = add i64 %917, 24
  %919 = load i64, i64* %PC.i22
  %920 = add i64 %919, 4
  store i64 %920, i64* %PC.i22
  %921 = inttoptr i64 %918 to i64*
  %922 = load i64, i64* %921
  store i64 %922, i64* %RSI.i23, align 8
  store %struct.Memory* %loadMem_403b90, %struct.Memory** %MEMORY
  %loadMem_403b94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %924 = getelementptr inbounds %struct.GPR, %struct.GPR* %923, i32 0, i32 33
  %925 = getelementptr inbounds %struct.Reg, %struct.Reg* %924, i32 0, i32 0
  %PC.i19 = bitcast %union.anon* %925 to i64*
  %926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %927 = getelementptr inbounds %struct.GPR, %struct.GPR* %926, i32 0, i32 9
  %928 = getelementptr inbounds %struct.Reg, %struct.Reg* %927, i32 0, i32 0
  %RSI.i20 = bitcast %union.anon* %928 to i64*
  %929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %930 = getelementptr inbounds %struct.GPR, %struct.GPR* %929, i32 0, i32 15
  %931 = getelementptr inbounds %struct.Reg, %struct.Reg* %930, i32 0, i32 0
  %RBP.i21 = bitcast %union.anon* %931 to i64*
  %932 = load i64, i64* %RBP.i21
  %933 = sub i64 %932, 16
  %934 = load i64, i64* %RSI.i20
  %935 = load i64, i64* %PC.i19
  %936 = add i64 %935, 4
  store i64 %936, i64* %PC.i19
  %937 = inttoptr i64 %933 to i64*
  store i64 %934, i64* %937
  store %struct.Memory* %loadMem_403b94, %struct.Memory** %MEMORY
  %loadMem_403b98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %939 = getelementptr inbounds %struct.GPR, %struct.GPR* %938, i32 0, i32 33
  %940 = getelementptr inbounds %struct.Reg, %struct.Reg* %939, i32 0, i32 0
  %PC.i18 = bitcast %union.anon* %940 to i64*
  %941 = load i64, i64* %PC.i18
  %942 = add i64 %941, -38
  %943 = load i64, i64* %PC.i18
  %944 = add i64 %943, 5
  store i64 %944, i64* %PC.i18
  %945 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %942, i64* %945, align 8
  store %struct.Memory* %loadMem_403b98, %struct.Memory** %MEMORY
  br label %block_.L_403b72

block_.L_403b9d:                                  ; preds = %block_.L_403b72
  %loadMem_403b9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %947 = getelementptr inbounds %struct.GPR, %struct.GPR* %946, i32 0, i32 33
  %948 = getelementptr inbounds %struct.Reg, %struct.Reg* %947, i32 0, i32 0
  %PC.i16 = bitcast %union.anon* %948 to i64*
  %949 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %950 = getelementptr inbounds %struct.GPR, %struct.GPR* %949, i32 0, i32 11
  %951 = getelementptr inbounds %struct.Reg, %struct.Reg* %950, i32 0, i32 0
  %RDI.i17 = bitcast %union.anon* %951 to i64*
  %952 = load i64, i64* %PC.i16
  %953 = add i64 %952, 5
  store i64 %953, i64* %PC.i16
  store i64 41, i64* %RDI.i17, align 8
  store %struct.Memory* %loadMem_403b9d, %struct.Memory** %MEMORY
  %loadMem_403ba2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %955 = getelementptr inbounds %struct.GPR, %struct.GPR* %954, i32 0, i32 33
  %956 = getelementptr inbounds %struct.Reg, %struct.Reg* %955, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %956 to i64*
  %957 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %958 = getelementptr inbounds %struct.GPR, %struct.GPR* %957, i32 0, i32 9
  %959 = getelementptr inbounds %struct.Reg, %struct.Reg* %958, i32 0, i32 0
  %RSI.i14 = bitcast %union.anon* %959 to i64*
  %960 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %961 = getelementptr inbounds %struct.GPR, %struct.GPR* %960, i32 0, i32 15
  %962 = getelementptr inbounds %struct.Reg, %struct.Reg* %961, i32 0, i32 0
  %RBP.i15 = bitcast %union.anon* %962 to i64*
  %963 = load i64, i64* %RBP.i15
  %964 = sub i64 %963, 8
  %965 = load i64, i64* %PC.i13
  %966 = add i64 %965, 4
  store i64 %966, i64* %PC.i13
  %967 = inttoptr i64 %964 to i64*
  %968 = load i64, i64* %967
  store i64 %968, i64* %RSI.i14, align 8
  store %struct.Memory* %loadMem_403ba2, %struct.Memory** %MEMORY
  %loadMem1_403ba6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %969 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %970 = getelementptr inbounds %struct.GPR, %struct.GPR* %969, i32 0, i32 33
  %971 = getelementptr inbounds %struct.Reg, %struct.Reg* %970, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %971 to i64*
  %972 = load i64, i64* %PC.i12
  %973 = add i64 %972, 186
  %974 = load i64, i64* %PC.i12
  %975 = add i64 %974, 5
  %976 = load i64, i64* %PC.i12
  %977 = add i64 %976, 5
  store i64 %977, i64* %PC.i12
  %978 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %979 = load i64, i64* %978, align 8
  %980 = add i64 %979, -8
  %981 = inttoptr i64 %980 to i64*
  store i64 %975, i64* %981
  store i64 %980, i64* %978, align 8
  %982 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %973, i64* %982, align 8
  store %struct.Memory* %loadMem1_403ba6, %struct.Memory** %MEMORY
  %loadMem2_403ba6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_403ba6 = load i64, i64* %3
  %call2_403ba6 = call %struct.Memory* @sub_403c60.sgf_putc(%struct.State* %0, i64 %loadPC_403ba6, %struct.Memory* %loadMem2_403ba6)
  store %struct.Memory* %call2_403ba6, %struct.Memory** %MEMORY
  %loadMem_403bab = load %struct.Memory*, %struct.Memory** %MEMORY
  %983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %984 = getelementptr inbounds %struct.GPR, %struct.GPR* %983, i32 0, i32 33
  %985 = getelementptr inbounds %struct.Reg, %struct.Reg* %984, i32 0, i32 0
  %PC.i10 = bitcast %union.anon* %985 to i64*
  %986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %987 = getelementptr inbounds %struct.GPR, %struct.GPR* %986, i32 0, i32 15
  %988 = getelementptr inbounds %struct.Reg, %struct.Reg* %987, i32 0, i32 0
  %RBP.i11 = bitcast %union.anon* %988 to i64*
  %989 = load i64, i64* %RBP.i11
  %990 = sub i64 %989, 20
  %991 = load i64, i64* %PC.i10
  %992 = add i64 %991, 4
  store i64 %992, i64* %PC.i10
  %993 = inttoptr i64 %990 to i32*
  %994 = load i32, i32* %993
  %995 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %995, align 1
  %996 = and i32 %994, 255
  %997 = call i32 @llvm.ctpop.i32(i32 %996)
  %998 = trunc i32 %997 to i8
  %999 = and i8 %998, 1
  %1000 = xor i8 %999, 1
  %1001 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1000, i8* %1001, align 1
  %1002 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1002, align 1
  %1003 = icmp eq i32 %994, 0
  %1004 = zext i1 %1003 to i8
  %1005 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1004, i8* %1005, align 1
  %1006 = lshr i32 %994, 31
  %1007 = trunc i32 %1006 to i8
  %1008 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1007, i8* %1008, align 1
  %1009 = lshr i32 %994, 31
  %1010 = xor i32 %1006, %1009
  %1011 = add i32 %1010, %1009
  %1012 = icmp eq i32 %1011, 2
  %1013 = zext i1 %1012 to i8
  %1014 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1013, i8* %1014, align 1
  store %struct.Memory* %loadMem_403bab, %struct.Memory** %MEMORY
  %loadMem_403baf = load %struct.Memory*, %struct.Memory** %MEMORY
  %1015 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1016 = getelementptr inbounds %struct.GPR, %struct.GPR* %1015, i32 0, i32 33
  %1017 = getelementptr inbounds %struct.Reg, %struct.Reg* %1016, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %1017 to i64*
  %1018 = load i64, i64* %PC.i9
  %1019 = add i64 %1018, 20
  %1020 = load i64, i64* %PC.i9
  %1021 = add i64 %1020, 6
  %1022 = load i64, i64* %PC.i9
  %1023 = add i64 %1022, 6
  store i64 %1023, i64* %PC.i9
  %1024 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1025 = load i8, i8* %1024, align 1
  store i8 %1025, i8* %BRANCH_TAKEN, align 1
  %1026 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1027 = icmp ne i8 %1025, 0
  %1028 = select i1 %1027, i64 %1019, i64 %1021
  store i64 %1028, i64* %1026, align 8
  store %struct.Memory* %loadMem_403baf, %struct.Memory** %MEMORY
  %loadBr_403baf = load i8, i8* %BRANCH_TAKEN
  %cmpBr_403baf = icmp eq i8 %loadBr_403baf, 1
  br i1 %cmpBr_403baf, label %block_.L_403bc3, label %block_403bb5

block_403bb5:                                     ; preds = %block_.L_403b9d
  %loadMem_403bb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1030 = getelementptr inbounds %struct.GPR, %struct.GPR* %1029, i32 0, i32 33
  %1031 = getelementptr inbounds %struct.Reg, %struct.Reg* %1030, i32 0, i32 0
  %PC.i8 = bitcast %union.anon* %1031 to i64*
  %1032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1033 = getelementptr inbounds %struct.GPR, %struct.GPR* %1032, i32 0, i32 11
  %1034 = getelementptr inbounds %struct.Reg, %struct.Reg* %1033, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %1034 to i64*
  %1035 = load i64, i64* %PC.i8
  %1036 = add i64 %1035, 5
  store i64 %1036, i64* %PC.i8
  store i64 10, i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_403bb5, %struct.Memory** %MEMORY
  %loadMem_403bba = load %struct.Memory*, %struct.Memory** %MEMORY
  %1037 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1038 = getelementptr inbounds %struct.GPR, %struct.GPR* %1037, i32 0, i32 33
  %1039 = getelementptr inbounds %struct.Reg, %struct.Reg* %1038, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %1039 to i64*
  %1040 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1041 = getelementptr inbounds %struct.GPR, %struct.GPR* %1040, i32 0, i32 9
  %1042 = getelementptr inbounds %struct.Reg, %struct.Reg* %1041, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %1042 to i64*
  %1043 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1044 = getelementptr inbounds %struct.GPR, %struct.GPR* %1043, i32 0, i32 15
  %1045 = getelementptr inbounds %struct.Reg, %struct.Reg* %1044, i32 0, i32 0
  %RBP.i7 = bitcast %union.anon* %1045 to i64*
  %1046 = load i64, i64* %RBP.i7
  %1047 = sub i64 %1046, 8
  %1048 = load i64, i64* %PC.i6
  %1049 = add i64 %1048, 4
  store i64 %1049, i64* %PC.i6
  %1050 = inttoptr i64 %1047 to i64*
  %1051 = load i64, i64* %1050
  store i64 %1051, i64* %RSI.i, align 8
  store %struct.Memory* %loadMem_403bba, %struct.Memory** %MEMORY
  %loadMem1_403bbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %1052 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1053 = getelementptr inbounds %struct.GPR, %struct.GPR* %1052, i32 0, i32 33
  %1054 = getelementptr inbounds %struct.Reg, %struct.Reg* %1053, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %1054 to i64*
  %1055 = load i64, i64* %PC.i5
  %1056 = add i64 %1055, 162
  %1057 = load i64, i64* %PC.i5
  %1058 = add i64 %1057, 5
  %1059 = load i64, i64* %PC.i5
  %1060 = add i64 %1059, 5
  store i64 %1060, i64* %PC.i5
  %1061 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1062 = load i64, i64* %1061, align 8
  %1063 = add i64 %1062, -8
  %1064 = inttoptr i64 %1063 to i64*
  store i64 %1058, i64* %1064
  store i64 %1063, i64* %1061, align 8
  %1065 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1056, i64* %1065, align 8
  store %struct.Memory* %loadMem1_403bbe, %struct.Memory** %MEMORY
  %loadMem2_403bbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_403bbe = load i64, i64* %3
  %call2_403bbe = call %struct.Memory* @sub_403c60.sgf_putc(%struct.State* %0, i64 %loadPC_403bbe, %struct.Memory* %loadMem2_403bbe)
  store %struct.Memory* %call2_403bbe, %struct.Memory** %MEMORY
  br label %block_.L_403bc3

block_.L_403bc3:                                  ; preds = %block_403bb5, %block_.L_403b9d
  %loadMem_403bc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1066 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1067 = getelementptr inbounds %struct.GPR, %struct.GPR* %1066, i32 0, i32 33
  %1068 = getelementptr inbounds %struct.Reg, %struct.Reg* %1067, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %1068 to i64*
  %1069 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1070 = getelementptr inbounds %struct.GPR, %struct.GPR* %1069, i32 0, i32 13
  %1071 = getelementptr inbounds %struct.Reg, %struct.Reg* %1070, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %1071 to i64*
  %1072 = load i64, i64* %RSP.i
  %1073 = load i64, i64* %PC.i4
  %1074 = add i64 %1073, 4
  store i64 %1074, i64* %PC.i4
  %1075 = add i64 32, %1072
  store i64 %1075, i64* %RSP.i, align 8
  %1076 = icmp ult i64 %1075, %1072
  %1077 = icmp ult i64 %1075, 32
  %1078 = or i1 %1076, %1077
  %1079 = zext i1 %1078 to i8
  %1080 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1079, i8* %1080, align 1
  %1081 = trunc i64 %1075 to i32
  %1082 = and i32 %1081, 255
  %1083 = call i32 @llvm.ctpop.i32(i32 %1082)
  %1084 = trunc i32 %1083 to i8
  %1085 = and i8 %1084, 1
  %1086 = xor i8 %1085, 1
  %1087 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1086, i8* %1087, align 1
  %1088 = xor i64 32, %1072
  %1089 = xor i64 %1088, %1075
  %1090 = lshr i64 %1089, 4
  %1091 = trunc i64 %1090 to i8
  %1092 = and i8 %1091, 1
  %1093 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1092, i8* %1093, align 1
  %1094 = icmp eq i64 %1075, 0
  %1095 = zext i1 %1094 to i8
  %1096 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1095, i8* %1096, align 1
  %1097 = lshr i64 %1075, 63
  %1098 = trunc i64 %1097 to i8
  %1099 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1098, i8* %1099, align 1
  %1100 = lshr i64 %1072, 63
  %1101 = xor i64 %1097, %1100
  %1102 = add i64 %1101, %1097
  %1103 = icmp eq i64 %1102, 2
  %1104 = zext i1 %1103 to i8
  %1105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1104, i8* %1105, align 1
  store %struct.Memory* %loadMem_403bc3, %struct.Memory** %MEMORY
  %loadMem_403bc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1107 = getelementptr inbounds %struct.GPR, %struct.GPR* %1106, i32 0, i32 33
  %1108 = getelementptr inbounds %struct.Reg, %struct.Reg* %1107, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %1108 to i64*
  %1109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1110 = getelementptr inbounds %struct.GPR, %struct.GPR* %1109, i32 0, i32 15
  %1111 = getelementptr inbounds %struct.Reg, %struct.Reg* %1110, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %1111 to i64*
  %1112 = load i64, i64* %PC.i2
  %1113 = add i64 %1112, 1
  store i64 %1113, i64* %PC.i2
  %1114 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1115 = load i64, i64* %1114, align 8
  %1116 = add i64 %1115, 8
  %1117 = inttoptr i64 %1115 to i64*
  %1118 = load i64, i64* %1117
  store i64 %1118, i64* %RBP.i3, align 8
  store i64 %1116, i64* %1114, align 8
  store %struct.Memory* %loadMem_403bc7, %struct.Memory** %MEMORY
  %loadMem_403bc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1120 = getelementptr inbounds %struct.GPR, %struct.GPR* %1119, i32 0, i32 33
  %1121 = getelementptr inbounds %struct.Reg, %struct.Reg* %1120, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %1121 to i64*
  %1122 = load i64, i64* %PC.i1
  %1123 = add i64 %1122, 1
  store i64 %1123, i64* %PC.i1
  %1124 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1125 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1126 = load i64, i64* %1125, align 8
  %1127 = inttoptr i64 %1126 to i64*
  %1128 = load i64, i64* %1127
  store i64 %1128, i64* %1124, align 8
  %1129 = add i64 %1126, 8
  store i64 %1129, i64* %1125, align 8
  store %struct.Memory* %loadMem_403bc8, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_403bc8
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

define %struct.Memory* @routine_jne_.L_403adb(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0xa___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  store i64 10, i64* %RDI, align 8
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

define %struct.Memory* @routine_callq_.sgf_putc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x28___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  store i64 40, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_403b05(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_callq_.unparse_root(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_403b12(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_callq_.unparse_node(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movb__cl__MINUS0x15__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 21
  %15 = load i8, i8* %CL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 3
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %14 to i8*
  store i8 %15, i8* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_403b3f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpq__0x0__0x18__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_sete__cl(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i8 %13, i8* %CL, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb_MINUS0x15__rbp____al(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 21
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

define %struct.Memory* @routine_jne_.L_403b4f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_403b6d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq_0x10__rsi____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 16
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_403b1e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_403b72(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_je_.L_403b9d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_xorl__edx___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_callq_.unparse_game(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_0x18__rsi____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 24
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x29___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  store i64 41, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_403bc3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
