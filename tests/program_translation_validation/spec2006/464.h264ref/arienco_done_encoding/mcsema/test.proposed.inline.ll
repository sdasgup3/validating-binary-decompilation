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
define %struct.Memory* @arienco_done_encoding(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_4015b0 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_4015b0, %struct.Memory** %MEMORY
  %loadMem_4015b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i697 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i698 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i
  %27 = load i64, i64* %PC.i697
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i697
  store i64 %26, i64* %RBP.i698, align 8
  store %struct.Memory* %loadMem_4015b1, %struct.Memory** %MEMORY
  %loadMem_4015b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i694 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 11
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RDI.i695 = bitcast %union.anon* %34 to i64*
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %36 = getelementptr inbounds %struct.GPR, %struct.GPR* %35, i32 0, i32 15
  %37 = getelementptr inbounds %struct.Reg, %struct.Reg* %36, i32 0, i32 0
  %RBP.i696 = bitcast %union.anon* %37 to i64*
  %38 = load i64, i64* %RBP.i696
  %39 = sub i64 %38, 8
  %40 = load i64, i64* %RDI.i695
  %41 = load i64, i64* %PC.i694
  %42 = add i64 %41, 4
  store i64 %42, i64* %PC.i694
  %43 = inttoptr i64 %39 to i64*
  store i64 %40, i64* %43
  store %struct.Memory* %loadMem_4015b4, %struct.Memory** %MEMORY
  %loadMem_4015b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %45 = getelementptr inbounds %struct.GPR, %struct.GPR* %44, i32 0, i32 33
  %46 = getelementptr inbounds %struct.Reg, %struct.Reg* %45, i32 0, i32 0
  %PC.i691 = bitcast %union.anon* %46 to i64*
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %48 = getelementptr inbounds %struct.GPR, %struct.GPR* %47, i32 0, i32 11
  %49 = getelementptr inbounds %struct.Reg, %struct.Reg* %48, i32 0, i32 0
  %RDI.i692 = bitcast %union.anon* %49 to i64*
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %51 = getelementptr inbounds %struct.GPR, %struct.GPR* %50, i32 0, i32 15
  %52 = getelementptr inbounds %struct.Reg, %struct.Reg* %51, i32 0, i32 0
  %RBP.i693 = bitcast %union.anon* %52 to i64*
  %53 = load i64, i64* %RBP.i693
  %54 = sub i64 %53, 8
  %55 = load i64, i64* %PC.i691
  %56 = add i64 %55, 4
  store i64 %56, i64* %PC.i691
  %57 = inttoptr i64 %54 to i64*
  %58 = load i64, i64* %57
  store i64 %58, i64* %RDI.i692, align 8
  store %struct.Memory* %loadMem_4015b8, %struct.Memory** %MEMORY
  %loadMem_4015bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %59 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %60 = getelementptr inbounds %struct.GPR, %struct.GPR* %59, i32 0, i32 33
  %61 = getelementptr inbounds %struct.Reg, %struct.Reg* %60, i32 0, i32 0
  %PC.i688 = bitcast %union.anon* %61 to i64*
  %62 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %63 = getelementptr inbounds %struct.GPR, %struct.GPR* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.Reg, %struct.Reg* %63, i32 0, i32 0
  %RAX.i689 = bitcast %union.anon* %64 to i64*
  %65 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %66 = getelementptr inbounds %struct.GPR, %struct.GPR* %65, i32 0, i32 11
  %67 = getelementptr inbounds %struct.Reg, %struct.Reg* %66, i32 0, i32 0
  %RDI.i690 = bitcast %union.anon* %67 to i64*
  %68 = load i64, i64* %RDI.i690
  %69 = add i64 %68, 8
  %70 = load i64, i64* %PC.i688
  %71 = add i64 %70, 3
  store i64 %71, i64* %PC.i688
  %72 = inttoptr i64 %69 to i32*
  %73 = load i32, i32* %72
  %74 = zext i32 %73 to i64
  store i64 %74, i64* %RAX.i689, align 8
  store %struct.Memory* %loadMem_4015bc, %struct.Memory** %MEMORY
  %loadMem_4015bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %75 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %76 = getelementptr inbounds %struct.GPR, %struct.GPR* %75, i32 0, i32 33
  %77 = getelementptr inbounds %struct.Reg, %struct.Reg* %76, i32 0, i32 0
  %PC.i686 = bitcast %union.anon* %77 to i64*
  %78 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %79 = getelementptr inbounds %struct.GPR, %struct.GPR* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.Reg, %struct.Reg* %79, i32 0, i32 0
  %RAX.i687 = bitcast %union.anon* %80 to i64*
  %81 = load i64, i64* %RAX.i687
  %82 = load i64, i64* %PC.i686
  %83 = add i64 %82, 2
  store i64 %83, i64* %PC.i686
  %84 = trunc i64 %81 to i32
  %85 = shl i32 %84, 1
  %86 = icmp slt i32 %84, 0
  %87 = icmp slt i32 %85, 0
  %88 = xor i1 %86, %87
  %89 = zext i32 %85 to i64
  store i64 %89, i64* %RAX.i687, align 8
  %90 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %91 = zext i1 %86 to i8
  store i8 %91, i8* %90, align 1
  %92 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %93 = and i32 %85, 254
  %94 = call i32 @llvm.ctpop.i32(i32 %93)
  %95 = trunc i32 %94 to i8
  %96 = and i8 %95, 1
  %97 = xor i8 %96, 1
  store i8 %97, i8* %92, align 1
  %98 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %98, align 1
  %99 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %100 = icmp eq i32 %85, 0
  %101 = zext i1 %100 to i8
  store i8 %101, i8* %99, align 1
  %102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %103 = lshr i32 %85, 31
  %104 = trunc i32 %103 to i8
  store i8 %104, i8* %102, align 1
  %105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %106 = zext i1 %88 to i8
  store i8 %106, i8* %105, align 1
  store %struct.Memory* %loadMem_4015bf, %struct.Memory** %MEMORY
  %loadMem_4015c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %108 = getelementptr inbounds %struct.GPR, %struct.GPR* %107, i32 0, i32 33
  %109 = getelementptr inbounds %struct.Reg, %struct.Reg* %108, i32 0, i32 0
  %PC.i683 = bitcast %union.anon* %109 to i64*
  %110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %111 = getelementptr inbounds %struct.GPR, %struct.GPR* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.Reg, %struct.Reg* %111, i32 0, i32 0
  %EAX.i684 = bitcast %union.anon* %112 to i32*
  %113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %114 = getelementptr inbounds %struct.GPR, %struct.GPR* %113, i32 0, i32 11
  %115 = getelementptr inbounds %struct.Reg, %struct.Reg* %114, i32 0, i32 0
  %RDI.i685 = bitcast %union.anon* %115 to i64*
  %116 = load i64, i64* %RDI.i685
  %117 = add i64 %116, 8
  %118 = load i32, i32* %EAX.i684
  %119 = zext i32 %118 to i64
  %120 = load i64, i64* %PC.i683
  %121 = add i64 %120, 3
  store i64 %121, i64* %PC.i683
  %122 = inttoptr i64 %117 to i32*
  store i32 %118, i32* %122
  store %struct.Memory* %loadMem_4015c2, %struct.Memory** %MEMORY
  %loadMem_4015c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %124 = getelementptr inbounds %struct.GPR, %struct.GPR* %123, i32 0, i32 33
  %125 = getelementptr inbounds %struct.Reg, %struct.Reg* %124, i32 0, i32 0
  %PC.i680 = bitcast %union.anon* %125 to i64*
  %126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %127 = getelementptr inbounds %struct.GPR, %struct.GPR* %126, i32 0, i32 11
  %128 = getelementptr inbounds %struct.Reg, %struct.Reg* %127, i32 0, i32 0
  %RDI.i681 = bitcast %union.anon* %128 to i64*
  %129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %130 = getelementptr inbounds %struct.GPR, %struct.GPR* %129, i32 0, i32 15
  %131 = getelementptr inbounds %struct.Reg, %struct.Reg* %130, i32 0, i32 0
  %RBP.i682 = bitcast %union.anon* %131 to i64*
  %132 = load i64, i64* %RBP.i682
  %133 = sub i64 %132, 8
  %134 = load i64, i64* %PC.i680
  %135 = add i64 %134, 4
  store i64 %135, i64* %PC.i680
  %136 = inttoptr i64 %133 to i64*
  %137 = load i64, i64* %136
  store i64 %137, i64* %RDI.i681, align 8
  store %struct.Memory* %loadMem_4015c5, %struct.Memory** %MEMORY
  %loadMem_4015c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %139 = getelementptr inbounds %struct.GPR, %struct.GPR* %138, i32 0, i32 33
  %140 = getelementptr inbounds %struct.Reg, %struct.Reg* %139, i32 0, i32 0
  %PC.i677 = bitcast %union.anon* %140 to i64*
  %141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %142 = getelementptr inbounds %struct.GPR, %struct.GPR* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.Reg, %struct.Reg* %142, i32 0, i32 0
  %RAX.i678 = bitcast %union.anon* %143 to i64*
  %144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %145 = getelementptr inbounds %struct.GPR, %struct.GPR* %144, i32 0, i32 11
  %146 = getelementptr inbounds %struct.Reg, %struct.Reg* %145, i32 0, i32 0
  %RDI.i679 = bitcast %union.anon* %146 to i64*
  %147 = load i64, i64* %RDI.i679
  %148 = load i64, i64* %PC.i677
  %149 = add i64 %148, 2
  store i64 %149, i64* %PC.i677
  %150 = inttoptr i64 %147 to i32*
  %151 = load i32, i32* %150
  %152 = zext i32 %151 to i64
  store i64 %152, i64* %RAX.i678, align 8
  store %struct.Memory* %loadMem_4015c9, %struct.Memory** %MEMORY
  %loadMem_4015cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %154 = getelementptr inbounds %struct.GPR, %struct.GPR* %153, i32 0, i32 33
  %155 = getelementptr inbounds %struct.Reg, %struct.Reg* %154, i32 0, i32 0
  %PC.i675 = bitcast %union.anon* %155 to i64*
  %156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %157 = getelementptr inbounds %struct.GPR, %struct.GPR* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.Reg, %struct.Reg* %157, i32 0, i32 0
  %RAX.i676 = bitcast %union.anon* %158 to i64*
  %159 = load i64, i64* %RAX.i676
  %160 = load i64, i64* %PC.i675
  %161 = add i64 %160, 3
  store i64 %161, i64* %PC.i675
  %162 = and i64 %159, 4294967295
  %163 = lshr i64 %162, 8
  %164 = trunc i64 %163 to i8
  %165 = and i8 %164, 1
  %166 = lshr i64 %163, 1
  %167 = trunc i64 %166 to i32
  %168 = and i32 %167, 2147483647
  %169 = zext i32 %168 to i64
  store i64 %169, i64* %RAX.i676, align 8
  %170 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %165, i8* %170, align 1
  %171 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %172 = and i32 %167, 255
  %173 = call i32 @llvm.ctpop.i32(i32 %172)
  %174 = trunc i32 %173 to i8
  %175 = and i8 %174, 1
  %176 = xor i8 %175, 1
  store i8 %176, i8* %171, align 1
  %177 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %177, align 1
  %178 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %179 = icmp eq i32 %168, 0
  %180 = zext i1 %179 to i8
  store i8 %180, i8* %178, align 1
  %181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %181, align 1
  %182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %182, align 1
  store %struct.Memory* %loadMem_4015cb, %struct.Memory** %MEMORY
  %loadMem_4015ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %184 = getelementptr inbounds %struct.GPR, %struct.GPR* %183, i32 0, i32 33
  %185 = getelementptr inbounds %struct.Reg, %struct.Reg* %184, i32 0, i32 0
  %PC.i673 = bitcast %union.anon* %185 to i64*
  %186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %187 = getelementptr inbounds %struct.GPR, %struct.GPR* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.Reg, %struct.Reg* %187, i32 0, i32 0
  %RAX.i674 = bitcast %union.anon* %188 to i64*
  %189 = load i64, i64* %RAX.i674
  %190 = load i64, i64* %PC.i673
  %191 = add i64 %190, 3
  store i64 %191, i64* %PC.i673
  %192 = and i64 1, %189
  %193 = trunc i64 %192 to i32
  store i64 %192, i64* %RAX.i674, align 8
  %194 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %194, align 1
  %195 = and i32 %193, 255
  %196 = call i32 @llvm.ctpop.i32(i32 %195)
  %197 = trunc i32 %196 to i8
  %198 = and i8 %197, 1
  %199 = xor i8 %198, 1
  %200 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %199, i8* %200, align 1
  %201 = icmp eq i32 %193, 0
  %202 = zext i1 %201 to i8
  %203 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %202, i8* %203, align 1
  %204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %204, align 1
  %205 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %205, align 1
  %206 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %206, align 1
  store %struct.Memory* %loadMem_4015ce, %struct.Memory** %MEMORY
  %loadMem_4015d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %208 = getelementptr inbounds %struct.GPR, %struct.GPR* %207, i32 0, i32 33
  %209 = getelementptr inbounds %struct.Reg, %struct.Reg* %208, i32 0, i32 0
  %PC.i670 = bitcast %union.anon* %209 to i64*
  %210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %211 = getelementptr inbounds %struct.GPR, %struct.GPR* %210, i32 0, i32 11
  %212 = getelementptr inbounds %struct.Reg, %struct.Reg* %211, i32 0, i32 0
  %RDI.i671 = bitcast %union.anon* %212 to i64*
  %213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %214 = getelementptr inbounds %struct.GPR, %struct.GPR* %213, i32 0, i32 15
  %215 = getelementptr inbounds %struct.Reg, %struct.Reg* %214, i32 0, i32 0
  %RBP.i672 = bitcast %union.anon* %215 to i64*
  %216 = load i64, i64* %RBP.i672
  %217 = sub i64 %216, 8
  %218 = load i64, i64* %PC.i670
  %219 = add i64 %218, 4
  store i64 %219, i64* %PC.i670
  %220 = inttoptr i64 %217 to i64*
  %221 = load i64, i64* %220
  store i64 %221, i64* %RDI.i671, align 8
  store %struct.Memory* %loadMem_4015d1, %struct.Memory** %MEMORY
  %loadMem_4015d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %223 = getelementptr inbounds %struct.GPR, %struct.GPR* %222, i32 0, i32 33
  %224 = getelementptr inbounds %struct.Reg, %struct.Reg* %223, i32 0, i32 0
  %PC.i667 = bitcast %union.anon* %224 to i64*
  %225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %226 = getelementptr inbounds %struct.GPR, %struct.GPR* %225, i32 0, i32 1
  %227 = getelementptr inbounds %struct.Reg, %struct.Reg* %226, i32 0, i32 0
  %RAX.i668 = bitcast %union.anon* %227 to i64*
  %228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %229 = getelementptr inbounds %struct.GPR, %struct.GPR* %228, i32 0, i32 11
  %230 = getelementptr inbounds %struct.Reg, %struct.Reg* %229, i32 0, i32 0
  %RDI.i669 = bitcast %union.anon* %230 to i64*
  %231 = load i64, i64* %RAX.i668
  %232 = load i64, i64* %RDI.i669
  %233 = add i64 %232, 8
  %234 = load i64, i64* %PC.i667
  %235 = add i64 %234, 3
  store i64 %235, i64* %PC.i667
  %236 = trunc i64 %231 to i32
  %237 = inttoptr i64 %233 to i32*
  %238 = load i32, i32* %237
  %239 = or i32 %238, %236
  %240 = zext i32 %239 to i64
  store i64 %240, i64* %RAX.i668, align 8
  %241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %241, align 1
  %242 = and i32 %239, 255
  %243 = call i32 @llvm.ctpop.i32(i32 %242)
  %244 = trunc i32 %243 to i8
  %245 = and i8 %244, 1
  %246 = xor i8 %245, 1
  %247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %246, i8* %247, align 1
  %248 = icmp eq i32 %239, 0
  %249 = zext i1 %248 to i8
  %250 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %249, i8* %250, align 1
  %251 = lshr i32 %239, 31
  %252 = trunc i32 %251 to i8
  %253 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %252, i8* %253, align 1
  %254 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %254, align 1
  %255 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %255, align 1
  store %struct.Memory* %loadMem_4015d5, %struct.Memory** %MEMORY
  %loadMem_4015d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %257 = getelementptr inbounds %struct.GPR, %struct.GPR* %256, i32 0, i32 33
  %258 = getelementptr inbounds %struct.Reg, %struct.Reg* %257, i32 0, i32 0
  %PC.i664 = bitcast %union.anon* %258 to i64*
  %259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %260 = getelementptr inbounds %struct.GPR, %struct.GPR* %259, i32 0, i32 1
  %261 = getelementptr inbounds %struct.Reg, %struct.Reg* %260, i32 0, i32 0
  %EAX.i665 = bitcast %union.anon* %261 to i32*
  %262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %263 = getelementptr inbounds %struct.GPR, %struct.GPR* %262, i32 0, i32 11
  %264 = getelementptr inbounds %struct.Reg, %struct.Reg* %263, i32 0, i32 0
  %RDI.i666 = bitcast %union.anon* %264 to i64*
  %265 = load i64, i64* %RDI.i666
  %266 = add i64 %265, 8
  %267 = load i32, i32* %EAX.i665
  %268 = zext i32 %267 to i64
  %269 = load i64, i64* %PC.i664
  %270 = add i64 %269, 3
  store i64 %270, i64* %PC.i664
  %271 = inttoptr i64 %266 to i32*
  store i32 %267, i32* %271
  store %struct.Memory* %loadMem_4015d8, %struct.Memory** %MEMORY
  %loadMem_4015db = load %struct.Memory*, %struct.Memory** %MEMORY
  %272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %273 = getelementptr inbounds %struct.GPR, %struct.GPR* %272, i32 0, i32 33
  %274 = getelementptr inbounds %struct.Reg, %struct.Reg* %273, i32 0, i32 0
  %PC.i661 = bitcast %union.anon* %274 to i64*
  %275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %276 = getelementptr inbounds %struct.GPR, %struct.GPR* %275, i32 0, i32 11
  %277 = getelementptr inbounds %struct.Reg, %struct.Reg* %276, i32 0, i32 0
  %RDI.i662 = bitcast %union.anon* %277 to i64*
  %278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %279 = getelementptr inbounds %struct.GPR, %struct.GPR* %278, i32 0, i32 15
  %280 = getelementptr inbounds %struct.Reg, %struct.Reg* %279, i32 0, i32 0
  %RBP.i663 = bitcast %union.anon* %280 to i64*
  %281 = load i64, i64* %RBP.i663
  %282 = sub i64 %281, 8
  %283 = load i64, i64* %PC.i661
  %284 = add i64 %283, 4
  store i64 %284, i64* %PC.i661
  %285 = inttoptr i64 %282 to i64*
  %286 = load i64, i64* %285
  store i64 %286, i64* %RDI.i662, align 8
  store %struct.Memory* %loadMem_4015db, %struct.Memory** %MEMORY
  %loadMem_4015df = load %struct.Memory*, %struct.Memory** %MEMORY
  %287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %288 = getelementptr inbounds %struct.GPR, %struct.GPR* %287, i32 0, i32 33
  %289 = getelementptr inbounds %struct.Reg, %struct.Reg* %288, i32 0, i32 0
  %PC.i658 = bitcast %union.anon* %289 to i64*
  %290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %291 = getelementptr inbounds %struct.GPR, %struct.GPR* %290, i32 0, i32 1
  %292 = getelementptr inbounds %struct.Reg, %struct.Reg* %291, i32 0, i32 0
  %RAX.i659 = bitcast %union.anon* %292 to i64*
  %293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %294 = getelementptr inbounds %struct.GPR, %struct.GPR* %293, i32 0, i32 11
  %295 = getelementptr inbounds %struct.Reg, %struct.Reg* %294, i32 0, i32 0
  %RDI.i660 = bitcast %union.anon* %295 to i64*
  %296 = load i64, i64* %RDI.i660
  %297 = add i64 %296, 12
  %298 = load i64, i64* %PC.i658
  %299 = add i64 %298, 3
  store i64 %299, i64* %PC.i658
  %300 = inttoptr i64 %297 to i32*
  %301 = load i32, i32* %300
  %302 = zext i32 %301 to i64
  store i64 %302, i64* %RAX.i659, align 8
  store %struct.Memory* %loadMem_4015df, %struct.Memory** %MEMORY
  %loadMem_4015e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %304 = getelementptr inbounds %struct.GPR, %struct.GPR* %303, i32 0, i32 33
  %305 = getelementptr inbounds %struct.Reg, %struct.Reg* %304, i32 0, i32 0
  %PC.i656 = bitcast %union.anon* %305 to i64*
  %306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %307 = getelementptr inbounds %struct.GPR, %struct.GPR* %306, i32 0, i32 1
  %308 = getelementptr inbounds %struct.Reg, %struct.Reg* %307, i32 0, i32 0
  %RAX.i657 = bitcast %union.anon* %308 to i64*
  %309 = load i64, i64* %RAX.i657
  %310 = load i64, i64* %PC.i656
  %311 = add i64 %310, 3
  store i64 %311, i64* %PC.i656
  %312 = trunc i64 %309 to i32
  %313 = add i32 -1, %312
  %314 = zext i32 %313 to i64
  store i64 %314, i64* %RAX.i657, align 8
  %315 = icmp ult i32 %313, %312
  %316 = icmp ult i32 %313, -1
  %317 = or i1 %315, %316
  %318 = zext i1 %317 to i8
  %319 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %318, i8* %319, align 1
  %320 = and i32 %313, 255
  %321 = call i32 @llvm.ctpop.i32(i32 %320)
  %322 = trunc i32 %321 to i8
  %323 = and i8 %322, 1
  %324 = xor i8 %323, 1
  %325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %324, i8* %325, align 1
  %326 = xor i64 -1, %309
  %327 = trunc i64 %326 to i32
  %328 = xor i32 %327, %313
  %329 = lshr i32 %328, 4
  %330 = trunc i32 %329 to i8
  %331 = and i8 %330, 1
  %332 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %331, i8* %332, align 1
  %333 = icmp eq i32 %313, 0
  %334 = zext i1 %333 to i8
  %335 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %334, i8* %335, align 1
  %336 = lshr i32 %313, 31
  %337 = trunc i32 %336 to i8
  %338 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %337, i8* %338, align 1
  %339 = lshr i32 %312, 31
  %340 = xor i32 %336, %339
  %341 = xor i32 %336, 1
  %342 = add i32 %340, %341
  %343 = icmp eq i32 %342, 2
  %344 = zext i1 %343 to i8
  %345 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %344, i8* %345, align 1
  store %struct.Memory* %loadMem_4015e2, %struct.Memory** %MEMORY
  %loadMem_4015e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %347 = getelementptr inbounds %struct.GPR, %struct.GPR* %346, i32 0, i32 33
  %348 = getelementptr inbounds %struct.Reg, %struct.Reg* %347, i32 0, i32 0
  %PC.i653 = bitcast %union.anon* %348 to i64*
  %349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %350 = getelementptr inbounds %struct.GPR, %struct.GPR* %349, i32 0, i32 1
  %351 = getelementptr inbounds %struct.Reg, %struct.Reg* %350, i32 0, i32 0
  %EAX.i654 = bitcast %union.anon* %351 to i32*
  %352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %353 = getelementptr inbounds %struct.GPR, %struct.GPR* %352, i32 0, i32 11
  %354 = getelementptr inbounds %struct.Reg, %struct.Reg* %353, i32 0, i32 0
  %RDI.i655 = bitcast %union.anon* %354 to i64*
  %355 = load i64, i64* %RDI.i655
  %356 = add i64 %355, 12
  %357 = load i32, i32* %EAX.i654
  %358 = zext i32 %357 to i64
  %359 = load i64, i64* %PC.i653
  %360 = add i64 %359, 3
  store i64 %360, i64* %PC.i653
  %361 = inttoptr i64 %356 to i32*
  store i32 %357, i32* %361
  store %struct.Memory* %loadMem_4015e5, %struct.Memory** %MEMORY
  %loadMem_4015e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %363 = getelementptr inbounds %struct.GPR, %struct.GPR* %362, i32 0, i32 33
  %364 = getelementptr inbounds %struct.Reg, %struct.Reg* %363, i32 0, i32 0
  %PC.i651 = bitcast %union.anon* %364 to i64*
  %365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %366 = getelementptr inbounds %struct.GPR, %struct.GPR* %365, i32 0, i32 1
  %367 = getelementptr inbounds %struct.Reg, %struct.Reg* %366, i32 0, i32 0
  %EAX.i652 = bitcast %union.anon* %367 to i32*
  %368 = load i32, i32* %EAX.i652
  %369 = zext i32 %368 to i64
  %370 = load i64, i64* %PC.i651
  %371 = add i64 %370, 3
  store i64 %371, i64* %PC.i651
  %372 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %372, align 1
  %373 = and i32 %368, 255
  %374 = call i32 @llvm.ctpop.i32(i32 %373)
  %375 = trunc i32 %374 to i8
  %376 = and i8 %375, 1
  %377 = xor i8 %376, 1
  %378 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %377, i8* %378, align 1
  %379 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %379, align 1
  %380 = icmp eq i32 %368, 0
  %381 = zext i1 %380 to i8
  %382 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %381, i8* %382, align 1
  %383 = lshr i32 %368, 31
  %384 = trunc i32 %383 to i8
  %385 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %384, i8* %385, align 1
  %386 = lshr i32 %368, 31
  %387 = xor i32 %383, %386
  %388 = add i32 %387, %386
  %389 = icmp eq i32 %388, 2
  %390 = zext i1 %389 to i8
  %391 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %390, i8* %391, align 1
  store %struct.Memory* %loadMem_4015e8, %struct.Memory** %MEMORY
  %loadMem_4015eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %393 = getelementptr inbounds %struct.GPR, %struct.GPR* %392, i32 0, i32 33
  %394 = getelementptr inbounds %struct.Reg, %struct.Reg* %393, i32 0, i32 0
  %PC.i650 = bitcast %union.anon* %394 to i64*
  %395 = load i64, i64* %PC.i650
  %396 = add i64 %395, 107
  %397 = load i64, i64* %PC.i650
  %398 = add i64 %397, 6
  %399 = load i64, i64* %PC.i650
  %400 = add i64 %399, 6
  store i64 %400, i64* %PC.i650
  %401 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %402 = load i8, i8* %401, align 1
  %403 = icmp eq i8 %402, 0
  %404 = zext i1 %403 to i8
  store i8 %404, i8* %BRANCH_TAKEN, align 1
  %405 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %406 = select i1 %403, i64 %396, i64 %398
  store i64 %406, i64* %405, align 8
  store %struct.Memory* %loadMem_4015eb, %struct.Memory** %MEMORY
  %loadBr_4015eb = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4015eb = icmp eq i8 %loadBr_4015eb, 1
  br i1 %cmpBr_4015eb, label %block_.L_401656, label %block_4015f1

block_4015f1:                                     ; preds = %entry
  %loadMem_4015f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %407 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %408 = getelementptr inbounds %struct.GPR, %struct.GPR* %407, i32 0, i32 33
  %409 = getelementptr inbounds %struct.Reg, %struct.Reg* %408, i32 0, i32 0
  %PC.i647 = bitcast %union.anon* %409 to i64*
  %410 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %411 = getelementptr inbounds %struct.GPR, %struct.GPR* %410, i32 0, i32 1
  %412 = getelementptr inbounds %struct.Reg, %struct.Reg* %411, i32 0, i32 0
  %RAX.i648 = bitcast %union.anon* %412 to i64*
  %413 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %414 = getelementptr inbounds %struct.GPR, %struct.GPR* %413, i32 0, i32 15
  %415 = getelementptr inbounds %struct.Reg, %struct.Reg* %414, i32 0, i32 0
  %RBP.i649 = bitcast %union.anon* %415 to i64*
  %416 = load i64, i64* %RBP.i649
  %417 = sub i64 %416, 8
  %418 = load i64, i64* %PC.i647
  %419 = add i64 %418, 4
  store i64 %419, i64* %PC.i647
  %420 = inttoptr i64 %417 to i64*
  %421 = load i64, i64* %420
  store i64 %421, i64* %RAX.i648, align 8
  store %struct.Memory* %loadMem_4015f1, %struct.Memory** %MEMORY
  %loadMem_4015f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %422 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %423 = getelementptr inbounds %struct.GPR, %struct.GPR* %422, i32 0, i32 33
  %424 = getelementptr inbounds %struct.Reg, %struct.Reg* %423, i32 0, i32 0
  %PC.i644 = bitcast %union.anon* %424 to i64*
  %425 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %426 = getelementptr inbounds %struct.GPR, %struct.GPR* %425, i32 0, i32 1
  %427 = getelementptr inbounds %struct.Reg, %struct.Reg* %426, i32 0, i32 0
  %RAX.i645 = bitcast %union.anon* %427 to i64*
  %428 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %429 = getelementptr inbounds %struct.GPR, %struct.GPR* %428, i32 0, i32 5
  %430 = getelementptr inbounds %struct.Reg, %struct.Reg* %429, i32 0, i32 0
  %RCX.i646 = bitcast %union.anon* %430 to i64*
  %431 = load i64, i64* %RAX.i645
  %432 = add i64 %431, 8
  %433 = load i64, i64* %PC.i644
  %434 = add i64 %433, 3
  store i64 %434, i64* %PC.i644
  %435 = inttoptr i64 %432 to i32*
  %436 = load i32, i32* %435
  %437 = zext i32 %436 to i64
  store i64 %437, i64* %RCX.i646, align 8
  store %struct.Memory* %loadMem_4015f5, %struct.Memory** %MEMORY
  %loadMem_4015f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %439 = getelementptr inbounds %struct.GPR, %struct.GPR* %438, i32 0, i32 33
  %440 = getelementptr inbounds %struct.Reg, %struct.Reg* %439, i32 0, i32 0
  %PC.i641 = bitcast %union.anon* %440 to i64*
  %441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %442 = getelementptr inbounds %struct.GPR, %struct.GPR* %441, i32 0, i32 5
  %443 = getelementptr inbounds %struct.Reg, %struct.Reg* %442, i32 0, i32 0
  %444 = bitcast %union.anon* %443 to %struct.anon.2*
  %CL.i642 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %444, i32 0, i32 0
  %445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %446 = getelementptr inbounds %struct.GPR, %struct.GPR* %445, i32 0, i32 7
  %447 = getelementptr inbounds %struct.Reg, %struct.Reg* %446, i32 0, i32 0
  %448 = bitcast %union.anon* %447 to %struct.anon.2*
  %DL.i643 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %448, i32 0, i32 0
  %449 = load i8, i8* %CL.i642
  %450 = zext i8 %449 to i64
  %451 = load i64, i64* %PC.i641
  %452 = add i64 %451, 2
  store i64 %452, i64* %PC.i641
  store i8 %449, i8* %DL.i643, align 1
  store %struct.Memory* %loadMem_4015f8, %struct.Memory** %MEMORY
  %loadMem_4015fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %454 = getelementptr inbounds %struct.GPR, %struct.GPR* %453, i32 0, i32 33
  %455 = getelementptr inbounds %struct.Reg, %struct.Reg* %454, i32 0, i32 0
  %PC.i638 = bitcast %union.anon* %455 to i64*
  %456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %457 = getelementptr inbounds %struct.GPR, %struct.GPR* %456, i32 0, i32 1
  %458 = getelementptr inbounds %struct.Reg, %struct.Reg* %457, i32 0, i32 0
  %RAX.i639 = bitcast %union.anon* %458 to i64*
  %459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %460 = getelementptr inbounds %struct.GPR, %struct.GPR* %459, i32 0, i32 15
  %461 = getelementptr inbounds %struct.Reg, %struct.Reg* %460, i32 0, i32 0
  %RBP.i640 = bitcast %union.anon* %461 to i64*
  %462 = load i64, i64* %RBP.i640
  %463 = sub i64 %462, 8
  %464 = load i64, i64* %PC.i638
  %465 = add i64 %464, 4
  store i64 %465, i64* %PC.i638
  %466 = inttoptr i64 %463 to i64*
  %467 = load i64, i64* %466
  store i64 %467, i64* %RAX.i639, align 8
  store %struct.Memory* %loadMem_4015fa, %struct.Memory** %MEMORY
  %loadMem_4015fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %469 = getelementptr inbounds %struct.GPR, %struct.GPR* %468, i32 0, i32 33
  %470 = getelementptr inbounds %struct.Reg, %struct.Reg* %469, i32 0, i32 0
  %PC.i636 = bitcast %union.anon* %470 to i64*
  %471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %472 = getelementptr inbounds %struct.GPR, %struct.GPR* %471, i32 0, i32 1
  %473 = getelementptr inbounds %struct.Reg, %struct.Reg* %472, i32 0, i32 0
  %RAX.i637 = bitcast %union.anon* %473 to i64*
  %474 = load i64, i64* %RAX.i637
  %475 = add i64 %474, 24
  %476 = load i64, i64* %PC.i636
  %477 = add i64 %476, 4
  store i64 %477, i64* %PC.i636
  %478 = inttoptr i64 %475 to i64*
  %479 = load i64, i64* %478
  store i64 %479, i64* %RAX.i637, align 8
  store %struct.Memory* %loadMem_4015fe, %struct.Memory** %MEMORY
  %loadMem_401602 = load %struct.Memory*, %struct.Memory** %MEMORY
  %480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %481 = getelementptr inbounds %struct.GPR, %struct.GPR* %480, i32 0, i32 33
  %482 = getelementptr inbounds %struct.Reg, %struct.Reg* %481, i32 0, i32 0
  %PC.i633 = bitcast %union.anon* %482 to i64*
  %483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %484 = getelementptr inbounds %struct.GPR, %struct.GPR* %483, i32 0, i32 9
  %485 = getelementptr inbounds %struct.Reg, %struct.Reg* %484, i32 0, i32 0
  %RSI.i634 = bitcast %union.anon* %485 to i64*
  %486 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %487 = getelementptr inbounds %struct.GPR, %struct.GPR* %486, i32 0, i32 15
  %488 = getelementptr inbounds %struct.Reg, %struct.Reg* %487, i32 0, i32 0
  %RBP.i635 = bitcast %union.anon* %488 to i64*
  %489 = load i64, i64* %RBP.i635
  %490 = sub i64 %489, 8
  %491 = load i64, i64* %PC.i633
  %492 = add i64 %491, 4
  store i64 %492, i64* %PC.i633
  %493 = inttoptr i64 %490 to i64*
  %494 = load i64, i64* %493
  store i64 %494, i64* %RSI.i634, align 8
  store %struct.Memory* %loadMem_401602, %struct.Memory** %MEMORY
  %loadMem_401606 = load %struct.Memory*, %struct.Memory** %MEMORY
  %495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %496 = getelementptr inbounds %struct.GPR, %struct.GPR* %495, i32 0, i32 33
  %497 = getelementptr inbounds %struct.Reg, %struct.Reg* %496, i32 0, i32 0
  %PC.i631 = bitcast %union.anon* %497 to i64*
  %498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %499 = getelementptr inbounds %struct.GPR, %struct.GPR* %498, i32 0, i32 9
  %500 = getelementptr inbounds %struct.Reg, %struct.Reg* %499, i32 0, i32 0
  %RSI.i632 = bitcast %union.anon* %500 to i64*
  %501 = load i64, i64* %RSI.i632
  %502 = add i64 %501, 32
  %503 = load i64, i64* %PC.i631
  %504 = add i64 %503, 4
  store i64 %504, i64* %PC.i631
  %505 = inttoptr i64 %502 to i64*
  %506 = load i64, i64* %505
  store i64 %506, i64* %RSI.i632, align 8
  store %struct.Memory* %loadMem_401606, %struct.Memory** %MEMORY
  %loadMem_40160a = load %struct.Memory*, %struct.Memory** %MEMORY
  %507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %508 = getelementptr inbounds %struct.GPR, %struct.GPR* %507, i32 0, i32 33
  %509 = getelementptr inbounds %struct.Reg, %struct.Reg* %508, i32 0, i32 0
  %PC.i628 = bitcast %union.anon* %509 to i64*
  %510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %511 = getelementptr inbounds %struct.GPR, %struct.GPR* %510, i32 0, i32 5
  %512 = getelementptr inbounds %struct.Reg, %struct.Reg* %511, i32 0, i32 0
  %RCX.i629 = bitcast %union.anon* %512 to i64*
  %513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %514 = getelementptr inbounds %struct.GPR, %struct.GPR* %513, i32 0, i32 9
  %515 = getelementptr inbounds %struct.Reg, %struct.Reg* %514, i32 0, i32 0
  %RSI.i630 = bitcast %union.anon* %515 to i64*
  %516 = load i64, i64* %RSI.i630
  %517 = load i64, i64* %PC.i628
  %518 = add i64 %517, 2
  store i64 %518, i64* %PC.i628
  %519 = inttoptr i64 %516 to i32*
  %520 = load i32, i32* %519
  %521 = zext i32 %520 to i64
  store i64 %521, i64* %RCX.i629, align 8
  store %struct.Memory* %loadMem_40160a, %struct.Memory** %MEMORY
  %loadMem_40160c = load %struct.Memory*, %struct.Memory** %MEMORY
  %522 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %523 = getelementptr inbounds %struct.GPR, %struct.GPR* %522, i32 0, i32 33
  %524 = getelementptr inbounds %struct.Reg, %struct.Reg* %523, i32 0, i32 0
  %PC.i625 = bitcast %union.anon* %524 to i64*
  %525 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %526 = getelementptr inbounds %struct.GPR, %struct.GPR* %525, i32 0, i32 5
  %527 = getelementptr inbounds %struct.Reg, %struct.Reg* %526, i32 0, i32 0
  %ECX.i626 = bitcast %union.anon* %527 to i32*
  %528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %529 = getelementptr inbounds %struct.GPR, %struct.GPR* %528, i32 0, i32 11
  %530 = getelementptr inbounds %struct.Reg, %struct.Reg* %529, i32 0, i32 0
  %RDI.i627 = bitcast %union.anon* %530 to i64*
  %531 = load i32, i32* %ECX.i626
  %532 = zext i32 %531 to i64
  %533 = load i64, i64* %PC.i625
  %534 = add i64 %533, 2
  store i64 %534, i64* %PC.i625
  %535 = and i64 %532, 4294967295
  store i64 %535, i64* %RDI.i627, align 8
  store %struct.Memory* %loadMem_40160c, %struct.Memory** %MEMORY
  %loadMem_40160e = load %struct.Memory*, %struct.Memory** %MEMORY
  %536 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %537 = getelementptr inbounds %struct.GPR, %struct.GPR* %536, i32 0, i32 33
  %538 = getelementptr inbounds %struct.Reg, %struct.Reg* %537, i32 0, i32 0
  %PC.i623 = bitcast %union.anon* %538 to i64*
  %539 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %540 = getelementptr inbounds %struct.GPR, %struct.GPR* %539, i32 0, i32 11
  %541 = getelementptr inbounds %struct.Reg, %struct.Reg* %540, i32 0, i32 0
  %RDI.i624 = bitcast %union.anon* %541 to i64*
  %542 = load i64, i64* %RDI.i624
  %543 = load i64, i64* %PC.i623
  %544 = add i64 %543, 3
  store i64 %544, i64* %PC.i623
  %545 = trunc i64 %542 to i32
  %546 = add i32 1, %545
  %547 = zext i32 %546 to i64
  store i64 %547, i64* %RDI.i624, align 8
  %548 = icmp ult i32 %546, %545
  %549 = icmp ult i32 %546, 1
  %550 = or i1 %548, %549
  %551 = zext i1 %550 to i8
  %552 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %551, i8* %552, align 1
  %553 = and i32 %546, 255
  %554 = call i32 @llvm.ctpop.i32(i32 %553)
  %555 = trunc i32 %554 to i8
  %556 = and i8 %555, 1
  %557 = xor i8 %556, 1
  %558 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %557, i8* %558, align 1
  %559 = xor i64 1, %542
  %560 = trunc i64 %559 to i32
  %561 = xor i32 %560, %546
  %562 = lshr i32 %561, 4
  %563 = trunc i32 %562 to i8
  %564 = and i8 %563, 1
  %565 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %564, i8* %565, align 1
  %566 = icmp eq i32 %546, 0
  %567 = zext i1 %566 to i8
  %568 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %567, i8* %568, align 1
  %569 = lshr i32 %546, 31
  %570 = trunc i32 %569 to i8
  %571 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %570, i8* %571, align 1
  %572 = lshr i32 %545, 31
  %573 = xor i32 %569, %572
  %574 = add i32 %573, %569
  %575 = icmp eq i32 %574, 2
  %576 = zext i1 %575 to i8
  %577 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %576, i8* %577, align 1
  store %struct.Memory* %loadMem_40160e, %struct.Memory** %MEMORY
  %loadMem_401611 = load %struct.Memory*, %struct.Memory** %MEMORY
  %578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %579 = getelementptr inbounds %struct.GPR, %struct.GPR* %578, i32 0, i32 33
  %580 = getelementptr inbounds %struct.Reg, %struct.Reg* %579, i32 0, i32 0
  %PC.i620 = bitcast %union.anon* %580 to i64*
  %581 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %582 = getelementptr inbounds %struct.GPR, %struct.GPR* %581, i32 0, i32 11
  %583 = getelementptr inbounds %struct.Reg, %struct.Reg* %582, i32 0, i32 0
  %EDI.i621 = bitcast %union.anon* %583 to i32*
  %584 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %585 = getelementptr inbounds %struct.GPR, %struct.GPR* %584, i32 0, i32 9
  %586 = getelementptr inbounds %struct.Reg, %struct.Reg* %585, i32 0, i32 0
  %RSI.i622 = bitcast %union.anon* %586 to i64*
  %587 = load i64, i64* %RSI.i622
  %588 = load i32, i32* %EDI.i621
  %589 = zext i32 %588 to i64
  %590 = load i64, i64* %PC.i620
  %591 = add i64 %590, 2
  store i64 %591, i64* %PC.i620
  %592 = inttoptr i64 %587 to i32*
  store i32 %588, i32* %592
  store %struct.Memory* %loadMem_401611, %struct.Memory** %MEMORY
  %loadMem_401613 = load %struct.Memory*, %struct.Memory** %MEMORY
  %593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %594 = getelementptr inbounds %struct.GPR, %struct.GPR* %593, i32 0, i32 33
  %595 = getelementptr inbounds %struct.Reg, %struct.Reg* %594, i32 0, i32 0
  %PC.i617 = bitcast %union.anon* %595 to i64*
  %596 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %597 = getelementptr inbounds %struct.GPR, %struct.GPR* %596, i32 0, i32 5
  %598 = getelementptr inbounds %struct.Reg, %struct.Reg* %597, i32 0, i32 0
  %ECX.i618 = bitcast %union.anon* %598 to i32*
  %599 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %600 = getelementptr inbounds %struct.GPR, %struct.GPR* %599, i32 0, i32 9
  %601 = getelementptr inbounds %struct.Reg, %struct.Reg* %600, i32 0, i32 0
  %RSI.i619 = bitcast %union.anon* %601 to i64*
  %602 = load i32, i32* %ECX.i618
  %603 = zext i32 %602 to i64
  %604 = load i64, i64* %PC.i617
  %605 = add i64 %604, 3
  store i64 %605, i64* %PC.i617
  %606 = shl i64 %603, 32
  %607 = ashr exact i64 %606, 32
  store i64 %607, i64* %RSI.i619, align 8
  store %struct.Memory* %loadMem_401613, %struct.Memory** %MEMORY
  %loadMem_401616 = load %struct.Memory*, %struct.Memory** %MEMORY
  %608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %609 = getelementptr inbounds %struct.GPR, %struct.GPR* %608, i32 0, i32 33
  %610 = getelementptr inbounds %struct.Reg, %struct.Reg* %609, i32 0, i32 0
  %PC.i613 = bitcast %union.anon* %610 to i64*
  %611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %612 = getelementptr inbounds %struct.GPR, %struct.GPR* %611, i32 0, i32 7
  %613 = getelementptr inbounds %struct.Reg, %struct.Reg* %612, i32 0, i32 0
  %614 = bitcast %union.anon* %613 to %struct.anon.2*
  %DL.i614 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %614, i32 0, i32 0
  %615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %616 = getelementptr inbounds %struct.GPR, %struct.GPR* %615, i32 0, i32 1
  %617 = getelementptr inbounds %struct.Reg, %struct.Reg* %616, i32 0, i32 0
  %RAX.i615 = bitcast %union.anon* %617 to i64*
  %618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %619 = getelementptr inbounds %struct.GPR, %struct.GPR* %618, i32 0, i32 9
  %620 = getelementptr inbounds %struct.Reg, %struct.Reg* %619, i32 0, i32 0
  %RSI.i616 = bitcast %union.anon* %620 to i64*
  %621 = load i64, i64* %RAX.i615
  %622 = load i64, i64* %RSI.i616
  %623 = add i64 %622, %621
  %624 = load i8, i8* %DL.i614
  %625 = zext i8 %624 to i64
  %626 = load i64, i64* %PC.i613
  %627 = add i64 %626, 3
  store i64 %627, i64* %PC.i613
  %628 = inttoptr i64 %623 to i8*
  store i8 %624, i8* %628
  store %struct.Memory* %loadMem_401616, %struct.Memory** %MEMORY
  %loadMem_401619 = load %struct.Memory*, %struct.Memory** %MEMORY
  %629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %630 = getelementptr inbounds %struct.GPR, %struct.GPR* %629, i32 0, i32 33
  %631 = getelementptr inbounds %struct.Reg, %struct.Reg* %630, i32 0, i32 0
  %PC.i610 = bitcast %union.anon* %631 to i64*
  %632 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %633 = getelementptr inbounds %struct.GPR, %struct.GPR* %632, i32 0, i32 1
  %634 = getelementptr inbounds %struct.Reg, %struct.Reg* %633, i32 0, i32 0
  %RAX.i611 = bitcast %union.anon* %634 to i64*
  %635 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %636 = getelementptr inbounds %struct.GPR, %struct.GPR* %635, i32 0, i32 15
  %637 = getelementptr inbounds %struct.Reg, %struct.Reg* %636, i32 0, i32 0
  %RBP.i612 = bitcast %union.anon* %637 to i64*
  %638 = load i64, i64* %RBP.i612
  %639 = sub i64 %638, 8
  %640 = load i64, i64* %PC.i610
  %641 = add i64 %640, 4
  store i64 %641, i64* %PC.i610
  %642 = inttoptr i64 %639 to i64*
  %643 = load i64, i64* %642
  store i64 %643, i64* %RAX.i611, align 8
  store %struct.Memory* %loadMem_401619, %struct.Memory** %MEMORY
  %loadMem_40161d = load %struct.Memory*, %struct.Memory** %MEMORY
  %644 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %645 = getelementptr inbounds %struct.GPR, %struct.GPR* %644, i32 0, i32 33
  %646 = getelementptr inbounds %struct.Reg, %struct.Reg* %645, i32 0, i32 0
  %PC.i608 = bitcast %union.anon* %646 to i64*
  %647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %648 = getelementptr inbounds %struct.GPR, %struct.GPR* %647, i32 0, i32 1
  %649 = getelementptr inbounds %struct.Reg, %struct.Reg* %648, i32 0, i32 0
  %RAX.i609 = bitcast %union.anon* %649 to i64*
  %650 = load i64, i64* %RAX.i609
  %651 = add i64 %650, 12
  %652 = load i64, i64* %PC.i608
  %653 = add i64 %652, 7
  store i64 %653, i64* %PC.i608
  %654 = inttoptr i64 %651 to i32*
  store i32 8, i32* %654
  store %struct.Memory* %loadMem_40161d, %struct.Memory** %MEMORY
  br label %block_.L_401624

block_.L_401624:                                  ; preds = %block_401632, %block_4015f1
  %loadMem_401624 = load %struct.Memory*, %struct.Memory** %MEMORY
  %655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %656 = getelementptr inbounds %struct.GPR, %struct.GPR* %655, i32 0, i32 33
  %657 = getelementptr inbounds %struct.Reg, %struct.Reg* %656, i32 0, i32 0
  %PC.i605 = bitcast %union.anon* %657 to i64*
  %658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %659 = getelementptr inbounds %struct.GPR, %struct.GPR* %658, i32 0, i32 1
  %660 = getelementptr inbounds %struct.Reg, %struct.Reg* %659, i32 0, i32 0
  %RAX.i606 = bitcast %union.anon* %660 to i64*
  %661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %662 = getelementptr inbounds %struct.GPR, %struct.GPR* %661, i32 0, i32 15
  %663 = getelementptr inbounds %struct.Reg, %struct.Reg* %662, i32 0, i32 0
  %RBP.i607 = bitcast %union.anon* %663 to i64*
  %664 = load i64, i64* %RBP.i607
  %665 = sub i64 %664, 8
  %666 = load i64, i64* %PC.i605
  %667 = add i64 %666, 4
  store i64 %667, i64* %PC.i605
  %668 = inttoptr i64 %665 to i64*
  %669 = load i64, i64* %668
  store i64 %669, i64* %RAX.i606, align 8
  store %struct.Memory* %loadMem_401624, %struct.Memory** %MEMORY
  %loadMem_401628 = load %struct.Memory*, %struct.Memory** %MEMORY
  %670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %671 = getelementptr inbounds %struct.GPR, %struct.GPR* %670, i32 0, i32 33
  %672 = getelementptr inbounds %struct.Reg, %struct.Reg* %671, i32 0, i32 0
  %PC.i603 = bitcast %union.anon* %672 to i64*
  %673 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %674 = getelementptr inbounds %struct.GPR, %struct.GPR* %673, i32 0, i32 1
  %675 = getelementptr inbounds %struct.Reg, %struct.Reg* %674, i32 0, i32 0
  %RAX.i604 = bitcast %union.anon* %675 to i64*
  %676 = load i64, i64* %RAX.i604
  %677 = add i64 %676, 80
  %678 = load i64, i64* %PC.i603
  %679 = add i64 %678, 4
  store i64 %679, i64* %PC.i603
  %680 = inttoptr i64 %677 to i32*
  %681 = load i32, i32* %680
  %682 = sub i32 %681, 7
  %683 = icmp ult i32 %681, 7
  %684 = zext i1 %683 to i8
  %685 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %684, i8* %685, align 1
  %686 = and i32 %682, 255
  %687 = call i32 @llvm.ctpop.i32(i32 %686)
  %688 = trunc i32 %687 to i8
  %689 = and i8 %688, 1
  %690 = xor i8 %689, 1
  %691 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %690, i8* %691, align 1
  %692 = xor i32 %681, 7
  %693 = xor i32 %692, %682
  %694 = lshr i32 %693, 4
  %695 = trunc i32 %694 to i8
  %696 = and i8 %695, 1
  %697 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %696, i8* %697, align 1
  %698 = icmp eq i32 %682, 0
  %699 = zext i1 %698 to i8
  %700 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %699, i8* %700, align 1
  %701 = lshr i32 %682, 31
  %702 = trunc i32 %701 to i8
  %703 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %702, i8* %703, align 1
  %704 = lshr i32 %681, 31
  %705 = xor i32 %701, %704
  %706 = add i32 %705, %704
  %707 = icmp eq i32 %706, 2
  %708 = zext i1 %707 to i8
  %709 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %708, i8* %709, align 1
  store %struct.Memory* %loadMem_401628, %struct.Memory** %MEMORY
  %loadMem_40162c = load %struct.Memory*, %struct.Memory** %MEMORY
  %710 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %711 = getelementptr inbounds %struct.GPR, %struct.GPR* %710, i32 0, i32 33
  %712 = getelementptr inbounds %struct.Reg, %struct.Reg* %711, i32 0, i32 0
  %PC.i602 = bitcast %union.anon* %712 to i64*
  %713 = load i64, i64* %PC.i602
  %714 = add i64 %713, 37
  %715 = load i64, i64* %PC.i602
  %716 = add i64 %715, 6
  %717 = load i64, i64* %PC.i602
  %718 = add i64 %717, 6
  store i64 %718, i64* %PC.i602
  %719 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %720 = load i8, i8* %719, align 1
  %721 = icmp ne i8 %720, 0
  %722 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %723 = load i8, i8* %722, align 1
  %724 = icmp ne i8 %723, 0
  %725 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %726 = load i8, i8* %725, align 1
  %727 = icmp ne i8 %726, 0
  %728 = xor i1 %724, %727
  %729 = or i1 %721, %728
  %730 = zext i1 %729 to i8
  store i8 %730, i8* %BRANCH_TAKEN, align 1
  %731 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %732 = select i1 %729, i64 %714, i64 %716
  store i64 %732, i64* %731, align 8
  store %struct.Memory* %loadMem_40162c, %struct.Memory** %MEMORY
  %loadBr_40162c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40162c = icmp eq i8 %loadBr_40162c, 1
  br i1 %cmpBr_40162c, label %block_.L_401651, label %block_401632

block_401632:                                     ; preds = %block_.L_401624
  %loadMem_401632 = load %struct.Memory*, %struct.Memory** %MEMORY
  %733 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %734 = getelementptr inbounds %struct.GPR, %struct.GPR* %733, i32 0, i32 33
  %735 = getelementptr inbounds %struct.Reg, %struct.Reg* %734, i32 0, i32 0
  %PC.i599 = bitcast %union.anon* %735 to i64*
  %736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %737 = getelementptr inbounds %struct.GPR, %struct.GPR* %736, i32 0, i32 1
  %738 = getelementptr inbounds %struct.Reg, %struct.Reg* %737, i32 0, i32 0
  %RAX.i600 = bitcast %union.anon* %738 to i64*
  %739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %740 = getelementptr inbounds %struct.GPR, %struct.GPR* %739, i32 0, i32 15
  %741 = getelementptr inbounds %struct.Reg, %struct.Reg* %740, i32 0, i32 0
  %RBP.i601 = bitcast %union.anon* %741 to i64*
  %742 = load i64, i64* %RBP.i601
  %743 = sub i64 %742, 8
  %744 = load i64, i64* %PC.i599
  %745 = add i64 %744, 4
  store i64 %745, i64* %PC.i599
  %746 = inttoptr i64 %743 to i64*
  %747 = load i64, i64* %746
  store i64 %747, i64* %RAX.i600, align 8
  store %struct.Memory* %loadMem_401632, %struct.Memory** %MEMORY
  %loadMem_401636 = load %struct.Memory*, %struct.Memory** %MEMORY
  %748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %749 = getelementptr inbounds %struct.GPR, %struct.GPR* %748, i32 0, i32 33
  %750 = getelementptr inbounds %struct.Reg, %struct.Reg* %749, i32 0, i32 0
  %PC.i596 = bitcast %union.anon* %750 to i64*
  %751 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %752 = getelementptr inbounds %struct.GPR, %struct.GPR* %751, i32 0, i32 1
  %753 = getelementptr inbounds %struct.Reg, %struct.Reg* %752, i32 0, i32 0
  %RAX.i597 = bitcast %union.anon* %753 to i64*
  %754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %755 = getelementptr inbounds %struct.GPR, %struct.GPR* %754, i32 0, i32 5
  %756 = getelementptr inbounds %struct.Reg, %struct.Reg* %755, i32 0, i32 0
  %RCX.i598 = bitcast %union.anon* %756 to i64*
  %757 = load i64, i64* %RAX.i597
  %758 = add i64 %757, 80
  %759 = load i64, i64* %PC.i596
  %760 = add i64 %759, 3
  store i64 %760, i64* %PC.i596
  %761 = inttoptr i64 %758 to i32*
  %762 = load i32, i32* %761
  %763 = zext i32 %762 to i64
  store i64 %763, i64* %RCX.i598, align 8
  store %struct.Memory* %loadMem_401636, %struct.Memory** %MEMORY
  %loadMem_401639 = load %struct.Memory*, %struct.Memory** %MEMORY
  %764 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %765 = getelementptr inbounds %struct.GPR, %struct.GPR* %764, i32 0, i32 33
  %766 = getelementptr inbounds %struct.Reg, %struct.Reg* %765, i32 0, i32 0
  %PC.i594 = bitcast %union.anon* %766 to i64*
  %767 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %768 = getelementptr inbounds %struct.GPR, %struct.GPR* %767, i32 0, i32 5
  %769 = getelementptr inbounds %struct.Reg, %struct.Reg* %768, i32 0, i32 0
  %RCX.i595 = bitcast %union.anon* %769 to i64*
  %770 = load i64, i64* %RCX.i595
  %771 = load i64, i64* %PC.i594
  %772 = add i64 %771, 3
  store i64 %772, i64* %PC.i594
  %773 = trunc i64 %770 to i32
  %774 = sub i32 %773, 8
  %775 = zext i32 %774 to i64
  store i64 %775, i64* %RCX.i595, align 8
  %776 = icmp ult i32 %773, 8
  %777 = zext i1 %776 to i8
  %778 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %777, i8* %778, align 1
  %779 = and i32 %774, 255
  %780 = call i32 @llvm.ctpop.i32(i32 %779)
  %781 = trunc i32 %780 to i8
  %782 = and i8 %781, 1
  %783 = xor i8 %782, 1
  %784 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %783, i8* %784, align 1
  %785 = xor i64 8, %770
  %786 = trunc i64 %785 to i32
  %787 = xor i32 %786, %774
  %788 = lshr i32 %787, 4
  %789 = trunc i32 %788 to i8
  %790 = and i8 %789, 1
  %791 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %790, i8* %791, align 1
  %792 = icmp eq i32 %774, 0
  %793 = zext i1 %792 to i8
  %794 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %793, i8* %794, align 1
  %795 = lshr i32 %774, 31
  %796 = trunc i32 %795 to i8
  %797 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %796, i8* %797, align 1
  %798 = lshr i32 %773, 31
  %799 = xor i32 %795, %798
  %800 = add i32 %799, %798
  %801 = icmp eq i32 %800, 2
  %802 = zext i1 %801 to i8
  %803 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %802, i8* %803, align 1
  store %struct.Memory* %loadMem_401639, %struct.Memory** %MEMORY
  %loadMem_40163c = load %struct.Memory*, %struct.Memory** %MEMORY
  %804 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %805 = getelementptr inbounds %struct.GPR, %struct.GPR* %804, i32 0, i32 33
  %806 = getelementptr inbounds %struct.Reg, %struct.Reg* %805, i32 0, i32 0
  %PC.i591 = bitcast %union.anon* %806 to i64*
  %807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %808 = getelementptr inbounds %struct.GPR, %struct.GPR* %807, i32 0, i32 5
  %809 = getelementptr inbounds %struct.Reg, %struct.Reg* %808, i32 0, i32 0
  %ECX.i592 = bitcast %union.anon* %809 to i32*
  %810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %811 = getelementptr inbounds %struct.GPR, %struct.GPR* %810, i32 0, i32 1
  %812 = getelementptr inbounds %struct.Reg, %struct.Reg* %811, i32 0, i32 0
  %RAX.i593 = bitcast %union.anon* %812 to i64*
  %813 = load i64, i64* %RAX.i593
  %814 = add i64 %813, 80
  %815 = load i32, i32* %ECX.i592
  %816 = zext i32 %815 to i64
  %817 = load i64, i64* %PC.i591
  %818 = add i64 %817, 3
  store i64 %818, i64* %PC.i591
  %819 = inttoptr i64 %814 to i32*
  store i32 %815, i32* %819
  store %struct.Memory* %loadMem_40163c, %struct.Memory** %MEMORY
  %loadMem_40163f = load %struct.Memory*, %struct.Memory** %MEMORY
  %820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %821 = getelementptr inbounds %struct.GPR, %struct.GPR* %820, i32 0, i32 33
  %822 = getelementptr inbounds %struct.Reg, %struct.Reg* %821, i32 0, i32 0
  %PC.i588 = bitcast %union.anon* %822 to i64*
  %823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %824 = getelementptr inbounds %struct.GPR, %struct.GPR* %823, i32 0, i32 1
  %825 = getelementptr inbounds %struct.Reg, %struct.Reg* %824, i32 0, i32 0
  %RAX.i589 = bitcast %union.anon* %825 to i64*
  %826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %827 = getelementptr inbounds %struct.GPR, %struct.GPR* %826, i32 0, i32 15
  %828 = getelementptr inbounds %struct.Reg, %struct.Reg* %827, i32 0, i32 0
  %RBP.i590 = bitcast %union.anon* %828 to i64*
  %829 = load i64, i64* %RBP.i590
  %830 = sub i64 %829, 8
  %831 = load i64, i64* %PC.i588
  %832 = add i64 %831, 4
  store i64 %832, i64* %PC.i588
  %833 = inttoptr i64 %830 to i64*
  %834 = load i64, i64* %833
  store i64 %834, i64* %RAX.i589, align 8
  store %struct.Memory* %loadMem_40163f, %struct.Memory** %MEMORY
  %loadMem_401643 = load %struct.Memory*, %struct.Memory** %MEMORY
  %835 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %836 = getelementptr inbounds %struct.GPR, %struct.GPR* %835, i32 0, i32 33
  %837 = getelementptr inbounds %struct.Reg, %struct.Reg* %836, i32 0, i32 0
  %PC.i585 = bitcast %union.anon* %837 to i64*
  %838 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %839 = getelementptr inbounds %struct.GPR, %struct.GPR* %838, i32 0, i32 1
  %840 = getelementptr inbounds %struct.Reg, %struct.Reg* %839, i32 0, i32 0
  %RAX.i586 = bitcast %union.anon* %840 to i64*
  %841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %842 = getelementptr inbounds %struct.GPR, %struct.GPR* %841, i32 0, i32 5
  %843 = getelementptr inbounds %struct.Reg, %struct.Reg* %842, i32 0, i32 0
  %RCX.i587 = bitcast %union.anon* %843 to i64*
  %844 = load i64, i64* %RAX.i586
  %845 = add i64 %844, 88
  %846 = load i64, i64* %PC.i585
  %847 = add i64 %846, 3
  store i64 %847, i64* %PC.i585
  %848 = inttoptr i64 %845 to i32*
  %849 = load i32, i32* %848
  %850 = zext i32 %849 to i64
  store i64 %850, i64* %RCX.i587, align 8
  store %struct.Memory* %loadMem_401643, %struct.Memory** %MEMORY
  %loadMem_401646 = load %struct.Memory*, %struct.Memory** %MEMORY
  %851 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %852 = getelementptr inbounds %struct.GPR, %struct.GPR* %851, i32 0, i32 33
  %853 = getelementptr inbounds %struct.Reg, %struct.Reg* %852, i32 0, i32 0
  %PC.i583 = bitcast %union.anon* %853 to i64*
  %854 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %855 = getelementptr inbounds %struct.GPR, %struct.GPR* %854, i32 0, i32 5
  %856 = getelementptr inbounds %struct.Reg, %struct.Reg* %855, i32 0, i32 0
  %RCX.i584 = bitcast %union.anon* %856 to i64*
  %857 = load i64, i64* %RCX.i584
  %858 = load i64, i64* %PC.i583
  %859 = add i64 %858, 3
  store i64 %859, i64* %PC.i583
  %860 = trunc i64 %857 to i32
  %861 = add i32 1, %860
  %862 = zext i32 %861 to i64
  store i64 %862, i64* %RCX.i584, align 8
  %863 = icmp ult i32 %861, %860
  %864 = icmp ult i32 %861, 1
  %865 = or i1 %863, %864
  %866 = zext i1 %865 to i8
  %867 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %866, i8* %867, align 1
  %868 = and i32 %861, 255
  %869 = call i32 @llvm.ctpop.i32(i32 %868)
  %870 = trunc i32 %869 to i8
  %871 = and i8 %870, 1
  %872 = xor i8 %871, 1
  %873 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %872, i8* %873, align 1
  %874 = xor i64 1, %857
  %875 = trunc i64 %874 to i32
  %876 = xor i32 %875, %861
  %877 = lshr i32 %876, 4
  %878 = trunc i32 %877 to i8
  %879 = and i8 %878, 1
  %880 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %879, i8* %880, align 1
  %881 = icmp eq i32 %861, 0
  %882 = zext i1 %881 to i8
  %883 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %882, i8* %883, align 1
  %884 = lshr i32 %861, 31
  %885 = trunc i32 %884 to i8
  %886 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %885, i8* %886, align 1
  %887 = lshr i32 %860, 31
  %888 = xor i32 %884, %887
  %889 = add i32 %888, %884
  %890 = icmp eq i32 %889, 2
  %891 = zext i1 %890 to i8
  %892 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %891, i8* %892, align 1
  store %struct.Memory* %loadMem_401646, %struct.Memory** %MEMORY
  %loadMem_401649 = load %struct.Memory*, %struct.Memory** %MEMORY
  %893 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %894 = getelementptr inbounds %struct.GPR, %struct.GPR* %893, i32 0, i32 33
  %895 = getelementptr inbounds %struct.Reg, %struct.Reg* %894, i32 0, i32 0
  %PC.i580 = bitcast %union.anon* %895 to i64*
  %896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %897 = getelementptr inbounds %struct.GPR, %struct.GPR* %896, i32 0, i32 5
  %898 = getelementptr inbounds %struct.Reg, %struct.Reg* %897, i32 0, i32 0
  %ECX.i581 = bitcast %union.anon* %898 to i32*
  %899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %900 = getelementptr inbounds %struct.GPR, %struct.GPR* %899, i32 0, i32 1
  %901 = getelementptr inbounds %struct.Reg, %struct.Reg* %900, i32 0, i32 0
  %RAX.i582 = bitcast %union.anon* %901 to i64*
  %902 = load i64, i64* %RAX.i582
  %903 = add i64 %902, 88
  %904 = load i32, i32* %ECX.i581
  %905 = zext i32 %904 to i64
  %906 = load i64, i64* %PC.i580
  %907 = add i64 %906, 3
  store i64 %907, i64* %PC.i580
  %908 = inttoptr i64 %903 to i32*
  store i32 %904, i32* %908
  store %struct.Memory* %loadMem_401649, %struct.Memory** %MEMORY
  %loadMem_40164c = load %struct.Memory*, %struct.Memory** %MEMORY
  %909 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %910 = getelementptr inbounds %struct.GPR, %struct.GPR* %909, i32 0, i32 33
  %911 = getelementptr inbounds %struct.Reg, %struct.Reg* %910, i32 0, i32 0
  %PC.i579 = bitcast %union.anon* %911 to i64*
  %912 = load i64, i64* %PC.i579
  %913 = add i64 %912, -40
  %914 = load i64, i64* %PC.i579
  %915 = add i64 %914, 5
  store i64 %915, i64* %PC.i579
  %916 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %913, i64* %916, align 8
  store %struct.Memory* %loadMem_40164c, %struct.Memory** %MEMORY
  br label %block_.L_401624

block_.L_401651:                                  ; preds = %block_.L_401624
  %loadMem_401651 = load %struct.Memory*, %struct.Memory** %MEMORY
  %917 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %918 = getelementptr inbounds %struct.GPR, %struct.GPR* %917, i32 0, i32 33
  %919 = getelementptr inbounds %struct.Reg, %struct.Reg* %918, i32 0, i32 0
  %PC.i578 = bitcast %union.anon* %919 to i64*
  %920 = load i64, i64* %PC.i578
  %921 = add i64 %920, 5
  %922 = load i64, i64* %PC.i578
  %923 = add i64 %922, 5
  store i64 %923, i64* %PC.i578
  %924 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %921, i64* %924, align 8
  store %struct.Memory* %loadMem_401651, %struct.Memory** %MEMORY
  br label %block_.L_401656

block_.L_401656:                                  ; preds = %block_.L_401651, %entry
  %loadMem_401656 = load %struct.Memory*, %struct.Memory** %MEMORY
  %925 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %926 = getelementptr inbounds %struct.GPR, %struct.GPR* %925, i32 0, i32 33
  %927 = getelementptr inbounds %struct.Reg, %struct.Reg* %926, i32 0, i32 0
  %PC.i577 = bitcast %union.anon* %927 to i64*
  %928 = load i64, i64* %PC.i577
  %929 = add i64 %928, 5
  %930 = load i64, i64* %PC.i577
  %931 = add i64 %930, 5
  store i64 %931, i64* %PC.i577
  %932 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %929, i64* %932, align 8
  store %struct.Memory* %loadMem_401656, %struct.Memory** %MEMORY
  br label %block_.L_40165b

block_.L_40165b:                                  ; preds = %block_.L_401723, %block_.L_401656
  %loadMem_40165b = load %struct.Memory*, %struct.Memory** %MEMORY
  %933 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %934 = getelementptr inbounds %struct.GPR, %struct.GPR* %933, i32 0, i32 33
  %935 = getelementptr inbounds %struct.Reg, %struct.Reg* %934, i32 0, i32 0
  %PC.i574 = bitcast %union.anon* %935 to i64*
  %936 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %937 = getelementptr inbounds %struct.GPR, %struct.GPR* %936, i32 0, i32 1
  %938 = getelementptr inbounds %struct.Reg, %struct.Reg* %937, i32 0, i32 0
  %RAX.i575 = bitcast %union.anon* %938 to i64*
  %939 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %940 = getelementptr inbounds %struct.GPR, %struct.GPR* %939, i32 0, i32 15
  %941 = getelementptr inbounds %struct.Reg, %struct.Reg* %940, i32 0, i32 0
  %RBP.i576 = bitcast %union.anon* %941 to i64*
  %942 = load i64, i64* %RBP.i576
  %943 = sub i64 %942, 8
  %944 = load i64, i64* %PC.i574
  %945 = add i64 %944, 4
  store i64 %945, i64* %PC.i574
  %946 = inttoptr i64 %943 to i64*
  %947 = load i64, i64* %946
  store i64 %947, i64* %RAX.i575, align 8
  store %struct.Memory* %loadMem_40165b, %struct.Memory** %MEMORY
  %loadMem_40165f = load %struct.Memory*, %struct.Memory** %MEMORY
  %948 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %949 = getelementptr inbounds %struct.GPR, %struct.GPR* %948, i32 0, i32 33
  %950 = getelementptr inbounds %struct.Reg, %struct.Reg* %949, i32 0, i32 0
  %PC.i572 = bitcast %union.anon* %950 to i64*
  %951 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %952 = getelementptr inbounds %struct.GPR, %struct.GPR* %951, i32 0, i32 1
  %953 = getelementptr inbounds %struct.Reg, %struct.Reg* %952, i32 0, i32 0
  %RAX.i573 = bitcast %union.anon* %953 to i64*
  %954 = load i64, i64* %RAX.i573
  %955 = add i64 %954, 16
  %956 = load i64, i64* %PC.i572
  %957 = add i64 %956, 4
  store i64 %957, i64* %PC.i572
  %958 = inttoptr i64 %955 to i32*
  %959 = load i32, i32* %958
  %960 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %960, align 1
  %961 = and i32 %959, 255
  %962 = call i32 @llvm.ctpop.i32(i32 %961)
  %963 = trunc i32 %962 to i8
  %964 = and i8 %963, 1
  %965 = xor i8 %964, 1
  %966 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %965, i8* %966, align 1
  %967 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %967, align 1
  %968 = icmp eq i32 %959, 0
  %969 = zext i1 %968 to i8
  %970 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %969, i8* %970, align 1
  %971 = lshr i32 %959, 31
  %972 = trunc i32 %971 to i8
  %973 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %972, i8* %973, align 1
  %974 = lshr i32 %959, 31
  %975 = xor i32 %971, %974
  %976 = add i32 %975, %974
  %977 = icmp eq i32 %976, 2
  %978 = zext i1 %977 to i8
  %979 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %978, i8* %979, align 1
  store %struct.Memory* %loadMem_40165f, %struct.Memory** %MEMORY
  %loadMem_401663 = load %struct.Memory*, %struct.Memory** %MEMORY
  %980 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %981 = getelementptr inbounds %struct.GPR, %struct.GPR* %980, i32 0, i32 33
  %982 = getelementptr inbounds %struct.Reg, %struct.Reg* %981, i32 0, i32 0
  %PC.i571 = bitcast %union.anon* %982 to i64*
  %983 = load i64, i64* %PC.i571
  %984 = add i64 %983, 197
  %985 = load i64, i64* %PC.i571
  %986 = add i64 %985, 6
  %987 = load i64, i64* %PC.i571
  %988 = add i64 %987, 6
  store i64 %988, i64* %PC.i571
  %989 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %990 = load i8, i8* %989, align 1
  %991 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %992 = load i8, i8* %991, align 1
  %993 = or i8 %992, %990
  %994 = icmp ne i8 %993, 0
  %995 = zext i1 %994 to i8
  store i8 %995, i8* %BRANCH_TAKEN, align 1
  %996 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %997 = select i1 %994, i64 %984, i64 %986
  store i64 %997, i64* %996, align 8
  store %struct.Memory* %loadMem_401663, %struct.Memory** %MEMORY
  %loadBr_401663 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401663 = icmp eq i8 %loadBr_401663, 1
  br i1 %cmpBr_401663, label %block_.L_401728, label %block_401669

block_401669:                                     ; preds = %block_.L_40165b
  %loadMem_401669 = load %struct.Memory*, %struct.Memory** %MEMORY
  %998 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %999 = getelementptr inbounds %struct.GPR, %struct.GPR* %998, i32 0, i32 33
  %1000 = getelementptr inbounds %struct.Reg, %struct.Reg* %999, i32 0, i32 0
  %PC.i568 = bitcast %union.anon* %1000 to i64*
  %1001 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1002 = getelementptr inbounds %struct.GPR, %struct.GPR* %1001, i32 0, i32 1
  %1003 = getelementptr inbounds %struct.Reg, %struct.Reg* %1002, i32 0, i32 0
  %RAX.i569 = bitcast %union.anon* %1003 to i64*
  %1004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1005 = getelementptr inbounds %struct.GPR, %struct.GPR* %1004, i32 0, i32 15
  %1006 = getelementptr inbounds %struct.Reg, %struct.Reg* %1005, i32 0, i32 0
  %RBP.i570 = bitcast %union.anon* %1006 to i64*
  %1007 = load i64, i64* %RBP.i570
  %1008 = sub i64 %1007, 8
  %1009 = load i64, i64* %PC.i568
  %1010 = add i64 %1009, 4
  store i64 %1010, i64* %PC.i568
  %1011 = inttoptr i64 %1008 to i64*
  %1012 = load i64, i64* %1011
  store i64 %1012, i64* %RAX.i569, align 8
  store %struct.Memory* %loadMem_401669, %struct.Memory** %MEMORY
  %loadMem_40166d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1013 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1014 = getelementptr inbounds %struct.GPR, %struct.GPR* %1013, i32 0, i32 33
  %1015 = getelementptr inbounds %struct.Reg, %struct.Reg* %1014, i32 0, i32 0
  %PC.i565 = bitcast %union.anon* %1015 to i64*
  %1016 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1017 = getelementptr inbounds %struct.GPR, %struct.GPR* %1016, i32 0, i32 1
  %1018 = getelementptr inbounds %struct.Reg, %struct.Reg* %1017, i32 0, i32 0
  %RAX.i566 = bitcast %union.anon* %1018 to i64*
  %1019 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1020 = getelementptr inbounds %struct.GPR, %struct.GPR* %1019, i32 0, i32 5
  %1021 = getelementptr inbounds %struct.Reg, %struct.Reg* %1020, i32 0, i32 0
  %RCX.i567 = bitcast %union.anon* %1021 to i64*
  %1022 = load i64, i64* %RAX.i566
  %1023 = add i64 %1022, 16
  %1024 = load i64, i64* %PC.i565
  %1025 = add i64 %1024, 3
  store i64 %1025, i64* %PC.i565
  %1026 = inttoptr i64 %1023 to i32*
  %1027 = load i32, i32* %1026
  %1028 = zext i32 %1027 to i64
  store i64 %1028, i64* %RCX.i567, align 8
  store %struct.Memory* %loadMem_40166d, %struct.Memory** %MEMORY
  %loadMem_401670 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1030 = getelementptr inbounds %struct.GPR, %struct.GPR* %1029, i32 0, i32 33
  %1031 = getelementptr inbounds %struct.Reg, %struct.Reg* %1030, i32 0, i32 0
  %PC.i563 = bitcast %union.anon* %1031 to i64*
  %1032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1033 = getelementptr inbounds %struct.GPR, %struct.GPR* %1032, i32 0, i32 5
  %1034 = getelementptr inbounds %struct.Reg, %struct.Reg* %1033, i32 0, i32 0
  %RCX.i564 = bitcast %union.anon* %1034 to i64*
  %1035 = load i64, i64* %RCX.i564
  %1036 = load i64, i64* %PC.i563
  %1037 = add i64 %1036, 3
  store i64 %1037, i64* %PC.i563
  %1038 = trunc i64 %1035 to i32
  %1039 = add i32 -1, %1038
  %1040 = zext i32 %1039 to i64
  store i64 %1040, i64* %RCX.i564, align 8
  %1041 = icmp ult i32 %1039, %1038
  %1042 = icmp ult i32 %1039, -1
  %1043 = or i1 %1041, %1042
  %1044 = zext i1 %1043 to i8
  %1045 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1044, i8* %1045, align 1
  %1046 = and i32 %1039, 255
  %1047 = call i32 @llvm.ctpop.i32(i32 %1046)
  %1048 = trunc i32 %1047 to i8
  %1049 = and i8 %1048, 1
  %1050 = xor i8 %1049, 1
  %1051 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1050, i8* %1051, align 1
  %1052 = xor i64 -1, %1035
  %1053 = trunc i64 %1052 to i32
  %1054 = xor i32 %1053, %1039
  %1055 = lshr i32 %1054, 4
  %1056 = trunc i32 %1055 to i8
  %1057 = and i8 %1056, 1
  %1058 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1057, i8* %1058, align 1
  %1059 = icmp eq i32 %1039, 0
  %1060 = zext i1 %1059 to i8
  %1061 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1060, i8* %1061, align 1
  %1062 = lshr i32 %1039, 31
  %1063 = trunc i32 %1062 to i8
  %1064 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1063, i8* %1064, align 1
  %1065 = lshr i32 %1038, 31
  %1066 = xor i32 %1062, %1065
  %1067 = xor i32 %1062, 1
  %1068 = add i32 %1066, %1067
  %1069 = icmp eq i32 %1068, 2
  %1070 = zext i1 %1069 to i8
  %1071 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1070, i8* %1071, align 1
  store %struct.Memory* %loadMem_401670, %struct.Memory** %MEMORY
  %loadMem_401673 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1072 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1073 = getelementptr inbounds %struct.GPR, %struct.GPR* %1072, i32 0, i32 33
  %1074 = getelementptr inbounds %struct.Reg, %struct.Reg* %1073, i32 0, i32 0
  %PC.i560 = bitcast %union.anon* %1074 to i64*
  %1075 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1076 = getelementptr inbounds %struct.GPR, %struct.GPR* %1075, i32 0, i32 5
  %1077 = getelementptr inbounds %struct.Reg, %struct.Reg* %1076, i32 0, i32 0
  %ECX.i561 = bitcast %union.anon* %1077 to i32*
  %1078 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1079 = getelementptr inbounds %struct.GPR, %struct.GPR* %1078, i32 0, i32 1
  %1080 = getelementptr inbounds %struct.Reg, %struct.Reg* %1079, i32 0, i32 0
  %RAX.i562 = bitcast %union.anon* %1080 to i64*
  %1081 = load i64, i64* %RAX.i562
  %1082 = add i64 %1081, 16
  %1083 = load i32, i32* %ECX.i561
  %1084 = zext i32 %1083 to i64
  %1085 = load i64, i64* %PC.i560
  %1086 = add i64 %1085, 3
  store i64 %1086, i64* %PC.i560
  %1087 = inttoptr i64 %1082 to i32*
  store i32 %1083, i32* %1087
  store %struct.Memory* %loadMem_401673, %struct.Memory** %MEMORY
  %loadMem_401676 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1088 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1089 = getelementptr inbounds %struct.GPR, %struct.GPR* %1088, i32 0, i32 33
  %1090 = getelementptr inbounds %struct.Reg, %struct.Reg* %1089, i32 0, i32 0
  %PC.i557 = bitcast %union.anon* %1090 to i64*
  %1091 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1092 = getelementptr inbounds %struct.GPR, %struct.GPR* %1091, i32 0, i32 1
  %1093 = getelementptr inbounds %struct.Reg, %struct.Reg* %1092, i32 0, i32 0
  %RAX.i558 = bitcast %union.anon* %1093 to i64*
  %1094 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1095 = getelementptr inbounds %struct.GPR, %struct.GPR* %1094, i32 0, i32 15
  %1096 = getelementptr inbounds %struct.Reg, %struct.Reg* %1095, i32 0, i32 0
  %RBP.i559 = bitcast %union.anon* %1096 to i64*
  %1097 = load i64, i64* %RBP.i559
  %1098 = sub i64 %1097, 8
  %1099 = load i64, i64* %PC.i557
  %1100 = add i64 %1099, 4
  store i64 %1100, i64* %PC.i557
  %1101 = inttoptr i64 %1098 to i64*
  %1102 = load i64, i64* %1101
  store i64 %1102, i64* %RAX.i558, align 8
  store %struct.Memory* %loadMem_401676, %struct.Memory** %MEMORY
  %loadMem_40167a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1104 = getelementptr inbounds %struct.GPR, %struct.GPR* %1103, i32 0, i32 33
  %1105 = getelementptr inbounds %struct.Reg, %struct.Reg* %1104, i32 0, i32 0
  %PC.i554 = bitcast %union.anon* %1105 to i64*
  %1106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1107 = getelementptr inbounds %struct.GPR, %struct.GPR* %1106, i32 0, i32 1
  %1108 = getelementptr inbounds %struct.Reg, %struct.Reg* %1107, i32 0, i32 0
  %RAX.i555 = bitcast %union.anon* %1108 to i64*
  %1109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1110 = getelementptr inbounds %struct.GPR, %struct.GPR* %1109, i32 0, i32 5
  %1111 = getelementptr inbounds %struct.Reg, %struct.Reg* %1110, i32 0, i32 0
  %RCX.i556 = bitcast %union.anon* %1111 to i64*
  %1112 = load i64, i64* %RAX.i555
  %1113 = add i64 %1112, 8
  %1114 = load i64, i64* %PC.i554
  %1115 = add i64 %1114, 3
  store i64 %1115, i64* %PC.i554
  %1116 = inttoptr i64 %1113 to i32*
  %1117 = load i32, i32* %1116
  %1118 = zext i32 %1117 to i64
  store i64 %1118, i64* %RCX.i556, align 8
  store %struct.Memory* %loadMem_40167a, %struct.Memory** %MEMORY
  %loadMem_40167d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1120 = getelementptr inbounds %struct.GPR, %struct.GPR* %1119, i32 0, i32 33
  %1121 = getelementptr inbounds %struct.Reg, %struct.Reg* %1120, i32 0, i32 0
  %PC.i552 = bitcast %union.anon* %1121 to i64*
  %1122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1123 = getelementptr inbounds %struct.GPR, %struct.GPR* %1122, i32 0, i32 5
  %1124 = getelementptr inbounds %struct.Reg, %struct.Reg* %1123, i32 0, i32 0
  %RCX.i553 = bitcast %union.anon* %1124 to i64*
  %1125 = load i64, i64* %RCX.i553
  %1126 = load i64, i64* %PC.i552
  %1127 = add i64 %1126, 2
  store i64 %1127, i64* %PC.i552
  %1128 = trunc i64 %1125 to i32
  %1129 = shl i32 %1128, 1
  %1130 = icmp slt i32 %1128, 0
  %1131 = icmp slt i32 %1129, 0
  %1132 = xor i1 %1130, %1131
  %1133 = zext i32 %1129 to i64
  store i64 %1133, i64* %RCX.i553, align 8
  %1134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1135 = zext i1 %1130 to i8
  store i8 %1135, i8* %1134, align 1
  %1136 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1137 = and i32 %1129, 254
  %1138 = call i32 @llvm.ctpop.i32(i32 %1137)
  %1139 = trunc i32 %1138 to i8
  %1140 = and i8 %1139, 1
  %1141 = xor i8 %1140, 1
  store i8 %1141, i8* %1136, align 1
  %1142 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1142, align 1
  %1143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1144 = icmp eq i32 %1129, 0
  %1145 = zext i1 %1144 to i8
  store i8 %1145, i8* %1143, align 1
  %1146 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1147 = lshr i32 %1129, 31
  %1148 = trunc i32 %1147 to i8
  store i8 %1148, i8* %1146, align 1
  %1149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1150 = zext i1 %1132 to i8
  store i8 %1150, i8* %1149, align 1
  store %struct.Memory* %loadMem_40167d, %struct.Memory** %MEMORY
  %loadMem_401680 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1152 = getelementptr inbounds %struct.GPR, %struct.GPR* %1151, i32 0, i32 33
  %1153 = getelementptr inbounds %struct.Reg, %struct.Reg* %1152, i32 0, i32 0
  %PC.i549 = bitcast %union.anon* %1153 to i64*
  %1154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1155 = getelementptr inbounds %struct.GPR, %struct.GPR* %1154, i32 0, i32 5
  %1156 = getelementptr inbounds %struct.Reg, %struct.Reg* %1155, i32 0, i32 0
  %ECX.i550 = bitcast %union.anon* %1156 to i32*
  %1157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1158 = getelementptr inbounds %struct.GPR, %struct.GPR* %1157, i32 0, i32 1
  %1159 = getelementptr inbounds %struct.Reg, %struct.Reg* %1158, i32 0, i32 0
  %RAX.i551 = bitcast %union.anon* %1159 to i64*
  %1160 = load i64, i64* %RAX.i551
  %1161 = add i64 %1160, 8
  %1162 = load i32, i32* %ECX.i550
  %1163 = zext i32 %1162 to i64
  %1164 = load i64, i64* %PC.i549
  %1165 = add i64 %1164, 3
  store i64 %1165, i64* %PC.i549
  %1166 = inttoptr i64 %1161 to i32*
  store i32 %1162, i32* %1166
  store %struct.Memory* %loadMem_401680, %struct.Memory** %MEMORY
  %loadMem_401683 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1168 = getelementptr inbounds %struct.GPR, %struct.GPR* %1167, i32 0, i32 33
  %1169 = getelementptr inbounds %struct.Reg, %struct.Reg* %1168, i32 0, i32 0
  %PC.i546 = bitcast %union.anon* %1169 to i64*
  %1170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1171 = getelementptr inbounds %struct.GPR, %struct.GPR* %1170, i32 0, i32 1
  %1172 = getelementptr inbounds %struct.Reg, %struct.Reg* %1171, i32 0, i32 0
  %RAX.i547 = bitcast %union.anon* %1172 to i64*
  %1173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1174 = getelementptr inbounds %struct.GPR, %struct.GPR* %1173, i32 0, i32 15
  %1175 = getelementptr inbounds %struct.Reg, %struct.Reg* %1174, i32 0, i32 0
  %RBP.i548 = bitcast %union.anon* %1175 to i64*
  %1176 = load i64, i64* %RBP.i548
  %1177 = sub i64 %1176, 8
  %1178 = load i64, i64* %PC.i546
  %1179 = add i64 %1178, 4
  store i64 %1179, i64* %PC.i546
  %1180 = inttoptr i64 %1177 to i64*
  %1181 = load i64, i64* %1180
  store i64 %1181, i64* %RAX.i547, align 8
  store %struct.Memory* %loadMem_401683, %struct.Memory** %MEMORY
  %loadMem_401687 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1183 = getelementptr inbounds %struct.GPR, %struct.GPR* %1182, i32 0, i32 33
  %1184 = getelementptr inbounds %struct.Reg, %struct.Reg* %1183, i32 0, i32 0
  %PC.i543 = bitcast %union.anon* %1184 to i64*
  %1185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1186 = getelementptr inbounds %struct.GPR, %struct.GPR* %1185, i32 0, i32 1
  %1187 = getelementptr inbounds %struct.Reg, %struct.Reg* %1186, i32 0, i32 0
  %RAX.i544 = bitcast %union.anon* %1187 to i64*
  %1188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1189 = getelementptr inbounds %struct.GPR, %struct.GPR* %1188, i32 0, i32 5
  %1190 = getelementptr inbounds %struct.Reg, %struct.Reg* %1189, i32 0, i32 0
  %RCX.i545 = bitcast %union.anon* %1190 to i64*
  %1191 = load i64, i64* %RAX.i544
  %1192 = load i64, i64* %PC.i543
  %1193 = add i64 %1192, 2
  store i64 %1193, i64* %PC.i543
  %1194 = inttoptr i64 %1191 to i32*
  %1195 = load i32, i32* %1194
  %1196 = zext i32 %1195 to i64
  store i64 %1196, i64* %RCX.i545, align 8
  store %struct.Memory* %loadMem_401687, %struct.Memory** %MEMORY
  %loadMem_401689 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1198 = getelementptr inbounds %struct.GPR, %struct.GPR* %1197, i32 0, i32 33
  %1199 = getelementptr inbounds %struct.Reg, %struct.Reg* %1198, i32 0, i32 0
  %PC.i541 = bitcast %union.anon* %1199 to i64*
  %1200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1201 = getelementptr inbounds %struct.GPR, %struct.GPR* %1200, i32 0, i32 5
  %1202 = getelementptr inbounds %struct.Reg, %struct.Reg* %1201, i32 0, i32 0
  %RCX.i542 = bitcast %union.anon* %1202 to i64*
  %1203 = load i64, i64* %RCX.i542
  %1204 = load i64, i64* %PC.i541
  %1205 = add i64 %1204, 3
  store i64 %1205, i64* %PC.i541
  %1206 = and i64 %1203, 4294967295
  %1207 = lshr i64 %1206, 8
  %1208 = trunc i64 %1207 to i8
  %1209 = and i8 %1208, 1
  %1210 = lshr i64 %1207, 1
  %1211 = trunc i64 %1210 to i32
  %1212 = and i32 %1211, 2147483647
  %1213 = zext i32 %1212 to i64
  store i64 %1213, i64* %RCX.i542, align 8
  %1214 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1209, i8* %1214, align 1
  %1215 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1216 = and i32 %1211, 255
  %1217 = call i32 @llvm.ctpop.i32(i32 %1216)
  %1218 = trunc i32 %1217 to i8
  %1219 = and i8 %1218, 1
  %1220 = xor i8 %1219, 1
  store i8 %1220, i8* %1215, align 1
  %1221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1221, align 1
  %1222 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1223 = icmp eq i32 %1212, 0
  %1224 = zext i1 %1223 to i8
  store i8 %1224, i8* %1222, align 1
  %1225 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1225, align 1
  %1226 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1226, align 1
  store %struct.Memory* %loadMem_401689, %struct.Memory** %MEMORY
  %loadMem_40168c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1228 = getelementptr inbounds %struct.GPR, %struct.GPR* %1227, i32 0, i32 33
  %1229 = getelementptr inbounds %struct.Reg, %struct.Reg* %1228, i32 0, i32 0
  %PC.i539 = bitcast %union.anon* %1229 to i64*
  %1230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1231 = getelementptr inbounds %struct.GPR, %struct.GPR* %1230, i32 0, i32 5
  %1232 = getelementptr inbounds %struct.Reg, %struct.Reg* %1231, i32 0, i32 0
  %RCX.i540 = bitcast %union.anon* %1232 to i64*
  %1233 = load i64, i64* %RCX.i540
  %1234 = load i64, i64* %PC.i539
  %1235 = add i64 %1234, 3
  store i64 %1235, i64* %PC.i539
  %1236 = and i64 1, %1233
  %1237 = trunc i64 %1236 to i32
  store i64 %1236, i64* %RCX.i540, align 8
  %1238 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1238, align 1
  %1239 = and i32 %1237, 255
  %1240 = call i32 @llvm.ctpop.i32(i32 %1239)
  %1241 = trunc i32 %1240 to i8
  %1242 = and i8 %1241, 1
  %1243 = xor i8 %1242, 1
  %1244 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1243, i8* %1244, align 1
  %1245 = icmp eq i32 %1237, 0
  %1246 = zext i1 %1245 to i8
  %1247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1246, i8* %1247, align 1
  %1248 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1248, align 1
  %1249 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1249, align 1
  %1250 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1250, align 1
  store %struct.Memory* %loadMem_40168c, %struct.Memory** %MEMORY
  %loadMem_40168f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1252 = getelementptr inbounds %struct.GPR, %struct.GPR* %1251, i32 0, i32 33
  %1253 = getelementptr inbounds %struct.Reg, %struct.Reg* %1252, i32 0, i32 0
  %PC.i537 = bitcast %union.anon* %1253 to i64*
  %1254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1255 = getelementptr inbounds %struct.GPR, %struct.GPR* %1254, i32 0, i32 5
  %1256 = getelementptr inbounds %struct.Reg, %struct.Reg* %1255, i32 0, i32 0
  %ECX.i538 = bitcast %union.anon* %1256 to i32*
  %1257 = load i32, i32* %ECX.i538
  %1258 = zext i32 %1257 to i64
  %1259 = load i64, i64* %PC.i537
  %1260 = add i64 %1259, 3
  store i64 %1260, i64* %PC.i537
  %1261 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1261, align 1
  %1262 = and i32 %1257, 255
  %1263 = call i32 @llvm.ctpop.i32(i32 %1262)
  %1264 = trunc i32 %1263 to i8
  %1265 = and i8 %1264, 1
  %1266 = xor i8 %1265, 1
  %1267 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1266, i8* %1267, align 1
  %1268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1268, align 1
  %1269 = icmp eq i32 %1257, 0
  %1270 = zext i1 %1269 to i8
  %1271 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1270, i8* %1271, align 1
  %1272 = lshr i32 %1257, 31
  %1273 = trunc i32 %1272 to i8
  %1274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1273, i8* %1274, align 1
  %1275 = lshr i32 %1257, 31
  %1276 = xor i32 %1272, %1275
  %1277 = add i32 %1276, %1275
  %1278 = icmp eq i32 %1277, 2
  %1279 = zext i1 %1278 to i8
  %1280 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1279, i8* %1280, align 1
  store %struct.Memory* %loadMem_40168f, %struct.Memory** %MEMORY
  %loadMem_401692 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1282 = getelementptr inbounds %struct.GPR, %struct.GPR* %1281, i32 0, i32 33
  %1283 = getelementptr inbounds %struct.Reg, %struct.Reg* %1282, i32 0, i32 0
  %PC.i535 = bitcast %union.anon* %1283 to i64*
  %1284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1285 = getelementptr inbounds %struct.GPR, %struct.GPR* %1284, i32 0, i32 7
  %1286 = getelementptr inbounds %struct.Reg, %struct.Reg* %1285, i32 0, i32 0
  %1287 = bitcast %union.anon* %1286 to %struct.anon.2*
  %DL.i536 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1287, i32 0, i32 0
  %1288 = load i64, i64* %PC.i535
  %1289 = add i64 %1288, 3
  store i64 %1289, i64* %PC.i535
  %1290 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1291 = load i8, i8* %1290, align 1
  %1292 = icmp eq i8 %1291, 0
  %1293 = zext i1 %1292 to i8
  store i8 %1293, i8* %DL.i536, align 1
  store %struct.Memory* %loadMem_401692, %struct.Memory** %MEMORY
  %loadMem_401695 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1295 = getelementptr inbounds %struct.GPR, %struct.GPR* %1294, i32 0, i32 33
  %1296 = getelementptr inbounds %struct.Reg, %struct.Reg* %1295, i32 0, i32 0
  %PC.i533 = bitcast %union.anon* %1296 to i64*
  %1297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1298 = getelementptr inbounds %struct.GPR, %struct.GPR* %1297, i32 0, i32 7
  %1299 = getelementptr inbounds %struct.Reg, %struct.Reg* %1298, i32 0, i32 0
  %1300 = bitcast %union.anon* %1299 to %struct.anon.2*
  %DL.i534 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1300, i32 0, i32 0
  %1301 = load i8, i8* %DL.i534
  %1302 = zext i8 %1301 to i64
  %1303 = load i64, i64* %PC.i533
  %1304 = add i64 %1303, 3
  store i64 %1304, i64* %PC.i533
  %1305 = xor i64 255, %1302
  %1306 = trunc i64 %1305 to i8
  store i8 %1306, i8* %DL.i534, align 1
  %1307 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1307, align 1
  %1308 = trunc i64 %1305 to i32
  %1309 = and i32 %1308, 255
  %1310 = call i32 @llvm.ctpop.i32(i32 %1309)
  %1311 = trunc i32 %1310 to i8
  %1312 = and i8 %1311, 1
  %1313 = xor i8 %1312, 1
  %1314 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1313, i8* %1314, align 1
  %1315 = icmp eq i8 %1306, 0
  %1316 = zext i1 %1315 to i8
  %1317 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1316, i8* %1317, align 1
  %1318 = lshr i8 %1306, 7
  %1319 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1318, i8* %1319, align 1
  %1320 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1320, align 1
  %1321 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1321, align 1
  store %struct.Memory* %loadMem_401695, %struct.Memory** %MEMORY
  %loadMem_401698 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1322 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1323 = getelementptr inbounds %struct.GPR, %struct.GPR* %1322, i32 0, i32 33
  %1324 = getelementptr inbounds %struct.Reg, %struct.Reg* %1323, i32 0, i32 0
  %PC.i531 = bitcast %union.anon* %1324 to i64*
  %1325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1326 = getelementptr inbounds %struct.GPR, %struct.GPR* %1325, i32 0, i32 7
  %1327 = getelementptr inbounds %struct.Reg, %struct.Reg* %1326, i32 0, i32 0
  %1328 = bitcast %union.anon* %1327 to %struct.anon.2*
  %DL.i532 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1328, i32 0, i32 0
  %1329 = load i8, i8* %DL.i532
  %1330 = zext i8 %1329 to i64
  %1331 = load i64, i64* %PC.i531
  %1332 = add i64 %1331, 3
  store i64 %1332, i64* %PC.i531
  %1333 = and i64 1, %1330
  %1334 = trunc i64 %1333 to i8
  store i8 %1334, i8* %DL.i532, align 1
  %1335 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1335, align 1
  %1336 = trunc i64 %1333 to i32
  %1337 = and i32 %1336, 255
  %1338 = call i32 @llvm.ctpop.i32(i32 %1337)
  %1339 = trunc i32 %1338 to i8
  %1340 = and i8 %1339, 1
  %1341 = xor i8 %1340, 1
  %1342 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1341, i8* %1342, align 1
  %1343 = icmp eq i8 %1334, 0
  %1344 = zext i1 %1343 to i8
  %1345 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1344, i8* %1345, align 1
  %1346 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1346, align 1
  %1347 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1347, align 1
  %1348 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1348, align 1
  store %struct.Memory* %loadMem_401698, %struct.Memory** %MEMORY
  %loadMem_40169b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1350 = getelementptr inbounds %struct.GPR, %struct.GPR* %1349, i32 0, i32 33
  %1351 = getelementptr inbounds %struct.Reg, %struct.Reg* %1350, i32 0, i32 0
  %PC.i528 = bitcast %union.anon* %1351 to i64*
  %1352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1353 = getelementptr inbounds %struct.GPR, %struct.GPR* %1352, i32 0, i32 7
  %1354 = getelementptr inbounds %struct.Reg, %struct.Reg* %1353, i32 0, i32 0
  %1355 = bitcast %union.anon* %1354 to %struct.anon.2*
  %DL.i529 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1355, i32 0, i32 0
  %1356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1357 = getelementptr inbounds %struct.GPR, %struct.GPR* %1356, i32 0, i32 5
  %1358 = getelementptr inbounds %struct.Reg, %struct.Reg* %1357, i32 0, i32 0
  %RCX.i530 = bitcast %union.anon* %1358 to i64*
  %1359 = load i8, i8* %DL.i529
  %1360 = zext i8 %1359 to i64
  %1361 = load i64, i64* %PC.i528
  %1362 = add i64 %1361, 3
  store i64 %1362, i64* %PC.i528
  %1363 = and i64 %1360, 255
  store i64 %1363, i64* %RCX.i530, align 8
  store %struct.Memory* %loadMem_40169b, %struct.Memory** %MEMORY
  %loadMem_40169e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1365 = getelementptr inbounds %struct.GPR, %struct.GPR* %1364, i32 0, i32 33
  %1366 = getelementptr inbounds %struct.Reg, %struct.Reg* %1365, i32 0, i32 0
  %PC.i525 = bitcast %union.anon* %1366 to i64*
  %1367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1368 = getelementptr inbounds %struct.GPR, %struct.GPR* %1367, i32 0, i32 1
  %1369 = getelementptr inbounds %struct.Reg, %struct.Reg* %1368, i32 0, i32 0
  %RAX.i526 = bitcast %union.anon* %1369 to i64*
  %1370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1371 = getelementptr inbounds %struct.GPR, %struct.GPR* %1370, i32 0, i32 15
  %1372 = getelementptr inbounds %struct.Reg, %struct.Reg* %1371, i32 0, i32 0
  %RBP.i527 = bitcast %union.anon* %1372 to i64*
  %1373 = load i64, i64* %RBP.i527
  %1374 = sub i64 %1373, 8
  %1375 = load i64, i64* %PC.i525
  %1376 = add i64 %1375, 4
  store i64 %1376, i64* %PC.i525
  %1377 = inttoptr i64 %1374 to i64*
  %1378 = load i64, i64* %1377
  store i64 %1378, i64* %RAX.i526, align 8
  store %struct.Memory* %loadMem_40169e, %struct.Memory** %MEMORY
  %loadMem_4016a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1379 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1380 = getelementptr inbounds %struct.GPR, %struct.GPR* %1379, i32 0, i32 33
  %1381 = getelementptr inbounds %struct.Reg, %struct.Reg* %1380, i32 0, i32 0
  %PC.i522 = bitcast %union.anon* %1381 to i64*
  %1382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1383 = getelementptr inbounds %struct.GPR, %struct.GPR* %1382, i32 0, i32 1
  %1384 = getelementptr inbounds %struct.Reg, %struct.Reg* %1383, i32 0, i32 0
  %RAX.i523 = bitcast %union.anon* %1384 to i64*
  %1385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1386 = getelementptr inbounds %struct.GPR, %struct.GPR* %1385, i32 0, i32 5
  %1387 = getelementptr inbounds %struct.Reg, %struct.Reg* %1386, i32 0, i32 0
  %RCX.i524 = bitcast %union.anon* %1387 to i64*
  %1388 = load i64, i64* %RCX.i524
  %1389 = load i64, i64* %RAX.i523
  %1390 = add i64 %1389, 8
  %1391 = load i64, i64* %PC.i522
  %1392 = add i64 %1391, 3
  store i64 %1392, i64* %PC.i522
  %1393 = trunc i64 %1388 to i32
  %1394 = inttoptr i64 %1390 to i32*
  %1395 = load i32, i32* %1394
  %1396 = or i32 %1395, %1393
  %1397 = zext i32 %1396 to i64
  store i64 %1397, i64* %RCX.i524, align 8
  %1398 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1398, align 1
  %1399 = and i32 %1396, 255
  %1400 = call i32 @llvm.ctpop.i32(i32 %1399)
  %1401 = trunc i32 %1400 to i8
  %1402 = and i8 %1401, 1
  %1403 = xor i8 %1402, 1
  %1404 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1403, i8* %1404, align 1
  %1405 = icmp eq i32 %1396, 0
  %1406 = zext i1 %1405 to i8
  %1407 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1406, i8* %1407, align 1
  %1408 = lshr i32 %1396, 31
  %1409 = trunc i32 %1408 to i8
  %1410 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1409, i8* %1410, align 1
  %1411 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1411, align 1
  %1412 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1412, align 1
  store %struct.Memory* %loadMem_4016a2, %struct.Memory** %MEMORY
  %loadMem_4016a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1413 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1414 = getelementptr inbounds %struct.GPR, %struct.GPR* %1413, i32 0, i32 33
  %1415 = getelementptr inbounds %struct.Reg, %struct.Reg* %1414, i32 0, i32 0
  %PC.i519 = bitcast %union.anon* %1415 to i64*
  %1416 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1417 = getelementptr inbounds %struct.GPR, %struct.GPR* %1416, i32 0, i32 5
  %1418 = getelementptr inbounds %struct.Reg, %struct.Reg* %1417, i32 0, i32 0
  %ECX.i520 = bitcast %union.anon* %1418 to i32*
  %1419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1420 = getelementptr inbounds %struct.GPR, %struct.GPR* %1419, i32 0, i32 1
  %1421 = getelementptr inbounds %struct.Reg, %struct.Reg* %1420, i32 0, i32 0
  %RAX.i521 = bitcast %union.anon* %1421 to i64*
  %1422 = load i64, i64* %RAX.i521
  %1423 = add i64 %1422, 8
  %1424 = load i32, i32* %ECX.i520
  %1425 = zext i32 %1424 to i64
  %1426 = load i64, i64* %PC.i519
  %1427 = add i64 %1426, 3
  store i64 %1427, i64* %PC.i519
  %1428 = inttoptr i64 %1423 to i32*
  store i32 %1424, i32* %1428
  store %struct.Memory* %loadMem_4016a5, %struct.Memory** %MEMORY
  %loadMem_4016a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1430 = getelementptr inbounds %struct.GPR, %struct.GPR* %1429, i32 0, i32 33
  %1431 = getelementptr inbounds %struct.Reg, %struct.Reg* %1430, i32 0, i32 0
  %PC.i516 = bitcast %union.anon* %1431 to i64*
  %1432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1433 = getelementptr inbounds %struct.GPR, %struct.GPR* %1432, i32 0, i32 1
  %1434 = getelementptr inbounds %struct.Reg, %struct.Reg* %1433, i32 0, i32 0
  %RAX.i517 = bitcast %union.anon* %1434 to i64*
  %1435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1436 = getelementptr inbounds %struct.GPR, %struct.GPR* %1435, i32 0, i32 15
  %1437 = getelementptr inbounds %struct.Reg, %struct.Reg* %1436, i32 0, i32 0
  %RBP.i518 = bitcast %union.anon* %1437 to i64*
  %1438 = load i64, i64* %RBP.i518
  %1439 = sub i64 %1438, 8
  %1440 = load i64, i64* %PC.i516
  %1441 = add i64 %1440, 4
  store i64 %1441, i64* %PC.i516
  %1442 = inttoptr i64 %1439 to i64*
  %1443 = load i64, i64* %1442
  store i64 %1443, i64* %RAX.i517, align 8
  store %struct.Memory* %loadMem_4016a8, %struct.Memory** %MEMORY
  %loadMem_4016ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %1444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1445 = getelementptr inbounds %struct.GPR, %struct.GPR* %1444, i32 0, i32 33
  %1446 = getelementptr inbounds %struct.Reg, %struct.Reg* %1445, i32 0, i32 0
  %PC.i513 = bitcast %union.anon* %1446 to i64*
  %1447 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1448 = getelementptr inbounds %struct.GPR, %struct.GPR* %1447, i32 0, i32 1
  %1449 = getelementptr inbounds %struct.Reg, %struct.Reg* %1448, i32 0, i32 0
  %RAX.i514 = bitcast %union.anon* %1449 to i64*
  %1450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1451 = getelementptr inbounds %struct.GPR, %struct.GPR* %1450, i32 0, i32 5
  %1452 = getelementptr inbounds %struct.Reg, %struct.Reg* %1451, i32 0, i32 0
  %RCX.i515 = bitcast %union.anon* %1452 to i64*
  %1453 = load i64, i64* %RAX.i514
  %1454 = add i64 %1453, 12
  %1455 = load i64, i64* %PC.i513
  %1456 = add i64 %1455, 3
  store i64 %1456, i64* %PC.i513
  %1457 = inttoptr i64 %1454 to i32*
  %1458 = load i32, i32* %1457
  %1459 = zext i32 %1458 to i64
  store i64 %1459, i64* %RCX.i515, align 8
  store %struct.Memory* %loadMem_4016ac, %struct.Memory** %MEMORY
  %loadMem_4016af = load %struct.Memory*, %struct.Memory** %MEMORY
  %1460 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1461 = getelementptr inbounds %struct.GPR, %struct.GPR* %1460, i32 0, i32 33
  %1462 = getelementptr inbounds %struct.Reg, %struct.Reg* %1461, i32 0, i32 0
  %PC.i511 = bitcast %union.anon* %1462 to i64*
  %1463 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1464 = getelementptr inbounds %struct.GPR, %struct.GPR* %1463, i32 0, i32 5
  %1465 = getelementptr inbounds %struct.Reg, %struct.Reg* %1464, i32 0, i32 0
  %RCX.i512 = bitcast %union.anon* %1465 to i64*
  %1466 = load i64, i64* %RCX.i512
  %1467 = load i64, i64* %PC.i511
  %1468 = add i64 %1467, 3
  store i64 %1468, i64* %PC.i511
  %1469 = trunc i64 %1466 to i32
  %1470 = add i32 -1, %1469
  %1471 = zext i32 %1470 to i64
  store i64 %1471, i64* %RCX.i512, align 8
  %1472 = icmp ult i32 %1470, %1469
  %1473 = icmp ult i32 %1470, -1
  %1474 = or i1 %1472, %1473
  %1475 = zext i1 %1474 to i8
  %1476 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1475, i8* %1476, align 1
  %1477 = and i32 %1470, 255
  %1478 = call i32 @llvm.ctpop.i32(i32 %1477)
  %1479 = trunc i32 %1478 to i8
  %1480 = and i8 %1479, 1
  %1481 = xor i8 %1480, 1
  %1482 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1481, i8* %1482, align 1
  %1483 = xor i64 -1, %1466
  %1484 = trunc i64 %1483 to i32
  %1485 = xor i32 %1484, %1470
  %1486 = lshr i32 %1485, 4
  %1487 = trunc i32 %1486 to i8
  %1488 = and i8 %1487, 1
  %1489 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1488, i8* %1489, align 1
  %1490 = icmp eq i32 %1470, 0
  %1491 = zext i1 %1490 to i8
  %1492 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1491, i8* %1492, align 1
  %1493 = lshr i32 %1470, 31
  %1494 = trunc i32 %1493 to i8
  %1495 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1494, i8* %1495, align 1
  %1496 = lshr i32 %1469, 31
  %1497 = xor i32 %1493, %1496
  %1498 = xor i32 %1493, 1
  %1499 = add i32 %1497, %1498
  %1500 = icmp eq i32 %1499, 2
  %1501 = zext i1 %1500 to i8
  %1502 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1501, i8* %1502, align 1
  store %struct.Memory* %loadMem_4016af, %struct.Memory** %MEMORY
  %loadMem_4016b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1504 = getelementptr inbounds %struct.GPR, %struct.GPR* %1503, i32 0, i32 33
  %1505 = getelementptr inbounds %struct.Reg, %struct.Reg* %1504, i32 0, i32 0
  %PC.i508 = bitcast %union.anon* %1505 to i64*
  %1506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1507 = getelementptr inbounds %struct.GPR, %struct.GPR* %1506, i32 0, i32 5
  %1508 = getelementptr inbounds %struct.Reg, %struct.Reg* %1507, i32 0, i32 0
  %ECX.i509 = bitcast %union.anon* %1508 to i32*
  %1509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1510 = getelementptr inbounds %struct.GPR, %struct.GPR* %1509, i32 0, i32 1
  %1511 = getelementptr inbounds %struct.Reg, %struct.Reg* %1510, i32 0, i32 0
  %RAX.i510 = bitcast %union.anon* %1511 to i64*
  %1512 = load i64, i64* %RAX.i510
  %1513 = add i64 %1512, 12
  %1514 = load i32, i32* %ECX.i509
  %1515 = zext i32 %1514 to i64
  %1516 = load i64, i64* %PC.i508
  %1517 = add i64 %1516, 3
  store i64 %1517, i64* %PC.i508
  %1518 = inttoptr i64 %1513 to i32*
  store i32 %1514, i32* %1518
  store %struct.Memory* %loadMem_4016b2, %struct.Memory** %MEMORY
  %loadMem_4016b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1520 = getelementptr inbounds %struct.GPR, %struct.GPR* %1519, i32 0, i32 33
  %1521 = getelementptr inbounds %struct.Reg, %struct.Reg* %1520, i32 0, i32 0
  %PC.i506 = bitcast %union.anon* %1521 to i64*
  %1522 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1523 = getelementptr inbounds %struct.GPR, %struct.GPR* %1522, i32 0, i32 5
  %1524 = getelementptr inbounds %struct.Reg, %struct.Reg* %1523, i32 0, i32 0
  %ECX.i507 = bitcast %union.anon* %1524 to i32*
  %1525 = load i32, i32* %ECX.i507
  %1526 = zext i32 %1525 to i64
  %1527 = load i64, i64* %PC.i506
  %1528 = add i64 %1527, 3
  store i64 %1528, i64* %PC.i506
  %1529 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1529, align 1
  %1530 = and i32 %1525, 255
  %1531 = call i32 @llvm.ctpop.i32(i32 %1530)
  %1532 = trunc i32 %1531 to i8
  %1533 = and i8 %1532, 1
  %1534 = xor i8 %1533, 1
  %1535 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1534, i8* %1535, align 1
  %1536 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1536, align 1
  %1537 = icmp eq i32 %1525, 0
  %1538 = zext i1 %1537 to i8
  %1539 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1538, i8* %1539, align 1
  %1540 = lshr i32 %1525, 31
  %1541 = trunc i32 %1540 to i8
  %1542 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1541, i8* %1542, align 1
  %1543 = lshr i32 %1525, 31
  %1544 = xor i32 %1540, %1543
  %1545 = add i32 %1544, %1543
  %1546 = icmp eq i32 %1545, 2
  %1547 = zext i1 %1546 to i8
  %1548 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1547, i8* %1548, align 1
  store %struct.Memory* %loadMem_4016b5, %struct.Memory** %MEMORY
  %loadMem_4016b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1550 = getelementptr inbounds %struct.GPR, %struct.GPR* %1549, i32 0, i32 33
  %1551 = getelementptr inbounds %struct.Reg, %struct.Reg* %1550, i32 0, i32 0
  %PC.i505 = bitcast %union.anon* %1551 to i64*
  %1552 = load i64, i64* %PC.i505
  %1553 = add i64 %1552, 107
  %1554 = load i64, i64* %PC.i505
  %1555 = add i64 %1554, 6
  %1556 = load i64, i64* %PC.i505
  %1557 = add i64 %1556, 6
  store i64 %1557, i64* %PC.i505
  %1558 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1559 = load i8, i8* %1558, align 1
  %1560 = icmp eq i8 %1559, 0
  %1561 = zext i1 %1560 to i8
  store i8 %1561, i8* %BRANCH_TAKEN, align 1
  %1562 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1563 = select i1 %1560, i64 %1553, i64 %1555
  store i64 %1563, i64* %1562, align 8
  store %struct.Memory* %loadMem_4016b8, %struct.Memory** %MEMORY
  %loadBr_4016b8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4016b8 = icmp eq i8 %loadBr_4016b8, 1
  br i1 %cmpBr_4016b8, label %block_.L_401723, label %block_4016be

block_4016be:                                     ; preds = %block_401669
  %loadMem_4016be = load %struct.Memory*, %struct.Memory** %MEMORY
  %1564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1565 = getelementptr inbounds %struct.GPR, %struct.GPR* %1564, i32 0, i32 33
  %1566 = getelementptr inbounds %struct.Reg, %struct.Reg* %1565, i32 0, i32 0
  %PC.i502 = bitcast %union.anon* %1566 to i64*
  %1567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1568 = getelementptr inbounds %struct.GPR, %struct.GPR* %1567, i32 0, i32 1
  %1569 = getelementptr inbounds %struct.Reg, %struct.Reg* %1568, i32 0, i32 0
  %RAX.i503 = bitcast %union.anon* %1569 to i64*
  %1570 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1571 = getelementptr inbounds %struct.GPR, %struct.GPR* %1570, i32 0, i32 15
  %1572 = getelementptr inbounds %struct.Reg, %struct.Reg* %1571, i32 0, i32 0
  %RBP.i504 = bitcast %union.anon* %1572 to i64*
  %1573 = load i64, i64* %RBP.i504
  %1574 = sub i64 %1573, 8
  %1575 = load i64, i64* %PC.i502
  %1576 = add i64 %1575, 4
  store i64 %1576, i64* %PC.i502
  %1577 = inttoptr i64 %1574 to i64*
  %1578 = load i64, i64* %1577
  store i64 %1578, i64* %RAX.i503, align 8
  store %struct.Memory* %loadMem_4016be, %struct.Memory** %MEMORY
  %loadMem_4016c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1580 = getelementptr inbounds %struct.GPR, %struct.GPR* %1579, i32 0, i32 33
  %1581 = getelementptr inbounds %struct.Reg, %struct.Reg* %1580, i32 0, i32 0
  %PC.i499 = bitcast %union.anon* %1581 to i64*
  %1582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1583 = getelementptr inbounds %struct.GPR, %struct.GPR* %1582, i32 0, i32 1
  %1584 = getelementptr inbounds %struct.Reg, %struct.Reg* %1583, i32 0, i32 0
  %RAX.i500 = bitcast %union.anon* %1584 to i64*
  %1585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1586 = getelementptr inbounds %struct.GPR, %struct.GPR* %1585, i32 0, i32 5
  %1587 = getelementptr inbounds %struct.Reg, %struct.Reg* %1586, i32 0, i32 0
  %RCX.i501 = bitcast %union.anon* %1587 to i64*
  %1588 = load i64, i64* %RAX.i500
  %1589 = add i64 %1588, 8
  %1590 = load i64, i64* %PC.i499
  %1591 = add i64 %1590, 3
  store i64 %1591, i64* %PC.i499
  %1592 = inttoptr i64 %1589 to i32*
  %1593 = load i32, i32* %1592
  %1594 = zext i32 %1593 to i64
  store i64 %1594, i64* %RCX.i501, align 8
  store %struct.Memory* %loadMem_4016c2, %struct.Memory** %MEMORY
  %loadMem_4016c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1596 = getelementptr inbounds %struct.GPR, %struct.GPR* %1595, i32 0, i32 33
  %1597 = getelementptr inbounds %struct.Reg, %struct.Reg* %1596, i32 0, i32 0
  %PC.i496 = bitcast %union.anon* %1597 to i64*
  %1598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1599 = getelementptr inbounds %struct.GPR, %struct.GPR* %1598, i32 0, i32 5
  %1600 = getelementptr inbounds %struct.Reg, %struct.Reg* %1599, i32 0, i32 0
  %1601 = bitcast %union.anon* %1600 to %struct.anon.2*
  %CL.i497 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1601, i32 0, i32 0
  %1602 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1603 = getelementptr inbounds %struct.GPR, %struct.GPR* %1602, i32 0, i32 7
  %1604 = getelementptr inbounds %struct.Reg, %struct.Reg* %1603, i32 0, i32 0
  %1605 = bitcast %union.anon* %1604 to %struct.anon.2*
  %DL.i498 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1605, i32 0, i32 0
  %1606 = load i8, i8* %CL.i497
  %1607 = zext i8 %1606 to i64
  %1608 = load i64, i64* %PC.i496
  %1609 = add i64 %1608, 2
  store i64 %1609, i64* %PC.i496
  store i8 %1606, i8* %DL.i498, align 1
  store %struct.Memory* %loadMem_4016c5, %struct.Memory** %MEMORY
  %loadMem_4016c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1611 = getelementptr inbounds %struct.GPR, %struct.GPR* %1610, i32 0, i32 33
  %1612 = getelementptr inbounds %struct.Reg, %struct.Reg* %1611, i32 0, i32 0
  %PC.i493 = bitcast %union.anon* %1612 to i64*
  %1613 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1614 = getelementptr inbounds %struct.GPR, %struct.GPR* %1613, i32 0, i32 1
  %1615 = getelementptr inbounds %struct.Reg, %struct.Reg* %1614, i32 0, i32 0
  %RAX.i494 = bitcast %union.anon* %1615 to i64*
  %1616 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1617 = getelementptr inbounds %struct.GPR, %struct.GPR* %1616, i32 0, i32 15
  %1618 = getelementptr inbounds %struct.Reg, %struct.Reg* %1617, i32 0, i32 0
  %RBP.i495 = bitcast %union.anon* %1618 to i64*
  %1619 = load i64, i64* %RBP.i495
  %1620 = sub i64 %1619, 8
  %1621 = load i64, i64* %PC.i493
  %1622 = add i64 %1621, 4
  store i64 %1622, i64* %PC.i493
  %1623 = inttoptr i64 %1620 to i64*
  %1624 = load i64, i64* %1623
  store i64 %1624, i64* %RAX.i494, align 8
  store %struct.Memory* %loadMem_4016c7, %struct.Memory** %MEMORY
  %loadMem_4016cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1626 = getelementptr inbounds %struct.GPR, %struct.GPR* %1625, i32 0, i32 33
  %1627 = getelementptr inbounds %struct.Reg, %struct.Reg* %1626, i32 0, i32 0
  %PC.i491 = bitcast %union.anon* %1627 to i64*
  %1628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1629 = getelementptr inbounds %struct.GPR, %struct.GPR* %1628, i32 0, i32 1
  %1630 = getelementptr inbounds %struct.Reg, %struct.Reg* %1629, i32 0, i32 0
  %RAX.i492 = bitcast %union.anon* %1630 to i64*
  %1631 = load i64, i64* %RAX.i492
  %1632 = add i64 %1631, 24
  %1633 = load i64, i64* %PC.i491
  %1634 = add i64 %1633, 4
  store i64 %1634, i64* %PC.i491
  %1635 = inttoptr i64 %1632 to i64*
  %1636 = load i64, i64* %1635
  store i64 %1636, i64* %RAX.i492, align 8
  store %struct.Memory* %loadMem_4016cb, %struct.Memory** %MEMORY
  %loadMem_4016cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %1637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1638 = getelementptr inbounds %struct.GPR, %struct.GPR* %1637, i32 0, i32 33
  %1639 = getelementptr inbounds %struct.Reg, %struct.Reg* %1638, i32 0, i32 0
  %PC.i488 = bitcast %union.anon* %1639 to i64*
  %1640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1641 = getelementptr inbounds %struct.GPR, %struct.GPR* %1640, i32 0, i32 9
  %1642 = getelementptr inbounds %struct.Reg, %struct.Reg* %1641, i32 0, i32 0
  %RSI.i489 = bitcast %union.anon* %1642 to i64*
  %1643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1644 = getelementptr inbounds %struct.GPR, %struct.GPR* %1643, i32 0, i32 15
  %1645 = getelementptr inbounds %struct.Reg, %struct.Reg* %1644, i32 0, i32 0
  %RBP.i490 = bitcast %union.anon* %1645 to i64*
  %1646 = load i64, i64* %RBP.i490
  %1647 = sub i64 %1646, 8
  %1648 = load i64, i64* %PC.i488
  %1649 = add i64 %1648, 4
  store i64 %1649, i64* %PC.i488
  %1650 = inttoptr i64 %1647 to i64*
  %1651 = load i64, i64* %1650
  store i64 %1651, i64* %RSI.i489, align 8
  store %struct.Memory* %loadMem_4016cf, %struct.Memory** %MEMORY
  %loadMem_4016d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1653 = getelementptr inbounds %struct.GPR, %struct.GPR* %1652, i32 0, i32 33
  %1654 = getelementptr inbounds %struct.Reg, %struct.Reg* %1653, i32 0, i32 0
  %PC.i486 = bitcast %union.anon* %1654 to i64*
  %1655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1656 = getelementptr inbounds %struct.GPR, %struct.GPR* %1655, i32 0, i32 9
  %1657 = getelementptr inbounds %struct.Reg, %struct.Reg* %1656, i32 0, i32 0
  %RSI.i487 = bitcast %union.anon* %1657 to i64*
  %1658 = load i64, i64* %RSI.i487
  %1659 = add i64 %1658, 32
  %1660 = load i64, i64* %PC.i486
  %1661 = add i64 %1660, 4
  store i64 %1661, i64* %PC.i486
  %1662 = inttoptr i64 %1659 to i64*
  %1663 = load i64, i64* %1662
  store i64 %1663, i64* %RSI.i487, align 8
  store %struct.Memory* %loadMem_4016d3, %struct.Memory** %MEMORY
  %loadMem_4016d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1665 = getelementptr inbounds %struct.GPR, %struct.GPR* %1664, i32 0, i32 33
  %1666 = getelementptr inbounds %struct.Reg, %struct.Reg* %1665, i32 0, i32 0
  %PC.i483 = bitcast %union.anon* %1666 to i64*
  %1667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1668 = getelementptr inbounds %struct.GPR, %struct.GPR* %1667, i32 0, i32 5
  %1669 = getelementptr inbounds %struct.Reg, %struct.Reg* %1668, i32 0, i32 0
  %RCX.i484 = bitcast %union.anon* %1669 to i64*
  %1670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1671 = getelementptr inbounds %struct.GPR, %struct.GPR* %1670, i32 0, i32 9
  %1672 = getelementptr inbounds %struct.Reg, %struct.Reg* %1671, i32 0, i32 0
  %RSI.i485 = bitcast %union.anon* %1672 to i64*
  %1673 = load i64, i64* %RSI.i485
  %1674 = load i64, i64* %PC.i483
  %1675 = add i64 %1674, 2
  store i64 %1675, i64* %PC.i483
  %1676 = inttoptr i64 %1673 to i32*
  %1677 = load i32, i32* %1676
  %1678 = zext i32 %1677 to i64
  store i64 %1678, i64* %RCX.i484, align 8
  store %struct.Memory* %loadMem_4016d7, %struct.Memory** %MEMORY
  %loadMem_4016d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1679 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1680 = getelementptr inbounds %struct.GPR, %struct.GPR* %1679, i32 0, i32 33
  %1681 = getelementptr inbounds %struct.Reg, %struct.Reg* %1680, i32 0, i32 0
  %PC.i480 = bitcast %union.anon* %1681 to i64*
  %1682 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1683 = getelementptr inbounds %struct.GPR, %struct.GPR* %1682, i32 0, i32 5
  %1684 = getelementptr inbounds %struct.Reg, %struct.Reg* %1683, i32 0, i32 0
  %ECX.i481 = bitcast %union.anon* %1684 to i32*
  %1685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1686 = getelementptr inbounds %struct.GPR, %struct.GPR* %1685, i32 0, i32 11
  %1687 = getelementptr inbounds %struct.Reg, %struct.Reg* %1686, i32 0, i32 0
  %RDI.i482 = bitcast %union.anon* %1687 to i64*
  %1688 = load i32, i32* %ECX.i481
  %1689 = zext i32 %1688 to i64
  %1690 = load i64, i64* %PC.i480
  %1691 = add i64 %1690, 2
  store i64 %1691, i64* %PC.i480
  %1692 = and i64 %1689, 4294967295
  store i64 %1692, i64* %RDI.i482, align 8
  store %struct.Memory* %loadMem_4016d9, %struct.Memory** %MEMORY
  %loadMem_4016db = load %struct.Memory*, %struct.Memory** %MEMORY
  %1693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1694 = getelementptr inbounds %struct.GPR, %struct.GPR* %1693, i32 0, i32 33
  %1695 = getelementptr inbounds %struct.Reg, %struct.Reg* %1694, i32 0, i32 0
  %PC.i478 = bitcast %union.anon* %1695 to i64*
  %1696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1697 = getelementptr inbounds %struct.GPR, %struct.GPR* %1696, i32 0, i32 11
  %1698 = getelementptr inbounds %struct.Reg, %struct.Reg* %1697, i32 0, i32 0
  %RDI.i479 = bitcast %union.anon* %1698 to i64*
  %1699 = load i64, i64* %RDI.i479
  %1700 = load i64, i64* %PC.i478
  %1701 = add i64 %1700, 3
  store i64 %1701, i64* %PC.i478
  %1702 = trunc i64 %1699 to i32
  %1703 = add i32 1, %1702
  %1704 = zext i32 %1703 to i64
  store i64 %1704, i64* %RDI.i479, align 8
  %1705 = icmp ult i32 %1703, %1702
  %1706 = icmp ult i32 %1703, 1
  %1707 = or i1 %1705, %1706
  %1708 = zext i1 %1707 to i8
  %1709 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1708, i8* %1709, align 1
  %1710 = and i32 %1703, 255
  %1711 = call i32 @llvm.ctpop.i32(i32 %1710)
  %1712 = trunc i32 %1711 to i8
  %1713 = and i8 %1712, 1
  %1714 = xor i8 %1713, 1
  %1715 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1714, i8* %1715, align 1
  %1716 = xor i64 1, %1699
  %1717 = trunc i64 %1716 to i32
  %1718 = xor i32 %1717, %1703
  %1719 = lshr i32 %1718, 4
  %1720 = trunc i32 %1719 to i8
  %1721 = and i8 %1720, 1
  %1722 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1721, i8* %1722, align 1
  %1723 = icmp eq i32 %1703, 0
  %1724 = zext i1 %1723 to i8
  %1725 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1724, i8* %1725, align 1
  %1726 = lshr i32 %1703, 31
  %1727 = trunc i32 %1726 to i8
  %1728 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1727, i8* %1728, align 1
  %1729 = lshr i32 %1702, 31
  %1730 = xor i32 %1726, %1729
  %1731 = add i32 %1730, %1726
  %1732 = icmp eq i32 %1731, 2
  %1733 = zext i1 %1732 to i8
  %1734 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1733, i8* %1734, align 1
  store %struct.Memory* %loadMem_4016db, %struct.Memory** %MEMORY
  %loadMem_4016de = load %struct.Memory*, %struct.Memory** %MEMORY
  %1735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1736 = getelementptr inbounds %struct.GPR, %struct.GPR* %1735, i32 0, i32 33
  %1737 = getelementptr inbounds %struct.Reg, %struct.Reg* %1736, i32 0, i32 0
  %PC.i475 = bitcast %union.anon* %1737 to i64*
  %1738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1739 = getelementptr inbounds %struct.GPR, %struct.GPR* %1738, i32 0, i32 11
  %1740 = getelementptr inbounds %struct.Reg, %struct.Reg* %1739, i32 0, i32 0
  %EDI.i476 = bitcast %union.anon* %1740 to i32*
  %1741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1742 = getelementptr inbounds %struct.GPR, %struct.GPR* %1741, i32 0, i32 9
  %1743 = getelementptr inbounds %struct.Reg, %struct.Reg* %1742, i32 0, i32 0
  %RSI.i477 = bitcast %union.anon* %1743 to i64*
  %1744 = load i64, i64* %RSI.i477
  %1745 = load i32, i32* %EDI.i476
  %1746 = zext i32 %1745 to i64
  %1747 = load i64, i64* %PC.i475
  %1748 = add i64 %1747, 2
  store i64 %1748, i64* %PC.i475
  %1749 = inttoptr i64 %1744 to i32*
  store i32 %1745, i32* %1749
  store %struct.Memory* %loadMem_4016de, %struct.Memory** %MEMORY
  %loadMem_4016e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1750 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1751 = getelementptr inbounds %struct.GPR, %struct.GPR* %1750, i32 0, i32 33
  %1752 = getelementptr inbounds %struct.Reg, %struct.Reg* %1751, i32 0, i32 0
  %PC.i472 = bitcast %union.anon* %1752 to i64*
  %1753 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1754 = getelementptr inbounds %struct.GPR, %struct.GPR* %1753, i32 0, i32 5
  %1755 = getelementptr inbounds %struct.Reg, %struct.Reg* %1754, i32 0, i32 0
  %ECX.i473 = bitcast %union.anon* %1755 to i32*
  %1756 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1757 = getelementptr inbounds %struct.GPR, %struct.GPR* %1756, i32 0, i32 9
  %1758 = getelementptr inbounds %struct.Reg, %struct.Reg* %1757, i32 0, i32 0
  %RSI.i474 = bitcast %union.anon* %1758 to i64*
  %1759 = load i32, i32* %ECX.i473
  %1760 = zext i32 %1759 to i64
  %1761 = load i64, i64* %PC.i472
  %1762 = add i64 %1761, 3
  store i64 %1762, i64* %PC.i472
  %1763 = shl i64 %1760, 32
  %1764 = ashr exact i64 %1763, 32
  store i64 %1764, i64* %RSI.i474, align 8
  store %struct.Memory* %loadMem_4016e0, %struct.Memory** %MEMORY
  %loadMem_4016e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1765 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1766 = getelementptr inbounds %struct.GPR, %struct.GPR* %1765, i32 0, i32 33
  %1767 = getelementptr inbounds %struct.Reg, %struct.Reg* %1766, i32 0, i32 0
  %PC.i468 = bitcast %union.anon* %1767 to i64*
  %1768 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1769 = getelementptr inbounds %struct.GPR, %struct.GPR* %1768, i32 0, i32 7
  %1770 = getelementptr inbounds %struct.Reg, %struct.Reg* %1769, i32 0, i32 0
  %1771 = bitcast %union.anon* %1770 to %struct.anon.2*
  %DL.i469 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1771, i32 0, i32 0
  %1772 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1773 = getelementptr inbounds %struct.GPR, %struct.GPR* %1772, i32 0, i32 1
  %1774 = getelementptr inbounds %struct.Reg, %struct.Reg* %1773, i32 0, i32 0
  %RAX.i470 = bitcast %union.anon* %1774 to i64*
  %1775 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1776 = getelementptr inbounds %struct.GPR, %struct.GPR* %1775, i32 0, i32 9
  %1777 = getelementptr inbounds %struct.Reg, %struct.Reg* %1776, i32 0, i32 0
  %RSI.i471 = bitcast %union.anon* %1777 to i64*
  %1778 = load i64, i64* %RAX.i470
  %1779 = load i64, i64* %RSI.i471
  %1780 = add i64 %1779, %1778
  %1781 = load i8, i8* %DL.i469
  %1782 = zext i8 %1781 to i64
  %1783 = load i64, i64* %PC.i468
  %1784 = add i64 %1783, 3
  store i64 %1784, i64* %PC.i468
  %1785 = inttoptr i64 %1780 to i8*
  store i8 %1781, i8* %1785
  store %struct.Memory* %loadMem_4016e3, %struct.Memory** %MEMORY
  %loadMem_4016e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1787 = getelementptr inbounds %struct.GPR, %struct.GPR* %1786, i32 0, i32 33
  %1788 = getelementptr inbounds %struct.Reg, %struct.Reg* %1787, i32 0, i32 0
  %PC.i465 = bitcast %union.anon* %1788 to i64*
  %1789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1790 = getelementptr inbounds %struct.GPR, %struct.GPR* %1789, i32 0, i32 1
  %1791 = getelementptr inbounds %struct.Reg, %struct.Reg* %1790, i32 0, i32 0
  %RAX.i466 = bitcast %union.anon* %1791 to i64*
  %1792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1793 = getelementptr inbounds %struct.GPR, %struct.GPR* %1792, i32 0, i32 15
  %1794 = getelementptr inbounds %struct.Reg, %struct.Reg* %1793, i32 0, i32 0
  %RBP.i467 = bitcast %union.anon* %1794 to i64*
  %1795 = load i64, i64* %RBP.i467
  %1796 = sub i64 %1795, 8
  %1797 = load i64, i64* %PC.i465
  %1798 = add i64 %1797, 4
  store i64 %1798, i64* %PC.i465
  %1799 = inttoptr i64 %1796 to i64*
  %1800 = load i64, i64* %1799
  store i64 %1800, i64* %RAX.i466, align 8
  store %struct.Memory* %loadMem_4016e6, %struct.Memory** %MEMORY
  %loadMem_4016ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %1801 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1802 = getelementptr inbounds %struct.GPR, %struct.GPR* %1801, i32 0, i32 33
  %1803 = getelementptr inbounds %struct.Reg, %struct.Reg* %1802, i32 0, i32 0
  %PC.i463 = bitcast %union.anon* %1803 to i64*
  %1804 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1805 = getelementptr inbounds %struct.GPR, %struct.GPR* %1804, i32 0, i32 1
  %1806 = getelementptr inbounds %struct.Reg, %struct.Reg* %1805, i32 0, i32 0
  %RAX.i464 = bitcast %union.anon* %1806 to i64*
  %1807 = load i64, i64* %RAX.i464
  %1808 = add i64 %1807, 12
  %1809 = load i64, i64* %PC.i463
  %1810 = add i64 %1809, 7
  store i64 %1810, i64* %PC.i463
  %1811 = inttoptr i64 %1808 to i32*
  store i32 8, i32* %1811
  store %struct.Memory* %loadMem_4016ea, %struct.Memory** %MEMORY
  br label %block_.L_4016f1

block_.L_4016f1:                                  ; preds = %block_4016ff, %block_4016be
  %loadMem_4016f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1813 = getelementptr inbounds %struct.GPR, %struct.GPR* %1812, i32 0, i32 33
  %1814 = getelementptr inbounds %struct.Reg, %struct.Reg* %1813, i32 0, i32 0
  %PC.i460 = bitcast %union.anon* %1814 to i64*
  %1815 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1816 = getelementptr inbounds %struct.GPR, %struct.GPR* %1815, i32 0, i32 1
  %1817 = getelementptr inbounds %struct.Reg, %struct.Reg* %1816, i32 0, i32 0
  %RAX.i461 = bitcast %union.anon* %1817 to i64*
  %1818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1819 = getelementptr inbounds %struct.GPR, %struct.GPR* %1818, i32 0, i32 15
  %1820 = getelementptr inbounds %struct.Reg, %struct.Reg* %1819, i32 0, i32 0
  %RBP.i462 = bitcast %union.anon* %1820 to i64*
  %1821 = load i64, i64* %RBP.i462
  %1822 = sub i64 %1821, 8
  %1823 = load i64, i64* %PC.i460
  %1824 = add i64 %1823, 4
  store i64 %1824, i64* %PC.i460
  %1825 = inttoptr i64 %1822 to i64*
  %1826 = load i64, i64* %1825
  store i64 %1826, i64* %RAX.i461, align 8
  store %struct.Memory* %loadMem_4016f1, %struct.Memory** %MEMORY
  %loadMem_4016f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1827 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1828 = getelementptr inbounds %struct.GPR, %struct.GPR* %1827, i32 0, i32 33
  %1829 = getelementptr inbounds %struct.Reg, %struct.Reg* %1828, i32 0, i32 0
  %PC.i458 = bitcast %union.anon* %1829 to i64*
  %1830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1831 = getelementptr inbounds %struct.GPR, %struct.GPR* %1830, i32 0, i32 1
  %1832 = getelementptr inbounds %struct.Reg, %struct.Reg* %1831, i32 0, i32 0
  %RAX.i459 = bitcast %union.anon* %1832 to i64*
  %1833 = load i64, i64* %RAX.i459
  %1834 = add i64 %1833, 80
  %1835 = load i64, i64* %PC.i458
  %1836 = add i64 %1835, 4
  store i64 %1836, i64* %PC.i458
  %1837 = inttoptr i64 %1834 to i32*
  %1838 = load i32, i32* %1837
  %1839 = sub i32 %1838, 7
  %1840 = icmp ult i32 %1838, 7
  %1841 = zext i1 %1840 to i8
  %1842 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1841, i8* %1842, align 1
  %1843 = and i32 %1839, 255
  %1844 = call i32 @llvm.ctpop.i32(i32 %1843)
  %1845 = trunc i32 %1844 to i8
  %1846 = and i8 %1845, 1
  %1847 = xor i8 %1846, 1
  %1848 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1847, i8* %1848, align 1
  %1849 = xor i32 %1838, 7
  %1850 = xor i32 %1849, %1839
  %1851 = lshr i32 %1850, 4
  %1852 = trunc i32 %1851 to i8
  %1853 = and i8 %1852, 1
  %1854 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1853, i8* %1854, align 1
  %1855 = icmp eq i32 %1839, 0
  %1856 = zext i1 %1855 to i8
  %1857 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1856, i8* %1857, align 1
  %1858 = lshr i32 %1839, 31
  %1859 = trunc i32 %1858 to i8
  %1860 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1859, i8* %1860, align 1
  %1861 = lshr i32 %1838, 31
  %1862 = xor i32 %1858, %1861
  %1863 = add i32 %1862, %1861
  %1864 = icmp eq i32 %1863, 2
  %1865 = zext i1 %1864 to i8
  %1866 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1865, i8* %1866, align 1
  store %struct.Memory* %loadMem_4016f5, %struct.Memory** %MEMORY
  %loadMem_4016f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1867 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1868 = getelementptr inbounds %struct.GPR, %struct.GPR* %1867, i32 0, i32 33
  %1869 = getelementptr inbounds %struct.Reg, %struct.Reg* %1868, i32 0, i32 0
  %PC.i457 = bitcast %union.anon* %1869 to i64*
  %1870 = load i64, i64* %PC.i457
  %1871 = add i64 %1870, 37
  %1872 = load i64, i64* %PC.i457
  %1873 = add i64 %1872, 6
  %1874 = load i64, i64* %PC.i457
  %1875 = add i64 %1874, 6
  store i64 %1875, i64* %PC.i457
  %1876 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1877 = load i8, i8* %1876, align 1
  %1878 = icmp ne i8 %1877, 0
  %1879 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1880 = load i8, i8* %1879, align 1
  %1881 = icmp ne i8 %1880, 0
  %1882 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1883 = load i8, i8* %1882, align 1
  %1884 = icmp ne i8 %1883, 0
  %1885 = xor i1 %1881, %1884
  %1886 = or i1 %1878, %1885
  %1887 = zext i1 %1886 to i8
  store i8 %1887, i8* %BRANCH_TAKEN, align 1
  %1888 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1889 = select i1 %1886, i64 %1871, i64 %1873
  store i64 %1889, i64* %1888, align 8
  store %struct.Memory* %loadMem_4016f9, %struct.Memory** %MEMORY
  %loadBr_4016f9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4016f9 = icmp eq i8 %loadBr_4016f9, 1
  br i1 %cmpBr_4016f9, label %block_.L_40171e, label %block_4016ff

block_4016ff:                                     ; preds = %block_.L_4016f1
  %loadMem_4016ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %1890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1891 = getelementptr inbounds %struct.GPR, %struct.GPR* %1890, i32 0, i32 33
  %1892 = getelementptr inbounds %struct.Reg, %struct.Reg* %1891, i32 0, i32 0
  %PC.i454 = bitcast %union.anon* %1892 to i64*
  %1893 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1894 = getelementptr inbounds %struct.GPR, %struct.GPR* %1893, i32 0, i32 1
  %1895 = getelementptr inbounds %struct.Reg, %struct.Reg* %1894, i32 0, i32 0
  %RAX.i455 = bitcast %union.anon* %1895 to i64*
  %1896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1897 = getelementptr inbounds %struct.GPR, %struct.GPR* %1896, i32 0, i32 15
  %1898 = getelementptr inbounds %struct.Reg, %struct.Reg* %1897, i32 0, i32 0
  %RBP.i456 = bitcast %union.anon* %1898 to i64*
  %1899 = load i64, i64* %RBP.i456
  %1900 = sub i64 %1899, 8
  %1901 = load i64, i64* %PC.i454
  %1902 = add i64 %1901, 4
  store i64 %1902, i64* %PC.i454
  %1903 = inttoptr i64 %1900 to i64*
  %1904 = load i64, i64* %1903
  store i64 %1904, i64* %RAX.i455, align 8
  store %struct.Memory* %loadMem_4016ff, %struct.Memory** %MEMORY
  %loadMem_401703 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1905 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1906 = getelementptr inbounds %struct.GPR, %struct.GPR* %1905, i32 0, i32 33
  %1907 = getelementptr inbounds %struct.Reg, %struct.Reg* %1906, i32 0, i32 0
  %PC.i451 = bitcast %union.anon* %1907 to i64*
  %1908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1909 = getelementptr inbounds %struct.GPR, %struct.GPR* %1908, i32 0, i32 1
  %1910 = getelementptr inbounds %struct.Reg, %struct.Reg* %1909, i32 0, i32 0
  %RAX.i452 = bitcast %union.anon* %1910 to i64*
  %1911 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1912 = getelementptr inbounds %struct.GPR, %struct.GPR* %1911, i32 0, i32 5
  %1913 = getelementptr inbounds %struct.Reg, %struct.Reg* %1912, i32 0, i32 0
  %RCX.i453 = bitcast %union.anon* %1913 to i64*
  %1914 = load i64, i64* %RAX.i452
  %1915 = add i64 %1914, 80
  %1916 = load i64, i64* %PC.i451
  %1917 = add i64 %1916, 3
  store i64 %1917, i64* %PC.i451
  %1918 = inttoptr i64 %1915 to i32*
  %1919 = load i32, i32* %1918
  %1920 = zext i32 %1919 to i64
  store i64 %1920, i64* %RCX.i453, align 8
  store %struct.Memory* %loadMem_401703, %struct.Memory** %MEMORY
  %loadMem_401706 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1921 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1922 = getelementptr inbounds %struct.GPR, %struct.GPR* %1921, i32 0, i32 33
  %1923 = getelementptr inbounds %struct.Reg, %struct.Reg* %1922, i32 0, i32 0
  %PC.i449 = bitcast %union.anon* %1923 to i64*
  %1924 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1925 = getelementptr inbounds %struct.GPR, %struct.GPR* %1924, i32 0, i32 5
  %1926 = getelementptr inbounds %struct.Reg, %struct.Reg* %1925, i32 0, i32 0
  %RCX.i450 = bitcast %union.anon* %1926 to i64*
  %1927 = load i64, i64* %RCX.i450
  %1928 = load i64, i64* %PC.i449
  %1929 = add i64 %1928, 3
  store i64 %1929, i64* %PC.i449
  %1930 = trunc i64 %1927 to i32
  %1931 = sub i32 %1930, 8
  %1932 = zext i32 %1931 to i64
  store i64 %1932, i64* %RCX.i450, align 8
  %1933 = icmp ult i32 %1930, 8
  %1934 = zext i1 %1933 to i8
  %1935 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1934, i8* %1935, align 1
  %1936 = and i32 %1931, 255
  %1937 = call i32 @llvm.ctpop.i32(i32 %1936)
  %1938 = trunc i32 %1937 to i8
  %1939 = and i8 %1938, 1
  %1940 = xor i8 %1939, 1
  %1941 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1940, i8* %1941, align 1
  %1942 = xor i64 8, %1927
  %1943 = trunc i64 %1942 to i32
  %1944 = xor i32 %1943, %1931
  %1945 = lshr i32 %1944, 4
  %1946 = trunc i32 %1945 to i8
  %1947 = and i8 %1946, 1
  %1948 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1947, i8* %1948, align 1
  %1949 = icmp eq i32 %1931, 0
  %1950 = zext i1 %1949 to i8
  %1951 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1950, i8* %1951, align 1
  %1952 = lshr i32 %1931, 31
  %1953 = trunc i32 %1952 to i8
  %1954 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1953, i8* %1954, align 1
  %1955 = lshr i32 %1930, 31
  %1956 = xor i32 %1952, %1955
  %1957 = add i32 %1956, %1955
  %1958 = icmp eq i32 %1957, 2
  %1959 = zext i1 %1958 to i8
  %1960 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1959, i8* %1960, align 1
  store %struct.Memory* %loadMem_401706, %struct.Memory** %MEMORY
  %loadMem_401709 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1961 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1962 = getelementptr inbounds %struct.GPR, %struct.GPR* %1961, i32 0, i32 33
  %1963 = getelementptr inbounds %struct.Reg, %struct.Reg* %1962, i32 0, i32 0
  %PC.i446 = bitcast %union.anon* %1963 to i64*
  %1964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1965 = getelementptr inbounds %struct.GPR, %struct.GPR* %1964, i32 0, i32 5
  %1966 = getelementptr inbounds %struct.Reg, %struct.Reg* %1965, i32 0, i32 0
  %ECX.i447 = bitcast %union.anon* %1966 to i32*
  %1967 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1968 = getelementptr inbounds %struct.GPR, %struct.GPR* %1967, i32 0, i32 1
  %1969 = getelementptr inbounds %struct.Reg, %struct.Reg* %1968, i32 0, i32 0
  %RAX.i448 = bitcast %union.anon* %1969 to i64*
  %1970 = load i64, i64* %RAX.i448
  %1971 = add i64 %1970, 80
  %1972 = load i32, i32* %ECX.i447
  %1973 = zext i32 %1972 to i64
  %1974 = load i64, i64* %PC.i446
  %1975 = add i64 %1974, 3
  store i64 %1975, i64* %PC.i446
  %1976 = inttoptr i64 %1971 to i32*
  store i32 %1972, i32* %1976
  store %struct.Memory* %loadMem_401709, %struct.Memory** %MEMORY
  %loadMem_40170c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1977 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1978 = getelementptr inbounds %struct.GPR, %struct.GPR* %1977, i32 0, i32 33
  %1979 = getelementptr inbounds %struct.Reg, %struct.Reg* %1978, i32 0, i32 0
  %PC.i443 = bitcast %union.anon* %1979 to i64*
  %1980 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1981 = getelementptr inbounds %struct.GPR, %struct.GPR* %1980, i32 0, i32 1
  %1982 = getelementptr inbounds %struct.Reg, %struct.Reg* %1981, i32 0, i32 0
  %RAX.i444 = bitcast %union.anon* %1982 to i64*
  %1983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1984 = getelementptr inbounds %struct.GPR, %struct.GPR* %1983, i32 0, i32 15
  %1985 = getelementptr inbounds %struct.Reg, %struct.Reg* %1984, i32 0, i32 0
  %RBP.i445 = bitcast %union.anon* %1985 to i64*
  %1986 = load i64, i64* %RBP.i445
  %1987 = sub i64 %1986, 8
  %1988 = load i64, i64* %PC.i443
  %1989 = add i64 %1988, 4
  store i64 %1989, i64* %PC.i443
  %1990 = inttoptr i64 %1987 to i64*
  %1991 = load i64, i64* %1990
  store i64 %1991, i64* %RAX.i444, align 8
  store %struct.Memory* %loadMem_40170c, %struct.Memory** %MEMORY
  %loadMem_401710 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1993 = getelementptr inbounds %struct.GPR, %struct.GPR* %1992, i32 0, i32 33
  %1994 = getelementptr inbounds %struct.Reg, %struct.Reg* %1993, i32 0, i32 0
  %PC.i440 = bitcast %union.anon* %1994 to i64*
  %1995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1996 = getelementptr inbounds %struct.GPR, %struct.GPR* %1995, i32 0, i32 1
  %1997 = getelementptr inbounds %struct.Reg, %struct.Reg* %1996, i32 0, i32 0
  %RAX.i441 = bitcast %union.anon* %1997 to i64*
  %1998 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1999 = getelementptr inbounds %struct.GPR, %struct.GPR* %1998, i32 0, i32 5
  %2000 = getelementptr inbounds %struct.Reg, %struct.Reg* %1999, i32 0, i32 0
  %RCX.i442 = bitcast %union.anon* %2000 to i64*
  %2001 = load i64, i64* %RAX.i441
  %2002 = add i64 %2001, 88
  %2003 = load i64, i64* %PC.i440
  %2004 = add i64 %2003, 3
  store i64 %2004, i64* %PC.i440
  %2005 = inttoptr i64 %2002 to i32*
  %2006 = load i32, i32* %2005
  %2007 = zext i32 %2006 to i64
  store i64 %2007, i64* %RCX.i442, align 8
  store %struct.Memory* %loadMem_401710, %struct.Memory** %MEMORY
  %loadMem_401713 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2008 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2009 = getelementptr inbounds %struct.GPR, %struct.GPR* %2008, i32 0, i32 33
  %2010 = getelementptr inbounds %struct.Reg, %struct.Reg* %2009, i32 0, i32 0
  %PC.i438 = bitcast %union.anon* %2010 to i64*
  %2011 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2012 = getelementptr inbounds %struct.GPR, %struct.GPR* %2011, i32 0, i32 5
  %2013 = getelementptr inbounds %struct.Reg, %struct.Reg* %2012, i32 0, i32 0
  %RCX.i439 = bitcast %union.anon* %2013 to i64*
  %2014 = load i64, i64* %RCX.i439
  %2015 = load i64, i64* %PC.i438
  %2016 = add i64 %2015, 3
  store i64 %2016, i64* %PC.i438
  %2017 = trunc i64 %2014 to i32
  %2018 = add i32 1, %2017
  %2019 = zext i32 %2018 to i64
  store i64 %2019, i64* %RCX.i439, align 8
  %2020 = icmp ult i32 %2018, %2017
  %2021 = icmp ult i32 %2018, 1
  %2022 = or i1 %2020, %2021
  %2023 = zext i1 %2022 to i8
  %2024 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2023, i8* %2024, align 1
  %2025 = and i32 %2018, 255
  %2026 = call i32 @llvm.ctpop.i32(i32 %2025)
  %2027 = trunc i32 %2026 to i8
  %2028 = and i8 %2027, 1
  %2029 = xor i8 %2028, 1
  %2030 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2029, i8* %2030, align 1
  %2031 = xor i64 1, %2014
  %2032 = trunc i64 %2031 to i32
  %2033 = xor i32 %2032, %2018
  %2034 = lshr i32 %2033, 4
  %2035 = trunc i32 %2034 to i8
  %2036 = and i8 %2035, 1
  %2037 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2036, i8* %2037, align 1
  %2038 = icmp eq i32 %2018, 0
  %2039 = zext i1 %2038 to i8
  %2040 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2039, i8* %2040, align 1
  %2041 = lshr i32 %2018, 31
  %2042 = trunc i32 %2041 to i8
  %2043 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2042, i8* %2043, align 1
  %2044 = lshr i32 %2017, 31
  %2045 = xor i32 %2041, %2044
  %2046 = add i32 %2045, %2041
  %2047 = icmp eq i32 %2046, 2
  %2048 = zext i1 %2047 to i8
  %2049 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2048, i8* %2049, align 1
  store %struct.Memory* %loadMem_401713, %struct.Memory** %MEMORY
  %loadMem_401716 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2050 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2051 = getelementptr inbounds %struct.GPR, %struct.GPR* %2050, i32 0, i32 33
  %2052 = getelementptr inbounds %struct.Reg, %struct.Reg* %2051, i32 0, i32 0
  %PC.i435 = bitcast %union.anon* %2052 to i64*
  %2053 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2054 = getelementptr inbounds %struct.GPR, %struct.GPR* %2053, i32 0, i32 5
  %2055 = getelementptr inbounds %struct.Reg, %struct.Reg* %2054, i32 0, i32 0
  %ECX.i436 = bitcast %union.anon* %2055 to i32*
  %2056 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2057 = getelementptr inbounds %struct.GPR, %struct.GPR* %2056, i32 0, i32 1
  %2058 = getelementptr inbounds %struct.Reg, %struct.Reg* %2057, i32 0, i32 0
  %RAX.i437 = bitcast %union.anon* %2058 to i64*
  %2059 = load i64, i64* %RAX.i437
  %2060 = add i64 %2059, 88
  %2061 = load i32, i32* %ECX.i436
  %2062 = zext i32 %2061 to i64
  %2063 = load i64, i64* %PC.i435
  %2064 = add i64 %2063, 3
  store i64 %2064, i64* %PC.i435
  %2065 = inttoptr i64 %2060 to i32*
  store i32 %2061, i32* %2065
  store %struct.Memory* %loadMem_401716, %struct.Memory** %MEMORY
  %loadMem_401719 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2066 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2067 = getelementptr inbounds %struct.GPR, %struct.GPR* %2066, i32 0, i32 33
  %2068 = getelementptr inbounds %struct.Reg, %struct.Reg* %2067, i32 0, i32 0
  %PC.i434 = bitcast %union.anon* %2068 to i64*
  %2069 = load i64, i64* %PC.i434
  %2070 = add i64 %2069, -40
  %2071 = load i64, i64* %PC.i434
  %2072 = add i64 %2071, 5
  store i64 %2072, i64* %PC.i434
  %2073 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2070, i64* %2073, align 8
  store %struct.Memory* %loadMem_401719, %struct.Memory** %MEMORY
  br label %block_.L_4016f1

block_.L_40171e:                                  ; preds = %block_.L_4016f1
  %loadMem_40171e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2074 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2075 = getelementptr inbounds %struct.GPR, %struct.GPR* %2074, i32 0, i32 33
  %2076 = getelementptr inbounds %struct.Reg, %struct.Reg* %2075, i32 0, i32 0
  %PC.i433 = bitcast %union.anon* %2076 to i64*
  %2077 = load i64, i64* %PC.i433
  %2078 = add i64 %2077, 5
  %2079 = load i64, i64* %PC.i433
  %2080 = add i64 %2079, 5
  store i64 %2080, i64* %PC.i433
  %2081 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2078, i64* %2081, align 8
  store %struct.Memory* %loadMem_40171e, %struct.Memory** %MEMORY
  br label %block_.L_401723

block_.L_401723:                                  ; preds = %block_.L_40171e, %block_401669
  %loadMem_401723 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2082 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2083 = getelementptr inbounds %struct.GPR, %struct.GPR* %2082, i32 0, i32 33
  %2084 = getelementptr inbounds %struct.Reg, %struct.Reg* %2083, i32 0, i32 0
  %PC.i432 = bitcast %union.anon* %2084 to i64*
  %2085 = load i64, i64* %PC.i432
  %2086 = add i64 %2085, -200
  %2087 = load i64, i64* %PC.i432
  %2088 = add i64 %2087, 5
  store i64 %2088, i64* %PC.i432
  %2089 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2086, i64* %2089, align 8
  store %struct.Memory* %loadMem_401723, %struct.Memory** %MEMORY
  br label %block_.L_40165b

block_.L_401728:                                  ; preds = %block_.L_40165b
  %loadMem_401728 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2091 = getelementptr inbounds %struct.GPR, %struct.GPR* %2090, i32 0, i32 33
  %2092 = getelementptr inbounds %struct.Reg, %struct.Reg* %2091, i32 0, i32 0
  %PC.i429 = bitcast %union.anon* %2092 to i64*
  %2093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2094 = getelementptr inbounds %struct.GPR, %struct.GPR* %2093, i32 0, i32 1
  %2095 = getelementptr inbounds %struct.Reg, %struct.Reg* %2094, i32 0, i32 0
  %RAX.i430 = bitcast %union.anon* %2095 to i64*
  %2096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2097 = getelementptr inbounds %struct.GPR, %struct.GPR* %2096, i32 0, i32 15
  %2098 = getelementptr inbounds %struct.Reg, %struct.Reg* %2097, i32 0, i32 0
  %RBP.i431 = bitcast %union.anon* %2098 to i64*
  %2099 = load i64, i64* %RBP.i431
  %2100 = sub i64 %2099, 8
  %2101 = load i64, i64* %PC.i429
  %2102 = add i64 %2101, 4
  store i64 %2102, i64* %PC.i429
  %2103 = inttoptr i64 %2100 to i64*
  %2104 = load i64, i64* %2103
  store i64 %2104, i64* %RAX.i430, align 8
  store %struct.Memory* %loadMem_401728, %struct.Memory** %MEMORY
  %loadMem_40172c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2106 = getelementptr inbounds %struct.GPR, %struct.GPR* %2105, i32 0, i32 33
  %2107 = getelementptr inbounds %struct.Reg, %struct.Reg* %2106, i32 0, i32 0
  %PC.i426 = bitcast %union.anon* %2107 to i64*
  %2108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2109 = getelementptr inbounds %struct.GPR, %struct.GPR* %2108, i32 0, i32 1
  %2110 = getelementptr inbounds %struct.Reg, %struct.Reg* %2109, i32 0, i32 0
  %RAX.i427 = bitcast %union.anon* %2110 to i64*
  %2111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2112 = getelementptr inbounds %struct.GPR, %struct.GPR* %2111, i32 0, i32 5
  %2113 = getelementptr inbounds %struct.Reg, %struct.Reg* %2112, i32 0, i32 0
  %RCX.i428 = bitcast %union.anon* %2113 to i64*
  %2114 = load i64, i64* %RAX.i427
  %2115 = add i64 %2114, 8
  %2116 = load i64, i64* %PC.i426
  %2117 = add i64 %2116, 3
  store i64 %2117, i64* %PC.i426
  %2118 = inttoptr i64 %2115 to i32*
  %2119 = load i32, i32* %2118
  %2120 = zext i32 %2119 to i64
  store i64 %2120, i64* %RCX.i428, align 8
  store %struct.Memory* %loadMem_40172c, %struct.Memory** %MEMORY
  %loadMem_40172f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2122 = getelementptr inbounds %struct.GPR, %struct.GPR* %2121, i32 0, i32 33
  %2123 = getelementptr inbounds %struct.Reg, %struct.Reg* %2122, i32 0, i32 0
  %PC.i424 = bitcast %union.anon* %2123 to i64*
  %2124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2125 = getelementptr inbounds %struct.GPR, %struct.GPR* %2124, i32 0, i32 5
  %2126 = getelementptr inbounds %struct.Reg, %struct.Reg* %2125, i32 0, i32 0
  %RCX.i425 = bitcast %union.anon* %2126 to i64*
  %2127 = load i64, i64* %RCX.i425
  %2128 = load i64, i64* %PC.i424
  %2129 = add i64 %2128, 2
  store i64 %2129, i64* %PC.i424
  %2130 = trunc i64 %2127 to i32
  %2131 = shl i32 %2130, 1
  %2132 = icmp slt i32 %2130, 0
  %2133 = icmp slt i32 %2131, 0
  %2134 = xor i1 %2132, %2133
  %2135 = zext i32 %2131 to i64
  store i64 %2135, i64* %RCX.i425, align 8
  %2136 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2137 = zext i1 %2132 to i8
  store i8 %2137, i8* %2136, align 1
  %2138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2139 = and i32 %2131, 254
  %2140 = call i32 @llvm.ctpop.i32(i32 %2139)
  %2141 = trunc i32 %2140 to i8
  %2142 = and i8 %2141, 1
  %2143 = xor i8 %2142, 1
  store i8 %2143, i8* %2138, align 1
  %2144 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2144, align 1
  %2145 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2146 = icmp eq i32 %2131, 0
  %2147 = zext i1 %2146 to i8
  store i8 %2147, i8* %2145, align 1
  %2148 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2149 = lshr i32 %2131, 31
  %2150 = trunc i32 %2149 to i8
  store i8 %2150, i8* %2148, align 1
  %2151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2152 = zext i1 %2134 to i8
  store i8 %2152, i8* %2151, align 1
  store %struct.Memory* %loadMem_40172f, %struct.Memory** %MEMORY
  %loadMem_401732 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2154 = getelementptr inbounds %struct.GPR, %struct.GPR* %2153, i32 0, i32 33
  %2155 = getelementptr inbounds %struct.Reg, %struct.Reg* %2154, i32 0, i32 0
  %PC.i421 = bitcast %union.anon* %2155 to i64*
  %2156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2157 = getelementptr inbounds %struct.GPR, %struct.GPR* %2156, i32 0, i32 5
  %2158 = getelementptr inbounds %struct.Reg, %struct.Reg* %2157, i32 0, i32 0
  %ECX.i422 = bitcast %union.anon* %2158 to i32*
  %2159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2160 = getelementptr inbounds %struct.GPR, %struct.GPR* %2159, i32 0, i32 1
  %2161 = getelementptr inbounds %struct.Reg, %struct.Reg* %2160, i32 0, i32 0
  %RAX.i423 = bitcast %union.anon* %2161 to i64*
  %2162 = load i64, i64* %RAX.i423
  %2163 = add i64 %2162, 8
  %2164 = load i32, i32* %ECX.i422
  %2165 = zext i32 %2164 to i64
  %2166 = load i64, i64* %PC.i421
  %2167 = add i64 %2166, 3
  store i64 %2167, i64* %PC.i421
  %2168 = inttoptr i64 %2163 to i32*
  store i32 %2164, i32* %2168
  store %struct.Memory* %loadMem_401732, %struct.Memory** %MEMORY
  %loadMem_401735 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2170 = getelementptr inbounds %struct.GPR, %struct.GPR* %2169, i32 0, i32 33
  %2171 = getelementptr inbounds %struct.Reg, %struct.Reg* %2170, i32 0, i32 0
  %PC.i418 = bitcast %union.anon* %2171 to i64*
  %2172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2173 = getelementptr inbounds %struct.GPR, %struct.GPR* %2172, i32 0, i32 1
  %2174 = getelementptr inbounds %struct.Reg, %struct.Reg* %2173, i32 0, i32 0
  %RAX.i419 = bitcast %union.anon* %2174 to i64*
  %2175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2176 = getelementptr inbounds %struct.GPR, %struct.GPR* %2175, i32 0, i32 15
  %2177 = getelementptr inbounds %struct.Reg, %struct.Reg* %2176, i32 0, i32 0
  %RBP.i420 = bitcast %union.anon* %2177 to i64*
  %2178 = load i64, i64* %RBP.i420
  %2179 = sub i64 %2178, 8
  %2180 = load i64, i64* %PC.i418
  %2181 = add i64 %2180, 4
  store i64 %2181, i64* %PC.i418
  %2182 = inttoptr i64 %2179 to i64*
  %2183 = load i64, i64* %2182
  store i64 %2183, i64* %RAX.i419, align 8
  store %struct.Memory* %loadMem_401735, %struct.Memory** %MEMORY
  %loadMem_401739 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2185 = getelementptr inbounds %struct.GPR, %struct.GPR* %2184, i32 0, i32 33
  %2186 = getelementptr inbounds %struct.Reg, %struct.Reg* %2185, i32 0, i32 0
  %PC.i415 = bitcast %union.anon* %2186 to i64*
  %2187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2188 = getelementptr inbounds %struct.GPR, %struct.GPR* %2187, i32 0, i32 1
  %2189 = getelementptr inbounds %struct.Reg, %struct.Reg* %2188, i32 0, i32 0
  %RAX.i416 = bitcast %union.anon* %2189 to i64*
  %2190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2191 = getelementptr inbounds %struct.GPR, %struct.GPR* %2190, i32 0, i32 5
  %2192 = getelementptr inbounds %struct.Reg, %struct.Reg* %2191, i32 0, i32 0
  %RCX.i417 = bitcast %union.anon* %2192 to i64*
  %2193 = load i64, i64* %RAX.i416
  %2194 = load i64, i64* %PC.i415
  %2195 = add i64 %2194, 2
  store i64 %2195, i64* %PC.i415
  %2196 = inttoptr i64 %2193 to i32*
  %2197 = load i32, i32* %2196
  %2198 = zext i32 %2197 to i64
  store i64 %2198, i64* %RCX.i417, align 8
  store %struct.Memory* %loadMem_401739, %struct.Memory** %MEMORY
  %loadMem_40173b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2200 = getelementptr inbounds %struct.GPR, %struct.GPR* %2199, i32 0, i32 33
  %2201 = getelementptr inbounds %struct.Reg, %struct.Reg* %2200, i32 0, i32 0
  %PC.i413 = bitcast %union.anon* %2201 to i64*
  %2202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2203 = getelementptr inbounds %struct.GPR, %struct.GPR* %2202, i32 0, i32 5
  %2204 = getelementptr inbounds %struct.Reg, %struct.Reg* %2203, i32 0, i32 0
  %RCX.i414 = bitcast %union.anon* %2204 to i64*
  %2205 = load i64, i64* %RCX.i414
  %2206 = load i64, i64* %PC.i413
  %2207 = add i64 %2206, 3
  store i64 %2207, i64* %PC.i413
  %2208 = and i64 %2205, 4294967295
  %2209 = lshr i64 %2208, 7
  %2210 = trunc i64 %2209 to i8
  %2211 = and i8 %2210, 1
  %2212 = lshr i64 %2209, 1
  %2213 = trunc i64 %2212 to i32
  %2214 = and i32 %2213, 2147483647
  %2215 = zext i32 %2214 to i64
  store i64 %2215, i64* %RCX.i414, align 8
  %2216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2211, i8* %2216, align 1
  %2217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2218 = and i32 %2213, 255
  %2219 = call i32 @llvm.ctpop.i32(i32 %2218)
  %2220 = trunc i32 %2219 to i8
  %2221 = and i8 %2220, 1
  %2222 = xor i8 %2221, 1
  store i8 %2222, i8* %2217, align 1
  %2223 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2223, align 1
  %2224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2225 = icmp eq i32 %2214, 0
  %2226 = zext i1 %2225 to i8
  store i8 %2226, i8* %2224, align 1
  %2227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2227, align 1
  %2228 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2228, align 1
  store %struct.Memory* %loadMem_40173b, %struct.Memory** %MEMORY
  %loadMem_40173e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2230 = getelementptr inbounds %struct.GPR, %struct.GPR* %2229, i32 0, i32 33
  %2231 = getelementptr inbounds %struct.Reg, %struct.Reg* %2230, i32 0, i32 0
  %PC.i411 = bitcast %union.anon* %2231 to i64*
  %2232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2233 = getelementptr inbounds %struct.GPR, %struct.GPR* %2232, i32 0, i32 5
  %2234 = getelementptr inbounds %struct.Reg, %struct.Reg* %2233, i32 0, i32 0
  %RCX.i412 = bitcast %union.anon* %2234 to i64*
  %2235 = load i64, i64* %RCX.i412
  %2236 = load i64, i64* %PC.i411
  %2237 = add i64 %2236, 3
  store i64 %2237, i64* %PC.i411
  %2238 = and i64 1, %2235
  %2239 = trunc i64 %2238 to i32
  store i64 %2238, i64* %RCX.i412, align 8
  %2240 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2240, align 1
  %2241 = and i32 %2239, 255
  %2242 = call i32 @llvm.ctpop.i32(i32 %2241)
  %2243 = trunc i32 %2242 to i8
  %2244 = and i8 %2243, 1
  %2245 = xor i8 %2244, 1
  %2246 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2245, i8* %2246, align 1
  %2247 = icmp eq i32 %2239, 0
  %2248 = zext i1 %2247 to i8
  %2249 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2248, i8* %2249, align 1
  %2250 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2250, align 1
  %2251 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2251, align 1
  %2252 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2252, align 1
  store %struct.Memory* %loadMem_40173e, %struct.Memory** %MEMORY
  %loadMem_401741 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2254 = getelementptr inbounds %struct.GPR, %struct.GPR* %2253, i32 0, i32 33
  %2255 = getelementptr inbounds %struct.Reg, %struct.Reg* %2254, i32 0, i32 0
  %PC.i408 = bitcast %union.anon* %2255 to i64*
  %2256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2257 = getelementptr inbounds %struct.GPR, %struct.GPR* %2256, i32 0, i32 1
  %2258 = getelementptr inbounds %struct.Reg, %struct.Reg* %2257, i32 0, i32 0
  %RAX.i409 = bitcast %union.anon* %2258 to i64*
  %2259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2260 = getelementptr inbounds %struct.GPR, %struct.GPR* %2259, i32 0, i32 15
  %2261 = getelementptr inbounds %struct.Reg, %struct.Reg* %2260, i32 0, i32 0
  %RBP.i410 = bitcast %union.anon* %2261 to i64*
  %2262 = load i64, i64* %RBP.i410
  %2263 = sub i64 %2262, 8
  %2264 = load i64, i64* %PC.i408
  %2265 = add i64 %2264, 4
  store i64 %2265, i64* %PC.i408
  %2266 = inttoptr i64 %2263 to i64*
  %2267 = load i64, i64* %2266
  store i64 %2267, i64* %RAX.i409, align 8
  store %struct.Memory* %loadMem_401741, %struct.Memory** %MEMORY
  %loadMem_401745 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2269 = getelementptr inbounds %struct.GPR, %struct.GPR* %2268, i32 0, i32 33
  %2270 = getelementptr inbounds %struct.Reg, %struct.Reg* %2269, i32 0, i32 0
  %PC.i405 = bitcast %union.anon* %2270 to i64*
  %2271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2272 = getelementptr inbounds %struct.GPR, %struct.GPR* %2271, i32 0, i32 1
  %2273 = getelementptr inbounds %struct.Reg, %struct.Reg* %2272, i32 0, i32 0
  %RAX.i406 = bitcast %union.anon* %2273 to i64*
  %2274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2275 = getelementptr inbounds %struct.GPR, %struct.GPR* %2274, i32 0, i32 5
  %2276 = getelementptr inbounds %struct.Reg, %struct.Reg* %2275, i32 0, i32 0
  %RCX.i407 = bitcast %union.anon* %2276 to i64*
  %2277 = load i64, i64* %RCX.i407
  %2278 = load i64, i64* %RAX.i406
  %2279 = add i64 %2278, 8
  %2280 = load i64, i64* %PC.i405
  %2281 = add i64 %2280, 3
  store i64 %2281, i64* %PC.i405
  %2282 = trunc i64 %2277 to i32
  %2283 = inttoptr i64 %2279 to i32*
  %2284 = load i32, i32* %2283
  %2285 = or i32 %2284, %2282
  %2286 = zext i32 %2285 to i64
  store i64 %2286, i64* %RCX.i407, align 8
  %2287 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2287, align 1
  %2288 = and i32 %2285, 255
  %2289 = call i32 @llvm.ctpop.i32(i32 %2288)
  %2290 = trunc i32 %2289 to i8
  %2291 = and i8 %2290, 1
  %2292 = xor i8 %2291, 1
  %2293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2292, i8* %2293, align 1
  %2294 = icmp eq i32 %2285, 0
  %2295 = zext i1 %2294 to i8
  %2296 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2295, i8* %2296, align 1
  %2297 = lshr i32 %2285, 31
  %2298 = trunc i32 %2297 to i8
  %2299 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2298, i8* %2299, align 1
  %2300 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2300, align 1
  %2301 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2301, align 1
  store %struct.Memory* %loadMem_401745, %struct.Memory** %MEMORY
  %loadMem_401748 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2303 = getelementptr inbounds %struct.GPR, %struct.GPR* %2302, i32 0, i32 33
  %2304 = getelementptr inbounds %struct.Reg, %struct.Reg* %2303, i32 0, i32 0
  %PC.i402 = bitcast %union.anon* %2304 to i64*
  %2305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2306 = getelementptr inbounds %struct.GPR, %struct.GPR* %2305, i32 0, i32 5
  %2307 = getelementptr inbounds %struct.Reg, %struct.Reg* %2306, i32 0, i32 0
  %ECX.i403 = bitcast %union.anon* %2307 to i32*
  %2308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2309 = getelementptr inbounds %struct.GPR, %struct.GPR* %2308, i32 0, i32 1
  %2310 = getelementptr inbounds %struct.Reg, %struct.Reg* %2309, i32 0, i32 0
  %RAX.i404 = bitcast %union.anon* %2310 to i64*
  %2311 = load i64, i64* %RAX.i404
  %2312 = add i64 %2311, 8
  %2313 = load i32, i32* %ECX.i403
  %2314 = zext i32 %2313 to i64
  %2315 = load i64, i64* %PC.i402
  %2316 = add i64 %2315, 3
  store i64 %2316, i64* %PC.i402
  %2317 = inttoptr i64 %2312 to i32*
  store i32 %2313, i32* %2317
  store %struct.Memory* %loadMem_401748, %struct.Memory** %MEMORY
  %loadMem_40174b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2319 = getelementptr inbounds %struct.GPR, %struct.GPR* %2318, i32 0, i32 33
  %2320 = getelementptr inbounds %struct.Reg, %struct.Reg* %2319, i32 0, i32 0
  %PC.i399 = bitcast %union.anon* %2320 to i64*
  %2321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2322 = getelementptr inbounds %struct.GPR, %struct.GPR* %2321, i32 0, i32 1
  %2323 = getelementptr inbounds %struct.Reg, %struct.Reg* %2322, i32 0, i32 0
  %RAX.i400 = bitcast %union.anon* %2323 to i64*
  %2324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2325 = getelementptr inbounds %struct.GPR, %struct.GPR* %2324, i32 0, i32 15
  %2326 = getelementptr inbounds %struct.Reg, %struct.Reg* %2325, i32 0, i32 0
  %RBP.i401 = bitcast %union.anon* %2326 to i64*
  %2327 = load i64, i64* %RBP.i401
  %2328 = sub i64 %2327, 8
  %2329 = load i64, i64* %PC.i399
  %2330 = add i64 %2329, 4
  store i64 %2330, i64* %PC.i399
  %2331 = inttoptr i64 %2328 to i64*
  %2332 = load i64, i64* %2331
  store i64 %2332, i64* %RAX.i400, align 8
  store %struct.Memory* %loadMem_40174b, %struct.Memory** %MEMORY
  %loadMem_40174f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2334 = getelementptr inbounds %struct.GPR, %struct.GPR* %2333, i32 0, i32 33
  %2335 = getelementptr inbounds %struct.Reg, %struct.Reg* %2334, i32 0, i32 0
  %PC.i396 = bitcast %union.anon* %2335 to i64*
  %2336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2337 = getelementptr inbounds %struct.GPR, %struct.GPR* %2336, i32 0, i32 1
  %2338 = getelementptr inbounds %struct.Reg, %struct.Reg* %2337, i32 0, i32 0
  %RAX.i397 = bitcast %union.anon* %2338 to i64*
  %2339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2340 = getelementptr inbounds %struct.GPR, %struct.GPR* %2339, i32 0, i32 5
  %2341 = getelementptr inbounds %struct.Reg, %struct.Reg* %2340, i32 0, i32 0
  %RCX.i398 = bitcast %union.anon* %2341 to i64*
  %2342 = load i64, i64* %RAX.i397
  %2343 = add i64 %2342, 12
  %2344 = load i64, i64* %PC.i396
  %2345 = add i64 %2344, 3
  store i64 %2345, i64* %PC.i396
  %2346 = inttoptr i64 %2343 to i32*
  %2347 = load i32, i32* %2346
  %2348 = zext i32 %2347 to i64
  store i64 %2348, i64* %RCX.i398, align 8
  store %struct.Memory* %loadMem_40174f, %struct.Memory** %MEMORY
  %loadMem_401752 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2350 = getelementptr inbounds %struct.GPR, %struct.GPR* %2349, i32 0, i32 33
  %2351 = getelementptr inbounds %struct.Reg, %struct.Reg* %2350, i32 0, i32 0
  %PC.i394 = bitcast %union.anon* %2351 to i64*
  %2352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2353 = getelementptr inbounds %struct.GPR, %struct.GPR* %2352, i32 0, i32 5
  %2354 = getelementptr inbounds %struct.Reg, %struct.Reg* %2353, i32 0, i32 0
  %RCX.i395 = bitcast %union.anon* %2354 to i64*
  %2355 = load i64, i64* %RCX.i395
  %2356 = load i64, i64* %PC.i394
  %2357 = add i64 %2356, 3
  store i64 %2357, i64* %PC.i394
  %2358 = trunc i64 %2355 to i32
  %2359 = add i32 -1, %2358
  %2360 = zext i32 %2359 to i64
  store i64 %2360, i64* %RCX.i395, align 8
  %2361 = icmp ult i32 %2359, %2358
  %2362 = icmp ult i32 %2359, -1
  %2363 = or i1 %2361, %2362
  %2364 = zext i1 %2363 to i8
  %2365 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2364, i8* %2365, align 1
  %2366 = and i32 %2359, 255
  %2367 = call i32 @llvm.ctpop.i32(i32 %2366)
  %2368 = trunc i32 %2367 to i8
  %2369 = and i8 %2368, 1
  %2370 = xor i8 %2369, 1
  %2371 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2370, i8* %2371, align 1
  %2372 = xor i64 -1, %2355
  %2373 = trunc i64 %2372 to i32
  %2374 = xor i32 %2373, %2359
  %2375 = lshr i32 %2374, 4
  %2376 = trunc i32 %2375 to i8
  %2377 = and i8 %2376, 1
  %2378 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2377, i8* %2378, align 1
  %2379 = icmp eq i32 %2359, 0
  %2380 = zext i1 %2379 to i8
  %2381 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2380, i8* %2381, align 1
  %2382 = lshr i32 %2359, 31
  %2383 = trunc i32 %2382 to i8
  %2384 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2383, i8* %2384, align 1
  %2385 = lshr i32 %2358, 31
  %2386 = xor i32 %2382, %2385
  %2387 = xor i32 %2382, 1
  %2388 = add i32 %2386, %2387
  %2389 = icmp eq i32 %2388, 2
  %2390 = zext i1 %2389 to i8
  %2391 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2390, i8* %2391, align 1
  store %struct.Memory* %loadMem_401752, %struct.Memory** %MEMORY
  %loadMem_401755 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2393 = getelementptr inbounds %struct.GPR, %struct.GPR* %2392, i32 0, i32 33
  %2394 = getelementptr inbounds %struct.Reg, %struct.Reg* %2393, i32 0, i32 0
  %PC.i391 = bitcast %union.anon* %2394 to i64*
  %2395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2396 = getelementptr inbounds %struct.GPR, %struct.GPR* %2395, i32 0, i32 5
  %2397 = getelementptr inbounds %struct.Reg, %struct.Reg* %2396, i32 0, i32 0
  %ECX.i392 = bitcast %union.anon* %2397 to i32*
  %2398 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2399 = getelementptr inbounds %struct.GPR, %struct.GPR* %2398, i32 0, i32 1
  %2400 = getelementptr inbounds %struct.Reg, %struct.Reg* %2399, i32 0, i32 0
  %RAX.i393 = bitcast %union.anon* %2400 to i64*
  %2401 = load i64, i64* %RAX.i393
  %2402 = add i64 %2401, 12
  %2403 = load i32, i32* %ECX.i392
  %2404 = zext i32 %2403 to i64
  %2405 = load i64, i64* %PC.i391
  %2406 = add i64 %2405, 3
  store i64 %2406, i64* %PC.i391
  %2407 = inttoptr i64 %2402 to i32*
  store i32 %2403, i32* %2407
  store %struct.Memory* %loadMem_401755, %struct.Memory** %MEMORY
  %loadMem_401758 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2409 = getelementptr inbounds %struct.GPR, %struct.GPR* %2408, i32 0, i32 33
  %2410 = getelementptr inbounds %struct.Reg, %struct.Reg* %2409, i32 0, i32 0
  %PC.i389 = bitcast %union.anon* %2410 to i64*
  %2411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2412 = getelementptr inbounds %struct.GPR, %struct.GPR* %2411, i32 0, i32 5
  %2413 = getelementptr inbounds %struct.Reg, %struct.Reg* %2412, i32 0, i32 0
  %ECX.i390 = bitcast %union.anon* %2413 to i32*
  %2414 = load i32, i32* %ECX.i390
  %2415 = zext i32 %2414 to i64
  %2416 = load i64, i64* %PC.i389
  %2417 = add i64 %2416, 3
  store i64 %2417, i64* %PC.i389
  %2418 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2418, align 1
  %2419 = and i32 %2414, 255
  %2420 = call i32 @llvm.ctpop.i32(i32 %2419)
  %2421 = trunc i32 %2420 to i8
  %2422 = and i8 %2421, 1
  %2423 = xor i8 %2422, 1
  %2424 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2423, i8* %2424, align 1
  %2425 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2425, align 1
  %2426 = icmp eq i32 %2414, 0
  %2427 = zext i1 %2426 to i8
  %2428 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2427, i8* %2428, align 1
  %2429 = lshr i32 %2414, 31
  %2430 = trunc i32 %2429 to i8
  %2431 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2430, i8* %2431, align 1
  %2432 = lshr i32 %2414, 31
  %2433 = xor i32 %2429, %2432
  %2434 = add i32 %2433, %2432
  %2435 = icmp eq i32 %2434, 2
  %2436 = zext i1 %2435 to i8
  %2437 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2436, i8* %2437, align 1
  store %struct.Memory* %loadMem_401758, %struct.Memory** %MEMORY
  %loadMem_40175b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2439 = getelementptr inbounds %struct.GPR, %struct.GPR* %2438, i32 0, i32 33
  %2440 = getelementptr inbounds %struct.Reg, %struct.Reg* %2439, i32 0, i32 0
  %PC.i388 = bitcast %union.anon* %2440 to i64*
  %2441 = load i64, i64* %PC.i388
  %2442 = add i64 %2441, 107
  %2443 = load i64, i64* %PC.i388
  %2444 = add i64 %2443, 6
  %2445 = load i64, i64* %PC.i388
  %2446 = add i64 %2445, 6
  store i64 %2446, i64* %PC.i388
  %2447 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2448 = load i8, i8* %2447, align 1
  %2449 = icmp eq i8 %2448, 0
  %2450 = zext i1 %2449 to i8
  store i8 %2450, i8* %BRANCH_TAKEN, align 1
  %2451 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2452 = select i1 %2449, i64 %2442, i64 %2444
  store i64 %2452, i64* %2451, align 8
  store %struct.Memory* %loadMem_40175b, %struct.Memory** %MEMORY
  %loadBr_40175b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40175b = icmp eq i8 %loadBr_40175b, 1
  br i1 %cmpBr_40175b, label %block_.L_4017c6, label %block_401761

block_401761:                                     ; preds = %block_.L_401728
  %loadMem_401761 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2454 = getelementptr inbounds %struct.GPR, %struct.GPR* %2453, i32 0, i32 33
  %2455 = getelementptr inbounds %struct.Reg, %struct.Reg* %2454, i32 0, i32 0
  %PC.i385 = bitcast %union.anon* %2455 to i64*
  %2456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2457 = getelementptr inbounds %struct.GPR, %struct.GPR* %2456, i32 0, i32 1
  %2458 = getelementptr inbounds %struct.Reg, %struct.Reg* %2457, i32 0, i32 0
  %RAX.i386 = bitcast %union.anon* %2458 to i64*
  %2459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2460 = getelementptr inbounds %struct.GPR, %struct.GPR* %2459, i32 0, i32 15
  %2461 = getelementptr inbounds %struct.Reg, %struct.Reg* %2460, i32 0, i32 0
  %RBP.i387 = bitcast %union.anon* %2461 to i64*
  %2462 = load i64, i64* %RBP.i387
  %2463 = sub i64 %2462, 8
  %2464 = load i64, i64* %PC.i385
  %2465 = add i64 %2464, 4
  store i64 %2465, i64* %PC.i385
  %2466 = inttoptr i64 %2463 to i64*
  %2467 = load i64, i64* %2466
  store i64 %2467, i64* %RAX.i386, align 8
  store %struct.Memory* %loadMem_401761, %struct.Memory** %MEMORY
  %loadMem_401765 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2469 = getelementptr inbounds %struct.GPR, %struct.GPR* %2468, i32 0, i32 33
  %2470 = getelementptr inbounds %struct.Reg, %struct.Reg* %2469, i32 0, i32 0
  %PC.i382 = bitcast %union.anon* %2470 to i64*
  %2471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2472 = getelementptr inbounds %struct.GPR, %struct.GPR* %2471, i32 0, i32 1
  %2473 = getelementptr inbounds %struct.Reg, %struct.Reg* %2472, i32 0, i32 0
  %RAX.i383 = bitcast %union.anon* %2473 to i64*
  %2474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2475 = getelementptr inbounds %struct.GPR, %struct.GPR* %2474, i32 0, i32 5
  %2476 = getelementptr inbounds %struct.Reg, %struct.Reg* %2475, i32 0, i32 0
  %RCX.i384 = bitcast %union.anon* %2476 to i64*
  %2477 = load i64, i64* %RAX.i383
  %2478 = add i64 %2477, 8
  %2479 = load i64, i64* %PC.i382
  %2480 = add i64 %2479, 3
  store i64 %2480, i64* %PC.i382
  %2481 = inttoptr i64 %2478 to i32*
  %2482 = load i32, i32* %2481
  %2483 = zext i32 %2482 to i64
  store i64 %2483, i64* %RCX.i384, align 8
  store %struct.Memory* %loadMem_401765, %struct.Memory** %MEMORY
  %loadMem_401768 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2485 = getelementptr inbounds %struct.GPR, %struct.GPR* %2484, i32 0, i32 33
  %2486 = getelementptr inbounds %struct.Reg, %struct.Reg* %2485, i32 0, i32 0
  %PC.i379 = bitcast %union.anon* %2486 to i64*
  %2487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2488 = getelementptr inbounds %struct.GPR, %struct.GPR* %2487, i32 0, i32 5
  %2489 = getelementptr inbounds %struct.Reg, %struct.Reg* %2488, i32 0, i32 0
  %2490 = bitcast %union.anon* %2489 to %struct.anon.2*
  %CL.i380 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2490, i32 0, i32 0
  %2491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2492 = getelementptr inbounds %struct.GPR, %struct.GPR* %2491, i32 0, i32 7
  %2493 = getelementptr inbounds %struct.Reg, %struct.Reg* %2492, i32 0, i32 0
  %2494 = bitcast %union.anon* %2493 to %struct.anon.2*
  %DL.i381 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2494, i32 0, i32 0
  %2495 = load i8, i8* %CL.i380
  %2496 = zext i8 %2495 to i64
  %2497 = load i64, i64* %PC.i379
  %2498 = add i64 %2497, 2
  store i64 %2498, i64* %PC.i379
  store i8 %2495, i8* %DL.i381, align 1
  store %struct.Memory* %loadMem_401768, %struct.Memory** %MEMORY
  %loadMem_40176a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2500 = getelementptr inbounds %struct.GPR, %struct.GPR* %2499, i32 0, i32 33
  %2501 = getelementptr inbounds %struct.Reg, %struct.Reg* %2500, i32 0, i32 0
  %PC.i376 = bitcast %union.anon* %2501 to i64*
  %2502 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2503 = getelementptr inbounds %struct.GPR, %struct.GPR* %2502, i32 0, i32 1
  %2504 = getelementptr inbounds %struct.Reg, %struct.Reg* %2503, i32 0, i32 0
  %RAX.i377 = bitcast %union.anon* %2504 to i64*
  %2505 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2506 = getelementptr inbounds %struct.GPR, %struct.GPR* %2505, i32 0, i32 15
  %2507 = getelementptr inbounds %struct.Reg, %struct.Reg* %2506, i32 0, i32 0
  %RBP.i378 = bitcast %union.anon* %2507 to i64*
  %2508 = load i64, i64* %RBP.i378
  %2509 = sub i64 %2508, 8
  %2510 = load i64, i64* %PC.i376
  %2511 = add i64 %2510, 4
  store i64 %2511, i64* %PC.i376
  %2512 = inttoptr i64 %2509 to i64*
  %2513 = load i64, i64* %2512
  store i64 %2513, i64* %RAX.i377, align 8
  store %struct.Memory* %loadMem_40176a, %struct.Memory** %MEMORY
  %loadMem_40176e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2515 = getelementptr inbounds %struct.GPR, %struct.GPR* %2514, i32 0, i32 33
  %2516 = getelementptr inbounds %struct.Reg, %struct.Reg* %2515, i32 0, i32 0
  %PC.i374 = bitcast %union.anon* %2516 to i64*
  %2517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2518 = getelementptr inbounds %struct.GPR, %struct.GPR* %2517, i32 0, i32 1
  %2519 = getelementptr inbounds %struct.Reg, %struct.Reg* %2518, i32 0, i32 0
  %RAX.i375 = bitcast %union.anon* %2519 to i64*
  %2520 = load i64, i64* %RAX.i375
  %2521 = add i64 %2520, 24
  %2522 = load i64, i64* %PC.i374
  %2523 = add i64 %2522, 4
  store i64 %2523, i64* %PC.i374
  %2524 = inttoptr i64 %2521 to i64*
  %2525 = load i64, i64* %2524
  store i64 %2525, i64* %RAX.i375, align 8
  store %struct.Memory* %loadMem_40176e, %struct.Memory** %MEMORY
  %loadMem_401772 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2527 = getelementptr inbounds %struct.GPR, %struct.GPR* %2526, i32 0, i32 33
  %2528 = getelementptr inbounds %struct.Reg, %struct.Reg* %2527, i32 0, i32 0
  %PC.i371 = bitcast %union.anon* %2528 to i64*
  %2529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2530 = getelementptr inbounds %struct.GPR, %struct.GPR* %2529, i32 0, i32 9
  %2531 = getelementptr inbounds %struct.Reg, %struct.Reg* %2530, i32 0, i32 0
  %RSI.i372 = bitcast %union.anon* %2531 to i64*
  %2532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2533 = getelementptr inbounds %struct.GPR, %struct.GPR* %2532, i32 0, i32 15
  %2534 = getelementptr inbounds %struct.Reg, %struct.Reg* %2533, i32 0, i32 0
  %RBP.i373 = bitcast %union.anon* %2534 to i64*
  %2535 = load i64, i64* %RBP.i373
  %2536 = sub i64 %2535, 8
  %2537 = load i64, i64* %PC.i371
  %2538 = add i64 %2537, 4
  store i64 %2538, i64* %PC.i371
  %2539 = inttoptr i64 %2536 to i64*
  %2540 = load i64, i64* %2539
  store i64 %2540, i64* %RSI.i372, align 8
  store %struct.Memory* %loadMem_401772, %struct.Memory** %MEMORY
  %loadMem_401776 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2542 = getelementptr inbounds %struct.GPR, %struct.GPR* %2541, i32 0, i32 33
  %2543 = getelementptr inbounds %struct.Reg, %struct.Reg* %2542, i32 0, i32 0
  %PC.i369 = bitcast %union.anon* %2543 to i64*
  %2544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2545 = getelementptr inbounds %struct.GPR, %struct.GPR* %2544, i32 0, i32 9
  %2546 = getelementptr inbounds %struct.Reg, %struct.Reg* %2545, i32 0, i32 0
  %RSI.i370 = bitcast %union.anon* %2546 to i64*
  %2547 = load i64, i64* %RSI.i370
  %2548 = add i64 %2547, 32
  %2549 = load i64, i64* %PC.i369
  %2550 = add i64 %2549, 4
  store i64 %2550, i64* %PC.i369
  %2551 = inttoptr i64 %2548 to i64*
  %2552 = load i64, i64* %2551
  store i64 %2552, i64* %RSI.i370, align 8
  store %struct.Memory* %loadMem_401776, %struct.Memory** %MEMORY
  %loadMem_40177a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2553 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2554 = getelementptr inbounds %struct.GPR, %struct.GPR* %2553, i32 0, i32 33
  %2555 = getelementptr inbounds %struct.Reg, %struct.Reg* %2554, i32 0, i32 0
  %PC.i366 = bitcast %union.anon* %2555 to i64*
  %2556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2557 = getelementptr inbounds %struct.GPR, %struct.GPR* %2556, i32 0, i32 5
  %2558 = getelementptr inbounds %struct.Reg, %struct.Reg* %2557, i32 0, i32 0
  %RCX.i367 = bitcast %union.anon* %2558 to i64*
  %2559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2560 = getelementptr inbounds %struct.GPR, %struct.GPR* %2559, i32 0, i32 9
  %2561 = getelementptr inbounds %struct.Reg, %struct.Reg* %2560, i32 0, i32 0
  %RSI.i368 = bitcast %union.anon* %2561 to i64*
  %2562 = load i64, i64* %RSI.i368
  %2563 = load i64, i64* %PC.i366
  %2564 = add i64 %2563, 2
  store i64 %2564, i64* %PC.i366
  %2565 = inttoptr i64 %2562 to i32*
  %2566 = load i32, i32* %2565
  %2567 = zext i32 %2566 to i64
  store i64 %2567, i64* %RCX.i367, align 8
  store %struct.Memory* %loadMem_40177a, %struct.Memory** %MEMORY
  %loadMem_40177c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2569 = getelementptr inbounds %struct.GPR, %struct.GPR* %2568, i32 0, i32 33
  %2570 = getelementptr inbounds %struct.Reg, %struct.Reg* %2569, i32 0, i32 0
  %PC.i363 = bitcast %union.anon* %2570 to i64*
  %2571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2572 = getelementptr inbounds %struct.GPR, %struct.GPR* %2571, i32 0, i32 5
  %2573 = getelementptr inbounds %struct.Reg, %struct.Reg* %2572, i32 0, i32 0
  %ECX.i364 = bitcast %union.anon* %2573 to i32*
  %2574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2575 = getelementptr inbounds %struct.GPR, %struct.GPR* %2574, i32 0, i32 11
  %2576 = getelementptr inbounds %struct.Reg, %struct.Reg* %2575, i32 0, i32 0
  %RDI.i365 = bitcast %union.anon* %2576 to i64*
  %2577 = load i32, i32* %ECX.i364
  %2578 = zext i32 %2577 to i64
  %2579 = load i64, i64* %PC.i363
  %2580 = add i64 %2579, 2
  store i64 %2580, i64* %PC.i363
  %2581 = and i64 %2578, 4294967295
  store i64 %2581, i64* %RDI.i365, align 8
  store %struct.Memory* %loadMem_40177c, %struct.Memory** %MEMORY
  %loadMem_40177e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2583 = getelementptr inbounds %struct.GPR, %struct.GPR* %2582, i32 0, i32 33
  %2584 = getelementptr inbounds %struct.Reg, %struct.Reg* %2583, i32 0, i32 0
  %PC.i361 = bitcast %union.anon* %2584 to i64*
  %2585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2586 = getelementptr inbounds %struct.GPR, %struct.GPR* %2585, i32 0, i32 11
  %2587 = getelementptr inbounds %struct.Reg, %struct.Reg* %2586, i32 0, i32 0
  %RDI.i362 = bitcast %union.anon* %2587 to i64*
  %2588 = load i64, i64* %RDI.i362
  %2589 = load i64, i64* %PC.i361
  %2590 = add i64 %2589, 3
  store i64 %2590, i64* %PC.i361
  %2591 = trunc i64 %2588 to i32
  %2592 = add i32 1, %2591
  %2593 = zext i32 %2592 to i64
  store i64 %2593, i64* %RDI.i362, align 8
  %2594 = icmp ult i32 %2592, %2591
  %2595 = icmp ult i32 %2592, 1
  %2596 = or i1 %2594, %2595
  %2597 = zext i1 %2596 to i8
  %2598 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2597, i8* %2598, align 1
  %2599 = and i32 %2592, 255
  %2600 = call i32 @llvm.ctpop.i32(i32 %2599)
  %2601 = trunc i32 %2600 to i8
  %2602 = and i8 %2601, 1
  %2603 = xor i8 %2602, 1
  %2604 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2603, i8* %2604, align 1
  %2605 = xor i64 1, %2588
  %2606 = trunc i64 %2605 to i32
  %2607 = xor i32 %2606, %2592
  %2608 = lshr i32 %2607, 4
  %2609 = trunc i32 %2608 to i8
  %2610 = and i8 %2609, 1
  %2611 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2610, i8* %2611, align 1
  %2612 = icmp eq i32 %2592, 0
  %2613 = zext i1 %2612 to i8
  %2614 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2613, i8* %2614, align 1
  %2615 = lshr i32 %2592, 31
  %2616 = trunc i32 %2615 to i8
  %2617 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2616, i8* %2617, align 1
  %2618 = lshr i32 %2591, 31
  %2619 = xor i32 %2615, %2618
  %2620 = add i32 %2619, %2615
  %2621 = icmp eq i32 %2620, 2
  %2622 = zext i1 %2621 to i8
  %2623 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2622, i8* %2623, align 1
  store %struct.Memory* %loadMem_40177e, %struct.Memory** %MEMORY
  %loadMem_401781 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2625 = getelementptr inbounds %struct.GPR, %struct.GPR* %2624, i32 0, i32 33
  %2626 = getelementptr inbounds %struct.Reg, %struct.Reg* %2625, i32 0, i32 0
  %PC.i358 = bitcast %union.anon* %2626 to i64*
  %2627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2628 = getelementptr inbounds %struct.GPR, %struct.GPR* %2627, i32 0, i32 11
  %2629 = getelementptr inbounds %struct.Reg, %struct.Reg* %2628, i32 0, i32 0
  %EDI.i359 = bitcast %union.anon* %2629 to i32*
  %2630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2631 = getelementptr inbounds %struct.GPR, %struct.GPR* %2630, i32 0, i32 9
  %2632 = getelementptr inbounds %struct.Reg, %struct.Reg* %2631, i32 0, i32 0
  %RSI.i360 = bitcast %union.anon* %2632 to i64*
  %2633 = load i64, i64* %RSI.i360
  %2634 = load i32, i32* %EDI.i359
  %2635 = zext i32 %2634 to i64
  %2636 = load i64, i64* %PC.i358
  %2637 = add i64 %2636, 2
  store i64 %2637, i64* %PC.i358
  %2638 = inttoptr i64 %2633 to i32*
  store i32 %2634, i32* %2638
  store %struct.Memory* %loadMem_401781, %struct.Memory** %MEMORY
  %loadMem_401783 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2640 = getelementptr inbounds %struct.GPR, %struct.GPR* %2639, i32 0, i32 33
  %2641 = getelementptr inbounds %struct.Reg, %struct.Reg* %2640, i32 0, i32 0
  %PC.i355 = bitcast %union.anon* %2641 to i64*
  %2642 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2643 = getelementptr inbounds %struct.GPR, %struct.GPR* %2642, i32 0, i32 5
  %2644 = getelementptr inbounds %struct.Reg, %struct.Reg* %2643, i32 0, i32 0
  %ECX.i356 = bitcast %union.anon* %2644 to i32*
  %2645 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2646 = getelementptr inbounds %struct.GPR, %struct.GPR* %2645, i32 0, i32 9
  %2647 = getelementptr inbounds %struct.Reg, %struct.Reg* %2646, i32 0, i32 0
  %RSI.i357 = bitcast %union.anon* %2647 to i64*
  %2648 = load i32, i32* %ECX.i356
  %2649 = zext i32 %2648 to i64
  %2650 = load i64, i64* %PC.i355
  %2651 = add i64 %2650, 3
  store i64 %2651, i64* %PC.i355
  %2652 = shl i64 %2649, 32
  %2653 = ashr exact i64 %2652, 32
  store i64 %2653, i64* %RSI.i357, align 8
  store %struct.Memory* %loadMem_401783, %struct.Memory** %MEMORY
  %loadMem_401786 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2654 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2655 = getelementptr inbounds %struct.GPR, %struct.GPR* %2654, i32 0, i32 33
  %2656 = getelementptr inbounds %struct.Reg, %struct.Reg* %2655, i32 0, i32 0
  %PC.i351 = bitcast %union.anon* %2656 to i64*
  %2657 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2658 = getelementptr inbounds %struct.GPR, %struct.GPR* %2657, i32 0, i32 7
  %2659 = getelementptr inbounds %struct.Reg, %struct.Reg* %2658, i32 0, i32 0
  %2660 = bitcast %union.anon* %2659 to %struct.anon.2*
  %DL.i352 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2660, i32 0, i32 0
  %2661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2662 = getelementptr inbounds %struct.GPR, %struct.GPR* %2661, i32 0, i32 1
  %2663 = getelementptr inbounds %struct.Reg, %struct.Reg* %2662, i32 0, i32 0
  %RAX.i353 = bitcast %union.anon* %2663 to i64*
  %2664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2665 = getelementptr inbounds %struct.GPR, %struct.GPR* %2664, i32 0, i32 9
  %2666 = getelementptr inbounds %struct.Reg, %struct.Reg* %2665, i32 0, i32 0
  %RSI.i354 = bitcast %union.anon* %2666 to i64*
  %2667 = load i64, i64* %RAX.i353
  %2668 = load i64, i64* %RSI.i354
  %2669 = add i64 %2668, %2667
  %2670 = load i8, i8* %DL.i352
  %2671 = zext i8 %2670 to i64
  %2672 = load i64, i64* %PC.i351
  %2673 = add i64 %2672, 3
  store i64 %2673, i64* %PC.i351
  %2674 = inttoptr i64 %2669 to i8*
  store i8 %2670, i8* %2674
  store %struct.Memory* %loadMem_401786, %struct.Memory** %MEMORY
  %loadMem_401789 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2676 = getelementptr inbounds %struct.GPR, %struct.GPR* %2675, i32 0, i32 33
  %2677 = getelementptr inbounds %struct.Reg, %struct.Reg* %2676, i32 0, i32 0
  %PC.i348 = bitcast %union.anon* %2677 to i64*
  %2678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2679 = getelementptr inbounds %struct.GPR, %struct.GPR* %2678, i32 0, i32 1
  %2680 = getelementptr inbounds %struct.Reg, %struct.Reg* %2679, i32 0, i32 0
  %RAX.i349 = bitcast %union.anon* %2680 to i64*
  %2681 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2682 = getelementptr inbounds %struct.GPR, %struct.GPR* %2681, i32 0, i32 15
  %2683 = getelementptr inbounds %struct.Reg, %struct.Reg* %2682, i32 0, i32 0
  %RBP.i350 = bitcast %union.anon* %2683 to i64*
  %2684 = load i64, i64* %RBP.i350
  %2685 = sub i64 %2684, 8
  %2686 = load i64, i64* %PC.i348
  %2687 = add i64 %2686, 4
  store i64 %2687, i64* %PC.i348
  %2688 = inttoptr i64 %2685 to i64*
  %2689 = load i64, i64* %2688
  store i64 %2689, i64* %RAX.i349, align 8
  store %struct.Memory* %loadMem_401789, %struct.Memory** %MEMORY
  %loadMem_40178d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2691 = getelementptr inbounds %struct.GPR, %struct.GPR* %2690, i32 0, i32 33
  %2692 = getelementptr inbounds %struct.Reg, %struct.Reg* %2691, i32 0, i32 0
  %PC.i346 = bitcast %union.anon* %2692 to i64*
  %2693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2694 = getelementptr inbounds %struct.GPR, %struct.GPR* %2693, i32 0, i32 1
  %2695 = getelementptr inbounds %struct.Reg, %struct.Reg* %2694, i32 0, i32 0
  %RAX.i347 = bitcast %union.anon* %2695 to i64*
  %2696 = load i64, i64* %RAX.i347
  %2697 = add i64 %2696, 12
  %2698 = load i64, i64* %PC.i346
  %2699 = add i64 %2698, 7
  store i64 %2699, i64* %PC.i346
  %2700 = inttoptr i64 %2697 to i32*
  store i32 8, i32* %2700
  store %struct.Memory* %loadMem_40178d, %struct.Memory** %MEMORY
  br label %block_.L_401794

block_.L_401794:                                  ; preds = %block_4017a2, %block_401761
  %loadMem_401794 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2702 = getelementptr inbounds %struct.GPR, %struct.GPR* %2701, i32 0, i32 33
  %2703 = getelementptr inbounds %struct.Reg, %struct.Reg* %2702, i32 0, i32 0
  %PC.i343 = bitcast %union.anon* %2703 to i64*
  %2704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2705 = getelementptr inbounds %struct.GPR, %struct.GPR* %2704, i32 0, i32 1
  %2706 = getelementptr inbounds %struct.Reg, %struct.Reg* %2705, i32 0, i32 0
  %RAX.i344 = bitcast %union.anon* %2706 to i64*
  %2707 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2708 = getelementptr inbounds %struct.GPR, %struct.GPR* %2707, i32 0, i32 15
  %2709 = getelementptr inbounds %struct.Reg, %struct.Reg* %2708, i32 0, i32 0
  %RBP.i345 = bitcast %union.anon* %2709 to i64*
  %2710 = load i64, i64* %RBP.i345
  %2711 = sub i64 %2710, 8
  %2712 = load i64, i64* %PC.i343
  %2713 = add i64 %2712, 4
  store i64 %2713, i64* %PC.i343
  %2714 = inttoptr i64 %2711 to i64*
  %2715 = load i64, i64* %2714
  store i64 %2715, i64* %RAX.i344, align 8
  store %struct.Memory* %loadMem_401794, %struct.Memory** %MEMORY
  %loadMem_401798 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2717 = getelementptr inbounds %struct.GPR, %struct.GPR* %2716, i32 0, i32 33
  %2718 = getelementptr inbounds %struct.Reg, %struct.Reg* %2717, i32 0, i32 0
  %PC.i341 = bitcast %union.anon* %2718 to i64*
  %2719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2720 = getelementptr inbounds %struct.GPR, %struct.GPR* %2719, i32 0, i32 1
  %2721 = getelementptr inbounds %struct.Reg, %struct.Reg* %2720, i32 0, i32 0
  %RAX.i342 = bitcast %union.anon* %2721 to i64*
  %2722 = load i64, i64* %RAX.i342
  %2723 = add i64 %2722, 80
  %2724 = load i64, i64* %PC.i341
  %2725 = add i64 %2724, 4
  store i64 %2725, i64* %PC.i341
  %2726 = inttoptr i64 %2723 to i32*
  %2727 = load i32, i32* %2726
  %2728 = sub i32 %2727, 7
  %2729 = icmp ult i32 %2727, 7
  %2730 = zext i1 %2729 to i8
  %2731 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2730, i8* %2731, align 1
  %2732 = and i32 %2728, 255
  %2733 = call i32 @llvm.ctpop.i32(i32 %2732)
  %2734 = trunc i32 %2733 to i8
  %2735 = and i8 %2734, 1
  %2736 = xor i8 %2735, 1
  %2737 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2736, i8* %2737, align 1
  %2738 = xor i32 %2727, 7
  %2739 = xor i32 %2738, %2728
  %2740 = lshr i32 %2739, 4
  %2741 = trunc i32 %2740 to i8
  %2742 = and i8 %2741, 1
  %2743 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2742, i8* %2743, align 1
  %2744 = icmp eq i32 %2728, 0
  %2745 = zext i1 %2744 to i8
  %2746 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2745, i8* %2746, align 1
  %2747 = lshr i32 %2728, 31
  %2748 = trunc i32 %2747 to i8
  %2749 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2748, i8* %2749, align 1
  %2750 = lshr i32 %2727, 31
  %2751 = xor i32 %2747, %2750
  %2752 = add i32 %2751, %2750
  %2753 = icmp eq i32 %2752, 2
  %2754 = zext i1 %2753 to i8
  %2755 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2754, i8* %2755, align 1
  store %struct.Memory* %loadMem_401798, %struct.Memory** %MEMORY
  %loadMem_40179c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2756 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2757 = getelementptr inbounds %struct.GPR, %struct.GPR* %2756, i32 0, i32 33
  %2758 = getelementptr inbounds %struct.Reg, %struct.Reg* %2757, i32 0, i32 0
  %PC.i340 = bitcast %union.anon* %2758 to i64*
  %2759 = load i64, i64* %PC.i340
  %2760 = add i64 %2759, 37
  %2761 = load i64, i64* %PC.i340
  %2762 = add i64 %2761, 6
  %2763 = load i64, i64* %PC.i340
  %2764 = add i64 %2763, 6
  store i64 %2764, i64* %PC.i340
  %2765 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2766 = load i8, i8* %2765, align 1
  %2767 = icmp ne i8 %2766, 0
  %2768 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2769 = load i8, i8* %2768, align 1
  %2770 = icmp ne i8 %2769, 0
  %2771 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2772 = load i8, i8* %2771, align 1
  %2773 = icmp ne i8 %2772, 0
  %2774 = xor i1 %2770, %2773
  %2775 = or i1 %2767, %2774
  %2776 = zext i1 %2775 to i8
  store i8 %2776, i8* %BRANCH_TAKEN, align 1
  %2777 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2778 = select i1 %2775, i64 %2760, i64 %2762
  store i64 %2778, i64* %2777, align 8
  store %struct.Memory* %loadMem_40179c, %struct.Memory** %MEMORY
  %loadBr_40179c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40179c = icmp eq i8 %loadBr_40179c, 1
  br i1 %cmpBr_40179c, label %block_.L_4017c1, label %block_4017a2

block_4017a2:                                     ; preds = %block_.L_401794
  %loadMem_4017a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2779 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2780 = getelementptr inbounds %struct.GPR, %struct.GPR* %2779, i32 0, i32 33
  %2781 = getelementptr inbounds %struct.Reg, %struct.Reg* %2780, i32 0, i32 0
  %PC.i337 = bitcast %union.anon* %2781 to i64*
  %2782 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2783 = getelementptr inbounds %struct.GPR, %struct.GPR* %2782, i32 0, i32 1
  %2784 = getelementptr inbounds %struct.Reg, %struct.Reg* %2783, i32 0, i32 0
  %RAX.i338 = bitcast %union.anon* %2784 to i64*
  %2785 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2786 = getelementptr inbounds %struct.GPR, %struct.GPR* %2785, i32 0, i32 15
  %2787 = getelementptr inbounds %struct.Reg, %struct.Reg* %2786, i32 0, i32 0
  %RBP.i339 = bitcast %union.anon* %2787 to i64*
  %2788 = load i64, i64* %RBP.i339
  %2789 = sub i64 %2788, 8
  %2790 = load i64, i64* %PC.i337
  %2791 = add i64 %2790, 4
  store i64 %2791, i64* %PC.i337
  %2792 = inttoptr i64 %2789 to i64*
  %2793 = load i64, i64* %2792
  store i64 %2793, i64* %RAX.i338, align 8
  store %struct.Memory* %loadMem_4017a2, %struct.Memory** %MEMORY
  %loadMem_4017a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2794 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2795 = getelementptr inbounds %struct.GPR, %struct.GPR* %2794, i32 0, i32 33
  %2796 = getelementptr inbounds %struct.Reg, %struct.Reg* %2795, i32 0, i32 0
  %PC.i334 = bitcast %union.anon* %2796 to i64*
  %2797 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2798 = getelementptr inbounds %struct.GPR, %struct.GPR* %2797, i32 0, i32 1
  %2799 = getelementptr inbounds %struct.Reg, %struct.Reg* %2798, i32 0, i32 0
  %RAX.i335 = bitcast %union.anon* %2799 to i64*
  %2800 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2801 = getelementptr inbounds %struct.GPR, %struct.GPR* %2800, i32 0, i32 5
  %2802 = getelementptr inbounds %struct.Reg, %struct.Reg* %2801, i32 0, i32 0
  %RCX.i336 = bitcast %union.anon* %2802 to i64*
  %2803 = load i64, i64* %RAX.i335
  %2804 = add i64 %2803, 80
  %2805 = load i64, i64* %PC.i334
  %2806 = add i64 %2805, 3
  store i64 %2806, i64* %PC.i334
  %2807 = inttoptr i64 %2804 to i32*
  %2808 = load i32, i32* %2807
  %2809 = zext i32 %2808 to i64
  store i64 %2809, i64* %RCX.i336, align 8
  store %struct.Memory* %loadMem_4017a6, %struct.Memory** %MEMORY
  %loadMem_4017a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2811 = getelementptr inbounds %struct.GPR, %struct.GPR* %2810, i32 0, i32 33
  %2812 = getelementptr inbounds %struct.Reg, %struct.Reg* %2811, i32 0, i32 0
  %PC.i332 = bitcast %union.anon* %2812 to i64*
  %2813 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2814 = getelementptr inbounds %struct.GPR, %struct.GPR* %2813, i32 0, i32 5
  %2815 = getelementptr inbounds %struct.Reg, %struct.Reg* %2814, i32 0, i32 0
  %RCX.i333 = bitcast %union.anon* %2815 to i64*
  %2816 = load i64, i64* %RCX.i333
  %2817 = load i64, i64* %PC.i332
  %2818 = add i64 %2817, 3
  store i64 %2818, i64* %PC.i332
  %2819 = trunc i64 %2816 to i32
  %2820 = sub i32 %2819, 8
  %2821 = zext i32 %2820 to i64
  store i64 %2821, i64* %RCX.i333, align 8
  %2822 = icmp ult i32 %2819, 8
  %2823 = zext i1 %2822 to i8
  %2824 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2823, i8* %2824, align 1
  %2825 = and i32 %2820, 255
  %2826 = call i32 @llvm.ctpop.i32(i32 %2825)
  %2827 = trunc i32 %2826 to i8
  %2828 = and i8 %2827, 1
  %2829 = xor i8 %2828, 1
  %2830 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2829, i8* %2830, align 1
  %2831 = xor i64 8, %2816
  %2832 = trunc i64 %2831 to i32
  %2833 = xor i32 %2832, %2820
  %2834 = lshr i32 %2833, 4
  %2835 = trunc i32 %2834 to i8
  %2836 = and i8 %2835, 1
  %2837 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2836, i8* %2837, align 1
  %2838 = icmp eq i32 %2820, 0
  %2839 = zext i1 %2838 to i8
  %2840 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2839, i8* %2840, align 1
  %2841 = lshr i32 %2820, 31
  %2842 = trunc i32 %2841 to i8
  %2843 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2842, i8* %2843, align 1
  %2844 = lshr i32 %2819, 31
  %2845 = xor i32 %2841, %2844
  %2846 = add i32 %2845, %2844
  %2847 = icmp eq i32 %2846, 2
  %2848 = zext i1 %2847 to i8
  %2849 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2848, i8* %2849, align 1
  store %struct.Memory* %loadMem_4017a9, %struct.Memory** %MEMORY
  %loadMem_4017ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %2850 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2851 = getelementptr inbounds %struct.GPR, %struct.GPR* %2850, i32 0, i32 33
  %2852 = getelementptr inbounds %struct.Reg, %struct.Reg* %2851, i32 0, i32 0
  %PC.i329 = bitcast %union.anon* %2852 to i64*
  %2853 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2854 = getelementptr inbounds %struct.GPR, %struct.GPR* %2853, i32 0, i32 5
  %2855 = getelementptr inbounds %struct.Reg, %struct.Reg* %2854, i32 0, i32 0
  %ECX.i330 = bitcast %union.anon* %2855 to i32*
  %2856 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2857 = getelementptr inbounds %struct.GPR, %struct.GPR* %2856, i32 0, i32 1
  %2858 = getelementptr inbounds %struct.Reg, %struct.Reg* %2857, i32 0, i32 0
  %RAX.i331 = bitcast %union.anon* %2858 to i64*
  %2859 = load i64, i64* %RAX.i331
  %2860 = add i64 %2859, 80
  %2861 = load i32, i32* %ECX.i330
  %2862 = zext i32 %2861 to i64
  %2863 = load i64, i64* %PC.i329
  %2864 = add i64 %2863, 3
  store i64 %2864, i64* %PC.i329
  %2865 = inttoptr i64 %2860 to i32*
  store i32 %2861, i32* %2865
  store %struct.Memory* %loadMem_4017ac, %struct.Memory** %MEMORY
  %loadMem_4017af = load %struct.Memory*, %struct.Memory** %MEMORY
  %2866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2867 = getelementptr inbounds %struct.GPR, %struct.GPR* %2866, i32 0, i32 33
  %2868 = getelementptr inbounds %struct.Reg, %struct.Reg* %2867, i32 0, i32 0
  %PC.i326 = bitcast %union.anon* %2868 to i64*
  %2869 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2870 = getelementptr inbounds %struct.GPR, %struct.GPR* %2869, i32 0, i32 1
  %2871 = getelementptr inbounds %struct.Reg, %struct.Reg* %2870, i32 0, i32 0
  %RAX.i327 = bitcast %union.anon* %2871 to i64*
  %2872 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2873 = getelementptr inbounds %struct.GPR, %struct.GPR* %2872, i32 0, i32 15
  %2874 = getelementptr inbounds %struct.Reg, %struct.Reg* %2873, i32 0, i32 0
  %RBP.i328 = bitcast %union.anon* %2874 to i64*
  %2875 = load i64, i64* %RBP.i328
  %2876 = sub i64 %2875, 8
  %2877 = load i64, i64* %PC.i326
  %2878 = add i64 %2877, 4
  store i64 %2878, i64* %PC.i326
  %2879 = inttoptr i64 %2876 to i64*
  %2880 = load i64, i64* %2879
  store i64 %2880, i64* %RAX.i327, align 8
  store %struct.Memory* %loadMem_4017af, %struct.Memory** %MEMORY
  %loadMem_4017b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2881 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2882 = getelementptr inbounds %struct.GPR, %struct.GPR* %2881, i32 0, i32 33
  %2883 = getelementptr inbounds %struct.Reg, %struct.Reg* %2882, i32 0, i32 0
  %PC.i323 = bitcast %union.anon* %2883 to i64*
  %2884 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2885 = getelementptr inbounds %struct.GPR, %struct.GPR* %2884, i32 0, i32 1
  %2886 = getelementptr inbounds %struct.Reg, %struct.Reg* %2885, i32 0, i32 0
  %RAX.i324 = bitcast %union.anon* %2886 to i64*
  %2887 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2888 = getelementptr inbounds %struct.GPR, %struct.GPR* %2887, i32 0, i32 5
  %2889 = getelementptr inbounds %struct.Reg, %struct.Reg* %2888, i32 0, i32 0
  %RCX.i325 = bitcast %union.anon* %2889 to i64*
  %2890 = load i64, i64* %RAX.i324
  %2891 = add i64 %2890, 88
  %2892 = load i64, i64* %PC.i323
  %2893 = add i64 %2892, 3
  store i64 %2893, i64* %PC.i323
  %2894 = inttoptr i64 %2891 to i32*
  %2895 = load i32, i32* %2894
  %2896 = zext i32 %2895 to i64
  store i64 %2896, i64* %RCX.i325, align 8
  store %struct.Memory* %loadMem_4017b3, %struct.Memory** %MEMORY
  %loadMem_4017b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2897 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2898 = getelementptr inbounds %struct.GPR, %struct.GPR* %2897, i32 0, i32 33
  %2899 = getelementptr inbounds %struct.Reg, %struct.Reg* %2898, i32 0, i32 0
  %PC.i321 = bitcast %union.anon* %2899 to i64*
  %2900 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2901 = getelementptr inbounds %struct.GPR, %struct.GPR* %2900, i32 0, i32 5
  %2902 = getelementptr inbounds %struct.Reg, %struct.Reg* %2901, i32 0, i32 0
  %RCX.i322 = bitcast %union.anon* %2902 to i64*
  %2903 = load i64, i64* %RCX.i322
  %2904 = load i64, i64* %PC.i321
  %2905 = add i64 %2904, 3
  store i64 %2905, i64* %PC.i321
  %2906 = trunc i64 %2903 to i32
  %2907 = add i32 1, %2906
  %2908 = zext i32 %2907 to i64
  store i64 %2908, i64* %RCX.i322, align 8
  %2909 = icmp ult i32 %2907, %2906
  %2910 = icmp ult i32 %2907, 1
  %2911 = or i1 %2909, %2910
  %2912 = zext i1 %2911 to i8
  %2913 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2912, i8* %2913, align 1
  %2914 = and i32 %2907, 255
  %2915 = call i32 @llvm.ctpop.i32(i32 %2914)
  %2916 = trunc i32 %2915 to i8
  %2917 = and i8 %2916, 1
  %2918 = xor i8 %2917, 1
  %2919 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2918, i8* %2919, align 1
  %2920 = xor i64 1, %2903
  %2921 = trunc i64 %2920 to i32
  %2922 = xor i32 %2921, %2907
  %2923 = lshr i32 %2922, 4
  %2924 = trunc i32 %2923 to i8
  %2925 = and i8 %2924, 1
  %2926 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2925, i8* %2926, align 1
  %2927 = icmp eq i32 %2907, 0
  %2928 = zext i1 %2927 to i8
  %2929 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2928, i8* %2929, align 1
  %2930 = lshr i32 %2907, 31
  %2931 = trunc i32 %2930 to i8
  %2932 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2931, i8* %2932, align 1
  %2933 = lshr i32 %2906, 31
  %2934 = xor i32 %2930, %2933
  %2935 = add i32 %2934, %2930
  %2936 = icmp eq i32 %2935, 2
  %2937 = zext i1 %2936 to i8
  %2938 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2937, i8* %2938, align 1
  store %struct.Memory* %loadMem_4017b6, %struct.Memory** %MEMORY
  %loadMem_4017b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2939 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2940 = getelementptr inbounds %struct.GPR, %struct.GPR* %2939, i32 0, i32 33
  %2941 = getelementptr inbounds %struct.Reg, %struct.Reg* %2940, i32 0, i32 0
  %PC.i318 = bitcast %union.anon* %2941 to i64*
  %2942 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2943 = getelementptr inbounds %struct.GPR, %struct.GPR* %2942, i32 0, i32 5
  %2944 = getelementptr inbounds %struct.Reg, %struct.Reg* %2943, i32 0, i32 0
  %ECX.i319 = bitcast %union.anon* %2944 to i32*
  %2945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2946 = getelementptr inbounds %struct.GPR, %struct.GPR* %2945, i32 0, i32 1
  %2947 = getelementptr inbounds %struct.Reg, %struct.Reg* %2946, i32 0, i32 0
  %RAX.i320 = bitcast %union.anon* %2947 to i64*
  %2948 = load i64, i64* %RAX.i320
  %2949 = add i64 %2948, 88
  %2950 = load i32, i32* %ECX.i319
  %2951 = zext i32 %2950 to i64
  %2952 = load i64, i64* %PC.i318
  %2953 = add i64 %2952, 3
  store i64 %2953, i64* %PC.i318
  %2954 = inttoptr i64 %2949 to i32*
  store i32 %2950, i32* %2954
  store %struct.Memory* %loadMem_4017b9, %struct.Memory** %MEMORY
  %loadMem_4017bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2955 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2956 = getelementptr inbounds %struct.GPR, %struct.GPR* %2955, i32 0, i32 33
  %2957 = getelementptr inbounds %struct.Reg, %struct.Reg* %2956, i32 0, i32 0
  %PC.i317 = bitcast %union.anon* %2957 to i64*
  %2958 = load i64, i64* %PC.i317
  %2959 = add i64 %2958, -40
  %2960 = load i64, i64* %PC.i317
  %2961 = add i64 %2960, 5
  store i64 %2961, i64* %PC.i317
  %2962 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2959, i64* %2962, align 8
  store %struct.Memory* %loadMem_4017bc, %struct.Memory** %MEMORY
  br label %block_.L_401794

block_.L_4017c1:                                  ; preds = %block_.L_401794
  %loadMem_4017c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2963 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2964 = getelementptr inbounds %struct.GPR, %struct.GPR* %2963, i32 0, i32 33
  %2965 = getelementptr inbounds %struct.Reg, %struct.Reg* %2964, i32 0, i32 0
  %PC.i316 = bitcast %union.anon* %2965 to i64*
  %2966 = load i64, i64* %PC.i316
  %2967 = add i64 %2966, 5
  %2968 = load i64, i64* %PC.i316
  %2969 = add i64 %2968, 5
  store i64 %2969, i64* %PC.i316
  %2970 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2967, i64* %2970, align 8
  store %struct.Memory* %loadMem_4017c1, %struct.Memory** %MEMORY
  br label %block_.L_4017c6

block_.L_4017c6:                                  ; preds = %block_.L_4017c1, %block_.L_401728
  %loadMem_4017c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2971 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2972 = getelementptr inbounds %struct.GPR, %struct.GPR* %2971, i32 0, i32 33
  %2973 = getelementptr inbounds %struct.Reg, %struct.Reg* %2972, i32 0, i32 0
  %PC.i313 = bitcast %union.anon* %2973 to i64*
  %2974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2975 = getelementptr inbounds %struct.GPR, %struct.GPR* %2974, i32 0, i32 1
  %2976 = getelementptr inbounds %struct.Reg, %struct.Reg* %2975, i32 0, i32 0
  %RAX.i314 = bitcast %union.anon* %2976 to i64*
  %2977 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2978 = getelementptr inbounds %struct.GPR, %struct.GPR* %2977, i32 0, i32 15
  %2979 = getelementptr inbounds %struct.Reg, %struct.Reg* %2978, i32 0, i32 0
  %RBP.i315 = bitcast %union.anon* %2979 to i64*
  %2980 = load i64, i64* %RBP.i315
  %2981 = sub i64 %2980, 8
  %2982 = load i64, i64* %PC.i313
  %2983 = add i64 %2982, 4
  store i64 %2983, i64* %PC.i313
  %2984 = inttoptr i64 %2981 to i64*
  %2985 = load i64, i64* %2984
  store i64 %2985, i64* %RAX.i314, align 8
  store %struct.Memory* %loadMem_4017c6, %struct.Memory** %MEMORY
  %loadMem_4017ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %2986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2987 = getelementptr inbounds %struct.GPR, %struct.GPR* %2986, i32 0, i32 33
  %2988 = getelementptr inbounds %struct.Reg, %struct.Reg* %2987, i32 0, i32 0
  %PC.i310 = bitcast %union.anon* %2988 to i64*
  %2989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2990 = getelementptr inbounds %struct.GPR, %struct.GPR* %2989, i32 0, i32 1
  %2991 = getelementptr inbounds %struct.Reg, %struct.Reg* %2990, i32 0, i32 0
  %RAX.i311 = bitcast %union.anon* %2991 to i64*
  %2992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2993 = getelementptr inbounds %struct.GPR, %struct.GPR* %2992, i32 0, i32 5
  %2994 = getelementptr inbounds %struct.Reg, %struct.Reg* %2993, i32 0, i32 0
  %RCX.i312 = bitcast %union.anon* %2994 to i64*
  %2995 = load i64, i64* %RAX.i311
  %2996 = add i64 %2995, 8
  %2997 = load i64, i64* %PC.i310
  %2998 = add i64 %2997, 3
  store i64 %2998, i64* %PC.i310
  %2999 = inttoptr i64 %2996 to i32*
  %3000 = load i32, i32* %2999
  %3001 = zext i32 %3000 to i64
  store i64 %3001, i64* %RCX.i312, align 8
  store %struct.Memory* %loadMem_4017ca, %struct.Memory** %MEMORY
  %loadMem_4017cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %3002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3003 = getelementptr inbounds %struct.GPR, %struct.GPR* %3002, i32 0, i32 33
  %3004 = getelementptr inbounds %struct.Reg, %struct.Reg* %3003, i32 0, i32 0
  %PC.i308 = bitcast %union.anon* %3004 to i64*
  %3005 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3006 = getelementptr inbounds %struct.GPR, %struct.GPR* %3005, i32 0, i32 5
  %3007 = getelementptr inbounds %struct.Reg, %struct.Reg* %3006, i32 0, i32 0
  %RCX.i309 = bitcast %union.anon* %3007 to i64*
  %3008 = load i64, i64* %RCX.i309
  %3009 = load i64, i64* %PC.i308
  %3010 = add i64 %3009, 2
  store i64 %3010, i64* %PC.i308
  %3011 = trunc i64 %3008 to i32
  %3012 = shl i32 %3011, 1
  %3013 = icmp slt i32 %3011, 0
  %3014 = icmp slt i32 %3012, 0
  %3015 = xor i1 %3013, %3014
  %3016 = zext i32 %3012 to i64
  store i64 %3016, i64* %RCX.i309, align 8
  %3017 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %3018 = zext i1 %3013 to i8
  store i8 %3018, i8* %3017, align 1
  %3019 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %3020 = and i32 %3012, 254
  %3021 = call i32 @llvm.ctpop.i32(i32 %3020)
  %3022 = trunc i32 %3021 to i8
  %3023 = and i8 %3022, 1
  %3024 = xor i8 %3023, 1
  store i8 %3024, i8* %3019, align 1
  %3025 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3025, align 1
  %3026 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3027 = icmp eq i32 %3012, 0
  %3028 = zext i1 %3027 to i8
  store i8 %3028, i8* %3026, align 1
  %3029 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3030 = lshr i32 %3012, 31
  %3031 = trunc i32 %3030 to i8
  store i8 %3031, i8* %3029, align 1
  %3032 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3033 = zext i1 %3015 to i8
  store i8 %3033, i8* %3032, align 1
  store %struct.Memory* %loadMem_4017cd, %struct.Memory** %MEMORY
  %loadMem_4017d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3034 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3035 = getelementptr inbounds %struct.GPR, %struct.GPR* %3034, i32 0, i32 33
  %3036 = getelementptr inbounds %struct.Reg, %struct.Reg* %3035, i32 0, i32 0
  %PC.i305 = bitcast %union.anon* %3036 to i64*
  %3037 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3038 = getelementptr inbounds %struct.GPR, %struct.GPR* %3037, i32 0, i32 5
  %3039 = getelementptr inbounds %struct.Reg, %struct.Reg* %3038, i32 0, i32 0
  %ECX.i306 = bitcast %union.anon* %3039 to i32*
  %3040 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3041 = getelementptr inbounds %struct.GPR, %struct.GPR* %3040, i32 0, i32 1
  %3042 = getelementptr inbounds %struct.Reg, %struct.Reg* %3041, i32 0, i32 0
  %RAX.i307 = bitcast %union.anon* %3042 to i64*
  %3043 = load i64, i64* %RAX.i307
  %3044 = add i64 %3043, 8
  %3045 = load i32, i32* %ECX.i306
  %3046 = zext i32 %3045 to i64
  %3047 = load i64, i64* %PC.i305
  %3048 = add i64 %3047, 3
  store i64 %3048, i64* %PC.i305
  %3049 = inttoptr i64 %3044 to i32*
  store i32 %3045, i32* %3049
  store %struct.Memory* %loadMem_4017d0, %struct.Memory** %MEMORY
  %loadMem_4017d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3050 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3051 = getelementptr inbounds %struct.GPR, %struct.GPR* %3050, i32 0, i32 33
  %3052 = getelementptr inbounds %struct.Reg, %struct.Reg* %3051, i32 0, i32 0
  %PC.i302 = bitcast %union.anon* %3052 to i64*
  %3053 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3054 = getelementptr inbounds %struct.GPR, %struct.GPR* %3053, i32 0, i32 1
  %3055 = getelementptr inbounds %struct.Reg, %struct.Reg* %3054, i32 0, i32 0
  %RAX.i303 = bitcast %union.anon* %3055 to i64*
  %3056 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3057 = getelementptr inbounds %struct.GPR, %struct.GPR* %3056, i32 0, i32 15
  %3058 = getelementptr inbounds %struct.Reg, %struct.Reg* %3057, i32 0, i32 0
  %RBP.i304 = bitcast %union.anon* %3058 to i64*
  %3059 = load i64, i64* %RBP.i304
  %3060 = sub i64 %3059, 8
  %3061 = load i64, i64* %PC.i302
  %3062 = add i64 %3061, 4
  store i64 %3062, i64* %PC.i302
  %3063 = inttoptr i64 %3060 to i64*
  %3064 = load i64, i64* %3063
  store i64 %3064, i64* %RAX.i303, align 8
  store %struct.Memory* %loadMem_4017d3, %struct.Memory** %MEMORY
  %loadMem_4017d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3065 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3066 = getelementptr inbounds %struct.GPR, %struct.GPR* %3065, i32 0, i32 33
  %3067 = getelementptr inbounds %struct.Reg, %struct.Reg* %3066, i32 0, i32 0
  %PC.i299 = bitcast %union.anon* %3067 to i64*
  %3068 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3069 = getelementptr inbounds %struct.GPR, %struct.GPR* %3068, i32 0, i32 1
  %3070 = getelementptr inbounds %struct.Reg, %struct.Reg* %3069, i32 0, i32 0
  %RAX.i300 = bitcast %union.anon* %3070 to i64*
  %3071 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3072 = getelementptr inbounds %struct.GPR, %struct.GPR* %3071, i32 0, i32 5
  %3073 = getelementptr inbounds %struct.Reg, %struct.Reg* %3072, i32 0, i32 0
  %RCX.i301 = bitcast %union.anon* %3073 to i64*
  %3074 = load i64, i64* %RAX.i300
  %3075 = add i64 %3074, 8
  %3076 = load i64, i64* %PC.i299
  %3077 = add i64 %3076, 3
  store i64 %3077, i64* %PC.i299
  %3078 = inttoptr i64 %3075 to i32*
  %3079 = load i32, i32* %3078
  %3080 = zext i32 %3079 to i64
  store i64 %3080, i64* %RCX.i301, align 8
  store %struct.Memory* %loadMem_4017d7, %struct.Memory** %MEMORY
  %loadMem_4017da = load %struct.Memory*, %struct.Memory** %MEMORY
  %3081 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3082 = getelementptr inbounds %struct.GPR, %struct.GPR* %3081, i32 0, i32 33
  %3083 = getelementptr inbounds %struct.Reg, %struct.Reg* %3082, i32 0, i32 0
  %PC.i297 = bitcast %union.anon* %3083 to i64*
  %3084 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3085 = getelementptr inbounds %struct.GPR, %struct.GPR* %3084, i32 0, i32 5
  %3086 = getelementptr inbounds %struct.Reg, %struct.Reg* %3085, i32 0, i32 0
  %RCX.i298 = bitcast %union.anon* %3086 to i64*
  %3087 = load i64, i64* %RCX.i298
  %3088 = load i64, i64* %PC.i297
  %3089 = add i64 %3088, 3
  store i64 %3089, i64* %PC.i297
  %3090 = or i64 1, %3087
  %3091 = trunc i64 %3090 to i32
  %3092 = and i64 %3090, 4294967295
  store i64 %3092, i64* %RCX.i298, align 8
  %3093 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3093, align 1
  %3094 = and i32 %3091, 255
  %3095 = call i32 @llvm.ctpop.i32(i32 %3094)
  %3096 = trunc i32 %3095 to i8
  %3097 = and i8 %3096, 1
  %3098 = xor i8 %3097, 1
  %3099 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3098, i8* %3099, align 1
  %3100 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3100, align 1
  %3101 = lshr i32 %3091, 31
  %3102 = trunc i32 %3101 to i8
  %3103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3102, i8* %3103, align 1
  %3104 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3104, align 1
  %3105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3105, align 1
  store %struct.Memory* %loadMem_4017da, %struct.Memory** %MEMORY
  %loadMem_4017dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %3106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3107 = getelementptr inbounds %struct.GPR, %struct.GPR* %3106, i32 0, i32 33
  %3108 = getelementptr inbounds %struct.Reg, %struct.Reg* %3107, i32 0, i32 0
  %PC.i294 = bitcast %union.anon* %3108 to i64*
  %3109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3110 = getelementptr inbounds %struct.GPR, %struct.GPR* %3109, i32 0, i32 5
  %3111 = getelementptr inbounds %struct.Reg, %struct.Reg* %3110, i32 0, i32 0
  %ECX.i295 = bitcast %union.anon* %3111 to i32*
  %3112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3113 = getelementptr inbounds %struct.GPR, %struct.GPR* %3112, i32 0, i32 1
  %3114 = getelementptr inbounds %struct.Reg, %struct.Reg* %3113, i32 0, i32 0
  %RAX.i296 = bitcast %union.anon* %3114 to i64*
  %3115 = load i64, i64* %RAX.i296
  %3116 = add i64 %3115, 8
  %3117 = load i32, i32* %ECX.i295
  %3118 = zext i32 %3117 to i64
  %3119 = load i64, i64* %PC.i294
  %3120 = add i64 %3119, 3
  store i64 %3120, i64* %PC.i294
  %3121 = inttoptr i64 %3116 to i32*
  store i32 %3117, i32* %3121
  store %struct.Memory* %loadMem_4017dd, %struct.Memory** %MEMORY
  %loadMem_4017e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3123 = getelementptr inbounds %struct.GPR, %struct.GPR* %3122, i32 0, i32 33
  %3124 = getelementptr inbounds %struct.Reg, %struct.Reg* %3123, i32 0, i32 0
  %PC.i291 = bitcast %union.anon* %3124 to i64*
  %3125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3126 = getelementptr inbounds %struct.GPR, %struct.GPR* %3125, i32 0, i32 1
  %3127 = getelementptr inbounds %struct.Reg, %struct.Reg* %3126, i32 0, i32 0
  %RAX.i292 = bitcast %union.anon* %3127 to i64*
  %3128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3129 = getelementptr inbounds %struct.GPR, %struct.GPR* %3128, i32 0, i32 15
  %3130 = getelementptr inbounds %struct.Reg, %struct.Reg* %3129, i32 0, i32 0
  %RBP.i293 = bitcast %union.anon* %3130 to i64*
  %3131 = load i64, i64* %RBP.i293
  %3132 = sub i64 %3131, 8
  %3133 = load i64, i64* %PC.i291
  %3134 = add i64 %3133, 4
  store i64 %3134, i64* %PC.i291
  %3135 = inttoptr i64 %3132 to i64*
  %3136 = load i64, i64* %3135
  store i64 %3136, i64* %RAX.i292, align 8
  store %struct.Memory* %loadMem_4017e0, %struct.Memory** %MEMORY
  %loadMem_4017e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3138 = getelementptr inbounds %struct.GPR, %struct.GPR* %3137, i32 0, i32 33
  %3139 = getelementptr inbounds %struct.Reg, %struct.Reg* %3138, i32 0, i32 0
  %PC.i288 = bitcast %union.anon* %3139 to i64*
  %3140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3141 = getelementptr inbounds %struct.GPR, %struct.GPR* %3140, i32 0, i32 1
  %3142 = getelementptr inbounds %struct.Reg, %struct.Reg* %3141, i32 0, i32 0
  %RAX.i289 = bitcast %union.anon* %3142 to i64*
  %3143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3144 = getelementptr inbounds %struct.GPR, %struct.GPR* %3143, i32 0, i32 5
  %3145 = getelementptr inbounds %struct.Reg, %struct.Reg* %3144, i32 0, i32 0
  %RCX.i290 = bitcast %union.anon* %3145 to i64*
  %3146 = load i64, i64* %RAX.i289
  %3147 = add i64 %3146, 12
  %3148 = load i64, i64* %PC.i288
  %3149 = add i64 %3148, 3
  store i64 %3149, i64* %PC.i288
  %3150 = inttoptr i64 %3147 to i32*
  %3151 = load i32, i32* %3150
  %3152 = zext i32 %3151 to i64
  store i64 %3152, i64* %RCX.i290, align 8
  store %struct.Memory* %loadMem_4017e4, %struct.Memory** %MEMORY
  %loadMem_4017e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3154 = getelementptr inbounds %struct.GPR, %struct.GPR* %3153, i32 0, i32 33
  %3155 = getelementptr inbounds %struct.Reg, %struct.Reg* %3154, i32 0, i32 0
  %PC.i286 = bitcast %union.anon* %3155 to i64*
  %3156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3157 = getelementptr inbounds %struct.GPR, %struct.GPR* %3156, i32 0, i32 5
  %3158 = getelementptr inbounds %struct.Reg, %struct.Reg* %3157, i32 0, i32 0
  %RCX.i287 = bitcast %union.anon* %3158 to i64*
  %3159 = load i64, i64* %RCX.i287
  %3160 = load i64, i64* %PC.i286
  %3161 = add i64 %3160, 3
  store i64 %3161, i64* %PC.i286
  %3162 = trunc i64 %3159 to i32
  %3163 = add i32 -1, %3162
  %3164 = zext i32 %3163 to i64
  store i64 %3164, i64* %RCX.i287, align 8
  %3165 = icmp ult i32 %3163, %3162
  %3166 = icmp ult i32 %3163, -1
  %3167 = or i1 %3165, %3166
  %3168 = zext i1 %3167 to i8
  %3169 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3168, i8* %3169, align 1
  %3170 = and i32 %3163, 255
  %3171 = call i32 @llvm.ctpop.i32(i32 %3170)
  %3172 = trunc i32 %3171 to i8
  %3173 = and i8 %3172, 1
  %3174 = xor i8 %3173, 1
  %3175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3174, i8* %3175, align 1
  %3176 = xor i64 -1, %3159
  %3177 = trunc i64 %3176 to i32
  %3178 = xor i32 %3177, %3163
  %3179 = lshr i32 %3178, 4
  %3180 = trunc i32 %3179 to i8
  %3181 = and i8 %3180, 1
  %3182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3181, i8* %3182, align 1
  %3183 = icmp eq i32 %3163, 0
  %3184 = zext i1 %3183 to i8
  %3185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3184, i8* %3185, align 1
  %3186 = lshr i32 %3163, 31
  %3187 = trunc i32 %3186 to i8
  %3188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3187, i8* %3188, align 1
  %3189 = lshr i32 %3162, 31
  %3190 = xor i32 %3186, %3189
  %3191 = xor i32 %3186, 1
  %3192 = add i32 %3190, %3191
  %3193 = icmp eq i32 %3192, 2
  %3194 = zext i1 %3193 to i8
  %3195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3194, i8* %3195, align 1
  store %struct.Memory* %loadMem_4017e7, %struct.Memory** %MEMORY
  %loadMem_4017ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %3196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3197 = getelementptr inbounds %struct.GPR, %struct.GPR* %3196, i32 0, i32 33
  %3198 = getelementptr inbounds %struct.Reg, %struct.Reg* %3197, i32 0, i32 0
  %PC.i283 = bitcast %union.anon* %3198 to i64*
  %3199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3200 = getelementptr inbounds %struct.GPR, %struct.GPR* %3199, i32 0, i32 5
  %3201 = getelementptr inbounds %struct.Reg, %struct.Reg* %3200, i32 0, i32 0
  %ECX.i284 = bitcast %union.anon* %3201 to i32*
  %3202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3203 = getelementptr inbounds %struct.GPR, %struct.GPR* %3202, i32 0, i32 1
  %3204 = getelementptr inbounds %struct.Reg, %struct.Reg* %3203, i32 0, i32 0
  %RAX.i285 = bitcast %union.anon* %3204 to i64*
  %3205 = load i64, i64* %RAX.i285
  %3206 = add i64 %3205, 12
  %3207 = load i32, i32* %ECX.i284
  %3208 = zext i32 %3207 to i64
  %3209 = load i64, i64* %PC.i283
  %3210 = add i64 %3209, 3
  store i64 %3210, i64* %PC.i283
  %3211 = inttoptr i64 %3206 to i32*
  store i32 %3207, i32* %3211
  store %struct.Memory* %loadMem_4017ea, %struct.Memory** %MEMORY
  %loadMem_4017ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %3212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3213 = getelementptr inbounds %struct.GPR, %struct.GPR* %3212, i32 0, i32 33
  %3214 = getelementptr inbounds %struct.Reg, %struct.Reg* %3213, i32 0, i32 0
  %PC.i281 = bitcast %union.anon* %3214 to i64*
  %3215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3216 = getelementptr inbounds %struct.GPR, %struct.GPR* %3215, i32 0, i32 5
  %3217 = getelementptr inbounds %struct.Reg, %struct.Reg* %3216, i32 0, i32 0
  %ECX.i282 = bitcast %union.anon* %3217 to i32*
  %3218 = load i32, i32* %ECX.i282
  %3219 = zext i32 %3218 to i64
  %3220 = load i64, i64* %PC.i281
  %3221 = add i64 %3220, 3
  store i64 %3221, i64* %PC.i281
  %3222 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3222, align 1
  %3223 = and i32 %3218, 255
  %3224 = call i32 @llvm.ctpop.i32(i32 %3223)
  %3225 = trunc i32 %3224 to i8
  %3226 = and i8 %3225, 1
  %3227 = xor i8 %3226, 1
  %3228 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3227, i8* %3228, align 1
  %3229 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3229, align 1
  %3230 = icmp eq i32 %3218, 0
  %3231 = zext i1 %3230 to i8
  %3232 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3231, i8* %3232, align 1
  %3233 = lshr i32 %3218, 31
  %3234 = trunc i32 %3233 to i8
  %3235 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3234, i8* %3235, align 1
  %3236 = lshr i32 %3218, 31
  %3237 = xor i32 %3233, %3236
  %3238 = add i32 %3237, %3236
  %3239 = icmp eq i32 %3238, 2
  %3240 = zext i1 %3239 to i8
  %3241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3240, i8* %3241, align 1
  store %struct.Memory* %loadMem_4017ed, %struct.Memory** %MEMORY
  %loadMem_4017f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3243 = getelementptr inbounds %struct.GPR, %struct.GPR* %3242, i32 0, i32 33
  %3244 = getelementptr inbounds %struct.Reg, %struct.Reg* %3243, i32 0, i32 0
  %PC.i280 = bitcast %union.anon* %3244 to i64*
  %3245 = load i64, i64* %PC.i280
  %3246 = add i64 %3245, 107
  %3247 = load i64, i64* %PC.i280
  %3248 = add i64 %3247, 6
  %3249 = load i64, i64* %PC.i280
  %3250 = add i64 %3249, 6
  store i64 %3250, i64* %PC.i280
  %3251 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3252 = load i8, i8* %3251, align 1
  %3253 = icmp eq i8 %3252, 0
  %3254 = zext i1 %3253 to i8
  store i8 %3254, i8* %BRANCH_TAKEN, align 1
  %3255 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3256 = select i1 %3253, i64 %3246, i64 %3248
  store i64 %3256, i64* %3255, align 8
  store %struct.Memory* %loadMem_4017f0, %struct.Memory** %MEMORY
  %loadBr_4017f0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4017f0 = icmp eq i8 %loadBr_4017f0, 1
  br i1 %cmpBr_4017f0, label %block_.L_40185b, label %block_4017f6

block_4017f6:                                     ; preds = %block_.L_4017c6
  %loadMem_4017f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3258 = getelementptr inbounds %struct.GPR, %struct.GPR* %3257, i32 0, i32 33
  %3259 = getelementptr inbounds %struct.Reg, %struct.Reg* %3258, i32 0, i32 0
  %PC.i277 = bitcast %union.anon* %3259 to i64*
  %3260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3261 = getelementptr inbounds %struct.GPR, %struct.GPR* %3260, i32 0, i32 1
  %3262 = getelementptr inbounds %struct.Reg, %struct.Reg* %3261, i32 0, i32 0
  %RAX.i278 = bitcast %union.anon* %3262 to i64*
  %3263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3264 = getelementptr inbounds %struct.GPR, %struct.GPR* %3263, i32 0, i32 15
  %3265 = getelementptr inbounds %struct.Reg, %struct.Reg* %3264, i32 0, i32 0
  %RBP.i279 = bitcast %union.anon* %3265 to i64*
  %3266 = load i64, i64* %RBP.i279
  %3267 = sub i64 %3266, 8
  %3268 = load i64, i64* %PC.i277
  %3269 = add i64 %3268, 4
  store i64 %3269, i64* %PC.i277
  %3270 = inttoptr i64 %3267 to i64*
  %3271 = load i64, i64* %3270
  store i64 %3271, i64* %RAX.i278, align 8
  store %struct.Memory* %loadMem_4017f6, %struct.Memory** %MEMORY
  %loadMem_4017fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %3272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3273 = getelementptr inbounds %struct.GPR, %struct.GPR* %3272, i32 0, i32 33
  %3274 = getelementptr inbounds %struct.Reg, %struct.Reg* %3273, i32 0, i32 0
  %PC.i274 = bitcast %union.anon* %3274 to i64*
  %3275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3276 = getelementptr inbounds %struct.GPR, %struct.GPR* %3275, i32 0, i32 1
  %3277 = getelementptr inbounds %struct.Reg, %struct.Reg* %3276, i32 0, i32 0
  %RAX.i275 = bitcast %union.anon* %3277 to i64*
  %3278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3279 = getelementptr inbounds %struct.GPR, %struct.GPR* %3278, i32 0, i32 5
  %3280 = getelementptr inbounds %struct.Reg, %struct.Reg* %3279, i32 0, i32 0
  %RCX.i276 = bitcast %union.anon* %3280 to i64*
  %3281 = load i64, i64* %RAX.i275
  %3282 = add i64 %3281, 8
  %3283 = load i64, i64* %PC.i274
  %3284 = add i64 %3283, 3
  store i64 %3284, i64* %PC.i274
  %3285 = inttoptr i64 %3282 to i32*
  %3286 = load i32, i32* %3285
  %3287 = zext i32 %3286 to i64
  store i64 %3287, i64* %RCX.i276, align 8
  store %struct.Memory* %loadMem_4017fa, %struct.Memory** %MEMORY
  %loadMem_4017fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %3288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3289 = getelementptr inbounds %struct.GPR, %struct.GPR* %3288, i32 0, i32 33
  %3290 = getelementptr inbounds %struct.Reg, %struct.Reg* %3289, i32 0, i32 0
  %PC.i271 = bitcast %union.anon* %3290 to i64*
  %3291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3292 = getelementptr inbounds %struct.GPR, %struct.GPR* %3291, i32 0, i32 5
  %3293 = getelementptr inbounds %struct.Reg, %struct.Reg* %3292, i32 0, i32 0
  %3294 = bitcast %union.anon* %3293 to %struct.anon.2*
  %CL.i272 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3294, i32 0, i32 0
  %3295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3296 = getelementptr inbounds %struct.GPR, %struct.GPR* %3295, i32 0, i32 7
  %3297 = getelementptr inbounds %struct.Reg, %struct.Reg* %3296, i32 0, i32 0
  %3298 = bitcast %union.anon* %3297 to %struct.anon.2*
  %DL.i273 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3298, i32 0, i32 0
  %3299 = load i8, i8* %CL.i272
  %3300 = zext i8 %3299 to i64
  %3301 = load i64, i64* %PC.i271
  %3302 = add i64 %3301, 2
  store i64 %3302, i64* %PC.i271
  store i8 %3299, i8* %DL.i273, align 1
  store %struct.Memory* %loadMem_4017fd, %struct.Memory** %MEMORY
  %loadMem_4017ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %3303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3304 = getelementptr inbounds %struct.GPR, %struct.GPR* %3303, i32 0, i32 33
  %3305 = getelementptr inbounds %struct.Reg, %struct.Reg* %3304, i32 0, i32 0
  %PC.i268 = bitcast %union.anon* %3305 to i64*
  %3306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3307 = getelementptr inbounds %struct.GPR, %struct.GPR* %3306, i32 0, i32 1
  %3308 = getelementptr inbounds %struct.Reg, %struct.Reg* %3307, i32 0, i32 0
  %RAX.i269 = bitcast %union.anon* %3308 to i64*
  %3309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3310 = getelementptr inbounds %struct.GPR, %struct.GPR* %3309, i32 0, i32 15
  %3311 = getelementptr inbounds %struct.Reg, %struct.Reg* %3310, i32 0, i32 0
  %RBP.i270 = bitcast %union.anon* %3311 to i64*
  %3312 = load i64, i64* %RBP.i270
  %3313 = sub i64 %3312, 8
  %3314 = load i64, i64* %PC.i268
  %3315 = add i64 %3314, 4
  store i64 %3315, i64* %PC.i268
  %3316 = inttoptr i64 %3313 to i64*
  %3317 = load i64, i64* %3316
  store i64 %3317, i64* %RAX.i269, align 8
  store %struct.Memory* %loadMem_4017ff, %struct.Memory** %MEMORY
  %loadMem_401803 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3319 = getelementptr inbounds %struct.GPR, %struct.GPR* %3318, i32 0, i32 33
  %3320 = getelementptr inbounds %struct.Reg, %struct.Reg* %3319, i32 0, i32 0
  %PC.i266 = bitcast %union.anon* %3320 to i64*
  %3321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3322 = getelementptr inbounds %struct.GPR, %struct.GPR* %3321, i32 0, i32 1
  %3323 = getelementptr inbounds %struct.Reg, %struct.Reg* %3322, i32 0, i32 0
  %RAX.i267 = bitcast %union.anon* %3323 to i64*
  %3324 = load i64, i64* %RAX.i267
  %3325 = add i64 %3324, 24
  %3326 = load i64, i64* %PC.i266
  %3327 = add i64 %3326, 4
  store i64 %3327, i64* %PC.i266
  %3328 = inttoptr i64 %3325 to i64*
  %3329 = load i64, i64* %3328
  store i64 %3329, i64* %RAX.i267, align 8
  store %struct.Memory* %loadMem_401803, %struct.Memory** %MEMORY
  %loadMem_401807 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3331 = getelementptr inbounds %struct.GPR, %struct.GPR* %3330, i32 0, i32 33
  %3332 = getelementptr inbounds %struct.Reg, %struct.Reg* %3331, i32 0, i32 0
  %PC.i263 = bitcast %union.anon* %3332 to i64*
  %3333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3334 = getelementptr inbounds %struct.GPR, %struct.GPR* %3333, i32 0, i32 9
  %3335 = getelementptr inbounds %struct.Reg, %struct.Reg* %3334, i32 0, i32 0
  %RSI.i264 = bitcast %union.anon* %3335 to i64*
  %3336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3337 = getelementptr inbounds %struct.GPR, %struct.GPR* %3336, i32 0, i32 15
  %3338 = getelementptr inbounds %struct.Reg, %struct.Reg* %3337, i32 0, i32 0
  %RBP.i265 = bitcast %union.anon* %3338 to i64*
  %3339 = load i64, i64* %RBP.i265
  %3340 = sub i64 %3339, 8
  %3341 = load i64, i64* %PC.i263
  %3342 = add i64 %3341, 4
  store i64 %3342, i64* %PC.i263
  %3343 = inttoptr i64 %3340 to i64*
  %3344 = load i64, i64* %3343
  store i64 %3344, i64* %RSI.i264, align 8
  store %struct.Memory* %loadMem_401807, %struct.Memory** %MEMORY
  %loadMem_40180b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3346 = getelementptr inbounds %struct.GPR, %struct.GPR* %3345, i32 0, i32 33
  %3347 = getelementptr inbounds %struct.Reg, %struct.Reg* %3346, i32 0, i32 0
  %PC.i261 = bitcast %union.anon* %3347 to i64*
  %3348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3349 = getelementptr inbounds %struct.GPR, %struct.GPR* %3348, i32 0, i32 9
  %3350 = getelementptr inbounds %struct.Reg, %struct.Reg* %3349, i32 0, i32 0
  %RSI.i262 = bitcast %union.anon* %3350 to i64*
  %3351 = load i64, i64* %RSI.i262
  %3352 = add i64 %3351, 32
  %3353 = load i64, i64* %PC.i261
  %3354 = add i64 %3353, 4
  store i64 %3354, i64* %PC.i261
  %3355 = inttoptr i64 %3352 to i64*
  %3356 = load i64, i64* %3355
  store i64 %3356, i64* %RSI.i262, align 8
  store %struct.Memory* %loadMem_40180b, %struct.Memory** %MEMORY
  %loadMem_40180f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3358 = getelementptr inbounds %struct.GPR, %struct.GPR* %3357, i32 0, i32 33
  %3359 = getelementptr inbounds %struct.Reg, %struct.Reg* %3358, i32 0, i32 0
  %PC.i258 = bitcast %union.anon* %3359 to i64*
  %3360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3361 = getelementptr inbounds %struct.GPR, %struct.GPR* %3360, i32 0, i32 5
  %3362 = getelementptr inbounds %struct.Reg, %struct.Reg* %3361, i32 0, i32 0
  %RCX.i259 = bitcast %union.anon* %3362 to i64*
  %3363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3364 = getelementptr inbounds %struct.GPR, %struct.GPR* %3363, i32 0, i32 9
  %3365 = getelementptr inbounds %struct.Reg, %struct.Reg* %3364, i32 0, i32 0
  %RSI.i260 = bitcast %union.anon* %3365 to i64*
  %3366 = load i64, i64* %RSI.i260
  %3367 = load i64, i64* %PC.i258
  %3368 = add i64 %3367, 2
  store i64 %3368, i64* %PC.i258
  %3369 = inttoptr i64 %3366 to i32*
  %3370 = load i32, i32* %3369
  %3371 = zext i32 %3370 to i64
  store i64 %3371, i64* %RCX.i259, align 8
  store %struct.Memory* %loadMem_40180f, %struct.Memory** %MEMORY
  %loadMem_401811 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3373 = getelementptr inbounds %struct.GPR, %struct.GPR* %3372, i32 0, i32 33
  %3374 = getelementptr inbounds %struct.Reg, %struct.Reg* %3373, i32 0, i32 0
  %PC.i255 = bitcast %union.anon* %3374 to i64*
  %3375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3376 = getelementptr inbounds %struct.GPR, %struct.GPR* %3375, i32 0, i32 5
  %3377 = getelementptr inbounds %struct.Reg, %struct.Reg* %3376, i32 0, i32 0
  %ECX.i256 = bitcast %union.anon* %3377 to i32*
  %3378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3379 = getelementptr inbounds %struct.GPR, %struct.GPR* %3378, i32 0, i32 11
  %3380 = getelementptr inbounds %struct.Reg, %struct.Reg* %3379, i32 0, i32 0
  %RDI.i257 = bitcast %union.anon* %3380 to i64*
  %3381 = load i32, i32* %ECX.i256
  %3382 = zext i32 %3381 to i64
  %3383 = load i64, i64* %PC.i255
  %3384 = add i64 %3383, 2
  store i64 %3384, i64* %PC.i255
  %3385 = and i64 %3382, 4294967295
  store i64 %3385, i64* %RDI.i257, align 8
  store %struct.Memory* %loadMem_401811, %struct.Memory** %MEMORY
  %loadMem_401813 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3387 = getelementptr inbounds %struct.GPR, %struct.GPR* %3386, i32 0, i32 33
  %3388 = getelementptr inbounds %struct.Reg, %struct.Reg* %3387, i32 0, i32 0
  %PC.i253 = bitcast %union.anon* %3388 to i64*
  %3389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3390 = getelementptr inbounds %struct.GPR, %struct.GPR* %3389, i32 0, i32 11
  %3391 = getelementptr inbounds %struct.Reg, %struct.Reg* %3390, i32 0, i32 0
  %RDI.i254 = bitcast %union.anon* %3391 to i64*
  %3392 = load i64, i64* %RDI.i254
  %3393 = load i64, i64* %PC.i253
  %3394 = add i64 %3393, 3
  store i64 %3394, i64* %PC.i253
  %3395 = trunc i64 %3392 to i32
  %3396 = add i32 1, %3395
  %3397 = zext i32 %3396 to i64
  store i64 %3397, i64* %RDI.i254, align 8
  %3398 = icmp ult i32 %3396, %3395
  %3399 = icmp ult i32 %3396, 1
  %3400 = or i1 %3398, %3399
  %3401 = zext i1 %3400 to i8
  %3402 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3401, i8* %3402, align 1
  %3403 = and i32 %3396, 255
  %3404 = call i32 @llvm.ctpop.i32(i32 %3403)
  %3405 = trunc i32 %3404 to i8
  %3406 = and i8 %3405, 1
  %3407 = xor i8 %3406, 1
  %3408 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3407, i8* %3408, align 1
  %3409 = xor i64 1, %3392
  %3410 = trunc i64 %3409 to i32
  %3411 = xor i32 %3410, %3396
  %3412 = lshr i32 %3411, 4
  %3413 = trunc i32 %3412 to i8
  %3414 = and i8 %3413, 1
  %3415 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3414, i8* %3415, align 1
  %3416 = icmp eq i32 %3396, 0
  %3417 = zext i1 %3416 to i8
  %3418 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3417, i8* %3418, align 1
  %3419 = lshr i32 %3396, 31
  %3420 = trunc i32 %3419 to i8
  %3421 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3420, i8* %3421, align 1
  %3422 = lshr i32 %3395, 31
  %3423 = xor i32 %3419, %3422
  %3424 = add i32 %3423, %3419
  %3425 = icmp eq i32 %3424, 2
  %3426 = zext i1 %3425 to i8
  %3427 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3426, i8* %3427, align 1
  store %struct.Memory* %loadMem_401813, %struct.Memory** %MEMORY
  %loadMem_401816 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3428 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3429 = getelementptr inbounds %struct.GPR, %struct.GPR* %3428, i32 0, i32 33
  %3430 = getelementptr inbounds %struct.Reg, %struct.Reg* %3429, i32 0, i32 0
  %PC.i250 = bitcast %union.anon* %3430 to i64*
  %3431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3432 = getelementptr inbounds %struct.GPR, %struct.GPR* %3431, i32 0, i32 11
  %3433 = getelementptr inbounds %struct.Reg, %struct.Reg* %3432, i32 0, i32 0
  %EDI.i251 = bitcast %union.anon* %3433 to i32*
  %3434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3435 = getelementptr inbounds %struct.GPR, %struct.GPR* %3434, i32 0, i32 9
  %3436 = getelementptr inbounds %struct.Reg, %struct.Reg* %3435, i32 0, i32 0
  %RSI.i252 = bitcast %union.anon* %3436 to i64*
  %3437 = load i64, i64* %RSI.i252
  %3438 = load i32, i32* %EDI.i251
  %3439 = zext i32 %3438 to i64
  %3440 = load i64, i64* %PC.i250
  %3441 = add i64 %3440, 2
  store i64 %3441, i64* %PC.i250
  %3442 = inttoptr i64 %3437 to i32*
  store i32 %3438, i32* %3442
  store %struct.Memory* %loadMem_401816, %struct.Memory** %MEMORY
  %loadMem_401818 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3444 = getelementptr inbounds %struct.GPR, %struct.GPR* %3443, i32 0, i32 33
  %3445 = getelementptr inbounds %struct.Reg, %struct.Reg* %3444, i32 0, i32 0
  %PC.i247 = bitcast %union.anon* %3445 to i64*
  %3446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3447 = getelementptr inbounds %struct.GPR, %struct.GPR* %3446, i32 0, i32 5
  %3448 = getelementptr inbounds %struct.Reg, %struct.Reg* %3447, i32 0, i32 0
  %ECX.i248 = bitcast %union.anon* %3448 to i32*
  %3449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3450 = getelementptr inbounds %struct.GPR, %struct.GPR* %3449, i32 0, i32 9
  %3451 = getelementptr inbounds %struct.Reg, %struct.Reg* %3450, i32 0, i32 0
  %RSI.i249 = bitcast %union.anon* %3451 to i64*
  %3452 = load i32, i32* %ECX.i248
  %3453 = zext i32 %3452 to i64
  %3454 = load i64, i64* %PC.i247
  %3455 = add i64 %3454, 3
  store i64 %3455, i64* %PC.i247
  %3456 = shl i64 %3453, 32
  %3457 = ashr exact i64 %3456, 32
  store i64 %3457, i64* %RSI.i249, align 8
  store %struct.Memory* %loadMem_401818, %struct.Memory** %MEMORY
  %loadMem_40181b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3459 = getelementptr inbounds %struct.GPR, %struct.GPR* %3458, i32 0, i32 33
  %3460 = getelementptr inbounds %struct.Reg, %struct.Reg* %3459, i32 0, i32 0
  %PC.i243 = bitcast %union.anon* %3460 to i64*
  %3461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3462 = getelementptr inbounds %struct.GPR, %struct.GPR* %3461, i32 0, i32 7
  %3463 = getelementptr inbounds %struct.Reg, %struct.Reg* %3462, i32 0, i32 0
  %3464 = bitcast %union.anon* %3463 to %struct.anon.2*
  %DL.i244 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3464, i32 0, i32 0
  %3465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3466 = getelementptr inbounds %struct.GPR, %struct.GPR* %3465, i32 0, i32 1
  %3467 = getelementptr inbounds %struct.Reg, %struct.Reg* %3466, i32 0, i32 0
  %RAX.i245 = bitcast %union.anon* %3467 to i64*
  %3468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3469 = getelementptr inbounds %struct.GPR, %struct.GPR* %3468, i32 0, i32 9
  %3470 = getelementptr inbounds %struct.Reg, %struct.Reg* %3469, i32 0, i32 0
  %RSI.i246 = bitcast %union.anon* %3470 to i64*
  %3471 = load i64, i64* %RAX.i245
  %3472 = load i64, i64* %RSI.i246
  %3473 = add i64 %3472, %3471
  %3474 = load i8, i8* %DL.i244
  %3475 = zext i8 %3474 to i64
  %3476 = load i64, i64* %PC.i243
  %3477 = add i64 %3476, 3
  store i64 %3477, i64* %PC.i243
  %3478 = inttoptr i64 %3473 to i8*
  store i8 %3474, i8* %3478
  store %struct.Memory* %loadMem_40181b, %struct.Memory** %MEMORY
  %loadMem_40181e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3480 = getelementptr inbounds %struct.GPR, %struct.GPR* %3479, i32 0, i32 33
  %3481 = getelementptr inbounds %struct.Reg, %struct.Reg* %3480, i32 0, i32 0
  %PC.i240 = bitcast %union.anon* %3481 to i64*
  %3482 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3483 = getelementptr inbounds %struct.GPR, %struct.GPR* %3482, i32 0, i32 1
  %3484 = getelementptr inbounds %struct.Reg, %struct.Reg* %3483, i32 0, i32 0
  %RAX.i241 = bitcast %union.anon* %3484 to i64*
  %3485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3486 = getelementptr inbounds %struct.GPR, %struct.GPR* %3485, i32 0, i32 15
  %3487 = getelementptr inbounds %struct.Reg, %struct.Reg* %3486, i32 0, i32 0
  %RBP.i242 = bitcast %union.anon* %3487 to i64*
  %3488 = load i64, i64* %RBP.i242
  %3489 = sub i64 %3488, 8
  %3490 = load i64, i64* %PC.i240
  %3491 = add i64 %3490, 4
  store i64 %3491, i64* %PC.i240
  %3492 = inttoptr i64 %3489 to i64*
  %3493 = load i64, i64* %3492
  store i64 %3493, i64* %RAX.i241, align 8
  store %struct.Memory* %loadMem_40181e, %struct.Memory** %MEMORY
  %loadMem_401822 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3495 = getelementptr inbounds %struct.GPR, %struct.GPR* %3494, i32 0, i32 33
  %3496 = getelementptr inbounds %struct.Reg, %struct.Reg* %3495, i32 0, i32 0
  %PC.i238 = bitcast %union.anon* %3496 to i64*
  %3497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3498 = getelementptr inbounds %struct.GPR, %struct.GPR* %3497, i32 0, i32 1
  %3499 = getelementptr inbounds %struct.Reg, %struct.Reg* %3498, i32 0, i32 0
  %RAX.i239 = bitcast %union.anon* %3499 to i64*
  %3500 = load i64, i64* %RAX.i239
  %3501 = add i64 %3500, 12
  %3502 = load i64, i64* %PC.i238
  %3503 = add i64 %3502, 7
  store i64 %3503, i64* %PC.i238
  %3504 = inttoptr i64 %3501 to i32*
  store i32 8, i32* %3504
  store %struct.Memory* %loadMem_401822, %struct.Memory** %MEMORY
  br label %block_.L_401829

block_.L_401829:                                  ; preds = %block_401837, %block_4017f6
  %loadMem_401829 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3505 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3506 = getelementptr inbounds %struct.GPR, %struct.GPR* %3505, i32 0, i32 33
  %3507 = getelementptr inbounds %struct.Reg, %struct.Reg* %3506, i32 0, i32 0
  %PC.i235 = bitcast %union.anon* %3507 to i64*
  %3508 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3509 = getelementptr inbounds %struct.GPR, %struct.GPR* %3508, i32 0, i32 1
  %3510 = getelementptr inbounds %struct.Reg, %struct.Reg* %3509, i32 0, i32 0
  %RAX.i236 = bitcast %union.anon* %3510 to i64*
  %3511 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3512 = getelementptr inbounds %struct.GPR, %struct.GPR* %3511, i32 0, i32 15
  %3513 = getelementptr inbounds %struct.Reg, %struct.Reg* %3512, i32 0, i32 0
  %RBP.i237 = bitcast %union.anon* %3513 to i64*
  %3514 = load i64, i64* %RBP.i237
  %3515 = sub i64 %3514, 8
  %3516 = load i64, i64* %PC.i235
  %3517 = add i64 %3516, 4
  store i64 %3517, i64* %PC.i235
  %3518 = inttoptr i64 %3515 to i64*
  %3519 = load i64, i64* %3518
  store i64 %3519, i64* %RAX.i236, align 8
  store %struct.Memory* %loadMem_401829, %struct.Memory** %MEMORY
  %loadMem_40182d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3521 = getelementptr inbounds %struct.GPR, %struct.GPR* %3520, i32 0, i32 33
  %3522 = getelementptr inbounds %struct.Reg, %struct.Reg* %3521, i32 0, i32 0
  %PC.i233 = bitcast %union.anon* %3522 to i64*
  %3523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3524 = getelementptr inbounds %struct.GPR, %struct.GPR* %3523, i32 0, i32 1
  %3525 = getelementptr inbounds %struct.Reg, %struct.Reg* %3524, i32 0, i32 0
  %RAX.i234 = bitcast %union.anon* %3525 to i64*
  %3526 = load i64, i64* %RAX.i234
  %3527 = add i64 %3526, 80
  %3528 = load i64, i64* %PC.i233
  %3529 = add i64 %3528, 4
  store i64 %3529, i64* %PC.i233
  %3530 = inttoptr i64 %3527 to i32*
  %3531 = load i32, i32* %3530
  %3532 = sub i32 %3531, 7
  %3533 = icmp ult i32 %3531, 7
  %3534 = zext i1 %3533 to i8
  %3535 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3534, i8* %3535, align 1
  %3536 = and i32 %3532, 255
  %3537 = call i32 @llvm.ctpop.i32(i32 %3536)
  %3538 = trunc i32 %3537 to i8
  %3539 = and i8 %3538, 1
  %3540 = xor i8 %3539, 1
  %3541 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3540, i8* %3541, align 1
  %3542 = xor i32 %3531, 7
  %3543 = xor i32 %3542, %3532
  %3544 = lshr i32 %3543, 4
  %3545 = trunc i32 %3544 to i8
  %3546 = and i8 %3545, 1
  %3547 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3546, i8* %3547, align 1
  %3548 = icmp eq i32 %3532, 0
  %3549 = zext i1 %3548 to i8
  %3550 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3549, i8* %3550, align 1
  %3551 = lshr i32 %3532, 31
  %3552 = trunc i32 %3551 to i8
  %3553 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3552, i8* %3553, align 1
  %3554 = lshr i32 %3531, 31
  %3555 = xor i32 %3551, %3554
  %3556 = add i32 %3555, %3554
  %3557 = icmp eq i32 %3556, 2
  %3558 = zext i1 %3557 to i8
  %3559 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3558, i8* %3559, align 1
  store %struct.Memory* %loadMem_40182d, %struct.Memory** %MEMORY
  %loadMem_401831 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3561 = getelementptr inbounds %struct.GPR, %struct.GPR* %3560, i32 0, i32 33
  %3562 = getelementptr inbounds %struct.Reg, %struct.Reg* %3561, i32 0, i32 0
  %PC.i232 = bitcast %union.anon* %3562 to i64*
  %3563 = load i64, i64* %PC.i232
  %3564 = add i64 %3563, 37
  %3565 = load i64, i64* %PC.i232
  %3566 = add i64 %3565, 6
  %3567 = load i64, i64* %PC.i232
  %3568 = add i64 %3567, 6
  store i64 %3568, i64* %PC.i232
  %3569 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3570 = load i8, i8* %3569, align 1
  %3571 = icmp ne i8 %3570, 0
  %3572 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3573 = load i8, i8* %3572, align 1
  %3574 = icmp ne i8 %3573, 0
  %3575 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3576 = load i8, i8* %3575, align 1
  %3577 = icmp ne i8 %3576, 0
  %3578 = xor i1 %3574, %3577
  %3579 = or i1 %3571, %3578
  %3580 = zext i1 %3579 to i8
  store i8 %3580, i8* %BRANCH_TAKEN, align 1
  %3581 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3582 = select i1 %3579, i64 %3564, i64 %3566
  store i64 %3582, i64* %3581, align 8
  store %struct.Memory* %loadMem_401831, %struct.Memory** %MEMORY
  %loadBr_401831 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401831 = icmp eq i8 %loadBr_401831, 1
  br i1 %cmpBr_401831, label %block_.L_401856, label %block_401837

block_401837:                                     ; preds = %block_.L_401829
  %loadMem_401837 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3584 = getelementptr inbounds %struct.GPR, %struct.GPR* %3583, i32 0, i32 33
  %3585 = getelementptr inbounds %struct.Reg, %struct.Reg* %3584, i32 0, i32 0
  %PC.i229 = bitcast %union.anon* %3585 to i64*
  %3586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3587 = getelementptr inbounds %struct.GPR, %struct.GPR* %3586, i32 0, i32 1
  %3588 = getelementptr inbounds %struct.Reg, %struct.Reg* %3587, i32 0, i32 0
  %RAX.i230 = bitcast %union.anon* %3588 to i64*
  %3589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3590 = getelementptr inbounds %struct.GPR, %struct.GPR* %3589, i32 0, i32 15
  %3591 = getelementptr inbounds %struct.Reg, %struct.Reg* %3590, i32 0, i32 0
  %RBP.i231 = bitcast %union.anon* %3591 to i64*
  %3592 = load i64, i64* %RBP.i231
  %3593 = sub i64 %3592, 8
  %3594 = load i64, i64* %PC.i229
  %3595 = add i64 %3594, 4
  store i64 %3595, i64* %PC.i229
  %3596 = inttoptr i64 %3593 to i64*
  %3597 = load i64, i64* %3596
  store i64 %3597, i64* %RAX.i230, align 8
  store %struct.Memory* %loadMem_401837, %struct.Memory** %MEMORY
  %loadMem_40183b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3599 = getelementptr inbounds %struct.GPR, %struct.GPR* %3598, i32 0, i32 33
  %3600 = getelementptr inbounds %struct.Reg, %struct.Reg* %3599, i32 0, i32 0
  %PC.i226 = bitcast %union.anon* %3600 to i64*
  %3601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3602 = getelementptr inbounds %struct.GPR, %struct.GPR* %3601, i32 0, i32 1
  %3603 = getelementptr inbounds %struct.Reg, %struct.Reg* %3602, i32 0, i32 0
  %RAX.i227 = bitcast %union.anon* %3603 to i64*
  %3604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3605 = getelementptr inbounds %struct.GPR, %struct.GPR* %3604, i32 0, i32 5
  %3606 = getelementptr inbounds %struct.Reg, %struct.Reg* %3605, i32 0, i32 0
  %RCX.i228 = bitcast %union.anon* %3606 to i64*
  %3607 = load i64, i64* %RAX.i227
  %3608 = add i64 %3607, 80
  %3609 = load i64, i64* %PC.i226
  %3610 = add i64 %3609, 3
  store i64 %3610, i64* %PC.i226
  %3611 = inttoptr i64 %3608 to i32*
  %3612 = load i32, i32* %3611
  %3613 = zext i32 %3612 to i64
  store i64 %3613, i64* %RCX.i228, align 8
  store %struct.Memory* %loadMem_40183b, %struct.Memory** %MEMORY
  %loadMem_40183e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3614 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3615 = getelementptr inbounds %struct.GPR, %struct.GPR* %3614, i32 0, i32 33
  %3616 = getelementptr inbounds %struct.Reg, %struct.Reg* %3615, i32 0, i32 0
  %PC.i224 = bitcast %union.anon* %3616 to i64*
  %3617 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3618 = getelementptr inbounds %struct.GPR, %struct.GPR* %3617, i32 0, i32 5
  %3619 = getelementptr inbounds %struct.Reg, %struct.Reg* %3618, i32 0, i32 0
  %RCX.i225 = bitcast %union.anon* %3619 to i64*
  %3620 = load i64, i64* %RCX.i225
  %3621 = load i64, i64* %PC.i224
  %3622 = add i64 %3621, 3
  store i64 %3622, i64* %PC.i224
  %3623 = trunc i64 %3620 to i32
  %3624 = sub i32 %3623, 8
  %3625 = zext i32 %3624 to i64
  store i64 %3625, i64* %RCX.i225, align 8
  %3626 = icmp ult i32 %3623, 8
  %3627 = zext i1 %3626 to i8
  %3628 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3627, i8* %3628, align 1
  %3629 = and i32 %3624, 255
  %3630 = call i32 @llvm.ctpop.i32(i32 %3629)
  %3631 = trunc i32 %3630 to i8
  %3632 = and i8 %3631, 1
  %3633 = xor i8 %3632, 1
  %3634 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3633, i8* %3634, align 1
  %3635 = xor i64 8, %3620
  %3636 = trunc i64 %3635 to i32
  %3637 = xor i32 %3636, %3624
  %3638 = lshr i32 %3637, 4
  %3639 = trunc i32 %3638 to i8
  %3640 = and i8 %3639, 1
  %3641 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3640, i8* %3641, align 1
  %3642 = icmp eq i32 %3624, 0
  %3643 = zext i1 %3642 to i8
  %3644 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3643, i8* %3644, align 1
  %3645 = lshr i32 %3624, 31
  %3646 = trunc i32 %3645 to i8
  %3647 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3646, i8* %3647, align 1
  %3648 = lshr i32 %3623, 31
  %3649 = xor i32 %3645, %3648
  %3650 = add i32 %3649, %3648
  %3651 = icmp eq i32 %3650, 2
  %3652 = zext i1 %3651 to i8
  %3653 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3652, i8* %3653, align 1
  store %struct.Memory* %loadMem_40183e, %struct.Memory** %MEMORY
  %loadMem_401841 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3654 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3655 = getelementptr inbounds %struct.GPR, %struct.GPR* %3654, i32 0, i32 33
  %3656 = getelementptr inbounds %struct.Reg, %struct.Reg* %3655, i32 0, i32 0
  %PC.i221 = bitcast %union.anon* %3656 to i64*
  %3657 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3658 = getelementptr inbounds %struct.GPR, %struct.GPR* %3657, i32 0, i32 5
  %3659 = getelementptr inbounds %struct.Reg, %struct.Reg* %3658, i32 0, i32 0
  %ECX.i222 = bitcast %union.anon* %3659 to i32*
  %3660 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3661 = getelementptr inbounds %struct.GPR, %struct.GPR* %3660, i32 0, i32 1
  %3662 = getelementptr inbounds %struct.Reg, %struct.Reg* %3661, i32 0, i32 0
  %RAX.i223 = bitcast %union.anon* %3662 to i64*
  %3663 = load i64, i64* %RAX.i223
  %3664 = add i64 %3663, 80
  %3665 = load i32, i32* %ECX.i222
  %3666 = zext i32 %3665 to i64
  %3667 = load i64, i64* %PC.i221
  %3668 = add i64 %3667, 3
  store i64 %3668, i64* %PC.i221
  %3669 = inttoptr i64 %3664 to i32*
  store i32 %3665, i32* %3669
  store %struct.Memory* %loadMem_401841, %struct.Memory** %MEMORY
  %loadMem_401844 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3671 = getelementptr inbounds %struct.GPR, %struct.GPR* %3670, i32 0, i32 33
  %3672 = getelementptr inbounds %struct.Reg, %struct.Reg* %3671, i32 0, i32 0
  %PC.i218 = bitcast %union.anon* %3672 to i64*
  %3673 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3674 = getelementptr inbounds %struct.GPR, %struct.GPR* %3673, i32 0, i32 1
  %3675 = getelementptr inbounds %struct.Reg, %struct.Reg* %3674, i32 0, i32 0
  %RAX.i219 = bitcast %union.anon* %3675 to i64*
  %3676 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3677 = getelementptr inbounds %struct.GPR, %struct.GPR* %3676, i32 0, i32 15
  %3678 = getelementptr inbounds %struct.Reg, %struct.Reg* %3677, i32 0, i32 0
  %RBP.i220 = bitcast %union.anon* %3678 to i64*
  %3679 = load i64, i64* %RBP.i220
  %3680 = sub i64 %3679, 8
  %3681 = load i64, i64* %PC.i218
  %3682 = add i64 %3681, 4
  store i64 %3682, i64* %PC.i218
  %3683 = inttoptr i64 %3680 to i64*
  %3684 = load i64, i64* %3683
  store i64 %3684, i64* %RAX.i219, align 8
  store %struct.Memory* %loadMem_401844, %struct.Memory** %MEMORY
  %loadMem_401848 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3686 = getelementptr inbounds %struct.GPR, %struct.GPR* %3685, i32 0, i32 33
  %3687 = getelementptr inbounds %struct.Reg, %struct.Reg* %3686, i32 0, i32 0
  %PC.i215 = bitcast %union.anon* %3687 to i64*
  %3688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3689 = getelementptr inbounds %struct.GPR, %struct.GPR* %3688, i32 0, i32 1
  %3690 = getelementptr inbounds %struct.Reg, %struct.Reg* %3689, i32 0, i32 0
  %RAX.i216 = bitcast %union.anon* %3690 to i64*
  %3691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3692 = getelementptr inbounds %struct.GPR, %struct.GPR* %3691, i32 0, i32 5
  %3693 = getelementptr inbounds %struct.Reg, %struct.Reg* %3692, i32 0, i32 0
  %RCX.i217 = bitcast %union.anon* %3693 to i64*
  %3694 = load i64, i64* %RAX.i216
  %3695 = add i64 %3694, 88
  %3696 = load i64, i64* %PC.i215
  %3697 = add i64 %3696, 3
  store i64 %3697, i64* %PC.i215
  %3698 = inttoptr i64 %3695 to i32*
  %3699 = load i32, i32* %3698
  %3700 = zext i32 %3699 to i64
  store i64 %3700, i64* %RCX.i217, align 8
  store %struct.Memory* %loadMem_401848, %struct.Memory** %MEMORY
  %loadMem_40184b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3702 = getelementptr inbounds %struct.GPR, %struct.GPR* %3701, i32 0, i32 33
  %3703 = getelementptr inbounds %struct.Reg, %struct.Reg* %3702, i32 0, i32 0
  %PC.i213 = bitcast %union.anon* %3703 to i64*
  %3704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3705 = getelementptr inbounds %struct.GPR, %struct.GPR* %3704, i32 0, i32 5
  %3706 = getelementptr inbounds %struct.Reg, %struct.Reg* %3705, i32 0, i32 0
  %RCX.i214 = bitcast %union.anon* %3706 to i64*
  %3707 = load i64, i64* %RCX.i214
  %3708 = load i64, i64* %PC.i213
  %3709 = add i64 %3708, 3
  store i64 %3709, i64* %PC.i213
  %3710 = trunc i64 %3707 to i32
  %3711 = add i32 1, %3710
  %3712 = zext i32 %3711 to i64
  store i64 %3712, i64* %RCX.i214, align 8
  %3713 = icmp ult i32 %3711, %3710
  %3714 = icmp ult i32 %3711, 1
  %3715 = or i1 %3713, %3714
  %3716 = zext i1 %3715 to i8
  %3717 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3716, i8* %3717, align 1
  %3718 = and i32 %3711, 255
  %3719 = call i32 @llvm.ctpop.i32(i32 %3718)
  %3720 = trunc i32 %3719 to i8
  %3721 = and i8 %3720, 1
  %3722 = xor i8 %3721, 1
  %3723 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3722, i8* %3723, align 1
  %3724 = xor i64 1, %3707
  %3725 = trunc i64 %3724 to i32
  %3726 = xor i32 %3725, %3711
  %3727 = lshr i32 %3726, 4
  %3728 = trunc i32 %3727 to i8
  %3729 = and i8 %3728, 1
  %3730 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3729, i8* %3730, align 1
  %3731 = icmp eq i32 %3711, 0
  %3732 = zext i1 %3731 to i8
  %3733 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3732, i8* %3733, align 1
  %3734 = lshr i32 %3711, 31
  %3735 = trunc i32 %3734 to i8
  %3736 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3735, i8* %3736, align 1
  %3737 = lshr i32 %3710, 31
  %3738 = xor i32 %3734, %3737
  %3739 = add i32 %3738, %3734
  %3740 = icmp eq i32 %3739, 2
  %3741 = zext i1 %3740 to i8
  %3742 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3741, i8* %3742, align 1
  store %struct.Memory* %loadMem_40184b, %struct.Memory** %MEMORY
  %loadMem_40184e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3743 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3744 = getelementptr inbounds %struct.GPR, %struct.GPR* %3743, i32 0, i32 33
  %3745 = getelementptr inbounds %struct.Reg, %struct.Reg* %3744, i32 0, i32 0
  %PC.i210 = bitcast %union.anon* %3745 to i64*
  %3746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3747 = getelementptr inbounds %struct.GPR, %struct.GPR* %3746, i32 0, i32 5
  %3748 = getelementptr inbounds %struct.Reg, %struct.Reg* %3747, i32 0, i32 0
  %ECX.i211 = bitcast %union.anon* %3748 to i32*
  %3749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3750 = getelementptr inbounds %struct.GPR, %struct.GPR* %3749, i32 0, i32 1
  %3751 = getelementptr inbounds %struct.Reg, %struct.Reg* %3750, i32 0, i32 0
  %RAX.i212 = bitcast %union.anon* %3751 to i64*
  %3752 = load i64, i64* %RAX.i212
  %3753 = add i64 %3752, 88
  %3754 = load i32, i32* %ECX.i211
  %3755 = zext i32 %3754 to i64
  %3756 = load i64, i64* %PC.i210
  %3757 = add i64 %3756, 3
  store i64 %3757, i64* %PC.i210
  %3758 = inttoptr i64 %3753 to i32*
  store i32 %3754, i32* %3758
  store %struct.Memory* %loadMem_40184e, %struct.Memory** %MEMORY
  %loadMem_401851 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3760 = getelementptr inbounds %struct.GPR, %struct.GPR* %3759, i32 0, i32 33
  %3761 = getelementptr inbounds %struct.Reg, %struct.Reg* %3760, i32 0, i32 0
  %PC.i209 = bitcast %union.anon* %3761 to i64*
  %3762 = load i64, i64* %PC.i209
  %3763 = add i64 %3762, -40
  %3764 = load i64, i64* %PC.i209
  %3765 = add i64 %3764, 5
  store i64 %3765, i64* %PC.i209
  %3766 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3763, i64* %3766, align 8
  store %struct.Memory* %loadMem_401851, %struct.Memory** %MEMORY
  br label %block_.L_401829

block_.L_401856:                                  ; preds = %block_.L_401829
  %loadMem_401856 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3767 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3768 = getelementptr inbounds %struct.GPR, %struct.GPR* %3767, i32 0, i32 33
  %3769 = getelementptr inbounds %struct.Reg, %struct.Reg* %3768, i32 0, i32 0
  %PC.i208 = bitcast %union.anon* %3769 to i64*
  %3770 = load i64, i64* %PC.i208
  %3771 = add i64 %3770, 5
  %3772 = load i64, i64* %PC.i208
  %3773 = add i64 %3772, 5
  store i64 %3773, i64* %PC.i208
  %3774 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3771, i64* %3774, align 8
  store %struct.Memory* %loadMem_401856, %struct.Memory** %MEMORY
  br label %block_.L_40185b

block_.L_40185b:                                  ; preds = %block_.L_401856, %block_.L_4017c6
  %loadMem_40185b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3775 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3776 = getelementptr inbounds %struct.GPR, %struct.GPR* %3775, i32 0, i32 33
  %3777 = getelementptr inbounds %struct.Reg, %struct.Reg* %3776, i32 0, i32 0
  %PC.i206 = bitcast %union.anon* %3777 to i64*
  %3778 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3779 = getelementptr inbounds %struct.GPR, %struct.GPR* %3778, i32 0, i32 1
  %3780 = getelementptr inbounds %struct.Reg, %struct.Reg* %3779, i32 0, i32 0
  %RAX.i207 = bitcast %union.anon* %3780 to i64*
  %3781 = load i64, i64* %PC.i206
  %3782 = add i64 %3781, 5
  store i64 %3782, i64* %PC.i206
  store i64 8, i64* %RAX.i207, align 8
  store %struct.Memory* %loadMem_40185b, %struct.Memory** %MEMORY
  %loadMem_401860 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3783 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3784 = getelementptr inbounds %struct.GPR, %struct.GPR* %3783, i32 0, i32 33
  %3785 = getelementptr inbounds %struct.Reg, %struct.Reg* %3784, i32 0, i32 0
  %PC.i203 = bitcast %union.anon* %3785 to i64*
  %3786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3787 = getelementptr inbounds %struct.GPR, %struct.GPR* %3786, i32 0, i32 5
  %3788 = getelementptr inbounds %struct.Reg, %struct.Reg* %3787, i32 0, i32 0
  %RCX.i204 = bitcast %union.anon* %3788 to i64*
  %3789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3790 = getelementptr inbounds %struct.GPR, %struct.GPR* %3789, i32 0, i32 15
  %3791 = getelementptr inbounds %struct.Reg, %struct.Reg* %3790, i32 0, i32 0
  %RBP.i205 = bitcast %union.anon* %3791 to i64*
  %3792 = load i64, i64* %RBP.i205
  %3793 = sub i64 %3792, 8
  %3794 = load i64, i64* %PC.i203
  %3795 = add i64 %3794, 4
  store i64 %3795, i64* %PC.i203
  %3796 = inttoptr i64 %3793 to i64*
  %3797 = load i64, i64* %3796
  store i64 %3797, i64* %RCX.i204, align 8
  store %struct.Memory* %loadMem_401860, %struct.Memory** %MEMORY
  %loadMem_401864 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3798 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3799 = getelementptr inbounds %struct.GPR, %struct.GPR* %3798, i32 0, i32 33
  %3800 = getelementptr inbounds %struct.Reg, %struct.Reg* %3799, i32 0, i32 0
  %PC.i200 = bitcast %union.anon* %3800 to i64*
  %3801 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3802 = getelementptr inbounds %struct.GPR, %struct.GPR* %3801, i32 0, i32 1
  %3803 = getelementptr inbounds %struct.Reg, %struct.Reg* %3802, i32 0, i32 0
  %RAX.i201 = bitcast %union.anon* %3803 to i64*
  %3804 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3805 = getelementptr inbounds %struct.GPR, %struct.GPR* %3804, i32 0, i32 5
  %3806 = getelementptr inbounds %struct.Reg, %struct.Reg* %3805, i32 0, i32 0
  %RCX.i202 = bitcast %union.anon* %3806 to i64*
  %3807 = load i64, i64* %RAX.i201
  %3808 = load i64, i64* %RCX.i202
  %3809 = add i64 %3808, 12
  %3810 = load i64, i64* %PC.i200
  %3811 = add i64 %3810, 3
  store i64 %3811, i64* %PC.i200
  %3812 = trunc i64 %3807 to i32
  %3813 = inttoptr i64 %3809 to i32*
  %3814 = load i32, i32* %3813
  %3815 = sub i32 %3812, %3814
  %3816 = zext i32 %3815 to i64
  store i64 %3816, i64* %RAX.i201, align 8
  %3817 = icmp ult i32 %3812, %3814
  %3818 = zext i1 %3817 to i8
  %3819 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3818, i8* %3819, align 1
  %3820 = and i32 %3815, 255
  %3821 = call i32 @llvm.ctpop.i32(i32 %3820)
  %3822 = trunc i32 %3821 to i8
  %3823 = and i8 %3822, 1
  %3824 = xor i8 %3823, 1
  %3825 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3824, i8* %3825, align 1
  %3826 = xor i32 %3814, %3812
  %3827 = xor i32 %3826, %3815
  %3828 = lshr i32 %3827, 4
  %3829 = trunc i32 %3828 to i8
  %3830 = and i8 %3829, 1
  %3831 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3830, i8* %3831, align 1
  %3832 = icmp eq i32 %3815, 0
  %3833 = zext i1 %3832 to i8
  %3834 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3833, i8* %3834, align 1
  %3835 = lshr i32 %3815, 31
  %3836 = trunc i32 %3835 to i8
  %3837 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3836, i8* %3837, align 1
  %3838 = lshr i32 %3812, 31
  %3839 = lshr i32 %3814, 31
  %3840 = xor i32 %3839, %3838
  %3841 = xor i32 %3835, %3838
  %3842 = add i32 %3841, %3840
  %3843 = icmp eq i32 %3842, 2
  %3844 = zext i1 %3843 to i8
  %3845 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3844, i8* %3845, align 1
  store %struct.Memory* %loadMem_401864, %struct.Memory** %MEMORY
  %loadMem_401867 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3847 = getelementptr inbounds %struct.GPR, %struct.GPR* %3846, i32 0, i32 33
  %3848 = getelementptr inbounds %struct.Reg, %struct.Reg* %3847, i32 0, i32 0
  %PC.i198 = bitcast %union.anon* %3848 to i64*
  %3849 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3850 = getelementptr inbounds %struct.GPR, %struct.GPR* %3849, i32 0, i32 5
  %3851 = getelementptr inbounds %struct.Reg, %struct.Reg* %3850, i32 0, i32 0
  %RCX.i199 = bitcast %union.anon* %3851 to i64*
  %3852 = load i64, i64* %PC.i198
  %3853 = add i64 %3852, 8
  store i64 %3853, i64* %PC.i198
  %3854 = load i64, i64* bitcast (%G_0x6cb908_type* @G_0x6cb908 to i64*)
  store i64 %3854, i64* %RCX.i199, align 8
  store %struct.Memory* %loadMem_401867, %struct.Memory** %MEMORY
  %loadMem_40186f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3856 = getelementptr inbounds %struct.GPR, %struct.GPR* %3855, i32 0, i32 33
  %3857 = getelementptr inbounds %struct.Reg, %struct.Reg* %3856, i32 0, i32 0
  %PC.i196 = bitcast %union.anon* %3857 to i64*
  %3858 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3859 = getelementptr inbounds %struct.GPR, %struct.GPR* %3858, i32 0, i32 7
  %3860 = getelementptr inbounds %struct.Reg, %struct.Reg* %3859, i32 0, i32 0
  %RDX.i197 = bitcast %union.anon* %3860 to i64*
  %3861 = load i64, i64* %PC.i196
  %3862 = add i64 %3861, 8
  store i64 %3862, i64* %PC.i196
  %3863 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %3863, i64* %RDX.i197, align 8
  store %struct.Memory* %loadMem_40186f, %struct.Memory** %MEMORY
  %loadMem_401877 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3864 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3865 = getelementptr inbounds %struct.GPR, %struct.GPR* %3864, i32 0, i32 33
  %3866 = getelementptr inbounds %struct.Reg, %struct.Reg* %3865, i32 0, i32 0
  %PC.i194 = bitcast %union.anon* %3866 to i64*
  %3867 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3868 = getelementptr inbounds %struct.GPR, %struct.GPR* %3867, i32 0, i32 7
  %3869 = getelementptr inbounds %struct.Reg, %struct.Reg* %3868, i32 0, i32 0
  %RDX.i195 = bitcast %union.anon* %3869 to i64*
  %3870 = load i64, i64* %RDX.i195
  %3871 = add i64 %3870, 24
  %3872 = load i64, i64* %PC.i194
  %3873 = add i64 %3872, 4
  store i64 %3873, i64* %PC.i194
  %3874 = inttoptr i64 %3871 to i32*
  %3875 = load i32, i32* %3874
  %3876 = sext i32 %3875 to i64
  store i64 %3876, i64* %RDX.i195, align 8
  store %struct.Memory* %loadMem_401877, %struct.Memory** %MEMORY
  %loadMem_40187b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3878 = getelementptr inbounds %struct.GPR, %struct.GPR* %3877, i32 0, i32 33
  %3879 = getelementptr inbounds %struct.Reg, %struct.Reg* %3878, i32 0, i32 0
  %PC.i190 = bitcast %union.anon* %3879 to i64*
  %3880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3881 = getelementptr inbounds %struct.GPR, %struct.GPR* %3880, i32 0, i32 1
  %3882 = getelementptr inbounds %struct.Reg, %struct.Reg* %3881, i32 0, i32 0
  %RAX.i191 = bitcast %union.anon* %3882 to i64*
  %3883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3884 = getelementptr inbounds %struct.GPR, %struct.GPR* %3883, i32 0, i32 5
  %3885 = getelementptr inbounds %struct.Reg, %struct.Reg* %3884, i32 0, i32 0
  %RCX.i192 = bitcast %union.anon* %3885 to i64*
  %3886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3887 = getelementptr inbounds %struct.GPR, %struct.GPR* %3886, i32 0, i32 7
  %3888 = getelementptr inbounds %struct.Reg, %struct.Reg* %3887, i32 0, i32 0
  %RDX.i193 = bitcast %union.anon* %3888 to i64*
  %3889 = load i64, i64* %RAX.i191
  %3890 = load i64, i64* %RCX.i192
  %3891 = load i64, i64* %RDX.i193
  %3892 = mul i64 %3891, 4
  %3893 = add i64 %3890, 1328
  %3894 = add i64 %3893, %3892
  %3895 = load i64, i64* %PC.i190
  %3896 = add i64 %3895, 7
  store i64 %3896, i64* %PC.i190
  %3897 = trunc i64 %3889 to i32
  %3898 = inttoptr i64 %3894 to i32*
  %3899 = load i32, i32* %3898
  %3900 = add i32 %3899, %3897
  %3901 = zext i32 %3900 to i64
  store i64 %3901, i64* %RAX.i191, align 8
  %3902 = icmp ult i32 %3900, %3897
  %3903 = icmp ult i32 %3900, %3899
  %3904 = or i1 %3902, %3903
  %3905 = zext i1 %3904 to i8
  %3906 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3905, i8* %3906, align 1
  %3907 = and i32 %3900, 255
  %3908 = call i32 @llvm.ctpop.i32(i32 %3907)
  %3909 = trunc i32 %3908 to i8
  %3910 = and i8 %3909, 1
  %3911 = xor i8 %3910, 1
  %3912 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3911, i8* %3912, align 1
  %3913 = xor i32 %3899, %3897
  %3914 = xor i32 %3913, %3900
  %3915 = lshr i32 %3914, 4
  %3916 = trunc i32 %3915 to i8
  %3917 = and i8 %3916, 1
  %3918 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3917, i8* %3918, align 1
  %3919 = icmp eq i32 %3900, 0
  %3920 = zext i1 %3919 to i8
  %3921 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3920, i8* %3921, align 1
  %3922 = lshr i32 %3900, 31
  %3923 = trunc i32 %3922 to i8
  %3924 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3923, i8* %3924, align 1
  %3925 = lshr i32 %3897, 31
  %3926 = lshr i32 %3899, 31
  %3927 = xor i32 %3922, %3925
  %3928 = xor i32 %3922, %3926
  %3929 = add i32 %3927, %3928
  %3930 = icmp eq i32 %3929, 2
  %3931 = zext i1 %3930 to i8
  %3932 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3931, i8* %3932, align 1
  store %struct.Memory* %loadMem_40187b, %struct.Memory** %MEMORY
  %loadMem_401882 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3933 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3934 = getelementptr inbounds %struct.GPR, %struct.GPR* %3933, i32 0, i32 33
  %3935 = getelementptr inbounds %struct.Reg, %struct.Reg* %3934, i32 0, i32 0
  %PC.i187 = bitcast %union.anon* %3935 to i64*
  %3936 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3937 = getelementptr inbounds %struct.GPR, %struct.GPR* %3936, i32 0, i32 1
  %3938 = getelementptr inbounds %struct.Reg, %struct.Reg* %3937, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %3938 to i32*
  %3939 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3940 = getelementptr inbounds %struct.GPR, %struct.GPR* %3939, i32 0, i32 5
  %3941 = getelementptr inbounds %struct.Reg, %struct.Reg* %3940, i32 0, i32 0
  %RCX.i188 = bitcast %union.anon* %3941 to i64*
  %3942 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3943 = getelementptr inbounds %struct.GPR, %struct.GPR* %3942, i32 0, i32 7
  %3944 = getelementptr inbounds %struct.Reg, %struct.Reg* %3943, i32 0, i32 0
  %RDX.i189 = bitcast %union.anon* %3944 to i64*
  %3945 = load i64, i64* %RCX.i188
  %3946 = load i64, i64* %RDX.i189
  %3947 = mul i64 %3946, 4
  %3948 = add i64 %3945, 1328
  %3949 = add i64 %3948, %3947
  %3950 = load i32, i32* %EAX.i
  %3951 = zext i32 %3950 to i64
  %3952 = load i64, i64* %PC.i187
  %3953 = add i64 %3952, 7
  store i64 %3953, i64* %PC.i187
  %3954 = inttoptr i64 %3949 to i32*
  store i32 %3950, i32* %3954
  store %struct.Memory* %loadMem_401882, %struct.Memory** %MEMORY
  br label %block_.L_401889

block_.L_401889:                                  ; preds = %block_.L_401929, %block_.L_40185b
  %loadMem_401889 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3955 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3956 = getelementptr inbounds %struct.GPR, %struct.GPR* %3955, i32 0, i32 33
  %3957 = getelementptr inbounds %struct.Reg, %struct.Reg* %3956, i32 0, i32 0
  %PC.i184 = bitcast %union.anon* %3957 to i64*
  %3958 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3959 = getelementptr inbounds %struct.GPR, %struct.GPR* %3958, i32 0, i32 1
  %3960 = getelementptr inbounds %struct.Reg, %struct.Reg* %3959, i32 0, i32 0
  %RAX.i185 = bitcast %union.anon* %3960 to i64*
  %3961 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3962 = getelementptr inbounds %struct.GPR, %struct.GPR* %3961, i32 0, i32 15
  %3963 = getelementptr inbounds %struct.Reg, %struct.Reg* %3962, i32 0, i32 0
  %RBP.i186 = bitcast %union.anon* %3963 to i64*
  %3964 = load i64, i64* %RBP.i186
  %3965 = sub i64 %3964, 8
  %3966 = load i64, i64* %PC.i184
  %3967 = add i64 %3966, 4
  store i64 %3967, i64* %PC.i184
  %3968 = inttoptr i64 %3965 to i64*
  %3969 = load i64, i64* %3968
  store i64 %3969, i64* %RAX.i185, align 8
  store %struct.Memory* %loadMem_401889, %struct.Memory** %MEMORY
  %loadMem_40188d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3971 = getelementptr inbounds %struct.GPR, %struct.GPR* %3970, i32 0, i32 33
  %3972 = getelementptr inbounds %struct.Reg, %struct.Reg* %3971, i32 0, i32 0
  %PC.i182 = bitcast %union.anon* %3972 to i64*
  %3973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3974 = getelementptr inbounds %struct.GPR, %struct.GPR* %3973, i32 0, i32 1
  %3975 = getelementptr inbounds %struct.Reg, %struct.Reg* %3974, i32 0, i32 0
  %RAX.i183 = bitcast %union.anon* %3975 to i64*
  %3976 = load i64, i64* %RAX.i183
  %3977 = add i64 %3976, 12
  %3978 = load i64, i64* %PC.i182
  %3979 = add i64 %3978, 4
  store i64 %3979, i64* %PC.i182
  %3980 = inttoptr i64 %3977 to i32*
  %3981 = load i32, i32* %3980
  %3982 = sub i32 %3981, 8
  %3983 = icmp ult i32 %3981, 8
  %3984 = zext i1 %3983 to i8
  %3985 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3984, i8* %3985, align 1
  %3986 = and i32 %3982, 255
  %3987 = call i32 @llvm.ctpop.i32(i32 %3986)
  %3988 = trunc i32 %3987 to i8
  %3989 = and i8 %3988, 1
  %3990 = xor i8 %3989, 1
  %3991 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3990, i8* %3991, align 1
  %3992 = xor i32 %3981, 8
  %3993 = xor i32 %3992, %3982
  %3994 = lshr i32 %3993, 4
  %3995 = trunc i32 %3994 to i8
  %3996 = and i8 %3995, 1
  %3997 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3996, i8* %3997, align 1
  %3998 = icmp eq i32 %3982, 0
  %3999 = zext i1 %3998 to i8
  %4000 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3999, i8* %4000, align 1
  %4001 = lshr i32 %3982, 31
  %4002 = trunc i32 %4001 to i8
  %4003 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4002, i8* %4003, align 1
  %4004 = lshr i32 %3981, 31
  %4005 = xor i32 %4001, %4004
  %4006 = add i32 %4005, %4004
  %4007 = icmp eq i32 %4006, 2
  %4008 = zext i1 %4007 to i8
  %4009 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4008, i8* %4009, align 1
  store %struct.Memory* %loadMem_40188d, %struct.Memory** %MEMORY
  %loadMem_401891 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4011 = getelementptr inbounds %struct.GPR, %struct.GPR* %4010, i32 0, i32 33
  %4012 = getelementptr inbounds %struct.Reg, %struct.Reg* %4011, i32 0, i32 0
  %PC.i181 = bitcast %union.anon* %4012 to i64*
  %4013 = load i64, i64* %PC.i181
  %4014 = add i64 %4013, 157
  %4015 = load i64, i64* %PC.i181
  %4016 = add i64 %4015, 6
  %4017 = load i64, i64* %PC.i181
  %4018 = add i64 %4017, 6
  store i64 %4018, i64* %PC.i181
  %4019 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4020 = load i8, i8* %4019, align 1
  store i8 %4020, i8* %BRANCH_TAKEN, align 1
  %4021 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4022 = icmp ne i8 %4020, 0
  %4023 = select i1 %4022, i64 %4014, i64 %4016
  store i64 %4023, i64* %4021, align 8
  store %struct.Memory* %loadMem_401891, %struct.Memory** %MEMORY
  %loadBr_401891 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401891 = icmp eq i8 %loadBr_401891, 1
  br i1 %cmpBr_401891, label %block_.L_40192e, label %block_401897

block_401897:                                     ; preds = %block_.L_401889
  %loadMem_401897 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4024 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4025 = getelementptr inbounds %struct.GPR, %struct.GPR* %4024, i32 0, i32 33
  %4026 = getelementptr inbounds %struct.Reg, %struct.Reg* %4025, i32 0, i32 0
  %PC.i178 = bitcast %union.anon* %4026 to i64*
  %4027 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4028 = getelementptr inbounds %struct.GPR, %struct.GPR* %4027, i32 0, i32 1
  %4029 = getelementptr inbounds %struct.Reg, %struct.Reg* %4028, i32 0, i32 0
  %RAX.i179 = bitcast %union.anon* %4029 to i64*
  %4030 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4031 = getelementptr inbounds %struct.GPR, %struct.GPR* %4030, i32 0, i32 15
  %4032 = getelementptr inbounds %struct.Reg, %struct.Reg* %4031, i32 0, i32 0
  %RBP.i180 = bitcast %union.anon* %4032 to i64*
  %4033 = load i64, i64* %RBP.i180
  %4034 = sub i64 %4033, 8
  %4035 = load i64, i64* %PC.i178
  %4036 = add i64 %4035, 4
  store i64 %4036, i64* %PC.i178
  %4037 = inttoptr i64 %4034 to i64*
  %4038 = load i64, i64* %4037
  store i64 %4038, i64* %RAX.i179, align 8
  store %struct.Memory* %loadMem_401897, %struct.Memory** %MEMORY
  %loadMem_40189b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4039 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4040 = getelementptr inbounds %struct.GPR, %struct.GPR* %4039, i32 0, i32 33
  %4041 = getelementptr inbounds %struct.Reg, %struct.Reg* %4040, i32 0, i32 0
  %PC.i175 = bitcast %union.anon* %4041 to i64*
  %4042 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4043 = getelementptr inbounds %struct.GPR, %struct.GPR* %4042, i32 0, i32 1
  %4044 = getelementptr inbounds %struct.Reg, %struct.Reg* %4043, i32 0, i32 0
  %RAX.i176 = bitcast %union.anon* %4044 to i64*
  %4045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4046 = getelementptr inbounds %struct.GPR, %struct.GPR* %4045, i32 0, i32 5
  %4047 = getelementptr inbounds %struct.Reg, %struct.Reg* %4046, i32 0, i32 0
  %RCX.i177 = bitcast %union.anon* %4047 to i64*
  %4048 = load i64, i64* %RAX.i176
  %4049 = add i64 %4048, 8
  %4050 = load i64, i64* %PC.i175
  %4051 = add i64 %4050, 3
  store i64 %4051, i64* %PC.i175
  %4052 = inttoptr i64 %4049 to i32*
  %4053 = load i32, i32* %4052
  %4054 = zext i32 %4053 to i64
  store i64 %4054, i64* %RCX.i177, align 8
  store %struct.Memory* %loadMem_40189b, %struct.Memory** %MEMORY
  %loadMem_40189e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4055 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4056 = getelementptr inbounds %struct.GPR, %struct.GPR* %4055, i32 0, i32 33
  %4057 = getelementptr inbounds %struct.Reg, %struct.Reg* %4056, i32 0, i32 0
  %PC.i173 = bitcast %union.anon* %4057 to i64*
  %4058 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4059 = getelementptr inbounds %struct.GPR, %struct.GPR* %4058, i32 0, i32 5
  %4060 = getelementptr inbounds %struct.Reg, %struct.Reg* %4059, i32 0, i32 0
  %RCX.i174 = bitcast %union.anon* %4060 to i64*
  %4061 = load i64, i64* %RCX.i174
  %4062 = load i64, i64* %PC.i173
  %4063 = add i64 %4062, 2
  store i64 %4063, i64* %PC.i173
  %4064 = trunc i64 %4061 to i32
  %4065 = shl i32 %4064, 1
  %4066 = icmp slt i32 %4064, 0
  %4067 = icmp slt i32 %4065, 0
  %4068 = xor i1 %4066, %4067
  %4069 = zext i32 %4065 to i64
  store i64 %4069, i64* %RCX.i174, align 8
  %4070 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %4071 = zext i1 %4066 to i8
  store i8 %4071, i8* %4070, align 1
  %4072 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %4073 = and i32 %4065, 254
  %4074 = call i32 @llvm.ctpop.i32(i32 %4073)
  %4075 = trunc i32 %4074 to i8
  %4076 = and i8 %4075, 1
  %4077 = xor i8 %4076, 1
  store i8 %4077, i8* %4072, align 1
  %4078 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4078, align 1
  %4079 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4080 = icmp eq i32 %4065, 0
  %4081 = zext i1 %4080 to i8
  store i8 %4081, i8* %4079, align 1
  %4082 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4083 = lshr i32 %4065, 31
  %4084 = trunc i32 %4083 to i8
  store i8 %4084, i8* %4082, align 1
  %4085 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4086 = zext i1 %4068 to i8
  store i8 %4086, i8* %4085, align 1
  store %struct.Memory* %loadMem_40189e, %struct.Memory** %MEMORY
  %loadMem_4018a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4087 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4088 = getelementptr inbounds %struct.GPR, %struct.GPR* %4087, i32 0, i32 33
  %4089 = getelementptr inbounds %struct.Reg, %struct.Reg* %4088, i32 0, i32 0
  %PC.i170 = bitcast %union.anon* %4089 to i64*
  %4090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4091 = getelementptr inbounds %struct.GPR, %struct.GPR* %4090, i32 0, i32 5
  %4092 = getelementptr inbounds %struct.Reg, %struct.Reg* %4091, i32 0, i32 0
  %ECX.i171 = bitcast %union.anon* %4092 to i32*
  %4093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4094 = getelementptr inbounds %struct.GPR, %struct.GPR* %4093, i32 0, i32 1
  %4095 = getelementptr inbounds %struct.Reg, %struct.Reg* %4094, i32 0, i32 0
  %RAX.i172 = bitcast %union.anon* %4095 to i64*
  %4096 = load i64, i64* %RAX.i172
  %4097 = add i64 %4096, 8
  %4098 = load i32, i32* %ECX.i171
  %4099 = zext i32 %4098 to i64
  %4100 = load i64, i64* %PC.i170
  %4101 = add i64 %4100, 3
  store i64 %4101, i64* %PC.i170
  %4102 = inttoptr i64 %4097 to i32*
  store i32 %4098, i32* %4102
  store %struct.Memory* %loadMem_4018a1, %struct.Memory** %MEMORY
  %loadMem_4018a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4104 = getelementptr inbounds %struct.GPR, %struct.GPR* %4103, i32 0, i32 33
  %4105 = getelementptr inbounds %struct.Reg, %struct.Reg* %4104, i32 0, i32 0
  %PC.i167 = bitcast %union.anon* %4105 to i64*
  %4106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4107 = getelementptr inbounds %struct.GPR, %struct.GPR* %4106, i32 0, i32 1
  %4108 = getelementptr inbounds %struct.Reg, %struct.Reg* %4107, i32 0, i32 0
  %RAX.i168 = bitcast %union.anon* %4108 to i64*
  %4109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4110 = getelementptr inbounds %struct.GPR, %struct.GPR* %4109, i32 0, i32 15
  %4111 = getelementptr inbounds %struct.Reg, %struct.Reg* %4110, i32 0, i32 0
  %RBP.i169 = bitcast %union.anon* %4111 to i64*
  %4112 = load i64, i64* %RBP.i169
  %4113 = sub i64 %4112, 8
  %4114 = load i64, i64* %PC.i167
  %4115 = add i64 %4114, 4
  store i64 %4115, i64* %PC.i167
  %4116 = inttoptr i64 %4113 to i64*
  %4117 = load i64, i64* %4116
  store i64 %4117, i64* %RAX.i168, align 8
  store %struct.Memory* %loadMem_4018a4, %struct.Memory** %MEMORY
  %loadMem_4018a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4119 = getelementptr inbounds %struct.GPR, %struct.GPR* %4118, i32 0, i32 33
  %4120 = getelementptr inbounds %struct.Reg, %struct.Reg* %4119, i32 0, i32 0
  %PC.i164 = bitcast %union.anon* %4120 to i64*
  %4121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4122 = getelementptr inbounds %struct.GPR, %struct.GPR* %4121, i32 0, i32 1
  %4123 = getelementptr inbounds %struct.Reg, %struct.Reg* %4122, i32 0, i32 0
  %RAX.i165 = bitcast %union.anon* %4123 to i64*
  %4124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4125 = getelementptr inbounds %struct.GPR, %struct.GPR* %4124, i32 0, i32 5
  %4126 = getelementptr inbounds %struct.Reg, %struct.Reg* %4125, i32 0, i32 0
  %RCX.i166 = bitcast %union.anon* %4126 to i64*
  %4127 = load i64, i64* %RAX.i165
  %4128 = add i64 %4127, 8
  %4129 = load i64, i64* %PC.i164
  %4130 = add i64 %4129, 3
  store i64 %4130, i64* %PC.i164
  %4131 = inttoptr i64 %4128 to i32*
  %4132 = load i32, i32* %4131
  %4133 = zext i32 %4132 to i64
  store i64 %4133, i64* %RCX.i166, align 8
  store %struct.Memory* %loadMem_4018a8, %struct.Memory** %MEMORY
  %loadMem_4018ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %4134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4135 = getelementptr inbounds %struct.GPR, %struct.GPR* %4134, i32 0, i32 33
  %4136 = getelementptr inbounds %struct.Reg, %struct.Reg* %4135, i32 0, i32 0
  %PC.i161 = bitcast %union.anon* %4136 to i64*
  %4137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4138 = getelementptr inbounds %struct.GPR, %struct.GPR* %4137, i32 0, i32 5
  %4139 = getelementptr inbounds %struct.Reg, %struct.Reg* %4138, i32 0, i32 0
  %ECX.i162 = bitcast %union.anon* %4139 to i32*
  %4140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4141 = getelementptr inbounds %struct.GPR, %struct.GPR* %4140, i32 0, i32 1
  %4142 = getelementptr inbounds %struct.Reg, %struct.Reg* %4141, i32 0, i32 0
  %RAX.i163 = bitcast %union.anon* %4142 to i64*
  %4143 = load i64, i64* %RAX.i163
  %4144 = add i64 %4143, 8
  %4145 = load i32, i32* %ECX.i162
  %4146 = zext i32 %4145 to i64
  %4147 = load i64, i64* %PC.i161
  %4148 = add i64 %4147, 3
  store i64 %4148, i64* %PC.i161
  %4149 = inttoptr i64 %4144 to i32*
  store i32 %4145, i32* %4149
  store %struct.Memory* %loadMem_4018ab, %struct.Memory** %MEMORY
  %loadMem_4018ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %4150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4151 = getelementptr inbounds %struct.GPR, %struct.GPR* %4150, i32 0, i32 33
  %4152 = getelementptr inbounds %struct.Reg, %struct.Reg* %4151, i32 0, i32 0
  %PC.i158 = bitcast %union.anon* %4152 to i64*
  %4153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4154 = getelementptr inbounds %struct.GPR, %struct.GPR* %4153, i32 0, i32 1
  %4155 = getelementptr inbounds %struct.Reg, %struct.Reg* %4154, i32 0, i32 0
  %RAX.i159 = bitcast %union.anon* %4155 to i64*
  %4156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4157 = getelementptr inbounds %struct.GPR, %struct.GPR* %4156, i32 0, i32 15
  %4158 = getelementptr inbounds %struct.Reg, %struct.Reg* %4157, i32 0, i32 0
  %RBP.i160 = bitcast %union.anon* %4158 to i64*
  %4159 = load i64, i64* %RBP.i160
  %4160 = sub i64 %4159, 8
  %4161 = load i64, i64* %PC.i158
  %4162 = add i64 %4161, 4
  store i64 %4162, i64* %PC.i158
  %4163 = inttoptr i64 %4160 to i64*
  %4164 = load i64, i64* %4163
  store i64 %4164, i64* %RAX.i159, align 8
  store %struct.Memory* %loadMem_4018ae, %struct.Memory** %MEMORY
  %loadMem_4018b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4166 = getelementptr inbounds %struct.GPR, %struct.GPR* %4165, i32 0, i32 33
  %4167 = getelementptr inbounds %struct.Reg, %struct.Reg* %4166, i32 0, i32 0
  %PC.i155 = bitcast %union.anon* %4167 to i64*
  %4168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4169 = getelementptr inbounds %struct.GPR, %struct.GPR* %4168, i32 0, i32 1
  %4170 = getelementptr inbounds %struct.Reg, %struct.Reg* %4169, i32 0, i32 0
  %RAX.i156 = bitcast %union.anon* %4170 to i64*
  %4171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4172 = getelementptr inbounds %struct.GPR, %struct.GPR* %4171, i32 0, i32 5
  %4173 = getelementptr inbounds %struct.Reg, %struct.Reg* %4172, i32 0, i32 0
  %RCX.i157 = bitcast %union.anon* %4173 to i64*
  %4174 = load i64, i64* %RAX.i156
  %4175 = add i64 %4174, 12
  %4176 = load i64, i64* %PC.i155
  %4177 = add i64 %4176, 3
  store i64 %4177, i64* %PC.i155
  %4178 = inttoptr i64 %4175 to i32*
  %4179 = load i32, i32* %4178
  %4180 = zext i32 %4179 to i64
  store i64 %4180, i64* %RCX.i157, align 8
  store %struct.Memory* %loadMem_4018b2, %struct.Memory** %MEMORY
  %loadMem_4018b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4182 = getelementptr inbounds %struct.GPR, %struct.GPR* %4181, i32 0, i32 33
  %4183 = getelementptr inbounds %struct.Reg, %struct.Reg* %4182, i32 0, i32 0
  %PC.i153 = bitcast %union.anon* %4183 to i64*
  %4184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4185 = getelementptr inbounds %struct.GPR, %struct.GPR* %4184, i32 0, i32 5
  %4186 = getelementptr inbounds %struct.Reg, %struct.Reg* %4185, i32 0, i32 0
  %RCX.i154 = bitcast %union.anon* %4186 to i64*
  %4187 = load i64, i64* %RCX.i154
  %4188 = load i64, i64* %PC.i153
  %4189 = add i64 %4188, 3
  store i64 %4189, i64* %PC.i153
  %4190 = trunc i64 %4187 to i32
  %4191 = add i32 -1, %4190
  %4192 = zext i32 %4191 to i64
  store i64 %4192, i64* %RCX.i154, align 8
  %4193 = icmp ult i32 %4191, %4190
  %4194 = icmp ult i32 %4191, -1
  %4195 = or i1 %4193, %4194
  %4196 = zext i1 %4195 to i8
  %4197 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4196, i8* %4197, align 1
  %4198 = and i32 %4191, 255
  %4199 = call i32 @llvm.ctpop.i32(i32 %4198)
  %4200 = trunc i32 %4199 to i8
  %4201 = and i8 %4200, 1
  %4202 = xor i8 %4201, 1
  %4203 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4202, i8* %4203, align 1
  %4204 = xor i64 -1, %4187
  %4205 = trunc i64 %4204 to i32
  %4206 = xor i32 %4205, %4191
  %4207 = lshr i32 %4206, 4
  %4208 = trunc i32 %4207 to i8
  %4209 = and i8 %4208, 1
  %4210 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4209, i8* %4210, align 1
  %4211 = icmp eq i32 %4191, 0
  %4212 = zext i1 %4211 to i8
  %4213 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4212, i8* %4213, align 1
  %4214 = lshr i32 %4191, 31
  %4215 = trunc i32 %4214 to i8
  %4216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4215, i8* %4216, align 1
  %4217 = lshr i32 %4190, 31
  %4218 = xor i32 %4214, %4217
  %4219 = xor i32 %4214, 1
  %4220 = add i32 %4218, %4219
  %4221 = icmp eq i32 %4220, 2
  %4222 = zext i1 %4221 to i8
  %4223 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4222, i8* %4223, align 1
  store %struct.Memory* %loadMem_4018b5, %struct.Memory** %MEMORY
  %loadMem_4018b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4225 = getelementptr inbounds %struct.GPR, %struct.GPR* %4224, i32 0, i32 33
  %4226 = getelementptr inbounds %struct.Reg, %struct.Reg* %4225, i32 0, i32 0
  %PC.i150 = bitcast %union.anon* %4226 to i64*
  %4227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4228 = getelementptr inbounds %struct.GPR, %struct.GPR* %4227, i32 0, i32 5
  %4229 = getelementptr inbounds %struct.Reg, %struct.Reg* %4228, i32 0, i32 0
  %ECX.i151 = bitcast %union.anon* %4229 to i32*
  %4230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4231 = getelementptr inbounds %struct.GPR, %struct.GPR* %4230, i32 0, i32 1
  %4232 = getelementptr inbounds %struct.Reg, %struct.Reg* %4231, i32 0, i32 0
  %RAX.i152 = bitcast %union.anon* %4232 to i64*
  %4233 = load i64, i64* %RAX.i152
  %4234 = add i64 %4233, 12
  %4235 = load i32, i32* %ECX.i151
  %4236 = zext i32 %4235 to i64
  %4237 = load i64, i64* %PC.i150
  %4238 = add i64 %4237, 3
  store i64 %4238, i64* %PC.i150
  %4239 = inttoptr i64 %4234 to i32*
  store i32 %4235, i32* %4239
  store %struct.Memory* %loadMem_4018b8, %struct.Memory** %MEMORY
  %loadMem_4018bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %4240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4241 = getelementptr inbounds %struct.GPR, %struct.GPR* %4240, i32 0, i32 33
  %4242 = getelementptr inbounds %struct.Reg, %struct.Reg* %4241, i32 0, i32 0
  %PC.i148 = bitcast %union.anon* %4242 to i64*
  %4243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4244 = getelementptr inbounds %struct.GPR, %struct.GPR* %4243, i32 0, i32 5
  %4245 = getelementptr inbounds %struct.Reg, %struct.Reg* %4244, i32 0, i32 0
  %ECX.i149 = bitcast %union.anon* %4245 to i32*
  %4246 = load i32, i32* %ECX.i149
  %4247 = zext i32 %4246 to i64
  %4248 = load i64, i64* %PC.i148
  %4249 = add i64 %4248, 3
  store i64 %4249, i64* %PC.i148
  %4250 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4250, align 1
  %4251 = and i32 %4246, 255
  %4252 = call i32 @llvm.ctpop.i32(i32 %4251)
  %4253 = trunc i32 %4252 to i8
  %4254 = and i8 %4253, 1
  %4255 = xor i8 %4254, 1
  %4256 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4255, i8* %4256, align 1
  %4257 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4257, align 1
  %4258 = icmp eq i32 %4246, 0
  %4259 = zext i1 %4258 to i8
  %4260 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4259, i8* %4260, align 1
  %4261 = lshr i32 %4246, 31
  %4262 = trunc i32 %4261 to i8
  %4263 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4262, i8* %4263, align 1
  %4264 = lshr i32 %4246, 31
  %4265 = xor i32 %4261, %4264
  %4266 = add i32 %4265, %4264
  %4267 = icmp eq i32 %4266, 2
  %4268 = zext i1 %4267 to i8
  %4269 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4268, i8* %4269, align 1
  store %struct.Memory* %loadMem_4018bb, %struct.Memory** %MEMORY
  %loadMem_4018be = load %struct.Memory*, %struct.Memory** %MEMORY
  %4270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4271 = getelementptr inbounds %struct.GPR, %struct.GPR* %4270, i32 0, i32 33
  %4272 = getelementptr inbounds %struct.Reg, %struct.Reg* %4271, i32 0, i32 0
  %PC.i147 = bitcast %union.anon* %4272 to i64*
  %4273 = load i64, i64* %PC.i147
  %4274 = add i64 %4273, 107
  %4275 = load i64, i64* %PC.i147
  %4276 = add i64 %4275, 6
  %4277 = load i64, i64* %PC.i147
  %4278 = add i64 %4277, 6
  store i64 %4278, i64* %PC.i147
  %4279 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4280 = load i8, i8* %4279, align 1
  %4281 = icmp eq i8 %4280, 0
  %4282 = zext i1 %4281 to i8
  store i8 %4282, i8* %BRANCH_TAKEN, align 1
  %4283 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4284 = select i1 %4281, i64 %4274, i64 %4276
  store i64 %4284, i64* %4283, align 8
  store %struct.Memory* %loadMem_4018be, %struct.Memory** %MEMORY
  %loadBr_4018be = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4018be = icmp eq i8 %loadBr_4018be, 1
  br i1 %cmpBr_4018be, label %block_.L_401929, label %block_4018c4

block_4018c4:                                     ; preds = %block_401897
  %loadMem_4018c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4286 = getelementptr inbounds %struct.GPR, %struct.GPR* %4285, i32 0, i32 33
  %4287 = getelementptr inbounds %struct.Reg, %struct.Reg* %4286, i32 0, i32 0
  %PC.i144 = bitcast %union.anon* %4287 to i64*
  %4288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4289 = getelementptr inbounds %struct.GPR, %struct.GPR* %4288, i32 0, i32 1
  %4290 = getelementptr inbounds %struct.Reg, %struct.Reg* %4289, i32 0, i32 0
  %RAX.i145 = bitcast %union.anon* %4290 to i64*
  %4291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4292 = getelementptr inbounds %struct.GPR, %struct.GPR* %4291, i32 0, i32 15
  %4293 = getelementptr inbounds %struct.Reg, %struct.Reg* %4292, i32 0, i32 0
  %RBP.i146 = bitcast %union.anon* %4293 to i64*
  %4294 = load i64, i64* %RBP.i146
  %4295 = sub i64 %4294, 8
  %4296 = load i64, i64* %PC.i144
  %4297 = add i64 %4296, 4
  store i64 %4297, i64* %PC.i144
  %4298 = inttoptr i64 %4295 to i64*
  %4299 = load i64, i64* %4298
  store i64 %4299, i64* %RAX.i145, align 8
  store %struct.Memory* %loadMem_4018c4, %struct.Memory** %MEMORY
  %loadMem_4018c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4301 = getelementptr inbounds %struct.GPR, %struct.GPR* %4300, i32 0, i32 33
  %4302 = getelementptr inbounds %struct.Reg, %struct.Reg* %4301, i32 0, i32 0
  %PC.i141 = bitcast %union.anon* %4302 to i64*
  %4303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4304 = getelementptr inbounds %struct.GPR, %struct.GPR* %4303, i32 0, i32 1
  %4305 = getelementptr inbounds %struct.Reg, %struct.Reg* %4304, i32 0, i32 0
  %RAX.i142 = bitcast %union.anon* %4305 to i64*
  %4306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4307 = getelementptr inbounds %struct.GPR, %struct.GPR* %4306, i32 0, i32 5
  %4308 = getelementptr inbounds %struct.Reg, %struct.Reg* %4307, i32 0, i32 0
  %RCX.i143 = bitcast %union.anon* %4308 to i64*
  %4309 = load i64, i64* %RAX.i142
  %4310 = add i64 %4309, 8
  %4311 = load i64, i64* %PC.i141
  %4312 = add i64 %4311, 3
  store i64 %4312, i64* %PC.i141
  %4313 = inttoptr i64 %4310 to i32*
  %4314 = load i32, i32* %4313
  %4315 = zext i32 %4314 to i64
  store i64 %4315, i64* %RCX.i143, align 8
  store %struct.Memory* %loadMem_4018c8, %struct.Memory** %MEMORY
  %loadMem_4018cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %4316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4317 = getelementptr inbounds %struct.GPR, %struct.GPR* %4316, i32 0, i32 33
  %4318 = getelementptr inbounds %struct.Reg, %struct.Reg* %4317, i32 0, i32 0
  %PC.i139 = bitcast %union.anon* %4318 to i64*
  %4319 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4320 = getelementptr inbounds %struct.GPR, %struct.GPR* %4319, i32 0, i32 5
  %4321 = getelementptr inbounds %struct.Reg, %struct.Reg* %4320, i32 0, i32 0
  %4322 = bitcast %union.anon* %4321 to %struct.anon.2*
  %CL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %4322, i32 0, i32 0
  %4323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4324 = getelementptr inbounds %struct.GPR, %struct.GPR* %4323, i32 0, i32 7
  %4325 = getelementptr inbounds %struct.Reg, %struct.Reg* %4324, i32 0, i32 0
  %4326 = bitcast %union.anon* %4325 to %struct.anon.2*
  %DL.i140 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %4326, i32 0, i32 0
  %4327 = load i8, i8* %CL.i
  %4328 = zext i8 %4327 to i64
  %4329 = load i64, i64* %PC.i139
  %4330 = add i64 %4329, 2
  store i64 %4330, i64* %PC.i139
  store i8 %4327, i8* %DL.i140, align 1
  store %struct.Memory* %loadMem_4018cb, %struct.Memory** %MEMORY
  %loadMem_4018cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %4331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4332 = getelementptr inbounds %struct.GPR, %struct.GPR* %4331, i32 0, i32 33
  %4333 = getelementptr inbounds %struct.Reg, %struct.Reg* %4332, i32 0, i32 0
  %PC.i136 = bitcast %union.anon* %4333 to i64*
  %4334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4335 = getelementptr inbounds %struct.GPR, %struct.GPR* %4334, i32 0, i32 1
  %4336 = getelementptr inbounds %struct.Reg, %struct.Reg* %4335, i32 0, i32 0
  %RAX.i137 = bitcast %union.anon* %4336 to i64*
  %4337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4338 = getelementptr inbounds %struct.GPR, %struct.GPR* %4337, i32 0, i32 15
  %4339 = getelementptr inbounds %struct.Reg, %struct.Reg* %4338, i32 0, i32 0
  %RBP.i138 = bitcast %union.anon* %4339 to i64*
  %4340 = load i64, i64* %RBP.i138
  %4341 = sub i64 %4340, 8
  %4342 = load i64, i64* %PC.i136
  %4343 = add i64 %4342, 4
  store i64 %4343, i64* %PC.i136
  %4344 = inttoptr i64 %4341 to i64*
  %4345 = load i64, i64* %4344
  store i64 %4345, i64* %RAX.i137, align 8
  store %struct.Memory* %loadMem_4018cd, %struct.Memory** %MEMORY
  %loadMem_4018d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4347 = getelementptr inbounds %struct.GPR, %struct.GPR* %4346, i32 0, i32 33
  %4348 = getelementptr inbounds %struct.Reg, %struct.Reg* %4347, i32 0, i32 0
  %PC.i134 = bitcast %union.anon* %4348 to i64*
  %4349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4350 = getelementptr inbounds %struct.GPR, %struct.GPR* %4349, i32 0, i32 1
  %4351 = getelementptr inbounds %struct.Reg, %struct.Reg* %4350, i32 0, i32 0
  %RAX.i135 = bitcast %union.anon* %4351 to i64*
  %4352 = load i64, i64* %RAX.i135
  %4353 = add i64 %4352, 24
  %4354 = load i64, i64* %PC.i134
  %4355 = add i64 %4354, 4
  store i64 %4355, i64* %PC.i134
  %4356 = inttoptr i64 %4353 to i64*
  %4357 = load i64, i64* %4356
  store i64 %4357, i64* %RAX.i135, align 8
  store %struct.Memory* %loadMem_4018d1, %struct.Memory** %MEMORY
  %loadMem_4018d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4359 = getelementptr inbounds %struct.GPR, %struct.GPR* %4358, i32 0, i32 33
  %4360 = getelementptr inbounds %struct.Reg, %struct.Reg* %4359, i32 0, i32 0
  %PC.i131 = bitcast %union.anon* %4360 to i64*
  %4361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4362 = getelementptr inbounds %struct.GPR, %struct.GPR* %4361, i32 0, i32 9
  %4363 = getelementptr inbounds %struct.Reg, %struct.Reg* %4362, i32 0, i32 0
  %RSI.i132 = bitcast %union.anon* %4363 to i64*
  %4364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4365 = getelementptr inbounds %struct.GPR, %struct.GPR* %4364, i32 0, i32 15
  %4366 = getelementptr inbounds %struct.Reg, %struct.Reg* %4365, i32 0, i32 0
  %RBP.i133 = bitcast %union.anon* %4366 to i64*
  %4367 = load i64, i64* %RBP.i133
  %4368 = sub i64 %4367, 8
  %4369 = load i64, i64* %PC.i131
  %4370 = add i64 %4369, 4
  store i64 %4370, i64* %PC.i131
  %4371 = inttoptr i64 %4368 to i64*
  %4372 = load i64, i64* %4371
  store i64 %4372, i64* %RSI.i132, align 8
  store %struct.Memory* %loadMem_4018d5, %struct.Memory** %MEMORY
  %loadMem_4018d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4374 = getelementptr inbounds %struct.GPR, %struct.GPR* %4373, i32 0, i32 33
  %4375 = getelementptr inbounds %struct.Reg, %struct.Reg* %4374, i32 0, i32 0
  %PC.i129 = bitcast %union.anon* %4375 to i64*
  %4376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4377 = getelementptr inbounds %struct.GPR, %struct.GPR* %4376, i32 0, i32 9
  %4378 = getelementptr inbounds %struct.Reg, %struct.Reg* %4377, i32 0, i32 0
  %RSI.i130 = bitcast %union.anon* %4378 to i64*
  %4379 = load i64, i64* %RSI.i130
  %4380 = add i64 %4379, 32
  %4381 = load i64, i64* %PC.i129
  %4382 = add i64 %4381, 4
  store i64 %4382, i64* %PC.i129
  %4383 = inttoptr i64 %4380 to i64*
  %4384 = load i64, i64* %4383
  store i64 %4384, i64* %RSI.i130, align 8
  store %struct.Memory* %loadMem_4018d9, %struct.Memory** %MEMORY
  %loadMem_4018dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %4385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4386 = getelementptr inbounds %struct.GPR, %struct.GPR* %4385, i32 0, i32 33
  %4387 = getelementptr inbounds %struct.Reg, %struct.Reg* %4386, i32 0, i32 0
  %PC.i126 = bitcast %union.anon* %4387 to i64*
  %4388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4389 = getelementptr inbounds %struct.GPR, %struct.GPR* %4388, i32 0, i32 5
  %4390 = getelementptr inbounds %struct.Reg, %struct.Reg* %4389, i32 0, i32 0
  %RCX.i127 = bitcast %union.anon* %4390 to i64*
  %4391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4392 = getelementptr inbounds %struct.GPR, %struct.GPR* %4391, i32 0, i32 9
  %4393 = getelementptr inbounds %struct.Reg, %struct.Reg* %4392, i32 0, i32 0
  %RSI.i128 = bitcast %union.anon* %4393 to i64*
  %4394 = load i64, i64* %RSI.i128
  %4395 = load i64, i64* %PC.i126
  %4396 = add i64 %4395, 2
  store i64 %4396, i64* %PC.i126
  %4397 = inttoptr i64 %4394 to i32*
  %4398 = load i32, i32* %4397
  %4399 = zext i32 %4398 to i64
  store i64 %4399, i64* %RCX.i127, align 8
  store %struct.Memory* %loadMem_4018dd, %struct.Memory** %MEMORY
  %loadMem_4018df = load %struct.Memory*, %struct.Memory** %MEMORY
  %4400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4401 = getelementptr inbounds %struct.GPR, %struct.GPR* %4400, i32 0, i32 33
  %4402 = getelementptr inbounds %struct.Reg, %struct.Reg* %4401, i32 0, i32 0
  %PC.i123 = bitcast %union.anon* %4402 to i64*
  %4403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4404 = getelementptr inbounds %struct.GPR, %struct.GPR* %4403, i32 0, i32 5
  %4405 = getelementptr inbounds %struct.Reg, %struct.Reg* %4404, i32 0, i32 0
  %ECX.i124 = bitcast %union.anon* %4405 to i32*
  %4406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4407 = getelementptr inbounds %struct.GPR, %struct.GPR* %4406, i32 0, i32 11
  %4408 = getelementptr inbounds %struct.Reg, %struct.Reg* %4407, i32 0, i32 0
  %RDI.i125 = bitcast %union.anon* %4408 to i64*
  %4409 = load i32, i32* %ECX.i124
  %4410 = zext i32 %4409 to i64
  %4411 = load i64, i64* %PC.i123
  %4412 = add i64 %4411, 2
  store i64 %4412, i64* %PC.i123
  %4413 = and i64 %4410, 4294967295
  store i64 %4413, i64* %RDI.i125, align 8
  store %struct.Memory* %loadMem_4018df, %struct.Memory** %MEMORY
  %loadMem_4018e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4415 = getelementptr inbounds %struct.GPR, %struct.GPR* %4414, i32 0, i32 33
  %4416 = getelementptr inbounds %struct.Reg, %struct.Reg* %4415, i32 0, i32 0
  %PC.i122 = bitcast %union.anon* %4416 to i64*
  %4417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4418 = getelementptr inbounds %struct.GPR, %struct.GPR* %4417, i32 0, i32 11
  %4419 = getelementptr inbounds %struct.Reg, %struct.Reg* %4418, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %4419 to i64*
  %4420 = load i64, i64* %RDI.i
  %4421 = load i64, i64* %PC.i122
  %4422 = add i64 %4421, 3
  store i64 %4422, i64* %PC.i122
  %4423 = trunc i64 %4420 to i32
  %4424 = add i32 1, %4423
  %4425 = zext i32 %4424 to i64
  store i64 %4425, i64* %RDI.i, align 8
  %4426 = icmp ult i32 %4424, %4423
  %4427 = icmp ult i32 %4424, 1
  %4428 = or i1 %4426, %4427
  %4429 = zext i1 %4428 to i8
  %4430 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4429, i8* %4430, align 1
  %4431 = and i32 %4424, 255
  %4432 = call i32 @llvm.ctpop.i32(i32 %4431)
  %4433 = trunc i32 %4432 to i8
  %4434 = and i8 %4433, 1
  %4435 = xor i8 %4434, 1
  %4436 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4435, i8* %4436, align 1
  %4437 = xor i64 1, %4420
  %4438 = trunc i64 %4437 to i32
  %4439 = xor i32 %4438, %4424
  %4440 = lshr i32 %4439, 4
  %4441 = trunc i32 %4440 to i8
  %4442 = and i8 %4441, 1
  %4443 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4442, i8* %4443, align 1
  %4444 = icmp eq i32 %4424, 0
  %4445 = zext i1 %4444 to i8
  %4446 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4445, i8* %4446, align 1
  %4447 = lshr i32 %4424, 31
  %4448 = trunc i32 %4447 to i8
  %4449 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4448, i8* %4449, align 1
  %4450 = lshr i32 %4423, 31
  %4451 = xor i32 %4447, %4450
  %4452 = add i32 %4451, %4447
  %4453 = icmp eq i32 %4452, 2
  %4454 = zext i1 %4453 to i8
  %4455 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4454, i8* %4455, align 1
  store %struct.Memory* %loadMem_4018e1, %struct.Memory** %MEMORY
  %loadMem_4018e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4457 = getelementptr inbounds %struct.GPR, %struct.GPR* %4456, i32 0, i32 33
  %4458 = getelementptr inbounds %struct.Reg, %struct.Reg* %4457, i32 0, i32 0
  %PC.i120 = bitcast %union.anon* %4458 to i64*
  %4459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4460 = getelementptr inbounds %struct.GPR, %struct.GPR* %4459, i32 0, i32 11
  %4461 = getelementptr inbounds %struct.Reg, %struct.Reg* %4460, i32 0, i32 0
  %EDI.i = bitcast %union.anon* %4461 to i32*
  %4462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4463 = getelementptr inbounds %struct.GPR, %struct.GPR* %4462, i32 0, i32 9
  %4464 = getelementptr inbounds %struct.Reg, %struct.Reg* %4463, i32 0, i32 0
  %RSI.i121 = bitcast %union.anon* %4464 to i64*
  %4465 = load i64, i64* %RSI.i121
  %4466 = load i32, i32* %EDI.i
  %4467 = zext i32 %4466 to i64
  %4468 = load i64, i64* %PC.i120
  %4469 = add i64 %4468, 2
  store i64 %4469, i64* %PC.i120
  %4470 = inttoptr i64 %4465 to i32*
  store i32 %4466, i32* %4470
  store %struct.Memory* %loadMem_4018e4, %struct.Memory** %MEMORY
  %loadMem_4018e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4472 = getelementptr inbounds %struct.GPR, %struct.GPR* %4471, i32 0, i32 33
  %4473 = getelementptr inbounds %struct.Reg, %struct.Reg* %4472, i32 0, i32 0
  %PC.i117 = bitcast %union.anon* %4473 to i64*
  %4474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4475 = getelementptr inbounds %struct.GPR, %struct.GPR* %4474, i32 0, i32 5
  %4476 = getelementptr inbounds %struct.Reg, %struct.Reg* %4475, i32 0, i32 0
  %ECX.i118 = bitcast %union.anon* %4476 to i32*
  %4477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4478 = getelementptr inbounds %struct.GPR, %struct.GPR* %4477, i32 0, i32 9
  %4479 = getelementptr inbounds %struct.Reg, %struct.Reg* %4478, i32 0, i32 0
  %RSI.i119 = bitcast %union.anon* %4479 to i64*
  %4480 = load i32, i32* %ECX.i118
  %4481 = zext i32 %4480 to i64
  %4482 = load i64, i64* %PC.i117
  %4483 = add i64 %4482, 3
  store i64 %4483, i64* %PC.i117
  %4484 = shl i64 %4481, 32
  %4485 = ashr exact i64 %4484, 32
  store i64 %4485, i64* %RSI.i119, align 8
  store %struct.Memory* %loadMem_4018e6, %struct.Memory** %MEMORY
  %loadMem_4018e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4486 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4487 = getelementptr inbounds %struct.GPR, %struct.GPR* %4486, i32 0, i32 33
  %4488 = getelementptr inbounds %struct.Reg, %struct.Reg* %4487, i32 0, i32 0
  %PC.i115 = bitcast %union.anon* %4488 to i64*
  %4489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4490 = getelementptr inbounds %struct.GPR, %struct.GPR* %4489, i32 0, i32 7
  %4491 = getelementptr inbounds %struct.Reg, %struct.Reg* %4490, i32 0, i32 0
  %4492 = bitcast %union.anon* %4491 to %struct.anon.2*
  %DL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %4492, i32 0, i32 0
  %4493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4494 = getelementptr inbounds %struct.GPR, %struct.GPR* %4493, i32 0, i32 1
  %4495 = getelementptr inbounds %struct.Reg, %struct.Reg* %4494, i32 0, i32 0
  %RAX.i116 = bitcast %union.anon* %4495 to i64*
  %4496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4497 = getelementptr inbounds %struct.GPR, %struct.GPR* %4496, i32 0, i32 9
  %4498 = getelementptr inbounds %struct.Reg, %struct.Reg* %4497, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %4498 to i64*
  %4499 = load i64, i64* %RAX.i116
  %4500 = load i64, i64* %RSI.i
  %4501 = add i64 %4500, %4499
  %4502 = load i8, i8* %DL.i
  %4503 = zext i8 %4502 to i64
  %4504 = load i64, i64* %PC.i115
  %4505 = add i64 %4504, 3
  store i64 %4505, i64* %PC.i115
  %4506 = inttoptr i64 %4501 to i8*
  store i8 %4502, i8* %4506
  store %struct.Memory* %loadMem_4018e9, %struct.Memory** %MEMORY
  %loadMem_4018ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %4507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4508 = getelementptr inbounds %struct.GPR, %struct.GPR* %4507, i32 0, i32 33
  %4509 = getelementptr inbounds %struct.Reg, %struct.Reg* %4508, i32 0, i32 0
  %PC.i112 = bitcast %union.anon* %4509 to i64*
  %4510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4511 = getelementptr inbounds %struct.GPR, %struct.GPR* %4510, i32 0, i32 1
  %4512 = getelementptr inbounds %struct.Reg, %struct.Reg* %4511, i32 0, i32 0
  %RAX.i113 = bitcast %union.anon* %4512 to i64*
  %4513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4514 = getelementptr inbounds %struct.GPR, %struct.GPR* %4513, i32 0, i32 15
  %4515 = getelementptr inbounds %struct.Reg, %struct.Reg* %4514, i32 0, i32 0
  %RBP.i114 = bitcast %union.anon* %4515 to i64*
  %4516 = load i64, i64* %RBP.i114
  %4517 = sub i64 %4516, 8
  %4518 = load i64, i64* %PC.i112
  %4519 = add i64 %4518, 4
  store i64 %4519, i64* %PC.i112
  %4520 = inttoptr i64 %4517 to i64*
  %4521 = load i64, i64* %4520
  store i64 %4521, i64* %RAX.i113, align 8
  store %struct.Memory* %loadMem_4018ec, %struct.Memory** %MEMORY
  %loadMem_4018f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4522 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4523 = getelementptr inbounds %struct.GPR, %struct.GPR* %4522, i32 0, i32 33
  %4524 = getelementptr inbounds %struct.Reg, %struct.Reg* %4523, i32 0, i32 0
  %PC.i110 = bitcast %union.anon* %4524 to i64*
  %4525 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4526 = getelementptr inbounds %struct.GPR, %struct.GPR* %4525, i32 0, i32 1
  %4527 = getelementptr inbounds %struct.Reg, %struct.Reg* %4526, i32 0, i32 0
  %RAX.i111 = bitcast %union.anon* %4527 to i64*
  %4528 = load i64, i64* %RAX.i111
  %4529 = add i64 %4528, 12
  %4530 = load i64, i64* %PC.i110
  %4531 = add i64 %4530, 7
  store i64 %4531, i64* %PC.i110
  %4532 = inttoptr i64 %4529 to i32*
  store i32 8, i32* %4532
  store %struct.Memory* %loadMem_4018f0, %struct.Memory** %MEMORY
  br label %block_.L_4018f7

block_.L_4018f7:                                  ; preds = %block_401905, %block_4018c4
  %loadMem_4018f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4534 = getelementptr inbounds %struct.GPR, %struct.GPR* %4533, i32 0, i32 33
  %4535 = getelementptr inbounds %struct.Reg, %struct.Reg* %4534, i32 0, i32 0
  %PC.i107 = bitcast %union.anon* %4535 to i64*
  %4536 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4537 = getelementptr inbounds %struct.GPR, %struct.GPR* %4536, i32 0, i32 1
  %4538 = getelementptr inbounds %struct.Reg, %struct.Reg* %4537, i32 0, i32 0
  %RAX.i108 = bitcast %union.anon* %4538 to i64*
  %4539 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4540 = getelementptr inbounds %struct.GPR, %struct.GPR* %4539, i32 0, i32 15
  %4541 = getelementptr inbounds %struct.Reg, %struct.Reg* %4540, i32 0, i32 0
  %RBP.i109 = bitcast %union.anon* %4541 to i64*
  %4542 = load i64, i64* %RBP.i109
  %4543 = sub i64 %4542, 8
  %4544 = load i64, i64* %PC.i107
  %4545 = add i64 %4544, 4
  store i64 %4545, i64* %PC.i107
  %4546 = inttoptr i64 %4543 to i64*
  %4547 = load i64, i64* %4546
  store i64 %4547, i64* %RAX.i108, align 8
  store %struct.Memory* %loadMem_4018f7, %struct.Memory** %MEMORY
  %loadMem_4018fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %4548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4549 = getelementptr inbounds %struct.GPR, %struct.GPR* %4548, i32 0, i32 33
  %4550 = getelementptr inbounds %struct.Reg, %struct.Reg* %4549, i32 0, i32 0
  %PC.i105 = bitcast %union.anon* %4550 to i64*
  %4551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4552 = getelementptr inbounds %struct.GPR, %struct.GPR* %4551, i32 0, i32 1
  %4553 = getelementptr inbounds %struct.Reg, %struct.Reg* %4552, i32 0, i32 0
  %RAX.i106 = bitcast %union.anon* %4553 to i64*
  %4554 = load i64, i64* %RAX.i106
  %4555 = add i64 %4554, 80
  %4556 = load i64, i64* %PC.i105
  %4557 = add i64 %4556, 4
  store i64 %4557, i64* %PC.i105
  %4558 = inttoptr i64 %4555 to i32*
  %4559 = load i32, i32* %4558
  %4560 = sub i32 %4559, 7
  %4561 = icmp ult i32 %4559, 7
  %4562 = zext i1 %4561 to i8
  %4563 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4562, i8* %4563, align 1
  %4564 = and i32 %4560, 255
  %4565 = call i32 @llvm.ctpop.i32(i32 %4564)
  %4566 = trunc i32 %4565 to i8
  %4567 = and i8 %4566, 1
  %4568 = xor i8 %4567, 1
  %4569 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4568, i8* %4569, align 1
  %4570 = xor i32 %4559, 7
  %4571 = xor i32 %4570, %4560
  %4572 = lshr i32 %4571, 4
  %4573 = trunc i32 %4572 to i8
  %4574 = and i8 %4573, 1
  %4575 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4574, i8* %4575, align 1
  %4576 = icmp eq i32 %4560, 0
  %4577 = zext i1 %4576 to i8
  %4578 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4577, i8* %4578, align 1
  %4579 = lshr i32 %4560, 31
  %4580 = trunc i32 %4579 to i8
  %4581 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4580, i8* %4581, align 1
  %4582 = lshr i32 %4559, 31
  %4583 = xor i32 %4579, %4582
  %4584 = add i32 %4583, %4582
  %4585 = icmp eq i32 %4584, 2
  %4586 = zext i1 %4585 to i8
  %4587 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4586, i8* %4587, align 1
  store %struct.Memory* %loadMem_4018fb, %struct.Memory** %MEMORY
  %loadMem_4018ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %4588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4589 = getelementptr inbounds %struct.GPR, %struct.GPR* %4588, i32 0, i32 33
  %4590 = getelementptr inbounds %struct.Reg, %struct.Reg* %4589, i32 0, i32 0
  %PC.i104 = bitcast %union.anon* %4590 to i64*
  %4591 = load i64, i64* %PC.i104
  %4592 = add i64 %4591, 37
  %4593 = load i64, i64* %PC.i104
  %4594 = add i64 %4593, 6
  %4595 = load i64, i64* %PC.i104
  %4596 = add i64 %4595, 6
  store i64 %4596, i64* %PC.i104
  %4597 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4598 = load i8, i8* %4597, align 1
  %4599 = icmp ne i8 %4598, 0
  %4600 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4601 = load i8, i8* %4600, align 1
  %4602 = icmp ne i8 %4601, 0
  %4603 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4604 = load i8, i8* %4603, align 1
  %4605 = icmp ne i8 %4604, 0
  %4606 = xor i1 %4602, %4605
  %4607 = or i1 %4599, %4606
  %4608 = zext i1 %4607 to i8
  store i8 %4608, i8* %BRANCH_TAKEN, align 1
  %4609 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4610 = select i1 %4607, i64 %4592, i64 %4594
  store i64 %4610, i64* %4609, align 8
  store %struct.Memory* %loadMem_4018ff, %struct.Memory** %MEMORY
  %loadBr_4018ff = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4018ff = icmp eq i8 %loadBr_4018ff, 1
  br i1 %cmpBr_4018ff, label %block_.L_401924, label %block_401905

block_401905:                                     ; preds = %block_.L_4018f7
  %loadMem_401905 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4612 = getelementptr inbounds %struct.GPR, %struct.GPR* %4611, i32 0, i32 33
  %4613 = getelementptr inbounds %struct.Reg, %struct.Reg* %4612, i32 0, i32 0
  %PC.i101 = bitcast %union.anon* %4613 to i64*
  %4614 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4615 = getelementptr inbounds %struct.GPR, %struct.GPR* %4614, i32 0, i32 1
  %4616 = getelementptr inbounds %struct.Reg, %struct.Reg* %4615, i32 0, i32 0
  %RAX.i102 = bitcast %union.anon* %4616 to i64*
  %4617 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4618 = getelementptr inbounds %struct.GPR, %struct.GPR* %4617, i32 0, i32 15
  %4619 = getelementptr inbounds %struct.Reg, %struct.Reg* %4618, i32 0, i32 0
  %RBP.i103 = bitcast %union.anon* %4619 to i64*
  %4620 = load i64, i64* %RBP.i103
  %4621 = sub i64 %4620, 8
  %4622 = load i64, i64* %PC.i101
  %4623 = add i64 %4622, 4
  store i64 %4623, i64* %PC.i101
  %4624 = inttoptr i64 %4621 to i64*
  %4625 = load i64, i64* %4624
  store i64 %4625, i64* %RAX.i102, align 8
  store %struct.Memory* %loadMem_401905, %struct.Memory** %MEMORY
  %loadMem_401909 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4627 = getelementptr inbounds %struct.GPR, %struct.GPR* %4626, i32 0, i32 33
  %4628 = getelementptr inbounds %struct.Reg, %struct.Reg* %4627, i32 0, i32 0
  %PC.i98 = bitcast %union.anon* %4628 to i64*
  %4629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4630 = getelementptr inbounds %struct.GPR, %struct.GPR* %4629, i32 0, i32 1
  %4631 = getelementptr inbounds %struct.Reg, %struct.Reg* %4630, i32 0, i32 0
  %RAX.i99 = bitcast %union.anon* %4631 to i64*
  %4632 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4633 = getelementptr inbounds %struct.GPR, %struct.GPR* %4632, i32 0, i32 5
  %4634 = getelementptr inbounds %struct.Reg, %struct.Reg* %4633, i32 0, i32 0
  %RCX.i100 = bitcast %union.anon* %4634 to i64*
  %4635 = load i64, i64* %RAX.i99
  %4636 = add i64 %4635, 80
  %4637 = load i64, i64* %PC.i98
  %4638 = add i64 %4637, 3
  store i64 %4638, i64* %PC.i98
  %4639 = inttoptr i64 %4636 to i32*
  %4640 = load i32, i32* %4639
  %4641 = zext i32 %4640 to i64
  store i64 %4641, i64* %RCX.i100, align 8
  store %struct.Memory* %loadMem_401909, %struct.Memory** %MEMORY
  %loadMem_40190c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4642 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4643 = getelementptr inbounds %struct.GPR, %struct.GPR* %4642, i32 0, i32 33
  %4644 = getelementptr inbounds %struct.Reg, %struct.Reg* %4643, i32 0, i32 0
  %PC.i96 = bitcast %union.anon* %4644 to i64*
  %4645 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4646 = getelementptr inbounds %struct.GPR, %struct.GPR* %4645, i32 0, i32 5
  %4647 = getelementptr inbounds %struct.Reg, %struct.Reg* %4646, i32 0, i32 0
  %RCX.i97 = bitcast %union.anon* %4647 to i64*
  %4648 = load i64, i64* %RCX.i97
  %4649 = load i64, i64* %PC.i96
  %4650 = add i64 %4649, 3
  store i64 %4650, i64* %PC.i96
  %4651 = trunc i64 %4648 to i32
  %4652 = sub i32 %4651, 8
  %4653 = zext i32 %4652 to i64
  store i64 %4653, i64* %RCX.i97, align 8
  %4654 = icmp ult i32 %4651, 8
  %4655 = zext i1 %4654 to i8
  %4656 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4655, i8* %4656, align 1
  %4657 = and i32 %4652, 255
  %4658 = call i32 @llvm.ctpop.i32(i32 %4657)
  %4659 = trunc i32 %4658 to i8
  %4660 = and i8 %4659, 1
  %4661 = xor i8 %4660, 1
  %4662 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4661, i8* %4662, align 1
  %4663 = xor i64 8, %4648
  %4664 = trunc i64 %4663 to i32
  %4665 = xor i32 %4664, %4652
  %4666 = lshr i32 %4665, 4
  %4667 = trunc i32 %4666 to i8
  %4668 = and i8 %4667, 1
  %4669 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4668, i8* %4669, align 1
  %4670 = icmp eq i32 %4652, 0
  %4671 = zext i1 %4670 to i8
  %4672 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4671, i8* %4672, align 1
  %4673 = lshr i32 %4652, 31
  %4674 = trunc i32 %4673 to i8
  %4675 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4674, i8* %4675, align 1
  %4676 = lshr i32 %4651, 31
  %4677 = xor i32 %4673, %4676
  %4678 = add i32 %4677, %4676
  %4679 = icmp eq i32 %4678, 2
  %4680 = zext i1 %4679 to i8
  %4681 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4680, i8* %4681, align 1
  store %struct.Memory* %loadMem_40190c, %struct.Memory** %MEMORY
  %loadMem_40190f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4682 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4683 = getelementptr inbounds %struct.GPR, %struct.GPR* %4682, i32 0, i32 33
  %4684 = getelementptr inbounds %struct.Reg, %struct.Reg* %4683, i32 0, i32 0
  %PC.i93 = bitcast %union.anon* %4684 to i64*
  %4685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4686 = getelementptr inbounds %struct.GPR, %struct.GPR* %4685, i32 0, i32 5
  %4687 = getelementptr inbounds %struct.Reg, %struct.Reg* %4686, i32 0, i32 0
  %ECX.i94 = bitcast %union.anon* %4687 to i32*
  %4688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4689 = getelementptr inbounds %struct.GPR, %struct.GPR* %4688, i32 0, i32 1
  %4690 = getelementptr inbounds %struct.Reg, %struct.Reg* %4689, i32 0, i32 0
  %RAX.i95 = bitcast %union.anon* %4690 to i64*
  %4691 = load i64, i64* %RAX.i95
  %4692 = add i64 %4691, 80
  %4693 = load i32, i32* %ECX.i94
  %4694 = zext i32 %4693 to i64
  %4695 = load i64, i64* %PC.i93
  %4696 = add i64 %4695, 3
  store i64 %4696, i64* %PC.i93
  %4697 = inttoptr i64 %4692 to i32*
  store i32 %4693, i32* %4697
  store %struct.Memory* %loadMem_40190f, %struct.Memory** %MEMORY
  %loadMem_401912 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4699 = getelementptr inbounds %struct.GPR, %struct.GPR* %4698, i32 0, i32 33
  %4700 = getelementptr inbounds %struct.Reg, %struct.Reg* %4699, i32 0, i32 0
  %PC.i90 = bitcast %union.anon* %4700 to i64*
  %4701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4702 = getelementptr inbounds %struct.GPR, %struct.GPR* %4701, i32 0, i32 1
  %4703 = getelementptr inbounds %struct.Reg, %struct.Reg* %4702, i32 0, i32 0
  %RAX.i91 = bitcast %union.anon* %4703 to i64*
  %4704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4705 = getelementptr inbounds %struct.GPR, %struct.GPR* %4704, i32 0, i32 15
  %4706 = getelementptr inbounds %struct.Reg, %struct.Reg* %4705, i32 0, i32 0
  %RBP.i92 = bitcast %union.anon* %4706 to i64*
  %4707 = load i64, i64* %RBP.i92
  %4708 = sub i64 %4707, 8
  %4709 = load i64, i64* %PC.i90
  %4710 = add i64 %4709, 4
  store i64 %4710, i64* %PC.i90
  %4711 = inttoptr i64 %4708 to i64*
  %4712 = load i64, i64* %4711
  store i64 %4712, i64* %RAX.i91, align 8
  store %struct.Memory* %loadMem_401912, %struct.Memory** %MEMORY
  %loadMem_401916 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4714 = getelementptr inbounds %struct.GPR, %struct.GPR* %4713, i32 0, i32 33
  %4715 = getelementptr inbounds %struct.Reg, %struct.Reg* %4714, i32 0, i32 0
  %PC.i87 = bitcast %union.anon* %4715 to i64*
  %4716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4717 = getelementptr inbounds %struct.GPR, %struct.GPR* %4716, i32 0, i32 1
  %4718 = getelementptr inbounds %struct.Reg, %struct.Reg* %4717, i32 0, i32 0
  %RAX.i88 = bitcast %union.anon* %4718 to i64*
  %4719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4720 = getelementptr inbounds %struct.GPR, %struct.GPR* %4719, i32 0, i32 5
  %4721 = getelementptr inbounds %struct.Reg, %struct.Reg* %4720, i32 0, i32 0
  %RCX.i89 = bitcast %union.anon* %4721 to i64*
  %4722 = load i64, i64* %RAX.i88
  %4723 = add i64 %4722, 88
  %4724 = load i64, i64* %PC.i87
  %4725 = add i64 %4724, 3
  store i64 %4725, i64* %PC.i87
  %4726 = inttoptr i64 %4723 to i32*
  %4727 = load i32, i32* %4726
  %4728 = zext i32 %4727 to i64
  store i64 %4728, i64* %RCX.i89, align 8
  store %struct.Memory* %loadMem_401916, %struct.Memory** %MEMORY
  %loadMem_401919 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4730 = getelementptr inbounds %struct.GPR, %struct.GPR* %4729, i32 0, i32 33
  %4731 = getelementptr inbounds %struct.Reg, %struct.Reg* %4730, i32 0, i32 0
  %PC.i85 = bitcast %union.anon* %4731 to i64*
  %4732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4733 = getelementptr inbounds %struct.GPR, %struct.GPR* %4732, i32 0, i32 5
  %4734 = getelementptr inbounds %struct.Reg, %struct.Reg* %4733, i32 0, i32 0
  %RCX.i86 = bitcast %union.anon* %4734 to i64*
  %4735 = load i64, i64* %RCX.i86
  %4736 = load i64, i64* %PC.i85
  %4737 = add i64 %4736, 3
  store i64 %4737, i64* %PC.i85
  %4738 = trunc i64 %4735 to i32
  %4739 = add i32 1, %4738
  %4740 = zext i32 %4739 to i64
  store i64 %4740, i64* %RCX.i86, align 8
  %4741 = icmp ult i32 %4739, %4738
  %4742 = icmp ult i32 %4739, 1
  %4743 = or i1 %4741, %4742
  %4744 = zext i1 %4743 to i8
  %4745 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4744, i8* %4745, align 1
  %4746 = and i32 %4739, 255
  %4747 = call i32 @llvm.ctpop.i32(i32 %4746)
  %4748 = trunc i32 %4747 to i8
  %4749 = and i8 %4748, 1
  %4750 = xor i8 %4749, 1
  %4751 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4750, i8* %4751, align 1
  %4752 = xor i64 1, %4735
  %4753 = trunc i64 %4752 to i32
  %4754 = xor i32 %4753, %4739
  %4755 = lshr i32 %4754, 4
  %4756 = trunc i32 %4755 to i8
  %4757 = and i8 %4756, 1
  %4758 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4757, i8* %4758, align 1
  %4759 = icmp eq i32 %4739, 0
  %4760 = zext i1 %4759 to i8
  %4761 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4760, i8* %4761, align 1
  %4762 = lshr i32 %4739, 31
  %4763 = trunc i32 %4762 to i8
  %4764 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4763, i8* %4764, align 1
  %4765 = lshr i32 %4738, 31
  %4766 = xor i32 %4762, %4765
  %4767 = add i32 %4766, %4762
  %4768 = icmp eq i32 %4767, 2
  %4769 = zext i1 %4768 to i8
  %4770 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4769, i8* %4770, align 1
  store %struct.Memory* %loadMem_401919, %struct.Memory** %MEMORY
  %loadMem_40191c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4771 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4772 = getelementptr inbounds %struct.GPR, %struct.GPR* %4771, i32 0, i32 33
  %4773 = getelementptr inbounds %struct.Reg, %struct.Reg* %4772, i32 0, i32 0
  %PC.i82 = bitcast %union.anon* %4773 to i64*
  %4774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4775 = getelementptr inbounds %struct.GPR, %struct.GPR* %4774, i32 0, i32 5
  %4776 = getelementptr inbounds %struct.Reg, %struct.Reg* %4775, i32 0, i32 0
  %ECX.i83 = bitcast %union.anon* %4776 to i32*
  %4777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4778 = getelementptr inbounds %struct.GPR, %struct.GPR* %4777, i32 0, i32 1
  %4779 = getelementptr inbounds %struct.Reg, %struct.Reg* %4778, i32 0, i32 0
  %RAX.i84 = bitcast %union.anon* %4779 to i64*
  %4780 = load i64, i64* %RAX.i84
  %4781 = add i64 %4780, 88
  %4782 = load i32, i32* %ECX.i83
  %4783 = zext i32 %4782 to i64
  %4784 = load i64, i64* %PC.i82
  %4785 = add i64 %4784, 3
  store i64 %4785, i64* %PC.i82
  %4786 = inttoptr i64 %4781 to i32*
  store i32 %4782, i32* %4786
  store %struct.Memory* %loadMem_40191c, %struct.Memory** %MEMORY
  %loadMem_40191f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4788 = getelementptr inbounds %struct.GPR, %struct.GPR* %4787, i32 0, i32 33
  %4789 = getelementptr inbounds %struct.Reg, %struct.Reg* %4788, i32 0, i32 0
  %PC.i81 = bitcast %union.anon* %4789 to i64*
  %4790 = load i64, i64* %PC.i81
  %4791 = add i64 %4790, -40
  %4792 = load i64, i64* %PC.i81
  %4793 = add i64 %4792, 5
  store i64 %4793, i64* %PC.i81
  %4794 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4791, i64* %4794, align 8
  store %struct.Memory* %loadMem_40191f, %struct.Memory** %MEMORY
  br label %block_.L_4018f7

block_.L_401924:                                  ; preds = %block_.L_4018f7
  %loadMem_401924 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4796 = getelementptr inbounds %struct.GPR, %struct.GPR* %4795, i32 0, i32 33
  %4797 = getelementptr inbounds %struct.Reg, %struct.Reg* %4796, i32 0, i32 0
  %PC.i80 = bitcast %union.anon* %4797 to i64*
  %4798 = load i64, i64* %PC.i80
  %4799 = add i64 %4798, 5
  %4800 = load i64, i64* %PC.i80
  %4801 = add i64 %4800, 5
  store i64 %4801, i64* %PC.i80
  %4802 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4799, i64* %4802, align 8
  store %struct.Memory* %loadMem_401924, %struct.Memory** %MEMORY
  br label %block_.L_401929

block_.L_401929:                                  ; preds = %block_.L_401924, %block_401897
  %loadMem_401929 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4803 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4804 = getelementptr inbounds %struct.GPR, %struct.GPR* %4803, i32 0, i32 33
  %4805 = getelementptr inbounds %struct.Reg, %struct.Reg* %4804, i32 0, i32 0
  %PC.i79 = bitcast %union.anon* %4805 to i64*
  %4806 = load i64, i64* %PC.i79
  %4807 = add i64 %4806, -160
  %4808 = load i64, i64* %PC.i79
  %4809 = add i64 %4808, 5
  store i64 %4809, i64* %PC.i79
  %4810 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4807, i64* %4810, align 8
  store %struct.Memory* %loadMem_401929, %struct.Memory** %MEMORY
  br label %block_.L_401889

block_.L_40192e:                                  ; preds = %block_.L_401889
  %loadMem_40192e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4811 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4812 = getelementptr inbounds %struct.GPR, %struct.GPR* %4811, i32 0, i32 33
  %4813 = getelementptr inbounds %struct.Reg, %struct.Reg* %4812, i32 0, i32 0
  %PC.i76 = bitcast %union.anon* %4813 to i64*
  %4814 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4815 = getelementptr inbounds %struct.GPR, %struct.GPR* %4814, i32 0, i32 1
  %4816 = getelementptr inbounds %struct.Reg, %struct.Reg* %4815, i32 0, i32 0
  %RAX.i77 = bitcast %union.anon* %4816 to i64*
  %4817 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4818 = getelementptr inbounds %struct.GPR, %struct.GPR* %4817, i32 0, i32 15
  %4819 = getelementptr inbounds %struct.Reg, %struct.Reg* %4818, i32 0, i32 0
  %RBP.i78 = bitcast %union.anon* %4819 to i64*
  %4820 = load i64, i64* %RBP.i78
  %4821 = sub i64 %4820, 8
  %4822 = load i64, i64* %PC.i76
  %4823 = add i64 %4822, 4
  store i64 %4823, i64* %PC.i76
  %4824 = inttoptr i64 %4821 to i64*
  %4825 = load i64, i64* %4824
  store i64 %4825, i64* %RAX.i77, align 8
  store %struct.Memory* %loadMem_40192e, %struct.Memory** %MEMORY
  %loadMem_401932 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4827 = getelementptr inbounds %struct.GPR, %struct.GPR* %4826, i32 0, i32 33
  %4828 = getelementptr inbounds %struct.Reg, %struct.Reg* %4827, i32 0, i32 0
  %PC.i73 = bitcast %union.anon* %4828 to i64*
  %4829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4830 = getelementptr inbounds %struct.GPR, %struct.GPR* %4829, i32 0, i32 1
  %4831 = getelementptr inbounds %struct.Reg, %struct.Reg* %4830, i32 0, i32 0
  %RAX.i74 = bitcast %union.anon* %4831 to i64*
  %4832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4833 = getelementptr inbounds %struct.GPR, %struct.GPR* %4832, i32 0, i32 5
  %4834 = getelementptr inbounds %struct.Reg, %struct.Reg* %4833, i32 0, i32 0
  %RCX.i75 = bitcast %union.anon* %4834 to i64*
  %4835 = load i64, i64* %RAX.i74
  %4836 = add i64 %4835, 88
  %4837 = load i64, i64* %PC.i73
  %4838 = add i64 %4837, 3
  store i64 %4838, i64* %PC.i73
  %4839 = inttoptr i64 %4836 to i32*
  %4840 = load i32, i32* %4839
  %4841 = zext i32 %4840 to i64
  store i64 %4841, i64* %RCX.i75, align 8
  store %struct.Memory* %loadMem_401932, %struct.Memory** %MEMORY
  %loadMem_401935 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4843 = getelementptr inbounds %struct.GPR, %struct.GPR* %4842, i32 0, i32 33
  %4844 = getelementptr inbounds %struct.Reg, %struct.Reg* %4843, i32 0, i32 0
  %PC.i71 = bitcast %union.anon* %4844 to i64*
  %4845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4846 = getelementptr inbounds %struct.GPR, %struct.GPR* %4845, i32 0, i32 5
  %4847 = getelementptr inbounds %struct.Reg, %struct.Reg* %4846, i32 0, i32 0
  %RCX.i72 = bitcast %union.anon* %4847 to i64*
  %4848 = load i64, i64* %RCX.i72
  %4849 = load i64, i64* %PC.i71
  %4850 = add i64 %4849, 3
  store i64 %4850, i64* %PC.i71
  %4851 = and i64 %4848, 4294967295
  %4852 = shl i64 %4851, 2
  %4853 = trunc i64 %4852 to i32
  %4854 = icmp slt i32 %4853, 0
  %4855 = shl i32 %4853, 1
  %4856 = zext i32 %4855 to i64
  store i64 %4856, i64* %RCX.i72, align 8
  %4857 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %4858 = zext i1 %4854 to i8
  store i8 %4858, i8* %4857, align 1
  %4859 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %4860 = and i32 %4855, 254
  %4861 = call i32 @llvm.ctpop.i32(i32 %4860)
  %4862 = trunc i32 %4861 to i8
  %4863 = and i8 %4862, 1
  %4864 = xor i8 %4863, 1
  store i8 %4864, i8* %4859, align 1
  %4865 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4865, align 1
  %4866 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4867 = icmp eq i32 %4855, 0
  %4868 = zext i1 %4867 to i8
  store i8 %4868, i8* %4866, align 1
  %4869 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4870 = lshr i32 %4855, 31
  %4871 = trunc i32 %4870 to i8
  store i8 %4871, i8* %4869, align 1
  %4872 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4872, align 1
  store %struct.Memory* %loadMem_401935, %struct.Memory** %MEMORY
  %loadMem_401938 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4873 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4874 = getelementptr inbounds %struct.GPR, %struct.GPR* %4873, i32 0, i32 33
  %4875 = getelementptr inbounds %struct.Reg, %struct.Reg* %4874, i32 0, i32 0
  %PC.i68 = bitcast %union.anon* %4875 to i64*
  %4876 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4877 = getelementptr inbounds %struct.GPR, %struct.GPR* %4876, i32 0, i32 1
  %4878 = getelementptr inbounds %struct.Reg, %struct.Reg* %4877, i32 0, i32 0
  %RAX.i69 = bitcast %union.anon* %4878 to i64*
  %4879 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4880 = getelementptr inbounds %struct.GPR, %struct.GPR* %4879, i32 0, i32 15
  %4881 = getelementptr inbounds %struct.Reg, %struct.Reg* %4880, i32 0, i32 0
  %RBP.i70 = bitcast %union.anon* %4881 to i64*
  %4882 = load i64, i64* %RBP.i70
  %4883 = sub i64 %4882, 8
  %4884 = load i64, i64* %PC.i68
  %4885 = add i64 %4884, 4
  store i64 %4885, i64* %PC.i68
  %4886 = inttoptr i64 %4883 to i64*
  %4887 = load i64, i64* %4886
  store i64 %4887, i64* %RAX.i69, align 8
  store %struct.Memory* %loadMem_401938, %struct.Memory** %MEMORY
  %loadMem_40193c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4888 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4889 = getelementptr inbounds %struct.GPR, %struct.GPR* %4888, i32 0, i32 33
  %4890 = getelementptr inbounds %struct.Reg, %struct.Reg* %4889, i32 0, i32 0
  %PC.i65 = bitcast %union.anon* %4890 to i64*
  %4891 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4892 = getelementptr inbounds %struct.GPR, %struct.GPR* %4891, i32 0, i32 1
  %4893 = getelementptr inbounds %struct.Reg, %struct.Reg* %4892, i32 0, i32 0
  %RAX.i66 = bitcast %union.anon* %4893 to i64*
  %4894 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4895 = getelementptr inbounds %struct.GPR, %struct.GPR* %4894, i32 0, i32 5
  %4896 = getelementptr inbounds %struct.Reg, %struct.Reg* %4895, i32 0, i32 0
  %RCX.i67 = bitcast %union.anon* %4896 to i64*
  %4897 = load i64, i64* %RCX.i67
  %4898 = load i64, i64* %RAX.i66
  %4899 = add i64 %4898, 80
  %4900 = load i64, i64* %PC.i65
  %4901 = add i64 %4900, 3
  store i64 %4901, i64* %PC.i65
  %4902 = trunc i64 %4897 to i32
  %4903 = inttoptr i64 %4899 to i32*
  %4904 = load i32, i32* %4903
  %4905 = add i32 %4904, %4902
  %4906 = zext i32 %4905 to i64
  store i64 %4906, i64* %RCX.i67, align 8
  %4907 = icmp ult i32 %4905, %4902
  %4908 = icmp ult i32 %4905, %4904
  %4909 = or i1 %4907, %4908
  %4910 = zext i1 %4909 to i8
  %4911 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4910, i8* %4911, align 1
  %4912 = and i32 %4905, 255
  %4913 = call i32 @llvm.ctpop.i32(i32 %4912)
  %4914 = trunc i32 %4913 to i8
  %4915 = and i8 %4914, 1
  %4916 = xor i8 %4915, 1
  %4917 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4916, i8* %4917, align 1
  %4918 = xor i32 %4904, %4902
  %4919 = xor i32 %4918, %4905
  %4920 = lshr i32 %4919, 4
  %4921 = trunc i32 %4920 to i8
  %4922 = and i8 %4921, 1
  %4923 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4922, i8* %4923, align 1
  %4924 = icmp eq i32 %4905, 0
  %4925 = zext i1 %4924 to i8
  %4926 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4925, i8* %4926, align 1
  %4927 = lshr i32 %4905, 31
  %4928 = trunc i32 %4927 to i8
  %4929 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4928, i8* %4929, align 1
  %4930 = lshr i32 %4902, 31
  %4931 = lshr i32 %4904, 31
  %4932 = xor i32 %4927, %4930
  %4933 = xor i32 %4927, %4931
  %4934 = add i32 %4932, %4933
  %4935 = icmp eq i32 %4934, 2
  %4936 = zext i1 %4935 to i8
  %4937 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4936, i8* %4937, align 1
  store %struct.Memory* %loadMem_40193c, %struct.Memory** %MEMORY
  %loadMem_40193f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4939 = getelementptr inbounds %struct.GPR, %struct.GPR* %4938, i32 0, i32 33
  %4940 = getelementptr inbounds %struct.Reg, %struct.Reg* %4939, i32 0, i32 0
  %PC.i62 = bitcast %union.anon* %4940 to i64*
  %4941 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4942 = getelementptr inbounds %struct.GPR, %struct.GPR* %4941, i32 0, i32 1
  %4943 = getelementptr inbounds %struct.Reg, %struct.Reg* %4942, i32 0, i32 0
  %RAX.i63 = bitcast %union.anon* %4943 to i64*
  %4944 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4945 = getelementptr inbounds %struct.GPR, %struct.GPR* %4944, i32 0, i32 15
  %4946 = getelementptr inbounds %struct.Reg, %struct.Reg* %4945, i32 0, i32 0
  %RBP.i64 = bitcast %union.anon* %4946 to i64*
  %4947 = load i64, i64* %RBP.i64
  %4948 = sub i64 %4947, 8
  %4949 = load i64, i64* %PC.i62
  %4950 = add i64 %4949, 4
  store i64 %4950, i64* %PC.i62
  %4951 = inttoptr i64 %4948 to i64*
  %4952 = load i64, i64* %4951
  store i64 %4952, i64* %RAX.i63, align 8
  store %struct.Memory* %loadMem_40193f, %struct.Memory** %MEMORY
  %loadMem_401943 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4953 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4954 = getelementptr inbounds %struct.GPR, %struct.GPR* %4953, i32 0, i32 33
  %4955 = getelementptr inbounds %struct.Reg, %struct.Reg* %4954, i32 0, i32 0
  %PC.i59 = bitcast %union.anon* %4955 to i64*
  %4956 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4957 = getelementptr inbounds %struct.GPR, %struct.GPR* %4956, i32 0, i32 5
  %4958 = getelementptr inbounds %struct.Reg, %struct.Reg* %4957, i32 0, i32 0
  %ECX.i60 = bitcast %union.anon* %4958 to i32*
  %4959 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4960 = getelementptr inbounds %struct.GPR, %struct.GPR* %4959, i32 0, i32 1
  %4961 = getelementptr inbounds %struct.Reg, %struct.Reg* %4960, i32 0, i32 0
  %RAX.i61 = bitcast %union.anon* %4961 to i64*
  %4962 = load i64, i64* %RAX.i61
  %4963 = add i64 %4962, 88
  %4964 = load i32, i32* %ECX.i60
  %4965 = zext i32 %4964 to i64
  %4966 = load i64, i64* %PC.i59
  %4967 = add i64 %4966, 3
  store i64 %4967, i64* %PC.i59
  %4968 = inttoptr i64 %4963 to i32*
  store i32 %4964, i32* %4968
  store %struct.Memory* %loadMem_401943, %struct.Memory** %MEMORY
  %loadMem_401946 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4969 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4970 = getelementptr inbounds %struct.GPR, %struct.GPR* %4969, i32 0, i32 33
  %4971 = getelementptr inbounds %struct.Reg, %struct.Reg* %4970, i32 0, i32 0
  %PC.i56 = bitcast %union.anon* %4971 to i64*
  %4972 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4973 = getelementptr inbounds %struct.GPR, %struct.GPR* %4972, i32 0, i32 1
  %4974 = getelementptr inbounds %struct.Reg, %struct.Reg* %4973, i32 0, i32 0
  %RAX.i57 = bitcast %union.anon* %4974 to i64*
  %4975 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4976 = getelementptr inbounds %struct.GPR, %struct.GPR* %4975, i32 0, i32 15
  %4977 = getelementptr inbounds %struct.Reg, %struct.Reg* %4976, i32 0, i32 0
  %RBP.i58 = bitcast %union.anon* %4977 to i64*
  %4978 = load i64, i64* %RBP.i58
  %4979 = sub i64 %4978, 8
  %4980 = load i64, i64* %PC.i56
  %4981 = add i64 %4980, 4
  store i64 %4981, i64* %PC.i56
  %4982 = inttoptr i64 %4979 to i64*
  %4983 = load i64, i64* %4982
  store i64 %4983, i64* %RAX.i57, align 8
  store %struct.Memory* %loadMem_401946, %struct.Memory** %MEMORY
  %loadMem_40194a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4984 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4985 = getelementptr inbounds %struct.GPR, %struct.GPR* %4984, i32 0, i32 33
  %4986 = getelementptr inbounds %struct.Reg, %struct.Reg* %4985, i32 0, i32 0
  %PC.i54 = bitcast %union.anon* %4986 to i64*
  %4987 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4988 = getelementptr inbounds %struct.GPR, %struct.GPR* %4987, i32 0, i32 1
  %4989 = getelementptr inbounds %struct.Reg, %struct.Reg* %4988, i32 0, i32 0
  %RAX.i55 = bitcast %union.anon* %4989 to i64*
  %4990 = load i64, i64* %RAX.i55
  %4991 = add i64 %4990, 32
  %4992 = load i64, i64* %PC.i54
  %4993 = add i64 %4992, 4
  store i64 %4993, i64* %PC.i54
  %4994 = inttoptr i64 %4991 to i64*
  %4995 = load i64, i64* %4994
  store i64 %4995, i64* %RAX.i55, align 8
  store %struct.Memory* %loadMem_40194a, %struct.Memory** %MEMORY
  %loadMem_40194e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4996 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4997 = getelementptr inbounds %struct.GPR, %struct.GPR* %4996, i32 0, i32 33
  %4998 = getelementptr inbounds %struct.Reg, %struct.Reg* %4997, i32 0, i32 0
  %PC.i51 = bitcast %union.anon* %4998 to i64*
  %4999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5000 = getelementptr inbounds %struct.GPR, %struct.GPR* %4999, i32 0, i32 1
  %5001 = getelementptr inbounds %struct.Reg, %struct.Reg* %5000, i32 0, i32 0
  %RAX.i52 = bitcast %union.anon* %5001 to i64*
  %5002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5003 = getelementptr inbounds %struct.GPR, %struct.GPR* %5002, i32 0, i32 5
  %5004 = getelementptr inbounds %struct.Reg, %struct.Reg* %5003, i32 0, i32 0
  %RCX.i53 = bitcast %union.anon* %5004 to i64*
  %5005 = load i64, i64* %RAX.i52
  %5006 = load i64, i64* %PC.i51
  %5007 = add i64 %5006, 2
  store i64 %5007, i64* %PC.i51
  %5008 = inttoptr i64 %5005 to i32*
  %5009 = load i32, i32* %5008
  %5010 = zext i32 %5009 to i64
  store i64 %5010, i64* %RCX.i53, align 8
  store %struct.Memory* %loadMem_40194e, %struct.Memory** %MEMORY
  %loadMem_401950 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5011 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5012 = getelementptr inbounds %struct.GPR, %struct.GPR* %5011, i32 0, i32 33
  %5013 = getelementptr inbounds %struct.Reg, %struct.Reg* %5012, i32 0, i32 0
  %PC.i48 = bitcast %union.anon* %5013 to i64*
  %5014 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5015 = getelementptr inbounds %struct.GPR, %struct.GPR* %5014, i32 0, i32 1
  %5016 = getelementptr inbounds %struct.Reg, %struct.Reg* %5015, i32 0, i32 0
  %RAX.i49 = bitcast %union.anon* %5016 to i64*
  %5017 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5018 = getelementptr inbounds %struct.GPR, %struct.GPR* %5017, i32 0, i32 15
  %5019 = getelementptr inbounds %struct.Reg, %struct.Reg* %5018, i32 0, i32 0
  %RBP.i50 = bitcast %union.anon* %5019 to i64*
  %5020 = load i64, i64* %RBP.i50
  %5021 = sub i64 %5020, 8
  %5022 = load i64, i64* %PC.i48
  %5023 = add i64 %5022, 4
  store i64 %5023, i64* %PC.i48
  %5024 = inttoptr i64 %5021 to i64*
  %5025 = load i64, i64* %5024
  store i64 %5025, i64* %RAX.i49, align 8
  store %struct.Memory* %loadMem_401950, %struct.Memory** %MEMORY
  %loadMem_401954 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5027 = getelementptr inbounds %struct.GPR, %struct.GPR* %5026, i32 0, i32 33
  %5028 = getelementptr inbounds %struct.Reg, %struct.Reg* %5027, i32 0, i32 0
  %PC.i45 = bitcast %union.anon* %5028 to i64*
  %5029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5030 = getelementptr inbounds %struct.GPR, %struct.GPR* %5029, i32 0, i32 1
  %5031 = getelementptr inbounds %struct.Reg, %struct.Reg* %5030, i32 0, i32 0
  %RAX.i46 = bitcast %union.anon* %5031 to i64*
  %5032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5033 = getelementptr inbounds %struct.GPR, %struct.GPR* %5032, i32 0, i32 5
  %5034 = getelementptr inbounds %struct.Reg, %struct.Reg* %5033, i32 0, i32 0
  %RCX.i47 = bitcast %union.anon* %5034 to i64*
  %5035 = load i64, i64* %RCX.i47
  %5036 = load i64, i64* %RAX.i46
  %5037 = add i64 %5036, 96
  %5038 = load i64, i64* %PC.i45
  %5039 = add i64 %5038, 3
  store i64 %5039, i64* %PC.i45
  %5040 = trunc i64 %5035 to i32
  %5041 = inttoptr i64 %5037 to i32*
  %5042 = load i32, i32* %5041
  %5043 = sub i32 %5040, %5042
  %5044 = zext i32 %5043 to i64
  store i64 %5044, i64* %RCX.i47, align 8
  %5045 = icmp ult i32 %5040, %5042
  %5046 = zext i1 %5045 to i8
  %5047 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5046, i8* %5047, align 1
  %5048 = and i32 %5043, 255
  %5049 = call i32 @llvm.ctpop.i32(i32 %5048)
  %5050 = trunc i32 %5049 to i8
  %5051 = and i8 %5050, 1
  %5052 = xor i8 %5051, 1
  %5053 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5052, i8* %5053, align 1
  %5054 = xor i32 %5042, %5040
  %5055 = xor i32 %5054, %5043
  %5056 = lshr i32 %5055, 4
  %5057 = trunc i32 %5056 to i8
  %5058 = and i8 %5057, 1
  %5059 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5058, i8* %5059, align 1
  %5060 = icmp eq i32 %5043, 0
  %5061 = zext i1 %5060 to i8
  %5062 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5061, i8* %5062, align 1
  %5063 = lshr i32 %5043, 31
  %5064 = trunc i32 %5063 to i8
  %5065 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5064, i8* %5065, align 1
  %5066 = lshr i32 %5040, 31
  %5067 = lshr i32 %5042, 31
  %5068 = xor i32 %5067, %5066
  %5069 = xor i32 %5063, %5066
  %5070 = add i32 %5069, %5068
  %5071 = icmp eq i32 %5070, 2
  %5072 = zext i1 %5071 to i8
  %5073 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5072, i8* %5073, align 1
  store %struct.Memory* %loadMem_401954, %struct.Memory** %MEMORY
  %loadMem_401957 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5074 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5075 = getelementptr inbounds %struct.GPR, %struct.GPR* %5074, i32 0, i32 33
  %5076 = getelementptr inbounds %struct.Reg, %struct.Reg* %5075, i32 0, i32 0
  %PC.i42 = bitcast %union.anon* %5076 to i64*
  %5077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5078 = getelementptr inbounds %struct.GPR, %struct.GPR* %5077, i32 0, i32 1
  %5079 = getelementptr inbounds %struct.Reg, %struct.Reg* %5078, i32 0, i32 0
  %RAX.i43 = bitcast %union.anon* %5079 to i64*
  %5080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5081 = getelementptr inbounds %struct.GPR, %struct.GPR* %5080, i32 0, i32 15
  %5082 = getelementptr inbounds %struct.Reg, %struct.Reg* %5081, i32 0, i32 0
  %RBP.i44 = bitcast %union.anon* %5082 to i64*
  %5083 = load i64, i64* %RBP.i44
  %5084 = sub i64 %5083, 8
  %5085 = load i64, i64* %PC.i42
  %5086 = add i64 %5085, 4
  store i64 %5086, i64* %PC.i42
  %5087 = inttoptr i64 %5084 to i64*
  %5088 = load i64, i64* %5087
  store i64 %5088, i64* %RAX.i43, align 8
  store %struct.Memory* %loadMem_401957, %struct.Memory** %MEMORY
  %loadMem_40195b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5089 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5090 = getelementptr inbounds %struct.GPR, %struct.GPR* %5089, i32 0, i32 33
  %5091 = getelementptr inbounds %struct.Reg, %struct.Reg* %5090, i32 0, i32 0
  %PC.i39 = bitcast %union.anon* %5091 to i64*
  %5092 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5093 = getelementptr inbounds %struct.GPR, %struct.GPR* %5092, i32 0, i32 5
  %5094 = getelementptr inbounds %struct.Reg, %struct.Reg* %5093, i32 0, i32 0
  %ECX.i40 = bitcast %union.anon* %5094 to i32*
  %5095 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5096 = getelementptr inbounds %struct.GPR, %struct.GPR* %5095, i32 0, i32 1
  %5097 = getelementptr inbounds %struct.Reg, %struct.Reg* %5096, i32 0, i32 0
  %RAX.i41 = bitcast %union.anon* %5097 to i64*
  %5098 = load i64, i64* %RAX.i41
  %5099 = add i64 %5098, 96
  %5100 = load i32, i32* %ECX.i40
  %5101 = zext i32 %5100 to i64
  %5102 = load i64, i64* %PC.i39
  %5103 = add i64 %5102, 3
  store i64 %5103, i64* %PC.i39
  %5104 = inttoptr i64 %5099 to i32*
  store i32 %5100, i32* %5104
  store %struct.Memory* %loadMem_40195b, %struct.Memory** %MEMORY
  %loadMem_40195e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5106 = getelementptr inbounds %struct.GPR, %struct.GPR* %5105, i32 0, i32 33
  %5107 = getelementptr inbounds %struct.Reg, %struct.Reg* %5106, i32 0, i32 0
  %PC.i37 = bitcast %union.anon* %5107 to i64*
  %5108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5109 = getelementptr inbounds %struct.GPR, %struct.GPR* %5108, i32 0, i32 1
  %5110 = getelementptr inbounds %struct.Reg, %struct.Reg* %5109, i32 0, i32 0
  %RAX.i38 = bitcast %union.anon* %5110 to i64*
  %5111 = load i64, i64* %PC.i37
  %5112 = add i64 %5111, 8
  store i64 %5112, i64* %PC.i37
  %5113 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %5113, i64* %RAX.i38, align 8
  store %struct.Memory* %loadMem_40195e, %struct.Memory** %MEMORY
  %loadMem_401966 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5115 = getelementptr inbounds %struct.GPR, %struct.GPR* %5114, i32 0, i32 33
  %5116 = getelementptr inbounds %struct.Reg, %struct.Reg* %5115, i32 0, i32 0
  %PC.i34 = bitcast %union.anon* %5116 to i64*
  %5117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5118 = getelementptr inbounds %struct.GPR, %struct.GPR* %5117, i32 0, i32 1
  %5119 = getelementptr inbounds %struct.Reg, %struct.Reg* %5118, i32 0, i32 0
  %RAX.i35 = bitcast %union.anon* %5119 to i64*
  %5120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5121 = getelementptr inbounds %struct.GPR, %struct.GPR* %5120, i32 0, i32 5
  %5122 = getelementptr inbounds %struct.Reg, %struct.Reg* %5121, i32 0, i32 0
  %RCX.i36 = bitcast %union.anon* %5122 to i64*
  %5123 = load i64, i64* %RAX.i35
  %5124 = add i64 %5123, 12
  %5125 = load i64, i64* %PC.i34
  %5126 = add i64 %5125, 3
  store i64 %5126, i64* %PC.i34
  %5127 = inttoptr i64 %5124 to i32*
  %5128 = load i32, i32* %5127
  %5129 = zext i32 %5128 to i64
  store i64 %5129, i64* %RCX.i36, align 8
  store %struct.Memory* %loadMem_401966, %struct.Memory** %MEMORY
  %loadMem_401969 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5131 = getelementptr inbounds %struct.GPR, %struct.GPR* %5130, i32 0, i32 33
  %5132 = getelementptr inbounds %struct.Reg, %struct.Reg* %5131, i32 0, i32 0
  %PC.i32 = bitcast %union.anon* %5132 to i64*
  %5133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5134 = getelementptr inbounds %struct.GPR, %struct.GPR* %5133, i32 0, i32 1
  %5135 = getelementptr inbounds %struct.Reg, %struct.Reg* %5134, i32 0, i32 0
  %RAX.i33 = bitcast %union.anon* %5135 to i64*
  %5136 = load i64, i64* %PC.i32
  %5137 = add i64 %5136, 8
  store i64 %5137, i64* %PC.i32
  %5138 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %5138, i64* %RAX.i33, align 8
  store %struct.Memory* %loadMem_401969, %struct.Memory** %MEMORY
  %loadMem_401971 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5140 = getelementptr inbounds %struct.GPR, %struct.GPR* %5139, i32 0, i32 33
  %5141 = getelementptr inbounds %struct.Reg, %struct.Reg* %5140, i32 0, i32 0
  %PC.i30 = bitcast %union.anon* %5141 to i64*
  %5142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5143 = getelementptr inbounds %struct.GPR, %struct.GPR* %5142, i32 0, i32 1
  %5144 = getelementptr inbounds %struct.Reg, %struct.Reg* %5143, i32 0, i32 0
  %RAX.i31 = bitcast %union.anon* %5144 to i64*
  %5145 = load i64, i64* %RAX.i31
  %5146 = add i64 %5145, 14160
  %5147 = load i64, i64* %PC.i30
  %5148 = add i64 %5147, 7
  store i64 %5148, i64* %PC.i30
  %5149 = inttoptr i64 %5146 to i64*
  %5150 = load i64, i64* %5149
  store i64 %5150, i64* %RAX.i31, align 8
  store %struct.Memory* %loadMem_401971, %struct.Memory** %MEMORY
  %loadMem_401978 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5152 = getelementptr inbounds %struct.GPR, %struct.GPR* %5151, i32 0, i32 33
  %5153 = getelementptr inbounds %struct.Reg, %struct.Reg* %5152, i32 0, i32 0
  %PC.i27 = bitcast %union.anon* %5153 to i64*
  %5154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5155 = getelementptr inbounds %struct.GPR, %struct.GPR* %5154, i32 0, i32 1
  %5156 = getelementptr inbounds %struct.Reg, %struct.Reg* %5155, i32 0, i32 0
  %RAX.i28 = bitcast %union.anon* %5156 to i64*
  %5157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5158 = getelementptr inbounds %struct.GPR, %struct.GPR* %5157, i32 0, i32 5
  %5159 = getelementptr inbounds %struct.Reg, %struct.Reg* %5158, i32 0, i32 0
  %RCX.i29 = bitcast %union.anon* %5159 to i64*
  %5160 = load i64, i64* %RCX.i29
  %5161 = load i64, i64* %RAX.i28
  %5162 = add i64 %5161, 12
  %5163 = load i64, i64* %PC.i27
  %5164 = add i64 %5163, 3
  store i64 %5164, i64* %PC.i27
  %5165 = trunc i64 %5160 to i32
  %5166 = inttoptr i64 %5162 to i32*
  %5167 = load i32, i32* %5166
  %5168 = sub i32 %5165, %5167
  %5169 = zext i32 %5168 to i64
  store i64 %5169, i64* %RCX.i29, align 8
  %5170 = icmp ult i32 %5165, %5167
  %5171 = zext i1 %5170 to i8
  %5172 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5171, i8* %5172, align 1
  %5173 = and i32 %5168, 255
  %5174 = call i32 @llvm.ctpop.i32(i32 %5173)
  %5175 = trunc i32 %5174 to i8
  %5176 = and i8 %5175, 1
  %5177 = xor i8 %5176, 1
  %5178 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5177, i8* %5178, align 1
  %5179 = xor i32 %5167, %5165
  %5180 = xor i32 %5179, %5168
  %5181 = lshr i32 %5180, 4
  %5182 = trunc i32 %5181 to i8
  %5183 = and i8 %5182, 1
  %5184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5183, i8* %5184, align 1
  %5185 = icmp eq i32 %5168, 0
  %5186 = zext i1 %5185 to i8
  %5187 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5186, i8* %5187, align 1
  %5188 = lshr i32 %5168, 31
  %5189 = trunc i32 %5188 to i8
  %5190 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5189, i8* %5190, align 1
  %5191 = lshr i32 %5165, 31
  %5192 = lshr i32 %5167, 31
  %5193 = xor i32 %5192, %5191
  %5194 = xor i32 %5188, %5191
  %5195 = add i32 %5194, %5193
  %5196 = icmp eq i32 %5195, 2
  %5197 = zext i1 %5196 to i8
  %5198 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5197, i8* %5198, align 1
  store %struct.Memory* %loadMem_401978, %struct.Memory** %MEMORY
  %loadMem_40197b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5200 = getelementptr inbounds %struct.GPR, %struct.GPR* %5199, i32 0, i32 33
  %5201 = getelementptr inbounds %struct.Reg, %struct.Reg* %5200, i32 0, i32 0
  %PC.i24 = bitcast %union.anon* %5201 to i64*
  %5202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5203 = getelementptr inbounds %struct.GPR, %struct.GPR* %5202, i32 0, i32 1
  %5204 = getelementptr inbounds %struct.Reg, %struct.Reg* %5203, i32 0, i32 0
  %RAX.i25 = bitcast %union.anon* %5204 to i64*
  %5205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5206 = getelementptr inbounds %struct.GPR, %struct.GPR* %5205, i32 0, i32 15
  %5207 = getelementptr inbounds %struct.Reg, %struct.Reg* %5206, i32 0, i32 0
  %RBP.i26 = bitcast %union.anon* %5207 to i64*
  %5208 = load i64, i64* %RBP.i26
  %5209 = sub i64 %5208, 8
  %5210 = load i64, i64* %PC.i24
  %5211 = add i64 %5210, 4
  store i64 %5211, i64* %PC.i24
  %5212 = inttoptr i64 %5209 to i64*
  %5213 = load i64, i64* %5212
  store i64 %5213, i64* %RAX.i25, align 8
  store %struct.Memory* %loadMem_40197b, %struct.Memory** %MEMORY
  %loadMem_40197f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5215 = getelementptr inbounds %struct.GPR, %struct.GPR* %5214, i32 0, i32 33
  %5216 = getelementptr inbounds %struct.Reg, %struct.Reg* %5215, i32 0, i32 0
  %PC.i21 = bitcast %union.anon* %5216 to i64*
  %5217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5218 = getelementptr inbounds %struct.GPR, %struct.GPR* %5217, i32 0, i32 1
  %5219 = getelementptr inbounds %struct.Reg, %struct.Reg* %5218, i32 0, i32 0
  %RAX.i22 = bitcast %union.anon* %5219 to i64*
  %5220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5221 = getelementptr inbounds %struct.GPR, %struct.GPR* %5220, i32 0, i32 7
  %5222 = getelementptr inbounds %struct.Reg, %struct.Reg* %5221, i32 0, i32 0
  %RDX.i23 = bitcast %union.anon* %5222 to i64*
  %5223 = load i64, i64* %RAX.i22
  %5224 = add i64 %5223, 88
  %5225 = load i64, i64* %PC.i21
  %5226 = add i64 %5225, 3
  store i64 %5226, i64* %PC.i21
  %5227 = inttoptr i64 %5224 to i32*
  %5228 = load i32, i32* %5227
  %5229 = zext i32 %5228 to i64
  store i64 %5229, i64* %RDX.i23, align 8
  store %struct.Memory* %loadMem_40197f, %struct.Memory** %MEMORY
  %loadMem_401982 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5231 = getelementptr inbounds %struct.GPR, %struct.GPR* %5230, i32 0, i32 33
  %5232 = getelementptr inbounds %struct.Reg, %struct.Reg* %5231, i32 0, i32 0
  %PC.i19 = bitcast %union.anon* %5232 to i64*
  %5233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5234 = getelementptr inbounds %struct.GPR, %struct.GPR* %5233, i32 0, i32 5
  %5235 = getelementptr inbounds %struct.Reg, %struct.Reg* %5234, i32 0, i32 0
  %ECX.i20 = bitcast %union.anon* %5235 to i32*
  %5236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5237 = getelementptr inbounds %struct.GPR, %struct.GPR* %5236, i32 0, i32 7
  %5238 = getelementptr inbounds %struct.Reg, %struct.Reg* %5237, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %5238 to i64*
  %5239 = load i64, i64* %RDX.i
  %5240 = load i32, i32* %ECX.i20
  %5241 = zext i32 %5240 to i64
  %5242 = load i64, i64* %PC.i19
  %5243 = add i64 %5242, 2
  store i64 %5243, i64* %PC.i19
  %5244 = trunc i64 %5239 to i32
  %5245 = sub i32 %5244, %5240
  %5246 = zext i32 %5245 to i64
  store i64 %5246, i64* %RDX.i, align 8
  %5247 = icmp ult i32 %5244, %5240
  %5248 = zext i1 %5247 to i8
  %5249 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5248, i8* %5249, align 1
  %5250 = and i32 %5245, 255
  %5251 = call i32 @llvm.ctpop.i32(i32 %5250)
  %5252 = trunc i32 %5251 to i8
  %5253 = and i8 %5252, 1
  %5254 = xor i8 %5253, 1
  %5255 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5254, i8* %5255, align 1
  %5256 = xor i64 %5241, %5239
  %5257 = trunc i64 %5256 to i32
  %5258 = xor i32 %5257, %5245
  %5259 = lshr i32 %5258, 4
  %5260 = trunc i32 %5259 to i8
  %5261 = and i8 %5260, 1
  %5262 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5261, i8* %5262, align 1
  %5263 = icmp eq i32 %5245, 0
  %5264 = zext i1 %5263 to i8
  %5265 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5264, i8* %5265, align 1
  %5266 = lshr i32 %5245, 31
  %5267 = trunc i32 %5266 to i8
  %5268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5267, i8* %5268, align 1
  %5269 = lshr i32 %5244, 31
  %5270 = lshr i32 %5240, 31
  %5271 = xor i32 %5270, %5269
  %5272 = xor i32 %5266, %5269
  %5273 = add i32 %5272, %5271
  %5274 = icmp eq i32 %5273, 2
  %5275 = zext i1 %5274 to i8
  %5276 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5275, i8* %5276, align 1
  store %struct.Memory* %loadMem_401982, %struct.Memory** %MEMORY
  %loadMem_401984 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5278 = getelementptr inbounds %struct.GPR, %struct.GPR* %5277, i32 0, i32 33
  %5279 = getelementptr inbounds %struct.Reg, %struct.Reg* %5278, i32 0, i32 0
  %PC.i17 = bitcast %union.anon* %5279 to i64*
  %5280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5281 = getelementptr inbounds %struct.GPR, %struct.GPR* %5280, i32 0, i32 7
  %5282 = getelementptr inbounds %struct.Reg, %struct.Reg* %5281, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %5282 to i32*
  %5283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5284 = getelementptr inbounds %struct.GPR, %struct.GPR* %5283, i32 0, i32 1
  %5285 = getelementptr inbounds %struct.Reg, %struct.Reg* %5284, i32 0, i32 0
  %RAX.i18 = bitcast %union.anon* %5285 to i64*
  %5286 = load i64, i64* %RAX.i18
  %5287 = add i64 %5286, 88
  %5288 = load i32, i32* %EDX.i
  %5289 = zext i32 %5288 to i64
  %5290 = load i64, i64* %PC.i17
  %5291 = add i64 %5290, 3
  store i64 %5291, i64* %PC.i17
  %5292 = inttoptr i64 %5287 to i32*
  store i32 %5288, i32* %5292
  store %struct.Memory* %loadMem_401984, %struct.Memory** %MEMORY
  %loadMem_401987 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5294 = getelementptr inbounds %struct.GPR, %struct.GPR* %5293, i32 0, i32 33
  %5295 = getelementptr inbounds %struct.Reg, %struct.Reg* %5294, i32 0, i32 0
  %PC.i14 = bitcast %union.anon* %5295 to i64*
  %5296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5297 = getelementptr inbounds %struct.GPR, %struct.GPR* %5296, i32 0, i32 1
  %5298 = getelementptr inbounds %struct.Reg, %struct.Reg* %5297, i32 0, i32 0
  %RAX.i15 = bitcast %union.anon* %5298 to i64*
  %5299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5300 = getelementptr inbounds %struct.GPR, %struct.GPR* %5299, i32 0, i32 15
  %5301 = getelementptr inbounds %struct.Reg, %struct.Reg* %5300, i32 0, i32 0
  %RBP.i16 = bitcast %union.anon* %5301 to i64*
  %5302 = load i64, i64* %RBP.i16
  %5303 = sub i64 %5302, 8
  %5304 = load i64, i64* %PC.i14
  %5305 = add i64 %5304, 4
  store i64 %5305, i64* %PC.i14
  %5306 = inttoptr i64 %5303 to i64*
  %5307 = load i64, i64* %5306
  store i64 %5307, i64* %RAX.i15, align 8
  store %struct.Memory* %loadMem_401987, %struct.Memory** %MEMORY
  %loadMem_40198b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5309 = getelementptr inbounds %struct.GPR, %struct.GPR* %5308, i32 0, i32 33
  %5310 = getelementptr inbounds %struct.Reg, %struct.Reg* %5309, i32 0, i32 0
  %PC.i11 = bitcast %union.anon* %5310 to i64*
  %5311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5312 = getelementptr inbounds %struct.GPR, %struct.GPR* %5311, i32 0, i32 1
  %5313 = getelementptr inbounds %struct.Reg, %struct.Reg* %5312, i32 0, i32 0
  %RAX.i12 = bitcast %union.anon* %5313 to i64*
  %5314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5315 = getelementptr inbounds %struct.GPR, %struct.GPR* %5314, i32 0, i32 5
  %5316 = getelementptr inbounds %struct.Reg, %struct.Reg* %5315, i32 0, i32 0
  %RCX.i13 = bitcast %union.anon* %5316 to i64*
  %5317 = load i64, i64* %RAX.i12
  %5318 = add i64 %5317, 88
  %5319 = load i64, i64* %PC.i11
  %5320 = add i64 %5319, 3
  store i64 %5320, i64* %PC.i11
  %5321 = inttoptr i64 %5318 to i32*
  %5322 = load i32, i32* %5321
  %5323 = zext i32 %5322 to i64
  store i64 %5323, i64* %RCX.i13, align 8
  store %struct.Memory* %loadMem_40198b, %struct.Memory** %MEMORY
  %loadMem_40198e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5325 = getelementptr inbounds %struct.GPR, %struct.GPR* %5324, i32 0, i32 33
  %5326 = getelementptr inbounds %struct.Reg, %struct.Reg* %5325, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %5326 to i64*
  %5327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5328 = getelementptr inbounds %struct.GPR, %struct.GPR* %5327, i32 0, i32 5
  %5329 = getelementptr inbounds %struct.Reg, %struct.Reg* %5328, i32 0, i32 0
  %RCX.i10 = bitcast %union.anon* %5329 to i64*
  %5330 = load i64, i64* %RCX.i10
  %5331 = load i64, i64* %PC.i9
  %5332 = add i64 %5331, 3
  store i64 %5332, i64* %PC.i9
  %5333 = trunc i64 %5330 to i32
  %5334 = add i32 31, %5333
  %5335 = zext i32 %5334 to i64
  store i64 %5335, i64* %RCX.i10, align 8
  %5336 = icmp ult i32 %5334, %5333
  %5337 = icmp ult i32 %5334, 31
  %5338 = or i1 %5336, %5337
  %5339 = zext i1 %5338 to i8
  %5340 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5339, i8* %5340, align 1
  %5341 = and i32 %5334, 255
  %5342 = call i32 @llvm.ctpop.i32(i32 %5341)
  %5343 = trunc i32 %5342 to i8
  %5344 = and i8 %5343, 1
  %5345 = xor i8 %5344, 1
  %5346 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5345, i8* %5346, align 1
  %5347 = xor i64 31, %5330
  %5348 = trunc i64 %5347 to i32
  %5349 = xor i32 %5348, %5334
  %5350 = lshr i32 %5349, 4
  %5351 = trunc i32 %5350 to i8
  %5352 = and i8 %5351, 1
  %5353 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5352, i8* %5353, align 1
  %5354 = icmp eq i32 %5334, 0
  %5355 = zext i1 %5354 to i8
  %5356 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5355, i8* %5356, align 1
  %5357 = lshr i32 %5334, 31
  %5358 = trunc i32 %5357 to i8
  %5359 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5358, i8* %5359, align 1
  %5360 = lshr i32 %5333, 31
  %5361 = xor i32 %5357, %5360
  %5362 = add i32 %5361, %5357
  %5363 = icmp eq i32 %5362, 2
  %5364 = zext i1 %5363 to i8
  %5365 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5364, i8* %5365, align 1
  store %struct.Memory* %loadMem_40198e, %struct.Memory** %MEMORY
  %loadMem_401991 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5367 = getelementptr inbounds %struct.GPR, %struct.GPR* %5366, i32 0, i32 33
  %5368 = getelementptr inbounds %struct.Reg, %struct.Reg* %5367, i32 0, i32 0
  %PC.i8 = bitcast %union.anon* %5368 to i64*
  %5369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5370 = getelementptr inbounds %struct.GPR, %struct.GPR* %5369, i32 0, i32 5
  %5371 = getelementptr inbounds %struct.Reg, %struct.Reg* %5370, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %5371 to i64*
  %5372 = load i64, i64* %RCX.i
  %5373 = load i64, i64* %PC.i8
  %5374 = add i64 %5373, 3
  store i64 %5374, i64* %PC.i8
  %5375 = shl i64 %5372, 32
  %5376 = ashr exact i64 %5375, 32
  %5377 = ashr i64 %5376, 4
  %5378 = lshr i64 %5377, 1
  %5379 = trunc i64 %5377 to i8
  %5380 = and i8 %5379, 1
  %5381 = trunc i64 %5378 to i32
  %5382 = and i64 %5378, 4294967295
  store i64 %5382, i64* %RCX.i, align 8
  %5383 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5380, i8* %5383, align 1
  %5384 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %5385 = and i32 %5381, 255
  %5386 = call i32 @llvm.ctpop.i32(i32 %5385)
  %5387 = trunc i32 %5386 to i8
  %5388 = and i8 %5387, 1
  %5389 = xor i8 %5388, 1
  store i8 %5389, i8* %5384, align 1
  %5390 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5390, align 1
  %5391 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5392 = icmp eq i32 %5381, 0
  %5393 = zext i1 %5392 to i8
  store i8 %5393, i8* %5391, align 1
  %5394 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5395 = lshr i32 %5381, 31
  %5396 = trunc i32 %5395 to i8
  store i8 %5396, i8* %5394, align 1
  %5397 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5397, align 1
  store %struct.Memory* %loadMem_401991, %struct.Memory** %MEMORY
  %loadMem_401994 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5398 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5399 = getelementptr inbounds %struct.GPR, %struct.GPR* %5398, i32 0, i32 33
  %5400 = getelementptr inbounds %struct.Reg, %struct.Reg* %5399, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %5400 to i64*
  %5401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5402 = getelementptr inbounds %struct.GPR, %struct.GPR* %5401, i32 0, i32 1
  %5403 = getelementptr inbounds %struct.Reg, %struct.Reg* %5402, i32 0, i32 0
  %RAX.i6 = bitcast %union.anon* %5403 to i64*
  %5404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5405 = getelementptr inbounds %struct.GPR, %struct.GPR* %5404, i32 0, i32 15
  %5406 = getelementptr inbounds %struct.Reg, %struct.Reg* %5405, i32 0, i32 0
  %RBP.i7 = bitcast %union.anon* %5406 to i64*
  %5407 = load i64, i64* %RBP.i7
  %5408 = sub i64 %5407, 8
  %5409 = load i64, i64* %PC.i5
  %5410 = add i64 %5409, 4
  store i64 %5410, i64* %PC.i5
  %5411 = inttoptr i64 %5408 to i64*
  %5412 = load i64, i64* %5411
  store i64 %5412, i64* %RAX.i6, align 8
  store %struct.Memory* %loadMem_401994, %struct.Memory** %MEMORY
  %loadMem_401998 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5413 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5414 = getelementptr inbounds %struct.GPR, %struct.GPR* %5413, i32 0, i32 33
  %5415 = getelementptr inbounds %struct.Reg, %struct.Reg* %5414, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %5415 to i64*
  %5416 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5417 = getelementptr inbounds %struct.GPR, %struct.GPR* %5416, i32 0, i32 5
  %5418 = getelementptr inbounds %struct.Reg, %struct.Reg* %5417, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %5418 to i32*
  %5419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5420 = getelementptr inbounds %struct.GPR, %struct.GPR* %5419, i32 0, i32 1
  %5421 = getelementptr inbounds %struct.Reg, %struct.Reg* %5420, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %5421 to i64*
  %5422 = load i64, i64* %RAX.i
  %5423 = add i64 %5422, 88
  %5424 = load i32, i32* %ECX.i
  %5425 = zext i32 %5424 to i64
  %5426 = load i64, i64* %PC.i4
  %5427 = add i64 %5426, 3
  store i64 %5427, i64* %PC.i4
  %5428 = inttoptr i64 %5423 to i32*
  store i32 %5424, i32* %5428
  store %struct.Memory* %loadMem_401998, %struct.Memory** %MEMORY
  %loadMem_40199b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5430 = getelementptr inbounds %struct.GPR, %struct.GPR* %5429, i32 0, i32 33
  %5431 = getelementptr inbounds %struct.Reg, %struct.Reg* %5430, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %5431 to i64*
  %5432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5433 = getelementptr inbounds %struct.GPR, %struct.GPR* %5432, i32 0, i32 15
  %5434 = getelementptr inbounds %struct.Reg, %struct.Reg* %5433, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %5434 to i64*
  %5435 = load i64, i64* %PC.i2
  %5436 = add i64 %5435, 1
  store i64 %5436, i64* %PC.i2
  %5437 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5438 = load i64, i64* %5437, align 8
  %5439 = add i64 %5438, 8
  %5440 = inttoptr i64 %5438 to i64*
  %5441 = load i64, i64* %5440
  store i64 %5441, i64* %RBP.i3, align 8
  store i64 %5439, i64* %5437, align 8
  store %struct.Memory* %loadMem_40199b, %struct.Memory** %MEMORY
  %loadMem_40199c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5443 = getelementptr inbounds %struct.GPR, %struct.GPR* %5442, i32 0, i32 33
  %5444 = getelementptr inbounds %struct.Reg, %struct.Reg* %5443, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %5444 to i64*
  %5445 = load i64, i64* %PC.i1
  %5446 = add i64 %5445, 1
  store i64 %5446, i64* %PC.i1
  %5447 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5448 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5449 = load i64, i64* %5448, align 8
  %5450 = inttoptr i64 %5449 to i64*
  %5451 = load i64, i64* %5450
  store i64 %5451, i64* %5447, align 8
  %5452 = add i64 %5449, 8
  store i64 %5452, i64* %5448, align 8
  store %struct.Memory* %loadMem_40199c, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_40199c
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

define %struct.Memory* @routine_movl_0x8__rdi____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RDI
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

define %struct.Memory* @routine_shll__0x1___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movl__eax__0x8__rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RDI
  %13 = add i64 %12, 8
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl___rdi____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RDI
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 2
  store i64 %14, i64* %PC
  %15 = inttoptr i64 %12 to i32*
  %16 = load i32, i32* %15
  %17 = zext i32 %16 to i64
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_shrl__0x9___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = lshr i64 %12, 8
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

define %struct.Memory* @routine_andl__0x1___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = and i64 1, %9
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

define %struct.Memory* @routine_orl_0x8__rdi____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %RDI
  %14 = add i64 %13, 8
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = trunc i64 %12 to i32
  %18 = inttoptr i64 %14 to i32*
  %19 = load i32, i32* %18
  %20 = or i32 %19, %17
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

define %struct.Memory* @routine_movl_0xc__rdi____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RDI
  %13 = add i64 %12, 12
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

define %struct.Memory* @routine_movl__eax__0xc__rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RDI
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

define %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jne_.L_401656(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movb__cl___dl(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movq_0x18__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
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

define %struct.Memory* @routine_movq_0x20__rsi____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 32
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl___rsi____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RSI
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 2
  store i64 %14, i64* %PC
  %15 = inttoptr i64 %12 to i32*
  %16 = load i32, i32* %15
  %17 = zext i32 %16 to i64
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__0x1___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %RDI
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 3
  store i64 %11, i64* %PC
  %12 = trunc i64 %9 to i32
  %13 = add i32 1, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RDI, align 8
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

define %struct.Memory* @routine_movl__edi____rsi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSI
  %13 = load i32, i32* %EDI
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %12 to i32*
  store i32 %13, i32* %17
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

define %struct.Memory* @routine_movb__dl____rax__rsi_1_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RAX = bitcast %union.anon* %12 to i64*
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %14 = getelementptr inbounds %struct.GPR, %struct.GPR* %13, i32 0, i32 9
  %15 = getelementptr inbounds %struct.Reg, %struct.Reg* %14, i32 0, i32 0
  %RSI = bitcast %union.anon* %15 to i64*
  %16 = load i64, i64* %RAX
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

define %struct.Memory* @routine_movl__0x8__0xc__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 8, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x7__0x50__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 80
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sub i32 %14, 7
  %16 = icmp ult i32 %14, 7
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
  %25 = xor i32 %14, 7
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

define %struct.Memory* @routine_jle_.L_401651(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_0x50__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 80
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl__0x8___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %12, 8
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RCX, align 8
  %15 = icmp ult i32 %12, 8
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
  %24 = xor i64 8, %9
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

define %struct.Memory* @routine_movl__ecx__0x50__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 80
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x58__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 88
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

define %struct.Memory* @routine_movl__ecx__0x58__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 88
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_401624(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_401656(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_40165b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x0__0x10__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jbe_.L_401728(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_addl__0xffffffff___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i32 -1, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RCX, align 8
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

define %struct.Memory* @routine_movl__ecx__0x10__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 16
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_shll__0x1___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 2
  store i64 %11, i64* %PC
  %12 = trunc i64 %9 to i32
  %13 = shl i32 %12, 1
  %14 = icmp slt i32 %12, 0
  %15 = icmp slt i32 %13, 0
  %16 = xor i1 %14, %15
  %17 = zext i32 %13 to i64
  store i64 %17, i64* %RCX, align 8
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

define %struct.Memory* @routine_shrl__0x9___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = and i64 %9, 4294967295
  %13 = lshr i64 %12, 8
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

define %struct.Memory* @routine_andl__0x1___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = and i64 1, %9
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

define %struct.Memory* @routine_setne__dl(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 3
  store i64 %11, i64* %PC
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %13 = load i8, i8* %12, align 1
  %14 = icmp eq i8 %13, 0
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %DL, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_xorb__0xff___dl(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = load i8, i8* %DL
  %11 = zext i8 %10 to i64
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 3
  store i64 %13, i64* %PC
  %14 = xor i64 255, %11
  %15 = trunc i64 %14 to i8
  store i8 %15, i8* %DL, align 1
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
  %27 = lshr i8 %15, 7
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %29, align 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %30, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_andb__0x1___dl(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = load i8, i8* %DL
  %11 = zext i8 %10 to i64
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 3
  store i64 %13, i64* %PC
  %14 = and i64 1, %11
  %15 = trunc i64 %14 to i8
  store i8 %15, i8* %DL, align 1
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

define %struct.Memory* @routine_movzbl__dl___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i8, i8* %DL
  %14 = zext i8 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = and i64 %14, 255
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_orl_0x8__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, 8
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = trunc i64 %12 to i32
  %18 = inttoptr i64 %14 to i32*
  %19 = load i32, i32* %18
  %20 = or i32 %19, %17
  %21 = zext i32 %20 to i64
  store i64 %21, i64* %RCX, align 8
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

define %struct.Memory* @routine_movl__ecx__0xc__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 12
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_401723(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jle_.L_40171e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_4016f1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_401723(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_shrl__0x8___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = and i64 %9, 4294967295
  %13 = lshr i64 %12, 7
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

define %struct.Memory* @routine_jne_.L_4017c6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jle_.L_4017c1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_401794(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_4017c6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_orl__0x1___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = or i64 1, %9
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

define %struct.Memory* @routine_jne_.L_40185b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jle_.L_401856(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_401829(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_40185b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x8___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 8, i64* %RAX, align 8
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

define %struct.Memory* @routine_subl_0xc__rcx____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, 12
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

define %struct.Memory* @routine_movq_0x6cb908___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i64, i64* bitcast (%G_0x6cb908_type* @G_0x6cb908 to i64*)
  store i64 %11, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x6cb900___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 8
  store i64 %10, i64* %PC
  %11 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %11, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_0x18__rdx____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 24
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_0x530__rcx__rdx_4____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %17 = load i64, i64* %RDX
  %18 = mul i64 %17, 4
  %19 = add i64 %16, 1328
  %20 = add i64 %19, %18
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 7
  store i64 %22, i64* %PC
  %23 = trunc i64 %15 to i32
  %24 = inttoptr i64 %20 to i32*
  %25 = load i32, i32* %24
  %26 = add i32 %25, %23
  %27 = zext i32 %26 to i64
  store i64 %27, i64* %RAX, align 8
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

define %struct.Memory* @routine_movl__eax__0x530__rcx__rdx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 7
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDX = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %RDX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, 1328
  %19 = add i64 %18, %17
  %20 = load i32, i32* %EAX
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = inttoptr i64 %19 to i32*
  store i32 %20, i32* %24
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x8__0xc__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_je_.L_40192e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_401929(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jle_.L_401924(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_4018f7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_401929(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_401889(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_shll__0x3___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = and i64 %9, 4294967295
  %13 = shl i64 %12, 2
  %14 = trunc i64 %13 to i32
  %15 = icmp slt i32 %14, 0
  %16 = shl i32 %14, 1
  %17 = zext i32 %16 to i64
  store i64 %17, i64* %RCX, align 8
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

define %struct.Memory* @routine_addl_0x50__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, 80
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

define %struct.Memory* @routine_movq_0x20__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 32
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl_0x60__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, 96
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

define %struct.Memory* @routine_movl__ecx__0x60__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 96
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_movq_0x3750__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 14160
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl_0xc__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, 12
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

define %struct.Memory* @routine_movl_0x58__rax____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 88
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl__ecx___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RDX
  %13 = load i32, i32* %ECX
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

define %struct.Memory* @routine_movl__edx__0x58__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 88
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__0x1f___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i32 31, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RCX, align 8
  %15 = icmp ult i32 %13, %12
  %16 = icmp ult i32 %13, 31
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
  %26 = xor i64 31, %9
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

define %struct.Memory* @routine_sarl__0x5___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = shl i64 %9, 32
  %13 = ashr exact i64 %12, 32
  %14 = ashr i64 %13, 4
  %15 = lshr i64 %14, 1
  %16 = trunc i64 %14 to i8
  %17 = and i8 %16, 1
  %18 = trunc i64 %15 to i32
  %19 = and i64 %15, 4294967295
  store i64 %19, i64* %RCX, align 8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %17, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %22 = and i32 %18, 255
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
  %32 = lshr i32 %18, 31
  %33 = trunc i32 %32 to i8
  store i8 %33, i8* %31, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %34, align 1
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
