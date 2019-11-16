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
%G_0x6cb908_type = type <{ [8 x i8] }>
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
@seg_400514__fini = internal constant %seg_400514__fini_type <{ [9 x i8] c"H\83\EC\08H\83\C4\08\C3" }>
@seg_400520__rodata = internal constant %seg_400520__rodata_type <{ [4 x i8] c"\01\00\02\00" }>
@seg_400524__eh_frame_hdr = internal constant %seg_400524__eh_frame_hdr_type <{ [52 x i8] c"\01\1B\03;0\00\00\00\05\00\00\00|\FE\FF\FFL\00\00\00\AC\FE\FF\FFx\00\00\00d\FF\FF\FF\8C\00\00\00|\FF\FF\FF\A4\00\00\00\EC\FF\FF\FF\EC\00\00\00" }>
@seg_400558__eh_frame = internal constant %seg_400558__eh_frame_type <{ [208 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\07\10\10\00\00\00\1C\00\00\00(\FE\FF\FF+\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\10\00\00\00\1C\00\00\00,\FE\FF\FF\02\00\00\00\00\00\00\00\14\00\00\000\00\00\00\D0\FE\FF\FF\09\00\00\00\00\00\00\00\00\00\00\00D\00\00\00H\00\00\00\D0\FE\FF\FFe\00\00\00\00B\0E\10\8F\02B\0E\18\8E\03E\0E \8D\04B\0E(\8C\05H\0E0\86\06H\0E8\83\07M\0E@r\0E8A\0E0A\0E(B\0E B\0E\18B\0E\10B\0E\08\00\10\00\00\00\90\00\00\00\F8\FE\FF\FF\02\00\00\00\00\00\00\00\00\00\00\00" }>
@G_0x6cb8f8 = global %G_0x6cb8f8_type zeroinitializer
@G_0x6cb900 = global %G_0x6cb900_type zeroinitializer
@G_0x6cb908 = global %G_0x6cb908_type zeroinitializer

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
define %struct.Memory* @proceed2nextMacroblock(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_43b770 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_43b770, %struct.Memory** %MEMORY
  %loadMem_43b771 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i588 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i589 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i
  %27 = load i64, i64* %PC.i588
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i588
  store i64 %26, i64* %RBP.i589, align 8
  store %struct.Memory* %loadMem_43b771, %struct.Memory** %MEMORY
  %loadMem_43b774 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i586 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RAX.i587 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %PC.i586
  %36 = add i64 %35, 8
  store i64 %36, i64* %PC.i586
  %37 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %37, i64* %RAX.i587, align 8
  store %struct.Memory* %loadMem_43b774, %struct.Memory** %MEMORY
  %loadMem_43b77c = load %struct.Memory*, %struct.Memory** %MEMORY
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %39 = getelementptr inbounds %struct.GPR, %struct.GPR* %38, i32 0, i32 33
  %40 = getelementptr inbounds %struct.Reg, %struct.Reg* %39, i32 0, i32 0
  %PC.i584 = bitcast %union.anon* %40 to i64*
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %42 = getelementptr inbounds %struct.GPR, %struct.GPR* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.Reg, %struct.Reg* %42, i32 0, i32 0
  %RAX.i585 = bitcast %union.anon* %43 to i64*
  %44 = load i64, i64* %RAX.i585
  %45 = add i64 %44, 14168
  %46 = load i64, i64* %PC.i584
  %47 = add i64 %46, 7
  store i64 %47, i64* %PC.i584
  %48 = inttoptr i64 %45 to i64*
  %49 = load i64, i64* %48
  store i64 %49, i64* %RAX.i585, align 8
  store %struct.Memory* %loadMem_43b77c, %struct.Memory** %MEMORY
  %loadMem_43b783 = load %struct.Memory*, %struct.Memory** %MEMORY
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %51 = getelementptr inbounds %struct.GPR, %struct.GPR* %50, i32 0, i32 33
  %52 = getelementptr inbounds %struct.Reg, %struct.Reg* %51, i32 0, i32 0
  %PC.i582 = bitcast %union.anon* %52 to i64*
  %53 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %54 = getelementptr inbounds %struct.GPR, %struct.GPR* %53, i32 0, i32 5
  %55 = getelementptr inbounds %struct.Reg, %struct.Reg* %54, i32 0, i32 0
  %RCX.i583 = bitcast %union.anon* %55 to i64*
  %56 = load i64, i64* %PC.i582
  %57 = add i64 %56, 8
  store i64 %57, i64* %PC.i582
  %58 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %58, i64* %RCX.i583, align 8
  store %struct.Memory* %loadMem_43b783, %struct.Memory** %MEMORY
  %loadMem_43b78b = load %struct.Memory*, %struct.Memory** %MEMORY
  %59 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %60 = getelementptr inbounds %struct.GPR, %struct.GPR* %59, i32 0, i32 33
  %61 = getelementptr inbounds %struct.Reg, %struct.Reg* %60, i32 0, i32 0
  %PC.i580 = bitcast %union.anon* %61 to i64*
  %62 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %63 = getelementptr inbounds %struct.GPR, %struct.GPR* %62, i32 0, i32 5
  %64 = getelementptr inbounds %struct.Reg, %struct.Reg* %63, i32 0, i32 0
  %RCX.i581 = bitcast %union.anon* %64 to i64*
  %65 = load i64, i64* %RCX.i581
  %66 = add i64 %65, 12
  %67 = load i64, i64* %PC.i580
  %68 = add i64 %67, 4
  store i64 %68, i64* %PC.i580
  %69 = inttoptr i64 %66 to i32*
  %70 = load i32, i32* %69
  %71 = sext i32 %70 to i64
  store i64 %71, i64* %RCX.i581, align 8
  store %struct.Memory* %loadMem_43b78b, %struct.Memory** %MEMORY
  %loadMem_43b78f = load %struct.Memory*, %struct.Memory** %MEMORY
  %72 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %73 = getelementptr inbounds %struct.GPR, %struct.GPR* %72, i32 0, i32 33
  %74 = getelementptr inbounds %struct.Reg, %struct.Reg* %73, i32 0, i32 0
  %PC.i578 = bitcast %union.anon* %74 to i64*
  %75 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %76 = getelementptr inbounds %struct.GPR, %struct.GPR* %75, i32 0, i32 5
  %77 = getelementptr inbounds %struct.Reg, %struct.Reg* %76, i32 0, i32 0
  %RCX.i579 = bitcast %union.anon* %77 to i64*
  %78 = load i64, i64* %RCX.i579
  %79 = load i64, i64* %PC.i578
  %80 = add i64 %79, 7
  store i64 %80, i64* %PC.i578
  %81 = sext i64 %78 to i128
  %82 = and i128 %81, -18446744073709551616
  %83 = zext i64 %78 to i128
  %84 = or i128 %82, %83
  %85 = mul i128 632, %84
  %86 = trunc i128 %85 to i64
  store i64 %86, i64* %RCX.i579, align 8
  %87 = sext i64 %86 to i128
  %88 = icmp ne i128 %87, %85
  %89 = zext i1 %88 to i8
  %90 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %89, i8* %90, align 1
  %91 = trunc i128 %85 to i32
  %92 = and i32 %91, 255
  %93 = call i32 @llvm.ctpop.i32(i32 %92)
  %94 = trunc i32 %93 to i8
  %95 = and i8 %94, 1
  %96 = xor i8 %95, 1
  %97 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %96, i8* %97, align 1
  %98 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %98, align 1
  %99 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %99, align 1
  %100 = lshr i64 %86, 63
  %101 = trunc i64 %100 to i8
  %102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %101, i8* %102, align 1
  %103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %89, i8* %103, align 1
  store %struct.Memory* %loadMem_43b78f, %struct.Memory** %MEMORY
  %loadMem_43b796 = load %struct.Memory*, %struct.Memory** %MEMORY
  %104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %105 = getelementptr inbounds %struct.GPR, %struct.GPR* %104, i32 0, i32 33
  %106 = getelementptr inbounds %struct.Reg, %struct.Reg* %105, i32 0, i32 0
  %PC.i575 = bitcast %union.anon* %106 to i64*
  %107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %108 = getelementptr inbounds %struct.GPR, %struct.GPR* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.Reg, %struct.Reg* %108, i32 0, i32 0
  %RAX.i576 = bitcast %union.anon* %109 to i64*
  %110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %111 = getelementptr inbounds %struct.GPR, %struct.GPR* %110, i32 0, i32 5
  %112 = getelementptr inbounds %struct.Reg, %struct.Reg* %111, i32 0, i32 0
  %RCX.i577 = bitcast %union.anon* %112 to i64*
  %113 = load i64, i64* %RAX.i576
  %114 = load i64, i64* %RCX.i577
  %115 = load i64, i64* %PC.i575
  %116 = add i64 %115, 3
  store i64 %116, i64* %PC.i575
  %117 = add i64 %114, %113
  store i64 %117, i64* %RAX.i576, align 8
  %118 = icmp ult i64 %117, %113
  %119 = icmp ult i64 %117, %114
  %120 = or i1 %118, %119
  %121 = zext i1 %120 to i8
  %122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %121, i8* %122, align 1
  %123 = trunc i64 %117 to i32
  %124 = and i32 %123, 255
  %125 = call i32 @llvm.ctpop.i32(i32 %124)
  %126 = trunc i32 %125 to i8
  %127 = and i8 %126, 1
  %128 = xor i8 %127, 1
  %129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %128, i8* %129, align 1
  %130 = xor i64 %114, %113
  %131 = xor i64 %130, %117
  %132 = lshr i64 %131, 4
  %133 = trunc i64 %132 to i8
  %134 = and i8 %133, 1
  %135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %134, i8* %135, align 1
  %136 = icmp eq i64 %117, 0
  %137 = zext i1 %136 to i8
  %138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %137, i8* %138, align 1
  %139 = lshr i64 %117, 63
  %140 = trunc i64 %139 to i8
  %141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %140, i8* %141, align 1
  %142 = lshr i64 %113, 63
  %143 = lshr i64 %114, 63
  %144 = xor i64 %139, %142
  %145 = xor i64 %139, %143
  %146 = add i64 %144, %145
  %147 = icmp eq i64 %146, 2
  %148 = zext i1 %147 to i8
  %149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %148, i8* %149, align 1
  store %struct.Memory* %loadMem_43b796, %struct.Memory** %MEMORY
  %loadMem_43b799 = load %struct.Memory*, %struct.Memory** %MEMORY
  %150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %151 = getelementptr inbounds %struct.GPR, %struct.GPR* %150, i32 0, i32 33
  %152 = getelementptr inbounds %struct.Reg, %struct.Reg* %151, i32 0, i32 0
  %PC.i572 = bitcast %union.anon* %152 to i64*
  %153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %154 = getelementptr inbounds %struct.GPR, %struct.GPR* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.Reg, %struct.Reg* %154, i32 0, i32 0
  %RAX.i573 = bitcast %union.anon* %155 to i64*
  %156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %157 = getelementptr inbounds %struct.GPR, %struct.GPR* %156, i32 0, i32 15
  %158 = getelementptr inbounds %struct.Reg, %struct.Reg* %157, i32 0, i32 0
  %RBP.i574 = bitcast %union.anon* %158 to i64*
  %159 = load i64, i64* %RBP.i574
  %160 = sub i64 %159, 8
  %161 = load i64, i64* %RAX.i573
  %162 = load i64, i64* %PC.i572
  %163 = add i64 %162, 4
  store i64 %163, i64* %PC.i572
  %164 = inttoptr i64 %160 to i64*
  store i64 %161, i64* %164
  store %struct.Memory* %loadMem_43b799, %struct.Memory** %MEMORY
  %loadMem_43b79d = load %struct.Memory*, %struct.Memory** %MEMORY
  %165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %166 = getelementptr inbounds %struct.GPR, %struct.GPR* %165, i32 0, i32 33
  %167 = getelementptr inbounds %struct.Reg, %struct.Reg* %166, i32 0, i32 0
  %PC.i569 = bitcast %union.anon* %167 to i64*
  %168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %169 = getelementptr inbounds %struct.GPR, %struct.GPR* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.Reg, %struct.Reg* %169, i32 0, i32 0
  %RAX.i570 = bitcast %union.anon* %170 to i64*
  %171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %172 = getelementptr inbounds %struct.GPR, %struct.GPR* %171, i32 0, i32 15
  %173 = getelementptr inbounds %struct.Reg, %struct.Reg* %172, i32 0, i32 0
  %RBP.i571 = bitcast %union.anon* %173 to i64*
  %174 = load i64, i64* %RBP.i571
  %175 = sub i64 %174, 8
  %176 = load i64, i64* %PC.i569
  %177 = add i64 %176, 4
  store i64 %177, i64* %PC.i569
  %178 = inttoptr i64 %175 to i64*
  %179 = load i64, i64* %178
  store i64 %179, i64* %RAX.i570, align 8
  store %struct.Memory* %loadMem_43b79d, %struct.Memory** %MEMORY
  %loadMem_43b7a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %181 = getelementptr inbounds %struct.GPR, %struct.GPR* %180, i32 0, i32 33
  %182 = getelementptr inbounds %struct.Reg, %struct.Reg* %181, i32 0, i32 0
  %PC.i567 = bitcast %union.anon* %182 to i64*
  %183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %184 = getelementptr inbounds %struct.GPR, %struct.GPR* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.Reg, %struct.Reg* %184, i32 0, i32 0
  %RAX.i568 = bitcast %union.anon* %185 to i64*
  %186 = load i64, i64* %RAX.i568
  %187 = load i64, i64* %PC.i567
  %188 = add i64 %187, 4
  store i64 %188, i64* %PC.i567
  %189 = add i64 20, %186
  store i64 %189, i64* %RAX.i568, align 8
  %190 = icmp ult i64 %189, %186
  %191 = icmp ult i64 %189, 20
  %192 = or i1 %190, %191
  %193 = zext i1 %192 to i8
  %194 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %193, i8* %194, align 1
  %195 = trunc i64 %189 to i32
  %196 = and i32 %195, 255
  %197 = call i32 @llvm.ctpop.i32(i32 %196)
  %198 = trunc i32 %197 to i8
  %199 = and i8 %198, 1
  %200 = xor i8 %199, 1
  %201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %200, i8* %201, align 1
  %202 = xor i64 20, %186
  %203 = xor i64 %202, %189
  %204 = lshr i64 %203, 4
  %205 = trunc i64 %204 to i8
  %206 = and i8 %205, 1
  %207 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %206, i8* %207, align 1
  %208 = icmp eq i64 %189, 0
  %209 = zext i1 %208 to i8
  %210 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %209, i8* %210, align 1
  %211 = lshr i64 %189, 63
  %212 = trunc i64 %211 to i8
  %213 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %212, i8* %213, align 1
  %214 = lshr i64 %186, 63
  %215 = xor i64 %211, %214
  %216 = add i64 %215, %211
  %217 = icmp eq i64 %216, 2
  %218 = zext i1 %217 to i8
  %219 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %218, i8* %219, align 1
  store %struct.Memory* %loadMem_43b7a1, %struct.Memory** %MEMORY
  %loadMem_43b7a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %221 = getelementptr inbounds %struct.GPR, %struct.GPR* %220, i32 0, i32 33
  %222 = getelementptr inbounds %struct.Reg, %struct.Reg* %221, i32 0, i32 0
  %PC.i564 = bitcast %union.anon* %222 to i64*
  %223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %224 = getelementptr inbounds %struct.GPR, %struct.GPR* %223, i32 0, i32 1
  %225 = getelementptr inbounds %struct.Reg, %struct.Reg* %224, i32 0, i32 0
  %RAX.i565 = bitcast %union.anon* %225 to i64*
  %226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %227 = getelementptr inbounds %struct.GPR, %struct.GPR* %226, i32 0, i32 15
  %228 = getelementptr inbounds %struct.Reg, %struct.Reg* %227, i32 0, i32 0
  %RBP.i566 = bitcast %union.anon* %228 to i64*
  %229 = load i64, i64* %RBP.i566
  %230 = sub i64 %229, 16
  %231 = load i64, i64* %RAX.i565
  %232 = load i64, i64* %PC.i564
  %233 = add i64 %232, 4
  store i64 %233, i64* %PC.i564
  %234 = inttoptr i64 %230 to i64*
  store i64 %231, i64* %234
  store %struct.Memory* %loadMem_43b7a5, %struct.Memory** %MEMORY
  %loadMem_43b7a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %236 = getelementptr inbounds %struct.GPR, %struct.GPR* %235, i32 0, i32 33
  %237 = getelementptr inbounds %struct.Reg, %struct.Reg* %236, i32 0, i32 0
  %PC.i561 = bitcast %union.anon* %237 to i64*
  %238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %239 = getelementptr inbounds %struct.GPR, %struct.GPR* %238, i32 0, i32 1
  %240 = getelementptr inbounds %struct.Reg, %struct.Reg* %239, i32 0, i32 0
  %RAX.i562 = bitcast %union.anon* %240 to i64*
  %241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %242 = getelementptr inbounds %struct.GPR, %struct.GPR* %241, i32 0, i32 15
  %243 = getelementptr inbounds %struct.Reg, %struct.Reg* %242, i32 0, i32 0
  %RBP.i563 = bitcast %union.anon* %243 to i64*
  %244 = load i64, i64* %RBP.i563
  %245 = sub i64 %244, 16
  %246 = load i64, i64* %PC.i561
  %247 = add i64 %246, 4
  store i64 %247, i64* %PC.i561
  %248 = inttoptr i64 %245 to i64*
  %249 = load i64, i64* %248
  store i64 %249, i64* %RAX.i562, align 8
  store %struct.Memory* %loadMem_43b7a9, %struct.Memory** %MEMORY
  %loadMem_43b7ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %251 = getelementptr inbounds %struct.GPR, %struct.GPR* %250, i32 0, i32 33
  %252 = getelementptr inbounds %struct.Reg, %struct.Reg* %251, i32 0, i32 0
  %PC.i558 = bitcast %union.anon* %252 to i64*
  %253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %254 = getelementptr inbounds %struct.GPR, %struct.GPR* %253, i32 0, i32 1
  %255 = getelementptr inbounds %struct.Reg, %struct.Reg* %254, i32 0, i32 0
  %RAX.i559 = bitcast %union.anon* %255 to i64*
  %256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %257 = getelementptr inbounds %struct.GPR, %struct.GPR* %256, i32 0, i32 7
  %258 = getelementptr inbounds %struct.Reg, %struct.Reg* %257, i32 0, i32 0
  %RDX.i560 = bitcast %union.anon* %258 to i64*
  %259 = load i64, i64* %RAX.i559
  %260 = add i64 %259, 8
  %261 = load i64, i64* %PC.i558
  %262 = add i64 %261, 3
  store i64 %262, i64* %PC.i558
  %263 = inttoptr i64 %260 to i32*
  %264 = load i32, i32* %263
  %265 = zext i32 %264 to i64
  store i64 %265, i64* %RDX.i560, align 8
  store %struct.Memory* %loadMem_43b7ad, %struct.Memory** %MEMORY
  %loadMem_43b7b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %267 = getelementptr inbounds %struct.GPR, %struct.GPR* %266, i32 0, i32 33
  %268 = getelementptr inbounds %struct.Reg, %struct.Reg* %267, i32 0, i32 0
  %PC.i556 = bitcast %union.anon* %268 to i64*
  %269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %270 = getelementptr inbounds %struct.GPR, %struct.GPR* %269, i32 0, i32 1
  %271 = getelementptr inbounds %struct.Reg, %struct.Reg* %270, i32 0, i32 0
  %RAX.i557 = bitcast %union.anon* %271 to i64*
  %272 = load i64, i64* %PC.i556
  %273 = add i64 %272, 8
  store i64 %273, i64* %PC.i556
  %274 = load i64, i64* bitcast (%G_0x6cb908_type* @G_0x6cb908 to i64*)
  store i64 %274, i64* %RAX.i557, align 8
  store %struct.Memory* %loadMem_43b7b0, %struct.Memory** %MEMORY
  %loadMem_43b7b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %276 = getelementptr inbounds %struct.GPR, %struct.GPR* %275, i32 0, i32 33
  %277 = getelementptr inbounds %struct.Reg, %struct.Reg* %276, i32 0, i32 0
  %PC.i554 = bitcast %union.anon* %277 to i64*
  %278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %279 = getelementptr inbounds %struct.GPR, %struct.GPR* %278, i32 0, i32 5
  %280 = getelementptr inbounds %struct.Reg, %struct.Reg* %279, i32 0, i32 0
  %RCX.i555 = bitcast %union.anon* %280 to i64*
  %281 = load i64, i64* %PC.i554
  %282 = add i64 %281, 8
  store i64 %282, i64* %PC.i554
  %283 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %283, i64* %RCX.i555, align 8
  store %struct.Memory* %loadMem_43b7b8, %struct.Memory** %MEMORY
  %loadMem_43b7c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %285 = getelementptr inbounds %struct.GPR, %struct.GPR* %284, i32 0, i32 33
  %286 = getelementptr inbounds %struct.Reg, %struct.Reg* %285, i32 0, i32 0
  %PC.i552 = bitcast %union.anon* %286 to i64*
  %287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %288 = getelementptr inbounds %struct.GPR, %struct.GPR* %287, i32 0, i32 5
  %289 = getelementptr inbounds %struct.Reg, %struct.Reg* %288, i32 0, i32 0
  %RCX.i553 = bitcast %union.anon* %289 to i64*
  %290 = load i64, i64* %RCX.i553
  %291 = add i64 %290, 24
  %292 = load i64, i64* %PC.i552
  %293 = add i64 %292, 4
  store i64 %293, i64* %PC.i552
  %294 = inttoptr i64 %291 to i32*
  %295 = load i32, i32* %294
  %296 = sext i32 %295 to i64
  store i64 %296, i64* %RCX.i553, align 8
  store %struct.Memory* %loadMem_43b7c0, %struct.Memory** %MEMORY
  %loadMem_43b7c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %298 = getelementptr inbounds %struct.GPR, %struct.GPR* %297, i32 0, i32 33
  %299 = getelementptr inbounds %struct.Reg, %struct.Reg* %298, i32 0, i32 0
  %PC.i548 = bitcast %union.anon* %299 to i64*
  %300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %301 = getelementptr inbounds %struct.GPR, %struct.GPR* %300, i32 0, i32 1
  %302 = getelementptr inbounds %struct.Reg, %struct.Reg* %301, i32 0, i32 0
  %RAX.i549 = bitcast %union.anon* %302 to i64*
  %303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %304 = getelementptr inbounds %struct.GPR, %struct.GPR* %303, i32 0, i32 5
  %305 = getelementptr inbounds %struct.Reg, %struct.Reg* %304, i32 0, i32 0
  %RCX.i550 = bitcast %union.anon* %305 to i64*
  %306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %307 = getelementptr inbounds %struct.GPR, %struct.GPR* %306, i32 0, i32 7
  %308 = getelementptr inbounds %struct.Reg, %struct.Reg* %307, i32 0, i32 0
  %RDX.i551 = bitcast %union.anon* %308 to i64*
  %309 = load i64, i64* %RDX.i551
  %310 = load i64, i64* %RAX.i549
  %311 = load i64, i64* %RCX.i550
  %312 = mul i64 %311, 4
  %313 = add i64 %310, 1348
  %314 = add i64 %313, %312
  %315 = load i64, i64* %PC.i548
  %316 = add i64 %315, 7
  store i64 %316, i64* %PC.i548
  %317 = trunc i64 %309 to i32
  %318 = inttoptr i64 %314 to i32*
  %319 = load i32, i32* %318
  %320 = add i32 %319, %317
  %321 = zext i32 %320 to i64
  store i64 %321, i64* %RDX.i551, align 8
  %322 = icmp ult i32 %320, %317
  %323 = icmp ult i32 %320, %319
  %324 = or i1 %322, %323
  %325 = zext i1 %324 to i8
  %326 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %325, i8* %326, align 1
  %327 = and i32 %320, 255
  %328 = call i32 @llvm.ctpop.i32(i32 %327)
  %329 = trunc i32 %328 to i8
  %330 = and i8 %329, 1
  %331 = xor i8 %330, 1
  %332 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %331, i8* %332, align 1
  %333 = xor i32 %319, %317
  %334 = xor i32 %333, %320
  %335 = lshr i32 %334, 4
  %336 = trunc i32 %335 to i8
  %337 = and i8 %336, 1
  %338 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %337, i8* %338, align 1
  %339 = icmp eq i32 %320, 0
  %340 = zext i1 %339 to i8
  %341 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %340, i8* %341, align 1
  %342 = lshr i32 %320, 31
  %343 = trunc i32 %342 to i8
  %344 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %343, i8* %344, align 1
  %345 = lshr i32 %317, 31
  %346 = lshr i32 %319, 31
  %347 = xor i32 %342, %345
  %348 = xor i32 %342, %346
  %349 = add i32 %347, %348
  %350 = icmp eq i32 %349, 2
  %351 = zext i1 %350 to i8
  %352 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %351, i8* %352, align 1
  store %struct.Memory* %loadMem_43b7c4, %struct.Memory** %MEMORY
  %loadMem_43b7cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %354 = getelementptr inbounds %struct.GPR, %struct.GPR* %353, i32 0, i32 33
  %355 = getelementptr inbounds %struct.Reg, %struct.Reg* %354, i32 0, i32 0
  %PC.i544 = bitcast %union.anon* %355 to i64*
  %356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %357 = getelementptr inbounds %struct.GPR, %struct.GPR* %356, i32 0, i32 7
  %358 = getelementptr inbounds %struct.Reg, %struct.Reg* %357, i32 0, i32 0
  %EDX.i545 = bitcast %union.anon* %358 to i32*
  %359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %360 = getelementptr inbounds %struct.GPR, %struct.GPR* %359, i32 0, i32 1
  %361 = getelementptr inbounds %struct.Reg, %struct.Reg* %360, i32 0, i32 0
  %RAX.i546 = bitcast %union.anon* %361 to i64*
  %362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %363 = getelementptr inbounds %struct.GPR, %struct.GPR* %362, i32 0, i32 5
  %364 = getelementptr inbounds %struct.Reg, %struct.Reg* %363, i32 0, i32 0
  %RCX.i547 = bitcast %union.anon* %364 to i64*
  %365 = load i64, i64* %RAX.i546
  %366 = load i64, i64* %RCX.i547
  %367 = mul i64 %366, 4
  %368 = add i64 %365, 1348
  %369 = add i64 %368, %367
  %370 = load i32, i32* %EDX.i545
  %371 = zext i32 %370 to i64
  %372 = load i64, i64* %PC.i544
  %373 = add i64 %372, 7
  store i64 %373, i64* %PC.i544
  %374 = inttoptr i64 %369 to i32*
  store i32 %370, i32* %374
  store %struct.Memory* %loadMem_43b7cb, %struct.Memory** %MEMORY
  %loadMem_43b7d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %376 = getelementptr inbounds %struct.GPR, %struct.GPR* %375, i32 0, i32 33
  %377 = getelementptr inbounds %struct.Reg, %struct.Reg* %376, i32 0, i32 0
  %PC.i541 = bitcast %union.anon* %377 to i64*
  %378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %379 = getelementptr inbounds %struct.GPR, %struct.GPR* %378, i32 0, i32 1
  %380 = getelementptr inbounds %struct.Reg, %struct.Reg* %379, i32 0, i32 0
  %RAX.i542 = bitcast %union.anon* %380 to i64*
  %381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %382 = getelementptr inbounds %struct.GPR, %struct.GPR* %381, i32 0, i32 15
  %383 = getelementptr inbounds %struct.Reg, %struct.Reg* %382, i32 0, i32 0
  %RBP.i543 = bitcast %union.anon* %383 to i64*
  %384 = load i64, i64* %RBP.i543
  %385 = sub i64 %384, 16
  %386 = load i64, i64* %PC.i541
  %387 = add i64 %386, 4
  store i64 %387, i64* %PC.i541
  %388 = inttoptr i64 %385 to i64*
  %389 = load i64, i64* %388
  store i64 %389, i64* %RAX.i542, align 8
  store %struct.Memory* %loadMem_43b7d2, %struct.Memory** %MEMORY
  %loadMem_43b7d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %391 = getelementptr inbounds %struct.GPR, %struct.GPR* %390, i32 0, i32 33
  %392 = getelementptr inbounds %struct.Reg, %struct.Reg* %391, i32 0, i32 0
  %PC.i538 = bitcast %union.anon* %392 to i64*
  %393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %394 = getelementptr inbounds %struct.GPR, %struct.GPR* %393, i32 0, i32 1
  %395 = getelementptr inbounds %struct.Reg, %struct.Reg* %394, i32 0, i32 0
  %RAX.i539 = bitcast %union.anon* %395 to i64*
  %396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %397 = getelementptr inbounds %struct.GPR, %struct.GPR* %396, i32 0, i32 7
  %398 = getelementptr inbounds %struct.Reg, %struct.Reg* %397, i32 0, i32 0
  %RDX.i540 = bitcast %union.anon* %398 to i64*
  %399 = load i64, i64* %RAX.i539
  %400 = add i64 %399, 20
  %401 = load i64, i64* %PC.i538
  %402 = add i64 %401, 3
  store i64 %402, i64* %PC.i538
  %403 = inttoptr i64 %400 to i32*
  %404 = load i32, i32* %403
  %405 = zext i32 %404 to i64
  store i64 %405, i64* %RDX.i540, align 8
  store %struct.Memory* %loadMem_43b7d6, %struct.Memory** %MEMORY
  %loadMem_43b7d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %407 = getelementptr inbounds %struct.GPR, %struct.GPR* %406, i32 0, i32 33
  %408 = getelementptr inbounds %struct.Reg, %struct.Reg* %407, i32 0, i32 0
  %PC.i536 = bitcast %union.anon* %408 to i64*
  %409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %410 = getelementptr inbounds %struct.GPR, %struct.GPR* %409, i32 0, i32 1
  %411 = getelementptr inbounds %struct.Reg, %struct.Reg* %410, i32 0, i32 0
  %RAX.i537 = bitcast %union.anon* %411 to i64*
  %412 = load i64, i64* %PC.i536
  %413 = add i64 %412, 8
  store i64 %413, i64* %PC.i536
  %414 = load i64, i64* bitcast (%G_0x6cb908_type* @G_0x6cb908 to i64*)
  store i64 %414, i64* %RAX.i537, align 8
  store %struct.Memory* %loadMem_43b7d9, %struct.Memory** %MEMORY
  %loadMem_43b7e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %416 = getelementptr inbounds %struct.GPR, %struct.GPR* %415, i32 0, i32 33
  %417 = getelementptr inbounds %struct.Reg, %struct.Reg* %416, i32 0, i32 0
  %PC.i534 = bitcast %union.anon* %417 to i64*
  %418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %419 = getelementptr inbounds %struct.GPR, %struct.GPR* %418, i32 0, i32 5
  %420 = getelementptr inbounds %struct.Reg, %struct.Reg* %419, i32 0, i32 0
  %RCX.i535 = bitcast %union.anon* %420 to i64*
  %421 = load i64, i64* %PC.i534
  %422 = add i64 %421, 8
  store i64 %422, i64* %PC.i534
  %423 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %423, i64* %RCX.i535, align 8
  store %struct.Memory* %loadMem_43b7e1, %struct.Memory** %MEMORY
  %loadMem_43b7e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %425 = getelementptr inbounds %struct.GPR, %struct.GPR* %424, i32 0, i32 33
  %426 = getelementptr inbounds %struct.Reg, %struct.Reg* %425, i32 0, i32 0
  %PC.i532 = bitcast %union.anon* %426 to i64*
  %427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %428 = getelementptr inbounds %struct.GPR, %struct.GPR* %427, i32 0, i32 5
  %429 = getelementptr inbounds %struct.Reg, %struct.Reg* %428, i32 0, i32 0
  %RCX.i533 = bitcast %union.anon* %429 to i64*
  %430 = load i64, i64* %RCX.i533
  %431 = add i64 %430, 24
  %432 = load i64, i64* %PC.i532
  %433 = add i64 %432, 4
  store i64 %433, i64* %PC.i532
  %434 = inttoptr i64 %431 to i32*
  %435 = load i32, i32* %434
  %436 = sext i32 %435 to i64
  store i64 %436, i64* %RCX.i533, align 8
  store %struct.Memory* %loadMem_43b7e9, %struct.Memory** %MEMORY
  %loadMem_43b7ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %438 = getelementptr inbounds %struct.GPR, %struct.GPR* %437, i32 0, i32 33
  %439 = getelementptr inbounds %struct.Reg, %struct.Reg* %438, i32 0, i32 0
  %PC.i528 = bitcast %union.anon* %439 to i64*
  %440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %441 = getelementptr inbounds %struct.GPR, %struct.GPR* %440, i32 0, i32 1
  %442 = getelementptr inbounds %struct.Reg, %struct.Reg* %441, i32 0, i32 0
  %RAX.i529 = bitcast %union.anon* %442 to i64*
  %443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %444 = getelementptr inbounds %struct.GPR, %struct.GPR* %443, i32 0, i32 5
  %445 = getelementptr inbounds %struct.Reg, %struct.Reg* %444, i32 0, i32 0
  %RCX.i530 = bitcast %union.anon* %445 to i64*
  %446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %447 = getelementptr inbounds %struct.GPR, %struct.GPR* %446, i32 0, i32 7
  %448 = getelementptr inbounds %struct.Reg, %struct.Reg* %447, i32 0, i32 0
  %RDX.i531 = bitcast %union.anon* %448 to i64*
  %449 = load i64, i64* %RDX.i531
  %450 = load i64, i64* %RAX.i529
  %451 = load i64, i64* %RCX.i530
  %452 = mul i64 %451, 4
  %453 = add i64 %450, 1408
  %454 = add i64 %453, %452
  %455 = load i64, i64* %PC.i528
  %456 = add i64 %455, 7
  store i64 %456, i64* %PC.i528
  %457 = trunc i64 %449 to i32
  %458 = inttoptr i64 %454 to i32*
  %459 = load i32, i32* %458
  %460 = add i32 %459, %457
  %461 = zext i32 %460 to i64
  store i64 %461, i64* %RDX.i531, align 8
  %462 = icmp ult i32 %460, %457
  %463 = icmp ult i32 %460, %459
  %464 = or i1 %462, %463
  %465 = zext i1 %464 to i8
  %466 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %465, i8* %466, align 1
  %467 = and i32 %460, 255
  %468 = call i32 @llvm.ctpop.i32(i32 %467)
  %469 = trunc i32 %468 to i8
  %470 = and i8 %469, 1
  %471 = xor i8 %470, 1
  %472 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %471, i8* %472, align 1
  %473 = xor i32 %459, %457
  %474 = xor i32 %473, %460
  %475 = lshr i32 %474, 4
  %476 = trunc i32 %475 to i8
  %477 = and i8 %476, 1
  %478 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %477, i8* %478, align 1
  %479 = icmp eq i32 %460, 0
  %480 = zext i1 %479 to i8
  %481 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %480, i8* %481, align 1
  %482 = lshr i32 %460, 31
  %483 = trunc i32 %482 to i8
  %484 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %483, i8* %484, align 1
  %485 = lshr i32 %457, 31
  %486 = lshr i32 %459, 31
  %487 = xor i32 %482, %485
  %488 = xor i32 %482, %486
  %489 = add i32 %487, %488
  %490 = icmp eq i32 %489, 2
  %491 = zext i1 %490 to i8
  %492 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %491, i8* %492, align 1
  store %struct.Memory* %loadMem_43b7ed, %struct.Memory** %MEMORY
  %loadMem_43b7f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %494 = getelementptr inbounds %struct.GPR, %struct.GPR* %493, i32 0, i32 33
  %495 = getelementptr inbounds %struct.Reg, %struct.Reg* %494, i32 0, i32 0
  %PC.i524 = bitcast %union.anon* %495 to i64*
  %496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %497 = getelementptr inbounds %struct.GPR, %struct.GPR* %496, i32 0, i32 7
  %498 = getelementptr inbounds %struct.Reg, %struct.Reg* %497, i32 0, i32 0
  %EDX.i525 = bitcast %union.anon* %498 to i32*
  %499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %500 = getelementptr inbounds %struct.GPR, %struct.GPR* %499, i32 0, i32 1
  %501 = getelementptr inbounds %struct.Reg, %struct.Reg* %500, i32 0, i32 0
  %RAX.i526 = bitcast %union.anon* %501 to i64*
  %502 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %503 = getelementptr inbounds %struct.GPR, %struct.GPR* %502, i32 0, i32 5
  %504 = getelementptr inbounds %struct.Reg, %struct.Reg* %503, i32 0, i32 0
  %RCX.i527 = bitcast %union.anon* %504 to i64*
  %505 = load i64, i64* %RAX.i526
  %506 = load i64, i64* %RCX.i527
  %507 = mul i64 %506, 4
  %508 = add i64 %505, 1408
  %509 = add i64 %508, %507
  %510 = load i32, i32* %EDX.i525
  %511 = zext i32 %510 to i64
  %512 = load i64, i64* %PC.i524
  %513 = add i64 %512, 7
  store i64 %513, i64* %PC.i524
  %514 = inttoptr i64 %509 to i32*
  store i32 %510, i32* %514
  store %struct.Memory* %loadMem_43b7f4, %struct.Memory** %MEMORY
  %loadMem_43b7fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %516 = getelementptr inbounds %struct.GPR, %struct.GPR* %515, i32 0, i32 33
  %517 = getelementptr inbounds %struct.Reg, %struct.Reg* %516, i32 0, i32 0
  %PC.i521 = bitcast %union.anon* %517 to i64*
  %518 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %519 = getelementptr inbounds %struct.GPR, %struct.GPR* %518, i32 0, i32 1
  %520 = getelementptr inbounds %struct.Reg, %struct.Reg* %519, i32 0, i32 0
  %RAX.i522 = bitcast %union.anon* %520 to i64*
  %521 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %522 = getelementptr inbounds %struct.GPR, %struct.GPR* %521, i32 0, i32 15
  %523 = getelementptr inbounds %struct.Reg, %struct.Reg* %522, i32 0, i32 0
  %RBP.i523 = bitcast %union.anon* %523 to i64*
  %524 = load i64, i64* %RBP.i523
  %525 = sub i64 %524, 16
  %526 = load i64, i64* %PC.i521
  %527 = add i64 %526, 4
  store i64 %527, i64* %PC.i521
  %528 = inttoptr i64 %525 to i64*
  %529 = load i64, i64* %528
  store i64 %529, i64* %RAX.i522, align 8
  store %struct.Memory* %loadMem_43b7fb, %struct.Memory** %MEMORY
  %loadMem_43b7ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %531 = getelementptr inbounds %struct.GPR, %struct.GPR* %530, i32 0, i32 33
  %532 = getelementptr inbounds %struct.Reg, %struct.Reg* %531, i32 0, i32 0
  %PC.i518 = bitcast %union.anon* %532 to i64*
  %533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %534 = getelementptr inbounds %struct.GPR, %struct.GPR* %533, i32 0, i32 1
  %535 = getelementptr inbounds %struct.Reg, %struct.Reg* %534, i32 0, i32 0
  %RAX.i519 = bitcast %union.anon* %535 to i64*
  %536 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %537 = getelementptr inbounds %struct.GPR, %struct.GPR* %536, i32 0, i32 7
  %538 = getelementptr inbounds %struct.Reg, %struct.Reg* %537, i32 0, i32 0
  %RDX.i520 = bitcast %union.anon* %538 to i64*
  %539 = load i64, i64* %RAX.i519
  %540 = add i64 %539, 16
  %541 = load i64, i64* %PC.i518
  %542 = add i64 %541, 3
  store i64 %542, i64* %PC.i518
  %543 = inttoptr i64 %540 to i32*
  %544 = load i32, i32* %543
  %545 = zext i32 %544 to i64
  store i64 %545, i64* %RDX.i520, align 8
  store %struct.Memory* %loadMem_43b7ff, %struct.Memory** %MEMORY
  %loadMem_43b802 = load %struct.Memory*, %struct.Memory** %MEMORY
  %546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %547 = getelementptr inbounds %struct.GPR, %struct.GPR* %546, i32 0, i32 33
  %548 = getelementptr inbounds %struct.Reg, %struct.Reg* %547, i32 0, i32 0
  %PC.i516 = bitcast %union.anon* %548 to i64*
  %549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %550 = getelementptr inbounds %struct.GPR, %struct.GPR* %549, i32 0, i32 1
  %551 = getelementptr inbounds %struct.Reg, %struct.Reg* %550, i32 0, i32 0
  %RAX.i517 = bitcast %union.anon* %551 to i64*
  %552 = load i64, i64* %PC.i516
  %553 = add i64 %552, 8
  store i64 %553, i64* %PC.i516
  %554 = load i64, i64* bitcast (%G_0x6cb908_type* @G_0x6cb908 to i64*)
  store i64 %554, i64* %RAX.i517, align 8
  store %struct.Memory* %loadMem_43b802, %struct.Memory** %MEMORY
  %loadMem_43b80a = load %struct.Memory*, %struct.Memory** %MEMORY
  %555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %556 = getelementptr inbounds %struct.GPR, %struct.GPR* %555, i32 0, i32 33
  %557 = getelementptr inbounds %struct.Reg, %struct.Reg* %556, i32 0, i32 0
  %PC.i514 = bitcast %union.anon* %557 to i64*
  %558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %559 = getelementptr inbounds %struct.GPR, %struct.GPR* %558, i32 0, i32 5
  %560 = getelementptr inbounds %struct.Reg, %struct.Reg* %559, i32 0, i32 0
  %RCX.i515 = bitcast %union.anon* %560 to i64*
  %561 = load i64, i64* %PC.i514
  %562 = add i64 %561, 8
  store i64 %562, i64* %PC.i514
  %563 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %563, i64* %RCX.i515, align 8
  store %struct.Memory* %loadMem_43b80a, %struct.Memory** %MEMORY
  %loadMem_43b812 = load %struct.Memory*, %struct.Memory** %MEMORY
  %564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %565 = getelementptr inbounds %struct.GPR, %struct.GPR* %564, i32 0, i32 33
  %566 = getelementptr inbounds %struct.Reg, %struct.Reg* %565, i32 0, i32 0
  %PC.i512 = bitcast %union.anon* %566 to i64*
  %567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %568 = getelementptr inbounds %struct.GPR, %struct.GPR* %567, i32 0, i32 5
  %569 = getelementptr inbounds %struct.Reg, %struct.Reg* %568, i32 0, i32 0
  %RCX.i513 = bitcast %union.anon* %569 to i64*
  %570 = load i64, i64* %RCX.i513
  %571 = add i64 %570, 24
  %572 = load i64, i64* %PC.i512
  %573 = add i64 %572, 4
  store i64 %573, i64* %PC.i512
  %574 = inttoptr i64 %571 to i32*
  %575 = load i32, i32* %574
  %576 = sext i32 %575 to i64
  store i64 %576, i64* %RCX.i513, align 8
  store %struct.Memory* %loadMem_43b812, %struct.Memory** %MEMORY
  %loadMem_43b816 = load %struct.Memory*, %struct.Memory** %MEMORY
  %577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %578 = getelementptr inbounds %struct.GPR, %struct.GPR* %577, i32 0, i32 33
  %579 = getelementptr inbounds %struct.Reg, %struct.Reg* %578, i32 0, i32 0
  %PC.i508 = bitcast %union.anon* %579 to i64*
  %580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %581 = getelementptr inbounds %struct.GPR, %struct.GPR* %580, i32 0, i32 1
  %582 = getelementptr inbounds %struct.Reg, %struct.Reg* %581, i32 0, i32 0
  %RAX.i509 = bitcast %union.anon* %582 to i64*
  %583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %584 = getelementptr inbounds %struct.GPR, %struct.GPR* %583, i32 0, i32 5
  %585 = getelementptr inbounds %struct.Reg, %struct.Reg* %584, i32 0, i32 0
  %RCX.i510 = bitcast %union.anon* %585 to i64*
  %586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %587 = getelementptr inbounds %struct.GPR, %struct.GPR* %586, i32 0, i32 7
  %588 = getelementptr inbounds %struct.Reg, %struct.Reg* %587, i32 0, i32 0
  %RDX.i511 = bitcast %union.anon* %588 to i64*
  %589 = load i64, i64* %RDX.i511
  %590 = load i64, i64* %RAX.i509
  %591 = load i64, i64* %RCX.i510
  %592 = mul i64 %591, 4
  %593 = add i64 %590, 1388
  %594 = add i64 %593, %592
  %595 = load i64, i64* %PC.i508
  %596 = add i64 %595, 7
  store i64 %596, i64* %PC.i508
  %597 = trunc i64 %589 to i32
  %598 = inttoptr i64 %594 to i32*
  %599 = load i32, i32* %598
  %600 = add i32 %599, %597
  %601 = zext i32 %600 to i64
  store i64 %601, i64* %RDX.i511, align 8
  %602 = icmp ult i32 %600, %597
  %603 = icmp ult i32 %600, %599
  %604 = or i1 %602, %603
  %605 = zext i1 %604 to i8
  %606 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %605, i8* %606, align 1
  %607 = and i32 %600, 255
  %608 = call i32 @llvm.ctpop.i32(i32 %607)
  %609 = trunc i32 %608 to i8
  %610 = and i8 %609, 1
  %611 = xor i8 %610, 1
  %612 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %611, i8* %612, align 1
  %613 = xor i32 %599, %597
  %614 = xor i32 %613, %600
  %615 = lshr i32 %614, 4
  %616 = trunc i32 %615 to i8
  %617 = and i8 %616, 1
  %618 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %617, i8* %618, align 1
  %619 = icmp eq i32 %600, 0
  %620 = zext i1 %619 to i8
  %621 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %620, i8* %621, align 1
  %622 = lshr i32 %600, 31
  %623 = trunc i32 %622 to i8
  %624 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %623, i8* %624, align 1
  %625 = lshr i32 %597, 31
  %626 = lshr i32 %599, 31
  %627 = xor i32 %622, %625
  %628 = xor i32 %622, %626
  %629 = add i32 %627, %628
  %630 = icmp eq i32 %629, 2
  %631 = zext i1 %630 to i8
  %632 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %631, i8* %632, align 1
  store %struct.Memory* %loadMem_43b816, %struct.Memory** %MEMORY
  %loadMem_43b81d = load %struct.Memory*, %struct.Memory** %MEMORY
  %633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %634 = getelementptr inbounds %struct.GPR, %struct.GPR* %633, i32 0, i32 33
  %635 = getelementptr inbounds %struct.Reg, %struct.Reg* %634, i32 0, i32 0
  %PC.i504 = bitcast %union.anon* %635 to i64*
  %636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %637 = getelementptr inbounds %struct.GPR, %struct.GPR* %636, i32 0, i32 7
  %638 = getelementptr inbounds %struct.Reg, %struct.Reg* %637, i32 0, i32 0
  %EDX.i505 = bitcast %union.anon* %638 to i32*
  %639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %640 = getelementptr inbounds %struct.GPR, %struct.GPR* %639, i32 0, i32 1
  %641 = getelementptr inbounds %struct.Reg, %struct.Reg* %640, i32 0, i32 0
  %RAX.i506 = bitcast %union.anon* %641 to i64*
  %642 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %643 = getelementptr inbounds %struct.GPR, %struct.GPR* %642, i32 0, i32 5
  %644 = getelementptr inbounds %struct.Reg, %struct.Reg* %643, i32 0, i32 0
  %RCX.i507 = bitcast %union.anon* %644 to i64*
  %645 = load i64, i64* %RAX.i506
  %646 = load i64, i64* %RCX.i507
  %647 = mul i64 %646, 4
  %648 = add i64 %645, 1388
  %649 = add i64 %648, %647
  %650 = load i32, i32* %EDX.i505
  %651 = zext i32 %650 to i64
  %652 = load i64, i64* %PC.i504
  %653 = add i64 %652, 7
  store i64 %653, i64* %PC.i504
  %654 = inttoptr i64 %649 to i32*
  store i32 %650, i32* %654
  store %struct.Memory* %loadMem_43b81d, %struct.Memory** %MEMORY
  %loadMem_43b824 = load %struct.Memory*, %struct.Memory** %MEMORY
  %655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %656 = getelementptr inbounds %struct.GPR, %struct.GPR* %655, i32 0, i32 33
  %657 = getelementptr inbounds %struct.Reg, %struct.Reg* %656, i32 0, i32 0
  %PC.i501 = bitcast %union.anon* %657 to i64*
  %658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %659 = getelementptr inbounds %struct.GPR, %struct.GPR* %658, i32 0, i32 1
  %660 = getelementptr inbounds %struct.Reg, %struct.Reg* %659, i32 0, i32 0
  %RAX.i502 = bitcast %union.anon* %660 to i64*
  %661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %662 = getelementptr inbounds %struct.GPR, %struct.GPR* %661, i32 0, i32 15
  %663 = getelementptr inbounds %struct.Reg, %struct.Reg* %662, i32 0, i32 0
  %RBP.i503 = bitcast %union.anon* %663 to i64*
  %664 = load i64, i64* %RBP.i503
  %665 = sub i64 %664, 16
  %666 = load i64, i64* %PC.i501
  %667 = add i64 %666, 4
  store i64 %667, i64* %PC.i501
  %668 = inttoptr i64 %665 to i64*
  %669 = load i64, i64* %668
  store i64 %669, i64* %RAX.i502, align 8
  store %struct.Memory* %loadMem_43b824, %struct.Memory** %MEMORY
  %loadMem_43b828 = load %struct.Memory*, %struct.Memory** %MEMORY
  %670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %671 = getelementptr inbounds %struct.GPR, %struct.GPR* %670, i32 0, i32 33
  %672 = getelementptr inbounds %struct.Reg, %struct.Reg* %671, i32 0, i32 0
  %PC.i498 = bitcast %union.anon* %672 to i64*
  %673 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %674 = getelementptr inbounds %struct.GPR, %struct.GPR* %673, i32 0, i32 1
  %675 = getelementptr inbounds %struct.Reg, %struct.Reg* %674, i32 0, i32 0
  %RAX.i499 = bitcast %union.anon* %675 to i64*
  %676 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %677 = getelementptr inbounds %struct.GPR, %struct.GPR* %676, i32 0, i32 7
  %678 = getelementptr inbounds %struct.Reg, %struct.Reg* %677, i32 0, i32 0
  %RDX.i500 = bitcast %union.anon* %678 to i64*
  %679 = load i64, i64* %RAX.i499
  %680 = add i64 %679, 24
  %681 = load i64, i64* %PC.i498
  %682 = add i64 %681, 3
  store i64 %682, i64* %PC.i498
  %683 = inttoptr i64 %680 to i32*
  %684 = load i32, i32* %683
  %685 = zext i32 %684 to i64
  store i64 %685, i64* %RDX.i500, align 8
  store %struct.Memory* %loadMem_43b828, %struct.Memory** %MEMORY
  %loadMem_43b82b = load %struct.Memory*, %struct.Memory** %MEMORY
  %686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %687 = getelementptr inbounds %struct.GPR, %struct.GPR* %686, i32 0, i32 33
  %688 = getelementptr inbounds %struct.Reg, %struct.Reg* %687, i32 0, i32 0
  %PC.i496 = bitcast %union.anon* %688 to i64*
  %689 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %690 = getelementptr inbounds %struct.GPR, %struct.GPR* %689, i32 0, i32 1
  %691 = getelementptr inbounds %struct.Reg, %struct.Reg* %690, i32 0, i32 0
  %RAX.i497 = bitcast %union.anon* %691 to i64*
  %692 = load i64, i64* %PC.i496
  %693 = add i64 %692, 8
  store i64 %693, i64* %PC.i496
  %694 = load i64, i64* bitcast (%G_0x6cb908_type* @G_0x6cb908 to i64*)
  store i64 %694, i64* %RAX.i497, align 8
  store %struct.Memory* %loadMem_43b82b, %struct.Memory** %MEMORY
  %loadMem_43b833 = load %struct.Memory*, %struct.Memory** %MEMORY
  %695 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %696 = getelementptr inbounds %struct.GPR, %struct.GPR* %695, i32 0, i32 33
  %697 = getelementptr inbounds %struct.Reg, %struct.Reg* %696, i32 0, i32 0
  %PC.i494 = bitcast %union.anon* %697 to i64*
  %698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %699 = getelementptr inbounds %struct.GPR, %struct.GPR* %698, i32 0, i32 5
  %700 = getelementptr inbounds %struct.Reg, %struct.Reg* %699, i32 0, i32 0
  %RCX.i495 = bitcast %union.anon* %700 to i64*
  %701 = load i64, i64* %PC.i494
  %702 = add i64 %701, 8
  store i64 %702, i64* %PC.i494
  %703 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %703, i64* %RCX.i495, align 8
  store %struct.Memory* %loadMem_43b833, %struct.Memory** %MEMORY
  %loadMem_43b83b = load %struct.Memory*, %struct.Memory** %MEMORY
  %704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %705 = getelementptr inbounds %struct.GPR, %struct.GPR* %704, i32 0, i32 33
  %706 = getelementptr inbounds %struct.Reg, %struct.Reg* %705, i32 0, i32 0
  %PC.i492 = bitcast %union.anon* %706 to i64*
  %707 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %708 = getelementptr inbounds %struct.GPR, %struct.GPR* %707, i32 0, i32 5
  %709 = getelementptr inbounds %struct.Reg, %struct.Reg* %708, i32 0, i32 0
  %RCX.i493 = bitcast %union.anon* %709 to i64*
  %710 = load i64, i64* %RCX.i493
  %711 = add i64 %710, 24
  %712 = load i64, i64* %PC.i492
  %713 = add i64 %712, 4
  store i64 %713, i64* %PC.i492
  %714 = inttoptr i64 %711 to i32*
  %715 = load i32, i32* %714
  %716 = sext i32 %715 to i64
  store i64 %716, i64* %RCX.i493, align 8
  store %struct.Memory* %loadMem_43b83b, %struct.Memory** %MEMORY
  %loadMem_43b83f = load %struct.Memory*, %struct.Memory** %MEMORY
  %717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %718 = getelementptr inbounds %struct.GPR, %struct.GPR* %717, i32 0, i32 33
  %719 = getelementptr inbounds %struct.Reg, %struct.Reg* %718, i32 0, i32 0
  %PC.i488 = bitcast %union.anon* %719 to i64*
  %720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %721 = getelementptr inbounds %struct.GPR, %struct.GPR* %720, i32 0, i32 1
  %722 = getelementptr inbounds %struct.Reg, %struct.Reg* %721, i32 0, i32 0
  %RAX.i489 = bitcast %union.anon* %722 to i64*
  %723 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %724 = getelementptr inbounds %struct.GPR, %struct.GPR* %723, i32 0, i32 5
  %725 = getelementptr inbounds %struct.Reg, %struct.Reg* %724, i32 0, i32 0
  %RCX.i490 = bitcast %union.anon* %725 to i64*
  %726 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %727 = getelementptr inbounds %struct.GPR, %struct.GPR* %726, i32 0, i32 7
  %728 = getelementptr inbounds %struct.Reg, %struct.Reg* %727, i32 0, i32 0
  %RDX.i491 = bitcast %union.anon* %728 to i64*
  %729 = load i64, i64* %RDX.i491
  %730 = load i64, i64* %RAX.i489
  %731 = load i64, i64* %RCX.i490
  %732 = mul i64 %731, 4
  %733 = add i64 %730, 1428
  %734 = add i64 %733, %732
  %735 = load i64, i64* %PC.i488
  %736 = add i64 %735, 7
  store i64 %736, i64* %PC.i488
  %737 = trunc i64 %729 to i32
  %738 = inttoptr i64 %734 to i32*
  %739 = load i32, i32* %738
  %740 = add i32 %739, %737
  %741 = zext i32 %740 to i64
  store i64 %741, i64* %RDX.i491, align 8
  %742 = icmp ult i32 %740, %737
  %743 = icmp ult i32 %740, %739
  %744 = or i1 %742, %743
  %745 = zext i1 %744 to i8
  %746 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %745, i8* %746, align 1
  %747 = and i32 %740, 255
  %748 = call i32 @llvm.ctpop.i32(i32 %747)
  %749 = trunc i32 %748 to i8
  %750 = and i8 %749, 1
  %751 = xor i8 %750, 1
  %752 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %751, i8* %752, align 1
  %753 = xor i32 %739, %737
  %754 = xor i32 %753, %740
  %755 = lshr i32 %754, 4
  %756 = trunc i32 %755 to i8
  %757 = and i8 %756, 1
  %758 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %757, i8* %758, align 1
  %759 = icmp eq i32 %740, 0
  %760 = zext i1 %759 to i8
  %761 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %760, i8* %761, align 1
  %762 = lshr i32 %740, 31
  %763 = trunc i32 %762 to i8
  %764 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %763, i8* %764, align 1
  %765 = lshr i32 %737, 31
  %766 = lshr i32 %739, 31
  %767 = xor i32 %762, %765
  %768 = xor i32 %762, %766
  %769 = add i32 %767, %768
  %770 = icmp eq i32 %769, 2
  %771 = zext i1 %770 to i8
  %772 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %771, i8* %772, align 1
  store %struct.Memory* %loadMem_43b83f, %struct.Memory** %MEMORY
  %loadMem_43b846 = load %struct.Memory*, %struct.Memory** %MEMORY
  %773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %774 = getelementptr inbounds %struct.GPR, %struct.GPR* %773, i32 0, i32 33
  %775 = getelementptr inbounds %struct.Reg, %struct.Reg* %774, i32 0, i32 0
  %PC.i484 = bitcast %union.anon* %775 to i64*
  %776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %777 = getelementptr inbounds %struct.GPR, %struct.GPR* %776, i32 0, i32 7
  %778 = getelementptr inbounds %struct.Reg, %struct.Reg* %777, i32 0, i32 0
  %EDX.i485 = bitcast %union.anon* %778 to i32*
  %779 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %780 = getelementptr inbounds %struct.GPR, %struct.GPR* %779, i32 0, i32 1
  %781 = getelementptr inbounds %struct.Reg, %struct.Reg* %780, i32 0, i32 0
  %RAX.i486 = bitcast %union.anon* %781 to i64*
  %782 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %783 = getelementptr inbounds %struct.GPR, %struct.GPR* %782, i32 0, i32 5
  %784 = getelementptr inbounds %struct.Reg, %struct.Reg* %783, i32 0, i32 0
  %RCX.i487 = bitcast %union.anon* %784 to i64*
  %785 = load i64, i64* %RAX.i486
  %786 = load i64, i64* %RCX.i487
  %787 = mul i64 %786, 4
  %788 = add i64 %785, 1428
  %789 = add i64 %788, %787
  %790 = load i32, i32* %EDX.i485
  %791 = zext i32 %790 to i64
  %792 = load i64, i64* %PC.i484
  %793 = add i64 %792, 7
  store i64 %793, i64* %PC.i484
  %794 = inttoptr i64 %789 to i32*
  store i32 %790, i32* %794
  store %struct.Memory* %loadMem_43b846, %struct.Memory** %MEMORY
  %loadMem_43b84d = load %struct.Memory*, %struct.Memory** %MEMORY
  %795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %796 = getelementptr inbounds %struct.GPR, %struct.GPR* %795, i32 0, i32 33
  %797 = getelementptr inbounds %struct.Reg, %struct.Reg* %796, i32 0, i32 0
  %PC.i481 = bitcast %union.anon* %797 to i64*
  %798 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %799 = getelementptr inbounds %struct.GPR, %struct.GPR* %798, i32 0, i32 1
  %800 = getelementptr inbounds %struct.Reg, %struct.Reg* %799, i32 0, i32 0
  %RAX.i482 = bitcast %union.anon* %800 to i64*
  %801 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %802 = getelementptr inbounds %struct.GPR, %struct.GPR* %801, i32 0, i32 15
  %803 = getelementptr inbounds %struct.Reg, %struct.Reg* %802, i32 0, i32 0
  %RBP.i483 = bitcast %union.anon* %803 to i64*
  %804 = load i64, i64* %RBP.i483
  %805 = sub i64 %804, 16
  %806 = load i64, i64* %PC.i481
  %807 = add i64 %806, 4
  store i64 %807, i64* %PC.i481
  %808 = inttoptr i64 %805 to i64*
  %809 = load i64, i64* %808
  store i64 %809, i64* %RAX.i482, align 8
  store %struct.Memory* %loadMem_43b84d, %struct.Memory** %MEMORY
  %loadMem_43b851 = load %struct.Memory*, %struct.Memory** %MEMORY
  %810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %811 = getelementptr inbounds %struct.GPR, %struct.GPR* %810, i32 0, i32 33
  %812 = getelementptr inbounds %struct.Reg, %struct.Reg* %811, i32 0, i32 0
  %PC.i478 = bitcast %union.anon* %812 to i64*
  %813 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %814 = getelementptr inbounds %struct.GPR, %struct.GPR* %813, i32 0, i32 1
  %815 = getelementptr inbounds %struct.Reg, %struct.Reg* %814, i32 0, i32 0
  %RAX.i479 = bitcast %union.anon* %815 to i64*
  %816 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %817 = getelementptr inbounds %struct.GPR, %struct.GPR* %816, i32 0, i32 7
  %818 = getelementptr inbounds %struct.Reg, %struct.Reg* %817, i32 0, i32 0
  %RDX.i480 = bitcast %union.anon* %818 to i64*
  %819 = load i64, i64* %RAX.i479
  %820 = add i64 %819, 28
  %821 = load i64, i64* %PC.i478
  %822 = add i64 %821, 3
  store i64 %822, i64* %PC.i478
  %823 = inttoptr i64 %820 to i32*
  %824 = load i32, i32* %823
  %825 = zext i32 %824 to i64
  store i64 %825, i64* %RDX.i480, align 8
  store %struct.Memory* %loadMem_43b851, %struct.Memory** %MEMORY
  %loadMem_43b854 = load %struct.Memory*, %struct.Memory** %MEMORY
  %826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %827 = getelementptr inbounds %struct.GPR, %struct.GPR* %826, i32 0, i32 33
  %828 = getelementptr inbounds %struct.Reg, %struct.Reg* %827, i32 0, i32 0
  %PC.i476 = bitcast %union.anon* %828 to i64*
  %829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %830 = getelementptr inbounds %struct.GPR, %struct.GPR* %829, i32 0, i32 1
  %831 = getelementptr inbounds %struct.Reg, %struct.Reg* %830, i32 0, i32 0
  %RAX.i477 = bitcast %union.anon* %831 to i64*
  %832 = load i64, i64* %PC.i476
  %833 = add i64 %832, 8
  store i64 %833, i64* %PC.i476
  %834 = load i64, i64* bitcast (%G_0x6cb908_type* @G_0x6cb908 to i64*)
  store i64 %834, i64* %RAX.i477, align 8
  store %struct.Memory* %loadMem_43b854, %struct.Memory** %MEMORY
  %loadMem_43b85c = load %struct.Memory*, %struct.Memory** %MEMORY
  %835 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %836 = getelementptr inbounds %struct.GPR, %struct.GPR* %835, i32 0, i32 33
  %837 = getelementptr inbounds %struct.Reg, %struct.Reg* %836, i32 0, i32 0
  %PC.i474 = bitcast %union.anon* %837 to i64*
  %838 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %839 = getelementptr inbounds %struct.GPR, %struct.GPR* %838, i32 0, i32 5
  %840 = getelementptr inbounds %struct.Reg, %struct.Reg* %839, i32 0, i32 0
  %RCX.i475 = bitcast %union.anon* %840 to i64*
  %841 = load i64, i64* %PC.i474
  %842 = add i64 %841, 8
  store i64 %842, i64* %PC.i474
  %843 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %843, i64* %RCX.i475, align 8
  store %struct.Memory* %loadMem_43b85c, %struct.Memory** %MEMORY
  %loadMem_43b864 = load %struct.Memory*, %struct.Memory** %MEMORY
  %844 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %845 = getelementptr inbounds %struct.GPR, %struct.GPR* %844, i32 0, i32 33
  %846 = getelementptr inbounds %struct.Reg, %struct.Reg* %845, i32 0, i32 0
  %PC.i472 = bitcast %union.anon* %846 to i64*
  %847 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %848 = getelementptr inbounds %struct.GPR, %struct.GPR* %847, i32 0, i32 5
  %849 = getelementptr inbounds %struct.Reg, %struct.Reg* %848, i32 0, i32 0
  %RCX.i473 = bitcast %union.anon* %849 to i64*
  %850 = load i64, i64* %RCX.i473
  %851 = add i64 %850, 24
  %852 = load i64, i64* %PC.i472
  %853 = add i64 %852, 4
  store i64 %853, i64* %PC.i472
  %854 = inttoptr i64 %851 to i32*
  %855 = load i32, i32* %854
  %856 = sext i32 %855 to i64
  store i64 %856, i64* %RCX.i473, align 8
  store %struct.Memory* %loadMem_43b864, %struct.Memory** %MEMORY
  %loadMem_43b868 = load %struct.Memory*, %struct.Memory** %MEMORY
  %857 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %858 = getelementptr inbounds %struct.GPR, %struct.GPR* %857, i32 0, i32 33
  %859 = getelementptr inbounds %struct.Reg, %struct.Reg* %858, i32 0, i32 0
  %PC.i468 = bitcast %union.anon* %859 to i64*
  %860 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %861 = getelementptr inbounds %struct.GPR, %struct.GPR* %860, i32 0, i32 1
  %862 = getelementptr inbounds %struct.Reg, %struct.Reg* %861, i32 0, i32 0
  %RAX.i469 = bitcast %union.anon* %862 to i64*
  %863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %864 = getelementptr inbounds %struct.GPR, %struct.GPR* %863, i32 0, i32 5
  %865 = getelementptr inbounds %struct.Reg, %struct.Reg* %864, i32 0, i32 0
  %RCX.i470 = bitcast %union.anon* %865 to i64*
  %866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %867 = getelementptr inbounds %struct.GPR, %struct.GPR* %866, i32 0, i32 7
  %868 = getelementptr inbounds %struct.Reg, %struct.Reg* %867, i32 0, i32 0
  %RDX.i471 = bitcast %union.anon* %868 to i64*
  %869 = load i64, i64* %RDX.i471
  %870 = load i64, i64* %RAX.i469
  %871 = load i64, i64* %RCX.i470
  %872 = mul i64 %871, 4
  %873 = add i64 %870, 1448
  %874 = add i64 %873, %872
  %875 = load i64, i64* %PC.i468
  %876 = add i64 %875, 7
  store i64 %876, i64* %PC.i468
  %877 = trunc i64 %869 to i32
  %878 = inttoptr i64 %874 to i32*
  %879 = load i32, i32* %878
  %880 = add i32 %879, %877
  %881 = zext i32 %880 to i64
  store i64 %881, i64* %RDX.i471, align 8
  %882 = icmp ult i32 %880, %877
  %883 = icmp ult i32 %880, %879
  %884 = or i1 %882, %883
  %885 = zext i1 %884 to i8
  %886 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %885, i8* %886, align 1
  %887 = and i32 %880, 255
  %888 = call i32 @llvm.ctpop.i32(i32 %887)
  %889 = trunc i32 %888 to i8
  %890 = and i8 %889, 1
  %891 = xor i8 %890, 1
  %892 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %891, i8* %892, align 1
  %893 = xor i32 %879, %877
  %894 = xor i32 %893, %880
  %895 = lshr i32 %894, 4
  %896 = trunc i32 %895 to i8
  %897 = and i8 %896, 1
  %898 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %897, i8* %898, align 1
  %899 = icmp eq i32 %880, 0
  %900 = zext i1 %899 to i8
  %901 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %900, i8* %901, align 1
  %902 = lshr i32 %880, 31
  %903 = trunc i32 %902 to i8
  %904 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %903, i8* %904, align 1
  %905 = lshr i32 %877, 31
  %906 = lshr i32 %879, 31
  %907 = xor i32 %902, %905
  %908 = xor i32 %902, %906
  %909 = add i32 %907, %908
  %910 = icmp eq i32 %909, 2
  %911 = zext i1 %910 to i8
  %912 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %911, i8* %912, align 1
  store %struct.Memory* %loadMem_43b868, %struct.Memory** %MEMORY
  %loadMem_43b86f = load %struct.Memory*, %struct.Memory** %MEMORY
  %913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %914 = getelementptr inbounds %struct.GPR, %struct.GPR* %913, i32 0, i32 33
  %915 = getelementptr inbounds %struct.Reg, %struct.Reg* %914, i32 0, i32 0
  %PC.i464 = bitcast %union.anon* %915 to i64*
  %916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %917 = getelementptr inbounds %struct.GPR, %struct.GPR* %916, i32 0, i32 7
  %918 = getelementptr inbounds %struct.Reg, %struct.Reg* %917, i32 0, i32 0
  %EDX.i465 = bitcast %union.anon* %918 to i32*
  %919 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %920 = getelementptr inbounds %struct.GPR, %struct.GPR* %919, i32 0, i32 1
  %921 = getelementptr inbounds %struct.Reg, %struct.Reg* %920, i32 0, i32 0
  %RAX.i466 = bitcast %union.anon* %921 to i64*
  %922 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %923 = getelementptr inbounds %struct.GPR, %struct.GPR* %922, i32 0, i32 5
  %924 = getelementptr inbounds %struct.Reg, %struct.Reg* %923, i32 0, i32 0
  %RCX.i467 = bitcast %union.anon* %924 to i64*
  %925 = load i64, i64* %RAX.i466
  %926 = load i64, i64* %RCX.i467
  %927 = mul i64 %926, 4
  %928 = add i64 %925, 1448
  %929 = add i64 %928, %927
  %930 = load i32, i32* %EDX.i465
  %931 = zext i32 %930 to i64
  %932 = load i64, i64* %PC.i464
  %933 = add i64 %932, 7
  store i64 %933, i64* %PC.i464
  %934 = inttoptr i64 %929 to i32*
  store i32 %930, i32* %934
  store %struct.Memory* %loadMem_43b86f, %struct.Memory** %MEMORY
  %loadMem_43b876 = load %struct.Memory*, %struct.Memory** %MEMORY
  %935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %936 = getelementptr inbounds %struct.GPR, %struct.GPR* %935, i32 0, i32 33
  %937 = getelementptr inbounds %struct.Reg, %struct.Reg* %936, i32 0, i32 0
  %PC.i461 = bitcast %union.anon* %937 to i64*
  %938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %939 = getelementptr inbounds %struct.GPR, %struct.GPR* %938, i32 0, i32 1
  %940 = getelementptr inbounds %struct.Reg, %struct.Reg* %939, i32 0, i32 0
  %RAX.i462 = bitcast %union.anon* %940 to i64*
  %941 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %942 = getelementptr inbounds %struct.GPR, %struct.GPR* %941, i32 0, i32 15
  %943 = getelementptr inbounds %struct.Reg, %struct.Reg* %942, i32 0, i32 0
  %RBP.i463 = bitcast %union.anon* %943 to i64*
  %944 = load i64, i64* %RBP.i463
  %945 = sub i64 %944, 8
  %946 = load i64, i64* %PC.i461
  %947 = add i64 %946, 4
  store i64 %947, i64* %PC.i461
  %948 = inttoptr i64 %945 to i64*
  %949 = load i64, i64* %948
  store i64 %949, i64* %RAX.i462, align 8
  store %struct.Memory* %loadMem_43b876, %struct.Memory** %MEMORY
  %loadMem_43b87a = load %struct.Memory*, %struct.Memory** %MEMORY
  %950 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %951 = getelementptr inbounds %struct.GPR, %struct.GPR* %950, i32 0, i32 33
  %952 = getelementptr inbounds %struct.Reg, %struct.Reg* %951, i32 0, i32 0
  %PC.i459 = bitcast %union.anon* %952 to i64*
  %953 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %954 = getelementptr inbounds %struct.GPR, %struct.GPR* %953, i32 0, i32 1
  %955 = getelementptr inbounds %struct.Reg, %struct.Reg* %954, i32 0, i32 0
  %RAX.i460 = bitcast %union.anon* %955 to i64*
  %956 = load i64, i64* %RAX.i460
  %957 = add i64 %956, 72
  %958 = load i64, i64* %PC.i459
  %959 = add i64 %958, 4
  store i64 %959, i64* %PC.i459
  %960 = inttoptr i64 %957 to i32*
  %961 = load i32, i32* %960
  %962 = sub i32 %961, 9
  %963 = icmp ult i32 %961, 9
  %964 = zext i1 %963 to i8
  %965 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %964, i8* %965, align 1
  %966 = and i32 %962, 255
  %967 = call i32 @llvm.ctpop.i32(i32 %966)
  %968 = trunc i32 %967 to i8
  %969 = and i8 %968, 1
  %970 = xor i8 %969, 1
  %971 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %970, i8* %971, align 1
  %972 = xor i32 %961, 9
  %973 = xor i32 %972, %962
  %974 = lshr i32 %973, 4
  %975 = trunc i32 %974 to i8
  %976 = and i8 %975, 1
  %977 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %976, i8* %977, align 1
  %978 = icmp eq i32 %962, 0
  %979 = zext i1 %978 to i8
  %980 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %979, i8* %980, align 1
  %981 = lshr i32 %962, 31
  %982 = trunc i32 %981 to i8
  %983 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %982, i8* %983, align 1
  %984 = lshr i32 %961, 31
  %985 = xor i32 %981, %984
  %986 = add i32 %985, %984
  %987 = icmp eq i32 %986, 2
  %988 = zext i1 %987 to i8
  %989 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %988, i8* %989, align 1
  store %struct.Memory* %loadMem_43b87a, %struct.Memory** %MEMORY
  %loadMem_43b87e = load %struct.Memory*, %struct.Memory** %MEMORY
  %990 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %991 = getelementptr inbounds %struct.GPR, %struct.GPR* %990, i32 0, i32 33
  %992 = getelementptr inbounds %struct.Reg, %struct.Reg* %991, i32 0, i32 0
  %PC.i458 = bitcast %union.anon* %992 to i64*
  %993 = load i64, i64* %PC.i458
  %994 = add i64 %993, 34
  %995 = load i64, i64* %PC.i458
  %996 = add i64 %995, 6
  %997 = load i64, i64* %PC.i458
  %998 = add i64 %997, 6
  store i64 %998, i64* %PC.i458
  %999 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1000 = load i8, i8* %999, align 1
  store i8 %1000, i8* %BRANCH_TAKEN, align 1
  %1001 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1002 = icmp ne i8 %1000, 0
  %1003 = select i1 %1002, i64 %994, i64 %996
  store i64 %1003, i64* %1001, align 8
  store %struct.Memory* %loadMem_43b87e, %struct.Memory** %MEMORY
  %loadBr_43b87e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43b87e = icmp eq i8 %loadBr_43b87e, 1
  br i1 %cmpBr_43b87e, label %block_.L_43b8a0, label %block_43b884

block_43b884:                                     ; preds = %entry
  %loadMem_43b884 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1005 = getelementptr inbounds %struct.GPR, %struct.GPR* %1004, i32 0, i32 33
  %1006 = getelementptr inbounds %struct.Reg, %struct.Reg* %1005, i32 0, i32 0
  %PC.i455 = bitcast %union.anon* %1006 to i64*
  %1007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1008 = getelementptr inbounds %struct.GPR, %struct.GPR* %1007, i32 0, i32 1
  %1009 = getelementptr inbounds %struct.Reg, %struct.Reg* %1008, i32 0, i32 0
  %RAX.i456 = bitcast %union.anon* %1009 to i64*
  %1010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1011 = getelementptr inbounds %struct.GPR, %struct.GPR* %1010, i32 0, i32 15
  %1012 = getelementptr inbounds %struct.Reg, %struct.Reg* %1011, i32 0, i32 0
  %RBP.i457 = bitcast %union.anon* %1012 to i64*
  %1013 = load i64, i64* %RBP.i457
  %1014 = sub i64 %1013, 8
  %1015 = load i64, i64* %PC.i455
  %1016 = add i64 %1015, 4
  store i64 %1016, i64* %PC.i455
  %1017 = inttoptr i64 %1014 to i64*
  %1018 = load i64, i64* %1017
  store i64 %1018, i64* %RAX.i456, align 8
  store %struct.Memory* %loadMem_43b884, %struct.Memory** %MEMORY
  %loadMem_43b888 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1019 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1020 = getelementptr inbounds %struct.GPR, %struct.GPR* %1019, i32 0, i32 33
  %1021 = getelementptr inbounds %struct.Reg, %struct.Reg* %1020, i32 0, i32 0
  %PC.i453 = bitcast %union.anon* %1021 to i64*
  %1022 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1023 = getelementptr inbounds %struct.GPR, %struct.GPR* %1022, i32 0, i32 1
  %1024 = getelementptr inbounds %struct.Reg, %struct.Reg* %1023, i32 0, i32 0
  %RAX.i454 = bitcast %union.anon* %1024 to i64*
  %1025 = load i64, i64* %RAX.i454
  %1026 = add i64 %1025, 72
  %1027 = load i64, i64* %PC.i453
  %1028 = add i64 %1027, 4
  store i64 %1028, i64* %PC.i453
  %1029 = inttoptr i64 %1026 to i32*
  %1030 = load i32, i32* %1029
  %1031 = sub i32 %1030, 10
  %1032 = icmp ult i32 %1030, 10
  %1033 = zext i1 %1032 to i8
  %1034 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1033, i8* %1034, align 1
  %1035 = and i32 %1031, 255
  %1036 = call i32 @llvm.ctpop.i32(i32 %1035)
  %1037 = trunc i32 %1036 to i8
  %1038 = and i8 %1037, 1
  %1039 = xor i8 %1038, 1
  %1040 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1039, i8* %1040, align 1
  %1041 = xor i32 %1030, 10
  %1042 = xor i32 %1041, %1031
  %1043 = lshr i32 %1042, 4
  %1044 = trunc i32 %1043 to i8
  %1045 = and i8 %1044, 1
  %1046 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1045, i8* %1046, align 1
  %1047 = icmp eq i32 %1031, 0
  %1048 = zext i1 %1047 to i8
  %1049 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1048, i8* %1049, align 1
  %1050 = lshr i32 %1031, 31
  %1051 = trunc i32 %1050 to i8
  %1052 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1051, i8* %1052, align 1
  %1053 = lshr i32 %1030, 31
  %1054 = xor i32 %1050, %1053
  %1055 = add i32 %1054, %1053
  %1056 = icmp eq i32 %1055, 2
  %1057 = zext i1 %1056 to i8
  %1058 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1057, i8* %1058, align 1
  store %struct.Memory* %loadMem_43b888, %struct.Memory** %MEMORY
  %loadMem_43b88c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1059 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1060 = getelementptr inbounds %struct.GPR, %struct.GPR* %1059, i32 0, i32 33
  %1061 = getelementptr inbounds %struct.Reg, %struct.Reg* %1060, i32 0, i32 0
  %PC.i452 = bitcast %union.anon* %1061 to i64*
  %1062 = load i64, i64* %PC.i452
  %1063 = add i64 %1062, 20
  %1064 = load i64, i64* %PC.i452
  %1065 = add i64 %1064, 6
  %1066 = load i64, i64* %PC.i452
  %1067 = add i64 %1066, 6
  store i64 %1067, i64* %PC.i452
  %1068 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1069 = load i8, i8* %1068, align 1
  store i8 %1069, i8* %BRANCH_TAKEN, align 1
  %1070 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1071 = icmp ne i8 %1069, 0
  %1072 = select i1 %1071, i64 %1063, i64 %1065
  store i64 %1072, i64* %1070, align 8
  store %struct.Memory* %loadMem_43b88c, %struct.Memory** %MEMORY
  %loadBr_43b88c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43b88c = icmp eq i8 %loadBr_43b88c, 1
  br i1 %cmpBr_43b88c, label %block_.L_43b8a0, label %block_43b892

block_43b892:                                     ; preds = %block_43b884
  %loadMem_43b892 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1073 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1074 = getelementptr inbounds %struct.GPR, %struct.GPR* %1073, i32 0, i32 33
  %1075 = getelementptr inbounds %struct.Reg, %struct.Reg* %1074, i32 0, i32 0
  %PC.i449 = bitcast %union.anon* %1075 to i64*
  %1076 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1077 = getelementptr inbounds %struct.GPR, %struct.GPR* %1076, i32 0, i32 1
  %1078 = getelementptr inbounds %struct.Reg, %struct.Reg* %1077, i32 0, i32 0
  %RAX.i450 = bitcast %union.anon* %1078 to i64*
  %1079 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1080 = getelementptr inbounds %struct.GPR, %struct.GPR* %1079, i32 0, i32 15
  %1081 = getelementptr inbounds %struct.Reg, %struct.Reg* %1080, i32 0, i32 0
  %RBP.i451 = bitcast %union.anon* %1081 to i64*
  %1082 = load i64, i64* %RBP.i451
  %1083 = sub i64 %1082, 8
  %1084 = load i64, i64* %PC.i449
  %1085 = add i64 %1084, 4
  store i64 %1085, i64* %PC.i449
  %1086 = inttoptr i64 %1083 to i64*
  %1087 = load i64, i64* %1086
  store i64 %1087, i64* %RAX.i450, align 8
  store %struct.Memory* %loadMem_43b892, %struct.Memory** %MEMORY
  %loadMem_43b896 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1088 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1089 = getelementptr inbounds %struct.GPR, %struct.GPR* %1088, i32 0, i32 33
  %1090 = getelementptr inbounds %struct.Reg, %struct.Reg* %1089, i32 0, i32 0
  %PC.i447 = bitcast %union.anon* %1090 to i64*
  %1091 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1092 = getelementptr inbounds %struct.GPR, %struct.GPR* %1091, i32 0, i32 1
  %1093 = getelementptr inbounds %struct.Reg, %struct.Reg* %1092, i32 0, i32 0
  %RAX.i448 = bitcast %union.anon* %1093 to i64*
  %1094 = load i64, i64* %RAX.i448
  %1095 = add i64 %1094, 72
  %1096 = load i64, i64* %PC.i447
  %1097 = add i64 %1096, 4
  store i64 %1097, i64* %PC.i447
  %1098 = inttoptr i64 %1095 to i32*
  %1099 = load i32, i32* %1098
  %1100 = sub i32 %1099, 13
  %1101 = icmp ult i32 %1099, 13
  %1102 = zext i1 %1101 to i8
  %1103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1102, i8* %1103, align 1
  %1104 = and i32 %1100, 255
  %1105 = call i32 @llvm.ctpop.i32(i32 %1104)
  %1106 = trunc i32 %1105 to i8
  %1107 = and i8 %1106, 1
  %1108 = xor i8 %1107, 1
  %1109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1108, i8* %1109, align 1
  %1110 = xor i32 %1099, 13
  %1111 = xor i32 %1110, %1100
  %1112 = lshr i32 %1111, 4
  %1113 = trunc i32 %1112 to i8
  %1114 = and i8 %1113, 1
  %1115 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1114, i8* %1115, align 1
  %1116 = icmp eq i32 %1100, 0
  %1117 = zext i1 %1116 to i8
  %1118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1117, i8* %1118, align 1
  %1119 = lshr i32 %1100, 31
  %1120 = trunc i32 %1119 to i8
  %1121 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1120, i8* %1121, align 1
  %1122 = lshr i32 %1099, 31
  %1123 = xor i32 %1119, %1122
  %1124 = add i32 %1123, %1122
  %1125 = icmp eq i32 %1124, 2
  %1126 = zext i1 %1125 to i8
  %1127 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1126, i8* %1127, align 1
  store %struct.Memory* %loadMem_43b896, %struct.Memory** %MEMORY
  %loadMem_43b89a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1129 = getelementptr inbounds %struct.GPR, %struct.GPR* %1128, i32 0, i32 33
  %1130 = getelementptr inbounds %struct.Reg, %struct.Reg* %1129, i32 0, i32 0
  %PC.i446 = bitcast %union.anon* %1130 to i64*
  %1131 = load i64, i64* %PC.i446
  %1132 = add i64 %1131, 194
  %1133 = load i64, i64* %PC.i446
  %1134 = add i64 %1133, 6
  %1135 = load i64, i64* %PC.i446
  %1136 = add i64 %1135, 6
  store i64 %1136, i64* %PC.i446
  %1137 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1138 = load i8, i8* %1137, align 1
  %1139 = icmp eq i8 %1138, 0
  %1140 = zext i1 %1139 to i8
  store i8 %1140, i8* %BRANCH_TAKEN, align 1
  %1141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1142 = select i1 %1139, i64 %1132, i64 %1134
  store i64 %1142, i64* %1141, align 8
  store %struct.Memory* %loadMem_43b89a, %struct.Memory** %MEMORY
  %loadBr_43b89a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43b89a = icmp eq i8 %loadBr_43b89a, 1
  br i1 %cmpBr_43b89a, label %block_.L_43b95c, label %block_.L_43b8a0

block_.L_43b8a0:                                  ; preds = %block_43b892, %block_43b884, %entry
  %loadMem_43b8a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1144 = getelementptr inbounds %struct.GPR, %struct.GPR* %1143, i32 0, i32 33
  %1145 = getelementptr inbounds %struct.Reg, %struct.Reg* %1144, i32 0, i32 0
  %PC.i444 = bitcast %union.anon* %1145 to i64*
  %1146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1147 = getelementptr inbounds %struct.GPR, %struct.GPR* %1146, i32 0, i32 1
  %1148 = getelementptr inbounds %struct.Reg, %struct.Reg* %1147, i32 0, i32 0
  %RAX.i445 = bitcast %union.anon* %1148 to i64*
  %1149 = load i64, i64* %PC.i444
  %1150 = add i64 %1149, 8
  store i64 %1150, i64* %PC.i444
  %1151 = load i64, i64* bitcast (%G_0x6cb908_type* @G_0x6cb908 to i64*)
  store i64 %1151, i64* %RAX.i445, align 8
  store %struct.Memory* %loadMem_43b8a0, %struct.Memory** %MEMORY
  %loadMem_43b8a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1153 = getelementptr inbounds %struct.GPR, %struct.GPR* %1152, i32 0, i32 33
  %1154 = getelementptr inbounds %struct.Reg, %struct.Reg* %1153, i32 0, i32 0
  %PC.i441 = bitcast %union.anon* %1154 to i64*
  %1155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1156 = getelementptr inbounds %struct.GPR, %struct.GPR* %1155, i32 0, i32 5
  %1157 = getelementptr inbounds %struct.Reg, %struct.Reg* %1156, i32 0, i32 0
  %RCX.i442 = bitcast %union.anon* %1157 to i64*
  %1158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1159 = getelementptr inbounds %struct.GPR, %struct.GPR* %1158, i32 0, i32 15
  %1160 = getelementptr inbounds %struct.Reg, %struct.Reg* %1159, i32 0, i32 0
  %RBP.i443 = bitcast %union.anon* %1160 to i64*
  %1161 = load i64, i64* %RBP.i443
  %1162 = sub i64 %1161, 8
  %1163 = load i64, i64* %PC.i441
  %1164 = add i64 %1163, 4
  store i64 %1164, i64* %PC.i441
  %1165 = inttoptr i64 %1162 to i64*
  %1166 = load i64, i64* %1165
  store i64 %1166, i64* %RCX.i442, align 8
  store %struct.Memory* %loadMem_43b8a8, %struct.Memory** %MEMORY
  %loadMem_43b8ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %1167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1168 = getelementptr inbounds %struct.GPR, %struct.GPR* %1167, i32 0, i32 33
  %1169 = getelementptr inbounds %struct.Reg, %struct.Reg* %1168, i32 0, i32 0
  %PC.i439 = bitcast %union.anon* %1169 to i64*
  %1170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1171 = getelementptr inbounds %struct.GPR, %struct.GPR* %1170, i32 0, i32 5
  %1172 = getelementptr inbounds %struct.Reg, %struct.Reg* %1171, i32 0, i32 0
  %RCX.i440 = bitcast %union.anon* %1172 to i64*
  %1173 = load i64, i64* %RCX.i440
  %1174 = add i64 %1173, 524
  %1175 = load i64, i64* %PC.i439
  %1176 = add i64 %1175, 7
  store i64 %1176, i64* %PC.i439
  %1177 = inttoptr i64 %1174 to i32*
  %1178 = load i32, i32* %1177
  %1179 = sext i32 %1178 to i64
  store i64 %1179, i64* %RCX.i440, align 8
  store %struct.Memory* %loadMem_43b8ac, %struct.Memory** %MEMORY
  %loadMem_43b8b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1181 = getelementptr inbounds %struct.GPR, %struct.GPR* %1180, i32 0, i32 33
  %1182 = getelementptr inbounds %struct.Reg, %struct.Reg* %1181, i32 0, i32 0
  %PC.i435 = bitcast %union.anon* %1182 to i64*
  %1183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1184 = getelementptr inbounds %struct.GPR, %struct.GPR* %1183, i32 0, i32 1
  %1185 = getelementptr inbounds %struct.Reg, %struct.Reg* %1184, i32 0, i32 0
  %RAX.i436 = bitcast %union.anon* %1185 to i64*
  %1186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1187 = getelementptr inbounds %struct.GPR, %struct.GPR* %1186, i32 0, i32 5
  %1188 = getelementptr inbounds %struct.Reg, %struct.Reg* %1187, i32 0, i32 0
  %RCX.i437 = bitcast %union.anon* %1188 to i64*
  %1189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1190 = getelementptr inbounds %struct.GPR, %struct.GPR* %1189, i32 0, i32 7
  %1191 = getelementptr inbounds %struct.Reg, %struct.Reg* %1190, i32 0, i32 0
  %RDX.i438 = bitcast %union.anon* %1191 to i64*
  %1192 = load i64, i64* %RAX.i436
  %1193 = load i64, i64* %RCX.i437
  %1194 = mul i64 %1193, 4
  %1195 = add i64 %1192, 672
  %1196 = add i64 %1195, %1194
  %1197 = load i64, i64* %PC.i435
  %1198 = add i64 %1197, 7
  store i64 %1198, i64* %PC.i435
  %1199 = inttoptr i64 %1196 to i32*
  %1200 = load i32, i32* %1199
  %1201 = zext i32 %1200 to i64
  store i64 %1201, i64* %RDX.i438, align 8
  store %struct.Memory* %loadMem_43b8b3, %struct.Memory** %MEMORY
  %loadMem_43b8ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %1202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1203 = getelementptr inbounds %struct.GPR, %struct.GPR* %1202, i32 0, i32 33
  %1204 = getelementptr inbounds %struct.Reg, %struct.Reg* %1203, i32 0, i32 0
  %PC.i433 = bitcast %union.anon* %1204 to i64*
  %1205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1206 = getelementptr inbounds %struct.GPR, %struct.GPR* %1205, i32 0, i32 7
  %1207 = getelementptr inbounds %struct.Reg, %struct.Reg* %1206, i32 0, i32 0
  %RDX.i434 = bitcast %union.anon* %1207 to i64*
  %1208 = load i64, i64* %RDX.i434
  %1209 = load i64, i64* %PC.i433
  %1210 = add i64 %1209, 3
  store i64 %1210, i64* %PC.i433
  %1211 = trunc i64 %1208 to i32
  %1212 = add i32 1, %1211
  %1213 = zext i32 %1212 to i64
  store i64 %1213, i64* %RDX.i434, align 8
  %1214 = icmp ult i32 %1212, %1211
  %1215 = icmp ult i32 %1212, 1
  %1216 = or i1 %1214, %1215
  %1217 = zext i1 %1216 to i8
  %1218 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1217, i8* %1218, align 1
  %1219 = and i32 %1212, 255
  %1220 = call i32 @llvm.ctpop.i32(i32 %1219)
  %1221 = trunc i32 %1220 to i8
  %1222 = and i8 %1221, 1
  %1223 = xor i8 %1222, 1
  %1224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1223, i8* %1224, align 1
  %1225 = xor i64 1, %1208
  %1226 = trunc i64 %1225 to i32
  %1227 = xor i32 %1226, %1212
  %1228 = lshr i32 %1227, 4
  %1229 = trunc i32 %1228 to i8
  %1230 = and i8 %1229, 1
  %1231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1230, i8* %1231, align 1
  %1232 = icmp eq i32 %1212, 0
  %1233 = zext i1 %1232 to i8
  %1234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1233, i8* %1234, align 1
  %1235 = lshr i32 %1212, 31
  %1236 = trunc i32 %1235 to i8
  %1237 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1236, i8* %1237, align 1
  %1238 = lshr i32 %1211, 31
  %1239 = xor i32 %1235, %1238
  %1240 = add i32 %1239, %1235
  %1241 = icmp eq i32 %1240, 2
  %1242 = zext i1 %1241 to i8
  %1243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1242, i8* %1243, align 1
  store %struct.Memory* %loadMem_43b8ba, %struct.Memory** %MEMORY
  %loadMem_43b8bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1245 = getelementptr inbounds %struct.GPR, %struct.GPR* %1244, i32 0, i32 33
  %1246 = getelementptr inbounds %struct.Reg, %struct.Reg* %1245, i32 0, i32 0
  %PC.i429 = bitcast %union.anon* %1246 to i64*
  %1247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1248 = getelementptr inbounds %struct.GPR, %struct.GPR* %1247, i32 0, i32 7
  %1249 = getelementptr inbounds %struct.Reg, %struct.Reg* %1248, i32 0, i32 0
  %EDX.i430 = bitcast %union.anon* %1249 to i32*
  %1250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1251 = getelementptr inbounds %struct.GPR, %struct.GPR* %1250, i32 0, i32 1
  %1252 = getelementptr inbounds %struct.Reg, %struct.Reg* %1251, i32 0, i32 0
  %RAX.i431 = bitcast %union.anon* %1252 to i64*
  %1253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1254 = getelementptr inbounds %struct.GPR, %struct.GPR* %1253, i32 0, i32 5
  %1255 = getelementptr inbounds %struct.Reg, %struct.Reg* %1254, i32 0, i32 0
  %RCX.i432 = bitcast %union.anon* %1255 to i64*
  %1256 = load i64, i64* %RAX.i431
  %1257 = load i64, i64* %RCX.i432
  %1258 = mul i64 %1257, 4
  %1259 = add i64 %1256, 672
  %1260 = add i64 %1259, %1258
  %1261 = load i32, i32* %EDX.i430
  %1262 = zext i32 %1261 to i64
  %1263 = load i64, i64* %PC.i429
  %1264 = add i64 %1263, 7
  store i64 %1264, i64* %PC.i429
  %1265 = inttoptr i64 %1260 to i32*
  store i32 %1261, i32* %1265
  store %struct.Memory* %loadMem_43b8bd, %struct.Memory** %MEMORY
  %loadMem_43b8c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1267 = getelementptr inbounds %struct.GPR, %struct.GPR* %1266, i32 0, i32 33
  %1268 = getelementptr inbounds %struct.Reg, %struct.Reg* %1267, i32 0, i32 0
  %PC.i426 = bitcast %union.anon* %1268 to i64*
  %1269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1270 = getelementptr inbounds %struct.GPR, %struct.GPR* %1269, i32 0, i32 1
  %1271 = getelementptr inbounds %struct.Reg, %struct.Reg* %1270, i32 0, i32 0
  %RAX.i427 = bitcast %union.anon* %1271 to i64*
  %1272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1273 = getelementptr inbounds %struct.GPR, %struct.GPR* %1272, i32 0, i32 15
  %1274 = getelementptr inbounds %struct.Reg, %struct.Reg* %1273, i32 0, i32 0
  %RBP.i428 = bitcast %union.anon* %1274 to i64*
  %1275 = load i64, i64* %RBP.i428
  %1276 = sub i64 %1275, 8
  %1277 = load i64, i64* %PC.i426
  %1278 = add i64 %1277, 4
  store i64 %1278, i64* %PC.i426
  %1279 = inttoptr i64 %1276 to i64*
  %1280 = load i64, i64* %1279
  store i64 %1280, i64* %RAX.i427, align 8
  store %struct.Memory* %loadMem_43b8c4, %struct.Memory** %MEMORY
  %loadMem_43b8c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1282 = getelementptr inbounds %struct.GPR, %struct.GPR* %1281, i32 0, i32 33
  %1283 = getelementptr inbounds %struct.Reg, %struct.Reg* %1282, i32 0, i32 0
  %PC.i423 = bitcast %union.anon* %1283 to i64*
  %1284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1285 = getelementptr inbounds %struct.GPR, %struct.GPR* %1284, i32 0, i32 1
  %1286 = getelementptr inbounds %struct.Reg, %struct.Reg* %1285, i32 0, i32 0
  %RAX.i424 = bitcast %union.anon* %1286 to i64*
  %1287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1288 = getelementptr inbounds %struct.GPR, %struct.GPR* %1287, i32 0, i32 7
  %1289 = getelementptr inbounds %struct.Reg, %struct.Reg* %1288, i32 0, i32 0
  %RDX.i425 = bitcast %union.anon* %1289 to i64*
  %1290 = load i64, i64* %RAX.i424
  %1291 = add i64 %1290, 460
  %1292 = load i64, i64* %PC.i423
  %1293 = add i64 %1292, 6
  store i64 %1293, i64* %PC.i423
  %1294 = inttoptr i64 %1291 to i32*
  %1295 = load i32, i32* %1294
  %1296 = zext i32 %1295 to i64
  store i64 %1296, i64* %RDX.i425, align 8
  store %struct.Memory* %loadMem_43b8c8, %struct.Memory** %MEMORY
  %loadMem_43b8ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %1297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1298 = getelementptr inbounds %struct.GPR, %struct.GPR* %1297, i32 0, i32 33
  %1299 = getelementptr inbounds %struct.Reg, %struct.Reg* %1298, i32 0, i32 0
  %PC.i421 = bitcast %union.anon* %1299 to i64*
  %1300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1301 = getelementptr inbounds %struct.GPR, %struct.GPR* %1300, i32 0, i32 7
  %1302 = getelementptr inbounds %struct.Reg, %struct.Reg* %1301, i32 0, i32 0
  %RDX.i422 = bitcast %union.anon* %1302 to i64*
  %1303 = load i64, i64* %RDX.i422
  %1304 = load i64, i64* %PC.i421
  %1305 = add i64 %1304, 3
  store i64 %1305, i64* %PC.i421
  %1306 = and i64 15, %1303
  %1307 = trunc i64 %1306 to i32
  store i64 %1306, i64* %RDX.i422, align 8
  %1308 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1308, align 1
  %1309 = and i32 %1307, 255
  %1310 = call i32 @llvm.ctpop.i32(i32 %1309)
  %1311 = trunc i32 %1310 to i8
  %1312 = and i8 %1311, 1
  %1313 = xor i8 %1312, 1
  %1314 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1313, i8* %1314, align 1
  %1315 = icmp eq i32 %1307, 0
  %1316 = zext i1 %1315 to i8
  %1317 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1316, i8* %1317, align 1
  %1318 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1318, align 1
  %1319 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1319, align 1
  %1320 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1320, align 1
  store %struct.Memory* %loadMem_43b8ce, %struct.Memory** %MEMORY
  %loadMem_43b8d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1322 = getelementptr inbounds %struct.GPR, %struct.GPR* %1321, i32 0, i32 33
  %1323 = getelementptr inbounds %struct.Reg, %struct.Reg* %1322, i32 0, i32 0
  %PC.i419 = bitcast %union.anon* %1323 to i64*
  %1324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1325 = getelementptr inbounds %struct.GPR, %struct.GPR* %1324, i32 0, i32 7
  %1326 = getelementptr inbounds %struct.Reg, %struct.Reg* %1325, i32 0, i32 0
  %EDX.i420 = bitcast %union.anon* %1326 to i32*
  %1327 = load i32, i32* %EDX.i420
  %1328 = zext i32 %1327 to i64
  %1329 = load i64, i64* %PC.i419
  %1330 = add i64 %1329, 3
  store i64 %1330, i64* %PC.i419
  %1331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1331, align 1
  %1332 = and i32 %1327, 255
  %1333 = call i32 @llvm.ctpop.i32(i32 %1332)
  %1334 = trunc i32 %1333 to i8
  %1335 = and i8 %1334, 1
  %1336 = xor i8 %1335, 1
  %1337 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1336, i8* %1337, align 1
  %1338 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1338, align 1
  %1339 = icmp eq i32 %1327, 0
  %1340 = zext i1 %1339 to i8
  %1341 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1340, i8* %1341, align 1
  %1342 = lshr i32 %1327, 31
  %1343 = trunc i32 %1342 to i8
  %1344 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1343, i8* %1344, align 1
  %1345 = lshr i32 %1327, 31
  %1346 = xor i32 %1342, %1345
  %1347 = add i32 %1346, %1345
  %1348 = icmp eq i32 %1347, 2
  %1349 = zext i1 %1348 to i8
  %1350 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1349, i8* %1350, align 1
  store %struct.Memory* %loadMem_43b8d1, %struct.Memory** %MEMORY
  %loadMem_43b8d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1352 = getelementptr inbounds %struct.GPR, %struct.GPR* %1351, i32 0, i32 33
  %1353 = getelementptr inbounds %struct.Reg, %struct.Reg* %1352, i32 0, i32 0
  %PC.i418 = bitcast %union.anon* %1353 to i64*
  %1354 = load i64, i64* %PC.i418
  %1355 = add i64 %1354, 131
  %1356 = load i64, i64* %PC.i418
  %1357 = add i64 %1356, 6
  %1358 = load i64, i64* %PC.i418
  %1359 = add i64 %1358, 6
  store i64 %1359, i64* %PC.i418
  %1360 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1361 = load i8, i8* %1360, align 1
  store i8 %1361, i8* %BRANCH_TAKEN, align 1
  %1362 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1363 = icmp ne i8 %1361, 0
  %1364 = select i1 %1363, i64 %1355, i64 %1357
  store i64 %1364, i64* %1362, align 8
  store %struct.Memory* %loadMem_43b8d4, %struct.Memory** %MEMORY
  %loadBr_43b8d4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43b8d4 = icmp eq i8 %loadBr_43b8d4, 1
  br i1 %cmpBr_43b8d4, label %block_.L_43b957, label %block_43b8da

block_43b8da:                                     ; preds = %block_.L_43b8a0
  %loadMem_43b8da = load %struct.Memory*, %struct.Memory** %MEMORY
  %1365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1366 = getelementptr inbounds %struct.GPR, %struct.GPR* %1365, i32 0, i32 33
  %1367 = getelementptr inbounds %struct.Reg, %struct.Reg* %1366, i32 0, i32 0
  %PC.i415 = bitcast %union.anon* %1367 to i64*
  %1368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1369 = getelementptr inbounds %struct.GPR, %struct.GPR* %1368, i32 0, i32 1
  %1370 = getelementptr inbounds %struct.Reg, %struct.Reg* %1369, i32 0, i32 0
  %RAX.i416 = bitcast %union.anon* %1370 to i64*
  %1371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1372 = getelementptr inbounds %struct.GPR, %struct.GPR* %1371, i32 0, i32 15
  %1373 = getelementptr inbounds %struct.Reg, %struct.Reg* %1372, i32 0, i32 0
  %RBP.i417 = bitcast %union.anon* %1373 to i64*
  %1374 = load i64, i64* %RBP.i417
  %1375 = sub i64 %1374, 8
  %1376 = load i64, i64* %PC.i415
  %1377 = add i64 %1376, 4
  store i64 %1377, i64* %PC.i415
  %1378 = inttoptr i64 %1375 to i64*
  %1379 = load i64, i64* %1378
  store i64 %1379, i64* %RAX.i416, align 8
  store %struct.Memory* %loadMem_43b8da, %struct.Memory** %MEMORY
  %loadMem_43b8de = load %struct.Memory*, %struct.Memory** %MEMORY
  %1380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1381 = getelementptr inbounds %struct.GPR, %struct.GPR* %1380, i32 0, i32 33
  %1382 = getelementptr inbounds %struct.Reg, %struct.Reg* %1381, i32 0, i32 0
  %PC.i413 = bitcast %union.anon* %1382 to i64*
  %1383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1384 = getelementptr inbounds %struct.GPR, %struct.GPR* %1383, i32 0, i32 1
  %1385 = getelementptr inbounds %struct.Reg, %struct.Reg* %1384, i32 0, i32 0
  %RAX.i414 = bitcast %union.anon* %1385 to i64*
  %1386 = load i64, i64* %RAX.i414
  %1387 = add i64 %1386, 572
  %1388 = load i64, i64* %PC.i413
  %1389 = add i64 %1388, 7
  store i64 %1389, i64* %PC.i413
  %1390 = inttoptr i64 %1387 to i32*
  %1391 = load i32, i32* %1390
  %1392 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1392, align 1
  %1393 = and i32 %1391, 255
  %1394 = call i32 @llvm.ctpop.i32(i32 %1393)
  %1395 = trunc i32 %1394 to i8
  %1396 = and i8 %1395, 1
  %1397 = xor i8 %1396, 1
  %1398 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1397, i8* %1398, align 1
  %1399 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1399, align 1
  %1400 = icmp eq i32 %1391, 0
  %1401 = zext i1 %1400 to i8
  %1402 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1401, i8* %1402, align 1
  %1403 = lshr i32 %1391, 31
  %1404 = trunc i32 %1403 to i8
  %1405 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1404, i8* %1405, align 1
  %1406 = lshr i32 %1391, 31
  %1407 = xor i32 %1403, %1406
  %1408 = add i32 %1407, %1406
  %1409 = icmp eq i32 %1408, 2
  %1410 = zext i1 %1409 to i8
  %1411 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1410, i8* %1411, align 1
  store %struct.Memory* %loadMem_43b8de, %struct.Memory** %MEMORY
  %loadMem_43b8e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1413 = getelementptr inbounds %struct.GPR, %struct.GPR* %1412, i32 0, i32 33
  %1414 = getelementptr inbounds %struct.Reg, %struct.Reg* %1413, i32 0, i32 0
  %PC.i412 = bitcast %union.anon* %1414 to i64*
  %1415 = load i64, i64* %PC.i412
  %1416 = add i64 %1415, 59
  %1417 = load i64, i64* %PC.i412
  %1418 = add i64 %1417, 6
  %1419 = load i64, i64* %PC.i412
  %1420 = add i64 %1419, 6
  store i64 %1420, i64* %PC.i412
  %1421 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1422 = load i8, i8* %1421, align 1
  store i8 %1422, i8* %BRANCH_TAKEN, align 1
  %1423 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1424 = icmp ne i8 %1422, 0
  %1425 = select i1 %1424, i64 %1416, i64 %1418
  store i64 %1425, i64* %1423, align 8
  store %struct.Memory* %loadMem_43b8e5, %struct.Memory** %MEMORY
  %loadBr_43b8e5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43b8e5 = icmp eq i8 %loadBr_43b8e5, 1
  br i1 %cmpBr_43b8e5, label %block_.L_43b920, label %block_43b8eb

block_43b8eb:                                     ; preds = %block_43b8da
  %loadMem_43b8eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1427 = getelementptr inbounds %struct.GPR, %struct.GPR* %1426, i32 0, i32 33
  %1428 = getelementptr inbounds %struct.Reg, %struct.Reg* %1427, i32 0, i32 0
  %PC.i410 = bitcast %union.anon* %1428 to i64*
  %1429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1430 = getelementptr inbounds %struct.GPR, %struct.GPR* %1429, i32 0, i32 1
  %1431 = getelementptr inbounds %struct.Reg, %struct.Reg* %1430, i32 0, i32 0
  %RAX.i411 = bitcast %union.anon* %1431 to i64*
  %1432 = load i64, i64* %PC.i410
  %1433 = add i64 %1432, 8
  store i64 %1433, i64* %PC.i410
  %1434 = load i64, i64* bitcast (%G_0x6cb908_type* @G_0x6cb908 to i64*)
  store i64 %1434, i64* %RAX.i411, align 8
  store %struct.Memory* %loadMem_43b8eb, %struct.Memory** %MEMORY
  %loadMem_43b8f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1436 = getelementptr inbounds %struct.GPR, %struct.GPR* %1435, i32 0, i32 33
  %1437 = getelementptr inbounds %struct.Reg, %struct.Reg* %1436, i32 0, i32 0
  %PC.i408 = bitcast %union.anon* %1437 to i64*
  %1438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1439 = getelementptr inbounds %struct.GPR, %struct.GPR* %1438, i32 0, i32 1
  %1440 = getelementptr inbounds %struct.Reg, %struct.Reg* %1439, i32 0, i32 0
  %RAX.i409 = bitcast %union.anon* %1440 to i64*
  %1441 = load i64, i64* %RAX.i409
  %1442 = load i64, i64* %PC.i408
  %1443 = add i64 %1442, 4
  store i64 %1443, i64* %PC.i408
  %1444 = add i64 72, %1441
  store i64 %1444, i64* %RAX.i409, align 8
  %1445 = icmp ult i64 %1444, %1441
  %1446 = icmp ult i64 %1444, 72
  %1447 = or i1 %1445, %1446
  %1448 = zext i1 %1447 to i8
  %1449 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1448, i8* %1449, align 1
  %1450 = trunc i64 %1444 to i32
  %1451 = and i32 %1450, 255
  %1452 = call i32 @llvm.ctpop.i32(i32 %1451)
  %1453 = trunc i32 %1452 to i8
  %1454 = and i8 %1453, 1
  %1455 = xor i8 %1454, 1
  %1456 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1455, i8* %1456, align 1
  %1457 = xor i64 72, %1441
  %1458 = xor i64 %1457, %1444
  %1459 = lshr i64 %1458, 4
  %1460 = trunc i64 %1459 to i8
  %1461 = and i8 %1460, 1
  %1462 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1461, i8* %1462, align 1
  %1463 = icmp eq i64 %1444, 0
  %1464 = zext i1 %1463 to i8
  %1465 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1464, i8* %1465, align 1
  %1466 = lshr i64 %1444, 63
  %1467 = trunc i64 %1466 to i8
  %1468 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1467, i8* %1468, align 1
  %1469 = lshr i64 %1441, 63
  %1470 = xor i64 %1466, %1469
  %1471 = add i64 %1470, %1466
  %1472 = icmp eq i64 %1471, 2
  %1473 = zext i1 %1472 to i8
  %1474 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1473, i8* %1474, align 1
  store %struct.Memory* %loadMem_43b8f3, %struct.Memory** %MEMORY
  %loadMem_43b8f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1476 = getelementptr inbounds %struct.GPR, %struct.GPR* %1475, i32 0, i32 33
  %1477 = getelementptr inbounds %struct.Reg, %struct.Reg* %1476, i32 0, i32 0
  %PC.i406 = bitcast %union.anon* %1477 to i64*
  %1478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1479 = getelementptr inbounds %struct.GPR, %struct.GPR* %1478, i32 0, i32 5
  %1480 = getelementptr inbounds %struct.Reg, %struct.Reg* %1479, i32 0, i32 0
  %RCX.i407 = bitcast %union.anon* %1480 to i64*
  %1481 = load i64, i64* %PC.i406
  %1482 = add i64 %1481, 8
  store i64 %1482, i64* %PC.i406
  %1483 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %1483, i64* %RCX.i407, align 8
  store %struct.Memory* %loadMem_43b8f7, %struct.Memory** %MEMORY
  %loadMem_43b8ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %1484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1485 = getelementptr inbounds %struct.GPR, %struct.GPR* %1484, i32 0, i32 33
  %1486 = getelementptr inbounds %struct.Reg, %struct.Reg* %1485, i32 0, i32 0
  %PC.i404 = bitcast %union.anon* %1486 to i64*
  %1487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1488 = getelementptr inbounds %struct.GPR, %struct.GPR* %1487, i32 0, i32 5
  %1489 = getelementptr inbounds %struct.Reg, %struct.Reg* %1488, i32 0, i32 0
  %RCX.i405 = bitcast %union.anon* %1489 to i64*
  %1490 = load i64, i64* %RCX.i405
  %1491 = add i64 %1490, 24
  %1492 = load i64, i64* %PC.i404
  %1493 = add i64 %1492, 4
  store i64 %1493, i64* %PC.i404
  %1494 = inttoptr i64 %1491 to i32*
  %1495 = load i32, i32* %1494
  %1496 = sext i32 %1495 to i64
  store i64 %1496, i64* %RCX.i405, align 8
  store %struct.Memory* %loadMem_43b8ff, %struct.Memory** %MEMORY
  %loadMem_43b903 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1498 = getelementptr inbounds %struct.GPR, %struct.GPR* %1497, i32 0, i32 33
  %1499 = getelementptr inbounds %struct.Reg, %struct.Reg* %1498, i32 0, i32 0
  %PC.i402 = bitcast %union.anon* %1499 to i64*
  %1500 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1501 = getelementptr inbounds %struct.GPR, %struct.GPR* %1500, i32 0, i32 5
  %1502 = getelementptr inbounds %struct.Reg, %struct.Reg* %1501, i32 0, i32 0
  %RCX.i403 = bitcast %union.anon* %1502 to i64*
  %1503 = load i64, i64* %RCX.i403
  %1504 = load i64, i64* %PC.i402
  %1505 = add i64 %1504, 4
  store i64 %1505, i64* %PC.i402
  %1506 = sext i64 %1503 to i128
  %1507 = and i128 %1506, -18446744073709551616
  %1508 = zext i64 %1503 to i128
  %1509 = or i128 %1507, %1508
  %1510 = mul i128 60, %1509
  %1511 = trunc i128 %1510 to i64
  store i64 %1511, i64* %RCX.i403, align 8
  %1512 = sext i64 %1511 to i128
  %1513 = icmp ne i128 %1512, %1510
  %1514 = zext i1 %1513 to i8
  %1515 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1514, i8* %1515, align 1
  %1516 = trunc i128 %1510 to i32
  %1517 = and i32 %1516, 255
  %1518 = call i32 @llvm.ctpop.i32(i32 %1517)
  %1519 = trunc i32 %1518 to i8
  %1520 = and i8 %1519, 1
  %1521 = xor i8 %1520, 1
  %1522 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1521, i8* %1522, align 1
  %1523 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1523, align 1
  %1524 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1524, align 1
  %1525 = lshr i64 %1511, 63
  %1526 = trunc i64 %1525 to i8
  %1527 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1526, i8* %1527, align 1
  %1528 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1514, i8* %1528, align 1
  store %struct.Memory* %loadMem_43b903, %struct.Memory** %MEMORY
  %loadMem_43b907 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1530 = getelementptr inbounds %struct.GPR, %struct.GPR* %1529, i32 0, i32 33
  %1531 = getelementptr inbounds %struct.Reg, %struct.Reg* %1530, i32 0, i32 0
  %PC.i399 = bitcast %union.anon* %1531 to i64*
  %1532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1533 = getelementptr inbounds %struct.GPR, %struct.GPR* %1532, i32 0, i32 1
  %1534 = getelementptr inbounds %struct.Reg, %struct.Reg* %1533, i32 0, i32 0
  %RAX.i400 = bitcast %union.anon* %1534 to i64*
  %1535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1536 = getelementptr inbounds %struct.GPR, %struct.GPR* %1535, i32 0, i32 5
  %1537 = getelementptr inbounds %struct.Reg, %struct.Reg* %1536, i32 0, i32 0
  %RCX.i401 = bitcast %union.anon* %1537 to i64*
  %1538 = load i64, i64* %RAX.i400
  %1539 = load i64, i64* %RCX.i401
  %1540 = load i64, i64* %PC.i399
  %1541 = add i64 %1540, 3
  store i64 %1541, i64* %PC.i399
  %1542 = add i64 %1539, %1538
  store i64 %1542, i64* %RAX.i400, align 8
  %1543 = icmp ult i64 %1542, %1538
  %1544 = icmp ult i64 %1542, %1539
  %1545 = or i1 %1543, %1544
  %1546 = zext i1 %1545 to i8
  %1547 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1546, i8* %1547, align 1
  %1548 = trunc i64 %1542 to i32
  %1549 = and i32 %1548, 255
  %1550 = call i32 @llvm.ctpop.i32(i32 %1549)
  %1551 = trunc i32 %1550 to i8
  %1552 = and i8 %1551, 1
  %1553 = xor i8 %1552, 1
  %1554 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1553, i8* %1554, align 1
  %1555 = xor i64 %1539, %1538
  %1556 = xor i64 %1555, %1542
  %1557 = lshr i64 %1556, 4
  %1558 = trunc i64 %1557 to i8
  %1559 = and i8 %1558, 1
  %1560 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1559, i8* %1560, align 1
  %1561 = icmp eq i64 %1542, 0
  %1562 = zext i1 %1561 to i8
  %1563 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1562, i8* %1563, align 1
  %1564 = lshr i64 %1542, 63
  %1565 = trunc i64 %1564 to i8
  %1566 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1565, i8* %1566, align 1
  %1567 = lshr i64 %1538, 63
  %1568 = lshr i64 %1539, 63
  %1569 = xor i64 %1564, %1567
  %1570 = xor i64 %1564, %1568
  %1571 = add i64 %1569, %1570
  %1572 = icmp eq i64 %1571, 2
  %1573 = zext i1 %1572 to i8
  %1574 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1573, i8* %1574, align 1
  store %struct.Memory* %loadMem_43b907, %struct.Memory** %MEMORY
  %loadMem_43b90a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1576 = getelementptr inbounds %struct.GPR, %struct.GPR* %1575, i32 0, i32 33
  %1577 = getelementptr inbounds %struct.Reg, %struct.Reg* %1576, i32 0, i32 0
  %PC.i396 = bitcast %union.anon* %1577 to i64*
  %1578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1579 = getelementptr inbounds %struct.GPR, %struct.GPR* %1578, i32 0, i32 5
  %1580 = getelementptr inbounds %struct.Reg, %struct.Reg* %1579, i32 0, i32 0
  %RCX.i397 = bitcast %union.anon* %1580 to i64*
  %1581 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1582 = getelementptr inbounds %struct.GPR, %struct.GPR* %1581, i32 0, i32 15
  %1583 = getelementptr inbounds %struct.Reg, %struct.Reg* %1582, i32 0, i32 0
  %RBP.i398 = bitcast %union.anon* %1583 to i64*
  %1584 = load i64, i64* %RBP.i398
  %1585 = sub i64 %1584, 8
  %1586 = load i64, i64* %PC.i396
  %1587 = add i64 %1586, 4
  store i64 %1587, i64* %PC.i396
  %1588 = inttoptr i64 %1585 to i64*
  %1589 = load i64, i64* %1588
  store i64 %1589, i64* %RCX.i397, align 8
  store %struct.Memory* %loadMem_43b90a, %struct.Memory** %MEMORY
  %loadMem_43b90e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1591 = getelementptr inbounds %struct.GPR, %struct.GPR* %1590, i32 0, i32 33
  %1592 = getelementptr inbounds %struct.Reg, %struct.Reg* %1591, i32 0, i32 0
  %PC.i394 = bitcast %union.anon* %1592 to i64*
  %1593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1594 = getelementptr inbounds %struct.GPR, %struct.GPR* %1593, i32 0, i32 5
  %1595 = getelementptr inbounds %struct.Reg, %struct.Reg* %1594, i32 0, i32 0
  %RCX.i395 = bitcast %union.anon* %1595 to i64*
  %1596 = load i64, i64* %RCX.i395
  %1597 = add i64 %1596, 72
  %1598 = load i64, i64* %PC.i394
  %1599 = add i64 %1598, 4
  store i64 %1599, i64* %PC.i394
  %1600 = inttoptr i64 %1597 to i32*
  %1601 = load i32, i32* %1600
  %1602 = sext i32 %1601 to i64
  store i64 %1602, i64* %RCX.i395, align 8
  store %struct.Memory* %loadMem_43b90e, %struct.Memory** %MEMORY
  %loadMem_43b912 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1603 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1604 = getelementptr inbounds %struct.GPR, %struct.GPR* %1603, i32 0, i32 33
  %1605 = getelementptr inbounds %struct.Reg, %struct.Reg* %1604, i32 0, i32 0
  %PC.i390 = bitcast %union.anon* %1605 to i64*
  %1606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1607 = getelementptr inbounds %struct.GPR, %struct.GPR* %1606, i32 0, i32 1
  %1608 = getelementptr inbounds %struct.Reg, %struct.Reg* %1607, i32 0, i32 0
  %RAX.i391 = bitcast %union.anon* %1608 to i64*
  %1609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1610 = getelementptr inbounds %struct.GPR, %struct.GPR* %1609, i32 0, i32 5
  %1611 = getelementptr inbounds %struct.Reg, %struct.Reg* %1610, i32 0, i32 0
  %RCX.i392 = bitcast %union.anon* %1611 to i64*
  %1612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1613 = getelementptr inbounds %struct.GPR, %struct.GPR* %1612, i32 0, i32 7
  %1614 = getelementptr inbounds %struct.Reg, %struct.Reg* %1613, i32 0, i32 0
  %RDX.i393 = bitcast %union.anon* %1614 to i64*
  %1615 = load i64, i64* %RAX.i391
  %1616 = load i64, i64* %RCX.i392
  %1617 = mul i64 %1616, 4
  %1618 = add i64 %1617, %1615
  %1619 = load i64, i64* %PC.i390
  %1620 = add i64 %1619, 3
  store i64 %1620, i64* %PC.i390
  %1621 = inttoptr i64 %1618 to i32*
  %1622 = load i32, i32* %1621
  %1623 = zext i32 %1622 to i64
  store i64 %1623, i64* %RDX.i393, align 8
  store %struct.Memory* %loadMem_43b912, %struct.Memory** %MEMORY
  %loadMem_43b915 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1625 = getelementptr inbounds %struct.GPR, %struct.GPR* %1624, i32 0, i32 33
  %1626 = getelementptr inbounds %struct.Reg, %struct.Reg* %1625, i32 0, i32 0
  %PC.i388 = bitcast %union.anon* %1626 to i64*
  %1627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1628 = getelementptr inbounds %struct.GPR, %struct.GPR* %1627, i32 0, i32 7
  %1629 = getelementptr inbounds %struct.Reg, %struct.Reg* %1628, i32 0, i32 0
  %RDX.i389 = bitcast %union.anon* %1629 to i64*
  %1630 = load i64, i64* %RDX.i389
  %1631 = load i64, i64* %PC.i388
  %1632 = add i64 %1631, 3
  store i64 %1632, i64* %PC.i388
  %1633 = trunc i64 %1630 to i32
  %1634 = add i32 1, %1633
  %1635 = zext i32 %1634 to i64
  store i64 %1635, i64* %RDX.i389, align 8
  %1636 = icmp ult i32 %1634, %1633
  %1637 = icmp ult i32 %1634, 1
  %1638 = or i1 %1636, %1637
  %1639 = zext i1 %1638 to i8
  %1640 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1639, i8* %1640, align 1
  %1641 = and i32 %1634, 255
  %1642 = call i32 @llvm.ctpop.i32(i32 %1641)
  %1643 = trunc i32 %1642 to i8
  %1644 = and i8 %1643, 1
  %1645 = xor i8 %1644, 1
  %1646 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1645, i8* %1646, align 1
  %1647 = xor i64 1, %1630
  %1648 = trunc i64 %1647 to i32
  %1649 = xor i32 %1648, %1634
  %1650 = lshr i32 %1649, 4
  %1651 = trunc i32 %1650 to i8
  %1652 = and i8 %1651, 1
  %1653 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1652, i8* %1653, align 1
  %1654 = icmp eq i32 %1634, 0
  %1655 = zext i1 %1654 to i8
  %1656 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1655, i8* %1656, align 1
  %1657 = lshr i32 %1634, 31
  %1658 = trunc i32 %1657 to i8
  %1659 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1658, i8* %1659, align 1
  %1660 = lshr i32 %1633, 31
  %1661 = xor i32 %1657, %1660
  %1662 = add i32 %1661, %1657
  %1663 = icmp eq i32 %1662, 2
  %1664 = zext i1 %1663 to i8
  %1665 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1664, i8* %1665, align 1
  store %struct.Memory* %loadMem_43b915, %struct.Memory** %MEMORY
  %loadMem_43b918 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1667 = getelementptr inbounds %struct.GPR, %struct.GPR* %1666, i32 0, i32 33
  %1668 = getelementptr inbounds %struct.Reg, %struct.Reg* %1667, i32 0, i32 0
  %PC.i384 = bitcast %union.anon* %1668 to i64*
  %1669 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1670 = getelementptr inbounds %struct.GPR, %struct.GPR* %1669, i32 0, i32 7
  %1671 = getelementptr inbounds %struct.Reg, %struct.Reg* %1670, i32 0, i32 0
  %EDX.i385 = bitcast %union.anon* %1671 to i32*
  %1672 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1673 = getelementptr inbounds %struct.GPR, %struct.GPR* %1672, i32 0, i32 1
  %1674 = getelementptr inbounds %struct.Reg, %struct.Reg* %1673, i32 0, i32 0
  %RAX.i386 = bitcast %union.anon* %1674 to i64*
  %1675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1676 = getelementptr inbounds %struct.GPR, %struct.GPR* %1675, i32 0, i32 5
  %1677 = getelementptr inbounds %struct.Reg, %struct.Reg* %1676, i32 0, i32 0
  %RCX.i387 = bitcast %union.anon* %1677 to i64*
  %1678 = load i64, i64* %RAX.i386
  %1679 = load i64, i64* %RCX.i387
  %1680 = mul i64 %1679, 4
  %1681 = add i64 %1680, %1678
  %1682 = load i32, i32* %EDX.i385
  %1683 = zext i32 %1682 to i64
  %1684 = load i64, i64* %PC.i384
  %1685 = add i64 %1684, 3
  store i64 %1685, i64* %PC.i384
  %1686 = inttoptr i64 %1681 to i32*
  store i32 %1682, i32* %1686
  store %struct.Memory* %loadMem_43b918, %struct.Memory** %MEMORY
  %loadMem_43b91b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1688 = getelementptr inbounds %struct.GPR, %struct.GPR* %1687, i32 0, i32 33
  %1689 = getelementptr inbounds %struct.Reg, %struct.Reg* %1688, i32 0, i32 0
  %PC.i383 = bitcast %union.anon* %1689 to i64*
  %1690 = load i64, i64* %PC.i383
  %1691 = add i64 %1690, 55
  %1692 = load i64, i64* %PC.i383
  %1693 = add i64 %1692, 5
  store i64 %1693, i64* %PC.i383
  %1694 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1691, i64* %1694, align 8
  store %struct.Memory* %loadMem_43b91b, %struct.Memory** %MEMORY
  br label %block_.L_43b952

block_.L_43b920:                                  ; preds = %block_43b8da
  %loadMem_43b920 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1695 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1696 = getelementptr inbounds %struct.GPR, %struct.GPR* %1695, i32 0, i32 33
  %1697 = getelementptr inbounds %struct.Reg, %struct.Reg* %1696, i32 0, i32 0
  %PC.i381 = bitcast %union.anon* %1697 to i64*
  %1698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1699 = getelementptr inbounds %struct.GPR, %struct.GPR* %1698, i32 0, i32 1
  %1700 = getelementptr inbounds %struct.Reg, %struct.Reg* %1699, i32 0, i32 0
  %RAX.i382 = bitcast %union.anon* %1700 to i64*
  %1701 = load i64, i64* %PC.i381
  %1702 = add i64 %1701, 8
  store i64 %1702, i64* %PC.i381
  %1703 = load i64, i64* bitcast (%G_0x6cb908_type* @G_0x6cb908 to i64*)
  store i64 %1703, i64* %RAX.i382, align 8
  store %struct.Memory* %loadMem_43b920, %struct.Memory** %MEMORY
  %loadMem_43b928 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1705 = getelementptr inbounds %struct.GPR, %struct.GPR* %1704, i32 0, i32 33
  %1706 = getelementptr inbounds %struct.Reg, %struct.Reg* %1705, i32 0, i32 0
  %PC.i379 = bitcast %union.anon* %1706 to i64*
  %1707 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1708 = getelementptr inbounds %struct.GPR, %struct.GPR* %1707, i32 0, i32 1
  %1709 = getelementptr inbounds %struct.Reg, %struct.Reg* %1708, i32 0, i32 0
  %RAX.i380 = bitcast %union.anon* %1709 to i64*
  %1710 = load i64, i64* %RAX.i380
  %1711 = load i64, i64* %PC.i379
  %1712 = add i64 %1711, 6
  store i64 %1712, i64* %PC.i379
  %1713 = add i64 372, %1710
  store i64 %1713, i64* %RAX.i380, align 8
  %1714 = icmp ult i64 %1713, %1710
  %1715 = icmp ult i64 %1713, 372
  %1716 = or i1 %1714, %1715
  %1717 = zext i1 %1716 to i8
  %1718 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1717, i8* %1718, align 1
  %1719 = trunc i64 %1713 to i32
  %1720 = and i32 %1719, 255
  %1721 = call i32 @llvm.ctpop.i32(i32 %1720)
  %1722 = trunc i32 %1721 to i8
  %1723 = and i8 %1722, 1
  %1724 = xor i8 %1723, 1
  %1725 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1724, i8* %1725, align 1
  %1726 = xor i64 372, %1710
  %1727 = xor i64 %1726, %1713
  %1728 = lshr i64 %1727, 4
  %1729 = trunc i64 %1728 to i8
  %1730 = and i8 %1729, 1
  %1731 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1730, i8* %1731, align 1
  %1732 = icmp eq i64 %1713, 0
  %1733 = zext i1 %1732 to i8
  %1734 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1733, i8* %1734, align 1
  %1735 = lshr i64 %1713, 63
  %1736 = trunc i64 %1735 to i8
  %1737 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1736, i8* %1737, align 1
  %1738 = lshr i64 %1710, 63
  %1739 = xor i64 %1735, %1738
  %1740 = add i64 %1739, %1735
  %1741 = icmp eq i64 %1740, 2
  %1742 = zext i1 %1741 to i8
  %1743 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1742, i8* %1743, align 1
  store %struct.Memory* %loadMem_43b928, %struct.Memory** %MEMORY
  %loadMem_43b92e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1745 = getelementptr inbounds %struct.GPR, %struct.GPR* %1744, i32 0, i32 33
  %1746 = getelementptr inbounds %struct.Reg, %struct.Reg* %1745, i32 0, i32 0
  %PC.i377 = bitcast %union.anon* %1746 to i64*
  %1747 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1748 = getelementptr inbounds %struct.GPR, %struct.GPR* %1747, i32 0, i32 5
  %1749 = getelementptr inbounds %struct.Reg, %struct.Reg* %1748, i32 0, i32 0
  %RCX.i378 = bitcast %union.anon* %1749 to i64*
  %1750 = load i64, i64* %PC.i377
  %1751 = add i64 %1750, 8
  store i64 %1751, i64* %PC.i377
  %1752 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %1752, i64* %RCX.i378, align 8
  store %struct.Memory* %loadMem_43b92e, %struct.Memory** %MEMORY
  %loadMem_43b936 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1753 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1754 = getelementptr inbounds %struct.GPR, %struct.GPR* %1753, i32 0, i32 33
  %1755 = getelementptr inbounds %struct.Reg, %struct.Reg* %1754, i32 0, i32 0
  %PC.i375 = bitcast %union.anon* %1755 to i64*
  %1756 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1757 = getelementptr inbounds %struct.GPR, %struct.GPR* %1756, i32 0, i32 5
  %1758 = getelementptr inbounds %struct.Reg, %struct.Reg* %1757, i32 0, i32 0
  %RCX.i376 = bitcast %union.anon* %1758 to i64*
  %1759 = load i64, i64* %RCX.i376
  %1760 = add i64 %1759, 24
  %1761 = load i64, i64* %PC.i375
  %1762 = add i64 %1761, 4
  store i64 %1762, i64* %PC.i375
  %1763 = inttoptr i64 %1760 to i32*
  %1764 = load i32, i32* %1763
  %1765 = sext i32 %1764 to i64
  store i64 %1765, i64* %RCX.i376, align 8
  store %struct.Memory* %loadMem_43b936, %struct.Memory** %MEMORY
  %loadMem_43b93a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1766 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1767 = getelementptr inbounds %struct.GPR, %struct.GPR* %1766, i32 0, i32 33
  %1768 = getelementptr inbounds %struct.Reg, %struct.Reg* %1767, i32 0, i32 0
  %PC.i373 = bitcast %union.anon* %1768 to i64*
  %1769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1770 = getelementptr inbounds %struct.GPR, %struct.GPR* %1769, i32 0, i32 5
  %1771 = getelementptr inbounds %struct.Reg, %struct.Reg* %1770, i32 0, i32 0
  %RCX.i374 = bitcast %union.anon* %1771 to i64*
  %1772 = load i64, i64* %RCX.i374
  %1773 = load i64, i64* %PC.i373
  %1774 = add i64 %1773, 4
  store i64 %1774, i64* %PC.i373
  %1775 = sext i64 %1772 to i128
  %1776 = and i128 %1775, -18446744073709551616
  %1777 = zext i64 %1772 to i128
  %1778 = or i128 %1776, %1777
  %1779 = mul i128 60, %1778
  %1780 = trunc i128 %1779 to i64
  store i64 %1780, i64* %RCX.i374, align 8
  %1781 = sext i64 %1780 to i128
  %1782 = icmp ne i128 %1781, %1779
  %1783 = zext i1 %1782 to i8
  %1784 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1783, i8* %1784, align 1
  %1785 = trunc i128 %1779 to i32
  %1786 = and i32 %1785, 255
  %1787 = call i32 @llvm.ctpop.i32(i32 %1786)
  %1788 = trunc i32 %1787 to i8
  %1789 = and i8 %1788, 1
  %1790 = xor i8 %1789, 1
  %1791 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1790, i8* %1791, align 1
  %1792 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1792, align 1
  %1793 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1793, align 1
  %1794 = lshr i64 %1780, 63
  %1795 = trunc i64 %1794 to i8
  %1796 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1795, i8* %1796, align 1
  %1797 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1783, i8* %1797, align 1
  store %struct.Memory* %loadMem_43b93a, %struct.Memory** %MEMORY
  %loadMem_43b93e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1798 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1799 = getelementptr inbounds %struct.GPR, %struct.GPR* %1798, i32 0, i32 33
  %1800 = getelementptr inbounds %struct.Reg, %struct.Reg* %1799, i32 0, i32 0
  %PC.i370 = bitcast %union.anon* %1800 to i64*
  %1801 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1802 = getelementptr inbounds %struct.GPR, %struct.GPR* %1801, i32 0, i32 1
  %1803 = getelementptr inbounds %struct.Reg, %struct.Reg* %1802, i32 0, i32 0
  %RAX.i371 = bitcast %union.anon* %1803 to i64*
  %1804 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1805 = getelementptr inbounds %struct.GPR, %struct.GPR* %1804, i32 0, i32 5
  %1806 = getelementptr inbounds %struct.Reg, %struct.Reg* %1805, i32 0, i32 0
  %RCX.i372 = bitcast %union.anon* %1806 to i64*
  %1807 = load i64, i64* %RAX.i371
  %1808 = load i64, i64* %RCX.i372
  %1809 = load i64, i64* %PC.i370
  %1810 = add i64 %1809, 3
  store i64 %1810, i64* %PC.i370
  %1811 = add i64 %1808, %1807
  store i64 %1811, i64* %RAX.i371, align 8
  %1812 = icmp ult i64 %1811, %1807
  %1813 = icmp ult i64 %1811, %1808
  %1814 = or i1 %1812, %1813
  %1815 = zext i1 %1814 to i8
  %1816 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1815, i8* %1816, align 1
  %1817 = trunc i64 %1811 to i32
  %1818 = and i32 %1817, 255
  %1819 = call i32 @llvm.ctpop.i32(i32 %1818)
  %1820 = trunc i32 %1819 to i8
  %1821 = and i8 %1820, 1
  %1822 = xor i8 %1821, 1
  %1823 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1822, i8* %1823, align 1
  %1824 = xor i64 %1808, %1807
  %1825 = xor i64 %1824, %1811
  %1826 = lshr i64 %1825, 4
  %1827 = trunc i64 %1826 to i8
  %1828 = and i8 %1827, 1
  %1829 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1828, i8* %1829, align 1
  %1830 = icmp eq i64 %1811, 0
  %1831 = zext i1 %1830 to i8
  %1832 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1831, i8* %1832, align 1
  %1833 = lshr i64 %1811, 63
  %1834 = trunc i64 %1833 to i8
  %1835 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1834, i8* %1835, align 1
  %1836 = lshr i64 %1807, 63
  %1837 = lshr i64 %1808, 63
  %1838 = xor i64 %1833, %1836
  %1839 = xor i64 %1833, %1837
  %1840 = add i64 %1838, %1839
  %1841 = icmp eq i64 %1840, 2
  %1842 = zext i1 %1841 to i8
  %1843 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1842, i8* %1843, align 1
  store %struct.Memory* %loadMem_43b93e, %struct.Memory** %MEMORY
  %loadMem_43b941 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1844 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1845 = getelementptr inbounds %struct.GPR, %struct.GPR* %1844, i32 0, i32 33
  %1846 = getelementptr inbounds %struct.Reg, %struct.Reg* %1845, i32 0, i32 0
  %PC.i367 = bitcast %union.anon* %1846 to i64*
  %1847 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1848 = getelementptr inbounds %struct.GPR, %struct.GPR* %1847, i32 0, i32 5
  %1849 = getelementptr inbounds %struct.Reg, %struct.Reg* %1848, i32 0, i32 0
  %RCX.i368 = bitcast %union.anon* %1849 to i64*
  %1850 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1851 = getelementptr inbounds %struct.GPR, %struct.GPR* %1850, i32 0, i32 15
  %1852 = getelementptr inbounds %struct.Reg, %struct.Reg* %1851, i32 0, i32 0
  %RBP.i369 = bitcast %union.anon* %1852 to i64*
  %1853 = load i64, i64* %RBP.i369
  %1854 = sub i64 %1853, 8
  %1855 = load i64, i64* %PC.i367
  %1856 = add i64 %1855, 4
  store i64 %1856, i64* %PC.i367
  %1857 = inttoptr i64 %1854 to i64*
  %1858 = load i64, i64* %1857
  store i64 %1858, i64* %RCX.i368, align 8
  store %struct.Memory* %loadMem_43b941, %struct.Memory** %MEMORY
  %loadMem_43b945 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1859 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1860 = getelementptr inbounds %struct.GPR, %struct.GPR* %1859, i32 0, i32 33
  %1861 = getelementptr inbounds %struct.Reg, %struct.Reg* %1860, i32 0, i32 0
  %PC.i365 = bitcast %union.anon* %1861 to i64*
  %1862 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1863 = getelementptr inbounds %struct.GPR, %struct.GPR* %1862, i32 0, i32 5
  %1864 = getelementptr inbounds %struct.Reg, %struct.Reg* %1863, i32 0, i32 0
  %RCX.i366 = bitcast %union.anon* %1864 to i64*
  %1865 = load i64, i64* %RCX.i366
  %1866 = add i64 %1865, 72
  %1867 = load i64, i64* %PC.i365
  %1868 = add i64 %1867, 4
  store i64 %1868, i64* %PC.i365
  %1869 = inttoptr i64 %1866 to i32*
  %1870 = load i32, i32* %1869
  %1871 = sext i32 %1870 to i64
  store i64 %1871, i64* %RCX.i366, align 8
  store %struct.Memory* %loadMem_43b945, %struct.Memory** %MEMORY
  %loadMem_43b949 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1872 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1873 = getelementptr inbounds %struct.GPR, %struct.GPR* %1872, i32 0, i32 33
  %1874 = getelementptr inbounds %struct.Reg, %struct.Reg* %1873, i32 0, i32 0
  %PC.i361 = bitcast %union.anon* %1874 to i64*
  %1875 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1876 = getelementptr inbounds %struct.GPR, %struct.GPR* %1875, i32 0, i32 1
  %1877 = getelementptr inbounds %struct.Reg, %struct.Reg* %1876, i32 0, i32 0
  %RAX.i362 = bitcast %union.anon* %1877 to i64*
  %1878 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1879 = getelementptr inbounds %struct.GPR, %struct.GPR* %1878, i32 0, i32 5
  %1880 = getelementptr inbounds %struct.Reg, %struct.Reg* %1879, i32 0, i32 0
  %RCX.i363 = bitcast %union.anon* %1880 to i64*
  %1881 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1882 = getelementptr inbounds %struct.GPR, %struct.GPR* %1881, i32 0, i32 7
  %1883 = getelementptr inbounds %struct.Reg, %struct.Reg* %1882, i32 0, i32 0
  %RDX.i364 = bitcast %union.anon* %1883 to i64*
  %1884 = load i64, i64* %RAX.i362
  %1885 = load i64, i64* %RCX.i363
  %1886 = mul i64 %1885, 4
  %1887 = add i64 %1886, %1884
  %1888 = load i64, i64* %PC.i361
  %1889 = add i64 %1888, 3
  store i64 %1889, i64* %PC.i361
  %1890 = inttoptr i64 %1887 to i32*
  %1891 = load i32, i32* %1890
  %1892 = zext i32 %1891 to i64
  store i64 %1892, i64* %RDX.i364, align 8
  store %struct.Memory* %loadMem_43b949, %struct.Memory** %MEMORY
  %loadMem_43b94c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1893 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1894 = getelementptr inbounds %struct.GPR, %struct.GPR* %1893, i32 0, i32 33
  %1895 = getelementptr inbounds %struct.Reg, %struct.Reg* %1894, i32 0, i32 0
  %PC.i359 = bitcast %union.anon* %1895 to i64*
  %1896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1897 = getelementptr inbounds %struct.GPR, %struct.GPR* %1896, i32 0, i32 7
  %1898 = getelementptr inbounds %struct.Reg, %struct.Reg* %1897, i32 0, i32 0
  %RDX.i360 = bitcast %union.anon* %1898 to i64*
  %1899 = load i64, i64* %RDX.i360
  %1900 = load i64, i64* %PC.i359
  %1901 = add i64 %1900, 3
  store i64 %1901, i64* %PC.i359
  %1902 = trunc i64 %1899 to i32
  %1903 = add i32 1, %1902
  %1904 = zext i32 %1903 to i64
  store i64 %1904, i64* %RDX.i360, align 8
  %1905 = icmp ult i32 %1903, %1902
  %1906 = icmp ult i32 %1903, 1
  %1907 = or i1 %1905, %1906
  %1908 = zext i1 %1907 to i8
  %1909 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1908, i8* %1909, align 1
  %1910 = and i32 %1903, 255
  %1911 = call i32 @llvm.ctpop.i32(i32 %1910)
  %1912 = trunc i32 %1911 to i8
  %1913 = and i8 %1912, 1
  %1914 = xor i8 %1913, 1
  %1915 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1914, i8* %1915, align 1
  %1916 = xor i64 1, %1899
  %1917 = trunc i64 %1916 to i32
  %1918 = xor i32 %1917, %1903
  %1919 = lshr i32 %1918, 4
  %1920 = trunc i32 %1919 to i8
  %1921 = and i8 %1920, 1
  %1922 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1921, i8* %1922, align 1
  %1923 = icmp eq i32 %1903, 0
  %1924 = zext i1 %1923 to i8
  %1925 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1924, i8* %1925, align 1
  %1926 = lshr i32 %1903, 31
  %1927 = trunc i32 %1926 to i8
  %1928 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1927, i8* %1928, align 1
  %1929 = lshr i32 %1902, 31
  %1930 = xor i32 %1926, %1929
  %1931 = add i32 %1930, %1926
  %1932 = icmp eq i32 %1931, 2
  %1933 = zext i1 %1932 to i8
  %1934 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1933, i8* %1934, align 1
  store %struct.Memory* %loadMem_43b94c, %struct.Memory** %MEMORY
  %loadMem_43b94f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1936 = getelementptr inbounds %struct.GPR, %struct.GPR* %1935, i32 0, i32 33
  %1937 = getelementptr inbounds %struct.Reg, %struct.Reg* %1936, i32 0, i32 0
  %PC.i355 = bitcast %union.anon* %1937 to i64*
  %1938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1939 = getelementptr inbounds %struct.GPR, %struct.GPR* %1938, i32 0, i32 7
  %1940 = getelementptr inbounds %struct.Reg, %struct.Reg* %1939, i32 0, i32 0
  %EDX.i356 = bitcast %union.anon* %1940 to i32*
  %1941 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1942 = getelementptr inbounds %struct.GPR, %struct.GPR* %1941, i32 0, i32 1
  %1943 = getelementptr inbounds %struct.Reg, %struct.Reg* %1942, i32 0, i32 0
  %RAX.i357 = bitcast %union.anon* %1943 to i64*
  %1944 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1945 = getelementptr inbounds %struct.GPR, %struct.GPR* %1944, i32 0, i32 5
  %1946 = getelementptr inbounds %struct.Reg, %struct.Reg* %1945, i32 0, i32 0
  %RCX.i358 = bitcast %union.anon* %1946 to i64*
  %1947 = load i64, i64* %RAX.i357
  %1948 = load i64, i64* %RCX.i358
  %1949 = mul i64 %1948, 4
  %1950 = add i64 %1949, %1947
  %1951 = load i32, i32* %EDX.i356
  %1952 = zext i32 %1951 to i64
  %1953 = load i64, i64* %PC.i355
  %1954 = add i64 %1953, 3
  store i64 %1954, i64* %PC.i355
  %1955 = inttoptr i64 %1950 to i32*
  store i32 %1951, i32* %1955
  store %struct.Memory* %loadMem_43b94f, %struct.Memory** %MEMORY
  br label %block_.L_43b952

block_.L_43b952:                                  ; preds = %block_.L_43b920, %block_43b8eb
  %loadMem_43b952 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1956 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1957 = getelementptr inbounds %struct.GPR, %struct.GPR* %1956, i32 0, i32 33
  %1958 = getelementptr inbounds %struct.Reg, %struct.Reg* %1957, i32 0, i32 0
  %PC.i354 = bitcast %union.anon* %1958 to i64*
  %1959 = load i64, i64* %PC.i354
  %1960 = add i64 %1959, 5
  %1961 = load i64, i64* %PC.i354
  %1962 = add i64 %1961, 5
  store i64 %1962, i64* %PC.i354
  %1963 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1960, i64* %1963, align 8
  store %struct.Memory* %loadMem_43b952, %struct.Memory** %MEMORY
  br label %block_.L_43b957

block_.L_43b957:                                  ; preds = %block_.L_43b952, %block_.L_43b8a0
  %loadMem_43b957 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1965 = getelementptr inbounds %struct.GPR, %struct.GPR* %1964, i32 0, i32 33
  %1966 = getelementptr inbounds %struct.Reg, %struct.Reg* %1965, i32 0, i32 0
  %PC.i353 = bitcast %union.anon* %1966 to i64*
  %1967 = load i64, i64* %PC.i353
  %1968 = add i64 %1967, 5
  %1969 = load i64, i64* %PC.i353
  %1970 = add i64 %1969, 5
  store i64 %1970, i64* %PC.i353
  %1971 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1968, i64* %1971, align 8
  store %struct.Memory* %loadMem_43b957, %struct.Memory** %MEMORY
  br label %block_.L_43b95c

block_.L_43b95c:                                  ; preds = %block_.L_43b957, %block_43b892
  %loadMem_43b95c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1972 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1973 = getelementptr inbounds %struct.GPR, %struct.GPR* %1972, i32 0, i32 33
  %1974 = getelementptr inbounds %struct.Reg, %struct.Reg* %1973, i32 0, i32 0
  %PC.i351 = bitcast %union.anon* %1974 to i64*
  %1975 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1976 = getelementptr inbounds %struct.GPR, %struct.GPR* %1975, i32 0, i32 1
  %1977 = getelementptr inbounds %struct.Reg, %struct.Reg* %1976, i32 0, i32 0
  %RAX.i352 = bitcast %union.anon* %1977 to i64*
  %1978 = load i64, i64* %PC.i351
  %1979 = add i64 %1978, 8
  store i64 %1979, i64* %PC.i351
  %1980 = load i64, i64* bitcast (%G_0x6cb908_type* @G_0x6cb908 to i64*)
  store i64 %1980, i64* %RAX.i352, align 8
  store %struct.Memory* %loadMem_43b95c, %struct.Memory** %MEMORY
  %loadMem_43b964 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1982 = getelementptr inbounds %struct.GPR, %struct.GPR* %1981, i32 0, i32 33
  %1983 = getelementptr inbounds %struct.Reg, %struct.Reg* %1982, i32 0, i32 0
  %PC.i349 = bitcast %union.anon* %1983 to i64*
  %1984 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1985 = getelementptr inbounds %struct.GPR, %struct.GPR* %1984, i32 0, i32 1
  %1986 = getelementptr inbounds %struct.Reg, %struct.Reg* %1985, i32 0, i32 0
  %RAX.i350 = bitcast %union.anon* %1986 to i64*
  %1987 = load i64, i64* %RAX.i350
  %1988 = load i64, i64* %PC.i349
  %1989 = add i64 %1988, 6
  store i64 %1989, i64* %PC.i349
  %1990 = add i64 728, %1987
  store i64 %1990, i64* %RAX.i350, align 8
  %1991 = icmp ult i64 %1990, %1987
  %1992 = icmp ult i64 %1990, 728
  %1993 = or i1 %1991, %1992
  %1994 = zext i1 %1993 to i8
  %1995 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1994, i8* %1995, align 1
  %1996 = trunc i64 %1990 to i32
  %1997 = and i32 %1996, 255
  %1998 = call i32 @llvm.ctpop.i32(i32 %1997)
  %1999 = trunc i32 %1998 to i8
  %2000 = and i8 %1999, 1
  %2001 = xor i8 %2000, 1
  %2002 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2001, i8* %2002, align 1
  %2003 = xor i64 728, %1987
  %2004 = xor i64 %2003, %1990
  %2005 = lshr i64 %2004, 4
  %2006 = trunc i64 %2005 to i8
  %2007 = and i8 %2006, 1
  %2008 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2007, i8* %2008, align 1
  %2009 = icmp eq i64 %1990, 0
  %2010 = zext i1 %2009 to i8
  %2011 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2010, i8* %2011, align 1
  %2012 = lshr i64 %1990, 63
  %2013 = trunc i64 %2012 to i8
  %2014 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2013, i8* %2014, align 1
  %2015 = lshr i64 %1987, 63
  %2016 = xor i64 %2012, %2015
  %2017 = add i64 %2016, %2012
  %2018 = icmp eq i64 %2017, 2
  %2019 = zext i1 %2018 to i8
  %2020 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2019, i8* %2020, align 1
  store %struct.Memory* %loadMem_43b964, %struct.Memory** %MEMORY
  %loadMem_43b96a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2021 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2022 = getelementptr inbounds %struct.GPR, %struct.GPR* %2021, i32 0, i32 33
  %2023 = getelementptr inbounds %struct.Reg, %struct.Reg* %2022, i32 0, i32 0
  %PC.i347 = bitcast %union.anon* %2023 to i64*
  %2024 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2025 = getelementptr inbounds %struct.GPR, %struct.GPR* %2024, i32 0, i32 5
  %2026 = getelementptr inbounds %struct.Reg, %struct.Reg* %2025, i32 0, i32 0
  %RCX.i348 = bitcast %union.anon* %2026 to i64*
  %2027 = load i64, i64* %PC.i347
  %2028 = add i64 %2027, 8
  store i64 %2028, i64* %PC.i347
  %2029 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %2029, i64* %RCX.i348, align 8
  store %struct.Memory* %loadMem_43b96a, %struct.Memory** %MEMORY
  %loadMem_43b972 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2030 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2031 = getelementptr inbounds %struct.GPR, %struct.GPR* %2030, i32 0, i32 33
  %2032 = getelementptr inbounds %struct.Reg, %struct.Reg* %2031, i32 0, i32 0
  %PC.i345 = bitcast %union.anon* %2032 to i64*
  %2033 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2034 = getelementptr inbounds %struct.GPR, %struct.GPR* %2033, i32 0, i32 5
  %2035 = getelementptr inbounds %struct.Reg, %struct.Reg* %2034, i32 0, i32 0
  %RCX.i346 = bitcast %union.anon* %2035 to i64*
  %2036 = load i64, i64* %RCX.i346
  %2037 = add i64 %2036, 24
  %2038 = load i64, i64* %PC.i345
  %2039 = add i64 %2038, 4
  store i64 %2039, i64* %PC.i345
  %2040 = inttoptr i64 %2037 to i32*
  %2041 = load i32, i32* %2040
  %2042 = sext i32 %2041 to i64
  store i64 %2042, i64* %RCX.i346, align 8
  store %struct.Memory* %loadMem_43b972, %struct.Memory** %MEMORY
  %loadMem_43b976 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2043 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2044 = getelementptr inbounds %struct.GPR, %struct.GPR* %2043, i32 0, i32 33
  %2045 = getelementptr inbounds %struct.Reg, %struct.Reg* %2044, i32 0, i32 0
  %PC.i343 = bitcast %union.anon* %2045 to i64*
  %2046 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2047 = getelementptr inbounds %struct.GPR, %struct.GPR* %2046, i32 0, i32 5
  %2048 = getelementptr inbounds %struct.Reg, %struct.Reg* %2047, i32 0, i32 0
  %RCX.i344 = bitcast %union.anon* %2048 to i64*
  %2049 = load i64, i64* %RCX.i344
  %2050 = load i64, i64* %PC.i343
  %2051 = add i64 %2050, 4
  store i64 %2051, i64* %PC.i343
  %2052 = sext i64 %2049 to i128
  %2053 = and i128 %2052, -18446744073709551616
  %2054 = zext i64 %2049 to i128
  %2055 = or i128 %2053, %2054
  %2056 = mul i128 60, %2055
  %2057 = trunc i128 %2056 to i64
  store i64 %2057, i64* %RCX.i344, align 8
  %2058 = sext i64 %2057 to i128
  %2059 = icmp ne i128 %2058, %2056
  %2060 = zext i1 %2059 to i8
  %2061 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2060, i8* %2061, align 1
  %2062 = trunc i128 %2056 to i32
  %2063 = and i32 %2062, 255
  %2064 = call i32 @llvm.ctpop.i32(i32 %2063)
  %2065 = trunc i32 %2064 to i8
  %2066 = and i8 %2065, 1
  %2067 = xor i8 %2066, 1
  %2068 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2067, i8* %2068, align 1
  %2069 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2069, align 1
  %2070 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2070, align 1
  %2071 = lshr i64 %2057, 63
  %2072 = trunc i64 %2071 to i8
  %2073 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2072, i8* %2073, align 1
  %2074 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2060, i8* %2074, align 1
  store %struct.Memory* %loadMem_43b976, %struct.Memory** %MEMORY
  %loadMem_43b97a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2075 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2076 = getelementptr inbounds %struct.GPR, %struct.GPR* %2075, i32 0, i32 33
  %2077 = getelementptr inbounds %struct.Reg, %struct.Reg* %2076, i32 0, i32 0
  %PC.i340 = bitcast %union.anon* %2077 to i64*
  %2078 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2079 = getelementptr inbounds %struct.GPR, %struct.GPR* %2078, i32 0, i32 1
  %2080 = getelementptr inbounds %struct.Reg, %struct.Reg* %2079, i32 0, i32 0
  %RAX.i341 = bitcast %union.anon* %2080 to i64*
  %2081 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2082 = getelementptr inbounds %struct.GPR, %struct.GPR* %2081, i32 0, i32 5
  %2083 = getelementptr inbounds %struct.Reg, %struct.Reg* %2082, i32 0, i32 0
  %RCX.i342 = bitcast %union.anon* %2083 to i64*
  %2084 = load i64, i64* %RAX.i341
  %2085 = load i64, i64* %RCX.i342
  %2086 = load i64, i64* %PC.i340
  %2087 = add i64 %2086, 3
  store i64 %2087, i64* %PC.i340
  %2088 = add i64 %2085, %2084
  store i64 %2088, i64* %RAX.i341, align 8
  %2089 = icmp ult i64 %2088, %2084
  %2090 = icmp ult i64 %2088, %2085
  %2091 = or i1 %2089, %2090
  %2092 = zext i1 %2091 to i8
  %2093 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2092, i8* %2093, align 1
  %2094 = trunc i64 %2088 to i32
  %2095 = and i32 %2094, 255
  %2096 = call i32 @llvm.ctpop.i32(i32 %2095)
  %2097 = trunc i32 %2096 to i8
  %2098 = and i8 %2097, 1
  %2099 = xor i8 %2098, 1
  %2100 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2099, i8* %2100, align 1
  %2101 = xor i64 %2085, %2084
  %2102 = xor i64 %2101, %2088
  %2103 = lshr i64 %2102, 4
  %2104 = trunc i64 %2103 to i8
  %2105 = and i8 %2104, 1
  %2106 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2105, i8* %2106, align 1
  %2107 = icmp eq i64 %2088, 0
  %2108 = zext i1 %2107 to i8
  %2109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2108, i8* %2109, align 1
  %2110 = lshr i64 %2088, 63
  %2111 = trunc i64 %2110 to i8
  %2112 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2111, i8* %2112, align 1
  %2113 = lshr i64 %2084, 63
  %2114 = lshr i64 %2085, 63
  %2115 = xor i64 %2110, %2113
  %2116 = xor i64 %2110, %2114
  %2117 = add i64 %2115, %2116
  %2118 = icmp eq i64 %2117, 2
  %2119 = zext i1 %2118 to i8
  %2120 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2119, i8* %2120, align 1
  store %struct.Memory* %loadMem_43b97a, %struct.Memory** %MEMORY
  %loadMem_43b97d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2122 = getelementptr inbounds %struct.GPR, %struct.GPR* %2121, i32 0, i32 33
  %2123 = getelementptr inbounds %struct.Reg, %struct.Reg* %2122, i32 0, i32 0
  %PC.i337 = bitcast %union.anon* %2123 to i64*
  %2124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2125 = getelementptr inbounds %struct.GPR, %struct.GPR* %2124, i32 0, i32 5
  %2126 = getelementptr inbounds %struct.Reg, %struct.Reg* %2125, i32 0, i32 0
  %RCX.i338 = bitcast %union.anon* %2126 to i64*
  %2127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2128 = getelementptr inbounds %struct.GPR, %struct.GPR* %2127, i32 0, i32 15
  %2129 = getelementptr inbounds %struct.Reg, %struct.Reg* %2128, i32 0, i32 0
  %RBP.i339 = bitcast %union.anon* %2129 to i64*
  %2130 = load i64, i64* %RBP.i339
  %2131 = sub i64 %2130, 8
  %2132 = load i64, i64* %PC.i337
  %2133 = add i64 %2132, 4
  store i64 %2133, i64* %PC.i337
  %2134 = inttoptr i64 %2131 to i64*
  %2135 = load i64, i64* %2134
  store i64 %2135, i64* %RCX.i338, align 8
  store %struct.Memory* %loadMem_43b97d, %struct.Memory** %MEMORY
  %loadMem_43b981 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2137 = getelementptr inbounds %struct.GPR, %struct.GPR* %2136, i32 0, i32 33
  %2138 = getelementptr inbounds %struct.Reg, %struct.Reg* %2137, i32 0, i32 0
  %PC.i335 = bitcast %union.anon* %2138 to i64*
  %2139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2140 = getelementptr inbounds %struct.GPR, %struct.GPR* %2139, i32 0, i32 5
  %2141 = getelementptr inbounds %struct.Reg, %struct.Reg* %2140, i32 0, i32 0
  %RCX.i336 = bitcast %union.anon* %2141 to i64*
  %2142 = load i64, i64* %RCX.i336
  %2143 = add i64 %2142, 72
  %2144 = load i64, i64* %PC.i335
  %2145 = add i64 %2144, 4
  store i64 %2145, i64* %PC.i335
  %2146 = inttoptr i64 %2143 to i32*
  %2147 = load i32, i32* %2146
  %2148 = sext i32 %2147 to i64
  store i64 %2148, i64* %RCX.i336, align 8
  store %struct.Memory* %loadMem_43b981, %struct.Memory** %MEMORY
  %loadMem_43b985 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2150 = getelementptr inbounds %struct.GPR, %struct.GPR* %2149, i32 0, i32 33
  %2151 = getelementptr inbounds %struct.Reg, %struct.Reg* %2150, i32 0, i32 0
  %PC.i331 = bitcast %union.anon* %2151 to i64*
  %2152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2153 = getelementptr inbounds %struct.GPR, %struct.GPR* %2152, i32 0, i32 1
  %2154 = getelementptr inbounds %struct.Reg, %struct.Reg* %2153, i32 0, i32 0
  %RAX.i332 = bitcast %union.anon* %2154 to i64*
  %2155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2156 = getelementptr inbounds %struct.GPR, %struct.GPR* %2155, i32 0, i32 5
  %2157 = getelementptr inbounds %struct.Reg, %struct.Reg* %2156, i32 0, i32 0
  %RCX.i333 = bitcast %union.anon* %2157 to i64*
  %2158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2159 = getelementptr inbounds %struct.GPR, %struct.GPR* %2158, i32 0, i32 7
  %2160 = getelementptr inbounds %struct.Reg, %struct.Reg* %2159, i32 0, i32 0
  %RDX.i334 = bitcast %union.anon* %2160 to i64*
  %2161 = load i64, i64* %RAX.i332
  %2162 = load i64, i64* %RCX.i333
  %2163 = mul i64 %2162, 4
  %2164 = add i64 %2163, %2161
  %2165 = load i64, i64* %PC.i331
  %2166 = add i64 %2165, 3
  store i64 %2166, i64* %PC.i331
  %2167 = inttoptr i64 %2164 to i32*
  %2168 = load i32, i32* %2167
  %2169 = zext i32 %2168 to i64
  store i64 %2169, i64* %RDX.i334, align 8
  store %struct.Memory* %loadMem_43b985, %struct.Memory** %MEMORY
  %loadMem_43b988 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2171 = getelementptr inbounds %struct.GPR, %struct.GPR* %2170, i32 0, i32 33
  %2172 = getelementptr inbounds %struct.Reg, %struct.Reg* %2171, i32 0, i32 0
  %PC.i329 = bitcast %union.anon* %2172 to i64*
  %2173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2174 = getelementptr inbounds %struct.GPR, %struct.GPR* %2173, i32 0, i32 7
  %2175 = getelementptr inbounds %struct.Reg, %struct.Reg* %2174, i32 0, i32 0
  %RDX.i330 = bitcast %union.anon* %2175 to i64*
  %2176 = load i64, i64* %RDX.i330
  %2177 = load i64, i64* %PC.i329
  %2178 = add i64 %2177, 3
  store i64 %2178, i64* %PC.i329
  %2179 = trunc i64 %2176 to i32
  %2180 = add i32 1, %2179
  %2181 = zext i32 %2180 to i64
  store i64 %2181, i64* %RDX.i330, align 8
  %2182 = icmp ult i32 %2180, %2179
  %2183 = icmp ult i32 %2180, 1
  %2184 = or i1 %2182, %2183
  %2185 = zext i1 %2184 to i8
  %2186 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2185, i8* %2186, align 1
  %2187 = and i32 %2180, 255
  %2188 = call i32 @llvm.ctpop.i32(i32 %2187)
  %2189 = trunc i32 %2188 to i8
  %2190 = and i8 %2189, 1
  %2191 = xor i8 %2190, 1
  %2192 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2191, i8* %2192, align 1
  %2193 = xor i64 1, %2176
  %2194 = trunc i64 %2193 to i32
  %2195 = xor i32 %2194, %2180
  %2196 = lshr i32 %2195, 4
  %2197 = trunc i32 %2196 to i8
  %2198 = and i8 %2197, 1
  %2199 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2198, i8* %2199, align 1
  %2200 = icmp eq i32 %2180, 0
  %2201 = zext i1 %2200 to i8
  %2202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2201, i8* %2202, align 1
  %2203 = lshr i32 %2180, 31
  %2204 = trunc i32 %2203 to i8
  %2205 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2204, i8* %2205, align 1
  %2206 = lshr i32 %2179, 31
  %2207 = xor i32 %2203, %2206
  %2208 = add i32 %2207, %2203
  %2209 = icmp eq i32 %2208, 2
  %2210 = zext i1 %2209 to i8
  %2211 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2210, i8* %2211, align 1
  store %struct.Memory* %loadMem_43b988, %struct.Memory** %MEMORY
  %loadMem_43b98b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2213 = getelementptr inbounds %struct.GPR, %struct.GPR* %2212, i32 0, i32 33
  %2214 = getelementptr inbounds %struct.Reg, %struct.Reg* %2213, i32 0, i32 0
  %PC.i325 = bitcast %union.anon* %2214 to i64*
  %2215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2216 = getelementptr inbounds %struct.GPR, %struct.GPR* %2215, i32 0, i32 7
  %2217 = getelementptr inbounds %struct.Reg, %struct.Reg* %2216, i32 0, i32 0
  %EDX.i326 = bitcast %union.anon* %2217 to i32*
  %2218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2219 = getelementptr inbounds %struct.GPR, %struct.GPR* %2218, i32 0, i32 1
  %2220 = getelementptr inbounds %struct.Reg, %struct.Reg* %2219, i32 0, i32 0
  %RAX.i327 = bitcast %union.anon* %2220 to i64*
  %2221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2222 = getelementptr inbounds %struct.GPR, %struct.GPR* %2221, i32 0, i32 5
  %2223 = getelementptr inbounds %struct.Reg, %struct.Reg* %2222, i32 0, i32 0
  %RCX.i328 = bitcast %union.anon* %2223 to i64*
  %2224 = load i64, i64* %RAX.i327
  %2225 = load i64, i64* %RCX.i328
  %2226 = mul i64 %2225, 4
  %2227 = add i64 %2226, %2224
  %2228 = load i32, i32* %EDX.i326
  %2229 = zext i32 %2228 to i64
  %2230 = load i64, i64* %PC.i325
  %2231 = add i64 %2230, 3
  store i64 %2231, i64* %PC.i325
  %2232 = inttoptr i64 %2227 to i32*
  store i32 %2228, i32* %2232
  store %struct.Memory* %loadMem_43b98b, %struct.Memory** %MEMORY
  %loadMem_43b98e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2234 = getelementptr inbounds %struct.GPR, %struct.GPR* %2233, i32 0, i32 33
  %2235 = getelementptr inbounds %struct.Reg, %struct.Reg* %2234, i32 0, i32 0
  %PC.i322 = bitcast %union.anon* %2235 to i64*
  %2236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2237 = getelementptr inbounds %struct.GPR, %struct.GPR* %2236, i32 0, i32 1
  %2238 = getelementptr inbounds %struct.Reg, %struct.Reg* %2237, i32 0, i32 0
  %RAX.i323 = bitcast %union.anon* %2238 to i64*
  %2239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2240 = getelementptr inbounds %struct.GPR, %struct.GPR* %2239, i32 0, i32 15
  %2241 = getelementptr inbounds %struct.Reg, %struct.Reg* %2240, i32 0, i32 0
  %RBP.i324 = bitcast %union.anon* %2241 to i64*
  %2242 = load i64, i64* %RBP.i324
  %2243 = sub i64 %2242, 16
  %2244 = load i64, i64* %PC.i322
  %2245 = add i64 %2244, 4
  store i64 %2245, i64* %PC.i322
  %2246 = inttoptr i64 %2243 to i64*
  %2247 = load i64, i64* %2246
  store i64 %2247, i64* %RAX.i323, align 8
  store %struct.Memory* %loadMem_43b98e, %struct.Memory** %MEMORY
  %loadMem_43b992 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2249 = getelementptr inbounds %struct.GPR, %struct.GPR* %2248, i32 0, i32 33
  %2250 = getelementptr inbounds %struct.Reg, %struct.Reg* %2249, i32 0, i32 0
  %PC.i319 = bitcast %union.anon* %2250 to i64*
  %2251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2252 = getelementptr inbounds %struct.GPR, %struct.GPR* %2251, i32 0, i32 1
  %2253 = getelementptr inbounds %struct.Reg, %struct.Reg* %2252, i32 0, i32 0
  %RAX.i320 = bitcast %union.anon* %2253 to i64*
  %2254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2255 = getelementptr inbounds %struct.GPR, %struct.GPR* %2254, i32 0, i32 7
  %2256 = getelementptr inbounds %struct.Reg, %struct.Reg* %2255, i32 0, i32 0
  %RDX.i321 = bitcast %union.anon* %2256 to i64*
  %2257 = load i64, i64* %RAX.i320
  %2258 = add i64 %2257, 12
  %2259 = load i64, i64* %PC.i319
  %2260 = add i64 %2259, 3
  store i64 %2260, i64* %PC.i319
  %2261 = inttoptr i64 %2258 to i32*
  %2262 = load i32, i32* %2261
  %2263 = zext i32 %2262 to i64
  store i64 %2263, i64* %RDX.i321, align 8
  store %struct.Memory* %loadMem_43b992, %struct.Memory** %MEMORY
  %loadMem_43b995 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2265 = getelementptr inbounds %struct.GPR, %struct.GPR* %2264, i32 0, i32 33
  %2266 = getelementptr inbounds %struct.Reg, %struct.Reg* %2265, i32 0, i32 0
  %PC.i317 = bitcast %union.anon* %2266 to i64*
  %2267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2268 = getelementptr inbounds %struct.GPR, %struct.GPR* %2267, i32 0, i32 1
  %2269 = getelementptr inbounds %struct.Reg, %struct.Reg* %2268, i32 0, i32 0
  %RAX.i318 = bitcast %union.anon* %2269 to i64*
  %2270 = load i64, i64* %PC.i317
  %2271 = add i64 %2270, 8
  store i64 %2271, i64* %PC.i317
  %2272 = load i64, i64* bitcast (%G_0x6cb908_type* @G_0x6cb908 to i64*)
  store i64 %2272, i64* %RAX.i318, align 8
  store %struct.Memory* %loadMem_43b995, %struct.Memory** %MEMORY
  %loadMem_43b99d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2274 = getelementptr inbounds %struct.GPR, %struct.GPR* %2273, i32 0, i32 33
  %2275 = getelementptr inbounds %struct.Reg, %struct.Reg* %2274, i32 0, i32 0
  %PC.i315 = bitcast %union.anon* %2275 to i64*
  %2276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2277 = getelementptr inbounds %struct.GPR, %struct.GPR* %2276, i32 0, i32 1
  %2278 = getelementptr inbounds %struct.Reg, %struct.Reg* %2277, i32 0, i32 0
  %RAX.i316 = bitcast %union.anon* %2278 to i64*
  %2279 = load i64, i64* %RAX.i316
  %2280 = load i64, i64* %PC.i315
  %2281 = add i64 %2280, 6
  store i64 %2281, i64* %PC.i315
  %2282 = add i64 1028, %2279
  store i64 %2282, i64* %RAX.i316, align 8
  %2283 = icmp ult i64 %2282, %2279
  %2284 = icmp ult i64 %2282, 1028
  %2285 = or i1 %2283, %2284
  %2286 = zext i1 %2285 to i8
  %2287 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2286, i8* %2287, align 1
  %2288 = trunc i64 %2282 to i32
  %2289 = and i32 %2288, 255
  %2290 = call i32 @llvm.ctpop.i32(i32 %2289)
  %2291 = trunc i32 %2290 to i8
  %2292 = and i8 %2291, 1
  %2293 = xor i8 %2292, 1
  %2294 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2293, i8* %2294, align 1
  %2295 = xor i64 1028, %2279
  %2296 = xor i64 %2295, %2282
  %2297 = lshr i64 %2296, 4
  %2298 = trunc i64 %2297 to i8
  %2299 = and i8 %2298, 1
  %2300 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2299, i8* %2300, align 1
  %2301 = icmp eq i64 %2282, 0
  %2302 = zext i1 %2301 to i8
  %2303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2302, i8* %2303, align 1
  %2304 = lshr i64 %2282, 63
  %2305 = trunc i64 %2304 to i8
  %2306 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2305, i8* %2306, align 1
  %2307 = lshr i64 %2279, 63
  %2308 = xor i64 %2304, %2307
  %2309 = add i64 %2308, %2304
  %2310 = icmp eq i64 %2309, 2
  %2311 = zext i1 %2310 to i8
  %2312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2311, i8* %2312, align 1
  store %struct.Memory* %loadMem_43b99d, %struct.Memory** %MEMORY
  %loadMem_43b9a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2314 = getelementptr inbounds %struct.GPR, %struct.GPR* %2313, i32 0, i32 33
  %2315 = getelementptr inbounds %struct.Reg, %struct.Reg* %2314, i32 0, i32 0
  %PC.i313 = bitcast %union.anon* %2315 to i64*
  %2316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2317 = getelementptr inbounds %struct.GPR, %struct.GPR* %2316, i32 0, i32 5
  %2318 = getelementptr inbounds %struct.Reg, %struct.Reg* %2317, i32 0, i32 0
  %RCX.i314 = bitcast %union.anon* %2318 to i64*
  %2319 = load i64, i64* %PC.i313
  %2320 = add i64 %2319, 8
  store i64 %2320, i64* %PC.i313
  %2321 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %2321, i64* %RCX.i314, align 8
  store %struct.Memory* %loadMem_43b9a3, %struct.Memory** %MEMORY
  %loadMem_43b9ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %2322 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2323 = getelementptr inbounds %struct.GPR, %struct.GPR* %2322, i32 0, i32 33
  %2324 = getelementptr inbounds %struct.Reg, %struct.Reg* %2323, i32 0, i32 0
  %PC.i311 = bitcast %union.anon* %2324 to i64*
  %2325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2326 = getelementptr inbounds %struct.GPR, %struct.GPR* %2325, i32 0, i32 5
  %2327 = getelementptr inbounds %struct.Reg, %struct.Reg* %2326, i32 0, i32 0
  %RCX.i312 = bitcast %union.anon* %2327 to i64*
  %2328 = load i64, i64* %RCX.i312
  %2329 = add i64 %2328, 24
  %2330 = load i64, i64* %PC.i311
  %2331 = add i64 %2330, 4
  store i64 %2331, i64* %PC.i311
  %2332 = inttoptr i64 %2329 to i32*
  %2333 = load i32, i32* %2332
  %2334 = sext i32 %2333 to i64
  store i64 %2334, i64* %RCX.i312, align 8
  store %struct.Memory* %loadMem_43b9ab, %struct.Memory** %MEMORY
  %loadMem_43b9af = load %struct.Memory*, %struct.Memory** %MEMORY
  %2335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2336 = getelementptr inbounds %struct.GPR, %struct.GPR* %2335, i32 0, i32 33
  %2337 = getelementptr inbounds %struct.Reg, %struct.Reg* %2336, i32 0, i32 0
  %PC.i309 = bitcast %union.anon* %2337 to i64*
  %2338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2339 = getelementptr inbounds %struct.GPR, %struct.GPR* %2338, i32 0, i32 5
  %2340 = getelementptr inbounds %struct.Reg, %struct.Reg* %2339, i32 0, i32 0
  %RCX.i310 = bitcast %union.anon* %2340 to i64*
  %2341 = load i64, i64* %RCX.i310
  %2342 = load i64, i64* %PC.i309
  %2343 = add i64 %2342, 4
  store i64 %2343, i64* %PC.i309
  %2344 = sext i64 %2341 to i128
  %2345 = and i128 %2344, -18446744073709551616
  %2346 = zext i64 %2341 to i128
  %2347 = or i128 %2345, %2346
  %2348 = mul i128 60, %2347
  %2349 = trunc i128 %2348 to i64
  store i64 %2349, i64* %RCX.i310, align 8
  %2350 = sext i64 %2349 to i128
  %2351 = icmp ne i128 %2350, %2348
  %2352 = zext i1 %2351 to i8
  %2353 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2352, i8* %2353, align 1
  %2354 = trunc i128 %2348 to i32
  %2355 = and i32 %2354, 255
  %2356 = call i32 @llvm.ctpop.i32(i32 %2355)
  %2357 = trunc i32 %2356 to i8
  %2358 = and i8 %2357, 1
  %2359 = xor i8 %2358, 1
  %2360 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2359, i8* %2360, align 1
  %2361 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2361, align 1
  %2362 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2362, align 1
  %2363 = lshr i64 %2349, 63
  %2364 = trunc i64 %2363 to i8
  %2365 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2364, i8* %2365, align 1
  %2366 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2352, i8* %2366, align 1
  store %struct.Memory* %loadMem_43b9af, %struct.Memory** %MEMORY
  %loadMem_43b9b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2368 = getelementptr inbounds %struct.GPR, %struct.GPR* %2367, i32 0, i32 33
  %2369 = getelementptr inbounds %struct.Reg, %struct.Reg* %2368, i32 0, i32 0
  %PC.i306 = bitcast %union.anon* %2369 to i64*
  %2370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2371 = getelementptr inbounds %struct.GPR, %struct.GPR* %2370, i32 0, i32 1
  %2372 = getelementptr inbounds %struct.Reg, %struct.Reg* %2371, i32 0, i32 0
  %RAX.i307 = bitcast %union.anon* %2372 to i64*
  %2373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2374 = getelementptr inbounds %struct.GPR, %struct.GPR* %2373, i32 0, i32 5
  %2375 = getelementptr inbounds %struct.Reg, %struct.Reg* %2374, i32 0, i32 0
  %RCX.i308 = bitcast %union.anon* %2375 to i64*
  %2376 = load i64, i64* %RAX.i307
  %2377 = load i64, i64* %RCX.i308
  %2378 = load i64, i64* %PC.i306
  %2379 = add i64 %2378, 3
  store i64 %2379, i64* %PC.i306
  %2380 = add i64 %2377, %2376
  store i64 %2380, i64* %RAX.i307, align 8
  %2381 = icmp ult i64 %2380, %2376
  %2382 = icmp ult i64 %2380, %2377
  %2383 = or i1 %2381, %2382
  %2384 = zext i1 %2383 to i8
  %2385 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2384, i8* %2385, align 1
  %2386 = trunc i64 %2380 to i32
  %2387 = and i32 %2386, 255
  %2388 = call i32 @llvm.ctpop.i32(i32 %2387)
  %2389 = trunc i32 %2388 to i8
  %2390 = and i8 %2389, 1
  %2391 = xor i8 %2390, 1
  %2392 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2391, i8* %2392, align 1
  %2393 = xor i64 %2377, %2376
  %2394 = xor i64 %2393, %2380
  %2395 = lshr i64 %2394, 4
  %2396 = trunc i64 %2395 to i8
  %2397 = and i8 %2396, 1
  %2398 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2397, i8* %2398, align 1
  %2399 = icmp eq i64 %2380, 0
  %2400 = zext i1 %2399 to i8
  %2401 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2400, i8* %2401, align 1
  %2402 = lshr i64 %2380, 63
  %2403 = trunc i64 %2402 to i8
  %2404 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2403, i8* %2404, align 1
  %2405 = lshr i64 %2376, 63
  %2406 = lshr i64 %2377, 63
  %2407 = xor i64 %2402, %2405
  %2408 = xor i64 %2402, %2406
  %2409 = add i64 %2407, %2408
  %2410 = icmp eq i64 %2409, 2
  %2411 = zext i1 %2410 to i8
  %2412 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2411, i8* %2412, align 1
  store %struct.Memory* %loadMem_43b9b3, %struct.Memory** %MEMORY
  %loadMem_43b9b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2413 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2414 = getelementptr inbounds %struct.GPR, %struct.GPR* %2413, i32 0, i32 33
  %2415 = getelementptr inbounds %struct.Reg, %struct.Reg* %2414, i32 0, i32 0
  %PC.i303 = bitcast %union.anon* %2415 to i64*
  %2416 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2417 = getelementptr inbounds %struct.GPR, %struct.GPR* %2416, i32 0, i32 5
  %2418 = getelementptr inbounds %struct.Reg, %struct.Reg* %2417, i32 0, i32 0
  %RCX.i304 = bitcast %union.anon* %2418 to i64*
  %2419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2420 = getelementptr inbounds %struct.GPR, %struct.GPR* %2419, i32 0, i32 15
  %2421 = getelementptr inbounds %struct.Reg, %struct.Reg* %2420, i32 0, i32 0
  %RBP.i305 = bitcast %union.anon* %2421 to i64*
  %2422 = load i64, i64* %RBP.i305
  %2423 = sub i64 %2422, 8
  %2424 = load i64, i64* %PC.i303
  %2425 = add i64 %2424, 4
  store i64 %2425, i64* %PC.i303
  %2426 = inttoptr i64 %2423 to i64*
  %2427 = load i64, i64* %2426
  store i64 %2427, i64* %RCX.i304, align 8
  store %struct.Memory* %loadMem_43b9b6, %struct.Memory** %MEMORY
  %loadMem_43b9ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %2428 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2429 = getelementptr inbounds %struct.GPR, %struct.GPR* %2428, i32 0, i32 33
  %2430 = getelementptr inbounds %struct.Reg, %struct.Reg* %2429, i32 0, i32 0
  %PC.i301 = bitcast %union.anon* %2430 to i64*
  %2431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2432 = getelementptr inbounds %struct.GPR, %struct.GPR* %2431, i32 0, i32 5
  %2433 = getelementptr inbounds %struct.Reg, %struct.Reg* %2432, i32 0, i32 0
  %RCX.i302 = bitcast %union.anon* %2433 to i64*
  %2434 = load i64, i64* %RCX.i302
  %2435 = add i64 %2434, 72
  %2436 = load i64, i64* %PC.i301
  %2437 = add i64 %2436, 4
  store i64 %2437, i64* %PC.i301
  %2438 = inttoptr i64 %2435 to i32*
  %2439 = load i32, i32* %2438
  %2440 = sext i32 %2439 to i64
  store i64 %2440, i64* %RCX.i302, align 8
  store %struct.Memory* %loadMem_43b9ba, %struct.Memory** %MEMORY
  %loadMem_43b9be = load %struct.Memory*, %struct.Memory** %MEMORY
  %2441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2442 = getelementptr inbounds %struct.GPR, %struct.GPR* %2441, i32 0, i32 33
  %2443 = getelementptr inbounds %struct.Reg, %struct.Reg* %2442, i32 0, i32 0
  %PC.i297 = bitcast %union.anon* %2443 to i64*
  %2444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2445 = getelementptr inbounds %struct.GPR, %struct.GPR* %2444, i32 0, i32 1
  %2446 = getelementptr inbounds %struct.Reg, %struct.Reg* %2445, i32 0, i32 0
  %RAX.i298 = bitcast %union.anon* %2446 to i64*
  %2447 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2448 = getelementptr inbounds %struct.GPR, %struct.GPR* %2447, i32 0, i32 5
  %2449 = getelementptr inbounds %struct.Reg, %struct.Reg* %2448, i32 0, i32 0
  %RCX.i299 = bitcast %union.anon* %2449 to i64*
  %2450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2451 = getelementptr inbounds %struct.GPR, %struct.GPR* %2450, i32 0, i32 7
  %2452 = getelementptr inbounds %struct.Reg, %struct.Reg* %2451, i32 0, i32 0
  %RDX.i300 = bitcast %union.anon* %2452 to i64*
  %2453 = load i64, i64* %RDX.i300
  %2454 = load i64, i64* %RAX.i298
  %2455 = load i64, i64* %RCX.i299
  %2456 = mul i64 %2455, 4
  %2457 = add i64 %2456, %2454
  %2458 = load i64, i64* %PC.i297
  %2459 = add i64 %2458, 3
  store i64 %2459, i64* %PC.i297
  %2460 = trunc i64 %2453 to i32
  %2461 = inttoptr i64 %2457 to i32*
  %2462 = load i32, i32* %2461
  %2463 = add i32 %2462, %2460
  %2464 = zext i32 %2463 to i64
  store i64 %2464, i64* %RDX.i300, align 8
  %2465 = icmp ult i32 %2463, %2460
  %2466 = icmp ult i32 %2463, %2462
  %2467 = or i1 %2465, %2466
  %2468 = zext i1 %2467 to i8
  %2469 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2468, i8* %2469, align 1
  %2470 = and i32 %2463, 255
  %2471 = call i32 @llvm.ctpop.i32(i32 %2470)
  %2472 = trunc i32 %2471 to i8
  %2473 = and i8 %2472, 1
  %2474 = xor i8 %2473, 1
  %2475 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2474, i8* %2475, align 1
  %2476 = xor i32 %2462, %2460
  %2477 = xor i32 %2476, %2463
  %2478 = lshr i32 %2477, 4
  %2479 = trunc i32 %2478 to i8
  %2480 = and i8 %2479, 1
  %2481 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2480, i8* %2481, align 1
  %2482 = icmp eq i32 %2463, 0
  %2483 = zext i1 %2482 to i8
  %2484 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2483, i8* %2484, align 1
  %2485 = lshr i32 %2463, 31
  %2486 = trunc i32 %2485 to i8
  %2487 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2486, i8* %2487, align 1
  %2488 = lshr i32 %2460, 31
  %2489 = lshr i32 %2462, 31
  %2490 = xor i32 %2485, %2488
  %2491 = xor i32 %2485, %2489
  %2492 = add i32 %2490, %2491
  %2493 = icmp eq i32 %2492, 2
  %2494 = zext i1 %2493 to i8
  %2495 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2494, i8* %2495, align 1
  store %struct.Memory* %loadMem_43b9be, %struct.Memory** %MEMORY
  %loadMem_43b9c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2497 = getelementptr inbounds %struct.GPR, %struct.GPR* %2496, i32 0, i32 33
  %2498 = getelementptr inbounds %struct.Reg, %struct.Reg* %2497, i32 0, i32 0
  %PC.i293 = bitcast %union.anon* %2498 to i64*
  %2499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2500 = getelementptr inbounds %struct.GPR, %struct.GPR* %2499, i32 0, i32 7
  %2501 = getelementptr inbounds %struct.Reg, %struct.Reg* %2500, i32 0, i32 0
  %EDX.i294 = bitcast %union.anon* %2501 to i32*
  %2502 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2503 = getelementptr inbounds %struct.GPR, %struct.GPR* %2502, i32 0, i32 1
  %2504 = getelementptr inbounds %struct.Reg, %struct.Reg* %2503, i32 0, i32 0
  %RAX.i295 = bitcast %union.anon* %2504 to i64*
  %2505 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2506 = getelementptr inbounds %struct.GPR, %struct.GPR* %2505, i32 0, i32 5
  %2507 = getelementptr inbounds %struct.Reg, %struct.Reg* %2506, i32 0, i32 0
  %RCX.i296 = bitcast %union.anon* %2507 to i64*
  %2508 = load i64, i64* %RAX.i295
  %2509 = load i64, i64* %RCX.i296
  %2510 = mul i64 %2509, 4
  %2511 = add i64 %2510, %2508
  %2512 = load i32, i32* %EDX.i294
  %2513 = zext i32 %2512 to i64
  %2514 = load i64, i64* %PC.i293
  %2515 = add i64 %2514, 3
  store i64 %2515, i64* %PC.i293
  %2516 = inttoptr i64 %2511 to i32*
  store i32 %2512, i32* %2516
  store %struct.Memory* %loadMem_43b9c1, %struct.Memory** %MEMORY
  %loadMem_43b9c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2518 = getelementptr inbounds %struct.GPR, %struct.GPR* %2517, i32 0, i32 33
  %2519 = getelementptr inbounds %struct.Reg, %struct.Reg* %2518, i32 0, i32 0
  %PC.i291 = bitcast %union.anon* %2519 to i64*
  %2520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2521 = getelementptr inbounds %struct.GPR, %struct.GPR* %2520, i32 0, i32 1
  %2522 = getelementptr inbounds %struct.Reg, %struct.Reg* %2521, i32 0, i32 0
  %RAX.i292 = bitcast %union.anon* %2522 to i64*
  %2523 = load i64, i64* %PC.i291
  %2524 = add i64 %2523, 8
  store i64 %2524, i64* %PC.i291
  %2525 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %2525, i64* %RAX.i292, align 8
  store %struct.Memory* %loadMem_43b9c4, %struct.Memory** %MEMORY
  %loadMem_43b9cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2527 = getelementptr inbounds %struct.GPR, %struct.GPR* %2526, i32 0, i32 33
  %2528 = getelementptr inbounds %struct.Reg, %struct.Reg* %2527, i32 0, i32 0
  %PC.i289 = bitcast %union.anon* %2528 to i64*
  %2529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2530 = getelementptr inbounds %struct.GPR, %struct.GPR* %2529, i32 0, i32 1
  %2531 = getelementptr inbounds %struct.Reg, %struct.Reg* %2530, i32 0, i32 0
  %RAX.i290 = bitcast %union.anon* %2531 to i64*
  %2532 = load i64, i64* %RAX.i290
  %2533 = add i64 %2532, 24
  %2534 = load i64, i64* %PC.i289
  %2535 = add i64 %2534, 4
  store i64 %2535, i64* %PC.i289
  %2536 = inttoptr i64 %2533 to i32*
  %2537 = load i32, i32* %2536
  %2538 = sub i32 %2537, 2
  %2539 = icmp ult i32 %2537, 2
  %2540 = zext i1 %2539 to i8
  %2541 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2540, i8* %2541, align 1
  %2542 = and i32 %2538, 255
  %2543 = call i32 @llvm.ctpop.i32(i32 %2542)
  %2544 = trunc i32 %2543 to i8
  %2545 = and i8 %2544, 1
  %2546 = xor i8 %2545, 1
  %2547 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2546, i8* %2547, align 1
  %2548 = xor i32 %2537, 2
  %2549 = xor i32 %2548, %2538
  %2550 = lshr i32 %2549, 4
  %2551 = trunc i32 %2550 to i8
  %2552 = and i8 %2551, 1
  %2553 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2552, i8* %2553, align 1
  %2554 = icmp eq i32 %2538, 0
  %2555 = zext i1 %2554 to i8
  %2556 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2555, i8* %2556, align 1
  %2557 = lshr i32 %2538, 31
  %2558 = trunc i32 %2557 to i8
  %2559 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2558, i8* %2559, align 1
  %2560 = lshr i32 %2537, 31
  %2561 = xor i32 %2557, %2560
  %2562 = add i32 %2561, %2560
  %2563 = icmp eq i32 %2562, 2
  %2564 = zext i1 %2563 to i8
  %2565 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2564, i8* %2565, align 1
  store %struct.Memory* %loadMem_43b9cc, %struct.Memory** %MEMORY
  %loadMem_43b9d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2566 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2567 = getelementptr inbounds %struct.GPR, %struct.GPR* %2566, i32 0, i32 33
  %2568 = getelementptr inbounds %struct.Reg, %struct.Reg* %2567, i32 0, i32 0
  %PC.i288 = bitcast %union.anon* %2568 to i64*
  %2569 = load i64, i64* %PC.i288
  %2570 = add i64 %2569, 556
  %2571 = load i64, i64* %PC.i288
  %2572 = add i64 %2571, 6
  %2573 = load i64, i64* %PC.i288
  %2574 = add i64 %2573, 6
  store i64 %2574, i64* %PC.i288
  %2575 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2576 = load i8, i8* %2575, align 1
  store i8 %2576, i8* %BRANCH_TAKEN, align 1
  %2577 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2578 = icmp ne i8 %2576, 0
  %2579 = select i1 %2578, i64 %2570, i64 %2572
  store i64 %2579, i64* %2577, align 8
  store %struct.Memory* %loadMem_43b9d0, %struct.Memory** %MEMORY
  %loadBr_43b9d0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43b9d0 = icmp eq i8 %loadBr_43b9d0, 1
  br i1 %cmpBr_43b9d0, label %block_.L_43bbfc, label %block_43b9d6

block_43b9d6:                                     ; preds = %block_.L_43b95c
  %loadMem_43b9d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2581 = getelementptr inbounds %struct.GPR, %struct.GPR* %2580, i32 0, i32 33
  %2582 = getelementptr inbounds %struct.Reg, %struct.Reg* %2581, i32 0, i32 0
  %PC.i285 = bitcast %union.anon* %2582 to i64*
  %2583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2584 = getelementptr inbounds %struct.GPR, %struct.GPR* %2583, i32 0, i32 1
  %2585 = getelementptr inbounds %struct.Reg, %struct.Reg* %2584, i32 0, i32 0
  %RAX.i286 = bitcast %union.anon* %2585 to i64*
  %2586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2587 = getelementptr inbounds %struct.GPR, %struct.GPR* %2586, i32 0, i32 15
  %2588 = getelementptr inbounds %struct.Reg, %struct.Reg* %2587, i32 0, i32 0
  %RBP.i287 = bitcast %union.anon* %2588 to i64*
  %2589 = load i64, i64* %RBP.i287
  %2590 = sub i64 %2589, 8
  %2591 = load i64, i64* %PC.i285
  %2592 = add i64 %2591, 4
  store i64 %2592, i64* %PC.i285
  %2593 = inttoptr i64 %2590 to i64*
  %2594 = load i64, i64* %2593
  store i64 %2594, i64* %RAX.i286, align 8
  store %struct.Memory* %loadMem_43b9d6, %struct.Memory** %MEMORY
  %loadMem_43b9da = load %struct.Memory*, %struct.Memory** %MEMORY
  %2595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2596 = getelementptr inbounds %struct.GPR, %struct.GPR* %2595, i32 0, i32 33
  %2597 = getelementptr inbounds %struct.Reg, %struct.Reg* %2596, i32 0, i32 0
  %PC.i283 = bitcast %union.anon* %2597 to i64*
  %2598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2599 = getelementptr inbounds %struct.GPR, %struct.GPR* %2598, i32 0, i32 1
  %2600 = getelementptr inbounds %struct.Reg, %struct.Reg* %2599, i32 0, i32 0
  %RAX.i284 = bitcast %union.anon* %2600 to i64*
  %2601 = load i64, i64* %RAX.i284
  %2602 = add i64 %2601, 72
  %2603 = load i64, i64* %PC.i283
  %2604 = add i64 %2603, 4
  store i64 %2604, i64* %PC.i283
  %2605 = inttoptr i64 %2602 to i32*
  %2606 = load i32, i32* %2605
  %2607 = sub i32 %2606, 8
  %2608 = icmp ult i32 %2606, 8
  %2609 = zext i1 %2608 to i8
  %2610 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2609, i8* %2610, align 1
  %2611 = and i32 %2607, 255
  %2612 = call i32 @llvm.ctpop.i32(i32 %2611)
  %2613 = trunc i32 %2612 to i8
  %2614 = and i8 %2613, 1
  %2615 = xor i8 %2614, 1
  %2616 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2615, i8* %2616, align 1
  %2617 = xor i32 %2606, 8
  %2618 = xor i32 %2617, %2607
  %2619 = lshr i32 %2618, 4
  %2620 = trunc i32 %2619 to i8
  %2621 = and i8 %2620, 1
  %2622 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2621, i8* %2622, align 1
  %2623 = icmp eq i32 %2607, 0
  %2624 = zext i1 %2623 to i8
  %2625 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2624, i8* %2625, align 1
  %2626 = lshr i32 %2607, 31
  %2627 = trunc i32 %2626 to i8
  %2628 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2627, i8* %2628, align 1
  %2629 = lshr i32 %2606, 31
  %2630 = xor i32 %2626, %2629
  %2631 = add i32 %2630, %2629
  %2632 = icmp eq i32 %2631, 2
  %2633 = zext i1 %2632 to i8
  %2634 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2633, i8* %2634, align 1
  store %struct.Memory* %loadMem_43b9da, %struct.Memory** %MEMORY
  %loadMem_43b9de = load %struct.Memory*, %struct.Memory** %MEMORY
  %2635 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2636 = getelementptr inbounds %struct.GPR, %struct.GPR* %2635, i32 0, i32 33
  %2637 = getelementptr inbounds %struct.Reg, %struct.Reg* %2636, i32 0, i32 0
  %PC.i282 = bitcast %union.anon* %2637 to i64*
  %2638 = load i64, i64* %PC.i282
  %2639 = add i64 %2638, 357
  %2640 = load i64, i64* %PC.i282
  %2641 = add i64 %2640, 6
  %2642 = load i64, i64* %PC.i282
  %2643 = add i64 %2642, 6
  store i64 %2643, i64* %PC.i282
  %2644 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2645 = load i8, i8* %2644, align 1
  %2646 = icmp eq i8 %2645, 0
  %2647 = zext i1 %2646 to i8
  store i8 %2647, i8* %BRANCH_TAKEN, align 1
  %2648 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2649 = select i1 %2646, i64 %2639, i64 %2641
  store i64 %2649, i64* %2648, align 8
  store %struct.Memory* %loadMem_43b9de, %struct.Memory** %MEMORY
  %loadBr_43b9de = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43b9de = icmp eq i8 %loadBr_43b9de, 1
  br i1 %cmpBr_43b9de, label %block_.L_43bb43, label %block_43b9e4

block_43b9e4:                                     ; preds = %block_43b9d6
  %loadMem_43b9e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2651 = getelementptr inbounds %struct.GPR, %struct.GPR* %2650, i32 0, i32 33
  %2652 = getelementptr inbounds %struct.Reg, %struct.Reg* %2651, i32 0, i32 0
  %PC.i280 = bitcast %union.anon* %2652 to i64*
  %2653 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2654 = getelementptr inbounds %struct.GPR, %struct.GPR* %2653, i32 0, i32 15
  %2655 = getelementptr inbounds %struct.Reg, %struct.Reg* %2654, i32 0, i32 0
  %RBP.i281 = bitcast %union.anon* %2655 to i64*
  %2656 = load i64, i64* %RBP.i281
  %2657 = sub i64 %2656, 20
  %2658 = load i64, i64* %PC.i280
  %2659 = add i64 %2658, 7
  store i64 %2659, i64* %PC.i280
  %2660 = inttoptr i64 %2657 to i32*
  store i32 0, i32* %2660
  store %struct.Memory* %loadMem_43b9e4, %struct.Memory** %MEMORY
  br label %block_.L_43b9eb

block_.L_43b9eb:                                  ; preds = %block_.L_43bb30, %block_43b9e4
  %loadMem_43b9eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2662 = getelementptr inbounds %struct.GPR, %struct.GPR* %2661, i32 0, i32 33
  %2663 = getelementptr inbounds %struct.Reg, %struct.Reg* %2662, i32 0, i32 0
  %PC.i278 = bitcast %union.anon* %2663 to i64*
  %2664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2665 = getelementptr inbounds %struct.GPR, %struct.GPR* %2664, i32 0, i32 15
  %2666 = getelementptr inbounds %struct.Reg, %struct.Reg* %2665, i32 0, i32 0
  %RBP.i279 = bitcast %union.anon* %2666 to i64*
  %2667 = load i64, i64* %RBP.i279
  %2668 = sub i64 %2667, 20
  %2669 = load i64, i64* %PC.i278
  %2670 = add i64 %2669, 4
  store i64 %2670, i64* %PC.i278
  %2671 = inttoptr i64 %2668 to i32*
  %2672 = load i32, i32* %2671
  %2673 = sub i32 %2672, 4
  %2674 = icmp ult i32 %2672, 4
  %2675 = zext i1 %2674 to i8
  %2676 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2675, i8* %2676, align 1
  %2677 = and i32 %2673, 255
  %2678 = call i32 @llvm.ctpop.i32(i32 %2677)
  %2679 = trunc i32 %2678 to i8
  %2680 = and i8 %2679, 1
  %2681 = xor i8 %2680, 1
  %2682 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2681, i8* %2682, align 1
  %2683 = xor i32 %2672, 4
  %2684 = xor i32 %2683, %2673
  %2685 = lshr i32 %2684, 4
  %2686 = trunc i32 %2685 to i8
  %2687 = and i8 %2686, 1
  %2688 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2687, i8* %2688, align 1
  %2689 = icmp eq i32 %2673, 0
  %2690 = zext i1 %2689 to i8
  %2691 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2690, i8* %2691, align 1
  %2692 = lshr i32 %2673, 31
  %2693 = trunc i32 %2692 to i8
  %2694 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2693, i8* %2694, align 1
  %2695 = lshr i32 %2672, 31
  %2696 = xor i32 %2692, %2695
  %2697 = add i32 %2696, %2695
  %2698 = icmp eq i32 %2697, 2
  %2699 = zext i1 %2698 to i8
  %2700 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2699, i8* %2700, align 1
  store %struct.Memory* %loadMem_43b9eb, %struct.Memory** %MEMORY
  %loadMem_43b9ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %2701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2702 = getelementptr inbounds %struct.GPR, %struct.GPR* %2701, i32 0, i32 33
  %2703 = getelementptr inbounds %struct.Reg, %struct.Reg* %2702, i32 0, i32 0
  %PC.i277 = bitcast %union.anon* %2703 to i64*
  %2704 = load i64, i64* %PC.i277
  %2705 = add i64 %2704, 335
  %2706 = load i64, i64* %PC.i277
  %2707 = add i64 %2706, 6
  %2708 = load i64, i64* %PC.i277
  %2709 = add i64 %2708, 6
  store i64 %2709, i64* %PC.i277
  %2710 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2711 = load i8, i8* %2710, align 1
  %2712 = icmp ne i8 %2711, 0
  %2713 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2714 = load i8, i8* %2713, align 1
  %2715 = icmp ne i8 %2714, 0
  %2716 = xor i1 %2712, %2715
  %2717 = xor i1 %2716, true
  %2718 = zext i1 %2717 to i8
  store i8 %2718, i8* %BRANCH_TAKEN, align 1
  %2719 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2720 = select i1 %2716, i64 %2707, i64 %2705
  store i64 %2720, i64* %2719, align 8
  store %struct.Memory* %loadMem_43b9ef, %struct.Memory** %MEMORY
  %loadBr_43b9ef = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43b9ef = icmp eq i8 %loadBr_43b9ef, 1
  br i1 %cmpBr_43b9ef, label %block_.L_43bb3e, label %block_43b9f5

block_43b9f5:                                     ; preds = %block_.L_43b9eb
  %loadMem_43b9f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2721 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2722 = getelementptr inbounds %struct.GPR, %struct.GPR* %2721, i32 0, i32 33
  %2723 = getelementptr inbounds %struct.Reg, %struct.Reg* %2722, i32 0, i32 0
  %PC.i274 = bitcast %union.anon* %2723 to i64*
  %2724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2725 = getelementptr inbounds %struct.GPR, %struct.GPR* %2724, i32 0, i32 1
  %2726 = getelementptr inbounds %struct.Reg, %struct.Reg* %2725, i32 0, i32 0
  %RAX.i275 = bitcast %union.anon* %2726 to i64*
  %2727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2728 = getelementptr inbounds %struct.GPR, %struct.GPR* %2727, i32 0, i32 15
  %2729 = getelementptr inbounds %struct.Reg, %struct.Reg* %2728, i32 0, i32 0
  %RBP.i276 = bitcast %union.anon* %2729 to i64*
  %2730 = load i64, i64* %RBP.i276
  %2731 = sub i64 %2730, 8
  %2732 = load i64, i64* %PC.i274
  %2733 = add i64 %2732, 4
  store i64 %2733, i64* %PC.i274
  %2734 = inttoptr i64 %2731 to i64*
  %2735 = load i64, i64* %2734
  store i64 %2735, i64* %RAX.i275, align 8
  store %struct.Memory* %loadMem_43b9f5, %struct.Memory** %MEMORY
  %loadMem_43b9f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2737 = getelementptr inbounds %struct.GPR, %struct.GPR* %2736, i32 0, i32 33
  %2738 = getelementptr inbounds %struct.Reg, %struct.Reg* %2737, i32 0, i32 0
  %PC.i271 = bitcast %union.anon* %2738 to i64*
  %2739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2740 = getelementptr inbounds %struct.GPR, %struct.GPR* %2739, i32 0, i32 5
  %2741 = getelementptr inbounds %struct.Reg, %struct.Reg* %2740, i32 0, i32 0
  %RCX.i272 = bitcast %union.anon* %2741 to i64*
  %2742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2743 = getelementptr inbounds %struct.GPR, %struct.GPR* %2742, i32 0, i32 15
  %2744 = getelementptr inbounds %struct.Reg, %struct.Reg* %2743, i32 0, i32 0
  %RBP.i273 = bitcast %union.anon* %2744 to i64*
  %2745 = load i64, i64* %RBP.i273
  %2746 = sub i64 %2745, 20
  %2747 = load i64, i64* %PC.i271
  %2748 = add i64 %2747, 4
  store i64 %2748, i64* %PC.i271
  %2749 = inttoptr i64 %2746 to i32*
  %2750 = load i32, i32* %2749
  %2751 = sext i32 %2750 to i64
  store i64 %2751, i64* %RCX.i272, align 8
  store %struct.Memory* %loadMem_43b9f9, %struct.Memory** %MEMORY
  %loadMem_43b9fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2753 = getelementptr inbounds %struct.GPR, %struct.GPR* %2752, i32 0, i32 33
  %2754 = getelementptr inbounds %struct.Reg, %struct.Reg* %2753, i32 0, i32 0
  %PC.i268 = bitcast %union.anon* %2754 to i64*
  %2755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2756 = getelementptr inbounds %struct.GPR, %struct.GPR* %2755, i32 0, i32 1
  %2757 = getelementptr inbounds %struct.Reg, %struct.Reg* %2756, i32 0, i32 0
  %RAX.i269 = bitcast %union.anon* %2757 to i64*
  %2758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2759 = getelementptr inbounds %struct.GPR, %struct.GPR* %2758, i32 0, i32 5
  %2760 = getelementptr inbounds %struct.Reg, %struct.Reg* %2759, i32 0, i32 0
  %RCX.i270 = bitcast %union.anon* %2760 to i64*
  %2761 = load i64, i64* %RAX.i269
  %2762 = load i64, i64* %RCX.i270
  %2763 = mul i64 %2762, 4
  %2764 = add i64 %2761, 472
  %2765 = add i64 %2764, %2763
  %2766 = load i64, i64* %PC.i268
  %2767 = add i64 %2766, 8
  store i64 %2767, i64* %PC.i268
  %2768 = inttoptr i64 %2765 to i32*
  %2769 = load i32, i32* %2768
  %2770 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2770, align 1
  %2771 = and i32 %2769, 255
  %2772 = call i32 @llvm.ctpop.i32(i32 %2771)
  %2773 = trunc i32 %2772 to i8
  %2774 = and i8 %2773, 1
  %2775 = xor i8 %2774, 1
  %2776 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2775, i8* %2776, align 1
  %2777 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2777, align 1
  %2778 = icmp eq i32 %2769, 0
  %2779 = zext i1 %2778 to i8
  %2780 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2779, i8* %2780, align 1
  %2781 = lshr i32 %2769, 31
  %2782 = trunc i32 %2781 to i8
  %2783 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2782, i8* %2783, align 1
  %2784 = lshr i32 %2769, 31
  %2785 = xor i32 %2781, %2784
  %2786 = add i32 %2785, %2784
  %2787 = icmp eq i32 %2786, 2
  %2788 = zext i1 %2787 to i8
  %2789 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2788, i8* %2789, align 1
  store %struct.Memory* %loadMem_43b9fd, %struct.Memory** %MEMORY
  %loadMem_43ba05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2790 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2791 = getelementptr inbounds %struct.GPR, %struct.GPR* %2790, i32 0, i32 33
  %2792 = getelementptr inbounds %struct.Reg, %struct.Reg* %2791, i32 0, i32 0
  %PC.i267 = bitcast %union.anon* %2792 to i64*
  %2793 = load i64, i64* %PC.i267
  %2794 = add i64 %2793, 69
  %2795 = load i64, i64* %PC.i267
  %2796 = add i64 %2795, 6
  %2797 = load i64, i64* %PC.i267
  %2798 = add i64 %2797, 6
  store i64 %2798, i64* %PC.i267
  %2799 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2800 = load i8, i8* %2799, align 1
  %2801 = icmp ne i8 %2800, 0
  %2802 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2803 = load i8, i8* %2802, align 1
  %2804 = icmp ne i8 %2803, 0
  %2805 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2806 = load i8, i8* %2805, align 1
  %2807 = icmp ne i8 %2806, 0
  %2808 = xor i1 %2804, %2807
  %2809 = or i1 %2801, %2808
  %2810 = zext i1 %2809 to i8
  store i8 %2810, i8* %BRANCH_TAKEN, align 1
  %2811 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2812 = select i1 %2809, i64 %2794, i64 %2796
  store i64 %2812, i64* %2811, align 8
  store %struct.Memory* %loadMem_43ba05, %struct.Memory** %MEMORY
  %loadBr_43ba05 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43ba05 = icmp eq i8 %loadBr_43ba05, 1
  br i1 %cmpBr_43ba05, label %block_.L_43ba4a, label %block_43ba0b

block_43ba0b:                                     ; preds = %block_43b9f5
  %loadMem_43ba0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2813 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2814 = getelementptr inbounds %struct.GPR, %struct.GPR* %2813, i32 0, i32 33
  %2815 = getelementptr inbounds %struct.Reg, %struct.Reg* %2814, i32 0, i32 0
  %PC.i265 = bitcast %union.anon* %2815 to i64*
  %2816 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2817 = getelementptr inbounds %struct.GPR, %struct.GPR* %2816, i32 0, i32 1
  %2818 = getelementptr inbounds %struct.Reg, %struct.Reg* %2817, i32 0, i32 0
  %RAX.i266 = bitcast %union.anon* %2818 to i64*
  %2819 = load i64, i64* %PC.i265
  %2820 = add i64 %2819, 8
  store i64 %2820, i64* %PC.i265
  %2821 = load i64, i64* bitcast (%G_0x6cb908_type* @G_0x6cb908 to i64*)
  store i64 %2821, i64* %RAX.i266, align 8
  store %struct.Memory* %loadMem_43ba0b, %struct.Memory** %MEMORY
  %loadMem_43ba13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2823 = getelementptr inbounds %struct.GPR, %struct.GPR* %2822, i32 0, i32 33
  %2824 = getelementptr inbounds %struct.Reg, %struct.Reg* %2823, i32 0, i32 0
  %PC.i263 = bitcast %union.anon* %2824 to i64*
  %2825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2826 = getelementptr inbounds %struct.GPR, %struct.GPR* %2825, i32 0, i32 1
  %2827 = getelementptr inbounds %struct.Reg, %struct.Reg* %2826, i32 0, i32 0
  %RAX.i264 = bitcast %union.anon* %2827 to i64*
  %2828 = load i64, i64* %RAX.i264
  %2829 = load i64, i64* %PC.i263
  %2830 = add i64 %2829, 6
  store i64 %2830, i64* %PC.i263
  %2831 = add i64 728, %2828
  store i64 %2831, i64* %RAX.i264, align 8
  %2832 = icmp ult i64 %2831, %2828
  %2833 = icmp ult i64 %2831, 728
  %2834 = or i1 %2832, %2833
  %2835 = zext i1 %2834 to i8
  %2836 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2835, i8* %2836, align 1
  %2837 = trunc i64 %2831 to i32
  %2838 = and i32 %2837, 255
  %2839 = call i32 @llvm.ctpop.i32(i32 %2838)
  %2840 = trunc i32 %2839 to i8
  %2841 = and i8 %2840, 1
  %2842 = xor i8 %2841, 1
  %2843 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2842, i8* %2843, align 1
  %2844 = xor i64 728, %2828
  %2845 = xor i64 %2844, %2831
  %2846 = lshr i64 %2845, 4
  %2847 = trunc i64 %2846 to i8
  %2848 = and i8 %2847, 1
  %2849 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2848, i8* %2849, align 1
  %2850 = icmp eq i64 %2831, 0
  %2851 = zext i1 %2850 to i8
  %2852 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2851, i8* %2852, align 1
  %2853 = lshr i64 %2831, 63
  %2854 = trunc i64 %2853 to i8
  %2855 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2854, i8* %2855, align 1
  %2856 = lshr i64 %2828, 63
  %2857 = xor i64 %2853, %2856
  %2858 = add i64 %2857, %2853
  %2859 = icmp eq i64 %2858, 2
  %2860 = zext i1 %2859 to i8
  %2861 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2860, i8* %2861, align 1
  store %struct.Memory* %loadMem_43ba13, %struct.Memory** %MEMORY
  %loadMem_43ba19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2862 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2863 = getelementptr inbounds %struct.GPR, %struct.GPR* %2862, i32 0, i32 33
  %2864 = getelementptr inbounds %struct.Reg, %struct.Reg* %2863, i32 0, i32 0
  %PC.i261 = bitcast %union.anon* %2864 to i64*
  %2865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2866 = getelementptr inbounds %struct.GPR, %struct.GPR* %2865, i32 0, i32 5
  %2867 = getelementptr inbounds %struct.Reg, %struct.Reg* %2866, i32 0, i32 0
  %RCX.i262 = bitcast %union.anon* %2867 to i64*
  %2868 = load i64, i64* %PC.i261
  %2869 = add i64 %2868, 8
  store i64 %2869, i64* %PC.i261
  %2870 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %2870, i64* %RCX.i262, align 8
  store %struct.Memory* %loadMem_43ba19, %struct.Memory** %MEMORY
  %loadMem_43ba21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2872 = getelementptr inbounds %struct.GPR, %struct.GPR* %2871, i32 0, i32 33
  %2873 = getelementptr inbounds %struct.Reg, %struct.Reg* %2872, i32 0, i32 0
  %PC.i259 = bitcast %union.anon* %2873 to i64*
  %2874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2875 = getelementptr inbounds %struct.GPR, %struct.GPR* %2874, i32 0, i32 5
  %2876 = getelementptr inbounds %struct.Reg, %struct.Reg* %2875, i32 0, i32 0
  %RCX.i260 = bitcast %union.anon* %2876 to i64*
  %2877 = load i64, i64* %RCX.i260
  %2878 = add i64 %2877, 24
  %2879 = load i64, i64* %PC.i259
  %2880 = add i64 %2879, 4
  store i64 %2880, i64* %PC.i259
  %2881 = inttoptr i64 %2878 to i32*
  %2882 = load i32, i32* %2881
  %2883 = sext i32 %2882 to i64
  store i64 %2883, i64* %RCX.i260, align 8
  store %struct.Memory* %loadMem_43ba21, %struct.Memory** %MEMORY
  %loadMem_43ba25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2884 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2885 = getelementptr inbounds %struct.GPR, %struct.GPR* %2884, i32 0, i32 33
  %2886 = getelementptr inbounds %struct.Reg, %struct.Reg* %2885, i32 0, i32 0
  %PC.i257 = bitcast %union.anon* %2886 to i64*
  %2887 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2888 = getelementptr inbounds %struct.GPR, %struct.GPR* %2887, i32 0, i32 5
  %2889 = getelementptr inbounds %struct.Reg, %struct.Reg* %2888, i32 0, i32 0
  %RCX.i258 = bitcast %union.anon* %2889 to i64*
  %2890 = load i64, i64* %RCX.i258
  %2891 = load i64, i64* %PC.i257
  %2892 = add i64 %2891, 4
  store i64 %2892, i64* %PC.i257
  %2893 = sext i64 %2890 to i128
  %2894 = and i128 %2893, -18446744073709551616
  %2895 = zext i64 %2890 to i128
  %2896 = or i128 %2894, %2895
  %2897 = mul i128 60, %2896
  %2898 = trunc i128 %2897 to i64
  store i64 %2898, i64* %RCX.i258, align 8
  %2899 = sext i64 %2898 to i128
  %2900 = icmp ne i128 %2899, %2897
  %2901 = zext i1 %2900 to i8
  %2902 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2901, i8* %2902, align 1
  %2903 = trunc i128 %2897 to i32
  %2904 = and i32 %2903, 255
  %2905 = call i32 @llvm.ctpop.i32(i32 %2904)
  %2906 = trunc i32 %2905 to i8
  %2907 = and i8 %2906, 1
  %2908 = xor i8 %2907, 1
  %2909 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2908, i8* %2909, align 1
  %2910 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2910, align 1
  %2911 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2911, align 1
  %2912 = lshr i64 %2898, 63
  %2913 = trunc i64 %2912 to i8
  %2914 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2913, i8* %2914, align 1
  %2915 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2901, i8* %2915, align 1
  store %struct.Memory* %loadMem_43ba25, %struct.Memory** %MEMORY
  %loadMem_43ba29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2917 = getelementptr inbounds %struct.GPR, %struct.GPR* %2916, i32 0, i32 33
  %2918 = getelementptr inbounds %struct.Reg, %struct.Reg* %2917, i32 0, i32 0
  %PC.i254 = bitcast %union.anon* %2918 to i64*
  %2919 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2920 = getelementptr inbounds %struct.GPR, %struct.GPR* %2919, i32 0, i32 1
  %2921 = getelementptr inbounds %struct.Reg, %struct.Reg* %2920, i32 0, i32 0
  %RAX.i255 = bitcast %union.anon* %2921 to i64*
  %2922 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2923 = getelementptr inbounds %struct.GPR, %struct.GPR* %2922, i32 0, i32 5
  %2924 = getelementptr inbounds %struct.Reg, %struct.Reg* %2923, i32 0, i32 0
  %RCX.i256 = bitcast %union.anon* %2924 to i64*
  %2925 = load i64, i64* %RAX.i255
  %2926 = load i64, i64* %RCX.i256
  %2927 = load i64, i64* %PC.i254
  %2928 = add i64 %2927, 3
  store i64 %2928, i64* %PC.i254
  %2929 = add i64 %2926, %2925
  store i64 %2929, i64* %RAX.i255, align 8
  %2930 = icmp ult i64 %2929, %2925
  %2931 = icmp ult i64 %2929, %2926
  %2932 = or i1 %2930, %2931
  %2933 = zext i1 %2932 to i8
  %2934 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2933, i8* %2934, align 1
  %2935 = trunc i64 %2929 to i32
  %2936 = and i32 %2935, 255
  %2937 = call i32 @llvm.ctpop.i32(i32 %2936)
  %2938 = trunc i32 %2937 to i8
  %2939 = and i8 %2938, 1
  %2940 = xor i8 %2939, 1
  %2941 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2940, i8* %2941, align 1
  %2942 = xor i64 %2926, %2925
  %2943 = xor i64 %2942, %2929
  %2944 = lshr i64 %2943, 4
  %2945 = trunc i64 %2944 to i8
  %2946 = and i8 %2945, 1
  %2947 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2946, i8* %2947, align 1
  %2948 = icmp eq i64 %2929, 0
  %2949 = zext i1 %2948 to i8
  %2950 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2949, i8* %2950, align 1
  %2951 = lshr i64 %2929, 63
  %2952 = trunc i64 %2951 to i8
  %2953 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2952, i8* %2953, align 1
  %2954 = lshr i64 %2925, 63
  %2955 = lshr i64 %2926, 63
  %2956 = xor i64 %2951, %2954
  %2957 = xor i64 %2951, %2955
  %2958 = add i64 %2956, %2957
  %2959 = icmp eq i64 %2958, 2
  %2960 = zext i1 %2959 to i8
  %2961 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2960, i8* %2961, align 1
  store %struct.Memory* %loadMem_43ba29, %struct.Memory** %MEMORY
  %loadMem_43ba2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2962 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2963 = getelementptr inbounds %struct.GPR, %struct.GPR* %2962, i32 0, i32 33
  %2964 = getelementptr inbounds %struct.Reg, %struct.Reg* %2963, i32 0, i32 0
  %PC.i251 = bitcast %union.anon* %2964 to i64*
  %2965 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2966 = getelementptr inbounds %struct.GPR, %struct.GPR* %2965, i32 0, i32 5
  %2967 = getelementptr inbounds %struct.Reg, %struct.Reg* %2966, i32 0, i32 0
  %RCX.i252 = bitcast %union.anon* %2967 to i64*
  %2968 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2969 = getelementptr inbounds %struct.GPR, %struct.GPR* %2968, i32 0, i32 15
  %2970 = getelementptr inbounds %struct.Reg, %struct.Reg* %2969, i32 0, i32 0
  %RBP.i253 = bitcast %union.anon* %2970 to i64*
  %2971 = load i64, i64* %RBP.i253
  %2972 = sub i64 %2971, 8
  %2973 = load i64, i64* %PC.i251
  %2974 = add i64 %2973, 4
  store i64 %2974, i64* %PC.i251
  %2975 = inttoptr i64 %2972 to i64*
  %2976 = load i64, i64* %2975
  store i64 %2976, i64* %RCX.i252, align 8
  store %struct.Memory* %loadMem_43ba2c, %struct.Memory** %MEMORY
  %loadMem_43ba30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2977 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2978 = getelementptr inbounds %struct.GPR, %struct.GPR* %2977, i32 0, i32 33
  %2979 = getelementptr inbounds %struct.Reg, %struct.Reg* %2978, i32 0, i32 0
  %PC.i248 = bitcast %union.anon* %2979 to i64*
  %2980 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2981 = getelementptr inbounds %struct.GPR, %struct.GPR* %2980, i32 0, i32 7
  %2982 = getelementptr inbounds %struct.Reg, %struct.Reg* %2981, i32 0, i32 0
  %RDX.i249 = bitcast %union.anon* %2982 to i64*
  %2983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2984 = getelementptr inbounds %struct.GPR, %struct.GPR* %2983, i32 0, i32 15
  %2985 = getelementptr inbounds %struct.Reg, %struct.Reg* %2984, i32 0, i32 0
  %RBP.i250 = bitcast %union.anon* %2985 to i64*
  %2986 = load i64, i64* %RBP.i250
  %2987 = sub i64 %2986, 20
  %2988 = load i64, i64* %PC.i248
  %2989 = add i64 %2988, 4
  store i64 %2989, i64* %PC.i248
  %2990 = inttoptr i64 %2987 to i32*
  %2991 = load i32, i32* %2990
  %2992 = sext i32 %2991 to i64
  store i64 %2992, i64* %RDX.i249, align 8
  store %struct.Memory* %loadMem_43ba30, %struct.Memory** %MEMORY
  %loadMem_43ba34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2993 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2994 = getelementptr inbounds %struct.GPR, %struct.GPR* %2993, i32 0, i32 33
  %2995 = getelementptr inbounds %struct.Reg, %struct.Reg* %2994, i32 0, i32 0
  %PC.i245 = bitcast %union.anon* %2995 to i64*
  %2996 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2997 = getelementptr inbounds %struct.GPR, %struct.GPR* %2996, i32 0, i32 5
  %2998 = getelementptr inbounds %struct.Reg, %struct.Reg* %2997, i32 0, i32 0
  %RCX.i246 = bitcast %union.anon* %2998 to i64*
  %2999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3000 = getelementptr inbounds %struct.GPR, %struct.GPR* %2999, i32 0, i32 7
  %3001 = getelementptr inbounds %struct.Reg, %struct.Reg* %3000, i32 0, i32 0
  %RDX.i247 = bitcast %union.anon* %3001 to i64*
  %3002 = load i64, i64* %RCX.i246
  %3003 = load i64, i64* %RDX.i247
  %3004 = mul i64 %3003, 4
  %3005 = add i64 %3002, 472
  %3006 = add i64 %3005, %3004
  %3007 = load i64, i64* %PC.i245
  %3008 = add i64 %3007, 8
  store i64 %3008, i64* %PC.i245
  %3009 = inttoptr i64 %3006 to i32*
  %3010 = load i32, i32* %3009
  %3011 = sext i32 %3010 to i64
  store i64 %3011, i64* %RCX.i246, align 8
  store %struct.Memory* %loadMem_43ba34, %struct.Memory** %MEMORY
  %loadMem_43ba3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3012 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3013 = getelementptr inbounds %struct.GPR, %struct.GPR* %3012, i32 0, i32 33
  %3014 = getelementptr inbounds %struct.Reg, %struct.Reg* %3013, i32 0, i32 0
  %PC.i241 = bitcast %union.anon* %3014 to i64*
  %3015 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3016 = getelementptr inbounds %struct.GPR, %struct.GPR* %3015, i32 0, i32 1
  %3017 = getelementptr inbounds %struct.Reg, %struct.Reg* %3016, i32 0, i32 0
  %RAX.i242 = bitcast %union.anon* %3017 to i64*
  %3018 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3019 = getelementptr inbounds %struct.GPR, %struct.GPR* %3018, i32 0, i32 5
  %3020 = getelementptr inbounds %struct.Reg, %struct.Reg* %3019, i32 0, i32 0
  %RCX.i243 = bitcast %union.anon* %3020 to i64*
  %3021 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3022 = getelementptr inbounds %struct.GPR, %struct.GPR* %3021, i32 0, i32 9
  %3023 = getelementptr inbounds %struct.Reg, %struct.Reg* %3022, i32 0, i32 0
  %RSI.i244 = bitcast %union.anon* %3023 to i64*
  %3024 = load i64, i64* %RAX.i242
  %3025 = load i64, i64* %RCX.i243
  %3026 = mul i64 %3025, 4
  %3027 = add i64 %3026, %3024
  %3028 = load i64, i64* %PC.i241
  %3029 = add i64 %3028, 3
  store i64 %3029, i64* %PC.i241
  %3030 = inttoptr i64 %3027 to i32*
  %3031 = load i32, i32* %3030
  %3032 = zext i32 %3031 to i64
  store i64 %3032, i64* %RSI.i244, align 8
  store %struct.Memory* %loadMem_43ba3c, %struct.Memory** %MEMORY
  %loadMem_43ba3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3033 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3034 = getelementptr inbounds %struct.GPR, %struct.GPR* %3033, i32 0, i32 33
  %3035 = getelementptr inbounds %struct.Reg, %struct.Reg* %3034, i32 0, i32 0
  %PC.i240 = bitcast %union.anon* %3035 to i64*
  %3036 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3037 = getelementptr inbounds %struct.GPR, %struct.GPR* %3036, i32 0, i32 9
  %3038 = getelementptr inbounds %struct.Reg, %struct.Reg* %3037, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %3038 to i64*
  %3039 = load i64, i64* %RSI.i
  %3040 = load i64, i64* %PC.i240
  %3041 = add i64 %3040, 3
  store i64 %3041, i64* %PC.i240
  %3042 = trunc i64 %3039 to i32
  %3043 = add i32 1, %3042
  %3044 = zext i32 %3043 to i64
  store i64 %3044, i64* %RSI.i, align 8
  %3045 = icmp ult i32 %3043, %3042
  %3046 = icmp ult i32 %3043, 1
  %3047 = or i1 %3045, %3046
  %3048 = zext i1 %3047 to i8
  %3049 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3048, i8* %3049, align 1
  %3050 = and i32 %3043, 255
  %3051 = call i32 @llvm.ctpop.i32(i32 %3050)
  %3052 = trunc i32 %3051 to i8
  %3053 = and i8 %3052, 1
  %3054 = xor i8 %3053, 1
  %3055 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3054, i8* %3055, align 1
  %3056 = xor i64 1, %3039
  %3057 = trunc i64 %3056 to i32
  %3058 = xor i32 %3057, %3043
  %3059 = lshr i32 %3058, 4
  %3060 = trunc i32 %3059 to i8
  %3061 = and i8 %3060, 1
  %3062 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3061, i8* %3062, align 1
  %3063 = icmp eq i32 %3043, 0
  %3064 = zext i1 %3063 to i8
  %3065 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3064, i8* %3065, align 1
  %3066 = lshr i32 %3043, 31
  %3067 = trunc i32 %3066 to i8
  %3068 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3067, i8* %3068, align 1
  %3069 = lshr i32 %3042, 31
  %3070 = xor i32 %3066, %3069
  %3071 = add i32 %3070, %3066
  %3072 = icmp eq i32 %3071, 2
  %3073 = zext i1 %3072 to i8
  %3074 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3073, i8* %3074, align 1
  store %struct.Memory* %loadMem_43ba3f, %struct.Memory** %MEMORY
  %loadMem_43ba42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3075 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3076 = getelementptr inbounds %struct.GPR, %struct.GPR* %3075, i32 0, i32 33
  %3077 = getelementptr inbounds %struct.Reg, %struct.Reg* %3076, i32 0, i32 0
  %PC.i237 = bitcast %union.anon* %3077 to i64*
  %3078 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3079 = getelementptr inbounds %struct.GPR, %struct.GPR* %3078, i32 0, i32 9
  %3080 = getelementptr inbounds %struct.Reg, %struct.Reg* %3079, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %3080 to i32*
  %3081 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3082 = getelementptr inbounds %struct.GPR, %struct.GPR* %3081, i32 0, i32 1
  %3083 = getelementptr inbounds %struct.Reg, %struct.Reg* %3082, i32 0, i32 0
  %RAX.i238 = bitcast %union.anon* %3083 to i64*
  %3084 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3085 = getelementptr inbounds %struct.GPR, %struct.GPR* %3084, i32 0, i32 5
  %3086 = getelementptr inbounds %struct.Reg, %struct.Reg* %3085, i32 0, i32 0
  %RCX.i239 = bitcast %union.anon* %3086 to i64*
  %3087 = load i64, i64* %RAX.i238
  %3088 = load i64, i64* %RCX.i239
  %3089 = mul i64 %3088, 4
  %3090 = add i64 %3089, %3087
  %3091 = load i32, i32* %ESI.i
  %3092 = zext i32 %3091 to i64
  %3093 = load i64, i64* %PC.i237
  %3094 = add i64 %3093, 3
  store i64 %3094, i64* %PC.i237
  %3095 = inttoptr i64 %3090 to i32*
  store i32 %3091, i32* %3095
  store %struct.Memory* %loadMem_43ba42, %struct.Memory** %MEMORY
  %loadMem_43ba45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3097 = getelementptr inbounds %struct.GPR, %struct.GPR* %3096, i32 0, i32 33
  %3098 = getelementptr inbounds %struct.Reg, %struct.Reg* %3097, i32 0, i32 0
  %PC.i236 = bitcast %union.anon* %3098 to i64*
  %3099 = load i64, i64* %PC.i236
  %3100 = add i64 %3099, 56
  %3101 = load i64, i64* %PC.i236
  %3102 = add i64 %3101, 5
  store i64 %3102, i64* %PC.i236
  %3103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3100, i64* %3103, align 8
  store %struct.Memory* %loadMem_43ba45, %struct.Memory** %MEMORY
  br label %block_.L_43ba7d

block_.L_43ba4a:                                  ; preds = %block_43b9f5
  %loadMem_43ba4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3105 = getelementptr inbounds %struct.GPR, %struct.GPR* %3104, i32 0, i32 33
  %3106 = getelementptr inbounds %struct.Reg, %struct.Reg* %3105, i32 0, i32 0
  %PC.i234 = bitcast %union.anon* %3106 to i64*
  %3107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3108 = getelementptr inbounds %struct.GPR, %struct.GPR* %3107, i32 0, i32 1
  %3109 = getelementptr inbounds %struct.Reg, %struct.Reg* %3108, i32 0, i32 0
  %RAX.i235 = bitcast %union.anon* %3109 to i64*
  %3110 = load i64, i64* %PC.i234
  %3111 = add i64 %3110, 8
  store i64 %3111, i64* %PC.i234
  %3112 = load i64, i64* bitcast (%G_0x6cb908_type* @G_0x6cb908 to i64*)
  store i64 %3112, i64* %RAX.i235, align 8
  store %struct.Memory* %loadMem_43ba4a, %struct.Memory** %MEMORY
  %loadMem_43ba52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3114 = getelementptr inbounds %struct.GPR, %struct.GPR* %3113, i32 0, i32 33
  %3115 = getelementptr inbounds %struct.Reg, %struct.Reg* %3114, i32 0, i32 0
  %PC.i232 = bitcast %union.anon* %3115 to i64*
  %3116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3117 = getelementptr inbounds %struct.GPR, %struct.GPR* %3116, i32 0, i32 1
  %3118 = getelementptr inbounds %struct.Reg, %struct.Reg* %3117, i32 0, i32 0
  %RAX.i233 = bitcast %union.anon* %3118 to i64*
  %3119 = load i64, i64* %RAX.i233
  %3120 = load i64, i64* %PC.i232
  %3121 = add i64 %3120, 4
  store i64 %3121, i64* %PC.i232
  %3122 = add i64 32, %3119
  store i64 %3122, i64* %RAX.i233, align 8
  %3123 = icmp ult i64 %3122, %3119
  %3124 = icmp ult i64 %3122, 32
  %3125 = or i1 %3123, %3124
  %3126 = zext i1 %3125 to i8
  %3127 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3126, i8* %3127, align 1
  %3128 = trunc i64 %3122 to i32
  %3129 = and i32 %3128, 255
  %3130 = call i32 @llvm.ctpop.i32(i32 %3129)
  %3131 = trunc i32 %3130 to i8
  %3132 = and i8 %3131, 1
  %3133 = xor i8 %3132, 1
  %3134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3133, i8* %3134, align 1
  %3135 = xor i64 32, %3119
  %3136 = xor i64 %3135, %3122
  %3137 = lshr i64 %3136, 4
  %3138 = trunc i64 %3137 to i8
  %3139 = and i8 %3138, 1
  %3140 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3139, i8* %3140, align 1
  %3141 = icmp eq i64 %3122, 0
  %3142 = zext i1 %3141 to i8
  %3143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3142, i8* %3143, align 1
  %3144 = lshr i64 %3122, 63
  %3145 = trunc i64 %3144 to i8
  %3146 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3145, i8* %3146, align 1
  %3147 = lshr i64 %3119, 63
  %3148 = xor i64 %3144, %3147
  %3149 = add i64 %3148, %3144
  %3150 = icmp eq i64 %3149, 2
  %3151 = zext i1 %3150 to i8
  %3152 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3151, i8* %3152, align 1
  store %struct.Memory* %loadMem_43ba52, %struct.Memory** %MEMORY
  %loadMem_43ba56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3154 = getelementptr inbounds %struct.GPR, %struct.GPR* %3153, i32 0, i32 33
  %3155 = getelementptr inbounds %struct.Reg, %struct.Reg* %3154, i32 0, i32 0
  %PC.i230 = bitcast %union.anon* %3155 to i64*
  %3156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3157 = getelementptr inbounds %struct.GPR, %struct.GPR* %3156, i32 0, i32 5
  %3158 = getelementptr inbounds %struct.Reg, %struct.Reg* %3157, i32 0, i32 0
  %RCX.i231 = bitcast %union.anon* %3158 to i64*
  %3159 = load i64, i64* %PC.i230
  %3160 = add i64 %3159, 8
  store i64 %3160, i64* %PC.i230
  %3161 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %3161, i64* %RCX.i231, align 8
  store %struct.Memory* %loadMem_43ba56, %struct.Memory** %MEMORY
  %loadMem_43ba5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3163 = getelementptr inbounds %struct.GPR, %struct.GPR* %3162, i32 0, i32 33
  %3164 = getelementptr inbounds %struct.Reg, %struct.Reg* %3163, i32 0, i32 0
  %PC.i228 = bitcast %union.anon* %3164 to i64*
  %3165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3166 = getelementptr inbounds %struct.GPR, %struct.GPR* %3165, i32 0, i32 5
  %3167 = getelementptr inbounds %struct.Reg, %struct.Reg* %3166, i32 0, i32 0
  %RCX.i229 = bitcast %union.anon* %3167 to i64*
  %3168 = load i64, i64* %RCX.i229
  %3169 = add i64 %3168, 24
  %3170 = load i64, i64* %PC.i228
  %3171 = add i64 %3170, 4
  store i64 %3171, i64* %PC.i228
  %3172 = inttoptr i64 %3169 to i32*
  %3173 = load i32, i32* %3172
  %3174 = sext i32 %3173 to i64
  store i64 %3174, i64* %RCX.i229, align 8
  store %struct.Memory* %loadMem_43ba5e, %struct.Memory** %MEMORY
  %loadMem_43ba62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3176 = getelementptr inbounds %struct.GPR, %struct.GPR* %3175, i32 0, i32 33
  %3177 = getelementptr inbounds %struct.Reg, %struct.Reg* %3176, i32 0, i32 0
  %PC.i226 = bitcast %union.anon* %3177 to i64*
  %3178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3179 = getelementptr inbounds %struct.GPR, %struct.GPR* %3178, i32 0, i32 5
  %3180 = getelementptr inbounds %struct.Reg, %struct.Reg* %3179, i32 0, i32 0
  %RCX.i227 = bitcast %union.anon* %3180 to i64*
  %3181 = load i64, i64* %RCX.i227
  %3182 = load i64, i64* %PC.i226
  %3183 = add i64 %3182, 4
  store i64 %3183, i64* %PC.i226
  %3184 = shl i64 %3181, 2
  %3185 = icmp slt i64 %3184, 0
  %3186 = shl i64 %3184, 1
  store i64 %3186, i64* %RCX.i227, align 8
  %3187 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %3188 = zext i1 %3185 to i8
  store i8 %3188, i8* %3187, align 1
  %3189 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %3190 = trunc i64 %3186 to i32
  %3191 = and i32 %3190, 254
  %3192 = call i32 @llvm.ctpop.i32(i32 %3191)
  %3193 = trunc i32 %3192 to i8
  %3194 = and i8 %3193, 1
  %3195 = xor i8 %3194, 1
  store i8 %3195, i8* %3189, align 1
  %3196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3196, align 1
  %3197 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3198 = icmp eq i64 %3186, 0
  %3199 = zext i1 %3198 to i8
  store i8 %3199, i8* %3197, align 1
  %3200 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3201 = lshr i64 %3186, 63
  %3202 = trunc i64 %3201 to i8
  store i8 %3202, i8* %3200, align 1
  %3203 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3203, align 1
  store %struct.Memory* %loadMem_43ba62, %struct.Memory** %MEMORY
  %loadMem_43ba66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3205 = getelementptr inbounds %struct.GPR, %struct.GPR* %3204, i32 0, i32 33
  %3206 = getelementptr inbounds %struct.Reg, %struct.Reg* %3205, i32 0, i32 0
  %PC.i223 = bitcast %union.anon* %3206 to i64*
  %3207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3208 = getelementptr inbounds %struct.GPR, %struct.GPR* %3207, i32 0, i32 1
  %3209 = getelementptr inbounds %struct.Reg, %struct.Reg* %3208, i32 0, i32 0
  %RAX.i224 = bitcast %union.anon* %3209 to i64*
  %3210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3211 = getelementptr inbounds %struct.GPR, %struct.GPR* %3210, i32 0, i32 5
  %3212 = getelementptr inbounds %struct.Reg, %struct.Reg* %3211, i32 0, i32 0
  %RCX.i225 = bitcast %union.anon* %3212 to i64*
  %3213 = load i64, i64* %RAX.i224
  %3214 = load i64, i64* %RCX.i225
  %3215 = load i64, i64* %PC.i223
  %3216 = add i64 %3215, 3
  store i64 %3216, i64* %PC.i223
  %3217 = add i64 %3214, %3213
  store i64 %3217, i64* %RAX.i224, align 8
  %3218 = icmp ult i64 %3217, %3213
  %3219 = icmp ult i64 %3217, %3214
  %3220 = or i1 %3218, %3219
  %3221 = zext i1 %3220 to i8
  %3222 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3221, i8* %3222, align 1
  %3223 = trunc i64 %3217 to i32
  %3224 = and i32 %3223, 255
  %3225 = call i32 @llvm.ctpop.i32(i32 %3224)
  %3226 = trunc i32 %3225 to i8
  %3227 = and i8 %3226, 1
  %3228 = xor i8 %3227, 1
  %3229 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3228, i8* %3229, align 1
  %3230 = xor i64 %3214, %3213
  %3231 = xor i64 %3230, %3217
  %3232 = lshr i64 %3231, 4
  %3233 = trunc i64 %3232 to i8
  %3234 = and i8 %3233, 1
  %3235 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3234, i8* %3235, align 1
  %3236 = icmp eq i64 %3217, 0
  %3237 = zext i1 %3236 to i8
  %3238 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3237, i8* %3238, align 1
  %3239 = lshr i64 %3217, 63
  %3240 = trunc i64 %3239 to i8
  %3241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3240, i8* %3241, align 1
  %3242 = lshr i64 %3213, 63
  %3243 = lshr i64 %3214, 63
  %3244 = xor i64 %3239, %3242
  %3245 = xor i64 %3239, %3243
  %3246 = add i64 %3244, %3245
  %3247 = icmp eq i64 %3246, 2
  %3248 = zext i1 %3247 to i8
  %3249 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3248, i8* %3249, align 1
  store %struct.Memory* %loadMem_43ba66, %struct.Memory** %MEMORY
  %loadMem_43ba69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3251 = getelementptr inbounds %struct.GPR, %struct.GPR* %3250, i32 0, i32 33
  %3252 = getelementptr inbounds %struct.Reg, %struct.Reg* %3251, i32 0, i32 0
  %PC.i220 = bitcast %union.anon* %3252 to i64*
  %3253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3254 = getelementptr inbounds %struct.GPR, %struct.GPR* %3253, i32 0, i32 5
  %3255 = getelementptr inbounds %struct.Reg, %struct.Reg* %3254, i32 0, i32 0
  %RCX.i221 = bitcast %union.anon* %3255 to i64*
  %3256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3257 = getelementptr inbounds %struct.GPR, %struct.GPR* %3256, i32 0, i32 15
  %3258 = getelementptr inbounds %struct.Reg, %struct.Reg* %3257, i32 0, i32 0
  %RBP.i222 = bitcast %union.anon* %3258 to i64*
  %3259 = load i64, i64* %RBP.i222
  %3260 = sub i64 %3259, 8
  %3261 = load i64, i64* %PC.i220
  %3262 = add i64 %3261, 4
  store i64 %3262, i64* %PC.i220
  %3263 = inttoptr i64 %3260 to i64*
  %3264 = load i64, i64* %3263
  store i64 %3264, i64* %RCX.i221, align 8
  store %struct.Memory* %loadMem_43ba69, %struct.Memory** %MEMORY
  %loadMem_43ba6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3266 = getelementptr inbounds %struct.GPR, %struct.GPR* %3265, i32 0, i32 33
  %3267 = getelementptr inbounds %struct.Reg, %struct.Reg* %3266, i32 0, i32 0
  %PC.i218 = bitcast %union.anon* %3267 to i64*
  %3268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3269 = getelementptr inbounds %struct.GPR, %struct.GPR* %3268, i32 0, i32 5
  %3270 = getelementptr inbounds %struct.Reg, %struct.Reg* %3269, i32 0, i32 0
  %RCX.i219 = bitcast %union.anon* %3270 to i64*
  %3271 = load i64, i64* %RCX.i219
  %3272 = add i64 %3271, 572
  %3273 = load i64, i64* %PC.i218
  %3274 = add i64 %3273, 7
  store i64 %3274, i64* %PC.i218
  %3275 = inttoptr i64 %3272 to i32*
  %3276 = load i32, i32* %3275
  %3277 = sext i32 %3276 to i64
  store i64 %3277, i64* %RCX.i219, align 8
  store %struct.Memory* %loadMem_43ba6d, %struct.Memory** %MEMORY
  %loadMem_43ba74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3279 = getelementptr inbounds %struct.GPR, %struct.GPR* %3278, i32 0, i32 33
  %3280 = getelementptr inbounds %struct.Reg, %struct.Reg* %3279, i32 0, i32 0
  %PC.i214 = bitcast %union.anon* %3280 to i64*
  %3281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3282 = getelementptr inbounds %struct.GPR, %struct.GPR* %3281, i32 0, i32 1
  %3283 = getelementptr inbounds %struct.Reg, %struct.Reg* %3282, i32 0, i32 0
  %RAX.i215 = bitcast %union.anon* %3283 to i64*
  %3284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3285 = getelementptr inbounds %struct.GPR, %struct.GPR* %3284, i32 0, i32 5
  %3286 = getelementptr inbounds %struct.Reg, %struct.Reg* %3285, i32 0, i32 0
  %RCX.i216 = bitcast %union.anon* %3286 to i64*
  %3287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3288 = getelementptr inbounds %struct.GPR, %struct.GPR* %3287, i32 0, i32 7
  %3289 = getelementptr inbounds %struct.Reg, %struct.Reg* %3288, i32 0, i32 0
  %RDX.i217 = bitcast %union.anon* %3289 to i64*
  %3290 = load i64, i64* %RAX.i215
  %3291 = load i64, i64* %RCX.i216
  %3292 = mul i64 %3291, 4
  %3293 = add i64 %3292, %3290
  %3294 = load i64, i64* %PC.i214
  %3295 = add i64 %3294, 3
  store i64 %3295, i64* %PC.i214
  %3296 = inttoptr i64 %3293 to i32*
  %3297 = load i32, i32* %3296
  %3298 = zext i32 %3297 to i64
  store i64 %3298, i64* %RDX.i217, align 8
  store %struct.Memory* %loadMem_43ba74, %struct.Memory** %MEMORY
  %loadMem_43ba77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3300 = getelementptr inbounds %struct.GPR, %struct.GPR* %3299, i32 0, i32 33
  %3301 = getelementptr inbounds %struct.Reg, %struct.Reg* %3300, i32 0, i32 0
  %PC.i212 = bitcast %union.anon* %3301 to i64*
  %3302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3303 = getelementptr inbounds %struct.GPR, %struct.GPR* %3302, i32 0, i32 7
  %3304 = getelementptr inbounds %struct.Reg, %struct.Reg* %3303, i32 0, i32 0
  %RDX.i213 = bitcast %union.anon* %3304 to i64*
  %3305 = load i64, i64* %RDX.i213
  %3306 = load i64, i64* %PC.i212
  %3307 = add i64 %3306, 3
  store i64 %3307, i64* %PC.i212
  %3308 = trunc i64 %3305 to i32
  %3309 = add i32 1, %3308
  %3310 = zext i32 %3309 to i64
  store i64 %3310, i64* %RDX.i213, align 8
  %3311 = icmp ult i32 %3309, %3308
  %3312 = icmp ult i32 %3309, 1
  %3313 = or i1 %3311, %3312
  %3314 = zext i1 %3313 to i8
  %3315 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3314, i8* %3315, align 1
  %3316 = and i32 %3309, 255
  %3317 = call i32 @llvm.ctpop.i32(i32 %3316)
  %3318 = trunc i32 %3317 to i8
  %3319 = and i8 %3318, 1
  %3320 = xor i8 %3319, 1
  %3321 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3320, i8* %3321, align 1
  %3322 = xor i64 1, %3305
  %3323 = trunc i64 %3322 to i32
  %3324 = xor i32 %3323, %3309
  %3325 = lshr i32 %3324, 4
  %3326 = trunc i32 %3325 to i8
  %3327 = and i8 %3326, 1
  %3328 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3327, i8* %3328, align 1
  %3329 = icmp eq i32 %3309, 0
  %3330 = zext i1 %3329 to i8
  %3331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3330, i8* %3331, align 1
  %3332 = lshr i32 %3309, 31
  %3333 = trunc i32 %3332 to i8
  %3334 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3333, i8* %3334, align 1
  %3335 = lshr i32 %3308, 31
  %3336 = xor i32 %3332, %3335
  %3337 = add i32 %3336, %3332
  %3338 = icmp eq i32 %3337, 2
  %3339 = zext i1 %3338 to i8
  %3340 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3339, i8* %3340, align 1
  store %struct.Memory* %loadMem_43ba77, %struct.Memory** %MEMORY
  %loadMem_43ba7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3342 = getelementptr inbounds %struct.GPR, %struct.GPR* %3341, i32 0, i32 33
  %3343 = getelementptr inbounds %struct.Reg, %struct.Reg* %3342, i32 0, i32 0
  %PC.i208 = bitcast %union.anon* %3343 to i64*
  %3344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3345 = getelementptr inbounds %struct.GPR, %struct.GPR* %3344, i32 0, i32 7
  %3346 = getelementptr inbounds %struct.Reg, %struct.Reg* %3345, i32 0, i32 0
  %EDX.i209 = bitcast %union.anon* %3346 to i32*
  %3347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3348 = getelementptr inbounds %struct.GPR, %struct.GPR* %3347, i32 0, i32 1
  %3349 = getelementptr inbounds %struct.Reg, %struct.Reg* %3348, i32 0, i32 0
  %RAX.i210 = bitcast %union.anon* %3349 to i64*
  %3350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3351 = getelementptr inbounds %struct.GPR, %struct.GPR* %3350, i32 0, i32 5
  %3352 = getelementptr inbounds %struct.Reg, %struct.Reg* %3351, i32 0, i32 0
  %RCX.i211 = bitcast %union.anon* %3352 to i64*
  %3353 = load i64, i64* %RAX.i210
  %3354 = load i64, i64* %RCX.i211
  %3355 = mul i64 %3354, 4
  %3356 = add i64 %3355, %3353
  %3357 = load i32, i32* %EDX.i209
  %3358 = zext i32 %3357 to i64
  %3359 = load i64, i64* %PC.i208
  %3360 = add i64 %3359, 3
  store i64 %3360, i64* %PC.i208
  %3361 = inttoptr i64 %3356 to i32*
  store i32 %3357, i32* %3361
  store %struct.Memory* %loadMem_43ba7a, %struct.Memory** %MEMORY
  br label %block_.L_43ba7d

block_.L_43ba7d:                                  ; preds = %block_.L_43ba4a, %block_43ba0b
  %loadMem_43ba7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3363 = getelementptr inbounds %struct.GPR, %struct.GPR* %3362, i32 0, i32 33
  %3364 = getelementptr inbounds %struct.Reg, %struct.Reg* %3363, i32 0, i32 0
  %PC.i205 = bitcast %union.anon* %3364 to i64*
  %3365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3366 = getelementptr inbounds %struct.GPR, %struct.GPR* %3365, i32 0, i32 1
  %3367 = getelementptr inbounds %struct.Reg, %struct.Reg* %3366, i32 0, i32 0
  %RAX.i206 = bitcast %union.anon* %3367 to i64*
  %3368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3369 = getelementptr inbounds %struct.GPR, %struct.GPR* %3368, i32 0, i32 15
  %3370 = getelementptr inbounds %struct.Reg, %struct.Reg* %3369, i32 0, i32 0
  %RBP.i207 = bitcast %union.anon* %3370 to i64*
  %3371 = load i64, i64* %RBP.i207
  %3372 = sub i64 %3371, 8
  %3373 = load i64, i64* %PC.i205
  %3374 = add i64 %3373, 4
  store i64 %3374, i64* %PC.i205
  %3375 = inttoptr i64 %3372 to i64*
  %3376 = load i64, i64* %3375
  store i64 %3376, i64* %RAX.i206, align 8
  store %struct.Memory* %loadMem_43ba7d, %struct.Memory** %MEMORY
  %loadMem_43ba81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3378 = getelementptr inbounds %struct.GPR, %struct.GPR* %3377, i32 0, i32 33
  %3379 = getelementptr inbounds %struct.Reg, %struct.Reg* %3378, i32 0, i32 0
  %PC.i202 = bitcast %union.anon* %3379 to i64*
  %3380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3381 = getelementptr inbounds %struct.GPR, %struct.GPR* %3380, i32 0, i32 5
  %3382 = getelementptr inbounds %struct.Reg, %struct.Reg* %3381, i32 0, i32 0
  %RCX.i203 = bitcast %union.anon* %3382 to i64*
  %3383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3384 = getelementptr inbounds %struct.GPR, %struct.GPR* %3383, i32 0, i32 15
  %3385 = getelementptr inbounds %struct.Reg, %struct.Reg* %3384, i32 0, i32 0
  %RBP.i204 = bitcast %union.anon* %3385 to i64*
  %3386 = load i64, i64* %RBP.i204
  %3387 = sub i64 %3386, 20
  %3388 = load i64, i64* %PC.i202
  %3389 = add i64 %3388, 4
  store i64 %3389, i64* %PC.i202
  %3390 = inttoptr i64 %3387 to i32*
  %3391 = load i32, i32* %3390
  %3392 = sext i32 %3391 to i64
  store i64 %3392, i64* %RCX.i203, align 8
  store %struct.Memory* %loadMem_43ba81, %struct.Memory** %MEMORY
  %loadMem_43ba85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3394 = getelementptr inbounds %struct.GPR, %struct.GPR* %3393, i32 0, i32 33
  %3395 = getelementptr inbounds %struct.Reg, %struct.Reg* %3394, i32 0, i32 0
  %PC.i199 = bitcast %union.anon* %3395 to i64*
  %3396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3397 = getelementptr inbounds %struct.GPR, %struct.GPR* %3396, i32 0, i32 1
  %3398 = getelementptr inbounds %struct.Reg, %struct.Reg* %3397, i32 0, i32 0
  %RAX.i200 = bitcast %union.anon* %3398 to i64*
  %3399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3400 = getelementptr inbounds %struct.GPR, %struct.GPR* %3399, i32 0, i32 5
  %3401 = getelementptr inbounds %struct.Reg, %struct.Reg* %3400, i32 0, i32 0
  %RCX.i201 = bitcast %union.anon* %3401 to i64*
  %3402 = load i64, i64* %RAX.i200
  %3403 = load i64, i64* %RCX.i201
  %3404 = mul i64 %3403, 4
  %3405 = add i64 %3402, 472
  %3406 = add i64 %3405, %3404
  %3407 = load i64, i64* %PC.i199
  %3408 = add i64 %3407, 8
  store i64 %3408, i64* %PC.i199
  %3409 = inttoptr i64 %3406 to i32*
  %3410 = load i32, i32* %3409
  %3411 = sub i32 %3410, 4
  %3412 = icmp ult i32 %3410, 4
  %3413 = zext i1 %3412 to i8
  %3414 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3413, i8* %3414, align 1
  %3415 = and i32 %3411, 255
  %3416 = call i32 @llvm.ctpop.i32(i32 %3415)
  %3417 = trunc i32 %3416 to i8
  %3418 = and i8 %3417, 1
  %3419 = xor i8 %3418, 1
  %3420 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3419, i8* %3420, align 1
  %3421 = xor i32 %3410, 4
  %3422 = xor i32 %3421, %3411
  %3423 = lshr i32 %3422, 4
  %3424 = trunc i32 %3423 to i8
  %3425 = and i8 %3424, 1
  %3426 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3425, i8* %3426, align 1
  %3427 = icmp eq i32 %3411, 0
  %3428 = zext i1 %3427 to i8
  %3429 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3428, i8* %3429, align 1
  %3430 = lshr i32 %3411, 31
  %3431 = trunc i32 %3430 to i8
  %3432 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3431, i8* %3432, align 1
  %3433 = lshr i32 %3410, 31
  %3434 = xor i32 %3430, %3433
  %3435 = add i32 %3434, %3433
  %3436 = icmp eq i32 %3435, 2
  %3437 = zext i1 %3436 to i8
  %3438 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3437, i8* %3438, align 1
  store %struct.Memory* %loadMem_43ba85, %struct.Memory** %MEMORY
  %loadMem_43ba8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3440 = getelementptr inbounds %struct.GPR, %struct.GPR* %3439, i32 0, i32 33
  %3441 = getelementptr inbounds %struct.Reg, %struct.Reg* %3440, i32 0, i32 0
  %PC.i198 = bitcast %union.anon* %3441 to i64*
  %3442 = load i64, i64* %PC.i198
  %3443 = add i64 %3442, 158
  %3444 = load i64, i64* %PC.i198
  %3445 = add i64 %3444, 6
  %3446 = load i64, i64* %PC.i198
  %3447 = add i64 %3446, 6
  store i64 %3447, i64* %PC.i198
  %3448 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3449 = load i8, i8* %3448, align 1
  %3450 = icmp eq i8 %3449, 0
  %3451 = zext i1 %3450 to i8
  store i8 %3451, i8* %BRANCH_TAKEN, align 1
  %3452 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3453 = select i1 %3450, i64 %3443, i64 %3445
  store i64 %3453, i64* %3452, align 8
  store %struct.Memory* %loadMem_43ba8d, %struct.Memory** %MEMORY
  %loadBr_43ba8d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43ba8d = icmp eq i8 %loadBr_43ba8d, 1
  br i1 %cmpBr_43ba8d, label %block_.L_43bb2b, label %block_43ba93

block_43ba93:                                     ; preds = %block_.L_43ba7d
  %loadMem_43ba93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3455 = getelementptr inbounds %struct.GPR, %struct.GPR* %3454, i32 0, i32 33
  %3456 = getelementptr inbounds %struct.Reg, %struct.Reg* %3455, i32 0, i32 0
  %PC.i195 = bitcast %union.anon* %3456 to i64*
  %3457 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3458 = getelementptr inbounds %struct.GPR, %struct.GPR* %3457, i32 0, i32 1
  %3459 = getelementptr inbounds %struct.Reg, %struct.Reg* %3458, i32 0, i32 0
  %RAX.i196 = bitcast %union.anon* %3459 to i64*
  %3460 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3461 = getelementptr inbounds %struct.GPR, %struct.GPR* %3460, i32 0, i32 15
  %3462 = getelementptr inbounds %struct.Reg, %struct.Reg* %3461, i32 0, i32 0
  %RBP.i197 = bitcast %union.anon* %3462 to i64*
  %3463 = load i64, i64* %RBP.i197
  %3464 = sub i64 %3463, 8
  %3465 = load i64, i64* %PC.i195
  %3466 = add i64 %3465, 4
  store i64 %3466, i64* %PC.i195
  %3467 = inttoptr i64 %3464 to i64*
  %3468 = load i64, i64* %3467
  store i64 %3468, i64* %RAX.i196, align 8
  store %struct.Memory* %loadMem_43ba93, %struct.Memory** %MEMORY
  %loadMem_43ba97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3470 = getelementptr inbounds %struct.GPR, %struct.GPR* %3469, i32 0, i32 33
  %3471 = getelementptr inbounds %struct.Reg, %struct.Reg* %3470, i32 0, i32 0
  %PC.i193 = bitcast %union.anon* %3471 to i64*
  %3472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3473 = getelementptr inbounds %struct.GPR, %struct.GPR* %3472, i32 0, i32 1
  %3474 = getelementptr inbounds %struct.Reg, %struct.Reg* %3473, i32 0, i32 0
  %RAX.i194 = bitcast %union.anon* %3474 to i64*
  %3475 = load i64, i64* %RAX.i194
  %3476 = add i64 %3475, 572
  %3477 = load i64, i64* %PC.i193
  %3478 = add i64 %3477, 7
  store i64 %3478, i64* %PC.i193
  %3479 = inttoptr i64 %3476 to i32*
  %3480 = load i32, i32* %3479
  %3481 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3481, align 1
  %3482 = and i32 %3480, 255
  %3483 = call i32 @llvm.ctpop.i32(i32 %3482)
  %3484 = trunc i32 %3483 to i8
  %3485 = and i8 %3484, 1
  %3486 = xor i8 %3485, 1
  %3487 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3486, i8* %3487, align 1
  %3488 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3488, align 1
  %3489 = icmp eq i32 %3480, 0
  %3490 = zext i1 %3489 to i8
  %3491 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3490, i8* %3491, align 1
  %3492 = lshr i32 %3480, 31
  %3493 = trunc i32 %3492 to i8
  %3494 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3493, i8* %3494, align 1
  %3495 = lshr i32 %3480, 31
  %3496 = xor i32 %3492, %3495
  %3497 = add i32 %3496, %3495
  %3498 = icmp eq i32 %3497, 2
  %3499 = zext i1 %3498 to i8
  %3500 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3499, i8* %3500, align 1
  store %struct.Memory* %loadMem_43ba97, %struct.Memory** %MEMORY
  %loadMem_43ba9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3502 = getelementptr inbounds %struct.GPR, %struct.GPR* %3501, i32 0, i32 33
  %3503 = getelementptr inbounds %struct.Reg, %struct.Reg* %3502, i32 0, i32 0
  %PC.i192 = bitcast %union.anon* %3503 to i64*
  %3504 = load i64, i64* %PC.i192
  %3505 = add i64 %3504, 28
  %3506 = load i64, i64* %PC.i192
  %3507 = add i64 %3506, 6
  %3508 = load i64, i64* %PC.i192
  %3509 = add i64 %3508, 6
  store i64 %3509, i64* %PC.i192
  %3510 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3511 = load i8, i8* %3510, align 1
  store i8 %3511, i8* %BRANCH_TAKEN, align 1
  %3512 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3513 = icmp ne i8 %3511, 0
  %3514 = select i1 %3513, i64 %3505, i64 %3507
  store i64 %3514, i64* %3512, align 8
  store %struct.Memory* %loadMem_43ba9e, %struct.Memory** %MEMORY
  %loadBr_43ba9e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43ba9e = icmp eq i8 %loadBr_43ba9e, 1
  br i1 %cmpBr_43ba9e, label %block_.L_43baba, label %block_43baa4

block_43baa4:                                     ; preds = %block_43ba93
  %loadMem_43baa4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3516 = getelementptr inbounds %struct.GPR, %struct.GPR* %3515, i32 0, i32 33
  %3517 = getelementptr inbounds %struct.Reg, %struct.Reg* %3516, i32 0, i32 0
  %PC.i189 = bitcast %union.anon* %3517 to i64*
  %3518 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3519 = getelementptr inbounds %struct.GPR, %struct.GPR* %3518, i32 0, i32 1
  %3520 = getelementptr inbounds %struct.Reg, %struct.Reg* %3519, i32 0, i32 0
  %RAX.i190 = bitcast %union.anon* %3520 to i64*
  %3521 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3522 = getelementptr inbounds %struct.GPR, %struct.GPR* %3521, i32 0, i32 15
  %3523 = getelementptr inbounds %struct.Reg, %struct.Reg* %3522, i32 0, i32 0
  %RBP.i191 = bitcast %union.anon* %3523 to i64*
  %3524 = load i64, i64* %RBP.i191
  %3525 = sub i64 %3524, 8
  %3526 = load i64, i64* %PC.i189
  %3527 = add i64 %3526, 4
  store i64 %3527, i64* %PC.i189
  %3528 = inttoptr i64 %3525 to i64*
  %3529 = load i64, i64* %3528
  store i64 %3529, i64* %RAX.i190, align 8
  store %struct.Memory* %loadMem_43baa4, %struct.Memory** %MEMORY
  %loadMem_43baa8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3531 = getelementptr inbounds %struct.GPR, %struct.GPR* %3530, i32 0, i32 33
  %3532 = getelementptr inbounds %struct.Reg, %struct.Reg* %3531, i32 0, i32 0
  %PC.i186 = bitcast %union.anon* %3532 to i64*
  %3533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3534 = getelementptr inbounds %struct.GPR, %struct.GPR* %3533, i32 0, i32 1
  %3535 = getelementptr inbounds %struct.Reg, %struct.Reg* %3534, i32 0, i32 0
  %RAX.i187 = bitcast %union.anon* %3535 to i64*
  %3536 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3537 = getelementptr inbounds %struct.GPR, %struct.GPR* %3536, i32 0, i32 5
  %3538 = getelementptr inbounds %struct.Reg, %struct.Reg* %3537, i32 0, i32 0
  %RCX.i188 = bitcast %union.anon* %3538 to i64*
  %3539 = load i64, i64* %RAX.i187
  %3540 = add i64 %3539, 460
  %3541 = load i64, i64* %PC.i186
  %3542 = add i64 %3541, 6
  store i64 %3542, i64* %PC.i186
  %3543 = inttoptr i64 %3540 to i32*
  %3544 = load i32, i32* %3543
  %3545 = zext i32 %3544 to i64
  store i64 %3545, i64* %RCX.i188, align 8
  store %struct.Memory* %loadMem_43baa8, %struct.Memory** %MEMORY
  %loadMem_43baae = load %struct.Memory*, %struct.Memory** %MEMORY
  %3546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3547 = getelementptr inbounds %struct.GPR, %struct.GPR* %3546, i32 0, i32 33
  %3548 = getelementptr inbounds %struct.Reg, %struct.Reg* %3547, i32 0, i32 0
  %PC.i184 = bitcast %union.anon* %3548 to i64*
  %3549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3550 = getelementptr inbounds %struct.GPR, %struct.GPR* %3549, i32 0, i32 5
  %3551 = getelementptr inbounds %struct.Reg, %struct.Reg* %3550, i32 0, i32 0
  %RCX.i185 = bitcast %union.anon* %3551 to i64*
  %3552 = load i64, i64* %RCX.i185
  %3553 = load i64, i64* %PC.i184
  %3554 = add i64 %3553, 3
  store i64 %3554, i64* %PC.i184
  %3555 = and i64 15, %3552
  %3556 = trunc i64 %3555 to i32
  store i64 %3555, i64* %RCX.i185, align 8
  %3557 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3557, align 1
  %3558 = and i32 %3556, 255
  %3559 = call i32 @llvm.ctpop.i32(i32 %3558)
  %3560 = trunc i32 %3559 to i8
  %3561 = and i8 %3560, 1
  %3562 = xor i8 %3561, 1
  %3563 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3562, i8* %3563, align 1
  %3564 = icmp eq i32 %3556, 0
  %3565 = zext i1 %3564 to i8
  %3566 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3565, i8* %3566, align 1
  %3567 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %3567, align 1
  %3568 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3568, align 1
  %3569 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3569, align 1
  store %struct.Memory* %loadMem_43baae, %struct.Memory** %MEMORY
  %loadMem_43bab1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3570 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3571 = getelementptr inbounds %struct.GPR, %struct.GPR* %3570, i32 0, i32 33
  %3572 = getelementptr inbounds %struct.Reg, %struct.Reg* %3571, i32 0, i32 0
  %PC.i182 = bitcast %union.anon* %3572 to i64*
  %3573 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3574 = getelementptr inbounds %struct.GPR, %struct.GPR* %3573, i32 0, i32 5
  %3575 = getelementptr inbounds %struct.Reg, %struct.Reg* %3574, i32 0, i32 0
  %ECX.i183 = bitcast %union.anon* %3575 to i32*
  %3576 = load i32, i32* %ECX.i183
  %3577 = zext i32 %3576 to i64
  %3578 = load i64, i64* %PC.i182
  %3579 = add i64 %3578, 3
  store i64 %3579, i64* %PC.i182
  %3580 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3580, align 1
  %3581 = and i32 %3576, 255
  %3582 = call i32 @llvm.ctpop.i32(i32 %3581)
  %3583 = trunc i32 %3582 to i8
  %3584 = and i8 %3583, 1
  %3585 = xor i8 %3584, 1
  %3586 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3585, i8* %3586, align 1
  %3587 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3587, align 1
  %3588 = icmp eq i32 %3576, 0
  %3589 = zext i1 %3588 to i8
  %3590 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3589, i8* %3590, align 1
  %3591 = lshr i32 %3576, 31
  %3592 = trunc i32 %3591 to i8
  %3593 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3592, i8* %3593, align 1
  %3594 = lshr i32 %3576, 31
  %3595 = xor i32 %3591, %3594
  %3596 = add i32 %3595, %3594
  %3597 = icmp eq i32 %3596, 2
  %3598 = zext i1 %3597 to i8
  %3599 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3598, i8* %3599, align 1
  store %struct.Memory* %loadMem_43bab1, %struct.Memory** %MEMORY
  %loadMem_43bab4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3601 = getelementptr inbounds %struct.GPR, %struct.GPR* %3600, i32 0, i32 33
  %3602 = getelementptr inbounds %struct.Reg, %struct.Reg* %3601, i32 0, i32 0
  %PC.i181 = bitcast %union.anon* %3602 to i64*
  %3603 = load i64, i64* %PC.i181
  %3604 = add i64 %3603, 27
  %3605 = load i64, i64* %PC.i181
  %3606 = add i64 %3605, 6
  %3607 = load i64, i64* %PC.i181
  %3608 = add i64 %3607, 6
  store i64 %3608, i64* %PC.i181
  %3609 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3610 = load i8, i8* %3609, align 1
  %3611 = icmp eq i8 %3610, 0
  %3612 = zext i1 %3611 to i8
  store i8 %3612, i8* %BRANCH_TAKEN, align 1
  %3613 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3614 = select i1 %3611, i64 %3604, i64 %3606
  store i64 %3614, i64* %3613, align 8
  store %struct.Memory* %loadMem_43bab4, %struct.Memory** %MEMORY
  %loadBr_43bab4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43bab4 = icmp eq i8 %loadBr_43bab4, 1
  br i1 %cmpBr_43bab4, label %block_.L_43bacf, label %block_.L_43baba

block_.L_43baba:                                  ; preds = %block_43baa4, %block_43ba93
  %loadMem_43baba = load %struct.Memory*, %struct.Memory** %MEMORY
  %3615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3616 = getelementptr inbounds %struct.GPR, %struct.GPR* %3615, i32 0, i32 33
  %3617 = getelementptr inbounds %struct.Reg, %struct.Reg* %3616, i32 0, i32 0
  %PC.i179 = bitcast %union.anon* %3617 to i64*
  %3618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3619 = getelementptr inbounds %struct.GPR, %struct.GPR* %3618, i32 0, i32 1
  %3620 = getelementptr inbounds %struct.Reg, %struct.Reg* %3619, i32 0, i32 0
  %RAX.i180 = bitcast %union.anon* %3620 to i64*
  %3621 = load i64, i64* %PC.i179
  %3622 = add i64 %3621, 8
  store i64 %3622, i64* %PC.i179
  %3623 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %3623, i64* %RAX.i180, align 8
  store %struct.Memory* %loadMem_43baba, %struct.Memory** %MEMORY
  %loadMem_43bac2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3625 = getelementptr inbounds %struct.GPR, %struct.GPR* %3624, i32 0, i32 33
  %3626 = getelementptr inbounds %struct.Reg, %struct.Reg* %3625, i32 0, i32 0
  %PC.i177 = bitcast %union.anon* %3626 to i64*
  %3627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3628 = getelementptr inbounds %struct.GPR, %struct.GPR* %3627, i32 0, i32 1
  %3629 = getelementptr inbounds %struct.Reg, %struct.Reg* %3628, i32 0, i32 0
  %RAX.i178 = bitcast %union.anon* %3629 to i64*
  %3630 = load i64, i64* %RAX.i178
  %3631 = add i64 %3630, 3220
  %3632 = load i64, i64* %PC.i177
  %3633 = add i64 %3632, 7
  store i64 %3633, i64* %PC.i177
  %3634 = inttoptr i64 %3631 to i32*
  %3635 = load i32, i32* %3634
  %3636 = sub i32 %3635, 2
  %3637 = icmp ult i32 %3635, 2
  %3638 = zext i1 %3637 to i8
  %3639 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3638, i8* %3639, align 1
  %3640 = and i32 %3636, 255
  %3641 = call i32 @llvm.ctpop.i32(i32 %3640)
  %3642 = trunc i32 %3641 to i8
  %3643 = and i8 %3642, 1
  %3644 = xor i8 %3643, 1
  %3645 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3644, i8* %3645, align 1
  %3646 = xor i32 %3635, 2
  %3647 = xor i32 %3646, %3636
  %3648 = lshr i32 %3647, 4
  %3649 = trunc i32 %3648 to i8
  %3650 = and i8 %3649, 1
  %3651 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3650, i8* %3651, align 1
  %3652 = icmp eq i32 %3636, 0
  %3653 = zext i1 %3652 to i8
  %3654 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3653, i8* %3654, align 1
  %3655 = lshr i32 %3636, 31
  %3656 = trunc i32 %3655 to i8
  %3657 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3656, i8* %3657, align 1
  %3658 = lshr i32 %3635, 31
  %3659 = xor i32 %3655, %3658
  %3660 = add i32 %3659, %3658
  %3661 = icmp eq i32 %3660, 2
  %3662 = zext i1 %3661 to i8
  %3663 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3662, i8* %3663, align 1
  store %struct.Memory* %loadMem_43bac2, %struct.Memory** %MEMORY
  %loadMem_43bac9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3665 = getelementptr inbounds %struct.GPR, %struct.GPR* %3664, i32 0, i32 33
  %3666 = getelementptr inbounds %struct.Reg, %struct.Reg* %3665, i32 0, i32 0
  %PC.i176 = bitcast %union.anon* %3666 to i64*
  %3667 = load i64, i64* %PC.i176
  %3668 = add i64 %3667, 51
  %3669 = load i64, i64* %PC.i176
  %3670 = add i64 %3669, 6
  %3671 = load i64, i64* %PC.i176
  %3672 = add i64 %3671, 6
  store i64 %3672, i64* %PC.i176
  %3673 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3674 = load i8, i8* %3673, align 1
  %3675 = icmp eq i8 %3674, 0
  %3676 = zext i1 %3675 to i8
  store i8 %3676, i8* %BRANCH_TAKEN, align 1
  %3677 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3678 = select i1 %3675, i64 %3668, i64 %3670
  store i64 %3678, i64* %3677, align 8
  store %struct.Memory* %loadMem_43bac9, %struct.Memory** %MEMORY
  %loadBr_43bac9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43bac9 = icmp eq i8 %loadBr_43bac9, 1
  br i1 %cmpBr_43bac9, label %block_.L_43bafc, label %block_.L_43bacf

block_.L_43bacf:                                  ; preds = %block_.L_43baba, %block_43baa4
  %loadMem_43bacf = load %struct.Memory*, %struct.Memory** %MEMORY
  %3679 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3680 = getelementptr inbounds %struct.GPR, %struct.GPR* %3679, i32 0, i32 33
  %3681 = getelementptr inbounds %struct.Reg, %struct.Reg* %3680, i32 0, i32 0
  %PC.i174 = bitcast %union.anon* %3681 to i64*
  %3682 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3683 = getelementptr inbounds %struct.GPR, %struct.GPR* %3682, i32 0, i32 1
  %3684 = getelementptr inbounds %struct.Reg, %struct.Reg* %3683, i32 0, i32 0
  %RAX.i175 = bitcast %union.anon* %3684 to i64*
  %3685 = load i64, i64* %PC.i174
  %3686 = add i64 %3685, 8
  store i64 %3686, i64* %PC.i174
  %3687 = load i64, i64* bitcast (%G_0x6cb908_type* @G_0x6cb908 to i64*)
  store i64 %3687, i64* %RAX.i175, align 8
  store %struct.Memory* %loadMem_43bacf, %struct.Memory** %MEMORY
  %loadMem_43bad7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3689 = getelementptr inbounds %struct.GPR, %struct.GPR* %3688, i32 0, i32 33
  %3690 = getelementptr inbounds %struct.Reg, %struct.Reg* %3689, i32 0, i32 0
  %PC.i172 = bitcast %union.anon* %3690 to i64*
  %3691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3692 = getelementptr inbounds %struct.GPR, %struct.GPR* %3691, i32 0, i32 1
  %3693 = getelementptr inbounds %struct.Reg, %struct.Reg* %3692, i32 0, i32 0
  %RAX.i173 = bitcast %union.anon* %3693 to i64*
  %3694 = load i64, i64* %RAX.i173
  %3695 = load i64, i64* %PC.i172
  %3696 = add i64 %3695, 4
  store i64 %3696, i64* %PC.i172
  %3697 = add i64 72, %3694
  store i64 %3697, i64* %RAX.i173, align 8
  %3698 = icmp ult i64 %3697, %3694
  %3699 = icmp ult i64 %3697, 72
  %3700 = or i1 %3698, %3699
  %3701 = zext i1 %3700 to i8
  %3702 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3701, i8* %3702, align 1
  %3703 = trunc i64 %3697 to i32
  %3704 = and i32 %3703, 255
  %3705 = call i32 @llvm.ctpop.i32(i32 %3704)
  %3706 = trunc i32 %3705 to i8
  %3707 = and i8 %3706, 1
  %3708 = xor i8 %3707, 1
  %3709 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3708, i8* %3709, align 1
  %3710 = xor i64 72, %3694
  %3711 = xor i64 %3710, %3697
  %3712 = lshr i64 %3711, 4
  %3713 = trunc i64 %3712 to i8
  %3714 = and i8 %3713, 1
  %3715 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3714, i8* %3715, align 1
  %3716 = icmp eq i64 %3697, 0
  %3717 = zext i1 %3716 to i8
  %3718 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3717, i8* %3718, align 1
  %3719 = lshr i64 %3697, 63
  %3720 = trunc i64 %3719 to i8
  %3721 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3720, i8* %3721, align 1
  %3722 = lshr i64 %3694, 63
  %3723 = xor i64 %3719, %3722
  %3724 = add i64 %3723, %3719
  %3725 = icmp eq i64 %3724, 2
  %3726 = zext i1 %3725 to i8
  %3727 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3726, i8* %3727, align 1
  store %struct.Memory* %loadMem_43bad7, %struct.Memory** %MEMORY
  %loadMem_43badb = load %struct.Memory*, %struct.Memory** %MEMORY
  %3728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3729 = getelementptr inbounds %struct.GPR, %struct.GPR* %3728, i32 0, i32 33
  %3730 = getelementptr inbounds %struct.Reg, %struct.Reg* %3729, i32 0, i32 0
  %PC.i170 = bitcast %union.anon* %3730 to i64*
  %3731 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3732 = getelementptr inbounds %struct.GPR, %struct.GPR* %3731, i32 0, i32 5
  %3733 = getelementptr inbounds %struct.Reg, %struct.Reg* %3732, i32 0, i32 0
  %RCX.i171 = bitcast %union.anon* %3733 to i64*
  %3734 = load i64, i64* %PC.i170
  %3735 = add i64 %3734, 8
  store i64 %3735, i64* %PC.i170
  %3736 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %3736, i64* %RCX.i171, align 8
  store %struct.Memory* %loadMem_43badb, %struct.Memory** %MEMORY
  %loadMem_43bae3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3737 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3738 = getelementptr inbounds %struct.GPR, %struct.GPR* %3737, i32 0, i32 33
  %3739 = getelementptr inbounds %struct.Reg, %struct.Reg* %3738, i32 0, i32 0
  %PC.i168 = bitcast %union.anon* %3739 to i64*
  %3740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3741 = getelementptr inbounds %struct.GPR, %struct.GPR* %3740, i32 0, i32 5
  %3742 = getelementptr inbounds %struct.Reg, %struct.Reg* %3741, i32 0, i32 0
  %RCX.i169 = bitcast %union.anon* %3742 to i64*
  %3743 = load i64, i64* %RCX.i169
  %3744 = add i64 %3743, 24
  %3745 = load i64, i64* %PC.i168
  %3746 = add i64 %3745, 4
  store i64 %3746, i64* %PC.i168
  %3747 = inttoptr i64 %3744 to i32*
  %3748 = load i32, i32* %3747
  %3749 = sext i32 %3748 to i64
  store i64 %3749, i64* %RCX.i169, align 8
  store %struct.Memory* %loadMem_43bae3, %struct.Memory** %MEMORY
  %loadMem_43bae7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3750 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3751 = getelementptr inbounds %struct.GPR, %struct.GPR* %3750, i32 0, i32 33
  %3752 = getelementptr inbounds %struct.Reg, %struct.Reg* %3751, i32 0, i32 0
  %PC.i166 = bitcast %union.anon* %3752 to i64*
  %3753 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3754 = getelementptr inbounds %struct.GPR, %struct.GPR* %3753, i32 0, i32 5
  %3755 = getelementptr inbounds %struct.Reg, %struct.Reg* %3754, i32 0, i32 0
  %RCX.i167 = bitcast %union.anon* %3755 to i64*
  %3756 = load i64, i64* %RCX.i167
  %3757 = load i64, i64* %PC.i166
  %3758 = add i64 %3757, 4
  store i64 %3758, i64* %PC.i166
  %3759 = sext i64 %3756 to i128
  %3760 = and i128 %3759, -18446744073709551616
  %3761 = zext i64 %3756 to i128
  %3762 = or i128 %3760, %3761
  %3763 = mul i128 60, %3762
  %3764 = trunc i128 %3763 to i64
  store i64 %3764, i64* %RCX.i167, align 8
  %3765 = sext i64 %3764 to i128
  %3766 = icmp ne i128 %3765, %3763
  %3767 = zext i1 %3766 to i8
  %3768 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3767, i8* %3768, align 1
  %3769 = trunc i128 %3763 to i32
  %3770 = and i32 %3769, 255
  %3771 = call i32 @llvm.ctpop.i32(i32 %3770)
  %3772 = trunc i32 %3771 to i8
  %3773 = and i8 %3772, 1
  %3774 = xor i8 %3773, 1
  %3775 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3774, i8* %3775, align 1
  %3776 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3776, align 1
  %3777 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3777, align 1
  %3778 = lshr i64 %3764, 63
  %3779 = trunc i64 %3778 to i8
  %3780 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3779, i8* %3780, align 1
  %3781 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3767, i8* %3781, align 1
  store %struct.Memory* %loadMem_43bae7, %struct.Memory** %MEMORY
  %loadMem_43baeb = load %struct.Memory*, %struct.Memory** %MEMORY
  %3782 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3783 = getelementptr inbounds %struct.GPR, %struct.GPR* %3782, i32 0, i32 33
  %3784 = getelementptr inbounds %struct.Reg, %struct.Reg* %3783, i32 0, i32 0
  %PC.i163 = bitcast %union.anon* %3784 to i64*
  %3785 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3786 = getelementptr inbounds %struct.GPR, %struct.GPR* %3785, i32 0, i32 1
  %3787 = getelementptr inbounds %struct.Reg, %struct.Reg* %3786, i32 0, i32 0
  %RAX.i164 = bitcast %union.anon* %3787 to i64*
  %3788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3789 = getelementptr inbounds %struct.GPR, %struct.GPR* %3788, i32 0, i32 5
  %3790 = getelementptr inbounds %struct.Reg, %struct.Reg* %3789, i32 0, i32 0
  %RCX.i165 = bitcast %union.anon* %3790 to i64*
  %3791 = load i64, i64* %RAX.i164
  %3792 = load i64, i64* %RCX.i165
  %3793 = load i64, i64* %PC.i163
  %3794 = add i64 %3793, 3
  store i64 %3794, i64* %PC.i163
  %3795 = add i64 %3792, %3791
  store i64 %3795, i64* %RAX.i164, align 8
  %3796 = icmp ult i64 %3795, %3791
  %3797 = icmp ult i64 %3795, %3792
  %3798 = or i1 %3796, %3797
  %3799 = zext i1 %3798 to i8
  %3800 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3799, i8* %3800, align 1
  %3801 = trunc i64 %3795 to i32
  %3802 = and i32 %3801, 255
  %3803 = call i32 @llvm.ctpop.i32(i32 %3802)
  %3804 = trunc i32 %3803 to i8
  %3805 = and i8 %3804, 1
  %3806 = xor i8 %3805, 1
  %3807 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3806, i8* %3807, align 1
  %3808 = xor i64 %3792, %3791
  %3809 = xor i64 %3808, %3795
  %3810 = lshr i64 %3809, 4
  %3811 = trunc i64 %3810 to i8
  %3812 = and i8 %3811, 1
  %3813 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3812, i8* %3813, align 1
  %3814 = icmp eq i64 %3795, 0
  %3815 = zext i1 %3814 to i8
  %3816 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3815, i8* %3816, align 1
  %3817 = lshr i64 %3795, 63
  %3818 = trunc i64 %3817 to i8
  %3819 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3818, i8* %3819, align 1
  %3820 = lshr i64 %3791, 63
  %3821 = lshr i64 %3792, 63
  %3822 = xor i64 %3817, %3820
  %3823 = xor i64 %3817, %3821
  %3824 = add i64 %3822, %3823
  %3825 = icmp eq i64 %3824, 2
  %3826 = zext i1 %3825 to i8
  %3827 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3826, i8* %3827, align 1
  store %struct.Memory* %loadMem_43baeb, %struct.Memory** %MEMORY
  %loadMem_43baee = load %struct.Memory*, %struct.Memory** %MEMORY
  %3828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3829 = getelementptr inbounds %struct.GPR, %struct.GPR* %3828, i32 0, i32 33
  %3830 = getelementptr inbounds %struct.Reg, %struct.Reg* %3829, i32 0, i32 0
  %PC.i160 = bitcast %union.anon* %3830 to i64*
  %3831 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3832 = getelementptr inbounds %struct.GPR, %struct.GPR* %3831, i32 0, i32 1
  %3833 = getelementptr inbounds %struct.Reg, %struct.Reg* %3832, i32 0, i32 0
  %RAX.i161 = bitcast %union.anon* %3833 to i64*
  %3834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3835 = getelementptr inbounds %struct.GPR, %struct.GPR* %3834, i32 0, i32 7
  %3836 = getelementptr inbounds %struct.Reg, %struct.Reg* %3835, i32 0, i32 0
  %RDX.i162 = bitcast %union.anon* %3836 to i64*
  %3837 = load i64, i64* %RAX.i161
  %3838 = add i64 %3837, 16
  %3839 = load i64, i64* %PC.i160
  %3840 = add i64 %3839, 3
  store i64 %3840, i64* %PC.i160
  %3841 = inttoptr i64 %3838 to i32*
  %3842 = load i32, i32* %3841
  %3843 = zext i32 %3842 to i64
  store i64 %3843, i64* %RDX.i162, align 8
  store %struct.Memory* %loadMem_43baee, %struct.Memory** %MEMORY
  %loadMem_43baf1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3844 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3845 = getelementptr inbounds %struct.GPR, %struct.GPR* %3844, i32 0, i32 33
  %3846 = getelementptr inbounds %struct.Reg, %struct.Reg* %3845, i32 0, i32 0
  %PC.i158 = bitcast %union.anon* %3846 to i64*
  %3847 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3848 = getelementptr inbounds %struct.GPR, %struct.GPR* %3847, i32 0, i32 7
  %3849 = getelementptr inbounds %struct.Reg, %struct.Reg* %3848, i32 0, i32 0
  %RDX.i159 = bitcast %union.anon* %3849 to i64*
  %3850 = load i64, i64* %RDX.i159
  %3851 = load i64, i64* %PC.i158
  %3852 = add i64 %3851, 3
  store i64 %3852, i64* %PC.i158
  %3853 = trunc i64 %3850 to i32
  %3854 = add i32 1, %3853
  %3855 = zext i32 %3854 to i64
  store i64 %3855, i64* %RDX.i159, align 8
  %3856 = icmp ult i32 %3854, %3853
  %3857 = icmp ult i32 %3854, 1
  %3858 = or i1 %3856, %3857
  %3859 = zext i1 %3858 to i8
  %3860 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3859, i8* %3860, align 1
  %3861 = and i32 %3854, 255
  %3862 = call i32 @llvm.ctpop.i32(i32 %3861)
  %3863 = trunc i32 %3862 to i8
  %3864 = and i8 %3863, 1
  %3865 = xor i8 %3864, 1
  %3866 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3865, i8* %3866, align 1
  %3867 = xor i64 1, %3850
  %3868 = trunc i64 %3867 to i32
  %3869 = xor i32 %3868, %3854
  %3870 = lshr i32 %3869, 4
  %3871 = trunc i32 %3870 to i8
  %3872 = and i8 %3871, 1
  %3873 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3872, i8* %3873, align 1
  %3874 = icmp eq i32 %3854, 0
  %3875 = zext i1 %3874 to i8
  %3876 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3875, i8* %3876, align 1
  %3877 = lshr i32 %3854, 31
  %3878 = trunc i32 %3877 to i8
  %3879 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3878, i8* %3879, align 1
  %3880 = lshr i32 %3853, 31
  %3881 = xor i32 %3877, %3880
  %3882 = add i32 %3881, %3877
  %3883 = icmp eq i32 %3882, 2
  %3884 = zext i1 %3883 to i8
  %3885 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3884, i8* %3885, align 1
  store %struct.Memory* %loadMem_43baf1, %struct.Memory** %MEMORY
  %loadMem_43baf4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3887 = getelementptr inbounds %struct.GPR, %struct.GPR* %3886, i32 0, i32 33
  %3888 = getelementptr inbounds %struct.Reg, %struct.Reg* %3887, i32 0, i32 0
  %PC.i155 = bitcast %union.anon* %3888 to i64*
  %3889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3890 = getelementptr inbounds %struct.GPR, %struct.GPR* %3889, i32 0, i32 7
  %3891 = getelementptr inbounds %struct.Reg, %struct.Reg* %3890, i32 0, i32 0
  %EDX.i156 = bitcast %union.anon* %3891 to i32*
  %3892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3893 = getelementptr inbounds %struct.GPR, %struct.GPR* %3892, i32 0, i32 1
  %3894 = getelementptr inbounds %struct.Reg, %struct.Reg* %3893, i32 0, i32 0
  %RAX.i157 = bitcast %union.anon* %3894 to i64*
  %3895 = load i64, i64* %RAX.i157
  %3896 = add i64 %3895, 16
  %3897 = load i32, i32* %EDX.i156
  %3898 = zext i32 %3897 to i64
  %3899 = load i64, i64* %PC.i155
  %3900 = add i64 %3899, 3
  store i64 %3900, i64* %PC.i155
  %3901 = inttoptr i64 %3896 to i32*
  store i32 %3897, i32* %3901
  store %struct.Memory* %loadMem_43baf4, %struct.Memory** %MEMORY
  %loadMem_43baf7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3903 = getelementptr inbounds %struct.GPR, %struct.GPR* %3902, i32 0, i32 33
  %3904 = getelementptr inbounds %struct.Reg, %struct.Reg* %3903, i32 0, i32 0
  %PC.i154 = bitcast %union.anon* %3904 to i64*
  %3905 = load i64, i64* %PC.i154
  %3906 = add i64 %3905, 47
  %3907 = load i64, i64* %PC.i154
  %3908 = add i64 %3907, 5
  store i64 %3908, i64* %PC.i154
  %3909 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3906, i64* %3909, align 8
  store %struct.Memory* %loadMem_43baf7, %struct.Memory** %MEMORY
  br label %block_.L_43bb26

block_.L_43bafc:                                  ; preds = %block_.L_43baba
  %loadMem_43bafc = load %struct.Memory*, %struct.Memory** %MEMORY
  %3910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3911 = getelementptr inbounds %struct.GPR, %struct.GPR* %3910, i32 0, i32 33
  %3912 = getelementptr inbounds %struct.Reg, %struct.Reg* %3911, i32 0, i32 0
  %PC.i152 = bitcast %union.anon* %3912 to i64*
  %3913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3914 = getelementptr inbounds %struct.GPR, %struct.GPR* %3913, i32 0, i32 1
  %3915 = getelementptr inbounds %struct.Reg, %struct.Reg* %3914, i32 0, i32 0
  %RAX.i153 = bitcast %union.anon* %3915 to i64*
  %3916 = load i64, i64* %PC.i152
  %3917 = add i64 %3916, 8
  store i64 %3917, i64* %PC.i152
  %3918 = load i64, i64* bitcast (%G_0x6cb908_type* @G_0x6cb908 to i64*)
  store i64 %3918, i64* %RAX.i153, align 8
  store %struct.Memory* %loadMem_43bafc, %struct.Memory** %MEMORY
  %loadMem_43bb04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3919 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3920 = getelementptr inbounds %struct.GPR, %struct.GPR* %3919, i32 0, i32 33
  %3921 = getelementptr inbounds %struct.Reg, %struct.Reg* %3920, i32 0, i32 0
  %PC.i150 = bitcast %union.anon* %3921 to i64*
  %3922 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3923 = getelementptr inbounds %struct.GPR, %struct.GPR* %3922, i32 0, i32 1
  %3924 = getelementptr inbounds %struct.Reg, %struct.Reg* %3923, i32 0, i32 0
  %RAX.i151 = bitcast %union.anon* %3924 to i64*
  %3925 = load i64, i64* %RAX.i151
  %3926 = load i64, i64* %PC.i150
  %3927 = add i64 %3926, 6
  store i64 %3927, i64* %PC.i150
  %3928 = add i64 372, %3925
  store i64 %3928, i64* %RAX.i151, align 8
  %3929 = icmp ult i64 %3928, %3925
  %3930 = icmp ult i64 %3928, 372
  %3931 = or i1 %3929, %3930
  %3932 = zext i1 %3931 to i8
  %3933 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3932, i8* %3933, align 1
  %3934 = trunc i64 %3928 to i32
  %3935 = and i32 %3934, 255
  %3936 = call i32 @llvm.ctpop.i32(i32 %3935)
  %3937 = trunc i32 %3936 to i8
  %3938 = and i8 %3937, 1
  %3939 = xor i8 %3938, 1
  %3940 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3939, i8* %3940, align 1
  %3941 = xor i64 372, %3925
  %3942 = xor i64 %3941, %3928
  %3943 = lshr i64 %3942, 4
  %3944 = trunc i64 %3943 to i8
  %3945 = and i8 %3944, 1
  %3946 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3945, i8* %3946, align 1
  %3947 = icmp eq i64 %3928, 0
  %3948 = zext i1 %3947 to i8
  %3949 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3948, i8* %3949, align 1
  %3950 = lshr i64 %3928, 63
  %3951 = trunc i64 %3950 to i8
  %3952 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3951, i8* %3952, align 1
  %3953 = lshr i64 %3925, 63
  %3954 = xor i64 %3950, %3953
  %3955 = add i64 %3954, %3950
  %3956 = icmp eq i64 %3955, 2
  %3957 = zext i1 %3956 to i8
  %3958 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3957, i8* %3958, align 1
  store %struct.Memory* %loadMem_43bb04, %struct.Memory** %MEMORY
  %loadMem_43bb0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3959 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3960 = getelementptr inbounds %struct.GPR, %struct.GPR* %3959, i32 0, i32 33
  %3961 = getelementptr inbounds %struct.Reg, %struct.Reg* %3960, i32 0, i32 0
  %PC.i148 = bitcast %union.anon* %3961 to i64*
  %3962 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3963 = getelementptr inbounds %struct.GPR, %struct.GPR* %3962, i32 0, i32 5
  %3964 = getelementptr inbounds %struct.Reg, %struct.Reg* %3963, i32 0, i32 0
  %RCX.i149 = bitcast %union.anon* %3964 to i64*
  %3965 = load i64, i64* %PC.i148
  %3966 = add i64 %3965, 8
  store i64 %3966, i64* %PC.i148
  %3967 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %3967, i64* %RCX.i149, align 8
  store %struct.Memory* %loadMem_43bb0a, %struct.Memory** %MEMORY
  %loadMem_43bb12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3968 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3969 = getelementptr inbounds %struct.GPR, %struct.GPR* %3968, i32 0, i32 33
  %3970 = getelementptr inbounds %struct.Reg, %struct.Reg* %3969, i32 0, i32 0
  %PC.i146 = bitcast %union.anon* %3970 to i64*
  %3971 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3972 = getelementptr inbounds %struct.GPR, %struct.GPR* %3971, i32 0, i32 5
  %3973 = getelementptr inbounds %struct.Reg, %struct.Reg* %3972, i32 0, i32 0
  %RCX.i147 = bitcast %union.anon* %3973 to i64*
  %3974 = load i64, i64* %RCX.i147
  %3975 = add i64 %3974, 24
  %3976 = load i64, i64* %PC.i146
  %3977 = add i64 %3976, 4
  store i64 %3977, i64* %PC.i146
  %3978 = inttoptr i64 %3975 to i32*
  %3979 = load i32, i32* %3978
  %3980 = sext i32 %3979 to i64
  store i64 %3980, i64* %RCX.i147, align 8
  store %struct.Memory* %loadMem_43bb12, %struct.Memory** %MEMORY
  %loadMem_43bb16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3982 = getelementptr inbounds %struct.GPR, %struct.GPR* %3981, i32 0, i32 33
  %3983 = getelementptr inbounds %struct.Reg, %struct.Reg* %3982, i32 0, i32 0
  %PC.i144 = bitcast %union.anon* %3983 to i64*
  %3984 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3985 = getelementptr inbounds %struct.GPR, %struct.GPR* %3984, i32 0, i32 5
  %3986 = getelementptr inbounds %struct.Reg, %struct.Reg* %3985, i32 0, i32 0
  %RCX.i145 = bitcast %union.anon* %3986 to i64*
  %3987 = load i64, i64* %RCX.i145
  %3988 = load i64, i64* %PC.i144
  %3989 = add i64 %3988, 4
  store i64 %3989, i64* %PC.i144
  %3990 = sext i64 %3987 to i128
  %3991 = and i128 %3990, -18446744073709551616
  %3992 = zext i64 %3987 to i128
  %3993 = or i128 %3991, %3992
  %3994 = mul i128 60, %3993
  %3995 = trunc i128 %3994 to i64
  store i64 %3995, i64* %RCX.i145, align 8
  %3996 = sext i64 %3995 to i128
  %3997 = icmp ne i128 %3996, %3994
  %3998 = zext i1 %3997 to i8
  %3999 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3998, i8* %3999, align 1
  %4000 = trunc i128 %3994 to i32
  %4001 = and i32 %4000, 255
  %4002 = call i32 @llvm.ctpop.i32(i32 %4001)
  %4003 = trunc i32 %4002 to i8
  %4004 = and i8 %4003, 1
  %4005 = xor i8 %4004, 1
  %4006 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4005, i8* %4006, align 1
  %4007 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4007, align 1
  %4008 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4008, align 1
  %4009 = lshr i64 %3995, 63
  %4010 = trunc i64 %4009 to i8
  %4011 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4010, i8* %4011, align 1
  %4012 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3998, i8* %4012, align 1
  store %struct.Memory* %loadMem_43bb16, %struct.Memory** %MEMORY
  %loadMem_43bb1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4013 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4014 = getelementptr inbounds %struct.GPR, %struct.GPR* %4013, i32 0, i32 33
  %4015 = getelementptr inbounds %struct.Reg, %struct.Reg* %4014, i32 0, i32 0
  %PC.i141 = bitcast %union.anon* %4015 to i64*
  %4016 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4017 = getelementptr inbounds %struct.GPR, %struct.GPR* %4016, i32 0, i32 1
  %4018 = getelementptr inbounds %struct.Reg, %struct.Reg* %4017, i32 0, i32 0
  %RAX.i142 = bitcast %union.anon* %4018 to i64*
  %4019 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4020 = getelementptr inbounds %struct.GPR, %struct.GPR* %4019, i32 0, i32 5
  %4021 = getelementptr inbounds %struct.Reg, %struct.Reg* %4020, i32 0, i32 0
  %RCX.i143 = bitcast %union.anon* %4021 to i64*
  %4022 = load i64, i64* %RAX.i142
  %4023 = load i64, i64* %RCX.i143
  %4024 = load i64, i64* %PC.i141
  %4025 = add i64 %4024, 3
  store i64 %4025, i64* %PC.i141
  %4026 = add i64 %4023, %4022
  store i64 %4026, i64* %RAX.i142, align 8
  %4027 = icmp ult i64 %4026, %4022
  %4028 = icmp ult i64 %4026, %4023
  %4029 = or i1 %4027, %4028
  %4030 = zext i1 %4029 to i8
  %4031 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4030, i8* %4031, align 1
  %4032 = trunc i64 %4026 to i32
  %4033 = and i32 %4032, 255
  %4034 = call i32 @llvm.ctpop.i32(i32 %4033)
  %4035 = trunc i32 %4034 to i8
  %4036 = and i8 %4035, 1
  %4037 = xor i8 %4036, 1
  %4038 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4037, i8* %4038, align 1
  %4039 = xor i64 %4023, %4022
  %4040 = xor i64 %4039, %4026
  %4041 = lshr i64 %4040, 4
  %4042 = trunc i64 %4041 to i8
  %4043 = and i8 %4042, 1
  %4044 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4043, i8* %4044, align 1
  %4045 = icmp eq i64 %4026, 0
  %4046 = zext i1 %4045 to i8
  %4047 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4046, i8* %4047, align 1
  %4048 = lshr i64 %4026, 63
  %4049 = trunc i64 %4048 to i8
  %4050 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4049, i8* %4050, align 1
  %4051 = lshr i64 %4022, 63
  %4052 = lshr i64 %4023, 63
  %4053 = xor i64 %4048, %4051
  %4054 = xor i64 %4048, %4052
  %4055 = add i64 %4053, %4054
  %4056 = icmp eq i64 %4055, 2
  %4057 = zext i1 %4056 to i8
  %4058 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4057, i8* %4058, align 1
  store %struct.Memory* %loadMem_43bb1a, %struct.Memory** %MEMORY
  %loadMem_43bb1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4059 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4060 = getelementptr inbounds %struct.GPR, %struct.GPR* %4059, i32 0, i32 33
  %4061 = getelementptr inbounds %struct.Reg, %struct.Reg* %4060, i32 0, i32 0
  %PC.i138 = bitcast %union.anon* %4061 to i64*
  %4062 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4063 = getelementptr inbounds %struct.GPR, %struct.GPR* %4062, i32 0, i32 1
  %4064 = getelementptr inbounds %struct.Reg, %struct.Reg* %4063, i32 0, i32 0
  %RAX.i139 = bitcast %union.anon* %4064 to i64*
  %4065 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4066 = getelementptr inbounds %struct.GPR, %struct.GPR* %4065, i32 0, i32 7
  %4067 = getelementptr inbounds %struct.Reg, %struct.Reg* %4066, i32 0, i32 0
  %RDX.i140 = bitcast %union.anon* %4067 to i64*
  %4068 = load i64, i64* %RAX.i139
  %4069 = add i64 %4068, 16
  %4070 = load i64, i64* %PC.i138
  %4071 = add i64 %4070, 3
  store i64 %4071, i64* %PC.i138
  %4072 = inttoptr i64 %4069 to i32*
  %4073 = load i32, i32* %4072
  %4074 = zext i32 %4073 to i64
  store i64 %4074, i64* %RDX.i140, align 8
  store %struct.Memory* %loadMem_43bb1d, %struct.Memory** %MEMORY
  %loadMem_43bb20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4075 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4076 = getelementptr inbounds %struct.GPR, %struct.GPR* %4075, i32 0, i32 33
  %4077 = getelementptr inbounds %struct.Reg, %struct.Reg* %4076, i32 0, i32 0
  %PC.i136 = bitcast %union.anon* %4077 to i64*
  %4078 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4079 = getelementptr inbounds %struct.GPR, %struct.GPR* %4078, i32 0, i32 7
  %4080 = getelementptr inbounds %struct.Reg, %struct.Reg* %4079, i32 0, i32 0
  %RDX.i137 = bitcast %union.anon* %4080 to i64*
  %4081 = load i64, i64* %RDX.i137
  %4082 = load i64, i64* %PC.i136
  %4083 = add i64 %4082, 3
  store i64 %4083, i64* %PC.i136
  %4084 = trunc i64 %4081 to i32
  %4085 = add i32 1, %4084
  %4086 = zext i32 %4085 to i64
  store i64 %4086, i64* %RDX.i137, align 8
  %4087 = icmp ult i32 %4085, %4084
  %4088 = icmp ult i32 %4085, 1
  %4089 = or i1 %4087, %4088
  %4090 = zext i1 %4089 to i8
  %4091 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4090, i8* %4091, align 1
  %4092 = and i32 %4085, 255
  %4093 = call i32 @llvm.ctpop.i32(i32 %4092)
  %4094 = trunc i32 %4093 to i8
  %4095 = and i8 %4094, 1
  %4096 = xor i8 %4095, 1
  %4097 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4096, i8* %4097, align 1
  %4098 = xor i64 1, %4081
  %4099 = trunc i64 %4098 to i32
  %4100 = xor i32 %4099, %4085
  %4101 = lshr i32 %4100, 4
  %4102 = trunc i32 %4101 to i8
  %4103 = and i8 %4102, 1
  %4104 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4103, i8* %4104, align 1
  %4105 = icmp eq i32 %4085, 0
  %4106 = zext i1 %4105 to i8
  %4107 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4106, i8* %4107, align 1
  %4108 = lshr i32 %4085, 31
  %4109 = trunc i32 %4108 to i8
  %4110 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4109, i8* %4110, align 1
  %4111 = lshr i32 %4084, 31
  %4112 = xor i32 %4108, %4111
  %4113 = add i32 %4112, %4108
  %4114 = icmp eq i32 %4113, 2
  %4115 = zext i1 %4114 to i8
  %4116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4115, i8* %4116, align 1
  store %struct.Memory* %loadMem_43bb20, %struct.Memory** %MEMORY
  %loadMem_43bb23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4118 = getelementptr inbounds %struct.GPR, %struct.GPR* %4117, i32 0, i32 33
  %4119 = getelementptr inbounds %struct.Reg, %struct.Reg* %4118, i32 0, i32 0
  %PC.i133 = bitcast %union.anon* %4119 to i64*
  %4120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4121 = getelementptr inbounds %struct.GPR, %struct.GPR* %4120, i32 0, i32 7
  %4122 = getelementptr inbounds %struct.Reg, %struct.Reg* %4121, i32 0, i32 0
  %EDX.i134 = bitcast %union.anon* %4122 to i32*
  %4123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4124 = getelementptr inbounds %struct.GPR, %struct.GPR* %4123, i32 0, i32 1
  %4125 = getelementptr inbounds %struct.Reg, %struct.Reg* %4124, i32 0, i32 0
  %RAX.i135 = bitcast %union.anon* %4125 to i64*
  %4126 = load i64, i64* %RAX.i135
  %4127 = add i64 %4126, 16
  %4128 = load i32, i32* %EDX.i134
  %4129 = zext i32 %4128 to i64
  %4130 = load i64, i64* %PC.i133
  %4131 = add i64 %4130, 3
  store i64 %4131, i64* %PC.i133
  %4132 = inttoptr i64 %4127 to i32*
  store i32 %4128, i32* %4132
  store %struct.Memory* %loadMem_43bb23, %struct.Memory** %MEMORY
  br label %block_.L_43bb26

block_.L_43bb26:                                  ; preds = %block_.L_43bafc, %block_.L_43bacf
  %loadMem_43bb26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4134 = getelementptr inbounds %struct.GPR, %struct.GPR* %4133, i32 0, i32 33
  %4135 = getelementptr inbounds %struct.Reg, %struct.Reg* %4134, i32 0, i32 0
  %PC.i132 = bitcast %union.anon* %4135 to i64*
  %4136 = load i64, i64* %PC.i132
  %4137 = add i64 %4136, 5
  %4138 = load i64, i64* %PC.i132
  %4139 = add i64 %4138, 5
  store i64 %4139, i64* %PC.i132
  %4140 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4137, i64* %4140, align 8
  store %struct.Memory* %loadMem_43bb26, %struct.Memory** %MEMORY
  br label %block_.L_43bb2b

block_.L_43bb2b:                                  ; preds = %block_.L_43bb26, %block_.L_43ba7d
  %loadMem_43bb2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4142 = getelementptr inbounds %struct.GPR, %struct.GPR* %4141, i32 0, i32 33
  %4143 = getelementptr inbounds %struct.Reg, %struct.Reg* %4142, i32 0, i32 0
  %PC.i131 = bitcast %union.anon* %4143 to i64*
  %4144 = load i64, i64* %PC.i131
  %4145 = add i64 %4144, 5
  %4146 = load i64, i64* %PC.i131
  %4147 = add i64 %4146, 5
  store i64 %4147, i64* %PC.i131
  %4148 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4145, i64* %4148, align 8
  store %struct.Memory* %loadMem_43bb2b, %struct.Memory** %MEMORY
  br label %block_.L_43bb30

block_.L_43bb30:                                  ; preds = %block_.L_43bb2b
  %loadMem_43bb30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4150 = getelementptr inbounds %struct.GPR, %struct.GPR* %4149, i32 0, i32 33
  %4151 = getelementptr inbounds %struct.Reg, %struct.Reg* %4150, i32 0, i32 0
  %PC.i128 = bitcast %union.anon* %4151 to i64*
  %4152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4153 = getelementptr inbounds %struct.GPR, %struct.GPR* %4152, i32 0, i32 1
  %4154 = getelementptr inbounds %struct.Reg, %struct.Reg* %4153, i32 0, i32 0
  %RAX.i129 = bitcast %union.anon* %4154 to i64*
  %4155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4156 = getelementptr inbounds %struct.GPR, %struct.GPR* %4155, i32 0, i32 15
  %4157 = getelementptr inbounds %struct.Reg, %struct.Reg* %4156, i32 0, i32 0
  %RBP.i130 = bitcast %union.anon* %4157 to i64*
  %4158 = load i64, i64* %RBP.i130
  %4159 = sub i64 %4158, 20
  %4160 = load i64, i64* %PC.i128
  %4161 = add i64 %4160, 3
  store i64 %4161, i64* %PC.i128
  %4162 = inttoptr i64 %4159 to i32*
  %4163 = load i32, i32* %4162
  %4164 = zext i32 %4163 to i64
  store i64 %4164, i64* %RAX.i129, align 8
  store %struct.Memory* %loadMem_43bb30, %struct.Memory** %MEMORY
  %loadMem_43bb33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4166 = getelementptr inbounds %struct.GPR, %struct.GPR* %4165, i32 0, i32 33
  %4167 = getelementptr inbounds %struct.Reg, %struct.Reg* %4166, i32 0, i32 0
  %PC.i126 = bitcast %union.anon* %4167 to i64*
  %4168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4169 = getelementptr inbounds %struct.GPR, %struct.GPR* %4168, i32 0, i32 1
  %4170 = getelementptr inbounds %struct.Reg, %struct.Reg* %4169, i32 0, i32 0
  %RAX.i127 = bitcast %union.anon* %4170 to i64*
  %4171 = load i64, i64* %RAX.i127
  %4172 = load i64, i64* %PC.i126
  %4173 = add i64 %4172, 3
  store i64 %4173, i64* %PC.i126
  %4174 = trunc i64 %4171 to i32
  %4175 = add i32 1, %4174
  %4176 = zext i32 %4175 to i64
  store i64 %4176, i64* %RAX.i127, align 8
  %4177 = icmp ult i32 %4175, %4174
  %4178 = icmp ult i32 %4175, 1
  %4179 = or i1 %4177, %4178
  %4180 = zext i1 %4179 to i8
  %4181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4180, i8* %4181, align 1
  %4182 = and i32 %4175, 255
  %4183 = call i32 @llvm.ctpop.i32(i32 %4182)
  %4184 = trunc i32 %4183 to i8
  %4185 = and i8 %4184, 1
  %4186 = xor i8 %4185, 1
  %4187 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4186, i8* %4187, align 1
  %4188 = xor i64 1, %4171
  %4189 = trunc i64 %4188 to i32
  %4190 = xor i32 %4189, %4175
  %4191 = lshr i32 %4190, 4
  %4192 = trunc i32 %4191 to i8
  %4193 = and i8 %4192, 1
  %4194 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4193, i8* %4194, align 1
  %4195 = icmp eq i32 %4175, 0
  %4196 = zext i1 %4195 to i8
  %4197 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4196, i8* %4197, align 1
  %4198 = lshr i32 %4175, 31
  %4199 = trunc i32 %4198 to i8
  %4200 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4199, i8* %4200, align 1
  %4201 = lshr i32 %4174, 31
  %4202 = xor i32 %4198, %4201
  %4203 = add i32 %4202, %4198
  %4204 = icmp eq i32 %4203, 2
  %4205 = zext i1 %4204 to i8
  %4206 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4205, i8* %4206, align 1
  store %struct.Memory* %loadMem_43bb33, %struct.Memory** %MEMORY
  %loadMem_43bb36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4208 = getelementptr inbounds %struct.GPR, %struct.GPR* %4207, i32 0, i32 33
  %4209 = getelementptr inbounds %struct.Reg, %struct.Reg* %4208, i32 0, i32 0
  %PC.i124 = bitcast %union.anon* %4209 to i64*
  %4210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4211 = getelementptr inbounds %struct.GPR, %struct.GPR* %4210, i32 0, i32 1
  %4212 = getelementptr inbounds %struct.Reg, %struct.Reg* %4211, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %4212 to i32*
  %4213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4214 = getelementptr inbounds %struct.GPR, %struct.GPR* %4213, i32 0, i32 15
  %4215 = getelementptr inbounds %struct.Reg, %struct.Reg* %4214, i32 0, i32 0
  %RBP.i125 = bitcast %union.anon* %4215 to i64*
  %4216 = load i64, i64* %RBP.i125
  %4217 = sub i64 %4216, 20
  %4218 = load i32, i32* %EAX.i
  %4219 = zext i32 %4218 to i64
  %4220 = load i64, i64* %PC.i124
  %4221 = add i64 %4220, 3
  store i64 %4221, i64* %PC.i124
  %4222 = inttoptr i64 %4217 to i32*
  store i32 %4218, i32* %4222
  store %struct.Memory* %loadMem_43bb36, %struct.Memory** %MEMORY
  %loadMem_43bb39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4224 = getelementptr inbounds %struct.GPR, %struct.GPR* %4223, i32 0, i32 33
  %4225 = getelementptr inbounds %struct.Reg, %struct.Reg* %4224, i32 0, i32 0
  %PC.i123 = bitcast %union.anon* %4225 to i64*
  %4226 = load i64, i64* %PC.i123
  %4227 = add i64 %4226, -334
  %4228 = load i64, i64* %PC.i123
  %4229 = add i64 %4228, 5
  store i64 %4229, i64* %PC.i123
  %4230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4227, i64* %4230, align 8
  store %struct.Memory* %loadMem_43bb39, %struct.Memory** %MEMORY
  br label %block_.L_43b9eb

block_.L_43bb3e:                                  ; preds = %block_.L_43b9eb
  %loadMem_43bb3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4232 = getelementptr inbounds %struct.GPR, %struct.GPR* %4231, i32 0, i32 33
  %4233 = getelementptr inbounds %struct.Reg, %struct.Reg* %4232, i32 0, i32 0
  %PC.i122 = bitcast %union.anon* %4233 to i64*
  %4234 = load i64, i64* %PC.i122
  %4235 = add i64 %4234, 185
  %4236 = load i64, i64* %PC.i122
  %4237 = add i64 %4236, 5
  store i64 %4237, i64* %PC.i122
  %4238 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4235, i64* %4238, align 8
  store %struct.Memory* %loadMem_43bb3e, %struct.Memory** %MEMORY
  br label %block_.L_43bbf7

block_.L_43bb43:                                  ; preds = %block_43b9d6
  %loadMem_43bb43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4240 = getelementptr inbounds %struct.GPR, %struct.GPR* %4239, i32 0, i32 33
  %4241 = getelementptr inbounds %struct.Reg, %struct.Reg* %4240, i32 0, i32 0
  %PC.i119 = bitcast %union.anon* %4241 to i64*
  %4242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4243 = getelementptr inbounds %struct.GPR, %struct.GPR* %4242, i32 0, i32 1
  %4244 = getelementptr inbounds %struct.Reg, %struct.Reg* %4243, i32 0, i32 0
  %RAX.i120 = bitcast %union.anon* %4244 to i64*
  %4245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4246 = getelementptr inbounds %struct.GPR, %struct.GPR* %4245, i32 0, i32 15
  %4247 = getelementptr inbounds %struct.Reg, %struct.Reg* %4246, i32 0, i32 0
  %RBP.i121 = bitcast %union.anon* %4247 to i64*
  %4248 = load i64, i64* %RBP.i121
  %4249 = sub i64 %4248, 8
  %4250 = load i64, i64* %PC.i119
  %4251 = add i64 %4250, 4
  store i64 %4251, i64* %PC.i119
  %4252 = inttoptr i64 %4249 to i64*
  %4253 = load i64, i64* %4252
  store i64 %4253, i64* %RAX.i120, align 8
  store %struct.Memory* %loadMem_43bb43, %struct.Memory** %MEMORY
  %loadMem_43bb47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4255 = getelementptr inbounds %struct.GPR, %struct.GPR* %4254, i32 0, i32 33
  %4256 = getelementptr inbounds %struct.Reg, %struct.Reg* %4255, i32 0, i32 0
  %PC.i117 = bitcast %union.anon* %4256 to i64*
  %4257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4258 = getelementptr inbounds %struct.GPR, %struct.GPR* %4257, i32 0, i32 1
  %4259 = getelementptr inbounds %struct.Reg, %struct.Reg* %4258, i32 0, i32 0
  %RAX.i118 = bitcast %union.anon* %4259 to i64*
  %4260 = load i64, i64* %RAX.i118
  %4261 = add i64 %4260, 72
  %4262 = load i64, i64* %PC.i117
  %4263 = add i64 %4262, 4
  store i64 %4263, i64* %PC.i117
  %4264 = inttoptr i64 %4261 to i32*
  %4265 = load i32, i32* %4264
  %4266 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4266, align 1
  %4267 = and i32 %4265, 255
  %4268 = call i32 @llvm.ctpop.i32(i32 %4267)
  %4269 = trunc i32 %4268 to i8
  %4270 = and i8 %4269, 1
  %4271 = xor i8 %4270, 1
  %4272 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4271, i8* %4272, align 1
  %4273 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4273, align 1
  %4274 = icmp eq i32 %4265, 0
  %4275 = zext i1 %4274 to i8
  %4276 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4275, i8* %4276, align 1
  %4277 = lshr i32 %4265, 31
  %4278 = trunc i32 %4277 to i8
  %4279 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4278, i8* %4279, align 1
  %4280 = lshr i32 %4265, 31
  %4281 = xor i32 %4277, %4280
  %4282 = add i32 %4281, %4280
  %4283 = icmp eq i32 %4282, 2
  %4284 = zext i1 %4283 to i8
  %4285 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4284, i8* %4285, align 1
  store %struct.Memory* %loadMem_43bb47, %struct.Memory** %MEMORY
  %loadMem_43bb4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4287 = getelementptr inbounds %struct.GPR, %struct.GPR* %4286, i32 0, i32 33
  %4288 = getelementptr inbounds %struct.Reg, %struct.Reg* %4287, i32 0, i32 0
  %PC.i116 = bitcast %union.anon* %4288 to i64*
  %4289 = load i64, i64* %PC.i116
  %4290 = add i64 %4289, 167
  %4291 = load i64, i64* %PC.i116
  %4292 = add i64 %4291, 6
  %4293 = load i64, i64* %PC.i116
  %4294 = add i64 %4293, 6
  store i64 %4294, i64* %PC.i116
  %4295 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4296 = load i8, i8* %4295, align 1
  %4297 = icmp ne i8 %4296, 0
  %4298 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4299 = load i8, i8* %4298, align 1
  %4300 = icmp ne i8 %4299, 0
  %4301 = xor i1 %4297, %4300
  %4302 = zext i1 %4301 to i8
  store i8 %4302, i8* %BRANCH_TAKEN, align 1
  %4303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4304 = select i1 %4301, i64 %4290, i64 %4292
  store i64 %4304, i64* %4303, align 8
  store %struct.Memory* %loadMem_43bb4b, %struct.Memory** %MEMORY
  %loadBr_43bb4b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43bb4b = icmp eq i8 %loadBr_43bb4b, 1
  br i1 %cmpBr_43bb4b, label %block_.L_43bbf2, label %block_43bb51

block_43bb51:                                     ; preds = %block_.L_43bb43
  %loadMem_43bb51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4306 = getelementptr inbounds %struct.GPR, %struct.GPR* %4305, i32 0, i32 33
  %4307 = getelementptr inbounds %struct.Reg, %struct.Reg* %4306, i32 0, i32 0
  %PC.i113 = bitcast %union.anon* %4307 to i64*
  %4308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4309 = getelementptr inbounds %struct.GPR, %struct.GPR* %4308, i32 0, i32 1
  %4310 = getelementptr inbounds %struct.Reg, %struct.Reg* %4309, i32 0, i32 0
  %RAX.i114 = bitcast %union.anon* %4310 to i64*
  %4311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4312 = getelementptr inbounds %struct.GPR, %struct.GPR* %4311, i32 0, i32 15
  %4313 = getelementptr inbounds %struct.Reg, %struct.Reg* %4312, i32 0, i32 0
  %RBP.i115 = bitcast %union.anon* %4313 to i64*
  %4314 = load i64, i64* %RBP.i115
  %4315 = sub i64 %4314, 8
  %4316 = load i64, i64* %PC.i113
  %4317 = add i64 %4316, 4
  store i64 %4317, i64* %PC.i113
  %4318 = inttoptr i64 %4315 to i64*
  %4319 = load i64, i64* %4318
  store i64 %4319, i64* %RAX.i114, align 8
  store %struct.Memory* %loadMem_43bb51, %struct.Memory** %MEMORY
  %loadMem_43bb55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4321 = getelementptr inbounds %struct.GPR, %struct.GPR* %4320, i32 0, i32 33
  %4322 = getelementptr inbounds %struct.Reg, %struct.Reg* %4321, i32 0, i32 0
  %PC.i111 = bitcast %union.anon* %4322 to i64*
  %4323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4324 = getelementptr inbounds %struct.GPR, %struct.GPR* %4323, i32 0, i32 1
  %4325 = getelementptr inbounds %struct.Reg, %struct.Reg* %4324, i32 0, i32 0
  %RAX.i112 = bitcast %union.anon* %4325 to i64*
  %4326 = load i64, i64* %RAX.i112
  %4327 = add i64 %4326, 72
  %4328 = load i64, i64* %PC.i111
  %4329 = add i64 %4328, 4
  store i64 %4329, i64* %PC.i111
  %4330 = inttoptr i64 %4327 to i32*
  %4331 = load i32, i32* %4330
  %4332 = sub i32 %4331, 3
  %4333 = icmp ult i32 %4331, 3
  %4334 = zext i1 %4333 to i8
  %4335 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4334, i8* %4335, align 1
  %4336 = and i32 %4332, 255
  %4337 = call i32 @llvm.ctpop.i32(i32 %4336)
  %4338 = trunc i32 %4337 to i8
  %4339 = and i8 %4338, 1
  %4340 = xor i8 %4339, 1
  %4341 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4340, i8* %4341, align 1
  %4342 = xor i32 %4331, 3
  %4343 = xor i32 %4342, %4332
  %4344 = lshr i32 %4343, 4
  %4345 = trunc i32 %4344 to i8
  %4346 = and i8 %4345, 1
  %4347 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4346, i8* %4347, align 1
  %4348 = icmp eq i32 %4332, 0
  %4349 = zext i1 %4348 to i8
  %4350 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4349, i8* %4350, align 1
  %4351 = lshr i32 %4332, 31
  %4352 = trunc i32 %4351 to i8
  %4353 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4352, i8* %4353, align 1
  %4354 = lshr i32 %4331, 31
  %4355 = xor i32 %4351, %4354
  %4356 = add i32 %4355, %4354
  %4357 = icmp eq i32 %4356, 2
  %4358 = zext i1 %4357 to i8
  %4359 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4358, i8* %4359, align 1
  store %struct.Memory* %loadMem_43bb55, %struct.Memory** %MEMORY
  %loadMem_43bb59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4361 = getelementptr inbounds %struct.GPR, %struct.GPR* %4360, i32 0, i32 33
  %4362 = getelementptr inbounds %struct.Reg, %struct.Reg* %4361, i32 0, i32 0
  %PC.i110 = bitcast %union.anon* %4362 to i64*
  %4363 = load i64, i64* %PC.i110
  %4364 = add i64 %4363, 153
  %4365 = load i64, i64* %PC.i110
  %4366 = add i64 %4365, 6
  %4367 = load i64, i64* %PC.i110
  %4368 = add i64 %4367, 6
  store i64 %4368, i64* %PC.i110
  %4369 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4370 = load i8, i8* %4369, align 1
  %4371 = icmp eq i8 %4370, 0
  %4372 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4373 = load i8, i8* %4372, align 1
  %4374 = icmp ne i8 %4373, 0
  %4375 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4376 = load i8, i8* %4375, align 1
  %4377 = icmp ne i8 %4376, 0
  %4378 = xor i1 %4374, %4377
  %4379 = xor i1 %4378, true
  %4380 = and i1 %4371, %4379
  %4381 = zext i1 %4380 to i8
  store i8 %4381, i8* %BRANCH_TAKEN, align 1
  %4382 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4383 = select i1 %4380, i64 %4364, i64 %4366
  store i64 %4383, i64* %4382, align 8
  store %struct.Memory* %loadMem_43bb59, %struct.Memory** %MEMORY
  %loadBr_43bb59 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43bb59 = icmp eq i8 %loadBr_43bb59, 1
  br i1 %cmpBr_43bb59, label %block_.L_43bbf2, label %block_43bb5f

block_43bb5f:                                     ; preds = %block_43bb51
  %loadMem_43bb5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4385 = getelementptr inbounds %struct.GPR, %struct.GPR* %4384, i32 0, i32 33
  %4386 = getelementptr inbounds %struct.Reg, %struct.Reg* %4385, i32 0, i32 0
  %PC.i107 = bitcast %union.anon* %4386 to i64*
  %4387 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4388 = getelementptr inbounds %struct.GPR, %struct.GPR* %4387, i32 0, i32 1
  %4389 = getelementptr inbounds %struct.Reg, %struct.Reg* %4388, i32 0, i32 0
  %RAX.i108 = bitcast %union.anon* %4389 to i64*
  %4390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4391 = getelementptr inbounds %struct.GPR, %struct.GPR* %4390, i32 0, i32 15
  %4392 = getelementptr inbounds %struct.Reg, %struct.Reg* %4391, i32 0, i32 0
  %RBP.i109 = bitcast %union.anon* %4392 to i64*
  %4393 = load i64, i64* %RBP.i109
  %4394 = sub i64 %4393, 8
  %4395 = load i64, i64* %PC.i107
  %4396 = add i64 %4395, 4
  store i64 %4396, i64* %PC.i107
  %4397 = inttoptr i64 %4394 to i64*
  %4398 = load i64, i64* %4397
  store i64 %4398, i64* %RAX.i108, align 8
  store %struct.Memory* %loadMem_43bb5f, %struct.Memory** %MEMORY
  %loadMem_43bb63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4400 = getelementptr inbounds %struct.GPR, %struct.GPR* %4399, i32 0, i32 33
  %4401 = getelementptr inbounds %struct.Reg, %struct.Reg* %4400, i32 0, i32 0
  %PC.i104 = bitcast %union.anon* %4401 to i64*
  %4402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4403 = getelementptr inbounds %struct.GPR, %struct.GPR* %4402, i32 0, i32 1
  %4404 = getelementptr inbounds %struct.Reg, %struct.Reg* %4403, i32 0, i32 0
  %RAX.i105 = bitcast %union.anon* %4404 to i64*
  %4405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4406 = getelementptr inbounds %struct.GPR, %struct.GPR* %4405, i32 0, i32 5
  %4407 = getelementptr inbounds %struct.Reg, %struct.Reg* %4406, i32 0, i32 0
  %RCX.i106 = bitcast %union.anon* %4407 to i64*
  %4408 = load i64, i64* %RAX.i105
  %4409 = add i64 %4408, 460
  %4410 = load i64, i64* %PC.i104
  %4411 = add i64 %4410, 6
  store i64 %4411, i64* %PC.i104
  %4412 = inttoptr i64 %4409 to i32*
  %4413 = load i32, i32* %4412
  %4414 = zext i32 %4413 to i64
  store i64 %4414, i64* %RCX.i106, align 8
  store %struct.Memory* %loadMem_43bb63, %struct.Memory** %MEMORY
  %loadMem_43bb69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4416 = getelementptr inbounds %struct.GPR, %struct.GPR* %4415, i32 0, i32 33
  %4417 = getelementptr inbounds %struct.Reg, %struct.Reg* %4416, i32 0, i32 0
  %PC.i102 = bitcast %union.anon* %4417 to i64*
  %4418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4419 = getelementptr inbounds %struct.GPR, %struct.GPR* %4418, i32 0, i32 5
  %4420 = getelementptr inbounds %struct.Reg, %struct.Reg* %4419, i32 0, i32 0
  %RCX.i103 = bitcast %union.anon* %4420 to i64*
  %4421 = load i64, i64* %RCX.i103
  %4422 = load i64, i64* %PC.i102
  %4423 = add i64 %4422, 3
  store i64 %4423, i64* %PC.i102
  %4424 = and i64 15, %4421
  %4425 = trunc i64 %4424 to i32
  store i64 %4424, i64* %RCX.i103, align 8
  %4426 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4426, align 1
  %4427 = and i32 %4425, 255
  %4428 = call i32 @llvm.ctpop.i32(i32 %4427)
  %4429 = trunc i32 %4428 to i8
  %4430 = and i8 %4429, 1
  %4431 = xor i8 %4430, 1
  %4432 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4431, i8* %4432, align 1
  %4433 = icmp eq i32 %4425, 0
  %4434 = zext i1 %4433 to i8
  %4435 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4434, i8* %4435, align 1
  %4436 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %4436, align 1
  %4437 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4437, align 1
  %4438 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4438, align 1
  store %struct.Memory* %loadMem_43bb69, %struct.Memory** %MEMORY
  %loadMem_43bb6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4440 = getelementptr inbounds %struct.GPR, %struct.GPR* %4439, i32 0, i32 33
  %4441 = getelementptr inbounds %struct.Reg, %struct.Reg* %4440, i32 0, i32 0
  %PC.i100 = bitcast %union.anon* %4441 to i64*
  %4442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4443 = getelementptr inbounds %struct.GPR, %struct.GPR* %4442, i32 0, i32 5
  %4444 = getelementptr inbounds %struct.Reg, %struct.Reg* %4443, i32 0, i32 0
  %ECX.i101 = bitcast %union.anon* %4444 to i32*
  %4445 = load i32, i32* %ECX.i101
  %4446 = zext i32 %4445 to i64
  %4447 = load i64, i64* %PC.i100
  %4448 = add i64 %4447, 3
  store i64 %4448, i64* %PC.i100
  %4449 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4449, align 1
  %4450 = and i32 %4445, 255
  %4451 = call i32 @llvm.ctpop.i32(i32 %4450)
  %4452 = trunc i32 %4451 to i8
  %4453 = and i8 %4452, 1
  %4454 = xor i8 %4453, 1
  %4455 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4454, i8* %4455, align 1
  %4456 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4456, align 1
  %4457 = icmp eq i32 %4445, 0
  %4458 = zext i1 %4457 to i8
  %4459 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4458, i8* %4459, align 1
  %4460 = lshr i32 %4445, 31
  %4461 = trunc i32 %4460 to i8
  %4462 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4461, i8* %4462, align 1
  %4463 = lshr i32 %4445, 31
  %4464 = xor i32 %4460, %4463
  %4465 = add i32 %4464, %4463
  %4466 = icmp eq i32 %4465, 2
  %4467 = zext i1 %4466 to i8
  %4468 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4467, i8* %4468, align 1
  store %struct.Memory* %loadMem_43bb6c, %struct.Memory** %MEMORY
  %loadMem_43bb6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4470 = getelementptr inbounds %struct.GPR, %struct.GPR* %4469, i32 0, i32 33
  %4471 = getelementptr inbounds %struct.Reg, %struct.Reg* %4470, i32 0, i32 0
  %PC.i99 = bitcast %union.anon* %4471 to i64*
  %4472 = load i64, i64* %PC.i99
  %4473 = add i64 %4472, 131
  %4474 = load i64, i64* %PC.i99
  %4475 = add i64 %4474, 6
  %4476 = load i64, i64* %PC.i99
  %4477 = add i64 %4476, 6
  store i64 %4477, i64* %PC.i99
  %4478 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4479 = load i8, i8* %4478, align 1
  store i8 %4479, i8* %BRANCH_TAKEN, align 1
  %4480 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4481 = icmp ne i8 %4479, 0
  %4482 = select i1 %4481, i64 %4473, i64 %4475
  store i64 %4482, i64* %4480, align 8
  store %struct.Memory* %loadMem_43bb6f, %struct.Memory** %MEMORY
  %loadBr_43bb6f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43bb6f = icmp eq i8 %loadBr_43bb6f, 1
  br i1 %cmpBr_43bb6f, label %block_.L_43bbf2, label %block_43bb75

block_43bb75:                                     ; preds = %block_43bb5f
  %loadMem_43bb75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4484 = getelementptr inbounds %struct.GPR, %struct.GPR* %4483, i32 0, i32 33
  %4485 = getelementptr inbounds %struct.Reg, %struct.Reg* %4484, i32 0, i32 0
  %PC.i96 = bitcast %union.anon* %4485 to i64*
  %4486 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4487 = getelementptr inbounds %struct.GPR, %struct.GPR* %4486, i32 0, i32 1
  %4488 = getelementptr inbounds %struct.Reg, %struct.Reg* %4487, i32 0, i32 0
  %RAX.i97 = bitcast %union.anon* %4488 to i64*
  %4489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4490 = getelementptr inbounds %struct.GPR, %struct.GPR* %4489, i32 0, i32 15
  %4491 = getelementptr inbounds %struct.Reg, %struct.Reg* %4490, i32 0, i32 0
  %RBP.i98 = bitcast %union.anon* %4491 to i64*
  %4492 = load i64, i64* %RBP.i98
  %4493 = sub i64 %4492, 8
  %4494 = load i64, i64* %PC.i96
  %4495 = add i64 %4494, 4
  store i64 %4495, i64* %PC.i96
  %4496 = inttoptr i64 %4493 to i64*
  %4497 = load i64, i64* %4496
  store i64 %4497, i64* %RAX.i97, align 8
  store %struct.Memory* %loadMem_43bb75, %struct.Memory** %MEMORY
  %loadMem_43bb79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4499 = getelementptr inbounds %struct.GPR, %struct.GPR* %4498, i32 0, i32 33
  %4500 = getelementptr inbounds %struct.Reg, %struct.Reg* %4499, i32 0, i32 0
  %PC.i94 = bitcast %union.anon* %4500 to i64*
  %4501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4502 = getelementptr inbounds %struct.GPR, %struct.GPR* %4501, i32 0, i32 1
  %4503 = getelementptr inbounds %struct.Reg, %struct.Reg* %4502, i32 0, i32 0
  %RAX.i95 = bitcast %union.anon* %4503 to i64*
  %4504 = load i64, i64* %RAX.i95
  %4505 = add i64 %4504, 572
  %4506 = load i64, i64* %PC.i94
  %4507 = add i64 %4506, 7
  store i64 %4507, i64* %PC.i94
  %4508 = inttoptr i64 %4505 to i32*
  %4509 = load i32, i32* %4508
  %4510 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4510, align 1
  %4511 = and i32 %4509, 255
  %4512 = call i32 @llvm.ctpop.i32(i32 %4511)
  %4513 = trunc i32 %4512 to i8
  %4514 = and i8 %4513, 1
  %4515 = xor i8 %4514, 1
  %4516 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4515, i8* %4516, align 1
  %4517 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4517, align 1
  %4518 = icmp eq i32 %4509, 0
  %4519 = zext i1 %4518 to i8
  %4520 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4519, i8* %4520, align 1
  %4521 = lshr i32 %4509, 31
  %4522 = trunc i32 %4521 to i8
  %4523 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4522, i8* %4523, align 1
  %4524 = lshr i32 %4509, 31
  %4525 = xor i32 %4521, %4524
  %4526 = add i32 %4525, %4524
  %4527 = icmp eq i32 %4526, 2
  %4528 = zext i1 %4527 to i8
  %4529 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4528, i8* %4529, align 1
  store %struct.Memory* %loadMem_43bb79, %struct.Memory** %MEMORY
  %loadMem_43bb80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4531 = getelementptr inbounds %struct.GPR, %struct.GPR* %4530, i32 0, i32 33
  %4532 = getelementptr inbounds %struct.Reg, %struct.Reg* %4531, i32 0, i32 0
  %PC.i93 = bitcast %union.anon* %4532 to i64*
  %4533 = load i64, i64* %PC.i93
  %4534 = add i64 %4533, 59
  %4535 = load i64, i64* %PC.i93
  %4536 = add i64 %4535, 6
  %4537 = load i64, i64* %PC.i93
  %4538 = add i64 %4537, 6
  store i64 %4538, i64* %PC.i93
  %4539 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4540 = load i8, i8* %4539, align 1
  store i8 %4540, i8* %BRANCH_TAKEN, align 1
  %4541 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4542 = icmp ne i8 %4540, 0
  %4543 = select i1 %4542, i64 %4534, i64 %4536
  store i64 %4543, i64* %4541, align 8
  store %struct.Memory* %loadMem_43bb80, %struct.Memory** %MEMORY
  %loadBr_43bb80 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43bb80 = icmp eq i8 %loadBr_43bb80, 1
  br i1 %cmpBr_43bb80, label %block_.L_43bbbb, label %block_43bb86

block_43bb86:                                     ; preds = %block_43bb75
  %loadMem_43bb86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4545 = getelementptr inbounds %struct.GPR, %struct.GPR* %4544, i32 0, i32 33
  %4546 = getelementptr inbounds %struct.Reg, %struct.Reg* %4545, i32 0, i32 0
  %PC.i91 = bitcast %union.anon* %4546 to i64*
  %4547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4548 = getelementptr inbounds %struct.GPR, %struct.GPR* %4547, i32 0, i32 1
  %4549 = getelementptr inbounds %struct.Reg, %struct.Reg* %4548, i32 0, i32 0
  %RAX.i92 = bitcast %union.anon* %4549 to i64*
  %4550 = load i64, i64* %PC.i91
  %4551 = add i64 %4550, 8
  store i64 %4551, i64* %PC.i91
  %4552 = load i64, i64* bitcast (%G_0x6cb908_type* @G_0x6cb908 to i64*)
  store i64 %4552, i64* %RAX.i92, align 8
  store %struct.Memory* %loadMem_43bb86, %struct.Memory** %MEMORY
  %loadMem_43bb8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4553 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4554 = getelementptr inbounds %struct.GPR, %struct.GPR* %4553, i32 0, i32 33
  %4555 = getelementptr inbounds %struct.Reg, %struct.Reg* %4554, i32 0, i32 0
  %PC.i89 = bitcast %union.anon* %4555 to i64*
  %4556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4557 = getelementptr inbounds %struct.GPR, %struct.GPR* %4556, i32 0, i32 1
  %4558 = getelementptr inbounds %struct.Reg, %struct.Reg* %4557, i32 0, i32 0
  %RAX.i90 = bitcast %union.anon* %4558 to i64*
  %4559 = load i64, i64* %RAX.i90
  %4560 = load i64, i64* %PC.i89
  %4561 = add i64 %4560, 4
  store i64 %4561, i64* %PC.i89
  %4562 = add i64 72, %4559
  store i64 %4562, i64* %RAX.i90, align 8
  %4563 = icmp ult i64 %4562, %4559
  %4564 = icmp ult i64 %4562, 72
  %4565 = or i1 %4563, %4564
  %4566 = zext i1 %4565 to i8
  %4567 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4566, i8* %4567, align 1
  %4568 = trunc i64 %4562 to i32
  %4569 = and i32 %4568, 255
  %4570 = call i32 @llvm.ctpop.i32(i32 %4569)
  %4571 = trunc i32 %4570 to i8
  %4572 = and i8 %4571, 1
  %4573 = xor i8 %4572, 1
  %4574 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4573, i8* %4574, align 1
  %4575 = xor i64 72, %4559
  %4576 = xor i64 %4575, %4562
  %4577 = lshr i64 %4576, 4
  %4578 = trunc i64 %4577 to i8
  %4579 = and i8 %4578, 1
  %4580 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4579, i8* %4580, align 1
  %4581 = icmp eq i64 %4562, 0
  %4582 = zext i1 %4581 to i8
  %4583 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4582, i8* %4583, align 1
  %4584 = lshr i64 %4562, 63
  %4585 = trunc i64 %4584 to i8
  %4586 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4585, i8* %4586, align 1
  %4587 = lshr i64 %4559, 63
  %4588 = xor i64 %4584, %4587
  %4589 = add i64 %4588, %4584
  %4590 = icmp eq i64 %4589, 2
  %4591 = zext i1 %4590 to i8
  %4592 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4591, i8* %4592, align 1
  store %struct.Memory* %loadMem_43bb8e, %struct.Memory** %MEMORY
  %loadMem_43bb92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4594 = getelementptr inbounds %struct.GPR, %struct.GPR* %4593, i32 0, i32 33
  %4595 = getelementptr inbounds %struct.Reg, %struct.Reg* %4594, i32 0, i32 0
  %PC.i87 = bitcast %union.anon* %4595 to i64*
  %4596 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4597 = getelementptr inbounds %struct.GPR, %struct.GPR* %4596, i32 0, i32 5
  %4598 = getelementptr inbounds %struct.Reg, %struct.Reg* %4597, i32 0, i32 0
  %RCX.i88 = bitcast %union.anon* %4598 to i64*
  %4599 = load i64, i64* %PC.i87
  %4600 = add i64 %4599, 8
  store i64 %4600, i64* %PC.i87
  %4601 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %4601, i64* %RCX.i88, align 8
  store %struct.Memory* %loadMem_43bb92, %struct.Memory** %MEMORY
  %loadMem_43bb9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4602 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4603 = getelementptr inbounds %struct.GPR, %struct.GPR* %4602, i32 0, i32 33
  %4604 = getelementptr inbounds %struct.Reg, %struct.Reg* %4603, i32 0, i32 0
  %PC.i85 = bitcast %union.anon* %4604 to i64*
  %4605 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4606 = getelementptr inbounds %struct.GPR, %struct.GPR* %4605, i32 0, i32 5
  %4607 = getelementptr inbounds %struct.Reg, %struct.Reg* %4606, i32 0, i32 0
  %RCX.i86 = bitcast %union.anon* %4607 to i64*
  %4608 = load i64, i64* %RCX.i86
  %4609 = add i64 %4608, 24
  %4610 = load i64, i64* %PC.i85
  %4611 = add i64 %4610, 4
  store i64 %4611, i64* %PC.i85
  %4612 = inttoptr i64 %4609 to i32*
  %4613 = load i32, i32* %4612
  %4614 = sext i32 %4613 to i64
  store i64 %4614, i64* %RCX.i86, align 8
  store %struct.Memory* %loadMem_43bb9a, %struct.Memory** %MEMORY
  %loadMem_43bb9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4616 = getelementptr inbounds %struct.GPR, %struct.GPR* %4615, i32 0, i32 33
  %4617 = getelementptr inbounds %struct.Reg, %struct.Reg* %4616, i32 0, i32 0
  %PC.i83 = bitcast %union.anon* %4617 to i64*
  %4618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4619 = getelementptr inbounds %struct.GPR, %struct.GPR* %4618, i32 0, i32 5
  %4620 = getelementptr inbounds %struct.Reg, %struct.Reg* %4619, i32 0, i32 0
  %RCX.i84 = bitcast %union.anon* %4620 to i64*
  %4621 = load i64, i64* %RCX.i84
  %4622 = load i64, i64* %PC.i83
  %4623 = add i64 %4622, 4
  store i64 %4623, i64* %PC.i83
  %4624 = sext i64 %4621 to i128
  %4625 = and i128 %4624, -18446744073709551616
  %4626 = zext i64 %4621 to i128
  %4627 = or i128 %4625, %4626
  %4628 = mul i128 60, %4627
  %4629 = trunc i128 %4628 to i64
  store i64 %4629, i64* %RCX.i84, align 8
  %4630 = sext i64 %4629 to i128
  %4631 = icmp ne i128 %4630, %4628
  %4632 = zext i1 %4631 to i8
  %4633 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4632, i8* %4633, align 1
  %4634 = trunc i128 %4628 to i32
  %4635 = and i32 %4634, 255
  %4636 = call i32 @llvm.ctpop.i32(i32 %4635)
  %4637 = trunc i32 %4636 to i8
  %4638 = and i8 %4637, 1
  %4639 = xor i8 %4638, 1
  %4640 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4639, i8* %4640, align 1
  %4641 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4641, align 1
  %4642 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4642, align 1
  %4643 = lshr i64 %4629, 63
  %4644 = trunc i64 %4643 to i8
  %4645 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4644, i8* %4645, align 1
  %4646 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4632, i8* %4646, align 1
  store %struct.Memory* %loadMem_43bb9e, %struct.Memory** %MEMORY
  %loadMem_43bba2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4648 = getelementptr inbounds %struct.GPR, %struct.GPR* %4647, i32 0, i32 33
  %4649 = getelementptr inbounds %struct.Reg, %struct.Reg* %4648, i32 0, i32 0
  %PC.i80 = bitcast %union.anon* %4649 to i64*
  %4650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4651 = getelementptr inbounds %struct.GPR, %struct.GPR* %4650, i32 0, i32 1
  %4652 = getelementptr inbounds %struct.Reg, %struct.Reg* %4651, i32 0, i32 0
  %RAX.i81 = bitcast %union.anon* %4652 to i64*
  %4653 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4654 = getelementptr inbounds %struct.GPR, %struct.GPR* %4653, i32 0, i32 5
  %4655 = getelementptr inbounds %struct.Reg, %struct.Reg* %4654, i32 0, i32 0
  %RCX.i82 = bitcast %union.anon* %4655 to i64*
  %4656 = load i64, i64* %RAX.i81
  %4657 = load i64, i64* %RCX.i82
  %4658 = load i64, i64* %PC.i80
  %4659 = add i64 %4658, 3
  store i64 %4659, i64* %PC.i80
  %4660 = add i64 %4657, %4656
  store i64 %4660, i64* %RAX.i81, align 8
  %4661 = icmp ult i64 %4660, %4656
  %4662 = icmp ult i64 %4660, %4657
  %4663 = or i1 %4661, %4662
  %4664 = zext i1 %4663 to i8
  %4665 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4664, i8* %4665, align 1
  %4666 = trunc i64 %4660 to i32
  %4667 = and i32 %4666, 255
  %4668 = call i32 @llvm.ctpop.i32(i32 %4667)
  %4669 = trunc i32 %4668 to i8
  %4670 = and i8 %4669, 1
  %4671 = xor i8 %4670, 1
  %4672 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4671, i8* %4672, align 1
  %4673 = xor i64 %4657, %4656
  %4674 = xor i64 %4673, %4660
  %4675 = lshr i64 %4674, 4
  %4676 = trunc i64 %4675 to i8
  %4677 = and i8 %4676, 1
  %4678 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4677, i8* %4678, align 1
  %4679 = icmp eq i64 %4660, 0
  %4680 = zext i1 %4679 to i8
  %4681 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4680, i8* %4681, align 1
  %4682 = lshr i64 %4660, 63
  %4683 = trunc i64 %4682 to i8
  %4684 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4683, i8* %4684, align 1
  %4685 = lshr i64 %4656, 63
  %4686 = lshr i64 %4657, 63
  %4687 = xor i64 %4682, %4685
  %4688 = xor i64 %4682, %4686
  %4689 = add i64 %4687, %4688
  %4690 = icmp eq i64 %4689, 2
  %4691 = zext i1 %4690 to i8
  %4692 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4691, i8* %4692, align 1
  store %struct.Memory* %loadMem_43bba2, %struct.Memory** %MEMORY
  %loadMem_43bba5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4694 = getelementptr inbounds %struct.GPR, %struct.GPR* %4693, i32 0, i32 33
  %4695 = getelementptr inbounds %struct.Reg, %struct.Reg* %4694, i32 0, i32 0
  %PC.i77 = bitcast %union.anon* %4695 to i64*
  %4696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4697 = getelementptr inbounds %struct.GPR, %struct.GPR* %4696, i32 0, i32 5
  %4698 = getelementptr inbounds %struct.Reg, %struct.Reg* %4697, i32 0, i32 0
  %RCX.i78 = bitcast %union.anon* %4698 to i64*
  %4699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4700 = getelementptr inbounds %struct.GPR, %struct.GPR* %4699, i32 0, i32 15
  %4701 = getelementptr inbounds %struct.Reg, %struct.Reg* %4700, i32 0, i32 0
  %RBP.i79 = bitcast %union.anon* %4701 to i64*
  %4702 = load i64, i64* %RBP.i79
  %4703 = sub i64 %4702, 8
  %4704 = load i64, i64* %PC.i77
  %4705 = add i64 %4704, 4
  store i64 %4705, i64* %PC.i77
  %4706 = inttoptr i64 %4703 to i64*
  %4707 = load i64, i64* %4706
  store i64 %4707, i64* %RCX.i78, align 8
  store %struct.Memory* %loadMem_43bba5, %struct.Memory** %MEMORY
  %loadMem_43bba9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4708 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4709 = getelementptr inbounds %struct.GPR, %struct.GPR* %4708, i32 0, i32 33
  %4710 = getelementptr inbounds %struct.Reg, %struct.Reg* %4709, i32 0, i32 0
  %PC.i75 = bitcast %union.anon* %4710 to i64*
  %4711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4712 = getelementptr inbounds %struct.GPR, %struct.GPR* %4711, i32 0, i32 5
  %4713 = getelementptr inbounds %struct.Reg, %struct.Reg* %4712, i32 0, i32 0
  %RCX.i76 = bitcast %union.anon* %4713 to i64*
  %4714 = load i64, i64* %RCX.i76
  %4715 = add i64 %4714, 72
  %4716 = load i64, i64* %PC.i75
  %4717 = add i64 %4716, 4
  store i64 %4717, i64* %PC.i75
  %4718 = inttoptr i64 %4715 to i32*
  %4719 = load i32, i32* %4718
  %4720 = sext i32 %4719 to i64
  store i64 %4720, i64* %RCX.i76, align 8
  store %struct.Memory* %loadMem_43bba9, %struct.Memory** %MEMORY
  %loadMem_43bbad = load %struct.Memory*, %struct.Memory** %MEMORY
  %4721 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4722 = getelementptr inbounds %struct.GPR, %struct.GPR* %4721, i32 0, i32 33
  %4723 = getelementptr inbounds %struct.Reg, %struct.Reg* %4722, i32 0, i32 0
  %PC.i71 = bitcast %union.anon* %4723 to i64*
  %4724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4725 = getelementptr inbounds %struct.GPR, %struct.GPR* %4724, i32 0, i32 1
  %4726 = getelementptr inbounds %struct.Reg, %struct.Reg* %4725, i32 0, i32 0
  %RAX.i72 = bitcast %union.anon* %4726 to i64*
  %4727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4728 = getelementptr inbounds %struct.GPR, %struct.GPR* %4727, i32 0, i32 5
  %4729 = getelementptr inbounds %struct.Reg, %struct.Reg* %4728, i32 0, i32 0
  %RCX.i73 = bitcast %union.anon* %4729 to i64*
  %4730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4731 = getelementptr inbounds %struct.GPR, %struct.GPR* %4730, i32 0, i32 7
  %4732 = getelementptr inbounds %struct.Reg, %struct.Reg* %4731, i32 0, i32 0
  %RDX.i74 = bitcast %union.anon* %4732 to i64*
  %4733 = load i64, i64* %RAX.i72
  %4734 = load i64, i64* %RCX.i73
  %4735 = mul i64 %4734, 4
  %4736 = add i64 %4735, %4733
  %4737 = load i64, i64* %PC.i71
  %4738 = add i64 %4737, 3
  store i64 %4738, i64* %PC.i71
  %4739 = inttoptr i64 %4736 to i32*
  %4740 = load i32, i32* %4739
  %4741 = zext i32 %4740 to i64
  store i64 %4741, i64* %RDX.i74, align 8
  store %struct.Memory* %loadMem_43bbad, %struct.Memory** %MEMORY
  %loadMem_43bbb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4743 = getelementptr inbounds %struct.GPR, %struct.GPR* %4742, i32 0, i32 33
  %4744 = getelementptr inbounds %struct.Reg, %struct.Reg* %4743, i32 0, i32 0
  %PC.i69 = bitcast %union.anon* %4744 to i64*
  %4745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4746 = getelementptr inbounds %struct.GPR, %struct.GPR* %4745, i32 0, i32 7
  %4747 = getelementptr inbounds %struct.Reg, %struct.Reg* %4746, i32 0, i32 0
  %RDX.i70 = bitcast %union.anon* %4747 to i64*
  %4748 = load i64, i64* %RDX.i70
  %4749 = load i64, i64* %PC.i69
  %4750 = add i64 %4749, 3
  store i64 %4750, i64* %PC.i69
  %4751 = trunc i64 %4748 to i32
  %4752 = add i32 1, %4751
  %4753 = zext i32 %4752 to i64
  store i64 %4753, i64* %RDX.i70, align 8
  %4754 = icmp ult i32 %4752, %4751
  %4755 = icmp ult i32 %4752, 1
  %4756 = or i1 %4754, %4755
  %4757 = zext i1 %4756 to i8
  %4758 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4757, i8* %4758, align 1
  %4759 = and i32 %4752, 255
  %4760 = call i32 @llvm.ctpop.i32(i32 %4759)
  %4761 = trunc i32 %4760 to i8
  %4762 = and i8 %4761, 1
  %4763 = xor i8 %4762, 1
  %4764 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4763, i8* %4764, align 1
  %4765 = xor i64 1, %4748
  %4766 = trunc i64 %4765 to i32
  %4767 = xor i32 %4766, %4752
  %4768 = lshr i32 %4767, 4
  %4769 = trunc i32 %4768 to i8
  %4770 = and i8 %4769, 1
  %4771 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4770, i8* %4771, align 1
  %4772 = icmp eq i32 %4752, 0
  %4773 = zext i1 %4772 to i8
  %4774 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4773, i8* %4774, align 1
  %4775 = lshr i32 %4752, 31
  %4776 = trunc i32 %4775 to i8
  %4777 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4776, i8* %4777, align 1
  %4778 = lshr i32 %4751, 31
  %4779 = xor i32 %4775, %4778
  %4780 = add i32 %4779, %4775
  %4781 = icmp eq i32 %4780, 2
  %4782 = zext i1 %4781 to i8
  %4783 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4782, i8* %4783, align 1
  store %struct.Memory* %loadMem_43bbb0, %struct.Memory** %MEMORY
  %loadMem_43bbb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4785 = getelementptr inbounds %struct.GPR, %struct.GPR* %4784, i32 0, i32 33
  %4786 = getelementptr inbounds %struct.Reg, %struct.Reg* %4785, i32 0, i32 0
  %PC.i65 = bitcast %union.anon* %4786 to i64*
  %4787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4788 = getelementptr inbounds %struct.GPR, %struct.GPR* %4787, i32 0, i32 7
  %4789 = getelementptr inbounds %struct.Reg, %struct.Reg* %4788, i32 0, i32 0
  %EDX.i66 = bitcast %union.anon* %4789 to i32*
  %4790 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4791 = getelementptr inbounds %struct.GPR, %struct.GPR* %4790, i32 0, i32 1
  %4792 = getelementptr inbounds %struct.Reg, %struct.Reg* %4791, i32 0, i32 0
  %RAX.i67 = bitcast %union.anon* %4792 to i64*
  %4793 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4794 = getelementptr inbounds %struct.GPR, %struct.GPR* %4793, i32 0, i32 5
  %4795 = getelementptr inbounds %struct.Reg, %struct.Reg* %4794, i32 0, i32 0
  %RCX.i68 = bitcast %union.anon* %4795 to i64*
  %4796 = load i64, i64* %RAX.i67
  %4797 = load i64, i64* %RCX.i68
  %4798 = mul i64 %4797, 4
  %4799 = add i64 %4798, %4796
  %4800 = load i32, i32* %EDX.i66
  %4801 = zext i32 %4800 to i64
  %4802 = load i64, i64* %PC.i65
  %4803 = add i64 %4802, 3
  store i64 %4803, i64* %PC.i65
  %4804 = inttoptr i64 %4799 to i32*
  store i32 %4800, i32* %4804
  store %struct.Memory* %loadMem_43bbb3, %struct.Memory** %MEMORY
  %loadMem_43bbb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4805 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4806 = getelementptr inbounds %struct.GPR, %struct.GPR* %4805, i32 0, i32 33
  %4807 = getelementptr inbounds %struct.Reg, %struct.Reg* %4806, i32 0, i32 0
  %PC.i64 = bitcast %union.anon* %4807 to i64*
  %4808 = load i64, i64* %PC.i64
  %4809 = add i64 %4808, 55
  %4810 = load i64, i64* %PC.i64
  %4811 = add i64 %4810, 5
  store i64 %4811, i64* %PC.i64
  %4812 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4809, i64* %4812, align 8
  store %struct.Memory* %loadMem_43bbb6, %struct.Memory** %MEMORY
  br label %block_.L_43bbed

block_.L_43bbbb:                                  ; preds = %block_43bb75
  %loadMem_43bbbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %4813 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4814 = getelementptr inbounds %struct.GPR, %struct.GPR* %4813, i32 0, i32 33
  %4815 = getelementptr inbounds %struct.Reg, %struct.Reg* %4814, i32 0, i32 0
  %PC.i62 = bitcast %union.anon* %4815 to i64*
  %4816 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4817 = getelementptr inbounds %struct.GPR, %struct.GPR* %4816, i32 0, i32 1
  %4818 = getelementptr inbounds %struct.Reg, %struct.Reg* %4817, i32 0, i32 0
  %RAX.i63 = bitcast %union.anon* %4818 to i64*
  %4819 = load i64, i64* %PC.i62
  %4820 = add i64 %4819, 8
  store i64 %4820, i64* %PC.i62
  %4821 = load i64, i64* bitcast (%G_0x6cb908_type* @G_0x6cb908 to i64*)
  store i64 %4821, i64* %RAX.i63, align 8
  store %struct.Memory* %loadMem_43bbbb, %struct.Memory** %MEMORY
  %loadMem_43bbc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4823 = getelementptr inbounds %struct.GPR, %struct.GPR* %4822, i32 0, i32 33
  %4824 = getelementptr inbounds %struct.Reg, %struct.Reg* %4823, i32 0, i32 0
  %PC.i60 = bitcast %union.anon* %4824 to i64*
  %4825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4826 = getelementptr inbounds %struct.GPR, %struct.GPR* %4825, i32 0, i32 1
  %4827 = getelementptr inbounds %struct.Reg, %struct.Reg* %4826, i32 0, i32 0
  %RAX.i61 = bitcast %union.anon* %4827 to i64*
  %4828 = load i64, i64* %RAX.i61
  %4829 = load i64, i64* %PC.i60
  %4830 = add i64 %4829, 6
  store i64 %4830, i64* %PC.i60
  %4831 = add i64 372, %4828
  store i64 %4831, i64* %RAX.i61, align 8
  %4832 = icmp ult i64 %4831, %4828
  %4833 = icmp ult i64 %4831, 372
  %4834 = or i1 %4832, %4833
  %4835 = zext i1 %4834 to i8
  %4836 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4835, i8* %4836, align 1
  %4837 = trunc i64 %4831 to i32
  %4838 = and i32 %4837, 255
  %4839 = call i32 @llvm.ctpop.i32(i32 %4838)
  %4840 = trunc i32 %4839 to i8
  %4841 = and i8 %4840, 1
  %4842 = xor i8 %4841, 1
  %4843 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4842, i8* %4843, align 1
  %4844 = xor i64 372, %4828
  %4845 = xor i64 %4844, %4831
  %4846 = lshr i64 %4845, 4
  %4847 = trunc i64 %4846 to i8
  %4848 = and i8 %4847, 1
  %4849 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4848, i8* %4849, align 1
  %4850 = icmp eq i64 %4831, 0
  %4851 = zext i1 %4850 to i8
  %4852 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4851, i8* %4852, align 1
  %4853 = lshr i64 %4831, 63
  %4854 = trunc i64 %4853 to i8
  %4855 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4854, i8* %4855, align 1
  %4856 = lshr i64 %4828, 63
  %4857 = xor i64 %4853, %4856
  %4858 = add i64 %4857, %4853
  %4859 = icmp eq i64 %4858, 2
  %4860 = zext i1 %4859 to i8
  %4861 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4860, i8* %4861, align 1
  store %struct.Memory* %loadMem_43bbc3, %struct.Memory** %MEMORY
  %loadMem_43bbc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4862 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4863 = getelementptr inbounds %struct.GPR, %struct.GPR* %4862, i32 0, i32 33
  %4864 = getelementptr inbounds %struct.Reg, %struct.Reg* %4863, i32 0, i32 0
  %PC.i58 = bitcast %union.anon* %4864 to i64*
  %4865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4866 = getelementptr inbounds %struct.GPR, %struct.GPR* %4865, i32 0, i32 5
  %4867 = getelementptr inbounds %struct.Reg, %struct.Reg* %4866, i32 0, i32 0
  %RCX.i59 = bitcast %union.anon* %4867 to i64*
  %4868 = load i64, i64* %PC.i58
  %4869 = add i64 %4868, 8
  store i64 %4869, i64* %PC.i58
  %4870 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %4870, i64* %RCX.i59, align 8
  store %struct.Memory* %loadMem_43bbc9, %struct.Memory** %MEMORY
  %loadMem_43bbd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4872 = getelementptr inbounds %struct.GPR, %struct.GPR* %4871, i32 0, i32 33
  %4873 = getelementptr inbounds %struct.Reg, %struct.Reg* %4872, i32 0, i32 0
  %PC.i56 = bitcast %union.anon* %4873 to i64*
  %4874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4875 = getelementptr inbounds %struct.GPR, %struct.GPR* %4874, i32 0, i32 5
  %4876 = getelementptr inbounds %struct.Reg, %struct.Reg* %4875, i32 0, i32 0
  %RCX.i57 = bitcast %union.anon* %4876 to i64*
  %4877 = load i64, i64* %RCX.i57
  %4878 = add i64 %4877, 24
  %4879 = load i64, i64* %PC.i56
  %4880 = add i64 %4879, 4
  store i64 %4880, i64* %PC.i56
  %4881 = inttoptr i64 %4878 to i32*
  %4882 = load i32, i32* %4881
  %4883 = sext i32 %4882 to i64
  store i64 %4883, i64* %RCX.i57, align 8
  store %struct.Memory* %loadMem_43bbd1, %struct.Memory** %MEMORY
  %loadMem_43bbd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4884 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4885 = getelementptr inbounds %struct.GPR, %struct.GPR* %4884, i32 0, i32 33
  %4886 = getelementptr inbounds %struct.Reg, %struct.Reg* %4885, i32 0, i32 0
  %PC.i54 = bitcast %union.anon* %4886 to i64*
  %4887 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4888 = getelementptr inbounds %struct.GPR, %struct.GPR* %4887, i32 0, i32 5
  %4889 = getelementptr inbounds %struct.Reg, %struct.Reg* %4888, i32 0, i32 0
  %RCX.i55 = bitcast %union.anon* %4889 to i64*
  %4890 = load i64, i64* %RCX.i55
  %4891 = load i64, i64* %PC.i54
  %4892 = add i64 %4891, 4
  store i64 %4892, i64* %PC.i54
  %4893 = sext i64 %4890 to i128
  %4894 = and i128 %4893, -18446744073709551616
  %4895 = zext i64 %4890 to i128
  %4896 = or i128 %4894, %4895
  %4897 = mul i128 60, %4896
  %4898 = trunc i128 %4897 to i64
  store i64 %4898, i64* %RCX.i55, align 8
  %4899 = sext i64 %4898 to i128
  %4900 = icmp ne i128 %4899, %4897
  %4901 = zext i1 %4900 to i8
  %4902 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4901, i8* %4902, align 1
  %4903 = trunc i128 %4897 to i32
  %4904 = and i32 %4903, 255
  %4905 = call i32 @llvm.ctpop.i32(i32 %4904)
  %4906 = trunc i32 %4905 to i8
  %4907 = and i8 %4906, 1
  %4908 = xor i8 %4907, 1
  %4909 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4908, i8* %4909, align 1
  %4910 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4910, align 1
  %4911 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4911, align 1
  %4912 = lshr i64 %4898, 63
  %4913 = trunc i64 %4912 to i8
  %4914 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4913, i8* %4914, align 1
  %4915 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4901, i8* %4915, align 1
  store %struct.Memory* %loadMem_43bbd5, %struct.Memory** %MEMORY
  %loadMem_43bbd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4917 = getelementptr inbounds %struct.GPR, %struct.GPR* %4916, i32 0, i32 33
  %4918 = getelementptr inbounds %struct.Reg, %struct.Reg* %4917, i32 0, i32 0
  %PC.i51 = bitcast %union.anon* %4918 to i64*
  %4919 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4920 = getelementptr inbounds %struct.GPR, %struct.GPR* %4919, i32 0, i32 1
  %4921 = getelementptr inbounds %struct.Reg, %struct.Reg* %4920, i32 0, i32 0
  %RAX.i52 = bitcast %union.anon* %4921 to i64*
  %4922 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4923 = getelementptr inbounds %struct.GPR, %struct.GPR* %4922, i32 0, i32 5
  %4924 = getelementptr inbounds %struct.Reg, %struct.Reg* %4923, i32 0, i32 0
  %RCX.i53 = bitcast %union.anon* %4924 to i64*
  %4925 = load i64, i64* %RAX.i52
  %4926 = load i64, i64* %RCX.i53
  %4927 = load i64, i64* %PC.i51
  %4928 = add i64 %4927, 3
  store i64 %4928, i64* %PC.i51
  %4929 = add i64 %4926, %4925
  store i64 %4929, i64* %RAX.i52, align 8
  %4930 = icmp ult i64 %4929, %4925
  %4931 = icmp ult i64 %4929, %4926
  %4932 = or i1 %4930, %4931
  %4933 = zext i1 %4932 to i8
  %4934 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4933, i8* %4934, align 1
  %4935 = trunc i64 %4929 to i32
  %4936 = and i32 %4935, 255
  %4937 = call i32 @llvm.ctpop.i32(i32 %4936)
  %4938 = trunc i32 %4937 to i8
  %4939 = and i8 %4938, 1
  %4940 = xor i8 %4939, 1
  %4941 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4940, i8* %4941, align 1
  %4942 = xor i64 %4926, %4925
  %4943 = xor i64 %4942, %4929
  %4944 = lshr i64 %4943, 4
  %4945 = trunc i64 %4944 to i8
  %4946 = and i8 %4945, 1
  %4947 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4946, i8* %4947, align 1
  %4948 = icmp eq i64 %4929, 0
  %4949 = zext i1 %4948 to i8
  %4950 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4949, i8* %4950, align 1
  %4951 = lshr i64 %4929, 63
  %4952 = trunc i64 %4951 to i8
  %4953 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4952, i8* %4953, align 1
  %4954 = lshr i64 %4925, 63
  %4955 = lshr i64 %4926, 63
  %4956 = xor i64 %4951, %4954
  %4957 = xor i64 %4951, %4955
  %4958 = add i64 %4956, %4957
  %4959 = icmp eq i64 %4958, 2
  %4960 = zext i1 %4959 to i8
  %4961 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4960, i8* %4961, align 1
  store %struct.Memory* %loadMem_43bbd9, %struct.Memory** %MEMORY
  %loadMem_43bbdc = load %struct.Memory*, %struct.Memory** %MEMORY
  %4962 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4963 = getelementptr inbounds %struct.GPR, %struct.GPR* %4962, i32 0, i32 33
  %4964 = getelementptr inbounds %struct.Reg, %struct.Reg* %4963, i32 0, i32 0
  %PC.i48 = bitcast %union.anon* %4964 to i64*
  %4965 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4966 = getelementptr inbounds %struct.GPR, %struct.GPR* %4965, i32 0, i32 5
  %4967 = getelementptr inbounds %struct.Reg, %struct.Reg* %4966, i32 0, i32 0
  %RCX.i49 = bitcast %union.anon* %4967 to i64*
  %4968 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4969 = getelementptr inbounds %struct.GPR, %struct.GPR* %4968, i32 0, i32 15
  %4970 = getelementptr inbounds %struct.Reg, %struct.Reg* %4969, i32 0, i32 0
  %RBP.i50 = bitcast %union.anon* %4970 to i64*
  %4971 = load i64, i64* %RBP.i50
  %4972 = sub i64 %4971, 8
  %4973 = load i64, i64* %PC.i48
  %4974 = add i64 %4973, 4
  store i64 %4974, i64* %PC.i48
  %4975 = inttoptr i64 %4972 to i64*
  %4976 = load i64, i64* %4975
  store i64 %4976, i64* %RCX.i49, align 8
  store %struct.Memory* %loadMem_43bbdc, %struct.Memory** %MEMORY
  %loadMem_43bbe0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4977 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4978 = getelementptr inbounds %struct.GPR, %struct.GPR* %4977, i32 0, i32 33
  %4979 = getelementptr inbounds %struct.Reg, %struct.Reg* %4978, i32 0, i32 0
  %PC.i46 = bitcast %union.anon* %4979 to i64*
  %4980 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4981 = getelementptr inbounds %struct.GPR, %struct.GPR* %4980, i32 0, i32 5
  %4982 = getelementptr inbounds %struct.Reg, %struct.Reg* %4981, i32 0, i32 0
  %RCX.i47 = bitcast %union.anon* %4982 to i64*
  %4983 = load i64, i64* %RCX.i47
  %4984 = add i64 %4983, 72
  %4985 = load i64, i64* %PC.i46
  %4986 = add i64 %4985, 4
  store i64 %4986, i64* %PC.i46
  %4987 = inttoptr i64 %4984 to i32*
  %4988 = load i32, i32* %4987
  %4989 = sext i32 %4988 to i64
  store i64 %4989, i64* %RCX.i47, align 8
  store %struct.Memory* %loadMem_43bbe0, %struct.Memory** %MEMORY
  %loadMem_43bbe4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4990 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4991 = getelementptr inbounds %struct.GPR, %struct.GPR* %4990, i32 0, i32 33
  %4992 = getelementptr inbounds %struct.Reg, %struct.Reg* %4991, i32 0, i32 0
  %PC.i42 = bitcast %union.anon* %4992 to i64*
  %4993 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4994 = getelementptr inbounds %struct.GPR, %struct.GPR* %4993, i32 0, i32 1
  %4995 = getelementptr inbounds %struct.Reg, %struct.Reg* %4994, i32 0, i32 0
  %RAX.i43 = bitcast %union.anon* %4995 to i64*
  %4996 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4997 = getelementptr inbounds %struct.GPR, %struct.GPR* %4996, i32 0, i32 5
  %4998 = getelementptr inbounds %struct.Reg, %struct.Reg* %4997, i32 0, i32 0
  %RCX.i44 = bitcast %union.anon* %4998 to i64*
  %4999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5000 = getelementptr inbounds %struct.GPR, %struct.GPR* %4999, i32 0, i32 7
  %5001 = getelementptr inbounds %struct.Reg, %struct.Reg* %5000, i32 0, i32 0
  %RDX.i45 = bitcast %union.anon* %5001 to i64*
  %5002 = load i64, i64* %RAX.i43
  %5003 = load i64, i64* %RCX.i44
  %5004 = mul i64 %5003, 4
  %5005 = add i64 %5004, %5002
  %5006 = load i64, i64* %PC.i42
  %5007 = add i64 %5006, 3
  store i64 %5007, i64* %PC.i42
  %5008 = inttoptr i64 %5005 to i32*
  %5009 = load i32, i32* %5008
  %5010 = zext i32 %5009 to i64
  store i64 %5010, i64* %RDX.i45, align 8
  store %struct.Memory* %loadMem_43bbe4, %struct.Memory** %MEMORY
  %loadMem_43bbe7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5011 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5012 = getelementptr inbounds %struct.GPR, %struct.GPR* %5011, i32 0, i32 33
  %5013 = getelementptr inbounds %struct.Reg, %struct.Reg* %5012, i32 0, i32 0
  %PC.i41 = bitcast %union.anon* %5013 to i64*
  %5014 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5015 = getelementptr inbounds %struct.GPR, %struct.GPR* %5014, i32 0, i32 7
  %5016 = getelementptr inbounds %struct.Reg, %struct.Reg* %5015, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %5016 to i64*
  %5017 = load i64, i64* %RDX.i
  %5018 = load i64, i64* %PC.i41
  %5019 = add i64 %5018, 3
  store i64 %5019, i64* %PC.i41
  %5020 = trunc i64 %5017 to i32
  %5021 = add i32 1, %5020
  %5022 = zext i32 %5021 to i64
  store i64 %5022, i64* %RDX.i, align 8
  %5023 = icmp ult i32 %5021, %5020
  %5024 = icmp ult i32 %5021, 1
  %5025 = or i1 %5023, %5024
  %5026 = zext i1 %5025 to i8
  %5027 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5026, i8* %5027, align 1
  %5028 = and i32 %5021, 255
  %5029 = call i32 @llvm.ctpop.i32(i32 %5028)
  %5030 = trunc i32 %5029 to i8
  %5031 = and i8 %5030, 1
  %5032 = xor i8 %5031, 1
  %5033 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5032, i8* %5033, align 1
  %5034 = xor i64 1, %5017
  %5035 = trunc i64 %5034 to i32
  %5036 = xor i32 %5035, %5021
  %5037 = lshr i32 %5036, 4
  %5038 = trunc i32 %5037 to i8
  %5039 = and i8 %5038, 1
  %5040 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5039, i8* %5040, align 1
  %5041 = icmp eq i32 %5021, 0
  %5042 = zext i1 %5041 to i8
  %5043 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5042, i8* %5043, align 1
  %5044 = lshr i32 %5021, 31
  %5045 = trunc i32 %5044 to i8
  %5046 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5045, i8* %5046, align 1
  %5047 = lshr i32 %5020, 31
  %5048 = xor i32 %5044, %5047
  %5049 = add i32 %5048, %5044
  %5050 = icmp eq i32 %5049, 2
  %5051 = zext i1 %5050 to i8
  %5052 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5051, i8* %5052, align 1
  store %struct.Memory* %loadMem_43bbe7, %struct.Memory** %MEMORY
  %loadMem_43bbea = load %struct.Memory*, %struct.Memory** %MEMORY
  %5053 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5054 = getelementptr inbounds %struct.GPR, %struct.GPR* %5053, i32 0, i32 33
  %5055 = getelementptr inbounds %struct.Reg, %struct.Reg* %5054, i32 0, i32 0
  %PC.i38 = bitcast %union.anon* %5055 to i64*
  %5056 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5057 = getelementptr inbounds %struct.GPR, %struct.GPR* %5056, i32 0, i32 7
  %5058 = getelementptr inbounds %struct.Reg, %struct.Reg* %5057, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %5058 to i32*
  %5059 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5060 = getelementptr inbounds %struct.GPR, %struct.GPR* %5059, i32 0, i32 1
  %5061 = getelementptr inbounds %struct.Reg, %struct.Reg* %5060, i32 0, i32 0
  %RAX.i39 = bitcast %union.anon* %5061 to i64*
  %5062 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5063 = getelementptr inbounds %struct.GPR, %struct.GPR* %5062, i32 0, i32 5
  %5064 = getelementptr inbounds %struct.Reg, %struct.Reg* %5063, i32 0, i32 0
  %RCX.i40 = bitcast %union.anon* %5064 to i64*
  %5065 = load i64, i64* %RAX.i39
  %5066 = load i64, i64* %RCX.i40
  %5067 = mul i64 %5066, 4
  %5068 = add i64 %5067, %5065
  %5069 = load i32, i32* %EDX.i
  %5070 = zext i32 %5069 to i64
  %5071 = load i64, i64* %PC.i38
  %5072 = add i64 %5071, 3
  store i64 %5072, i64* %PC.i38
  %5073 = inttoptr i64 %5068 to i32*
  store i32 %5069, i32* %5073
  store %struct.Memory* %loadMem_43bbea, %struct.Memory** %MEMORY
  br label %block_.L_43bbed

block_.L_43bbed:                                  ; preds = %block_.L_43bbbb, %block_43bb86
  %loadMem_43bbed = load %struct.Memory*, %struct.Memory** %MEMORY
  %5074 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5075 = getelementptr inbounds %struct.GPR, %struct.GPR* %5074, i32 0, i32 33
  %5076 = getelementptr inbounds %struct.Reg, %struct.Reg* %5075, i32 0, i32 0
  %PC.i37 = bitcast %union.anon* %5076 to i64*
  %5077 = load i64, i64* %PC.i37
  %5078 = add i64 %5077, 5
  %5079 = load i64, i64* %PC.i37
  %5080 = add i64 %5079, 5
  store i64 %5080, i64* %PC.i37
  %5081 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5078, i64* %5081, align 8
  store %struct.Memory* %loadMem_43bbed, %struct.Memory** %MEMORY
  br label %block_.L_43bbf2

block_.L_43bbf2:                                  ; preds = %block_.L_43bbed, %block_43bb5f, %block_43bb51, %block_.L_43bb43
  %loadMem_43bbf2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5082 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5083 = getelementptr inbounds %struct.GPR, %struct.GPR* %5082, i32 0, i32 33
  %5084 = getelementptr inbounds %struct.Reg, %struct.Reg* %5083, i32 0, i32 0
  %PC.i36 = bitcast %union.anon* %5084 to i64*
  %5085 = load i64, i64* %PC.i36
  %5086 = add i64 %5085, 5
  %5087 = load i64, i64* %PC.i36
  %5088 = add i64 %5087, 5
  store i64 %5088, i64* %PC.i36
  %5089 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5086, i64* %5089, align 8
  store %struct.Memory* %loadMem_43bbf2, %struct.Memory** %MEMORY
  br label %block_.L_43bbf7

block_.L_43bbf7:                                  ; preds = %block_.L_43bbf2, %block_.L_43bb3e
  %loadMem_43bbf7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5091 = getelementptr inbounds %struct.GPR, %struct.GPR* %5090, i32 0, i32 33
  %5092 = getelementptr inbounds %struct.Reg, %struct.Reg* %5091, i32 0, i32 0
  %PC.i35 = bitcast %union.anon* %5092 to i64*
  %5093 = load i64, i64* %PC.i35
  %5094 = add i64 %5093, 5
  %5095 = load i64, i64* %PC.i35
  %5096 = add i64 %5095, 5
  store i64 %5096, i64* %PC.i35
  %5097 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5094, i64* %5097, align 8
  store %struct.Memory* %loadMem_43bbf7, %struct.Memory** %MEMORY
  br label %block_.L_43bbfc

block_.L_43bbfc:                                  ; preds = %block_.L_43bbf7, %block_.L_43b95c
  %loadMem_43bbfc = load %struct.Memory*, %struct.Memory** %MEMORY
  %5098 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5099 = getelementptr inbounds %struct.GPR, %struct.GPR* %5098, i32 0, i32 33
  %5100 = getelementptr inbounds %struct.Reg, %struct.Reg* %5099, i32 0, i32 0
  %PC.i33 = bitcast %union.anon* %5100 to i64*
  %5101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5102 = getelementptr inbounds %struct.GPR, %struct.GPR* %5101, i32 0, i32 1
  %5103 = getelementptr inbounds %struct.Reg, %struct.Reg* %5102, i32 0, i32 0
  %RAX.i34 = bitcast %union.anon* %5103 to i64*
  %5104 = load i64, i64* %PC.i33
  %5105 = add i64 %5104, 8
  store i64 %5105, i64* %PC.i33
  %5106 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %5106, i64* %RAX.i34, align 8
  store %struct.Memory* %loadMem_43bbfc, %struct.Memory** %MEMORY
  %loadMem_43bc04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5108 = getelementptr inbounds %struct.GPR, %struct.GPR* %5107, i32 0, i32 33
  %5109 = getelementptr inbounds %struct.Reg, %struct.Reg* %5108, i32 0, i32 0
  %PC.i31 = bitcast %union.anon* %5109 to i64*
  %5110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5111 = getelementptr inbounds %struct.GPR, %struct.GPR* %5110, i32 0, i32 1
  %5112 = getelementptr inbounds %struct.Reg, %struct.Reg* %5111, i32 0, i32 0
  %RAX.i32 = bitcast %union.anon* %5112 to i64*
  %5113 = load i64, i64* %RAX.i32
  %5114 = add i64 %5113, 24
  %5115 = load i64, i64* %PC.i31
  %5116 = add i64 %5115, 4
  store i64 %5116, i64* %PC.i31
  %5117 = inttoptr i64 %5114 to i32*
  %5118 = load i32, i32* %5117
  %5119 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5119, align 1
  %5120 = and i32 %5118, 255
  %5121 = call i32 @llvm.ctpop.i32(i32 %5120)
  %5122 = trunc i32 %5121 to i8
  %5123 = and i8 %5122, 1
  %5124 = xor i8 %5123, 1
  %5125 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5124, i8* %5125, align 1
  %5126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5126, align 1
  %5127 = icmp eq i32 %5118, 0
  %5128 = zext i1 %5127 to i8
  %5129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5128, i8* %5129, align 1
  %5130 = lshr i32 %5118, 31
  %5131 = trunc i32 %5130 to i8
  %5132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5131, i8* %5132, align 1
  %5133 = lshr i32 %5118, 31
  %5134 = xor i32 %5130, %5133
  %5135 = add i32 %5134, %5133
  %5136 = icmp eq i32 %5135, 2
  %5137 = zext i1 %5136 to i8
  %5138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5137, i8* %5138, align 1
  store %struct.Memory* %loadMem_43bc04, %struct.Memory** %MEMORY
  %loadMem_43bc08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5140 = getelementptr inbounds %struct.GPR, %struct.GPR* %5139, i32 0, i32 33
  %5141 = getelementptr inbounds %struct.Reg, %struct.Reg* %5140, i32 0, i32 0
  %PC.i30 = bitcast %union.anon* %5141 to i64*
  %5142 = load i64, i64* %PC.i30
  %5143 = add i64 %5142, 24
  %5144 = load i64, i64* %PC.i30
  %5145 = add i64 %5144, 6
  %5146 = load i64, i64* %PC.i30
  %5147 = add i64 %5146, 6
  store i64 %5147, i64* %PC.i30
  %5148 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5149 = load i8, i8* %5148, align 1
  store i8 %5149, i8* %BRANCH_TAKEN, align 1
  %5150 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5151 = icmp ne i8 %5149, 0
  %5152 = select i1 %5151, i64 %5143, i64 %5145
  store i64 %5152, i64* %5150, align 8
  store %struct.Memory* %loadMem_43bc08, %struct.Memory** %MEMORY
  %loadBr_43bc08 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43bc08 = icmp eq i8 %loadBr_43bc08, 1
  br i1 %cmpBr_43bc08, label %block_.L_43bc20, label %block_43bc0e

block_43bc0e:                                     ; preds = %block_.L_43bbfc
  %loadMem_43bc0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5154 = getelementptr inbounds %struct.GPR, %struct.GPR* %5153, i32 0, i32 33
  %5155 = getelementptr inbounds %struct.Reg, %struct.Reg* %5154, i32 0, i32 0
  %PC.i28 = bitcast %union.anon* %5155 to i64*
  %5156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5157 = getelementptr inbounds %struct.GPR, %struct.GPR* %5156, i32 0, i32 1
  %5158 = getelementptr inbounds %struct.Reg, %struct.Reg* %5157, i32 0, i32 0
  %RAX.i29 = bitcast %union.anon* %5158 to i64*
  %5159 = load i64, i64* %PC.i28
  %5160 = add i64 %5159, 8
  store i64 %5160, i64* %PC.i28
  %5161 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %5161, i64* %RAX.i29, align 8
  store %struct.Memory* %loadMem_43bc0e, %struct.Memory** %MEMORY
  %loadMem_43bc16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5163 = getelementptr inbounds %struct.GPR, %struct.GPR* %5162, i32 0, i32 33
  %5164 = getelementptr inbounds %struct.Reg, %struct.Reg* %5163, i32 0, i32 0
  %PC.i26 = bitcast %union.anon* %5164 to i64*
  %5165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5166 = getelementptr inbounds %struct.GPR, %struct.GPR* %5165, i32 0, i32 1
  %5167 = getelementptr inbounds %struct.Reg, %struct.Reg* %5166, i32 0, i32 0
  %RAX.i27 = bitcast %union.anon* %5167 to i64*
  %5168 = load i64, i64* %RAX.i27
  %5169 = add i64 %5168, 24
  %5170 = load i64, i64* %PC.i26
  %5171 = add i64 %5170, 4
  store i64 %5171, i64* %PC.i26
  %5172 = inttoptr i64 %5169 to i32*
  %5173 = load i32, i32* %5172
  %5174 = sub i32 %5173, 3
  %5175 = icmp ult i32 %5173, 3
  %5176 = zext i1 %5175 to i8
  %5177 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5176, i8* %5177, align 1
  %5178 = and i32 %5174, 255
  %5179 = call i32 @llvm.ctpop.i32(i32 %5178)
  %5180 = trunc i32 %5179 to i8
  %5181 = and i8 %5180, 1
  %5182 = xor i8 %5181, 1
  %5183 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5182, i8* %5183, align 1
  %5184 = xor i32 %5173, 3
  %5185 = xor i32 %5184, %5174
  %5186 = lshr i32 %5185, 4
  %5187 = trunc i32 %5186 to i8
  %5188 = and i8 %5187, 1
  %5189 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5188, i8* %5189, align 1
  %5190 = icmp eq i32 %5174, 0
  %5191 = zext i1 %5190 to i8
  %5192 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5191, i8* %5192, align 1
  %5193 = lshr i32 %5174, 31
  %5194 = trunc i32 %5193 to i8
  %5195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5194, i8* %5195, align 1
  %5196 = lshr i32 %5173, 31
  %5197 = xor i32 %5193, %5196
  %5198 = add i32 %5197, %5196
  %5199 = icmp eq i32 %5198, 2
  %5200 = zext i1 %5199 to i8
  %5201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5200, i8* %5201, align 1
  store %struct.Memory* %loadMem_43bc16, %struct.Memory** %MEMORY
  %loadMem_43bc1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5203 = getelementptr inbounds %struct.GPR, %struct.GPR* %5202, i32 0, i32 33
  %5204 = getelementptr inbounds %struct.Reg, %struct.Reg* %5203, i32 0, i32 0
  %PC.i25 = bitcast %union.anon* %5204 to i64*
  %5205 = load i64, i64* %PC.i25
  %5206 = add i64 %5205, 42
  %5207 = load i64, i64* %PC.i25
  %5208 = add i64 %5207, 6
  %5209 = load i64, i64* %PC.i25
  %5210 = add i64 %5209, 6
  store i64 %5210, i64* %PC.i25
  %5211 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5212 = load i8, i8* %5211, align 1
  %5213 = icmp eq i8 %5212, 0
  %5214 = zext i1 %5213 to i8
  store i8 %5214, i8* %BRANCH_TAKEN, align 1
  %5215 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5216 = select i1 %5213, i64 %5206, i64 %5208
  store i64 %5216, i64* %5215, align 8
  store %struct.Memory* %loadMem_43bc1a, %struct.Memory** %MEMORY
  %loadBr_43bc1a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43bc1a = icmp eq i8 %loadBr_43bc1a, 1
  br i1 %cmpBr_43bc1a, label %block_.L_43bc44, label %block_.L_43bc20

block_.L_43bc20:                                  ; preds = %block_43bc0e, %block_.L_43bbfc
  %loadMem_43bc20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5218 = getelementptr inbounds %struct.GPR, %struct.GPR* %5217, i32 0, i32 33
  %5219 = getelementptr inbounds %struct.Reg, %struct.Reg* %5218, i32 0, i32 0
  %PC.i23 = bitcast %union.anon* %5219 to i64*
  %5220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5221 = getelementptr inbounds %struct.GPR, %struct.GPR* %5220, i32 0, i32 1
  %5222 = getelementptr inbounds %struct.Reg, %struct.Reg* %5221, i32 0, i32 0
  %RAX.i24 = bitcast %union.anon* %5222 to i64*
  %5223 = load i64, i64* %PC.i23
  %5224 = add i64 %5223, 8
  store i64 %5224, i64* %PC.i23
  %5225 = load i64, i64* bitcast (%G_0x6cb908_type* @G_0x6cb908 to i64*)
  store i64 %5225, i64* %RAX.i24, align 8
  store %struct.Memory* %loadMem_43bc20, %struct.Memory** %MEMORY
  %loadMem_43bc28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5227 = getelementptr inbounds %struct.GPR, %struct.GPR* %5226, i32 0, i32 33
  %5228 = getelementptr inbounds %struct.Reg, %struct.Reg* %5227, i32 0, i32 0
  %PC.i20 = bitcast %union.anon* %5228 to i64*
  %5229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5230 = getelementptr inbounds %struct.GPR, %struct.GPR* %5229, i32 0, i32 1
  %5231 = getelementptr inbounds %struct.Reg, %struct.Reg* %5230, i32 0, i32 0
  %RAX.i21 = bitcast %union.anon* %5231 to i64*
  %5232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5233 = getelementptr inbounds %struct.GPR, %struct.GPR* %5232, i32 0, i32 5
  %5234 = getelementptr inbounds %struct.Reg, %struct.Reg* %5233, i32 0, i32 0
  %RCX.i22 = bitcast %union.anon* %5234 to i64*
  %5235 = load i64, i64* %RAX.i21
  %5236 = load i64, i64* %PC.i20
  %5237 = add i64 %5236, 2
  store i64 %5237, i64* %PC.i20
  %5238 = inttoptr i64 %5235 to i32*
  %5239 = load i32, i32* %5238
  %5240 = zext i32 %5239 to i64
  store i64 %5240, i64* %RCX.i22, align 8
  store %struct.Memory* %loadMem_43bc28, %struct.Memory** %MEMORY
  %loadMem_43bc2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5242 = getelementptr inbounds %struct.GPR, %struct.GPR* %5241, i32 0, i32 33
  %5243 = getelementptr inbounds %struct.Reg, %struct.Reg* %5242, i32 0, i32 0
  %PC.i18 = bitcast %union.anon* %5243 to i64*
  %5244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5245 = getelementptr inbounds %struct.GPR, %struct.GPR* %5244, i32 0, i32 5
  %5246 = getelementptr inbounds %struct.Reg, %struct.Reg* %5245, i32 0, i32 0
  %RCX.i19 = bitcast %union.anon* %5246 to i64*
  %5247 = load i64, i64* %RCX.i19
  %5248 = load i64, i64* %PC.i18
  %5249 = add i64 %5248, 3
  store i64 %5249, i64* %PC.i18
  %5250 = trunc i64 %5247 to i32
  %5251 = add i32 1, %5250
  %5252 = zext i32 %5251 to i64
  store i64 %5252, i64* %RCX.i19, align 8
  %5253 = icmp ult i32 %5251, %5250
  %5254 = icmp ult i32 %5251, 1
  %5255 = or i1 %5253, %5254
  %5256 = zext i1 %5255 to i8
  %5257 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5256, i8* %5257, align 1
  %5258 = and i32 %5251, 255
  %5259 = call i32 @llvm.ctpop.i32(i32 %5258)
  %5260 = trunc i32 %5259 to i8
  %5261 = and i8 %5260, 1
  %5262 = xor i8 %5261, 1
  %5263 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5262, i8* %5263, align 1
  %5264 = xor i64 1, %5247
  %5265 = trunc i64 %5264 to i32
  %5266 = xor i32 %5265, %5251
  %5267 = lshr i32 %5266, 4
  %5268 = trunc i32 %5267 to i8
  %5269 = and i8 %5268, 1
  %5270 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5269, i8* %5270, align 1
  %5271 = icmp eq i32 %5251, 0
  %5272 = zext i1 %5271 to i8
  %5273 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5272, i8* %5273, align 1
  %5274 = lshr i32 %5251, 31
  %5275 = trunc i32 %5274 to i8
  %5276 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5275, i8* %5276, align 1
  %5277 = lshr i32 %5250, 31
  %5278 = xor i32 %5274, %5277
  %5279 = add i32 %5278, %5274
  %5280 = icmp eq i32 %5279, 2
  %5281 = zext i1 %5280 to i8
  %5282 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5281, i8* %5282, align 1
  store %struct.Memory* %loadMem_43bc2a, %struct.Memory** %MEMORY
  %loadMem_43bc2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5284 = getelementptr inbounds %struct.GPR, %struct.GPR* %5283, i32 0, i32 33
  %5285 = getelementptr inbounds %struct.Reg, %struct.Reg* %5284, i32 0, i32 0
  %PC.i15 = bitcast %union.anon* %5285 to i64*
  %5286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5287 = getelementptr inbounds %struct.GPR, %struct.GPR* %5286, i32 0, i32 5
  %5288 = getelementptr inbounds %struct.Reg, %struct.Reg* %5287, i32 0, i32 0
  %ECX.i16 = bitcast %union.anon* %5288 to i32*
  %5289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5290 = getelementptr inbounds %struct.GPR, %struct.GPR* %5289, i32 0, i32 1
  %5291 = getelementptr inbounds %struct.Reg, %struct.Reg* %5290, i32 0, i32 0
  %RAX.i17 = bitcast %union.anon* %5291 to i64*
  %5292 = load i64, i64* %RAX.i17
  %5293 = load i32, i32* %ECX.i16
  %5294 = zext i32 %5293 to i64
  %5295 = load i64, i64* %PC.i15
  %5296 = add i64 %5295, 2
  store i64 %5296, i64* %PC.i15
  %5297 = inttoptr i64 %5292 to i32*
  store i32 %5293, i32* %5297
  store %struct.Memory* %loadMem_43bc2d, %struct.Memory** %MEMORY
  %loadMem_43bc2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5299 = getelementptr inbounds %struct.GPR, %struct.GPR* %5298, i32 0, i32 33
  %5300 = getelementptr inbounds %struct.Reg, %struct.Reg* %5299, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %5300 to i64*
  %5301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5302 = getelementptr inbounds %struct.GPR, %struct.GPR* %5301, i32 0, i32 1
  %5303 = getelementptr inbounds %struct.Reg, %struct.Reg* %5302, i32 0, i32 0
  %RAX.i13 = bitcast %union.anon* %5303 to i64*
  %5304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5305 = getelementptr inbounds %struct.GPR, %struct.GPR* %5304, i32 0, i32 15
  %5306 = getelementptr inbounds %struct.Reg, %struct.Reg* %5305, i32 0, i32 0
  %RBP.i14 = bitcast %union.anon* %5306 to i64*
  %5307 = load i64, i64* %RBP.i14
  %5308 = sub i64 %5307, 8
  %5309 = load i64, i64* %PC.i12
  %5310 = add i64 %5309, 4
  store i64 %5310, i64* %PC.i12
  %5311 = inttoptr i64 %5308 to i64*
  %5312 = load i64, i64* %5311
  store i64 %5312, i64* %RAX.i13, align 8
  store %struct.Memory* %loadMem_43bc2f, %struct.Memory** %MEMORY
  %loadMem_43bc33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5314 = getelementptr inbounds %struct.GPR, %struct.GPR* %5313, i32 0, i32 33
  %5315 = getelementptr inbounds %struct.Reg, %struct.Reg* %5314, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %5315 to i64*
  %5316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5317 = getelementptr inbounds %struct.GPR, %struct.GPR* %5316, i32 0, i32 1
  %5318 = getelementptr inbounds %struct.Reg, %struct.Reg* %5317, i32 0, i32 0
  %RAX.i10 = bitcast %union.anon* %5318 to i64*
  %5319 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5320 = getelementptr inbounds %struct.GPR, %struct.GPR* %5319, i32 0, i32 5
  %5321 = getelementptr inbounds %struct.Reg, %struct.Reg* %5320, i32 0, i32 0
  %RCX.i11 = bitcast %union.anon* %5321 to i64*
  %5322 = load i64, i64* %RAX.i10
  %5323 = add i64 %5322, 12
  %5324 = load i64, i64* %PC.i9
  %5325 = add i64 %5324, 3
  store i64 %5325, i64* %PC.i9
  %5326 = inttoptr i64 %5323 to i32*
  %5327 = load i32, i32* %5326
  %5328 = zext i32 %5327 to i64
  store i64 %5328, i64* %RCX.i11, align 8
  store %struct.Memory* %loadMem_43bc33, %struct.Memory** %MEMORY
  %loadMem_43bc36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5330 = getelementptr inbounds %struct.GPR, %struct.GPR* %5329, i32 0, i32 33
  %5331 = getelementptr inbounds %struct.Reg, %struct.Reg* %5330, i32 0, i32 0
  %PC.i7 = bitcast %union.anon* %5331 to i64*
  %5332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5333 = getelementptr inbounds %struct.GPR, %struct.GPR* %5332, i32 0, i32 1
  %5334 = getelementptr inbounds %struct.Reg, %struct.Reg* %5333, i32 0, i32 0
  %RAX.i8 = bitcast %union.anon* %5334 to i64*
  %5335 = load i64, i64* %PC.i7
  %5336 = add i64 %5335, 8
  store i64 %5336, i64* %PC.i7
  %5337 = load i64, i64* bitcast (%G_0x6cb908_type* @G_0x6cb908 to i64*)
  store i64 %5337, i64* %RAX.i8, align 8
  store %struct.Memory* %loadMem_43bc36, %struct.Memory** %MEMORY
  %loadMem_43bc3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5339 = getelementptr inbounds %struct.GPR, %struct.GPR* %5338, i32 0, i32 33
  %5340 = getelementptr inbounds %struct.Reg, %struct.Reg* %5339, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %5340 to i64*
  %5341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5342 = getelementptr inbounds %struct.GPR, %struct.GPR* %5341, i32 0, i32 1
  %5343 = getelementptr inbounds %struct.Reg, %struct.Reg* %5342, i32 0, i32 0
  %RAX.i6 = bitcast %union.anon* %5343 to i64*
  %5344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5345 = getelementptr inbounds %struct.GPR, %struct.GPR* %5344, i32 0, i32 5
  %5346 = getelementptr inbounds %struct.Reg, %struct.Reg* %5345, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %5346 to i64*
  %5347 = load i64, i64* %RCX.i
  %5348 = load i64, i64* %RAX.i6
  %5349 = add i64 %5348, 4
  %5350 = load i64, i64* %PC.i5
  %5351 = add i64 %5350, 3
  store i64 %5351, i64* %PC.i5
  %5352 = trunc i64 %5347 to i32
  %5353 = inttoptr i64 %5349 to i32*
  %5354 = load i32, i32* %5353
  %5355 = add i32 %5354, %5352
  %5356 = zext i32 %5355 to i64
  store i64 %5356, i64* %RCX.i, align 8
  %5357 = icmp ult i32 %5355, %5352
  %5358 = icmp ult i32 %5355, %5354
  %5359 = or i1 %5357, %5358
  %5360 = zext i1 %5359 to i8
  %5361 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5360, i8* %5361, align 1
  %5362 = and i32 %5355, 255
  %5363 = call i32 @llvm.ctpop.i32(i32 %5362)
  %5364 = trunc i32 %5363 to i8
  %5365 = and i8 %5364, 1
  %5366 = xor i8 %5365, 1
  %5367 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5366, i8* %5367, align 1
  %5368 = xor i32 %5354, %5352
  %5369 = xor i32 %5368, %5355
  %5370 = lshr i32 %5369, 4
  %5371 = trunc i32 %5370 to i8
  %5372 = and i8 %5371, 1
  %5373 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5372, i8* %5373, align 1
  %5374 = icmp eq i32 %5355, 0
  %5375 = zext i1 %5374 to i8
  %5376 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5375, i8* %5376, align 1
  %5377 = lshr i32 %5355, 31
  %5378 = trunc i32 %5377 to i8
  %5379 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5378, i8* %5379, align 1
  %5380 = lshr i32 %5352, 31
  %5381 = lshr i32 %5354, 31
  %5382 = xor i32 %5377, %5380
  %5383 = xor i32 %5377, %5381
  %5384 = add i32 %5382, %5383
  %5385 = icmp eq i32 %5384, 2
  %5386 = zext i1 %5385 to i8
  %5387 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5386, i8* %5387, align 1
  store %struct.Memory* %loadMem_43bc3e, %struct.Memory** %MEMORY
  %loadMem_43bc41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5389 = getelementptr inbounds %struct.GPR, %struct.GPR* %5388, i32 0, i32 33
  %5390 = getelementptr inbounds %struct.Reg, %struct.Reg* %5389, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %5390 to i64*
  %5391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5392 = getelementptr inbounds %struct.GPR, %struct.GPR* %5391, i32 0, i32 5
  %5393 = getelementptr inbounds %struct.Reg, %struct.Reg* %5392, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %5393 to i32*
  %5394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5395 = getelementptr inbounds %struct.GPR, %struct.GPR* %5394, i32 0, i32 1
  %5396 = getelementptr inbounds %struct.Reg, %struct.Reg* %5395, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %5396 to i64*
  %5397 = load i64, i64* %RAX.i
  %5398 = add i64 %5397, 4
  %5399 = load i32, i32* %ECX.i
  %5400 = zext i32 %5399 to i64
  %5401 = load i64, i64* %PC.i4
  %5402 = add i64 %5401, 3
  store i64 %5402, i64* %PC.i4
  %5403 = inttoptr i64 %5398 to i32*
  store i32 %5399, i32* %5403
  store %struct.Memory* %loadMem_43bc41, %struct.Memory** %MEMORY
  br label %block_.L_43bc44

block_.L_43bc44:                                  ; preds = %block_.L_43bc20, %block_43bc0e
  %loadMem_43bc44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5405 = getelementptr inbounds %struct.GPR, %struct.GPR* %5404, i32 0, i32 33
  %5406 = getelementptr inbounds %struct.Reg, %struct.Reg* %5405, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %5406 to i64*
  %5407 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5408 = getelementptr inbounds %struct.GPR, %struct.GPR* %5407, i32 0, i32 15
  %5409 = getelementptr inbounds %struct.Reg, %struct.Reg* %5408, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %5409 to i64*
  %5410 = load i64, i64* %PC.i2
  %5411 = add i64 %5410, 1
  store i64 %5411, i64* %PC.i2
  %5412 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5413 = load i64, i64* %5412, align 8
  %5414 = add i64 %5413, 8
  %5415 = inttoptr i64 %5413 to i64*
  %5416 = load i64, i64* %5415
  store i64 %5416, i64* %RBP.i3, align 8
  store i64 %5414, i64* %5412, align 8
  store %struct.Memory* %loadMem_43bc44, %struct.Memory** %MEMORY
  %loadMem_43bc45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5418 = getelementptr inbounds %struct.GPR, %struct.GPR* %5417, i32 0, i32 33
  %5419 = getelementptr inbounds %struct.Reg, %struct.Reg* %5418, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %5419 to i64*
  %5420 = load i64, i64* %PC.i1
  %5421 = add i64 %5420, 1
  store i64 %5421, i64* %PC.i1
  %5422 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5423 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5424 = load i64, i64* %5423, align 8
  %5425 = inttoptr i64 %5424 to i64*
  %5426 = load i64, i64* %5425
  store i64 %5426, i64* %5422, align 8
  %5427 = add i64 %5424, 8
  store i64 %5427, i64* %5423, align 8
  store %struct.Memory* %loadMem_43bc45, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_43bc45
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

define %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %11, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x3758__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 14168
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
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

define %struct.Memory* @routine_movslq_0xc__rcx____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 12
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imulq__0x278___rcx___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sext i64 %9 to i128
  %13 = and i128 %12, -18446744073709551616
  %14 = zext i64 %9 to i128
  %15 = or i128 %13, %14
  %16 = mul i128 632, %15
  %17 = trunc i128 %16 to i64
  store i64 %17, i64* %RCX, align 8
  %18 = sext i64 %17 to i128
  %19 = icmp ne i128 %18, %16
  %20 = zext i1 %19 to i8
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %20, i8* %21, align 1
  %22 = trunc i128 %16 to i32
  %23 = and i32 %22, 255
  %24 = call i32 @llvm.ctpop.i32(i32 %23)
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = xor i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %27, i8* %28, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %29, align 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %30, align 1
  %31 = lshr i64 %17, 63
  %32 = trunc i64 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %20, i8* %34, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__rcx___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movq__rax__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
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

define %struct.Memory* @routine_addq__0x14___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movl_0x8__rax____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x6cb908___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i64, i64* bitcast (%G_0x6cb908_type* @G_0x6cb908 to i64*)
  store i64 %11, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_0x18__rcx____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_0x544__rax__rcx_4____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %19 = add i64 %16, 1348
  %20 = add i64 %19, %18
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 7
  store i64 %22, i64* %PC
  %23 = trunc i64 %15 to i32
  %24 = inttoptr i64 %20 to i32*
  %25 = load i32, i32* %24
  %26 = add i32 %25, %23
  %27 = zext i32 %26 to i64
  store i64 %27, i64* %RDX, align 8
  %28 = icmp ult i32 %26, %23
  %29 = icmp ult i32 %26, %25
  %30 = or i1 %28, %29
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %31, i8* %32, align 1
  %33 = and i32 %26, 255
  %34 = call i32 @llvm.ctpop.i32(i32 %33)
  %35 = trunc i32 %34 to i8
  %36 = and i8 %35, 1
  %37 = xor i8 %36, 1
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %37, i8* %38, align 1
  %39 = xor i32 %25, %23
  %40 = xor i32 %39, %26
  %41 = lshr i32 %40, 4
  %42 = trunc i32 %41 to i8
  %43 = and i8 %42, 1
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %43, i8* %44, align 1
  %45 = icmp eq i32 %26, 0
  %46 = zext i1 %45 to i8
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %46, i8* %47, align 1
  %48 = lshr i32 %26, 31
  %49 = trunc i32 %48 to i8
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %49, i8* %50, align 1
  %51 = lshr i32 %23, 31
  %52 = lshr i32 %25, 31
  %53 = xor i32 %48, %51
  %54 = xor i32 %48, %52
  %55 = add i32 %53, %54
  %56 = icmp eq i32 %55, 2
  %57 = zext i1 %56 to i8
  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %57, i8* %58, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__0x544__rax__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %18 = add i64 %15, 1348
  %19 = add i64 %18, %17
  %20 = load i32, i32* %EDX
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = inttoptr i64 %19 to i32*
  store i32 %20, i32* %24
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x14__rax____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 20
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_0x580__rax__rcx_4____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %19 = add i64 %16, 1408
  %20 = add i64 %19, %18
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 7
  store i64 %22, i64* %PC
  %23 = trunc i64 %15 to i32
  %24 = inttoptr i64 %20 to i32*
  %25 = load i32, i32* %24
  %26 = add i32 %25, %23
  %27 = zext i32 %26 to i64
  store i64 %27, i64* %RDX, align 8
  %28 = icmp ult i32 %26, %23
  %29 = icmp ult i32 %26, %25
  %30 = or i1 %28, %29
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %31, i8* %32, align 1
  %33 = and i32 %26, 255
  %34 = call i32 @llvm.ctpop.i32(i32 %33)
  %35 = trunc i32 %34 to i8
  %36 = and i8 %35, 1
  %37 = xor i8 %36, 1
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %37, i8* %38, align 1
  %39 = xor i32 %25, %23
  %40 = xor i32 %39, %26
  %41 = lshr i32 %40, 4
  %42 = trunc i32 %41 to i8
  %43 = and i8 %42, 1
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %43, i8* %44, align 1
  %45 = icmp eq i32 %26, 0
  %46 = zext i1 %45 to i8
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %46, i8* %47, align 1
  %48 = lshr i32 %26, 31
  %49 = trunc i32 %48 to i8
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %49, i8* %50, align 1
  %51 = lshr i32 %23, 31
  %52 = lshr i32 %25, 31
  %53 = xor i32 %48, %51
  %54 = xor i32 %48, %52
  %55 = add i32 %53, %54
  %56 = icmp eq i32 %55, 2
  %57 = zext i1 %56 to i8
  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %57, i8* %58, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__0x580__rax__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %18 = add i64 %15, 1408
  %19 = add i64 %18, %17
  %20 = load i32, i32* %EDX
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = inttoptr i64 %19 to i32*
  store i32 %20, i32* %24
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x10__rax____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_addl_0x56c__rax__rcx_4____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %19 = add i64 %16, 1388
  %20 = add i64 %19, %18
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 7
  store i64 %22, i64* %PC
  %23 = trunc i64 %15 to i32
  %24 = inttoptr i64 %20 to i32*
  %25 = load i32, i32* %24
  %26 = add i32 %25, %23
  %27 = zext i32 %26 to i64
  store i64 %27, i64* %RDX, align 8
  %28 = icmp ult i32 %26, %23
  %29 = icmp ult i32 %26, %25
  %30 = or i1 %28, %29
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %31, i8* %32, align 1
  %33 = and i32 %26, 255
  %34 = call i32 @llvm.ctpop.i32(i32 %33)
  %35 = trunc i32 %34 to i8
  %36 = and i8 %35, 1
  %37 = xor i8 %36, 1
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %37, i8* %38, align 1
  %39 = xor i32 %25, %23
  %40 = xor i32 %39, %26
  %41 = lshr i32 %40, 4
  %42 = trunc i32 %41 to i8
  %43 = and i8 %42, 1
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %43, i8* %44, align 1
  %45 = icmp eq i32 %26, 0
  %46 = zext i1 %45 to i8
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %46, i8* %47, align 1
  %48 = lshr i32 %26, 31
  %49 = trunc i32 %48 to i8
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %49, i8* %50, align 1
  %51 = lshr i32 %23, 31
  %52 = lshr i32 %25, 31
  %53 = xor i32 %48, %51
  %54 = xor i32 %48, %52
  %55 = add i32 %53, %54
  %56 = icmp eq i32 %55, 2
  %57 = zext i1 %56 to i8
  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %57, i8* %58, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__0x56c__rax__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %18 = add i64 %15, 1388
  %19 = add i64 %18, %17
  %20 = load i32, i32* %EDX
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = inttoptr i64 %19 to i32*
  store i32 %20, i32* %24
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x18__rax____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_0x594__rax__rcx_4____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %19 = add i64 %16, 1428
  %20 = add i64 %19, %18
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 7
  store i64 %22, i64* %PC
  %23 = trunc i64 %15 to i32
  %24 = inttoptr i64 %20 to i32*
  %25 = load i32, i32* %24
  %26 = add i32 %25, %23
  %27 = zext i32 %26 to i64
  store i64 %27, i64* %RDX, align 8
  %28 = icmp ult i32 %26, %23
  %29 = icmp ult i32 %26, %25
  %30 = or i1 %28, %29
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %31, i8* %32, align 1
  %33 = and i32 %26, 255
  %34 = call i32 @llvm.ctpop.i32(i32 %33)
  %35 = trunc i32 %34 to i8
  %36 = and i8 %35, 1
  %37 = xor i8 %36, 1
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %37, i8* %38, align 1
  %39 = xor i32 %25, %23
  %40 = xor i32 %39, %26
  %41 = lshr i32 %40, 4
  %42 = trunc i32 %41 to i8
  %43 = and i8 %42, 1
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %43, i8* %44, align 1
  %45 = icmp eq i32 %26, 0
  %46 = zext i1 %45 to i8
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %46, i8* %47, align 1
  %48 = lshr i32 %26, 31
  %49 = trunc i32 %48 to i8
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %49, i8* %50, align 1
  %51 = lshr i32 %23, 31
  %52 = lshr i32 %25, 31
  %53 = xor i32 %48, %51
  %54 = xor i32 %48, %52
  %55 = add i32 %53, %54
  %56 = icmp eq i32 %55, 2
  %57 = zext i1 %56 to i8
  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %57, i8* %58, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__0x594__rax__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %18 = add i64 %15, 1428
  %19 = add i64 %18, %17
  %20 = load i32, i32* %EDX
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = inttoptr i64 %19 to i32*
  store i32 %20, i32* %24
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x1c__rax____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 28
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_0x5a8__rax__rcx_4____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %19 = add i64 %16, 1448
  %20 = add i64 %19, %18
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 7
  store i64 %22, i64* %PC
  %23 = trunc i64 %15 to i32
  %24 = inttoptr i64 %20 to i32*
  %25 = load i32, i32* %24
  %26 = add i32 %25, %23
  %27 = zext i32 %26 to i64
  store i64 %27, i64* %RDX, align 8
  %28 = icmp ult i32 %26, %23
  %29 = icmp ult i32 %26, %25
  %30 = or i1 %28, %29
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %31, i8* %32, align 1
  %33 = and i32 %26, 255
  %34 = call i32 @llvm.ctpop.i32(i32 %33)
  %35 = trunc i32 %34 to i8
  %36 = and i8 %35, 1
  %37 = xor i8 %36, 1
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %37, i8* %38, align 1
  %39 = xor i32 %25, %23
  %40 = xor i32 %39, %26
  %41 = lshr i32 %40, 4
  %42 = trunc i32 %41 to i8
  %43 = and i8 %42, 1
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %43, i8* %44, align 1
  %45 = icmp eq i32 %26, 0
  %46 = zext i1 %45 to i8
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %46, i8* %47, align 1
  %48 = lshr i32 %26, 31
  %49 = trunc i32 %48 to i8
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %49, i8* %50, align 1
  %51 = lshr i32 %23, 31
  %52 = lshr i32 %25, 31
  %53 = xor i32 %48, %51
  %54 = xor i32 %48, %52
  %55 = add i32 %53, %54
  %56 = icmp eq i32 %55, 2
  %57 = zext i1 %56 to i8
  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %57, i8* %58, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__0x5a8__rax__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %18 = add i64 %15, 1448
  %19 = add i64 %18, %17
  %20 = load i32, i32* %EDX
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = inttoptr i64 %19 to i32*
  store i32 %20, i32* %24
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x9__0x48__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 72
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sub i32 %14, 9
  %16 = icmp ult i32 %14, 9
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
  %25 = xor i32 %14, 9
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

define %struct.Memory* @routine_je_.L_43b8a0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0xa__0x48__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 72
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sub i32 %14, 10
  %16 = icmp ult i32 %14, 10
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
  %25 = xor i32 %14, 10
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

define %struct.Memory* @routine_cmpl__0xd__0x48__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 72
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

define %struct.Memory* @routine_jne_.L_43b95c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_0x20c__rcx____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 524
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x2a0__rax__rcx_4____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %18 = add i64 %15, 672
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 7
  store i64 %21, i64* %PC
  %22 = inttoptr i64 %19 to i32*
  %23 = load i32, i32* %22
  %24 = zext i32 %23 to i64
  store i64 %24, i64* %RDX, align 8
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

define %struct.Memory* @routine_movl__edx__0x2a0__rax__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %18 = add i64 %15, 672
  %19 = add i64 %18, %17
  %20 = load i32, i32* %EDX
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = inttoptr i64 %19 to i32*
  store i32 %20, i32* %24
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x1cc__rax____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 460
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_andl__0xf___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = and i64 15, %9
  %13 = trunc i64 %12 to i32
  store i64 %12, i64* %RDX, align 8
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

define %struct.Memory* @routine_je_.L_43b957(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x0__0x23c__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 572
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

define %struct.Memory* @routine_je_.L_43b920(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_addq__0x48___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 72, %9
  store i64 %12, i64* %RAX, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 72
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
  %25 = xor i64 72, %9
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

define %struct.Memory* @routine_imulq__0x3c___rcx___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = sext i64 %9 to i128
  %13 = and i128 %12, -18446744073709551616
  %14 = zext i64 %9 to i128
  %15 = or i128 %13, %14
  %16 = mul i128 60, %15
  %17 = trunc i128 %16 to i64
  store i64 %17, i64* %RCX, align 8
  %18 = sext i64 %17 to i128
  %19 = icmp ne i128 %18, %16
  %20 = zext i1 %19 to i8
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %20, i8* %21, align 1
  %22 = trunc i128 %16 to i32
  %23 = and i32 %22, 255
  %24 = call i32 @llvm.ctpop.i32(i32 %23)
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = xor i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %27, i8* %28, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %29, align 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %30, align 1
  %31 = lshr i64 %17, 63
  %32 = trunc i64 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %20, i8* %34, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_0x48__rcx____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 72
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %RCX, align 8
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

define %struct.Memory* @routine_jmpq_.L_43b952(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_addq__0x174___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 372, %9
  store i64 %12, i64* %RAX, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 372
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
  %25 = xor i64 372, %9
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

define %struct.Memory* @routine_jmpq_.L_43b957(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_43b95c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_addq__0x2d8___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 728, %9
  store i64 %12, i64* %RAX, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 728
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
  %25 = xor i64 728, %9
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

define %struct.Memory* @routine_movl_0xc__rax____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_addq__0x404___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 1028, %9
  store i64 %12, i64* %RAX, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 1028
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
  %25 = xor i64 1028, %9
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

define %struct.Memory* @routine_cmpl__0x2__0x18__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_je_.L_43bbfc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x8__0x48__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 72
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

define %struct.Memory* @routine_jne_.L_43bb43(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x4__MINUS0x14__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jge_.L_43bb3e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x14__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0__0x1d8__rax__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %12, 472
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 8
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %16 to i32*
  %20 = load i32, i32* %19
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %21, align 1
  %22 = and i32 %20, 255
  %23 = call i32 @llvm.ctpop.i32(i32 %22)
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  %26 = xor i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %26, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %28, align 1
  %29 = icmp eq i32 %20, 0
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %30, i8* %31, align 1
  %32 = lshr i32 %20, 31
  %33 = trunc i32 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %33, i8* %34, align 1
  %35 = lshr i32 %20, 31
  %36 = xor i32 %32, %35
  %37 = add i32 %36, %35
  %38 = icmp eq i32 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jle_.L_43ba4a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 20
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_0x1d8__rcx__rdx_4____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %RDX
  %14 = mul i64 %13, 4
  %15 = add i64 %12, 472
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 8
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %16 to i32*
  %20 = load i32, i32* %19
  %21 = sext i32 %20 to i64
  store i64 %21, i64* %RCX, align 8
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

define %struct.Memory* @routine_movl__esi____rax__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 5
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RCX = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i32, i32* %ESI
  %20 = zext i32 %19 to i64
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 3
  store i64 %22, i64* %PC
  %23 = inttoptr i64 %18 to i32*
  store i32 %19, i32* %23
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_43ba7d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_addq__0x20___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 32, %9
  store i64 %12, i64* %RAX, align 8
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

define %struct.Memory* @routine_shlq__0x3___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = shl i64 %9, 2
  %13 = icmp slt i64 %12, 0
  %14 = shl i64 %12, 1
  store i64 %14, i64* %RCX, align 8
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

define %struct.Memory* @routine_movslq_0x23c__rcx____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 572
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x4__0x1d8__rax__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %12, 472
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 8
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %16 to i32*
  %20 = load i32, i32* %19
  %21 = sub i32 %20, 4
  %22 = icmp ult i32 %20, 4
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %23, i8* %24, align 1
  %25 = and i32 %21, 255
  %26 = call i32 @llvm.ctpop.i32(i32 %25)
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = xor i8 %28, 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %29, i8* %30, align 1
  %31 = xor i32 %20, 4
  %32 = xor i32 %31, %21
  %33 = lshr i32 %32, 4
  %34 = trunc i32 %33 to i8
  %35 = and i8 %34, 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %35, i8* %36, align 1
  %37 = icmp eq i32 %21, 0
  %38 = zext i1 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %38, i8* %39, align 1
  %40 = lshr i32 %21, 31
  %41 = trunc i32 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %41, i8* %42, align 1
  %43 = lshr i32 %20, 31
  %44 = xor i32 %40, %43
  %45 = add i32 %44, %43
  %46 = icmp eq i32 %45, 2
  %47 = zext i1 %46 to i8
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %47, i8* %48, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_43bb2b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_43baba(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_0x1cc__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 460
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_andl__0xf___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jne_.L_43bacf(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x2__0xc94__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 3220
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
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

define %struct.Memory* @routine_jne_.L_43bafc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__edx__0x10__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 16
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_43bb26(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_43bb2b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_43bb30(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_43b9eb(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_43bbf7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x0__0x48__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 72
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

define %struct.Memory* @routine_jl_.L_43bbf2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x3__0x48__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 72
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

define %struct.Memory* @routine_jg_.L_43bbf2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  store i8 %24, i8* %BRANCH_TAKEN, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %26 = select i1 %23, i64 %7, i64 %9
  store i64 %26, i64* %25, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_43bbf2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_43bbbb(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_43bbed(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_43bbf2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_43bbfc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x0__0x18__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_je_.L_43bc20(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x3__0x18__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jne_.L_43bc44(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl___rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, 2
  store i64 %14, i64* %PC
  %15 = inttoptr i64 %12 to i32*
  %16 = load i32, i32* %15
  %17 = zext i32 %16 to i64
  store i64 %17, i64* %RCX, align 8
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

define %struct.Memory* @routine_movl__ecx____rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i32, i32* %ECX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %12 to i32*
  store i32 %13, i32* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0xc__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_0x4__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, 4
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

define %struct.Memory* @routine_movl__ecx__0x4__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 4
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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
