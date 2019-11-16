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
%seg_400514__fini_type = type <{ [9 x i8] }>
%seg_400520__rodata_type = type <{ [4 x i8] }>
%seg_400524__eh_frame_hdr_type = type <{ [52 x i8] }>
%seg_400558__eh_frame_type = type <{ [208 x i8] }>
%G_0x6cb8f8_type = type <{ [8 x i8] }>
%G_0x6cb900_type = type <{ [8 x i8] }>
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
@seg_400514__fini = internal constant %seg_400514__fini_type <{ [9 x i8] c"H\83\EC\08H\83\C4\08\C3" }>
@seg_400520__rodata = internal constant %seg_400520__rodata_type <{ [4 x i8] c"\01\00\02\00" }>
@seg_400524__eh_frame_hdr = internal constant %seg_400524__eh_frame_hdr_type <{ [52 x i8] c"\01\1B\03;0\00\00\00\05\00\00\00|\FE\FF\FFL\00\00\00\AC\FE\FF\FFx\00\00\00d\FF\FF\FF\8C\00\00\00|\FF\FF\FF\A4\00\00\00\EC\FF\FF\FF\EC\00\00\00" }>
@seg_400558__eh_frame = internal constant %seg_400558__eh_frame_type <{ [208 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\07\10\10\00\00\00\1C\00\00\00(\FE\FF\FF+\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\10\00\00\00\1C\00\00\00,\FE\FF\FF\02\00\00\00\00\00\00\00\14\00\00\000\00\00\00\D0\FE\FF\FF\09\00\00\00\00\00\00\00\00\00\00\00D\00\00\00H\00\00\00\D0\FE\FF\FFe\00\00\00\00B\0E\10\8F\02B\0E\18\8E\03E\0E \8D\04B\0E(\8C\05H\0E0\86\06H\0E8\83\07M\0E@r\0E8A\0E0A\0E(B\0E B\0E\18B\0E\10B\0E\08\00\10\00\00\00\90\00\00\00\F8\FE\FF\FF\02\00\00\00\00\00\00\00\00\00\00\00" }>
@G_0x6cb8f8 = global %G_0x6cb8f8_type zeroinitializer
@G_0x6cb900 = global %G_0x6cb900_type zeroinitializer

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
define %struct.Memory* @CalculateOffsetParam(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_47b860 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_47b860, %struct.Memory** %MEMORY
  %loadMem_47b861 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i899 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i900 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i
  %27 = load i64, i64* %PC.i899
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i899
  store i64 %26, i64* %RBP.i900, align 8
  store %struct.Memory* %loadMem_47b861, %struct.Memory** %MEMORY
  %loadMem_47b864 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i897 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RAX.i898 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %PC.i897
  %36 = add i64 %35, 8
  store i64 %36, i64* %PC.i897
  %37 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %37, i64* %RAX.i898, align 8
  store %struct.Memory* %loadMem_47b864, %struct.Memory** %MEMORY
  %loadMem_47b86c = load %struct.Memory*, %struct.Memory** %MEMORY
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %39 = getelementptr inbounds %struct.GPR, %struct.GPR* %38, i32 0, i32 33
  %40 = getelementptr inbounds %struct.Reg, %struct.Reg* %39, i32 0, i32 0
  %PC.i895 = bitcast %union.anon* %40 to i64*
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %42 = getelementptr inbounds %struct.GPR, %struct.GPR* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.Reg, %struct.Reg* %42, i32 0, i32 0
  %RAX.i896 = bitcast %union.anon* %43 to i64*
  %44 = load i64, i64* %RAX.i896
  %45 = add i64 %44, 3584
  %46 = load i64, i64* %PC.i895
  %47 = add i64 %46, 7
  store i64 %47, i64* %PC.i895
  %48 = inttoptr i64 %45 to i32*
  %49 = load i32, i32* %48
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %50, align 1
  %51 = and i32 %49, 255
  %52 = call i32 @llvm.ctpop.i32(i32 %51)
  %53 = trunc i32 %52 to i8
  %54 = and i8 %53, 1
  %55 = xor i8 %54, 1
  %56 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %55, i8* %56, align 1
  %57 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %57, align 1
  %58 = icmp eq i32 %49, 0
  %59 = zext i1 %58 to i8
  %60 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %59, i8* %60, align 1
  %61 = lshr i32 %49, 31
  %62 = trunc i32 %61 to i8
  %63 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %62, i8* %63, align 1
  %64 = lshr i32 %49, 31
  %65 = xor i32 %61, %64
  %66 = add i32 %65, %64
  %67 = icmp eq i32 %66, 2
  %68 = zext i1 %67 to i8
  %69 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %68, i8* %69, align 1
  store %struct.Memory* %loadMem_47b86c, %struct.Memory** %MEMORY
  %loadMem_47b873 = load %struct.Memory*, %struct.Memory** %MEMORY
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 33
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %PC.i894 = bitcast %union.anon* %72 to i64*
  %73 = load i64, i64* %PC.i894
  %74 = add i64 %73, 701
  %75 = load i64, i64* %PC.i894
  %76 = add i64 %75, 6
  %77 = load i64, i64* %PC.i894
  %78 = add i64 %77, 6
  store i64 %78, i64* %PC.i894
  %79 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %80 = load i8, i8* %79, align 1
  store i8 %80, i8* %BRANCH_TAKEN, align 1
  %81 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %82 = icmp ne i8 %80, 0
  %83 = select i1 %82, i64 %74, i64 %76
  store i64 %83, i64* %81, align 8
  store %struct.Memory* %loadMem_47b873, %struct.Memory** %MEMORY
  %loadBr_47b873 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47b873 = icmp eq i8 %loadBr_47b873, 1
  br i1 %cmpBr_47b873, label %block_.L_47bb30, label %block_47b879

block_47b879:                                     ; preds = %entry
  %loadMem_47b879 = load %struct.Memory*, %struct.Memory** %MEMORY
  %84 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %85 = getelementptr inbounds %struct.GPR, %struct.GPR* %84, i32 0, i32 33
  %86 = getelementptr inbounds %struct.Reg, %struct.Reg* %85, i32 0, i32 0
  %PC.i892 = bitcast %union.anon* %86 to i64*
  %87 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %88 = getelementptr inbounds %struct.GPR, %struct.GPR* %87, i32 0, i32 15
  %89 = getelementptr inbounds %struct.Reg, %struct.Reg* %88, i32 0, i32 0
  %RBP.i893 = bitcast %union.anon* %89 to i64*
  %90 = load i64, i64* %RBP.i893
  %91 = sub i64 %90, 12
  %92 = load i64, i64* %PC.i892
  %93 = add i64 %92, 7
  store i64 %93, i64* %PC.i892
  %94 = inttoptr i64 %91 to i32*
  store i32 0, i32* %94
  store %struct.Memory* %loadMem_47b879, %struct.Memory** %MEMORY
  br label %block_.L_47b880

block_.L_47b880:                                  ; preds = %block_.L_47bb1d, %block_47b879
  %loadMem_47b880 = load %struct.Memory*, %struct.Memory** %MEMORY
  %95 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %96 = getelementptr inbounds %struct.GPR, %struct.GPR* %95, i32 0, i32 33
  %97 = getelementptr inbounds %struct.Reg, %struct.Reg* %96, i32 0, i32 0
  %PC.i890 = bitcast %union.anon* %97 to i64*
  %98 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %99 = getelementptr inbounds %struct.GPR, %struct.GPR* %98, i32 0, i32 15
  %100 = getelementptr inbounds %struct.Reg, %struct.Reg* %99, i32 0, i32 0
  %RBP.i891 = bitcast %union.anon* %100 to i64*
  %101 = load i64, i64* %RBP.i891
  %102 = sub i64 %101, 12
  %103 = load i64, i64* %PC.i890
  %104 = add i64 %103, 4
  store i64 %104, i64* %PC.i890
  %105 = inttoptr i64 %102 to i32*
  %106 = load i32, i32* %105
  %107 = sub i32 %106, 13
  %108 = icmp ult i32 %106, 13
  %109 = zext i1 %108 to i8
  %110 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %109, i8* %110, align 1
  %111 = and i32 %107, 255
  %112 = call i32 @llvm.ctpop.i32(i32 %111)
  %113 = trunc i32 %112 to i8
  %114 = and i8 %113, 1
  %115 = xor i8 %114, 1
  %116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %115, i8* %116, align 1
  %117 = xor i32 %106, 13
  %118 = xor i32 %117, %107
  %119 = lshr i32 %118, 4
  %120 = trunc i32 %119 to i8
  %121 = and i8 %120, 1
  %122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %121, i8* %122, align 1
  %123 = icmp eq i32 %107, 0
  %124 = zext i1 %123 to i8
  %125 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %124, i8* %125, align 1
  %126 = lshr i32 %107, 31
  %127 = trunc i32 %126 to i8
  %128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %127, i8* %128, align 1
  %129 = lshr i32 %106, 31
  %130 = xor i32 %126, %129
  %131 = add i32 %130, %129
  %132 = icmp eq i32 %131, 2
  %133 = zext i1 %132 to i8
  %134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %133, i8* %134, align 1
  store %struct.Memory* %loadMem_47b880, %struct.Memory** %MEMORY
  %loadMem_47b884 = load %struct.Memory*, %struct.Memory** %MEMORY
  %135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %136 = getelementptr inbounds %struct.GPR, %struct.GPR* %135, i32 0, i32 33
  %137 = getelementptr inbounds %struct.Reg, %struct.Reg* %136, i32 0, i32 0
  %PC.i889 = bitcast %union.anon* %137 to i64*
  %138 = load i64, i64* %PC.i889
  %139 = add i64 %138, 679
  %140 = load i64, i64* %PC.i889
  %141 = add i64 %140, 6
  %142 = load i64, i64* %PC.i889
  %143 = add i64 %142, 6
  store i64 %143, i64* %PC.i889
  %144 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %145 = load i8, i8* %144, align 1
  %146 = icmp ne i8 %145, 0
  %147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %148 = load i8, i8* %147, align 1
  %149 = icmp ne i8 %148, 0
  %150 = xor i1 %146, %149
  %151 = xor i1 %150, true
  %152 = zext i1 %151 to i8
  store i8 %152, i8* %BRANCH_TAKEN, align 1
  %153 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %154 = select i1 %150, i64 %141, i64 %139
  store i64 %154, i64* %153, align 8
  store %struct.Memory* %loadMem_47b884, %struct.Memory** %MEMORY
  %loadBr_47b884 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47b884 = icmp eq i8 %loadBr_47b884, 1
  br i1 %cmpBr_47b884, label %block_.L_47bb2b, label %block_47b88a

block_47b88a:                                     ; preds = %block_.L_47b880
  %loadMem_47b88a = load %struct.Memory*, %struct.Memory** %MEMORY
  %155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %156 = getelementptr inbounds %struct.GPR, %struct.GPR* %155, i32 0, i32 33
  %157 = getelementptr inbounds %struct.Reg, %struct.Reg* %156, i32 0, i32 0
  %PC.i886 = bitcast %union.anon* %157 to i64*
  %158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %159 = getelementptr inbounds %struct.GPR, %struct.GPR* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.Reg, %struct.Reg* %159, i32 0, i32 0
  %RAX.i887 = bitcast %union.anon* %160 to i64*
  %161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %162 = getelementptr inbounds %struct.GPR, %struct.GPR* %161, i32 0, i32 15
  %163 = getelementptr inbounds %struct.Reg, %struct.Reg* %162, i32 0, i32 0
  %RBP.i888 = bitcast %union.anon* %163 to i64*
  %164 = load i64, i64* %RBP.i888
  %165 = sub i64 %164, 12
  %166 = load i64, i64* %PC.i886
  %167 = add i64 %166, 3
  store i64 %167, i64* %PC.i886
  %168 = inttoptr i64 %165 to i32*
  %169 = load i32, i32* %168
  %170 = zext i32 %169 to i64
  store i64 %170, i64* %RAX.i887, align 8
  store %struct.Memory* %loadMem_47b88a, %struct.Memory** %MEMORY
  %loadMem_47b88d = load %struct.Memory*, %struct.Memory** %MEMORY
  %171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %172 = getelementptr inbounds %struct.GPR, %struct.GPR* %171, i32 0, i32 33
  %173 = getelementptr inbounds %struct.Reg, %struct.Reg* %172, i32 0, i32 0
  %PC.i884 = bitcast %union.anon* %173 to i64*
  %174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %175 = getelementptr inbounds %struct.GPR, %struct.GPR* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.Reg, %struct.Reg* %175, i32 0, i32 0
  %RAX.i885 = bitcast %union.anon* %176 to i64*
  %177 = load i64, i64* %RAX.i885
  %178 = load i64, i64* %PC.i884
  %179 = add i64 %178, 3
  store i64 %179, i64* %PC.i884
  %180 = trunc i64 %177 to i32
  %181 = add i32 15, %180
  %182 = zext i32 %181 to i64
  store i64 %182, i64* %RAX.i885, align 8
  %183 = icmp ult i32 %181, %180
  %184 = icmp ult i32 %181, 15
  %185 = or i1 %183, %184
  %186 = zext i1 %185 to i8
  %187 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %186, i8* %187, align 1
  %188 = and i32 %181, 255
  %189 = call i32 @llvm.ctpop.i32(i32 %188)
  %190 = trunc i32 %189 to i8
  %191 = and i8 %190, 1
  %192 = xor i8 %191, 1
  %193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %192, i8* %193, align 1
  %194 = xor i64 15, %177
  %195 = trunc i64 %194 to i32
  %196 = xor i32 %195, %181
  %197 = lshr i32 %196, 4
  %198 = trunc i32 %197 to i8
  %199 = and i8 %198, 1
  %200 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %199, i8* %200, align 1
  %201 = icmp eq i32 %181, 0
  %202 = zext i1 %201 to i8
  %203 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %202, i8* %203, align 1
  %204 = lshr i32 %181, 31
  %205 = trunc i32 %204 to i8
  %206 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %205, i8* %206, align 1
  %207 = lshr i32 %180, 31
  %208 = xor i32 %204, %207
  %209 = add i32 %208, %204
  %210 = icmp eq i32 %209, 2
  %211 = zext i1 %210 to i8
  %212 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %211, i8* %212, align 1
  store %struct.Memory* %loadMem_47b88d, %struct.Memory** %MEMORY
  %loadMem_47b890 = load %struct.Memory*, %struct.Memory** %MEMORY
  %213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %214 = getelementptr inbounds %struct.GPR, %struct.GPR* %213, i32 0, i32 33
  %215 = getelementptr inbounds %struct.Reg, %struct.Reg* %214, i32 0, i32 0
  %PC.i882 = bitcast %union.anon* %215 to i64*
  %216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %217 = getelementptr inbounds %struct.GPR, %struct.GPR* %216, i32 0, i32 1
  %218 = getelementptr inbounds %struct.Reg, %struct.Reg* %217, i32 0, i32 0
  %RAX.i883 = bitcast %union.anon* %218 to i64*
  %219 = load i64, i64* %RAX.i883
  %220 = load i64, i64* %PC.i882
  %221 = add i64 %220, 3
  store i64 %221, i64* %PC.i882
  %222 = trunc i64 %219 to i32
  %223 = sub i32 %222, 10
  %224 = zext i32 %223 to i64
  store i64 %224, i64* %RAX.i883, align 8
  %225 = icmp ult i32 %222, 10
  %226 = zext i1 %225 to i8
  %227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %226, i8* %227, align 1
  %228 = and i32 %223, 255
  %229 = call i32 @llvm.ctpop.i32(i32 %228)
  %230 = trunc i32 %229 to i8
  %231 = and i8 %230, 1
  %232 = xor i8 %231, 1
  %233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %232, i8* %233, align 1
  %234 = xor i64 10, %219
  %235 = trunc i64 %234 to i32
  %236 = xor i32 %235, %223
  %237 = lshr i32 %236, 4
  %238 = trunc i32 %237 to i8
  %239 = and i8 %238, 1
  %240 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %239, i8* %240, align 1
  %241 = icmp eq i32 %223, 0
  %242 = zext i1 %241 to i8
  %243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %242, i8* %243, align 1
  %244 = lshr i32 %223, 31
  %245 = trunc i32 %244 to i8
  %246 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %245, i8* %246, align 1
  %247 = lshr i32 %222, 31
  %248 = xor i32 %244, %247
  %249 = add i32 %248, %247
  %250 = icmp eq i32 %249, 2
  %251 = zext i1 %250 to i8
  %252 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %251, i8* %252, align 1
  store %struct.Memory* %loadMem_47b890, %struct.Memory** %MEMORY
  %loadMem_47b893 = load %struct.Memory*, %struct.Memory** %MEMORY
  %253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %254 = getelementptr inbounds %struct.GPR, %struct.GPR* %253, i32 0, i32 33
  %255 = getelementptr inbounds %struct.Reg, %struct.Reg* %254, i32 0, i32 0
  %PC.i879 = bitcast %union.anon* %255 to i64*
  %256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %257 = getelementptr inbounds %struct.GPR, %struct.GPR* %256, i32 0, i32 1
  %258 = getelementptr inbounds %struct.Reg, %struct.Reg* %257, i32 0, i32 0
  %EAX.i880 = bitcast %union.anon* %258 to i32*
  %259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %260 = getelementptr inbounds %struct.GPR, %struct.GPR* %259, i32 0, i32 15
  %261 = getelementptr inbounds %struct.Reg, %struct.Reg* %260, i32 0, i32 0
  %RBP.i881 = bitcast %union.anon* %261 to i64*
  %262 = load i64, i64* %RBP.i881
  %263 = sub i64 %262, 20
  %264 = load i32, i32* %EAX.i880
  %265 = zext i32 %264 to i64
  %266 = load i64, i64* %PC.i879
  %267 = add i64 %266, 3
  store i64 %267, i64* %PC.i879
  %268 = inttoptr i64 %263 to i32*
  store i32 %264, i32* %268
  store %struct.Memory* %loadMem_47b893, %struct.Memory** %MEMORY
  %loadMem_47b896 = load %struct.Memory*, %struct.Memory** %MEMORY
  %269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %270 = getelementptr inbounds %struct.GPR, %struct.GPR* %269, i32 0, i32 33
  %271 = getelementptr inbounds %struct.Reg, %struct.Reg* %270, i32 0, i32 0
  %PC.i877 = bitcast %union.anon* %271 to i64*
  %272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %273 = getelementptr inbounds %struct.GPR, %struct.GPR* %272, i32 0, i32 15
  %274 = getelementptr inbounds %struct.Reg, %struct.Reg* %273, i32 0, i32 0
  %RBP.i878 = bitcast %union.anon* %274 to i64*
  %275 = load i64, i64* %RBP.i878
  %276 = sub i64 %275, 8
  %277 = load i64, i64* %PC.i877
  %278 = add i64 %277, 7
  store i64 %278, i64* %PC.i877
  %279 = inttoptr i64 %276 to i32*
  store i32 0, i32* %279
  store %struct.Memory* %loadMem_47b896, %struct.Memory** %MEMORY
  br label %block_.L_47b89d

block_.L_47b89d:                                  ; preds = %block_.L_47bb0a, %block_47b88a
  %loadMem_47b89d = load %struct.Memory*, %struct.Memory** %MEMORY
  %280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %281 = getelementptr inbounds %struct.GPR, %struct.GPR* %280, i32 0, i32 33
  %282 = getelementptr inbounds %struct.Reg, %struct.Reg* %281, i32 0, i32 0
  %PC.i875 = bitcast %union.anon* %282 to i64*
  %283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %284 = getelementptr inbounds %struct.GPR, %struct.GPR* %283, i32 0, i32 15
  %285 = getelementptr inbounds %struct.Reg, %struct.Reg* %284, i32 0, i32 0
  %RBP.i876 = bitcast %union.anon* %285 to i64*
  %286 = load i64, i64* %RBP.i876
  %287 = sub i64 %286, 8
  %288 = load i64, i64* %PC.i875
  %289 = add i64 %288, 4
  store i64 %289, i64* %PC.i875
  %290 = inttoptr i64 %287 to i32*
  %291 = load i32, i32* %290
  %292 = sub i32 %291, 4
  %293 = icmp ult i32 %291, 4
  %294 = zext i1 %293 to i8
  %295 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %294, i8* %295, align 1
  %296 = and i32 %292, 255
  %297 = call i32 @llvm.ctpop.i32(i32 %296)
  %298 = trunc i32 %297 to i8
  %299 = and i8 %298, 1
  %300 = xor i8 %299, 1
  %301 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %300, i8* %301, align 1
  %302 = xor i32 %291, 4
  %303 = xor i32 %302, %292
  %304 = lshr i32 %303, 4
  %305 = trunc i32 %304 to i8
  %306 = and i8 %305, 1
  %307 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %306, i8* %307, align 1
  %308 = icmp eq i32 %292, 0
  %309 = zext i1 %308 to i8
  %310 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %309, i8* %310, align 1
  %311 = lshr i32 %292, 31
  %312 = trunc i32 %311 to i8
  %313 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %312, i8* %313, align 1
  %314 = lshr i32 %291, 31
  %315 = xor i32 %311, %314
  %316 = add i32 %315, %314
  %317 = icmp eq i32 %316, 2
  %318 = zext i1 %317 to i8
  %319 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %318, i8* %319, align 1
  store %struct.Memory* %loadMem_47b89d, %struct.Memory** %MEMORY
  %loadMem_47b8a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %321 = getelementptr inbounds %struct.GPR, %struct.GPR* %320, i32 0, i32 33
  %322 = getelementptr inbounds %struct.Reg, %struct.Reg* %321, i32 0, i32 0
  %PC.i874 = bitcast %union.anon* %322 to i64*
  %323 = load i64, i64* %PC.i874
  %324 = add i64 %323, 631
  %325 = load i64, i64* %PC.i874
  %326 = add i64 %325, 6
  %327 = load i64, i64* %PC.i874
  %328 = add i64 %327, 6
  store i64 %328, i64* %PC.i874
  %329 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %330 = load i8, i8* %329, align 1
  %331 = icmp ne i8 %330, 0
  %332 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %333 = load i8, i8* %332, align 1
  %334 = icmp ne i8 %333, 0
  %335 = xor i1 %331, %334
  %336 = xor i1 %335, true
  %337 = zext i1 %336 to i8
  store i8 %337, i8* %BRANCH_TAKEN, align 1
  %338 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %339 = select i1 %335, i64 %326, i64 %324
  store i64 %339, i64* %338, align 8
  store %struct.Memory* %loadMem_47b8a1, %struct.Memory** %MEMORY
  %loadBr_47b8a1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47b8a1 = icmp eq i8 %loadBr_47b8a1, 1
  br i1 %cmpBr_47b8a1, label %block_.L_47bb18, label %block_47b8a7

block_47b8a7:                                     ; preds = %block_.L_47b89d
  %loadMem_47b8a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %341 = getelementptr inbounds %struct.GPR, %struct.GPR* %340, i32 0, i32 33
  %342 = getelementptr inbounds %struct.Reg, %struct.Reg* %341, i32 0, i32 0
  %PC.i872 = bitcast %union.anon* %342 to i64*
  %343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %344 = getelementptr inbounds %struct.GPR, %struct.GPR* %343, i32 0, i32 15
  %345 = getelementptr inbounds %struct.Reg, %struct.Reg* %344, i32 0, i32 0
  %RBP.i873 = bitcast %union.anon* %345 to i64*
  %346 = load i64, i64* %RBP.i873
  %347 = sub i64 %346, 4
  %348 = load i64, i64* %PC.i872
  %349 = add i64 %348, 7
  store i64 %349, i64* %PC.i872
  %350 = inttoptr i64 %347 to i32*
  store i32 0, i32* %350
  store %struct.Memory* %loadMem_47b8a7, %struct.Memory** %MEMORY
  br label %block_.L_47b8ae

block_.L_47b8ae:                                  ; preds = %routine_shll__cl___edi.exit503, %block_47b8a7
  %loadMem_47b8ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %352 = getelementptr inbounds %struct.GPR, %struct.GPR* %351, i32 0, i32 33
  %353 = getelementptr inbounds %struct.Reg, %struct.Reg* %352, i32 0, i32 0
  %PC.i870 = bitcast %union.anon* %353 to i64*
  %354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %355 = getelementptr inbounds %struct.GPR, %struct.GPR* %354, i32 0, i32 15
  %356 = getelementptr inbounds %struct.Reg, %struct.Reg* %355, i32 0, i32 0
  %RBP.i871 = bitcast %union.anon* %356 to i64*
  %357 = load i64, i64* %RBP.i871
  %358 = sub i64 %357, 4
  %359 = load i64, i64* %PC.i870
  %360 = add i64 %359, 4
  store i64 %360, i64* %PC.i870
  %361 = inttoptr i64 %358 to i32*
  %362 = load i32, i32* %361
  %363 = sub i32 %362, 4
  %364 = icmp ult i32 %362, 4
  %365 = zext i1 %364 to i8
  %366 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %365, i8* %366, align 1
  %367 = and i32 %363, 255
  %368 = call i32 @llvm.ctpop.i32(i32 %367)
  %369 = trunc i32 %368 to i8
  %370 = and i8 %369, 1
  %371 = xor i8 %370, 1
  %372 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %371, i8* %372, align 1
  %373 = xor i32 %362, 4
  %374 = xor i32 %373, %363
  %375 = lshr i32 %374, 4
  %376 = trunc i32 %375 to i8
  %377 = and i8 %376, 1
  %378 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %377, i8* %378, align 1
  %379 = icmp eq i32 %363, 0
  %380 = zext i1 %379 to i8
  %381 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %380, i8* %381, align 1
  %382 = lshr i32 %363, 31
  %383 = trunc i32 %382 to i8
  %384 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %383, i8* %384, align 1
  %385 = lshr i32 %362, 31
  %386 = xor i32 %382, %385
  %387 = add i32 %386, %385
  %388 = icmp eq i32 %387, 2
  %389 = zext i1 %388 to i8
  %390 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %389, i8* %390, align 1
  store %struct.Memory* %loadMem_47b8ae, %struct.Memory** %MEMORY
  %loadMem_47b8b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %392 = getelementptr inbounds %struct.GPR, %struct.GPR* %391, i32 0, i32 33
  %393 = getelementptr inbounds %struct.Reg, %struct.Reg* %392, i32 0, i32 0
  %PC.i869 = bitcast %union.anon* %393 to i64*
  %394 = load i64, i64* %PC.i869
  %395 = add i64 %394, 595
  %396 = load i64, i64* %PC.i869
  %397 = add i64 %396, 6
  %398 = load i64, i64* %PC.i869
  %399 = add i64 %398, 6
  store i64 %399, i64* %PC.i869
  %400 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %401 = load i8, i8* %400, align 1
  %402 = icmp ne i8 %401, 0
  %403 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %404 = load i8, i8* %403, align 1
  %405 = icmp ne i8 %404, 0
  %406 = xor i1 %402, %405
  %407 = xor i1 %406, true
  %408 = zext i1 %407 to i8
  store i8 %408, i8* %BRANCH_TAKEN, align 1
  %409 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %410 = select i1 %406, i64 %397, i64 %395
  store i64 %410, i64* %409, align 8
  store %struct.Memory* %loadMem_47b8b2, %struct.Memory** %MEMORY
  %loadBr_47b8b2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47b8b2 = icmp eq i8 %loadBr_47b8b2, 1
  br i1 %cmpBr_47b8b2, label %block_.L_47bb05, label %block_47b8b8

block_47b8b8:                                     ; preds = %block_.L_47b8ae
  %loadMem_47b8b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %412 = getelementptr inbounds %struct.GPR, %struct.GPR* %411, i32 0, i32 33
  %413 = getelementptr inbounds %struct.Reg, %struct.Reg* %412, i32 0, i32 0
  %PC.i866 = bitcast %union.anon* %413 to i64*
  %414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %415 = getelementptr inbounds %struct.GPR, %struct.GPR* %414, i32 0, i32 1
  %416 = getelementptr inbounds %struct.Reg, %struct.Reg* %415, i32 0, i32 0
  %RAX.i867 = bitcast %union.anon* %416 to i64*
  %417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %418 = getelementptr inbounds %struct.GPR, %struct.GPR* %417, i32 0, i32 15
  %419 = getelementptr inbounds %struct.Reg, %struct.Reg* %418, i32 0, i32 0
  %RBP.i868 = bitcast %union.anon* %419 to i64*
  %420 = load i64, i64* %RBP.i868
  %421 = sub i64 %420, 4
  %422 = load i64, i64* %PC.i866
  %423 = add i64 %422, 3
  store i64 %423, i64* %PC.i866
  %424 = inttoptr i64 %421 to i32*
  %425 = load i32, i32* %424
  %426 = zext i32 %425 to i64
  store i64 %426, i64* %RAX.i867, align 8
  store %struct.Memory* %loadMem_47b8b8, %struct.Memory** %MEMORY
  %loadMem_47b8bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %428 = getelementptr inbounds %struct.GPR, %struct.GPR* %427, i32 0, i32 33
  %429 = getelementptr inbounds %struct.Reg, %struct.Reg* %428, i32 0, i32 0
  %PC.i864 = bitcast %union.anon* %429 to i64*
  %430 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %431 = getelementptr inbounds %struct.GPR, %struct.GPR* %430, i32 0, i32 1
  %432 = getelementptr inbounds %struct.Reg, %struct.Reg* %431, i32 0, i32 0
  %RAX.i865 = bitcast %union.anon* %432 to i64*
  %433 = load i64, i64* %RAX.i865
  %434 = load i64, i64* %PC.i864
  %435 = add i64 %434, 3
  store i64 %435, i64* %PC.i864
  %436 = and i64 %433, 4294967295
  %437 = shl i64 %436, 1
  %438 = trunc i64 %437 to i32
  %439 = icmp slt i32 %438, 0
  %440 = shl i32 %438, 1
  %441 = zext i32 %440 to i64
  store i64 %441, i64* %RAX.i865, align 8
  %442 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %443 = zext i1 %439 to i8
  store i8 %443, i8* %442, align 1
  %444 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %445 = and i32 %440, 254
  %446 = call i32 @llvm.ctpop.i32(i32 %445)
  %447 = trunc i32 %446 to i8
  %448 = and i8 %447, 1
  %449 = xor i8 %448, 1
  store i8 %449, i8* %444, align 1
  %450 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %450, align 1
  %451 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %452 = icmp eq i32 %440, 0
  %453 = zext i1 %452 to i8
  store i8 %453, i8* %451, align 1
  %454 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %455 = lshr i32 %440, 31
  %456 = trunc i32 %455 to i8
  store i8 %456, i8* %454, align 1
  %457 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %457, align 1
  store %struct.Memory* %loadMem_47b8bb, %struct.Memory** %MEMORY
  %loadMem_47b8be = load %struct.Memory*, %struct.Memory** %MEMORY
  %458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %459 = getelementptr inbounds %struct.GPR, %struct.GPR* %458, i32 0, i32 33
  %460 = getelementptr inbounds %struct.Reg, %struct.Reg* %459, i32 0, i32 0
  %PC.i861 = bitcast %union.anon* %460 to i64*
  %461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %462 = getelementptr inbounds %struct.GPR, %struct.GPR* %461, i32 0, i32 1
  %463 = getelementptr inbounds %struct.Reg, %struct.Reg* %462, i32 0, i32 0
  %RAX.i862 = bitcast %union.anon* %463 to i64*
  %464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %465 = getelementptr inbounds %struct.GPR, %struct.GPR* %464, i32 0, i32 15
  %466 = getelementptr inbounds %struct.Reg, %struct.Reg* %465, i32 0, i32 0
  %RBP.i863 = bitcast %union.anon* %466 to i64*
  %467 = load i64, i64* %RAX.i862
  %468 = load i64, i64* %RBP.i863
  %469 = sub i64 %468, 8
  %470 = load i64, i64* %PC.i861
  %471 = add i64 %470, 3
  store i64 %471, i64* %PC.i861
  %472 = trunc i64 %467 to i32
  %473 = inttoptr i64 %469 to i32*
  %474 = load i32, i32* %473
  %475 = add i32 %474, %472
  %476 = zext i32 %475 to i64
  store i64 %476, i64* %RAX.i862, align 8
  %477 = icmp ult i32 %475, %472
  %478 = icmp ult i32 %475, %474
  %479 = or i1 %477, %478
  %480 = zext i1 %479 to i8
  %481 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %480, i8* %481, align 1
  %482 = and i32 %475, 255
  %483 = call i32 @llvm.ctpop.i32(i32 %482)
  %484 = trunc i32 %483 to i8
  %485 = and i8 %484, 1
  %486 = xor i8 %485, 1
  %487 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %486, i8* %487, align 1
  %488 = xor i32 %474, %472
  %489 = xor i32 %488, %475
  %490 = lshr i32 %489, 4
  %491 = trunc i32 %490 to i8
  %492 = and i8 %491, 1
  %493 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %492, i8* %493, align 1
  %494 = icmp eq i32 %475, 0
  %495 = zext i1 %494 to i8
  %496 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %495, i8* %496, align 1
  %497 = lshr i32 %475, 31
  %498 = trunc i32 %497 to i8
  %499 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %498, i8* %499, align 1
  %500 = lshr i32 %472, 31
  %501 = lshr i32 %474, 31
  %502 = xor i32 %497, %500
  %503 = xor i32 %497, %501
  %504 = add i32 %502, %503
  %505 = icmp eq i32 %504, 2
  %506 = zext i1 %505 to i8
  %507 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %506, i8* %507, align 1
  store %struct.Memory* %loadMem_47b8be, %struct.Memory** %MEMORY
  %loadMem_47b8c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %508 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %509 = getelementptr inbounds %struct.GPR, %struct.GPR* %508, i32 0, i32 33
  %510 = getelementptr inbounds %struct.Reg, %struct.Reg* %509, i32 0, i32 0
  %PC.i858 = bitcast %union.anon* %510 to i64*
  %511 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %512 = getelementptr inbounds %struct.GPR, %struct.GPR* %511, i32 0, i32 1
  %513 = getelementptr inbounds %struct.Reg, %struct.Reg* %512, i32 0, i32 0
  %EAX.i859 = bitcast %union.anon* %513 to i32*
  %514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %515 = getelementptr inbounds %struct.GPR, %struct.GPR* %514, i32 0, i32 15
  %516 = getelementptr inbounds %struct.Reg, %struct.Reg* %515, i32 0, i32 0
  %RBP.i860 = bitcast %union.anon* %516 to i64*
  %517 = load i64, i64* %RBP.i860
  %518 = sub i64 %517, 16
  %519 = load i32, i32* %EAX.i859
  %520 = zext i32 %519 to i64
  %521 = load i64, i64* %PC.i858
  %522 = add i64 %521, 3
  store i64 %522, i64* %PC.i858
  %523 = inttoptr i64 %518 to i32*
  store i32 %519, i32* %523
  store %struct.Memory* %loadMem_47b8c1, %struct.Memory** %MEMORY
  %loadMem_47b8c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %525 = getelementptr inbounds %struct.GPR, %struct.GPR* %524, i32 0, i32 33
  %526 = getelementptr inbounds %struct.Reg, %struct.Reg* %525, i32 0, i32 0
  %PC.i856 = bitcast %union.anon* %526 to i64*
  %527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %528 = getelementptr inbounds %struct.GPR, %struct.GPR* %527, i32 0, i32 5
  %529 = getelementptr inbounds %struct.Reg, %struct.Reg* %528, i32 0, i32 0
  %RCX.i857 = bitcast %union.anon* %529 to i64*
  %530 = load i64, i64* %PC.i856
  %531 = add i64 %530, 8
  store i64 %531, i64* %PC.i856
  %532 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %532, i64* %RCX.i857, align 8
  store %struct.Memory* %loadMem_47b8c4, %struct.Memory** %MEMORY
  %loadMem_47b8cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %534 = getelementptr inbounds %struct.GPR, %struct.GPR* %533, i32 0, i32 33
  %535 = getelementptr inbounds %struct.Reg, %struct.Reg* %534, i32 0, i32 0
  %PC.i854 = bitcast %union.anon* %535 to i64*
  %536 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %537 = getelementptr inbounds %struct.GPR, %struct.GPR* %536, i32 0, i32 5
  %538 = getelementptr inbounds %struct.Reg, %struct.Reg* %537, i32 0, i32 0
  %RCX.i855 = bitcast %union.anon* %538 to i64*
  %539 = load i64, i64* %RCX.i855
  %540 = add i64 %539, 24
  %541 = load i64, i64* %PC.i854
  %542 = add i64 %541, 4
  store i64 %542, i64* %PC.i854
  %543 = inttoptr i64 %540 to i32*
  %544 = load i32, i32* %543
  %545 = sub i32 %544, 2
  %546 = icmp ult i32 %544, 2
  %547 = zext i1 %546 to i8
  %548 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %547, i8* %548, align 1
  %549 = and i32 %545, 255
  %550 = call i32 @llvm.ctpop.i32(i32 %549)
  %551 = trunc i32 %550 to i8
  %552 = and i8 %551, 1
  %553 = xor i8 %552, 1
  %554 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %553, i8* %554, align 1
  %555 = xor i32 %544, 2
  %556 = xor i32 %555, %545
  %557 = lshr i32 %556, 4
  %558 = trunc i32 %557 to i8
  %559 = and i8 %558, 1
  %560 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %559, i8* %560, align 1
  %561 = icmp eq i32 %545, 0
  %562 = zext i1 %561 to i8
  %563 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %562, i8* %563, align 1
  %564 = lshr i32 %545, 31
  %565 = trunc i32 %564 to i8
  %566 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %565, i8* %566, align 1
  %567 = lshr i32 %544, 31
  %568 = xor i32 %564, %567
  %569 = add i32 %568, %567
  %570 = icmp eq i32 %569, 2
  %571 = zext i1 %570 to i8
  %572 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %571, i8* %572, align 1
  store %struct.Memory* %loadMem_47b8cc, %struct.Memory** %MEMORY
  %loadMem_47b8d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %573 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %574 = getelementptr inbounds %struct.GPR, %struct.GPR* %573, i32 0, i32 33
  %575 = getelementptr inbounds %struct.Reg, %struct.Reg* %574, i32 0, i32 0
  %PC.i853 = bitcast %union.anon* %575 to i64*
  %576 = load i64, i64* %PC.i853
  %577 = add i64 %576, 191
  %578 = load i64, i64* %PC.i853
  %579 = add i64 %578, 6
  %580 = load i64, i64* %PC.i853
  %581 = add i64 %580, 6
  store i64 %581, i64* %PC.i853
  %582 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %583 = load i8, i8* %582, align 1
  %584 = icmp eq i8 %583, 0
  %585 = zext i1 %584 to i8
  store i8 %585, i8* %BRANCH_TAKEN, align 1
  %586 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %587 = select i1 %584, i64 %577, i64 %579
  store i64 %587, i64* %586, align 8
  store %struct.Memory* %loadMem_47b8d0, %struct.Memory** %MEMORY
  %loadBr_47b8d0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47b8d0 = icmp eq i8 %loadBr_47b8d0, 1
  br i1 %cmpBr_47b8d0, label %block_.L_47b98f, label %block_47b8d6

block_47b8d6:                                     ; preds = %block_47b8b8
  %loadMem_47b8d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %589 = getelementptr inbounds %struct.GPR, %struct.GPR* %588, i32 0, i32 33
  %590 = getelementptr inbounds %struct.Reg, %struct.Reg* %589, i32 0, i32 0
  %PC.i851 = bitcast %union.anon* %590 to i64*
  %591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %592 = getelementptr inbounds %struct.GPR, %struct.GPR* %591, i32 0, i32 1
  %593 = getelementptr inbounds %struct.Reg, %struct.Reg* %592, i32 0, i32 0
  %RAX.i852 = bitcast %union.anon* %593 to i64*
  %594 = load i64, i64* %PC.i851
  %595 = add i64 %594, 10
  store i64 %595, i64* %PC.i851
  store i64 7490528, i64* %RAX.i852, align 8
  store %struct.Memory* %loadMem_47b8d6, %struct.Memory** %MEMORY
  %loadMem_47b8e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %596 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %597 = getelementptr inbounds %struct.GPR, %struct.GPR* %596, i32 0, i32 33
  %598 = getelementptr inbounds %struct.Reg, %struct.Reg* %597, i32 0, i32 0
  %PC.i848 = bitcast %union.anon* %598 to i64*
  %599 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %600 = getelementptr inbounds %struct.GPR, %struct.GPR* %599, i32 0, i32 1
  %601 = getelementptr inbounds %struct.Reg, %struct.Reg* %600, i32 0, i32 0
  %RAX.i849 = bitcast %union.anon* %601 to i64*
  %602 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %603 = getelementptr inbounds %struct.GPR, %struct.GPR* %602, i32 0, i32 5
  %604 = getelementptr inbounds %struct.Reg, %struct.Reg* %603, i32 0, i32 0
  %RCX.i850 = bitcast %union.anon* %604 to i64*
  %605 = load i64, i64* %RAX.i849
  %606 = load i64, i64* %PC.i848
  %607 = add i64 %606, 3
  store i64 %607, i64* %PC.i848
  store i64 %605, i64* %RCX.i850, align 8
  store %struct.Memory* %loadMem_47b8e0, %struct.Memory** %MEMORY
  %loadMem_47b8e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %609 = getelementptr inbounds %struct.GPR, %struct.GPR* %608, i32 0, i32 33
  %610 = getelementptr inbounds %struct.Reg, %struct.Reg* %609, i32 0, i32 0
  %PC.i846 = bitcast %union.anon* %610 to i64*
  %611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %612 = getelementptr inbounds %struct.GPR, %struct.GPR* %611, i32 0, i32 5
  %613 = getelementptr inbounds %struct.Reg, %struct.Reg* %612, i32 0, i32 0
  %RCX.i847 = bitcast %union.anon* %613 to i64*
  %614 = load i64, i64* %RCX.i847
  %615 = load i64, i64* %PC.i846
  %616 = add i64 %615, 7
  store i64 %616, i64* %PC.i846
  %617 = add i64 832, %614
  store i64 %617, i64* %RCX.i847, align 8
  %618 = icmp ult i64 %617, %614
  %619 = icmp ult i64 %617, 832
  %620 = or i1 %618, %619
  %621 = zext i1 %620 to i8
  %622 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %621, i8* %622, align 1
  %623 = trunc i64 %617 to i32
  %624 = and i32 %623, 255
  %625 = call i32 @llvm.ctpop.i32(i32 %624)
  %626 = trunc i32 %625 to i8
  %627 = and i8 %626, 1
  %628 = xor i8 %627, 1
  %629 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %628, i8* %629, align 1
  %630 = xor i64 832, %614
  %631 = xor i64 %630, %617
  %632 = lshr i64 %631, 4
  %633 = trunc i64 %632 to i8
  %634 = and i8 %633, 1
  %635 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %634, i8* %635, align 1
  %636 = icmp eq i64 %617, 0
  %637 = zext i1 %636 to i8
  %638 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %637, i8* %638, align 1
  %639 = lshr i64 %617, 63
  %640 = trunc i64 %639 to i8
  %641 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %640, i8* %641, align 1
  %642 = lshr i64 %614, 63
  %643 = xor i64 %639, %642
  %644 = add i64 %643, %639
  %645 = icmp eq i64 %644, 2
  %646 = zext i1 %645 to i8
  %647 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %646, i8* %647, align 1
  store %struct.Memory* %loadMem_47b8e3, %struct.Memory** %MEMORY
  %loadMem_47b8ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %648 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %649 = getelementptr inbounds %struct.GPR, %struct.GPR* %648, i32 0, i32 33
  %650 = getelementptr inbounds %struct.Reg, %struct.Reg* %649, i32 0, i32 0
  %PC.i844 = bitcast %union.anon* %650 to i64*
  %651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %652 = getelementptr inbounds %struct.GPR, %struct.GPR* %651, i32 0, i32 7
  %653 = getelementptr inbounds %struct.Reg, %struct.Reg* %652, i32 0, i32 0
  %RDX.i845 = bitcast %union.anon* %653 to i64*
  %654 = load i64, i64* %PC.i844
  %655 = add i64 %654, 10
  store i64 %655, i64* %PC.i844
  store i64 7405600, i64* %RDX.i845, align 8
  store %struct.Memory* %loadMem_47b8ea, %struct.Memory** %MEMORY
  %loadMem_47b8f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %656 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %657 = getelementptr inbounds %struct.GPR, %struct.GPR* %656, i32 0, i32 33
  %658 = getelementptr inbounds %struct.Reg, %struct.Reg* %657, i32 0, i32 0
  %PC.i841 = bitcast %union.anon* %658 to i64*
  %659 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %660 = getelementptr inbounds %struct.GPR, %struct.GPR* %659, i32 0, i32 9
  %661 = getelementptr inbounds %struct.Reg, %struct.Reg* %660, i32 0, i32 0
  %RSI.i842 = bitcast %union.anon* %661 to i64*
  %662 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %663 = getelementptr inbounds %struct.GPR, %struct.GPR* %662, i32 0, i32 15
  %664 = getelementptr inbounds %struct.Reg, %struct.Reg* %663, i32 0, i32 0
  %RBP.i843 = bitcast %union.anon* %664 to i64*
  %665 = load i64, i64* %RBP.i843
  %666 = sub i64 %665, 16
  %667 = load i64, i64* %PC.i841
  %668 = add i64 %667, 4
  store i64 %668, i64* %PC.i841
  %669 = inttoptr i64 %666 to i32*
  %670 = load i32, i32* %669
  %671 = sext i32 %670 to i64
  store i64 %671, i64* %RSI.i842, align 8
  store %struct.Memory* %loadMem_47b8f4, %struct.Memory** %MEMORY
  %loadMem_47b8f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %672 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %673 = getelementptr inbounds %struct.GPR, %struct.GPR* %672, i32 0, i32 33
  %674 = getelementptr inbounds %struct.Reg, %struct.Reg* %673, i32 0, i32 0
  %PC.i838 = bitcast %union.anon* %674 to i64*
  %675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %676 = getelementptr inbounds %struct.GPR, %struct.GPR* %675, i32 0, i32 9
  %677 = getelementptr inbounds %struct.Reg, %struct.Reg* %676, i32 0, i32 0
  %RSI.i839 = bitcast %union.anon* %677 to i64*
  %678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %679 = getelementptr inbounds %struct.GPR, %struct.GPR* %678, i32 0, i32 11
  %680 = getelementptr inbounds %struct.Reg, %struct.Reg* %679, i32 0, i32 0
  %RDI.i840 = bitcast %union.anon* %680 to i64*
  %681 = load i64, i64* %RSI.i839
  %682 = mul i64 %681, 2
  %683 = add i64 %682, 7404896
  %684 = load i64, i64* %PC.i838
  %685 = add i64 %684, 8
  store i64 %685, i64* %PC.i838
  %686 = inttoptr i64 %683 to i16*
  %687 = load i16, i16* %686
  %688 = sext i16 %687 to i64
  %689 = and i64 %688, 4294967295
  store i64 %689, i64* %RDI.i840, align 8
  store %struct.Memory* %loadMem_47b8f8, %struct.Memory** %MEMORY
  %loadMem_47b900 = load %struct.Memory*, %struct.Memory** %MEMORY
  %690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %691 = getelementptr inbounds %struct.GPR, %struct.GPR* %690, i32 0, i32 33
  %692 = getelementptr inbounds %struct.Reg, %struct.Reg* %691, i32 0, i32 0
  %PC.i835 = bitcast %union.anon* %692 to i64*
  %693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %694 = getelementptr inbounds %struct.GPR, %struct.GPR* %693, i32 0, i32 17
  %695 = getelementptr inbounds %struct.Reg, %struct.Reg* %694, i32 0, i32 0
  %R8D.i836 = bitcast %union.anon* %695 to i32*
  %696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %697 = getelementptr inbounds %struct.GPR, %struct.GPR* %696, i32 0, i32 15
  %698 = getelementptr inbounds %struct.Reg, %struct.Reg* %697, i32 0, i32 0
  %RBP.i837 = bitcast %union.anon* %698 to i64*
  %699 = bitcast i32* %R8D.i836 to i64*
  %700 = load i64, i64* %RBP.i837
  %701 = sub i64 %700, 20
  %702 = load i64, i64* %PC.i835
  %703 = add i64 %702, 4
  store i64 %703, i64* %PC.i835
  %704 = inttoptr i64 %701 to i32*
  %705 = load i32, i32* %704
  %706 = zext i32 %705 to i64
  store i64 %706, i64* %699, align 8
  store %struct.Memory* %loadMem_47b900, %struct.Memory** %MEMORY
  %loadMem_47b904 = load %struct.Memory*, %struct.Memory** %MEMORY
  %707 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %708 = getelementptr inbounds %struct.GPR, %struct.GPR* %707, i32 0, i32 33
  %709 = getelementptr inbounds %struct.Reg, %struct.Reg* %708, i32 0, i32 0
  %PC.i832 = bitcast %union.anon* %709 to i64*
  %710 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %711 = getelementptr inbounds %struct.GPR, %struct.GPR* %710, i32 0, i32 5
  %712 = getelementptr inbounds %struct.Reg, %struct.Reg* %711, i32 0, i32 0
  %RCX.i833 = bitcast %union.anon* %712 to i64*
  %713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %714 = getelementptr inbounds %struct.GPR, %struct.GPR* %713, i32 0, i32 15
  %715 = getelementptr inbounds %struct.Reg, %struct.Reg* %714, i32 0, i32 0
  %RBP.i834 = bitcast %union.anon* %715 to i64*
  %716 = load i64, i64* %RBP.i834
  %717 = sub i64 %716, 32
  %718 = load i64, i64* %RCX.i833
  %719 = load i64, i64* %PC.i832
  %720 = add i64 %719, 4
  store i64 %720, i64* %PC.i832
  %721 = inttoptr i64 %717 to i64*
  store i64 %718, i64* %721
  store %struct.Memory* %loadMem_47b904, %struct.Memory** %MEMORY
  %loadMem_47b908 = load %struct.Memory*, %struct.Memory** %MEMORY
  %722 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %723 = getelementptr inbounds %struct.GPR, %struct.GPR* %722, i32 0, i32 33
  %724 = getelementptr inbounds %struct.Reg, %struct.Reg* %723, i32 0, i32 0
  %PC.i829 = bitcast %union.anon* %724 to i64*
  %725 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %726 = getelementptr inbounds %struct.GPR, %struct.GPR* %725, i32 0, i32 17
  %727 = getelementptr inbounds %struct.Reg, %struct.Reg* %726, i32 0, i32 0
  %R8D.i830 = bitcast %union.anon* %727 to i32*
  %728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %729 = getelementptr inbounds %struct.GPR, %struct.GPR* %728, i32 0, i32 5
  %730 = getelementptr inbounds %struct.Reg, %struct.Reg* %729, i32 0, i32 0
  %RCX.i831 = bitcast %union.anon* %730 to i64*
  %731 = load i32, i32* %R8D.i830
  %732 = zext i32 %731 to i64
  %733 = load i64, i64* %PC.i829
  %734 = add i64 %733, 3
  store i64 %734, i64* %PC.i829
  %735 = and i64 %732, 4294967295
  store i64 %735, i64* %RCX.i831, align 8
  store %struct.Memory* %loadMem_47b908, %struct.Memory** %MEMORY
  %loadMem_47b90b = load %struct.Memory*, %struct.Memory** %MEMORY
  %736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %737 = getelementptr inbounds %struct.GPR, %struct.GPR* %736, i32 0, i32 33
  %738 = getelementptr inbounds %struct.Reg, %struct.Reg* %737, i32 0, i32 0
  %PC.i825 = bitcast %union.anon* %738 to i64*
  %739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %740 = getelementptr inbounds %struct.GPR, %struct.GPR* %739, i32 0, i32 5
  %741 = getelementptr inbounds %struct.Reg, %struct.Reg* %740, i32 0, i32 0
  %742 = bitcast %union.anon* %741 to %struct.anon.2*
  %CL.i826 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %742, i32 0, i32 0
  %743 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %744 = getelementptr inbounds %struct.GPR, %struct.GPR* %743, i32 0, i32 11
  %745 = getelementptr inbounds %struct.Reg, %struct.Reg* %744, i32 0, i32 0
  %RDI.i827 = bitcast %union.anon* %745 to i64*
  %746 = load i64, i64* %RDI.i827
  %747 = load i8, i8* %CL.i826
  %748 = zext i8 %747 to i64
  %749 = load i64, i64* %PC.i825
  %750 = add i64 %749, 2
  store i64 %750, i64* %PC.i825
  %751 = trunc i64 %748 to i5
  switch i5 %751, label %758 [
    i5 0, label %routine_shll__cl___edi.exit828
    i5 1, label %752
  ]

; <label>:752:                                    ; preds = %block_47b8d6
  %753 = trunc i64 %746 to i32
  %754 = shl i32 %753, 1
  %755 = icmp slt i32 %753, 0
  %756 = icmp slt i32 %754, 0
  %757 = xor i1 %755, %756
  br label %767

; <label>:758:                                    ; preds = %block_47b8d6
  %759 = and i64 %748, 31
  %760 = add i64 %759, 4294967295
  %761 = and i64 %746, 4294967295
  %762 = and i64 %760, 4294967295
  %763 = shl i64 %761, %762
  %764 = trunc i64 %763 to i32
  %765 = icmp slt i32 %764, 0
  %766 = shl i32 %764, 1
  br label %767

; <label>:767:                                    ; preds = %758, %752
  %768 = phi i1 [ %755, %752 ], [ %765, %758 ]
  %769 = phi i1 [ %757, %752 ], [ false, %758 ]
  %770 = phi i32 [ %754, %752 ], [ %766, %758 ]
  %771 = zext i32 %770 to i64
  store i64 %771, i64* %RDI.i827, align 8
  %772 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %773 = zext i1 %768 to i8
  store i8 %773, i8* %772, align 1
  %774 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %775 = and i32 %770, 254
  %776 = call i32 @llvm.ctpop.i32(i32 %775)
  %777 = trunc i32 %776 to i8
  %778 = and i8 %777, 1
  %779 = xor i8 %778, 1
  store i8 %779, i8* %774, align 1
  %780 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %780, align 1
  %781 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %782 = icmp eq i32 %770, 0
  %783 = zext i1 %782 to i8
  store i8 %783, i8* %781, align 1
  %784 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %785 = lshr i32 %770, 31
  %786 = trunc i32 %785 to i8
  store i8 %786, i8* %784, align 1
  %787 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %788 = zext i1 %769 to i8
  store i8 %788, i8* %787, align 1
  br label %routine_shll__cl___edi.exit828

routine_shll__cl___edi.exit828:                   ; preds = %block_47b8d6, %767
  store %struct.Memory* %loadMem_47b90b, %struct.Memory** %MEMORY
  %loadMem_47b90d = load %struct.Memory*, %struct.Memory** %MEMORY
  %789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %790 = getelementptr inbounds %struct.GPR, %struct.GPR* %789, i32 0, i32 33
  %791 = getelementptr inbounds %struct.Reg, %struct.Reg* %790, i32 0, i32 0
  %PC.i822 = bitcast %union.anon* %791 to i64*
  %792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %793 = getelementptr inbounds %struct.GPR, %struct.GPR* %792, i32 0, i32 9
  %794 = getelementptr inbounds %struct.Reg, %struct.Reg* %793, i32 0, i32 0
  %RSI.i823 = bitcast %union.anon* %794 to i64*
  %795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %796 = getelementptr inbounds %struct.GPR, %struct.GPR* %795, i32 0, i32 15
  %797 = getelementptr inbounds %struct.Reg, %struct.Reg* %796, i32 0, i32 0
  %RBP.i824 = bitcast %union.anon* %797 to i64*
  %798 = load i64, i64* %RBP.i824
  %799 = sub i64 %798, 12
  %800 = load i64, i64* %PC.i822
  %801 = add i64 %800, 4
  store i64 %801, i64* %PC.i822
  %802 = inttoptr i64 %799 to i32*
  %803 = load i32, i32* %802
  %804 = sext i32 %803 to i64
  store i64 %804, i64* %RSI.i823, align 8
  store %struct.Memory* %loadMem_47b90d, %struct.Memory** %MEMORY
  %loadMem_47b911 = load %struct.Memory*, %struct.Memory** %MEMORY
  %805 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %806 = getelementptr inbounds %struct.GPR, %struct.GPR* %805, i32 0, i32 33
  %807 = getelementptr inbounds %struct.Reg, %struct.Reg* %806, i32 0, i32 0
  %PC.i820 = bitcast %union.anon* %807 to i64*
  %808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %809 = getelementptr inbounds %struct.GPR, %struct.GPR* %808, i32 0, i32 9
  %810 = getelementptr inbounds %struct.Reg, %struct.Reg* %809, i32 0, i32 0
  %RSI.i821 = bitcast %union.anon* %810 to i64*
  %811 = load i64, i64* %RSI.i821
  %812 = load i64, i64* %PC.i820
  %813 = add i64 %812, 4
  store i64 %813, i64* %PC.i820
  %814 = shl i64 %811, 5
  %815 = icmp slt i64 %814, 0
  %816 = shl i64 %814, 1
  store i64 %816, i64* %RSI.i821, align 8
  %817 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %818 = zext i1 %815 to i8
  store i8 %818, i8* %817, align 1
  %819 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %820 = trunc i64 %816 to i32
  %821 = and i32 %820, 254
  %822 = call i32 @llvm.ctpop.i32(i32 %821)
  %823 = trunc i32 %822 to i8
  %824 = and i8 %823, 1
  %825 = xor i8 %824, 1
  store i8 %825, i8* %819, align 1
  %826 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %826, align 1
  %827 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %828 = icmp eq i64 %816, 0
  %829 = zext i1 %828 to i8
  store i8 %829, i8* %827, align 1
  %830 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %831 = lshr i64 %816, 63
  %832 = trunc i64 %831 to i8
  store i8 %832, i8* %830, align 1
  %833 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %833, align 1
  store %struct.Memory* %loadMem_47b911, %struct.Memory** %MEMORY
  %loadMem_47b915 = load %struct.Memory*, %struct.Memory** %MEMORY
  %834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %835 = getelementptr inbounds %struct.GPR, %struct.GPR* %834, i32 0, i32 33
  %836 = getelementptr inbounds %struct.Reg, %struct.Reg* %835, i32 0, i32 0
  %PC.i817 = bitcast %union.anon* %836 to i64*
  %837 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %838 = getelementptr inbounds %struct.GPR, %struct.GPR* %837, i32 0, i32 7
  %839 = getelementptr inbounds %struct.Reg, %struct.Reg* %838, i32 0, i32 0
  %RDX.i818 = bitcast %union.anon* %839 to i64*
  %840 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %841 = getelementptr inbounds %struct.GPR, %struct.GPR* %840, i32 0, i32 9
  %842 = getelementptr inbounds %struct.Reg, %struct.Reg* %841, i32 0, i32 0
  %RSI.i819 = bitcast %union.anon* %842 to i64*
  %843 = load i64, i64* %RDX.i818
  %844 = load i64, i64* %RSI.i819
  %845 = load i64, i64* %PC.i817
  %846 = add i64 %845, 3
  store i64 %846, i64* %PC.i817
  %847 = add i64 %844, %843
  store i64 %847, i64* %RDX.i818, align 8
  %848 = icmp ult i64 %847, %843
  %849 = icmp ult i64 %847, %844
  %850 = or i1 %848, %849
  %851 = zext i1 %850 to i8
  %852 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %851, i8* %852, align 1
  %853 = trunc i64 %847 to i32
  %854 = and i32 %853, 255
  %855 = call i32 @llvm.ctpop.i32(i32 %854)
  %856 = trunc i32 %855 to i8
  %857 = and i8 %856, 1
  %858 = xor i8 %857, 1
  %859 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %858, i8* %859, align 1
  %860 = xor i64 %844, %843
  %861 = xor i64 %860, %847
  %862 = lshr i64 %861, 4
  %863 = trunc i64 %862 to i8
  %864 = and i8 %863, 1
  %865 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %864, i8* %865, align 1
  %866 = icmp eq i64 %847, 0
  %867 = zext i1 %866 to i8
  %868 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %867, i8* %868, align 1
  %869 = lshr i64 %847, 63
  %870 = trunc i64 %869 to i8
  %871 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %870, i8* %871, align 1
  %872 = lshr i64 %843, 63
  %873 = lshr i64 %844, 63
  %874 = xor i64 %869, %872
  %875 = xor i64 %869, %873
  %876 = add i64 %874, %875
  %877 = icmp eq i64 %876, 2
  %878 = zext i1 %877 to i8
  %879 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %878, i8* %879, align 1
  store %struct.Memory* %loadMem_47b915, %struct.Memory** %MEMORY
  %loadMem_47b918 = load %struct.Memory*, %struct.Memory** %MEMORY
  %880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %881 = getelementptr inbounds %struct.GPR, %struct.GPR* %880, i32 0, i32 33
  %882 = getelementptr inbounds %struct.Reg, %struct.Reg* %881, i32 0, i32 0
  %PC.i814 = bitcast %union.anon* %882 to i64*
  %883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %884 = getelementptr inbounds %struct.GPR, %struct.GPR* %883, i32 0, i32 9
  %885 = getelementptr inbounds %struct.Reg, %struct.Reg* %884, i32 0, i32 0
  %RSI.i815 = bitcast %union.anon* %885 to i64*
  %886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %887 = getelementptr inbounds %struct.GPR, %struct.GPR* %886, i32 0, i32 15
  %888 = getelementptr inbounds %struct.Reg, %struct.Reg* %887, i32 0, i32 0
  %RBP.i816 = bitcast %union.anon* %888 to i64*
  %889 = load i64, i64* %RBP.i816
  %890 = sub i64 %889, 8
  %891 = load i64, i64* %PC.i814
  %892 = add i64 %891, 4
  store i64 %892, i64* %PC.i814
  %893 = inttoptr i64 %890 to i32*
  %894 = load i32, i32* %893
  %895 = sext i32 %894 to i64
  store i64 %895, i64* %RSI.i815, align 8
  store %struct.Memory* %loadMem_47b918, %struct.Memory** %MEMORY
  %loadMem_47b91c = load %struct.Memory*, %struct.Memory** %MEMORY
  %896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %897 = getelementptr inbounds %struct.GPR, %struct.GPR* %896, i32 0, i32 33
  %898 = getelementptr inbounds %struct.Reg, %struct.Reg* %897, i32 0, i32 0
  %PC.i812 = bitcast %union.anon* %898 to i64*
  %899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %900 = getelementptr inbounds %struct.GPR, %struct.GPR* %899, i32 0, i32 9
  %901 = getelementptr inbounds %struct.Reg, %struct.Reg* %900, i32 0, i32 0
  %RSI.i813 = bitcast %union.anon* %901 to i64*
  %902 = load i64, i64* %RSI.i813
  %903 = load i64, i64* %PC.i812
  %904 = add i64 %903, 4
  store i64 %904, i64* %PC.i812
  %905 = shl i64 %902, 3
  %906 = icmp slt i64 %905, 0
  %907 = shl i64 %905, 1
  store i64 %907, i64* %RSI.i813, align 8
  %908 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %909 = zext i1 %906 to i8
  store i8 %909, i8* %908, align 1
  %910 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %911 = trunc i64 %907 to i32
  %912 = and i32 %911, 254
  %913 = call i32 @llvm.ctpop.i32(i32 %912)
  %914 = trunc i32 %913 to i8
  %915 = and i8 %914, 1
  %916 = xor i8 %915, 1
  store i8 %916, i8* %910, align 1
  %917 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %917, align 1
  %918 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %919 = icmp eq i64 %907, 0
  %920 = zext i1 %919 to i8
  store i8 %920, i8* %918, align 1
  %921 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %922 = lshr i64 %907, 63
  %923 = trunc i64 %922 to i8
  store i8 %923, i8* %921, align 1
  %924 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %924, align 1
  store %struct.Memory* %loadMem_47b91c, %struct.Memory** %MEMORY
  %loadMem_47b920 = load %struct.Memory*, %struct.Memory** %MEMORY
  %925 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %926 = getelementptr inbounds %struct.GPR, %struct.GPR* %925, i32 0, i32 33
  %927 = getelementptr inbounds %struct.Reg, %struct.Reg* %926, i32 0, i32 0
  %PC.i809 = bitcast %union.anon* %927 to i64*
  %928 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %929 = getelementptr inbounds %struct.GPR, %struct.GPR* %928, i32 0, i32 7
  %930 = getelementptr inbounds %struct.Reg, %struct.Reg* %929, i32 0, i32 0
  %RDX.i810 = bitcast %union.anon* %930 to i64*
  %931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %932 = getelementptr inbounds %struct.GPR, %struct.GPR* %931, i32 0, i32 9
  %933 = getelementptr inbounds %struct.Reg, %struct.Reg* %932, i32 0, i32 0
  %RSI.i811 = bitcast %union.anon* %933 to i64*
  %934 = load i64, i64* %RDX.i810
  %935 = load i64, i64* %RSI.i811
  %936 = load i64, i64* %PC.i809
  %937 = add i64 %936, 3
  store i64 %937, i64* %PC.i809
  %938 = add i64 %935, %934
  store i64 %938, i64* %RDX.i810, align 8
  %939 = icmp ult i64 %938, %934
  %940 = icmp ult i64 %938, %935
  %941 = or i1 %939, %940
  %942 = zext i1 %941 to i8
  %943 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %942, i8* %943, align 1
  %944 = trunc i64 %938 to i32
  %945 = and i32 %944, 255
  %946 = call i32 @llvm.ctpop.i32(i32 %945)
  %947 = trunc i32 %946 to i8
  %948 = and i8 %947, 1
  %949 = xor i8 %948, 1
  %950 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %949, i8* %950, align 1
  %951 = xor i64 %935, %934
  %952 = xor i64 %951, %938
  %953 = lshr i64 %952, 4
  %954 = trunc i64 %953 to i8
  %955 = and i8 %954, 1
  %956 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %955, i8* %956, align 1
  %957 = icmp eq i64 %938, 0
  %958 = zext i1 %957 to i8
  %959 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %958, i8* %959, align 1
  %960 = lshr i64 %938, 63
  %961 = trunc i64 %960 to i8
  %962 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %961, i8* %962, align 1
  %963 = lshr i64 %934, 63
  %964 = lshr i64 %935, 63
  %965 = xor i64 %960, %963
  %966 = xor i64 %960, %964
  %967 = add i64 %965, %966
  %968 = icmp eq i64 %967, 2
  %969 = zext i1 %968 to i8
  %970 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %969, i8* %970, align 1
  store %struct.Memory* %loadMem_47b920, %struct.Memory** %MEMORY
  %loadMem_47b923 = load %struct.Memory*, %struct.Memory** %MEMORY
  %971 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %972 = getelementptr inbounds %struct.GPR, %struct.GPR* %971, i32 0, i32 33
  %973 = getelementptr inbounds %struct.Reg, %struct.Reg* %972, i32 0, i32 0
  %PC.i806 = bitcast %union.anon* %973 to i64*
  %974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %975 = getelementptr inbounds %struct.GPR, %struct.GPR* %974, i32 0, i32 9
  %976 = getelementptr inbounds %struct.Reg, %struct.Reg* %975, i32 0, i32 0
  %RSI.i807 = bitcast %union.anon* %976 to i64*
  %977 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %978 = getelementptr inbounds %struct.GPR, %struct.GPR* %977, i32 0, i32 15
  %979 = getelementptr inbounds %struct.Reg, %struct.Reg* %978, i32 0, i32 0
  %RBP.i808 = bitcast %union.anon* %979 to i64*
  %980 = load i64, i64* %RBP.i808
  %981 = sub i64 %980, 4
  %982 = load i64, i64* %PC.i806
  %983 = add i64 %982, 4
  store i64 %983, i64* %PC.i806
  %984 = inttoptr i64 %981 to i32*
  %985 = load i32, i32* %984
  %986 = sext i32 %985 to i64
  store i64 %986, i64* %RSI.i807, align 8
  store %struct.Memory* %loadMem_47b923, %struct.Memory** %MEMORY
  %loadMem_47b927 = load %struct.Memory*, %struct.Memory** %MEMORY
  %987 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %988 = getelementptr inbounds %struct.GPR, %struct.GPR* %987, i32 0, i32 33
  %989 = getelementptr inbounds %struct.Reg, %struct.Reg* %988, i32 0, i32 0
  %PC.i802 = bitcast %union.anon* %989 to i64*
  %990 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %991 = getelementptr inbounds %struct.GPR, %struct.GPR* %990, i32 0, i32 11
  %992 = getelementptr inbounds %struct.Reg, %struct.Reg* %991, i32 0, i32 0
  %EDI.i803 = bitcast %union.anon* %992 to i32*
  %993 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %994 = getelementptr inbounds %struct.GPR, %struct.GPR* %993, i32 0, i32 7
  %995 = getelementptr inbounds %struct.Reg, %struct.Reg* %994, i32 0, i32 0
  %RDX.i804 = bitcast %union.anon* %995 to i64*
  %996 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %997 = getelementptr inbounds %struct.GPR, %struct.GPR* %996, i32 0, i32 9
  %998 = getelementptr inbounds %struct.Reg, %struct.Reg* %997, i32 0, i32 0
  %RSI.i805 = bitcast %union.anon* %998 to i64*
  %999 = load i64, i64* %RDX.i804
  %1000 = load i64, i64* %RSI.i805
  %1001 = mul i64 %1000, 4
  %1002 = add i64 %1001, %999
  %1003 = load i32, i32* %EDI.i803
  %1004 = zext i32 %1003 to i64
  %1005 = load i64, i64* %PC.i802
  %1006 = add i64 %1005, 3
  store i64 %1006, i64* %PC.i802
  %1007 = inttoptr i64 %1002 to i32*
  store i32 %1003, i32* %1007
  store %struct.Memory* %loadMem_47b927, %struct.Memory** %MEMORY
  %loadMem_47b92a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1008 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1009 = getelementptr inbounds %struct.GPR, %struct.GPR* %1008, i32 0, i32 33
  %1010 = getelementptr inbounds %struct.Reg, %struct.Reg* %1009, i32 0, i32 0
  %PC.i799 = bitcast %union.anon* %1010 to i64*
  %1011 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1012 = getelementptr inbounds %struct.GPR, %struct.GPR* %1011, i32 0, i32 7
  %1013 = getelementptr inbounds %struct.Reg, %struct.Reg* %1012, i32 0, i32 0
  %RDX.i800 = bitcast %union.anon* %1013 to i64*
  %1014 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1015 = getelementptr inbounds %struct.GPR, %struct.GPR* %1014, i32 0, i32 15
  %1016 = getelementptr inbounds %struct.Reg, %struct.Reg* %1015, i32 0, i32 0
  %RBP.i801 = bitcast %union.anon* %1016 to i64*
  %1017 = load i64, i64* %RBP.i801
  %1018 = sub i64 %1017, 16
  %1019 = load i64, i64* %PC.i799
  %1020 = add i64 %1019, 4
  store i64 %1020, i64* %PC.i799
  %1021 = inttoptr i64 %1018 to i32*
  %1022 = load i32, i32* %1021
  %1023 = sext i32 %1022 to i64
  store i64 %1023, i64* %RDX.i800, align 8
  store %struct.Memory* %loadMem_47b92a, %struct.Memory** %MEMORY
  %loadMem_47b92e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1024 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1025 = getelementptr inbounds %struct.GPR, %struct.GPR* %1024, i32 0, i32 33
  %1026 = getelementptr inbounds %struct.Reg, %struct.Reg* %1025, i32 0, i32 0
  %PC.i796 = bitcast %union.anon* %1026 to i64*
  %1027 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1028 = getelementptr inbounds %struct.GPR, %struct.GPR* %1027, i32 0, i32 7
  %1029 = getelementptr inbounds %struct.Reg, %struct.Reg* %1028, i32 0, i32 0
  %RDX.i797 = bitcast %union.anon* %1029 to i64*
  %1030 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1031 = getelementptr inbounds %struct.GPR, %struct.GPR* %1030, i32 0, i32 11
  %1032 = getelementptr inbounds %struct.Reg, %struct.Reg* %1031, i32 0, i32 0
  %RDI.i798 = bitcast %union.anon* %1032 to i64*
  %1033 = load i64, i64* %RDX.i797
  %1034 = mul i64 %1033, 2
  %1035 = add i64 %1034, 7404928
  %1036 = load i64, i64* %PC.i796
  %1037 = add i64 %1036, 8
  store i64 %1037, i64* %PC.i796
  %1038 = inttoptr i64 %1035 to i16*
  %1039 = load i16, i16* %1038
  %1040 = sext i16 %1039 to i64
  %1041 = and i64 %1040, 4294967295
  store i64 %1041, i64* %RDI.i798, align 8
  store %struct.Memory* %loadMem_47b92e, %struct.Memory** %MEMORY
  %loadMem_47b936 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1042 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1043 = getelementptr inbounds %struct.GPR, %struct.GPR* %1042, i32 0, i32 33
  %1044 = getelementptr inbounds %struct.Reg, %struct.Reg* %1043, i32 0, i32 0
  %PC.i793 = bitcast %union.anon* %1044 to i64*
  %1045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1046 = getelementptr inbounds %struct.GPR, %struct.GPR* %1045, i32 0, i32 5
  %1047 = getelementptr inbounds %struct.Reg, %struct.Reg* %1046, i32 0, i32 0
  %RCX.i794 = bitcast %union.anon* %1047 to i64*
  %1048 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1049 = getelementptr inbounds %struct.GPR, %struct.GPR* %1048, i32 0, i32 15
  %1050 = getelementptr inbounds %struct.Reg, %struct.Reg* %1049, i32 0, i32 0
  %RBP.i795 = bitcast %union.anon* %1050 to i64*
  %1051 = load i64, i64* %RBP.i795
  %1052 = sub i64 %1051, 20
  %1053 = load i64, i64* %PC.i793
  %1054 = add i64 %1053, 3
  store i64 %1054, i64* %PC.i793
  %1055 = inttoptr i64 %1052 to i32*
  %1056 = load i32, i32* %1055
  %1057 = zext i32 %1056 to i64
  store i64 %1057, i64* %RCX.i794, align 8
  store %struct.Memory* %loadMem_47b936, %struct.Memory** %MEMORY
  %loadMem_47b939 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1058 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1059 = getelementptr inbounds %struct.GPR, %struct.GPR* %1058, i32 0, i32 33
  %1060 = getelementptr inbounds %struct.Reg, %struct.Reg* %1059, i32 0, i32 0
  %PC.i789 = bitcast %union.anon* %1060 to i64*
  %1061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1062 = getelementptr inbounds %struct.GPR, %struct.GPR* %1061, i32 0, i32 5
  %1063 = getelementptr inbounds %struct.Reg, %struct.Reg* %1062, i32 0, i32 0
  %1064 = bitcast %union.anon* %1063 to %struct.anon.2*
  %CL.i790 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1064, i32 0, i32 0
  %1065 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1066 = getelementptr inbounds %struct.GPR, %struct.GPR* %1065, i32 0, i32 11
  %1067 = getelementptr inbounds %struct.Reg, %struct.Reg* %1066, i32 0, i32 0
  %RDI.i791 = bitcast %union.anon* %1067 to i64*
  %1068 = load i64, i64* %RDI.i791
  %1069 = load i8, i8* %CL.i790
  %1070 = zext i8 %1069 to i64
  %1071 = load i64, i64* %PC.i789
  %1072 = add i64 %1071, 2
  store i64 %1072, i64* %PC.i789
  %1073 = trunc i64 %1070 to i5
  switch i5 %1073, label %1080 [
    i5 0, label %routine_shll__cl___edi.exit792
    i5 1, label %1074
  ]

; <label>:1074:                                   ; preds = %routine_shll__cl___edi.exit828
  %1075 = trunc i64 %1068 to i32
  %1076 = shl i32 %1075, 1
  %1077 = icmp slt i32 %1075, 0
  %1078 = icmp slt i32 %1076, 0
  %1079 = xor i1 %1077, %1078
  br label %1089

; <label>:1080:                                   ; preds = %routine_shll__cl___edi.exit828
  %1081 = and i64 %1070, 31
  %1082 = add i64 %1081, 4294967295
  %1083 = and i64 %1068, 4294967295
  %1084 = and i64 %1082, 4294967295
  %1085 = shl i64 %1083, %1084
  %1086 = trunc i64 %1085 to i32
  %1087 = icmp slt i32 %1086, 0
  %1088 = shl i32 %1086, 1
  br label %1089

; <label>:1089:                                   ; preds = %1080, %1074
  %1090 = phi i1 [ %1077, %1074 ], [ %1087, %1080 ]
  %1091 = phi i1 [ %1079, %1074 ], [ false, %1080 ]
  %1092 = phi i32 [ %1076, %1074 ], [ %1088, %1080 ]
  %1093 = zext i32 %1092 to i64
  store i64 %1093, i64* %RDI.i791, align 8
  %1094 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1095 = zext i1 %1090 to i8
  store i8 %1095, i8* %1094, align 1
  %1096 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1097 = and i32 %1092, 254
  %1098 = call i32 @llvm.ctpop.i32(i32 %1097)
  %1099 = trunc i32 %1098 to i8
  %1100 = and i8 %1099, 1
  %1101 = xor i8 %1100, 1
  store i8 %1101, i8* %1096, align 1
  %1102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1102, align 1
  %1103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1104 = icmp eq i32 %1092, 0
  %1105 = zext i1 %1104 to i8
  store i8 %1105, i8* %1103, align 1
  %1106 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1107 = lshr i32 %1092, 31
  %1108 = trunc i32 %1107 to i8
  store i8 %1108, i8* %1106, align 1
  %1109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1110 = zext i1 %1091 to i8
  store i8 %1110, i8* %1109, align 1
  br label %routine_shll__cl___edi.exit792

routine_shll__cl___edi.exit792:                   ; preds = %routine_shll__cl___edi.exit828, %1089
  store %struct.Memory* %loadMem_47b939, %struct.Memory** %MEMORY
  %loadMem_47b93b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1112 = getelementptr inbounds %struct.GPR, %struct.GPR* %1111, i32 0, i32 33
  %1113 = getelementptr inbounds %struct.Reg, %struct.Reg* %1112, i32 0, i32 0
  %PC.i786 = bitcast %union.anon* %1113 to i64*
  %1114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1115 = getelementptr inbounds %struct.GPR, %struct.GPR* %1114, i32 0, i32 7
  %1116 = getelementptr inbounds %struct.Reg, %struct.Reg* %1115, i32 0, i32 0
  %RDX.i787 = bitcast %union.anon* %1116 to i64*
  %1117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1118 = getelementptr inbounds %struct.GPR, %struct.GPR* %1117, i32 0, i32 15
  %1119 = getelementptr inbounds %struct.Reg, %struct.Reg* %1118, i32 0, i32 0
  %RBP.i788 = bitcast %union.anon* %1119 to i64*
  %1120 = load i64, i64* %RBP.i788
  %1121 = sub i64 %1120, 12
  %1122 = load i64, i64* %PC.i786
  %1123 = add i64 %1122, 4
  store i64 %1123, i64* %PC.i786
  %1124 = inttoptr i64 %1121 to i32*
  %1125 = load i32, i32* %1124
  %1126 = sext i32 %1125 to i64
  store i64 %1126, i64* %RDX.i787, align 8
  store %struct.Memory* %loadMem_47b93b, %struct.Memory** %MEMORY
  %loadMem_47b93f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1128 = getelementptr inbounds %struct.GPR, %struct.GPR* %1127, i32 0, i32 33
  %1129 = getelementptr inbounds %struct.Reg, %struct.Reg* %1128, i32 0, i32 0
  %PC.i784 = bitcast %union.anon* %1129 to i64*
  %1130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1131 = getelementptr inbounds %struct.GPR, %struct.GPR* %1130, i32 0, i32 7
  %1132 = getelementptr inbounds %struct.Reg, %struct.Reg* %1131, i32 0, i32 0
  %RDX.i785 = bitcast %union.anon* %1132 to i64*
  %1133 = load i64, i64* %RDX.i785
  %1134 = load i64, i64* %PC.i784
  %1135 = add i64 %1134, 4
  store i64 %1135, i64* %PC.i784
  %1136 = shl i64 %1133, 5
  %1137 = icmp slt i64 %1136, 0
  %1138 = shl i64 %1136, 1
  store i64 %1138, i64* %RDX.i785, align 8
  %1139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1140 = zext i1 %1137 to i8
  store i8 %1140, i8* %1139, align 1
  %1141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1142 = trunc i64 %1138 to i32
  %1143 = and i32 %1142, 254
  %1144 = call i32 @llvm.ctpop.i32(i32 %1143)
  %1145 = trunc i32 %1144 to i8
  %1146 = and i8 %1145, 1
  %1147 = xor i8 %1146, 1
  store i8 %1147, i8* %1141, align 1
  %1148 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1148, align 1
  %1149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1150 = icmp eq i64 %1138, 0
  %1151 = zext i1 %1150 to i8
  store i8 %1151, i8* %1149, align 1
  %1152 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1153 = lshr i64 %1138, 63
  %1154 = trunc i64 %1153 to i8
  store i8 %1154, i8* %1152, align 1
  %1155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1155, align 1
  store %struct.Memory* %loadMem_47b93f, %struct.Memory** %MEMORY
  %loadMem_47b943 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1157 = getelementptr inbounds %struct.GPR, %struct.GPR* %1156, i32 0, i32 33
  %1158 = getelementptr inbounds %struct.Reg, %struct.Reg* %1157, i32 0, i32 0
  %PC.i781 = bitcast %union.anon* %1158 to i64*
  %1159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1160 = getelementptr inbounds %struct.GPR, %struct.GPR* %1159, i32 0, i32 1
  %1161 = getelementptr inbounds %struct.Reg, %struct.Reg* %1160, i32 0, i32 0
  %RAX.i782 = bitcast %union.anon* %1161 to i64*
  %1162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1163 = getelementptr inbounds %struct.GPR, %struct.GPR* %1162, i32 0, i32 7
  %1164 = getelementptr inbounds %struct.Reg, %struct.Reg* %1163, i32 0, i32 0
  %RDX.i783 = bitcast %union.anon* %1164 to i64*
  %1165 = load i64, i64* %RAX.i782
  %1166 = load i64, i64* %RDX.i783
  %1167 = load i64, i64* %PC.i781
  %1168 = add i64 %1167, 3
  store i64 %1168, i64* %PC.i781
  %1169 = add i64 %1166, %1165
  store i64 %1169, i64* %RAX.i782, align 8
  %1170 = icmp ult i64 %1169, %1165
  %1171 = icmp ult i64 %1169, %1166
  %1172 = or i1 %1170, %1171
  %1173 = zext i1 %1172 to i8
  %1174 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1173, i8* %1174, align 1
  %1175 = trunc i64 %1169 to i32
  %1176 = and i32 %1175, 255
  %1177 = call i32 @llvm.ctpop.i32(i32 %1176)
  %1178 = trunc i32 %1177 to i8
  %1179 = and i8 %1178, 1
  %1180 = xor i8 %1179, 1
  %1181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1180, i8* %1181, align 1
  %1182 = xor i64 %1166, %1165
  %1183 = xor i64 %1182, %1169
  %1184 = lshr i64 %1183, 4
  %1185 = trunc i64 %1184 to i8
  %1186 = and i8 %1185, 1
  %1187 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1186, i8* %1187, align 1
  %1188 = icmp eq i64 %1169, 0
  %1189 = zext i1 %1188 to i8
  %1190 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1189, i8* %1190, align 1
  %1191 = lshr i64 %1169, 63
  %1192 = trunc i64 %1191 to i8
  %1193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1192, i8* %1193, align 1
  %1194 = lshr i64 %1165, 63
  %1195 = lshr i64 %1166, 63
  %1196 = xor i64 %1191, %1194
  %1197 = xor i64 %1191, %1195
  %1198 = add i64 %1196, %1197
  %1199 = icmp eq i64 %1198, 2
  %1200 = zext i1 %1199 to i8
  %1201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1200, i8* %1201, align 1
  store %struct.Memory* %loadMem_47b943, %struct.Memory** %MEMORY
  %loadMem_47b946 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1203 = getelementptr inbounds %struct.GPR, %struct.GPR* %1202, i32 0, i32 33
  %1204 = getelementptr inbounds %struct.Reg, %struct.Reg* %1203, i32 0, i32 0
  %PC.i778 = bitcast %union.anon* %1204 to i64*
  %1205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1206 = getelementptr inbounds %struct.GPR, %struct.GPR* %1205, i32 0, i32 7
  %1207 = getelementptr inbounds %struct.Reg, %struct.Reg* %1206, i32 0, i32 0
  %RDX.i779 = bitcast %union.anon* %1207 to i64*
  %1208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1209 = getelementptr inbounds %struct.GPR, %struct.GPR* %1208, i32 0, i32 15
  %1210 = getelementptr inbounds %struct.Reg, %struct.Reg* %1209, i32 0, i32 0
  %RBP.i780 = bitcast %union.anon* %1210 to i64*
  %1211 = load i64, i64* %RBP.i780
  %1212 = sub i64 %1211, 8
  %1213 = load i64, i64* %PC.i778
  %1214 = add i64 %1213, 4
  store i64 %1214, i64* %PC.i778
  %1215 = inttoptr i64 %1212 to i32*
  %1216 = load i32, i32* %1215
  %1217 = sext i32 %1216 to i64
  store i64 %1217, i64* %RDX.i779, align 8
  store %struct.Memory* %loadMem_47b946, %struct.Memory** %MEMORY
  %loadMem_47b94a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1219 = getelementptr inbounds %struct.GPR, %struct.GPR* %1218, i32 0, i32 33
  %1220 = getelementptr inbounds %struct.Reg, %struct.Reg* %1219, i32 0, i32 0
  %PC.i776 = bitcast %union.anon* %1220 to i64*
  %1221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1222 = getelementptr inbounds %struct.GPR, %struct.GPR* %1221, i32 0, i32 7
  %1223 = getelementptr inbounds %struct.Reg, %struct.Reg* %1222, i32 0, i32 0
  %RDX.i777 = bitcast %union.anon* %1223 to i64*
  %1224 = load i64, i64* %RDX.i777
  %1225 = load i64, i64* %PC.i776
  %1226 = add i64 %1225, 4
  store i64 %1226, i64* %PC.i776
  %1227 = shl i64 %1224, 3
  %1228 = icmp slt i64 %1227, 0
  %1229 = shl i64 %1227, 1
  store i64 %1229, i64* %RDX.i777, align 8
  %1230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1231 = zext i1 %1228 to i8
  store i8 %1231, i8* %1230, align 1
  %1232 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1233 = trunc i64 %1229 to i32
  %1234 = and i32 %1233, 254
  %1235 = call i32 @llvm.ctpop.i32(i32 %1234)
  %1236 = trunc i32 %1235 to i8
  %1237 = and i8 %1236, 1
  %1238 = xor i8 %1237, 1
  store i8 %1238, i8* %1232, align 1
  %1239 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1239, align 1
  %1240 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1241 = icmp eq i64 %1229, 0
  %1242 = zext i1 %1241 to i8
  store i8 %1242, i8* %1240, align 1
  %1243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1244 = lshr i64 %1229, 63
  %1245 = trunc i64 %1244 to i8
  store i8 %1245, i8* %1243, align 1
  %1246 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1246, align 1
  store %struct.Memory* %loadMem_47b94a, %struct.Memory** %MEMORY
  %loadMem_47b94e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1248 = getelementptr inbounds %struct.GPR, %struct.GPR* %1247, i32 0, i32 33
  %1249 = getelementptr inbounds %struct.Reg, %struct.Reg* %1248, i32 0, i32 0
  %PC.i773 = bitcast %union.anon* %1249 to i64*
  %1250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1251 = getelementptr inbounds %struct.GPR, %struct.GPR* %1250, i32 0, i32 1
  %1252 = getelementptr inbounds %struct.Reg, %struct.Reg* %1251, i32 0, i32 0
  %RAX.i774 = bitcast %union.anon* %1252 to i64*
  %1253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1254 = getelementptr inbounds %struct.GPR, %struct.GPR* %1253, i32 0, i32 7
  %1255 = getelementptr inbounds %struct.Reg, %struct.Reg* %1254, i32 0, i32 0
  %RDX.i775 = bitcast %union.anon* %1255 to i64*
  %1256 = load i64, i64* %RAX.i774
  %1257 = load i64, i64* %RDX.i775
  %1258 = load i64, i64* %PC.i773
  %1259 = add i64 %1258, 3
  store i64 %1259, i64* %PC.i773
  %1260 = add i64 %1257, %1256
  store i64 %1260, i64* %RAX.i774, align 8
  %1261 = icmp ult i64 %1260, %1256
  %1262 = icmp ult i64 %1260, %1257
  %1263 = or i1 %1261, %1262
  %1264 = zext i1 %1263 to i8
  %1265 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1264, i8* %1265, align 1
  %1266 = trunc i64 %1260 to i32
  %1267 = and i32 %1266, 255
  %1268 = call i32 @llvm.ctpop.i32(i32 %1267)
  %1269 = trunc i32 %1268 to i8
  %1270 = and i8 %1269, 1
  %1271 = xor i8 %1270, 1
  %1272 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1271, i8* %1272, align 1
  %1273 = xor i64 %1257, %1256
  %1274 = xor i64 %1273, %1260
  %1275 = lshr i64 %1274, 4
  %1276 = trunc i64 %1275 to i8
  %1277 = and i8 %1276, 1
  %1278 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1277, i8* %1278, align 1
  %1279 = icmp eq i64 %1260, 0
  %1280 = zext i1 %1279 to i8
  %1281 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1280, i8* %1281, align 1
  %1282 = lshr i64 %1260, 63
  %1283 = trunc i64 %1282 to i8
  %1284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1283, i8* %1284, align 1
  %1285 = lshr i64 %1256, 63
  %1286 = lshr i64 %1257, 63
  %1287 = xor i64 %1282, %1285
  %1288 = xor i64 %1282, %1286
  %1289 = add i64 %1287, %1288
  %1290 = icmp eq i64 %1289, 2
  %1291 = zext i1 %1290 to i8
  %1292 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1291, i8* %1292, align 1
  store %struct.Memory* %loadMem_47b94e, %struct.Memory** %MEMORY
  %loadMem_47b951 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1294 = getelementptr inbounds %struct.GPR, %struct.GPR* %1293, i32 0, i32 33
  %1295 = getelementptr inbounds %struct.Reg, %struct.Reg* %1294, i32 0, i32 0
  %PC.i770 = bitcast %union.anon* %1295 to i64*
  %1296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1297 = getelementptr inbounds %struct.GPR, %struct.GPR* %1296, i32 0, i32 7
  %1298 = getelementptr inbounds %struct.Reg, %struct.Reg* %1297, i32 0, i32 0
  %RDX.i771 = bitcast %union.anon* %1298 to i64*
  %1299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1300 = getelementptr inbounds %struct.GPR, %struct.GPR* %1299, i32 0, i32 15
  %1301 = getelementptr inbounds %struct.Reg, %struct.Reg* %1300, i32 0, i32 0
  %RBP.i772 = bitcast %union.anon* %1301 to i64*
  %1302 = load i64, i64* %RBP.i772
  %1303 = sub i64 %1302, 4
  %1304 = load i64, i64* %PC.i770
  %1305 = add i64 %1304, 4
  store i64 %1305, i64* %PC.i770
  %1306 = inttoptr i64 %1303 to i32*
  %1307 = load i32, i32* %1306
  %1308 = sext i32 %1307 to i64
  store i64 %1308, i64* %RDX.i771, align 8
  store %struct.Memory* %loadMem_47b951, %struct.Memory** %MEMORY
  %loadMem_47b955 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1310 = getelementptr inbounds %struct.GPR, %struct.GPR* %1309, i32 0, i32 33
  %1311 = getelementptr inbounds %struct.Reg, %struct.Reg* %1310, i32 0, i32 0
  %PC.i766 = bitcast %union.anon* %1311 to i64*
  %1312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1313 = getelementptr inbounds %struct.GPR, %struct.GPR* %1312, i32 0, i32 11
  %1314 = getelementptr inbounds %struct.Reg, %struct.Reg* %1313, i32 0, i32 0
  %EDI.i767 = bitcast %union.anon* %1314 to i32*
  %1315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1316 = getelementptr inbounds %struct.GPR, %struct.GPR* %1315, i32 0, i32 1
  %1317 = getelementptr inbounds %struct.Reg, %struct.Reg* %1316, i32 0, i32 0
  %RAX.i768 = bitcast %union.anon* %1317 to i64*
  %1318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1319 = getelementptr inbounds %struct.GPR, %struct.GPR* %1318, i32 0, i32 7
  %1320 = getelementptr inbounds %struct.Reg, %struct.Reg* %1319, i32 0, i32 0
  %RDX.i769 = bitcast %union.anon* %1320 to i64*
  %1321 = load i64, i64* %RAX.i768
  %1322 = load i64, i64* %RDX.i769
  %1323 = mul i64 %1322, 4
  %1324 = add i64 %1323, %1321
  %1325 = load i32, i32* %EDI.i767
  %1326 = zext i32 %1325 to i64
  %1327 = load i64, i64* %PC.i766
  %1328 = add i64 %1327, 3
  store i64 %1328, i64* %PC.i766
  %1329 = inttoptr i64 %1324 to i32*
  store i32 %1325, i32* %1329
  store %struct.Memory* %loadMem_47b955, %struct.Memory** %MEMORY
  %loadMem_47b958 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1331 = getelementptr inbounds %struct.GPR, %struct.GPR* %1330, i32 0, i32 33
  %1332 = getelementptr inbounds %struct.Reg, %struct.Reg* %1331, i32 0, i32 0
  %PC.i763 = bitcast %union.anon* %1332 to i64*
  %1333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1334 = getelementptr inbounds %struct.GPR, %struct.GPR* %1333, i32 0, i32 1
  %1335 = getelementptr inbounds %struct.Reg, %struct.Reg* %1334, i32 0, i32 0
  %RAX.i764 = bitcast %union.anon* %1335 to i64*
  %1336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1337 = getelementptr inbounds %struct.GPR, %struct.GPR* %1336, i32 0, i32 15
  %1338 = getelementptr inbounds %struct.Reg, %struct.Reg* %1337, i32 0, i32 0
  %RBP.i765 = bitcast %union.anon* %1338 to i64*
  %1339 = load i64, i64* %RBP.i765
  %1340 = sub i64 %1339, 16
  %1341 = load i64, i64* %PC.i763
  %1342 = add i64 %1341, 4
  store i64 %1342, i64* %PC.i763
  %1343 = inttoptr i64 %1340 to i32*
  %1344 = load i32, i32* %1343
  %1345 = sext i32 %1344 to i64
  store i64 %1345, i64* %RAX.i764, align 8
  store %struct.Memory* %loadMem_47b958, %struct.Memory** %MEMORY
  %loadMem_47b95c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1347 = getelementptr inbounds %struct.GPR, %struct.GPR* %1346, i32 0, i32 33
  %1348 = getelementptr inbounds %struct.Reg, %struct.Reg* %1347, i32 0, i32 0
  %PC.i760 = bitcast %union.anon* %1348 to i64*
  %1349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1350 = getelementptr inbounds %struct.GPR, %struct.GPR* %1349, i32 0, i32 1
  %1351 = getelementptr inbounds %struct.Reg, %struct.Reg* %1350, i32 0, i32 0
  %RAX.i761 = bitcast %union.anon* %1351 to i64*
  %1352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1353 = getelementptr inbounds %struct.GPR, %struct.GPR* %1352, i32 0, i32 11
  %1354 = getelementptr inbounds %struct.Reg, %struct.Reg* %1353, i32 0, i32 0
  %RDI.i762 = bitcast %union.anon* %1354 to i64*
  %1355 = load i64, i64* %RAX.i761
  %1356 = mul i64 %1355, 2
  %1357 = add i64 %1356, 7404960
  %1358 = load i64, i64* %PC.i760
  %1359 = add i64 %1358, 8
  store i64 %1359, i64* %PC.i760
  %1360 = inttoptr i64 %1357 to i16*
  %1361 = load i16, i16* %1360
  %1362 = sext i16 %1361 to i64
  %1363 = and i64 %1362, 4294967295
  store i64 %1363, i64* %RDI.i762, align 8
  store %struct.Memory* %loadMem_47b95c, %struct.Memory** %MEMORY
  %loadMem_47b964 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1365 = getelementptr inbounds %struct.GPR, %struct.GPR* %1364, i32 0, i32 33
  %1366 = getelementptr inbounds %struct.Reg, %struct.Reg* %1365, i32 0, i32 0
  %PC.i757 = bitcast %union.anon* %1366 to i64*
  %1367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1368 = getelementptr inbounds %struct.GPR, %struct.GPR* %1367, i32 0, i32 5
  %1369 = getelementptr inbounds %struct.Reg, %struct.Reg* %1368, i32 0, i32 0
  %RCX.i758 = bitcast %union.anon* %1369 to i64*
  %1370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1371 = getelementptr inbounds %struct.GPR, %struct.GPR* %1370, i32 0, i32 15
  %1372 = getelementptr inbounds %struct.Reg, %struct.Reg* %1371, i32 0, i32 0
  %RBP.i759 = bitcast %union.anon* %1372 to i64*
  %1373 = load i64, i64* %RBP.i759
  %1374 = sub i64 %1373, 20
  %1375 = load i64, i64* %PC.i757
  %1376 = add i64 %1375, 3
  store i64 %1376, i64* %PC.i757
  %1377 = inttoptr i64 %1374 to i32*
  %1378 = load i32, i32* %1377
  %1379 = zext i32 %1378 to i64
  store i64 %1379, i64* %RCX.i758, align 8
  store %struct.Memory* %loadMem_47b964, %struct.Memory** %MEMORY
  %loadMem_47b967 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1381 = getelementptr inbounds %struct.GPR, %struct.GPR* %1380, i32 0, i32 33
  %1382 = getelementptr inbounds %struct.Reg, %struct.Reg* %1381, i32 0, i32 0
  %PC.i753 = bitcast %union.anon* %1382 to i64*
  %1383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1384 = getelementptr inbounds %struct.GPR, %struct.GPR* %1383, i32 0, i32 5
  %1385 = getelementptr inbounds %struct.Reg, %struct.Reg* %1384, i32 0, i32 0
  %1386 = bitcast %union.anon* %1385 to %struct.anon.2*
  %CL.i754 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1386, i32 0, i32 0
  %1387 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1388 = getelementptr inbounds %struct.GPR, %struct.GPR* %1387, i32 0, i32 11
  %1389 = getelementptr inbounds %struct.Reg, %struct.Reg* %1388, i32 0, i32 0
  %RDI.i755 = bitcast %union.anon* %1389 to i64*
  %1390 = load i64, i64* %RDI.i755
  %1391 = load i8, i8* %CL.i754
  %1392 = zext i8 %1391 to i64
  %1393 = load i64, i64* %PC.i753
  %1394 = add i64 %1393, 2
  store i64 %1394, i64* %PC.i753
  %1395 = trunc i64 %1392 to i5
  switch i5 %1395, label %1402 [
    i5 0, label %routine_shll__cl___edi.exit756
    i5 1, label %1396
  ]

; <label>:1396:                                   ; preds = %routine_shll__cl___edi.exit792
  %1397 = trunc i64 %1390 to i32
  %1398 = shl i32 %1397, 1
  %1399 = icmp slt i32 %1397, 0
  %1400 = icmp slt i32 %1398, 0
  %1401 = xor i1 %1399, %1400
  br label %1411

; <label>:1402:                                   ; preds = %routine_shll__cl___edi.exit792
  %1403 = and i64 %1392, 31
  %1404 = add i64 %1403, 4294967295
  %1405 = and i64 %1390, 4294967295
  %1406 = and i64 %1404, 4294967295
  %1407 = shl i64 %1405, %1406
  %1408 = trunc i64 %1407 to i32
  %1409 = icmp slt i32 %1408, 0
  %1410 = shl i32 %1408, 1
  br label %1411

; <label>:1411:                                   ; preds = %1402, %1396
  %1412 = phi i1 [ %1399, %1396 ], [ %1409, %1402 ]
  %1413 = phi i1 [ %1401, %1396 ], [ false, %1402 ]
  %1414 = phi i32 [ %1398, %1396 ], [ %1410, %1402 ]
  %1415 = zext i32 %1414 to i64
  store i64 %1415, i64* %RDI.i755, align 8
  %1416 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1417 = zext i1 %1412 to i8
  store i8 %1417, i8* %1416, align 1
  %1418 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1419 = and i32 %1414, 254
  %1420 = call i32 @llvm.ctpop.i32(i32 %1419)
  %1421 = trunc i32 %1420 to i8
  %1422 = and i8 %1421, 1
  %1423 = xor i8 %1422, 1
  store i8 %1423, i8* %1418, align 1
  %1424 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1424, align 1
  %1425 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1426 = icmp eq i32 %1414, 0
  %1427 = zext i1 %1426 to i8
  store i8 %1427, i8* %1425, align 1
  %1428 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1429 = lshr i32 %1414, 31
  %1430 = trunc i32 %1429 to i8
  store i8 %1430, i8* %1428, align 1
  %1431 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1432 = zext i1 %1413 to i8
  store i8 %1432, i8* %1431, align 1
  br label %routine_shll__cl___edi.exit756

routine_shll__cl___edi.exit756:                   ; preds = %routine_shll__cl___edi.exit792, %1411
  store %struct.Memory* %loadMem_47b967, %struct.Memory** %MEMORY
  %loadMem_47b969 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1433 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1434 = getelementptr inbounds %struct.GPR, %struct.GPR* %1433, i32 0, i32 33
  %1435 = getelementptr inbounds %struct.Reg, %struct.Reg* %1434, i32 0, i32 0
  %PC.i750 = bitcast %union.anon* %1435 to i64*
  %1436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1437 = getelementptr inbounds %struct.GPR, %struct.GPR* %1436, i32 0, i32 1
  %1438 = getelementptr inbounds %struct.Reg, %struct.Reg* %1437, i32 0, i32 0
  %RAX.i751 = bitcast %union.anon* %1438 to i64*
  %1439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1440 = getelementptr inbounds %struct.GPR, %struct.GPR* %1439, i32 0, i32 15
  %1441 = getelementptr inbounds %struct.Reg, %struct.Reg* %1440, i32 0, i32 0
  %RBP.i752 = bitcast %union.anon* %1441 to i64*
  %1442 = load i64, i64* %RBP.i752
  %1443 = sub i64 %1442, 12
  %1444 = load i64, i64* %PC.i750
  %1445 = add i64 %1444, 4
  store i64 %1445, i64* %PC.i750
  %1446 = inttoptr i64 %1443 to i32*
  %1447 = load i32, i32* %1446
  %1448 = sext i32 %1447 to i64
  store i64 %1448, i64* %RAX.i751, align 8
  store %struct.Memory* %loadMem_47b969, %struct.Memory** %MEMORY
  %loadMem_47b96d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1450 = getelementptr inbounds %struct.GPR, %struct.GPR* %1449, i32 0, i32 33
  %1451 = getelementptr inbounds %struct.Reg, %struct.Reg* %1450, i32 0, i32 0
  %PC.i748 = bitcast %union.anon* %1451 to i64*
  %1452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1453 = getelementptr inbounds %struct.GPR, %struct.GPR* %1452, i32 0, i32 1
  %1454 = getelementptr inbounds %struct.Reg, %struct.Reg* %1453, i32 0, i32 0
  %RAX.i749 = bitcast %union.anon* %1454 to i64*
  %1455 = load i64, i64* %RAX.i749
  %1456 = load i64, i64* %PC.i748
  %1457 = add i64 %1456, 4
  store i64 %1457, i64* %PC.i748
  %1458 = shl i64 %1455, 5
  %1459 = icmp slt i64 %1458, 0
  %1460 = shl i64 %1458, 1
  store i64 %1460, i64* %RAX.i749, align 8
  %1461 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1462 = zext i1 %1459 to i8
  store i8 %1462, i8* %1461, align 1
  %1463 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1464 = trunc i64 %1460 to i32
  %1465 = and i32 %1464, 254
  %1466 = call i32 @llvm.ctpop.i32(i32 %1465)
  %1467 = trunc i32 %1466 to i8
  %1468 = and i8 %1467, 1
  %1469 = xor i8 %1468, 1
  store i8 %1469, i8* %1463, align 1
  %1470 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1470, align 1
  %1471 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1472 = icmp eq i64 %1460, 0
  %1473 = zext i1 %1472 to i8
  store i8 %1473, i8* %1471, align 1
  %1474 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1475 = lshr i64 %1460, 63
  %1476 = trunc i64 %1475 to i8
  store i8 %1476, i8* %1474, align 1
  %1477 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1477, align 1
  store %struct.Memory* %loadMem_47b96d, %struct.Memory** %MEMORY
  %loadMem_47b971 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1479 = getelementptr inbounds %struct.GPR, %struct.GPR* %1478, i32 0, i32 33
  %1480 = getelementptr inbounds %struct.Reg, %struct.Reg* %1479, i32 0, i32 0
  %PC.i745 = bitcast %union.anon* %1480 to i64*
  %1481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1482 = getelementptr inbounds %struct.GPR, %struct.GPR* %1481, i32 0, i32 7
  %1483 = getelementptr inbounds %struct.Reg, %struct.Reg* %1482, i32 0, i32 0
  %RDX.i746 = bitcast %union.anon* %1483 to i64*
  %1484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1485 = getelementptr inbounds %struct.GPR, %struct.GPR* %1484, i32 0, i32 15
  %1486 = getelementptr inbounds %struct.Reg, %struct.Reg* %1485, i32 0, i32 0
  %RBP.i747 = bitcast %union.anon* %1486 to i64*
  %1487 = load i64, i64* %RBP.i747
  %1488 = sub i64 %1487, 32
  %1489 = load i64, i64* %PC.i745
  %1490 = add i64 %1489, 4
  store i64 %1490, i64* %PC.i745
  %1491 = inttoptr i64 %1488 to i64*
  %1492 = load i64, i64* %1491
  store i64 %1492, i64* %RDX.i746, align 8
  store %struct.Memory* %loadMem_47b971, %struct.Memory** %MEMORY
  %loadMem_47b975 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1494 = getelementptr inbounds %struct.GPR, %struct.GPR* %1493, i32 0, i32 33
  %1495 = getelementptr inbounds %struct.Reg, %struct.Reg* %1494, i32 0, i32 0
  %PC.i742 = bitcast %union.anon* %1495 to i64*
  %1496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1497 = getelementptr inbounds %struct.GPR, %struct.GPR* %1496, i32 0, i32 1
  %1498 = getelementptr inbounds %struct.Reg, %struct.Reg* %1497, i32 0, i32 0
  %RAX.i743 = bitcast %union.anon* %1498 to i64*
  %1499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1500 = getelementptr inbounds %struct.GPR, %struct.GPR* %1499, i32 0, i32 7
  %1501 = getelementptr inbounds %struct.Reg, %struct.Reg* %1500, i32 0, i32 0
  %RDX.i744 = bitcast %union.anon* %1501 to i64*
  %1502 = load i64, i64* %RDX.i744
  %1503 = load i64, i64* %RAX.i743
  %1504 = load i64, i64* %PC.i742
  %1505 = add i64 %1504, 3
  store i64 %1505, i64* %PC.i742
  %1506 = add i64 %1503, %1502
  store i64 %1506, i64* %RDX.i744, align 8
  %1507 = icmp ult i64 %1506, %1502
  %1508 = icmp ult i64 %1506, %1503
  %1509 = or i1 %1507, %1508
  %1510 = zext i1 %1509 to i8
  %1511 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1510, i8* %1511, align 1
  %1512 = trunc i64 %1506 to i32
  %1513 = and i32 %1512, 255
  %1514 = call i32 @llvm.ctpop.i32(i32 %1513)
  %1515 = trunc i32 %1514 to i8
  %1516 = and i8 %1515, 1
  %1517 = xor i8 %1516, 1
  %1518 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1517, i8* %1518, align 1
  %1519 = xor i64 %1503, %1502
  %1520 = xor i64 %1519, %1506
  %1521 = lshr i64 %1520, 4
  %1522 = trunc i64 %1521 to i8
  %1523 = and i8 %1522, 1
  %1524 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1523, i8* %1524, align 1
  %1525 = icmp eq i64 %1506, 0
  %1526 = zext i1 %1525 to i8
  %1527 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1526, i8* %1527, align 1
  %1528 = lshr i64 %1506, 63
  %1529 = trunc i64 %1528 to i8
  %1530 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1529, i8* %1530, align 1
  %1531 = lshr i64 %1502, 63
  %1532 = lshr i64 %1503, 63
  %1533 = xor i64 %1528, %1531
  %1534 = xor i64 %1528, %1532
  %1535 = add i64 %1533, %1534
  %1536 = icmp eq i64 %1535, 2
  %1537 = zext i1 %1536 to i8
  %1538 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1537, i8* %1538, align 1
  store %struct.Memory* %loadMem_47b975, %struct.Memory** %MEMORY
  %loadMem_47b978 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1539 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1540 = getelementptr inbounds %struct.GPR, %struct.GPR* %1539, i32 0, i32 33
  %1541 = getelementptr inbounds %struct.Reg, %struct.Reg* %1540, i32 0, i32 0
  %PC.i739 = bitcast %union.anon* %1541 to i64*
  %1542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1543 = getelementptr inbounds %struct.GPR, %struct.GPR* %1542, i32 0, i32 1
  %1544 = getelementptr inbounds %struct.Reg, %struct.Reg* %1543, i32 0, i32 0
  %RAX.i740 = bitcast %union.anon* %1544 to i64*
  %1545 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1546 = getelementptr inbounds %struct.GPR, %struct.GPR* %1545, i32 0, i32 15
  %1547 = getelementptr inbounds %struct.Reg, %struct.Reg* %1546, i32 0, i32 0
  %RBP.i741 = bitcast %union.anon* %1547 to i64*
  %1548 = load i64, i64* %RBP.i741
  %1549 = sub i64 %1548, 8
  %1550 = load i64, i64* %PC.i739
  %1551 = add i64 %1550, 4
  store i64 %1551, i64* %PC.i739
  %1552 = inttoptr i64 %1549 to i32*
  %1553 = load i32, i32* %1552
  %1554 = sext i32 %1553 to i64
  store i64 %1554, i64* %RAX.i740, align 8
  store %struct.Memory* %loadMem_47b978, %struct.Memory** %MEMORY
  %loadMem_47b97c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1556 = getelementptr inbounds %struct.GPR, %struct.GPR* %1555, i32 0, i32 33
  %1557 = getelementptr inbounds %struct.Reg, %struct.Reg* %1556, i32 0, i32 0
  %PC.i737 = bitcast %union.anon* %1557 to i64*
  %1558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1559 = getelementptr inbounds %struct.GPR, %struct.GPR* %1558, i32 0, i32 1
  %1560 = getelementptr inbounds %struct.Reg, %struct.Reg* %1559, i32 0, i32 0
  %RAX.i738 = bitcast %union.anon* %1560 to i64*
  %1561 = load i64, i64* %RAX.i738
  %1562 = load i64, i64* %PC.i737
  %1563 = add i64 %1562, 4
  store i64 %1563, i64* %PC.i737
  %1564 = shl i64 %1561, 3
  %1565 = icmp slt i64 %1564, 0
  %1566 = shl i64 %1564, 1
  store i64 %1566, i64* %RAX.i738, align 8
  %1567 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1568 = zext i1 %1565 to i8
  store i8 %1568, i8* %1567, align 1
  %1569 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1570 = trunc i64 %1566 to i32
  %1571 = and i32 %1570, 254
  %1572 = call i32 @llvm.ctpop.i32(i32 %1571)
  %1573 = trunc i32 %1572 to i8
  %1574 = and i8 %1573, 1
  %1575 = xor i8 %1574, 1
  store i8 %1575, i8* %1569, align 1
  %1576 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1576, align 1
  %1577 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1578 = icmp eq i64 %1566, 0
  %1579 = zext i1 %1578 to i8
  store i8 %1579, i8* %1577, align 1
  %1580 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1581 = lshr i64 %1566, 63
  %1582 = trunc i64 %1581 to i8
  store i8 %1582, i8* %1580, align 1
  %1583 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1583, align 1
  store %struct.Memory* %loadMem_47b97c, %struct.Memory** %MEMORY
  %loadMem_47b980 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1584 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1585 = getelementptr inbounds %struct.GPR, %struct.GPR* %1584, i32 0, i32 33
  %1586 = getelementptr inbounds %struct.Reg, %struct.Reg* %1585, i32 0, i32 0
  %PC.i734 = bitcast %union.anon* %1586 to i64*
  %1587 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1588 = getelementptr inbounds %struct.GPR, %struct.GPR* %1587, i32 0, i32 1
  %1589 = getelementptr inbounds %struct.Reg, %struct.Reg* %1588, i32 0, i32 0
  %RAX.i735 = bitcast %union.anon* %1589 to i64*
  %1590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1591 = getelementptr inbounds %struct.GPR, %struct.GPR* %1590, i32 0, i32 7
  %1592 = getelementptr inbounds %struct.Reg, %struct.Reg* %1591, i32 0, i32 0
  %RDX.i736 = bitcast %union.anon* %1592 to i64*
  %1593 = load i64, i64* %RDX.i736
  %1594 = load i64, i64* %RAX.i735
  %1595 = load i64, i64* %PC.i734
  %1596 = add i64 %1595, 3
  store i64 %1596, i64* %PC.i734
  %1597 = add i64 %1594, %1593
  store i64 %1597, i64* %RDX.i736, align 8
  %1598 = icmp ult i64 %1597, %1593
  %1599 = icmp ult i64 %1597, %1594
  %1600 = or i1 %1598, %1599
  %1601 = zext i1 %1600 to i8
  %1602 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1601, i8* %1602, align 1
  %1603 = trunc i64 %1597 to i32
  %1604 = and i32 %1603, 255
  %1605 = call i32 @llvm.ctpop.i32(i32 %1604)
  %1606 = trunc i32 %1605 to i8
  %1607 = and i8 %1606, 1
  %1608 = xor i8 %1607, 1
  %1609 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1608, i8* %1609, align 1
  %1610 = xor i64 %1594, %1593
  %1611 = xor i64 %1610, %1597
  %1612 = lshr i64 %1611, 4
  %1613 = trunc i64 %1612 to i8
  %1614 = and i8 %1613, 1
  %1615 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1614, i8* %1615, align 1
  %1616 = icmp eq i64 %1597, 0
  %1617 = zext i1 %1616 to i8
  %1618 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1617, i8* %1618, align 1
  %1619 = lshr i64 %1597, 63
  %1620 = trunc i64 %1619 to i8
  %1621 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1620, i8* %1621, align 1
  %1622 = lshr i64 %1593, 63
  %1623 = lshr i64 %1594, 63
  %1624 = xor i64 %1619, %1622
  %1625 = xor i64 %1619, %1623
  %1626 = add i64 %1624, %1625
  %1627 = icmp eq i64 %1626, 2
  %1628 = zext i1 %1627 to i8
  %1629 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1628, i8* %1629, align 1
  store %struct.Memory* %loadMem_47b980, %struct.Memory** %MEMORY
  %loadMem_47b983 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1631 = getelementptr inbounds %struct.GPR, %struct.GPR* %1630, i32 0, i32 33
  %1632 = getelementptr inbounds %struct.Reg, %struct.Reg* %1631, i32 0, i32 0
  %PC.i731 = bitcast %union.anon* %1632 to i64*
  %1633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1634 = getelementptr inbounds %struct.GPR, %struct.GPR* %1633, i32 0, i32 1
  %1635 = getelementptr inbounds %struct.Reg, %struct.Reg* %1634, i32 0, i32 0
  %RAX.i732 = bitcast %union.anon* %1635 to i64*
  %1636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1637 = getelementptr inbounds %struct.GPR, %struct.GPR* %1636, i32 0, i32 15
  %1638 = getelementptr inbounds %struct.Reg, %struct.Reg* %1637, i32 0, i32 0
  %RBP.i733 = bitcast %union.anon* %1638 to i64*
  %1639 = load i64, i64* %RBP.i733
  %1640 = sub i64 %1639, 4
  %1641 = load i64, i64* %PC.i731
  %1642 = add i64 %1641, 4
  store i64 %1642, i64* %PC.i731
  %1643 = inttoptr i64 %1640 to i32*
  %1644 = load i32, i32* %1643
  %1645 = sext i32 %1644 to i64
  store i64 %1645, i64* %RAX.i732, align 8
  store %struct.Memory* %loadMem_47b983, %struct.Memory** %MEMORY
  %loadMem_47b987 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1646 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1647 = getelementptr inbounds %struct.GPR, %struct.GPR* %1646, i32 0, i32 33
  %1648 = getelementptr inbounds %struct.Reg, %struct.Reg* %1647, i32 0, i32 0
  %PC.i727 = bitcast %union.anon* %1648 to i64*
  %1649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1650 = getelementptr inbounds %struct.GPR, %struct.GPR* %1649, i32 0, i32 11
  %1651 = getelementptr inbounds %struct.Reg, %struct.Reg* %1650, i32 0, i32 0
  %EDI.i728 = bitcast %union.anon* %1651 to i32*
  %1652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1653 = getelementptr inbounds %struct.GPR, %struct.GPR* %1652, i32 0, i32 1
  %1654 = getelementptr inbounds %struct.Reg, %struct.Reg* %1653, i32 0, i32 0
  %RAX.i729 = bitcast %union.anon* %1654 to i64*
  %1655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1656 = getelementptr inbounds %struct.GPR, %struct.GPR* %1655, i32 0, i32 7
  %1657 = getelementptr inbounds %struct.Reg, %struct.Reg* %1656, i32 0, i32 0
  %RDX.i730 = bitcast %union.anon* %1657 to i64*
  %1658 = load i64, i64* %RDX.i730
  %1659 = load i64, i64* %RAX.i729
  %1660 = mul i64 %1659, 4
  %1661 = add i64 %1660, %1658
  %1662 = load i32, i32* %EDI.i728
  %1663 = zext i32 %1662 to i64
  %1664 = load i64, i64* %PC.i727
  %1665 = add i64 %1664, 3
  store i64 %1665, i64* %PC.i727
  %1666 = inttoptr i64 %1661 to i32*
  store i32 %1662, i32* %1666
  store %struct.Memory* %loadMem_47b987, %struct.Memory** %MEMORY
  %loadMem_47b98a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1668 = getelementptr inbounds %struct.GPR, %struct.GPR* %1667, i32 0, i32 33
  %1669 = getelementptr inbounds %struct.Reg, %struct.Reg* %1668, i32 0, i32 0
  %PC.i726 = bitcast %union.anon* %1669 to i64*
  %1670 = load i64, i64* %PC.i726
  %1671 = add i64 %1670, 185
  %1672 = load i64, i64* %PC.i726
  %1673 = add i64 %1672, 5
  store i64 %1673, i64* %PC.i726
  %1674 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1671, i64* %1674, align 8
  store %struct.Memory* %loadMem_47b98a, %struct.Memory** %MEMORY
  br label %block_.L_47ba43

block_.L_47b98f:                                  ; preds = %block_47b8b8
  %loadMem_47b98f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1676 = getelementptr inbounds %struct.GPR, %struct.GPR* %1675, i32 0, i32 33
  %1677 = getelementptr inbounds %struct.Reg, %struct.Reg* %1676, i32 0, i32 0
  %PC.i724 = bitcast %union.anon* %1677 to i64*
  %1678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1679 = getelementptr inbounds %struct.GPR, %struct.GPR* %1678, i32 0, i32 1
  %1680 = getelementptr inbounds %struct.Reg, %struct.Reg* %1679, i32 0, i32 0
  %RAX.i725 = bitcast %union.anon* %1680 to i64*
  %1681 = load i64, i64* %PC.i724
  %1682 = add i64 %1681, 10
  store i64 %1682, i64* %PC.i724
  store i64 7490528, i64* %RAX.i725, align 8
  store %struct.Memory* %loadMem_47b98f, %struct.Memory** %MEMORY
  %loadMem_47b999 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1684 = getelementptr inbounds %struct.GPR, %struct.GPR* %1683, i32 0, i32 33
  %1685 = getelementptr inbounds %struct.Reg, %struct.Reg* %1684, i32 0, i32 0
  %PC.i721 = bitcast %union.anon* %1685 to i64*
  %1686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1687 = getelementptr inbounds %struct.GPR, %struct.GPR* %1686, i32 0, i32 1
  %1688 = getelementptr inbounds %struct.Reg, %struct.Reg* %1687, i32 0, i32 0
  %RAX.i722 = bitcast %union.anon* %1688 to i64*
  %1689 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1690 = getelementptr inbounds %struct.GPR, %struct.GPR* %1689, i32 0, i32 5
  %1691 = getelementptr inbounds %struct.Reg, %struct.Reg* %1690, i32 0, i32 0
  %RCX.i723 = bitcast %union.anon* %1691 to i64*
  %1692 = load i64, i64* %RAX.i722
  %1693 = load i64, i64* %PC.i721
  %1694 = add i64 %1693, 3
  store i64 %1694, i64* %PC.i721
  store i64 %1692, i64* %RCX.i723, align 8
  store %struct.Memory* %loadMem_47b999, %struct.Memory** %MEMORY
  %loadMem_47b99c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1695 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1696 = getelementptr inbounds %struct.GPR, %struct.GPR* %1695, i32 0, i32 33
  %1697 = getelementptr inbounds %struct.Reg, %struct.Reg* %1696, i32 0, i32 0
  %PC.i719 = bitcast %union.anon* %1697 to i64*
  %1698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1699 = getelementptr inbounds %struct.GPR, %struct.GPR* %1698, i32 0, i32 5
  %1700 = getelementptr inbounds %struct.Reg, %struct.Reg* %1699, i32 0, i32 0
  %RCX.i720 = bitcast %union.anon* %1700 to i64*
  %1701 = load i64, i64* %RCX.i720
  %1702 = load i64, i64* %PC.i719
  %1703 = add i64 %1702, 7
  store i64 %1703, i64* %PC.i719
  %1704 = add i64 832, %1701
  store i64 %1704, i64* %RCX.i720, align 8
  %1705 = icmp ult i64 %1704, %1701
  %1706 = icmp ult i64 %1704, 832
  %1707 = or i1 %1705, %1706
  %1708 = zext i1 %1707 to i8
  %1709 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1708, i8* %1709, align 1
  %1710 = trunc i64 %1704 to i32
  %1711 = and i32 %1710, 255
  %1712 = call i32 @llvm.ctpop.i32(i32 %1711)
  %1713 = trunc i32 %1712 to i8
  %1714 = and i8 %1713, 1
  %1715 = xor i8 %1714, 1
  %1716 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1715, i8* %1716, align 1
  %1717 = xor i64 832, %1701
  %1718 = xor i64 %1717, %1704
  %1719 = lshr i64 %1718, 4
  %1720 = trunc i64 %1719 to i8
  %1721 = and i8 %1720, 1
  %1722 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1721, i8* %1722, align 1
  %1723 = icmp eq i64 %1704, 0
  %1724 = zext i1 %1723 to i8
  %1725 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1724, i8* %1725, align 1
  %1726 = lshr i64 %1704, 63
  %1727 = trunc i64 %1726 to i8
  %1728 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1727, i8* %1728, align 1
  %1729 = lshr i64 %1701, 63
  %1730 = xor i64 %1726, %1729
  %1731 = add i64 %1730, %1726
  %1732 = icmp eq i64 %1731, 2
  %1733 = zext i1 %1732 to i8
  %1734 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1733, i8* %1734, align 1
  store %struct.Memory* %loadMem_47b99c, %struct.Memory** %MEMORY
  %loadMem_47b9a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1736 = getelementptr inbounds %struct.GPR, %struct.GPR* %1735, i32 0, i32 33
  %1737 = getelementptr inbounds %struct.Reg, %struct.Reg* %1736, i32 0, i32 0
  %PC.i717 = bitcast %union.anon* %1737 to i64*
  %1738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1739 = getelementptr inbounds %struct.GPR, %struct.GPR* %1738, i32 0, i32 7
  %1740 = getelementptr inbounds %struct.Reg, %struct.Reg* %1739, i32 0, i32 0
  %RDX.i718 = bitcast %union.anon* %1740 to i64*
  %1741 = load i64, i64* %PC.i717
  %1742 = add i64 %1741, 10
  store i64 %1742, i64* %PC.i717
  store i64 7405600, i64* %RDX.i718, align 8
  store %struct.Memory* %loadMem_47b9a3, %struct.Memory** %MEMORY
  %loadMem_47b9ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %1743 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1744 = getelementptr inbounds %struct.GPR, %struct.GPR* %1743, i32 0, i32 33
  %1745 = getelementptr inbounds %struct.Reg, %struct.Reg* %1744, i32 0, i32 0
  %PC.i714 = bitcast %union.anon* %1745 to i64*
  %1746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1747 = getelementptr inbounds %struct.GPR, %struct.GPR* %1746, i32 0, i32 9
  %1748 = getelementptr inbounds %struct.Reg, %struct.Reg* %1747, i32 0, i32 0
  %RSI.i715 = bitcast %union.anon* %1748 to i64*
  %1749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1750 = getelementptr inbounds %struct.GPR, %struct.GPR* %1749, i32 0, i32 15
  %1751 = getelementptr inbounds %struct.Reg, %struct.Reg* %1750, i32 0, i32 0
  %RBP.i716 = bitcast %union.anon* %1751 to i64*
  %1752 = load i64, i64* %RBP.i716
  %1753 = sub i64 %1752, 16
  %1754 = load i64, i64* %PC.i714
  %1755 = add i64 %1754, 4
  store i64 %1755, i64* %PC.i714
  %1756 = inttoptr i64 %1753 to i32*
  %1757 = load i32, i32* %1756
  %1758 = sext i32 %1757 to i64
  store i64 %1758, i64* %RSI.i715, align 8
  store %struct.Memory* %loadMem_47b9ad, %struct.Memory** %MEMORY
  %loadMem_47b9b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1760 = getelementptr inbounds %struct.GPR, %struct.GPR* %1759, i32 0, i32 33
  %1761 = getelementptr inbounds %struct.Reg, %struct.Reg* %1760, i32 0, i32 0
  %PC.i711 = bitcast %union.anon* %1761 to i64*
  %1762 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1763 = getelementptr inbounds %struct.GPR, %struct.GPR* %1762, i32 0, i32 9
  %1764 = getelementptr inbounds %struct.Reg, %struct.Reg* %1763, i32 0, i32 0
  %RSI.i712 = bitcast %union.anon* %1764 to i64*
  %1765 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1766 = getelementptr inbounds %struct.GPR, %struct.GPR* %1765, i32 0, i32 11
  %1767 = getelementptr inbounds %struct.Reg, %struct.Reg* %1766, i32 0, i32 0
  %RDI.i713 = bitcast %union.anon* %1767 to i64*
  %1768 = load i64, i64* %RSI.i712
  %1769 = mul i64 %1768, 2
  %1770 = add i64 %1769, 7404992
  %1771 = load i64, i64* %PC.i711
  %1772 = add i64 %1771, 8
  store i64 %1772, i64* %PC.i711
  %1773 = inttoptr i64 %1770 to i16*
  %1774 = load i16, i16* %1773
  %1775 = sext i16 %1774 to i64
  %1776 = and i64 %1775, 4294967295
  store i64 %1776, i64* %RDI.i713, align 8
  store %struct.Memory* %loadMem_47b9b1, %struct.Memory** %MEMORY
  %loadMem_47b9b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1778 = getelementptr inbounds %struct.GPR, %struct.GPR* %1777, i32 0, i32 33
  %1779 = getelementptr inbounds %struct.Reg, %struct.Reg* %1778, i32 0, i32 0
  %PC.i708 = bitcast %union.anon* %1779 to i64*
  %1780 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1781 = getelementptr inbounds %struct.GPR, %struct.GPR* %1780, i32 0, i32 17
  %1782 = getelementptr inbounds %struct.Reg, %struct.Reg* %1781, i32 0, i32 0
  %R8D.i709 = bitcast %union.anon* %1782 to i32*
  %1783 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1784 = getelementptr inbounds %struct.GPR, %struct.GPR* %1783, i32 0, i32 15
  %1785 = getelementptr inbounds %struct.Reg, %struct.Reg* %1784, i32 0, i32 0
  %RBP.i710 = bitcast %union.anon* %1785 to i64*
  %1786 = bitcast i32* %R8D.i709 to i64*
  %1787 = load i64, i64* %RBP.i710
  %1788 = sub i64 %1787, 20
  %1789 = load i64, i64* %PC.i708
  %1790 = add i64 %1789, 4
  store i64 %1790, i64* %PC.i708
  %1791 = inttoptr i64 %1788 to i32*
  %1792 = load i32, i32* %1791
  %1793 = zext i32 %1792 to i64
  store i64 %1793, i64* %1786, align 8
  store %struct.Memory* %loadMem_47b9b9, %struct.Memory** %MEMORY
  %loadMem_47b9bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1794 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1795 = getelementptr inbounds %struct.GPR, %struct.GPR* %1794, i32 0, i32 33
  %1796 = getelementptr inbounds %struct.Reg, %struct.Reg* %1795, i32 0, i32 0
  %PC.i705 = bitcast %union.anon* %1796 to i64*
  %1797 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1798 = getelementptr inbounds %struct.GPR, %struct.GPR* %1797, i32 0, i32 5
  %1799 = getelementptr inbounds %struct.Reg, %struct.Reg* %1798, i32 0, i32 0
  %RCX.i706 = bitcast %union.anon* %1799 to i64*
  %1800 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1801 = getelementptr inbounds %struct.GPR, %struct.GPR* %1800, i32 0, i32 15
  %1802 = getelementptr inbounds %struct.Reg, %struct.Reg* %1801, i32 0, i32 0
  %RBP.i707 = bitcast %union.anon* %1802 to i64*
  %1803 = load i64, i64* %RBP.i707
  %1804 = sub i64 %1803, 40
  %1805 = load i64, i64* %RCX.i706
  %1806 = load i64, i64* %PC.i705
  %1807 = add i64 %1806, 4
  store i64 %1807, i64* %PC.i705
  %1808 = inttoptr i64 %1804 to i64*
  store i64 %1805, i64* %1808
  store %struct.Memory* %loadMem_47b9bd, %struct.Memory** %MEMORY
  %loadMem_47b9c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1809 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1810 = getelementptr inbounds %struct.GPR, %struct.GPR* %1809, i32 0, i32 33
  %1811 = getelementptr inbounds %struct.Reg, %struct.Reg* %1810, i32 0, i32 0
  %PC.i702 = bitcast %union.anon* %1811 to i64*
  %1812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1813 = getelementptr inbounds %struct.GPR, %struct.GPR* %1812, i32 0, i32 17
  %1814 = getelementptr inbounds %struct.Reg, %struct.Reg* %1813, i32 0, i32 0
  %R8D.i703 = bitcast %union.anon* %1814 to i32*
  %1815 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1816 = getelementptr inbounds %struct.GPR, %struct.GPR* %1815, i32 0, i32 5
  %1817 = getelementptr inbounds %struct.Reg, %struct.Reg* %1816, i32 0, i32 0
  %RCX.i704 = bitcast %union.anon* %1817 to i64*
  %1818 = load i32, i32* %R8D.i703
  %1819 = zext i32 %1818 to i64
  %1820 = load i64, i64* %PC.i702
  %1821 = add i64 %1820, 3
  store i64 %1821, i64* %PC.i702
  %1822 = and i64 %1819, 4294967295
  store i64 %1822, i64* %RCX.i704, align 8
  store %struct.Memory* %loadMem_47b9c1, %struct.Memory** %MEMORY
  %loadMem_47b9c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1824 = getelementptr inbounds %struct.GPR, %struct.GPR* %1823, i32 0, i32 33
  %1825 = getelementptr inbounds %struct.Reg, %struct.Reg* %1824, i32 0, i32 0
  %PC.i698 = bitcast %union.anon* %1825 to i64*
  %1826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1827 = getelementptr inbounds %struct.GPR, %struct.GPR* %1826, i32 0, i32 5
  %1828 = getelementptr inbounds %struct.Reg, %struct.Reg* %1827, i32 0, i32 0
  %1829 = bitcast %union.anon* %1828 to %struct.anon.2*
  %CL.i699 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1829, i32 0, i32 0
  %1830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1831 = getelementptr inbounds %struct.GPR, %struct.GPR* %1830, i32 0, i32 11
  %1832 = getelementptr inbounds %struct.Reg, %struct.Reg* %1831, i32 0, i32 0
  %RDI.i700 = bitcast %union.anon* %1832 to i64*
  %1833 = load i64, i64* %RDI.i700
  %1834 = load i8, i8* %CL.i699
  %1835 = zext i8 %1834 to i64
  %1836 = load i64, i64* %PC.i698
  %1837 = add i64 %1836, 2
  store i64 %1837, i64* %PC.i698
  %1838 = trunc i64 %1835 to i5
  switch i5 %1838, label %1845 [
    i5 0, label %routine_shll__cl___edi.exit701
    i5 1, label %1839
  ]

; <label>:1839:                                   ; preds = %block_.L_47b98f
  %1840 = trunc i64 %1833 to i32
  %1841 = shl i32 %1840, 1
  %1842 = icmp slt i32 %1840, 0
  %1843 = icmp slt i32 %1841, 0
  %1844 = xor i1 %1842, %1843
  br label %1854

; <label>:1845:                                   ; preds = %block_.L_47b98f
  %1846 = and i64 %1835, 31
  %1847 = add i64 %1846, 4294967295
  %1848 = and i64 %1833, 4294967295
  %1849 = and i64 %1847, 4294967295
  %1850 = shl i64 %1848, %1849
  %1851 = trunc i64 %1850 to i32
  %1852 = icmp slt i32 %1851, 0
  %1853 = shl i32 %1851, 1
  br label %1854

; <label>:1854:                                   ; preds = %1845, %1839
  %1855 = phi i1 [ %1842, %1839 ], [ %1852, %1845 ]
  %1856 = phi i1 [ %1844, %1839 ], [ false, %1845 ]
  %1857 = phi i32 [ %1841, %1839 ], [ %1853, %1845 ]
  %1858 = zext i32 %1857 to i64
  store i64 %1858, i64* %RDI.i700, align 8
  %1859 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1860 = zext i1 %1855 to i8
  store i8 %1860, i8* %1859, align 1
  %1861 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1862 = and i32 %1857, 254
  %1863 = call i32 @llvm.ctpop.i32(i32 %1862)
  %1864 = trunc i32 %1863 to i8
  %1865 = and i8 %1864, 1
  %1866 = xor i8 %1865, 1
  store i8 %1866, i8* %1861, align 1
  %1867 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1867, align 1
  %1868 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1869 = icmp eq i32 %1857, 0
  %1870 = zext i1 %1869 to i8
  store i8 %1870, i8* %1868, align 1
  %1871 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1872 = lshr i32 %1857, 31
  %1873 = trunc i32 %1872 to i8
  store i8 %1873, i8* %1871, align 1
  %1874 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1875 = zext i1 %1856 to i8
  store i8 %1875, i8* %1874, align 1
  br label %routine_shll__cl___edi.exit701

routine_shll__cl___edi.exit701:                   ; preds = %block_.L_47b98f, %1854
  store %struct.Memory* %loadMem_47b9c4, %struct.Memory** %MEMORY
  %loadMem_47b9c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1876 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1877 = getelementptr inbounds %struct.GPR, %struct.GPR* %1876, i32 0, i32 33
  %1878 = getelementptr inbounds %struct.Reg, %struct.Reg* %1877, i32 0, i32 0
  %PC.i695 = bitcast %union.anon* %1878 to i64*
  %1879 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1880 = getelementptr inbounds %struct.GPR, %struct.GPR* %1879, i32 0, i32 9
  %1881 = getelementptr inbounds %struct.Reg, %struct.Reg* %1880, i32 0, i32 0
  %RSI.i696 = bitcast %union.anon* %1881 to i64*
  %1882 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1883 = getelementptr inbounds %struct.GPR, %struct.GPR* %1882, i32 0, i32 15
  %1884 = getelementptr inbounds %struct.Reg, %struct.Reg* %1883, i32 0, i32 0
  %RBP.i697 = bitcast %union.anon* %1884 to i64*
  %1885 = load i64, i64* %RBP.i697
  %1886 = sub i64 %1885, 12
  %1887 = load i64, i64* %PC.i695
  %1888 = add i64 %1887, 4
  store i64 %1888, i64* %PC.i695
  %1889 = inttoptr i64 %1886 to i32*
  %1890 = load i32, i32* %1889
  %1891 = sext i32 %1890 to i64
  store i64 %1891, i64* %RSI.i696, align 8
  store %struct.Memory* %loadMem_47b9c6, %struct.Memory** %MEMORY
  %loadMem_47b9ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %1892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1893 = getelementptr inbounds %struct.GPR, %struct.GPR* %1892, i32 0, i32 33
  %1894 = getelementptr inbounds %struct.Reg, %struct.Reg* %1893, i32 0, i32 0
  %PC.i693 = bitcast %union.anon* %1894 to i64*
  %1895 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1896 = getelementptr inbounds %struct.GPR, %struct.GPR* %1895, i32 0, i32 9
  %1897 = getelementptr inbounds %struct.Reg, %struct.Reg* %1896, i32 0, i32 0
  %RSI.i694 = bitcast %union.anon* %1897 to i64*
  %1898 = load i64, i64* %RSI.i694
  %1899 = load i64, i64* %PC.i693
  %1900 = add i64 %1899, 4
  store i64 %1900, i64* %PC.i693
  %1901 = shl i64 %1898, 5
  %1902 = icmp slt i64 %1901, 0
  %1903 = shl i64 %1901, 1
  store i64 %1903, i64* %RSI.i694, align 8
  %1904 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1905 = zext i1 %1902 to i8
  store i8 %1905, i8* %1904, align 1
  %1906 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1907 = trunc i64 %1903 to i32
  %1908 = and i32 %1907, 254
  %1909 = call i32 @llvm.ctpop.i32(i32 %1908)
  %1910 = trunc i32 %1909 to i8
  %1911 = and i8 %1910, 1
  %1912 = xor i8 %1911, 1
  store i8 %1912, i8* %1906, align 1
  %1913 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1913, align 1
  %1914 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1915 = icmp eq i64 %1903, 0
  %1916 = zext i1 %1915 to i8
  store i8 %1916, i8* %1914, align 1
  %1917 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1918 = lshr i64 %1903, 63
  %1919 = trunc i64 %1918 to i8
  store i8 %1919, i8* %1917, align 1
  %1920 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1920, align 1
  store %struct.Memory* %loadMem_47b9ca, %struct.Memory** %MEMORY
  %loadMem_47b9ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %1921 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1922 = getelementptr inbounds %struct.GPR, %struct.GPR* %1921, i32 0, i32 33
  %1923 = getelementptr inbounds %struct.Reg, %struct.Reg* %1922, i32 0, i32 0
  %PC.i690 = bitcast %union.anon* %1923 to i64*
  %1924 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1925 = getelementptr inbounds %struct.GPR, %struct.GPR* %1924, i32 0, i32 7
  %1926 = getelementptr inbounds %struct.Reg, %struct.Reg* %1925, i32 0, i32 0
  %RDX.i691 = bitcast %union.anon* %1926 to i64*
  %1927 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1928 = getelementptr inbounds %struct.GPR, %struct.GPR* %1927, i32 0, i32 9
  %1929 = getelementptr inbounds %struct.Reg, %struct.Reg* %1928, i32 0, i32 0
  %RSI.i692 = bitcast %union.anon* %1929 to i64*
  %1930 = load i64, i64* %RDX.i691
  %1931 = load i64, i64* %RSI.i692
  %1932 = load i64, i64* %PC.i690
  %1933 = add i64 %1932, 3
  store i64 %1933, i64* %PC.i690
  %1934 = add i64 %1931, %1930
  store i64 %1934, i64* %RDX.i691, align 8
  %1935 = icmp ult i64 %1934, %1930
  %1936 = icmp ult i64 %1934, %1931
  %1937 = or i1 %1935, %1936
  %1938 = zext i1 %1937 to i8
  %1939 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1938, i8* %1939, align 1
  %1940 = trunc i64 %1934 to i32
  %1941 = and i32 %1940, 255
  %1942 = call i32 @llvm.ctpop.i32(i32 %1941)
  %1943 = trunc i32 %1942 to i8
  %1944 = and i8 %1943, 1
  %1945 = xor i8 %1944, 1
  %1946 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1945, i8* %1946, align 1
  %1947 = xor i64 %1931, %1930
  %1948 = xor i64 %1947, %1934
  %1949 = lshr i64 %1948, 4
  %1950 = trunc i64 %1949 to i8
  %1951 = and i8 %1950, 1
  %1952 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1951, i8* %1952, align 1
  %1953 = icmp eq i64 %1934, 0
  %1954 = zext i1 %1953 to i8
  %1955 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1954, i8* %1955, align 1
  %1956 = lshr i64 %1934, 63
  %1957 = trunc i64 %1956 to i8
  %1958 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1957, i8* %1958, align 1
  %1959 = lshr i64 %1930, 63
  %1960 = lshr i64 %1931, 63
  %1961 = xor i64 %1956, %1959
  %1962 = xor i64 %1956, %1960
  %1963 = add i64 %1961, %1962
  %1964 = icmp eq i64 %1963, 2
  %1965 = zext i1 %1964 to i8
  %1966 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1965, i8* %1966, align 1
  store %struct.Memory* %loadMem_47b9ce, %struct.Memory** %MEMORY
  %loadMem_47b9d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1967 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1968 = getelementptr inbounds %struct.GPR, %struct.GPR* %1967, i32 0, i32 33
  %1969 = getelementptr inbounds %struct.Reg, %struct.Reg* %1968, i32 0, i32 0
  %PC.i687 = bitcast %union.anon* %1969 to i64*
  %1970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1971 = getelementptr inbounds %struct.GPR, %struct.GPR* %1970, i32 0, i32 9
  %1972 = getelementptr inbounds %struct.Reg, %struct.Reg* %1971, i32 0, i32 0
  %RSI.i688 = bitcast %union.anon* %1972 to i64*
  %1973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1974 = getelementptr inbounds %struct.GPR, %struct.GPR* %1973, i32 0, i32 15
  %1975 = getelementptr inbounds %struct.Reg, %struct.Reg* %1974, i32 0, i32 0
  %RBP.i689 = bitcast %union.anon* %1975 to i64*
  %1976 = load i64, i64* %RBP.i689
  %1977 = sub i64 %1976, 8
  %1978 = load i64, i64* %PC.i687
  %1979 = add i64 %1978, 4
  store i64 %1979, i64* %PC.i687
  %1980 = inttoptr i64 %1977 to i32*
  %1981 = load i32, i32* %1980
  %1982 = sext i32 %1981 to i64
  store i64 %1982, i64* %RSI.i688, align 8
  store %struct.Memory* %loadMem_47b9d1, %struct.Memory** %MEMORY
  %loadMem_47b9d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1984 = getelementptr inbounds %struct.GPR, %struct.GPR* %1983, i32 0, i32 33
  %1985 = getelementptr inbounds %struct.Reg, %struct.Reg* %1984, i32 0, i32 0
  %PC.i685 = bitcast %union.anon* %1985 to i64*
  %1986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1987 = getelementptr inbounds %struct.GPR, %struct.GPR* %1986, i32 0, i32 9
  %1988 = getelementptr inbounds %struct.Reg, %struct.Reg* %1987, i32 0, i32 0
  %RSI.i686 = bitcast %union.anon* %1988 to i64*
  %1989 = load i64, i64* %RSI.i686
  %1990 = load i64, i64* %PC.i685
  %1991 = add i64 %1990, 4
  store i64 %1991, i64* %PC.i685
  %1992 = shl i64 %1989, 3
  %1993 = icmp slt i64 %1992, 0
  %1994 = shl i64 %1992, 1
  store i64 %1994, i64* %RSI.i686, align 8
  %1995 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1996 = zext i1 %1993 to i8
  store i8 %1996, i8* %1995, align 1
  %1997 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1998 = trunc i64 %1994 to i32
  %1999 = and i32 %1998, 254
  %2000 = call i32 @llvm.ctpop.i32(i32 %1999)
  %2001 = trunc i32 %2000 to i8
  %2002 = and i8 %2001, 1
  %2003 = xor i8 %2002, 1
  store i8 %2003, i8* %1997, align 1
  %2004 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2004, align 1
  %2005 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2006 = icmp eq i64 %1994, 0
  %2007 = zext i1 %2006 to i8
  store i8 %2007, i8* %2005, align 1
  %2008 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2009 = lshr i64 %1994, 63
  %2010 = trunc i64 %2009 to i8
  store i8 %2010, i8* %2008, align 1
  %2011 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2011, align 1
  store %struct.Memory* %loadMem_47b9d5, %struct.Memory** %MEMORY
  %loadMem_47b9d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2012 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2013 = getelementptr inbounds %struct.GPR, %struct.GPR* %2012, i32 0, i32 33
  %2014 = getelementptr inbounds %struct.Reg, %struct.Reg* %2013, i32 0, i32 0
  %PC.i682 = bitcast %union.anon* %2014 to i64*
  %2015 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2016 = getelementptr inbounds %struct.GPR, %struct.GPR* %2015, i32 0, i32 7
  %2017 = getelementptr inbounds %struct.Reg, %struct.Reg* %2016, i32 0, i32 0
  %RDX.i683 = bitcast %union.anon* %2017 to i64*
  %2018 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2019 = getelementptr inbounds %struct.GPR, %struct.GPR* %2018, i32 0, i32 9
  %2020 = getelementptr inbounds %struct.Reg, %struct.Reg* %2019, i32 0, i32 0
  %RSI.i684 = bitcast %union.anon* %2020 to i64*
  %2021 = load i64, i64* %RDX.i683
  %2022 = load i64, i64* %RSI.i684
  %2023 = load i64, i64* %PC.i682
  %2024 = add i64 %2023, 3
  store i64 %2024, i64* %PC.i682
  %2025 = add i64 %2022, %2021
  store i64 %2025, i64* %RDX.i683, align 8
  %2026 = icmp ult i64 %2025, %2021
  %2027 = icmp ult i64 %2025, %2022
  %2028 = or i1 %2026, %2027
  %2029 = zext i1 %2028 to i8
  %2030 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2029, i8* %2030, align 1
  %2031 = trunc i64 %2025 to i32
  %2032 = and i32 %2031, 255
  %2033 = call i32 @llvm.ctpop.i32(i32 %2032)
  %2034 = trunc i32 %2033 to i8
  %2035 = and i8 %2034, 1
  %2036 = xor i8 %2035, 1
  %2037 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2036, i8* %2037, align 1
  %2038 = xor i64 %2022, %2021
  %2039 = xor i64 %2038, %2025
  %2040 = lshr i64 %2039, 4
  %2041 = trunc i64 %2040 to i8
  %2042 = and i8 %2041, 1
  %2043 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2042, i8* %2043, align 1
  %2044 = icmp eq i64 %2025, 0
  %2045 = zext i1 %2044 to i8
  %2046 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2045, i8* %2046, align 1
  %2047 = lshr i64 %2025, 63
  %2048 = trunc i64 %2047 to i8
  %2049 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2048, i8* %2049, align 1
  %2050 = lshr i64 %2021, 63
  %2051 = lshr i64 %2022, 63
  %2052 = xor i64 %2047, %2050
  %2053 = xor i64 %2047, %2051
  %2054 = add i64 %2052, %2053
  %2055 = icmp eq i64 %2054, 2
  %2056 = zext i1 %2055 to i8
  %2057 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2056, i8* %2057, align 1
  store %struct.Memory* %loadMem_47b9d9, %struct.Memory** %MEMORY
  %loadMem_47b9dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2058 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2059 = getelementptr inbounds %struct.GPR, %struct.GPR* %2058, i32 0, i32 33
  %2060 = getelementptr inbounds %struct.Reg, %struct.Reg* %2059, i32 0, i32 0
  %PC.i679 = bitcast %union.anon* %2060 to i64*
  %2061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2062 = getelementptr inbounds %struct.GPR, %struct.GPR* %2061, i32 0, i32 9
  %2063 = getelementptr inbounds %struct.Reg, %struct.Reg* %2062, i32 0, i32 0
  %RSI.i680 = bitcast %union.anon* %2063 to i64*
  %2064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2065 = getelementptr inbounds %struct.GPR, %struct.GPR* %2064, i32 0, i32 15
  %2066 = getelementptr inbounds %struct.Reg, %struct.Reg* %2065, i32 0, i32 0
  %RBP.i681 = bitcast %union.anon* %2066 to i64*
  %2067 = load i64, i64* %RBP.i681
  %2068 = sub i64 %2067, 4
  %2069 = load i64, i64* %PC.i679
  %2070 = add i64 %2069, 4
  store i64 %2070, i64* %PC.i679
  %2071 = inttoptr i64 %2068 to i32*
  %2072 = load i32, i32* %2071
  %2073 = sext i32 %2072 to i64
  store i64 %2073, i64* %RSI.i680, align 8
  store %struct.Memory* %loadMem_47b9dc, %struct.Memory** %MEMORY
  %loadMem_47b9e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2074 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2075 = getelementptr inbounds %struct.GPR, %struct.GPR* %2074, i32 0, i32 33
  %2076 = getelementptr inbounds %struct.Reg, %struct.Reg* %2075, i32 0, i32 0
  %PC.i675 = bitcast %union.anon* %2076 to i64*
  %2077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2078 = getelementptr inbounds %struct.GPR, %struct.GPR* %2077, i32 0, i32 11
  %2079 = getelementptr inbounds %struct.Reg, %struct.Reg* %2078, i32 0, i32 0
  %EDI.i676 = bitcast %union.anon* %2079 to i32*
  %2080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2081 = getelementptr inbounds %struct.GPR, %struct.GPR* %2080, i32 0, i32 7
  %2082 = getelementptr inbounds %struct.Reg, %struct.Reg* %2081, i32 0, i32 0
  %RDX.i677 = bitcast %union.anon* %2082 to i64*
  %2083 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2084 = getelementptr inbounds %struct.GPR, %struct.GPR* %2083, i32 0, i32 9
  %2085 = getelementptr inbounds %struct.Reg, %struct.Reg* %2084, i32 0, i32 0
  %RSI.i678 = bitcast %union.anon* %2085 to i64*
  %2086 = load i64, i64* %RDX.i677
  %2087 = load i64, i64* %RSI.i678
  %2088 = mul i64 %2087, 4
  %2089 = add i64 %2088, %2086
  %2090 = load i32, i32* %EDI.i676
  %2091 = zext i32 %2090 to i64
  %2092 = load i64, i64* %PC.i675
  %2093 = add i64 %2092, 3
  store i64 %2093, i64* %PC.i675
  %2094 = inttoptr i64 %2089 to i32*
  store i32 %2090, i32* %2094
  store %struct.Memory* %loadMem_47b9e0, %struct.Memory** %MEMORY
  %loadMem_47b9e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2095 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2096 = getelementptr inbounds %struct.GPR, %struct.GPR* %2095, i32 0, i32 33
  %2097 = getelementptr inbounds %struct.Reg, %struct.Reg* %2096, i32 0, i32 0
  %PC.i672 = bitcast %union.anon* %2097 to i64*
  %2098 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2099 = getelementptr inbounds %struct.GPR, %struct.GPR* %2098, i32 0, i32 7
  %2100 = getelementptr inbounds %struct.Reg, %struct.Reg* %2099, i32 0, i32 0
  %RDX.i673 = bitcast %union.anon* %2100 to i64*
  %2101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2102 = getelementptr inbounds %struct.GPR, %struct.GPR* %2101, i32 0, i32 15
  %2103 = getelementptr inbounds %struct.Reg, %struct.Reg* %2102, i32 0, i32 0
  %RBP.i674 = bitcast %union.anon* %2103 to i64*
  %2104 = load i64, i64* %RBP.i674
  %2105 = sub i64 %2104, 16
  %2106 = load i64, i64* %PC.i672
  %2107 = add i64 %2106, 4
  store i64 %2107, i64* %PC.i672
  %2108 = inttoptr i64 %2105 to i32*
  %2109 = load i32, i32* %2108
  %2110 = sext i32 %2109 to i64
  store i64 %2110, i64* %RDX.i673, align 8
  store %struct.Memory* %loadMem_47b9e3, %struct.Memory** %MEMORY
  %loadMem_47b9e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2112 = getelementptr inbounds %struct.GPR, %struct.GPR* %2111, i32 0, i32 33
  %2113 = getelementptr inbounds %struct.Reg, %struct.Reg* %2112, i32 0, i32 0
  %PC.i669 = bitcast %union.anon* %2113 to i64*
  %2114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2115 = getelementptr inbounds %struct.GPR, %struct.GPR* %2114, i32 0, i32 7
  %2116 = getelementptr inbounds %struct.Reg, %struct.Reg* %2115, i32 0, i32 0
  %RDX.i670 = bitcast %union.anon* %2116 to i64*
  %2117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2118 = getelementptr inbounds %struct.GPR, %struct.GPR* %2117, i32 0, i32 11
  %2119 = getelementptr inbounds %struct.Reg, %struct.Reg* %2118, i32 0, i32 0
  %RDI.i671 = bitcast %union.anon* %2119 to i64*
  %2120 = load i64, i64* %RDX.i670
  %2121 = mul i64 %2120, 2
  %2122 = add i64 %2121, 7405024
  %2123 = load i64, i64* %PC.i669
  %2124 = add i64 %2123, 8
  store i64 %2124, i64* %PC.i669
  %2125 = inttoptr i64 %2122 to i16*
  %2126 = load i16, i16* %2125
  %2127 = sext i16 %2126 to i64
  %2128 = and i64 %2127, 4294967295
  store i64 %2128, i64* %RDI.i671, align 8
  store %struct.Memory* %loadMem_47b9e7, %struct.Memory** %MEMORY
  %loadMem_47b9ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %2129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2130 = getelementptr inbounds %struct.GPR, %struct.GPR* %2129, i32 0, i32 33
  %2131 = getelementptr inbounds %struct.Reg, %struct.Reg* %2130, i32 0, i32 0
  %PC.i666 = bitcast %union.anon* %2131 to i64*
  %2132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2133 = getelementptr inbounds %struct.GPR, %struct.GPR* %2132, i32 0, i32 5
  %2134 = getelementptr inbounds %struct.Reg, %struct.Reg* %2133, i32 0, i32 0
  %RCX.i667 = bitcast %union.anon* %2134 to i64*
  %2135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2136 = getelementptr inbounds %struct.GPR, %struct.GPR* %2135, i32 0, i32 15
  %2137 = getelementptr inbounds %struct.Reg, %struct.Reg* %2136, i32 0, i32 0
  %RBP.i668 = bitcast %union.anon* %2137 to i64*
  %2138 = load i64, i64* %RBP.i668
  %2139 = sub i64 %2138, 20
  %2140 = load i64, i64* %PC.i666
  %2141 = add i64 %2140, 3
  store i64 %2141, i64* %PC.i666
  %2142 = inttoptr i64 %2139 to i32*
  %2143 = load i32, i32* %2142
  %2144 = zext i32 %2143 to i64
  store i64 %2144, i64* %RCX.i667, align 8
  store %struct.Memory* %loadMem_47b9ef, %struct.Memory** %MEMORY
  %loadMem_47b9f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2146 = getelementptr inbounds %struct.GPR, %struct.GPR* %2145, i32 0, i32 33
  %2147 = getelementptr inbounds %struct.Reg, %struct.Reg* %2146, i32 0, i32 0
  %PC.i662 = bitcast %union.anon* %2147 to i64*
  %2148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2149 = getelementptr inbounds %struct.GPR, %struct.GPR* %2148, i32 0, i32 5
  %2150 = getelementptr inbounds %struct.Reg, %struct.Reg* %2149, i32 0, i32 0
  %2151 = bitcast %union.anon* %2150 to %struct.anon.2*
  %CL.i663 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2151, i32 0, i32 0
  %2152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2153 = getelementptr inbounds %struct.GPR, %struct.GPR* %2152, i32 0, i32 11
  %2154 = getelementptr inbounds %struct.Reg, %struct.Reg* %2153, i32 0, i32 0
  %RDI.i664 = bitcast %union.anon* %2154 to i64*
  %2155 = load i64, i64* %RDI.i664
  %2156 = load i8, i8* %CL.i663
  %2157 = zext i8 %2156 to i64
  %2158 = load i64, i64* %PC.i662
  %2159 = add i64 %2158, 2
  store i64 %2159, i64* %PC.i662
  %2160 = trunc i64 %2157 to i5
  switch i5 %2160, label %2167 [
    i5 0, label %routine_shll__cl___edi.exit665
    i5 1, label %2161
  ]

; <label>:2161:                                   ; preds = %routine_shll__cl___edi.exit701
  %2162 = trunc i64 %2155 to i32
  %2163 = shl i32 %2162, 1
  %2164 = icmp slt i32 %2162, 0
  %2165 = icmp slt i32 %2163, 0
  %2166 = xor i1 %2164, %2165
  br label %2176

; <label>:2167:                                   ; preds = %routine_shll__cl___edi.exit701
  %2168 = and i64 %2157, 31
  %2169 = add i64 %2168, 4294967295
  %2170 = and i64 %2155, 4294967295
  %2171 = and i64 %2169, 4294967295
  %2172 = shl i64 %2170, %2171
  %2173 = trunc i64 %2172 to i32
  %2174 = icmp slt i32 %2173, 0
  %2175 = shl i32 %2173, 1
  br label %2176

; <label>:2176:                                   ; preds = %2167, %2161
  %2177 = phi i1 [ %2164, %2161 ], [ %2174, %2167 ]
  %2178 = phi i1 [ %2166, %2161 ], [ false, %2167 ]
  %2179 = phi i32 [ %2163, %2161 ], [ %2175, %2167 ]
  %2180 = zext i32 %2179 to i64
  store i64 %2180, i64* %RDI.i664, align 8
  %2181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2182 = zext i1 %2177 to i8
  store i8 %2182, i8* %2181, align 1
  %2183 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2184 = and i32 %2179, 254
  %2185 = call i32 @llvm.ctpop.i32(i32 %2184)
  %2186 = trunc i32 %2185 to i8
  %2187 = and i8 %2186, 1
  %2188 = xor i8 %2187, 1
  store i8 %2188, i8* %2183, align 1
  %2189 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2189, align 1
  %2190 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2191 = icmp eq i32 %2179, 0
  %2192 = zext i1 %2191 to i8
  store i8 %2192, i8* %2190, align 1
  %2193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2194 = lshr i32 %2179, 31
  %2195 = trunc i32 %2194 to i8
  store i8 %2195, i8* %2193, align 1
  %2196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2197 = zext i1 %2178 to i8
  store i8 %2197, i8* %2196, align 1
  br label %routine_shll__cl___edi.exit665

routine_shll__cl___edi.exit665:                   ; preds = %routine_shll__cl___edi.exit701, %2176
  store %struct.Memory* %loadMem_47b9f2, %struct.Memory** %MEMORY
  %loadMem_47b9f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2199 = getelementptr inbounds %struct.GPR, %struct.GPR* %2198, i32 0, i32 33
  %2200 = getelementptr inbounds %struct.Reg, %struct.Reg* %2199, i32 0, i32 0
  %PC.i659 = bitcast %union.anon* %2200 to i64*
  %2201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2202 = getelementptr inbounds %struct.GPR, %struct.GPR* %2201, i32 0, i32 7
  %2203 = getelementptr inbounds %struct.Reg, %struct.Reg* %2202, i32 0, i32 0
  %RDX.i660 = bitcast %union.anon* %2203 to i64*
  %2204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2205 = getelementptr inbounds %struct.GPR, %struct.GPR* %2204, i32 0, i32 15
  %2206 = getelementptr inbounds %struct.Reg, %struct.Reg* %2205, i32 0, i32 0
  %RBP.i661 = bitcast %union.anon* %2206 to i64*
  %2207 = load i64, i64* %RBP.i661
  %2208 = sub i64 %2207, 12
  %2209 = load i64, i64* %PC.i659
  %2210 = add i64 %2209, 4
  store i64 %2210, i64* %PC.i659
  %2211 = inttoptr i64 %2208 to i32*
  %2212 = load i32, i32* %2211
  %2213 = sext i32 %2212 to i64
  store i64 %2213, i64* %RDX.i660, align 8
  store %struct.Memory* %loadMem_47b9f4, %struct.Memory** %MEMORY
  %loadMem_47b9f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2215 = getelementptr inbounds %struct.GPR, %struct.GPR* %2214, i32 0, i32 33
  %2216 = getelementptr inbounds %struct.Reg, %struct.Reg* %2215, i32 0, i32 0
  %PC.i657 = bitcast %union.anon* %2216 to i64*
  %2217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2218 = getelementptr inbounds %struct.GPR, %struct.GPR* %2217, i32 0, i32 7
  %2219 = getelementptr inbounds %struct.Reg, %struct.Reg* %2218, i32 0, i32 0
  %RDX.i658 = bitcast %union.anon* %2219 to i64*
  %2220 = load i64, i64* %RDX.i658
  %2221 = load i64, i64* %PC.i657
  %2222 = add i64 %2221, 4
  store i64 %2222, i64* %PC.i657
  %2223 = shl i64 %2220, 5
  %2224 = icmp slt i64 %2223, 0
  %2225 = shl i64 %2223, 1
  store i64 %2225, i64* %RDX.i658, align 8
  %2226 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2227 = zext i1 %2224 to i8
  store i8 %2227, i8* %2226, align 1
  %2228 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2229 = trunc i64 %2225 to i32
  %2230 = and i32 %2229, 254
  %2231 = call i32 @llvm.ctpop.i32(i32 %2230)
  %2232 = trunc i32 %2231 to i8
  %2233 = and i8 %2232, 1
  %2234 = xor i8 %2233, 1
  store i8 %2234, i8* %2228, align 1
  %2235 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2235, align 1
  %2236 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2237 = icmp eq i64 %2225, 0
  %2238 = zext i1 %2237 to i8
  store i8 %2238, i8* %2236, align 1
  %2239 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2240 = lshr i64 %2225, 63
  %2241 = trunc i64 %2240 to i8
  store i8 %2241, i8* %2239, align 1
  %2242 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2242, align 1
  store %struct.Memory* %loadMem_47b9f8, %struct.Memory** %MEMORY
  %loadMem_47b9fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2244 = getelementptr inbounds %struct.GPR, %struct.GPR* %2243, i32 0, i32 33
  %2245 = getelementptr inbounds %struct.Reg, %struct.Reg* %2244, i32 0, i32 0
  %PC.i654 = bitcast %union.anon* %2245 to i64*
  %2246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2247 = getelementptr inbounds %struct.GPR, %struct.GPR* %2246, i32 0, i32 1
  %2248 = getelementptr inbounds %struct.Reg, %struct.Reg* %2247, i32 0, i32 0
  %RAX.i655 = bitcast %union.anon* %2248 to i64*
  %2249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2250 = getelementptr inbounds %struct.GPR, %struct.GPR* %2249, i32 0, i32 7
  %2251 = getelementptr inbounds %struct.Reg, %struct.Reg* %2250, i32 0, i32 0
  %RDX.i656 = bitcast %union.anon* %2251 to i64*
  %2252 = load i64, i64* %RAX.i655
  %2253 = load i64, i64* %RDX.i656
  %2254 = load i64, i64* %PC.i654
  %2255 = add i64 %2254, 3
  store i64 %2255, i64* %PC.i654
  %2256 = add i64 %2253, %2252
  store i64 %2256, i64* %RAX.i655, align 8
  %2257 = icmp ult i64 %2256, %2252
  %2258 = icmp ult i64 %2256, %2253
  %2259 = or i1 %2257, %2258
  %2260 = zext i1 %2259 to i8
  %2261 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2260, i8* %2261, align 1
  %2262 = trunc i64 %2256 to i32
  %2263 = and i32 %2262, 255
  %2264 = call i32 @llvm.ctpop.i32(i32 %2263)
  %2265 = trunc i32 %2264 to i8
  %2266 = and i8 %2265, 1
  %2267 = xor i8 %2266, 1
  %2268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2267, i8* %2268, align 1
  %2269 = xor i64 %2253, %2252
  %2270 = xor i64 %2269, %2256
  %2271 = lshr i64 %2270, 4
  %2272 = trunc i64 %2271 to i8
  %2273 = and i8 %2272, 1
  %2274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2273, i8* %2274, align 1
  %2275 = icmp eq i64 %2256, 0
  %2276 = zext i1 %2275 to i8
  %2277 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2276, i8* %2277, align 1
  %2278 = lshr i64 %2256, 63
  %2279 = trunc i64 %2278 to i8
  %2280 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2279, i8* %2280, align 1
  %2281 = lshr i64 %2252, 63
  %2282 = lshr i64 %2253, 63
  %2283 = xor i64 %2278, %2281
  %2284 = xor i64 %2278, %2282
  %2285 = add i64 %2283, %2284
  %2286 = icmp eq i64 %2285, 2
  %2287 = zext i1 %2286 to i8
  %2288 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2287, i8* %2288, align 1
  store %struct.Memory* %loadMem_47b9fc, %struct.Memory** %MEMORY
  %loadMem_47b9ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %2289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2290 = getelementptr inbounds %struct.GPR, %struct.GPR* %2289, i32 0, i32 33
  %2291 = getelementptr inbounds %struct.Reg, %struct.Reg* %2290, i32 0, i32 0
  %PC.i651 = bitcast %union.anon* %2291 to i64*
  %2292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2293 = getelementptr inbounds %struct.GPR, %struct.GPR* %2292, i32 0, i32 7
  %2294 = getelementptr inbounds %struct.Reg, %struct.Reg* %2293, i32 0, i32 0
  %RDX.i652 = bitcast %union.anon* %2294 to i64*
  %2295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2296 = getelementptr inbounds %struct.GPR, %struct.GPR* %2295, i32 0, i32 15
  %2297 = getelementptr inbounds %struct.Reg, %struct.Reg* %2296, i32 0, i32 0
  %RBP.i653 = bitcast %union.anon* %2297 to i64*
  %2298 = load i64, i64* %RBP.i653
  %2299 = sub i64 %2298, 8
  %2300 = load i64, i64* %PC.i651
  %2301 = add i64 %2300, 4
  store i64 %2301, i64* %PC.i651
  %2302 = inttoptr i64 %2299 to i32*
  %2303 = load i32, i32* %2302
  %2304 = sext i32 %2303 to i64
  store i64 %2304, i64* %RDX.i652, align 8
  store %struct.Memory* %loadMem_47b9ff, %struct.Memory** %MEMORY
  %loadMem_47ba03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2306 = getelementptr inbounds %struct.GPR, %struct.GPR* %2305, i32 0, i32 33
  %2307 = getelementptr inbounds %struct.Reg, %struct.Reg* %2306, i32 0, i32 0
  %PC.i649 = bitcast %union.anon* %2307 to i64*
  %2308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2309 = getelementptr inbounds %struct.GPR, %struct.GPR* %2308, i32 0, i32 7
  %2310 = getelementptr inbounds %struct.Reg, %struct.Reg* %2309, i32 0, i32 0
  %RDX.i650 = bitcast %union.anon* %2310 to i64*
  %2311 = load i64, i64* %RDX.i650
  %2312 = load i64, i64* %PC.i649
  %2313 = add i64 %2312, 4
  store i64 %2313, i64* %PC.i649
  %2314 = shl i64 %2311, 3
  %2315 = icmp slt i64 %2314, 0
  %2316 = shl i64 %2314, 1
  store i64 %2316, i64* %RDX.i650, align 8
  %2317 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2318 = zext i1 %2315 to i8
  store i8 %2318, i8* %2317, align 1
  %2319 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2320 = trunc i64 %2316 to i32
  %2321 = and i32 %2320, 254
  %2322 = call i32 @llvm.ctpop.i32(i32 %2321)
  %2323 = trunc i32 %2322 to i8
  %2324 = and i8 %2323, 1
  %2325 = xor i8 %2324, 1
  store i8 %2325, i8* %2319, align 1
  %2326 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2326, align 1
  %2327 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2328 = icmp eq i64 %2316, 0
  %2329 = zext i1 %2328 to i8
  store i8 %2329, i8* %2327, align 1
  %2330 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2331 = lshr i64 %2316, 63
  %2332 = trunc i64 %2331 to i8
  store i8 %2332, i8* %2330, align 1
  %2333 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2333, align 1
  store %struct.Memory* %loadMem_47ba03, %struct.Memory** %MEMORY
  %loadMem_47ba07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2335 = getelementptr inbounds %struct.GPR, %struct.GPR* %2334, i32 0, i32 33
  %2336 = getelementptr inbounds %struct.Reg, %struct.Reg* %2335, i32 0, i32 0
  %PC.i646 = bitcast %union.anon* %2336 to i64*
  %2337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2338 = getelementptr inbounds %struct.GPR, %struct.GPR* %2337, i32 0, i32 1
  %2339 = getelementptr inbounds %struct.Reg, %struct.Reg* %2338, i32 0, i32 0
  %RAX.i647 = bitcast %union.anon* %2339 to i64*
  %2340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2341 = getelementptr inbounds %struct.GPR, %struct.GPR* %2340, i32 0, i32 7
  %2342 = getelementptr inbounds %struct.Reg, %struct.Reg* %2341, i32 0, i32 0
  %RDX.i648 = bitcast %union.anon* %2342 to i64*
  %2343 = load i64, i64* %RAX.i647
  %2344 = load i64, i64* %RDX.i648
  %2345 = load i64, i64* %PC.i646
  %2346 = add i64 %2345, 3
  store i64 %2346, i64* %PC.i646
  %2347 = add i64 %2344, %2343
  store i64 %2347, i64* %RAX.i647, align 8
  %2348 = icmp ult i64 %2347, %2343
  %2349 = icmp ult i64 %2347, %2344
  %2350 = or i1 %2348, %2349
  %2351 = zext i1 %2350 to i8
  %2352 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2351, i8* %2352, align 1
  %2353 = trunc i64 %2347 to i32
  %2354 = and i32 %2353, 255
  %2355 = call i32 @llvm.ctpop.i32(i32 %2354)
  %2356 = trunc i32 %2355 to i8
  %2357 = and i8 %2356, 1
  %2358 = xor i8 %2357, 1
  %2359 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2358, i8* %2359, align 1
  %2360 = xor i64 %2344, %2343
  %2361 = xor i64 %2360, %2347
  %2362 = lshr i64 %2361, 4
  %2363 = trunc i64 %2362 to i8
  %2364 = and i8 %2363, 1
  %2365 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2364, i8* %2365, align 1
  %2366 = icmp eq i64 %2347, 0
  %2367 = zext i1 %2366 to i8
  %2368 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2367, i8* %2368, align 1
  %2369 = lshr i64 %2347, 63
  %2370 = trunc i64 %2369 to i8
  %2371 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2370, i8* %2371, align 1
  %2372 = lshr i64 %2343, 63
  %2373 = lshr i64 %2344, 63
  %2374 = xor i64 %2369, %2372
  %2375 = xor i64 %2369, %2373
  %2376 = add i64 %2374, %2375
  %2377 = icmp eq i64 %2376, 2
  %2378 = zext i1 %2377 to i8
  %2379 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2378, i8* %2379, align 1
  store %struct.Memory* %loadMem_47ba07, %struct.Memory** %MEMORY
  %loadMem_47ba0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2381 = getelementptr inbounds %struct.GPR, %struct.GPR* %2380, i32 0, i32 33
  %2382 = getelementptr inbounds %struct.Reg, %struct.Reg* %2381, i32 0, i32 0
  %PC.i643 = bitcast %union.anon* %2382 to i64*
  %2383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2384 = getelementptr inbounds %struct.GPR, %struct.GPR* %2383, i32 0, i32 7
  %2385 = getelementptr inbounds %struct.Reg, %struct.Reg* %2384, i32 0, i32 0
  %RDX.i644 = bitcast %union.anon* %2385 to i64*
  %2386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2387 = getelementptr inbounds %struct.GPR, %struct.GPR* %2386, i32 0, i32 15
  %2388 = getelementptr inbounds %struct.Reg, %struct.Reg* %2387, i32 0, i32 0
  %RBP.i645 = bitcast %union.anon* %2388 to i64*
  %2389 = load i64, i64* %RBP.i645
  %2390 = sub i64 %2389, 4
  %2391 = load i64, i64* %PC.i643
  %2392 = add i64 %2391, 4
  store i64 %2392, i64* %PC.i643
  %2393 = inttoptr i64 %2390 to i32*
  %2394 = load i32, i32* %2393
  %2395 = sext i32 %2394 to i64
  store i64 %2395, i64* %RDX.i644, align 8
  store %struct.Memory* %loadMem_47ba0a, %struct.Memory** %MEMORY
  %loadMem_47ba0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2397 = getelementptr inbounds %struct.GPR, %struct.GPR* %2396, i32 0, i32 33
  %2398 = getelementptr inbounds %struct.Reg, %struct.Reg* %2397, i32 0, i32 0
  %PC.i639 = bitcast %union.anon* %2398 to i64*
  %2399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2400 = getelementptr inbounds %struct.GPR, %struct.GPR* %2399, i32 0, i32 11
  %2401 = getelementptr inbounds %struct.Reg, %struct.Reg* %2400, i32 0, i32 0
  %EDI.i640 = bitcast %union.anon* %2401 to i32*
  %2402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2403 = getelementptr inbounds %struct.GPR, %struct.GPR* %2402, i32 0, i32 1
  %2404 = getelementptr inbounds %struct.Reg, %struct.Reg* %2403, i32 0, i32 0
  %RAX.i641 = bitcast %union.anon* %2404 to i64*
  %2405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2406 = getelementptr inbounds %struct.GPR, %struct.GPR* %2405, i32 0, i32 7
  %2407 = getelementptr inbounds %struct.Reg, %struct.Reg* %2406, i32 0, i32 0
  %RDX.i642 = bitcast %union.anon* %2407 to i64*
  %2408 = load i64, i64* %RAX.i641
  %2409 = load i64, i64* %RDX.i642
  %2410 = mul i64 %2409, 4
  %2411 = add i64 %2410, %2408
  %2412 = load i32, i32* %EDI.i640
  %2413 = zext i32 %2412 to i64
  %2414 = load i64, i64* %PC.i639
  %2415 = add i64 %2414, 3
  store i64 %2415, i64* %PC.i639
  %2416 = inttoptr i64 %2411 to i32*
  store i32 %2412, i32* %2416
  store %struct.Memory* %loadMem_47ba0e, %struct.Memory** %MEMORY
  %loadMem_47ba11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2418 = getelementptr inbounds %struct.GPR, %struct.GPR* %2417, i32 0, i32 33
  %2419 = getelementptr inbounds %struct.Reg, %struct.Reg* %2418, i32 0, i32 0
  %PC.i636 = bitcast %union.anon* %2419 to i64*
  %2420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2421 = getelementptr inbounds %struct.GPR, %struct.GPR* %2420, i32 0, i32 1
  %2422 = getelementptr inbounds %struct.Reg, %struct.Reg* %2421, i32 0, i32 0
  %RAX.i637 = bitcast %union.anon* %2422 to i64*
  %2423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2424 = getelementptr inbounds %struct.GPR, %struct.GPR* %2423, i32 0, i32 15
  %2425 = getelementptr inbounds %struct.Reg, %struct.Reg* %2424, i32 0, i32 0
  %RBP.i638 = bitcast %union.anon* %2425 to i64*
  %2426 = load i64, i64* %RBP.i638
  %2427 = sub i64 %2426, 16
  %2428 = load i64, i64* %PC.i636
  %2429 = add i64 %2428, 4
  store i64 %2429, i64* %PC.i636
  %2430 = inttoptr i64 %2427 to i32*
  %2431 = load i32, i32* %2430
  %2432 = sext i32 %2431 to i64
  store i64 %2432, i64* %RAX.i637, align 8
  store %struct.Memory* %loadMem_47ba11, %struct.Memory** %MEMORY
  %loadMem_47ba15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2433 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2434 = getelementptr inbounds %struct.GPR, %struct.GPR* %2433, i32 0, i32 33
  %2435 = getelementptr inbounds %struct.Reg, %struct.Reg* %2434, i32 0, i32 0
  %PC.i633 = bitcast %union.anon* %2435 to i64*
  %2436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2437 = getelementptr inbounds %struct.GPR, %struct.GPR* %2436, i32 0, i32 1
  %2438 = getelementptr inbounds %struct.Reg, %struct.Reg* %2437, i32 0, i32 0
  %RAX.i634 = bitcast %union.anon* %2438 to i64*
  %2439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2440 = getelementptr inbounds %struct.GPR, %struct.GPR* %2439, i32 0, i32 11
  %2441 = getelementptr inbounds %struct.Reg, %struct.Reg* %2440, i32 0, i32 0
  %RDI.i635 = bitcast %union.anon* %2441 to i64*
  %2442 = load i64, i64* %RAX.i634
  %2443 = mul i64 %2442, 2
  %2444 = add i64 %2443, 7405056
  %2445 = load i64, i64* %PC.i633
  %2446 = add i64 %2445, 8
  store i64 %2446, i64* %PC.i633
  %2447 = inttoptr i64 %2444 to i16*
  %2448 = load i16, i16* %2447
  %2449 = sext i16 %2448 to i64
  %2450 = and i64 %2449, 4294967295
  store i64 %2450, i64* %RDI.i635, align 8
  store %struct.Memory* %loadMem_47ba15, %struct.Memory** %MEMORY
  %loadMem_47ba1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2452 = getelementptr inbounds %struct.GPR, %struct.GPR* %2451, i32 0, i32 33
  %2453 = getelementptr inbounds %struct.Reg, %struct.Reg* %2452, i32 0, i32 0
  %PC.i630 = bitcast %union.anon* %2453 to i64*
  %2454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2455 = getelementptr inbounds %struct.GPR, %struct.GPR* %2454, i32 0, i32 5
  %2456 = getelementptr inbounds %struct.Reg, %struct.Reg* %2455, i32 0, i32 0
  %RCX.i631 = bitcast %union.anon* %2456 to i64*
  %2457 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2458 = getelementptr inbounds %struct.GPR, %struct.GPR* %2457, i32 0, i32 15
  %2459 = getelementptr inbounds %struct.Reg, %struct.Reg* %2458, i32 0, i32 0
  %RBP.i632 = bitcast %union.anon* %2459 to i64*
  %2460 = load i64, i64* %RBP.i632
  %2461 = sub i64 %2460, 20
  %2462 = load i64, i64* %PC.i630
  %2463 = add i64 %2462, 3
  store i64 %2463, i64* %PC.i630
  %2464 = inttoptr i64 %2461 to i32*
  %2465 = load i32, i32* %2464
  %2466 = zext i32 %2465 to i64
  store i64 %2466, i64* %RCX.i631, align 8
  store %struct.Memory* %loadMem_47ba1d, %struct.Memory** %MEMORY
  %loadMem_47ba20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2468 = getelementptr inbounds %struct.GPR, %struct.GPR* %2467, i32 0, i32 33
  %2469 = getelementptr inbounds %struct.Reg, %struct.Reg* %2468, i32 0, i32 0
  %PC.i626 = bitcast %union.anon* %2469 to i64*
  %2470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2471 = getelementptr inbounds %struct.GPR, %struct.GPR* %2470, i32 0, i32 5
  %2472 = getelementptr inbounds %struct.Reg, %struct.Reg* %2471, i32 0, i32 0
  %2473 = bitcast %union.anon* %2472 to %struct.anon.2*
  %CL.i627 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2473, i32 0, i32 0
  %2474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2475 = getelementptr inbounds %struct.GPR, %struct.GPR* %2474, i32 0, i32 11
  %2476 = getelementptr inbounds %struct.Reg, %struct.Reg* %2475, i32 0, i32 0
  %RDI.i628 = bitcast %union.anon* %2476 to i64*
  %2477 = load i64, i64* %RDI.i628
  %2478 = load i8, i8* %CL.i627
  %2479 = zext i8 %2478 to i64
  %2480 = load i64, i64* %PC.i626
  %2481 = add i64 %2480, 2
  store i64 %2481, i64* %PC.i626
  %2482 = trunc i64 %2479 to i5
  switch i5 %2482, label %2489 [
    i5 0, label %routine_shll__cl___edi.exit629
    i5 1, label %2483
  ]

; <label>:2483:                                   ; preds = %routine_shll__cl___edi.exit665
  %2484 = trunc i64 %2477 to i32
  %2485 = shl i32 %2484, 1
  %2486 = icmp slt i32 %2484, 0
  %2487 = icmp slt i32 %2485, 0
  %2488 = xor i1 %2486, %2487
  br label %2498

; <label>:2489:                                   ; preds = %routine_shll__cl___edi.exit665
  %2490 = and i64 %2479, 31
  %2491 = add i64 %2490, 4294967295
  %2492 = and i64 %2477, 4294967295
  %2493 = and i64 %2491, 4294967295
  %2494 = shl i64 %2492, %2493
  %2495 = trunc i64 %2494 to i32
  %2496 = icmp slt i32 %2495, 0
  %2497 = shl i32 %2495, 1
  br label %2498

; <label>:2498:                                   ; preds = %2489, %2483
  %2499 = phi i1 [ %2486, %2483 ], [ %2496, %2489 ]
  %2500 = phi i1 [ %2488, %2483 ], [ false, %2489 ]
  %2501 = phi i32 [ %2485, %2483 ], [ %2497, %2489 ]
  %2502 = zext i32 %2501 to i64
  store i64 %2502, i64* %RDI.i628, align 8
  %2503 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2504 = zext i1 %2499 to i8
  store i8 %2504, i8* %2503, align 1
  %2505 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2506 = and i32 %2501, 254
  %2507 = call i32 @llvm.ctpop.i32(i32 %2506)
  %2508 = trunc i32 %2507 to i8
  %2509 = and i8 %2508, 1
  %2510 = xor i8 %2509, 1
  store i8 %2510, i8* %2505, align 1
  %2511 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2511, align 1
  %2512 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2513 = icmp eq i32 %2501, 0
  %2514 = zext i1 %2513 to i8
  store i8 %2514, i8* %2512, align 1
  %2515 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2516 = lshr i32 %2501, 31
  %2517 = trunc i32 %2516 to i8
  store i8 %2517, i8* %2515, align 1
  %2518 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2519 = zext i1 %2500 to i8
  store i8 %2519, i8* %2518, align 1
  br label %routine_shll__cl___edi.exit629

routine_shll__cl___edi.exit629:                   ; preds = %routine_shll__cl___edi.exit665, %2498
  store %struct.Memory* %loadMem_47ba20, %struct.Memory** %MEMORY
  %loadMem_47ba22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2521 = getelementptr inbounds %struct.GPR, %struct.GPR* %2520, i32 0, i32 33
  %2522 = getelementptr inbounds %struct.Reg, %struct.Reg* %2521, i32 0, i32 0
  %PC.i623 = bitcast %union.anon* %2522 to i64*
  %2523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2524 = getelementptr inbounds %struct.GPR, %struct.GPR* %2523, i32 0, i32 1
  %2525 = getelementptr inbounds %struct.Reg, %struct.Reg* %2524, i32 0, i32 0
  %RAX.i624 = bitcast %union.anon* %2525 to i64*
  %2526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2527 = getelementptr inbounds %struct.GPR, %struct.GPR* %2526, i32 0, i32 15
  %2528 = getelementptr inbounds %struct.Reg, %struct.Reg* %2527, i32 0, i32 0
  %RBP.i625 = bitcast %union.anon* %2528 to i64*
  %2529 = load i64, i64* %RBP.i625
  %2530 = sub i64 %2529, 12
  %2531 = load i64, i64* %PC.i623
  %2532 = add i64 %2531, 4
  store i64 %2532, i64* %PC.i623
  %2533 = inttoptr i64 %2530 to i32*
  %2534 = load i32, i32* %2533
  %2535 = sext i32 %2534 to i64
  store i64 %2535, i64* %RAX.i624, align 8
  store %struct.Memory* %loadMem_47ba22, %struct.Memory** %MEMORY
  %loadMem_47ba26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2536 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2537 = getelementptr inbounds %struct.GPR, %struct.GPR* %2536, i32 0, i32 33
  %2538 = getelementptr inbounds %struct.Reg, %struct.Reg* %2537, i32 0, i32 0
  %PC.i621 = bitcast %union.anon* %2538 to i64*
  %2539 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2540 = getelementptr inbounds %struct.GPR, %struct.GPR* %2539, i32 0, i32 1
  %2541 = getelementptr inbounds %struct.Reg, %struct.Reg* %2540, i32 0, i32 0
  %RAX.i622 = bitcast %union.anon* %2541 to i64*
  %2542 = load i64, i64* %RAX.i622
  %2543 = load i64, i64* %PC.i621
  %2544 = add i64 %2543, 4
  store i64 %2544, i64* %PC.i621
  %2545 = shl i64 %2542, 5
  %2546 = icmp slt i64 %2545, 0
  %2547 = shl i64 %2545, 1
  store i64 %2547, i64* %RAX.i622, align 8
  %2548 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2549 = zext i1 %2546 to i8
  store i8 %2549, i8* %2548, align 1
  %2550 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2551 = trunc i64 %2547 to i32
  %2552 = and i32 %2551, 254
  %2553 = call i32 @llvm.ctpop.i32(i32 %2552)
  %2554 = trunc i32 %2553 to i8
  %2555 = and i8 %2554, 1
  %2556 = xor i8 %2555, 1
  store i8 %2556, i8* %2550, align 1
  %2557 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2557, align 1
  %2558 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2559 = icmp eq i64 %2547, 0
  %2560 = zext i1 %2559 to i8
  store i8 %2560, i8* %2558, align 1
  %2561 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2562 = lshr i64 %2547, 63
  %2563 = trunc i64 %2562 to i8
  store i8 %2563, i8* %2561, align 1
  %2564 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2564, align 1
  store %struct.Memory* %loadMem_47ba26, %struct.Memory** %MEMORY
  %loadMem_47ba2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2566 = getelementptr inbounds %struct.GPR, %struct.GPR* %2565, i32 0, i32 33
  %2567 = getelementptr inbounds %struct.Reg, %struct.Reg* %2566, i32 0, i32 0
  %PC.i618 = bitcast %union.anon* %2567 to i64*
  %2568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2569 = getelementptr inbounds %struct.GPR, %struct.GPR* %2568, i32 0, i32 7
  %2570 = getelementptr inbounds %struct.Reg, %struct.Reg* %2569, i32 0, i32 0
  %RDX.i619 = bitcast %union.anon* %2570 to i64*
  %2571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2572 = getelementptr inbounds %struct.GPR, %struct.GPR* %2571, i32 0, i32 15
  %2573 = getelementptr inbounds %struct.Reg, %struct.Reg* %2572, i32 0, i32 0
  %RBP.i620 = bitcast %union.anon* %2573 to i64*
  %2574 = load i64, i64* %RBP.i620
  %2575 = sub i64 %2574, 40
  %2576 = load i64, i64* %PC.i618
  %2577 = add i64 %2576, 4
  store i64 %2577, i64* %PC.i618
  %2578 = inttoptr i64 %2575 to i64*
  %2579 = load i64, i64* %2578
  store i64 %2579, i64* %RDX.i619, align 8
  store %struct.Memory* %loadMem_47ba2a, %struct.Memory** %MEMORY
  %loadMem_47ba2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2581 = getelementptr inbounds %struct.GPR, %struct.GPR* %2580, i32 0, i32 33
  %2582 = getelementptr inbounds %struct.Reg, %struct.Reg* %2581, i32 0, i32 0
  %PC.i615 = bitcast %union.anon* %2582 to i64*
  %2583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2584 = getelementptr inbounds %struct.GPR, %struct.GPR* %2583, i32 0, i32 1
  %2585 = getelementptr inbounds %struct.Reg, %struct.Reg* %2584, i32 0, i32 0
  %RAX.i616 = bitcast %union.anon* %2585 to i64*
  %2586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2587 = getelementptr inbounds %struct.GPR, %struct.GPR* %2586, i32 0, i32 7
  %2588 = getelementptr inbounds %struct.Reg, %struct.Reg* %2587, i32 0, i32 0
  %RDX.i617 = bitcast %union.anon* %2588 to i64*
  %2589 = load i64, i64* %RDX.i617
  %2590 = load i64, i64* %RAX.i616
  %2591 = load i64, i64* %PC.i615
  %2592 = add i64 %2591, 3
  store i64 %2592, i64* %PC.i615
  %2593 = add i64 %2590, %2589
  store i64 %2593, i64* %RDX.i617, align 8
  %2594 = icmp ult i64 %2593, %2589
  %2595 = icmp ult i64 %2593, %2590
  %2596 = or i1 %2594, %2595
  %2597 = zext i1 %2596 to i8
  %2598 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2597, i8* %2598, align 1
  %2599 = trunc i64 %2593 to i32
  %2600 = and i32 %2599, 255
  %2601 = call i32 @llvm.ctpop.i32(i32 %2600)
  %2602 = trunc i32 %2601 to i8
  %2603 = and i8 %2602, 1
  %2604 = xor i8 %2603, 1
  %2605 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2604, i8* %2605, align 1
  %2606 = xor i64 %2590, %2589
  %2607 = xor i64 %2606, %2593
  %2608 = lshr i64 %2607, 4
  %2609 = trunc i64 %2608 to i8
  %2610 = and i8 %2609, 1
  %2611 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2610, i8* %2611, align 1
  %2612 = icmp eq i64 %2593, 0
  %2613 = zext i1 %2612 to i8
  %2614 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2613, i8* %2614, align 1
  %2615 = lshr i64 %2593, 63
  %2616 = trunc i64 %2615 to i8
  %2617 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2616, i8* %2617, align 1
  %2618 = lshr i64 %2589, 63
  %2619 = lshr i64 %2590, 63
  %2620 = xor i64 %2615, %2618
  %2621 = xor i64 %2615, %2619
  %2622 = add i64 %2620, %2621
  %2623 = icmp eq i64 %2622, 2
  %2624 = zext i1 %2623 to i8
  %2625 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2624, i8* %2625, align 1
  store %struct.Memory* %loadMem_47ba2e, %struct.Memory** %MEMORY
  %loadMem_47ba31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2627 = getelementptr inbounds %struct.GPR, %struct.GPR* %2626, i32 0, i32 33
  %2628 = getelementptr inbounds %struct.Reg, %struct.Reg* %2627, i32 0, i32 0
  %PC.i612 = bitcast %union.anon* %2628 to i64*
  %2629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2630 = getelementptr inbounds %struct.GPR, %struct.GPR* %2629, i32 0, i32 1
  %2631 = getelementptr inbounds %struct.Reg, %struct.Reg* %2630, i32 0, i32 0
  %RAX.i613 = bitcast %union.anon* %2631 to i64*
  %2632 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2633 = getelementptr inbounds %struct.GPR, %struct.GPR* %2632, i32 0, i32 15
  %2634 = getelementptr inbounds %struct.Reg, %struct.Reg* %2633, i32 0, i32 0
  %RBP.i614 = bitcast %union.anon* %2634 to i64*
  %2635 = load i64, i64* %RBP.i614
  %2636 = sub i64 %2635, 8
  %2637 = load i64, i64* %PC.i612
  %2638 = add i64 %2637, 4
  store i64 %2638, i64* %PC.i612
  %2639 = inttoptr i64 %2636 to i32*
  %2640 = load i32, i32* %2639
  %2641 = sext i32 %2640 to i64
  store i64 %2641, i64* %RAX.i613, align 8
  store %struct.Memory* %loadMem_47ba31, %struct.Memory** %MEMORY
  %loadMem_47ba35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2642 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2643 = getelementptr inbounds %struct.GPR, %struct.GPR* %2642, i32 0, i32 33
  %2644 = getelementptr inbounds %struct.Reg, %struct.Reg* %2643, i32 0, i32 0
  %PC.i610 = bitcast %union.anon* %2644 to i64*
  %2645 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2646 = getelementptr inbounds %struct.GPR, %struct.GPR* %2645, i32 0, i32 1
  %2647 = getelementptr inbounds %struct.Reg, %struct.Reg* %2646, i32 0, i32 0
  %RAX.i611 = bitcast %union.anon* %2647 to i64*
  %2648 = load i64, i64* %RAX.i611
  %2649 = load i64, i64* %PC.i610
  %2650 = add i64 %2649, 4
  store i64 %2650, i64* %PC.i610
  %2651 = shl i64 %2648, 3
  %2652 = icmp slt i64 %2651, 0
  %2653 = shl i64 %2651, 1
  store i64 %2653, i64* %RAX.i611, align 8
  %2654 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2655 = zext i1 %2652 to i8
  store i8 %2655, i8* %2654, align 1
  %2656 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2657 = trunc i64 %2653 to i32
  %2658 = and i32 %2657, 254
  %2659 = call i32 @llvm.ctpop.i32(i32 %2658)
  %2660 = trunc i32 %2659 to i8
  %2661 = and i8 %2660, 1
  %2662 = xor i8 %2661, 1
  store i8 %2662, i8* %2656, align 1
  %2663 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2663, align 1
  %2664 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2665 = icmp eq i64 %2653, 0
  %2666 = zext i1 %2665 to i8
  store i8 %2666, i8* %2664, align 1
  %2667 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2668 = lshr i64 %2653, 63
  %2669 = trunc i64 %2668 to i8
  store i8 %2669, i8* %2667, align 1
  %2670 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2670, align 1
  store %struct.Memory* %loadMem_47ba35, %struct.Memory** %MEMORY
  %loadMem_47ba39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2672 = getelementptr inbounds %struct.GPR, %struct.GPR* %2671, i32 0, i32 33
  %2673 = getelementptr inbounds %struct.Reg, %struct.Reg* %2672, i32 0, i32 0
  %PC.i607 = bitcast %union.anon* %2673 to i64*
  %2674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2675 = getelementptr inbounds %struct.GPR, %struct.GPR* %2674, i32 0, i32 1
  %2676 = getelementptr inbounds %struct.Reg, %struct.Reg* %2675, i32 0, i32 0
  %RAX.i608 = bitcast %union.anon* %2676 to i64*
  %2677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2678 = getelementptr inbounds %struct.GPR, %struct.GPR* %2677, i32 0, i32 7
  %2679 = getelementptr inbounds %struct.Reg, %struct.Reg* %2678, i32 0, i32 0
  %RDX.i609 = bitcast %union.anon* %2679 to i64*
  %2680 = load i64, i64* %RDX.i609
  %2681 = load i64, i64* %RAX.i608
  %2682 = load i64, i64* %PC.i607
  %2683 = add i64 %2682, 3
  store i64 %2683, i64* %PC.i607
  %2684 = add i64 %2681, %2680
  store i64 %2684, i64* %RDX.i609, align 8
  %2685 = icmp ult i64 %2684, %2680
  %2686 = icmp ult i64 %2684, %2681
  %2687 = or i1 %2685, %2686
  %2688 = zext i1 %2687 to i8
  %2689 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2688, i8* %2689, align 1
  %2690 = trunc i64 %2684 to i32
  %2691 = and i32 %2690, 255
  %2692 = call i32 @llvm.ctpop.i32(i32 %2691)
  %2693 = trunc i32 %2692 to i8
  %2694 = and i8 %2693, 1
  %2695 = xor i8 %2694, 1
  %2696 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2695, i8* %2696, align 1
  %2697 = xor i64 %2681, %2680
  %2698 = xor i64 %2697, %2684
  %2699 = lshr i64 %2698, 4
  %2700 = trunc i64 %2699 to i8
  %2701 = and i8 %2700, 1
  %2702 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2701, i8* %2702, align 1
  %2703 = icmp eq i64 %2684, 0
  %2704 = zext i1 %2703 to i8
  %2705 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2704, i8* %2705, align 1
  %2706 = lshr i64 %2684, 63
  %2707 = trunc i64 %2706 to i8
  %2708 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2707, i8* %2708, align 1
  %2709 = lshr i64 %2680, 63
  %2710 = lshr i64 %2681, 63
  %2711 = xor i64 %2706, %2709
  %2712 = xor i64 %2706, %2710
  %2713 = add i64 %2711, %2712
  %2714 = icmp eq i64 %2713, 2
  %2715 = zext i1 %2714 to i8
  %2716 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2715, i8* %2716, align 1
  store %struct.Memory* %loadMem_47ba39, %struct.Memory** %MEMORY
  %loadMem_47ba3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2718 = getelementptr inbounds %struct.GPR, %struct.GPR* %2717, i32 0, i32 33
  %2719 = getelementptr inbounds %struct.Reg, %struct.Reg* %2718, i32 0, i32 0
  %PC.i604 = bitcast %union.anon* %2719 to i64*
  %2720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2721 = getelementptr inbounds %struct.GPR, %struct.GPR* %2720, i32 0, i32 1
  %2722 = getelementptr inbounds %struct.Reg, %struct.Reg* %2721, i32 0, i32 0
  %RAX.i605 = bitcast %union.anon* %2722 to i64*
  %2723 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2724 = getelementptr inbounds %struct.GPR, %struct.GPR* %2723, i32 0, i32 15
  %2725 = getelementptr inbounds %struct.Reg, %struct.Reg* %2724, i32 0, i32 0
  %RBP.i606 = bitcast %union.anon* %2725 to i64*
  %2726 = load i64, i64* %RBP.i606
  %2727 = sub i64 %2726, 4
  %2728 = load i64, i64* %PC.i604
  %2729 = add i64 %2728, 4
  store i64 %2729, i64* %PC.i604
  %2730 = inttoptr i64 %2727 to i32*
  %2731 = load i32, i32* %2730
  %2732 = sext i32 %2731 to i64
  store i64 %2732, i64* %RAX.i605, align 8
  store %struct.Memory* %loadMem_47ba3c, %struct.Memory** %MEMORY
  %loadMem_47ba40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2733 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2734 = getelementptr inbounds %struct.GPR, %struct.GPR* %2733, i32 0, i32 33
  %2735 = getelementptr inbounds %struct.Reg, %struct.Reg* %2734, i32 0, i32 0
  %PC.i600 = bitcast %union.anon* %2735 to i64*
  %2736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2737 = getelementptr inbounds %struct.GPR, %struct.GPR* %2736, i32 0, i32 11
  %2738 = getelementptr inbounds %struct.Reg, %struct.Reg* %2737, i32 0, i32 0
  %EDI.i601 = bitcast %union.anon* %2738 to i32*
  %2739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2740 = getelementptr inbounds %struct.GPR, %struct.GPR* %2739, i32 0, i32 1
  %2741 = getelementptr inbounds %struct.Reg, %struct.Reg* %2740, i32 0, i32 0
  %RAX.i602 = bitcast %union.anon* %2741 to i64*
  %2742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2743 = getelementptr inbounds %struct.GPR, %struct.GPR* %2742, i32 0, i32 7
  %2744 = getelementptr inbounds %struct.Reg, %struct.Reg* %2743, i32 0, i32 0
  %RDX.i603 = bitcast %union.anon* %2744 to i64*
  %2745 = load i64, i64* %RDX.i603
  %2746 = load i64, i64* %RAX.i602
  %2747 = mul i64 %2746, 4
  %2748 = add i64 %2747, %2745
  %2749 = load i32, i32* %EDI.i601
  %2750 = zext i32 %2749 to i64
  %2751 = load i64, i64* %PC.i600
  %2752 = add i64 %2751, 3
  store i64 %2752, i64* %PC.i600
  %2753 = inttoptr i64 %2748 to i32*
  store i32 %2749, i32* %2753
  store %struct.Memory* %loadMem_47ba40, %struct.Memory** %MEMORY
  br label %block_.L_47ba43

block_.L_47ba43:                                  ; preds = %routine_shll__cl___edi.exit629, %routine_shll__cl___edi.exit756
  %loadMem_47ba43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2755 = getelementptr inbounds %struct.GPR, %struct.GPR* %2754, i32 0, i32 33
  %2756 = getelementptr inbounds %struct.Reg, %struct.Reg* %2755, i32 0, i32 0
  %PC.i598 = bitcast %union.anon* %2756 to i64*
  %2757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2758 = getelementptr inbounds %struct.GPR, %struct.GPR* %2757, i32 0, i32 1
  %2759 = getelementptr inbounds %struct.Reg, %struct.Reg* %2758, i32 0, i32 0
  %RAX.i599 = bitcast %union.anon* %2759 to i64*
  %2760 = load i64, i64* %PC.i598
  %2761 = add i64 %2760, 10
  store i64 %2761, i64* %PC.i598
  store i64 7397968, i64* %RAX.i599, align 8
  store %struct.Memory* %loadMem_47ba43, %struct.Memory** %MEMORY
  %loadMem_47ba4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2762 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2763 = getelementptr inbounds %struct.GPR, %struct.GPR* %2762, i32 0, i32 33
  %2764 = getelementptr inbounds %struct.Reg, %struct.Reg* %2763, i32 0, i32 0
  %PC.i595 = bitcast %union.anon* %2764 to i64*
  %2765 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2766 = getelementptr inbounds %struct.GPR, %struct.GPR* %2765, i32 0, i32 1
  %2767 = getelementptr inbounds %struct.Reg, %struct.Reg* %2766, i32 0, i32 0
  %RAX.i596 = bitcast %union.anon* %2767 to i64*
  %2768 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2769 = getelementptr inbounds %struct.GPR, %struct.GPR* %2768, i32 0, i32 5
  %2770 = getelementptr inbounds %struct.Reg, %struct.Reg* %2769, i32 0, i32 0
  %RCX.i597 = bitcast %union.anon* %2770 to i64*
  %2771 = load i64, i64* %RAX.i596
  %2772 = load i64, i64* %PC.i595
  %2773 = add i64 %2772, 3
  store i64 %2773, i64* %PC.i595
  store i64 %2771, i64* %RCX.i597, align 8
  store %struct.Memory* %loadMem_47ba4d, %struct.Memory** %MEMORY
  %loadMem_47ba50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2775 = getelementptr inbounds %struct.GPR, %struct.GPR* %2774, i32 0, i32 33
  %2776 = getelementptr inbounds %struct.Reg, %struct.Reg* %2775, i32 0, i32 0
  %PC.i593 = bitcast %union.anon* %2776 to i64*
  %2777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2778 = getelementptr inbounds %struct.GPR, %struct.GPR* %2777, i32 0, i32 5
  %2779 = getelementptr inbounds %struct.Reg, %struct.Reg* %2778, i32 0, i32 0
  %RCX.i594 = bitcast %union.anon* %2779 to i64*
  %2780 = load i64, i64* %RCX.i594
  %2781 = load i64, i64* %PC.i593
  %2782 = add i64 %2781, 7
  store i64 %2782, i64* %PC.i593
  %2783 = add i64 832, %2780
  store i64 %2783, i64* %RCX.i594, align 8
  %2784 = icmp ult i64 %2783, %2780
  %2785 = icmp ult i64 %2783, 832
  %2786 = or i1 %2784, %2785
  %2787 = zext i1 %2786 to i8
  %2788 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2787, i8* %2788, align 1
  %2789 = trunc i64 %2783 to i32
  %2790 = and i32 %2789, 255
  %2791 = call i32 @llvm.ctpop.i32(i32 %2790)
  %2792 = trunc i32 %2791 to i8
  %2793 = and i8 %2792, 1
  %2794 = xor i8 %2793, 1
  %2795 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2794, i8* %2795, align 1
  %2796 = xor i64 832, %2780
  %2797 = xor i64 %2796, %2783
  %2798 = lshr i64 %2797, 4
  %2799 = trunc i64 %2798 to i8
  %2800 = and i8 %2799, 1
  %2801 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2800, i8* %2801, align 1
  %2802 = icmp eq i64 %2783, 0
  %2803 = zext i1 %2802 to i8
  %2804 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2803, i8* %2804, align 1
  %2805 = lshr i64 %2783, 63
  %2806 = trunc i64 %2805 to i8
  %2807 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2806, i8* %2807, align 1
  %2808 = lshr i64 %2780, 63
  %2809 = xor i64 %2805, %2808
  %2810 = add i64 %2809, %2805
  %2811 = icmp eq i64 %2810, 2
  %2812 = zext i1 %2811 to i8
  %2813 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2812, i8* %2813, align 1
  store %struct.Memory* %loadMem_47ba50, %struct.Memory** %MEMORY
  %loadMem_47ba57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2814 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2815 = getelementptr inbounds %struct.GPR, %struct.GPR* %2814, i32 0, i32 33
  %2816 = getelementptr inbounds %struct.Reg, %struct.Reg* %2815, i32 0, i32 0
  %PC.i591 = bitcast %union.anon* %2816 to i64*
  %2817 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2818 = getelementptr inbounds %struct.GPR, %struct.GPR* %2817, i32 0, i32 7
  %2819 = getelementptr inbounds %struct.Reg, %struct.Reg* %2818, i32 0, i32 0
  %RDX.i592 = bitcast %union.anon* %2819 to i64*
  %2820 = load i64, i64* %PC.i591
  %2821 = add i64 %2820, 10
  store i64 %2821, i64* %PC.i591
  store i64 7131024, i64* %RDX.i592, align 8
  store %struct.Memory* %loadMem_47ba57, %struct.Memory** %MEMORY
  %loadMem_47ba61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2823 = getelementptr inbounds %struct.GPR, %struct.GPR* %2822, i32 0, i32 33
  %2824 = getelementptr inbounds %struct.Reg, %struct.Reg* %2823, i32 0, i32 0
  %PC.i588 = bitcast %union.anon* %2824 to i64*
  %2825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2826 = getelementptr inbounds %struct.GPR, %struct.GPR* %2825, i32 0, i32 9
  %2827 = getelementptr inbounds %struct.Reg, %struct.Reg* %2826, i32 0, i32 0
  %RSI.i589 = bitcast %union.anon* %2827 to i64*
  %2828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2829 = getelementptr inbounds %struct.GPR, %struct.GPR* %2828, i32 0, i32 15
  %2830 = getelementptr inbounds %struct.Reg, %struct.Reg* %2829, i32 0, i32 0
  %RBP.i590 = bitcast %union.anon* %2830 to i64*
  %2831 = load i64, i64* %RBP.i590
  %2832 = sub i64 %2831, 16
  %2833 = load i64, i64* %PC.i588
  %2834 = add i64 %2833, 4
  store i64 %2834, i64* %PC.i588
  %2835 = inttoptr i64 %2832 to i32*
  %2836 = load i32, i32* %2835
  %2837 = sext i32 %2836 to i64
  store i64 %2837, i64* %RSI.i589, align 8
  store %struct.Memory* %loadMem_47ba61, %struct.Memory** %MEMORY
  %loadMem_47ba65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2838 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2839 = getelementptr inbounds %struct.GPR, %struct.GPR* %2838, i32 0, i32 33
  %2840 = getelementptr inbounds %struct.Reg, %struct.Reg* %2839, i32 0, i32 0
  %PC.i585 = bitcast %union.anon* %2840 to i64*
  %2841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2842 = getelementptr inbounds %struct.GPR, %struct.GPR* %2841, i32 0, i32 9
  %2843 = getelementptr inbounds %struct.Reg, %struct.Reg* %2842, i32 0, i32 0
  %RSI.i586 = bitcast %union.anon* %2843 to i64*
  %2844 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2845 = getelementptr inbounds %struct.GPR, %struct.GPR* %2844, i32 0, i32 11
  %2846 = getelementptr inbounds %struct.Reg, %struct.Reg* %2845, i32 0, i32 0
  %RDI.i587 = bitcast %union.anon* %2846 to i64*
  %2847 = load i64, i64* %RSI.i586
  %2848 = mul i64 %2847, 2
  %2849 = add i64 %2848, 7405088
  %2850 = load i64, i64* %PC.i585
  %2851 = add i64 %2850, 8
  store i64 %2851, i64* %PC.i585
  %2852 = inttoptr i64 %2849 to i16*
  %2853 = load i16, i16* %2852
  %2854 = sext i16 %2853 to i64
  %2855 = and i64 %2854, 4294967295
  store i64 %2855, i64* %RDI.i587, align 8
  store %struct.Memory* %loadMem_47ba65, %struct.Memory** %MEMORY
  %loadMem_47ba6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2856 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2857 = getelementptr inbounds %struct.GPR, %struct.GPR* %2856, i32 0, i32 33
  %2858 = getelementptr inbounds %struct.Reg, %struct.Reg* %2857, i32 0, i32 0
  %PC.i582 = bitcast %union.anon* %2858 to i64*
  %2859 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2860 = getelementptr inbounds %struct.GPR, %struct.GPR* %2859, i32 0, i32 17
  %2861 = getelementptr inbounds %struct.Reg, %struct.Reg* %2860, i32 0, i32 0
  %R8D.i583 = bitcast %union.anon* %2861 to i32*
  %2862 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2863 = getelementptr inbounds %struct.GPR, %struct.GPR* %2862, i32 0, i32 15
  %2864 = getelementptr inbounds %struct.Reg, %struct.Reg* %2863, i32 0, i32 0
  %RBP.i584 = bitcast %union.anon* %2864 to i64*
  %2865 = bitcast i32* %R8D.i583 to i64*
  %2866 = load i64, i64* %RBP.i584
  %2867 = sub i64 %2866, 20
  %2868 = load i64, i64* %PC.i582
  %2869 = add i64 %2868, 4
  store i64 %2869, i64* %PC.i582
  %2870 = inttoptr i64 %2867 to i32*
  %2871 = load i32, i32* %2870
  %2872 = zext i32 %2871 to i64
  store i64 %2872, i64* %2865, align 8
  store %struct.Memory* %loadMem_47ba6d, %struct.Memory** %MEMORY
  %loadMem_47ba71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2873 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2874 = getelementptr inbounds %struct.GPR, %struct.GPR* %2873, i32 0, i32 33
  %2875 = getelementptr inbounds %struct.Reg, %struct.Reg* %2874, i32 0, i32 0
  %PC.i579 = bitcast %union.anon* %2875 to i64*
  %2876 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2877 = getelementptr inbounds %struct.GPR, %struct.GPR* %2876, i32 0, i32 5
  %2878 = getelementptr inbounds %struct.Reg, %struct.Reg* %2877, i32 0, i32 0
  %RCX.i580 = bitcast %union.anon* %2878 to i64*
  %2879 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2880 = getelementptr inbounds %struct.GPR, %struct.GPR* %2879, i32 0, i32 15
  %2881 = getelementptr inbounds %struct.Reg, %struct.Reg* %2880, i32 0, i32 0
  %RBP.i581 = bitcast %union.anon* %2881 to i64*
  %2882 = load i64, i64* %RBP.i581
  %2883 = sub i64 %2882, 48
  %2884 = load i64, i64* %RCX.i580
  %2885 = load i64, i64* %PC.i579
  %2886 = add i64 %2885, 4
  store i64 %2886, i64* %PC.i579
  %2887 = inttoptr i64 %2883 to i64*
  store i64 %2884, i64* %2887
  store %struct.Memory* %loadMem_47ba71, %struct.Memory** %MEMORY
  %loadMem_47ba75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2888 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2889 = getelementptr inbounds %struct.GPR, %struct.GPR* %2888, i32 0, i32 33
  %2890 = getelementptr inbounds %struct.Reg, %struct.Reg* %2889, i32 0, i32 0
  %PC.i576 = bitcast %union.anon* %2890 to i64*
  %2891 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2892 = getelementptr inbounds %struct.GPR, %struct.GPR* %2891, i32 0, i32 17
  %2893 = getelementptr inbounds %struct.Reg, %struct.Reg* %2892, i32 0, i32 0
  %R8D.i577 = bitcast %union.anon* %2893 to i32*
  %2894 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2895 = getelementptr inbounds %struct.GPR, %struct.GPR* %2894, i32 0, i32 5
  %2896 = getelementptr inbounds %struct.Reg, %struct.Reg* %2895, i32 0, i32 0
  %RCX.i578 = bitcast %union.anon* %2896 to i64*
  %2897 = load i32, i32* %R8D.i577
  %2898 = zext i32 %2897 to i64
  %2899 = load i64, i64* %PC.i576
  %2900 = add i64 %2899, 3
  store i64 %2900, i64* %PC.i576
  %2901 = and i64 %2898, 4294967295
  store i64 %2901, i64* %RCX.i578, align 8
  store %struct.Memory* %loadMem_47ba75, %struct.Memory** %MEMORY
  %loadMem_47ba78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2903 = getelementptr inbounds %struct.GPR, %struct.GPR* %2902, i32 0, i32 33
  %2904 = getelementptr inbounds %struct.Reg, %struct.Reg* %2903, i32 0, i32 0
  %PC.i572 = bitcast %union.anon* %2904 to i64*
  %2905 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2906 = getelementptr inbounds %struct.GPR, %struct.GPR* %2905, i32 0, i32 5
  %2907 = getelementptr inbounds %struct.Reg, %struct.Reg* %2906, i32 0, i32 0
  %2908 = bitcast %union.anon* %2907 to %struct.anon.2*
  %CL.i573 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2908, i32 0, i32 0
  %2909 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2910 = getelementptr inbounds %struct.GPR, %struct.GPR* %2909, i32 0, i32 11
  %2911 = getelementptr inbounds %struct.Reg, %struct.Reg* %2910, i32 0, i32 0
  %RDI.i574 = bitcast %union.anon* %2911 to i64*
  %2912 = load i64, i64* %RDI.i574
  %2913 = load i8, i8* %CL.i573
  %2914 = zext i8 %2913 to i64
  %2915 = load i64, i64* %PC.i572
  %2916 = add i64 %2915, 2
  store i64 %2916, i64* %PC.i572
  %2917 = trunc i64 %2914 to i5
  switch i5 %2917, label %2924 [
    i5 0, label %routine_shll__cl___edi.exit575
    i5 1, label %2918
  ]

; <label>:2918:                                   ; preds = %block_.L_47ba43
  %2919 = trunc i64 %2912 to i32
  %2920 = shl i32 %2919, 1
  %2921 = icmp slt i32 %2919, 0
  %2922 = icmp slt i32 %2920, 0
  %2923 = xor i1 %2921, %2922
  br label %2933

; <label>:2924:                                   ; preds = %block_.L_47ba43
  %2925 = and i64 %2914, 31
  %2926 = add i64 %2925, 4294967295
  %2927 = and i64 %2912, 4294967295
  %2928 = and i64 %2926, 4294967295
  %2929 = shl i64 %2927, %2928
  %2930 = trunc i64 %2929 to i32
  %2931 = icmp slt i32 %2930, 0
  %2932 = shl i32 %2930, 1
  br label %2933

; <label>:2933:                                   ; preds = %2924, %2918
  %2934 = phi i1 [ %2921, %2918 ], [ %2931, %2924 ]
  %2935 = phi i1 [ %2923, %2918 ], [ false, %2924 ]
  %2936 = phi i32 [ %2920, %2918 ], [ %2932, %2924 ]
  %2937 = zext i32 %2936 to i64
  store i64 %2937, i64* %RDI.i574, align 8
  %2938 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2939 = zext i1 %2934 to i8
  store i8 %2939, i8* %2938, align 1
  %2940 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2941 = and i32 %2936, 254
  %2942 = call i32 @llvm.ctpop.i32(i32 %2941)
  %2943 = trunc i32 %2942 to i8
  %2944 = and i8 %2943, 1
  %2945 = xor i8 %2944, 1
  store i8 %2945, i8* %2940, align 1
  %2946 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2946, align 1
  %2947 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2948 = icmp eq i32 %2936, 0
  %2949 = zext i1 %2948 to i8
  store i8 %2949, i8* %2947, align 1
  %2950 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2951 = lshr i32 %2936, 31
  %2952 = trunc i32 %2951 to i8
  store i8 %2952, i8* %2950, align 1
  %2953 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2954 = zext i1 %2935 to i8
  store i8 %2954, i8* %2953, align 1
  br label %routine_shll__cl___edi.exit575

routine_shll__cl___edi.exit575:                   ; preds = %block_.L_47ba43, %2933
  store %struct.Memory* %loadMem_47ba78, %struct.Memory** %MEMORY
  %loadMem_47ba7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2955 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2956 = getelementptr inbounds %struct.GPR, %struct.GPR* %2955, i32 0, i32 33
  %2957 = getelementptr inbounds %struct.Reg, %struct.Reg* %2956, i32 0, i32 0
  %PC.i569 = bitcast %union.anon* %2957 to i64*
  %2958 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2959 = getelementptr inbounds %struct.GPR, %struct.GPR* %2958, i32 0, i32 9
  %2960 = getelementptr inbounds %struct.Reg, %struct.Reg* %2959, i32 0, i32 0
  %RSI.i570 = bitcast %union.anon* %2960 to i64*
  %2961 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2962 = getelementptr inbounds %struct.GPR, %struct.GPR* %2961, i32 0, i32 15
  %2963 = getelementptr inbounds %struct.Reg, %struct.Reg* %2962, i32 0, i32 0
  %RBP.i571 = bitcast %union.anon* %2963 to i64*
  %2964 = load i64, i64* %RBP.i571
  %2965 = sub i64 %2964, 12
  %2966 = load i64, i64* %PC.i569
  %2967 = add i64 %2966, 4
  store i64 %2967, i64* %PC.i569
  %2968 = inttoptr i64 %2965 to i32*
  %2969 = load i32, i32* %2968
  %2970 = sext i32 %2969 to i64
  store i64 %2970, i64* %RSI.i570, align 8
  store %struct.Memory* %loadMem_47ba7a, %struct.Memory** %MEMORY
  %loadMem_47ba7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2971 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2972 = getelementptr inbounds %struct.GPR, %struct.GPR* %2971, i32 0, i32 33
  %2973 = getelementptr inbounds %struct.Reg, %struct.Reg* %2972, i32 0, i32 0
  %PC.i567 = bitcast %union.anon* %2973 to i64*
  %2974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2975 = getelementptr inbounds %struct.GPR, %struct.GPR* %2974, i32 0, i32 9
  %2976 = getelementptr inbounds %struct.Reg, %struct.Reg* %2975, i32 0, i32 0
  %RSI.i568 = bitcast %union.anon* %2976 to i64*
  %2977 = load i64, i64* %RSI.i568
  %2978 = load i64, i64* %PC.i567
  %2979 = add i64 %2978, 4
  store i64 %2979, i64* %PC.i567
  %2980 = shl i64 %2977, 5
  %2981 = icmp slt i64 %2980, 0
  %2982 = shl i64 %2980, 1
  store i64 %2982, i64* %RSI.i568, align 8
  %2983 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2984 = zext i1 %2981 to i8
  store i8 %2984, i8* %2983, align 1
  %2985 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2986 = trunc i64 %2982 to i32
  %2987 = and i32 %2986, 254
  %2988 = call i32 @llvm.ctpop.i32(i32 %2987)
  %2989 = trunc i32 %2988 to i8
  %2990 = and i8 %2989, 1
  %2991 = xor i8 %2990, 1
  store i8 %2991, i8* %2985, align 1
  %2992 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2992, align 1
  %2993 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2994 = icmp eq i64 %2982, 0
  %2995 = zext i1 %2994 to i8
  store i8 %2995, i8* %2993, align 1
  %2996 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2997 = lshr i64 %2982, 63
  %2998 = trunc i64 %2997 to i8
  store i8 %2998, i8* %2996, align 1
  %2999 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2999, align 1
  store %struct.Memory* %loadMem_47ba7e, %struct.Memory** %MEMORY
  %loadMem_47ba82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3001 = getelementptr inbounds %struct.GPR, %struct.GPR* %3000, i32 0, i32 33
  %3002 = getelementptr inbounds %struct.Reg, %struct.Reg* %3001, i32 0, i32 0
  %PC.i564 = bitcast %union.anon* %3002 to i64*
  %3003 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3004 = getelementptr inbounds %struct.GPR, %struct.GPR* %3003, i32 0, i32 7
  %3005 = getelementptr inbounds %struct.Reg, %struct.Reg* %3004, i32 0, i32 0
  %RDX.i565 = bitcast %union.anon* %3005 to i64*
  %3006 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3007 = getelementptr inbounds %struct.GPR, %struct.GPR* %3006, i32 0, i32 9
  %3008 = getelementptr inbounds %struct.Reg, %struct.Reg* %3007, i32 0, i32 0
  %RSI.i566 = bitcast %union.anon* %3008 to i64*
  %3009 = load i64, i64* %RDX.i565
  %3010 = load i64, i64* %RSI.i566
  %3011 = load i64, i64* %PC.i564
  %3012 = add i64 %3011, 3
  store i64 %3012, i64* %PC.i564
  %3013 = add i64 %3010, %3009
  store i64 %3013, i64* %RDX.i565, align 8
  %3014 = icmp ult i64 %3013, %3009
  %3015 = icmp ult i64 %3013, %3010
  %3016 = or i1 %3014, %3015
  %3017 = zext i1 %3016 to i8
  %3018 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3017, i8* %3018, align 1
  %3019 = trunc i64 %3013 to i32
  %3020 = and i32 %3019, 255
  %3021 = call i32 @llvm.ctpop.i32(i32 %3020)
  %3022 = trunc i32 %3021 to i8
  %3023 = and i8 %3022, 1
  %3024 = xor i8 %3023, 1
  %3025 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3024, i8* %3025, align 1
  %3026 = xor i64 %3010, %3009
  %3027 = xor i64 %3026, %3013
  %3028 = lshr i64 %3027, 4
  %3029 = trunc i64 %3028 to i8
  %3030 = and i8 %3029, 1
  %3031 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3030, i8* %3031, align 1
  %3032 = icmp eq i64 %3013, 0
  %3033 = zext i1 %3032 to i8
  %3034 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3033, i8* %3034, align 1
  %3035 = lshr i64 %3013, 63
  %3036 = trunc i64 %3035 to i8
  %3037 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3036, i8* %3037, align 1
  %3038 = lshr i64 %3009, 63
  %3039 = lshr i64 %3010, 63
  %3040 = xor i64 %3035, %3038
  %3041 = xor i64 %3035, %3039
  %3042 = add i64 %3040, %3041
  %3043 = icmp eq i64 %3042, 2
  %3044 = zext i1 %3043 to i8
  %3045 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3044, i8* %3045, align 1
  store %struct.Memory* %loadMem_47ba82, %struct.Memory** %MEMORY
  %loadMem_47ba85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3046 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3047 = getelementptr inbounds %struct.GPR, %struct.GPR* %3046, i32 0, i32 33
  %3048 = getelementptr inbounds %struct.Reg, %struct.Reg* %3047, i32 0, i32 0
  %PC.i561 = bitcast %union.anon* %3048 to i64*
  %3049 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3050 = getelementptr inbounds %struct.GPR, %struct.GPR* %3049, i32 0, i32 9
  %3051 = getelementptr inbounds %struct.Reg, %struct.Reg* %3050, i32 0, i32 0
  %RSI.i562 = bitcast %union.anon* %3051 to i64*
  %3052 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3053 = getelementptr inbounds %struct.GPR, %struct.GPR* %3052, i32 0, i32 15
  %3054 = getelementptr inbounds %struct.Reg, %struct.Reg* %3053, i32 0, i32 0
  %RBP.i563 = bitcast %union.anon* %3054 to i64*
  %3055 = load i64, i64* %RBP.i563
  %3056 = sub i64 %3055, 8
  %3057 = load i64, i64* %PC.i561
  %3058 = add i64 %3057, 4
  store i64 %3058, i64* %PC.i561
  %3059 = inttoptr i64 %3056 to i32*
  %3060 = load i32, i32* %3059
  %3061 = sext i32 %3060 to i64
  store i64 %3061, i64* %RSI.i562, align 8
  store %struct.Memory* %loadMem_47ba85, %struct.Memory** %MEMORY
  %loadMem_47ba89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3062 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3063 = getelementptr inbounds %struct.GPR, %struct.GPR* %3062, i32 0, i32 33
  %3064 = getelementptr inbounds %struct.Reg, %struct.Reg* %3063, i32 0, i32 0
  %PC.i559 = bitcast %union.anon* %3064 to i64*
  %3065 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3066 = getelementptr inbounds %struct.GPR, %struct.GPR* %3065, i32 0, i32 9
  %3067 = getelementptr inbounds %struct.Reg, %struct.Reg* %3066, i32 0, i32 0
  %RSI.i560 = bitcast %union.anon* %3067 to i64*
  %3068 = load i64, i64* %RSI.i560
  %3069 = load i64, i64* %PC.i559
  %3070 = add i64 %3069, 4
  store i64 %3070, i64* %PC.i559
  %3071 = shl i64 %3068, 3
  %3072 = icmp slt i64 %3071, 0
  %3073 = shl i64 %3071, 1
  store i64 %3073, i64* %RSI.i560, align 8
  %3074 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %3075 = zext i1 %3072 to i8
  store i8 %3075, i8* %3074, align 1
  %3076 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %3077 = trunc i64 %3073 to i32
  %3078 = and i32 %3077, 254
  %3079 = call i32 @llvm.ctpop.i32(i32 %3078)
  %3080 = trunc i32 %3079 to i8
  %3081 = and i8 %3080, 1
  %3082 = xor i8 %3081, 1
  store i8 %3082, i8* %3076, align 1
  %3083 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3083, align 1
  %3084 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3085 = icmp eq i64 %3073, 0
  %3086 = zext i1 %3085 to i8
  store i8 %3086, i8* %3084, align 1
  %3087 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3088 = lshr i64 %3073, 63
  %3089 = trunc i64 %3088 to i8
  store i8 %3089, i8* %3087, align 1
  %3090 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3090, align 1
  store %struct.Memory* %loadMem_47ba89, %struct.Memory** %MEMORY
  %loadMem_47ba8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3091 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3092 = getelementptr inbounds %struct.GPR, %struct.GPR* %3091, i32 0, i32 33
  %3093 = getelementptr inbounds %struct.Reg, %struct.Reg* %3092, i32 0, i32 0
  %PC.i556 = bitcast %union.anon* %3093 to i64*
  %3094 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3095 = getelementptr inbounds %struct.GPR, %struct.GPR* %3094, i32 0, i32 7
  %3096 = getelementptr inbounds %struct.Reg, %struct.Reg* %3095, i32 0, i32 0
  %RDX.i557 = bitcast %union.anon* %3096 to i64*
  %3097 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3098 = getelementptr inbounds %struct.GPR, %struct.GPR* %3097, i32 0, i32 9
  %3099 = getelementptr inbounds %struct.Reg, %struct.Reg* %3098, i32 0, i32 0
  %RSI.i558 = bitcast %union.anon* %3099 to i64*
  %3100 = load i64, i64* %RDX.i557
  %3101 = load i64, i64* %RSI.i558
  %3102 = load i64, i64* %PC.i556
  %3103 = add i64 %3102, 3
  store i64 %3103, i64* %PC.i556
  %3104 = add i64 %3101, %3100
  store i64 %3104, i64* %RDX.i557, align 8
  %3105 = icmp ult i64 %3104, %3100
  %3106 = icmp ult i64 %3104, %3101
  %3107 = or i1 %3105, %3106
  %3108 = zext i1 %3107 to i8
  %3109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3108, i8* %3109, align 1
  %3110 = trunc i64 %3104 to i32
  %3111 = and i32 %3110, 255
  %3112 = call i32 @llvm.ctpop.i32(i32 %3111)
  %3113 = trunc i32 %3112 to i8
  %3114 = and i8 %3113, 1
  %3115 = xor i8 %3114, 1
  %3116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3115, i8* %3116, align 1
  %3117 = xor i64 %3101, %3100
  %3118 = xor i64 %3117, %3104
  %3119 = lshr i64 %3118, 4
  %3120 = trunc i64 %3119 to i8
  %3121 = and i8 %3120, 1
  %3122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3121, i8* %3122, align 1
  %3123 = icmp eq i64 %3104, 0
  %3124 = zext i1 %3123 to i8
  %3125 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3124, i8* %3125, align 1
  %3126 = lshr i64 %3104, 63
  %3127 = trunc i64 %3126 to i8
  %3128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3127, i8* %3128, align 1
  %3129 = lshr i64 %3100, 63
  %3130 = lshr i64 %3101, 63
  %3131 = xor i64 %3126, %3129
  %3132 = xor i64 %3126, %3130
  %3133 = add i64 %3131, %3132
  %3134 = icmp eq i64 %3133, 2
  %3135 = zext i1 %3134 to i8
  %3136 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3135, i8* %3136, align 1
  store %struct.Memory* %loadMem_47ba8d, %struct.Memory** %MEMORY
  %loadMem_47ba90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3138 = getelementptr inbounds %struct.GPR, %struct.GPR* %3137, i32 0, i32 33
  %3139 = getelementptr inbounds %struct.Reg, %struct.Reg* %3138, i32 0, i32 0
  %PC.i553 = bitcast %union.anon* %3139 to i64*
  %3140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3141 = getelementptr inbounds %struct.GPR, %struct.GPR* %3140, i32 0, i32 9
  %3142 = getelementptr inbounds %struct.Reg, %struct.Reg* %3141, i32 0, i32 0
  %RSI.i554 = bitcast %union.anon* %3142 to i64*
  %3143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3144 = getelementptr inbounds %struct.GPR, %struct.GPR* %3143, i32 0, i32 15
  %3145 = getelementptr inbounds %struct.Reg, %struct.Reg* %3144, i32 0, i32 0
  %RBP.i555 = bitcast %union.anon* %3145 to i64*
  %3146 = load i64, i64* %RBP.i555
  %3147 = sub i64 %3146, 4
  %3148 = load i64, i64* %PC.i553
  %3149 = add i64 %3148, 4
  store i64 %3149, i64* %PC.i553
  %3150 = inttoptr i64 %3147 to i32*
  %3151 = load i32, i32* %3150
  %3152 = sext i32 %3151 to i64
  store i64 %3152, i64* %RSI.i554, align 8
  store %struct.Memory* %loadMem_47ba90, %struct.Memory** %MEMORY
  %loadMem_47ba94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3154 = getelementptr inbounds %struct.GPR, %struct.GPR* %3153, i32 0, i32 33
  %3155 = getelementptr inbounds %struct.Reg, %struct.Reg* %3154, i32 0, i32 0
  %PC.i549 = bitcast %union.anon* %3155 to i64*
  %3156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3157 = getelementptr inbounds %struct.GPR, %struct.GPR* %3156, i32 0, i32 11
  %3158 = getelementptr inbounds %struct.Reg, %struct.Reg* %3157, i32 0, i32 0
  %EDI.i550 = bitcast %union.anon* %3158 to i32*
  %3159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3160 = getelementptr inbounds %struct.GPR, %struct.GPR* %3159, i32 0, i32 7
  %3161 = getelementptr inbounds %struct.Reg, %struct.Reg* %3160, i32 0, i32 0
  %RDX.i551 = bitcast %union.anon* %3161 to i64*
  %3162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3163 = getelementptr inbounds %struct.GPR, %struct.GPR* %3162, i32 0, i32 9
  %3164 = getelementptr inbounds %struct.Reg, %struct.Reg* %3163, i32 0, i32 0
  %RSI.i552 = bitcast %union.anon* %3164 to i64*
  %3165 = load i64, i64* %RDX.i551
  %3166 = load i64, i64* %RSI.i552
  %3167 = mul i64 %3166, 4
  %3168 = add i64 %3167, %3165
  %3169 = load i32, i32* %EDI.i550
  %3170 = zext i32 %3169 to i64
  %3171 = load i64, i64* %PC.i549
  %3172 = add i64 %3171, 3
  store i64 %3172, i64* %PC.i549
  %3173 = inttoptr i64 %3168 to i32*
  store i32 %3169, i32* %3173
  store %struct.Memory* %loadMem_47ba94, %struct.Memory** %MEMORY
  %loadMem_47ba97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3175 = getelementptr inbounds %struct.GPR, %struct.GPR* %3174, i32 0, i32 33
  %3176 = getelementptr inbounds %struct.Reg, %struct.Reg* %3175, i32 0, i32 0
  %PC.i546 = bitcast %union.anon* %3176 to i64*
  %3177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3178 = getelementptr inbounds %struct.GPR, %struct.GPR* %3177, i32 0, i32 7
  %3179 = getelementptr inbounds %struct.Reg, %struct.Reg* %3178, i32 0, i32 0
  %RDX.i547 = bitcast %union.anon* %3179 to i64*
  %3180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3181 = getelementptr inbounds %struct.GPR, %struct.GPR* %3180, i32 0, i32 15
  %3182 = getelementptr inbounds %struct.Reg, %struct.Reg* %3181, i32 0, i32 0
  %RBP.i548 = bitcast %union.anon* %3182 to i64*
  %3183 = load i64, i64* %RBP.i548
  %3184 = sub i64 %3183, 16
  %3185 = load i64, i64* %PC.i546
  %3186 = add i64 %3185, 4
  store i64 %3186, i64* %PC.i546
  %3187 = inttoptr i64 %3184 to i32*
  %3188 = load i32, i32* %3187
  %3189 = sext i32 %3188 to i64
  store i64 %3189, i64* %RDX.i547, align 8
  store %struct.Memory* %loadMem_47ba97, %struct.Memory** %MEMORY
  %loadMem_47ba9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3191 = getelementptr inbounds %struct.GPR, %struct.GPR* %3190, i32 0, i32 33
  %3192 = getelementptr inbounds %struct.Reg, %struct.Reg* %3191, i32 0, i32 0
  %PC.i543 = bitcast %union.anon* %3192 to i64*
  %3193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3194 = getelementptr inbounds %struct.GPR, %struct.GPR* %3193, i32 0, i32 7
  %3195 = getelementptr inbounds %struct.Reg, %struct.Reg* %3194, i32 0, i32 0
  %RDX.i544 = bitcast %union.anon* %3195 to i64*
  %3196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3197 = getelementptr inbounds %struct.GPR, %struct.GPR* %3196, i32 0, i32 11
  %3198 = getelementptr inbounds %struct.Reg, %struct.Reg* %3197, i32 0, i32 0
  %RDI.i545 = bitcast %union.anon* %3198 to i64*
  %3199 = load i64, i64* %RDX.i544
  %3200 = mul i64 %3199, 2
  %3201 = add i64 %3200, 7405120
  %3202 = load i64, i64* %PC.i543
  %3203 = add i64 %3202, 8
  store i64 %3203, i64* %PC.i543
  %3204 = inttoptr i64 %3201 to i16*
  %3205 = load i16, i16* %3204
  %3206 = sext i16 %3205 to i64
  %3207 = and i64 %3206, 4294967295
  store i64 %3207, i64* %RDI.i545, align 8
  store %struct.Memory* %loadMem_47ba9b, %struct.Memory** %MEMORY
  %loadMem_47baa3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3209 = getelementptr inbounds %struct.GPR, %struct.GPR* %3208, i32 0, i32 33
  %3210 = getelementptr inbounds %struct.Reg, %struct.Reg* %3209, i32 0, i32 0
  %PC.i540 = bitcast %union.anon* %3210 to i64*
  %3211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3212 = getelementptr inbounds %struct.GPR, %struct.GPR* %3211, i32 0, i32 5
  %3213 = getelementptr inbounds %struct.Reg, %struct.Reg* %3212, i32 0, i32 0
  %RCX.i541 = bitcast %union.anon* %3213 to i64*
  %3214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3215 = getelementptr inbounds %struct.GPR, %struct.GPR* %3214, i32 0, i32 15
  %3216 = getelementptr inbounds %struct.Reg, %struct.Reg* %3215, i32 0, i32 0
  %RBP.i542 = bitcast %union.anon* %3216 to i64*
  %3217 = load i64, i64* %RBP.i542
  %3218 = sub i64 %3217, 20
  %3219 = load i64, i64* %PC.i540
  %3220 = add i64 %3219, 3
  store i64 %3220, i64* %PC.i540
  %3221 = inttoptr i64 %3218 to i32*
  %3222 = load i32, i32* %3221
  %3223 = zext i32 %3222 to i64
  store i64 %3223, i64* %RCX.i541, align 8
  store %struct.Memory* %loadMem_47baa3, %struct.Memory** %MEMORY
  %loadMem_47baa6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3225 = getelementptr inbounds %struct.GPR, %struct.GPR* %3224, i32 0, i32 33
  %3226 = getelementptr inbounds %struct.Reg, %struct.Reg* %3225, i32 0, i32 0
  %PC.i536 = bitcast %union.anon* %3226 to i64*
  %3227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3228 = getelementptr inbounds %struct.GPR, %struct.GPR* %3227, i32 0, i32 5
  %3229 = getelementptr inbounds %struct.Reg, %struct.Reg* %3228, i32 0, i32 0
  %3230 = bitcast %union.anon* %3229 to %struct.anon.2*
  %CL.i537 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3230, i32 0, i32 0
  %3231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3232 = getelementptr inbounds %struct.GPR, %struct.GPR* %3231, i32 0, i32 11
  %3233 = getelementptr inbounds %struct.Reg, %struct.Reg* %3232, i32 0, i32 0
  %RDI.i538 = bitcast %union.anon* %3233 to i64*
  %3234 = load i64, i64* %RDI.i538
  %3235 = load i8, i8* %CL.i537
  %3236 = zext i8 %3235 to i64
  %3237 = load i64, i64* %PC.i536
  %3238 = add i64 %3237, 2
  store i64 %3238, i64* %PC.i536
  %3239 = trunc i64 %3236 to i5
  switch i5 %3239, label %3246 [
    i5 0, label %routine_shll__cl___edi.exit539
    i5 1, label %3240
  ]

; <label>:3240:                                   ; preds = %routine_shll__cl___edi.exit575
  %3241 = trunc i64 %3234 to i32
  %3242 = shl i32 %3241, 1
  %3243 = icmp slt i32 %3241, 0
  %3244 = icmp slt i32 %3242, 0
  %3245 = xor i1 %3243, %3244
  br label %3255

; <label>:3246:                                   ; preds = %routine_shll__cl___edi.exit575
  %3247 = and i64 %3236, 31
  %3248 = add i64 %3247, 4294967295
  %3249 = and i64 %3234, 4294967295
  %3250 = and i64 %3248, 4294967295
  %3251 = shl i64 %3249, %3250
  %3252 = trunc i64 %3251 to i32
  %3253 = icmp slt i32 %3252, 0
  %3254 = shl i32 %3252, 1
  br label %3255

; <label>:3255:                                   ; preds = %3246, %3240
  %3256 = phi i1 [ %3243, %3240 ], [ %3253, %3246 ]
  %3257 = phi i1 [ %3245, %3240 ], [ false, %3246 ]
  %3258 = phi i32 [ %3242, %3240 ], [ %3254, %3246 ]
  %3259 = zext i32 %3258 to i64
  store i64 %3259, i64* %RDI.i538, align 8
  %3260 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %3261 = zext i1 %3256 to i8
  store i8 %3261, i8* %3260, align 1
  %3262 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %3263 = and i32 %3258, 254
  %3264 = call i32 @llvm.ctpop.i32(i32 %3263)
  %3265 = trunc i32 %3264 to i8
  %3266 = and i8 %3265, 1
  %3267 = xor i8 %3266, 1
  store i8 %3267, i8* %3262, align 1
  %3268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3268, align 1
  %3269 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3270 = icmp eq i32 %3258, 0
  %3271 = zext i1 %3270 to i8
  store i8 %3271, i8* %3269, align 1
  %3272 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3273 = lshr i32 %3258, 31
  %3274 = trunc i32 %3273 to i8
  store i8 %3274, i8* %3272, align 1
  %3275 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3276 = zext i1 %3257 to i8
  store i8 %3276, i8* %3275, align 1
  br label %routine_shll__cl___edi.exit539

routine_shll__cl___edi.exit539:                   ; preds = %routine_shll__cl___edi.exit575, %3255
  store %struct.Memory* %loadMem_47baa6, %struct.Memory** %MEMORY
  %loadMem_47baa8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3278 = getelementptr inbounds %struct.GPR, %struct.GPR* %3277, i32 0, i32 33
  %3279 = getelementptr inbounds %struct.Reg, %struct.Reg* %3278, i32 0, i32 0
  %PC.i533 = bitcast %union.anon* %3279 to i64*
  %3280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3281 = getelementptr inbounds %struct.GPR, %struct.GPR* %3280, i32 0, i32 7
  %3282 = getelementptr inbounds %struct.Reg, %struct.Reg* %3281, i32 0, i32 0
  %RDX.i534 = bitcast %union.anon* %3282 to i64*
  %3283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3284 = getelementptr inbounds %struct.GPR, %struct.GPR* %3283, i32 0, i32 15
  %3285 = getelementptr inbounds %struct.Reg, %struct.Reg* %3284, i32 0, i32 0
  %RBP.i535 = bitcast %union.anon* %3285 to i64*
  %3286 = load i64, i64* %RBP.i535
  %3287 = sub i64 %3286, 12
  %3288 = load i64, i64* %PC.i533
  %3289 = add i64 %3288, 4
  store i64 %3289, i64* %PC.i533
  %3290 = inttoptr i64 %3287 to i32*
  %3291 = load i32, i32* %3290
  %3292 = sext i32 %3291 to i64
  store i64 %3292, i64* %RDX.i534, align 8
  store %struct.Memory* %loadMem_47baa8, %struct.Memory** %MEMORY
  %loadMem_47baac = load %struct.Memory*, %struct.Memory** %MEMORY
  %3293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3294 = getelementptr inbounds %struct.GPR, %struct.GPR* %3293, i32 0, i32 33
  %3295 = getelementptr inbounds %struct.Reg, %struct.Reg* %3294, i32 0, i32 0
  %PC.i531 = bitcast %union.anon* %3295 to i64*
  %3296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3297 = getelementptr inbounds %struct.GPR, %struct.GPR* %3296, i32 0, i32 7
  %3298 = getelementptr inbounds %struct.Reg, %struct.Reg* %3297, i32 0, i32 0
  %RDX.i532 = bitcast %union.anon* %3298 to i64*
  %3299 = load i64, i64* %RDX.i532
  %3300 = load i64, i64* %PC.i531
  %3301 = add i64 %3300, 4
  store i64 %3301, i64* %PC.i531
  %3302 = shl i64 %3299, 5
  %3303 = icmp slt i64 %3302, 0
  %3304 = shl i64 %3302, 1
  store i64 %3304, i64* %RDX.i532, align 8
  %3305 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %3306 = zext i1 %3303 to i8
  store i8 %3306, i8* %3305, align 1
  %3307 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %3308 = trunc i64 %3304 to i32
  %3309 = and i32 %3308, 254
  %3310 = call i32 @llvm.ctpop.i32(i32 %3309)
  %3311 = trunc i32 %3310 to i8
  %3312 = and i8 %3311, 1
  %3313 = xor i8 %3312, 1
  store i8 %3313, i8* %3307, align 1
  %3314 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3314, align 1
  %3315 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3316 = icmp eq i64 %3304, 0
  %3317 = zext i1 %3316 to i8
  store i8 %3317, i8* %3315, align 1
  %3318 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3319 = lshr i64 %3304, 63
  %3320 = trunc i64 %3319 to i8
  store i8 %3320, i8* %3318, align 1
  %3321 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3321, align 1
  store %struct.Memory* %loadMem_47baac, %struct.Memory** %MEMORY
  %loadMem_47bab0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3322 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3323 = getelementptr inbounds %struct.GPR, %struct.GPR* %3322, i32 0, i32 33
  %3324 = getelementptr inbounds %struct.Reg, %struct.Reg* %3323, i32 0, i32 0
  %PC.i528 = bitcast %union.anon* %3324 to i64*
  %3325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3326 = getelementptr inbounds %struct.GPR, %struct.GPR* %3325, i32 0, i32 1
  %3327 = getelementptr inbounds %struct.Reg, %struct.Reg* %3326, i32 0, i32 0
  %RAX.i529 = bitcast %union.anon* %3327 to i64*
  %3328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3329 = getelementptr inbounds %struct.GPR, %struct.GPR* %3328, i32 0, i32 7
  %3330 = getelementptr inbounds %struct.Reg, %struct.Reg* %3329, i32 0, i32 0
  %RDX.i530 = bitcast %union.anon* %3330 to i64*
  %3331 = load i64, i64* %RAX.i529
  %3332 = load i64, i64* %RDX.i530
  %3333 = load i64, i64* %PC.i528
  %3334 = add i64 %3333, 3
  store i64 %3334, i64* %PC.i528
  %3335 = add i64 %3332, %3331
  store i64 %3335, i64* %RAX.i529, align 8
  %3336 = icmp ult i64 %3335, %3331
  %3337 = icmp ult i64 %3335, %3332
  %3338 = or i1 %3336, %3337
  %3339 = zext i1 %3338 to i8
  %3340 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3339, i8* %3340, align 1
  %3341 = trunc i64 %3335 to i32
  %3342 = and i32 %3341, 255
  %3343 = call i32 @llvm.ctpop.i32(i32 %3342)
  %3344 = trunc i32 %3343 to i8
  %3345 = and i8 %3344, 1
  %3346 = xor i8 %3345, 1
  %3347 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3346, i8* %3347, align 1
  %3348 = xor i64 %3332, %3331
  %3349 = xor i64 %3348, %3335
  %3350 = lshr i64 %3349, 4
  %3351 = trunc i64 %3350 to i8
  %3352 = and i8 %3351, 1
  %3353 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3352, i8* %3353, align 1
  %3354 = icmp eq i64 %3335, 0
  %3355 = zext i1 %3354 to i8
  %3356 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3355, i8* %3356, align 1
  %3357 = lshr i64 %3335, 63
  %3358 = trunc i64 %3357 to i8
  %3359 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3358, i8* %3359, align 1
  %3360 = lshr i64 %3331, 63
  %3361 = lshr i64 %3332, 63
  %3362 = xor i64 %3357, %3360
  %3363 = xor i64 %3357, %3361
  %3364 = add i64 %3362, %3363
  %3365 = icmp eq i64 %3364, 2
  %3366 = zext i1 %3365 to i8
  %3367 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3366, i8* %3367, align 1
  store %struct.Memory* %loadMem_47bab0, %struct.Memory** %MEMORY
  %loadMem_47bab3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3369 = getelementptr inbounds %struct.GPR, %struct.GPR* %3368, i32 0, i32 33
  %3370 = getelementptr inbounds %struct.Reg, %struct.Reg* %3369, i32 0, i32 0
  %PC.i525 = bitcast %union.anon* %3370 to i64*
  %3371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3372 = getelementptr inbounds %struct.GPR, %struct.GPR* %3371, i32 0, i32 7
  %3373 = getelementptr inbounds %struct.Reg, %struct.Reg* %3372, i32 0, i32 0
  %RDX.i526 = bitcast %union.anon* %3373 to i64*
  %3374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3375 = getelementptr inbounds %struct.GPR, %struct.GPR* %3374, i32 0, i32 15
  %3376 = getelementptr inbounds %struct.Reg, %struct.Reg* %3375, i32 0, i32 0
  %RBP.i527 = bitcast %union.anon* %3376 to i64*
  %3377 = load i64, i64* %RBP.i527
  %3378 = sub i64 %3377, 8
  %3379 = load i64, i64* %PC.i525
  %3380 = add i64 %3379, 4
  store i64 %3380, i64* %PC.i525
  %3381 = inttoptr i64 %3378 to i32*
  %3382 = load i32, i32* %3381
  %3383 = sext i32 %3382 to i64
  store i64 %3383, i64* %RDX.i526, align 8
  store %struct.Memory* %loadMem_47bab3, %struct.Memory** %MEMORY
  %loadMem_47bab7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3385 = getelementptr inbounds %struct.GPR, %struct.GPR* %3384, i32 0, i32 33
  %3386 = getelementptr inbounds %struct.Reg, %struct.Reg* %3385, i32 0, i32 0
  %PC.i523 = bitcast %union.anon* %3386 to i64*
  %3387 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3388 = getelementptr inbounds %struct.GPR, %struct.GPR* %3387, i32 0, i32 7
  %3389 = getelementptr inbounds %struct.Reg, %struct.Reg* %3388, i32 0, i32 0
  %RDX.i524 = bitcast %union.anon* %3389 to i64*
  %3390 = load i64, i64* %RDX.i524
  %3391 = load i64, i64* %PC.i523
  %3392 = add i64 %3391, 4
  store i64 %3392, i64* %PC.i523
  %3393 = shl i64 %3390, 3
  %3394 = icmp slt i64 %3393, 0
  %3395 = shl i64 %3393, 1
  store i64 %3395, i64* %RDX.i524, align 8
  %3396 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %3397 = zext i1 %3394 to i8
  store i8 %3397, i8* %3396, align 1
  %3398 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %3399 = trunc i64 %3395 to i32
  %3400 = and i32 %3399, 254
  %3401 = call i32 @llvm.ctpop.i32(i32 %3400)
  %3402 = trunc i32 %3401 to i8
  %3403 = and i8 %3402, 1
  %3404 = xor i8 %3403, 1
  store i8 %3404, i8* %3398, align 1
  %3405 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3405, align 1
  %3406 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3407 = icmp eq i64 %3395, 0
  %3408 = zext i1 %3407 to i8
  store i8 %3408, i8* %3406, align 1
  %3409 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3410 = lshr i64 %3395, 63
  %3411 = trunc i64 %3410 to i8
  store i8 %3411, i8* %3409, align 1
  %3412 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3412, align 1
  store %struct.Memory* %loadMem_47bab7, %struct.Memory** %MEMORY
  %loadMem_47babb = load %struct.Memory*, %struct.Memory** %MEMORY
  %3413 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3414 = getelementptr inbounds %struct.GPR, %struct.GPR* %3413, i32 0, i32 33
  %3415 = getelementptr inbounds %struct.Reg, %struct.Reg* %3414, i32 0, i32 0
  %PC.i520 = bitcast %union.anon* %3415 to i64*
  %3416 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3417 = getelementptr inbounds %struct.GPR, %struct.GPR* %3416, i32 0, i32 1
  %3418 = getelementptr inbounds %struct.Reg, %struct.Reg* %3417, i32 0, i32 0
  %RAX.i521 = bitcast %union.anon* %3418 to i64*
  %3419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3420 = getelementptr inbounds %struct.GPR, %struct.GPR* %3419, i32 0, i32 7
  %3421 = getelementptr inbounds %struct.Reg, %struct.Reg* %3420, i32 0, i32 0
  %RDX.i522 = bitcast %union.anon* %3421 to i64*
  %3422 = load i64, i64* %RAX.i521
  %3423 = load i64, i64* %RDX.i522
  %3424 = load i64, i64* %PC.i520
  %3425 = add i64 %3424, 3
  store i64 %3425, i64* %PC.i520
  %3426 = add i64 %3423, %3422
  store i64 %3426, i64* %RAX.i521, align 8
  %3427 = icmp ult i64 %3426, %3422
  %3428 = icmp ult i64 %3426, %3423
  %3429 = or i1 %3427, %3428
  %3430 = zext i1 %3429 to i8
  %3431 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3430, i8* %3431, align 1
  %3432 = trunc i64 %3426 to i32
  %3433 = and i32 %3432, 255
  %3434 = call i32 @llvm.ctpop.i32(i32 %3433)
  %3435 = trunc i32 %3434 to i8
  %3436 = and i8 %3435, 1
  %3437 = xor i8 %3436, 1
  %3438 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3437, i8* %3438, align 1
  %3439 = xor i64 %3423, %3422
  %3440 = xor i64 %3439, %3426
  %3441 = lshr i64 %3440, 4
  %3442 = trunc i64 %3441 to i8
  %3443 = and i8 %3442, 1
  %3444 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3443, i8* %3444, align 1
  %3445 = icmp eq i64 %3426, 0
  %3446 = zext i1 %3445 to i8
  %3447 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3446, i8* %3447, align 1
  %3448 = lshr i64 %3426, 63
  %3449 = trunc i64 %3448 to i8
  %3450 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3449, i8* %3450, align 1
  %3451 = lshr i64 %3422, 63
  %3452 = lshr i64 %3423, 63
  %3453 = xor i64 %3448, %3451
  %3454 = xor i64 %3448, %3452
  %3455 = add i64 %3453, %3454
  %3456 = icmp eq i64 %3455, 2
  %3457 = zext i1 %3456 to i8
  %3458 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3457, i8* %3458, align 1
  store %struct.Memory* %loadMem_47babb, %struct.Memory** %MEMORY
  %loadMem_47babe = load %struct.Memory*, %struct.Memory** %MEMORY
  %3459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3460 = getelementptr inbounds %struct.GPR, %struct.GPR* %3459, i32 0, i32 33
  %3461 = getelementptr inbounds %struct.Reg, %struct.Reg* %3460, i32 0, i32 0
  %PC.i517 = bitcast %union.anon* %3461 to i64*
  %3462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3463 = getelementptr inbounds %struct.GPR, %struct.GPR* %3462, i32 0, i32 7
  %3464 = getelementptr inbounds %struct.Reg, %struct.Reg* %3463, i32 0, i32 0
  %RDX.i518 = bitcast %union.anon* %3464 to i64*
  %3465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3466 = getelementptr inbounds %struct.GPR, %struct.GPR* %3465, i32 0, i32 15
  %3467 = getelementptr inbounds %struct.Reg, %struct.Reg* %3466, i32 0, i32 0
  %RBP.i519 = bitcast %union.anon* %3467 to i64*
  %3468 = load i64, i64* %RBP.i519
  %3469 = sub i64 %3468, 4
  %3470 = load i64, i64* %PC.i517
  %3471 = add i64 %3470, 4
  store i64 %3471, i64* %PC.i517
  %3472 = inttoptr i64 %3469 to i32*
  %3473 = load i32, i32* %3472
  %3474 = sext i32 %3473 to i64
  store i64 %3474, i64* %RDX.i518, align 8
  store %struct.Memory* %loadMem_47babe, %struct.Memory** %MEMORY
  %loadMem_47bac2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3476 = getelementptr inbounds %struct.GPR, %struct.GPR* %3475, i32 0, i32 33
  %3477 = getelementptr inbounds %struct.Reg, %struct.Reg* %3476, i32 0, i32 0
  %PC.i513 = bitcast %union.anon* %3477 to i64*
  %3478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3479 = getelementptr inbounds %struct.GPR, %struct.GPR* %3478, i32 0, i32 11
  %3480 = getelementptr inbounds %struct.Reg, %struct.Reg* %3479, i32 0, i32 0
  %EDI.i514 = bitcast %union.anon* %3480 to i32*
  %3481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3482 = getelementptr inbounds %struct.GPR, %struct.GPR* %3481, i32 0, i32 1
  %3483 = getelementptr inbounds %struct.Reg, %struct.Reg* %3482, i32 0, i32 0
  %RAX.i515 = bitcast %union.anon* %3483 to i64*
  %3484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3485 = getelementptr inbounds %struct.GPR, %struct.GPR* %3484, i32 0, i32 7
  %3486 = getelementptr inbounds %struct.Reg, %struct.Reg* %3485, i32 0, i32 0
  %RDX.i516 = bitcast %union.anon* %3486 to i64*
  %3487 = load i64, i64* %RAX.i515
  %3488 = load i64, i64* %RDX.i516
  %3489 = mul i64 %3488, 4
  %3490 = add i64 %3489, %3487
  %3491 = load i32, i32* %EDI.i514
  %3492 = zext i32 %3491 to i64
  %3493 = load i64, i64* %PC.i513
  %3494 = add i64 %3493, 3
  store i64 %3494, i64* %PC.i513
  %3495 = inttoptr i64 %3490 to i32*
  store i32 %3491, i32* %3495
  store %struct.Memory* %loadMem_47bac2, %struct.Memory** %MEMORY
  %loadMem_47bac5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3497 = getelementptr inbounds %struct.GPR, %struct.GPR* %3496, i32 0, i32 33
  %3498 = getelementptr inbounds %struct.Reg, %struct.Reg* %3497, i32 0, i32 0
  %PC.i510 = bitcast %union.anon* %3498 to i64*
  %3499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3500 = getelementptr inbounds %struct.GPR, %struct.GPR* %3499, i32 0, i32 1
  %3501 = getelementptr inbounds %struct.Reg, %struct.Reg* %3500, i32 0, i32 0
  %RAX.i511 = bitcast %union.anon* %3501 to i64*
  %3502 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3503 = getelementptr inbounds %struct.GPR, %struct.GPR* %3502, i32 0, i32 15
  %3504 = getelementptr inbounds %struct.Reg, %struct.Reg* %3503, i32 0, i32 0
  %RBP.i512 = bitcast %union.anon* %3504 to i64*
  %3505 = load i64, i64* %RBP.i512
  %3506 = sub i64 %3505, 16
  %3507 = load i64, i64* %PC.i510
  %3508 = add i64 %3507, 4
  store i64 %3508, i64* %PC.i510
  %3509 = inttoptr i64 %3506 to i32*
  %3510 = load i32, i32* %3509
  %3511 = sext i32 %3510 to i64
  store i64 %3511, i64* %RAX.i511, align 8
  store %struct.Memory* %loadMem_47bac5, %struct.Memory** %MEMORY
  %loadMem_47bac9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3513 = getelementptr inbounds %struct.GPR, %struct.GPR* %3512, i32 0, i32 33
  %3514 = getelementptr inbounds %struct.Reg, %struct.Reg* %3513, i32 0, i32 0
  %PC.i507 = bitcast %union.anon* %3514 to i64*
  %3515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3516 = getelementptr inbounds %struct.GPR, %struct.GPR* %3515, i32 0, i32 1
  %3517 = getelementptr inbounds %struct.Reg, %struct.Reg* %3516, i32 0, i32 0
  %RAX.i508 = bitcast %union.anon* %3517 to i64*
  %3518 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3519 = getelementptr inbounds %struct.GPR, %struct.GPR* %3518, i32 0, i32 11
  %3520 = getelementptr inbounds %struct.Reg, %struct.Reg* %3519, i32 0, i32 0
  %RDI.i509 = bitcast %union.anon* %3520 to i64*
  %3521 = load i64, i64* %RAX.i508
  %3522 = mul i64 %3521, 2
  %3523 = add i64 %3522, 7405152
  %3524 = load i64, i64* %PC.i507
  %3525 = add i64 %3524, 8
  store i64 %3525, i64* %PC.i507
  %3526 = inttoptr i64 %3523 to i16*
  %3527 = load i16, i16* %3526
  %3528 = sext i16 %3527 to i64
  %3529 = and i64 %3528, 4294967295
  store i64 %3529, i64* %RDI.i509, align 8
  store %struct.Memory* %loadMem_47bac9, %struct.Memory** %MEMORY
  %loadMem_47bad1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3531 = getelementptr inbounds %struct.GPR, %struct.GPR* %3530, i32 0, i32 33
  %3532 = getelementptr inbounds %struct.Reg, %struct.Reg* %3531, i32 0, i32 0
  %PC.i504 = bitcast %union.anon* %3532 to i64*
  %3533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3534 = getelementptr inbounds %struct.GPR, %struct.GPR* %3533, i32 0, i32 5
  %3535 = getelementptr inbounds %struct.Reg, %struct.Reg* %3534, i32 0, i32 0
  %RCX.i505 = bitcast %union.anon* %3535 to i64*
  %3536 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3537 = getelementptr inbounds %struct.GPR, %struct.GPR* %3536, i32 0, i32 15
  %3538 = getelementptr inbounds %struct.Reg, %struct.Reg* %3537, i32 0, i32 0
  %RBP.i506 = bitcast %union.anon* %3538 to i64*
  %3539 = load i64, i64* %RBP.i506
  %3540 = sub i64 %3539, 20
  %3541 = load i64, i64* %PC.i504
  %3542 = add i64 %3541, 3
  store i64 %3542, i64* %PC.i504
  %3543 = inttoptr i64 %3540 to i32*
  %3544 = load i32, i32* %3543
  %3545 = zext i32 %3544 to i64
  store i64 %3545, i64* %RCX.i505, align 8
  store %struct.Memory* %loadMem_47bad1, %struct.Memory** %MEMORY
  %loadMem_47bad4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3547 = getelementptr inbounds %struct.GPR, %struct.GPR* %3546, i32 0, i32 33
  %3548 = getelementptr inbounds %struct.Reg, %struct.Reg* %3547, i32 0, i32 0
  %PC.i500 = bitcast %union.anon* %3548 to i64*
  %3549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3550 = getelementptr inbounds %struct.GPR, %struct.GPR* %3549, i32 0, i32 5
  %3551 = getelementptr inbounds %struct.Reg, %struct.Reg* %3550, i32 0, i32 0
  %3552 = bitcast %union.anon* %3551 to %struct.anon.2*
  %CL.i501 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3552, i32 0, i32 0
  %3553 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3554 = getelementptr inbounds %struct.GPR, %struct.GPR* %3553, i32 0, i32 11
  %3555 = getelementptr inbounds %struct.Reg, %struct.Reg* %3554, i32 0, i32 0
  %RDI.i502 = bitcast %union.anon* %3555 to i64*
  %3556 = load i64, i64* %RDI.i502
  %3557 = load i8, i8* %CL.i501
  %3558 = zext i8 %3557 to i64
  %3559 = load i64, i64* %PC.i500
  %3560 = add i64 %3559, 2
  store i64 %3560, i64* %PC.i500
  %3561 = trunc i64 %3558 to i5
  switch i5 %3561, label %3568 [
    i5 0, label %routine_shll__cl___edi.exit503
    i5 1, label %3562
  ]

; <label>:3562:                                   ; preds = %routine_shll__cl___edi.exit539
  %3563 = trunc i64 %3556 to i32
  %3564 = shl i32 %3563, 1
  %3565 = icmp slt i32 %3563, 0
  %3566 = icmp slt i32 %3564, 0
  %3567 = xor i1 %3565, %3566
  br label %3577

; <label>:3568:                                   ; preds = %routine_shll__cl___edi.exit539
  %3569 = and i64 %3558, 31
  %3570 = add i64 %3569, 4294967295
  %3571 = and i64 %3556, 4294967295
  %3572 = and i64 %3570, 4294967295
  %3573 = shl i64 %3571, %3572
  %3574 = trunc i64 %3573 to i32
  %3575 = icmp slt i32 %3574, 0
  %3576 = shl i32 %3574, 1
  br label %3577

; <label>:3577:                                   ; preds = %3568, %3562
  %3578 = phi i1 [ %3565, %3562 ], [ %3575, %3568 ]
  %3579 = phi i1 [ %3567, %3562 ], [ false, %3568 ]
  %3580 = phi i32 [ %3564, %3562 ], [ %3576, %3568 ]
  %3581 = zext i32 %3580 to i64
  store i64 %3581, i64* %RDI.i502, align 8
  %3582 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %3583 = zext i1 %3578 to i8
  store i8 %3583, i8* %3582, align 1
  %3584 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %3585 = and i32 %3580, 254
  %3586 = call i32 @llvm.ctpop.i32(i32 %3585)
  %3587 = trunc i32 %3586 to i8
  %3588 = and i8 %3587, 1
  %3589 = xor i8 %3588, 1
  store i8 %3589, i8* %3584, align 1
  %3590 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3590, align 1
  %3591 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3592 = icmp eq i32 %3580, 0
  %3593 = zext i1 %3592 to i8
  store i8 %3593, i8* %3591, align 1
  %3594 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3595 = lshr i32 %3580, 31
  %3596 = trunc i32 %3595 to i8
  store i8 %3596, i8* %3594, align 1
  %3597 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3598 = zext i1 %3579 to i8
  store i8 %3598, i8* %3597, align 1
  br label %routine_shll__cl___edi.exit503

routine_shll__cl___edi.exit503:                   ; preds = %routine_shll__cl___edi.exit539, %3577
  store %struct.Memory* %loadMem_47bad4, %struct.Memory** %MEMORY
  %loadMem_47bad6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3599 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3600 = getelementptr inbounds %struct.GPR, %struct.GPR* %3599, i32 0, i32 33
  %3601 = getelementptr inbounds %struct.Reg, %struct.Reg* %3600, i32 0, i32 0
  %PC.i497 = bitcast %union.anon* %3601 to i64*
  %3602 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3603 = getelementptr inbounds %struct.GPR, %struct.GPR* %3602, i32 0, i32 1
  %3604 = getelementptr inbounds %struct.Reg, %struct.Reg* %3603, i32 0, i32 0
  %RAX.i498 = bitcast %union.anon* %3604 to i64*
  %3605 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3606 = getelementptr inbounds %struct.GPR, %struct.GPR* %3605, i32 0, i32 15
  %3607 = getelementptr inbounds %struct.Reg, %struct.Reg* %3606, i32 0, i32 0
  %RBP.i499 = bitcast %union.anon* %3607 to i64*
  %3608 = load i64, i64* %RBP.i499
  %3609 = sub i64 %3608, 12
  %3610 = load i64, i64* %PC.i497
  %3611 = add i64 %3610, 4
  store i64 %3611, i64* %PC.i497
  %3612 = inttoptr i64 %3609 to i32*
  %3613 = load i32, i32* %3612
  %3614 = sext i32 %3613 to i64
  store i64 %3614, i64* %RAX.i498, align 8
  store %struct.Memory* %loadMem_47bad6, %struct.Memory** %MEMORY
  %loadMem_47bada = load %struct.Memory*, %struct.Memory** %MEMORY
  %3615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3616 = getelementptr inbounds %struct.GPR, %struct.GPR* %3615, i32 0, i32 33
  %3617 = getelementptr inbounds %struct.Reg, %struct.Reg* %3616, i32 0, i32 0
  %PC.i495 = bitcast %union.anon* %3617 to i64*
  %3618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3619 = getelementptr inbounds %struct.GPR, %struct.GPR* %3618, i32 0, i32 1
  %3620 = getelementptr inbounds %struct.Reg, %struct.Reg* %3619, i32 0, i32 0
  %RAX.i496 = bitcast %union.anon* %3620 to i64*
  %3621 = load i64, i64* %RAX.i496
  %3622 = load i64, i64* %PC.i495
  %3623 = add i64 %3622, 4
  store i64 %3623, i64* %PC.i495
  %3624 = shl i64 %3621, 5
  %3625 = icmp slt i64 %3624, 0
  %3626 = shl i64 %3624, 1
  store i64 %3626, i64* %RAX.i496, align 8
  %3627 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %3628 = zext i1 %3625 to i8
  store i8 %3628, i8* %3627, align 1
  %3629 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %3630 = trunc i64 %3626 to i32
  %3631 = and i32 %3630, 254
  %3632 = call i32 @llvm.ctpop.i32(i32 %3631)
  %3633 = trunc i32 %3632 to i8
  %3634 = and i8 %3633, 1
  %3635 = xor i8 %3634, 1
  store i8 %3635, i8* %3629, align 1
  %3636 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3636, align 1
  %3637 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3638 = icmp eq i64 %3626, 0
  %3639 = zext i1 %3638 to i8
  store i8 %3639, i8* %3637, align 1
  %3640 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3641 = lshr i64 %3626, 63
  %3642 = trunc i64 %3641 to i8
  store i8 %3642, i8* %3640, align 1
  %3643 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3643, align 1
  store %struct.Memory* %loadMem_47bada, %struct.Memory** %MEMORY
  %loadMem_47bade = load %struct.Memory*, %struct.Memory** %MEMORY
  %3644 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3645 = getelementptr inbounds %struct.GPR, %struct.GPR* %3644, i32 0, i32 33
  %3646 = getelementptr inbounds %struct.Reg, %struct.Reg* %3645, i32 0, i32 0
  %PC.i492 = bitcast %union.anon* %3646 to i64*
  %3647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3648 = getelementptr inbounds %struct.GPR, %struct.GPR* %3647, i32 0, i32 7
  %3649 = getelementptr inbounds %struct.Reg, %struct.Reg* %3648, i32 0, i32 0
  %RDX.i493 = bitcast %union.anon* %3649 to i64*
  %3650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3651 = getelementptr inbounds %struct.GPR, %struct.GPR* %3650, i32 0, i32 15
  %3652 = getelementptr inbounds %struct.Reg, %struct.Reg* %3651, i32 0, i32 0
  %RBP.i494 = bitcast %union.anon* %3652 to i64*
  %3653 = load i64, i64* %RBP.i494
  %3654 = sub i64 %3653, 48
  %3655 = load i64, i64* %PC.i492
  %3656 = add i64 %3655, 4
  store i64 %3656, i64* %PC.i492
  %3657 = inttoptr i64 %3654 to i64*
  %3658 = load i64, i64* %3657
  store i64 %3658, i64* %RDX.i493, align 8
  store %struct.Memory* %loadMem_47bade, %struct.Memory** %MEMORY
  %loadMem_47bae2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3659 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3660 = getelementptr inbounds %struct.GPR, %struct.GPR* %3659, i32 0, i32 33
  %3661 = getelementptr inbounds %struct.Reg, %struct.Reg* %3660, i32 0, i32 0
  %PC.i489 = bitcast %union.anon* %3661 to i64*
  %3662 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3663 = getelementptr inbounds %struct.GPR, %struct.GPR* %3662, i32 0, i32 1
  %3664 = getelementptr inbounds %struct.Reg, %struct.Reg* %3663, i32 0, i32 0
  %RAX.i490 = bitcast %union.anon* %3664 to i64*
  %3665 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3666 = getelementptr inbounds %struct.GPR, %struct.GPR* %3665, i32 0, i32 7
  %3667 = getelementptr inbounds %struct.Reg, %struct.Reg* %3666, i32 0, i32 0
  %RDX.i491 = bitcast %union.anon* %3667 to i64*
  %3668 = load i64, i64* %RDX.i491
  %3669 = load i64, i64* %RAX.i490
  %3670 = load i64, i64* %PC.i489
  %3671 = add i64 %3670, 3
  store i64 %3671, i64* %PC.i489
  %3672 = add i64 %3669, %3668
  store i64 %3672, i64* %RDX.i491, align 8
  %3673 = icmp ult i64 %3672, %3668
  %3674 = icmp ult i64 %3672, %3669
  %3675 = or i1 %3673, %3674
  %3676 = zext i1 %3675 to i8
  %3677 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3676, i8* %3677, align 1
  %3678 = trunc i64 %3672 to i32
  %3679 = and i32 %3678, 255
  %3680 = call i32 @llvm.ctpop.i32(i32 %3679)
  %3681 = trunc i32 %3680 to i8
  %3682 = and i8 %3681, 1
  %3683 = xor i8 %3682, 1
  %3684 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3683, i8* %3684, align 1
  %3685 = xor i64 %3669, %3668
  %3686 = xor i64 %3685, %3672
  %3687 = lshr i64 %3686, 4
  %3688 = trunc i64 %3687 to i8
  %3689 = and i8 %3688, 1
  %3690 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3689, i8* %3690, align 1
  %3691 = icmp eq i64 %3672, 0
  %3692 = zext i1 %3691 to i8
  %3693 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3692, i8* %3693, align 1
  %3694 = lshr i64 %3672, 63
  %3695 = trunc i64 %3694 to i8
  %3696 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3695, i8* %3696, align 1
  %3697 = lshr i64 %3668, 63
  %3698 = lshr i64 %3669, 63
  %3699 = xor i64 %3694, %3697
  %3700 = xor i64 %3694, %3698
  %3701 = add i64 %3699, %3700
  %3702 = icmp eq i64 %3701, 2
  %3703 = zext i1 %3702 to i8
  %3704 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3703, i8* %3704, align 1
  store %struct.Memory* %loadMem_47bae2, %struct.Memory** %MEMORY
  %loadMem_47bae5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3706 = getelementptr inbounds %struct.GPR, %struct.GPR* %3705, i32 0, i32 33
  %3707 = getelementptr inbounds %struct.Reg, %struct.Reg* %3706, i32 0, i32 0
  %PC.i486 = bitcast %union.anon* %3707 to i64*
  %3708 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3709 = getelementptr inbounds %struct.GPR, %struct.GPR* %3708, i32 0, i32 1
  %3710 = getelementptr inbounds %struct.Reg, %struct.Reg* %3709, i32 0, i32 0
  %RAX.i487 = bitcast %union.anon* %3710 to i64*
  %3711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3712 = getelementptr inbounds %struct.GPR, %struct.GPR* %3711, i32 0, i32 15
  %3713 = getelementptr inbounds %struct.Reg, %struct.Reg* %3712, i32 0, i32 0
  %RBP.i488 = bitcast %union.anon* %3713 to i64*
  %3714 = load i64, i64* %RBP.i488
  %3715 = sub i64 %3714, 8
  %3716 = load i64, i64* %PC.i486
  %3717 = add i64 %3716, 4
  store i64 %3717, i64* %PC.i486
  %3718 = inttoptr i64 %3715 to i32*
  %3719 = load i32, i32* %3718
  %3720 = sext i32 %3719 to i64
  store i64 %3720, i64* %RAX.i487, align 8
  store %struct.Memory* %loadMem_47bae5, %struct.Memory** %MEMORY
  %loadMem_47bae9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3721 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3722 = getelementptr inbounds %struct.GPR, %struct.GPR* %3721, i32 0, i32 33
  %3723 = getelementptr inbounds %struct.Reg, %struct.Reg* %3722, i32 0, i32 0
  %PC.i484 = bitcast %union.anon* %3723 to i64*
  %3724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3725 = getelementptr inbounds %struct.GPR, %struct.GPR* %3724, i32 0, i32 1
  %3726 = getelementptr inbounds %struct.Reg, %struct.Reg* %3725, i32 0, i32 0
  %RAX.i485 = bitcast %union.anon* %3726 to i64*
  %3727 = load i64, i64* %RAX.i485
  %3728 = load i64, i64* %PC.i484
  %3729 = add i64 %3728, 4
  store i64 %3729, i64* %PC.i484
  %3730 = shl i64 %3727, 3
  %3731 = icmp slt i64 %3730, 0
  %3732 = shl i64 %3730, 1
  store i64 %3732, i64* %RAX.i485, align 8
  %3733 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %3734 = zext i1 %3731 to i8
  store i8 %3734, i8* %3733, align 1
  %3735 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %3736 = trunc i64 %3732 to i32
  %3737 = and i32 %3736, 254
  %3738 = call i32 @llvm.ctpop.i32(i32 %3737)
  %3739 = trunc i32 %3738 to i8
  %3740 = and i8 %3739, 1
  %3741 = xor i8 %3740, 1
  store i8 %3741, i8* %3735, align 1
  %3742 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3742, align 1
  %3743 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3744 = icmp eq i64 %3732, 0
  %3745 = zext i1 %3744 to i8
  store i8 %3745, i8* %3743, align 1
  %3746 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3747 = lshr i64 %3732, 63
  %3748 = trunc i64 %3747 to i8
  store i8 %3748, i8* %3746, align 1
  %3749 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3749, align 1
  store %struct.Memory* %loadMem_47bae9, %struct.Memory** %MEMORY
  %loadMem_47baed = load %struct.Memory*, %struct.Memory** %MEMORY
  %3750 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3751 = getelementptr inbounds %struct.GPR, %struct.GPR* %3750, i32 0, i32 33
  %3752 = getelementptr inbounds %struct.Reg, %struct.Reg* %3751, i32 0, i32 0
  %PC.i481 = bitcast %union.anon* %3752 to i64*
  %3753 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3754 = getelementptr inbounds %struct.GPR, %struct.GPR* %3753, i32 0, i32 1
  %3755 = getelementptr inbounds %struct.Reg, %struct.Reg* %3754, i32 0, i32 0
  %RAX.i482 = bitcast %union.anon* %3755 to i64*
  %3756 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3757 = getelementptr inbounds %struct.GPR, %struct.GPR* %3756, i32 0, i32 7
  %3758 = getelementptr inbounds %struct.Reg, %struct.Reg* %3757, i32 0, i32 0
  %RDX.i483 = bitcast %union.anon* %3758 to i64*
  %3759 = load i64, i64* %RDX.i483
  %3760 = load i64, i64* %RAX.i482
  %3761 = load i64, i64* %PC.i481
  %3762 = add i64 %3761, 3
  store i64 %3762, i64* %PC.i481
  %3763 = add i64 %3760, %3759
  store i64 %3763, i64* %RDX.i483, align 8
  %3764 = icmp ult i64 %3763, %3759
  %3765 = icmp ult i64 %3763, %3760
  %3766 = or i1 %3764, %3765
  %3767 = zext i1 %3766 to i8
  %3768 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3767, i8* %3768, align 1
  %3769 = trunc i64 %3763 to i32
  %3770 = and i32 %3769, 255
  %3771 = call i32 @llvm.ctpop.i32(i32 %3770)
  %3772 = trunc i32 %3771 to i8
  %3773 = and i8 %3772, 1
  %3774 = xor i8 %3773, 1
  %3775 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3774, i8* %3775, align 1
  %3776 = xor i64 %3760, %3759
  %3777 = xor i64 %3776, %3763
  %3778 = lshr i64 %3777, 4
  %3779 = trunc i64 %3778 to i8
  %3780 = and i8 %3779, 1
  %3781 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3780, i8* %3781, align 1
  %3782 = icmp eq i64 %3763, 0
  %3783 = zext i1 %3782 to i8
  %3784 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3783, i8* %3784, align 1
  %3785 = lshr i64 %3763, 63
  %3786 = trunc i64 %3785 to i8
  %3787 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3786, i8* %3787, align 1
  %3788 = lshr i64 %3759, 63
  %3789 = lshr i64 %3760, 63
  %3790 = xor i64 %3785, %3788
  %3791 = xor i64 %3785, %3789
  %3792 = add i64 %3790, %3791
  %3793 = icmp eq i64 %3792, 2
  %3794 = zext i1 %3793 to i8
  %3795 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3794, i8* %3795, align 1
  store %struct.Memory* %loadMem_47baed, %struct.Memory** %MEMORY
  %loadMem_47baf0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3796 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3797 = getelementptr inbounds %struct.GPR, %struct.GPR* %3796, i32 0, i32 33
  %3798 = getelementptr inbounds %struct.Reg, %struct.Reg* %3797, i32 0, i32 0
  %PC.i478 = bitcast %union.anon* %3798 to i64*
  %3799 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3800 = getelementptr inbounds %struct.GPR, %struct.GPR* %3799, i32 0, i32 1
  %3801 = getelementptr inbounds %struct.Reg, %struct.Reg* %3800, i32 0, i32 0
  %RAX.i479 = bitcast %union.anon* %3801 to i64*
  %3802 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3803 = getelementptr inbounds %struct.GPR, %struct.GPR* %3802, i32 0, i32 15
  %3804 = getelementptr inbounds %struct.Reg, %struct.Reg* %3803, i32 0, i32 0
  %RBP.i480 = bitcast %union.anon* %3804 to i64*
  %3805 = load i64, i64* %RBP.i480
  %3806 = sub i64 %3805, 4
  %3807 = load i64, i64* %PC.i478
  %3808 = add i64 %3807, 4
  store i64 %3808, i64* %PC.i478
  %3809 = inttoptr i64 %3806 to i32*
  %3810 = load i32, i32* %3809
  %3811 = sext i32 %3810 to i64
  store i64 %3811, i64* %RAX.i479, align 8
  store %struct.Memory* %loadMem_47baf0, %struct.Memory** %MEMORY
  %loadMem_47baf4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3813 = getelementptr inbounds %struct.GPR, %struct.GPR* %3812, i32 0, i32 33
  %3814 = getelementptr inbounds %struct.Reg, %struct.Reg* %3813, i32 0, i32 0
  %PC.i474 = bitcast %union.anon* %3814 to i64*
  %3815 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3816 = getelementptr inbounds %struct.GPR, %struct.GPR* %3815, i32 0, i32 11
  %3817 = getelementptr inbounds %struct.Reg, %struct.Reg* %3816, i32 0, i32 0
  %EDI.i475 = bitcast %union.anon* %3817 to i32*
  %3818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3819 = getelementptr inbounds %struct.GPR, %struct.GPR* %3818, i32 0, i32 1
  %3820 = getelementptr inbounds %struct.Reg, %struct.Reg* %3819, i32 0, i32 0
  %RAX.i476 = bitcast %union.anon* %3820 to i64*
  %3821 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3822 = getelementptr inbounds %struct.GPR, %struct.GPR* %3821, i32 0, i32 7
  %3823 = getelementptr inbounds %struct.Reg, %struct.Reg* %3822, i32 0, i32 0
  %RDX.i477 = bitcast %union.anon* %3823 to i64*
  %3824 = load i64, i64* %RDX.i477
  %3825 = load i64, i64* %RAX.i476
  %3826 = mul i64 %3825, 4
  %3827 = add i64 %3826, %3824
  %3828 = load i32, i32* %EDI.i475
  %3829 = zext i32 %3828 to i64
  %3830 = load i64, i64* %PC.i474
  %3831 = add i64 %3830, 3
  store i64 %3831, i64* %PC.i474
  %3832 = inttoptr i64 %3827 to i32*
  store i32 %3828, i32* %3832
  store %struct.Memory* %loadMem_47baf4, %struct.Memory** %MEMORY
  %loadMem_47baf7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3833 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3834 = getelementptr inbounds %struct.GPR, %struct.GPR* %3833, i32 0, i32 33
  %3835 = getelementptr inbounds %struct.Reg, %struct.Reg* %3834, i32 0, i32 0
  %PC.i471 = bitcast %union.anon* %3835 to i64*
  %3836 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3837 = getelementptr inbounds %struct.GPR, %struct.GPR* %3836, i32 0, i32 1
  %3838 = getelementptr inbounds %struct.Reg, %struct.Reg* %3837, i32 0, i32 0
  %RAX.i472 = bitcast %union.anon* %3838 to i64*
  %3839 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3840 = getelementptr inbounds %struct.GPR, %struct.GPR* %3839, i32 0, i32 15
  %3841 = getelementptr inbounds %struct.Reg, %struct.Reg* %3840, i32 0, i32 0
  %RBP.i473 = bitcast %union.anon* %3841 to i64*
  %3842 = load i64, i64* %RBP.i473
  %3843 = sub i64 %3842, 4
  %3844 = load i64, i64* %PC.i471
  %3845 = add i64 %3844, 3
  store i64 %3845, i64* %PC.i471
  %3846 = inttoptr i64 %3843 to i32*
  %3847 = load i32, i32* %3846
  %3848 = zext i32 %3847 to i64
  store i64 %3848, i64* %RAX.i472, align 8
  store %struct.Memory* %loadMem_47baf7, %struct.Memory** %MEMORY
  %loadMem_47bafa = load %struct.Memory*, %struct.Memory** %MEMORY
  %3849 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3850 = getelementptr inbounds %struct.GPR, %struct.GPR* %3849, i32 0, i32 33
  %3851 = getelementptr inbounds %struct.Reg, %struct.Reg* %3850, i32 0, i32 0
  %PC.i469 = bitcast %union.anon* %3851 to i64*
  %3852 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3853 = getelementptr inbounds %struct.GPR, %struct.GPR* %3852, i32 0, i32 1
  %3854 = getelementptr inbounds %struct.Reg, %struct.Reg* %3853, i32 0, i32 0
  %RAX.i470 = bitcast %union.anon* %3854 to i64*
  %3855 = load i64, i64* %RAX.i470
  %3856 = load i64, i64* %PC.i469
  %3857 = add i64 %3856, 3
  store i64 %3857, i64* %PC.i469
  %3858 = trunc i64 %3855 to i32
  %3859 = add i32 1, %3858
  %3860 = zext i32 %3859 to i64
  store i64 %3860, i64* %RAX.i470, align 8
  %3861 = icmp ult i32 %3859, %3858
  %3862 = icmp ult i32 %3859, 1
  %3863 = or i1 %3861, %3862
  %3864 = zext i1 %3863 to i8
  %3865 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3864, i8* %3865, align 1
  %3866 = and i32 %3859, 255
  %3867 = call i32 @llvm.ctpop.i32(i32 %3866)
  %3868 = trunc i32 %3867 to i8
  %3869 = and i8 %3868, 1
  %3870 = xor i8 %3869, 1
  %3871 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3870, i8* %3871, align 1
  %3872 = xor i64 1, %3855
  %3873 = trunc i64 %3872 to i32
  %3874 = xor i32 %3873, %3859
  %3875 = lshr i32 %3874, 4
  %3876 = trunc i32 %3875 to i8
  %3877 = and i8 %3876, 1
  %3878 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3877, i8* %3878, align 1
  %3879 = icmp eq i32 %3859, 0
  %3880 = zext i1 %3879 to i8
  %3881 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3880, i8* %3881, align 1
  %3882 = lshr i32 %3859, 31
  %3883 = trunc i32 %3882 to i8
  %3884 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3883, i8* %3884, align 1
  %3885 = lshr i32 %3858, 31
  %3886 = xor i32 %3882, %3885
  %3887 = add i32 %3886, %3882
  %3888 = icmp eq i32 %3887, 2
  %3889 = zext i1 %3888 to i8
  %3890 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3889, i8* %3890, align 1
  store %struct.Memory* %loadMem_47bafa, %struct.Memory** %MEMORY
  %loadMem_47bafd = load %struct.Memory*, %struct.Memory** %MEMORY
  %3891 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3892 = getelementptr inbounds %struct.GPR, %struct.GPR* %3891, i32 0, i32 33
  %3893 = getelementptr inbounds %struct.Reg, %struct.Reg* %3892, i32 0, i32 0
  %PC.i466 = bitcast %union.anon* %3893 to i64*
  %3894 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3895 = getelementptr inbounds %struct.GPR, %struct.GPR* %3894, i32 0, i32 1
  %3896 = getelementptr inbounds %struct.Reg, %struct.Reg* %3895, i32 0, i32 0
  %EAX.i467 = bitcast %union.anon* %3896 to i32*
  %3897 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3898 = getelementptr inbounds %struct.GPR, %struct.GPR* %3897, i32 0, i32 15
  %3899 = getelementptr inbounds %struct.Reg, %struct.Reg* %3898, i32 0, i32 0
  %RBP.i468 = bitcast %union.anon* %3899 to i64*
  %3900 = load i64, i64* %RBP.i468
  %3901 = sub i64 %3900, 4
  %3902 = load i32, i32* %EAX.i467
  %3903 = zext i32 %3902 to i64
  %3904 = load i64, i64* %PC.i466
  %3905 = add i64 %3904, 3
  store i64 %3905, i64* %PC.i466
  %3906 = inttoptr i64 %3901 to i32*
  store i32 %3902, i32* %3906
  store %struct.Memory* %loadMem_47bafd, %struct.Memory** %MEMORY
  %loadMem_47bb00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3908 = getelementptr inbounds %struct.GPR, %struct.GPR* %3907, i32 0, i32 33
  %3909 = getelementptr inbounds %struct.Reg, %struct.Reg* %3908, i32 0, i32 0
  %PC.i465 = bitcast %union.anon* %3909 to i64*
  %3910 = load i64, i64* %PC.i465
  %3911 = add i64 %3910, -594
  %3912 = load i64, i64* %PC.i465
  %3913 = add i64 %3912, 5
  store i64 %3913, i64* %PC.i465
  %3914 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3911, i64* %3914, align 8
  store %struct.Memory* %loadMem_47bb00, %struct.Memory** %MEMORY
  br label %block_.L_47b8ae

block_.L_47bb05:                                  ; preds = %block_.L_47b8ae
  %loadMem_47bb05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3915 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3916 = getelementptr inbounds %struct.GPR, %struct.GPR* %3915, i32 0, i32 33
  %3917 = getelementptr inbounds %struct.Reg, %struct.Reg* %3916, i32 0, i32 0
  %PC.i464 = bitcast %union.anon* %3917 to i64*
  %3918 = load i64, i64* %PC.i464
  %3919 = add i64 %3918, 5
  %3920 = load i64, i64* %PC.i464
  %3921 = add i64 %3920, 5
  store i64 %3921, i64* %PC.i464
  %3922 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3919, i64* %3922, align 8
  store %struct.Memory* %loadMem_47bb05, %struct.Memory** %MEMORY
  br label %block_.L_47bb0a

block_.L_47bb0a:                                  ; preds = %block_.L_47bb05
  %loadMem_47bb0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3924 = getelementptr inbounds %struct.GPR, %struct.GPR* %3923, i32 0, i32 33
  %3925 = getelementptr inbounds %struct.Reg, %struct.Reg* %3924, i32 0, i32 0
  %PC.i461 = bitcast %union.anon* %3925 to i64*
  %3926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3927 = getelementptr inbounds %struct.GPR, %struct.GPR* %3926, i32 0, i32 1
  %3928 = getelementptr inbounds %struct.Reg, %struct.Reg* %3927, i32 0, i32 0
  %RAX.i462 = bitcast %union.anon* %3928 to i64*
  %3929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3930 = getelementptr inbounds %struct.GPR, %struct.GPR* %3929, i32 0, i32 15
  %3931 = getelementptr inbounds %struct.Reg, %struct.Reg* %3930, i32 0, i32 0
  %RBP.i463 = bitcast %union.anon* %3931 to i64*
  %3932 = load i64, i64* %RBP.i463
  %3933 = sub i64 %3932, 8
  %3934 = load i64, i64* %PC.i461
  %3935 = add i64 %3934, 3
  store i64 %3935, i64* %PC.i461
  %3936 = inttoptr i64 %3933 to i32*
  %3937 = load i32, i32* %3936
  %3938 = zext i32 %3937 to i64
  store i64 %3938, i64* %RAX.i462, align 8
  store %struct.Memory* %loadMem_47bb0a, %struct.Memory** %MEMORY
  %loadMem_47bb0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3939 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3940 = getelementptr inbounds %struct.GPR, %struct.GPR* %3939, i32 0, i32 33
  %3941 = getelementptr inbounds %struct.Reg, %struct.Reg* %3940, i32 0, i32 0
  %PC.i459 = bitcast %union.anon* %3941 to i64*
  %3942 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3943 = getelementptr inbounds %struct.GPR, %struct.GPR* %3942, i32 0, i32 1
  %3944 = getelementptr inbounds %struct.Reg, %struct.Reg* %3943, i32 0, i32 0
  %RAX.i460 = bitcast %union.anon* %3944 to i64*
  %3945 = load i64, i64* %RAX.i460
  %3946 = load i64, i64* %PC.i459
  %3947 = add i64 %3946, 3
  store i64 %3947, i64* %PC.i459
  %3948 = trunc i64 %3945 to i32
  %3949 = add i32 1, %3948
  %3950 = zext i32 %3949 to i64
  store i64 %3950, i64* %RAX.i460, align 8
  %3951 = icmp ult i32 %3949, %3948
  %3952 = icmp ult i32 %3949, 1
  %3953 = or i1 %3951, %3952
  %3954 = zext i1 %3953 to i8
  %3955 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3954, i8* %3955, align 1
  %3956 = and i32 %3949, 255
  %3957 = call i32 @llvm.ctpop.i32(i32 %3956)
  %3958 = trunc i32 %3957 to i8
  %3959 = and i8 %3958, 1
  %3960 = xor i8 %3959, 1
  %3961 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3960, i8* %3961, align 1
  %3962 = xor i64 1, %3945
  %3963 = trunc i64 %3962 to i32
  %3964 = xor i32 %3963, %3949
  %3965 = lshr i32 %3964, 4
  %3966 = trunc i32 %3965 to i8
  %3967 = and i8 %3966, 1
  %3968 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3967, i8* %3968, align 1
  %3969 = icmp eq i32 %3949, 0
  %3970 = zext i1 %3969 to i8
  %3971 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3970, i8* %3971, align 1
  %3972 = lshr i32 %3949, 31
  %3973 = trunc i32 %3972 to i8
  %3974 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3973, i8* %3974, align 1
  %3975 = lshr i32 %3948, 31
  %3976 = xor i32 %3972, %3975
  %3977 = add i32 %3976, %3972
  %3978 = icmp eq i32 %3977, 2
  %3979 = zext i1 %3978 to i8
  %3980 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3979, i8* %3980, align 1
  store %struct.Memory* %loadMem_47bb0d, %struct.Memory** %MEMORY
  %loadMem_47bb10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3982 = getelementptr inbounds %struct.GPR, %struct.GPR* %3981, i32 0, i32 33
  %3983 = getelementptr inbounds %struct.Reg, %struct.Reg* %3982, i32 0, i32 0
  %PC.i456 = bitcast %union.anon* %3983 to i64*
  %3984 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3985 = getelementptr inbounds %struct.GPR, %struct.GPR* %3984, i32 0, i32 1
  %3986 = getelementptr inbounds %struct.Reg, %struct.Reg* %3985, i32 0, i32 0
  %EAX.i457 = bitcast %union.anon* %3986 to i32*
  %3987 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3988 = getelementptr inbounds %struct.GPR, %struct.GPR* %3987, i32 0, i32 15
  %3989 = getelementptr inbounds %struct.Reg, %struct.Reg* %3988, i32 0, i32 0
  %RBP.i458 = bitcast %union.anon* %3989 to i64*
  %3990 = load i64, i64* %RBP.i458
  %3991 = sub i64 %3990, 8
  %3992 = load i32, i32* %EAX.i457
  %3993 = zext i32 %3992 to i64
  %3994 = load i64, i64* %PC.i456
  %3995 = add i64 %3994, 3
  store i64 %3995, i64* %PC.i456
  %3996 = inttoptr i64 %3991 to i32*
  store i32 %3992, i32* %3996
  store %struct.Memory* %loadMem_47bb10, %struct.Memory** %MEMORY
  %loadMem_47bb13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3998 = getelementptr inbounds %struct.GPR, %struct.GPR* %3997, i32 0, i32 33
  %3999 = getelementptr inbounds %struct.Reg, %struct.Reg* %3998, i32 0, i32 0
  %PC.i455 = bitcast %union.anon* %3999 to i64*
  %4000 = load i64, i64* %PC.i455
  %4001 = add i64 %4000, -630
  %4002 = load i64, i64* %PC.i455
  %4003 = add i64 %4002, 5
  store i64 %4003, i64* %PC.i455
  %4004 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4001, i64* %4004, align 8
  store %struct.Memory* %loadMem_47bb13, %struct.Memory** %MEMORY
  br label %block_.L_47b89d

block_.L_47bb18:                                  ; preds = %block_.L_47b89d
  %loadMem_47bb18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4005 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4006 = getelementptr inbounds %struct.GPR, %struct.GPR* %4005, i32 0, i32 33
  %4007 = getelementptr inbounds %struct.Reg, %struct.Reg* %4006, i32 0, i32 0
  %PC.i454 = bitcast %union.anon* %4007 to i64*
  %4008 = load i64, i64* %PC.i454
  %4009 = add i64 %4008, 5
  %4010 = load i64, i64* %PC.i454
  %4011 = add i64 %4010, 5
  store i64 %4011, i64* %PC.i454
  %4012 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4009, i64* %4012, align 8
  store %struct.Memory* %loadMem_47bb18, %struct.Memory** %MEMORY
  br label %block_.L_47bb1d

block_.L_47bb1d:                                  ; preds = %block_.L_47bb18
  %loadMem_47bb1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4013 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4014 = getelementptr inbounds %struct.GPR, %struct.GPR* %4013, i32 0, i32 33
  %4015 = getelementptr inbounds %struct.Reg, %struct.Reg* %4014, i32 0, i32 0
  %PC.i451 = bitcast %union.anon* %4015 to i64*
  %4016 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4017 = getelementptr inbounds %struct.GPR, %struct.GPR* %4016, i32 0, i32 1
  %4018 = getelementptr inbounds %struct.Reg, %struct.Reg* %4017, i32 0, i32 0
  %RAX.i452 = bitcast %union.anon* %4018 to i64*
  %4019 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4020 = getelementptr inbounds %struct.GPR, %struct.GPR* %4019, i32 0, i32 15
  %4021 = getelementptr inbounds %struct.Reg, %struct.Reg* %4020, i32 0, i32 0
  %RBP.i453 = bitcast %union.anon* %4021 to i64*
  %4022 = load i64, i64* %RBP.i453
  %4023 = sub i64 %4022, 12
  %4024 = load i64, i64* %PC.i451
  %4025 = add i64 %4024, 3
  store i64 %4025, i64* %PC.i451
  %4026 = inttoptr i64 %4023 to i32*
  %4027 = load i32, i32* %4026
  %4028 = zext i32 %4027 to i64
  store i64 %4028, i64* %RAX.i452, align 8
  store %struct.Memory* %loadMem_47bb1d, %struct.Memory** %MEMORY
  %loadMem_47bb20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4030 = getelementptr inbounds %struct.GPR, %struct.GPR* %4029, i32 0, i32 33
  %4031 = getelementptr inbounds %struct.Reg, %struct.Reg* %4030, i32 0, i32 0
  %PC.i449 = bitcast %union.anon* %4031 to i64*
  %4032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4033 = getelementptr inbounds %struct.GPR, %struct.GPR* %4032, i32 0, i32 1
  %4034 = getelementptr inbounds %struct.Reg, %struct.Reg* %4033, i32 0, i32 0
  %RAX.i450 = bitcast %union.anon* %4034 to i64*
  %4035 = load i64, i64* %RAX.i450
  %4036 = load i64, i64* %PC.i449
  %4037 = add i64 %4036, 3
  store i64 %4037, i64* %PC.i449
  %4038 = trunc i64 %4035 to i32
  %4039 = add i32 1, %4038
  %4040 = zext i32 %4039 to i64
  store i64 %4040, i64* %RAX.i450, align 8
  %4041 = icmp ult i32 %4039, %4038
  %4042 = icmp ult i32 %4039, 1
  %4043 = or i1 %4041, %4042
  %4044 = zext i1 %4043 to i8
  %4045 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4044, i8* %4045, align 1
  %4046 = and i32 %4039, 255
  %4047 = call i32 @llvm.ctpop.i32(i32 %4046)
  %4048 = trunc i32 %4047 to i8
  %4049 = and i8 %4048, 1
  %4050 = xor i8 %4049, 1
  %4051 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4050, i8* %4051, align 1
  %4052 = xor i64 1, %4035
  %4053 = trunc i64 %4052 to i32
  %4054 = xor i32 %4053, %4039
  %4055 = lshr i32 %4054, 4
  %4056 = trunc i32 %4055 to i8
  %4057 = and i8 %4056, 1
  %4058 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4057, i8* %4058, align 1
  %4059 = icmp eq i32 %4039, 0
  %4060 = zext i1 %4059 to i8
  %4061 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4060, i8* %4061, align 1
  %4062 = lshr i32 %4039, 31
  %4063 = trunc i32 %4062 to i8
  %4064 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4063, i8* %4064, align 1
  %4065 = lshr i32 %4038, 31
  %4066 = xor i32 %4062, %4065
  %4067 = add i32 %4066, %4062
  %4068 = icmp eq i32 %4067, 2
  %4069 = zext i1 %4068 to i8
  %4070 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4069, i8* %4070, align 1
  store %struct.Memory* %loadMem_47bb20, %struct.Memory** %MEMORY
  %loadMem_47bb23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4071 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4072 = getelementptr inbounds %struct.GPR, %struct.GPR* %4071, i32 0, i32 33
  %4073 = getelementptr inbounds %struct.Reg, %struct.Reg* %4072, i32 0, i32 0
  %PC.i446 = bitcast %union.anon* %4073 to i64*
  %4074 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4075 = getelementptr inbounds %struct.GPR, %struct.GPR* %4074, i32 0, i32 1
  %4076 = getelementptr inbounds %struct.Reg, %struct.Reg* %4075, i32 0, i32 0
  %EAX.i447 = bitcast %union.anon* %4076 to i32*
  %4077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4078 = getelementptr inbounds %struct.GPR, %struct.GPR* %4077, i32 0, i32 15
  %4079 = getelementptr inbounds %struct.Reg, %struct.Reg* %4078, i32 0, i32 0
  %RBP.i448 = bitcast %union.anon* %4079 to i64*
  %4080 = load i64, i64* %RBP.i448
  %4081 = sub i64 %4080, 12
  %4082 = load i32, i32* %EAX.i447
  %4083 = zext i32 %4082 to i64
  %4084 = load i64, i64* %PC.i446
  %4085 = add i64 %4084, 3
  store i64 %4085, i64* %PC.i446
  %4086 = inttoptr i64 %4081 to i32*
  store i32 %4082, i32* %4086
  store %struct.Memory* %loadMem_47bb23, %struct.Memory** %MEMORY
  %loadMem_47bb26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4087 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4088 = getelementptr inbounds %struct.GPR, %struct.GPR* %4087, i32 0, i32 33
  %4089 = getelementptr inbounds %struct.Reg, %struct.Reg* %4088, i32 0, i32 0
  %PC.i445 = bitcast %union.anon* %4089 to i64*
  %4090 = load i64, i64* %PC.i445
  %4091 = add i64 %4090, -678
  %4092 = load i64, i64* %PC.i445
  %4093 = add i64 %4092, 5
  store i64 %4093, i64* %PC.i445
  %4094 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4091, i64* %4094, align 8
  store %struct.Memory* %loadMem_47bb26, %struct.Memory** %MEMORY
  br label %block_.L_47b880

block_.L_47bb2b:                                  ; preds = %block_.L_47b880
  %loadMem_47bb2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4095 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4096 = getelementptr inbounds %struct.GPR, %struct.GPR* %4095, i32 0, i32 33
  %4097 = getelementptr inbounds %struct.Reg, %struct.Reg* %4096, i32 0, i32 0
  %PC.i444 = bitcast %union.anon* %4097 to i64*
  %4098 = load i64, i64* %PC.i444
  %4099 = add i64 %4098, 700
  %4100 = load i64, i64* %PC.i444
  %4101 = add i64 %4100, 5
  store i64 %4101, i64* %PC.i444
  %4102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4099, i64* %4102, align 8
  store %struct.Memory* %loadMem_47bb2b, %struct.Memory** %MEMORY
  br label %block_.L_47bde7

block_.L_47bb30:                                  ; preds = %entry
  %loadMem_47bb30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4104 = getelementptr inbounds %struct.GPR, %struct.GPR* %4103, i32 0, i32 33
  %4105 = getelementptr inbounds %struct.Reg, %struct.Reg* %4104, i32 0, i32 0
  %PC.i442 = bitcast %union.anon* %4105 to i64*
  %4106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4107 = getelementptr inbounds %struct.GPR, %struct.GPR* %4106, i32 0, i32 15
  %4108 = getelementptr inbounds %struct.Reg, %struct.Reg* %4107, i32 0, i32 0
  %RBP.i443 = bitcast %union.anon* %4108 to i64*
  %4109 = load i64, i64* %RBP.i443
  %4110 = sub i64 %4109, 12
  %4111 = load i64, i64* %PC.i442
  %4112 = add i64 %4111, 7
  store i64 %4112, i64* %PC.i442
  %4113 = inttoptr i64 %4110 to i32*
  store i32 0, i32* %4113
  store %struct.Memory* %loadMem_47bb30, %struct.Memory** %MEMORY
  br label %block_.L_47bb37

block_.L_47bb37:                                  ; preds = %block_.L_47bdd4, %block_.L_47bb30
  %loadMem_47bb37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4115 = getelementptr inbounds %struct.GPR, %struct.GPR* %4114, i32 0, i32 33
  %4116 = getelementptr inbounds %struct.Reg, %struct.Reg* %4115, i32 0, i32 0
  %PC.i440 = bitcast %union.anon* %4116 to i64*
  %4117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4118 = getelementptr inbounds %struct.GPR, %struct.GPR* %4117, i32 0, i32 15
  %4119 = getelementptr inbounds %struct.Reg, %struct.Reg* %4118, i32 0, i32 0
  %RBP.i441 = bitcast %union.anon* %4119 to i64*
  %4120 = load i64, i64* %RBP.i441
  %4121 = sub i64 %4120, 12
  %4122 = load i64, i64* %PC.i440
  %4123 = add i64 %4122, 4
  store i64 %4123, i64* %PC.i440
  %4124 = inttoptr i64 %4121 to i32*
  %4125 = load i32, i32* %4124
  %4126 = sub i32 %4125, 13
  %4127 = icmp ult i32 %4125, 13
  %4128 = zext i1 %4127 to i8
  %4129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4128, i8* %4129, align 1
  %4130 = and i32 %4126, 255
  %4131 = call i32 @llvm.ctpop.i32(i32 %4130)
  %4132 = trunc i32 %4131 to i8
  %4133 = and i8 %4132, 1
  %4134 = xor i8 %4133, 1
  %4135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4134, i8* %4135, align 1
  %4136 = xor i32 %4125, 13
  %4137 = xor i32 %4136, %4126
  %4138 = lshr i32 %4137, 4
  %4139 = trunc i32 %4138 to i8
  %4140 = and i8 %4139, 1
  %4141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4140, i8* %4141, align 1
  %4142 = icmp eq i32 %4126, 0
  %4143 = zext i1 %4142 to i8
  %4144 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4143, i8* %4144, align 1
  %4145 = lshr i32 %4126, 31
  %4146 = trunc i32 %4145 to i8
  %4147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4146, i8* %4147, align 1
  %4148 = lshr i32 %4125, 31
  %4149 = xor i32 %4145, %4148
  %4150 = add i32 %4149, %4148
  %4151 = icmp eq i32 %4150, 2
  %4152 = zext i1 %4151 to i8
  %4153 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4152, i8* %4153, align 1
  store %struct.Memory* %loadMem_47bb37, %struct.Memory** %MEMORY
  %loadMem_47bb3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4155 = getelementptr inbounds %struct.GPR, %struct.GPR* %4154, i32 0, i32 33
  %4156 = getelementptr inbounds %struct.Reg, %struct.Reg* %4155, i32 0, i32 0
  %PC.i439 = bitcast %union.anon* %4156 to i64*
  %4157 = load i64, i64* %PC.i439
  %4158 = add i64 %4157, 679
  %4159 = load i64, i64* %PC.i439
  %4160 = add i64 %4159, 6
  %4161 = load i64, i64* %PC.i439
  %4162 = add i64 %4161, 6
  store i64 %4162, i64* %PC.i439
  %4163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4164 = load i8, i8* %4163, align 1
  %4165 = icmp ne i8 %4164, 0
  %4166 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4167 = load i8, i8* %4166, align 1
  %4168 = icmp ne i8 %4167, 0
  %4169 = xor i1 %4165, %4168
  %4170 = xor i1 %4169, true
  %4171 = zext i1 %4170 to i8
  store i8 %4171, i8* %BRANCH_TAKEN, align 1
  %4172 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4173 = select i1 %4169, i64 %4160, i64 %4158
  store i64 %4173, i64* %4172, align 8
  store %struct.Memory* %loadMem_47bb3b, %struct.Memory** %MEMORY
  %loadBr_47bb3b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47bb3b = icmp eq i8 %loadBr_47bb3b, 1
  br i1 %cmpBr_47bb3b, label %block_.L_47bde2, label %block_47bb41

block_47bb41:                                     ; preds = %block_.L_47bb37
  %loadMem_47bb41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4175 = getelementptr inbounds %struct.GPR, %struct.GPR* %4174, i32 0, i32 33
  %4176 = getelementptr inbounds %struct.Reg, %struct.Reg* %4175, i32 0, i32 0
  %PC.i436 = bitcast %union.anon* %4176 to i64*
  %4177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4178 = getelementptr inbounds %struct.GPR, %struct.GPR* %4177, i32 0, i32 1
  %4179 = getelementptr inbounds %struct.Reg, %struct.Reg* %4178, i32 0, i32 0
  %RAX.i437 = bitcast %union.anon* %4179 to i64*
  %4180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4181 = getelementptr inbounds %struct.GPR, %struct.GPR* %4180, i32 0, i32 15
  %4182 = getelementptr inbounds %struct.Reg, %struct.Reg* %4181, i32 0, i32 0
  %RBP.i438 = bitcast %union.anon* %4182 to i64*
  %4183 = load i64, i64* %RBP.i438
  %4184 = sub i64 %4183, 12
  %4185 = load i64, i64* %PC.i436
  %4186 = add i64 %4185, 3
  store i64 %4186, i64* %PC.i436
  %4187 = inttoptr i64 %4184 to i32*
  %4188 = load i32, i32* %4187
  %4189 = zext i32 %4188 to i64
  store i64 %4189, i64* %RAX.i437, align 8
  store %struct.Memory* %loadMem_47bb41, %struct.Memory** %MEMORY
  %loadMem_47bb44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4191 = getelementptr inbounds %struct.GPR, %struct.GPR* %4190, i32 0, i32 33
  %4192 = getelementptr inbounds %struct.Reg, %struct.Reg* %4191, i32 0, i32 0
  %PC.i434 = bitcast %union.anon* %4192 to i64*
  %4193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4194 = getelementptr inbounds %struct.GPR, %struct.GPR* %4193, i32 0, i32 1
  %4195 = getelementptr inbounds %struct.Reg, %struct.Reg* %4194, i32 0, i32 0
  %RAX.i435 = bitcast %union.anon* %4195 to i64*
  %4196 = load i64, i64* %RAX.i435
  %4197 = load i64, i64* %PC.i434
  %4198 = add i64 %4197, 3
  store i64 %4198, i64* %PC.i434
  %4199 = trunc i64 %4196 to i32
  %4200 = add i32 15, %4199
  %4201 = zext i32 %4200 to i64
  store i64 %4201, i64* %RAX.i435, align 8
  %4202 = icmp ult i32 %4200, %4199
  %4203 = icmp ult i32 %4200, 15
  %4204 = or i1 %4202, %4203
  %4205 = zext i1 %4204 to i8
  %4206 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4205, i8* %4206, align 1
  %4207 = and i32 %4200, 255
  %4208 = call i32 @llvm.ctpop.i32(i32 %4207)
  %4209 = trunc i32 %4208 to i8
  %4210 = and i8 %4209, 1
  %4211 = xor i8 %4210, 1
  %4212 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4211, i8* %4212, align 1
  %4213 = xor i64 15, %4196
  %4214 = trunc i64 %4213 to i32
  %4215 = xor i32 %4214, %4200
  %4216 = lshr i32 %4215, 4
  %4217 = trunc i32 %4216 to i8
  %4218 = and i8 %4217, 1
  %4219 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4218, i8* %4219, align 1
  %4220 = icmp eq i32 %4200, 0
  %4221 = zext i1 %4220 to i8
  %4222 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4221, i8* %4222, align 1
  %4223 = lshr i32 %4200, 31
  %4224 = trunc i32 %4223 to i8
  %4225 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4224, i8* %4225, align 1
  %4226 = lshr i32 %4199, 31
  %4227 = xor i32 %4223, %4226
  %4228 = add i32 %4227, %4223
  %4229 = icmp eq i32 %4228, 2
  %4230 = zext i1 %4229 to i8
  %4231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4230, i8* %4231, align 1
  store %struct.Memory* %loadMem_47bb44, %struct.Memory** %MEMORY
  %loadMem_47bb47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4233 = getelementptr inbounds %struct.GPR, %struct.GPR* %4232, i32 0, i32 33
  %4234 = getelementptr inbounds %struct.Reg, %struct.Reg* %4233, i32 0, i32 0
  %PC.i432 = bitcast %union.anon* %4234 to i64*
  %4235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4236 = getelementptr inbounds %struct.GPR, %struct.GPR* %4235, i32 0, i32 1
  %4237 = getelementptr inbounds %struct.Reg, %struct.Reg* %4236, i32 0, i32 0
  %RAX.i433 = bitcast %union.anon* %4237 to i64*
  %4238 = load i64, i64* %RAX.i433
  %4239 = load i64, i64* %PC.i432
  %4240 = add i64 %4239, 3
  store i64 %4240, i64* %PC.i432
  %4241 = trunc i64 %4238 to i32
  %4242 = sub i32 %4241, 10
  %4243 = zext i32 %4242 to i64
  store i64 %4243, i64* %RAX.i433, align 8
  %4244 = icmp ult i32 %4241, 10
  %4245 = zext i1 %4244 to i8
  %4246 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4245, i8* %4246, align 1
  %4247 = and i32 %4242, 255
  %4248 = call i32 @llvm.ctpop.i32(i32 %4247)
  %4249 = trunc i32 %4248 to i8
  %4250 = and i8 %4249, 1
  %4251 = xor i8 %4250, 1
  %4252 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4251, i8* %4252, align 1
  %4253 = xor i64 10, %4238
  %4254 = trunc i64 %4253 to i32
  %4255 = xor i32 %4254, %4242
  %4256 = lshr i32 %4255, 4
  %4257 = trunc i32 %4256 to i8
  %4258 = and i8 %4257, 1
  %4259 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4258, i8* %4259, align 1
  %4260 = icmp eq i32 %4242, 0
  %4261 = zext i1 %4260 to i8
  %4262 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4261, i8* %4262, align 1
  %4263 = lshr i32 %4242, 31
  %4264 = trunc i32 %4263 to i8
  %4265 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4264, i8* %4265, align 1
  %4266 = lshr i32 %4241, 31
  %4267 = xor i32 %4263, %4266
  %4268 = add i32 %4267, %4266
  %4269 = icmp eq i32 %4268, 2
  %4270 = zext i1 %4269 to i8
  %4271 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4270, i8* %4271, align 1
  store %struct.Memory* %loadMem_47bb47, %struct.Memory** %MEMORY
  %loadMem_47bb4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4273 = getelementptr inbounds %struct.GPR, %struct.GPR* %4272, i32 0, i32 33
  %4274 = getelementptr inbounds %struct.Reg, %struct.Reg* %4273, i32 0, i32 0
  %PC.i429 = bitcast %union.anon* %4274 to i64*
  %4275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4276 = getelementptr inbounds %struct.GPR, %struct.GPR* %4275, i32 0, i32 1
  %4277 = getelementptr inbounds %struct.Reg, %struct.Reg* %4276, i32 0, i32 0
  %EAX.i430 = bitcast %union.anon* %4277 to i32*
  %4278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4279 = getelementptr inbounds %struct.GPR, %struct.GPR* %4278, i32 0, i32 15
  %4280 = getelementptr inbounds %struct.Reg, %struct.Reg* %4279, i32 0, i32 0
  %RBP.i431 = bitcast %union.anon* %4280 to i64*
  %4281 = load i64, i64* %RBP.i431
  %4282 = sub i64 %4281, 20
  %4283 = load i32, i32* %EAX.i430
  %4284 = zext i32 %4283 to i64
  %4285 = load i64, i64* %PC.i429
  %4286 = add i64 %4285, 3
  store i64 %4286, i64* %PC.i429
  %4287 = inttoptr i64 %4282 to i32*
  store i32 %4283, i32* %4287
  store %struct.Memory* %loadMem_47bb4a, %struct.Memory** %MEMORY
  %loadMem_47bb4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4289 = getelementptr inbounds %struct.GPR, %struct.GPR* %4288, i32 0, i32 33
  %4290 = getelementptr inbounds %struct.Reg, %struct.Reg* %4289, i32 0, i32 0
  %PC.i427 = bitcast %union.anon* %4290 to i64*
  %4291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4292 = getelementptr inbounds %struct.GPR, %struct.GPR* %4291, i32 0, i32 15
  %4293 = getelementptr inbounds %struct.Reg, %struct.Reg* %4292, i32 0, i32 0
  %RBP.i428 = bitcast %union.anon* %4293 to i64*
  %4294 = load i64, i64* %RBP.i428
  %4295 = sub i64 %4294, 8
  %4296 = load i64, i64* %PC.i427
  %4297 = add i64 %4296, 7
  store i64 %4297, i64* %PC.i427
  %4298 = inttoptr i64 %4295 to i32*
  store i32 0, i32* %4298
  store %struct.Memory* %loadMem_47bb4d, %struct.Memory** %MEMORY
  br label %block_.L_47bb54

block_.L_47bb54:                                  ; preds = %block_.L_47bdc1, %block_47bb41
  %loadMem_47bb54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4300 = getelementptr inbounds %struct.GPR, %struct.GPR* %4299, i32 0, i32 33
  %4301 = getelementptr inbounds %struct.Reg, %struct.Reg* %4300, i32 0, i32 0
  %PC.i425 = bitcast %union.anon* %4301 to i64*
  %4302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4303 = getelementptr inbounds %struct.GPR, %struct.GPR* %4302, i32 0, i32 15
  %4304 = getelementptr inbounds %struct.Reg, %struct.Reg* %4303, i32 0, i32 0
  %RBP.i426 = bitcast %union.anon* %4304 to i64*
  %4305 = load i64, i64* %RBP.i426
  %4306 = sub i64 %4305, 8
  %4307 = load i64, i64* %PC.i425
  %4308 = add i64 %4307, 4
  store i64 %4308, i64* %PC.i425
  %4309 = inttoptr i64 %4306 to i32*
  %4310 = load i32, i32* %4309
  %4311 = sub i32 %4310, 4
  %4312 = icmp ult i32 %4310, 4
  %4313 = zext i1 %4312 to i8
  %4314 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4313, i8* %4314, align 1
  %4315 = and i32 %4311, 255
  %4316 = call i32 @llvm.ctpop.i32(i32 %4315)
  %4317 = trunc i32 %4316 to i8
  %4318 = and i8 %4317, 1
  %4319 = xor i8 %4318, 1
  %4320 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4319, i8* %4320, align 1
  %4321 = xor i32 %4310, 4
  %4322 = xor i32 %4321, %4311
  %4323 = lshr i32 %4322, 4
  %4324 = trunc i32 %4323 to i8
  %4325 = and i8 %4324, 1
  %4326 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4325, i8* %4326, align 1
  %4327 = icmp eq i32 %4311, 0
  %4328 = zext i1 %4327 to i8
  %4329 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4328, i8* %4329, align 1
  %4330 = lshr i32 %4311, 31
  %4331 = trunc i32 %4330 to i8
  %4332 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4331, i8* %4332, align 1
  %4333 = lshr i32 %4310, 31
  %4334 = xor i32 %4330, %4333
  %4335 = add i32 %4334, %4333
  %4336 = icmp eq i32 %4335, 2
  %4337 = zext i1 %4336 to i8
  %4338 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4337, i8* %4338, align 1
  store %struct.Memory* %loadMem_47bb54, %struct.Memory** %MEMORY
  %loadMem_47bb58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4340 = getelementptr inbounds %struct.GPR, %struct.GPR* %4339, i32 0, i32 33
  %4341 = getelementptr inbounds %struct.Reg, %struct.Reg* %4340, i32 0, i32 0
  %PC.i424 = bitcast %union.anon* %4341 to i64*
  %4342 = load i64, i64* %PC.i424
  %4343 = add i64 %4342, 631
  %4344 = load i64, i64* %PC.i424
  %4345 = add i64 %4344, 6
  %4346 = load i64, i64* %PC.i424
  %4347 = add i64 %4346, 6
  store i64 %4347, i64* %PC.i424
  %4348 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4349 = load i8, i8* %4348, align 1
  %4350 = icmp ne i8 %4349, 0
  %4351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4352 = load i8, i8* %4351, align 1
  %4353 = icmp ne i8 %4352, 0
  %4354 = xor i1 %4350, %4353
  %4355 = xor i1 %4354, true
  %4356 = zext i1 %4355 to i8
  store i8 %4356, i8* %BRANCH_TAKEN, align 1
  %4357 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4358 = select i1 %4354, i64 %4345, i64 %4343
  store i64 %4358, i64* %4357, align 8
  store %struct.Memory* %loadMem_47bb58, %struct.Memory** %MEMORY
  %loadBr_47bb58 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47bb58 = icmp eq i8 %loadBr_47bb58, 1
  br i1 %cmpBr_47bb58, label %block_.L_47bdcf, label %block_47bb5e

block_47bb5e:                                     ; preds = %block_.L_47bb54
  %loadMem_47bb5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4360 = getelementptr inbounds %struct.GPR, %struct.GPR* %4359, i32 0, i32 33
  %4361 = getelementptr inbounds %struct.Reg, %struct.Reg* %4360, i32 0, i32 0
  %PC.i422 = bitcast %union.anon* %4361 to i64*
  %4362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4363 = getelementptr inbounds %struct.GPR, %struct.GPR* %4362, i32 0, i32 15
  %4364 = getelementptr inbounds %struct.Reg, %struct.Reg* %4363, i32 0, i32 0
  %RBP.i423 = bitcast %union.anon* %4364 to i64*
  %4365 = load i64, i64* %RBP.i423
  %4366 = sub i64 %4365, 4
  %4367 = load i64, i64* %PC.i422
  %4368 = add i64 %4367, 7
  store i64 %4368, i64* %PC.i422
  %4369 = inttoptr i64 %4366 to i32*
  store i32 0, i32* %4369
  store %struct.Memory* %loadMem_47bb5e, %struct.Memory** %MEMORY
  br label %block_.L_47bb65

block_.L_47bb65:                                  ; preds = %routine_shll__cl___edi.exit, %block_47bb5e
  %loadMem_47bb65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4371 = getelementptr inbounds %struct.GPR, %struct.GPR* %4370, i32 0, i32 33
  %4372 = getelementptr inbounds %struct.Reg, %struct.Reg* %4371, i32 0, i32 0
  %PC.i420 = bitcast %union.anon* %4372 to i64*
  %4373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4374 = getelementptr inbounds %struct.GPR, %struct.GPR* %4373, i32 0, i32 15
  %4375 = getelementptr inbounds %struct.Reg, %struct.Reg* %4374, i32 0, i32 0
  %RBP.i421 = bitcast %union.anon* %4375 to i64*
  %4376 = load i64, i64* %RBP.i421
  %4377 = sub i64 %4376, 4
  %4378 = load i64, i64* %PC.i420
  %4379 = add i64 %4378, 4
  store i64 %4379, i64* %PC.i420
  %4380 = inttoptr i64 %4377 to i32*
  %4381 = load i32, i32* %4380
  %4382 = sub i32 %4381, 4
  %4383 = icmp ult i32 %4381, 4
  %4384 = zext i1 %4383 to i8
  %4385 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4384, i8* %4385, align 1
  %4386 = and i32 %4382, 255
  %4387 = call i32 @llvm.ctpop.i32(i32 %4386)
  %4388 = trunc i32 %4387 to i8
  %4389 = and i8 %4388, 1
  %4390 = xor i8 %4389, 1
  %4391 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4390, i8* %4391, align 1
  %4392 = xor i32 %4381, 4
  %4393 = xor i32 %4392, %4382
  %4394 = lshr i32 %4393, 4
  %4395 = trunc i32 %4394 to i8
  %4396 = and i8 %4395, 1
  %4397 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4396, i8* %4397, align 1
  %4398 = icmp eq i32 %4382, 0
  %4399 = zext i1 %4398 to i8
  %4400 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4399, i8* %4400, align 1
  %4401 = lshr i32 %4382, 31
  %4402 = trunc i32 %4401 to i8
  %4403 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4402, i8* %4403, align 1
  %4404 = lshr i32 %4381, 31
  %4405 = xor i32 %4401, %4404
  %4406 = add i32 %4405, %4404
  %4407 = icmp eq i32 %4406, 2
  %4408 = zext i1 %4407 to i8
  %4409 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4408, i8* %4409, align 1
  store %struct.Memory* %loadMem_47bb65, %struct.Memory** %MEMORY
  %loadMem_47bb69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4410 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4411 = getelementptr inbounds %struct.GPR, %struct.GPR* %4410, i32 0, i32 33
  %4412 = getelementptr inbounds %struct.Reg, %struct.Reg* %4411, i32 0, i32 0
  %PC.i419 = bitcast %union.anon* %4412 to i64*
  %4413 = load i64, i64* %PC.i419
  %4414 = add i64 %4413, 595
  %4415 = load i64, i64* %PC.i419
  %4416 = add i64 %4415, 6
  %4417 = load i64, i64* %PC.i419
  %4418 = add i64 %4417, 6
  store i64 %4418, i64* %PC.i419
  %4419 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4420 = load i8, i8* %4419, align 1
  %4421 = icmp ne i8 %4420, 0
  %4422 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4423 = load i8, i8* %4422, align 1
  %4424 = icmp ne i8 %4423, 0
  %4425 = xor i1 %4421, %4424
  %4426 = xor i1 %4425, true
  %4427 = zext i1 %4426 to i8
  store i8 %4427, i8* %BRANCH_TAKEN, align 1
  %4428 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4429 = select i1 %4425, i64 %4416, i64 %4414
  store i64 %4429, i64* %4428, align 8
  store %struct.Memory* %loadMem_47bb69, %struct.Memory** %MEMORY
  %loadBr_47bb69 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47bb69 = icmp eq i8 %loadBr_47bb69, 1
  br i1 %cmpBr_47bb69, label %block_.L_47bdbc, label %block_47bb6f

block_47bb6f:                                     ; preds = %block_.L_47bb65
  %loadMem_47bb6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4430 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4431 = getelementptr inbounds %struct.GPR, %struct.GPR* %4430, i32 0, i32 33
  %4432 = getelementptr inbounds %struct.Reg, %struct.Reg* %4431, i32 0, i32 0
  %PC.i416 = bitcast %union.anon* %4432 to i64*
  %4433 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4434 = getelementptr inbounds %struct.GPR, %struct.GPR* %4433, i32 0, i32 1
  %4435 = getelementptr inbounds %struct.Reg, %struct.Reg* %4434, i32 0, i32 0
  %RAX.i417 = bitcast %union.anon* %4435 to i64*
  %4436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4437 = getelementptr inbounds %struct.GPR, %struct.GPR* %4436, i32 0, i32 15
  %4438 = getelementptr inbounds %struct.Reg, %struct.Reg* %4437, i32 0, i32 0
  %RBP.i418 = bitcast %union.anon* %4438 to i64*
  %4439 = load i64, i64* %RBP.i418
  %4440 = sub i64 %4439, 4
  %4441 = load i64, i64* %PC.i416
  %4442 = add i64 %4441, 3
  store i64 %4442, i64* %PC.i416
  %4443 = inttoptr i64 %4440 to i32*
  %4444 = load i32, i32* %4443
  %4445 = zext i32 %4444 to i64
  store i64 %4445, i64* %RAX.i417, align 8
  store %struct.Memory* %loadMem_47bb6f, %struct.Memory** %MEMORY
  %loadMem_47bb72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4447 = getelementptr inbounds %struct.GPR, %struct.GPR* %4446, i32 0, i32 33
  %4448 = getelementptr inbounds %struct.Reg, %struct.Reg* %4447, i32 0, i32 0
  %PC.i414 = bitcast %union.anon* %4448 to i64*
  %4449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4450 = getelementptr inbounds %struct.GPR, %struct.GPR* %4449, i32 0, i32 1
  %4451 = getelementptr inbounds %struct.Reg, %struct.Reg* %4450, i32 0, i32 0
  %RAX.i415 = bitcast %union.anon* %4451 to i64*
  %4452 = load i64, i64* %RAX.i415
  %4453 = load i64, i64* %PC.i414
  %4454 = add i64 %4453, 3
  store i64 %4454, i64* %PC.i414
  %4455 = and i64 %4452, 4294967295
  %4456 = shl i64 %4455, 1
  %4457 = trunc i64 %4456 to i32
  %4458 = icmp slt i32 %4457, 0
  %4459 = shl i32 %4457, 1
  %4460 = zext i32 %4459 to i64
  store i64 %4460, i64* %RAX.i415, align 8
  %4461 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %4462 = zext i1 %4458 to i8
  store i8 %4462, i8* %4461, align 1
  %4463 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %4464 = and i32 %4459, 254
  %4465 = call i32 @llvm.ctpop.i32(i32 %4464)
  %4466 = trunc i32 %4465 to i8
  %4467 = and i8 %4466, 1
  %4468 = xor i8 %4467, 1
  store i8 %4468, i8* %4463, align 1
  %4469 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4469, align 1
  %4470 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4471 = icmp eq i32 %4459, 0
  %4472 = zext i1 %4471 to i8
  store i8 %4472, i8* %4470, align 1
  %4473 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4474 = lshr i32 %4459, 31
  %4475 = trunc i32 %4474 to i8
  store i8 %4475, i8* %4473, align 1
  %4476 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4476, align 1
  store %struct.Memory* %loadMem_47bb72, %struct.Memory** %MEMORY
  %loadMem_47bb75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4478 = getelementptr inbounds %struct.GPR, %struct.GPR* %4477, i32 0, i32 33
  %4479 = getelementptr inbounds %struct.Reg, %struct.Reg* %4478, i32 0, i32 0
  %PC.i411 = bitcast %union.anon* %4479 to i64*
  %4480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4481 = getelementptr inbounds %struct.GPR, %struct.GPR* %4480, i32 0, i32 1
  %4482 = getelementptr inbounds %struct.Reg, %struct.Reg* %4481, i32 0, i32 0
  %RAX.i412 = bitcast %union.anon* %4482 to i64*
  %4483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4484 = getelementptr inbounds %struct.GPR, %struct.GPR* %4483, i32 0, i32 15
  %4485 = getelementptr inbounds %struct.Reg, %struct.Reg* %4484, i32 0, i32 0
  %RBP.i413 = bitcast %union.anon* %4485 to i64*
  %4486 = load i64, i64* %RAX.i412
  %4487 = load i64, i64* %RBP.i413
  %4488 = sub i64 %4487, 8
  %4489 = load i64, i64* %PC.i411
  %4490 = add i64 %4489, 3
  store i64 %4490, i64* %PC.i411
  %4491 = trunc i64 %4486 to i32
  %4492 = inttoptr i64 %4488 to i32*
  %4493 = load i32, i32* %4492
  %4494 = add i32 %4493, %4491
  %4495 = zext i32 %4494 to i64
  store i64 %4495, i64* %RAX.i412, align 8
  %4496 = icmp ult i32 %4494, %4491
  %4497 = icmp ult i32 %4494, %4493
  %4498 = or i1 %4496, %4497
  %4499 = zext i1 %4498 to i8
  %4500 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4499, i8* %4500, align 1
  %4501 = and i32 %4494, 255
  %4502 = call i32 @llvm.ctpop.i32(i32 %4501)
  %4503 = trunc i32 %4502 to i8
  %4504 = and i8 %4503, 1
  %4505 = xor i8 %4504, 1
  %4506 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4505, i8* %4506, align 1
  %4507 = xor i32 %4493, %4491
  %4508 = xor i32 %4507, %4494
  %4509 = lshr i32 %4508, 4
  %4510 = trunc i32 %4509 to i8
  %4511 = and i8 %4510, 1
  %4512 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4511, i8* %4512, align 1
  %4513 = icmp eq i32 %4494, 0
  %4514 = zext i1 %4513 to i8
  %4515 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4514, i8* %4515, align 1
  %4516 = lshr i32 %4494, 31
  %4517 = trunc i32 %4516 to i8
  %4518 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4517, i8* %4518, align 1
  %4519 = lshr i32 %4491, 31
  %4520 = lshr i32 %4493, 31
  %4521 = xor i32 %4516, %4519
  %4522 = xor i32 %4516, %4520
  %4523 = add i32 %4521, %4522
  %4524 = icmp eq i32 %4523, 2
  %4525 = zext i1 %4524 to i8
  %4526 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4525, i8* %4526, align 1
  store %struct.Memory* %loadMem_47bb75, %struct.Memory** %MEMORY
  %loadMem_47bb78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4528 = getelementptr inbounds %struct.GPR, %struct.GPR* %4527, i32 0, i32 33
  %4529 = getelementptr inbounds %struct.Reg, %struct.Reg* %4528, i32 0, i32 0
  %PC.i408 = bitcast %union.anon* %4529 to i64*
  %4530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4531 = getelementptr inbounds %struct.GPR, %struct.GPR* %4530, i32 0, i32 1
  %4532 = getelementptr inbounds %struct.Reg, %struct.Reg* %4531, i32 0, i32 0
  %EAX.i409 = bitcast %union.anon* %4532 to i32*
  %4533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4534 = getelementptr inbounds %struct.GPR, %struct.GPR* %4533, i32 0, i32 15
  %4535 = getelementptr inbounds %struct.Reg, %struct.Reg* %4534, i32 0, i32 0
  %RBP.i410 = bitcast %union.anon* %4535 to i64*
  %4536 = load i64, i64* %RBP.i410
  %4537 = sub i64 %4536, 16
  %4538 = load i32, i32* %EAX.i409
  %4539 = zext i32 %4538 to i64
  %4540 = load i64, i64* %PC.i408
  %4541 = add i64 %4540, 3
  store i64 %4541, i64* %PC.i408
  %4542 = inttoptr i64 %4537 to i32*
  store i32 %4538, i32* %4542
  store %struct.Memory* %loadMem_47bb78, %struct.Memory** %MEMORY
  %loadMem_47bb7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4544 = getelementptr inbounds %struct.GPR, %struct.GPR* %4543, i32 0, i32 33
  %4545 = getelementptr inbounds %struct.Reg, %struct.Reg* %4544, i32 0, i32 0
  %PC.i406 = bitcast %union.anon* %4545 to i64*
  %4546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4547 = getelementptr inbounds %struct.GPR, %struct.GPR* %4546, i32 0, i32 5
  %4548 = getelementptr inbounds %struct.Reg, %struct.Reg* %4547, i32 0, i32 0
  %RCX.i407 = bitcast %union.anon* %4548 to i64*
  %4549 = load i64, i64* %PC.i406
  %4550 = add i64 %4549, 8
  store i64 %4550, i64* %PC.i406
  %4551 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %4551, i64* %RCX.i407, align 8
  store %struct.Memory* %loadMem_47bb7b, %struct.Memory** %MEMORY
  %loadMem_47bb83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4553 = getelementptr inbounds %struct.GPR, %struct.GPR* %4552, i32 0, i32 33
  %4554 = getelementptr inbounds %struct.Reg, %struct.Reg* %4553, i32 0, i32 0
  %PC.i404 = bitcast %union.anon* %4554 to i64*
  %4555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4556 = getelementptr inbounds %struct.GPR, %struct.GPR* %4555, i32 0, i32 5
  %4557 = getelementptr inbounds %struct.Reg, %struct.Reg* %4556, i32 0, i32 0
  %RCX.i405 = bitcast %union.anon* %4557 to i64*
  %4558 = load i64, i64* %RCX.i405
  %4559 = add i64 %4558, 24
  %4560 = load i64, i64* %PC.i404
  %4561 = add i64 %4560, 4
  store i64 %4561, i64* %PC.i404
  %4562 = inttoptr i64 %4559 to i32*
  %4563 = load i32, i32* %4562
  %4564 = sub i32 %4563, 2
  %4565 = icmp ult i32 %4563, 2
  %4566 = zext i1 %4565 to i8
  %4567 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4566, i8* %4567, align 1
  %4568 = and i32 %4564, 255
  %4569 = call i32 @llvm.ctpop.i32(i32 %4568)
  %4570 = trunc i32 %4569 to i8
  %4571 = and i8 %4570, 1
  %4572 = xor i8 %4571, 1
  %4573 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4572, i8* %4573, align 1
  %4574 = xor i32 %4563, 2
  %4575 = xor i32 %4574, %4564
  %4576 = lshr i32 %4575, 4
  %4577 = trunc i32 %4576 to i8
  %4578 = and i8 %4577, 1
  %4579 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4578, i8* %4579, align 1
  %4580 = icmp eq i32 %4564, 0
  %4581 = zext i1 %4580 to i8
  %4582 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4581, i8* %4582, align 1
  %4583 = lshr i32 %4564, 31
  %4584 = trunc i32 %4583 to i8
  %4585 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4584, i8* %4585, align 1
  %4586 = lshr i32 %4563, 31
  %4587 = xor i32 %4583, %4586
  %4588 = add i32 %4587, %4586
  %4589 = icmp eq i32 %4588, 2
  %4590 = zext i1 %4589 to i8
  %4591 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4590, i8* %4591, align 1
  store %struct.Memory* %loadMem_47bb83, %struct.Memory** %MEMORY
  %loadMem_47bb87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4593 = getelementptr inbounds %struct.GPR, %struct.GPR* %4592, i32 0, i32 33
  %4594 = getelementptr inbounds %struct.Reg, %struct.Reg* %4593, i32 0, i32 0
  %PC.i403 = bitcast %union.anon* %4594 to i64*
  %4595 = load i64, i64* %PC.i403
  %4596 = add i64 %4595, 191
  %4597 = load i64, i64* %PC.i403
  %4598 = add i64 %4597, 6
  %4599 = load i64, i64* %PC.i403
  %4600 = add i64 %4599, 6
  store i64 %4600, i64* %PC.i403
  %4601 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4602 = load i8, i8* %4601, align 1
  %4603 = icmp eq i8 %4602, 0
  %4604 = zext i1 %4603 to i8
  store i8 %4604, i8* %BRANCH_TAKEN, align 1
  %4605 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4606 = select i1 %4603, i64 %4596, i64 %4598
  store i64 %4606, i64* %4605, align 8
  store %struct.Memory* %loadMem_47bb87, %struct.Memory** %MEMORY
  %loadBr_47bb87 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47bb87 = icmp eq i8 %loadBr_47bb87, 1
  br i1 %cmpBr_47bb87, label %block_.L_47bc46, label %block_47bb8d

block_47bb8d:                                     ; preds = %block_47bb6f
  %loadMem_47bb8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4608 = getelementptr inbounds %struct.GPR, %struct.GPR* %4607, i32 0, i32 33
  %4609 = getelementptr inbounds %struct.Reg, %struct.Reg* %4608, i32 0, i32 0
  %PC.i401 = bitcast %union.anon* %4609 to i64*
  %4610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4611 = getelementptr inbounds %struct.GPR, %struct.GPR* %4610, i32 0, i32 1
  %4612 = getelementptr inbounds %struct.Reg, %struct.Reg* %4611, i32 0, i32 0
  %RAX.i402 = bitcast %union.anon* %4612 to i64*
  %4613 = load i64, i64* %PC.i401
  %4614 = add i64 %4613, 10
  store i64 %4614, i64* %PC.i401
  store i64 7490528, i64* %RAX.i402, align 8
  store %struct.Memory* %loadMem_47bb8d, %struct.Memory** %MEMORY
  %loadMem_47bb97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4616 = getelementptr inbounds %struct.GPR, %struct.GPR* %4615, i32 0, i32 33
  %4617 = getelementptr inbounds %struct.Reg, %struct.Reg* %4616, i32 0, i32 0
  %PC.i398 = bitcast %union.anon* %4617 to i64*
  %4618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4619 = getelementptr inbounds %struct.GPR, %struct.GPR* %4618, i32 0, i32 1
  %4620 = getelementptr inbounds %struct.Reg, %struct.Reg* %4619, i32 0, i32 0
  %RAX.i399 = bitcast %union.anon* %4620 to i64*
  %4621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4622 = getelementptr inbounds %struct.GPR, %struct.GPR* %4621, i32 0, i32 5
  %4623 = getelementptr inbounds %struct.Reg, %struct.Reg* %4622, i32 0, i32 0
  %RCX.i400 = bitcast %union.anon* %4623 to i64*
  %4624 = load i64, i64* %RAX.i399
  %4625 = load i64, i64* %PC.i398
  %4626 = add i64 %4625, 3
  store i64 %4626, i64* %PC.i398
  store i64 %4624, i64* %RCX.i400, align 8
  store %struct.Memory* %loadMem_47bb97, %struct.Memory** %MEMORY
  %loadMem_47bb9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4628 = getelementptr inbounds %struct.GPR, %struct.GPR* %4627, i32 0, i32 33
  %4629 = getelementptr inbounds %struct.Reg, %struct.Reg* %4628, i32 0, i32 0
  %PC.i396 = bitcast %union.anon* %4629 to i64*
  %4630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4631 = getelementptr inbounds %struct.GPR, %struct.GPR* %4630, i32 0, i32 5
  %4632 = getelementptr inbounds %struct.Reg, %struct.Reg* %4631, i32 0, i32 0
  %RCX.i397 = bitcast %union.anon* %4632 to i64*
  %4633 = load i64, i64* %RCX.i397
  %4634 = load i64, i64* %PC.i396
  %4635 = add i64 %4634, 7
  store i64 %4635, i64* %PC.i396
  %4636 = add i64 832, %4633
  store i64 %4636, i64* %RCX.i397, align 8
  %4637 = icmp ult i64 %4636, %4633
  %4638 = icmp ult i64 %4636, 832
  %4639 = or i1 %4637, %4638
  %4640 = zext i1 %4639 to i8
  %4641 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4640, i8* %4641, align 1
  %4642 = trunc i64 %4636 to i32
  %4643 = and i32 %4642, 255
  %4644 = call i32 @llvm.ctpop.i32(i32 %4643)
  %4645 = trunc i32 %4644 to i8
  %4646 = and i8 %4645, 1
  %4647 = xor i8 %4646, 1
  %4648 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4647, i8* %4648, align 1
  %4649 = xor i64 832, %4633
  %4650 = xor i64 %4649, %4636
  %4651 = lshr i64 %4650, 4
  %4652 = trunc i64 %4651 to i8
  %4653 = and i8 %4652, 1
  %4654 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4653, i8* %4654, align 1
  %4655 = icmp eq i64 %4636, 0
  %4656 = zext i1 %4655 to i8
  %4657 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4656, i8* %4657, align 1
  %4658 = lshr i64 %4636, 63
  %4659 = trunc i64 %4658 to i8
  %4660 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4659, i8* %4660, align 1
  %4661 = lshr i64 %4633, 63
  %4662 = xor i64 %4658, %4661
  %4663 = add i64 %4662, %4658
  %4664 = icmp eq i64 %4663, 2
  %4665 = zext i1 %4664 to i8
  %4666 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4665, i8* %4666, align 1
  store %struct.Memory* %loadMem_47bb9a, %struct.Memory** %MEMORY
  %loadMem_47bba1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4668 = getelementptr inbounds %struct.GPR, %struct.GPR* %4667, i32 0, i32 33
  %4669 = getelementptr inbounds %struct.Reg, %struct.Reg* %4668, i32 0, i32 0
  %PC.i394 = bitcast %union.anon* %4669 to i64*
  %4670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4671 = getelementptr inbounds %struct.GPR, %struct.GPR* %4670, i32 0, i32 7
  %4672 = getelementptr inbounds %struct.Reg, %struct.Reg* %4671, i32 0, i32 0
  %RDX.i395 = bitcast %union.anon* %4672 to i64*
  %4673 = load i64, i64* %PC.i394
  %4674 = add i64 %4673, 10
  store i64 %4674, i64* %PC.i394
  store i64 7405600, i64* %RDX.i395, align 8
  store %struct.Memory* %loadMem_47bba1, %struct.Memory** %MEMORY
  %loadMem_47bbab = load %struct.Memory*, %struct.Memory** %MEMORY
  %4675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4676 = getelementptr inbounds %struct.GPR, %struct.GPR* %4675, i32 0, i32 33
  %4677 = getelementptr inbounds %struct.Reg, %struct.Reg* %4676, i32 0, i32 0
  %PC.i391 = bitcast %union.anon* %4677 to i64*
  %4678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4679 = getelementptr inbounds %struct.GPR, %struct.GPR* %4678, i32 0, i32 9
  %4680 = getelementptr inbounds %struct.Reg, %struct.Reg* %4679, i32 0, i32 0
  %RSI.i392 = bitcast %union.anon* %4680 to i64*
  %4681 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4682 = getelementptr inbounds %struct.GPR, %struct.GPR* %4681, i32 0, i32 15
  %4683 = getelementptr inbounds %struct.Reg, %struct.Reg* %4682, i32 0, i32 0
  %RBP.i393 = bitcast %union.anon* %4683 to i64*
  %4684 = load i64, i64* %RBP.i393
  %4685 = sub i64 %4684, 16
  %4686 = load i64, i64* %PC.i391
  %4687 = add i64 %4686, 4
  store i64 %4687, i64* %PC.i391
  %4688 = inttoptr i64 %4685 to i32*
  %4689 = load i32, i32* %4688
  %4690 = sext i32 %4689 to i64
  store i64 %4690, i64* %RSI.i392, align 8
  store %struct.Memory* %loadMem_47bbab, %struct.Memory** %MEMORY
  %loadMem_47bbaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %4691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4692 = getelementptr inbounds %struct.GPR, %struct.GPR* %4691, i32 0, i32 33
  %4693 = getelementptr inbounds %struct.Reg, %struct.Reg* %4692, i32 0, i32 0
  %PC.i388 = bitcast %union.anon* %4693 to i64*
  %4694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4695 = getelementptr inbounds %struct.GPR, %struct.GPR* %4694, i32 0, i32 9
  %4696 = getelementptr inbounds %struct.Reg, %struct.Reg* %4695, i32 0, i32 0
  %RSI.i389 = bitcast %union.anon* %4696 to i64*
  %4697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4698 = getelementptr inbounds %struct.GPR, %struct.GPR* %4697, i32 0, i32 11
  %4699 = getelementptr inbounds %struct.Reg, %struct.Reg* %4698, i32 0, i32 0
  %RDI.i390 = bitcast %union.anon* %4699 to i64*
  %4700 = load i64, i64* %RSI.i389
  %4701 = mul i64 %4700, 2
  %4702 = add i64 %4701, 4953264
  %4703 = load i64, i64* %PC.i388
  %4704 = add i64 %4703, 8
  store i64 %4704, i64* %PC.i388
  %4705 = inttoptr i64 %4702 to i16*
  %4706 = load i16, i16* %4705
  %4707 = sext i16 %4706 to i64
  %4708 = and i64 %4707, 4294967295
  store i64 %4708, i64* %RDI.i390, align 8
  store %struct.Memory* %loadMem_47bbaf, %struct.Memory** %MEMORY
  %loadMem_47bbb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4710 = getelementptr inbounds %struct.GPR, %struct.GPR* %4709, i32 0, i32 33
  %4711 = getelementptr inbounds %struct.Reg, %struct.Reg* %4710, i32 0, i32 0
  %PC.i385 = bitcast %union.anon* %4711 to i64*
  %4712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4713 = getelementptr inbounds %struct.GPR, %struct.GPR* %4712, i32 0, i32 17
  %4714 = getelementptr inbounds %struct.Reg, %struct.Reg* %4713, i32 0, i32 0
  %R8D.i386 = bitcast %union.anon* %4714 to i32*
  %4715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4716 = getelementptr inbounds %struct.GPR, %struct.GPR* %4715, i32 0, i32 15
  %4717 = getelementptr inbounds %struct.Reg, %struct.Reg* %4716, i32 0, i32 0
  %RBP.i387 = bitcast %union.anon* %4717 to i64*
  %4718 = bitcast i32* %R8D.i386 to i64*
  %4719 = load i64, i64* %RBP.i387
  %4720 = sub i64 %4719, 20
  %4721 = load i64, i64* %PC.i385
  %4722 = add i64 %4721, 4
  store i64 %4722, i64* %PC.i385
  %4723 = inttoptr i64 %4720 to i32*
  %4724 = load i32, i32* %4723
  %4725 = zext i32 %4724 to i64
  store i64 %4725, i64* %4718, align 8
  store %struct.Memory* %loadMem_47bbb7, %struct.Memory** %MEMORY
  %loadMem_47bbbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %4726 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4727 = getelementptr inbounds %struct.GPR, %struct.GPR* %4726, i32 0, i32 33
  %4728 = getelementptr inbounds %struct.Reg, %struct.Reg* %4727, i32 0, i32 0
  %PC.i382 = bitcast %union.anon* %4728 to i64*
  %4729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4730 = getelementptr inbounds %struct.GPR, %struct.GPR* %4729, i32 0, i32 5
  %4731 = getelementptr inbounds %struct.Reg, %struct.Reg* %4730, i32 0, i32 0
  %RCX.i383 = bitcast %union.anon* %4731 to i64*
  %4732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4733 = getelementptr inbounds %struct.GPR, %struct.GPR* %4732, i32 0, i32 15
  %4734 = getelementptr inbounds %struct.Reg, %struct.Reg* %4733, i32 0, i32 0
  %RBP.i384 = bitcast %union.anon* %4734 to i64*
  %4735 = load i64, i64* %RBP.i384
  %4736 = sub i64 %4735, 56
  %4737 = load i64, i64* %RCX.i383
  %4738 = load i64, i64* %PC.i382
  %4739 = add i64 %4738, 4
  store i64 %4739, i64* %PC.i382
  %4740 = inttoptr i64 %4736 to i64*
  store i64 %4737, i64* %4740
  store %struct.Memory* %loadMem_47bbbb, %struct.Memory** %MEMORY
  %loadMem_47bbbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %4741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4742 = getelementptr inbounds %struct.GPR, %struct.GPR* %4741, i32 0, i32 33
  %4743 = getelementptr inbounds %struct.Reg, %struct.Reg* %4742, i32 0, i32 0
  %PC.i379 = bitcast %union.anon* %4743 to i64*
  %4744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4745 = getelementptr inbounds %struct.GPR, %struct.GPR* %4744, i32 0, i32 17
  %4746 = getelementptr inbounds %struct.Reg, %struct.Reg* %4745, i32 0, i32 0
  %R8D.i380 = bitcast %union.anon* %4746 to i32*
  %4747 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4748 = getelementptr inbounds %struct.GPR, %struct.GPR* %4747, i32 0, i32 5
  %4749 = getelementptr inbounds %struct.Reg, %struct.Reg* %4748, i32 0, i32 0
  %RCX.i381 = bitcast %union.anon* %4749 to i64*
  %4750 = load i32, i32* %R8D.i380
  %4751 = zext i32 %4750 to i64
  %4752 = load i64, i64* %PC.i379
  %4753 = add i64 %4752, 3
  store i64 %4753, i64* %PC.i379
  %4754 = and i64 %4751, 4294967295
  store i64 %4754, i64* %RCX.i381, align 8
  store %struct.Memory* %loadMem_47bbbf, %struct.Memory** %MEMORY
  %loadMem_47bbc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4756 = getelementptr inbounds %struct.GPR, %struct.GPR* %4755, i32 0, i32 33
  %4757 = getelementptr inbounds %struct.Reg, %struct.Reg* %4756, i32 0, i32 0
  %PC.i375 = bitcast %union.anon* %4757 to i64*
  %4758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4759 = getelementptr inbounds %struct.GPR, %struct.GPR* %4758, i32 0, i32 5
  %4760 = getelementptr inbounds %struct.Reg, %struct.Reg* %4759, i32 0, i32 0
  %4761 = bitcast %union.anon* %4760 to %struct.anon.2*
  %CL.i376 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %4761, i32 0, i32 0
  %4762 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4763 = getelementptr inbounds %struct.GPR, %struct.GPR* %4762, i32 0, i32 11
  %4764 = getelementptr inbounds %struct.Reg, %struct.Reg* %4763, i32 0, i32 0
  %RDI.i377 = bitcast %union.anon* %4764 to i64*
  %4765 = load i64, i64* %RDI.i377
  %4766 = load i8, i8* %CL.i376
  %4767 = zext i8 %4766 to i64
  %4768 = load i64, i64* %PC.i375
  %4769 = add i64 %4768, 2
  store i64 %4769, i64* %PC.i375
  %4770 = trunc i64 %4767 to i5
  switch i5 %4770, label %4777 [
    i5 0, label %routine_shll__cl___edi.exit378
    i5 1, label %4771
  ]

; <label>:4771:                                   ; preds = %block_47bb8d
  %4772 = trunc i64 %4765 to i32
  %4773 = shl i32 %4772, 1
  %4774 = icmp slt i32 %4772, 0
  %4775 = icmp slt i32 %4773, 0
  %4776 = xor i1 %4774, %4775
  br label %4786

; <label>:4777:                                   ; preds = %block_47bb8d
  %4778 = and i64 %4767, 31
  %4779 = add i64 %4778, 4294967295
  %4780 = and i64 %4765, 4294967295
  %4781 = and i64 %4779, 4294967295
  %4782 = shl i64 %4780, %4781
  %4783 = trunc i64 %4782 to i32
  %4784 = icmp slt i32 %4783, 0
  %4785 = shl i32 %4783, 1
  br label %4786

; <label>:4786:                                   ; preds = %4777, %4771
  %4787 = phi i1 [ %4774, %4771 ], [ %4784, %4777 ]
  %4788 = phi i1 [ %4776, %4771 ], [ false, %4777 ]
  %4789 = phi i32 [ %4773, %4771 ], [ %4785, %4777 ]
  %4790 = zext i32 %4789 to i64
  store i64 %4790, i64* %RDI.i377, align 8
  %4791 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %4792 = zext i1 %4787 to i8
  store i8 %4792, i8* %4791, align 1
  %4793 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %4794 = and i32 %4789, 254
  %4795 = call i32 @llvm.ctpop.i32(i32 %4794)
  %4796 = trunc i32 %4795 to i8
  %4797 = and i8 %4796, 1
  %4798 = xor i8 %4797, 1
  store i8 %4798, i8* %4793, align 1
  %4799 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4799, align 1
  %4800 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4801 = icmp eq i32 %4789, 0
  %4802 = zext i1 %4801 to i8
  store i8 %4802, i8* %4800, align 1
  %4803 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4804 = lshr i32 %4789, 31
  %4805 = trunc i32 %4804 to i8
  store i8 %4805, i8* %4803, align 1
  %4806 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4807 = zext i1 %4788 to i8
  store i8 %4807, i8* %4806, align 1
  br label %routine_shll__cl___edi.exit378

routine_shll__cl___edi.exit378:                   ; preds = %block_47bb8d, %4786
  store %struct.Memory* %loadMem_47bbc2, %struct.Memory** %MEMORY
  %loadMem_47bbc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4809 = getelementptr inbounds %struct.GPR, %struct.GPR* %4808, i32 0, i32 33
  %4810 = getelementptr inbounds %struct.Reg, %struct.Reg* %4809, i32 0, i32 0
  %PC.i372 = bitcast %union.anon* %4810 to i64*
  %4811 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4812 = getelementptr inbounds %struct.GPR, %struct.GPR* %4811, i32 0, i32 9
  %4813 = getelementptr inbounds %struct.Reg, %struct.Reg* %4812, i32 0, i32 0
  %RSI.i373 = bitcast %union.anon* %4813 to i64*
  %4814 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4815 = getelementptr inbounds %struct.GPR, %struct.GPR* %4814, i32 0, i32 15
  %4816 = getelementptr inbounds %struct.Reg, %struct.Reg* %4815, i32 0, i32 0
  %RBP.i374 = bitcast %union.anon* %4816 to i64*
  %4817 = load i64, i64* %RBP.i374
  %4818 = sub i64 %4817, 12
  %4819 = load i64, i64* %PC.i372
  %4820 = add i64 %4819, 4
  store i64 %4820, i64* %PC.i372
  %4821 = inttoptr i64 %4818 to i32*
  %4822 = load i32, i32* %4821
  %4823 = sext i32 %4822 to i64
  store i64 %4823, i64* %RSI.i373, align 8
  store %struct.Memory* %loadMem_47bbc4, %struct.Memory** %MEMORY
  %loadMem_47bbc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4825 = getelementptr inbounds %struct.GPR, %struct.GPR* %4824, i32 0, i32 33
  %4826 = getelementptr inbounds %struct.Reg, %struct.Reg* %4825, i32 0, i32 0
  %PC.i370 = bitcast %union.anon* %4826 to i64*
  %4827 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4828 = getelementptr inbounds %struct.GPR, %struct.GPR* %4827, i32 0, i32 9
  %4829 = getelementptr inbounds %struct.Reg, %struct.Reg* %4828, i32 0, i32 0
  %RSI.i371 = bitcast %union.anon* %4829 to i64*
  %4830 = load i64, i64* %RSI.i371
  %4831 = load i64, i64* %PC.i370
  %4832 = add i64 %4831, 4
  store i64 %4832, i64* %PC.i370
  %4833 = shl i64 %4830, 5
  %4834 = icmp slt i64 %4833, 0
  %4835 = shl i64 %4833, 1
  store i64 %4835, i64* %RSI.i371, align 8
  %4836 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %4837 = zext i1 %4834 to i8
  store i8 %4837, i8* %4836, align 1
  %4838 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %4839 = trunc i64 %4835 to i32
  %4840 = and i32 %4839, 254
  %4841 = call i32 @llvm.ctpop.i32(i32 %4840)
  %4842 = trunc i32 %4841 to i8
  %4843 = and i8 %4842, 1
  %4844 = xor i8 %4843, 1
  store i8 %4844, i8* %4838, align 1
  %4845 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4845, align 1
  %4846 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4847 = icmp eq i64 %4835, 0
  %4848 = zext i1 %4847 to i8
  store i8 %4848, i8* %4846, align 1
  %4849 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4850 = lshr i64 %4835, 63
  %4851 = trunc i64 %4850 to i8
  store i8 %4851, i8* %4849, align 1
  %4852 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4852, align 1
  store %struct.Memory* %loadMem_47bbc8, %struct.Memory** %MEMORY
  %loadMem_47bbcc = load %struct.Memory*, %struct.Memory** %MEMORY
  %4853 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4854 = getelementptr inbounds %struct.GPR, %struct.GPR* %4853, i32 0, i32 33
  %4855 = getelementptr inbounds %struct.Reg, %struct.Reg* %4854, i32 0, i32 0
  %PC.i367 = bitcast %union.anon* %4855 to i64*
  %4856 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4857 = getelementptr inbounds %struct.GPR, %struct.GPR* %4856, i32 0, i32 7
  %4858 = getelementptr inbounds %struct.Reg, %struct.Reg* %4857, i32 0, i32 0
  %RDX.i368 = bitcast %union.anon* %4858 to i64*
  %4859 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4860 = getelementptr inbounds %struct.GPR, %struct.GPR* %4859, i32 0, i32 9
  %4861 = getelementptr inbounds %struct.Reg, %struct.Reg* %4860, i32 0, i32 0
  %RSI.i369 = bitcast %union.anon* %4861 to i64*
  %4862 = load i64, i64* %RDX.i368
  %4863 = load i64, i64* %RSI.i369
  %4864 = load i64, i64* %PC.i367
  %4865 = add i64 %4864, 3
  store i64 %4865, i64* %PC.i367
  %4866 = add i64 %4863, %4862
  store i64 %4866, i64* %RDX.i368, align 8
  %4867 = icmp ult i64 %4866, %4862
  %4868 = icmp ult i64 %4866, %4863
  %4869 = or i1 %4867, %4868
  %4870 = zext i1 %4869 to i8
  %4871 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4870, i8* %4871, align 1
  %4872 = trunc i64 %4866 to i32
  %4873 = and i32 %4872, 255
  %4874 = call i32 @llvm.ctpop.i32(i32 %4873)
  %4875 = trunc i32 %4874 to i8
  %4876 = and i8 %4875, 1
  %4877 = xor i8 %4876, 1
  %4878 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4877, i8* %4878, align 1
  %4879 = xor i64 %4863, %4862
  %4880 = xor i64 %4879, %4866
  %4881 = lshr i64 %4880, 4
  %4882 = trunc i64 %4881 to i8
  %4883 = and i8 %4882, 1
  %4884 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4883, i8* %4884, align 1
  %4885 = icmp eq i64 %4866, 0
  %4886 = zext i1 %4885 to i8
  %4887 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4886, i8* %4887, align 1
  %4888 = lshr i64 %4866, 63
  %4889 = trunc i64 %4888 to i8
  %4890 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4889, i8* %4890, align 1
  %4891 = lshr i64 %4862, 63
  %4892 = lshr i64 %4863, 63
  %4893 = xor i64 %4888, %4891
  %4894 = xor i64 %4888, %4892
  %4895 = add i64 %4893, %4894
  %4896 = icmp eq i64 %4895, 2
  %4897 = zext i1 %4896 to i8
  %4898 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4897, i8* %4898, align 1
  store %struct.Memory* %loadMem_47bbcc, %struct.Memory** %MEMORY
  %loadMem_47bbcf = load %struct.Memory*, %struct.Memory** %MEMORY
  %4899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4900 = getelementptr inbounds %struct.GPR, %struct.GPR* %4899, i32 0, i32 33
  %4901 = getelementptr inbounds %struct.Reg, %struct.Reg* %4900, i32 0, i32 0
  %PC.i364 = bitcast %union.anon* %4901 to i64*
  %4902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4903 = getelementptr inbounds %struct.GPR, %struct.GPR* %4902, i32 0, i32 9
  %4904 = getelementptr inbounds %struct.Reg, %struct.Reg* %4903, i32 0, i32 0
  %RSI.i365 = bitcast %union.anon* %4904 to i64*
  %4905 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4906 = getelementptr inbounds %struct.GPR, %struct.GPR* %4905, i32 0, i32 15
  %4907 = getelementptr inbounds %struct.Reg, %struct.Reg* %4906, i32 0, i32 0
  %RBP.i366 = bitcast %union.anon* %4907 to i64*
  %4908 = load i64, i64* %RBP.i366
  %4909 = sub i64 %4908, 8
  %4910 = load i64, i64* %PC.i364
  %4911 = add i64 %4910, 4
  store i64 %4911, i64* %PC.i364
  %4912 = inttoptr i64 %4909 to i32*
  %4913 = load i32, i32* %4912
  %4914 = sext i32 %4913 to i64
  store i64 %4914, i64* %RSI.i365, align 8
  store %struct.Memory* %loadMem_47bbcf, %struct.Memory** %MEMORY
  %loadMem_47bbd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4915 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4916 = getelementptr inbounds %struct.GPR, %struct.GPR* %4915, i32 0, i32 33
  %4917 = getelementptr inbounds %struct.Reg, %struct.Reg* %4916, i32 0, i32 0
  %PC.i362 = bitcast %union.anon* %4917 to i64*
  %4918 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4919 = getelementptr inbounds %struct.GPR, %struct.GPR* %4918, i32 0, i32 9
  %4920 = getelementptr inbounds %struct.Reg, %struct.Reg* %4919, i32 0, i32 0
  %RSI.i363 = bitcast %union.anon* %4920 to i64*
  %4921 = load i64, i64* %RSI.i363
  %4922 = load i64, i64* %PC.i362
  %4923 = add i64 %4922, 4
  store i64 %4923, i64* %PC.i362
  %4924 = shl i64 %4921, 3
  %4925 = icmp slt i64 %4924, 0
  %4926 = shl i64 %4924, 1
  store i64 %4926, i64* %RSI.i363, align 8
  %4927 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %4928 = zext i1 %4925 to i8
  store i8 %4928, i8* %4927, align 1
  %4929 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %4930 = trunc i64 %4926 to i32
  %4931 = and i32 %4930, 254
  %4932 = call i32 @llvm.ctpop.i32(i32 %4931)
  %4933 = trunc i32 %4932 to i8
  %4934 = and i8 %4933, 1
  %4935 = xor i8 %4934, 1
  store i8 %4935, i8* %4929, align 1
  %4936 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4936, align 1
  %4937 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4938 = icmp eq i64 %4926, 0
  %4939 = zext i1 %4938 to i8
  store i8 %4939, i8* %4937, align 1
  %4940 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4941 = lshr i64 %4926, 63
  %4942 = trunc i64 %4941 to i8
  store i8 %4942, i8* %4940, align 1
  %4943 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4943, align 1
  store %struct.Memory* %loadMem_47bbd3, %struct.Memory** %MEMORY
  %loadMem_47bbd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4944 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4945 = getelementptr inbounds %struct.GPR, %struct.GPR* %4944, i32 0, i32 33
  %4946 = getelementptr inbounds %struct.Reg, %struct.Reg* %4945, i32 0, i32 0
  %PC.i359 = bitcast %union.anon* %4946 to i64*
  %4947 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4948 = getelementptr inbounds %struct.GPR, %struct.GPR* %4947, i32 0, i32 7
  %4949 = getelementptr inbounds %struct.Reg, %struct.Reg* %4948, i32 0, i32 0
  %RDX.i360 = bitcast %union.anon* %4949 to i64*
  %4950 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4951 = getelementptr inbounds %struct.GPR, %struct.GPR* %4950, i32 0, i32 9
  %4952 = getelementptr inbounds %struct.Reg, %struct.Reg* %4951, i32 0, i32 0
  %RSI.i361 = bitcast %union.anon* %4952 to i64*
  %4953 = load i64, i64* %RDX.i360
  %4954 = load i64, i64* %RSI.i361
  %4955 = load i64, i64* %PC.i359
  %4956 = add i64 %4955, 3
  store i64 %4956, i64* %PC.i359
  %4957 = add i64 %4954, %4953
  store i64 %4957, i64* %RDX.i360, align 8
  %4958 = icmp ult i64 %4957, %4953
  %4959 = icmp ult i64 %4957, %4954
  %4960 = or i1 %4958, %4959
  %4961 = zext i1 %4960 to i8
  %4962 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4961, i8* %4962, align 1
  %4963 = trunc i64 %4957 to i32
  %4964 = and i32 %4963, 255
  %4965 = call i32 @llvm.ctpop.i32(i32 %4964)
  %4966 = trunc i32 %4965 to i8
  %4967 = and i8 %4966, 1
  %4968 = xor i8 %4967, 1
  %4969 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4968, i8* %4969, align 1
  %4970 = xor i64 %4954, %4953
  %4971 = xor i64 %4970, %4957
  %4972 = lshr i64 %4971, 4
  %4973 = trunc i64 %4972 to i8
  %4974 = and i8 %4973, 1
  %4975 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4974, i8* %4975, align 1
  %4976 = icmp eq i64 %4957, 0
  %4977 = zext i1 %4976 to i8
  %4978 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4977, i8* %4978, align 1
  %4979 = lshr i64 %4957, 63
  %4980 = trunc i64 %4979 to i8
  %4981 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4980, i8* %4981, align 1
  %4982 = lshr i64 %4953, 63
  %4983 = lshr i64 %4954, 63
  %4984 = xor i64 %4979, %4982
  %4985 = xor i64 %4979, %4983
  %4986 = add i64 %4984, %4985
  %4987 = icmp eq i64 %4986, 2
  %4988 = zext i1 %4987 to i8
  %4989 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4988, i8* %4989, align 1
  store %struct.Memory* %loadMem_47bbd7, %struct.Memory** %MEMORY
  %loadMem_47bbda = load %struct.Memory*, %struct.Memory** %MEMORY
  %4990 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4991 = getelementptr inbounds %struct.GPR, %struct.GPR* %4990, i32 0, i32 33
  %4992 = getelementptr inbounds %struct.Reg, %struct.Reg* %4991, i32 0, i32 0
  %PC.i356 = bitcast %union.anon* %4992 to i64*
  %4993 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4994 = getelementptr inbounds %struct.GPR, %struct.GPR* %4993, i32 0, i32 9
  %4995 = getelementptr inbounds %struct.Reg, %struct.Reg* %4994, i32 0, i32 0
  %RSI.i357 = bitcast %union.anon* %4995 to i64*
  %4996 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4997 = getelementptr inbounds %struct.GPR, %struct.GPR* %4996, i32 0, i32 15
  %4998 = getelementptr inbounds %struct.Reg, %struct.Reg* %4997, i32 0, i32 0
  %RBP.i358 = bitcast %union.anon* %4998 to i64*
  %4999 = load i64, i64* %RBP.i358
  %5000 = sub i64 %4999, 4
  %5001 = load i64, i64* %PC.i356
  %5002 = add i64 %5001, 4
  store i64 %5002, i64* %PC.i356
  %5003 = inttoptr i64 %5000 to i32*
  %5004 = load i32, i32* %5003
  %5005 = sext i32 %5004 to i64
  store i64 %5005, i64* %RSI.i357, align 8
  store %struct.Memory* %loadMem_47bbda, %struct.Memory** %MEMORY
  %loadMem_47bbde = load %struct.Memory*, %struct.Memory** %MEMORY
  %5006 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5007 = getelementptr inbounds %struct.GPR, %struct.GPR* %5006, i32 0, i32 33
  %5008 = getelementptr inbounds %struct.Reg, %struct.Reg* %5007, i32 0, i32 0
  %PC.i352 = bitcast %union.anon* %5008 to i64*
  %5009 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5010 = getelementptr inbounds %struct.GPR, %struct.GPR* %5009, i32 0, i32 11
  %5011 = getelementptr inbounds %struct.Reg, %struct.Reg* %5010, i32 0, i32 0
  %EDI.i353 = bitcast %union.anon* %5011 to i32*
  %5012 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5013 = getelementptr inbounds %struct.GPR, %struct.GPR* %5012, i32 0, i32 7
  %5014 = getelementptr inbounds %struct.Reg, %struct.Reg* %5013, i32 0, i32 0
  %RDX.i354 = bitcast %union.anon* %5014 to i64*
  %5015 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5016 = getelementptr inbounds %struct.GPR, %struct.GPR* %5015, i32 0, i32 9
  %5017 = getelementptr inbounds %struct.Reg, %struct.Reg* %5016, i32 0, i32 0
  %RSI.i355 = bitcast %union.anon* %5017 to i64*
  %5018 = load i64, i64* %RDX.i354
  %5019 = load i64, i64* %RSI.i355
  %5020 = mul i64 %5019, 4
  %5021 = add i64 %5020, %5018
  %5022 = load i32, i32* %EDI.i353
  %5023 = zext i32 %5022 to i64
  %5024 = load i64, i64* %PC.i352
  %5025 = add i64 %5024, 3
  store i64 %5025, i64* %PC.i352
  %5026 = inttoptr i64 %5021 to i32*
  store i32 %5022, i32* %5026
  store %struct.Memory* %loadMem_47bbde, %struct.Memory** %MEMORY
  %loadMem_47bbe1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5027 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5028 = getelementptr inbounds %struct.GPR, %struct.GPR* %5027, i32 0, i32 33
  %5029 = getelementptr inbounds %struct.Reg, %struct.Reg* %5028, i32 0, i32 0
  %PC.i349 = bitcast %union.anon* %5029 to i64*
  %5030 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5031 = getelementptr inbounds %struct.GPR, %struct.GPR* %5030, i32 0, i32 7
  %5032 = getelementptr inbounds %struct.Reg, %struct.Reg* %5031, i32 0, i32 0
  %RDX.i350 = bitcast %union.anon* %5032 to i64*
  %5033 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5034 = getelementptr inbounds %struct.GPR, %struct.GPR* %5033, i32 0, i32 15
  %5035 = getelementptr inbounds %struct.Reg, %struct.Reg* %5034, i32 0, i32 0
  %RBP.i351 = bitcast %union.anon* %5035 to i64*
  %5036 = load i64, i64* %RBP.i351
  %5037 = sub i64 %5036, 16
  %5038 = load i64, i64* %PC.i349
  %5039 = add i64 %5038, 4
  store i64 %5039, i64* %PC.i349
  %5040 = inttoptr i64 %5037 to i32*
  %5041 = load i32, i32* %5040
  %5042 = sext i32 %5041 to i64
  store i64 %5042, i64* %RDX.i350, align 8
  store %struct.Memory* %loadMem_47bbe1, %struct.Memory** %MEMORY
  %loadMem_47bbe5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5043 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5044 = getelementptr inbounds %struct.GPR, %struct.GPR* %5043, i32 0, i32 33
  %5045 = getelementptr inbounds %struct.Reg, %struct.Reg* %5044, i32 0, i32 0
  %PC.i346 = bitcast %union.anon* %5045 to i64*
  %5046 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5047 = getelementptr inbounds %struct.GPR, %struct.GPR* %5046, i32 0, i32 7
  %5048 = getelementptr inbounds %struct.Reg, %struct.Reg* %5047, i32 0, i32 0
  %RDX.i347 = bitcast %union.anon* %5048 to i64*
  %5049 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5050 = getelementptr inbounds %struct.GPR, %struct.GPR* %5049, i32 0, i32 11
  %5051 = getelementptr inbounds %struct.Reg, %struct.Reg* %5050, i32 0, i32 0
  %RDI.i348 = bitcast %union.anon* %5051 to i64*
  %5052 = load i64, i64* %RDX.i347
  %5053 = mul i64 %5052, 2
  %5054 = add i64 %5053, 4953264
  %5055 = load i64, i64* %PC.i346
  %5056 = add i64 %5055, 8
  store i64 %5056, i64* %PC.i346
  %5057 = inttoptr i64 %5054 to i16*
  %5058 = load i16, i16* %5057
  %5059 = sext i16 %5058 to i64
  %5060 = and i64 %5059, 4294967295
  store i64 %5060, i64* %RDI.i348, align 8
  store %struct.Memory* %loadMem_47bbe5, %struct.Memory** %MEMORY
  %loadMem_47bbed = load %struct.Memory*, %struct.Memory** %MEMORY
  %5061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5062 = getelementptr inbounds %struct.GPR, %struct.GPR* %5061, i32 0, i32 33
  %5063 = getelementptr inbounds %struct.Reg, %struct.Reg* %5062, i32 0, i32 0
  %PC.i343 = bitcast %union.anon* %5063 to i64*
  %5064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5065 = getelementptr inbounds %struct.GPR, %struct.GPR* %5064, i32 0, i32 5
  %5066 = getelementptr inbounds %struct.Reg, %struct.Reg* %5065, i32 0, i32 0
  %RCX.i344 = bitcast %union.anon* %5066 to i64*
  %5067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5068 = getelementptr inbounds %struct.GPR, %struct.GPR* %5067, i32 0, i32 15
  %5069 = getelementptr inbounds %struct.Reg, %struct.Reg* %5068, i32 0, i32 0
  %RBP.i345 = bitcast %union.anon* %5069 to i64*
  %5070 = load i64, i64* %RBP.i345
  %5071 = sub i64 %5070, 20
  %5072 = load i64, i64* %PC.i343
  %5073 = add i64 %5072, 3
  store i64 %5073, i64* %PC.i343
  %5074 = inttoptr i64 %5071 to i32*
  %5075 = load i32, i32* %5074
  %5076 = zext i32 %5075 to i64
  store i64 %5076, i64* %RCX.i344, align 8
  store %struct.Memory* %loadMem_47bbed, %struct.Memory** %MEMORY
  %loadMem_47bbf0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5078 = getelementptr inbounds %struct.GPR, %struct.GPR* %5077, i32 0, i32 33
  %5079 = getelementptr inbounds %struct.Reg, %struct.Reg* %5078, i32 0, i32 0
  %PC.i339 = bitcast %union.anon* %5079 to i64*
  %5080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5081 = getelementptr inbounds %struct.GPR, %struct.GPR* %5080, i32 0, i32 5
  %5082 = getelementptr inbounds %struct.Reg, %struct.Reg* %5081, i32 0, i32 0
  %5083 = bitcast %union.anon* %5082 to %struct.anon.2*
  %CL.i340 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %5083, i32 0, i32 0
  %5084 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5085 = getelementptr inbounds %struct.GPR, %struct.GPR* %5084, i32 0, i32 11
  %5086 = getelementptr inbounds %struct.Reg, %struct.Reg* %5085, i32 0, i32 0
  %RDI.i341 = bitcast %union.anon* %5086 to i64*
  %5087 = load i64, i64* %RDI.i341
  %5088 = load i8, i8* %CL.i340
  %5089 = zext i8 %5088 to i64
  %5090 = load i64, i64* %PC.i339
  %5091 = add i64 %5090, 2
  store i64 %5091, i64* %PC.i339
  %5092 = trunc i64 %5089 to i5
  switch i5 %5092, label %5099 [
    i5 0, label %routine_shll__cl___edi.exit342
    i5 1, label %5093
  ]

; <label>:5093:                                   ; preds = %routine_shll__cl___edi.exit378
  %5094 = trunc i64 %5087 to i32
  %5095 = shl i32 %5094, 1
  %5096 = icmp slt i32 %5094, 0
  %5097 = icmp slt i32 %5095, 0
  %5098 = xor i1 %5096, %5097
  br label %5108

; <label>:5099:                                   ; preds = %routine_shll__cl___edi.exit378
  %5100 = and i64 %5089, 31
  %5101 = add i64 %5100, 4294967295
  %5102 = and i64 %5087, 4294967295
  %5103 = and i64 %5101, 4294967295
  %5104 = shl i64 %5102, %5103
  %5105 = trunc i64 %5104 to i32
  %5106 = icmp slt i32 %5105, 0
  %5107 = shl i32 %5105, 1
  br label %5108

; <label>:5108:                                   ; preds = %5099, %5093
  %5109 = phi i1 [ %5096, %5093 ], [ %5106, %5099 ]
  %5110 = phi i1 [ %5098, %5093 ], [ false, %5099 ]
  %5111 = phi i32 [ %5095, %5093 ], [ %5107, %5099 ]
  %5112 = zext i32 %5111 to i64
  store i64 %5112, i64* %RDI.i341, align 8
  %5113 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5114 = zext i1 %5109 to i8
  store i8 %5114, i8* %5113, align 1
  %5115 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %5116 = and i32 %5111, 254
  %5117 = call i32 @llvm.ctpop.i32(i32 %5116)
  %5118 = trunc i32 %5117 to i8
  %5119 = and i8 %5118, 1
  %5120 = xor i8 %5119, 1
  store i8 %5120, i8* %5115, align 1
  %5121 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5121, align 1
  %5122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5123 = icmp eq i32 %5111, 0
  %5124 = zext i1 %5123 to i8
  store i8 %5124, i8* %5122, align 1
  %5125 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5126 = lshr i32 %5111, 31
  %5127 = trunc i32 %5126 to i8
  store i8 %5127, i8* %5125, align 1
  %5128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %5129 = zext i1 %5110 to i8
  store i8 %5129, i8* %5128, align 1
  br label %routine_shll__cl___edi.exit342

routine_shll__cl___edi.exit342:                   ; preds = %routine_shll__cl___edi.exit378, %5108
  store %struct.Memory* %loadMem_47bbf0, %struct.Memory** %MEMORY
  %loadMem_47bbf2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5131 = getelementptr inbounds %struct.GPR, %struct.GPR* %5130, i32 0, i32 33
  %5132 = getelementptr inbounds %struct.Reg, %struct.Reg* %5131, i32 0, i32 0
  %PC.i336 = bitcast %union.anon* %5132 to i64*
  %5133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5134 = getelementptr inbounds %struct.GPR, %struct.GPR* %5133, i32 0, i32 7
  %5135 = getelementptr inbounds %struct.Reg, %struct.Reg* %5134, i32 0, i32 0
  %RDX.i337 = bitcast %union.anon* %5135 to i64*
  %5136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5137 = getelementptr inbounds %struct.GPR, %struct.GPR* %5136, i32 0, i32 15
  %5138 = getelementptr inbounds %struct.Reg, %struct.Reg* %5137, i32 0, i32 0
  %RBP.i338 = bitcast %union.anon* %5138 to i64*
  %5139 = load i64, i64* %RBP.i338
  %5140 = sub i64 %5139, 12
  %5141 = load i64, i64* %PC.i336
  %5142 = add i64 %5141, 4
  store i64 %5142, i64* %PC.i336
  %5143 = inttoptr i64 %5140 to i32*
  %5144 = load i32, i32* %5143
  %5145 = sext i32 %5144 to i64
  store i64 %5145, i64* %RDX.i337, align 8
  store %struct.Memory* %loadMem_47bbf2, %struct.Memory** %MEMORY
  %loadMem_47bbf6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5147 = getelementptr inbounds %struct.GPR, %struct.GPR* %5146, i32 0, i32 33
  %5148 = getelementptr inbounds %struct.Reg, %struct.Reg* %5147, i32 0, i32 0
  %PC.i334 = bitcast %union.anon* %5148 to i64*
  %5149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5150 = getelementptr inbounds %struct.GPR, %struct.GPR* %5149, i32 0, i32 7
  %5151 = getelementptr inbounds %struct.Reg, %struct.Reg* %5150, i32 0, i32 0
  %RDX.i335 = bitcast %union.anon* %5151 to i64*
  %5152 = load i64, i64* %RDX.i335
  %5153 = load i64, i64* %PC.i334
  %5154 = add i64 %5153, 4
  store i64 %5154, i64* %PC.i334
  %5155 = shl i64 %5152, 5
  %5156 = icmp slt i64 %5155, 0
  %5157 = shl i64 %5155, 1
  store i64 %5157, i64* %RDX.i335, align 8
  %5158 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5159 = zext i1 %5156 to i8
  store i8 %5159, i8* %5158, align 1
  %5160 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %5161 = trunc i64 %5157 to i32
  %5162 = and i32 %5161, 254
  %5163 = call i32 @llvm.ctpop.i32(i32 %5162)
  %5164 = trunc i32 %5163 to i8
  %5165 = and i8 %5164, 1
  %5166 = xor i8 %5165, 1
  store i8 %5166, i8* %5160, align 1
  %5167 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5167, align 1
  %5168 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5169 = icmp eq i64 %5157, 0
  %5170 = zext i1 %5169 to i8
  store i8 %5170, i8* %5168, align 1
  %5171 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5172 = lshr i64 %5157, 63
  %5173 = trunc i64 %5172 to i8
  store i8 %5173, i8* %5171, align 1
  %5174 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5174, align 1
  store %struct.Memory* %loadMem_47bbf6, %struct.Memory** %MEMORY
  %loadMem_47bbfa = load %struct.Memory*, %struct.Memory** %MEMORY
  %5175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5176 = getelementptr inbounds %struct.GPR, %struct.GPR* %5175, i32 0, i32 33
  %5177 = getelementptr inbounds %struct.Reg, %struct.Reg* %5176, i32 0, i32 0
  %PC.i331 = bitcast %union.anon* %5177 to i64*
  %5178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5179 = getelementptr inbounds %struct.GPR, %struct.GPR* %5178, i32 0, i32 1
  %5180 = getelementptr inbounds %struct.Reg, %struct.Reg* %5179, i32 0, i32 0
  %RAX.i332 = bitcast %union.anon* %5180 to i64*
  %5181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5182 = getelementptr inbounds %struct.GPR, %struct.GPR* %5181, i32 0, i32 7
  %5183 = getelementptr inbounds %struct.Reg, %struct.Reg* %5182, i32 0, i32 0
  %RDX.i333 = bitcast %union.anon* %5183 to i64*
  %5184 = load i64, i64* %RAX.i332
  %5185 = load i64, i64* %RDX.i333
  %5186 = load i64, i64* %PC.i331
  %5187 = add i64 %5186, 3
  store i64 %5187, i64* %PC.i331
  %5188 = add i64 %5185, %5184
  store i64 %5188, i64* %RAX.i332, align 8
  %5189 = icmp ult i64 %5188, %5184
  %5190 = icmp ult i64 %5188, %5185
  %5191 = or i1 %5189, %5190
  %5192 = zext i1 %5191 to i8
  %5193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5192, i8* %5193, align 1
  %5194 = trunc i64 %5188 to i32
  %5195 = and i32 %5194, 255
  %5196 = call i32 @llvm.ctpop.i32(i32 %5195)
  %5197 = trunc i32 %5196 to i8
  %5198 = and i8 %5197, 1
  %5199 = xor i8 %5198, 1
  %5200 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5199, i8* %5200, align 1
  %5201 = xor i64 %5185, %5184
  %5202 = xor i64 %5201, %5188
  %5203 = lshr i64 %5202, 4
  %5204 = trunc i64 %5203 to i8
  %5205 = and i8 %5204, 1
  %5206 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5205, i8* %5206, align 1
  %5207 = icmp eq i64 %5188, 0
  %5208 = zext i1 %5207 to i8
  %5209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5208, i8* %5209, align 1
  %5210 = lshr i64 %5188, 63
  %5211 = trunc i64 %5210 to i8
  %5212 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5211, i8* %5212, align 1
  %5213 = lshr i64 %5184, 63
  %5214 = lshr i64 %5185, 63
  %5215 = xor i64 %5210, %5213
  %5216 = xor i64 %5210, %5214
  %5217 = add i64 %5215, %5216
  %5218 = icmp eq i64 %5217, 2
  %5219 = zext i1 %5218 to i8
  %5220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5219, i8* %5220, align 1
  store %struct.Memory* %loadMem_47bbfa, %struct.Memory** %MEMORY
  %loadMem_47bbfd = load %struct.Memory*, %struct.Memory** %MEMORY
  %5221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5222 = getelementptr inbounds %struct.GPR, %struct.GPR* %5221, i32 0, i32 33
  %5223 = getelementptr inbounds %struct.Reg, %struct.Reg* %5222, i32 0, i32 0
  %PC.i328 = bitcast %union.anon* %5223 to i64*
  %5224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5225 = getelementptr inbounds %struct.GPR, %struct.GPR* %5224, i32 0, i32 7
  %5226 = getelementptr inbounds %struct.Reg, %struct.Reg* %5225, i32 0, i32 0
  %RDX.i329 = bitcast %union.anon* %5226 to i64*
  %5227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5228 = getelementptr inbounds %struct.GPR, %struct.GPR* %5227, i32 0, i32 15
  %5229 = getelementptr inbounds %struct.Reg, %struct.Reg* %5228, i32 0, i32 0
  %RBP.i330 = bitcast %union.anon* %5229 to i64*
  %5230 = load i64, i64* %RBP.i330
  %5231 = sub i64 %5230, 8
  %5232 = load i64, i64* %PC.i328
  %5233 = add i64 %5232, 4
  store i64 %5233, i64* %PC.i328
  %5234 = inttoptr i64 %5231 to i32*
  %5235 = load i32, i32* %5234
  %5236 = sext i32 %5235 to i64
  store i64 %5236, i64* %RDX.i329, align 8
  store %struct.Memory* %loadMem_47bbfd, %struct.Memory** %MEMORY
  %loadMem_47bc01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5238 = getelementptr inbounds %struct.GPR, %struct.GPR* %5237, i32 0, i32 33
  %5239 = getelementptr inbounds %struct.Reg, %struct.Reg* %5238, i32 0, i32 0
  %PC.i326 = bitcast %union.anon* %5239 to i64*
  %5240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5241 = getelementptr inbounds %struct.GPR, %struct.GPR* %5240, i32 0, i32 7
  %5242 = getelementptr inbounds %struct.Reg, %struct.Reg* %5241, i32 0, i32 0
  %RDX.i327 = bitcast %union.anon* %5242 to i64*
  %5243 = load i64, i64* %RDX.i327
  %5244 = load i64, i64* %PC.i326
  %5245 = add i64 %5244, 4
  store i64 %5245, i64* %PC.i326
  %5246 = shl i64 %5243, 3
  %5247 = icmp slt i64 %5246, 0
  %5248 = shl i64 %5246, 1
  store i64 %5248, i64* %RDX.i327, align 8
  %5249 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5250 = zext i1 %5247 to i8
  store i8 %5250, i8* %5249, align 1
  %5251 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %5252 = trunc i64 %5248 to i32
  %5253 = and i32 %5252, 254
  %5254 = call i32 @llvm.ctpop.i32(i32 %5253)
  %5255 = trunc i32 %5254 to i8
  %5256 = and i8 %5255, 1
  %5257 = xor i8 %5256, 1
  store i8 %5257, i8* %5251, align 1
  %5258 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5258, align 1
  %5259 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5260 = icmp eq i64 %5248, 0
  %5261 = zext i1 %5260 to i8
  store i8 %5261, i8* %5259, align 1
  %5262 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5263 = lshr i64 %5248, 63
  %5264 = trunc i64 %5263 to i8
  store i8 %5264, i8* %5262, align 1
  %5265 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5265, align 1
  store %struct.Memory* %loadMem_47bc01, %struct.Memory** %MEMORY
  %loadMem_47bc05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5267 = getelementptr inbounds %struct.GPR, %struct.GPR* %5266, i32 0, i32 33
  %5268 = getelementptr inbounds %struct.Reg, %struct.Reg* %5267, i32 0, i32 0
  %PC.i323 = bitcast %union.anon* %5268 to i64*
  %5269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5270 = getelementptr inbounds %struct.GPR, %struct.GPR* %5269, i32 0, i32 1
  %5271 = getelementptr inbounds %struct.Reg, %struct.Reg* %5270, i32 0, i32 0
  %RAX.i324 = bitcast %union.anon* %5271 to i64*
  %5272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5273 = getelementptr inbounds %struct.GPR, %struct.GPR* %5272, i32 0, i32 7
  %5274 = getelementptr inbounds %struct.Reg, %struct.Reg* %5273, i32 0, i32 0
  %RDX.i325 = bitcast %union.anon* %5274 to i64*
  %5275 = load i64, i64* %RAX.i324
  %5276 = load i64, i64* %RDX.i325
  %5277 = load i64, i64* %PC.i323
  %5278 = add i64 %5277, 3
  store i64 %5278, i64* %PC.i323
  %5279 = add i64 %5276, %5275
  store i64 %5279, i64* %RAX.i324, align 8
  %5280 = icmp ult i64 %5279, %5275
  %5281 = icmp ult i64 %5279, %5276
  %5282 = or i1 %5280, %5281
  %5283 = zext i1 %5282 to i8
  %5284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5283, i8* %5284, align 1
  %5285 = trunc i64 %5279 to i32
  %5286 = and i32 %5285, 255
  %5287 = call i32 @llvm.ctpop.i32(i32 %5286)
  %5288 = trunc i32 %5287 to i8
  %5289 = and i8 %5288, 1
  %5290 = xor i8 %5289, 1
  %5291 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5290, i8* %5291, align 1
  %5292 = xor i64 %5276, %5275
  %5293 = xor i64 %5292, %5279
  %5294 = lshr i64 %5293, 4
  %5295 = trunc i64 %5294 to i8
  %5296 = and i8 %5295, 1
  %5297 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5296, i8* %5297, align 1
  %5298 = icmp eq i64 %5279, 0
  %5299 = zext i1 %5298 to i8
  %5300 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5299, i8* %5300, align 1
  %5301 = lshr i64 %5279, 63
  %5302 = trunc i64 %5301 to i8
  %5303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5302, i8* %5303, align 1
  %5304 = lshr i64 %5275, 63
  %5305 = lshr i64 %5276, 63
  %5306 = xor i64 %5301, %5304
  %5307 = xor i64 %5301, %5305
  %5308 = add i64 %5306, %5307
  %5309 = icmp eq i64 %5308, 2
  %5310 = zext i1 %5309 to i8
  %5311 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5310, i8* %5311, align 1
  store %struct.Memory* %loadMem_47bc05, %struct.Memory** %MEMORY
  %loadMem_47bc08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5313 = getelementptr inbounds %struct.GPR, %struct.GPR* %5312, i32 0, i32 33
  %5314 = getelementptr inbounds %struct.Reg, %struct.Reg* %5313, i32 0, i32 0
  %PC.i320 = bitcast %union.anon* %5314 to i64*
  %5315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5316 = getelementptr inbounds %struct.GPR, %struct.GPR* %5315, i32 0, i32 7
  %5317 = getelementptr inbounds %struct.Reg, %struct.Reg* %5316, i32 0, i32 0
  %RDX.i321 = bitcast %union.anon* %5317 to i64*
  %5318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5319 = getelementptr inbounds %struct.GPR, %struct.GPR* %5318, i32 0, i32 15
  %5320 = getelementptr inbounds %struct.Reg, %struct.Reg* %5319, i32 0, i32 0
  %RBP.i322 = bitcast %union.anon* %5320 to i64*
  %5321 = load i64, i64* %RBP.i322
  %5322 = sub i64 %5321, 4
  %5323 = load i64, i64* %PC.i320
  %5324 = add i64 %5323, 4
  store i64 %5324, i64* %PC.i320
  %5325 = inttoptr i64 %5322 to i32*
  %5326 = load i32, i32* %5325
  %5327 = sext i32 %5326 to i64
  store i64 %5327, i64* %RDX.i321, align 8
  store %struct.Memory* %loadMem_47bc08, %struct.Memory** %MEMORY
  %loadMem_47bc0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5329 = getelementptr inbounds %struct.GPR, %struct.GPR* %5328, i32 0, i32 33
  %5330 = getelementptr inbounds %struct.Reg, %struct.Reg* %5329, i32 0, i32 0
  %PC.i316 = bitcast %union.anon* %5330 to i64*
  %5331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5332 = getelementptr inbounds %struct.GPR, %struct.GPR* %5331, i32 0, i32 11
  %5333 = getelementptr inbounds %struct.Reg, %struct.Reg* %5332, i32 0, i32 0
  %EDI.i317 = bitcast %union.anon* %5333 to i32*
  %5334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5335 = getelementptr inbounds %struct.GPR, %struct.GPR* %5334, i32 0, i32 1
  %5336 = getelementptr inbounds %struct.Reg, %struct.Reg* %5335, i32 0, i32 0
  %RAX.i318 = bitcast %union.anon* %5336 to i64*
  %5337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5338 = getelementptr inbounds %struct.GPR, %struct.GPR* %5337, i32 0, i32 7
  %5339 = getelementptr inbounds %struct.Reg, %struct.Reg* %5338, i32 0, i32 0
  %RDX.i319 = bitcast %union.anon* %5339 to i64*
  %5340 = load i64, i64* %RAX.i318
  %5341 = load i64, i64* %RDX.i319
  %5342 = mul i64 %5341, 4
  %5343 = add i64 %5342, %5340
  %5344 = load i32, i32* %EDI.i317
  %5345 = zext i32 %5344 to i64
  %5346 = load i64, i64* %PC.i316
  %5347 = add i64 %5346, 3
  store i64 %5347, i64* %PC.i316
  %5348 = inttoptr i64 %5343 to i32*
  store i32 %5344, i32* %5348
  store %struct.Memory* %loadMem_47bc0c, %struct.Memory** %MEMORY
  %loadMem_47bc0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5350 = getelementptr inbounds %struct.GPR, %struct.GPR* %5349, i32 0, i32 33
  %5351 = getelementptr inbounds %struct.Reg, %struct.Reg* %5350, i32 0, i32 0
  %PC.i313 = bitcast %union.anon* %5351 to i64*
  %5352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5353 = getelementptr inbounds %struct.GPR, %struct.GPR* %5352, i32 0, i32 1
  %5354 = getelementptr inbounds %struct.Reg, %struct.Reg* %5353, i32 0, i32 0
  %RAX.i314 = bitcast %union.anon* %5354 to i64*
  %5355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5356 = getelementptr inbounds %struct.GPR, %struct.GPR* %5355, i32 0, i32 15
  %5357 = getelementptr inbounds %struct.Reg, %struct.Reg* %5356, i32 0, i32 0
  %RBP.i315 = bitcast %union.anon* %5357 to i64*
  %5358 = load i64, i64* %RBP.i315
  %5359 = sub i64 %5358, 16
  %5360 = load i64, i64* %PC.i313
  %5361 = add i64 %5360, 4
  store i64 %5361, i64* %PC.i313
  %5362 = inttoptr i64 %5359 to i32*
  %5363 = load i32, i32* %5362
  %5364 = sext i32 %5363 to i64
  store i64 %5364, i64* %RAX.i314, align 8
  store %struct.Memory* %loadMem_47bc0f, %struct.Memory** %MEMORY
  %loadMem_47bc13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5366 = getelementptr inbounds %struct.GPR, %struct.GPR* %5365, i32 0, i32 33
  %5367 = getelementptr inbounds %struct.Reg, %struct.Reg* %5366, i32 0, i32 0
  %PC.i310 = bitcast %union.anon* %5367 to i64*
  %5368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5369 = getelementptr inbounds %struct.GPR, %struct.GPR* %5368, i32 0, i32 1
  %5370 = getelementptr inbounds %struct.Reg, %struct.Reg* %5369, i32 0, i32 0
  %RAX.i311 = bitcast %union.anon* %5370 to i64*
  %5371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5372 = getelementptr inbounds %struct.GPR, %struct.GPR* %5371, i32 0, i32 11
  %5373 = getelementptr inbounds %struct.Reg, %struct.Reg* %5372, i32 0, i32 0
  %RDI.i312 = bitcast %union.anon* %5373 to i64*
  %5374 = load i64, i64* %RAX.i311
  %5375 = mul i64 %5374, 2
  %5376 = add i64 %5375, 4953264
  %5377 = load i64, i64* %PC.i310
  %5378 = add i64 %5377, 8
  store i64 %5378, i64* %PC.i310
  %5379 = inttoptr i64 %5376 to i16*
  %5380 = load i16, i16* %5379
  %5381 = sext i16 %5380 to i64
  %5382 = and i64 %5381, 4294967295
  store i64 %5382, i64* %RDI.i312, align 8
  store %struct.Memory* %loadMem_47bc13, %struct.Memory** %MEMORY
  %loadMem_47bc1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5384 = getelementptr inbounds %struct.GPR, %struct.GPR* %5383, i32 0, i32 33
  %5385 = getelementptr inbounds %struct.Reg, %struct.Reg* %5384, i32 0, i32 0
  %PC.i307 = bitcast %union.anon* %5385 to i64*
  %5386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5387 = getelementptr inbounds %struct.GPR, %struct.GPR* %5386, i32 0, i32 5
  %5388 = getelementptr inbounds %struct.Reg, %struct.Reg* %5387, i32 0, i32 0
  %RCX.i308 = bitcast %union.anon* %5388 to i64*
  %5389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5390 = getelementptr inbounds %struct.GPR, %struct.GPR* %5389, i32 0, i32 15
  %5391 = getelementptr inbounds %struct.Reg, %struct.Reg* %5390, i32 0, i32 0
  %RBP.i309 = bitcast %union.anon* %5391 to i64*
  %5392 = load i64, i64* %RBP.i309
  %5393 = sub i64 %5392, 20
  %5394 = load i64, i64* %PC.i307
  %5395 = add i64 %5394, 3
  store i64 %5395, i64* %PC.i307
  %5396 = inttoptr i64 %5393 to i32*
  %5397 = load i32, i32* %5396
  %5398 = zext i32 %5397 to i64
  store i64 %5398, i64* %RCX.i308, align 8
  store %struct.Memory* %loadMem_47bc1b, %struct.Memory** %MEMORY
  %loadMem_47bc1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5400 = getelementptr inbounds %struct.GPR, %struct.GPR* %5399, i32 0, i32 33
  %5401 = getelementptr inbounds %struct.Reg, %struct.Reg* %5400, i32 0, i32 0
  %PC.i303 = bitcast %union.anon* %5401 to i64*
  %5402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5403 = getelementptr inbounds %struct.GPR, %struct.GPR* %5402, i32 0, i32 5
  %5404 = getelementptr inbounds %struct.Reg, %struct.Reg* %5403, i32 0, i32 0
  %5405 = bitcast %union.anon* %5404 to %struct.anon.2*
  %CL.i304 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %5405, i32 0, i32 0
  %5406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5407 = getelementptr inbounds %struct.GPR, %struct.GPR* %5406, i32 0, i32 11
  %5408 = getelementptr inbounds %struct.Reg, %struct.Reg* %5407, i32 0, i32 0
  %RDI.i305 = bitcast %union.anon* %5408 to i64*
  %5409 = load i64, i64* %RDI.i305
  %5410 = load i8, i8* %CL.i304
  %5411 = zext i8 %5410 to i64
  %5412 = load i64, i64* %PC.i303
  %5413 = add i64 %5412, 2
  store i64 %5413, i64* %PC.i303
  %5414 = trunc i64 %5411 to i5
  switch i5 %5414, label %5421 [
    i5 0, label %routine_shll__cl___edi.exit306
    i5 1, label %5415
  ]

; <label>:5415:                                   ; preds = %routine_shll__cl___edi.exit342
  %5416 = trunc i64 %5409 to i32
  %5417 = shl i32 %5416, 1
  %5418 = icmp slt i32 %5416, 0
  %5419 = icmp slt i32 %5417, 0
  %5420 = xor i1 %5418, %5419
  br label %5430

; <label>:5421:                                   ; preds = %routine_shll__cl___edi.exit342
  %5422 = and i64 %5411, 31
  %5423 = add i64 %5422, 4294967295
  %5424 = and i64 %5409, 4294967295
  %5425 = and i64 %5423, 4294967295
  %5426 = shl i64 %5424, %5425
  %5427 = trunc i64 %5426 to i32
  %5428 = icmp slt i32 %5427, 0
  %5429 = shl i32 %5427, 1
  br label %5430

; <label>:5430:                                   ; preds = %5421, %5415
  %5431 = phi i1 [ %5418, %5415 ], [ %5428, %5421 ]
  %5432 = phi i1 [ %5420, %5415 ], [ false, %5421 ]
  %5433 = phi i32 [ %5417, %5415 ], [ %5429, %5421 ]
  %5434 = zext i32 %5433 to i64
  store i64 %5434, i64* %RDI.i305, align 8
  %5435 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5436 = zext i1 %5431 to i8
  store i8 %5436, i8* %5435, align 1
  %5437 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %5438 = and i32 %5433, 254
  %5439 = call i32 @llvm.ctpop.i32(i32 %5438)
  %5440 = trunc i32 %5439 to i8
  %5441 = and i8 %5440, 1
  %5442 = xor i8 %5441, 1
  store i8 %5442, i8* %5437, align 1
  %5443 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5443, align 1
  %5444 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5445 = icmp eq i32 %5433, 0
  %5446 = zext i1 %5445 to i8
  store i8 %5446, i8* %5444, align 1
  %5447 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5448 = lshr i32 %5433, 31
  %5449 = trunc i32 %5448 to i8
  store i8 %5449, i8* %5447, align 1
  %5450 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %5451 = zext i1 %5432 to i8
  store i8 %5451, i8* %5450, align 1
  br label %routine_shll__cl___edi.exit306

routine_shll__cl___edi.exit306:                   ; preds = %routine_shll__cl___edi.exit342, %5430
  store %struct.Memory* %loadMem_47bc1e, %struct.Memory** %MEMORY
  %loadMem_47bc20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5453 = getelementptr inbounds %struct.GPR, %struct.GPR* %5452, i32 0, i32 33
  %5454 = getelementptr inbounds %struct.Reg, %struct.Reg* %5453, i32 0, i32 0
  %PC.i300 = bitcast %union.anon* %5454 to i64*
  %5455 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5456 = getelementptr inbounds %struct.GPR, %struct.GPR* %5455, i32 0, i32 1
  %5457 = getelementptr inbounds %struct.Reg, %struct.Reg* %5456, i32 0, i32 0
  %RAX.i301 = bitcast %union.anon* %5457 to i64*
  %5458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5459 = getelementptr inbounds %struct.GPR, %struct.GPR* %5458, i32 0, i32 15
  %5460 = getelementptr inbounds %struct.Reg, %struct.Reg* %5459, i32 0, i32 0
  %RBP.i302 = bitcast %union.anon* %5460 to i64*
  %5461 = load i64, i64* %RBP.i302
  %5462 = sub i64 %5461, 12
  %5463 = load i64, i64* %PC.i300
  %5464 = add i64 %5463, 4
  store i64 %5464, i64* %PC.i300
  %5465 = inttoptr i64 %5462 to i32*
  %5466 = load i32, i32* %5465
  %5467 = sext i32 %5466 to i64
  store i64 %5467, i64* %RAX.i301, align 8
  store %struct.Memory* %loadMem_47bc20, %struct.Memory** %MEMORY
  %loadMem_47bc24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5469 = getelementptr inbounds %struct.GPR, %struct.GPR* %5468, i32 0, i32 33
  %5470 = getelementptr inbounds %struct.Reg, %struct.Reg* %5469, i32 0, i32 0
  %PC.i298 = bitcast %union.anon* %5470 to i64*
  %5471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5472 = getelementptr inbounds %struct.GPR, %struct.GPR* %5471, i32 0, i32 1
  %5473 = getelementptr inbounds %struct.Reg, %struct.Reg* %5472, i32 0, i32 0
  %RAX.i299 = bitcast %union.anon* %5473 to i64*
  %5474 = load i64, i64* %RAX.i299
  %5475 = load i64, i64* %PC.i298
  %5476 = add i64 %5475, 4
  store i64 %5476, i64* %PC.i298
  %5477 = shl i64 %5474, 5
  %5478 = icmp slt i64 %5477, 0
  %5479 = shl i64 %5477, 1
  store i64 %5479, i64* %RAX.i299, align 8
  %5480 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5481 = zext i1 %5478 to i8
  store i8 %5481, i8* %5480, align 1
  %5482 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %5483 = trunc i64 %5479 to i32
  %5484 = and i32 %5483, 254
  %5485 = call i32 @llvm.ctpop.i32(i32 %5484)
  %5486 = trunc i32 %5485 to i8
  %5487 = and i8 %5486, 1
  %5488 = xor i8 %5487, 1
  store i8 %5488, i8* %5482, align 1
  %5489 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5489, align 1
  %5490 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5491 = icmp eq i64 %5479, 0
  %5492 = zext i1 %5491 to i8
  store i8 %5492, i8* %5490, align 1
  %5493 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5494 = lshr i64 %5479, 63
  %5495 = trunc i64 %5494 to i8
  store i8 %5495, i8* %5493, align 1
  %5496 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5496, align 1
  store %struct.Memory* %loadMem_47bc24, %struct.Memory** %MEMORY
  %loadMem_47bc28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5498 = getelementptr inbounds %struct.GPR, %struct.GPR* %5497, i32 0, i32 33
  %5499 = getelementptr inbounds %struct.Reg, %struct.Reg* %5498, i32 0, i32 0
  %PC.i295 = bitcast %union.anon* %5499 to i64*
  %5500 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5501 = getelementptr inbounds %struct.GPR, %struct.GPR* %5500, i32 0, i32 7
  %5502 = getelementptr inbounds %struct.Reg, %struct.Reg* %5501, i32 0, i32 0
  %RDX.i296 = bitcast %union.anon* %5502 to i64*
  %5503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5504 = getelementptr inbounds %struct.GPR, %struct.GPR* %5503, i32 0, i32 15
  %5505 = getelementptr inbounds %struct.Reg, %struct.Reg* %5504, i32 0, i32 0
  %RBP.i297 = bitcast %union.anon* %5505 to i64*
  %5506 = load i64, i64* %RBP.i297
  %5507 = sub i64 %5506, 56
  %5508 = load i64, i64* %PC.i295
  %5509 = add i64 %5508, 4
  store i64 %5509, i64* %PC.i295
  %5510 = inttoptr i64 %5507 to i64*
  %5511 = load i64, i64* %5510
  store i64 %5511, i64* %RDX.i296, align 8
  store %struct.Memory* %loadMem_47bc28, %struct.Memory** %MEMORY
  %loadMem_47bc2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5513 = getelementptr inbounds %struct.GPR, %struct.GPR* %5512, i32 0, i32 33
  %5514 = getelementptr inbounds %struct.Reg, %struct.Reg* %5513, i32 0, i32 0
  %PC.i292 = bitcast %union.anon* %5514 to i64*
  %5515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5516 = getelementptr inbounds %struct.GPR, %struct.GPR* %5515, i32 0, i32 1
  %5517 = getelementptr inbounds %struct.Reg, %struct.Reg* %5516, i32 0, i32 0
  %RAX.i293 = bitcast %union.anon* %5517 to i64*
  %5518 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5519 = getelementptr inbounds %struct.GPR, %struct.GPR* %5518, i32 0, i32 7
  %5520 = getelementptr inbounds %struct.Reg, %struct.Reg* %5519, i32 0, i32 0
  %RDX.i294 = bitcast %union.anon* %5520 to i64*
  %5521 = load i64, i64* %RDX.i294
  %5522 = load i64, i64* %RAX.i293
  %5523 = load i64, i64* %PC.i292
  %5524 = add i64 %5523, 3
  store i64 %5524, i64* %PC.i292
  %5525 = add i64 %5522, %5521
  store i64 %5525, i64* %RDX.i294, align 8
  %5526 = icmp ult i64 %5525, %5521
  %5527 = icmp ult i64 %5525, %5522
  %5528 = or i1 %5526, %5527
  %5529 = zext i1 %5528 to i8
  %5530 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5529, i8* %5530, align 1
  %5531 = trunc i64 %5525 to i32
  %5532 = and i32 %5531, 255
  %5533 = call i32 @llvm.ctpop.i32(i32 %5532)
  %5534 = trunc i32 %5533 to i8
  %5535 = and i8 %5534, 1
  %5536 = xor i8 %5535, 1
  %5537 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5536, i8* %5537, align 1
  %5538 = xor i64 %5522, %5521
  %5539 = xor i64 %5538, %5525
  %5540 = lshr i64 %5539, 4
  %5541 = trunc i64 %5540 to i8
  %5542 = and i8 %5541, 1
  %5543 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5542, i8* %5543, align 1
  %5544 = icmp eq i64 %5525, 0
  %5545 = zext i1 %5544 to i8
  %5546 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5545, i8* %5546, align 1
  %5547 = lshr i64 %5525, 63
  %5548 = trunc i64 %5547 to i8
  %5549 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5548, i8* %5549, align 1
  %5550 = lshr i64 %5521, 63
  %5551 = lshr i64 %5522, 63
  %5552 = xor i64 %5547, %5550
  %5553 = xor i64 %5547, %5551
  %5554 = add i64 %5552, %5553
  %5555 = icmp eq i64 %5554, 2
  %5556 = zext i1 %5555 to i8
  %5557 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5556, i8* %5557, align 1
  store %struct.Memory* %loadMem_47bc2c, %struct.Memory** %MEMORY
  %loadMem_47bc2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5559 = getelementptr inbounds %struct.GPR, %struct.GPR* %5558, i32 0, i32 33
  %5560 = getelementptr inbounds %struct.Reg, %struct.Reg* %5559, i32 0, i32 0
  %PC.i289 = bitcast %union.anon* %5560 to i64*
  %5561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5562 = getelementptr inbounds %struct.GPR, %struct.GPR* %5561, i32 0, i32 1
  %5563 = getelementptr inbounds %struct.Reg, %struct.Reg* %5562, i32 0, i32 0
  %RAX.i290 = bitcast %union.anon* %5563 to i64*
  %5564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5565 = getelementptr inbounds %struct.GPR, %struct.GPR* %5564, i32 0, i32 15
  %5566 = getelementptr inbounds %struct.Reg, %struct.Reg* %5565, i32 0, i32 0
  %RBP.i291 = bitcast %union.anon* %5566 to i64*
  %5567 = load i64, i64* %RBP.i291
  %5568 = sub i64 %5567, 8
  %5569 = load i64, i64* %PC.i289
  %5570 = add i64 %5569, 4
  store i64 %5570, i64* %PC.i289
  %5571 = inttoptr i64 %5568 to i32*
  %5572 = load i32, i32* %5571
  %5573 = sext i32 %5572 to i64
  store i64 %5573, i64* %RAX.i290, align 8
  store %struct.Memory* %loadMem_47bc2f, %struct.Memory** %MEMORY
  %loadMem_47bc33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5575 = getelementptr inbounds %struct.GPR, %struct.GPR* %5574, i32 0, i32 33
  %5576 = getelementptr inbounds %struct.Reg, %struct.Reg* %5575, i32 0, i32 0
  %PC.i287 = bitcast %union.anon* %5576 to i64*
  %5577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5578 = getelementptr inbounds %struct.GPR, %struct.GPR* %5577, i32 0, i32 1
  %5579 = getelementptr inbounds %struct.Reg, %struct.Reg* %5578, i32 0, i32 0
  %RAX.i288 = bitcast %union.anon* %5579 to i64*
  %5580 = load i64, i64* %RAX.i288
  %5581 = load i64, i64* %PC.i287
  %5582 = add i64 %5581, 4
  store i64 %5582, i64* %PC.i287
  %5583 = shl i64 %5580, 3
  %5584 = icmp slt i64 %5583, 0
  %5585 = shl i64 %5583, 1
  store i64 %5585, i64* %RAX.i288, align 8
  %5586 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5587 = zext i1 %5584 to i8
  store i8 %5587, i8* %5586, align 1
  %5588 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %5589 = trunc i64 %5585 to i32
  %5590 = and i32 %5589, 254
  %5591 = call i32 @llvm.ctpop.i32(i32 %5590)
  %5592 = trunc i32 %5591 to i8
  %5593 = and i8 %5592, 1
  %5594 = xor i8 %5593, 1
  store i8 %5594, i8* %5588, align 1
  %5595 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5595, align 1
  %5596 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5597 = icmp eq i64 %5585, 0
  %5598 = zext i1 %5597 to i8
  store i8 %5598, i8* %5596, align 1
  %5599 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5600 = lshr i64 %5585, 63
  %5601 = trunc i64 %5600 to i8
  store i8 %5601, i8* %5599, align 1
  %5602 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5602, align 1
  store %struct.Memory* %loadMem_47bc33, %struct.Memory** %MEMORY
  %loadMem_47bc37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5603 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5604 = getelementptr inbounds %struct.GPR, %struct.GPR* %5603, i32 0, i32 33
  %5605 = getelementptr inbounds %struct.Reg, %struct.Reg* %5604, i32 0, i32 0
  %PC.i284 = bitcast %union.anon* %5605 to i64*
  %5606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5607 = getelementptr inbounds %struct.GPR, %struct.GPR* %5606, i32 0, i32 1
  %5608 = getelementptr inbounds %struct.Reg, %struct.Reg* %5607, i32 0, i32 0
  %RAX.i285 = bitcast %union.anon* %5608 to i64*
  %5609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5610 = getelementptr inbounds %struct.GPR, %struct.GPR* %5609, i32 0, i32 7
  %5611 = getelementptr inbounds %struct.Reg, %struct.Reg* %5610, i32 0, i32 0
  %RDX.i286 = bitcast %union.anon* %5611 to i64*
  %5612 = load i64, i64* %RDX.i286
  %5613 = load i64, i64* %RAX.i285
  %5614 = load i64, i64* %PC.i284
  %5615 = add i64 %5614, 3
  store i64 %5615, i64* %PC.i284
  %5616 = add i64 %5613, %5612
  store i64 %5616, i64* %RDX.i286, align 8
  %5617 = icmp ult i64 %5616, %5612
  %5618 = icmp ult i64 %5616, %5613
  %5619 = or i1 %5617, %5618
  %5620 = zext i1 %5619 to i8
  %5621 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5620, i8* %5621, align 1
  %5622 = trunc i64 %5616 to i32
  %5623 = and i32 %5622, 255
  %5624 = call i32 @llvm.ctpop.i32(i32 %5623)
  %5625 = trunc i32 %5624 to i8
  %5626 = and i8 %5625, 1
  %5627 = xor i8 %5626, 1
  %5628 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5627, i8* %5628, align 1
  %5629 = xor i64 %5613, %5612
  %5630 = xor i64 %5629, %5616
  %5631 = lshr i64 %5630, 4
  %5632 = trunc i64 %5631 to i8
  %5633 = and i8 %5632, 1
  %5634 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5633, i8* %5634, align 1
  %5635 = icmp eq i64 %5616, 0
  %5636 = zext i1 %5635 to i8
  %5637 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5636, i8* %5637, align 1
  %5638 = lshr i64 %5616, 63
  %5639 = trunc i64 %5638 to i8
  %5640 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5639, i8* %5640, align 1
  %5641 = lshr i64 %5612, 63
  %5642 = lshr i64 %5613, 63
  %5643 = xor i64 %5638, %5641
  %5644 = xor i64 %5638, %5642
  %5645 = add i64 %5643, %5644
  %5646 = icmp eq i64 %5645, 2
  %5647 = zext i1 %5646 to i8
  %5648 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5647, i8* %5648, align 1
  store %struct.Memory* %loadMem_47bc37, %struct.Memory** %MEMORY
  %loadMem_47bc3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5650 = getelementptr inbounds %struct.GPR, %struct.GPR* %5649, i32 0, i32 33
  %5651 = getelementptr inbounds %struct.Reg, %struct.Reg* %5650, i32 0, i32 0
  %PC.i281 = bitcast %union.anon* %5651 to i64*
  %5652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5653 = getelementptr inbounds %struct.GPR, %struct.GPR* %5652, i32 0, i32 1
  %5654 = getelementptr inbounds %struct.Reg, %struct.Reg* %5653, i32 0, i32 0
  %RAX.i282 = bitcast %union.anon* %5654 to i64*
  %5655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5656 = getelementptr inbounds %struct.GPR, %struct.GPR* %5655, i32 0, i32 15
  %5657 = getelementptr inbounds %struct.Reg, %struct.Reg* %5656, i32 0, i32 0
  %RBP.i283 = bitcast %union.anon* %5657 to i64*
  %5658 = load i64, i64* %RBP.i283
  %5659 = sub i64 %5658, 4
  %5660 = load i64, i64* %PC.i281
  %5661 = add i64 %5660, 4
  store i64 %5661, i64* %PC.i281
  %5662 = inttoptr i64 %5659 to i32*
  %5663 = load i32, i32* %5662
  %5664 = sext i32 %5663 to i64
  store i64 %5664, i64* %RAX.i282, align 8
  store %struct.Memory* %loadMem_47bc3a, %struct.Memory** %MEMORY
  %loadMem_47bc3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5665 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5666 = getelementptr inbounds %struct.GPR, %struct.GPR* %5665, i32 0, i32 33
  %5667 = getelementptr inbounds %struct.Reg, %struct.Reg* %5666, i32 0, i32 0
  %PC.i277 = bitcast %union.anon* %5667 to i64*
  %5668 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5669 = getelementptr inbounds %struct.GPR, %struct.GPR* %5668, i32 0, i32 11
  %5670 = getelementptr inbounds %struct.Reg, %struct.Reg* %5669, i32 0, i32 0
  %EDI.i278 = bitcast %union.anon* %5670 to i32*
  %5671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5672 = getelementptr inbounds %struct.GPR, %struct.GPR* %5671, i32 0, i32 1
  %5673 = getelementptr inbounds %struct.Reg, %struct.Reg* %5672, i32 0, i32 0
  %RAX.i279 = bitcast %union.anon* %5673 to i64*
  %5674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5675 = getelementptr inbounds %struct.GPR, %struct.GPR* %5674, i32 0, i32 7
  %5676 = getelementptr inbounds %struct.Reg, %struct.Reg* %5675, i32 0, i32 0
  %RDX.i280 = bitcast %union.anon* %5676 to i64*
  %5677 = load i64, i64* %RDX.i280
  %5678 = load i64, i64* %RAX.i279
  %5679 = mul i64 %5678, 4
  %5680 = add i64 %5679, %5677
  %5681 = load i32, i32* %EDI.i278
  %5682 = zext i32 %5681 to i64
  %5683 = load i64, i64* %PC.i277
  %5684 = add i64 %5683, 3
  store i64 %5684, i64* %PC.i277
  %5685 = inttoptr i64 %5680 to i32*
  store i32 %5681, i32* %5685
  store %struct.Memory* %loadMem_47bc3e, %struct.Memory** %MEMORY
  %loadMem_47bc41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5687 = getelementptr inbounds %struct.GPR, %struct.GPR* %5686, i32 0, i32 33
  %5688 = getelementptr inbounds %struct.Reg, %struct.Reg* %5687, i32 0, i32 0
  %PC.i276 = bitcast %union.anon* %5688 to i64*
  %5689 = load i64, i64* %PC.i276
  %5690 = add i64 %5689, 185
  %5691 = load i64, i64* %PC.i276
  %5692 = add i64 %5691, 5
  store i64 %5692, i64* %PC.i276
  %5693 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5690, i64* %5693, align 8
  store %struct.Memory* %loadMem_47bc41, %struct.Memory** %MEMORY
  br label %block_.L_47bcfa

block_.L_47bc46:                                  ; preds = %block_47bb6f
  %loadMem_47bc46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5695 = getelementptr inbounds %struct.GPR, %struct.GPR* %5694, i32 0, i32 33
  %5696 = getelementptr inbounds %struct.Reg, %struct.Reg* %5695, i32 0, i32 0
  %PC.i274 = bitcast %union.anon* %5696 to i64*
  %5697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5698 = getelementptr inbounds %struct.GPR, %struct.GPR* %5697, i32 0, i32 1
  %5699 = getelementptr inbounds %struct.Reg, %struct.Reg* %5698, i32 0, i32 0
  %RAX.i275 = bitcast %union.anon* %5699 to i64*
  %5700 = load i64, i64* %PC.i274
  %5701 = add i64 %5700, 10
  store i64 %5701, i64* %PC.i274
  store i64 7490528, i64* %RAX.i275, align 8
  store %struct.Memory* %loadMem_47bc46, %struct.Memory** %MEMORY
  %loadMem_47bc50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5703 = getelementptr inbounds %struct.GPR, %struct.GPR* %5702, i32 0, i32 33
  %5704 = getelementptr inbounds %struct.Reg, %struct.Reg* %5703, i32 0, i32 0
  %PC.i271 = bitcast %union.anon* %5704 to i64*
  %5705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5706 = getelementptr inbounds %struct.GPR, %struct.GPR* %5705, i32 0, i32 1
  %5707 = getelementptr inbounds %struct.Reg, %struct.Reg* %5706, i32 0, i32 0
  %RAX.i272 = bitcast %union.anon* %5707 to i64*
  %5708 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5709 = getelementptr inbounds %struct.GPR, %struct.GPR* %5708, i32 0, i32 5
  %5710 = getelementptr inbounds %struct.Reg, %struct.Reg* %5709, i32 0, i32 0
  %RCX.i273 = bitcast %union.anon* %5710 to i64*
  %5711 = load i64, i64* %RAX.i272
  %5712 = load i64, i64* %PC.i271
  %5713 = add i64 %5712, 3
  store i64 %5713, i64* %PC.i271
  store i64 %5711, i64* %RCX.i273, align 8
  store %struct.Memory* %loadMem_47bc50, %struct.Memory** %MEMORY
  %loadMem_47bc53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5715 = getelementptr inbounds %struct.GPR, %struct.GPR* %5714, i32 0, i32 33
  %5716 = getelementptr inbounds %struct.Reg, %struct.Reg* %5715, i32 0, i32 0
  %PC.i269 = bitcast %union.anon* %5716 to i64*
  %5717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5718 = getelementptr inbounds %struct.GPR, %struct.GPR* %5717, i32 0, i32 5
  %5719 = getelementptr inbounds %struct.Reg, %struct.Reg* %5718, i32 0, i32 0
  %RCX.i270 = bitcast %union.anon* %5719 to i64*
  %5720 = load i64, i64* %RCX.i270
  %5721 = load i64, i64* %PC.i269
  %5722 = add i64 %5721, 7
  store i64 %5722, i64* %PC.i269
  %5723 = add i64 832, %5720
  store i64 %5723, i64* %RCX.i270, align 8
  %5724 = icmp ult i64 %5723, %5720
  %5725 = icmp ult i64 %5723, 832
  %5726 = or i1 %5724, %5725
  %5727 = zext i1 %5726 to i8
  %5728 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5727, i8* %5728, align 1
  %5729 = trunc i64 %5723 to i32
  %5730 = and i32 %5729, 255
  %5731 = call i32 @llvm.ctpop.i32(i32 %5730)
  %5732 = trunc i32 %5731 to i8
  %5733 = and i8 %5732, 1
  %5734 = xor i8 %5733, 1
  %5735 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5734, i8* %5735, align 1
  %5736 = xor i64 832, %5720
  %5737 = xor i64 %5736, %5723
  %5738 = lshr i64 %5737, 4
  %5739 = trunc i64 %5738 to i8
  %5740 = and i8 %5739, 1
  %5741 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5740, i8* %5741, align 1
  %5742 = icmp eq i64 %5723, 0
  %5743 = zext i1 %5742 to i8
  %5744 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5743, i8* %5744, align 1
  %5745 = lshr i64 %5723, 63
  %5746 = trunc i64 %5745 to i8
  %5747 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5746, i8* %5747, align 1
  %5748 = lshr i64 %5720, 63
  %5749 = xor i64 %5745, %5748
  %5750 = add i64 %5749, %5745
  %5751 = icmp eq i64 %5750, 2
  %5752 = zext i1 %5751 to i8
  %5753 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5752, i8* %5753, align 1
  store %struct.Memory* %loadMem_47bc53, %struct.Memory** %MEMORY
  %loadMem_47bc5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5755 = getelementptr inbounds %struct.GPR, %struct.GPR* %5754, i32 0, i32 33
  %5756 = getelementptr inbounds %struct.Reg, %struct.Reg* %5755, i32 0, i32 0
  %PC.i267 = bitcast %union.anon* %5756 to i64*
  %5757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5758 = getelementptr inbounds %struct.GPR, %struct.GPR* %5757, i32 0, i32 7
  %5759 = getelementptr inbounds %struct.Reg, %struct.Reg* %5758, i32 0, i32 0
  %RDX.i268 = bitcast %union.anon* %5759 to i64*
  %5760 = load i64, i64* %PC.i267
  %5761 = add i64 %5760, 10
  store i64 %5761, i64* %PC.i267
  store i64 7405600, i64* %RDX.i268, align 8
  store %struct.Memory* %loadMem_47bc5a, %struct.Memory** %MEMORY
  %loadMem_47bc64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5762 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5763 = getelementptr inbounds %struct.GPR, %struct.GPR* %5762, i32 0, i32 33
  %5764 = getelementptr inbounds %struct.Reg, %struct.Reg* %5763, i32 0, i32 0
  %PC.i264 = bitcast %union.anon* %5764 to i64*
  %5765 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5766 = getelementptr inbounds %struct.GPR, %struct.GPR* %5765, i32 0, i32 9
  %5767 = getelementptr inbounds %struct.Reg, %struct.Reg* %5766, i32 0, i32 0
  %RSI.i265 = bitcast %union.anon* %5767 to i64*
  %5768 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5769 = getelementptr inbounds %struct.GPR, %struct.GPR* %5768, i32 0, i32 15
  %5770 = getelementptr inbounds %struct.Reg, %struct.Reg* %5769, i32 0, i32 0
  %RBP.i266 = bitcast %union.anon* %5770 to i64*
  %5771 = load i64, i64* %RBP.i266
  %5772 = sub i64 %5771, 16
  %5773 = load i64, i64* %PC.i264
  %5774 = add i64 %5773, 4
  store i64 %5774, i64* %PC.i264
  %5775 = inttoptr i64 %5772 to i32*
  %5776 = load i32, i32* %5775
  %5777 = sext i32 %5776 to i64
  store i64 %5777, i64* %RSI.i265, align 8
  store %struct.Memory* %loadMem_47bc64, %struct.Memory** %MEMORY
  %loadMem_47bc68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5778 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5779 = getelementptr inbounds %struct.GPR, %struct.GPR* %5778, i32 0, i32 33
  %5780 = getelementptr inbounds %struct.Reg, %struct.Reg* %5779, i32 0, i32 0
  %PC.i261 = bitcast %union.anon* %5780 to i64*
  %5781 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5782 = getelementptr inbounds %struct.GPR, %struct.GPR* %5781, i32 0, i32 9
  %5783 = getelementptr inbounds %struct.Reg, %struct.Reg* %5782, i32 0, i32 0
  %RSI.i262 = bitcast %union.anon* %5783 to i64*
  %5784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5785 = getelementptr inbounds %struct.GPR, %struct.GPR* %5784, i32 0, i32 11
  %5786 = getelementptr inbounds %struct.Reg, %struct.Reg* %5785, i32 0, i32 0
  %RDI.i263 = bitcast %union.anon* %5786 to i64*
  %5787 = load i64, i64* %RSI.i262
  %5788 = mul i64 %5787, 2
  %5789 = add i64 %5788, 4953296
  %5790 = load i64, i64* %PC.i261
  %5791 = add i64 %5790, 8
  store i64 %5791, i64* %PC.i261
  %5792 = inttoptr i64 %5789 to i16*
  %5793 = load i16, i16* %5792
  %5794 = sext i16 %5793 to i64
  %5795 = and i64 %5794, 4294967295
  store i64 %5795, i64* %RDI.i263, align 8
  store %struct.Memory* %loadMem_47bc68, %struct.Memory** %MEMORY
  %loadMem_47bc70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5796 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5797 = getelementptr inbounds %struct.GPR, %struct.GPR* %5796, i32 0, i32 33
  %5798 = getelementptr inbounds %struct.Reg, %struct.Reg* %5797, i32 0, i32 0
  %PC.i258 = bitcast %union.anon* %5798 to i64*
  %5799 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5800 = getelementptr inbounds %struct.GPR, %struct.GPR* %5799, i32 0, i32 17
  %5801 = getelementptr inbounds %struct.Reg, %struct.Reg* %5800, i32 0, i32 0
  %R8D.i259 = bitcast %union.anon* %5801 to i32*
  %5802 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5803 = getelementptr inbounds %struct.GPR, %struct.GPR* %5802, i32 0, i32 15
  %5804 = getelementptr inbounds %struct.Reg, %struct.Reg* %5803, i32 0, i32 0
  %RBP.i260 = bitcast %union.anon* %5804 to i64*
  %5805 = bitcast i32* %R8D.i259 to i64*
  %5806 = load i64, i64* %RBP.i260
  %5807 = sub i64 %5806, 20
  %5808 = load i64, i64* %PC.i258
  %5809 = add i64 %5808, 4
  store i64 %5809, i64* %PC.i258
  %5810 = inttoptr i64 %5807 to i32*
  %5811 = load i32, i32* %5810
  %5812 = zext i32 %5811 to i64
  store i64 %5812, i64* %5805, align 8
  store %struct.Memory* %loadMem_47bc70, %struct.Memory** %MEMORY
  %loadMem_47bc74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5813 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5814 = getelementptr inbounds %struct.GPR, %struct.GPR* %5813, i32 0, i32 33
  %5815 = getelementptr inbounds %struct.Reg, %struct.Reg* %5814, i32 0, i32 0
  %PC.i255 = bitcast %union.anon* %5815 to i64*
  %5816 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5817 = getelementptr inbounds %struct.GPR, %struct.GPR* %5816, i32 0, i32 5
  %5818 = getelementptr inbounds %struct.Reg, %struct.Reg* %5817, i32 0, i32 0
  %RCX.i256 = bitcast %union.anon* %5818 to i64*
  %5819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5820 = getelementptr inbounds %struct.GPR, %struct.GPR* %5819, i32 0, i32 15
  %5821 = getelementptr inbounds %struct.Reg, %struct.Reg* %5820, i32 0, i32 0
  %RBP.i257 = bitcast %union.anon* %5821 to i64*
  %5822 = load i64, i64* %RBP.i257
  %5823 = sub i64 %5822, 64
  %5824 = load i64, i64* %RCX.i256
  %5825 = load i64, i64* %PC.i255
  %5826 = add i64 %5825, 4
  store i64 %5826, i64* %PC.i255
  %5827 = inttoptr i64 %5823 to i64*
  store i64 %5824, i64* %5827
  store %struct.Memory* %loadMem_47bc74, %struct.Memory** %MEMORY
  %loadMem_47bc78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5829 = getelementptr inbounds %struct.GPR, %struct.GPR* %5828, i32 0, i32 33
  %5830 = getelementptr inbounds %struct.Reg, %struct.Reg* %5829, i32 0, i32 0
  %PC.i252 = bitcast %union.anon* %5830 to i64*
  %5831 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5832 = getelementptr inbounds %struct.GPR, %struct.GPR* %5831, i32 0, i32 17
  %5833 = getelementptr inbounds %struct.Reg, %struct.Reg* %5832, i32 0, i32 0
  %R8D.i253 = bitcast %union.anon* %5833 to i32*
  %5834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5835 = getelementptr inbounds %struct.GPR, %struct.GPR* %5834, i32 0, i32 5
  %5836 = getelementptr inbounds %struct.Reg, %struct.Reg* %5835, i32 0, i32 0
  %RCX.i254 = bitcast %union.anon* %5836 to i64*
  %5837 = load i32, i32* %R8D.i253
  %5838 = zext i32 %5837 to i64
  %5839 = load i64, i64* %PC.i252
  %5840 = add i64 %5839, 3
  store i64 %5840, i64* %PC.i252
  %5841 = and i64 %5838, 4294967295
  store i64 %5841, i64* %RCX.i254, align 8
  store %struct.Memory* %loadMem_47bc78, %struct.Memory** %MEMORY
  %loadMem_47bc7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5843 = getelementptr inbounds %struct.GPR, %struct.GPR* %5842, i32 0, i32 33
  %5844 = getelementptr inbounds %struct.Reg, %struct.Reg* %5843, i32 0, i32 0
  %PC.i248 = bitcast %union.anon* %5844 to i64*
  %5845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5846 = getelementptr inbounds %struct.GPR, %struct.GPR* %5845, i32 0, i32 5
  %5847 = getelementptr inbounds %struct.Reg, %struct.Reg* %5846, i32 0, i32 0
  %5848 = bitcast %union.anon* %5847 to %struct.anon.2*
  %CL.i249 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %5848, i32 0, i32 0
  %5849 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5850 = getelementptr inbounds %struct.GPR, %struct.GPR* %5849, i32 0, i32 11
  %5851 = getelementptr inbounds %struct.Reg, %struct.Reg* %5850, i32 0, i32 0
  %RDI.i250 = bitcast %union.anon* %5851 to i64*
  %5852 = load i64, i64* %RDI.i250
  %5853 = load i8, i8* %CL.i249
  %5854 = zext i8 %5853 to i64
  %5855 = load i64, i64* %PC.i248
  %5856 = add i64 %5855, 2
  store i64 %5856, i64* %PC.i248
  %5857 = trunc i64 %5854 to i5
  switch i5 %5857, label %5864 [
    i5 0, label %routine_shll__cl___edi.exit251
    i5 1, label %5858
  ]

; <label>:5858:                                   ; preds = %block_.L_47bc46
  %5859 = trunc i64 %5852 to i32
  %5860 = shl i32 %5859, 1
  %5861 = icmp slt i32 %5859, 0
  %5862 = icmp slt i32 %5860, 0
  %5863 = xor i1 %5861, %5862
  br label %5873

; <label>:5864:                                   ; preds = %block_.L_47bc46
  %5865 = and i64 %5854, 31
  %5866 = add i64 %5865, 4294967295
  %5867 = and i64 %5852, 4294967295
  %5868 = and i64 %5866, 4294967295
  %5869 = shl i64 %5867, %5868
  %5870 = trunc i64 %5869 to i32
  %5871 = icmp slt i32 %5870, 0
  %5872 = shl i32 %5870, 1
  br label %5873

; <label>:5873:                                   ; preds = %5864, %5858
  %5874 = phi i1 [ %5861, %5858 ], [ %5871, %5864 ]
  %5875 = phi i1 [ %5863, %5858 ], [ false, %5864 ]
  %5876 = phi i32 [ %5860, %5858 ], [ %5872, %5864 ]
  %5877 = zext i32 %5876 to i64
  store i64 %5877, i64* %RDI.i250, align 8
  %5878 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5879 = zext i1 %5874 to i8
  store i8 %5879, i8* %5878, align 1
  %5880 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %5881 = and i32 %5876, 254
  %5882 = call i32 @llvm.ctpop.i32(i32 %5881)
  %5883 = trunc i32 %5882 to i8
  %5884 = and i8 %5883, 1
  %5885 = xor i8 %5884, 1
  store i8 %5885, i8* %5880, align 1
  %5886 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5886, align 1
  %5887 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5888 = icmp eq i32 %5876, 0
  %5889 = zext i1 %5888 to i8
  store i8 %5889, i8* %5887, align 1
  %5890 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5891 = lshr i32 %5876, 31
  %5892 = trunc i32 %5891 to i8
  store i8 %5892, i8* %5890, align 1
  %5893 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %5894 = zext i1 %5875 to i8
  store i8 %5894, i8* %5893, align 1
  br label %routine_shll__cl___edi.exit251

routine_shll__cl___edi.exit251:                   ; preds = %block_.L_47bc46, %5873
  store %struct.Memory* %loadMem_47bc7b, %struct.Memory** %MEMORY
  %loadMem_47bc7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5895 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5896 = getelementptr inbounds %struct.GPR, %struct.GPR* %5895, i32 0, i32 33
  %5897 = getelementptr inbounds %struct.Reg, %struct.Reg* %5896, i32 0, i32 0
  %PC.i245 = bitcast %union.anon* %5897 to i64*
  %5898 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5899 = getelementptr inbounds %struct.GPR, %struct.GPR* %5898, i32 0, i32 9
  %5900 = getelementptr inbounds %struct.Reg, %struct.Reg* %5899, i32 0, i32 0
  %RSI.i246 = bitcast %union.anon* %5900 to i64*
  %5901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5902 = getelementptr inbounds %struct.GPR, %struct.GPR* %5901, i32 0, i32 15
  %5903 = getelementptr inbounds %struct.Reg, %struct.Reg* %5902, i32 0, i32 0
  %RBP.i247 = bitcast %union.anon* %5903 to i64*
  %5904 = load i64, i64* %RBP.i247
  %5905 = sub i64 %5904, 12
  %5906 = load i64, i64* %PC.i245
  %5907 = add i64 %5906, 4
  store i64 %5907, i64* %PC.i245
  %5908 = inttoptr i64 %5905 to i32*
  %5909 = load i32, i32* %5908
  %5910 = sext i32 %5909 to i64
  store i64 %5910, i64* %RSI.i246, align 8
  store %struct.Memory* %loadMem_47bc7d, %struct.Memory** %MEMORY
  %loadMem_47bc81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5911 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5912 = getelementptr inbounds %struct.GPR, %struct.GPR* %5911, i32 0, i32 33
  %5913 = getelementptr inbounds %struct.Reg, %struct.Reg* %5912, i32 0, i32 0
  %PC.i243 = bitcast %union.anon* %5913 to i64*
  %5914 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5915 = getelementptr inbounds %struct.GPR, %struct.GPR* %5914, i32 0, i32 9
  %5916 = getelementptr inbounds %struct.Reg, %struct.Reg* %5915, i32 0, i32 0
  %RSI.i244 = bitcast %union.anon* %5916 to i64*
  %5917 = load i64, i64* %RSI.i244
  %5918 = load i64, i64* %PC.i243
  %5919 = add i64 %5918, 4
  store i64 %5919, i64* %PC.i243
  %5920 = shl i64 %5917, 5
  %5921 = icmp slt i64 %5920, 0
  %5922 = shl i64 %5920, 1
  store i64 %5922, i64* %RSI.i244, align 8
  %5923 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5924 = zext i1 %5921 to i8
  store i8 %5924, i8* %5923, align 1
  %5925 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %5926 = trunc i64 %5922 to i32
  %5927 = and i32 %5926, 254
  %5928 = call i32 @llvm.ctpop.i32(i32 %5927)
  %5929 = trunc i32 %5928 to i8
  %5930 = and i8 %5929, 1
  %5931 = xor i8 %5930, 1
  store i8 %5931, i8* %5925, align 1
  %5932 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5932, align 1
  %5933 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5934 = icmp eq i64 %5922, 0
  %5935 = zext i1 %5934 to i8
  store i8 %5935, i8* %5933, align 1
  %5936 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5937 = lshr i64 %5922, 63
  %5938 = trunc i64 %5937 to i8
  store i8 %5938, i8* %5936, align 1
  %5939 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5939, align 1
  store %struct.Memory* %loadMem_47bc81, %struct.Memory** %MEMORY
  %loadMem_47bc85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5940 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5941 = getelementptr inbounds %struct.GPR, %struct.GPR* %5940, i32 0, i32 33
  %5942 = getelementptr inbounds %struct.Reg, %struct.Reg* %5941, i32 0, i32 0
  %PC.i240 = bitcast %union.anon* %5942 to i64*
  %5943 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5944 = getelementptr inbounds %struct.GPR, %struct.GPR* %5943, i32 0, i32 7
  %5945 = getelementptr inbounds %struct.Reg, %struct.Reg* %5944, i32 0, i32 0
  %RDX.i241 = bitcast %union.anon* %5945 to i64*
  %5946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5947 = getelementptr inbounds %struct.GPR, %struct.GPR* %5946, i32 0, i32 9
  %5948 = getelementptr inbounds %struct.Reg, %struct.Reg* %5947, i32 0, i32 0
  %RSI.i242 = bitcast %union.anon* %5948 to i64*
  %5949 = load i64, i64* %RDX.i241
  %5950 = load i64, i64* %RSI.i242
  %5951 = load i64, i64* %PC.i240
  %5952 = add i64 %5951, 3
  store i64 %5952, i64* %PC.i240
  %5953 = add i64 %5950, %5949
  store i64 %5953, i64* %RDX.i241, align 8
  %5954 = icmp ult i64 %5953, %5949
  %5955 = icmp ult i64 %5953, %5950
  %5956 = or i1 %5954, %5955
  %5957 = zext i1 %5956 to i8
  %5958 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5957, i8* %5958, align 1
  %5959 = trunc i64 %5953 to i32
  %5960 = and i32 %5959, 255
  %5961 = call i32 @llvm.ctpop.i32(i32 %5960)
  %5962 = trunc i32 %5961 to i8
  %5963 = and i8 %5962, 1
  %5964 = xor i8 %5963, 1
  %5965 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5964, i8* %5965, align 1
  %5966 = xor i64 %5950, %5949
  %5967 = xor i64 %5966, %5953
  %5968 = lshr i64 %5967, 4
  %5969 = trunc i64 %5968 to i8
  %5970 = and i8 %5969, 1
  %5971 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5970, i8* %5971, align 1
  %5972 = icmp eq i64 %5953, 0
  %5973 = zext i1 %5972 to i8
  %5974 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5973, i8* %5974, align 1
  %5975 = lshr i64 %5953, 63
  %5976 = trunc i64 %5975 to i8
  %5977 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5976, i8* %5977, align 1
  %5978 = lshr i64 %5949, 63
  %5979 = lshr i64 %5950, 63
  %5980 = xor i64 %5975, %5978
  %5981 = xor i64 %5975, %5979
  %5982 = add i64 %5980, %5981
  %5983 = icmp eq i64 %5982, 2
  %5984 = zext i1 %5983 to i8
  %5985 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5984, i8* %5985, align 1
  store %struct.Memory* %loadMem_47bc85, %struct.Memory** %MEMORY
  %loadMem_47bc88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5987 = getelementptr inbounds %struct.GPR, %struct.GPR* %5986, i32 0, i32 33
  %5988 = getelementptr inbounds %struct.Reg, %struct.Reg* %5987, i32 0, i32 0
  %PC.i237 = bitcast %union.anon* %5988 to i64*
  %5989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5990 = getelementptr inbounds %struct.GPR, %struct.GPR* %5989, i32 0, i32 9
  %5991 = getelementptr inbounds %struct.Reg, %struct.Reg* %5990, i32 0, i32 0
  %RSI.i238 = bitcast %union.anon* %5991 to i64*
  %5992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5993 = getelementptr inbounds %struct.GPR, %struct.GPR* %5992, i32 0, i32 15
  %5994 = getelementptr inbounds %struct.Reg, %struct.Reg* %5993, i32 0, i32 0
  %RBP.i239 = bitcast %union.anon* %5994 to i64*
  %5995 = load i64, i64* %RBP.i239
  %5996 = sub i64 %5995, 8
  %5997 = load i64, i64* %PC.i237
  %5998 = add i64 %5997, 4
  store i64 %5998, i64* %PC.i237
  %5999 = inttoptr i64 %5996 to i32*
  %6000 = load i32, i32* %5999
  %6001 = sext i32 %6000 to i64
  store i64 %6001, i64* %RSI.i238, align 8
  store %struct.Memory* %loadMem_47bc88, %struct.Memory** %MEMORY
  %loadMem_47bc8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %6002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6003 = getelementptr inbounds %struct.GPR, %struct.GPR* %6002, i32 0, i32 33
  %6004 = getelementptr inbounds %struct.Reg, %struct.Reg* %6003, i32 0, i32 0
  %PC.i235 = bitcast %union.anon* %6004 to i64*
  %6005 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6006 = getelementptr inbounds %struct.GPR, %struct.GPR* %6005, i32 0, i32 9
  %6007 = getelementptr inbounds %struct.Reg, %struct.Reg* %6006, i32 0, i32 0
  %RSI.i236 = bitcast %union.anon* %6007 to i64*
  %6008 = load i64, i64* %RSI.i236
  %6009 = load i64, i64* %PC.i235
  %6010 = add i64 %6009, 4
  store i64 %6010, i64* %PC.i235
  %6011 = shl i64 %6008, 3
  %6012 = icmp slt i64 %6011, 0
  %6013 = shl i64 %6011, 1
  store i64 %6013, i64* %RSI.i236, align 8
  %6014 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %6015 = zext i1 %6012 to i8
  store i8 %6015, i8* %6014, align 1
  %6016 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %6017 = trunc i64 %6013 to i32
  %6018 = and i32 %6017, 254
  %6019 = call i32 @llvm.ctpop.i32(i32 %6018)
  %6020 = trunc i32 %6019 to i8
  %6021 = and i8 %6020, 1
  %6022 = xor i8 %6021, 1
  store i8 %6022, i8* %6016, align 1
  %6023 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6023, align 1
  %6024 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6025 = icmp eq i64 %6013, 0
  %6026 = zext i1 %6025 to i8
  store i8 %6026, i8* %6024, align 1
  %6027 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %6028 = lshr i64 %6013, 63
  %6029 = trunc i64 %6028 to i8
  store i8 %6029, i8* %6027, align 1
  %6030 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %6030, align 1
  store %struct.Memory* %loadMem_47bc8c, %struct.Memory** %MEMORY
  %loadMem_47bc90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6031 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6032 = getelementptr inbounds %struct.GPR, %struct.GPR* %6031, i32 0, i32 33
  %6033 = getelementptr inbounds %struct.Reg, %struct.Reg* %6032, i32 0, i32 0
  %PC.i232 = bitcast %union.anon* %6033 to i64*
  %6034 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6035 = getelementptr inbounds %struct.GPR, %struct.GPR* %6034, i32 0, i32 7
  %6036 = getelementptr inbounds %struct.Reg, %struct.Reg* %6035, i32 0, i32 0
  %RDX.i233 = bitcast %union.anon* %6036 to i64*
  %6037 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6038 = getelementptr inbounds %struct.GPR, %struct.GPR* %6037, i32 0, i32 9
  %6039 = getelementptr inbounds %struct.Reg, %struct.Reg* %6038, i32 0, i32 0
  %RSI.i234 = bitcast %union.anon* %6039 to i64*
  %6040 = load i64, i64* %RDX.i233
  %6041 = load i64, i64* %RSI.i234
  %6042 = load i64, i64* %PC.i232
  %6043 = add i64 %6042, 3
  store i64 %6043, i64* %PC.i232
  %6044 = add i64 %6041, %6040
  store i64 %6044, i64* %RDX.i233, align 8
  %6045 = icmp ult i64 %6044, %6040
  %6046 = icmp ult i64 %6044, %6041
  %6047 = or i1 %6045, %6046
  %6048 = zext i1 %6047 to i8
  %6049 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6048, i8* %6049, align 1
  %6050 = trunc i64 %6044 to i32
  %6051 = and i32 %6050, 255
  %6052 = call i32 @llvm.ctpop.i32(i32 %6051)
  %6053 = trunc i32 %6052 to i8
  %6054 = and i8 %6053, 1
  %6055 = xor i8 %6054, 1
  %6056 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6055, i8* %6056, align 1
  %6057 = xor i64 %6041, %6040
  %6058 = xor i64 %6057, %6044
  %6059 = lshr i64 %6058, 4
  %6060 = trunc i64 %6059 to i8
  %6061 = and i8 %6060, 1
  %6062 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6061, i8* %6062, align 1
  %6063 = icmp eq i64 %6044, 0
  %6064 = zext i1 %6063 to i8
  %6065 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6064, i8* %6065, align 1
  %6066 = lshr i64 %6044, 63
  %6067 = trunc i64 %6066 to i8
  %6068 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6067, i8* %6068, align 1
  %6069 = lshr i64 %6040, 63
  %6070 = lshr i64 %6041, 63
  %6071 = xor i64 %6066, %6069
  %6072 = xor i64 %6066, %6070
  %6073 = add i64 %6071, %6072
  %6074 = icmp eq i64 %6073, 2
  %6075 = zext i1 %6074 to i8
  %6076 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6075, i8* %6076, align 1
  store %struct.Memory* %loadMem_47bc90, %struct.Memory** %MEMORY
  %loadMem_47bc93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6078 = getelementptr inbounds %struct.GPR, %struct.GPR* %6077, i32 0, i32 33
  %6079 = getelementptr inbounds %struct.Reg, %struct.Reg* %6078, i32 0, i32 0
  %PC.i229 = bitcast %union.anon* %6079 to i64*
  %6080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6081 = getelementptr inbounds %struct.GPR, %struct.GPR* %6080, i32 0, i32 9
  %6082 = getelementptr inbounds %struct.Reg, %struct.Reg* %6081, i32 0, i32 0
  %RSI.i230 = bitcast %union.anon* %6082 to i64*
  %6083 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6084 = getelementptr inbounds %struct.GPR, %struct.GPR* %6083, i32 0, i32 15
  %6085 = getelementptr inbounds %struct.Reg, %struct.Reg* %6084, i32 0, i32 0
  %RBP.i231 = bitcast %union.anon* %6085 to i64*
  %6086 = load i64, i64* %RBP.i231
  %6087 = sub i64 %6086, 4
  %6088 = load i64, i64* %PC.i229
  %6089 = add i64 %6088, 4
  store i64 %6089, i64* %PC.i229
  %6090 = inttoptr i64 %6087 to i32*
  %6091 = load i32, i32* %6090
  %6092 = sext i32 %6091 to i64
  store i64 %6092, i64* %RSI.i230, align 8
  store %struct.Memory* %loadMem_47bc93, %struct.Memory** %MEMORY
  %loadMem_47bc97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6094 = getelementptr inbounds %struct.GPR, %struct.GPR* %6093, i32 0, i32 33
  %6095 = getelementptr inbounds %struct.Reg, %struct.Reg* %6094, i32 0, i32 0
  %PC.i225 = bitcast %union.anon* %6095 to i64*
  %6096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6097 = getelementptr inbounds %struct.GPR, %struct.GPR* %6096, i32 0, i32 11
  %6098 = getelementptr inbounds %struct.Reg, %struct.Reg* %6097, i32 0, i32 0
  %EDI.i226 = bitcast %union.anon* %6098 to i32*
  %6099 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6100 = getelementptr inbounds %struct.GPR, %struct.GPR* %6099, i32 0, i32 7
  %6101 = getelementptr inbounds %struct.Reg, %struct.Reg* %6100, i32 0, i32 0
  %RDX.i227 = bitcast %union.anon* %6101 to i64*
  %6102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6103 = getelementptr inbounds %struct.GPR, %struct.GPR* %6102, i32 0, i32 9
  %6104 = getelementptr inbounds %struct.Reg, %struct.Reg* %6103, i32 0, i32 0
  %RSI.i228 = bitcast %union.anon* %6104 to i64*
  %6105 = load i64, i64* %RDX.i227
  %6106 = load i64, i64* %RSI.i228
  %6107 = mul i64 %6106, 4
  %6108 = add i64 %6107, %6105
  %6109 = load i32, i32* %EDI.i226
  %6110 = zext i32 %6109 to i64
  %6111 = load i64, i64* %PC.i225
  %6112 = add i64 %6111, 3
  store i64 %6112, i64* %PC.i225
  %6113 = inttoptr i64 %6108 to i32*
  store i32 %6109, i32* %6113
  store %struct.Memory* %loadMem_47bc97, %struct.Memory** %MEMORY
  %loadMem_47bc9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %6114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6115 = getelementptr inbounds %struct.GPR, %struct.GPR* %6114, i32 0, i32 33
  %6116 = getelementptr inbounds %struct.Reg, %struct.Reg* %6115, i32 0, i32 0
  %PC.i222 = bitcast %union.anon* %6116 to i64*
  %6117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6118 = getelementptr inbounds %struct.GPR, %struct.GPR* %6117, i32 0, i32 7
  %6119 = getelementptr inbounds %struct.Reg, %struct.Reg* %6118, i32 0, i32 0
  %RDX.i223 = bitcast %union.anon* %6119 to i64*
  %6120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6121 = getelementptr inbounds %struct.GPR, %struct.GPR* %6120, i32 0, i32 15
  %6122 = getelementptr inbounds %struct.Reg, %struct.Reg* %6121, i32 0, i32 0
  %RBP.i224 = bitcast %union.anon* %6122 to i64*
  %6123 = load i64, i64* %RBP.i224
  %6124 = sub i64 %6123, 16
  %6125 = load i64, i64* %PC.i222
  %6126 = add i64 %6125, 4
  store i64 %6126, i64* %PC.i222
  %6127 = inttoptr i64 %6124 to i32*
  %6128 = load i32, i32* %6127
  %6129 = sext i32 %6128 to i64
  store i64 %6129, i64* %RDX.i223, align 8
  store %struct.Memory* %loadMem_47bc9a, %struct.Memory** %MEMORY
  %loadMem_47bc9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6131 = getelementptr inbounds %struct.GPR, %struct.GPR* %6130, i32 0, i32 33
  %6132 = getelementptr inbounds %struct.Reg, %struct.Reg* %6131, i32 0, i32 0
  %PC.i219 = bitcast %union.anon* %6132 to i64*
  %6133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6134 = getelementptr inbounds %struct.GPR, %struct.GPR* %6133, i32 0, i32 7
  %6135 = getelementptr inbounds %struct.Reg, %struct.Reg* %6134, i32 0, i32 0
  %RDX.i220 = bitcast %union.anon* %6135 to i64*
  %6136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6137 = getelementptr inbounds %struct.GPR, %struct.GPR* %6136, i32 0, i32 11
  %6138 = getelementptr inbounds %struct.Reg, %struct.Reg* %6137, i32 0, i32 0
  %RDI.i221 = bitcast %union.anon* %6138 to i64*
  %6139 = load i64, i64* %RDX.i220
  %6140 = mul i64 %6139, 2
  %6141 = add i64 %6140, 4953296
  %6142 = load i64, i64* %PC.i219
  %6143 = add i64 %6142, 8
  store i64 %6143, i64* %PC.i219
  %6144 = inttoptr i64 %6141 to i16*
  %6145 = load i16, i16* %6144
  %6146 = sext i16 %6145 to i64
  %6147 = and i64 %6146, 4294967295
  store i64 %6147, i64* %RDI.i221, align 8
  store %struct.Memory* %loadMem_47bc9e, %struct.Memory** %MEMORY
  %loadMem_47bca6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6149 = getelementptr inbounds %struct.GPR, %struct.GPR* %6148, i32 0, i32 33
  %6150 = getelementptr inbounds %struct.Reg, %struct.Reg* %6149, i32 0, i32 0
  %PC.i216 = bitcast %union.anon* %6150 to i64*
  %6151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6152 = getelementptr inbounds %struct.GPR, %struct.GPR* %6151, i32 0, i32 5
  %6153 = getelementptr inbounds %struct.Reg, %struct.Reg* %6152, i32 0, i32 0
  %RCX.i217 = bitcast %union.anon* %6153 to i64*
  %6154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6155 = getelementptr inbounds %struct.GPR, %struct.GPR* %6154, i32 0, i32 15
  %6156 = getelementptr inbounds %struct.Reg, %struct.Reg* %6155, i32 0, i32 0
  %RBP.i218 = bitcast %union.anon* %6156 to i64*
  %6157 = load i64, i64* %RBP.i218
  %6158 = sub i64 %6157, 20
  %6159 = load i64, i64* %PC.i216
  %6160 = add i64 %6159, 3
  store i64 %6160, i64* %PC.i216
  %6161 = inttoptr i64 %6158 to i32*
  %6162 = load i32, i32* %6161
  %6163 = zext i32 %6162 to i64
  store i64 %6163, i64* %RCX.i217, align 8
  store %struct.Memory* %loadMem_47bca6, %struct.Memory** %MEMORY
  %loadMem_47bca9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6165 = getelementptr inbounds %struct.GPR, %struct.GPR* %6164, i32 0, i32 33
  %6166 = getelementptr inbounds %struct.Reg, %struct.Reg* %6165, i32 0, i32 0
  %PC.i212 = bitcast %union.anon* %6166 to i64*
  %6167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6168 = getelementptr inbounds %struct.GPR, %struct.GPR* %6167, i32 0, i32 5
  %6169 = getelementptr inbounds %struct.Reg, %struct.Reg* %6168, i32 0, i32 0
  %6170 = bitcast %union.anon* %6169 to %struct.anon.2*
  %CL.i213 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %6170, i32 0, i32 0
  %6171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6172 = getelementptr inbounds %struct.GPR, %struct.GPR* %6171, i32 0, i32 11
  %6173 = getelementptr inbounds %struct.Reg, %struct.Reg* %6172, i32 0, i32 0
  %RDI.i214 = bitcast %union.anon* %6173 to i64*
  %6174 = load i64, i64* %RDI.i214
  %6175 = load i8, i8* %CL.i213
  %6176 = zext i8 %6175 to i64
  %6177 = load i64, i64* %PC.i212
  %6178 = add i64 %6177, 2
  store i64 %6178, i64* %PC.i212
  %6179 = trunc i64 %6176 to i5
  switch i5 %6179, label %6186 [
    i5 0, label %routine_shll__cl___edi.exit215
    i5 1, label %6180
  ]

; <label>:6180:                                   ; preds = %routine_shll__cl___edi.exit251
  %6181 = trunc i64 %6174 to i32
  %6182 = shl i32 %6181, 1
  %6183 = icmp slt i32 %6181, 0
  %6184 = icmp slt i32 %6182, 0
  %6185 = xor i1 %6183, %6184
  br label %6195

; <label>:6186:                                   ; preds = %routine_shll__cl___edi.exit251
  %6187 = and i64 %6176, 31
  %6188 = add i64 %6187, 4294967295
  %6189 = and i64 %6174, 4294967295
  %6190 = and i64 %6188, 4294967295
  %6191 = shl i64 %6189, %6190
  %6192 = trunc i64 %6191 to i32
  %6193 = icmp slt i32 %6192, 0
  %6194 = shl i32 %6192, 1
  br label %6195

; <label>:6195:                                   ; preds = %6186, %6180
  %6196 = phi i1 [ %6183, %6180 ], [ %6193, %6186 ]
  %6197 = phi i1 [ %6185, %6180 ], [ false, %6186 ]
  %6198 = phi i32 [ %6182, %6180 ], [ %6194, %6186 ]
  %6199 = zext i32 %6198 to i64
  store i64 %6199, i64* %RDI.i214, align 8
  %6200 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %6201 = zext i1 %6196 to i8
  store i8 %6201, i8* %6200, align 1
  %6202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %6203 = and i32 %6198, 254
  %6204 = call i32 @llvm.ctpop.i32(i32 %6203)
  %6205 = trunc i32 %6204 to i8
  %6206 = and i8 %6205, 1
  %6207 = xor i8 %6206, 1
  store i8 %6207, i8* %6202, align 1
  %6208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6208, align 1
  %6209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6210 = icmp eq i32 %6198, 0
  %6211 = zext i1 %6210 to i8
  store i8 %6211, i8* %6209, align 1
  %6212 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %6213 = lshr i32 %6198, 31
  %6214 = trunc i32 %6213 to i8
  store i8 %6214, i8* %6212, align 1
  %6215 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %6216 = zext i1 %6197 to i8
  store i8 %6216, i8* %6215, align 1
  br label %routine_shll__cl___edi.exit215

routine_shll__cl___edi.exit215:                   ; preds = %routine_shll__cl___edi.exit251, %6195
  store %struct.Memory* %loadMem_47bca9, %struct.Memory** %MEMORY
  %loadMem_47bcab = load %struct.Memory*, %struct.Memory** %MEMORY
  %6217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6218 = getelementptr inbounds %struct.GPR, %struct.GPR* %6217, i32 0, i32 33
  %6219 = getelementptr inbounds %struct.Reg, %struct.Reg* %6218, i32 0, i32 0
  %PC.i209 = bitcast %union.anon* %6219 to i64*
  %6220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6221 = getelementptr inbounds %struct.GPR, %struct.GPR* %6220, i32 0, i32 7
  %6222 = getelementptr inbounds %struct.Reg, %struct.Reg* %6221, i32 0, i32 0
  %RDX.i210 = bitcast %union.anon* %6222 to i64*
  %6223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6224 = getelementptr inbounds %struct.GPR, %struct.GPR* %6223, i32 0, i32 15
  %6225 = getelementptr inbounds %struct.Reg, %struct.Reg* %6224, i32 0, i32 0
  %RBP.i211 = bitcast %union.anon* %6225 to i64*
  %6226 = load i64, i64* %RBP.i211
  %6227 = sub i64 %6226, 12
  %6228 = load i64, i64* %PC.i209
  %6229 = add i64 %6228, 4
  store i64 %6229, i64* %PC.i209
  %6230 = inttoptr i64 %6227 to i32*
  %6231 = load i32, i32* %6230
  %6232 = sext i32 %6231 to i64
  store i64 %6232, i64* %RDX.i210, align 8
  store %struct.Memory* %loadMem_47bcab, %struct.Memory** %MEMORY
  %loadMem_47bcaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %6233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6234 = getelementptr inbounds %struct.GPR, %struct.GPR* %6233, i32 0, i32 33
  %6235 = getelementptr inbounds %struct.Reg, %struct.Reg* %6234, i32 0, i32 0
  %PC.i207 = bitcast %union.anon* %6235 to i64*
  %6236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6237 = getelementptr inbounds %struct.GPR, %struct.GPR* %6236, i32 0, i32 7
  %6238 = getelementptr inbounds %struct.Reg, %struct.Reg* %6237, i32 0, i32 0
  %RDX.i208 = bitcast %union.anon* %6238 to i64*
  %6239 = load i64, i64* %RDX.i208
  %6240 = load i64, i64* %PC.i207
  %6241 = add i64 %6240, 4
  store i64 %6241, i64* %PC.i207
  %6242 = shl i64 %6239, 5
  %6243 = icmp slt i64 %6242, 0
  %6244 = shl i64 %6242, 1
  store i64 %6244, i64* %RDX.i208, align 8
  %6245 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %6246 = zext i1 %6243 to i8
  store i8 %6246, i8* %6245, align 1
  %6247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %6248 = trunc i64 %6244 to i32
  %6249 = and i32 %6248, 254
  %6250 = call i32 @llvm.ctpop.i32(i32 %6249)
  %6251 = trunc i32 %6250 to i8
  %6252 = and i8 %6251, 1
  %6253 = xor i8 %6252, 1
  store i8 %6253, i8* %6247, align 1
  %6254 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6254, align 1
  %6255 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6256 = icmp eq i64 %6244, 0
  %6257 = zext i1 %6256 to i8
  store i8 %6257, i8* %6255, align 1
  %6258 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %6259 = lshr i64 %6244, 63
  %6260 = trunc i64 %6259 to i8
  store i8 %6260, i8* %6258, align 1
  %6261 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %6261, align 1
  store %struct.Memory* %loadMem_47bcaf, %struct.Memory** %MEMORY
  %loadMem_47bcb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6263 = getelementptr inbounds %struct.GPR, %struct.GPR* %6262, i32 0, i32 33
  %6264 = getelementptr inbounds %struct.Reg, %struct.Reg* %6263, i32 0, i32 0
  %PC.i204 = bitcast %union.anon* %6264 to i64*
  %6265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6266 = getelementptr inbounds %struct.GPR, %struct.GPR* %6265, i32 0, i32 1
  %6267 = getelementptr inbounds %struct.Reg, %struct.Reg* %6266, i32 0, i32 0
  %RAX.i205 = bitcast %union.anon* %6267 to i64*
  %6268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6269 = getelementptr inbounds %struct.GPR, %struct.GPR* %6268, i32 0, i32 7
  %6270 = getelementptr inbounds %struct.Reg, %struct.Reg* %6269, i32 0, i32 0
  %RDX.i206 = bitcast %union.anon* %6270 to i64*
  %6271 = load i64, i64* %RAX.i205
  %6272 = load i64, i64* %RDX.i206
  %6273 = load i64, i64* %PC.i204
  %6274 = add i64 %6273, 3
  store i64 %6274, i64* %PC.i204
  %6275 = add i64 %6272, %6271
  store i64 %6275, i64* %RAX.i205, align 8
  %6276 = icmp ult i64 %6275, %6271
  %6277 = icmp ult i64 %6275, %6272
  %6278 = or i1 %6276, %6277
  %6279 = zext i1 %6278 to i8
  %6280 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6279, i8* %6280, align 1
  %6281 = trunc i64 %6275 to i32
  %6282 = and i32 %6281, 255
  %6283 = call i32 @llvm.ctpop.i32(i32 %6282)
  %6284 = trunc i32 %6283 to i8
  %6285 = and i8 %6284, 1
  %6286 = xor i8 %6285, 1
  %6287 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6286, i8* %6287, align 1
  %6288 = xor i64 %6272, %6271
  %6289 = xor i64 %6288, %6275
  %6290 = lshr i64 %6289, 4
  %6291 = trunc i64 %6290 to i8
  %6292 = and i8 %6291, 1
  %6293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6292, i8* %6293, align 1
  %6294 = icmp eq i64 %6275, 0
  %6295 = zext i1 %6294 to i8
  %6296 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6295, i8* %6296, align 1
  %6297 = lshr i64 %6275, 63
  %6298 = trunc i64 %6297 to i8
  %6299 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6298, i8* %6299, align 1
  %6300 = lshr i64 %6271, 63
  %6301 = lshr i64 %6272, 63
  %6302 = xor i64 %6297, %6300
  %6303 = xor i64 %6297, %6301
  %6304 = add i64 %6302, %6303
  %6305 = icmp eq i64 %6304, 2
  %6306 = zext i1 %6305 to i8
  %6307 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6306, i8* %6307, align 1
  store %struct.Memory* %loadMem_47bcb3, %struct.Memory** %MEMORY
  %loadMem_47bcb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6309 = getelementptr inbounds %struct.GPR, %struct.GPR* %6308, i32 0, i32 33
  %6310 = getelementptr inbounds %struct.Reg, %struct.Reg* %6309, i32 0, i32 0
  %PC.i201 = bitcast %union.anon* %6310 to i64*
  %6311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6312 = getelementptr inbounds %struct.GPR, %struct.GPR* %6311, i32 0, i32 7
  %6313 = getelementptr inbounds %struct.Reg, %struct.Reg* %6312, i32 0, i32 0
  %RDX.i202 = bitcast %union.anon* %6313 to i64*
  %6314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6315 = getelementptr inbounds %struct.GPR, %struct.GPR* %6314, i32 0, i32 15
  %6316 = getelementptr inbounds %struct.Reg, %struct.Reg* %6315, i32 0, i32 0
  %RBP.i203 = bitcast %union.anon* %6316 to i64*
  %6317 = load i64, i64* %RBP.i203
  %6318 = sub i64 %6317, 8
  %6319 = load i64, i64* %PC.i201
  %6320 = add i64 %6319, 4
  store i64 %6320, i64* %PC.i201
  %6321 = inttoptr i64 %6318 to i32*
  %6322 = load i32, i32* %6321
  %6323 = sext i32 %6322 to i64
  store i64 %6323, i64* %RDX.i202, align 8
  store %struct.Memory* %loadMem_47bcb6, %struct.Memory** %MEMORY
  %loadMem_47bcba = load %struct.Memory*, %struct.Memory** %MEMORY
  %6324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6325 = getelementptr inbounds %struct.GPR, %struct.GPR* %6324, i32 0, i32 33
  %6326 = getelementptr inbounds %struct.Reg, %struct.Reg* %6325, i32 0, i32 0
  %PC.i199 = bitcast %union.anon* %6326 to i64*
  %6327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6328 = getelementptr inbounds %struct.GPR, %struct.GPR* %6327, i32 0, i32 7
  %6329 = getelementptr inbounds %struct.Reg, %struct.Reg* %6328, i32 0, i32 0
  %RDX.i200 = bitcast %union.anon* %6329 to i64*
  %6330 = load i64, i64* %RDX.i200
  %6331 = load i64, i64* %PC.i199
  %6332 = add i64 %6331, 4
  store i64 %6332, i64* %PC.i199
  %6333 = shl i64 %6330, 3
  %6334 = icmp slt i64 %6333, 0
  %6335 = shl i64 %6333, 1
  store i64 %6335, i64* %RDX.i200, align 8
  %6336 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %6337 = zext i1 %6334 to i8
  store i8 %6337, i8* %6336, align 1
  %6338 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %6339 = trunc i64 %6335 to i32
  %6340 = and i32 %6339, 254
  %6341 = call i32 @llvm.ctpop.i32(i32 %6340)
  %6342 = trunc i32 %6341 to i8
  %6343 = and i8 %6342, 1
  %6344 = xor i8 %6343, 1
  store i8 %6344, i8* %6338, align 1
  %6345 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6345, align 1
  %6346 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6347 = icmp eq i64 %6335, 0
  %6348 = zext i1 %6347 to i8
  store i8 %6348, i8* %6346, align 1
  %6349 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %6350 = lshr i64 %6335, 63
  %6351 = trunc i64 %6350 to i8
  store i8 %6351, i8* %6349, align 1
  %6352 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %6352, align 1
  store %struct.Memory* %loadMem_47bcba, %struct.Memory** %MEMORY
  %loadMem_47bcbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %6353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6354 = getelementptr inbounds %struct.GPR, %struct.GPR* %6353, i32 0, i32 33
  %6355 = getelementptr inbounds %struct.Reg, %struct.Reg* %6354, i32 0, i32 0
  %PC.i196 = bitcast %union.anon* %6355 to i64*
  %6356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6357 = getelementptr inbounds %struct.GPR, %struct.GPR* %6356, i32 0, i32 1
  %6358 = getelementptr inbounds %struct.Reg, %struct.Reg* %6357, i32 0, i32 0
  %RAX.i197 = bitcast %union.anon* %6358 to i64*
  %6359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6360 = getelementptr inbounds %struct.GPR, %struct.GPR* %6359, i32 0, i32 7
  %6361 = getelementptr inbounds %struct.Reg, %struct.Reg* %6360, i32 0, i32 0
  %RDX.i198 = bitcast %union.anon* %6361 to i64*
  %6362 = load i64, i64* %RAX.i197
  %6363 = load i64, i64* %RDX.i198
  %6364 = load i64, i64* %PC.i196
  %6365 = add i64 %6364, 3
  store i64 %6365, i64* %PC.i196
  %6366 = add i64 %6363, %6362
  store i64 %6366, i64* %RAX.i197, align 8
  %6367 = icmp ult i64 %6366, %6362
  %6368 = icmp ult i64 %6366, %6363
  %6369 = or i1 %6367, %6368
  %6370 = zext i1 %6369 to i8
  %6371 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6370, i8* %6371, align 1
  %6372 = trunc i64 %6366 to i32
  %6373 = and i32 %6372, 255
  %6374 = call i32 @llvm.ctpop.i32(i32 %6373)
  %6375 = trunc i32 %6374 to i8
  %6376 = and i8 %6375, 1
  %6377 = xor i8 %6376, 1
  %6378 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6377, i8* %6378, align 1
  %6379 = xor i64 %6363, %6362
  %6380 = xor i64 %6379, %6366
  %6381 = lshr i64 %6380, 4
  %6382 = trunc i64 %6381 to i8
  %6383 = and i8 %6382, 1
  %6384 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6383, i8* %6384, align 1
  %6385 = icmp eq i64 %6366, 0
  %6386 = zext i1 %6385 to i8
  %6387 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6386, i8* %6387, align 1
  %6388 = lshr i64 %6366, 63
  %6389 = trunc i64 %6388 to i8
  %6390 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6389, i8* %6390, align 1
  %6391 = lshr i64 %6362, 63
  %6392 = lshr i64 %6363, 63
  %6393 = xor i64 %6388, %6391
  %6394 = xor i64 %6388, %6392
  %6395 = add i64 %6393, %6394
  %6396 = icmp eq i64 %6395, 2
  %6397 = zext i1 %6396 to i8
  %6398 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6397, i8* %6398, align 1
  store %struct.Memory* %loadMem_47bcbe, %struct.Memory** %MEMORY
  %loadMem_47bcc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6400 = getelementptr inbounds %struct.GPR, %struct.GPR* %6399, i32 0, i32 33
  %6401 = getelementptr inbounds %struct.Reg, %struct.Reg* %6400, i32 0, i32 0
  %PC.i193 = bitcast %union.anon* %6401 to i64*
  %6402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6403 = getelementptr inbounds %struct.GPR, %struct.GPR* %6402, i32 0, i32 7
  %6404 = getelementptr inbounds %struct.Reg, %struct.Reg* %6403, i32 0, i32 0
  %RDX.i194 = bitcast %union.anon* %6404 to i64*
  %6405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6406 = getelementptr inbounds %struct.GPR, %struct.GPR* %6405, i32 0, i32 15
  %6407 = getelementptr inbounds %struct.Reg, %struct.Reg* %6406, i32 0, i32 0
  %RBP.i195 = bitcast %union.anon* %6407 to i64*
  %6408 = load i64, i64* %RBP.i195
  %6409 = sub i64 %6408, 4
  %6410 = load i64, i64* %PC.i193
  %6411 = add i64 %6410, 4
  store i64 %6411, i64* %PC.i193
  %6412 = inttoptr i64 %6409 to i32*
  %6413 = load i32, i32* %6412
  %6414 = sext i32 %6413 to i64
  store i64 %6414, i64* %RDX.i194, align 8
  store %struct.Memory* %loadMem_47bcc1, %struct.Memory** %MEMORY
  %loadMem_47bcc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6416 = getelementptr inbounds %struct.GPR, %struct.GPR* %6415, i32 0, i32 33
  %6417 = getelementptr inbounds %struct.Reg, %struct.Reg* %6416, i32 0, i32 0
  %PC.i189 = bitcast %union.anon* %6417 to i64*
  %6418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6419 = getelementptr inbounds %struct.GPR, %struct.GPR* %6418, i32 0, i32 11
  %6420 = getelementptr inbounds %struct.Reg, %struct.Reg* %6419, i32 0, i32 0
  %EDI.i190 = bitcast %union.anon* %6420 to i32*
  %6421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6422 = getelementptr inbounds %struct.GPR, %struct.GPR* %6421, i32 0, i32 1
  %6423 = getelementptr inbounds %struct.Reg, %struct.Reg* %6422, i32 0, i32 0
  %RAX.i191 = bitcast %union.anon* %6423 to i64*
  %6424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6425 = getelementptr inbounds %struct.GPR, %struct.GPR* %6424, i32 0, i32 7
  %6426 = getelementptr inbounds %struct.Reg, %struct.Reg* %6425, i32 0, i32 0
  %RDX.i192 = bitcast %union.anon* %6426 to i64*
  %6427 = load i64, i64* %RAX.i191
  %6428 = load i64, i64* %RDX.i192
  %6429 = mul i64 %6428, 4
  %6430 = add i64 %6429, %6427
  %6431 = load i32, i32* %EDI.i190
  %6432 = zext i32 %6431 to i64
  %6433 = load i64, i64* %PC.i189
  %6434 = add i64 %6433, 3
  store i64 %6434, i64* %PC.i189
  %6435 = inttoptr i64 %6430 to i32*
  store i32 %6431, i32* %6435
  store %struct.Memory* %loadMem_47bcc5, %struct.Memory** %MEMORY
  %loadMem_47bcc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6437 = getelementptr inbounds %struct.GPR, %struct.GPR* %6436, i32 0, i32 33
  %6438 = getelementptr inbounds %struct.Reg, %struct.Reg* %6437, i32 0, i32 0
  %PC.i186 = bitcast %union.anon* %6438 to i64*
  %6439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6440 = getelementptr inbounds %struct.GPR, %struct.GPR* %6439, i32 0, i32 1
  %6441 = getelementptr inbounds %struct.Reg, %struct.Reg* %6440, i32 0, i32 0
  %RAX.i187 = bitcast %union.anon* %6441 to i64*
  %6442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6443 = getelementptr inbounds %struct.GPR, %struct.GPR* %6442, i32 0, i32 15
  %6444 = getelementptr inbounds %struct.Reg, %struct.Reg* %6443, i32 0, i32 0
  %RBP.i188 = bitcast %union.anon* %6444 to i64*
  %6445 = load i64, i64* %RBP.i188
  %6446 = sub i64 %6445, 16
  %6447 = load i64, i64* %PC.i186
  %6448 = add i64 %6447, 4
  store i64 %6448, i64* %PC.i186
  %6449 = inttoptr i64 %6446 to i32*
  %6450 = load i32, i32* %6449
  %6451 = sext i32 %6450 to i64
  store i64 %6451, i64* %RAX.i187, align 8
  store %struct.Memory* %loadMem_47bcc8, %struct.Memory** %MEMORY
  %loadMem_47bccc = load %struct.Memory*, %struct.Memory** %MEMORY
  %6452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6453 = getelementptr inbounds %struct.GPR, %struct.GPR* %6452, i32 0, i32 33
  %6454 = getelementptr inbounds %struct.Reg, %struct.Reg* %6453, i32 0, i32 0
  %PC.i183 = bitcast %union.anon* %6454 to i64*
  %6455 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6456 = getelementptr inbounds %struct.GPR, %struct.GPR* %6455, i32 0, i32 1
  %6457 = getelementptr inbounds %struct.Reg, %struct.Reg* %6456, i32 0, i32 0
  %RAX.i184 = bitcast %union.anon* %6457 to i64*
  %6458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6459 = getelementptr inbounds %struct.GPR, %struct.GPR* %6458, i32 0, i32 11
  %6460 = getelementptr inbounds %struct.Reg, %struct.Reg* %6459, i32 0, i32 0
  %RDI.i185 = bitcast %union.anon* %6460 to i64*
  %6461 = load i64, i64* %RAX.i184
  %6462 = mul i64 %6461, 2
  %6463 = add i64 %6462, 4953296
  %6464 = load i64, i64* %PC.i183
  %6465 = add i64 %6464, 8
  store i64 %6465, i64* %PC.i183
  %6466 = inttoptr i64 %6463 to i16*
  %6467 = load i16, i16* %6466
  %6468 = sext i16 %6467 to i64
  %6469 = and i64 %6468, 4294967295
  store i64 %6469, i64* %RDI.i185, align 8
  store %struct.Memory* %loadMem_47bccc, %struct.Memory** %MEMORY
  %loadMem_47bcd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6471 = getelementptr inbounds %struct.GPR, %struct.GPR* %6470, i32 0, i32 33
  %6472 = getelementptr inbounds %struct.Reg, %struct.Reg* %6471, i32 0, i32 0
  %PC.i180 = bitcast %union.anon* %6472 to i64*
  %6473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6474 = getelementptr inbounds %struct.GPR, %struct.GPR* %6473, i32 0, i32 5
  %6475 = getelementptr inbounds %struct.Reg, %struct.Reg* %6474, i32 0, i32 0
  %RCX.i181 = bitcast %union.anon* %6475 to i64*
  %6476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6477 = getelementptr inbounds %struct.GPR, %struct.GPR* %6476, i32 0, i32 15
  %6478 = getelementptr inbounds %struct.Reg, %struct.Reg* %6477, i32 0, i32 0
  %RBP.i182 = bitcast %union.anon* %6478 to i64*
  %6479 = load i64, i64* %RBP.i182
  %6480 = sub i64 %6479, 20
  %6481 = load i64, i64* %PC.i180
  %6482 = add i64 %6481, 3
  store i64 %6482, i64* %PC.i180
  %6483 = inttoptr i64 %6480 to i32*
  %6484 = load i32, i32* %6483
  %6485 = zext i32 %6484 to i64
  store i64 %6485, i64* %RCX.i181, align 8
  store %struct.Memory* %loadMem_47bcd4, %struct.Memory** %MEMORY
  %loadMem_47bcd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6486 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6487 = getelementptr inbounds %struct.GPR, %struct.GPR* %6486, i32 0, i32 33
  %6488 = getelementptr inbounds %struct.Reg, %struct.Reg* %6487, i32 0, i32 0
  %PC.i176 = bitcast %union.anon* %6488 to i64*
  %6489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6490 = getelementptr inbounds %struct.GPR, %struct.GPR* %6489, i32 0, i32 5
  %6491 = getelementptr inbounds %struct.Reg, %struct.Reg* %6490, i32 0, i32 0
  %6492 = bitcast %union.anon* %6491 to %struct.anon.2*
  %CL.i177 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %6492, i32 0, i32 0
  %6493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6494 = getelementptr inbounds %struct.GPR, %struct.GPR* %6493, i32 0, i32 11
  %6495 = getelementptr inbounds %struct.Reg, %struct.Reg* %6494, i32 0, i32 0
  %RDI.i178 = bitcast %union.anon* %6495 to i64*
  %6496 = load i64, i64* %RDI.i178
  %6497 = load i8, i8* %CL.i177
  %6498 = zext i8 %6497 to i64
  %6499 = load i64, i64* %PC.i176
  %6500 = add i64 %6499, 2
  store i64 %6500, i64* %PC.i176
  %6501 = trunc i64 %6498 to i5
  switch i5 %6501, label %6508 [
    i5 0, label %routine_shll__cl___edi.exit179
    i5 1, label %6502
  ]

; <label>:6502:                                   ; preds = %routine_shll__cl___edi.exit215
  %6503 = trunc i64 %6496 to i32
  %6504 = shl i32 %6503, 1
  %6505 = icmp slt i32 %6503, 0
  %6506 = icmp slt i32 %6504, 0
  %6507 = xor i1 %6505, %6506
  br label %6517

; <label>:6508:                                   ; preds = %routine_shll__cl___edi.exit215
  %6509 = and i64 %6498, 31
  %6510 = add i64 %6509, 4294967295
  %6511 = and i64 %6496, 4294967295
  %6512 = and i64 %6510, 4294967295
  %6513 = shl i64 %6511, %6512
  %6514 = trunc i64 %6513 to i32
  %6515 = icmp slt i32 %6514, 0
  %6516 = shl i32 %6514, 1
  br label %6517

; <label>:6517:                                   ; preds = %6508, %6502
  %6518 = phi i1 [ %6505, %6502 ], [ %6515, %6508 ]
  %6519 = phi i1 [ %6507, %6502 ], [ false, %6508 ]
  %6520 = phi i32 [ %6504, %6502 ], [ %6516, %6508 ]
  %6521 = zext i32 %6520 to i64
  store i64 %6521, i64* %RDI.i178, align 8
  %6522 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %6523 = zext i1 %6518 to i8
  store i8 %6523, i8* %6522, align 1
  %6524 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %6525 = and i32 %6520, 254
  %6526 = call i32 @llvm.ctpop.i32(i32 %6525)
  %6527 = trunc i32 %6526 to i8
  %6528 = and i8 %6527, 1
  %6529 = xor i8 %6528, 1
  store i8 %6529, i8* %6524, align 1
  %6530 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6530, align 1
  %6531 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6532 = icmp eq i32 %6520, 0
  %6533 = zext i1 %6532 to i8
  store i8 %6533, i8* %6531, align 1
  %6534 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %6535 = lshr i32 %6520, 31
  %6536 = trunc i32 %6535 to i8
  store i8 %6536, i8* %6534, align 1
  %6537 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %6538 = zext i1 %6519 to i8
  store i8 %6538, i8* %6537, align 1
  br label %routine_shll__cl___edi.exit179

routine_shll__cl___edi.exit179:                   ; preds = %routine_shll__cl___edi.exit215, %6517
  store %struct.Memory* %loadMem_47bcd7, %struct.Memory** %MEMORY
  %loadMem_47bcd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6539 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6540 = getelementptr inbounds %struct.GPR, %struct.GPR* %6539, i32 0, i32 33
  %6541 = getelementptr inbounds %struct.Reg, %struct.Reg* %6540, i32 0, i32 0
  %PC.i173 = bitcast %union.anon* %6541 to i64*
  %6542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6543 = getelementptr inbounds %struct.GPR, %struct.GPR* %6542, i32 0, i32 1
  %6544 = getelementptr inbounds %struct.Reg, %struct.Reg* %6543, i32 0, i32 0
  %RAX.i174 = bitcast %union.anon* %6544 to i64*
  %6545 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6546 = getelementptr inbounds %struct.GPR, %struct.GPR* %6545, i32 0, i32 15
  %6547 = getelementptr inbounds %struct.Reg, %struct.Reg* %6546, i32 0, i32 0
  %RBP.i175 = bitcast %union.anon* %6547 to i64*
  %6548 = load i64, i64* %RBP.i175
  %6549 = sub i64 %6548, 12
  %6550 = load i64, i64* %PC.i173
  %6551 = add i64 %6550, 4
  store i64 %6551, i64* %PC.i173
  %6552 = inttoptr i64 %6549 to i32*
  %6553 = load i32, i32* %6552
  %6554 = sext i32 %6553 to i64
  store i64 %6554, i64* %RAX.i174, align 8
  store %struct.Memory* %loadMem_47bcd9, %struct.Memory** %MEMORY
  %loadMem_47bcdd = load %struct.Memory*, %struct.Memory** %MEMORY
  %6555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6556 = getelementptr inbounds %struct.GPR, %struct.GPR* %6555, i32 0, i32 33
  %6557 = getelementptr inbounds %struct.Reg, %struct.Reg* %6556, i32 0, i32 0
  %PC.i171 = bitcast %union.anon* %6557 to i64*
  %6558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6559 = getelementptr inbounds %struct.GPR, %struct.GPR* %6558, i32 0, i32 1
  %6560 = getelementptr inbounds %struct.Reg, %struct.Reg* %6559, i32 0, i32 0
  %RAX.i172 = bitcast %union.anon* %6560 to i64*
  %6561 = load i64, i64* %RAX.i172
  %6562 = load i64, i64* %PC.i171
  %6563 = add i64 %6562, 4
  store i64 %6563, i64* %PC.i171
  %6564 = shl i64 %6561, 5
  %6565 = icmp slt i64 %6564, 0
  %6566 = shl i64 %6564, 1
  store i64 %6566, i64* %RAX.i172, align 8
  %6567 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %6568 = zext i1 %6565 to i8
  store i8 %6568, i8* %6567, align 1
  %6569 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %6570 = trunc i64 %6566 to i32
  %6571 = and i32 %6570, 254
  %6572 = call i32 @llvm.ctpop.i32(i32 %6571)
  %6573 = trunc i32 %6572 to i8
  %6574 = and i8 %6573, 1
  %6575 = xor i8 %6574, 1
  store i8 %6575, i8* %6569, align 1
  %6576 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6576, align 1
  %6577 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6578 = icmp eq i64 %6566, 0
  %6579 = zext i1 %6578 to i8
  store i8 %6579, i8* %6577, align 1
  %6580 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %6581 = lshr i64 %6566, 63
  %6582 = trunc i64 %6581 to i8
  store i8 %6582, i8* %6580, align 1
  %6583 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %6583, align 1
  store %struct.Memory* %loadMem_47bcdd, %struct.Memory** %MEMORY
  %loadMem_47bce1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6584 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6585 = getelementptr inbounds %struct.GPR, %struct.GPR* %6584, i32 0, i32 33
  %6586 = getelementptr inbounds %struct.Reg, %struct.Reg* %6585, i32 0, i32 0
  %PC.i168 = bitcast %union.anon* %6586 to i64*
  %6587 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6588 = getelementptr inbounds %struct.GPR, %struct.GPR* %6587, i32 0, i32 7
  %6589 = getelementptr inbounds %struct.Reg, %struct.Reg* %6588, i32 0, i32 0
  %RDX.i169 = bitcast %union.anon* %6589 to i64*
  %6590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6591 = getelementptr inbounds %struct.GPR, %struct.GPR* %6590, i32 0, i32 15
  %6592 = getelementptr inbounds %struct.Reg, %struct.Reg* %6591, i32 0, i32 0
  %RBP.i170 = bitcast %union.anon* %6592 to i64*
  %6593 = load i64, i64* %RBP.i170
  %6594 = sub i64 %6593, 64
  %6595 = load i64, i64* %PC.i168
  %6596 = add i64 %6595, 4
  store i64 %6596, i64* %PC.i168
  %6597 = inttoptr i64 %6594 to i64*
  %6598 = load i64, i64* %6597
  store i64 %6598, i64* %RDX.i169, align 8
  store %struct.Memory* %loadMem_47bce1, %struct.Memory** %MEMORY
  %loadMem_47bce5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6599 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6600 = getelementptr inbounds %struct.GPR, %struct.GPR* %6599, i32 0, i32 33
  %6601 = getelementptr inbounds %struct.Reg, %struct.Reg* %6600, i32 0, i32 0
  %PC.i165 = bitcast %union.anon* %6601 to i64*
  %6602 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6603 = getelementptr inbounds %struct.GPR, %struct.GPR* %6602, i32 0, i32 1
  %6604 = getelementptr inbounds %struct.Reg, %struct.Reg* %6603, i32 0, i32 0
  %RAX.i166 = bitcast %union.anon* %6604 to i64*
  %6605 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6606 = getelementptr inbounds %struct.GPR, %struct.GPR* %6605, i32 0, i32 7
  %6607 = getelementptr inbounds %struct.Reg, %struct.Reg* %6606, i32 0, i32 0
  %RDX.i167 = bitcast %union.anon* %6607 to i64*
  %6608 = load i64, i64* %RDX.i167
  %6609 = load i64, i64* %RAX.i166
  %6610 = load i64, i64* %PC.i165
  %6611 = add i64 %6610, 3
  store i64 %6611, i64* %PC.i165
  %6612 = add i64 %6609, %6608
  store i64 %6612, i64* %RDX.i167, align 8
  %6613 = icmp ult i64 %6612, %6608
  %6614 = icmp ult i64 %6612, %6609
  %6615 = or i1 %6613, %6614
  %6616 = zext i1 %6615 to i8
  %6617 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6616, i8* %6617, align 1
  %6618 = trunc i64 %6612 to i32
  %6619 = and i32 %6618, 255
  %6620 = call i32 @llvm.ctpop.i32(i32 %6619)
  %6621 = trunc i32 %6620 to i8
  %6622 = and i8 %6621, 1
  %6623 = xor i8 %6622, 1
  %6624 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6623, i8* %6624, align 1
  %6625 = xor i64 %6609, %6608
  %6626 = xor i64 %6625, %6612
  %6627 = lshr i64 %6626, 4
  %6628 = trunc i64 %6627 to i8
  %6629 = and i8 %6628, 1
  %6630 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6629, i8* %6630, align 1
  %6631 = icmp eq i64 %6612, 0
  %6632 = zext i1 %6631 to i8
  %6633 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6632, i8* %6633, align 1
  %6634 = lshr i64 %6612, 63
  %6635 = trunc i64 %6634 to i8
  %6636 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6635, i8* %6636, align 1
  %6637 = lshr i64 %6608, 63
  %6638 = lshr i64 %6609, 63
  %6639 = xor i64 %6634, %6637
  %6640 = xor i64 %6634, %6638
  %6641 = add i64 %6639, %6640
  %6642 = icmp eq i64 %6641, 2
  %6643 = zext i1 %6642 to i8
  %6644 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6643, i8* %6644, align 1
  store %struct.Memory* %loadMem_47bce5, %struct.Memory** %MEMORY
  %loadMem_47bce8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6645 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6646 = getelementptr inbounds %struct.GPR, %struct.GPR* %6645, i32 0, i32 33
  %6647 = getelementptr inbounds %struct.Reg, %struct.Reg* %6646, i32 0, i32 0
  %PC.i162 = bitcast %union.anon* %6647 to i64*
  %6648 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6649 = getelementptr inbounds %struct.GPR, %struct.GPR* %6648, i32 0, i32 1
  %6650 = getelementptr inbounds %struct.Reg, %struct.Reg* %6649, i32 0, i32 0
  %RAX.i163 = bitcast %union.anon* %6650 to i64*
  %6651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6652 = getelementptr inbounds %struct.GPR, %struct.GPR* %6651, i32 0, i32 15
  %6653 = getelementptr inbounds %struct.Reg, %struct.Reg* %6652, i32 0, i32 0
  %RBP.i164 = bitcast %union.anon* %6653 to i64*
  %6654 = load i64, i64* %RBP.i164
  %6655 = sub i64 %6654, 8
  %6656 = load i64, i64* %PC.i162
  %6657 = add i64 %6656, 4
  store i64 %6657, i64* %PC.i162
  %6658 = inttoptr i64 %6655 to i32*
  %6659 = load i32, i32* %6658
  %6660 = sext i32 %6659 to i64
  store i64 %6660, i64* %RAX.i163, align 8
  store %struct.Memory* %loadMem_47bce8, %struct.Memory** %MEMORY
  %loadMem_47bcec = load %struct.Memory*, %struct.Memory** %MEMORY
  %6661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6662 = getelementptr inbounds %struct.GPR, %struct.GPR* %6661, i32 0, i32 33
  %6663 = getelementptr inbounds %struct.Reg, %struct.Reg* %6662, i32 0, i32 0
  %PC.i160 = bitcast %union.anon* %6663 to i64*
  %6664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6665 = getelementptr inbounds %struct.GPR, %struct.GPR* %6664, i32 0, i32 1
  %6666 = getelementptr inbounds %struct.Reg, %struct.Reg* %6665, i32 0, i32 0
  %RAX.i161 = bitcast %union.anon* %6666 to i64*
  %6667 = load i64, i64* %RAX.i161
  %6668 = load i64, i64* %PC.i160
  %6669 = add i64 %6668, 4
  store i64 %6669, i64* %PC.i160
  %6670 = shl i64 %6667, 3
  %6671 = icmp slt i64 %6670, 0
  %6672 = shl i64 %6670, 1
  store i64 %6672, i64* %RAX.i161, align 8
  %6673 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %6674 = zext i1 %6671 to i8
  store i8 %6674, i8* %6673, align 1
  %6675 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %6676 = trunc i64 %6672 to i32
  %6677 = and i32 %6676, 254
  %6678 = call i32 @llvm.ctpop.i32(i32 %6677)
  %6679 = trunc i32 %6678 to i8
  %6680 = and i8 %6679, 1
  %6681 = xor i8 %6680, 1
  store i8 %6681, i8* %6675, align 1
  %6682 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6682, align 1
  %6683 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6684 = icmp eq i64 %6672, 0
  %6685 = zext i1 %6684 to i8
  store i8 %6685, i8* %6683, align 1
  %6686 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %6687 = lshr i64 %6672, 63
  %6688 = trunc i64 %6687 to i8
  store i8 %6688, i8* %6686, align 1
  %6689 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %6689, align 1
  store %struct.Memory* %loadMem_47bcec, %struct.Memory** %MEMORY
  %loadMem_47bcf0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6691 = getelementptr inbounds %struct.GPR, %struct.GPR* %6690, i32 0, i32 33
  %6692 = getelementptr inbounds %struct.Reg, %struct.Reg* %6691, i32 0, i32 0
  %PC.i157 = bitcast %union.anon* %6692 to i64*
  %6693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6694 = getelementptr inbounds %struct.GPR, %struct.GPR* %6693, i32 0, i32 1
  %6695 = getelementptr inbounds %struct.Reg, %struct.Reg* %6694, i32 0, i32 0
  %RAX.i158 = bitcast %union.anon* %6695 to i64*
  %6696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6697 = getelementptr inbounds %struct.GPR, %struct.GPR* %6696, i32 0, i32 7
  %6698 = getelementptr inbounds %struct.Reg, %struct.Reg* %6697, i32 0, i32 0
  %RDX.i159 = bitcast %union.anon* %6698 to i64*
  %6699 = load i64, i64* %RDX.i159
  %6700 = load i64, i64* %RAX.i158
  %6701 = load i64, i64* %PC.i157
  %6702 = add i64 %6701, 3
  store i64 %6702, i64* %PC.i157
  %6703 = add i64 %6700, %6699
  store i64 %6703, i64* %RDX.i159, align 8
  %6704 = icmp ult i64 %6703, %6699
  %6705 = icmp ult i64 %6703, %6700
  %6706 = or i1 %6704, %6705
  %6707 = zext i1 %6706 to i8
  %6708 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6707, i8* %6708, align 1
  %6709 = trunc i64 %6703 to i32
  %6710 = and i32 %6709, 255
  %6711 = call i32 @llvm.ctpop.i32(i32 %6710)
  %6712 = trunc i32 %6711 to i8
  %6713 = and i8 %6712, 1
  %6714 = xor i8 %6713, 1
  %6715 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6714, i8* %6715, align 1
  %6716 = xor i64 %6700, %6699
  %6717 = xor i64 %6716, %6703
  %6718 = lshr i64 %6717, 4
  %6719 = trunc i64 %6718 to i8
  %6720 = and i8 %6719, 1
  %6721 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6720, i8* %6721, align 1
  %6722 = icmp eq i64 %6703, 0
  %6723 = zext i1 %6722 to i8
  %6724 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6723, i8* %6724, align 1
  %6725 = lshr i64 %6703, 63
  %6726 = trunc i64 %6725 to i8
  %6727 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6726, i8* %6727, align 1
  %6728 = lshr i64 %6699, 63
  %6729 = lshr i64 %6700, 63
  %6730 = xor i64 %6725, %6728
  %6731 = xor i64 %6725, %6729
  %6732 = add i64 %6730, %6731
  %6733 = icmp eq i64 %6732, 2
  %6734 = zext i1 %6733 to i8
  %6735 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6734, i8* %6735, align 1
  store %struct.Memory* %loadMem_47bcf0, %struct.Memory** %MEMORY
  %loadMem_47bcf3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6737 = getelementptr inbounds %struct.GPR, %struct.GPR* %6736, i32 0, i32 33
  %6738 = getelementptr inbounds %struct.Reg, %struct.Reg* %6737, i32 0, i32 0
  %PC.i154 = bitcast %union.anon* %6738 to i64*
  %6739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6740 = getelementptr inbounds %struct.GPR, %struct.GPR* %6739, i32 0, i32 1
  %6741 = getelementptr inbounds %struct.Reg, %struct.Reg* %6740, i32 0, i32 0
  %RAX.i155 = bitcast %union.anon* %6741 to i64*
  %6742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6743 = getelementptr inbounds %struct.GPR, %struct.GPR* %6742, i32 0, i32 15
  %6744 = getelementptr inbounds %struct.Reg, %struct.Reg* %6743, i32 0, i32 0
  %RBP.i156 = bitcast %union.anon* %6744 to i64*
  %6745 = load i64, i64* %RBP.i156
  %6746 = sub i64 %6745, 4
  %6747 = load i64, i64* %PC.i154
  %6748 = add i64 %6747, 4
  store i64 %6748, i64* %PC.i154
  %6749 = inttoptr i64 %6746 to i32*
  %6750 = load i32, i32* %6749
  %6751 = sext i32 %6750 to i64
  store i64 %6751, i64* %RAX.i155, align 8
  store %struct.Memory* %loadMem_47bcf3, %struct.Memory** %MEMORY
  %loadMem_47bcf7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6753 = getelementptr inbounds %struct.GPR, %struct.GPR* %6752, i32 0, i32 33
  %6754 = getelementptr inbounds %struct.Reg, %struct.Reg* %6753, i32 0, i32 0
  %PC.i150 = bitcast %union.anon* %6754 to i64*
  %6755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6756 = getelementptr inbounds %struct.GPR, %struct.GPR* %6755, i32 0, i32 11
  %6757 = getelementptr inbounds %struct.Reg, %struct.Reg* %6756, i32 0, i32 0
  %EDI.i151 = bitcast %union.anon* %6757 to i32*
  %6758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6759 = getelementptr inbounds %struct.GPR, %struct.GPR* %6758, i32 0, i32 1
  %6760 = getelementptr inbounds %struct.Reg, %struct.Reg* %6759, i32 0, i32 0
  %RAX.i152 = bitcast %union.anon* %6760 to i64*
  %6761 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6762 = getelementptr inbounds %struct.GPR, %struct.GPR* %6761, i32 0, i32 7
  %6763 = getelementptr inbounds %struct.Reg, %struct.Reg* %6762, i32 0, i32 0
  %RDX.i153 = bitcast %union.anon* %6763 to i64*
  %6764 = load i64, i64* %RDX.i153
  %6765 = load i64, i64* %RAX.i152
  %6766 = mul i64 %6765, 4
  %6767 = add i64 %6766, %6764
  %6768 = load i32, i32* %EDI.i151
  %6769 = zext i32 %6768 to i64
  %6770 = load i64, i64* %PC.i150
  %6771 = add i64 %6770, 3
  store i64 %6771, i64* %PC.i150
  %6772 = inttoptr i64 %6767 to i32*
  store i32 %6768, i32* %6772
  store %struct.Memory* %loadMem_47bcf7, %struct.Memory** %MEMORY
  br label %block_.L_47bcfa

block_.L_47bcfa:                                  ; preds = %routine_shll__cl___edi.exit179, %routine_shll__cl___edi.exit306
  %loadMem_47bcfa = load %struct.Memory*, %struct.Memory** %MEMORY
  %6773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6774 = getelementptr inbounds %struct.GPR, %struct.GPR* %6773, i32 0, i32 33
  %6775 = getelementptr inbounds %struct.Reg, %struct.Reg* %6774, i32 0, i32 0
  %PC.i148 = bitcast %union.anon* %6775 to i64*
  %6776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6777 = getelementptr inbounds %struct.GPR, %struct.GPR* %6776, i32 0, i32 1
  %6778 = getelementptr inbounds %struct.Reg, %struct.Reg* %6777, i32 0, i32 0
  %RAX.i149 = bitcast %union.anon* %6778 to i64*
  %6779 = load i64, i64* %PC.i148
  %6780 = add i64 %6779, 10
  store i64 %6780, i64* %PC.i148
  store i64 7397968, i64* %RAX.i149, align 8
  store %struct.Memory* %loadMem_47bcfa, %struct.Memory** %MEMORY
  %loadMem_47bd04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6781 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6782 = getelementptr inbounds %struct.GPR, %struct.GPR* %6781, i32 0, i32 33
  %6783 = getelementptr inbounds %struct.Reg, %struct.Reg* %6782, i32 0, i32 0
  %PC.i145 = bitcast %union.anon* %6783 to i64*
  %6784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6785 = getelementptr inbounds %struct.GPR, %struct.GPR* %6784, i32 0, i32 1
  %6786 = getelementptr inbounds %struct.Reg, %struct.Reg* %6785, i32 0, i32 0
  %RAX.i146 = bitcast %union.anon* %6786 to i64*
  %6787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6788 = getelementptr inbounds %struct.GPR, %struct.GPR* %6787, i32 0, i32 5
  %6789 = getelementptr inbounds %struct.Reg, %struct.Reg* %6788, i32 0, i32 0
  %RCX.i147 = bitcast %union.anon* %6789 to i64*
  %6790 = load i64, i64* %RAX.i146
  %6791 = load i64, i64* %PC.i145
  %6792 = add i64 %6791, 3
  store i64 %6792, i64* %PC.i145
  store i64 %6790, i64* %RCX.i147, align 8
  store %struct.Memory* %loadMem_47bd04, %struct.Memory** %MEMORY
  %loadMem_47bd07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6793 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6794 = getelementptr inbounds %struct.GPR, %struct.GPR* %6793, i32 0, i32 33
  %6795 = getelementptr inbounds %struct.Reg, %struct.Reg* %6794, i32 0, i32 0
  %PC.i143 = bitcast %union.anon* %6795 to i64*
  %6796 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6797 = getelementptr inbounds %struct.GPR, %struct.GPR* %6796, i32 0, i32 5
  %6798 = getelementptr inbounds %struct.Reg, %struct.Reg* %6797, i32 0, i32 0
  %RCX.i144 = bitcast %union.anon* %6798 to i64*
  %6799 = load i64, i64* %RCX.i144
  %6800 = load i64, i64* %PC.i143
  %6801 = add i64 %6800, 7
  store i64 %6801, i64* %PC.i143
  %6802 = add i64 832, %6799
  store i64 %6802, i64* %RCX.i144, align 8
  %6803 = icmp ult i64 %6802, %6799
  %6804 = icmp ult i64 %6802, 832
  %6805 = or i1 %6803, %6804
  %6806 = zext i1 %6805 to i8
  %6807 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6806, i8* %6807, align 1
  %6808 = trunc i64 %6802 to i32
  %6809 = and i32 %6808, 255
  %6810 = call i32 @llvm.ctpop.i32(i32 %6809)
  %6811 = trunc i32 %6810 to i8
  %6812 = and i8 %6811, 1
  %6813 = xor i8 %6812, 1
  %6814 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6813, i8* %6814, align 1
  %6815 = xor i64 832, %6799
  %6816 = xor i64 %6815, %6802
  %6817 = lshr i64 %6816, 4
  %6818 = trunc i64 %6817 to i8
  %6819 = and i8 %6818, 1
  %6820 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6819, i8* %6820, align 1
  %6821 = icmp eq i64 %6802, 0
  %6822 = zext i1 %6821 to i8
  %6823 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6822, i8* %6823, align 1
  %6824 = lshr i64 %6802, 63
  %6825 = trunc i64 %6824 to i8
  %6826 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6825, i8* %6826, align 1
  %6827 = lshr i64 %6799, 63
  %6828 = xor i64 %6824, %6827
  %6829 = add i64 %6828, %6824
  %6830 = icmp eq i64 %6829, 2
  %6831 = zext i1 %6830 to i8
  %6832 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6831, i8* %6832, align 1
  store %struct.Memory* %loadMem_47bd07, %struct.Memory** %MEMORY
  %loadMem_47bd0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6833 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6834 = getelementptr inbounds %struct.GPR, %struct.GPR* %6833, i32 0, i32 33
  %6835 = getelementptr inbounds %struct.Reg, %struct.Reg* %6834, i32 0, i32 0
  %PC.i141 = bitcast %union.anon* %6835 to i64*
  %6836 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6837 = getelementptr inbounds %struct.GPR, %struct.GPR* %6836, i32 0, i32 7
  %6838 = getelementptr inbounds %struct.Reg, %struct.Reg* %6837, i32 0, i32 0
  %RDX.i142 = bitcast %union.anon* %6838 to i64*
  %6839 = load i64, i64* %PC.i141
  %6840 = add i64 %6839, 10
  store i64 %6840, i64* %PC.i141
  store i64 7131024, i64* %RDX.i142, align 8
  store %struct.Memory* %loadMem_47bd0e, %struct.Memory** %MEMORY
  %loadMem_47bd18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6842 = getelementptr inbounds %struct.GPR, %struct.GPR* %6841, i32 0, i32 33
  %6843 = getelementptr inbounds %struct.Reg, %struct.Reg* %6842, i32 0, i32 0
  %PC.i138 = bitcast %union.anon* %6843 to i64*
  %6844 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6845 = getelementptr inbounds %struct.GPR, %struct.GPR* %6844, i32 0, i32 9
  %6846 = getelementptr inbounds %struct.Reg, %struct.Reg* %6845, i32 0, i32 0
  %RSI.i139 = bitcast %union.anon* %6846 to i64*
  %6847 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6848 = getelementptr inbounds %struct.GPR, %struct.GPR* %6847, i32 0, i32 15
  %6849 = getelementptr inbounds %struct.Reg, %struct.Reg* %6848, i32 0, i32 0
  %RBP.i140 = bitcast %union.anon* %6849 to i64*
  %6850 = load i64, i64* %RBP.i140
  %6851 = sub i64 %6850, 16
  %6852 = load i64, i64* %PC.i138
  %6853 = add i64 %6852, 4
  store i64 %6853, i64* %PC.i138
  %6854 = inttoptr i64 %6851 to i32*
  %6855 = load i32, i32* %6854
  %6856 = sext i32 %6855 to i64
  store i64 %6856, i64* %RSI.i139, align 8
  store %struct.Memory* %loadMem_47bd18, %struct.Memory** %MEMORY
  %loadMem_47bd1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %6857 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6858 = getelementptr inbounds %struct.GPR, %struct.GPR* %6857, i32 0, i32 33
  %6859 = getelementptr inbounds %struct.Reg, %struct.Reg* %6858, i32 0, i32 0
  %PC.i135 = bitcast %union.anon* %6859 to i64*
  %6860 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6861 = getelementptr inbounds %struct.GPR, %struct.GPR* %6860, i32 0, i32 9
  %6862 = getelementptr inbounds %struct.Reg, %struct.Reg* %6861, i32 0, i32 0
  %RSI.i136 = bitcast %union.anon* %6862 to i64*
  %6863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6864 = getelementptr inbounds %struct.GPR, %struct.GPR* %6863, i32 0, i32 11
  %6865 = getelementptr inbounds %struct.Reg, %struct.Reg* %6864, i32 0, i32 0
  %RDI.i137 = bitcast %union.anon* %6865 to i64*
  %6866 = load i64, i64* %RSI.i136
  %6867 = mul i64 %6866, 2
  %6868 = add i64 %6867, 4953328
  %6869 = load i64, i64* %PC.i135
  %6870 = add i64 %6869, 8
  store i64 %6870, i64* %PC.i135
  %6871 = inttoptr i64 %6868 to i16*
  %6872 = load i16, i16* %6871
  %6873 = sext i16 %6872 to i64
  %6874 = and i64 %6873, 4294967295
  store i64 %6874, i64* %RDI.i137, align 8
  store %struct.Memory* %loadMem_47bd1c, %struct.Memory** %MEMORY
  %loadMem_47bd24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6875 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6876 = getelementptr inbounds %struct.GPR, %struct.GPR* %6875, i32 0, i32 33
  %6877 = getelementptr inbounds %struct.Reg, %struct.Reg* %6876, i32 0, i32 0
  %PC.i132 = bitcast %union.anon* %6877 to i64*
  %6878 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6879 = getelementptr inbounds %struct.GPR, %struct.GPR* %6878, i32 0, i32 17
  %6880 = getelementptr inbounds %struct.Reg, %struct.Reg* %6879, i32 0, i32 0
  %R8D.i133 = bitcast %union.anon* %6880 to i32*
  %6881 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6882 = getelementptr inbounds %struct.GPR, %struct.GPR* %6881, i32 0, i32 15
  %6883 = getelementptr inbounds %struct.Reg, %struct.Reg* %6882, i32 0, i32 0
  %RBP.i134 = bitcast %union.anon* %6883 to i64*
  %6884 = bitcast i32* %R8D.i133 to i64*
  %6885 = load i64, i64* %RBP.i134
  %6886 = sub i64 %6885, 20
  %6887 = load i64, i64* %PC.i132
  %6888 = add i64 %6887, 4
  store i64 %6888, i64* %PC.i132
  %6889 = inttoptr i64 %6886 to i32*
  %6890 = load i32, i32* %6889
  %6891 = zext i32 %6890 to i64
  store i64 %6891, i64* %6884, align 8
  store %struct.Memory* %loadMem_47bd24, %struct.Memory** %MEMORY
  %loadMem_47bd28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6893 = getelementptr inbounds %struct.GPR, %struct.GPR* %6892, i32 0, i32 33
  %6894 = getelementptr inbounds %struct.Reg, %struct.Reg* %6893, i32 0, i32 0
  %PC.i129 = bitcast %union.anon* %6894 to i64*
  %6895 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6896 = getelementptr inbounds %struct.GPR, %struct.GPR* %6895, i32 0, i32 5
  %6897 = getelementptr inbounds %struct.Reg, %struct.Reg* %6896, i32 0, i32 0
  %RCX.i130 = bitcast %union.anon* %6897 to i64*
  %6898 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6899 = getelementptr inbounds %struct.GPR, %struct.GPR* %6898, i32 0, i32 15
  %6900 = getelementptr inbounds %struct.Reg, %struct.Reg* %6899, i32 0, i32 0
  %RBP.i131 = bitcast %union.anon* %6900 to i64*
  %6901 = load i64, i64* %RBP.i131
  %6902 = sub i64 %6901, 72
  %6903 = load i64, i64* %RCX.i130
  %6904 = load i64, i64* %PC.i129
  %6905 = add i64 %6904, 4
  store i64 %6905, i64* %PC.i129
  %6906 = inttoptr i64 %6902 to i64*
  store i64 %6903, i64* %6906
  store %struct.Memory* %loadMem_47bd28, %struct.Memory** %MEMORY
  %loadMem_47bd2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %6907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6908 = getelementptr inbounds %struct.GPR, %struct.GPR* %6907, i32 0, i32 33
  %6909 = getelementptr inbounds %struct.Reg, %struct.Reg* %6908, i32 0, i32 0
  %PC.i127 = bitcast %union.anon* %6909 to i64*
  %6910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6911 = getelementptr inbounds %struct.GPR, %struct.GPR* %6910, i32 0, i32 17
  %6912 = getelementptr inbounds %struct.Reg, %struct.Reg* %6911, i32 0, i32 0
  %R8D.i = bitcast %union.anon* %6912 to i32*
  %6913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6914 = getelementptr inbounds %struct.GPR, %struct.GPR* %6913, i32 0, i32 5
  %6915 = getelementptr inbounds %struct.Reg, %struct.Reg* %6914, i32 0, i32 0
  %RCX.i128 = bitcast %union.anon* %6915 to i64*
  %6916 = load i32, i32* %R8D.i
  %6917 = zext i32 %6916 to i64
  %6918 = load i64, i64* %PC.i127
  %6919 = add i64 %6918, 3
  store i64 %6919, i64* %PC.i127
  %6920 = and i64 %6917, 4294967295
  store i64 %6920, i64* %RCX.i128, align 8
  store %struct.Memory* %loadMem_47bd2c, %struct.Memory** %MEMORY
  %loadMem_47bd2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %6921 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6922 = getelementptr inbounds %struct.GPR, %struct.GPR* %6921, i32 0, i32 33
  %6923 = getelementptr inbounds %struct.Reg, %struct.Reg* %6922, i32 0, i32 0
  %PC.i123 = bitcast %union.anon* %6923 to i64*
  %6924 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6925 = getelementptr inbounds %struct.GPR, %struct.GPR* %6924, i32 0, i32 5
  %6926 = getelementptr inbounds %struct.Reg, %struct.Reg* %6925, i32 0, i32 0
  %6927 = bitcast %union.anon* %6926 to %struct.anon.2*
  %CL.i124 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %6927, i32 0, i32 0
  %6928 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6929 = getelementptr inbounds %struct.GPR, %struct.GPR* %6928, i32 0, i32 11
  %6930 = getelementptr inbounds %struct.Reg, %struct.Reg* %6929, i32 0, i32 0
  %RDI.i125 = bitcast %union.anon* %6930 to i64*
  %6931 = load i64, i64* %RDI.i125
  %6932 = load i8, i8* %CL.i124
  %6933 = zext i8 %6932 to i64
  %6934 = load i64, i64* %PC.i123
  %6935 = add i64 %6934, 2
  store i64 %6935, i64* %PC.i123
  %6936 = trunc i64 %6933 to i5
  switch i5 %6936, label %6943 [
    i5 0, label %routine_shll__cl___edi.exit126
    i5 1, label %6937
  ]

; <label>:6937:                                   ; preds = %block_.L_47bcfa
  %6938 = trunc i64 %6931 to i32
  %6939 = shl i32 %6938, 1
  %6940 = icmp slt i32 %6938, 0
  %6941 = icmp slt i32 %6939, 0
  %6942 = xor i1 %6940, %6941
  br label %6952

; <label>:6943:                                   ; preds = %block_.L_47bcfa
  %6944 = and i64 %6933, 31
  %6945 = add i64 %6944, 4294967295
  %6946 = and i64 %6931, 4294967295
  %6947 = and i64 %6945, 4294967295
  %6948 = shl i64 %6946, %6947
  %6949 = trunc i64 %6948 to i32
  %6950 = icmp slt i32 %6949, 0
  %6951 = shl i32 %6949, 1
  br label %6952

; <label>:6952:                                   ; preds = %6943, %6937
  %6953 = phi i1 [ %6940, %6937 ], [ %6950, %6943 ]
  %6954 = phi i1 [ %6942, %6937 ], [ false, %6943 ]
  %6955 = phi i32 [ %6939, %6937 ], [ %6951, %6943 ]
  %6956 = zext i32 %6955 to i64
  store i64 %6956, i64* %RDI.i125, align 8
  %6957 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %6958 = zext i1 %6953 to i8
  store i8 %6958, i8* %6957, align 1
  %6959 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %6960 = and i32 %6955, 254
  %6961 = call i32 @llvm.ctpop.i32(i32 %6960)
  %6962 = trunc i32 %6961 to i8
  %6963 = and i8 %6962, 1
  %6964 = xor i8 %6963, 1
  store i8 %6964, i8* %6959, align 1
  %6965 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6965, align 1
  %6966 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6967 = icmp eq i32 %6955, 0
  %6968 = zext i1 %6967 to i8
  store i8 %6968, i8* %6966, align 1
  %6969 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %6970 = lshr i32 %6955, 31
  %6971 = trunc i32 %6970 to i8
  store i8 %6971, i8* %6969, align 1
  %6972 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %6973 = zext i1 %6954 to i8
  store i8 %6973, i8* %6972, align 1
  br label %routine_shll__cl___edi.exit126

routine_shll__cl___edi.exit126:                   ; preds = %block_.L_47bcfa, %6952
  store %struct.Memory* %loadMem_47bd2f, %struct.Memory** %MEMORY
  %loadMem_47bd31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6975 = getelementptr inbounds %struct.GPR, %struct.GPR* %6974, i32 0, i32 33
  %6976 = getelementptr inbounds %struct.Reg, %struct.Reg* %6975, i32 0, i32 0
  %PC.i120 = bitcast %union.anon* %6976 to i64*
  %6977 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6978 = getelementptr inbounds %struct.GPR, %struct.GPR* %6977, i32 0, i32 9
  %6979 = getelementptr inbounds %struct.Reg, %struct.Reg* %6978, i32 0, i32 0
  %RSI.i121 = bitcast %union.anon* %6979 to i64*
  %6980 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6981 = getelementptr inbounds %struct.GPR, %struct.GPR* %6980, i32 0, i32 15
  %6982 = getelementptr inbounds %struct.Reg, %struct.Reg* %6981, i32 0, i32 0
  %RBP.i122 = bitcast %union.anon* %6982 to i64*
  %6983 = load i64, i64* %RBP.i122
  %6984 = sub i64 %6983, 12
  %6985 = load i64, i64* %PC.i120
  %6986 = add i64 %6985, 4
  store i64 %6986, i64* %PC.i120
  %6987 = inttoptr i64 %6984 to i32*
  %6988 = load i32, i32* %6987
  %6989 = sext i32 %6988 to i64
  store i64 %6989, i64* %RSI.i121, align 8
  store %struct.Memory* %loadMem_47bd31, %struct.Memory** %MEMORY
  %loadMem_47bd35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6990 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6991 = getelementptr inbounds %struct.GPR, %struct.GPR* %6990, i32 0, i32 33
  %6992 = getelementptr inbounds %struct.Reg, %struct.Reg* %6991, i32 0, i32 0
  %PC.i118 = bitcast %union.anon* %6992 to i64*
  %6993 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6994 = getelementptr inbounds %struct.GPR, %struct.GPR* %6993, i32 0, i32 9
  %6995 = getelementptr inbounds %struct.Reg, %struct.Reg* %6994, i32 0, i32 0
  %RSI.i119 = bitcast %union.anon* %6995 to i64*
  %6996 = load i64, i64* %RSI.i119
  %6997 = load i64, i64* %PC.i118
  %6998 = add i64 %6997, 4
  store i64 %6998, i64* %PC.i118
  %6999 = shl i64 %6996, 5
  %7000 = icmp slt i64 %6999, 0
  %7001 = shl i64 %6999, 1
  store i64 %7001, i64* %RSI.i119, align 8
  %7002 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %7003 = zext i1 %7000 to i8
  store i8 %7003, i8* %7002, align 1
  %7004 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %7005 = trunc i64 %7001 to i32
  %7006 = and i32 %7005, 254
  %7007 = call i32 @llvm.ctpop.i32(i32 %7006)
  %7008 = trunc i32 %7007 to i8
  %7009 = and i8 %7008, 1
  %7010 = xor i8 %7009, 1
  store i8 %7010, i8* %7004, align 1
  %7011 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7011, align 1
  %7012 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7013 = icmp eq i64 %7001, 0
  %7014 = zext i1 %7013 to i8
  store i8 %7014, i8* %7012, align 1
  %7015 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %7016 = lshr i64 %7001, 63
  %7017 = trunc i64 %7016 to i8
  store i8 %7017, i8* %7015, align 1
  %7018 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %7018, align 1
  store %struct.Memory* %loadMem_47bd35, %struct.Memory** %MEMORY
  %loadMem_47bd39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7019 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7020 = getelementptr inbounds %struct.GPR, %struct.GPR* %7019, i32 0, i32 33
  %7021 = getelementptr inbounds %struct.Reg, %struct.Reg* %7020, i32 0, i32 0
  %PC.i115 = bitcast %union.anon* %7021 to i64*
  %7022 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7023 = getelementptr inbounds %struct.GPR, %struct.GPR* %7022, i32 0, i32 7
  %7024 = getelementptr inbounds %struct.Reg, %struct.Reg* %7023, i32 0, i32 0
  %RDX.i116 = bitcast %union.anon* %7024 to i64*
  %7025 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7026 = getelementptr inbounds %struct.GPR, %struct.GPR* %7025, i32 0, i32 9
  %7027 = getelementptr inbounds %struct.Reg, %struct.Reg* %7026, i32 0, i32 0
  %RSI.i117 = bitcast %union.anon* %7027 to i64*
  %7028 = load i64, i64* %RDX.i116
  %7029 = load i64, i64* %RSI.i117
  %7030 = load i64, i64* %PC.i115
  %7031 = add i64 %7030, 3
  store i64 %7031, i64* %PC.i115
  %7032 = add i64 %7029, %7028
  store i64 %7032, i64* %RDX.i116, align 8
  %7033 = icmp ult i64 %7032, %7028
  %7034 = icmp ult i64 %7032, %7029
  %7035 = or i1 %7033, %7034
  %7036 = zext i1 %7035 to i8
  %7037 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7036, i8* %7037, align 1
  %7038 = trunc i64 %7032 to i32
  %7039 = and i32 %7038, 255
  %7040 = call i32 @llvm.ctpop.i32(i32 %7039)
  %7041 = trunc i32 %7040 to i8
  %7042 = and i8 %7041, 1
  %7043 = xor i8 %7042, 1
  %7044 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7043, i8* %7044, align 1
  %7045 = xor i64 %7029, %7028
  %7046 = xor i64 %7045, %7032
  %7047 = lshr i64 %7046, 4
  %7048 = trunc i64 %7047 to i8
  %7049 = and i8 %7048, 1
  %7050 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7049, i8* %7050, align 1
  %7051 = icmp eq i64 %7032, 0
  %7052 = zext i1 %7051 to i8
  %7053 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7052, i8* %7053, align 1
  %7054 = lshr i64 %7032, 63
  %7055 = trunc i64 %7054 to i8
  %7056 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7055, i8* %7056, align 1
  %7057 = lshr i64 %7028, 63
  %7058 = lshr i64 %7029, 63
  %7059 = xor i64 %7054, %7057
  %7060 = xor i64 %7054, %7058
  %7061 = add i64 %7059, %7060
  %7062 = icmp eq i64 %7061, 2
  %7063 = zext i1 %7062 to i8
  %7064 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7063, i8* %7064, align 1
  store %struct.Memory* %loadMem_47bd39, %struct.Memory** %MEMORY
  %loadMem_47bd3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %7065 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7066 = getelementptr inbounds %struct.GPR, %struct.GPR* %7065, i32 0, i32 33
  %7067 = getelementptr inbounds %struct.Reg, %struct.Reg* %7066, i32 0, i32 0
  %PC.i112 = bitcast %union.anon* %7067 to i64*
  %7068 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7069 = getelementptr inbounds %struct.GPR, %struct.GPR* %7068, i32 0, i32 9
  %7070 = getelementptr inbounds %struct.Reg, %struct.Reg* %7069, i32 0, i32 0
  %RSI.i113 = bitcast %union.anon* %7070 to i64*
  %7071 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7072 = getelementptr inbounds %struct.GPR, %struct.GPR* %7071, i32 0, i32 15
  %7073 = getelementptr inbounds %struct.Reg, %struct.Reg* %7072, i32 0, i32 0
  %RBP.i114 = bitcast %union.anon* %7073 to i64*
  %7074 = load i64, i64* %RBP.i114
  %7075 = sub i64 %7074, 8
  %7076 = load i64, i64* %PC.i112
  %7077 = add i64 %7076, 4
  store i64 %7077, i64* %PC.i112
  %7078 = inttoptr i64 %7075 to i32*
  %7079 = load i32, i32* %7078
  %7080 = sext i32 %7079 to i64
  store i64 %7080, i64* %RSI.i113, align 8
  store %struct.Memory* %loadMem_47bd3c, %struct.Memory** %MEMORY
  %loadMem_47bd40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7081 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7082 = getelementptr inbounds %struct.GPR, %struct.GPR* %7081, i32 0, i32 33
  %7083 = getelementptr inbounds %struct.Reg, %struct.Reg* %7082, i32 0, i32 0
  %PC.i110 = bitcast %union.anon* %7083 to i64*
  %7084 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7085 = getelementptr inbounds %struct.GPR, %struct.GPR* %7084, i32 0, i32 9
  %7086 = getelementptr inbounds %struct.Reg, %struct.Reg* %7085, i32 0, i32 0
  %RSI.i111 = bitcast %union.anon* %7086 to i64*
  %7087 = load i64, i64* %RSI.i111
  %7088 = load i64, i64* %PC.i110
  %7089 = add i64 %7088, 4
  store i64 %7089, i64* %PC.i110
  %7090 = shl i64 %7087, 3
  %7091 = icmp slt i64 %7090, 0
  %7092 = shl i64 %7090, 1
  store i64 %7092, i64* %RSI.i111, align 8
  %7093 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %7094 = zext i1 %7091 to i8
  store i8 %7094, i8* %7093, align 1
  %7095 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %7096 = trunc i64 %7092 to i32
  %7097 = and i32 %7096, 254
  %7098 = call i32 @llvm.ctpop.i32(i32 %7097)
  %7099 = trunc i32 %7098 to i8
  %7100 = and i8 %7099, 1
  %7101 = xor i8 %7100, 1
  store i8 %7101, i8* %7095, align 1
  %7102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7102, align 1
  %7103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7104 = icmp eq i64 %7092, 0
  %7105 = zext i1 %7104 to i8
  store i8 %7105, i8* %7103, align 1
  %7106 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %7107 = lshr i64 %7092, 63
  %7108 = trunc i64 %7107 to i8
  store i8 %7108, i8* %7106, align 1
  %7109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %7109, align 1
  store %struct.Memory* %loadMem_47bd40, %struct.Memory** %MEMORY
  %loadMem_47bd44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7111 = getelementptr inbounds %struct.GPR, %struct.GPR* %7110, i32 0, i32 33
  %7112 = getelementptr inbounds %struct.Reg, %struct.Reg* %7111, i32 0, i32 0
  %PC.i107 = bitcast %union.anon* %7112 to i64*
  %7113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7114 = getelementptr inbounds %struct.GPR, %struct.GPR* %7113, i32 0, i32 7
  %7115 = getelementptr inbounds %struct.Reg, %struct.Reg* %7114, i32 0, i32 0
  %RDX.i108 = bitcast %union.anon* %7115 to i64*
  %7116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7117 = getelementptr inbounds %struct.GPR, %struct.GPR* %7116, i32 0, i32 9
  %7118 = getelementptr inbounds %struct.Reg, %struct.Reg* %7117, i32 0, i32 0
  %RSI.i109 = bitcast %union.anon* %7118 to i64*
  %7119 = load i64, i64* %RDX.i108
  %7120 = load i64, i64* %RSI.i109
  %7121 = load i64, i64* %PC.i107
  %7122 = add i64 %7121, 3
  store i64 %7122, i64* %PC.i107
  %7123 = add i64 %7120, %7119
  store i64 %7123, i64* %RDX.i108, align 8
  %7124 = icmp ult i64 %7123, %7119
  %7125 = icmp ult i64 %7123, %7120
  %7126 = or i1 %7124, %7125
  %7127 = zext i1 %7126 to i8
  %7128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7127, i8* %7128, align 1
  %7129 = trunc i64 %7123 to i32
  %7130 = and i32 %7129, 255
  %7131 = call i32 @llvm.ctpop.i32(i32 %7130)
  %7132 = trunc i32 %7131 to i8
  %7133 = and i8 %7132, 1
  %7134 = xor i8 %7133, 1
  %7135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7134, i8* %7135, align 1
  %7136 = xor i64 %7120, %7119
  %7137 = xor i64 %7136, %7123
  %7138 = lshr i64 %7137, 4
  %7139 = trunc i64 %7138 to i8
  %7140 = and i8 %7139, 1
  %7141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7140, i8* %7141, align 1
  %7142 = icmp eq i64 %7123, 0
  %7143 = zext i1 %7142 to i8
  %7144 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7143, i8* %7144, align 1
  %7145 = lshr i64 %7123, 63
  %7146 = trunc i64 %7145 to i8
  %7147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7146, i8* %7147, align 1
  %7148 = lshr i64 %7119, 63
  %7149 = lshr i64 %7120, 63
  %7150 = xor i64 %7145, %7148
  %7151 = xor i64 %7145, %7149
  %7152 = add i64 %7150, %7151
  %7153 = icmp eq i64 %7152, 2
  %7154 = zext i1 %7153 to i8
  %7155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7154, i8* %7155, align 1
  store %struct.Memory* %loadMem_47bd44, %struct.Memory** %MEMORY
  %loadMem_47bd47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7157 = getelementptr inbounds %struct.GPR, %struct.GPR* %7156, i32 0, i32 33
  %7158 = getelementptr inbounds %struct.Reg, %struct.Reg* %7157, i32 0, i32 0
  %PC.i104 = bitcast %union.anon* %7158 to i64*
  %7159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7160 = getelementptr inbounds %struct.GPR, %struct.GPR* %7159, i32 0, i32 9
  %7161 = getelementptr inbounds %struct.Reg, %struct.Reg* %7160, i32 0, i32 0
  %RSI.i105 = bitcast %union.anon* %7161 to i64*
  %7162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7163 = getelementptr inbounds %struct.GPR, %struct.GPR* %7162, i32 0, i32 15
  %7164 = getelementptr inbounds %struct.Reg, %struct.Reg* %7163, i32 0, i32 0
  %RBP.i106 = bitcast %union.anon* %7164 to i64*
  %7165 = load i64, i64* %RBP.i106
  %7166 = sub i64 %7165, 4
  %7167 = load i64, i64* %PC.i104
  %7168 = add i64 %7167, 4
  store i64 %7168, i64* %PC.i104
  %7169 = inttoptr i64 %7166 to i32*
  %7170 = load i32, i32* %7169
  %7171 = sext i32 %7170 to i64
  store i64 %7171, i64* %RSI.i105, align 8
  store %struct.Memory* %loadMem_47bd47, %struct.Memory** %MEMORY
  %loadMem_47bd4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %7172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7173 = getelementptr inbounds %struct.GPR, %struct.GPR* %7172, i32 0, i32 33
  %7174 = getelementptr inbounds %struct.Reg, %struct.Reg* %7173, i32 0, i32 0
  %PC.i101 = bitcast %union.anon* %7174 to i64*
  %7175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7176 = getelementptr inbounds %struct.GPR, %struct.GPR* %7175, i32 0, i32 11
  %7177 = getelementptr inbounds %struct.Reg, %struct.Reg* %7176, i32 0, i32 0
  %EDI.i102 = bitcast %union.anon* %7177 to i32*
  %7178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7179 = getelementptr inbounds %struct.GPR, %struct.GPR* %7178, i32 0, i32 7
  %7180 = getelementptr inbounds %struct.Reg, %struct.Reg* %7179, i32 0, i32 0
  %RDX.i103 = bitcast %union.anon* %7180 to i64*
  %7181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7182 = getelementptr inbounds %struct.GPR, %struct.GPR* %7181, i32 0, i32 9
  %7183 = getelementptr inbounds %struct.Reg, %struct.Reg* %7182, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %7183 to i64*
  %7184 = load i64, i64* %RDX.i103
  %7185 = load i64, i64* %RSI.i
  %7186 = mul i64 %7185, 4
  %7187 = add i64 %7186, %7184
  %7188 = load i32, i32* %EDI.i102
  %7189 = zext i32 %7188 to i64
  %7190 = load i64, i64* %PC.i101
  %7191 = add i64 %7190, 3
  store i64 %7191, i64* %PC.i101
  %7192 = inttoptr i64 %7187 to i32*
  store i32 %7188, i32* %7192
  store %struct.Memory* %loadMem_47bd4b, %struct.Memory** %MEMORY
  %loadMem_47bd4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %7193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7194 = getelementptr inbounds %struct.GPR, %struct.GPR* %7193, i32 0, i32 33
  %7195 = getelementptr inbounds %struct.Reg, %struct.Reg* %7194, i32 0, i32 0
  %PC.i98 = bitcast %union.anon* %7195 to i64*
  %7196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7197 = getelementptr inbounds %struct.GPR, %struct.GPR* %7196, i32 0, i32 7
  %7198 = getelementptr inbounds %struct.Reg, %struct.Reg* %7197, i32 0, i32 0
  %RDX.i99 = bitcast %union.anon* %7198 to i64*
  %7199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7200 = getelementptr inbounds %struct.GPR, %struct.GPR* %7199, i32 0, i32 15
  %7201 = getelementptr inbounds %struct.Reg, %struct.Reg* %7200, i32 0, i32 0
  %RBP.i100 = bitcast %union.anon* %7201 to i64*
  %7202 = load i64, i64* %RBP.i100
  %7203 = sub i64 %7202, 16
  %7204 = load i64, i64* %PC.i98
  %7205 = add i64 %7204, 4
  store i64 %7205, i64* %PC.i98
  %7206 = inttoptr i64 %7203 to i32*
  %7207 = load i32, i32* %7206
  %7208 = sext i32 %7207 to i64
  store i64 %7208, i64* %RDX.i99, align 8
  store %struct.Memory* %loadMem_47bd4e, %struct.Memory** %MEMORY
  %loadMem_47bd52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7210 = getelementptr inbounds %struct.GPR, %struct.GPR* %7209, i32 0, i32 33
  %7211 = getelementptr inbounds %struct.Reg, %struct.Reg* %7210, i32 0, i32 0
  %PC.i95 = bitcast %union.anon* %7211 to i64*
  %7212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7213 = getelementptr inbounds %struct.GPR, %struct.GPR* %7212, i32 0, i32 7
  %7214 = getelementptr inbounds %struct.Reg, %struct.Reg* %7213, i32 0, i32 0
  %RDX.i96 = bitcast %union.anon* %7214 to i64*
  %7215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7216 = getelementptr inbounds %struct.GPR, %struct.GPR* %7215, i32 0, i32 11
  %7217 = getelementptr inbounds %struct.Reg, %struct.Reg* %7216, i32 0, i32 0
  %RDI.i97 = bitcast %union.anon* %7217 to i64*
  %7218 = load i64, i64* %RDX.i96
  %7219 = mul i64 %7218, 2
  %7220 = add i64 %7219, 4953328
  %7221 = load i64, i64* %PC.i95
  %7222 = add i64 %7221, 8
  store i64 %7222, i64* %PC.i95
  %7223 = inttoptr i64 %7220 to i16*
  %7224 = load i16, i16* %7223
  %7225 = sext i16 %7224 to i64
  %7226 = and i64 %7225, 4294967295
  store i64 %7226, i64* %RDI.i97, align 8
  store %struct.Memory* %loadMem_47bd52, %struct.Memory** %MEMORY
  %loadMem_47bd5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %7227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7228 = getelementptr inbounds %struct.GPR, %struct.GPR* %7227, i32 0, i32 33
  %7229 = getelementptr inbounds %struct.Reg, %struct.Reg* %7228, i32 0, i32 0
  %PC.i92 = bitcast %union.anon* %7229 to i64*
  %7230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7231 = getelementptr inbounds %struct.GPR, %struct.GPR* %7230, i32 0, i32 5
  %7232 = getelementptr inbounds %struct.Reg, %struct.Reg* %7231, i32 0, i32 0
  %RCX.i93 = bitcast %union.anon* %7232 to i64*
  %7233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7234 = getelementptr inbounds %struct.GPR, %struct.GPR* %7233, i32 0, i32 15
  %7235 = getelementptr inbounds %struct.Reg, %struct.Reg* %7234, i32 0, i32 0
  %RBP.i94 = bitcast %union.anon* %7235 to i64*
  %7236 = load i64, i64* %RBP.i94
  %7237 = sub i64 %7236, 20
  %7238 = load i64, i64* %PC.i92
  %7239 = add i64 %7238, 3
  store i64 %7239, i64* %PC.i92
  %7240 = inttoptr i64 %7237 to i32*
  %7241 = load i32, i32* %7240
  %7242 = zext i32 %7241 to i64
  store i64 %7242, i64* %RCX.i93, align 8
  store %struct.Memory* %loadMem_47bd5a, %struct.Memory** %MEMORY
  %loadMem_47bd5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %7243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7244 = getelementptr inbounds %struct.GPR, %struct.GPR* %7243, i32 0, i32 33
  %7245 = getelementptr inbounds %struct.Reg, %struct.Reg* %7244, i32 0, i32 0
  %PC.i88 = bitcast %union.anon* %7245 to i64*
  %7246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7247 = getelementptr inbounds %struct.GPR, %struct.GPR* %7246, i32 0, i32 5
  %7248 = getelementptr inbounds %struct.Reg, %struct.Reg* %7247, i32 0, i32 0
  %7249 = bitcast %union.anon* %7248 to %struct.anon.2*
  %CL.i89 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %7249, i32 0, i32 0
  %7250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7251 = getelementptr inbounds %struct.GPR, %struct.GPR* %7250, i32 0, i32 11
  %7252 = getelementptr inbounds %struct.Reg, %struct.Reg* %7251, i32 0, i32 0
  %RDI.i90 = bitcast %union.anon* %7252 to i64*
  %7253 = load i64, i64* %RDI.i90
  %7254 = load i8, i8* %CL.i89
  %7255 = zext i8 %7254 to i64
  %7256 = load i64, i64* %PC.i88
  %7257 = add i64 %7256, 2
  store i64 %7257, i64* %PC.i88
  %7258 = trunc i64 %7255 to i5
  switch i5 %7258, label %7265 [
    i5 0, label %routine_shll__cl___edi.exit91
    i5 1, label %7259
  ]

; <label>:7259:                                   ; preds = %routine_shll__cl___edi.exit126
  %7260 = trunc i64 %7253 to i32
  %7261 = shl i32 %7260, 1
  %7262 = icmp slt i32 %7260, 0
  %7263 = icmp slt i32 %7261, 0
  %7264 = xor i1 %7262, %7263
  br label %7274

; <label>:7265:                                   ; preds = %routine_shll__cl___edi.exit126
  %7266 = and i64 %7255, 31
  %7267 = add i64 %7266, 4294967295
  %7268 = and i64 %7253, 4294967295
  %7269 = and i64 %7267, 4294967295
  %7270 = shl i64 %7268, %7269
  %7271 = trunc i64 %7270 to i32
  %7272 = icmp slt i32 %7271, 0
  %7273 = shl i32 %7271, 1
  br label %7274

; <label>:7274:                                   ; preds = %7265, %7259
  %7275 = phi i1 [ %7262, %7259 ], [ %7272, %7265 ]
  %7276 = phi i1 [ %7264, %7259 ], [ false, %7265 ]
  %7277 = phi i32 [ %7261, %7259 ], [ %7273, %7265 ]
  %7278 = zext i32 %7277 to i64
  store i64 %7278, i64* %RDI.i90, align 8
  %7279 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %7280 = zext i1 %7275 to i8
  store i8 %7280, i8* %7279, align 1
  %7281 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %7282 = and i32 %7277, 254
  %7283 = call i32 @llvm.ctpop.i32(i32 %7282)
  %7284 = trunc i32 %7283 to i8
  %7285 = and i8 %7284, 1
  %7286 = xor i8 %7285, 1
  store i8 %7286, i8* %7281, align 1
  %7287 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7287, align 1
  %7288 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7289 = icmp eq i32 %7277, 0
  %7290 = zext i1 %7289 to i8
  store i8 %7290, i8* %7288, align 1
  %7291 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %7292 = lshr i32 %7277, 31
  %7293 = trunc i32 %7292 to i8
  store i8 %7293, i8* %7291, align 1
  %7294 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %7295 = zext i1 %7276 to i8
  store i8 %7295, i8* %7294, align 1
  br label %routine_shll__cl___edi.exit91

routine_shll__cl___edi.exit91:                    ; preds = %routine_shll__cl___edi.exit126, %7274
  store %struct.Memory* %loadMem_47bd5d, %struct.Memory** %MEMORY
  %loadMem_47bd5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %7296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7297 = getelementptr inbounds %struct.GPR, %struct.GPR* %7296, i32 0, i32 33
  %7298 = getelementptr inbounds %struct.Reg, %struct.Reg* %7297, i32 0, i32 0
  %PC.i85 = bitcast %union.anon* %7298 to i64*
  %7299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7300 = getelementptr inbounds %struct.GPR, %struct.GPR* %7299, i32 0, i32 7
  %7301 = getelementptr inbounds %struct.Reg, %struct.Reg* %7300, i32 0, i32 0
  %RDX.i86 = bitcast %union.anon* %7301 to i64*
  %7302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7303 = getelementptr inbounds %struct.GPR, %struct.GPR* %7302, i32 0, i32 15
  %7304 = getelementptr inbounds %struct.Reg, %struct.Reg* %7303, i32 0, i32 0
  %RBP.i87 = bitcast %union.anon* %7304 to i64*
  %7305 = load i64, i64* %RBP.i87
  %7306 = sub i64 %7305, 12
  %7307 = load i64, i64* %PC.i85
  %7308 = add i64 %7307, 4
  store i64 %7308, i64* %PC.i85
  %7309 = inttoptr i64 %7306 to i32*
  %7310 = load i32, i32* %7309
  %7311 = sext i32 %7310 to i64
  store i64 %7311, i64* %RDX.i86, align 8
  store %struct.Memory* %loadMem_47bd5f, %struct.Memory** %MEMORY
  %loadMem_47bd63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7313 = getelementptr inbounds %struct.GPR, %struct.GPR* %7312, i32 0, i32 33
  %7314 = getelementptr inbounds %struct.Reg, %struct.Reg* %7313, i32 0, i32 0
  %PC.i83 = bitcast %union.anon* %7314 to i64*
  %7315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7316 = getelementptr inbounds %struct.GPR, %struct.GPR* %7315, i32 0, i32 7
  %7317 = getelementptr inbounds %struct.Reg, %struct.Reg* %7316, i32 0, i32 0
  %RDX.i84 = bitcast %union.anon* %7317 to i64*
  %7318 = load i64, i64* %RDX.i84
  %7319 = load i64, i64* %PC.i83
  %7320 = add i64 %7319, 4
  store i64 %7320, i64* %PC.i83
  %7321 = shl i64 %7318, 5
  %7322 = icmp slt i64 %7321, 0
  %7323 = shl i64 %7321, 1
  store i64 %7323, i64* %RDX.i84, align 8
  %7324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %7325 = zext i1 %7322 to i8
  store i8 %7325, i8* %7324, align 1
  %7326 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %7327 = trunc i64 %7323 to i32
  %7328 = and i32 %7327, 254
  %7329 = call i32 @llvm.ctpop.i32(i32 %7328)
  %7330 = trunc i32 %7329 to i8
  %7331 = and i8 %7330, 1
  %7332 = xor i8 %7331, 1
  store i8 %7332, i8* %7326, align 1
  %7333 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7333, align 1
  %7334 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7335 = icmp eq i64 %7323, 0
  %7336 = zext i1 %7335 to i8
  store i8 %7336, i8* %7334, align 1
  %7337 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %7338 = lshr i64 %7323, 63
  %7339 = trunc i64 %7338 to i8
  store i8 %7339, i8* %7337, align 1
  %7340 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %7340, align 1
  store %struct.Memory* %loadMem_47bd63, %struct.Memory** %MEMORY
  %loadMem_47bd67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7342 = getelementptr inbounds %struct.GPR, %struct.GPR* %7341, i32 0, i32 33
  %7343 = getelementptr inbounds %struct.Reg, %struct.Reg* %7342, i32 0, i32 0
  %PC.i80 = bitcast %union.anon* %7343 to i64*
  %7344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7345 = getelementptr inbounds %struct.GPR, %struct.GPR* %7344, i32 0, i32 1
  %7346 = getelementptr inbounds %struct.Reg, %struct.Reg* %7345, i32 0, i32 0
  %RAX.i81 = bitcast %union.anon* %7346 to i64*
  %7347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7348 = getelementptr inbounds %struct.GPR, %struct.GPR* %7347, i32 0, i32 7
  %7349 = getelementptr inbounds %struct.Reg, %struct.Reg* %7348, i32 0, i32 0
  %RDX.i82 = bitcast %union.anon* %7349 to i64*
  %7350 = load i64, i64* %RAX.i81
  %7351 = load i64, i64* %RDX.i82
  %7352 = load i64, i64* %PC.i80
  %7353 = add i64 %7352, 3
  store i64 %7353, i64* %PC.i80
  %7354 = add i64 %7351, %7350
  store i64 %7354, i64* %RAX.i81, align 8
  %7355 = icmp ult i64 %7354, %7350
  %7356 = icmp ult i64 %7354, %7351
  %7357 = or i1 %7355, %7356
  %7358 = zext i1 %7357 to i8
  %7359 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7358, i8* %7359, align 1
  %7360 = trunc i64 %7354 to i32
  %7361 = and i32 %7360, 255
  %7362 = call i32 @llvm.ctpop.i32(i32 %7361)
  %7363 = trunc i32 %7362 to i8
  %7364 = and i8 %7363, 1
  %7365 = xor i8 %7364, 1
  %7366 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7365, i8* %7366, align 1
  %7367 = xor i64 %7351, %7350
  %7368 = xor i64 %7367, %7354
  %7369 = lshr i64 %7368, 4
  %7370 = trunc i64 %7369 to i8
  %7371 = and i8 %7370, 1
  %7372 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7371, i8* %7372, align 1
  %7373 = icmp eq i64 %7354, 0
  %7374 = zext i1 %7373 to i8
  %7375 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7374, i8* %7375, align 1
  %7376 = lshr i64 %7354, 63
  %7377 = trunc i64 %7376 to i8
  %7378 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7377, i8* %7378, align 1
  %7379 = lshr i64 %7350, 63
  %7380 = lshr i64 %7351, 63
  %7381 = xor i64 %7376, %7379
  %7382 = xor i64 %7376, %7380
  %7383 = add i64 %7381, %7382
  %7384 = icmp eq i64 %7383, 2
  %7385 = zext i1 %7384 to i8
  %7386 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7385, i8* %7386, align 1
  store %struct.Memory* %loadMem_47bd67, %struct.Memory** %MEMORY
  %loadMem_47bd6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %7387 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7388 = getelementptr inbounds %struct.GPR, %struct.GPR* %7387, i32 0, i32 33
  %7389 = getelementptr inbounds %struct.Reg, %struct.Reg* %7388, i32 0, i32 0
  %PC.i77 = bitcast %union.anon* %7389 to i64*
  %7390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7391 = getelementptr inbounds %struct.GPR, %struct.GPR* %7390, i32 0, i32 7
  %7392 = getelementptr inbounds %struct.Reg, %struct.Reg* %7391, i32 0, i32 0
  %RDX.i78 = bitcast %union.anon* %7392 to i64*
  %7393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7394 = getelementptr inbounds %struct.GPR, %struct.GPR* %7393, i32 0, i32 15
  %7395 = getelementptr inbounds %struct.Reg, %struct.Reg* %7394, i32 0, i32 0
  %RBP.i79 = bitcast %union.anon* %7395 to i64*
  %7396 = load i64, i64* %RBP.i79
  %7397 = sub i64 %7396, 8
  %7398 = load i64, i64* %PC.i77
  %7399 = add i64 %7398, 4
  store i64 %7399, i64* %PC.i77
  %7400 = inttoptr i64 %7397 to i32*
  %7401 = load i32, i32* %7400
  %7402 = sext i32 %7401 to i64
  store i64 %7402, i64* %RDX.i78, align 8
  store %struct.Memory* %loadMem_47bd6a, %struct.Memory** %MEMORY
  %loadMem_47bd6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %7403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7404 = getelementptr inbounds %struct.GPR, %struct.GPR* %7403, i32 0, i32 33
  %7405 = getelementptr inbounds %struct.Reg, %struct.Reg* %7404, i32 0, i32 0
  %PC.i75 = bitcast %union.anon* %7405 to i64*
  %7406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7407 = getelementptr inbounds %struct.GPR, %struct.GPR* %7406, i32 0, i32 7
  %7408 = getelementptr inbounds %struct.Reg, %struct.Reg* %7407, i32 0, i32 0
  %RDX.i76 = bitcast %union.anon* %7408 to i64*
  %7409 = load i64, i64* %RDX.i76
  %7410 = load i64, i64* %PC.i75
  %7411 = add i64 %7410, 4
  store i64 %7411, i64* %PC.i75
  %7412 = shl i64 %7409, 3
  %7413 = icmp slt i64 %7412, 0
  %7414 = shl i64 %7412, 1
  store i64 %7414, i64* %RDX.i76, align 8
  %7415 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %7416 = zext i1 %7413 to i8
  store i8 %7416, i8* %7415, align 1
  %7417 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %7418 = trunc i64 %7414 to i32
  %7419 = and i32 %7418, 254
  %7420 = call i32 @llvm.ctpop.i32(i32 %7419)
  %7421 = trunc i32 %7420 to i8
  %7422 = and i8 %7421, 1
  %7423 = xor i8 %7422, 1
  store i8 %7423, i8* %7417, align 1
  %7424 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7424, align 1
  %7425 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7426 = icmp eq i64 %7414, 0
  %7427 = zext i1 %7426 to i8
  store i8 %7427, i8* %7425, align 1
  %7428 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %7429 = lshr i64 %7414, 63
  %7430 = trunc i64 %7429 to i8
  store i8 %7430, i8* %7428, align 1
  %7431 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %7431, align 1
  store %struct.Memory* %loadMem_47bd6e, %struct.Memory** %MEMORY
  %loadMem_47bd72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7433 = getelementptr inbounds %struct.GPR, %struct.GPR* %7432, i32 0, i32 33
  %7434 = getelementptr inbounds %struct.Reg, %struct.Reg* %7433, i32 0, i32 0
  %PC.i72 = bitcast %union.anon* %7434 to i64*
  %7435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7436 = getelementptr inbounds %struct.GPR, %struct.GPR* %7435, i32 0, i32 1
  %7437 = getelementptr inbounds %struct.Reg, %struct.Reg* %7436, i32 0, i32 0
  %RAX.i73 = bitcast %union.anon* %7437 to i64*
  %7438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7439 = getelementptr inbounds %struct.GPR, %struct.GPR* %7438, i32 0, i32 7
  %7440 = getelementptr inbounds %struct.Reg, %struct.Reg* %7439, i32 0, i32 0
  %RDX.i74 = bitcast %union.anon* %7440 to i64*
  %7441 = load i64, i64* %RAX.i73
  %7442 = load i64, i64* %RDX.i74
  %7443 = load i64, i64* %PC.i72
  %7444 = add i64 %7443, 3
  store i64 %7444, i64* %PC.i72
  %7445 = add i64 %7442, %7441
  store i64 %7445, i64* %RAX.i73, align 8
  %7446 = icmp ult i64 %7445, %7441
  %7447 = icmp ult i64 %7445, %7442
  %7448 = or i1 %7446, %7447
  %7449 = zext i1 %7448 to i8
  %7450 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7449, i8* %7450, align 1
  %7451 = trunc i64 %7445 to i32
  %7452 = and i32 %7451, 255
  %7453 = call i32 @llvm.ctpop.i32(i32 %7452)
  %7454 = trunc i32 %7453 to i8
  %7455 = and i8 %7454, 1
  %7456 = xor i8 %7455, 1
  %7457 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7456, i8* %7457, align 1
  %7458 = xor i64 %7442, %7441
  %7459 = xor i64 %7458, %7445
  %7460 = lshr i64 %7459, 4
  %7461 = trunc i64 %7460 to i8
  %7462 = and i8 %7461, 1
  %7463 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7462, i8* %7463, align 1
  %7464 = icmp eq i64 %7445, 0
  %7465 = zext i1 %7464 to i8
  %7466 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7465, i8* %7466, align 1
  %7467 = lshr i64 %7445, 63
  %7468 = trunc i64 %7467 to i8
  %7469 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7468, i8* %7469, align 1
  %7470 = lshr i64 %7441, 63
  %7471 = lshr i64 %7442, 63
  %7472 = xor i64 %7467, %7470
  %7473 = xor i64 %7467, %7471
  %7474 = add i64 %7472, %7473
  %7475 = icmp eq i64 %7474, 2
  %7476 = zext i1 %7475 to i8
  %7477 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7476, i8* %7477, align 1
  store %struct.Memory* %loadMem_47bd72, %struct.Memory** %MEMORY
  %loadMem_47bd75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7479 = getelementptr inbounds %struct.GPR, %struct.GPR* %7478, i32 0, i32 33
  %7480 = getelementptr inbounds %struct.Reg, %struct.Reg* %7479, i32 0, i32 0
  %PC.i69 = bitcast %union.anon* %7480 to i64*
  %7481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7482 = getelementptr inbounds %struct.GPR, %struct.GPR* %7481, i32 0, i32 7
  %7483 = getelementptr inbounds %struct.Reg, %struct.Reg* %7482, i32 0, i32 0
  %RDX.i70 = bitcast %union.anon* %7483 to i64*
  %7484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7485 = getelementptr inbounds %struct.GPR, %struct.GPR* %7484, i32 0, i32 15
  %7486 = getelementptr inbounds %struct.Reg, %struct.Reg* %7485, i32 0, i32 0
  %RBP.i71 = bitcast %union.anon* %7486 to i64*
  %7487 = load i64, i64* %RBP.i71
  %7488 = sub i64 %7487, 4
  %7489 = load i64, i64* %PC.i69
  %7490 = add i64 %7489, 4
  store i64 %7490, i64* %PC.i69
  %7491 = inttoptr i64 %7488 to i32*
  %7492 = load i32, i32* %7491
  %7493 = sext i32 %7492 to i64
  store i64 %7493, i64* %RDX.i70, align 8
  store %struct.Memory* %loadMem_47bd75, %struct.Memory** %MEMORY
  %loadMem_47bd79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7495 = getelementptr inbounds %struct.GPR, %struct.GPR* %7494, i32 0, i32 33
  %7496 = getelementptr inbounds %struct.Reg, %struct.Reg* %7495, i32 0, i32 0
  %PC.i65 = bitcast %union.anon* %7496 to i64*
  %7497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7498 = getelementptr inbounds %struct.GPR, %struct.GPR* %7497, i32 0, i32 11
  %7499 = getelementptr inbounds %struct.Reg, %struct.Reg* %7498, i32 0, i32 0
  %EDI.i66 = bitcast %union.anon* %7499 to i32*
  %7500 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7501 = getelementptr inbounds %struct.GPR, %struct.GPR* %7500, i32 0, i32 1
  %7502 = getelementptr inbounds %struct.Reg, %struct.Reg* %7501, i32 0, i32 0
  %RAX.i67 = bitcast %union.anon* %7502 to i64*
  %7503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7504 = getelementptr inbounds %struct.GPR, %struct.GPR* %7503, i32 0, i32 7
  %7505 = getelementptr inbounds %struct.Reg, %struct.Reg* %7504, i32 0, i32 0
  %RDX.i68 = bitcast %union.anon* %7505 to i64*
  %7506 = load i64, i64* %RAX.i67
  %7507 = load i64, i64* %RDX.i68
  %7508 = mul i64 %7507, 4
  %7509 = add i64 %7508, %7506
  %7510 = load i32, i32* %EDI.i66
  %7511 = zext i32 %7510 to i64
  %7512 = load i64, i64* %PC.i65
  %7513 = add i64 %7512, 3
  store i64 %7513, i64* %PC.i65
  %7514 = inttoptr i64 %7509 to i32*
  store i32 %7510, i32* %7514
  store %struct.Memory* %loadMem_47bd79, %struct.Memory** %MEMORY
  %loadMem_47bd7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %7515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7516 = getelementptr inbounds %struct.GPR, %struct.GPR* %7515, i32 0, i32 33
  %7517 = getelementptr inbounds %struct.Reg, %struct.Reg* %7516, i32 0, i32 0
  %PC.i62 = bitcast %union.anon* %7517 to i64*
  %7518 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7519 = getelementptr inbounds %struct.GPR, %struct.GPR* %7518, i32 0, i32 1
  %7520 = getelementptr inbounds %struct.Reg, %struct.Reg* %7519, i32 0, i32 0
  %RAX.i63 = bitcast %union.anon* %7520 to i64*
  %7521 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7522 = getelementptr inbounds %struct.GPR, %struct.GPR* %7521, i32 0, i32 15
  %7523 = getelementptr inbounds %struct.Reg, %struct.Reg* %7522, i32 0, i32 0
  %RBP.i64 = bitcast %union.anon* %7523 to i64*
  %7524 = load i64, i64* %RBP.i64
  %7525 = sub i64 %7524, 16
  %7526 = load i64, i64* %PC.i62
  %7527 = add i64 %7526, 4
  store i64 %7527, i64* %PC.i62
  %7528 = inttoptr i64 %7525 to i32*
  %7529 = load i32, i32* %7528
  %7530 = sext i32 %7529 to i64
  store i64 %7530, i64* %RAX.i63, align 8
  store %struct.Memory* %loadMem_47bd7c, %struct.Memory** %MEMORY
  %loadMem_47bd80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7532 = getelementptr inbounds %struct.GPR, %struct.GPR* %7531, i32 0, i32 33
  %7533 = getelementptr inbounds %struct.Reg, %struct.Reg* %7532, i32 0, i32 0
  %PC.i59 = bitcast %union.anon* %7533 to i64*
  %7534 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7535 = getelementptr inbounds %struct.GPR, %struct.GPR* %7534, i32 0, i32 1
  %7536 = getelementptr inbounds %struct.Reg, %struct.Reg* %7535, i32 0, i32 0
  %RAX.i60 = bitcast %union.anon* %7536 to i64*
  %7537 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7538 = getelementptr inbounds %struct.GPR, %struct.GPR* %7537, i32 0, i32 11
  %7539 = getelementptr inbounds %struct.Reg, %struct.Reg* %7538, i32 0, i32 0
  %RDI.i61 = bitcast %union.anon* %7539 to i64*
  %7540 = load i64, i64* %RAX.i60
  %7541 = mul i64 %7540, 2
  %7542 = add i64 %7541, 4953328
  %7543 = load i64, i64* %PC.i59
  %7544 = add i64 %7543, 8
  store i64 %7544, i64* %PC.i59
  %7545 = inttoptr i64 %7542 to i16*
  %7546 = load i16, i16* %7545
  %7547 = sext i16 %7546 to i64
  %7548 = and i64 %7547, 4294967295
  store i64 %7548, i64* %RDI.i61, align 8
  store %struct.Memory* %loadMem_47bd80, %struct.Memory** %MEMORY
  %loadMem_47bd88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7550 = getelementptr inbounds %struct.GPR, %struct.GPR* %7549, i32 0, i32 33
  %7551 = getelementptr inbounds %struct.Reg, %struct.Reg* %7550, i32 0, i32 0
  %PC.i57 = bitcast %union.anon* %7551 to i64*
  %7552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7553 = getelementptr inbounds %struct.GPR, %struct.GPR* %7552, i32 0, i32 5
  %7554 = getelementptr inbounds %struct.Reg, %struct.Reg* %7553, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %7554 to i64*
  %7555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7556 = getelementptr inbounds %struct.GPR, %struct.GPR* %7555, i32 0, i32 15
  %7557 = getelementptr inbounds %struct.Reg, %struct.Reg* %7556, i32 0, i32 0
  %RBP.i58 = bitcast %union.anon* %7557 to i64*
  %7558 = load i64, i64* %RBP.i58
  %7559 = sub i64 %7558, 20
  %7560 = load i64, i64* %PC.i57
  %7561 = add i64 %7560, 3
  store i64 %7561, i64* %PC.i57
  %7562 = inttoptr i64 %7559 to i32*
  %7563 = load i32, i32* %7562
  %7564 = zext i32 %7563 to i64
  store i64 %7564, i64* %RCX.i, align 8
  store %struct.Memory* %loadMem_47bd88, %struct.Memory** %MEMORY
  %loadMem_47bd8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %7565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7566 = getelementptr inbounds %struct.GPR, %struct.GPR* %7565, i32 0, i32 33
  %7567 = getelementptr inbounds %struct.Reg, %struct.Reg* %7566, i32 0, i32 0
  %PC.i56 = bitcast %union.anon* %7567 to i64*
  %7568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7569 = getelementptr inbounds %struct.GPR, %struct.GPR* %7568, i32 0, i32 5
  %7570 = getelementptr inbounds %struct.Reg, %struct.Reg* %7569, i32 0, i32 0
  %7571 = bitcast %union.anon* %7570 to %struct.anon.2*
  %CL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %7571, i32 0, i32 0
  %7572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7573 = getelementptr inbounds %struct.GPR, %struct.GPR* %7572, i32 0, i32 11
  %7574 = getelementptr inbounds %struct.Reg, %struct.Reg* %7573, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %7574 to i64*
  %7575 = load i64, i64* %RDI.i
  %7576 = load i8, i8* %CL.i
  %7577 = zext i8 %7576 to i64
  %7578 = load i64, i64* %PC.i56
  %7579 = add i64 %7578, 2
  store i64 %7579, i64* %PC.i56
  %7580 = trunc i64 %7577 to i5
  switch i5 %7580, label %7587 [
    i5 0, label %routine_shll__cl___edi.exit
    i5 1, label %7581
  ]

; <label>:7581:                                   ; preds = %routine_shll__cl___edi.exit91
  %7582 = trunc i64 %7575 to i32
  %7583 = shl i32 %7582, 1
  %7584 = icmp slt i32 %7582, 0
  %7585 = icmp slt i32 %7583, 0
  %7586 = xor i1 %7584, %7585
  br label %7596

; <label>:7587:                                   ; preds = %routine_shll__cl___edi.exit91
  %7588 = and i64 %7577, 31
  %7589 = add i64 %7588, 4294967295
  %7590 = and i64 %7575, 4294967295
  %7591 = and i64 %7589, 4294967295
  %7592 = shl i64 %7590, %7591
  %7593 = trunc i64 %7592 to i32
  %7594 = icmp slt i32 %7593, 0
  %7595 = shl i32 %7593, 1
  br label %7596

; <label>:7596:                                   ; preds = %7587, %7581
  %7597 = phi i1 [ %7584, %7581 ], [ %7594, %7587 ]
  %7598 = phi i1 [ %7586, %7581 ], [ false, %7587 ]
  %7599 = phi i32 [ %7583, %7581 ], [ %7595, %7587 ]
  %7600 = zext i32 %7599 to i64
  store i64 %7600, i64* %RDI.i, align 8
  %7601 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %7602 = zext i1 %7597 to i8
  store i8 %7602, i8* %7601, align 1
  %7603 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %7604 = and i32 %7599, 254
  %7605 = call i32 @llvm.ctpop.i32(i32 %7604)
  %7606 = trunc i32 %7605 to i8
  %7607 = and i8 %7606, 1
  %7608 = xor i8 %7607, 1
  store i8 %7608, i8* %7603, align 1
  %7609 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7609, align 1
  %7610 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7611 = icmp eq i32 %7599, 0
  %7612 = zext i1 %7611 to i8
  store i8 %7612, i8* %7610, align 1
  %7613 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %7614 = lshr i32 %7599, 31
  %7615 = trunc i32 %7614 to i8
  store i8 %7615, i8* %7613, align 1
  %7616 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %7617 = zext i1 %7598 to i8
  store i8 %7617, i8* %7616, align 1
  br label %routine_shll__cl___edi.exit

routine_shll__cl___edi.exit:                      ; preds = %routine_shll__cl___edi.exit91, %7596
  store %struct.Memory* %loadMem_47bd8b, %struct.Memory** %MEMORY
  %loadMem_47bd8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %7618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7619 = getelementptr inbounds %struct.GPR, %struct.GPR* %7618, i32 0, i32 33
  %7620 = getelementptr inbounds %struct.Reg, %struct.Reg* %7619, i32 0, i32 0
  %PC.i53 = bitcast %union.anon* %7620 to i64*
  %7621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7622 = getelementptr inbounds %struct.GPR, %struct.GPR* %7621, i32 0, i32 1
  %7623 = getelementptr inbounds %struct.Reg, %struct.Reg* %7622, i32 0, i32 0
  %RAX.i54 = bitcast %union.anon* %7623 to i64*
  %7624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7625 = getelementptr inbounds %struct.GPR, %struct.GPR* %7624, i32 0, i32 15
  %7626 = getelementptr inbounds %struct.Reg, %struct.Reg* %7625, i32 0, i32 0
  %RBP.i55 = bitcast %union.anon* %7626 to i64*
  %7627 = load i64, i64* %RBP.i55
  %7628 = sub i64 %7627, 12
  %7629 = load i64, i64* %PC.i53
  %7630 = add i64 %7629, 4
  store i64 %7630, i64* %PC.i53
  %7631 = inttoptr i64 %7628 to i32*
  %7632 = load i32, i32* %7631
  %7633 = sext i32 %7632 to i64
  store i64 %7633, i64* %RAX.i54, align 8
  store %struct.Memory* %loadMem_47bd8d, %struct.Memory** %MEMORY
  %loadMem_47bd91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7635 = getelementptr inbounds %struct.GPR, %struct.GPR* %7634, i32 0, i32 33
  %7636 = getelementptr inbounds %struct.Reg, %struct.Reg* %7635, i32 0, i32 0
  %PC.i51 = bitcast %union.anon* %7636 to i64*
  %7637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7638 = getelementptr inbounds %struct.GPR, %struct.GPR* %7637, i32 0, i32 1
  %7639 = getelementptr inbounds %struct.Reg, %struct.Reg* %7638, i32 0, i32 0
  %RAX.i52 = bitcast %union.anon* %7639 to i64*
  %7640 = load i64, i64* %RAX.i52
  %7641 = load i64, i64* %PC.i51
  %7642 = add i64 %7641, 4
  store i64 %7642, i64* %PC.i51
  %7643 = shl i64 %7640, 5
  %7644 = icmp slt i64 %7643, 0
  %7645 = shl i64 %7643, 1
  store i64 %7645, i64* %RAX.i52, align 8
  %7646 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %7647 = zext i1 %7644 to i8
  store i8 %7647, i8* %7646, align 1
  %7648 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %7649 = trunc i64 %7645 to i32
  %7650 = and i32 %7649, 254
  %7651 = call i32 @llvm.ctpop.i32(i32 %7650)
  %7652 = trunc i32 %7651 to i8
  %7653 = and i8 %7652, 1
  %7654 = xor i8 %7653, 1
  store i8 %7654, i8* %7648, align 1
  %7655 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7655, align 1
  %7656 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7657 = icmp eq i64 %7645, 0
  %7658 = zext i1 %7657 to i8
  store i8 %7658, i8* %7656, align 1
  %7659 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %7660 = lshr i64 %7645, 63
  %7661 = trunc i64 %7660 to i8
  store i8 %7661, i8* %7659, align 1
  %7662 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %7662, align 1
  store %struct.Memory* %loadMem_47bd91, %struct.Memory** %MEMORY
  %loadMem_47bd95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7664 = getelementptr inbounds %struct.GPR, %struct.GPR* %7663, i32 0, i32 33
  %7665 = getelementptr inbounds %struct.Reg, %struct.Reg* %7664, i32 0, i32 0
  %PC.i48 = bitcast %union.anon* %7665 to i64*
  %7666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7667 = getelementptr inbounds %struct.GPR, %struct.GPR* %7666, i32 0, i32 7
  %7668 = getelementptr inbounds %struct.Reg, %struct.Reg* %7667, i32 0, i32 0
  %RDX.i49 = bitcast %union.anon* %7668 to i64*
  %7669 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7670 = getelementptr inbounds %struct.GPR, %struct.GPR* %7669, i32 0, i32 15
  %7671 = getelementptr inbounds %struct.Reg, %struct.Reg* %7670, i32 0, i32 0
  %RBP.i50 = bitcast %union.anon* %7671 to i64*
  %7672 = load i64, i64* %RBP.i50
  %7673 = sub i64 %7672, 72
  %7674 = load i64, i64* %PC.i48
  %7675 = add i64 %7674, 4
  store i64 %7675, i64* %PC.i48
  %7676 = inttoptr i64 %7673 to i64*
  %7677 = load i64, i64* %7676
  store i64 %7677, i64* %RDX.i49, align 8
  store %struct.Memory* %loadMem_47bd95, %struct.Memory** %MEMORY
  %loadMem_47bd99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7679 = getelementptr inbounds %struct.GPR, %struct.GPR* %7678, i32 0, i32 33
  %7680 = getelementptr inbounds %struct.Reg, %struct.Reg* %7679, i32 0, i32 0
  %PC.i45 = bitcast %union.anon* %7680 to i64*
  %7681 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7682 = getelementptr inbounds %struct.GPR, %struct.GPR* %7681, i32 0, i32 1
  %7683 = getelementptr inbounds %struct.Reg, %struct.Reg* %7682, i32 0, i32 0
  %RAX.i46 = bitcast %union.anon* %7683 to i64*
  %7684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7685 = getelementptr inbounds %struct.GPR, %struct.GPR* %7684, i32 0, i32 7
  %7686 = getelementptr inbounds %struct.Reg, %struct.Reg* %7685, i32 0, i32 0
  %RDX.i47 = bitcast %union.anon* %7686 to i64*
  %7687 = load i64, i64* %RDX.i47
  %7688 = load i64, i64* %RAX.i46
  %7689 = load i64, i64* %PC.i45
  %7690 = add i64 %7689, 3
  store i64 %7690, i64* %PC.i45
  %7691 = add i64 %7688, %7687
  store i64 %7691, i64* %RDX.i47, align 8
  %7692 = icmp ult i64 %7691, %7687
  %7693 = icmp ult i64 %7691, %7688
  %7694 = or i1 %7692, %7693
  %7695 = zext i1 %7694 to i8
  %7696 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7695, i8* %7696, align 1
  %7697 = trunc i64 %7691 to i32
  %7698 = and i32 %7697, 255
  %7699 = call i32 @llvm.ctpop.i32(i32 %7698)
  %7700 = trunc i32 %7699 to i8
  %7701 = and i8 %7700, 1
  %7702 = xor i8 %7701, 1
  %7703 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7702, i8* %7703, align 1
  %7704 = xor i64 %7688, %7687
  %7705 = xor i64 %7704, %7691
  %7706 = lshr i64 %7705, 4
  %7707 = trunc i64 %7706 to i8
  %7708 = and i8 %7707, 1
  %7709 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7708, i8* %7709, align 1
  %7710 = icmp eq i64 %7691, 0
  %7711 = zext i1 %7710 to i8
  %7712 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7711, i8* %7712, align 1
  %7713 = lshr i64 %7691, 63
  %7714 = trunc i64 %7713 to i8
  %7715 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7714, i8* %7715, align 1
  %7716 = lshr i64 %7687, 63
  %7717 = lshr i64 %7688, 63
  %7718 = xor i64 %7713, %7716
  %7719 = xor i64 %7713, %7717
  %7720 = add i64 %7718, %7719
  %7721 = icmp eq i64 %7720, 2
  %7722 = zext i1 %7721 to i8
  %7723 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7722, i8* %7723, align 1
  store %struct.Memory* %loadMem_47bd99, %struct.Memory** %MEMORY
  %loadMem_47bd9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %7724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7725 = getelementptr inbounds %struct.GPR, %struct.GPR* %7724, i32 0, i32 33
  %7726 = getelementptr inbounds %struct.Reg, %struct.Reg* %7725, i32 0, i32 0
  %PC.i42 = bitcast %union.anon* %7726 to i64*
  %7727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7728 = getelementptr inbounds %struct.GPR, %struct.GPR* %7727, i32 0, i32 1
  %7729 = getelementptr inbounds %struct.Reg, %struct.Reg* %7728, i32 0, i32 0
  %RAX.i43 = bitcast %union.anon* %7729 to i64*
  %7730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7731 = getelementptr inbounds %struct.GPR, %struct.GPR* %7730, i32 0, i32 15
  %7732 = getelementptr inbounds %struct.Reg, %struct.Reg* %7731, i32 0, i32 0
  %RBP.i44 = bitcast %union.anon* %7732 to i64*
  %7733 = load i64, i64* %RBP.i44
  %7734 = sub i64 %7733, 8
  %7735 = load i64, i64* %PC.i42
  %7736 = add i64 %7735, 4
  store i64 %7736, i64* %PC.i42
  %7737 = inttoptr i64 %7734 to i32*
  %7738 = load i32, i32* %7737
  %7739 = sext i32 %7738 to i64
  store i64 %7739, i64* %RAX.i43, align 8
  store %struct.Memory* %loadMem_47bd9c, %struct.Memory** %MEMORY
  %loadMem_47bda0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7741 = getelementptr inbounds %struct.GPR, %struct.GPR* %7740, i32 0, i32 33
  %7742 = getelementptr inbounds %struct.Reg, %struct.Reg* %7741, i32 0, i32 0
  %PC.i40 = bitcast %union.anon* %7742 to i64*
  %7743 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7744 = getelementptr inbounds %struct.GPR, %struct.GPR* %7743, i32 0, i32 1
  %7745 = getelementptr inbounds %struct.Reg, %struct.Reg* %7744, i32 0, i32 0
  %RAX.i41 = bitcast %union.anon* %7745 to i64*
  %7746 = load i64, i64* %RAX.i41
  %7747 = load i64, i64* %PC.i40
  %7748 = add i64 %7747, 4
  store i64 %7748, i64* %PC.i40
  %7749 = shl i64 %7746, 3
  %7750 = icmp slt i64 %7749, 0
  %7751 = shl i64 %7749, 1
  store i64 %7751, i64* %RAX.i41, align 8
  %7752 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %7753 = zext i1 %7750 to i8
  store i8 %7753, i8* %7752, align 1
  %7754 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %7755 = trunc i64 %7751 to i32
  %7756 = and i32 %7755, 254
  %7757 = call i32 @llvm.ctpop.i32(i32 %7756)
  %7758 = trunc i32 %7757 to i8
  %7759 = and i8 %7758, 1
  %7760 = xor i8 %7759, 1
  store i8 %7760, i8* %7754, align 1
  %7761 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7761, align 1
  %7762 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7763 = icmp eq i64 %7751, 0
  %7764 = zext i1 %7763 to i8
  store i8 %7764, i8* %7762, align 1
  %7765 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %7766 = lshr i64 %7751, 63
  %7767 = trunc i64 %7766 to i8
  store i8 %7767, i8* %7765, align 1
  %7768 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %7768, align 1
  store %struct.Memory* %loadMem_47bda0, %struct.Memory** %MEMORY
  %loadMem_47bda4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7770 = getelementptr inbounds %struct.GPR, %struct.GPR* %7769, i32 0, i32 33
  %7771 = getelementptr inbounds %struct.Reg, %struct.Reg* %7770, i32 0, i32 0
  %PC.i37 = bitcast %union.anon* %7771 to i64*
  %7772 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7773 = getelementptr inbounds %struct.GPR, %struct.GPR* %7772, i32 0, i32 1
  %7774 = getelementptr inbounds %struct.Reg, %struct.Reg* %7773, i32 0, i32 0
  %RAX.i38 = bitcast %union.anon* %7774 to i64*
  %7775 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7776 = getelementptr inbounds %struct.GPR, %struct.GPR* %7775, i32 0, i32 7
  %7777 = getelementptr inbounds %struct.Reg, %struct.Reg* %7776, i32 0, i32 0
  %RDX.i39 = bitcast %union.anon* %7777 to i64*
  %7778 = load i64, i64* %RDX.i39
  %7779 = load i64, i64* %RAX.i38
  %7780 = load i64, i64* %PC.i37
  %7781 = add i64 %7780, 3
  store i64 %7781, i64* %PC.i37
  %7782 = add i64 %7779, %7778
  store i64 %7782, i64* %RDX.i39, align 8
  %7783 = icmp ult i64 %7782, %7778
  %7784 = icmp ult i64 %7782, %7779
  %7785 = or i1 %7783, %7784
  %7786 = zext i1 %7785 to i8
  %7787 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7786, i8* %7787, align 1
  %7788 = trunc i64 %7782 to i32
  %7789 = and i32 %7788, 255
  %7790 = call i32 @llvm.ctpop.i32(i32 %7789)
  %7791 = trunc i32 %7790 to i8
  %7792 = and i8 %7791, 1
  %7793 = xor i8 %7792, 1
  %7794 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7793, i8* %7794, align 1
  %7795 = xor i64 %7779, %7778
  %7796 = xor i64 %7795, %7782
  %7797 = lshr i64 %7796, 4
  %7798 = trunc i64 %7797 to i8
  %7799 = and i8 %7798, 1
  %7800 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7799, i8* %7800, align 1
  %7801 = icmp eq i64 %7782, 0
  %7802 = zext i1 %7801 to i8
  %7803 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7802, i8* %7803, align 1
  %7804 = lshr i64 %7782, 63
  %7805 = trunc i64 %7804 to i8
  %7806 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7805, i8* %7806, align 1
  %7807 = lshr i64 %7778, 63
  %7808 = lshr i64 %7779, 63
  %7809 = xor i64 %7804, %7807
  %7810 = xor i64 %7804, %7808
  %7811 = add i64 %7809, %7810
  %7812 = icmp eq i64 %7811, 2
  %7813 = zext i1 %7812 to i8
  %7814 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7813, i8* %7814, align 1
  store %struct.Memory* %loadMem_47bda4, %struct.Memory** %MEMORY
  %loadMem_47bda7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7815 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7816 = getelementptr inbounds %struct.GPR, %struct.GPR* %7815, i32 0, i32 33
  %7817 = getelementptr inbounds %struct.Reg, %struct.Reg* %7816, i32 0, i32 0
  %PC.i34 = bitcast %union.anon* %7817 to i64*
  %7818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7819 = getelementptr inbounds %struct.GPR, %struct.GPR* %7818, i32 0, i32 1
  %7820 = getelementptr inbounds %struct.Reg, %struct.Reg* %7819, i32 0, i32 0
  %RAX.i35 = bitcast %union.anon* %7820 to i64*
  %7821 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7822 = getelementptr inbounds %struct.GPR, %struct.GPR* %7821, i32 0, i32 15
  %7823 = getelementptr inbounds %struct.Reg, %struct.Reg* %7822, i32 0, i32 0
  %RBP.i36 = bitcast %union.anon* %7823 to i64*
  %7824 = load i64, i64* %RBP.i36
  %7825 = sub i64 %7824, 4
  %7826 = load i64, i64* %PC.i34
  %7827 = add i64 %7826, 4
  store i64 %7827, i64* %PC.i34
  %7828 = inttoptr i64 %7825 to i32*
  %7829 = load i32, i32* %7828
  %7830 = sext i32 %7829 to i64
  store i64 %7830, i64* %RAX.i35, align 8
  store %struct.Memory* %loadMem_47bda7, %struct.Memory** %MEMORY
  %loadMem_47bdab = load %struct.Memory*, %struct.Memory** %MEMORY
  %7831 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7832 = getelementptr inbounds %struct.GPR, %struct.GPR* %7831, i32 0, i32 33
  %7833 = getelementptr inbounds %struct.Reg, %struct.Reg* %7832, i32 0, i32 0
  %PC.i32 = bitcast %union.anon* %7833 to i64*
  %7834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7835 = getelementptr inbounds %struct.GPR, %struct.GPR* %7834, i32 0, i32 11
  %7836 = getelementptr inbounds %struct.Reg, %struct.Reg* %7835, i32 0, i32 0
  %EDI.i = bitcast %union.anon* %7836 to i32*
  %7837 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7838 = getelementptr inbounds %struct.GPR, %struct.GPR* %7837, i32 0, i32 1
  %7839 = getelementptr inbounds %struct.Reg, %struct.Reg* %7838, i32 0, i32 0
  %RAX.i33 = bitcast %union.anon* %7839 to i64*
  %7840 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7841 = getelementptr inbounds %struct.GPR, %struct.GPR* %7840, i32 0, i32 7
  %7842 = getelementptr inbounds %struct.Reg, %struct.Reg* %7841, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %7842 to i64*
  %7843 = load i64, i64* %RDX.i
  %7844 = load i64, i64* %RAX.i33
  %7845 = mul i64 %7844, 4
  %7846 = add i64 %7845, %7843
  %7847 = load i32, i32* %EDI.i
  %7848 = zext i32 %7847 to i64
  %7849 = load i64, i64* %PC.i32
  %7850 = add i64 %7849, 3
  store i64 %7850, i64* %PC.i32
  %7851 = inttoptr i64 %7846 to i32*
  store i32 %7847, i32* %7851
  store %struct.Memory* %loadMem_47bdab, %struct.Memory** %MEMORY
  %loadMem_47bdae = load %struct.Memory*, %struct.Memory** %MEMORY
  %7852 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7853 = getelementptr inbounds %struct.GPR, %struct.GPR* %7852, i32 0, i32 33
  %7854 = getelementptr inbounds %struct.Reg, %struct.Reg* %7853, i32 0, i32 0
  %PC.i29 = bitcast %union.anon* %7854 to i64*
  %7855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7856 = getelementptr inbounds %struct.GPR, %struct.GPR* %7855, i32 0, i32 1
  %7857 = getelementptr inbounds %struct.Reg, %struct.Reg* %7856, i32 0, i32 0
  %RAX.i30 = bitcast %union.anon* %7857 to i64*
  %7858 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7859 = getelementptr inbounds %struct.GPR, %struct.GPR* %7858, i32 0, i32 15
  %7860 = getelementptr inbounds %struct.Reg, %struct.Reg* %7859, i32 0, i32 0
  %RBP.i31 = bitcast %union.anon* %7860 to i64*
  %7861 = load i64, i64* %RBP.i31
  %7862 = sub i64 %7861, 4
  %7863 = load i64, i64* %PC.i29
  %7864 = add i64 %7863, 3
  store i64 %7864, i64* %PC.i29
  %7865 = inttoptr i64 %7862 to i32*
  %7866 = load i32, i32* %7865
  %7867 = zext i32 %7866 to i64
  store i64 %7867, i64* %RAX.i30, align 8
  store %struct.Memory* %loadMem_47bdae, %struct.Memory** %MEMORY
  %loadMem_47bdb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7868 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7869 = getelementptr inbounds %struct.GPR, %struct.GPR* %7868, i32 0, i32 33
  %7870 = getelementptr inbounds %struct.Reg, %struct.Reg* %7869, i32 0, i32 0
  %PC.i27 = bitcast %union.anon* %7870 to i64*
  %7871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7872 = getelementptr inbounds %struct.GPR, %struct.GPR* %7871, i32 0, i32 1
  %7873 = getelementptr inbounds %struct.Reg, %struct.Reg* %7872, i32 0, i32 0
  %RAX.i28 = bitcast %union.anon* %7873 to i64*
  %7874 = load i64, i64* %RAX.i28
  %7875 = load i64, i64* %PC.i27
  %7876 = add i64 %7875, 3
  store i64 %7876, i64* %PC.i27
  %7877 = trunc i64 %7874 to i32
  %7878 = add i32 1, %7877
  %7879 = zext i32 %7878 to i64
  store i64 %7879, i64* %RAX.i28, align 8
  %7880 = icmp ult i32 %7878, %7877
  %7881 = icmp ult i32 %7878, 1
  %7882 = or i1 %7880, %7881
  %7883 = zext i1 %7882 to i8
  %7884 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7883, i8* %7884, align 1
  %7885 = and i32 %7878, 255
  %7886 = call i32 @llvm.ctpop.i32(i32 %7885)
  %7887 = trunc i32 %7886 to i8
  %7888 = and i8 %7887, 1
  %7889 = xor i8 %7888, 1
  %7890 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7889, i8* %7890, align 1
  %7891 = xor i64 1, %7874
  %7892 = trunc i64 %7891 to i32
  %7893 = xor i32 %7892, %7878
  %7894 = lshr i32 %7893, 4
  %7895 = trunc i32 %7894 to i8
  %7896 = and i8 %7895, 1
  %7897 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7896, i8* %7897, align 1
  %7898 = icmp eq i32 %7878, 0
  %7899 = zext i1 %7898 to i8
  %7900 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7899, i8* %7900, align 1
  %7901 = lshr i32 %7878, 31
  %7902 = trunc i32 %7901 to i8
  %7903 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7902, i8* %7903, align 1
  %7904 = lshr i32 %7877, 31
  %7905 = xor i32 %7901, %7904
  %7906 = add i32 %7905, %7901
  %7907 = icmp eq i32 %7906, 2
  %7908 = zext i1 %7907 to i8
  %7909 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7908, i8* %7909, align 1
  store %struct.Memory* %loadMem_47bdb1, %struct.Memory** %MEMORY
  %loadMem_47bdb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7911 = getelementptr inbounds %struct.GPR, %struct.GPR* %7910, i32 0, i32 33
  %7912 = getelementptr inbounds %struct.Reg, %struct.Reg* %7911, i32 0, i32 0
  %PC.i24 = bitcast %union.anon* %7912 to i64*
  %7913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7914 = getelementptr inbounds %struct.GPR, %struct.GPR* %7913, i32 0, i32 1
  %7915 = getelementptr inbounds %struct.Reg, %struct.Reg* %7914, i32 0, i32 0
  %EAX.i25 = bitcast %union.anon* %7915 to i32*
  %7916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7917 = getelementptr inbounds %struct.GPR, %struct.GPR* %7916, i32 0, i32 15
  %7918 = getelementptr inbounds %struct.Reg, %struct.Reg* %7917, i32 0, i32 0
  %RBP.i26 = bitcast %union.anon* %7918 to i64*
  %7919 = load i64, i64* %RBP.i26
  %7920 = sub i64 %7919, 4
  %7921 = load i32, i32* %EAX.i25
  %7922 = zext i32 %7921 to i64
  %7923 = load i64, i64* %PC.i24
  %7924 = add i64 %7923, 3
  store i64 %7924, i64* %PC.i24
  %7925 = inttoptr i64 %7920 to i32*
  store i32 %7921, i32* %7925
  store %struct.Memory* %loadMem_47bdb4, %struct.Memory** %MEMORY
  %loadMem_47bdb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7927 = getelementptr inbounds %struct.GPR, %struct.GPR* %7926, i32 0, i32 33
  %7928 = getelementptr inbounds %struct.Reg, %struct.Reg* %7927, i32 0, i32 0
  %PC.i23 = bitcast %union.anon* %7928 to i64*
  %7929 = load i64, i64* %PC.i23
  %7930 = add i64 %7929, -594
  %7931 = load i64, i64* %PC.i23
  %7932 = add i64 %7931, 5
  store i64 %7932, i64* %PC.i23
  %7933 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7930, i64* %7933, align 8
  store %struct.Memory* %loadMem_47bdb7, %struct.Memory** %MEMORY
  br label %block_.L_47bb65

block_.L_47bdbc:                                  ; preds = %block_.L_47bb65
  %loadMem_47bdbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %7934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7935 = getelementptr inbounds %struct.GPR, %struct.GPR* %7934, i32 0, i32 33
  %7936 = getelementptr inbounds %struct.Reg, %struct.Reg* %7935, i32 0, i32 0
  %PC.i22 = bitcast %union.anon* %7936 to i64*
  %7937 = load i64, i64* %PC.i22
  %7938 = add i64 %7937, 5
  %7939 = load i64, i64* %PC.i22
  %7940 = add i64 %7939, 5
  store i64 %7940, i64* %PC.i22
  %7941 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7938, i64* %7941, align 8
  store %struct.Memory* %loadMem_47bdbc, %struct.Memory** %MEMORY
  br label %block_.L_47bdc1

block_.L_47bdc1:                                  ; preds = %block_.L_47bdbc
  %loadMem_47bdc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7942 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7943 = getelementptr inbounds %struct.GPR, %struct.GPR* %7942, i32 0, i32 33
  %7944 = getelementptr inbounds %struct.Reg, %struct.Reg* %7943, i32 0, i32 0
  %PC.i19 = bitcast %union.anon* %7944 to i64*
  %7945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7946 = getelementptr inbounds %struct.GPR, %struct.GPR* %7945, i32 0, i32 1
  %7947 = getelementptr inbounds %struct.Reg, %struct.Reg* %7946, i32 0, i32 0
  %RAX.i20 = bitcast %union.anon* %7947 to i64*
  %7948 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7949 = getelementptr inbounds %struct.GPR, %struct.GPR* %7948, i32 0, i32 15
  %7950 = getelementptr inbounds %struct.Reg, %struct.Reg* %7949, i32 0, i32 0
  %RBP.i21 = bitcast %union.anon* %7950 to i64*
  %7951 = load i64, i64* %RBP.i21
  %7952 = sub i64 %7951, 8
  %7953 = load i64, i64* %PC.i19
  %7954 = add i64 %7953, 3
  store i64 %7954, i64* %PC.i19
  %7955 = inttoptr i64 %7952 to i32*
  %7956 = load i32, i32* %7955
  %7957 = zext i32 %7956 to i64
  store i64 %7957, i64* %RAX.i20, align 8
  store %struct.Memory* %loadMem_47bdc1, %struct.Memory** %MEMORY
  %loadMem_47bdc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7958 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7959 = getelementptr inbounds %struct.GPR, %struct.GPR* %7958, i32 0, i32 33
  %7960 = getelementptr inbounds %struct.Reg, %struct.Reg* %7959, i32 0, i32 0
  %PC.i17 = bitcast %union.anon* %7960 to i64*
  %7961 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7962 = getelementptr inbounds %struct.GPR, %struct.GPR* %7961, i32 0, i32 1
  %7963 = getelementptr inbounds %struct.Reg, %struct.Reg* %7962, i32 0, i32 0
  %RAX.i18 = bitcast %union.anon* %7963 to i64*
  %7964 = load i64, i64* %RAX.i18
  %7965 = load i64, i64* %PC.i17
  %7966 = add i64 %7965, 3
  store i64 %7966, i64* %PC.i17
  %7967 = trunc i64 %7964 to i32
  %7968 = add i32 1, %7967
  %7969 = zext i32 %7968 to i64
  store i64 %7969, i64* %RAX.i18, align 8
  %7970 = icmp ult i32 %7968, %7967
  %7971 = icmp ult i32 %7968, 1
  %7972 = or i1 %7970, %7971
  %7973 = zext i1 %7972 to i8
  %7974 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7973, i8* %7974, align 1
  %7975 = and i32 %7968, 255
  %7976 = call i32 @llvm.ctpop.i32(i32 %7975)
  %7977 = trunc i32 %7976 to i8
  %7978 = and i8 %7977, 1
  %7979 = xor i8 %7978, 1
  %7980 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7979, i8* %7980, align 1
  %7981 = xor i64 1, %7964
  %7982 = trunc i64 %7981 to i32
  %7983 = xor i32 %7982, %7968
  %7984 = lshr i32 %7983, 4
  %7985 = trunc i32 %7984 to i8
  %7986 = and i8 %7985, 1
  %7987 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7986, i8* %7987, align 1
  %7988 = icmp eq i32 %7968, 0
  %7989 = zext i1 %7988 to i8
  %7990 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7989, i8* %7990, align 1
  %7991 = lshr i32 %7968, 31
  %7992 = trunc i32 %7991 to i8
  %7993 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7992, i8* %7993, align 1
  %7994 = lshr i32 %7967, 31
  %7995 = xor i32 %7991, %7994
  %7996 = add i32 %7995, %7991
  %7997 = icmp eq i32 %7996, 2
  %7998 = zext i1 %7997 to i8
  %7999 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7998, i8* %7999, align 1
  store %struct.Memory* %loadMem_47bdc4, %struct.Memory** %MEMORY
  %loadMem_47bdc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8001 = getelementptr inbounds %struct.GPR, %struct.GPR* %8000, i32 0, i32 33
  %8002 = getelementptr inbounds %struct.Reg, %struct.Reg* %8001, i32 0, i32 0
  %PC.i14 = bitcast %union.anon* %8002 to i64*
  %8003 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8004 = getelementptr inbounds %struct.GPR, %struct.GPR* %8003, i32 0, i32 1
  %8005 = getelementptr inbounds %struct.Reg, %struct.Reg* %8004, i32 0, i32 0
  %EAX.i15 = bitcast %union.anon* %8005 to i32*
  %8006 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8007 = getelementptr inbounds %struct.GPR, %struct.GPR* %8006, i32 0, i32 15
  %8008 = getelementptr inbounds %struct.Reg, %struct.Reg* %8007, i32 0, i32 0
  %RBP.i16 = bitcast %union.anon* %8008 to i64*
  %8009 = load i64, i64* %RBP.i16
  %8010 = sub i64 %8009, 8
  %8011 = load i32, i32* %EAX.i15
  %8012 = zext i32 %8011 to i64
  %8013 = load i64, i64* %PC.i14
  %8014 = add i64 %8013, 3
  store i64 %8014, i64* %PC.i14
  %8015 = inttoptr i64 %8010 to i32*
  store i32 %8011, i32* %8015
  store %struct.Memory* %loadMem_47bdc7, %struct.Memory** %MEMORY
  %loadMem_47bdca = load %struct.Memory*, %struct.Memory** %MEMORY
  %8016 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8017 = getelementptr inbounds %struct.GPR, %struct.GPR* %8016, i32 0, i32 33
  %8018 = getelementptr inbounds %struct.Reg, %struct.Reg* %8017, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %8018 to i64*
  %8019 = load i64, i64* %PC.i13
  %8020 = add i64 %8019, -630
  %8021 = load i64, i64* %PC.i13
  %8022 = add i64 %8021, 5
  store i64 %8022, i64* %PC.i13
  %8023 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %8020, i64* %8023, align 8
  store %struct.Memory* %loadMem_47bdca, %struct.Memory** %MEMORY
  br label %block_.L_47bb54

block_.L_47bdcf:                                  ; preds = %block_.L_47bb54
  %loadMem_47bdcf = load %struct.Memory*, %struct.Memory** %MEMORY
  %8024 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8025 = getelementptr inbounds %struct.GPR, %struct.GPR* %8024, i32 0, i32 33
  %8026 = getelementptr inbounds %struct.Reg, %struct.Reg* %8025, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %8026 to i64*
  %8027 = load i64, i64* %PC.i12
  %8028 = add i64 %8027, 5
  %8029 = load i64, i64* %PC.i12
  %8030 = add i64 %8029, 5
  store i64 %8030, i64* %PC.i12
  %8031 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %8028, i64* %8031, align 8
  store %struct.Memory* %loadMem_47bdcf, %struct.Memory** %MEMORY
  br label %block_.L_47bdd4

block_.L_47bdd4:                                  ; preds = %block_.L_47bdcf
  %loadMem_47bdd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8033 = getelementptr inbounds %struct.GPR, %struct.GPR* %8032, i32 0, i32 33
  %8034 = getelementptr inbounds %struct.Reg, %struct.Reg* %8033, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %8034 to i64*
  %8035 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8036 = getelementptr inbounds %struct.GPR, %struct.GPR* %8035, i32 0, i32 1
  %8037 = getelementptr inbounds %struct.Reg, %struct.Reg* %8036, i32 0, i32 0
  %RAX.i10 = bitcast %union.anon* %8037 to i64*
  %8038 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8039 = getelementptr inbounds %struct.GPR, %struct.GPR* %8038, i32 0, i32 15
  %8040 = getelementptr inbounds %struct.Reg, %struct.Reg* %8039, i32 0, i32 0
  %RBP.i11 = bitcast %union.anon* %8040 to i64*
  %8041 = load i64, i64* %RBP.i11
  %8042 = sub i64 %8041, 12
  %8043 = load i64, i64* %PC.i9
  %8044 = add i64 %8043, 3
  store i64 %8044, i64* %PC.i9
  %8045 = inttoptr i64 %8042 to i32*
  %8046 = load i32, i32* %8045
  %8047 = zext i32 %8046 to i64
  store i64 %8047, i64* %RAX.i10, align 8
  store %struct.Memory* %loadMem_47bdd4, %struct.Memory** %MEMORY
  %loadMem_47bdd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8048 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8049 = getelementptr inbounds %struct.GPR, %struct.GPR* %8048, i32 0, i32 33
  %8050 = getelementptr inbounds %struct.Reg, %struct.Reg* %8049, i32 0, i32 0
  %PC.i8 = bitcast %union.anon* %8050 to i64*
  %8051 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8052 = getelementptr inbounds %struct.GPR, %struct.GPR* %8051, i32 0, i32 1
  %8053 = getelementptr inbounds %struct.Reg, %struct.Reg* %8052, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %8053 to i64*
  %8054 = load i64, i64* %RAX.i
  %8055 = load i64, i64* %PC.i8
  %8056 = add i64 %8055, 3
  store i64 %8056, i64* %PC.i8
  %8057 = trunc i64 %8054 to i32
  %8058 = add i32 1, %8057
  %8059 = zext i32 %8058 to i64
  store i64 %8059, i64* %RAX.i, align 8
  %8060 = icmp ult i32 %8058, %8057
  %8061 = icmp ult i32 %8058, 1
  %8062 = or i1 %8060, %8061
  %8063 = zext i1 %8062 to i8
  %8064 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8063, i8* %8064, align 1
  %8065 = and i32 %8058, 255
  %8066 = call i32 @llvm.ctpop.i32(i32 %8065)
  %8067 = trunc i32 %8066 to i8
  %8068 = and i8 %8067, 1
  %8069 = xor i8 %8068, 1
  %8070 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8069, i8* %8070, align 1
  %8071 = xor i64 1, %8054
  %8072 = trunc i64 %8071 to i32
  %8073 = xor i32 %8072, %8058
  %8074 = lshr i32 %8073, 4
  %8075 = trunc i32 %8074 to i8
  %8076 = and i8 %8075, 1
  %8077 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8076, i8* %8077, align 1
  %8078 = icmp eq i32 %8058, 0
  %8079 = zext i1 %8078 to i8
  %8080 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8079, i8* %8080, align 1
  %8081 = lshr i32 %8058, 31
  %8082 = trunc i32 %8081 to i8
  %8083 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8082, i8* %8083, align 1
  %8084 = lshr i32 %8057, 31
  %8085 = xor i32 %8081, %8084
  %8086 = add i32 %8085, %8081
  %8087 = icmp eq i32 %8086, 2
  %8088 = zext i1 %8087 to i8
  %8089 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8088, i8* %8089, align 1
  store %struct.Memory* %loadMem_47bdd7, %struct.Memory** %MEMORY
  %loadMem_47bdda = load %struct.Memory*, %struct.Memory** %MEMORY
  %8090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8091 = getelementptr inbounds %struct.GPR, %struct.GPR* %8090, i32 0, i32 33
  %8092 = getelementptr inbounds %struct.Reg, %struct.Reg* %8091, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %8092 to i64*
  %8093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8094 = getelementptr inbounds %struct.GPR, %struct.GPR* %8093, i32 0, i32 1
  %8095 = getelementptr inbounds %struct.Reg, %struct.Reg* %8094, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %8095 to i32*
  %8096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8097 = getelementptr inbounds %struct.GPR, %struct.GPR* %8096, i32 0, i32 15
  %8098 = getelementptr inbounds %struct.Reg, %struct.Reg* %8097, i32 0, i32 0
  %RBP.i7 = bitcast %union.anon* %8098 to i64*
  %8099 = load i64, i64* %RBP.i7
  %8100 = sub i64 %8099, 12
  %8101 = load i32, i32* %EAX.i
  %8102 = zext i32 %8101 to i64
  %8103 = load i64, i64* %PC.i6
  %8104 = add i64 %8103, 3
  store i64 %8104, i64* %PC.i6
  %8105 = inttoptr i64 %8100 to i32*
  store i32 %8101, i32* %8105
  store %struct.Memory* %loadMem_47bdda, %struct.Memory** %MEMORY
  %loadMem_47bddd = load %struct.Memory*, %struct.Memory** %MEMORY
  %8106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8107 = getelementptr inbounds %struct.GPR, %struct.GPR* %8106, i32 0, i32 33
  %8108 = getelementptr inbounds %struct.Reg, %struct.Reg* %8107, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %8108 to i64*
  %8109 = load i64, i64* %PC.i5
  %8110 = add i64 %8109, -678
  %8111 = load i64, i64* %PC.i5
  %8112 = add i64 %8111, 5
  store i64 %8112, i64* %PC.i5
  %8113 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %8110, i64* %8113, align 8
  store %struct.Memory* %loadMem_47bddd, %struct.Memory** %MEMORY
  br label %block_.L_47bb37

block_.L_47bde2:                                  ; preds = %block_.L_47bb37
  %loadMem_47bde2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8115 = getelementptr inbounds %struct.GPR, %struct.GPR* %8114, i32 0, i32 33
  %8116 = getelementptr inbounds %struct.Reg, %struct.Reg* %8115, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %8116 to i64*
  %8117 = load i64, i64* %PC.i4
  %8118 = add i64 %8117, 5
  %8119 = load i64, i64* %PC.i4
  %8120 = add i64 %8119, 5
  store i64 %8120, i64* %PC.i4
  %8121 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %8118, i64* %8121, align 8
  store %struct.Memory* %loadMem_47bde2, %struct.Memory** %MEMORY
  br label %block_.L_47bde7

block_.L_47bde7:                                  ; preds = %block_.L_47bde2, %block_.L_47bb2b
  %loadMem_47bde7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8123 = getelementptr inbounds %struct.GPR, %struct.GPR* %8122, i32 0, i32 33
  %8124 = getelementptr inbounds %struct.Reg, %struct.Reg* %8123, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %8124 to i64*
  %8125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8126 = getelementptr inbounds %struct.GPR, %struct.GPR* %8125, i32 0, i32 15
  %8127 = getelementptr inbounds %struct.Reg, %struct.Reg* %8126, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %8127 to i64*
  %8128 = load i64, i64* %PC.i2
  %8129 = add i64 %8128, 1
  store i64 %8129, i64* %PC.i2
  %8130 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %8131 = load i64, i64* %8130, align 8
  %8132 = add i64 %8131, 8
  %8133 = inttoptr i64 %8131 to i64*
  %8134 = load i64, i64* %8133
  store i64 %8134, i64* %RBP.i3, align 8
  store i64 %8132, i64* %8130, align 8
  store %struct.Memory* %loadMem_47bde7, %struct.Memory** %MEMORY
  %loadMem_47bde8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8136 = getelementptr inbounds %struct.GPR, %struct.GPR* %8135, i32 0, i32 33
  %8137 = getelementptr inbounds %struct.Reg, %struct.Reg* %8136, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %8137 to i64*
  %8138 = load i64, i64* %PC.i1
  %8139 = add i64 %8138, 1
  store i64 %8139, i64* %PC.i1
  %8140 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %8141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %8142 = load i64, i64* %8141, align 8
  %8143 = inttoptr i64 %8142 to i64*
  %8144 = load i64, i64* %8143
  store i64 %8144, i64* %8140, align 8
  %8145 = add i64 %8142, 8
  store i64 %8145, i64* %8141, align 8
  store %struct.Memory* %loadMem_47bde8, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_47bde8
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

define %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 8
  store i64 %10, i64* %PC
  %11 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %11, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0__0xe00__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 3584
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
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

define %struct.Memory* @routine_je_.L_47bb30(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x0__MINUS0xc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 12
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0xd__MINUS0xc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 12
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sub i32 %14, 13
  %16 = icmp ult i32 %14, 13
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
  %25 = xor i32 %14, 13
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

define %struct.Memory* @routine_jge_.L_47bb2b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__0xf___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i32 15, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RAX, align 8
  %15 = icmp ult i32 %13, %12
  %16 = icmp ult i32 %13, 15
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
  %26 = xor i64 15, %9
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

define %struct.Memory* @routine_subl__0xa___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %12, 10
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RAX, align 8
  %15 = icmp ult i32 %12, 10
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
  %24 = xor i64 10, %9
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

define %struct.Memory* @routine_movl__0x0__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 8
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x4__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 8
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sub i32 %14, 4
  %16 = icmp ult i32 %14, 4
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
  %25 = xor i32 %14, 4
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

define %struct.Memory* @routine_jge_.L_47bb18(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x4__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sub i32 %14, 4
  %16 = icmp ult i32 %14, 4
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
  %25 = xor i32 %14, 4
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

define %struct.Memory* @routine_jge_.L_47bb05(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_shll__0x2___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = and i64 %9, 4294967295
  %13 = shl i64 %12, 1
  %14 = trunc i64 %13 to i32
  %15 = icmp slt i32 %14, 0
  %16 = shl i32 %14, 1
  %17 = zext i32 %16 to i64
  store i64 %17, i64* %RAX, align 8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %19 = zext i1 %15 to i8
  store i8 %19, i8* %18, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %21 = and i32 %16, 254
  %22 = call i32 @llvm.ctpop.i32(i32 %21)
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = xor i8 %24, 1
  store i8 %25, i8* %20, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %28 = icmp eq i32 %16, 0
  %29 = zext i1 %28 to i8
  store i8 %29, i8* %27, align 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %31 = lshr i32 %16, 31
  %32 = trunc i32 %31 to i8
  store i8 %32, i8* %30, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %33, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x8__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 8
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

define %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RCX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 8
  store i64 %10, i64* %PC
  %11 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %11, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x2__0x18__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sub i32 %14, 2
  %16 = icmp ult i32 %14, 2
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
  %25 = xor i32 %14, 2
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

define %struct.Memory* @routine_jne_.L_47b98f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x724be0___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  store i64 7490528, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 %12, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__0x340___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC
  %12 = add i64 832, %9
  store i64 %12, i64* %RCX, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 832
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
  %25 = xor i64 832, %9
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

define %struct.Memory* @routine_movq__0x710020___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  store i64 7405600, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x10__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movswl_0x70fd60___rsi_2____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RSI
  %13 = mul i64 %12, 2
  %14 = add i64 %13, 7404896
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i16*
  %18 = load i16, i16* %17
  %19 = sext i16 %18 to i64
  %20 = and i64 %19, 4294967295
  store i64 %20, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x14__rbp____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = bitcast i32* %R8D to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 20
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
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

define %struct.Memory* @routine_movl__r8d___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RCX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %R8D
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_shll__cl___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 11
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RDI = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RDI
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

; <label>:19:                                     ; preds = %block_400488
  %20 = trunc i64 %13 to i32
  %21 = shl i32 %20, 1
  %22 = icmp slt i32 %20, 0
  %23 = icmp slt i32 %21, 0
  %24 = xor i1 %22, %23
  br label %34

; <label>:25:                                     ; preds = %block_400488
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
  store i64 %38, i64* %RDI, align 8
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

_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit: ; preds = %block_400488, %34
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

define %struct.Memory* @routine_shlq__0x6___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = shl i64 %9, 5
  %13 = icmp slt i64 %12, 0
  %14 = shl i64 %12, 1
  store i64 %14, i64* %RSI, align 8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %16 = zext i1 %13 to i8
  store i8 %16, i8* %15, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %18 = trunc i64 %14 to i32
  %19 = and i32 %18, 254
  %20 = call i32 @llvm.ctpop.i32(i32 %19)
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = xor i8 %22, 1
  store i8 %23, i8* %17, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %26 = icmp eq i64 %14, 0
  %27 = zext i1 %26 to i8
  store i8 %27, i8* %25, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %29 = lshr i64 %14, 63
  %30 = trunc i64 %29 to i8
  store i8 %30, i8* %28, align 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %31, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__rsi___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %RSI
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = add i64 %13, %12
  store i64 %16, i64* %RDX, align 8
  %17 = icmp ult i64 %16, %12
  %18 = icmp ult i64 %16, %13
  %19 = or i1 %17, %18
  %20 = zext i1 %19 to i8
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %20, i8* %21, align 1
  %22 = trunc i64 %16 to i32
  %23 = and i32 %22, 255
  %24 = call i32 @llvm.ctpop.i32(i32 %23)
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = xor i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %27, i8* %28, align 1
  %29 = xor i64 %13, %12
  %30 = xor i64 %29, %16
  %31 = lshr i64 %30, 4
  %32 = trunc i64 %31 to i8
  %33 = and i8 %32, 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %33, i8* %34, align 1
  %35 = icmp eq i64 %16, 0
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %36, i8* %37, align 1
  %38 = lshr i64 %16, 63
  %39 = trunc i64 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %39, i8* %40, align 1
  %41 = lshr i64 %12, 63
  %42 = lshr i64 %13, 63
  %43 = xor i64 %38, %41
  %44 = xor i64 %38, %42
  %45 = add i64 %43, %44
  %46 = icmp eq i64 %45, 2
  %47 = zext i1 %46 to i8
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %47, i8* %48, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x8__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_shlq__0x4___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = shl i64 %9, 3
  %13 = icmp slt i64 %12, 0
  %14 = shl i64 %12, 1
  store i64 %14, i64* %RSI, align 8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %16 = zext i1 %13 to i8
  store i8 %16, i8* %15, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %18 = trunc i64 %14 to i32
  %19 = and i32 %18, 254
  %20 = call i32 @llvm.ctpop.i32(i32 %19)
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = xor i8 %22, 1
  store i8 %23, i8* %17, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %26 = icmp eq i64 %14, 0
  %27 = zext i1 %26 to i8
  store i8 %27, i8* %25, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %29 = lshr i64 %14, 63
  %30 = trunc i64 %29 to i8
  store i8 %30, i8* %28, align 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %31, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x4__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 4
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edi____rdx__rsi_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDX = bitcast %union.anon* %11 to i64*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 9
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RSI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RDX
  %16 = load i64, i64* %RSI
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i32, i32* %EDI
  %20 = zext i32 %19 to i64
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 3
  store i64 %22, i64* %PC
  %23 = inttoptr i64 %18 to i32*
  store i32 %19, i32* %23
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x10__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movswl_0x70fd80___rdx_2____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDX
  %13 = mul i64 %12, 2
  %14 = add i64 %13, 7404928
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i16*
  %18 = load i16, i16* %17
  %19 = sext i16 %18 to i64
  %20 = and i64 %19, 4294967295
  store i64 %20, i64* %RDI, align 8
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

define %struct.Memory* @routine_movslq_MINUS0xc__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_shlq__0x6___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = shl i64 %9, 5
  %13 = icmp slt i64 %12, 0
  %14 = shl i64 %12, 1
  store i64 %14, i64* %RDX, align 8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %16 = zext i1 %13 to i8
  store i8 %16, i8* %15, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %18 = trunc i64 %14 to i32
  %19 = and i32 %18, 254
  %20 = call i32 @llvm.ctpop.i32(i32 %19)
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = xor i8 %22, 1
  store i8 %23, i8* %17, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %26 = icmp eq i64 %14, 0
  %27 = zext i1 %26 to i8
  store i8 %27, i8* %25, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %29 = lshr i64 %14, 63
  %30 = trunc i64 %29 to i8
  store i8 %30, i8* %28, align 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %31, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__rdx___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = add i64 %13, %12
  store i64 %16, i64* %RAX, align 8
  %17 = icmp ult i64 %16, %12
  %18 = icmp ult i64 %16, %13
  %19 = or i1 %17, %18
  %20 = zext i1 %19 to i8
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %20, i8* %21, align 1
  %22 = trunc i64 %16 to i32
  %23 = and i32 %22, 255
  %24 = call i32 @llvm.ctpop.i32(i32 %23)
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = xor i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %27, i8* %28, align 1
  %29 = xor i64 %13, %12
  %30 = xor i64 %29, %16
  %31 = lshr i64 %30, 4
  %32 = trunc i64 %31 to i8
  %33 = and i8 %32, 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %33, i8* %34, align 1
  %35 = icmp eq i64 %16, 0
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %36, i8* %37, align 1
  %38 = lshr i64 %16, 63
  %39 = trunc i64 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %39, i8* %40, align 1
  %41 = lshr i64 %12, 63
  %42 = lshr i64 %13, 63
  %43 = xor i64 %38, %41
  %44 = xor i64 %38, %42
  %45 = add i64 %43, %44
  %46 = icmp eq i64 %45, 2
  %47 = zext i1 %46 to i8
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %47, i8* %48, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_shlq__0x4___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = shl i64 %9, 3
  %13 = icmp slt i64 %12, 0
  %14 = shl i64 %12, 1
  store i64 %14, i64* %RDX, align 8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %16 = zext i1 %13 to i8
  store i8 %16, i8* %15, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %18 = trunc i64 %14 to i32
  %19 = and i32 %18, 254
  %20 = call i32 @llvm.ctpop.i32(i32 %19)
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = xor i8 %22, 1
  store i8 %23, i8* %17, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %26 = icmp eq i64 %14, 0
  %27 = zext i1 %26 to i8
  store i8 %27, i8* %25, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %29 = lshr i64 %14, 63
  %30 = trunc i64 %29 to i8
  store i8 %30, i8* %28, align 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %31, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x4__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 4
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edi____rax__rdx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RAX = bitcast %union.anon* %11 to i64*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 7
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDX = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RDX
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i32, i32* %EDI
  %20 = zext i32 %19 to i64
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 3
  store i64 %22, i64* %PC
  %23 = inttoptr i64 %18 to i32*
  store i32 %19, i32* %23
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x10__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movswl_0x70fda0___rax_2____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = mul i64 %12, 2
  %14 = add i64 %13, 7404960
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i16*
  %18 = load i16, i16* %17
  %19 = sext i16 %18 to i64
  %20 = and i64 %19, 4294967295
  store i64 %20, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0xc__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_shlq__0x6___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = shl i64 %9, 5
  %13 = icmp slt i64 %12, 0
  %14 = shl i64 %12, 1
  store i64 %14, i64* %RAX, align 8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %16 = zext i1 %13 to i8
  store i8 %16, i8* %15, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %18 = trunc i64 %14 to i32
  %19 = and i32 %18, 254
  %20 = call i32 @llvm.ctpop.i32(i32 %19)
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = xor i8 %22, 1
  store i8 %23, i8* %17, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %26 = icmp eq i64 %14, 0
  %27 = zext i1 %26 to i8
  store i8 %27, i8* %25, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %29 = lshr i64 %14, 63
  %30 = trunc i64 %29 to i8
  store i8 %30, i8* %28, align 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %31, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x20__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__rax___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = add i64 %13, %12
  store i64 %16, i64* %RDX, align 8
  %17 = icmp ult i64 %16, %12
  %18 = icmp ult i64 %16, %13
  %19 = or i1 %17, %18
  %20 = zext i1 %19 to i8
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %20, i8* %21, align 1
  %22 = trunc i64 %16 to i32
  %23 = and i32 %22, 255
  %24 = call i32 @llvm.ctpop.i32(i32 %23)
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = xor i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %27, i8* %28, align 1
  %29 = xor i64 %13, %12
  %30 = xor i64 %29, %16
  %31 = lshr i64 %30, 4
  %32 = trunc i64 %31 to i8
  %33 = and i8 %32, 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %33, i8* %34, align 1
  %35 = icmp eq i64 %16, 0
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %36, i8* %37, align 1
  %38 = lshr i64 %16, 63
  %39 = trunc i64 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %39, i8* %40, align 1
  %41 = lshr i64 %12, 63
  %42 = lshr i64 %13, 63
  %43 = xor i64 %38, %41
  %44 = xor i64 %38, %42
  %45 = add i64 %43, %44
  %46 = icmp eq i64 %45, 2
  %47 = zext i1 %46 to i8
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %47, i8* %48, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x8__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_shlq__0x4___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = shl i64 %9, 3
  %13 = icmp slt i64 %12, 0
  %14 = shl i64 %12, 1
  store i64 %14, i64* %RAX, align 8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %16 = zext i1 %13 to i8
  store i8 %16, i8* %15, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %18 = trunc i64 %14 to i32
  %19 = and i32 %18, 254
  %20 = call i32 @llvm.ctpop.i32(i32 %19)
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = xor i8 %22, 1
  store i8 %23, i8* %17, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %26 = icmp eq i64 %14, 0
  %27 = zext i1 %26 to i8
  store i8 %27, i8* %25, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %29 = lshr i64 %14, 63
  %30 = trunc i64 %29 to i8
  store i8 %30, i8* %28, align 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %31, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x4__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edi____rdx__rax_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RAX = bitcast %union.anon* %11 to i64*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 7
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDX = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RDX
  %16 = load i64, i64* %RAX
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i32, i32* %EDI
  %20 = zext i32 %19 to i64
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 3
  store i64 %22, i64* %PC
  %23 = inttoptr i64 %18 to i32*
  store i32 %19, i32* %23
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_47ba43(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movswl_0x70fdc0___rsi_2____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RSI
  %13 = mul i64 %12, 2
  %14 = add i64 %13, 7404992
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i16*
  %18 = load i16, i16* %17
  %19 = sext i16 %18 to i64
  %20 = and i64 %19, 4294967295
  store i64 %20, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rcx__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movswl_0x70fde0___rdx_2____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDX
  %13 = mul i64 %12, 2
  %14 = add i64 %13, 7405024
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i16*
  %18 = load i16, i16* %17
  %19 = sext i16 %18 to i64
  %20 = and i64 %19, 4294967295
  store i64 %20, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movswl_0x70fe00___rax_2____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = mul i64 %12, 2
  %14 = add i64 %13, 7405056
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i16*
  %18 = load i16, i16* %17
  %19 = sext i16 %18 to i64
  %20 = and i64 %19, 4294967295
  store i64 %20, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x28__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 40
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x70e250___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  store i64 7397968, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x6ccf90___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  store i64 7131024, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movswl_0x70fe20___rsi_2____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RSI
  %13 = mul i64 %12, 2
  %14 = add i64 %13, 7405088
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i16*
  %18 = load i16, i16* %17
  %19 = sext i16 %18 to i64
  %20 = and i64 %19, 4294967295
  store i64 %20, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rcx__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movswl_0x70fe40___rdx_2____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDX
  %13 = mul i64 %12, 2
  %14 = add i64 %13, 7405120
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i16*
  %18 = load i16, i16* %17
  %19 = sext i16 %18 to i64
  %20 = and i64 %19, 4294967295
  store i64 %20, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movswl_0x70fe60___rax_2____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = mul i64 %12, 2
  %14 = add i64 %13, 7405152
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i16*
  %18 = load i16, i16* %17
  %19 = sext i16 %18 to i64
  %20 = and i64 %19, 4294967295
  store i64 %20, i64* %RDI, align 8
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

define %struct.Memory* @routine_movl__eax__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jmpq_.L_47b8ae(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_47bb0a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 8
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_47b89d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_47bb1d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_47b880(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_47bde7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jge_.L_47bde2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jge_.L_47bdcf(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jge_.L_47bdbc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_47bc46(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movswl_0x4b94b0___rsi_2____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RSI
  %13 = mul i64 %12, 2
  %14 = add i64 %13, 4953264
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i16*
  %18 = load i16, i16* %17
  %19 = sext i16 %18 to i64
  %20 = and i64 %19, 4294967295
  store i64 %20, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rcx__MINUS0x38__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movswl_0x4b94b0___rdx_2____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDX
  %13 = mul i64 %12, 2
  %14 = add i64 %13, 4953264
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i16*
  %18 = load i16, i16* %17
  %19 = sext i16 %18 to i64
  %20 = and i64 %19, 4294967295
  store i64 %20, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movswl_0x4b94b0___rax_2____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = mul i64 %12, 2
  %14 = add i64 %13, 4953264
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i16*
  %18 = load i16, i16* %17
  %19 = sext i16 %18 to i64
  %20 = and i64 %19, 4294967295
  store i64 %20, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x38__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 56
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_47bcfa(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movswl_0x4b94d0___rsi_2____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RSI
  %13 = mul i64 %12, 2
  %14 = add i64 %13, 4953296
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i16*
  %18 = load i16, i16* %17
  %19 = sext i16 %18 to i64
  %20 = and i64 %19, 4294967295
  store i64 %20, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rcx__MINUS0x40__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movswl_0x4b94d0___rdx_2____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDX
  %13 = mul i64 %12, 2
  %14 = add i64 %13, 4953296
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i16*
  %18 = load i16, i16* %17
  %19 = sext i16 %18 to i64
  %20 = and i64 %19, 4294967295
  store i64 %20, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movswl_0x4b94d0___rax_2____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = mul i64 %12, 2
  %14 = add i64 %13, 4953296
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i16*
  %18 = load i16, i16* %17
  %19 = sext i16 %18 to i64
  %20 = and i64 %19, 4294967295
  store i64 %20, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x40__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movswl_0x4b94f0___rsi_2____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RSI
  %13 = mul i64 %12, 2
  %14 = add i64 %13, 4953328
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i16*
  %18 = load i16, i16* %17
  %19 = sext i16 %18 to i64
  %20 = and i64 %19, 4294967295
  store i64 %20, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rcx__MINUS0x48__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movswl_0x4b94f0___rdx_2____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDX
  %13 = mul i64 %12, 2
  %14 = add i64 %13, 4953328
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i16*
  %18 = load i16, i16* %17
  %19 = sext i16 %18 to i64
  %20 = and i64 %19, 4294967295
  store i64 %20, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movswl_0x4b94f0___rax_2____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = mul i64 %12, 2
  %14 = add i64 %13, 4953328
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i16*
  %18 = load i16, i16* %17
  %19 = sext i16 %18 to i64
  %20 = and i64 %19, 4294967295
  store i64 %20, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x48__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 72
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_47bb65(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_47bdc1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_47bb54(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_47bdd4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_47bb37(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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
