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
define %struct.Memory* @CalculateOffset8Param(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_47bdf0 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_47bdf0, %struct.Memory** %MEMORY
  %loadMem_47bdf1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i373 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i374 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i
  %27 = load i64, i64* %PC.i373
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i373
  store i64 %26, i64* %RBP.i374, align 8
  store %struct.Memory* %loadMem_47bdf1, %struct.Memory** %MEMORY
  %loadMem_47bdf4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i371 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RAX.i372 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %PC.i371
  %36 = add i64 %35, 8
  store i64 %36, i64* %PC.i371
  %37 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %37, i64* %RAX.i372, align 8
  store %struct.Memory* %loadMem_47bdf4, %struct.Memory** %MEMORY
  %loadMem_47bdfc = load %struct.Memory*, %struct.Memory** %MEMORY
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %39 = getelementptr inbounds %struct.GPR, %struct.GPR* %38, i32 0, i32 33
  %40 = getelementptr inbounds %struct.Reg, %struct.Reg* %39, i32 0, i32 0
  %PC.i369 = bitcast %union.anon* %40 to i64*
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %42 = getelementptr inbounds %struct.GPR, %struct.GPR* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.Reg, %struct.Reg* %42, i32 0, i32 0
  %RAX.i370 = bitcast %union.anon* %43 to i64*
  %44 = load i64, i64* %RAX.i370
  %45 = add i64 %44, 3584
  %46 = load i64, i64* %PC.i369
  %47 = add i64 %46, 7
  store i64 %47, i64* %PC.i369
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
  store %struct.Memory* %loadMem_47bdfc, %struct.Memory** %MEMORY
  %loadMem_47be03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 33
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %PC.i368 = bitcast %union.anon* %72 to i64*
  %73 = load i64, i64* %PC.i368
  %74 = add i64 %73, 329
  %75 = load i64, i64* %PC.i368
  %76 = add i64 %75, 6
  %77 = load i64, i64* %PC.i368
  %78 = add i64 %77, 6
  store i64 %78, i64* %PC.i368
  %79 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %80 = load i8, i8* %79, align 1
  store i8 %80, i8* %BRANCH_TAKEN, align 1
  %81 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %82 = icmp ne i8 %80, 0
  %83 = select i1 %82, i64 %74, i64 %76
  store i64 %83, i64* %81, align 8
  store %struct.Memory* %loadMem_47be03, %struct.Memory** %MEMORY
  %loadBr_47be03 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47be03 = icmp eq i8 %loadBr_47be03, 1
  br i1 %cmpBr_47be03, label %block_.L_47bf4c, label %block_47be09

block_47be09:                                     ; preds = %entry
  %loadMem_47be09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %84 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %85 = getelementptr inbounds %struct.GPR, %struct.GPR* %84, i32 0, i32 33
  %86 = getelementptr inbounds %struct.Reg, %struct.Reg* %85, i32 0, i32 0
  %PC.i366 = bitcast %union.anon* %86 to i64*
  %87 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %88 = getelementptr inbounds %struct.GPR, %struct.GPR* %87, i32 0, i32 15
  %89 = getelementptr inbounds %struct.Reg, %struct.Reg* %88, i32 0, i32 0
  %RBP.i367 = bitcast %union.anon* %89 to i64*
  %90 = load i64, i64* %RBP.i367
  %91 = sub i64 %90, 12
  %92 = load i64, i64* %PC.i366
  %93 = add i64 %92, 7
  store i64 %93, i64* %PC.i366
  %94 = inttoptr i64 %91 to i32*
  store i32 0, i32* %94
  store %struct.Memory* %loadMem_47be09, %struct.Memory** %MEMORY
  br label %block_.L_47be10

block_.L_47be10:                                  ; preds = %block_.L_47bf39, %block_47be09
  %loadMem_47be10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %95 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %96 = getelementptr inbounds %struct.GPR, %struct.GPR* %95, i32 0, i32 33
  %97 = getelementptr inbounds %struct.Reg, %struct.Reg* %96, i32 0, i32 0
  %PC.i364 = bitcast %union.anon* %97 to i64*
  %98 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %99 = getelementptr inbounds %struct.GPR, %struct.GPR* %98, i32 0, i32 15
  %100 = getelementptr inbounds %struct.Reg, %struct.Reg* %99, i32 0, i32 0
  %RBP.i365 = bitcast %union.anon* %100 to i64*
  %101 = load i64, i64* %RBP.i365
  %102 = sub i64 %101, 12
  %103 = load i64, i64* %PC.i364
  %104 = add i64 %103, 4
  store i64 %104, i64* %PC.i364
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
  store %struct.Memory* %loadMem_47be10, %struct.Memory** %MEMORY
  %loadMem_47be14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %136 = getelementptr inbounds %struct.GPR, %struct.GPR* %135, i32 0, i32 33
  %137 = getelementptr inbounds %struct.Reg, %struct.Reg* %136, i32 0, i32 0
  %PC.i363 = bitcast %union.anon* %137 to i64*
  %138 = load i64, i64* %PC.i363
  %139 = add i64 %138, 307
  %140 = load i64, i64* %PC.i363
  %141 = add i64 %140, 6
  %142 = load i64, i64* %PC.i363
  %143 = add i64 %142, 6
  store i64 %143, i64* %PC.i363
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
  store %struct.Memory* %loadMem_47be14, %struct.Memory** %MEMORY
  %loadBr_47be14 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47be14 = icmp eq i8 %loadBr_47be14, 1
  br i1 %cmpBr_47be14, label %block_.L_47bf47, label %block_47be1a

block_47be1a:                                     ; preds = %block_.L_47be10
  %loadMem_47be1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %156 = getelementptr inbounds %struct.GPR, %struct.GPR* %155, i32 0, i32 33
  %157 = getelementptr inbounds %struct.Reg, %struct.Reg* %156, i32 0, i32 0
  %PC.i360 = bitcast %union.anon* %157 to i64*
  %158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %159 = getelementptr inbounds %struct.GPR, %struct.GPR* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.Reg, %struct.Reg* %159, i32 0, i32 0
  %RAX.i361 = bitcast %union.anon* %160 to i64*
  %161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %162 = getelementptr inbounds %struct.GPR, %struct.GPR* %161, i32 0, i32 15
  %163 = getelementptr inbounds %struct.Reg, %struct.Reg* %162, i32 0, i32 0
  %RBP.i362 = bitcast %union.anon* %163 to i64*
  %164 = load i64, i64* %RBP.i362
  %165 = sub i64 %164, 12
  %166 = load i64, i64* %PC.i360
  %167 = add i64 %166, 3
  store i64 %167, i64* %PC.i360
  %168 = inttoptr i64 %165 to i32*
  %169 = load i32, i32* %168
  %170 = zext i32 %169 to i64
  store i64 %170, i64* %RAX.i361, align 8
  store %struct.Memory* %loadMem_47be1a, %struct.Memory** %MEMORY
  %loadMem_47be1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %172 = getelementptr inbounds %struct.GPR, %struct.GPR* %171, i32 0, i32 33
  %173 = getelementptr inbounds %struct.Reg, %struct.Reg* %172, i32 0, i32 0
  %PC.i358 = bitcast %union.anon* %173 to i64*
  %174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %175 = getelementptr inbounds %struct.GPR, %struct.GPR* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.Reg, %struct.Reg* %175, i32 0, i32 0
  %RAX.i359 = bitcast %union.anon* %176 to i64*
  %177 = load i64, i64* %RAX.i359
  %178 = load i64, i64* %PC.i358
  %179 = add i64 %178, 3
  store i64 %179, i64* %PC.i358
  %180 = trunc i64 %177 to i32
  %181 = add i32 16, %180
  %182 = zext i32 %181 to i64
  store i64 %182, i64* %RAX.i359, align 8
  %183 = icmp ult i32 %181, %180
  %184 = icmp ult i32 %181, 16
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
  %194 = xor i64 16, %177
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
  store %struct.Memory* %loadMem_47be1d, %struct.Memory** %MEMORY
  %loadMem_47be20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %214 = getelementptr inbounds %struct.GPR, %struct.GPR* %213, i32 0, i32 33
  %215 = getelementptr inbounds %struct.Reg, %struct.Reg* %214, i32 0, i32 0
  %PC.i356 = bitcast %union.anon* %215 to i64*
  %216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %217 = getelementptr inbounds %struct.GPR, %struct.GPR* %216, i32 0, i32 1
  %218 = getelementptr inbounds %struct.Reg, %struct.Reg* %217, i32 0, i32 0
  %RAX.i357 = bitcast %union.anon* %218 to i64*
  %219 = load i64, i64* %RAX.i357
  %220 = load i64, i64* %PC.i356
  %221 = add i64 %220, 3
  store i64 %221, i64* %PC.i356
  %222 = trunc i64 %219 to i32
  %223 = sub i32 %222, 10
  %224 = zext i32 %223 to i64
  store i64 %224, i64* %RAX.i357, align 8
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
  store %struct.Memory* %loadMem_47be20, %struct.Memory** %MEMORY
  %loadMem_47be23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %254 = getelementptr inbounds %struct.GPR, %struct.GPR* %253, i32 0, i32 33
  %255 = getelementptr inbounds %struct.Reg, %struct.Reg* %254, i32 0, i32 0
  %PC.i353 = bitcast %union.anon* %255 to i64*
  %256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %257 = getelementptr inbounds %struct.GPR, %struct.GPR* %256, i32 0, i32 1
  %258 = getelementptr inbounds %struct.Reg, %struct.Reg* %257, i32 0, i32 0
  %EAX.i354 = bitcast %union.anon* %258 to i32*
  %259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %260 = getelementptr inbounds %struct.GPR, %struct.GPR* %259, i32 0, i32 15
  %261 = getelementptr inbounds %struct.Reg, %struct.Reg* %260, i32 0, i32 0
  %RBP.i355 = bitcast %union.anon* %261 to i64*
  %262 = load i64, i64* %RBP.i355
  %263 = sub i64 %262, 20
  %264 = load i32, i32* %EAX.i354
  %265 = zext i32 %264 to i64
  %266 = load i64, i64* %PC.i353
  %267 = add i64 %266, 3
  store i64 %267, i64* %PC.i353
  %268 = inttoptr i64 %263 to i32*
  store i32 %264, i32* %268
  store %struct.Memory* %loadMem_47be23, %struct.Memory** %MEMORY
  %loadMem_47be26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %270 = getelementptr inbounds %struct.GPR, %struct.GPR* %269, i32 0, i32 33
  %271 = getelementptr inbounds %struct.Reg, %struct.Reg* %270, i32 0, i32 0
  %PC.i351 = bitcast %union.anon* %271 to i64*
  %272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %273 = getelementptr inbounds %struct.GPR, %struct.GPR* %272, i32 0, i32 15
  %274 = getelementptr inbounds %struct.Reg, %struct.Reg* %273, i32 0, i32 0
  %RBP.i352 = bitcast %union.anon* %274 to i64*
  %275 = load i64, i64* %RBP.i352
  %276 = sub i64 %275, 8
  %277 = load i64, i64* %PC.i351
  %278 = add i64 %277, 7
  store i64 %278, i64* %PC.i351
  %279 = inttoptr i64 %276 to i32*
  store i32 0, i32* %279
  store %struct.Memory* %loadMem_47be26, %struct.Memory** %MEMORY
  br label %block_.L_47be2d

block_.L_47be2d:                                  ; preds = %block_.L_47bf26, %block_47be1a
  %loadMem_47be2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %281 = getelementptr inbounds %struct.GPR, %struct.GPR* %280, i32 0, i32 33
  %282 = getelementptr inbounds %struct.Reg, %struct.Reg* %281, i32 0, i32 0
  %PC.i349 = bitcast %union.anon* %282 to i64*
  %283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %284 = getelementptr inbounds %struct.GPR, %struct.GPR* %283, i32 0, i32 15
  %285 = getelementptr inbounds %struct.Reg, %struct.Reg* %284, i32 0, i32 0
  %RBP.i350 = bitcast %union.anon* %285 to i64*
  %286 = load i64, i64* %RBP.i350
  %287 = sub i64 %286, 8
  %288 = load i64, i64* %PC.i349
  %289 = add i64 %288, 4
  store i64 %289, i64* %PC.i349
  %290 = inttoptr i64 %287 to i32*
  %291 = load i32, i32* %290
  %292 = sub i32 %291, 8
  %293 = icmp ult i32 %291, 8
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
  %302 = xor i32 %291, 8
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
  store %struct.Memory* %loadMem_47be2d, %struct.Memory** %MEMORY
  %loadMem_47be31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %321 = getelementptr inbounds %struct.GPR, %struct.GPR* %320, i32 0, i32 33
  %322 = getelementptr inbounds %struct.Reg, %struct.Reg* %321, i32 0, i32 0
  %PC.i348 = bitcast %union.anon* %322 to i64*
  %323 = load i64, i64* %PC.i348
  %324 = add i64 %323, 259
  %325 = load i64, i64* %PC.i348
  %326 = add i64 %325, 6
  %327 = load i64, i64* %PC.i348
  %328 = add i64 %327, 6
  store i64 %328, i64* %PC.i348
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
  store %struct.Memory* %loadMem_47be31, %struct.Memory** %MEMORY
  %loadBr_47be31 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47be31 = icmp eq i8 %loadBr_47be31, 1
  br i1 %cmpBr_47be31, label %block_.L_47bf34, label %block_47be37

block_47be37:                                     ; preds = %block_.L_47be2d
  %loadMem_47be37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %341 = getelementptr inbounds %struct.GPR, %struct.GPR* %340, i32 0, i32 33
  %342 = getelementptr inbounds %struct.Reg, %struct.Reg* %341, i32 0, i32 0
  %PC.i346 = bitcast %union.anon* %342 to i64*
  %343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %344 = getelementptr inbounds %struct.GPR, %struct.GPR* %343, i32 0, i32 15
  %345 = getelementptr inbounds %struct.Reg, %struct.Reg* %344, i32 0, i32 0
  %RBP.i347 = bitcast %union.anon* %345 to i64*
  %346 = load i64, i64* %RBP.i347
  %347 = sub i64 %346, 4
  %348 = load i64, i64* %PC.i346
  %349 = add i64 %348, 7
  store i64 %349, i64* %PC.i346
  %350 = inttoptr i64 %347 to i32*
  store i32 0, i32* %350
  store %struct.Memory* %loadMem_47be37, %struct.Memory** %MEMORY
  br label %block_.L_47be3e

block_.L_47be3e:                                  ; preds = %routine_shll__cl___edx.exit238, %block_47be37
  %loadMem_47be3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %352 = getelementptr inbounds %struct.GPR, %struct.GPR* %351, i32 0, i32 33
  %353 = getelementptr inbounds %struct.Reg, %struct.Reg* %352, i32 0, i32 0
  %PC.i344 = bitcast %union.anon* %353 to i64*
  %354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %355 = getelementptr inbounds %struct.GPR, %struct.GPR* %354, i32 0, i32 15
  %356 = getelementptr inbounds %struct.Reg, %struct.Reg* %355, i32 0, i32 0
  %RBP.i345 = bitcast %union.anon* %356 to i64*
  %357 = load i64, i64* %RBP.i345
  %358 = sub i64 %357, 4
  %359 = load i64, i64* %PC.i344
  %360 = add i64 %359, 4
  store i64 %360, i64* %PC.i344
  %361 = inttoptr i64 %358 to i32*
  %362 = load i32, i32* %361
  %363 = sub i32 %362, 8
  %364 = icmp ult i32 %362, 8
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
  %373 = xor i32 %362, 8
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
  store %struct.Memory* %loadMem_47be3e, %struct.Memory** %MEMORY
  %loadMem_47be42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %392 = getelementptr inbounds %struct.GPR, %struct.GPR* %391, i32 0, i32 33
  %393 = getelementptr inbounds %struct.Reg, %struct.Reg* %392, i32 0, i32 0
  %PC.i343 = bitcast %union.anon* %393 to i64*
  %394 = load i64, i64* %PC.i343
  %395 = add i64 %394, 223
  %396 = load i64, i64* %PC.i343
  %397 = add i64 %396, 6
  %398 = load i64, i64* %PC.i343
  %399 = add i64 %398, 6
  store i64 %399, i64* %PC.i343
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
  store %struct.Memory* %loadMem_47be42, %struct.Memory** %MEMORY
  %loadBr_47be42 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47be42 = icmp eq i8 %loadBr_47be42, 1
  br i1 %cmpBr_47be42, label %block_.L_47bf21, label %block_47be48

block_47be48:                                     ; preds = %block_.L_47be3e
  %loadMem_47be48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %412 = getelementptr inbounds %struct.GPR, %struct.GPR* %411, i32 0, i32 33
  %413 = getelementptr inbounds %struct.Reg, %struct.Reg* %412, i32 0, i32 0
  %PC.i340 = bitcast %union.anon* %413 to i64*
  %414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %415 = getelementptr inbounds %struct.GPR, %struct.GPR* %414, i32 0, i32 1
  %416 = getelementptr inbounds %struct.Reg, %struct.Reg* %415, i32 0, i32 0
  %RAX.i341 = bitcast %union.anon* %416 to i64*
  %417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %418 = getelementptr inbounds %struct.GPR, %struct.GPR* %417, i32 0, i32 15
  %419 = getelementptr inbounds %struct.Reg, %struct.Reg* %418, i32 0, i32 0
  %RBP.i342 = bitcast %union.anon* %419 to i64*
  %420 = load i64, i64* %RBP.i342
  %421 = sub i64 %420, 4
  %422 = load i64, i64* %PC.i340
  %423 = add i64 %422, 3
  store i64 %423, i64* %PC.i340
  %424 = inttoptr i64 %421 to i32*
  %425 = load i32, i32* %424
  %426 = zext i32 %425 to i64
  store i64 %426, i64* %RAX.i341, align 8
  store %struct.Memory* %loadMem_47be48, %struct.Memory** %MEMORY
  %loadMem_47be4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %428 = getelementptr inbounds %struct.GPR, %struct.GPR* %427, i32 0, i32 33
  %429 = getelementptr inbounds %struct.Reg, %struct.Reg* %428, i32 0, i32 0
  %PC.i338 = bitcast %union.anon* %429 to i64*
  %430 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %431 = getelementptr inbounds %struct.GPR, %struct.GPR* %430, i32 0, i32 1
  %432 = getelementptr inbounds %struct.Reg, %struct.Reg* %431, i32 0, i32 0
  %RAX.i339 = bitcast %union.anon* %432 to i64*
  %433 = load i64, i64* %RAX.i339
  %434 = load i64, i64* %PC.i338
  %435 = add i64 %434, 3
  store i64 %435, i64* %PC.i338
  %436 = and i64 %433, 4294967295
  %437 = shl i64 %436, 2
  %438 = trunc i64 %437 to i32
  %439 = icmp slt i32 %438, 0
  %440 = shl i32 %438, 1
  %441 = zext i32 %440 to i64
  store i64 %441, i64* %RAX.i339, align 8
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
  store %struct.Memory* %loadMem_47be4b, %struct.Memory** %MEMORY
  %loadMem_47be4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %459 = getelementptr inbounds %struct.GPR, %struct.GPR* %458, i32 0, i32 33
  %460 = getelementptr inbounds %struct.Reg, %struct.Reg* %459, i32 0, i32 0
  %PC.i335 = bitcast %union.anon* %460 to i64*
  %461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %462 = getelementptr inbounds %struct.GPR, %struct.GPR* %461, i32 0, i32 1
  %463 = getelementptr inbounds %struct.Reg, %struct.Reg* %462, i32 0, i32 0
  %RAX.i336 = bitcast %union.anon* %463 to i64*
  %464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %465 = getelementptr inbounds %struct.GPR, %struct.GPR* %464, i32 0, i32 15
  %466 = getelementptr inbounds %struct.Reg, %struct.Reg* %465, i32 0, i32 0
  %RBP.i337 = bitcast %union.anon* %466 to i64*
  %467 = load i64, i64* %RAX.i336
  %468 = load i64, i64* %RBP.i337
  %469 = sub i64 %468, 8
  %470 = load i64, i64* %PC.i335
  %471 = add i64 %470, 3
  store i64 %471, i64* %PC.i335
  %472 = trunc i64 %467 to i32
  %473 = inttoptr i64 %469 to i32*
  %474 = load i32, i32* %473
  %475 = add i32 %474, %472
  %476 = zext i32 %475 to i64
  store i64 %476, i64* %RAX.i336, align 8
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
  store %struct.Memory* %loadMem_47be4e, %struct.Memory** %MEMORY
  %loadMem_47be51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %508 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %509 = getelementptr inbounds %struct.GPR, %struct.GPR* %508, i32 0, i32 33
  %510 = getelementptr inbounds %struct.Reg, %struct.Reg* %509, i32 0, i32 0
  %PC.i332 = bitcast %union.anon* %510 to i64*
  %511 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %512 = getelementptr inbounds %struct.GPR, %struct.GPR* %511, i32 0, i32 1
  %513 = getelementptr inbounds %struct.Reg, %struct.Reg* %512, i32 0, i32 0
  %EAX.i333 = bitcast %union.anon* %513 to i32*
  %514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %515 = getelementptr inbounds %struct.GPR, %struct.GPR* %514, i32 0, i32 15
  %516 = getelementptr inbounds %struct.Reg, %struct.Reg* %515, i32 0, i32 0
  %RBP.i334 = bitcast %union.anon* %516 to i64*
  %517 = load i64, i64* %RBP.i334
  %518 = sub i64 %517, 16
  %519 = load i32, i32* %EAX.i333
  %520 = zext i32 %519 to i64
  %521 = load i64, i64* %PC.i332
  %522 = add i64 %521, 3
  store i64 %522, i64* %PC.i332
  %523 = inttoptr i64 %518 to i32*
  store i32 %519, i32* %523
  store %struct.Memory* %loadMem_47be51, %struct.Memory** %MEMORY
  %loadMem_47be54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %525 = getelementptr inbounds %struct.GPR, %struct.GPR* %524, i32 0, i32 33
  %526 = getelementptr inbounds %struct.Reg, %struct.Reg* %525, i32 0, i32 0
  %PC.i330 = bitcast %union.anon* %526 to i64*
  %527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %528 = getelementptr inbounds %struct.GPR, %struct.GPR* %527, i32 0, i32 5
  %529 = getelementptr inbounds %struct.Reg, %struct.Reg* %528, i32 0, i32 0
  %RCX.i331 = bitcast %union.anon* %529 to i64*
  %530 = load i64, i64* %PC.i330
  %531 = add i64 %530, 8
  store i64 %531, i64* %PC.i330
  %532 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %532, i64* %RCX.i331, align 8
  store %struct.Memory* %loadMem_47be54, %struct.Memory** %MEMORY
  %loadMem_47be5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %534 = getelementptr inbounds %struct.GPR, %struct.GPR* %533, i32 0, i32 33
  %535 = getelementptr inbounds %struct.Reg, %struct.Reg* %534, i32 0, i32 0
  %PC.i328 = bitcast %union.anon* %535 to i64*
  %536 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %537 = getelementptr inbounds %struct.GPR, %struct.GPR* %536, i32 0, i32 5
  %538 = getelementptr inbounds %struct.Reg, %struct.Reg* %537, i32 0, i32 0
  %RCX.i329 = bitcast %union.anon* %538 to i64*
  %539 = load i64, i64* %RCX.i329
  %540 = add i64 %539, 24
  %541 = load i64, i64* %PC.i328
  %542 = add i64 %541, 4
  store i64 %542, i64* %PC.i328
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
  store %struct.Memory* %loadMem_47be5c, %struct.Memory** %MEMORY
  %loadMem_47be60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %573 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %574 = getelementptr inbounds %struct.GPR, %struct.GPR* %573, i32 0, i32 33
  %575 = getelementptr inbounds %struct.Reg, %struct.Reg* %574, i32 0, i32 0
  %PC.i327 = bitcast %union.anon* %575 to i64*
  %576 = load i64, i64* %PC.i327
  %577 = add i64 %576, 67
  %578 = load i64, i64* %PC.i327
  %579 = add i64 %578, 6
  %580 = load i64, i64* %PC.i327
  %581 = add i64 %580, 6
  store i64 %581, i64* %PC.i327
  %582 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %583 = load i8, i8* %582, align 1
  %584 = icmp eq i8 %583, 0
  %585 = zext i1 %584 to i8
  store i8 %585, i8* %BRANCH_TAKEN, align 1
  %586 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %587 = select i1 %584, i64 %577, i64 %579
  store i64 %587, i64* %586, align 8
  store %struct.Memory* %loadMem_47be60, %struct.Memory** %MEMORY
  %loadBr_47be60 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47be60 = icmp eq i8 %loadBr_47be60, 1
  br i1 %cmpBr_47be60, label %block_.L_47bea3, label %block_47be66

block_47be66:                                     ; preds = %block_47be48
  %loadMem_47be66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %589 = getelementptr inbounds %struct.GPR, %struct.GPR* %588, i32 0, i32 33
  %590 = getelementptr inbounds %struct.Reg, %struct.Reg* %589, i32 0, i32 0
  %PC.i325 = bitcast %union.anon* %590 to i64*
  %591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %592 = getelementptr inbounds %struct.GPR, %struct.GPR* %591, i32 0, i32 1
  %593 = getelementptr inbounds %struct.Reg, %struct.Reg* %592, i32 0, i32 0
  %RAX.i326 = bitcast %union.anon* %593 to i64*
  %594 = load i64, i64* %PC.i325
  %595 = add i64 %594, 10
  store i64 %595, i64* %PC.i325
  store i64 7156720, i64* %RAX.i326, align 8
  store %struct.Memory* %loadMem_47be66, %struct.Memory** %MEMORY
  %loadMem_47be70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %596 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %597 = getelementptr inbounds %struct.GPR, %struct.GPR* %596, i32 0, i32 33
  %598 = getelementptr inbounds %struct.Reg, %struct.Reg* %597, i32 0, i32 0
  %PC.i322 = bitcast %union.anon* %598 to i64*
  %599 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %600 = getelementptr inbounds %struct.GPR, %struct.GPR* %599, i32 0, i32 5
  %601 = getelementptr inbounds %struct.Reg, %struct.Reg* %600, i32 0, i32 0
  %RCX.i323 = bitcast %union.anon* %601 to i64*
  %602 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %603 = getelementptr inbounds %struct.GPR, %struct.GPR* %602, i32 0, i32 15
  %604 = getelementptr inbounds %struct.Reg, %struct.Reg* %603, i32 0, i32 0
  %RBP.i324 = bitcast %union.anon* %604 to i64*
  %605 = load i64, i64* %RBP.i324
  %606 = sub i64 %605, 16
  %607 = load i64, i64* %PC.i322
  %608 = add i64 %607, 4
  store i64 %608, i64* %PC.i322
  %609 = inttoptr i64 %606 to i32*
  %610 = load i32, i32* %609
  %611 = sext i32 %610 to i64
  store i64 %611, i64* %RCX.i323, align 8
  store %struct.Memory* %loadMem_47be70, %struct.Memory** %MEMORY
  %loadMem_47be74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %613 = getelementptr inbounds %struct.GPR, %struct.GPR* %612, i32 0, i32 33
  %614 = getelementptr inbounds %struct.Reg, %struct.Reg* %613, i32 0, i32 0
  %PC.i319 = bitcast %union.anon* %614 to i64*
  %615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %616 = getelementptr inbounds %struct.GPR, %struct.GPR* %615, i32 0, i32 5
  %617 = getelementptr inbounds %struct.Reg, %struct.Reg* %616, i32 0, i32 0
  %RCX.i320 = bitcast %union.anon* %617 to i64*
  %618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %619 = getelementptr inbounds %struct.GPR, %struct.GPR* %618, i32 0, i32 7
  %620 = getelementptr inbounds %struct.Reg, %struct.Reg* %619, i32 0, i32 0
  %RDX.i321 = bitcast %union.anon* %620 to i64*
  %621 = load i64, i64* %RCX.i320
  %622 = mul i64 %621, 2
  %623 = add i64 %622, 7394512
  %624 = load i64, i64* %PC.i319
  %625 = add i64 %624, 8
  store i64 %625, i64* %PC.i319
  %626 = inttoptr i64 %623 to i16*
  %627 = load i16, i16* %626
  %628 = sext i16 %627 to i64
  %629 = and i64 %628, 4294967295
  store i64 %629, i64* %RDX.i321, align 8
  store %struct.Memory* %loadMem_47be74, %struct.Memory** %MEMORY
  %loadMem_47be7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %631 = getelementptr inbounds %struct.GPR, %struct.GPR* %630, i32 0, i32 33
  %632 = getelementptr inbounds %struct.Reg, %struct.Reg* %631, i32 0, i32 0
  %PC.i316 = bitcast %union.anon* %632 to i64*
  %633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %634 = getelementptr inbounds %struct.GPR, %struct.GPR* %633, i32 0, i32 5
  %635 = getelementptr inbounds %struct.Reg, %struct.Reg* %634, i32 0, i32 0
  %RCX.i317 = bitcast %union.anon* %635 to i64*
  %636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %637 = getelementptr inbounds %struct.GPR, %struct.GPR* %636, i32 0, i32 15
  %638 = getelementptr inbounds %struct.Reg, %struct.Reg* %637, i32 0, i32 0
  %RBP.i318 = bitcast %union.anon* %638 to i64*
  %639 = load i64, i64* %RBP.i318
  %640 = sub i64 %639, 20
  %641 = load i64, i64* %PC.i316
  %642 = add i64 %641, 3
  store i64 %642, i64* %PC.i316
  %643 = inttoptr i64 %640 to i32*
  %644 = load i32, i32* %643
  %645 = zext i32 %644 to i64
  store i64 %645, i64* %RCX.i317, align 8
  store %struct.Memory* %loadMem_47be7c, %struct.Memory** %MEMORY
  %loadMem_47be7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %646 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %647 = getelementptr inbounds %struct.GPR, %struct.GPR* %646, i32 0, i32 33
  %648 = getelementptr inbounds %struct.Reg, %struct.Reg* %647, i32 0, i32 0
  %PC.i312 = bitcast %union.anon* %648 to i64*
  %649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %650 = getelementptr inbounds %struct.GPR, %struct.GPR* %649, i32 0, i32 5
  %651 = getelementptr inbounds %struct.Reg, %struct.Reg* %650, i32 0, i32 0
  %652 = bitcast %union.anon* %651 to %struct.anon.2*
  %CL.i313 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %652, i32 0, i32 0
  %653 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %654 = getelementptr inbounds %struct.GPR, %struct.GPR* %653, i32 0, i32 7
  %655 = getelementptr inbounds %struct.Reg, %struct.Reg* %654, i32 0, i32 0
  %RDX.i314 = bitcast %union.anon* %655 to i64*
  %656 = load i64, i64* %RDX.i314
  %657 = load i8, i8* %CL.i313
  %658 = zext i8 %657 to i64
  %659 = load i64, i64* %PC.i312
  %660 = add i64 %659, 2
  store i64 %660, i64* %PC.i312
  %661 = trunc i64 %658 to i5
  switch i5 %661, label %668 [
    i5 0, label %routine_shll__cl___edx.exit315
    i5 1, label %662
  ]

; <label>:662:                                    ; preds = %block_47be66
  %663 = trunc i64 %656 to i32
  %664 = shl i32 %663, 1
  %665 = icmp slt i32 %663, 0
  %666 = icmp slt i32 %664, 0
  %667 = xor i1 %665, %666
  br label %677

; <label>:668:                                    ; preds = %block_47be66
  %669 = and i64 %658, 31
  %670 = add i64 %669, 4294967295
  %671 = and i64 %656, 4294967295
  %672 = and i64 %670, 4294967295
  %673 = shl i64 %671, %672
  %674 = trunc i64 %673 to i32
  %675 = icmp slt i32 %674, 0
  %676 = shl i32 %674, 1
  br label %677

; <label>:677:                                    ; preds = %668, %662
  %678 = phi i1 [ %665, %662 ], [ %675, %668 ]
  %679 = phi i1 [ %667, %662 ], [ false, %668 ]
  %680 = phi i32 [ %664, %662 ], [ %676, %668 ]
  %681 = zext i32 %680 to i64
  store i64 %681, i64* %RDX.i314, align 8
  %682 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %683 = zext i1 %678 to i8
  store i8 %683, i8* %682, align 1
  %684 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %685 = and i32 %680, 254
  %686 = call i32 @llvm.ctpop.i32(i32 %685)
  %687 = trunc i32 %686 to i8
  %688 = and i8 %687, 1
  %689 = xor i8 %688, 1
  store i8 %689, i8* %684, align 1
  %690 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %690, align 1
  %691 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %692 = icmp eq i32 %680, 0
  %693 = zext i1 %692 to i8
  store i8 %693, i8* %691, align 1
  %694 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %695 = lshr i32 %680, 31
  %696 = trunc i32 %695 to i8
  store i8 %696, i8* %694, align 1
  %697 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %698 = zext i1 %679 to i8
  store i8 %698, i8* %697, align 1
  br label %routine_shll__cl___edx.exit315

routine_shll__cl___edx.exit315:                   ; preds = %block_47be66, %677
  store %struct.Memory* %loadMem_47be7f, %struct.Memory** %MEMORY
  %loadMem_47be81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %700 = getelementptr inbounds %struct.GPR, %struct.GPR* %699, i32 0, i32 33
  %701 = getelementptr inbounds %struct.Reg, %struct.Reg* %700, i32 0, i32 0
  %PC.i309 = bitcast %union.anon* %701 to i64*
  %702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %703 = getelementptr inbounds %struct.GPR, %struct.GPR* %702, i32 0, i32 9
  %704 = getelementptr inbounds %struct.Reg, %struct.Reg* %703, i32 0, i32 0
  %RSI.i310 = bitcast %union.anon* %704 to i64*
  %705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %706 = getelementptr inbounds %struct.GPR, %struct.GPR* %705, i32 0, i32 15
  %707 = getelementptr inbounds %struct.Reg, %struct.Reg* %706, i32 0, i32 0
  %RBP.i311 = bitcast %union.anon* %707 to i64*
  %708 = load i64, i64* %RBP.i311
  %709 = sub i64 %708, 12
  %710 = load i64, i64* %PC.i309
  %711 = add i64 %710, 4
  store i64 %711, i64* %PC.i309
  %712 = inttoptr i64 %709 to i32*
  %713 = load i32, i32* %712
  %714 = sext i32 %713 to i64
  store i64 %714, i64* %RSI.i310, align 8
  store %struct.Memory* %loadMem_47be81, %struct.Memory** %MEMORY
  %loadMem_47be85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %716 = getelementptr inbounds %struct.GPR, %struct.GPR* %715, i32 0, i32 33
  %717 = getelementptr inbounds %struct.Reg, %struct.Reg* %716, i32 0, i32 0
  %PC.i307 = bitcast %union.anon* %717 to i64*
  %718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %719 = getelementptr inbounds %struct.GPR, %struct.GPR* %718, i32 0, i32 9
  %720 = getelementptr inbounds %struct.Reg, %struct.Reg* %719, i32 0, i32 0
  %RSI.i308 = bitcast %union.anon* %720 to i64*
  %721 = load i64, i64* %RSI.i308
  %722 = load i64, i64* %PC.i307
  %723 = add i64 %722, 4
  store i64 %723, i64* %PC.i307
  %724 = shl i64 %721, 7
  %725 = icmp slt i64 %724, 0
  %726 = shl i64 %724, 1
  store i64 %726, i64* %RSI.i308, align 8
  %727 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %728 = zext i1 %725 to i8
  store i8 %728, i8* %727, align 1
  %729 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %730 = trunc i64 %726 to i32
  store i8 1, i8* %729, align 1
  %731 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %731, align 1
  %732 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %733 = icmp eq i64 %726, 0
  %734 = zext i1 %733 to i8
  store i8 %734, i8* %732, align 1
  %735 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %736 = lshr i64 %726, 63
  %737 = trunc i64 %736 to i8
  store i8 %737, i8* %735, align 1
  %738 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %738, align 1
  store %struct.Memory* %loadMem_47be85, %struct.Memory** %MEMORY
  %loadMem_47be89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %740 = getelementptr inbounds %struct.GPR, %struct.GPR* %739, i32 0, i32 33
  %741 = getelementptr inbounds %struct.Reg, %struct.Reg* %740, i32 0, i32 0
  %PC.i304 = bitcast %union.anon* %741 to i64*
  %742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %743 = getelementptr inbounds %struct.GPR, %struct.GPR* %742, i32 0, i32 1
  %744 = getelementptr inbounds %struct.Reg, %struct.Reg* %743, i32 0, i32 0
  %RAX.i305 = bitcast %union.anon* %744 to i64*
  %745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %746 = getelementptr inbounds %struct.GPR, %struct.GPR* %745, i32 0, i32 9
  %747 = getelementptr inbounds %struct.Reg, %struct.Reg* %746, i32 0, i32 0
  %RSI.i306 = bitcast %union.anon* %747 to i64*
  %748 = load i64, i64* %RAX.i305
  %749 = load i64, i64* %RSI.i306
  %750 = load i64, i64* %PC.i304
  %751 = add i64 %750, 3
  store i64 %751, i64* %PC.i304
  %752 = add i64 %749, %748
  store i64 %752, i64* %RAX.i305, align 8
  %753 = icmp ult i64 %752, %748
  %754 = icmp ult i64 %752, %749
  %755 = or i1 %753, %754
  %756 = zext i1 %755 to i8
  %757 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %756, i8* %757, align 1
  %758 = trunc i64 %752 to i32
  %759 = and i32 %758, 255
  %760 = call i32 @llvm.ctpop.i32(i32 %759)
  %761 = trunc i32 %760 to i8
  %762 = and i8 %761, 1
  %763 = xor i8 %762, 1
  %764 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %763, i8* %764, align 1
  %765 = xor i64 %749, %748
  %766 = xor i64 %765, %752
  %767 = lshr i64 %766, 4
  %768 = trunc i64 %767 to i8
  %769 = and i8 %768, 1
  %770 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %769, i8* %770, align 1
  %771 = icmp eq i64 %752, 0
  %772 = zext i1 %771 to i8
  %773 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %772, i8* %773, align 1
  %774 = lshr i64 %752, 63
  %775 = trunc i64 %774 to i8
  %776 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %775, i8* %776, align 1
  %777 = lshr i64 %748, 63
  %778 = lshr i64 %749, 63
  %779 = xor i64 %774, %777
  %780 = xor i64 %774, %778
  %781 = add i64 %779, %780
  %782 = icmp eq i64 %781, 2
  %783 = zext i1 %782 to i8
  %784 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %783, i8* %784, align 1
  store %struct.Memory* %loadMem_47be89, %struct.Memory** %MEMORY
  %loadMem_47be8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %785 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %786 = getelementptr inbounds %struct.GPR, %struct.GPR* %785, i32 0, i32 33
  %787 = getelementptr inbounds %struct.Reg, %struct.Reg* %786, i32 0, i32 0
  %PC.i301 = bitcast %union.anon* %787 to i64*
  %788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %789 = getelementptr inbounds %struct.GPR, %struct.GPR* %788, i32 0, i32 9
  %790 = getelementptr inbounds %struct.Reg, %struct.Reg* %789, i32 0, i32 0
  %RSI.i302 = bitcast %union.anon* %790 to i64*
  %791 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %792 = getelementptr inbounds %struct.GPR, %struct.GPR* %791, i32 0, i32 15
  %793 = getelementptr inbounds %struct.Reg, %struct.Reg* %792, i32 0, i32 0
  %RBP.i303 = bitcast %union.anon* %793 to i64*
  %794 = load i64, i64* %RBP.i303
  %795 = sub i64 %794, 8
  %796 = load i64, i64* %PC.i301
  %797 = add i64 %796, 4
  store i64 %797, i64* %PC.i301
  %798 = inttoptr i64 %795 to i32*
  %799 = load i32, i32* %798
  %800 = sext i32 %799 to i64
  store i64 %800, i64* %RSI.i302, align 8
  store %struct.Memory* %loadMem_47be8c, %struct.Memory** %MEMORY
  %loadMem_47be90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %801 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %802 = getelementptr inbounds %struct.GPR, %struct.GPR* %801, i32 0, i32 33
  %803 = getelementptr inbounds %struct.Reg, %struct.Reg* %802, i32 0, i32 0
  %PC.i299 = bitcast %union.anon* %803 to i64*
  %804 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %805 = getelementptr inbounds %struct.GPR, %struct.GPR* %804, i32 0, i32 9
  %806 = getelementptr inbounds %struct.Reg, %struct.Reg* %805, i32 0, i32 0
  %RSI.i300 = bitcast %union.anon* %806 to i64*
  %807 = load i64, i64* %RSI.i300
  %808 = load i64, i64* %PC.i299
  %809 = add i64 %808, 4
  store i64 %809, i64* %PC.i299
  %810 = shl i64 %807, 4
  %811 = icmp slt i64 %810, 0
  %812 = shl i64 %810, 1
  store i64 %812, i64* %RSI.i300, align 8
  %813 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %814 = zext i1 %811 to i8
  store i8 %814, i8* %813, align 1
  %815 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %816 = trunc i64 %812 to i32
  %817 = and i32 %816, 254
  %818 = call i32 @llvm.ctpop.i32(i32 %817)
  %819 = trunc i32 %818 to i8
  %820 = and i8 %819, 1
  %821 = xor i8 %820, 1
  store i8 %821, i8* %815, align 1
  %822 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %822, align 1
  %823 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %824 = icmp eq i64 %812, 0
  %825 = zext i1 %824 to i8
  store i8 %825, i8* %823, align 1
  %826 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %827 = lshr i64 %812, 63
  %828 = trunc i64 %827 to i8
  store i8 %828, i8* %826, align 1
  %829 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %829, align 1
  store %struct.Memory* %loadMem_47be90, %struct.Memory** %MEMORY
  %loadMem_47be94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %831 = getelementptr inbounds %struct.GPR, %struct.GPR* %830, i32 0, i32 33
  %832 = getelementptr inbounds %struct.Reg, %struct.Reg* %831, i32 0, i32 0
  %PC.i296 = bitcast %union.anon* %832 to i64*
  %833 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %834 = getelementptr inbounds %struct.GPR, %struct.GPR* %833, i32 0, i32 1
  %835 = getelementptr inbounds %struct.Reg, %struct.Reg* %834, i32 0, i32 0
  %RAX.i297 = bitcast %union.anon* %835 to i64*
  %836 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %837 = getelementptr inbounds %struct.GPR, %struct.GPR* %836, i32 0, i32 9
  %838 = getelementptr inbounds %struct.Reg, %struct.Reg* %837, i32 0, i32 0
  %RSI.i298 = bitcast %union.anon* %838 to i64*
  %839 = load i64, i64* %RAX.i297
  %840 = load i64, i64* %RSI.i298
  %841 = load i64, i64* %PC.i296
  %842 = add i64 %841, 3
  store i64 %842, i64* %PC.i296
  %843 = add i64 %840, %839
  store i64 %843, i64* %RAX.i297, align 8
  %844 = icmp ult i64 %843, %839
  %845 = icmp ult i64 %843, %840
  %846 = or i1 %844, %845
  %847 = zext i1 %846 to i8
  %848 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %847, i8* %848, align 1
  %849 = trunc i64 %843 to i32
  %850 = and i32 %849, 255
  %851 = call i32 @llvm.ctpop.i32(i32 %850)
  %852 = trunc i32 %851 to i8
  %853 = and i8 %852, 1
  %854 = xor i8 %853, 1
  %855 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %854, i8* %855, align 1
  %856 = xor i64 %840, %839
  %857 = xor i64 %856, %843
  %858 = lshr i64 %857, 4
  %859 = trunc i64 %858 to i8
  %860 = and i8 %859, 1
  %861 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %860, i8* %861, align 1
  %862 = icmp eq i64 %843, 0
  %863 = zext i1 %862 to i8
  %864 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %863, i8* %864, align 1
  %865 = lshr i64 %843, 63
  %866 = trunc i64 %865 to i8
  %867 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %866, i8* %867, align 1
  %868 = lshr i64 %839, 63
  %869 = lshr i64 %840, 63
  %870 = xor i64 %865, %868
  %871 = xor i64 %865, %869
  %872 = add i64 %870, %871
  %873 = icmp eq i64 %872, 2
  %874 = zext i1 %873 to i8
  %875 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %874, i8* %875, align 1
  store %struct.Memory* %loadMem_47be94, %struct.Memory** %MEMORY
  %loadMem_47be97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %876 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %877 = getelementptr inbounds %struct.GPR, %struct.GPR* %876, i32 0, i32 33
  %878 = getelementptr inbounds %struct.Reg, %struct.Reg* %877, i32 0, i32 0
  %PC.i293 = bitcast %union.anon* %878 to i64*
  %879 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %880 = getelementptr inbounds %struct.GPR, %struct.GPR* %879, i32 0, i32 9
  %881 = getelementptr inbounds %struct.Reg, %struct.Reg* %880, i32 0, i32 0
  %RSI.i294 = bitcast %union.anon* %881 to i64*
  %882 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %883 = getelementptr inbounds %struct.GPR, %struct.GPR* %882, i32 0, i32 15
  %884 = getelementptr inbounds %struct.Reg, %struct.Reg* %883, i32 0, i32 0
  %RBP.i295 = bitcast %union.anon* %884 to i64*
  %885 = load i64, i64* %RBP.i295
  %886 = sub i64 %885, 4
  %887 = load i64, i64* %PC.i293
  %888 = add i64 %887, 4
  store i64 %888, i64* %PC.i293
  %889 = inttoptr i64 %886 to i32*
  %890 = load i32, i32* %889
  %891 = sext i32 %890 to i64
  store i64 %891, i64* %RSI.i294, align 8
  store %struct.Memory* %loadMem_47be97, %struct.Memory** %MEMORY
  %loadMem_47be9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %893 = getelementptr inbounds %struct.GPR, %struct.GPR* %892, i32 0, i32 33
  %894 = getelementptr inbounds %struct.Reg, %struct.Reg* %893, i32 0, i32 0
  %PC.i289 = bitcast %union.anon* %894 to i64*
  %895 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %896 = getelementptr inbounds %struct.GPR, %struct.GPR* %895, i32 0, i32 7
  %897 = getelementptr inbounds %struct.Reg, %struct.Reg* %896, i32 0, i32 0
  %EDX.i290 = bitcast %union.anon* %897 to i32*
  %898 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %899 = getelementptr inbounds %struct.GPR, %struct.GPR* %898, i32 0, i32 1
  %900 = getelementptr inbounds %struct.Reg, %struct.Reg* %899, i32 0, i32 0
  %RAX.i291 = bitcast %union.anon* %900 to i64*
  %901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %902 = getelementptr inbounds %struct.GPR, %struct.GPR* %901, i32 0, i32 9
  %903 = getelementptr inbounds %struct.Reg, %struct.Reg* %902, i32 0, i32 0
  %RSI.i292 = bitcast %union.anon* %903 to i64*
  %904 = load i64, i64* %RAX.i291
  %905 = load i64, i64* %RSI.i292
  %906 = mul i64 %905, 4
  %907 = add i64 %906, %904
  %908 = load i32, i32* %EDX.i290
  %909 = zext i32 %908 to i64
  %910 = load i64, i64* %PC.i289
  %911 = add i64 %910, 3
  store i64 %911, i64* %PC.i289
  %912 = inttoptr i64 %907 to i32*
  store i32 %908, i32* %912
  store %struct.Memory* %loadMem_47be9b, %struct.Memory** %MEMORY
  %loadMem_47be9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %914 = getelementptr inbounds %struct.GPR, %struct.GPR* %913, i32 0, i32 33
  %915 = getelementptr inbounds %struct.Reg, %struct.Reg* %914, i32 0, i32 0
  %PC.i288 = bitcast %union.anon* %915 to i64*
  %916 = load i64, i64* %PC.i288
  %917 = add i64 %916, 61
  %918 = load i64, i64* %PC.i288
  %919 = add i64 %918, 5
  store i64 %919, i64* %PC.i288
  %920 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %917, i64* %920, align 8
  store %struct.Memory* %loadMem_47be9e, %struct.Memory** %MEMORY
  br label %block_.L_47bedb

block_.L_47bea3:                                  ; preds = %block_47be48
  %loadMem_47bea3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %921 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %922 = getelementptr inbounds %struct.GPR, %struct.GPR* %921, i32 0, i32 33
  %923 = getelementptr inbounds %struct.Reg, %struct.Reg* %922, i32 0, i32 0
  %PC.i286 = bitcast %union.anon* %923 to i64*
  %924 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %925 = getelementptr inbounds %struct.GPR, %struct.GPR* %924, i32 0, i32 1
  %926 = getelementptr inbounds %struct.Reg, %struct.Reg* %925, i32 0, i32 0
  %RAX.i287 = bitcast %union.anon* %926 to i64*
  %927 = load i64, i64* %PC.i286
  %928 = add i64 %927, 10
  store i64 %928, i64* %PC.i286
  store i64 7156720, i64* %RAX.i287, align 8
  store %struct.Memory* %loadMem_47bea3, %struct.Memory** %MEMORY
  %loadMem_47bead = load %struct.Memory*, %struct.Memory** %MEMORY
  %929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %930 = getelementptr inbounds %struct.GPR, %struct.GPR* %929, i32 0, i32 33
  %931 = getelementptr inbounds %struct.Reg, %struct.Reg* %930, i32 0, i32 0
  %PC.i283 = bitcast %union.anon* %931 to i64*
  %932 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %933 = getelementptr inbounds %struct.GPR, %struct.GPR* %932, i32 0, i32 5
  %934 = getelementptr inbounds %struct.Reg, %struct.Reg* %933, i32 0, i32 0
  %RCX.i284 = bitcast %union.anon* %934 to i64*
  %935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %936 = getelementptr inbounds %struct.GPR, %struct.GPR* %935, i32 0, i32 15
  %937 = getelementptr inbounds %struct.Reg, %struct.Reg* %936, i32 0, i32 0
  %RBP.i285 = bitcast %union.anon* %937 to i64*
  %938 = load i64, i64* %RBP.i285
  %939 = sub i64 %938, 16
  %940 = load i64, i64* %PC.i283
  %941 = add i64 %940, 4
  store i64 %941, i64* %PC.i283
  %942 = inttoptr i64 %939 to i32*
  %943 = load i32, i32* %942
  %944 = sext i32 %943 to i64
  store i64 %944, i64* %RCX.i284, align 8
  store %struct.Memory* %loadMem_47bead, %struct.Memory** %MEMORY
  %loadMem_47beb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %946 = getelementptr inbounds %struct.GPR, %struct.GPR* %945, i32 0, i32 33
  %947 = getelementptr inbounds %struct.Reg, %struct.Reg* %946, i32 0, i32 0
  %PC.i280 = bitcast %union.anon* %947 to i64*
  %948 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %949 = getelementptr inbounds %struct.GPR, %struct.GPR* %948, i32 0, i32 5
  %950 = getelementptr inbounds %struct.Reg, %struct.Reg* %949, i32 0, i32 0
  %RCX.i281 = bitcast %union.anon* %950 to i64*
  %951 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %952 = getelementptr inbounds %struct.GPR, %struct.GPR* %951, i32 0, i32 7
  %953 = getelementptr inbounds %struct.Reg, %struct.Reg* %952, i32 0, i32 0
  %RDX.i282 = bitcast %union.anon* %953 to i64*
  %954 = load i64, i64* %RCX.i281
  %955 = mul i64 %954, 2
  %956 = add i64 %955, 7394640
  %957 = load i64, i64* %PC.i280
  %958 = add i64 %957, 8
  store i64 %958, i64* %PC.i280
  %959 = inttoptr i64 %956 to i16*
  %960 = load i16, i16* %959
  %961 = sext i16 %960 to i64
  %962 = and i64 %961, 4294967295
  store i64 %962, i64* %RDX.i282, align 8
  store %struct.Memory* %loadMem_47beb1, %struct.Memory** %MEMORY
  %loadMem_47beb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %963 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %964 = getelementptr inbounds %struct.GPR, %struct.GPR* %963, i32 0, i32 33
  %965 = getelementptr inbounds %struct.Reg, %struct.Reg* %964, i32 0, i32 0
  %PC.i277 = bitcast %union.anon* %965 to i64*
  %966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %967 = getelementptr inbounds %struct.GPR, %struct.GPR* %966, i32 0, i32 5
  %968 = getelementptr inbounds %struct.Reg, %struct.Reg* %967, i32 0, i32 0
  %RCX.i278 = bitcast %union.anon* %968 to i64*
  %969 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %970 = getelementptr inbounds %struct.GPR, %struct.GPR* %969, i32 0, i32 15
  %971 = getelementptr inbounds %struct.Reg, %struct.Reg* %970, i32 0, i32 0
  %RBP.i279 = bitcast %union.anon* %971 to i64*
  %972 = load i64, i64* %RBP.i279
  %973 = sub i64 %972, 20
  %974 = load i64, i64* %PC.i277
  %975 = add i64 %974, 3
  store i64 %975, i64* %PC.i277
  %976 = inttoptr i64 %973 to i32*
  %977 = load i32, i32* %976
  %978 = zext i32 %977 to i64
  store i64 %978, i64* %RCX.i278, align 8
  store %struct.Memory* %loadMem_47beb9, %struct.Memory** %MEMORY
  %loadMem_47bebc = load %struct.Memory*, %struct.Memory** %MEMORY
  %979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %980 = getelementptr inbounds %struct.GPR, %struct.GPR* %979, i32 0, i32 33
  %981 = getelementptr inbounds %struct.Reg, %struct.Reg* %980, i32 0, i32 0
  %PC.i273 = bitcast %union.anon* %981 to i64*
  %982 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %983 = getelementptr inbounds %struct.GPR, %struct.GPR* %982, i32 0, i32 5
  %984 = getelementptr inbounds %struct.Reg, %struct.Reg* %983, i32 0, i32 0
  %985 = bitcast %union.anon* %984 to %struct.anon.2*
  %CL.i274 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %985, i32 0, i32 0
  %986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %987 = getelementptr inbounds %struct.GPR, %struct.GPR* %986, i32 0, i32 7
  %988 = getelementptr inbounds %struct.Reg, %struct.Reg* %987, i32 0, i32 0
  %RDX.i275 = bitcast %union.anon* %988 to i64*
  %989 = load i64, i64* %RDX.i275
  %990 = load i8, i8* %CL.i274
  %991 = zext i8 %990 to i64
  %992 = load i64, i64* %PC.i273
  %993 = add i64 %992, 2
  store i64 %993, i64* %PC.i273
  %994 = trunc i64 %991 to i5
  switch i5 %994, label %1001 [
    i5 0, label %routine_shll__cl___edx.exit276
    i5 1, label %995
  ]

; <label>:995:                                    ; preds = %block_.L_47bea3
  %996 = trunc i64 %989 to i32
  %997 = shl i32 %996, 1
  %998 = icmp slt i32 %996, 0
  %999 = icmp slt i32 %997, 0
  %1000 = xor i1 %998, %999
  br label %1010

; <label>:1001:                                   ; preds = %block_.L_47bea3
  %1002 = and i64 %991, 31
  %1003 = add i64 %1002, 4294967295
  %1004 = and i64 %989, 4294967295
  %1005 = and i64 %1003, 4294967295
  %1006 = shl i64 %1004, %1005
  %1007 = trunc i64 %1006 to i32
  %1008 = icmp slt i32 %1007, 0
  %1009 = shl i32 %1007, 1
  br label %1010

; <label>:1010:                                   ; preds = %1001, %995
  %1011 = phi i1 [ %998, %995 ], [ %1008, %1001 ]
  %1012 = phi i1 [ %1000, %995 ], [ false, %1001 ]
  %1013 = phi i32 [ %997, %995 ], [ %1009, %1001 ]
  %1014 = zext i32 %1013 to i64
  store i64 %1014, i64* %RDX.i275, align 8
  %1015 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1016 = zext i1 %1011 to i8
  store i8 %1016, i8* %1015, align 1
  %1017 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1018 = and i32 %1013, 254
  %1019 = call i32 @llvm.ctpop.i32(i32 %1018)
  %1020 = trunc i32 %1019 to i8
  %1021 = and i8 %1020, 1
  %1022 = xor i8 %1021, 1
  store i8 %1022, i8* %1017, align 1
  %1023 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1023, align 1
  %1024 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1025 = icmp eq i32 %1013, 0
  %1026 = zext i1 %1025 to i8
  store i8 %1026, i8* %1024, align 1
  %1027 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1028 = lshr i32 %1013, 31
  %1029 = trunc i32 %1028 to i8
  store i8 %1029, i8* %1027, align 1
  %1030 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1031 = zext i1 %1012 to i8
  store i8 %1031, i8* %1030, align 1
  br label %routine_shll__cl___edx.exit276

routine_shll__cl___edx.exit276:                   ; preds = %block_.L_47bea3, %1010
  store %struct.Memory* %loadMem_47bebc, %struct.Memory** %MEMORY
  %loadMem_47bebe = load %struct.Memory*, %struct.Memory** %MEMORY
  %1032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1033 = getelementptr inbounds %struct.GPR, %struct.GPR* %1032, i32 0, i32 33
  %1034 = getelementptr inbounds %struct.Reg, %struct.Reg* %1033, i32 0, i32 0
  %PC.i270 = bitcast %union.anon* %1034 to i64*
  %1035 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1036 = getelementptr inbounds %struct.GPR, %struct.GPR* %1035, i32 0, i32 9
  %1037 = getelementptr inbounds %struct.Reg, %struct.Reg* %1036, i32 0, i32 0
  %RSI.i271 = bitcast %union.anon* %1037 to i64*
  %1038 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1039 = getelementptr inbounds %struct.GPR, %struct.GPR* %1038, i32 0, i32 15
  %1040 = getelementptr inbounds %struct.Reg, %struct.Reg* %1039, i32 0, i32 0
  %RBP.i272 = bitcast %union.anon* %1040 to i64*
  %1041 = load i64, i64* %RBP.i272
  %1042 = sub i64 %1041, 12
  %1043 = load i64, i64* %PC.i270
  %1044 = add i64 %1043, 4
  store i64 %1044, i64* %PC.i270
  %1045 = inttoptr i64 %1042 to i32*
  %1046 = load i32, i32* %1045
  %1047 = sext i32 %1046 to i64
  store i64 %1047, i64* %RSI.i271, align 8
  store %struct.Memory* %loadMem_47bebe, %struct.Memory** %MEMORY
  %loadMem_47bec2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1048 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1049 = getelementptr inbounds %struct.GPR, %struct.GPR* %1048, i32 0, i32 33
  %1050 = getelementptr inbounds %struct.Reg, %struct.Reg* %1049, i32 0, i32 0
  %PC.i268 = bitcast %union.anon* %1050 to i64*
  %1051 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1052 = getelementptr inbounds %struct.GPR, %struct.GPR* %1051, i32 0, i32 9
  %1053 = getelementptr inbounds %struct.Reg, %struct.Reg* %1052, i32 0, i32 0
  %RSI.i269 = bitcast %union.anon* %1053 to i64*
  %1054 = load i64, i64* %RSI.i269
  %1055 = load i64, i64* %PC.i268
  %1056 = add i64 %1055, 4
  store i64 %1056, i64* %PC.i268
  %1057 = shl i64 %1054, 7
  %1058 = icmp slt i64 %1057, 0
  %1059 = shl i64 %1057, 1
  store i64 %1059, i64* %RSI.i269, align 8
  %1060 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1061 = zext i1 %1058 to i8
  store i8 %1061, i8* %1060, align 1
  %1062 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1063 = trunc i64 %1059 to i32
  store i8 1, i8* %1062, align 1
  %1064 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1064, align 1
  %1065 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1066 = icmp eq i64 %1059, 0
  %1067 = zext i1 %1066 to i8
  store i8 %1067, i8* %1065, align 1
  %1068 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1069 = lshr i64 %1059, 63
  %1070 = trunc i64 %1069 to i8
  store i8 %1070, i8* %1068, align 1
  %1071 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1071, align 1
  store %struct.Memory* %loadMem_47bec2, %struct.Memory** %MEMORY
  %loadMem_47bec6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1072 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1073 = getelementptr inbounds %struct.GPR, %struct.GPR* %1072, i32 0, i32 33
  %1074 = getelementptr inbounds %struct.Reg, %struct.Reg* %1073, i32 0, i32 0
  %PC.i265 = bitcast %union.anon* %1074 to i64*
  %1075 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1076 = getelementptr inbounds %struct.GPR, %struct.GPR* %1075, i32 0, i32 1
  %1077 = getelementptr inbounds %struct.Reg, %struct.Reg* %1076, i32 0, i32 0
  %RAX.i266 = bitcast %union.anon* %1077 to i64*
  %1078 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1079 = getelementptr inbounds %struct.GPR, %struct.GPR* %1078, i32 0, i32 9
  %1080 = getelementptr inbounds %struct.Reg, %struct.Reg* %1079, i32 0, i32 0
  %RSI.i267 = bitcast %union.anon* %1080 to i64*
  %1081 = load i64, i64* %RAX.i266
  %1082 = load i64, i64* %RSI.i267
  %1083 = load i64, i64* %PC.i265
  %1084 = add i64 %1083, 3
  store i64 %1084, i64* %PC.i265
  %1085 = add i64 %1082, %1081
  store i64 %1085, i64* %RAX.i266, align 8
  %1086 = icmp ult i64 %1085, %1081
  %1087 = icmp ult i64 %1085, %1082
  %1088 = or i1 %1086, %1087
  %1089 = zext i1 %1088 to i8
  %1090 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1089, i8* %1090, align 1
  %1091 = trunc i64 %1085 to i32
  %1092 = and i32 %1091, 255
  %1093 = call i32 @llvm.ctpop.i32(i32 %1092)
  %1094 = trunc i32 %1093 to i8
  %1095 = and i8 %1094, 1
  %1096 = xor i8 %1095, 1
  %1097 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1096, i8* %1097, align 1
  %1098 = xor i64 %1082, %1081
  %1099 = xor i64 %1098, %1085
  %1100 = lshr i64 %1099, 4
  %1101 = trunc i64 %1100 to i8
  %1102 = and i8 %1101, 1
  %1103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1102, i8* %1103, align 1
  %1104 = icmp eq i64 %1085, 0
  %1105 = zext i1 %1104 to i8
  %1106 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1105, i8* %1106, align 1
  %1107 = lshr i64 %1085, 63
  %1108 = trunc i64 %1107 to i8
  %1109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1108, i8* %1109, align 1
  %1110 = lshr i64 %1081, 63
  %1111 = lshr i64 %1082, 63
  %1112 = xor i64 %1107, %1110
  %1113 = xor i64 %1107, %1111
  %1114 = add i64 %1112, %1113
  %1115 = icmp eq i64 %1114, 2
  %1116 = zext i1 %1115 to i8
  %1117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1116, i8* %1117, align 1
  store %struct.Memory* %loadMem_47bec6, %struct.Memory** %MEMORY
  %loadMem_47bec9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1119 = getelementptr inbounds %struct.GPR, %struct.GPR* %1118, i32 0, i32 33
  %1120 = getelementptr inbounds %struct.Reg, %struct.Reg* %1119, i32 0, i32 0
  %PC.i262 = bitcast %union.anon* %1120 to i64*
  %1121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1122 = getelementptr inbounds %struct.GPR, %struct.GPR* %1121, i32 0, i32 9
  %1123 = getelementptr inbounds %struct.Reg, %struct.Reg* %1122, i32 0, i32 0
  %RSI.i263 = bitcast %union.anon* %1123 to i64*
  %1124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1125 = getelementptr inbounds %struct.GPR, %struct.GPR* %1124, i32 0, i32 15
  %1126 = getelementptr inbounds %struct.Reg, %struct.Reg* %1125, i32 0, i32 0
  %RBP.i264 = bitcast %union.anon* %1126 to i64*
  %1127 = load i64, i64* %RBP.i264
  %1128 = sub i64 %1127, 8
  %1129 = load i64, i64* %PC.i262
  %1130 = add i64 %1129, 4
  store i64 %1130, i64* %PC.i262
  %1131 = inttoptr i64 %1128 to i32*
  %1132 = load i32, i32* %1131
  %1133 = sext i32 %1132 to i64
  store i64 %1133, i64* %RSI.i263, align 8
  store %struct.Memory* %loadMem_47bec9, %struct.Memory** %MEMORY
  %loadMem_47becd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1135 = getelementptr inbounds %struct.GPR, %struct.GPR* %1134, i32 0, i32 33
  %1136 = getelementptr inbounds %struct.Reg, %struct.Reg* %1135, i32 0, i32 0
  %PC.i260 = bitcast %union.anon* %1136 to i64*
  %1137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1138 = getelementptr inbounds %struct.GPR, %struct.GPR* %1137, i32 0, i32 9
  %1139 = getelementptr inbounds %struct.Reg, %struct.Reg* %1138, i32 0, i32 0
  %RSI.i261 = bitcast %union.anon* %1139 to i64*
  %1140 = load i64, i64* %RSI.i261
  %1141 = load i64, i64* %PC.i260
  %1142 = add i64 %1141, 4
  store i64 %1142, i64* %PC.i260
  %1143 = shl i64 %1140, 4
  %1144 = icmp slt i64 %1143, 0
  %1145 = shl i64 %1143, 1
  store i64 %1145, i64* %RSI.i261, align 8
  %1146 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1147 = zext i1 %1144 to i8
  store i8 %1147, i8* %1146, align 1
  %1148 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1149 = trunc i64 %1145 to i32
  %1150 = and i32 %1149, 254
  %1151 = call i32 @llvm.ctpop.i32(i32 %1150)
  %1152 = trunc i32 %1151 to i8
  %1153 = and i8 %1152, 1
  %1154 = xor i8 %1153, 1
  store i8 %1154, i8* %1148, align 1
  %1155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1155, align 1
  %1156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1157 = icmp eq i64 %1145, 0
  %1158 = zext i1 %1157 to i8
  store i8 %1158, i8* %1156, align 1
  %1159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1160 = lshr i64 %1145, 63
  %1161 = trunc i64 %1160 to i8
  store i8 %1161, i8* %1159, align 1
  %1162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1162, align 1
  store %struct.Memory* %loadMem_47becd, %struct.Memory** %MEMORY
  %loadMem_47bed1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1164 = getelementptr inbounds %struct.GPR, %struct.GPR* %1163, i32 0, i32 33
  %1165 = getelementptr inbounds %struct.Reg, %struct.Reg* %1164, i32 0, i32 0
  %PC.i257 = bitcast %union.anon* %1165 to i64*
  %1166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1167 = getelementptr inbounds %struct.GPR, %struct.GPR* %1166, i32 0, i32 1
  %1168 = getelementptr inbounds %struct.Reg, %struct.Reg* %1167, i32 0, i32 0
  %RAX.i258 = bitcast %union.anon* %1168 to i64*
  %1169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1170 = getelementptr inbounds %struct.GPR, %struct.GPR* %1169, i32 0, i32 9
  %1171 = getelementptr inbounds %struct.Reg, %struct.Reg* %1170, i32 0, i32 0
  %RSI.i259 = bitcast %union.anon* %1171 to i64*
  %1172 = load i64, i64* %RAX.i258
  %1173 = load i64, i64* %RSI.i259
  %1174 = load i64, i64* %PC.i257
  %1175 = add i64 %1174, 3
  store i64 %1175, i64* %PC.i257
  %1176 = add i64 %1173, %1172
  store i64 %1176, i64* %RAX.i258, align 8
  %1177 = icmp ult i64 %1176, %1172
  %1178 = icmp ult i64 %1176, %1173
  %1179 = or i1 %1177, %1178
  %1180 = zext i1 %1179 to i8
  %1181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1180, i8* %1181, align 1
  %1182 = trunc i64 %1176 to i32
  %1183 = and i32 %1182, 255
  %1184 = call i32 @llvm.ctpop.i32(i32 %1183)
  %1185 = trunc i32 %1184 to i8
  %1186 = and i8 %1185, 1
  %1187 = xor i8 %1186, 1
  %1188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1187, i8* %1188, align 1
  %1189 = xor i64 %1173, %1172
  %1190 = xor i64 %1189, %1176
  %1191 = lshr i64 %1190, 4
  %1192 = trunc i64 %1191 to i8
  %1193 = and i8 %1192, 1
  %1194 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1193, i8* %1194, align 1
  %1195 = icmp eq i64 %1176, 0
  %1196 = zext i1 %1195 to i8
  %1197 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1196, i8* %1197, align 1
  %1198 = lshr i64 %1176, 63
  %1199 = trunc i64 %1198 to i8
  %1200 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1199, i8* %1200, align 1
  %1201 = lshr i64 %1172, 63
  %1202 = lshr i64 %1173, 63
  %1203 = xor i64 %1198, %1201
  %1204 = xor i64 %1198, %1202
  %1205 = add i64 %1203, %1204
  %1206 = icmp eq i64 %1205, 2
  %1207 = zext i1 %1206 to i8
  %1208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1207, i8* %1208, align 1
  store %struct.Memory* %loadMem_47bed1, %struct.Memory** %MEMORY
  %loadMem_47bed4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1210 = getelementptr inbounds %struct.GPR, %struct.GPR* %1209, i32 0, i32 33
  %1211 = getelementptr inbounds %struct.Reg, %struct.Reg* %1210, i32 0, i32 0
  %PC.i254 = bitcast %union.anon* %1211 to i64*
  %1212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1213 = getelementptr inbounds %struct.GPR, %struct.GPR* %1212, i32 0, i32 9
  %1214 = getelementptr inbounds %struct.Reg, %struct.Reg* %1213, i32 0, i32 0
  %RSI.i255 = bitcast %union.anon* %1214 to i64*
  %1215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1216 = getelementptr inbounds %struct.GPR, %struct.GPR* %1215, i32 0, i32 15
  %1217 = getelementptr inbounds %struct.Reg, %struct.Reg* %1216, i32 0, i32 0
  %RBP.i256 = bitcast %union.anon* %1217 to i64*
  %1218 = load i64, i64* %RBP.i256
  %1219 = sub i64 %1218, 4
  %1220 = load i64, i64* %PC.i254
  %1221 = add i64 %1220, 4
  store i64 %1221, i64* %PC.i254
  %1222 = inttoptr i64 %1219 to i32*
  %1223 = load i32, i32* %1222
  %1224 = sext i32 %1223 to i64
  store i64 %1224, i64* %RSI.i255, align 8
  store %struct.Memory* %loadMem_47bed4, %struct.Memory** %MEMORY
  %loadMem_47bed8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1226 = getelementptr inbounds %struct.GPR, %struct.GPR* %1225, i32 0, i32 33
  %1227 = getelementptr inbounds %struct.Reg, %struct.Reg* %1226, i32 0, i32 0
  %PC.i250 = bitcast %union.anon* %1227 to i64*
  %1228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1229 = getelementptr inbounds %struct.GPR, %struct.GPR* %1228, i32 0, i32 7
  %1230 = getelementptr inbounds %struct.Reg, %struct.Reg* %1229, i32 0, i32 0
  %EDX.i251 = bitcast %union.anon* %1230 to i32*
  %1231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1232 = getelementptr inbounds %struct.GPR, %struct.GPR* %1231, i32 0, i32 1
  %1233 = getelementptr inbounds %struct.Reg, %struct.Reg* %1232, i32 0, i32 0
  %RAX.i252 = bitcast %union.anon* %1233 to i64*
  %1234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1235 = getelementptr inbounds %struct.GPR, %struct.GPR* %1234, i32 0, i32 9
  %1236 = getelementptr inbounds %struct.Reg, %struct.Reg* %1235, i32 0, i32 0
  %RSI.i253 = bitcast %union.anon* %1236 to i64*
  %1237 = load i64, i64* %RAX.i252
  %1238 = load i64, i64* %RSI.i253
  %1239 = mul i64 %1238, 4
  %1240 = add i64 %1239, %1237
  %1241 = load i32, i32* %EDX.i251
  %1242 = zext i32 %1241 to i64
  %1243 = load i64, i64* %PC.i250
  %1244 = add i64 %1243, 3
  store i64 %1244, i64* %PC.i250
  %1245 = inttoptr i64 %1240 to i32*
  store i32 %1241, i32* %1245
  store %struct.Memory* %loadMem_47bed8, %struct.Memory** %MEMORY
  br label %block_.L_47bedb

block_.L_47bedb:                                  ; preds = %routine_shll__cl___edx.exit276, %routine_shll__cl___edx.exit315
  %loadMem_47bedb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1247 = getelementptr inbounds %struct.GPR, %struct.GPR* %1246, i32 0, i32 33
  %1248 = getelementptr inbounds %struct.Reg, %struct.Reg* %1247, i32 0, i32 0
  %PC.i248 = bitcast %union.anon* %1248 to i64*
  %1249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1250 = getelementptr inbounds %struct.GPR, %struct.GPR* %1249, i32 0, i32 1
  %1251 = getelementptr inbounds %struct.Reg, %struct.Reg* %1250, i32 0, i32 0
  %RAX.i249 = bitcast %union.anon* %1251 to i64*
  %1252 = load i64, i64* %PC.i248
  %1253 = add i64 %1252, 10
  store i64 %1253, i64* %PC.i248
  store i64 7474576, i64* %RAX.i249, align 8
  store %struct.Memory* %loadMem_47bedb, %struct.Memory** %MEMORY
  %loadMem_47bee5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1255 = getelementptr inbounds %struct.GPR, %struct.GPR* %1254, i32 0, i32 33
  %1256 = getelementptr inbounds %struct.Reg, %struct.Reg* %1255, i32 0, i32 0
  %PC.i245 = bitcast %union.anon* %1256 to i64*
  %1257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1258 = getelementptr inbounds %struct.GPR, %struct.GPR* %1257, i32 0, i32 5
  %1259 = getelementptr inbounds %struct.Reg, %struct.Reg* %1258, i32 0, i32 0
  %RCX.i246 = bitcast %union.anon* %1259 to i64*
  %1260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1261 = getelementptr inbounds %struct.GPR, %struct.GPR* %1260, i32 0, i32 15
  %1262 = getelementptr inbounds %struct.Reg, %struct.Reg* %1261, i32 0, i32 0
  %RBP.i247 = bitcast %union.anon* %1262 to i64*
  %1263 = load i64, i64* %RBP.i247
  %1264 = sub i64 %1263, 16
  %1265 = load i64, i64* %PC.i245
  %1266 = add i64 %1265, 4
  store i64 %1266, i64* %PC.i245
  %1267 = inttoptr i64 %1264 to i32*
  %1268 = load i32, i32* %1267
  %1269 = sext i32 %1268 to i64
  store i64 %1269, i64* %RCX.i246, align 8
  store %struct.Memory* %loadMem_47bee5, %struct.Memory** %MEMORY
  %loadMem_47bee9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1271 = getelementptr inbounds %struct.GPR, %struct.GPR* %1270, i32 0, i32 33
  %1272 = getelementptr inbounds %struct.Reg, %struct.Reg* %1271, i32 0, i32 0
  %PC.i242 = bitcast %union.anon* %1272 to i64*
  %1273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1274 = getelementptr inbounds %struct.GPR, %struct.GPR* %1273, i32 0, i32 5
  %1275 = getelementptr inbounds %struct.Reg, %struct.Reg* %1274, i32 0, i32 0
  %RCX.i243 = bitcast %union.anon* %1275 to i64*
  %1276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1277 = getelementptr inbounds %struct.GPR, %struct.GPR* %1276, i32 0, i32 7
  %1278 = getelementptr inbounds %struct.Reg, %struct.Reg* %1277, i32 0, i32 0
  %RDX.i244 = bitcast %union.anon* %1278 to i64*
  %1279 = load i64, i64* %RCX.i243
  %1280 = mul i64 %1279, 2
  %1281 = add i64 %1280, 7394768
  %1282 = load i64, i64* %PC.i242
  %1283 = add i64 %1282, 8
  store i64 %1283, i64* %PC.i242
  %1284 = inttoptr i64 %1281 to i16*
  %1285 = load i16, i16* %1284
  %1286 = sext i16 %1285 to i64
  %1287 = and i64 %1286, 4294967295
  store i64 %1287, i64* %RDX.i244, align 8
  store %struct.Memory* %loadMem_47bee9, %struct.Memory** %MEMORY
  %loadMem_47bef1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1289 = getelementptr inbounds %struct.GPR, %struct.GPR* %1288, i32 0, i32 33
  %1290 = getelementptr inbounds %struct.Reg, %struct.Reg* %1289, i32 0, i32 0
  %PC.i239 = bitcast %union.anon* %1290 to i64*
  %1291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1292 = getelementptr inbounds %struct.GPR, %struct.GPR* %1291, i32 0, i32 5
  %1293 = getelementptr inbounds %struct.Reg, %struct.Reg* %1292, i32 0, i32 0
  %RCX.i240 = bitcast %union.anon* %1293 to i64*
  %1294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1295 = getelementptr inbounds %struct.GPR, %struct.GPR* %1294, i32 0, i32 15
  %1296 = getelementptr inbounds %struct.Reg, %struct.Reg* %1295, i32 0, i32 0
  %RBP.i241 = bitcast %union.anon* %1296 to i64*
  %1297 = load i64, i64* %RBP.i241
  %1298 = sub i64 %1297, 20
  %1299 = load i64, i64* %PC.i239
  %1300 = add i64 %1299, 3
  store i64 %1300, i64* %PC.i239
  %1301 = inttoptr i64 %1298 to i32*
  %1302 = load i32, i32* %1301
  %1303 = zext i32 %1302 to i64
  store i64 %1303, i64* %RCX.i240, align 8
  store %struct.Memory* %loadMem_47bef1, %struct.Memory** %MEMORY
  %loadMem_47bef4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1305 = getelementptr inbounds %struct.GPR, %struct.GPR* %1304, i32 0, i32 33
  %1306 = getelementptr inbounds %struct.Reg, %struct.Reg* %1305, i32 0, i32 0
  %PC.i235 = bitcast %union.anon* %1306 to i64*
  %1307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1308 = getelementptr inbounds %struct.GPR, %struct.GPR* %1307, i32 0, i32 5
  %1309 = getelementptr inbounds %struct.Reg, %struct.Reg* %1308, i32 0, i32 0
  %1310 = bitcast %union.anon* %1309 to %struct.anon.2*
  %CL.i236 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1310, i32 0, i32 0
  %1311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1312 = getelementptr inbounds %struct.GPR, %struct.GPR* %1311, i32 0, i32 7
  %1313 = getelementptr inbounds %struct.Reg, %struct.Reg* %1312, i32 0, i32 0
  %RDX.i237 = bitcast %union.anon* %1313 to i64*
  %1314 = load i64, i64* %RDX.i237
  %1315 = load i8, i8* %CL.i236
  %1316 = zext i8 %1315 to i64
  %1317 = load i64, i64* %PC.i235
  %1318 = add i64 %1317, 2
  store i64 %1318, i64* %PC.i235
  %1319 = trunc i64 %1316 to i5
  switch i5 %1319, label %1326 [
    i5 0, label %routine_shll__cl___edx.exit238
    i5 1, label %1320
  ]

; <label>:1320:                                   ; preds = %block_.L_47bedb
  %1321 = trunc i64 %1314 to i32
  %1322 = shl i32 %1321, 1
  %1323 = icmp slt i32 %1321, 0
  %1324 = icmp slt i32 %1322, 0
  %1325 = xor i1 %1323, %1324
  br label %1335

; <label>:1326:                                   ; preds = %block_.L_47bedb
  %1327 = and i64 %1316, 31
  %1328 = add i64 %1327, 4294967295
  %1329 = and i64 %1314, 4294967295
  %1330 = and i64 %1328, 4294967295
  %1331 = shl i64 %1329, %1330
  %1332 = trunc i64 %1331 to i32
  %1333 = icmp slt i32 %1332, 0
  %1334 = shl i32 %1332, 1
  br label %1335

; <label>:1335:                                   ; preds = %1326, %1320
  %1336 = phi i1 [ %1323, %1320 ], [ %1333, %1326 ]
  %1337 = phi i1 [ %1325, %1320 ], [ false, %1326 ]
  %1338 = phi i32 [ %1322, %1320 ], [ %1334, %1326 ]
  %1339 = zext i32 %1338 to i64
  store i64 %1339, i64* %RDX.i237, align 8
  %1340 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1341 = zext i1 %1336 to i8
  store i8 %1341, i8* %1340, align 1
  %1342 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1343 = and i32 %1338, 254
  %1344 = call i32 @llvm.ctpop.i32(i32 %1343)
  %1345 = trunc i32 %1344 to i8
  %1346 = and i8 %1345, 1
  %1347 = xor i8 %1346, 1
  store i8 %1347, i8* %1342, align 1
  %1348 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1348, align 1
  %1349 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1350 = icmp eq i32 %1338, 0
  %1351 = zext i1 %1350 to i8
  store i8 %1351, i8* %1349, align 1
  %1352 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1353 = lshr i32 %1338, 31
  %1354 = trunc i32 %1353 to i8
  store i8 %1354, i8* %1352, align 1
  %1355 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1356 = zext i1 %1337 to i8
  store i8 %1356, i8* %1355, align 1
  br label %routine_shll__cl___edx.exit238

routine_shll__cl___edx.exit238:                   ; preds = %block_.L_47bedb, %1335
  store %struct.Memory* %loadMem_47bef4, %struct.Memory** %MEMORY
  %loadMem_47bef6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1358 = getelementptr inbounds %struct.GPR, %struct.GPR* %1357, i32 0, i32 33
  %1359 = getelementptr inbounds %struct.Reg, %struct.Reg* %1358, i32 0, i32 0
  %PC.i232 = bitcast %union.anon* %1359 to i64*
  %1360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1361 = getelementptr inbounds %struct.GPR, %struct.GPR* %1360, i32 0, i32 9
  %1362 = getelementptr inbounds %struct.Reg, %struct.Reg* %1361, i32 0, i32 0
  %RSI.i233 = bitcast %union.anon* %1362 to i64*
  %1363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1364 = getelementptr inbounds %struct.GPR, %struct.GPR* %1363, i32 0, i32 15
  %1365 = getelementptr inbounds %struct.Reg, %struct.Reg* %1364, i32 0, i32 0
  %RBP.i234 = bitcast %union.anon* %1365 to i64*
  %1366 = load i64, i64* %RBP.i234
  %1367 = sub i64 %1366, 12
  %1368 = load i64, i64* %PC.i232
  %1369 = add i64 %1368, 4
  store i64 %1369, i64* %PC.i232
  %1370 = inttoptr i64 %1367 to i32*
  %1371 = load i32, i32* %1370
  %1372 = sext i32 %1371 to i64
  store i64 %1372, i64* %RSI.i233, align 8
  store %struct.Memory* %loadMem_47bef6, %struct.Memory** %MEMORY
  %loadMem_47befa = load %struct.Memory*, %struct.Memory** %MEMORY
  %1373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1374 = getelementptr inbounds %struct.GPR, %struct.GPR* %1373, i32 0, i32 33
  %1375 = getelementptr inbounds %struct.Reg, %struct.Reg* %1374, i32 0, i32 0
  %PC.i230 = bitcast %union.anon* %1375 to i64*
  %1376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1377 = getelementptr inbounds %struct.GPR, %struct.GPR* %1376, i32 0, i32 9
  %1378 = getelementptr inbounds %struct.Reg, %struct.Reg* %1377, i32 0, i32 0
  %RSI.i231 = bitcast %union.anon* %1378 to i64*
  %1379 = load i64, i64* %RSI.i231
  %1380 = load i64, i64* %PC.i230
  %1381 = add i64 %1380, 4
  store i64 %1381, i64* %PC.i230
  %1382 = shl i64 %1379, 7
  %1383 = icmp slt i64 %1382, 0
  %1384 = shl i64 %1382, 1
  store i64 %1384, i64* %RSI.i231, align 8
  %1385 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1386 = zext i1 %1383 to i8
  store i8 %1386, i8* %1385, align 1
  %1387 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1388 = trunc i64 %1384 to i32
  store i8 1, i8* %1387, align 1
  %1389 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1389, align 1
  %1390 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1391 = icmp eq i64 %1384, 0
  %1392 = zext i1 %1391 to i8
  store i8 %1392, i8* %1390, align 1
  %1393 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1394 = lshr i64 %1384, 63
  %1395 = trunc i64 %1394 to i8
  store i8 %1395, i8* %1393, align 1
  %1396 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1396, align 1
  store %struct.Memory* %loadMem_47befa, %struct.Memory** %MEMORY
  %loadMem_47befe = load %struct.Memory*, %struct.Memory** %MEMORY
  %1397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1398 = getelementptr inbounds %struct.GPR, %struct.GPR* %1397, i32 0, i32 33
  %1399 = getelementptr inbounds %struct.Reg, %struct.Reg* %1398, i32 0, i32 0
  %PC.i227 = bitcast %union.anon* %1399 to i64*
  %1400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1401 = getelementptr inbounds %struct.GPR, %struct.GPR* %1400, i32 0, i32 1
  %1402 = getelementptr inbounds %struct.Reg, %struct.Reg* %1401, i32 0, i32 0
  %RAX.i228 = bitcast %union.anon* %1402 to i64*
  %1403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1404 = getelementptr inbounds %struct.GPR, %struct.GPR* %1403, i32 0, i32 9
  %1405 = getelementptr inbounds %struct.Reg, %struct.Reg* %1404, i32 0, i32 0
  %RSI.i229 = bitcast %union.anon* %1405 to i64*
  %1406 = load i64, i64* %RAX.i228
  %1407 = load i64, i64* %RSI.i229
  %1408 = load i64, i64* %PC.i227
  %1409 = add i64 %1408, 3
  store i64 %1409, i64* %PC.i227
  %1410 = add i64 %1407, %1406
  store i64 %1410, i64* %RAX.i228, align 8
  %1411 = icmp ult i64 %1410, %1406
  %1412 = icmp ult i64 %1410, %1407
  %1413 = or i1 %1411, %1412
  %1414 = zext i1 %1413 to i8
  %1415 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1414, i8* %1415, align 1
  %1416 = trunc i64 %1410 to i32
  %1417 = and i32 %1416, 255
  %1418 = call i32 @llvm.ctpop.i32(i32 %1417)
  %1419 = trunc i32 %1418 to i8
  %1420 = and i8 %1419, 1
  %1421 = xor i8 %1420, 1
  %1422 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1421, i8* %1422, align 1
  %1423 = xor i64 %1407, %1406
  %1424 = xor i64 %1423, %1410
  %1425 = lshr i64 %1424, 4
  %1426 = trunc i64 %1425 to i8
  %1427 = and i8 %1426, 1
  %1428 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1427, i8* %1428, align 1
  %1429 = icmp eq i64 %1410, 0
  %1430 = zext i1 %1429 to i8
  %1431 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1430, i8* %1431, align 1
  %1432 = lshr i64 %1410, 63
  %1433 = trunc i64 %1432 to i8
  %1434 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1433, i8* %1434, align 1
  %1435 = lshr i64 %1406, 63
  %1436 = lshr i64 %1407, 63
  %1437 = xor i64 %1432, %1435
  %1438 = xor i64 %1432, %1436
  %1439 = add i64 %1437, %1438
  %1440 = icmp eq i64 %1439, 2
  %1441 = zext i1 %1440 to i8
  %1442 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1441, i8* %1442, align 1
  store %struct.Memory* %loadMem_47befe, %struct.Memory** %MEMORY
  %loadMem_47bf01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1444 = getelementptr inbounds %struct.GPR, %struct.GPR* %1443, i32 0, i32 33
  %1445 = getelementptr inbounds %struct.Reg, %struct.Reg* %1444, i32 0, i32 0
  %PC.i224 = bitcast %union.anon* %1445 to i64*
  %1446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1447 = getelementptr inbounds %struct.GPR, %struct.GPR* %1446, i32 0, i32 9
  %1448 = getelementptr inbounds %struct.Reg, %struct.Reg* %1447, i32 0, i32 0
  %RSI.i225 = bitcast %union.anon* %1448 to i64*
  %1449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1450 = getelementptr inbounds %struct.GPR, %struct.GPR* %1449, i32 0, i32 15
  %1451 = getelementptr inbounds %struct.Reg, %struct.Reg* %1450, i32 0, i32 0
  %RBP.i226 = bitcast %union.anon* %1451 to i64*
  %1452 = load i64, i64* %RBP.i226
  %1453 = sub i64 %1452, 8
  %1454 = load i64, i64* %PC.i224
  %1455 = add i64 %1454, 4
  store i64 %1455, i64* %PC.i224
  %1456 = inttoptr i64 %1453 to i32*
  %1457 = load i32, i32* %1456
  %1458 = sext i32 %1457 to i64
  store i64 %1458, i64* %RSI.i225, align 8
  store %struct.Memory* %loadMem_47bf01, %struct.Memory** %MEMORY
  %loadMem_47bf05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1460 = getelementptr inbounds %struct.GPR, %struct.GPR* %1459, i32 0, i32 33
  %1461 = getelementptr inbounds %struct.Reg, %struct.Reg* %1460, i32 0, i32 0
  %PC.i222 = bitcast %union.anon* %1461 to i64*
  %1462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1463 = getelementptr inbounds %struct.GPR, %struct.GPR* %1462, i32 0, i32 9
  %1464 = getelementptr inbounds %struct.Reg, %struct.Reg* %1463, i32 0, i32 0
  %RSI.i223 = bitcast %union.anon* %1464 to i64*
  %1465 = load i64, i64* %RSI.i223
  %1466 = load i64, i64* %PC.i222
  %1467 = add i64 %1466, 4
  store i64 %1467, i64* %PC.i222
  %1468 = shl i64 %1465, 4
  %1469 = icmp slt i64 %1468, 0
  %1470 = shl i64 %1468, 1
  store i64 %1470, i64* %RSI.i223, align 8
  %1471 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1472 = zext i1 %1469 to i8
  store i8 %1472, i8* %1471, align 1
  %1473 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1474 = trunc i64 %1470 to i32
  %1475 = and i32 %1474, 254
  %1476 = call i32 @llvm.ctpop.i32(i32 %1475)
  %1477 = trunc i32 %1476 to i8
  %1478 = and i8 %1477, 1
  %1479 = xor i8 %1478, 1
  store i8 %1479, i8* %1473, align 1
  %1480 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1480, align 1
  %1481 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1482 = icmp eq i64 %1470, 0
  %1483 = zext i1 %1482 to i8
  store i8 %1483, i8* %1481, align 1
  %1484 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1485 = lshr i64 %1470, 63
  %1486 = trunc i64 %1485 to i8
  store i8 %1486, i8* %1484, align 1
  %1487 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1487, align 1
  store %struct.Memory* %loadMem_47bf05, %struct.Memory** %MEMORY
  %loadMem_47bf09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1488 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1489 = getelementptr inbounds %struct.GPR, %struct.GPR* %1488, i32 0, i32 33
  %1490 = getelementptr inbounds %struct.Reg, %struct.Reg* %1489, i32 0, i32 0
  %PC.i219 = bitcast %union.anon* %1490 to i64*
  %1491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1492 = getelementptr inbounds %struct.GPR, %struct.GPR* %1491, i32 0, i32 1
  %1493 = getelementptr inbounds %struct.Reg, %struct.Reg* %1492, i32 0, i32 0
  %RAX.i220 = bitcast %union.anon* %1493 to i64*
  %1494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1495 = getelementptr inbounds %struct.GPR, %struct.GPR* %1494, i32 0, i32 9
  %1496 = getelementptr inbounds %struct.Reg, %struct.Reg* %1495, i32 0, i32 0
  %RSI.i221 = bitcast %union.anon* %1496 to i64*
  %1497 = load i64, i64* %RAX.i220
  %1498 = load i64, i64* %RSI.i221
  %1499 = load i64, i64* %PC.i219
  %1500 = add i64 %1499, 3
  store i64 %1500, i64* %PC.i219
  %1501 = add i64 %1498, %1497
  store i64 %1501, i64* %RAX.i220, align 8
  %1502 = icmp ult i64 %1501, %1497
  %1503 = icmp ult i64 %1501, %1498
  %1504 = or i1 %1502, %1503
  %1505 = zext i1 %1504 to i8
  %1506 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1505, i8* %1506, align 1
  %1507 = trunc i64 %1501 to i32
  %1508 = and i32 %1507, 255
  %1509 = call i32 @llvm.ctpop.i32(i32 %1508)
  %1510 = trunc i32 %1509 to i8
  %1511 = and i8 %1510, 1
  %1512 = xor i8 %1511, 1
  %1513 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1512, i8* %1513, align 1
  %1514 = xor i64 %1498, %1497
  %1515 = xor i64 %1514, %1501
  %1516 = lshr i64 %1515, 4
  %1517 = trunc i64 %1516 to i8
  %1518 = and i8 %1517, 1
  %1519 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1518, i8* %1519, align 1
  %1520 = icmp eq i64 %1501, 0
  %1521 = zext i1 %1520 to i8
  %1522 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1521, i8* %1522, align 1
  %1523 = lshr i64 %1501, 63
  %1524 = trunc i64 %1523 to i8
  %1525 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1524, i8* %1525, align 1
  %1526 = lshr i64 %1497, 63
  %1527 = lshr i64 %1498, 63
  %1528 = xor i64 %1523, %1526
  %1529 = xor i64 %1523, %1527
  %1530 = add i64 %1528, %1529
  %1531 = icmp eq i64 %1530, 2
  %1532 = zext i1 %1531 to i8
  %1533 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1532, i8* %1533, align 1
  store %struct.Memory* %loadMem_47bf09, %struct.Memory** %MEMORY
  %loadMem_47bf0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1534 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1535 = getelementptr inbounds %struct.GPR, %struct.GPR* %1534, i32 0, i32 33
  %1536 = getelementptr inbounds %struct.Reg, %struct.Reg* %1535, i32 0, i32 0
  %PC.i216 = bitcast %union.anon* %1536 to i64*
  %1537 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1538 = getelementptr inbounds %struct.GPR, %struct.GPR* %1537, i32 0, i32 9
  %1539 = getelementptr inbounds %struct.Reg, %struct.Reg* %1538, i32 0, i32 0
  %RSI.i217 = bitcast %union.anon* %1539 to i64*
  %1540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1541 = getelementptr inbounds %struct.GPR, %struct.GPR* %1540, i32 0, i32 15
  %1542 = getelementptr inbounds %struct.Reg, %struct.Reg* %1541, i32 0, i32 0
  %RBP.i218 = bitcast %union.anon* %1542 to i64*
  %1543 = load i64, i64* %RBP.i218
  %1544 = sub i64 %1543, 4
  %1545 = load i64, i64* %PC.i216
  %1546 = add i64 %1545, 4
  store i64 %1546, i64* %PC.i216
  %1547 = inttoptr i64 %1544 to i32*
  %1548 = load i32, i32* %1547
  %1549 = sext i32 %1548 to i64
  store i64 %1549, i64* %RSI.i217, align 8
  store %struct.Memory* %loadMem_47bf0c, %struct.Memory** %MEMORY
  %loadMem_47bf10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1550 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1551 = getelementptr inbounds %struct.GPR, %struct.GPR* %1550, i32 0, i32 33
  %1552 = getelementptr inbounds %struct.Reg, %struct.Reg* %1551, i32 0, i32 0
  %PC.i212 = bitcast %union.anon* %1552 to i64*
  %1553 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1554 = getelementptr inbounds %struct.GPR, %struct.GPR* %1553, i32 0, i32 7
  %1555 = getelementptr inbounds %struct.Reg, %struct.Reg* %1554, i32 0, i32 0
  %EDX.i213 = bitcast %union.anon* %1555 to i32*
  %1556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1557 = getelementptr inbounds %struct.GPR, %struct.GPR* %1556, i32 0, i32 1
  %1558 = getelementptr inbounds %struct.Reg, %struct.Reg* %1557, i32 0, i32 0
  %RAX.i214 = bitcast %union.anon* %1558 to i64*
  %1559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1560 = getelementptr inbounds %struct.GPR, %struct.GPR* %1559, i32 0, i32 9
  %1561 = getelementptr inbounds %struct.Reg, %struct.Reg* %1560, i32 0, i32 0
  %RSI.i215 = bitcast %union.anon* %1561 to i64*
  %1562 = load i64, i64* %RAX.i214
  %1563 = load i64, i64* %RSI.i215
  %1564 = mul i64 %1563, 4
  %1565 = add i64 %1564, %1562
  %1566 = load i32, i32* %EDX.i213
  %1567 = zext i32 %1566 to i64
  %1568 = load i64, i64* %PC.i212
  %1569 = add i64 %1568, 3
  store i64 %1569, i64* %PC.i212
  %1570 = inttoptr i64 %1565 to i32*
  store i32 %1566, i32* %1570
  store %struct.Memory* %loadMem_47bf10, %struct.Memory** %MEMORY
  %loadMem_47bf13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1572 = getelementptr inbounds %struct.GPR, %struct.GPR* %1571, i32 0, i32 33
  %1573 = getelementptr inbounds %struct.Reg, %struct.Reg* %1572, i32 0, i32 0
  %PC.i209 = bitcast %union.anon* %1573 to i64*
  %1574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1575 = getelementptr inbounds %struct.GPR, %struct.GPR* %1574, i32 0, i32 1
  %1576 = getelementptr inbounds %struct.Reg, %struct.Reg* %1575, i32 0, i32 0
  %RAX.i210 = bitcast %union.anon* %1576 to i64*
  %1577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1578 = getelementptr inbounds %struct.GPR, %struct.GPR* %1577, i32 0, i32 15
  %1579 = getelementptr inbounds %struct.Reg, %struct.Reg* %1578, i32 0, i32 0
  %RBP.i211 = bitcast %union.anon* %1579 to i64*
  %1580 = load i64, i64* %RBP.i211
  %1581 = sub i64 %1580, 4
  %1582 = load i64, i64* %PC.i209
  %1583 = add i64 %1582, 3
  store i64 %1583, i64* %PC.i209
  %1584 = inttoptr i64 %1581 to i32*
  %1585 = load i32, i32* %1584
  %1586 = zext i32 %1585 to i64
  store i64 %1586, i64* %RAX.i210, align 8
  store %struct.Memory* %loadMem_47bf13, %struct.Memory** %MEMORY
  %loadMem_47bf16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1587 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1588 = getelementptr inbounds %struct.GPR, %struct.GPR* %1587, i32 0, i32 33
  %1589 = getelementptr inbounds %struct.Reg, %struct.Reg* %1588, i32 0, i32 0
  %PC.i207 = bitcast %union.anon* %1589 to i64*
  %1590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1591 = getelementptr inbounds %struct.GPR, %struct.GPR* %1590, i32 0, i32 1
  %1592 = getelementptr inbounds %struct.Reg, %struct.Reg* %1591, i32 0, i32 0
  %RAX.i208 = bitcast %union.anon* %1592 to i64*
  %1593 = load i64, i64* %RAX.i208
  %1594 = load i64, i64* %PC.i207
  %1595 = add i64 %1594, 3
  store i64 %1595, i64* %PC.i207
  %1596 = trunc i64 %1593 to i32
  %1597 = add i32 1, %1596
  %1598 = zext i32 %1597 to i64
  store i64 %1598, i64* %RAX.i208, align 8
  %1599 = icmp ult i32 %1597, %1596
  %1600 = icmp ult i32 %1597, 1
  %1601 = or i1 %1599, %1600
  %1602 = zext i1 %1601 to i8
  %1603 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1602, i8* %1603, align 1
  %1604 = and i32 %1597, 255
  %1605 = call i32 @llvm.ctpop.i32(i32 %1604)
  %1606 = trunc i32 %1605 to i8
  %1607 = and i8 %1606, 1
  %1608 = xor i8 %1607, 1
  %1609 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1608, i8* %1609, align 1
  %1610 = xor i64 1, %1593
  %1611 = trunc i64 %1610 to i32
  %1612 = xor i32 %1611, %1597
  %1613 = lshr i32 %1612, 4
  %1614 = trunc i32 %1613 to i8
  %1615 = and i8 %1614, 1
  %1616 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1615, i8* %1616, align 1
  %1617 = icmp eq i32 %1597, 0
  %1618 = zext i1 %1617 to i8
  %1619 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1618, i8* %1619, align 1
  %1620 = lshr i32 %1597, 31
  %1621 = trunc i32 %1620 to i8
  %1622 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1621, i8* %1622, align 1
  %1623 = lshr i32 %1596, 31
  %1624 = xor i32 %1620, %1623
  %1625 = add i32 %1624, %1620
  %1626 = icmp eq i32 %1625, 2
  %1627 = zext i1 %1626 to i8
  %1628 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1627, i8* %1628, align 1
  store %struct.Memory* %loadMem_47bf16, %struct.Memory** %MEMORY
  %loadMem_47bf19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1630 = getelementptr inbounds %struct.GPR, %struct.GPR* %1629, i32 0, i32 33
  %1631 = getelementptr inbounds %struct.Reg, %struct.Reg* %1630, i32 0, i32 0
  %PC.i204 = bitcast %union.anon* %1631 to i64*
  %1632 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1633 = getelementptr inbounds %struct.GPR, %struct.GPR* %1632, i32 0, i32 1
  %1634 = getelementptr inbounds %struct.Reg, %struct.Reg* %1633, i32 0, i32 0
  %EAX.i205 = bitcast %union.anon* %1634 to i32*
  %1635 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1636 = getelementptr inbounds %struct.GPR, %struct.GPR* %1635, i32 0, i32 15
  %1637 = getelementptr inbounds %struct.Reg, %struct.Reg* %1636, i32 0, i32 0
  %RBP.i206 = bitcast %union.anon* %1637 to i64*
  %1638 = load i64, i64* %RBP.i206
  %1639 = sub i64 %1638, 4
  %1640 = load i32, i32* %EAX.i205
  %1641 = zext i32 %1640 to i64
  %1642 = load i64, i64* %PC.i204
  %1643 = add i64 %1642, 3
  store i64 %1643, i64* %PC.i204
  %1644 = inttoptr i64 %1639 to i32*
  store i32 %1640, i32* %1644
  store %struct.Memory* %loadMem_47bf19, %struct.Memory** %MEMORY
  %loadMem_47bf1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1645 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1646 = getelementptr inbounds %struct.GPR, %struct.GPR* %1645, i32 0, i32 33
  %1647 = getelementptr inbounds %struct.Reg, %struct.Reg* %1646, i32 0, i32 0
  %PC.i203 = bitcast %union.anon* %1647 to i64*
  %1648 = load i64, i64* %PC.i203
  %1649 = add i64 %1648, -222
  %1650 = load i64, i64* %PC.i203
  %1651 = add i64 %1650, 5
  store i64 %1651, i64* %PC.i203
  %1652 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1649, i64* %1652, align 8
  store %struct.Memory* %loadMem_47bf1c, %struct.Memory** %MEMORY
  br label %block_.L_47be3e

block_.L_47bf21:                                  ; preds = %block_.L_47be3e
  %loadMem_47bf21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1653 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1654 = getelementptr inbounds %struct.GPR, %struct.GPR* %1653, i32 0, i32 33
  %1655 = getelementptr inbounds %struct.Reg, %struct.Reg* %1654, i32 0, i32 0
  %PC.i202 = bitcast %union.anon* %1655 to i64*
  %1656 = load i64, i64* %PC.i202
  %1657 = add i64 %1656, 5
  %1658 = load i64, i64* %PC.i202
  %1659 = add i64 %1658, 5
  store i64 %1659, i64* %PC.i202
  %1660 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1657, i64* %1660, align 8
  store %struct.Memory* %loadMem_47bf21, %struct.Memory** %MEMORY
  br label %block_.L_47bf26

block_.L_47bf26:                                  ; preds = %block_.L_47bf21
  %loadMem_47bf26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1662 = getelementptr inbounds %struct.GPR, %struct.GPR* %1661, i32 0, i32 33
  %1663 = getelementptr inbounds %struct.Reg, %struct.Reg* %1662, i32 0, i32 0
  %PC.i199 = bitcast %union.anon* %1663 to i64*
  %1664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1665 = getelementptr inbounds %struct.GPR, %struct.GPR* %1664, i32 0, i32 1
  %1666 = getelementptr inbounds %struct.Reg, %struct.Reg* %1665, i32 0, i32 0
  %RAX.i200 = bitcast %union.anon* %1666 to i64*
  %1667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1668 = getelementptr inbounds %struct.GPR, %struct.GPR* %1667, i32 0, i32 15
  %1669 = getelementptr inbounds %struct.Reg, %struct.Reg* %1668, i32 0, i32 0
  %RBP.i201 = bitcast %union.anon* %1669 to i64*
  %1670 = load i64, i64* %RBP.i201
  %1671 = sub i64 %1670, 8
  %1672 = load i64, i64* %PC.i199
  %1673 = add i64 %1672, 3
  store i64 %1673, i64* %PC.i199
  %1674 = inttoptr i64 %1671 to i32*
  %1675 = load i32, i32* %1674
  %1676 = zext i32 %1675 to i64
  store i64 %1676, i64* %RAX.i200, align 8
  store %struct.Memory* %loadMem_47bf26, %struct.Memory** %MEMORY
  %loadMem_47bf29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1678 = getelementptr inbounds %struct.GPR, %struct.GPR* %1677, i32 0, i32 33
  %1679 = getelementptr inbounds %struct.Reg, %struct.Reg* %1678, i32 0, i32 0
  %PC.i197 = bitcast %union.anon* %1679 to i64*
  %1680 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1681 = getelementptr inbounds %struct.GPR, %struct.GPR* %1680, i32 0, i32 1
  %1682 = getelementptr inbounds %struct.Reg, %struct.Reg* %1681, i32 0, i32 0
  %RAX.i198 = bitcast %union.anon* %1682 to i64*
  %1683 = load i64, i64* %RAX.i198
  %1684 = load i64, i64* %PC.i197
  %1685 = add i64 %1684, 3
  store i64 %1685, i64* %PC.i197
  %1686 = trunc i64 %1683 to i32
  %1687 = add i32 1, %1686
  %1688 = zext i32 %1687 to i64
  store i64 %1688, i64* %RAX.i198, align 8
  %1689 = icmp ult i32 %1687, %1686
  %1690 = icmp ult i32 %1687, 1
  %1691 = or i1 %1689, %1690
  %1692 = zext i1 %1691 to i8
  %1693 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1692, i8* %1693, align 1
  %1694 = and i32 %1687, 255
  %1695 = call i32 @llvm.ctpop.i32(i32 %1694)
  %1696 = trunc i32 %1695 to i8
  %1697 = and i8 %1696, 1
  %1698 = xor i8 %1697, 1
  %1699 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1698, i8* %1699, align 1
  %1700 = xor i64 1, %1683
  %1701 = trunc i64 %1700 to i32
  %1702 = xor i32 %1701, %1687
  %1703 = lshr i32 %1702, 4
  %1704 = trunc i32 %1703 to i8
  %1705 = and i8 %1704, 1
  %1706 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1705, i8* %1706, align 1
  %1707 = icmp eq i32 %1687, 0
  %1708 = zext i1 %1707 to i8
  %1709 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1708, i8* %1709, align 1
  %1710 = lshr i32 %1687, 31
  %1711 = trunc i32 %1710 to i8
  %1712 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1711, i8* %1712, align 1
  %1713 = lshr i32 %1686, 31
  %1714 = xor i32 %1710, %1713
  %1715 = add i32 %1714, %1710
  %1716 = icmp eq i32 %1715, 2
  %1717 = zext i1 %1716 to i8
  %1718 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1717, i8* %1718, align 1
  store %struct.Memory* %loadMem_47bf29, %struct.Memory** %MEMORY
  %loadMem_47bf2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1720 = getelementptr inbounds %struct.GPR, %struct.GPR* %1719, i32 0, i32 33
  %1721 = getelementptr inbounds %struct.Reg, %struct.Reg* %1720, i32 0, i32 0
  %PC.i194 = bitcast %union.anon* %1721 to i64*
  %1722 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1723 = getelementptr inbounds %struct.GPR, %struct.GPR* %1722, i32 0, i32 1
  %1724 = getelementptr inbounds %struct.Reg, %struct.Reg* %1723, i32 0, i32 0
  %EAX.i195 = bitcast %union.anon* %1724 to i32*
  %1725 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1726 = getelementptr inbounds %struct.GPR, %struct.GPR* %1725, i32 0, i32 15
  %1727 = getelementptr inbounds %struct.Reg, %struct.Reg* %1726, i32 0, i32 0
  %RBP.i196 = bitcast %union.anon* %1727 to i64*
  %1728 = load i64, i64* %RBP.i196
  %1729 = sub i64 %1728, 8
  %1730 = load i32, i32* %EAX.i195
  %1731 = zext i32 %1730 to i64
  %1732 = load i64, i64* %PC.i194
  %1733 = add i64 %1732, 3
  store i64 %1733, i64* %PC.i194
  %1734 = inttoptr i64 %1729 to i32*
  store i32 %1730, i32* %1734
  store %struct.Memory* %loadMem_47bf2c, %struct.Memory** %MEMORY
  %loadMem_47bf2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1736 = getelementptr inbounds %struct.GPR, %struct.GPR* %1735, i32 0, i32 33
  %1737 = getelementptr inbounds %struct.Reg, %struct.Reg* %1736, i32 0, i32 0
  %PC.i193 = bitcast %union.anon* %1737 to i64*
  %1738 = load i64, i64* %PC.i193
  %1739 = add i64 %1738, -258
  %1740 = load i64, i64* %PC.i193
  %1741 = add i64 %1740, 5
  store i64 %1741, i64* %PC.i193
  %1742 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1739, i64* %1742, align 8
  store %struct.Memory* %loadMem_47bf2f, %struct.Memory** %MEMORY
  br label %block_.L_47be2d

block_.L_47bf34:                                  ; preds = %block_.L_47be2d
  %loadMem_47bf34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1743 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1744 = getelementptr inbounds %struct.GPR, %struct.GPR* %1743, i32 0, i32 33
  %1745 = getelementptr inbounds %struct.Reg, %struct.Reg* %1744, i32 0, i32 0
  %PC.i192 = bitcast %union.anon* %1745 to i64*
  %1746 = load i64, i64* %PC.i192
  %1747 = add i64 %1746, 5
  %1748 = load i64, i64* %PC.i192
  %1749 = add i64 %1748, 5
  store i64 %1749, i64* %PC.i192
  %1750 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1747, i64* %1750, align 8
  store %struct.Memory* %loadMem_47bf34, %struct.Memory** %MEMORY
  br label %block_.L_47bf39

block_.L_47bf39:                                  ; preds = %block_.L_47bf34
  %loadMem_47bf39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1751 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1752 = getelementptr inbounds %struct.GPR, %struct.GPR* %1751, i32 0, i32 33
  %1753 = getelementptr inbounds %struct.Reg, %struct.Reg* %1752, i32 0, i32 0
  %PC.i189 = bitcast %union.anon* %1753 to i64*
  %1754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1755 = getelementptr inbounds %struct.GPR, %struct.GPR* %1754, i32 0, i32 1
  %1756 = getelementptr inbounds %struct.Reg, %struct.Reg* %1755, i32 0, i32 0
  %RAX.i190 = bitcast %union.anon* %1756 to i64*
  %1757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1758 = getelementptr inbounds %struct.GPR, %struct.GPR* %1757, i32 0, i32 15
  %1759 = getelementptr inbounds %struct.Reg, %struct.Reg* %1758, i32 0, i32 0
  %RBP.i191 = bitcast %union.anon* %1759 to i64*
  %1760 = load i64, i64* %RBP.i191
  %1761 = sub i64 %1760, 12
  %1762 = load i64, i64* %PC.i189
  %1763 = add i64 %1762, 3
  store i64 %1763, i64* %PC.i189
  %1764 = inttoptr i64 %1761 to i32*
  %1765 = load i32, i32* %1764
  %1766 = zext i32 %1765 to i64
  store i64 %1766, i64* %RAX.i190, align 8
  store %struct.Memory* %loadMem_47bf39, %struct.Memory** %MEMORY
  %loadMem_47bf3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1767 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1768 = getelementptr inbounds %struct.GPR, %struct.GPR* %1767, i32 0, i32 33
  %1769 = getelementptr inbounds %struct.Reg, %struct.Reg* %1768, i32 0, i32 0
  %PC.i187 = bitcast %union.anon* %1769 to i64*
  %1770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1771 = getelementptr inbounds %struct.GPR, %struct.GPR* %1770, i32 0, i32 1
  %1772 = getelementptr inbounds %struct.Reg, %struct.Reg* %1771, i32 0, i32 0
  %RAX.i188 = bitcast %union.anon* %1772 to i64*
  %1773 = load i64, i64* %RAX.i188
  %1774 = load i64, i64* %PC.i187
  %1775 = add i64 %1774, 3
  store i64 %1775, i64* %PC.i187
  %1776 = trunc i64 %1773 to i32
  %1777 = add i32 1, %1776
  %1778 = zext i32 %1777 to i64
  store i64 %1778, i64* %RAX.i188, align 8
  %1779 = icmp ult i32 %1777, %1776
  %1780 = icmp ult i32 %1777, 1
  %1781 = or i1 %1779, %1780
  %1782 = zext i1 %1781 to i8
  %1783 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1782, i8* %1783, align 1
  %1784 = and i32 %1777, 255
  %1785 = call i32 @llvm.ctpop.i32(i32 %1784)
  %1786 = trunc i32 %1785 to i8
  %1787 = and i8 %1786, 1
  %1788 = xor i8 %1787, 1
  %1789 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1788, i8* %1789, align 1
  %1790 = xor i64 1, %1773
  %1791 = trunc i64 %1790 to i32
  %1792 = xor i32 %1791, %1777
  %1793 = lshr i32 %1792, 4
  %1794 = trunc i32 %1793 to i8
  %1795 = and i8 %1794, 1
  %1796 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1795, i8* %1796, align 1
  %1797 = icmp eq i32 %1777, 0
  %1798 = zext i1 %1797 to i8
  %1799 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1798, i8* %1799, align 1
  %1800 = lshr i32 %1777, 31
  %1801 = trunc i32 %1800 to i8
  %1802 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1801, i8* %1802, align 1
  %1803 = lshr i32 %1776, 31
  %1804 = xor i32 %1800, %1803
  %1805 = add i32 %1804, %1800
  %1806 = icmp eq i32 %1805, 2
  %1807 = zext i1 %1806 to i8
  %1808 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1807, i8* %1808, align 1
  store %struct.Memory* %loadMem_47bf3c, %struct.Memory** %MEMORY
  %loadMem_47bf3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1809 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1810 = getelementptr inbounds %struct.GPR, %struct.GPR* %1809, i32 0, i32 33
  %1811 = getelementptr inbounds %struct.Reg, %struct.Reg* %1810, i32 0, i32 0
  %PC.i184 = bitcast %union.anon* %1811 to i64*
  %1812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1813 = getelementptr inbounds %struct.GPR, %struct.GPR* %1812, i32 0, i32 1
  %1814 = getelementptr inbounds %struct.Reg, %struct.Reg* %1813, i32 0, i32 0
  %EAX.i185 = bitcast %union.anon* %1814 to i32*
  %1815 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1816 = getelementptr inbounds %struct.GPR, %struct.GPR* %1815, i32 0, i32 15
  %1817 = getelementptr inbounds %struct.Reg, %struct.Reg* %1816, i32 0, i32 0
  %RBP.i186 = bitcast %union.anon* %1817 to i64*
  %1818 = load i64, i64* %RBP.i186
  %1819 = sub i64 %1818, 12
  %1820 = load i32, i32* %EAX.i185
  %1821 = zext i32 %1820 to i64
  %1822 = load i64, i64* %PC.i184
  %1823 = add i64 %1822, 3
  store i64 %1823, i64* %PC.i184
  %1824 = inttoptr i64 %1819 to i32*
  store i32 %1820, i32* %1824
  store %struct.Memory* %loadMem_47bf3f, %struct.Memory** %MEMORY
  %loadMem_47bf42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1826 = getelementptr inbounds %struct.GPR, %struct.GPR* %1825, i32 0, i32 33
  %1827 = getelementptr inbounds %struct.Reg, %struct.Reg* %1826, i32 0, i32 0
  %PC.i183 = bitcast %union.anon* %1827 to i64*
  %1828 = load i64, i64* %PC.i183
  %1829 = add i64 %1828, -306
  %1830 = load i64, i64* %PC.i183
  %1831 = add i64 %1830, 5
  store i64 %1831, i64* %PC.i183
  %1832 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1829, i64* %1832, align 8
  store %struct.Memory* %loadMem_47bf42, %struct.Memory** %MEMORY
  br label %block_.L_47be10

block_.L_47bf47:                                  ; preds = %block_.L_47be10
  %loadMem_47bf47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1833 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1834 = getelementptr inbounds %struct.GPR, %struct.GPR* %1833, i32 0, i32 33
  %1835 = getelementptr inbounds %struct.Reg, %struct.Reg* %1834, i32 0, i32 0
  %PC.i182 = bitcast %union.anon* %1835 to i64*
  %1836 = load i64, i64* %PC.i182
  %1837 = add i64 %1836, 328
  %1838 = load i64, i64* %PC.i182
  %1839 = add i64 %1838, 5
  store i64 %1839, i64* %PC.i182
  %1840 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1837, i64* %1840, align 8
  store %struct.Memory* %loadMem_47bf47, %struct.Memory** %MEMORY
  br label %block_.L_47c08f

block_.L_47bf4c:                                  ; preds = %entry
  %loadMem_47bf4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1842 = getelementptr inbounds %struct.GPR, %struct.GPR* %1841, i32 0, i32 33
  %1843 = getelementptr inbounds %struct.Reg, %struct.Reg* %1842, i32 0, i32 0
  %PC.i180 = bitcast %union.anon* %1843 to i64*
  %1844 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1845 = getelementptr inbounds %struct.GPR, %struct.GPR* %1844, i32 0, i32 15
  %1846 = getelementptr inbounds %struct.Reg, %struct.Reg* %1845, i32 0, i32 0
  %RBP.i181 = bitcast %union.anon* %1846 to i64*
  %1847 = load i64, i64* %RBP.i181
  %1848 = sub i64 %1847, 12
  %1849 = load i64, i64* %PC.i180
  %1850 = add i64 %1849, 7
  store i64 %1850, i64* %PC.i180
  %1851 = inttoptr i64 %1848 to i32*
  store i32 0, i32* %1851
  store %struct.Memory* %loadMem_47bf4c, %struct.Memory** %MEMORY
  br label %block_.L_47bf53

block_.L_47bf53:                                  ; preds = %block_.L_47c07c, %block_.L_47bf4c
  %loadMem_47bf53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1852 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1853 = getelementptr inbounds %struct.GPR, %struct.GPR* %1852, i32 0, i32 33
  %1854 = getelementptr inbounds %struct.Reg, %struct.Reg* %1853, i32 0, i32 0
  %PC.i178 = bitcast %union.anon* %1854 to i64*
  %1855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1856 = getelementptr inbounds %struct.GPR, %struct.GPR* %1855, i32 0, i32 15
  %1857 = getelementptr inbounds %struct.Reg, %struct.Reg* %1856, i32 0, i32 0
  %RBP.i179 = bitcast %union.anon* %1857 to i64*
  %1858 = load i64, i64* %RBP.i179
  %1859 = sub i64 %1858, 12
  %1860 = load i64, i64* %PC.i178
  %1861 = add i64 %1860, 4
  store i64 %1861, i64* %PC.i178
  %1862 = inttoptr i64 %1859 to i32*
  %1863 = load i32, i32* %1862
  %1864 = sub i32 %1863, 13
  %1865 = icmp ult i32 %1863, 13
  %1866 = zext i1 %1865 to i8
  %1867 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1866, i8* %1867, align 1
  %1868 = and i32 %1864, 255
  %1869 = call i32 @llvm.ctpop.i32(i32 %1868)
  %1870 = trunc i32 %1869 to i8
  %1871 = and i8 %1870, 1
  %1872 = xor i8 %1871, 1
  %1873 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1872, i8* %1873, align 1
  %1874 = xor i32 %1863, 13
  %1875 = xor i32 %1874, %1864
  %1876 = lshr i32 %1875, 4
  %1877 = trunc i32 %1876 to i8
  %1878 = and i8 %1877, 1
  %1879 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1878, i8* %1879, align 1
  %1880 = icmp eq i32 %1864, 0
  %1881 = zext i1 %1880 to i8
  %1882 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1881, i8* %1882, align 1
  %1883 = lshr i32 %1864, 31
  %1884 = trunc i32 %1883 to i8
  %1885 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1884, i8* %1885, align 1
  %1886 = lshr i32 %1863, 31
  %1887 = xor i32 %1883, %1886
  %1888 = add i32 %1887, %1886
  %1889 = icmp eq i32 %1888, 2
  %1890 = zext i1 %1889 to i8
  %1891 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1890, i8* %1891, align 1
  store %struct.Memory* %loadMem_47bf53, %struct.Memory** %MEMORY
  %loadMem_47bf57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1893 = getelementptr inbounds %struct.GPR, %struct.GPR* %1892, i32 0, i32 33
  %1894 = getelementptr inbounds %struct.Reg, %struct.Reg* %1893, i32 0, i32 0
  %PC.i177 = bitcast %union.anon* %1894 to i64*
  %1895 = load i64, i64* %PC.i177
  %1896 = add i64 %1895, 307
  %1897 = load i64, i64* %PC.i177
  %1898 = add i64 %1897, 6
  %1899 = load i64, i64* %PC.i177
  %1900 = add i64 %1899, 6
  store i64 %1900, i64* %PC.i177
  %1901 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1902 = load i8, i8* %1901, align 1
  %1903 = icmp ne i8 %1902, 0
  %1904 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1905 = load i8, i8* %1904, align 1
  %1906 = icmp ne i8 %1905, 0
  %1907 = xor i1 %1903, %1906
  %1908 = xor i1 %1907, true
  %1909 = zext i1 %1908 to i8
  store i8 %1909, i8* %BRANCH_TAKEN, align 1
  %1910 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1911 = select i1 %1907, i64 %1898, i64 %1896
  store i64 %1911, i64* %1910, align 8
  store %struct.Memory* %loadMem_47bf57, %struct.Memory** %MEMORY
  %loadBr_47bf57 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47bf57 = icmp eq i8 %loadBr_47bf57, 1
  br i1 %cmpBr_47bf57, label %block_.L_47c08a, label %block_47bf5d

block_47bf5d:                                     ; preds = %block_.L_47bf53
  %loadMem_47bf5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1912 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1913 = getelementptr inbounds %struct.GPR, %struct.GPR* %1912, i32 0, i32 33
  %1914 = getelementptr inbounds %struct.Reg, %struct.Reg* %1913, i32 0, i32 0
  %PC.i174 = bitcast %union.anon* %1914 to i64*
  %1915 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1916 = getelementptr inbounds %struct.GPR, %struct.GPR* %1915, i32 0, i32 1
  %1917 = getelementptr inbounds %struct.Reg, %struct.Reg* %1916, i32 0, i32 0
  %RAX.i175 = bitcast %union.anon* %1917 to i64*
  %1918 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1919 = getelementptr inbounds %struct.GPR, %struct.GPR* %1918, i32 0, i32 15
  %1920 = getelementptr inbounds %struct.Reg, %struct.Reg* %1919, i32 0, i32 0
  %RBP.i176 = bitcast %union.anon* %1920 to i64*
  %1921 = load i64, i64* %RBP.i176
  %1922 = sub i64 %1921, 12
  %1923 = load i64, i64* %PC.i174
  %1924 = add i64 %1923, 3
  store i64 %1924, i64* %PC.i174
  %1925 = inttoptr i64 %1922 to i32*
  %1926 = load i32, i32* %1925
  %1927 = zext i32 %1926 to i64
  store i64 %1927, i64* %RAX.i175, align 8
  store %struct.Memory* %loadMem_47bf5d, %struct.Memory** %MEMORY
  %loadMem_47bf60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1928 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1929 = getelementptr inbounds %struct.GPR, %struct.GPR* %1928, i32 0, i32 33
  %1930 = getelementptr inbounds %struct.Reg, %struct.Reg* %1929, i32 0, i32 0
  %PC.i172 = bitcast %union.anon* %1930 to i64*
  %1931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1932 = getelementptr inbounds %struct.GPR, %struct.GPR* %1931, i32 0, i32 1
  %1933 = getelementptr inbounds %struct.Reg, %struct.Reg* %1932, i32 0, i32 0
  %RAX.i173 = bitcast %union.anon* %1933 to i64*
  %1934 = load i64, i64* %RAX.i173
  %1935 = load i64, i64* %PC.i172
  %1936 = add i64 %1935, 3
  store i64 %1936, i64* %PC.i172
  %1937 = trunc i64 %1934 to i32
  %1938 = add i32 16, %1937
  %1939 = zext i32 %1938 to i64
  store i64 %1939, i64* %RAX.i173, align 8
  %1940 = icmp ult i32 %1938, %1937
  %1941 = icmp ult i32 %1938, 16
  %1942 = or i1 %1940, %1941
  %1943 = zext i1 %1942 to i8
  %1944 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1943, i8* %1944, align 1
  %1945 = and i32 %1938, 255
  %1946 = call i32 @llvm.ctpop.i32(i32 %1945)
  %1947 = trunc i32 %1946 to i8
  %1948 = and i8 %1947, 1
  %1949 = xor i8 %1948, 1
  %1950 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1949, i8* %1950, align 1
  %1951 = xor i64 16, %1934
  %1952 = trunc i64 %1951 to i32
  %1953 = xor i32 %1952, %1938
  %1954 = lshr i32 %1953, 4
  %1955 = trunc i32 %1954 to i8
  %1956 = and i8 %1955, 1
  %1957 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1956, i8* %1957, align 1
  %1958 = icmp eq i32 %1938, 0
  %1959 = zext i1 %1958 to i8
  %1960 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1959, i8* %1960, align 1
  %1961 = lshr i32 %1938, 31
  %1962 = trunc i32 %1961 to i8
  %1963 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1962, i8* %1963, align 1
  %1964 = lshr i32 %1937, 31
  %1965 = xor i32 %1961, %1964
  %1966 = add i32 %1965, %1961
  %1967 = icmp eq i32 %1966, 2
  %1968 = zext i1 %1967 to i8
  %1969 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1968, i8* %1969, align 1
  store %struct.Memory* %loadMem_47bf60, %struct.Memory** %MEMORY
  %loadMem_47bf63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1971 = getelementptr inbounds %struct.GPR, %struct.GPR* %1970, i32 0, i32 33
  %1972 = getelementptr inbounds %struct.Reg, %struct.Reg* %1971, i32 0, i32 0
  %PC.i170 = bitcast %union.anon* %1972 to i64*
  %1973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1974 = getelementptr inbounds %struct.GPR, %struct.GPR* %1973, i32 0, i32 1
  %1975 = getelementptr inbounds %struct.Reg, %struct.Reg* %1974, i32 0, i32 0
  %RAX.i171 = bitcast %union.anon* %1975 to i64*
  %1976 = load i64, i64* %RAX.i171
  %1977 = load i64, i64* %PC.i170
  %1978 = add i64 %1977, 3
  store i64 %1978, i64* %PC.i170
  %1979 = trunc i64 %1976 to i32
  %1980 = sub i32 %1979, 10
  %1981 = zext i32 %1980 to i64
  store i64 %1981, i64* %RAX.i171, align 8
  %1982 = icmp ult i32 %1979, 10
  %1983 = zext i1 %1982 to i8
  %1984 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1983, i8* %1984, align 1
  %1985 = and i32 %1980, 255
  %1986 = call i32 @llvm.ctpop.i32(i32 %1985)
  %1987 = trunc i32 %1986 to i8
  %1988 = and i8 %1987, 1
  %1989 = xor i8 %1988, 1
  %1990 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1989, i8* %1990, align 1
  %1991 = xor i64 10, %1976
  %1992 = trunc i64 %1991 to i32
  %1993 = xor i32 %1992, %1980
  %1994 = lshr i32 %1993, 4
  %1995 = trunc i32 %1994 to i8
  %1996 = and i8 %1995, 1
  %1997 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1996, i8* %1997, align 1
  %1998 = icmp eq i32 %1980, 0
  %1999 = zext i1 %1998 to i8
  %2000 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1999, i8* %2000, align 1
  %2001 = lshr i32 %1980, 31
  %2002 = trunc i32 %2001 to i8
  %2003 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2002, i8* %2003, align 1
  %2004 = lshr i32 %1979, 31
  %2005 = xor i32 %2001, %2004
  %2006 = add i32 %2005, %2004
  %2007 = icmp eq i32 %2006, 2
  %2008 = zext i1 %2007 to i8
  %2009 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2008, i8* %2009, align 1
  store %struct.Memory* %loadMem_47bf63, %struct.Memory** %MEMORY
  %loadMem_47bf66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2011 = getelementptr inbounds %struct.GPR, %struct.GPR* %2010, i32 0, i32 33
  %2012 = getelementptr inbounds %struct.Reg, %struct.Reg* %2011, i32 0, i32 0
  %PC.i167 = bitcast %union.anon* %2012 to i64*
  %2013 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2014 = getelementptr inbounds %struct.GPR, %struct.GPR* %2013, i32 0, i32 1
  %2015 = getelementptr inbounds %struct.Reg, %struct.Reg* %2014, i32 0, i32 0
  %EAX.i168 = bitcast %union.anon* %2015 to i32*
  %2016 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2017 = getelementptr inbounds %struct.GPR, %struct.GPR* %2016, i32 0, i32 15
  %2018 = getelementptr inbounds %struct.Reg, %struct.Reg* %2017, i32 0, i32 0
  %RBP.i169 = bitcast %union.anon* %2018 to i64*
  %2019 = load i64, i64* %RBP.i169
  %2020 = sub i64 %2019, 20
  %2021 = load i32, i32* %EAX.i168
  %2022 = zext i32 %2021 to i64
  %2023 = load i64, i64* %PC.i167
  %2024 = add i64 %2023, 3
  store i64 %2024, i64* %PC.i167
  %2025 = inttoptr i64 %2020 to i32*
  store i32 %2021, i32* %2025
  store %struct.Memory* %loadMem_47bf66, %struct.Memory** %MEMORY
  %loadMem_47bf69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2027 = getelementptr inbounds %struct.GPR, %struct.GPR* %2026, i32 0, i32 33
  %2028 = getelementptr inbounds %struct.Reg, %struct.Reg* %2027, i32 0, i32 0
  %PC.i165 = bitcast %union.anon* %2028 to i64*
  %2029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2030 = getelementptr inbounds %struct.GPR, %struct.GPR* %2029, i32 0, i32 15
  %2031 = getelementptr inbounds %struct.Reg, %struct.Reg* %2030, i32 0, i32 0
  %RBP.i166 = bitcast %union.anon* %2031 to i64*
  %2032 = load i64, i64* %RBP.i166
  %2033 = sub i64 %2032, 8
  %2034 = load i64, i64* %PC.i165
  %2035 = add i64 %2034, 7
  store i64 %2035, i64* %PC.i165
  %2036 = inttoptr i64 %2033 to i32*
  store i32 0, i32* %2036
  store %struct.Memory* %loadMem_47bf69, %struct.Memory** %MEMORY
  br label %block_.L_47bf70

block_.L_47bf70:                                  ; preds = %block_.L_47c069, %block_47bf5d
  %loadMem_47bf70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2037 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2038 = getelementptr inbounds %struct.GPR, %struct.GPR* %2037, i32 0, i32 33
  %2039 = getelementptr inbounds %struct.Reg, %struct.Reg* %2038, i32 0, i32 0
  %PC.i163 = bitcast %union.anon* %2039 to i64*
  %2040 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2041 = getelementptr inbounds %struct.GPR, %struct.GPR* %2040, i32 0, i32 15
  %2042 = getelementptr inbounds %struct.Reg, %struct.Reg* %2041, i32 0, i32 0
  %RBP.i164 = bitcast %union.anon* %2042 to i64*
  %2043 = load i64, i64* %RBP.i164
  %2044 = sub i64 %2043, 8
  %2045 = load i64, i64* %PC.i163
  %2046 = add i64 %2045, 4
  store i64 %2046, i64* %PC.i163
  %2047 = inttoptr i64 %2044 to i32*
  %2048 = load i32, i32* %2047
  %2049 = sub i32 %2048, 8
  %2050 = icmp ult i32 %2048, 8
  %2051 = zext i1 %2050 to i8
  %2052 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2051, i8* %2052, align 1
  %2053 = and i32 %2049, 255
  %2054 = call i32 @llvm.ctpop.i32(i32 %2053)
  %2055 = trunc i32 %2054 to i8
  %2056 = and i8 %2055, 1
  %2057 = xor i8 %2056, 1
  %2058 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2057, i8* %2058, align 1
  %2059 = xor i32 %2048, 8
  %2060 = xor i32 %2059, %2049
  %2061 = lshr i32 %2060, 4
  %2062 = trunc i32 %2061 to i8
  %2063 = and i8 %2062, 1
  %2064 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2063, i8* %2064, align 1
  %2065 = icmp eq i32 %2049, 0
  %2066 = zext i1 %2065 to i8
  %2067 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2066, i8* %2067, align 1
  %2068 = lshr i32 %2049, 31
  %2069 = trunc i32 %2068 to i8
  %2070 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2069, i8* %2070, align 1
  %2071 = lshr i32 %2048, 31
  %2072 = xor i32 %2068, %2071
  %2073 = add i32 %2072, %2071
  %2074 = icmp eq i32 %2073, 2
  %2075 = zext i1 %2074 to i8
  %2076 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2075, i8* %2076, align 1
  store %struct.Memory* %loadMem_47bf70, %struct.Memory** %MEMORY
  %loadMem_47bf74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2078 = getelementptr inbounds %struct.GPR, %struct.GPR* %2077, i32 0, i32 33
  %2079 = getelementptr inbounds %struct.Reg, %struct.Reg* %2078, i32 0, i32 0
  %PC.i162 = bitcast %union.anon* %2079 to i64*
  %2080 = load i64, i64* %PC.i162
  %2081 = add i64 %2080, 259
  %2082 = load i64, i64* %PC.i162
  %2083 = add i64 %2082, 6
  %2084 = load i64, i64* %PC.i162
  %2085 = add i64 %2084, 6
  store i64 %2085, i64* %PC.i162
  %2086 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2087 = load i8, i8* %2086, align 1
  %2088 = icmp ne i8 %2087, 0
  %2089 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2090 = load i8, i8* %2089, align 1
  %2091 = icmp ne i8 %2090, 0
  %2092 = xor i1 %2088, %2091
  %2093 = xor i1 %2092, true
  %2094 = zext i1 %2093 to i8
  store i8 %2094, i8* %BRANCH_TAKEN, align 1
  %2095 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2096 = select i1 %2092, i64 %2083, i64 %2081
  store i64 %2096, i64* %2095, align 8
  store %struct.Memory* %loadMem_47bf74, %struct.Memory** %MEMORY
  %loadBr_47bf74 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47bf74 = icmp eq i8 %loadBr_47bf74, 1
  br i1 %cmpBr_47bf74, label %block_.L_47c077, label %block_47bf7a

block_47bf7a:                                     ; preds = %block_.L_47bf70
  %loadMem_47bf7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2097 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2098 = getelementptr inbounds %struct.GPR, %struct.GPR* %2097, i32 0, i32 33
  %2099 = getelementptr inbounds %struct.Reg, %struct.Reg* %2098, i32 0, i32 0
  %PC.i160 = bitcast %union.anon* %2099 to i64*
  %2100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2101 = getelementptr inbounds %struct.GPR, %struct.GPR* %2100, i32 0, i32 15
  %2102 = getelementptr inbounds %struct.Reg, %struct.Reg* %2101, i32 0, i32 0
  %RBP.i161 = bitcast %union.anon* %2102 to i64*
  %2103 = load i64, i64* %RBP.i161
  %2104 = sub i64 %2103, 4
  %2105 = load i64, i64* %PC.i160
  %2106 = add i64 %2105, 7
  store i64 %2106, i64* %PC.i160
  %2107 = inttoptr i64 %2104 to i32*
  store i32 0, i32* %2107
  store %struct.Memory* %loadMem_47bf7a, %struct.Memory** %MEMORY
  br label %block_.L_47bf81

block_.L_47bf81:                                  ; preds = %routine_shll__cl___edx.exit, %block_47bf7a
  %loadMem_47bf81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2109 = getelementptr inbounds %struct.GPR, %struct.GPR* %2108, i32 0, i32 33
  %2110 = getelementptr inbounds %struct.Reg, %struct.Reg* %2109, i32 0, i32 0
  %PC.i158 = bitcast %union.anon* %2110 to i64*
  %2111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2112 = getelementptr inbounds %struct.GPR, %struct.GPR* %2111, i32 0, i32 15
  %2113 = getelementptr inbounds %struct.Reg, %struct.Reg* %2112, i32 0, i32 0
  %RBP.i159 = bitcast %union.anon* %2113 to i64*
  %2114 = load i64, i64* %RBP.i159
  %2115 = sub i64 %2114, 4
  %2116 = load i64, i64* %PC.i158
  %2117 = add i64 %2116, 4
  store i64 %2117, i64* %PC.i158
  %2118 = inttoptr i64 %2115 to i32*
  %2119 = load i32, i32* %2118
  %2120 = sub i32 %2119, 8
  %2121 = icmp ult i32 %2119, 8
  %2122 = zext i1 %2121 to i8
  %2123 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2122, i8* %2123, align 1
  %2124 = and i32 %2120, 255
  %2125 = call i32 @llvm.ctpop.i32(i32 %2124)
  %2126 = trunc i32 %2125 to i8
  %2127 = and i8 %2126, 1
  %2128 = xor i8 %2127, 1
  %2129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2128, i8* %2129, align 1
  %2130 = xor i32 %2119, 8
  %2131 = xor i32 %2130, %2120
  %2132 = lshr i32 %2131, 4
  %2133 = trunc i32 %2132 to i8
  %2134 = and i8 %2133, 1
  %2135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2134, i8* %2135, align 1
  %2136 = icmp eq i32 %2120, 0
  %2137 = zext i1 %2136 to i8
  %2138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2137, i8* %2138, align 1
  %2139 = lshr i32 %2120, 31
  %2140 = trunc i32 %2139 to i8
  %2141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2140, i8* %2141, align 1
  %2142 = lshr i32 %2119, 31
  %2143 = xor i32 %2139, %2142
  %2144 = add i32 %2143, %2142
  %2145 = icmp eq i32 %2144, 2
  %2146 = zext i1 %2145 to i8
  %2147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2146, i8* %2147, align 1
  store %struct.Memory* %loadMem_47bf81, %struct.Memory** %MEMORY
  %loadMem_47bf85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2149 = getelementptr inbounds %struct.GPR, %struct.GPR* %2148, i32 0, i32 33
  %2150 = getelementptr inbounds %struct.Reg, %struct.Reg* %2149, i32 0, i32 0
  %PC.i157 = bitcast %union.anon* %2150 to i64*
  %2151 = load i64, i64* %PC.i157
  %2152 = add i64 %2151, 223
  %2153 = load i64, i64* %PC.i157
  %2154 = add i64 %2153, 6
  %2155 = load i64, i64* %PC.i157
  %2156 = add i64 %2155, 6
  store i64 %2156, i64* %PC.i157
  %2157 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2158 = load i8, i8* %2157, align 1
  %2159 = icmp ne i8 %2158, 0
  %2160 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2161 = load i8, i8* %2160, align 1
  %2162 = icmp ne i8 %2161, 0
  %2163 = xor i1 %2159, %2162
  %2164 = xor i1 %2163, true
  %2165 = zext i1 %2164 to i8
  store i8 %2165, i8* %BRANCH_TAKEN, align 1
  %2166 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2167 = select i1 %2163, i64 %2154, i64 %2152
  store i64 %2167, i64* %2166, align 8
  store %struct.Memory* %loadMem_47bf85, %struct.Memory** %MEMORY
  %loadBr_47bf85 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47bf85 = icmp eq i8 %loadBr_47bf85, 1
  br i1 %cmpBr_47bf85, label %block_.L_47c064, label %block_47bf8b

block_47bf8b:                                     ; preds = %block_.L_47bf81
  %loadMem_47bf8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2169 = getelementptr inbounds %struct.GPR, %struct.GPR* %2168, i32 0, i32 33
  %2170 = getelementptr inbounds %struct.Reg, %struct.Reg* %2169, i32 0, i32 0
  %PC.i154 = bitcast %union.anon* %2170 to i64*
  %2171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2172 = getelementptr inbounds %struct.GPR, %struct.GPR* %2171, i32 0, i32 1
  %2173 = getelementptr inbounds %struct.Reg, %struct.Reg* %2172, i32 0, i32 0
  %RAX.i155 = bitcast %union.anon* %2173 to i64*
  %2174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2175 = getelementptr inbounds %struct.GPR, %struct.GPR* %2174, i32 0, i32 15
  %2176 = getelementptr inbounds %struct.Reg, %struct.Reg* %2175, i32 0, i32 0
  %RBP.i156 = bitcast %union.anon* %2176 to i64*
  %2177 = load i64, i64* %RBP.i156
  %2178 = sub i64 %2177, 4
  %2179 = load i64, i64* %PC.i154
  %2180 = add i64 %2179, 3
  store i64 %2180, i64* %PC.i154
  %2181 = inttoptr i64 %2178 to i32*
  %2182 = load i32, i32* %2181
  %2183 = zext i32 %2182 to i64
  store i64 %2183, i64* %RAX.i155, align 8
  store %struct.Memory* %loadMem_47bf8b, %struct.Memory** %MEMORY
  %loadMem_47bf8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2185 = getelementptr inbounds %struct.GPR, %struct.GPR* %2184, i32 0, i32 33
  %2186 = getelementptr inbounds %struct.Reg, %struct.Reg* %2185, i32 0, i32 0
  %PC.i152 = bitcast %union.anon* %2186 to i64*
  %2187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2188 = getelementptr inbounds %struct.GPR, %struct.GPR* %2187, i32 0, i32 1
  %2189 = getelementptr inbounds %struct.Reg, %struct.Reg* %2188, i32 0, i32 0
  %RAX.i153 = bitcast %union.anon* %2189 to i64*
  %2190 = load i64, i64* %RAX.i153
  %2191 = load i64, i64* %PC.i152
  %2192 = add i64 %2191, 3
  store i64 %2192, i64* %PC.i152
  %2193 = and i64 %2190, 4294967295
  %2194 = shl i64 %2193, 2
  %2195 = trunc i64 %2194 to i32
  %2196 = icmp slt i32 %2195, 0
  %2197 = shl i32 %2195, 1
  %2198 = zext i32 %2197 to i64
  store i64 %2198, i64* %RAX.i153, align 8
  %2199 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2200 = zext i1 %2196 to i8
  store i8 %2200, i8* %2199, align 1
  %2201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2202 = and i32 %2197, 254
  %2203 = call i32 @llvm.ctpop.i32(i32 %2202)
  %2204 = trunc i32 %2203 to i8
  %2205 = and i8 %2204, 1
  %2206 = xor i8 %2205, 1
  store i8 %2206, i8* %2201, align 1
  %2207 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2207, align 1
  %2208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2209 = icmp eq i32 %2197, 0
  %2210 = zext i1 %2209 to i8
  store i8 %2210, i8* %2208, align 1
  %2211 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2212 = lshr i32 %2197, 31
  %2213 = trunc i32 %2212 to i8
  store i8 %2213, i8* %2211, align 1
  %2214 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2214, align 1
  store %struct.Memory* %loadMem_47bf8e, %struct.Memory** %MEMORY
  %loadMem_47bf91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2216 = getelementptr inbounds %struct.GPR, %struct.GPR* %2215, i32 0, i32 33
  %2217 = getelementptr inbounds %struct.Reg, %struct.Reg* %2216, i32 0, i32 0
  %PC.i149 = bitcast %union.anon* %2217 to i64*
  %2218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2219 = getelementptr inbounds %struct.GPR, %struct.GPR* %2218, i32 0, i32 1
  %2220 = getelementptr inbounds %struct.Reg, %struct.Reg* %2219, i32 0, i32 0
  %RAX.i150 = bitcast %union.anon* %2220 to i64*
  %2221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2222 = getelementptr inbounds %struct.GPR, %struct.GPR* %2221, i32 0, i32 15
  %2223 = getelementptr inbounds %struct.Reg, %struct.Reg* %2222, i32 0, i32 0
  %RBP.i151 = bitcast %union.anon* %2223 to i64*
  %2224 = load i64, i64* %RAX.i150
  %2225 = load i64, i64* %RBP.i151
  %2226 = sub i64 %2225, 8
  %2227 = load i64, i64* %PC.i149
  %2228 = add i64 %2227, 3
  store i64 %2228, i64* %PC.i149
  %2229 = trunc i64 %2224 to i32
  %2230 = inttoptr i64 %2226 to i32*
  %2231 = load i32, i32* %2230
  %2232 = add i32 %2231, %2229
  %2233 = zext i32 %2232 to i64
  store i64 %2233, i64* %RAX.i150, align 8
  %2234 = icmp ult i32 %2232, %2229
  %2235 = icmp ult i32 %2232, %2231
  %2236 = or i1 %2234, %2235
  %2237 = zext i1 %2236 to i8
  %2238 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2237, i8* %2238, align 1
  %2239 = and i32 %2232, 255
  %2240 = call i32 @llvm.ctpop.i32(i32 %2239)
  %2241 = trunc i32 %2240 to i8
  %2242 = and i8 %2241, 1
  %2243 = xor i8 %2242, 1
  %2244 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2243, i8* %2244, align 1
  %2245 = xor i32 %2231, %2229
  %2246 = xor i32 %2245, %2232
  %2247 = lshr i32 %2246, 4
  %2248 = trunc i32 %2247 to i8
  %2249 = and i8 %2248, 1
  %2250 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2249, i8* %2250, align 1
  %2251 = icmp eq i32 %2232, 0
  %2252 = zext i1 %2251 to i8
  %2253 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2252, i8* %2253, align 1
  %2254 = lshr i32 %2232, 31
  %2255 = trunc i32 %2254 to i8
  %2256 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2255, i8* %2256, align 1
  %2257 = lshr i32 %2229, 31
  %2258 = lshr i32 %2231, 31
  %2259 = xor i32 %2254, %2257
  %2260 = xor i32 %2254, %2258
  %2261 = add i32 %2259, %2260
  %2262 = icmp eq i32 %2261, 2
  %2263 = zext i1 %2262 to i8
  %2264 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2263, i8* %2264, align 1
  store %struct.Memory* %loadMem_47bf91, %struct.Memory** %MEMORY
  %loadMem_47bf94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2266 = getelementptr inbounds %struct.GPR, %struct.GPR* %2265, i32 0, i32 33
  %2267 = getelementptr inbounds %struct.Reg, %struct.Reg* %2266, i32 0, i32 0
  %PC.i146 = bitcast %union.anon* %2267 to i64*
  %2268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2269 = getelementptr inbounds %struct.GPR, %struct.GPR* %2268, i32 0, i32 1
  %2270 = getelementptr inbounds %struct.Reg, %struct.Reg* %2269, i32 0, i32 0
  %EAX.i147 = bitcast %union.anon* %2270 to i32*
  %2271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2272 = getelementptr inbounds %struct.GPR, %struct.GPR* %2271, i32 0, i32 15
  %2273 = getelementptr inbounds %struct.Reg, %struct.Reg* %2272, i32 0, i32 0
  %RBP.i148 = bitcast %union.anon* %2273 to i64*
  %2274 = load i64, i64* %RBP.i148
  %2275 = sub i64 %2274, 16
  %2276 = load i32, i32* %EAX.i147
  %2277 = zext i32 %2276 to i64
  %2278 = load i64, i64* %PC.i146
  %2279 = add i64 %2278, 3
  store i64 %2279, i64* %PC.i146
  %2280 = inttoptr i64 %2275 to i32*
  store i32 %2276, i32* %2280
  store %struct.Memory* %loadMem_47bf94, %struct.Memory** %MEMORY
  %loadMem_47bf97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2282 = getelementptr inbounds %struct.GPR, %struct.GPR* %2281, i32 0, i32 33
  %2283 = getelementptr inbounds %struct.Reg, %struct.Reg* %2282, i32 0, i32 0
  %PC.i144 = bitcast %union.anon* %2283 to i64*
  %2284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2285 = getelementptr inbounds %struct.GPR, %struct.GPR* %2284, i32 0, i32 5
  %2286 = getelementptr inbounds %struct.Reg, %struct.Reg* %2285, i32 0, i32 0
  %RCX.i145 = bitcast %union.anon* %2286 to i64*
  %2287 = load i64, i64* %PC.i144
  %2288 = add i64 %2287, 8
  store i64 %2288, i64* %PC.i144
  %2289 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %2289, i64* %RCX.i145, align 8
  store %struct.Memory* %loadMem_47bf97, %struct.Memory** %MEMORY
  %loadMem_47bf9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2291 = getelementptr inbounds %struct.GPR, %struct.GPR* %2290, i32 0, i32 33
  %2292 = getelementptr inbounds %struct.Reg, %struct.Reg* %2291, i32 0, i32 0
  %PC.i142 = bitcast %union.anon* %2292 to i64*
  %2293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2294 = getelementptr inbounds %struct.GPR, %struct.GPR* %2293, i32 0, i32 5
  %2295 = getelementptr inbounds %struct.Reg, %struct.Reg* %2294, i32 0, i32 0
  %RCX.i143 = bitcast %union.anon* %2295 to i64*
  %2296 = load i64, i64* %RCX.i143
  %2297 = add i64 %2296, 24
  %2298 = load i64, i64* %PC.i142
  %2299 = add i64 %2298, 4
  store i64 %2299, i64* %PC.i142
  %2300 = inttoptr i64 %2297 to i32*
  %2301 = load i32, i32* %2300
  %2302 = sub i32 %2301, 2
  %2303 = icmp ult i32 %2301, 2
  %2304 = zext i1 %2303 to i8
  %2305 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2304, i8* %2305, align 1
  %2306 = and i32 %2302, 255
  %2307 = call i32 @llvm.ctpop.i32(i32 %2306)
  %2308 = trunc i32 %2307 to i8
  %2309 = and i8 %2308, 1
  %2310 = xor i8 %2309, 1
  %2311 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2310, i8* %2311, align 1
  %2312 = xor i32 %2301, 2
  %2313 = xor i32 %2312, %2302
  %2314 = lshr i32 %2313, 4
  %2315 = trunc i32 %2314 to i8
  %2316 = and i8 %2315, 1
  %2317 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2316, i8* %2317, align 1
  %2318 = icmp eq i32 %2302, 0
  %2319 = zext i1 %2318 to i8
  %2320 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2319, i8* %2320, align 1
  %2321 = lshr i32 %2302, 31
  %2322 = trunc i32 %2321 to i8
  %2323 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2322, i8* %2323, align 1
  %2324 = lshr i32 %2301, 31
  %2325 = xor i32 %2321, %2324
  %2326 = add i32 %2325, %2324
  %2327 = icmp eq i32 %2326, 2
  %2328 = zext i1 %2327 to i8
  %2329 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2328, i8* %2329, align 1
  store %struct.Memory* %loadMem_47bf9f, %struct.Memory** %MEMORY
  %loadMem_47bfa3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2331 = getelementptr inbounds %struct.GPR, %struct.GPR* %2330, i32 0, i32 33
  %2332 = getelementptr inbounds %struct.Reg, %struct.Reg* %2331, i32 0, i32 0
  %PC.i141 = bitcast %union.anon* %2332 to i64*
  %2333 = load i64, i64* %PC.i141
  %2334 = add i64 %2333, 67
  %2335 = load i64, i64* %PC.i141
  %2336 = add i64 %2335, 6
  %2337 = load i64, i64* %PC.i141
  %2338 = add i64 %2337, 6
  store i64 %2338, i64* %PC.i141
  %2339 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2340 = load i8, i8* %2339, align 1
  %2341 = icmp eq i8 %2340, 0
  %2342 = zext i1 %2341 to i8
  store i8 %2342, i8* %BRANCH_TAKEN, align 1
  %2343 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2344 = select i1 %2341, i64 %2334, i64 %2336
  store i64 %2344, i64* %2343, align 8
  store %struct.Memory* %loadMem_47bfa3, %struct.Memory** %MEMORY
  %loadBr_47bfa3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47bfa3 = icmp eq i8 %loadBr_47bfa3, 1
  br i1 %cmpBr_47bfa3, label %block_.L_47bfe6, label %block_47bfa9

block_47bfa9:                                     ; preds = %block_47bf8b
  %loadMem_47bfa9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2346 = getelementptr inbounds %struct.GPR, %struct.GPR* %2345, i32 0, i32 33
  %2347 = getelementptr inbounds %struct.Reg, %struct.Reg* %2346, i32 0, i32 0
  %PC.i139 = bitcast %union.anon* %2347 to i64*
  %2348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2349 = getelementptr inbounds %struct.GPR, %struct.GPR* %2348, i32 0, i32 1
  %2350 = getelementptr inbounds %struct.Reg, %struct.Reg* %2349, i32 0, i32 0
  %RAX.i140 = bitcast %union.anon* %2350 to i64*
  %2351 = load i64, i64* %PC.i139
  %2352 = add i64 %2351, 10
  store i64 %2352, i64* %PC.i139
  store i64 7156720, i64* %RAX.i140, align 8
  store %struct.Memory* %loadMem_47bfa9, %struct.Memory** %MEMORY
  %loadMem_47bfb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2354 = getelementptr inbounds %struct.GPR, %struct.GPR* %2353, i32 0, i32 33
  %2355 = getelementptr inbounds %struct.Reg, %struct.Reg* %2354, i32 0, i32 0
  %PC.i136 = bitcast %union.anon* %2355 to i64*
  %2356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2357 = getelementptr inbounds %struct.GPR, %struct.GPR* %2356, i32 0, i32 5
  %2358 = getelementptr inbounds %struct.Reg, %struct.Reg* %2357, i32 0, i32 0
  %RCX.i137 = bitcast %union.anon* %2358 to i64*
  %2359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2360 = getelementptr inbounds %struct.GPR, %struct.GPR* %2359, i32 0, i32 15
  %2361 = getelementptr inbounds %struct.Reg, %struct.Reg* %2360, i32 0, i32 0
  %RBP.i138 = bitcast %union.anon* %2361 to i64*
  %2362 = load i64, i64* %RBP.i138
  %2363 = sub i64 %2362, 16
  %2364 = load i64, i64* %PC.i136
  %2365 = add i64 %2364, 4
  store i64 %2365, i64* %PC.i136
  %2366 = inttoptr i64 %2363 to i32*
  %2367 = load i32, i32* %2366
  %2368 = sext i32 %2367 to i64
  store i64 %2368, i64* %RCX.i137, align 8
  store %struct.Memory* %loadMem_47bfb3, %struct.Memory** %MEMORY
  %loadMem_47bfb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2370 = getelementptr inbounds %struct.GPR, %struct.GPR* %2369, i32 0, i32 33
  %2371 = getelementptr inbounds %struct.Reg, %struct.Reg* %2370, i32 0, i32 0
  %PC.i133 = bitcast %union.anon* %2371 to i64*
  %2372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2373 = getelementptr inbounds %struct.GPR, %struct.GPR* %2372, i32 0, i32 5
  %2374 = getelementptr inbounds %struct.Reg, %struct.Reg* %2373, i32 0, i32 0
  %RCX.i134 = bitcast %union.anon* %2374 to i64*
  %2375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2376 = getelementptr inbounds %struct.GPR, %struct.GPR* %2375, i32 0, i32 7
  %2377 = getelementptr inbounds %struct.Reg, %struct.Reg* %2376, i32 0, i32 0
  %RDX.i135 = bitcast %union.anon* %2377 to i64*
  %2378 = load i64, i64* %RCX.i134
  %2379 = mul i64 %2378, 2
  %2380 = add i64 %2379, 4953360
  %2381 = load i64, i64* %PC.i133
  %2382 = add i64 %2381, 8
  store i64 %2382, i64* %PC.i133
  %2383 = inttoptr i64 %2380 to i16*
  %2384 = load i16, i16* %2383
  %2385 = sext i16 %2384 to i64
  %2386 = and i64 %2385, 4294967295
  store i64 %2386, i64* %RDX.i135, align 8
  store %struct.Memory* %loadMem_47bfb7, %struct.Memory** %MEMORY
  %loadMem_47bfbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %2387 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2388 = getelementptr inbounds %struct.GPR, %struct.GPR* %2387, i32 0, i32 33
  %2389 = getelementptr inbounds %struct.Reg, %struct.Reg* %2388, i32 0, i32 0
  %PC.i130 = bitcast %union.anon* %2389 to i64*
  %2390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2391 = getelementptr inbounds %struct.GPR, %struct.GPR* %2390, i32 0, i32 5
  %2392 = getelementptr inbounds %struct.Reg, %struct.Reg* %2391, i32 0, i32 0
  %RCX.i131 = bitcast %union.anon* %2392 to i64*
  %2393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2394 = getelementptr inbounds %struct.GPR, %struct.GPR* %2393, i32 0, i32 15
  %2395 = getelementptr inbounds %struct.Reg, %struct.Reg* %2394, i32 0, i32 0
  %RBP.i132 = bitcast %union.anon* %2395 to i64*
  %2396 = load i64, i64* %RBP.i132
  %2397 = sub i64 %2396, 20
  %2398 = load i64, i64* %PC.i130
  %2399 = add i64 %2398, 3
  store i64 %2399, i64* %PC.i130
  %2400 = inttoptr i64 %2397 to i32*
  %2401 = load i32, i32* %2400
  %2402 = zext i32 %2401 to i64
  store i64 %2402, i64* %RCX.i131, align 8
  store %struct.Memory* %loadMem_47bfbf, %struct.Memory** %MEMORY
  %loadMem_47bfc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2404 = getelementptr inbounds %struct.GPR, %struct.GPR* %2403, i32 0, i32 33
  %2405 = getelementptr inbounds %struct.Reg, %struct.Reg* %2404, i32 0, i32 0
  %PC.i126 = bitcast %union.anon* %2405 to i64*
  %2406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2407 = getelementptr inbounds %struct.GPR, %struct.GPR* %2406, i32 0, i32 5
  %2408 = getelementptr inbounds %struct.Reg, %struct.Reg* %2407, i32 0, i32 0
  %2409 = bitcast %union.anon* %2408 to %struct.anon.2*
  %CL.i127 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2409, i32 0, i32 0
  %2410 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2411 = getelementptr inbounds %struct.GPR, %struct.GPR* %2410, i32 0, i32 7
  %2412 = getelementptr inbounds %struct.Reg, %struct.Reg* %2411, i32 0, i32 0
  %RDX.i128 = bitcast %union.anon* %2412 to i64*
  %2413 = load i64, i64* %RDX.i128
  %2414 = load i8, i8* %CL.i127
  %2415 = zext i8 %2414 to i64
  %2416 = load i64, i64* %PC.i126
  %2417 = add i64 %2416, 2
  store i64 %2417, i64* %PC.i126
  %2418 = trunc i64 %2415 to i5
  switch i5 %2418, label %2425 [
    i5 0, label %routine_shll__cl___edx.exit129
    i5 1, label %2419
  ]

; <label>:2419:                                   ; preds = %block_47bfa9
  %2420 = trunc i64 %2413 to i32
  %2421 = shl i32 %2420, 1
  %2422 = icmp slt i32 %2420, 0
  %2423 = icmp slt i32 %2421, 0
  %2424 = xor i1 %2422, %2423
  br label %2434

; <label>:2425:                                   ; preds = %block_47bfa9
  %2426 = and i64 %2415, 31
  %2427 = add i64 %2426, 4294967295
  %2428 = and i64 %2413, 4294967295
  %2429 = and i64 %2427, 4294967295
  %2430 = shl i64 %2428, %2429
  %2431 = trunc i64 %2430 to i32
  %2432 = icmp slt i32 %2431, 0
  %2433 = shl i32 %2431, 1
  br label %2434

; <label>:2434:                                   ; preds = %2425, %2419
  %2435 = phi i1 [ %2422, %2419 ], [ %2432, %2425 ]
  %2436 = phi i1 [ %2424, %2419 ], [ false, %2425 ]
  %2437 = phi i32 [ %2421, %2419 ], [ %2433, %2425 ]
  %2438 = zext i32 %2437 to i64
  store i64 %2438, i64* %RDX.i128, align 8
  %2439 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2440 = zext i1 %2435 to i8
  store i8 %2440, i8* %2439, align 1
  %2441 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2442 = and i32 %2437, 254
  %2443 = call i32 @llvm.ctpop.i32(i32 %2442)
  %2444 = trunc i32 %2443 to i8
  %2445 = and i8 %2444, 1
  %2446 = xor i8 %2445, 1
  store i8 %2446, i8* %2441, align 1
  %2447 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2447, align 1
  %2448 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2449 = icmp eq i32 %2437, 0
  %2450 = zext i1 %2449 to i8
  store i8 %2450, i8* %2448, align 1
  %2451 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2452 = lshr i32 %2437, 31
  %2453 = trunc i32 %2452 to i8
  store i8 %2453, i8* %2451, align 1
  %2454 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2455 = zext i1 %2436 to i8
  store i8 %2455, i8* %2454, align 1
  br label %routine_shll__cl___edx.exit129

routine_shll__cl___edx.exit129:                   ; preds = %block_47bfa9, %2434
  store %struct.Memory* %loadMem_47bfc2, %struct.Memory** %MEMORY
  %loadMem_47bfc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2457 = getelementptr inbounds %struct.GPR, %struct.GPR* %2456, i32 0, i32 33
  %2458 = getelementptr inbounds %struct.Reg, %struct.Reg* %2457, i32 0, i32 0
  %PC.i123 = bitcast %union.anon* %2458 to i64*
  %2459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2460 = getelementptr inbounds %struct.GPR, %struct.GPR* %2459, i32 0, i32 9
  %2461 = getelementptr inbounds %struct.Reg, %struct.Reg* %2460, i32 0, i32 0
  %RSI.i124 = bitcast %union.anon* %2461 to i64*
  %2462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2463 = getelementptr inbounds %struct.GPR, %struct.GPR* %2462, i32 0, i32 15
  %2464 = getelementptr inbounds %struct.Reg, %struct.Reg* %2463, i32 0, i32 0
  %RBP.i125 = bitcast %union.anon* %2464 to i64*
  %2465 = load i64, i64* %RBP.i125
  %2466 = sub i64 %2465, 12
  %2467 = load i64, i64* %PC.i123
  %2468 = add i64 %2467, 4
  store i64 %2468, i64* %PC.i123
  %2469 = inttoptr i64 %2466 to i32*
  %2470 = load i32, i32* %2469
  %2471 = sext i32 %2470 to i64
  store i64 %2471, i64* %RSI.i124, align 8
  store %struct.Memory* %loadMem_47bfc4, %struct.Memory** %MEMORY
  %loadMem_47bfc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2473 = getelementptr inbounds %struct.GPR, %struct.GPR* %2472, i32 0, i32 33
  %2474 = getelementptr inbounds %struct.Reg, %struct.Reg* %2473, i32 0, i32 0
  %PC.i121 = bitcast %union.anon* %2474 to i64*
  %2475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2476 = getelementptr inbounds %struct.GPR, %struct.GPR* %2475, i32 0, i32 9
  %2477 = getelementptr inbounds %struct.Reg, %struct.Reg* %2476, i32 0, i32 0
  %RSI.i122 = bitcast %union.anon* %2477 to i64*
  %2478 = load i64, i64* %RSI.i122
  %2479 = load i64, i64* %PC.i121
  %2480 = add i64 %2479, 4
  store i64 %2480, i64* %PC.i121
  %2481 = shl i64 %2478, 7
  %2482 = icmp slt i64 %2481, 0
  %2483 = shl i64 %2481, 1
  store i64 %2483, i64* %RSI.i122, align 8
  %2484 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2485 = zext i1 %2482 to i8
  store i8 %2485, i8* %2484, align 1
  %2486 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2487 = trunc i64 %2483 to i32
  store i8 1, i8* %2486, align 1
  %2488 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2488, align 1
  %2489 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2490 = icmp eq i64 %2483, 0
  %2491 = zext i1 %2490 to i8
  store i8 %2491, i8* %2489, align 1
  %2492 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2493 = lshr i64 %2483, 63
  %2494 = trunc i64 %2493 to i8
  store i8 %2494, i8* %2492, align 1
  %2495 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2495, align 1
  store %struct.Memory* %loadMem_47bfc8, %struct.Memory** %MEMORY
  %loadMem_47bfcc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2497 = getelementptr inbounds %struct.GPR, %struct.GPR* %2496, i32 0, i32 33
  %2498 = getelementptr inbounds %struct.Reg, %struct.Reg* %2497, i32 0, i32 0
  %PC.i118 = bitcast %union.anon* %2498 to i64*
  %2499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2500 = getelementptr inbounds %struct.GPR, %struct.GPR* %2499, i32 0, i32 1
  %2501 = getelementptr inbounds %struct.Reg, %struct.Reg* %2500, i32 0, i32 0
  %RAX.i119 = bitcast %union.anon* %2501 to i64*
  %2502 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2503 = getelementptr inbounds %struct.GPR, %struct.GPR* %2502, i32 0, i32 9
  %2504 = getelementptr inbounds %struct.Reg, %struct.Reg* %2503, i32 0, i32 0
  %RSI.i120 = bitcast %union.anon* %2504 to i64*
  %2505 = load i64, i64* %RAX.i119
  %2506 = load i64, i64* %RSI.i120
  %2507 = load i64, i64* %PC.i118
  %2508 = add i64 %2507, 3
  store i64 %2508, i64* %PC.i118
  %2509 = add i64 %2506, %2505
  store i64 %2509, i64* %RAX.i119, align 8
  %2510 = icmp ult i64 %2509, %2505
  %2511 = icmp ult i64 %2509, %2506
  %2512 = or i1 %2510, %2511
  %2513 = zext i1 %2512 to i8
  %2514 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2513, i8* %2514, align 1
  %2515 = trunc i64 %2509 to i32
  %2516 = and i32 %2515, 255
  %2517 = call i32 @llvm.ctpop.i32(i32 %2516)
  %2518 = trunc i32 %2517 to i8
  %2519 = and i8 %2518, 1
  %2520 = xor i8 %2519, 1
  %2521 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2520, i8* %2521, align 1
  %2522 = xor i64 %2506, %2505
  %2523 = xor i64 %2522, %2509
  %2524 = lshr i64 %2523, 4
  %2525 = trunc i64 %2524 to i8
  %2526 = and i8 %2525, 1
  %2527 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2526, i8* %2527, align 1
  %2528 = icmp eq i64 %2509, 0
  %2529 = zext i1 %2528 to i8
  %2530 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2529, i8* %2530, align 1
  %2531 = lshr i64 %2509, 63
  %2532 = trunc i64 %2531 to i8
  %2533 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2532, i8* %2533, align 1
  %2534 = lshr i64 %2505, 63
  %2535 = lshr i64 %2506, 63
  %2536 = xor i64 %2531, %2534
  %2537 = xor i64 %2531, %2535
  %2538 = add i64 %2536, %2537
  %2539 = icmp eq i64 %2538, 2
  %2540 = zext i1 %2539 to i8
  %2541 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2540, i8* %2541, align 1
  store %struct.Memory* %loadMem_47bfcc, %struct.Memory** %MEMORY
  %loadMem_47bfcf = load %struct.Memory*, %struct.Memory** %MEMORY
  %2542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2543 = getelementptr inbounds %struct.GPR, %struct.GPR* %2542, i32 0, i32 33
  %2544 = getelementptr inbounds %struct.Reg, %struct.Reg* %2543, i32 0, i32 0
  %PC.i115 = bitcast %union.anon* %2544 to i64*
  %2545 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2546 = getelementptr inbounds %struct.GPR, %struct.GPR* %2545, i32 0, i32 9
  %2547 = getelementptr inbounds %struct.Reg, %struct.Reg* %2546, i32 0, i32 0
  %RSI.i116 = bitcast %union.anon* %2547 to i64*
  %2548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2549 = getelementptr inbounds %struct.GPR, %struct.GPR* %2548, i32 0, i32 15
  %2550 = getelementptr inbounds %struct.Reg, %struct.Reg* %2549, i32 0, i32 0
  %RBP.i117 = bitcast %union.anon* %2550 to i64*
  %2551 = load i64, i64* %RBP.i117
  %2552 = sub i64 %2551, 8
  %2553 = load i64, i64* %PC.i115
  %2554 = add i64 %2553, 4
  store i64 %2554, i64* %PC.i115
  %2555 = inttoptr i64 %2552 to i32*
  %2556 = load i32, i32* %2555
  %2557 = sext i32 %2556 to i64
  store i64 %2557, i64* %RSI.i116, align 8
  store %struct.Memory* %loadMem_47bfcf, %struct.Memory** %MEMORY
  %loadMem_47bfd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2559 = getelementptr inbounds %struct.GPR, %struct.GPR* %2558, i32 0, i32 33
  %2560 = getelementptr inbounds %struct.Reg, %struct.Reg* %2559, i32 0, i32 0
  %PC.i113 = bitcast %union.anon* %2560 to i64*
  %2561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2562 = getelementptr inbounds %struct.GPR, %struct.GPR* %2561, i32 0, i32 9
  %2563 = getelementptr inbounds %struct.Reg, %struct.Reg* %2562, i32 0, i32 0
  %RSI.i114 = bitcast %union.anon* %2563 to i64*
  %2564 = load i64, i64* %RSI.i114
  %2565 = load i64, i64* %PC.i113
  %2566 = add i64 %2565, 4
  store i64 %2566, i64* %PC.i113
  %2567 = shl i64 %2564, 4
  %2568 = icmp slt i64 %2567, 0
  %2569 = shl i64 %2567, 1
  store i64 %2569, i64* %RSI.i114, align 8
  %2570 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2571 = zext i1 %2568 to i8
  store i8 %2571, i8* %2570, align 1
  %2572 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2573 = trunc i64 %2569 to i32
  %2574 = and i32 %2573, 254
  %2575 = call i32 @llvm.ctpop.i32(i32 %2574)
  %2576 = trunc i32 %2575 to i8
  %2577 = and i8 %2576, 1
  %2578 = xor i8 %2577, 1
  store i8 %2578, i8* %2572, align 1
  %2579 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2579, align 1
  %2580 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2581 = icmp eq i64 %2569, 0
  %2582 = zext i1 %2581 to i8
  store i8 %2582, i8* %2580, align 1
  %2583 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2584 = lshr i64 %2569, 63
  %2585 = trunc i64 %2584 to i8
  store i8 %2585, i8* %2583, align 1
  %2586 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2586, align 1
  store %struct.Memory* %loadMem_47bfd3, %struct.Memory** %MEMORY
  %loadMem_47bfd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2587 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2588 = getelementptr inbounds %struct.GPR, %struct.GPR* %2587, i32 0, i32 33
  %2589 = getelementptr inbounds %struct.Reg, %struct.Reg* %2588, i32 0, i32 0
  %PC.i110 = bitcast %union.anon* %2589 to i64*
  %2590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2591 = getelementptr inbounds %struct.GPR, %struct.GPR* %2590, i32 0, i32 1
  %2592 = getelementptr inbounds %struct.Reg, %struct.Reg* %2591, i32 0, i32 0
  %RAX.i111 = bitcast %union.anon* %2592 to i64*
  %2593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2594 = getelementptr inbounds %struct.GPR, %struct.GPR* %2593, i32 0, i32 9
  %2595 = getelementptr inbounds %struct.Reg, %struct.Reg* %2594, i32 0, i32 0
  %RSI.i112 = bitcast %union.anon* %2595 to i64*
  %2596 = load i64, i64* %RAX.i111
  %2597 = load i64, i64* %RSI.i112
  %2598 = load i64, i64* %PC.i110
  %2599 = add i64 %2598, 3
  store i64 %2599, i64* %PC.i110
  %2600 = add i64 %2597, %2596
  store i64 %2600, i64* %RAX.i111, align 8
  %2601 = icmp ult i64 %2600, %2596
  %2602 = icmp ult i64 %2600, %2597
  %2603 = or i1 %2601, %2602
  %2604 = zext i1 %2603 to i8
  %2605 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2604, i8* %2605, align 1
  %2606 = trunc i64 %2600 to i32
  %2607 = and i32 %2606, 255
  %2608 = call i32 @llvm.ctpop.i32(i32 %2607)
  %2609 = trunc i32 %2608 to i8
  %2610 = and i8 %2609, 1
  %2611 = xor i8 %2610, 1
  %2612 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2611, i8* %2612, align 1
  %2613 = xor i64 %2597, %2596
  %2614 = xor i64 %2613, %2600
  %2615 = lshr i64 %2614, 4
  %2616 = trunc i64 %2615 to i8
  %2617 = and i8 %2616, 1
  %2618 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2617, i8* %2618, align 1
  %2619 = icmp eq i64 %2600, 0
  %2620 = zext i1 %2619 to i8
  %2621 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2620, i8* %2621, align 1
  %2622 = lshr i64 %2600, 63
  %2623 = trunc i64 %2622 to i8
  %2624 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2623, i8* %2624, align 1
  %2625 = lshr i64 %2596, 63
  %2626 = lshr i64 %2597, 63
  %2627 = xor i64 %2622, %2625
  %2628 = xor i64 %2622, %2626
  %2629 = add i64 %2627, %2628
  %2630 = icmp eq i64 %2629, 2
  %2631 = zext i1 %2630 to i8
  %2632 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2631, i8* %2632, align 1
  store %struct.Memory* %loadMem_47bfd7, %struct.Memory** %MEMORY
  %loadMem_47bfda = load %struct.Memory*, %struct.Memory** %MEMORY
  %2633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2634 = getelementptr inbounds %struct.GPR, %struct.GPR* %2633, i32 0, i32 33
  %2635 = getelementptr inbounds %struct.Reg, %struct.Reg* %2634, i32 0, i32 0
  %PC.i107 = bitcast %union.anon* %2635 to i64*
  %2636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2637 = getelementptr inbounds %struct.GPR, %struct.GPR* %2636, i32 0, i32 9
  %2638 = getelementptr inbounds %struct.Reg, %struct.Reg* %2637, i32 0, i32 0
  %RSI.i108 = bitcast %union.anon* %2638 to i64*
  %2639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2640 = getelementptr inbounds %struct.GPR, %struct.GPR* %2639, i32 0, i32 15
  %2641 = getelementptr inbounds %struct.Reg, %struct.Reg* %2640, i32 0, i32 0
  %RBP.i109 = bitcast %union.anon* %2641 to i64*
  %2642 = load i64, i64* %RBP.i109
  %2643 = sub i64 %2642, 4
  %2644 = load i64, i64* %PC.i107
  %2645 = add i64 %2644, 4
  store i64 %2645, i64* %PC.i107
  %2646 = inttoptr i64 %2643 to i32*
  %2647 = load i32, i32* %2646
  %2648 = sext i32 %2647 to i64
  store i64 %2648, i64* %RSI.i108, align 8
  store %struct.Memory* %loadMem_47bfda, %struct.Memory** %MEMORY
  %loadMem_47bfde = load %struct.Memory*, %struct.Memory** %MEMORY
  %2649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2650 = getelementptr inbounds %struct.GPR, %struct.GPR* %2649, i32 0, i32 33
  %2651 = getelementptr inbounds %struct.Reg, %struct.Reg* %2650, i32 0, i32 0
  %PC.i103 = bitcast %union.anon* %2651 to i64*
  %2652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2653 = getelementptr inbounds %struct.GPR, %struct.GPR* %2652, i32 0, i32 7
  %2654 = getelementptr inbounds %struct.Reg, %struct.Reg* %2653, i32 0, i32 0
  %EDX.i104 = bitcast %union.anon* %2654 to i32*
  %2655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2656 = getelementptr inbounds %struct.GPR, %struct.GPR* %2655, i32 0, i32 1
  %2657 = getelementptr inbounds %struct.Reg, %struct.Reg* %2656, i32 0, i32 0
  %RAX.i105 = bitcast %union.anon* %2657 to i64*
  %2658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2659 = getelementptr inbounds %struct.GPR, %struct.GPR* %2658, i32 0, i32 9
  %2660 = getelementptr inbounds %struct.Reg, %struct.Reg* %2659, i32 0, i32 0
  %RSI.i106 = bitcast %union.anon* %2660 to i64*
  %2661 = load i64, i64* %RAX.i105
  %2662 = load i64, i64* %RSI.i106
  %2663 = mul i64 %2662, 4
  %2664 = add i64 %2663, %2661
  %2665 = load i32, i32* %EDX.i104
  %2666 = zext i32 %2665 to i64
  %2667 = load i64, i64* %PC.i103
  %2668 = add i64 %2667, 3
  store i64 %2668, i64* %PC.i103
  %2669 = inttoptr i64 %2664 to i32*
  store i32 %2665, i32* %2669
  store %struct.Memory* %loadMem_47bfde, %struct.Memory** %MEMORY
  %loadMem_47bfe1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2671 = getelementptr inbounds %struct.GPR, %struct.GPR* %2670, i32 0, i32 33
  %2672 = getelementptr inbounds %struct.Reg, %struct.Reg* %2671, i32 0, i32 0
  %PC.i102 = bitcast %union.anon* %2672 to i64*
  %2673 = load i64, i64* %PC.i102
  %2674 = add i64 %2673, 61
  %2675 = load i64, i64* %PC.i102
  %2676 = add i64 %2675, 5
  store i64 %2676, i64* %PC.i102
  %2677 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2674, i64* %2677, align 8
  store %struct.Memory* %loadMem_47bfe1, %struct.Memory** %MEMORY
  br label %block_.L_47c01e

block_.L_47bfe6:                                  ; preds = %block_47bf8b
  %loadMem_47bfe6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2679 = getelementptr inbounds %struct.GPR, %struct.GPR* %2678, i32 0, i32 33
  %2680 = getelementptr inbounds %struct.Reg, %struct.Reg* %2679, i32 0, i32 0
  %PC.i100 = bitcast %union.anon* %2680 to i64*
  %2681 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2682 = getelementptr inbounds %struct.GPR, %struct.GPR* %2681, i32 0, i32 1
  %2683 = getelementptr inbounds %struct.Reg, %struct.Reg* %2682, i32 0, i32 0
  %RAX.i101 = bitcast %union.anon* %2683 to i64*
  %2684 = load i64, i64* %PC.i100
  %2685 = add i64 %2684, 10
  store i64 %2685, i64* %PC.i100
  store i64 7156720, i64* %RAX.i101, align 8
  store %struct.Memory* %loadMem_47bfe6, %struct.Memory** %MEMORY
  %loadMem_47bff0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2687 = getelementptr inbounds %struct.GPR, %struct.GPR* %2686, i32 0, i32 33
  %2688 = getelementptr inbounds %struct.Reg, %struct.Reg* %2687, i32 0, i32 0
  %PC.i97 = bitcast %union.anon* %2688 to i64*
  %2689 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2690 = getelementptr inbounds %struct.GPR, %struct.GPR* %2689, i32 0, i32 5
  %2691 = getelementptr inbounds %struct.Reg, %struct.Reg* %2690, i32 0, i32 0
  %RCX.i98 = bitcast %union.anon* %2691 to i64*
  %2692 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2693 = getelementptr inbounds %struct.GPR, %struct.GPR* %2692, i32 0, i32 15
  %2694 = getelementptr inbounds %struct.Reg, %struct.Reg* %2693, i32 0, i32 0
  %RBP.i99 = bitcast %union.anon* %2694 to i64*
  %2695 = load i64, i64* %RBP.i99
  %2696 = sub i64 %2695, 16
  %2697 = load i64, i64* %PC.i97
  %2698 = add i64 %2697, 4
  store i64 %2698, i64* %PC.i97
  %2699 = inttoptr i64 %2696 to i32*
  %2700 = load i32, i32* %2699
  %2701 = sext i32 %2700 to i64
  store i64 %2701, i64* %RCX.i98, align 8
  store %struct.Memory* %loadMem_47bff0, %struct.Memory** %MEMORY
  %loadMem_47bff4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2703 = getelementptr inbounds %struct.GPR, %struct.GPR* %2702, i32 0, i32 33
  %2704 = getelementptr inbounds %struct.Reg, %struct.Reg* %2703, i32 0, i32 0
  %PC.i94 = bitcast %union.anon* %2704 to i64*
  %2705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2706 = getelementptr inbounds %struct.GPR, %struct.GPR* %2705, i32 0, i32 5
  %2707 = getelementptr inbounds %struct.Reg, %struct.Reg* %2706, i32 0, i32 0
  %RCX.i95 = bitcast %union.anon* %2707 to i64*
  %2708 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2709 = getelementptr inbounds %struct.GPR, %struct.GPR* %2708, i32 0, i32 7
  %2710 = getelementptr inbounds %struct.Reg, %struct.Reg* %2709, i32 0, i32 0
  %RDX.i96 = bitcast %union.anon* %2710 to i64*
  %2711 = load i64, i64* %RCX.i95
  %2712 = mul i64 %2711, 2
  %2713 = add i64 %2712, 4953488
  %2714 = load i64, i64* %PC.i94
  %2715 = add i64 %2714, 8
  store i64 %2715, i64* %PC.i94
  %2716 = inttoptr i64 %2713 to i16*
  %2717 = load i16, i16* %2716
  %2718 = sext i16 %2717 to i64
  %2719 = and i64 %2718, 4294967295
  store i64 %2719, i64* %RDX.i96, align 8
  store %struct.Memory* %loadMem_47bff4, %struct.Memory** %MEMORY
  %loadMem_47bffc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2721 = getelementptr inbounds %struct.GPR, %struct.GPR* %2720, i32 0, i32 33
  %2722 = getelementptr inbounds %struct.Reg, %struct.Reg* %2721, i32 0, i32 0
  %PC.i91 = bitcast %union.anon* %2722 to i64*
  %2723 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2724 = getelementptr inbounds %struct.GPR, %struct.GPR* %2723, i32 0, i32 5
  %2725 = getelementptr inbounds %struct.Reg, %struct.Reg* %2724, i32 0, i32 0
  %RCX.i92 = bitcast %union.anon* %2725 to i64*
  %2726 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2727 = getelementptr inbounds %struct.GPR, %struct.GPR* %2726, i32 0, i32 15
  %2728 = getelementptr inbounds %struct.Reg, %struct.Reg* %2727, i32 0, i32 0
  %RBP.i93 = bitcast %union.anon* %2728 to i64*
  %2729 = load i64, i64* %RBP.i93
  %2730 = sub i64 %2729, 20
  %2731 = load i64, i64* %PC.i91
  %2732 = add i64 %2731, 3
  store i64 %2732, i64* %PC.i91
  %2733 = inttoptr i64 %2730 to i32*
  %2734 = load i32, i32* %2733
  %2735 = zext i32 %2734 to i64
  store i64 %2735, i64* %RCX.i92, align 8
  store %struct.Memory* %loadMem_47bffc, %struct.Memory** %MEMORY
  %loadMem_47bfff = load %struct.Memory*, %struct.Memory** %MEMORY
  %2736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2737 = getelementptr inbounds %struct.GPR, %struct.GPR* %2736, i32 0, i32 33
  %2738 = getelementptr inbounds %struct.Reg, %struct.Reg* %2737, i32 0, i32 0
  %PC.i87 = bitcast %union.anon* %2738 to i64*
  %2739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2740 = getelementptr inbounds %struct.GPR, %struct.GPR* %2739, i32 0, i32 5
  %2741 = getelementptr inbounds %struct.Reg, %struct.Reg* %2740, i32 0, i32 0
  %2742 = bitcast %union.anon* %2741 to %struct.anon.2*
  %CL.i88 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2742, i32 0, i32 0
  %2743 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2744 = getelementptr inbounds %struct.GPR, %struct.GPR* %2743, i32 0, i32 7
  %2745 = getelementptr inbounds %struct.Reg, %struct.Reg* %2744, i32 0, i32 0
  %RDX.i89 = bitcast %union.anon* %2745 to i64*
  %2746 = load i64, i64* %RDX.i89
  %2747 = load i8, i8* %CL.i88
  %2748 = zext i8 %2747 to i64
  %2749 = load i64, i64* %PC.i87
  %2750 = add i64 %2749, 2
  store i64 %2750, i64* %PC.i87
  %2751 = trunc i64 %2748 to i5
  switch i5 %2751, label %2758 [
    i5 0, label %routine_shll__cl___edx.exit90
    i5 1, label %2752
  ]

; <label>:2752:                                   ; preds = %block_.L_47bfe6
  %2753 = trunc i64 %2746 to i32
  %2754 = shl i32 %2753, 1
  %2755 = icmp slt i32 %2753, 0
  %2756 = icmp slt i32 %2754, 0
  %2757 = xor i1 %2755, %2756
  br label %2767

; <label>:2758:                                   ; preds = %block_.L_47bfe6
  %2759 = and i64 %2748, 31
  %2760 = add i64 %2759, 4294967295
  %2761 = and i64 %2746, 4294967295
  %2762 = and i64 %2760, 4294967295
  %2763 = shl i64 %2761, %2762
  %2764 = trunc i64 %2763 to i32
  %2765 = icmp slt i32 %2764, 0
  %2766 = shl i32 %2764, 1
  br label %2767

; <label>:2767:                                   ; preds = %2758, %2752
  %2768 = phi i1 [ %2755, %2752 ], [ %2765, %2758 ]
  %2769 = phi i1 [ %2757, %2752 ], [ false, %2758 ]
  %2770 = phi i32 [ %2754, %2752 ], [ %2766, %2758 ]
  %2771 = zext i32 %2770 to i64
  store i64 %2771, i64* %RDX.i89, align 8
  %2772 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2773 = zext i1 %2768 to i8
  store i8 %2773, i8* %2772, align 1
  %2774 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2775 = and i32 %2770, 254
  %2776 = call i32 @llvm.ctpop.i32(i32 %2775)
  %2777 = trunc i32 %2776 to i8
  %2778 = and i8 %2777, 1
  %2779 = xor i8 %2778, 1
  store i8 %2779, i8* %2774, align 1
  %2780 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2780, align 1
  %2781 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2782 = icmp eq i32 %2770, 0
  %2783 = zext i1 %2782 to i8
  store i8 %2783, i8* %2781, align 1
  %2784 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2785 = lshr i32 %2770, 31
  %2786 = trunc i32 %2785 to i8
  store i8 %2786, i8* %2784, align 1
  %2787 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2788 = zext i1 %2769 to i8
  store i8 %2788, i8* %2787, align 1
  br label %routine_shll__cl___edx.exit90

routine_shll__cl___edx.exit90:                    ; preds = %block_.L_47bfe6, %2767
  store %struct.Memory* %loadMem_47bfff, %struct.Memory** %MEMORY
  %loadMem_47c001 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2790 = getelementptr inbounds %struct.GPR, %struct.GPR* %2789, i32 0, i32 33
  %2791 = getelementptr inbounds %struct.Reg, %struct.Reg* %2790, i32 0, i32 0
  %PC.i84 = bitcast %union.anon* %2791 to i64*
  %2792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2793 = getelementptr inbounds %struct.GPR, %struct.GPR* %2792, i32 0, i32 9
  %2794 = getelementptr inbounds %struct.Reg, %struct.Reg* %2793, i32 0, i32 0
  %RSI.i85 = bitcast %union.anon* %2794 to i64*
  %2795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2796 = getelementptr inbounds %struct.GPR, %struct.GPR* %2795, i32 0, i32 15
  %2797 = getelementptr inbounds %struct.Reg, %struct.Reg* %2796, i32 0, i32 0
  %RBP.i86 = bitcast %union.anon* %2797 to i64*
  %2798 = load i64, i64* %RBP.i86
  %2799 = sub i64 %2798, 12
  %2800 = load i64, i64* %PC.i84
  %2801 = add i64 %2800, 4
  store i64 %2801, i64* %PC.i84
  %2802 = inttoptr i64 %2799 to i32*
  %2803 = load i32, i32* %2802
  %2804 = sext i32 %2803 to i64
  store i64 %2804, i64* %RSI.i85, align 8
  store %struct.Memory* %loadMem_47c001, %struct.Memory** %MEMORY
  %loadMem_47c005 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2805 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2806 = getelementptr inbounds %struct.GPR, %struct.GPR* %2805, i32 0, i32 33
  %2807 = getelementptr inbounds %struct.Reg, %struct.Reg* %2806, i32 0, i32 0
  %PC.i82 = bitcast %union.anon* %2807 to i64*
  %2808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2809 = getelementptr inbounds %struct.GPR, %struct.GPR* %2808, i32 0, i32 9
  %2810 = getelementptr inbounds %struct.Reg, %struct.Reg* %2809, i32 0, i32 0
  %RSI.i83 = bitcast %union.anon* %2810 to i64*
  %2811 = load i64, i64* %RSI.i83
  %2812 = load i64, i64* %PC.i82
  %2813 = add i64 %2812, 4
  store i64 %2813, i64* %PC.i82
  %2814 = shl i64 %2811, 7
  %2815 = icmp slt i64 %2814, 0
  %2816 = shl i64 %2814, 1
  store i64 %2816, i64* %RSI.i83, align 8
  %2817 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2818 = zext i1 %2815 to i8
  store i8 %2818, i8* %2817, align 1
  %2819 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2820 = trunc i64 %2816 to i32
  store i8 1, i8* %2819, align 1
  %2821 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2821, align 1
  %2822 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2823 = icmp eq i64 %2816, 0
  %2824 = zext i1 %2823 to i8
  store i8 %2824, i8* %2822, align 1
  %2825 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2826 = lshr i64 %2816, 63
  %2827 = trunc i64 %2826 to i8
  store i8 %2827, i8* %2825, align 1
  %2828 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2828, align 1
  store %struct.Memory* %loadMem_47c005, %struct.Memory** %MEMORY
  %loadMem_47c009 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2830 = getelementptr inbounds %struct.GPR, %struct.GPR* %2829, i32 0, i32 33
  %2831 = getelementptr inbounds %struct.Reg, %struct.Reg* %2830, i32 0, i32 0
  %PC.i79 = bitcast %union.anon* %2831 to i64*
  %2832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2833 = getelementptr inbounds %struct.GPR, %struct.GPR* %2832, i32 0, i32 1
  %2834 = getelementptr inbounds %struct.Reg, %struct.Reg* %2833, i32 0, i32 0
  %RAX.i80 = bitcast %union.anon* %2834 to i64*
  %2835 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2836 = getelementptr inbounds %struct.GPR, %struct.GPR* %2835, i32 0, i32 9
  %2837 = getelementptr inbounds %struct.Reg, %struct.Reg* %2836, i32 0, i32 0
  %RSI.i81 = bitcast %union.anon* %2837 to i64*
  %2838 = load i64, i64* %RAX.i80
  %2839 = load i64, i64* %RSI.i81
  %2840 = load i64, i64* %PC.i79
  %2841 = add i64 %2840, 3
  store i64 %2841, i64* %PC.i79
  %2842 = add i64 %2839, %2838
  store i64 %2842, i64* %RAX.i80, align 8
  %2843 = icmp ult i64 %2842, %2838
  %2844 = icmp ult i64 %2842, %2839
  %2845 = or i1 %2843, %2844
  %2846 = zext i1 %2845 to i8
  %2847 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2846, i8* %2847, align 1
  %2848 = trunc i64 %2842 to i32
  %2849 = and i32 %2848, 255
  %2850 = call i32 @llvm.ctpop.i32(i32 %2849)
  %2851 = trunc i32 %2850 to i8
  %2852 = and i8 %2851, 1
  %2853 = xor i8 %2852, 1
  %2854 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2853, i8* %2854, align 1
  %2855 = xor i64 %2839, %2838
  %2856 = xor i64 %2855, %2842
  %2857 = lshr i64 %2856, 4
  %2858 = trunc i64 %2857 to i8
  %2859 = and i8 %2858, 1
  %2860 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2859, i8* %2860, align 1
  %2861 = icmp eq i64 %2842, 0
  %2862 = zext i1 %2861 to i8
  %2863 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2862, i8* %2863, align 1
  %2864 = lshr i64 %2842, 63
  %2865 = trunc i64 %2864 to i8
  %2866 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2865, i8* %2866, align 1
  %2867 = lshr i64 %2838, 63
  %2868 = lshr i64 %2839, 63
  %2869 = xor i64 %2864, %2867
  %2870 = xor i64 %2864, %2868
  %2871 = add i64 %2869, %2870
  %2872 = icmp eq i64 %2871, 2
  %2873 = zext i1 %2872 to i8
  %2874 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2873, i8* %2874, align 1
  store %struct.Memory* %loadMem_47c009, %struct.Memory** %MEMORY
  %loadMem_47c00c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2875 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2876 = getelementptr inbounds %struct.GPR, %struct.GPR* %2875, i32 0, i32 33
  %2877 = getelementptr inbounds %struct.Reg, %struct.Reg* %2876, i32 0, i32 0
  %PC.i76 = bitcast %union.anon* %2877 to i64*
  %2878 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2879 = getelementptr inbounds %struct.GPR, %struct.GPR* %2878, i32 0, i32 9
  %2880 = getelementptr inbounds %struct.Reg, %struct.Reg* %2879, i32 0, i32 0
  %RSI.i77 = bitcast %union.anon* %2880 to i64*
  %2881 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2882 = getelementptr inbounds %struct.GPR, %struct.GPR* %2881, i32 0, i32 15
  %2883 = getelementptr inbounds %struct.Reg, %struct.Reg* %2882, i32 0, i32 0
  %RBP.i78 = bitcast %union.anon* %2883 to i64*
  %2884 = load i64, i64* %RBP.i78
  %2885 = sub i64 %2884, 8
  %2886 = load i64, i64* %PC.i76
  %2887 = add i64 %2886, 4
  store i64 %2887, i64* %PC.i76
  %2888 = inttoptr i64 %2885 to i32*
  %2889 = load i32, i32* %2888
  %2890 = sext i32 %2889 to i64
  store i64 %2890, i64* %RSI.i77, align 8
  store %struct.Memory* %loadMem_47c00c, %struct.Memory** %MEMORY
  %loadMem_47c010 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2891 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2892 = getelementptr inbounds %struct.GPR, %struct.GPR* %2891, i32 0, i32 33
  %2893 = getelementptr inbounds %struct.Reg, %struct.Reg* %2892, i32 0, i32 0
  %PC.i74 = bitcast %union.anon* %2893 to i64*
  %2894 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2895 = getelementptr inbounds %struct.GPR, %struct.GPR* %2894, i32 0, i32 9
  %2896 = getelementptr inbounds %struct.Reg, %struct.Reg* %2895, i32 0, i32 0
  %RSI.i75 = bitcast %union.anon* %2896 to i64*
  %2897 = load i64, i64* %RSI.i75
  %2898 = load i64, i64* %PC.i74
  %2899 = add i64 %2898, 4
  store i64 %2899, i64* %PC.i74
  %2900 = shl i64 %2897, 4
  %2901 = icmp slt i64 %2900, 0
  %2902 = shl i64 %2900, 1
  store i64 %2902, i64* %RSI.i75, align 8
  %2903 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2904 = zext i1 %2901 to i8
  store i8 %2904, i8* %2903, align 1
  %2905 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2906 = trunc i64 %2902 to i32
  %2907 = and i32 %2906, 254
  %2908 = call i32 @llvm.ctpop.i32(i32 %2907)
  %2909 = trunc i32 %2908 to i8
  %2910 = and i8 %2909, 1
  %2911 = xor i8 %2910, 1
  store i8 %2911, i8* %2905, align 1
  %2912 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2912, align 1
  %2913 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2914 = icmp eq i64 %2902, 0
  %2915 = zext i1 %2914 to i8
  store i8 %2915, i8* %2913, align 1
  %2916 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2917 = lshr i64 %2902, 63
  %2918 = trunc i64 %2917 to i8
  store i8 %2918, i8* %2916, align 1
  %2919 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2919, align 1
  store %struct.Memory* %loadMem_47c010, %struct.Memory** %MEMORY
  %loadMem_47c014 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2921 = getelementptr inbounds %struct.GPR, %struct.GPR* %2920, i32 0, i32 33
  %2922 = getelementptr inbounds %struct.Reg, %struct.Reg* %2921, i32 0, i32 0
  %PC.i71 = bitcast %union.anon* %2922 to i64*
  %2923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2924 = getelementptr inbounds %struct.GPR, %struct.GPR* %2923, i32 0, i32 1
  %2925 = getelementptr inbounds %struct.Reg, %struct.Reg* %2924, i32 0, i32 0
  %RAX.i72 = bitcast %union.anon* %2925 to i64*
  %2926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2927 = getelementptr inbounds %struct.GPR, %struct.GPR* %2926, i32 0, i32 9
  %2928 = getelementptr inbounds %struct.Reg, %struct.Reg* %2927, i32 0, i32 0
  %RSI.i73 = bitcast %union.anon* %2928 to i64*
  %2929 = load i64, i64* %RAX.i72
  %2930 = load i64, i64* %RSI.i73
  %2931 = load i64, i64* %PC.i71
  %2932 = add i64 %2931, 3
  store i64 %2932, i64* %PC.i71
  %2933 = add i64 %2930, %2929
  store i64 %2933, i64* %RAX.i72, align 8
  %2934 = icmp ult i64 %2933, %2929
  %2935 = icmp ult i64 %2933, %2930
  %2936 = or i1 %2934, %2935
  %2937 = zext i1 %2936 to i8
  %2938 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2937, i8* %2938, align 1
  %2939 = trunc i64 %2933 to i32
  %2940 = and i32 %2939, 255
  %2941 = call i32 @llvm.ctpop.i32(i32 %2940)
  %2942 = trunc i32 %2941 to i8
  %2943 = and i8 %2942, 1
  %2944 = xor i8 %2943, 1
  %2945 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2944, i8* %2945, align 1
  %2946 = xor i64 %2930, %2929
  %2947 = xor i64 %2946, %2933
  %2948 = lshr i64 %2947, 4
  %2949 = trunc i64 %2948 to i8
  %2950 = and i8 %2949, 1
  %2951 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2950, i8* %2951, align 1
  %2952 = icmp eq i64 %2933, 0
  %2953 = zext i1 %2952 to i8
  %2954 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2953, i8* %2954, align 1
  %2955 = lshr i64 %2933, 63
  %2956 = trunc i64 %2955 to i8
  %2957 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2956, i8* %2957, align 1
  %2958 = lshr i64 %2929, 63
  %2959 = lshr i64 %2930, 63
  %2960 = xor i64 %2955, %2958
  %2961 = xor i64 %2955, %2959
  %2962 = add i64 %2960, %2961
  %2963 = icmp eq i64 %2962, 2
  %2964 = zext i1 %2963 to i8
  %2965 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2964, i8* %2965, align 1
  store %struct.Memory* %loadMem_47c014, %struct.Memory** %MEMORY
  %loadMem_47c017 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2967 = getelementptr inbounds %struct.GPR, %struct.GPR* %2966, i32 0, i32 33
  %2968 = getelementptr inbounds %struct.Reg, %struct.Reg* %2967, i32 0, i32 0
  %PC.i68 = bitcast %union.anon* %2968 to i64*
  %2969 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2970 = getelementptr inbounds %struct.GPR, %struct.GPR* %2969, i32 0, i32 9
  %2971 = getelementptr inbounds %struct.Reg, %struct.Reg* %2970, i32 0, i32 0
  %RSI.i69 = bitcast %union.anon* %2971 to i64*
  %2972 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2973 = getelementptr inbounds %struct.GPR, %struct.GPR* %2972, i32 0, i32 15
  %2974 = getelementptr inbounds %struct.Reg, %struct.Reg* %2973, i32 0, i32 0
  %RBP.i70 = bitcast %union.anon* %2974 to i64*
  %2975 = load i64, i64* %RBP.i70
  %2976 = sub i64 %2975, 4
  %2977 = load i64, i64* %PC.i68
  %2978 = add i64 %2977, 4
  store i64 %2978, i64* %PC.i68
  %2979 = inttoptr i64 %2976 to i32*
  %2980 = load i32, i32* %2979
  %2981 = sext i32 %2980 to i64
  store i64 %2981, i64* %RSI.i69, align 8
  store %struct.Memory* %loadMem_47c017, %struct.Memory** %MEMORY
  %loadMem_47c01b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2982 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2983 = getelementptr inbounds %struct.GPR, %struct.GPR* %2982, i32 0, i32 33
  %2984 = getelementptr inbounds %struct.Reg, %struct.Reg* %2983, i32 0, i32 0
  %PC.i64 = bitcast %union.anon* %2984 to i64*
  %2985 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2986 = getelementptr inbounds %struct.GPR, %struct.GPR* %2985, i32 0, i32 7
  %2987 = getelementptr inbounds %struct.Reg, %struct.Reg* %2986, i32 0, i32 0
  %EDX.i65 = bitcast %union.anon* %2987 to i32*
  %2988 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2989 = getelementptr inbounds %struct.GPR, %struct.GPR* %2988, i32 0, i32 1
  %2990 = getelementptr inbounds %struct.Reg, %struct.Reg* %2989, i32 0, i32 0
  %RAX.i66 = bitcast %union.anon* %2990 to i64*
  %2991 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2992 = getelementptr inbounds %struct.GPR, %struct.GPR* %2991, i32 0, i32 9
  %2993 = getelementptr inbounds %struct.Reg, %struct.Reg* %2992, i32 0, i32 0
  %RSI.i67 = bitcast %union.anon* %2993 to i64*
  %2994 = load i64, i64* %RAX.i66
  %2995 = load i64, i64* %RSI.i67
  %2996 = mul i64 %2995, 4
  %2997 = add i64 %2996, %2994
  %2998 = load i32, i32* %EDX.i65
  %2999 = zext i32 %2998 to i64
  %3000 = load i64, i64* %PC.i64
  %3001 = add i64 %3000, 3
  store i64 %3001, i64* %PC.i64
  %3002 = inttoptr i64 %2997 to i32*
  store i32 %2998, i32* %3002
  store %struct.Memory* %loadMem_47c01b, %struct.Memory** %MEMORY
  br label %block_.L_47c01e

block_.L_47c01e:                                  ; preds = %routine_shll__cl___edx.exit90, %routine_shll__cl___edx.exit129
  %loadMem_47c01e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3003 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3004 = getelementptr inbounds %struct.GPR, %struct.GPR* %3003, i32 0, i32 33
  %3005 = getelementptr inbounds %struct.Reg, %struct.Reg* %3004, i32 0, i32 0
  %PC.i62 = bitcast %union.anon* %3005 to i64*
  %3006 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3007 = getelementptr inbounds %struct.GPR, %struct.GPR* %3006, i32 0, i32 1
  %3008 = getelementptr inbounds %struct.Reg, %struct.Reg* %3007, i32 0, i32 0
  %RAX.i63 = bitcast %union.anon* %3008 to i64*
  %3009 = load i64, i64* %PC.i62
  %3010 = add i64 %3009, 10
  store i64 %3010, i64* %PC.i62
  store i64 7474576, i64* %RAX.i63, align 8
  store %struct.Memory* %loadMem_47c01e, %struct.Memory** %MEMORY
  %loadMem_47c028 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3011 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3012 = getelementptr inbounds %struct.GPR, %struct.GPR* %3011, i32 0, i32 33
  %3013 = getelementptr inbounds %struct.Reg, %struct.Reg* %3012, i32 0, i32 0
  %PC.i59 = bitcast %union.anon* %3013 to i64*
  %3014 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3015 = getelementptr inbounds %struct.GPR, %struct.GPR* %3014, i32 0, i32 5
  %3016 = getelementptr inbounds %struct.Reg, %struct.Reg* %3015, i32 0, i32 0
  %RCX.i60 = bitcast %union.anon* %3016 to i64*
  %3017 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3018 = getelementptr inbounds %struct.GPR, %struct.GPR* %3017, i32 0, i32 15
  %3019 = getelementptr inbounds %struct.Reg, %struct.Reg* %3018, i32 0, i32 0
  %RBP.i61 = bitcast %union.anon* %3019 to i64*
  %3020 = load i64, i64* %RBP.i61
  %3021 = sub i64 %3020, 16
  %3022 = load i64, i64* %PC.i59
  %3023 = add i64 %3022, 4
  store i64 %3023, i64* %PC.i59
  %3024 = inttoptr i64 %3021 to i32*
  %3025 = load i32, i32* %3024
  %3026 = sext i32 %3025 to i64
  store i64 %3026, i64* %RCX.i60, align 8
  store %struct.Memory* %loadMem_47c028, %struct.Memory** %MEMORY
  %loadMem_47c02c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3027 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3028 = getelementptr inbounds %struct.GPR, %struct.GPR* %3027, i32 0, i32 33
  %3029 = getelementptr inbounds %struct.Reg, %struct.Reg* %3028, i32 0, i32 0
  %PC.i56 = bitcast %union.anon* %3029 to i64*
  %3030 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3031 = getelementptr inbounds %struct.GPR, %struct.GPR* %3030, i32 0, i32 5
  %3032 = getelementptr inbounds %struct.Reg, %struct.Reg* %3031, i32 0, i32 0
  %RCX.i57 = bitcast %union.anon* %3032 to i64*
  %3033 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3034 = getelementptr inbounds %struct.GPR, %struct.GPR* %3033, i32 0, i32 7
  %3035 = getelementptr inbounds %struct.Reg, %struct.Reg* %3034, i32 0, i32 0
  %RDX.i58 = bitcast %union.anon* %3035 to i64*
  %3036 = load i64, i64* %RCX.i57
  %3037 = mul i64 %3036, 2
  %3038 = add i64 %3037, 4953616
  %3039 = load i64, i64* %PC.i56
  %3040 = add i64 %3039, 8
  store i64 %3040, i64* %PC.i56
  %3041 = inttoptr i64 %3038 to i16*
  %3042 = load i16, i16* %3041
  %3043 = sext i16 %3042 to i64
  %3044 = and i64 %3043, 4294967295
  store i64 %3044, i64* %RDX.i58, align 8
  store %struct.Memory* %loadMem_47c02c, %struct.Memory** %MEMORY
  %loadMem_47c034 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3046 = getelementptr inbounds %struct.GPR, %struct.GPR* %3045, i32 0, i32 33
  %3047 = getelementptr inbounds %struct.Reg, %struct.Reg* %3046, i32 0, i32 0
  %PC.i54 = bitcast %union.anon* %3047 to i64*
  %3048 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3049 = getelementptr inbounds %struct.GPR, %struct.GPR* %3048, i32 0, i32 5
  %3050 = getelementptr inbounds %struct.Reg, %struct.Reg* %3049, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %3050 to i64*
  %3051 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3052 = getelementptr inbounds %struct.GPR, %struct.GPR* %3051, i32 0, i32 15
  %3053 = getelementptr inbounds %struct.Reg, %struct.Reg* %3052, i32 0, i32 0
  %RBP.i55 = bitcast %union.anon* %3053 to i64*
  %3054 = load i64, i64* %RBP.i55
  %3055 = sub i64 %3054, 20
  %3056 = load i64, i64* %PC.i54
  %3057 = add i64 %3056, 3
  store i64 %3057, i64* %PC.i54
  %3058 = inttoptr i64 %3055 to i32*
  %3059 = load i32, i32* %3058
  %3060 = zext i32 %3059 to i64
  store i64 %3060, i64* %RCX.i, align 8
  store %struct.Memory* %loadMem_47c034, %struct.Memory** %MEMORY
  %loadMem_47c037 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3062 = getelementptr inbounds %struct.GPR, %struct.GPR* %3061, i32 0, i32 33
  %3063 = getelementptr inbounds %struct.Reg, %struct.Reg* %3062, i32 0, i32 0
  %PC.i53 = bitcast %union.anon* %3063 to i64*
  %3064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3065 = getelementptr inbounds %struct.GPR, %struct.GPR* %3064, i32 0, i32 5
  %3066 = getelementptr inbounds %struct.Reg, %struct.Reg* %3065, i32 0, i32 0
  %3067 = bitcast %union.anon* %3066 to %struct.anon.2*
  %CL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3067, i32 0, i32 0
  %3068 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3069 = getelementptr inbounds %struct.GPR, %struct.GPR* %3068, i32 0, i32 7
  %3070 = getelementptr inbounds %struct.Reg, %struct.Reg* %3069, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %3070 to i64*
  %3071 = load i64, i64* %RDX.i
  %3072 = load i8, i8* %CL.i
  %3073 = zext i8 %3072 to i64
  %3074 = load i64, i64* %PC.i53
  %3075 = add i64 %3074, 2
  store i64 %3075, i64* %PC.i53
  %3076 = trunc i64 %3073 to i5
  switch i5 %3076, label %3083 [
    i5 0, label %routine_shll__cl___edx.exit
    i5 1, label %3077
  ]

; <label>:3077:                                   ; preds = %block_.L_47c01e
  %3078 = trunc i64 %3071 to i32
  %3079 = shl i32 %3078, 1
  %3080 = icmp slt i32 %3078, 0
  %3081 = icmp slt i32 %3079, 0
  %3082 = xor i1 %3080, %3081
  br label %3092

; <label>:3083:                                   ; preds = %block_.L_47c01e
  %3084 = and i64 %3073, 31
  %3085 = add i64 %3084, 4294967295
  %3086 = and i64 %3071, 4294967295
  %3087 = and i64 %3085, 4294967295
  %3088 = shl i64 %3086, %3087
  %3089 = trunc i64 %3088 to i32
  %3090 = icmp slt i32 %3089, 0
  %3091 = shl i32 %3089, 1
  br label %3092

; <label>:3092:                                   ; preds = %3083, %3077
  %3093 = phi i1 [ %3080, %3077 ], [ %3090, %3083 ]
  %3094 = phi i1 [ %3082, %3077 ], [ false, %3083 ]
  %3095 = phi i32 [ %3079, %3077 ], [ %3091, %3083 ]
  %3096 = zext i32 %3095 to i64
  store i64 %3096, i64* %RDX.i, align 8
  %3097 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %3098 = zext i1 %3093 to i8
  store i8 %3098, i8* %3097, align 1
  %3099 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %3100 = and i32 %3095, 254
  %3101 = call i32 @llvm.ctpop.i32(i32 %3100)
  %3102 = trunc i32 %3101 to i8
  %3103 = and i8 %3102, 1
  %3104 = xor i8 %3103, 1
  store i8 %3104, i8* %3099, align 1
  %3105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3105, align 1
  %3106 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3107 = icmp eq i32 %3095, 0
  %3108 = zext i1 %3107 to i8
  store i8 %3108, i8* %3106, align 1
  %3109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3110 = lshr i32 %3095, 31
  %3111 = trunc i32 %3110 to i8
  store i8 %3111, i8* %3109, align 1
  %3112 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3113 = zext i1 %3094 to i8
  store i8 %3113, i8* %3112, align 1
  br label %routine_shll__cl___edx.exit

routine_shll__cl___edx.exit:                      ; preds = %block_.L_47c01e, %3092
  store %struct.Memory* %loadMem_47c037, %struct.Memory** %MEMORY
  %loadMem_47c039 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3115 = getelementptr inbounds %struct.GPR, %struct.GPR* %3114, i32 0, i32 33
  %3116 = getelementptr inbounds %struct.Reg, %struct.Reg* %3115, i32 0, i32 0
  %PC.i50 = bitcast %union.anon* %3116 to i64*
  %3117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3118 = getelementptr inbounds %struct.GPR, %struct.GPR* %3117, i32 0, i32 9
  %3119 = getelementptr inbounds %struct.Reg, %struct.Reg* %3118, i32 0, i32 0
  %RSI.i51 = bitcast %union.anon* %3119 to i64*
  %3120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3121 = getelementptr inbounds %struct.GPR, %struct.GPR* %3120, i32 0, i32 15
  %3122 = getelementptr inbounds %struct.Reg, %struct.Reg* %3121, i32 0, i32 0
  %RBP.i52 = bitcast %union.anon* %3122 to i64*
  %3123 = load i64, i64* %RBP.i52
  %3124 = sub i64 %3123, 12
  %3125 = load i64, i64* %PC.i50
  %3126 = add i64 %3125, 4
  store i64 %3126, i64* %PC.i50
  %3127 = inttoptr i64 %3124 to i32*
  %3128 = load i32, i32* %3127
  %3129 = sext i32 %3128 to i64
  store i64 %3129, i64* %RSI.i51, align 8
  store %struct.Memory* %loadMem_47c039, %struct.Memory** %MEMORY
  %loadMem_47c03d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3131 = getelementptr inbounds %struct.GPR, %struct.GPR* %3130, i32 0, i32 33
  %3132 = getelementptr inbounds %struct.Reg, %struct.Reg* %3131, i32 0, i32 0
  %PC.i48 = bitcast %union.anon* %3132 to i64*
  %3133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3134 = getelementptr inbounds %struct.GPR, %struct.GPR* %3133, i32 0, i32 9
  %3135 = getelementptr inbounds %struct.Reg, %struct.Reg* %3134, i32 0, i32 0
  %RSI.i49 = bitcast %union.anon* %3135 to i64*
  %3136 = load i64, i64* %RSI.i49
  %3137 = load i64, i64* %PC.i48
  %3138 = add i64 %3137, 4
  store i64 %3138, i64* %PC.i48
  %3139 = shl i64 %3136, 7
  %3140 = icmp slt i64 %3139, 0
  %3141 = shl i64 %3139, 1
  store i64 %3141, i64* %RSI.i49, align 8
  %3142 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %3143 = zext i1 %3140 to i8
  store i8 %3143, i8* %3142, align 1
  %3144 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %3145 = trunc i64 %3141 to i32
  store i8 1, i8* %3144, align 1
  %3146 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3146, align 1
  %3147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3148 = icmp eq i64 %3141, 0
  %3149 = zext i1 %3148 to i8
  store i8 %3149, i8* %3147, align 1
  %3150 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3151 = lshr i64 %3141, 63
  %3152 = trunc i64 %3151 to i8
  store i8 %3152, i8* %3150, align 1
  %3153 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3153, align 1
  store %struct.Memory* %loadMem_47c03d, %struct.Memory** %MEMORY
  %loadMem_47c041 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3155 = getelementptr inbounds %struct.GPR, %struct.GPR* %3154, i32 0, i32 33
  %3156 = getelementptr inbounds %struct.Reg, %struct.Reg* %3155, i32 0, i32 0
  %PC.i45 = bitcast %union.anon* %3156 to i64*
  %3157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3158 = getelementptr inbounds %struct.GPR, %struct.GPR* %3157, i32 0, i32 1
  %3159 = getelementptr inbounds %struct.Reg, %struct.Reg* %3158, i32 0, i32 0
  %RAX.i46 = bitcast %union.anon* %3159 to i64*
  %3160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3161 = getelementptr inbounds %struct.GPR, %struct.GPR* %3160, i32 0, i32 9
  %3162 = getelementptr inbounds %struct.Reg, %struct.Reg* %3161, i32 0, i32 0
  %RSI.i47 = bitcast %union.anon* %3162 to i64*
  %3163 = load i64, i64* %RAX.i46
  %3164 = load i64, i64* %RSI.i47
  %3165 = load i64, i64* %PC.i45
  %3166 = add i64 %3165, 3
  store i64 %3166, i64* %PC.i45
  %3167 = add i64 %3164, %3163
  store i64 %3167, i64* %RAX.i46, align 8
  %3168 = icmp ult i64 %3167, %3163
  %3169 = icmp ult i64 %3167, %3164
  %3170 = or i1 %3168, %3169
  %3171 = zext i1 %3170 to i8
  %3172 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3171, i8* %3172, align 1
  %3173 = trunc i64 %3167 to i32
  %3174 = and i32 %3173, 255
  %3175 = call i32 @llvm.ctpop.i32(i32 %3174)
  %3176 = trunc i32 %3175 to i8
  %3177 = and i8 %3176, 1
  %3178 = xor i8 %3177, 1
  %3179 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3178, i8* %3179, align 1
  %3180 = xor i64 %3164, %3163
  %3181 = xor i64 %3180, %3167
  %3182 = lshr i64 %3181, 4
  %3183 = trunc i64 %3182 to i8
  %3184 = and i8 %3183, 1
  %3185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3184, i8* %3185, align 1
  %3186 = icmp eq i64 %3167, 0
  %3187 = zext i1 %3186 to i8
  %3188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3187, i8* %3188, align 1
  %3189 = lshr i64 %3167, 63
  %3190 = trunc i64 %3189 to i8
  %3191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3190, i8* %3191, align 1
  %3192 = lshr i64 %3163, 63
  %3193 = lshr i64 %3164, 63
  %3194 = xor i64 %3189, %3192
  %3195 = xor i64 %3189, %3193
  %3196 = add i64 %3194, %3195
  %3197 = icmp eq i64 %3196, 2
  %3198 = zext i1 %3197 to i8
  %3199 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3198, i8* %3199, align 1
  store %struct.Memory* %loadMem_47c041, %struct.Memory** %MEMORY
  %loadMem_47c044 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3201 = getelementptr inbounds %struct.GPR, %struct.GPR* %3200, i32 0, i32 33
  %3202 = getelementptr inbounds %struct.Reg, %struct.Reg* %3201, i32 0, i32 0
  %PC.i42 = bitcast %union.anon* %3202 to i64*
  %3203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3204 = getelementptr inbounds %struct.GPR, %struct.GPR* %3203, i32 0, i32 9
  %3205 = getelementptr inbounds %struct.Reg, %struct.Reg* %3204, i32 0, i32 0
  %RSI.i43 = bitcast %union.anon* %3205 to i64*
  %3206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3207 = getelementptr inbounds %struct.GPR, %struct.GPR* %3206, i32 0, i32 15
  %3208 = getelementptr inbounds %struct.Reg, %struct.Reg* %3207, i32 0, i32 0
  %RBP.i44 = bitcast %union.anon* %3208 to i64*
  %3209 = load i64, i64* %RBP.i44
  %3210 = sub i64 %3209, 8
  %3211 = load i64, i64* %PC.i42
  %3212 = add i64 %3211, 4
  store i64 %3212, i64* %PC.i42
  %3213 = inttoptr i64 %3210 to i32*
  %3214 = load i32, i32* %3213
  %3215 = sext i32 %3214 to i64
  store i64 %3215, i64* %RSI.i43, align 8
  store %struct.Memory* %loadMem_47c044, %struct.Memory** %MEMORY
  %loadMem_47c048 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3217 = getelementptr inbounds %struct.GPR, %struct.GPR* %3216, i32 0, i32 33
  %3218 = getelementptr inbounds %struct.Reg, %struct.Reg* %3217, i32 0, i32 0
  %PC.i40 = bitcast %union.anon* %3218 to i64*
  %3219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3220 = getelementptr inbounds %struct.GPR, %struct.GPR* %3219, i32 0, i32 9
  %3221 = getelementptr inbounds %struct.Reg, %struct.Reg* %3220, i32 0, i32 0
  %RSI.i41 = bitcast %union.anon* %3221 to i64*
  %3222 = load i64, i64* %RSI.i41
  %3223 = load i64, i64* %PC.i40
  %3224 = add i64 %3223, 4
  store i64 %3224, i64* %PC.i40
  %3225 = shl i64 %3222, 4
  %3226 = icmp slt i64 %3225, 0
  %3227 = shl i64 %3225, 1
  store i64 %3227, i64* %RSI.i41, align 8
  %3228 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %3229 = zext i1 %3226 to i8
  store i8 %3229, i8* %3228, align 1
  %3230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %3231 = trunc i64 %3227 to i32
  %3232 = and i32 %3231, 254
  %3233 = call i32 @llvm.ctpop.i32(i32 %3232)
  %3234 = trunc i32 %3233 to i8
  %3235 = and i8 %3234, 1
  %3236 = xor i8 %3235, 1
  store i8 %3236, i8* %3230, align 1
  %3237 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3237, align 1
  %3238 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3239 = icmp eq i64 %3227, 0
  %3240 = zext i1 %3239 to i8
  store i8 %3240, i8* %3238, align 1
  %3241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3242 = lshr i64 %3227, 63
  %3243 = trunc i64 %3242 to i8
  store i8 %3243, i8* %3241, align 1
  %3244 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3244, align 1
  store %struct.Memory* %loadMem_47c048, %struct.Memory** %MEMORY
  %loadMem_47c04c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3246 = getelementptr inbounds %struct.GPR, %struct.GPR* %3245, i32 0, i32 33
  %3247 = getelementptr inbounds %struct.Reg, %struct.Reg* %3246, i32 0, i32 0
  %PC.i37 = bitcast %union.anon* %3247 to i64*
  %3248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3249 = getelementptr inbounds %struct.GPR, %struct.GPR* %3248, i32 0, i32 1
  %3250 = getelementptr inbounds %struct.Reg, %struct.Reg* %3249, i32 0, i32 0
  %RAX.i38 = bitcast %union.anon* %3250 to i64*
  %3251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3252 = getelementptr inbounds %struct.GPR, %struct.GPR* %3251, i32 0, i32 9
  %3253 = getelementptr inbounds %struct.Reg, %struct.Reg* %3252, i32 0, i32 0
  %RSI.i39 = bitcast %union.anon* %3253 to i64*
  %3254 = load i64, i64* %RAX.i38
  %3255 = load i64, i64* %RSI.i39
  %3256 = load i64, i64* %PC.i37
  %3257 = add i64 %3256, 3
  store i64 %3257, i64* %PC.i37
  %3258 = add i64 %3255, %3254
  store i64 %3258, i64* %RAX.i38, align 8
  %3259 = icmp ult i64 %3258, %3254
  %3260 = icmp ult i64 %3258, %3255
  %3261 = or i1 %3259, %3260
  %3262 = zext i1 %3261 to i8
  %3263 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3262, i8* %3263, align 1
  %3264 = trunc i64 %3258 to i32
  %3265 = and i32 %3264, 255
  %3266 = call i32 @llvm.ctpop.i32(i32 %3265)
  %3267 = trunc i32 %3266 to i8
  %3268 = and i8 %3267, 1
  %3269 = xor i8 %3268, 1
  %3270 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3269, i8* %3270, align 1
  %3271 = xor i64 %3255, %3254
  %3272 = xor i64 %3271, %3258
  %3273 = lshr i64 %3272, 4
  %3274 = trunc i64 %3273 to i8
  %3275 = and i8 %3274, 1
  %3276 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3275, i8* %3276, align 1
  %3277 = icmp eq i64 %3258, 0
  %3278 = zext i1 %3277 to i8
  %3279 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3278, i8* %3279, align 1
  %3280 = lshr i64 %3258, 63
  %3281 = trunc i64 %3280 to i8
  %3282 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3281, i8* %3282, align 1
  %3283 = lshr i64 %3254, 63
  %3284 = lshr i64 %3255, 63
  %3285 = xor i64 %3280, %3283
  %3286 = xor i64 %3280, %3284
  %3287 = add i64 %3285, %3286
  %3288 = icmp eq i64 %3287, 2
  %3289 = zext i1 %3288 to i8
  %3290 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3289, i8* %3290, align 1
  store %struct.Memory* %loadMem_47c04c, %struct.Memory** %MEMORY
  %loadMem_47c04f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3292 = getelementptr inbounds %struct.GPR, %struct.GPR* %3291, i32 0, i32 33
  %3293 = getelementptr inbounds %struct.Reg, %struct.Reg* %3292, i32 0, i32 0
  %PC.i34 = bitcast %union.anon* %3293 to i64*
  %3294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3295 = getelementptr inbounds %struct.GPR, %struct.GPR* %3294, i32 0, i32 9
  %3296 = getelementptr inbounds %struct.Reg, %struct.Reg* %3295, i32 0, i32 0
  %RSI.i35 = bitcast %union.anon* %3296 to i64*
  %3297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3298 = getelementptr inbounds %struct.GPR, %struct.GPR* %3297, i32 0, i32 15
  %3299 = getelementptr inbounds %struct.Reg, %struct.Reg* %3298, i32 0, i32 0
  %RBP.i36 = bitcast %union.anon* %3299 to i64*
  %3300 = load i64, i64* %RBP.i36
  %3301 = sub i64 %3300, 4
  %3302 = load i64, i64* %PC.i34
  %3303 = add i64 %3302, 4
  store i64 %3303, i64* %PC.i34
  %3304 = inttoptr i64 %3301 to i32*
  %3305 = load i32, i32* %3304
  %3306 = sext i32 %3305 to i64
  store i64 %3306, i64* %RSI.i35, align 8
  store %struct.Memory* %loadMem_47c04f, %struct.Memory** %MEMORY
  %loadMem_47c053 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3308 = getelementptr inbounds %struct.GPR, %struct.GPR* %3307, i32 0, i32 33
  %3309 = getelementptr inbounds %struct.Reg, %struct.Reg* %3308, i32 0, i32 0
  %PC.i32 = bitcast %union.anon* %3309 to i64*
  %3310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3311 = getelementptr inbounds %struct.GPR, %struct.GPR* %3310, i32 0, i32 7
  %3312 = getelementptr inbounds %struct.Reg, %struct.Reg* %3311, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %3312 to i32*
  %3313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3314 = getelementptr inbounds %struct.GPR, %struct.GPR* %3313, i32 0, i32 1
  %3315 = getelementptr inbounds %struct.Reg, %struct.Reg* %3314, i32 0, i32 0
  %RAX.i33 = bitcast %union.anon* %3315 to i64*
  %3316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3317 = getelementptr inbounds %struct.GPR, %struct.GPR* %3316, i32 0, i32 9
  %3318 = getelementptr inbounds %struct.Reg, %struct.Reg* %3317, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %3318 to i64*
  %3319 = load i64, i64* %RAX.i33
  %3320 = load i64, i64* %RSI.i
  %3321 = mul i64 %3320, 4
  %3322 = add i64 %3321, %3319
  %3323 = load i32, i32* %EDX.i
  %3324 = zext i32 %3323 to i64
  %3325 = load i64, i64* %PC.i32
  %3326 = add i64 %3325, 3
  store i64 %3326, i64* %PC.i32
  %3327 = inttoptr i64 %3322 to i32*
  store i32 %3323, i32* %3327
  store %struct.Memory* %loadMem_47c053, %struct.Memory** %MEMORY
  %loadMem_47c056 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3329 = getelementptr inbounds %struct.GPR, %struct.GPR* %3328, i32 0, i32 33
  %3330 = getelementptr inbounds %struct.Reg, %struct.Reg* %3329, i32 0, i32 0
  %PC.i29 = bitcast %union.anon* %3330 to i64*
  %3331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3332 = getelementptr inbounds %struct.GPR, %struct.GPR* %3331, i32 0, i32 1
  %3333 = getelementptr inbounds %struct.Reg, %struct.Reg* %3332, i32 0, i32 0
  %RAX.i30 = bitcast %union.anon* %3333 to i64*
  %3334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3335 = getelementptr inbounds %struct.GPR, %struct.GPR* %3334, i32 0, i32 15
  %3336 = getelementptr inbounds %struct.Reg, %struct.Reg* %3335, i32 0, i32 0
  %RBP.i31 = bitcast %union.anon* %3336 to i64*
  %3337 = load i64, i64* %RBP.i31
  %3338 = sub i64 %3337, 4
  %3339 = load i64, i64* %PC.i29
  %3340 = add i64 %3339, 3
  store i64 %3340, i64* %PC.i29
  %3341 = inttoptr i64 %3338 to i32*
  %3342 = load i32, i32* %3341
  %3343 = zext i32 %3342 to i64
  store i64 %3343, i64* %RAX.i30, align 8
  store %struct.Memory* %loadMem_47c056, %struct.Memory** %MEMORY
  %loadMem_47c059 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3345 = getelementptr inbounds %struct.GPR, %struct.GPR* %3344, i32 0, i32 33
  %3346 = getelementptr inbounds %struct.Reg, %struct.Reg* %3345, i32 0, i32 0
  %PC.i27 = bitcast %union.anon* %3346 to i64*
  %3347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3348 = getelementptr inbounds %struct.GPR, %struct.GPR* %3347, i32 0, i32 1
  %3349 = getelementptr inbounds %struct.Reg, %struct.Reg* %3348, i32 0, i32 0
  %RAX.i28 = bitcast %union.anon* %3349 to i64*
  %3350 = load i64, i64* %RAX.i28
  %3351 = load i64, i64* %PC.i27
  %3352 = add i64 %3351, 3
  store i64 %3352, i64* %PC.i27
  %3353 = trunc i64 %3350 to i32
  %3354 = add i32 1, %3353
  %3355 = zext i32 %3354 to i64
  store i64 %3355, i64* %RAX.i28, align 8
  %3356 = icmp ult i32 %3354, %3353
  %3357 = icmp ult i32 %3354, 1
  %3358 = or i1 %3356, %3357
  %3359 = zext i1 %3358 to i8
  %3360 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3359, i8* %3360, align 1
  %3361 = and i32 %3354, 255
  %3362 = call i32 @llvm.ctpop.i32(i32 %3361)
  %3363 = trunc i32 %3362 to i8
  %3364 = and i8 %3363, 1
  %3365 = xor i8 %3364, 1
  %3366 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3365, i8* %3366, align 1
  %3367 = xor i64 1, %3350
  %3368 = trunc i64 %3367 to i32
  %3369 = xor i32 %3368, %3354
  %3370 = lshr i32 %3369, 4
  %3371 = trunc i32 %3370 to i8
  %3372 = and i8 %3371, 1
  %3373 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3372, i8* %3373, align 1
  %3374 = icmp eq i32 %3354, 0
  %3375 = zext i1 %3374 to i8
  %3376 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3375, i8* %3376, align 1
  %3377 = lshr i32 %3354, 31
  %3378 = trunc i32 %3377 to i8
  %3379 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3378, i8* %3379, align 1
  %3380 = lshr i32 %3353, 31
  %3381 = xor i32 %3377, %3380
  %3382 = add i32 %3381, %3377
  %3383 = icmp eq i32 %3382, 2
  %3384 = zext i1 %3383 to i8
  %3385 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3384, i8* %3385, align 1
  store %struct.Memory* %loadMem_47c059, %struct.Memory** %MEMORY
  %loadMem_47c05c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3387 = getelementptr inbounds %struct.GPR, %struct.GPR* %3386, i32 0, i32 33
  %3388 = getelementptr inbounds %struct.Reg, %struct.Reg* %3387, i32 0, i32 0
  %PC.i24 = bitcast %union.anon* %3388 to i64*
  %3389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3390 = getelementptr inbounds %struct.GPR, %struct.GPR* %3389, i32 0, i32 1
  %3391 = getelementptr inbounds %struct.Reg, %struct.Reg* %3390, i32 0, i32 0
  %EAX.i25 = bitcast %union.anon* %3391 to i32*
  %3392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3393 = getelementptr inbounds %struct.GPR, %struct.GPR* %3392, i32 0, i32 15
  %3394 = getelementptr inbounds %struct.Reg, %struct.Reg* %3393, i32 0, i32 0
  %RBP.i26 = bitcast %union.anon* %3394 to i64*
  %3395 = load i64, i64* %RBP.i26
  %3396 = sub i64 %3395, 4
  %3397 = load i32, i32* %EAX.i25
  %3398 = zext i32 %3397 to i64
  %3399 = load i64, i64* %PC.i24
  %3400 = add i64 %3399, 3
  store i64 %3400, i64* %PC.i24
  %3401 = inttoptr i64 %3396 to i32*
  store i32 %3397, i32* %3401
  store %struct.Memory* %loadMem_47c05c, %struct.Memory** %MEMORY
  %loadMem_47c05f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3403 = getelementptr inbounds %struct.GPR, %struct.GPR* %3402, i32 0, i32 33
  %3404 = getelementptr inbounds %struct.Reg, %struct.Reg* %3403, i32 0, i32 0
  %PC.i23 = bitcast %union.anon* %3404 to i64*
  %3405 = load i64, i64* %PC.i23
  %3406 = add i64 %3405, -222
  %3407 = load i64, i64* %PC.i23
  %3408 = add i64 %3407, 5
  store i64 %3408, i64* %PC.i23
  %3409 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3406, i64* %3409, align 8
  store %struct.Memory* %loadMem_47c05f, %struct.Memory** %MEMORY
  br label %block_.L_47bf81

block_.L_47c064:                                  ; preds = %block_.L_47bf81
  %loadMem_47c064 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3410 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3411 = getelementptr inbounds %struct.GPR, %struct.GPR* %3410, i32 0, i32 33
  %3412 = getelementptr inbounds %struct.Reg, %struct.Reg* %3411, i32 0, i32 0
  %PC.i22 = bitcast %union.anon* %3412 to i64*
  %3413 = load i64, i64* %PC.i22
  %3414 = add i64 %3413, 5
  %3415 = load i64, i64* %PC.i22
  %3416 = add i64 %3415, 5
  store i64 %3416, i64* %PC.i22
  %3417 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3414, i64* %3417, align 8
  store %struct.Memory* %loadMem_47c064, %struct.Memory** %MEMORY
  br label %block_.L_47c069

block_.L_47c069:                                  ; preds = %block_.L_47c064
  %loadMem_47c069 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3419 = getelementptr inbounds %struct.GPR, %struct.GPR* %3418, i32 0, i32 33
  %3420 = getelementptr inbounds %struct.Reg, %struct.Reg* %3419, i32 0, i32 0
  %PC.i19 = bitcast %union.anon* %3420 to i64*
  %3421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3422 = getelementptr inbounds %struct.GPR, %struct.GPR* %3421, i32 0, i32 1
  %3423 = getelementptr inbounds %struct.Reg, %struct.Reg* %3422, i32 0, i32 0
  %RAX.i20 = bitcast %union.anon* %3423 to i64*
  %3424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3425 = getelementptr inbounds %struct.GPR, %struct.GPR* %3424, i32 0, i32 15
  %3426 = getelementptr inbounds %struct.Reg, %struct.Reg* %3425, i32 0, i32 0
  %RBP.i21 = bitcast %union.anon* %3426 to i64*
  %3427 = load i64, i64* %RBP.i21
  %3428 = sub i64 %3427, 8
  %3429 = load i64, i64* %PC.i19
  %3430 = add i64 %3429, 3
  store i64 %3430, i64* %PC.i19
  %3431 = inttoptr i64 %3428 to i32*
  %3432 = load i32, i32* %3431
  %3433 = zext i32 %3432 to i64
  store i64 %3433, i64* %RAX.i20, align 8
  store %struct.Memory* %loadMem_47c069, %struct.Memory** %MEMORY
  %loadMem_47c06c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3435 = getelementptr inbounds %struct.GPR, %struct.GPR* %3434, i32 0, i32 33
  %3436 = getelementptr inbounds %struct.Reg, %struct.Reg* %3435, i32 0, i32 0
  %PC.i17 = bitcast %union.anon* %3436 to i64*
  %3437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3438 = getelementptr inbounds %struct.GPR, %struct.GPR* %3437, i32 0, i32 1
  %3439 = getelementptr inbounds %struct.Reg, %struct.Reg* %3438, i32 0, i32 0
  %RAX.i18 = bitcast %union.anon* %3439 to i64*
  %3440 = load i64, i64* %RAX.i18
  %3441 = load i64, i64* %PC.i17
  %3442 = add i64 %3441, 3
  store i64 %3442, i64* %PC.i17
  %3443 = trunc i64 %3440 to i32
  %3444 = add i32 1, %3443
  %3445 = zext i32 %3444 to i64
  store i64 %3445, i64* %RAX.i18, align 8
  %3446 = icmp ult i32 %3444, %3443
  %3447 = icmp ult i32 %3444, 1
  %3448 = or i1 %3446, %3447
  %3449 = zext i1 %3448 to i8
  %3450 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3449, i8* %3450, align 1
  %3451 = and i32 %3444, 255
  %3452 = call i32 @llvm.ctpop.i32(i32 %3451)
  %3453 = trunc i32 %3452 to i8
  %3454 = and i8 %3453, 1
  %3455 = xor i8 %3454, 1
  %3456 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3455, i8* %3456, align 1
  %3457 = xor i64 1, %3440
  %3458 = trunc i64 %3457 to i32
  %3459 = xor i32 %3458, %3444
  %3460 = lshr i32 %3459, 4
  %3461 = trunc i32 %3460 to i8
  %3462 = and i8 %3461, 1
  %3463 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3462, i8* %3463, align 1
  %3464 = icmp eq i32 %3444, 0
  %3465 = zext i1 %3464 to i8
  %3466 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3465, i8* %3466, align 1
  %3467 = lshr i32 %3444, 31
  %3468 = trunc i32 %3467 to i8
  %3469 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3468, i8* %3469, align 1
  %3470 = lshr i32 %3443, 31
  %3471 = xor i32 %3467, %3470
  %3472 = add i32 %3471, %3467
  %3473 = icmp eq i32 %3472, 2
  %3474 = zext i1 %3473 to i8
  %3475 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3474, i8* %3475, align 1
  store %struct.Memory* %loadMem_47c06c, %struct.Memory** %MEMORY
  %loadMem_47c06f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3477 = getelementptr inbounds %struct.GPR, %struct.GPR* %3476, i32 0, i32 33
  %3478 = getelementptr inbounds %struct.Reg, %struct.Reg* %3477, i32 0, i32 0
  %PC.i14 = bitcast %union.anon* %3478 to i64*
  %3479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3480 = getelementptr inbounds %struct.GPR, %struct.GPR* %3479, i32 0, i32 1
  %3481 = getelementptr inbounds %struct.Reg, %struct.Reg* %3480, i32 0, i32 0
  %EAX.i15 = bitcast %union.anon* %3481 to i32*
  %3482 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3483 = getelementptr inbounds %struct.GPR, %struct.GPR* %3482, i32 0, i32 15
  %3484 = getelementptr inbounds %struct.Reg, %struct.Reg* %3483, i32 0, i32 0
  %RBP.i16 = bitcast %union.anon* %3484 to i64*
  %3485 = load i64, i64* %RBP.i16
  %3486 = sub i64 %3485, 8
  %3487 = load i32, i32* %EAX.i15
  %3488 = zext i32 %3487 to i64
  %3489 = load i64, i64* %PC.i14
  %3490 = add i64 %3489, 3
  store i64 %3490, i64* %PC.i14
  %3491 = inttoptr i64 %3486 to i32*
  store i32 %3487, i32* %3491
  store %struct.Memory* %loadMem_47c06f, %struct.Memory** %MEMORY
  %loadMem_47c072 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3493 = getelementptr inbounds %struct.GPR, %struct.GPR* %3492, i32 0, i32 33
  %3494 = getelementptr inbounds %struct.Reg, %struct.Reg* %3493, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %3494 to i64*
  %3495 = load i64, i64* %PC.i13
  %3496 = add i64 %3495, -258
  %3497 = load i64, i64* %PC.i13
  %3498 = add i64 %3497, 5
  store i64 %3498, i64* %PC.i13
  %3499 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3496, i64* %3499, align 8
  store %struct.Memory* %loadMem_47c072, %struct.Memory** %MEMORY
  br label %block_.L_47bf70

block_.L_47c077:                                  ; preds = %block_.L_47bf70
  %loadMem_47c077 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3500 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3501 = getelementptr inbounds %struct.GPR, %struct.GPR* %3500, i32 0, i32 33
  %3502 = getelementptr inbounds %struct.Reg, %struct.Reg* %3501, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %3502 to i64*
  %3503 = load i64, i64* %PC.i12
  %3504 = add i64 %3503, 5
  %3505 = load i64, i64* %PC.i12
  %3506 = add i64 %3505, 5
  store i64 %3506, i64* %PC.i12
  %3507 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3504, i64* %3507, align 8
  store %struct.Memory* %loadMem_47c077, %struct.Memory** %MEMORY
  br label %block_.L_47c07c

block_.L_47c07c:                                  ; preds = %block_.L_47c077
  %loadMem_47c07c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3508 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3509 = getelementptr inbounds %struct.GPR, %struct.GPR* %3508, i32 0, i32 33
  %3510 = getelementptr inbounds %struct.Reg, %struct.Reg* %3509, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %3510 to i64*
  %3511 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3512 = getelementptr inbounds %struct.GPR, %struct.GPR* %3511, i32 0, i32 1
  %3513 = getelementptr inbounds %struct.Reg, %struct.Reg* %3512, i32 0, i32 0
  %RAX.i10 = bitcast %union.anon* %3513 to i64*
  %3514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3515 = getelementptr inbounds %struct.GPR, %struct.GPR* %3514, i32 0, i32 15
  %3516 = getelementptr inbounds %struct.Reg, %struct.Reg* %3515, i32 0, i32 0
  %RBP.i11 = bitcast %union.anon* %3516 to i64*
  %3517 = load i64, i64* %RBP.i11
  %3518 = sub i64 %3517, 12
  %3519 = load i64, i64* %PC.i9
  %3520 = add i64 %3519, 3
  store i64 %3520, i64* %PC.i9
  %3521 = inttoptr i64 %3518 to i32*
  %3522 = load i32, i32* %3521
  %3523 = zext i32 %3522 to i64
  store i64 %3523, i64* %RAX.i10, align 8
  store %struct.Memory* %loadMem_47c07c, %struct.Memory** %MEMORY
  %loadMem_47c07f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3525 = getelementptr inbounds %struct.GPR, %struct.GPR* %3524, i32 0, i32 33
  %3526 = getelementptr inbounds %struct.Reg, %struct.Reg* %3525, i32 0, i32 0
  %PC.i8 = bitcast %union.anon* %3526 to i64*
  %3527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3528 = getelementptr inbounds %struct.GPR, %struct.GPR* %3527, i32 0, i32 1
  %3529 = getelementptr inbounds %struct.Reg, %struct.Reg* %3528, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %3529 to i64*
  %3530 = load i64, i64* %RAX.i
  %3531 = load i64, i64* %PC.i8
  %3532 = add i64 %3531, 3
  store i64 %3532, i64* %PC.i8
  %3533 = trunc i64 %3530 to i32
  %3534 = add i32 1, %3533
  %3535 = zext i32 %3534 to i64
  store i64 %3535, i64* %RAX.i, align 8
  %3536 = icmp ult i32 %3534, %3533
  %3537 = icmp ult i32 %3534, 1
  %3538 = or i1 %3536, %3537
  %3539 = zext i1 %3538 to i8
  %3540 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3539, i8* %3540, align 1
  %3541 = and i32 %3534, 255
  %3542 = call i32 @llvm.ctpop.i32(i32 %3541)
  %3543 = trunc i32 %3542 to i8
  %3544 = and i8 %3543, 1
  %3545 = xor i8 %3544, 1
  %3546 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3545, i8* %3546, align 1
  %3547 = xor i64 1, %3530
  %3548 = trunc i64 %3547 to i32
  %3549 = xor i32 %3548, %3534
  %3550 = lshr i32 %3549, 4
  %3551 = trunc i32 %3550 to i8
  %3552 = and i8 %3551, 1
  %3553 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3552, i8* %3553, align 1
  %3554 = icmp eq i32 %3534, 0
  %3555 = zext i1 %3554 to i8
  %3556 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3555, i8* %3556, align 1
  %3557 = lshr i32 %3534, 31
  %3558 = trunc i32 %3557 to i8
  %3559 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3558, i8* %3559, align 1
  %3560 = lshr i32 %3533, 31
  %3561 = xor i32 %3557, %3560
  %3562 = add i32 %3561, %3557
  %3563 = icmp eq i32 %3562, 2
  %3564 = zext i1 %3563 to i8
  %3565 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3564, i8* %3565, align 1
  store %struct.Memory* %loadMem_47c07f, %struct.Memory** %MEMORY
  %loadMem_47c082 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3566 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3567 = getelementptr inbounds %struct.GPR, %struct.GPR* %3566, i32 0, i32 33
  %3568 = getelementptr inbounds %struct.Reg, %struct.Reg* %3567, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %3568 to i64*
  %3569 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3570 = getelementptr inbounds %struct.GPR, %struct.GPR* %3569, i32 0, i32 1
  %3571 = getelementptr inbounds %struct.Reg, %struct.Reg* %3570, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %3571 to i32*
  %3572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3573 = getelementptr inbounds %struct.GPR, %struct.GPR* %3572, i32 0, i32 15
  %3574 = getelementptr inbounds %struct.Reg, %struct.Reg* %3573, i32 0, i32 0
  %RBP.i7 = bitcast %union.anon* %3574 to i64*
  %3575 = load i64, i64* %RBP.i7
  %3576 = sub i64 %3575, 12
  %3577 = load i32, i32* %EAX.i
  %3578 = zext i32 %3577 to i64
  %3579 = load i64, i64* %PC.i6
  %3580 = add i64 %3579, 3
  store i64 %3580, i64* %PC.i6
  %3581 = inttoptr i64 %3576 to i32*
  store i32 %3577, i32* %3581
  store %struct.Memory* %loadMem_47c082, %struct.Memory** %MEMORY
  %loadMem_47c085 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3583 = getelementptr inbounds %struct.GPR, %struct.GPR* %3582, i32 0, i32 33
  %3584 = getelementptr inbounds %struct.Reg, %struct.Reg* %3583, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %3584 to i64*
  %3585 = load i64, i64* %PC.i5
  %3586 = add i64 %3585, -306
  %3587 = load i64, i64* %PC.i5
  %3588 = add i64 %3587, 5
  store i64 %3588, i64* %PC.i5
  %3589 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3586, i64* %3589, align 8
  store %struct.Memory* %loadMem_47c085, %struct.Memory** %MEMORY
  br label %block_.L_47bf53

block_.L_47c08a:                                  ; preds = %block_.L_47bf53
  %loadMem_47c08a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3591 = getelementptr inbounds %struct.GPR, %struct.GPR* %3590, i32 0, i32 33
  %3592 = getelementptr inbounds %struct.Reg, %struct.Reg* %3591, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %3592 to i64*
  %3593 = load i64, i64* %PC.i4
  %3594 = add i64 %3593, 5
  %3595 = load i64, i64* %PC.i4
  %3596 = add i64 %3595, 5
  store i64 %3596, i64* %PC.i4
  %3597 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3594, i64* %3597, align 8
  store %struct.Memory* %loadMem_47c08a, %struct.Memory** %MEMORY
  br label %block_.L_47c08f

block_.L_47c08f:                                  ; preds = %block_.L_47c08a, %block_.L_47bf47
  %loadMem_47c08f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3599 = getelementptr inbounds %struct.GPR, %struct.GPR* %3598, i32 0, i32 33
  %3600 = getelementptr inbounds %struct.Reg, %struct.Reg* %3599, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %3600 to i64*
  %3601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3602 = getelementptr inbounds %struct.GPR, %struct.GPR* %3601, i32 0, i32 15
  %3603 = getelementptr inbounds %struct.Reg, %struct.Reg* %3602, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %3603 to i64*
  %3604 = load i64, i64* %PC.i2
  %3605 = add i64 %3604, 1
  store i64 %3605, i64* %PC.i2
  %3606 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3607 = load i64, i64* %3606, align 8
  %3608 = add i64 %3607, 8
  %3609 = inttoptr i64 %3607 to i64*
  %3610 = load i64, i64* %3609
  store i64 %3610, i64* %RBP.i3, align 8
  store i64 %3608, i64* %3606, align 8
  store %struct.Memory* %loadMem_47c08f, %struct.Memory** %MEMORY
  %loadMem_47c090 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3612 = getelementptr inbounds %struct.GPR, %struct.GPR* %3611, i32 0, i32 33
  %3613 = getelementptr inbounds %struct.Reg, %struct.Reg* %3612, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %3613 to i64*
  %3614 = load i64, i64* %PC.i1
  %3615 = add i64 %3614, 1
  store i64 %3615, i64* %PC.i1
  %3616 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3617 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3618 = load i64, i64* %3617, align 8
  %3619 = inttoptr i64 %3618 to i64*
  %3620 = load i64, i64* %3619
  store i64 %3620, i64* %3616, align 8
  %3621 = add i64 %3618, 8
  store i64 %3621, i64* %3617, align 8
  store %struct.Memory* %loadMem_47c090, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_47c090
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

define %struct.Memory* @routine_je_.L_47bf4c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jge_.L_47bf47(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_addl__0x10___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i32 16, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RAX, align 8
  %15 = icmp ult i32 %13, %12
  %16 = icmp ult i32 %13, 16
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
  %26 = xor i64 16, %9
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

define %struct.Memory* @routine_cmpl__0x8__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i32 %14, 8
  %16 = icmp ult i32 %14, 8
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
  %25 = xor i32 %14, 8
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

define %struct.Memory* @routine_jge_.L_47bf34(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x8__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i32 %14, 8
  %16 = icmp ult i32 %14, 8
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
  %25 = xor i32 %14, 8
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

define %struct.Memory* @routine_jge_.L_47bf21(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_shll__0x3___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = shl i64 %12, 2
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

define %struct.Memory* @routine_jne_.L_47bea3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x6d33f0___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 7156720, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x10__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movswl_0x70d4d0___rcx_2____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = mul i64 %12, 2
  %14 = add i64 %13, 7394512
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i16*
  %18 = load i16, i16* %17
  %19 = sext i16 %18 to i64
  %20 = and i64 %19, 4294967295
  store i64 %20, i64* %RDX, align 8
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

define %struct.Memory* @routine_shll__cl___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 7
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RDX = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RDX
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
  store i64 %38, i64* %RDX, align 8
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

define %struct.Memory* @routine_shlq__0x8___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = shl i64 %9, 7
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

define %struct.Memory* @routine_addq__rsi___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %RSI
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

define %struct.Memory* @routine_shlq__0x5___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = shl i64 %9, 4
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

define %struct.Memory* @routine_movl__edx____rax__rsi_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 9
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RSI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RSI
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

define %struct.Memory* @routine_jmpq_.L_47bedb(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movswl_0x70d550___rcx_2____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = mul i64 %12, 2
  %14 = add i64 %13, 7394640
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i16*
  %18 = load i16, i16* %17
  %19 = sext i16 %18 to i64
  %20 = and i64 %19, 4294967295
  store i64 %20, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x720d90___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 7474576, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movswl_0x70d5d0___rcx_2____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = mul i64 %12, 2
  %14 = add i64 %13, 7394768
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i16*
  %18 = load i16, i16* %17
  %19 = sext i16 %18 to i64
  %20 = and i64 %19, 4294967295
  store i64 %20, i64* %RDX, align 8
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

define %struct.Memory* @routine_jmpq_.L_47be3e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_47bf26(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_47be2d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_47bf39(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_47be10(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_47c08f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jge_.L_47c08a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jge_.L_47c077(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jge_.L_47c064(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_47bfe6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movswl_0x4b9510___rcx_2____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = mul i64 %12, 2
  %14 = add i64 %13, 4953360
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i16*
  %18 = load i16, i16* %17
  %19 = sext i16 %18 to i64
  %20 = and i64 %19, 4294967295
  store i64 %20, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_47c01e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movswl_0x4b9590___rcx_2____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = mul i64 %12, 2
  %14 = add i64 %13, 4953488
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i16*
  %18 = load i16, i16* %17
  %19 = sext i16 %18 to i64
  %20 = and i64 %19, 4294967295
  store i64 %20, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movswl_0x4b9610___rcx_2____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = mul i64 %12, 2
  %14 = add i64 %13, 4953616
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i16*
  %18 = load i16, i16* %17
  %19 = sext i16 %18 to i64
  %20 = and i64 %19, 4294967295
  store i64 %20, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_47bf81(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_47c069(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_47bf70(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_47c07c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_47bf53(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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
